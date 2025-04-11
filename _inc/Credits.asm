; ---------------------------------------------------------------------------
; Credits ending sequence
; ---------------------------------------------------------------------------

Credits:				; XREF: GameModeArray
		jsr	ClearPLC
		jsr	Pal_FadeFrom
		lea	($C00004).l,a6
		move.w	#$8004,(a6)
		move.w	#$8230,(a6)
		move.w	#$8407,(a6)
		move.w	#$9001,(a6)
		move.w	#$9200,(a6)
		move.w	#$8B03,(a6)
		move.w	#$8720,(a6)
		clr.b	($FFFFF64E).w
		jsr	ClearScreen
		lea	($FF0000).l,a1
		move.w	#$FFF,d0

Cred_ClrLayoutRam:
		clr.l	(a1)+
		dbf	d0,Cred_ClrLayoutRam

		lea	($FFFFD000).w,a1
		moveq	#0,d0
		move.w	#$7FF,d1

Cred_ClrObjRam:
		move.l	d0,(a1)+
		dbf	d1,Cred_ClrObjRam ; clear object RAM

		move.l	#$74000002,($C00004).l
		lea	(Nem_CrackersASCII).l,a0	; GMZ: Load ASCII font for the credits text
		jsr	NemDec
		lea	($FFFFFB80).w,a1
		moveq	#0,d0
		move.w	#$1F,d1

Cred_ClrPallet:
		move.l	d0,(a1)+
		dbf	d1,Cred_ClrPallet ; fill pallet	with black ($0000)

		moveq	#3,d0
		jsr	PalLoad1	; load Sonic's pallet
		jsr	Pal_FadeTo	; GMZ: Fade in
		lea	($C00000).l,a6
		move.l	#$4F820003,($FF0004).l
		move.l	#1140,($FF0008).l	; US3 BGM Timer

Cred_Loop:
		move.b	#6,($FFFFF62A).w
		jsr	DelayProgram

		tst.l	($FF0008).l	; GMZ: Is Unreal Superhero 3 still playing?
		bne.s	Cred_NoRipBGM	; GMZ: If yes, branch
		tst.b	($FF000C).l	; GMZ: Is the credits rip playing?
		bne.s	Cred_NoSetRipBGM	; GMZ: If yes, branch
		move.w	#$E4,d0
		jsr	PlaySound
		move.w	#$91,d0
		jsr	PlaySound
		st	($FF000C).l
		bra.s	Cred_NoSetRipBGM

Cred_NoRipBGM:
		subq.l	#1,($FF0008).l

Cred_NoSetRipBGM:
		tst.w	($FF0002).l
		bne.s	Cred_WaitDelay
		move.w	#$6000,($FF0002).l	; GMZ: Set roll delay

Cred_WaitDelay:
		subq.w	#1,($FF0002).l
		bne.s	Cred_WaitDelay	; GMZ: Wait for a few frames
		addq.w	#1,($FFF616).l	; GMZ: Roll credits by 1 pixel

		move.w	($FFF616).l,d0
		andi.w	#7,d0	; GMZ: Have we scrolled through an entire character?
		bne.s	Cred_Loop	; GMZ: If not, branch

		bsr.s	LoadCredText
		bra.s	Cred_Loop
		rts

; ---------------------------------------------------------------------------
; Load Credits Text
; ---------------------------------------------------------------------------

LoadCredText:
		move.l	($FF0004).l,4(a6)	; GMZ: Write to the bottom of the screen
		moveq	#0,d0
		moveq	#$20,d1

LCText_ClearLine:
		move.l	d0,(a6)	; GMZ: Clear two tiles in the plane
		dbf	d1,LCText_ClearLine

		move.l	($FF0004).l,4(a6)	; GMZ: Write to the bottom of the screen
		add.l	#$800000,($FF0004).l	; GMZ: Increment plane position
		andi.l	#$4FFFFFFF,($FF0004).l	; GMZ: Prevent overflow
		
		cmpi.w	#(CredText_IndexEnd-CredText_Index),($FF0000).l
		bhs.s	LCText_Exit
		lea	(CredText_Index).l,a0
		moveq	#0,d0
		move.w	($FF0000).l,d0	; GMZ: Get credit ID
		adda.w	(a0,d0.w),a0	; GMZ: Get credit text

LCText_Loop:
		moveq	#0,d1
		move.b	(a0)+,d1
		tst.b	d1	; GMZ: Are we reading a terminator command?
		beq.s	LCText_Next	; GMZ: If yes, branch
		add.w	#$580,d1
		move.w	d1,(a6)
		bra.s	LCText_Loop

