; Palette pointers

palptr:	macro paletteLabel,paletteRAMaddress,paletteSize,{INTLABEL},{GLOBALSYMBOLS}
__LABEL__: = (*-PalPoint)/8
	dc.l paletteLabel
	dc.w paletteRAMaddress&$FFFF,bytesToLcnt(paletteSize)
	endm

;PalID_S2Sega:		palptr Pal_S2Sega,		Normal_palette,		$80	; Liliam: simplify player palette selection
;PalID_S2Title:		palptr Pal_S2Title,		Normal_palette_line_2,	$20	;
;PalID_S2LevSel:	palptr Pal_S2LevSel,		Normal_palette,		$80	;
PalID_SonicTails:	palptr Pal_SonicTails,		Normal_palette,		$20
PalID_Sonic:		palptr Pal_SonicTails,		Normal_palette,		$20	;
PalID_Tails:		palptr Pal_SonicTails,		Normal_palette,		$20	;
;PalID_S2Menu:		palptr Pal_S2Menu,		Normal_palette,		$80	;
PalID_Knuckles:		palptr Pal_Knuckles,		Normal_palette,		$20	;
PalID_Amy:		palptr Pal_Amy,			Normal_palette,		$20	;
PalID_Mighty:		palptr Pal_Mighty,		Normal_palette,		$20	;
PalID_Ray:		palptr Pal_Ray,			Normal_palette,		$20	;
PalID_MetalSonic:	palptr Pal_MetalSonic,		Normal_palette,		$20	;

PalID_EncoreMode:	palptr Pal_EncoreMode,		Normal_palette,		$20	; Liliam: Encore mode - palette
;PalID_S2Sega_2:	palptr Pal_S2Sega,		Normal_palette,		$80
;PalID_S2Sega_3:	palptr Pal_S2Sega,		Normal_palette,		$80
;PalID_S2Sega_4:	palptr Pal_S2Sega,		Normal_palette,		$80
;PalID_S2Sega_5:	palptr Pal_S2Sega,		Normal_palette,		$80

