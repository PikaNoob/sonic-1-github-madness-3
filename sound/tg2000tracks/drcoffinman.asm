DrCoffinmanFinal_Header:
smpsHeaderStartSong = 1
		smpsHeaderVoice     DrCoffinmanFinal_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $26

	smpsHeaderDAC       DrCoffinmanFinal_DAC
	smpsHeaderFM        DrCoffinmanFinal_FM1,	$00, $0B
	smpsHeaderFM        DrCoffinmanFinal_FM2,	$00, $0D
	smpsHeaderFM        DrCoffinmanFinal_FM3,	$00, $09
	smpsHeaderFM        DrCoffinmanFinal_FM4,	$00, $00
	smpsHeaderFM        DrCoffinmanFinal_FM5,	$00, $00
	smpsHeaderPSG       Coffman_PSG1,		$D0, $00, $00, $00
	smpsHeaderPSG       Coffman_PSG2,		$D0, $00, $00, $00
	smpsHeaderPSG       Coffman_PSG3,		$00, $00, $00, $00

; PSG3 Data
Coffman_PSG3:
	smpsStop

; PSG2 Data
Coffman_PSG2:
	smpsStop

; PSG1 Data
Coffman_PSG1:
	smpsStop

; FM1 Data
DrCoffinmanFinal_FM1:
	smpsSetvoice	$00
	smpsAlterVol	$04
	smpsPan		panCentre,	$00
	dc.b		nFs2,	$09,	nRst,	$04,	nFs3,	$0A,	nRst,	$03
	dc.b		nFs3,	$0A,	nRst,	$03,	nFs2,	$0A,	nRst,	$04
	dc.b		nFs3,	$0A,	nRst,	$03,	nFs3,	$0A,	nRst,	$03
	dc.b		nFs2,	$0A,	nRst,	$04,	nFs3,	$0A,	nRst,	$03
	dc.b		nCs2,	$0D,	nCs3,	$0E,	nCs2,	$0D,	nCs3,	nCs2
	dc.b		$0E,	nCs3,	$0D,	nCs2,	nCs3,	$0E,	nFs2,	$0A
	dc.b		nRst,	$03,	nFs3,	$0A,	nRst,	$03,	nFs3,	$0A
	dc.b		nRst,	$04,	nFs2,	$0A,	nRst,	$03,	nFs3,	$0A
	dc.b		nRst,	$03,	nFs3,	$0A,	nRst,	$04,	nFs2,	$0A
	dc.b		nRst,	$03,	nFs3,	$0A,	nRst,	$03,	nCs2,	$0E
	dc.b		nCs3,	$0D,	nEb2,	nEb3,	$0E,	nE2,	$0D,	nE3
	dc.b		nF2,	nF3,	$0E,	nFs2,	$0D,	nFs3,	$07,	nFs3
	dc.b		$06,	nFs2,	$0E,	nFs3,	$06,	nFs3,	$07,	nFs2
	dc.b		$0D,	nFs3,	$07,	nFs3,	nFs2,	$0D,	nFs3,	$07
	dc.b		nFs3,	$06,	nE2,	$0E,	nE3,	$06,	nE3,	$07
	dc.b		nE2,	$0D,	nE3,	$07,	nE3,	nE2,	$0D,	nE3
	dc.b		$07,	nE3,	$06,	nE2,	$0E,	nE3,	$06,	nE3
	dc.b		$07,	nFs2,	$0D,	nFs3,	$07,	nFs3,	nFs2,	$0D
	dc.b		nFs3,	$07,	nFs3,	$06,	nFs2,	$0E,	nFs3,	$06
	dc.b		nFs3,	$07,	nFs2,	$0D,	nFs3,	$07,	nFs3,	nFs2
	dc.b		$0D,	nFs3,	$07,	nFs3,	$06,	nFs2,	$0E,	nFs3
	dc.b		$06,	nFs3,	$07,	nFs2,	$0D,	nFs3,	$07,	nFs3
	dc.b		$06,	nFs2,	$0E,	nFs3,	$06,	nFs3,	$07,	nFs2
	dc.b		$0D,	nFs3,	$07,	nFs3,	nFs2,	$0D,	nFs3,	$07
	dc.b		nFs3,	$06,	nFs2,	$0E,	nFs3,	$06,	nFs3,	$07
	dc.b		nFs2,	$0D,	nFs3,	$07,	nFs3,	nE2,	$0D,	nE3
	dc.b		$07,	nE3,	$06,	nE2,	$0E,	nE3,	$06,	nE3
	dc.b		$07,	nE2,	$0D,	nE3,	$07,	nE3,	nE2,	$0D
	dc.b		nE3,	$07,	nE3,	$06,	nFs2,	$0E,	nFs3,	$06
	dc.b		nFs3,	$07,	nFs2,	$0D,	nFs3,	$07,	nFs3,	nFs2
	dc.b		$0D,	nFs3,	$07,	nFs3,	$06,	nFs2,	$0E,	nFs3
	dc.b		$06,	nFs3,	$07,	nFs2,	$0D,	nFs3,	$07,	nFs3
	dc.b		nFs2,	$0D,	nFs3,	$07,	nFs3,	$06,	nFs2,	$0D
	dc.b		nFs3,	$07,	nFs3,	nFs2,	$0D,	nFs3,	$07,	nFs3
	dc.b		$06,	nFs2,	$0E,	nFs3,	$06,	nFs3,	$07,	nFs2
	dc.b		$0D,	nFs3,	$07,	nFs3,	nFs2,	$0D,	nFs3,	$07
	dc.b		nFs3,	$06,	nFs2,	$0E,	nFs3,	$06,	nFs3,	$07
	dc.b		nE2,	$0D,	nE3,	$07,	nE3,	nE2,	$0D,	nE3
	dc.b		$07,	nE3,	$06,	nE2,	$0E,	nE3,	$06,	nE3
	dc.b		$07,	nE2,	$0D,	nE3,	$07,	nE3,	nFs2,	$0D
	dc.b		nFs3,	$07,	nFs3,	$06,	nFs2,	$0E,	nFs3,	$06
	dc.b		nFs3,	$07,	nFs2,	$0D,	nFs3,	$07,	nFs3,	nFs2
	dc.b		$0D,	nFs3,	$07,	nFs3,	$06,	nFs2,	$0E,	nFs3
	dc.b		$06,	nFs3,	$07,	nFs2,	$0D,	nFs3,	$07,	nFs3
	dc.b		$06,	nFs2,	$0E,	nFs3,	$06,	nFs3,	$07,	nFs2
	dc.b		$0D,	nFs3,	$07,	nFs3,	nFs2,	$0D,	nFs3,	$07
	dc.b		nFs3,	$06,	nFs2,	$0E,	nFs3,	$06,	nFs3,	$07
	dc.b		nFs2,	$0D,	nFs3,	$07,	nFs3,	nFs2,	$0D,	nFs3
	dc.b		$07,	nFs3,	$06,	nE2,	$0E,	nE3,	$06,	nE3
	dc.b		$07,	nE2,	$0D,	nE3,	$07,	nE3,	nE2,	$0D
	dc.b		nE3,	$07,	nE3,	$06,	nE2,	$0E,	nE3,	$06
	dc.b		nE3,	$07,	nFs2,	$0D,	nFs3,	$07,	nFs3,	nFs2
	dc.b		$0D,	nFs3,	$07,	nFs3,	$06,	nFs2,	$0E,	nFs3
	dc.b		$06,	nFs3,	$07,	nFs2,	$0D,	nFs3,	$07,	nFs3
	dc.b		nFs2,	$0D,	nFs3,	$06,	nFs3,	$07,	nFs2,	$0D
	dc.b		nFs3,	$07,	nFs3,	nFs2,	$0D,	nFs3,	$07,	nFs3
	dc.b		$06,	nFs2,	$0E,	nFs3,	$06,	nFs3,	$07
	smpsAlterVol	$FC
	smpsPan		panCentre,	$00
	smpsJump	DrCoffinmanFinal_FM1

