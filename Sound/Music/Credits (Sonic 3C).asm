Sonic_3C_0517_credits_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Sonic_3C_0517_credits_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $18

	smpsHeaderDAC       Sonic_3C_0517_credits_DAC
	smpsHeaderFM        Sonic_3C_0517_credits_FM1,	$00, $00
	smpsHeaderFM        Sonic_3C_0517_credits_FM2,	$00, $00
	smpsHeaderFM        Sonic_3C_0517_credits_FM3,	$00, $00
	smpsHeaderFM        Sonic_3C_0517_credits_FM4,	$00, $00
	smpsHeaderFM        Sonic_3C_0517_credits_FM5,	$00, $00
	smpsHeaderPSG       Sonic_3C_0517_credits_PSG1,	$00, $00, $00, sTone_1B
	smpsHeaderPSG       Sonic_3C_0517_credits_PSG2,	$00, $00, $00, sTone_1B
	smpsHeaderPSG       Sonic_3C_0517_credits_PSG3,	$00, $00, $00, sTone_1B

; FM1 Data
Sonic_3C_0517_credits_FM1:
	smpsSetNote         $4C
	smpsSetVol          $75
	dc.b	nRst, $30
	smpsSetvoice        $20
	dc.b	nD2, $10, $07, nRst, $06, nRst, $05, nD2, $07, nRst, $06, nRst
	dc.b	$05, nD3, $06, nD2, nRst, $07, nD3, $06, nRst, nC2, $0C, smpsNoAttack
	dc.b	$0C, $0C, nRst, $06, nC3, nRst, $0C, nRst, $18, nRst, nD2, $11, $07
	dc.b	nRst, $06, nRst, $05, nD2, $07, nRst, $06, nRst, $05, nD3, $06
	dc.b	nD2, nRst, $07, nD3, $06, nRst, nC2, $0C, smpsNoAttack, $06, nRst, nC3
	dc.b	nRst, nC2, nC3, nC2, nRst, nC2, nRst, nG1, nRst, nB1, nRst, nBb1
	dc.b	$0C, smpsNoAttack, $0D, nBb1, $0C, nBb2, nBb1, nBb1, nBb2, nBb1, nAb1, smpsNoAttack
	dc.b	nAb1, nAb1, nAb2, nAb1, nAb1, nAb2, nAb1, nC2, smpsNoAttack, nC2, nC2, nC3
	dc.b	nC2, nC3, nC2, nC3, nC2, smpsNoAttack, $30
	smpsSetvoice        $00
	smpsSetNote         $58
	smpsSetVol          $75
	smpsModSet          $03, $01, $02, $05
	dc.b	nRst, $0C, nA0, $0C, nBb0, $0C, nB0, $0C

Sonic_3C_0517_credits_Loop2C:
	dc.b	nC1, $16, nRst, $02, nC1, $10, nRst, $02, nC1, $10, nRst, $02
	dc.b	nG0, $0A, nRst, $02, nC1, $0A, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nF0, $16, nRst, $02, nF0, $10, nRst, $02, nF0, $0A, nRst, $02
	dc.b	nF0, $04, nRst, $02, nA0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b	nB0, $0A, nRst, $02
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop2C
	smpsSetvoice        $03
	smpsFMAlterVol      $03
	smpsCall            Sonic_3C_0517_credits_Call08
	dc.b	nRst, $2C, nRst, $60, nRst, nRst, nRst
	smpsAlterNote       $00
	smpsSetNote         $40
	smpsSetVol          $73

Sonic_3C_0517_credits_Loop2D:
	smpsSetvoice        $07
	dc.b	nRst, $06, nEb4, nRst, $0C, nEb4, $12, nEb4, $06, nRst, $18, nC4
	dc.b	$06, nBb3, nG3, nF3, nRst, $18, nEb4, $12, nEb4, $06, nRst, $18
	smpsSetvoice        $08
	smpsModSet          $01, $01, $03, $05
	dc.b	nEb5
	smpsModSet          $01, $01, $01, $04
	smpsSetvoice        $07
	dc.b	nRst, $06, nEb4, nRst, $0C, nEb4, $12, nEb4, $06, nRst, $18, nC4
	dc.b	$06, nBb3, nG3, nF3
	smpsModSet          $01, $01, $01, $04
	dc.b	nRst, $18, nEb4, $12, nEb4, $06, nRst, $18
	smpsSetvoice        $08
	smpsModSet          $06, $01, $12, $01
	dc.b	nEb5, $0C
	smpsModSet          $01, $01, $01, $04
	dc.b	nEb5, $0C
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop2D
	dc.b	nRst, $0C, nC5, nRst, $48
	smpsSetNote         $40
	smpsSetVol          $7D
	smpsSetvoice        $0B

Sonic_3C_0517_credits_Loop2E:
	dc.b	nC3, $0C, $18, $06, nC3, nBb2, $0C, $18, $06, nBb2, nAb2, $0C
	dc.b	$18, $06, nAb2, nG2, $0C, $18, $06, nG2, nC3, $0C, $18, $06
	dc.b	nC3, nEb3, $0C, $18, $06, nEb3, nBb2, $0C, $18, $06, nBb2, nBb2
	dc.b	$0C, $18, $06, nBb2
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop2E
	smpsSetNote         $28
	smpsSetVol          $72
	smpsSetvoice        $0F
	smpsAlterNote       $FE
	dc.b	nG2, $07, nRst, $04, nG2, $08, nRst, $04, nRst, $24, nG3, nG2, nG2
	dc.b	$0C, nRst, nC3, $14, nB2, $10, nG2, $08, nRst, $04, nG2, $08
	dc.b	nRst, $04, nRst, $24, nG3, nG2, nG2, $0C, nRst, $30

Sonic_3C_0517_credits_Loop2F:
	dc.b	nC3, $60, nC4, $24, nC3, nC4, $18, nBb2, $06, nRst, $06, nBb2
	dc.b	$54, nBb3, $24, nBb2, nBb3, $18, nA2, $06, nRst, $06, nA2, $48
	dc.b	nG3, $06, nAb3, nA3, $24, nA2, nA3, $18, nAb2, $06, nRst, $06
	dc.b	nAb2, $54, nAb3, $24, nAb2, nBb3, $18
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop2F
	dc.b	nC3, $60
	smpsSetNote         $40
	smpsSetVol          $78
	smpsModSet          $0D, $01, $02, $06

Sonic_3C_0517_credits_Loop30:
	smpsCall            Sonic_3C_0517_credits_Call03
	dc.b	nC5, $05, nA4, $0C
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop30
	smpsSetNote         $40
	smpsSetVol          $74
	smpsSetvoice        $18
	smpsCall            Sonic_3C_0517_credits_Call04
	dc.b	nRst, $18
	smpsSetvoice        $03
	smpsSetVol          $70
	smpsSetvoice        $1A
	smpsCall            Sonic_3C_0517_credits_Call05
	dc.b	nRst, $10
	smpsSetVol          $6F
	smpsSetNote         $4D

Sonic_3C_0517_credits_Jump00:
	smpsPan             panCenter, $00
	smpsSetvoice        $1C
	smpsModSet          $14, $01, $06, $06
	smpsFMAlterVol      $18
	dc.b	nD3, $06, nA2
	smpsFMAlterVol      $FD
	dc.b	nD3, nFs3
	smpsFMAlterVol      $FD
	dc.b	nD3, nFs3
	smpsFMAlterVol      $FD
	dc.b	nA3, nFs3
	smpsFMAlterVol      $FD
	dc.b	nA3, nC4
	smpsFMAlterVol      $FD
	dc.b	nA3, nC4
	smpsFMAlterVol      $FD
	dc.b	nD4, nC4
	smpsFMAlterVol      $FD
	dc.b	nD4, nFs4
	smpsFMAlterVol      $FD
	dc.b	nBb3, $02, smpsNoAttack, nB3, $04, nRst, $06, nB3, $0C, nC4, $06, nRst
	dc.b	nC4, $0C, nD4, $0C, nRst, nD4, $06, nRst, nBb3, $04, smpsNoAttack, nB3
	dc.b	$0E, nRst, $06, nB3, $0C, nC4, $06, nRst, nD4, $12, nRst, $06
	dc.b	nCs4, nRst, nD4, $12, nRst, $06, nC4, $0C, nRst, nC4, nRst, nC4
	dc.b	nB3, nC4, $06, nRst, nA3, $6C, nBb3, $02, smpsNoAttack, nB3, $04, nRst
	dc.b	$06, nB3, $0C, nC4, $06, nRst, nC4, $0C, nD4, $0C, nRst, nD4
	dc.b	$06, nRst, nBb3, $04, smpsNoAttack, nB3, $0E, nRst, $06, nB3, $0C, nC4
	dc.b	$06, nRst, nD4, $12, nRst, $06, nCs4, nRst, nD4, $12, nRst, $06
	smpsFMAlterVol      $FE
	dc.b	nF4, $0C, nRst, nF4, nRst, nF4, nE4, nF4, $06, nRst
	smpsFMAlterVol      $FE
	dc.b	nFs4, $04

Sonic_3C_0517_credits_Loop31:
	smpsFMAlterVol      $FF
	dc.b	smpsNoAttack, nG4, $17
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop31
	smpsStop

Sonic_3C_0517_credits_Call05:
	dc.b	nAb3, $06, nBb3, nC4, nEb4
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Call05

Sonic_3C_0517_credits_Loop4C:
	dc.b	nBb3, $06, nC4, nD4, nF4
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop4C
	dc.b	nRst, $60, nRst, $06, nBb4, $12, nA4, $06, nRst, nG4, nRst, nBb4
	dc.b	nRst, nG4, nA4, nRst, nBb4, $12

Sonic_3C_0517_credits_Loop4D:
	dc.b	nAb3, $06, nBb3, nC4, nEb4
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop4D

Sonic_3C_0517_credits_Loop4E:
	dc.b	nBb3, $06, nC4, nD4, nF4
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop4E
	dc.b	nRst, $60, nRst, $06, nBb4, $12, nA4, $06, nRst, nG4, nRst, nBb4
	dc.b	nG4, nRst, nC5, nRst, $08
	smpsReturn

Sonic_3C_0517_credits_Call04:
	dc.b	nRst, $0C, nD4, nD4, nC4, nC4, nB3, nB3, nA3, nAb3, $18, nA3
	dc.b	$08, nRst, $04, nB3, $08, nRst, $34, nRst, $0C, nAb4, $08, nRst
	dc.b	$04, nA4, $08, nRst, $04, nB4, $08, nRst, $04, nC5, $08, nRst
	dc.b	$04, nB4, $08, nRst, $04, nA4, $08, nRst, $04, nB4, $08, nRst
	dc.b	$04, nD5, $08, nRst, $04, nC5, $08, nRst, $04, nB4, $08, nRst
	dc.b	$04, nA4, $08, nRst, $04, nAb4, $08, nRst, $04, nF4, $08, nRst
	dc.b	$04, nE4, $08, nRst, $04, nD4, $08, nRst, $04, nE5, $08, nRst
	dc.b	$10, nD5, $08, nRst, $40, nC5, $08, nRst, $10, nB4, $08, nRst
	dc.b	$40, nE5, $08, nRst, $10, nD5, $08, nRst, $40, nAb5, $08, nRst
	dc.b	$10, nF5, $08, nRst, $10, nB5, $08, nRst, $04, nD6, $08, nRst
	dc.b	$04
	smpsReturn

