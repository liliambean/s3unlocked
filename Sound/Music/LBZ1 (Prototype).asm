Snd_ProtoLBZ1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoiceUVB
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $10

	smpsHeaderDAC       Snd_ProtoLBZ1_DAC
	smpsHeaderFM        Snd_ProtoLBZ1_FM1,	$18, $12
	smpsHeaderFM        Snd_ProtoLBZ1_FM2,	$00, $16
	smpsHeaderFM        Snd_ProtoLBZ1_FM3,	$00, $17
	smpsHeaderFM        Snd_ProtoLBZ1_FM4,	$00, $19
	smpsHeaderFM        Snd_ProtoLBZ1_FM5,	$00, $19
	smpsHeaderPSG       Snd_ProtoLBZ1_PSG1,	$00, $05, $00, sTone_0C
	smpsHeaderPSG       Snd_ProtoLBZ1_PSG2,	$00, $05, $00, sTone_0C
	smpsHeaderPSG       Snd_ProtoLBZ1_PSG3,	$00, $03, $00, sTone_0C

; DAC Data
Snd_ProtoLBZ1_DAC:
	dc.b	dSnareS3, $18, dSnareS3, $30, dSnareS3, $08, dSnareS3, $08, dSnareS3, $08, dSnareS3, $10
	dc.b	dSnareS3, $08, dSnareS3, $30, dSnareS3, $08, dSnareS3, $08, dSnareS3, $08, dSnareS3, $10
	dc.b	dSnareS3, $08, dSnareS3, $30, dSnareS3, $08, dSnareS3, $08, dSnareS3, $08, dSnareS3, $10
	dc.b	dSnareS3, $08, dSnareS3, $48

Snd_ProtoLBZ1_Jump00:
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
	smpsJump            Snd_ProtoLBZ1_Jump00

; FM1 Data
Snd_ProtoLBZ1_FM1:
	smpsSetvoice        $0A
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $06
	smpsCall            Snd_ProtoLBZ1_Call04

Snd_ProtoLBZ1_Jump05:
	smpsSetvoice        $00
	smpsCall            Snd_ProtoLBZ1_Call05
	smpsJump            Snd_ProtoLBZ1_Jump05

Snd_ProtoLBZ1_Call04:
	dc.b	nBb0, $05, nRst, $13, nBb0, $2D, nRst, $03, nBb0, $05, nRst, $03
	dc.b	nBb0, $05, nRst, $03, nBb0, $05, nRst, $03, nBb0, $05, nRst, $0B
	dc.b	nBb0, $05, nRst, $03, nBb0, $2D, nRst, $03, nBb0, $05, nRst, $03
	dc.b	nBb0, $05, nRst, $03, nBb0, $05, nRst, $03, nBb0, $05, nRst, $0B
	dc.b	nBb0, $05, nRst, $03, nBb0, $2D, nRst, $03, nBb0, $05, nRst, $03
	dc.b	nBb0, $05, nRst, $03, nBb0, $05, nRst, $03, nF1, $05, nRst, $0B
	dc.b	nF1, $05, nRst, $03, nF1, $45, nRst, $03
	smpsReturn

Snd_ProtoLBZ1_Call05:
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
Snd_ProtoLBZ1_FM2:
	smpsSetvoice        $0A
	smpsDetune          $04
	smpsModSet          $0F, $01, $06, $06
	smpsCall            Snd_ProtoLBZ1_Call02
	smpsSetvoice        $0A
	smpsDetune          $04
	smpsModSet          $0F, $01, $06, $06

Snd_ProtoLBZ1_Jump04:
	smpsSetvoice        $0A
	smpsDetune          $04
	smpsModSet          $0F, $01, $06, $06
	smpsCall            Snd_ProtoLBZ1_Call03
	smpsJump            Snd_ProtoLBZ1_Jump04

Snd_ProtoLBZ1_Call02:
	dc.b	nD4, $04, nRst, $14, nD4, $2F, nRst, $01, nEb4, $08, nD4, $07
	dc.b	nRst, $01, nC4, $08, nBb3, $03, nRst, $0D, nD4, $03, nRst, $05
	dc.b	nD4, $30, nEb4, $07, nRst, $01, nD4, $08, nC4, $05, nRst, $03
	dc.b	nBb3, $05, nRst, $0B, nD4, $03, nRst, $05, nD4, $30, nC4, $06
	dc.b	nRst, $02, nD4, $06, nRst, $02, nEb4, $07, nRst, $01, nD4, $02
	dc.b	nRst, $0E, nA3, $03, nRst, $05, nA3, $3A, nRst, $0E
	smpsReturn

