CurbYourEnthusiasm_Header:
smpsHeaderStartSong = 1
		smpsHeaderVoice     CurbYourEnthusiasm_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $26

	smpsHeaderDAC       CurbYourEnthusiasm_DAC
	smpsHeaderFM        CurbYourEnthusiasm_FM1,	$00, $0B
	smpsHeaderFM        CurbYourEnthusiasm_FM2,	$00, $0D
	smpsHeaderFM        CurbYourEnthusiasm_FM3,	$00, $09
	smpsHeaderFM        CurbYourEnthusiasm_FM4,	$00, $00
	smpsHeaderFM        CurbYourEnthusiasm_FM5,	$00, $00
	smpsHeaderPSG       CurbYourEnthusiasm_PSG1,	$D0, $00, $00, $00
	smpsHeaderPSG       CurbYourEnthusiasm_PSG2,	$D0, $00, $00, $00
	smpsHeaderPSG       CurbYourEnthusiasm_PSG3,	$00, $00, $00, $00

; PSG1 Data
CurbYourEnthusiasm_PSG1:

; PSG3 Data
CurbYourEnthusiasm_PSG3:

; DAC Data
CurbYourEnthusiasm_DAC:
	smpsStop

; FM1 Data
CurbYourEnthusiasm_FM1:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$05
	smpsSetvoice	$00
	smpsAlterVol	$7F
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$04
	smpsAlterVol	$91
	dc.b		smpsNoAttack,	nRst,	$60,	nB4,	$06,	nB4,	nB4,	nB4
	dc.b		nB4,	nRst,	$0C,	nBb4,	$06,	nA4,	nA4,	nA4
	dc.b		nA4,	nA4,	nRst,	$0C,	nAb4,	$06,	nB4,	$0C
	dc.b		nRst,	$06,	nAb4,	nA4,	nA4,	nA4,	nA4,	nA4
	dc.b		nRst,	$0C,	nAb4,	$06,	nA4,	nRst,	$0C,	nBb4
	dc.b		$06,	nB4,	nB4,	nB4,	nB4,	nB4,	nRst,	$0C
	dc.b		nBb4,	$06,	nA4,	nA4,	nA4,	nA4,	nA4,	nRst
	dc.b		$0C,	nBb4,	$06,	nB4,	nRst,	$5A,	nA4,	$06
	dc.b		nA4,	nA4,	nA4,	nA4,	nRst,	$0C,	nAb4,	$06
	dc.b		nG4,	nG4,	nG4,	nG4,	nG4,	nRst,	$0C,	nFs4
	dc.b		$06,	nA4,	$0C,	nRst,	$06,	nFs4,	nG4,	nG4
	dc.b		nG4,	nG4,	nG4,	nRst,	$0C,	nFs4,	$06,	nG4
	dc.b		nRst,	$0C,	nAb4,	$06,	nA4,	nA4,	nA4,	nA4
	dc.b		nA4,	nRst,	$0C,	nAb4,	$06,	nG4,	nG4,	nG4
	dc.b		nG4,	nG4,	nRst,	$0C,	nAb4,	$06,	nA4,	$0C
	dc.b		nRst,	$54,	nG4,	$06,	nG4,	nG4,	nG4,	nG4
	dc.b		nRst,	$0C,	nFs4,	$06,	nF4,	nF4,	nF4,	nF4
	dc.b		nF4,	nRst,	$0C,	nE4,	$06,	nG4,	$0C,	nRst
	dc.b		$06,	nE4,	nF4,	nF4,	nF4,	nF4,	nF4,	nRst
	dc.b		$0C,	nE4,	$06,	nF4,	nRst,	$0C,	nFs4,	$06
	dc.b		nG4,	nG4,	nG4,	nG4,	nG4,	nRst,	$0C,	nFs4
	dc.b		$06,	nF4,	nF4,	nF4,	nF4,	nF4,	nRst,	$0C
	dc.b		nFs4,	$06,	nG4,	$1E,	nRst,	$12,	nE5,	$06
	dc.b		nE5,	$0C,	nD5,	nC5,	$12,	nB4,	$06,	nB4
	dc.b		nB4,	$18,	nG4,	$3C,	nRst,	$30,	nG4,	$06
	dc.b		nG4,	$0C,	nC5,	nD5,	$12,	nB4,	$06,	nB4
	dc.b		nB4,	$18,	nG4,	$3C,	nRst,	$60,	nB4,	$06
	dc.b		nB4,	nB4,	nB4,	nB4,	nRst,	$0C,	nBb4,	$06
	dc.b		nA4,	nA4,	nA4,	nA4,	nA4,	nRst,	$0C,	nAb4
	dc.b		$06,	nB4,	$0C,	nRst,	$06,	nAb4,	nA4,	nA4
	dc.b		nA4,	nA4,	nA4,	nRst,	$0C,	nAb4,	$06,	nA4
	dc.b		nRst,	$0C,	nBb4,	$06,	nB4,	nB4,	nB4,	nB4
	dc.b		nB4,	nRst,	$0C,	nBb4,	$06,	nA4,	nA4,	nA4
	dc.b		nA4,	nA4,	nRst,	$0C,	nBb4,	$06,	nB4,	nRst
	dc.b		$5A,	nA4,	$06,	nA4,	nA4,	nA4,	nA4,	nRst
	dc.b		$0C,	nAb4,	$06,	nG4,	nG4,	nG4,	nG4,	nG4
	dc.b		nRst,	$0C,	nFs4,	$06,	nA4,	$0C,	nRst,	$06
	dc.b		nFs4,	nG4,	nG4,	nG4,	nG4,	nG4,	nRst,	$0C
	dc.b		nFs4,	$06,	nG4,	nRst,	$0C,	nAb4,	$06,	nA4
	dc.b		nA4,	nA4,	nA4,	nA4,	nRst,	$0C,	nAb4,	$06
	dc.b		nG4,	nG4,	nG4,	nG4,	nG4,	nRst,	$0C,	nAb4
	dc.b		$06,	nA4,	$0C,	nRst,	$54,	nG4,	$06,	nG4
	dc.b		nG4,	nG4,	nG4,	nRst,	$0C,	nFs4,	$06,	nF4
	dc.b		nF4,	nF4,	nF4,	nF4,	nRst,	$0C,	nE4,	$06
	dc.b		nG4,	$0C,	nRst,	$06,	nE4,	nF4,	nF4,	nF4
	dc.b		nF4,	nF4,	nRst,	$0C,	nE4,	$06,	nF4,	nRst
	dc.b		$0C,	nFs4,	$06,	nG4,	nG4,	nG4,	nG4,	nG4
	dc.b		nRst,	$0C,	nFs4,	$06,	nF4,	nF4,	nF4,	nF4
	dc.b		nF4,	nRst,	$0C,	nFs4,	$06,	nG4,	$1E,	nRst
	dc.b		$12,	nE5,	$06,	nE5,	$0C,	nD5,	nC5,	$12
	dc.b		nB4,	$06,	nB4,	nB4,	$18,	nG4,	$3C,	nRst
	dc.b		$30,	nG4,	$06,	nG4,	$0C,	nC5,	nD5,	$12
	dc.b		nB4,	$06,	nB4,	nB4,	$18,	nG4,	$3C,	nRst
	dc.b		$60,	nB4,	$06,	nB4,	nB4,	nB4,	nB4,	nRst
	dc.b		$0C,	nBb4,	$06,	nA4,	nA4,	nA4,	nA4,	nA4
	dc.b		nRst,	$0C,	nAb4,	$06,	nB4,	$0C,	nRst,	$06
	dc.b		nAb4,	nA4,	nA4,	nA4,	nA4,	nA4,	nRst,	$0C
	dc.b		nAb4,	$06,	nA4,	nRst,	$0C,	nBb4,	$06,	nB4
	dc.b		nB4,	nB4,	nB4,	nB4,	nRst,	$0C,	nBb4,	$06
	dc.b		nA4,	nA4,	nA4,	nA4,	nA4,	nRst,	$0C,	nBb4
	dc.b		$06,	nB4,	nRst,	$5A,	nA4,	$06,	nA4,	nA4
	dc.b		nA4,	nA4,	nRst,	$0C,	nAb4,	$06,	nG4,	nG4
	dc.b		nG4,	nG4,	nG4,	nRst,	$0C,	nFs4,	$06,	nA4
	dc.b		$0C,	nRst,	$06,	nFs4,	nG4,	nG4,	nG4,	nG4
	dc.b		nG4,	nRst,	$0C,	nFs4,	$06,	nG4,	nRst,	$0C
	dc.b		nAb4,	$06,	nA4,	nA4,	nA4,	nA4,	nA4,	nRst
	dc.b		$0C,	nAb4,	$06,	nG4,	nG4,	nG4,	nG4,	nG4
	dc.b		nRst,	$0C,	nAb4,	$06,	nA4,	$0C,	nRst,	$54
	dc.b		nG4,	$06,	nG4,	nG4,	nG4,	nG4,	nRst,	$0C
	dc.b		nFs4,	$06,	nF4,	nF4,	nF4,	nF4,	nF4,	nRst
	dc.b		$0C,	nE4,	$06,	nG4,	$0C,	nRst,	$06,	nE4
	dc.b		nF4,	nF4,	nF4,	nF4,	nF4,	nRst,	$0C,	nE4
	dc.b		$06,	nF4,	nRst,	$0C,	nFs4,	$06,	nG4,	nG4
	dc.b		nG4,	nG4,	nG4,	nRst,	$0C,	nFs4,	$06,	nF4
	dc.b		nF4,	nF4,	nF4,	nF4,	nRst,	$0C,	nFs4,	$06
	dc.b		nG4,	$1E,	nRst,	$12,	nE5,	$06,	nE5,	$0C
	dc.b		nD5,	nC5,	$12,	nB4,	$06,	nB4,	nB4,	$18
	dc.b		nG4,	$3C,	nRst,	$30,	nG4,	$06,	nG4,	$0C
	dc.b		nC5,	nD5,	$12,	nB4,	$06,	nB4,	nB4,	$18
	dc.b		nG4,	$3C,	nRst,	$60,	nB4,	$06,	nB4,	nB4
	dc.b		nB4,	nB4,	nRst,	$0C,	nBb4,	$06,	nA4,	nA4
	dc.b		nA4,	nA4,	nA4,	nRst,	$0C,	nAb4,	$06,	nB4
	dc.b		$0C,	nRst,	$06,	nAb4,	nA4,	nA4,	nA4,	nA4
	dc.b		nA4,	nRst,	$0C,	nAb4,	$06,	nA4,	nRst,	$0C
	dc.b		nBb4,	$06,	nB4,	nB4,	nB4,	nB4,	nB4,	nRst
	dc.b		$0C,	nBb4,	$06,	nA4,	nA4,	nA4,	nA4,	nA4
	dc.b		nRst,	$0C,	nBb4,	$06,	nB4,	nRst,	$5A,	nA4
	dc.b		$06,	nA4,	nA4,	nA4,	nA4,	nRst,	$0C,	nAb4
	dc.b		$06,	nG4,	nG4,	nG4,	nG4,	nG4,	nRst,	$0C
	dc.b		nFs4,	$06,	nA4,	$0C,	nRst,	$06,	nFs4,	nG4
	dc.b		nG4,	nG4,	nG4,	nG4,	nRst,	$0C,	nFs4,	$06
	dc.b		nG4,	nRst,	$0C,	nAb4,	$06,	nA4,	nA4,	nA4
	dc.b		nA4,	nA4,	nRst,	$0C,	nAb4,	$06,	nG4,	nG4
	dc.b		nG4,	nG4,	nG4,	nRst,	$0C,	nAb4,	$06,	nA4
	dc.b		$0C,	nRst,	$54,	nG4,	$06,	nG4,	nG4,	nG4
	dc.b		nG4,	nRst,	$0C,	nFs4,	$06,	nF4,	nF4,	nF4
	dc.b		nF4,	nF4,	nRst,	$0C,	nE4,	$06,	nG4,	$0C
	dc.b		nRst,	$06,	nE4,	nF4,	nF4,	nF4,	nF4,	nF4
	dc.b		nRst,	$0C,	nE4,	$06,	nF4,	nRst,	$0C,	nFs4
	dc.b		$06,	nG4,	nG4,	nG4,	nG4,	nG4,	nRst,	$0C
	dc.b		nFs4,	$06,	nF4,	nF4,	nF4,	nF4,	nF4,	nRst
	dc.b		$0C,	nFs4,	$06,	nG4,	$1E,	nRst,	$12,	nE5
	dc.b		$06,	nE5,	$0C,	nD5,	nC5,	$12,	nB4,	$06
	dc.b		nB4,	nB4,	$18,	nG4,	$3C,	nRst,	$30,	nG4
	dc.b		$06,	nG4,	$0C,	nC5,	nD5,	$12,	nB4,	$06
	dc.b		nB4,	nB4,	$18,	nG4,	$3C,	nRst,	$0D
	smpsStop