LCText_Next:
		addi.w	#2,($FF0000).l	; GMZ: Increment credit ID
		rts

LCText_Exit:
		move.b	#0,($FFF600).l	; GMZ: Go to SEGA screen
		jmp	MainGameLoop

; ---------------------------------------------------------------------------
; Credits Text
; ---------------------------------------------------------------------------
CredText_Index:
		dc.w	CredText_SGMCreds-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index

		dc.w	CredText_CreatedBy-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_PikaNoob-CredText_Index
		dc.w	CredText_STDH-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index

		dc.w	CredText_Prog-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_ProgDetail00-CredText_Index
		dc.w	CredText_ProgDetail01-CredText_Index
		dc.w	CredText_ProgDetail02-CredText_Index
		dc.w	CredText_ProgDetail17-CredText_Index
		dc.w	CredText_Carlos-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_ProgDetail03-CredText_Index
		dc.w	CredText_ProgDetail04-CredText_Index
		dc.w	CredText_ProgDetail05-CredText_Index
		dc.w	CredText_ProgDetail06-CredText_Index
		dc.w	CredText_ProgDetail07-CredText_Index
		dc.w	CredText_ProgDetail08-CredText_Index
		dc.w	CredText_ProgDetail09-CredText_Index
		dc.w	CredText_Coni-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_ProgDetail0A-CredText_Index
		dc.w	CredText_DaxKatter-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_ProgDetail0B-CredText_Index
		dc.w	CredText_ProgDetail0C-CredText_Index
		dc.w	CredText_ProgDetail0D-CredText_Index
		dc.w	CredText_ProgDetail0E-CredText_Index
		dc.w	CredText_GMZ-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_ProgDetail0F-CredText_Index
		dc.w	CredText_Guyke-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_ProgDetail10-CredText_Index
		dc.w	CredText_ProgDetail11-CredText_Index
		dc.w	CredText_Kat-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_ProgDetail14-CredText_Index
		dc.w	CredText_ProgDetail15-CredText_Index
		dc.w	CredText_ProgDetail16-CredText_Index
		dc.w	CredText_ProgDetail18-CredText_Index
		dc.w	CredText_Malachi-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_ProgDetail12-CredText_Index
		dc.w	CredText_ProgDetail13-CredText_Index
		dc.w	CredText_STDH-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_ProgDetail18-CredText_Index
		dc.w	CredText_ProgDetail19-CredText_Index
		dc.w	CredText_ProgDetail1A-CredText_Index
		dc.w	CredText_Vertz-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_ProgDetail1B-CredText_Index
		dc.w	CredText_Naoto-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		
		dc.w	CredText_Chars-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_CharsDetail00-CredText_Index
		dc.w	CredText_Carlos-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_CharsDetail01-CredText_Index
		dc.w	CredText_CharsDetail02-CredText_Index
		dc.w	CredText_Coni-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_CharsDetail03-CredText_Index
		dc.w	CredText_DaxKatter-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_CharsDetail04-CredText_Index
		dc.w	CredText_CharsDetail05-CredText_Index
		dc.w	CredText_Malachi-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_CharsDetail06-CredText_Index
		dc.w	CredText_Dawid-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index

		dc.w	CredText_Grafx-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail00-CredText_Index
		dc.w	CredText_Carlos-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail01-CredText_Index
		dc.w	CredText_GrafxDetail02-CredText_Index
		dc.w	CredText_GrafxDetail03-CredText_Index
		dc.w	CredText_GrafxDetail04-CredText_Index
		dc.w	CredText_GrafxDetail05-CredText_Index
		dc.w	CredText_GrafxDetail06-CredText_Index
		dc.w	CredText_GrafxDetail07-CredText_Index
		dc.w	CredText_GrafxDetail08-CredText_Index
		dc.w	CredText_Coni-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail09-CredText_Index
		dc.w	CredText_Ding-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail0A-CredText_Index
		dc.w	CredText_ProgDetail0C-CredText_Index
		dc.w	CredText_GMZ-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail0B-CredText_Index
		dc.w	CredText_GrafxDetail0C-CredText_Index
		dc.w	CredText_GrafxDetail0D-CredText_Index
		dc.w	CredText_GrafxDetail0E-CredText_Index
		dc.w	CredText_GrafxDetail0F-CredText_Index
		dc.w	CredText_GrafxDetail10-CredText_Index
		dc.w	CredText_GrafxDetail11-CredText_Index
		dc.w	CredText_GrafxDetail12-CredText_Index
		dc.w	CredText_GrafxDetail13-CredText_Index
		dc.w	CredText_GrafxDetail14-CredText_Index
		dc.w	CredText_GrafxDetail15-CredText_Index
		dc.w	CredText_GrafxDetail16-CredText_Index
		dc.w	CredText_GrafxDetail17-CredText_Index
		dc.w	CredText_GrafxDetail18-CredText_Index
		dc.w	CredText_GrafxDetail19-CredText_Index
		dc.w	CredText_Guyke-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail1A-CredText_Index
		dc.w	CredText_ImScatman-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail1B-CredText_Index
		dc.w	CredText_GrafxDetail1C-CredText_Index
		dc.w	CredText_Kat-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail1D-CredText_Index
		dc.w	CredText_GrafxDetail1E-CredText_Index
		dc.w	CredText_GrafxDetail1F-CredText_Index
		dc.w	CredText_GrafxDetail20-CredText_Index
		dc.w	CredText_Matt-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail21-CredText_Index
		dc.w	CredText_RBNik-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail21-CredText_Index
		dc.w	CredText_Rosie-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail22-CredText_Index
		dc.w	CredText_GrafxDetail23-CredText_Index
		dc.w	CredText_STDH-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail24-CredText_Index
		dc.w	CredText_Toast-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail25-CredText_Index
		dc.w	CredText_Undying-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail26-CredText_Index
		dc.w	CredText_GrafxDetail27-CredText_Index
		dc.w	CredText_GrafxDetail28-CredText_Index
		dc.w	CredText_GrafxDetail29-CredText_Index
		dc.w	CredText_GrafxDetail2A-CredText_Index
		dc.w	CredText_Vertz-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail2B-CredText_Index
		dc.w	CredText_GrafxDetail2C-CredText_Index
		dc.w	CredText_Dawid-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_GrafxDetail2D-CredText_Index
		dc.w	CredText_GrafxDetail2E-CredText_Index
		dc.w	CredText_GrafxDetail2F-CredText_Index
		dc.w	CredText_GrafxDetail30-CredText_Index
		dc.w	CredText_PikaNoob-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index

		dc.w	CredText_Level-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_LevelDetail00-CredText_Index
		dc.w	CredText_LevelDetail01-CredText_Index
		dc.w	CredText_LevelDetail02-CredText_Index
		dc.w	CredText_Coni-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_LevelDetail03-CredText_Index
		dc.w	CredText_DaxKatter-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_LevelDetail04-CredText_Index
		dc.w	CredText_Ding-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_LevelDetail04-CredText_Index
		dc.w	CredText_Kat-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_LevelDetail05-CredText_Index
		dc.w	CredText_LevelDetail06-CredText_Index
		dc.w	CredText_STDH-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_LevelDetail07-CredText_Index
		dc.w	CredText_LevelDetail08-CredText_Index
		dc.w	CredText_Vertz-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_LevelDetail09-CredText_Index
		dc.w	CredText_LevelDetail0A-CredText_Index
		dc.w	CredText_PikaNoob-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index

		dc.w	CredText_Music-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail00-CredText_Index
		dc.w	CredText_Carlos-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail01-CredText_Index
		dc.w	CredText_MusicDetail02-CredText_Index
		dc.w	CredText_MusicDetail03-CredText_Index
		dc.w	CredText_MusicDetail04-CredText_Index
		dc.w	CredText_MusicDetail05-CredText_Index
		dc.w	CredText_MusicDetail06-CredText_Index
		dc.w	CredText_Coni-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail07-CredText_Index
		dc.w	CredText_DaxKatter-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail08-CredText_Index
		dc.w	CredText_Ding-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail09-CredText_Index
		dc.w	CredText_GMZ-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail0A-CredText_Index
		dc.w	CredText_MusicDetail0B-CredText_Index
		dc.w	CredText_MusicDetail0C-CredText_Index
		dc.w	CredText_MusicDetail0D-CredText_Index
		dc.w	CredText_MusicDetail0E-CredText_Index
		dc.w	CredText_Guyke-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail0F-CredText_Index
		dc.w	CredText_MusicDetail10-CredText_Index
		dc.w	CredText_Matt-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail11-CredText_Index
		dc.w	CredText_STDH-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail11-CredText_Index
		dc.w	CredText_TGamer-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail1A-CredText_Index
		dc.w	CredText_Toast-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail12-CredText_Index
		dc.w	CredText_MusicDetail13-CredText_Index
		dc.w	CredText_MusicDetail14-CredText_Index
		dc.w	CredText_MusicDetail15-CredText_Index
		dc.w	CredText_MusicDetail16-CredText_Index
		dc.w	CredText_Vertz-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail17-CredText_Index
		dc.w	CredText_MusicDetail18-CredText_Index
		dc.w	CredText_MusicDetail19-CredText_Index
		dc.w	CredText_Dawid-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail1A-CredText_Index
		dc.w	CredText_MusicDetail1B-CredText_Index
		dc.w	CredText_MusicDetail1C-CredText_Index
		dc.w	CredText_PikaNoob-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index

		dc.w	CredText_Testers-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Coni-CredText_Index
		dc.w	CredText_Kat-CredText_Index
		dc.w	CredText_TGamer-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index

		dc.w	CredText_SScreens-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_ProgDetail03-CredText_Index
		dc.w	CredText_Coni-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_MusicDetail07-CredText_Index
		dc.w	CredText_DaxKatter-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_SplaDetail00-CredText_Index
		dc.w	CredText_GMZ-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_SplaDetail01-CredText_Index
		dc.w	CredText_ImScatman-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_SplaDetail02-CredText_Index
		dc.w	CredText_TGamer-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_SplaDetail03-CredText_Index
		dc.w	CredText_Dawid-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_SplaDetail04-CredText_Index
		dc.w	CredText_PikaNoob-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index

		dc.w	CredText_SonicOpEd-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Undying-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index

		; GMZ: Padding for ending
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
		dc.w	CredText_Linebreak-CredText_Index
