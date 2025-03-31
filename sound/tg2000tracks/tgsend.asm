
TG2000sEndSegment_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     TG2000sEndSegment_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       TG2000sEndSegment_DAC
	smpsHeaderFM        TG2000sEndSegment_FM1,	$00, $0B
	smpsHeaderFM        TG2000sEndSegment_FM2,	$00, $0D
	smpsHeaderFM        TG2000sEndSegment_FM3,	$00, $09
	smpsHeaderFM        TG2000sEndSegment_FM4,	$00, $00
	smpsHeaderFM        TG2000sEndSegment_FM5,	$00, $00
	smpsHeaderPSG       TG2000sEndSegment_PSG1,	$D0, $00, $00, $00
	smpsHeaderPSG       TG2000sEndSegment_PSG2,	$D0, $00, $00, $00
	smpsHeaderPSG       TG2000sEndSegment_PSG3,	$00, $00, $00, $00

; PSG1 Data
TG2000sEndSegment_PSG1:

; PSG2 Data
TG2000sEndSegment_PSG2:
	smpsStop

; FM1 Data
TG2000sEndSegment_FM1:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$01
	smpsSetvoice	$00
	smpsAlterVol	$04
	dc.b		nCs5,	$10,	nRst,	nB4,	$0C,	nA4,	$04,	nRst
	dc.b		$09,	nCs5,	$27,	nRst,	$10,	nA4,	$0C,	nB4
	dc.b		$04,	nCs5,	$08,	nRst,	nCs5,	nRst,	nB4,	nRst
	dc.b		nA4,	nRst,	nCs5,	nRst,	nD5,	nRst,	nE5,	nRst
	dc.b		nFs5,	nRst,	$18,	nA4,	$08,	nRst,	nA4,	nRst
	dc.b		nFs4,	nRst,	nE4,	$10,	nRst,	$08,	nCs5,	$18
	dc.b		nRst,	$10,	nFs4,	$08,	nRst,	nA4,	nRst,	nB4
	dc.b		nRst,	nCs5,	nRst,	nB4,	$10,	nRst,	$08,	nE4
	dc.b		$18,	nRst,	$1C,	nD6,	$04
	smpsSetvoice	$03
	smpsAlterVol	$08
	dc.b		nCs6,	$0C,	nD6,	$04,	nCs6,	$0C,	nD6,	$04
	dc.b		nRst,	$0C,	nD6,	$04,	nCs6,	$0C,	nD6,	$04
	dc.b		nCs6,	$08,	nFs6,	$10,	nG6,	$08,	nFs6,	$10
	dc.b		nE6,	$08,	nRst,	nE6,	nRst,	nD6,	nRst,	nD6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nB5,	nRst,	nB5
	dc.b		nRst,	nA5,	$10,	nB5,	nC6,	nD6,	nB5,	$08
	dc.b		nG6,	$18,	nA6,	$10,	nA1,	$7F,	smpsNoAttack,	$7F
	dc.b		smpsNoAttack,	$03,	nRst,	$0F
	smpsStop

; FM2 Data
TG2000sEndSegment_FM2:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$01
	smpsSetvoice	$01
	smpsAlterVol	$02
	dc.b		nA2,	$08,	nRst,	nA2,	nRst,	nE2,	nRst,	nE2
	dc.b		nRst,	nG2,	$18,	nE2,	$10,	nFs2,	$08,	nAb2
	dc.b		$10,	nA2,	$08,	nRst,	nA2,	nRst,	nE2,	nRst
	dc.b		nE2,	nRst,	nD3,	$18,	nCs3,	$10,	nC3,	$08
	dc.b		nB2,	$10,	nD2,	$08,	nRst,	nD2,	nRst,	nFs2
	dc.b		nRst,	nFs2,	nRst,	nA2,	$18,	nE3,	$10,	nE2
	dc.b		$08,	nA2,	$10,	nB2,	$08,	nRst,	nB2,	nRst
	dc.b		nEb3,	nRst,	nEb3,	nRst,	nE3,	$18,	nE2,	$10
	dc.b		nE3,	$08,	nE2,	$10,	nG2,	$08,	nRst,	nD2
	dc.b		nRst,	nF2,	nRst,	nD2,	nRst,	nG2,	nG2,	$01
	dc.b		nRst,	$07,	nD2,	$08,	nRst,	nF2,	nRst,	nD2
	dc.b		nRst,	nE2,	nRst,	nE2,	nRst,	nAb2,	nRst,	nAb2
	dc.b		nRst,	nB2,	nRst,	nB2,	nRst,	nD3,	nRst,	nD3
	dc.b		nRst,	$18,	nA1,	$10,	nRst,	nA1,	nRst,	$08
	dc.b		nAb2,	$18,	nA2,	$10,	nA1,	$7F,	smpsNoAttack,	$7F
	dc.b		smpsNoAttack,	$03,	nRst,	$0F
	smpsStop