; FM2 Data
DrCoffinmanFinal_FM2:
	smpsSetvoice	$01
	smpsAlterVol	$06
	smpsPan		panCentre,	$00
	dc.b		nFs3,	$09,	nRst,	$04,	nCs3,	$0A,	nRst,	$03
	dc.b		nCs3,	$0A,	nRst,	$03,	nFs3,	$0A,	nRst,	$04
	dc.b		nCs3,	$0A,	nRst,	$03,	nCs3,	$0A,	nRst,	$03
	dc.b		nFs3,	$0A,	nRst,	$04,	nCs3,	$0A,	nRst,	$03
	dc.b		nAb3,	$1B,	nAb3,	$1A,	nAb3,	$1B,	nAb3,	nFs3
	dc.b		$0A,	nRst,	$03,	nCs3,	$0A,	nRst,	$03,	nCs3
	dc.b		$0A,	nRst,	$04,	nFs3,	$0A,	nRst,	$03,	nCs3
	dc.b		$0A,	nRst,	$03,	nCs3,	$0A,	nRst,	$04,	nFs3
	dc.b		$0A,	nRst,	$03,	nCs3,	$0A,	nRst,	$03,	nAb3
	dc.b		$1B,	nAb3,	nB3,	$0D,	nA3,	nAb3,	nE3,	$0E
	dc.b		nFs3,	$1A,	nFs3,	$0E,	nCs4,	$0D,	nB3,	$1B
	dc.b		nA3,	$1A,	nAb3,	$1B,	nAb3,	$0D,	nAb3,	$0E
	dc.b		nB3,	$1A,	nA3,	$0E,	nAb3,	$0D,	nFs3,	$1B
	dc.b		nFs3,	$0D,	nA4,	nAb4,	$0E,	nA4,	$0D,	nAb4
	dc.b		nA4,	$0E,	nFs3,	$1A,	nFs3,	$0E,	nA4,	$0D
	dc.b		nAb4,	nA4,	nAb4,	$0E,	nA4,	$0D,	nFs3,	$1B
	dc.b		nFs3,	$0D,	nCs4,	nB3,	$1B,	nA3,	nAb3,	$1A
	dc.b		nAb3,	$0E,	nAb3,	$0D,	nB3,	$1B,	nA3,	$0D
	dc.b		nAb3,	nFs3,	$1B,	nFs3,	$0D,	nA4,	$0E,	nAb4
	dc.b		$0D,	nA4,	nAb4,	$0E,	nA4,	$0D,	nFs3,	$1B
	dc.b		nFs3,	$0D,	nA4,	nAb4,	nA4,	$0E,	nAb4,	$0D
	dc.b		nA4,	nFs3,	$1B,	nFs3,	$0D,	nCs4,	$0E,	nB3
	dc.b		$1A,	nA3,	$1B,	nAb3,	nAb3,	$0D,	nAb3,	nB3
	dc.b		$1B,	nA3,	$0D,	nAb3,	$0E,	nFs3,	$1A,	nFs3
	dc.b		$0E,	nA4,	$0D,	nAb4,	nA4,	$0E,	nAb4,	$0D
	dc.b		nA4,	nFs3,	$1B,	nFs3,	$0D,	nA4,	nAb4,	$0E
	dc.b		nA4,	$0D,	nAb4,	nA4,	$0E,	nFs3,	$1A,	nFs3
	dc.b		$0E,	nCs4,	$0D,	nB3,	$1B,	nA3,	$1A,	nAb3
	dc.b		$1B,	nAb3,	$0D,	nAb3,	$0E,	nB3,	$1A,	nA3
	dc.b		$0E,	nAb3,	$0D,	nFs3,	$1B,	nFs3,	$0D,	nA4
	dc.b		nAb4,	$0E,	nA4,	$0D,	nAb4,	nA4,	$0E,	nFs3
	dc.b		$1A,	nFs3,	$0D,	nA4,	$0E,	nAb4,	$0D,	nA4
	dc.b		nAb4,	$0E,	nA4,	$0D
	smpsSetvoice	$00
	smpsAlterVol	$FA
	smpsPan		panCentre,	$00
	smpsJump	DrCoffinmanFinal_FM2

