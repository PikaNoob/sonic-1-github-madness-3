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

		lea	mercurytext2,a1
		jsr	KDebug_WriteToCmd

		moveq	#35,d0	; load palette 1
		jsr	PalLoad1
		move.w	#$1A0,(v_demolength).w
		move.b	#$FF,(v_mercnum).w
		bsr.w	Merc_MapLoad
		move.w	#$600F,(v_pfade_start).w ; fade in 2th palette line
		jsr	Pal_FadeTo2

MCE_MainLoop:
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		tst.w   (v_demolength).w
		bne.s	MCE_MainLoop	; if yes, branch
		move.w	#$1A0,(v_demolength).w
		bsr.s	Merc_MapLoad
		cmp.b	#9,(v_mercnum).w ; is id OVER 8?
		bne.s	MCE_MainLoop	; if yes, branch

		jsr	PaletteFadeOut
		jsr	ClearScreen
		lea	($FF0000).l,a1
		lea	(Eni_MCECred).l,a0
		moveq	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$C000,$27,$1F
		jsr	PaletteFadeIn
MCE_MainLoop1:
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		tst.w   (v_demolength).w
		bne.s	MCE_MainLoop1	; if yes, branch
		rts

v_mercnum = $FFFFFF40
Merc_MapLoad:
		add.b	#1,(v_mercnum).w
		cmpi.b	#4,(v_mercnum).w ; is credit id OVER 17?
		bne.s	Merc_MapLoadA	 ; if not, branch
		jsr	PaletteFadeOut
		bsr.s	Merc_MapLoad
		jsr	PaletteFadeIn
		move.b	#$22,d0
		jsr	PlaySound	; play title screen music
Merc_MapLoadA:
		lea	($FF0000).l,a1
		moveq	#0,d0
		move.b	(v_mercnum).w,d0
		lsl.w	#2,d0
		lea 	mercredmaps(pc),a0
		move.l	(a0,d0.w),a0
		move.w	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$EB04,$23,$03
		rts
mercredmaps:
	dc.l	Eni_MCE1
	dc.l	Eni_MCE2
	dc.l	Eni_MCE3
	dc.l	Eni_MCE4
	dc.l	Eni_MCE5
	dc.l	Eni_MCE5 ; this is so text doesnt get overwritten after fade in
	dc.l	Eni_MCE6
	dc.l	Eni_MCE7
	dc.l	Eni_MCE8
	dc.l	Eni_MCEClr
	dc.l	Eni_MCEClr
	dc.l	Eni_MCEClr
	dc.l	Eni_MCEClr
	dc.l	Eni_MCEClr
	dc.l	Eni_MCEClr

mercurytext2:	dc.b	"This script is provided from the Mega Drive game and translated by 'Eien Ni Hen', might not fit the GHM lore - Coni"
		even
; ---------------------------------------------------------------------------
; Compressed graphics - ENDING stuff
; ---------------------------------------------------------------------------
Eni_MCEBG:	incbin	"mercuryend\BG.bin"
		even
Eni_MCEFG:	incbin	"mercuryend\FG.bin"
		even
Nem_MCE:	incbin	"mercuryend\Endart.bin"
		even
Eni_MCE1:	incbin	"mercuryend\T1.bin"
		even
Eni_MCE2:	incbin	"mercuryend\T2.bin"
		even
Eni_MCE3:	incbin	"mercuryend\T3.bin"
		even
Eni_MCE4:	incbin	"mercuryend\T4.bin"
		even
Eni_MCE5:	incbin	"mercuryend\T5.bin"
		even
Eni_MCE6:	incbin	"mercuryend\T6.bin"
		even
Eni_MCE7:	incbin	"mercuryend\T7.bin"
		even
Eni_MCE8:	incbin	"mercuryend\T8.bin"
		even
Eni_MCEClr:	incbin	"mercuryend\TClr.bin"
		even
Eni_MCECred:	incbin	"mercuryend\Cred.bin"
		even