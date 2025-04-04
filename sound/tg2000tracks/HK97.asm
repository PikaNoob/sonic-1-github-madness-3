HongKong97_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     HongKong97_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       HongKong97_DAC
	smpsHeaderFM        HongKong97_FM1,	$00, $0B
	smpsHeaderFM        HongKong97_FM2,	$00, $0D
	smpsHeaderFM        HongKong97_FM3,	$00, $09
	smpsHeaderFM        HongKong97_FM4,	$00, $00
	smpsHeaderFM        HongKong97_FM5,	$00, $00
	smpsHeaderPSG       HongKong97_PSG3,	$00, $00, $00, $00

; FM1 Data
HongKong97_FM1:
	smpsSetvoice	$00
	smpsAlterVol	$0F
	smpsPan		panCentre,	$00
	dc.b		nA3,	$0D,	nD4,	nA3,	nG3,	nFs3,	nE3,	nD3
	dc.b		$1A,	nD3,	$0D,	nD3,	nE3,	nFs3,	nFs3,	$0E
	dc.b		nD3,	$0D,	nFs3,	nG3,	nA3,	$06,	nB3,	$07
	dc.b		nA3,	$4E,	nRst,	$0D
	smpsAlterVol	$F1
	smpsPan		panCentre,	$00
	smpsJump	HongKong97_FM1

; FM2 Data
HongKong97_FM2:
	smpsSetvoice	$01
	smpsAlterVol	$09
	smpsPan		panCentre,	$00
	dc.b		nD3,	$0D,	nD3,	nF3,	nFs3,	nD3,	nF3,	nFs3
	dc.b		nA3,	nD3,	nD3,	nF3,	nFs3,	nD3,	$0E,	nF3
	dc.b		$0D,	nFs3,	nA3,	nA2,	nA2,	nC3,	nCs3,	nA2
	dc.b		nC3,	nCs3,	nE3
	smpsSetvoice	$00
	smpsAlterVol	$F7
	smpsPan		panCentre,	$00
	smpsJump	HongKong97_FM2

; FM3 Data
HongKong97_FM3:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$0D
	smpsSetvoice	$02
	smpsAlterVol	$0F
	dc.b		nFs3,	nRst,	$06,	nFs3,	$07,	nRst,	$0D,	nFs3
	dc.b		nRst,	$06,	nFs3,	$0E,	nRst,	$06,	nFs3,	$07
	dc.b		nRst,	$13,	nFs3,	$0D,	nRst,	$07,	nFs3,	$06
	dc.b		nRst,	$0D,	nFs3,	$0E,	nRst,	$06,	nFs3,	$0D
	dc.b		nRst,	$07,	nFs3,	$06,	nRst,	$14,	nCs4,	$0D
	dc.b		nRst,	$06,	nCs4,	$07,	nRst,	$0D,	nCs4,	nRst
	dc.b		$07,	nCs4,	$0D,	nRst,	$06,	nCs4,	$07,	nRst
	dc.b		$06
	smpsSetvoice	$00
	smpsAlterVol	$F1
	smpsPan		panCentre,	$00
	smpsJump	HongKong97_FM3

; FM4 Data
HongKong97_FM4:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$0D
	smpsSetvoice	$02
	smpsAlterVol	$05
	dc.b		nA3,	nRst,	$06,	nA3,	$07,	nRst,	$0D,	nA3
	dc.b		nRst,	$06,	nA3,	$0E,	nRst,	$06,	nA3,	$07
	dc.b		nRst,	$13,	nA3,	$0D,	nRst,	$07,	nA3,	$06
	dc.b		nRst,	$0D,	nA3,	$0E,	nRst,	$06,	nA3,	$0D
	dc.b		nRst,	$07,	nA3,	$06,	nRst,	$14,	nA3,	$0D
	dc.b		nRst,	$06,	nA3,	$07,	nRst,	$0D,	nA3,	nRst
	dc.b		$07,	nA3,	$0D,	nRst,	$06,	nA3,	$07,	nRst
	dc.b		$06
	smpsSetvoice	$00
	smpsAlterVol	$FB
	smpsPan		panCentre,	$00
	smpsJump	HongKong97_FM4

; FM5 Data
HongKong97_FM5:
	smpsSetvoice	$00
	smpsAlterVol	$0F
	smpsPan		panCentre,	$00
	smpsModSet	$00,	$02,	$04,	$03
	dc.b		nA3,	$0D,	nD4,	nA3,	nG3,	nFs3,	nE3,	nD3
	dc.b		$1A,	nD3,	$0D,	nD3,	nE3,	nFs3,	nFs3,	$0E
	dc.b		nD3,	$0D,	nFs3,	nG3,	nA3,	$06,	nB3,	$07
	dc.b		nA3,	$4E,	nRst,	$0D
	smpsAlterVol	$F1
	smpsPan		panCentre,	$00

	smpsJump	HongKong97_FM5


; PSG3 Data
HongKong97_PSG3:
	dc.b		nRst,	$0D
	smpsPSGform	$E7
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$05
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F5
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$06
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F5
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$FD
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$05
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F9
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$06
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F5
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$05
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F5
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$05
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$F5
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$FD
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$06
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F9
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$06
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F5
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$06
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F5
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$06
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F5
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$FD
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$06
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F9
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$05
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$FB
	smpsJump	HongKong97_PSG3

; DAC Data
HongKong97_DAC:
	dc.b		dKick,	$1A,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		$1B,	dSnare,	$1A,	dKick,	dSnare,	dKick,	dSnare
	smpsJump	HongKong97_DAC

HongKong97_Voices:
	dc.b		$3D,$02,$02,$02,$02,$94,$1A,$1A,$19,$10,$0D,$0A,$0D,$04,$01,$01
	dc.b		$01,$25,$1A,$1A,$1A,$14,$00,$05,$00;			Voice 00
	dc.b		$22,$07,$01,$00,$01,$1F,$1F,$1F,$1F,$1A,$0E,$00,$00,$00,$00,$00
	dc.b		$00,$FF,$FF,$0F,$0F,$13,$1C,$1A,$00;			Voice 01
	dc.b		$2C,$31,$31,$71,$71,$5F,$54,$5F,$5F,$05,$0A,$03,$0C,$00,$03,$03
	dc.b		$03,$00,$87,$00,$A7,$27,$29,$1A,$00;			Voice 02
	even