; FM3 Data
DrCoffinmanFinal_FM3:
	smpsSetvoice	$01
	smpsAlterVol	$0C
	smpsPan		panCentre,	$00
	dc.b		nA3,	$09,	nRst,	$04,	nFs3,	$0A,	nRst,	$03
	dc.b		nFs3,	$0A,	nRst,	$03,	nA3,	$0A,	nRst,	$04
	dc.b		nFs3,	$0A,	nRst,	$03,	nFs3,	$0A,	nRst,	$03
	dc.b		nA3,	$0A,	nRst,	$04,	nFs3,	$0A,	nRst,	$03
	dc.b		nF3,	$1B,	nF3,	$1A,	nF3,	$1B,	nF3,	nA3
	dc.b		$0A,	nRst,	$03,	nFs3,	$0A,	nRst,	$03,	nFs3
	dc.b		$0A,	nRst,	$04,	nA3,	$0A,	nRst,	$03,	nFs3
	dc.b		$0A,	nRst,	$03,	nFs3,	$0A,	nRst,	$04,	nA3
	dc.b		$0A,	nRst,	$03,	nFs3,	$0A,	nRst,	$03,	nF3
	dc.b		$1B,	nF3,	nF3,	$1A,	nF3,	$1B,	nRst,	$7F
	dc.b		$7F,	$7F,	$7F,	$7F,	$7F,	$5A,	nFs4,	$1B
	dc.b		nFs4,	$0D,	nCs5,	$0E,	nB4,	$1A,	nA4,	$1B
	dc.b		nAb4,	nAb4,	$0D,	nAb4,	nB4,	$1B,	nA4,	$0D
	dc.b		nAb4,	$0E,	nFs4,	$1A,	nFs4,	$0E,	nA5,	$0D
	dc.b		nAb5,	nA5,	$0E,	nAb5,	$0D,	nA5,	nFs4,	$1B
	dc.b		nFs4,	$0D,	nA5,	nAb5,	$0E,	nA5,	$0D,	nAb5
	dc.b		nA5,	$0E,	nFs4,	$1A,	nFs4,	$0E,	nCs5,	$0D
	dc.b		nB4,	$1B,	nA4,	$1A,	nAb4,	$1B,	nAb4,	$0D
	dc.b		nAb4,	$0E,	nB4,	$1A,	nA4,	$0E,	nAb4,	$0D
	dc.b		nFs4,	$1B,	nFs4,	$0D,	nA5,	nAb5,	$0E,	nA5
	dc.b		$0D,	nAb5,	nA5,	$0E,	nFs4,	$1A,	nFs4,	$0D
	dc.b		nA5,	$0E,	nAb5,	$0D,	nA5,	nAb5,	$0E,	nA5
	dc.b		$0D
	smpsSetvoice	$00
	smpsAlterVol	$F4
	smpsPan		panCentre,	$00
	smpsJump	DrCoffinmanFinal_FM3

