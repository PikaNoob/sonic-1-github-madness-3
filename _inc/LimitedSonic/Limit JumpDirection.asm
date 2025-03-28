; ---------------------------------------------------------------------------
; Subroutine to	change Sonic's direction while jumping
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Limit_JumpDirection:		
		move.w	($FFFFF760).w,d6
		move.w	($FFFFF762).w,d5
		asl.w	#1,d5
;		btst	#4,$22(a0)			; GIO: removed roll jump limit_lock
;		bne.s	Limit_ResetScr2	
		move.w	$10(a0),d0	
		btst	#2,($FFFFF602).w; is left being pressed?	
		beq.s	limit_loc_13278; if not, branch	
		bset	#0,$22(a0)	
		sub.w	d5,d0	
		move.w	d6,d1	
		neg.w	d1	
		cmp.w	d1,d0	
		bgt.s	limit_loc_13278	
		move.w	d1,d0

limit_loc_13278:
		btst	#3,($FFFFF602).w; is right being pressed?	
		bne.s	Limit_JumpMoveRight	; if not, branch
		btst	#2,($FFFFF602).w ; is right being pressed?
		bne.s	Limit_JumpMoveLeft	; if not, branch
		bclr	#0,$22(a0)	
		add.w	#0,d0	
		cmp.w	d6,d0	
		blt.s	Limit_JumpMove
		move.w	d6,d0

Limit_JumpMove:
		move.w	#0,$10(a0)	; change Sonic's horizontal speed
        bra.w	Limit_ResetScr2

Limit_JumpMoveRight:
		btst	#0,($FFFFFE2F).w	; GMZ: Have we got a reverse control power up?
		bne.s	Limit_JumpMoveLeft2

Limit_JumpMoveRight2:
		move.w	#960,$10(a0)	; change Sonic's horizontal speed
		bra.w	Limit_ResetScr2
		
Limit_JumpMoveLeft:
		btst	#0,($FFFFFE2F).w	; GMZ: Have we got a reverse control power up?
		bne.s	Limit_JumpMoveRight2

Limit_JumpMoveLeft2:
		move.w	#-960,$10(a0)	; change Sonic's horizontal speed

Limit_ResetScr2:
		cmpi.w	#$60,($FFFFF73E).w ; is the screen in its default position?
		beq.s	limit_loc_132A4	; if yes, branch
		bcc.s	limit_loc_132A0
		addq.w	#4,($FFFFF73E).w

limit_loc_132A0:
		subq.w	#2,($FFFFF73E).w

limit_loc_132A4:
		cmpi.w	#-$400,$12(a0) ; is Sonic moving faster than -$400 upwards?
		blo.s	limit_locret_132D2	; if yes, branch
		move.w	$10(a0),d0
		move.w	d0,d1
		asr.w	#5,d1
		beq.s	limit_locret_132D2
		bmi.s	limit_loc_132C6
		sub.w	d1,d0
		bcc.s	limit_loc_132C0
		move.w	#0,d0

limit_loc_132C0:
		move.w	d0,$10(a0)
		rts	
; ===========================================================================

limit_loc_132C6:
		sub.w	d1,d0
		bcs.s	limit_loc_132CE
		move.w	#0,d0

limit_loc_132CE:
		move.w	d0,$10(a0)

limit_locret_132D2:
		rts	
; End of function Sonic_JumpDirection
