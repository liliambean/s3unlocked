ProtoCNZ1_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     ProtoCNZ1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $41

	smpsHeaderDAC       ProtoCNZ1_DAC,	$00, $0A
	smpsHeaderFM        ProtoCNZ1_FM1,	$03, $15
	smpsHeaderFM        ProtoCNZ1_FM2,	$03, $15
	smpsHeaderFM        ProtoCNZ1_FM3,	$03, $14
	smpsHeaderFM        ProtoCNZ1_FM4,	$1B, $12
	smpsHeaderFM        ProtoCNZ1_FM5,	$03, $18
	smpsHeaderPSG       ProtoCNZ1_PSG1,	$03, $05, $00, sTone_0C
	smpsHeaderPSG       ProtoCNZ1_PSG2,	$03, $05, $00, sTone_0C
	smpsHeaderPSG       ProtoCNZ1_PSG3,	$00, $03, $00, sTone_0C

; DAC Data
ProtoCNZ1_DAC:
	dc.b	dKickS3, $18, dKickS3, $14, dSnareS3, $0C, dKickS3, $04, dKickS3, $18, dSnareS3, $0C
	dc.b	dKickS3, $14, dKickS3, $18, dKickS3, $04, dKickS3, $20, dSnareS3, $04, dSnareS3, $08
	dc.b	dSnareS3, $04, dKickS3, $18, dKickS3, $14, dSnareS3, $0C, dKickS3, $04, dKickS3, $18
	dc.b	dSnareS3, $0C, dKickS3, $14, dKickS3, $18, dKickS3, $04, dKickS3, $08, dSnareS3, $10
	dc.b	dSnareS3, $08, dSnareS3, $04, dSnareS3, dSnareS3, dSnareS3, dKickS3, $08, dKickS3, $04, dSnareS3
	dc.b	$0C, dKickS3, $08, dKickS3, $04, dSnareS3, $08, dKickS3, $0C, dKickS3, $04, dSnareS3
	dc.b	$0C, dKickS3, $08, dKickS3, $04, dSnareS3, $0C, dKickS3, $08, dKickS3, $04, dSnareS3
	dc.b	$0C, dKickS3, $08, dKickS3, $04, dSnareS3, $08, dKickS3, $0C, dKickS3, $04, dSnareS3
	dc.b	$0C, dKickS3, $08, dKickS3, $04, dSnareS3, $0C, dKickS3, $08, dKickS3, $04, dSnareS3
	dc.b	$0C, dKickS3, $08, dKickS3, $04, dSnareS3, $08, dKickS3, $0C, dKickS3, $04, dSnareS3
	dc.b	$0C, dKickS3, $08, dKickS3, $04, dSnareS3, $0C, dKickS3, $08, dKickS3, $04, dSnareS3
	dc.b	$0C, dKickS3, $08, dKickS3, $04, dSnareS3, $08, dKickS3, $0C, dKickS3, $04, dSnareS3
	dc.b	$0C, dKickS3, $08, dKickS3, $04, dSnareS3, dSnareS3, dSnareS3, dKickS3, $08, dKickS3, $04
	dc.b	dSnareS3, $0C, dKickS3, $08, dKickS3, $04, dSnareS3, $08, dKickS3, $0C, dKickS3, $04
	dc.b	dSnareS3, $0C, dKickS3, $08, dKickS3, $04, dSnareS3, $0C, dKickS3, $08, dKickS3, $04
	dc.b	dSnareS3, $0C, dKickS3, $08, dKickS3, $04, dSnareS3, $08, dKickS3, $0C, dKickS3, $04
	dc.b	dSnareS3, $0C, dKickS3, $08, dKickS3, $04, dSnareS3, $0C, dKickS3, $08, dKickS3, $04
	dc.b	dSnareS3, $0C, dKickS3, $08, dKickS3, $04, dSnareS3, $08, dKickS3, $0C, dKickS3, $04
	dc.b	dSnareS3, $0C, dKickS3, $08, dKickS3, $04, dSnareS3, $0C, dKickS3, $08, dSnareS3, $04
	dc.b	dKickS3, $08, dSnareS3, $04, dKickS3, $08, dSnareS3, $04, dKickS3, $08, dSnareS3, $04
	dc.b	dKickS3, $08, dKickS3, $04, dSnareS3, $0C, dKickS3, $08, dKickS3, $04, dSnareS3, dSnareS3
	dc.b	dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, $08, dKickS3, $0C, dKickS3, $04, dSnareS3
	dc.b	$08
	smpsPan             panRight, $00
	dc.b	dClapS3, $04
	smpsPan             panCenter, $00
	dc.b	dKickS3, $08, dClapS3, $04, dSnareS3, $08
	smpsPan             panLeft, $00
	dc.b	dClapS3, $04
	smpsPan             panCenter, $00
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, $08, dKickS3, $0C, dKickS3, $04, dSnareS3, $08
	smpsPan             panLeft, $00
	dc.b	dClapS3, $04
	smpsPan             panCenter, $00
	dc.b	dKickS3, $08, dClapS3, $04, dSnareS3, $08
	smpsPan             panRight, $00
	dc.b	dClapS3, $04
	smpsPan             panCenter, $00
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, $08, dKickS3, $0C, dKickS3, $04, dSnareS3, $08
	smpsPan             panRight, $00
	dc.b	dClapS3, $04
	smpsPan             panCenter, $00
	dc.b	dKickS3, $08, dClapS3, $04, dSnareS3, $08
	smpsPan             panLeft, $00
	dc.b	dClapS3, $04
	smpsPan             panCenter, $00
	dc.b	dKickS3, $0C
	smpsPan             panLeft, $00
	dc.b	dHighTom, $08, dMidTomS3, $04
	smpsPan             panCenter, $00
	dc.b	dKickS3, $08
	smpsPan             panRight, $00
	dc.b	dLowTomS3, $04, dFloorTomS3, $08
	smpsPan             panCenter, $00
	dc.b	dSnareS3, $0C, dKickS3, $04, dSnareS3, $0C, dKickS3, dSnareS3, $04, dSnareS3, dSnareS3, dKickS3
	dc.b	$0C, dSnareS3, dKickS3, dSnareS3, $08, dKickS3, $0C, dKickS3, $04, dSnareS3, $08
	smpsPan             panRight, $00
	dc.b	dClapS3, $04
	smpsPan             panCenter, $00
	dc.b	dKickS3, $08, dClapS3, $04, dSnareS3, $08
	smpsPan             panLeft, $00
	dc.b	dClapS3, $04
	smpsPan             panCenter, $00
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, $08, dKickS3, $0C, dKickS3, $04, dSnareS3, $08
	smpsPan             panLeft, $00
	dc.b	dClapS3, $04
	smpsPan             panCenter, $00
	dc.b	dKickS3, $08, dClapS3, $04, dSnareS3, $08
	smpsPan             panRight, $00
	dc.b	dClapS3, $04
	smpsPan             panCenter, $00
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, $08, dKickS3, $0C, dSnareS3, dSnareS3, $04, dSnareS3
	dc.b	$0C, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, $08, dSnareS3, $0C, dSnareS3, $10, dSnareS3
	dc.b	$04, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dKickS3, $08, dKickS3, $04, dSnareS3, $08
	dc.b	dKickS3, $0C, dKickS3, $04, dSnareS3, $14, dKickS3, $04, dSnareS3, $08, dKickS3, $04
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, $08, dKickS3, $04, dSnareS3, $08, dKickS3, $0C, dKickS3
	dc.b	$04, dSnareS3, $14, dKickS3, $04, dSnareS3, $08, dKickS3, $04, dSnareS3, $0C, dSnareS3
	dc.b	dKickS3, $08, dKickS3, $04, dSnareS3, $08, dKickS3, $0C, dKickS3, $04, dSnareS3, $14
	dc.b	dKickS3, $04, dSnareS3, $08, dKickS3, $04, dKickS3, $0C, dSnareS3, dKickS3, dSnareS3, $08
	dc.b	dKickS3, $0C, dKickS3, $04, dSnareS3, $08, dKickS3, $0C, dSnareS3, dSnareS3, $04, dSnareS3
	dc.b	$0C, dSnareS3, $04, dSnareS3, dSnareS3, dKickS3, $08, dKickS3, $04, dSnareS3, $08, dKickS3
	dc.b	$0C, dKickS3, $04, dSnareS3, $14, dKickS3, $04, dSnareS3, $08, dKickS3, $04, dKickS3
	dc.b	$0C, dSnareS3, dKickS3, $08, dKickS3, $04, dSnareS3, $08, dKickS3, $0C, dKickS3, $04
	dc.b	dSnareS3, $14, dKickS3, $04, dSnareS3, $08, dKickS3, $04, dSnareS3, $0C, dSnareS3, dKickS3
	dc.b	$08, dKickS3, $04, dSnareS3, $08, dKickS3, $0C, dKickS3, $04, dSnareS3, $14, dKickS3
	dc.b	$04, dSnareS3, $08, dKickS3, $04, dKickS3, $0C, dSnareS3, $04, dSnareS3, dSnareS3, dSnareS3
	dc.b	$08, dSnareS3, $0C, dSnareS3, $04, dSnareS3, $0C, dSnareS3, $08, dSnareS3, $0C, dSnareS3
	dc.b	$04, dSnareS3, $08, dSnareS3, $04, dSnareS3, $0C, dSnareS3
	smpsJump            ProtoCNZ1_DAC

