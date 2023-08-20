		dc.w Map_Tails_TailBlank-Map_Tails_Tail
		dc.w Map_Tails_TailSpinDash-Map_Tails_Tail
		dc.w Map_Tails_TailSpinDash-Map_Tails_Tail
		dc.w Map_Tails_TailSpinDash-Map_Tails_Tail
		dc.w Map_Tails_TailSpinDash-Map_Tails_Tail
		dc.w Map_Tails_TailSpin1-Map_Tails_Tail
		dc.w Map_Tails_TailSpin1-Map_Tails_Tail
		dc.w Map_Tails_TailSpin1-Map_Tails_Tail
		dc.w Map_Tails_TailSpin1-Map_Tails_Tail
		dc.w Map_Tails_TailSpin2-Map_Tails_Tail
		dc.w Map_Tails_TailSpin2-Map_Tails_Tail
		dc.w Map_Tails_TailSpin2-Map_Tails_Tail
		dc.w Map_Tails_TailSpin2-Map_Tails_Tail
		dc.w Map_Tails_TailSpin3-Map_Tails_Tail
		dc.w Map_Tails_TailSpin3-Map_Tails_Tail
		dc.w Map_Tails_TailSpin3-Map_Tails_Tail
		dc.w Map_Tails_TailSpin3-Map_Tails_Tail
		dc.w Map_Tails_TailSpin4-Map_Tails_Tail
		dc.w Map_Tails_TailSpin4-Map_Tails_Tail
		dc.w Map_Tails_TailSpin4-Map_Tails_Tail
		dc.w Map_Tails_TailSpin4-Map_Tails_Tail
		dc.w Map_Tails_TailTired1-Map_Tails_Tail
		dc.w Map_Tails_TailTired2-Map_Tails_Tail
		dc.w Map_Tails_TailTired3-Map_Tails_Tail
		dc.w Map_Tails_TailTired4-Map_Tails_Tail
		dc.w Map_Tails_TailTired5-Map_Tails_Tail
		dc.w Map_Tails_TailSkid-Map_Tails_Tail
		dc.w Map_Tails_TailSkid-Map_Tails_Tail
		dc.w Map_Tails_TailSkid-Map_Tails_Tail
		dc.w Map_Tails_TailSkid-Map_Tails_Tail
		dc.w Map_Tails_TailPush-Map_Tails_Tail
		dc.w Map_Tails_TailPush-Map_Tails_Tail
		dc.w Map_Tails_TailPush-Map_Tails_Tail
		dc.w Map_Tails_TailPush-Map_Tails_Tail
		dc.w Map_Tails_TailStand1-Map_Tails_Tail
		dc.w Map_Tails_TailStand2-Map_Tails_Tail
		dc.w Map_Tails_TailStand3-Map_Tails_Tail
		dc.w Map_Tails_TailStand4-Map_Tails_Tail
		dc.w Map_Tails_TailStand5-Map_Tails_Tail
		dc.w Map_Tails_TailFly1-Map_Tails_Tail
		dc.w Map_Tails_TailFly2-Map_Tails_Tail
		dc.w Map_Tails_TailHang-Map_Tails_Tail
		dc.w Map_Tails_TailHang-Map_Tails_Tail
		dc.w Map_Tails_TailHang-Map_Tails_Tail
		dc.w Map_Tails_TailHang-Map_Tails_Tail
Map_Tails_TailBlank:
		dc.w 0
Map_Tails_TailSpinDash:
		dc.w 1
		dc.b $FC,   9,   0,   0, $FF, $E2
Map_Tails_TailSpin1:
		dc.w 1
		dc.b $F8,   9,   0,   0, $FF, $DC
Map_Tails_TailSpin2:
		dc.w 1
		dc.b   7,   9,   0,   0, $FF, $E1
Map_Tails_TailSpin3:
		dc.w 1
		dc.b  $C,   6,   0,   0, $FF, $F8
Map_Tails_TailSpin4:
		dc.w 1
		dc.b   7,   6,   0,   0,   0,   7
Map_Tails_TailTired1:
Map_Tails_TailTired5:
		dc.w 1
		dc.b $E4,  $D, $10,   0, $FF, $E7
Map_Tails_TailTired2:
		dc.w 1
		dc.b $E4,   5, $10,   0, $FF, $EF
Map_Tails_TailTired3:
		dc.w 1
		dc.b $E4,   1, $10,   0, $FF, $F3
Map_Tails_TailTired4:
		dc.w 1
		dc.b $E4,   5, $18,   0, $FF, $EF
Map_Tails_TailSkid:
		dc.w 1
		dc.b $FE,   9,   0,   0, $FF, $E3
Map_Tails_TailPush:
		dc.w 1
		dc.b $FD,   9,   0,   0, $FF, $E3
Map_Tails_TailStand1:
		dc.w 1
		dc.b $F8,   6,   0,   0, $FF, $EB
Map_Tails_TailStand2:
Map_Tails_TailStand3:
Map_Tails_TailStand5:
		dc.w 1
		dc.b $F8,  $A,   0,   0, $FF, $E4
Map_Tails_TailStand4:
		dc.w 1
		dc.b   0,   9,   0,   0, $FF, $E4
Map_Tails_TailFly1:
		dc.w 1
		dc.b $EC,  $C,   0,   0, $FF, $E7
Map_Tails_TailFly2:
		dc.w 1
		dc.b $EC,  $C,   8,   0, $FF, $E7
Map_Tails_TailHang:
		dc.w 1
		dc.b $F8,   9,   0,   0, $FF, $E4
