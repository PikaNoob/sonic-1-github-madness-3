TheGamer2000Jingle_Header:
smpsHeaderStartSong = 1
		smpsHeaderVoice     TheGamer2000Jingle_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $26


	smpsHeaderFM        TheGamer2000Jingle_FM1,	$00, $0B
	smpsHeaderFM        TheGamer2000Jingle_FM2,	$00, $0D
	smpsHeaderFM        TheGamer2000Jingle_FM3,	$00, $09
	smpsHeaderFM        TheGamer2000Jingle_FM4,	$00, $00
	smpsHeaderFM        TheGamer2000Jingle_FM5,	$00, $00
	smpsHeaderPSG       TheGamer2000Jingle_PSG1,	$D0, $00, $00, $00
	smpsHeaderPSG       TheGamer2000Jingle_PSG2,	$D0, $00, $00, $00
	smpsHeaderPSG       TheGamer2000Jingle_PSG3,	$00, $00, $00, $00

; FM2 Data
TheGamer2000Jingle_FM2:

; FM3 Data
TheGamer2000Jingle_FM3:

; FM4 Data
TheGamer2000Jingle_FM4:

; FM5 Data
TheGamer2000Jingle_FM5:

; FM6 Data
TheGamer2000Jingle_FM6:

; PSG1 Data
TheGamer2000Jingle_PSG1:

; PSG2 Data
TheGamer2000Jingle_PSG2:

; PSG3 Data
TheGamer2000Jingle_PSG3:
	smpsStop

; FM1 Data
TheGamer2000Jingle_FM1:
	smpsSetvoice	$00
	smpsPan		panCentre,	$00
	dc.b		nC4,	$06,	nE4,	nG4,	nE4,	nG4,	nC5,	$41
	dc.b		nRst,	$01
	smpsStop

TheGamer2000Jingle_Voices:
	dc.b		$3C,$05,$01,$0A,$01,$56,$59,$5C,$58,$0E,$0F,$14,$0F,$09,$09,$06
	dc.b		$09,$46,$35,$36,$35,$1F,$00,$33,$0C;			Voice 00
	even
