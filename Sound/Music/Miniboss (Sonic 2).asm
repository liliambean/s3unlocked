Snd_S2Boss_Header:
	smpsHeaderStartSong 2, 1
	smpsHeaderVoice     Snd_S2Boss_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $E3

	smpsHeaderDAC       Snd_S2Boss_DAC
	smpsHeaderFM        Snd_S2Boss_FM1,	$0C, $0A
	smpsHeaderFM        Snd_S2Boss_FM2,	$0C, $06
	smpsHeaderFM        Snd_S2Boss_FM3,	$0C, $08
	smpsHeaderFM        Snd_S2Boss_FM4,	$00, $0F
	smpsHeaderFM        Snd_S2Boss_FM5,	$00, $0F
	smpsHeaderPSG       Snd_S2Boss_PSG1,	$E8, $04, $00, fTone_0C
	smpsHeaderPSG       Snd_S2Boss_PSG2,	$E8, $06, $00, fTone_0C
	smpsHeaderPSG       Snd_S2Boss_PSG3,	$FE, $03, $00, fTone_04

; FM1 Data
Snd_S2Boss_FM1:
	smpsSetvoice        $00

Snd_S2Boss_Jump01:
	smpsNoteFill        $08
	smpsCall            Snd_S2Boss_Call02
	smpsNoteFill        $0A

Snd_S2Boss_Loop0B:
	dc.b	nE1, $0C, nE2
	smpsLoop            $00, $04, Snd_S2Boss_Loop0B
	smpsNoteFill        $08
	smpsCall            Snd_S2Boss_Call02
	smpsNoteFill        $0A
	dc.b	nE1, $0C, nE2, nFs1, nFs2, nG1, nG2, nAb1, nAb2

Snd_S2Boss_Loop0C:
	smpsCall            Snd_S2Boss_Call03
	dc.b	nG1, $0C, nG2, $06, nG2, nG1, $0C, nG2, $06, nG2
	smpsCall            Snd_S2Boss_Call03
	dc.b	nE1, $0C, nE2, $06, nE2, nE1, $0C, nE2, $06, nE2
	smpsLoop            $00, $04, Snd_S2Boss_Loop0C
	smpsJump            Snd_S2Boss_Jump01

Snd_S2Boss_Call03:
	dc.b	nA1, $0C, nA2, $06, nA2, nA1, $0C, nA2, $06, nA2, nA1, $0C
	dc.b	nA2, $06, nA2, nA1, $0C, nA2, $06, nA2, nG1, $0C, nG2, $06
	dc.b	nG2, nG1, $0C, nG2, $06, nG2
	smpsReturn

Snd_S2Boss_Call02:
	dc.b	nA1, $0C, nA2, nA2, nA1, nA2, nA2, nA1, nA2
	smpsReturn

; PSG1 Data
Snd_S2Boss_PSG1:
; PSG2 Data
Snd_S2Boss_PSG2:
	smpsStop

; FM2 Data
Snd_S2Boss_FM2:
	smpsSetvoice        $02

Snd_S2Boss_Loop09:
	smpsNoteFill        $08
	dc.b	nA3, $0C, nE3, nE3, nA3, nE3, nE3, nA3, nE3
	smpsNoteFill        $17
	dc.b	nB3, $18, nB3, nB3, nB3
	smpsLoop            $00, $02, Snd_S2Boss_Loop09
	smpsAlterPitch      $F4
	smpsSetvoice        $03

Snd_S2Boss_Loop0A:
	smpsCall            Snd_S2Boss_Call01
	smpsLoop            $00, $04, Snd_S2Boss_Loop0A
	smpsAlterPitch      $0C
	smpsJump            Snd_S2Boss_FM2

Snd_S2Boss_Call01:
	dc.b	nA3, $06, nRst, nB3, nRst, nC4, $18, nD4, nC4, nB3, $06, nRst
	dc.b	nC4, nRst, nB3, nRst, nG3, $18, nE3, $06, nRst, nG3, $18, nA3
	dc.b	$06, nRst, nB3, nRst, nC4, $18, nD4, nC4, nB3, $06, nRst, nC4
	dc.b	nRst, nD4, nRst, nEb4, nRst, nE4, $0C, nRst, $24
	smpsReturn

