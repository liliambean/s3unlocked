Map_HUD_EncoreMain:
		dc.w Map_HUD_EncoreFull-Map_HUD_EncoreMain
		dc.w Map_HUD_EncoreNoRings-Map_HUD_EncoreMain
		dc.w Map_HUD_EncoreNoTime-Map_HUD_EncoreMain
		dc.w Map_HUD_EncoreNoTimeRings-Map_HUD_EncoreMain
		dc.w Map_HUD_EncoreBonusFull-Map_HUD_EncoreMain
		dc.w Map_HUD_EncoreBonusNoRings-Map_HUD_EncoreMain
Map_HUD_EncorePlayer:
		dc.w Map_HUD_EncorePlayer0-Map_HUD_EncorePlayer
		dc.w Map_HUD_EncorePlayer1-Map_HUD_EncorePlayer
		dc.w Map_HUD_EncorePlayer2-Map_HUD_EncorePlayer
		dc.w Map_HUD_EncorePlayer3-Map_HUD_EncorePlayer
		dc.w Map_HUD_EncorePlayer4-Map_HUD_EncorePlayer
		dc.w Map_HUD_EncorePlayer5-Map_HUD_EncorePlayer
		dc.w Map_HUD_EncorePlayer6-Map_HUD_EncorePlayer
		dc.w Map_HUD_EncorePlayer7-Map_HUD_EncorePlayer
Map_HUD_EncoreStocks:
		dc.w Map_HUD_EncoreStocks0-Map_HUD_EncoreStocks
		dc.w Map_HUD_EncoreStocks1-Map_HUD_EncoreStocks
		dc.w Map_HUD_EncoreStocks2-Map_HUD_EncoreStocks
		dc.w Map_HUD_EncoreStocks3-Map_HUD_EncoreStocks
		dc.w Map_HUD_EncoreStocks4-Map_HUD_EncoreStocks
		dc.w Map_HUD_EncoreStocks5-Map_HUD_EncoreStocks
Map_HUD_EncoreFull:
		dc.w 8
		dc.b  $80,  $D, $20,   8,   0,   0
		dc.b  $80,  $D, $20, $1C,   0, $20
		dc.b  $80,  $D, $20, $24,   0, $40
		dc.b  $90,  $D, $20, $16,   0,   0
		dc.b  $90,  $D, $20, $2E,   0, $28
		dc.b  $A0,  $D, $20,  $E,   0,   0
		dc.b  $A0,   1, $20,   8,   0, $20
		dc.b  $A0,   9, $20, $36,   0, $30
Map_HUD_EncoreNoRings:
		dc.w 6
		dc.b  $80,  $D, $20,   8,   0,   0
		dc.b  $80,  $D, $20, $1C,   0, $20
		dc.b  $80,  $D, $20, $24,   0, $40
		dc.b  $90,  $D, $20, $16,   0,   0
		dc.b  $90,  $D, $20, $2E,   0, $28
		dc.b  $A0,   9, $20, $36,   0, $30
Map_HUD_EncoreNoTime:
		dc.w 7
		dc.b  $80,  $D, $20,   8,   0,   0
		dc.b  $80,  $D, $20, $1C,   0, $20
		dc.b  $80,  $D, $20, $24,   0, $40
		dc.b  $90,  $D, $20, $2E,   0, $28
		dc.b  $A0,  $D, $20,  $E,   0,   0
		dc.b  $A0,   1, $20,   8,   0, $20
		dc.b  $A0,   9, $20, $36,   0, $30
Map_HUD_EncoreNoTimeRings:
		dc.w 5
		dc.b  $80,  $D, $20,   8,   0,   0
		dc.b  $80,  $D, $20, $1C,   0, $20
		dc.b  $80,  $D, $20, $24,   0, $40
		dc.b  $90,  $D, $20, $2E,   0, $28
		dc.b  $A0,   9, $20, $36,   0, $30
Map_HUD_EncoreBonusFull:
		dc.w 3
		dc.b  $80,  $D, $20,  $E,   0,   0
		dc.b  $80,   1, $20,   8,   0, $20
		dc.b  $80,   9, $20, $36,   0, $30
Map_HUD_EncoreBonusNoRings:
		dc.w 1
		dc.b  $80,   9, $20, $36,   0, $30
Map_HUD_EncorePlayer0:
		dc.w 2
		dc.b  $40,   5,   1, $10,   0,   0
		dc.b  $40,   5,   1, $14,   0, $14
Map_HUD_EncorePlayer1:
		dc.w 2
		dc.b  $3D,   5,   1, $10,   0,   1
		dc.b  $43,   5,   1, $14,   0, $13
Map_HUD_EncorePlayer2:
		dc.w 2
		dc.b  $3B,   5,   1, $10,   0,   3
		dc.b  $45,   5,   1, $14,   0, $11
Map_HUD_EncorePlayer3:
		dc.w 2
		dc.b  $39,   5,   1, $10,   0,   6
		dc.b  $47,   5,   1, $14,   0,  $E
Map_HUD_EncorePlayer4:
		dc.w 2
		dc.b  $38,   5,   1, $10,   0,  $A
		dc.b  $48,   5,   1, $14,   0,  $A
Map_HUD_EncorePlayer5:
		dc.w 2
		dc.b  $39,   5,   1, $10,   0,  $E
		dc.b  $47,   5,   1, $14,   0,   6
Map_HUD_EncorePlayer6:
		dc.w 2
		dc.b  $3B,   5,   1, $10,   0, $11
		dc.b  $45,   5,   1, $14,   0,   3
Map_HUD_EncorePlayer7:
		dc.w 2
		dc.b  $3D,   5,   1, $10,   0, $13
		dc.b  $43,   5,   1, $14,   0,   1
Map_HUD_EncoreStocks0:
		dc.w 1
		dc.b  $40,   5,   1, $10,   0,   0
Map_HUD_EncoreStocks1:
		dc.w 0
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
		dc.b  $44,   4,   0, $2C,   0, $48
