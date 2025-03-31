AVGNThemeS1_Header:
smpsHeaderStartSong = 1
		smpsHeaderVoice     AVGNThemeS1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $26

	smpsHeaderDAC       AVGNThemeS1_DAC
	smpsHeaderFM        AVGNThemeS1_FM1,	$00, $0B
	smpsHeaderFM        AVGNThemeS1_FM2,	$00, $0D
	smpsHeaderFM        AVGNThemeS1_FM3,	$00, $09
	smpsHeaderFM        AVGNThemeS1_FM4,	$00, $00
	smpsHeaderFM        AVGNThemeS1_FM5,	$00, $00
	smpsHeaderPSG       AVGNThemeS1_PSG1,	$D0, $00, $00, $00
	smpsHeaderPSG       AVGNThemeS1_PSG2,	$D0, $00, $00, $00
	smpsHeaderPSG       AVGNThemeS1_PSG3,	$00, $00, $00, $00

; PSG1 Data
AVGNThemeS1_PSG1:

; PSG2 Data
AVGNThemeS1_PSG2:

; PSG3 Data
AVGNThemeS1_PSG3:
	smpsStop

; FM1 Data
AVGNThemeS1_FM1:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$31
	smpsSetvoice	$02
	smpsAlterVol	$03
	dc.b		nF4,	$08,	nRst,	nC5,	nRst,	nC5,	nRst,	nC5
	dc.b		nRst,	nC5,	nRst,	nBb4,	nRst,	nBb4,	nRst,	nC5
	dc.b		nRst,	nAb4,	$50,	nRst,	$30,	nF4,	$08,	nRst
	dc.b		nC5,	nRst,	nC5,	nRst,	nC5,	nRst,	nC5,	nRst
	dc.b		nBb4,	nRst,	nBb4,	nRst,	nC5,	nRst,	nAb4,	$20
	dc.b		nAb4,	$08,	nRst,	nC5,	nRst,	nAb4,	$0B,	nAb4
	dc.b		$55,	nAb4,	$08,	nRst,	nCs5,	nRst,	nC5,	$0B
	dc.b		nBb4,	$65,	nC5,	$08,	nRst,	nCs5,	nRst,	nEb5
	dc.b		nRst,	nEb5,	nRst,	nEb5,	nRst,	nEb5,	nRst,	nEb5
	dc.b		nRst,	nCs5,	nRst,	nC5,	nRst,	nAb4,	$60,	nAb4
	dc.b		$08,	nRst,	nC5,	nRst,	nAb4,	$60,	nAb4,	$08
	dc.b		nRst,	nCs5,	nRst,	nC5,	$0B,	nBb4,	$10,	nRst
	dc.b		$05,	nBb4,	$40,	nC5,	$08,	nC5,	nC5,	nRst
	dc.b		nCs5,	nRst,	nEb5,	nRst,	$18,	nEb5,	$08,	nRst
	dc.b		$18,	nEb5,	$08,	nRst,	nCs5,	nRst,	nC5,	nRst
	dc.b		nAb4,	$70,	nAb4,	$08,	nRst,	nBb4,	nRst,	nC5
	dc.b		nRst,	nC5,	nRst,	nC5,	nRst,	nC5,	nRst,	nBb4
	dc.b		nRst,	nBb4,	nRst,	nC5,	nRst,	nAb4,	nAb4,	$68
	dc.b		nAb4,	$08,	nRst,	nBb4,	nRst,	nC5,	$10,	nRst
	dc.b		$08,	nC5,	$18,	nC5,	$0C,	nRst,	$04,	nBb4
	dc.b		$20,	nC5,	$08,	nRst,	nAb4,	$70,	nAb4,	$08
	dc.b		nRst,	nBb4,	nRst,	nC5,	$10,	nRst,	$08,	nC5
	dc.b		$18,	nC5,	$08,	nRst,	nBb4,	nRst,	nBb4,	nRst
	dc.b		nC5,	nRst,	nAb4,	nAb4,	$68,	nAb4,	$08,	nRst
	dc.b		nBb4,	nRst,	nC5,	$10,	nRst,	$08,	nC5,	$18
	dc.b		nRst,	$10,	nBb4,	$08,	nBb4,	nBb4,	nC5,	$28
	dc.b		nAb4,	$7F,	smpsNoAttack,	$51,	nRst,	$30
	smpsStop