Sonic_3C_0517_credits_Call03:
	smpsSetvoice        $13
	dc.b	nRst, $0C, nB4, $04, nRst, $08, nC5, $04, nRst, $08, nB4, $24
	dc.b	nE5, $04, nRst, $14, nEb5, $02, nE5, $16, nC5, $04, nRst, $08
	dc.b	nA4, $18, nE4, $60, nRst, $24
	smpsSetvoice        $14
	dc.b	nRst, $36, nD5, $06, nE5, nG5, nB4, nC5, $02, smpsNoAttack
	smpsReturn

Sonic_3C_0517_credits_Call08:
	dc.b	nEb4, $0C, nD4, $02, nC4, nBb3, nAb3, nG3, nF3, nC4, $0A, nRst
	dc.b	$02, nEb4, $04, nRst, $02, nE4, nF4, nRst, $08, nD4, $10, nRst
	dc.b	$02, nC4, $04, nRst, $08, nBb3, $04, nRst, $08, nFs3, $02, nG3
	dc.b	$14, nRst, $02, nFs3, nG3, $08, nRst, $02, nF3, $04, nRst, $02
	dc.b	nFs3, nG3, $28, nC4, $04, nRst, $02, nD4, $04, nRst, $02, nEb4
	dc.b	$0C, nD4, $02, nC4, nBb3, nAb3, nG3, nF3, nC4, $0A, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nE4, nF4, nRst, $08, nD4, $10, nRst, $02
	dc.b	nC4, $04, nRst, $08, nB3, $04, nRst, $08, nC4, $10, nRst, $02
	dc.b	nC4, $04, nRst, $02, nD4, $0A, nRst, $02, nC4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $08, nEb4, $10, nRst, $02, nF4, $0A, nRst, $02
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $02, nEb4, $0C, nD4, $02
	dc.b	nC4, nBb3, nAb3, nG3, nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst
	dc.b	$02, nE4, nF4, nRst, $08, nD4, $10, nRst, $02, nC4, $04, nRst
	dc.b	$08, nBb3, $04, nRst, $08, nFs3, $02, nG3, $14, nRst, $02, nFs3
	dc.b	nG3, $08, nRst, $02, nF3, $04, nRst, $02, nFs3, nG3, $28, nC4
	dc.b	$04, nRst, $02, nD4, $04, nRst, $02, nEb4, $10, nRst, $02, nEb4
	dc.b	$04, nRst, $08, nD4, $04, nRst, $02, nEb4, $10, nRst, $02, nEb4
	dc.b	$04, nRst, $02, nF4, $0A, nRst, $02, nEb4, $04, nRst, $08, nAb4
	dc.b	$04, nRst, $0E, nC5, $04, nRst, $08, nC5, $04, nRst, $08, nC5
	dc.b	$04, nRst, $02, nC5, $0A, nRst, $02, nB4, $04
	smpsReturn

; FM2 Data
Sonic_3C_0517_credits_FM2:
	smpsSetvoice        $1F
	smpsSetVol          $68
	dc.b	nRst, $30
	smpsCall            Sonic_3C_0517_credits_Call07
	dc.b	nRst, $0C
	smpsSetvoice        $01
	smpsSetNote         $4C
	smpsSetVol          $74
	dc.b	nRst, $0C
	smpsAlterNote       $05
	smpsModSet          $0F, $01, $06, $05
	smpsCall            Sonic_3C_0517_credits_Call02
	smpsSetvoice        $03
	smpsAlterPitch      $0C
	smpsFMAlterVol      $0C
	dc.b	nRst, $31
	smpsCall            Sonic_3C_0517_credits_Call08
	dc.b	nRst, $1F
	smpsSetvoice        $05
	smpsSetNote         $40
	smpsSetVol          $79

Sonic_3C_0517_credits_Loop25:
	dc.b	nC2, $0C, nRst, $18, nC2, $0C, nRst, $30
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop25
	dc.b	nRst, $60
	smpsAlterNote       $00
	smpsSetNote         $4C
	smpsSetVol          $77
	smpsSetvoice        $09
	smpsCall            Sonic_3C_0517_credits_Call09
	smpsCall            Sonic_3C_0517_credits_Call0A
	smpsCall            Sonic_3C_0517_credits_Call09
	smpsCall            Sonic_3C_0517_credits_Call09
	dc.b	nC2, nC1, nC3, nRst, $4E
	smpsSetNote         $40
	smpsSetVol          $77
	smpsSetvoice        $0C
	smpsModSet          $01, $01, $03, $03

Sonic_3C_0517_credits_Loop26:
	dc.b	nG4, $30, smpsNoAttack, $30, smpsNoAttack, nG4, nF4, nG4, smpsNoAttack, $30, nF4, smpsNoAttack
	dc.b	$30
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop26
	smpsSetNote         $40
	smpsSetVol          $68
	dc.b	nRst, $60, nRst, nRst, nRst

Sonic_3C_0517_credits_Loop27:
	smpsSetvoice        $10
	dc.b	nC4, $60, smpsNoAttack, $60, nBb3, smpsNoAttack, $60, nA3, smpsNoAttack, $60, nAb3, smpsNoAttack
	dc.b	$60
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop27
	dc.b	nC4, $60
	smpsSetNote         $40
	smpsSetVol          $76
	smpsModSet          $0D, $01, $02, $06

Sonic_3C_0517_credits_Loop28:
	smpsSetvoice        $15
	dc.b	nA1, $06, nA1, nA2, $0C, nA1, $06, nA1, nA1, $03, nRst, nA1
	dc.b	nRst, nAb1, $0C, nAb2, $04, nRst, $08, nAb1, $0C, nAb1, $06, nAb1
	dc.b	nG1, nG1, nG2, $0C, nG1, $06, nG1, nG1, $03, nRst, nG1, nRst
	dc.b	nAb1, $0C, nAb2, $04, nRst, $08, nAb1, $0C, nAb1, $06, nAb1, nA1
	dc.b	$0C, nA1, nA1, nG2, $06, nA2, nA1, $0C, nA1, nA1, nG2, $06
	dc.b	nA2, nG2, nA2, $03, nRst, nA1, $0C, nA1, nG2, $06, nA2, $03
	dc.b	nRst, nA1, $0C, nA1, nG2, $06, nA2, $03, nRst, nA1, $0C
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop28
	smpsSetNote         $40
	smpsSetVol          $75

Sonic_3C_0517_credits_Loop29:
	dc.b	nE1, $0C, nRst, $24, nE1, $0C, nE1, $0A, nRst, $1A
	smpsLoop            $00, $08, Sonic_3C_0517_credits_Loop29
	smpsSetVol          $73
	smpsSetvoice        $1B

Sonic_3C_0517_credits_Loop2A:
	dc.b	nAb1, $0C, nAb1, nAb1, $03, nRst, nAb2, nRst, nAb1, nRst, nAb2, nRst
	dc.b	nAb1, $0C, nAb1, nAb1, $03, nRst, nAb2, nRst, nAb1, nRst, nAb2, nRst
	dc.b	nBb1, $0C, nBb1, nBb1, $03, nRst, nBb2, nRst, nBb1, nRst, nBb2, nRst
	dc.b	nBb1, $0C, nBb1, nBb1, $03, nRst, nBb2, nRst, nBb1, nRst, nBb2, nRst
	dc.b	nC2, $06, nC2, $03, nRst, nBb2, $06, nC3, $03, nRst, nF2, $06
	dc.b	nG2, $03, nRst, nC2, nRst, nBb1, nRst, nC2, $06, nBb1, nC2, $03
	dc.b	nRst, nC2, $06, nRst, nC2, nRst, nC2, nC2, $0C, nC2, nRst, $48
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop2A
	smpsSetVol          $64
	smpsSetNote         $4D
	smpsPan             panCenter, $00
	smpsSetvoice        $1C
	smpsModSet          $15, $01, $06, $06
	smpsFMAlterVol      $18
	dc.b	nA2, $06, nFs2
	smpsFMAlterVol      $FD
	dc.b	nA2, nC3
	smpsFMAlterVol      $FD
	dc.b	nA2, nC3
	smpsFMAlterVol      $FD
	dc.b	nD3, nC3
	smpsFMAlterVol      $FD
	dc.b	nD3, nFs3
	smpsFMAlterVol      $FD
	dc.b	nD3, nFs3
	smpsFMAlterVol      $FD
	dc.b	nA3, nFs3
	smpsFMAlterVol      $FD
	dc.b	nA3, nC4
	smpsFMAlterVol      $FD
	dc.b	nRst, $03, nG3, $06, nRst, nG3, $0C, nA3, $06, nRst, nA3, $0C
	dc.b	nB3, $0C, nRst, nB3, $06, nRst, nFs3, $04, smpsNoAttack, nG3, $0E, nRst
	dc.b	$06, nG3, $0C, nA3, $06, nRst, nB3, $12, nRst, $06, nBb3, nRst
	dc.b	nB3, $12, nRst, $06, nA3, $0C, nRst, nA3, nRst, nA3, nAb3, nA3
	dc.b	$06, nRst, nFs3, $6C, nG3, $06, nRst, nG3, $0C, nA3, $06, nRst
	dc.b	nA3, $0C, nB3, $0C, nRst, nB3, $06, nRst, nFs3, $04, smpsNoAttack, nG3
	dc.b	$0E, nRst, $06, nG3, $0C, nA3, $06, nRst, nB3, $12, nRst, $06
	dc.b	nBb3, nRst, nB3, $12, nRst, $06
	smpsFMAlterVol      $FE
	dc.b	nC4, $0C, nRst, nC4, nRst, nC4, nB3, nA3, $06, nRst
	smpsFMAlterVol      $FE
	dc.b	nBb3, $04

Sonic_3C_0517_credits_Loop2B:
	smpsFMAlterVol      $FF
	dc.b	smpsNoAttack, nB3, $17
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop2B
	smpsStop

Sonic_3C_0517_credits_Call07:
	smpsModSet          $0C, $02, $01, $0E
	dc.b	nA4, $30, smpsNoAttack, $0C, nB4, nRst, nG4, smpsNoAttack, $30, smpsNoAttack, $0C
	smpsModSet          $14, $01, $FE, $01
	dc.b	nE4, $30
	smpsModSet          $0C, $02, $01, $0E
	dc.b	nRst, $0C, nA4, $18, nA4, $0C, nB4, nRst, nG4, nRst, nE4, nE4
	dc.b	nRst, nE4, nEb4, nRst, nD4, nRst
	smpsModSet          $01, $01, $05, $00
	dc.b	nC5, $0C, smpsNoAttack
	smpsModSet          $00, $00, $00, $00
	dc.b	nC5, $18
	smpsModSet          $0C, $02, $01, $0E
	dc.b	nBb4, $0C, nA4, nRst, nAb4, smpsNoAttack, nAb4, $18, nEb4, nEb4, $0C, nF4
	dc.b	nAb4, nG4, smpsNoAttack, nG4, $54
	smpsModSet          $01, $01, $0A, $00
	dc.b	nBb4, $0C, smpsNoAttack
	smpsModSet          $00, $00, $00, $00
	dc.b	nBb4, $24
	smpsModSet          $0C, $02, $01, $0E
	smpsReturn

