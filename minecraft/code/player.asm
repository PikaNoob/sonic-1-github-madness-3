; Minecraft: Very Legacy Console Edition
; Steve

; Offsets into playerObjVars
	rsreset
xPos		rs.l	1
yPos		rs.l	1
xVel		rs.w	1
yVel		rs.w	1

jumpTimer	rs.b	1
frame		rs.b	1
animTimer	rs.b	1
state		rs.b	1

ON_GROUND	equ	0
FACING_LEFT	equ	1
PLACE_MODE	equ	2
FACING_WALLS	equ	3
VERTICAL_BIAS	equ	4

IN_INVENTORY	equ	7

cursorXPos	rs.w	1
cursorYPos	rs.w	1
heldItemID	rs.b	1
doubleTapTimer	rs.b	1
punchTimer	rs.b	1
inventoryIndex	rs.b	1

HITBOX_X	equ	2
HITBOX_Y	equ	7

; ===========================================================================
; ---------------------------------------------------------------------------
; Process Player Logic
; ---------------------------------------------------------------------------
MC_Player:
		lea	(playerObjVars).w,a0

		btst.b	#BIT_START,(ctrlPressP1).w
		beq.s	.checkInventory
		bchg.b	#IN_INVENTORY,state(a0)

.checkInventory:
		tst.b	state(a0)
		bpl.s	.playerRoutines
		bra.w	MC_InventoryScreen

.playerRoutines:
		bsr.w	MC_PlayerMove
		bsr.w	MC_PlayerCollision
		bsr.w	MC_PlayerCursor
		;bsr.w	MC_PlayerAnimate
		;bsr.w	MC_PlayerDraw

.updateBGPos:
	;	bsr.w	.blockCollision

		move.w	xPos(a0),d0
		sub.w	#160,d0
		move.w	d0,(camXposFG).w

		move.w	yPos(a0),d0
		sub.w	#112,d0
		move.w	d0,(camYposFG).w

;		btst.b	#ON_GROUND,state(a0)
;		bne.s	.onGround
;
;		bset.b	#0,frame(a0)
;		move.b	#7,animTimer(a0)
;		bra.s	.checkFacingWalls
;
;.onGround:
		cmpi.b	#8,punchTimer(a0)
		blt.s	.noPunchFrame
		bset.b	#1,frame(a0)
		bra.s	.checkWalking

.noPunchFrame:
		bclr.b	#1,frame(a0)

.checkWalking:
		tst.w	xVel(a0)
		beq.s	.standing
		
		subq.b	#1,animTimer(a0)
		bpl.s	.checkFacingWalls

		move.b	#7,animTimer(a0)
		bchg.b	#0,frame(a0)
		bra.s	.checkFacingWalls

.standing:
		bclr.b	#0,frame(a0)
		move.b	#7,animTimer(a0)

.checkFacingWalls:
		btst.b	#FACING_WALLS,state(a0)
		beq.s	.notFacingWalls
		bset.b	#2,frame(a0)
		bra.s	.render

.notFacingWalls:
		bclr.b	#2,frame(a0)

.render:
		clr.w	d0
		move.b	frame(a0),d0
		lsl.w	#3,d0
		lea	.playerFrames(pc,d0.w),a1
		lea	(spriteList).w,a2

		move.w	(a1)+,d0
		add.w	#128,d0
		add.w	yPos(a0),d0
		sub.w	(camYposFG).w,d0
		move.w	d0,(a2)+
		
		move.w	(a1)+,(a2)+
		move.w	(a1)+,d0

		btst.b	#FACING_LEFT,state(a0)
		beq.s	.facingRight

		ori.w	#1<<11,d0

.facingRight:
		move.w	d0,(a2)+

		move.w	(a1)+,d0
		add.w	#128,d0
		add.w	xPos(a0),d0
		sub.w	(camXposFG).w,d0
		move.w	d0,(a2)+
		
		move.w	cursorYPos(a0),d0
	;	or.w	cursorXPos(a0),d0
		bpl.s	.renderCursor
		rts

; ---------------------------------------------------------------------------
.playerFrames:
	sprite_entry	SPR_2x2, -8, -8-1, (vramSteve/TILE), 0, 1, 0, 0
	sprite_entry	SPR_2x2, -8, -9-1, (vramSteve/TILE)+4, 0, 1, 0, 0
	sprite_entry	SPR_2x2, -8, -8-1, (vramSteve/TILE)+8, 0, 1, 0, 0
	sprite_entry	SPR_2x2, -8, -9-1, (vramSteve/TILE)+12, 0, 1, 0, 0

	sprite_entry	SPR_2x2, -8, -8-1, (vramSteve/TILE)+16, 0, 1, 0, 0
	sprite_entry	SPR_2x2, -8, -9-1, (vramSteve/TILE)+20, 0, 1, 0, 0
	sprite_entry	SPR_2x2, -8, -8-1, (vramSteve/TILE)+24, 0, 1, 0, 0
	sprite_entry	SPR_2x2, -8, -9-1, (vramSteve/TILE)+28, 0, 1, 0, 0
; ---------------------------------------------------------------------------
.renderCursor:
		btst.b	#PLACE_MODE,state(a0)
		bne.s	.renderBlockToPlace

.renderCursor2:
		btst.b	#0,(vblankCount+3).w
		beq.s	.exit

		lea	.cursorFrames(pc),a1
		move.b	#1,-5(a2)

		move.w	(a1)+,d0
		add.w	#128,d0
		add.w	cursorYPos(a0),d0
		sub.w	(camYposFG).w,d0
		move.w	d0,(a2)+

		move.l	(a1)+,(a2)+
		
		move.w	(a1)+,d0
		add.w	#128,d0
		add.w	cursorXPos(a0),d0
		sub.w	(camXposFG).w,d0
		move.w	d0,(a2)+
		rts