; FM4 Data
DrCoffinmanFinal_FM4:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$5D
	smpsSetvoice	$01
	smpsAlterVol	$10
	smpsPan		panRight,	$00
	dc.b		nB3,	$06,	nCs4,	$07,	nD4,	$0D,	nD4,	$0E
	dc.b		nCs4,	$0D,	nCs4,	nB3,	$0E,	nB3,	$0D
	smpsModSet	$00,	$02,	$04,	$03
	dc.b		nCs4,	$1B,	nRst,	$5D,	nB3,	$07,	nCs4
	dc.b		$06,	nD4,	$0E,	nCs4,	$0D,	nC4,	nCs4,	$0E
	smpsModSet	$00,	$02,	$04,	$03
	dc.b		nF4,	$1A,	nCs4,	$1B,	nRst,	$7F,	$7F,	$7F
	dc.b		$2D,	nA3,	$50,	nB3,	$0D,	nA3,	$0E,	nAb3
	dc.b		$35,	nE3,	$1B,	nCs3,	$1A,	nA3,	$50,	nB3
	dc.b		$0E,	nCs3,	$0D,	nA3,	$6A,	nA3,	$50,	nB3
	dc.b		$0E,	nA3,	$0D,	nAb3,	$35,	nE3,	$1B,	nCs3
	dc.b		nA3,	$50,	nB3,	$0D,	nCs3,	nA3,	$6B,	nA4
	dc.b		$1A,	nA4,	$0E,	nE5,	$0D,	nD5,	$1B,	nCs5
	dc.b		$1A,	nB4,	$1B,	nB4,	$0D,	nB4,	$0E,	nD5
	dc.b		$1A,	nCs5,	$0E,	nB4,	$0D,	nA4,	$1B,	nA4
	dc.b		$0D,	nCs5,	nB4,	$0E,	nCs5,	$0D,	nB4,	nCs5
	dc.b		$0E,	nA4,	$1A,	nA4,	$0D,	nCs5,	$0E,	nB4
	dc.b		$0D,	nCs5,	nB4,	$0E,	nCs5,	$0D
	smpsSetvoice	$00
	smpsAlterVol	$F0
	smpsPan		panCentre,	$00
	
	smpsJump	DrCoffinmanFinal_FM4

; FM5 Data
DrCoffinmanFinal_FM5:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$5D
	smpsSetvoice	$01
	smpsAlterVol	$10
	smpsPan		panLeft,	$00
	dc.b		nB3,	$06,	nCs4,	$07,	nD4,	$0D,	nD4,	$0E
	dc.b		nCs4,	$0D,	nCs4,	nB3,	$0E,	nB3,	$0D
	smpsModSet	$00,	$02,	$04,	$03
	dc.b		nCs4,	$1B,	nRst,	$5D,	nB3,	$07,	nCs4
	dc.b		$06,	nD4,	$0E,	nCs4,	$0D,	nC4,	nCs4,	$0E
	smpsModSet	$00,	$02,	$04,	$03
	dc.b		nF4,	$1A,	nCs4,	$1B,	nRst,	$7F,	$7F,	$7F
	dc.b		$2D,	nA3,	$50,	nB3,	$0D,	nA3,	$0E,	nAb3
	dc.b		$35,	nE3,	$1B,	nCs3,	$1A,	nA3,	$50,	nB3
	dc.b		$0E,	nCs3,	$0D,	nA3,	$6A,	nA3,	$50,	nB3
	dc.b		$0E,	nA3,	$0D,	nAb3,	$35,	nE3,	$1B,	nCs3
	dc.b		nA3,	$50,	nB3,	$0D,	nCs3,	nA3,	$6B,	nA4
	dc.b		$1A,	nA4,	$0E,	nE5,	$0D,	nD5,	$1B,	nCs5
	dc.b		$1A,	nB4,	$1B,	nB4,	$0D,	nB4,	$0E,	nD5
	dc.b		$1A,	nCs5,	$0E,	nB4,	$0D,	nA4,	$1B,	nA4
	dc.b		$0D,	nCs5,	nB4,	$0E,	nCs5,	$0D,	nB4,	nCs5
	dc.b		$0E,	nA4,	$1A,	nA4,	$0D,	nCs5,	$0E,	nB4
	dc.b		$0D,	nCs5,	nB4,	$0E,	nCs5,	$0D
	smpsSetvoice	$00
	smpsAlterVol	$F0
	smpsPan		panCentre,	$00
	
	smpsJump	DrCoffinmanFinal_FM5


