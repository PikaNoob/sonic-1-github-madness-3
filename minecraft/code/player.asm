; Minecraft: Very Legacy Console Edition
; Steve

; Offsets into playerObjVars
	rsreset
xPos		rs.l	1
yPos		rs.l	1
xVel		rs.w	1
yVel		rs.w	1

flags		rs.b	1
frame		rs.b	1
animTimer	rs.b	1
state		rs.b	1

ON_GROUND	equ	0

cursorXPos	rs.w	1
cursorYPos	rs.w	1
heldItemID	rs.w	1

; ===========================================================================
; ---------------------------------------------------------------------------
; Process Player Logic
; ---------------------------------------------------------------------------
MC_Player:
		lea	(playerObjVars).w,a0
	
	; movement and collision
		;bsr.w	MC_PlayerControl
		bsr.w	MC_PlayerMove
		bsr.w	MC_PlayerCollision
		;bsr.w	MC_PlayerAnimate
		;bsr.w	MC_PlayerCursor
		;bsr.w	MC_PlayerDraw

.updateBGPos:
	;	bsr.w	.blockCollision

		move.w	xPos(a0),d0
		sub.w	#160,d0
		move.w	d0,(camXposFG).w

		move.w	yPos(a0),d0
		sub.w	#112,d0
		move.w	d0,(camYposFG).w

;		subq.b	#1,animTimer(a0)
;		bpl.s	.render
;		move.b	#10,animTimer(a0)
;		bchg.b	#0,frame(a0)
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
		
		move.l	(a1)+,(a2)+
		
		move.w	(a1)+,d0
		add.w	#128,d0
		add.w	xPos(a0),d0
		sub.w	(camXposFG).w,d0
		move.w	d0,(a2)+

	; cursor logic

		rts

; ---------------------------------------------------------------------------
.playerFrames:
	sprite_entry	SPR_2x2, -8, -8-1, (vramSteve/TILE), 0, 1, 0, 0
	sprite_entry	SPR_2x2, -8, -9-1, (vramSteve/TILE)+4, 0, 1, 0, 0

; ---------------------------------------------------------------------------
MC_PlayerMove:
		bclr.b	#ON_GROUND,state(a0)		; Is the Player making contact with the ground?
		beq.s	.checkHorizInput		; If not, skip check for jump input

		btst.b	#BIT_B,(ctrlHoldP1).w		; Is the player holding the jump button?
		beq.s	.checkHorizInput		; If not, branch and check for 

		move.w	#-$1A0,yVel(a0)			; Set the player's Y velocity to move upwards
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
MC_PlayerCollision:
HITBOX_X	equ	4
HITBOX_Y	equ	7

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
