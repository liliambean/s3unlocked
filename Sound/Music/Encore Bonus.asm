Snd_EncoreBonus_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Snd_EncoreBonus_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $55

	smpsHeaderDAC       Snd_EncoreBonus_DAC
	smpsHeaderFM        Snd_EncoreBonus_FM1,	$F4, $0E
	smpsHeaderFM        Snd_EncoreBonus_FM2,	$00, $07
	smpsHeaderFM        Snd_EncoreBonus_FM3,	$FC, $0A
	smpsHeaderFM        Snd_EncoreBonus_FM4,	$00, $15
	smpsHeaderFM        Snd_EncoreBonus_FM5,	$FC, $18
	smpsHeaderFM        Snd_EncoreBonus_FM6,	$00, $1C
	smpsHeaderPSG       Snd_EncoreBonus_PSG1,	$E8, $01, $00, $00
	smpsHeaderPSG       Snd_EncoreBonus_PSG2,	$E8, $02, $00, $00
	smpsHeaderPSG       Snd_EncoreBonus_PSG3,	$23, $02, $00, $00
;	smpsHeaderPWM       Snd_EncoreBonus_PWM1,	$00, $FF
;	smpsHeaderPWM       Snd_EncoreBonus_PWM2,	$00, $DD
;	smpsHeaderPWM       Snd_EncoreBonus_PWM3,	$00, $BB
;	smpsHeaderPWM       Snd_EncoreBonus_PWM4,	$00, $00

Snd_EncoreBonus_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $40, nRst, $40, nRst, $40, nCs3, $04
	dc.b	nCs3, nCs3, nCs3, nCs3, nCs3, nCs3, nCs3, nCs3
	dc.b	nRst, nCs4, nRst, nC3, $02, nCs3, $0E

Snd_EncoreBonus_Loop1:
	dc.b	nEb3, $04, nRst, nEb3, nEb3, nEb3, nRst, nEb3
	dc.b	nEb3, nEb3, nRst, nEb3, nEb3, nEb3, nRst, nEb3
	dc.b	nEb3, nCs3, $04, nRst, nCs3, nCs3, nCs3, nRst
	dc.b	nCs3, nCs3, nCs3, nRst, nCs3, nCs3, nCs3, nRst
	dc.b	nCs3, nCs3
	smpsLoop            $00, $04, Snd_EncoreBonus_Loop1
	dc.b	nEb3, $08, nRst, nBb3, nRst, $04, nEb3, $08
	dc.b	nRst, $04, nEb3, $08, nRst, $04, nBb3, $08
	dc.b	nRst, $04, nCs3, $08, nRst, nAb3, nRst, $04
	dc.b	nCs3, $08, nRst, $04, nCs3, $08, nRst, $04
	dc.b	nAb3, $08, nRst, $04, nEb3, $08, nRst, nBb3
	dc.b	nRst, $04, nEb3, $08, nRst, $04, nEb3, $08
	dc.b	nRst, $04, nBb3, $08, nRst, $04, nCs3, $08
	dc.b	nRst, nAb3, nRst, $04, nCs3, $08, nRst, $1C
	dc.b	nEb3, $08, nRst, nBb3, nRst, $04, nEb3, $08
	dc.b	nRst, $04, nEb3, $08, nRst, $04, nBb3, $08
	dc.b	nRst, $04, nCs3, $08, nRst, nAb3, nRst, $04
	dc.b	nCs3, $08, nRst, $04, nCs3, $08, nRst, $04
	dc.b	nAb3, $08, nRst, $04, nEb3, $40, nCs3, $20
	dc.b	nRst, $08, nCs3, nC4, $02, nCs3, $0E
	smpsJump            Snd_EncoreBonus_Loop1

Snd_EncoreBonus_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsCall            Snd_EncoreBonus_Call1
	smpsCall            Snd_EncoreBonus_Call2

