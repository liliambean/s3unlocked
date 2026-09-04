
Sonic_PeelOut:
		tst.b	(Skill_options).w
		bpl.s	.return
		tst.b	character_id(a0)
		bne.s	.return
		move.w	(Ctrl_1_logical).w,d0
		cmpa.w	#Player_1,a0
		beq.s	.checkCharging
		tst.w	(Tails_CPU_idle_timer).w
		bne.s	.checkCharging
		moveq	#0,d0

	.checkCharging:
		tst.w	spin_dash_counter(a0)
		bmi.s	.checkRelease
		andi.b	#button_ABC_mask,d0
		beq.s	.return
		tst.b	spin_dash_flag(a0)
		bne.s	.return
		cmpi.b	#7,anim(a0)
		bne.s	.return
		move.b	#1,anim(a0)
		move.b	#1,spin_dash_flag(a0)
		move.w	#$8000,spin_dash_counter(a0)
		moveq	#$10,d0
		btst	#Status_Facing,status(a0)
		beq.s	.setSpeed
		neg.w	d0

	.setSpeed:
		move.w	d0,ground_vel(a0)
		moveq	#signextendB(sfx_PeelOut),d0
		jsr	(Play_SFX_StopContinuous).l
		jmp	(loc_11D5E).l
; ---------------------------------------------------------------------------

	.return:
		rts
; ---------------------------------------------------------------------------

	.checkRelease:
		btst	#button_up+8,d0
		bne.s	.keepCharging
		cmpi.w	#$8618,spin_dash_counter(a0)
		bne.w	.notEnoughCharge
		move.w	#$C00,d1
		tst.b	(Super_Sonic_Knux_flag).w
		beq.s	.checkUnderwater
		move.w	#$F00,d1

	.checkUnderwater:
		btst	#Status_Underwater,status(a0)
		beq.s	.checkPlayer
		lsr.w	#1,d1
		addi.w	#$80,d1

	.checkPlayer:
		move.w	d1,ground_vel(a0)
		move.w	#1,x_vel(a0)
		cmpa.w	#Player_1,a0
		bne.s	.checkDirection
		subi.w	#$800,d1
		add.w	d1,d1
		andi.w	#$1F00,d1
		neg.w	d1
		addi.w	#$2000,d1
		move.w	d1,(H_scroll_frame_offset).w
		jsr	(Reset_Player_Position_Array).l

	.checkDirection:
		btst	#Status_Facing,status(a0)
		beq.s	.release
		neg.w	ground_vel(a0)

	.release:
		clr.l	stick_to_convex(a0)
		moveq	#signextendB(sfx_DashRelease),d0
		jsr	(Play_SFX).l
		jmp	(Spindash_Release_SetSpeed).l
; ---------------------------------------------------------------------------

	.keepCharging:
		tst.b	spin_dash_flag(a0)
		beq.s	.cancel
		cmpi.b	#1,prev_anim(a0)
		bne.s	.cancel
		cmpi.w	#$8618,spin_dash_counter(a0)
		beq.s	.animate
		addi.w	#$34,spin_dash_counter(a0)

	.animate:
		moveq	#0,d0
		move.b	spin_dash_counter(a0),d0
		andi.w	#$F,d0
		add.w	d0,d0
		move.w	Sonic_PeelOut_AnimSpeeds(pc,d0.w),d1
		tst.b	(Super_Sonic_Knux_flag).w
		beq.s	.checkUnderwater2
		move.w	Sonic_PeelOut_AnimSpeedsSuper(pc,d0.w),d1

	.checkUnderwater2:
		btst	#Status_Underwater,status(a0)
		beq.s	.checkDirection2
		lsr.w	#1,d1
		addi.w	#$80,d1

	.checkDirection2:
		btst	#Status_Facing,status(a0)
		beq.s	.setSpeed2
		neg.w	d1

	.setSpeed2:
		move.w	d1,ground_vel(a0)
		bsr.s	Sonic_PeelOut_SFX.playSFX
		jmp	(loc_11D5E).l
; ---------------------------------------------------------------------------

	.notEnoughCharge:
		clr.w	ground_vel(a0)
		clr.b	spin_dash_flag(a0)

	.cancel:
		clr.b	spin_dash_counter(a0)
		moveq	#signextendB(cmd_StopSFX),d0
		jmp	(Play_Music).l
; ---------------------------------------------------------------------------

Sonic_PeelOut_SFX:
		tst.w	spin_dash_counter(a0)
		bpl.w	Sonic_PeelOut.return
		tst.b	spin_dash_flag(a0)
		beq.s	Sonic_PeelOut.cancel

	.playSFX:
		move.b	(Level_frame_counter+1).w,d0
		subq.b	#1,d0
		andi.b	#3,d0
		bne.w	Sonic_PeelOut.return
		moveq	#signextendB(sfx_PeelOut),d0
		jmp	(Play_SFX).l
; ---------------------------------------------------------------------------
Sonic_PeelOut_AnimSpeeds:
		dc.w $500
		dc.w $500
		dc.w $500
		dc.w $600
		dc.w $800
		dc.w $A00
		dc.w $C00
Sonic_PeelOut_AnimSpeedsSuper:
		dc.w $300
		dc.w $400
		dc.w $500
		dc.w $600
		dc.w $700
		dc.w $800
		dc.w $1000