Sonic_3C_0517_credits_Call02:
	dc.b	nF2, $0C, nBb2, $0C, nF3, $0C, nE3, $05, nRst, $0D, nC3, $05
	dc.b	nRst, $0D, nBb2, $3B, nRst, $3D, nF2, $0C, nBb2, $0C, nF3, $0C
	dc.b	nE3, $05, nRst, $0D, nC3, $05, nRst, $0D, nD3, $3B, nRst, $3D
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Call02
	smpsReturn

Sonic_3C_0517_credits_Call09:
	dc.b	nC2, $06, nRst, nC2, $0C, nBb1, $12, nA1, $06, nRst, $2A, nA1
	dc.b	$06, nF1, nRst, nF1, $0C, nFs1, $12, nG1, $06, nRst, $18, nD2
	dc.b	$0C, nG2, $06, nD2
	smpsReturn

Sonic_3C_0517_credits_Call0A:
	dc.b	nC2, nRst, nC2, $0C, nBb1, $12, nA1, $06, nRst, $2A, nA1, $06
	dc.b	nF1, nRst, nF1, $0C, nFs1, $12, nG1, $06, nRst, $18, nD2
	smpsReturn

; FM3 Data
Sonic_3C_0517_credits_FM3:
	smpsModSet          $0C, $01, $01, $0F
	smpsSetvoice        $1F
	smpsAlterNote       $FE
	smpsSetVol          $5C
	dc.b	nRst, $30, nRst, $09
	smpsCall            Sonic_3C_0517_credits_Call07
	dc.b	nRst, $03
	smpsSetvoice        $0C
	smpsSetNote         $4C
	smpsSetVol          $6F
	dc.b	nRst, $0C
	smpsAlterNote       $FB
	smpsModSet          $0F, $01, $06, $05

Sonic_3C_0517_credits_Loop1F:
	dc.b	nF2, $0C, nBb2, $0C, nF3, $0C, nE3, $05, nRst, $0D, nC3, $05
	dc.b	nRst, $0D, nBb2, $3B, nRst, $3D
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop1F
	dc.b	nF2, $0C, nBb2, $0C, nF3, $0C, nE3, $05, nRst, $0D, nC3, $05
	dc.b	nRst, $0D, nD3, $3B, nRst, $3D
	smpsAlterPitch      $0C
	smpsFMAlterVol      $FA
	smpsSetvoice        $00
	dc.b	nRst, $24, nF0, $10, nRst, $02, nF0, nRst, $22, nG0, $02, nRst
	dc.b	$04, nG1, $0A, nRst, $02, nG0, $16, nRst, $02, nAb0, $10, nRst
	dc.b	$02, nAb0, nRst, $22, nBb0, $02, nRst, $04, nBb1, $0A, nRst, $02
	dc.b	nBb0, $0A, nRst, $02, nBb1, $0A, nRst, $02, nF0, $10, nRst, $02
	dc.b	nF0, nRst, $22, nG0, $02, nRst, $04, nG1, $0A, nRst, $02, nG0
	dc.b	$16, nRst, $02, nC1, $10, nRst, $02, nC2, nRst, $04, nBb0, $10
	dc.b	nRst, $02, nBb1, nRst, $0A, nAb0, $02, nRst, $04, nAb1, $0A, nRst
	dc.b	$02, nG0, $0A, nRst, $02, nG1, $0A, nRst, $02, nF0, $10, nRst
	dc.b	$02, nF0, nRst, $22, nG0, $02, nRst, $04, nG1, $0A, nRst, $02
	dc.b	nG0, $16, nRst, $02, nAb0, $10, nRst, $02, nAb0, nRst, $22, nBb0
	dc.b	$02, nRst, $04, nBb1, $0A, nRst, $02, nBb0, $0A, nRst, $02, nBb1
	dc.b	$0A, nRst, $02, nAb0, $10, nRst, $02, nAb0, nRst, $22, nF0, $02
	dc.b	nRst, $04, nF0, $0A, nRst, $02, nEb0, $0A, nRst, $02, nF0, $0A
	dc.b	nRst, $08, nG0, $04, nRst, $08, nG0, $04, nRst, $08, nG0, $04
	dc.b	nRst, $02, nG0, $0A, nRst, $02, nG0, $04, nRst, $14, nF0, $04
	dc.b	nRst, $02, nFs0, $04, nRst, $02, nG0, $04, nRst, $02, nBb0, $04
	dc.b	nRst, $02
	smpsSetNote         $40
	smpsSetVol          $78
	smpsPan             panLeft, $00
	smpsNoteFill        $06
	smpsSetvoice        $06

Sonic_3C_0517_credits_Loop20:
	dc.b	nRst, $0C, nG4, $18, nG4, nG4, nG4, $0C
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop20
	dc.b	nRst, $60
	smpsNoteFill        $00
	smpsAlterNote       $00
	smpsSetNote         $40
	smpsSetVol          $6D
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $01, $06
	smpsSetvoice        $0A
	dc.b	nBb4, $60, smpsNoAttack, $30, nC5, $30, nG4, $60, smpsNoAttack, $5A, nRst, $06
	dc.b	nBb4, $60, nBb4, $30, nF4, nC4, $60, smpsNoAttack, $5A, nRst, $06
	smpsFMAlterVol      $FA
	smpsSetvoice        $08
	dc.b	nRst, $0C, nC4, $0C, nRst, $48
	smpsSetNote         $34
	smpsSetVol          $7D

Sonic_3C_0517_credits_Loop22:
	smpsSetvoice        $0D
	smpsModSet          $01, $01, $A1, $FF
	smpsPan             panLeft, $00
	dc.b	nG6, $09, nRst, $27, nRst, $06
	smpsSetvoice        $0E
	smpsFMAlterVol      $2C
	smpsPan             panRight, $00

Sonic_3C_0517_credits_Loop21:
	dc.b	nBb2, $01
	smpsFMAlterVol      $FD
	smpsLoop            $00, $12, Sonic_3C_0517_credits_Loop21
	smpsFMAlterVol      $0A
	dc.b	nRst, $18
	smpsSetvoice        $0C
	smpsModSet          $01, $01, $03, $03
	smpsPan             panCenter, $00
	dc.b	nAb3, $30, nG3, nRst, nRst, nRst, nRst
	smpsLoop            $01, $02, Sonic_3C_0517_credits_Loop22
	smpsSetNote         $40
	smpsSetVol          $68
	smpsSetvoice        $12
	dc.b	nRst, $60, nRst, nF5, $12, nE5, nC5, $0C, nC6, $12, nB5, nG5
	dc.b	$0C, nF5, $12, nE5
	smpsFMAlterVol      $FF
	dc.b	nC5, $0C, nRst
	smpsFMAlterVol      $01
	dc.b	nB4, nRst, $18
	smpsSetvoice        $11

Sonic_3C_0517_credits_Loop23:
	dc.b	nC3, $06, nC2, nC3, nC2, nD3, nC2, nE3, nC2, nF3, nC2, nE3
	dc.b	nC2, nD3, nC2, nE3, nC2
	smpsLoop            $00, $10, Sonic_3C_0517_credits_Loop23
	dc.b	nC3, nC2, nC3, nC2, nD3, nC2, nE3, nC2, nF3, nC2, nE3, nC2
	dc.b	nD3, nC2, nC3, nC2
	smpsSetNote         $40
	smpsSetVol          $74
	smpsModSet          $0D, $01, $02, $06

Sonic_3C_0517_credits_Loop24:
	smpsSetvoice        $16
	dc.b	nA4, $10, nRst, $08, nG4, $10, nRst, $08, nE4, $0F, nRst, $03
	dc.b	nC4, $0F, nRst, $03, nA3, $06, nRst, nRst, nC4, $12, nD4, $06
	dc.b	nRst, nE4, nRst, nD4, $12, nC4, $06, nRst, $18
	smpsSetvoice        $17
	dc.b	nE4, $30, nF4, nFs4, nF4
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop24
	smpsPan             panLeft, $00
	smpsSetNote         $40
	smpsSetVol          $73
	smpsSetvoice        $19
	dc.b	nRst, $0C, nD6, $08, nRst, $04, nAb6, $0A, nRst, $0E, nAb6, $0C
	dc.b	nF6, $0A, nRst, $0E, nD6, $08, nRst, $04, nRst, $0C, nB5, $08
	dc.b	nRst, $10, nAb5, $08, nRst, $28, nB5, $06, nC6, nB5, $08, nRst
	dc.b	$1C, nAb5, $08, nRst, $1C, nF5, $08, nRst, $10, nRst, $0C, nE5
	dc.b	$08, nRst, $1C, nE5, $08, nRst, $28, nRst, $0C, nE5, nF5, nAb5
	dc.b	$08, nRst, $04, nAb5, nA5, nAb5, $10, nF5, $0C, nE5, $08, nRst
	dc.b	$04, nRst, $0C, nE5, nD5, nC5, nB4, $04, nC5, nB4, $10, nAb4
	dc.b	$0C, nE4, nRst, nE5, nF5, nAb5, $08, nRst, $04, nAb5, nA5, nAb5
	dc.b	$10, nF5, $0C, nE5, $08, nRst, $04, nA5, nB5, nA5, $10, nAb5
	dc.b	$0C, nA5, nB5, nD6, nRst, $18, nRst, $60, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst
	smpsSetVol          $7A
	smpsSetNote         $41
	smpsPan             panCenter, $00
	smpsSetvoice        $1E
	smpsAlterPitch      $0C
	smpsFMAlterVol      $20
	dc.b	nA2, $0C
	smpsFMAlterVol      $FD
	dc.b	nA2
	smpsFMAlterVol      $FD
	dc.b	nA2
	smpsFMAlterVol      $FD
	dc.b	nD3
	smpsFMAlterVol      $FD
	dc.b	nD3
	smpsFMAlterVol      $FD
	dc.b	nD3
	smpsFMAlterVol      $FD
	dc.b	nA3
	smpsFMAlterVol      $FD
	dc.b	nA3
	smpsFMAlterVol      $F5
	smpsAlterPitch      $F4
	smpsSetvoice        $1D
	dc.b	nG2, $05, nRst, $01, nG2, $05, nRst, $01, nG2, $05, nRst, $01
	dc.b	nRst, $06, nG2, $05, nRst, $01, nRst, $06, nG2, $05, nRst, $01
	dc.b	nG2, $05, nRst, $01, nRst, $06, nG2, $05, nRst, $01, nG2, $05
	dc.b	nRst, $01, nRst, $06, nG2, $05, nRst, $01, nRst, $06, nG2, $05
	dc.b	nRst, $01, nRst, $06, nD2, $05, nRst, $01, nD2, $05, nRst, $01
	dc.b	nD2, $05, nRst, $01, nRst, $06, nD2, $05, nRst, $01, nRst, $06
	dc.b	nD2, $05, nRst, $01, nD2, $05, nRst, $01, nRst, $06, nD2, $05
	dc.b	nRst, $01, nD2, $05, nRst, $01, nRst, $06, nD2, $05, nRst, $01
	dc.b	nRst, $06, nE2, $05, nRst, $01, nRst, $06, nF2, $05, nRst, $01
	dc.b	nF2, $05, nRst, $01, nF2, $05, nRst, $01, nRst, $06, nF2, $05
	dc.b	nRst, $01, nRst, $06, nF2, $05, nRst, $01, nF2, $05, nRst, $01
	dc.b	nRst, $06, nF2, $05, nRst, $01, nF2, $05, nRst, $01, nRst, $06
	dc.b	nF2, $05, nRst, $01, nRst, $06, nA2, $05, nRst, $01, nRst, $06
	dc.b	nD2, $05, nRst, $01, nD2, $05, nRst, $01, nD2, $05, nRst, $01
	dc.b	nRst, $06, nD2, $05, nRst, $01, nRst, $06, nD2, $05, nRst, $01
	dc.b	nD2, $05, nRst, $01, nRst, $06, nD2, $05, nRst, $01, nD2, $05
	dc.b	nRst, $01, nRst, $06, nD2, $05, nRst, $01, nRst, $06, nE2, $05
	dc.b	nRst, $01, nRst, $06, nG2, $05, nRst, $01, nG2, $05, nRst, $01
	dc.b	nG2, $05, nRst, $01, nRst, $06, nG2, $05, nRst, $01, nRst, $06
	dc.b	nG2, $05, nRst, $01, nG2, $05, nRst, $01, nRst, $06, nG2, $05
	dc.b	nRst, $01, nG2, $05, nRst, $01, nRst, $06, nG2, $05, nRst, $01
	dc.b	nRst, $06, nG2, $05, nRst, $01, nRst, $06, nD2, $05, nRst, $01
	dc.b	nD2, $05, nRst, $01, nD2, $05, nRst, $01, nRst, $06, nD2, $05
	dc.b	nRst, $01, nRst, $06, nD2, $05, nRst, $01, nD2, $05, nRst, $01
	dc.b	nRst, $06, nD2, $05, nRst, $01, nD2, $05, nRst, $01, nRst, $06
	dc.b	nD2, $05, nRst, $01, nRst, $06, nE2, $05, nRst, $01, nRst, $06
	dc.b	nF2, $05, nRst, $01, nF2, $05, nRst, $01, nF2, $05, nRst, $01
	dc.b	nRst, $06, nF2, $05, nRst, $01, nRst, $06, nF2, $05, nRst, $01
	dc.b	nF2, $05, nRst, $01, nRst, $06, nF2, $05, nRst, $01, nF2, $05
	dc.b	nRst, $01, nRst, $06, nF2, $05, nRst, $01, nRst, $06, nA2, $05
	dc.b	nRst, $01, nRst, $06, nG2, $05, nRst, $01, nG2, $05, nRst, $01
	dc.b	nG2, $05, nRst, $01, nRst, $06, nG2, $05, nRst, $01, nRst, $06
	dc.b	nG2, $05, nRst, $01, nG2, $05, nRst, $06, nG3, $06, nRst, $01
	dc.b	nG2, $05, nRst, $07, nG3, $0A, nRst, $08, nG2, $60
	smpsStop

