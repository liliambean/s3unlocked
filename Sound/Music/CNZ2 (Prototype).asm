Snd_ProtoCNZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoiceUVB
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       Snd_ProtoCNZ2_DAC
	smpsHeaderFM        Snd_ProtoCNZ2_FM1,	$0C, $13
	smpsHeaderFM        Snd_ProtoCNZ2_FM2,	$0C, $13
	smpsHeaderFM        Snd_ProtoCNZ2_FM3,	$18, $18
	smpsHeaderFM        Snd_ProtoCNZ2_FM4,	$18, $0C
	smpsHeaderFM        Snd_ProtoCNZ2_FM5,	$0C, $18
	smpsHeaderPSG       Snd_ProtoCNZ2_PSG1,	$F4, $05, $00, sTone_0C
	smpsHeaderPSG       Snd_ProtoCNZ2_PSG2,	$F4, $05, $00, sTone_0C
	smpsHeaderPSG       Snd_ProtoCNZ2_PSG3,	$00, $03, $00, sTone_0C

; DAC Data
Snd_ProtoCNZ2_DAC:
	dc.b	dSnareS3, $0C, dClapS3, dSnareS3, $06, dClapS3, $0C, dClapS3, $06, dSnareS3, dClapS3, dClapS3
	dc.b	$0C, dSnareS3, dClapS3, dSnareS3, dClapS3, dSnareS3, $06, dClapS3, $0C, dSnareS3
	smpsPan             panLeft, $00
	dc.b	dHighTom, $02, dHighTom, dHighTom
	smpsPan             panCenter, $00
	dc.b	dHighTom, $06, dHighTom, dMidTomS3, dMidTomS3
	smpsPan             panRight, $00
	dc.b	dLowTomS3, dFloorTomS3
	smpsPan             panCenter, $00
	dc.b	dSnareS3, $0C, dClapS3, dSnareS3, $06, dClapS3, $0C, dClapS3, $06, dSnareS3, dClapS3, dClapS3
	dc.b	$0C, dSnareS3, dClapS3, dSnareS3, dClapS3, dSnareS3, $06, dClapS3, $0C, dSnareS3, $1E, dSnareS3
	dc.b	$06, dSnareS3, dSnareS3, dSnareS3, dKickS3, $18, dSnareS3, $12, dKickS3, $0C, dKickS3, dKickS3
	dc.b	$06, dSnareS3, $18, dKickS3, dSnareS3, $12, dKickS3, $0C, dKickS3, dKickS3, $06, dSnareS3
	dc.b	$18, dKickS3, dSnareS3, $12, dKickS3, $0C, dKickS3, dKickS3, $06, dSnareS3, $18, dKickS3
	dc.b	$12, dSnareS3, $0C, dSnareS3, dSnareS3, $06, dSnareS3
	smpsPan             panLeft, $00
	dc.b	dHighTom, $02, dHighTom, $04, dHighTom, $06
	smpsPan             panCenter, $00
	dc.b	dMidTomS3, dMidTomS3
	smpsPan             panRight, $00
	dc.b	dLowTomS3, $0C, dFloorTomS3, $06
	smpsPan             panCenter, $00
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, $0C, dKickS3, dKickS3, $06, dSnareS3, $18, dKickS3
	dc.b	dSnareS3, $12, dKickS3, $0C, dKickS3, dKickS3, $06, dSnareS3, $18, dKickS3, dSnareS3, $12
	dc.b	dKickS3, $0C, dKickS3, dKickS3, $06, dSnareS3, $18, dKickS3, $12, dSnareS3, $0C, dSnareS3
	dc.b	dSnareS3, $06, dSnareS3, dMidMetalHit, dMidMetalHit, dMidMetalHit, dHigherMetalHit, dHigherMetalHit, $0C, dHigherMetalHit, $06, dKickS3
	dc.b	dMetalHit, dMetalHit, dLowMetalHit, dSnareS3, dMetalHit, dLowMetalHit, dKickS3, $0C, dMetalHit, $06, dMetalHit, dLowMetalHit
	dc.b	dSnareS3, dMetalHit, dLowMetalHit, dLowMetalHit, dKickS3, dMetalHit, dMetalHit, dLowMetalHit, dSnareS3, dMetalHit, dLowMetalHit, dKickS3
	dc.b	$0C, dMetalHit, $06, dMetalHit, dLowMetalHit, dSnareS3, dMetalHit, dLowMetalHit, dLowMetalHit, dKickS3, dMetalHit, dMetalHit
	dc.b	dLowMetalHit, dSnareS3, dMetalHit, dLowMetalHit, dKickS3, $0C, dMetalHit, $06, dMetalHit, dLowMetalHit, dSnareS3, dMetalHit
	dc.b	dLowMetalHit, dLowMetalHit, dKickS3, dMetalHit, dMetalHit, dLowMetalHit, dSnareS3, dMetalHit, dLowMetalHit, dKickS3, $0C, dSnareS3
	dc.b	$12
	smpsPan             panLeft, $00
	dc.b	dHighTom, $04, dHighTom, dHighTom
	smpsPan             panCenter, $00
	dc.b	dMidTomS3, $06
	smpsPan             panRight, $00
	dc.b	dLowTomS3
	smpsPan             panCenter, $00
	dc.b	dKickS3, dMetalHit, dMetalHit, dLowMetalHit, dSnareS3, dMetalHit, dLowMetalHit, dKickS3, $0C, dMetalHit, $06, dMetalHit
	dc.b	dLowMetalHit, dSnareS3, dMetalHit, dLowMetalHit, dLowMetalHit, dKickS3, dMetalHit, dMetalHit, dLowMetalHit, dSnareS3, dMetalHit, dLowMetalHit
	dc.b	dKickS3, $0C, dMetalHit, $06, dMetalHit, dLowMetalHit, dSnareS3, dMetalHit, dLowMetalHit, dLowMetalHit, dKickS3, dMetalHit
	dc.b	dMetalHit, dLowMetalHit, dSnareS3, dMetalHit, dLowMetalHit, dKickS3, $0C, dMetalHit, $06, dMetalHit, dLowMetalHit, dSnareS3
	dc.b	dMetalHit, dLowMetalHit, dLowMetalHit, dKickS3, $12, dSnareS3, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $12
	dc.b	dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dKickS3, $18, dSnareS3, $12, dKickS3, $0C, dKickS3
	dc.b	dKickS3, $06, dSnareS3, $18, dKickS3, dSnareS3, $12, dKickS3, $0C, dKickS3, dKickS3, $06
	dc.b	dSnareS3, $18, dKickS3, dSnareS3, $12, dKickS3, $0C, dKickS3, dKickS3, $06, dSnareS3, $18
	dc.b	dKickS3, dSnareS3, $12, dKickS3, $0C, dKickS3, dKickS3, $06, dSnareS3, dSnareS3, $0C, dSnareS3
	dc.b	$06, dKickS3, $18, dSnareS3, $12, dKickS3, $0C, dKickS3, dKickS3, $06, dSnareS3, $18
	dc.b	dKickS3, dSnareS3, $12, dKickS3, $0C, dKickS3, dKickS3, $06, dSnareS3, $18, dKickS3, dSnareS3
	dc.b	$12, dKickS3, $0C, dKickS3, dKickS3, $06, dSnareS3, $18, dSnareS3, $06, dSnareS3, $0C
	dc.b	dSnareS3, $06, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $06, dSnareS3, $12
	dc.b	dSnareS3, $06, dSnareS3, dSnareS3, $04, nRst, $02
	smpsJump            Snd_ProtoCNZ2_DAC

