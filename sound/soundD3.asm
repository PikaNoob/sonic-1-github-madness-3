LmitedJump_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     LmitedJump_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG1, LmitedJump_PSG1,	$00, $00

; PSG1 Data
LmitedJump_PSG1:
	dc.b	nF1, $18
	smpsStop

; Song seems to not use any FM voices
LmitedJump_Voices:
