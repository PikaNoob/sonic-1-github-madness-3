PaintBlack_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     PaintBlack_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       PaintBlack_DAC
	smpsHeaderFM        PaintBlack_FM1,	$00, $0B
	smpsHeaderFM        PaintBlack_FM2,	$00, $0D
	smpsHeaderFM        PaintBlack_FM3,	$00, $09
	smpsHeaderFM        PaintBlack_FM4,	$00, $00
	smpsHeaderFM        PaintBlack_FM5,	$00, $00
	smpsHeaderPSG       PaintBlack_PSG1,	$D0, $00, $00, $00
	smpsHeaderPSG       PaintBlack_PSG2,	$D0, $00, $00, $00
	smpsHeaderPSG       PaintBlack_PSG3,	$00, $00, $00, $00

; PSG1 Data
PaintBlack_PSG1:

; PSG2 Data
PaintBlack_PSG2:

; PSG3 Data
PaintBlack_PSG3:
	smpsStop

; FM1 Data
PaintBlack_FM1:
	smpsSetvoice	$00
	smpsAlterVol	$0A
	smpsPan		panCentre,	$00
	dc.b		nC5,	$07,	nRst,	nC4,	nRst,	nC4,	$08,	nRst
	dc.b		$07,	nC5,	nC5,	nRst,	$3A
PaintBlack_Jump01:
	dc.b		nRst,	$1D
	smpsSetvoice	$04
	dc.b		nF4,	$1C,	nG4,	$1D,	nAb4,	nBb4,	nAb4,	nG4
	dc.b		$1C,	nF4,	$1D,	nF4,	nE4,	nF4,	nG4,	$1C
	dc.b		nF4,	$0F,	nG4,	$07,	nF4,	nE4,	$57,	nRst
	dc.b		$1C,	nF4,	$1D,	nG4,	nAb4,	nBb4,	nAb4,	$1C
	dc.b		nG4,	$1D,	nF4,	nF4,	nE4,	nF4,	$1C,	nG4
	dc.b		$1D,	nF4,	$0F,	nG4,	$07,	nF4,	nE4,	$56
	dc.b		nRst,	$1D,	nF4,	nEb4,	nEb4,	nAb3,	$1C,	nAb3
	dc.b		$1D,	nBb3,	nBb3,	nC4,	nC4,	$1C,	nC4,	$0F
	dc.b		nBb3,	$0E,	nAb3,	$0F,	nC4,	$7F,	smpsNoAttack,	$02
	dc.b		nRst,	$1D,	nF4,	nEb4,	nEb4,	$1C,	nAb3,	$1D
	dc.b		nAb3,	nBb3,	nCs4,	nC4,	$1C,	nC4,	$1D,	nC4
	dc.b		$0F,	nBb3,	$0E,	nAb3,	nC4,	$7F,	smpsNoAttack,	$03
	smpsSetvoice	$00
	smpsPan		panCentre,	$00
	smpsJump	PaintBlack_Jump01

; FM2 Data
PaintBlack_FM2:
	smpsSetvoice	$01
	smpsAlterVol	$03
	smpsPan		panCentre,	$00
	dc.b		nC3,	$07,	nRst,	nC2,	nRst,	nC2,	$08,	nRst
	dc.b		$07,	nC3,	nC3,	nRst,	$2B,	nAb2,	$08,	nG2
	dc.b		$07
