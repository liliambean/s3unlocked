ProtoLBZ2_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     ProtoLBZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       ProtoLBZ2_DAC
	smpsHeaderFM        ProtoLBZ2_FM1,	$0C, $1F
	smpsHeaderFM        ProtoLBZ2_FM2,	$0C, $1F
	smpsHeaderFM        ProtoLBZ2_FM3,	$18, $16
	smpsHeaderFM        ProtoLBZ2_FM4,	$18, $0E
	smpsHeaderFM        ProtoLBZ2_FM5,	$0C, $1A
	smpsHeaderPSG       ProtoLBZ2_PSG1,	$F4, $04, $00, sTone_0C
	smpsHeaderPSG       ProtoLBZ2_PSG2,	$F4, $04, $00, sTone_0C
	smpsHeaderPSG       ProtoLBZ2_PSG3,	$00, $04, $00, sTone_0C

; DAC Data
ProtoLBZ2_DAC:
	dc.b	dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, dSnareS3, $12, dSnareS3, $18, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, $0C, dSnareS3, $06, dSnareS3, dKickS3, $18, dSnareS3, $12, dSnareS3
	dc.b	$06, dKickS3, dSnareS3, $12, dSnareS3, $0C, dMidTomS3, $06, dMidTomS3, dKickS3, $18, dSnareS3
	dc.b	$0C, dLowTomS3, $06, dLowTomS3, dKickS3, $18, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dKickS3
	dc.b	$18, dSnareS3, $12, dSnareS3, $06, dKickS3, dSnareS3, $12, dSnareS3, $18, dKickS3, dSnareS3
	dc.b	dKickS3, dSnareS3, $0C, dSnareS3, $06, dSnareS3, dKickS3, $18, dSnareS3, $12, dSnareS3, $06
	dc.b	dKickS3, dSnareS3, $12, dSnareS3, $0C, dMidTomS3, $06, dMidTomS3, dKickS3, $18, dSnareS3, $0C
	dc.b	dLowTomS3, $06, dLowTomS3, dKickS3, $18, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dKickS3, $18
	dc.b	dSnareS3, $12, dSnareS3, $06, dKickS3, dSnareS3, $12, dSnareS3, $18, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, $0C, dSnareS3, $06, dSnareS3, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3
	dc.b	dSnareS3, $12, dSnareS3, $0C, dMidTomS3, $06, dMidTomS3, dKickS3, $18, dSnareS3, $0C, dLowTomS3
	dc.b	$06, dLowTomS3, dKickS3, $18, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dKickS3, $18, dSnareS3
	dc.b	$12, dSnareS3, $06, dKickS3, dSnareS3, $12, dSnareS3, $18, dKickS3, dSnareS3, dKickS3, dSnareS3
	dc.b	$0C, dSnareS3, $06, dSnareS3, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, dSnareS3
	dc.b	$12, dSnareS3, $0C, dMidTomS3, $06, dMidTomS3, dKickS3, $18, dSnareS3, $0C, dLowTomS3, $06
	dc.b	dLowTomS3, dKickS3, $18, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dKickS3, $18, dSnareS3, $12
	dc.b	dSnareS3, $06, dKickS3, dSnareS3, $12, dSnareS3, $18, dKickS3, dSnareS3, dKickS3, dSnareS3, $0C
	dc.b	dSnareS3, $06, dSnareS3, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, dSnareS3, $12
	dc.b	dSnareS3, $18, dKickS3, dSnareS3, dKickS3, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dKickS3, $18
	dc.b	dSnareS3, $12, dSnareS3, $06, dKickS3, dSnareS3, $12, dSnareS3, $18, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, $0C, dSnareS3, $06, dSnareS3, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3
	dc.b	dSnareS3, $12, dSnareS3, $18, dKickS3, dSnareS3, dKickS3, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3
	dc.b	dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, dSnareS3, $12, dSnareS3, $18, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, $0C, dSnareS3, $06, dSnareS3, dKickS3, $18, dSnareS3, $12, dSnareS3
	dc.b	$06, dKickS3, dSnareS3, $12, dSnareS3, $18, dKickS3, dSnareS3, dKickS3, dSnareS3, $0C, dSnareS3
	dc.b	$06, dSnareS3, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, dSnareS3, $12, dSnareS3
	dc.b	$18, dKickS3, dSnareS3, dKickS3, dSnareS3, $0C, dSnareS3, $06, dSnareS3, dSnareS3, $0C, dSnareS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, $18, dKickS3, dSnareS3, $12, dSnareS3, $06, dKickS3
	dc.b	dSnareS3, $12, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dKickS3, $18, dSnareS3, $12, dSnareS3
	dc.b	$06, dKickS3, dSnareS3, $12, dSnareS3, $18, dKickS3, dSnareS3, dKickS3, dSnareS3, $0C, dSnareS3
	dc.b	$06, dSnareS3, dKickS3, $18, dSnareS3, $12, dSnareS3, $06, dKickS3, dSnareS3, $12, dSnareS3
	dc.b	$18, dKickS3, dSnareS3, dKickS3, $0C, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	dc.b	$06		; Fred: remove trailing pause from proto LBZ2 music
;	dc.b	$08		;
	smpsJump            ProtoLBZ2_DAC

; FM1 Data
ProtoLBZ2_FM1:
	smpsSetvoice        $04
	smpsDetune          $01
	smpsModSet          $0A, $01, $00, $06
	smpsPan             panRight, $00

