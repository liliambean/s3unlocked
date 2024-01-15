Snd_Unused_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Snd_Unused_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Snd_Unused_DAC
	smpsHeaderFM        Snd_Unused_FM1,	$00, $09	; Fred: improve pitch, volume levels and channel order
	smpsHeaderFM        Snd_Unused_FM2,	$00, $09	;
	smpsHeaderFM        Snd_Unused_FM5,	$00, $09	;
	smpsHeaderFM        Snd_Unused_FM4,	$00, $0B	;
;	smpsHeaderFM        Snd_Unused_FM1,	$00, $0D	;
;	smpsHeaderFM        Snd_Unused_FM2,	$0C, $09	;
	smpsHeaderFM        Snd_Unused_FM3,	$00, $11
;	smpsHeaderFM        Snd_Unused_FM4,	$00, $11	;
;	smpsHeaderFM        Snd_Unused_FM5,	$00, $11	;
	smpsHeaderPSG       Snd_Unused_PSG1,	$00, $02, $00, $00
	smpsHeaderPSG       Snd_Unused_PSG2,	$00, $02, $00, $00
	smpsHeaderPSG       Snd_Unused_PSG3,	$00, $02, $00, $00

; FM1 Data
Snd_Unused_FM1:
	smpsSetvoice        $00
	smpsModSet          $11, $01, $09, $08

Snd_Unused_Jump04:
	dc.b	nAb4, $24, nRst, $18, nFs4, $0C, nAb4, $06, nRst, nA4, $0C, nRst
	dc.b	nAb4, $14, nRst, $04, nE4, $14, nRst, $04, nFs4, $24, nAb4, nRst
	dc.b	$18, nFs4, $0C, nAb4, $06, nRst, nA4, $0C, nRst, nAb4, $14, nRst
	dc.b	$04, nE4, $14, nRst, $04, nFs4, $24, nG4, $30, smpsNoAttack, $18, nB4
	dc.b	nA4, $30, nFs4, nAb4, smpsNoAttack, $30, smpsNoAttack, $60, nC4, $24, nRst, nE4
	dc.b	$0C, nD4, nRst, nA3, $18, nFs3, nA3, $24, nRst, $30, nEb4, $12
	dc.b	nE4, nFs4, $0C, $18, nG4, $0C, nE4, $30, nRst, $0C, nCs4, $30
	dc.b	nEb4, nE4, $14, nRst, $04, nE4, $14, nRst, $04, nE4, $12, nFs4
	dc.b	nAb4, $0C, nB4, $30, smpsNoAttack, $30, smpsNoAttack, $60, nA5, $24, nAb5, nE5
	dc.b	$18, smpsNoAttack, $30, smpsNoAttack, $18, nAb5, nA5, $10, nRst, $08, nA5, $0C
	dc.b	nAb5, $18, nA5, $0C, nAb5, nE5, smpsNoAttack, $30, smpsNoAttack, $18, nFs5, $10
	dc.b	nRst, $08, nG5, $24, nFs5, nE5, $18, nA5, nG5, nFs5, nE5, nAb5
	dc.b	$30, smpsNoAttack, $30, smpsNoAttack, $60, nA5, $24, nAb5, nE5, $18, nRst, $30
	dc.b	nRst, nA5, $10, nRst, $08, nA5, $0C, nAb5, $14, nRst, $04, nA5
	dc.b	$0C, nAb5, nE5, nRst, $30, nE5, $10, nRst, $08, nFs5, $10, nRst
	dc.b	$08, nG5, $24, nFs5, nE5, $18, nA5, nFs5, nA5, nD6, nE6, $30
	dc.b	smpsNoAttack, $30, smpsNoAttack, $60, smpsNoAttack, $60, smpsNoAttack, $30, nRst, $30
	smpsJump            Snd_Unused_Jump04

; FM2 Data
Snd_Unused_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00

