; Minecraft: Very Legacy Console Edition
; Main file

	align	$20000
	opt	l.
	include	"minecraft\code\variables.asm"
	include	"minecraft\code\macros.asm"

MC_Init:
		intsOff						; disable CPU interrupts
		move.l	#MC_VInt,(vBlankAdress).w

		lea	($C00004).l,a6				; load the address of the VDP control port into a6
		move.w	#$8134,(a6)				; disable display

		move.w	#$8004,(a6)
		move.w	#$8200+(VRAM_PLANE_A>>10),(a6)		; set plane A address
		move.w	#$8300+(VRAM_PLANE_W>>10),(a6)		; set plane W address
		move.w	#$8400+(VRAM_PLANE_B>>13),(a6)		; set plane B address
		move.w	#$8500+(VRAM_SPR_LIST>>9),(a6)		; set sprite table address
		
		move.w	#$8B03,(a6)				; EXT-INT off, VScroll by screen, HScroll by line
		move.w	#$8D00+(VRAM_HSCROLL>>10),(a6)		; set HScroll table address
		move.w	#$8F02,(a6)				; set auto-incremement size to word
		move.w	#$9001,(a6)				; set plane size 64x32

		clrRAM	mcRAM					; clear all the RAM used by Minecraft
		bsr.w	MC_ClearScreen				; clear VRAM, CRAM, and VSRAM

.waitVBlank:	
		move.w	(a6),ccr				; is v-blank active?
		bpl.s	.waitVBlank				; if not, wait for it to start

	dma68k	MC_Palette,$0000,$40*2,CRAM				; load in the palette
	dma68k	MC_Terrain,vramTerrain,MC_Terrain_End-MC_Terrain,VRAM	; load in the block art
	dma68k	MC_Steve,vramSteve,MC_Steve_End-MC_Steve,VRAM		; load player art
	dma68k	MC_Cursor,vramCursor,MC_Cursor_End-MC_Cursor,VRAM	; load cursor art
	
		bsr.w	MC_LoadBackground
		bsr.w	MC_LoadWorld

		move.w	#$8C89,(a6)				; set screen size and enable shadow/highlight mode
		move.w	#$8174,(a6)				; enable display
		intsOn						; enable CPU interrupts

		clr.w	(cloudFrameCnt).w

		move.w	#128,(playerObjVars+xPos).w
		move.w	#240,(playerObjVars+yPos).w

.gameLoop:
		st.b	(vblankWait).w

	; Camera Test

;.updateBGPos:

;		move.w	(camYposFG).w,d0
;		lsr.w	#4,d0
;		move.w	d0,(camYposBG).w

		bsr.w	MC_Player

		move.w	(camXposFG).w,d0
		lsr.w	#1,d0
		move.w	d0,(camXposBG).w

		bsr.w	MC_UpdateScrollBuffer
		bsr.s	MC_RenderBlocks

.spin:
		tst.b	(vblankWait).w
		beq.s	.gameLoop
		bra.s	.spin
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Render the Visible Portion of the World to the Screen
; ---------------------------------------------------------------------------
MC_RenderBlocks:
		lea	(mapCollBlocks).l,a0	; Load the world map collision layer into a0
		lea	(mapWallBlocks).l,a1	; Load the world map wall layer into a1
		lea	(planeBuffer).w,a2	; Load the plane A buffer into a2
		moveq	#0,d3			; Clear d3
		moveq	#28,d6			; Load the number of rows as the outer loop counter

		move.w	(camXPosFG).w,d0	; Get the camera's x coordinate
		lsr.w	#3,d0			; Divide by 8 to get the index of the tile within the row
		andi.w	#$FF,d0			; Cap to a maximum index value of 0xFF

		move.w	(camYPosFG).w,d1	; Get the camera's y coordinate
		lsl.w	#5,d1			; Make into row offset
		andi.w	#$FF00,d1		; ^
		bra.s	.renderScreen

.abovePlayfield:
		moveq	#40,d7			; Load the number of blocks in each row as the inner loop counter