.renderBlockToPlace:
		btst.b	#0,(vblankCount+3).w
		beq.s	.exit

		lea	.blockFrames(pc),a1
		move.b	#1,-5(a2)

		move.w	(a1)+,d0
		add.w	#128,d0
		add.w	cursorYPos(a0),d0
		sub.w	(camYposFG).w,d0
		move.w	d0,(a2)+

		move.w	(a1)+,(a2)+

		lea	MC_BlockRenderProperties(pc),a3
		moveq	#0,d0
		move.b	heldItemID(a0),d0
		add.w	d0,d0
		move.w	(a3,d0.w),d0
		move.w	d0,(a2)+
		
		move.w	(a1)+,d0
		add.w	#128,d0
		add.w	cursorXPos(a0),d0
		sub.w	(camXposFG).w,d0
		move.w	d0,(a2)+

.exit:		
		rts

; ---------------------------------------------------------------------------
.cursorFrames:
	sprite_entry	SPR_1x1, 0, 0, (vramCursor/TILE), 3, 1, 0, 0

.blockFrames:
	sprite_entry	SPR_1x1, 0, 0, (vramEmptyTile/TILE), 0, 1, 0, 0
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Process Player Movement
; ---------------------------------------------------------------------------
MC_PlayerMove:
		subq.b	#1,jumpTimer(a0)
		bpl.s	.checkHorizInput
		clr.b	jumpTimer(a0)

		bclr.b	#ON_GROUND,state(a0)		; Is the Player making contact with the ground?
		beq.s	.checkHorizInput		; If not, skip check for jump input

		btst.b	#BIT_B,(ctrlHoldP1).w		; Is the player holding the jump button?
		beq.s	.checkHorizInput		; If not, branch and check for 

		move.w	#-$1A0,yVel(a0)			; Set the player's Y velocity to move upwards
		move.b	#20,jumpTimer(a0)
	;	bclr.b	#ON_GROUND,state(a0)		; Clear the 'ON_GROUND' flag

.checkHorizInput:
		moveq	#MASK_RIGHT+MASK_LEFT,d0	; Move a horizonal input mask into d0
		and.b	(ctrlHoldP1).w,d0		; Logically AND it against the input for this frame
		lsr.b	#1,d0				; Turn into a jump table index
		jsr	.horizRoutines(pc,d0.w)		; Use the resulting index to jump to the appropriate subroutine

.applyVelocity
		movem.w	xVel(a0),d0-d1	; Move velocties to d0 and d1 with sign-extension
		lsl.l	#8,d0		; Shift horizonal velocity up by 8 bits
		add.l	d0,xPos(a0)	; Add it to the current x-axis position
		lsl.l	#8,d1		; Shift vertical velocity up by 8 bits
		add.l	d1,yPos(a0)	; Add it to the current y-axis position

		addi.w	#$22,yVel(a0)	; Apply gravity to the stored vertical velocity
		cmpi.w	#$500,yVel(a0)	; Cap downward vertical velocity
		ble.s	.return		; ^
		move.w	#$500,yVel(a0)	; ^

.return:
		rts

; ===========================================================================
.horizRoutines:
		bra.s	.decelerate	; %00 - No horizontal input
		bra.s	.accelLeft	; %01 - Left horizontal input
		bra.s	.accelRight	; %10 - Right horizontal input
	;	bra.s	.decelerate	; %11 - Left and right horizontal input (impossible without tools; falls-through)
; ===========================================================================
.decelerate:
		tst.w	xVel(a0)	; Is horizontal velocity at zero?
		beq.s	.decelExit	; If so, exit the subroutine
		bpl.s	.xVelPos	; If it's positive, bracnh

		addi.w	#$18,xVel(a0)	; Otherwise, add the deceleration value to the horizontal velocity
		bmi.s	.decelExit	; If the horizontal velocity is still positive, exit
		clr.w	xVel(a0)	; Otherwise, the signage has flipped and we need to zero it first
		rts			; Exit

.xVelPos:
		subi.w	#$18,xVel(a0)	; Subtract the deceleration value to the horizontal velocity
		bpl.s	.decelExit	; If the horizontal velocity is still negative, exit
		clr.w	xVel(a0)	; Otherwise, the signage has flipped and we need to zero it first

.decelExit:
		rts			; Exit

; ===========================================================================
.accelLeft:
		bset.b	#FACING_LEFT,state(a0)
		subi.w	#$10,xVel(a0)	; Accelerate to the left by $10 units

		tst.w	xVel(a0)	; Is our are we traveling to the right?
		bmi.s	.leftCapVel	; If not, branch
		subi.w	#$C,xVel(a0)	; If so, accelerate to the left by an additional $C

.leftCapVel:
		cmpi.w	#-$E0,xVel(a0)	; Cap leftward velocity to $E0 units
		bgt.s	.accelLeftExit	; ^
		move.w	#-$E0,xVel(a0)	; ^

.accelLeftExit:
		rts			; Exit

; ===========================================================================
.accelRight:
		bclr.b	#FACING_LEFT,state(a0)
		addi.w	#$10,xVel(a0)	; Accelerate to the right by $10 units

		tst.w	xVel(a0)	; Is our are we traveling to the left?
		bpl.s	.rightCapVel	; If not, branch
		addi.w	#$C,xVel(a0)	; If so, accelerate to the right by an additional $C

.rightCapVel:
		cmpi.w	#$E0,xVel(a0)	; Cap rightward velocity to $E0 units
		ble.s	.accelRightExit	; ^
		move.w	#$E0,xVel(a0)	; ^

.accelRightExit:
		rts			; Exit

; ===========================================================================
; ---------------------------------------------------------------------------
; Hanldle Cursor Logic
; ---------------------------------------------------------------------------
MC_PlayerCursor:
		subq.b	#1,punchTimer(a0)
		bpl.s	.decDoubleTapTimer
		clr.b	punchTimer(a0)

.decDoubleTapTimer:
		subq.b	#1,doubleTapTimer(a0)
		bpl.s	.checkForDoubleTap
		clr.b	doubleTapTimer(a0)

