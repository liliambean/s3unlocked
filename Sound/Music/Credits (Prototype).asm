Snd_ProtoCredits_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     Snd_ProtoCredits_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $30

	smpsHeaderDAC       Snd_ProtoCredits_DAC
	smpsHeaderFM        Snd_ProtoCredits_FM1,	$00, $15
	smpsHeaderFM        Snd_ProtoCredits_FM2,	$0C, $0E
	smpsHeaderFM        Snd_ProtoCredits_FM3,	$00, $0D
	smpsHeaderFM        Snd_ProtoCredits_FM4,	$0C, $1E
	smpsHeaderFM        Snd_ProtoCredits_FM5,	$00, $1A
	smpsHeaderPSG       Snd_ProtoCredits_PSG1,	$F4, $05, $00, $00
	smpsHeaderPSG       Snd_ProtoCredits_PSG2,	$F4, $05, $00, $00
	smpsHeaderPSG       Snd_ProtoCredits_PSG3,	$23, $04, $00, $00

; FM1 Data
Snd_ProtoCredits_FM1:
	smpsModSet          $01, $01, $01, $04

Snd_ProtoCredits_Jump01:
	smpsSetvoice        $00
	dc.b	nRst, $24, nAb4, $06, nG4, nAb4, $0C, nC4, $06, nC4, nG4, nAb4
	dc.b	$2A, nBb4, $18, nBb3, $30, nRst, $24, nEb4, $06, nB3, nFs4, $0C
	dc.b	nEb4, $06, nEb4, nFs4, nB4, $2A, nCs5, $0C, nF4, nAb4, $30, nRst
	dc.b	$24, nAb4, $06, nG4, nAb4, $0C, nC4, $06, nC4, nG4, nAb4, $2A
	dc.b	nBb4, $0C, nRst, nBb3, $30, nRst, $24, nEb4, $06, nB3, nFs4, $0C
	dc.b	nF4, $06, nCs4, nAb4, nCs5, $12, nRst, $18, nEb5, nAb4, $30
	smpsFMAlterVol      $FE
	smpsPan             panCenter, $00
	dc.b	nRst, $36
	smpsSetvoice        $01
	dc.b	nF3, $06, nCs3, nEb3, nF3, nG3, nAb3, nBb3, nC4, $3C, nC4, $0C
	dc.b	nCs4, nEb4, nEb4, $24, nD4, $24, nBb3, $12, nRst, $06, nBb3, $24
	dc.b	nAb3, $24, nG3, $18, nBb3, $1E, nRst, $06, nAb3, $1E, nRst, $06
	dc.b	nEb3, $12, nRst, $06, nC4, $30, nRst, $0C, nC4, nCs4, nEb4, nEb4
	dc.b	$24, nD4, $24, nBb3, $12, nRst, $06, nBb3, $24, nAb3, $24, nG3
	dc.b	$12, nRst, $06, nBb3, $1E, nRst, $06, nAb3, $36, nRst, $06
	smpsChangeTransposition $0C
	smpsSetvoice        $03
	dc.b	nFs3, $30, nBb3, $30, nC4, $30, nFs4, $30, nAb4, $30, nEb4, $18
	dc.b	nC4, $18, nD4, $12, nEb4, $12, nD4, $0C, nBb3, $2A, nRst, $06
	dc.b	nFs3, $30, nBb3, $30, nC4, $30, nFs4, $2A, nRst, $06, nAb4, $2A
	dc.b	nRst, $06, nEb5, $2A, nRst, $06, nD5, $12, nEb5, $12, nF5, $06
	dc.b	nRst, $06, nBb4, $2A, nRst, $06
	smpsChangeTransposition $F4
	smpsFMAlterVol      $02

Snd_ProtoCredits_Loop04:
	smpsSetvoice        $06
	smpsFMAlterVol      $FD
	dc.b	nRst, $0C, nCs5, $06, nCs5, nRst, nCs5, $0C, nCs5, $06, nCs5, nC5
	dc.b	nC5, nRst, $2A, nCs5, $06, nCs5, nRst, nCs5, $0C, nCs5, $06, nCs5
	dc.b	nFs4, nAb4, nC5, nEb5, nRst, $12, nRst, $0C, nCs5, $06, nCs5, nRst
	dc.b	nCs5, $0C, nCs5, $06, nCs5, nC5, nC5, nRst, $12, nEb5, $06, nCs5
	dc.b	nRst, nCs5, $12, nC5, $06, nRst, $42
	smpsFMAlterVol      $03
	smpsLoop            $00, $02, Snd_ProtoCredits_Loop04
	smpsJump            Snd_ProtoCredits_Jump01

; FM2 Data
Snd_ProtoCredits_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $04

Snd_ProtoCredits_Loop01:
	dc.b	nAb1, $06, nRst, nAb1, nRst, $4E
	smpsLoop            $00, $09, Snd_ProtoCredits_Loop01

Snd_ProtoCredits_Loop02:
	dc.b	nAb1, $06, nRst, nAb1, nRst, nAb1, $06, nF1, nEb1, nAb1, nRst, $30
	dc.b	nAb1, $06, nRst, $12, nAb1, $06, nRst, $42, nEb2, $06, nRst, nEb2
	dc.b	nRst, nEb2, nC2, nBb1, nEb2, nRst, $18, nC2, $0C, nCs2, $06, nC2
	dc.b	nAb1, nRst, nAb1, nRst, nAb1, nF1, nEb1, nAb1, nRst, nC1, $12, nCs1
	dc.b	$06, nRst, nEb1, nRst
	smpsLoop            $00, $02, Snd_ProtoCredits_Loop02

Snd_ProtoCredits_Loop03:
	dc.b	nFs2, $06, nFs2, nF2, nEb2, nCs2, nC2, nFs1, nRst, $1E, nFs3, $06
	dc.b	nRst, $1E, nFs2, $06, nFs2, nF2, nEb2, nCs2, nC2, nAb1, nFs1, nFs2
	dc.b	nRst, $1E, nF2, $06, nF2, nC3, nF2, nAb2, nC3, nF3, nRst, $1E
	dc.b	nF2, $06, nRst, $1E, nBb2, $06, nBb2, nAb2, nG2, nF2, nEb2, nD2
	dc.b	nBb1, nBb2, nRst, $1E
	smpsLoop            $00, $02, Snd_ProtoCredits_Loop03
	dc.b	nRst, $0C, nFs1, $06, nFs1, nRst, nFs1, $0C, nFs1, $06, nFs1, nFs1
	dc.b	nFs1, nRst, $2A, nFs1, $06, nFs1, nRst, nFs1, $0C, nFs1, $06, nFs1
	dc.b	nRst, $12, nFs1, $06, nRst, nC2, nEb2, nRst, $0C, nFs1, $06, nFs1
	dc.b	nRst, nFs1, $0C, nFs1, $06, nFs1, nFs1, nFs1, nRst, $12, nAb1, $06
	dc.b	nAb1, nRst, nAb1, nRst, $0C, nAb1, $06, nRst, $2A, nAb1, $06, nCs1
	dc.b	nEb1, nF1, nRst, $0C, nFs1, $06, nFs1, nRst, nFs1, $0C, nFs1, $06
	dc.b	nFs1, nFs1, nFs1, nRst, $2A, nFs1, $06, nFs1, nRst, nFs1, $0C, nFs1
	dc.b	$06, nFs1, nRst, $12, nFs1, $06, nRst, nC2, nEb2, nRst, $0C, nFs1
	dc.b	$06, nFs1, nRst, nFs1, $0C, nFs1, $06, nFs1, nFs1, nFs1, nRst, $12
	dc.b	nAb1, $06, nAb1, nRst, nAb1, nAb1, nRst, nAb1, nRst, $2A, nAb1, $06
	dc.b	nEb1, nC2, $0C
	smpsJump            Snd_ProtoCredits_Loop01

