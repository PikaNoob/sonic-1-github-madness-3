; Minecraft: Very Legacy Console Edition
; Main file

;	align	$20000
	opt	l.
	include	"minecraft\code\variables.asm"
	include	"minecraft\code\macros.asm"

MC_Init:
		intsOff						; disable CPU interrupts
		move.l	#MC_VInt,(vBlankAdress).w

		lea	($C00004).l,a6				; load the address of the VDP control port into a6
		move.w	#$8134,(a6)				; disable display

		move.w	#$8200+($C000>>10),(a6)			; set plane A address
		move.w	#$8300+($D000>>10),(a6)			; set plane W address
		move.w	#$8400+($E000>>13),(a6)			; set plane B address
		move.w	#$8500+($F800>>9),(a6)			; set sprite table address
		
		move.w	#$8B00,(a6)				; EXT-INT off, VScroll by screen, HScroll by screen
		move.w	#$8C89,(a6)				; set screen size and enable shadow/highlight mode
		move.w	#$8D00+($FC00>>10),(a6)			; set HScroll table address
		move.w	#$8F02,(a6)				; set auto-incremement size to word
		move.w	#$9001,(a6)				; set plane size 64x32

		clrRAM	mcRAM					; clear all the RAM used by Minecraft
		bsr.w	MC_ClearScreen				; clear VRAM, CRAM, and VSRAM

.waitVBlank:	
		move.w	(a6),ccr				; is v-blank active?
		bpl.s	.waitVBlank				; if not, wait for it to start

	dma68k	MC_Palette,$0000,$40*2,CRAM			; load in the palette
	dma68k	MC_Terrain,$0020,MC_Terrain_End-MC_Terrain,VRAM	; load in the block art	

		move.w	#$8174,(a6)				; enable display
		intsOn						; enable CPU interrupts

		lea	MC_BlockRender(pc),a0
		lea	(planeBuffer).w,a1
		moveq	#$2F-1,d7

.loopLo:
		move.w	(a0)+,(a1)+
		dbf	d7,.loopLo

		lea	MC_BlockRender(pc),a0
		lea	(planeBuffer+(64*2)).w,a1
		moveq	#$2F-1,d7

.loopHi:
		move.w	#$8000,d0
		or.w	(a0)+,d0
		move.w	d0,(a1)+
		dbf	d7,.loopHi

		bra.w	*					; spin infinitely

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
; VBlank Interrupt
; ---------------------------------------------------------------------------
MC_VInt:
	dma68k	planeBuffer,$C000,PLANE_BUFF_SIZE,VRAM		; transfer the entire FG tileplane buffer

		addq.w	#1,(camXPosFG).w			; update scrolling
	vdpCmd	move.l, $FC00, VRAM, WRITE, (a6)		; ^
		move.w	(camXPosFG).w,-4(a6)			; ^


		rte						; return
; ---------------------------------------------------------------------------

block_entry	macro	tileID, palLine, priority
	if (narg<3)
		dc.w	(palLine<<13)|tileID
	else
		dc.w	$8000|(palLine<<13)|tileID
	endif
		endm

MC_BlockRender:
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
MC_Palette:
	dc.w	$E86, $8AE, $68E, $46C, $EE0, $CC0, $AA0, $E68, $C46, $824, $444, $222, $000, $EEE, $246, $024
	dc.w	$000, $CCC, $AAA, $888, $666, $444, $222, $4E6, $2C4, $0A2, $080, $6AE, $48C, $26A, $048, $026
	dc.w	$000, $EEE, $CCC, $AAA, $4CE, $2AC, $08A, $E6C, $C4A, $A08, $44E, $22C, $00A, $EE0, $888, $666
	dc.w	$EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE
; ---------------------------------------------------------------------------
MC_Terrain:
	incbin	"minecraft\assets\bin\terrain.bin"
MC_Terrain_End:
; ---------------------------------------------------------------------------