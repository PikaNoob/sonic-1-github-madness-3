GoGoGadget_Header:
smpsHeaderStartSong = 1
		smpsHeaderVoice     GoGoGadget_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $26

	smpsHeaderDAC       GoGoGadget_DAC
	smpsHeaderFM        GoGoGadget_FM1,	$00, $0B
	smpsHeaderFM        GoGoGadget_FM2,	$00, $0D
	smpsHeaderFM        GoGoGadget_FM3,	$00, $09
	smpsHeaderFM        GoGoGadget_FM4,	$00, $00
	smpsHeaderFM        GoGoGadget_FM5,	$00, $00
	smpsHeaderPSG       GoGoGadget_PSG1,	$D0, $00, $00, $00
	smpsHeaderPSG       GoGoGadget_PSG2,	$D0, $00, $00, $00
	smpsHeaderPSG       GoGoGadget_PSG3,	$00, $00, $00, $00

; FM1 Data
GoGoGadget_FM1:
	smpsSetvoice	$00
	smpsAlterVol	$06
	smpsPan		panCentre,	$00
	dc.b		nA3,	$04,	nRst,	nB3,	nRst,	nC4,	nRst,	nD4
	dc.b		nRst,	nE4,	nRst,	$0C,	nC4,	$04,	nRst,	$0C
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nEb4,	$10,		nB3,	$04,	nRst,	$0C
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nD4,	$10,		nC4,	$04,	nRst,	$0C,	nA3
	dc.b		$04,	nRst,	nB3,	nRst,	nC4,	nRst,	nD4,	nRst
	dc.b		nE4,	nRst,	$0C,	nA4,	$04,	nRst,	$0C
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nAb4,	$34,	nRst,	$0C,		nA3,	$04,	nRst
	dc.b		nB3,	nRst,	nC4,	nRst,	nD4,	nRst,	nE4,	nRst
	dc.b		$0C,	nC4,	$04,	nRst,	$0C
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nEb4,	$10,		nB3,	$04,	nRst,	$0C
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nD4,	$10,		nC4,	$04,	nRst,	$0C
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA4,	$04,	nRst,	nAb4,	nRst,	nG4,	nRst,	nFs4
	dc.b		nRst
	smpsSetvoice	$04
	smpsAlterVol	$01
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nF4,	$20,	nRst,	nAb4
	smpsSetvoice	$00
	smpsAlterVol	$F7
	smpsPan		panCentre,	$00

	smpsJump	GoGoGadget_FM1

; FM2 Data
GoGoGadget_FM2:
	smpsSetvoice	$01
	smpsPan		panCentre,	$00
	dc.b		nA1,	$10,	nA2,	nA1,	nA2,	nG1,	nG2,	nG1
	dc.b		nG2,	nF1,	nF2,	nF1,	nF2,	nG1,	nG2,	nAb1
	dc.b		nAb2,	nA1,	nA2,	nA1,	nA2,	nG1,	nG2,	nG1
	dc.b		nG2,	nF1,	$40,	nE1,	$20,	nE1,	$08,	nF1
	dc.b		nG1,	nAb1
	smpsSetvoice	$00
	smpsPan		panCentre,	$00
	smpsJump	GoGoGadget_FM2

; FM3 Data
GoGoGadget_FM3:
	smpsSetvoice	$00
	smpsAlterVol	$06
	smpsPan		panCentre,	$00
	dc.b		nA4,	$04,	nRst,	nB4,	nRst,	nC5,	nRst,	nD5
	dc.b		nRst,	nE5,	nRst,	$0C,	nC5,	$04,	nRst,	$0C
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nEb5,	$10,		nB4,	$04,	nRst,	$0C
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nD5,	$10,		nC5,	$04,	nRst,	$0C,	nA4
	dc.b		$04,	nRst,	nB4,	nRst,	nC5,	nRst,	nD5,	nRst
	dc.b		nE5,	nRst,	$0C,	nA5,	$04,	nRst,	$0C
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nAb5,	$34,	nRst,	$0C,		nA4,	$04,	nRst
	dc.b		nB4,	nRst,	nC5,	nRst,	nD5,	nRst,	nE5,	nRst
	dc.b		$0C,	nC5,	$04,	nRst,	$0C
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nEb5,	$10,		nB4,	$04,	nRst,	$0C
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nD5,	$10,		nC5,	$04,	nRst,	$0C
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA3,	$04,	nRst,	nAb3,	nRst,	nG3,	nRst,	nFs3
	dc.b		nRst
	smpsSetvoice	$04
	smpsAlterVol	$01
	smpsModSet	$00,	$02,	$07,	$03
	dc.b		nF3,	$20,	nRst
	smpsSetvoice	$02
	smpsAlterVol	$03
	dc.b			nAb5
	smpsSetvoice	$00
	smpsAlterVol	$F4
	smpsPan		panCentre,	$00

	smpsJump	GoGoGadget_FM3

