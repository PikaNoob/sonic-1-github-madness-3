; ---------------------------------------------------------------------------
; Subroutine to	animate	Sonic's sprites
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Limit_Animate:
		moveq	#0,d0
		move.b	$1C(a0),d0
		cmp.b	$1D(a0),d0 ; has animation changed?
		beq.s	LSAnimDo		; if not, branch
		move.b	d0,$1D(a0)
		move.b	#0,$1B(a0) ; reset animation
		move.b	#0,$1E(a0) ; reset frame duration

LSAnimDo:
		add.w	d0,d0
		adda.w	(a1,d0.w),a1	; jump to appropriate animation	script
		move.b	(a1),d0
		bmi.s	LSAnim_WalkRun	; if animation is walk/run/roll/jump, branch
		move.b	$22(a0),d1
		andi.b	#1,d1
		andi.b	#$FC,1(a0)
		or.b	d1,1(a0)
		subq.b	#1,$1E(a0) ; subtract 1 from frame duration
		bpl.s	LSAnim_Delay		; if time remains, branch
		move.b	d0,$1E(a0) ; load frame duration

LSAnim_Do2:
		moveq	#0,d1
		move.b	$1B(a0),d1 ; load current frame number
		move.b	1(a1,d1.w),d0	; read sprite number from script
		bmi.s	LSAnim_End_FF		; if animation is complete, branch

LSAnim_Next:
		move.b	d0,$1A(a0)	; load sprite number
		addq.b	#1,$1B(a0) ; next frame number

LSAnim_Delay:
		rts	
; ===========================================================================

LSAnim_End_FF:
		addq.b	#1,d0		; is the end flag = $FF	?
		bne.s	LSAnim_End_FE		; if not, branch
		move.b	#0,$1B(a0) ; restart the animation
		move.b	1(a1),d0	; read sprite number
		bra.s	LSAnim_Next
; ===========================================================================

LSAnim_End_FE:
		addq.b	#1,d0		; is the end flag = $FE	?
		bne.s	LSAnim_End_FD		; if not, branch
		move.b	2(a1,d1.w),d0	; read the next	byte in	the script
		sub.b	d0,$1B(a0) ; jump back d0 bytes in the script
		sub.b	d0,d1
		move.b	1(a1,d1.w),d0	; read sprite number
		bra.s	LSAnim_Next
; ===========================================================================

LSAnim_End_FD:
		addq.b	#1,d0		; is the end flag = $FD	?
		bne.s	LSAnim_End		; if not, branch
		move.b	2(a1,d1.w),$1C(a0) ; read next byte, run that animation

LSAnim_End:
		rts	
; ===========================================================================

LSAnim_WalkRun:
;		subq.b	#1,$1E(a0) ; subtract 1 from frame duration
;		bpl.s	LSAnim_Delay		; if time remains, branch
		addq.b	#1,d0		; is animation walking/running?
		bne.w	LSAnim_RollJump	; if not, branch
		moveq	#0,d1
		move.b	$26(a0),d0	; get Sonic's angle
		move.b	$22(a0),d2
		andi.b	#1,d2		; is Sonic mirrored horizontally?
		bne.s	LSAnim_Flip		; if yes, branch
		not.b	d0		; reverse angle

LSAnim_Flip:
		addi.b	#$10,d0		; add $10 to angle
		bpl.s	LSAnim_NoInvert	; if angle is $0-$7F, branch
		moveq	#3,d1

LSAnim_NoInvert:
		andi.b	#$FC,1(a0)
		eor.b	d1,d2
		or.b	d2,1(a0)
		btst	#5,$22(a0)	; is Sonic pushing something?
		bne.w	LSAnim_Push		; if yes, branch

		lsr.b	#4,d0		; divide angle by $10
		andi.b	#6,d0		; angle	must be	0, 2, 4	or 6
		move.w	$14(a0),d2 ; get Sonic's speed
		bpl.s	LSAnim_NoModSpd
		neg.w	d2		; modulus speed

LSAnim_NoModSpd:
		lea	(LimitAni_Run).l,a1 ; use	running	animation
		add.b	d0,d0
		move.b	d0,d3
		neg.w	d2
		addi.w	#$800,d2
		bpl.s	LSAnim_BelowMax
		moveq	#0,d2		; max animation speed

LSAnim_BelowMax:
		lsr.w	#8,d2
		move.b	#0,$1E(a0) ; modify frame duration
		bsr.w	LSAnim_Do2
		add.b	d3,$1A(a0)	; modify frame number
		rts	
; ===========================================================================

LSAnim_RollJump:
		addq.b	#1,d0		; is animation rolling/jumping?
		bne.s	LSAnim_Push		; if not, branch
		move.w	$14(a0),d2 ; get Sonic's speed
		bpl.s	LSAnim_NoModSpd2
		neg.w	d2

LSAnim_NoModSpd2:
		lea	(LimitAni_Roll2).l,a1 ; use fast animation
		cmpi.w	#$600,d2	; is Sonic moving fast?
		bhs.s	LSAnim_RollFast	; if yes, branch
		lea	(LimitAni_Roll).l,a1 ; use slower	animation

LSAnim_RollFast:
		neg.w	d2
		addi.w	#$400,d2
		bpl.s	LSAnim_BelowMax2
		moveq	#0,d2

LSAnim_BelowMax2:
		lsr.w	#8,d2
		move.b	#0,$1E(a0) ; modify frame duration
		move.b	$22(a0),d1
		andi.b	#1,d1
		andi.b	#$FC,1(a0)
		or.b	d1,1(a0)
		bra.w	LSAnim_Do2
; ===========================================================================

LSAnim_Push:
		move.w	$14(a0),d2 ; get Sonic's speed
		bmi.s	LSAnim_negspeed
		neg.w	d2

LSAnim_negspeed:
		addi.w	#$800,d2
		bpl.s	LSAnim_BelowMax3	
		moveq	#0,d2

LSAnim_BelowMax3:
		lsr.w	#6,d2
		move.b	#0,$1E(a0) ; modify frame duration
		lea	(LimitAni_Push).l,a1
		move.b	$22(a0),d1
		andi.b	#1,d1
		andi.b	#$FC,1(a0)
		or.b	d1,1(a0)
		bra.w	LSAnim_Do2

; End of function Sonic_Animate
