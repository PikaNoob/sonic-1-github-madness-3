palettewhiteout = Pal_MakeFlash
v_pcyc_num = $FFFFF632
v_pal_buffer = $FFFFF650
v_pal_dry_dup = $FFFFFB80
palettewhitein = Pal_MakeWhite
v_bgscrposy_vdp =  $FFFFF618
v_bgscreenposx = $FFFFF708
v_hscrolltablebuffer = $FFFFCC00
v_megadrive = $FFFFFFFF8
v_screenposx = $FFFFF700
v_bgscreenposy = $FFFFF70C
v_pcyc_time = $FFFFF634
v_pal_dry = $FFFFFB00

; ===========================================================================
; ---------------------------------------------------------------------------
; Sailor Moon Henshin
; Feel free to use and maybe swap out with another senshi, please credit me for the code
; ---------------------------------------------------------------------------
GM_Henshin:
		move.b	#cmd_FadeOut,d0
		jsr	PlaySound_Special  ; fade out music
		jsr	PaletteWhiteOut

		lea	(vdp_control_port).l,a6
		move.w	#$8004,(a6)	; 8-colour mode
		move.w	#$8200+(vram_fg>>10),(a6) ; set foreground nametable address
		move.w	#$8400+(vram_bg>>13),(a6) ; set background nametable address
		move.w	#$9001,(a6)	; 64-cell hscroll size
		move.w	#$9200,(a6)	; window vertical position
		move.w	#$8B03,(a6)
		move.w	#$8720,(a6)	; set background colour (palette line 2, entry 0)
		move.w  #6,(v_pcyc_num).w
		move.w  #0,(v_pal_buffer+$C).w
		move.w  #0,(v_pal_buffer+$A).w
		clr.b	(f_wtr_state).w
		jsr	ClearScreen

		lea	(v_objspace).w,a1
		moveq	#0,d0
		move.w	#$7FF,d1

	HS_ClrObj:
		move.l	d0,(a1)+
		dbf	d1,HS_ClrObj	; fill object space ($D000-$EFFF) with 0

;		lea	(v_pal_dry_dup).w,a1
;		moveq	#cBlack,d0
;		move.w	#$1F,d1
;why did i leave that here
;	HS_ClrPal:
;		move.l	d0,(a1)+
;		dbf	d1,HS_ClrPal	; fill palette with 0 (black)

		locVRAM	$0
		lea	(Nem_Henshin).l,a0 ; load japanese logo patterns
		jsr	NemDec

		lea	($FF0000).l,a1
		lea	(Eni_HSBG1).l,a0
		moveq	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$E000,$3F,$1F

		lea	($FF0000).l,a1
		lea	(Eni_HSFG1).l,a0
		moveq	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$C000,$27,$1D

		moveq	#33,d0	; load palette 1
		jsr	PalLoad1
		move.w	#$B0,(v_demolength).w
;		jsr	(ExecuteObjects).l
;		jsr	(BuildSprites).l
		jsr	PaletteWhiteIn

		move.b	#$21,d0
		jsr	PlaySound	; play title screen music
		move.b	#$98,d0
		jsr	MegaPCM_PlaySample	; play title screen music
		lea	mercurytext1,a1
		jsr	KDebug_WriteToCmd

HS1_MainLoop:
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		bsr.w	DeformHS
		bsr.w	PalCycle_HS
;		jsr	(ExecuteObjects).l
;		jsr	(BuildSprites).l
		tst.w   (v_demolength).w
		beq.s   HSCONT
		bra.s	HS1_MainLoop	; if yes, branch

