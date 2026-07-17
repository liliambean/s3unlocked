
Obj_LevelSelect:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	LevelSelect_Index(pc,d0.w),d0
		jmp	LevelSelect_Index(pc,d0.w)
; ---------------------------------------------------------------------------
LevelSelect_Index:
		dc.w	Obj_LevelSelect_Init-LevelSelect_Index
		dc.w	Obj_LevelSelect_LeftScroll-LevelSelect_Index
		dc.w	Obj_LevelSelect_LeftPage-LevelSelect_Index
		dc.w	Obj_LevelSelect_RightScroll-LevelSelect_Index
		dc.w	Obj_LevelSelect_RightPage-LevelSelect_Index
; ---------------------------------------------------------------------------

Obj_LevelSelect_Init:
		move.l	#Map_LevelSelect,mappings(a0)
		move.w	#$1B8,x_pos(a0)
		move.w	#$F0,y_pos(a0)
		move.b	#$C,mapping_frame(a0)
		move.w	#-1,(V_scroll_value_FG).w
		clr.w	(H_scroll_buffer).w
		move.b	#4,routine(a0)
		cmpi.b	#$1E,(Level_select_option+1).w
		blo.s	Obj_LevelSelect_Return
		move.w	#-$13*8,(H_scroll_buffer).w
		move.w	#$90,x_pos(a0)
		subq.b	#1,mapping_frame(a0)
		move.b	#8,routine(a0)

Obj_LevelSelect_Return:
		rts
; ---------------------------------------------------------------------------

Obj_LevelSelect_LeftScroll:
		addi.w	#$10,(H_scroll_buffer).w
		tst.w	(H_scroll_buffer).w
		bne.s	Obj_LevelSelect_LeftPage.checkScroll
		addq.b	#2,routine(a0)

Obj_LevelSelect_LeftPage:
		bsr.s	Obj_LevelSelect_Draw

	.checkScroll:
		cmpi.b	#$1E,(Level_select_option+1).w
		blo.s	Obj_LevelSelect_Return
		move.w	#$90,x_pos(a0)
		move.b	#6,routine(a0)
		subq.b	#1,mapping_frame(a0)
		subi.w	#8,(H_scroll_buffer).w
		moveq	#signextendB(sfx_Switch),d0
		jmp	(Play_SFX).l
; ---------------------------------------------------------------------------

Obj_LevelSelect_RightScroll:
		subi.w	#$10,(H_scroll_buffer).w
		cmpi.w	#-$13*8,(H_scroll_buffer).w
		bne.s	Obj_LevelSelect_RightPage.checkScroll
		addq.b	#2,routine(a0)

Obj_LevelSelect_RightPage:
		bsr.s	Obj_LevelSelect_Draw

	.checkScroll:
		cmpi.b	#$12,(Level_select_option+1).w
		bhs.s	Obj_LevelSelect_Return
		move.w	#$1B8,x_pos(a0)
		move.b	#2,routine(a0)
		addq.b	#1,mapping_frame(a0)
		addi.w	#8,(H_scroll_buffer).w
		moveq	#signextendB(sfx_Switch),d0
		jmp	(Play_SFX).l
; ---------------------------------------------------------------------------

Obj_LevelSelect_Draw:
		btst	#3,(Level_frame_counter+1).w
		beq.s	Obj_LevelSelect_Return
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

Obj_LevelSelectCharIcons:
		move.l	#Obj_LevelSelectCharIcons_Encore,(a0)
		move.l	#Map_LevelSelect,mappings(a0)
		move.b	#$40,render_flags(a0)
		move.w	#$1A8,d0
		move.w	d0,x_pos(a0)
		move.w	d0,sub2_x_pos(a0)
		move.w	d0,sub3_x_pos(a0)
		move.w	d0,sub4_x_pos(a0)
		move.w	#$128,d0
		move.w	d0,y_pos(a0)
		move.w	d0,sub2_y_pos(a0)
		move.w	#$148,d0
		move.w	d0,sub3_y_pos(a0)
		move.w	d0,sub4_y_pos(a0)
		move.b	#9,mapping_frame(a0)
		move.b	#$A,sub3_mapframe(a0)
		tst.b	(Encore_mode).w
		bne.s	Obj_LevelSelectCharIcons_Encore
		move.l	#Obj_LevelSelectCharIcons_Main,(a0)
		move.b	#1,sub4_mapframe(a0)

Obj_LevelSelectCharIcons_Main:
		move.w	#1,mainspr_childsprites(a0)
		move.b	(Player_option+1).w,d0
		subq.b	#1,d0
		bpl.s	Obj_LevelSelectCharIcons_Draw
		addq.w	#2,mainspr_childsprites(a0)
		moveq	#0,d0
		bra.s	Obj_LevelSelectCharIcons_Draw
; ---------------------------------------------------------------------------

Obj_LevelSelectCharIcons_Encore:
		move.w	#1,mainspr_childsprites(a0)
		move.b	(P1_character).w,d0
		move.b	(P2_character).w,d1
		cmp.b	d0,d1
		beq.s	Obj_LevelSelectCharIcons_Draw
		addq.w	#2,mainspr_childsprites(a0)
		move.b	d1,sub4_mapframe(a0)

Obj_LevelSelectCharIcons_Draw:
		move.b	d0,sub2_mapframe(a0)
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

Obj_LevelSelectZoneIcon:
		move.l	#Obj_LevelSelectZoneIcon_Main,(a0)
		move.l	#Map_LevelSelect,mappings(a0)
		move.w	#$160,x_pos(a0)
		move.w	#$134,y_pos(a0)
		move.b	(Level_select_option+1).w,anim_frame(a0)
		lea	(Target_palette_line_4).l,a3
		bra.s	LevelSelectZoneIcon_LoadArt
; ---------------------------------------------------------------------------

Obj_LevelSelectZoneIcon_Main:
		lea	(Normal_palette_line_4).l,a3
		move.w	(Level_select_option).w,d0
		cmp.b	anim_frame(a0),d0
		beq.w	LevelSelectZoneIcon_CheckButtons
		move.w	d0,anim(a0)
		move.b	d0,anim_frame(a0)

LevelSelectZoneIcon_LoadArt:
		bsr.w	LevelSelectZoneIcon_LoadPalette
		clr.b	(Special_stage_override_flag).w
		move.b	#7,mapping_frame(a0)
		cmpi.b	#$13,d1
		bhs.s	LevelSelectZoneIcon_LoadArt_Extra
		mulu.w	#$46<<5,d1
		ori.l	#RAM_start,d1
		move.w	#tiles_to_bytes(ArtTile_LevelSelectBG-9*$46),d2
		move.w	#$46<<4,d3
		clr.w	art_tile(a0)
		jsr	(Add_To_DMA_Queue).l
		move.b	anim_frame(a0),d0
		cmpi.b	#$14,d0
		beq.s	LevelSelectZoneIcon_DrawBoss
		cmpi.b	#$17,d0
		beq.s	LevelSelectZoneIcon_DrawBoss
		cmpi.b	#$1A,d0
		bne.w	LevelSelectZoneIcon_Draw

LevelSelectZoneIcon_DrawBoss:
		addq.b	#1,mapping_frame(a0)
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

LevelSelectZoneIcon_LoadArt_Extra:
		subi.b	#$13-1,d1
		mulu.w	#$46,d1
		move.w	d1,art_tile(a0)
		cmpi.b	#$26,anim_frame(a0)
		bne.w	LevelSelectZoneIcon_Draw
		move.w	#-1,anim(a0)
		lea	-$C(a3),a3
		bra.s	LevelSelectZoneIcon_CheckButtons_SpecialStage
; ---------------------------------------------------------------------------

LevelSelectZoneIcon_CheckButtons:
		tst.b	anim(a0)
		beq.s	LevelSelectZoneIcon_Draw
		lea	$14(a3),a3

LevelSelectZoneIcon_CheckButtons_SpecialStage:
		tst.b	(Debug_cheat_flag).w
		beq.s	LevelSelectZoneIcon_Draw
		move.w	(Sound_test_sound).w,d0
		andi.b	#$F,d0
		move.b	(Ctrl_1_held).w,d1
		btst	#button_C,d1
		bne.s	LevelSelectZoneIcon_Draw
		move.b	#1,(Special_stage_override_flag).w
		btst	#button_A,d1
		bne.s	.checkEncore
		moveq	#0,d0
		move.b	d0,(Special_stage_override_flag).w
		move.b	(Current_special_stage).w,d0
		cmpi.b	#7,(Chaos_emerald_count).w
		bne.s	.checkEncore
		addq.b	#8,d0

	.checkEncore:
		addq.b	#8,d0
		tst.b	(Encore_mode).w
		beq.s	.checkUpdate
		andi.b	#7,d0

	.checkUpdate:
		cmp.b	prev_anim(a0),d0
		beq.s	LevelSelectZoneIcon_Draw
		move.b	d0,prev_anim(a0)
		mulu.w	#$26,d0
		lea	(Pal_SStage_Layout).l,a2
		lea	(a2,d0.w),a2
		move.l	$20(a2),(a3)+
		move.w	$24(a2),(a3)+
		move.w	(a2),(a3)+
		move.w	8(a2),(a3)+

LevelSelectZoneIcon_Draw:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

LevelSelectZoneIcon_LoadPalette:
		jsr	(LevelSelect_GetActNumber).l
		moveq	#0,d1
		move.b	(a4,d4.w),d1
		cmpi.b	#$D,d1
		bne.s	.notEnding
		moveq	#$1A,d1
		bra.s	LevelSelectZoneIcon_LoadPalette_Extra
; ---------------------------------------------------------------------------

	.notEnding:
		cmpi.b	#$13,d1
		blo.s	LevelSelectZoneIcon_LoadPalette_Main
		moveq	#$18,d1
		move.w	(a4,d4.w),d0
		bmi.s	LevelSelectZoneIcon_LoadPalette_SoundTest
		moveq	#$17,d1
		cmpi.w	#$4000,d0
		beq.s	LevelSelectZoneIcon_LoadPalette_Extra
		ror.b	#1,d0
		lsr.w	#7,d0
		move.b	LevelSelectZoneIcon_ExtraIcons-$13<<1(pc,d0.w),d1
		cmpi.b	#$13,d1
		bhs.s	LevelSelectZoneIcon_LoadPalette_Extra

LevelSelectZoneIcon_LoadPalette_Main:
		move.w	d1,d0
		bsr.s	LevelSelectZoneIcon_CheckEncorePalette
		lsl.w	#5,d0
		adda.w	d0,a2
		bra.s	LevelSelectZoneIcon_LoadPalette_Copy
; ---------------------------------------------------------------------------

SaveScreen_CheckEncorePalette:
		tst.b	(Encore_mode).w
		bne.s	LevelSelectZoneIcon_CheckEncorePalette
		cmpi.b	#$E,d0
		blo.s	LevelSelectZoneIcon_CheckEncorePalette
		addi.b	#$B,d0

LevelSelectZoneIcon_CheckEncorePalette:
		lea	(Pal_Save_ZoneCard_AIZ_Encore).l,a2
		tst.b	(Encore_flags).w
		bpl.s	.notEncore
		cmpi.b	#$C,d0
		blo.s	.return

	.notEncore:
		lea	(Pal_Save_ZoneCard_AIZ).l,a2
		tst.b	(Encore_mode).w
		beq.s	.return
		cmpi.b	#4,d0
		bne.s	.return
		addi.b	#$F,d0

	.return:
		rts
; ---------------------------------------------------------------------------

LevelSelectZoneIcon_LoadPalette_SoundTest:
		tst.b	(Encore_mode).w
		beq.s	LevelSelectZoneIcon_LoadPalette_Extra
		addq.w	#1,d1

LevelSelectZoneIcon_LoadPalette_Extra:
		move.w	d1,d0
		lea	(Pal_Save_FinishCard1).l,a2
		subi.w	#$18,d0
		bpl.s	.index
		lea	(Pal_Save_ZoneCard_Bonus1).l,a2
		addq.w	#5,d0

	.index:
		lsl.w	#5,d0
		lea	(a2,d0.w),a2

LevelSelectZoneIcon_LoadPalette_Copy:
		moveq	#7,d0

	.loop:
		move.l	(a2)+,(a3)+
		dbf	d0,.loop
		rts
; ---------------------------------------------------------------------------
LevelSelectZoneIcon_ExtraIcons:
		dc.b  $13, $13
		dc.b  $14, $14
		dc.b  $15, $16
		dc.b    9,  $D
		dc.b   $B,  $D
; ---------------------------------------------------------------------------

Obj_PhotoPiece:
		tst.b	(Encore_mode).w
		bne.s	PhotoPiece_Delete
		moveq	#0,d0
		move.b	subtype(a0),d0
		cmpi.b	#120,d0
		bhs.s	PhotoPiece_Delete
		bsr.s	PhotoPiece_LoadArray
		btst	d2,(a1)
		bne.s	PhotoPiece_Delete
		move.l	#Obj_PhotoPiece_Main,(a0)
		move.l	#Map_PhotoPiece,mappings(a0)
		move.w	#make_art_tile(ArtTile_EncoreCursor,0,1),art_tile(a0)
		move.b	#4,render_flags(a0)
		move.w	#$100,priority(a0)
		move.b	#$47,collision_flags(a0)
		move.b	#8,width_pixels(a0)
		move.b	#$10,height_pixels(a0)

Obj_PhotoPiece_Main:
		tst.b	routine(a0)
		beq.s	.checkDelete
		moveq	#0,d0
		move.b	subtype(a0),d0
		bsr.s	PhotoPiece_LoadArray
		bset	d2,(a1)
		st	(Photo_piece_disable_flag).w
		st	(SRAM_mask_interrupts_flag).w
		jsr	(Write_SaveExtra).l
		move.l	#Obj_PhotoPiece_DrawDigits,(a0)
		moveq	#signextendB(sfx_PhotoPiece),d0
		jsr	(Play_SFX).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

	.checkDelete:
		jmp	(Sprite_CheckDeleteTouch3).l
; ---------------------------------------------------------------------------

PhotoPiece_Delete:
		clr.b	(Photo_piece_disable_flag).w
		jmp	(Delete_Current_Sprite).l
; ---------------------------------------------------------------------------

PhotoPiece_LoadArray:
		lea	(Collected_photo_piece_array),a1
		move.b	d0,d2
		andi.b	#%111,d2
		lsr.w	#3,d0
		adda.w	d0,a1
		rts
; ---------------------------------------------------------------------------

Obj_PhotoPiece_DrawDigits:
		move.l	#Obj_PhotoPiece_MoveSprite,(a0)
		move.b	#$30,anim_frame_timer(a0)
		move.b	#1,mapping_frame(a0)
		move.w	#$80,priority(a0)
		move.l	#vdpComm(tiles_to_bytes(ArtTile_PhotoPiece),VRAM,WRITE),d0
		moveq	#0,d1
		move.b	subtype(a0),d1
		addq.w	#1,d1
		moveq	#-1,d4
		moveq	#3-1,d6
		lea	(ArtUnc_PhotoPieceDigits).l,a1
		lea	(dword_E04C).l,a2
		lea	(VDP_data_port).l,a6
		jsr	(loc_E138).l

Obj_PhotoPiece_MoveSprite:
		subq.b	#1,anim_frame_timer(a0)
		bmi.s	PhotoPiece_Delete
		btst	#5,anim_frame_timer(a0)
		beq.s	.checkFlicker
		subq.w	#1,y_pos(a0)

	.checkFlicker:
		btst	#0,anim_frame_timer(a0)
		beq.s	.done
		bchg	#5,art_tile(a0)

	.done:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------
Map_PhotoPiece:
		include "General/Sprites/Ring/Map - Photo Piece.asm"
; ---------------------------------------------------------------------------

Obj_MetalSonicHologram:
		tst.b	(Encore_mode).w
	if NoMetalSonic
		bra.w	MetalSonicHologram_Delete
	else
		beq.w	MetalSonicHologram_Delete
	endif
		bsr.w	MetalSonicHologram_LoadArray
		btst	d2,d0
		bne.w	MetalSonicHologram_Delete
		cmpi.b	#18,d2					; Skip over the next bit if in LRZ1
		beq.s	Obj_MetalSonicHologram_Init
		move.l	#Obj_MetalSonicHologram_Wait,(a0)

Obj_MetalSonicHologram_Wait:
		tst.b	(Slotted_object_bits+$4).w		; Delay spawn if a special stage ring is active
		beq.s	Obj_MetalSonicHologram_Init
		rts
; ---------------------------------------------------------------------------

Obj_MetalSonicHologram_Init:
		move.l	#Obj_MetalSonicHologram_Main,(a0)
		move.l	#Map_MetalSonicHologram,mappings(a0)
		move.b	#1,mapping_frame(a0)
		move.w	#make_art_tile(ArtTile_Explosion,0,0),art_tile(a0)
		move.b	#$4,render_flags(a0)
		move.w	#$180,priority(a0)
		moveq	#$C,d0
		move.b	d0,width_pixels(a0)
		move.b	d0,height_pixels(a0)
		move.b	d0,$3A(a0)				; Positional data for explosions
		move.b	d0,$3B(a0)				;
		move.w	y_pos(a0),$3C(a0)			;
		lea	(ArtKosM_MetalSonicHologram).l,a1
		move.w	#tiles_to_bytes(ArtTile_Explosion),d2
		jsr	(Queue_Kos_Module).l
		lea	ChildObjDat_MetalSonicHologram(pc),a2
		jmp	(CreateChild1_Normal).l
; ---------------------------------------------------------------------------

Obj_MetalSonicHologram_Main:
		move.b	(Player_1+anim).w,$30(a0)
		move.b	(Player_2+anim).w,$31(a0)
		moveq	#$16,d1
		moveq	#$B,d2
		moveq	#$C,d3
		move.w	x_pos(a0),d4
		jsr	(SolidObjectFull).l

		cmpi.b	#2,$30(a0)
		bne.s	.checkP2
		btst	#p1_standing_bit,status(a0)
		beq.s	.checkP1pushing
		lea	(Player_1).w,a1
		jsr	(sub_1FBAE).l
		bra.s	.destroy
; ---------------------------------------------------------------------------

	.checkP1pushing:
		btst	#p1_pushing_bit,status(a0)
		bne.s	.destroy

	.checkP2:
		cmpi.b	#2,$31(a0)
		bne.s	.checkDelete
		btst	#p2_standing_bit,status(a0)
		beq.s	.checkP2pushing
		lea	(Player_2).w,a1
		jsr	(sub_1FBAE).l
		bra.s	.destroy
; ---------------------------------------------------------------------------

	.checkP2pushing:
		btst	#p2_pushing_bit,status(a0)
		bne.s	.destroy

	.checkDelete:
		move.w	x_pos(a0),d0
		andi.w	#$FF80,d0
		sub.w	(Camera_X_pos_coarse_back).w,d0
		cmpi.w	#$280,d0
		bls.w	MetalSonicHologram_DrawSprite
		bsr.w	MetalSonicHologram_RestoreArt
		clr.b	mapping_frame(a0)
		jmp	(Delete_And_Respawn_Sprite).l
; ---------------------------------------------------------------------------

	.destroy:
		move.l	#Obj_MetalSonicHologram_DrawCount,(a0)
		move.l	#ArtUnc_BossExplosion,d1
		move.w	#tiles_to_bytes(ArtTile_Explosion),d2
		move.w	#$360,d3
		jsr	(Add_To_DMA_Queue).l
		jsr	(sub_1FF1E).l				; If anyone was standing on the object, make them fall off
		move.w	#20,$30(a0)				; Create 20 explosions
		clr.b	mapping_frame(a0)
		bra.s	Obj_MetalSonicHologram_WaitForExplosions
; ---------------------------------------------------------------------------

