; Palette pointers

		dc.l Pal_SonicTails			; Liliam: simplify player palette selection
		dc.w Normal_palette&$FFFF		;
		dc.w bytesToLcnt($20)			;
		dc.l Pal_SonicTails			;
		dc.w Normal_palette&$FFFF		;
		dc.w bytesToLcnt($20)			;
;		dc.l Pal_S2Sega				;
;		dc.w Normal_palette&$FFFF		;
;		dc.w bytesToLcnt($80)			;
;		dc.l Pal_S2Title			;
;		dc.w Normal_palette_line_2&$FFFF	;
;		dc.w bytesToLcnt($20)			;
;		dc.l Pal_S2LevSel			;
;		dc.w Normal_palette&$FFFF		;
;		dc.w bytesToLcnt($80)			;
		dc.l Pal_SonicTails
		dc.w Normal_palette&$FFFF
		dc.w bytesToLcnt($20)
;		dc.l Pal_S2Menu				;
;		dc.w Normal_palette&$FFFF		;
;		dc.w bytesToLcnt($80)			;
		dc.l Pal_Knuckles
		dc.w Normal_palette&$FFFF
		dc.w bytesToLcnt($20)
		dc.l Pal_Amy				; Liliam: add extra characters
		dc.w Normal_palette&$FFFF		;
		dc.w bytesToLcnt($20)			;
		dc.l Pal_SaveScreen+$20			;
		dc.w Normal_palette&$FFFF		;
		dc.w bytesToLcnt($20)			;
		dc.l Pal_SaveScreen+$20			;
		dc.w Normal_palette&$FFFF		;
		dc.w bytesToLcnt($20)			;
		dc.l Pal_MetalSonic			;
		dc.w Normal_palette&$FFFF		;
		dc.w bytesToLcnt($20)			;
;		dc.l Pal_S2Sega				;
;		dc.w Normal_palette&$FFFF		;
;		dc.w bytesToLcnt($80)			;
;		dc.l Pal_S2Sega				;
;		dc.w Normal_palette&$FFFF		;
;		dc.w bytesToLcnt($80)			;
;		dc.l Pal_S2Sega				;
;		dc.w Normal_palette&$FFFF		;
;		dc.w bytesToLcnt($80)			;
;		dc.l Pal_S2Sega				;
;		dc.w Normal_palette&$FFFF		;
;		dc.w bytesToLcnt($80)			;
		dc.l Pal_Encore				; Liliam: Encore mode - palette
		dc.w Normal_palette&$FFFF		;
		dc.w bytesToLcnt($20)			;
		dc.l Pal_LevelSelect			; Liliam: level select - use data select background
		dc.w Normal_palette&$FFFF		;
		dc.w bytesToLcnt($60)			;
		dc.l Pal_AIZIntro
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_AIZFire
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_HCZ1
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_HCZ2
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_MGZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_MGZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_CNZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_CNZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_FBZ1
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_FBZ2
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_ICZ1
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_ICZ2
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_LBZ1
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_LBZ2
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_MHZ1
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_MHZ2
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_SOZ1
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_S0Z2
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_LRZ1
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_LRZ2
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_SSZ1
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_SSZ2
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_DEZ1
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_DEZ2
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_DDZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_DDZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_Encore_Special			; Liliam: Encore mode - bonus stage
		dc.w Normal_palette&$FFFF		;
		dc.w bytesToLcnt($80)			;
;		dc.l Pal_Ending1			;
;		dc.w Normal_palette_line_2&$FFFF	;
;		dc.w bytesToLcnt($60)			;
		dc.l Pal_Ending2
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_ALZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_ALZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_BPZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_BPZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_AIZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_AIZ_Water
		dc.w Normal_palette&$FFFF
		dc.w bytesToLcnt($80)
		dc.l Pal_AIZ2_Water
		dc.w Normal_palette&$FFFF
		dc.w bytesToLcnt($80)
		dc.l Pal_LBZ_Water
		dc.w Normal_palette&$FFFF
		dc.w bytesToLcnt($80)
		dc.l Pal_LBZ_Water
		dc.w Normal_palette&$FFFF
		dc.w bytesToLcnt($80)
		dc.l Pal_LBZ_Water2
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_AIZBoss
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_HCZ1_Water
		dc.w Normal_palette&$FFFF
		dc.w bytesToLcnt($80)
		dc.l Pal_HCZ2_Water
		dc.w Normal_palette&$FFFF
		dc.w bytesToLcnt($80)
		dc.l Pal_Gumball_Special
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_DPZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_CGZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_EMZ
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_Pachinko_Special
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_Slot_Special
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_ICZ2_Water
		dc.w Normal_palette&$FFFF
		dc.w bytesToLcnt($80)
		dc.l Pal_CNZ_Water
		dc.w Normal_palette&$FFFF
		dc.w bytesToLcnt($80)
		dc.l Pal_DPZ				; Liliam: Encore mode - add extra levels
;		dc.l Pal_AIZ				;
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_CGZ				;
;		dc.l Pal_SOZ1_Clone			;
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_EMZ				;
;		dc.l Pal_SOZ2_Extra			;
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_LRZBoss
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_HPZIntro
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_DEZBoss
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
		dc.l Pal_CutsceneKnux			; Liliam: bugfix - HPZ SS results palette screwery
;		dc.l Pal_DEZBoss			;
		dc.w Normal_palette_line_2&$FFFF
		dc.w bytesToLcnt($60)
