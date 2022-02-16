		dc.w word_DBC2-Map_HUD
		dc.w word_DC00-Map_HUD
		dc.w word_DC32-Map_HUD
		dc.w word_DC6A-Map_HUD
		dc.w word_DC96-Map_HUD
		dc.w word_DCB6-Map_HUD
Map_HUD_Lives:	dc.w Map_HUD_Lives_Encore0-Map_HUD_Lives
		dc.w Map_HUD_Lives_Encore1-Map_HUD_Lives
		dc.w Map_HUD_Lives_Encore2-Map_HUD_Lives
		dc.w Map_HUD_Lives_Encore3-Map_HUD_Lives
		dc.w Map_HUD_Lives_Encore4-Map_HUD_Lives
		dc.w Map_HUD_Lives_Encore5-Map_HUD_Lives
		dc.w Map_HUD_Lives_Encore6-Map_HUD_Lives
		dc.w Map_HUD_Lives_Regular-Map_HUD_Lives
Map_HUD_Encore:	dc.w Map_HUD_Encore0-Map_HUD_Encore
		dc.w Map_HUD_Encore1-Map_HUD_Encore
		dc.w Map_HUD_Encore2-Map_HUD_Encore
		dc.w Map_HUD_Encore3-Map_HUD_Encore
		dc.w Map_HUD_Encore4-Map_HUD_Encore
		dc.w Map_HUD_Encore5-Map_HUD_Encore
		dc.w Map_HUD_Encore6-Map_HUD_Encore
		dc.w Map_HUD_Encore7-Map_HUD_Encore
word_DBC2:	dc.w 8
		dc.b $80, $D,$20,  8,  0,  0
		dc.b $80, $D,$20,$1E,  0,$20
		dc.b $80, $D,$20,$26,  0,$40
		dc.b $90, $D,$20,$16,  0,  0
		dc.b $90, $D,$20,$2E,  0,$28
		dc.b $A0, $D,$20, $E,  0,  0
		dc.b $A0,  1,$20,  8,  0,$20
		dc.b $A0,  9,$20,$36,  0,$30
word_DC00:	dc.w 6
		dc.b $80, $D,$20,  8,  0,  0
		dc.b $80, $D,$20,$1E,  0,$20
		dc.b $80, $D,$20,$26,  0,$40
		dc.b $90, $D,$20,$16,  0,  0
		dc.b $90, $D,$20,$2E,  0,$28
		dc.b $A0,  9,$20,$36,  0,$30
word_DC32:	dc.w 7
		dc.b $80, $D,$20,  8,  0,  0
		dc.b $80, $D,$20,$1E,  0,$20
		dc.b $80, $D,$20,$26,  0,$40
		dc.b $90, $D,$20,$2E,  0,$28
		dc.b $A0, $D,$20, $E,  0,  0
		dc.b $A0,  1,$20,  8,  0,$20
		dc.b $A0,  9,$20,$36,  0,$30
word_DC6A:	dc.w 5
		dc.b $80, $D,$20,  8,  0,  0
		dc.b $80, $D,$20,$1E,  0,$20
		dc.b $80, $D,$20,$26,  0,$40
		dc.b $90, $D,$20,$2E,  0,$28
		dc.b $A0,  9,$20,$36,  0,$30
word_DC96:	dc.w 3
		dc.b $80, $D,$20, $E,  0,  0
		dc.b $80,  1,$20,  8,  0,$20
		dc.b $80,  9,$20,$36,  0,$30
word_DCB6:	dc.w 1
		dc.b $80,  9,$20,$36,  0,$30
Map_HUD_Lives_Encore0:
		dc.w 1
		dc.b $40,  5,  1,$10,  0,  0
Map_HUD_Lives_Encore1:
		dc.w 0
Map_HUD_Lives_Encore2:
		dc.w 1
		dc.b $44,  0,  1,$18,  0,$28
Map_HUD_Lives_Encore3:
		dc.w 1
		dc.b $44,  8,  1,$18,  0,$28
Map_HUD_Lives_Encore4:
		dc.w 1
		dc.b $44, $C,  1,$18,  0,$28
Map_HUD_Lives_Encore5:
		dc.w 2
		dc.b $44, $C,  1,$18,  0,$28
		dc.b $44,  4,  0,$F9,  0,$48
Map_HUD_Lives_Encore6:
		dc.w 2
		dc.b $44, $C,  1,$18,  0,$28
		dc.b $44,  8,  0,$F9,  0,$48
Map_HUD_Lives_Regular:
		dc.w 2
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40, $D,$21,$14,  0,$11
Map_HUD_Encore0:
		dc.w 2
		dc.b $40,  5,  1,$10,  0,  0
		dc.b $40,  5,  1,$14,  0,$14
Map_HUD_Encore1:
		dc.w 2
		dc.b $3D,  5,  1,$10,  0,  1
		dc.b $43,  5,  1,$14,  0,$13
Map_HUD_Encore2:
		dc.w 2
		dc.b $3B,  5,  1,$10,  0,  3
		dc.b $45,  5,  1,$14,  0,$11
Map_HUD_Encore3:
		dc.w 2
		dc.b $39,  5,  1,$10,  0,  6
		dc.b $47,  5,  1,$14,  0, $E
Map_HUD_Encore4:
		dc.w 2
		dc.b $38,  5,  1,$10,  0, $A
		dc.b $48,  5,  1,$14,  0, $A
Map_HUD_Encore5:
		dc.w 2
		dc.b $39,  5,  1,$10,  0, $E
		dc.b $47,  5,  1,$14,  0,  6
Map_HUD_Encore6:
		dc.w 2
		dc.b $3B,  5,  1,$10,  0,$11
		dc.b $45,  5,  1,$14,  0,  3
Map_HUD_Encore7:
		dc.w 2
		dc.b $3D,  5,  1,$10,  0,$13
		dc.b $43,  5,  1,$14,  0,  1