Obj_MetalSonicHologram_DrawCount:
		move.l	#Obj_MetalSonicHologram_MoveSprite,(a0)
		move.b	#$A,mapping_frame(a0)
		move.b	#$10,width_pixels(a0)
		move.b	#8,height_pixels(a0)
		move.w	#$80,priority(a0)
		move.w	#$1F,$2E(a0)

		bsr.w	MetalSonicHologram_LoadArray
		bset	d2,d0
		move.l	d0,(Collected_holograms_array).w
		moveq	#0,d1
		jsr	(PopCount32).l
		move.b	d1,subtype(a0)				; Save number of destroyed holograms
		subq.w	#1,d1
		bsr.w	MetalSonicHologram_DrawDigits
		st	(SRAM_mask_interrupts_flag).w
		jsr	(Write_SaveExtra).l

Obj_MetalSonicHologram_MoveSprite:
		subq.w	#1,y_pos(a0)
		subq.w	#1,$2E(a0)
		bpl.s	Obj_MetalSonicHologram_WaitForExplosions
		move.l	#Obj_MetalSonicHologram_WaitForExplosions,(a0)

Obj_MetalSonicHologram_WaitForExplosions:
		subq.b	#1,$30(a0)
		bpl.s	MetalSonicHologram_DrawSprite
		subq.b	#1,$31(a0)
		bmi.s	.done
		move.b	#2,$30(a0)				; Create explosion every three frames

		jsr	(AllocateObjectAfterCurrent).l
		bne.s	MetalSonicHologram_DrawSprite
		move.l	#loc_83F52,(a1)
		move.l	#Map_BossExplosion,mappings(a1)
		move.w	#make_art_tile(ArtTile_Explosion,0,1),art_tile(a1)
		move.b	#4,render_flags(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	$3C(a0),y_pos(a1)
		jsr	(loc_83E90).l
		bra.s	MetalSonicHologram_DrawSprite
; ---------------------------------------------------------------------------

	.done:
		move.l	#Wait_Draw,(a0)
		move.l	#Obj_MetalSonicHologram_Delete,$34(a0)
		move.w	#$37,$2E(a0)

		moveq	#signextendB(sfx_TimeStone),d0
		moveq	#0,d1
		move.b	subtype(a0),d1
	if EncoreSkip2PZones
		cmpi.b	#28-5,d1
	else
		cmpi.b	#28,d1
	endif
		blo.s	.updateCount
		move.l	#Obj_MetalSonicHologram_FlickerSprite,(a0)
		moveq	#sfx_Perfect,d0

	.updateCount:
		jsr	(Play_SFX).l
		bsr.s	MetalSonicHologram_DrawDigits

MetalSonicHologram_DrawSprite:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

Obj_MetalSonicHologram_FlickerSprite:
		jsr	(Obj_Wait).l
		btst	#1,$2F(a0)
		bne.s	MetalSonicHologram_DrawSprite
		rts
; ---------------------------------------------------------------------------

Obj_MetalSonicHologram_Delete:
		bsr.s	MetalSonicHologram_RestoreArt

MetalSonicHologram_Delete:
		jmp	(Delete_Current_Sprite).l
; ---------------------------------------------------------------------------

MetalSonicHologram_RestoreArt:
		lea	(ArtKosM_BadnikExplosion).l,a1
		move.w	#tiles_to_bytes(ArtTile_Explosion),d2
		jmp	(Queue_Kos_Module).l
; ---------------------------------------------------------------------------

MetalSonicHologram_DrawDigits:
		move.l	#vdpComm(tiles_to_bytes(ArtTile_Explosion+$2E),VRAM,WRITE),d0
		moveq	#1,d4
		moveq	#2-1,d6
		lea	(ArtUnc_LivesDigits).l,a1
		lea	(VDP_data_port).l,a6
		lea	(dword_E050).l,a2
		jmp	(loc_E138).l
; ---------------------------------------------------------------------------

MetalSonicHologram_LoadArray:
		move.l	(Collected_holograms_array).w,d0
		move.w	(Apparent_zone_and_act).w,d2
		cmpi.w	#$E01,d2
		blo.s	.calc1P
		bhi.s	.calc2P
		moveq	#21,d2
		rts
; ---------------------------------------------------------------------------

	.calc1P:
		ror.b	#1,d2
		lsr.w	#7,d2
		rts
; ---------------------------------------------------------------------------

	.calc2P:
		lsr.w	#8,d2
		addi.b	#9,d2
		rts
; ---------------------------------------------------------------------------

Obj_HologramDust:
		move.l	#Obj_HologramDust_Main,(a0)
		move.b	#4,render_flags(a0)
		move.b	#8,width_pixels(a0)
		move.b	#4,height_pixels(a0)
		move.w	#$180,priority(a0)

Obj_HologramDust_Main:
		movea.w	parent3(a0),a1
		tst.b	mapping_frame(a1)
		beq.w	MetalSonicHologram_Delete
		move.w	(Level_frame_counter).w,d0
		btst	#0,d0
		bne.s	.pickSprite
		rts
; ---------------------------------------------------------------------------

	.pickSprite:
		moveq	#2,d1
		btst	#1,d0
		beq.s	.drawSprite
		ori.b	#1,d1

	.drawSprite:
		move.b	d1,mapping_frame(a0)
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

Obj_HologramSprites:
		move.l	#Obj_HologramSprites_Main,(a0)
		move.b	#$44,render_flags(a0)
		move.w	#2,mainspr_childsprites(a0)
		move.b	#8,sub3_mapframe(a0)
		move.b	#$28,width_pixels(a0)
		move.b	#$1E,height_pixels(a0)
		move.w	#$180,priority(a0)
		move.w	(Level_frame_counter).w,d0
		neg.b	d0
		andi.b	#3,d0
		move.b	d0,anim_frame_timer(a0)

Obj_HologramSprites_Main:
		movea.w	parent3(a0),a1
		tst.b	mapping_frame(a1)
		beq.w	MetalSonicHologram_Delete
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	.checkDraw
		move.b	#27,anim_frame_timer(a0)
		eori.b	#1,sub3_mapframe(a0)

	.checkDraw:
		move.w	(Level_frame_counter).w,d0
		moveq	#3,d1
		and.b	d0,d1
		bne.s	.pickFlickySprite
		rts
; ---------------------------------------------------------------------------

	.pickFlickySprite:
		moveq	#4,d1
		btst	#3,d0
		beq.s	.pickFlickyDir
		ori.b	#1,d1

	.pickFlickyDir:
		btst	#5,d0
		beq.s	.drawSprites
		ori.b	#2,d1

	.drawSprites:
		move.b	d1,sub2_mapframe(a0)
		lsl.b	#2,d0
		jsr	(GetSineCosine).l

		move.w	y_pos(a0),d2
		asr.w	#4,d0
		add.w	d2,d0
		move.w	d0,sub2_y_pos(a0)
		move.w	d2,sub3_y_pos(a0)

		move.w	x_pos(a0),d2
		asr.w	#3,d1
		add.w	d2,d1
		move.w	d1,sub2_x_pos(a0)
		move.w	d2,sub3_x_pos(a0)

		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------
ChildObjDat_MetalSonicHologram:
		dc.w 2-1
		dc.l Obj_HologramDust
		dc.b -$15,   -7
		dc.l Obj_HologramSprites
		dc.b -$58, -$12
; ---------------------------------------------------------------------------

Obj_AIZSurfboardIntro:						; Liliam: ported from S3 - restore surfboard intro
		move.l	#Obj_AIZSurfboardIntro_Wait,(a0)
		move.w	#4*(-90-$C),(Events_fg_1).w
		move.w	#$40,(Player_1+x_pos).w
		move.w	#$420,(Player_1+y_pos).w
		move.b	#3,(Player_1+object_control).w
		clr.b	(Player_1+mapping_frame).w
		jsr	(Make_CutsceneSkipObj).l
		jsr	(Clear_Nem_Queue).l
		lea	PLC_AIZSurfboardIntro(pc),a1
		jmp	(Load_PLC_Raw).l
; ---------------------------------------------------------------------------

Obj_AIZSurfboardIntro_Wait:					; Liliam: ported from S3 - restore surfboard intro
		cmpi.w	#4*(-$C),(Events_fg_1).w
		beq.s	Obj_AIZSurfboardIntro_Init
		addq.w	#4,(Events_fg_1).w
		rts
; ---------------------------------------------------------------------------
PLC_AIZSurfboardIntro: plrlistheader				; Liliam: ported from S3 - restore surfboard intro
		plreq ArtTile_AIZIntroPlane, ArtNem_SurfboardSplash
		plreq ArtTile_AIZIntroSprites, ArtNem_AIZIntroSprites
		plreq ArtTile_Surfboard, ArtNem_Surfboard
PLC_AIZSurfboardIntro_End
; ---------------------------------------------------------------------------

Obj_AIZSurfboardIntro_Init:
		move.l	#Map_SurfboardIntro,mappings(a0)
		move.w	#$100,priority(a0)
		move.b	#$20,width_pixels(a0)
		move.b	#4,render_flags(a0)
		move.w	#make_art_tile(ArtTile_Player_1,0,0),art_tile(a0)
		move.b	#-1,(Player_prev_frame).w
		move.l	#Obj_AIZSurfboardIntro_Main,(a0)
		move.w	(Player_1+x_pos).w,x_pos(a0)
		move.w	(Player_1+y_pos).w,y_pos(a0)
		subi.w	#$20,x_pos(a0)
		subi.w	#$10,y_pos(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
;		clr.w	(Events_fg_1).w				; Liliam: ported from S3 - restore surfboard intro
;		tst.b	subtype(a0)				;
;		bne.s	loc_220B78				;
;		lea	(Player_1).w,a1				;
;		move.b	#0,mapping_frame(a1)			;
;		move.b	#3,$2E(a1)				;

;loc_220B78:
		jsr	(AllocateObjectAfterCurrent).l
		bne.w	Obj_AIZSurfboardIntro_Main
		move.l	#Obj_SurfboardSplash,(a1)
		move.w	a0,$30(a1)

Obj_AIZSurfboardIntro_Main:
		tst.w	(Events_fg_1).w				; Liliam: ported from S3 - restore surfboard intro
		beq.s	loc_220B92				;
		addq.w	#4,(Events_fg_1).w			;
;		tst.b	subtype(a0)				;
;		bne.s	loc_220BFC				;

loc_220B92:
		lea	(Player_1).w,a1
		addi.w	#8,x_pos(a1)
		addi.w	#8,x_pos(a0)
		cmpi.w	#$900,x_pos(a1)
		blo.s	loc_220BFC
		jsr	(AllocateObjectAfterCurrent).l
		bne.w	loc_220BD0
		move.l	#Obj_Surfboard,(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		addi.w	#$C,y_pos(a1)
		move.w	a0,$30(a1)

loc_220BD0:
		move.w	#$800,x_vel(a0)
		move.w	#-$400,y_vel(a0)
		move.l	#Obj_AIZSurfboardIntro_Jump,(a0)
		move.w	#1,anim(a0)
		subi.w	#5,x_pos(a0)
		move.b	#7,mapping_frame(a0)
		jsr	(SurfboardIntro_Load_PLC).l
		bra.s	loc_220C00
; ---------------------------------------------------------------------------

loc_220BFC:
		bsr.w	SurfboardIntro_Move

loc_220C00:
		jmp	(Sprite_OnScreen_Test).l
; ---------------------------------------------------------------------------

Obj_AIZSurfboardIntro_Jump:
		lea	(Player_1).w,a1
		addi.w	#8,x_pos(a1)
		jsr	(MoveSprite2).l
		addi.w	#$20,y_vel(a0)
		moveq	#1,d2
		move.w	x_pos(a0),d0
		cmp.w	x_pos(a1),d0
		beq.s	loc_220C30
		blt.s	loc_220C2C
		neg.w	d2

loc_220C2C:
		add.w	d2,x_pos(a0)

loc_220C30:
		tst.w	y_vel(a0)
		bmi.s	loc_220C74
		cmpi.w	#$440,y_pos(a0)
		blo.s	loc_220C74
		move.w	#$440,y_pos(a0)
		move.w	#0,y_vel(a0)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.w	#1,anim(a1)
;		move.w	#$800,ground_vel(a1)			; Liliam: ported from S3 - restore surfboard intro
		move.w	#$700,ground_vel(a1)			;
		move.w	#$800,x_vel(a1)
		move.w	#0,y_vel(a1)
		move.l	#Obj_AIZSurfboardIntro_Run,(a0)

loc_220C74:
		lea	(Ani_SurfboardIntro).l,a1
		jsr	(Animate_Sprite).l
		jsr	(SurfboardIntro_Load_PLC).l
		jmp	(Sprite_OnScreen_Test).l
; ---------------------------------------------------------------------------
Ani_SurfboardIntro:
		include "General/Sprites/Surfboard/Anim - Surfboard Intro.asm"
; ---------------------------------------------------------------------------

Obj_AIZSurfboardIntro_Run:
		movea.l	a0,a3
		lea	(Player_1).w,a0
		move.w	#0,y_vel(a0)
		cmpi.w	#$1170,x_pos(a0)
		blo.s	loc_220CB6
		cmpi.w	#$1270,x_pos(a0)
		bhs.s	loc_220CB6
		move.w	#-$128,y_vel(a0)			; Liliam: ported from S3 - restore surfboard intro
;		move.w	#-$138,y_vel(a0)			;

loc_220CB6:
		jsr	(MoveSprite2).l
;		cmpi.w	#$13C0,x_pos(a0)			;
		cmpi.w	#$1380,x_pos(a0)			;
		blo.s	loc_220CE2
		move.w	#$800,ground_vel(a0)			;
		move.b	#0,$2E(a0)
		move.l	#Obj_AIZSurfboardIntro_Stop,(a3)
		move.b	#1,(Ctrl_1_locked).w
		move.w	#button_left_mask<<8,(Ctrl_1_logical).w
		move.w	#$E,$2E(a3)

loc_220CE2:
		jsr	(Animate_Sonic).l
		move.l	a3,-(sp)
		jsr	(Sonic_Load_PLC).l
		movea.l	(sp)+,a0
		addi.w	#8,x_pos(a0)
		move.b	#0,mapping_frame(a0)
		jmp	(Sprite_OnScreen_Test).l
; ---------------------------------------------------------------------------

Obj_AIZSurfboardIntro_Stop:
		subq.w	#1,$2E(a0)
		bpl.s	loc_220D32
		lea	(Player_1).w,a1
		move.w	#0,ground_vel(a1)
		move.w	#0,x_vel(a1)
		move.w	#0,y_vel(a1)
		move.b	#0,(Ctrl_1_locked).w
		move.w	#0,(Ctrl_1_logical).w
		jsr	(loc_61F22).l				; Liliam: ported from S3 - restore surfboard intro
		move.w	#$1300,(Camera_min_X_pos).w		;
		move.l	#Obj_AIZSurfboardIntro_CheckDelete,(a0)

loc_220D32:
		jmp	(Sprite_OnScreen_Test).l
; ---------------------------------------------------------------------------

Obj_AIZSurfboardIntro_CheckDelete:
		tst.b	(Kos_modules_left).w			; Liliam: ported from S3 - restore surfboard intro
		bne.s	loc_220D38				;
		addq.b	#2,(Dynamic_resize_routine).w		;
		jmp	(Delete_Current_Sprite).l		;
; ---------------------------------------------------------------------------

loc_220D38:
		jmp	(Sprite_OnScreen_Test).l

; =============== S U B R O U T I N E =======================================


SurfboardIntro_Move:
		move.w	#2,d1
		move.w	(Player_1+x_pos).w,d0
		cmp.w	x_pos(a0),d0
		bhs.s	loc_220D4E
		neg.w	d1

loc_220D4E:
		add.w	d1,x_vel(a0)
		moveq	#0,d2
		lea	(SurfboardIntro_DownFrames).l,a1
		move.w	#3,d1
		move.w	(Player_1+y_pos).w,d0
		cmp.w	y_pos(a0),d0
		bhs.s	loc_220D76
		moveq	#1,d2
		lea	(SurfboardIntro_UpFrames).l,a1
		move.w	#4,d1
		neg.w	d1

loc_220D76:
		add.w	d1,y_vel(a0)
		jsr	(MoveSprite2).l
		move.w	y_vel(a0),d0
		tst.w	d2
		bne.s	loc_220D8A
		neg.w	d0

loc_220D8A:
		addi.w	#$80,d0
		cmpi.w	#$100,d0
		blo.s	loc_220D98
		move.w	#$100,d0

loc_220D98:
		lsr.w	#5,d0
		move.b	(a1,d0.w),d0
		addq.b	#1,d0
		move.b	d0,mapping_frame(a0)
		jsr	(SurfboardIntro_Load_PLC).l
		subq.w	#1,$2E(a0)
		bpl.s	locret_220DCA
		move.w	#5,$2E(a0)
		jsr	(AllocateObjectAfterCurrent).l
		bne.w	locret_220DCA
		move.l	#Obj_SurfboardWaves,(a1)
		move.w	a0,$30(a1)

locret_220DCA:
		rts
; ---------------------------------------------------------------------------
SurfboardIntro_DownFrames:
		dc.b    2,   1,   1,   0,   0,   0,   0,   1,   2,   2
SurfboardIntro_UpFrames:
		dc.b    3,   4,   4,   4,   5,   5,   5,   4,   3,   3
		even
; End of function SurfboardIntro_Move


; =============== S U B R O U T I N E =======================================


SurfboardIntro_Load_PLC:
		moveq	#0,d0
		move.b	mapping_frame(a0),d0
		cmp.b	(Player_prev_frame).w,d0
		beq.s	locret_220E32
		move.b	d0,(Player_prev_frame).w
		lea	(DPLC_SurfboardIntro).l,a2
		add.w	d0,d0
		adda.w	(a2,d0.w),a2
		move.w	(a2)+,d5
		subq.w	#1,d5
		bmi.s	locret_220E32
		move.w	#tiles_to_bytes(ArtTile_Player_1),d4

loc_220E06:
		moveq	#0,d1
		move.w	(a2)+,d1
		move.w	d1,d3
		lsr.w	#8,d3
		andi.w	#$F0,d3
		addi.w	#$10,d3
		andi.w	#$FFF,d1
		lsl.l	#5,d1
		addi.l	#ArtUnc_SurfboardIntro,d1
		move.w	d4,d2
		add.w	d3,d4
		add.w	d3,d4
		jsr	(Add_To_DMA_Queue).l
		dbf	d5,loc_220E06

locret_220E32:
		rts
; End of function SurfboardIntro_Load_PLC

; ---------------------------------------------------------------------------
Map_SurfboardIntro:
		include "General/Sprites/Surfboard/Map - Surfboard Intro.asm"
DPLC_SurfboardIntro:
		include "General/Sprites/Surfboard/DPLC - Surfboard Intro.asm"
; ---------------------------------------------------------------------------

Obj_SurfboardWaves:
		move.l	#Map_AIZIntroWaves,mappings(a0)
		move.w	#$100,priority(a0)
		move.b	#0,width_pixels(a0)
		move.b	#4,render_flags(a0)
		move.w	#make_art_tile(ArtTile_AIZIntroSprites,0,0),art_tile(a0)
		move.l	#Obj_SurfboardWaves_Main,(a0)
		move.w	#1,anim(a0)	; and prev_anim
		move.b	#0,mapping_frame(a0)
		move.b	#0,anim_frame(a0)
		bset	#0,status(a0)
		movea.w	$30(a0),a1
		move.w	x_pos(a1),x_pos(a0)
		move.w	y_pos(a1),y_pos(a0)
		addi.w	#-$28,x_pos(a0)
		addi.w	#$18,y_pos(a0)

Obj_SurfboardWaves_Main:
		lea	(Ani_SurfboardWaves).l,a1
		jsr	(Animate_SpriteIrregularDelay).l
		tst.b	routine(a0)
		beq.s	loc_220FE6
		move.w	#$7FFF,x_pos(a0)

loc_220FE6:
		jmp	(Sprite_OnScreen_Test).l