; FM4 Data
Sonic_3C_0517_credits_FM4:
	smpsPan             panRight, $00
	smpsAlterNote       $FD
	dc.b	nRst, $30
	smpsCall            Sonic_3C_0517_credits_Call01
	smpsSetvoice        $02
	smpsSetNote         $4C
	smpsSetVol          $67
	dc.b	nRst, $0C, nRst, nRst, nRst
	smpsPan             panLeft, $00
	smpsAlterNote       $FB
	smpsModSet          $03, $01, $02, $05
	smpsCall            Sonic_3C_0517_credits_Call06
	smpsSetvoice        $04
	smpsFMAlterVol      $F7
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nG3, $04, nRst, $02, nF3, $04, nRst, $02, nEb3, $04
	dc.b	nRst, $08, nD3, $04, nRst, $02, nEb3, $04, nRst, $02, nC3, $04
	dc.b	nRst, $08, nBb3, $10, nRst, $02, nG3, $04, nRst, $08, nF3, $04
	dc.b	nRst, $0E, nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nEb3, $10, nRst, $02, nD3, $34, nRst, $08, nG3, $04
	dc.b	nRst, $02, nF3, $04, nRst, $02, nEb3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $02, nEb3, $04, nRst, $02, nC3, $04, nRst, $08, nB3, $10
	dc.b	nRst, $02, nG3, $04, nRst, $08, nF3, $04, nRst, $08, nG3, $16
	dc.b	nRst, $02, nBb3, $10, nRst, $02, nBb3, $04, nRst, $08, nAb3, $10
	dc.b	nRst, $02, nG3, $16, nRst, $08, nG3, $04, nRst, $02, nF3, $04
	dc.b	nRst, $02, nEb3, $04, nRst, $08, nD3, $04, nRst, $02, nEb3, $04
	dc.b	nRst, $02, nC3, $04, nRst, $08, nBb3, $10, nRst, $02, nG3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $0E, nD4, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nG3, $04, nRst, $02, nEb3, $10, nRst, $02, nD3, $34
	dc.b	nRst, $08, nG3, $04, nRst, $02, nF3, $04, nRst, $02, nEb3, $04
	dc.b	nRst, $08, nD3, $04, nRst, $02, nEb3, $04, nRst, $02, nC3, $04
	dc.b	nRst, $08, nEb2, $04, nRst, $02, nAb2, $04, nRst, $02, nEb2, $04
	dc.b	nRst, $02, nEb3, $0A, nRst, $02, nAb3, $0A, nRst, $08, nG3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $08, nG3, $04, nRst, $02, nG3, $0A
	dc.b	nRst, $02, nG3, $04, nRst, $2C
	smpsSetNote         $40
	smpsSetVol          $7A
	smpsPan             panRight, $00
	smpsNoteFill        $06
	smpsSetvoice        $06

Sonic_3C_0517_credits_Loop10:
	dc.b	nC4, $0C, nE4, nG3, nE4, nC4, nE4, nG3, nE4
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop10
	dc.b	nRst, $60
	smpsNoteFill        $00
	smpsAlterNote       $00
	smpsSetNote         $40
	smpsSetVol          $6A
	smpsPan             panCenter, $00
	smpsSetvoice        $0A
	smpsModSet          $01, $01, $01, $06
	dc.b	nRst, $05, nBb4, $60, smpsNoAttack, $30, nC5, $30, nG4, $60, smpsNoAttack, $5A
	dc.b	nRst, $06, nBb4, $60, nBb4, $30, nF4, nC4, $60, smpsNoAttack, $55, nRst
	dc.b	$06
	smpsFMAlterVol      $F7
	smpsSetvoice        $08
	dc.b	nRst, $0C, nC4, $0C, nRst, $48
	smpsSetNote         $40
	smpsSetVol          $77
	smpsSetvoice        $0C
	smpsModSet          $01, $01, $03, $03

Sonic_3C_0517_credits_Loop11:
	dc.b	nC4, $30, nBb3, nC4, nBb3, nC4, nBb3, smpsNoAttack, nBb3, smpsNoAttack, $30
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop11
	smpsSetNote         $40
	smpsSetVol          $6A
	smpsModSet          $24, $01, $04, $08
	smpsSetvoice        $12

Sonic_3C_0517_credits_Loop12:
	dc.b	nC5, $12, nB4, nG4, $0C, nG5, $12, nF5, nE5, $0C
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop12
	dc.b	nC5, $12, nB4
	smpsFMAlterVol      $FF
	dc.b	nG4, $0C, nRst
	smpsFMAlterVol      $01
	dc.b	nG4, nRst, $18
	smpsFMAlterVol      $FD

Sonic_3C_0517_credits_Loop13:
	dc.b	nC6, $07, nRst, $05, nC6, $48, nC5, $06, nE5, nF5, $24, nE5
	dc.b	$18, nC5, $24
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop13
	dc.b	nRst, $0C, nRst, nA4, nRst, nRst, nC5, nRst, nRst, nF4, nRst, nRst
	dc.b	nA4, $24, nA4, $18, nRst, $24, nAb4, $0C, nC5, nBb4, nAb4, nEb5
	dc.b	$18, nC5, $0C, nD5, nEb5, $18, nD5, $0C, nC5, $18
	smpsLoop            $01, $02, Sonic_3C_0517_credits_Loop13
	dc.b	nC6, $60
	smpsSetNote         $40
	smpsSetVol          $74
	smpsModSet          $0D, $01, $02, $06

Sonic_3C_0517_credits_Loop14:
	smpsSetvoice        $16
	dc.b	nE4, $10, nRst, $08, nE4, $10, nRst, $08, nC4, $0F, nRst, $03
	dc.b	nA3, $0F, nRst, $03, nE3, $06, nRst, nRst, nA3, $12, nB3, $06
	dc.b	nRst, nC4, nRst, nB3, $12, nA3, $06, nRst, $18
	smpsSetvoice        $17
	dc.b	nC4, $30, nC4, nC4, nC4
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop14
	smpsPan             panRight, $00
	smpsSetNote         $40
	smpsSetVol          $73
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsSetvoice        $18
	dc.b	nC5, $08, nRst, $10, nB4, $08, nRst, $40, nA4, $08, nRst, $10
	dc.b	nAb4, $08, nRst, $40, nC5, $08, nRst, $10, nB4, $08, nRst, $40
	dc.b	nF5, $08, nRst, $10, nD5, $08, nRst, $10, nAb5, $08, nRst, $04
	dc.b	nB5, $08, nRst, $10, nB5, $08, nRst, $04
	smpsSetVol          $70
	smpsSetvoice        $1A

Sonic_3C_0517_credits_Loop15:
	dc.b	nAb2, $06, nBb2, nC3, nEb3
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop15

Sonic_3C_0517_credits_Loop16:
	dc.b	nBb2, $06, nC3, nD3, nF3
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop16
	dc.b	nRst, $60, nRst, $06, nG4, $12, nF4, $06, nRst, nE4, nRst, nG4
	dc.b	nRst, nE4, nF4, $05, nRst, $07, nG4, $12

Sonic_3C_0517_credits_Loop17:
	dc.b	nAb2, $06, nBb2, nC3, nEb3
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop17

Sonic_3C_0517_credits_Loop18:
	dc.b	nBb2, $06, nC3, nD3, nF3
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop18
	dc.b	nRst, $60, nRst, $06, nG4, $12, nF4, $06, nRst, nE4, nRst, nG4
	dc.b	nE4, nRst, nA4, nRst, nG4, nRst, nRst
	smpsSetVol          $67
	smpsSetNote         $4D
	smpsPan             panCenter, $00
	smpsSetvoice        $1E
	smpsFMAlterVol      $0D
	dc.b	nRst, $06, nFs2, $0C
	smpsFMAlterVol      $FD
	dc.b	nC3
	smpsFMAlterVol      $FD
	dc.b	nC3
	smpsFMAlterVol      $FD
	dc.b	nC3
	smpsFMAlterVol      $FD
	dc.b	nFs3
	smpsFMAlterVol      $FD
	dc.b	nFs3
	smpsFMAlterVol      $FD
	dc.b	nFs3
	smpsFMAlterVol      $FD
	dc.b	nC4, $06
	smpsFMAlterVol      $08
	dc.b	nRst, $03