; FM2 Data
AVGNThemeS1_FM2:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$01
	smpsSetvoice	$00
	smpsAlterVol	$03
	dc.b		nF2,	$08,	nRst,	nF2,	nRst,	nC2,	nRst,	nC2
	dc.b		nRst,	nEb2,	$18,	nD2,	$10,	nEb2,	$08,	nD2
	dc.b		$10,	nF2,	$08,	nRst,	nF2,	nRst,	nC2,	nRst
	dc.b		nC2,	nRst,	nBb2,	$18,	nA2,	$10,	nBb2,	$08
	dc.b		nA2,	$10,	nF2,	$08,	nRst,	nF2,	nRst,	nC2
	dc.b		nRst,	nC2,	nRst,	nEb2,	$18,	nD2,	$10,	nEb2
	dc.b		$08,	nD2,	$10,	nF2,	$08,	nRst,	nF2,	nRst
	dc.b		nC2,	nRst,	nC2,	nRst,	nBb2,	$18,	nA2,	$10
	dc.b		nBb2,	$08,	nA2,	$10,	nAb2,	$08,	nRst,	nAb2
	dc.b		nRst,	nEb2,	nRst,	nEb2,	nRst,	nFs2,	$18,	nF2
	dc.b		$10,	nFs2,	$08,	nF2,	$10,	nBb2,	$08,	nRst
	dc.b		nBb2,	nRst,	nF2,	nRst,	nF2,	nRst,	nAb2,	$18
	dc.b		nG2,	$10,	nAb2,	$08,	nG2,	$10,	nAb2,	$08
	dc.b		nRst,	nAb2,	nRst,	nEb2,	nRst,	nEb2,	nRst,	nFs2
	dc.b		$18,	nF2,	$10,	nFs2,	$08,	nF2,	$10,	nAb2
	dc.b		$08,	nRst,	nAb2,	nRst,	nEb2,	nRst,	nEb2,	nRst
	dc.b		nCs3,	$18,	nC3,	$10,	nCs3,	$08,	nC3,	$10
	dc.b		nAb2,	$08,	nRst,	nAb2,	nRst,	nEb2,	nRst,	nEb2
	dc.b		nRst,	nFs2,	$18,	nF2,	$10,	nFs2,	$08,	nF2
	dc.b		$10,	nBb2,	$08,	nRst,	nBb2,	nRst,	nF2,	nRst
	dc.b		nF2,	nRst,	nAb2,	$18,	nG2,	$10,	nAb2,	$08
	dc.b		nG2,	$10,	nAb2,	$08,	nRst,	nAb2,	nRst,	nEb2
	dc.b		nRst,	nEb2,	nRst,	nFs2,	$18,	nF2,	$10,	nFs2
	dc.b		$08,	nF2,	$10,	nAb2,	$08,	nRst,	nAb2,	nRst
	dc.b		nEb2,	nRst,	nEb2,	nRst,	nCs3,	$18,	nC3,	$10
	dc.b		nCs3,	$08,	nC3,	$10,	nAb2,	$08,	nRst,	nEb2
	dc.b		nRst,	nFs2,	nRst,	nEb2,	nRst,	nAb2,	nAb2,	nEb2
	dc.b		nRst,	nFs2,	nRst,	nEb2,	nRst,	nAb2,	nRst,	nEb2
	dc.b		nRst,	nFs2,	nRst,	nEb2,	nRst,	nAb2,	nAb2,	nEb2
	dc.b		nRst,	nFs2,	nRst,	nEb2,	nRst,	nAb2,	nRst,	nEb2
	dc.b		nRst,	nFs2,	nRst,	nEb2,	nRst,	nAb2,	nAb2,	nEb2
	dc.b		nRst,	nFs2,	nRst,	nEb2,	nRst,	nAb2,	nRst,	nEb2
	dc.b		nRst,	nFs2,	nRst,	nEb2,	nRst,	nAb2,	nAb2,	nEb2
	dc.b		nRst,	nFs2,	nRst,	nEb2,	nRst,	nAb2,	nRst,	nEb2
	dc.b		nRst,	nFs2,	nRst,	nEb2,	nRst,	nAb2,	nAb2,	nEb2
	dc.b		nRst,	nAb2,	nRst,	nG2,	nRst,	nEb2,	nRst,	nEb2
	dc.b		nRst,	nG2,	nRst,	nG2,	nRst,	nBb2,	nRst,	nBb2
	dc.b		nRst,	nCs3,	nRst,	nCs3,	nRst,	$18,	nAb1,	$10
	dc.b		nRst,	nAb1,	nRst,	nEb2,	$20,	nG2,	$08,	nRst
	dc.b		nAb1,	$7F,	smpsNoAttack,	$51,	nRst,	$30
	smpsStop