PaintBlack_Jump02:
	dc.b		nF2,	$1D,	nF2,	$15,	nF2,	$07,	nF2,	$0F
	dc.b		nF2,	$1D,	nC2,	$0E,	nF2,	$07,	nC2,	nF2
	dc.b		$1D,	nC2,	$0F,	nF2,	$1C,	nF2,	$1D,	nC2
	dc.b		nC2,	$16,	nC2,	$07,	nC2,	$0E,	nC2,	$1D
	dc.b		nG1,	$0E,	nC2,	$0F,	nC2,	$1D,	nC2,	$0E
	dc.b		nE2,	nE2,	$1D,	nAb2,	$07,	nG2,	$08,	nF2
	dc.b		$1C,	nF2,	$16,	nF2,	$07,	nF2,	$0F,	nF2
	dc.b		$1C,	nC2,	$0F,	nF2,	$07,	nC2,	nF2,	$1D
	dc.b		nC2,	$0E,	nF2,	$1D,	nF2,	nC2,	nC2,	$15
	dc.b		nC2,	$08,	nC2,	$0E,	nC2,	$1D,	nG1,	$0E
	dc.b		nC2,	$0F,	nC2,	$1C,	nC2,	$0F,	nE2,	$0E
	dc.b		nE2,	$1D,	nE2,	$0E,	nCs2,	$1D,	nCs2,	$16
	dc.b		nCs2,	$07,	nCs2,	$0E,	nCs2,	$1D,	nBb1,	$0F
	dc.b		nC2,	$1C,	nC2,	$16,	nC2,	$07,	nC2,	$0F
	dc.b		nC2,	$1C,	nA1,	$0F,	nF2,	$1D,	nF2,	$15
	dc.b		nC2,	$07,	nF2,	$0F,	nF2,	$1D,	nAb2,	$0E
	dc.b		nF2,	$07,	nC2,	nF2,	$1D,	nC2,	$0F,	nF2
	dc.b		$1C,	nF2,	$1D,	nCs2,	nCs2,	$16,	nCs2,	$07
	dc.b		nCs2,	$0E,	nCs2,	$1D,	nBb1,	$0E,	nEb2,	$0F
	dc.b		nEb2,	$1D,	nEb2,	$0E,	nE2,	nC2,	$1D,	nC2
	dc.b		$07,	nE2,	$08,	nF2,	$1C,	nF2,	$16,	nF2
	dc.b		$07,	nF2,	$0F,	nF2,	$1C,	nE2,	$0F,	nEb2
	dc.b		$0E,	nBb1,	$0F,	nEb2,	$0E,	nEb2,	$07,	nBb1
	dc.b		nE2,	$08,	nC2,	$07,	nE2,	$0E,	nC3,	$0F
	dc.b		nE2,	$0E
	smpsPan		panCentre,	$00
	smpsJump	PaintBlack_Jump02