Snd_Unused_Jump03:
	dc.b	nE2, $0C, nD2, nE2, nRst, $06, nE2, nRst, nE2, nD2, $0C, nE2
	dc.b	$12, nE3, $04, nRst, $02, nE2, $0C, nD2, nE2, nRst, $06, nE2
	dc.b	nRst, nE2, nD2, $0C, nE2, $12, nE3, $04, nRst, $02, nE2, $0C
	dc.b	nD2, nE2, nRst, $06, nE2, nRst, nE2, nD2, $0C, nE2, $12, nE3
	dc.b	$04, nRst, $02, nE2, $0C, nD2, nE2, nRst, $06, nE2, $0C, nE3
	dc.b	$04, nRst, $02, nE2, $0C, nD2, $06, nD3, $04, nRst, $02, nD2
	dc.b	$0C, nC2, nB1, nC2, nRst, $06, nC2, nRst, nC2, nB1, $0C, nC2
	dc.b	$12, nC3, $04, nRst, $02, nD2, $0C, nCs2, nD2, nRst, $06, nD2
	dc.b	$0C, nD3, $04, nRst, $02, nD2, $0C, nEb2, $06, nEb3, nEb2, $0C
	dc.b	nE2, $0F, nRst, $03, nE2, $0F, nRst, $03, nAb2, $0F, nRst, $03
	dc.b	nA2, $12, nB2, $0C, nD3, nE2, $0F, nRst, $03, nE2, $0F, nRst
	dc.b	$03, nAb2, $0F, nRst, $03, nA2, $12, nB2, $0C, nD3, nC2, $12
	dc.b	nB1, nC2, $18, nRst, $24, nD2, $12, nCs2, nD2, $18, nRst, $24
	dc.b	nEb2, $12, nD2, nEb2, $18, nRst, $24, nE2, $12, nEb2, nE2, $18
	dc.b	nRst, $24, nA1, $12, nAb1, nA1, nAb1, nA1, $06, nRst, nA1, $0C
	dc.b	$12, nAb1, nA1, nAb1, nA1, $06, nRst, nA1, $0C, nB1, nB2, nAb1
	dc.b	nAb2, nA1, nA2, nBb1, nBb2, nB1, nB2, nCs2, nCs3, nD2, nD3, nEb2
	dc.b	nEb3, nE2, nD2, nE2, nRst, $06, nE2, nRst, nE2, nD2, $0C, nE2
	dc.b	$12, nE3, $04, nRst, $02, nE2, $0C, nD2, nE2, nRst, $06, nE2
	dc.b	nRst, nE2, nD2, $0C, nE2, $12, nE3, $04, nRst, $02, nE2, $0C
	dc.b	nD2, nE2, nRst, $06, nE2, nRst, nE2, nD2, $0C, nE2, $12, nE3
	dc.b	$04, nRst, $02, nE2, $0C, nD2, nE2, nRst, $06, nE2, $0C, nE3
	dc.b	$04, nRst, $02, nE2, $0C, nD2, $06, nD3, $04, nRst, $02, nD2
	dc.b	$0C, nC2, nB1, nC2, nRst, $06, nC2, nRst, nC2, nB1, $0C, nC2
	dc.b	$12, nC3, $06, nD2, $0C, nCs2, nD2, nRst, $06, nD2, $0C, nD3
	dc.b	$04, nRst, $02, nD2, $0C, nEb2, $06, nEb3, nEb2, $0C, nE2, $0F
	dc.b	nRst, $03, nE2, $0F, nRst, $03, nAb2, $0F, nRst, $03, nA2, $12
	dc.b	nB2, $0C, nD3, nE2, $0F, nRst, $03, nE2, $0F, nRst, $03, nAb2
	dc.b	$0F, nRst, $03, nA2, $12, nB2, $0C, nD3, nE2, nD2, nE2, nRst
	dc.b	$06, nE2, nRst, nE2, nD2, $0C, nE2, $12, nE3, $04, nRst, $02
	dc.b	nE2, $0C, nD2, nE2, nRst, $06, nE2, nRst, nE2, nD2, $0C, nE2
	dc.b	$12, nE3, $04, nRst, $02, nE2, $0C, nD2, nE2, nRst, $06, nE2
	dc.b	nRst, nE2, nD2, $0C, nE2, $12, nE3, $04, nRst, $02, nE2, $0C
	dc.b	nD2, nE2, nRst, $06, nE2, $0C, nE3, $06, nE2, $0C, nD2, $06
	dc.b	nD3, nD2, $0C, nC2, nB1, nC2, nRst, $06, nC2, nRst, nC2, nB1
	dc.b	$0C, nC2, $12, nC3, $06, nD2, $0C, nCs2, nD2, nRst, $06, nD2
	dc.b	$04, nRst, $08, nD2, $06, nCs2, $0C, nD2, $12, nD3, $06, nE2
	dc.b	$0F, nRst, $03, nE2, $0F, nRst, $03, nAb2, $0F, nRst, $03, nA2
	dc.b	$0F, nRst, $03, nB2, $0A, nRst, $02, nD3, $0A, nRst, $02, nE2
	dc.b	$0F, nRst, $03, nE2, $0F, nRst, $03, nAb2, $0F, nRst, $03, nA2
	dc.b	$0F, nRst, $03, nB2, $0A, nRst, $02, nD3, $0A, nRst, $02, nE2
	dc.b	$0F, nRst, $03, nE2, $0F, nRst, $03, nAb2, $0F, nRst, $03, nA2
	dc.b	$0F, nRst, $03, nB2, $0A, nRst, $02, nD3, $0A, nRst, $02, nE2
	dc.b	$0F, nRst, $03, nE2, $0F, nRst, $03, nAb2, $0F, nRst, $03, nA2
	dc.b	$0F, nRst, $03, nB2, $0A, nRst, $02, nD3, $0A, nRst, $02
	smpsJump            Snd_Unused_Jump03

