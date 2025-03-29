; Minecraft: Very Legacy Console Edition
; Steve

; Offsets into playerObjVars
	rsreset
xPos		rs.l	1
yPos		rs.l	1
xVel		rs.w	1
yVel		rs.w	1

state		rs.b	1
flags		rs.b	1
frame		rs.b	1
heldItemID	rs.b	1

animTimer	rs.b	1
		rs.b	1

cursorXPos	rs.w	1
cursorYPos	rs.w	1

; ===========================================================================
; ---------------------------------------------------------------------------
; Process Player Logic
; ---------------------------------------------------------------------------
MC_Player:
		lea	(playerObjVars).w,a0
	
	; movement and collision
		;bsr.w	MC_PlayerControl
		;bsr.w	MC_PlayerMove
		;bsr.w	MC_PlayerCollision
		;bsr.w	MC_PlayerAnimate
		;bsr.w	MC_PlayerCursor
		;bsr.w	MC_PlayerDraw

.checkJump:
		btst.b	#BIT_B,(ctrlPressP1).w
		beq.s	.checkLeft
		move.w	#-$1C0,yVel(a0)

;.checkDown:
;		btst.b	#BIT_DOWN,(ctrlHoldP1).w
;		beq.s	.checkLeft
;		addq.w	#1,yPos(a0)

.checkLeft:
		btst.b	#BIT_LEFT,(ctrlHoldP1).w
		beq.s	.checkRight
		subi.w	#$10,xVel(a0)

		tst.w	xVel(a0)
		bmi.s	.checkCapLeft
		subi.w	#$C,xVel(a0)

.checkCapLeft:
		cmpi.w	#-$E0,xVel(a0)
		bgt.s	.updateBGPos
		move.w	#-$E0,xVel(a0)
		bra.s	.updateBGPos

.checkRight:
		btst.b	#BIT_RIGHT,(ctrlHoldP1).w
		beq.s	.decel
		addi.w	#$10,xVel(a0)
		
		tst.w	xVel(a0)
		bpl.s	.checkCapRight
		addi.w	#$C,xVel(a0)

.checkCapRight:
		cmpi.w	#$E0,xVel(a0)
		ble.s	.updateBGPos
		move.w	#$E0,xVel(a0)
		bra.s	.updateBGPos

.decel:
		tst.w	xVel(a0)
		beq.s	.updateBGPos
		bpl.s	.xVelPos

		addi.w	#$18,xVel(a0)
		bmi.s	.updateBGPos
		clr.w	xVel(a0)

.xVelPos:
		subi.w	#$18,xVel(a0)
		bpl.s	.updateBGPos
		clr.w	xVel(a0)

.updateBGPos:
		bsr.w	.blockCollision

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
	sprite_entry	SPR_2x2, -8, -8, (vramSteve/TILE), 0, 1, 0, 0
	sprite_entry	SPR_2x2, -8, -9, (vramSteve/TILE)+4, 0, 1, 0, 0

; ---------------------------------------------------------------------------
.applySpeedGrounded:
		movem.w	xVel(a0),d0-d1
		lsl.l	#8,d0
		add.l	d0,xPos(a0)
		lsl.l	#8,d1
		add.l	d1,yPos(a0)
		rts
; ---------------------------------------------------------------------------
.applySpeedFalling:
		movem.w	xVel(a0),d0-d1
		lsl.l	#8,d0
		add.l	d0,xPos(a0)
		addi.w	#$22,yVel(a0)

		cmpi.w	#$500,yVel(a0)
		ble.s	.noCap
		move.w	#$500,yVel(a0)

.noCap:
		lsl.l	#8,d1
		add.l	d1,yPos(a0)
		rts

; ---------------------------------------------------------------------------
.blockCollision:
		bsr.s	.applySpeedFalling

		lea	(mapCollBlocks).l,a1	; Load the world map collision layer into a1

		move.w	xPos(a0),d0
		lsr.w	#3,d0			; Divide by 8 to get the index of the tile within the row
		andi.w	#$FF,d0			; Cap to a maximum index value of 0xFF

		move.w	yPos(a0),d1
		addq.w	#8,d1
		asl.w	#5,d1			; Make into row offset
		andi.w	#$FF00,d1		; ^
		
		move.b	d0,d1
		move.b	(a1,d1.w),d0
		move.b	.blockProperties(pc,d0.w),d0
		beq.s	.inAir
		
		clr.w	yVel(a0)
		andi.l	#$FFF80000,yPos(a0)

.inAir:
		rts

; ---------------------------------------------------------------------------
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