; FM4 Data
GoGoGadget_FM4:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$10
	smpsSetvoice	$02
	smpsAlterVol	$0D
	dc.b		nE4,	$0C,	nE4,	$04,	nRst,	$20,	nEb4,	nD4
	dc.b		nRst,	$10,	nE4,	$0C,	nE4,	$04,	nRst,	$20
	dc.b		nB3,	$10,	nRst,	nD4,	nRst,	$20,	nE4,	$0C
	dc.b		nE4,	$04,	nRst,	$20,	nEb4,	nD4,	nA3,	$40
	dc.b		nE3
	smpsSetvoice	$00
	smpsAlterVol	$F3
	smpsPan		panCentre,	$00
	smpsJump	GoGoGadget_FM4

; FM5 Data
GoGoGadget_FM5:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$10
	smpsSetvoice	$02
	smpsAlterVol	$0D
	dc.b		nA3,	$0C,	nA3,	$04,	nRst,	$20,	nC4,	nBb3
	dc.b		nRst,	$10,	nA3,	$0C,	nA3,	$04,	nRst,	$20
	dc.b		nAb3,	$10,	nRst,	nBb3,	nRst,	$20,	nA3,	$0C
	dc.b		nA3,	$04,	nRst,	$20,	nC4,	nBb3,	nF3,	$40
	dc.b		nAb3
	smpsSetvoice	$00
	smpsAlterVol	$F3
	smpsPan		panCentre,	$00
	smpsJump	GoGoGadget_FM5

