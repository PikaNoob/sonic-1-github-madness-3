COIN_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     COIN_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG3, COIN_PSG1,	$00, $00

; PSG1 Data
COIN_PSG1:
	smpsPSGvoice        fTone_08
	dc.b	nB2, $06, nE3, $18
	smpsStop

; Song seems to not use any FM voices
COIN_Voices:
