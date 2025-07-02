AniTails_Tail_:
		dc.w AniTails_Tail_Blank-AniTails_Tail_		; 00
		dc.w AniTails_Tail_Stand-AniTails_Tail_		; 01
		dc.w AniTails_Tail_LookUp-AniTails_Tail_	; 02
		dc.w AniTails_Tail_Spin-AniTails_Tail_		; 03
		dc.w AniTails_Tail_Spin2-AniTails_Tail_		; 04
		dc.w AniTails_Tail_Spin3-AniTails_Tail_		; 05
		dc.w AniTails_Tail_Spin4-AniTails_Tail_		; 06
		dc.w AniTails_Tail_SpinDash-AniTails_Tail_	; 07
		dc.w AniTails_Tail_Skid-AniTails_Tail_		; 08
		dc.w AniTails_Tail_Push-AniTails_Tail_		; 09
		dc.w AniTails_Tail_Hang-AniTails_Tail_		; 0A
		dc.w AniTails_Tail_FlyFall-AniTails_Tail_	; 0B
		dc.w AniTails_Tail_Fly-AniTails_Tail_		; 0C
		dc.w AniTails_Tail_FlyTired-AniTails_Tail_	; 0D
AniTails_Tail_Blank:	dc.b  $20,   0, $FF
AniTails_Tail_Stand:	dc.b    7, $22, $23, $24, $25, $26, $FF
AniTails_Tail_LookUp:	dc.b    3, $22, $23, $24, $25, $26, $FD,   1
AniTails_Tail_Spin:	dc.b  $FC,   5,   6,   7,   8, $FF
AniTails_Tail_Spin2:	dc.b    3,   9,  $A,  $B,  $C, $FF
AniTails_Tail_Spin3:	dc.b    3,  $D,  $E,  $F, $10, $FF
AniTails_Tail_Spin4:	dc.b    3, $11, $12, $13, $14, $FF
AniTails_Tail_SpinDash:	dc.b    2,   1,   2,   3,   4, $FF
AniTails_Tail_Skid:	dc.b    2, $1A, $1B, $1C, $1D, $FF
AniTails_Tail_Push:	dc.b    9, $1E, $1F, $20, $21, $FF
AniTails_Tail_Hang:	dc.b    9, $29, $2A, $2B, $2C, $FF
AniTails_Tail_FlyFall:	dc.b    1, $27, $28, $FF
AniTails_Tail_Fly:	dc.b    0, $27, $28, $FF
AniTails_Tail_FlyTired:	dc.b    2, $15, $16, $17, $18, $19, $FF
		even