.checkForDoubleTap:
		btst.b	#BIT_UP,(ctrlPressP1).w
		beq.s	.upNotPressed

		tst.b	doubleTapTimer(a0)
		beq.s	.setTimer

		bchg.b	#FACING_WALLS,state(a0)
		clr.b	doubleTapTimer(a0)
		bra.s	.upNotPressed

.setTimer:
		move.b	#15,doubleTapTimer(a0)

.upNotPressed:
		btst.b	#BIT_A,(ctrlPressP1).w
		beq.s	.noModeSwitch
		bchg.b	#PLACE_MODE,state(a0)

.noModeSwitch:
		btst.b	#FACING_WALLS,state(a0)
		bne.s	.facingWalls

		btst.b	#PLACE_MODE,state(a0)
		bne.s	MC_CursorPlaceFG
		bra.w	MC_CursorDestroyFG

.facingWalls:
		btst.b	#PLACE_MODE,state(a0)
		bne.w	MC_CursorPlaceBG
		bra.w	MC_CursorDestroyBG

; ===========================================================================
; ---------------------------------------------------------------------------
MC_CursorPlaceFG:
		lea	(mapCollBlocks).l,a1	; Load the world map collision layer into a1
		
		btst.b	#BIT_UP,(ctrlHoldP1).w
		bne.w	.cursorUp
		btst.b	#BIT_Down,(ctrlHoldP1).w
		bne.w	.cursorDown

.checkVerticalBias:
		move.w	#HITBOX_Y/2,d6
		btst.b	#VERTICAL_BIAS,state(a0)
		beq.s	.biasedDown
		neg.w	d6

.biasedDown:
		btst.b	#FACING_LEFT,state(a0)
		beq.w	.facingRight

.facingLeft:
		move.w	xPos(a0),d0		
		subq.w	#HITBOX_X,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		btst.b	#ON_GROUND,state(a0)
		beq.s	.inAirLeft

		move.w	yPos(a0),d3
		addq.w	#8,d3
		lsl.w	#5,d3			; Make into row offset
		move.b	d0,d3
		
		move.w	#4-1,d7

.marchLeftLedge:
		subq.b	#1,d3
		move.b	(a1,d3.w),d2
		beq.w	.airFound
		dbf	d7,.marchLeftLedge

.inAirLeft:
		move.w	yPos(a0),d1
		add.w	d6,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		moveq	#0,d3
		
.marchLeft:
		subq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.hitWallLeft
		move.w	d1,d3
		dbf	d7,.marchLeft

.hitWallLeft:
		tst.w	d3
		bne.w	.airFound

		neg.w	d6
		move.w	yPos(a0),d1
		add.w	d6,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		moveq	#0,d3
		
.marchLeftAgain:
		subq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.hitWallLeftAgain
		move.w	d1,d3
		dbf	d7,.marchLeftAgain

.hitWallLeftAgain:
		tst.w	d3
		bne.w	.airFound

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts
; ---------------------------------------------------------------------------
.facingRight:
		move.w	xPos(a0),d0		
		addq.w	#HITBOX_X,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		btst.b	#ON_GROUND,state(a0)
		beq.s	.inAirRight

		move.w	yPos(a0),d3
		addq.w	#8,d3
		lsl.w	#5,d3			; Make into row offset
		move.b	d0,d3
		
		move.w	#4-1,d7

.marchRightLedge:
		addq.b	#1,d3
		move.b	(a1,d3.w),d2
		beq.w	.airFound
		dbf	d7,.marchRightLedge

.inAirRight:
		move.w	yPos(a0),d1
		add.w	d6,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		moveq	#0,d3
		
.marchRight:
		addq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.hitWallRight
		move.w	d1,d3
		dbf	d7,.marchRight

.hitWallRight:
		tst.w	d3
		bne.w	.airFound

		neg.w	d6
		move.w	yPos(a0),d1
		add.w	d6,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		moveq	#0,d3
		
.marchRightAgain:
		addq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.hitWallRightAgain
		move.w	d1,d3
		dbf	d7,.marchRightAgain

.hitWallRightAgain:
		tst.w	d3
		bne.w	.airFound

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts
; ---------------------------------------------------------------------------
.cursorUp:
		bset.b	#VERTICAL_BIAS,state(a0)

		move.w	#HITBOX_X,d6
		btst.b	#FACING_LEFT,state(a0)
		beq.s	.rightBiasUp
		neg.w	d6

.rightBiasUp:
		move.w	xPos(a0),d0
		sub.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		swap	d0
		move.w	xPos(a0),d0
		add.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		move.w	yPos(a0),d1
		subq.w	#HITBOX_Y,d1
		lsl.w	#5,d1			; Make into row offset

		move.w	#4-1,d7
		moveq	#0,d3
		
.marchUp:
		subi.w	#$100,d1
		bmi.s	.hitCeiling

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.hitCeiling
		move.w	d1,d3

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.hitCeiling
		move.w	d1,d3
	
		dbf	d7,.marchUp

.hitCeiling:
		tst.w	d3
		bne.s	.airFound

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

; ---------------------------------------------------------------------------
.cursorDown:
		bclr.b	#VERTICAL_BIAS,state(a0)

		move.w	#HITBOX_X,d6
		btst.b	#FACING_LEFT,state(a0)
		beq.s	.rightBiasDown
		neg.w	d6

.rightBiasDown:
		move.w	xPos(a0),d0
		sub.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		swap	d0
		move.w	xPos(a0),d0
		add.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		move.w	yPos(a0),d1
		addq.w	#HITBOX_Y,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		moveq	#0,d3
		
.marchDown:
		addi.w	#$100,d1
		bmi.s	.hitFloor

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.hitFloor
		move.w	d1,d3

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.hitFloor
		move.w	d1,d3
	
		dbf	d7,.marchDown

.hitFloor:
		tst.w	d3
		bne.s	.airFound

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