; FM1 Data
Snd_ProtoCNZ2_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $06
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	dc.b	nCs4, $04, nRst, $08, nCs4, $04, nRst, $08, nBb3, $10, nRst, $02
	dc.b	nC4, $04, nRst, $08, nC4, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b	nA3, $04, nRst, $02, nA3, $0A, nRst, $02, nCs4, $04, nRst, $08
	dc.b	nCs4, $04, nRst, $08, nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nF3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nA3, $04, nRst, $02, nA3, $04, nRst, $08, nA3, $04, nRst, $02
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $08, nG4, $10, nRst, $02
	dc.b	nA4, $04, nRst, $08, nA4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b	nFs4, $04, nRst, $02, nFs4, $0A, nRst, $02, nBb4, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $08, nG4, $10, nRst, $02, nA4, $04, nRst, $08
	dc.b	nA2, $04, nRst, $02, nC3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nA3, $04, nRst, $02, nD4, $04, nRst, $02, nFs4, $04, nRst, $02
	dc.b	nA4, $04, nRst, $02, nC4, $10, nRst, $02, nC4, $04, nRst, $02
	dc.b	nE4, $10, nRst, $02, nC4, $04, nRst, $26, nC4, $0A, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $02, nBb3, $04, nRst, $08
	dc.b	nA3, $04, nRst, $14, nBb3, $0A, nRst, $02, nC4, $10, nRst, $02
	dc.b	nC4, $04, nRst, $02, nE4, $10, nRst, $02, nC4, $04, nRst, $26
	dc.b	nC4, $0A, nRst, $02, nBb3, $04, nRst, $02, nBb3, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $08, nA3, $04, nRst, $14, nBb3, $0A, nRst, $02
	dc.b	nC4, $10, nRst, $02, nC4, $04, nRst, $02, nE4, $10, nRst, $02
	dc.b	nC4, $04, nRst, $26, nC4, $0A, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $02, nBb3, $04, nRst, $08, nA3, $04, nRst, $14
	dc.b	nBb3, $0A, nRst, $02, nC4, $10, nRst, $02, nC4, $04, nRst, $02
	dc.b	nE4, $10, nRst, $02, nC4, $04, nRst, $26, nC4, $0A, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $02, nBb3, $04, nRst, $2C
	smpsSetvoice        $20
	smpsDetune          $00
	smpsModSet          $0A, $01, $00, $06
	smpsPan             panLeft, $00
	dc.b	nC3, $16, nRst, $02, nD3, $10, nRst, $02, nEb3, $04, nRst, $08
	dc.b	nEb3, $04, nRst, $02, nD3, $0A, nRst, $02, nEb3, $0A, nRst, $02
	dc.b	nC3, $0A, nRst, $02, nBb2, $28, nRst, $02, nD3, $04, nRst, $08
	dc.b	nBb2, $04, nRst, $02, nD3, $0A, nRst, $02, nG3, $0A, nRst, $02
	dc.b	nBb3, $0A, nRst, $02, nC3, $16, nRst, $02, nD3, $10, nRst, $02
	dc.b	nEb3, $04, nRst, $08, nEb3, $04, nRst, $02, nD3, $0A, nRst, $02
	dc.b	nEb3, $0A, nRst, $02, nC3, $0A, nRst, $02, nBb2, $16, nRst, $02
	dc.b	nC3, $10, nRst, $02, nD3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nBb2, $0A, nRst, $02, nD3, $0A, nRst, $02, nF3, $0A, nRst, $02
	dc.b	nC3, $16, nRst, $02, nD3, $10, nRst, $02, nEb3, $04, nRst, $08
	dc.b	nEb3, $04, nRst, $02, nD3, $0A, nRst, $02, nEb3, $0A, nRst, $02
	dc.b	nC3, $0A, nRst, $02, nBb2, $16, nRst, $02, nC3, $10, nRst, $02
	dc.b	nD3, $04, nRst, $08, nBb2, $04, nRst, $02, nD3, $0A, nRst, $02
	dc.b	nG3, $0A, nRst, $02, nBb3, $0A, nRst, $02, nC3, $16, nRst, $02
	dc.b	nD3, $10, nRst, $02, nEb3, $04, nRst, $08, nEb3, $04, nRst, $02
	dc.b	nD3, $0A, nRst, $02, nEb3, $0A, nRst, $02, nF3, $0A, nRst, $02
	dc.b	nG3, $0A, nRst, $02, nF3, $04, nRst, $02, nG3, $04, nRst, $20
	dc.b	nFs3, $02, nG3, nRst, $08, nF3, $04, nRst, $02, nG3, $0A, nRst
	dc.b	$02, nF3, $0A, nRst, $02
	smpsSetvoice        $06
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panCenter, $00
	dc.b	nBb3, $06, nBb3, nBb3, nBb3, nRst, $0C, nD4, $12, nEb4, $06, nRst
	dc.b	nEb4, nD4, nRst, $12, nC4, $06, nC4, nC4, nC4, nRst, $0C, nBb3
	dc.b	$06, nC4, nRst, nD4, $12, nBb3, $06, nRst, nAb3, nRst, nG3, nG3
	dc.b	nG3, nG3, nRst, $0C, nD4, $12, nEb4, $06, nRst, nEb4, nD4, nRst
	dc.b	$12
	smpsSetvoice        $21
	smpsDetune          $01
	smpsModSet          $0A, $01, $06, $06
	dc.b	nAb4, $18, nAb4, $12, nG4, $06, nRst
	smpsSetvoice        $06
	smpsDetune          $01
	smpsModSet          $0A, $01, $03, $06
	dc.b	nAb3, nRst, nF3, nAb3, nRst, nC4, nRst, nBb3, nBb3, nBb3, nBb3, nRst
	dc.b	$0C, nD4, $12, nEb4, $06, nRst, nEb4, nD4, nRst, $12, nC4, $06
	dc.b	nC4, nC4, nC4, nRst, $0C, nBb3, $06, nC4, nRst, nD4, $12, nBb3
	dc.b	$06, nRst, nAb3, nRst, nG3, nG3, nG3, nG3, nRst, $0C, nD4, $12
	dc.b	nEb4, $06, nRst, nEb4, nD4, nRst, $12
	smpsSetvoice        $21
	smpsDetune          $01
	smpsModSet          $0A, $01, $06, $06
	dc.b	nA3, $06, nA3, nRst, nA3, nA3, nRst, nA3, nA3, nRst, nA3, nA3
	dc.b	$0C, nG3, $02, nF3, nEb3, nD3, nC3, nBb2, nA2, nRst, $0A
	smpsJump            Snd_ProtoCNZ2_FM1