; FM3 Data
PaintBlack_FM3:
	smpsSetvoice	$02
	smpsAlterVol	$0A
	smpsPan		panCentre,	$00
	dc.b		nC5,	$07,	nRst,	nE5,	nRst,	nE5,	$08,	nRst
	dc.b		$07,	nC5,	nC5,	nRst,	$33
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nC4,	$07
PaintBlack_Jump03:
	dc.b		nF4,	nC4,	nAb4,	nC4,	$08,	nF4,	$07,	nC4
	dc.b		nAb4,	nC4,	nF4,	$08,	nC4,	$07,	nAb4,	nC4
	dc.b		nF4,	nC4,	$08,	nAb4,	$07,	nC4,	nF4,	nC4
	dc.b		nAb4,	$08,	nC4,	$07,	nF4,	nC4,	nAb4,	nC4
	dc.b		$08,	nF4,	$07,	nC4,	nAb4,	nC4,	nF4,	$08
	dc.b		nC4,	$07,	nAb4,	nC4,	nE4,	nC4,	$08,	nG4
	dc.b		$07,	nC4,	nE4,	nC4,	nG4,	$08,	nC4,	$07
	dc.b		nE4,	nC4,	nG4,	nC4,	$08,	nE4,	$07,	nC4
	dc.b		nG4,	nC4,	nEb5,	$08,	nEb4,	$07,	nCs5,	nEb4
	dc.b		nC5,	nEb4,	$08,	nCs5,	$07,	nEb4,	nC5,	nE4
	dc.b		nBb4,	$08,	nE4,	$07,	nAb4,	nE4,	nG4,	nE4
	dc.b		$08,	nF4,	$07,	nC4,	nAb4,	nC4,	nF4,	$08
	dc.b		nC4,	$07,	nAb4,	nC4,	nF4,	nC4,	$08,	nAb4
	dc.b		$07,	nC4,	nF4,	nC4,	nAb4,	$08,	nC4,	$07
	dc.b		nF4,	nC4,	nAb4,	nC4,	$08,	nF4,	$07,	nC4
	dc.b		nAb4,	nC4,	nF4,	$08,	nC4,	$07,	nAb4,	nC4
	dc.b		nF4,	nC4,	$08,	nAb4,	$07,	nC4,	nE4,	nC4
	dc.b		nG4,	$08,	nC4,	$07,	nE4,	nC4,	nG4,	nC4
	dc.b		$08,	nE4,	$07,	nC4,	nG4,	nC4,	nE4,	$08
	dc.b		nC4,	$07,	nG4,	nC4,	nEb5,	nEb4,	$08,	nCs5
	dc.b		$07,	nEb4,	nC5,	nEb4,	nCs5,	$08,	nEb4,	$07
	dc.b		nC5,	nE4,	nBb4,	nE4,	$08,	nAb4,	$07,	nE4
	dc.b		nG4,	nE4,	nAb6,	$08,	nG6,	$07,	nFs6,	nF6
	dc.b		nAb6,	nG6,	$08,	nFs6,	$07,	nF6,	nAb6,	nG6
	dc.b		nFs6,	$08,	nF6,	$07,	nAb6,	nG6,	nFs6,	nF6
	dc.b		$08,	nBb6,	$07,	nA6,	nAb6,	nG6,	nBb6,	$08
	dc.b		nA6,	$07,	nAb6,	nG6,	nBb6,	nA6,	$08,	nAb6
	dc.b		$07,	nG6,	nBb6,	nA6,	nAb6,	$08,	nG6,	$07
	dc.b		nAb6,	nG6,	nFs6,	nF6,	$08,	nAb6,	$07,	nG6
	dc.b		nFs6,	nF6,	nAb6,	$08,	nG6,	$07,	nFs6,	nF6
	dc.b		nAb6,	nG6,	$08,	nFs6,	$07,	nF6,	nBb6,	nA6
	dc.b		nAb6,	$08,	nG6,	$07,	nBb6,	nA6,	nAb6,	nG6
	dc.b		$08,	nBb6,	$07,	nA6,	nAb6,	nG6,	nBb6,	$08
	dc.b		nA6,	$07,	nAb6,	nG6,	nAb6,	nG6,	$08,	nFs6
	dc.b		$07,	nF6,	nAb6,	nG6,	nFs6,	$08,	nF6,	$07
	dc.b		nAb6,	nG6,	nFs6,	nF6,	$08,	nAb6,	$07,	nG6
	dc.b		nFs6,	nF6,	nBb6,	$08,	nA6,	$07,	nAb6,	nG6
	dc.b		nBb6,	nA6,	$08,	nAb6,	$07,	nG6,	nBb6,	nA6
	dc.b		nAb6,	$08,	nG6,	$07,	nBb6,	nA6,	nAb6,	nG6
	dc.b		$08,	nAb6,	$07,	nG6,	nFs6,	nF6,	nAb6,	$08
	dc.b		nG6,	$07,	nFs6,	nF6,	nAb6,	nG6,	$08,	nFs6
	dc.b		$07,	nF6,	nAb6,	nG6,	nFs6,	$08,	nF6,	$07
	dc.b		nBb6,	nA6,	nAb6,	nG6,	$08,	nBb6,	$07,	nA6
	dc.b		nAb6,	nG6,	nBb6,	$08,	nA6,	$07,	nAb6,	nG6
	dc.b		nBb6,	nA6,	$08,	nAb6,	$07,	nG6
	smpsPan		panCentre,	$00
	smpsJump	PaintBlack_Jump03

; FM5 Data
PaintBlack_FM5:
	smpsSetvoice	$02
	smpsAlterVol	$0A
	smpsPan		panCentre,	$00
	dc.b		nG5,	$07,	nRst,	nC6,	nRst,	nC6,	$08,	nRst
	dc.b		$07,	nG5,	nG5,	nRst,	$3A
PaintBlack_Jump05:
	dc.b		nRst,	$1D
	smpsSetvoice	$04
	smpsAlterVol	$07
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nF4,	$1C,	nG4,	$1D,	nAb4,	nBb4,	nAb4,	nG4
	dc.b		$1C,	nF4,	$1D,	nF4,	nE4,	nF4,	nG4,	$1C
	dc.b		nF4,	$0F,	nG4,	$07,	nF4,	nE4,	$57,	nRst
	dc.b		$1C,	nF4,	$1D,	nG4,	nAb4,	nBb4,	nAb4,	$1C
	dc.b		nG4,	$1D,	nF4,	nF4,	nE4,	nF4,	$1C,	nG4
	dc.b		$1D,	nF4,	$0F,	nG4,	$07,	nF4,	nE4,	$56
	dc.b		nRst,	$1D,	nF4,	nEb4,	nEb4,	nAb3,	$1C,	nAb3
	dc.b		$1D,	nBb3,	nBb3,	nC4,	nC4,	$1C,	nC4,	$0F
	dc.b		nBb3,	$0E,	nAb3,	$0F,	nC4,	$7F,	smpsNoAttack,	$02
	dc.b		nRst,	$1D,	nF4,	nEb4,	nEb4,	$1C,	nAb3,	$1D
	dc.b		nAb3,	nBb3,	nCs4,	nC4,	$1C,	nC4,	$1D,	nC4
	dc.b		$0F,	nBb3,	$0E,	nAb3,	nC4,	$7F,	smpsNoAttack,	$03
	smpsSetvoice	$02
	smpsAlterVol	$F9
	smpsPan		panCentre,	$00

	smpsJump	PaintBlack_Jump05

; FM4 Data
PaintBlack_FM4:
	smpsSetvoice	$00
	smpsAlterVol	$0A
	smpsPan		panCentre,	$00
	dc.b		nE5,	$07,	nRst,	nE4,	nRst,	nE4,	$08,	nRst
	dc.b		$07,	nE5,	nE5,	nRst,	$3A
PaintBlack_Jump04:
	dc.b		nRst,	$48
	smpsSetvoice	$02
	dc.b		nF4,	$07,	nRst,	nAb4,	nRst,	$08,	nC5,	$07
	dc.b		nRst,	nF5,	nEb5,	nF5,	$74,	nAb5,	$0E,	nRst
	dc.b		nF5,	$08,	nRst,	$07,	nCs5,	nRst,	nBb4,	$3A
	dc.b		nBb5,	$0E,	nRst,	$0F,	nAb5,	$07,	nRst,	nG5
	dc.b		nRst,	nE5,	$2A,	nRst,	$4A,	nF4,	$07,	nRst
	dc.b		nAb4,	nRst,	nC5,	$08,	nRst,	$07,	nF5,	nEb5
	dc.b		nF5,	$73,	nAb5,	$0F,	nRst,	$0E,	nF5,	$07
	dc.b		nRst,	$08,	nCs5,	$07,	nRst,	nBb4,	$3A,	nBb5
	dc.b		$0E,	nRst,	nAb5,	$08,	nRst,	$07,	nG5,	nRst
	dc.b		nE5,	$2A,	nRst,	$01,	nF4,	$3A,	nG4,	$1D
	dc.b		nAb4,	nAb4,	$39,	nAb4,	$1D,	nBb4,	nC5,	$39
	dc.b		nBb4,	$1D,	nAb4,	nAb4,	$3A,	nEb4,	$39,	nF4
	dc.b		$3A,	nG4,	$1D,	nAb4,	$1C,	nAb4,	$3A,	nAb4
	dc.b		$1D,	nBb4,	nF4,	$2B,	nG4,	$0E,	nC5,	$16
	dc.b		nAb4,	$15,	nBb4,	$0F,	nEb5,	$07,	nRst,	nEb5
	dc.b		$1D,	nEb5,	$07,	nRst,	nE5,	$08,	nRst,	$07
	dc.b		nE5,	$2B
	smpsSetvoice	$00
	smpsPan		panCentre,	$00
	smpsJump	PaintBlack_Jump04

; DAC Data
PaintBlack_DAC:
	dc.b		dTimpani,	$0E,	$84,	$84,	$0F,	dTimpani,	$07,	dTimpani
	dc.b		$16,	dSnare,	$07,	dSnare,	dSnare,	dSnare,	dSnare,	$08
	dc.b		dSnare,	$07
