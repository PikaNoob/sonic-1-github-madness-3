DrCoffinman_Header:
smpsHeaderStartSong = 1
		smpsHeaderVoice     DrCoffinman_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $26

	smpsHeaderDAC       DrCoffinman_DAC
	smpsHeaderFM        DrCoffinman_FM1,	$00, $0B
	smpsHeaderFM        DrCoffinman_FM2,	$00, $0D
	smpsHeaderFM        DrCoffinman_FM3,	$00, $09
	smpsHeaderFM        DrCoffinman_FM4,	$00, $00
	smpsHeaderFM        DrCoffinman_FM5,	$00, $00
	smpsHeaderPSG       DrCoffinman_PSG1,	$D0, $00, $00, $00
	smpsHeaderPSG       DrCoffinman_PSG2,	$D0, $00, $00, $00
	smpsHeaderPSG       DrCoffinman_PSG3,	$00, $00, $00, $00

; PSG1 Data
DrCoffinman_PSG1:

; PSG2 Data
DrCoffinman_PSG2:
	smpsStop

; FM1 Data
DrCoffinman_FM1:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$01
DrCoffinman_Jump01:
	smpsSetvoice	$02
	smpsAlterVol	$0A
	dc.b		nE5,	$05,	nRst,	$0B,	nE5,	$10,	nC5,	nA4
	smpsModSet	$00,	$02,	$03,	$03
	dc.b		nE5,	$20,	nC5,	$15,	nRst,	$7F,	$0C	
	dc.b		nFs5,	$05,	nRst,	$0B,	nFs5,	$10,	nD5,	nB4
	smpsModSet	$00,	$02,	$03,	$03
	dc.b		nFs5,	$20,	nD5,	nF5,	$7F,	smpsNoAttack,	$01	
	dc.b		nE5,	$05,	nRst,	$0B,	nE5,	$10,	nC5,	nA4
	smpsModSet	$00,	$02,	$03,	$03
	dc.b		nE5,	$20,	nC5,	$15,	nRst,	$7F,	$0C	
	dc.b		nFs5,	$05,	nRst,	$0B,	nFs5,	$10,	nD5,	nB4
	smpsModSet	$00,	$02,	$03,	$03
	dc.b		nFs5,	$20,	nD5,	nF5,	nG5,	$08,	nF5,	nG5
	dc.b		$10,	nA5,	nRst,	$40
	smpsSetvoice	$05
	smpsAlterVol	$06
	dc.b			nF5,	$10,	nE5,	$05,	nRst,	$0B,	nD5
	dc.b		$05,	nRst,	$0B,	nC5,	$05,	nRst,	$0B,	nD5
	dc.b		$05,	nRst,	$0B,	nC5,	$08,	nA4,	$18,	nBb4
	dc.b		$05,	nRst,	$0B,	nBb4,	$10,	nC5,	$05,	nRst
	dc.b		$0B,	nBb4,	$05,	nRst,	$0B,	nA4,	$08,	nBb4
	dc.b		nRst,	$10,	nC5,	nRst,	$20,	nF5,	$10,	nE5
	dc.b		$05,	nRst,	$0B,	nD5,	$05,	nRst,	$0B,	nC5
	dc.b		$05,	nRst,	$0B,	nD5,	$05,	nRst,	$0B,	nC5
	dc.b		$08,	nA4,	$18,	nC5,	$20,	nG5,	nA5,	$05
	dc.b		nRst,	$0B,	nA5,	$09,	nG5,	$07,	nF5,	$15
	dc.b		nRst,	$1B,	nF5,	$10,	nE5,	$05,	nRst,	$0B
	dc.b		nD5,	$05,	nRst,	$0B,	nC5,	$05,	nRst,	$0B
	dc.b		nD5,	$05,	nRst,	$0B,	nC5,	$08,	nA4,	$18
	dc.b		nBb4,	$05,	nRst,	$0B,	nBb4,	$10,	nC5,	$05
	dc.b		nRst,	$0B,	nBb4,	$05,	nRst,	$0B,	nA4,	$08
	dc.b		nBb4,	nRst,	$10,	nC5,	nRst,	$20,	nA5,	$05
	dc.b		nRst,	$0B,	nG5,	$05,	nRst,	$0B,	nG5,	$05
	dc.b		nRst,	$0B,	nF5,	$05,	nRst,	$0B,	nF5,	$05
	dc.b		nRst,	$0B,	nE5,	$08,	nF5,	nE5,	$09,	nD5
	dc.b		$07,	nRst,	$7F,	$01
	smpsAlterVol	$F0
	smpsPan		panCentre,	$00
	
	smpsJump	DrCoffinman_Jump01