Sonic_3C_0517_credits_Loop19:
	dc.b	nG4, $06, nF4, nD4, nF4
	smpsLoop            $00, $08, Sonic_3C_0517_credits_Loop19

Sonic_3C_0517_credits_Loop1A:
	dc.b	nA4, $06, nG4, nE4, nG4
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop1A

Sonic_3C_0517_credits_Loop1B:
	dc.b	nD4, $06, nC4, nA3, nC4
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop1B

Sonic_3C_0517_credits_Loop1C:
	dc.b	nG4, $06, nF4, nD4, nF4
	smpsLoop            $00, $08, Sonic_3C_0517_credits_Loop1C

Sonic_3C_0517_credits_Loop1D:
	dc.b	nA4, $06, nG4, nE4, nG4
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop1D

Sonic_3C_0517_credits_Loop1E:
	dc.b	nG4, $06, nF4, nD4, nF4
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop1E
	smpsStop

Sonic_3C_0517_credits_Call01:
	smpsSetvoice        $1F
	smpsModSet          $0C, $02, $01, $10
	smpsSetNote         $40
	smpsSetVol          $68
	dc.b	nD4, $30, smpsNoAttack, $0C, nD4, nRst, nC4, smpsNoAttack, $30, smpsNoAttack, $0C
	smpsModSet          $1C, $01, $FE, $01
	dc.b	nG3, $30
	smpsModSet          $0C, $02, $01, $10
	dc.b	nRst, $0C, nD4, $18, nD4, $0C, nD4, nRst, nC4, nRst, nG4, nC4
	dc.b	nRst, nC4, nB3, nRst, nBb3, nRst, nF4, $24, nD4, $0C, nCs4, nRst
	dc.b	nC4, smpsNoAttack, $30, nC4, $0C, nEb4, nF4, nE4, smpsNoAttack, nE4, $54, nG4
	dc.b	$3C
	smpsReturn

Sonic_3C_0517_credits_Call06:
	dc.b	nRst, $0C, nD3, $02, nRst, $0A, nE3, $02, nRst, $16, nD3, $11
	dc.b	nRst, $01, nE3, $02, nRst, $28, nA4, $05, nRst, $01, nBb4, $05
	dc.b	nRst, $07, nBb4, $02, nRst, $04, nBb4, $02, nRst, $04, nBb4, $02
	dc.b	nRst, $04, nBb4, $02, nRst, $0A, nA4, $23, nRst, $01, nRst, $0C
	dc.b	nD3, $02, nRst, $0A, nE3, $02, nRst, $16, nD3, $11, nRst, $01
	dc.b	nE3, $02, nRst, $28, nA4, $05, nRst, $01, nBb4, $05, nRst, $07
	dc.b	nBb4, $02, nRst, $04, nBb4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b	nBb4, $02, nRst, $0A, nC5, $05, nRst, $01, nBb4, $1D, nRst, $01
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Call06
	smpsReturn

; FM5 Data
Sonic_3C_0517_credits_FM5:
	smpsAlterNote       $03
	smpsPan             panLeft, $00
	dc.b	nRst, $30
	smpsCall            Sonic_3C_0517_credits_Call01
	smpsSetvoice        $01
	smpsSetNote         $4C
	smpsSetVol          $65
	dc.b	nRst, $0C
	smpsAlterNote       $FB
	smpsModSet          $0F, $01, $06, $05
	dc.b	nRst, $06
	smpsCall            Sonic_3C_0517_credits_Call02
	smpsSetvoice        $04
	smpsFMAlterVol      $F7
	smpsPan             panCenter, $00
	dc.b	nRst, $1E, nRst, $06, nEb3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $08, nBb2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b	nAb2, $04, nRst, $08, nF3, $10, nRst, $02, nEb3, $04, nRst, $08
	dc.b	nD3, $04, nRst, $0E, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nC3, $10, nRst, $02, nF2, $34, nRst, $08
	dc.b	nEb3, $04, nRst, $02, nD3, $04, nRst, $02, nC3, $04, nRst, $08
	dc.b	nBb2, $04, nRst, $02, nC3, $04, nRst, $02, nAb2, $04, nRst, $08
	dc.b	nF3, $10, nRst, $02, nEb3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b	nEb3, $16, nRst, $02, nF3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b	nEb3, $10, nRst, $02, nD3, $16, nRst, $08, nEb3, $04, nRst, $02
	dc.b	nD3, $04, nRst, $02, nC3, $04, nRst, $08, nBb2, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nAb2, $04, nRst, $08, nF3, $10, nRst, $02
	dc.b	nEb3, $04, nRst, $08, nD3, $04, nRst, $0E, nBb3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nEb3, $04, nRst, $02, nC3, $10, nRst, $02
	dc.b	nF2, $34, nRst, $08, nEb3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b	nC3, $04, nRst, $08, nBb2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b	nAb2, $04, nRst, $1A, nC3, $0A, nRst, $02, nEb3, $0A, nRst, $08
	dc.b	nD3, $04, nRst, $08, nD3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b	nD3, $0A, nRst, $02, nD3, $04, nRst, $2C
	smpsSetNote         $40
	smpsSetVol          $78
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsAlterNote       $00
	smpsSetNote         $4C
	smpsSetVol          $73

Sonic_3C_0517_credits_Loop0C:
	smpsSetvoice        $07
	dc.b	nRst, $06, nBb3, $04, nRst, $0E, nBb3, $12, nBb3, $06, nRst, $18
	dc.b	nRst, $30, nBb3, $12, nBb3, $06, nRst, $18
	smpsSetvoice        $08
	smpsModSet          $01, $01, $03, $05
	dc.b	nG4
	smpsModSet          $01, $01, $01, $04
	smpsSetvoice        $07
	dc.b	nRst, $06, nBb3, $04, nRst, $0E, nBb3, $12, nBb3, $06, nRst, $18
	dc.b	nRst, $30, nBb3, $12, nBb3, $06, nRst, $18
	smpsSetvoice        $08
	smpsFMAlterVol      $05
	smpsModSet          $06, $01, $12, $01
	dc.b	nG4, $0C
	smpsModSet          $01, $01, $01, $04
	smpsFMAlterVol      $FB
	dc.b	nG4, $0C
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop0C
	dc.b	nRst, $0C, nC4, nRst, $48
	smpsSetNote         $40
	smpsSetVol          $77
	smpsSetvoice        $0C
	smpsModSet          $01, $01, $03, $03

Sonic_3C_0517_credits_Loop0D:
	dc.b	nEb4, $30, smpsNoAttack, $30, smpsNoAttack, nEb4, nD4, nEb4, smpsNoAttack, $30, nD4, smpsNoAttack
	dc.b	$30
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop0D
	smpsSetNote         $40
	smpsSetVol          $60
	smpsModSet          $24, $01, $04, $08
	smpsAlterNote       $02
	smpsSetvoice        $12
	dc.b	nRst, $0E

Sonic_3C_0517_credits_Loop0E:
	dc.b	nC5, $12, nB4, nG4, $0C, nG5, $12, nF5, nE5, $0C
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop0E
	dc.b	nC5, $12, nB4
	smpsFMAlterVol      $FF
	dc.b	nG4, $0C, nRst
	smpsFMAlterVol      $01
	dc.b	nG4, nRst, $18
	smpsFMAlterVol      $FD

Sonic_3C_0517_credits_Loop0F:
	dc.b	nC6, $07, nRst, $05, nC6, $48, nC5, $06, nE5, nF5, $24, nE5
	dc.b	$18, nC5, $24
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop0F
	dc.b	nRst, $0C, nRst, nA4, nRst, nRst, nC5, nRst, nRst, nF4, nRst, nRst
	dc.b	nA4, $24, nA4, $18, nRst, $24, nAb4, $0C, nC5, nBb4, nAb4, nEb5
	dc.b	$18, nC5, $0C, nD5, nEb5, $18, nD5, $0C, nC5, $18
	smpsLoop            $01, $02, Sonic_3C_0517_credits_Loop0F
	dc.b	nC6, $52
	smpsSetNote         $40
	smpsSetVol          $6F
	smpsModSet          $0D, $01, $02, $06
	dc.b	nRst, $10
	smpsCall            Sonic_3C_0517_credits_Call03
	dc.b	nC5, $04, nA4, $0C
	smpsCall            Sonic_3C_0517_credits_Call03
	dc.b	nC5, $01
	smpsSetNote         $40
	smpsSetVol          $6B
	dc.b	nRst, $10
	smpsSetvoice        $18
	smpsCall            Sonic_3C_0517_credits_Call04
	dc.b	nRst, $08
	smpsSetVol          $69
	smpsSetvoice        $1A
	dc.b	nRst, $10
	smpsCall            Sonic_3C_0517_credits_Call05
	smpsSetVol          $6C
	smpsSetNote         $4D
	dc.b	nRst, $0D
	smpsFMAlterVol      $05
	smpsJump            Sonic_3C_0517_credits_Jump00

; PSG1 Data
Sonic_3C_0517_credits_PSG1:
	smpsSetNote         $40
	smpsSetVol          $4F
	dc.b	nRst, $30
	smpsPSGvoice        sTone_0A

Sonic_3C_0517_credits_Loop42:
	dc.b	nA5, $0C, nD5
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop42

Sonic_3C_0517_credits_Loop43:
	dc.b	nB5, nE5
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop43
	smpsLoop            $01, $02, Sonic_3C_0517_credits_Loop42

Sonic_3C_0517_credits_Loop44:
	dc.b	nBb5, nF5
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop44

Sonic_3C_0517_credits_Loop45:
	dc.b	nAb5, nC5
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop45

Sonic_3C_0517_credits_Loop46:
	dc.b	nC6, nE5
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop46
	dc.b	nC6, nE5, nC6, nE5
	smpsSetNote         $34
	smpsSetVol          $5F
	dc.b	nRst, $0C, nRst, nRst, nRst

Sonic_3C_0517_credits_Loop47:
	dc.b	nRst, $0C, nD3, $02, nRst, $0A, nE3, $02, nRst, $16, nD3, $11
	dc.b	nRst, $01, nE3, $02, nRst, $28, nA4, $05, nRst, $01, nBb4, $05
	dc.b	nRst, $07, nBb4, $02, nRst, $04, nBb4, $02, nRst, $04, nBb4, $02
	dc.b	nRst, $04, nBb4, $02, nRst, $0A, nA4, $23, nRst, $0D, nD3, $02
	dc.b	nRst, $0A, nE3, $02, nRst, $16, nD3, $11, nRst, $01, nE3, $02
	dc.b	nRst, $28, nA4, $05, nRst, $01, nBb4, $05, nRst, $07, nBb4, $02
	dc.b	nRst, $04, nBb4, $02, nRst, $04, nBb4, $02, nRst, $04, nBb4, $02
	dc.b	nRst, $0A, nC5, $05, nRst, $01, nBb4, $1D, nRst, $01
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop47
	smpsAlterNote       $01
	dc.b	nRst, $36
	smpsCall            Sonic_3C_0517_credits_Call0D
	smpsAlterNote       $00
	smpsNoteFill        $06
	smpsPSGvoice        sTone_05
	smpsModChange       $02

