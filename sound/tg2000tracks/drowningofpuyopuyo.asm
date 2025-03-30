DrowningofPuyoPuyo_Header:
smpsHeaderStartSong = 1
		smpsHeaderVoice     DrowningofPuyoPuyo_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $26

	smpsHeaderDAC       DrowningofPuyoPuyo_DAC
	smpsHeaderFM        DrowningofPuyoPuyo_FM1,	$00, $0B
	smpsHeaderFM        DrowningofPuyoPuyo_FM2,	$00, $0D
	smpsHeaderFM        DrowningofPuyoPuyo_FM3,	$00, $09
	smpsHeaderFM        DrowningofPuyoPuyo_FM4,	$00, $00
	smpsHeaderFM        DrowningofPuyoPuyo_FM5,	$00, $00
	smpsHeaderPSG       DrowningofPuyoPuyo_PSG1,	$D0, $00, $00, $00
	smpsHeaderPSG       DrowningofPuyoPuyo_PSG2,	$D0, $00, $00, $00
	smpsHeaderPSG       DrowningofPuyoPuyo_PSG3,	$00, $00, $00, $00

; PSG1 Data
DrowningofPuyoPuyo_PSG1:

; PSG2 Data
DrowningofPuyoPuyo_PSG2:

; PSG3 Data
DrowningofPuyoPuyo_PSG3:
	smpsStop

; FM1 Data
DrowningofPuyoPuyo_FM1:
	smpsSetvoice	$00
	smpsAlterVol	$08
	smpsPan		panCentre,	$00
	dc.b		nG5,	$0C,	nRst,	nE5,	nRst,	$06,	nE5,	nRst
	dc.b		nG5,	nRst,	nG5,	nE5,	$0C,	nE5,	nAb5,	nRst
	dc.b		nF5,	nRst,	$06,	nF5,	nRst,	nAb5,	nRst,	nAb5
	dc.b		nF5,	$0C,	nF5,	nA5,	$0A,	nRst,	nFs5,	nRst
	dc.b		$05,	nFs5,	nRst,	nA5,	nRst,	nA5,	nFs5,	$0A
	dc.b		nFs5,	nBb5,	nRst,	nG5,	nRst,	$05,	nG5,	nRst
	dc.b		nBb5,	nRst,	nBb5,	nG5,	$0A,	nG5,	nB5,	$08
	dc.b		nRst,	nAb5,	nRst,	$04,	nAb5,	nRst,	nB5,	nRst
	dc.b		nB5,	nAb5,	$08,	nAb5,	nC6,	nRst,	nA5,	nRst
	dc.b		$04,	nA5,	nRst,	nC6,	nRst,	nC6,	nA5,	$08
	dc.b		nA5,	nCs6,	$06,	nRst,	nBb5,	nRst,	$03,	nBb5
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nBb5,	$06,	nBb5,	nD6
	dc.b		nRst,	nB5,	nRst,	$03,	nB5,	nRst,	nD6,	nRst
	dc.b		nD6,	nB5,	$06,	nB5,	nEb6,	$04,	nRst,	nC6
	dc.b		nRst,	$02,	nC6,	nRst,	nEb6,	nRst,	nEb6,	nC6
	dc.b		$04,	nC6,	nE6,	nRst,	nCs6,	nRst,	$02,	nCs6
	dc.b		nRst,	nE6,	nRst,	nE6,	nCs6,	$04,	nCs6,	nF6
	dc.b		nRst,	nD6,	nRst,	$02,	nD6,	nRst,	nF6,	nRst
	dc.b		nF6,	nD6,	$04,	nD6,	nFs6,	nRst,	nEb6,	nRst
	dc.b		$02,	nEb6,	nRst,	nFs6,	nRst,	nFs6,	nEb6,	$04
	dc.b		nEb6,	nC6,	$0C,	nRst,	$54
	smpsStop

