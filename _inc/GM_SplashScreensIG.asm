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
		lsl.w	#2,d0
		btst	#6,($FFFFFFF8).w
		beq.s	@ntsctime
		addq.w	#2,d0
@ntsctime:
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
	; NTSC, PAL
@timelut:
	dc.w 0,0
	dc.w 30,25
	dc.w 8*60,8*50		; intro 1
	dc.w 7*60,7*50		; intro 2
	dc.w 9*60,9*50		; intro 3
	dc.w 7*60,7*50		; intro 4
	dc.w 10*60,10*50	; intro 5
	dc.w 11*60,11*50	; intro 6
	dc.w 4*60,4*50		; I ALWA
	dc.w 15*60,15*50	; ending 8

GM_SplashScreensListIG:
	dc.l $89<<24|@nem_pillow,$00<<24|@enifg_pillow,$94<<24|@enibg_pillow,$00<<24|@pal_pillow,0
	dc.l $81<<24|@nem_fnaf,$01<<24|@enifg_fnaf,$82<<24|@enibg_fnaf,$00<<24|@pal_fnaf,0
	dc.l $81<<24|@nem_fartboy,$00<<24|@enifg_fartboy,$00<<24|@enibg_fartboy,$81<<24|@pal_fartboy,0
	dc.l $81<<24|@nem_vroom,$00<<24|@enifg_vroom,$00<<24|@enibg_vroom,$02<<24|@pal_vroom,0
	dc.l $81<<24|@nem_mal,$00<<24|@enifg_mal,$00<<24|@enibg_mal,$97<<24|@pal_mal,0
	dc.l $81<<24|@nem_sh,$00<<24|@enifg_sh,$00<<24|@enibg_sh,$9F<<24|@pal_sh,0
	dc.l $81<<24|@nem_sowwy,$00<<24|@enifg_sowwy,$00<<24|@enibg_sowwy,$01<<24|@pal_sowwy,0
	dc.l $81<<24|Nem_ToyFreddy,$00<<24|Eni_ToyFreddy,$A5<<24|Eni_ToyFreddy,$00<<24|Pal_ToyFreddy,0	; MUST BE NUMBER 8 OR ELSE I NUKE THE WHOLE PROJECT YOUR IMMORAL, uhhh, fuckers, I'm gonna miku you I'm mikuing
	dc.l $81<<24|@nem_playnow,$00<<24|@enifg_playnow,$00<<24|@enibg_playnow,$07<<24|@pal_playnow,0
	dc.l $81<<24|@nem_actualpoop,$00<<24|@enifg_actualpoop,$00<<24|@enibg_actualpoop,$09<<24|@pal_actualpoop,0	; GMZ
	dc.l $81<<24|@nem_urfat,$01<<24|@enifg_urfat,$82<<24|@enibg_urfat,$00<<24|@pal_urfat,0
	dc.l $81<<24|@nem_BILLglider,$00<<24|@enifg_BILLglider,$00<<24|@enibg_BILLglider,$0B<<24|@pal_BILLglider,0	; homemade aircraft very safe
	dc.l $81<<24|@nem_stop,$00<<24|@enifg_stop,$00<<24|@enibg_stop,$13<<24|@pal_stop,0
	dc.l $81<<24|@nem_hk97,$00<<24|@enifg_hk97,$00<<24|@enibg_hk97,$25<<24|@pal_hk97,0
	dc.l $81<<24|@nem_ronicsetro,$00<<24|@enifg_ronicsetro,$00<<24|@enibg_ronicsetro,$1B<<24|@pal_ronicsetro,0
	dc.l $81<<24|@nem_dawg,$00<<24|@enifg_dawg,$00<<24|@enibg_dawg,$09<<24|@pal_dawg,0
	dc.l $81<<24|@nem_newbark,$00<<24|@enifg_newbark,$00<<24|@enibg_newbark,$01<<24|@pal_newbark,0				;	Literally just New Bark Town
	dc.l 0	; terminator 2
;advanced splash screen plays here, THX is way down here
; -----------------------------------------------------------------------------
@nem_pillow:	incbin artnem\splash_pillow.bin
	even
@enifg_pillow:
@enibg_pillow:	incbin mapeni\splash_pillow.bin
	even
@pal_pillow:	incbin pallet\splash_pillow.bin
	even

@nem_newbark:	incbin artnem\splash_newbark.bin
	even
@enifg_newbark:
@enibg_newbark:	incbin mapeni\splash_newbark.bin
	even