; FM3 Data
TG2000sEndSegment_FM3:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$01
	smpsSetvoice	$00
	smpsAlterVol	$04
	smpsModSet	$00,	$02,	$03,	$03
	dc.b		nCs5,	$10,	nRst,	nB4,	$0C,	nA4,	$04,	nRst
	dc.b		$09,	nCs5,	$27,	nRst,	$10,	nA4,	$0C,	nB4
	dc.b		$04,	nCs5,	$08,	nRst,	nCs5,	nRst,	nB4,	nRst
	dc.b		nA4,	nRst,	nCs5,	nRst,	nD5,	nRst,	nE5,	nRst
	dc.b		nFs5,	nRst,	$18,	nA4,	$08,	nRst,	nA4,	nRst
	dc.b		nFs4,	nRst,	nE4,	$10,	nRst,	$08,	nCs5,	$18
	dc.b		nRst,	$10,	nFs4,	$08,	nRst,	nA4,	nRst,	nB4
	dc.b		nRst,	nCs5,	nRst,	nB4,	$10,	nRst,	$08,	nE4
	dc.b		$18,	nRst,	$1C,	nD6,	$04
	smpsSetvoice	$03
	smpsAlterVol	$08
	dc.b		nCs6,	$0C,	nD6,	$04,	nCs6,	$0C,	nD6,	$04
	dc.b		nRst,	$0C,	nD6,	$04,	nCs6,	$0C,	nD6,	$04
	dc.b		nCs6,	$08,	nFs6,	$10,	nG6,	$08,	nFs6,	$10
	dc.b		nE6,	$08,	nRst,	nE6,	nRst,	nD6,	nRst,	nD6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nB5,	nRst,	nB5
	dc.b		nRst,	nA5,	$10,	nB5,	nC6,	nD6,	nB5,	$08
	dc.b		nG6,	$18,	nA6,	$10
	smpsSetvoice	$01
	smpsAlterVol	$F4
	smpsModSet	$00,	$02,	$10,	$03
	dc.b		nA1,	$7F,	smpsNoAttack,	$7F,	smpsNoAttack,	$03,	nRst,	$0F
	smpsStop

; FM4 Data
TG2000sEndSegment_FM4:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$01
	smpsSetvoice	$02
	smpsAlterVol	$08
	dc.b		nE5,	$08,	nRst,	nE5,	nRst,	nE5,	nRst,	nE5
	dc.b		nRst,	nE5,	$10,	nRst,	$08,	nCs5,	$28,	nCs5
	dc.b		$08,	nRst,	nCs5,	nRst,	nCs5,	nRst,	nCs5,	nRst
	dc.b		nCs5,	$10,	nRst,	$08,	nCs5,	$28,	nA4,	$08
	dc.b		nRst,	nA4,	nRst,	nA4,	nRst,	nCs5,	nRst,	nCs5
	dc.b		$10,	nRst,	$08,	nCs5,	$28,	nD5,	$08,	nRst
	dc.b		nD5,	nRst,	nCs5,	nRst,	nCs5,	nRst,	nAb4,	$10
	dc.b		nRst,	$08,	nAb4,	$28,	nRst,	$10,	nD5,	$18
	dc.b		nRst,	$08,	nD5,	nRst,	nCs5,	$18,	nD5,	nCs5
	dc.b		$10,	nE4,	$20,	nAb4,	nB4,	nAb5,	nE5,	$10
	dc.b		nRst,	nE5,	nRst,	$18,	nEb5,	nE5,	$10
	smpsSetvoice	$01
	smpsAlterVol	$FD
	smpsModSet	$00,	$02,	$10,	$03
	dc.b		nA1,	$7F,	smpsNoAttack,	$7F,	smpsNoAttack,	$03,	nRst,	$0F
	smpsStop