; PSG1 Data
GoGoGadget_PSG1:
	dc.b		nA2,	$02
	smpsSetVol	$01
	dc.b		nA2,	$01
	smpsSetVol	$FF
	dc.b		nA2,	nRst,	$04,	nB2,	$02
	smpsSetVol	$01
	dc.b		nB2,	$01
	smpsSetVol	$FF
	dc.b		nB2,	nRst,	$04,	nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$FF
	dc.b		nC3,	nRst,	$04,	nD3,	$02
	smpsSetVol	$01
	dc.b		nD3,	$01
	smpsSetVol	$FF
	dc.b		nD3,	nRst,	$04,	nE3,	$02
	smpsSetVol	$01
	dc.b		nE3,	$01
	smpsSetVol	$FF
	dc.b		nE3,	nRst,	$0C,	nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$FF
	dc.b		nC3,	nRst,	$0C,	nEb3,	$02
	smpsSetVol	$01
	dc.b		nEb3,	$01
	smpsSetVol	$FF
	dc.b		nEb3
	smpsSetVol	$02
	dc.b		nEb3
	smpsSetVol	$FF
	dc.b		nEb3
	smpsSetVol	$02
	dc.b		nEb3
	smpsSetVol	$01
	dc.b		nEb3,	$02
	smpsSetVol	$FF
	dc.b		nEb3,	$01
	smpsSetVol	$02
	dc.b		nEb3
	smpsSetVol	$FF
	dc.b		nEb3
	smpsSetVol	$02
	dc.b		nEb3,	$02
	smpsSetVol	$FF
	dc.b		nEb3,	$01
	smpsSetVol	$02
	dc.b		nEb3
	smpsSetVol	$F9
	dc.b		nB2,	$02
	smpsSetVol	$01
	dc.b		nB2,	$01
	smpsSetVol	$FF
	dc.b		nB2,	nRst,	$0C,	nD3,	$02
	smpsSetVol	$01
	dc.b		nD3,	$01
	smpsSetVol	$FF
	dc.b		nD3
	smpsSetVol	$02
	dc.b		nD3
	smpsSetVol	$FF
	dc.b		nD3
	smpsSetVol	$02
	dc.b		nD3
	smpsSetVol	$01
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01
	smpsSetVol	$02
	dc.b		nD3
	smpsSetVol	$FF
	dc.b		nD3
	smpsSetVol	$02
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01
	smpsSetVol	$02
	dc.b		nD3
	smpsSetVol	$F9
	dc.b		nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$FF
	dc.b		nC3,	nRst,	$0C,	nA2,	$02
	smpsSetVol	$01
	dc.b		nA2,	$01
	smpsSetVol	$FF
	dc.b		nA2,	nRst,	$04,	nB2,	$02
	smpsSetVol	$01
	dc.b		nB2,	$01
	smpsSetVol	$FF
	dc.b		nB2,	nRst,	$04,	nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$FF
	dc.b		nC3,	nRst,	$04,	nD3,	$02
	smpsSetVol	$01
	dc.b		nD3,	$01
	smpsSetVol	$FF
	dc.b		nD3,	nRst,	$04,	nE3,	$02
	smpsSetVol	$01
	dc.b		nE3,	$01
	smpsSetVol	$FF
	dc.b		nE3,	nRst,	$0C,	nA3,	$02
	smpsSetVol	$01
	dc.b		nA3,	$01
	smpsSetVol	$FF
	dc.b		nA3,	nRst,	$0C,	nAb3,	$02
	smpsSetVol	$01
	dc.b		nAb3,	$01
	smpsSetVol	$FF
	dc.b		nAb3
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$FF
	dc.b		nAb3
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$01
	dc.b		nAb3,	$02
	smpsSetVol	$FF
	dc.b		nAb3,	$01
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$FF
	dc.b		nAb3
	smpsSetVol	$02
	dc.b		nAb3,	$02
	smpsSetVol	$FF
	dc.b		nAb3,	$01
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$F9
	smpsAlterNote	$01
	dc.b		nC1,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nC1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nC1
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nC1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nC1
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nC1
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nC1,	nRst,	$08
	smpsSetVol	$FC
	dc.b		nB0,	$02
	smpsSetVol	$01
	dc.b		nB0,	$01
	smpsSetVol	$FF
	dc.b		nB0
	smpsSetVol	$02
	dc.b		nB0
	smpsSetVol	$FF
	dc.b		nB0
	smpsSetVol	$02
	dc.b		nB0
	smpsSetVol	$01
	dc.b		nB0,	$02
	smpsSetVol	$FF
	dc.b		nB0,	$01
	smpsSetVol	$02
	dc.b		nB0
	smpsSetVol	$FF
	dc.b		nB0
	smpsSetVol	$02
	dc.b		nB0,	$02
	smpsSetVol	$FF
	dc.b		nB0,	$01
	smpsSetVol	$02
	dc.b		nB0
	smpsSetVol	$F9
	dc.b		nAb0,	$02
	smpsSetVol	$01
	dc.b		nAb0,	$01
	smpsSetVol	$FF
	dc.b		nAb0
	smpsSetVol	$02
	dc.b		nAb0
	smpsSetVol	$FF
	dc.b		nAb0
	smpsSetVol	$02
	dc.b		nAb0
	smpsSetVol	$01
	dc.b		nAb0,	$02
	smpsSetVol	$FF
	dc.b		nAb0,	$01
	smpsSetVol	$02
	dc.b		nAb0
	smpsSetVol	$FF
	dc.b		nAb0
	smpsSetVol	$02
	dc.b		nAb0,	$02
	smpsSetVol	$FF
	dc.b		nAb0,	$01
	smpsSetVol	$02
	dc.b		nAb0
	smpsSetVol	$F9
	smpsAlterNote	$00
	dc.b		nA2,	$02
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nA2,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA2,	nRst,	$04,	nB2,	$02
	smpsSetVol	$01
	dc.b		nB2,	$01
	smpsSetVol	$FF
	dc.b		nB2,	nRst,	$04,	nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$FF
	dc.b		nC3,	nRst,	$04,	nD3,	$02
	smpsSetVol	$01
	dc.b		nD3,	$01
	smpsSetVol	$FF
	dc.b		nD3,	nRst,	$04,	nE3,	$02
	smpsSetVol	$01
	dc.b		nE3,	$01
	smpsSetVol	$FF
	dc.b		nE3,	nRst,	$0C,	nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$FF
	dc.b		nC3,	nRst,	$0C,	nEb3,	$02
	smpsSetVol	$01
	dc.b		nEb3,	$01
	smpsSetVol	$FF
	dc.b		nEb3
	smpsSetVol	$02
	dc.b		nEb3
	smpsSetVol	$FF
	dc.b		nEb3
	smpsSetVol	$02
	dc.b		nEb3
	smpsSetVol	$01
	dc.b		nEb3,	$02
	smpsSetVol	$FF
	dc.b		nEb3,	$01
	smpsSetVol	$02
	dc.b		nEb3
	smpsSetVol	$FF
	dc.b		nEb3
	smpsSetVol	$02
	dc.b		nEb3,	$02
	smpsSetVol	$FF
	dc.b		nEb3,	$01
	smpsSetVol	$02
	dc.b		nEb3
	smpsSetVol	$F9
	dc.b		nB2,	$02
	smpsSetVol	$01
	dc.b		nB2,	$01
	smpsSetVol	$FF
	dc.b		nB2,	nRst,	$0C,	nD3,	$02
	smpsSetVol	$01
	dc.b		nD3,	$01
	smpsSetVol	$FF
	dc.b		nD3
	smpsSetVol	$02
	dc.b		nD3
	smpsSetVol	$FF
	dc.b		nD3
	smpsSetVol	$02
	dc.b		nD3
	smpsSetVol	$01
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01
	smpsSetVol	$02
	dc.b		nD3
	smpsSetVol	$FF
	dc.b		nD3
	smpsSetVol	$02
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01
	smpsSetVol	$02
	dc.b		nD3
	smpsSetVol	$F9
	dc.b		nC3,	$02
	smpsSetVol	$01
	dc.b		nC3,	$01
	smpsSetVol	$FF
	dc.b		nC3,	nRst,	$0C,	nA2,	$02
	smpsSetVol	$01
	dc.b		nA2,	$01
	smpsSetVol	$FF
	dc.b		nA2,	nRst,	$04,	nAb2,	$02
	smpsSetVol	$01
	dc.b		nAb2,	$01
	smpsSetVol	$FF
	dc.b		nAb2,	nRst,	$04,	nG2,	$02
	smpsSetVol	$01
	dc.b		nG2,	$01
	smpsSetVol	$FF
	dc.b		nG2,	nRst,	$04,	nFs2,	$02
	smpsSetVol	$01
	dc.b		nFs2,	$01
	smpsSetVol	$FF
	dc.b		nFs2,	nRst,	$04,	nF2,	$02
	smpsSetVol	$01
	dc.b		nF2,	$01
	smpsSetVol	$FF
	dc.b		nF2
	smpsSetVol	$02
	dc.b		nF2
	smpsSetVol	$FF
	dc.b		nF2
	smpsSetVol	$02
	dc.b		nF2
	smpsSetVol	$01
	dc.b		nF2,	$02
	smpsSetVol	$FF
	dc.b		nF2,	$01
	smpsSetVol	$02
	dc.b		nF2
	smpsSetVol	$FF
	dc.b		nF2
	smpsSetVol	$02
	dc.b		nF2,	$02
	smpsSetVol	$FF
	dc.b		nF2,	$01
	smpsSetVol	$02
	dc.b		nF2
	smpsSetVol	$FF
	dc.b		nF2
	smpsSetVol	$02
	dc.b		nF2
	smpsSetVol	$FF
	dc.b		nF2
	smpsSetVol	$02
	dc.b		nF2,	$02
	smpsSetVol	$FF
	dc.b		nF2,	$01
	smpsSetVol	$02
	dc.b		nF2
	smpsSetVol	$01
	dc.b		nF2,	$02
	smpsSetVol	$FF
	dc.b		nF2,	$01
	smpsSetVol	$02
	dc.b		nF2
	smpsSetVol	$FF
	dc.b		nF2
	smpsSetVol	$02
	dc.b		nF2
	smpsSetVol	$FF
	dc.b		nF2
	smpsSetVol	$02
	dc.b		nF2,	nRst,	$21
	smpsSetVol	$F2
	dc.b		nAb3,	$02
	smpsSetVol	$01
	dc.b		nAb3,	$01
	smpsSetVol	$FF
	dc.b		nAb3
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$FF
	dc.b		nAb3
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$01
	dc.b		nAb3,	$02
	smpsSetVol	$FF
	dc.b		nAb3,	$01
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$FF
	dc.b		nAb3
	smpsSetVol	$02
	dc.b		nAb3,	$02
	smpsSetVol	$FF
	dc.b		nAb3,	$01
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$FF
	dc.b		nAb3
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$FF
	dc.b		nAb3
	smpsSetVol	$02
	dc.b		nAb3,	$02
	smpsSetVol	$FF
	dc.b		nAb3,	$01
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$01
	dc.b		nAb3,	$02
	smpsSetVol	$FF
	dc.b		nAb3,	$01
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$FF
	dc.b		nAb3
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$FF
	dc.b		nAb3
	smpsSetVol	$02
	dc.b		nAb3,	nRst
	smpsSetVol	$F2
	smpsJump	GoGoGadget_PSG1

