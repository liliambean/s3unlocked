Snd_ProtoMenu_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Snd_ProtoMenu_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       Snd_ProtoMenu_DAC
	smpsHeaderFM        Snd_ProtoMenu_FM1,	$18, $12
	smpsHeaderFM        Snd_ProtoMenu_FM2,	$0C, $19
	smpsHeaderFM        Snd_ProtoMenu_FM3,	$0C, $19
	smpsHeaderFM        Snd_ProtoMenu_FM4,	$0C, $19
	smpsHeaderFM        Snd_ProtoMenu_FM5,	$0C, $19
	smpsHeaderPSG       Snd_ProtoMenu_PSG1,	$F4, $04, $00, sTone_0C
	smpsHeaderPSG       Snd_ProtoMenu_PSG2,	$F4, $04, $00, sTone_0C
	smpsHeaderPSG       Snd_ProtoMenu_PSG3,	$00, $04, $00, sTone_0C

; DAC Data
Snd_ProtoMenu_DAC:
;	dc.b	nRst, $30	; Liliam: remove leading pause from proto competition music
	dc.b	dSnareS3, $02, dSnareS3, dSnareS3, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3

Snd_ProtoMenu_Jump00:
	dc.b	dKickS3, $18, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $12, dKickS3, $0C, dSnareS3, $06
	dc.b	dKickS3, $12, dKickS3, $18, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $12, dKickS3, $0C
	dc.b	dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $12
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $06, dSnareS3, $0C
	dc.b	dSnareS3, $12, dKickS3, $0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3, dKickS3, $18, dSnareS3
	dc.b	$24, dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $24, dKickS3
	dc.b	$0C, dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $24, dKickS3, $0C, dSnareS3
	dc.b	$06, dKickS3, $12, dKickS3, $18, dSnareS3, $24, dKickS3, $0C, dSnareS3, $06, dKickS3
	dc.b	dSnareS3, $0C, dKickS3, $18, dSnareS3, $24, dKickS3, $0C, dSnareS3, $06, dKickS3, $12
	dc.b	dKickS3, $18, dSnareS3, $24, dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dKickS3, $18
	dc.b	dSnareS3, $24, dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $1E
	dc.b	dSnareS3, $06, dKickS3, dSnareS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, dKickS3, $18, dSnareS3, $24
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $24, dKickS3, $0C
	dc.b	dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $24, dKickS3, $0C, dSnareS3, $06
	dc.b	dKickS3, $12, dKickS3, $18, dSnareS3, $24, dKickS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dKickS3, dKickS3, dKickS3, dKickS3, dSnareS3, $24, dKickS3, $06, dKickS3, dSnareS3, dKickS3
	dc.b	$12, dKickS3, $06, dKickS3, dKickS3, dKickS3, dSnareS3, $24, dKickS3, $06, dKickS3, dSnareS3
	dc.b	dKickS3, dSnareS3, $0C, dKickS3, $06, dKickS3, dKickS3, dKickS3, dSnareS3, $24, dKickS3, $06
	dc.b	dKickS3, dSnareS3, dKickS3, $12, dKickS3, $06, dKickS3, dKickS3, dKickS3, dSnareS3, $24, dKickS3
	dc.b	$06, dKickS3, dSnareS3, dKickS3, dSnareS3, $0C, dKickS3, $06, dKickS3, dKickS3, dKickS3, dSnareS3
	dc.b	$24, dKickS3, $06, dKickS3, dSnareS3, dKickS3, $12, dKickS3, $06, dKickS3, dKickS3, dKickS3
	dc.b	dSnareS3, $24, dKickS3, $06, dKickS3, dSnareS3, dKickS3, dSnareS3, $0C, dKickS3, $06, dKickS3
	dc.b	dKickS3, dKickS3, dSnareS3, $24, dKickS3, $06, dKickS3, dSnareS3, dKickS3, $12, dSnareS3, $06
	dc.b	dSnareS3, dSnareS3, dSnareS3, $26, dSnareS3, $02, dSnareS3, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3
	smpsJump            Snd_ProtoMenu_Jump00