.renderNullRow:
		move.w	#$8000,(a2)+		; Render an air block to the current tile index
		dbf	d7,.renderNullRow	; Loop until the entire null row is rendered

		adda.w	#(64-41)*2,a2		; Skip the rest of the row in the plane buffer
		addi.w	#$100,d1		; Increment to the next row
		bpl.s	.inBounds		; If the result has flipped to a positive index, switch to world rendering

		dbf	d6,.abovePlayfield	; Loop until the entire screen is rendered
		rts
; ---------------------------------------------------------------------------

.renderScreen:
		moveq	#40,d7			; Load the number of blocks in each row as the inner loop counter
		move.w	d1,d2			; Load the offset into the current row into d2
		move.b	d0,d2			; ^

.renderRow:
		move.b	(a0,d2.w),d3		; Get the block ID at the current main layout coordinates
		beq.s	.renderWall

		move.w	#$8000,d4			; Set the priority bit
		add.w	d3,d3				; Turn tile ID into index
		or.w	.renderProperties(pc,d3.w),d4	; Combine with the tile render properties
		move.w	d4,(a2)+			; Load the corresponding tile to the plane A buffer
		
		addq.b	#1,d2			; Increment the index with wrap-around within the current row
		dbf	d7,.renderRow		; Loop until the entire visible row is rendered
		bra.s	.endRenderRow		; Branch

.renderWall:
		move.b	(a1,d2.w),d3				; Get the block ID at the current wall layout coordinates
		add.w	d3,d3					; Turn tile ID into index
		move.w	.renderProperties(pc,d3.w),(a2)+	; Load the corresponding tile to the plane A buffer

		addq.b	#1,d2			; Increment the index with wrap-around within the current row
		dbf	d7,.renderRow		; Loop until the entire visible row is rendered

.endRenderRow:
		adda.w	#(64-41)*2,a2		; Skip the rest of the row in the plane buffer
		addi.w	#$100,d1		; Increment to the next row
		cmpi.w	#$3F00,d1		; Check to make sure we're still in bounds
		blt.s	.inBounds		; If so, branch
		move.w	#$3F00,d1		; If not, render the last row for the rest of the screen (Bedrock)

.inBounds:	
		dbf	d6,.renderScreen	; Loop until the entire screen is rendered
		rts

; ---------------------------------------------------------------------------
block_entry	macro	tileID, palLine, priority
	if (narg<3)
		dc.w	(palLine<<13)|tileID
	else
		dc.w	$8000|(palLine<<13)|tileID
	endif
		endm

.renderProperties:
	block_entry	$00,0,1			; 00 Air
	block_entry	$01,1			; 01 Stone
	block_entry	$02,1			; 02 Dirt
	block_entry	$03,1			; 03 Grass
	block_entry	$04,1			; 04 Cobblestone
	block_entry	$05,1			; 05 Bedrock
	block_entry	$06,1			; 06 Smooth Stone Slab
	block_entry	$07,1			; 07 Gravel
	block_entry	$08,1			; 08 Mossy Cobblestone
	block_entry	$09,1			; 09 Leaves
	block_entry	$0A,1			; 0A Wood
	block_entry	$0B,1			; 0B Wooden Planks
	block_entry	$0C,1			; 0C Coal Ore
	block_entry	$0D,1			; 0D Iron Ore
	block_entry	$0E,2			; 0E Gold Ore
	block_entry	$0F,2			; 0F Diamond Ore
	block_entry	$10,2			; 10 Iron Block
	block_entry	$11,2			; 11 Gold Block
	block_entry	$12,0			; 12 Diamond Block
	block_entry	$13,2			; 13 Bricks
	block_entry	$14,2			; 14 TNT
	block_entry	$15,2			; 15 Sand
	block_entry	$16,0			; 16 Glass
	block_entry	$17,0			; 17 Obsidian
	block_entry	$18,1			; 18 Sapling
	block_entry	$19,1			; 19 Brown Mushroom
	block_entry	$1A,2			; 1A Red Mushroom
	block_entry	$1B,2			; 1B Dandelion
	block_entry	$1C,2			; 1C Rose
	block_entry	$00,0			; 1D Null
	block_entry	$00,0			; 1E Null
	block_entry	$00,0			; 1F Null

	block_entry	$24,2			; 20 White Wool
	block_entry	$24,1			; 21 Silver Wool
	block_entry	$1D,1			; 22 Gray Wool
	block_entry	$23,1			; 23 Charcoal Wool
	block_entry	$21,0			; 24 Black Wool
	block_entry	$21,2			; 25 Crimson Wool
	block_entry	$24,0			; 26 Peach Wool
	block_entry	$1F,1			; 27 Bronze Wool
	block_entry	$23,2			; 28 Goldenrod Wool
	block_entry	$1E,1			; 29 Lime Wool
	block_entry	$22,1			; 2A Green Wool
	block_entry	$23,0			; 2B Turquoise Wool
	block_entry	$1E,0			; 2C Indigo Wool
	block_entry	$1E,2			; 2D Violet Wool
	block_entry	$20,1			; 2E Cacao Wool
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Update Foreground and Background Scrolling
; ---------------------------------------------------------------------------
CLOUD_SCROLL_RATE	equ	1280

