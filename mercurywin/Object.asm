; ---------------------------------------------------------------------------
; Object 8E - Sailor Mercury (& Tuxedo Mask) in her results screen
; ---------------------------------------------------------------------------

Winmerc:
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	WMerc_Index(pc,d0.w),d1
		jsr	WMerc_Index(pc,d1.w)
		jmp	(DisplaySprite).l
; ===========================================================================
WMerc_Index:	dc.w WMerc_Init-WMerc_Index
		dc.w WMerc_Animate-WMerc_Index
		dc.w WMask_Init-WMerc_Index
		dc.w WMask_Animate-WMerc_Index
; ===========================================================================

WMerc_Init:	; Routine 0
;set up mercury
		addq.b	#2,obRoutine(a0)
		move.l	#Map_MercWin,obMap(a0)
		move.w	#$270,obGfx(a0)
		move.b	#4,obRender(a0)
		move.b	#2,obPriority(a0)
		move.w	#$41,obX(a0)
		move.w	#$1A6,obY(a0)

WMerc_Animate:	; Routine 2
;do her cute idle!
		lea	(Ani_MercWin).l,a1
		jmp	(AnimateSprite).l

WMask_Init:	; Routine 4
;set up mercury
		addq.b	#2,obRoutine(a0)
		move.l	#Map_MaskWin,obMap(a0)
		move.w	#$140,obGfx(a0)
		move.b	#4,obRender(a0)
		move.b	#2,obPriority(a0)
		move.w	#$F3,obX(a0)
		move.w	#$1A5,obY(a0)

WMask_Animate:	; Routine 6
;he's standing, menacingly...
;or until he gets set
		lea	(Ani_MaskWin).l,a1
		jmp	(AnimateSprite).l

Ani_MercWin:
		dc.w byte_MIDLE-Ani_MercWin
byte_MIDLE:	dc.b 8,	0, 1, 2, 1, $FF
		even

Ani_MaskWin:
		dc.w byte_TXIDLE1-Ani_MaskWin
		dc.w byte_TXIDLE2-Ani_MaskWin
byte_TXIDLE1:	dc.b 8,	0, $FF
byte_TXIDLE2:	dc.b 8, 1, 2, 3, $FE, 1
		even