PalID_AIZIntro:		palptr Pal_AIZIntro,		Normal_palette_line_2,	$60
PalID_AIZFire:		palptr Pal_AIZFire,		Normal_palette_line_2,	$60
PalID_HCZ1:		palptr Pal_HCZ1,		Normal_palette_line_2,	$60
PalID_HCZ2:		palptr Pal_HCZ2,		Normal_palette_line_2,	$60
;PalID_MGZ1:		palptr Pal_MGZ,			Normal_palette_line_2,	$60
PalID_MGZ2:		palptr Pal_MGZ,			Normal_palette_line_2,	$60
;PalID_CNZ1:		palptr Pal_CNZ,			Normal_palette_line_2,	$60
PalID_CNZ2:		palptr Pal_CNZ,			Normal_palette_line_2,	$60
;PalID_FBZ1:		palptr Pal_FBZ1,		Normal_palette_line_2,	$60
PalID_FBZ2:		palptr Pal_FBZ2,		Normal_palette_line_2,	$60
PalID_ICZ1:		palptr Pal_ICZ1,		Normal_palette_line_2,	$60
PalID_ICZ2:		palptr Pal_ICZ2,		Normal_palette_line_2,	$60
PalID_LBZ1:		palptr Pal_LBZ1,		Normal_palette_line_2,	$60
PalID_LBZ2:		palptr Pal_LBZ2,		Normal_palette_line_2,	$60
PalID_MHZ1:		palptr Pal_MHZ1,		Normal_palette_line_2,	$60
PalID_MHZ2:		palptr Pal_MHZ2,		Normal_palette_line_2,	$60
PalID_SOZ1:		palptr Pal_SOZ1,		Normal_palette_line_2,	$60
PalID_SOZ2:		palptr Pal_SOZ2,		Normal_palette_line_2,	$60
PalID_LRZ1:		palptr Pal_LRZ1,		Normal_palette_line_2,	$60
PalID_LRZ2:		palptr Pal_LRZ2,		Normal_palette_line_2,	$60
PalID_SSZ1:		palptr Pal_SSZ1,		Normal_palette_line_2,	$60
PalID_SSZ2:		palptr Pal_SSZ2,		Normal_palette_line_2,	$60
PalID_DEZ1:		palptr Pal_DEZ1,		Normal_palette_line_2,	$60
PalID_DEZ2:		palptr Pal_DEZ2,		Normal_palette_line_2,	$60
;PalID_DDZ1:		palptr Pal_DDZ,			Normal_palette_line_2,	$60
PalID_DDZ2:		palptr Pal_DDZ,			Normal_palette_line_2,	$60
;PalID_Ending1:		palptr Pal_Ending1,		Normal_palette_line_2,	$60
PalID_Ending2:		palptr Pal_Ending2,		Normal_palette_line_2,	$60
PalID_ALZ:		palptr Pal_ALZ,			Normal_palette_line_2,	$60
PalID_ALZ_2:		palptr Pal_ALZ_Encore,		Normal_palette_line_2,	$60	; Liliam: Encore mode - add extra levels
;PalID_ALZ_2:		palptr Pal_ALZ,			Normal_palette_line_2,	$60
PalID_BPZ:		palptr Pal_BPZ,			Normal_palette_line_2,	$60
PalID_BPZ_2:		palptr Pal_BPZ_Encore,		Normal_palette_line_2,	$60	; Liliam: Encore mode - add extra levels
;PalID_BPZ_2:		palptr Pal_BPZ,			Normal_palette_line_2,	$60
PalID_AIZ:		palptr Pal_AIZ,			Normal_palette_line_2,	$60
PalID_AIZ_Water:	palptr Pal_AIZ_Water,		Normal_palette,		$80
PalID_AIZ2_Water:	palptr Pal_AIZ2_Water,		Normal_palette,		$80
;PalID_LBZ_Water:	palptr Pal_LBZ_Water,		Normal_palette,		$80
PalID_LBZ2_Water:	palptr Pal_LBZ_Water,		Normal_palette,		$80
;PalID_LBZ_Water2:	palptr Pal_LBZ_Water2,		Normal_palette_line_2,	$60
PalID_AIZBoss:		palptr Pal_AIZBoss,		Normal_palette_line_2,	$60
PalID_HCZ1_Water:	palptr Pal_HCZ1_Water,		Normal_palette,		$80
PalID_HCZ2_Water:	palptr Pal_HCZ2_Water,		Normal_palette,		$80
PalID_Gumball:		palptr Pal_Gumball_Special,	Normal_palette_line_2,	$60
PalID_DPZ:		palptr Pal_DPZ,			Normal_palette_line_2,	$60
PalID_DPZ_2:		palptr Pal_DPZ_Encore,		Normal_palette_line_2,	$60	; Liliam: Encore mode - add extra levels
PalID_CGZ:		palptr Pal_CGZ,			Normal_palette_line_2,	$60
PalID_CGZ_2:		palptr Pal_CGZ_Encore,		Normal_palette_line_2,	$60	; Liliam: Encore mode - add extra levels
PalID_EMZ:		palptr Pal_EMZ,			Normal_palette_line_2,	$60
PalID_EMZ_2:		palptr Pal_EMZ_Encore,		Normal_palette_line_2,	$60	; Liliam: Encore mode - add extra levels
PalID_Pachinko:		palptr Pal_Pachinko_Special,	Normal_palette_line_2,	$60
PalID_Slots:		palptr Pal_Slot_Special,	Normal_palette_line_2,	$60
PalID_Slots_2:		palptr Pal_Encore_Special,	Normal_palette,		$80	; Liliam: Encore mode - bonus stage
PalID_ICZ2_Water:	palptr Pal_ICZ2_Water,		Normal_palette,		$80
PalID_CNZ_Water:	palptr Pal_CNZ_Water,		Normal_palette,		$80
;PalID_AIZ_2:		palptr Pal_AIZ,			Normal_palette_line_2,	$60
;PalID_SOZ1_Clone:	palptr Pal_SOZ1_Clone,		Normal_palette_line_2,	$60
;PalID_SOZ2_Extra:	palptr Pal_SOZ2_Extra,		Normal_palette_line_2,	$60
PalID_LRZBoss:		palptr Pal_LRZBoss,		Normal_palette_line_2,	$60
PalID_HPZIntro:		palptr Pal_HPZIntro,		Normal_palette_line_2,	$60
PalID_DEZBoss:		palptr Pal_DEZBoss,		Normal_palette_line_2,	$60
PalID_HPZ:		palptr Pal_HPZ,			Normal_palette_line_2,	$60	; Liliam: bugfix - HPZ SS results palette screwery
;PalID_DEZBoss_2:	palptr Pal_DEZBoss,		Normal_palette_line_2,	$60

PalID_MGZ1 = PalID_MGZ2
PalID_CNZ1 = PalID_CNZ2
PalID_FBZ1 = PalID_FBZ2
PalID_DDZ1 = PalID_DDZ2
