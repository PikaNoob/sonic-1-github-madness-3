; ===========================================================================
; ---------------------------------------------------------------------------
; CONINIGHT
; ---------------------------------------------------------------------------
GM_CN:

f_bart = $FFFFFF44
		cmp.b	#btnA,(v_jpadhold1).w ; eat shit?
		bne.s	donotbart
		move.b	#1,(f_bart).w
donotbart:
		move.b	#cmd_FadeOut,d0
		jsr	PlaySound_Special  ; fade out music
		jsr	PaletteFadeOut

		lea	(vdp_control_port).l,a6
		move.w	#$8004,(a6)	; 8-colour mode
		move.w	#$8200+(vram_fg>>10),(a6) ; set foreground nametable address
		move.w	#$8400+(vram_bg>>13),(a6) ; set background nametable address
		move.w	#$9001,(a6)	; 64-cell hscroll size
		move.w	#$9200,(a6)	; window vertical position
		move.w	#$8B03,(a6)
		move.w	#$8720,(a6)	; set background colour (palette line 2, entry 0)
		clr.b	(f_wtr_state).w
		jsr	ClearScreen

		lea	(v_objspace).w,a1
		moveq	#0,d0
		move.w	#$7FF,d1

	CN_ClrObj:
		move.l	d0,(a1)+
		dbf	d1,CN_ClrObj	; fill object space ($D000-$EFFF) with 0

		locVRAM	$0
		lea	(Nem_Barta).l,a0 ; load japanese logo patterns
		tst.b	(f_bart).w
		beq.s	nobart
		lea	(Nem_Bartb).l,a0 ; load japanese logo patterns
nobart:
		jsr	NemDec

		lea	($FF0000).l,a1
		lea	(Eni_Bart).l,a0
		moveq	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$C000,$27,$1F

		move.b	#$E,($FFFFD040).w ; load big Sonic object
		move.b	#$8,($FFFFD040+obRoutine).w ; load big Sonic object

		moveq	#36,d0	; load palette 1
		jsr	PalLoad1
		bsr.w	bartsecondadd
		move.b	#00,(v_mercnum).w
		move.w	#$001F,(v_pfade_start).w ; fade in 2th palette line
		jsr	Pal_FadeTo2

		move.b	#$24,d0
		jsr	PlaySound	; play title screen music

CN_MainLoop:
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		jsr	ObjectsLoad
		jsr	BuildSprites
		cmp.b	#$80,($FFFFF605).w
		beq.s	CN_End
		tst.w   (v_demolength).w
		bne.s	CN_MainLoop	; if yes, branch
		bsr.w	bartsecondadd
		bsr.s	CN_RoutCHG
		cmp.b	#5,(v_mercnum).w ; is id OVER 5?
		bne.s	CN_MainLoop	; if yes, branch

		jsr	PaletteWhiteOut
		jsr	PaletteWhiteIn
		bsr.w	bartsecondadd
		bsr.w	bartsecondadd
		bsr.w	bartsecondadd
		bsr.w	bartsecondadd
CN_MainLoop1:
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		cmp.b	#$80,($FFFFF605).w
		beq.s	CN_End
		tst.w   (v_demolength).w
		bne.s	CN_MainLoop1	; if yes, branch
CN_End:
		rts
CN_RoutCHG:
		add.b	#1,(v_mercnum).w
		moveq	#0,d0
		move.b	(v_mercnum).w,d0
		move.b	CNcredmaps(pc,d0.w),($FFFFD040+obRoutine).w ; load big Sonic object
		rts
CNcredmaps:
	dc.b	$A
	dc.b	$C
	dc.b	$A
	dc.b	$C
	dc.b	$E
	dc.b	$E
	dc.b	$E
	dc.b	$E

bartsecondadd:
		add.w	#60,(v_demolength).w
		btst	#6,($FFFFFFF8).w	; Is this a PAL console?
		beq.s	bartsecondend			; If not, skip
		sub.w	#10,(v_demolength).w
bartsecondend:
		rts
; ---------------------------------------------------------------------------
; Compressed graphics - ENDING stuff
; ---------------------------------------------------------------------------
Eni_Bart:	incbin	"coninight\map.bin"
		even
Nem_Barta:	incbin	"coninight\arta.bin"
		even
Nem_Bartb:	incbin	"coninight\artb.bin"
		even