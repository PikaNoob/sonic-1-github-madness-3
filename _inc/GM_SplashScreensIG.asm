;GM_SplashScreensIG:
		lea	GM_SplashScreensListIG(pc),a6

GM_CustomSplashScreensIG:
		move.l	a6,-(sp)
		move.w	#$E4,d0			; fade music
		jsr	PlaySound_Special
		jsr     MegaPCM_StopPlayback
		jsr	Pal_FadeFrom
		jsr	ClearScreen
		move.l	(sp)+,a6
@initloop:
		move.w	#$8C00,d0
		move.b	(a6),d0
		move.l	(a6)+,d1
		beq.w	@exit
		move.w	d0,$C00004
		movea.l	d1,a0
		move.l	a6,-(sp)
		move.l	#$40000000,($C00004).l
		jsr	NemDec
		move.l	(sp)+,a6

		moveq	#0,d0
		move.b	(a6),d0
		add.w	d0,d0
		lea	@timelut(pc),a0
		move.w	(a0,d0.w),($FFFFF614).w

		move.l	(a6)+,a0
		lea	($FF0000).l,a1		; FG load
		moveq	#0,d0
		move.l	a6,-(sp)
		jsr	EniDec
		lea	($FF0000).l,a1		; FG load
		move.l	#$40000003,d0
		moveq	#40-1,d1
		moveq	#30-1,d2
		jsr	ShowVDPGraphics
		move.l	(sp)+,a6

		move.b	(a6),d0			; play music
		beq.s	@nopcm
		jsr	MegaPCM_PlaySample
@nopcm:
		move.l	(a6)+,a0
		lea	($FF0000).l,a1		; FG load
		moveq	#0,d0
		move.l	a6,-(sp)
		jsr	EniDec
		lea	($FF0000).l,a1		; BG load
		move.l	#$60000003,d0
		moveq	#40-1,d1
		moveq	#30-1,d2
		jsr	ShowVDPGraphics
		move.l	(sp)+,a6

		move.b	(a6),d0			; play music
		beq.s	@nobgm
		jsr	PlaySound
@nobgm:
		move.l	(a6)+,a0
		lea	($FFFFFB80).w,a1
		moveq	#$1F,d0
@palset:
		move.l	(a0)+,(a1)+
		dbf	d0,@palset

		move.w	($FFFFF60C).w,d0
		ori.b	#$40,d0
		btst	#3,d0
		bne.s	@v30
		move.w	#8,($FFFFF616).w	; adjusts planes for v28
		move.w	#8,($FFFFF618).w
@v30:
		move.w	d0,($C00004).l

		jsr	Pal_FadeTo
		move.l	a6,-(sp)
@mainloop:
		move.b	#6,($FFFFF62A).w
		jsr	DelayProgram
		tst.w	($FFFFF614).w		; if timer isn't zero, count down
		bne.s	@timer
		move.w	#$80,d0			; if timer is zero, check joypad
		and.b	($FFFFF604).w,d0	; if player is holding start, exit
		beq.s	@mainloop
@loadnext:
		move.w	#$E4,d0
		jsr	PlaySound_Special	; fade music
		jsr     MegaPCM_StopPlayback
		jsr	Pal_FadeFrom
		move.l	(sp)+,a6
		bra.w	@initloop
@timer:
		subq.w	#1,($FFFFF614).w	; if timer counts to zero, exit
		bne.s	@mainloop
		bra.s	@loadnext
@exit:
		rts
@timelut:
	dc.w 0
	dc.w 20
GM_SplashScreensListIG:
;	dc.l $81<<24|@nem_pillow,$00<<24|@enifg_pillow,$00<<24|@enibg_pillow,$81<<24|@pal_pillow
	dc.l $89<<24|@nem_pillow,$01<<24|@enifg_pillow,$8F<<24|@enibg_pillow,$00<<24|@pal_pillow
	dc.l 0	; terminator 2
	even
; -----------------------------------------------------------------------------
@nem_pillow:	incbin artnem\splash_pillow.bin
	even
@enifg_pillow:
@enibg_pillow:	incbin mapeni\splash_pillow.bin
	even
@pal_pillow:	incbin pallet\splash_pillow.bin
	even