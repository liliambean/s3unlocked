ProtoKnux_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     ProtoKnux_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $05

	smpsHeaderDAC       ProtoKnux_DAC
	smpsHeaderFM        ProtoKnux_FM1,	$00, $10
	smpsHeaderFM        ProtoKnux_FM2,	$00, $10
	smpsHeaderFM        ProtoKnux_FM3,	$00, $10
	smpsHeaderFM        ProtoKnux_FM4,	$00, $10
	smpsHeaderFM        ProtoKnux_FM5,	$00, $10
	smpsHeaderPSG       ProtoKnux_PSG1,	$F4, $07, $00, $00
	smpsHeaderPSG       ProtoKnux_PSG2,	$00, $02, $00, $00
	smpsHeaderPSG       ProtoKnux_PSG3,	$00, $00, $00, sTone_03

; PSG2 Data
ProtoKnux_PSG2:
	smpsStop

; FM1 Data
ProtoKnux_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsModSet          $07, $01, $03, $05

ProtoKnux_Jump04:
	dc.b	nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4, nF4, nRst, nE4, nEb4
	dc.b	nRst, nD4, $08, nRst, $04, nCs4, $08, nRst, $04, nC4, $06, nRst
	dc.b	nCs4, nRst, nC4, nFs4, nF4, nE4, nRst, nEb4, nD4, nRst
	smpsModSet          $07, $01, $14, $05
	dc.b	nCs4, $18
	smpsModSet          $07, $01, $03, $05
	dc.b	nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4, nF4, nRst, nE4, nEb4
	dc.b	nRst, nD4, $08, nRst, $04, nCs4, $08, nRst, $04, nG3, $06, nAb3
	dc.b	nA3, nBb3, nAb3, nA3, nBb3, nB3
	smpsFMAlterVol      $FF
	dc.b	nA3
	smpsFMAlterVol      $FF
	dc.b	nBb3
	smpsFMAlterVol      $FF
	dc.b	nB3
	smpsFMAlterVol      $FF
	dc.b	nC4
	smpsFMAlterVol      $FF
	dc.b	nBb3
	smpsFMAlterVol      $FF
	dc.b	nB3
	smpsFMAlterVol      $FF
	dc.b	nC4
	smpsFMAlterVol      $FF
	dc.b	nCs4
	smpsFMAlterVol      $08
	smpsPan             panLeft, $00
	dc.b	nG4, $06, nAb4, nA4, nBb4
	smpsPan             panRight, $00
	dc.b	nAb5, nA5, nBb5, nB5
	smpsPan             panLeft, $00
	dc.b	nA6, nBb6
	smpsPan             panRight, $00
	dc.b	nB6, nC7
	smpsFMAlterVol      $FC
	smpsPan             panCenter, $00
	dc.b	nBb3, nB3, nC3, nCs4
	smpsFMAlterVol      $04
	smpsJump            ProtoKnux_Jump04

; FM2 Data
ProtoKnux_FM2:
	smpsPan             panLeft, $00
	smpsSetvoice        $01
	smpsModSet          $07, $01, $01, $05

ProtoKnux_Jump03:
	dc.b	nF2, $0C, nRst, $06, nF2, $0C, $06, nRst, $0C, nF2, $06, nRst
	dc.b	nF2, $0C, nAb2, nRst, nF2, nRst, $06, nF2, $0C, $06, nRst, $0C
	dc.b	nF2, $06, nRst, nF2, $0C, nFs2, nRst, nF2, nRst, $06, nF2, $0C
	dc.b	$06, nRst, $0C, nF2, $06, nRst, nF2, $0C, nAb2, nRst, nC2, $06
	dc.b	nRst, nD2, nRst, nCs2, nRst, nEb2, nRst, nD2, nRst, nE2, nRst, nEb2
	dc.b	nRst, nF2, nRst, nRst, $60
	smpsJump            ProtoKnux_Jump03