; FM2 Data
CurbYourEnthusiasm_FM2:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$05
	smpsSetvoice	$01
	smpsAlterVol	$7F
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$05
	smpsAlterVol	$91
	dc.b		smpsNoAttack,	nRst,	$18,	nG2,	nA2,	nB2,	nC3,	$30
	dc.b		nG2,	nC3,	nG2,	$18,	nC3,	nB2,	$30,	nFs2
	dc.b		nB2,	$18,	nRst,	nFs2,	$30,	nBb2,	nF2,	nBb2
	dc.b		nF2,	$18,	nBb2,	nA2,	$30,	nE2,	nA2,	$60
	dc.b		nAb2,	$30,	nEb2,	nAb2,	nEb2,	$18,	nAb2,	nG2
	dc.b		$30,	nD2,	nG2,	nG2,	nC3,	nG2,	nD3,	nG2
	dc.b		nC3,	nG2,	nD3,	$18,	nG2,	nA2,	nB2,	nC3
	dc.b		$30,	nG2,	nC3,	nG2,	$18,	nC3,	nB2,	$30
	dc.b		nFs2,	nB2,	$18,	nRst,	nFs2,	$30,	nBb2,	nF2
	dc.b		nBb2,	nF2,	$18,	nBb2,	nA2,	$30,	nE2,	nA2
	dc.b		$60,	nAb2,	$30,	nEb2,	nAb2,	nEb2,	$18,	nAb2
	dc.b		nG2,	$30,	nD2,	nG2,	nG2,	nC3,	nG2,	nD3
	dc.b		nG2,	nC3,	nG2,	nD3,	$18,	nG2,	nA2,	nB2
	dc.b		nC3,	$30,	nG2,	nC3,	nG2,	$18,	nC3,	nB2
	dc.b		$30,	nFs2,	nB2,	$18,	nRst,	nFs2,	$30,	nBb2
	dc.b		nF2,	nBb2,	nF2,	$18,	nBb2,	nA2,	$30,	nE2
	dc.b		nA2,	$60,	nAb2,	$30,	nEb2,	nAb2,	nEb2,	$18
	dc.b		nAb2,	nG2,	$30,	nD2,	nG2,	nG2,	nC3,	nG2
	dc.b		nD3,	nG2,	nC3,	nG2,	nD3,	$18,	nG2,	nA2
	dc.b		nB2,	nC3,	$30,	nG2,	nC3,	nG2,	$18,	nC3
	dc.b		nB2,	$30,	nFs2,	nB2,	$18,	nRst,	nFs2,	$30
	dc.b		nBb2,	nF2,	nBb2,	nF2,	$18,	nBb2,	nA2,	$30
	dc.b		nE2,	nA2,	$60,	nAb2,	$30,	nEb2,	nAb2,	nEb2
	dc.b		$18,	nAb2,	nG2,	$30,	nD2,	nG2,	nG2,	nC3
	dc.b		nG2,	nD3,	nG2,	nC3,	nG2,	nD3,	$0D
	smpsStop