; ---------------------------------------------------------------------------
.airFound:
		moveq	#0,d2

.checkBlockToRight:
		move.w	d3,d1
		addq.b	#1,d1
		move.b	(a1,d1.w),d2

.checkBlockToLeft:
		move.w	d3,d1
		subq.b	#1,d1
		or.b	(a1,d1.w),d2

.checkBlockBelow:
		move.w	d3,d1
		addi.w	#$100,d1
		bmi.s	.checkBlockAbove
		or.b	(a1,d1.w),d2

.checkBlockAbove:
		move.w	d3,d1
		subi.w	#$100,d1
		bmi.s	.testPlacement
		or.b	(a1,d1.w),d2

.testPlacement:
		tst.b	d2
		bne.s	.validPlacement
		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

.validPlacement:
		moveq	#0,d2
		move.b	d3,d2
		lsl.w	#3,d2
		move.w	d2,cursorXPos(a0)

		move.w	d3,d2
		andi.w	#$FF00,d2
		lsr.w	#5,d2
		move.w	d2,cursorYPos(a0)

		btst.b	#BIT_C,(ctrlPressP1).w	
		bne.s	.tryPlace

		btst.b	#BIT_C,(ctrlHoldP1).w	
		beq.s	.noPlace

		tst.b	punchTimer(a0)
		bne.s	.noPlace

.tryPlace:
		move.b	#14,punchTimer(a0)
		move.b	heldItemID(a0),(a1,d3.w)

.noPlace:
		rts

; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
MC_CursorDestroyFG:
		lea	(mapCollBlocks).l,a1	; Load the world map collision layer into a1
		
		btst.b	#BIT_UP,(ctrlHoldP1).w
		bne.w	.cursorUp
		btst.b	#BIT_Down,(ctrlHoldP1).w
		bne.w	.cursorDown

;.checkVerticalBias:
;		move.w	#HITBOX_Y/2,d6
;		btst.b	#VERTICAL_BIAS,state(a0)
;		beq.s	.biasedDown
;		neg.w	d6

;.biasedDown:
		btst.b	#FACING_LEFT,state(a0)
		beq.s	.facingRight

.facingLeft:
		move.w	xPos(a0),d0		
		subq.w	#HITBOX_X/2,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0
		
		move.w	yPos(a0),d1
;		add.w	d6,d1
		subq.w	#HITBOX_Y/2,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		swap	d1
		move.w	yPos(a0),d1
		addq.w	#HITBOX_Y/2,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		
.marchLeft:
		swap	d1
		subq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundHoriz

		swap	d1
		subq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundHoriz

		dbf	d7,.marchLeft

;		neg.w	d6
;		move.w	yPos(a0),d1
;		add.w	d6,d1
;		lsl.w	#5,d1			; Make into row offset
;		move.b	d0,d1
;
;		move.w	#4-1,d7
;		
;.marchLeftAgain:
;		subq.b	#1,d1
;		move.b	(a1,d1.w),d2
;		bne.s	.blockFoundHoriz
;		dbf	d7,.marchLeftAgain

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

; ---------------------------------------------------------------------------
.facingRight:
		move.w	xPos(a0),d0		
		addq.w	#HITBOX_X/2,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0
		
		move.w	yPos(a0),d1
;		add.w	d6,d1
		subq.w	#HITBOX_Y/2,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		swap	d1
		move.w	yPos(a0),d1
		addq.w	#HITBOX_Y/2,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		
.marchRight:
		swap	d1
		addq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundHoriz

		swap	d1
		addq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundHoriz

		dbf	d7,.marchRight

;		neg.w	d6
;		move.w	yPos(a0),d1
;		add.w	d6,d1
;		lsl.w	#5,d1			; Make into row offset
;		move.b	d0,d1

;		move.w	#4-1,d7
		
;.marchRightAgain:
;		addq.b	#1,d1
;		move.b	(a1,d1.w),d2
;		bne.w	.blockFoundHoriz
;		dbf	d7,.marchRightAgain

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

; ---------------------------------------------------------------------------
.blockFoundHoriz:
		moveq	#0,d2
		move.b	d1,d2
		lsl.w	#3,d2
		move.w	d2,cursorXPos(a0)

;		move.w	yPos(a0),d2
;		add.w	d6,d2
;		andi.w	#$FFF8,d2
;		move.w	d2,cursorYPos(a0)

		move.w	d1,d2
		andi.w	#$FF00,d2
		lsr.w	#5,d2
		move.w	d2,cursorYPos(a0)

		btst.b	#BIT_C,(ctrlPressP1).w	
		bne.s	.tryBreakHoriz

		btst.b	#BIT_C,(ctrlHoldP1).w	
		beq.s	.noBreakHoriz

		tst.b	punchTimer(a0)
		bne.s	.noBreakHoriz

.tryBreakHoriz:
		move.b	#14,punchTimer(a0)

		move.b	(a1,d1.w),d0
		cmpi.w	#$05,d0
		beq.s	.noBreakHoriz

		clr.b	(a1,d1.w)

.noBreakHoriz:
		rts

; ---------------------------------------------------------------------------
.cursorUp:
		bset.b	#VERTICAL_BIAS,state(a0)

		move.w	#HITBOX_X,d6
		btst.b	#FACING_LEFT,state(a0)
		beq.s	.rightBiasUp
		neg.w	d6

.rightBiasUp:
		move.w	xPos(a0),d0
		add.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		swap	d0
		move.w	xPos(a0),d0
		sub.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		move.w	yPos(a0),d1
		subq.w	#HITBOX_Y/2,d1
		lsl.w	#5,d1			; Make into row offset

		move.w	#4-1,d7
		
.marchUp:
		subi.w	#$100,d1
		bmi.s	.outOfBounds

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundVert

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundVert
	
		dbf	d7,.marchUp

.outOfBounds:
		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