; FM1 Data
ProtoCNZ1_FM1:
	smpsPan             panLeft, $00

ProtoCNZ1_Jump03:
	smpsSetvoice        $1C
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panRight, $00
	dc.b	nC4, $14, nC4, $04, nRst, $08, nC4, $0C, nC4, $04, nRst, $18
	dc.b	nEb4, $02, nE4, $06, nC4, $04, nRst, $0C, nBb3, $08, nBb3, $04
	dc.b	nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04
	dc.b	nBb3, $0C, nA3, nRst, $08, nA3, $02, nA3, nBb3, $0C, nC4, $14
	dc.b	nC4, $04, nRst, $08, nC4, $0C, nC4, $04, nRst, $18, nEb4, $02
	dc.b	nE4, $06, nC4, $04, nRst, $0C, nBb3, $08, nBb3, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nBb3, $0C
	dc.b	nA3, nRst, $08, nA3, $02, nA3, nBb3, $0C, nC4, $14, nC4, $04
	dc.b	nE4, $14, nC4, $04, nRst, $08, nRst, $04, nRst, $12, nRst, nBb3
	dc.b	$08, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nRst
	dc.b	$08, nBb3, $04, nBb3, $0C, nA3, nRst, $18, nC4, $14, nC4, $04
	dc.b	nE4, $14, nC4, $04, nRst, $08, nRst, $04, nRst, $12, nRst, nBb3
	dc.b	$08, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nRst
	dc.b	$08, nBb3, $04, nBb3, $0C, nA3, nRst, $18, nC4, $14, nC4, $04
	dc.b	nE4, $14, nC4, $04, nRst, $08, nRst, $04, nRst, $12, nRst, nBb3
	dc.b	$08, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nRst
	dc.b	$08, nBb3, $04, nBb3, $0C, nA3, nRst, $18, nC4, $14, nC4, $04
	dc.b	nE4, $14, nC4, $04, nRst, $08, nRst, $04, nRst, $12, nRst, nF3
	dc.b	$08, nF3, $04, nRst, $08, nE3, $04, nRst, $08, nE3, $0C, nE3
	dc.b	$04, nD3, $0C, nD3, nE3, $04, nRst, $18
	smpsSetvoice        $0D
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $02
	dc.b	nRst, $08, nC4, nC4, $04, nB3, $0C, nB3, $08, nC4, $04, nRst
	dc.b	$08
	smpsSetvoice        $1C
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panRight, $00
	smpsFMAlterVol      $FE
	dc.b	nB2, $0C, nC3, $04, nRst, $08, nC3, $04, nB2, $08, nC3, $04
	dc.b	nRst
	smpsSetvoice        $0D
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $02
	dc.b	nRst, $08, nG3, nG3, $04, nE3, $0C, nE3, $08, nG3, $04, nRst
	dc.b	$08
	smpsSetvoice        $1C
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panRight, $00
	smpsFMAlterVol      $FE
	dc.b	nG3, $0C, nB3, $04, nRst, $08, nB3, $04, nG3, $08, nE3, $04
	dc.b	nRst
	smpsSetvoice        $0D
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $02
	dc.b	nRst, $08, nA3, nA3, $04, nF3, $0C, nF3, $08, nA3, $04, nRst
	dc.b	$08
	smpsSetvoice        $1C
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panRight, $00
	smpsFMAlterVol      $FE
	dc.b	nRst, $0C, nC3, nC3, $04, nA2, $08, nC3, $04, nA3, $18, nA3
	dc.b	$14, nG3, $04, nRst, $34
	smpsSetvoice        $0D
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $02
	dc.b	nRst, $08, nC4, nC4, $04, nB3, $0C, nB3, $08, nC4, $04, nRst
	dc.b	$08
	smpsSetvoice        $1C
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panRight, $00
	smpsFMAlterVol      $FE
	dc.b	nB2, $0C, nC3, $04, nRst, $08, nC3, $04, nB2, $08, nC3, $04
	dc.b	nRst
	smpsSetvoice        $0D
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $02
	dc.b	nRst, $08, nG3, nG3, $04, nE3, $0C, nE3, $08, nG3, $04, nRst
	dc.b	$08
	smpsSetvoice        $1C
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panRight, $00
	smpsFMAlterVol      $FE
	dc.b	nG3, $0C, nB3, $04, nRst, $08, nB3, $04, nG3, $08, nE3, $04
	dc.b	nRst
	smpsSetvoice        $0D
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $02
	dc.b	nRst, $08, nA3, nA3, $04, nF3, $0C, nF3, $08, nA3, $04, nRst
	dc.b	$08
	smpsSetvoice        $1C
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panRight, $00
	smpsFMAlterVol      $FE
	dc.b	nF3, $10, nFs3, $0C, nA3, nBb3, $18, nD4, $14, nE4, $04, nRst
	dc.b	$08, nG4, $10, nBb4, $0C, nBb4, nC4, $08, nC4, $04, nC4, $08
	dc.b	nC4, $04, nRst, $0C, nE4, $14, nF4, $04, nRst, $08, nF4, $04
	dc.b	nE4, $08, nRst, $10, nBb3, $08, nBb3, $04, nBb3, $08, nBb3, $04
	dc.b	nRst, $0C, nD4, $14, nEb4, $04, nRst, $08, nEb4, $04, nD4, $08
	dc.b	nRst, $10, nBb3, $08, nBb3, $04, nBb3, $08, nBb3, $04, nRst, $0C
	dc.b	nBb3, $08, nF3, $0C, nA3, $04, nRst, $08, nBb3, $04, nA3, $08
	dc.b	nRst, $10
	smpsSetvoice        $18
	smpsDetune          $01
	smpsModSet          $0A, $01, $06, $06
	dc.b	nBb4, $18, nBb4, $14, nA4, $04, nRst, $08
	smpsSetvoice        $1C
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panRight, $00
	dc.b	nBb3, $0C, nG3, $04, nBb3, $0C, nD4, nC4, $08, nC4, $04, nC4
	dc.b	$08, nC4, $04, nRst, $0C, nE4, $14, nF4, $04, nRst, $08, nF4
	dc.b	$04, nE4, $18, nBb3, $08, nBb3, $04, nBb3, $08, nBb3, $04, nRst
	dc.b	$0C, nD4, $14, nEb4, $04, nRst, $08, nEb4, $04, nD4, $18, nBb3
	dc.b	$08, nBb3, $04, nBb3, $08, nBb3, $04, nRst, $0C, nBb3, $08, nF3
	dc.b	$0C, nA3, $04, nRst, $08, nBb3, $04, nA3, $18
	smpsSetvoice        $18
	smpsDetune          $01
	smpsModSet          $0A, $01, $06, $06
	dc.b	nB3, $04, nRst, nB3, nRst, $08, nB3, $04, nB3, nRst, $08, nB3
	dc.b	$04, nRst, nB3, nRst, $08, nB3, $04, nB3, $0C, nA3, $02, nG3
	dc.b	nF3, nE3, nD3, nC3, nB2, nRst, $0A
	smpsJump            ProtoCNZ1_Jump03

; FM2 Data
ProtoCNZ1_FM2:
	smpsPan             panRight, $00

