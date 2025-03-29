; ===========================================================================
; ---------------------------------------------------------------------------
; OTIS.EXE
; ---------------------------------------------------------------------------
GM_Otis:
		move.b	#cmd_FadeOut,d0
		bsr.w	PlaySound_Special  ; fade out music
		bsr.w	ClearPLC
		bsr.w	PaletteFadeOut
		lea	(vdp_control_port).l,a6
		move.w	#$8004,(a6)	; use 8-colour mode
		move.w	#$8200+(vram_fg>>10),(a6) ; set foreground nametable address
		move.w	#$8400+(vram_bg>>13),(a6) ; set background nametable address
		move.w	#$9001,(a6)	; 64-cell hscroll size
		move.w	#$9200,(a6)	; window vertical position
		move.w	#$8B03,(a6)	; line scroll mode
		move.w	#$8720,(a6)	; set background colour (line 3; colour 0)
		move.w  #$28,(v_pcyc_num).w
		move.w  #0,(v_pal_buffer+$C).w
		move.w  #0,(v_pal_buffer+$A).w
		clr.b	(f_wtr_state).w
		bsr.w	ClearScreen
		ResetDMAQueue
		move.w	(v_vdp_buffer1).w,d0
		ori.b	#$40,d0
		move.w	d0,(vdp_control_port).l

GM_Sega_ClrObj:
		lea	(v_objspace).w,a1
		moveq	#0,d0
		move.w	#$7FF,d1

GM_Sega_ClrObjRam:
		move.l	d0,(a1)+
		dbf	d1,GM_Sega_ClrObjRam ; clear object RAM
		
		locVRAM	0
		lea     (Nem_OtFont).l,a0
		bsr.w   NemDec		

		locVRAM	$2400
		lea     (Nem_Ot1).l,a0
		bsr.w   NemDec	
	
		lea	($FF0000).l,a1
		lea	(Eni_Ot0).l,a0 ; load mappings
		move.w	#0,d0
		bsr.w	EniDec
		copyTilemap	$FF0000,$C000,$27,$1B

		lea	($FF0000).l,a1
		lea	(Eni_OtBG1).l,a0 ; load mappings
		move.w	#$120,d0
		bsr.w	EniDec
		copyTilemap	$FF0000,$E000,$27,$1B

		moveq	#0,d0
		bsr.w	PalLoad1
		bsr.w	PaletteFadeIn
		move.w  #$FF,(v_demolength).w
		move.w	#0,(v_huddraw).w
		move.b  #PCM_Sega,d0
		jsr	MegaPCM_PlaySample
GM_S1_MainLoop:
		move.b	#4,(v_vbla_routine).w
		bsr.w	WaitForVBla
		tst.w   (v_demolength).w
		bne.s	GM_S1_MainLoop	; if yes, branch

		lea	($FF0000).l,a1
		lea	(Eni_Ot1).l,a0 ; load mappings
		move.w	#0,d0
		bsr.w	EniDec
		copyTilemap	$FF0000,$C000,$27,$1B
		move.w  #$FF,(v_demolength).w
GM_S2_MainLoop:
		move.b	#2,(v_vbla_routine).w
		bsr.w	WaitForVBla
		tst.w   (v_demolength).w
		bne.s   GM_S2_MainLoop

		move.w	#$2020,(v_pfade_start).w ; fade in 2th palette line
		bsr.w	PalFadeOut_Alt

		lea	($FF0000).l,a1
		lea	(Eni_Ot2).l,a0 ; load mappings
		move.w	#0,d0
		bsr.w	EniDec
		copyTilemap	$FF0000,$C000,$27,$1B
		move.w  #$FF,(v_demolength).w
GM_S3_MainLoop:
		move.b	#2,(v_vbla_routine).w
		bsr.w	WaitForVBla
		tst.w   (v_demolength).w

		bne.s	GM_S3_MainLoop	; if yes, branch
		move.b	#cmd_FadeOut,d0

		bsr.w	ClearScreen

		cmp.b	#btnA,(v_jpadhold1).w ; are u ready for miku?
		beq.w	MIKUCHECK	; if yes, branch

		locVRAM	$2400
		lea     (Nem_Ot2).l,a0
		bsr.w   NemDec	

		lea	($FF0000).l,a1
		lea	(Eni_OtBG2).l,a0 ; load mappings
		move.w	#$120,d0
		bsr.w	EniDec
		copyTilemap	$FF0000,$E000,$27,$1B
		move.w  #$FF,(v_demolength).w
		bsr.w	PaletteFadeIn
GM_S4_MainLoop:
		move.b	#2,(v_vbla_routine).w
		bsr.w	WaitForVBla
		tst.w   (v_demolength).w
		bne.s	GM_S4_MainLoop	; if yes, branch

		lea	($FF0000).l,a1
		lea	(Eni_Ot3).l,a0 ; load mappings
		move.w	#$120,d0
		bsr.w	EniDec
		copyTilemap	$FF0000,$C000,$27,$1B
		move.b  #PCM_Sega,d0
		jsr	MegaPCM_PlaySample
		move.w  #$40,(v_demolength).w
GM_S5_MainLoop:
		move.b	#2,(v_vbla_routine).w
		bsr.w	WaitForVBla
		tst.w   (v_demolength).w
		bne.s	GM_S5_MainLoop	; if yes, branch

		move.l	#$C0000000,($C00004).l ; set VDP to CRAM write
		moveq	#$3F,d7
CheckSum_Red:
		move.w	#$E,($C00000).l	; fill screen with colour red
		dbf	d7,CheckSum_Red	; repeat $3F more times

CheckSum_Loop:
		move.b	$FF,(psg_input).l
		bra.s	CheckSum_Loop

MIKUCHECK:
		locVRAM	$2400
		lea     (Nem_Ot3).l,a0
		bsr.w   NemDec	

		lea	($FF0000).l,a1
		lea	(Eni_OtBG3).l,a0 ; load mappings
		move.w	#$120,d0
		bsr.w	EniDec
		copyTilemap	$FF0000,$E000,$27,$1B
		move.w  #$FF,(v_demolength).w
		bsr.w	PaletteFadeIn
GM_S6_MainLoop:
		move.b	#2,(v_vbla_routine).w
		bsr.w	WaitForVBla
		tst.w   (v_demolength).w
		bne.s	GM_S6_MainLoop	; if yes, branc

loc_2544: ; GotoCN
		move.b	#id_CN,(v_gamemode).w	; go to Title Screen
		rts