Sonic_3C_0517_credits_Loop48:
	dc.b	nRst, $0C, nG4, $18, nG4, nG4, nG4, $0C
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop48
	dc.b	nRst, $60
	smpsNoteFill        $00
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsModSet          $00, $00, $00, $00
	smpsSetNote         $28
	smpsSetVol          $77
	smpsPSGvoice        sTone_02
	smpsAlterPitch      $18
	smpsNoteFill        $04

Sonic_3C_0517_credits_Loop49:
	dc.b	nG4, $0C, nG4, nG4, $06, $0C, nG4, nG4, $2A
	smpsLoop            $00, $08, Sonic_3C_0517_credits_Loop49
	smpsAlterPitch      $E8
	smpsNoteFill        $00
	smpsSetNote         $34
	smpsSetVol          $57
	smpsPSGvoice        sTone_04

Sonic_3C_0517_credits_Loop4A:
	dc.b	nG4, $06, nF4, nC4, nF4
	smpsLoop            $00, $0E, Sonic_3C_0517_credits_Loop4A
	dc.b	nRst, $0C, nB3, nRst, $18

Sonic_3C_0517_credits_Loop4B:
	dc.b	nC5, $06, nC4, nC5, nC4, nC5, nC4, nC5, nC4, nC6, nC4, nC6
	dc.b	nC4, nC5, nC4, nC5, nC4
	smpsLoop            $00, $10, Sonic_3C_0517_credits_Loop4B
	dc.b	nC5, $06, nC4, nC5, nC4, nC5, nC4, nC5, nC4, nC6, nC4, nC6
	dc.b	nC4, nC5, nC4, nC5, nC4, nRst, $60, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst
	smpsSetVol          $77
	smpsSetNote         $41
	smpsPSGvoice        sTone_0A
	dc.b	nRst, $60, nG3, $60, nA3, nA3, nD3, nG3, nA3, nC4, nD4
	smpsStop

Sonic_3C_0517_credits_Call0D:
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $38, nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nF4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $38, nB3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nB3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nB3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nEb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nD3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nC4, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nG3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nG3, $04, nRst, $38, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nBb3, $04, nRst, $38, nD4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $38
	dc.b	nEb3, $04, nRst, $02, nAb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nC4, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $08, nEb5, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $02, nEb5, $0A, nRst, $02, nD5, $04, nRst, $2C
	smpsReturn

; PSG2 Data
Sonic_3C_0517_credits_PSG2:
	smpsSetNote         $40
	smpsSetVol          $4F
	smpsPSGvoice        sTone_0A
	dc.b	nRst, $30, nRst, $06

Sonic_3C_0517_credits_Loop3A:
	dc.b	nFs5, $0C, nFs5
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop3A

Sonic_3C_0517_credits_Loop3B:
	dc.b	nG5, nC5
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop3B
	smpsLoop            $01, $02, Sonic_3C_0517_credits_Loop3A

Sonic_3C_0517_credits_Loop3C:
	dc.b	nA5, nD5
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop3C

Sonic_3C_0517_credits_Loop3D:
	dc.b	nEb5, nEb5
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop3D

Sonic_3C_0517_credits_Loop3E:
	dc.b	nG5, nG5
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop3E
	dc.b	nG5, nG5, nG5, nC5
	smpsSetNote         $34
	smpsSetVol          $5F
	dc.b	nRst, $2A

Sonic_3C_0517_credits_Loop3F:
	dc.b	nRst, $0C, nBb2, $02, nRst, $0A, nC3, $02, nRst, $16, nBb2, $11
	dc.b	nRst, $01, nC3, $02, nRst, $28, nFs4, $05, nRst, $01, nG4, $05
	dc.b	nRst, $07, nG4, $02, nRst, $04, nG4, $02, nRst, $04, nG4, $02
	dc.b	nRst, $04, nG4, $02, nRst, $0A, nF4, $23, nRst, $0D, nBb2, $02
	dc.b	nRst, $0A, nC3, $02, nRst, $16, nBb2, $11, nRst, $01, nC3, $02
	dc.b	nRst, $28, nFs4, $05, nRst, $01, nG4, $05, nRst, $07, nG4, $02
	dc.b	nRst, $04, nG4, $02, nRst, $04, nG4, $02, nRst, $04, nG4, $02
	dc.b	nRst, $0A, nA4, $05, nRst, $01, nG4, $1D, nRst, $01
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop3F
	smpsAlterNote       $FF
	dc.b	nRst, $36
	smpsCall            Sonic_3C_0517_credits_Call0D
	smpsAlterNote       $00
	smpsPSGvoice        sTone_12
	smpsModChange       $02
	smpsNoteFill        $06

Sonic_3C_0517_credits_Loop40:
	dc.b	nC4, $0C, nE4, nG3, nE4, nC4, nE4, nG3, nE4
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop40
	dc.b	nRst, $60
	smpsNoteFill        $00
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsModSet          $00, $00, $00, $00
	smpsSetNote         $28
	smpsSetVol          $6F
	smpsAlterNote       $01
	smpsPSGvoice        sTone_01
	smpsAlterPitch      $18
	smpsNoteFill        $04
	smpsModSet          $00, $01, $01, $02

Sonic_3C_0517_credits_Loop41:
	dc.b	nG4, $0C, nG4, nG4, $06, $0C, nG4, nG4, $2A
	smpsLoop            $00, $08, Sonic_3C_0517_credits_Loop41
	smpsAlterPitch      $E8
	smpsNoteFill        $00
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, $60, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsSetVol          $77
	smpsSetNote         $41
	smpsPSGvoice        sTone_0A
	dc.b	nRst, $60, nD3, $60, nF3, nF3, nFs3, nD3, nF3, nA3, nB3
	smpsStop

; PSG3 Data
Sonic_3C_0517_credits_PSG3:
	smpsPSGform         $E7
	smpsSetVol          $67
	dc.b	nRst, $30

Sonic_3C_0517_credits_Loop32:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C, $0C
	smpsPSGvoice        sTone_04
	dc.b	$0C
	smpsPSGvoice        sTone_01
	dc.b	$06
	smpsPSGvoice        sTone_04
	dc.b	$06
	smpsPSGvoice        sTone_01
	dc.b	$0C, $0C
	smpsPSGvoice        sTone_04
	dc.b	$18
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop32
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $0C, $0C
	smpsPSGvoice        sTone_04
	dc.b	$0C
	smpsPSGvoice        sTone_01
	dc.b	$06
	smpsPSGvoice        sTone_04
	dc.b	$06
	smpsPSGvoice        sTone_01
	dc.b	$0C, $0C
	smpsPSGvoice        sTone_04
	dc.b	$0C
	smpsPSGvoice        sTone_01
	dc.b	$0C, nMaxPSG1, $0C, $0C
	smpsPSGvoice        sTone_04
	dc.b	$0C
	smpsPSGvoice        sTone_01
	dc.b	$06
	smpsPSGvoice        sTone_04
	dc.b	$06
	smpsPSGvoice        sTone_01
	dc.b	$0C, $0C, $0C, $0C

Sonic_3C_0517_credits_Loop33:
	smpsPSGvoice        sTone_01
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C
	smpsPSGvoice        sTone_04
	dc.b	$0C
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop33
	dc.b	nRst, $30
	smpsSetNote         $40
	smpsSetVol          $5F
	dc.b	nRst, $0C, nRst, nRst, nRst

Sonic_3C_0517_credits_Loop34:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1
	smpsPSGvoice        sTone_04
	dc.b	nMaxPSG1, $0C
	smpsLoop            $00, $20, Sonic_3C_0517_credits_Loop34
	smpsPSGAlterVol     $FF
	smpsCall            Sonic_3C_0517_credits_Call0B
	smpsCall            Sonic_3C_0517_credits_Call0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, $06
	smpsPSGvoice        sTone_08
	dc.b	$0C
	smpsCall            Sonic_3C_0517_credits_Call0B
	smpsCall            Sonic_3C_0517_credits_Call0C
	dc.b	nRst, $18
	smpsCall            Sonic_3C_0517_credits_Call0B
	smpsCall            Sonic_3C_0517_credits_Call0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, $06
	smpsPSGvoice        sTone_08
	dc.b	$0C
	smpsCall            Sonic_3C_0517_credits_Call0B
	dc.b	nRst, $60
	smpsSetNote         $63
	smpsPSGAlterVol     $FF
	smpsPSGvoice        sTone_01
	smpsPSGform         $E7

Sonic_3C_0517_credits_Loop35:
	dc.b	nC4, $09, $03, $03, nRst, $09
	smpsPSGAlterVol     $FE
	dc.b	nC4, $03
	smpsPSGAlterVol     $02
	dc.b	nRst, $09, nC4, $09, $03, nC4, nRst, $15
	smpsPSGAlterVol     $FE
	dc.b	nC4, $03
	smpsPSGAlterVol     $02
	dc.b	nRst, $15
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop35
	dc.b	nC4, $0C, nRst, $54
	smpsSetNote         $40

Sonic_3C_0517_credits_Loop36:
	smpsPSGvoice        sTone_02
	dc.b	nMaxPSG1, $06, nMaxPSG1
	smpsPSGvoice        sTone_13
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        sTone_02
	dc.b	nMaxPSG1, $06
	smpsLoop            $00, $20, Sonic_3C_0517_credits_Loop36
	smpsPSGvoice        sTone_02
	dc.b	nMaxPSG1, $06, nMaxPSG1
	smpsPSGvoice        sTone_13
	dc.b	nRst, $54
	smpsSetNote         $40
	smpsSetVol          $67
	smpsPSGvoice        sTone_02

Sonic_3C_0517_credits_Loop37:
	dc.b	nRst, $0C, nMaxPSG1, $18, nMaxPSG1, nMaxPSG1, nMaxPSG1, $0C
	smpsLoop            $00, $08, Sonic_3C_0517_credits_Loop37
	smpsSetNote         $40
	smpsSetVol          $68

Sonic_3C_0517_credits_Loop38:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsPSGvoice        sTone_04
	dc.b	nMaxPSG2, $0C
	smpsLoop            $00, $50, Sonic_3C_0517_credits_Loop38

Sonic_3C_0517_credits_Loop39:
	smpsPSGvoice        sTone_04
	dc.b	nMaxPSG2, $0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG2, $06, nMaxPSG2
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop39
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b	nRst
	smpsSetVol          $63
	smpsStop

Sonic_3C_0517_credits_Call0B:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, $06
	smpsPSGvoice        sTone_08
	dc.b	$0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, $06
	smpsPSGvoice        sTone_08
	dc.b	$0C
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, $06, $06, $06
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, $06
	smpsPSGvoice        sTone_08
	dc.b	$0C
	smpsReturn

Sonic_3C_0517_credits_Call0C:
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG1, $06, $06, $06, $06
	smpsLoop            $02, $03, Sonic_3C_0517_credits_Call0C
	smpsReturn

