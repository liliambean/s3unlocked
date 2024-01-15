Snd_ProtoICZ2_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Snd_ProtoICZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $23

	smpsHeaderDAC       Snd_ProtoICZ2_DAC
	smpsHeaderFM        Snd_ProtoICZ2_FM1,	$18, $18
	smpsHeaderFM        Snd_ProtoICZ2_FM2,	$00, $0D
	smpsHeaderFM        Snd_ProtoICZ2_FM3,	$0C, $1E
	smpsHeaderFM        Snd_ProtoICZ2_FM4,	$0C, $1E
	smpsHeaderFM        Snd_ProtoICZ2_FM5,	$18, $20
	smpsHeaderPSG       Snd_ProtoICZ2_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       Snd_ProtoICZ2_PSG2,	$00, $05, $00, $00
	smpsHeaderPSG       Snd_ProtoICZ2_PSG3,	$00, $04, $00, $00

; FM1 Data
Snd_ProtoICZ2_FM1:
	smpsSetvoice        $02
	smpsChangeTransposition $F4
	smpsFMAlterVol      $05
	dc.b	nF5, $06, nRst, $02, nF5, $06, nRst, nF5, $04, nF5, $06, nRst
	dc.b	nF5, $06, nRst, $02, nF5, $06, nRst, nF5, $04, nF5, $06, nRst
	dc.b	nF5, $06, nRst, nF5, nRst, nD5, nRst, $2A, nD5, $06, nRst, $02
	dc.b	nD5, $06, nRst, nD5, nRst, nD5, $04, nD5, $06, nRst
	smpsChangeTransposition $0C
	smpsFMAlterVol      $FB

Snd_ProtoICZ2_Jump01:
	smpsSetvoice        $00
	smpsModSet          $20, $01, $05, $05
	dc.b	nBb4, $03, smpsNoAttack, nB4, $15, nG4, $06, nRst, nD4, $60, nRst, $0C
	dc.b	nBb4, $02, smpsNoAttack, nB4, $04, nRst, $06, nB4, $12, nRst, $06, nB4
	dc.b	$03, smpsNoAttack, nC5, $15, nB4, $06, nRst, nA4, $60, smpsNoAttack, nA4, $30
	dc.b	nRst, $18, nBb4, $02, smpsNoAttack, nB4, $16, nG4, $06, nRst, nD4, $60
	dc.b	nRst, $0C, nCs5, $02, smpsNoAttack, nD5, $04, nRst, $06, nD5, $18, nC5
	dc.b	nB4, $06, nRst, nA4, $60, smpsNoAttack, $48
	smpsLoop            $00, $02, Snd_ProtoICZ2_Jump01
	smpsSetvoice        $02
	smpsChangeTransposition $E8
	dc.b	nRst, $08, nG4, $04, nA4, nRst, nG4, nA4, nRst, nG4, nRst, $08
	dc.b	nAb4, $03, smpsNoAttack, nA4, $0D, nG4, $04, nRst, $28, nG4, $04, nA4
	dc.b	nRst, nG4, nA4, nRst, nG4, nRst, $08, nB4, $03, smpsNoAttack, nC5, $0D
	dc.b	nB4, $04, nRst, $08, nA4, $08, nRst, $04, nG4, $08, nRst, $04
	dc.b	nB4, $03, smpsNoAttack, nC5, $11, nD5, $04, nRst, $0C, nA4, $24, nRst
	dc.b	$0C, nF4, $04, nRst, $08, nF4, $0C, nE4, $08, nF4, $04, nRst
	dc.b	$08, nE4, $04, nD4, $30, nRst, $0C, nRst, $08, nG4, $04, nA4
	dc.b	nRst, nG4, nA4, nRst, nG4, nRst, $08, nAb4, $03, smpsNoAttack, nA4, $0D
	dc.b	nG4, $04, nRst, $28, nG4, $04, nA4, nRst, nG4, nA4, nRst, nG4
	dc.b	nRst, $08, nB4, $03, smpsNoAttack, nC5, $0D, nB4, $04, nRst, $08, nA4
	dc.b	$08, nRst, $04, nG4, $08, nRst, $04, nC5, $10, nRst, $04, nD5
	dc.b	$04, nRst, $0C, nEb5, $03, smpsNoAttack, nE5, $2D, nRst, $0C, nA4, $04
	dc.b	nG4, nA4, nB4, nA4, nB4, nC5, nB4, nC5, nD5, nC5, nD5, nE5
	dc.b	nD5, nE5, nF5, nE5, nF5, nG5, nF5, nG5, nA5, nG5, nA5
	smpsChangeTransposition $18
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsJump            Snd_ProtoICZ2_Jump01