; FM2 Data
DrowningofPuyoPuyo_FM2:
	smpsSetvoice	$01
	smpsAlterVol	$04
	smpsPan		panCentre,	$00
	dc.b		nC2,	$0C,	nC3,	nC2,	nC3,	nC2,	nC3,	nC2
	dc.b		nC3,	nCs2,	nCs3,	nCs2,	nCs3,	nCs2,	nCs3,	nCs2
	dc.b		nCs3,	nD2,	$0A,	nD3,	nD2,	nD3,	nD2,	nD3
	dc.b		nD2,	nD3,	nEb2,	nEb3,	nEb2,	nEb3,	nEb2,	nEb3
	dc.b		nEb2,	nEb3,	nE2,	$08,	nE3,	nE2,	nE3,	nE2
	dc.b		nE3,	nE2,	nE3,	nF2,	nF3,	nF2,	nF3,	nF2
	dc.b		nF3,	nF2,	nF3,	nFs2,	$06,	nFs3,	nFs2,	nFs3
	dc.b		nFs2,	nFs3,	nFs2,	nFs3,	nG2,	nG3,	nG2,	nG3
	dc.b		nG2,	nG3,	nG2,	nG3,	nAb2,	$04,	nAb3,	nAb2
	dc.b		nAb3,	nAb2,	nAb3,	nAb2,	nAb3,	nA2,	nA3,	nA2
	dc.b		nA3,	nA2,	nA3,	nA2,	nA3,	nBb2,	nBb3,	nBb2
	dc.b		nBb3,	nBb2,	nBb3,	nBb2,	nBb3,	nB2,	nB3,	nB2
	dc.b		nB3,	nB2,	nB3,	nB2,	nB3,	nC3,	$18,	nRst
	dc.b		$48
	smpsStop

; FM3 Data
DrowningofPuyoPuyo_FM3:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$11
	smpsSetvoice	$04
	smpsAlterVol	$10
	dc.b		nG5,	$0C,	nRst,	$06,	nE5,	nRst,	$12,	nG5
	dc.b		$01,	nRst,	$12,	nE5,	$06,	nRst,	$1D,	nAb5
	dc.b		$0C,	nRst,	$06,	nF5,	nRst,	$12,	nAb5,	$01
	dc.b		nRst,	$12,	nF5,	$06,	nRst,	$1A,	nA5,	$0A
	dc.b		nRst,	$05,	nFs5,	nRst,	$0F,	nA5,	$01,	nRst
	dc.b		$0F,	nFs5,	$05,	nRst,	$18,	nBb5,	$0A,	nRst
	dc.b		$05,	nG5,	nRst,	$0F,	nBb5,	$01,	nRst,	$0F
	dc.b		nG5,	$05,	nRst,	$15,	nB5,	$08,	nRst,	$04
	dc.b		nAb5,	nRst,	$0C,	nB5,	$01,	nRst,	$0C,	nAb5
	dc.b		$04,	nRst,	$13,	nC6,	$08,	nRst,	$04,	nA5
	dc.b		nRst,	$0C,	nC6,	$01,	nRst,	$0C,	nA5,	$04
	dc.b		nRst,	$10,	nCs6,	$06,	nRst,	$03,	nBb5,	nRst
	dc.b		$09,	nCs6,	$01,	nRst,	$09,	nBb5,	$03,	nRst
	dc.b		$0E,	nD6,	$06,	nRst,	$03,	nB5,	nRst,	$09
	dc.b		nD6,	$01,	nRst,	$09,	nB5,	$03,	nRst,	$0B
	dc.b		nEb6,	$04,	nRst,	$02,	nC6,	nRst,	$06,	nEb6
	dc.b		$01,	nRst,	$06,	nC6,	$02,	nRst,	$09,	nE6
	dc.b		$04,	nRst,	$02,	nCs6,	nRst,	$06,	nE6,	$01
	dc.b		nRst,	$06,	nCs6,	$02,	nRst,	$09,	nF6,	$04
	dc.b		nRst,	$02,	nD6,	nRst,	$06,	nF6,	$01,	nRst
	dc.b		$06,	nD6,	$02,	nRst,	$09,	nFs6,	$04,	nRst
	dc.b		$02,	nEb6,	nRst,	$06,	nFs6,	$01,	nRst,	$06
	dc.b		nEb6,	$02,	nRst,	$0F,	nC6,	$0C,	nRst,	$49
	smpsStop

