; SuperSonic_PalFlash:
SuperHyper_PalCycle:
		move.b	(Super_Hyper_palette_status).w,d0	; 0 = off | 1 = fading | -1 = fading done
		beq.w	locret_37EC			; return, if player isn't super
		bmi.w	SuperHyper_PalCycle_Normal	; branch, if fade-in is done
		subq.b	#1,d0
		bne.w	SuperHyper_PalCycle_Revert	; branch for values greater than 1

		; fade from Sonic's to Super Sonic's palette
		; run frame timer
		subq.b	#1,(Palette_timer).w
		bpl.w	locret_37EC
		move.b	#1,(Palette_timer).w

		; Tails and Knuckles only
		; Only Sonic has a fade-in; Tails and Knuckles just *pop* into their normal Super/Hyper palette cycle
		cmpi.w	#2,(Player_mode).w
		blo.s	SuperHyper_PalCycle_FadeIn
		move.b	#-1,(Super_Hyper_palette_status).w	; -1 = fading done
		move.w	#0,(Palette_frame).w			; Used by Knuckles and Tails' Super Flickies
		move.b	#0,(Palette_frame_Tails).w		; Used by Tails
		move.b	#0,(Player_1+object_control).w		; restore Player's movement
		rts
; ---------------------------------------------------------------------------
; loc_3792:
SuperHyper_PalCycle_FadeIn:
		; increment palette frame and update Sonic's palette
		lea	(PalCycle_SuperSonic).l,a0
		addq.w	#6,(Palette_frame).w			; 1 palette entry = 1 word, Sonic uses 3 shades of blue
    move.w	(Palette_frame).w,d0
		cmpi.w	#$24,(Palette_frame).w			; has palette cycle reached the 6th frame?
		blo.s	SuperHyper_PalCycle_SonicApply		; if not, branch
		move.b	#-1,(Super_Hyper_palette_status).w	; mark fade-in as done
		move.b	#0,(Player_1+object_control).w		; restore Sonic's movement
; loc_37B4:
SuperHyper_PalCycle_SonicApply:
		lea	(Normal_palette+$4).w,a1
		move.l	(a0,d0.w),(a1)+	; Write first two palette entries
		move.w	4(a0,d0.w),(a1) ; Write last palette entry

; SuperHyper_PalCycle_Underwater:
		tst.b	(Water_flag).w
		beq.s	locret_37EC
		lea	(PalCycle_SuperSonicUnderwaterAIZICZ).l,a0	; Load underwater fade-in palette
		tst.b	(Current_zone).w				; Is Sonic in Angel Island Zone?
		beq.s	SuperHyper_PalCycle_ApplyUnderwater		; If so, branch
		cmpi.b	#5,(Current_zone).w				; Is Sonic in IceCap Zone?
		beq.s	SuperHyper_PalCycle_ApplyUnderwater		; If so, branch
		lea	(PalCycle_SuperSonicUnderwaterHCZCNZLBZ).l,a0	; Load alternate underwater fade-in palette
; loc_37E0:
SuperHyper_PalCycle_ApplyUnderwater:
		lea	(Water_palette+$4).w,a1
		move.l	(a0,d0.w),(a1)+	; Write first two palette entries
		move.w	4(a0,d0.w),(a1) ; Write last palette entry

locret_37EC:
		rts
; ---------------------------------------------------------------------------
; loc_37EE:
SuperHyper_PalCycle_Revert:	; runs the fade in transition backwards
		cmpi.w	#2,(Player_mode).w	; If Tails or Knuckles, branch, making this code Sonic-specific
		bhs.s	SuperHyper_PalCycle_RevertNotSonic

; SuperHyper_PalCycle_RevertSonic:
		; run frame timer
		subq.b	#1,(Palette_timer).w
		bpl.s	locret_37EC
		move.b	#3,(Palette_timer).w

		; decrement palette frame and update Sonic's palette
		lea	(PalCycle_SuperSonic).l,a0
		move.w	(Palette_frame).w,d0
		subq.w	#6,(Palette_frame).w	; previous frame
		bhs.s	loc_381E		; branch, if it isn't the first frame
		move.b	#0,(Super_Hyper_palette_status).w	; 0 = off
loc_381E:
		bra.s	SuperHyper_PalCycle_SonicApply
; ---------------------------------------------------------------------------
; loc_3820:
SuperHyper_PalCycle_RevertNotSonic:
		moveq	#0,d0
		move.w	d0,(Palette_frame).w
		move.b	d0,(Super_Hyper_palette_status).w	; 0 = off
		move.b	d0,(Palette_frame_Tails).w
		cmpi.w	#3,(Player_mode).w			; If Knuckles, branch, making this code Tails-specific
		bhs.s	SuperHyper_PalCycle_RevertKnuckles

