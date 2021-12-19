ProtoLBZ1_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     ProtoLBZ1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $10

	smpsHeaderDAC       ProtoLBZ1_DAC
	smpsHeaderFM        ProtoLBZ1_FM1,	$18, $12
	smpsHeaderFM        ProtoLBZ1_FM2,	$00, $16
	smpsHeaderFM        ProtoLBZ1_FM3,	$00, $17
	smpsHeaderFM        ProtoLBZ1_FM4,	$00, $19
	smpsHeaderFM        ProtoLBZ1_FM5,	$00, $19
	smpsHeaderPSG       ProtoLBZ1_PSG1,	$00, $05, $00, sTone_0C
	smpsHeaderPSG       ProtoLBZ1_PSG2,	$00, $05, $00, sTone_0C
	smpsHeaderPSG       ProtoLBZ1_PSG3,	$00, $03, $00, sTone_0C

; DAC Data
ProtoLBZ1_DAC:
	dc.b	dSnareS3, $18, dSnareS3, $30, dSnareS3, $08, dSnareS3, $08, dSnareS3, $08, dSnareS3, $10
	dc.b	dSnareS3, $08, dSnareS3, $30, dSnareS3, $08, dSnareS3, $08, dSnareS3, $08, dSnareS3, $10
	dc.b	dSnareS3, $08, dSnareS3, $30, dSnareS3, $08, dSnareS3, $08, dSnareS3, $08, dSnareS3, $10
	dc.b	dSnareS3, $08, dSnareS3, $48

ProtoLBZ1_Jump00:
	dc.b	dKickS3, $18, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3
	dc.b	dKickS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3
	dc.b	dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, dKickS3
	dc.b	dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3
	dc.b	dSnareS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3
	dc.b	dKickS3, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	$0C, dSnareS3, dSnareS3, dSnareS3, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, $0C, dSnareS3
	smpsJump            ProtoLBZ1_Jump00

; FM1 Data
ProtoLBZ1_FM1:
	smpsSetvoice        $0A
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $06
	smpsCall            ProtoLBZ1_Call04

ProtoLBZ1_Jump05:
	smpsSetvoice        $00
	smpsCall            ProtoLBZ1_Call05
	smpsJump            ProtoLBZ1_Jump05

ProtoLBZ1_Call04:
	dc.b	nBb0, $05, nRst, $13, nBb0, $2D, nRst, $03, nBb0, $05, nRst, $03
	dc.b	nBb0, $05, nRst, $03, nBb0, $05, nRst, $03, nBb0, $05, nRst, $0B
	dc.b	nBb0, $05, nRst, $03, nBb0, $2D, nRst, $03, nBb0, $05, nRst, $03
	dc.b	nBb0, $05, nRst, $03, nBb0, $05, nRst, $03, nBb0, $05, nRst, $0B
	dc.b	nBb0, $05, nRst, $03, nBb0, $2D, nRst, $03, nBb0, $05, nRst, $03
	dc.b	nBb0, $05, nRst, $03, nBb0, $05, nRst, $03, nF1, $05, nRst, $0B
	dc.b	nF1, $05, nRst, $03, nF1, $45, nRst, $03
	smpsReturn

ProtoLBZ1_Call05:
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nBb0, $03, nRst, $09, nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b	nBb0, $03, nRst, $09, nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b	nBb0, $03, nRst, $09, nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b	nBb0, $03, nRst, $09, nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b	nBb0, $03, nRst, $09, nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b	nBb0, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b	nBb0, $03, nRst, $09, nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b	nBb0, $03, nRst, $09, nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b	nBb0, $03, nRst, $09, nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b	nBb0, $03, nRst, $09, nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b	nBb0, $03, nRst, $09, nBb0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b	nG0, $03, nRst, $09, nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b	nG0, $03, nRst, $09, nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b	nG0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b	nF1, $03, nRst, $09, nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b	nF1, $03, nRst, $09, nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b	nF1, $03, nRst, $09, nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b	nG0, $03, nRst, $09, nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b	nG0, $03, nRst, $09, nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b	nF1, $03, nRst, $09, nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b	nF1, $03, nRst, $09, nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b	nF1, $03, nRst, $09, nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b	nF1, $03, nRst, $09, nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b	nF1, $03, nRst, $09, nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b	nCs1, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b	nEb1, $03, nRst, $09, nEb1, $03, nRst, $09, nAb1, $03, nRst, $09
	dc.b	nAb1, $03, nRst, $09, nAb1, $03, nRst, $09, nAb1, $03, nRst, $09
	dc.b	nFs1, $03, nRst, $09, nFs1, $03, nRst, $09, nFs1, $03, nRst, $09
	dc.b	nFs1, $03, nRst, $09, nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b	nF1, $03, nRst, $09, nF1, $03, nRst, $09, nE1, $03, nRst, $09
	dc.b	nE1, $03, nRst, $09, nE1, $03, nRst, $09, nE1, $03, nRst, $09
	dc.b	nEb1, $08, nRst, $04, nD1, $14, nRst, $04, nF1, $08, nRst, $04
	dc.b	nE1, $14, nRst, $04, nAb1, $08, nRst, $04, nG1, $14, nRst, $04
	dc.b	nBb1, $08, nRst, $04, nA1, $14, nRst, $04, nB1, $14, nRst, $04
	dc.b	nBb1, $14, nRst, $04, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b	nAb0, $03, nRst, $09, nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	smpsReturn

