Snd_ProtoCNZ1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoiceUVB
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $41

	smpsHeaderDAC       Snd_ProtoCNZ1_DAC,	$00, $0A
	smpsHeaderFM        Snd_ProtoCNZ1_FM1,	$03, $15
	smpsHeaderFM        Snd_ProtoCNZ1_FM2,	$03, $15
	smpsHeaderFM        Snd_ProtoCNZ1_FM3,	$03, $14
	smpsHeaderFM        Snd_ProtoCNZ1_FM4,	$1B, $12
	smpsHeaderFM        Snd_ProtoCNZ1_FM5,	$03, $18
	smpsHeaderPSG       Snd_ProtoCNZ1_PSG1,	$03, $05, $00, sTone_0C
	smpsHeaderPSG       Snd_ProtoCNZ1_PSG2,	$03, $05, $00, sTone_0C
	smpsHeaderPSG       Snd_ProtoCNZ1_PSG3,	$00, $03, $00, sTone_0C

; DAC Data
Snd_ProtoCNZ1_DAC:
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
	smpsJump            Snd_ProtoCNZ1_DAC

; FM1 Data
Snd_ProtoCNZ1_FM1:
	smpsPan             panLeft, $00

Snd_ProtoCNZ1_Jump03:
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
	smpsJump            Snd_ProtoCNZ1_Jump03

; FM2 Data
Snd_ProtoCNZ1_FM2:
	smpsPan             panRight, $00

Snd_ProtoCNZ1_Jump02:
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
	smpsJump            Snd_ProtoCNZ1_Jump02

; FM3 Data
Snd_ProtoCNZ1_FM3:
	smpsSetvoice        $05
	smpsDetune          $FD
	smpsModSet          $14, $01, $07, $06

Snd_ProtoCNZ1_Jump01:
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
	smpsJump            Snd_ProtoCNZ1_Jump01

; FM4 Data
Snd_ProtoCNZ1_FM4:
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
	smpsJump            Snd_ProtoCNZ1_FM4

; FM5 Data
Snd_ProtoCNZ1_FM5:
	dc.b	nRst, $02
	smpsSetvoice        $06
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	smpsDetune          $01

Snd_ProtoCNZ1_Jump00:
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
	smpsJump            Snd_ProtoCNZ1_Jump00

; PSG1 Data
Snd_ProtoCNZ1_PSG1:
	smpsPSGvoice        sTone_0A

Snd_ProtoCNZ1_Jump05:
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
	smpsJump            Snd_ProtoCNZ1_Jump05

; PSG2 Data
Snd_ProtoCNZ1_PSG2:
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	dc.b	nRst, $01

Snd_ProtoCNZ1_Jump04:
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
	smpsJump            Snd_ProtoCNZ1_Jump04

; PSG3 Data
Snd_ProtoCNZ1_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7

Snd_ProtoCNZ1_Loop00:
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
	smpsLoop            $01, $02, Snd_ProtoCNZ1_Loop00

Snd_ProtoCNZ1_Loop01:
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
	smpsLoop            $01, $07, Snd_ProtoCNZ1_Loop01
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

Snd_ProtoCNZ1_Loop02:
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
	smpsLoop            $01, $03, Snd_ProtoCNZ1_Loop02
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

Snd_ProtoCNZ1_Loop03:
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
	smpsLoop            $01, $03, Snd_ProtoCNZ1_Loop03
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

Snd_ProtoCNZ1_Loop04:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $1E, Snd_ProtoCNZ1_Loop04
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $08
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $04
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $24
	smpsJump            Snd_ProtoCNZ1_PSG3