; FM2 Data
Snd_ProtoCNZ2_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $06
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	dc.b	nBb3, $04, nRst, $08, nBb3, $04, nRst, $08, nG3, $10, nRst, $02
	dc.b	nA3, $04, nRst, $08, nA3, $04, nRst, $08, nA3, $04, nRst, $08
	dc.b	nFs3, $04, nRst, $02, nFs3, $0A, nRst, $02, nBb3, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nG3, $10, nRst, $02, nA3, $04, nRst, $08
	dc.b	nA2, $04, nRst, $02, nC3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nFs3, $04, nRst, $02, nFs3, $04, nRst, $08, nFs3, $04, nRst, $02
	dc.b	nFs4, $04, nRst, $08, nFs4, $04, nRst, $08, nEb4, $10, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $02, nD4, $0A, nRst, $02, nFs4, $04, nRst, $08
	dc.b	nFs4, $04, nRst, $08, nEb4, $10, nRst, $02, nF4, $04, nRst, $08
	dc.b	nF2, $04, nRst, $02, nA2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b	nFs3, $04, nRst, $02, nA3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nFs4, $04, nRst, $02, nE3, $10, nRst, $02, nE3, $04, nRst, $02
	dc.b	nG3, $10, nRst, $02, nE3, $04, nRst, $08
	smpsSetvoice        $06
	smpsDetune          $01
	smpsModSet          $08, $01, $0A, $03
	dc.b	nC4, $04, nRst, $02, nC5, $10, nRst, $08
	smpsSetvoice        $06
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	dc.b	nE3, $0A, nRst, $02, nD3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b	nD3, $04, nRst, $08, nD3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $08, nC3, $04, nRst, $14, nD3, $0A, nRst, $02
	dc.b	nE3, $10, nRst, $02, nE3, $04, nRst, $02, nG3, $10, nRst, $02
	dc.b	nE3, $04, nRst, $08
	smpsSetvoice        $06
	smpsDetune          $01
	smpsModSet          $08, $01, $0A, $03
	dc.b	nC4, $04, nRst, $02, nC5, $10, nRst, $08
	smpsSetvoice        $06
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	dc.b	nE3, $0A, nRst, $02, nD3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b	nD3, $04, nRst, $08, nD3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $08, nC3, $04, nRst, $14, nD3, $0A, nRst, $02
	dc.b	nE3, $10, nRst, $02, nE3, $04, nRst, $02, nG3, $10, nRst, $02
	dc.b	nE3, $04, nRst, $08
	smpsSetvoice        $06
	smpsDetune          $01
	smpsModSet          $08, $01, $0A, $03
	dc.b	nC4, $04, nRst, $02, nC5, $10, nRst, $08
	smpsSetvoice        $06
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	dc.b	nE3, $0A, nRst, $02, nD3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b	nD3, $04, nRst, $08, nD3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $08, nC3, $04, nRst, $14, nD3, $0A, nRst, $02
	dc.b	nE3, $10, nRst, $02, nE3, $04, nRst, $02, nG3, $10, nRst, $02
	dc.b	nE3, $04, nRst, $08
	smpsSetvoice        $06
	smpsDetune          $01
	smpsModSet          $08, $01, $0A, $03
	dc.b	nC4, $04, nRst, $02, nC5, $10, nRst, $08
	smpsSetvoice        $06
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	dc.b	nE3, $0A, nRst, $02, nD3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b	nD3, $04, nRst, $08, nD3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $1A, nA2, $04, nRst, $02, nBb2, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02
	smpsSetvoice        $20
	smpsDetune          $00
	smpsModSet          $0A, $01, $00, $06
	smpsPan             panRight, $00
	dc.b	nAb2, $16, nRst, $02, nBb2, $10, nRst, $02, nC3, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nBb2, $0A, nRst, $02, nC3, $0A, nRst, $02
	dc.b	nAb2, $0A, nRst, $02, nG2, $28, nRst, $02, nBb2, $04, nRst, $08
	dc.b	nG2, $04, nRst, $02, nBb2, $0A, nRst, $02, nD3, $0A, nRst, $02
	dc.b	nG3, $0A, nRst, $02, nAb2, $16, nRst, $02, nBb2, $10, nRst, $02
	dc.b	nC3, $04, nRst, $08, nC3, $04, nRst, $02, nBb2, $0A, nRst, $02
	dc.b	nC3, $0A, nRst, $02, nAb2, $0A, nRst, $02, nG2, $16, nRst, $02
	dc.b	nAb2, $10, nRst, $02, nBb2, $04, nRst, $08, nBb2, $04, nRst, $02
	dc.b	nG2, $0A, nRst, $02, nBb2, $0A, nRst, $02, nD3, $0A, nRst, $02
	dc.b	nAb2, $16, nRst, $02, nBb2, $10, nRst, $02, nC3, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nBb2, $0A, nRst, $02, nC3, $0A, nRst, $02
	dc.b	nAb2, $0A, nRst, $02, nG2, $16, nRst, $02, nAb2, $10, nRst, $02
	dc.b	nBb2, $04, nRst, $08, nG2, $04, nRst, $02, nBb2, $0A, nRst, $02
	dc.b	nD3, $0A, nRst, $02, nG3, $0A, nRst, $02, nAb2, $16, nRst, $02
	dc.b	nBb2, $10, nRst, $02, nC3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b	nBb2, $0A, nRst, $02, nC3, $0A, nRst, $02, nD3, $0A, nRst, $02
	dc.b	nAb2, $0A, nRst, $02, nAb2, $04, nRst, $02, nAb2, $04, nRst, $20
	dc.b	nD3, $04, nRst, $08, nD3, $04, nRst, $02, nD3, $0A, nRst, $02
	dc.b	nD3, $0A, nRst, $02
	smpsSetvoice        $06
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	smpsPan             panCenter, $00
	dc.b	nG3, $06, nG3, nG3, nG3, nRst, $0C, nF3, $12, nG3, $06, nRst
	dc.b	nG3, nF3, nRst, $12, nAb3, $06, nAb3, nAb3, nAb3, nRst, $0C, nF3
	dc.b	$06, nAb3, nRst, nBb3, $12, nF3, $06, nRst, nEb3, nRst, nEb3, nEb3
	dc.b	nEb3, nEb3, nRst, $0C, nF3, $12, nG3, $06, nRst, nG3, nF3, nRst
	dc.b	$12
	smpsSetvoice        $21
	smpsDetune          $FF
	smpsModSet          $0A, $01, $06, $06
	dc.b	nC4, $18, nC4, $12, nBb3, $06, nRst
	smpsSetvoice        $06
	smpsDetune          $FF
	smpsModSet          $0A, $01, $03, $06
	dc.b	nF3, nRst, nCs3, nF3, nRst, nAb3, nRst, nG3, nG3, nG3, nG3, nRst
	dc.b	$0C, nF3, $12, nG3, $06, nRst, nG3, nF3, nRst, $12, nAb3, $06
	dc.b	nAb3, nAb3, nAb3, nRst, $0C, nF3, $06, nAb3, nRst, nBb3, $12, nF3
	dc.b	$06, nRst, nEb3, nRst, nEb3, nEb3, nEb3, nEb3, nRst, $0C, nF3, $12
	dc.b	nG3, $06, nRst, nG3, nF3, nRst, $12
	smpsSetvoice        $21
	smpsDetune          $FF
	smpsModSet          $0A, $01, $06, $06
	dc.b	nEb3, $06, nEb3, nRst, nEb3, nEb3, nRst, nEb3, nEb3, nRst, nEb3, nEb3
	dc.b	$0C, nD3, $02, nC3, nBb2, nA2, nG2, nF2, nEb2, nRst, $0A
	smpsJump            Snd_ProtoCNZ2_FM2