MC_UpdateScrollBuffer:
		lea	(scrollBuffer).w,a0
		moveq	#20-1,d7
		move.w	(camXPosFG).w,d0
		andi.w	#7,d0
		neg.w	d0
		swap	d0
		clr.w	d0

.blankBGSegment:
		move.l	d0,(a0)+
		dbf	d7,.blankBGSegment

		lea	(cloudSkew).w,a1
		moveq	#0,d1
		moveq	#36-1,d7

		subq.w	#1,(cloudFrameCnt).w
		bpl.s	.cloudBGSegment
	
		move.w	#CLOUD_SCROLL_RATE-1,(cloudFrameCnt).w

.resetClouds:
		move.l	d0,(a0)+
		clr.l	(a1)+
		dbf	d7,.resetClouds
		bra.s	.doneClouds

.cloudBGSegment:
		move.l	(a1),d2
		add.l	.cloudSkewFactor(pc,d1.w),d2
		move.l	d2,(a1)+

		swap	d2
		move.w	d2,d0
		neg.w	d0
		move.l	d0,(a0)+
		
		addq.w	#4,d1
		dbf	d7,.cloudBGSegment

.doneClouds:
		move.w	(camXPosBG).w,d0
		neg.w	d0
		move.w	#168-1,d7

.hillsBGSegment:
		move.l	d0,(a0)+
		dbf	d7,.hillsBGSegment
		rts

; ---------------------------------------------------------------------------
.cloudSkewFactor:
	.i: = 128

	rept	36
	dc.l	(.i<<16)/CLOUD_SCROLL_RATE
	.i: = .i-2
	endr

; ===========================================================================
; ---------------------------------------------------------------------------
; Clear The Screen
; ---------------------------------------------------------------------------
MC_ClearScreen:
		move.w	#$8F01,(a6)				; set auto-incremement size to byte

		move.l	#$94FF93FF,(a6)				; clear the VRAM
		move.w	#$9780,(a6)				; ^
		move.l	#$40000080,(a6)				; ^
		move.w	#0,-4(a6)				; ^

.waitVRAMClr:	move.w	(a6),ccr				; is a DMA in progress?
		bvs.s	.waitVRAMClr				; if so, loop until DMA is complete

		move.l	#$9400937F,(a6)				; clear the CRAM
		move.w	#$9780,(a6)				; ^
		move.l	#$C0000080,(a6)				; ^
		move.w	#0,-4(a6)				; ^

.waitCRAMClr:	move.w	(a6),ccr				; is a DMA in progress?
		bvs.s	.waitCRAMClr				; if so, loop until DMA is complete

		move.l	#$9400935F,(a6)				; clear the VSRAM
		move.w	#$9780,(a6)				; ^
		move.l	#$40000090,(a6)				; ^
		move.w	#0,-4(a6)				; ^

