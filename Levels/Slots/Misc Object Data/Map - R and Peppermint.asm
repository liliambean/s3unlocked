Map_SB_R_and_Peppermint_:
		dc.w byte_4B84C-Map_SB_R_and_Peppermint_
		dc.w byte_4B852-Map_SB_R_and_Peppermint_
		dc.w byte_4B858-Map_SB_R_and_Peppermint_
		dc.w byte_4B85E-Map_SB_R_and_Peppermint_
Map_SB_Up:	dc.w byte_4B84C-Map_SB_Up
		dc.w byte_4B85E-Map_SB_Up
Map_SB_Down:	dc.w byte_4B852-Map_SB_Down
		dc.w byte_4B85E-Map_SB_Down
Map_SB_Diamond:	dc.w byte_4B84C-Map_SB_Diamond
		dc.w byte_4B858-Map_SB_Diamond
		dc.w Map_SB_Diamond3-Map_SB_Diamond
		dc.w Map_SB_Diamond4-Map_SB_Diamond
Map_SB_Tails:	dc.w Map_SB_Tails_-Map_SB_Tails
byte_4B84C:	dc.b 1
		dc.b  $F4,  $A,   0,   0, $F4
byte_4B852:	dc.b 1
		dc.b  $F4,  $A,   0,   9, $F4
byte_4B858:	dc.b 1
		dc.b  $F4,  $A,   8,   0, $F4
byte_4B85E:	dc.b 1
		dc.b  $F4,  $A,   0, $12, $F4
Map_SB_Diamond3:dc.b 1
		dc.b  $F4,  $A, $18,   0, $F4
Map_SB_Diamond4:dc.b 1
		dc.b  $F4,  $A, $10,   0, $F4
Map_SB_Tails_:	dc.b 2
		dc.b  $F0,  $F,   0,   0, $F0
		dc.b  $DC,   6, $10, $10, $F8
		even
