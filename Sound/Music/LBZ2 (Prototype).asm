Snd_ProtoLBZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoiceUVB
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       Snd_ProtoLBZ2_DAC
	smpsHeaderFM        Snd_ProtoLBZ2_FM1,	$0C, $1F
	smpsHeaderFM        Snd_ProtoLBZ2_FM2,	$0C, $1F
	smpsHeaderFM        Snd_ProtoLBZ2_FM3,	$18, $16
	smpsHeaderFM        Snd_ProtoLBZ2_FM4,	$18, $0E
	smpsHeaderFM        Snd_ProtoLBZ2_FM5,	$0C, $1A
	smpsHeaderPSG       Snd_ProtoLBZ2_PSG1,	$F4, $04, $00, sTone_0C
	smpsHeaderPSG       Snd_ProtoLBZ2_PSG2,	$F4, $04, $00, sTone_0C
	smpsHeaderPSG       Snd_ProtoLBZ2_PSG3,	$00, $04, $00, sTone_0C

; DAC Data
Snd_ProtoLBZ2_DAC:
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
	smpsJump            Snd_ProtoLBZ2_DAC

; FM1 Data
Snd_ProtoLBZ2_FM1:
	smpsSetvoice        $04
	smpsDetune          $01
	smpsModSet          $0A, $01, $00, $06
	smpsPan             panRight, $00

Snd_ProtoLBZ2_Jump03:
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
	smpsJump            Snd_ProtoLBZ2_Jump03

; FM2 Data
Snd_ProtoLBZ2_FM2:
	smpsSetvoice        $04
	smpsDetune          $FF
	smpsModSet          $0A, $01, $00, $06
	smpsPan             panLeft, $00

Snd_ProtoLBZ2_Jump02:
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
	smpsJump            Snd_ProtoLBZ2_Jump02

; FM3 Data
Snd_ProtoLBZ2_FM3:
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
	smpsJump            Snd_ProtoLBZ2_FM3

; FM4 Data
Snd_ProtoLBZ2_FM4:
	smpsSetvoice        $15

Snd_ProtoLBZ2_Jump01:
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
	smpsJump            Snd_ProtoLBZ2_Jump01

; FM5 Data
Snd_ProtoLBZ2_FM5:
	dc.b	nRst, $02
	smpsFMAlterVol      $08

Snd_ProtoLBZ2_Jump00:
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
	smpsJump            Snd_ProtoLBZ2_Jump00

; PSG1 Data
Snd_ProtoLBZ2_PSG1:
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
	smpsJump            Snd_ProtoLBZ2_PSG1

; PSG2 Data
Snd_ProtoLBZ2_PSG2:
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
	smpsJump            Snd_ProtoLBZ2_PSG2

; PSG3 Data
Snd_ProtoLBZ2_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7

Snd_ProtoLBZ2_Jump04:
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
	smpsJump            Snd_ProtoLBZ2_Jump04