Snd_EncoreBonus_Loop2:
	smpsCall            Snd_EncoreBonus_Call1
	smpsLoop            $00, $03, Snd_EncoreBonus_Loop2
	smpsCall            Snd_EncoreBonus_Call2
	smpsSetvoice        $02
	dc.b	nEb4, $08, nRst, nG4, nRst, nAb4, nRst, $04
	dc.b	nBb4, $08, nRst, $04, nEb4, $08, nRst, nCs4
	dc.b	nF4, nRst, nAb4, nRst, $04, nBb4, $08, nRst
	dc.b	$04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4
	dc.b	nRst, $04, nBb4, $08, nRst, $04, nEb4, $08
	dc.b	nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4
	dc.b	$08, nRst, $04, nCs4, $08, nEb4, nRst, nG4
	dc.b	nRst, nAb4, nRst, $04, nBb4, $08, nRst, $04
	dc.b	nEb5, $08, nRst, nCs4, nF4, nRst, nAb4, nRst
	dc.b	$04, nBb4, $08, nRst, $04, nCs5, $08, nEb4
	dc.b	nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst
	dc.b	nAb4, nRst, $04, nBb4, $08, nRst, $0C
	smpsSetvoice        $01
	smpsJump            Snd_EncoreBonus_Loop2

Snd_EncoreBonus_Call1:
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst
	dc.b	$04
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $04, nF5, $08
	smpsReturn

Snd_EncoreBonus_Call2:
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst
	dc.b	$04
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nF4, $04, nRst, $20
	smpsReturn

Snd_EncoreBonus_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsCall            Snd_EncoreBonus_Call1
	smpsCall            Snd_EncoreBonus_Call2

Snd_EncoreBonus_Loop3:
	smpsCall            Snd_EncoreBonus_Call1
	smpsLoop            $00, $03, Snd_EncoreBonus_Loop3
	smpsCall            Snd_EncoreBonus_Call2
	smpsSetvoice        $02
	smpsAlterPitch      $FF
	dc.b	nEb4, $08, nRst, nG4, nRst, nAb4, nRst, $04
	dc.b	nBb4, $08, nRst, $04, nEb4, $08, nRst, nCs4
	dc.b	nF4, nRst, nAb4, nRst, $04, nBb4, $08, nRst
	dc.b	$04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4
	dc.b	nRst, $04, nBb4, $08, nRst, $04, nEb4, $08
	dc.b	nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4
	dc.b	$08, nRst, $04, nCs4, $08, nEb4, nRst, nG4
	dc.b	nRst, nAb4, nRst, $04, nBb4, $08, nRst, $04
	dc.b	nEb5, $08, nRst, nCs4, nF4, nRst, nAb4, nRst
	dc.b	$04, nBb4, $08, nRst, $04, nCs5, $08, nEb4
	dc.b	nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst
	dc.b	nAb4, nRst, $04, nBb4, $08, nRst, $0C
	smpsSetvoice        $01
	smpsAlterPitch      $01
	smpsJump            Snd_EncoreBonus_Loop3

Snd_EncoreBonus_FM4:
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $04
	smpsCall            Snd_EncoreBonus_Call1
	smpsCall            Snd_EncoreBonus_Call2

Snd_EncoreBonus_Loop4:
	smpsCall            Snd_EncoreBonus_Call1
	smpsLoop            $00, $03, Snd_EncoreBonus_Loop4
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst
	dc.b	$04
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nF4, $04, nRst, $1C
	smpsSetvoice        $03
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $03

Snd_EncoreBonus_Loop5:
	dc.b	nG4, $40, nF4
	smpsLoop            $00, $04, Snd_EncoreBonus_Loop5
	dc.b	nRst, $04
	smpsSetvoice        $01
	smpsModSet          $01, $01, $02, $05
	smpsFMAlterVol      $FD
	smpsJump            Snd_EncoreBonus_Loop4

Snd_EncoreBonus_FM5:
	smpsSetvoice        $01
	smpsPan             panRight, $00
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $04
	smpsCall            Snd_EncoreBonus_Call1
	smpsCall            Snd_EncoreBonus_Call2

Snd_EncoreBonus_Loop6:
	smpsCall            Snd_EncoreBonus_Call1
	smpsLoop            $00, $03, Snd_EncoreBonus_Loop6
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nD5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nD5, $04, nG5, $08, nC5, $02, nRst, nRst
	dc.b	$04
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nC5, $02, nRst
	smpsFMAlterVol      $09
	dc.b	nC5, $02, nRst, nRst, $04
	smpsFMAlterVol      $F7
	dc.b	nF4, $04, nRst, $1C
	smpsSetvoice        $03
	smpsAlterPitch      $FF
	smpsFMAlterVol      $03

