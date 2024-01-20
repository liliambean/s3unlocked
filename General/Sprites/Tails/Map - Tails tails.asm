Map_Tails_Tail_:
		dc.w Map_Tails_Tail_Blank-Map_Tails_Tail_
		dc.w Map_Tails_Tail_SpinDash-Map_Tails_Tail_
		dc.w Map_Tails_Tail_SpinDash-Map_Tails_Tail_
		dc.w Map_Tails_Tail_SpinDash-Map_Tails_Tail_
		dc.w Map_Tails_Tail_SpinDash-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin1-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin1-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin1-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin1-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin2-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin2-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin2-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin2-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin3-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin3-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin3-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin3-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin4-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin4-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin4-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Spin4-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Tired1-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Tired2-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Tired3-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Tired4-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Tired5-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Skid-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Skid-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Skid-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Skid-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Push-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Push-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Push-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Push-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Stand1-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Stand2-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Stand3-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Stand4-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Stand5-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Fly1-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Fly2-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Hang-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Hang-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Hang-Map_Tails_Tail_
		dc.w Map_Tails_Tail_Hang-Map_Tails_Tail_
Map_Tails_Tail_Blank:
		dc.w 0
Map_Tails_Tail_SpinDash:
		dc.w 1
		dc.b  $FC,   9,   0,   0, $FF, $E2
Map_Tails_Tail_Spin1:
		dc.w 1
		dc.b  $F8,   9,   0,   0, $FF, $DC
Map_Tails_Tail_Spin2:
		dc.w 1
		dc.b    7,   9,   0,   0, $FF, $E1
Map_Tails_Tail_Spin3:
		dc.w 1
		dc.b   $C,   6,   0,   0, $FF, $F8
Map_Tails_Tail_Spin4:
		dc.w 1
		dc.b    7,   6,   0,   0,   0,   7
Map_Tails_Tail_Tired1:
Map_Tails_Tail_Tired5:
		dc.w 1
		dc.b  $E4,  $D, $10,   0, $FF, $E7
Map_Tails_Tail_Tired2:
		dc.w 1
		dc.b  $E4,   5, $10,   0, $FF, $EF
Map_Tails_Tail_Tired3:
		dc.w 1
		dc.b  $E4,   1, $10,   0, $FF, $F3
Map_Tails_Tail_Tired4:
		dc.w 1
		dc.b  $E4,   5, $18,   0, $FF, $EF
Map_Tails_Tail_Skid:
		dc.w 1
		dc.b  $FE,   9,   0,   0, $FF, $E3
Map_Tails_Tail_Push:
		dc.w 1
		dc.b  $FD,   9,   0,   0, $FF, $E3
Map_Tails_Tail_Stand1:
		dc.w 1
		dc.b  $F8,   6,   0,   0, $FF, $EB
Map_Tails_Tail_Stand2:
Map_Tails_Tail_Stand3:
Map_Tails_Tail_Stand5:
		dc.w 1
		dc.b  $F8,  $A,   0,   0, $FF, $E4
Map_Tails_Tail_Stand4:
		dc.w 1
		dc.b    0,   9,   0,   0, $FF, $E4
Map_Tails_Tail_Fly1:
		dc.w 1
		dc.b  $EC,  $C,   0,   0, $FF, $E7
Map_Tails_Tail_Fly2:
		dc.w 1
		dc.b  $EC,  $C,   8,   0, $FF, $E7
Map_Tails_Tail_Hang:
		dc.w 1
		dc.b  $F8,   9,   0,   0, $FF, $E4
