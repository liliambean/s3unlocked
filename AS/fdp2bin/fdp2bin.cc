#include <cstring>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <limits>
#include <sstream>
#include <unistd.h>    // for unlink

#include "bigendian_io.h"
#include "kosinski.h"

void printUsage(char const* program) {
    std::cerr << "Usage: " << program
              << " inputcodefile.p outputromfile.bin sharefile.h\n\n";
}

bool buildRom(
        std::istream& in, std::ostream& out, unsigned int& compressedLength);

void editShareFile(const char* shareFileName, unsigned int compressedLength);

int main(int argc, char* argv[]) {
    if (argc < 3) {
        printUsage(argv[0]);
    }

    const char*  codeFileName     = nullptr;
    const char*  romFileName      = nullptr;
    const char*  shareFileName    = nullptr;
    unsigned int compressedLength = 0;

    for (int ii = 1; ii < argc; ii++) {
        const char* arg = argv[ii];

        if ((strcasecmp(arg, "-h") == 0) || (strcasecmp(arg, "--help") == 0)) {
            printUsage(argv[0]);
            return 1;
        }
        if (codeFileName == nullptr) {
            codeFileName = arg;
        } else if (romFileName == nullptr) {
            romFileName = arg;
        } else if (shareFileName == nullptr) {
            shareFileName = arg;
        }
    }

    if ((codeFileName != nullptr) && (romFileName != nullptr)) {
        std::cout << "\n"
                  << argv[0] << ": generating " << romFileName << " from "
                  << codeFileName << "... ";

        std::ifstream fin(codeFileName, std::ios::in | std::ios::binary);
        if (fin.good()) {
            std::ofstream fout(romFileName, std::ios::out | std::ios::binary);
            if (fout.good()) {
                if (buildRom(fin, fout, compressedLength)) {
                    editShareFile(shareFileName, compressedLength);
                    std::cout << "done";
                } else {
                    // Error; delete the rom because it's probably hosed
                    unlink(romFileName);
                }
            } else {
                std::cout << std::endl;
                std::cerr << "ERROR: Failed to access file '" << romFileName
                          << "'." << std::endl;
            }
        } else {
            std::cout << std::endl;
            std::cerr << "ERROR: Failed to load file '" << codeFileName << "'."
                      << std::endl;
        }
    }

    std::cout << std::endl;
    return 0;
}

void editShareFile(const char* shareFileName, unsigned int compressedLength) {
    if (shareFileName != nullptr && compressedLength > 0) {
        std::ofstream fshare(
                shareFileName, std::ios::out | std::ios::ate | std::ios::app);
        if (fshare.good()) {
            fshare << "\n#define comp_z80_size 0x" << std::uppercase << std::hex
                   << compressedLength << '\n';
        }
    }
}