ProtoLBZ2_Jump03:
	dc.b	nE3, $04, nRst, $02, nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nA3, $04, nRst, $02, nG3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nE4, $04, nRst, $02, nC4, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b	nA4, $10, nRst, $02, nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b	nE3, $04, nRst, $02, nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nA3, $04, nRst, $02, nG3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nE4, $04, nRst, $02, nC4, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b	nA4, $10, nRst, $02, nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b	nE3, $04, nRst, $02, nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nA3, $04, nRst, $02, nG3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nE4, $04, nRst, $02, nC4, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b	nA4, $10, nRst, $02, nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nD3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nD3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nG3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nD3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nB3, $04, nRst, $02, nG3, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nG4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b	nB4, $10, nRst, $02, nG4, $04, nRst, $14, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nEb4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nEb3, $04, nRst, $08, nG4, $10, nRst, $02
	dc.b	nEb4, $04, nRst, $08, nC4, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nEb4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nEb3, $04, nRst, $08, nG4, $10, nRst, $02
	dc.b	nEb4, $04, nRst, $08, nC4, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nEb4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nEb3, $04, nRst, $08, nG4, $10, nRst, $02
	dc.b	nEb4, $04, nRst, $08, nC4, $04, nRst, $08, nBb2, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nF3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nF3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nF3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nF4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nF3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $02, nC4, $04, nRst, $08, nA4, $10, nRst, $02
	dc.b	nF4, $04, nRst, $14, nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nBb3, $04, nRst, $14, nF4, $0A, nRst, $02
	dc.b	nD4, $10, nRst, $02, nF3, $16, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $14
	dc.b	nG4, $0A, nRst, $02, nEb4, $10, nRst, $02, nBb3, $16, nRst, $02
	dc.b	nA3, $04, nRst, $02, nA3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nA3, $04, nRst, $14, nF4, $0A, nRst, $02, nD4, $10, nRst, $02
	dc.b	nF3, $0A, nRst, $02, nG3, $10, nRst, $02, nG3, $04, nRst, $02
	dc.b	nE3, $04, nRst, $02, nG3, $04, nRst, $08, nG2, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nE3, $04, nRst, $02, nG3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nE4, $04, nRst, $02, nC4, $04, nRst, $02, nE4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $02, nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nBb3, $04, nRst, $14, nF4, $0A, nRst, $02
	dc.b	nD4, $10, nRst, $02, nF3, $16, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nF3, $04, nRst, $02, nBb3, $04, nRst, $14
	dc.b	nF4, $0A, nRst, $02, nD4, $10, nRst, $02, nF3, $0A, nRst, $02
	dc.b	nBb3, $0A, nRst, $02, nF3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nF3, $04, nRst, $14, nC4, $0A, nRst, $02
	dc.b	nG3, $10, nRst, $02, nE3, $0A, nRst, $02, nC4, $0A, nRst, $02
	dc.b	nB3, $04, nRst, $02, nB3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nB3, $04, nRst, $08, nB3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $08, nD3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nB3, $04, nRst, $02, nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $0E, nBb4, $10, nRst, $02
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $0E, nBb4, $10, nRst, $02
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $0E, nBb4, $10, nRst, $02
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nF3, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nF3, $04, nRst, $0E, nBb4, $10, nRst, $02
	dc.b	nBb4, $04, nRst, $08, nBb4, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $0E, nF4, $10, nRst, $02
	dc.b	nAb4, $04, nRst, $08, nAb4, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nEb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nEb3, $04, nRst, $0E, nFs4, $10, nRst, $02
	dc.b	nB4, $04, nRst, $08, nB4, $04, nRst, $08, nEb4, $06, nEb4, nD4
	dc.b	nRst, nBb3, nBb3, nF4, nF4, nE4, nRst, nC4, nC4, nG4, nG4, nFs4
	dc.b	nRst, nD4, nD4, nAb4, nAb4, nG4, nRst, nEb4, nEb4, nFs4, $12, nRst
	dc.b	$06, nF4, $12, nRst, $06, nBb3, $04, nRst, $02, nBb3, $04, nRst
	dc.b	$02, nG3, $04, nRst, $08, nBb3, $04, nRst, $02, nBb3, $04, nRst
	dc.b	$02, nG3, $04, nRst, $0E, nBb4, $10, nRst, $02, nBb4, $04, nRst
	dc.b	$08, nBb4, $04, nRst, $08, nC4, $04, nRst, $02, nC4, $04, nRst
	dc.b	$02, nAb3, $04, nRst, $08, nC4, $04, nRst, $02, nC4, $04, nRst
	dc.b	$02, nAb3, $04, nRst, $0E, nC5, $10, nRst, $02, nC5, $04, nRst
	dc.b	$08, nC5, $04, nRst, $08, nBb3, $04, nRst, $02, nBb3, $04, nRst
	dc.b	$02, nG3, $04, nRst, $08, nBb3, $04, nRst, $02, nBb3, $04, nRst
	dc.b	$02, nG3, $04, nRst, $0E, nBb4, $10, nRst, $02, nBb4, $04, nRst
	dc.b	$08, nBb4, $04, nRst, $08, nC4, $04, nRst, $02, nC4, $04, nRst
	dc.b	$02, nAb3, $04, nRst, $08, nC4, $04, nRst, $02, nC4, $04, nRst
	dc.b	$02, nAb3, $04, nRst, $0E, nC5, $10, nRst, $02, nC5, $04, nRst
	dc.b	$08, nC5, $04, nRst
	dc.b	$08		; Fred: remove trailing pause from proto LBZ2 music
;	dc.b	$0A		;
	smpsJump            ProtoLBZ2_Jump03

; FM2 Data
ProtoLBZ2_FM2:
	smpsSetvoice        $04
	smpsDetune          $FF
	smpsModSet          $0A, $01, $00, $06
	smpsPan             panLeft, $00

ProtoLBZ2_Jump02:
	dc.b	nE3, $04, nRst, $02, nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nA3, $04, nRst, $02, nG3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nE4, $04, nRst, $02, nC4, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b	nF4, $10, nRst, $02, nD4, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b	nE3, $04, nRst, $02, nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nA3, $04, nRst, $02, nG3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nE4, $04, nRst, $02, nC4, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b	nF4, $10, nRst, $02, nD4, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b	nE3, $04, nRst, $02, nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nA3, $04, nRst, $02, nG3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nE4, $04, nRst, $02, nC4, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b	nF4, $10, nRst, $02, nD4, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b	nC3, $04, nRst, $02, nD3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nD3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nG3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nD3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nB3, $04, nRst, $02, nG3, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nG4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b	nG4, $10, nRst, $02, nD4, $04, nRst, $14, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nEb4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nEb3, $04, nRst, $08, nEb4, $10, nRst, $02
	dc.b	nC4, $04, nRst, $08, nAb3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nEb4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nEb3, $04, nRst, $08, nEb4, $10, nRst, $02
	dc.b	nC4, $04, nRst, $08, nAb3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nEb4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nEb3, $04, nRst, $08, nEb4, $10, nRst, $02
	dc.b	nC4, $04, nRst, $08, nAb3, $04, nRst, $08, nBb2, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nF3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nF3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nF3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nF4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nF3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $02, nC4, $04, nRst, $08, nF4, $10, nRst, $02
	dc.b	nC4, $04, nRst, $14, nF3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nF3, $04, nRst, $14, nD4, $0A, nRst, $02
	dc.b	nF3, $10, nRst, $02, nD3, $16, nRst, $02, nG3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nEb3, $04, nRst, $02, nG3, $04, nRst, $14
	dc.b	nEb4, $0A, nRst, $02, nBb3, $10, nRst, $02, nG3, $16, nRst, $02
	dc.b	nF3, $04, nRst, $02, nF3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $14, nD4, $0A, nRst, $02, nF3, $10, nRst, $02
	dc.b	nD3, $0A, nRst, $02, nE3, $10, nRst, $02, nE3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nE3, $04, nRst, $08, nE2, $04, nRst, $02
	dc.b	nG2, $04, nRst, $02, nC3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nG3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nE4, $04, nRst, $02, nF3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nF3, $04, nRst, $14, nD4, $0A, nRst, $02
	dc.b	nF3, $10, nRst, $02, nD3, $16, nRst, $02, nF3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $14
	dc.b	nD4, $0A, nRst, $02, nF3, $10, nRst, $02, nD3, $0A, nRst, $02
	dc.b	nG3, $0A, nRst, $02, nC3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b	nA2, $04, nRst, $02, nC3, $04, nRst, $14, nE3, $0A, nRst, $02
	dc.b	nC3, $10, nRst, $02, nG2, $0A, nRst, $02, nE3, $0A, nRst, $02
	dc.b	nG3, $04, nRst, $02, nG3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $08, nG3, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b	nB3, $04, nRst, $08, nB2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nE3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nA3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nEb3, $04, nRst, $08, nG3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nEb3, $04, nRst, $0E, nG4, $10, nRst, $02
	dc.b	nG4, $04, nRst, $08, nG4, $04, nRst, $08, nG3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nEb3, $04, nRst, $08, nG3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nEb3, $04, nRst, $0E, nG4, $10, nRst, $02
	dc.b	nG4, $04, nRst, $08, nG4, $04, nRst, $08, nG3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nEb3, $04, nRst, $08, nG3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nEb3, $04, nRst, $0E, nG4, $10, nRst, $02
	dc.b	nG4, $04, nRst, $08, nG4, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nD3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nD3, $04, nRst, $0E, nF4, $10, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF4, $04, nRst, $08, nG3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nEb3, $04, nRst, $08, nG3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nEb3, $04, nRst, $0E, nCs4, $10, nRst, $02
	dc.b	nF4, $04, nRst, $08, nF4, $04, nRst, $08, nEb3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nC3, $04, nRst, $08, nEb3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nC3, $04, nRst, $0E, nEb4, $10, nRst, $02
	dc.b	nFs4, $04, nRst, $08, nFs4, $04, nRst, $08, nBb3, $06, nBb3, nA3
	dc.b	nRst, nF3, nF3, nC4, nC4, nB3, nRst, nG3, nG3, nD4, nD4, nCs4
	dc.b	nRst, nA3, nA3, nEb4, nEb4, nD4, nRst, nBb3, nBb3, nEb4, $12, nRst
	dc.b	$06, nD4, $12, nRst, $06, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $08, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $0E, nG4, $10, nRst, $02, nG4, $04, nRst
	dc.b	$08, nG4, $04, nRst, $08, nAb3, $04, nRst, $02, nAb3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $08, nAb3, $04, nRst, $02, nAb3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $0E, nAb4, $10, nRst, $02, nAb4, $04, nRst
	dc.b	$08, nAb4, $04, nRst, $08, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $08, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $0E, nG4, $10, nRst, $02, nG4, $04, nRst
	dc.b	$08, nG4, $04, nRst, $08, nAb3, $04, nRst, $02, nAb3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $08, nAb3, $04, nRst, $02, nAb3, $04, nRst
	dc.b	$02, nEb3, $04, nRst, $0E, nAb4, $10, nRst, $02, nAb4, $04, nRst
	dc.b	$08, nAb4, $04, nRst
	dc.b	$08		; Fred: remove trailing pause from proto LBZ2 music