; DAC Data
Sonic_3C_0517_credits_DAC:
	smpsSetTempoMod     $0F
	dc.b	nRst, $02, dElectricHighTom, $04, $04, $04, dElectricMidTom, $05, dElectricMidTom, $06, dElectricLowTom, nRst
	dc.b	nRst, nRst, $05, dCrashCymbal, $12, dKickS3, dKickS3, $18, $06, $06, dSnareS3, $0C
	dc.b	dCrashCymbal, nRst, dKickS3, nRst, $06, dKickS3, nRst, $0C, dKickS3, $18, dSnareS3, dCrashCymbal
	dc.b	$12, dKickS3, dKickS3, $18, $06, $06, dSnareS3, $0C, dCrashCymbal, nRst, dKickS3, nRst
	dc.b	$06, dKickS3, nRst, $0C, dSnareS3, $06, dSnareS3, dSnareS3, nRst, dSnareS3, nRst, dSnareS3
	dc.b	dSnareS3, dKickS3, $18, dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, dKickS3, nRst, dKickS3, dSnareS3
	dc.b	nRst, dKickS3, dKickS3, dSnareS3, dKickS3, nRst, dKickS3, dSnareS3, nRst, dKickS3, dKickS3, dSnareS3
	dc.b	dKickS3, dSnareS3, $06, dSnareS3, nRst, dSnareS3, nRst, dSnareS3, dSnareS3, nRst
	smpsSetTempoMod     $18
	dc.b	dSnareS3, $0C, nRst, nRst, nRst

Sonic_3C_0517_credits_Loop00:
	dc.b	dKickS3, $0C, dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dMidTomS3, $06, dLowMetalHit, dKickS3, $0C
	dc.b	dHighMetalHit, $06, dLowTomS3, dKickS3, $0C, dHighTom, $06, dMetalHit
	smpsLoop            $00, $07, Sonic_3C_0517_credits_Loop00
	dc.b	dKickS3, $18, dKickS3, $17, dSnareS3, $01, dSnareS3, $06, dSnareS3, $0C, dSnareS3, dSnareS3
	dc.b	$06, dSnareS3, $0C

Sonic_3C_0517_credits_Loop01:
	smpsSetTempoMod     $20
	smpsCall            Sonic_3C_0517_credits_Call00
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop01
	dc.b	dKickS3, $0C, dSnareS3, dKickS3, $06, dSnareS3, $0C, $06, dKickS3, dSnareS3, $12, $04
	dc.b	dSnareS3, dSnareS3, dSnareS3, $06, dSnareS3

Sonic_3C_0517_credits_Loop02:
	smpsCall            Sonic_3C_0517_credits_Call00
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop02
	dc.b	dKickS3, $12, $06, dSnareS3, $1E, dKickS3, $06, $0C, dSnareS3, $1E, $0C, $0C
	dc.b	$06, $0C, $06, dElectricHighTom, $02, $02, $02, $06, $06, dElectricMidTom, dElectricMidTom, dElectricLowTom
	dc.b	dElectricLowTom
	smpsSetTempoMod     $3C

Sonic_3C_0517_credits_Loop03:
	dc.b	dPowerKick, $0C, dClick, dQuickGlassCrash, $24, dPowerKick, $0C, dQuickGlassCrash, dQuickGlassCrash
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop03
	dc.b	dGlassCrashKick, $48, dQuietGlassCrash, $18
	smpsSetTempoMod     $2F
	dc.b	dModLooseKick, $06, nRst, dModLooseKick, nRst, dSnareGo, nRst, nRst, dModLooseKick, nRst, nRst, dGo
	dc.b	nRst, dSnareGo, nRst, dGo, nRst, dModLooseKick, nRst, dGo, nRst, dSnareGo, nRst, dGo
	dc.b	dModLooseKick, dModLooseKick, nRst, dGo, dSnareGo, dSnareGo, nRst, dGo, nRst

Sonic_3C_0517_credits_Loop04:
	dc.b	dModLooseKick, $06, nRst, dGo, nRst, dSnareGo, nRst, dGo, dModLooseKick, dModLooseKick, nRst, dGo
	dc.b	nRst, dSnareGo, nRst, dGo, dModLooseKick, dModLooseKick, nRst, dGo, nRst, dSnareGo, nRst, dGo
	dc.b	dModLooseKick, dModLooseKick, nRst, dGo, dSnareGo, dSnareGo, nRst, dGo, nRst
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop04
	dc.b	dModLooseKick, $06, nRst, dGo, nRst, dSnareGo, nRst, dGo, dModLooseKick, dModLooseKick, nRst, dGo
	dc.b	nRst, dSnareGo, nRst, dGo, dModLooseKick, dModLooseKick, nRst, dGo, nRst, dSnareGo, nRst, dGo
	dc.b	dModLooseKick, dModLooseKick, dSnareGo, dGo, dSnareGo, dSnareGo, nRst, dSnareGo, nRst, dModLooseKick, dModLooseKick, dSnareGo
	dc.b	$3C, dElectricLowTom, $18
	smpsSetTempoMod     $14

Sonic_3C_0517_credits_Loop05:
	dc.b	dDanceStyleKick, $18, dDanceStyleKick, $06, nRst, $12, dDanceStyleKick, $0C, dQuickHit, $06, dQuickHit, dDanceStyleKick
	dc.b	dQuickHit, dQuickHit, dQuickHit, dDanceStyleKick, $18, dDanceStyleKick, dDanceStyleKick, $06, dQuickHit, dQuickHit, dQuickHit, dDanceStyleKick
	dc.b	$0C, dBassHey, dDanceStyleKick, $18, dDanceStyleKick, $06, nRst, $12, dDanceStyleKick, $0C, dQuickHit, $06
	dc.b	dQuickHit, dDanceStyleKick, dQuickHit, dQuickHit, dQuickHit, dDanceStyleKick, $18, dDanceStyleKick, dDanceStyleKick, $06, dQuickHit, dQuickHit
	dc.b	dQuickHit, dDanceStyleKick, $0C, dQuickHit, $06, dQuickHit
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop05
	smpsSetTempoMod     $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, nRst, nRst, $17, nRst, $0C, dSnareS3, nRst, dSnareS3, nRst
	dc.b	dKickS3, $06, dKickS3

Sonic_3C_0517_credits_Loop06:
	smpsPan             panCenter, $00
	dc.b	dKickS3, $05, dKickS3, dKickS3, $0E, nRst, $0C, dMuffledSnare, $05, dMuffledSnare, dMuffledSnare, $0E
	dc.b	dMuffledSnare, $0C, nRst, dKickS3, $06, dKickS3, dKickS3, $0C, dKickS3, nRst, dMuffledSnare, $05
	dc.b	dMuffledSnare, dMuffledSnare, $0E, dMuffledSnare, $0C, nRst, dKickS3, dKickS3, $0C, dKickS3, nRst, dMuffledSnare
	dc.b	$05, dMuffledSnare, dMuffledSnare, $0E, dMuffledSnare, $0C, nRst, dKickS3, $06, dKickS3, dKickS3, $0C
	dc.b	dKickS3, nRst, dMuffledSnare, $05, dMuffledSnare, dMuffledSnare, $08
	smpsPan             panLeft, $00
	dc.b	dElectricMidTom, $06, dElectricMidTom, dElectricMidTom
	smpsPan             panCenter, $00
	dc.b	dElectricLowTom, dElectricLowTom
	smpsPan             panRight, $00
	dc.b	dElectricFloorTom, nRst
	smpsLoop            $00, $04, Sonic_3C_0517_credits_Loop06
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	dc.b	dKickS3, $0C, dKickS3, nRst, dMuffledSnare, $05, dMuffledSnare, dMuffledSnare, $0E, dKickS3, $06, dKickS3
	dc.b	dMuffledSnare, dMuffledSnare, dMuffledSnare, dMuffledSnare
	smpsSetTempoMod     $04

Sonic_3C_0517_credits_Loop07:
	dc.b	dKickS3, $18, dSnareS3, $06, dKickS3, dKickS3, dKickS3, dKickS3, $0C, dKickS3, dSnareS3, $18
	dc.b	dKickS3, dSnareS3, $06, dKickS3, dKickS3, dKickS3, dKickS3, $0C, dKickS3, dSnareS3, $18, dKickS3
	dc.b	dSnareS3, $06, dKickS3, dKickS3, dKickS3, dKickS3, $0C, dKickS3, dSnareS3, $18, dSnareS3, $06
	dc.b	dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, $06, dSnareS3, dKickS3, $0C, dKickS3, dSnareS3, $06
	dc.b	dSnareS3, dSnareS3, $0C
	smpsLoop            $00, $02, Sonic_3C_0517_credits_Loop07
	smpsSetTempoMod     $10

Sonic_3C_0517_credits_Loop08:
	dc.b	dKickS3, $18, dSnareS3, $0C, dKickS3, dKickS3, dKickS3, dSnareS3, $18
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop08
	dc.b	dKickS3, $18, dSnareS3, $0C, dKickS3, dKickS3, dKickS3, dSnareS3, dSnareS3, $06, dSnareS3

Sonic_3C_0517_credits_Loop09:
	dc.b	dKickS3, $18, dSnareS3, $0C, dKickS3, dKickS3, dKickS3, dSnareS3, $18
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop09
	dc.b	dKickS3, $18, dSnareS3, $0C, dKickS3, dKickS3, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3
	smpsSetTempoMod     $08

Sonic_3C_0517_credits_Loop0A:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            $00, $07, Sonic_3C_0517_credits_Loop0A
	dc.b	dCrashCymbal, $30, dElectricFloorTom, $04, $04, $04, $06, $06, dTightSnare, dTightSnare, $12
	smpsSetTempoMod     $19
	dc.b	dCrashCymbal, $30, nRst, $06, dSnareS3, dSnareS3, $06, nRst, dSnareS3, nRst, dSnareS3, dSnareS3

Sonic_3C_0517_credits_Loop0B:
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, $06, nRst, nRst
	dc.b	dSnareS3, $06
	smpsLoop            $00, $03, Sonic_3C_0517_credits_Loop0B
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3, $06, nRst, nRst, dSnareS3, dKickS3
	dc.b	dSnareS3, dSnareS3, nRst, dSnareS3, $06, nRst, dSnareS3, dCrashCymbal
	smpsStop

Sonic_3C_0517_credits_Call00:
	dc.b	dKickS3, $12, dKickS3, $06, dSnareS3, $1E, dKickS3, $06, dKickS3, $0C, dSnareS3, $18
	smpsReturn

Sonic_3C_0517_credits_Voices:
;	Voice $00
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
	smpsVcTotalLevel    $00, $1E, $14, $0E

;	Voice $01
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $02
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
	smpsVcTotalLevel    $00, $28, $32, $1B

;	Voice $03
;	$34
;	$70, $72, $31, $31, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $83, $18, $83
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
	smpsVcTotalLevel    $03, $18, $03, $10

;	Voice $04
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $05
;	$25
;	$31, $12, $0A, $22, 	$1F, $1F, $1F, $1F, 	$0E, $0B, $10, $0E
;	$10, $00, $00, $00, 	$E7, $3F, $3F, $3F, 	$0B, $88, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $00, $01, $03
	smpsVcCoarseFreq    $02, $0A, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $10, $0B, $0E
	smpsVcDecayRate2    $00, $00, $00, $10
	smpsVcDecayLevel    $03, $03, $03, $0E
	smpsVcReleaseRate   $0F, $0F, $0F, $07
	smpsVcTotalLevel    $08, $08, $08, $0B

;	Voice $06
;	$3B
;	$04, $32, $03, $01, 	$14, $0E, $12, $4E, 	$00, $10, $12, $0C
;	$00, $00, $00, $00, 	$0F, $5F, $9F, $2F, 	$00, $3E, $26, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $00
	smpsVcCoarseFreq    $01, $03, $02, $04
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $0E, $12, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $12, $10, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $09, $05, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $26, $3E, $00

