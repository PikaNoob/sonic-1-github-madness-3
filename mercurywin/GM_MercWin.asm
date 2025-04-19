; ===========================================================================
; ---------------------------------------------------------------------------
; Sailor Mercury Results
; ---------------------------------------------------------------------------

v_mwwid = $FFFFFF45
v_mwtime = $FFFFFF46
v_mwtimea = $FFFFFF47
v_mwwrank = $FFFFFF48
v_mwwranka = $FFFFFF49

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


		lea	($FF0000).l,a1
		lea	(Eni_MWSCOR).l,a0
		moveq	#0,d0
		jsr	EniDec


;PLEASE INSERT SCORE CALCULATION ROUTINE
;first, load time, convert to seconds, then write apropriate amounts to the area of clear time
	;	move.b	(v_timemin).w,d0
	;	mulu.w	#60,d0		; convert minutes to seconds
	;	moveq	#0,d1
	;	move.b	(v_timesec).w,d1
	;	add.w	d1,d0		; add up your time
	;	divu.w	#15,d0		; divide by 15
	; write what comes up
;secondly, load amount of badniks destroyed, then write apropriate amounts to the area of damage taken
	;	move.b	(v_mercbad).w,d0
	; write what comes up
;this system would count each time a badnik is destroyed
;don't worry, ill make it possible to do a backup value for checkpoints, and clear when restarting without it
;(so it won't go over 255)

;now, write stuff to score
;first, load damage bonus
	;	move.w	(v_mercbad).w,d0
	;	mulu.w	#10,d0
	;	move.w	d0,(v_mercbadbonus).w ; set damage bonus
;then, load time bonus
	;	moveq	#$14,d1
	;	cmp.w	d1,d0		; is time 5 minutes or higher?
	;	bcs.s	@hastimebonus	; if not, branch
	;	move.w	d1,d0		; use minimum time bonus (0)
	;@hastimebonus:
	;	add.w	d0,d0
	;	move.w	TimeBonuses(pc,d0.w),(v_timebonus).w ; set time bonus
;then, secrectly load rings bonus
	;	move.w	(v_rings).w,d0	; load number of rings
	;	mulu.w	#10,d0		; multiply by 10
	;	move.w	d0,(v_ringbonus).w ; set ring bonus
;now add points
	;	add.w	(v_timebonus),d0
	;	clr.w	(v_timebonus).w	
	;	add.w	(v_mercbadbonus),d0
	;	clr.w	(v_mercbadbonus).w	
	;	add.w	(v_ringbonus),d0
	;	clr.w	(v_ringbonus).w	
;then calculate for the ranking
	;	move.w	(RESULT),(v_mwwrank).w
;too bad, go for F, too good, go for A
	;	jsr	AddPoints

;then write what comes up to score, and now do next action!


		moveq	#37,d0	; load palette
		jsr	PalLoad1
		move.l	#$1000000,($FFFFF704).w ; correct vertical position for "wander conic" 
		move.l	#$0000000,($FFFFF700).w ; correct horizonal position for "wander conic" 
		move.b	#$8E,($FFFFD040).w ; load Sailor Mercury
		move.b	#$8E,($FFFFD080).w ; again but...
		move.b	#$4,($FFFFD0A4).w ; set so it's Tuxedo Mask!
		jsr	(ObjectsLoad).l
		jsr	(BuildSprites).l
		jsr	PaletteFadeIn

		move.b	#$27,d0
		jsr	PlaySound	; play title screen music
		lea	mercurytext3,a1
		jsr	KDebug_WriteToCmd

;Amount of time needed for everything to print
		add.b	#$FC,(v_mwwid).w
		move.w	#240,(v_demolength).w

		move.b	#60,(v_mwtimea).w
MCW_StartLoop:
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		jsr	(ObjectsLoad).l
		jsr	(BuildSprites).l
		bsr.w	MERCWtextw
		cmpi.b	#$80,($FFFFF605).w ; is Start pressed?
		beq.w	MERCW_resskipa	; if yes, branch
		cmp.b	#$0C,(v_mwwid).w
		bne.s	MCW_StartLoop
		bra.w	MCW_StartNext ; bra not bsr you fucking moron - future coni
;on another note 
;craig
;heh
;the next github madess should have a sex button on the menu
MERCW_resskipa:
		move.b	#2,(v_mwtime).w
		move.b	#2,(v_mwtimea).w

MERCW_resskip:
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		jsr	(ObjectsLoad).l
		jsr	(BuildSprites).l
		bsr.w	MERCWtextw
		cmp.b	#$0C,(v_mwwid).w
		bne.s	MERCW_resskip
MCW_StartNext
		move.w	#120,(v_demolength).w
MCW_StartNextW
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		jsr	(ObjectsLoad).l
		jsr	(BuildSprites).l
		bsr.w	MERCWrankroll
		cmpi.b	#$80,($FFFFF605).w ; is Start pressed?
		beq.w	MCW_Done	; if not, branch
		tst.w	(v_demolength).w
		bne.w	MCW_StartNextW	; if yes, branch
MCW_Done:
;get the result that was calculated then send stuff to write in plane B and kdebug

;MAP
		moveq	#0,d0
		move.b	(v_mwwrank).w,d0
		lsl.w	#2,d0
		lea 	mercranks(pc),a0
		move.l	(a0,d0.w),a1
		locVRAM	$C8A4,d0
		moveq	#1,d1
		moveq	#1,d2
		jsr	ShowVDPGraphics
;KDEBUG
		moveq	#0,d0
		move.b	(v_mwwrank).w,d0
		lsl.w	#2,d0
		lea 	mercrankstxt(pc),a0
		move.l	(a0,d0.w),a1
		lea	mercurytextA,a1
		jsr	KDebug_WriteToCmd

		move.b	#$1,($FFFFD080+obanim).w ; make Tuxedo Mask wave his hand out

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

MERCWtextw:
	subq.b	#1,(v_mwtime).w
	bhi.s	MERCWtexte
	move.b	(v_mwtimeA).w,(v_mwtime).w	; Reset frame counter to 60
	add.b	#4,(v_mwwid).w
	moveq	#0,d0		
	move.b	(v_mwwid).w,d0
	movea.l	MWArray(pc,d0.w),a0
	jsr	(a0)
MERCWtexte
	RTS
MWArray:
	dc.l	MW1
	dc.l	MW2
	dc.l	MW3
	dc.l	MW4
	dc.l	MW4

MW1:	copyTilemap	$FF0000,$C30A,$1D,$1 ;CLEAR TIME
	RTS
MW2:	copyTilemap	$FF0078,$C40A,$1D,$1 ;DAMAGE TAKEN
	RTS
MW3:	copyTilemap	$FF00F0,$C50A,$1D,$1 ;SCORE
	RTS
MW4:	copyTilemap	$FF0168,$C696,$0F,$1 ;OVERALL SCORE
	RTS

MERCWrankroll:
	add.b	#1,(v_mwwrankA).w
	cmp.b	#5,(v_mwwrankA).w
	bne.s	noresrank
	move.b	#0,(v_mwwrankA).w	; Reset frame counter to 60
noresrank:
	moveq	#0,d0
	move.b	(v_mwwrankA).w,d0
	lsl.w	#2,d0
	lea 	mercranks(pc),a0
	move.l	(a0,d0.w),a1
	locVRAM	$C8A4,d0
	moveq	#1,d1
	moveq	#1,d2
	jsr	ShowVDPGraphics
	RTS

mercranks:
	dc.l	$FF01A8 ; A
	dc.l	$FF01B0 ; B
	dc.l	$FF01B8 ; C
	dc.l	$FF01C0 ; D
	dc.l	$FF01C8 ; E
	dc.l	$FF01D0 ; F - RARE

mercrankstxt:
	dc.l	mercurytextA ; A
	dc.l	mercurytextB ; B
	dc.l	mercurytextC ; C
	dc.l	mercurytextD ; D
	dc.l	mercurytextE ; E
	dc.l	mercurytextF ; F - RARE

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
Eni_MWSCOR:	incbin	"mercurywin\SCORE.bin"
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