; FM3 Data
Snd_ProtoCNZ2_FM3:
	smpsPan             panLeft, $00

Snd_ProtoCNZ2_Jump01:
	smpsSetvoice        $0D
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $04
	dc.b	nFs3, $04, nRst, $08, nFs3, $04, nRst, $08, nEb3, $10, nRst, $02
	dc.b	nF3, $04, nRst, $08, nF3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b	nD3, $04, nRst, $02, nD3, $0A, nRst, $02, nFs3, $04, nRst, $08
	dc.b	nFs3, $04, nRst, $08, nEb3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b	nF2, $04, nRst, $02, nA2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nA3, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b	nCs4, $04, nRst, $08, nCs4, $04, nRst, $08, nBb3, $10, nRst, $02
	dc.b	nC4, $04, nRst, $08, nC4, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b	nA3, $04, nRst, $02, nA3, $0A, nRst, $02, nCs4, $04, nRst, $08
	dc.b	nCs4, $04, nRst, $08, nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nC2, $04, nRst, $02, nF2, $04, nRst, $02, nA2, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nFs3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02
	smpsSetvoice        $03
	smpsDetune          $FE
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, nE4, nRst, $08, nF4, $04, nRst, $08, nG4, $16, nRst, $14
	dc.b	nE4, $04, nRst, $02, nF4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $02, nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $02, nBb4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nG4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b	nEb4, $02, nE4, nRst, $08, nF4, $04, nRst, $08, nG4, $16, nRst
	dc.b	$14, nEb5, $02, nE5, $04, nD5, nRst, $08, nC5, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $02, nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $02, nBb4, $08, nA4, $02
	dc.b	nG4, nF4, nE4, nD4, nC4, nBb3, nRst, nG4, $04, nRst, $08, nF4
	dc.b	$04, nRst, $08, nEb4, $02, nE4, nRst, $08, nF4, $04, nRst, $08
	dc.b	nG4, $16, nRst, $14, nE4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $08, nBb4, $04, nRst, $02, nBb4, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b	nBb4, $04, nRst, $08, nA4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $08, nEb4, $02, nE4, nRst, $08, nF4, $04, nRst
	dc.b	$08, nG4, $16, nRst, $14, nEb5, $02, nE5, $04, nD5, nRst, $08
	dc.b	nC5, $04, nRst, $08, nC5, $04, nRst, $02, nF5, $04, nRst, $08
	dc.b	nC5, $04, nRst, $08, nF5, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nF5, $08, nE5, $02, nD5, nC5, nBb4, nA4, nG4, nF4, nRst, $08
	smpsSetvoice        $21
	smpsDetune          $01
	smpsModSet          $0A, $01, $06, $06
	smpsPan             panCenter, $00
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nEb4, $06, nD4, nEb4, nF4, nRst, nD4, nRst, nBb3, $2A, nEb4, $0C
	dc.b	nD4, $06, nD4, nRst, nD4, nRst, nBb3, nRst, nF3, $0C, nF3, $06
	dc.b	nG3, $0C, nBb3, nD4, nEb4, $06, nD4, nEb4, nF4, nRst, nD4, nRst
	dc.b	nBb3, $2A, nEb4, $0C, nD4, $06, nC4, nD4, nEb4, $0C, nD4, $06
	dc.b	nEb4, nF4, $0C, nEb4, $06, nF4, nG4, $0C, nF4, $06, nG4, $0C
	dc.b	nEb4, $06, nD4, nEb4, nF4, nRst, nD4, nRst, nBb3, $2A, nEb4, $0C
	dc.b	nD4, $06, nD4, nRst, nD4, nRst, nBb3, nRst, nF3, $0C, nF3, $06
	dc.b	nG3, $0C, nBb3, nD4, nEb4, $06, nEb4, nRst, nEb4, nRst, nD4, nRst
	dc.b	nBb3, $36, nD4, $0C, nC4, $06, nD4, nRst, nEb4, nF4, nC5, $18
	dc.b	nBb4, $06, nRst
	smpsSetvoice        $08
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panLeft, $00
	dc.b	nF4, nG4, nAb4, nBb4, nRst, nC5, nRst, nEb5, $0C, nD5, $06, nBb4
	dc.b	$36, nBb4, $06, nRst, nC5, nRst, nEb5, $0C, nD5, $06, nEb5, nRst
	dc.b	nF5, $12, nD5, $06, nRst, nC5, nRst, nBb4, nRst, nC5, nRst, nEb5
	dc.b	$0C, nD5, $06, nBb4, $1E, nRst, $06, nC4, nEb4, nFs4, nAb4, nFs4
	dc.b	nAb4, nAb4, nAb4, nFs4, nRst, nG4, nRst, nC5, nRst, nAb4, nC5, nRst
	dc.b	nF5, nRst, nBb4, nRst, nC5, nRst, nEb5, $0C, nD5, $06, nBb4, $36
	dc.b	nBb4, $06, nRst, nC5, nRst, nEb5, $0C, nD5, $06, nEb5, nRst, nF5
	dc.b	$12, nD5, $06, nRst, nC5, nRst, nBb4, nRst, nC5, nRst, nEb5, $0C
	dc.b	nD5, $06, nBb4, $1E, nRst, $06, nC4, nEb4, nFs4, nF5, nF5, nRst
	dc.b	nF5, nF5, nRst, nF5, nF5, nRst, nF5, nF5, nRst, $0C
	smpsSetvoice        $0D
	smpsDetune          $01
	smpsModSet          $0F, $01, $06, $04
	dc.b	nEb3, $06, nF3, $0C
	smpsJump            Snd_ProtoCNZ2_Jump01