; FM3 Data
CurbYourEnthusiasm_FM3:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$05
	smpsSetvoice	$02
	smpsAlterVol	$7F
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$06
	smpsAlterVol	$91
	dc.b		smpsNoAttack,	nRst,	$18,	nG3,	$06,	nRst,	$12,	nA3
	dc.b		$06,	nRst,	$12,	nB3,	$06,	nRst,	$12,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$18,	nC4,	nB3,	$06
	dc.b		nRst,	$2A,	nFs3,	$06,	nRst,	$2A,	nB3,	$06
	dc.b		nRst,	$2A,	nB2,	$18,	nRst,	nBb3,	$06,	nRst
	dc.b		$2A,	nF3,	$06,	nRst,	$2A,	nBb3,	$06,	nRst
	dc.b		$2A,	nF3,	$18,	nBb3,	nA3,	$06,	nRst,	$2A
	dc.b		nE3,	$06,	nRst,	$2A,	nA2,	$0C,	nRst,	$06
	dc.b		nA2,	nCs3,	nRst,	nE3,	nRst,	nA3,	$18,	nRst
	dc.b		nAb3,	$06,	nRst,	$2A,	nEb3,	$06,	nRst,	$2A
	dc.b		nAb3,	$06,	nRst,	$2A,	nEb3,	$18,	nAb3,	nG3
	dc.b		$06,	nRst,	$2A,	nD3,	$06,	nRst,	$2A,	nG3
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nD4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nD4
	dc.b		$06,	nRst,	$12,	nG3,	$06,	nRst,	$12,	nA3
	dc.b		$06,	nRst,	$12,	nB3,	$06,	nRst,	$12,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$18,	nC4,	nB3,	$06
	dc.b		nRst,	$2A,	nFs3,	$06,	nRst,	$2A,	nB3,	$06
	dc.b		nRst,	$2A,	nB2,	$18,	nRst,	nBb3,	$06,	nRst
	dc.b		$2A,	nF3,	$06,	nRst,	$2A,	nBb3,	$06,	nRst
	dc.b		$2A,	nF3,	$18,	nBb3,	nA3,	$06,	nRst,	$2A
	dc.b		nE3,	$06,	nRst,	$2A,	nA2,	$0C,	nRst,	$06
	dc.b		nA2,	nCs3,	nRst,	nE3,	nRst,	nA3,	$18,	nRst
	dc.b		nAb3,	$06,	nRst,	$2A,	nEb3,	$06,	nRst,	$2A
	dc.b		nAb3,	$06,	nRst,	$2A,	nEb3,	$18,	nAb3,	nG3
	dc.b		$06,	nRst,	$2A,	nD3,	$06,	nRst,	$2A,	nG3
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nD4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nD4
	dc.b		$06,	nRst,	$12,	nG3,	$06,	nRst,	$12,	nA3
	dc.b		$06,	nRst,	$12,	nB3,	$06,	nRst,	$12,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$18,	nC4,	nB3,	$06
	dc.b		nRst,	$2A,	nFs3,	$06,	nRst,	$2A,	nB3,	$06
	dc.b		nRst,	$2A,	nB2,	$18,	nRst,	nBb3,	$06,	nRst
	dc.b		$2A,	nF3,	$06,	nRst,	$2A,	nBb3,	$06,	nRst
	dc.b		$2A,	nF3,	$18,	nBb3,	nA3,	$06,	nRst,	$2A
	dc.b		nE3,	$06,	nRst,	$2A,	nA2,	$0C,	nRst,	$06
	dc.b		nA2,	nCs3,	nRst,	nE3,	nRst,	nA3,	$18,	nRst
	dc.b		nAb3,	$06,	nRst,	$2A,	nEb3,	$06,	nRst,	$2A
	dc.b		nAb3,	$06,	nRst,	$2A,	nEb3,	$18,	nAb3,	nG3
	dc.b		$06,	nRst,	$2A,	nD3,	$06,	nRst,	$2A,	nG3
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nD4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nD4
	dc.b		$06,	nRst,	$12,	nG3,	$06,	nRst,	$12,	nA3
	dc.b		$06,	nRst,	$12,	nB3,	$06,	nRst,	$12,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$18,	nC4,	nB3,	$06
	dc.b		nRst,	$2A,	nFs3,	$06,	nRst,	$2A,	nB3,	$06
	dc.b		nRst,	$2A,	nB2,	$18,	nRst,	nBb3,	$06,	nRst
	dc.b		$2A,	nF3,	$06,	nRst,	$2A,	nBb3,	$06,	nRst
	dc.b		$2A,	nF3,	$18,	nBb3,	nA3,	$06,	nRst,	$2A
	dc.b		nE3,	$06,	nRst,	$2A,	nA2,	$0C,	nRst,	$06
	dc.b		nA2,	nCs3,	nRst,	nE3,	nRst,	nA3,	$18,	nRst
	dc.b		nAb3,	$06,	nRst,	$2A,	nEb3,	$06,	nRst,	$2A
	dc.b		nAb3,	$06,	nRst,	$2A,	nEb3,	$18,	nAb3,	nG3
	dc.b		$06,	nRst,	$2A,	nD3,	$06,	nRst,	$2A,	nG3
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nD4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nG3,	$06,	nRst,	$2A,	nD4
	dc.b		$06,	nRst,	$07
	smpsStop