; FM3 Data
ProtoKnux_FM3:
	smpsPan             panRight, $00
	smpsSetvoice        $01
	smpsModSet          $07, $01, $01, $05

ProtoKnux_Jump02:
	dc.b	nRst, $0C, nF3, $06, nRst, $12, nF3, $0C, nRst, $06, nF3, nRst
	dc.b	$18, nBb3, $0C, nRst, nF3, $06, nRst, $12, nF3, $0C, nRst, $06
	dc.b	nF3, nRst, $18, nEb3, $0C, nRst, nF3, $06, nRst, $12, nF3, $0C
	dc.b	nRst, $06, nF3, nRst, $18, nBb3, $0C, nRst, $06, nCs2, nRst, nEb2
	dc.b	nRst, nD2, nRst, nE2, nRst, nEb2, nRst, nF2, nRst, nE2, nRst, nFs2
	dc.b	nRst, $60
	smpsJump            ProtoKnux_Jump02

; FM4 Data
ProtoKnux_FM4:
	smpsPan             panLeft, $00
	dc.b	nRst, $01
	smpsSetvoice        $02
	smpsModSet          $07, $01, $03, $05

ProtoKnux_Jump01:
	dc.b	nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4, nF4, nRst, nE4, nEb4
	dc.b	nRst, nD4, $08, nRst, $04, nCs4, $08, nRst, $04, nC4, $06, nRst
	dc.b	nCs4, nRst, nC4, nFs4, nF4, nE4, nRst, nEb4, nD4, nRst
	smpsModSet          $07, $01, $14, $05
	dc.b	nCs4, $18
	smpsModSet          $07, $01, $03, $05
	dc.b	nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4, nF4, nRst, nE4, nEb4
	dc.b	nRst, nD4, $08, nRst, $04, nCs4, $08, nRst, $04, nG3, $06, nAb3
	dc.b	nA3, nBb3, nAb3, nA3, nBb3, nB3
	smpsFMAlterVol      $FF
	dc.b	nA3
	smpsFMAlterVol      $FF
	dc.b	nBb3
	smpsFMAlterVol      $FF
	dc.b	nB3
	smpsFMAlterVol      $FF
	dc.b	nC4
	smpsFMAlterVol      $FF
	dc.b	nBb3
	smpsFMAlterVol      $FF
	dc.b	nB3
	smpsFMAlterVol      $FF
	dc.b	nC4
	smpsFMAlterVol      $FF
	dc.b	nCs4
	smpsFMAlterVol      $08
	dc.b	nRst, $48, nBb5, $06, nB4, nC6, nCs5
	smpsJump            ProtoKnux_Jump01

; FM5 Data
ProtoKnux_FM5:
	smpsPan             panRight, $00
	dc.b	nRst, $02
	smpsSetvoice        $02
	smpsModSet          $07, $01, $03, $05

ProtoKnux_Jump00:
	dc.b	nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4, nF4, nRst, nE4, nEb4
	dc.b	nRst, nD4, $08, nRst, $04, nCs4, $08, nRst, $04, nC4, $06, nRst
	dc.b	nCs4, nRst, nC4, nFs4, nF4, nE4, nRst, nEb4, nD4, nRst
	smpsModSet          $07, $01, $14, $05
	dc.b	nCs4, $18
	smpsModSet          $07, $01, $03, $05
	dc.b	nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4, nF4, nRst, nE4, nEb4
	dc.b	nRst, nD4, $08, nRst, $04, nCs4, $08, nRst, $04, nG3, $06, nAb3
	dc.b	nA3, nBb3, nAb3, nA3, nBb3, nB3
	smpsFMAlterVol      $FF
	dc.b	nA3
	smpsFMAlterVol      $FF
	dc.b	nBb3
	smpsFMAlterVol      $FF
	dc.b	nB3
	smpsFMAlterVol      $FF
	dc.b	nC4
	smpsFMAlterVol      $FF
	dc.b	nBb3
	smpsFMAlterVol      $FF
	dc.b	nB3
	smpsFMAlterVol      $FF
	dc.b	nC4
	smpsFMAlterVol      $FF
	dc.b	nCs4
	smpsFMAlterVol      $08
	dc.b	nRst, $48, nBb4, $06, nB5, nC5, nCs6
	smpsJump            ProtoKnux_Jump00