; FM2 Data
DrCoffinman_FM2:
	smpsSetvoice	$00
	smpsAlterVol	$0D
	smpsPan		panCentre,	$00
	dc.b		nA2,	$06,	nA2,	$0A,	nA2,	$08,	nA2,	nG2
	dc.b		$06,	nG2,	$0A,	nG2,	$08,	nG2,	nF2,	$06
	dc.b		nF2,	$0A,	nF2,	$08,	nF2,	nE2,	$06,	nE2
	dc.b		$0A,	nE2,	$08,	nE2
DrCoffinman_Jump02:
	dc.b		nA2,	$10,	nA2,	nRst,	nE2,	nA2,	nG2,	nA2
	dc.b		$08,	nC3,	$18,	nRst,	$10,	nA2,	$08,	nC3
	dc.b		nE3,	nC3,	$0D,	nRst,	$0B,	nA2,	$10,	nA2
	dc.b		nF2,	$20,	nA2,	$10,	nA2,	nRst,	nE2,	nA2
	dc.b		nG2,	nA2,	$08,	nC3,	$18,	nBb2,	$10,	nBb2
	dc.b		nA2,	nA2,	nG2,	nG2,	nF2,	nF2,	nA2,	nA2
	dc.b		nRst,	nE2,	nA2,	nG2,	nA2,	$08,	nC3,	$18
	dc.b		nRst,	$10,	nA2,	$08,	nC3,	nE3,	nC3,	$0D
	dc.b		nRst,	$0B,	nA2,	$10,	nA2,	nF2,	$20,	nA2
	dc.b		$10,	nA2,	nRst,	nE2,	nA2,	nG2,	nA2,	$08
	dc.b		nC3,	$18,	nBb2,	$10,	nBb2,	nBb2,	nBb2,	nA2
	dc.b		$1A,	nRst,	$26,	nF3,	$10,	nF3,	nRst,	nF3
	dc.b		nE3,	nRst,	nF3,	$08,	nE3,	$0D,	nRst,	$0B
	dc.b		nBb2,	$10,	nBb2,	nRst,	nA2,	nF2,	nF2,	nG2
	dc.b		$08,	nA2,	$0D,	nRst,	$0B,	nF3,	$10,	nF3
	dc.b		nRst,	nF3,	nE3,	nRst,	nF3,	$08,	nE3,	$0D
	dc.b		nRst,	$0B,	nBb2,	$10,	nBb2,	nRst,	nA2,	nF2
	dc.b		nF2,	nG2,	$08,	nA2,	$0D,	nRst,	$0B,	nF3
	dc.b		$10,	nF3,	nRst,	nF3,	nE3,	nRst,	nF3,	$08
	dc.b		nE3,	$0D,	nRst,	$0B,	nBb2,	$10,	nBb2,	nRst
	dc.b		nA2,	nF2,	nF2,	nG2,	$08,	nA2,	$0D,	nRst
	dc.b		$0B,	nF3,	$10,	nF3,	nRst,	nF3,	nE3,	nRst
	dc.b		nF3,	$08,	nE3,	$0D,	nRst,	$7F,	$0C
	smpsPan		panCentre,	$00
	smpsJump	DrCoffinman_Jump02

; FM3 Data
DrCoffinman_FM3:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$01
DrCoffinman_Jump03:
	dc.b		nRst,	$7F,	$11
	smpsSetvoice	$04
	smpsAlterVol	$0D
	dc.b		nA4,	$08,	nC5,	nD5,	nE5,	nRst,	$10,	nA4
	dc.b		$08,	nC5,	nD5,	nE5,	nRst,	$7F,	$31,	nA5
	dc.b		$10,	nRst,	nG5,	nRst,	nF5,	$0A,	nRst,	$06
	dc.b		nE5,	$08,	nF5,	nE5,	$10,	nRst,	$7F,	$11
	dc.b		nA4,	$08,	nC5,	nD5,	nE5,	nRst,	$10,	nA4
	dc.b		$08,	nC5,	nD5,	nE5,	nRst,	$7F,	$7F,	$22
	dc.b		nF4,	$0A,	nRst,	$06,	nF4,	$10,	nF4,	$0A
	dc.b		nRst,	$06,	nF4,	$0A,	nRst,	$06,	nE4,	$0A
	dc.b		nRst,	$36,	nD4,	$0A,	nRst,	$06,	nD4,	$10
	dc.b		nD4,	$0A,	nRst,	$06,	nD4,	$0A,	nRst,	$06
	dc.b		nC4,	$0A,	nRst,	$36,	nF4,	$0A,	nRst,	$06
	dc.b		nF4,	$10,	nF4,	$0A,	nRst,	$06,	nF4,	$0A
	dc.b		nRst,	$06,	nE4,	$0A,	nRst,	$36,	nD4,	$0A
	dc.b		nRst,	$06,	nD4,	$10,	nD4,	$0A,	nRst,	$06
	dc.b		nD4,	$0A,	nRst,	$06,	nC4,	$0A,	nRst,	$06
	dc.b		nC4,	$09,	nRst,	$07,	nD4,	$0A,	nRst,	$06
	dc.b		nE4,	$0A,	nRst,	$06,	nF4,	$0A,	nRst,	$06
	dc.b		nF4,	$10,	nF4,	$0A,	nRst,	$06,	nF4,	$0A
	dc.b		nRst,	$06,	nE4,	$0A,	nRst,	$36,	nD4,	$0A
	dc.b		nRst,	$06,	nD4,	$10,	nD4,	$0A,	nRst,	$06
	dc.b		nD4,	$0A,	nRst,	$06,	nC4,	$0A,	nRst,	$36
	dc.b		nF4,	$0A,	nRst,	$06,	nF4,	$10,	nF4,	$0A
	dc.b		nRst,	$06,	nF4,	$0A,	nRst,	$06,	nE4,	$0A
	dc.b		nRst,	$7F,	$37
	smpsAlterVol	$F3
	smpsPan		panCentre,	$00
	smpsJump	DrCoffinman_Jump03