bool buildRom(
        std::istream& in, std::ostream& out, unsigned int& compressedLength) {
    if (Read1(in) != 0x89) {
        std::cout << std::endl;
        std::cerr << "Warning: First byte of a .p file should be $89"
                  << std::endl;
    }
    if (Read1(in) != 0x14) {
        std::cout << std::endl;
        std::cerr << "Warning: Second byte of a .p file should be $14"
                  << std::endl;
    }

    int  cpuType               = 0;
    int  segmentType           = 0;
    int  granularity           = 0;
    int  start                 = 0;
    int  lastStart             = 0;
    int  length                = 0;
    int  lastLength            = 0;
    bool lastSegmentCompressed = false;

    while (true) {
        unsigned char headerByte = Read1(in);
        if (!in.good()) {
            break;
        }

        switch (headerByte) {
        case 0x00:    // "END" segment
            return true;
        case 0x80:    // "entry point" segment
            in.ignore(3);
            continue;
        case 0x81:    // code or data segment
            cpuType     = Read1(in);
            segmentType = Read1(in);
            granularity = Read1(in);
            if (granularity != 1) {
                std::cout << std::endl;
                std::cerr << "ERROR: Unsupported granularity " << granularity
                          << std::endl;
                return false;
            }
            break;
        default:
            if (headerByte > 0x81) {
                std::cout << std::endl;
                std::cerr << "ERROR: Unsupported segment header $"
                          << std::setw(2) << std::setfill('0') << std::hex
                          << std::uppercase << headerByte << std::dec
                          << std::nouppercase << std::endl;
                return false;
            }
            cpuType = headerByte;
            break;
        }

        // Integers in AS .p files are always little endian
        start  = LittleEndian::Read4(in);
        length = LittleEndian::Read2(in);

        if (length == 0) {
            // Error instead of warning because I had quite a bad freeze the one
            // time I saw this warning go off
            std::cout << std::endl;
            std::cerr << "ERROR: zero length segment ($" << std::setw(2)
                      << std::setfill('0') << std::hex << std::uppercase
                      << length << std::dec << std::nouppercase << ")."
                      << std::endl;
            return false;
        }

        if (start < 0) {
            std::cout << std::endl;
            std::cerr << "ERROR: negative start address ($" << std::setw(2)
                      << std::setfill('0') << std::hex << std::uppercase
                      << start << std::dec << std::nouppercase << ")."
                      << std::endl;
            start = 0;
            return false;
        }

        if (cpuType == 0x51 && start != 0 && lastSegmentCompressed) {
            std::cout << std::endl;
            std::cerr
                    << "ERROR: The compressed Z80 code "
                       "(Flamedriver.asm) must all "
                       "be in one segment. That means no ORG/ALIGN/CNOP/EVEN "
                       "or memory reservation commands in the Z80 code and the "
                       "size must be < 65535 bytes."
                       " The offending new segment starts at address $"
                    << std::setw(2) << std::setfill('0') << std::hex
                    << std::uppercase << start << std::dec << std::nouppercase
                    << " relative to the start of the Z80 code." << std::endl;
            start = 0;
            return false;
        }

        // 0x51 is the type for Z80 family (0x01 is for 68000)
        if (cpuType == 0x51 && start == 0) {
            // Kosinski compressed Z80 segment
            start                = lastStart + lastLength;
            size_t      srcStart = in.tellg();
            std::string buf;
            buf.resize(length);
            in.read(&buf[0], length);
            std::stringstream inbuff(
                    std::ios::in | std::ios::out | std::ios::binary);
            inbuff.str(buf);
            std::stringstream outbuff(
                    std::ios::in | std::ios::out | std::ios::binary);
            kosinski::encode(inbuff, outbuff);
            outbuff.seekg(0);
            outbuff.ignore(std::numeric_limits<std::streamsize>::max());
            compressedLength = outbuff.gcount();
            outbuff.seekg(0);
            out << outbuff.rdbuf();
            in.seekg(srcStart + length, std::ios::beg);
            lastSegmentCompressed = true;
            continue;
        }

        if (!lastSegmentCompressed) {
            // 3 bytes of leeway for instruction patching
            if (start + 3 < out.tellp()) {
                std::cout << std::endl;
                std::cerr << "Warning: overlapping allocation detected! $"
                          << std::setw(2) << std::setfill('0') << std::hex
                          << std::uppercase << start << " < $" << std::setw(2)
                          << std::setfill('0') << std::hex << std::uppercase
                          << out.tellp() << std::dec << std::nouppercase << ")."
                          << std::endl;
            }
        } else {
            if (start < out.tellp()) {
                std::cout << std::endl;
                std::cerr << "ERROR: Compressed sound driver might not "
                             "fit.\nPlease increase your value of "
                             "Size_of_Snd_driver_guess to at least $"
                          << std::setw(2) << std::setfill('0') << std::hex
                          << std::uppercase << compressedLength << std::dec
                          << std::nouppercase << " and try again." << std::endl;
                return false;
            }
            std::cout << std::endl
                      << "Compressed driver size: 0x" << std::setw(2)
                      << std::setfill('0') << std::hex << std::uppercase
                      << compressedLength << std::dec << std::nouppercase
                      << std::endl;
        }

        lastStart             = start;
        lastLength            = length;
        lastSegmentCompressed = false;

        out.seekp(start);

        const int scratchSize = 4096;
        char      scratch[scratchSize];
        while (length != 0) {
            int copy = length;
            if (copy > scratchSize) {
                copy = scratchSize;
            }
            in.read(scratch, copy);
            out.write(scratch, copy);
            length -= copy;
        }
    }

    return true;
}
