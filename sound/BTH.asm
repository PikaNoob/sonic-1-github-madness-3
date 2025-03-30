BreakingTheHabit_Header:
smpsHeaderStartSong = 1
		smpsHeaderVoice     BreakingTheHabit_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       BreakingTheHabit_DAC				;Drums
	smpsHeaderFM        BreakingTheHabit_FM1,	$24, $15		;Piano
	smpsHeaderFM        BreakingTheHabit_FM5,	$18, $0F		;Guitar
	smpsHeaderFM        BreakingTheHabit_FM3,	$18, $10		;Vocals
	smpsHeaderFM        BreakingTheHabit_FM4,	$24, $0D		;Bass
	smpsHeaderFM        BreakingTheHabit_FM2,	$24, $0E		;Strings
	smpsHeaderPSG       BreakingTheHabit_PSG1,	$24, $0E, $00, fTone_01	;Strings Copy
	smpsHeaderPSG       BreakingTheHabit_PSG2,	$24, $0E, $00, fTone_01	;Bass Copy
	smpsHeaderPSG       BreakingTheHabit_PSG3,	$00, $00, $00, fTone_02	;Hi-Hats for Drums

; DAC Data
BreakingTheHabit_DAC:
	smpsPan             panCenter, $00
	dc.b	nRst, $1E, dKick, $03, dSnare, $7F, nRst, $0E, dKick, $03, dSnare, $0F
	dc.b	dCrashCymbal, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $03, dSnare, $06, dKick, $03, dSnare, $06, dKick, $03
	dc.b	dKick, $03, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $0C
	dc.b	dSnare, $0C, dSnare, $0C, dSnare, $03, dKick, $03, dKick, $06, dSnare, $0C
	dc.b	dSnare, $0C, dSnare, $0C, dSnare, $03, dKick, $03, dKick, $06, dSnare, $0C
	dc.b	dSnare, $0C, dSnare, $0C, dSnare, $03, dKick, $03, dKick, $06, dSnare, $0C
	dc.b	dSnare, $0C, dSnare, $0C, dSnare, $03, dKick, $03, dKick, $06, dSnare, $0C
	dc.b	dSnare, $0C, dSnare, $0C, dSnare, $03, dKick, $03, dKick, $06, dSnare, $0C
	dc.b	dSnare, $0C, dSnare, $0C, dSnare, $03, dKick, $03, dKick, $06, dSnare, $0C
	dc.b	dSnare, $0C, dSnare, $0C, dSnare, $03, dKick, $03, dKick, $06, dSnare, $0C
	dc.b	dSnare, $0C, dSnare, $0C, dSnare, $03, dKick, $03, dKick, $06, dKick, $0C
	dc.b	dSnare, $0C, dSnare, $0C, dSnare, $03, dKick, $03, dKick, $06, dSnare, $0C
	dc.b	dSnare, $0C, dSnare, $0C, dSnare, $03, dKick, $03, dKick, $06, dSnare, $0C
	dc.b	dSnare, $0C, dSnare, $0C, dSnare, $03, dKick, $03, dKick, $06, dSnare, $06
	dc.b	dKick, $06, dSnare, $1E, dCrashCymbal, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $03, dSnare, $06, dKick, $03
	dc.b	dSnare, $06, dKick, $03, dKick, $03, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $03, dSnare, $06, dKick, $03, dSnare, $06, dKick, $03
	dc.b	dKick, $03, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $01, dSnare, $01, dSnare, $07, dCrashCymbal, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $09, dKick, $03, dSnare, $0C, dKick, $0C, dKick, $0C
	dc.b	dKick, $0C, dKick, $03, dKick, $03, dKick, $0C, dKick, $0C, dKick, $0C
	dc.b	dKick, $0C, dCrashCymbal, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $01, dSnare, $01
	dc.b	dSnare, $07, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $03, dSnare, $06
	dc.b	dKick, $03, dSnare, $06, dKick, $03, dKick, $03, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dCrashCymbal, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $01, dSnare, $01
	dc.b	dSnare, $07, dCrashCymbal, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $03, dSnare, $06
	dc.b	dKick, $03, dSnare, $06, dKick, $03, dKick, $03, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $03, dSnare, $06, dKick, $03, dSnare, $06
	dc.b	dCrashCymbal, $03, dKick, $03, dSnare, $06, dSnare, $03, dKick, $03, dSnare, $06
	dc.b	dCrashCymbal, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $03, dSnare, $06, dKick, $03, dSnare, $06, dKick, $03
	dc.b	dKick, $03, dSnare, $09, dKick, $03, dSnare, $06, dCrashCymbal, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $03
	dc.b	dSnare, $06, dKick, $03, dSnare, $06, dKick, $03, dKick, $03, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dSnare, $06, dSnare, $06, dSnare, $03, dCrashCymbal, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $01, dSnare, $01
	dc.b	dSnare, $07, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $03, dSnare, $06
	dc.b	dKick, $03, dSnare, $06, dKick, $03, dKick, $03, dSnare, $06, dSnare, $03
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $01
	dc.b	dSnare, $01, dSnare, $07, dCrashCymbal, $03, dSnare, $06, dKick, $06, dSnare, $09
	dc.b	dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06
	dc.b	dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $03
	dc.b	dSnare, $06, dKick, $03, dSnare, $06, dKick, $03, dKick, $03, dSnare, $06
	dc.b	dSnare, $03, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $03, dSnare, $06, dKick, $03, dSnare, $06, dKick, $03, dKick, $03
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $03
	dc.b	dKick, $03, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $03
	dc.b	dSnare, $06, dKick, $03, dSnare, $06, dKick, $06, dSnare, $03, dSnare, $06
	dc.b	dKick, $03, dSnare, $06, dKick, $03, dKick, $03, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dCrashCymbal, $06, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $03, dSnare, $06, dKick, $03, dSnare, $06, dKick, $03, dKick, $03
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dCrashCymbal, $06, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dCrashCymbal, $06, dSnare, $09, dKick, $03, dSnare, $06, dKick, $06
	dc.b	dSnare, $09, dKick, $03, dSnare, $06, dKick, $06, dSnare, $09, dKick, $03
	dc.b	dSnare, $06, dKick, $06, dSnare, $09, dKick, $03, dSnare, $06, dCrashCymbal, $02
	dc.b	dKick, $0C
	dc.b	dKick, $0C, dKick, $0C, dKick, $36, nRst, $06
	dc.b	nRst, $03, nRst, $03, nRst, $03
	dc.b	nRst, $03, nRst, $03, nRst, $03
	dc.b	nRst, $03, nRst, $03, nRst, $03
	dc.b	nRst, $03, nRst, $03, nRst, $03
	dc.b	nRst, $03, nRst, $03, nRst, $03
	dc.b	nRst, $03, nRst, $03, nRst, $03
	dc.b	nRst, $03, nRst, $01, nRst, $03, nRst, $03, nRst, $03
	dc.b	nRst, $03, nRst, $03, nRst, $03, nRst, $03, nRst, $03, nRst, $03
	dc.b	nRst, $03, nRst, $03, nRst, $03, nRst, $06, nRst, $06, nRst, $06
	dc.b	nRst, $06, nRst, $06, nRst, $06, nRst, $06, nRst, $06
	smpsJump	BreakingTheHabit_DAC