; PSG2 Data
GoGoGadget_PSG2:
	dc.b		nRst,	$08
	smpsSetVol	$06
	dc.b		nA2,	$01
	smpsSetVol	$01
	dc.b		nA2,	$02
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nRst,	$04,	nB2,	$01
	smpsSetVol	$01
	dc.b		nB2,	$02
	smpsSetVol	$FF
	dc.b		nB2,	$01,	nRst,	$04,	nC3,	$01
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nRst,	$04,	nD3,	$01
	smpsSetVol	$01
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01,	nRst,	$04,	nE3,	$01
	smpsSetVol	$01
	dc.b		nE3,	$02
	smpsSetVol	$FF
	dc.b		nE3,	$01,	nRst,	$0C,	nC3,	$01
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nRst,	$0C,	nEb3,	$01
	smpsSetVol	$01
	dc.b		nEb3,	$02
	smpsSetVol	$FF
	dc.b		nEb3,	$01
	smpsSetVol	$02
	dc.b		nEb3,	$02
	smpsSetVol	$FF
	dc.b		nEb3,	$01
	smpsSetVol	$02
	dc.b		nEb3,	$02
	smpsSetVol	$FF
	dc.b		nEb3,	$01
	smpsSetVol	$02
	dc.b		nEb3,	$02
	smpsSetVol	$FF
	dc.b		nEb3,	$01
	smpsSetVol	$02
	dc.b		nEb3,	$03
	smpsSetVol	$FB
	dc.b		nB2,	$01
	smpsSetVol	$01
	dc.b		nB2,	$02
	smpsSetVol	$FF
	dc.b		nB2,	$01,	nRst,	$0C,	nD3,	$01
	smpsSetVol	$01
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01
	smpsSetVol	$02
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01
	smpsSetVol	$02
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01
	smpsSetVol	$02
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01
	smpsSetVol	$02
	dc.b		nD3,	$03
	smpsSetVol	$FB
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nRst,	$0C,	nA2,	$01
	smpsSetVol	$01
	dc.b		nA2,	$02
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nRst,	$04,	nB2,	$01
	smpsSetVol	$01
	dc.b		nB2,	$02
	smpsSetVol	$FF
	dc.b		nB2,	$01,	nRst,	$04,	nC3,	$01
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nRst,	$04,	nD3,	$01
	smpsSetVol	$01
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01,	nRst,	$04,	nE3,	$01
	smpsSetVol	$01
	dc.b		nE3,	$02
	smpsSetVol	$FF
	dc.b		nE3,	$01,	nRst,	$0C,	nA3,	$01
	smpsSetVol	$01
	dc.b		nA3,	$02
	smpsSetVol	$FF
	dc.b		nA3,	$01,	nRst,	$0C,	nAb3,	$01
	smpsSetVol	$01
	dc.b		nAb3,	$02
	smpsSetVol	$FF
	dc.b		nAb3,	$01
	smpsSetVol	$02
	dc.b		nAb3,	$02
	smpsSetVol	$FF
	dc.b		nAb3,	$01
	smpsSetVol	$02
	dc.b		nAb3
	smpsSetVol	$F7
	dc.b		nC2,	$02
	smpsSetVol	$01
	dc.b		nC2,	$01
	smpsSetVol	$FF
	dc.b		nC2
	smpsSetVol	$02
	dc.b		nC2
	smpsSetVol	$FF
	dc.b		nC2
	smpsSetVol	$02
	dc.b		nC2
	smpsSetVol	$01
	dc.b		nC2,	nRst,	$08
	smpsSetVol	$FC
	smpsAlterNote	$01
	dc.b		nB1,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nB1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nB1
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nB1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nB1
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nB1
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nB1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nB1,	$01
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nB1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nB1
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nB1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nB1,	$01
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nB1
	smpsSetVol	$F9
	smpsAlterNote	$00
	dc.b		nAb1,	$02
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nAb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nAb1
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nAb1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nAb1
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nAb1
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nAb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nAb1,	$01
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nAb1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nAb1
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nAb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nAb1,	$01
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nAb1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nAb1
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nAb1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nAb1
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nAb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nAb1,	$01
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nAb1
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nAb1
	smpsSetVol	$FB
	dc.b		nA2
	smpsSetVol	$01
	dc.b		nA2,	$02
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nRst,	$04,	nB2,	$01
	smpsSetVol	$01
	dc.b		nB2,	$02
	smpsSetVol	$FF
	dc.b		nB2,	$01,	nRst,	$04,	nC3,	$01
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nRst,	$04,	nD3,	$01
	smpsSetVol	$01
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01,	nRst,	$04,	nE3,	$01
	smpsSetVol	$01
	dc.b		nE3,	$02
	smpsSetVol	$FF
	dc.b		nE3,	$01,	nRst,	$0C,	nC3,	$01
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nRst,	$0C,	nEb3,	$01
	smpsSetVol	$01
	dc.b		nEb3,	$02
	smpsSetVol	$FF
	dc.b		nEb3,	$01
	smpsSetVol	$02
	dc.b		nEb3,	$02
	smpsSetVol	$FF
	dc.b		nEb3,	$01
	smpsSetVol	$02
	dc.b		nEb3,	$02
	smpsSetVol	$FF
	dc.b		nEb3,	$01
	smpsSetVol	$02
	dc.b		nEb3,	$02
	smpsSetVol	$FF
	dc.b		nEb3,	$01
	smpsSetVol	$02
	dc.b		nEb3,	$03
	smpsSetVol	$FB
	dc.b		nB2,	$01
	smpsSetVol	$01
	dc.b		nB2,	$02
	smpsSetVol	$FF
	dc.b		nB2,	$01,	nRst,	$0C,	nD3,	$01
	smpsSetVol	$01
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01
	smpsSetVol	$02
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01
	smpsSetVol	$02
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01
	smpsSetVol	$02
	dc.b		nD3,	$02
	smpsSetVol	$FF
	dc.b		nD3,	$01
	smpsSetVol	$02
	dc.b		nD3,	$03
	smpsSetVol	$FB
	dc.b		nC3,	$01
	smpsSetVol	$01
	dc.b		nC3,	$02
	smpsSetVol	$FF
	dc.b		nC3,	$01,	nRst,	$0C,	nA2,	$01
	smpsSetVol	$01
	dc.b		nA2,	$02
	smpsSetVol	$FF
	dc.b		nA2,	$01,	nRst,	$04,	nAb2,	$01
	smpsSetVol	$01
	dc.b		nAb2,	$02
	smpsSetVol	$FF
	dc.b		nAb2,	$01,	nRst,	$04,	nG2,	$01
	smpsSetVol	$01
	dc.b		nG2,	$02
	smpsSetVol	$FF
	dc.b		nG2,	$01,	nRst,	$04,	nFs2,	$01
	smpsSetVol	$01
	dc.b		nFs2,	$02
	smpsSetVol	$FF
	dc.b		nFs2,	$01,	nRst,	$04,	nF2,	$01
	smpsSetVol	$01
	dc.b		nF2,	$02
	smpsSetVol	$FF
	dc.b		nF2,	$01
	smpsSetVol	$02
	dc.b		nF2,	$02
	smpsSetVol	$FF
	dc.b		nF2,	$01
	smpsSetVol	$02
	dc.b		nF2,	$02
	smpsSetVol	$FF
	dc.b		nF2,	$01
	smpsSetVol	$02
	dc.b		nF2,	$02
	smpsSetVol	$FF
	dc.b		nF2,	$01
	smpsSetVol	$02
	dc.b		nF2,	$03
	smpsSetVol	$FF
	dc.b		nF2,	$01
	smpsSetVol	$02
	dc.b		nF2
	smpsSetVol	$FF
	dc.b		nF2
	smpsSetVol	$02
	dc.b		nF2,	$02
	smpsSetVol	$FF
	dc.b		nF2,	$01
	smpsSetVol	$02
	dc.b		nF2
	smpsSetVol	$FF
	dc.b		nF2,	nRst,	$20
	smpsSetVol	$F3
	dc.b		nAb4,	$02
	smpsSetVol	$01
	dc.b		nAb4,	$01
	smpsSetVol	$FF
	dc.b		nAb4
	smpsSetVol	$02
	dc.b		nAb4
	smpsSetVol	$FF
	dc.b		nAb4
	smpsSetVol	$02
	dc.b		nAb4
	smpsSetVol	$01
	dc.b		nAb4,	$02
	smpsSetVol	$FF
	dc.b		nAb4,	$01
	smpsSetVol	$02
	dc.b		nAb4
	smpsSetVol	$FF
	dc.b		nAb4
	smpsSetVol	$02
	dc.b		nAb4,	$02
	smpsSetVol	$FF
	dc.b		nAb4,	$01
	smpsSetVol	$02
	dc.b		nAb4
	smpsSetVol	$FF
	dc.b		nAb4
	smpsSetVol	$02
	dc.b		nAb4
	smpsSetVol	$FF
	dc.b		nAb4
	smpsSetVol	$02
	dc.b		nAb4,	$02
	smpsSetVol	$FF
	dc.b		nAb4,	$01
	smpsSetVol	$02
	dc.b		nAb4
	smpsSetVol	$01
	dc.b		nAb4,	$02
	smpsSetVol	$FF
	dc.b		nAb4,	$01
	smpsSetVol	$02
	dc.b		nAb4
	smpsSetVol	$FF
	dc.b		nAb4
	smpsSetVol	$02
	dc.b		nAb4
	smpsSetVol	$FF
	dc.b		nAb4
	smpsSetVol	$02
	dc.b		nAb4,	nRst
	smpsSetVol	$F2
	smpsJump	GoGoGadget_PSG2