CredText_IndexEnd:

CredText_Linebreak:
		dc.b	" ",0

CredText_SGMCreds:
		dc.b	"Sonic GitHub Madness 3 Credits",0

CredText_CreatedBy:
		dc.b	"- Created by -",0

CredText_Music:
		dc.b	"- Arrangements & Sound Porting -",0

CredText_Chars:
		dc.b	"- Character Creators -",0

CredText_Grafx:
		dc.b	"- Graphics -",0

CredText_Level:
		dc.b	"- Level Design -",0

CredText_Prog:
		dc.b	"- Programming -",0

CredText_SScreens:
		dc.b	"- Splash Screens -",0

CredText_Testers:
		dc.b	"- Testing & Debugging -",0

CredText_SonicOpEd:
		dc.b	"- Sonic Intro & Ending VA -",0

CredText_ProgDetail00:
		dc.b	"# You are an idiot",0

CredText_ProgDetail01:
		dc.b	"# Level Select & Options",0

CredText_ProgDetail02:
		dc.b	"# Character System Code",0

CredText_ProgDetail03:
		dc.b	"# CN Splash Screen",0

CredText_ProgDetail04:
		dc.b	"# Gomer Screen",0

CredText_ProgDetail05:
		dc.b	"# Checksum Error",0

CredText_ProgDetail06:
		dc.b	"# Suicide Barney (from Eggman Super 2)",0

CredText_ProgDetail07:
		dc.b	"# Mario 4 Pit Scream",0

CredText_ProgDetail08:
		dc.b	"# Sailor Mercury Screens",0

CredText_ProgDetail09:
		dc.b	"# Pearto Bomb Sounds",0

CredText_ProgDetail0A:
		dc.b	"# Maze Special Stage",0

CredText_ProgDetail0B:
		dc.b	"# Reverse Control Monitor",0

CredText_ProgDetail0C:
		dc.b	"# Truthnuke",0

CredText_ProgDetail0D:
		dc.b	"# Explosions",0

CredText_ProgDetail0E:
		dc.b	"# Staff Roll",0

CredText_ProgDetail0F:
		dc.b	"# Crunchy Roll Zone Boss Code",0

CredText_ProgDetail10:
		dc.b	"# Jackass ft. Gleen Quagmire",0

CredText_ProgDetail11:
		dc.b	"# Title Screen Visual Effects",0

CredText_ProgDetail12:
		dc.b	"# I Like File Explorer Zone Boss Code",0

CredText_ProgDetail13:
		dc.b	"# Makoto Zone Boss Code",0

CredText_ProgDetail14:
		dc.b	"# Splash Screen Code",0

CredText_ProgDetail15:
		dc.b	"# Bugfixes & QoL",0

CredText_ProgDetail16:
		dc.b	"# Stage Randomizer",0

CredText_ProgDetail17:
		dc.b	"# Air Unroll",0

CredText_ProgDetail18:
		dc.b	"# ROM Header",0

CredText_ProgDetail19:
		dc.b	"# SEGA Screen",0

CredText_ProgDetail1A:
		dc.b	"# Sonic's acceleration",0

CredText_ProgDetail1B:
		dc.b	"# Minecraft",0

CredText_CharsDetail00:
		dc.b	"# Kiryu Kazuma",0

CredText_CharsDetail01:
		dc.b	"# Gomer Gimpson",0

CredText_CharsDetail02:
		dc.b	"# Sailor Mercury",0

CredText_CharsDetail03:
		dc.b	"# LimitedSonic",0

CredText_CharsDetail04:
		dc.b	"# Purple Guy",0

CredText_CharsDetail05:
		dc.b	"# Microplastics Reimu",0

CredText_CharsDetail06:
		dc.b	"# Sans",0

CredText_GrafxDetail00:
		dc.b	"# Wega Spike",0

CredText_GrafxDetail01:
		dc.b	"# Continue Screen",0

CredText_GrafxDetail02:
		dc.b	"# Craig Burrobot",0

CredText_GrafxDetail03:
		dc.b	"# Makoto Electrocuter",0

CredText_GrafxDetail04:
		dc.b	"# Nickcheesy Roller",0

CredText_GrafxDetail05:
		dc.b	"# Marduk Newtron",0

CredText_GrafxDetail06:
		dc.b	"# Spongebob Basaran",0

CredText_GrafxDetail07:
		dc.b	"# Sonic Hurt",0

CredText_GrafxDetail08:
		dc.b	"# Banpresto Sailor Moon S Jupiter",0

CredText_GrafxDetail09:
		dc.b	"# Other",0

CredText_GrafxDetail0A:
		dc.b	"# Reverse Control Monitor Icon",0

CredText_GrafxDetail0B:
		dc.b	"# Quagmire Animator",0

CredText_GrafxDetail0C:
		dc.b	"# Art Imports",0

CredText_GrafxDetail0D:
		dc.b	"# Misc Level Art",0

CredText_GrafxDetail0E:
		dc.b	"# All Clear Cart Art",0

CredText_GrafxDetail0F:
		dc.b	"# YOUR OC Life Icon",0

CredText_GrafxDetail10:
		dc.b	"# True Bumper Art",0

CredText_GrafxDetail11:
		dc.b	"# Dog Fireball Art",0

CredText_GrafxDetail12:
		dc.b	"# Bomb Girl from Heinous Anus Zone",0

CredText_GrafxDetail13:
		dc.b	"# Heinous Anus Zone Act 3 Palette",0

CredText_GrafxDetail14:
		dc.b	"# I Like File Explorer Zone Blocks",0

CredText_GrafxDetail15:
		dc.b	"# Springs",0

CredText_GrafxDetail16:
		dc.b	"# Title Cards",0

CredText_GrafxDetail17:
		dc.b	"# Orbinaut",0

CredText_GrafxDetail18:
		dc.b	"# Marbl Zone Mario Block",0

CredText_GrafxDetail19:
		dc.b	"# Marbl Zone Caterkiller Art",0

CredText_GrafxDetail1A:
		dc.b	"# Sonic Death Sprite",0

CredText_GrafxDetail1B:
		dc.b	"# Title Screen Character Art",0

CredText_GrafxDetail1C:
		dc.b	"# Level Art",0

CredText_GrafxDetail1D:
		dc.b	"# Ballhog Sprites",0

CredText_GrafxDetail1E:
		dc.b	"# Sonic Crouch Sprite",0

CredText_GrafxDetail1F:
		dc.b	"# Title Screen Apostrophe",0

CredText_GrafxDetail20:
		dc.b	"# Animal Sprites",0

CredText_GrafxDetail21:
		dc.b	"# Sprites for Sonic",0

CredText_GrafxDetail22:
		dc.b	"# Teto Boss",0

CredText_GrafxDetail23:
		dc.b	"# Dont Get Rid Of This Zone Art",0

CredText_GrafxDetail24:
		dc.b	"# Oily Fella",0

CredText_GrafxDetail25:
		dc.b	"# Sonic Intro & Ending Art",0

CredText_GrafxDetail26:
		dc.b	"# Zone Names",0

