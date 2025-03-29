cmd_fadeout:	equ $E4
palettefadeout = Pal_FadeFrom
vdp_control_port:	equ $C00004
vram_fg:	equ $C000
vram_bg:	equ $E000
f_wtr_state:	equ $FFFFF64E
v_vdp_buffer1:	equ $FFFFF60C
v_objspace:	equ $FFFFD000
palettefadein = Pal_FadeTo
v_demolength:	equ $FFFFF614
pcm_ohyeah = $91
pcm_otisexe = $92
pcm_Amb = $93
pcm_mikuing = $94
v_vbla_routine:	equ $FFFFF62A
waitforvbla = DelayProgram
v_pfade_start:	equ $FFFFF626
palfadeout_alt = Pal_FadeFrom2
btna = %01000000 
v_jpadhold1:		equ $FFFFF604
psg_input:		equ $C00011

; ---------------------------------------------------------------------------
; Set a VRAM address via the VDP control port.
; input: 16-bit VRAM address, control port (default is ($C00004).l)
; ---------------------------------------------------------------------------

locVRAM:	macro loc,controlport
		if (narg=1)
		move.l	#($40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14)),(vdp_control_port).l
		else
		move.l	#($40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14)),\controlport
		endc
		endm

; ---------------------------------------------------------------------------
; Copy a tilemap from 68K (ROM/RAM) to the VRAM without using DMA
; input: source, destination, width [cells], height [cells]
; ---------------------------------------------------------------------------

copyTilemap:	macro source,destination,width,height
		lea	(source).l,a1
		locVRAM	\destination,d0
		moveq	#width,d1
		moveq	#height,d2
		jsr	ShowVDPGraphics
		endm

; ===========================================================================
; ---------------------------------------------------------------------------
; OTIS.EXE
; ---------------------------------------------------------------------------
GM_Otis:
		move.b	#cmd_FadeOut,d0
		jsr	PlaySound_Special  ; fade out music
		jsr	ClearPLC
		jsr	PaletteFadeOut
		lea	(vdp_control_port).l,a6
		move.w	#$8004,(a6)	; use 8-colour mode
		move.w	#$8200+(vram_fg>>10),(a6) ; set foreground nametable address
		move.w	#$8400+(vram_bg>>13),(a6) ; set background nametable address
		move.w	#$9001,(a6)	; 64-cell hscroll size
		move.w	#$9200,(a6)	; window vertical position
		move.w	#$8B03,(a6)	; line scroll mode
		move.w	#$8720,(a6)	; set background colour (line 3; colour 0)
		clr.b	(f_wtr_state).w
		jsr	ClearScreen

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
		jsr   NemDec		

		locVRAM	$2400
		lea     (Nem_Ot1).l,a0
		jsr   NemDec	
	
		lea	($FF0000).l,a1
		lea	(Eni_Ot0).l,a0 ; load mappings
		move.w	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$C000,$27,$1D

		lea	($FF0000).l,a1
		lea	(Eni_OtBG1).l,a0 ; load mappings
		move.w	#$120,d0
		jsr	EniDec
		copyTilemap	$FF0000,$E000,$27,$1D

		moveq	#$16,d0
		jsr	PalLoad1
		jsr	PaletteFadeIn
		move.w  #$FF,(v_demolength).w

		move.b  #PCM_OtisExe,d0
		jsr	MegaPCM_PlaySample
GM_S1_MainLoop:
		move.b	#4,(v_vbla_routine).w
		jsr	WaitForVBla
		tst.w   (v_demolength).w
		bne.s	GM_S1_MainLoop	; if yes, branch

		lea	($FF0000).l,a1
		lea	(Eni_Ot1).l,a0 ; load mappings
		move.w	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$C000,$27,$1D
		move.w  #$FF,(v_demolength).w
GM_S2_MainLoop:
		move.b	#2,(v_vbla_routine).w
		jsr	WaitForVBla
		tst.w   (v_demolength).w
		bne.s   GM_S2_MainLoop

		move.w	#$2020,(v_pfade_start).w ; fade in 2th palette line
		jsr	PalFadeOut_Alt

		lea	($FF0000).l,a1
		lea	(Eni_Ot2).l,a0 ; load mappings
		move.w	#0,d0
		jsr	EniDec
		copyTilemap	$FF0000,$C000,$27,$1D
		move.w  #$FF,(v_demolength).w
GM_S3_MainLoop:
		move.b	#2,(v_vbla_routine).w
		jsr	WaitForVBla
		tst.w   (v_demolength).w
		bne.s	GM_S3_MainLoop	; if yes, branch
		move.b	#cmd_FadeOut,d0

		cmp.b	#btnA,(v_jpadhold1).w ; are u ready for miku?
		beq.w	MIKUCHECK	; if yes, branch
		jsr	ClearScreen

		locVRAM	$2400
		lea     (Nem_Ot2).l,a0
		jsr   NemDec	

		lea	($FF0000).l,a1
		lea	(Eni_OtBG2).l,a0 ; load mappings
		move.w	#$120,d0
		jsr	EniDec
		copyTilemap	$FF0000,$E000,$27,$1D
		move.w  #$FF,(v_demolength).w
		jsr	PaletteFadeIn

		move.b  #PCM_Amb,d0
		jsr	MegaPCM_PlaySample

GM_S4_MainLoop:
		move.b	#2,(v_vbla_routine).w
		jsr	WaitForVBla
		tst.w   (v_demolength).w
		bne.s	GM_S4_MainLoop	; if yes, branch

		lea	($FF0000).l,a1
		lea	(Eni_Ot3).l,a0 ; load mappings
		move.w	#$120,d0
		jsr	EniDec
		copyTilemap	$FF0000,$C000,$27,$1D
		move.b  #PCM_OhYeah,d0
		jsr	MegaPCM_PlaySample
		move.w  #$40,(v_demolength).w
GM_S5_MainLoop:
		move.b	#2,(v_vbla_routine).w
		jsr	WaitForVBla
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
		jsr	ClearScreen
		locVRAM	$2400
		lea     (Nem_Ot3).l,a0
		jsr   NemDec	

		lea	($FF0000).l,a1
		lea	(Eni_OtBG3).l,a0 ; load mappings
		move.w	#$120,d0
		jsr	EniDec
		copyTilemap	$FF0000,$E000,$27,$1D
		move.w  #$FF,(v_demolength).w
		jsr	PaletteFadeIn
		move.b  #PCM_Mikuing,d0
		jsr	MegaPCM_PlaySample
GM_S6_MainLoop:
		move.b	#2,(v_vbla_routine).w
		jsr	WaitForVBla
		tst.w   (v_demolength).w
		bne.s	GM_S6_MainLoop	; if yes, brancH
		jsr	GM_SplashScreensIG
		rts

		include		"otisexe\assets.asm"