Snd_EncoreBonus_Loop7:
	dc.b	nG4, $40, nF4
	smpsLoop            $00, $04, Snd_EncoreBonus_Loop7
	smpsAlterPitch      $01
	dc.b	nRst, $04
	smpsSetvoice        $01
	smpsModSet          $00, $00, $00, $00
	smpsFMAlterVol      $FD
	smpsJump            Snd_EncoreBonus_Loop6

Snd_EncoreBonus_FM6:
	smpsPan             panCenter, $00
	dc.b	nRst, $40, $40, $40, $40
	smpsModSet          $01, $01, $02, $05
	dc.b	nRst, $04

Snd_EncoreBonus_Loop8:
	smpsSetvoice        $04
	dc.b	nBb5, $03, nRst, $01, nBb5, $03, nRst, $01
	dc.b	nBb5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nBb5, $03, nRst, $01, nBb5, $03, nRst, $01
	dc.b	nBb5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nD5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nD5, $03, nRst, $01
	dc.b	nD5, $03, nRst, $01, nF5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nAb5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nEb5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nAb5, $03, nRst, $01
	dc.b	nAb5, $03, nRst, $01, nEb5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nC5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nEb5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nC5, $03, nRst, $01
	dc.b	nC5, $03, nRst, $01, nEb5, $03, nRst, $01
	smpsLoop            $00, $04, Snd_EncoreBonus_Loop8
	smpsSetvoice        $02
	dc.b	nEb4, $08, nRst, nG4, nRst, nAb4, nRst, $04
	dc.b	nBb4, $08, nRst, $04, nEb4, $08, nRst, nCs4
	dc.b	nF4, nRst, nAb4, nRst, $04, nBb4, $08, nRst
	dc.b	$04, nCs4, $08, nEb4, nRst, nG4, nRst, nAb4
	dc.b	nRst, $04, nBb4, $08, nRst, $04, nEb4, $08
	dc.b	nRst, nCs4, nF4, nRst, nAb4, nRst, $04, nBb4
	dc.b	$08, nRst, $04, nCs4, $08, nEb4, nRst, nG4
	dc.b	nRst, nAb4, nRst, $04, nBb4, $08, nRst, $04
	dc.b	nEb5, $08, nRst, nCs4, nF4, nRst, nAb4, nRst
	dc.b	$04, nBb4, $08, nRst, $04, nCs5, $08, nEb4
	dc.b	nRst, nG4, nRst, nAb4, nRst, $04, nBb4, $08
	dc.b	nRst, $04, nEb5, $08, nRst, nCs4, nF4, nRst
	dc.b	nAb4, nRst, $04, nBb4, $08, nRst, $0C
	smpsJump            Snd_EncoreBonus_Loop8

Snd_EncoreBonus_PSG1:
	smpsPSGvoice        sTone_03
	dc.b	nRst, $40, $40, $40, $40

Snd_EncoreBonus_Loop9:
	dc.b	nBb5, $02, nRst, nBb5, nRst, nBb5, nRst, nF5
	dc.b	nRst, nBb5, nRst, nBb5, nRst, nBb5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5
	dc.b	nRst
	smpsLoop            $00, $04, Snd_EncoreBonus_Loop9
	smpsPSGAlterVol $FF

Snd_EncoreBonus_Loop10:
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsLoop            $00, $04, Snd_EncoreBonus_Loop10

Snd_EncoreBonus_Loop11:
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nF5, $02, nRst, $06
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsLoop            $00, $02, Snd_EncoreBonus_Loop11
	smpsPSGAlterVol $01
	smpsJump            Snd_EncoreBonus_Loop9

Snd_EncoreBonus_PSG2:
	smpsPSGvoice        sTone_03
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40