HSCONT:
		jsr	PaletteWhiteOut
		lea	($FF0000).l,a1
		lea	(Eni_HSBG2).l,a0
		moveq	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$E000,$27,$1D

		lea	($FF0000).l,a1
		lea	(Eni_HSFG2).l,a0
		moveq	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$C000,$27,$1D
		bsr.w	DeformHS
		clr.w	(v_bgscrposy_vdp).w
		clr.w	(v_bgscreenposx).w
		lea	(v_hscrolltablebuffer).w,a1	; copy fg and bg positions to hscroll
		move.w	#223,d1
		btst	#6,(v_megadrive).w	; Is this a PAL console?
		beq.s	@V28			; If not, skip.
		addi.b	#16,d1			; Scroll an extra 16 pixels.
@V28:
		move.w	(v_screenposx).w,d0
		swap.w	d0
		move.w	(v_bgscreenposx).w,d0
		neg.w	d0
loc_68Dat2:		
		move.l	d0,(a1)+
		dbf	d1,loc_68Dat2

		moveq	#34,d0	; load palette 2
		jsr	PalLoad1
		move.w	#$1D0,(v_demolength).w ; run title screen for $999 frames
;		jsr	(ExecuteObjects).l
;		jsr	(BuildSprites).l
		jsr	PaletteWhiteIn

HS_MainLoop:
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
;		jsr	(ExecuteObjects).l
;		jsr	(BuildSprites).l
		tst.w	(v_demolength).w
		bne.s	HS_MainLoop
;		cmp.b	#id_Bonus,(v_GMTest).w
;		beq.s	@level
;		move.w	#id_LevSel,(v_gamemode).w
;		rts	
;@level:
;		move.b	#id_Level,(v_gamemode).w
		rts	

mercurytext1:	dc.b	"Mercury Power Make-Up! "
		even
; ===========================================================================
; ---------------------------------------------------------------------------
; deformation code
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


DeformHS:
		sub.w	#4,(v_bgscreenposy).w
		jsr	ScrollVertical
		move.w	(v_bgscreenposy).w,(v_bgscrposy_vdp).w
		add.w	#9,(v_bgscreenposx).w

		lea	(v_hscrolltablebuffer).w,a1	; copy fg and bg positions to hscroll
		move.w	#223,d1
		btst	#6,(v_megadrive).w	; Is this a PAL console?
		beq.s	@V281			; If not, skip.
		addi.b	#16,d1			; Scroll an extra 16 pixels.
@V281:

		move.w	(v_bgscreenposx).w,d0
		neg.w	d0
loc_68Dt2:		
		move.l	d0,(a1)+
		dbf	d1,loc_68Dt2
		rts
; End of function DeformHS

; ---------------------------------------------------------------------------
; palette code
; ---------------------------------------------------------------------------
PalCycle_HS: ; mercury power make up!
		lea	(Pal_HenCyc).l,a0
		subq.w	#1,(v_pcyc_time).w ; decrement timer
		bpl.s	PCycHS_Skip	; if time remains, branch
		move.w	#1,(v_pcyc_time).w ; reset timer to 5 frames
		move.w	(v_pcyc_num).w,d0 ; get cycle number
		subq.w	#1,(v_pcyc_num).w ; increment cycle number
		lsl.w	#1,d0
		lea	(v_pal_dry+$24).w,a1
		adda.w  d0,a0
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.l  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		move.w  (a0)+,(a1)+
		tst.w	(v_pcyc_num).w ; is cycle done?
		beq.w	HSPalIncrease
PCycHS_Skip:
		rts	
HSPalIncrease:
		move.w  #6,(v_pcyc_num).w
		jmp	PalCycle_HS

; ---------------------------------------------------------------------------
; Compressed graphics - Henshin stuff
; ---------------------------------------------------------------------------
Eni_HSBG1:	incbin	"mercuryhenshin\HenshinBG1.bin"
		even
Eni_HSBG2:	incbin	"mercuryhenshin\HenshinBG2.bin"
		even
Eni_HSFG1:	incbin	"mercuryhenshin\HenshinFG1.bin"
		even
Eni_HSFG2:	incbin	"mercuryhenshin\HenshinFG2.bin"
		even
Nem_Henshin:	incbin	"mercuryhenshin\Henshinart.bin"
		even