; ---------------------------------------------------------------------------
.cursorDown:
		bclr.b	#VERTICAL_BIAS,state(a0)

		move.w	#HITBOX_X,d6
		btst.b	#FACING_LEFT,state(a0)
		beq.s	.rightBiasDown
		neg.w	d6

.rightBiasDown:
		move.w	xPos(a0),d0
		add.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		swap	d0
		move.w	xPos(a0),d0
		sub.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		move.w	yPos(a0),d1
		addq.w	#HITBOX_Y/2,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		
.marchDown:
		addi.w	#$100,d1

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundVert

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundVert

		dbf	d7,.marchDown

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

; ---------------------------------------------------------------------------
.blockFoundVert:
		moveq	#0,d2
		move.b	d1,d2
		lsl.w	#3,d2
		move.w	d2,cursorXPos(a0)

		move.w	d1,d2
		andi.w	#$FF00,d2
		lsr.w	#5,d2
		move.w	d2,cursorYPos(a0)

		btst.b	#BIT_C,(ctrlPressP1).w	
		bne.s	.tryBreakVert

		btst.b	#BIT_C,(ctrlHoldP1).w	
		beq.s	.noBreakVert

		tst.b	punchTimer(a0)
		bne.s	.noBreakVert

.tryBreakVert:
		move.b	#14,punchTimer(a0)

		move.b	(a1,d1.w),d0
		cmpi.w	#$05,d0
		beq.s	.noBreakVert

		clr.b	(a1,d1.w)

.noBreakVert:
		rts

; ---------------------------------------------------------------------------
; ===========================================================================
; ---------------------------------------------------------------------------
MC_CursorPlaceBG:
		lea	(mapCollBlocks).l,a1	; Load the world map collision layer into a1
		lea	(mapWallBlocks).l,a2	; Load the world map wall layer into a2
		
		btst.b	#BIT_UP,(ctrlHoldP1).w
		bne.w	.cursorUp
		btst.b	#BIT_Down,(ctrlHoldP1).w
		bne.w	.cursorDown

.checkVerticalBias:
		move.w	#HITBOX_Y/2,d6
		btst.b	#VERTICAL_BIAS,state(a0)
		beq.s	.biasedDown
		neg.w	d6

.biasedDown:
		btst.b	#FACING_LEFT,state(a0)
		beq.w	.facingRight

.facingLeft:
		move.w	xPos(a0),d0		
;		subq.w	#HITBOX_X,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		move.w	yPos(a0),d1
		add.w	d6,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		moveq	#0,d3
		
.marchLeft:
		subq.b	#1,d1
		move.b	(a1,d1.w),d2
		or.b	(a2,d1.w),d2
		bne.s	.hitWallLeft
		move.w	d1,d3
		dbf	d7,.marchLeft

.hitWallLeft:
		tst.w	d3
		bne.w	.airFound

		neg.w	d6
		move.w	yPos(a0),d1
		add.w	d6,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		moveq	#0,d3
		
.marchLeftAgain:
		subq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.hitWallLeftAgain
		move.w	d1,d3
		dbf	d7,.marchLeftAgain

.hitWallLeftAgain:
		tst.w	d3
		bne.w	.airFound

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts
; ---------------------------------------------------------------------------
.facingRight:
		move.w	xPos(a0),d0		
;		addq.w	#HITBOX_X,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		move.w	yPos(a0),d1
		add.w	d6,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		moveq	#0,d3
		
.marchRight:
		addq.b	#1,d1
		move.b	(a1,d1.w),d2
		or.b	(a2,d1.w),d2
		bne.s	.hitWallRight
		move.w	d1,d3
		dbf	d7,.marchRight

.hitWallRight:
		tst.w	d3
		bne.w	.airFound

		neg.w	d6
		move.w	yPos(a0),d1
		add.w	d6,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		moveq	#0,d3
		
.marchRightAgain:
		addq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.hitWallRightAgain
		move.w	d1,d3
		dbf	d7,.marchRightAgain

.hitWallRightAgain:
		tst.w	d3
		bne.w	.airFound

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts
; ---------------------------------------------------------------------------
.cursorUp:
		bset.b	#VERTICAL_BIAS,state(a0)

		move.w	#HITBOX_X,d6
		btst.b	#FACING_LEFT,state(a0)
		beq.s	.rightBiasUp
		neg.w	d6

.rightBiasUp:
		move.w	xPos(a0),d0
		sub.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		swap	d0
		move.w	xPos(a0),d0
		add.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		move.w	yPos(a0),d1
;		subq.w	#HITBOX_Y,d1
		lsl.w	#5,d1			; Make into row offset

		move.w	#4-1,d7
		moveq	#0,d3
		
.marchUp:
		subi.w	#$100,d1
		bmi.s	.hitCeiling

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		or.b	(a2,d1.w),d2
		bne.s	.hitCeiling
		move.w	d1,d3

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		or.b	(a2,d1.w),d2
		bne.s	.hitCeiling
		move.w	d1,d3
	
		dbf	d7,.marchUp

.hitCeiling:
		tst.w	d3
		bne.s	.airFound

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

; ---------------------------------------------------------------------------
.cursorDown:
		bclr.b	#VERTICAL_BIAS,state(a0)

		move.w	#HITBOX_X,d6
		btst.b	#FACING_LEFT,state(a0)
		beq.s	.rightBiasDown
		neg.w	d6

.rightBiasDown:
		move.w	xPos(a0),d0
		sub.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		swap	d0
		move.w	xPos(a0),d0
		add.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		move.w	yPos(a0),d1
;		addq.w	#HITBOX_Y,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		moveq	#0,d3
		
.marchDown:
		addi.w	#$100,d1
		bmi.s	.hitFloor

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.hitFloor
		move.w	d1,d3

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.hitFloor
		move.w	d1,d3
	
		dbf	d7,.marchDown

.hitFloor:
		tst.w	d3
		bne.s	.airFound

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

; ---------------------------------------------------------------------------
.airFound:
		moveq	#0,d2