@pal_newbark:	incbin pallet\splash_newbark.bin
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

@nem_sowwy:	incbin artnem\splash_sowwy.bin
	even
@enifg_sowwy:
@enibg_sowwy:	incbin mapeni\splash_sowwy.bin
	even
@pal_sowwy:	incbin pallet\monochrome.bin
	even

@nem_playnow:	incbin artnem\splash_playnow.bin
	even
@enifg_playnow:
@enibg_playnow:	incbin mapeni\splash_playnow.bin
	even
@pal_playnow:	incbin pallet\splash_playnow.bin
	even

@nem_actualpoop:	incbin artnem\actualpoop.bin	; GMZ
	even	; GMZ
@enifg_actualpoop:	; GMZ
@enibg_actualpoop:	incbin mapeni\actualpoop.bin	; GMZ
	even	; GMZ
@pal_actualpoop:	incbin pallet\actualpoop.bin	; GMZ
	even	; GMZ

@nem_urfat:	incbin artnem\urfat.bin
	even
@enifg_urfat:
@enibg_urfat:	incbin mapeni\urfat.bin
	even
@pal_urfat:	incbin pallet\urfat.bin
	even
	
@nem_BILLglider:	incbin artnem\GLIDER11.bin	; THE GLIDER MF
	even	; GMZ
@enifg_BILLglider:	; GMZ
@enibg_BILLglider:	incbin mapeni\GLIDER11.bin	; GLIDER11
	even	; GMZ im too lazy to chaange thissssssssssssssssssssssssssssssssssssssssssssssssssssssssss
@pal_BILLglider:	incbin pallet\GLIDER11.bin	;
	even	; 

@nem_stop:	incbin artnem\splash_stop.bin
	even
@enifg_stop:
@enibg_stop:	incbin mapeni\splash_stop.bin
	even
@pal_stop:	incbin pallet\splash_stop.bin
	even
@nem_ronicsetro: incbin artnem\splash_ronicsetro.bin
	even
@enifg_ronicsetro:
@enibg_ronicsetro: incbin mapeni\splash_ronicsetro.bin
	even
@pal_ronicsetro: incbin pallet\ronicsetro.bin
	even
@nem_hk97:	incbin artnem\hk97.bin
	even
@enifg_hk97:
@enibg_hk97:	incbin mapeni\hk97.bin
	even
@pal_hk97:	incbin pallet\hk97.bin
	even

@nem_dawg:	incbin artnem\dawg.bin
	even
@enifg_dawg:
@enibg_dawg:	incbin mapeni\dawg.bin
	even
@pal_dawg:	incbin pallet\dawg.bin
	even
thxsplash:
	dc.l $81<<24|@nem_thx,$03<<24|@enifg_thx,$00<<24|@enibg_thx,$08<<24|@pal_thx,0
	dc.l 0	; terminator 2
@nem_thx:	incbin artnem\splash_thx.bin
	even
@enifg_thx:
@enibg_thx:	incbin mapeni\splash_thx.bin
	even
@pal_thx:	incbin pallet\splash_thx.bin
	even

IntroCutscene:		; no one fucking modify this or i swear to fucking god, except malachi :3
	dc.l $81<<24|@nem_PicBatch,$02<<24|@enifg_Picture1,$9F<<24|@enibg_Picture1,$85<<24|@pal_monochrome,1
	dc.l $81<<24|@nem_PicBatch,$03<<24|@enifg_Picture2,$A0<<24|@enibg_Picture2,$00<<24|@pal_monochrome,0	
	dc.l $81<<24|@nem_PicBatch,$04<<24|@enifg_Picture3,$A1<<24|@enibg_Picture3,$00<<24|@pal_monochrome,0
	dc.l $81<<24|@nem_PicBatch2,$05<<24|@enifg_Picture4,$A2<<24|@enibg_Picture4,$97<<24|@pal_monochrome,1
	dc.l $81<<24|@nem_PicBatch2,$06<<24|@enifg_Picture5,$A3<<24|@enibg_Picture5,$00<<24|@pal_monochrome,1
	dc.l $81<<24|@nem_PicBatch2,$07<<24|@enifg_Picture6,$A4<<24|@enibg_Picture6,$90<<24|@pal_monochrome,0
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

