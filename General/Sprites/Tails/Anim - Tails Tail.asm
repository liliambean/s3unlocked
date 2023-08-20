		dc.w AniTails_TailBlank-AniTails_Tail		; 00
		dc.w AniTails_TailStand-AniTails_Tail		; 01
		dc.w AniTails_TailLookUp-AniTails_Tail		; 02
		dc.w AniTails_TailSpin-AniTails_Tail		; 03
		dc.w AniTails_TailSpin2-AniTails_Tail		; 04
		dc.w AniTails_TailSpin3-AniTails_Tail		; 05
		dc.w AniTails_TailSpin4-AniTails_Tail		; 06
		dc.w AniTails_TailSpinDash-AniTails_Tail	; 07
		dc.w AniTails_TailSkid-AniTails_Tail		; 08
		dc.w AniTails_TailPush-AniTails_Tail		; 09
		dc.w AniTails_TailHang-AniTails_Tail		; 0A
		dc.w AniTails_TailFlyFall-AniTails_Tail		; 0B
		dc.w AniTails_TailFly-AniTails_Tail		; 0C
		dc.w AniTails_TailFlyTired-AniTails_Tail	; 0D
AniTails_TailBlank:	dc.b  $20,   0, $FF
AniTails_TailStand:	dc.b    7, $22, $23, $24, $25, $26, $FF
AniTails_TailLookUp:	dc.b    3, $22, $23, $24, $25, $26, $FD,   1
AniTails_TailSpin:	dc.b  $FC,   5,   6,   7,   8, $FF
AniTails_TailSpin2:	dc.b    3,   9,  $A,  $B,  $C, $FF
AniTails_TailSpin3:	dc.b    3,  $D,  $E,  $F, $10, $FF
AniTails_TailSpin4:	dc.b    3, $11, $12, $13, $14, $FF
AniTails_TailSpinDash:	dc.b    2,   1,   2,   3,   4, $FF
AniTails_TailSkid:	dc.b    2, $1A, $1B, $1C, $1D, $FF
AniTails_TailPush:	dc.b    9, $1E, $1F, $20, $21, $FF
AniTails_TailHang:	dc.b    9, $29, $2A, $2B, $2C, $FF
AniTails_TailFlyFall:	dc.b    1, $27, $28, $FF
AniTails_TailFly:	dc.b    0, $27, $28, $FF
AniTails_TailFlyTired:	dc.b    2, $15, $16, $17, $18, $19, $FF
		even