; FM3 Data
Snd_ProtoCredits_FM3:
	smpsPan             panRight, $00
	smpsSetvoice        $02
	dc.b	nAb2, $06, nRst, nAb2, nRst, nEb3, nAb3, nRst, nAb2, nRst, nAb2, nEb3
	dc.b	nAb3, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2, nRst, nBb3, nF3, nRst
	dc.b	nAb2, nRst, nAb2, nF3, nBb3, nAb2, nRst, nAb2, nRst, nB2, nRst, nB2
	dc.b	nRst, nFs3, nB3, nRst, nB2, nRst, nB2, nFs3, nB3, nB2, nRst, nB2
	dc.b	nRst, nCs3, nRst, nCs3, nRst, nAb3, nCs3, nRst, nCs4, $0C, nC4, $06
	dc.b	nBb3, nAb3, nBb3, nG3, nEb4, nEb3, nAb2, nRst, nAb2, nRst, nEb3, nAb3
	dc.b	nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2, nRst, nAb2, nRst, nAb2, nRst
	dc.b	nAb2, nRst, nBb3, nF3, nRst, nAb2, nRst, nAb2, nF3, nBb3, nAb2, nRst
	dc.b	nAb2, nRst, nB2, nRst, nB2, nRst, nFs3, nB3, nRst, nCs4, $0C, nC4
	dc.b	$06, nBb3, nAb3, nBb3, nG3, nEb4, nEb3, nAb2, nRst, nAb2, nRst, nEb3
	dc.b	nAb3, nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2, nRst, nAb2, nRst, nAb2
	dc.b	nRst, nAb2, nRst, nEb3, nAb3, nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2
	dc.b	nRst, nAb2, nRst, nAb2, nRst, nAb2, nRst, nEb3, nAb3, nRst, nAb2, nRst
	dc.b	nAb2, nEb3, nAb3, nAb2, nRst, nAb2, nRst, nBb2, nRst, nBb2, nRst, nBb3
	dc.b	nF3, nRst, nBb2, nRst, nBb2, nF3, nBb3, nBb2, nRst, nBb2, nRst, nBb2
	dc.b	nRst, nBb2, nRst, nEb3, nG3, nRst, nBb2, nRst, nBb2, nEb3, nG3, nBb2
	dc.b	nRst, nBb2, nRst, nAb2, nRst, nAb2, nRst, nC3, nEb3, nRst, nCs4, $0C
	dc.b	nC4, $06, nBb3, nAb3, nBb3, nG3, nEb4, nEb3, nAb2, nRst, nAb2, nRst
	dc.b	nEb3, nAb3, nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2, nRst, nAb2, nRst
	dc.b	nBb2, nRst, nBb2, nRst, nBb3, nF3, nRst, nBb2, nRst, nBb2, nF3, nBb3
	dc.b	nBb2, nRst, nBb2, nRst, nBb2, nRst, nBb2, nRst, nEb3, nG3, nRst, nBb2
	dc.b	nRst, nBb2, nEb3, nG3, nBb2, nRst, nBb2, $0C, nAb2, $06, nRst, nAb2
	dc.b	nRst, nEb3, nAb3, nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2, nRst, nAb2
	dc.b	$0C
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	smpsFMAlterVol      $04
	smpsChangeTransposition $0C
	dc.b	nFs2, $06, nBb2, nC3, nCs3, nFs3, nBb3, nC4, nCs4, nFs4, nBb4, nC5
	dc.b	nCs5, nFs5, nCs5, nBb4, nFs4, nG4, nEb4, nC4, nAb3, nG3, nEb3, nC3
	dc.b	nAb2, nC3, nEb3, nG3, nAb3, nC4, nEb4, nG4, nAb4, nF4, nEb4, nC4
	dc.b	nBb3, nAb3, nF3, nEb3, nC3, nBb2, nAb2, nF2, nEb2, nC2, nBb1, nF1
	dc.b	nF2, nBb4, nA4, nF4, nD4, nBb3, nA3, nF3, nD3, nBb2, nA2, nF2
	dc.b	nD2, nBb1, nA1, nF1, nD1, nFs2, nBb2, nC3, nCs3, nFs3, nBb3, nC4
	dc.b	nCs4, nFs4, nBb4, nC5, nCs5, nFs5, nCs5, nBb4, nFs4, nG4, nEb4, nC4
	dc.b	nAb3, nG3, nEb3, nC3, nAb2, nC3, nEb3, nG3, nAb3, nC4, nEb4, nG4
	dc.b	nAb4, nF4, nEb4, nC4, nBb3, nAb3, nF3, nEb3, nC3, nBb2, nAb2, nF2
	dc.b	nEb2, nC2, nBb1, nF1, nF2, nBb4, nA4, nF4, nD4, nBb3, nA3, nF3
	dc.b	nD3, nBb2, nA2, nF2, nD2, nBb1, nA1, nF1, nD1
	smpsSetvoice        $01
	smpsPan             panLeft, $00
	dc.b	nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4
	dc.b	nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4
	dc.b	nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4
	dc.b	nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4
	dc.b	nEb4, nEb4, nAb3, nAb3, nC4, nC4, nEb4, nEb4, nAb3, nAb3, nC4, nC4
	dc.b	nEb4, nEb4, nAb3, nAb3, nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3
	dc.b	nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3
	dc.b	nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3
	dc.b	nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3
	dc.b	nC4, nC4, nCs4, nCs4, nEb4, nEb4, nAb3, nAb3, nC4, nC4, nEb4, nEb4
	dc.b	nAb3, nAb3, nC4, nC4, nEb4, nEb4, nAb3, nAb3
	smpsChangeTransposition $F4
	smpsFMAlterVol      $FC
	smpsJump            Snd_ProtoCredits_FM3