;	dc.b	$0A		;
	smpsJump            ProtoLBZ2_Jump02

; FM3 Data
ProtoLBZ2_FM3:
	smpsSetvoice        $03
	smpsDetune          $FE
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC3, $16, nRst, $02, nG3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nG3, $10, nRst, $02, nC4, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nBb3, $16, nRst, $02, nA3, $10, nRst, $02, nF3, $04, nRst, $26
	dc.b	nA3, $0A, nRst, $02, nG3, $04, nRst, $14, nG3, $10, nRst, $02
	dc.b	nC3, $04, nRst, $7A, nBb2, $0A, nRst, $02, nD3, $0A, nRst, $02
	dc.b	nC3, $16, nRst, $02, nG3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nG3, $10, nRst, $02, nC4, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nBb3, $16, nRst, $02, nA3, $10, nRst, $02, nF3, $04, nRst, $26
	dc.b	nA3, $0A, nRst, $02, nG3, $52, nRst, $02, nG3, $06, nC3, nD3
	dc.b	$48, nRst, $0C, nG2, $06, nA2, nBb2, $16, nRst, $02, nF3, $10
	dc.b	nRst, $02, nBb3, $04, nRst, $08, nF3, $10, nRst, $02, nBb3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $08, nAb3, $16, nRst, $02, nG3, $10
	dc.b	nRst, $02, nEb3, $04, nRst, $26, nG3, $0A, nRst, $02, nF3, $04
	dc.b	nRst, $14, nF3, $10, nRst, $02, nBb2, $04, nRst, $7A, nG2, $0A
	dc.b	nRst, $02, nAb2, $0A, nRst, $02, nBb2, $16, nRst, $02, nF3, $10
	dc.b	nRst, $02, nBb3, $04, nRst, $08, nF3, $10, nRst, $02, nBb3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $08, nAb3, $16, nRst, $02, nG3, $10
	dc.b	nRst, $02, nEb3, $04, nRst, $26, nG3, $0A, nRst, $02, nF3, $52
	dc.b	nRst, $02, nF3, $06, nBb2, nC3, $52, nRst, $0E
	smpsSetvoice        $03
	smpsDetune          $FE
	smpsModSet          $0F, $01, $06, $06
	dc.b	nF4, $16, nRst, $02, nBb4, $10, nRst, $02, nF4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $02, nF4, $0A, nRst, $02, nA4, $0A, nRst, $02
	dc.b	nF4, $0A, nRst, $02, nBb4, $16, nRst, $02, nA4, $10, nRst, $02
	dc.b	nG4, $04, nRst, $08, nF4, $10, nRst, $02, nF4, $0A, nRst, $02
	dc.b	nG4, $0A, nRst, $02, nA4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $08, nF4, $14, nRst, $04, nD4, nRst, $08, nF4
	dc.b	$04, nRst, $08, nG4, $64, nRst, $08, nF4, $16, nRst, $02, nBb4
	dc.b	$10, nRst, $02, nF4, $04, nRst, $08, nF4, $04, nRst, $02, nG4
	dc.b	$0A, nRst, $02, nA4, $0A, nRst, $02, nF4, $0A, nRst, $02, nD5
	dc.b	$16, nRst, $02, nC5, $10, nRst, $02, nBb4, $04, nRst, $08, nF4
	dc.b	$04, nRst, $02, nG4, $04, nRst, $02, nA4, $04, nRst, $02, nBb4
	dc.b	$0A, nRst, $02, nC5, $0A, nRst, $02, nA4, $22, nRst, $02, nG4
	dc.b	$08, nRst, $04, nG4, $64, nRst, $02
	smpsSetvoice        $03
	smpsDetune          $FE
	smpsModSet          $0F, $01, $06, $06
	dc.b	nD3, $06, nE3, nF3, nG3, nA3, nB3, nD4, nEb4, $0A, nRst, $0E
	dc.b	nEb4, $10, nRst, $02, nEb4, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02
	dc.b	nEb4, $08, nRst, $04, nF4, $08, nRst, $04, nG4, $08, nRst, $04
	dc.b	nEb4, $20, nRst, $04, nC4, $14, nRst, $04, nEb4, $0A, nRst, $0E
	dc.b	nEb4, $10, nRst, $02, nEb4, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02, nF4, $0A, nRst, $02
	dc.b	nG4, $08, nRst, $04, nF4, $08, nRst, $04, nD4, $08, nRst, $04
	dc.b	nBb3, $38, nRst, $04, nEb4, $0A, nRst, $0E, nEb4, $10, nRst, $02
	dc.b	nEb4, $04, nRst, $08, nEb4, $04, nRst, $02, nEb4, $0A, nRst, $02
	dc.b	nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02, nEb4, $08, nRst, $04
	dc.b	nF4, $08, nRst, $04, nG4, $08, nRst, $04, nEb4, $20, nRst, $1C
	dc.b	nEb4, $06, nEb4, nD4, $08, nRst, $10, nF4, $06, nF4, nE4, $08
	dc.b	nRst, $10, nG4, $06, nG4, nFs4, $08, nRst, $10, nAb4, $06, nAb4
	dc.b	nG4, $08, nRst, $10, nB4, $14, nRst, $04, nBb4, $14, nRst, $04
	dc.b	nEb4, $7F, smpsNoAttack, $19, nRst, $04, nEb4, nRst, $02, nF4, $04, nRst
	dc.b	$02, nG4, $04, nRst, $02, nF4, $04, nRst, $02, nEb4, $04, nRst
	dc.b	$02, nD4, $04, nRst, $02, nEb4, $20, nRst, $04, nBb3, $08, nRst
	dc.b	$04, nBb3, $2C, nRst, $04, nC4, $08, nRst, $04, nC4, $08, nRst
	dc.b	$04, nD4, $08, nRst, $04, nEb4, $08, nRst, $10, nF4, $18, nRst
	dc.b	$0C		; Fred: remove trailing pause from proto LBZ2 music