; FM4 Data
Snd_ProtoCNZ2_FM4:
	smpsSetvoice        $14
	smpsDetune          $00
	smpsModSet          $02, $01, $01, $02
	dc.b	nFs1, $04, nRst, $08, nFs1, $04, nRst, $08, nEb1, $10, nRst, $02
	dc.b	nF1, $04, nRst, $08, nF1, $04, nRst, $08, nF1, $04, nRst, $08
	dc.b	nD1, $04, nRst, $02, nD1, $0A, nRst, $02, nFs1, $04, nRst, $08
	dc.b	nFs1, $04, nRst, $08, nEb1, $10, nRst, $02, nF1, $04, nRst, $08
	dc.b	nF1, $04, nRst, $02, nF1, $04, nRst, $02, nF1, $04, nRst, $02
	dc.b	nD1, $16, nRst, $02, nFs1, $04, nRst, $08, nFs1, $04, nRst, $08
	dc.b	nEb1, $10, nRst, $02, nF1, $04, nRst, $08, nF1, $04, nRst, $08
	dc.b	nF1, $04, nRst, $08, nD1, $04, nRst, $02, nD1, $0A, nRst, $02
	dc.b	nFs1, $04, nRst, $08, nFs1, $04, nRst, $08, nEb1, $10, nRst, $02
	dc.b	nF1, $04, nRst, $32, nC1, $10, nRst, $02, nG0, $16, nRst, $02
	dc.b	nC1, $04, nRst, $08, nC1, $04, nRst, $08, nC1, $04, nRst, $02
	dc.b	nG0, $0A, nRst, $02, nC1, $0A, nRst, $02, nBb0, $10, nRst, $02
	dc.b	nF0, $16, nRst, $02, nBb0, $04, nRst, $02, nBb0, $04, nRst, $08
	dc.b	nBb0, $04, nRst, $08, nF0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b	nC1, $10, nRst, $02, nG0, $16, nRst, $02, nC1, $04, nRst, $08
	dc.b	nC1, $04, nRst, $08, nC1, $04, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nC1, $0A, nRst, $02, nBb0, $10, nRst, $02, nF0, $16, nRst, $02
	dc.b	nBb0, $04, nRst, $02, nBb0, $04, nRst, $0E, nBb0, $04, nRst, $02
	dc.b	nF0, $0A, nRst, $02, nBb0, $0A, nRst, $02, nC1, $10, nRst, $02
	dc.b	nG0, $16, nRst, $02, nC1, $04, nRst, $08, nC1, $04, nRst, $08
	dc.b	nC1, $04, nRst, $02, nG0, $0A, nRst, $02, nC1, $0A, nRst, $02
	dc.b	nBb0, $10, nRst, $02, nF0, $16, nRst, $02, nBb0, $04, nRst, $02
	dc.b	nBb0, $04, nRst, $08, nBb0, $04, nRst, $08, nF0, $0A, nRst, $02
	dc.b	nBb0, $0A, nRst, $02, nC1, $10, nRst, $02, nG0, $16, nRst, $02
	dc.b	nC1, $04, nRst, $08, nC1, $04, nRst, $08, nC1, $04, nRst, $02
	dc.b	nG0, $0A, nRst, $02, nC1, $0A, nRst, $02, nBb0, $10, nRst, $02
	dc.b	nF0, $16, nRst, $02, nBb0, $04, nRst, $02, nBb0, $04, nRst, $08
	dc.b	nBb0, $04, nRst, $08, nBb0, $0A, nRst, $02, nF1, $0A, nRst, $02
	dc.b	nAb1, $16, nRst, $02, nEb1, $10, nRst, $02, nAb0, $1C, nRst, $02
	dc.b	nEb1, $0A, nRst, $02, nAb1, $0A, nRst, $02, nEb1, $16, nRst, $02
	dc.b	nBb0, $10, nRst, $02, nEb0, $1C, nRst, $02, nBb0, $0A, nRst, $02
	dc.b	nEb1, $0A, nRst, $02, nAb1, $16, nRst, $02, nEb1, $10, nRst, $02
	dc.b	nAb0, $1C, nRst, $02, nEb1, $0A, nRst, $02, nAb1, $0A, nRst, $02
	dc.b	nC1, $16, nRst, $02, nG0, $10, nRst, $02, nC1, $1C, nRst, $02
	dc.b	nG0, $0A, nRst, $02, nC1, $0A, nRst, $02, nAb1, $16, nRst, $02
	dc.b	nEb1, $10, nRst, $02, nAb0, $1C, nRst, $02, nEb1, $0A, nRst, $02
	dc.b	nAb1, $0A, nRst, $02, nEb1, $16, nRst, $02, nBb0, $10, nRst, $02
	dc.b	nEb0, $1C, nRst, $02, nBb0, $0A, nRst, $02, nEb1, $0A, nRst, $02
	dc.b	nAb1, $16, nRst, $02, nEb1, $10, nRst, $02, nAb0, $1C, nRst, $02
	dc.b	nEb1, $0A, nRst, $02, nAb1, $0A, nRst, $02, nBb0, $10, nRst, $02
	dc.b	nBb0, $04, nRst, $0E, nAb0, $04, nRst, $02, nBb0, $04, nRst, $08
	dc.b	nBb0, $10, nRst, $02, nBb0, $0A, nRst, $02, nF1, $0A, nRst, $02
	dc.b	nEb1, $10, nRst, $02, nBb0, $10, nRst, $02, nEb1, $10, nRst, $02
	dc.b	nEb1, $04, nRst, $08, nEb1, $04, nRst, $02, nEb1, $0A, nRst, $02
	dc.b	nBb1, $0A, nRst, $02, nAb1, $10, nRst, $02, nEb1, $10, nRst, $02
	dc.b	nAb1, $10, nRst, $02, nAb1, $04, nRst, $08, nAb1, $04, nRst, $02
	dc.b	nAb1, $0A, nRst, $02, nBb1, $0A, nRst, $02, nEb1, $10, nRst, $02
	dc.b	nBb0, $10, nRst, $02, nEb1, $10, nRst, $02, nEb1, $04, nRst, $08
	dc.b	nEb1, $04, nRst, $02, nBb0, $0A, nRst, $02, nEb1, $0A, nRst, $02
	dc.b	nEb1, $12, nEb1, $06, nRst, nEb1, nFs1, nEb1, nRst, nEb1, nCs1, $0C
	dc.b	nAb1, nCs1, nEb1, $10, nRst, $02, nBb0, $10, nRst, $02, nEb1, $10
	dc.b	nRst, $02, nEb1, $04, nRst, $08, nEb1, $04, nRst, $02, nEb1, $0A
	dc.b	nRst, $02, nBb1, $0A, nRst, $02, nAb1, $10, nRst, $02, nEb1, $10
	dc.b	nRst, $02, nAb1, $10, nRst, $02, nAb1, $04, nRst, $08, nAb1, $04
	dc.b	nRst, $02, nAb1, $0A, nRst, $02, nBb1, $0A, nRst, $02, nEb1, $10
	dc.b	nRst, $02, nBb0, $16, nRst, $02, nEb1, $04, nRst, $08, nEb1, $04
	dc.b	nRst, $08, nEb1, $04, nRst, $02, nBb0, $0A, nRst, $02, nEb1, $0A
	dc.b	nRst, $02, nB1, $12, nA1, nB1, nA1, $06, nB1, nRst, $1E
	smpsJump            Snd_ProtoCNZ2_FM4