; FM1 Data
BreakingTheHabit_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nEb0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06, nA0, $06, nG0, $06, nFs0, $06, nE0, $06, nA0, $06
	dc.b	nG0, $06, nFs0, $06, nE0, $06, nA0, $06, nG0, $06, nFs0, $06
	dc.b	nE0, $06
	dc.b	nA0, $06
	dc.b	nG0, $06
	dc.b	nFs0, $06
	dc.b	nE0, $06
	dc.b	nA0, $06
	dc.b	nG0, $06
	dc.b	nFs0, $06
	smpsJump	BreakingTheHabit_FM1

; FM2 Data
BreakingTheHabit_FM2:
	smpsSetvoice        $01
	smpsPan             panRight, $02
	dc.b	nRst, $7F, $7F, $7F, $09
	dc.b	nB0, $2A, nE1, $18, nB1, $18, nFs1, $30, nG1, $30, nRst, $06
	dc.b	nB0, $2A, nE1, $18, nB1, $18, nFs1, $30, nG1, $30, nA1, $30
	dc.b	nG1, $30, nFs1, $30, nE1, $30, nB0, $18, nE1, $18, nG1, $18
	dc.b	nFs1, $12, nE1, $06, nB0, $18, nE1, $18, nD1, $30, nB0, $18
	dc.b	nE1, $18, nG1, $18, nFs1, $0C, nD1, $0C, nE1, $30, nD1, $30
	dc.b	nC1, $30, nD1, $30, nRst, $66, nB0, $2A, nE1, $18, nB1, $18
	dc.b	nFs1, $30, nG1, $30, nRst, $06, nB0, $2A, nE1, $18, nB1, $18
	dc.b	nFs1, $30, nG1, $30, nA1, $30, nG1, $30, nD2, $30, nE2, $30
	dc.b	nB0, $18, nE1, $18, nG1, $18, nFs1, $12, nE1, $06, nB0, $18
	dc.b	nE1, $18, nD1, $30, nB0, $18, nE1, $18, nG1, $18, nFs1, $0C
	dc.b	nD1, $0C, nE1, $30, nD1, $30, nC1, $30, nD1, $30, nE3, $30
	dc.b	nD3, $30, nG3, $30, nA3, $30, nE3, $30, nD3, $30, nG3, $30
	dc.b	nA3, $18, nFs3, $18, nB0, $18, nE1, $18, nG1, $18, nFs1, $12
	dc.b	nE1, $06, nB0, $18, nE1, $18, nD1, $30, nFs3, $48, nG3, $18
	dc.b	nE3, $48, nG3, $18, nE3, $48, nG3, $18, nE3, $18, nG3, $0C
	dc.b	nA3, $0C, nB3, $7F, smpsNoAttack, $71, nRst, $2A
	dc.b	nRst, $06
	smpsJump	BreakingTheHabit_FM2

