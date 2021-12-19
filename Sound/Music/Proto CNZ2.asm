ProtoCNZ2_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     ProtoCNZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       ProtoCNZ2_DAC
	smpsHeaderFM        ProtoCNZ2_FM1,	$0C, $13
	smpsHeaderFM        ProtoCNZ2_FM2,	$0C, $13
	smpsHeaderFM        ProtoCNZ2_FM3,	$18, $18
	smpsHeaderFM        ProtoCNZ2_FM4,	$18, $0C
	smpsHeaderFM        ProtoCNZ2_FM5,	$0C, $18
	smpsHeaderPSG       ProtoCNZ2_PSG1,	$F4, $05, $00, sTone_0C
	smpsHeaderPSG       ProtoCNZ2_PSG2,	$F4, $05, $00, sTone_0C
	smpsHeaderPSG       ProtoCNZ2_PSG3,	$00, $03, $00, sTone_0C

; DAC Data
ProtoCNZ2_DAC:
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
	smpsJump            ProtoCNZ2_DAC

; FM1 Data
ProtoCNZ2_FM1:
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
	smpsJump            ProtoCNZ2_FM1

; FM2 Data
ProtoCNZ2_FM2:
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
	smpsJump            ProtoCNZ2_FM2

; FM3 Data
ProtoCNZ2_FM3:
	smpsPan             panLeft, $00

ProtoCNZ2_Jump01:
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
	smpsJump            ProtoCNZ2_Jump01

; FM4 Data
ProtoCNZ2_FM4:
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
	smpsJump            ProtoCNZ2_FM4

; FM5 Data
ProtoCNZ2_FM5:
	smpsPan             panRight, $00
	dc.b	nRst, $01
	smpsDetune          $01

ProtoCNZ2_Jump00:
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
	smpsJump            ProtoCNZ2_Jump00

; PSG1 Data
ProtoCNZ2_PSG1:
	smpsPSGvoice        sTone_0A

ProtoCNZ2_Jump03:
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
	smpsJump            ProtoCNZ2_Jump03

; PSG2 Data
ProtoCNZ2_PSG2:
	smpsPSGvoice        sTone_0A
	smpsDetune          $01

ProtoCNZ2_Jump02:
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
	smpsJump            ProtoCNZ2_Jump02

; PSG3 Data
ProtoCNZ2_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60

ProtoCNZ2_Loop00:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $0D, ProtoCNZ2_Loop00
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $36

ProtoCNZ2_Loop01:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $0D, ProtoCNZ2_Loop01
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $36

ProtoCNZ2_Loop02:
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
	smpsLoop            $01, $08, ProtoCNZ2_Loop02

ProtoCNZ2_Loop03:
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
	smpsLoop            $01, $06, ProtoCNZ2_Loop03
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
	smpsJump            ProtoCNZ2_PSG3

ProtoCNZ2_Voices:
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