;	dc.b	$0E		;
	smpsJump            ProtoLBZ2_FM3

; FM4 Data
ProtoLBZ2_FM4:
	smpsSetvoice        $15

ProtoLBZ2_Jump01:
	dc.b	nA0, $0A, nRst, $0E, nA0, $0A, nRst, $14, nA0, $04, nRst, $02
	dc.b	nA0, $0A, nRst, $02, nA0, $04, nRst, $14, nBb0, $0A, nRst, $0E
	dc.b	nBb0, $0A, nRst, $14, nBb0, $04, nRst, $02, nBb0, $0A, nRst, $02
	dc.b	nBb0, $04, nRst, $14, nA0, $0A, nRst, $0E, nA0, $0A, nRst, $14
	dc.b	nA0, $04, nRst, $02, nA0, $0A, nRst, $02, nA0, $04, nRst, $14
	dc.b	nBb0, $0A, nRst, $0E, nBb0, $0A, nRst, $14, nBb0, $04, nRst, $02
	dc.b	nBb0, $0A, nRst, $02, nBb0, $04, nRst, $14, nA0, $0A, nRst, $0E
	dc.b	nA0, $0A, nRst, $14, nA0, $04, nRst, $02, nA0, $0A, nRst, $02
	dc.b	nA0, $04, nRst, $14, nBb0, $0A, nRst, $0E, nBb0, $0A, nRst, $14
	dc.b	nBb0, $04, nRst, $02, nBb0, $0A, nRst, $02, nBb0, $04, nRst, $14
	dc.b	nG0, $0A, nRst, $0E, nG0, $0A, nRst, $14, nG0, $04, nRst, $02
	dc.b	nG0, $0A, nRst, $02, nG0, $04, nRst, $14, nG0, $0A, nRst, $0E
	dc.b	nG0, $0A, nRst, $14, nG0, $04, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nG0, $04, nRst, $14, nG0, $0A, nRst, $0E, nG0, $0A, nRst, $14
	dc.b	nG0, $04, nRst, $02, nG0, $0A, nRst, $02, nG0, $04, nRst, $14
	dc.b	nAb0, $0A, nRst, $0E, nAb0, $0A, nRst, $14, nAb0, $04, nRst, $02
	dc.b	nAb0, $0A, nRst, $02, nAb0, $04, nRst, $14, nG0, $0A, nRst, $0E
	dc.b	nG0, $0A, nRst, $14, nG0, $04, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nG0, $04, nRst, $14, nAb0, $0A, nRst, $0E, nAb0, $0A, nRst, $14
	dc.b	nAb0, $04, nRst, $02, nAb0, $0A, nRst, $02, nAb0, $04, nRst, $14
	dc.b	nG0, $0A, nRst, $0E, nG0, $0A, nRst, $14, nG0, $04, nRst, $02
	dc.b	nG0, $0A, nRst, $02, nG0, $04, nRst, $14, nAb0, $0A, nRst, $0E
	dc.b	nAb0, $0A, nRst, $14, nAb0, $04, nRst, $02, nAb0, $0A, nRst, $02
	dc.b	nAb0, $04, nRst, $14, nF0, $0A, nRst, $0E, nF0, $0A, nRst, $14
	dc.b	nF0, $04, nRst, $02, nF0, $0A, nRst, $02, nF0, $04, nRst, $14
	dc.b	nF0, $0A, nRst, $0E, nF0, $0A, nRst, $14, nF0, $04, nRst, $02
	dc.b	nF0, $0A, nRst, $02, nF0, $04, nRst, $14, nD0, $0A, nRst, $0E
	dc.b	nD0, $0A, nRst, $14, nD0, $04, nRst, $02, nD0, $0A, nRst, $02
	dc.b	nD0, $04, nRst, $14, nEb0, $0A, nRst, $0E, nEb0, $0A, nRst, $14
	dc.b	nEb0, $04, nRst, $02, nEb0, $0A, nRst, $02, nEb0, $04, nRst, $14
	dc.b	nBb0, $0A, nRst, $0E, nBb0, $0A, nRst, $14, nBb0, $04, nRst, $02
	dc.b	nBb0, $0A, nRst, $02, nBb0, $04, nRst, $14, nC1, $0A, nRst, $0E
	dc.b	nC1, $0A, nRst, $14, nC1, $04, nRst, $02, nC1, $0A, nRst, $02
	dc.b	nC1, $04, nRst, $14, nD0, $0A, nRst, $0E, nD0, $0A, nRst, $14
	dc.b	nD0, $04, nRst, $02, nD0, $0A, nRst, $02, nD0, $04, nRst, $14
	dc.b	nBb0, $0A, nRst, $0E, nBb0, $0A, nRst, $14, nBb0, $04, nRst, $02
	dc.b	nBb0, $0A, nRst, $02, nBb0, $04, nRst, $14, nC1, $0A, nRst, $0E
	dc.b	nC1, $0A, nRst, $14, nC1, $04, nRst, $02, nC1, $0A, nRst, $02
	dc.b	nC1, $04, nRst, $14, nC1, $0A, nRst, $0E, nC1, $0A, nRst, $14
	dc.b	nC1, $04, nRst, $02, nC1, $0A, nRst, $02, nC1, $04, nRst, $14
	dc.b	nEb0, $0A, nRst, $0E, nEb0, $0A, nRst, $14, nEb0, $04, nRst, $02
	dc.b	nEb0, $0A, nRst, $02, nEb0, $04, nRst, $14, nAb0, $0A, nRst, $0E
	dc.b	nAb0, $0A, nRst, $14, nAb0, $04, nRst, $02, nAb0, $0A, nRst, $02
	dc.b	nAb0, $04, nRst, $14, nEb0, $0A, nRst, $0E, nEb0, $0A, nRst, $14
	dc.b	nEb0, $04, nRst, $02, nEb0, $0A, nRst, $02, nEb0, $04, nRst, $14
	dc.b	nBb0, $0A, nRst, $0E, nBb0, $0A, nRst, $14, nBb0, $04, nRst, $02
	dc.b	nBb0, $0A, nRst, $02, nBb0, $04, nRst, $14, nEb1, $0A, nRst, $0E
	dc.b	nEb1, $0A, nRst, $14, nCs1, $04, nRst, $02, nCs1, $0A, nRst, $02
	dc.b	nCs1, $04, nRst, $14, nC1, $0A, nRst, $0E, nC1, $0A, nRst, $14
	dc.b	nB0, $04, nRst, $02, nB0, $0A, nRst, $02, nB0, $04, nRst, $14
	dc.b	nBb0, $08, nRst, $04, nA0, $14, nRst, $04, nC1, $08, nRst, $04
	dc.b	nB0, $14, nRst, $04, nEb1, $08, nRst, $04, nD1, $14, nRst, $04
	dc.b	nF1, $08, nRst, $04, nE1, $14, nRst, $04, nFs1, $14, nRst, $04
	dc.b	nF1, $14, nRst, $04, nEb0, $0A, nRst, $0E, nEb0, $0A, nRst, $14
	dc.b	nEb0, $04, nRst, $02, nEb0, $0A, nRst, $02, nEb0, $04, nRst, $14
	dc.b	nEb0, $0A, nRst, $0E, nEb0, $0A, nRst, $14, nEb0, $04, nRst, $02
	dc.b	nEb0, $0A, nRst, $02, nEb0, $04, nRst, $14, nEb0, $0A, nRst, $0E
	dc.b	nEb0, $0A, nRst, $14, nEb0, $04, nRst, $02, nEb0, $0A, nRst, $02
	dc.b	nEb0, $04, nRst, $14, nEb0, $0A, nRst, $0E, nEb0, $0A, nRst, $14
	dc.b	nEb0, $04, nRst, $02, nEb0, $0A, nRst, $02, nEb0, $0A, nRst, $02
	dc.b	nBb0, $0A, nRst
	dc.b	$02		; Fred: remove trailing pause from proto LBZ2 music