; FM1 Data
Snd_ProtoMenu_FM1:
	smpsSetvoice        $15
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $30	; Liliam: remove leading pause from proto competition music
;	dc.b	nRst, $60	;

Snd_ProtoMenu_Jump04:
	dc.b	nC1, $06, nRst, $12, nC2, nG1, $06, nRst, nBb1, $04, nRst, $02
	dc.b	nC2, $04, nRst, $08, nBb1, $06, nG1, $12, nF1, $06, nFs1, nG1
	dc.b	nF1, nEb1, nC1, $0C, nEb1, $04, nRst, $08, nFs1, $04, nRst, $02
	dc.b	nF1, $0C, nEb1, $06, nBb0, $0E, nRst, $04, nC1, $06, nRst, $12
	dc.b	nC2, nG1, $06, nRst, nBb1, $04, nRst, $02, nC2, $04, nRst, $08
	dc.b	nBb1, $06, nG1, $12, nF1, $06, nFs1, nG1, nF1, nEb1, nC1, $0C
	dc.b	nEb1, $04, nRst, $08, nFs1, $04, nRst, $02, nF1, $0C, nEb1, $06
	dc.b	nBb0, $0E, nRst, $04, nC1, $06, nRst, $12, nC2, nG1, $06, nBb1
	dc.b	$04, nRst, $08, nC2, $04, nRst, $08, nBb1, $06, nG1, $12, nF1
	dc.b	$06, nFs1, nG1, nF1, nEb1, nC1, $0C, nEb1, $06, nRst, $0C, nF1
	dc.b	$04, nRst, $08, nEb1, $06, nBb0, $0E, nRst, $04, nC1, $06, nRst
	dc.b	$12, nC2, nG1, $06, nBb1, $04, nRst, $08, nC2, $04, nRst, $08
	dc.b	nBb1, $06, nG1, $12, nF1, $06, nFs1, nG1, nF1, nEb1, nC1, $0C
	dc.b	nEb1, $06, nRst, $0C, nF1, $04, nRst, $08, nEb1, $06, nBb0, $0E
	dc.b	nRst, $04, nF1, $06, nRst, $12, nF2, nC2, $06, nEb2, $04, nRst
	dc.b	$08, nF2, $04, nRst, $08, nEb2, $06, nC2, $12, nBb1, $06, nB1
	dc.b	nC2, nBb1, nAb1, nF1, $0C, nAb1, $06, nRst, $0C, nBb1, $04, nRst
	dc.b	$08, nAb1, $06, nF1, $0E, nRst, $04, nC1, $06, nRst, $12, nC2
	dc.b	nG1, $06, nBb1, $04, nRst, $08, nC2, $04, nRst, $08, nBb1, $06
	dc.b	nG1, $12, nF1, $06, nFs1, nG1, nF1, nEb1, nC1, $0C, nEb1, $06
	dc.b	nRst, $0C, nF1, $04, nRst, $08, nEb1, $06, nBb0, $0E, nRst, $04
	dc.b	nAb0, $06, nRst, $12, nAb1, $0E, nRst, $04, nAb1, $06, nG1, $04
	dc.b	nRst, $08, nF1, $04, nRst, $08, nEb1, $06, nF1, $10, nRst, $02
	dc.b	nC1, $06, nRst, $12, nC2, $10, nRst, $02, nC2, $04, nRst, $02
	dc.b	nBb1, $04, nRst, $08, nG1, $04, nRst, $08, nF1, $04, nRst, $02
	dc.b	nG1, $0E, nRst, $04, nAb0, $06, nRst, $12, nAb1, $0E, nRst, $04
	dc.b	nAb1, $06, nG1, $04, nRst, $08, nF1, $04, nRst, $08, nEb1, $06
	dc.b	nF1, $10, nRst, $02, nC1, $06, nRst, $12, nC2, $10, nRst, $02
	dc.b	nC2, $04, nRst, $02, nBb1, $04, nRst, $08, nG1, $04, nRst, $08
	dc.b	nF1, $04, nRst, $02, nG1, $0E, nRst, $04, nAb0, $06, nRst, $12
	dc.b	nAb1, $0E, nRst, $04, nAb1, $06, nG1, $04, nRst, $08, nF1, $04
	dc.b	nRst, $08, nEb1, $06, nF1, $10, nRst, $02, nC1, $06, nRst, $12
	dc.b	nC2, $10, nRst, $02, nC2, $04, nRst, $02, nBb1, $04, nRst, $08
	dc.b	nG1, $04, nRst, $08, nF1, $04, nRst, $02, nG1, $0E, nRst, $04
	dc.b	nAb0, $06, nRst, $12, nAb1, $0E, nRst, $04, nAb1, $06, nG1, $04
	dc.b	nRst, $08, nF1, $04, nRst, $08, nEb1, $06, nF1, $10, nRst, $02
	dc.b	nC1, $06, nRst, $12, nC2, $10, nRst, $02, nC2, $04, nRst, $02
	dc.b	nBb1, $04, nRst, $08, nG1, $04, nRst, $08, nF1, $04, nRst, $02
	dc.b	nG1, $0E, nRst, $04, nAb0, $06, nRst, $12, nAb1, $0E, nRst, $04
	dc.b	nAb1, $06, nG1, $04, nRst, $08, nF1, $04, nRst, $08, nEb1, $06
	dc.b	nF1, $10, nRst, $02, nC1, $06, nRst, $12, nC2, $10, nRst, $02
	dc.b	nC2, $04, nRst, $02, nBb1, $04, nRst, $08, nG1, $04, nRst, $08
	dc.b	nF1, $04, nRst, $02, nG1, $0E, nRst, $04, nCs1, $06, nRst, $12
	dc.b	nCs2, $0E, nRst, $04, nCs2, $06, nB1, $04, nRst, $08, nAb1, $04
	dc.b	nRst, $08, nFs1, $06, nAb1, $10, nRst, $02, nG1, $06, nRst, $12
	dc.b	nG2, $10, nRst, $02, nG2, $04, nRst, $02, nF2, $04, nRst, $08
	dc.b	nD2, $04, nRst, $08, nC2, $04, nRst, $02, nD2, $0E, nRst, $04
	smpsJump            Snd_ProtoMenu_Jump04