EndingCutscene:		; no one fucking modify this or i swear to fucking god, except malachi :3
	dc.l $81<<24|@nem_EndPicBatch,$03<<24|@enifg_EndPicture1,$B5<<24|@enibg_EndPicture1,$99<<24|@pal_monochrome,1
	dc.l $81<<24|@nem_EndPicBatch,$06<<24|@enifg_EndPicture2,$B6<<24|@enibg_EndPicture2,$00<<24|@pal_monochrome,0	
	dc.l $81<<24|@nem_EndPicBatch,$04<<24|@enifg_EndPicture3,$B7<<24|@enibg_EndPicture3,$00<<24|@pal_monochrome,0
	dc.l $81<<24|@nem_EndPicBatch2,$04<<24|@enifg_EndPicture8,$B8<<24|@enibg_EndPicture8,$00<<24|@pal_monochrome,0
	dc.l $81<<24|@nem_EndPicBatch2,$06<<24|@enifg_EndPicture4,$B9<<24|@enibg_EndPicture4,$84<<24|@pal_monochrome,0
	dc.l $81<<24|@nem_EndPicBatch2,$06<<24|@enifg_EndPicture5,$BA<<24|@enibg_EndPicture5,$00<<24|@pal_monochrome,0
	dc.l $81<<24|@nem_EndPicBatch2,$07<<24|@enifg_EndPicture6,$BB<<24|@enibg_EndPicture6,$8A<<24|@pal_monochrome,0
	dc.l $81<<24|@nem_EndPicBatch2,$09<<24|@enifg_EndPicture7,$BC<<24|@enibg_EndPicture7,$8B<<24|@pal_monochrome,0
	dc.l 0	; terminator 2
	even
	
	
@nem_EndPicBatch:	incbin artnem\EndBatch1.bin
	even
@nem_EndPicBatch2:	incbin artnem\EndBatch2.bin
	even
	
@enifg_EndPicture1:
@enibg_EndPicture1:	incbin mapeni\EndPic1.bin
	even
@enifg_EndPicture2:
@enibg_EndPicture2:	incbin mapeni\EndPic2.bin
	even
@enifg_EndPicture3:
@enibg_EndPicture3:	incbin mapeni\EndPic3.bin
	even
@enifg_EndPicture4:
@enibg_EndPicture4:	incbin mapeni\EndPic4.bin
	even
@enifg_EndPicture5:
@enibg_EndPicture5:	incbin mapeni\EndPic5.bin
	even
@enifg_EndPicture6:
@enibg_EndPicture6:	incbin mapeni\EndPic6.bin
	even
@enifg_EndPicture7:
@enibg_EndPicture7:	incbin mapeni\EndPic7.bin
	even

@enifg_EndPicture8:
@enibg_EndPicture8:	incbin mapeni\EndPic8.bin
	even
	
	
@pal_monochrome:	incbin pallet\monochrome.bin
	even


EndingSleeper:
	dc.l $81<<24|@nem,$00<<24|@enifg,$B1<<24|@enibg,$00<<24|@pal,0
	dc.l 0	; terminator 2

@nem:	incbin artnem\ending_kiryu.bin
	even
@enifg:
@enibg:	incbin mapeni\ending_kiryu.bin
	even
@pal:	incbin pallet\ending_kiryu.bin
	even

EndingAlways:
	dc.l $81<<24|Nem_ToyFreddy,$08<<24|Eni_ToyFreddyEnjoyer,$AD<<24|Eni_ToyFreddy,$99<<24|Pal_ToyFreddy,0
	dc.l 0	; terminator 2

EndingGomer:
	dc.l $81<<24|Nem_Gomer,$08<<24|Eni_Gomer,$90<<24|Eni_Gomer,$11<<24|Pal_Sonic,1
	dc.l $81<<24|Nem_Gomer,$08<<24|Eni_Gomer1,$90<<24|Eni_Gomer1,$00<<24|Pal_Sonic,1
	dc.l $81<<24|Nem_Gomer,$08<<24|Eni_Gomer2,$90<<24|Eni_Gomer2,$00<<24|Pal_Sonic,0
	dc.l $81<<24|Nem_Gomer,$08<<24|Eni_Gomer3,$90<<24|Eni_Gomer3,$B9<<24|Pal_Sonic,0
	dc.l 0	; terminator 2

Nem_ToyFreddy:	incbin artnem\splash_fat.bin
	even
Eni_ToyFreddyEnjoyer:	incbin mapeni\splash_fat_fg.bin
Eni_ToyFreddy:	incbin mapeni\splash_fat.bin
	even
Pal_ToyFreddy:	incbin pallet\splash_fat.bin
	even