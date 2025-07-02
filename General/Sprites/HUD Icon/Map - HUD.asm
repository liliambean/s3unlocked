Map_HUD_:
		dc.w word_DBC2-Map_HUD_
		dc.w word_DC00-Map_HUD_
		dc.w word_DC32-Map_HUD_
		dc.w word_DC6A-Map_HUD_
		dc.w word_DC96-Map_HUD_
		dc.w word_DCB6-Map_HUD_
		dc.w Map_HUD_EncoreBonus1-Map_HUD_
		dc.w Map_HUD_EncoreBonus2-Map_HUD_
Map_HUD_Barrier:
		dc.w Map_HUD_Blank-Map_HUD_Barrier
		dc.w Map_HUD_FlameBarrier-Map_HUD_Barrier
		dc.w Map_HUD_ThunderBarrier-Map_HUD_Barrier
		dc.w Map_HUD_AquaBarrier-Map_HUD_Barrier
		dc.w Map_HUD_CombineRing-Map_HUD_Barrier
		dc.w Map_HUD_SuperReady1-Map_HUD_Barrier
		dc.w Map_HUD_SuperReady2-Map_HUD_Barrier
Map_HUD_EncoreStocks:
		dc.w Map_HUD_EncoreStocks0-Map_HUD_EncoreStocks
		dc.w Map_HUD_Blank-Map_HUD_EncoreStocks
		dc.w Map_HUD_EncoreStocks2-Map_HUD_EncoreStocks
		dc.w Map_HUD_EncoreStocks3-Map_HUD_EncoreStocks
		dc.w Map_HUD_EncoreStocks4-Map_HUD_EncoreStocks
		dc.w Map_HUD_EncoreStocks5-Map_HUD_EncoreStocks
		dc.w Map_HUD_EncoreStocks6-Map_HUD_EncoreStocks
word_DBC2:	dc.w 8
		dc.b  $80,  $D, $20,   8,   0,   0
		dc.b  $80,  $D, $20, $1E,   0, $20
		dc.b  $80,  $D, $20, $26,   0, $40
		dc.b  $90,  $D, $20, $16,   0,   0
		dc.b  $90,  $D, $20, $2E,   0, $28
		dc.b  $A0,  $D, $20,  $E,   0,   0
		dc.b  $A0,   1, $20,   8,   0, $20
		dc.b  $A0,   9, $20, $36,   0, $30
word_DC00:	dc.w 6
		dc.b  $80,  $D, $20,   8,   0,   0
		dc.b  $80,  $D, $20, $1E,   0, $20
		dc.b  $80,  $D, $20, $26,   0, $40
		dc.b  $90,  $D, $20, $16,   0,   0
		dc.b  $90,  $D, $20, $2E,   0, $28
		dc.b  $A0,   9, $20, $36,   0, $30
word_DC32:	dc.w 7
		dc.b  $80,  $D, $20,   8,   0,   0
		dc.b  $80,  $D, $20, $1E,   0, $20
		dc.b  $80,  $D, $20, $26,   0, $40
		dc.b  $90,  $D, $20, $2E,   0, $28
		dc.b  $A0,  $D, $20,  $E,   0,   0
		dc.b  $A0,   1, $20,   8,   0, $20
		dc.b  $A0,   9, $20, $36,   0, $30
word_DC6A:	dc.w 5
		dc.b  $80,  $D, $20,   8,   0,   0
		dc.b  $80,  $D, $20, $1E,   0, $20
		dc.b  $80,  $D, $20, $26,   0, $40
		dc.b  $90,  $D, $20, $2E,   0, $28
		dc.b  $A0,   9, $20, $36,   0, $30
word_DC96:	dc.w 5
		dc.b  $80,  $D, $20,  $E,   0,   0
		dc.b  $80,   1, $20,   8,   0, $20
		dc.b  $80,   9, $20, $36,   0, $30
		dc.b  $40,   5,   1, $10,   0,   0
		dc.b  $40,  $D, $21, $14,   0, $11
word_DCB6:	dc.w 3
		dc.b  $80,   9, $20, $36,   0, $30
		dc.b  $40,   5,   1, $10,   0,   0
		dc.b  $40,  $D, $21, $14,   0, $11
Map_HUD_EncoreBonus1:
		dc.w 3
		dc.b  $80,  $D, $20,  $E,   0,   0
		dc.b  $80,   1, $20,   8,   0, $20
		dc.b  $80,   9, $20, $36,   0, $30