; FM3 Data
Snd_S2Boss_FM3:
	smpsSetvoice        $02

Snd_S2Boss_Loop06:
	smpsNoteFill        $08
	dc.b	nC4, $0C, nA3, nA3, nC4, nA3, nA3, nC4, nA3
	smpsNoteFill        $17
	dc.b	nAb3, $18, nAb3, nAb3, nAb3
	smpsLoop            $00, $02, Snd_S2Boss_Loop06

Snd_S2Boss_Loop07:
	dc.b	nRst, $30
	smpsLoop            $00, $10, Snd_S2Boss_Loop07
	smpsAlterNote       $03
	smpsAlterVol        $FC

Snd_S2Boss_Loop08:
	smpsCall            Snd_S2Boss_Call01
	smpsLoop            $00, $02, Snd_S2Boss_Loop08
	smpsAlterNote       $00
	smpsAlterVol        $04
	smpsJump            Snd_S2Boss_FM3

; FM4 Data
Snd_S2Boss_FM4:
	smpsPan             panLeft, $00
	smpsAlterNote       $02
	smpsModSet          $0C, $01, $04, $04
	smpsJump            Snd_S2Boss_Jump00

; FM5 Data
Snd_S2Boss_FM5:
	smpsPan             panRight, $00
	smpsModSet          $0C, $01, $FC, $04

Snd_S2Boss_Jump00:
	smpsModOff
	smpsSetvoice        $01
	dc.b	nRst, $30, nRst, $24, nD5, $06, nE5, nF5, $0C, nF5, nE5, nE5
	dc.b	nD5, nD5, nE5, nRst, nRst, $30, nRst, $24, nD5, $06, nE5, nF5
	dc.b	$0C, nE5, nEb5, nE5, nAb5, $18, nE5

Snd_S2Boss_Loop05:
	dc.b	nRst, $30, nRst
	smpsLoop            $00, $04, Snd_S2Boss_Loop05
	smpsModOn
	smpsAlterVol        $02
	smpsCall            Snd_S2Boss_Call00
	dc.b	nG3
	smpsCall            Snd_S2Boss_Call00
	dc.b	nAb3, nC5, smpsNoAttack, $18, nD5, $0C, nC5, nB4, $30, nG4, nC5, smpsNoAttack
	dc.b	$18, nD5, $0C, nC5, nB4, $30, nAb4
	smpsAlterVol        $F5
	smpsSetvoice        $02
	dc.b	nC5, $06, nRst, nD5, nRst, nE5, $18, nF5, nE5, nD5, $06, nRst
	dc.b	nE5, nRst, nD5, nRst, nB4, $18, nG4, $06, nRst, nB4, $18, nC5
	dc.b	$06, nRst, nD5, nRst, nE5, $18, nF5, nE5, nD5, $06, nRst, nE5
	dc.b	nRst, nF5, nRst, nFs5, nRst, nAb5, $0C, nRst, $24
	smpsAlterVol        $09
	smpsJump            Snd_S2Boss_Jump00

Snd_S2Boss_Call00:
	dc.b	nC4, $30, smpsNoAttack, $18, nD4, $0C, nC4, nB3, $30
	smpsReturn

; PSG3 Data
Snd_S2Boss_PSG3:
	smpsPSGform         $E7
	smpsNoteFill        $05

Snd_S2Boss_Loop0D:
	dc.b	nA5, $24, $24, $18, nRst, $30, nRst
	smpsLoop            $00, $02, Snd_S2Boss_Loop0D

Snd_S2Boss_Loop0E:
	dc.b	nA5, $18
	smpsLoop            $00, $40, Snd_S2Boss_Loop0E
	smpsJump            Snd_S2Boss_Loop0D

