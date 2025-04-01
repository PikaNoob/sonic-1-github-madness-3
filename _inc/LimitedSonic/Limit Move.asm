; ---------------------------------------------------------------------------
; Subroutine to	make Limit walk/run
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Limit_Move:
		move.w	($FFFFF760).w,d6
		move.w	($FFFFF762).w,d5
		move.w	($FFFFF764).w,d4
		tst.b	($FFFFF7CA).w
		bne.w	limit_loc_12FEE
		tst.w	$3E(a0)
		bne.w	Limit_ResetScr
		btst	#2,($FFFFF602).w ; is left being pressed?
		beq.s	Limited_notleft	; if not, branch
		btst	#0,($FFFFFE2F).w	; GMZ: Have we got a reverse control power up?
		bne.s	JmpToLimit_MoveRight	; GMZ: If yes, branch
		bsr.w	Limit_MoveLeft

	Limited_notleft:
		btst	#3,($FFFFF602).w ; is right being pressed?
		beq.s	Limited_notright	; if not, branch
		btst	#0,($FFFFFE2F).w	; GMZ: Have we got a reverse control power up?
		beq.s	JmpToLimit_MoveRight	; GMZ: If not, branch
		bsr.w	Limit_MoveLeft
		bra.s	Limited_notright

JmpToLimit_MoveRight:
		bsr.w	Limit_MoveRight

	Limited_notright:
		move.b	$26(a0),d0
		addi.b	#$20,d0
		andi.b	#$C0,d0		; is Limit on a	slope?
		bne.w	Limit_ResetScr	; if yes, branch
		tst.w	$14(a0)	; is Limit moving?
		bne.w	Limit_ResetScr	; if yes, branch
		bclr	#5,$22(a0)
        move.b	#5,$1C(a0) ; use standing animation
		btst	#3,$22(a0)
		beq.s	Limit_Balance
		moveq	#0,d0
		move.b	$3D(a0),d0
		lsl.w	#6,d0
		lea	($FFFFD000).w,a1
		lea	(a1,d0.w),a1
		tst.b	$22(a1)
		bmi.s	Limit_LookUp
		moveq	#0,d1
		move.b	$19(a1),d1
		move.w	d1,d2
		add.w	d2,d2
		subq.w	#4,d2
		add.w	8(a0),d1
		sub.w	8(a1),d1
		cmpi.w	#4,d1
;		blt.s	limit_loc_12F6A	
		cmp.w	d2,d1
;		bge.s	limit_loc_12F5A	
		bra.s	Limit_LookUp
; ===========================================================================

Limit_Balance:
		jsr	ObjHitFloor
		cmpi.w	#$C,d1
		blt.s	Limit_LookUp
		cmpi.b	#3,$36(a0)
		bne.s	limit_loc_12F62

 limit_loc_12F5A:
		bclr	#0,$22(a0)
		bra.s	limit_loc_12F70
; ===========================================================================

limit_loc_12F62:
		cmpi.b	#3,$37(a0)
		bne.s	Limit_LookUp

limit_loc_12F6A:
		bset	#0,$22(a0)

limit_loc_12F70:
		move.b	#6,$1C(a0) ; use "balancing" animation
		bra.s	Limit_ResetScr
; ===========================================================================

Limit_LookUp:
        btst    #0,($FFFFF602).w ; is up being pressed?
        beq.s    Limit_Duck    ; if not, branch
        move.b    #7,$1C(a0)    ; use "looking up" animation
        cmpi.w    #$C8,($FFFFF73E).w
        beq.s    limit_loc_12FC2
        addq.w    #2,($FFFFF73E).w
        bra.s    limit_loc_12FC2
; ===========================================================================

Limit_Duck:
        btst    #1,($FFFFF602).w ; is down being pressed?
        beq.s    Limit_ResetScr    ; if not, branch
        move.b    #8,$1C(a0)    ; use "ducking"    animation
        addq.w    #1,($FFFFF73E).w
        cmpi.w    #$78,($FFFFF73E).w
        bcs.s    Limit_ResetScr_Part2
        move.w    #$78,($FFFFF73E).w
        cmpi.w    #8,($FFFFF73E).w
        beq.s    limit_loc_12FC2
        subq.w    #2,($FFFFF73E).w
        bra.s    limit_loc_12FC2
; ===========================================================================

Limit_ResetScr:
        move.w    #0,($FFFFF73E).w
        
Limit_ResetScr_Part2:
        cmpi.w    #$60,($FFFFF73E).w ; is    screen in its default position?
        beq.s    limit_loc_12FC2    ; if yes, branch
        bcc.s    limit_loc_12FBE
        addq.w    #4,($FFFFF73E).w ; move    screen back to default

limit_loc_12FBE:
        subq.w    #2,($FFFFF73E).w ; move    screen back to default

limit_loc_12FC2:
		move.b	($FFFFF602).w,d0
		andi.b	#$C,d0	; is left/right	pressed?
		bne.s	limit_loc_12FEE	; if yes, branch
		move.w	$14(a0),d0
		beq.s	limit_loc_12FEE
		bmi.s	limit_loc_12FE2
		sub.w	d5,d0
		bcc.s	limit_loc_12FDC
		move.w	#0,d0