; ---------------------------------------------------------------------------
Ani_SurfboardWaves:
		include "General/Sprites/Surfboard/Anim - Surfboard Waves.asm"
; ---------------------------------------------------------------------------

Obj_SurfboardSplash:
		movea.l	a0,a1
		bsr.s	SurfboardSplash_Init
		jsr	(AllocateObjectAfterCurrent).l
		bne.w	loc_22102A
		bsr.s	SurfboardSplash2_Init
		move.l	#Obj_SurfboardSplash2_Main,(a1)
		move.w	#$80,priority(a1)
		move.w	#-$14,$32(a1)
		move.w	#$10,$34(a1)
		move.w	$30(a0),$30(a1)

loc_22102A:
		bra.s	Obj_SurfboardSplash_Main

; =============== S U B R O U T I N E =======================================


SurfboardSplash_Init:
		move.l	#Obj_SurfboardSplash_Main,(a1)
		move.w	#$180,priority(a1)
		move.w	#8,$32(a1)
		move.w	#$18,$34(a1)

SurfboardSplash2_Init:
		move.l	#Map_SurfboardSplash,mappings(a1)
		move.b	#$1C,width_pixels(a1)
		move.b	#4,render_flags(a1)
		move.w	#$529,art_tile(a1)
		move.w	#1,anim(a1)	; and prev_anim
		bset	#0,status(a1)
		rts
; End of function SurfboardSplash_Init

; ---------------------------------------------------------------------------

Obj_SurfboardSplash_Main:
		movea.w	$30(a0),a1
		lea	(SurfboardSplash_Offsets).l,a2
		bsr.w	SurfboardSplash_SetOffsets
		move.w	x_pos(a1),x_pos(a0)
		move.w	y_pos(a1),y_pos(a0)
		move.w	$32(a0),d0
		add.w	d0,x_pos(a0)
		move.w	$34(a0),d0
		add.w	d0,y_pos(a0)
		cmpi.b	#7,mapping_frame(a1)
		blo.s	loc_2210A4
		jmp	(Delete_Current_Sprite).l
; ---------------------------------------------------------------------------

loc_2210A4:
		cmpi.b	#5,mapping_frame(a1)
		blo.s	loc_2210BA
		tst.w	$36(a0)
		beq.s	locret_2210B8
		subq.w	#1,$36(a0)
		bra.s	loc_2210C0
; ---------------------------------------------------------------------------

locret_2210B8:
		rts
; ---------------------------------------------------------------------------

loc_2210BA:
		move.w	#3,$36(a0)

loc_2210C0:
		lea	(Ani_SurfboardSplash).l,a1
		jsr	(Animate_SpriteIrregularDelay).l
		jmp	(Sprite_OnScreen_Test).l
; ---------------------------------------------------------------------------
SurfboardSplash_Offsets:
		dc.b    0, $18
		dc.b    0, $11
		dc.b    0, $15
		dc.b   -8, $15
		dc.b   -8, $13
		dc.b   -8, $13
		dc.b   -8, $13
; ---------------------------------------------------------------------------

Obj_SurfboardSplash2_Main:
		movea.w	$30(a0),a1
		lea	(SurfboardSplash2_Offsets).l,a2
		bsr.s	SurfboardSplash_SetOffsets
		move.w	x_pos(a1),x_pos(a0)
		move.w	y_pos(a1),y_pos(a0)
		move.w	$32(a0),d0
		add.w	d0,x_pos(a0)
		move.w	$34(a0),d0
		add.w	d0,y_pos(a0)
		cmpi.b	#7,mapping_frame(a1)
		blo.s	loc_221116
		jmp	(Delete_Current_Sprite).l
; ---------------------------------------------------------------------------

loc_221116:
		cmpi.b	#5,mapping_frame(a1)
		bhs.s	loc_22112C
		tst.w	$36(a0)
		beq.s	locret_22112A
		subq.w	#1,$36(a0)
		bra.s	loc_221132
; ---------------------------------------------------------------------------

locret_22112A:
		rts
; ---------------------------------------------------------------------------

loc_22112C:
		move.w	#3,$36(a0)

loc_221132:
		lea	(Ani_SurfboardSplash).l,a1
		jsr	(Animate_SpriteIrregularDelay).l
		jmp	(Sprite_OnScreen_Test).l
; ---------------------------------------------------------------------------
SurfboardSplash2_Offsets:
		dc.b   -8, $12
		dc.b   -8, $12
		dc.b   -8, $12
		dc.b   -8, $12
		dc.b   -8, $12
		dc.b  -$F, $12
		dc.b -$13, $17

; =============== S U B R O U T I N E =======================================


SurfboardSplash_SetOffsets:
		moveq	#0,d0
		move.b	mapping_frame(a1),d0
		add.w	d0,d0
		move.b	(a2,d0.w),d1
		ext.w	d1
		moveq	#1,d2
		cmp.w	$32(a0),d1
		beq.s	loc_221170
		bgt.s	loc_22116C
		neg.w	d2

loc_22116C:
		add.w	d2,$32(a0)

loc_221170:
		move.b	1(a2,d0.w),d1
		ext.w	d1
		moveq	#1,d2
		cmp.w	$34(a0),d1
		beq.s	locret_221186
		bgt.s	loc_221182
		neg.w	d2

loc_221182:
		add.w	d2,$34(a0)

locret_221186:
		rts
; End of function SurfboardSplash_SetOffsets

; ---------------------------------------------------------------------------
Ani_SurfboardSplash:
		include "General/Sprites/Surfboard/Anim - Surfboard Splash.asm"
Map_SurfboardSplash:
		include "General/Sprites/Surfboard/Map - Surfboard Splash.asm"
; ---------------------------------------------------------------------------

Obj_Surfboard:
		move.l	#Map_Surfboard,mappings(a0)
		move.w	#$80,priority(a0)
		move.b	#$20,width_pixels(a0)
		move.b	#4,render_flags(a0)
		move.w	#make_art_tile(ArtTile_Surfboard,0,0),art_tile(a0)
		move.l	#Obj_Surfboard_Main,(a0)
		move.w	#1,anim(a0)
		move.w	#$800,x_vel(a0)
		move.w	#-$300,y_vel(a0)

Obj_Surfboard_Main:
		cmpi.b	#3,anim_frame(a0)
		blo.s	loc_2212FE
		tst.w	x_vel(a0)
		beq.s	loc_2212FE
		subi.w	#$10,x_vel(a0)

loc_2212FE:
		jsr	(MoveSprite2).l
		addi.w	#$20,y_vel(a0)
		lea	(Ani_Surfboard).l,a1
		jsr	(Animate_SpriteIrregularDelay).l
		move.b	#0,status(a0)
		move.b	anim_frame(a0),d0
		andi.b	#7,d0
		cmpi.b	#4,d0
		blo.s	loc_221330
		move.b	#3,status(a0)

loc_221330:
		tst.b	routine(a0)
		beq.s	loc_22133C
		move.w	#$7FFF,x_pos(a0)

loc_22133C:
		jmp	(Sprite_OnScreen_Test).l
; ---------------------------------------------------------------------------
Ani_Surfboard:
		include "General/Sprites/Surfboard/Anim - Surfboard.asm"
Map_Surfboard:
		include "General/Sprites/Surfboard/Map - Surfboard.asm"
ArtNem_Surfboard:
		binclude "General/Sprites/Surfboard/Surfboard.bin"
		even
ArtNem_SurfboardSplash:
		binclude "General/Sprites/Surfboard/Surfboard Splash.bin"
		even
ArtUnc_SurfboardIntro:
		binclude "General/Sprites/Surfboard/Surfboard Intro.bin"
; ---------------------------------------------------------------------------

Obj_EncoreCapsule:
		move.l	#Obj_EncoreCapsule_Main,(a0)
		move.l	#Map_EncoreCapsule,mappings(a0)
		move.w	#make_art_tile(ArtTile_SpikesSprings,0,1),art_tile(a0)
		move.w	#$200,priority(a0)
		move.b	#$20,width_pixels(a0)
		move.b	#$20,height_pixels(a0)
		move.b	#4,render_flags(a0)
		move.b	subtype(a0),d0
		cmp.b	(P1_character).w,d0
		beq.s	.failsafe
		cmp.b	(P2_character).w,d0
		bne.s	.done

	.failsafe:
		move.b	#8,subtype(a0)

	.done:
		lea	ChildObjDat_EncoreCapsule(pc),a2
		jsr	(CreateChild1_Normal).l
		move.w	a1,parent3(a0)
		move.l	#ArtUnc_EncoreCapsule,d1
		move.w	#tiles_to_bytes(ArtTile_SpikesSprings),d2
		move.w	#$340,d3
		jsr	(Add_To_DMA_Queue).l

Obj_EncoreCapsule_Main:
		btst	#1,$38(a0)
		beq.s	EncoreCapsule_DrawTouch
		move.l	#Obj_EncoreCapsule_Wait,(a0)
		lea	(Child6_CreateBossExplosion).l,a2
		jsr	(CreateChild1_Normal).l
		move.b	#8,subtype(a1)
		move.w	#30,$2E(a0)

Obj_EncoreCapsule_Wait:
		subq.w	#1,$2E(a0)
		bne.s	EncoreCapsule_DrawTouch
		jsr	(Go_Delete_Sprite).l
		st	(Ctrl_2_locked).w
		clr.w	(Ctrl_2_logical).w
		lea	(Player_1).w,a1
		moveq	#p1_standing_bit,d1
		bsr.s	EncoreCapsule_DisplacePlayerOffObject
		lea	(Player_2).w,a1
		moveq	#p2_standing_bit,d1
		bsr.s	EncoreCapsule_DisplacePlayerOffObject2
		jsr	(Pal_FadeFromWhite_EncoreBonus).l
		moveq	#signextendB(sfx_MissileExplode),d0
		jmp	(Play_SFX).l
; ---------------------------------------------------------------------------

EncoreCapsule_DrawTouch:
		moveq	#$2B,d1
		moveq	#$18,d2
		moveq	#$18,d3
		move.w	x_pos(a0),d4
		jsr	(SolidObjectFull).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

EncoreCapsule_DisplacePlayerOffObject2:
		move.b	subtype(a0),d0
		cmpi.b	#7,d0
		bls.s	EncoreCapsule_GiveStock
		bsr.s	EncoreCapsule_DisplacePlayerOffObject
		lea	ChildObjDat_EncoreCapsule2(pc),a2
		jmp	(CreateChild1_Normal).l
; ---------------------------------------------------------------------------

EncoreCapsule_DisplacePlayerOffObject:
		btst	d1,status(a0)
		bne.s	EncoreCapsule_HurtCharacter
		movea.w	parent3(a0),a2
		btst	d1,status(a2)
		bne.s	EncoreCapsule_HurtCharacter
		rts
; ---------------------------------------------------------------------------

EncoreCapsule_GiveStock:
	if EncoreSkip2PZones
		bsr.w	EncoreCapsule_UnlockCharacters
	else
		bset	d0,(Encore_unlocked_chars).w
	endif
		bclr	d0,(Encore_available_chars).w
		move.b	d0,(P2_character).w
		move.b	#1,(Update_HUD_life_count).w
		move.w	#1,(Encore_HUD_stocks_timer).w
		tst.l	(a1)
		bne.s	EncoreCapsule_RotateStocks
		move.b	#1,(Encore_stocks).w
		move.l	#Obj_EncoreHandoff_Wait,(a0)
		move.l	#Obj_DashDust,(Dust_P2).w
		bsr.s	EncoreCapsule_SpawnPlayer
		bset	#Status_Facing,status(a1)
		move.w	(Player_1+x_pos).w,d0
		cmp.w	x_pos(a1),d0
		blo.s	EncoreCapsule_HurtCharacter
		bclr	#Status_Facing,status(a1)
		subq.w	#1,x_pos(a1)

EncoreCapsule_HurtCharacter:
		bset	#7,status_tertiary(a1)
		jsr	(HurtCharacter_Directly).l
		bclr	#Status_OnObj,status(a1)
		bclr	#7,status_tertiary(a1)
		rts
; ---------------------------------------------------------------------------

EncoreCapsule_RotateStocks:
		bsr.s	EncoreCapsule_DisplacePlayerOffObject
		lea	(Encore_stocks).w,a1
		move.b	(a1),d2
		addq.b	#1,(a1)+
		subq.b	#2,d2
		bmi.s	.append
		ext.w	d2
		move.b	subtype(a0),d0
		movea.l	a1,a2

	.loop:
		move.b	(a2)+,d1
		move.b	d1,(a1)+
		cmp.b	d1,d0
		bne.s	.remove
		subq.b	#1,(Encore_stocks).w
		subq.w	#1,a1

	.remove:
		dbf	d2,.loop

	.append:
		move.b	(Player_2+character_id).w,(a1)
		move.l	#Obj_EncoreHandoff_Hurt,(a0)
		bclr	#Encore_SwapHUD,(Encore_mode).w
		jmp	(Encore_RepackStocks).l
; ---------------------------------------------------------------------------