; FM4 Data
Snd_ProtoCredits_FM4:
	smpsModSet          $01, $01, $01, $02
	smpsModSet          $07, $01, $01, $05
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	dc.b	nEb4, $60, nF4, $60, nFs4, $60, nAb4, $60, nEb4, $60, nF4, $60
	dc.b	nFs4, $30, nAb4, nEb4, $60, smpsNoAttack, $60
	smpsSetvoice        $01
	dc.b	nEb4, $06, nRst, nEb4, nRst, $0C, nEb4, nEb4, $36, nF4, $06, nRst
	dc.b	$12, nF4, $48, nG4, $06, nRst, nG4, nRst, $0C, nG4, nG4, $36
	dc.b	nEb4, $60, nEb4, $06, nRst, nEb4, nRst, $0C, nEb4, nEb4, $36, nF4
	dc.b	$06, nRst, $12, nF4, $48, nG4, $06, nRst, nG4, nRst, $0C, nG4
	dc.b	nG4, $36, nEb4, $60
	smpsFMAlterVol      $FD
	smpsSetvoice        $05
	dc.b	nFs3, $30, nBb3, nAb3, nEb4, nAb3, nC4, nF3, $18, nF3, nD4, nF3
	dc.b	$0C, nF3, nFs3, $30, nBb3, nAb3, nEb4, nAb3, nC4, nF3, $18, nF3
	dc.b	nD4, nF3, $0C, nF3
	smpsFMAlterVol      $03
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsSetvoice        $01
	smpsPan             panRight, $00
	smpsFMAlterVol      $04
	dc.b	nBb3, $06, nBb3, nAb4, nAb4, nBb4, nBb4, nBb3, nBb3, nAb4, nAb4, nBb4
	dc.b	nBb4, nBb3, nBb3, nAb4, nAb4, nBb4, nBb4, nBb3, nBb3, nAb4, nAb4, nBb4
	dc.b	nBb4, nBb3, nBb3, nAb4, nAb4, nBb4, nBb4, nBb3, nBb3, nAb4, nAb4, nBb4
	dc.b	nBb4, nBb3, nBb3, nAb4, nAb4, nBb4, nBb4, nBb3, nBb3, nAb4, nAb4, nC5
	dc.b	nC5, nEb4, nEb4, nAb4, nAb4, nC5, nC5, nEb4, nEb4, nAb4, nAb4, nC5
	dc.b	nC5, nEb4, nEb4, nAb4, nAb4
	smpsFMAlterVol      $FC
	smpsJump            Snd_ProtoCredits_FM4

; FM5 Data
Snd_ProtoCredits_FM5:
	smpsModSet          $01, $01, $01, $06
	dc.b	nRst, $08
	smpsDetune          $01
	smpsJump            Snd_ProtoCredits_Jump01

