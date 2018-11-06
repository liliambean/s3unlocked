Map_HUD_:	dc.w word_DBC2-Map_HUD_
		dc.w word_DC00-Map_HUD_
		dc.w word_DC32-Map_HUD_
		dc.w word_DC6A-Map_HUD_
		dc.w word_DC96-Map_HUD_
		dc.w word_DCB6-Map_HUD_
		dc.w Map_HUD_Encore-Map_HUD_
		dc.w Map_HUD_EncoreRings-Map_HUD_
		dc.w Map_HUD_EncoreTime-Map_HUD_
		dc.w Map_HUD_TimeRings-Map_HUD_
		dc.w Map_HUD_Bonus-Map_HUD_
		dc.w Map_HUD_BonusRings-Map_HUD_
word_DBC2:	dc.w $A
		dc.b $80, $D,$20,  0,  0,  0
		dc.b $80, $D,$20,$16,  0,$20
		dc.b $80, $D,$20,$1E,  0,$40
		dc.b $90, $D,$20, $E,  0,  0
		dc.b $90, $D,$1F,$EA,  0,$28
		dc.b $A0, $D,$20,  6,  0,  0
		dc.b $A0,  1,$20,  0,  0,$20
		dc.b $A0,  9,$20,$26,  0,$30
		dc.b $40,  5,  1,  0,  0,  0
		dc.b $40, $D,$21,  4,  0,$10
word_DC00:	dc.w 8
		dc.b $80, $D,$20,  0,  0,  0
		dc.b $80, $D,$20,$16,  0,$20
		dc.b $80, $D,$20,$1E,  0,$40
		dc.b $90, $D,$20, $E,  0,  0
		dc.b $90, $D,$1F,$EA,  0,$28
		dc.b $A0,  9,$20,$26,  0,$30
		dc.b $40,  5,  1,  0,  0,  0
		dc.b $40, $D,$21,  4,  0,$10
word_DC32:	dc.w 9
		dc.b $80, $D,$20,  0,  0,  0
		dc.b $80, $D,$20,$16,  0,$20
		dc.b $80, $D,$20,$1E,  0,$40
		dc.b $90, $D,$1F,$EA,  0,$28
		dc.b $A0, $D,$20,  6,  0,  0
		dc.b $A0,  1,$20,  0,  0,$20
		dc.b $A0,  9,$20,$26,  0,$30
		dc.b $40,  5,  1,  0,  0,  0
		dc.b $40, $D,$21,  4,  0,$10
word_DC6A:	dc.w 7
		dc.b $80, $D,$20,  0,  0,  0
		dc.b $80, $D,$20,$16,  0,$20
		dc.b $80, $D,$20,$1E,  0,$40
		dc.b $90, $D,$1F,$EA,  0,$28
		dc.b $A0,  9,$20,$26,  0,$30
		dc.b $40,  5,  1,  0,  0,  0
		dc.b $40, $D,$21,  4,  0,$10
word_DC96:	dc.w 5
		dc.b $80, $D,$20,  6,  0,  0
		dc.b $80,  1,$20,  0,  0,$20
		dc.b $80,  9,$20,$26,  0,$30
		dc.b $40,  5,  1,  0,  0,  0
		dc.b $40, $D,$21,  4,  0,$10
word_DCB6:	dc.w 3
		dc.b $80,  9,$20,$26,  0,$30
		dc.b $40,  5,  1,  0,  0,  0
		dc.b $40, $D,$21,  4,  0,$10
Map_HUD_Encore:	dc.w $B
		dc.b $80, $D,$20,  0,  0,  0
		dc.b $80, $D,$20,$14,  0,$20
		dc.b $80, $D,$20,$1C,  0,$40
		dc.b $90, $D,$20, $E,  0,  0
		dc.b $90, $D,$20,$24,  0,$28
		dc.b $A0, $D,$20,  6,  0,  0
		dc.b $A0,  1,$20,  0,  0,$20
		dc.b $A0,  9,$1F,$EC,  0,$30
		dc.b $40,  5,  1,  0,  0,  0
		dc.b $40,  5,  1,  4,  0,$14
		dc.b $44, $C,  1,  8,  0,$28
Map_HUD_EncoreRings:	dc.w 9
		dc.b $80, $D,$20,  0,  0,  0
		dc.b $80, $D,$20,$14,  0,$20
		dc.b $80, $D,$20,$1C,  0,$40
		dc.b $90, $D,$20, $E,  0,  0
		dc.b $90, $D,$20,$24,  0,$28
		dc.b $A0,  9,$1F,$EC,  0,$30
		dc.b $40,  5,  1,  0,  0,  0
		dc.b $40,  5,  1,  4,  0,$14
		dc.b $44, $C,  1,  8,  0,$28
Map_HUD_EncoreTime:	dc.w $A
		dc.b $80, $D,$20,  0,  0,  0
		dc.b $80, $D,$20,$14,  0,$20
		dc.b $80, $D,$20,$1C,  0,$40
		dc.b $90, $D,$20,$24,  0,$28
		dc.b $A0, $D,$20,  6,  0,  0
		dc.b $A0,  1,$20,  0,  0,$20
		dc.b $A0,  9,$1F,$EC,  0,$30
		dc.b $40,  5,  1,  0,  0,  0
		dc.b $40,  5,  1,  4,  0,$14
		dc.b $44, $C,  1,  8,  0,$28
Map_HUD_TimeRings:	dc.w 8
		dc.b $80, $D,$20,  0,  0,  0
		dc.b $80, $D,$20,$14,  0,$20
		dc.b $80, $D,$20,$1C,  0,$40
		dc.b $90, $D,$20,$24,  0,$28
		dc.b $A0,  9,$1F,$EC,  0,$30
		dc.b $40,  5,  1,  0,  0,  0
		dc.b $40,  5,  1,  4,  0,$14
		dc.b $44, $C,  1,  8,  0,$28
Map_HUD_Bonus:	dc.w 6
		dc.b $80, $D,$20,  6,  0,  0
		dc.b $80,  1,$20,  0,  0,$20
		dc.b $80,  9,$1F,$EC,  0,$30
		dc.b $40,  5,  1,  0,  0,  0
		dc.b $40,  5,  1,  4,  0,$14
		dc.b $44, $C,  1,  8,  0,$28
Map_HUD_BonusRings:	dc.w 4
		dc.b $80,  9,$1F,$EC,  0,$30
		dc.b $40,  5,  1,  0,  0,  0
		dc.b $40,  5,  1,  4,  0,$14
		dc.b $44, $C,  1,  8,  0,$28