; FM2 Data
Snd_ProtoICZ2_FM2:
	smpsSetvoice        $01
	dc.b	nD2, $04, nRst, nD2, nRst, $08, nD2, $04, nD2, nRst, $08, nD2
	dc.b	$04, nRst, nD2, nRst, $08, nD2, $04, nD2, nRst, $08, nD2, $04
	dc.b	nRst, $08, nD2, $04, nRst, $08, nG2, $06, nRst, $2A, nD2, $04
	dc.b	nRst, nD2, nRst, $08, nD2, $04, nRst, $08, nD2, $04, nD2, nRst
	dc.b	$08

Snd_ProtoICZ2_Jump04:
	dc.b	nG2, $04, nRst, $08, nG2, $04, nRst, $08, nG2, $04, nRst, $08
	dc.b	nD2, nG2, $04, nRst, $08, nG2, $04, nG2, nRst, $08, nG2, $0C
	dc.b	nD2, nG2, $04, nRst, $08, nG2, $04, nRst, $08, nG2, $04, nRst
	dc.b	$08, nD2, nG2, $04, nRst, $08, nG2, $04, nG2, nRst, $08, nG2
	dc.b	$0C, nD2, nF2, $04, nRst, $08, nF2, $04, nRst, $08, nF2, $04
	dc.b	nRst, $08, nD2, nF2, $04, nRst, $08, nF2, $04, nF2, nRst, $08
	dc.b	nF2, $0C, nD2, nF2, $04, nRst, $08, nF2, $04, nRst, $08, nF2
	dc.b	$04, nRst, $08, nD2, nA2, $04, nRst, $08, nA2, $04, nA2, nRst
	dc.b	$08, nA2, $0C, nD2
	smpsJump            Snd_ProtoICZ2_Jump04

; FM3 Data
Snd_ProtoICZ2_FM3:
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	dc.b	nRst, $01, nC5, $06, nRst, $02, nC5, $06, nRst, nC5, $04, nC5
	dc.b	$06, nRst, nC5, $06, nRst, $02, nC5, $06, nRst, nC5, $04, nC5
	dc.b	$06, nRst, nC5, $06, nRst, nC5, nRst, nA4, nRst, $2A, nA4, $06
	dc.b	nRst, $02, nA4, $06, nRst, nA4, nRst, nA4, $04, nA4, $06, nRst
	dc.b	$05

Snd_ProtoICZ2_Jump03:
	dc.b	nG3, $04, nRst, $08, nD3, $04, nRst, $04, nG3, $04, nRst, $08
	dc.b	nD3, $04, nG3, nRst, $08, nG3, $04, nRst, $20, nD3, $08, nRst
	dc.b	$04, nG3, $04, nRst, $08, nD3, $04, nRst, $04, nG3, $04, nRst
	dc.b	$08, nD3, $04, nG3, nRst, $08, nD3, $08, nRst, $04, nG3, $04
	dc.b	nRst, $08, nG3, $0C, nD3, nF3, $04, nRst, $08, nD3, $04, nRst
	dc.b	$04, nF3, $04, nRst, $08, nD3, $04, nF3, nRst, $08, nF3, $04
	dc.b	nRst, $20, nD3, $08, nRst, $04, nF3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $04, nF3, $04, nRst, $08, nD3, $04, nF3, nRst, $08, nD3
	dc.b	$08, nRst, $04, nA3, $04, nRst, $08, nA3, $0C, nD3
	smpsJump            Snd_ProtoICZ2_Jump03

; FM4 Data
Snd_ProtoICZ2_FM4:
	smpsPan             panRight, $00
	smpsSetvoice        $02
	dc.b	nRst, $02, nF4, $06, nRst, $02, nF4, $06, nRst, nF4, $04, nF4
	dc.b	$06, nRst, nF4, $06, nRst, $02, nF4, $06, nRst, nF4, $04, nF4
	dc.b	$06, nRst, nF4, $06, nRst, nF4, nRst, nD4, nRst, $2A, nD4, $06
	dc.b	nRst, $02, nD4, $06, nRst, nD4, nRst, nD4, $04, nD4, $06, nRst
	dc.b	$04

Snd_ProtoICZ2_Jump02:
	dc.b	nB3, $04, nRst, $08, nD3, $04, nRst, $04, nB3, $04, nRst, $08
	dc.b	nD3, $04, nB3, nRst, $08, nB3, $04, nRst, $20, nD3, $08, nRst
	dc.b	$04, nB3, $04, nRst, $08, nD3, $04, nRst, $04, nB3, $04, nRst
	dc.b	$08, nD3, $04, nB3, nRst, $08, nD3, $08, nRst, $04, nB3, $04
	dc.b	nRst, $08, nB3, $0C, nD3, nA3, $04, nRst, $08, nD3, $04, nRst
	dc.b	$04, nA3, $04, nRst, $08, nD3, $04, nA3, nRst, $08, nA3, $04
	dc.b	nRst, $20, nD3, $08, nRst, $04, nA3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $04, nA3, $04, nRst, $08, nD3, $04, nA3, nRst, $08, nD3
	dc.b	$08, nRst, $04, nC4, $04, nRst, $08, nC4, $0C, nD3
	smpsJump            Snd_ProtoICZ2_Jump02

; FM5 Data
Snd_ProtoICZ2_FM5:
	dc.b	nRst, $60, nRst, nRst, $09
	smpsDetune          $05
	smpsJump            Snd_ProtoICZ2_Jump01

; DAC Data
Snd_ProtoICZ2_DAC:
	dc.b	dKickS3, $04, nRst, $10, dKickS3, $04, dSnareS3, $04, nRst, $08, dKickS3, $04
	dc.b	nRst, $14, dKickS3, $04, nRst, $08, dSnareS3, $04, nRst, $08, dKickS3, $04
	dc.b	nRst, $08, dKickS3, $04, nRst, $14, dSnareS3, $04, nRst, $10, dSnareS3, $04
	dc.b	dSnareS3, $04, nRst, dSnareS3, nRst, $08, dSnareS3, $04, dSnareS3, nRst, dSnareS3, dSnareS3
	dc.b	nRst, dSnareS3

Snd_ProtoICZ2_Jump00:
	dc.b	dKickS3, $04, nRst, $10, dKickS3, $04, dSnareS3, nRst, $08, dKickS3, $04, nRst
	dc.b	$08, dKickS3, $04, nRst, dSnareS3, dKickS3, nRst, $08, dSnareS3, $04, nRst, $08
	dc.b	dKickS3, $04, nRst, $08, dKickS3, $04, nRst, $10, dKickS3, $04, dSnareS3, nRst
	dc.b	$08, dKickS3, $04, nRst, $08, dKickS3, $04, nRst, dSnareS3, dKickS3, nRst, $08
	dc.b	dSnareS3, $04, nRst, $08, dKickS3, $04, nRst, dSnareS3, dKickS3, $04, nRst, $10
	dc.b	dKickS3, $04, dSnareS3, nRst, $08, dKickS3, $04, nRst, $08, dKickS3, $04, nRst
	dc.b	dSnareS3, dKickS3, nRst, $08, dSnareS3, $04, nRst, $08, dKickS3, $04, nRst, $08
	dc.b	dKickS3, $04, nRst, $10, dKickS3, $04, dSnareS3, nRst, $08, dKickS3, $04, nRst
	dc.b	$08, dKickS3, $04, nRst, dSnareS3, dKickS3, nRst, $08, dSnareS3, $04, nRst, $08
	dc.b	dKickS3, $04, nRst, dSnareS3, dKickS3, $04, nRst, $10, dKickS3, $04, dSnareS3, nRst
	dc.b	$08, dKickS3, $04, nRst, $08, dKickS3, $04, nRst, dSnareS3, dKickS3, nRst, $08
	dc.b	dSnareS3, $04, nRst, $08, dKickS3, $04, nRst, $08, dKickS3, $04, nRst, $10
	dc.b	dKickS3, $04, dSnareS3, nRst, $08, dKickS3, $04, nRst, $08, dKickS3, $04, nRst
	dc.b	dSnareS3, dKickS3, nRst, $08, dSnareS3, $04, nRst, $08, dKickS3, $04, nRst, dSnareS3
	dc.b	dKickS3, $04, nRst, $10, dKickS3, $04, dSnareS3, nRst, $08, dKickS3, $04, nRst
	dc.b	$08, dKickS3, $04, nRst, dSnareS3, dKickS3, nRst, $08, dSnareS3, $04, nRst, $08
	dc.b	dKickS3, $04, nRst, $08, dKickS3, $04, nRst, $08, dSnareS3, $04, nRst, $08
	dc.b	dSnareS3, $04, nRst, dSnareS3, nRst, $08, dSnareS3, $04, dSnareS3, nRst, $08, dSnareS3
	dc.b	$04, nRst, dSnareS3, dSnareS3, nRst, dSnareS3, dSnareS3, nRst, $08
	smpsJump            Snd_ProtoICZ2_Jump00