; FM3 Data
BreakingTheHabit_FM3:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $7F, $0F
	dc.b	nB2, $0C, nG2, $0C, nA2, $0C, nE2, $12, nD2, $06, nG2, $06
	dc.b	nG2, $03, nG2, $09, nFs2, $03, nE2, $15, nD2, $06, nG2, $06
	dc.b	nG2, $03, nG2, $09, nFs2, $06, nG2, $06, nFs2, $03, nE2, $24
	dc.b	nRst, $0F, nB2, $0C, nG2, $0C, nA2, $0C, nE2, $12, nD2, $06
	dc.b	nG2, $06, nG2, $03, nG2, $09, nFs2, $03, nE2, $15, nD2, $06
	dc.b	nG2, $06, nG2, $03, nG2, $09, nFs2, $06, nG2, $06, nA2, $03
	dc.b	nB2, $24, nRst, $03, nD3, $06, nD3, $03, nD3, $09, nC3, $06
	dc.b	nB2, $03, nG2, $06, nG2, $0C, nG2, $03, nD3, $03, nD3, $06
	dc.b	nD3, $06, nC3, $06, nB2, $12, nRst, $03, nG2, $06, nD3, $09
	dc.b	nD3, $09, nC3, $06, nB2, $03, nG2, $06, nG2, $0C, nG2, $03
	dc.b	nD3, $06, nD3, $03, nD3, $09, nC3, $06, nB2, $12, nB2, $06
	dc.b	nG3, $06, nG3, $03, nFs3, $06, nE3, $09, nD3, $03, nE3, $06
	dc.b	nE3, $0C, nB2, $03, nG3, $06, nG3, $03, nFs3, $06, nE3, $06
	dc.b	nFs3, $12, nRst, $03, nB2, $06, nG3, $06, nG3, $03, nFs3, $06
	dc.b	nE3, $09, nD3, $03, nE3, $06, nE3, $0C, nB2, $03, nG3, $06
	dc.b	nG3, $03, nFs3, $06, nE3, $06, nFs3, $12, nRst, $03, nB2, $06
	dc.b	nG3, $06, nG3, $03, nFs3, $06, nE3, $09, nD3, $03, nE3, $06
	dc.b	nE3, $0C, nB2, $03, nG3, $06, nG3, $03, nFs3, $06, nE3, $06
	dc.b	nFs3, $0C, nRst, $03, nB2, $06, nB2, $06, nG3, $18, nFs3, $0C
	dc.b	nE3, $0C, nG3, $18, nFs3, $12, nB2, $06, nG3, $18, nFs3, $0C
	dc.b	nE3, $0C, nG3, $18, nFs3, $12, nE3, $03, nE3, $09, nRst, $66
	dc.b	nB2, $0C, nG2, $0C, nA2, $0C, nE2, $12, nD2, $06, nG2, $06
	dc.b	nG2, $03, nG2, $09, nFs2, $03, nE2, $15, nD2, $06, nG2, $06
	dc.b	nG2, $03, nG2, $09, nFs2, $06, nG2, $06, nFs2, $03, nE2, $24
	dc.b	nRst, $0F, nB2, $0C, nG2, $0C, nA2, $0C, nE2, $12, nD2, $06
	dc.b	nG2, $06, nG2, $03, nG2, $09, nFs2, $03, nE2, $15, nD2, $06
	dc.b	nG2, $06, nG2, $03, nG2, $09, nFs2, $06, nG2, $06, nA2, $03
	dc.b	nB2, $24, nRst, $03, nD3, $06, nD3, $03, nD3, $09, nC3, $06
	dc.b	nB2, $03, nG2, $06, nG2, $0C, nG2, $03, nD3, $03, nD3, $06
	dc.b	nD3, $06, nC3, $06, nB2, $12, nRst, $03, nG2, $06, nD3, $09
	dc.b	nD3, $09, nC3, $06, nB2, $03, nG2, $06, nG2, $0C, nG2, $03
	dc.b	nD3, $06, nD3, $03, nD3, $09, nC3, $06, nB2, $12, nB2, $06
	dc.b	nG3, $06, nG3, $03, nFs3, $06, nE3, $09, nD3, $03, nE3, $06
	dc.b	nE3, $0C, nB2, $03, nG3, $06, nG3, $03, nFs3, $06, nE3, $06
	dc.b	nFs3, $12, nRst, $03, nB2, $06, nG3, $06, nG3, $03, nFs3, $06
	dc.b	nE3, $09, nD3, $03, nE3, $06, nE3, $0C, nB2, $03, nG3, $06
	dc.b	nG3, $03, nFs3, $06, nE3, $06, nFs3, $12, nRst, $03, nB2, $06
	dc.b	nG3, $06, nG3, $03, nFs3, $06, nE3, $09, nD3, $03, nE3, $06
	dc.b	nE3, $0C, nB2, $03, nG3, $06, nG3, $03, nFs3, $06, nE3, $06
	dc.b	nFs3, $0C, nRst, $03, nB2, $06, nB2, $06, nG3, $18, nFs3, $0C
	dc.b	nE3, $0C, nG3, $18, nFs3, $12, nB2, $06, nG3, $18, nFs3, $0C
	dc.b	nE3, $0C, nG3, $18, nFs3, $12, nE3, $03, nE3, $15, nD3, $06
	dc.b	nG3, $06, nG3, $03, nG3, $06, nA3, $09, nA3, $30, nRst, $12
	dc.b	nD3, $06, nG3, $06, nG3, $03, nG3, $06, nA3, $09, nA3, $30
	dc.b	nRst, $12, nD3, $06, nG3, $06, nG3, $03, nG3, $06, nA3, $09
	dc.b	nA3, $30, nRst, $12, nD3, $06, nG3, $06, nG3, $03, nG3, $06
	dc.b	nA3, $09, nA3, $18, nFs3, $12, nB2, $06, nG3, $06, nG3, $03
	dc.b	nFs3, $06, nE3, $09, nD3, $03, nE3, $06, nE3, $0C, nB2, $03
	dc.b	nG3, $06, nG3, $03, nFs3, $06, nE3, $06, nFs3, $12, nRst, $03
	dc.b	nB2, $06, nG3, $06, nG3, $03, nFs3, $06, nE3, $09, nD3, $03
	dc.b	nE3, $06, nE3, $0C, nB2, $03, nG3, $06, nG3, $03, nFs3, $06
	dc.b	nE3, $06, nFs3, $12, nRst, $03, nB2, $06, nG3, $06, nG3, $03
	dc.b	nFs3, $06, nE3, $09, nD3, $03, nE3, $06, nE3, $0C, nB2, $03
	dc.b	nG3, $06, nG3, $03, nFs3, $06, nE3, $06, nFs3, $0C, nRst, $03
	dc.b	nB2, $06, nB2, $06, nG3, $18, nFs3, $0C, nE3, $0C, nG3, $18
	dc.b	nFs3, $12, nB2, $06, nG3, $18, nFs3, $0C, nE3, $0C, nG3, $18
	dc.b	nFs3, $12, nB2, $06, nG3, $18, nA3, $0C, nG3, $0C, nG3, $18
	dc.b	nFs3, $12, nE3, $03, nE3, $1B, nRst, $7F, $53
	dc.b	nRst, $06
	smpsJump	BreakingTheHabit_FM3

