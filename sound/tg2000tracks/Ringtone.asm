ATTRing_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     ATTRing_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       ATTRing_DAC
	smpsHeaderFM        ATTRing_FM1,	$00, $0B
	smpsHeaderFM        ATTRing_FM2,	$00, $0D
	smpsHeaderFM        ATTRing_FM3,	$00, $09
	smpsHeaderFM        ATTRing_FM4,	$00, $00
	smpsHeaderFM        ATTRing_FM5,	$00, $00

; PSG3 Data
ATTRing_PSG3:
	smpsStop

; FM1 Data
ATTRing_FM1:
	smpsSetvoice	$00
	smpsAlterVol	$0B
	smpsPan		panCentre,	$00
	dc.b		nAb3,	$0A,	nC4,	nEb4,	nBb3,	nD4,	nF4,	nEb4
	dc.b		nG4,	nBb4,	nEb5,	$1E,	nAb3,	$0A,	nC4,	nEb4
	dc.b		nBb3,	nD4,	nF4,	nEb4,	nG4,	nBb4,	nEb5,	$1E
	dc.b		nAb3,	$0A,	nC4,	nEb4,	nBb3,	nD4,	nF4,	nEb4
	dc.b		nG4,	nBb4,	nEb5,	$46,	nRst,	$50
	smpsStop

; FM2 Data
ATTRing_FM2:
	smpsSetvoice	$00
	smpsAlterVol	$18
	smpsPan		panCentre,	$00
	dc.b		nG4,	$1E,	nD4
	smpsSetvoice	$01
	smpsAlterVol	$F7
	dc.b		nEb4,	$0A,	nG4,	nBb4,	nEb5,	$1E,	nAb2,	$0A
	dc.b		nC3,	nEb3,	nBb2,	nD3,	nF3,	nEb3,	nG3,	nBb3
	dc.b		nEb4,	$1E,	nAb2,	$0A,	nC3,	nEb3,	nBb2,	nD3
	dc.b		nF3,	nEb3,	nG3,	nBb3,	nEb4,	$46,	nRst,	$50
	smpsStop

; FM3 Data
ATTRing_FM3:
	smpsSetvoice	$00
	smpsAlterVol	$18
	smpsPan		panCentre,	$00
	dc.b		nEb4,	$1E,	nBb3
	smpsSetvoice	$01
	dc.b		nEb4,	$0A,	nG4,	nBb4,	nEb5,	$1E
	smpsSetvoice	$00
	dc.b		nEb4,	nBb3
	smpsSetvoice	$01
	dc.b		nEb4,	$0A,	nG4,	nBb4,	nEb5,	$1E,	nAb3,	$0A
	dc.b		nC4,	nEb4,	nBb3,	nD4,	nF4,	nEb4,	nG4,	nBb4
	dc.b		nEb5,	$46,	nRst,	$50
	smpsStop

; FM4 Data
ATTRing_FM4:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$3C
	smpsSetvoice	$00
	smpsAlterVol	$0B
	dc.b		nEb4
	smpsAlterVol	$0D
	dc.b		nG4,	$1E,	nD4,	nEb4,	$3C
	smpsSetvoice	$02
	smpsAlterVol	$EF
	dc.b		nAb4,	$0A,	nC5,	nEb5,	nBb4,	nD5,	nF5,	nEb5
	dc.b		nG5,	nBb5,	nEb6,	nRst,	$7F,	$0D
	smpsStop

; FM5 Data
ATTRing_FM5:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$78
	smpsSetvoice	$00
	smpsAlterVol	$0B
	dc.b		nAb4,	$0A,	nC5,	nEb5,	nBb4,	nD5,	nF5,	nEb5
	dc.b		nG5,	nBb5,	nEb6,	$1E
	smpsSetvoice	$02
	smpsAlterVol	$FC
	dc.b		nAb5,	$0A,	nC6,	nEb6,	nBb5,	nD6,	nF6,	nEb6
	dc.b		nG6,	nBb6,	nEb7,	nRst,	$7F,	$0D
	smpsStop

; DAC Data
ATTRing_DAC:
	dc.b		nRst,	$7F,	nRst,	$71,	dTimpani,	$1E,	$84,	dTimpani
	dc.b		$84,	$7F,	nRst,	$17
	smpsStop

ATTRing_Voices:
	dc.b		$3C,$01,$02,$0F,$04,$8E,$53,$9F,$1F,$0B,$00,$00,$0D,$01,$00,$00
	dc.b		$00,$23,$07,$02,$F6,$15,$00,$1D,$06;			Voice 00
	dc.b		$3C,$05,$01,$0A,$01,$56,$59,$5C,$58,$0E,$10,$14,$10,$09,$0B,$06
	dc.b		$0B,$46,$36,$36,$36,$1F,$00,$1E,$00;			Voice 01
	dc.b		$3A,$32,$01,$01,$72,$8D,$0D,$0D,$4D,$06,$00,$00,$02,$04,$02,$02
	dc.b		$00,$13,$03,$03,$23,$14,$27,$14,$00;			Voice 02
	even