; SuperHyper_PalCycle_RevertTails:
		lea	(PalCycle_SuperTails).l,a0		; Used here because the first set of colours is Tails' normal palette
		bsr.w	SuperHyper_PalCycle_ApplyTails
		lea	(PalCycle_SuperSonic).l,a0		; Why does Tails manipulate Sonic's palette? For his Super-form's Super Flickies
		bra.w	SuperHyper_PalCycle_Apply
; ---------------------------------------------------------------------------
; loc_384A:
SuperHyper_PalCycle_RevertKnuckles:
		lea	(PalCycle_SuperHyperKnucklesRevert).l,a0
		bra.w	SuperHyper_PalCycle_Apply
; ---------------------------------------------------------------------------
; loc_3854:
SuperHyper_PalCycle_Normal:
		cmpi.w	#2,(Player_mode).w		; If Tails...
		beq.w	SuperHyper_PalCycle_NormalTails
		cmpi.w	#3,(Player_mode).w		; ...or Knuckles, branch, making this code Sonic-specific
		beq.w	SuperHyper_PalCycle_NormalKnuckles
		tst.b	(Super_Sonic_Knux_flag).w	; If Hyper Sonic, branch
		bmi.s	SuperHyper_PalCycle_HyperSonic
; loc_386E:
SuperHyper_PalCycle_SuperSonic:	; Tails' code falls back here so the Super Flickies' palette can update
		; run frame timer
		subq.b	#1,(Palette_timer).w
		bpl.w	locret_37EC
		move.b	#6,(Palette_timer).w

		; increment palette frame and update Sonic's palette
		lea	(PalCycle_SuperSonic).l,a0
    addq.w	#6,(Palette_frame).w	; next frame
		move.w	(Palette_frame).w,d0
		cmpi.w	#$36,(Palette_frame).w	; is it the last frame?
		bls.s	loc_3898		; if not, branch
		move.w	#$24,(Palette_frame).w	; reset frame counter (Super Sonic's normal palette cycle starts at $24. Everything before that is for the palette fade)
loc_3898:
		bra.w	SuperHyper_PalCycle_SonicApply
; ---------------------------------------------------------------------------
; loc_389C:
SuperHyper_PalCycle_HyperSonic:
		; run frame timer
		subq.b	#1,(Palette_timer).w
		bpl.w	locret_37EC
		move.b	#4,(Palette_timer).w

		; increment palette frame and update Sonic's palette
		lea	(PalCycle_HyperSonic).l,a0
    addq.w	#6,(Palette_frame).w			; next frame
		move.w	(Palette_frame).w,d0
		cmpi.w	#$48,(Palette_frame).w			; is it the last frame?
		blo.s	SuperHyper_PalCycle_HyperSonicApply	; if not, branch
		move.w	#0,(Palette_frame).w			; reset frame counter
; loc_38C6:
SuperHyper_PalCycle_HyperSonicApply:
		; Redundant. SuperHyper_PalCycle_Apply does the exact same thing
		; and other areas of code do branch to it instead of duplicating the code as seen here
		lea	(Normal_palette+$4).w,a1
		move.l	(a0,d0.w),(a1)+	; Write first two palette entries
		move.w	4(a0,d0.w),(a1) ; Write last palette entry
		tst.b	(Water_flag).w
		beq.w	locret_37EC
		lea	(Water_palette+$4).w,a1
		move.l	(a0,d0.w),(a1)+	; Write first two palette entries
		move.w	4(a0,d0.w),(a1) ; Write last palette entry
		rts
; ---------------------------------------------------------------------------
; loc_38E8:
SuperHyper_PalCycle_NormalTails:
		; run frame timer
		subq.b	#1,(Palette_timer_Tails).w
		bpl.w	SuperHyper_PalCycle_SuperSonic
		move.b	#$B,(Palette_timer_Tails).w

		; increment palette frame and update Tails' palette
		lea	(PalCycle_SuperTails).l,a0
		moveq	#0,d0
    addq.b	#6,(Palette_frame_Tails).w	; next frame
		move.b	(Palette_frame_Tails).w,d0
		cmpi.b	#$24,(Palette_frame_Tails).w	; is it the last frame?
		blo.s	SuperHyper_PalCycle_ApplyTails	; if not, branch
		move.b	#0,(Palette_frame_Tails).w	; reset frame counter
		; go straight to SuperHyper_PalCycle_ApplyTails...
; End of function SuperHyper_PalCycle


; =============== S U B R O U T I N E =======================================

; sub_3914
SuperHyper_PalCycle_ApplyTails:
		; Tails gets his own because of the unique location of his palette entries
		lea	(Normal_palette+$10).w,a1
		move.l	(a0,d0.w),(a1)+		; Write first two palette entries
		move.w	4(a0,d0.w),2(a1)	; Write last palette entry
		tst.b	(Water_flag).w
		beq.w	SuperHyper_PalCycle_SuperSonic
		lea	(Water_palette+$10).w,a1
		move.l	(a0,d0.w),(a1)+		; Write first two palette entries
		move.w	4(a0,d0.w),2(a1)	; Write last palette entry
		bra.w	SuperHyper_PalCycle_SuperSonic
