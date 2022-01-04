Snd_Knux_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Knux_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $43

	smpsHeaderDAC       Snd_Knux_DAC
	smpsHeaderFM        Snd_Knux_FM1,	$C2, $03
	smpsHeaderFM        Snd_Knux_FM2,	$E0, $18
	smpsHeaderFM        Snd_Knux_FM3,	$0C, $10
	smpsHeaderFM        Snd_Knux_FM4,	$00, $14
	smpsHeaderFM        Snd_Knux_FM5,	$00, $14
	smpsHeaderPSG       Snd_Knux_PSG1,	$03, $01, $00, $00
	smpsHeaderPSG       Snd_Knux_PSG2,	$00, $01, $00, $00
	smpsHeaderPSG       Snd_Knux_PSG3,	$00, $00, $00, $00

; FM1 Data
Snd_Knux_FM1:
	smpsSetvoice        $01
	dc.b	nC1, $08, $04, nRst, $07, nC1, $05
	smpsSetvoice        $02
	dc.b	nE3, $0C
	smpsSetvoice        $01
	dc.b	nC1, nRst, nC1
	smpsSetvoice        $02
	dc.b	nE3, $18
	smpsSetvoice        $01
	dc.b	nC1, $0C, nRst, $07, nC1, $05
	smpsSetvoice        $02
	dc.b	nE3, $0C
	smpsSetvoice        $01
	dc.b	nC1, nRst, $07, nRst, $05, nC1, $0C
	smpsSetvoice        $02
	dc.b	nE3, $13, nRst, $05
	smpsJump            Snd_Knux_FM1

; FM2 Data
Snd_Knux_FM2:
	smpsSetvoice        $00
	dc.b	nC4, $07, $05, $07, nRst, $05, nRst, $07, nC4, $05, $07, $05
	dc.b	nC4, $07, $05, $07, $05, $07, $05, $07, $05
	smpsJump            Snd_Knux_FM2

; FM3 Data
Snd_Knux_FM3:
; FM4 Data
Snd_Knux_FM4:
; FM5 Data
Snd_Knux_FM5:
; PSG1 Data
Snd_Knux_PSG1:
; PSG2 Data
Snd_Knux_PSG2:
; PSG3 Data
Snd_Knux_PSG3:
	smpsStop

; DAC Data
Snd_Knux_DAC:
	smpsCall            Snd_Knux_Call00
	smpsLoop            $00, $04, Snd_Knux_DAC

Snd_Knux_Jump00:
	smpsCall            Snd_Knux_Call01

Snd_Knux_Loop00:
	smpsCall            Snd_Knux_Call00
	smpsLoop            $00, $03, Snd_Knux_Loop00
	smpsJump            Snd_Knux_Jump00

Snd_Knux_Call00:
	dc.b	nRst, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $0C, $08, $04, dEchoedClapHit_S3
	dc.b	$18, nRst, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $14, $04, dEchoedClapHit_S3
	dc.b	$18, nRst, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $0C, $08, $04
	dc.b	dEchoedClapHit_S3, $18, nRst, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $14, $04
	dc.b	dEchoedClapHit_S3, $18
	smpsReturn

Snd_Knux_Call01:
	dc.b	dBassHey, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $0C, $08, $04, dEchoedClapHit_S3
	dc.b	$18, nRst, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $14, $04, dEchoedClapHit_S3
	dc.b	$18, nRst, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $0C, $08, $04
	dc.b	dEchoedClapHit_S3, $18, nRst, $0C, dLowerEchoedClapHit_S3, dEchoedClapHit_S3, $08, dLowerEchoedClapHit_S3, $04, $0C, $14, $04
	dc.b	dEchoedClapHit_S3, $18
	smpsReturn

Snd_Knux_Voices:
;	Voice $00
;	$01
;	$02, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$10, $18, $18, $10
;	$0E, $00, $00, $08, 	$FF, $FF, $FF, $0F, 	$12, $10, $10, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $18, $18, $10
	smpsVcDecayRate2    $08, $00, $00, $0E
	smpsVcDecayLevel    $00, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $10, $10, $12

;	Voice $01
;	$05
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$12, $0C, $0C, $0C
;	$12, $18, $1F, $1F, 	$1F, $1F, $1F, $1F, 	$07, $86, $86, $86
	smpsVcAlgorithm     $05
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $12
	smpsVcDecayRate2    $1F, $1F, $18, $12
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $06, $06, $06, $07

;	Voice $02
;	$3C
;	$00, $00, $F0, $F1, 	$1F, $1F, $17, $1F, 	$1F, $1F, $14, $1F
;	$09, $11, $3A, $1D, 	$02, $0F, $9F, $7F, 	$03, $80, $02, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $0F, $0F, $00, $00
	smpsVcCoarseFreq    $01, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $17, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $14, $1F, $1F
	smpsVcDecayRate2    $1D, $3A, $11, $09
	smpsVcDecayLevel    $07, $09, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $02
	smpsVcTotalLevel    $00, $02, $00, $03