.checkBlockToRight:
		move.w	d3,d1
		addq.b	#1,d1
		move.b	(a1,d1.w),d2
		or.b	(a2,d1.w),d2

.checkBlockToLeft:
		move.w	d3,d1
		subq.b	#1,d1
		or.b	(a1,d1.w),d2
		or.b	(a2,d1.w),d2

.checkBlockBelow:
		move.w	d3,d1
		addi.w	#$100,d1
		bmi.s	.checkBlockAbove
		or.b	(a1,d1.w),d2
		or.b	(a2,d1.w),d2

.checkBlockAbove:
		move.w	d3,d1
		subi.w	#$100,d1
		bmi.s	.testPlacement
		or.b	(a1,d1.w),d2
		or.b	(a2,d1.w),d2

.testPlacement:
		tst.b	d2
		bne.s	.validPlacement
		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

.validPlacement:
		moveq	#0,d2
		move.b	d3,d2
		lsl.w	#3,d2
		move.w	d2,cursorXPos(a0)

		move.w	d3,d2
		andi.w	#$FF00,d2
		lsr.w	#5,d2
		move.w	d2,cursorYPos(a0)

		btst.b	#BIT_C,(ctrlPressP1).w	
		bne.s	.tryPlace

		btst.b	#BIT_C,(ctrlHoldP1).w	
		beq.s	.noPlace

		tst.b	punchTimer(a0)
		bne.s	.noPlace

.tryPlace:
		move.b	#14,punchTimer(a0)
		move.b	heldItemID(a0),(a2,d3.w)

.noPlace:
		rts

; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
MC_CursorDestroyBG:
		lea	(mapWallBlocks).l,a1	; Load the world map wall layer into a1
		
		btst.b	#BIT_UP,(ctrlHoldP1).w
		bne.w	.cursorUp
		btst.b	#BIT_Down,(ctrlHoldP1).w
		bne.w	.cursorDown

		btst.b	#FACING_LEFT,state(a0)
		beq.s	.facingRight

.facingLeft:
		move.w	xPos(a0),d0		
	;	subq.w	#HITBOX_X/2,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0
		
		move.w	yPos(a0),d1
		subq.w	#HITBOX_Y/2,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		swap	d1
		move.w	yPos(a0),d1
		addq.w	#HITBOX_Y/2,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		
.marchLeft:
		swap	d1
		subq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundHoriz

		swap	d1
		subq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundHoriz

		dbf	d7,.marchLeft

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

; ---------------------------------------------------------------------------
.facingRight:
		move.w	xPos(a0),d0		
	;	addq.w	#HITBOX_X/2,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0
		
		move.w	yPos(a0),d1
		subq.w	#HITBOX_Y/2,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		swap	d1
		move.w	yPos(a0),d1
		addq.w	#HITBOX_Y/2,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		
.marchRight:
		swap	d1
		addq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundHoriz

		swap	d1
		addq.b	#1,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundHoriz

		dbf	d7,.marchRight

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

; ---------------------------------------------------------------------------
.blockFoundHoriz:
		lea	(mapCollBlocks).l,a2	; Load the world map collision layer into a1
		move.b	(a2,d1.w),d2
		beq.s	.validSelectHoriz

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

.validSelectHoriz:
		moveq	#0,d2
		move.b	d1,d2
		lsl.w	#3,d2
		move.w	d2,cursorXPos(a0)

		move.w	d1,d2
		andi.w	#$FF00,d2
		lsr.w	#5,d2
		move.w	d2,cursorYPos(a0)

		btst.b	#BIT_C,(ctrlPressP1).w	
		bne.s	.tryBreakHoriz

		btst.b	#BIT_C,(ctrlHoldP1).w	
		beq.s	.noBreakHoriz

		tst.b	punchTimer(a0)
		bne.s	.noBreakHoriz

.tryBreakHoriz:
		move.b	#14,punchTimer(a0)

		move.b	(a1,d1.w),d0
		cmpi.w	#$05,d0
		beq.s	.noBreakHoriz

		clr.b	(a1,d1.w)

.noBreakHoriz:
		rts

; ---------------------------------------------------------------------------
.cursorUp:
		bset.b	#VERTICAL_BIAS,state(a0)

		move.w	#HITBOX_X,d6
		btst.b	#FACING_LEFT,state(a0)
		beq.s	.rightBiasUp
		neg.w	d6

.rightBiasUp:
		move.w	xPos(a0),d0
		add.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		swap	d0
		move.w	xPos(a0),d0
		sub.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		move.w	yPos(a0),d1
	;	subq.w	#HITBOX_Y/2,d1
		lsl.w	#5,d1			; Make into row offset

		move.w	#4-1,d7
		
.marchUp:
		subi.w	#$100,d1
		bmi.s	.outOfBounds

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundVert

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundVert
	
		dbf	d7,.marchUp

.outOfBounds:
		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

; ---------------------------------------------------------------------------
.cursorDown:
		bclr.b	#VERTICAL_BIAS,state(a0)

		move.w	#HITBOX_X,d6
		btst.b	#FACING_LEFT,state(a0)
		beq.s	.rightBiasDown
		neg.w	d6

.rightBiasDown:
		move.w	xPos(a0),d0
		add.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		swap	d0
		move.w	xPos(a0),d0
		sub.w	d6,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0

		move.w	yPos(a0),d1
	;	addq.w	#HITBOX_Y/2,d1
		lsl.w	#5,d1			; Make into row offset
		move.b	d0,d1

		move.w	#4-1,d7
		
.marchDown:
		addi.w	#$100,d1

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundVert

		swap	d0
		move.b	d0,d1
		move.b	(a1,d1.w),d2
		bne.s	.blockFoundVert

		dbf	d7,.marchDown

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

; ---------------------------------------------------------------------------
.blockFoundVert:
		lea	(mapCollBlocks).l,a2	; Load the world map collision layer into a1
		move.b	(a2,d1.w),d2
		beq.s	.validSelectVert

		move.w	#$8000,cursorXPos(a0)
		move.w	#$8000,cursorYPos(a0)
		rts

