; ---------------------------------------------------------------------------
; Subroutine to	change Sonic's direction while jumping
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_JumpDirection:		
		move.w	($FFFFF760).w,d6
		move.w	($FFFFF762).w,d5
		asl.w	#1,d5
;		btst	#4,$22(a0)			; GIO: removed roll jump lock
;		bne.s	Obj01_ResetScr2	
		move.w	$10(a0),d0	
		btst	#2,($FFFFF602).w; is left being pressed?	
		beq.s	loc_13278; if not, branch	
		bset	#0,$22(a0)	
		sub.w	d5,d0	
		move.w	d6,d1	
		neg.w	d1	
		cmp.w	d1,d0	
		bgt.s	loc_13278	
		move.w	d1,d0

loc_13278:
		btst	#3,($FFFFF602).w; is right being pressed?	
		bne.s	Obj01_JumpMoveRight	; if not, branch
		btst	#bitL,(v_jpadhold2).w ; is right being pressed?
		bne.s	Obj01_JumpMoveLeft	; if not, branch
		bclr	#0,$22(a0)	
		add.w	#0,d0	
		cmp.w	d6,d0	
		blt.s	Obj01_JumpMove
		move.w	d6,d0

Obj01_JumpMove:
		move.w	#0,obVelX(a0)	; change Sonic's horizontal speed
        bra.w	Obj01_ResetScr2

Obj01_JumpMoveRight:
		move.w	#960,obVelX(a0)	; change Sonic's horizontal speed
		bra.w	Obj01_ResetScr2
		
Obj01_JumpMoveLeft:
		move.w	#-960,obVelX(a0)	; change Sonic's horizontal speed

Obj01_ResetScr2:
		cmpi.w	#$60,(v_lookshift).w ; is the screen in its default position?
		beq.s	loc_132A4	; if yes, branch
		bcc.s	loc_132A0
		addq.w	#4,(v_lookshift).w

loc_132A0:
		subq.w	#2,(v_lookshift).w

loc_132A4:
		cmpi.w	#-$400,obVelY(a0) ; is Sonic moving faster than -$400 upwards?
		blo.s	locret_132D2	; if yes, branch
		move.w	obVelX(a0),d0
		move.w	d0,d1
		asr.w	#5,d1
		beq.s	locret_132D2
		bmi.s	loc_132C6
		sub.w	d1,d0
		bcc.s	loc_132C0
		move.w	#0,d0

loc_132C0:
		move.w	d0,obVelX(a0)
		rts	
; ===========================================================================

loc_132C6:
		sub.w	d1,d0
		bcs.s	loc_132CE
		move.w	#0,d0

loc_132CE:
		move.w	d0,obVelX(a0)

locret_132D2:
		rts	
; End of function Sonic_JumpDirection
