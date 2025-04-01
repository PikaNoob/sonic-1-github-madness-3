Jaded_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     Jaded_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Jaded_DAC
	smpsHeaderFM        Jaded_FM1,	$00, $0B
	smpsHeaderFM        Jaded_FM2,	$00, $0D
	smpsHeaderFM        Jaded_FM3,	$00, $09
	smpsHeaderFM        Jaded_FM4,	$00, $00
	smpsHeaderFM        Jaded_FM5,	$00, $00
	smpsHeaderPSG       Jaded_PSG1,	$D0, $00, $00, $00
	smpsHeaderPSG       Jaded_PSG2,	$D0, $00, $00, $00
	smpsHeaderPSG       Jaded_PSG3,	$00, $00, $00, $00

; PSG1 Data
Jaded_PSG1:

; PSG2 Data
Jaded_PSG2:
	smpsStop

; FM1 Data
Jaded_FM1:
	smpsSetvoice	$00
	smpsAlterVol	$0F
	smpsPan		panCentre,	$00
	dc.b		nC4,	$0E,	nC5,	nC4,	$0F,	nG3,	$0E,	nCs4
	dc.b		$0F,	nCs4,	$0E,	nEb4,	nCs4,	$0F,	nC4,	$0E
	dc.b		nC5,	$0F,	nC4,	$0E,	nG3,	nBb3,	$0F,	nBb3
	dc.b		$0E,	nB3,	$0F,	nB3,	$0E
	smpsAlterVol	$F1
	smpsPan		panCentre,	$00
	smpsJump	Jaded_FM1

; FM2 Data
Jaded_FM2:
	smpsSetvoice	$01
	smpsAlterVol	$05
	smpsPan		panCentre,	$00
	dc.b		nC3,	$0E,	nC3,	nC3,	$0A,	nC3,	$05,	nC2
	dc.b		$09,	nC3,	$05,	nCs3,	$0F,	nCs3,	$0E,	nEb3
	dc.b		$0A,	nEb3,	$04,	nCs3,	$0A,	nCs3,	$05,	nC3
	dc.b		$0E,	nC3,	$0F,	nC3,	$09,	nC3,	$05,	nC2
	dc.b		$0A,	nC3,	$04,	nBb2,	$0A,	nBb1,	$05,	nBb2
	dc.b		$09,	nBb1,	$05,	nB2,	$0F,	nB2,	$0E
	smpsSetvoice	$00
	smpsAlterVol	$FB
	smpsPan		panCentre,	$00
	smpsJump	Jaded_FM2

; FM3 Data
Jaded_FM3:
	smpsSetvoice	$00
	smpsAlterVol	$0F
	smpsPan		panCentre,	$00
	dc.b		nC5,	$0E,	nC6,	nC5,	$0F,	nG4,	$0E,	nCs5
	dc.b		$0F,	nCs5,	$0E,	nEb5,	nCs5,	$0F,	nC5,	$0E
	dc.b		nC6,	$0F,	nC5,	$0E,	nG4,	nBb4,	$0F,	nBb4
	dc.b		$0E,	nB4,	$0F,	nB4,	$0E
	smpsAlterVol	$F1
	smpsPan		panCentre,	$00
	smpsJump	Jaded_FM3

; FM4 Data
Jaded_FM4:
	smpsSetvoice	$02
	smpsAlterVol	$0A
	smpsPan		panCentre,	$00
	dc.b		nC4,	$1C,	nG3,	$1D,	nCs4,	nG3,	nC4,	nG3
	dc.b		$1C,	nBb3,	$1D,	nB3
	smpsSetvoice	$00
	smpsAlterVol	$F6
	smpsPan		panCentre,	$00
	smpsJump	Jaded_FM4

; FM5 Data
Jaded_FM5:
	smpsSetvoice	$02
	smpsAlterVol	$0A
	smpsPan		panCentre,	$00
	dc.b		nE4,	$1C,	nC4,	$1D,	nF4,	nBb3,	nE4,	nC4
	dc.b		$1C,	nF4,	$1D,	nBb3
	smpsSetvoice	$00
	smpsAlterVol	$F6
	smpsPan		panCentre,	$00
	smpsJump	Jaded_FM5

; PSG3 Data
Jaded_PSG3:
	smpsPSGform	$E7
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0C
	smpsJump	Jaded_PSG3

; DAC Data
Jaded_DAC:
	dc.b		dKick,	$0E,	dSnare,	dKick,	$0F,	dSnare,	$0E,	dKick
	dc.b		$0F,	dSnare,	$0E,	dKick,	$0A,	dSnare,	$04,	dSnare
	dc.b		$0F,	dKick,	$0E,	dSnare,	$0F,	dKick,	$0E,	dSnare
	dc.b		dKick,	$0F,	dSnare,	$0E,	dKick,	$0A,	dSnare,	$05
	dc.b		dSnare,	$09,	dSnare,	$05
	smpsJump	Jaded_DAC

Jaded_Voices:
	dc.b		$3C,$01,$02,$0F,$04,$8E,$53,$9F,$1F,$0B,$00,$00,$0D,$01,$00,$00
	dc.b		$00,$23,$07,$02,$F6,$15,$00,$1D,$02;			Voice 00
	dc.b		$12,$00,$08,$00,$01,$1F,$1F,$1F,$1F,$1F,$0F,$0F,$0C,$00,$09,$0A
	dc.b		$09,$0A,$6B,$38,$1C,$1B,$30,$15,$00;			Voice 01
	dc.b		$3C,$51,$02,$10,$01,$11,$13,$11,$12,$0A,$0E,$09,$06,$01,$01,$01
	dc.b		$01,$59,$2B,$29,$2C,$18,$11,$1A,$00;			Voice 02
	even