.validSelectVert:
		moveq	#0,d2
		move.b	d1,d2
		lsl.w	#3,d2
		move.w	d2,cursorXPos(a0)

		move.w	d1,d2
		andi.w	#$FF00,d2
		lsr.w	#5,d2
		move.w	d2,cursorYPos(a0)

		btst.b	#BIT_C,(ctrlPressP1).w	
		bne.s	.tryBreakVert

		btst.b	#BIT_C,(ctrlHoldP1).w	
		beq.s	.noBreakVert

		tst.b	punchTimer(a0)
		bne.s	.noBreakVert

.tryBreakVert:
		move.b	#14,punchTimer(a0)

		move.b	(a1,d1.w),d0
		cmpi.w	#$05,d0
		beq.s	.noBreakVert

		clr.b	(a1,d1.w)

.noBreakVert:
		rts

; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Process Player Collision
; ---------------------------------------------------------------------------
MC_PlayerCollision:
		lea	(mapCollBlocks).l,a1	; Load the world map collision layer into a1

;.checkLeft:
	; Left Wall Collision
		move.w	xPos(a0),d0		
		subq.w	#HITBOX_X,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0			
		move.w	d0,d1

		move.w	yPos(a0),d2
		move.w	d2,d3
		subq.w	#HITBOX_Y/2,d2
		lsl.w	#5,d2			; Make into row offset
		addq.w	#HITBOX_Y/2,d3
		lsl.w	#5,d3			; Make into row offset

		bsr.w	.checkForSolidity
		beq.s	.checkRight

		clr.w	xVel(a0)
		addq.w	#1,xPos(a0)

.checkRight:
	; Right Wall Collision
		move.w	xPos(a0),d0		
		addq.w	#HITBOX_X,d0
		lsr.w	#3,d0
		andi.w	#$FF,d0			
		move.w	d0,d1

		move.w	yPos(a0),d2
		move.w	d2,d3
		subq.w	#HITBOX_Y/2,d2
		lsl.w	#5,d2			; Make into row offset
		addq.w	#HITBOX_Y/2,d3
		lsl.w	#5,d3			; Make into row offset

		bsr.s	.checkForSolidity
		beq.s	.checkCeiling

		clr.w	xVel(a0)
		subq.w	#1,xPos(a0)


.checkCeiling:
	; Ceiling Collision
		move.w	xPos(a0),d0		; Get the player's current x-axis position
		move.w	d0,d1			; Copy it to d1 as well

		subq.w	#HITBOX_X/2,d0		; Subtract 3 to get the position of the left edge of the hitbox
		lsr.w	#3,d0			; Divide by 8 to get the index of the tile within the row
		andi.w	#$FF,d0			; Cap to a maximum index value of 0xFF

		addq.w	#HITBOX_X/2,d1		; Repeat the above process for the right edge of the hitbox
		lsr.w	#3,d1			; Divide by 8 to get the index of the tile within the row
		andi.w	#$FF,d1			; Cap to a maximum index value of 0xFF

		move.w	yPos(a0),d2
		subq.w	#HITBOX_Y,d2
		lsl.w	#5,d2			; Make into row offset
	;	andi.w	#$FF00,d2		; ^
		move.w	d2,d3

		bsr.s	.checkForSolidity
		beq.s	.checkGround

		clr.w	yVel(a0)
		addq.w	#1,yPos(a0)

.checkGround:
	; Ground Collision 
		move.w	xPos(a0),d0		; Get the player's current x-axis position
		move.w	d0,d1			; Copy it to d1 as well

		subq.w	#HITBOX_X/2,d0		; Subtract 3 to get the position of the left edge of the hitbox
		lsr.w	#3,d0			; Divide by 8 to get the index of the tile within the row
		andi.w	#$FF,d0			; Cap to a maximum index value of 0xFF

		addq.w	#HITBOX_X/2,d1		; Repeat the above process for the right edge of the hitbox
		lsr.w	#3,d1			; Divide by 8 to get the index of the tile within the row
		andi.w	#$FF,d1			; Cap to a maximum index value of 0xFF

		move.w	yPos(a0),d2
		addq.w	#HITBOX_Y,d2
		lsl.w	#5,d2			; Make into row offset
	;	andi.w	#$FF00,d2		; ^
		move.w	d2,d3
		
		bsr.s	.checkForSolidity
		beq.s	.inAir

		clr.w	yVel(a0)
		andi.l	#$FFF80000,yPos(a0)
		addq.w	#8-HITBOX_Y,yPos(a0)
		bset.b	#ON_GROUND,state(a0)	; set the 'ON_GROUND' flag

.inAir:
		rts

; ===========================================================================
; d0-d2/d1-d3 - x and y coordinates within level data of the blocks to be checked
.checkForSolidity:
		move.b	d0,d2			; Check first block along edge
		move.b	(a1,d2.w),d0
		move.b	.blockProperties(pc,d0.w),d0
		bne.s	.foundSolid

		move.b	d1,d3			; Check second block along edge
		move.b	(a1,d3.w),d1
		move.b	.blockProperties(pc,d1.w),d1

.foundSolid:
		rts