; FM5 Data
Snd_ProtoMenu_FM5:
	dc.b	nRst, $03
	smpsJump            Snd_ProtoMenu_FM2

; FM2 Data
Snd_ProtoMenu_FM2:
	smpsSetvoice        $0D
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $30	; Liliam: remove leading pause from proto competition music
;	dc.b	nRst, $60	;

Snd_ProtoMenu_Jump03:
	dc.b	nRst, $1E, nBb4, $0A, nRst, $02, nA4, $04, nRst, $50, nA4, $0A
	dc.b	nRst, $02, nBb4, $04, nRst, $50, nBb4, $0A, nRst, $02, nA4, $04
	dc.b	nRst, $50, nA4, $0A, nRst, $02, nBb4, $04, nRst, $32
	smpsSetvoice        $17
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $04, nRst, $08, nD4, $04, nRst, $08, nC4, $0C, nBb3, $06
	dc.b	nC4, $1C, nRst, $08, nF3, $02, nFs3, nRst, nG3, $06, nBb3, nEb4
	dc.b	$04, nRst, $08, nD4, $04, nRst, $08, nC4, $06, nBb3, $12, nC4
	dc.b	$0C, nBb3, $06, nFs3, $02, nG3, $06, nRst, $04, nF3, nRst, $02
	dc.b	nG3, $06, nBb3, nEb4, $04, nRst, $08, nD4, $04, nRst, $08, nC4
	dc.b	$0C, nBb3, $04, nRst, $02, nC4, $20, nRst, $04, nF3, nRst, $02
	dc.b	nG3, $06, nBb3, nEb4, $04, nRst, $08, nD4, $04, nRst, $08, nC4
	dc.b	$06, nBb3, $12, nC4, $0C, nBb3, $06, nG3, $08, nRst, $16, nF2
	dc.b	$06, nF3, nEb3, $04, nRst, $02, nC3, $06, nEb3, nF3, $04, nRst
	dc.b	$08, nFs3, $12, nF3, $06, nC3, nEb3, nF3, nRst, nBb3, $12, nG3
	dc.b	$06, nF3, $04, nRst, $02, nG3, $06, nF3, nEb3, nC3, nEb3, $04
	dc.b	nRst, $08, nF3, $06, nEb3, $08, nRst, $04, nF3, nRst, $02, nG3
	dc.b	$06, nBb3, nEb4, $04, nRst, $08, nD4, $04, nRst, $08, nC4, $0C
	dc.b	nBb3, $06, nC4, $0C, nD4, $06, nC4, $20, nRst, $04, nF4, $0E
	dc.b	nRst, $04, nF4, $12, nEb4, $2E, nRst, $0E, nD4, nRst, $04, nD4
	dc.b	$12, nC4, $3C, nBb3, $0C, nRst, $06, nBb3, $12, nG3, $38, nRst
	dc.b	$04, nF3, $0E, nRst, $04, nF3, $12, nEb3, $18, nF3, $0C, nG3
	dc.b	$08, nRst, $04, nBb3, $0A, nRst, $02, nEb3, $12, nD3, $04, nRst
	dc.b	$0E, nEb3, $18
	smpsSetvoice        $0E
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC3, $06, nEb3, nF3, nFs3, nG3, nBb3, nC4, $0C, nBb3, $04, nRst
	dc.b	$02, nC4, $06, nEb4, nF4, nRst, nF4, $02, nF4, nFs4, nF4, $0C
	dc.b	nEb4, $06, nC4, nEb4, nF4, $10, nRst, $02, nFs4, nG4, $0A, nBb4
	dc.b	$06, nG4, nBb4, nC5, nRst, nD5, $02, nEb5, $0A, nD5, $04, nRst
	dc.b	$02, nC5, $06, nBb4, nC5, $0C, nBb4, $02, nG4, nF4, nEb4, nC4
	dc.b	nBb3
	smpsSetvoice        $0E
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb5, $06, nF5, $0A, nRst, $02, nEb5, $06, nFs5, $0C, nEb5, $06
	dc.b	nA5, $02, nBb5, $0A, nF5, $06, nEb5, nC5, nEb5, nC5, nBb4, nC5
	dc.b	nBb4, nG4, nBb4, nG4, nF4, nG4, nF4, nEb4, nF4, nEb4, nC4, nEb4
	dc.b	$12, nC4, $02, nBb3, nG3, nF3, nEb3, nC3
	smpsSetvoice        $0E
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $12, nFs4, nF4, $28, nRst, $14, nFs4, $02, nG4, $10, nBb4
	dc.b	$12, nG4, $06, nBb4, nA4, $12, nFs4, $02, nG4, $14, nRst, $08
	smpsSetvoice        $0E
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nBb4, $12, nEb5, $1E, nB4, $12, nE5, $1E, nF5, $08, nRst, $10
	dc.b	nF5, $30, nRst, $06, nF3, nG3, nBb3
	smpsJump            Snd_ProtoMenu_Jump03