; PSG1 Data
Snd_ProtoCredits_PSG1:
	smpsModSet          $03, $01, $01, $04
	smpsPSGvoice        sTone_11
	dc.b	nC4, $60, nD4, $60, nEb4, $60, nF4, $60, nC4, $60, nD4, $60
	dc.b	nEb4, $30, nF4, nC4, $60, smpsNoAttack, $60

Snd_ProtoCredits_Loop06:
	smpsPSGvoice        sTone_1D
	smpsPSGAlterVol     $FD
	dc.b	nC4, $06, nRst, nC4, nRst, $0C, nC4, nC4, $36, nD4, $06, nRst
	dc.b	$12, nD4, $48, nEb4, $06, nRst, nEb4, nRst, $0C, nEb4, nEb4, $36
	dc.b	nC4, $60
	smpsPSGAlterVol     $03
	smpsLoop            $00, $02, Snd_ProtoCredits_Loop06
	smpsPSGvoice        sTone_1D
	smpsPSGAlterVol     $FE
	dc.b	nCs4, $30, nFs4, nEb4, nC5, nC4, nAb4, nEb4, $18, nD4, nBb4, nBb3
	dc.b	$0C, nC4, nCs4, $30, nFs4, nEb4, nC5, nC4, nAb4, nEb4, $18, nD4
	dc.b	nBb4, nBb3, $0C, nC4
	smpsPSGvoice        sTone_12
	dc.b	nRst, $0C, nBb3, $06, nBb3, nRst, nBb3, $0C, nBb3, $06, nBb3, nC4
	dc.b	nC4, nRst, $1E, nRst, $0C, nBb3, $06, nBb3, nRst, nBb3, $0C, nBb3
	dc.b	$06, nCs4, nRst, $12, nC4, $06, nRst, $1E, nBb3, $06, nBb3, nRst
	dc.b	nBb3, $0C, nBb3, $06, nBb3, nC4, nC4, nRst, $12, nCs4, $06, nCs4
	dc.b	nRst, nCs4, nCs4, $0C, nEb4, $06, nRst, $42, nRst, $0C, nBb3, $06
	dc.b	nBb3, nRst, nBb3, $0C, nBb3, $06, nBb3, nC4, nC4, nRst, $2A, nBb3
	dc.b	$06, nBb3, nRst, nBb3, $0C, nBb3, $06, nCs4, nRst, $12, nC4, $06
	dc.b	nRst, $1E, nBb3, $06, nBb3, nRst, nBb3, $0C, nBb3, $06, nBb3, nC4
	dc.b	nC4, nRst, $12, nCs4, $06, nCs4, nRst, nCs4, $12, nEb4, $06, nRst
	dc.b	$42
	smpsPSGAlterVol     $02
	smpsJump            Snd_ProtoCredits_PSG1

; PSG2 Data
Snd_ProtoCredits_PSG2:
	smpsPSGvoice        sTone_11
	dc.b	nAb3, $60, nBb3, nB3, nCs4, nAb3, nBb3, nB3, $30, nCs4, nAb3, $60
	dc.b	smpsNoAttack, $60