; ===========================================================================
.blockProperties:
	dc.b	0			; 00 Air
	dc.b	1			; 01 Stone
	dc.b	1			; 02 Dirt
	dc.b	1			; 03 Grass
	dc.b	1			; 04 Cobblestone
	dc.b	1			; 05 Bedrock
	dc.b	1			; 06 Smooth Stone Slab
	dc.b	1			; 07 Gravel
	dc.b	1			; 08 Mossy Cobblestone
	dc.b	1			; 09 Leaves
	dc.b	1			; 0A Wood
	dc.b	1			; 0B Wooden Planks
	dc.b	1			; 0C Coal Ore
	dc.b	1			; 0D Iron Ore
	dc.b	1			; 0E Gold Ore
	dc.b	1			; 0F Diamond Ore
	dc.b	1			; 10 Iron Block
	dc.b	1			; 11 Gold Block
	dc.b	1			; 12 Diamond Block
	dc.b	1			; 13 Bricks
	dc.b	1			; 14 TNT
	dc.b	1			; 15 Sand
	dc.b	1			; 16 Glass
	dc.b	1			; 17 Obsidian
	dc.b	0			; 18 Sapling
	dc.b	0			; 19 Brown Mushroom
	dc.b	0			; 1A Red Mushroom
	dc.b	0			; 1B Dandelion
	dc.b	0			; 1C Rose
	dc.b	0			; 1D Null
	dc.b	0			; 1E Null
	dc.b	0			; 1F Null

	dc.b	1			; 20 White Wool
	dc.b	1			; 21 Silver Wool
	dc.b	1			; 22 Gray Wool
	dc.b	1			; 23 Charcoal Wool
	dc.b	1			; 24 Black Wool
	dc.b	1			; 25 Crimson Wool
	dc.b	1			; 26 Peach Wool
	dc.b	1			; 27 Bronze Wool
	dc.b	1			; 28 Goldenrod Wool
	dc.b	1			; 29 Lime Wool
	dc.b	1			; 2A Green Wool
	dc.b	1			; 2B Turquoise Wool
	dc.b	1			; 2C Indigo Wool
	dc.b	1			; 2D Violet Wool
	dc.b	1			; 2E Cacao Wool
	even
; ---------------------------------------------------------------------------

MC_InventoryScreen:
		move.b	#MASK_A+MASK_B+MASK_C,d0
		and.b	(ctrlPressP1).w,d0
		beq.s	.checkLeft
		bclr.b	#IN_INVENTORY,state(a0)

.checkLeft:
		btst.b	#BIT_LEFT,(ctrlPressP1).w
		beq.s	.checkRight
		subq.b	#1,inventoryIndex(a0)

.checkRight:
		btst.b	#BIT_RIGHT,(ctrlPressP1).w
		beq.s	.checkUp
		addq.b	#1,inventoryIndex(a0)

.checkUp:
		btst.b	#BIT_UP,(ctrlPressP1).w
		beq.s	.checkDown
		subi.b	#9,inventoryIndex(a0)

.checkDown:
		btst.b	#BIT_DOWN,(ctrlPressP1).w
		beq.s	.checkBounds
		addi.b	#9,inventoryIndex(a0)

.checkBounds:
		tst.b	inventoryIndex(a0)
		bpl.s	.checkMax
		clr.b	inventoryIndex(a0)

.checkMax:
		cmpi.b	#41,inventoryIndex(a0)
		ble.s	.inBounds
		move.b	#41,inventoryIndex(a0)

.inBounds:
		moveq	#0,d0
		move.b	inventoryIndex(a0),d0
		move.b	.inventoryItemIDs(pc,d0.w),heldItemID(a0)

	; drawing
		divu.w	#9,d0

		move.w	d0,d2	; Y pos
		mulu.w	#24,d2

		swap	d0	; X pos
		move.w	d0,d1
		mulu.w	#24,d1

		lea	.cursorFrame(pc),a1
		lea	(spriteList).w,a2

		move.w	(a1)+,d0
		add.w	#128+48,d0
		add.w	d2,d0
		move.w	d0,(a2)+
		
		move.l	(a1)+,(a2)+

		move.w	(a1)+,d0
		add.w	#128+56,d0
		add.w	d1,d0
		move.w	d0,(a2)+
		rts
; ---------------------------------------------------------------------------
.cursorFrame:
	sprite_entry	SPR_2x2, 0, 0, (vramCursor/TILE), 3, 1, 0, 0

; ---------------------------------------------------------------------------
.inventoryItemIDs:
	dc.b	$01	; 01 Stone
	dc.b	$04	; 04 Cobblestone
	dc.b	$13	; 13 Bricks
	dc.b	$02	; 02 Dirt
	dc.b	$0B	; 0B Wooden Planks
	dc.b	$0A	; 0A Wood
	dc.b	$09	; 09 Leaves
	dc.b	$16	; 16 Glass
	dc.b	$06	; 06 Smooth Stone Slab
	dc.b	$08	; 08 Mossy Cobblestone
	dc.b	$18	; 18 Sapling
	dc.b	$1B	; 1B Dandelion
	dc.b	$1C	; 1C Rose
	dc.b	$19	; 19 Brown Mushroom
	dc.b	$1A	; 1A Red Mushroom
	dc.b	$15	; 15 Sand
	dc.b	$07	; 07 Gravel
	dc.b	$03	; 03 Grass
	dc.b	$21	; 25 Crimson Wool
	dc.b	$24	; 26 Peach Wool
	dc.b	$1F	; 27 Bronze Wool
	dc.b	$23	; 28 Goldenrod Wool
	dc.b	$1E	; 29 Lime Wool
	dc.b	$22	; 2A Green Wool
	dc.b	$23	; 2B Turquoise Wool
	dc.b	$1E	; 2C Indigo Wool
	dc.b	$1E	; 2D Violet Wool
	dc.b	$20	; 2E Cacao Wool
	dc.b	$24	; 20 White Wool
	dc.b	$24	; 21 Silver Wool
	dc.b	$1D	; 22 Gray Wool
	dc.b	$23	; 23 Charcoal Wool
	dc.b	$21	; 24 Black Wool
	dc.b	$10	; 10 Iron Block
	dc.b	$11	; 11 Gold Block
	dc.b	$12	; 12 Diamond Block
	dc.b	$0C	; 0C Coal Ore
	dc.b	$0D	; 0D Iron Ore
	dc.b	$0E	; 0E Gold Ore
	dc.b	$0F	; 0F Diamond Ore
	dc.b	$14	; 14 TNT
	dc.b	$17	; 17 Obsidian
	even