.waitVSRAMClr:	move.w	(a6),ccr				; is a DMA in progress?
		bvs.s	.waitVSRAMClr				; if so, loop until DMA is complete

		move.w	#$8F02,(a6)				; set auto-incremement size to word
		rts						; return
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Load the Background
; ---------------------------------------------------------------------------
MC_LoadBackground:
	dma68k	MC_BGArt,vramBackground,MC_BGArt_End-MC_BGArt,VRAM	; load in the background art

	vdpCmd	move.l, VRAM_PLANE_B, VRAM, WRITE, (a6)		; Set up VDP to write data to the plane B nametable location
		lea	MC_BGMap,a0
		move.w	#(32*64)-1,d7				; Set loop count to plane size - 1

.loop:
		move.w	(a0)+,d0
		beq.s	.empty
		add.w	#(vramBackground>>5),d0
		ori.w	#(3<<13),d0

.empty:
		move.w	d0,-4(a6)
		dbf	d7,.loop
		rts						; return
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Load the World
; ---------------------------------------------------------------------------
MC_LoadWorld:
		lea	MC_TestMap,a0
		lea	mapWallBlocks,a1
		move.w	#((MC_TestMap_End-MC_TestMap)>>2)-1,d7

.loadWalls:
		move.l	(a0)+,(a1)+
		dbf	d7,.loadWalls

		lea	MC_TestMap,a0
		lea	mapCollBlocks,a1
		move.w	#((MC_TestMap_End-MC_TestMap)>>2)-1,d7

.loadBlocks:
		move.l	(a0)+,(a1)+
		dbf	d7,.loadBlocks
		rts						; return
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; VBlank Interrupt
; ---------------------------------------------------------------------------
MC_VInt:
		movem.l	d0-a5,-(sp)
	dma68k	planeBuffer,VRAM_PLANE_A,PLANE_BUFF_SIZE,VRAM	; transfer the entire FG tileplane buffer
	dma68k	scrollBuffer,VRAM_HSCROLL,224*4,VRAM		; transfer the horizontal scroll data
	dma68k	spriteList,VRAM_SPR_LIST,80*8,VRAM		; transfer the sprite list

		move.w	(camYPosFG).w,d0			; update vertical scrolling
		andi.w	#7,d0					; ^
		swap	d0					; ^
		move.w	(camYPosBG).w,d0			; ^
	vdpCmd	move.l, $0, VSRAM, WRITE, (a6)			; ^
		move.l	d0,-4(a6)				; ^

		bsr.s	MC_ReadJoypad

		sf.b	(vblankWait).w
		movem.l	(sp)+,d0-a5
		rte						; return
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Read Joypad Input
; ---------------------------------------------------------------------------
MC_ReadJoypad:
		lea	(ctrlHoldP1).w,a0 ; address where joypad states are written
		lea	($A10002).l,a1	; first	joypad port
		bsr.s	.read		; do the first joypad
		addq.w	#2,a1		; do the second	joypad

.read:
		move.b	#0,(a1)
		moveq	#$30,d0
		moveq	#$3F,d1
		and.b	(a1),d0
		move.b	#$40,(a1)
		add.b	d0,d0
		add.b	d0,d0
		and.b	(a1),d1

		or.b	d1,d0
		not.b	d0
		move.b	(a0),d1
		eor.b	d0,d1
		move.b	d0,(a0)+
		and.b	d0,d1
		move.b	d1,(a0)+
		rts
; ---------------------------------------------------------------------------

	include	"minecraft\code\player.asm"

; ---------------------------------------------------------------------------
MC_Palette:
	dc.w	$E84, $8AE, $68E, $46C, $EE0, $CC0, $AA0, $E68, $C46, $824, $444, $222, $000, $EEE, $246, $024
	dc.w	$E84, $CCC, $AAA, $888, $666, $444, $222, $4E6, $2C4, $0A2, $080, $6AE, $48C, $26A, $048, $026
	dc.w	$E84, $EEE, $CCC, $AAA, $4CE, $2AC, $08A, $E6C, $C4A, $A08, $44E, $22C, $00A, $EE0, $888, $666
	dc.w	$E84, $EEE, $CAA, $A88, $866, $644, $422, $46A, $448, $226, $6C4, $680, $8CE, $6AC, $EA6, $E44