EncoreCapsule_SpawnPlayer:
		ext.w	d0
		lsl.w	#2,d0
		lea	(Player_ObjectPtrs).l,a3
		movea.l	(a3,d0.w),a3
		move.l	a3,(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.l	a0,-(sp)
		movea.l	a1,a0
		jsr	(a3)
		jsr	(a3)
		movea.l	a0,a1
		movea.l	(sp)+,a0
		rts
; ---------------------------------------------------------------------------

EncoreCapsule_UnlockCharacters:
		moveq	#%0111111,d0
		btst	#Unlock_MetalSonic,(Unlock_flags).w
		beq.s	.updateFlags
		moveq	#%1111111,d0

	.updateFlags:
		move.b	d0,(Encore_unlocked_chars).w
		move.b	d0,(Encore_available_chars).w
		move.b	(P1_character).w,d0
		bclr	d0,(Encore_available_chars).w
		move.b	(P2_character).w,d0
		bclr	d0,(Encore_available_chars).w
		move.w	(Encore_stocks_packed).w,d0
		jsr	(Encore_UnpackStocks).l
		lea	(Player_2).w,a1
		moveq	#p2_standing_bit,d1
		moveq	#0,d0
		move.b	subtype(a0),d0
		rts
; ---------------------------------------------------------------------------

Obj_EncoreCapsuleButton:
		move.l	#Obj_EncoreCapsuleButton_Main,(a0)
		move.w	#$200,priority(a0)
		move.b	#$10,width_pixels(a0)
		move.b	#$C,height_pixels(a0)
		move.b	#4,render_flags(a0)
		move.b	#1,mapping_frame(a0)

Obj_EncoreCapsuleButton_Main:
		move.b	status(a0),d0
		andi.b	#standing_mask,d0
		beq.s	Obj_EncoreCapsuleButton_Pressed
		move.l	#Obj_EncoreCapsuleButton_MoveCamera,(a0)
		addq.b	#1,mapping_frame(a0)
		movea.w	parent3(a0),a1
		bset	#1,$38(a1)

Obj_EncoreCapsuleButton_MoveCamera:
		move.w	(Camera_X_pos).w,(Camera_min_X_pos).w
		move.w	x_pos(a0),d0
		subi.w	#$A0,d0
		cmp.w	(Camera_X_pos).w,d0
		bls.s	.done
		addq.w	#1,(Camera_X_pos).w
		addq.w	#1,(Camera_min_X_pos).w
		cmp.w	(Camera_min_X_pos).w,d0
		bne.s	Obj_EncoreCapsuleButton_Pressed

	.done:
		move.l	#Obj_EncoreCapsuleButton_Pressed,(a0)

Obj_EncoreCapsuleButton_Pressed:
		jsr	(sub_86A3E).l
		jmp	(Child_Draw_Sprite).l
; ---------------------------------------------------------------------------

Obj_EncoreCapsuleAnimal:
		and.b	#$FC,subtype(a0)
		lsr.w	#1,subtype(a0)
		jmp	(loc_89CE2).l
; ---------------------------------------------------------------------------

Obj_EncoreCapsuleAnimal_Animate:
		move.b	#3,mapping_frame(a0)
		btst	#5,(Level_frame_counter+1).w
		beq.s	.done
		addq.b	#1,mapping_frame(a0)

	.done:
		jmp	(Child_Draw_Sprite).l
; ---------------------------------------------------------------------------
ChildObjDat_EncoreCapsule:
		dc.w 2-1
		dc.l Obj_EncoreHandoff
		dc.b    0,   6
		dc.l Obj_EncoreCapsuleButton
		dc.b    0,-$24
ChildObjDat_EncoreCapsule2:
		dc.w 6-1
		dc.l Obj_EncoreCapsuleAnimal
		dc.b    2,   8
		dc.l Obj_EncoreCapsuleAnimal
		dc.b   -2,   8
		dc.l Obj_EncoreCapsuleAnimal
		dc.b  $1C,   8
		dc.l Obj_EncoreCapsuleAnimal
		dc.b -$1C,   8
		dc.l Obj_EncoreCapsuleAnimal
		dc.b  $18,   8
		dc.l Obj_EncoreCapsuleAnimal
		dc.b -$18,   8
Map_EncoreCapsule:
		include "General/Sprites/Egg Capsule/Map - Encore Capsule.asm"
; ---------------------------------------------------------------------------

Obj_EncoreHandoff:
		move.l	#Obj_EncoreCapsuleAnimal_Animate,(a0)
		move.w	#$200,priority(a0)
		move.b	#$18,width_pixels(a0)
		move.b	#$18,height_pixels(a0)
		move.b	#4,render_flags(a0)
		movea.w	parent3(a0),a1
		move.b	subtype(a1),d0
		cmpi.b	#7,d0
		bhi.w	Obj_EncoreCapsuleAnimal_Animate
		move.l	#Obj_EncoreHandoff_Animate,(a0)
		move.w	#make_art_tile(ArtTile_BossExplosion,0,1),art_tile(a0)
		bsr.s	EncoreHandoff_LoadMappings
		move.b	#$18,anim(a0)
		bsr.s	EncoreHandoff_LoadPLC

Obj_EncoreHandoff_Animate:
		bclr	#Status_Facing,render_flags(a0)
		btst	#5,(Level_frame_counter+1).w
		beq.s	.done
		bset	#Status_Facing,render_flags(a0)

	.done:
		jmp	(Child_Draw_Sprite).l
; ---------------------------------------------------------------------------

Obj_EncoreHandoff_Wait:
		tst.b	(Player_2+invulnerability_timer).w
		bne.s	EncoreHandoff_Return
		clr.b	(Ctrl_2_locked).w

EncoreHandoff_Delete:
		jmp	(Delete_Current_Sprite).l
; ---------------------------------------------------------------------------

EncoreHandoff_LoadMappings:
		move.b	d0,character_id(a0)
		ext.w	d0
		lsl.w	#2,d0
		lea	(Player_MappingPtrs).l,a1
		move.l	(a1,d0.w),mappings(a0)
		rts
; ---------------------------------------------------------------------------

EncoreHandoff_LoadPLC:
		moveq	#0,d0
		move.b	(Player_prev_frame_P2).w,d0
		move.b	objoff_35(a0),(Player_prev_frame_P2).w
		move.w	d0,-(sp)
		jsr	(Animate_Player).l
		move.w	(sp)+,d0
		move.b	(Player_prev_frame_P2).w,objoff_35(a0)
		move.b	d0,(Player_prev_frame_P2).w

EncoreHandoff_Return:
		rts
; ---------------------------------------------------------------------------

Obj_EncoreHandoff_Hurt:
		move.l	#Obj_EncoreHandoff_Fall,(a0)
		move.b	subtype(a0),d0
		bsr.s	EncoreHandoff_LoadMappings
		andi.w	#drawing_mask,art_tile(a0)
		move.w	#-$400,y_vel(a0)
		move.w	#-$200,x_vel(a0)
		move.b	#120,invulnerability_timer(a0)
		move.b	#$18,width_pixels(a0)
		move.b	#$18,height_pixels(a0)
		move.b	#$13,y_radius(a0)
		cmpi.w	#3<<2,d0
		beq.s	.setTailsHeight
		cmpi.w	#1<<2,d0
		bne.s	.done
		move.l	#Obj_Tails_Tail,(Tails_tails).w
		move.w	a0,(Tails_tails+$30).w

	.setTailsHeight:
		move.b	#$F,y_radius(a0)

	.done:
		move.b	#$1A,anim(a0)
		bsr.s	EncoreHandoff_LoadPLC
		bclr	#Status_Facing,render_flags(a0)
		move.w	(Player_1+x_pos).w,d0
		cmp.w	x_pos(a0),d0
		bhs.w	EncoreHandoff_Draw
		bset	#Status_Facing,render_flags(a0)
		bset	#Status_Facing,status(a0)
		neg.w	x_vel(a0)
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

Obj_EncoreHandoff_Fall:
		jsr	(MoveSprite2).l
		addi.w	#$30,y_vel(a0)
		jsr	(ObjCheckFloorDist).l
		tst.w	d1
		bpl.w	EncoreHandoff_Draw
		add.w	d1,y_pos(a0)
		clr.l	x_vel(a0)
		clr.w	anim(a0)
		bsr.w	EncoreHandoff_LoadPLC
		move.b	#5,anim(a0)
		move.l	#Obj_EncoreHandoff_Flicker,(a0)
		cmpi.b	#1,character_id(a0)
		bne.w	EncoreHandoff_Draw
		move.l	#Obj_Tails_Tail_NoDraw,(Tails_tails).w
		move.l	#Obj_EncoreHandoff_Tails,(a0)

EncoreHandoff_Draw:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

Obj_EncoreHandoff_Flicker:
		tst.b	invulnerability_timer(a0)
		bne.s	.done
		move.l	#Obj_EncoreHandoff_SwapPlayers,(a0)
		addq.b	#4,invulnerability_timer(a0)

	.done:
		bsr.w	EncoreHandoff_LoadPLC
		move.b	invulnerability_timer(a0),d0
		subq.b	#1,invulnerability_timer(a0)
		lsr.b	#3,d0
		blo.w	EncoreHandoff_Draw
		rts
; ---------------------------------------------------------------------------

Obj_EncoreHandoff_Tails:
		tst.b	invulnerability_timer(a0)
		bne.s	.done
		move.l	#Obj_EncoreHandoff_SwapPlayers,(a0)
		addq.b	#4,invulnerability_timer(a0)

	.done:
		bsr.w	EncoreHandoff_LoadPLC
		move.b	invulnerability_timer(a0),d0
		subq.b	#1,invulnerability_timer(a0)
		lsr.b	#3,d0
		bhs.s	.return
		jsr	(Draw_Sprite).l
		move.l	a0,-(sp)
		lea	(Tails_tails).w,a0
		jsr	(Draw_Sprite).l
		movea.l	(sp)+,a0

	.return:
		rts
; ---------------------------------------------------------------------------

Obj_EncoreHandoff_SwapPlayers:
		lea	(Dust_P2),a1
		jsr	(Delete_Referenced_Sprite).l
		move.l	#Obj_DashDust,(Dust_P2)
		move.l	#Obj_EncoreHandoff_WalkOffScreen,(a0)
		lea	(Player_2).w,a1
		move.w	x_pos(a1),objoff_30(a0)
		move.w	y_pos(a1),objoff_32(a0)
		move.b	y_radius(a1),objoff_36(a0)
		move.b	character_id(a1),objoff_37(a0)
		move.b	invulnerability_timer(a1),invulnerability_timer(a0)
		jsr	(Delete_Referenced_Sprite).l
		clr.w	(Tails_CPU_idle_timer).w
		clr.b	(Player_prev_frame_P2).w
		clr.b	(Ctrl_2_locked).w
		lea	(Player_2).w,a1
		move.b	character_id(a0),d0
		bsr.w	EncoreCapsule_SpawnPlayer
		move.w	objoff_30(a0),x_pos(a0)
		move.w	objoff_32(a0),y_pos(a0)
		move.b	objoff_36(a0),d0
		move.b	d0,y_radius(a0)
		sub.b	y_radius(a1),d0
		ext.w	d0
		sub.w	d0,y_pos(a0)
		move.b	objoff_37(a0),d0
		bsr.w	EncoreHandoff_LoadMappings
		bset	#Status_Facing,status(a0)
		clr.b	flip_angle(a0)
		clr.b	anim(a0)

Obj_EncoreHandoff_WalkOffScreen:
		tst.b	render_flags(a0)
		bpl.w	EncoreHandoff_Delete
		subi.w	#$C,ground_vel(a0)
		subi.w	#$C,x_vel(a0)
		jsr	(MoveSprite2).l
		jsr	(ObjCheckFloorDist).l
		add.w	d1,y_pos(a0)
		bsr.w	EncoreHandoff_LoadPLC
		move.b	invulnerability_timer(a0),d0
		beq.w	EncoreHandoff_Draw
		subq.b	#1,invulnerability_timer(a0)
		lsr.b	#3,d0
		blo.w	EncoreHandoff_Draw
		rts
; ---------------------------------------------------------------------------

Obj_HPZKnucklesCutscene_EggMobile:
		btst	#2,$38(a0)
		beq.w	HPZKnucklesCutscene_Return
		move.l	#Move_WaitNoFall,(a0)
		move.l	#HPZKnucklesCutscene_ReleasePlayer,$34(a0)
		move.w	#$43,$2E(a0)
		move.w	#-$80,y_vel(a0)
		jsr	(AllocateObject).l
		bne.s	.done
		move.l	#Obj_HPZKnucklesCutsceneCameraLock,(a1)
		move.w	#$AA0,x_pos(a1)
		move.w	#$1580,(Camera_max_X_pos).w
		clr.w	(Camera_min_Y_pos).w
		st	(Screen_shake_flag).w
		moveq	#20,d1

	.loop:
		jsr	(CreateNewSprite4).l
		bne.s	.done
		move.l	#Obj_HPZKnucklesCutsceneDebris_Init,(a1)
		move.l	#Obj_HPZKnucklesCutsceneDebris_Respawn,$34(a1)
		move.l	#Map_HPZKnucklesCutsceneDebris,mappings(a1)
		move.b	#4,render_flags(a1)
		move.b	#8,width_pixels(a1)
		move.b	#8,height_pixels(a1)
		move.w	d1,d0
		lsl.w	#4,d0
		subq.w	#8,d0
		addi.w	#$1300,d0
		move.w	d0,x_pos(a1)
		dbf	d1,.loop

	.done:
		jmp	(MoveSprite2).l
; ---------------------------------------------------------------------------

HPZKnucklesCutscene_ReleasePlayer:
		move.l	#HPZKnucklesCutscene_Return,(a0)
		move.b	#1,(Update_HUD_timer).w
		move.w	#$1580,d1
		move.w	d1,(Camera_X_pos).w
		move.w	d1,(Camera_min_X_pos).w
		move.w	#$380,d1
		move.w	d1,(Camera_stored_max_Y_pos).w
		move.w	d1,(Camera_target_max_Y_pos).w
		clr.w	x_pos(a0)
		jsr	(AllocateObject).l
		bne.s	.done
		move.l	#Obj_IncLevEndYGradual,(a1)
		jsr	(CreateNewSprite4).l
		bne.s	.done
		move.l	#Obj_DecLevStartXGradual,(a1)
		move.w	#$AA0,(Camera_stored_min_X_pos).w

	.done:
		clr.b	(Scroll_lock).w
		clr.b	(Ctrl_1_locked).w
		tst.b	(Player_1+object_control).w
		beq.w	HPZKnucklesCutscene_Return
		jmp	(Restore_PlayerControl).l
; ---------------------------------------------------------------------------

Obj_HPZKnucklesCutsceneCameraLock:
		tst.b	(Player_1+object_control).w
		bne.s	.rumble
		move.w	(Camera_X_pos).w,d0
		cmp.w	(Camera_min_X_pos).w,d0
		beq.s	.checkRumble
		move.l	#.scroll,(a0)
		subi.w	#8,d0
		move.w	d0,(Camera_X_pos).w
		bra.s	.checkRumble
; ---------------------------------------------------------------------------

	.scroll:
		move.w	(Player_1+x_pos).w,d0
		subi.w	#$A0,d0
		cmp.w	x_pos(a0),d0
		blo.s	.apply
		cmp.w	(Camera_max_X_pos).w,d0
		bhi.s	.checkRumble
		move.w	d0,(Camera_X_pos).w
		bra.s	.checkRumble
; ---------------------------------------------------------------------------

	.apply:
		move.w	x_pos(a0),(Camera_X_pos).w
		move.w	x_pos(a0),(Camera_max_X_pos).w
		move.l	#.checkRumble,(a0)

	.checkRumble:
		tst.b	(Player_1+object_control).w
		bne.s	HPZKnucklesCutscene_Return

	.rumble:
		move.b	(V_int_run_count+3).w,d0
		andi.b	#$F,d0
		bne.s	HPZKnucklesCutscene_Return
		moveq	#signextendB(sfx_Rumble2),d0
		jmp	(Play_SFX).l
; ---------------------------------------------------------------------------

Obj_HPZKnucklesCutsceneDebris_Init:
		clr.w	y_vel(a0)
		jsr	(Random_Number).l
		andi.w	#$3F,d0
		move.w	d0,$2E(a0)
		andi.b	#7,d0
		move.b	d0,mapping_frame(a0)
		move.l	#Obj_Wait,(a0)

HPZKnucklesCutscene_HideSprite:
		andi.b	#$7F,render_flags(a0)

HPZKnucklesCutscene_Return:
		rts
; ---------------------------------------------------------------------------

Obj_HPZKnucklesCutsceneDebris_Respawn:
		move.w	(Camera_Y_pos).w,d0
		subi.w	#$10,d0
		move.w	d0,y_pos(a0)
		move.l	#Obj_HPZKnucklesCutsceneDebris_Main,(a0)

Obj_HPZKnucklesCutsceneDebris_Main:
		jsr	(MoveSprite_LightGravity).l
		cmpi.w	#$448,y_pos(a0)
		bhs.s	Obj_HPZKnucklesCutsceneDebris_Init
		move.w	(Camera_X_pos).w,d0
		subq.w	#8,d0
		cmp.w	x_pos(a0),d0
		blo.s	.checkRight
		addi.w	#336,x_pos(a0)
		bra.s	.checkdraw
; ---------------------------------------------------------------------------

	.checkRight:
		addi.w	#336,d0
		cmp.w	x_pos(a0),d0
		bhs.s	.checkdraw
		subi.w	#336,x_pos(a0)

	.checkdraw:
		cmpi.w	#$D60,x_pos(a0)
		blo.s	HPZKnucklesCutscene_HideSprite
		cmpi.w	#$1420,x_pos(a0)
		bhi.s	HPZKnucklesCutscene_HideSprite
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------
Map_HPZKnucklesCutsceneDebris:
		include "Levels/HPZ/Misc Object Data/Map - Knuckles Cutscene Debris.asm"
; ---------------------------------------------------------------------------

Obj_HPZEncoreCutscene:
		tst.b	(End_of_level_flag).w
		beq.w	HPZEncoreCutscene_Return
		move.l	#Obj_HPZEncoreCutscene_WaitForPlayer,(a0)
		jsr	(Restore_PlayerControl).l
		lea	(Player_2).w,a1
		jsr	(Restore_PlayerControl2).l
		jsr	(AllocateObject).l
		bne.s	.done
		move.l	#Obj_HPZEncoreRobotnik,(a1)
		move.w	a1,parent3(a0)
		jsr	(CreateNewSprite4).l
		bne.s	.done
		move.l	#Obj_IncLevEndXGradual,(a1)
		move.w	#$1600,(Camera_stored_max_X_pos).w
		jsr	(CreateNewSprite4).l
		bne.s	.done
		move.l	#Obj_DecLevStartYGradual,(a1)
		move.w	#$300,(Camera_stored_min_Y_pos).w

	.done:
		lea	(Pal_HPZ).l,a1
		lea	(Normal_palette_line_2).w,a2
		moveq	#bytesToLcnt($20),d0
		btst	#EncoreFlags_Palette,(Encore_flags).w
		beq.s	.loop
		lea	(Pal_HPZIntro).l,a1

	.loop:
		move.l	(a1),Water_palette-Normal_palette(a2)
		move.l	(a1)+,(a2)+
		dbf	d0,.loop
		lea	(ArtKosM_HPZEncoreRobotnik).l,a1
		move.w	#tiles_to_bytes(ArtTile_HPZEncoreRobotnik),d2
		jsr	(Queue_Kos_Module).l
		lea	(ArtKosM_HPZTeleporter).l,a1
		move.w	#tiles_to_bytes(ArtTile_HPZEncoreTeleporter),d2
		jsr	(Queue_Kos_Module).l
		moveq	#$47,d0
		jmp	(Load_PLC).l
; ---------------------------------------------------------------------------

Obj_HPZEncoreCutscene_WaitForPlayer:
		move.w	#$14B0,d0
		cmp.w	(Camera_X_pos).w,d0
		bhi.w	HPZEncoreCutscene_Return
		move.l	#Obj_HPZEncoreCutscene_SetPlayerPriority,(a0)
		move.w	d0,(Camera_min_X_pos).w
		move.w	#$300,(Camera_target_max_Y_pos).w
		lea	(Debug_saved_art_tile).w,a1
		tst.w	(Debug_placement_mode).w
		bgt.s	.setPriority
		lea	(Player_1+art_tile).w,a1

	.setPriority:
		andi.w	#drawing_mask,(a1)
		lea	(ArtKosM_LBZFinalBoss2).l,a1
		move.w	#tiles_to_bytes(ArtTile_SpikesSprings),d2
		jsr	(Queue_Kos_Module).l
		jsr	(AllocateObject).l
		bne.s	Obj_HPZEncoreCutscene_SetPlayerPriority
		move.l	#Obj_HPZEncoreTeleporter,(a1)
		move.w	a0,parent3(a1)

Obj_HPZEncoreCutscene_SetPlayerPriority:
		move.w	(Camera_max_X_pos).w,d0
		cmp.w	(Camera_X_pos).w,d0
		bhi.w	HPZEncoreCutscene_Return
		move.w	d0,(Camera_min_X_pos).w
		move.l	#Obj_HPZEncoreCutscene_SetEmeraldPriority,(a0)
		move.w	#$380,d1
		move.w	d1,(Player_1+priority).w
		move.w	d1,(Player_2+priority).w
		move.b	#1,(Boss_flag).w
		jmp	(Make_CutsceneSkipObj).l
; ---------------------------------------------------------------------------

Obj_HPZEncoreCutscene_SetEmeraldPriority:
		move.l	#Obj_HPZEncoreCutscene_WaitForQuake,(a0)
		lea	(Dynamic_object_RAM-next_object).w,a1
		move.w	#$380,d1
		moveq	#7-1,d0

	.loop:
		lea	next_object(a1),a1
		cmp.l	#Obj_HPZSuperEmerald_Encore,(a1)
		beq.s	.setPriority
		cmp.l	#Obj_HPZSuperEmerald_EncoreShattered,(a1)
		bne.s	.loop

	.setPriority:
		addi.w	#$280,priority(a1)
		cmp.w	priority(a1),d1
		bhi.s	.done
		move.w	d1,priority(a1)

	.done:
		dbf	d0,.loop
		movea.w	(_unkFABA).w,a1
		move.w	d1,priority(a1)
		rts
; ---------------------------------------------------------------------------

Obj_HPZEncoreCutscene_WaitForQuake:
		tst.w	(Screen_shake_flag).w
		bne.w	HPZEncoreCutscene_Return
		move.l	#Obj_HPZEncoreCutscene_ResetPlayerPriority,(a0)
		moveq	#signextendB(mus_MinibossK),d0
		jmp	(Play_Music).l
; ---------------------------------------------------------------------------

Obj_HPZEncoreCutscene_ResetPlayerPriority:
		movea.w	parent3(a0),a1
		btst	#0,status(a1)
		beq.w	HPZEncoreCutscene_Return
		move.l	#Obj_HPZEncoreCutscene_ResetEmeraldPriority,(a0)
		move.w	#$100,d1
		move.w	d1,(Player_1+priority).w
		move.w	d1,(Player_2+priority).w
		rts
; ---------------------------------------------------------------------------

Obj_HPZEncoreCutscene_ResetEmeraldPriority:
		move.l	#Obj_HPZEncoreCutscene_WaitForRobotnik,(a0)
		lea	(Dynamic_object_RAM-next_object).w,a1
		move.w	#$100,d1
		moveq	#7-1,d0

	.loop:
		lea	next_object(a1),a1
		cmp.l	#Obj_HPZSuperEmerald_Encore,(a1)
		beq.s	.setPriority
		cmp.l	#Obj_HPZSuperEmerald_EncoreShattered,(a1)
		bne.s	.loop

	.setPriority:
		subi.w	#$280,priority(a1)
		cmp.w	priority(a1),d1
		bhi.s	.done
		move.w	#$200,priority(a1)

	.done:
		dbf	d0,.loop
		movea.w	(_unkFABA).w,a1
		move.w	#$180,priority(a1)
		rts
; ---------------------------------------------------------------------------

Obj_HPZEncoreCutscene_WaitForRobotnik:
		movea.w	parent3(a0),a1
		btst	#1,status(a1)
		beq.w	HPZEncoreCutscene_Return
		move.l	#Obj_HPZEncoreCutscene_MoveCamera,(a0)
		move.l	#CopyPal_HPZEncoreCutscene,(Water_palette_data_addr).w
		move.w	#$4EF9,(H_int_jump).w
		move.l	#HInt3,(H_int_addr).w
		move.b	#$68,(H_int_counter).w
		move.w	#VDP_Option0|VDPReg0_EnableHInt,(VDP_control_port).l
		cmpi.w	#$1000,(V_blank_cycles).w
		blo.s	Obj_HPZEncoreCutscene_MoveCamera
		move.l	#HInt4,(H_int_addr).w

Obj_HPZEncoreCutscene_MoveCamera:
		move.w	(Camera_X_pos).w,d0
		cmpi.w	#$15A2,d0
		bhs.s	.moveX
		move.l	#Obj_HPZEncoreCutscene_WaitForFlyAway,(a0)
		st	(Deform_lock).w

	.moveX:
		subq.w	#1,d0
		move.w	d0,(Camera_X_pos).w
		move.w	d0,(Camera_min_X_pos).w
		move.w	d0,(Camera_max_X_pos).w
		addi.w	#$130,d0
		cmp.w	(Player_1+x_pos).w,d0
		bhs.s	.moveY
		move.w	d0,(Player_1+x_pos).w

	.moveY:
		subq.w	#1,$2E(a0)
		bpl.s	HPZEncoreCutscene_Return
		move.w	#6-1,$2E(a0)
		move.w	(Camera_Y_pos).w,d0
		subq.w	#1,d0

HPZEncoreCutscene_ApplyCamera:
		move.w	d0,(Camera_Y_pos).w
		move.w	d0,(Camera_min_Y_pos).w
		move.w	d0,(Camera_max_Y_pos).w
		move.w	d0,(Camera_target_max_Y_pos).w

HPZEncoreCutscene_Return:
		rts
; ---------------------------------------------------------------------------

Obj_HPZEncoreCutscene_WaitForFlyAway:
		movea.w	parent3(a0),a1
		btst	#4,status(a1)
		beq.s	HPZEncoreCutscene_Return
		move.w	#$15A0,x_pos(a0)
		move.w	#$3E0,y_pos(a0)
		move.b	#$83,subtype(a0)
		jsr	(Obj_SpriteMask).l
		move.l	#Obj_HPZEncoreCutscene_WaitForCamera,(a0)
		move.w	#$60-1,$2E(a0)
		bset	#7,status(a0)

Obj_HPZEncoreCutscene_WaitForCamera:
		btst	#0,$2F(a0)
		bne.s	.skip
		move.w	(Camera_Y_pos).w,d0
		addq.w	#1,d0
		bsr.s	HPZEncoreCutscene_ApplyCamera

	.skip:
		subq.w	#1,$2E(a0)
		bpl.s	Obj_HPZEncoreCutscene_DisableSpriteCollision
		move.l	#Obj_HPZEncoreCutscene_DisableSpriteCollision,(a0)

Obj_HPZEncoreCutscene_DisableSpriteCollision:
		lea	y_vel(a0),a1
		move.w	(Player_1+y_vel).w,(a1)+
		move.w	(Player_2+y_vel).w,(a1)+
		st	(Player_1+y_vel).w
		st	(Player_2+y_vel).w
		st	(Spritemask_flag).w
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

Obj_HPZEncoreCutscene_StartNewLevel:
		subq.w	#1,$2E(a0)
		bpl.s	HPZEncoreCutscene_Return
		jmp	(SSZ1_StartNewLevel).l
; ---------------------------------------------------------------------------

Obj_HPZEncoreRobotnik:
		move.l	#Obj_HPZEncoreRobotnik_WaitForCamera,(a0)
		lea	ObjDat_HPZEncoreRobotnik(pc),a1
		jsr	(SetUp_ObjAttributes).l
		lea	ChildObjDat_HPZEncoreRobotnik(pc),a2
		jmp	(CreateChild1_Normal).l
; ---------------------------------------------------------------------------

Obj_HPZEncoreRobotnik_WaitForCamera:
		tst.b	(Boss_flag).w
		beq.w	HPZEncoreCutscene_Return
		move.l	#Obj_HPZEncoreRobotnik_Quake,(a0)
		move.w	(Camera_X_pos).w,d0
		addi.w	#$A0,d0
		move.w	d0,x_pos(a0)
		move.w	(Camera_Y_pos).w,d0
		addi.w	#$120,d0
		move.w	d0,y_pos(a0)
		lea	(Pal_LBZFinalBoss2).l,a1
		jsr	(PalLoad_Line1).l
		st	(Screen_shake_flag).w
		move.w	#75-1,$2E(a0)

Obj_HPZEncoreRobotnik_Quake:
		subq.w	#1,$2E(a0)
		bmi.s	.done
		move.w	$2E(a0),d0
		andi.b	#$F,d0
		bne.w	HPZEncoreCutscene_Return
		moveq	#signextendB(sfx_Rumble2),d0
		jmp	(Play_SFX).l
; ---------------------------------------------------------------------------

	.done:
		move.l	#Obj_HPZEncoreRobotnik_Jump,(a0)
		moveq	#signextendB(sfx_Collapse),d0
		jsr	(Play_SFX).l
		clr.w	(Screen_shake_flag).w
		move.w	#-$B00,y_vel(a0)

Obj_HPZEncoreRobotnik_Jump:
		jsr	(MoveSprite).l
		tst.w	y_vel(a0)
		bmi.w	HPZEncoreRobotnik_Draw
		bset	#0,status(a0)
		move.w	#$31E,d0
		cmp.w	y_pos(a0),d0
		bhs.w	HPZEncoreRobotnik_Draw
		move.w	d0,y_pos(a0)
		move.l	#Obj_HPZEncoreRobotnik_WaitToMove,(a0)
		move.w	#45-1,$2E(a0)
		bset	#1,status(a0)

Obj_HPZEncoreRobotnik_WaitToMove:
		subq.w	#1,$2E(a0)
		bpl.w	HPZEncoreRobotnik_Draw
		move.l	#Obj_HPZEncoreRobotnik_Move,(a0)
		move.w	#$80-1,$2E(a0)
		move.w	#-$60,x_vel(a0)
		clr.w	y_vel(a0)

Obj_HPZEncoreRobotnik_Move:
		jsr	(MoveSprite2).l
		subq.w	#1,$2E(a0)
		bne.w	HPZEncoreRobotnik_Draw
		move.l	#Obj_HPZEncoreRobotnik_WaitToGrab,(a0)
		move.w	#$20-1,$2E(a0)
		bset	#2,status(a0)

Obj_HPZEncoreRobotnik_WaitToGrab:
		subq.w	#1,$2E(a0)
		bpl.w	HPZEncoreRobotnik_Draw
		move.l	#Obj_HPZEncoreRobotnik_WaitToFly,(a0)
		move.w	#$14,(Screen_shake_flag).w
		moveq	#signextendB(sfx_BigRumble),d0
		jsr	(Play_SFX).l
		move.l	a0,-(sp)
		movea.w	(_unkFABA).w,a0
		subi.w	#$18,y_pos(a0)
		lea	(ChildObjDat_6661E).l,a2
		jsr	(CreateChild6_Simple).l
		lea	(ChildObjDat_HPZEncoreEmeraldDebris).l,a2
		jsr	(CreateChild6_Simple).l
		addi.w	#$18,y_pos(a0)
		movea.l	(sp)+,a0
		move.w	#$20-1,$2E(a0)
		bset	#3,status(a0)
		clr.w	x_vel(a0)
		clr.w	y_vel(a0)

Obj_HPZEncoreRobotnik_WaitToFly:
		subq.w	#1,$2E(a0)
		bpl.s	HPZEncoreRobotnik_Draw
		move.l	#Obj_HPZEncoreRobotnik_FlyAway,(a0)

Obj_HPZEncoreRobotnik_FlyAway:
		moveq	#-$20,d1
		jsr	(MoveSprite_CustomGravity).l
		movea.w	(_unkFABA).w,a1
		add.l	d0,y_pos(a1)
		move.w	(Camera_Y_pos).w,d0
		subi.w	#$50,d0
		cmp.w	y_pos(a0),d0
		blo.s	HPZEncoreRobotnik_Draw
		move.l	#Draw_Sprite,(a0)
		move.l	#Draw_Sprite,(a1)
		bset	#4,status(a0)

HPZEncoreRobotnik_Draw:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

Obj_HPZEncoreRobotnikHead:
		move.l	#HPZEncoreRobotnik_AnimateChild,(a0)
		lea	ObjDat_HPZEncoreRobotnikHead(pc),a1
		jsr	(SetUp_ObjAttributes).l
		move.l	#AniRaw_RobotnikHead,$30(a0)
		bra.w	HPZEncoreRobotnik_AnimateChild
; ---------------------------------------------------------------------------

Obj_HPZEncoreRobotnikShip:
		move.l	#HPZEncoreRobotnik_DrawChild,(a0)
		lea	ObjDat_HPZEncoreRobotnikShip(pc),a1
		jsr	(SetUp_ObjAttributes).l
		bra.w	HPZEncoreRobotnik_DrawChild
; ---------------------------------------------------------------------------

Obj_HPZEncoreRobotnikArm:
		move.l	#Obj_HPZEncoreRobotnikArm_WaitForJump,(a0)
		lea	ObjDat_HPZEncoreRobotnikArm(pc),a1
		jsr	(SetUp_ObjAttributes).l
		lea	ChildObjDat_HPZEncoreRobotnikArm(pc),a2
		jsr	(CreateChild1_Normal).l

Obj_HPZEncoreRobotnikArm_WaitForJump:
		movea.w	parent3(a0),a1
		btst	#0,status(a1)
		beq.w	HPZEncoreRobotnik_DrawChild
		andi.w	#drawing_mask,art_tile(a0)
		bra.w	HPZEncoreRobotnik_DrawChild
; ---------------------------------------------------------------------------

Obj_HPZEncoreRobotnikJoint:
		move.l	#HPZEncoreRobotnik_DrawChild,(a0)
		lea	ObjDat3_HPZEncoreRobotnikJoint(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		bra.w	HPZEncoreRobotnik_DrawChild
; ---------------------------------------------------------------------------

Obj_HPZEncoreRobotnikHand:
		move.l	#Obj_HPZEncoreRobotnikHand_WaitForCamera,(a0)
		lea	ObjDat3_HPZEncoreRobotnikHand(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		move.l	#byte_75194,$30(a0)
		movea.w	parent3(a0),a1
		move.w	parent3(a1),parent2(a0)
		tst.b	subtype(a0)
		beq.s	Obj_HPZEncoreRobotnikHand_WaitForCamera
		move.b	#8,mapping_frame(a0)
		move.w	#$200,priority(a0)
		move.l	#byte_7519C,$30(a0)

Obj_HPZEncoreRobotnikHand_WaitForCamera:
		tst.b	(Boss_flag).w
		beq.s	HPZEncoreRobotnik_DrawChild
		move.l	#Obj_HPZEncoreRobotnikHand_WaitForJump,(a0)
		move.b	#1,anim_frame(a0)

Obj_HPZEncoreRobotnikHand_WaitForJump:
		movea.w	parent2(a0),a1
		btst	#0,status(a1)
		beq.s	HPZEncoreRobotnik_AnimateChild
		move.l	#Obj_HPZEncoreRobotnikHand_WaitForMove,(a0)
		andi.w	#drawing_mask,art_tile(a0)

Obj_HPZEncoreRobotnikHand_WaitForMove:
		movea.w	parent2(a0),a1
		btst	#2,status(a1)
		beq.s	HPZEncoreRobotnik_AnimateChild
		move.l	#Obj_HPZEncoreRobotnikHand_WaitForAnim,(a0)

Obj_HPZEncoreRobotnikHand_WaitForAnim:
		cmpi.b	#3,anim_frame(a0)
		bne.s	HPZEncoreRobotnik_AnimateChild
		move.l	#Obj_HPZEncoreRobotnikHand_WaitForGrab,(a0)

Obj_HPZEncoreRobotnikHand_WaitForGrab:
		movea.w	parent2(a0),a1
		btst	#3,status(a1)
		beq.s	HPZEncoreRobotnik_DrawChild
		move.l	#HPZEncoreRobotnik_DrawChild,(a0)
		move.b	#5,anim_frame(a0)
		clr.b	anim_frame_timer(a0)

HPZEncoreRobotnik_AnimateChild:
		jsr	(Animate_Raw).l

HPZEncoreRobotnik_DrawChild:
		jsr	(Refresh_ChildPositionAdjusted).l
		jmp	(Child_Draw_Sprite).l
; ---------------------------------------------------------------------------

Obj_HPZEncoreRobotnikInside:
		move.l	#HPZEncoreRobotnik_DrawChild,(a0)
		lea	ObjDat_HPZEncoreRobotnikInside(pc),a1
		jsr	(SetUp_ObjAttributes).l
		bra.s	HPZEncoreRobotnik_DrawChild
; ---------------------------------------------------------------------------

Obj_HPZEncoreRobotnikFire:
		move.l	#Obj_HPZEncoreRobotnikFire_Main,(a0)
		lea	ObjDat_HPZEncoreRobotnikFire(pc),a1
		jsr	(SetUp_ObjAttributes).l

Obj_HPZEncoreRobotnikFire_Main:
		btst	#0,(V_int_run_count+3).w
		beq.s	HPZEncoreRobotnik_DrawChild
		rts
; ---------------------------------------------------------------------------

Obj_HPZEncoreEmeraldDebris:
		jsr	(loc_65226).l
		subi.b	#$18,child_dy(a0)
		move.w	#$100,priority(a0)
		rts
; ---------------------------------------------------------------------------

Obj_HPZEncoreTeleporter:
		move.w	#$1640,x_pos(a0)
		move.w	#$3C7,y_pos(a0)
		addq.b	#1,(Current_zone).w
		jsr	(Obj_SSZHPZTeleporter).l
		move.l	#Obj_HPZEncoreTeleporter_Wait,(a0)
		move.w	#make_art_tile(ArtTile_HPZEncoreTeleporter,0,0),art_tile(a0)
		subq.b	#1,(Current_zone).w
		rts
; ---------------------------------------------------------------------------

Obj_HPZEncoreTeleporter_Wait:
		movea.w	parent3(a0),a1
		tst.b	status(a1)
		bmi.s	.done
		jmp	(loc_455F8).l
; ---------------------------------------------------------------------------

	.done:
		move.l	#Obj_HPZEncoreTeleporter_Move,(a0)
		ori.w	#high_priority,art_tile(a0)

Obj_HPZEncoreTeleporter_Move:
		movea.w	parent3(a0),a1
		move.w	$2E(a1),d0
		andi.b	#3,d0
		bne.s	Obj_HPZEncoreTeleporter_DisableLevelCollision
		subq.w	#1,$16(a0)
		cmpi.w	#$3B0,$16(a0)
		bne.s	Obj_HPZEncoreTeleporter_DisableLevelCollision
		move.l	#Obj_HPZEncoreTeleporter_DisableLevelCollision,(a0)
		move.b	#$40,subtype(a0)
		ori.b	#$80,(Update_HUD_timer).w

Obj_HPZEncoreTeleporter_DisableLevelCollision:
		movea.w	parent3(a0),a1
		lea	y_vel(a1),a1
		lea	(Player_1).w,a2
		bsr.s	HPZEncoreTeleporter_ProcessPlayer
		lea	(Player_2).w,a2
		bsr.s	HPZEncoreTeleporter_ProcessPlayer
		jsr	(loc_455CC).l
		tst.b	$38(a0)
		beq.s	HPZEncoreTeleporter_Return
		movea.w	parent3(a0),a1
		move.l	#Obj_HPZEncoreCutscene_StartNewLevel,(a1)
		move.w	#210-1,$2E(a1)
		rts
; ---------------------------------------------------------------------------

HPZEncoreTeleporter_ProcessPlayer:
		move.w	(a1)+,y_vel(a2)
		btst	#Status_InAir,status(a2)
		beq.s	HPZEncoreTeleporter_Return
		move.b	#$E,top_solid_bit(a2)
		move.b	#$F,lrb_solid_bit(a2)

HPZEncoreTeleporter_Return:
		rts
; ---------------------------------------------------------------------------
ChildObjDat_HPZEncoreRobotnik:
		dc.w 5-1
		dc.l Obj_HPZEncoreRobotnikHead
		dc.b    0,-$1C
		dc.l Obj_HPZEncoreRobotnikArm
		dc.b  $14, $22
		dc.l Obj_HPZEncoreRobotnikShip
		dc.b   $C,-$14
		dc.l Obj_HPZEncoreRobotnikInside
		dc.b    0,-$18
		dc.l Obj_HPZEncoreRobotnikFire
		dc.b  $38,-$14
ChildObjDat_HPZEncoreRobotnikArm:
		dc.w 3-1
		dc.l Obj_HPZEncoreRobotnikHand
		dc.b -$2A,  -2
		dc.l Obj_HPZEncoreRobotnikHand
		dc.b -$4A,  -2
		dc.l Obj_HPZEncoreRobotnikJoint
		dc.b   $D,-$17
ChildObjDat_HPZEncoreEmeraldDebris:
		dc.w 5-1
		dc.l Obj_HPZEncoreEmeraldDebris
ObjDat_HPZEncoreRobotnik:
		dc.l Map_HPZEncoreRobotnik
		dc.w make_art_tile(ArtTile_HPZEncoreRobotnik,0,1)
		dc.w   $280
		dc.b  $1C, $29,   2,   0
ObjDat_HPZEncoreRobotnikHead:
		dc.l Map_HPZEncoreRobotnik
		dc.w make_art_tile(ArtTile_HPZEncoreRobotnik,0,1)
		dc.w   $280
		dc.b  $10,   8,   0,   0
ObjDat_HPZEncoreRobotnikShip:
		dc.l Map_LBZFinalBoss2
		dc.w make_art_tile(ArtTile_SpikesSprings,1,1)
		dc.w   $200
		dc.b  $28, $28,   0,   0
ObjDat_HPZEncoreRobotnikArm:
		dc.l Map_LBZFinalBoss2
		dc.w make_art_tile(ArtTile_SpikesSprings,1,1)
		dc.w   $180
		dc.b  $20, $10,   2,   0
ObjDat3_HPZEncoreRobotnikHand:
		dc.w   $100
		dc.b  $14, $14,   4,   0
ObjDat3_HPZEncoreRobotnikJoint:
		dc.w   $180
		dc.b    8,   8,   3,   0
ObjDat_HPZEncoreRobotnikInside:
		dc.l Map_LBZFinalBoss2
		dc.w make_art_tile(ArtTile_SpikesSprings,1,1)
		dc.w   $300
		dc.b  $14,  $C,   1,   0
ObjDat_HPZEncoreRobotnikFire:
		dc.l Map_LBZFinalBoss2
		dc.w make_art_tile(ArtTile_SpikesSprings,0,1)
		dc.w   $300
		dc.b   $C,  $C,  $C,   0
Map_HPZEncoreRobotnik:
		include "Levels/HPZ/Misc Object Data/Map - Encore Cutscene Robotnik.asm"
; ---------------------------------------------------------------------------

Obj_SSZ2EggRoboRun:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	SSZ2EggRoboRun_Index(pc,d0.w),d1
		jsr	SSZ2EggRoboRun_Index(pc,d1.w)
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------
SSZ2EggRoboRun_Index:
		dc.w SSZ2EggRoboRun_State1-SSZ2EggRoboRun_Index
		dc.w SSZ2EggRoboRun_State2-SSZ2EggRoboRun_Index
		dc.w SSZ2EggRoboRun_State3-SSZ2EggRoboRun_Index
		dc.w SSZ2EggRoboRun_State4-SSZ2EggRoboRun_Index
		dc.w SSZ2EggRoboRun_State5-SSZ2EggRoboRun_Index
; ---------------------------------------------------------------------------

SSZ2EggRoboRun_State1:
		lea	ObjDat_SSZ2EggRoboRun(pc),a1
		jsr	(SetUp_ObjAttributes).l
		move.l	#byte_703F4,$30(a0)
		move.w	#120,$2E(a0)
		move.w	(Camera_max_X_pos).w,d0
		addi.w	#$178,d0
		move.w	d0,x_pos(a0)
		move.w	#$4A4,y_pos(a0)
		move.w	d0,d1
		subi.w	#$F0,d0
		addi.w	#$318,d1
		move.w	d0,objoff_38(a0)
		move.w	d1,objoff_3A(a0)
		lea	ChildObjDat_SSZ2EggRoboRun(pc),a2
		jsr	(CreateChild1_Normal).l
		bne.w	SSZ2EggRoboRun_Delete
		addi.w	#$348,x_pos(a1)
		lea	(ArtKosM_DeathEggRobot).l,a1
		move.w	#tiles_to_bytes(ArtTile_SSZ2DeathEggRobot),d2
		jmp	(Queue_Kos_Module).l
; ---------------------------------------------------------------------------

SSZ2EggRoboRun_State2:
		subq.w	#1,$2E(a0)
		bpl.s	locret_3CF54_S2
		jsr	(Animate_RawMultiDelay).l
		move.w	(Camera_X_pos).w,d0
		addq.w	#2,d0
		move.w	d0,(Camera_X_pos).w
		move.w	d0,(Camera_min_X_pos).w
		move.w	d0,(Camera_max_X_pos).w
		cmp.w	objoff_38(a0),d0
		bne.s	locret_3CF54_S2
		addq.b	#2,routine(a0)
		move.b	#2,mapping_frame(a0)
		move.w	#$20,$2E(a0)
		move.w	objoff_3A(a0),d0
		subi.w	#$D0,d0
		move.w	d0,(Camera_max_X_pos).w

locret_3CF54_S2:
		rts
; ---------------------------------------------------------------------------

SSZ2EggRoboRun_State3:
		subq.w	#1,$2E(a0)
		bpl.s	locret_3CF78_S2
		addq.b	#2,routine(a0)
		bset	#7,status(a0)
		subq.w	#4,y_pos(a0)
		move.w	#$200,x_vel(a0)
		move.l	#Map_EggRoboRun,mappings(a0)
		move.w	#make_art_tile(ArtTile_SSZ2EggRoboRun,0,1),art_tile(a0)
		clr.b	anim(a0)
		clr.b	anim_frame_timer(a0)
		clr.b	anim_frame(a0)
		bset	#0,render_flags(a0)

locret_3CF78_S2:
		rts
; ---------------------------------------------------------------------------

SSZ2EggRoboRun_State4:
		move.w	(Camera_X_pos).w,(Camera_min_X_pos).w
		move.w	objoff_3A(a0),d0
		cmp.w	x_pos(a0),d0
		blo.s	loc_3CFC0_S2
		jsr	(Find_SonicTails).l
		addi.w	#$50,d2
		cmpi.w	#$A0,d2
		bhs.s	loc_3CFAE_S2
		move.w	x_pos(a1),d0
		addi.w	#$50,d0
		move.w	d0,x_pos(a0)

loc_3CFAE_S2:
		lea	(byte_70419).l,a1
		jsr	(Animate_RawNoSST).l
		jmp	(MoveSprite2).l
; ---------------------------------------------------------------------------

loc_3CFC0_S2:
		move.b	#3,mapping_frame(a0)
		clr.w	x_vel(a0)
		tst.b	render_flags(a0)
		bpl.s	locret_3CFF2_S2
		addq.b	#2,routine(a0)
		move.w	#$80,x_vel(a0)
		move.w	#-$200,y_vel(a0)
		move.w	#$50,$2E(a0)
		subi.w	#$190,d0
		move.w	d0,(Camera_min_X_pos).w

locret_3CFF2_S2:
		rts
; ---------------------------------------------------------------------------

SSZ2EggRoboRun_State5:
		addi.w	#$10,y_vel(a0)
		bne.s	loc_3D004_S2
		bset	#3,status(a0)

loc_3D004_S2:
		jsr	(MoveSprite2).l
		subq.w	#1,$2E(a0)
		bpl.s	locret_3CFF2_S2

SSZ2EggRoboRun_Delete:
		jmp	(Go_Delete_Sprite_2).l
; ---------------------------------------------------------------------------
ObjDat_SSZ2EggRoboRun:
		dc.l Map_EggRoboStand
		dc.w make_art_tile(ArtTile_SSZ2EggRoboStand,0,1)
		dc.w $300
		dc.b $20
		dc.b $20
		dc.b 0
		dc.b 0
PLC_SSZ2Extra:	dc.w 2
		dc.l ArtNem_EggRoboStand
		dc.w tiles_to_bytes(ArtTile_SSZ2EggRoboStand)
		dc.l ArtNem_EggRoboRun
		dc.w tiles_to_bytes(ArtTile_SSZ2EggRoboRun)
		dc.l ArtNem_SSZ2Extra
		dc.w tiles_to_bytes(ArtTile_SSZ2Extra)
ChildObjDat_SSZ2EggRoboRun:
		dc.w 2
		dc.l loc_62458
		dc.w $C380
		dc.l Obj_SSZ2EggRoboPanel
		dc.w $F408
		dc.l Obj_DeathEggRobot
		dc.w $39
ChildObjDat_MechaSonic_FlyDown:
		dc.w 0
		dc.l Obj_MechaSonicFlame
		dc.w $2C
; ---------------------------------------------------------------------------

Obj_MechaSonicFlame:
		move.l	#Obj_MechaSonicFlame_Main,(a0)
		lea	ObjDat_MechaSonicFlame(pc),a1
		jsr	(SetUp_ObjAttributes).l

Obj_MechaSonicFlame_Main:
		moveq	#2,d0
		and.b	(V_int_run_count+3).w,d0
		move.b	d0,mapping_frame(a0)
		jsr	(Refresh_ChildPosition).l
		jmp	(Child_Draw_Sprite2).l
; ---------------------------------------------------------------------------
ObjDat_MechaSonicFlame:
		dc.l Map_SSZ2Extra
		dc.w make_art_tile(ArtTile_SSZ2Extra,0,0)
		dc.w $280
		dc.b 9
		dc.b $C
		dc.b 0
		dc.b 0
; ---------------------------------------------------------------------------

Obj_SSZ2EggRoboPanel:
		move.l	#Child_Draw_Sprite2,(a0)
		lea	ObjDat_SSZ2EggRoboPanel(pc),a1
		jmp	(SetUp_ObjAttributes).l
; ---------------------------------------------------------------------------
ObjDat_SSZ2EggRoboPanel:
		dc.l Map_SSZ2Extra
		dc.w make_art_tile(ArtTile_SSZ2Extra,0,1)
		dc.w $180
		dc.b $C
		dc.b $14
		dc.b 1
		dc.b 0
; ---------------------------------------------------------------------------

Obj_DeathEggRobot:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3D51A_S2(pc,d0.w),d1
		jsr	off_3D51A_S2(pc,d1.w)
		jmp	(Draw_And_Touch_Sprite).l
; ---------------------------------------------------------------------------
off_3D51A_S2:	dc.w loc_3D52A_S2-off_3D51A_S2
		dc.w loc_3D5A8_S2-off_3D51A_S2
		dc.w loc_3D5C2_S2-off_3D51A_S2
		dc.w loc_3D5EA_S2-off_3D51A_S2
		dc.w loc_3D62E_S2-off_3D51A_S2
		dc.w loc_3D640_S2-off_3D51A_S2
		dc.w loc_3D684_S2-off_3D51A_S2
		dc.w loc_3D8D2_S2-off_3D51A_S2
; ---------------------------------------------------------------------------

loc_3D52A_S2:
		lea	ObjDat_DeathEggRobot(pc),a1
		jsr	(SetUp_ObjAttributes).l
		move.w	#$280,priority(a0)
		move.w	(Camera_max_Y_pos).w,objoff_3A(a0)
		addi.w	#$64,objoff_3A(a0)
		lea	(ChildObjDat_703DE).l,a2
		jsr	(CreateChild6_Simple).l
		bne.w	DeathEggRobotSensor_Delete
		subi.w	#$1F,x_pos(a1)
		addi.w	#$1F,y_pos(a1)
		move.b	#$FC,subtype(a1)
		lea	ChildObjDat_DeathEggRobot(pc),a2
		jmp	(CreateChild9_TreeList).l
; ---------------------------------------------------------------------------

loc_3D5A8_S2:
		btst	#2,status(a0)
		beq.w	locret_3D62C_S2
		addq.b	#2,routine(a0)
		move.b	#$3C,anim_frame_timer(a0)
		moveq	#signextendB(cmd_FadeOut),d0
		jmp	(Play_Music).l
; ---------------------------------------------------------------------------

loc_3D5C2_S2:
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	locret_3D62C_S2
		addq.b	#2,routine(a0)
		move.w	#-$100,y_vel(a0)
		st	(Screen_shake_flag).w
		movea.w	objoff_40(a0),a1
		move.b	#4,routine(a1)
		moveq	#signextendB(mus_FinalBoss),d0
		jmp	(Play_Music).l
; ---------------------------------------------------------------------------

loc_3D5EA_S2:
		move.w	objoff_3A(a0),d0
		cmp.w	y_pos(a0),d0
		beq.s	loc_3D604_S2
		moveq	#signextendB(sfx_Rumble),d0
		jsr	(Play_SFX_Continuous).l
		jsr	(MoveSprite2).l
		bra.w	DeathEggRobot_PositionChildren
; ---------------------------------------------------------------------------

loc_3D604_S2:
		addq.b	#2,routine(a0)
		clr.w	y_vel(a0)
		clr.w	(Screen_shake_flag).w
		addi.w	#$4C,objoff_3A(a0)
		move.b	#$20,anim_frame_timer(a0)
		move.b	#$16,collision_flags(a0)
		move.b	#$C,boss_hitcount2(a0)
		bsr.w	DeathEggRobot_InitCollision
		movea.w	objoff_40(a0),a1
		move.b	#6,routine(a1)
		bset	#5,objoff_38(a0)

locret_3D62C_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D62E_S2:
		bsr.w	DeathEggRobot_CheckHit
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	locret_3D63E_S2
		addq.b	#2,routine(a0)

locret_3D63E_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D640_S2:
		bsr.w	DeathEggRobot_CheckHit
		addq.b	#2,routine(a0)
		move.b	#$20,anim_frame_timer(a0)
		move.b	angle(a0),d0
		addq.b	#1,d0
		move.b	d0,angle(a0)
		andi.w	#3,d0
		move.b	byte_3D680_S2(pc,d0.w),d0
		move.b	d0,anim(a0)
		clr.b	prev_anim(a0)
		cmpi.b	#2,d0
		bne.s	locret_3D67E_S2
		movea.w	objoff_40(a0),a1
		move.b	#4,routine(a1)
		move.b	#2,anim(a1)

locret_3D67E_S2:
		rts
; ---------------------------------------------------------------------------
byte_3D680_S2:	dc.b   2
		dc.b   0
		dc.b   2
		dc.b   4
		even
; ---------------------------------------------------------------------------

loc_3D684_S2:
		bsr.w	DeathEggRobot_CheckHit
		moveq	#0,d0
		move.b	anim(a0),d0
		move.w	off_3D696_S2(pc,d0.w),d1
		jmp	off_3D696_S2(pc,d1.w)
; ---------------------------------------------------------------------------
off_3D696_S2:	dc.w loc_3D6AA_S2-off_3D696_S2
		dc.w loc_3D702_S2-off_3D696_S2
		dc.w loc_3D83C_S2-off_3D696_S2
; ---------------------------------------------------------------------------

loc_3D6AA_S2:
		moveq	#0,d0
		move.b	prev_anim(a0),d0
		move.w	off_3D6B8_S2(pc,d0.w),d1
		jmp	off_3D6B8_S2(pc,d1.w)
; ---------------------------------------------------------------------------
off_3D6B8_S2:	dc.w loc_3D6C0_S2-off_3D6B8_S2
		dc.w loc_3D6CE_S2-off_3D6B8_S2
		dc.w loc_3D6C0_S2-off_3D6B8_S2
		dc.w loc_3D6E8_S2-off_3D6B8_S2
; ---------------------------------------------------------------------------

loc_3D6C0_S2:
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	locret_3D6CC_S2
		addq.b	#2,prev_anim(a0)

locret_3D6CC_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D6CE_S2:
		lea	(off_3E40C_S2).l,a1
		bsr.w	DeathEggRobot_Animate
		beq.s	locret_3D6E6_S2
		addq.b	#2,prev_anim(a0)
		move.b	#$40,anim_frame_timer(a0)

locret_3D6E6_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D6E8_S2:
		lea	(off_3E42C_S2).l,a1
		bsr.w	DeathEggRobot_Animate
		beq.s	locret_3D700_S2
		subq.b	#2,routine(a0)
		move.b	#$40,anim_frame_timer(a0)

locret_3D700_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D702_S2:
		moveq	#0,d0
		move.b	prev_anim(a0),d0
		move.w	off_3D710_S2(pc,d0.w),d1
		jmp	off_3D710_S2(pc,d1.w)
; ---------------------------------------------------------------------------
off_3D710_S2:	dc.w loc_3D6C0_S2-off_3D710_S2
		dc.w loc_3D720_S2-off_3D710_S2
		dc.w loc_3D744_S2-off_3D710_S2
		dc.w loc_3D6C0_S2-off_3D710_S2
		dc.w loc_3D784_S2-off_3D710_S2
		dc.w loc_3D7B8_S2-off_3D710_S2
		dc.w loc_3D7F0_S2-off_3D710_S2
		dc.w loc_3D82E_S2-off_3D710_S2
; ---------------------------------------------------------------------------

loc_3D720_S2:
		lea	(off_3E3D0_S2).l,a1
		bsr.w	DeathEggRobot_Animate
		beq.s	locret_3D742_S2
		addq.b	#2,prev_anim(a0)
		move.b	#$80,anim_frame_timer(a0)
		clr.w	x_vel(a0)
		move.w	#-$200,y_vel(a0)

locret_3D742_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D744_S2:
		subq.b	#1,anim_frame_timer(a0)
		bmi.s	loc_3D768_S2
		moveq	#signextendB(sfx_DeathEggRiseLoud),d0
		jsr	(Play_SFX_Continuous).l
		jsr	(MoveSprite2).l
		bra.w	DeathEggRobot_PositionChildren
; ---------------------------------------------------------------------------

loc_3D768_S2:
		addq.b	#2,prev_anim(a0)
		clr.w	y_vel(a0)
		lea	ChildObjDat_DeathEggRobotSensor(pc),a2
		jsr	(CreateChild9_TreeList).l
		clr.w	x_vel(a0)
		clr.w	objoff_38(a0)
		rts
; ---------------------------------------------------------------------------

loc_3D784_S2:
		move.w	objoff_38(a0),d0
		beq.s	locret_3D7B6_S2
		addq.b	#2,prev_anim(a0)
		move.w	d0,x_pos(a0)
		move.w	(Camera_min_X_pos).w,d1
		move.w	(Camera_max_X_pos).w,d2
		addi.w	#320,d2
		sub.w	d1,d2
		lsr.w	#1,d2
		add.w	d1,d2
		bclr	#0,render_flags(a0)
		cmp.w	d0,d2
		blo.s	loc_3D7A6_S2
		bset	#0,render_flags(a0)

loc_3D7A6_S2:
		bsr.w	DeathEggRobot_SetDirection
		move.w	#$800,y_vel(a0)
		move.b	#$20,anim_frame_timer(a0)

locret_3D7B6_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D7B8_S2:
		subq.b	#1,anim_frame_timer(a0)
		bmi.s	loc_3D7CC_S2
		jsr	(MoveSprite2).l
		bra.w	DeathEggRobot_PositionChildren
; ---------------------------------------------------------------------------

loc_3D7CC_S2:
		addq.b	#2,prev_anim(a0)
		clr.w	y_vel(a0)
		move.w	#$14,(Screen_shake_flag).w
		movea.w	objoff_40(a0),a1
		move.b	#6,routine(a1)
		moveq	#signextendB(sfx_ThumpBoss),d0
		jmp	(Play_SFX).l
; ---------------------------------------------------------------------------

loc_3D7F0_S2:
		lea	(off_3E30A_S2).l,a1
		bsr.w	DeathEggRobot_Animate
		beq.s	locret_3D81E_S2
		bsr.w	DeathEggRobot_PositionChildren
		jsr	(Find_SonicTails).l
		btst	#0,render_flags(a0)
		beq.s	loc_3D816_S2
		subq.w	#2,d0

loc_3D816_S2:
		tst.w	d0
		bne.s	loc_3D820_S2
		subq.b	#2,routine(a0)

locret_3D81E_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D820_S2:
		addq.b	#2,prev_anim(a0)
		move.b	#$60,anim_frame_timer(a0)
		bra.w	DeathEggRobot_CreateBombs
; ---------------------------------------------------------------------------

loc_3D82E_S2:
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	locret_3D83A_S2
		subq.b	#2,routine(a0)

locret_3D83A_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D83C_S2:
		moveq	#0,d0
		move.b	prev_anim(a0),d0
		move.w	off_3D84A_S2(pc,d0.w),d1
		jmp	off_3D84A_S2(pc,d1.w)
; ---------------------------------------------------------------------------
off_3D84A_S2:	dc.w loc_3D6C0_S2-off_3D84A_S2
		dc.w loc_3D856_S2-off_3D84A_S2
		dc.w loc_3D6C0_S2-off_3D84A_S2
		dc.w loc_3D89E_S2-off_3D84A_S2
		dc.w loc_3D6C0_S2-off_3D84A_S2
		dc.w loc_3D8B8_S2-off_3D84A_S2
; ---------------------------------------------------------------------------

loc_3D856_S2:
		bset	#6,status(a0)
		lea	(off_3E2F6_S2).l,a1
		bsr.w	DeathEggRobot_Animate
		beq.s	locret_3D88C_S2
		jsr	(Find_SonicTails).l
		btst	#0,render_flags(a0)
		beq.s	loc_3D878_S2
		subq.w	#2,d0

loc_3D878_S2:
		tst.w	d0
		bne.s	loc_3D88E_S2
		addq.b	#2,prev_anim(a0)
		move.b	#$40,anim_frame_timer(a0)
		bset	#4,status(a0)

locret_3D88C_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D88E_S2:
		move.b	#8,prev_anim(a0)
		move.b	#$20,anim_frame_timer(a0)
		bra.w	DeathEggRobot_CreateBombs
; ---------------------------------------------------------------------------

loc_3D89E_S2:
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	locret_3D8B6_S2
		addq.b	#2,prev_anim(a0)
		bset	#5,status(a0)
		move.b	#$40,anim_frame_timer(a0)

locret_3D8B6_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D8B8_S2:
		lea	(off_3E300_S2).l,a1
		bsr.w	DeathEggRobot_Animate
		beq.s	locret_3D8D0_S2
		subq.b	#2,routine(a0)
		bclr	#6,status(a0)

locret_3D8D0_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D8D2_S2:
		moveq	#0,d0
		move.b	anim(a0),d0
		move.w	off_3D8E0_S2(pc,d0.w),d1
		jmp	off_3D8E0_S2(pc,d1.w)
; ---------------------------------------------------------------------------
off_3D8E0_S2:	dc.w loc_3D8E6_S2-off_3D8E0_S2
		dc.w loc_3D922_S2-off_3D8E0_S2
		dc.w loc_3D93C_S2-off_3D8E0_S2
; ---------------------------------------------------------------------------

loc_3D8E6_S2:
		jsr	(MoveSprite).l
		move.w	objoff_3A(a0),d0
		cmp.w	y_pos(a0),d0
		bhs.s	locret_3D914_S2
		move.w	d0,y_pos(a0)
		move.w	y_vel(a0),d0
		bmi.s	loc_3D916_S2
		lsr.w	#2,d0
		cmpi.w	#$100,d0
		blo.s	loc_3D916_S2
		neg.w	d0
		move.w	d0,y_vel(a0)

locret_3D914_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D916_S2:
		addq.b	#2,anim(a0)
		move.b	#$40,anim_frame_timer(a0)
		rts
; ---------------------------------------------------------------------------

loc_3D922_S2:
		subq.b	#1,anim_frame_timer(a0)
		bpl.s	locret_3D93A_S2
		addq.b	#2,anim(a0)
		bset	#5,$38(a0)
		st.b	(Ctrl_1_locked).w
		move.w	(Camera_max_X_pos).w,objoff_38(a0)
		addi.w	#$180,objoff_38(a0)
		move.w	#$1000,(Camera_stored_max_X_pos).w
		jsr	(AllocateObject).l
		bne.s	locret_3D93A_S2
		move.l	#Obj_IncLevEndXGradual,(a1)

locret_3D93A_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D93C_S2:
		bset	#Status_OnObj,(Player_1+status).w
		move.w	#(button_right_mask<<8)|button_right_mask,(Ctrl_1_logical).w
		move.w	objoff_38(a0),d0
		cmp.w	(Camera_X_pos).w,d0
		bhs.s	locret_3D93A_S2
		move.l	#Obj_DeathEggRobot_SetupEnding,(a0)
		clr.b	routine(a0)
		move.w	#$20,$2E(a0)
		addi.w	#$400,objoff_38(a0)
		st	(Screen_shake_flag).w
		movea.w	subtype(a0),a1
		jmp	(Delete_Referenced_Sprite).l
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_SetupEnding:
		move.b	(V_int_run_count+3).w,d0
		andi.b	#$1F,d0
		bne.s	loc_3D984_S2
		moveq	#signextendB(sfx_BigRumble),d0
		jsr	(Play_SFX).l
		subq.w	#1,$2E(a0)

loc_3D984_S2:
		lea	(Player_1).w,a1
		move.w	x_pos(a1),d0
		sub.w	$2E(a0),d0
		move.w	d0,x_pos(a0)
		move.w	y_pos(a1),y_pos(a0)
		bsr.w	DeathEggRobot_EndingMakeExplosion
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3D9AC_S2(pc,d0.w),d1
		jmp	off_3D9AC_S2(pc,d1.w)
; ---------------------------------------------------------------------------
off_3D9AC_S2:	dc.w loc_3D9B0_S2-off_3D9AC_S2
		dc.w loc_3D9D6_S2-off_3D9AC_S2
; ---------------------------------------------------------------------------

loc_3D9B0_S2:
		lea	(Player_1).w,a1
		move.w	objoff_38(a0),d0
		cmp.w	x_pos(a1),d0
		bhs.s	locret_3D9D4_S2
		addq.b	#2,routine(a0)
		move.w	#$40-1,(Palette_fade_info).w
		move.b	#$16,anim_frame_timer(a0)
		move.w	#$7FFF,(Palette_cycle_counter1).w

locret_3D9D4_S2:
		rts
; ---------------------------------------------------------------------------

loc_3D9D6_S2:
		subq.b	#1,anim_frame_timer(a0)
		beq.s	loc_3D9F2_S2
		movea.l	a0,a1
		lea	(Normal_palette).w,a0
		moveq	#$3F,d0

loc_3D9E6_S2:
		jsr	(Pal_AddColor2).l
		dbf	d0,loc_3D9E6_S2
		movea.l	a1,a0
		rts
; ---------------------------------------------------------------------------

loc_3D9F2_S2:
		move.w	#$D01,d0
		jmp	(StartNewLevel).l
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_Shoulder:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DA34_S2(pc,d0.w),d1
		jsr	off_3DA34_S2(pc,d1.w)
		lea	word_3DA38_S2(pc),a1
		bsr.w	DeathEggRobot_RefreshChildPosition
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------
off_3DA34_S2:	dc.w loc_3DA3C_S2-off_3DA34_S2
		dc.w locret_3DA48_S2-off_3DA34_S2
; ---------------------------------------------------------------------------
word_3DA38_S2:	dc.w     8
		dc.w $FFE6
; ---------------------------------------------------------------------------

loc_3DA3C_S2:
		lea	ObjDat3_DeathEggRobot(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		movea.w	$44(a0),a1
		move.w	a0,objoff_34(a1)
		move.b	#5,mapping_frame(a0)

locret_3DA48_S2:
		rts
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_FrontLowerLeg:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DA62_S2(pc,d0.w),d1
		jsr	off_3DA62_S2(pc,d1.w)
		jmp	(Draw_And_Touch_Sprite).l
; ---------------------------------------------------------------------------
off_3DA62_S2:	dc.w loc_3DA66_S2-off_3DA62_S2
		dc.w locret_3DA72_S2-off_3DA62_S2
; ---------------------------------------------------------------------------

loc_3DA66_S2:
		lea	ObjDat3_DeathEggRobot(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		movea.w	$44(a0),a1
		move.w	a0,objoff_3C(a1)
		move.b	#6,mapping_frame(a0)

locret_3DA72_S2:
		rts
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_FrontForearm:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DA96_S2(pc,d0.w),d1
		jsr	off_3DA96_S2(pc,d1.w)
		btst	#6,status(a0)
		bne.w	locret_3DA72_S2
		jmp	(Draw_And_Touch_Sprite).l
; ---------------------------------------------------------------------------
off_3DA96_S2:	dc.w loc_3DAA0_S2-off_3DA96_S2
		dc.w loc_3DAAC_S2-off_3DA96_S2
		dc.w loc_3DACC_S2-off_3DA96_S2
		dc.w loc_3DB32_S2-off_3DA96_S2
		dc.w loc_3DB5A_S2-off_3DA96_S2
; ---------------------------------------------------------------------------

loc_3DAA0_S2:
		lea	ObjDat3_DeathEggRobot(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		movea.w	$44(a0),a1
		move.w	a0,objoff_36(a1)
		move.b	#7,mapping_frame(a0)
		rts
; ---------------------------------------------------------------------------

loc_3DAAC_S2:
		movea.w	$44(a0),a1
		bclr	#4,status(a1)
		beq.s	locret_3DACA_S2
		addq.b	#2,routine(a0)
		move.w	#$10,$2E(a0)
		move.w	y_pos(a0),$32(a0)

locret_3DACA_S2:
		rts
; ---------------------------------------------------------------------------

loc_3DACC_S2:
		subq.w	#1,$2E(a0)
		bmi.s	loc_3DADC_S2
		addi.w	#$20,y_vel(a0)
		jmp	(MoveSprite2).l
; ---------------------------------------------------------------------------

loc_3DADC_S2:
		addq.b	#2,routine(a0)
		move.w	#$20,$2E(a0)
		jsr	(Find_SonicTails).l
		tst.w	d2
		bpl.s	loc_3DAF0_S2
		neg.w	d2

loc_3DAF0_S2:
		cmpi.w	#$100,d2
		blo.s	loc_3DAFA_S2
		move.w	#$FF,d2

loc_3DAFA_S2:
		andi.w	#$C0,d2
		lsr.w	#5,d2
		move.w	word_3DB2A_S2(pc,d2.w),d2
		tst.w	d1
		bne.s	loc_3DB0A_S2
		neg.w	d2

loc_3DB0A_S2:
		move.w	d2,y_vel(a0)
		move.w	#$800,d2
		movea.w	$44(a0),a1
		btst	#0,render_flags(a0)
		bne.s	loc_3DB20_S2
		neg.w	d2

loc_3DB20_S2:
		move.w	d2,x_vel(a0)
		moveq	#signextendB(sfx_BossHand),d0
		jmp	(Play_SFX).l
; ---------------------------------------------------------------------------
word_3DB2A_S2:	dc.w  $200
		dc.w  $100
		dc.w   $80
		dc.w     0
; ---------------------------------------------------------------------------

loc_3DB32_S2:
		subq.w	#1,$2E(a0)
		bmi.s	loc_3DB3C_S2
		jmp	(MoveSprite2).l
; ---------------------------------------------------------------------------

loc_3DB3C_S2:
		addq.b	#2,routine(a0)
		neg.w	x_vel(a0)
		move.w	#$20,$2E(a0)
		move.w	$32(a0),d0
		sub.w	y_pos(a0),d0
		asl.w	#3,d0
		move.w	d0,y_vel(a0)
		rts
; ---------------------------------------------------------------------------

loc_3DB5A_S2:
		subq.w	#1,$2E(a0)
		bmi.s	loc_3DB64_S2
		jmp	(MoveSprite2).l
; ---------------------------------------------------------------------------

loc_3DB64_S2:
		move.b	#2,routine(a0)
		clr.w	x_vel(a0)
		clr.w	y_vel(a0)
		rts
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_ArmSegment:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DB8C_S2(pc,d0.w),d1
		jsr	off_3DB8C_S2(pc,d1.w)
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------
off_3DB8C_S2:	dc.w loc_3DB90_S2-off_3DB8C_S2
		dc.w locret_3DB9C_S2-off_3DB8C_S2
; ---------------------------------------------------------------------------

loc_3DB90_S2:
		lea	ObjDat3_DeathEggRobot(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		moveq	#$30,d0
		add.b	subtype(a0),d0
		movea.w	$44(a0),a1
		move.w	a0,(a1,d0.w)
		move.b	#8,mapping_frame(a0)

locret_3DB9C_S2:
		rts
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_FrontThigh:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DBB6_S2(pc,d0.w),d1
		jsr	off_3DBB6_S2(pc,d1.w)
		jmp	(Draw_And_Touch_Sprite).l
; ---------------------------------------------------------------------------
off_3DBB6_S2:	dc.w loc_3DBBA_S2-off_3DBB6_S2
		dc.w locret_3DBC6_S2-off_3DBB6_S2
; ---------------------------------------------------------------------------

loc_3DBBA_S2:
		lea	ObjDat3_DeathEggRobot(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		movea.w	$44(a0),a1
		move.w	a0,objoff_3E(a1)
		move.b	#9,mapping_frame(a0)

locret_3DBC6_S2:
		rts
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_Head:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DBE8_S2(pc,d0.w),d1
		jsr	off_3DBE8_S2(pc,d1.w)
		lea	word_3DBF2_S2(pc),a1
		bsr.w	DeathEggRobot_RefreshChildPosition
		jmp	(Draw_And_Touch_Sprite).l
; ---------------------------------------------------------------------------
off_3DBE8_S2:	dc.w loc_3DBF6_S2-off_3DBE8_S2
		dc.w loc_3DC02_S2-off_3DBE8_S2
		dc.w loc_3DC1C_S2-off_3DBE8_S2
		dc.w loc_3DC2A_S2-off_3DBE8_S2
		dc.w loc_3DC46_S2-off_3DBE8_S2
; ---------------------------------------------------------------------------
word_3DBF2_S2:	dc.w     0
		dc.w $FFCC
; ---------------------------------------------------------------------------

loc_3DBF6_S2:
		lea	ObjDat3_DeathEggRobot(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		movea.w	$44(a0),a1
		move.w	a0,subtype(a1)
		move.w	parent3(a1),parent3(a0)
		move.b	#0,mapping_frame(a0)
		move.w	#$280,priority(a0)
		rts
; ---------------------------------------------------------------------------

loc_3DC02_S2:
		movea.w	parent3(a0),a1
		btst	#3,status(a1)
		beq.s	locret_3DC42_S2
		addq.b	#2,routine(a0)
		move.w	#$40,$2E(a0)
		moveq	#signextendB(sfx_BossActivate),d0
		jmp	(Play_SFX).l
; ---------------------------------------------------------------------------

loc_3DC1C_S2:
		lea	Ani_DeathEggRobot_Head(pc),a1
		jmp	(Animate_SpriteIrregularDelay).l
; ---------------------------------------------------------------------------

loc_3DC2A_S2:
		subq.w	#1,$2E(a0)
		bpl.s	locret_3DC42_S2
		addq.b	#2,routine(a0)
		movea.w	$44(a0),a1
		bset	#2,status(a1)

locret_3DC42_S2:
		rts
; ---------------------------------------------------------------------------

loc_3DC46_S2:
		move.b	#-1,boss_hitcount2(a0)
		rts
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_Jet:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DC66_S2(pc,d0.w),d1
		jsr	off_3DC66_S2(pc,d1.w)
		lea	word_3DC70_S2(pc),a1
		bra.w	DeathEggRobot_RefreshChildPosition
; ---------------------------------------------------------------------------
off_3DC66_S2:	dc.w loc_3DC74_S2-off_3DC66_S2
		dc.w loc_3DC80_S2-off_3DC66_S2
		dc.w loc_3DC86_S2-off_3DC66_S2
		dc.w loc_3DC94_S2-off_3DC66_S2
		dc.w loc_3DC80_S2-off_3DC66_S2
; ---------------------------------------------------------------------------
word_3DC70_S2:	dc.w   $30
		dc.w   $10
; ---------------------------------------------------------------------------

loc_3DC74_S2:
		lea	ObjDat3_DeathEggRobot(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		movea.w	$44(a0),a1
		move.w	a0,objoff_40(a1)
		move.b	#$A,mapping_frame(a0)
		rts
; ---------------------------------------------------------------------------

loc_3DC80_S2:
		move.b	#3,anim(a0)

loc_3DC86_S2:
		lea	Ani_DeathEggRobot_Jet(pc),a1
		jsr	(Animate_Sprite).l
		jmp	(Draw_And_Touch_Sprite).l
; ---------------------------------------------------------------------------

loc_3DC94_S2:
		move.b	#1,anim(a0)
		bra.s	loc_3DC86_S2
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_BackLowerLeg:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DCB4_S2(pc,d0.w),d1
		jsr	off_3DCB4_S2(pc,d1.w)
		jmp	(Draw_And_Touch_Sprite).l
; ---------------------------------------------------------------------------
off_3DCB4_S2:	dc.w loc_3DCB8_S2-off_3DCB4_S2
		dc.w locret_3DCCA_S2-off_3DCB4_S2
; ---------------------------------------------------------------------------

loc_3DCB8_S2:
		lea	ObjDat3_DeathEggRobot(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		movea.w	$44(a0),a1
		move.w	a0,objoff_30(a1)
		move.b	#6,mapping_frame(a0)
		move.w	#$280,priority(a0)

locret_3DCCA_S2:
		rts
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_BackForearm:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DCE4_S2(pc,d0.w),d1
		jsr	off_3DCE4_S2(pc,d1.w)
		jmp	(Draw_And_Touch_Sprite).l
; ---------------------------------------------------------------------------
off_3DCE4_S2:	dc.w loc_3DCEE_S2-off_3DCE4_S2
		dc.w loc_3DD00_S2-off_3DCE4_S2
		dc.w loc_3DACC_S2-off_3DCE4_S2
		dc.w loc_3DB32_S2-off_3DCE4_S2
		dc.w loc_3DB5A_S2-off_3DCE4_S2
; ---------------------------------------------------------------------------

loc_3DCEE_S2:
		lea	ObjDat3_DeathEggRobot(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		movea.w	$44(a0),a1
		move.w	a0,objoff_2E(a1)
		move.b	#7,mapping_frame(a0)
		move.w	#$280,priority(a0)
		rts
; ---------------------------------------------------------------------------

loc_3DD00_S2:
		movea.w	$44(a0),a1
		bclr	#5,status(a1)
		beq.s	locret_3DD1E_S2
		addq.b	#2,routine(a0)
		move.w	#$10,$2E(a0)
		move.w	y_pos(a0),$32(a0)

locret_3DD1E_S2:
		rts
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_BackThigh:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DD38_S2(pc,d0.w),d1
		jsr	off_3DD38_S2(pc,d1.w)
		jmp	(Draw_And_Touch_Sprite).l
; ---------------------------------------------------------------------------
off_3DD38_S2:	dc.w loc_3DD3C_S2-off_3DD38_S2
		dc.w locret_3DD4E_S2-off_3DD38_S2
; ---------------------------------------------------------------------------

loc_3DD3C_S2:
		lea	ObjDat3_DeathEggRobot(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		movea.w	$44(a0),a1
		move.w	a0,objoff_32(a1)
		move.b	#9,mapping_frame(a0)
		move.w	#$280,priority(a0)

locret_3DD4E_S2:
		rts
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_TargettingSensor:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DD5E_S2(pc,d0.w),d1
		jmp	off_3DD5E_S2(pc,d1.w)
; ---------------------------------------------------------------------------
off_3DD5E_S2:	dc.w loc_3DD64_S2-off_3DD5E_S2
		dc.w loc_3DDA6_S2-off_3DD5E_S2
		dc.w loc_3DE3C_S2-off_3DD5E_S2
; ---------------------------------------------------------------------------

loc_3DD64_S2:
		move.b	#4,render_flags(a0)
		addq.b	#2,routine(a0)
		move.b	#$C,mapping_frame(a0)
		move.w	#$80,priority(a0)
		move.w	#$A0,$2E(a0)
		lea	(Player_1).w,a1
		move.w	x_pos(a1),x_pos(a0)
		move.w	y_pos(a1),y_pos(a0)
		move.w	x_vel(a1),$30(a0)
		move.w	y_vel(a1),$32(a0)
		move.w	#$18,angle(a0)
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_3DDA6_S2:
		subq.w	#1,$2E(a0)
		bmi.s	loc_3DE0A_S2
		tst.w	(Debug_placement_mode).w
		bne.s	loc_3DDE6_S2
		lea	$40(a0),a1
		movea.l	a1,a2
		move.w	-(a1),y_vel(a0)
		move.w	-(a1),x_vel(a0)
		moveq	#2,d6

loc_3DDBC_S2:
		move.l	-(a1),-(a2)
		dbf	d6,loc_3DDBC_S2
		lea	(Player_1).w,a2
		move.w	x_vel(a2),d0
		bne.s	loc_3DDD2_S2
		move.w	x_pos(a2),x_pos(a0)

loc_3DDD2_S2:
		move.w	d0,(a1)+
		move.w	y_vel(a2),d0
		bne.s	loc_3DDE0_S2
		move.w	y_pos(a2),y_pos(a0)

loc_3DDE0_S2:
		move.w	d0,(a1)+
		jsr	(MoveSprite2).l

loc_3DDE6_S2:
		lea	Ani_DeathEggRobot_TargettingSensor(pc),a1
		jsr	(Animate_Sprite).l
		subq.b	#1,angle(a0)
		bpl.s	loc_3DE06_S2
		subq.b	#1,flip_angle(a0)
		move.b	flip_angle(a0),angle(a0)
		moveq	#signextendB(sfx_Switch),d0
		jsr	(Play_SFX).l

loc_3DE06_S2:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_3DE0A_S2:
		addq.b	#2,routine(a0)
		move.w	#$40,$2E(a0)
		move.b	#4,angle(a0)
		lea	(Player_1).w,a1
		move.w	x_pos(a1),x_pos(a0)
		move.w	y_pos(a1),y_pos(a0)
		lea	ChildObjDat_DeathEggRobotLock(pc),a2
		jsr	(CreateChild9_TreeList).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_3DE3C_S2:
		subq.w	#1,$2E(a0)
		bmi.s	loc_3DE62_S2
		lea	Ani_DeathEggRobot_TargettingSensor(pc),a1
		jsr	(Animate_Sprite).l
		subq.b	#1,angle(a0)
		bpl.s	loc_3DE5E_S2
		move.b	#4,angle(a0)
		moveq	#signextendB(sfx_Switch),d0
		jsr	(Play_SFX).l

loc_3DE5E_S2:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_3DE62_S2:
		movea.w	$44(a0),a1
		move.w	x_pos(a0),objoff_38(a1)

DeathEggRobotSensor_Delete:
		jmp	(Go_Delete_Sprite).l
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_TargettingLock:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DE7E_S2(pc,d0.w),d1
		jmp	off_3DE7E_S2(pc,d1.w)
; ---------------------------------------------------------------------------
off_3DE7E_S2:	dc.w loc_3DE82_S2-off_3DE7E_S2
		dc.w loc_3DEA2_S2-off_3DE7E_S2
; ---------------------------------------------------------------------------

loc_3DE82_S2:
		move.b	#4,render_flags(a0)
		addq.b	#2,routine(a0)
		move.b	#$11,mapping_frame(a0)
		move.w	#$80,priority(a0)
		rts
; ---------------------------------------------------------------------------

loc_3DEA2_S2:
		movea.w	$44(a0),a1
		tst.b	status(a1)
		bmi.w	DeathEggRobot_Delete
		subq.w	#1,$2E(a0)
		bpl.s	loc_3DEBE_S2
		move.w	#3,$2E(a0)
		bchg	#5,art_tile(a0)

loc_3DEBE_S2:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_Bomb:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_3DED0_S2(pc,d0.w),d1
		jsr	off_3DED0_S2(pc,d1.w)
		lea	Ani_DeathEggRobot_Bomb(pc),a1
		jsr	(Animate_Sprite).l
		jmp	(Draw_And_Touch_Sprite).l
; ---------------------------------------------------------------------------
off_3DED0_S2:	dc.w loc_3DED8_S2-off_3DED0_S2
		dc.w loc_3DF04_S2-off_3DED0_S2
		dc.w loc_3DF36_S2-off_3DED0_S2
		dc.w loc_3DF80_S2-off_3DED0_S2
; ---------------------------------------------------------------------------

loc_3DED8_S2:
		move.b	#4,render_flags(a0)
		addq.b	#2,routine(a0)
		move.b	#$89,collision_flags(a0)
		move.w	#$280,priority(a0)
		move.b	#$C,width_pixels(a0)
		move.b	#$10,height_pixels(a0)
		lea	word_3DF00_S2(pc),a1
		bra.w	DeathEggRobot_RefreshChildPosition
; ---------------------------------------------------------------------------
word_3DF00_S2:	dc.w   $34
		dc.w $FFDC
; ---------------------------------------------------------------------------

loc_3DF04_S2:
		movea.w	$44(a0),a1
		btst	#7,status(a1)
		bne.s	loc_3DF48_S2
		jsr	(MoveSprite).l
		move.w	objoff_3A(a1),d0
		cmp.w	y_pos(a0),d0
		bhs.s	locret_3DFA6_S2
		addq.b	#2,routine(a0)
		move.w	d0,y_pos(a0)
		move.w	#$40,$2E(a0)
		rts
; ---------------------------------------------------------------------------

loc_3DF36_S2:
		movea.w	$44(a0),a1
		btst	#7,status(a1)
		bne.s	loc_3DF48_S2
		subq.w	#1,$2E(a0)
		bmi.s	loc_3DF4C_S2
		rts
; ---------------------------------------------------------------------------

loc_3DF48_S2:
		clr.b	collision_flags(a0)

loc_3DF4C_S2:
		move.b	#6,routine(a0)
		move.b	#1,anim(a0)
		move.l	#Map_Explosion,mappings(a0)
		move.w	#make_art_tile(ArtTile_Explosion,0,1),art_tile(a0)
		move.w	#$80,priority(a0)
		moveq	#signextendB(sfx_Explode),d0
		jmp	(Play_SFX).l
; ---------------------------------------------------------------------------

loc_3DF80_S2:
		cmpi.b	#3,mapping_frame(a0)
		blo.s	locret_3DFA6_S2
		clr.b	collision_flags(a0)

locret_3DFA6_S2:
		rts
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_BombBarrel:
		move.l	#Obj_DeathEggRobot_BombBarrel_Main,(a0)
		move.b	#$44,render_flags(a0)
		move.w	#1,mainspr_childsprites(a0)
		move.w	#$280,priority(a0)
		move.b	#$C,width_pixels(a0)
		move.b	#$20,height_pixels(a0)
		movea.w	$44(a0),a1
		move.w	objoff_3A(a1),objoff_3A(a0)
		subi.w	#$20,objoff_3A(a0)

Obj_DeathEggRobot_BombBarrel_Main:
		movea.w	parent3(a0),a1
		tst.b	anim(a1)
		bne.s	DeathEggRobot_Delete
		move.w	y_pos(a1),d0
		move.b	#$18,mapping_frame(a0)
		move.b	#0,sub2_mapframe(a0)
		btst	#1,$2F(a0)
		beq.s	.refreshPosition
		move.b	#$17,mapping_frame(a0)
		cmp.w	objoff_3A(a0),d0
		bhi.s	.refreshPosition
		move.b	#$19,sub2_mapframe(a0)

	.refreshPosition:
		move.w	d0,y_pos(a0)
		move.w	d0,sub2_y_pos(a0)
		move.w	x_pos(a1),d0
		move.w	d0,x_pos(a0)
		move.w	d0,sub2_x_pos(a0)
		addq.w	#1,$2E(a0)
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

DeathEggRobot_Delete:
		jmp	(Delete_Current_Sprite).l
; ---------------------------------------------------------------------------

Obj_DeathEggRobot_FallingPieces:
		subq.w	#1,$2E(a0)
		bmi.s	DeathEggRobot_Delete
		jsr	(MoveSprite).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

DeathEggRobot_EndingMakeExplosion:
		lea	(Child6_MakeBossExplosion1).l,a2
		jsr	(CreateChild6_Simple).l
		bne.s	locret_3DFF6_S2
		jsr	(Random_Number).l
		move.w	d0,d1
		moveq	#0,d1
		move.b	d0,d1
		lsr.b	#2,d1
		subi.w	#$30,d1
		add.w	d1,x_pos(a1)
		lsr.w	#8,d0
		lsr.b	#2,d0
		subi.w	#$30,d0
		add.w	d0,y_pos(a1)

locret_3DFF6_S2:
		rts
; ---------------------------------------------------------------------------

DeathEggRobot_CheckHit:
		tst.b	boss_hitcount2(a0)
		beq.s	DeathEggRobot_Beaten
		tst.b	$1C(a0)
		bne.s	DeathEggRobot_Flashing
		movea.w	subtype(a0),a1
		tst.b	collision_flags(a0)
		beq.s	loc_3E01E_S2
		tst.b	collision_flags(a1)
		bne.s	locret_3E058_S2
		clr.b	collision_flags(a0)
		subq.b	#1,boss_hitcount2(a0)
		beq.s	DeathEggRobot_Beaten

loc_3E01E_S2:
		clr.b	collision_flags(a1)
		move.b	#$20,$1C(a0)
		moveq	#signextendB(sfx_BossHit),d0
		jsr	(Play_SFX).l

DeathEggRobot_Flashing:
		moveq	#0,d0
		btst	#0,$1C(a0)
		bne.s	loc_3E03C_S2
		moveq	#$C,d0

loc_3E03C_S2:
		lea	DeathEggRobot_PalOffsets(pc),a1
		lea	DeathEggRobot_PalColors(pc,d0.w),a2
		jsr	(CopyWordData_6).l
		subq.b	#1,$1C(a0)
		bne.s	locret_3E058_S2
		movea.w	subtype(a0),a1
		move.b	#$16,collision_flags(a0)
		move.b	#$2A,collision_flags(a1)

locret_3E058_S2:
		rts
; ---------------------------------------------------------------------------

DeathEggRobot_Beaten:
		clr.b	(Update_HUD_timer).w
		moveq	#100,d0
		jsr	(HUD_AddToScore).l
		clr.b	anim_frame_timer(a0)
		move.b	#$E,routine(a0)
		subi.w	#$C,objoff_3A(a0)
		bset	#7,status(a0)
		clr.b	anim(a0)
		clr.b	collision_flags(a0)
		clr.w	x_vel(a0)
		clr.w	y_vel(a0)
		bsr.w	DeathEggRobot_RemoveCollision
		bsr.w	DeathEggRobot_Break
		movea.w	objoff_40(a0),a1
		jsr	(Delete_Referenced_Sprite).l
		addq.w	#4,sp
		clr.b	$38(a0)
		jmp	(loc_7EE74).l
; ---------------------------------------------------------------------------
DeathEggRobot_PalOffsets:
		dc.w	Normal_palette_line_2+$06
		dc.w	Normal_palette_line_2+$08
		dc.w	Normal_palette_line_2+$18
		dc.w	Normal_palette_line_2+$1A
		dc.w	Normal_palette_line_2+$14
		dc.w	Normal_palette_line_2+$16
DeathEggRobot_PalColors:
		dc.w     $A,     6,  $A88,  $866,  $444,     0
		dc.w   $888,  $AAA,  $888,  $AAA,  $CCC,  $EEE
; ---------------------------------------------------------------------------

DeathEggRobot_Break:
		lea	DeathEggRobot_BreakOffsets(pc),a1
		lea	DeathEggRobot_BreakSpeeds(pc),a2
		moveq	#0,d0
		moveq	#9,d6

loc_3E0A2_S2:
		move.b	(a1)+,d0
		movea.w	(a0,d0.w),a3
		move.l	#Obj_DeathEggRobot_FallingPieces,(a3)
		move.w	#$80,$2E(a3)
		move.w	(a2)+,x_vel(a3)
		move.w	(a2)+,y_vel(a3)
		dbf	d6,loc_3E0A2_S2
		rts
; ---------------------------------------------------------------------------
DeathEggRobot_BreakSpeeds:
		dc.w      0, -$400
		dc.w  -$200, -$300
		dc.w   $100, -$300
		dc.w   $200, -$400
		dc.w   $300, -$300
		dc.w  -$100, -$100
		dc.w   $180, -$200
		dc.w    $80, -$400
		dc.w   -$80, -$400
		dc.w  -$180, -$400
DeathEggRobot_BreakOffsets:
		dc.b objoff_2E
		dc.b objoff_30
		dc.b objoff_32
		dc.b objoff_34
		dc.b objoff_36
		dc.b objoff_3C
		dc.b objoff_3E
		dc.b objoff_42
		dc.b objoff_44
		dc.b objoff_46
		even
; ---------------------------------------------------------------------------

DeathEggRobot_InitCollision:
		lea	DeathEggRobot_ChildOffsets(pc),a1
		lea	DeathEggRobot_ChildCollision(pc),a2
		moveq	#0,d0
		moveq	#7,d6

loc_3E0FA_S2:
		move.b	(a1)+,d0
		movea.w	(a0,d0.w),a3
		move.b	(a2)+,collision_flags(a3)
		dbf	d6,loc_3E0FA_S2
		rts
; ---------------------------------------------------------------------------
DeathEggRobot_ChildCollision:
		dc.b $2A
		dc.b $9C
		dc.b $8F
		dc.b $8B
		dc.b $9C
		dc.b $8F
		dc.b $8B
		dc.b $89
DeathEggRobot_ChildOffsets:
		dc.b subtype
		dc.b objoff_2E
		dc.b objoff_30
		dc.b objoff_32
		dc.b objoff_36
		dc.b objoff_3C
		dc.b objoff_3E
		dc.b objoff_40
		even
; ---------------------------------------------------------------------------

DeathEggRobot_RemoveCollision:
		lea	DeathEggRobot_ChildOffsets(pc),a1
		moveq	#0,d0
		moveq	#9,d6

loc_3E126_S2:
		move.b	(a1)+,d0
		movea.w	(a0,d0.w),a3
		clr.b	collision_flags(a3)
		dbf	d6,loc_3E126_S2
		rts
; ---------------------------------------------------------------------------

DeathEggRobot_CreateBombs:
		lea	DeathEggRobot_BombInitSpeeds(pc),a4
		moveq	#1,d1

loc_3E13C_S2:
		lea	ChildObjDat_DeathEggRobotBomb(pc),a2
		jsr	(CreateChild9_TreeList).l
		movea.w	parent3(a1),a1
		move.w	(a4)+,d0
		btst	#0,render_flags(a0)
		beq.s	loc_3E152_S2
		neg.w	d0

loc_3E152_S2:
		move.w	d0,x_vel(a1)
		move.w	(a4)+,y_vel(a1)
		dbf	d1,loc_3E13C_S2

locret_3E15E_S2:
		moveq	#signextendB(sfx_TubeLauncher),d0
		jmp	(Play_SFX).l
; ---------------------------------------------------------------------------
DeathEggRobot_BombInitSpeeds:
		dc.w    $60, -$800
		dc.w    $C0, -$A00
; ---------------------------------------------------------------------------

DeathEggRobot_SetDirection:
		move.b	render_flags(a0),d0
		andi.b	#1,d0
		moveq	#0,d1
		moveq	#9,d6
		lea	DeathEggRobot_ChildOffsets(pc),a1

loc_3E176_S2:
		move.b	(a1)+,d1
		movea.w	(a0,d1.w),a2
		move.b	render_flags(a2),d2
		andi.b	#$FE,d2
		or.b	d0,d2
		move.b	d2,render_flags(a2)
		move.b	status(a2),d2
		andi.b	#$FE,d2
		or.b	d0,d2
		move.b	d2,status(a2)
		dbf	d6,loc_3E176_S2
		rts
; ---------------------------------------------------------------------------

DeathEggRobot_Animate:
		movea.l	(a1)+,a2
		moveq	#0,d0
		move.b	anim_frame(a0),d0
		move.b	(a1,d0.w),d0
		move.b	d0,d1
		moveq	#0,d4
		andi.w	#$C0,d1
		beq.s	loc_3E1C4_S2
		bsr.w	sub_3E23E_S2

loc_3E1C4_S2:
		add.w	d0,d0
		adda.w	(a2,d0.w),a2
		move.b	(a2)+,d0
		move.b	(a2)+,d3
		move.b	$2B(a0),d2
		addq.b	#1,d2
		cmp.b	d3,d2
		blo.s	loc_3E1DE_S2
		addq.b	#1,anim_frame(a0)
		moveq	#0,d2

loc_3E1DE_S2:
		move.b	d2,$2B(a0)
		moveq	#0,d5

loc_3E1E4_S2:
		move.b	(a2)+,d5
		movea.w	(a0,d5.w),a3
		tst.w	d5
		bne.s	loc_3E1F0_S2
		movea.l	a0,a3

loc_3E1F0_S2:
		move.l	x_pos(a3),d2
		move.b	(a2)+,d1
		ext.w	d1
		asl.w	#4,d1
		btst	#0,render_flags(a0)
		beq.s	loc_3E204_S2
		neg.w	d1

loc_3E204_S2:
		tst.w	d4
		beq.s	loc_3E20A_S2
		neg.w	d1

loc_3E20A_S2:
		ext.l	d1
		asl.l	#8,d1
		add.l	d1,d2
		move.l	d2,x_pos(a3)
		move.l	y_pos(a3),d3
		move.b	(a2)+,d1
		ext.w	d1
		asl.w	#4,d1
		tst.w	d4
		beq.s	loc_3E224_S2
		neg.w	d1

loc_3E224_S2:
		ext.l	d1
		asl.l	#8,d1
		add.l	d1,d3
		move.l	d3,y_pos(a3)
		dbf	d0,loc_3E1E4_S2
		moveq	#0,d1
		rts
; ---------------------------------------------------------------------------

loc_3E236_S2:
		clr.b	anim_frame(a0)
		moveq	#1,d1

locret_3E23C_S2:
		rts
; ---------------------------------------------------------------------------

sub_3E23E_S2:
		andi.b	#$3F,d0
		rol.b	#3,d1
		move.w	off_3E24C_S2-2(pc,d1.w),d1
		jmp	off_3E24C_S2(pc,d1.w)
; ---------------------------------------------------------------------------
off_3E24C_S2:	dc.w loc_3E252_S2-off_3E24C_S2
		dc.w loc_3E27A_S2-off_3E24C_S2
		dc.w loc_3E27E_S2-off_3E24C_S2
; ---------------------------------------------------------------------------

loc_3E252_S2:
		tst.b	$2B(a0)
		bne.s	locret_3E23C_S2
		move.b	anim_frame(a0),d1
		addq.b	#1,d1
		move.b	(a1,d1.w),d0
		jsr	(Play_SFX).l
		addq.b	#1,d1
		move.b	d1,anim_frame(a0)
		move.b	(a1,d1.w),d0
		move.b	d0,d1
		andi.b	#$C0,d1
		bne.s	sub_3E23E_S2
		rts
; ---------------------------------------------------------------------------

loc_3E27A_S2:
		moveq	#1,d4
		rts
; ---------------------------------------------------------------------------

loc_3E27E_S2:
		addq.w	#4,sp
		bra.s	loc_3E236_S2
; ---------------------------------------------------------------------------

DeathEggRobot_RefreshChildPosition:
		movea.w	$44(a0),a2
		move.w	x_pos(a2),d0
		move.w	(a1)+,d1
		btst	#0,render_flags(a2)
		beq.s	loc_3E296_S2
		neg.w	d1

loc_3E296_S2:
		add.w	d1,d0
		move.w	d0,x_pos(a0)
		move.w	y_pos(a2),d0
		add.w	(a1)+,d0
		move.w	d0,y_pos(a0)
		rts
; ---------------------------------------------------------------------------

DeathEggRobot_PositionChildren:
		lea	DeathEggRobot_ChildDeltas(pc),a1
		moveq	#0,d0
		moveq	#8,d6

loc_3E2AE_S2:
		move.b	(a1)+,d0
		movea.w	(a0,d0.w),a2
		move.w	x_pos(a0),d1
		move.b	(a1)+,d2
		ext.w	d2
		btst	#0,render_flags(a0)
		beq.s	loc_3E2C6_S2
		neg.w	d2

loc_3E2C6_S2:
		add.w	d2,d1
		move.w	d1,x_pos(a2)
		move.w	y_pos(a0),d1
		move.b	(a1)+,d2
		ext.w	d2
		add.w	d2,d1
		move.w	d1,y_pos(a2)
		dbf	d6,loc_3E2AE_S2
		rts
; ---------------------------------------------------------------------------
DeathEggRobot_ChildDeltas:
		dc.b objoff_2E, $F4,   8
		dc.b objoff_30,   4, $3C
		dc.b objoff_32,   4, $24
		dc.b objoff_36, $F4,   8
		dc.b objoff_3C,   4, $3C
		dc.b objoff_3E,   4, $24
		dc.b objoff_42,   8, $F0
		dc.b objoff_44,   8, $F5
		dc.b objoff_46,   8, $FA
		even
ObjDat_DeathEggRobot:
		dc.l Map_DeathEggRobot
		dc.w make_art_tile(ArtTile_SSZ2DeathEggRobot,0,1)
ObjDat3_DeathEggRobot:
		dc.w $200
		dc.b $44
		dc.b $24
		dc.b 4
		dc.b 0
ChildObjDat_DeathEggRobot:
		dc.w $B
		dc.l Obj_DeathEggRobot_Head		; $2C
		dc.l Obj_DeathEggRobot_BackForearm	; $2E
		dc.l Obj_DeathEggRobot_BackLowerLeg	; $30
		dc.l Obj_DeathEggRobot_BackThigh	; $32
		dc.l Obj_DeathEggRobot_Shoulder		; $34
		dc.l Obj_DeathEggRobot_FrontForearm	; $36
		dc.l Obj_DeathEggRobot_FrontLowerLeg	; $3C
		dc.l Obj_DeathEggRobot_FrontThigh	; $3E
		dc.l Obj_DeathEggRobot_Jet		; $40
		dc.l Obj_DeathEggRobot_ArmSegment	; $42
		dc.l Obj_DeathEggRobot_ArmSegment	; $44
		dc.l Obj_DeathEggRobot_ArmSegment	; $46
ChildObjDat_DeathEggRobotSensor:
		dc.w 0
		dc.l Obj_DeathEggRobot_TargettingSensor
ChildObjDat_DeathEggRobotLock:
		dc.w 0
		dc.l Obj_DeathEggRobot_TargettingLock
ChildObjDat_DeathEggRobotBomb:
		dc.w 1
		dc.l Obj_DeathEggRobot_Bomb
		dc.l Obj_DeathEggRobot_BombBarrel
Pal_DeathEggRobot:
		binclude "Levels/SSZ/Palettes/Death Egg Robot.bin"
Ani_DeathEggRobot_Head:
		dc.w byte_3E59C_S2-Ani_DeathEggRobot_Head
byte_3E59C_S2:	dc.b    0, $34,   1,   3,   2,   3,   3,   3, $FC
		even
Ani_DeathEggRobot_Jet:
		dc.w byte_3E5B2_S2-Ani_DeathEggRobot_Jet
		dc.w byte_3E5B6_S2-Ani_DeathEggRobot_Jet
		dc.w byte_3E5D0_S2-Ani_DeathEggRobot_Jet
		dc.w byte_3E5EA_S2-Ani_DeathEggRobot_Jet
byte_3E5B2_S2:	dc.b    1,  $A,   0, $FF
byte_3E5B6_S2:	dc.b    1,  $A,  $B,  $A,  $A,  $B,  $B,  $A,  $A,  $A,  $B,  $B,  $B,  $A,  $A,  $A
		dc.b   $A,  $A,  $B,  $B,  $B,  $B,  $B,  $B, $FC,   0
byte_3E5D0_S2:	dc.b    1,  $B,  $B,  $B,  $B,  $B,  $B,  $A,  $A,  $A,  $A,  $A,  $B,  $B,  $B,  $A
		dc.b   $A,  $A,  $B,  $B,  $A,  $A,  $B,  $A, $FD,   0
byte_3E5EA_S2:	dc.b    1,  $B,   0, $FF
		even
Ani_DeathEggRobot_TargettingSensor:
		dc.w byte_3E5F0_S2-Ani_DeathEggRobot_TargettingSensor
byte_3E5F0_S2:	dc.b    3,  $C,  $D,  $E,  $F, $10, $FF
		even
Ani_DeathEggRobot_Bomb:
		dc.w Ani_DeathEggRobot_Bomb0-Ani_DeathEggRobot_Bomb
		dc.w Ani_DeathEggRobot_Bomb1-Ani_DeathEggRobot_Bomb
Ani_DeathEggRobot_Bomb0:
		dc.b    3, $12, $13, $14, $15, $16,   0,   0, $FF
Ani_DeathEggRobot_Bomb1:
		dc.b    7,   0,   1,   2,   3,   4, $FB
; ---------------------------------------------------------------------------
		org $178000