; FM3 Data
AVGNThemeS1_FM3:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$31
	smpsSetvoice	$02
	smpsAlterVol	$03
	smpsModSet	$00,	$02,	$03,	$03
	dc.b		nF4,	$08,	nRst,	nC5,	nRst,	nC5,	nRst,	nC5
	dc.b		nRst,	nC5,	nRst,	nBb4,	nRst,	nBb4,	nRst,	nC5
	dc.b		nRst,	nAb4,	$50,	nRst,	$30,	nF4,	$08,	nRst
	dc.b		nC5,	nRst,	nC5,	nRst,	nC5,	nRst,	nC5,	nRst
	dc.b		nBb4,	nRst,	nBb4,	nRst,	nC5,	nRst,	nAb4,	$20
	dc.b		nAb4,	$08,	nRst,	nC5,	nRst,	nAb4,	$0B,	nAb4
	dc.b		$55,	nAb4,	$0B,	nRst,	$05,	nCs5,	$08,	nRst
	dc.b		nC5,	$0B,	nBb4,	$65,	nC5,	$08,	nRst,	nCs5
	dc.b		nRst,	nEb5,	nRst,	nEb5,	nRst,	nEb5,	nRst,	nEb5
	dc.b		nRst,	nEb5,	nRst,	nCs5,	nRst,	nC5,	nRst,	nAb4
	dc.b		$60,	nAb4,	$08,	nRst,	nC5,	nRst,	nAb4,	$60
	dc.b		nAb4,	$0B,	nRst,	$05,	nCs5,	$08,	nRst,	nC5
	dc.b		$0B,	nBb4,	$10,	nRst,	$05,	nBb4,	$40,	nC5
	dc.b		$08,	nC5,	nC5,	nRst,	nCs5,	nRst,	nEb5,	nRst
	dc.b		$18,	nEb5,	$08,	nRst,	$18,	nEb5,	$08,	nRst
	dc.b		nCs5,	nRst,	nC5,	nRst,	nAb4,	$70,	nAb4,	$08
	dc.b		nRst,	nBb4,	nRst,	nC5,	nRst,	nC5,	nRst,	nC5
	dc.b		nRst,	nC5,	nRst,	nBb4,	nRst,	nBb4,	nRst,	nC5
	dc.b		nRst,	nAb4,	nAb4,	$68,	nAb4,	$08,	nRst,	nBb4
	dc.b		nRst,	nC5,	$10,	nRst,	$08,	nC5,	$18,	nC5
	dc.b		$0C,	nRst,	$04,	nBb4,	$20,	nC5,	$08,	nRst
	dc.b		nAb4,	$70,	nAb4,	$08,	nRst,	nBb4,	nRst,	nC5
	dc.b		$10,	nRst,	$08,	nC5,	$18,	nC5,	$08,	nRst
	dc.b		nBb4,	nRst,	nBb4,	nRst,	nC5,	nRst,	nAb4,	nAb4
	dc.b		$68,	nAb4,	$08,	nRst,	nBb4,	nRst,	nC5,	$10
	dc.b		nRst,	$08,	nC5,	$18,	nRst,	$10,	nBb4,	$08
	dc.b		nBb4,	nBb4,	nC5,	$28,	nAb4,	$7F,	smpsNoAttack,	$51
	dc.b		nRst,	$30
	smpsStop

