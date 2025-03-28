; ---------------------------------------------------------------------------
; Subroutine to	change Limit's speed as he rolls
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Limit_RollSpeed:
		move.w	($FFFFF760).w,d6
		asl.w	#1,d6
		move.w	($FFFFF762).w,d5
		asr.w	#1,d5
		move.w	($FFFFF764).w,d4
		asr.w	#2,d4
		tst.b	($FFFFF7CA).w
		bne.w	limit_loc_131CC
		tst.w	$3E(a0)
		bne.s	Limit_notright
		btst	#2,($FFFFF602).w ; is left being pressed?
		beq.s	Limit_notleft	; if not, branch
		btst	#0,($FFFFFE2F).w	; GMZ: Have we got a reverse control power up?
		bne.s	LimitRS_RollRight	; GMZ: If yes, branch
		bsr.w	Limit_RollLeft

	Limit_notleft:
		btst	#3,($FFFFF602).w ; is right being pressed?
		beq.s	Limit_notright	; if not, branch
		btst	#0,($FFFFFE2F).w	; GMZ: Have we got a reverse control power up?
		beq.s	LimitRS_RollRight	; GMZ: If not, branch
		bsr.w	Limit_RollLeft
		bra.s	Limit_notright	; if not, branch

LimitRS_RollRight:
		bsr.w	Limit_RollRight

	Limit_notright:
		move.w	$14(a0),d0
		beq.s	limit_loc_131AA
		bmi.s	limit_loc_1319E
		sub.w	d5,d0
		bcc.s	limit_loc_13198
		move.w	#0,d0

limit_loc_13198:
		move.w	#960,$14(a0)
		bra.s	limit_loc_131AA
; ===========================================================================

limit_loc_1319E:
		add.w	d5,d0
		bcc.s	limit_loc_131A6
		move.w	#0,d0

limit_loc_131A6:
		move.w	#-960,$14(a0)

limit_loc_131AA:
		tst.w	$14(a0)	; is Limit moving?
		bne.s	limit_loc_131CC	; if yes, branch
		bclr	#2,$22(a0)
		move.b	#$13,$16(a0)
		move.b	#9,$17(a0)
		move.b	#5,$1C(a0) ; use "standing" animation
		subq.w	#5,$C(a0)

limit_loc_131CC:
		move.b	$26(a0),d0
		jsr	(CalcSine).l
		muls.w	$14(a0),d0
		asr.l	#8,d0
		move.w	d0,$12(a0)
		muls.w	$14(a0),d1
		asr.l	#8,d1
		cmpi.w	#$1000,d1
		ble.s	limit_loc_131F0
		move.w	#$1000,d1

limit_loc_131F0:
		cmpi.w	#-$1000,d1
		bge.s	limit_loc_131FA
		move.w	#-$1000,d1

limit_loc_131FA:
		move.w	d1,$10(a0)
		bra.w	limit_loc_1300C
; End of function Limit_RollSpeed


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Limit_RollLeft:
		move.w	$14(a0),d0
		beq.s	limit_loc_1320A
		bpl.s	limit_loc_13218

limit_loc_1320A:
		bset	#0,$22(a0)
		move.b	#2,$1C(a0) ; use "rolling" animation
		rts	
; ===========================================================================

limit_loc_13218:
		sub.w	d4,d0
		bcc.s	limit_loc_13220
		move.w	#-$80,d0

limit_loc_13220:
		move.w	#-960,$14(a0)
		rts	
; End of function Limit_RollLeft


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Limit_RollRight:
		move.w	$14(a0),d0
		bmi.s	limit_loc_1323A
		bclr	#0,$22(a0)
		move.b	#2,$1C(a0) ; use "rolling" animation
		rts	
; ===========================================================================

limit_loc_1323A:
		add.w	d4,d0
		bcc.s	limit_loc_13242
		move.w	#$80,d0

limit_loc_13242:
		move.w	#960,$14(a0)
		rts	
; End of function Limit_RollRight
