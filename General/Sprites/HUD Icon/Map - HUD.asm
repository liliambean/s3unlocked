		dc.w word_DBC2-Map_HUD
		dc.w word_DC00-Map_HUD
		dc.w word_DC32-Map_HUD
		dc.w word_DC6A-Map_HUD
		dc.w word_DC96-Map_HUD
		dc.w word_DCB6-Map_HUD
		dc.w Map_HUD_Encore-Map_HUD
		dc.w Map_HUD_EncoreRings-Map_HUD
		dc.w Map_HUD_EncoreTime-Map_HUD
		dc.w Map_HUD_EncoreTimeRings-Map_HUD
		dc.w Map_HUD_EncoreBonus-Map_HUD
		dc.w Map_HUD_EncoreBonusRings-Map_HUD
word_DBC2:	dc.w $A
		dc.b $80, $D,$20,  8,  0,  0
		dc.b $80, $D,$20,$1E,  0,$20
		dc.b $80, $D,$20,$26,  0,$40
		dc.b $90, $D,$20,$16,  0,  0
		dc.b $90, $D,$20,$2E,  0,$28
		dc.b $A0, $D,$20, $E,  0,  0
		dc.b $A0,  1,$20,  8,  0,$20
		dc.b $A0,  9,$20,$36,  0,$30
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40, $D,$21,$14,  0,$11
word_DC00:	dc.w 8
		dc.b $80, $D,$20,  8,  0,  0
		dc.b $80, $D,$20,$1E,  0,$20
		dc.b $80, $D,$20,$26,  0,$40
		dc.b $90, $D,$20,$16,  0,  0
		dc.b $90, $D,$20,$2E,  0,$28
		dc.b $A0,  9,$20,$36,  0,$30
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40, $D,$21,$14,  0,$11
word_DC32:	dc.w 9
		dc.b $80, $D,$20,  8,  0,  0
		dc.b $80, $D,$20,$1E,  0,$20
		dc.b $80, $D,$20,$26,  0,$40
		dc.b $90, $D,$20,$2E,  0,$28
		dc.b $A0, $D,$20, $E,  0,  0
		dc.b $A0,  1,$20,  8,  0,$20
		dc.b $A0,  9,$20,$36,  0,$30
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40, $D,$21,$14,  0,$11
word_DC6A:	dc.w 7
		dc.b $80, $D,$20,  8,  0,  0
		dc.b $80, $D,$20,$1E,  0,$20
		dc.b $80, $D,$20,$26,  0,$40
		dc.b $90, $D,$20,$2E,  0,$28
		dc.b $A0,  9,$20,$36,  0,$30
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40, $D,$21,$14,  0,$11
word_DC96:	dc.w 5
		dc.b $80, $D,$20, $E,  0,  0
		dc.b $80,  1,$20,  8,  0,$20
		dc.b $80,  9,$20,$36,  0,$30
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40, $D,$21,$14,  0,$11
word_DCB6:	dc.w 3
		dc.b $80,  9,$20,$36,  0,$30
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40, $D,$21,$14,  0,$11
Map_HUD_Encore:	dc.w $B
		dc.b $80, $D,$20,  8,  0,  0
		dc.b $80, $D,$20,$1C,  0,$20
		dc.b $80, $D,$20,$24,  0,$40
		dc.b $90, $D,$20,$16,  0,  0
		dc.b $90, $D,$20,$2E,  0,$28
		dc.b $A0, $D,$20, $E,  0,  0
		dc.b $A0,  1,$20,  8,  0,$20
		dc.b $A0,  9,$20,$36,  0,$30
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40,  5,  1,$14,  0,$14
		dc.b $44, $C,  1,$18,  0,$28
Map_HUD_EncoreRings:
		dc.w 9
		dc.b $80, $D,$20,  8,  0,  0
		dc.b $80, $D,$20,$1C,  0,$20
		dc.b $80, $D,$20,$24,  0,$40
		dc.b $90, $D,$20,$16,  0,  0
		dc.b $90, $D,$20,$2E,  0,$28
		dc.b $A0,  9,$20,$36,  0,$30
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40,  5,  1,$14,  0,$14
		dc.b $44, $C,  1,$18,  0,$28
Map_HUD_EncoreTime:
		dc.w $A
		dc.b $80, $D,$20,  8,  0,  0
		dc.b $80, $D,$20,$1C,  0,$20
		dc.b $80, $D,$20,$24,  0,$40
		dc.b $90, $D,$20,$2E,  0,$28
		dc.b $A0, $D,$20, $E,  0,  0
		dc.b $A0,  1,$20,  8,  0,$20
		dc.b $A0,  9,$20,$36,  0,$30
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40,  5,  1,$14,  0,$14
		dc.b $44, $C,  1,$18,  0,$28
Map_HUD_EncoreTimeRings:
		dc.w 8
		dc.b $80, $D,$20,  8,  0,  0
		dc.b $80, $D,$20,$1C,  0,$20
		dc.b $80, $D,$20,$24,  0,$40
		dc.b $90, $D,$20,$2E,  0,$28
		dc.b $A0,  9,$20,$36,  0,$30
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40,  5,  1,$14,  0,$14
		dc.b $44, $C,  1,$18,  0,$28
Map_HUD_EncoreBonus:
		dc.w 6
		dc.b $80, $D,$20, $E,  0,  0
		dc.b $80,  1,$20,  8,  0,$20
		dc.b $80,  9,$20,$36,  0,$30
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40,  5,  1,$14,  0,$14
		dc.b $44, $C,  1,$18,  0,$28
Map_HUD_EncoreBonusRings:
		dc.w 4
		dc.b $80,  9,$20,$36,  0,$30
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40,  5,  1,$14,  0,$14
		dc.b $44, $C,  1,$18,  0,$28