CredText_GrafxDetail27:
		dc.b	"# Zone End Card",0

CredText_GrafxDetail28:
		dc.b	"# Shrek TV",0

CredText_GrafxDetail29:
		dc.b	"# Sonic's Looking Up Sprite",0

CredText_GrafxDetail2A:
		dc.b	"# Title Screen Banner Text",0

CredText_GrafxDetail2B:
		dc.b	"# Bill Newton Crabmeat",0

CredText_GrafxDetail2C:
		dc.b	"# Gaster Chopper",0

CredText_GrafxDetail2D:
		dc.b	"# Sonic's palette",0

CredText_GrafxDetail2E:
		dc.b	"# Sonic's pushing sprites",0

CredText_GrafxDetail2F:
		dc.b	"# Sonic's stopping sprites",0

CredText_GrafxDetail30:
		dc.b	"# Final Boss defeated sprite",0

CredText_LevelDetail00:
		dc.b	"# Ring Monitor Guy",0

CredText_LevelDetail01:
		dc.b	"# Dont Get Rid Of This Zone Act 3",0

CredText_LevelDetail02:
		dc.b	"# Makoto Zone",0

CredText_LevelDetail03:
		dc.b	"# Maze Special Stage",0

CredText_LevelDetail04:
		dc.b	"# Other",0

CredText_LevelDetail05:
		dc.b	"# Crunchy Roll Zone Act 2",0

CredText_LevelDetail06:
		dc.b	"# Marbl Zone Act 1",0

CredText_LevelDetail07:
		dc.b	"# Parts of Crunchy Roll Zone Act 1",0

CredText_LevelDetail08:
		dc.b	"# Parts of TPFBZ Act 1",0

CredText_LevelDetail09:
		dc.b	"# Marbl Zone Act 3",0

CredText_LevelDetail0A:
		dc.b	"# Dont Get Rid Of This Zone Act 2",0

CredText_MusicDetail00:
		dc.b	"# Makoto Zone Act 3",0

CredText_MusicDetail01:
		dc.b	"# Sailor Moon R SFC Music",0

CredText_MusicDetail02:
		dc.b	"# Marbl Zone Act 2",0

CredText_MusicDetail03:
		dc.b	"# Luka Luka Night Fever (Credits Rip)",0

CredText_MusicDetail04:
		dc.b	"# Cleveland Brown Show (Credits Rip)",0

CredText_MusicDetail05:
		dc.b	"# Somari Marble (Credits Rip)",0

CredText_MusicDetail06:
		dc.b	"# Sailor Moon MD Stage 2-2",0

CredText_MusicDetail07:
		dc.b	"# New Bark Town",0

CredText_MusicDetail08:
		dc.b	"# Matthew Littlemore Boss Music",0

CredText_MusicDetail09:
		dc.b	"# Unreeeal superhero 3",0

CredText_MusicDetail0A:
		dc.b	"# Mario Coin (SFX)",0

CredText_MusicDetail0B:
		dc.b	"# Special Stage (SFX)",0

CredText_MusicDetail0C:
		dc.b	"# Menu (SFX)",0

CredText_MusicDetail0D:
		dc.b	"# MDTLA Boss Hurt (SFX)",0

CredText_MusicDetail0E:
		dc.b	"# Battlemania Boss Explosion (SFX)",0

CredText_MusicDetail0F:
		dc.b	"# Axel F",0

CredText_MusicDetail10:
		dc.b	"# Unroll (SFX)",0

CredText_MusicDetail11:
		dc.b	"# Other",0

CredText_MusicDetail12:
		dc.b	"# Crunchy Roll Zone Act 1",0

CredText_MusicDetail13:
		dc.b	"# Act Clear",0

CredText_MusicDetail14:
		dc.b	"# The Pig From Barnyard Zone Act 1",0

CredText_MusicDetail15:
		dc.b	"# Spring (SFX)",0

CredText_MusicDetail16:
		dc.b	"# Jump (SFX)",0

CredText_MusicDetail17:
		dc.b	"# Reverse Control (SFX)",0

CredText_MusicDetail18:
		dc.b	"# Windows Vista Startup (Emerald SFX)",0

CredText_MusicDetail19:
		dc.b	"# Gaster Song (CRZ Act 3)",0

CredText_MusicDetail1A:
		dc.b	"# Invincibility",0

CredText_MusicDetail1B:
		dc.b	"# 1up",0