Snd_ProtoLBZ1_Call03:
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
Snd_ProtoLBZ1_FM3:
	dc.b	nRst, $0C
	smpsFMAlterVol      $06
	smpsSetvoice        $0A
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $06
	smpsCall            Snd_ProtoLBZ1_Call02
	smpsFMAlterVol      $02
	smpsSetvoice        $0A
	smpsDetune          $FC
	smpsModSet          $0F, $01, $06, $06

Snd_ProtoLBZ1_Jump03:
	smpsCall            Snd_ProtoLBZ1_Call03
	smpsJump            Snd_ProtoLBZ1_Jump03

; FM4 Data
Snd_ProtoLBZ1_FM4:
	smpsSetvoice        $08
	smpsDetune          $03
	smpsModSet          $03, $01, $FD, $05
	smpsPan             panLeft, $00
	smpsCall            Snd_ProtoLBZ1_Call00

Snd_ProtoLBZ1_Jump02:
	smpsCall            Snd_ProtoLBZ1_Call01
	smpsJump            Snd_ProtoLBZ1_Jump02

; FM5 Data
Snd_ProtoLBZ1_FM5:
	smpsSetvoice        $08
	smpsDetune          $FD
	smpsModSet          $03, $01, $03, $05
	smpsPan             panRight, $00
	smpsCall            Snd_ProtoLBZ1_Call00

Snd_ProtoLBZ1_Jump01:
	smpsCall            Snd_ProtoLBZ1_Call01
	smpsJump            Snd_ProtoLBZ1_Jump01

Snd_ProtoLBZ1_Call00:
	dc.b	nF4, $05, nRst, $13, nF4, $2F, nRst, $01, nG4, $08, nF4, $07
	dc.b	nRst, $01, nEb4, $08, nD4, $04, nRst, $0C, nF4, $03, nRst, $05
	dc.b	nF4, $30, nG4, $08, nF4, $07, nRst, $01, nEb4, $08, nD4, $07
	dc.b	nRst, $09, nF4, $04, nRst, nF4, $30, nEb4, $08, nF4, nG4, nF4
	dc.b	$05, nRst, $0B, nC4, $04, nRst, nC4, $46, nRst, $02
	smpsReturn

Snd_ProtoLBZ1_Call01:
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
	smpsJump            Snd_ProtoLBZ1_Call01

; PSG3 Data
Snd_ProtoLBZ1_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7
	dc.b	nMaxPSG1, $18, nMaxPSG1, $30, nMaxPSG1, $08, nMaxPSG1, $08, nMaxPSG1, $08, nMaxPSG1, $10
	dc.b	nMaxPSG1, $08, nMaxPSG1, $30, nMaxPSG1, $08, nMaxPSG1, $08, nMaxPSG1, $08, nMaxPSG1, $10
	dc.b	nMaxPSG1, $08, nMaxPSG1, $30, nMaxPSG1, $08, nMaxPSG1, $08, nMaxPSG1, $08, nMaxPSG1, $10
	dc.b	nMaxPSG1, $08, nMaxPSG1, $48

Snd_ProtoLBZ1_Jump07:
	dc.b	nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, $0C, nMaxPSG1, $06, nMaxPSG1
	smpsJump            Snd_ProtoLBZ1_Jump07

; PSG1 Data
Snd_ProtoLBZ1_PSG1:
	smpsPSGvoice        sTone_0A
	smpsDetune          $FF
	smpsChangeTransposition $F4
	smpsCall            Snd_ProtoLBZ1_Call06
	smpsChangeTransposition $0C
	smpsJump            Snd_ProtoLBZ1_Jump06

; PSG2 Data
Snd_ProtoLBZ1_PSG2:
	smpsPSGvoice        sTone_0A
	smpsDetune          $00
	smpsChangeTransposition $F4
	smpsCall            Snd_ProtoLBZ1_Call06
	smpsChangeTransposition $0C
	smpsJump            Snd_ProtoLBZ1_Jump06

Snd_ProtoLBZ1_Call06:
	dc.b	nF5, $05, nRst, $13, nF5, $2F, nRst, $01, nG5, $08, nF5, $07
	dc.b	nRst, $01, nEb5, $08, nD5, $04, nRst, $0C, nF5, $03, nRst, $05
	dc.b	nF5, $30, nG5, $08, nF5, $07, nRst, $01, nEb5, $08, nD5, $07
	dc.b	nRst, $09, nF5, $04, nRst, nF5, $30, nEb5, $08, nF5, nG5, nF5
	dc.b	$05, nRst, $0B, nC5, $04, nRst, nC5, $46, nRst, $02
	smpsReturn

Snd_ProtoLBZ1_Jump06:
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
	smpsJump            Snd_ProtoLBZ1_Jump06