; FM4 Data
BreakingTheHabit_FM4:
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	dc.b	nRst, $7F, $41
	dc.b	nE0, $18, nC1, $18, nB0, $30, nE0, $18, nC1, $18, nB0, $30
	dc.b	nRst, $7F, $7F, $7F, $7F, $44, nE0, $18, nC1, $18, nB0, $30
	dc.b	nE0, $18, nC1, $18, nB0, $30, nE0, $18, nC1, $18, nB0, $30
	dc.b	nC1, $30, nD1, $30, nC1, $30, nD1, $30, nRst, $60, nE0, $18
	dc.b	nD0, $18, nE0, $24, nFs0, $0C, nE0, $18, nD0, $18, nE0, $30
	dc.b	nE0, $18, nD0, $18, nE0, $24, nFs0, $0C, nE0, $18, nD0, $18
	dc.b	nE0, $24, nFs0, $0C, nD1, $18, nA0, $18, nD1, $24, nB0, $0C
	dc.b	nD1, $18, nA0, $18, nD1, $24, nRst, $0C, nE0, $18, nC1, $18
	dc.b	nB0, $30, nE0, $18, nC1, $18, nB0, $30, nE0, $18, nC1, $18
	dc.b	nB0, $30, nC1, $30, nD1, $30, nC1, $30, nD1, $30, nE1, $30
	dc.b	nFs1, $30, nG1, $30, nA1, $30, nE1, $30, nFs1, $30, nG1, $30
	dc.b	nA1, $18, nFs1, $18, nE0, $18, nC1, $18, nB0, $30, nE0, $18
	dc.b	nC1, $18, nB0, $30, nE0, $18, nC1, $18, nB0, $30, nC1, $30
	dc.b	nD1, $30, nC1, $30, nD1, $30, nC1, $30, nD1, $30, nRst, $7F
	dc.b	$6B
	dc.b	nRst, $06
	smpsJump	BreakingTheHabit_FM4

; FM5 Data
BreakingTheHabit_FM5:
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $41
	dc.b	nB0, $09, nD1, $06, nB0, $03, nB0, $06, nB0, $09, nC1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nD1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nC1, $06, nB0, $03, nB0, $06, nB0, $09, nD1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nC1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nD1, $06, nB0, $03, nB0, $06, nB0, $09, nC1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nD1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nC1, $06, nB0, $03, nB0, $06, nB0, $09, nD1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nC1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nD1, $06, nB0, $03, nB0, $06, nB0, $09, nC1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nD1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nC1, $06, nB0, $03, nB0, $06, nB0, $09, nD1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nC1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nD1, $06, nB0, $03, nB0, $06, nB0, $09, nC1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nD1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nC1, $06, nB0, $03, nB0, $06, nB0, $09, nD1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nC1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nD1, $06, nB0, $03, nB0, $06, nB0, $09, nC1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nD1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nC1, $06, nB0, $03, nB0, $06, nB0, $09, nD1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nC1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nD1, $06, nB0, $03, nB0, $06, nB0, $09, nC1, $06
	dc.b	nB0, $03, nB0, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nB0, $09, nD1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nC1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nD1, $06, nB0, $03, nB0, $06, nB0, $09, nC1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nD1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nC1, $06, nB0, $03, nB0, $06, nB0, $09, nD1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nC1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nD1, $06, nB0, $03, nB0, $06, nB0, $09, nC1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nD1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nC1, $06, nB0, $03, nB0, $06, nB0, $09, nD1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nC1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nD1, $06, nB0, $03, nB0, $06, nB0, $09, nC1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nD1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nC1, $06, nB0, $03, nB0, $06, nB0, $09, nD1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nC1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nD1, $06, nB0, $03, nB0, $06, nB0, $09, nC1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nD1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nC1, $06, nB0, $03, nB0, $06, nB0, $09, nD1, $06
	dc.b	nB0, $03, nB0, $06, nB0, $09, nC1, $06, nB0, $03, nB0, $06
	dc.b	nB0, $09, nD1, $06, nB0, $03, nB0, $06, nB0, $09, nC1, $06
	dc.b	nB0, $03, nB0, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nE1, $09, nD1, $06, nD1, $03, nE1, $06
	dc.b	nE1, $09, nD1, $06, nD1, $03, nE1, $06, nE1, $09, nD1, $06
	dc.b	nD1, $03, nE1, $06, nRst, $7F, $6B
	dc.b	nRst, $06
	smpsJump	BreakingTheHabit_FM5