CredText_MusicDetail1C:
		dc.b	"# Bumper Frying Pan",0

CredText_SplaDetail00:
		dc.b	"# Actual Poop",0

CredText_SplaDetail01:
		dc.b	"# Shhhh",0

CredText_SplaDetail02:
		dc.b	"# Other",0

CredText_SplaDetail03:
		dc.b	"# Hill Climb Racing Glider",0

CredText_SplaDetail04:
		dc.b	"# Ronic Setro",0

CredText_Anakama:
		dc.b	"AnakamaTH",0

CredText_Cache:
		dc.b	"cacheninetynine",0

CredText_Cai:
		dc.b	"caicaicai7676",0

CredText_Carlos:
		dc.b	"CarlosIagnecz",0

CredText_Coni:
		dc.b	"ConiNight",0

CredText_DarkSK:
		dc.b	"DarkShamilKhan",0

CredText_Dawid:
		dc.b	"dawido90183",0

CredText_DaxKatter:
		dc.b	"DaxKatter",0

CredText_Delta:
		dc.b	"DeltaW",0

CredText_Ding:
		dc.b	"Dingish",0

CredText_GMZ:
		dc.b	"garblemarden",0

CredText_Guyke:
		dc.b	"Guyke89",0

CredText_ImScatman:
		dc.b	"iamthescatmann",0

CredText_Kat:
		dc.b	"KatKuriN",0

CredText_KGL:
		dc.b	"KGL",0

CredText_Malachi:
		dc.b	"Malachi",0

CredText_Matt:
		dc.b	"Matt",0

CredText_Miner:
		dc.b	"Min3r",0

CredText_Mittens:
		dc.b	"MittensDoesThings",0

CredText_Naoto:
		dc.b	"Naoto",0

CredText_PikaNoob:
		dc.b	"PikaNoob",0

CredText_Red:
		dc.b	"Red2010",0

CredText_RBNik:
		dc.b	"RoBEEFnik",0

CredText_Robi:
		dc.b	"RobiWanKenobi",0

CredText_Rosie:
		dc.b	"rosie_eclairs",0

CredText_Sanchi:
		dc.b	"sanchiboy",0

CredText_SomSonic:
		dc.b	"SombreroSonic",0

CredText_STDH:
		dc.b	"Sonic the dutch hedgehog",0

CredText_TWalker:
		dc.b	"talkwalker",0

CredText_TChuckler:
		dc.b	"The-Chuckler",0

CredText_TGamer:
		dc.b	"TheGamer2000",0

CredText_Toast:
		dc.b	"ToastOnBread",0

CredText_Undying:
		dc.b	"Undying_Star",0

CredText_Vertz:
		dc.b	"Vertz1515",0
		even

; ---------------------------------------------------------------------------

		; GMZ: All of these are commented, as we won't need them
		; move.b	#$8A,($FFFFD080).w ; load credits object
		; jsr	ObjectsLoad
		; jsr	BuildSprites
		; bsr.w	EndingDemoLoad
		; moveq	#0,d0
		; move.b	($FFFFFE10).w,d0
		; lsl.w	#4,d0
		; lea	(MainLoadBlocks).l,a2 ;	load block mappings etc
		; lea	(a2,d0.w),a2
		; moveq	#0,d0
		; move.b	(a2),d0
		; beq.s	loc_5862
		; bsr.w	LoadPLC		; load level patterns

; loc_5862:
		; moveq	#1,d0
		; bsr.w	LoadPLC		; load standard	level patterns
		; move.w	#120,($FFFFF614).w ; display a credit for 2 seconds
		; bsr.w	Pal_FadeTo

; Cred_WaitLoop:
		; move.b	#4,($FFFFF62A).w
		; bsr.w	DelayProgram
		; bsr.w	RunPLC_RAM
		; tst.w	($FFFFF614).w	; have 2 seconds elapsed?
		; bne.s	Cred_WaitLoop	; if not, branch
		; tst.l	($FFFFF680).w	; have level gfx finished decompressing?
		; bne.s	Cred_WaitLoop	; if not, branch
		; cmpi.w	#9,($FFFFFFF4).w ; have	the credits finished?
		; beq.w	TryAgainEnd	; if yes, branch
		; rts	

; ---------------------------------------------------------------------------
; Ending sequence demo loading subroutine
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