; PSG3 Data
GoGoGadget_PSG3:
	smpsSetVol	$01
	smpsPSGform	$E7
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
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
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$22,	nRst,	$20
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0C
	smpsSetVol	$FF
	smpsJump	GoGoGadget_PSG3

; DAC Data
GoGoGadget_DAC:
	dc.b		dKick,	dKick,	$04,	dKick,	$10,	dSnare,	dKick,	dKick
	dc.b		$20,	dSnare,	dKick,	$0C,	dKick,	$04,	dKick,	$10
	dc.b		dSnare,	dKick,	dKick,	dKick,	dSnare,	dSnare,	dKick,	$0C
	dc.b		dKick,	$04,	dKick,	$10,	dSnare,	dKick,	dKick,	$20
	dc.b		dSnare,	dKick,	$30,	dKick,	$10,	dKick,	$20,	dSnare
	dc.b		$10,	dSnare
	smpsJump	GoGoGadget_DAC

GoGoGadget_Voices:
	dc.b		$3A,$01,$01,$01,$02,$8D,$07,$07,$52,$09,$00,$00,$03,$01,$02,$02
	dc.b		$00,$5F,$0F,$0F,$2F,$18,$22,$18,$00;			Voice 00
	dc.b		$3A,$61,$3C,$14,$31,$9C,$DB,$9C,$DA,$04,$09,$04,$03,$03,$01,$03
	dc.b		$00,$1F,$0F,$0F,$AF,$21,$47,$31,$00;			Voice 01
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$00;			Voice 02
	dc.b		$3C,$31,$52,$50,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$1F,$0F,$1F,$0F,$1A,$00,$15,$01;			Voice 03
	dc.b		$3C,$31,$52,$50,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$1F,$0F,$1F,$0F,$1A,$00,$16,$00;			Voice 04
	even