; ---------------------------------------------------------------------------
MC_Steve:
	incbin	"minecraft\assets\bin\steve.bin"
MC_Steve_End:
	even
; ---------------------------------------------------------------------------
MC_Cursor:
	dcb.b	32,$0E	; 50% Highlight
	dcb.b	32,$EE	; 100% Highlight
	dcb.b	32,$0F	; 50% Shadow
	dcb.b	32,$FF	; 100% Shadow
MC_Cursor_End:
	even
; ---------------------------------------------------------------------------
MC_Terrain:
	incbin	"minecraft\assets\bin\terrain.bin"
MC_Terrain_End:
	even
; ---------------------------------------------------------------------------
MC_BGArt:
	incbin	"minecraft\assets\bin\bgArt.bin"
MC_BGArt_End:
	even
; ---------------------------------------------------------------------------
MC_BGMap:
	incbin	"minecraft\assets\bin\bgMap.bin"
MC_BGMap_End:
	even
; ---------------------------------------------------------------------------
MC_TestMap:
	dcb.b	256,$00	; Row 00
	dcb.b	256,$00	; Row 01
	dcb.b	256,$00	; Row 02
	dcb.b	256,$00	; Row 03
	dcb.b	256,$00	; Row 04
	dcb.b	256,$00	; Row 05
	dcb.b	256,$00	; Row 06
	dcb.b	256,$00	; Row 07
	dcb.b	256,$00	; Row 08
	dcb.b	256,$00	; Row 09
	dcb.b	256,$00	; Row 0A
	dcb.b	256,$00	; Row 0B
	dcb.b	256,$00	; Row 0C
	dcb.b	256,$00	; Row 0D
	dcb.b	256,$00	; Row 0E
	dcb.b	256,$00	; Row 0F

	dcb.b	256,$00	; Row 00
	dcb.b	256,$00	; Row 01
	dcb.b	256,$00	; Row 02
	dcb.b	256,$00	; Row 03
	dcb.b	256,$00	; Row 04
	dcb.b	256,$00	; Row 05
	dcb.b	256,$00	; Row 06
	dcb.b	256,$00	; Row 07
	dcb.b	256,$00	; Row 08
	dcb.b	256,$01	; Row 09
	dcb.b	256,$00	; Row 0A
	dcb.b	256,$00	; Row 0B
	dcb.b	256,$00	; Row 0C
	dcb.b	256,$00	; Row 0D
	dcb.b	256,$00	; Row 0E
	dcb.b	256,$00	; Row 0F

	dcb.b	256,$03	; Row 20
	dcb.b	256,$02	; Row 21
	dcb.b	256,$02	; Row 22
	dcb.b	256,$02	; Row 23
	dcb.b	256,$01	; Row 24
	dcb.b	256,$01	; Row 25
	dcb.b	256,$01	; Row 26
	dcb.b	256,$01	; Row 27
	dcb.b	256,$01	; Row 28
	dcb.b	256,$01	; Row 29
	dcb.b	256,$01	; Row 2A
	dcb.b	256,$01	; Row 2B
	dcb.b	256,$01	; Row 2C
	dcb.b	256,$01	; Row 2D
	dcb.b	256,$01	; Row 2E
	dcb.b	256,$01	; Row 2F

	dcb.b	256,$01	; Row 30
	dcb.b	256,$01	; Row 31
	dcb.b	256,$01	; Row 32
	dcb.b	256,$01	; Row 33
	dcb.b	256,$01	; Row 34
	dcb.b	256,$01	; Row 35
	dcb.b	256,$01	; Row 36
	dcb.b	256,$01	; Row 37
	dcb.b	256,$01	; Row 38
	dcb.b	256,$01	; Row 39
	dcb.b	256,$01	; Row 3A
	dcb.b	256,$01	; Row 3B
	dcb.b	256,$01	; Row 3C
	dcb.b	256,$01	; Row 3D
	dcb.b	256,$01	; Row 3E
	dcb.b	256,$05	; Row 3F
MC_TestMap_End: