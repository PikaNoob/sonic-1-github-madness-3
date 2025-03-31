
; ---------------------------------------------------------------
SampleTable:
	;			type			pointer		Hz
;	dcSample	TYPE_PCM, 		VeryDumb, 	0				; idiocrity test
	dcSample	TYPE_DPCM, 		Kick, 		8000				; $81
	dcSample	TYPE_PCM,		Snare,		24000				; $82
	dcSample	TYPE_DPCM, 		Timpani, 	7250				; $83
	dcSample	TYPE_NONE										; $84
	dcSample	TYPE_NONE										; $85
	dcSample	TYPE_NONE										; $86
	dcSample	TYPE_NONE										; $87
	dcSample	TYPE_DPCM, 		Timpani, 	9750				; $88
	dcSample	TYPE_DPCM, 		Timpani, 	8750				; $89
	dcSample	TYPE_DPCM, 		Timpani, 	7150				; $8A
	dcSample	TYPE_DPCM, 		Timpani, 	7000				; $8B
	dcSample	TYPE_PCM,		SegaPCM,	0, FLAGS_SFX		; $8C	NOTE: sample rate is auto-detected from WAV file
	dcSample	TYPE_PCM,		BeeBush1,	0, FLAGS_SFX		; $8D
	dcSample	TYPE_PCM,		BeeBush2,	0, FLAGS_LOOP		; $8E
	dcSample	TYPE_PCM,		Vanish,		0, FLAGS_SFX		; $8F	; TODO: DPCM?
	dcSample	TYPE_PCM,		Gomer,		0, FLAGS_SFX		; $90
	dcSample	TYPE_PCM,		OhYeah,		0, FLAGS_SFX		; $91
	dcSample	TYPE_PCM,		Deagh,		0, FLAGS_SFX		; $92
	dcSample	TYPE_PCM,		Deaghp,		0, FLAGS_SFX		; $93
	dcSample	TYPE_DPCM,		Cocktail,	8000, FLAGS_LOOP	; $94
	dcSample	TYPE_DPCM,		Otis,		8000, FLAGS_SFX		; $95
	dcSample	TYPE_PCM,		AmbO,		8000, FLAGS_LOOP	; $96
	dcSample	TYPE_PCM,		Mikuingit,	8000, FLAGS_SFX		; $97
; SAILOR MERCURY
	dcSample	TYPE_DPCM,		SM1,	11025, FLAGS_SFX	; $98
	dcSample	TYPE_DPCM,		SM2,	11025, FLAGS_SFX	; $99
	dcSample	TYPE_DPCM,		SM3,	11025, FLAGS_SFX	; $9A
	dcSample	TYPE_DPCM,		SM4,	11025, FLAGS_SFX	; $9B
	dcSample	TYPE_DPCM,		SM5,	11025, FLAGS_SFX	; $9C
	dcSample	TYPE_DPCM,		SM6,	11025, FLAGS_SFX	; $9D
	dcSample	TYPE_DPCM,		SM7,	11025, FLAGS_SFX	; $9E
	dcSample	TYPE_DPCM,		Line1,	11025, FLAGS_SFX	; $9F
	dcSample	TYPE_PCM,		Line2,	11025, FLAGS_SFX	; $A0
	dcSample	TYPE_PCM,		Line3,	11025, FLAGS_SFX	; $A1
	dcSample	TYPE_PCM,		Line4,	11025, FLAGS_SFX	; $A2
	dcSample	TYPE_PCM,		Line5,	11025, FLAGS_SFX	; $A3	
	dcSample	TYPE_PCM,		Line6,	11025, FLAGS_SFX	; $A4	
	dcSample	TYPE_DPCM,		Fat,	16000, FLAGS_SFX	; $A5
	dcSample	TYPE_PCM,		Crash,	22050	; $A6

	;not sailor mercury sounds start again here
	dcSample	TYPE_PCM,		futuristicsound,	20000, FLAGS_SFX		; $A7
	
	; kiryuman from the oni alliance
	dcSample	TYPE_PCM,		KiryuLetsGo,    8000, FLAGS_SFX	; $A8
	dcSample	TYPE_PCM,		KiryuDead,	8000, FLAGS_SFX	; $A9
	dcSample	TYPE_PCM,		KiryuJump,	8000, FLAGS_SFX	; $AA
	dcSample	TYPE_PCM,		KiryuOuch,	8000, FLAGS_SFX	; $AB
	dcSample	TYPE_PCM,		KiryuPunch,	8000, FLAGS_SFX	; $AC

	dcSample	TYPE_PCM,		Always,		9000, FLAGS_SFX	; $AD
	dcSample	TYPE_PCM,		BeavFart,	0, FLAGS_SFX	; $AE
	dcSample	TYPE_PCM,		BeavBurp,	0, FLAGS_SFX	; $AE
	dc.w	-1	; end marker

; ---------------------------------------------------------------
;	incdac	VeryDumb, "superbowl.mp4"
	incdac	Kick, "sound/dac/kick.dpcm"
	incdac	Snare, "sound/dac/snare.pcm"
	incdac	Timpani, "sound/dac/timpani.dpcm"
	incdac	SegaPCM, "sound/dac/sega.wav"
	incdac	BeeBush1, "sound/dac/beebush_smp1.wav"
	incdac	BeeBush2, "sound/dac/beebush_smp2.wav"
	incdac	Vanish, "sound/dac/VScream_1.wav"
	incdac	Gomer, "sound/dac/Gomer.wav"
	incdac	OhYeah, "sound/dac/OH YEAH.wav"
	incdac	Deagh, "sound/dac/deagh.wav"
	incdac	Deaghp, "sound/dac/pit fall.wav"
	incdac	Cocktail, "sound/dac/hawaiian-cocktail.dpcm"
	incdac	Otis, "sound/dac/otis.dpcm"
	incdac	AmbO, "sound/dac/ambience.wav"
	incdac	Mikuingit, "sound/dac/mikuing.wav"
	incdac	SM1, "sound/dac/Mercury_Start.bin"
	incdac	SM2, "sound/dac/Mercury_Jump.bin"
	incdac	SM3, "sound/dac/Mercury_leap.bin"
	incdac	SM4, "sound/dac/Mercury_hit.bin"
	incdac	SM5, "sound/dac/Mercury_death.bin"
	incdac	SM6, "sound/dac/Mercury_bosshit.bin"
	incdac	SM7, "sound/dac/Mercury_Win.bin"
	incdac	Line1, "sound/dac/Line1.dpcm"
	incdac	Line2, "sound/dac/Line 2.wav"
	incdac	Line3, "sound/dac/Line 3.wav"
	incdac	Line4, "sound/dac/Line 4.wav"
	incdac	Line5, "sound/dac/Line 5.wav"
	incdac	Line6, "sound/dac/Line 6.wav"
	incdac	Fat, 	"sound/dac/fatty.dpcm"
	incdac	futuristicsound, "sound/dac/futuristicsound.wav"
	incdac	Crash,	"sound/dac/crash0.wav"
	incdac	KiryuLetsGo,	"sound/dac/kiryu_letsgo.wav"
	incdac	KiryuDead,	"sound/dac/kiryu_dead.wav"
	incdac	KiryuJump,	"sound/dac/kiryu_jump.wav"
	incdac	KiryuOuch,	"sound/dac/kiryu_ouch.wav"
	incdac	KiryuPunch,	"sound/dac/kiryu_punch.wav"
	incdac  Always,	"sound/dac/ialwayscum.wav"
	incdac	BeavFart,	"sound/dac/beavisfart.wav"
	incdac	BeavBurp,	"sound/dac/beavisburp.wav"
	even