; FM5 Data
TG2000sEndSegment_FM5:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$01
	smpsSetvoice	$02
	smpsAlterVol	$08
	dc.b		nCs5,	$08,	nRst,	nCs5,	nRst,	nCs5,	nRst,	nCs5
	dc.b		nRst,	nCs5,	$10,	nRst,	$08,	nA4,	$28,	nA4
	dc.b		$08,	nRst,	nA4,	nRst,	nA4,	nRst,	nA4,	nRst
	dc.b		nA4,	$10,	nRst,	$08,	nA4,	$28,	nFs4,	$08
	dc.b		nRst,	nFs4,	nRst,	nFs4,	nRst,	nA4,	nRst,	nA4
	dc.b		$10,	nRst,	$08,	nA4,	$28,	nB4,	$08,	nRst
	dc.b		nB4,	nRst,	nA4,	nRst,	nA4,	nRst,	nE4,	$10
	dc.b		nRst,	$08,	nE4,	$28,	nRst,	$10,	nB4,	$18
	dc.b		nRst,	$08,	nB4,	nRst,	nA4,	$18,	nB4,	nA4
	dc.b		$10,	nAb4,	$20,	nB4,	nD5,	nE5,	nCs5,	$10
	dc.b		nRst,	nCs5,	nRst,	$18,	nC5,	nCs5,	$10,	nA1
	dc.b		$7F,	smpsNoAttack,	$7F,	smpsNoAttack,	$03,	nRst,	$0F
	smpsStop

; PSG3 Data
TG2000sEndSegment_PSG3:
	smpsSetVol	$04
	smpsPSGform	$E7
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$0F
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$07
	smpsAlterNote	$01
	dc.b		nA5,	$01,	nRst,	$18
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$7F,	$7F,	$1E
	smpsStop

; DAC Data
TG2000sEndSegment_DAC:
	dc.b		dKick,	$20,	dSnare,	$1C,	dKick,	$04,	dSnare,	$10
	dc.b		dSnare,	dSnare,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	$0C,	dSnare,	$04,	dSnare,	$0C,	dSnare
	dc.b		$04,	dKick,	$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	$0C,	dSnare,	$04,	dSnare,	$0C,	dSnare,	$04
	dc.b		dKick,	$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		$0C,	dSnare,	$04,	dSnare,	$0C,	dSnare,	$04,	dKick
	dc.b		$10,	dSnare,	dKick,	dSnare,	dKick,	$08,	dSnare,	$18
	dc.b		dSnare,	$7F,	nRst,	$7F,	nRst,	$22
	smpsStop

TG2000sEndSegment_Voices:
	dc.b		$3A,$51,$08,$51,$02,$1E,$1E,$1E,$10,$1F,$1F,$1F,$0F,$00,$00,$00
	dc.b		$02,$0F,$0F,$0F,$1F,$18,$24,$22,$00;			Voice 00
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$2F,$1F,$1F,$FF,$19,$37,$13,$00;			Voice 01
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$00;			Voice 02
	dc.b		$3D,$01,$02,$02,$02,$14,$0E,$8C,$0E,$08,$05,$02,$05,$00,$00,$00
	dc.b		$00,$1F,$1F,$1F,$1F,$1A,$00,$00,$38;			Voice 03
	even