; FM2 Data
ProtoLBZ1_FM2:
	smpsSetvoice        $0A
	smpsDetune          $04
	smpsModSet          $0F, $01, $06, $06
	smpsCall            ProtoLBZ1_Call02
	smpsSetvoice        $0A
	smpsDetune          $04
	smpsModSet          $0F, $01, $06, $06

ProtoLBZ1_Jump04:
	smpsSetvoice        $0A
	smpsDetune          $04
	smpsModSet          $0F, $01, $06, $06
	smpsCall            ProtoLBZ1_Call03
	smpsJump            ProtoLBZ1_Jump04

ProtoLBZ1_Call02:
	dc.b	nD4, $04, nRst, $14, nD4, $2F, nRst, $01, nEb4, $08, nD4, $07
	dc.b	nRst, $01, nC4, $08, nBb3, $03, nRst, $0D, nD4, $03, nRst, $05
	dc.b	nD4, $30, nEb4, $07, nRst, $01, nD4, $08, nC4, $05, nRst, $03
	dc.b	nBb3, $05, nRst, $0B, nD4, $03, nRst, $05, nD4, $30, nC4, $06
	dc.b	nRst, $02, nD4, $06, nRst, $02, nEb4, $07, nRst, $01, nD4, $02
	dc.b	nRst, $0E, nA3, $03, nRst, $05, nA3, $3A, nRst, $0E
	smpsReturn

