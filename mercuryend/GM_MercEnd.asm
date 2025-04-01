; ===========================================================================
; ---------------------------------------------------------------------------
; Mercury Ending
; ---------------------------------------------------------------------------
GM_MercEnd:
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

	MCE_ClrObj:
		move.l	d0,(a1)+
		dbf	d1,MCE_ClrObj	; fill object space ($D000-$EFFF) with 0

		locVRAM	$0
		lea	(Nem_MCE).l,a0 ; load japanese logo patterns
		jsr	NemDec

		locVRAM	$31E0
		lea	(Nem_otfont).l,a0 ; load japanese logo patterns
		jsr	NemDec

		lea	($FF0000).l,a1
		lea	(Eni_MCEBG).l,a0
		moveq	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$E000,$27,$1F

		lea	($FF0000).l,a1
		lea	(Eni_MCEFG).l,a0
		moveq	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$C000,$27,$1D

		moveq	#35,d0	; load palette 1
		jsr	PalLoad1
		move.w	#$7A0,(v_demolength).w
		jsr	PaletteFadeIn

		move.b	#$22,d0
		jsr	PlaySound	; play title screen music
MCE_MainLoop:
; add script to write text
; i cant write any lore sorry
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		tst.w   (v_demolength).w
		bne.s	MCE_MainLoop	; if yes, branch
		rts

; ---------------------------------------------------------------------------
; Compressed graphics - ENDING stuff
; ---------------------------------------------------------------------------
Eni_MCEBG:	incbin	"mercuryend\BG.bin"
		even
Eni_MCEFG:	incbin	"mercuryend\FG.bin"
		even
Nem_MCE:	incbin	"mercuryend\Endart.bin"
		even