; FM4 Data
AVGNThemeS1_FM4:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$01
	smpsSetvoice	$01
	smpsAlterVol	$0C
	dc.b		nA4,	$08,	nRst,	nA4,	nRst,	nF4,	nRst,	nF4
	dc.b		nRst,	nG4,	$10,	nRst,	$08,	nG4,	$28,	nA4
	dc.b		$08,	nRst,	nA4,	nRst,	nF4,	nRst,	nF4,	nRst
	dc.b		nBb4,	$10,	nRst,	$08,	nBb4,	$28,	nA4,	$08
	dc.b		nRst,	nA4,	nRst,	nF4,	nRst,	nF4,	nRst,	nG4
	dc.b		$10,	nRst,	$08,	nG4,	$28,	nA4,	$08,	nRst
	dc.b		nA4,	nRst,	nF4,	nRst,	nF4,	nRst,	nBb4,	$10
	dc.b		nRst,	$08,	nBb4,	$28,	nC5,	$08,	nRst,	nC5
	dc.b		nRst,	nAb4,	nRst,	nAb4,	nRst,	nBb4,	$10,	nRst
	dc.b		$08,	nBb4,	$28,	nD5,	$08,	nRst,	nD5,	nRst
	dc.b		nBb4,	nRst,	nBb4,	nRst,	nC5,	$10,	nRst,	$08
	dc.b		nC5,	$28,	nC5,	$08,	nRst,	nC5,	nRst,	nAb4
	dc.b		nRst,	nAb4,	nRst,	nBb4,	$10,	nRst,	$08,	nBb4
	dc.b		$28,	nC5,	$08,	nRst,	nC5,	nRst,	nAb4,	nRst
	dc.b		nAb4,	nRst,	nCs5,	$10,	nRst,	$08,	nCs5,	$28
	dc.b		nC5,	$08,	nRst,	nC5,	nRst,	nAb4,	nRst,	nAb4
	dc.b		nRst,	nBb4,	$10,	nRst,	$08,	nBb4,	$28,	nD5
	dc.b		$08,	nRst,	nD5,	nRst,	nBb4,	nRst,	nBb4,	nRst
	dc.b		nC5,	$10,	nRst,	$08,	nC5,	$28,	nC5,	$08
	dc.b		nRst,	nC5,	nRst,	nAb4,	nRst,	nAb4,	nRst,	nBb4
	dc.b		$10,	nRst,	$08,	nBb4,	$28,	nC5,	$08,	nRst
	dc.b		nC5,	nRst,	nAb4,	nRst,	nAb4,	nRst,	nCs5,	$10
	dc.b		nRst,	$08,	nCs5,	$28,	nAb4,	$08,	nRst,	nAb4
	dc.b		nRst,	nAb4,	nRst,	nAb4,	nRst,	nFs4,	$18,	nBb4
	dc.b		nAb4,	$10,	nEb4,	$08,	nRst,	nEb4,	nRst,	nAb4
	dc.b		nRst,	nAb4,	nRst,	nBb4,	$10,	nRst,	$08,	nAb4
	dc.b		$28,	nAb4,	$08,	nRst,	nAb4,	nRst,	nAb4,	nRst
	dc.b		nAb4,	nRst,	nFs4,	$18,	nBb4,	nAb4,	$10,	nEb4
	dc.b		$08,	nRst,	nEb4,	nRst,	nAb4,	nRst,	nAb4,	nRst
	dc.b		nBb4,	$10,	nRst,	$08,	nAb4,	$28,	nAb4,	$08
	dc.b		nRst,	nAb4,	nRst,	nAb4,	nRst,	nAb4,	nRst,	nFs4
	dc.b		$18,	nBb4,	nAb4,	$10,	nEb4,	$08,	nRst,	nEb4
	dc.b		nRst,	nG4,	nRst,	nG4,	nRst,	nBb4,	$10,	nRst
	dc.b		$08,	nBb4,	$28,	nC5,	$10,	nRst,	nC5,	nRst
	dc.b		nBb4,	nRst,	$08,	nC5,	$18,	nC5,	$08,	nRst
	smpsSetvoice	$00
	smpsAlterVol	$FD
	smpsModSet	$00,	$02,	$10,	$03
	dc.b		nAb1,	$7F,	smpsNoAttack,	$51,	nRst,	$30
	smpsStop