; FM3 Data
Snd_Unused_FM3:
	smpsSetvoice        $02

Snd_Unused_Jump02:
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, $24
	smpsSetvoice        $02
	dc.b	nRst, $0C
	smpsModSet          $07, $01, $04, $03
	smpsPan             panCenter, $00
	dc.b	nE5, $30, nRst, nFs5, nRst, nFs5, nRst, nG5, nRst, nA5, $60, smpsNoAttack
	dc.b	$60, nB5, $60, nB2, $04, nCs3, nEb3, nE3, nEb3, nE3, nFs3, nAb3
	dc.b	nFs3, nAb3, nA3, nB3, nA3, nB3, nCs4, nEb4, nB3, nCs4, nEb4, nE4
	dc.b	nEb4, nE4, nFs4, nAb4, nB5, $1E, nRst, $06, nB5, $1E, nRst, $06
	dc.b	nB5, $18, nA5, $24, nAb5, nE5, $18, nB5, $1E, nRst, $06, nB5
	dc.b	$1E, nRst, $06, nB5, $18, nA5, $10, nRst, $08, nA5, $0C, nAb5
	dc.b	$18, nA5, $0C, nAb5, nE5, nE6, $24, nD6, nC6, $12, nRst, $06
	dc.b	nC6, $18, nB5, nA5, nB5, $14, nRst, $04, nB5, $30, smpsNoAttack, $30
	dc.b	nRst, $30, nRst, nB5, $1E, nRst, $06, nB5, $1E, nRst, $06, nB5
	dc.b	$14, nRst, $04, nA5, $24, nAb5, nE5, $18, nB5, $1E, nRst, $06
	dc.b	nB5, $1E, nRst, $06, nB5, $14, nRst, $04, nA5, $10, nRst, $08
	dc.b	nA5, $0C, nAb5, $18, nA5, $0C, nAb5, nE5, nE6, $24, nD6, nC6
	dc.b	$14, nRst, $04, nC6, $18, nB5, nA5, nD6, nAb6, $30, smpsNoAttack, $30
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst
	smpsJump            Snd_Unused_Jump02

; FM4 Data
Snd_Unused_FM4:
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsModSet          $05, $01, $07, $03

Snd_Unused_Jump01:
	dc.b	nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E, nA4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E, nA4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nG4, $0F, nRst, $03, nG4, $04, nRst, $0E, nFs4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nA4, $0F, nRst, $03, nA4, $04, nRst, $0E, nG4, $0F, nRst, $03
	dc.b	nFs4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nB4, $0F, nRst, $03, nA4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b	nB4, $0F, nRst, $03, nA4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	smpsSetvoice        $02
	smpsModSet          $07, $01, $04, $02
	dc.b	nC4, $30, nRst, nD4, nRst, nEb4, nRst, nE4, nRst, nE4, $60, smpsNoAttack
	dc.b	$60, nFs4, $60, smpsNoAttack, $60
	smpsSetvoice        $03
	smpsModSet          $05, $01, $07, $03
	dc.b	nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E, nA4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E, nA4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nG4, $0F, nRst, $03, nG4, $04, nRst, $0E, nFs4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nA4, $0F, nRst, $03, nA4, $04, nRst, $0E, nG4, $0F, nRst, $03
	dc.b	nFs4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nB4, $0F, nRst, $03, nA4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b	nB4, $0F, nRst, $03, nA4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b	nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E, nA4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E, nA4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nG4, $0F, nRst, $03, nG4, $04, nRst, $0E, nFs4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nA4, $0F, nRst, $03, nA4, $04, nRst, $0E, nG4, $0F, nRst, $03
	dc.b	nFs4, $0F, nRst, $03, nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b	nB4, $0F, nRst, $03, nA4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b	nB4, $0F, nRst, $03, nA4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b	nB4, $0F, nRst, $03, nA4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b	nB4, $0F, nRst, $03, nA4, $04, nRst, $0E, nAb4, $0F, nRst, $03
	dc.b	nAb4, $0F, nRst, $03, nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	smpsJump            Snd_Unused_Jump01