;	dc.b	$04		;
	smpsJump            ProtoLBZ2_Jump01

; FM5 Data
ProtoLBZ2_FM5:
	dc.b	nRst, $02
	smpsFMAlterVol      $08

ProtoLBZ2_Jump00:
	smpsSetvoice        $03
	smpsDetune          $02
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC3, $16, nRst, $02, nG3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nG3, $10, nRst, $02, nC4, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nBb3, $16, nRst, $02, nA3, $10, nRst, $02, nF3, $04, nRst, $26
	dc.b	nA3, $0A, nRst, $02, nG3, $04, nRst, $14, nG3, $10, nRst, $02
	dc.b	nC3, $04, nRst, $7A, nBb2, $0A, nRst, $02, nD3, $0A, nRst, $02
	dc.b	nC3, $16, nRst, $02, nG3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nG3, $10, nRst, $02, nC4, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b	nBb3, $16, nRst, $02, nA3, $10, nRst, $02, nF3, $04, nRst, $26
	dc.b	nA3, $0A, nRst, $02, nG3, $52, nRst, $02, nG3, $06, nC3, nD3
	dc.b	$48, nRst, $0C, nG2, $06, nA2, nBb2, $16, nRst, $02, nF3, $10
	dc.b	nRst, $02, nBb3, $04, nRst, $08, nF3, $10, nRst, $02, nBb3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $08, nAb3, $16, nRst, $02, nG3, $10
	dc.b	nRst, $02, nEb3, $04, nRst, $26, nG3, $0A, nRst, $02, nF3, $04
	dc.b	nRst, $14, nF3, $10, nRst, $02, nBb2, $04, nRst, $7A, nG2, $0A
	dc.b	nRst, $02, nAb2, $0A, nRst, $02, nBb2, $16, nRst, $02, nF3, $10
	dc.b	nRst, $02, nBb3, $04, nRst, $08, nF3, $10, nRst, $02, nBb3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $08, nAb3, $16, nRst, $02, nG3, $10
	dc.b	nRst, $02, nEb3, $04, nRst, $26, nG3, $0A, nRst, $02, nF3, $52
	dc.b	nRst, $02, nF3, $06, nBb2, nC3, $52, nRst, $0E
	smpsSetvoice        $03
	smpsDetune          $02
	smpsModSet          $0F, $01, $06, $06
	dc.b	nF4, $16, nRst, $02, nBb4, $10, nRst, $02, nF4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $02, nF4, $0A, nRst, $02, nA4, $0A, nRst, $02
	dc.b	nF4, $0A, nRst, $02, nBb4, $16, nRst, $02, nA4, $10, nRst, $02
	dc.b	nG4, $04, nRst, $08, nF4, $10, nRst, $02, nF4, $0A, nRst, $02
	dc.b	nG4, $0A, nRst, $02, nA4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $08, nF4, $14, nRst, $04, nD4, nRst, $08, nF4
	dc.b	$04, nRst, $08, nG4, $64, nRst, $08, nF4, $16, nRst, $02, nBb4
	dc.b	$10, nRst, $02, nF4, $04, nRst, $08, nF4, $04, nRst, $02, nG4
	dc.b	$0A, nRst, $02, nA4, $0A, nRst, $02, nF4, $0A, nRst, $02, nD5
	dc.b	$16, nRst, $02, nC5, $10, nRst, $02, nBb4, $04, nRst, $08, nF4
	dc.b	$04, nRst, $02, nG4, $04, nRst, $02, nA4, $04, nRst, $02, nBb4
	dc.b	$0A, nRst, $02, nC5, $0A, nRst, $02, nA4, $22, nRst, $02, nG4
	dc.b	$08, nRst, $04, nG4, $64, nRst, $02
	smpsSetvoice        $03
	smpsDetune          $02
	smpsModSet          $0F, $01, $06, $06
	dc.b	nD3, $06, nE3, nF3, nG3, nA3, nB3, nD4, nEb4, $0A, nRst, $0E
	dc.b	nEb4, $10, nRst, $02, nEb4, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02
	dc.b	nEb4, $08, nRst, $04, nF4, $08, nRst, $04, nG4, $08, nRst, $04
	dc.b	nEb4, $20, nRst, $04, nC4, $14, nRst, $04, nEb4, $0A, nRst, $0E
	dc.b	nEb4, $10, nRst, $02, nEb4, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02, nF4, $0A, nRst, $02
	dc.b	nG4, $08, nRst, $04, nF4, $08, nRst, $04, nD4, $08, nRst, $04
	dc.b	nBb3, $38, nRst, $04, nEb4, $0A, nRst, $0E, nEb4, $10, nRst, $02
	dc.b	nEb4, $04, nRst, $08, nEb4, $04, nRst, $02, nEb4, $0A, nRst, $02
	dc.b	nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02, nEb4, $08, nRst, $04
	dc.b	nF4, $08, nRst, $04, nG4, $08, nRst, $04, nEb4, $20, nRst, $1C
	dc.b	nEb4, $06, nEb4, nD4, $08, nRst, $10, nF4, $06, nF4, nE4, $08
	dc.b	nRst, $10, nG4, $06, nG4, nFs4, $08, nRst, $10, nAb4, $06, nAb4
	dc.b	nG4, $08, nRst, $10, nB4, $14, nRst, $04, nBb4, $14, nRst, $04
	dc.b	nEb4, $7F, smpsNoAttack, $19, nRst, $04, nEb4, nRst, $02, nF4, $04, nRst
	dc.b	$02, nG4, $04, nRst, $02, nF4, $04, nRst, $02, nEb4, $04, nRst
	dc.b	$02, nD4, $04, nRst, $02, nEb4, $20, nRst, $04, nBb3, $08, nRst
	dc.b	$04, nBb3, $2C, nRst, $04, nC4, $08, nRst, $04, nC4, $08, nRst
	dc.b	$04, nD4, $08, nRst, $04, nEb4, $08, nRst, $10, nF4, $18, nRst
	dc.b	$0C		; Fred: remove trailing pause from proto LBZ2 music