ProtoCNZ1_Jump02:
	smpsSetvoice        $1C
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panLeft, $00
	dc.b	nE3, $14, nE3, $04, nRst, $08, nE3, $0C, nE3, $04, nRst, $0C
	dc.b	nE3, $04, nG3, nC4, nG3, $08, nE3, $04, nRst, $0C, nD3, $08
	dc.b	nD3, $04, nRst, $08, nD3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b	nD3, $04, nD3, $0C, nC3, nRst, $08, nC3, $02, nC3, nD3, $0C
	dc.b	nE3, $14, nE3, $04, nRst, $08, nE3, $0C, nE3, $04, nRst, $0C
	dc.b	nE3, $04, nG3, nC4, nG3, $08, nE3, $04, nRst, $0C, nD3, $08
	dc.b	nD3, $04, nRst, $08, nD3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b	nD3, $04, nD3, $0C, nC3, nRst, $08, nC3, $02, nC3, nD3, $0C
	dc.b	nE3, $14, nE3, $04, nG3, $14, nE3, $04, nRst, $08, nC4, $04
	dc.b	nC5, $12, nRst, nD3, $08, nD3, $04, nRst, $08, nD3, $04, nRst
	dc.b	$08, nD3, $04, nRst, $08, nD3, $04, nD3, $0C, nC3, nRst, $18
	dc.b	nE3, $14, nE3, $04, nG3, $14, nE3, $04, nRst, $08, nC4, $04
	dc.b	nC5, $12, nRst, nD3, $08, nD3, $04, nRst, $08, nD3, $04, nRst
	dc.b	$08, nD3, $04, nRst, $08, nD3, $04, nD3, $0C, nC3, nRst, $18
	dc.b	nE3, $14, nE3, $04, nG3, $14, nE3, $04, nRst, $08, nC4, $04
	dc.b	nC5, $12, nRst, nD3, $08, nD3, $04, nRst, $08, nD3, $04, nRst
	dc.b	$08, nD3, $04, nRst, $08, nD3, $04, nD3, $0C, nC3, nRst, $18
	dc.b	nE3, $14, nE3, $04, nG3, $14, nE3, $04, nRst, $08, nC4, $04
	dc.b	nC5, $12, nRst, nBb2, $08, nBb2, $04, nRst, $08, nC3, $04, nRst
	dc.b	$08, nC3, $0C, nC3, $04, nBb2, $0C, nBb2, nBb2, $04, nRst, $18
	smpsSetvoice        $0D
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $02
	dc.b	nRst, $08, nA3, nA3, $04, nG3, $0C, nG3, $08, nA3, $04, nRst
	dc.b	$08
	smpsSetvoice        $1C
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panLeft, $00
	smpsFMAlterVol      $FE
	dc.b	nG2, $0C, nA2, $04, nRst, $08, nA2, $04, nG2, $08, nA2, $04
	dc.b	nRst
	smpsSetvoice        $0D
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $02
	dc.b	nRst, $08, nE3, nE3, $04, nC3, $0C, nC3, $08, nE3, $04, nRst
	dc.b	$08
	smpsSetvoice        $1C
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panLeft, $00
	smpsFMAlterVol      $FE
	dc.b	nE3, $0C, nG3, $04, nRst, $08, nG3, $04, nE3, $08, nC3, $04
	dc.b	nRst
	smpsSetvoice        $0D
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $02
	dc.b	nRst, $08, nF3, nF3, $04, nD3, $0C, nD3, $08, nF3, $04, nRst
	dc.b	$08
	smpsSetvoice        $1C
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panLeft, $00
	smpsFMAlterVol      $FE
	dc.b	nRst, $0C, nA2, nA2, $04, nF2, $08, nA2, $04, nC3, $18, nC3
	dc.b	$14, nB2, $04, nRst, $08, nG3, $04, nG3, $08, nA3, $04, nB3
	dc.b	$08, nG3, $04, nA3, $08, nB3, $04, nRst
	smpsSetvoice        $0D
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $02
	dc.b	nRst, $08, nA3, nA3, $04, nG3, $0C, nG3, $08, nA3, $04, nRst
	dc.b	$08
	smpsSetvoice        $1C
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panLeft, $00
	smpsFMAlterVol      $FE
	dc.b	nG2, $0C, nA2, $04, nRst, $08, nA2, $04, nG2, $08, nA2, $04
	dc.b	nRst
	smpsSetvoice        $0D
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $02
	dc.b	nRst, $08, nE3, nE3, $04, nC3, $0C, nC3, $08, nE3, $04, nRst
	dc.b	$08
	smpsSetvoice        $1C
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panLeft, $00
	smpsFMAlterVol      $FE
	dc.b	nE3, $0C, nG3, $04, nRst, $08, nG3, $04, nE3, $08, nC3, $04
	dc.b	nRst
	smpsSetvoice        $0D
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	smpsFMAlterVol      $02
	dc.b	nRst, $08, nF3, nF3, $04, nD3, $0C, nD3, $08, nF3, $04, nRst
	dc.b	$08
	smpsSetvoice        $1C
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panLeft, $00
	smpsFMAlterVol      $FE
	dc.b	nD3, $10, nD3, $0C, nC3, nD3, $18, nBb3, $14, nBb3, $04, nRst
	dc.b	$08, nBb3, $10, nD4, $0C, nE4, nA3, $08, nA3, $04, nA3, $08
	dc.b	nA3, $04, nRst, $0C, nG3, $14, nA3, $04, nRst, $08, nA3, $04
	dc.b	nG3, $08, nRst, $10, nG3, $08, nG3, $04, nG3, $08, nG3, $04
	dc.b	nRst, $0C, nF3, $14, nG3, $04, nRst, $08, nG3, $04, nF3, $08
	dc.b	nRst, $10, nF3, $08, nF3, $04, nF3, $08, nF3, $04, nRst, $0C
	dc.b	nF3, $08, nC3, $0C, nC3, $04, nRst, $08, nD3, $04, nC3, $08
	dc.b	nRst, $10
	smpsSetvoice        $18
	smpsDetune          $01
	smpsModSet          $0A, $01, $06, $06
	dc.b	nD4, $18, nD4, $14, nC4, $04, nRst, $08
	smpsSetvoice        $1C
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panLeft, $00
	dc.b	nG3, $0C, nEb3, $04, nG3, $0C, nBb3, nA3, $08, nA3, $04, nA3
	dc.b	$08, nA3, $04, nRst, $0C, nG3, $14, nA3, $04, nRst, $08, nA3
	dc.b	$04, nG3, $18, nG3, $08, nG3, $04, nG3, $08, nG3, $04, nRst
	dc.b	$0C, nF3, $14, nG3, $04, nRst, $08, nG3, $04, nF3, $18, nF3
	dc.b	$08, nF3, $04, nF3, $08, nF3, $04, nRst, $0C, nF3, $08, nC3
	dc.b	$0C, nC3, $04, nRst, $08, nD3, $04, nC3, $18
	smpsSetvoice        $18
	smpsDetune          $01
	smpsModSet          $0A, $01, $06, $06
	dc.b	nF3, $04, nRst, nF3, nRst, $08, nF3, $04, nF3, nRst, $08, nF3
	dc.b	$04, nRst, nF3, nRst, $08, nF3, $04, nF3, $0C, nE3, $02, nD3
	dc.b	nC3, nB2, nA2, nG2, nF2, nRst, $0A
	smpsJump            ProtoCNZ1_Jump02

; FM3 Data
ProtoCNZ1_FM3:
	smpsSetvoice        $05
	smpsDetune          $FD
	smpsModSet          $14, $01, $07, $06