; FM4 Data
CurbYourEnthusiasm_FM4:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$05
	smpsSetvoice	$02
	smpsAlterVol	$7F
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$07
	smpsAlterVol	$91
	dc.b		smpsNoAttack,	nRst,	$78,	nG4,	$06,	nRst,	$2A,	nG4
	dc.b		$06,	nRst,	$2A,	nG4,	$06,	nRst,	$2A,	nG4
	dc.b		$06,	nRst,	$2A,	nFs4,	$06,	nRst,	$2A,	nFs4
	dc.b		$06,	nRst,	$7F,	$0B,	nF4,	$06,	nRst,	$2A
	dc.b		nF4,	$06,	nRst,	$2A,	nF4,	$06,	nRst,	$2A
	dc.b		nF4,	$06,	nRst,	$2A,	nE4,	$06,	nRst,	$2A
	dc.b		nE4,	$06,	nRst,	$7F,	$0B,	nEb4,	$06,	nRst
	dc.b		$2A,	nEb4,	$06,	nRst,	$2A,	nEb4,	$06,	nRst
	dc.b		$2A,	nEb4,	$06,	nRst,	$2A,	nD4,	$06,	nRst
	dc.b		$2A,	nD4,	$06,	nRst,	$2A,	nD4,	$06,	nRst
	dc.b		$2A,	nD4,	$06,	nRst,	$2A,	nC4,	$06,	nRst
	dc.b		$2A,	nC4,	$06,	nRst,	$2A,	nD4,	$06,	nRst
	dc.b		$2A,	nD4,	$06,	nRst,	$2A,	nC4,	$06,	nRst
	dc.b		$2A,	nC4,	$06,	nRst,	$7F,	$0B,	nG4,	$06
	dc.b		nRst,	$2A,	nG4,	$06,	nRst,	$2A,	nG4,	$06
	dc.b		nRst,	$2A,	nG4,	$06,	nRst,	$2A,	nFs4,	$06
	dc.b		nRst,	$2A,	nFs4,	$06,	nRst,	$7F,	$0B,	nF4
	dc.b		$06,	nRst,	$2A,	nF4,	$06,	nRst,	$2A,	nF4
	dc.b		$06,	nRst,	$2A,	nF4,	$06,	nRst,	$2A,	nE4
	dc.b		$06,	nRst,	$2A,	nE4,	$06,	nRst,	$7F,	$0B
	dc.b		nEb4,	$06,	nRst,	$2A,	nEb4,	$06,	nRst,	$2A
	dc.b		nEb4,	$06,	nRst,	$2A,	nEb4,	$06,	nRst,	$2A
	dc.b		nD4,	$06,	nRst,	$2A,	nD4,	$06,	nRst,	$2A
	dc.b		nD4,	$06,	nRst,	$2A,	nD4,	$06,	nRst,	$2A
	dc.b		nC4,	$06,	nRst,	$2A,	nC4,	$06,	nRst,	$2A
	dc.b		nD4,	$06,	nRst,	$2A,	nD4,	$06,	nRst,	$2A
	dc.b		nC4,	$06,	nRst,	$2A,	nC4,	$06,	nRst,	$7F
	dc.b		$0B,	nG4,	$06,	nRst,	$2A,	nG4,	$06,	nRst
	dc.b		$2A,	nG4,	$06,	nRst,	$2A,	nG4,	$06,	nRst
	dc.b		$2A,	nFs4,	$06,	nRst,	$2A,	nFs4,	$06,	nRst
	dc.b		$7F,	$0B,	nF4,	$06,	nRst,	$2A,	nF4,	$06
	dc.b		nRst,	$2A,	nF4,	$06,	nRst,	$2A,	nF4,	$06
	dc.b		nRst,	$2A,	nE4,	$06,	nRst,	$2A,	nE4,	$06
	dc.b		nRst,	$7F,	$0B,	nEb4,	$06,	nRst,	$2A,	nEb4
	dc.b		$06,	nRst,	$2A,	nEb4,	$06,	nRst,	$2A,	nEb4
	dc.b		$06,	nRst,	$2A,	nD4,	$06,	nRst,	$2A,	nD4
	dc.b		$06,	nRst,	$2A,	nD4,	$06,	nRst,	$2A,	nD4
	dc.b		$06,	nRst,	$2A,	nC4,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nD4,	$06,	nRst,	$2A,	nD4
	dc.b		$06,	nRst,	$2A,	nC4,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$7F,	$0B,	nG4,	$06,	nRst,	$2A
	dc.b		nG4,	$06,	nRst,	$2A,	nG4,	$06,	nRst,	$2A
	dc.b		nG4,	$06,	nRst,	$2A,	nFs4,	$06,	nRst,	$2A
	dc.b		nFs4,	$06,	nRst,	$7F,	$0B,	nF4,	$06,	nRst
	dc.b		$2A,	nF4,	$06,	nRst,	$2A,	nF4,	$06,	nRst
	dc.b		$2A,	nF4,	$06,	nRst,	$2A,	nE4,	$06,	nRst
	dc.b		$2A,	nE4,	$06,	nRst,	$7F,	$0B,	nEb4,	$06
	dc.b		nRst,	$2A,	nEb4,	$06,	nRst,	$2A,	nEb4,	$06
	dc.b		nRst,	$2A,	nEb4,	$06,	nRst,	$2A,	nD4,	$06
	dc.b		nRst,	$2A,	nD4,	$06,	nRst,	$2A,	nD4,	$06
	dc.b		nRst,	$2A,	nD4,	$06,	nRst,	$2A,	nC4,	$06
	dc.b		nRst,	$2A,	nC4,	$06,	nRst,	$2A,	nD4,	$06
	dc.b		nRst,	$2A,	nD4,	$06,	nRst,	$2A,	nC4,	$06
	dc.b		nRst,	$2A,	nC4,	$06,	nRst,	$1F
	smpsStop