; End of function SuperHyper_PalCycle_ApplyTails

; ---------------------------------------------------------------------------
; loc_393C:
SuperHyper_PalCycle_NormalKnuckles:
		; run frame timer
		subq.b	#1,(Palette_timer).w
		bpl.w	locret_37EC
		move.b	#2,(Palette_timer).w

		; increment palette frame and update Knuckles' palette
		lea	(PalCycle_SuperHyperKnuckles).l,a0
    addq.w	#6,(Palette_frame).w			; next frame
		move.w	(Palette_frame).w,d0
		cmpi.w	#$3C,(Palette_frame).w			; is it the last frame?
		blo.s	SuperHyper_PalCycle_Apply		; if not, branch
		move.w	#0,(Palette_frame).w			; reset frame counter
		move.b	#$E,(Palette_timer).w
; SuperHyper_PalCycle_KnucklesApply:
; loc_396C:
SuperHyper_PalCycle_Apply:
		lea	(Normal_palette+$4).w,a1
		move.l	(a0,d0.w),(a1)+	; Write first two palette entries
		move.w	4(a0,d0.w),(a1)	; Write last palette entry
		tst.b	(Water_flag).w
		beq.w	locret_37EC
		lea	(Water_palette+$4).w,a1
		move.l	(a0,d0.w),(a1)+	; Write first two palette entries
		move.w	4(a0,d0.w),(a1)	; Write last palette entry
		rts
; ---------------------------------------------------------------------------
; AnPal_SuperSonic_1:
PalCycle_SuperSonic:
		dc.w $E66,$C42,$822
		dc.w $E88,$C66,$844
		dc.w $EAA,$C88,$A66
		dc.w $ECC,$EAA,$C88
		dc.w $EEE,$ECC,$EAA
		dc.w $EEE,$EEE,$EEE
		dc.w $CEE,$CEE,$AEE
		dc.w $AEE,$8EE,$6CC
		dc.w $8EE,$0EE,$0AA
		dc.w $AEE,$8EE,$6CC
; AnPal_SuperSonic_2:
PalCycle_SuperSonicUnderwaterAIZICZ:
		dc.w $A82,$860,$640
		dc.w $E88,$C66,$844
		dc.w $EAA,$C88,$A66
		dc.w $ECC,$EAA,$C88
		dc.w $EEE,$ECC,$EAA
		dc.w $EEE,$EEE,$EEE
		dc.w $CEE,$CEC,$AEC
		dc.w $AEC,$8EC,$6CA
		dc.w $8EC,$4EA,$4A8
		dc.w $AEC,$8EC,$6CA
; AnPal_SuperSonic_3:
PalCycle_SuperSonicUnderwaterHCZCNZLBZ:
		dc.w $C66,$A44,$624
		dc.w $E88,$C66,$844
		dc.w $EAA,$C88,$A66
		dc.w $ECC,$EAA,$C88
		dc.w $EEE,$ECC,$EAA
		dc.w $EEE,$EEE,$EEE
		dc.w $CEE,$CEC,$AEC
		dc.w $AEC,$8EC,$6CA
		dc.w $8EC,$4EA,$4A8
		dc.w $AEC,$8EC,$6CA
; AnPal_SuperSonic_4:
PalCycle_HyperSonic:
		dc.w $EEC,$ECA,$EA8
		dc.w $EEE,$EEE,$EEE
		dc.w $CEC,$AEA,$2E0
		dc.w $EEE,$EEE,$EEE
		dc.w $AEC,$4EC,$0CC
		dc.w $EEE,$EEE,$EEE
		dc.w $CEE,$8EE,$4CE
		dc.w $EEE,$EEE,$EEE
		dc.w $EEE,$CCE,$AAE
		dc.w $EEE,$EEE,$EEE
		dc.w $EEE,$ECE,$CAC
		dc.w $EEE,$EEE,$EEE
; AnPal_SuperSonic_5:
PalCycle_SuperTails:
		dc.w $0AE,$08E,$46A
		dc.w $4CE,$2AE,$46A
		dc.w $8CE,$4CE,$46C
		dc.w $AEE,$8CE,$48E
		dc.w $8CE,$4CE,$46C
		dc.w $4CE,$2AE,$46A
; AnPal_SuperSonic_6:
PalCycle_SuperHyperKnuckles:
		dc.w $A6E,$64E,$428
		dc.w $C8E,$86E,$64A
		dc.w $EAE,$A8E,$86C
		dc.w $ECE,$CAE,$A8E
		dc.w $EEE,$ECE,$CAE
		dc.w $ECE,$CAE,$A8E
		dc.w $EAE,$A8E,$86C
		dc.w $C8E,$86E,$64A
		dc.w $A6E,$64E,$428
		dc.w $84E,$40C,$206
; AnPal_SuperSonic_7:
PalCycle_SuperHyperKnucklesRevert:
		dc.w $64E,$20C,$206