limit_loc_12FDC:
		move.w	#0,$14(a0)
		bra.s	limit_loc_12FEE
; ===========================================================================

limit_loc_12FE2:
		add.w	d5,d0
		bcc.s	limit_loc_12FEA
		move.w	#0,d0

limit_loc_12FEA:
		move.w	#0,$14(a0)

limit_loc_12FEE:
		move.b	$26(a0),d0
		jsr	(CalcSine).l
		muls.w	$14(a0),d1
		asr.l	#8,d1
		move.w	d1,$10(a0)
		muls.w	$14(a0),d0
		asr.l	#8,d0
		move.w	d0,$12(a0)

limit_loc_1300C:
		move.b	$26(a0),d0
		addi.b	#$40,d0
		bmi.s	limit_locret_1307C
		move.b	#$40,d1
		tst.w	$14(a0)
		beq.s	limit_locret_1307C
		bmi.s	limit_loc_13024
		neg.w	d1

limit_loc_13024:
		move.b	$26(a0),d0
		add.b	d1,d0
		move.w	d0,-(sp)
		jsr	Sonic_WalkSpeed
		move.w	(sp)+,d0
		tst.w	d1
		bpl.s	limit_locret_1307C
		asl.w	#8,d1
		addi.b	#$20,d0
		andi.b	#$C0,d0
		beq.s	limit_loc_13078
		cmpi.b	#$40,d0
		beq.s	limit_loc_13066
		cmpi.b	#$80,d0
		beq.s	limit_loc_13060
		add.w	d1,$10(a0)
		bset	#5,$22(a0)
		move.w	#0,$14(a0)
		rts	
; ===========================================================================

limit_loc_13060:
		sub.w	d1,$12(a0)
		rts	
; ===========================================================================

limit_loc_13066:
		sub.w	d1,$10(a0)
		bset	#5,$22(a0)
		move.w	#0,$14(a0)
		rts	
; ===========================================================================

limit_loc_13078:
		add.w	d1,$12(a0)

limit_locret_1307C:
		rts	
; End of function Limit_Move


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Limit_MoveLeft:
		move.w	$14(a0),d0
		beq.s	limit_loc_13086
		bpl.s	limit_loc_130B2

limit_loc_13086:
		bset	#0,$22(a0)
		bne.s	limit_loc_1309A
		bclr	#5,$22(a0)
		move.b	#1,$1D(a0)

limit_loc_1309A:
		sub.w	d5,d0
		move.w	d6,d1
		neg.w	d1
		cmp.w	d1,d0
		bgt.s	limit_loc_130A6
		add.w	d5,d0
		cmp.w	d1,d0
		ble.s	limit_loc_130A6
		move.w	d1,d0

limit_loc_130A6:
		move.w	#-960,$14(a0)
		move.b	#1,$1C(a0) ; use walking animation
		rts	
; ===========================================================================

limit_loc_130B2:
		sub.w	d4,d0
		bcc.s	limit_loc_130BA
		move.w	#-$80,d0

limit_loc_130BA:
		move.w	#0,$14(a0)
		move.b	$26(a0),d0
		addi.b	#$20,d0
		andi.b	#$C0,d0
		bne.s	limit_locret_130E8
		cmpi.w	#$00,d0
		blt.s	limit_locret_130E8
		move.b	#1,$1C(a0) ; use "stopping" animation
		bclr	#0,$22(a0)
;		move.w	#sfx_Skid,d0
;		jsr	(PlaySound_Special).l	; play stopping sound
;		move.b	#6,(v_player+$1C0+routine).w			; display skid dust
;		move.b	#$15,(v_player+$1C0+mapping_frame).w		

limit_locret_130E8:
		rts	
; End of function Limit_MoveLeft


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Limit_MoveRight:
		move.w	$14(a0),d0
		bmi.s	limit_loc_13118
		bclr	#0,$22(a0)
		beq.s	limit_loc_13104
		bclr	#5,$22(a0)
		move.b	#1,$1D(a0)

limit_loc_13104:
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s	limit_loc_1310C
		sub.w	d5,d0
		cmp.w	d6,d0
		bge.s	limit_loc_1310C
		move.w	d6,d0

limit_loc_1310C:
		move.w	#960,$14(a0)
		move.b	#1,$1C(a0) ; use walking animation
		rts	
; ===========================================================================

limit_loc_13118:
		add.w	d4,d0
		bcc.s	limit_loc_13120
		move.w	#$80,d0

limit_loc_13120:
		move.w	#0,$14(a0)
		move.b	$26(a0),d0
		addi.b	#$20,d0
		andi.b	#$C0,d0
		bne.s	limit_locret_1314E
		cmpi.w	#$00,d0
		bgt.s	limit_locret_1314E
		move.b	#1,$1C(a0) ; use "stopping" animation
		bset	#0,$22(a0)
;		move.w	#sfx_Skid,d0
;		jsr	(PlaySound_Special).l	; play stopping sound
;		move.b	#6,(v_player+$1C0+routine).w			; display skid dust
;		move.b	#$15,(v_player+$1C0+mapping_frame).w			

limit_locret_1314E:
		rts	
; End of function Limit_MoveRight