; FM5 Data
CurbYourEnthusiasm_FM5:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$05
	smpsSetvoice	$03
	smpsAlterVol	$7F
	dc.b		smpsNoAttack,	nRst,	$01
	smpsSetvoice	$07
	smpsAlterVol	$91
	dc.b		smpsNoAttack,	nRst,	$78,	nE4,	$06,	nRst,	$2A,	nE4
	dc.b		$06,	nRst,	$2A,	nE4,	$06,	nRst,	$2A,	nE4
	dc.b		$06,	nRst,	$2A,	nEb4,	$06,	nRst,	$2A,	nEb4
	dc.b		$06,	nRst,	$7F,	$0B,	nD4,	$06,	nRst,	$2A
	dc.b		nD4,	$06,	nRst,	$2A,	nD4,	$06,	nRst,	$2A
	dc.b		nD4,	$06,	nRst,	$2A,	nCs4,	$06,	nRst,	$2A
	dc.b		nCs4,	$06,	nRst,	$7F,	$0B,	nC4,	$06,	nRst
	dc.b		$2A,	nC4,	$06,	nRst,	$2A,	nC4,	$06,	nRst
	dc.b		$2A,	nC4,	$06,	nRst,	$2A,	nB3,	$06,	nRst
	dc.b		$2A,	nB3,	$06,	nRst,	$2A,	nB3,	$06,	nRst
	dc.b		$2A,	nB3,	$06,	nRst,	$2A,	nA3,	$06,	nRst
	dc.b		$2A,	nA3,	$06,	nRst,	$2A,	nB3,	$06,	nRst
	dc.b		$2A,	nB3,	$06,	nRst,	$2A,	nA3,	$06,	nRst
	dc.b		$2A,	nA3,	$06,	nRst,	$7F,	$0B,	nE4,	$06
	dc.b		nRst,	$2A,	nE4,	$06,	nRst,	$2A,	nE4,	$06
	dc.b		nRst,	$2A,	nE4,	$06,	nRst,	$2A,	nEb4,	$06
	dc.b		nRst,	$2A,	nEb4,	$06,	nRst,	$7F,	$0B,	nD4
	dc.b		$06,	nRst,	$2A,	nD4,	$06,	nRst,	$2A,	nD4
	dc.b		$06,	nRst,	$2A,	nD4,	$06,	nRst,	$2A,	nCs4
	dc.b		$06,	nRst,	$2A,	nCs4,	$06,	nRst,	$7F,	$0B
	dc.b		nC4,	$06,	nRst,	$2A,	nC4,	$06,	nRst,	$2A
	dc.b		nC4,	$06,	nRst,	$2A,	nC4,	$06,	nRst,	$2A
	dc.b		nB3,	$06,	nRst,	$2A,	nB3,	$06,	nRst,	$2A
	dc.b		nB3,	$06,	nRst,	$2A,	nB3,	$06,	nRst,	$2A
	dc.b		nA3,	$06,	nRst,	$2A,	nA3,	$06,	nRst,	$2A
	dc.b		nB3,	$06,	nRst,	$2A,	nB3,	$06,	nRst,	$2A
	dc.b		nA3,	$06,	nRst,	$2A,	nA3,	$06,	nRst,	$7F
	dc.b		$0B,	nE4,	$06,	nRst,	$2A,	nE4,	$06,	nRst
	dc.b		$2A,	nE4,	$06,	nRst,	$2A,	nE4,	$06,	nRst
	dc.b		$2A,	nEb4,	$06,	nRst,	$2A,	nEb4,	$06,	nRst
	dc.b		$7F,	$0B,	nD4,	$06,	nRst,	$2A,	nD4,	$06
	dc.b		nRst,	$2A,	nD4,	$06,	nRst,	$2A,	nD4,	$06
	dc.b		nRst,	$2A,	nCs4,	$06,	nRst,	$2A,	nCs4,	$06
	dc.b		nRst,	$7F,	$0B,	nC4,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nC4,	$06,	nRst,	$2A,	nC4
	dc.b		$06,	nRst,	$2A,	nB3,	$06,	nRst,	$2A,	nB3
	dc.b		$06,	nRst,	$2A,	nB3,	$06,	nRst,	$2A,	nB3
	dc.b		$06,	nRst,	$2A,	nA3,	$06,	nRst,	$2A,	nA3
	dc.b		$06,	nRst,	$2A,	nB3,	$06,	nRst,	$2A,	nB3
	dc.b		$06,	nRst,	$2A,	nA3,	$06,	nRst,	$2A,	nA3
	dc.b		$06,	nRst,	$7F,	$0B,	nE4,	$06,	nRst,	$2A
	dc.b		nE4,	$06,	nRst,	$2A,	nE4,	$06,	nRst,	$2A
	dc.b		nE4,	$06,	nRst,	$2A,	nEb4,	$06,	nRst,	$2A
	dc.b		nEb4,	$06,	nRst,	$7F,	$0B,	nD4,	$06,	nRst
	dc.b		$2A,	nD4,	$06,	nRst,	$2A,	nD4,	$06,	nRst
	dc.b		$2A,	nD4,	$06,	nRst,	$2A,	nCs4,	$06,	nRst
	dc.b		$2A,	nCs4,	$06,	nRst,	$7F,	$0B,	nC4,	$06
	dc.b		nRst,	$2A,	nC4,	$06,	nRst,	$2A,	nC4,	$06
	dc.b		nRst,	$2A,	nC4,	$06,	nRst,	$2A,	nB3,	$06
	dc.b		nRst,	$2A,	nB3,	$06,	nRst,	$2A,	nB3,	$06
	dc.b		nRst,	$2A,	nB3,	$06,	nRst,	$2A,	nA3,	$06
	dc.b		nRst,	$2A,	nA3,	$06,	nRst,	$2A,	nB3,	$06
	dc.b		nRst,	$2A,	nB3,	$06,	nRst,	$2A,	nA3,	$06
	dc.b		nRst,	$2A,	nA3,	$06,	nRst,	$1F
	smpsStop