; PSG1 Data
ProtoKnux_PSG1:
	dc.b	nRst, $02
	smpsPSGvoice        sTone_09

ProtoKnux_Jump05:
	dc.b	nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4, nF4, nRst, nE4, nEb4
	dc.b	nRst, nD4, $08, nRst, $04, nCs4, $08, nRst, $04, nC4, $06, nRst
	dc.b	nCs4, nRst, nC4, nFs4, nF4, nE4, nRst, nEb4, nD4, nRst, nCs4, $18
	dc.b	nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4, nF4, nRst, nE4, nEb4
	dc.b	nRst, nD4, $08, nRst, $04, nCs4, $08, nRst, $04, nG3, $06, nAb3
	dc.b	nA3, nBb3, nAb3, nA3, nBb3, nB3, nA3, nBb3, nB3, nC4, nBb3, nB3
	dc.b	nC4, nCs4, nG4, $06, nAb4, nA4, nBb4, nAb3, nA3, nBb3, nB3, nA4
	dc.b	nBb4, nB4, nC5, nBb3, nB3, nC4, nCs4
	smpsJump            ProtoKnux_Jump05

; PSG3 Data
ProtoKnux_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG2, $18, nMaxPSG2, nMaxPSG2
	smpsPSGvoice        sTone_02
	dc.b	nMaxPSG2
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG2, nMaxPSG2, nMaxPSG2, nMaxPSG2, $0C
	smpsPSGvoice        sTone_02
	dc.b	nMaxPSG2
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG2, $18, nMaxPSG2, nMaxPSG2
	smpsPSGvoice        sTone_02
	dc.b	nMaxPSG2
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG2, $06, nMaxPSG2, nMaxPSG2, nMaxPSG2, nMaxPSG2, nMaxPSG2, nMaxPSG2, nMaxPSG2
	smpsPSGvoice        sTone_02
	dc.b	nMaxPSG2, $06, nMaxPSG2, nMaxPSG2, nMaxPSG2, nMaxPSG2, nMaxPSG2, nMaxPSG2, nMaxPSG2, nRst, $48
	smpsPSGvoice        sTone_01
	dc.b	nMaxPSG2, $06, nMaxPSG2, nMaxPSG2, nMaxPSG2
	smpsJump            ProtoKnux_PSG3

; DAC Data
ProtoKnux_DAC:
	dc.b	dKickS3, $18, dMuffledSnare, dKickS3, dMuffledSnare, dKickS3, dMuffledSnare, dKickS3, dMuffledSnare, $0C, dSnareS3, dKickS3
	dc.b	$18, dMuffledSnare, dKickS3, dMuffledSnare, dKickS3, $06, dSnareS3, dSnareS3, dSnareS3, dKickS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dKickS3, dSnareS3, dSnareS3, dSnareS3, dMuffledSnare, dSnareS3, dSnareS3, dSnareS3, dKickS3, $18, dKickS3
	dc.b	dKickS3, dMuffledSnare, $06, dSnareS3, dSnareS3, dSnareS3
	smpsJump            ProtoKnux_DAC

ProtoKnux_Voices:
;	Voice $00
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

;	Voice $01
;	$31
;	$34, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$0C, $07, $0C, $09
;	$07, $07, $07, $08, 	$2F, $1F, $1F, $2F, 	$17, $32, $14, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $04
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0C, $07, $0C
	smpsVcDecayRate2    $08, $07, $07, $07
	smpsVcDecayLevel    $02, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $14, $32, $17

;	Voice $02
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