ProtoLBZ1_Call03:
	dc.b	nEb3, $38, nRst, $04, nBb3, $08, nRst, $04, nEb4, $08, nRst, $04
	dc.b	nBb3, $08, nRst, $04, nCs4, $14, nRst, $04, nC4, $14, nRst, $04
	dc.b	nAb3, $14, nRst, $04, nAb3, $08, nRst, $04, nC4, $08, nRst, $04
	dc.b	nBb3, $20, nRst, $04, nEb3, $60, $38, nRst, $04, nEb3, $38, nRst
	dc.b	$04, nBb3, $08, nRst, $04, nEb4, $08, nRst, $04, nBb3, $08, nRst
	dc.b	$04, nCs4, $14, nRst, $04, nC4, $14, nRst, $04, nAb3, $14, nRst
	dc.b	$04, nAb3, $08, nRst, $04, nC4, $08, nRst, $04, nBb3, $60, $5C
	dc.b	nRst, $04, nEb3, $38, nRst, $04, nBb3, $08, nRst, $04, nEb4, $08
	dc.b	nRst, $04, nBb3, $08, nRst, $04, nCs4, $14, nRst, $04, nC4, $14
	dc.b	nRst, $04, nAb3, $14, nRst, $04, nAb3, $08, nRst, $04, nC4, $08
	dc.b	nRst, $04, nBb3, $20, nRst, $04, nEb3, $60, $38, nRst, $04, nEb3
	dc.b	$38, nRst, $04, nBb3, $08, nRst, $04, nEb4, $08, nRst, $04, nBb3
	dc.b	$08, nRst, $04, nCs4, $14, nRst, $04, nC4, $14, nRst, $04, nAb3
	dc.b	$14, nRst, $04, nAb3, $08, nRst, $04, nC4, $08, nRst, $04, nBb3
	dc.b	$60, $5C, nRst, $04, nBb3, $2C, nRst, $04, nG3, $08, nRst, $04
	dc.b	nBb3, $08, nRst, $04, nD4, $08, nRst, $04, nBb3, $08, nRst, $04
	dc.b	nEb4, $08, nRst, $04, nD4, $08, nRst, $04, nC4, $08, nRst, $04
	dc.b	nBb3, $20, nRst, $04, nBb3, $08, nRst, $04, nC4, $08, nRst, $04
	dc.b	nD4, $08, nRst, $04, nBb3, $08, nRst, $04, nG3, $08, nRst, $04
	dc.b	nBb3, $14, nRst, $04, nG3, $08, nRst, $04, nBb3, $08, nRst, $04
	dc.b	nC4, $60, $08, nRst, $04, nBb3, $2C, nRst, $04, nBb3, $08, nRst
	dc.b	$04, nC4, $08, nRst, $04, nD4, $08, nRst, $04, nBb3, $08, nRst
	dc.b	$04, nG4, $08, nRst, $04, nF4, $08, nRst, $04, nEb4, $08, nRst
	dc.b	$04, nBb3, $08, nRst, $04, nC4, $08, nRst, $04, nD4, $08, nRst
	dc.b	$04, nEb4, $08, nRst, $04, nF4, $08, nRst, $04, nD4, $20, nRst
	dc.b	$04, nC4, $08, nRst, $04, nC4, $60, $2C, nRst, $04, nAb4, $08
	dc.b	nRst, $04, nAb4, $08, nRst, $04, nAb4, $08, nRst, $04, nAb4, $08
	dc.b	nRst, $04, nAb4, $08, nRst, $04, nAb4, $08, nRst, $04, nAb4, $08
	dc.b	nRst, $04, nAb4, $08, nRst, $04, nAb4, $08, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nC5, $08, nRst, $04, nAb4, $20, nRst, $04, nF4, $14
	dc.b	nRst, $04, nAb4, $08, nRst, $04, nBb4, $08, nRst, $04, nC5, $08
	dc.b	nRst, $04, nAb4, $14, nRst, $04, nAb4, $08, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nC5, $08, nRst, $04, nC5, $08, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nG4, $08, nRst, $04, nEb4, $38, nRst, $04, nAb4, $08
	dc.b	nRst, $04, nAb4, $08, nRst, $04, nAb4, $08, nRst, $04, nAb4, $08
	dc.b	nRst, $04, nAb4, $08, nRst, $04, nAb4, $08, nRst, $04, nAb4, $08
	dc.b	nRst, $04, nAb4, $08, nRst, $04, nAb4, $08, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nC5, $08, nRst, $04, nAb4, $20, nRst, $1C, nAb4, $08
	dc.b	nRst, $04, nG4, $08, nRst, $10, nBb4, $08, nRst, $04, nA4, $08
	dc.b	nRst, $10, nC5, $08, nRst, $04, nB4, $08, nRst, $10, nCs5, $08
	dc.b	nRst, $04, nC5, $08, nRst, $10, nE5, $14, nRst, $04, nEb5, $14
	dc.b	nRst, $04, nAb4, $60, $38, nRst, $04, nAb4, $03, nRst, nBb4, nRst
	dc.b	nC5, nRst, nBb4, nRst, nAb4, nRst, nG4, nRst, nAb4, $20, nRst, $04
	dc.b	nEb4, $08, nRst, $04, nEb4, $2C, nRst, $04, nF4, $08, nRst, $04
	dc.b	nF4, $08, nRst, $04, nG4, $08, nRst, $04, nAb4, $08, nRst, $10
	dc.b	nBb4, $20, nRst, $04
	smpsReturn

; FM3 Data
ProtoLBZ1_FM3:
	dc.b	nRst, $0C
	smpsFMAlterVol      $06
	smpsSetvoice        $0A
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $06
	smpsCall            ProtoLBZ1_Call02
	smpsFMAlterVol      $02
	smpsSetvoice        $0A
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $06

ProtoLBZ1_Jump03:
	smpsCall            ProtoLBZ1_Call03
	smpsJump            ProtoLBZ1_Jump03

; FM4 Data
ProtoLBZ1_FM4:
	smpsSetvoice        $08
	smpsDetune          $03
	smpsModSet          $03, $01, $FD, $05
	smpsPan             panLeft, $00
	smpsCall            ProtoLBZ1_Call00

ProtoLBZ1_Jump02:
	smpsCall            ProtoLBZ1_Call01
	smpsJump            ProtoLBZ1_Jump02

; FM5 Data
ProtoLBZ1_FM5:
	smpsSetvoice        $08
	smpsDetune          $FD
	smpsModSet          $03, $01, $03, $05
	smpsPan             panRight, $00
	smpsCall            ProtoLBZ1_Call00

ProtoLBZ1_Jump01:
	smpsCall            ProtoLBZ1_Call01
	smpsJump            ProtoLBZ1_Jump01

