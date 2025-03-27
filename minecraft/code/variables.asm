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

scrollBuffer	rs.l	256

camXPosFG	rs.w	1			; camera foreground layout x position
camYposFG	rs.w	1			; camera foreground layout y position
camXPosBG	rs.w	1			; camera background layout x position
camYposBG	rs.w	1			; camera background layout y position

vblankWait	rs.w	1
cloudFrameCnt	rs.w	1
cloudSkew	rs.l	36


		rsset	__rs&$FFFFFF
mcRAM_End	rs.b	0

; VRAM Definitions
TILE		equ	32			; number of bytes a single tile occupies in VRAM

		rsreset
vramEmptyTile	rs.b	TILE
vramTerrain	rs.b	255*TILE
vramBackground	rs.b	408*TILE

VRAM_PLANE_A	equ	$C000
VRAM_PLANE_W	equ	$D000
VRAM_PLANE_B	equ	$E000

VRAM_SPR_LIST	equ	$F800
VRAM_HSCROLL	equ	$FC00