ProtoCNZ1_Jump01:
	dc.b	nC4, $0C, nBb3, $02, nA3, nG3, nF3, nE3, nD3, nC3, nBb2, nA2
	dc.b	nG2, nC4, $0C, nC4, $04, nRst, $30, nBb3, $08, nBb3, $04, nRst
	dc.b	$08, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nBb3
	dc.b	$0C, nA3, nRst, $08, nA3, $04, nBb3, $0C, nC4, nBb3, $02, nA3
	dc.b	nG3, nF3, nE3, nD3, nC3, nBb2, nA2, nG2, nC4, $0C, nC4, $04
	dc.b	nRst, $30, nBb3, $08, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nBb3, $0C, nA3, nE4, $18, nC4
	dc.b	nRst, $2C, nE4, $04, nD4, nRst, $08, nC4, $04, nRst, $08, nBb3
	dc.b	$18, nBb3, nBb3, $04, nRst, $08, nA3, $04, nRst, $08, nA3, $04
	dc.b	nRst, $08, nA3, nG3, $1C, nRst, $2C, nE4, $04, nD4, nRst, $08
	dc.b	nC4, $04, nRst, $08, nBb3, $18, nBb3, nBb3, $08, nRst, $04, nA3
	dc.b	$08, nRst, $04, nE4, $18, nC4, nRst, $2C, nE4, $04, nD4, nRst
	dc.b	$08, nC4, $04, nRst, $08, nBb3, $18, nBb3, nBb3, $04, nRst, $08
	dc.b	nA3, $04, nRst, $08, nA3, $04, nRst, $08, nA3, nG3, $1C, nRst
	dc.b	$2C, nE4, $04, nD4, nRst, $08, nC4, $04, nRst, $08, nG3, $14
	dc.b	nA3, $04, nRst, $08, nA3, $0C, nA3, $04, nBb3, nRst, $08, nBb3
	dc.b	$04, nRst, $08, nC4, $04, nRst, $08
	smpsSetvoice        $10
	smpsDetune          $01
	smpsModSet          $0F, $01, $07, $06
	smpsFMAlterVol      $04
	dc.b	nC4, nD4, $04, nF4, $50, nC4, $04, nB3, $08, nC4, $04, nC4
	dc.b	$2C, nRst, $28, nD4, $08, nE4, $04, nF4, $18, nD4, $14, nF4
	dc.b	$04, nRst, $08, nD4, $0C, nD4, $04, nC4, $08, nD4, $04, nC4
	dc.b	$08, nD4, $04, nE4, $18, nE4, $14, nD4, $04, nRst, $24, nD4
	dc.b	$08, nE4, $04, nF4, $50, nC4, $04, nB3, $08, nC4, $04, nC4
	dc.b	$2C, nRst, $28, nD4, $08, nE4, $04, nF4, $18, nD4, $14, nF4
	dc.b	$04, nRst, $08, nD4, $0C, nD4, $04, nC4, $08, nD4, $04, nE4
	dc.b	$0C, nF4, $18, nF4, $14, nE4, $04, nRst, $2C
	smpsSetvoice        $05
	smpsDetune          $FD
	smpsModSet          $14, $01, $07, $06
	smpsFMAlterVol      $FC
	dc.b	nE4, $04, nF4, $08, nF4, $04, nF4, $08, nF4, $04, nE4, $08
	dc.b	nF4, $04, nC4, $24, nRst, $0C, nC4, $08, nD4, $04, nEb4, $08
	dc.b	nEb4, $04, nEb4, $08, nEb4, $04, nD4, $08, nEb4, $04, nBb3, $24
	dc.b	nRst, $0C, nF3, $08, nBb3, $04, nD4, nRst, $08, nC4, $04, nRst
	dc.b	$08, nBb3, nRst, $04, nBb3, nRst, nA3, $18, nRst, $0C, nEb3, $04
	dc.b	nF3, $08, nAb3, $04, nBb3, $08, nAb3, $04, nBb3, $08, nBb3, $04
	dc.b	nBb3, $08, nAb3, $0C, nA3, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b	nBb3, $04, nD4, $0C, nG4, nF4, $08, nF4, $04, nF4, $08, nF4
	dc.b	$04, nE4, $08, nF4, $04, nC4, $24, nRst, $0C, nC4, $08, nD4
	dc.b	$04, nEb4, $08, nEb4, $04, nEb4, $08, nEb4, $04, nD4, $08, nEb4
	dc.b	$04, nBb3, $24, nRst, $0C, nF3, $08, nBb3, $04, nD4, nRst, $08
	dc.b	nC4, $04, nRst, $08, nBb3, nRst, $04, nBb3, nRst, nA3, $18, nRst
	dc.b	$0C, nEb4, $04, nF4, $08, nAb4, $04, nG4, $08, nG4, $0C, nG4
	dc.b	$04, nG4, nRst, $08, nG4, nG4, $0C, nG4, $04, nG4, nRst, $10
	dc.b	nA3, $04, nBb3, $0C
	smpsJump            ProtoCNZ1_Jump01

; FM4 Data
ProtoCNZ1_FM4:
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nC1, $16, nRst, $02, nA0, $12, nRst, $02, nBb0, nRst, $0A, nBb0
	dc.b	$02, nRst, nA0, $16, nRst, $02, nBb0, $06, nRst, $02, nB0, nRst
	dc.b	nC1, $12, nRst, $02, nC1, nRst, $16, nBb0, $02, nRst, nC1, $08
	dc.b	nF0, $04, nFs0, $08, nG0, $04, nBb0, $08, nBb1, $04, nB0, $08
	dc.b	nB1, $04, nC1, $16, nRst, $02, nA0, $12, nRst, $02, nBb0, nRst
	dc.b	$0A, nBb0, $02, nRst, nA0, $16, nRst, $02, nBb0, $06, nRst, $02
	dc.b	nB0, nRst, nC1, $12, nRst, $02, nC1, nRst, $16, nBb0, $02, nRst
	dc.b	nC1, $08, nF0, $04, nFs0, $08, nG0, $04, nEb1, $08, nC1, $04
	dc.b	nF1, $08, nEb1, $04, nC1, $14, nC1, $04, nBb0, $08, nC1, $04
	dc.b	nBb0, $08, nC1, $04, nRst, $08, nG0, $04, nBb0, $08, nC1, $04
	dc.b	nEb1, $08, nC1, $04, nBb0, $0C, nC1, $14, nC1, $04, nRst, $08
	dc.b	nC1, $04, nBb0, $08, nC1, $04, nC1, $08, nF0, $04, nF0, $08
	dc.b	nG0, $04, nEb1, $08, nC1, $04, nF1, $08, nEb1, $04, nC1, $14
	dc.b	nC1, $04, nBb0, $08, nC1, $04, nBb0, $08, nC1, $04, nRst, $08
	dc.b	nG0, $04, nBb0, $08, nC1, $04, nEb1, $08, nC1, $04, nBb0, $0C
	dc.b	nC1, $14, nC1, $04, nRst, $08, nC1, $04, nBb0, $08, nC1, $04
	dc.b	nC1, $08, nF0, $04, nF0, $08, nG0, $04, nEb1, $08, nC1, $04
	dc.b	nF1, $08, nEb1, $04, nC1, $14, nC1, $04, nBb0, $08, nC1, $04
	dc.b	nBb0, $08, nC1, $04, nRst, $08, nG0, $04, nBb0, $08, nC1, $04
	dc.b	nEb1, $08, nC1, $04, nBb0, $0C, nC1, $14, nC1, $04, nRst, $08
	dc.b	nC1, $04, nBb0, $08, nC1, $04, nC1, $08, nF0, $04, nF0, $08
	dc.b	nG0, $04, nEb1, $08, nC1, $04, nF1, $08, nEb1, $04, nC1, $14
	dc.b	nC1, $04, nBb0, $08, nC1, $04, nBb0, $08, nC1, $04, nRst, $08
	dc.b	nG0, $04, nBb0, $08, nC1, $04, nEb1, $08, nC1, $04, nBb0, $0C
	dc.b	nC1, $08, nC1, $06, nRst, nC1, $02, nRst, $0A, nC1, $02, nRst
	dc.b	nC2, $08, nC1, $02, nRst, nC1, $0A, nRst, $02, nC1, $06, nRst
	dc.b	nC1, $16, nRst, $02, nF1, $04, nRst, $08, nF1, $06, nRst, nC1
	dc.b	$12, nRst, $02, nF1, nRst, $0A, nF1, $02, nRst, nC1, $0A, nRst
	dc.b	$02, nF1, $0A, nRst, $02, nC1, $0A, nRst, $02, nE1, $04, nRst
	dc.b	$08, nE1, $06, nRst, nC1, $12, nRst, $02, nE1, nRst, $0A, nE1
	dc.b	$02, nRst, nC1, $0A, nRst, $02, nE1, $0A, nRst, $02, nC1, $0A
	dc.b	nRst, $02, nD1, $04, nRst, $08, nD1, $06, nRst, nA0, $12, nRst
	dc.b	$02, nD1, nRst, $0A, nD1, $02, nRst, nA0, $0A, nRst, $02, nD1
	dc.b	$0A, nRst, $02, nA1, $0A, nRst, $02, nG1, $04, nRst, $08, nG1
	dc.b	nG1, $02, nRst, $0A, nD1, nRst, $02, nG0, nRst, $0A, nG1, $02
	dc.b	nRst, nG1, $06, nRst, $02, nA1, nRst, nB1, $06, nRst, $02, nG1
	dc.b	nRst, nA1, $06, nRst, $02, nB1, nRst, nF1, $04, nRst, $08, nF1
	dc.b	$06, nRst, nC1, $12, nRst, $02, nF1, nRst, $0A, nF1, $02, nRst
	dc.b	nC1, $0A, nRst, $02, nF1, $0A, nRst, $02, nC1, $0A, nRst, $02
	dc.b	nE1, $04, nRst, $08, nE1, $06, nRst, nC1, $12, nRst, $02, nE1
	dc.b	nRst, $0A, nE1, $02, nRst, nC1, $0A, nRst, $02, nE1, $0A, nRst
	dc.b	$02, nC1, $0A, nRst, $02, nD1, $04, nRst, $08, nD1, $06, nRst
	dc.b	nA0, $12, nRst, $02, nD1, nRst, $0A, nD1, $02, nRst, nA0, $0A
	dc.b	nRst, $02, nD1, $0A, nRst, $02, nA1, $0A, nRst, $02, nG1, $04
	dc.b	nRst, $08, nG1, nG1, $02, nRst, $0A, nD2, nRst, $02, nC2, nRst
	dc.b	$0A, nC2, nRst, $02, nC2, nRst, nC2, $0A, nRst, $02, nG1, $0A
	dc.b	nRst, $02, nF1, $08
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF2, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $02, nRst, $0E, nF1, $08
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF2, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $02, nRst, $0A, nF1, $04
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF2, $0A, nRst, $02
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $0A, nRst, $02, nBb0, $08
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nBb1, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $02, nRst, $0E, nBb0, $08
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nBb1, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $02, nRst, $0A, nBb0, $04
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nBb1, $0A, nRst, $02, nBb1, $0A, nRst, $02
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $08
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF2, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $02, nRst, $0A
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF2, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $04, nRst, $08, nF1, $04, nRst, $08, nF1, $04
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF2, $0A, nRst, $02
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $0A, nRst, $02, nF1, $08
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nBb1, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $02, nRst, $0A, nF1, $04
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nAb1, $08
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $02, nRst, $0A, nF1, $02, nRst, nEb1, $0A, nRst, $02, nBb1
	dc.b	$0A, nRst, $02, nEb1, $0A, nRst, $02, nF1, $08
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF2, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $02, nRst, $0E, nF1, $08
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF2, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $02, nRst, $0A, nF1, $04
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF2, $0A, nRst, $02
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $0A, nRst, $02, nBb0, $08
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nBb1, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $02, nRst, $0E, nBb0, $08
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nBb1, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nBb0, $02, nRst, $0A, nBb0, $04
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nBb1, $0A, nRst, $02, nBb1, $0A, nRst, $02
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $08
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF2, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $02, nRst, $0A
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF2, $0C
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $04, nRst, $08, nF1, $04, nRst, $08, nF1, $04
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nF2, $0A, nRst, $02
	smpsSetvoice        $22
	smpsDetune          $00
	smpsModSet          $03, $01, $02, $05
	dc.b	nF1, $0A, nRst, $02
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nCs2, $14, nB1, $10, nCs2, $14, nB1, $04, nCs2, nRst, $20
	smpsJump            ProtoCNZ1_FM4