Snd_EncoreBonus_Loop12:
	smpsAlterPitch      $FE
	dc.b	nBb5, $02, nRst, nBb5, nRst, nBb5, nRst, nF5
	dc.b	nRst, nBb5, nRst, nBb5, nRst, nBb5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nD5, nRst, nD5, nRst, nD5, nRst, nF5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nAb5, nRst, nAb5, nRst, nAb5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5
	dc.b	nRst, nC5, nRst, nC5, nRst, nC5, nRst, nEb5
	dc.b	nRst
	smpsAlterPitch      $02
	smpsLoop            $00, $04, Snd_EncoreBonus_Loop12
	smpsPSGAlterVol $03
	smpsModSet          $01, $01, $03, $06
	dc.b	nRst, $08

Snd_EncoreBonus_Loop13:
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsLoop            $00, $03, Snd_EncoreBonus_Loop13
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06
	smpsModSet          $00, $00, $00, $00
	smpsPSGAlterVol $FD
	smpsPSGAlterVol $FE

Snd_EncoreBonus_Loop14:
	smpsAlterPitch      $07
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nF5, $02, nRst, $06
	dc.b	nEb5, $02, nRst, $06, nBb4, $02, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, nEb5
	dc.b	nRst, $06, nEb5, $02, nRst, nBb4, nRst, $06
	dc.b	nCs5, $02, nRst, $06, nBb4, $02, nRst, $06
	smpsAlterPitch      $F9
	smpsLoop            $00, $02, Snd_EncoreBonus_Loop14
	smpsPSGAlterVol $02
	smpsJump            Snd_EncoreBonus_Loop12

Snd_EncoreBonus_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        sTone_04

Snd_EncoreBonus_Loop15:
	dc.b	nRst, $08, nC4, $04, nC4, nRst, $08, nC4
	dc.b	$04, nC4, nRst, $08, nC4, $04, nC4, nRst
	dc.b	$04, nC4, nRst, $08
	smpsLoop            $00, $04, Snd_EncoreBonus_Loop15
	smpsPSGAlterVol $FE

Snd_EncoreBonus_Jump1:
	smpsPSGvoice        sTone_08
	dc.b	nC4, $04
	smpsPSGvoice        sTone_04
	smpsPSGAlterVol $03
	dc.b	nC4, $04
	smpsPSGAlterVol $FE
	dc.b	nC4, $04
	smpsPSGAlterVol $02
	dc.b	nC4, $04
	smpsPSGAlterVol $FD

Snd_EncoreBonus_Loop16:
	dc.b	nC4, $04
	smpsPSGAlterVol $03
	dc.b	nC4, $04
	smpsPSGAlterVol $FE
	dc.b	nC4, $04
	smpsPSGAlterVol $02
	dc.b	nC4, $04
	smpsPSGAlterVol $FD
	smpsLoop            $00, $03, Snd_EncoreBonus_Loop16
	smpsJump            Snd_EncoreBonus_Jump1

;Snd_EncoreBonus_PWM1:
;	dc.b	$96, $40, $40, $40, $40

;Snd_EncoreBonus_Loop17:
;	dc.b	p8B, $10, p8B, p8B, p8B, p8B, p8B, p8B
;	dc.b	p8B, $0C, p8B, $04
;	smpsLoop            $00, $04, Snd_EncoreBonus_Loop17

;Snd_EncoreBonus_Loop18:
;	dc.b	p8B, $10, p8B, p8B, p8B
;	smpsLoop            $00, $08, Snd_EncoreBonus_Loop18
;	smpsJump            Snd_EncoreBonus_Loop17

;Snd_EncoreBonus_PWM2:
;	dc.b	$96, $40, $96, $40, $96, $40, $96, $20
;	dc.b	p82, $04, $08, $04, $08, $08

;Snd_EncoreBonus_Jump2:
;	smpsCall            Snd_EncoreBonus_Call3
;	dc.b	nRst, $10, p82, $0C, $04, nRst, $04, p82
;	dc.b	$04, $08, $10, nRst, $10, p82, $0C, $04
;	dc.b	nRst, $04, p82, $04, $08, p82, $08, $04
;	dc.b	$04, nRst, $10, p82, $0C, $04, nRst, $04
;	dc.b	p82, $04, $08, $10, nRst, $10, p82, $0C
;	dc.b	$04, p82, $04, $08, $04, p82, $08, $08

;Snd_EncoreBonus_Loop19:
;	smpsCall            Snd_EncoreBonus_Call3
;	smpsLoop            $00, $02, Snd_EncoreBonus_Loop19
;	smpsJump            Snd_EncoreBonus_Jump2