; FM5 Data
AVGNThemeS1_FM5:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$01
	smpsSetvoice	$01
	smpsAlterVol	$0C
	dc.b		nC5,	$08,	nRst,	nC5,	nRst,	nA4,	nRst,	nA4
	dc.b		nRst,	nBb4,	$10,	nRst,	$08,	nBb4,	$28,	nC5
	dc.b		$08,	nRst,	nC5,	nRst,	nA4,	nRst,	nA4,	nRst
	dc.b		nEb5,	$10,	nRst,	$08,	nEb5,	$28,	nC5,	$08
	dc.b		nRst,	nC5,	nRst,	nA4,	nRst,	nA4,	nRst,	nBb4
	dc.b		$10,	nRst,	$08,	nBb4,	$28,	nC5,	$08,	nRst
	dc.b		nC5,	nRst,	nA4,	nRst,	nA4,	nRst,	nEb5,	$10
	dc.b		nRst,	$08,	nEb5,	$28,	nEb5,	$08,	nRst,	nEb5
	dc.b		nRst,	nC5,	nRst,	nC5,	nRst,	nCs5,	$10,	nRst
	dc.b		$08,	nCs5,	$28,	nF5,	$08,	nRst,	nF5,	nRst
	dc.b		nD5,	nRst,	nD5,	nRst,	nEb5,	$10,	nRst,	$08
	dc.b		nEb5,	$28,	nEb5,	$08,	nRst,	nEb5,	nRst,	nC5
	dc.b		nRst,	nC5,	nRst,	nCs5,	$10,	nRst,	$08,	nCs5
	dc.b		$28,	nEb5,	$08,	nRst,	nEb5,	nRst,	nC5,	nRst
	dc.b		nC5,	nRst,	nFs5,	$10,	nRst,	$08,	nFs5,	$28
	dc.b		nEb5,	$08,	nRst,	nEb5,	nRst,	nC5,	nRst,	nC5
	dc.b		nRst,	nCs5,	$10,	nRst,	$08,	nCs5,	$28,	nF5
	dc.b		$08,	nRst,	nF5,	nRst,	nD5,	nRst,	nD5,	nRst
	dc.b		nEb5,	$10,	nRst,	$08,	nEb5,	$28,	nEb5,	$08
	dc.b		nRst,	nEb5,	nRst,	nC5,	nRst,	nC5,	nRst,	nCs5
	dc.b		$10,	nRst,	$08,	nCs5,	$28,	nEb5,	$08,	nRst
	dc.b		nEb5,	nRst,	nC5,	nRst,	nC5,	nRst,	nFs5,	$10
	dc.b		nRst,	$08,	nFs5,	$28,	nC5,	$08,	nRst,	nC5
	dc.b		nRst,	nC5,	nRst,	nC5,	nRst,	nBb4,	$18,	nCs5
	dc.b		nC5,	$10,	nAb4,	$08,	nRst,	nAb4,	nRst,	nC5
	dc.b		nRst,	nC5,	nRst,	nEb5,	$10,	nRst,	$08,	nC5
	dc.b		$28,	nC5,	$08,	nRst,	nC5,	nRst,	nC5,	nRst
	dc.b		nC5,	nRst,	nBb4,	$18,	nCs5,	nC5,	$10,	nAb4
	dc.b		$08,	nRst,	nAb4,	nRst,	nC5,	nRst,	nC5,	nRst
	dc.b		nEb5,	$10,	nRst,	$08,	nC5,	$28,	nC5,	$08
	dc.b		nRst,	nC5,	nRst,	nC5,	nRst,	nC5,	nRst,	nBb4
	dc.b		$18,	nCs5,	nC5,	$10,	nG4,	$08,	nRst,	nG4
	dc.b		nRst,	nBb4,	nRst,	nBb4,	nRst,	nCs5,	$10,	nRst
	dc.b		$08,	nCs5,	$28,	nEb5,	$10,	nRst,	nEb5,	nRst
	dc.b		nCs5,	nRst,	$08,	nEb5,	$18,	nEb5,	$08,	nRst
	smpsSetvoice	$00
	smpsAlterVol	$FD
	smpsModSet	$00,	$02,	$10,	$03
	dc.b		nAb1,	$7F,	smpsNoAttack,	$51,	nRst,	$30
	smpsStop

; DAC Data
AVGNThemeS1_DAC:
	dc.b		dKick,	$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		$0B,	dSnare,	$05,	dSnare,	$0B,	dSnare,	$05,	dKick
	dc.b		$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	$0B
	dc.b		dSnare,	$05,	dSnare,	$10,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	$0B,	dSnare,	$05,	dSnare,	$0B
	dc.b		dSnare,	$05,	dKick,	$10,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	$0B,	dSnare,	$05,	dSnare,	$10,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	$0B,	dSnare
	dc.b		$05,	dSnare,	$0B,	dSnare,	$05,	dKick,	$10,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	$0B,	dSnare,	$05
	dc.b		dSnare,	$10,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	$0B,	dSnare,	$05,	dSnare,	$0B,	dSnare,	$05
	dc.b		dKick,	$10,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		$0B,	dSnare,	$05,	dSnare,	$10,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	$0B,	dSnare,	$05,	dSnare
	dc.b		$0B,	dSnare,	$05,	dKick,	$10,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	$0B,	dSnare,	$05,	dSnare,	$0B
	dc.b		dSnare,	$05,	dKick,	$10,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dSnare,	$08,	dSnare,	$7F,	nRst,	$7F,	nRst
	dc.b		$1A
	smpsStop

AVGNThemeS1_Voices:
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$2F,$1F,$1F,$FF,$19,$37,$13,$00;			Voice 00
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$00;			Voice 01
	dc.b		$3A,$51,$08,$51,$02,$1E,$1E,$1E,$10,$1F,$1F,$1F,$0F,$00,$00,$00
	dc.b		$02,$0F,$0F,$0F,$1F,$18,$24,$22,$00;			Voice 02
	even
