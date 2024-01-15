Snd_ProtoICZ1_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Snd_ProtoICZ1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $19

	smpsHeaderDAC       Snd_ProtoICZ1_DAC
	smpsHeaderFM        Snd_ProtoICZ1_FM1,	$18, $18
	smpsHeaderFM        Snd_ProtoICZ1_FM2,	$0C, $10
	smpsHeaderFM        Snd_ProtoICZ1_FM3,	$0C, $1E
	smpsHeaderFM        Snd_ProtoICZ1_FM4,	$0C, $1E
	smpsHeaderFM        Snd_ProtoICZ1_FM5,	$18, $1B
	smpsHeaderPSG       Snd_ProtoICZ1_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       Snd_ProtoICZ1_PSG2,	$00, $05, $00, $00
	smpsHeaderPSG       Snd_ProtoICZ1_PSG3,	$00, $01, $00, $00

; FM1 Data
Snd_ProtoICZ1_FM1:
	smpsSetvoice        $02
	smpsChangeTransposition $F4
	smpsFMAlterVol      $05
	dc.b	nF5, $06, nRst, $02, nF5, $06, nRst, nF5, $04, nF5, $06, nRst
	dc.b	nF5, $06, nRst, $02, nF5, $06, nRst, nF5, $04, nF5, $06, nRst
	dc.b	nF5, $06, nRst, nF5, nRst, nD5, nRst, $2A, nD5, $06, nRst, $02
	dc.b	nD5, $06, nRst, nD5, nRst, nD5, $04, nD5, $06, nRst
	smpsChangeTransposition $0C
	smpsFMAlterVol      $F8

Snd_ProtoICZ1_Jump00:
	smpsSetvoice        $00
	smpsModSet          $20, $01, $05, $05
	dc.b	nBb4, $03, smpsNoAttack, nB4, $15, nG4, $06, nRst, nD4, $60, nRst, $0C
	dc.b	nBb4, $02, smpsNoAttack, nB4, $04, nRst, $06, nB4, $12, nRst, $06, nB4
	dc.b	$03, smpsNoAttack, nC5, $15, nB4, $06, nRst, nA4, $60, smpsNoAttack, nA4, $30
	dc.b	nRst, $18, nBb4, $02, smpsNoAttack, nB4, $16, nG4, $06, nRst, nD4, $60
	dc.b	nRst, $0C, nCs5, $02, smpsNoAttack, nD5, $04, nRst, $06, nD5, $18, nC5
	dc.b	nB4, $06, nRst, nA4, $60, smpsNoAttack, $48
	smpsLoop            $00, $02, Snd_ProtoICZ1_Jump00
	smpsFMAlterVol      $03
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
	smpsFMAlterVol      $FD
	smpsJump            Snd_ProtoICZ1_Jump00

; FM2 Data
Snd_ProtoICZ1_FM2:
	smpsSetvoice        $01
	dc.b	nD2, $04, nRst, nD2, nRst, $08, nD2, $04, nD2, nRst, $08, nD2
	dc.b	$04, nRst, nD2, nRst, $08, nD2, $04, nD2, nRst, $08, nD2, $04
	dc.b	nRst, $08, nD2, $04, nRst, $08, nG2, $06, nRst, $2A, nD2, $04
	dc.b	nRst, nD2, nRst, $08, nD2, $04, nRst, $08, nD2, $04, nD2, nRst
	dc.b	$08