; FM5 Data
Snd_ProtoCNZ2_FM5:
	smpsPan             panRight, $00
	dc.b	nRst, $01
	smpsDetune          $01

Snd_ProtoCNZ2_Jump00:
	smpsSetvoice        $0D
	smpsDetune          $FF
	smpsModSet          $0F, $01, $06, $04
	dc.b	nFs3, $04, nRst, $08, nFs3, $04, nRst, $08, nEb3, $10, nRst, $02
	dc.b	nF3, $04, nRst, $08, nF3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b	nD3, $04, nRst, $02, nD3, $0A, nRst, $02, nFs3, $04, nRst, $08
	dc.b	nFs3, $04, nRst, $08, nEb3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b	nF2, $04, nRst, $02, nA2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nA3, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b	nCs4, $04, nRst, $08, nCs4, $04, nRst, $08, nBb3, $10, nRst, $02
	dc.b	nC4, $04, nRst, $08, nC4, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b	nA3, $04, nRst, $02, nA3, $0A, nRst, $02, nCs4, $04, nRst, $08
	dc.b	nCs4, $04, nRst, $08, nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nC2, $04, nRst, $02, nF2, $04, nRst, $02, nA2, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nFs3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02
	smpsSetvoice        $03
	smpsDetune          $02
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, nE4, nRst, $08, nF4, $04, nRst, $08, nG4, $16, nRst, $14
	dc.b	nE4, $04, nRst, $02, nF4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $02, nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $02, nBb4, $04, nRst, $08
	dc.b	nA4, $04, nRst, $08, nG4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b	nEb4, $02, nE4, nRst, $08, nF4, $04, nRst, $08, nG4, $16, nRst
	dc.b	$14, nEb5, $02, nE5, $04, nD5, nRst, $08, nC5, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $02, nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $02, nBb4, $08, nA4, $02
	dc.b	nG4, nF4, nE4, nD4, nC4, nBb3, nRst, nG4, $04, nRst, $08, nF4
	dc.b	$04, nRst, $08, nEb4, $02, nE4, nRst, $08, nF4, $04, nRst, $08
	dc.b	nG4, $16, nRst, $14, nE4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $08, nBb4, $04, nRst, $02, nBb4, $04, nRst, $08
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b	nBb4, $04, nRst, $08, nA4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $08, nEb4, $02, nE4, nRst, $08, nF4, $04, nRst
	dc.b	$08, nG4, $16, nRst, $14, nEb5, $02, nE5, $04, nD5, nRst, $08
	dc.b	nC5, $04, nRst, $08, nC5, $04, nRst, $02, nF5, $04, nRst, $08
	dc.b	nC5, $04, nRst, $08, nF5, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b	nF5, $08, nE5, $02, nD5, nC5, nBb4, nA4, nG4, nF4, nRst, $08
	smpsSetvoice        $21
	smpsDetune          $FF
	smpsModSet          $0A, $01, $06, $06
	smpsPan             panCenter, $00
	dc.b	nRst, $04
	smpsFMAlterVol      $03
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nEb4, $06, nD4, nEb4, nF4, nRst, nD4, nRst, nBb3, $2A, nEb4, $0C
	dc.b	nD4, $06, nD4, nRst, nD4, nRst, nBb3, nRst, nF3, $0C, nF3, $06
	dc.b	nG3, $0C, nBb3, nD4, nEb4, $06, nD4, nEb4, nF4, nRst, nD4, nRst
	dc.b	nBb3, $2A, nEb4, $0C, nD4, $06, nC4, nD4, nEb4, $0C, nD4, $06
	dc.b	nEb4, nF4, $0C, nEb4, $06, nF4, nG4, $0C, nF4, $06, nG4, $0C
	dc.b	nEb4, $06, nD4, nEb4, nF4, nRst, nD4, nRst, nBb3, $2A, nEb4, $0C
	dc.b	nD4, $06, nD4, nRst, nD4, nRst, nBb3, nRst, nF3, $0C, nF3, $06
	dc.b	nG3, $0C, nBb3, nD4, nEb4, $06, nEb4, nRst, nEb4, nRst, nD4, nRst
	dc.b	nBb3, $36, nD4, $0C, nC4, $06, nD4, nRst, nEb4, nF4, nC5, $18
	dc.b	nBb4, $06, nRst, $02
	smpsSetvoice        $08
	smpsDetune          $FF
	smpsModSet          $0F, $01, $06, $06
	smpsPan             panRight, $00
	smpsFMAlterVol      $FB
	dc.b	nF4, $06, nG4, nAb4, nBb4, nRst, nC5, nRst, nEb5, $0C, nD5, $06
	dc.b	nBb4, $36, nBb4, $06, nRst, nC5, nRst, nEb5, $0C, nD5, $06, nEb5
	dc.b	nRst, nF5, $12, nD5, $06, nRst, nC5, nRst, nBb4, nRst, nC5, nRst
	dc.b	nEb5, $0C, nD5, $06, nBb4, $1E, nRst, $06, nC4, nEb4, nFs4, nAb4
	dc.b	nFs4, nAb4, nAb4, nAb4, nFs4, nRst, nG4, nRst, nC5, nRst, nAb4, nC5
	dc.b	nRst, nF5, nRst, nBb4, nRst, nC5, nRst, nEb5, $0C, nD5, $06, nBb4
	dc.b	$36, nBb4, $06, nRst, nC5, nRst, nEb5, $0C, nD5, $06, nEb5, nRst
	dc.b	nF5, $12, nD5, $06, nRst, nC5, nRst, nBb4, nRst, nC5, nRst, nEb5
	dc.b	$0C, nD5, $06, nBb4, $1E, nRst, $06, nC4, nEb4, nFs4, nF5, nF5
	dc.b	nRst, nF5, nF5, nRst, nF5, nF5, nRst, nF5, nF5, nRst, $0C
	smpsSetvoice        $0D
	smpsDetune          $FF
	smpsModSet          $0F, $01, $06, $04
	smpsFMAlterVol      $02
	dc.b	nEb3, $06, nF3, $0C
	smpsJump            Snd_ProtoCNZ2_Jump00

