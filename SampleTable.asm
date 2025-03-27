
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
	dc.w	-1	; end marker

; ---------------------------------------------------------------
;	incdac	VeryDumb, "superbowl.mp4"
	incdac	Kick, "sound/dac/kick.dpcm"
	incdac	Snare, "sound/dac/snare.pcm"
	incdac	Timpani, "sound/dac/timpani.dpcm"
	incdac	SegaPCM, "sound/dac/sega.wav"
	incdac	BeeBush1, "sound/dac/beebush_smp1.wav"
	incdac	BeeBush2, "sound/dac/beebush_smp2.wav"
	even