EndingDemoLoad:				; XREF: Credits
		move.w	($FFFFFFF4).w,d0
		andi.w	#$F,d0
		add.w	d0,d0
		move.w	EndDemo_Levels(pc,d0.w),d0 ; load level	array
		move.w	d0,($FFFFFE10).w ; set level from level	array
		addq.w	#1,($FFFFFFF4).w
		cmpi.w	#9,($FFFFFFF4).w ; have	credits	finished?
		bcc.s	EndDemo_Exit	; if yes, branch
		move.w	#$8001,($FFFFFFF0).w ; force demo mode
		move.b	#8,($FFFFF600).w ; set game mode to 08 (demo)
		move.b	#3,($FFFFFE12).w ; set lives to	3
		moveq	#0,d0
		move.w	d0,($FFFFFE20).w ; clear rings
		move.l	d0,($FFFFFE22).w ; clear time
		move.l	d0,($FFFFFE26).w ; clear score
		move.b	d0,($FFFFFE30).w ; clear lamppost counter
		cmpi.w	#4,($FFFFFFF4).w ; is SLZ demo running?
		bne.s	EndDemo_Exit	; if not, branch
		lea	(EndDemo_LampVar).l,a1 ; load lamppost variables
		lea	($FFFFFE30).w,a2
		move.w	#8,d0

EndDemo_LampLoad:
		move.l	(a1)+,(a2)+
		dbf	d0,EndDemo_LampLoad

EndDemo_Exit:
		rts	
; End of function EndingDemoLoad

; ===========================================================================
; ---------------------------------------------------------------------------
; Levels used in the end sequence demos
; ---------------------------------------------------------------------------
EndDemo_Levels:	incbin	misc\dm_ord2.bin

; ---------------------------------------------------------------------------
; Lamppost variables in the end sequence demo (Star Light Zone)
; ---------------------------------------------------------------------------
EndDemo_LampVar:
		dc.b 1,	1		; XREF: EndingDemoLoad
		dc.w $A00, $62C, $D
		dc.l 0
		dc.b 0,	0
		dc.w $800, $957, $5CC, $4AB, $3A6, 0, $28C, 0, 0, $308
		dc.b 1,	1
; ===========================================================================
; ---------------------------------------------------------------------------
; "TRY AGAIN" and "END"	screens
; ---------------------------------------------------------------------------

TryAgainEnd:				; XREF: Credits
		jsr	ClearPLC
		jsr	Pal_FadeFrom
		lea	($C00004).l,a6
		move.w	#$8004,(a6)
		move.w	#$8230,(a6)
		move.w	#$8407,(a6)
		move.w	#$9001,(a6)
		move.w	#$9200,(a6)
		move.w	#$8B03,(a6)
		move.w	#$8720,(a6)
		clr.b	($FFFFF64E).w
		jsr	ClearScreen
		lea	($FFFFD000).w,a1
		moveq	#0,d0
		move.w	#$7FF,d1

TryAg_ClrObjRam:
		move.l	d0,(a1)+
		dbf	d1,TryAg_ClrObjRam ; clear object RAM

		moveq	#$1D,d0
		jsr	RunPLC_ROM	; load "TRY AGAIN" or "END" patterns
		lea	($FFFFFB80).w,a1
		moveq	#0,d0
		move.w	#$1F,d1

TryAg_ClrPallet:
		move.l	d0,(a1)+
		dbf	d1,TryAg_ClrPallet ; fill pallet with black ($0000)

		moveq	#$13,d0
		jsr	PalLoad1	; load ending pallet
		clr.w	($FFFFFBC0).w
		move.b	#$8B,($FFFFD080).w ; load Eggman object
		jsr	ObjectsLoad
		jsr	BuildSprites
		move.w	#1800,($FFFFF614).w ; show screen for 30 seconds
		jsr	Pal_FadeTo

; ---------------------------------------------------------------------------
; "TRY AGAIN" and "END"	screen main loop
; ---------------------------------------------------------------------------
TryAg_MainLoop:
		jsr	PauseGame
		move.b	#4,($FFFFF62A).w
		jsr	DelayProgram
		jsr	ObjectsLoad
		jsr	BuildSprites
		andi.b	#$80,($FFFFF605).w ; is	Start button pressed?
		bne.s	TryAg_Exit	; if yes, branch
		tst.w	($FFFFF614).w	; has 30 seconds elapsed?
		beq.s	TryAg_Exit	; if yes, branch
		cmpi.b	#$1C,($FFFFF600).w
		beq.s	TryAg_MainLoop

TryAg_Exit:
		move.b	#0,($FFFFF600).w ; go to Sega screen
		rts	