; PSG2 Data
CurbYourEnthusiasm_PSG2:
	dc.b		nRst,	$66
	smpsSetVol	$05
	dc.b		nB2,	$1E,	nRst,	$0C,	nBb2,	$06,	nA2,	$1E
	dc.b		nRst,	$0C,	nAb2,	$06,	nB2,	$0C,	nRst,	$06
	dc.b		nAb2,	nA2,	$1E,	nRst,	$0C,	nAb2,	$06,	nA2
	dc.b		nRst,	$0C,	nBb2,	$06,	nB2,	$1E,	nRst,	$0C
	dc.b		nBb2,	$06,	nA2,	$1E,	nRst,	$0C,	nBb2,	$06
	dc.b		nB2,	nRst,	$5A,	nA2,	$1E,	nRst,	$0C,	nAb2
	dc.b		$06,	nG2,	$1E,	nRst,	$0C,	nFs2,	$06,	nA2
	dc.b		$0C,	nRst,	$06,	nFs2,	nG2,	$1E,	nRst,	$0C
	dc.b		nFs2,	$06,	nG2,	nRst,	$0C,	nAb2,	$06,	nA2
	dc.b		$1E,	nRst,	$0C,	nAb2,	$06,	nG2,	$1E,	nRst
	dc.b		$0C,	nAb2,	$06,	nA2,	$0C,	nRst,	$54,	nG2
	dc.b		$1E,	nRst,	$0C,	nFs2,	$06,	nF2,	$1E,	nRst
	dc.b		$0C,	nE2,	$06,	nG2,	$0C,	nRst,	$06,	nE2
	dc.b		nF2,	$1E,	nRst,	$0C,	nE2,	$06,	nF2,	nRst
	dc.b		$0C,	nFs2,	$06,	nG2,	$1E,	nRst,	$0C,	nFs2
	dc.b		$06,	nF2,	$1E,	nRst,	$0C,	nFs2,	$06,	nG2
	dc.b		$1E,	nRst,	$12,	nE3,	nD3,	$0C,	nC3,	$12
	dc.b		nB2,	$24,	nG2,	$3C,	nRst,	$30,	nG2,	$12
	dc.b		nC3,	$0C,	nD3,	$12,	nB2,	$24,	nG2,	$3C
	dc.b		nRst,	$60,	nB2,	$1E,	nRst,	$0C,	nBb2,	$06
	dc.b		nA2,	$1E,	nRst,	$0C,	nAb2,	$06,	nB2,	$0C
	dc.b		nRst,	$06,	nAb2,	nA2,	$1E,	nRst,	$0C,	nAb2
	dc.b		$06,	nA2,	nRst,	$0C,	nBb2,	$06,	nB2,	$1E
	dc.b		nRst,	$0C,	nBb2,	$06,	nA2,	$1E,	nRst,	$0C
	dc.b		nBb2,	$06,	nB2,	nRst,	$5A,	nA2,	$1E,	nRst
	dc.b		$0C,	nAb2,	$06,	nG2,	$1E,	nRst,	$0C,	nFs2
	dc.b		$06,	nA2,	$0C,	nRst,	$06,	nFs2,	nG2,	$1E
	dc.b		nRst,	$0C,	nFs2,	$06,	nG2,	nRst,	$0C,	nAb2
	dc.b		$06,	nA2,	$1E,	nRst,	$0C,	nAb2,	$06,	nG2
	dc.b		$1E,	nRst,	$0C,	nAb2,	$06,	nA2,	$0C,	nRst
	dc.b		$54,	nG2,	$1E,	nRst,	$0C,	nFs2,	$06,	nF2
	dc.b		$1E,	nRst,	$0C,	nE2,	$06,	nG2,	$0C,	nRst
	dc.b		$06,	nE2,	nF2,	$1E,	nRst,	$0C,	nE2,	$06
	dc.b		nF2,	nRst,	$0C,	nFs2,	$06,	nG2,	$1E,	nRst
	dc.b		$0C,	nFs2,	$06,	nF2,	$1E,	nRst,	$0C,	nFs2
	dc.b		$06,	nG2,	$1E,	nRst,	$12,	nE3,	nD3,	$0C
	dc.b		nC3,	$12,	nB2,	$24,	nG2,	$3C,	nRst,	$30
	dc.b		nG2,	$12,	nC3,	$0C,	nD3,	$12,	nB2,	$24
	dc.b		nG2,	$3C,	nRst,	$60,	nB2,	$1E,	nRst,	$0C
	dc.b		nBb2,	$06,	nA2,	$1E,	nRst,	$0C,	nAb2,	$06
	dc.b		nB2,	$0C,	nRst,	$06,	nAb2,	nA2,	$1E,	nRst
	dc.b		$0C,	nAb2,	$06,	nA2,	nRst,	$0C,	nBb2,	$06
	dc.b		nB2,	$1E,	nRst,	$0C,	nBb2,	$06,	nA2,	$1E
	dc.b		nRst,	$0C,	nBb2,	$06,	nB2,	nRst,	$5A,	nA2
	dc.b		$1E,	nRst,	$0C,	nAb2,	$06,	nG2,	$1E,	nRst
	dc.b		$0C,	nFs2,	$06,	nA2,	$0C,	nRst,	$06,	nFs2
	dc.b		nG2,	$1E,	nRst,	$0C,	nFs2,	$06,	nG2,	nRst
	dc.b		$0C,	nAb2,	$06,	nA2,	$1E,	nRst,	$0C,	nAb2
	dc.b		$06,	nG2,	$1E,	nRst,	$0C,	nAb2,	$06,	nA2
	dc.b		$0C,	nRst,	$54,	nG2,	$1E,	nRst,	$0C,	nFs2
	dc.b		$06,	nF2,	$1E,	nRst,	$0C,	nE2,	$06,	nG2
	dc.b		$0C,	nRst,	$06,	nE2,	nF2,	$1E,	nRst,	$0C
	dc.b		nE2,	$06,	nF2,	nRst,	$0C,	nFs2,	$06,	nG2
	dc.b		$1E,	nRst,	$0C,	nFs2,	$06,	nF2,	$1E,	nRst
	dc.b		$0C,	nFs2,	$06,	nG2,	$1E,	nRst,	$12,	nE3
	dc.b		nD3,	$0C,	nC3,	$12,	nB2,	$24,	nG2,	$3C
	dc.b		nRst,	$30,	nG2,	$12,	nC3,	$0C,	nD3,	$12
	dc.b		nB2,	$24,	nG2,	$3C,	nRst,	$60,	nB2,	$1E
	dc.b		nRst,	$0C,	nBb2,	$06,	nA2,	$1E,	nRst,	$0C
	dc.b		nAb2,	$06,	nB2,	$0C,	nRst,	$06,	nAb2,	nA2
	dc.b		$1E,	nRst,	$0C,	nAb2,	$06,	nA2,	nRst,	$0C
	dc.b		nBb2,	$06,	nB2,	$1E,	nRst,	$0C,	nBb2,	$06
	dc.b		nA2,	$1E,	nRst,	$0C,	nBb2,	$06,	nB2,	nRst
	dc.b		$5A,	nA2,	$1E,	nRst,	$0C,	nAb2,	$06,	nG2
	dc.b		$1E,	nRst,	$0C,	nFs2,	$06,	nA2,	$0C,	nRst
	dc.b		$06,	nFs2,	nG2,	$1E,	nRst,	$0C,	nFs2,	$06
	dc.b		nG2,	nRst,	$0C,	nAb2,	$06,	nA2,	$1E,	nRst
	dc.b		$0C,	nAb2,	$06,	nG2,	$1E,	nRst,	$0C,	nAb2
	dc.b		$06,	nA2,	$0C,	nRst,	$54,	nG2,	$1E,	nRst
	dc.b		$0C,	nFs2,	$06,	nF2,	$1E,	nRst,	$0C,	nE2
	dc.b		$06,	nG2,	$0C,	nRst,	$06,	nE2,	nF2,	$1E
	dc.b		nRst,	$0C,	nE2,	$06,	nF2,	nRst,	$0C,	nFs2
	dc.b		$06,	nG2,	$1E,	nRst,	$0C,	nFs2,	$06,	nF2
	dc.b		$1E,	nRst,	$0C,	nFs2,	$06,	nG2,	$1E,	nRst
	dc.b		$12,	nE3,	nD3,	$0C,	nC3,	$12,	nB2,	$24
	dc.b		nG2,	$3C,	nRst,	$30,	nG2,	$12,	nC3,	$0C
	dc.b		nD3,	$12,	nB2,	$24,	nG2,	$3C,	nRst,	$0D
	smpsStop
	dc.b		nRst,	$7F,	$7F,	$7F,	$15
	smpsSetVol	$05
	dc.b		nA2,	$06
	smpsAlterNote	$FD
	dc.b		nCs3
	smpsAlterNote	$00
	dc.b		nG3,	nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$7F,	$7F,	$7F,	$7F,	$7F,	$79,	nA2,	$06
	smpsAlterNote	$FD
	dc.b		nCs3
	smpsAlterNote	$00
	dc.b		nG3,	nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$7F,	$7F,	$7F,	$7F,	$7F,	$79,	nA2,	$06
	smpsAlterNote	$FD
	dc.b		nCs3
	smpsAlterNote	$00
	dc.b		nG3,	nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$7F,	$7F,	$7F,	$7F,	$7F,	$79,	nA2,	$06
	smpsAlterNote	$FD
	dc.b		nCs3
	smpsAlterNote	$00
	dc.b		nG3,	nRst,	$7F,	$7F,	$7F,	$7F,	$7F,	$7F
	dc.b		$7F,	$7F,	$77
	smpsStop

