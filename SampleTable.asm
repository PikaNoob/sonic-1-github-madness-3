
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
	dcSample	TYPE_DPCM,		Cocktail,	11025, FLAGS_LOOP	; $94
	dcSample	TYPE_PCM,		Otis,		8000, FLAGS_SFX		; $95
	dcSample	TYPE_PCM,		AmbO,		8000, FLAGS_LOOP	; $96
	dcSample	TYPE_PCM,		Mikuingit,	8000, FLAGS_SFX		; $97
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
	incdac	Otis, "sound/dac/otis.wav"
	incdac	AmbO, "sound/dac/ambience.wav"
	incdac	Mikuingit, "sound/dac/mikuing.wav"
	even