Snd_ProtoCredits_Loop05:
	smpsPSGvoice        sTone_1D
	smpsPSGAlterVol     $FD
	dc.b	nAb3, $06, nRst, nAb3, nRst, $0C, nAb3, nAb3, $36, nBb3, $06, nRst
	dc.b	$12, nBb3, $48, nBb3, $06, nRst, nBb3, nRst, $0C, nBb3, nBb3, $36
	dc.b	nAb3, $60
	smpsPSGAlterVol     $03
	smpsLoop            $00, $02, Snd_ProtoCredits_Loop05
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_1D
	dc.b	nFs3, $30, nBb3, nAb3, nEb4, nAb3, nC4, nF3, $18, nF3, nD4, nF3
	dc.b	$0C, nF3, nFs3, $30, nBb3, nAb3, nEb4, nAb3, nC4, nF3, $18, nF3
	dc.b	nD4, nF3, $0C, nF3
	smpsPSGvoice        sTone_12
	dc.b	nRst, nFs3, $06, nFs3, nRst, nFs3, $0C, nFs3, $06, nFs3, nAb3, nAb3
	dc.b	nRst, $1E, nRst, $0C, nFs3, $06, nFs3, nRst, nFs3, $0C, nFs3, $06
	dc.b	nAb3, nRst, $12, nAb3, $06, nRst, $12, nRst, $0C, nFs3, $06, nFs3
	dc.b	nRst, nFs3, $0C, nFs3, $06, nFs3, nAb3, nAb3, nRst, $12, nBb3, $06
	dc.b	nBb3, nRst, nBb3, nBb3, $0C, nC4, $06, nRst, $42, nRst, $0C, nFs3
	dc.b	$06, nFs3, nRst, nFs3, $0C, nFs3, $06, nFs3, nAb3, nAb3, nRst, $2A
	dc.b	nFs3, $06, nFs3, nRst, nFs3, $0C, nFs3, $06, nAb3, nRst, $12, nAb3
	dc.b	$06, nRst, $1E, nFs3, $06, nFs3, nRst, nFs3, $0C, nFs3, $06, nFs3
	dc.b	nAb3, nAb3, nRst, $12, nBb3, $06, nBb3, nRst, nBb3, $12, nC4, $06
	dc.b	nRst, $42
	smpsPSGAlterVol     $02
	smpsJump            Snd_ProtoCredits_PSG2

; PSG3 Data
Snd_ProtoCredits_PSG3:
	smpsPSGform         $E7
	smpsCall            Snd_ProtoCredits_Call00
	smpsCall            Snd_ProtoCredits_Call01
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $0C, (nMaxPSG2-$23)&$FF, $36
	smpsCall            Snd_ProtoCredits_Call02
	smpsCall            Snd_ProtoCredits_Call02
	smpsCall            Snd_ProtoCredits_Call03
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $18, $18
	smpsCall            Snd_ProtoCredits_Call00
	smpsCall            Snd_ProtoCredits_Call01
	smpsJump            Snd_ProtoCredits_PSG3

Snd_ProtoCredits_Call00:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	$0C
	smpsLoop            $00, $10, Snd_ProtoCredits_Call00
	smpsReturn

Snd_ProtoCredits_Call01:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF
	smpsLoop            $00, $10, Snd_ProtoCredits_Call01
	smpsReturn

Snd_ProtoCredits_Call02:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, nRst, (nMaxPSG2-$23)&$FF, nRst
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	$06, $06
	smpsLoop            $00, $04, Snd_ProtoCredits_Call02
	smpsReturn

