; Minecraft: Very Legacy Console Edition
; Variable Definitions

MAP_HEIGHT	equ	64
MAP_WIDTH	equ	256

		rsset	$FF0000
mcRAM		rs.b	0
mapCollBlocks	rs.b	MAP_HEIGHT*MAP_WIDTH	; collision layer layout data
mapWallBlocks	rs.b	MAP_HEIGHT*MAP_WIDTH	; wall layer layout data

		rsset	$FFFF8000
planeBuffer	rs.w	29*64			; foreground plane buffer
planeBuffer_End	rs.b	0
PLANE_BUFF_SIZE	equ	planeBuffer_End-planeBuffer

scrollBuffer	rs.l	$E0
spriteList	rs.b	$280

camXPosFG	rs.w	1			; camera foreground layout x position
camYposFG	rs.w	1			; camera foreground layout y position
camXPosBG	rs.w	1			; camera background layout x position
camYposBG	rs.w	1			; camera background layout y position

vblankCount	rs.l	1
vblankWait	rs.w	1
cloudFrameCnt	rs.w	1
cloudSkew	rs.l	36

ctrlHoldP1	rs.b	1
ctrlPressP1	rs.b	1
ctrlHoldP2	rs.b	1
ctrlPressP2	rs.b	1

playerObjVars	rs.b	$40

		rsset	__rs&$FFFFFF
mcRAM_End	rs.b	0

; VRAM Definitions
TILE		equ	32			; number of bytes a single tile occupies in VRAM

		rsreset
vramEmptyTile	rs.b	TILE
vramTerrain	rs.b	255*TILE
vramBackground	rs.b	408*TILE
vramSteve	rs.b	32*TILE
vramCursor	rs.b	4*TILE

VRAM_PLANE_A	equ	$C000
VRAM_PLANE_W	equ	$D000
VRAM_PLANE_B	equ	$E000

VRAM_SPR_LIST	equ	$F800
VRAM_HSCROLL	equ	$FC00

; Joypad Button Definitions
MASK_START	equ %10000000 
MASK_A		equ %01000000
MASK_C		equ %00100000
MASK_B		equ %00010000
MASK_RIGHT	equ %00001000
MASK_LEFT	equ %00000100
MASK_DOWN	equ %00000010
MASK_UP		equ %00000001

BIT_START	equ 7
BIT_A		equ 6
BIT_C		equ 5
BIT_B		equ 4
BIT_RIGHT	equ 3
BIT_LEFT	equ 2
BIT_DOWN	equ 1
BIT_UP		equ 0