; PSG1 Data
Snd_ProtoICZ2_PSG1:
	smpsPSGvoice        sTone_05
	dc.b	nRst, $60, nRst

Snd_ProtoICZ2_Loop01:
	smpsCall            Snd_ProtoICZ2_Call00
	smpsLoop            $00, $04, Snd_ProtoICZ2_Loop01

Snd_ProtoICZ2_Jump05:
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst

Snd_ProtoICZ2_Loop02:
	smpsCall            Snd_ProtoICZ2_Call00
	smpsLoop            $00, $06, Snd_ProtoICZ2_Loop02
	smpsJump            Snd_ProtoICZ2_Jump05

Snd_ProtoICZ2_Call00:
	dc.b	nG3, $04, nRst, $08, nB3, $08, nD4, $04, nRst, $08, nC4, $04
	dc.b	nB3, nRst, $08, nG3, $04, nRst, $20, nG3, $04, nRst, $08, nG3
	dc.b	$04, nRst, $08, nB3, $08, nD4, $04, nRst, $08, nC4, $04, nB3
	dc.b	nRst, $08, nG3, $04, nRst, $08, nG3, $04, nRst, $08, nG3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $08, nF3, $04, nRst, $08, nA3, $08
	dc.b	nC4, $04, nRst, $08, nB3, $04, nA3, nRst, $08, nF3, $04, nRst
	dc.b	$20, nF3, $04, nRst, $08, nF3, $04, nRst, $08, nA3, $08, nC4
	dc.b	$04, nRst, $08, nB3, $04, nA3, nRst, $08, nF3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nF3, $04, nRst, $08, nF3, $04, nRst, $08
	smpsReturn

; PSG2 Data
Snd_ProtoICZ2_PSG2:
	dc.b	nRst, $09
	smpsJump            Snd_ProtoICZ2_PSG1

; PSG3 Data
Snd_ProtoICZ2_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        sTone_02
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $04, nRst, $04
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $04
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04, nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $04, nRst, $2C
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04, nMaxPSG2, $08, nRst, $04, nMaxPSG2, $08, nRst, $04
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04

Snd_ProtoICZ2_Loop00:
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $04, nRst, $04
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $04
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsLoop            $00, $03, Snd_ProtoICZ2_Loop00
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $04, nRst, $04
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $04
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $04, nRst, $04
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG2, $04
	smpsPSGAlterVol     $FC
	dc.b	nMaxPSG2, $08
	smpsPSGAlterVol     $04
	dc.b	nRst, $04
	smpsJump            Snd_ProtoICZ2_Loop00

Snd_ProtoICZ2_Voices:
;	Voice $00
;	$3D
;	$01, $00, $04, $02, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $18, $1A, 	$12, $82, $82, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $04, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $08, $0A, $05
	smpsVcTotalLevel    $80, $82, $82, $12

;	Voice $01
;	$3A
;	$01, $02, $01, $01, 	$1F, $5F, $5F, $5F, 	$10, $11, $09, $09
;	$07, $00, $00, $00, 	$CF, $FF, $FF, $FF, 	$1C, $22, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $11, $10
	smpsVcDecayRate2    $00, $00, $00, $07
	smpsVcDecayLevel    $0F, $0F, $0F, $0C
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $18, $22, $1C

;	Voice $02
;	$3D
;	$01, $02, $02, $03, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $02, $02, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $15