; FM4 Data
DrowningofPuyoPuyo_FM4:
	smpsSetvoice	$02
	smpsAlterVol	$10
	smpsPan		panLeft,	$00
	dc.b		nFs2,	$06,	nRst,	nFs3,	nRst
	smpsPan		panCentre,	$00
	dc.b		nFs2,	nRst,	nFs3,	nRst
	smpsPan		panRight,	$00
	dc.b		nFs2,	nRst,	nFs3,	nRst
	smpsPan		panCentre,	$00
	dc.b		nFs2,	nRst,	nFs3,	nRst
	smpsPan		panLeft,	$00
	dc.b		nG2,	nRst,	nG3,	nRst
	smpsPan		panCentre,	$00
	dc.b		nG2,	nRst,	nG3,	nRst
	smpsPan		panRight,	$00
	dc.b		nG2,	nRst,	nG3,	nRst
	smpsPan		panCentre,	$00
	dc.b		nG2,	nRst,	nG3,	nRst
	smpsPan		panLeft,	$00
	dc.b		nAb2,	$05,	nRst,	nAb3,	nRst
	smpsPan		panCentre,	$00
	dc.b		nAb2,	nRst,	nAb3,	nRst
	smpsPan		panRight,	$00
	dc.b		nAb2,	nRst,	nAb3,	nRst
	smpsPan		panCentre,	$00
	dc.b		nAb2,	nRst,	nAb3,	nRst
	smpsPan		panLeft,	$00
	dc.b		nA2,	nRst,	nA3,	nRst
	smpsPan		panCentre,	$00
	dc.b		nA2,	nRst,	nA3,	nRst
	smpsPan		panRight,	$00
	dc.b		nA2,	nRst,	nA3,	nRst
	smpsPan		panCentre,	$00
	dc.b		nA2,	nRst,	nA3,	nRst
	smpsPan		panLeft,	$00
	dc.b		nBb2,	$04,	nRst,	nBb3,	nRst
	smpsPan		panCentre,	$00
	dc.b		nBb2,	nRst,	nBb3,	nRst
	smpsPan		panRight,	$00
	dc.b		nBb2,	nRst,	nBb3,	nRst
	smpsPan		panCentre,	$00
	dc.b		nBb2,	nRst,	nBb3,	nRst
	smpsPan		panLeft,	$00
	dc.b		nB2,	nRst,	nB3,	nRst
	smpsPan		panCentre,	$00
	dc.b		nB2,	nRst,	nB3,	nRst
	smpsPan		panRight,	$00
	dc.b		nB2,	nRst,	nB3,	nRst
	smpsPan		panCentre,	$00
	dc.b		nB2,	nRst,	nB3,	nRst
	smpsPan		panLeft,	$00
	dc.b		nC3,	$03,	nRst,	nC4,	nRst
	smpsPan		panCentre,	$00
	dc.b		nC3,	nRst,	nC4,	nRst
	smpsPan		panRight,	$00
	dc.b		nC3,	nRst,	nC4,	nRst
	smpsPan		panCentre,	$00
	dc.b		nC3,	nRst,	nC4,	nRst
	smpsPan		panLeft,	$00
	dc.b		nCs3,	nRst,	nCs4,	nRst
	smpsPan		panCentre,	$00
	dc.b		nCs3,	nRst,	nCs4,	nRst
	smpsPan		panRight,	$00
	dc.b		nCs3,	nRst,	nCs4,	nRst
	smpsPan		panCentre,	$00
	dc.b		nCs3,	nRst,	nCs4,	nRst
	smpsPan		panLeft,	$00
	dc.b		nD3,	$02,	nRst,	nD4,	nRst
	smpsPan		panCentre,	$00
	dc.b		nD3,	nRst,	nD4,	nRst
	smpsPan		panRight,	$00
	dc.b		nD3,	nRst,	nD4,	nRst
	smpsPan		panCentre,	$00
	dc.b		nD3,	nRst,	nD4,	nRst
	smpsPan		panLeft,	$00
	dc.b		nEb3,	nRst,	nEb4,	nRst
	smpsPan		panCentre,	$00
	dc.b		nEb3,	nRst,	nEb4,	nRst
	smpsPan		panRight,	$00
	dc.b		nEb3,	nRst,	nEb4,	nRst
	smpsPan		panCentre,	$00
	dc.b		nEb3,	nRst,	nEb4,	nRst
	smpsPan		panLeft,	$00
	dc.b		nE3,	nRst,	nE4,	nRst
	smpsPan		panCentre,	$00
	dc.b		nE3,	nRst,	nE4,	nRst
	smpsPan		panRight,	$00
	dc.b		nE3,	nRst,	nE4,	nRst
	smpsPan		panCentre,	$00
	dc.b		nE3,	nRst,	nE4,	nRst
	smpsPan		panLeft,	$00
	dc.b		nF3,	nRst,	nF4,	nRst
	smpsPan		panCentre,	$00
	dc.b		nF3,	nRst,	nF4,	nRst
	smpsPan		panRight,	$00
	dc.b		nF3,	nRst,	nF4,	nRst
	smpsPan		panCentre,	$00
	dc.b		nF3,	nRst,	nF4,	nRst,	$62
	smpsStop