; PSG1 Data
Snd_ProtoCNZ2_PSG1:
	smpsPSGvoice        sTone_0A

Snd_ProtoCNZ2_Jump03:
	dc.b	nFs3, $04, nRst, $08, nFs3, $04, nRst, $08, nEb3, $10, nRst, $02
	dc.b	nF3, $04, nRst, $08, nF3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b	nD3, $04, nRst, $02, nD3, $0A, nRst, $02, nFs3, $04, nRst, $08
	dc.b	nFs3, $04, nRst, $08, nEb3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b	nF2, $04, nRst, $02, nA2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nA3, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b	nCs4, $04, nRst, $08, nCs4, $04, nRst, $08, nBb3, $10, nRst, $02
	dc.b	nC4, $04, nRst, $08, nC4, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b	nA3, $04, nRst, $02, nA3, $0A, nRst, $02, nCs4, $04, nRst, $08
	dc.b	nCs4, $04, nRst, $08, nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nC2, $04, nRst, $02, nF2, $04, nRst, $02, nA2, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nFs3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nC3, $04, nRst, $02, nC3, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $02, nE3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $08, nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nBb3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $02, nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nC3, $04, nRst, $02, nC3, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $02, nE3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $08, nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nBb3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nC3, $04, nRst, $02, nC3, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $02, nE3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $08, nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nBb3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $02, nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nC3, $04, nRst, $02, nC3, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $02, nE3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $08, nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nBb3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nAb4, $04, nRst, $02, nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b	nAb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb5, $04, nRst, $02
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb3, $04, nRst, $02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $08, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nG5, $04, nRst, $08, nBb5, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nAb4, $04, nRst, $02, nAb3, $04, nRst, $08
	dc.b	nAb3, $04, nRst, $02, nAb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $02, nD5, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b	nC5, $04, nRst, $1A, nG4, $0A, nRst, $02, nBb4, $04, nRst, $02
	dc.b	nBb4, $04, nRst, $02, nBb4, $0A, nRst, $02, nC5, $04, nRst, $02
	dc.b	nC5, $04, nRst, $02, nC5, $0A, nRst, $02, nD5, $04, nRst, $02
	dc.b	nD5, $0A, nRst, $02, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nAb4, $04, nRst, $02, nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b	nAb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb5, $04, nRst, $02
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb3, $04, nRst, $02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $08, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nG5, $04, nRst, $08, nBb5, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nAb4, $04, nRst, $02, nAb3, $04, nRst, $08
	dc.b	nAb3, $04, nRst, $02, nAb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $02, nD5, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b	nF5, $04, nRst, $08, nG5, $0A, nRst, $02, nF5, $04, nRst, $02
	dc.b	nG5, $04, nRst, $20, nFs5, $02, nG5, nRst, $08, nF5, $04, nRst
	dc.b	$02, nG5, $0A, nRst, $02, nF5, $0A, nRst, $02, nEb3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02, nEb3, $04, nRst
	dc.b	$08, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02, nEb3, $04, nRst
	dc.b	$02, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02, nEb3, $04, nRst
	dc.b	$02, nEb4, $04, nRst, $08, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb3, $04, nRst
	dc.b	$02, nAb4, $04, nRst, $02, nAb3, $04, nRst, $08, nAb4, $04, nRst
	dc.b	$02, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb4, $04, nRst
	dc.b	$02, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb4, $04, nRst
	dc.b	$08, nAb3, $04, nRst, $02, nAb4, $04, nRst, $02, nAb3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $02, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $08, nEb4, $04, nRst, $02, nEb3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02, nEb3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $08, nEb3, $04, nRst
	dc.b	$02, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02, nAb5, $18, nAb5
	dc.b	$12, nG5, $06, nRst, nAb4, nRst, nF4, nAb4, nRst, nC5, nRst, nEb3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $08, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $02, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $02, nEb4, $04, nRst, $08, nEb3, $04, nRst, $02, nEb4
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb3
	dc.b	$04, nRst, $02, nAb4, $04, nRst, $02, nAb3, $04, nRst, $08, nAb4
	dc.b	$04, nRst, $02, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb4
	dc.b	$04, nRst, $02, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb4
	dc.b	$04, nRst, $08, nAb3, $04, nRst, $02, nAb4, $04, nRst, $02, nAb3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nEb3, $04, nRst, $02, nEb4
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $08, nEb4, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $08, nEb3
	dc.b	$04, nRst, $02, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02, nB3
	dc.b	$04, nRst, $02, nB3, $04, nRst, $02, nB4, $04, nRst, $02, nB3
	dc.b	$04, nRst, $02, nB3, $04, nRst, $02, nB4, $04, nRst, $02, nB3
	dc.b	$04, nRst, $02, nB3, $04, nRst, $02, nB4, $04, nRst, $02, nB3
	dc.b	$04, nRst, $02, nB4, $04, nRst, $20
	smpsJump            Snd_ProtoCNZ2_Jump03