Map_HUD_EncoreBonus2:
		dc.w 1
		dc.b  $80,   9, $20, $36,   0, $30
Map_HUD_FlameBarrier:
		dc.w 1
		dc.b  $80,   5,   0, $28, $FF, $F8
Map_HUD_ThunderBarrier:
		dc.w 1
		dc.b  $80,   5,   0, $2C, $FF, $F8
Map_HUD_AquaBarrier:
		dc.w 1
		dc.b  $80,   5,   0, $30, $FF, $F8
Map_HUD_CombineRing:
		dc.w 1
		dc.b  $80,   5,   0, $18, $FF, $F8
Map_HUD_SuperReady1:
		dc.w 1
		dc.b  $80,   5,   0, $38, $FF, $F8
Map_HUD_SuperReady2:
		dc.w 3
		dc.b  $82,   1, $22,  $A, $FF, $E8
		dc.b  $82,   1, $22, $30, $FF, $F0
		dc.b  $80,   5,   0, $38, $FF, $F8
Map_HUD_EncoreStocks0:
		dc.w 1
		dc.b  $40,   5,   1, $10,   0,   0
Map_HUD_EncoreStocks2:
		dc.w 1
		dc.b  $44,   0,   1, $18,   0, $28
Map_HUD_EncoreStocks3:
		dc.w 1
		dc.b  $44,   8,   1, $18,   0, $28
Map_HUD_EncoreStocks4:
		dc.w 1
		dc.b  $44,  $C,   1, $18,   0, $28
Map_HUD_EncoreStocks5:
		dc.w 2
		dc.b  $44,  $C,   1, $18,   0, $28
		dc.b  $44,   4,   0, $F9,   0, $48
Map_HUD_EncoreStocks6:
		dc.w 2
		dc.b  $44,  $C,   1, $18,   0, $28
		dc.b  $44,   8,   0, $F9,   0, $48
Map_HUD_Blank:	dc.w 0
Map_HUD_Lives:	dc.b  $40,   5,   1, $10,   0,   0
		dc.b  $40,  $D, $21, $14,   0, $11
		dc.b  $40,   5,   1, $10,   0,   0	; 0
		dc.b  $40,   5,   1, $14,   0, $14
		dc.b  $3D,   5,   1, $10,   0,   1	; 1
		dc.b  $43,   5,   1, $14,   0, $13
		dc.b  $3B,   5,   1, $10,   0,   3	; 2
		dc.b  $45,   5,   1, $14,   0, $11
		dc.b  $39,   5,   1, $10,   0,   6	; 3
		dc.b  $47,   5,   1, $14,   0,  $E
		dc.b  $38,   5,   1, $10,   0,  $A	; 4
		dc.b  $48,   5,   1, $14,   0,  $A
		dc.b  $39,   5,   1, $10,   0,  $E	; 5
		dc.b  $47,   5,   1, $14,   0,   6
		dc.b  $3B,   5,   1, $10,   0, $11	; 6
		dc.b  $45,   5,   1, $14,   0,   3
		dc.b  $3D,   5,   1, $10,   0, $13	; 7
		dc.b  $43,   5,   1, $14,   0,   1
		dc.b  $40,   5,   1, $14,   0,   0	; 0
		dc.b  $40,   5,   1, $10,   0, $14
		dc.b  $3D,   5,   1, $14,   0,   1	; 1
		dc.b  $43,   5,   1, $10,   0, $13
		dc.b  $3B,   5,   1, $14,   0,   3	; 2
		dc.b  $45,   5,   1, $10,   0, $11
		dc.b  $39,   5,   1, $14,   0,   6	; 3
		dc.b  $47,   5,   1, $10,   0,  $E
		dc.b  $38,   5,   1, $14,   0,  $A	; 4
		dc.b  $48,   5,   1, $10,   0,  $A
		dc.b  $39,   5,   1, $14,   0,  $E	; 5
		dc.b  $47,   5,   1, $10,   0,   6
		dc.b  $3B,   5,   1, $14,   0, $11	; 6
		dc.b  $45,   5,   1, $10,   0,   3
		dc.b  $3D,   5,   1, $14,   0, $13	; 7
		dc.b  $43,   5,   1, $10,   0,   1