;	dc.b	$0E		;
	smpsJump            ProtoLBZ2_Jump00

; PSG1 Data
ProtoLBZ2_PSG1:
	dc.b	nRst, $0C, nE4, $02, nRst, $04, nE4, $02, nRst, $10, nE4, $02
	dc.b	nRst, $04, nE4, $02, nRst, $0A, nE4, $02, nRst, $0A, nE4, $02
	dc.b	nRst, $04, nE4, $02, nRst, $0A, nE4, $02, nRst, $16, nD4, $02
	dc.b	nRst, $04, nD4, $02, nRst, $10, nD4, $02, nRst, $04, nD4, $02
	dc.b	nRst, $0A, nD4, $02, nRst, $0A, nD4, $02, nRst, $04, nD4, $02
	dc.b	nRst, $0A, nD4, $02, nRst, $16, nE4, $02, nRst, $04, nE4, $02
	dc.b	nRst, $10, nE4, $02, nRst, $04, nE4, $02, nRst, $0A, nE4, $02
	dc.b	nRst, $0A, nE4, $02, nRst, $04, nE4, $02, nRst, $0A, nE4, $02
	dc.b	nRst, $16, nD4, $02, nRst, $04, nD4, $02, nRst, $10, nD4, $02
	dc.b	nRst, $04, nD4, $02, nRst, $0A, nD4, $02, nRst, $0A, nD4, $02
	dc.b	nRst, $04, nD4, $02, nRst, $0A, nD4, $02, nRst, $16, nE4, $02
	dc.b	nRst, $04, nE4, $02, nRst, $10, nE4, $02, nRst, $04, nE4, $02
	dc.b	nRst, $0A, nE4, $02, nRst, $0A, nE4, $02, nRst, $04, nE4, $02
	dc.b	nRst, $0A, nE4, $02, nRst, $16, nD4, $02, nRst, $04, nD4, $02
	dc.b	nRst, $10, nD4, $02, nRst, $04, nD4, $02, nRst, $0A, nD4, $02
	dc.b	nRst, $0A, nD4, $02, nRst, $04, nD4, $02, nRst, $0A, nD4, $02
	dc.b	nRst, $16, nD4, $02, nRst, $04, nD4, $02, nRst, $10, nD4, $02
	dc.b	nRst, $04, nD4, $02, nRst, $0A, nD4, $02, nRst, $0A, nD4, $02
	dc.b	nRst, $04, nD4, $02, nRst, $0A, nD4, $02, nRst, $16, nD4, $02
	dc.b	nRst, $04, nD4, $02, nRst, $10, nD4, $02, nRst, $04, nD4, $02
	dc.b	nRst, $0A, nD4, $02, nRst, $0A, nD4, $02, nRst, $04, nD4, $02
	dc.b	nRst, $0A, nD4, $02, nRst, $16, nD4, $02, nRst, $04, nD4, $02
	dc.b	nRst, $10, nD4, $02, nRst, $04, nD4, $02, nRst, $0A, nD4, $02
	dc.b	nRst, $0A, nD4, $02, nRst, $04, nD4, $02, nRst, $0A, nD4, $02
	dc.b	nRst, $16, nC4, $02, nRst, $04, nC4, $02, nRst, $10, nC4, $02
	dc.b	nRst, $04, nC4, $02, nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b	nRst, $04, nC4, $02, nRst, $0A, nC4, $02, nRst, $16, nD4, $02
	dc.b	nRst, $04, nD4, $02, nRst, $10, nD4, $02, nRst, $04, nD4, $02
	dc.b	nRst, $0A, nD4, $02, nRst, $0A, nD4, $02, nRst, $04, nD4, $02
	dc.b	nRst, $0A, nD4, $02, nRst, $16, nC4, $02, nRst, $04, nC4, $02
	dc.b	nRst, $10, nC4, $02, nRst, $04, nC4, $02, nRst, $0A, nC4, $02
	dc.b	nRst, $0A, nC4, $02, nRst, $04, nC4, $02, nRst, $0A, nC4, $02
	dc.b	nRst, $16, nD4, $02, nRst, $04, nD4, $02, nRst, $10, nD4, $02
	dc.b	nRst, $04, nD4, $02, nRst, $0A, nD4, $02, nRst, $0A, nD4, $02
	dc.b	nRst, $04, nD4, $02, nRst, $0A, nD4, $02, nRst, $16, nC4, $02
	dc.b	nRst, $04, nC4, $02, nRst, $10, nC4, $02, nRst, $04, nC4, $02
	dc.b	nRst, $0A, nC4, $02, nRst, $0A, nC4, $02, nRst, $04, nC4, $02
	dc.b	nRst, $0A, nC4, $02, nRst, $16, nC4, $02, nRst, $04, nC4, $02
	dc.b	nRst, $10, nC4, $02, nRst, $04, nC4, $02, nRst, $0A, nC4, $02
	dc.b	nRst, $0A, nC4, $02, nRst, $04, nC4, $02, nRst, $0A, nC4, $02
	dc.b	nRst, $16, nC4, $02, nRst, $04, nC4, $02, nRst, $10, nC4, $02
	dc.b	nRst, $04, nC4, $02, nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b	nRst, $04, nC4, $02, nRst, $0A, nC4, $02, nRst, $0A, nD4, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $08, nD4, $04, nRst, $02, nD5, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD4, $04, nRst, $02, nEb4, $04
	dc.b	nRst, $02, nEb4, $04, nRst, $02, nEb5, $04, nRst, $02, nEb4, $04
	dc.b	nRst, $02, nEb5, $04, nRst, $02, nEb4, $04, nRst, $02, nEb4, $04
	dc.b	nRst, $02, nEb5, $04, nRst, $08, nEb4, $04, nRst, $02, nEb5, $04
	dc.b	nRst, $02, nEb4, $04, nRst, $02, nEb4, $04, nRst, $02, nEb4, $04
	dc.b	nRst, $02, nEb5, $04, nRst, $02, nEb4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $08, nD4, $04, nRst, $02, nD5, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD4, $04, nRst, $02, nE4, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nE5, $04, nRst, $02, nE4, $04
	dc.b	nRst, $02, nE5, $04, nRst, $02, nE4, $04, nRst, $02, nE4, $04
	dc.b	nRst, $02, nE5, $04, nRst, $08, nE4, $04, nRst, $02, nE5, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nE4, $04, nRst, $02, nE4, $04
	dc.b	nRst, $02, nE5, $04, nRst, $02, nE4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $08, nD4, $04, nRst, $02, nD5, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04
	dc.b	nRst, $02, nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04
	dc.b	nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $02, nF4, $04
	dc.b	nRst, $02, nF5, $04, nRst, $08, nF4, $04, nRst, $02, nF5, $04
	dc.b	nRst, $02, nF4, $04, nRst, $02, nF4, $04, nRst, $02, nF4, $04
	dc.b	nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nC5, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC5, $04, nRst, $02, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC5, $04, nRst, $08, nC4, $04, nRst, $02, nC5, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC5, $04, nRst, $02, nC4, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nG3, $04, nRst, $02, nG4, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nG4, $04, nRst, $02, nG3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nG4, $04, nRst, $08, nG3, $04, nRst, $02, nG4, $04
	dc.b	nRst, $02, nG3, $04, nRst, $02, nG3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nG4, $04, nRst, $02, nG3, $04, nRst, $02, nEb2, $06
	dc.b	nF2, nBb2, nEb3, nF3, nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3, nF3
	dc.b	nEb3, nBb2, nF2, nEb2, nG2, nBb2, nEb3, nG3, nBb3, nEb4, nG4, nBb4
	dc.b	nG4, nEb4, nBb3, nG3, nEb3, nBb2, nG2, nEb2, nF2, nBb2, nEb3, nF3
	dc.b	nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3, nF3, nEb3, nBb2, nF2, nD2
	dc.b	nF2, nBb2, nD3, nF3, nBb3, nD4, nF4, nBb4, nF4, nD4, nBb3, nF3
	dc.b	nD3, nBb2, nF2, nEb2, nF2, nBb2, nEb3, nF3, nBb3, nEb4, nF4, nRst
	dc.b	nCs2, nEb2, nF2, nAb2, nCs3, nEb3, nF3, nC2, nEb2, nAb2, nBb2, nC3
	dc.b	nEb3, nAb3, nC4, nRst, nB1, nEb2, nFs2, nB2, nEb3, nFs3, nB3, nEb4
	dc.b	nRst, nD4, nRst, nBb3, nRst, nC4, nRst, nB3, nRst, nG3, nRst, nG4
	dc.b	nRst, nFs4, nRst, nD4, nRst, nEb4, nRst, nD4, nRst, nBb3, nRst, nAb4
	dc.b	$14, nRst, $04, nG4, $14, nRst, $04, nEb2, $06, nF2, nBb2, nEb3
	dc.b	nF3, nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3, nF3, nEb3, nBb2, nF2
	dc.b	nEb2, nAb2, nBb2, nEb3, nAb3, nBb3, nEb4, nG4, nBb4, nG4, nEb4, nBb3
	dc.b	nG3, nEb3, nBb2, nG2, nEb2, nF2, nBb2, nEb3, nF3, nBb3, nEb4, nF4
	dc.b	nBb4, nF4, nEb4, nBb3, nF3, nEb3, nBb2, nF2, nEb2, nAb2, nBb2, nEb3
	dc.b	nAb3, nBb3, nEb4, nG4, nBb4, nG4, nEb4, nBb3, nG3, nEb3, nBb2, nG2