; FM5 Data
DrowningofPuyoPuyo_FM5:
	smpsSetvoice	$03
	smpsAlterVol	$30
	smpsPan		panCentre,	$00
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	dc.b		nC5,	$05,	nCs5,	$01,	nCs5,	$05,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	dc.b		nC5,	$04,	nCs5,	$01,	nCs5,	$04,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	dc.b		nC5,	$03,	nCs5,	$01,	nCs5,	$03,	nCs5,	$01
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	dc.b		nC5,	$02,	nCs5,	$01,	nCs5,	$02,	nCs5,	$01
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	smpsAlterVol	$FF
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	dc.b		nC5,	nCs5,	nCs5,	nCs5,	nC5,	nCs5,	nCs5,	nCs5
	dc.b		nC5,	$18,	nRst,	$48
	smpsStop

; DAC Data
DrowningofPuyoPuyo_DAC:
	dc.b		dSnare,	$18,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare
	dc.b		dSnare,	dSnare,	$14,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare
	dc.b		dSnare,	dSnare,	dSnare,	$10,	dSnare,	dSnare,	dSnare,	dSnare
	dc.b		dSnare,	dSnare,	dSnare,	dSnare,	$0C,	dSnare,	dSnare,	dSnare
	dc.b		dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	$08,	dSnare,	dSnare
	dc.b		dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare
	dc.b		dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	$60
	smpsStop

DrowningofPuyoPuyo_Voices:
	dc.b		$3C,$31,$52,$50,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$1F,$0F,$1F,$0F,$1A,$00,$16,$00;			Voice 00
	dc.b		$18,$37,$30,$30,$31,$9E,$DC,$1C,$9C,$0D,$06,$04,$01,$08,$0A,$03
	dc.b		$05,$BF,$BF,$3F,$2F,$2C,$22,$14,$00;			Voice 01
	dc.b		$07,$34,$31,$54,$51,$14,$14,$14,$14,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$0F,$0F,$0F,$0F,$14,$04,$00,$14;			Voice 02
	dc.b		$2C,$52,$58,$34,$34,$1F,$12,$1F,$12,$00,$0A,$00,$0A,$00,$00,$00
	dc.b		$00,$0F,$1F,$0F,$1F,$15,$00,$14,$00;			Voice 03
	dc.b		$3C,$31,$52,$50,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$1F,$0F,$1F,$0F,$1A,$10,$21,$00;			Voice 04
	even