; FM5 Data
ProtoCNZ1_FM5:
	dc.b	nRst, $02
	smpsSetvoice        $06
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	smpsDetune          $01

ProtoCNZ1_Jump00:
	dc.b	nC4, $0C, nBb3, $02, nA3, nG3, nF3, nE3, nD3, nC3, nBb2, nA2
	dc.b	nG2, nC4, $0C, nC4, $04, nRst, $30, nBb3, $08, nBb3, $04, nRst
	dc.b	$08, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nBb3
	dc.b	$0C, nA3, nRst, $08, nA3, $04, nBb3, $0C, nC4, nBb3, $02, nA3
	dc.b	nG3, nF3, nE3, nD3, nC3, nBb2, nA2, nG2, nC4, $0C, nC4, $04
	dc.b	nRst, $30, nBb3, $08, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nBb3, $0C, nA3, nE4, $18, nC4
	dc.b	nRst, $2C, nE4, $04, nD4, nRst, $08, nC4, $04, nRst, $08, nBb3
	dc.b	$18, nBb3, nBb3, $04, nRst, $08, nA3, $04, nRst, $08, nA3, $04
	dc.b	nRst, $08, nA3, nG3, $1C, nRst, $2C, nE4, $04, nD4, nRst, $08
	dc.b	nC4, $04, nRst, $08, nBb3, $18, nBb3, nBb3, $08, nRst, $04, nA3
	dc.b	$08, nRst, $04, nE4, $18, nC4, nRst, $2C, nE4, $04, nD4, nRst
	dc.b	$08, nC4, $04, nRst, $08, nBb3, $18, nBb3, nBb3, $04, nRst, $08
	dc.b	nA3, $04, nRst, $08, nA3, $04, nRst, $08, nA3, nG3, $1C, nRst
	dc.b	$2C, nE4, $04, nD4, nRst, $08, nC4, $04, nRst, $08, nG3, $14
	dc.b	nA3, $04, nRst, $08, nA3, $0C, nA3, $04, nBb3, nRst, $08, nBb3
	dc.b	$04, nRst, $08, nC4, $04, nRst, $08
	smpsSetvoice        $12
	smpsDetune          $FF
	smpsModSet          $0F, $01, $07, $06
	smpsFMAlterVol      $04
	dc.b	nC4, nD4, $04, nF4, $50, nC4, $04, nB3, $08, nC4, $04, nC4
	dc.b	$2C, nRst, $28, nD4, $08, nE4, $04, nF4, $18, nD4, $14, nF4
	dc.b	$04, nRst, $08, nD4, $0C, nD4, $04, nC4, $08, nD4, $04, nC4
	dc.b	$08, nD4, $04, nE4, $18, nE4, $14, nD4, $04, nRst, $24, nD4
	dc.b	$08, nE4, $04, nF4, $50, nC4, $04, nB3, $08, nC4, $04, nC4
	dc.b	$2C, nRst, $28, nD4, $08, nE4, $04, nF4, $18, nD4, $14, nF4
	dc.b	$04, nRst, $08, nD4, $0C, nD4, $04, nC4, $08, nD4, $04, nE4
	dc.b	$0C, nF4, $18, nF4, $14, nE4, $04, nRst, $38
	smpsSetvoice        $05
	smpsDetune          $03
	smpsModSet          $14, $01, $07, $06
	smpsFMAlterVol      $08
	smpsFMAlterVol      $FC
	dc.b	nE4, $04, nF4, $08, nF4, $04, nF4, $08, nF4, $04, nE4, $08
	dc.b	nF4, $04, nC4, $24, nRst, $0C, nC4, $08, nD4, $04, nEb4, $08
	dc.b	nEb4, $04, nEb4, $08, nEb4, $04, nD4, $08, nEb4, $04, nBb3, $24
	dc.b	nRst, $0C, nF3, $08, nBb3, $04, nD4, nRst, $08, nC4, $04, nRst
	dc.b	$08, nBb3, nRst, $04, nBb3, nRst, nA3, $18, nEb3, $04, nF3, $08
	dc.b	nAb3, $04, nBb3, $08, nAb3, $04, nBb3, $08, nBb3, $04, nBb3, $08
	dc.b	nAb3, $0C, nA3, $04, nRst, $0C, nRst, $08, nD4, $04, nRst, $08
	dc.b	nBb3, $04, nD4, $0C, nG4, nF4, $08, nF4, $04, nF4, $08, nF4
	dc.b	$04, nE4, $08, nF4, $04, nC4, $24, nRst, $0C, nC4, $08, nD4
	dc.b	$04, nEb4, $08, nEb4, $04, nEb4, $08, nEb4, $04, nD4, $08, nEb4
	dc.b	$04, nBb3, $24, nRst, $0C, nF3, $08, nBb3, $04, nD4, nRst, $08
	dc.b	nC4, $04, nRst, $08, nBb3, nRst, $04, nBb3, nRst, nA3, $18, nRst
	dc.b	$0C, nEb4, $04, nF4, $08, nAb4, $04, nG4, $08, nG4, $0C, nG4
	dc.b	$04, nG4, nRst, $08, nG4, nG4, $0C, nG4, $04, nG4, nRst, $10
	dc.b	nA3, $04
	smpsFMAlterVol      $F8
	smpsJump            ProtoCNZ1_Jump00

; PSG1 Data
ProtoCNZ1_PSG1:
	smpsPSGvoice        sTone_0A

