;GM_AntiTMSS:
		jsr	ClearScreen

		move.l	#$40000000,($C00004).l
		lea	@nem(pc),a0		; load Gomer patterns
		jsr	NemDec
		move.l	#$74000002,($C00004).l
		lea	(Nem_CreditText).l,a0	; load alphabet
		jsr	NemDec
		lea	($FF0000).l,a1
		lea	@eni(pc),a0		; load mappings for Gomer credits
		moveq	#0,d0
		jsr	EniDec
		lea	($FF0000).l,a1
		move.l	#$40000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		jsr	ShowVDPGraphics
		lea	@pal(pc),a0
		lea	($FFFFFB80).w,a1
		moveq	#$1F,d0
@palset:
		move.l	(a0)+,(a1)+
		dbf	d0,@palset

		move.w	#$8C8B,($C00004).l	; S/H mode, single res interlace
		move.b	($FFFFF600).w,d7	; save game mode
		move.b	#0,($FFFFF600).w	; make sure it's not using title screen code
		move.w	#$B,($FFFFFFF4).w	; set frame
		lea	($FFFFD080).w,a0
		move.b	#1,(a0)
		jsr	Obj8A
		move.b	d7,($FFFFF600).w	; restore game mode
		or.w	#$E000,2(a0)		; S/H brightness, palette 4
		jsr	BuildSprites

		move.w	($FFFFF60C).w,d0
		ori.b	#$40,d0
		bclr	#3,d0
		move.w	d0,($C00004).l
		move.b	#2,($FFFFF62A).w	; SMPS needs a frame to init
		jsr	DelayProgram
		move.w	#$86,d0			; play title screen music
		jsr	PlaySound

		jsr	Pal_FadeTo
		move.w	#180,($FFFFF614).w
@mainloop:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w		; if timer isn't up, loop
		bne.s	@mainloop
		move.w	#$80,d0			; if player is holding start, exit
		and.b	($FFFFF604).w,d0
		beq.s	@mainloop
		rts
@nem:	incbin artnem\tmss.bin
	even
@eni:	incbin mapeni\tmss.bin
	even
@pal:	incbin pallet\tmss.bin
	even