Snd_ProtoICZ1_Jump03:
	dc.b	nG2, $04, nRst, $08, nG2, $04, nRst, nG2, nRst, $08, nG2, $04
	dc.b	nG2, nRst, $08, nG2, $05, nRst, $07, nD2, $05, nRst, $07, nG2
	dc.b	$05, nRst, $07, nD2, $05, nRst, $07, nG2, $04, nRst, $08, nG2
	dc.b	$04, nRst, nG2, nRst, $08, nG2, $04, nG2, nRst, $08, nG2, $05
	dc.b	nRst, $07, nD2, $05, nRst, $07, nG2, $05, nRst, $07, nD2, $05
	dc.b	nRst, $07, nF2, $04, nRst, $08, nF2, $04, nRst, nF2, nRst, $08
	dc.b	nF2, $04, nF2, nRst, $08, nF2, $05, nRst, $07, nC2, $05, nRst
	dc.b	$07, nF2, $05, nRst, $07, nC2, $05, nRst, $07, nF2, $04, nRst
	dc.b	$08, nF2, $04, nRst, nF2, nRst, $08, nF2, $04, nF2, nRst, $08
	dc.b	nF2, $05, nRst, $07, nC2, $05, nRst, $07, nF2, $05, nRst, $07
	dc.b	nC2, $05, nRst, $07, nG2, $04, nRst, $08, nG2, $04, nRst, nG2
	dc.b	nRst, $08, nG2, $04, nG2, nRst, $08, nG2, $05, nRst, $07, nD2
	dc.b	$05, nRst, $07, nG2, $05, nRst, $07, nD2, $05, nRst, $07, nG2
	dc.b	$04, nRst, $08, nG2, $04, nRst, nG2, nRst, $08, nG2, $04, nG2
	dc.b	nRst, $08, nG2, $05, nRst, $07, nD2, $05, nRst, $07, nG2, $05
	dc.b	nRst, $07, nD2, $05, nRst, $07, nF2, $04, nRst, $08, nF2, $04
	dc.b	nRst, nF2, nRst, $08, nF2, $04, nF2, nRst, $08, nF2, $05, nRst
	dc.b	$07, nC2, $05, nRst, $07, nF2, $05, nRst, $07, nC2, $05, nRst
	dc.b	$07, nF2, $04, nRst, $08, nF2, $04, nRst, nF2, nRst, $08, nF2
	dc.b	$04, nF2, nRst, $08, nF2, $05, nRst, $07, nC2, $05, nRst, $07
	dc.b	nA2, $05, nRst, $07, nF2, $05, nRst, $07
	smpsJump            Snd_ProtoICZ1_Jump03

; FM3 Data
Snd_ProtoICZ1_FM3:
	smpsPan             panLeft, $00
	smpsSetvoice        $02
	dc.b	nRst, $01, nC5, $06, nRst, $02, nC5, $06, nRst, nC5, $04, nC5
	dc.b	$06, nRst, nC5, $06, nRst, $02, nC5, $06, nRst, nC5, $04, nC5
	dc.b	$06, nRst, nC5, $06, nRst, nC5, nRst, nA4, nRst, $2A, nA4, $06
	dc.b	nRst, $02, nA4, $06, nRst, nA4, nRst, nA4, $04, nA4, $06, nRst
	dc.b	$05

Snd_ProtoICZ1_Jump02:
	dc.b	nG3, $04, nRst, $08, nD3, $04, nRst, $04, nG3, $04, nRst, $08
	dc.b	nD3, $04, nG3, nRst, $08, nG3, $04, nRst, $20, nD3, $08, nRst
	dc.b	$04, nG3, $04, nRst, $08, nD3, $04, nRst, $04, nG3, $04, nRst
	dc.b	$08, nD3, $04, nG3, nRst, $08, nD3, $08, nRst, $04, nG3, $04
	dc.b	nRst, $08, nG3, $0C, nD3, nF3, $04, nRst, $08, nD3, $04, nRst
	dc.b	$04, nF3, $04, nRst, $08, nD3, $04, nF3, nRst, $08, nF3, $04
	dc.b	nRst, $20, nD3, $08, nRst, $04, nF3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $04, nF3, $04, nRst, $08, nD3, $04, nF3, nRst, $08, nD3
	dc.b	$08, nRst, $04, nA3, $04, nRst, $08, nA3, $0C, nD3
	smpsJump            Snd_ProtoICZ1_Jump02