ProtoCNZ1_Jump05:
	dc.b	nC4, $14, nC4, $04, nRst, $08, nC4, $0C, nC4, $04, nRst, $18
	dc.b	nEb4, $02, nE4, $06, nC4, $04, nRst, $0C, nBb3, $08, nBb3, $04
	dc.b	nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04
	dc.b	nBb3, $0C, nA3, nRst, $08, nA3, $02, nA3, nBb3, $0C, nC4, $14
	dc.b	nC4, $04, nRst, $08, nC4, $0C, nC4, $04, nRst, $18, nEb4, $02
	dc.b	nE4, $06, nC4, $04, nRst, $0C, nBb3, $08, nBb3, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nBb3, $0C
	dc.b	nA3, nRst, $08, nA3, $02, nA3, nBb3, $0C
	smpsChangeTransposition $F4
	dc.b	nRst, $18, nC4, $02, nRst, $0A, nG3, $02, nRst, $06, nC4, $02
	dc.b	nRst, $0A, nC4, $04, nC5, $12, nRst, $3E, nF4, $02, nRst, nBb4
	dc.b	nRst, $0A, nA4, $02, nRst, $0A, nA4, $02, nRst, $0A, nA4, $02
	dc.b	nRst, $06, nG4, $16, nRst, $06, nC4, $02, nRst, $0A, nG3, $02
	dc.b	nRst, $06, nC4, $02, nRst, $0A, nC4, $04, nC5, $12, nRst, $3E
	dc.b	nF4, $02, nRst, nBb4, nRst, $0A, nA4, $02, nRst, $16, nBb4, $02
	dc.b	nRst, $0A, nC5, $02, nRst, $16, nC4, $02, nRst, $0A, nG3, $02
	dc.b	nRst, $06, nC4, $02, nRst, $0A, nC4, $04, nC5, $12, nRst, $3E
	dc.b	nF4, $02, nRst, nBb4, nRst, $0A, nA4, $02, nRst, $0A, nA4, $02
	dc.b	nRst, $0A, nA4, $02, nRst, $06, nG4, $16, nRst, $06, nC4, $02
	dc.b	nRst, $0A, nG3, $02, nRst, $06, nC4, $02, nRst, $0A, nC4, $04
	dc.b	nC5, $12, nRst, $06, nC4, $02, nRst, $0A, nG3, $06, nRst, $02
	dc.b	nG3, nRst, $0A, nA3, $02, nRst, $0A, nA3, $02, nRst, $0A, nA3
	dc.b	$02, nRst, nBb3, nRst, $0A, nBb3, $02, nRst, $0A, nC4, $04, nRst
	dc.b	$20, nC5, $02, nRst, $06, nC5, $02, nRst, nB4, $0A, nRst, $02
	dc.b	nB4, $04, nRst, nC5, $02, nRst, $3E, nG4, $02, nRst, $06, nG4
	dc.b	$02, nRst, nE4, $0A, nRst, $02, nE4, $04, nRst, nG4, $02, nRst
	dc.b	$3E, nA4, $02, nRst, $06, nA4, $02, nRst, nF4, $0A, nRst, $02
	dc.b	nF4, $04, nRst, nA4, $02, nRst, $32, nG4, $02, nRst, $0A, nC5
	dc.b	$02, nRst, $0A, nD5, $02, nRst, $0A, nC5, $02, nRst, $06, nB4
	dc.b	$02, nRst, $3E, nC5, $02, nRst, $06, nC5, $02, nRst, nB4, $0A
	dc.b	nRst, $02, nB4, $04, nRst, nC5, $02, nRst, $3E, nG4, $02, nRst
	dc.b	$06, nG4, $02, nRst, nE4, $0A, nRst, $02, nE4, $04, nRst, nG4
	dc.b	$02, nRst, $3E, nA4, $02, nRst, $06, nA4, $02, nRst, nF4, $0A
	dc.b	nRst, $02, nF4, $04, nRst, nA4, $02, nRst, $0A, nF3, $02, nRst
	dc.b	$0E, nFs3, $02, nRst, $0A, nA3, $02, nRst, $0A, nG3, $02, nRst
	dc.b	$0A, nG3, $02, nRst, $06, nG4, $02, nRst, $0A, nG3, $02, nRst
	dc.b	nG3, $06, nRst, $02, nC4, nRst, $0A, nE4, $0E, nRst, $02, nF4
	dc.b	$0A, nRst, $02, nG4, $0A, nRst, $02, nC4, nRst, $06, nC4, $02
	dc.b	nRst, nC4, nRst, $06, nC5, $02, nRst, $0A, nC4, $02, nRst, nC5
	dc.b	nRst, $06, nC4, $02, nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b	nRst, nC5, $08, nC4, $02, nRst, nC5, $08, nRst, $04, nBb3, $02
	dc.b	nRst, $06, nBb3, $02, nRst, nBb3, nRst, $06, nBb4, $02, nRst, $0A
	dc.b	nBb3, $02, nRst, nBb4, nRst, $06, nBb3, $02, nRst, $0A, nBb3, $02
	dc.b	nRst, $0A, nBb3, $02, nRst, nBb4, $08, nBb3, $02, nRst, nBb4, $08
	dc.b	nRst, $04, nBb3, $02, nRst, $06, nBb3, $02, nRst, nBb3, nRst, $06
	dc.b	nBb4, $02, nRst, $0A, nBb3, $02, nRst, nBb4, $06, nRst, $02, nA4
	dc.b	nRst, $0A, nF3, $02, nRst, $0A, nF3, $02, nRst, nF4, $08, nF3
	dc.b	$02, nRst, nF4, $08, nRst, $3C, nD4, $02, nRst, $0A, nBb3, $02
	dc.b	nRst, nD4, $06, nRst, nG4, nRst, nC4, $02, nRst, $06, nC4, $02
	dc.b	nRst, nC4, nRst, $06, nC5, $02, nRst, $0A, nC4, $02, nRst, nC5
	dc.b	nRst, $06, nC4, $02, nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b	nRst, nC5, $08, nC4, $02, nRst, nC5, $08, nRst, $04, nBb3, $02
	dc.b	nRst, $06, nBb3, $02, nRst, nBb3, nRst, $06, nBb4, $02, nRst, $0A
	dc.b	nBb3, $02, nRst, nBb4, nRst, $06, nBb3, $02, nRst, $0A, nBb3, $02
	dc.b	nRst, $0A, nBb3, $02, nRst, nBb4, $08, nBb3, $02, nRst, nBb4, $08
	dc.b	nRst, $04, nBb3, $02, nRst, $06, nBb3, $02, nRst, nBb3, nRst, $06
	dc.b	nBb4, $02, nRst, $0A, nBb3, $02, nRst, nBb4, $06, nRst, $02, nA4
	dc.b	nRst, $0A, nF3, $02, nRst, $0A, nF3, $02, nRst, nF4, $08, nF3
	dc.b	$02, nRst, nF4, $08, nRst, $04, nB3, $02, nRst, $06, nB3, $02
	dc.b	nRst, nB4, nRst, $06, nB3, $02, nRst, nB3, nRst, $06, nB4, $02
	dc.b	nRst, nB3, nRst, $06, nB3, $02, nRst, nB4, nRst, $06, nB3, $02
	dc.b	nRst, nB3, nRst, $22
	smpsChangeTransposition $0C
	smpsJump            ProtoCNZ1_Jump05

; PSG2 Data
ProtoCNZ1_PSG2:
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	dc.b	nRst, $01

