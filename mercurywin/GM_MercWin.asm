; ===========================================================================
; ---------------------------------------------------------------------------
; Sailor Mercury Results
; ---------------------------------------------------------------------------
GM_MercWin:
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

	MCW_ClrObj:
		move.l	d0,(a1)+
		dbf	d1,MCW_ClrObj	; fill object space ($D000-$EFFF) with 0

		locVRAM	$0
		lea	(Nem_MercWin).l,a0 ; load japanese logo patterns
		jsr	NemDec

		lea	($FF0000).l,a1
		lea	(Eni_MWBG).l,a0
		moveq	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$E000,$27,$1D

		lea	($FF0000).l,a1
		lea	(Eni_MWFG).l,a0
		moveq	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$C000,$27,$1D

		moveq	#37,d0	; load palette
		jsr	PalLoad1
		jsr	(ObjectsLoad).l
		jsr	(BuildSprites).l
		jsr	PaletteFadeIn

		move.b	#$27,d0
		jsr	PlaySound	; play title screen music
		lea	mercurytext3,a1
		jsr	KDebug_WriteToCmd

;Amount of time needed for everything to print
		move.w	#$B0,(v_demolength).w
MCW_StartLoop:
;write scoring system
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		jsr	(ObjectsLoad).l
		jsr	(BuildSprites).l
;PLEASE INSERT SCORE CALCULATION ROUTINE
		cmpi.b	#$80,($FFFFF605).w ; is Start pressed?
		beq.w	MERCW_resskip	; if yes, branch
		tst.w	(v_demolength).w
		bne.s	MCW_StartLoop

MERCW_resskip:
;get the result that was calculated then send stuff to write in plane B and kdebug
;		move.b	#1,obAnim(a0) ; use "floating" animation
		lea	mercurytextA,a1
		jsr	KDebug_WriteToCmd

MCW_MainLoop:
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		jsr	(ObjectsLoad).l
		jsr	(BuildSprites).l
		cmpi.b	#$80,($FFFFF605).w ; is Start pressed?
		bne.w	MCW_MainLoop	; if not, branch

		jsr	GetLevelRandom
		tst.l	(v_levelrandtracker).w	; if level selection is random, ignore the SS
		bpl.s	MERCW_ChkSS
		tst.w	($FFFFFE10).w	; if level is GHZ1, go back to Sega screen(???)
		bne.s	MERCW_ChkSS
		move.b	#0,($FFFFF600).w ; set game mode to level (00)
		bra.s	MERCWEND
; ===========================================================================

MERCW_ChkSS:				; XREF: Obj3A_NextLevel
		clr.b	($FFFFFE30).w	; clear	lamppost counter
		tst.b	($FFFFF7CD).w	; has Sonic jumped into	a giant	ring?
		beq.s	loc_C6EAMERCW	; if not, branch
		move.b  #$0,titlemode.w
		move.b	#$24,($FFFFF600).w 	; set screen mode to $24 BEEBUSH
		rts	
; ===========================================================================

loc_C6EAMERCW:				; XREF: Obj3A_ChkSS
		move.b	#$C,($FFFFF600).w
MERCWEND
		rts	
;start
mercurytext3:	dc.b	"Let's see your results!"
		even
;A rank
mercurytextA:	dc.b	"You did well!"
		even
;B rank
mercurytextB:	dc.b	"Not Bad!"
		even
;C rank
mercurytextC:	dc.b	"Awh..."
		even
;D rank
mercurytextD:	dc.b	"Mm, Hot damn..."
		even
;E rank
mercurytextE:	dc.b	"TOO BAD!"
		even
;Rare F rank
;and an explanation for a small picture of esmeraude displayed
mercurytextF:	dc.b	"the punchline is, to quote the Sailor Moon Materials Collection, "
		dc.b	"she has a huge ass, yes that really is in Esmeraude's page NJ, so what I'm really trying to tell you is"
		dc.b	"wow you suck ass, and yes that is Kaito x Gakupo Mpreg-"
		dc.b	"I MEAN, Douse Yourself in Water and repent!"
		even
; ---------------------------------------------------------------------------
; Compressed graphics - Henshin stuff
; ---------------------------------------------------------------------------
Nem_MercWin:	incbin	"mercurywin\winart.bin"
		even
Eni_MWBG:	incbin	"mercurywin\BG.bin"
		even
Eni_MWFG:	incbin	"mercurywin\FG.bin"
		even
; ---------------------------------------------------------------------------
; Object stuff
; ---------------------------------------------------------------------------
Obj8E:		include	"mercurywin\object.asm"
		even
Map_MercWin:	include	"_maps\mercurywin.asm"
		even
Map_MaskWin:	include	"_maps\tuxmask.asm"
		even