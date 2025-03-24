; Minecraft: Very Legacy Console Edition
; Variable Definitions

MAP_HEIGHT	equ	64
MAP_WIDTH	equ	256

		rsset	$FF0000
mapWallBlocks	rs.b	MAP_HEIGHT*MAP_WIDTH	; wall layer layout data
mapCollBlocks	rs.b	MAP_HEIGHT*MAP_WIDTH	; collision layer layout data

		rsset	$FFFF8000
planeBuffer	rs.w	29*64			; foreground plane buffer

camXPosFG	rs.w	1			; camera foreground layout x position
camYposFG	rs.w	1			; camera foreground layout y position
camXPosBG	rs.w	1			; camera background layout x position
camYposBG	rs.w	1			; camera background layout y position