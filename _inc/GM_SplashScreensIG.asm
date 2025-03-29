;GM_SplashScreensIG:
		lea	GM_SplashScreensListIG(pc),a6

GM_CustomSplashScreensIG:
		move.l	a6,-(sp)
		move.w	#$E4,d0			; fade music
		jsr	PlaySound_Special
		jsr     MegaPCM_StopPlayback
		jsr	Pal_FadeFrom
		jsr	ClearScreen
		move.w	#$8700,$C00004
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
		move.l	(sp)+,a6
		move.l	(a6)+,d0
		move.l	a6,-(sp)
		btst	#0,d0
		bne.s	@nofade
		move.w	#$E4,d0
		jsr	PlaySound_Special	; fade music
		jsr     MegaPCM_StopPlayback
@nofade:
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
	dc.w 30

GM_SplashScreensListIG:
	dc.l $89<<24|@nem_pillow,$00<<24|@enifg_pillow,$94<<24|@enibg_pillow,$00<<24|@pal_pillow,0
	dc.l $81<<24|@nem_fnaf,$01<<24|@enifg_fnaf,$82<<24|@enibg_fnaf,$00<<24|@pal_fnaf,0
	dc.l $81<<24|@nem_fartboy,$00<<24|@enifg_fartboy,$00<<24|@enibg_fartboy,$81<<24|@pal_fartboy,0
	dc.l $81<<24|@nem_vroom,$00<<24|@enifg_vroom,$00<<24|@enibg_vroom,$02<<24|@pal_vroom,0
	dc.l $81<<24|@nem_mal,$00<<24|@enifg_mal,$00<<24|@enibg_mal,$97<<24|@pal_mal,0
	dc.l $81<<24|@nem_sh,$00<<24|@enifg_sh,$00<<24|@enibg_sh,$9F<<24|@pal_sh,0
	dc.l 0	; terminator 2
; -----------------------------------------------------------------------------
@nem_pillow:	incbin artnem\splash_pillow.bin
	even
@enifg_pillow:
@enibg_pillow:	incbin mapeni\splash_pillow.bin
	even
@pal_pillow:	incbin pallet\splash_pillow.bin
	even

@nem_fnaf:	incbin artnem\splash_fnaf.bin
	even
@enifg_fnaf:
@enibg_fnaf:	incbin mapeni\splash_fnaf.bin
	even
@pal_fnaf:	incbin pallet\splash_fnaf.bin
	even

@nem_fartboy:	incbin artnem\splash_fartboy.bin
	even
@enifg_fartboy:
@enibg_fartboy:	incbin mapeni\splash_fartboy.bin
	even
@pal_fartboy:	incbin pallet\splash_fartboy.bin
	even

@nem_vroom:	incbin artnem\splash_vroom.bin
	even
@enifg_vroom:
@enibg_vroom:	incbin mapeni\splash_vroom.bin
	even
@pal_vroom:	incbin pallet\splash_vroom.bin
	even

@nem_mal:	incbin artnem\splash_mal.bin
	even
@enifg_mal:
@enibg_mal:	incbin mapeni\splash_mal.bin
	even
@pal_mal:	incbin pallet\splash_mal.bin
	even

@nem_sh:	incbin artnem\splash_sh.bin
	even
@enifg_sh:
@enibg_sh:	incbin mapeni\splash_sh.bin
	even
@pal_sh:	incbin pallet\splash_sh.bin
	even
	
IntroCutscene:		; no one fucking modify this or i swear to fucking god, except malachi :3
	dc.l $81<<24|@nem_PicBatch,$00<<24|@enifg_Picture1,$82<<24|@enibg_Picture1,$1C<<24|@pal_monochrome,1
	dc.l $81<<24|@nem_PicBatch,$00<<24|@enifg_Picture2,$8F<<24|@enibg_Picture2,$00<<24|@pal_monochrome,1	
	dc.l $81<<24|@nem_PicBatch,$00<<24|@enifg_Picture3,$82<<24|@enibg_Picture3,$00<<24|@pal_monochrome,0
	dc.l $81<<24|@nem_PicBatch2,$00<<24|@enifg_Picture4,$82<<24|@enibg_Picture4,$13<<24|@pal_monochrome,1
	dc.l $81<<24|@nem_PicBatch2,$00<<24|@enifg_Picture5,$82<<24|@enibg_Picture5,$00<<24|@pal_monochrome,1
	dc.l $81<<24|@nem_PicBatch2,$00<<24|@enifg_Picture6,$82<<24|@enibg_Picture6,$00<<24|@pal_monochrome,0
	dc.l 0	; terminator 2
	even
	
@nem_PicBatch:	incbin artnem\Batch1.bin
	even
@nem_PicBatch2:	incbin artnem\Batch2.bin
	even
@enifg_Picture1:
@enibg_Picture1:	incbin mapeni\Picture1.bin
	even
@pal_monochrome:	incbin pallet\monochrome.bin
	even

@enifg_Picture2:
@enibg_Picture2:	incbin mapeni\Picture2.bin
	even

@enifg_Picture3:
@enibg_Picture3:	incbin mapeni\Picture3.bin
	even
	
@enifg_Picture4:
@enibg_Picture4:	incbin mapeni\Picture4.bin
	even
	
@enifg_Picture5:
@enibg_Picture5:	incbin mapeni\Picture5.bin
	even
@enifg_Picture6:
@enibg_Picture6:	incbin mapeni\Picture6.bin
	even