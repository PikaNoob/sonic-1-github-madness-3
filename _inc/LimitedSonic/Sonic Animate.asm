; ---------------------------------------------------------------------------
; Subroutine to	animate	Sonic's sprites
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||
; ===========================================================================		
SonicAnimate_MapBanks:
		dc.l	Map_Sonic
		dc.l	Map_Sonic2		
; ===========================================================================

Sonic_Animate:
		lea	(Ani_Sonic).l,a1	; get Sonic's animation list
		move.b	(v_spritebank).w,(v_spritebankprev).w ; GIO: time to move the current player's sprite bank to the previous frame's
		moveq	#0,d0			; initialize d0
		move.b	obAnim(a0),d0	; get Sonic's individual animation number
		cmp.b	obNextAni(a0),d0 ; is animation set to restart?
		beq.s	@do		; if not, branch
		move.b	d0,obNextAni(a0) ; set to "no restart" (reuses animation number)
		move.b	#0,obAniFrame(a0) ; reset animation
		move.b	#0,obTimeFrame(a0) ; reset frame duration

	@do:
		add.w	d0,d0			; double the value in d0 (animation pointers are words)
		adda.w	(a1,d0.w),a1	; jump to appropriate animation	script
		
		moveq	#0,d2			; GIO: initialize d2
		move.b	(a1)+,d2		; GIO: get the mapping bank indicator, and increase a1
		move.b	d2,(v_spritebank).w
		lsl.w	#2,d2			; GIO: multiply by 4
		lea		SonicAnimate_MapBanks(pc,d2.w),a2
		move.l	(a2),obMap(a0)	; GIO: based on the value in d2, assign the correct mappings to Sonic
		
;		adda.w	#1,a1			; GIO: skip the first value (placeholder)
	
		move.b	(a1),d0
		bmi.s	@walkrunroll	; if animation is walk/run/roll/jump, branch
		move.b	obStatus(a0),d1
		andi.b	#1,d1
		andi.b	#$FC,obRender(a0)
		or.b	d1,obRender(a0)
		subq.b	#1,obTimeFrame(a0) ; subtract 1 from frame duration
		bpl.s	@delay		; if time remains, branch
		move.b	#0,obTimeFrame(a0) ; load frame duration

@loadframe:
		moveq	#0,d1
		move.b	$1B(a0),d1	; load current frame number
		move.b	1(a1,d1.w),d0	; read sprite number from script
		cmp.b	#$FD,d0					; MJ: is it a flag from FD to FF?
		bhs	@end_FF			; MJ: if so, branch to flag routines

	@next:
		move.b	d0,obFrame(a0)	; load sprite number
		addq.b	#1,obAniFrame(a0) ; next frame number

	@delay:
		rts	

@end_FF:
		addq.b	#1,d0		; is the end flag = $FF	?
		bne.s	@end_FE		; if not, branch
		move.b	#0,obAniFrame(a0) ; restart the animation
		move.b	1(a1),d0	; read sprite number
		bra.s	@next
; ===========================================================================

@end_FE:
		addq.b	#1,d0		; is the end flag = $FE	?
		bne.s	@end_FD		; if not, branch
		move.b	2(a1,d1.w),d0	; read the next	byte in	the script
		sub.b	d0,obAniFrame(a0) ; jump back d0 bytes in the script
		sub.b	d0,d1
		move.b	1(a1,d1.w),d0	; read sprite number
		bra.s	@next
; ===========================================================================

@end_FD:
		addq.b	#1,d0		; is the end flag = $FD	?
		bne.s	@end		; if not, branch
		move.b	2(a1,d1.w),obAnim(a0) ; read next byte, run that animation

	@end:
		rts	
; ===========================================================================

@walkrunroll:
		subq.b	#1,obTimeFrame(a0) ; subtract 1 from frame duration
		bpl.s	@delay		; if time remains, branch
		addq.b	#1,d0		; is animation walking/running?
		bne.w	@rolljump	; if not, branch
		moveq	#0,d1
		move.b	obAngle(a0),d0	; get Sonic's angle
		move.b	obStatus(a0),d2
		andi.b	#1,d2		; is Sonic mirrored horizontally?
		bne.s	@flip		; if yes, branch
		not.b	d0		; reverse angle

	@flip:
		addi.b	#$10,d0		; add $10 to angle
		bpl.s	@noinvert	; if angle is $0-$7F, branch
		moveq	#3,d1

	@noinvert:
		andi.b	#$FC,obRender(a0)
		eor.b	d1,d2
		or.b	d2,obRender(a0)
		btst	#5,obStatus(a0)	; is Sonic pushing something?
		bne.w	@push		; if yes, branch

		lsr.b	#5,d0		; divide angle by $20
		andi.b	#3,d0		; angle	must be	0, 1, 2	or 3
		move.w	obInertia(a0),d2 ; get Sonic's speed
		bpl.s	@nomodspeed
		neg.w	d2		; modulus speed

	@nomodspeed:
		lea	(SonAni_Run).l,a1 ; use	running	animation
		mulu	#8,d0		; number of frames
		addi.w	#$100,d2	; animation speed adjustment

		adda.w  #1,a1
		move.l	#Map_Sonic,obMap(a0)	
		clr.b	(v_spritebank).w		
		move.b	d0,d3
		neg.w	d2
		addi.w	#$800,d2
		bpl.s	@belowmax
		moveq	#0,d2		; max animation speed

	@belowmax:
		lsr.w	#8,d2
		move.b	#0,obTimeFrame(a0) ; modify frame duration
		bsr.w	@loadframe
		add.b	d3,obFrame(a0)	; modify frame number
		rts	

; ===========================================================================

@rolljump:
		addq.b	#1,d0		; is animation rolling/jumping?
		bne.s	@push		; if not, branch
		move.w	obInertia(a0),d2 ; get Sonic's speed
		bpl.s	@nomodspeed2
		neg.w	d2

	@nomodspeed2:
		lea	(SonAni_Roll2).l,a1 ; use fast animation
		cmpi.w	#$600,d2	; is Sonic moving fast?
		bcc.s	@rollfast	; if yes, branch
		lea	(SonAni_Roll).l,a1 ; use slower	animation

	@rollfast:
		adda.w	#1,a1
		move.l	#Map_Sonic,obMap(a0)
		clr.b	(v_spritebank).w		
		neg.w	d2
		addi.w	#$400,d2
		bpl.s	@belowmax2
		moveq	#0,d2

	@belowmax2:
		lsr.w	#8,d2
		move.b	#0,obTimeFrame(a0) ; modify frame duration
		move.b	obStatus(a0),d1
		andi.b	#1,d1
		andi.b	#$FC,obRender(a0)
		or.b	d1,obRender(a0)
		bra.w	@loadframe
; ===========================================================================

@push:
		move.w	obInertia(a0),d2 ; get Sonic's speed
		bmi.s	@negspeed
		neg.w	d2

	@negspeed:
		addi.w	#$800,d2
		bpl.s	@belowmax3	
		moveq	#0,d2

	@belowmax3:
		lsr.w	#8,d2
		move.b	#0,obTimeFrame(a0) ; modify frame duration
		lea	(SonAni_Push).l,a1
		move.l	#Map_Sonic,obMap(a0)
		clr.b	(v_spritebank).w
		adda.w	#1,a1
		move.b	obStatus(a0),d1
		andi.b	#1,d1
		andi.b	#$FC,obRender(a0)
		or.b	d1,obRender(a0)
		bra.w	@loadframe

; End of function Sonic_Animate

