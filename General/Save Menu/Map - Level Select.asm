		dc.w Map_LevelSelectSonic-Map_LevelSelect
		dc.w Map_LevelSelectTails-Map_LevelSelect
		dc.w Map_LevelSelectKnuckles-Map_LevelSelect
		dc.w Map_LevelSelectAmy-Map_LevelSelect
		dc.w Map_LevelSelectMighty-Map_LevelSelect
		dc.w Map_LevelSelectRay-Map_LevelSelect
		dc.w Map_LevelSelectMetalSonic-Map_LevelSelect
		dc.w Map_LevelSelectZoneIcon-Map_LevelSelect
		dc.w Map_LevelSelectBossIcon-Map_LevelSelect
		dc.w Map_LevelSelectPlayer_1P-Map_LevelSelect
		dc.w Map_LevelSelectPlayer_2P-Map_LevelSelect
		dc.w Map_LevelSelectArrow_LeftArrow-Map_LevelSelect
		dc.w Map_LevelSelectArrow_RightArrow-Map_LevelSelect
Map_LevelSelectSonic:
		dc.w 1
		dc.b  $F8,   5, $25, $E4, $FF, $F8
Map_LevelSelectTails:
		dc.w 1
		dc.b  $F8,   5, $25, $E8, $FF, $F8
Map_LevelSelectKnuckles:
		dc.w 1
		dc.b  $F8,   5, $45, $EC, $FF, $F8
Map_LevelSelectAmy:
		dc.w 1
		dc.b  $F8,   5, $45, $F0, $FF, $F8
Map_LevelSelectMighty:
		dc.w 1
		dc.b  $F8,   5, $25, $F4, $FF, $F8
Map_LevelSelectRay:
		dc.w 1
		dc.b  $F8,   5, $25, $F8, $FF, $F8
Map_LevelSelectMetalSonic:
		dc.w 1
		dc.b  $F8,   5, $25, $FC, $FF, $F8
Map_LevelSelectZoneIcon:
		dc.w 6
		dc.b  $E4,  $F, $60, $38, $FF, $D8
		dc.b  $E4,  $F, $60, $48, $FF, $F8
		dc.b  $E4,   7, $60, $58,   0, $18
		dc.b    4,  $E, $60, $60, $FF, $D8
		dc.b    4,  $E, $60, $6C, $FF, $F8
		dc.b    4,   6, $60, $78,   0, $18
Map_LevelSelectBossIcon:
		dc.w $E
		dc.b  $E4,  $F, $60, $38, $FF, $D8
		dc.b  $E4,  $F, $60, $48, $FF, $F8
		dc.b  $E4,   7, $60, $58,   0, $18
		dc.b    4,  $E, $60, $60, $FF, $D8
		dc.b    4,   0, $60, $6C, $FF, $F8
		dc.b    4,   0, $60, $6F,   0,   0
		dc.b    4,   0, $60, $72,   0,   8
		dc.b    4,   0, $60, $75,   0, $10
		dc.b    4,   0, $60, $78,   0, $18
		dc.b    4,   0, $60, $7B,   0, $20
		dc.b  $11,   0, $40, $1F,   0,   1
		dc.b  $11,   0, $40, $2C,   0,   9
		dc.b  $11,   0, $40, $30,   0, $11
		dc.b  $11,   0, $40, $30,   0, $19
Map_LevelSelectPlayer_1P:
		dc.w 2
		dc.b  $F1,   0, $40, $11, $FF, $F8
		dc.b  $F1,   0, $40, $2D,   0,   0
Map_LevelSelectPlayer_2P:
		dc.w 2
		dc.b  $F1,   0, $40, $12, $FF, $F8
		dc.b  $F1,   0, $40, $2D,   0,   0
Map_LevelSelectArrow_LeftArrow:
		dc.w 1
		dc.b  $F9,   1,  $D, $E2, $FF, $FA
Map_LevelSelectArrow_RightArrow:
		dc.w 1
		dc.b  $F9,   1,   5, $E2, $FF, $FC