Snd_ProtoCredits_Call03:
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $0C
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, $06, (nMaxPSG2-$23)&$FF
	smpsPSGvoice        sTone_12
	dc.b	(nMaxPSG2-$23)&$FF, $06
	smpsPSGvoice        sTone_0F
	dc.b	(nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF, (nMaxPSG2-$23)&$FF
	smpsLoop            $00, $07, Snd_ProtoCredits_Call03
	smpsReturn

; DAC Data
Snd_ProtoCredits_DAC:
	dc.b	dCrashCymbal, $60, dCrashCymbal, $48, dElectricMidTom, $02, dElectricFloorTom, $16, dCrashCymbal, $48, dSnareS3, $03
	dc.b	dSnareS3, $15, dCrashCymbal, $18, dElectricHighTom, dKickS3, dElectricFloorTom, dCrashCymbal, $18, dKickS3, nRst, dKickS3
	dc.b	nRst, dKickS3, nRst, dKickS3, dKickS3, $18, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3
	dc.b	dKickS3, dKickS3, $0C, dSnareS3, $06, nRst, dSnareS3, dSnareS3, nRst, dSnareS3, nRst, dHighTom
	dc.b	dHighTom, dHighTom, dMidTomS3, dMidTomS3, dLowTomS3, dLowTomS3

Snd_ProtoCredits_Loop00:
	dc.b	dCrashCymbal, $06, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst, dKickS3, $1E, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, $06, dKickS3, nRst, dKickS3, nRst, dSnareS3, $18
	dc.b	dKickS3, $06, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst, dKickS3, $1E, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3
	smpsLoop            $00, $02, Snd_ProtoCredits_Loop00
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, $06, dKickS3, $18, dCrashCymbal, dKickS3, dSnareS3, $12
	dc.b	dKickS3, $06, dKickS3, $18, dSnareS3, $03, dSnareS3, $15, dKickS3, $18, dSnareS3, $12
	dc.b	dKickS3, $06, dKickS3, $18, dSnareS3, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, $18
	dc.b	dSnareS3, $12, dKickS3, $06, dKickS3, $18, dCrashCymbal, dKickS3, dSnareS3, $12, dKickS3, $06
	dc.b	dKickS3, $18, dSnareS3, $03, dSnareS3, $15, dKickS3, $18, dSnareS3, $12, dKickS3, $06
	dc.b	dKickS3, $0C, dKickS3, dClapS3, $18, dTightSnare, $06, dTightSnare, nRst, nRst, dMidpitchSnare, dMidpitchSnare
	dc.b	nRst, nRst, dLooseSnare, dLooseSnare, nRst, nRst, dLooserSnare, dLooserSnare, dKickS3, dKickS3, dCrashCymbal, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $06, nRst, dSnareS3, dSnareS3, nRst
	dc.b	dSnareS3, nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, nRst, nRst, $24, dSnareS3, $06, dSnareS3
	dc.b	nRst, dSnareS3, nRst, dSnareS3, dCrashCymbal, $18, dCrashCymbal, nRst, $06, nRst, dSnareS3, dSnareS3
	dc.b	nRst, dSnareS3, nRst, dSnareS3, dSnareS3, dSnareS3, dSnareS3, nRst, nRst, nRst, dSnareS3, dSnareS3
	dc.b	nRst, dSnareS3, nRst, nRst, dCrashCymbal, dHighTom, dHighTom, dHighTom, dMidTomS3, dMidTomS3, dMidTomS3, dMidTomS3
	dc.b	dLowTomS3, dLowTomS3, dFloorTomS3, dFloorTomS3

Snd_ProtoCredits_Jump00:
	dc.b	dCrashCymbal, $06, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst, dKickS3, $1E, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, $12, dKickS3, $06, dKickS3, nRst, dKickS3, nRst, dSnareS3, $18
	dc.b	dKickS3, $06, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst, dKickS3, $1E, dSnareS3, $18
	dc.b	dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dCrashCymbal, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, dSnareS3
	dc.b	dKickS3, dSnareS3, dKickS3, $18, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3, dKickS3
	dc.b	$0C, dSnareS3, $06, nRst, dSnareS3, dSnareS3, nRst, dSnareS3, nRst, dHighTom, $04, $04
	dc.b	$04, dHighTom, $06, dMidTomS3, dMidTomS3, dLowTomS3, dLowTomS3, dCrashCymbal, $06, nRst, dKickS3, nRst
	dc.b	dSnareS3, dKickS3, nRst, dKickS3, $1E, dSnareS3, $18, dKickS3, $18, dSnareS3, dKickS3, $0C
	dc.b	dKickS3, dSnareS3, nRst, dKickS3, $06, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst, dKickS3
	dc.b	$1E, dSnareS3, $18, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dMuffledSnare, $06, nRst, dTightSnare
	dc.b	nRst, dMidpitchSnare, dMidpitchSnare, nRst, dLooseSnare, nRst, dLooseSnare, dLooserSnare, dLooserSnare, dCrashCymbal, $18, dKickS3
	dc.b	$18, dSnareS3, dKickS3, dSnareS3, dKickS3, $06, nRst, dKickS3, nRst, dSnareS3, dKickS3, nRst
	dc.b	dKickS3, $1E, dSnareS3, $18, dKickS3, $18, dSnareS3, dKickS3, dSnareS3, dKickS3, $18, dSnareS3
	dc.b	$12, dKickS3, $06, dKickS3, $18, dCrashCymbal, dKickS3, dSnareS3, $12, dKickS3, $06, dKickS3
	dc.b	$18, dSnareS3, $03, dSnareS3, $15, dKickS3, $18, dSnareS3, $12, dKickS3, $06, dKickS3
	dc.b	$18, dClapS3, dKickS3, $18, dClapS3, dKickS3, dClapS3, dKickS3, $18, dSnareS3, $12, dKickS3
	dc.b	$06, dKickS3, $18, dCrashCymbal, dKickS3, dSnareS3, $12, dKickS3, $06, dKickS3, $18, dSnareS3
	dc.b	$03, dSnareS3, $15, dKickS3, $18, dSnareS3, $12, dKickS3, $06, dKickS3, $0C, dKickS3
	dc.b	dClapS3, $18, dTightSnare, $06, dTightSnare, nRst, nRst, dMidpitchSnare, dMidpitchSnare, nRst, nRst, dLooseSnare
	dc.b	dLooseSnare, nRst, nRst, dLooserSnare, dLooserSnare, dKickS3, dKickS3, dCrashCymbal, $60, nRst, $60, nRst
	dc.b	$60, nRst, $60, nRst, $06, nRst, dSnareS3, dSnareS3, nRst, dSnareS3, nRst, dSnareS3
	dc.b	dSnareS3, dSnareS3, dSnareS3, nRst, nRst, $24, dSnareS3, $06, dSnareS3, nRst, dSnareS3, nRst
	dc.b	dSnareS3, dCrashCymbal, $18, dCrashCymbal, nRst, $06, nRst, dSnareS3, dSnareS3, nRst, dSnareS3, nRst
	dc.b	dSnareS3, dSnareS3, dSnareS3, dSnareS3, nRst, nRst, nRst, dSnareS3, dSnareS3, nRst, dSnareS3, nRst
	dc.b	nRst, dCrashCymbal, dHighTom, dHighTom, dHighTom, dMidTomS3, dMidTomS3, dMidTomS3, dMidTomS3, dLowTomS3, dLowTomS3, dFloorTomS3
	dc.b	dFloorTomS3
	smpsJump            Snd_ProtoCredits_Jump00

Snd_ProtoCredits_Voices:
;	Voice $00
;	$3E
;	$07, $04, $61, $21, 	$1F, $1F, $1C, $1C, 	$0A, $0C, $04, $04
;	$07, $0D, $08, $02, 	$1D, $1F, $1E, $1E, 	$26, $84, $84, $84
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $06, $00, $00
	smpsVcCoarseFreq    $01, $01, $04, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $1C, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $0C, $0A
	smpsVcDecayRate2    $02, $08, $0D, $07
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0E, $0E, $0F, $0D
	smpsVcTotalLevel    $84, $84, $84, $26

;	Voice $01
;	$16
;	$79, $71, $32, $33, 	$1F, $1F, $1F, $1F, 	$0A, $08, $0C, $0A
;	$07, $0A, $07, $05, 	$2F, $AF, $AF, $5F, 	$24, $80, $82, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $03, $02, $01, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0C, $08, $0A
	smpsVcDecayRate2    $05, $07, $0A, $07
	smpsVcDecayLevel    $05, $0A, $0A, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $82, $80, $24

;	Voice $02
;	$3A
;	$75, $0F, $61, $31, 	$58, $1A, $1C, $98, 	$0A, $10, $10, $0B
;	$00, $00, $00, $00, 	$5F, $BF, $3F, $FF, 	$1B, $1E, $20, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $06, $00, $07
	smpsVcCoarseFreq    $01, $01, $0F, $05
	smpsVcRateScale     $02, $00, $00, $01
	smpsVcAttackRate    $18, $1C, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $10, $10, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $03, $0B, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $20, $1E, $1B

;	Voice $03
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
	smpsVcTotalLevel    $87, $88, $88, $1F

;	Voice $04
;	$28
;	$39, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$0C, $07, $0A, $0A
;	$07, $07, $07, $09, 	$2F, $1F, $1F, $FF, 	$17, $32, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $09
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $07, $0C
	smpsVcDecayRate2    $09, $07, $07, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $14, $32, $17

;	Voice $05
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