; DAC Data
Snd_S2Boss_DAC:
	dc.b	dSnareS3, $0C, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3, dHiTimpaniS3, $0C, dMidTimpaniS3
	dc.b	dHiTimpaniS3, dMidTimpaniS3, dHiTimpaniS3, dMidTimpaniS3, dHiTimpaniS3, dMidTimpaniS3
	smpsLoop            $00, $02, Snd_S2Boss_DAC
	dc.b	dKickS3, $0C, dSnareS3, $06, dSnareS3

Snd_S2Boss_Loop00:
	dc.b	dKickS3, $0C, dSnareS3, $06, dSnareS3
	smpsLoop            $00, $06, Snd_S2Boss_Loop00
	dc.b	dKickS3, $0C, dSnareS3, $02, dHiTimpaniS3, $04, dSnareS3, $02, dHiTimpaniS3, $04, dMidTimpaniS3, $0C
	dc.b	dSnareS3, $06, dSnareS3

Snd_S2Boss_Loop01:
	dc.b	dKickS3, $0C, dSnareS3, $06, dSnareS3
	smpsLoop            $00, $05, Snd_S2Boss_Loop01
	dc.b	dKickS3, $0C, dSnareS3, $02, dHiTimpaniS3, $04, dSnareS3, $02, dHiTimpaniS3, $04, dMidTimpaniS3, $0C
	dc.b	dSnareS3, $02, dHiTimpaniS3, $04, dSnareS3, $02, dHiTimpaniS3, $04, dMidTimpaniS3, $0C, dSnareS3, $06
	dc.b	dSnareS3
	smpsLoop            $01, $03, Snd_S2Boss_Loop00

Snd_S2Boss_Loop02:
	dc.b	dKickS3, $0C, dSnareS3, $06, dSnareS3
	smpsLoop            $00, $06, Snd_S2Boss_Loop02
	dc.b	dKickS3, $0C, dSnareS3, $02, dHiTimpaniS3, $04, dSnareS3, $02, dHiTimpaniS3, $04, dMidTimpaniS3, $0C
	dc.b	dSnareS3, $06, dSnareS3

Snd_S2Boss_Loop03:
	dc.b	dKickS3, $0C, dSnareS3, $06, dSnareS3
	smpsLoop            $00, $03, Snd_S2Boss_Loop03

Snd_S2Boss_Loop04:
	dc.b	dMidTimpaniS3, $0C, dSnareS3, $02, dHiTimpaniS3, $04, dSnareS3, $02, dHiTimpaniS3, $04
	smpsLoop            $00, $04, Snd_S2Boss_Loop04
	smpsJump            Snd_S2Boss_DAC

Snd_S2Boss_Voices:
;	Voice $00
;	$20
;	$66, $65, $60, $61, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$29, $19, $19, $F9, 	$1C, $3A, $16, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $06, $06, $06
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $09, $09, $09, $09
	smpsVcTotalLevel    $00, $16, $3A, $1C

;	Voice $01
;	$3A
;	$31, $01, $01, $71, 	$8F, $8F, $4F, $4D, 	$09, $09, $00, $03
;	$00, $00, $00, $00, 	$15, $F5, $05, $0A, 	$19, $1F, $19, $01
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $00, $03
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $01, $02, $02
	smpsVcAttackRate    $0D, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $09, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $0F, $01
	smpsVcReleaseRate   $0A, $05, $05, $05
	smpsVcTotalLevel    $01, $19, $1F, $19

;	Voice $02
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$17, $28, $27, $86
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $86, $27, $28, $17

;	Voice $03
;	$3A
;	$51, $07, $51, $02, 	$0F, $0B, $0F, $0F, 	$1F, $1F, $1F, $0F
;	$00, $00, $00, $02, 	$0F, $0F, $0F, $1F, 	$1C, $28, $22, $81
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $00, $05
	smpsVcCoarseFreq    $02, $01, $07, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $0B, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $1F, $1F, $1F
	smpsVcDecayRate2    $02, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $81, $22, $28, $1C