CurbYourEnthusiasm_Voices:
	dc.b		$3C,$31,$72,$70,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$1F,$0F,$1F,$0F,$7F,$00,$7F,$00;			Voice 00
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$7F,$7F,$7F,$00;			Voice 01
	dc.b		$3A,$01,$07,$31,$71,$8E,$8E,$8D,$53,$0E,$0E,$0E,$06,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$2F,$7F,$7F,$7F,$00;			Voice 02
	dc.b		$3E,$38,$01,$7A,$34,$59,$D9,$5F,$9C,$0F,$04,$0F,$0A,$02,$02,$05
	dc.b		$05,$AF,$AF,$66,$66,$7F,$00,$00,$00;			Voice 03
	dc.b		$3A,$71,$0C,$33,$01,$1C,$16,$1D,$1F,$04,$06,$04,$08,$00,$01,$03
	dc.b		$00,$16,$17,$16,$A6,$25,$2F,$25,$00;			Voice 04
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$00;			Voice 05
	dc.b		$3D,$01,$00,$01,$02,$12,$1F,$1F,$14,$07,$02,$02,$0A,$05,$05,$05
	dc.b		$05,$2F,$2F,$2F,$AF,$1C,$00,$02,$00;			Voice 06
	dc.b		$3A,$01,$07,$31,$71,$8E,$8E,$8D,$53,$0E,$0E,$0E,$06,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$2F,$18,$28,$27,$00;			Voice 07
	even