ProtoLBZ1_Call00:
	dc.b	nF4, $05, nRst, $13, nF4, $2F, nRst, $01, nG4, $08, nF4, $07
	dc.b	nRst, $01, nEb4, $08, nD4, $04, nRst, $0C, nF4, $03, nRst, $05
	dc.b	nF4, $30, nG4, $08, nF4, $07, nRst, $01, nEb4, $08, nD4, $07
	dc.b	nRst, $09, nF4, $04, nRst, nF4, $30, nEb4, $08, nF4, nG4, nF4
	dc.b	$05, nRst, $0B, nC4, $04, nRst, nC4, $46, nRst, $02
	smpsReturn

ProtoLBZ1_Call01:
	dc.b	nRst, $60, nRst, nRst, $3C, nBb3, $0C, nEb4, nBb3, $0B, nRst, $01
	dc.b	nCs4, $18, nC4, $17, nRst, $01, nAb3, $13, nRst, $05, nAb3, $0A
	dc.b	nRst, $02, nC4, $0C, nBb3, $24, nEb3, $60, $3A, nRst, $32, nBb3
	dc.b	$0C, nC4, $0B, nRst, $01, nD4, $0B, nRst, $01, nEb4, $0B, nRst
	dc.b	$01, nF4, $0C, nBb4, $54, nRst, $60, nRst, nRst, $3C, nBb3, $0B
	dc.b	nRst, $01, nEb4, $0B, nRst, $01, nBb3, $0A, nRst, $02, nCs4, $17
	dc.b	nRst, $01, nC4, $17, nRst, $01, nAb3, $15, nRst, $03, nAb3, $0B
	dc.b	nRst, $01, nC4, $0C, nBb3, $22, nRst, $02, nEb3, $60, $3B, nRst
	dc.b	$31, nBb3, $0B, nRst, $01, nC4, $0C, nD4, $0B, nRst, $01, nEb4
	dc.b	$0C, nF4, $0B, nRst, $01, nBb4, $48, nA4, $0B, nRst, $01, nG4
	dc.b	$5F, nRst, $01, nEb4, $5F, nRst, $01, nD4, $24, nF4, $16, nRst
	dc.b	$02, nF3, $0B, nRst, $01, nBb3, $0B, nRst, $01, nA3, $54, nRst
	dc.b	$18, nG4, $60, nEb4, nD4, $24, nF4, $3A, nRst, $02, nE4, $24
	dc.b	nG4, $39, nRst, $03, nAb4, nRst, $09, nEb4, $02, nRst, $0A, nC4
	dc.b	$03, nRst, $09, nAb4, $04, nRst, $08, nEb4, $03, nRst, $09, nC4
	dc.b	$03, nRst, $09, nAb4, $03, nRst, $09, nEb4, $04, nRst, $08, nF4
	dc.b	$03, nRst, $09, nCs4, $03, nRst, $09, nAb3, $03, nRst, $09, nF4
	dc.b	$04, nRst, $08, nCs4, $03, nRst, $09, nAb3, $04, nRst, $08, nF4
	dc.b	$04, nRst, $08, nCs4, $04, nRst, $08, nAb4, $03, nRst, $09, nEb4
	dc.b	$03, nRst, $09, nC4, $03, nRst, $09, nAb4, $04, nRst, $08, nEb4
	dc.b	$05, nRst, $07, nC4, $05, nRst, $07, nAb4, $04, nRst, $08, nEb4
	dc.b	$03, nRst, $09, nBb4, $04, nRst, $08, nG4, $03, nRst, $09, nEb4
	dc.b	$03, nRst, $09, nBb4, $05, nRst, $07, nG4, $03, nRst, $09, nEb4
	dc.b	$04, nRst, $08, nBb4, $04, nRst, $08, nG4, $02, nRst, $22, nAb4
	dc.b	$18, nRst, nFs4, $17, nRst, $19, nF4, $17, nRst, $19, nE4, $17
	dc.b	nRst, $01, nAb4, $03, nRst, $09, nG4, $04, nRst, $08, nFs4, $04
	dc.b	nRst, $08, nF4, $05, nRst, $07, nE4, $04, nRst, $08, nEb4, $05
	dc.b	nRst, $07, nD4, $04, nRst, $08, nCs4, $05, nRst, $07, nC4, $05
	dc.b	nRst, $07, nB3, $04, nRst, $08, nBb3, $06, nRst, nA3, $05, nRst
	dc.b	$07, nAb3, $14, nRst, $04, nG3, $0E, nRst, $0A, nAb4, $04, nRst
	dc.b	$08, nEb4, $03, nRst, $09, nC4, $04, nRst, $08, nAb4, $05, nRst
	dc.b	$07, nEb4, $04, nRst, $08, nC4, $05, nRst, $07, nAb4, $05, nRst
	dc.b	$07, nEb4, $06, nRst, nF4, $04, nRst, $08, nCs4, $04, nRst, $08
	dc.b	nAb3, $04, nRst, $08, nF4, $05, nRst, $07, nCs4, $04, nRst, $08
	dc.b	nAb3, $05, nRst, $07, nF4, $06, nRst, nCs4, $05, nRst, $07, nAb4
	dc.b	$04, nRst, $08, nEb4, $04, nRst, $08, nC4, $05, nRst, $07, nAb4
	dc.b	$05, nRst, $07, nEb4, $04, nRst, $08, nC4, $06, nRst, nAb4, $04
	dc.b	nRst, $08, nEb4, $05, nRst, $07, nCs4, $16, nRst, $02, nEb4, $0C
	dc.b	nF4, $07, nRst, $11, nG4, $24
	smpsJump            ProtoLBZ1_Call01