ProtoCNZ1_Jump04:
	dc.b	nC4, $14, nC4, $04, nRst, $08, nC4, $0C, nC4, $04, nRst, $18
	dc.b	nEb4, $02, nE4, $06, nC4, $04, nRst, $0C, nBb3, $08, nBb3, $04
	dc.b	nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04
	dc.b	nBb3, $0C, nA3, nRst, $08, nA3, $02, nA3, nBb3, $0C, nC4, $14
	dc.b	nC4, $04, nRst, $08, nC4, $0C, nC4, $04, nRst, $18, nEb4, $02
	dc.b	nE4, $06, nC4, $04, nRst, $0C, nBb3, $08, nBb3, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nBb3, $0C
	dc.b	nA3, nRst, $08, nA3, $02, nA3, nBb3, $0C
	smpsChangeTransposition $F4
	dc.b	nRst, $18, nC4, $02, nRst, $0A, nG3, $02, nRst, $06, nC4, $02
	dc.b	nRst, $0A, nC4, $04, nC5, $12, nRst, $3E, nF4, $02, nRst, nBb4
	dc.b	nRst, $0A, nA4, $02, nRst, $0A, nA4, $02, nRst, $0A, nA4, $02
	dc.b	nRst, $06, nG4, $16, nRst, $06, nC4, $02, nRst, $0A, nG3, $02
	dc.b	nRst, $06, nC4, $02, nRst, $0A, nC4, $04, nC5, $12, nRst, $3E
	dc.b	nF4, $02, nRst, nBb4, nRst, $0A, nA4, $02, nRst, $16, nBb4, $02
	dc.b	nRst, $0A, nC5, $02, nRst, $16, nC4, $02, nRst, $0A, nG3, $02
	dc.b	nRst, $06, nC4, $02, nRst, $0A, nC4, $04, nC5, $12, nRst, $3E
	dc.b	nF4, $02, nRst, nBb4, nRst, $0A, nA4, $02, nRst, $0A, nA4, $02
	dc.b	nRst, $0A, nA4, $02, nRst, $06, nG4, $16, nRst, $06, nC4, $02
	dc.b	nRst, $0A, nG3, $02, nRst, $06, nC4, $02, nRst, $0A, nC4, $04
	dc.b	nC5, $12, nRst, $06, nC4, $02, nRst, $0A, nG3, $06, nRst, $02
	dc.b	nG3, nRst, $0A, nA3, $02, nRst, $0A, nA3, $02, nRst, $0A, nA3
	dc.b	$02, nRst, nBb3, nRst, $0A, nBb3, $02, nRst, $0A, nC4, $04, nRst
	dc.b	$20, nC5, $02, nRst, $06, nC5, $02, nRst, nB4, $0A, nRst, $02
	dc.b	nB4, $04, nRst, nC5, $02, nRst, $3E, nG4, $02, nRst, $06, nG4
	dc.b	$02, nRst, nE4, $0A, nRst, $02, nE4, $04, nRst, nG4, $02, nRst
	dc.b	$3E, nA4, $02, nRst, $06, nA4, $02, nRst, nF4, $0A, nRst, $02
	dc.b	nF4, $04, nRst, nA4, $02, nRst, $32, nG4, $02, nRst, $0A, nC5
	dc.b	$02, nRst, $0A, nD5, $02, nRst, $0A, nC5, $02, nRst, $06, nB4
	dc.b	$02, nRst, $3E, nC5, $02, nRst, $06, nC5, $02, nRst, nB4, $0A
	dc.b	nRst, $02, nB4, $04, nRst, nC5, $02, nRst, $3E, nG4, $02, nRst
	dc.b	$06, nG4, $02, nRst, nE4, $0A, nRst, $02, nE4, $04, nRst, nG4
	dc.b	$02, nRst, $3E, nA4, $02, nRst, $06, nA4, $02, nRst, nF4, $0A
	dc.b	nRst, $02, nF4, $04, nRst, nA4, $02, nRst, $0A, nF3, $02, nRst
	dc.b	$0E, nFs3, $02, nRst, $0A, nA3, $02, nRst, $0A, nG3, $02, nRst
	dc.b	$0A, nG3, $02, nRst, $06, nG4, $02, nRst, $0A, nG3, $02, nRst
	dc.b	nG3, $06, nRst, $02, nC4, nRst, $0A, nE4, $0E, nRst, $02, nF4
	dc.b	$0A, nRst, $02, nG4, $0A, nRst, $02, nC4, nRst, $06, nC4, $02
	dc.b	nRst, nC4, nRst, $06, nC5, $02, nRst, $0A, nC4, $02, nRst, nC5
	dc.b	nRst, $06, nC4, $02, nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b	nRst, nC5, $08, nC4, $02, nRst, nC5, $08, nRst, $04, nBb3, $02
	dc.b	nRst, $06, nBb3, $02, nRst, nBb3, nRst, $06, nBb4, $02, nRst, $0A
	dc.b	nBb3, $02, nRst, nBb4, nRst, $06, nBb3, $02, nRst, $0A, nBb3, $02
	dc.b	nRst, $0A, nBb3, $02, nRst, nBb4, $08, nBb3, $02, nRst, nBb4, $08
	dc.b	nRst, $04, nBb3, $02, nRst, $06, nBb3, $02, nRst, nBb3, nRst, $06
	dc.b	nBb4, $02, nRst, $0A, nBb3, $02, nRst, nBb4, $06, nRst, $02, nA4
	dc.b	nRst, $0A, nF3, $02, nRst, $0A, nF3, $02, nRst, nF4, $08, nF3
	dc.b	$02, nRst, nF4, $08, nRst, $3C, nD4, $02, nRst, $0A, nBb3, $02
	dc.b	nRst, nD4, $06, nRst, nG4, nRst, nC4, $02, nRst, $06, nC4, $02
	dc.b	nRst, nC4, nRst, $06, nC5, $02, nRst, $0A, nC4, $02, nRst, nC5
	dc.b	nRst, $06, nC4, $02, nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b	nRst, nC5, $08, nC4, $02, nRst, nC5, $08, nRst, $04, nBb3, $02
	dc.b	nRst, $06, nBb3, $02, nRst, nBb3, nRst, $06, nBb4, $02, nRst, $0A
	dc.b	nBb3, $02, nRst, nBb4, nRst, $06, nBb3, $02, nRst, $0A, nBb3, $02
	dc.b	nRst, $0A, nBb3, $02, nRst, nBb4, $08, nBb3, $02, nRst, nBb4, $08
	dc.b	nRst, $04, nBb3, $02, nRst, $06, nBb3, $02, nRst, nBb3, nRst, $06
	dc.b	nBb4, $02, nRst, $0A, nBb3, $02, nRst, nBb4, $06, nRst, $02, nA4
	dc.b	nRst, $0A, nF3, $02, nRst, $0A, nF3, $02, nRst, nF4, $08, nF3
	dc.b	$02, nRst, nF4, $08, nRst, $04, nB3, $02, nRst, $06, nB3, $02
	dc.b	nRst, nB4, nRst, $06, nB3, $02, nRst, nB3, nRst, $06, nB4, $02
	dc.b	nRst, nB3, nRst, $06, nB3, $02, nRst, nB4, nRst, $06, nB3, $02
	dc.b	nRst, nB3, nRst, $22
	smpsChangeTransposition $0C
	smpsJump            ProtoCNZ1_Jump04

; PSG3 Data
ProtoCNZ1_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7

ProtoCNZ1_Loop00:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $28
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $34
	smpsLoop            $01, $02, ProtoCNZ1_Loop00

ProtoCNZ1_Loop01:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $07, ProtoCNZ1_Loop01
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $3C

ProtoCNZ1_Loop02:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $03, ProtoCNZ1_Loop02
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $34

ProtoCNZ1_Loop03:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $03, ProtoCNZ1_Loop03
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $34

ProtoCNZ1_Loop04:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $1E, ProtoCNZ1_Loop04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $24
	smpsJump            ProtoCNZ1_PSG3

ProtoCNZ1_Voices:
;	Voice $00
;	$3C
;	$01, $00, $00, $00, 	$1F, $1F, $15, $1F, 	$11, $0D, $12, $05
;	$07, $04, $09, $02, 	$55, $3A, $25, $1A, 	$1A, $80, $07, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $02, $03, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $80, $07, $80, $1A

;	Voice $01
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $15

;	Voice $02
;	$03
;	$00, $D7, $33, $02, 	$5F, $9F, $5F, $1F, 	$13, $0F, $0A, $0A
;	$10, $0F, $02, $09, 	$35, $15, $25, $1A, 	$13, $16, $15, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $0D, $00
	smpsVcCoarseFreq    $02, $03, $07, $00
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0F, $13
	smpsVcDecayRate2    $09, $02, $0F, $10
	smpsVcDecayLevel    $01, $02, $01, $03
	smpsVcReleaseRate   $0A, $05, $05, $05
	smpsVcTotalLevel    $80, $15, $16, $13

;	Voice $03
;	$34
;	$70, $72, $31, $31, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $80, $18, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $01, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $80, $18, $80, $10

;	Voice $04
;	$3E
;	$77, $71, $32, $31, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $1B

;	Voice $05
;	$34
;	$33, $41, $7E, $74, 	$5B, $9F, $5F, $1F, 	$04, $07, $07, $08
;	$00, $00, $00, $00, 	$FF, $FF, $EF, $FF, 	$23, $80, $29, $87
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $03
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $07, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $87, $29, $80, $23

;	Voice $06
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $27, $28, $18

;	Voice $07
;	$3C
;	$32, $32, $71, $42, 	$1F, $18, $1F, $1E, 	$07, $1F, $07, $1F
;	$00, $00, $00, $00, 	$1F, $0F, $1F, $0F, 	$1E, $80, $0C, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $03, $03
	smpsVcCoarseFreq    $02, $01, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $18, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $07, $1F, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $0C, $80, $1E

;	Voice $08
;	$3C
;	$71, $72, $3F, $34, 	$8D, $52, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$23, $08, $02, $F7, 	$15, $80, $1D, $87
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $0F, $02, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $00, $00, $02
	smpsVcReleaseRate   $07, $02, $08, $03
	smpsVcTotalLevel    $87, $1D, $80, $15

;	Voice $09
;	$3D
;	$01, $01, $00, $00, 	$8E, $52, $14, $4C, 	$08, $08, $0E, $03
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$1B, $80, $80, $9B
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $0C, $14, $12, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $08, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $9B, $80, $80, $1B

;	Voice $0A
;	$3A
;	$31, $53, $31, $41, 	$8D, $4F, $15, $52, 	$06, $08, $07, $04
;	$02, $00, $00, $00, 	$1F, $1F, $2F, $2F, 	$19, $20, $2A, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $03, $05, $03
	smpsVcCoarseFreq    $01, $01, $03, $01
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $12, $15, $0F, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $07, $08, $06
	smpsVcDecayRate2    $00, $00, $00, $02
	smpsVcDecayLevel    $02, $02, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $2A, $20, $19