; FM3 Data
Snd_ProtoMenu_FM3:
	smpsSetvoice        $18
	dc.b	nRst, $30	; Liliam: remove leading pause from proto competition music
;	dc.b	nRst, $60	;

Snd_ProtoMenu_Jump02:
	dc.b	nF3, $04, nRst, $08, nEb3, $06, nF3, $04, nRst, $26, nG3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $02, nG3, $12, nF3, $04, nRst, $08
	dc.b	nEb3, $06, nF3, $04, nRst, $26, nBb3, $04, nRst, $0E, nBb3, $0A
	dc.b	nRst, $08, nF3, $04, nRst, $08, nEb3, $06, nF3, $04, nRst, $26
	dc.b	nG3, $04, nRst, $08, nF3, $04, nRst, $02, nG3, $12, nF3, $04
	dc.b	nRst, $08, nEb3, $06, nF3, $04, nRst, $26, nBb3, $04, nRst, $0E
	dc.b	nBb3, $0A, nRst, $08, nG3, $04, nRst, $14, nA3, $10, nRst, $02
	dc.b	nG3, $04, nRst, $3E, nBb4, $04, nRst, $0E, nBb4, $04, nRst, $0E
	dc.b	nA4, $02, nBb4, $10, nA4, $04, nRst, $1A, nG3, $04, nRst, $14
	dc.b	nA3, $10, nRst, $02, nG3, $04, nRst, $3E, nBb4, $04, nRst, $0E
	dc.b	nBb4, $04, nRst, $0E, nA4, $02, nBb4, $10, nA4, $04, nRst, $1A
	dc.b	nEb3, $04, nRst, $14, nFs3, $02, nG3, $0E, nRst, $02, nEb3, $04
	dc.b	nRst, $3E, nEb4, $04, nRst, $0E, nEb4, $04, nRst, $0E, nF4, $02
	dc.b	nFs4, $0E, nRst, $02, nEb4, $04, nRst, $1A, nG3, $04, nRst, $14
	dc.b	nA3, $10, nRst, $02, nG3, $04, nRst, $32, nD4, $10, nRst, $02
	dc.b	nD4, $04, nRst, $0E, nBb3, $10, nRst, $2C, nBb3, $10, nRst, $02
	dc.b	nBb3, $04, nRst, $0E, nG3, $10, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nF4, $04, nRst, $02, nEb4, $0E, nRst, $04
	dc.b	nG3, $10, nRst, $02, nG3, $04, nRst, $0E, nEb3, $10, nRst, $02
	dc.b	nC4, $04, nRst, $02, nEb4, $04, nRst, $08, nD4, $06, nC4, $12
	dc.b	nD3, $10, nRst, $02, nD3, $04, nRst, $0E, nC3, $10, nRst, $02
	dc.b	nF4, $04, nRst, $02, nBb4, $04, nRst, $08, nAb4, $04, nRst, $02
	dc.b	nG4, $10, nRst, $02, nBb2, $10, nRst, $02, nBb2, $04, nRst, $0E
	dc.b	nBb2, $10, nRst, $02, nBb3, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nC4, $0C, nRst, $06, nAb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $1A
	dc.b	nBb4, $02, nC5, $0A, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nAb3, $0A, nRst, $08, nC4, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nBb3, $04, nRst, $02, nC4, $04, nRst, $1A
	dc.b	nEb5, $0C, nC4, $04, nRst, $02, nC4, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nC4, $0A, nRst, $08, nAb3, $04, nRst, $02, nAb3, $04
	dc.b	nRst, $02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $1A, nF5, $02
	dc.b	nFs5, $0A, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nEb3, $04
	dc.b	nRst, $02, nAb3, $0A, nRst, $08, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nBb3, $04, nRst, $02, nC4, $04, nRst, $1A, nEb5, $0C
	dc.b	nC4, $04, nRst, $02, nC4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nC4, $0A, nRst, $08, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nAb3, $04, nRst, $1A, nBb4, $02, nC5, $0A
	dc.b	nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nAb3, $0A, nRst, $08, nC4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nC4, $04, nRst, $1A, nF5, $0C, nC4, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nBb3, $04, nRst, $02, nC4, $0A
	dc.b	nRst, $08, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nEb3, $04
	dc.b	nRst, $02, nAb3, $04, nRst, $1A, nEb5, $02, nF5, $0A, nAb3, $04
	dc.b	nRst, $02, nAb3, $04, nRst, $02, nEb3, $04, nRst, $02, nAb3, $0A
	dc.b	nRst, $08, nD4, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD4, $04, nRst, $26, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD4, $04, nRst, $0E
	smpsJump            Snd_ProtoMenu_Jump02