; FM4 Data
Snd_ProtoICZ1_FM4:
	smpsPan             panRight, $00
	smpsSetvoice        $02
	dc.b	nRst, $02, nF4, $06, nRst, $02, nF4, $06, nRst, nF4, $04, nF4
	dc.b	$06, nRst, nF4, $06, nRst, $02, nF4, $06, nRst, nF4, $04, nF4
	dc.b	$06, nRst, nF4, $06, nRst, nF4, nRst, nD4, nRst, $2A, nD4, $06
	dc.b	nRst, $02, nD4, $06, nRst, nD4, nRst, nD4, $04, nD4, $06, nRst
	dc.b	$04

Snd_ProtoICZ1_Jump01:
	dc.b	nB3, $04, nRst, $08, nD3, $04, nRst, $04, nB3, $04, nRst, $08
	dc.b	nD3, $04, nB3, nRst, $08, nB3, $04, nRst, $20, nD3, $08, nRst
	dc.b	$04, nB3, $04, nRst, $08, nD3, $04, nRst, $04, nB3, $04, nRst
	dc.b	$08, nD3, $04, nB3, nRst, $08, nD3, $08, nRst, $04, nB3, $04
	dc.b	nRst, $08, nB3, $0C, nD3, nA3, $04, nRst, $08, nD3, $04, nRst
	dc.b	$04, nA3, $04, nRst, $08, nD3, $04, nA3, nRst, $08, nA3, $04
	dc.b	nRst, $20, nD3, $08, nRst, $04, nA3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $04, nA3, $04, nRst, $08, nD3, $04, nA3, nRst, $08, nD3
	dc.b	$08, nRst, $04, nC4, $04, nRst, $08, nC4, $0C, nD3
	smpsJump            Snd_ProtoICZ1_Jump01

; FM5 Data
Snd_ProtoICZ1_FM5:
	dc.b	nRst, $60, nRst, nRst, $09
	smpsDetune          $05
	smpsJump            Snd_ProtoICZ1_Jump00

; DAC Data
Snd_ProtoICZ1_DAC:
	dc.b	dKickS3, $18, dKickS3, dKickS3, dKickS3
	smpsJump            Snd_ProtoICZ1_DAC

; PSG1 Data
Snd_ProtoICZ1_PSG1:
	smpsPSGvoice        sTone_05
	dc.b	nRst, $60, nRst

Snd_ProtoICZ1_Loop01:
	smpsCall            Snd_ProtoICZ1_Call00
	smpsLoop            $00, $04, Snd_ProtoICZ1_Loop01

Snd_ProtoICZ1_Jump04:
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst

Snd_ProtoICZ1_Loop02:
	smpsCall            Snd_ProtoICZ1_Call00
	smpsLoop            $00, $06, Snd_ProtoICZ1_Loop02
	smpsJump            Snd_ProtoICZ1_Jump04

Snd_ProtoICZ1_Call00:
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
Snd_ProtoICZ1_PSG2:
	dc.b	nRst, $09
	smpsJump            Snd_ProtoICZ1_PSG1

; PSG3 Data
Snd_ProtoICZ1_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        sTone_02
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04, nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $2C
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04, nMaxPSG2, $08, nRst, $04, nMaxPSG2, $08, nRst, $04
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $02

Snd_ProtoICZ1_Loop00:
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsLoop            $00, $03, Snd_ProtoICZ1_Loop00
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08
	smpsPSGAlterVol     $01
	dc.b	nRst, $04
	smpsJump            Snd_ProtoICZ1_Loop00

Snd_ProtoICZ1_Voices:
;	Voice $00
;	$3A
;	$01, $02, $01, $00, 	$53, $1C, $5D, $11, 	$02, $12, $14, $0F
;	$02, $03, $01, $00, 	$1F, $4F, $1F, $0F, 	$24, $20, $24, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $01, $02, $01
	smpsVcRateScale     $00, $01, $00, $01
	smpsVcAttackRate    $11, $1D, $1C, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $14, $12, $02
	smpsVcDecayRate2    $00, $01, $03, $02
	smpsVcDecayLevel    $00, $01, $04, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $24, $20, $24

;	Voice $01
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

;	Voice $02
;	$3D
;	$01, $02, $02, $04, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $02, $02, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $15