; DAC Data
DrCoffinmanFinal_DAC:
	dc.b		dSnare,	$0D,	dKick,	dKick,	dSnare,	$0E,	dKick,	$0D
	dc.b		dKick,	dSnare,	$0E,	dKick,	$0D,	dKick,	$1B,	dKick
	dc.b		$1A,	dKick,	$1B,	dKick,	dSnare,	$0D,	dKick,	dKick
	dc.b		$0E,	dSnare,	$0D,	dKick,	dKick,	$0E,	dSnare,	$0D
	dc.b		dKick,	dKick,	$1B,	dKick,	dKick,	$1A,	dKick,	$1B
	dc.b		dKick,	$0D,	dSnare,	$07,	dSnare,	$06,	dKick,	$0E
	dc.b		dSnare,	$06,	dSnare,	$07,	dKick,	$0D,	dSnare,	$07
	dc.b		dSnare,	dKick,	$0D,	dSnare,	$07,	dSnare,	$06,	dKick
	dc.b		$0E,	dSnare,	$06,	dSnare,	$07,	dKick,	$0D,	dSnare
	dc.b		$07,	dSnare,	dKick,	$0D,	dSnare,	$03,	dKick,	$04
	dc.b		dSnare,	$03,	dKick,	dKick,	$0E,	dSnare,	$03,	dKick
	dc.b		dSnare,	$04,	dKick,	$03,	dKick,	$0D,	dSnare,	$07
	dc.b		dSnare,	dKick,	$0D,	dSnare,	$07,	dSnare,	$06,	dKick
	dc.b		$0E,	dSnare,	$06,	dSnare,	$07,	dKick,	$0D,	dSnare
	dc.b		$07,	dSnare,	dKick,	$0D,	dSnare,	$07,	dSnare,	$06
	dc.b		dKick,	$0E,	dSnare,	$06,	dSnare,	$07,	dKick,	$0D
	dc.b		dSnare,	$04,	dKick,	$03,	dSnare,	dKick,	dKick,	$0E
	dc.b		dSnare,	$03,	dKick,	dSnare,	$04,	dKick,	$03,	dKick
	dc.b		$0D,	dSnare,	$07,	dSnare,	dKick,	$0D,	dSnare,	$07
	dc.b		dSnare,	$06,	dKick,	$0E,	dSnare,	$06,	dSnare,	$07
	dc.b		dKick,	$0D,	dSnare,	$07,	dSnare,	dKick,	$0D,	dSnare
	dc.b		$07,	dSnare,	$06,	dKick,	$0E,	dSnare,	$06,	dSnare
	dc.b		$07,	dKick,	$0D,	dSnare,	$04,	dKick,	$03,	dSnare
	dc.b		dKick,	$04,	dKick,	$0D,	dSnare,	$03,	dKick,	$04
	dc.b		dSnare,	$03,	dKick,	dKick,	$0E,	dSnare,	$06,	dSnare
	dc.b		$07,	dKick,	$0D,	dSnare,	$07,	dSnare,	dKick,	$0D
	dc.b		dSnare,	$07,	dSnare,	$06,	dKick,	$0E,	dSnare,	$06
	dc.b		dSnare,	$07,	dKick,	$0D,	dSnare,	$07,	dSnare,	dKick
	dc.b		$0D,	dSnare,	$07,	dSnare,	$06,	dKick,	$0D,	dSnare
	dc.b		$04,	dKick,	$03,	dSnare,	dKick,	$04,	dKick,	$0D
	dc.b		dSnare,	$03,	dKick,	$04,	dSnare,	$03,	dKick,	dKick
	dc.b		$0E,	dSnare,	$06,	dSnare,	$07,	dKick,	$0D,	dSnare
	dc.b		$07,	dSnare,	dKick,	$0D,	dSnare,	$07,	dSnare,	$06
	dc.b		dKick,	$0E,	dSnare,	$06,	dSnare,	$07,	dKick,	$0D
	dc.b		dSnare,	$07,	dSnare,	dKick,	$0D,	dSnare,	$07,	dSnare
	dc.b		$06,	dKick,	$0E,	dSnare,	$03,	dKick,	dSnare,	$04
	dc.b		dKick,	$03,	dKick,	$0D,	dSnare,	$04,	dKick,	$03
	dc.b		dSnare,	dKick,	$04,	dKick,	$0D,	dSnare,	$07,	dSnare
	dc.b		$06,	dKick,	$0E,	dSnare,	$06,	dSnare,	$07,	dKick
	dc.b		$0D,	dSnare,	$07,	dSnare,	dKick,	$0D,	dSnare,	$07
	dc.b		dSnare,	$06,	dKick,	$0E,	dSnare,	$06,	dSnare,	$07
	dc.b		dKick,	$0D,	dSnare,	$07,	dSnare,	$06,	dKick,	$0E
	dc.b		dSnare,	$03,	dKick,	dSnare,	$04,	dKick,	$03,	dKick
	dc.b		$0D,	dSnare,	$04,	dKick,	$03,	dSnare,	dKick,	$04
	dc.b		dKick,	$0D,	dSnare,	$07,	dSnare,	$06,	dKick,	$0E
	dc.b		dSnare,	$06,	dSnare,	$07,	dKick,	$0D,	dSnare,	$07
	dc.b		dSnare,	dKick,	$0D,	dSnare,	$07,	dSnare,	$06,	dKick
	dc.b		$0E,	dSnare,	$06,	dSnare,	$07,	dKick,	$0D,	dSnare
	dc.b		$07,	dSnare,	dKick,	$0D,	dSnare,	$03,	dKick,	$04
	dc.b		dSnare,	$03,	dKick,	dKick,	$0E,	dSnare,	$03,	dKick
	dc.b		dSnare,	$04,	dKick,	$03,	dKick,	$0D,	dSnare,	$07
	dc.b		dSnare,	dKick,	$0D,	dSnare,	$07,	dSnare,	$06,	dKick
	dc.b		$0E,	dSnare,	$06,	dSnare,	$07,	dKick,	$0D,	dSnare
	dc.b		$07,	dSnare,	dKick,	$0D,	dSnare,	$06,	dSnare,	$07
	dc.b		dKick,	$0D,	dSnare,	$07,	dSnare,	dKick,	$0D,	dSnare
	dc.b		$03,	dKick,	$04,	dSnare,	$03,	dKick,	dKick,	$0E
	dc.b		dSnare,	$03,	dKick,	dSnare,	$04,	dKick,	$03
	smpsJump	DrCoffinmanFinal_DAC

DrCoffinmanFinal_Voices:
	dc.b		$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06
	dc.b		$08,$20,$10,$10,$F8,$19,$37,$13,$00;			Voice 00
	dc.b		$3A,$01,$01,$01,$02,$8D,$07,$07,$52,$09,$00,$00,$03,$01,$02,$02
	dc.b		$00,$52,$02,$02,$28,$18,$22,$18,$00;			Voice 01
	even