; FM4 Data
Snd_ProtoMenu_FM4:
	smpsSetvoice        $19
	dc.b	nRst, $30	; Liliam: remove leading pause from proto competition music
;	dc.b	nRst, $60	;

Snd_ProtoMenu_Jump01:
	dc.b	nD3, $04, nRst, $08, nC3, $06, nD3, $04, nRst, $08
	smpsSetvoice        $0D
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $0A, nRst, $02, nEb4, $04, nRst, $0E
	smpsSetvoice        $19
	dc.b	nEb3, $02, nRst, $0A, nD3, $04, nRst, $02, nEb3, $12, nD3, $04
	dc.b	nRst, $08, nC3, $06, nD3, $04, nRst, $08
	smpsSetvoice        $0D
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $0A, nRst, $02, nEb4, $04, nRst, $0E
	smpsSetvoice        $19
	dc.b	nG3, $02, nRst, $10, nG3, $0A, nRst, $08, nD3, $04, nRst, $08
	dc.b	nC3, $06, nD3, $04, nRst, $08
	smpsSetvoice        $0D
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $0A, nRst, $02, nEb4, $04, nRst, $0E
	smpsSetvoice        $19
	dc.b	nEb3, $02, nRst, $0A, nD3, $04, nRst, $02, nEb3, $12, nD3, $04
	dc.b	nRst, $08, nC3, $06, nD3, $04, nRst, $08
	smpsSetvoice        $0D
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $0A, nRst, $02, nEb4, $04, nRst, $0E
	smpsSetvoice        $19
	dc.b	nG3, $02, nRst, $10, nG3, $0A, nRst, $08, nEb3, $04, nRst, $14
	dc.b	nF3, $10, nRst, $02, nEb3, $04, nRst, $3E, nG4, $04, nRst, $0E
	dc.b	nG4, $04, nRst, $0E, nG4, $10, nRst, $02, nF4, $04, nRst, $1A
	dc.b	nEb3, $04, nRst, $14, nF3, $10, nRst, $02, nEb3, $04, nRst, $3E
	dc.b	nG4, $04, nRst, $0E, nG4, $04, nRst, $0E, nG4, $10, nRst, $02
	dc.b	nF4, $04, nRst, $1A, nC3, $04, nRst, $14, nEb3, $10, nRst, $02
	dc.b	nC3, $04, nRst, $3E, nC4, $04, nRst, $0E, nC4, $04, nRst, $0E
	dc.b	nEb4, $10, nRst, $02, nC4, $04, nRst, $1A, nEb3, $04, nRst, $14
	dc.b	nF3, $10, nRst, $02, nEb3, $04, nRst, $32, nBb3, $10, nRst, $02
	dc.b	nBb3, $04, nRst, $0E, nG3, $10, nRst, $02, nG4, $06, nBb4, nD5
	dc.b	nBb4, nG4, nEb4, nBb3, nF3, $10, nRst, $02, nF3, $04, nRst, $0E
	dc.b	nEb3, $10, nRst, $02, nBb3, $04, nRst, $02, nEb4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $02, nC4, $0E, nRst, $04, nEb3, $10, nRst, $02
	dc.b	nEb3, $04, nRst, $0E, nBb2, $10, nRst, $02, nG3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $08, nBb3, $06, nEb3, $12, nBb2, $10, nRst, $02
	dc.b	nBb2, $04, nRst, $0E, nG2, $10, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $08, nC4, $04, nRst, $02, nEb4, $10, nRst, $02
	dc.b	nG2, $10, nRst, $02, nF2, $04, nRst, $0E, nG2, $10, nRst, $02
	dc.b	nG3, $04, nRst, $02, nD4, $04, nRst, $08, nC4, $04, nRst, $02
	dc.b	nEb3, $0C, nRst, $06, nEb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nBb2, $04, nRst, $02, nEb3, $04, nRst, $1A, nFs4, $0C, nEb3, $04
	dc.b	nRst, $02, nEb3, $04, nRst, $02, nBb2, $04, nRst, $02, nEb3, $0A
	dc.b	nFs3, $02, nF3, nEb3, nC3, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$02, nF3, $04, nRst, $02, nG3, $04, nRst, $1A, nBb4, $0C, nG3
	dc.b	$04, nRst, $02, nG3, $04, nRst, $02, nF3, $04, nRst, $02, nG3
	dc.b	$0A, nBb3, $02, nG3, nF3, nEb3, nEb3, $04, nRst, $02, nEb3, $04
	dc.b	nRst, $02, nBb2, $04, nRst, $02, nEb3, $04, nRst, $1A, nC5, $0C
	dc.b	nEb3, $04, nRst, $02, nEb3, $04, nRst, $02, nBb2, $04, nRst, $02
	dc.b	nEb3, $0A, nFs3, $02, nF3, nEb3, nC3, nG3, $04, nRst, $02, nG3
	dc.b	$04, nRst, $02, nF3, $04, nRst, $02, nG3, $04, nRst, $1A, nBb4
	dc.b	$0C, nG3, $04, nRst, $02, nG3, $04, nRst, $02, nF3, $04, nRst
	dc.b	$02, nG3, $0A, nBb3, $02, nG3, nF3, nEb3, nEb3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nBb2, $04, nRst, $02, nEb3, $04, nRst, $1A
	dc.b	nFs4, $0C, nEb3, $04, nRst, $02, nEb3, $04, nRst, $02, nBb2, $04
	dc.b	nRst, $02, nEb3, $0A, nFs3, $02, nF3, nEb3, nC3, nG3, $04, nRst
	dc.b	$02, nG3, $04, nRst, $02, nF3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$1A, nC5, $0C, nG3, $04, nRst, $02, nG3, $04, nRst, $02, nF3
	dc.b	$04, nRst, $02, nG3, $0A, nBb3, $02, nG3, nF3, nEb3, nCs3, $04
	dc.b	nRst, $02, nCs3, $04, nRst, $02, nBb2, $04, nRst, $02, nCs3, $04
	dc.b	nRst, $1A, nB4, $0C, nCs3, $04, nRst, $02, nCs3, $04, nRst, $02
	dc.b	nBb2, $04, nRst, $02, nCs3, $0A, nFs3, $02, nF3, nEb3, nC3, nG3
	dc.b	$04, nRst, $02, nG3, $04, nRst, $02, nG3, $04, nRst, $02, nG3
	dc.b	$04, nRst, $02, nB3, $24, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$02, nG3, $04, nRst, $02, nG3, $04, nRst, $0E
	smpsJump            Snd_ProtoMenu_Jump01