; FM5 Data
Snd_Unused_FM5:
	smpsSetvoice        $03
	smpsPan             panRight, $00
	smpsModSet          $05, $01, $07, $03

Snd_Unused_Jump00:
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nC4, $0F, nRst, $03, nC4, $04, nRst, $0E, nC4, $0F, nRst, $03
	dc.b	nC4, $0F, nRst, $03, nC4, $0A, nRst, $02, nC4, $0A, nRst, $02
	dc.b	nD4, $0F, nRst, $03, nD4, $04, nRst, $0E, nD4, $0F, nRst, $03
	dc.b	nD4, $0F, nRst, $03, nD4, $0A, nRst, $02, nD4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	smpsSetvoice        $02
	smpsModSet          $07, $01, $04, $02
	dc.b	nG3, $30, nRst, nA3, nRst, nA3, nRst, nB3, nRst, nCs4, smpsNoAttack, $30
	dc.b	nRst, $30, nRst, nEb4, smpsNoAttack, $30, nRst, $30, nRst
	smpsSetvoice        $03
	smpsModSet          $05, $01, $07, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $01, nRst, $0B
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nC4, $0F, nRst, $03, nC4, $04, nRst, $0E, nC4, $0F, nRst, $03
	dc.b	nC4, $0F, nRst, $03, nC4, $0A, nRst, $02, nC4, $0A, nRst, $02
	dc.b	nD4, $0F, nRst, $03, nD4, $04, nRst, $0E, nD4, $0F, nRst, $03
	dc.b	nD4, $0F, nRst, $03, nD4, $0A, nRst, $02, nD4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nC4, $0F, nRst, $03, nC4, $04, nRst, $0E, nC4, $0F, nRst, $03
	dc.b	nC4, $0F, nRst, $03, nC4, $0A, nRst, $02, nC4, $0A, nRst, $02
	dc.b	nD4, $0F, nRst, $03, nD4, $04, nRst, $0E, nD4, $0F, nRst, $03
	dc.b	nD4, $0F, nRst, $03, nD4, $0A, nRst, $02, nD4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b	nE4, $0F, nRst, $03, nE4, $04, nRst, $0E, nE4, $0F, nRst, $03
	dc.b	nE4, $0F, nRst, $03, nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	smpsJump            Snd_Unused_Jump00

; PSG1 Data
Snd_Unused_PSG1:
	smpsStop

; PSG2 Data
Snd_Unused_PSG2:
	smpsStop

; PSG3 Data
Snd_Unused_PSG3:
	smpsStop