;	Voice $0B
;	$3C
;	$36, $31, $76, $71, 	$94, $9F, $96, $9F, 	$12, $00, $14, $0F
;	$04, $0A, $04, $0D, 	$2F, $0F, $4F, $2F, 	$33, $80, $1A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $01, $06, $01, $06
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $1F, $16, $1F, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $14, $00, $12
	smpsVcDecayRate2    $0D, $04, $0A, $04
	smpsVcDecayLevel    $02, $04, $00, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1A, $80, $33

;	Voice $0C
;	$34
;	$33, $41, $7E, $74, 	$5B, $9F, $5F, $1F, 	$04, $07, $07, $08
;	$00, $00, $00, $00, 	$FF, $FF, $EF, $FF, 	$23, $90, $29, $97
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $03
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $07, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $97, $29, $90, $23

;	Voice $0D
;	$38
;	$63, $31, $31, $31, 	$10, $13, $1A, $1B, 	$0E, $00, $00, $00
;	$00, $00, $00, $00, 	$3F, $0F, $0F, $0F, 	$1A, $19, $1A, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $06
	smpsVcCoarseFreq    $01, $01, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $1A, $13, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1A, $19, $1A

;	Voice $0E
;	$3A
;	$31, $25, $73, $41, 	$5F, $1F, $1F, $9C, 	$08, $05, $04, $1E
;	$03, $04, $02, $06, 	$2F, $2F, $1F, $0F, 	$29, $27, $1F, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $02, $03
	smpsVcCoarseFreq    $01, $03, $05, $01
	smpsVcRateScale     $02, $00, $00, $01
	smpsVcAttackRate    $1C, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1E, $04, $05, $08
	smpsVcDecayRate2    $06, $02, $04, $03
	smpsVcDecayLevel    $00, $01, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1F, $27, $29

;	Voice $0F
;	$04
;	$71, $41, $31, $31, 	$12, $12, $12, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $23, $80, $23

;	Voice $10
;	$14
;	$75, $72, $35, $32, 	$9F, $9F, $9F, $9F, 	$05, $05, $00, $0A
;	$05, $05, $07, $05, 	$2F, $FF, $0F, $2F, 	$1E, $80, $14, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $02, $05, $02, $05
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $05, $05
	smpsVcDecayRate2    $05, $07, $05, $05
	smpsVcDecayLevel    $02, $00, $0F, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $14, $80, $1E

;	Voice $11
;	$3D
;	$01, $00, $01, $02, 	$12, $1F, $1F, $14, 	$07, $02, $02, $0A
;	$05, $05, $05, $05, 	$2F, $2F, $2F, $AF, 	$1C, $80, $82, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $1F, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $02, $02, $07
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $0A, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $82, $80, $1C

;	Voice $12
;	$1C
;	$73, $72, $33, $32, 	$94, $99, $94, $99, 	$08, $0A, $08, $0A
;	$00, $05, $00, $05, 	$3F, $4F, $3F, $4F, 	$1E, $80, $19, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $02, $03, $02, $03
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $19, $14, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $08, $0A, $08
	smpsVcDecayRate2    $05, $00, $05, $00
	smpsVcDecayLevel    $04, $03, $04, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $19, $80, $1E

;	Voice $13
;	$31
;	$33, $01, $00, $00, 	$9F, $1F, $1F, $1F, 	$0D, $0A, $0A, $0A
;	$0A, $07, $07, $07, 	$FF, $AF, $AF, $AF, 	$1E, $1E, $1E, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $00, $00, $01, $03
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0A, $0D
	smpsVcDecayRate2    $07, $07, $07, $0A
	smpsVcDecayLevel    $0A, $0A, $0A, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1E, $1E, $1E

;	Voice $14
;	$3A
;	$70, $76, $30, $71, 	$1F, $95, $1F, $1F, 	$0E, $0F, $05, $0C
;	$07, $06, $06, $07, 	$2F, $4F, $1F, $5F, 	$21, $12, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $07
	smpsVcCoarseFreq    $01, $00, $06, $00
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $15, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $05, $0F, $0E
	smpsVcDecayRate2    $07, $06, $06, $07
	smpsVcDecayLevel    $05, $01, $04, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $12, $21

;	Voice $15
;	$28
;	$71, $00, $30, $01, 	$1F, $1F, $1D, $1F, 	$13, $13, $06, $05
;	$03, $03, $02, $05, 	$4F, $4F, $2F, $3F, 	$0E, $14, $1E, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $06, $13, $13
	smpsVcDecayRate2    $05, $02, $03, $03
	smpsVcDecayLevel    $03, $02, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1E, $14, $0E

;	Voice $16
;	$3E
;	$38, $01, $7A, $34, 	$59, $D9, $5F, $9C, 	$0F, $04, $0F, $0A
;	$02, $02, $05, $05, 	$AF, $AF, $66, $66, 	$28, $80, $A3, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $03
	smpsVcCoarseFreq    $04, $0A, $01, $08
	smpsVcRateScale     $02, $01, $03, $01
	smpsVcAttackRate    $1C, $1F, $19, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0F, $04, $0F
	smpsVcDecayRate2    $05, $05, $02, $02
	smpsVcDecayLevel    $06, $06, $0A, $0A
	smpsVcReleaseRate   $06, $06, $0F, $0F
	smpsVcTotalLevel    $80, $A3, $80, $28

;	Voice $17
;	$39
;	$32, $31, $72, $71, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $32, $1B

;	Voice $18
;	$07
;	$34, $74, $32, $71, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $05, $03
;	$00, $00, $00, $00, 	$3F, $3F, $2F, $2F, 	$8A, $8A, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $03
	smpsVcCoarseFreq    $01, $02, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $05, $0A, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $03, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $80, $8A, $8A

;	Voice $19
;	$3A
;	$31, $37, $31, $31, 	$8D, $8D, $8E, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$17, $28, $26, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0E, $0D, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $26, $28, $17

;	Voice $1A
;	$3B
;	$3A, $31, $71, $74, 	$DF, $1F, $1F, $DF, 	$00, $0A, $0A, $05
;	$00, $05, $05, $03, 	$0F, $5F, $1F, $5F, 	$32, $1E, $0F, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $04, $01, $01, $0A
	smpsVcRateScale     $03, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $0A, $00
	smpsVcDecayRate2    $03, $05, $05, $00
	smpsVcDecayLevel    $05, $01, $05, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $0F, $1E, $32

;	Voice $1B
;	$3A
;	$32, $56, $32, $42, 	$8D, $4F, $15, $52, 	$06, $08, $07, $04
;	$02, $00, $00, $00, 	$1F, $1F, $2F, $2F, 	$19, $20, $2A, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $03, $05, $03
	smpsVcCoarseFreq    $02, $02, $06, $02
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $12, $15, $0F, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $07, $08, $06
	smpsVcDecayRate2    $00, $00, $00, $02
	smpsVcDecayLevel    $02, $02, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $2A, $20, $19

;	Voice $1C
;	$2C
;	$71, $74, $32, $32, 	$1F, $12, $1F, $12, 	$00, $0A, $00, $0A
;	$00, $00, $00, $00, 	$0F, $1F, $0F, $1F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $02, $02, $04, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $0A, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $17, $80, $16

;	Voice $1D
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $8F
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $8F, $27, $28, $18

;	Voice $1E
;	$36
;	$7A, $32, $51, $11, 	$1F, $1F, $59, $1C, 	$0A, $0D, $06, $0A
;	$07, $00, $02, $02, 	$AF, $5F, $5F, $5F, 	$1E, $8B, $81, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $03, $07
	smpsVcCoarseFreq    $01, $01, $02, $0A
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $1C, $19, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $06, $0D, $0A
	smpsVcDecayRate2    $02, $02, $00, $07
	smpsVcDecayLevel    $05, $05, $05, $0A
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $81, $8B, $1E

;	Voice $1F
;	$3C
;	$71, $72, $3F, $34, 	$8D, $52, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$23, $08, $02, $F7, 	$15, $85, $1D, $8A
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $0F, $02, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $00, $00, $02
	smpsVcReleaseRate   $07, $02, $08, $03
	smpsVcTotalLevel    $8A, $1D, $85, $15

;	Voice $20
;	$3E
;	$77, $71, $32, $31, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $8F, $8F, $8F
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $8F, $8F, $8F, $1B

;	Voice $21
;	$07
;	$34, $74, $32, $71, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $05, $03
;	$00, $00, $00, $00, 	$3F, $3F, $2F, $2F, 	$8A, $8A, $8A, $8A
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $03
	smpsVcCoarseFreq    $01, $02, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $05, $0A, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $03, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $8A, $8A, $8A, $8A

;	Voice $22
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $80, $13, $37, $19