;	dc.b	nRst, $02	; Fred: remove trailing pause from proto LBZ2 music
	smpsJump            ProtoLBZ2_PSG1

; PSG2 Data
ProtoLBZ2_PSG2:
	dc.b	nRst, $0C, nG3, $02, nRst, $04, nG3, $02, nRst, $10, nG3, $02
	dc.b	nRst, $04, nG3, $02, nRst, $0A, nG3, $02, nRst, $0A, nG3, $02
	dc.b	nRst, $04, nG3, $02, nRst, $0A, nG3, $02, nRst, $16, nF3, $02
	dc.b	nRst, $04, nF3, $02, nRst, $10, nF3, $02, nRst, $04, nF3, $02
	dc.b	nRst, $0A, nF3, $02, nRst, $0A, nF3, $02, nRst, $04, nF3, $02
	dc.b	nRst, $0A, nF3, $02, nRst, $16, nG3, $02, nRst, $04, nG3, $02
	dc.b	nRst, $10, nG3, $02, nRst, $04, nG3, $02, nRst, $0A, nG3, $02
	dc.b	nRst, $0A, nG3, $02, nRst, $04, nG3, $02, nRst, $0A, nG3, $02
	dc.b	nRst, $16, nF3, $02, nRst, $04, nF3, $02, nRst, $10, nF3, $02
	dc.b	nRst, $04, nF3, $02, nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b	nRst, $04, nF3, $02, nRst, $0A, nF3, $02, nRst, $16, nG3, $02
	dc.b	nRst, $04, nG3, $02, nRst, $10, nG3, $02, nRst, $04, nG3, $02
	dc.b	nRst, $0A, nG3, $02, nRst, $0A, nG3, $02, nRst, $04, nG3, $02
	dc.b	nRst, $0A, nG3, $02, nRst, $16, nF3, $02, nRst, $04, nF3, $02
	dc.b	nRst, $10, nF3, $02, nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b	nRst, $0A, nF3, $02, nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b	nRst, $16, nG3, $02, nRst, $04, nG3, $02, nRst, $10, nG3, $02
	dc.b	nRst, $04, nG3, $02, nRst, $0A, nG3, $02, nRst, $0A, nG3, $02
	dc.b	nRst, $04, nG3, $02, nRst, $0A, nG3, $02, nRst, $16, nG3, $02
	dc.b	nRst, $04, nG3, $02, nRst, $10, nG3, $02, nRst, $04, nG3, $02
	dc.b	nRst, $0A, nG3, $02, nRst, $0A, nG3, $02, nRst, $04, nG3, $02
	dc.b	nRst, $0A, nG3, $02, nRst, $16, nF3, $02, nRst, $04, nF3, $02
	dc.b	nRst, $10, nF3, $02, nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b	nRst, $0A, nF3, $02, nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b	nRst, $16, nEb3, $02, nRst, $04, nEb3, $02, nRst, $10, nEb3, $02
	dc.b	nRst, $04, nEb3, $02, nRst, $0A, nEb3, $02, nRst, $0A, nEb3, $02
	dc.b	nRst, $04, nEb3, $02, nRst, $0A, nEb3, $02, nRst, $16, nF3, $02
	dc.b	nRst, $04, nF3, $02, nRst, $10, nF3, $02, nRst, $04, nF3, $02
	dc.b	nRst, $0A, nF3, $02, nRst, $0A, nF3, $02, nRst, $04, nF3, $02
	dc.b	nRst, $0A, nF3, $02, nRst, $16, nEb3, $02, nRst, $04, nEb3, $02
	dc.b	nRst, $10, nEb3, $02, nRst, $04, nEb3, $02, nRst, $0A, nEb3, $02
	dc.b	nRst, $0A, nEb3, $02, nRst, $04, nEb3, $02, nRst, $0A, nEb3, $02
	dc.b	nRst, $16, nF3, $02, nRst, $04, nF3, $02, nRst, $10, nF3, $02
	dc.b	nRst, $04, nF3, $02, nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b	nRst, $04, nF3, $02, nRst, $0A, nF3, $02, nRst, $16, nEb3, $02
	dc.b	nRst, $04, nEb3, $02, nRst, $10, nEb3, $02, nRst, $04, nEb3, $02
	dc.b	nRst, $0A, nEb3, $02, nRst, $0A, nEb3, $02, nRst, $04, nEb3, $02
	dc.b	nRst, $0A, nEb3, $02, nRst, $16, nF3, $02, nRst, $04, nF3, $02
	dc.b	nRst, $10, nF3, $02, nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b	nRst, $0A, nF3, $02, nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b	nRst, $16, nF3, $02, nRst, $04, nF3, $02, nRst, $10, nF3, $02
	dc.b	nRst, $04, nF3, $02, nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b	nRst, $04, nF3, $02, nRst, $0A, nF3, $02, nRst, $0A, nD4, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $08, nD4, $04, nRst, $02, nD5, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD4, $04, nRst, $02, nEb4, $04
	dc.b	nRst, $02, nEb4, $04, nRst, $02, nEb5, $04, nRst, $02, nEb4, $04
	dc.b	nRst, $02, nEb5, $04, nRst, $02, nEb4, $04, nRst, $02, nEb4, $04
	dc.b	nRst, $02, nEb5, $04, nRst, $08, nEb4, $04, nRst, $02, nEb5, $04
	dc.b	nRst, $02, nEb4, $04, nRst, $02, nEb4, $04, nRst, $02, nEb4, $04
	dc.b	nRst, $02, nEb5, $04, nRst, $02, nEb4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $08, nD4, $04, nRst, $02, nD5, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD4, $04, nRst, $02, nE4, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nE5, $04, nRst, $02, nE4, $04
	dc.b	nRst, $02, nE5, $04, nRst, $02, nE4, $04, nRst, $02, nE4, $04
	dc.b	nRst, $02, nE5, $04, nRst, $08, nE4, $04, nRst, $02, nE5, $04
	dc.b	nRst, $02, nE4, $04, nRst, $02, nE4, $04, nRst, $02, nE4, $04
	dc.b	nRst, $02, nE5, $04, nRst, $02, nE4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $08, nD4, $04, nRst, $02, nD5, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD5, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04
	dc.b	nRst, $02, nF4, $04, nRst, $02, nF5, $04, nRst, $02, nF4, $04
	dc.b	nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $02, nF4, $04
	dc.b	nRst, $02, nF5, $04, nRst, $08, nF4, $04, nRst, $02, nF5, $04
	dc.b	nRst, $02, nF4, $04, nRst, $02, nF4, $04, nRst, $02, nF4, $04
	dc.b	nRst, $02, nF5, $04, nRst, $02, nF4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nC5, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC5, $04, nRst, $02, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC5, $04, nRst, $08, nC4, $04, nRst, $02, nC5, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nC5, $04, nRst, $02, nC4, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nG3, $04, nRst, $02, nG4, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nG4, $04, nRst, $02, nG3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nG4, $04, nRst, $08, nG3, $04, nRst, $02, nG4, $04
	dc.b	nRst, $02, nG3, $04, nRst, $02, nG3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nG4, $04, nRst, $02, nG3, $04, nRst, $02, nEb2, $06
	dc.b	nF2, nBb2, nEb3, nF3, nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3, nF3
	dc.b	nEb3, nBb2, nF2, nEb2, nG2, nBb2, nEb3, nG3, nBb3, nEb4, nG4, nBb4
	dc.b	nG4, nEb4, nBb3, nG3, nEb3, nBb2, nG2, nEb2, nF2, nBb2, nEb3, nF3
	dc.b	nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3, nF3, nEb3, nBb2, nF2, nD2
	dc.b	nF2, nBb2, nD3, nF3, nBb3, nD4, nF4, nBb4, nF4, nD4, nBb3, nF3
	dc.b	nD3, nBb2, nF2, nEb2, nF2, nBb2, nEb3, nF3, nBb3, nEb4, nF4, nRst
	dc.b	nCs2, nEb2, nF2, nAb2, nCs3, nEb3, nF3, nC2, nEb2, nAb2, nBb2, nC3
	dc.b	nEb3, nAb3, nC4, nRst, nB1, nEb2, nFs2, nB2, nEb3, nFs3, nB3, nEb4
	dc.b	nRst, nD4, nRst, nBb3, nRst, nC4, nRst, nB3, nRst, nG3, nRst, nG4
	dc.b	nRst, nFs4, nRst, nD4, nRst, nEb4, nRst, nD4, nRst, nBb3, nRst, nAb4
	dc.b	$14, nRst, $04, nG4, $14, nRst, $04, nEb2, $06, nF2, nBb2, nEb3
	dc.b	nF3, nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3, nF3, nEb3, nBb2, nF2
	dc.b	nEb2, nAb2, nBb2, nEb3, nAb3, nBb3, nEb4, nG4, nBb4, nG4, nEb4, nBb3
	dc.b	nG3, nEb3, nBb2, nG2, nEb2, nF2, nBb2, nEb3, nF3, nBb3, nEb4, nF4
	dc.b	nBb4, nF4, nEb4, nBb3, nF3, nEb3, nBb2, nF2, nEb2, nAb2, nBb2, nEb3
	dc.b	nAb3, nBb3, nEb4, nG4, nBb4, nG4, nEb4, nBb3, nG3, nEb3, nBb2, nG2
;	dc.b	nRst, $02	; Fred: remove trailing pause from proto LBZ2 music
	smpsJump            ProtoLBZ2_PSG2

; PSG3 Data
ProtoLBZ2_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7

ProtoLBZ2_Jump04:
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1
	dc.b	$0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	$06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1
	dc.b	$0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	$06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1
	dc.b	$0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	$06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1
	dc.b	$0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	$06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1
	dc.b	$0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	$06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1
	dc.b	$0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	$06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	$06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1
	dc.b	$0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	$06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1
	dc.b	$0C, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1
	dc.b	$0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	$06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1
	dc.b	nMaxPSG1, $0C, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06
	dc.b	nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1
	dc.b	$0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	$06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1
	dc.b	$06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1
	dc.b	$02, nRst
	dc.b	$04		; Fred: remove trailing pause from proto LBZ2 music
;	dc.b	$06		;
	smpsJump            ProtoLBZ2_Jump04

ProtoLBZ2_Voices:
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