; PSG2 Data
Snd_ProtoCNZ2_PSG2:
	smpsPSGvoice        sTone_0A
	smpsDetune          $01

Snd_ProtoCNZ2_Jump02:
	dc.b	nFs3, $04, nRst, $08, nFs3, $04, nRst, $08, nEb3, $10, nRst, $02
	dc.b	nF3, $04, nRst, $08, nF3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b	nD3, $04, nRst, $02, nD3, $0A, nRst, $02, nFs3, $04, nRst, $08
	dc.b	nFs3, $04, nRst, $08, nEb3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b	nF2, $04, nRst, $02, nA2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nA3, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b	nCs4, $04, nRst, $08, nCs4, $04, nRst, $08, nBb3, $10, nRst, $02
	dc.b	nC4, $04, nRst, $08, nC4, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b	nA3, $04, nRst, $02, nA3, $0A, nRst, $02, nCs4, $04, nRst, $08
	dc.b	nCs4, $04, nRst, $08, nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nC2, $04, nRst, $02, nF2, $04, nRst, $02, nA2, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nFs3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nC3, $04, nRst, $02, nC3, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $02, nE3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $08, nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nBb3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $02, nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nC3, $04, nRst, $02, nC3, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $02, nE3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $08, nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nBb3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nC3, $04, nRst, $02, nC3, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $02, nE3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $08, nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nBb3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $02, nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b	nBb3, $04, nRst, $08, nC3, $04, nRst, $02, nC3, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $02, nE3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nC4, $04, nRst, $08, nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nBb3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $08, nA3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nAb4, $04, nRst, $02, nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b	nAb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb5, $04, nRst, $02
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb3, $04, nRst, $02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $08, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nG5, $04, nRst, $08, nBb5, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nAb4, $04, nRst, $02, nAb3, $04, nRst, $08
	dc.b	nAb3, $04, nRst, $02, nAb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $02, nD5, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b	nC5, $04, nRst, $1A, nG4, $0A, nRst, $02, nBb4, $04, nRst, $02
	dc.b	nBb4, $04, nRst, $02, nBb4, $0A, nRst, $02, nC5, $04, nRst, $02
	dc.b	nC5, $04, nRst, $02, nC5, $0A, nRst, $02, nD5, $04, nRst, $02
	dc.b	nD5, $0A, nRst, $02, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nAb4, $04, nRst, $02, nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b	nAb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb5, $04, nRst, $02
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb3, $04, nRst, $02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $08, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nG5, $04, nRst, $08, nBb5, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nAb4, $04, nRst, $02, nAb3, $04, nRst, $08
	dc.b	nAb3, $04, nRst, $02, nAb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $02, nD5, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b	nF5, $04, nRst, $08, nG5, $0A, nRst, $02, nF5, $04, nRst, $02
	dc.b	nG5, $04, nRst, $20, nFs5, $02, nG5, nRst, $08, nF5, $04, nRst
	dc.b	$02, nG5, $0A, nRst, $02, nF5, $0A, nRst, $02, nEb3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02, nEb3, $04, nRst
	dc.b	$08, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02, nEb3, $04, nRst
	dc.b	$02, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02, nEb3, $04, nRst
	dc.b	$02, nEb4, $04, nRst, $08, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb3, $04, nRst
	dc.b	$02, nAb4, $04, nRst, $02, nAb3, $04, nRst, $08, nAb4, $04, nRst
	dc.b	$02, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb4, $04, nRst
	dc.b	$02, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb4, $04, nRst
	dc.b	$08, nAb3, $04, nRst, $02, nAb4, $04, nRst, $02, nAb3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $02, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $08, nEb4, $04, nRst, $02, nEb3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02, nEb3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $08, nEb3, $04, nRst
	dc.b	$02, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02, nC5, $18, nC5
	dc.b	$12, nBb4, $06, nRst, nF4, nRst, nCs4, nF4, nRst, nAb4, nRst, nEb3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $08, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $02, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $02, nEb4, $04, nRst, $08, nEb3, $04, nRst, $02, nEb4
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb3
	dc.b	$04, nRst, $02, nAb4, $04, nRst, $02, nAb3, $04, nRst, $08, nAb4
	dc.b	$04, nRst, $02, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb4
	dc.b	$04, nRst, $02, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nAb4
	dc.b	$04, nRst, $08, nAb3, $04, nRst, $02, nAb4, $04, nRst, $02, nAb3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nEb3, $04, nRst, $02, nEb4
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $08, nEb4, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nEb4, $04, nRst, $08, nEb3
	dc.b	$04, nRst, $02, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02, nB3
	dc.b	$04, nRst, $02, nB3, $04, nRst, $02, nB4, $04, nRst, $02, nB3
	dc.b	$04, nRst, $02, nB3, $04, nRst, $02, nB4, $04, nRst, $02, nB3
	dc.b	$04, nRst, $02, nB3, $04, nRst, $02, nB4, $04, nRst, $02, nB3
	dc.b	$04, nRst, $02, nB4, $04, nRst, $20
	smpsJump            Snd_ProtoCNZ2_Jump02

; PSG3 Data
Snd_ProtoCNZ2_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60

Snd_ProtoCNZ2_Loop00:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $0D, Snd_ProtoCNZ2_Loop00
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $36

Snd_ProtoCNZ2_Loop01:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $0D, Snd_ProtoCNZ2_Loop01
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $36

Snd_ProtoCNZ2_Loop02:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsLoop            $01, $08, Snd_ProtoCNZ2_Loop02

Snd_ProtoCNZ2_Loop03:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $06, Snd_ProtoCNZ2_Loop03
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $60, $0C
	smpsJump            Snd_ProtoCNZ2_PSG3
