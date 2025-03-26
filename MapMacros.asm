SonicMappingsVer = 1
SonicDplcVer = 1

; macro to declare a mappings table (taken from Sonic 2 Hg disassembly)
;mappingsTable macro
;@current_mappings_table = *
;	endm

	if SonicMappingsVer=1
MappingSize		= 5
MappingHeaderSize	= 1
	elseif SonicMappingsVer=2
MappingSize		= 8
MappingHeaderSize	= 2
	else
MappingSize		= 6
MappingHeaderSize	= 2
	endif

; macro to declare an entry in a mappings table (taken from Sonic 2 Hg disassembly)
;mappingsTableEntry macro ptr
;	dc.ATTRIBUTE ptr-.current_mappings_table
;	endm

;spriteHeader macro {INTLABEL}
;__LABEL__ label *
;	if SonicMappingsVer=1
;	dc.b ((__LABEL___End - __LABEL___Begin) / MappingSize)
;	elseif SonicMappingsVer=4
;	dc.w (((__LABEL___End - __LABEL___Begin) / MappingSize)-1)
;	else
;	dc.w ((__LABEL___End - __LABEL___Begin) / MappingSize)
;	endif
;__LABEL___Begin label *
;	endm

spritePiece macro xpos,ypos,width,height,tile,xflip,yflip,pal,pri
	if SonicMappingsVer=1
	dc.b	ypos
	dc.b	(((width-1)&3)<<2)|((height-1)&3)
	dc.b	((((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11))+(tile))>>8
	dc.b	tile&$FF
	dc.b	xpos
	elseif SonicMappingsVer=2
	dc.w	((ypos&$FF)<<8)|(((width-1)&3)<<2)|((height-1)&3)
	dc.w	(((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11))+(tile)
	dc.w	(((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11))+(((tile)>>1)|((tile)&$8000))
	dc.w	xpos
	else
	dc.w	((ypos&$FF)<<8)|(((width-1)&3)<<2)|((height-1)&3)
	dc.w	(((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11))+(tile)
	dc.w	xpos
	endif
	endm

spritePiece2P macro xpos,ypos,width,height,tile,xflip,yflip,pal,pri,tile2,xflip2,yflip2,pal2,pri2
	if SonicMappingsVer=1
	dc.b	ypos
	dc.b	(((width-1)&3)<<2)|((height-1)&3)
	dc.b	((((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11))+(tile))>>8
	dc.b	tile&$FF
	dc.b	xpos
	elseif SonicMappingsVer=2
	dc.w	((ypos&$FF)<<8)|(((width-1)&3)<<2)|((height-1)&3)
	dc.w	(((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11))+(tile)
	dc.w	(((pri2&1)<<15)|((pal2&3)<<13)|((yflip2&1)<<12)|((xflip2&1)<<11))+(tile2)
	dc.w	xpos
	else
	dc.w	((ypos&$FF)<<8)|(((width-1)&3)<<2)|((height-1)&3)
	dc.w	(((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11))+(tile)
	dc.w	xpos
	endif
	endm

;dplcHeader macro {INTLABEL}
;__LABEL__ label *
;	if SonicDplcVer=1
;	dc.b ((__LABEL___End - __LABEL___Begin) / 2)
;	elseif SonicDplcVer=3
;	dc.w (((__LABEL___End - __LABEL___Begin) / 2)-1)
;	else
;	dc.w ((__LABEL___End - __LABEL___Begin) / 2)
;	endif
;__LABEL___Begin label *
;	endm

dplcEntry macro tiles,offset
	if SonicDplcVer=3
	dc.w	((offset&$FFF)<<4)|((tiles-1)&$F)
	elseif SonicDplcVer=4
	dc.w	(((tiles-1)&$F)<<12)|((offset&$FFF)<<4)
	else
	dc.w	(((tiles-1)&$F)<<12)|(offset&$FFF)
	endif
	endm