; DAC Data
Snd_Unused_DAC:
	dc.b	dKickS3, $18, dSnareS3, $12, $06, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $12, $06
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $12, $06, dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	dc.b	$12, $06, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $12, $06, dKickS3, $18, dSnareS3
	dc.b	dKickS3, dSnareS3, $12, $06, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, $12, $06, dKickS3
	dc.b	$18, dSnareS3, dKickS3, dSnareS3, $12, $06, dKickS3, dSnareS3, dSnareS3, $0C, dSnareS3, dSnareS3
	dc.b	$06, dSnareS3, dKickS3, $18, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, $12
	dc.b	$06, dKickS3, $18, dKickS3, dKickS3, dSnareS3, dKickS3, dKickS3, dKickS3, dSnareS3, $0C, $06
	dc.b	dSnareS3, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3
	dc.b	dKickS3, dSnareS3, dKickS3, $0C, dSnareS3, dKickS3, $06, dSnareS3, dSnareS3, $0C, dSnareS3, dSnareS3
	dc.b	dSnareS3, $06, dSnareS3, dSnareS3, $0C, dKickS3, $18, dSnareS3, $12, $06, dKickS3, dSnareS3
	dc.b	$12, $18, dKickS3, dSnareS3, $12, $06, dKickS3, dSnareS3, $12, $18, dKickS3, dSnareS3
	dc.b	$12, $06, dKickS3, dSnareS3, $12, $18, dKickS3, dSnareS3, $12, $06, dKickS3, dSnareS3
	dc.b	$12, $0C, $06, dSnareS3, dKickS3, $18, dSnareS3, $12, $06, dKickS3, dSnareS3, $12
	dc.b	$18, dKickS3, dSnareS3, $12, $06, dKickS3, dSnareS3, $12, $18, dKickS3, dSnareS3, $12
	dc.b	$06, dKickS3, dSnareS3, $12, $18, dKickS3, dSnareS3, $12, $06, dKickS3, dSnareS3, $12
	dc.b	$0C, $06, dSnareS3, dKickS3, $18, dSnareS3, $12, $06, dKickS3, dSnareS3, $12, dSnareS3
	dc.b	dSnareS3, $06, dKickS3, $18, dSnareS3, $12, $06, dKickS3, dSnareS3, $12, dSnareS3, dSnareS3
	dc.b	$06, dKickS3, $18, dSnareS3, $12, $06, dKickS3, dSnareS3, $12, dSnareS3, dSnareS3, $06
	dc.b	dKickS3, $18, dSnareS3, $12, $06, dKickS3, dSnareS3, $12, dSnareS3, dSnareS3, $06, dKickS3
	dc.b	$18, dSnareS3, $12, $06, dKickS3, dSnareS3, $12, dSnareS3, dSnareS3, $06, dKickS3, $18
	dc.b	dSnareS3, $12, $06, dKickS3, dSnareS3, $12, dSnareS3, dSnareS3, $06, dKickS3, $18, dSnareS3
	dc.b	$12, $06, dKickS3, dSnareS3, $12, dSnareS3, dSnareS3, $06, dKickS3, $18, dSnareS3, $12
	dc.b	$06, dKickS3, dSnareS3, $12, dSnareS3, dSnareS3, $06, dKickS3, $18, dSnareS3, $12, $06
	dc.b	dKickS3, dSnareS3, $12, dSnareS3, dSnareS3, $06, dKickS3, $18, dSnareS3, $12, $06, dKickS3
	dc.b	dSnareS3, $12, dSnareS3, dSnareS3, $06
	smpsJump            Snd_Unused_DAC

Snd_Unused_Voices:
;	Voice $00
;	$3A
;	$11, $12, $51, $31, 	$1E, $19, $14, $14, 	$08, $0A, $0A, $05
;	$08, $08, $05, $05, 	$3F, $4F, $3F, $5F, 	$19, $1E, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $01, $01
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $14, $19, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $0A, $08
	smpsVcDecayRate2    $05, $05, $08, $08
	smpsVcDecayLevel    $05, $03, $04, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $1E, $19

;	Voice $01
;	$18
;	$37, $30, $30, $31, 	$9E, $DC, $1C, $9C, 	$0D, $06, $01, $01
;	$08, $0A, $03, $05, 	$BF, $BF, $3F, $2F, 	$2C, $22, $14, $82
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $00, $07
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $06, $0D
	smpsVcDecayRate2    $05, $03, $0A, $08
	smpsVcDecayLevel    $02, $03, $0B, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $82, $14, $22, $2C

;	Voice $02
;	$2C
;	$72, $78, $34, $34, 	$1F, $12, $1F, $12, 	$00, $0A, $00, $0A
;	$00, $00, $00, $00, 	$0F, $1F, $0F, $1F, 	$16, $90, $17, $89
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $08, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $0A, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $89, $17, $90, $16

;	Voice $03
;	$3A
;	$22, $07, $0E, $13, 	$5F, $1F, $19, $19, 	$03, $03, $03, $03
;	$02, $02, $02, $02, 	$1F, $1F, $1F, $1F, 	$1E, $19, $2E, $84
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $02
	smpsVcCoarseFreq    $03, $0E, $07, $02
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $19, $19, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $03, $03, $03
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $84, $2E, $19, $1E