; PSG3 Data
ProtoLBZ1_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7
	dc.b	nMaxPSG1, $18, nMaxPSG1, $30, nMaxPSG1, $08, nMaxPSG1, $08, nMaxPSG1, $08, nMaxPSG1, $10
	dc.b	nMaxPSG1, $08, nMaxPSG1, $30, nMaxPSG1, $08, nMaxPSG1, $08, nMaxPSG1, $08, nMaxPSG1, $10
	dc.b	nMaxPSG1, $08, nMaxPSG1, $30, nMaxPSG1, $08, nMaxPSG1, $08, nMaxPSG1, $08, nMaxPSG1, $10
	dc.b	nMaxPSG1, $08, nMaxPSG1, $48

ProtoLBZ1_Jump07:
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1
	smpsJump            ProtoLBZ1_Jump07

; PSG1 Data
ProtoLBZ1_PSG1:
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	smpsChangeTransposition $F4
	smpsCall            ProtoLBZ1_Call06
	smpsChangeTransposition $0C
	smpsJump            ProtoLBZ1_Jump06

; PSG2 Data
ProtoLBZ1_PSG2:
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsChangeTransposition $F4
	smpsCall            ProtoLBZ1_Call06
	smpsChangeTransposition $0C
	smpsJump            ProtoLBZ1_Jump06

ProtoLBZ1_Call06:
	dc.b	nF5, $05, nRst, $13, nF5, $2F, nRst, $01, nG5, $08, nF5, $07
	dc.b	nRst, $01, nEb5, $08, nD5, $04, nRst, $0C, nF5, $03, nRst, $05
	dc.b	nF5, $30, nG5, $08, nF5, $07, nRst, $01, nEb5, $08, nD5, $07
	dc.b	nRst, $09, nF5, $04, nRst, nF5, $30, nEb5, $08, nF5, nG5, nF5
	dc.b	$05, nRst, $0B, nC5, $04, nRst, nC5, $46, nRst, $02
	smpsReturn

ProtoLBZ1_Jump06:
	dc.b	nRst, $60, nRst, nRst, $54, nBb1, $01, nRst, $05, nBb1, $02, nRst
	dc.b	$04, nBb1, $02, nRst, $22, nAb1, $01, nRst, $05, nAb1, $01, nRst
	dc.b	$05, nAb1, $01, nRst, $60, nRst, nRst, nRst, $23, nBb1, $01, nRst
	dc.b	$05, nBb1, $02, nRst, $04, nBb1, $02, nRst, $22, nAb1, $01, nRst
	dc.b	$05, nAb1, $01, nRst, $05, nAb1, $01, nRst, $60, nRst, nRst, nRst
	dc.b	$23, nBb1, $01, nRst, $05, nBb1, $02, nRst, $04, nBb1, $02, nRst
	dc.b	$22, nAb1, $01, nRst, $05, nAb1, $01, nRst, $05, nAb1, $01, nRst
	dc.b	$60, nRst, nRst, nRst, $47, nAb1, $01, nRst, $05, nAb1, $01, nRst
	dc.b	$05, nAb1, $01, nRst, $05, nAb1, $01, nRst, $05, nAb1, $01, nRst
	dc.b	$0B, nEb1, $02, nRst, $0A, nEb1, $02, nRst, $60, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, $16
	smpsJump            ProtoLBZ1_Jump06

ProtoLBZ1_Voices:
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