; PSG1 Data
Snd_ProtoMenu_PSG1:
	dc.b	nRst, $30	; Liliam: remove leading pause from proto competition music
;	dc.b	nRst, $60	;

Snd_ProtoMenu_Jump06:
	dc.b	nC4, $06, nRst, nC5, nC4, nRst, $1E, nC4, $06, nRst, nC5, nC4
	dc.b	$0C, nC5, nC4, $06, nRst, nC5, nC4, nRst, $1E, nC4, $06, nRst
	dc.b	nC5, nC4, $0C, nC5, nC4, $06, nRst, nC5, nC4, nRst, $1E, nC4
	dc.b	$06, nRst, nC5, nC4, $0C, nC5, nC4, $06, nRst, nC5, nC4, nRst
	dc.b	$1E, nC4, $06, nRst, nC5, nC4, $0C, nC5, nC5, $04, nRst, $08
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $0E, nEb5, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $0E, nEb5, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $0E, nEb5, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $3E, nG4, $06, nBb4, nD5
	dc.b	nBb4, nG4, nEb4, nBb3, nBb4, $10, nRst, $02, nBb4, $04, nRst, $0E
	dc.b	nG4, $10, nRst, $02, nEb5, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nEb5, $0E, nRst, $04, nG4, $10, nRst, $02
	dc.b	nG4, $04, nRst, $0E, nEb4, $10, nRst, $02, nC5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nD5, $06, nC5, $12, nD4, $10, nRst, $02
	dc.b	nD4, $04, nRst, $0E, nC4, $10, nRst, $02, nF5, $04, nRst, $02
	dc.b	nBb5, $04, nRst, $08, nAb5, $04, nRst, $02, nG5, $10, nRst, $02
	dc.b	nBb3, $10, nRst, $02, nBb3, $04, nRst, $0E, nBb3, $10, nRst, $02
	dc.b	nBb4, $04, nRst, $02, nF5, $04, nRst, $08, nEb5, $04, nRst, $02
	dc.b	nC5, $0C, nRst, $06, nEb4, $04, nRst, $08, nEb4, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nEb4, $04, nRst, $02, nEb5, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nG4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $08, nG4, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $02, nEb4, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $08, nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nEb4, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $02, nG4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $08, nG4, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG4, $04, nRst, $02, nG5, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $08, nEb4, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nEb5, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $08, nG4, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $08, nG4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $02, nF4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $08, nF4, $04, nRst, $02
	dc.b	nF5, $04, nRst, $08, nF4, $04, nRst, $02, nF5, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF4, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nG4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $08, nG4, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $02
	smpsJump            Snd_ProtoMenu_Jump06