;Snd_EncoreBonus_Call3:
;	dc.b	nRst, $10, p82, $0C, $04, nRst, $04, p82
;	dc.b	$04, $08, $10, nRst, $10, p82, $0C, $04
;	dc.b	nRst, $04, p82, $04, $08, $08, $04, $04
;	dc.b	nRst, $10, p82, $0C, $04, nRst, $04, p82
;	dc.b	$04, $08, $10, nRst, $10, p82, $0C, $04
;	dc.b	nRst, $04, p82, p82, p82, p82, $08, $04
;	dc.b	$04
;	smpsReturn

;Snd_EncoreBonus_PWM3:
;	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40

;Snd_EncoreBonus_Loop20:
;	dc.b	nRst, $40
;	smpsLoop            $00, $08, Snd_EncoreBonus_Loop20

;Snd_EncoreBonus_Loop21:
;	dc.b	p84, $08, $96, p84, $96, p84, $08, $96
;	dc.b	$04, p84, $04, sHold, $04, $96, p84, $08
;	dc.b	$96, $08, p84, $04, $96, p84, $08, $96
;	dc.b	p84, $08, $96, $04, p84, $04, sHold, $04
;	dc.b	$96, p84, $04, $96
;	smpsLoop            $00, $03, Snd_EncoreBonus_Loop21
;	dc.b	p84, $08, $96, p84, $96, p84, $08, $96
;	dc.b	$04, p84, $04, sHold, $04, $96, p84, $08
;	dc.b	$96, $08, p84, $04, $96, p84, $08, $96
;	dc.b	p84, $08, $96, $04, p84, $04, sHold, $04
;	dc.b	$96, nRst, $08
;	smpsJump            Snd_EncoreBonus_Loop20

;Snd_EncoreBonus_PWM4:
Snd_EncoreBonus_DAC:
	smpsStop

Snd_EncoreBonus_Voices:
;	Voice $00
;	$3D
;	$01, $00, $01, $02, 	$1F, $1F, $1F, $1F, 	$0D, $0C, $0C, $0C
;	$0D, $0A, $0A, $0A, 	$F6, $97, $A7, $A7, 	$1C, $80, $80, $85
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $0D
	smpsVcDecayRate2    $0A, $0A, $0A, $0D
	smpsVcDecayLevel    $0A, $0A, $09, $0F
	smpsVcReleaseRate   $07, $07, $07, $06
	smpsVcTotalLevel    $85, $80, $80, $1C

;	Voice $01
;	$3A
;	$01, $02, $01, $01, 	$14, $14, $17, $14, 	$0A, $0C, $03, $07
;	$02, $08, $08, $03, 	$07, $E9, $A8, $18, 	$1C, $2B, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $17, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $03, $0C, $0A
	smpsVcDecayRate2    $03, $08, $08, $02
	smpsVcDecayLevel    $01, $0A, $0E, $00
	smpsVcReleaseRate   $08, $08, $09, $07
	smpsVcTotalLevel    $80, $28, $2B, $1C

;	Voice $02
;	$3A
;	$01, $0F, $01, $01, 	$0F, $0F, $0F, $14, 	$0A, $0A, $0A, $05
;	$02, $02, $02, $08, 	$56, $A6, $56, $17, 	$19, $28, $28, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $0F, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $0A, $0A
	smpsVcDecayRate2    $08, $02, $02, $02
	smpsVcDecayLevel    $01, $05, $0A, $05
	smpsVcReleaseRate   $07, $06, $06, $06
	smpsVcTotalLevel    $80, $28, $28, $19

;	Voice $03
;	$3D
;	$01, $22, $51, $01, 	$0F, $0F, $0F, $4F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$56, $28, $28, $28, 	$23, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $02, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $02, $05
	smpsVcReleaseRate   $08, $08, $08, $06
	smpsVcTotalLevel    $80, $80, $80, $23

;	Voice $04
;	$39
;	$02, $01, $02, $01, 	$5F, $5F, $1F, $0F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $76, 	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $0F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $07, $00, $00, $00
	smpsVcReleaseRate   $06, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $32, $1B
