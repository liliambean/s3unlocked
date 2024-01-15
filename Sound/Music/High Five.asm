Snd_HighFive_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Snd_HighFive_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $30

	smpsHeaderDAC       Snd_HighFive_DAC
	smpsHeaderFM        Snd_HighFive_FM1,	$00, $07
	smpsHeaderFM        Snd_HighFive_FM2,	$00, $07
	smpsHeaderFM        Snd_HighFive_FM3,	$FD, $08
	smpsHeaderFM        Snd_HighFive_FM4,	$0C, $0A
	smpsHeaderFM        Snd_HighFive_FM5,	$00, $18
	smpsHeaderFM        Snd_HighFive_FM6,	$FD, $18
	smpsHeaderPSG       Snd_HighFive_PSG1,	$E8, $07, $00, $00
	smpsHeaderPSG       Snd_HighFive_PSG2,	$E8, $07, $00, $00
	smpsHeaderPSG       Snd_HighFive_PSG3,	$00, $00, $00, $00
;	smpsHeaderPWM       Snd_HighFive_PWM1,	$00, $AA
;	smpsHeaderPWM       Snd_HighFive_PWM2,	$00, $C8
;	smpsHeaderPWM       Snd_HighFive_PWM3,	$00, $00
;	smpsHeaderPWM       Snd_HighFive_PWM4,	$00, $00

Snd_HighFive_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b nBb1, $06, nBb2, nRst, nBb1, nC3, nRst, nC2
	dc.b $6C
	smpsStop

Snd_HighFive_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b nF4, $03, nRst, nF4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b nF4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b nF4, $06, nG4, $78
	smpsStop

Snd_HighFive_FM3:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b nF4, $03, nRst, nF4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b nF4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b nF4, $06, nG4, $78
	smpsStop

Snd_HighFive_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b nF4, $03, nRst, nF4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b nF4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b nF4, $06, nG4, $78
	smpsStop

Snd_HighFive_FM5:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b nRst, $06, nF4, $03, nRst, nF4, $06
	smpsFMAlterVol      $0A
	smpsPan             panLeft, $00
	dc.b nF4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b nF4, $06, nG4, $78
	smpsStop

Snd_HighFive_FM6:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $02, $05
	dc.b nRst, $06, nF4, $03, nRst, nF4, $06
	smpsFMAlterVol      $0A
	smpsPan             panRight, $00
	dc.b nF4, $06
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b nF4, $06, nG4, $78
	smpsStop

Snd_HighFive_PSG1:
	smpsPSGvoice        sTone_11
	dc.b nRst, $24, nG4, $6C
	smpsStop

Snd_HighFive_PSG2:
	smpsPSGvoice        sTone_11
	dc.b nRst, $24, nC4, $6C

Snd_HighFive_PSG3:
Snd_HighFive_DAC:
	smpsStop

;Snd_HighFive_PWM1:
;	dc.b p8B, $06, $0C, $06, $18
;	smpsStop

;Snd_HighFive_PWM2:
;	dc.b $96, $24, p89, $18

;Snd_HighFive_PWM3:
;Snd_HighFive_PWM4:
;	smpsStop

Snd_HighFive_Voices:
;	Voice $00
;	$3A
;	$20, $23, $60, $00, 	$1E, $1F, $1F, $1F, 	$0A, $0A, $0B, $09
;	$05, $07, $0A, $00, 	$A4, $85, $96, $D7, 	$21, $25, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $06, $02, $02
	smpsVcCoarseFreq    $00, $00, $03, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0B, $0A, $0A
	smpsVcDecayRate2    $00, $0A, $07, $05
	smpsVcDecayLevel    $0D, $09, $08, $0A
	smpsVcReleaseRate   $07, $06, $05, $04
	smpsVcTotalLevel    $80, $28, $25, $21

;	Voice $01
;	$3A
;	$01, $03, $02, $01, 	$0F, $10, $11, $19, 	$0A, $05, $0A, $05
; 	$02, $02, $02, $02, 	$36, $36, $36, $58, 	$19, $1E, $32, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $11, $10, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $05, $0A
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $05, $03, $03, $03
	smpsVcReleaseRate   $08, $06, $06, $06
	smpsVcTotalLevel    $80, $32, $1E, $19

;	Voice $02
;	$2C
;	$35, $76, $35, $36, 	$1F, $1D, $1F, $1C, 	$03, $0A, $03, $0A
;	$02, $02, $02, $02, 	$A3, $77, $A3, $77, 	$1E, $80, $28, $85
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $03
	smpsVcCoarseFreq    $06, $05, $06, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $1F, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $03, $0A, $03
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $07, $0A, $07, $0A
	smpsVcReleaseRate   $07, $03, $07, $03
	smpsVcTotalLevel    $85, $28, $80, $1E