; PSG2 Data
Snd_ProtoMenu_PSG2:
	dc.b	nRst, $7F, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	$42		; Liliam: remove leading pause from proto competition music
;	dc.b	$72		;
	smpsJump            Snd_ProtoMenu_Jump06

; PSG3 Data
Snd_ProtoMenu_PSG3:
	smpsPSGvoice        sTone_02
	smpsPSGform         $E7
	dc.b	nRst, $30	; Liliam: remove leading pause from proto competition music
;	dc.b	nRst, $60	;

Snd_ProtoMenu_Jump05:
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, $04, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $04, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	$04, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $04
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $04, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $04, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nRst, $60
	smpsJump            Snd_ProtoMenu_Jump05

Snd_ProtoMenu_Voices:
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
;	$01, $01, $01, $02, 	$8D, $07, $07, $52, 	$09, $00, $00, $03
;	$01, $02, $02, $00, 	$52, $02, $02, $28, 	$18, $22, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $01, $01
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $12, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $00, $02, $02, $01
	smpsVcDecayLevel    $02, $00, $00, $05
	smpsVcReleaseRate   $08, $02, $02, $02
	smpsVcTotalLevel    $80, $18, $22, $18

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
;	$1C
;	$7C, $37, $3E, $37, 	$94, $99, $94, $99, 	$08, $0A, $08, $0A
;	$00, $05, $00, $05, 	$3F, $4F, $3F, $4F, 	$2B, $80, $1B, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $07
	smpsVcCoarseFreq    $07, $0E, $07, $0C
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $19, $14, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $08, $0A, $08
	smpsVcDecayRate2    $05, $00, $05, $00
	smpsVcDecayLevel    $04, $03, $04, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1B, $80, $2B

;	Voice $0D
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
;	$14
;	$71, $72, $31, $31, 	$0F, $0F, $0F, $0F, 	$00, $0F, $00, $00
;	$00, $00, $00, $00, 	$0F, $AF, $0F, $0F, 	$32, $80, $28, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $0F, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $0A, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $80, $32

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
;	$71, $00, $30, $01, 	$1F, $1F, $1D, $1F, 	$06, $06, $06, $05
;	$05, $05, $02, $05, 	$4F, $4F, $2F, $3F, 	$1E, $28, $1E, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $06, $06, $06
	smpsVcDecayRate2    $05, $02, $05, $05
	smpsVcDecayLevel    $03, $02, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1E, $28, $1E

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