PaintBlack_Jump06:
	dc.b		dSnare,	$1D,	dSnare,	$15,	dSnare,	$07,	dSnare,	$0F
	dc.b		dSnare,	$0E,	dTimpani,	$0F,	$84,	$0E,	dSnare,	dSnare
	dc.b		$1D,	dSnare,	$0F,	dSnare,	$1C,	dSnare,	$1D,	dSnare
	dc.b		dSnare,	$16,	dSnare,	$07,	dSnare,	$0E,	dSnare,	$0F
	dc.b		dTimpani,	$07,	dTimpani,	$84,	$0E,	dSnare,	$0F,	dSnare
	dc.b		$1D,	dSnare,	$0E,	dSnare,	dSnare,	$1D,	dSnare,	$0F
	dc.b		dSnare,	$1C,	dSnare,	$16,	dSnare,	$07,	dSnare,	$0F
	dc.b		dSnare,	$0E,	dTimpani,	$84,	$0F,	dSnare,	$0E,	dSnare
	dc.b		$1D,	dSnare,	$0E,	dSnare,	$1D,	dSnare,	dSnare,	dSnare
	dc.b		$15,	dSnare,	$08,	dSnare,	$0E,	dSnare,	dTimpani,	$08
	dc.b		dTimpani,	$07,	$84,	$0E,	dSnare,	$0F,	dSnare,	$1C
	dc.b		dSnare,	$0F,	dSnare,	$0E,	dSnare,	$1D,	dSnare,	$0E
	dc.b		dSnare,	$1D,	dSnare,	$16,	dSnare,	$07,	dSnare,	$0E
	dc.b		dSnare,	$1D,	dSnare,	$0F,	dTimpani,	$0E,	$84,	dTimpani
	dc.b		$0F,	$84,	$0E,	dTimpani,	$0F,	$84,	$0E,	dTimpani
	dc.b		$84,	$0F,	dSnare,	$07,	dSnare,	dSnare,	$0F,	dSnare
	dc.b		$15,	dSnare,	$07,	dSnare,	$0F,	dSnare,	$0E,	dTimpani
	dc.b		$07,	dTimpani,	$08,	$84,	$07,	$84,	dSnare,	$0E
	dc.b		dTimpani,	$06,	dTimpani,	$05,	dTimpani,	$04,	dSnare,	$0E
	dc.b		dTimpani,	$06,	dTimpani,	$05,	dTimpani,	$04,	dSnare,	$0E
	dc.b		dSnare,	dSnare,	$0F,	dSnare,	$07,	dSnare,	dSnare,	$1D
	dc.b		dSnare,	$16,	dSnare,	$07,	dSnare,	$0E,	dSnare,	$1D
	dc.b		dSnare,	$0E,	dTimpani,	$0F,	$84,	$0E,	dTimpani,	$0F
	dc.b		$84,	$0E,	dTimpani,	$84,	$0F,	dTimpani,	$0E,	$84
	dc.b		$0F,	dSnare,	$07,	dSnare,	dSnare,	$0E,	dSnare,	$16
	dc.b		dSnare,	$07,	dSnare,	$0F,	dSnare,	$0E,	dTimpani,	$07
	dc.b		dTimpani,	$84,	$08,	$84,	$07,	dSnare,	$0E,	dTimpani
	dc.b		$06,	dTimpani,	$05,	dTimpani,	$04,	dSnare,	$0E,	dTimpani
	dc.b		$06,	dTimpani,	$05,	dTimpani,	$03,	dSnare,	$0F,	dSnare
	dc.b		$0E,	dSnare,	$0F,	dSnare,	$07,	dSnare
	smpsJump	PaintBlack_Jump06

PaintBlack_Voices:
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$0E,$27,$00;			Voice 00
	dc.b		$02,$00,$03,$01,$00,$D3,$DF,$DF,$9F,$05,$0A,$02,$07,$00,$00,$12
	dc.b		$00,$29,$8F,$50,$09,$1C,$13,$24,$00;			Voice 01
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$00;			Voice 02
	dc.b		$3A,$02,$03,$14,$71,$1F,$12,$1F,$1F,$04,$02,$04,$0A,$01,$01,$02
	dc.b		$02,$1F,$1F,$1F,$1F,$1A,$16,$19,$00;			Voice 03
	dc.b		$35,$21,$32,$21,$33,$8E,$9B,$8C,$94,$00,$05,$00,$00,$01,$02,$02
	dc.b		$02,$07,$36,$17,$08,$1A,$11,$0D,$00;			Voice 04
	even