;	Voice $07
;	$3A
;	$31, $7F, $61, $0A, 	$9C, $DB, $9C, $9A, 	$04, $08, $03, $09
;	$03, $01, $00, $00, 	$1F, $0F, $FF, $FF, 	$23, $25, $1B, $84
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $06, $07, $03
	smpsVcCoarseFreq    $0A, $01, $0F, $01
	smpsVcRateScale     $02, $02, $03, $02
	smpsVcAttackRate    $1A, $1C, $1B, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $03, $08, $04
	smpsVcDecayRate2    $00, $00, $01, $03
	smpsVcDecayLevel    $0F, $0F, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $04, $1B, $25, $23

;	Voice $08
;	$3A
;	$01, $07, $31, $11, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $17, $82
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $02, $17, $28, $18

;	Voice $09
;	$03
;	$62, $40, $44, $31, 	$1F, $1F, $1F, $1C, 	$0B, $0A, $02, $01
;	$08, $0B, $04, $06, 	$1F, $1F, $1F, $1F, 	$2A, $1A, $2B, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $04, $06
	smpsVcCoarseFreq    $01, $04, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $02, $0A, $0B
	smpsVcDecayRate2    $06, $04, $0B, $08
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2B, $1A, $2A

;	Voice $0A
;	$3D
;	$01, $02, $02, $02, 	$1F, $08, $8A, $0A, 	$08, $08, $08, $08
;	$00, $01, $00, $00, 	$0F, $1F, $1F, $1F, 	$1F, $88, $88, $87
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $02, $00, $00
	smpsVcAttackRate    $0A, $0A, $08, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $08
	smpsVcDecayRate2    $00, $00, $01, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $08, $08, $1F

;	Voice $0B
;	$20
;	$34, $38, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $08, $08, $0A
;	$07, $0E, $0A, $11, 	$20, $1F, $1F, $1F, 	$22, $37, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $08, $04
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $08, $08, $07
	smpsVcDecayRate2    $11, $0A, $0E, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $00
	smpsVcTotalLevel    $00, $14, $37, $22

;	Voice $0C
;	$35
;	$02, $04, $02, $01, 	$10, $0A, $0C, $0E, 	$07, $04, $04, $04
;	$01, $0A, $0A, $0A, 	$28, $1B, $1B, $1B, 	$1D, $8E, $8D, $8E
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $04, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $0C, $0A, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $04, $07
	smpsVcDecayRate2    $0A, $0A, $0A, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0B, $0B, $0B, $08
	smpsVcTotalLevel    $0E, $0D, $0E, $1D

;	Voice $0D
;	$3D
;	$00, $04, $07, $0A, 	$1F, $1F, $1F, $1F, 	$1F, $1D, $1D, $1D
;	$05, $06, $16, $00, 	$09, $1F, $1F, $1F, 	$34, $8D, $87, $86
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0A, $07, $04, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1D, $1D, $1D, $1F
	smpsVcDecayRate2    $00, $16, $06, $05
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $09
	smpsVcTotalLevel    $06, $07, $0D, $34

;	Voice $0E
;	$32
;	$38, $46, $4F, $32, 	$1F, $1F, $1F, $1F, 	$0E, $1C, $16, $02
;	$00, $00, $00, $00, 	$60, $60, $40, $39, 	$05, $04, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $04, $03
	smpsVcCoarseFreq    $02, $0F, $06, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $16, $1C, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $03, $04, $06, $06
	smpsVcReleaseRate   $09, $00, $00, $00
	smpsVcTotalLevel    $00, $18, $04, $05

;	Voice $0F
;	$34
;	$02, $02, $02, $02, 	$1F, $5F, $1F, $5F, 	$0E, $00, $12, $00
;	$00, $08, $02, $08, 	$4F, $0F, $4F, $0F, 	$12, $80, $12, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $01, $00, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $12, $00, $0E
	smpsVcDecayRate2    $08, $02, $08, $00
	smpsVcDecayLevel    $00, $04, $00, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $12, $00, $12

;	Voice $10
;	$04
;	$02, $02, $03, $03, 	$13, $10, $13, $10, 	$06, $0C, $06, $0C
;	$00, $00, $00, $00, 	$4F, $2F, $4F, $2F, 	$18, $90, $18, $90
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $03, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $13, $10, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $06, $0C, $06
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $04, $02, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $10, $18, $10, $18

;	Voice $11
;	$3D
;	$02, $01, $01, $11, 	$1C, $18, $18, $1B, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$6F, $8F, $5F, $7F, 	$18, $88, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $18, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $08, $08, $08, $18

;	Voice $12
;	$3D
;	$01, $01, $01, $11, 	$1C, $18, $18, $1B, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$6F, $8F, $5F, $7F, 	$18, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $18, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $18

;	Voice $13
;	$05
;	$2E, $17, $1F, $1F, 	$1F, $1F, $1F, $1F, 	$00, $0B, $08, $08
;	$00, $08, $08, $08, 	$00, $19, $19, $19, 	$28, $8A, $89, $89
	smpsVcAlgorithm     $05
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $01, $02
	smpsVcCoarseFreq    $0F, $0F, $07, $0E
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $0B, $00
	smpsVcDecayRate2    $08, $08, $08, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $09, $09, $09, $00
	smpsVcTotalLevel    $09, $09, $0A, $28

;	Voice $14
;	$02
;	$71, $52, $41, $11, 	$17, $16, $15, $17, 	$0A, $03, $05, $03
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$07, $1F, $25, $87
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $04, $05, $07
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $15, $16, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $05, $03, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $25, $1F, $07

;	Voice $15
;	$03
;	$74, $18, $71, $11, 	$DF, $5F, $1F, $1F, 	$0C, $0F, $01, $01
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$0B, $1D, $10, $84
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $08, $04
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $0F, $0C
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $04, $10, $1D, $0B

;	Voice $16
;	$3D
;	$41, $01, $21, $71, 	$0D, $12, $52, $D2, 	$01, $01, $01, $01
;	$08, $00, $09, $00, 	$89, $F8, $F9, $F8, 	$1D, $87, $87, $87
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $02, $00, $04
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $03, $01, $00, $00
	smpsVcAttackRate    $12, $12, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $01, $01
	smpsVcDecayRate2    $00, $09, $00, $08
	smpsVcDecayLevel    $0F, $0F, $0F, $08
	smpsVcReleaseRate   $08, $09, $08, $09
	smpsVcTotalLevel    $07, $07, $07, $1D

;	Voice $17
;	$03
;	$61, $51, $23, $41, 	$10, $10, $0F, $15, 	$1C, $01, $06, $05
;	$05, $01, $05, $01, 	$C9, $0C, $D9, $C9, 	$18, $17, $17, $83
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $02, $05, $06
	smpsVcCoarseFreq    $01, $03, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $0F, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $06, $01, $1C
	smpsVcDecayRate2    $01, $05, $01, $05
	smpsVcDecayLevel    $0C, $0D, $00, $0C
	smpsVcReleaseRate   $09, $09, $0C, $09
	smpsVcTotalLevel    $03, $17, $17, $18

;	Voice $18
;	$10
;	$57, $4B, $76, $41, 	$19, $12, $5F, $1F, 	$02, $06, $05, $01
;	$00, $0F, $00, $00, 	$18, $38, $58, $18, 	$26, $1F, $1C, $87
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $04, $05
	smpsVcCoarseFreq    $01, $06, $0B, $07
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $05, $06, $02
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $05, $03, $01
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $07, $1C, $1F, $26

;	Voice $19
;	$02
;	$74, $50, $13, $31, 	$95, $D5, $15, $16, 	$06, $01, $01, $03
;	$0C, $13, $0C, $0B, 	$FF, $EF, $DF, $8F, 	$3D, $1D, $22, $81
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $05, $07
	smpsVcCoarseFreq    $01, $03, $00, $04
	smpsVcRateScale     $00, $00, $03, $02
	smpsVcAttackRate    $16, $15, $15, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $01, $01, $06
	smpsVcDecayRate2    $0B, $0C, $13, $0C
	smpsVcDecayLevel    $08, $0D, $0E, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $22, $1D, $3D

;	Voice $1A
;	$3D
;	$43, $05, $23, $71, 	$11, $16, $55, $D5, 	$01, $01, $01, $01
;	$08, $00, $09, $00, 	$89, $F8, $F9, $F8, 	$1B, $88, $8A, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $02, $00, $04
	smpsVcCoarseFreq    $01, $03, $05, $03
	smpsVcRateScale     $03, $01, $00, $00
	smpsVcAttackRate    $15, $15, $16, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $01, $01
	smpsVcDecayRate2    $00, $09, $00, $08
	smpsVcDecayLevel    $0F, $0F, $0F, $08
	smpsVcReleaseRate   $08, $09, $08, $09
	smpsVcTotalLevel    $08, $0A, $08, $1B

;	Voice $1B
;	$38
;	$75, $13, $71, $11, 	$1F, $5F, $1F, $1F, 	$10, $0D, $03, $04
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1F, $16, $1D, $81
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $05
	smpsVcRateScale     $00, $00, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $03, $0D, $10
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $1D, $16, $1F

;	Voice $1C
;	$3D
;	$01, $01, $12, $12, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $00, $00, $00, 	$30, $1A, $1A, $1A, 	$0E, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $00, $00
	smpsVcCoarseFreq    $02, $02, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $0A, $0A, $00
	smpsVcTotalLevel    $00, $00, $00, $0E

;	Voice $1D
;	$00
;	$2A, $30, $30, $21, 	$9F, $5F, $1F, $1F, 	$00, $0F, $01, $00
;	$07, $00, $00, $0C, 	$0F, $4F, $FF, $0F, 	$26, $30, $1D, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $03, $03, $02
	smpsVcCoarseFreq    $01, $00, $00, $0A
	smpsVcRateScale     $00, $00, $01, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $0F, $00
	smpsVcDecayRate2    $0C, $00, $00, $07
	smpsVcDecayLevel    $00, $0F, $04, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1D, $30, $26

;	Voice $1E
;	$04
;	$17, $03, $06, $74, 	$5F, $5F, $5F, $5F, 	$00, $08, $00, $00
;	$00, $00, $00, $0A, 	$0F, $FF, $0F, $0F, 	$1C, $83, $23, $83
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $00, $01
	smpsVcCoarseFreq    $04, $06, $03, $07
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $08, $00
	smpsVcDecayRate2    $0A, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $0F, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $03, $23, $03, $1C

;	Voice $1F
;	$3D
;	$02, $02, $01, $02, 	$1F, $1F, $1F, $1F, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$60, $87, $58, $78, 	$1B, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $08, $08, $07, $00
	smpsVcTotalLevel    $00, $00, $00, $1B

;	Voice $20
;	$04
;	$70, $71, $00, $00, 	$1F, $1F, $1F, $1F, 	$00, $0F, $01, $00
;	$07, $00, $00, $0C, 	$4F, $4F, $FF, $0F, 	$19, $80, $1A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $07
	smpsVcCoarseFreq    $00, $00, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $0F, $00
	smpsVcDecayRate2    $0C, $00, $00, $07
	smpsVcDecayLevel    $00, $0F, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1A, $00, $19