; FM4 Data
DrCoffinman_FM4:
	smpsSetvoice	$01
	smpsAlterVol	$14
	smpsPan		panRight,	$00
	dc.b		nBb2,	$01,	nA2,	$05,	nRst,	$0A,	nBb2,	$01
	dc.b		nA2,	$05,	nRst,	$0A,	nC3,	$01,	nB2,	$05
	dc.b		nRst,	$0A,	nC3,	$01,	nB2,	$05,	nRst,	$0A
	dc.b		nCs3,	$01,	nC3,	$05,	nRst,	$0A,	nCs3,	$01
	dc.b		nC3,	$05,	nRst,	$0A,	nEb3,	$01,	nD3,	$05
	dc.b		nRst,	$0A,	nEb3,	$01,	nD3,	$05,	nRst,	$0A
DrCoffinman_Jump04:
	smpsSetvoice	$03
	smpsAlterVol	$10
	smpsModSet	$00,	$02,	$02,	$03
	dc.b		nE5,	$60,	nF5,	$10,	nG5,	nE5,	$60,	nRst
	dc.b		$20,	nFs5,	$7F,	smpsNoAttack,	$01,	nRst,	$7F,	$01
	dc.b		nE5,	$60,	nF5,	$10,	nG5,	nE5,	$60,	nRst
	dc.b		$20,	nFs5,	$7F,	smpsNoAttack,	$01,	nCs6,	$10,	nCs6
	dc.b		nCs6,	nCs6,	nCs6,	nRst,	$30,	nF5,	$15,	nRst
	dc.b		$1B,	nF5,	$10,	nE5,	$15,	nRst,	$2B,	nD5
	dc.b		$15,	nRst,	$1B,	nD5,	$10,	nC5,	$15,	nRst
	dc.b		$2B,	nF5,	$15,	nRst,	$1B,	nF5,	$10,	nE5
	dc.b		$15,	nRst,	$2B,	nD5,	$15,	nRst,	$1B,	nD5
	dc.b		$10,	nC5,	$15,	nRst,	$2B,	nF5,	$15,	nRst
	dc.b		$1B,	nF5,	$10,	nE5,	$15,	nRst,	$2B,	nD5
	dc.b		$15,	nRst,	$1B,	nD5,	$10,	nC5,	$15,	nRst
	dc.b		$2B,	nF5,	$15,	nRst,	$1B,	nF5,	$10,	nE5
	dc.b		$15,	nRst,	$7F,	$2C
	smpsSetvoice	$01
	smpsAlterVol	$F0
	smpsPan		panRight,	$00

	smpsJump	DrCoffinman_Jump04

; FM5 Data
DrCoffinman_FM5:
	smpsSetvoice	$01
	smpsAlterVol	$14
	smpsPan		panLeft,	$00
	smpsModSet	$00,	$02,	$01,	$03
	dc.b		nBb2,	$01,	nA2,	$05,	nRst,	$0A,	nBb2,	$01
	dc.b		nA2,	$05,	nRst,	$0A,	nC3,	$01,	nB2,	$05
	dc.b		nRst,	$0A,	nC3,	$01,	nB2,	$05,	nRst,	$0A
	dc.b		nCs3,	$01,	nC3,	$05,	nRst,	$0A,	nCs3,	$01
	dc.b		nC3,	$05,	nRst,	$0A,	nEb3,	$01,	nD3,	$05
	dc.b		nRst,	$0A,	nEb3,	$01,	nD3,	$05,	nRst,	$0A