; PSG1 Data
BreakingTheHabit_PSG1:
	smpsPSGvoice	fTone_01
	dc.b	nRst, $7F, $7F, $7F, $0F
	dc.b	nB2, $0C, nG2, $0C, nA2, $0C, nE2, $12, nD2, $06, nG2, $06
	dc.b	nG2, $03, nG2, $09, nFs2, $03, nE2, $15, nD2, $06, nG2, $06
	dc.b	nG2, $03, nG2, $09, nFs2, $06, nG2, $06, nFs2, $03, nE2, $24
	dc.b	nRst, $0F, nB2, $0C, nG2, $0C, nA2, $0C, nE2, $12, nD2, $06
	dc.b	nG2, $06, nG2, $03, nG2, $09, nFs2, $03, nE2, $15, nD2, $06
	dc.b	nG2, $06, nG2, $03, nG2, $09, nFs2, $06, nG2, $06, nA2, $03
	dc.b	nB2, $24, nRst, $03, nD3, $06, nD3, $03, nD3, $09, nC3, $06
	dc.b	nB2, $03, nG2, $06, nG2, $0C, nG2, $03, nD3, $03, nD3, $06
	dc.b	nD3, $06, nC3, $06, nB2, $12, nRst, $03, nG2, $06, nD3, $09
	dc.b	nD3, $09, nC3, $06, nB2, $03, nG2, $06, nG2, $0C, nG2, $03
	dc.b	nD3, $06, nD3, $03, nD3, $09, nC3, $06, nB2, $12, nB2, $06
	dc.b	nG3, $06, nG3, $03, nFs3, $06, nE3, $09, nD3, $03, nE3, $06
	dc.b	nE3, $0C, nB2, $03, nG3, $06, nG3, $03, nFs3, $06, nE3, $06
	dc.b	nFs3, $12, nRst, $03, nB2, $06, nG3, $06, nG3, $03, nFs3, $06
	dc.b	nE3, $09, nD3, $03, nE3, $06, nE3, $0C, nB2, $03, nG3, $06
	dc.b	nG3, $03, nFs3, $06, nE3, $06, nFs3, $12, nRst, $03, nB2, $06
	dc.b	nG3, $06, nG3, $03, nFs3, $06, nE3, $09, nD3, $03, nE3, $06
	dc.b	nE3, $0C, nB2, $03, nG3, $06, nG3, $03, nFs3, $06, nE3, $06
	dc.b	nFs3, $0C, nRst, $03, nB2, $06, nB2, $06, nG3, $18, nFs3, $0C
	dc.b	nE3, $0C, nG3, $18, nFs3, $12, nB2, $06, nG3, $18, nFs3, $0C
	dc.b	nE3, $0C, nG3, $18, nFs3, $12, nE3, $03, nE3, $09, nRst, $66
	dc.b	nB2, $0C, nG2, $0C, nA2, $0C, nE2, $12, nD2, $06, nG2, $06
	dc.b	nG2, $03, nG2, $09, nFs2, $03, nE2, $15, nD2, $06, nG2, $06
	dc.b	nG2, $03, nG2, $09, nFs2, $06, nG2, $06, nFs2, $03, nE2, $24
	dc.b	nRst, $0F, nB2, $0C, nG2, $0C, nA2, $0C, nE2, $12, nD2, $06
	dc.b	nG2, $06, nG2, $03, nG2, $09, nFs2, $03, nE2, $15, nD2, $06
	dc.b	nG2, $06, nG2, $03, nG2, $09, nFs2, $06, nG2, $06, nA2, $03
	dc.b	nB2, $24, nRst, $03, nD3, $06, nD3, $03, nD3, $09, nC3, $06
	dc.b	nB2, $03, nG2, $06, nG2, $0C, nG2, $03, nD3, $03, nD3, $06
	dc.b	nD3, $06, nC3, $06, nB2, $12, nRst, $03, nG2, $06, nD3, $09
	dc.b	nD3, $09, nC3, $06, nB2, $03, nG2, $06, nG2, $0C, nG2, $03
	dc.b	nD3, $06, nD3, $03, nD3, $09, nC3, $06, nB2, $12, nB2, $06
	dc.b	nG3, $06, nG3, $03, nFs3, $06, nE3, $09, nD3, $03, nE3, $06
	dc.b	nE3, $0C, nB2, $03, nG3, $06, nG3, $03, nFs3, $06, nE3, $06
	dc.b	nFs3, $12, nRst, $03, nB2, $06, nG3, $06, nG3, $03, nFs3, $06
	dc.b	nE3, $09, nD3, $03, nE3, $06, nE3, $0C, nB2, $03, nG3, $06
	dc.b	nG3, $03, nFs3, $06, nE3, $06, nFs3, $12, nRst, $03, nB2, $06
	dc.b	nG3, $06, nG3, $03, nFs3, $06, nE3, $09, nD3, $03, nE3, $06
	dc.b	nE3, $0C, nB2, $03, nG3, $06, nG3, $03, nFs3, $06, nE3, $06
	dc.b	nFs3, $0C, nRst, $03, nB2, $06, nB2, $06, nG3, $18, nFs3, $0C
	dc.b	nE3, $0C, nG3, $18, nFs3, $12, nB2, $06, nG3, $18, nFs3, $0C
	dc.b	nE3, $0C, nG3, $18, nFs3, $12, nE3, $03, nE3, $15, nD3, $06
	dc.b	nG3, $06, nG3, $03, nG3, $06, nA3, $09, nA3, $30, nRst, $12
	dc.b	nD3, $06, nG3, $06, nG3, $03, nG3, $06, nA3, $09, nA3, $30
	dc.b	nRst, $12, nD3, $06, nG3, $06, nG3, $03, nG3, $06, nA3, $09
	dc.b	nA3, $30, nRst, $12, nD3, $06, nG3, $06, nG3, $03, nG3, $06
	dc.b	nA3, $09, nA3, $18, nFs3, $12, nB2, $06, nG3, $06, nG3, $03
	dc.b	nFs3, $06, nE3, $09, nD3, $03, nE3, $06, nE3, $0C, nB2, $03
	dc.b	nG3, $06, nG3, $03, nFs3, $06, nE3, $06, nFs3, $12, nRst, $03
	dc.b	nB2, $06, nG3, $06, nG3, $03, nFs3, $06, nE3, $09, nD3, $03
	dc.b	nE3, $06, nE3, $0C, nB2, $03, nG3, $06, nG3, $03, nFs3, $06
	dc.b	nE3, $06, nFs3, $12, nRst, $03, nB2, $06, nG3, $06, nG3, $03
	dc.b	nFs3, $06, nE3, $09, nD3, $03, nE3, $06, nE3, $0C, nB2, $03
	dc.b	nG3, $06, nG3, $03, nFs3, $06, nE3, $06, nFs3, $0C, nRst, $03
	dc.b	nB2, $06, nB2, $06, nG3, $18, nFs3, $0C, nE3, $0C, nG3, $18
	dc.b	nFs3, $12, nB2, $06, nG3, $18, nFs3, $0C, nE3, $0C, nG3, $18
	dc.b	nFs3, $12, nB2, $06, nG3, $18, nA3, $0C, nG3, $0C, nG3, $18
	dc.b	nFs3, $12, nE3, $03, nE3, $1B, nRst, $7F, $53
	dc.b	nRst, $06
	smpsJump	BreakingTheHabit_PSG1

; PSG2 Data
BreakingTheHabit_PSG2:
	smpsPSGvoice	fTone_01
	dc.b	nRst, $7F, $41
	dc.b	nE0, $18, nC1, $18, nB0, $30, nE0, $18, nC1, $18, nB0, $30
	dc.b	nRst, $7F, $7F, $7F, $7F, $44, nE0, $18, nC1, $18, nB0, $30
	dc.b	nE0, $18, nC1, $18, nB0, $30, nE0, $18, nC1, $18, nB0, $30
	dc.b	nC1, $30, nD1, $30, nC1, $30, nD1, $30, nRst, $60, nE0, $18
	dc.b	nD0, $18, nE0, $24, nFs0, $0C, nE0, $18, nD0, $18, nE0, $30
	dc.b	nE0, $18, nD0, $18, nE0, $24, nFs0, $0C, nE0, $18, nD0, $18
	dc.b	nE0, $24, nFs0, $0C, nD1, $18, nA0, $18, nD1, $24, nB0, $0C
	dc.b	nD1, $18, nA0, $18, nD1, $24, nRst, $0C, nE0, $18, nC1, $18
	dc.b	nB0, $30, nE0, $18, nC1, $18, nB0, $30, nE0, $18, nC1, $18
	dc.b	nB0, $30, nC1, $30, nD1, $30, nC1, $30, nD1, $30, nE1, $30
	dc.b	nFs1, $30, nG1, $30, nA1, $30, nE1, $30, nFs1, $30, nG1, $30
	dc.b	nA1, $18, nFs1, $18, nE0, $18, nC1, $18, nB0, $30, nE0, $18
	dc.b	nC1, $18, nB0, $30, nE0, $18, nC1, $18, nB0, $30, nC1, $30
	dc.b	nD1, $30, nC1, $30, nD1, $30, nC1, $30, nD1, $30, nRst, $7F
	dc.b	$6B
	dc.b	nRst, $06
	smpsJump	BreakingTheHabit_PSG2
	
BreakingTheHabit_PSG3:
; PSG3 Data
	smpsPSGform         $E7
	smpsPSGvoice        fTone_02
	smpsJump    BreakingTheHabit_PSG3_Notes
BreakingTheHabit_PSG3_Notes:
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $09, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $09
	dc.b	nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $09
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $09
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $06, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03
	dc.b	nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $03, nMaxPSG, $7F, smpsNoAttack, $6E
	dc.b	nRst, $06
	smpsJump    BreakingTheHabit_PSG3_Notes

BreakingTheHabit_Voices:
;	Voice $00	Piano
;	$3C
;	$21, $01, $53, $11, 	$DF, $99, $DF, $99, 	$00, $07, $00, $08
;	$08, $07, $08, $06, 	$40, $37, $40, $37, 	$20, $00, $1C, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $00, $02
	smpsVcCoarseFreq    $01, $03, $01, $01
	smpsVcRateScale     $02, $03, $02, $03
	smpsVcAttackRate    $19, $1F, $19, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $00, $07, $00
	smpsVcDecayRate2    $06, $08, $07, $08
	smpsVcDecayLevel    $03, $04, $03, $04
	smpsVcReleaseRate   $07, $00, $07, $00
	smpsVcTotalLevel    $00, $1C, $00, $20

;	Voice $01	Strings
;	$3A
;	$63, $60, $50, $32, 	$4F, $4F, $4F, $48, 	$04, $04, $04, $05
;	$03, $01, $01, $01, 	$18, $18, $15, $17, 	$1E, $1F, $1D, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $06, $06
	smpsVcCoarseFreq    $02, $00, $00, $03
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $08, $0F, $0F, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $04, $04
	smpsVcDecayRate2    $01, $01, $01, $03
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $07, $05, $08, $08
	smpsVcTotalLevel    $00, $1D, $1F, $1E

;	Voice $02	Vocals
;	$3D
;	$01, $00, $04, $03, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $18, $1A, 	$12, $82, $82, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $04, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $08, $0A, $05
	smpsVcTotalLevel    $00, $02, $02, $12

;	Voice $03	Bass
;	$28
;	$71, $00, $30, $01, 	$1F, $1F, $1D, $1F, 	$13, $13, $06, $05
;	$03, $03, $02, $05, 	$4F, $4F, $2F, $3F, 	$0E, $14, $1E, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $06, $13, $13
	smpsVcDecayRate2    $05, $02, $03, $03
	smpsVcDecayLevel    $03, $02, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $14, $0E

;	Voice $04	Guitar
;	$38
;	$33, $01, $51, $01, 	$10, $13, $1A, $1B, 	$0F, $1F, $1F, $1F
;	$01, $01, $01, $01, 	$33, $03, $03, $08, 	$16, $1A, $19, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $00, $03
	smpsVcCoarseFreq    $01, $01, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $1A, $13, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $0F
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $00, $00, $00, $03
	smpsVcReleaseRate   $08, $03, $03, $03
	smpsVcTotalLevel    $00, $19, $1A, $16