DrCoffinman_Jump05:
	smpsSetvoice	$03
	smpsAlterVol	$10
	smpsModSet	$00,	$02,	$02,	$03
	dc.b		nE5,	$60,	nF5,	$10,	nG5,	nE5,	$60,	nRst
	dc.b		$20,	nFs5,	$7F,	smpsNoAttack,	$01,	nRst,	$7F,	$01
	dc.b		nE5,	$60,	nF5,	$10,	nG5,	nE5,	$60,	nRst
	dc.b		$20,	nFs5,	$7F,	smpsNoAttack,	$01,	nCs6,	$10,	nCs6
	dc.b		nCs6,	nCs6,	nCs6,	nRst,	$30,	nF5,	$15,	nRst
	dc.b		$1B,	nF5,	$10,	nE5,	$15,	nRst,	$2B,	nD5
	dc.b		$15,	nRst,	$1B,	nD5,	$10,	nC5,	$15,	nRst
	dc.b		$2B,	nF5,	$15,	nRst,	$1B,	nF5,	$10,	nE5
	dc.b		$15,	nRst,	$2B,	nD5,	$15,	nRst,	$1B,	nD5
	dc.b		$10,	nC5,	$15,	nRst,	$2B,	nF5,	$15,	nRst
	dc.b		$1B,	nF5,	$10,	nE5,	$15,	nRst,	$2B,	nD5
	dc.b		$15,	nRst,	$1B,	nD5,	$10,	nC5,	$15,	nRst
	dc.b		$2B,	nF5,	$15,	nRst,	$1B,	nF5,	$10,	nE5
	dc.b		$15,	nRst,	$7F,	$2C
	smpsSetvoice	$01
	smpsAlterVol	$F0
	smpsPan		panLeft,	$00
	smpsModSet	$00,	$02,	$01,	$03
	smpsJump	DrCoffinman_Jump05

; PSG3 Data
DrCoffinman_PSG3:
	smpsSetVol	$04
	smpsPSGform	$E7
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
DrCoffinman_Jump06:
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$4E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$0E
	smpsJump	DrCoffinman_Jump06

; DAC Data
DrCoffinman_DAC:
	dc.b		dSnare,	$10,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare
	dc.b		$08,	dKick,	dSnare,	dSnare
DrCoffinman_Jump07:
	dc.b		dKick,	$10,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dKick,	dSnare
	dc.b		$08,	dKick,	dSnare,	dSnare,	dKick,	$10,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	dKick,	dSnare
	dc.b		dKick,	dKick,	dKick,	dSnare,	dKick,	dKick,	$20,	dSnare
	dc.b		dKick,	$06,	dKick,	$04,	dKick,	$06,	dKick,	$08
	dc.b		dKick,	dSnare,	$05,	dSnare,	dSnare,	$06,	dSnare,	$02
	dc.b		dSnare,	$03,	dSnare,	dSnare,	$02,	dSnare,	$03,	dSnare
	smpsJump	DrCoffinman_Jump07

DrCoffinman_Voices:
	dc.b		$18,$37,$30,$30,$31,$9E,$DC,$1C,$9C,$0D,$06,$04,$01,$08,$0A,$03
	dc.b		$05,$BF,$BF,$3F,$2F,$2C,$22,$14,$00;			Voice 00
	dc.b		$2C,$74,$74,$34,$34,$1F,$12,$1F,$1F,$00,$00,$00,$00,$00,$01,$00
	dc.b		$01,$0F,$3F,$0F,$3F,$16,$00,$17,$00;			Voice 01
	dc.b		$3C,$31,$52,$50,$30,$52,$53,$52,$53,$08,$00,$08,$00,$04,$00,$04
	dc.b		$00,$10,$07,$10,$07,$1A,$00,$16,$05;			Voice 02
	dc.b		$3D,$01,$02,$02,$02,$1F,$10,$10,$10,$07,$1F,$1F,$1F,$00,$00,$00
	dc.b		$00,$1F,$0F,$0F,$0F,$17,$01,$00,$04;			Voice 03
	dc.b		$3A,$01,$01,$01,$02,$8D,$07,$07,$56,$09,$00,$00,$03,$01,$02,$02
	dc.b		$00,$5F,$0F,$0F,$2F,$18,$22,$18,$00;			Voice 04
	dc.b		$04,$37,$72,$77,$09,$1F,$1F,$1F,$1F,$07,$0A,$07,$0D,$00,$00,$00
	dc.b		$00,$10,$07,$10,$07,$23,$0A,$23,$00;			Voice 05
	even
