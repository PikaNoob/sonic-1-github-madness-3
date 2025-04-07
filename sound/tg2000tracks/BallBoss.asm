RedBall4BossRemix_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     RedBall4BossRemix_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       RedBall4BossRemix_DAC
	smpsHeaderFM        RedBall4BossRemix_FM1,	$00, $0B
	smpsHeaderFM        RedBall4BossRemix_FM2,	$00, $0D
	smpsHeaderFM        RedBall4BossRemix_FM3,	$00, $09
	smpsHeaderFM        RedBall4BossRemix_FM4,	$00, $00
	smpsHeaderFM        RedBall4BossRemix_FM5,	$00, $00
	smpsHeaderPSG       RedBall4BossRemix_PSG3,	$00, $00, $00, $00
	smpsHeaderPSG       RedBall4BossRemix_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       RedBall4BossRemix_PSG2,	$00, $00, $00, $00

; FM1 Data
RedBall4BossRemix_FM1:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$0D
	smpsSetvoice	$02
	smpsAlterVol	$0B
	dc.b		nA4,	$09,	nG4,	$08
RedBall4BossRemix_Jump01:
	dc.b		nFs4,	$11,	nG4,	$08,	nRst,	$09,	nE4,	$10
	dc.b		nG4,	$09,	nRst,	$08,	nEb4,	$09,	nEb4,	$08
	dc.b		nEb4,	$09,	nRst,	$08,	nEb4,	$11,	nA4,	$08
	dc.b		nG4,	$09,	nFs4,	$10,	nG4,	$09,	nRst,	$08
	dc.b		nE4,	$11,	nG4,	$08,	nRst,	$09,	nEb4,	$2A
	dc.b		nRst,	$08,	nA4,	$09,	nG4,	$08,	nFs4,	$11
	dc.b		nG4,	$08,	nRst,	$09,	nE4,	$11,	nG4,	$08
	dc.b		nRst,	$09,	nEb4,	$08,	nEb4,	nEb4,	$09,	nRst
	dc.b		$08,	nEb4,	$09,	nRst,	$08,	nEb4,	nD4,	$09
	dc.b		nC4,	$11,	nD4,	$08,	nRst,	nEb4,	$11,	nF4
	dc.b		$09,	nRst,	$08,	nG4,	$2A,	nRst,	$09,	nA4
	dc.b		$08,	nG4,	nFs4,	$11,	nG4,	$09,	nRst,	$08
	dc.b		nE4,	$11,	nG4,	$08,	nRst,	$09,	nEb4,	$08
	dc.b		nEb4,	$09,	nEb4,	$08,	nRst,	nEb4,	$11,	nA4
	dc.b		$09,	nG4,	$08,	nFs4,	$11,	nG4,	$08,	nRst
	dc.b		$09,	nA4,	$11,	nBb4,	$08,	nRst,	nB4,	$2A
	dc.b		nRst,	$09,	nBb4,	$08,	nB4,	$09,	nC5,	$11
	dc.b		nAb4,	$08,	nA4,	nB4,	$11,	nFs4,	$09,	nG4
	dc.b		$08,	nA4,	nA4,	$09,	nF4,	$08,	nFs4,	$09
	dc.b		nG4,	$10,	nFs4,	$09,	nG4,	$08,	nG4,	$11
	dc.b		nFs4,	$09,	nG4,	$08,	nAb4,	$11,	nG4,	nRst
	dc.b		$32,	nA4,	$08,	nG4,	$09
	smpsPan		panCentre,	$00
	smpsJump	RedBall4BossRemix_Jump01

; FM2 Data
RedBall4BossRemix_FM2:
	smpsSetvoice	$00
	smpsAlterVol	$0C
	smpsPan		panCentre,	$00
	dc.b		nC2,	$10,	nC3,	$11,	nC2,	nC3,	nC2,	nC3
	dc.b		$10,	nB1,	$11,	nB2,	nC2,	nC3,	nC2,	nC3
	dc.b		$10,	nCs2,	$11,	nCs3,	nB1,	nB2,	nC2,	nC3
	dc.b		$10,	nC2,	$11,	nC3,	nC2,	nC3,	nB1,	nB2
	dc.b		$10,	nC2,	$11,	nC3,	nC2,	nC3,	nCs2,	$21
	dc.b		nB1,	$22
RedBall4BossRemix_Jump02:
	dc.b		nC2,	$11,	nC3,	nC2,	$10,	nC3,	$11,	nB1
	dc.b		nB2,	nB1,	nB2,	nC2,	$10,	nC3,	$11,	nC2
	dc.b		nC3,	nCs2,	nCs3,	nB1,	$10,	nB2,	$11,	nC2
	dc.b		nC3,	nC2,	nC3,	nB1,	$10,	nB2,	$11,	nB1
	dc.b		nB2,	nC2,	nC3,	$10,	nC2,	$11,	nC3,	nB1
	dc.b		$22,	nG1,	$21,	nC2,	$11,	nC3,	nC2,	nC3
	dc.b		nB1,	nB2,	$10,	nB1,	$11,	nB2,	nC2,	nC3
	dc.b		nC2,	nC3,	$10,	nB1,	$11,	nB2,	nB1,	nB2
	dc.b		nE2,	nRst,	$10,	nA2,	$11,	nRst,	nD2,	nRst
	dc.b		nG2,	$10,	nRst,	$11,	nG2,	nFs2,	$09,	nG2
	dc.b		$08,	nAb2,	$11,	nG2,	nRst,	$43
	smpsPan		panCentre,	$00
	smpsJump	RedBall4BossRemix_Jump02

; FM3 Data
RedBall4BossRemix_FM3:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$10
	smpsSetvoice	$01
	smpsAlterVol	$0A
	dc.b		nE4,	$11,	nRst,	nE4,	nRst,	nE4,	$10,	nRst
	dc.b		$11,	nEb4,	nRst,	nE4,	nRst,	nE4,	$10,	nRst
	dc.b		$11,	nF4,	nRst,	nEb4,	nRst,	nE4,	$10,	nRst
	dc.b		$11,	nE4,	nRst,	nE4,	nRst,	nEb4,	$10,	nRst
	dc.b		$11,	nE4,	nRst,	nE4,	nRst,	$21,	nEb4,	$22
RedBall4BossRemix_Jump03:
	dc.b		nRst,	$11,	nE4,	$08,	nE4,	$09,	nRst,	$10
	dc.b		nE4,	$11,	nRst,	nEb4,	nRst,	nEb4,	$08,	nEb4
	dc.b		$09,	nRst,	$10,	nE4,	$11,	nRst,	nE4,	nRst
	dc.b		nF4,	nRst,	$10,	nEb4,	$11,	nRst,	nE4,	$08
	dc.b		nE4,	$09,	nRst,	$11,	nE4,	nRst,	$10,	nEb4
	dc.b		$11,	nRst,	nEb4,	$08,	nEb4,	$09,	nRst,	$11
	dc.b		nE4,	$10,	nRst,	$11,	nE4,	nRst,	$22,	nEb4
	dc.b		$21,	nRst,	$11,	nE4,	$09,	nE4,	$08,	nRst
	dc.b		$11,	nE4,	nRst,	nEb4,	$10,	nRst,	$11,	nEb4
	dc.b		$09,	nEb4,	$08,	nRst,	$11,	nE4,	$08,	nE4
	dc.b		$09,	nRst,	$11,	nE4,	$10,	nRst,	$11,	nEb4
	dc.b		nRst,	nEb4,	$08,	nEb4,	$09,	nRst,	$11,	nE4
	dc.b		$10,	nRst,	$11,	nA4,	nRst,	nD4,	nRst,	$21
	dc.b		nG4,	$11,	nFs4,	$09,	nG4,	$08,	nAb4,	$11
	dc.b		nG4,	nRst,	$21,	nEb4,	$22
	smpsPan		panCentre,	$00
	smpsJump	RedBall4BossRemix_Jump03

; FM4 Data
RedBall4BossRemix_FM4:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$10
	smpsSetvoice	$01
	smpsAlterVol	$0A
	dc.b		nC4,	$11,	nRst,	nC4,	nRst,	nC4,	$10,	nRst
	dc.b		$11,	nB3,	nRst,	nC4,	nRst,	nC4,	$10,	nRst
	dc.b		$11,	nCs4,	nRst,	nB3,	nRst,	nC4,	$10,	nRst
	dc.b		$11,	nC4,	nRst,	nC4,	nRst,	nB3,	$10,	nRst
	dc.b		$11,	nC4,	nRst,	nC4,	nRst,	$21,	nB3,	$22
RedBall4BossRemix_Jump04:
	dc.b		nRst,	$11,	nC4,	$08,	nC4,	$09,	nRst,	$10
	dc.b		nC4,	$11,	nRst,	nB3,	nRst,	nB3,	$08,	nB3
	dc.b		$09,	nRst,	$10,	nC4,	$11,	nRst,	nC4,	nRst
	dc.b		nCs4,	nRst,	$10,	nB3,	$11,	nRst,	nC4,	$08
	dc.b		nC4,	$09,	nRst,	$11,	nC4,	nRst,	$10,	nB3
	dc.b		$11,	nRst,	nB3,	$08,	nB3,	$09,	nRst,	$11
	dc.b		nC4,	$10,	nRst,	$11,	nC4,	nRst,	$22,	nB3
	dc.b		$21,	nRst,	$11,	nC4,	$09,	nC4,	$08,	nRst
	dc.b		$11,	nC4,	nRst,	nB3,	$10,	nRst,	$11,	nB3
	dc.b		$09,	nB3,	$08,	nRst,	$11,	nC4,	$08,	nC4
	dc.b		$09,	nRst,	$11,	nC4,	$10,	nRst,	$11,	nB3
	dc.b		nRst,	nB3,	$08,	nB3,	$09,	nRst,	$11,	nB3
	dc.b		$10,	nRst,	$11,	nE4,	nRst,	nB3,	nRst,	$21
	dc.b		nD4,	$11,	nCs4,	$09,	nD4,	$08,	nEb4,	$11
	dc.b		nD4,	nRst,	$21,	nB3,	$22
	smpsPan		panCentre,	$00
	smpsJump	RedBall4BossRemix_Jump04

; FM5 Data
RedBall4BossRemix_FM5:
	smpsPan		panCentre,	$00
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$16
	smpsSetvoice	$02
	smpsAlterVol	$15
	smpsModSet	$00,	$02,	$03,	$03
	dc.b		nA4,	$08
RedBall4BossRemix_Jump05:
	dc.b		nG4,	nFs4,	$11,	nG4,	$09,	nRst,	$08,	nE4
	dc.b		$11,	nG4,	$08,	nRst,	$09,	nEb4,	$08,	nEb4
	dc.b		$09,	nEb4,	$08,	nRst,	nEb4,	$11,	nA4,	$09
	dc.b		nG4,	$08,	nFs4,	$11,	nG4,	$08,	nRst,	$09
	dc.b		nE4,	$10,	nG4,	$09,	nRst,	$08,	nEb4,	$2A
	dc.b		nRst,	$09,	nA4,	$08,	nG4,	$09,	nFs4,	$10
	dc.b		nG4,	$09,	nRst,	$08,	nE4,	$11,	nG4,	$09
	dc.b		nRst,	$08,	nEb4,	nEb4,	$09,	nEb4,	$08,	nRst
	dc.b		$09,	nEb4,	$08,	nRst,	nEb4,	$09,	nD4,	$08
	dc.b		nC4,	$11,	nD4,	$08,	nRst,	$09,	nEb4,	$11
	dc.b		nF4,	$08,	nRst,	$09,	nG4,	$2A,	nRst,	$08
	dc.b		nA4,	nG4,	$09,	nFs4,	$11,	nG4,	$08,	nRst
	dc.b		$09,	nE4,	$10,	nG4,	$09,	nRst,	$08,	nEb4
	dc.b		$09,	nEb4,	$08,	nEb4,	nRst,	$09,	nEb4,	$11
	dc.b		nA4,	$08,	nG4,	nFs4,	$11,	nG4,	$09,	nRst
	dc.b		$08,	nA4,	$11,	nBb4,	$08,	nRst,	$09,	nB4
	dc.b		$2A,	nRst,	$08,	nBb4,	$09
	smpsAlterVol	$FF
	dc.b			nB4,	$08,	nC5,	$11,	nAb4,	$08,	nA4
	dc.b		$09,	nB4,	$11,	nFs4,	$08,	nG4,	nA4,	$09
	dc.b		nA4,	$08,	nF4,	$09,	nFs4,	$08,	nG4,	$11
	dc.b		nFs4,	$08,	nG4,	$09,	nG4,	$11,	nFs4,	$08
	dc.b		nG4,	nAb4,	$11,	nG4,	nRst,	$32,	nA4,	$09
	smpsAlterVol	$01
	smpsPan		panCentre,	$00
	smpsModSet	$00,	$02,	$03,	$03
	smpsJump	RedBall4BossRemix_Jump05

; PSG1 Data
RedBall4BossRemix_PSG1:
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$0D
	smpsSetVol	$03
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1
	smpsSetVol	$FF
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1,	$05
	smpsSetVol	$03
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04
RedBall4BossRemix_Jump06:
	smpsSetVol	$03
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$0B
	smpsSetVol	$01
	dc.b		nFs1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$09
	smpsSetVol	$03
	dc.b		nE1,	$01
	smpsSetVol	$FF
	dc.b		nE1
	smpsSetVol	$FF
	dc.b		nE1,	$02
	smpsSetVol	$FF
	dc.b		nE1,	$0A
	smpsSetVol	$01
	dc.b		nE1,	$02
	smpsSetVol	$02
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$08
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$05
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$05,	nRst,	$08
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$0B
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nA1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1,	$04
	smpsSetVol	$03
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$05
	smpsSetVol	$03
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$0A
	smpsSetVol	$01
	dc.b		nFs1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$08
	smpsSetVol	$03
	dc.b		nE1,	$01
	smpsSetVol	$FF
	dc.b		nE1
	smpsSetVol	$FF
	dc.b		nE1,	$02
	smpsSetVol	$FF
	dc.b		nE1,	$0B
	smpsSetVol	$01
	dc.b		nE1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$09
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$0B
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$09,	nRst,	$08
	smpsSetVol	$F8
	smpsAlterNote	$00
	dc.b		nA1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1,	$03
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1,	$04
	smpsSetVol	$03
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04
	smpsSetVol	$03
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$0B
	smpsSetVol	$01
	dc.b		nFs1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$09
	smpsSetVol	$03
	dc.b		nE1,	$01
	smpsSetVol	$FF
	dc.b		nE1
	smpsSetVol	$FF
	dc.b		nE1,	$02
	smpsSetVol	$FF
	dc.b		nE1,	$0B
	smpsSetVol	$01
	dc.b		nE1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$09
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$03
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04,	nRst,	$08
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$05,	nRst,	$08
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04
	smpsSetVol	$03
	smpsAlterNote	$00
	dc.b		nD1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nD1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nD1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nD1,	$04
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nC1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nC1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nC1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nC1,	$0B
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nC1,	$02
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nD1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nD1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nD1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nD1,	$04,	nRst,	$08
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$0A
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nF1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nF1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nF1,	$03
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nF1,	$04,	nRst,	$08
	smpsSetVol	$03
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$0B
	smpsSetVol	$01
	dc.b		nG1,	$02
	smpsSetVol	$01
	dc.b		nG1
	smpsSetVol	$01
	dc.b		nG1,	$01
	smpsSetVol	$01
	dc.b		nG1
	smpsSetVol	$01
	dc.b		nG1,	$02
	smpsSetVol	$01
	dc.b		nG1
	smpsSetVol	$01
	dc.b		nG1
	smpsSetVol	$01
	dc.b		nG1,	$03
	smpsSetVol	$01
	dc.b		nG1,	$01
	smpsSetVol	$01
	dc.b		nG1,	$02
	smpsSetVol	$01
	dc.b		nG1,	$09,	nRst
	smpsSetVol	$F8
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1
	smpsSetVol	$FF
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1,	$04
	smpsSetVol	$03
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04
	smpsSetVol	$03
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$0A
	smpsSetVol	$01
	dc.b		nFs1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$05,	nRst,	$08
	smpsSetVol	$03
	dc.b		nE1,	$01
	smpsSetVol	$FF
	dc.b		nE1
	smpsSetVol	$FF
	dc.b		nE1,	$02
	smpsSetVol	$FF
	dc.b		nE1,	$0B
	smpsSetVol	$01
	dc.b		nE1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$09
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$05
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04,	nRst,	$08
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$0A
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nA1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1,	$05
	smpsSetVol	$03
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04
	smpsSetVol	$03
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$0B
	smpsSetVol	$01
	dc.b		nFs1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$09
	smpsSetVol	$03
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1
	smpsSetVol	$FF
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1,	$0A
	smpsSetVol	$01
	dc.b		nA1,	$03
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nBb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nBb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nBb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nBb1,	$04,	nRst,	$08
	smpsSetVol	$03
	dc.b		nB1,	$01
	smpsSetVol	$FF
	dc.b		nB1
	smpsSetVol	$FF
	dc.b		nB1,	$03
	smpsSetVol	$FF
	dc.b		nB1,	$0A
	smpsSetVol	$01
	dc.b		nB1,	$02
	smpsSetVol	$01
	dc.b		nB1
	smpsSetVol	$01
	dc.b		nB1,	$01
	smpsSetVol	$01
	dc.b		nB1
	smpsSetVol	$01
	dc.b		nB1,	$03
	smpsSetVol	$01
	dc.b		nB1,	$02
	smpsSetVol	$01
	dc.b		nB1
	smpsSetVol	$01
	dc.b		nB1
	smpsSetVol	$01
	dc.b		nB1,	$01
	smpsSetVol	$01
	dc.b		nB1,	$02
	smpsSetVol	$01
	dc.b		nB1,	$09,	nRst
	smpsSetVol	$F8
	dc.b		nBb1,	$01
	smpsSetVol	$FF
	dc.b		nBb1
	smpsSetVol	$FF
	dc.b		nBb1,	$02
	smpsSetVol	$FF
	dc.b		nBb1,	$04
	smpsSetVol	$03
	dc.b		nB1,	$01
	smpsSetVol	$FF
	dc.b		nB1
	smpsSetVol	$FF
	dc.b		nB1,	$02
	smpsSetVol	$FF
	dc.b		nB1,	$05
	smpsSetVol	$03
	smpsAlterNote	$00
	dc.b		nC2,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nC2
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nC2,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nC2,	$0A
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nC2,	$03
	smpsSetVol	$02
	dc.b		nAb1,	$01
	smpsSetVol	$FF
	dc.b		nAb1
	smpsSetVol	$FF
	dc.b		nAb1,	$02
	smpsSetVol	$FF
	dc.b		nAb1,	$04
	smpsSetVol	$03
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1
	smpsSetVol	$FF
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1,	$04
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nB1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nB1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nB1,	$03
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nB1,	$0A
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nB1,	$02
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nFs1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nFs1,	$05
	smpsSetVol	$03
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04
	smpsSetVol	$03
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1
	smpsSetVol	$FF
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1,	$04
	smpsSetVol	$03
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1
	smpsSetVol	$FF
	dc.b		nA1,	$04
	smpsSetVol	$03
	dc.b		nF1,	$01
	smpsSetVol	$FF
	dc.b		nF1
	smpsSetVol	$FF
	dc.b		nF1,	$02
	smpsSetVol	$FF
	dc.b		nF1,	$04
	smpsSetVol	$03
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$05
	smpsSetVol	$03
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$0A
	smpsSetVol	$01
	dc.b		nG1,	$02
	smpsSetVol	$02
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$04
	smpsSetVol	$03
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04
	smpsSetVol	$03
	dc.b		nG3,	$01
	smpsSetVol	$FF
	dc.b		nG3
	smpsSetVol	$FF
	dc.b		nG3,	$03
	smpsSetVol	$FF
	dc.b		nG3,	$0A
	smpsSetVol	$01
	dc.b		nG3,	$02
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nFs3,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nFs3
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nFs3,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nFs3,	$05
	smpsSetVol	$03
	smpsAlterNote	$00
	dc.b		nG3,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nG3
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nG3,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nG3,	$04
	smpsSetVol	$03
	dc.b		nAb3,	$01
	smpsSetVol	$FF
	dc.b		nAb3
	smpsSetVol	$FF
	dc.b		nAb3,	$02
	smpsSetVol	$FF
	dc.b		nAb3,	$0B
	smpsSetVol	$01
	dc.b		nAb3,	$02
	smpsSetVol	$02
	dc.b		nG3,	$01
	smpsSetVol	$FF
	dc.b		nG3
	smpsSetVol	$FF
	dc.b		nG3,	$02
	smpsSetVol	$FF
	dc.b		nG3,	$0B
	smpsSetVol	$01
	dc.b		nG3,	$02,	nRst,	$32
	smpsSetVol	$02
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1
	smpsSetVol	$FF
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1,	$04
	smpsSetVol	$03
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04
	smpsSetVol	$01
	smpsJump	RedBall4BossRemix_Jump06

; PSG2 Data
RedBall4BossRemix_PSG2:
	dc.b		nRst,	$7F,	$7F,	$7F,	$7F,	$0D
	smpsSetVol	$05
	dc.b		nA3,	$09,	nG3,	$10
RedBall4BossRemix_Jump07:
	dc.b		nG3,	$08
	smpsSetVol	$03
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$03
	smpsSetVol	$FF
	dc.b		nFs1,	$0A
	smpsSetVol	$01
	dc.b		nFs1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$05,	nRst,	$08
	smpsSetVol	$03
	dc.b		nE1,	$01
	smpsSetVol	$FF
	dc.b		nE1
	smpsSetVol	$FF
	dc.b		nE1,	$02
	smpsSetVol	$FF
	dc.b		nE1,	$0B
	smpsSetVol	$01
	dc.b		nE1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$09
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$05
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04,	nRst,	$08
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$03
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$0A
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nA1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1,	$0B
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nA1,	$02
	smpsSetVol	$02
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$0B
	smpsSetVol	$01
	dc.b		nFs1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$09
	smpsSetVol	$03
	dc.b		nE1,	$01
	smpsSetVol	$FF
	dc.b		nE1
	smpsSetVol	$FF
	dc.b		nE1,	$02
	smpsSetVol	$FF
	dc.b		nE1,	$0A
	smpsSetVol	$01
	dc.b		nE1,	$02
	smpsSetVol	$02
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$08
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$03
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$0A
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$01,	nRst,	$14
	smpsSetVol	$FA
	smpsAlterNote	$00
	dc.b		nA1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1,	$0B
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nA1,	$02
	smpsSetVol	$02
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$0A
	smpsSetVol	$01
	dc.b		nFs1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$08
	smpsSetVol	$03
	dc.b		nE1,	$01
	smpsSetVol	$FF
	dc.b		nE1
	smpsSetVol	$FF
	dc.b		nE1,	$02
	smpsSetVol	$FF
	dc.b		nE1,	$0B
	smpsSetVol	$01
	dc.b		nE1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$05,	nRst,	$08
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$03
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04,	nRst,	$09
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04,	nRst,	$08
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$0A
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$02
	dc.b		nC1,	$01
	smpsSetVol	$FF
	dc.b		nC1
	smpsSetVol	$FF
	dc.b		nC1,	$02
	smpsSetVol	$FF
	dc.b		nC1,	$0B
	smpsSetVol	$01
	dc.b		nC1,	$02
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nD1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nD1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nD1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nD1,	$04,	nRst,	$09
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$0B
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nF1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nF1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nF1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nF1,	$04,	nRst,	$09
	smpsSetVol	$03
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$0A
	smpsSetVol	$01
	dc.b		nG1,	$02
	smpsSetVol	$01
	dc.b		nG1
	smpsSetVol	$01
	dc.b		nG1
	smpsSetVol	$01
	dc.b		nG1,	$01
	smpsSetVol	$01
	dc.b		nG1,	$02
	smpsSetVol	$01
	dc.b		nG1
	smpsSetVol	$01
	dc.b		nG1
	smpsSetVol	$01
	dc.b		nG1
	smpsSetVol	$01
	dc.b		nG1,	$01,	nRst,	$14
	smpsSetVol	$FA
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1
	smpsSetVol	$FF
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1,	$0B
	smpsSetVol	$01
	dc.b		nA1,	$02
	smpsSetVol	$02
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$0B
	smpsSetVol	$01
	dc.b		nFs1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$09
	smpsSetVol	$03
	dc.b		nE1,	$01
	smpsSetVol	$FF
	dc.b		nE1
	smpsSetVol	$FF
	dc.b		nE1,	$02
	smpsSetVol	$FF
	dc.b		nE1,	$0A
	smpsSetVol	$01
	dc.b		nE1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$03
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$08
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$05
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$04,	nRst,	$09
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nEb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nEb1,	$0B
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nEb1,	$02
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nA1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nA1,	$0A
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nA1,	$02
	smpsSetVol	$02
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$0A
	smpsSetVol	$01
	dc.b		nFs1,	$02
	smpsSetVol	$02
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$03
	smpsSetVol	$FF
	dc.b		nG1,	$04,	nRst,	$08
	smpsSetVol	$03
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1
	smpsSetVol	$FF
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1,	$0B
	smpsSetVol	$01
	dc.b		nA1,	$02
	smpsSetVol	$02
	smpsAlterNote	$01
	dc.b		nBb1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nBb1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nBb1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nBb1,	$04,	nRst,	$09
	smpsSetVol	$03
	dc.b		nB1,	$01
	smpsSetVol	$FF
	dc.b		nB1
	smpsSetVol	$FF
	dc.b		nB1,	$02
	smpsSetVol	$FF
	dc.b		nB1,	$0B
	smpsSetVol	$01
	dc.b		nB1,	$02
	smpsSetVol	$01
	dc.b		nB1
	smpsSetVol	$01
	dc.b		nB1,	$01
	smpsSetVol	$01
	dc.b		nB1
	smpsSetVol	$01
	dc.b		nB1,	$02
	smpsSetVol	$01
	dc.b		nB1
	smpsSetVol	$01
	dc.b		nB1
	smpsSetVol	$01
	dc.b		nB1
	smpsSetVol	$01
	dc.b		nB1,	$01,	nRst,	$14
	smpsSetVol	$FA
	dc.b		nBb1,	$01
	smpsSetVol	$FF
	dc.b		nBb1
	smpsSetVol	$FF
	dc.b		nBb1,	$02
	smpsSetVol	$FF
	dc.b		nBb1,	$0B
	smpsSetVol	$01
	dc.b		nBb1,	$02
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nC2,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nC2
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nC2,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nC2,	$0B
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nC2,	$02
	smpsSetVol	$02
	dc.b		nAb1,	$01
	smpsSetVol	$FF
	dc.b		nAb1
	smpsSetVol	$FF
	dc.b		nAb1,	$02
	smpsSetVol	$FF
	dc.b		nAb1,	$04
	smpsSetVol	$03
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1
	smpsSetVol	$FF
	dc.b		nA1,	$03
	smpsSetVol	$FF
	dc.b		nA1,	$04
	smpsSetVol	$03
	smpsAlterNote	$01
	dc.b		nB1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nB1
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nB1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nB1,	$0A
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nB1,	$03
	smpsSetVol	$02
	smpsAlterNote	$00
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nFs1
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nFs1,	$04
	smpsSetVol	$03
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$04
	smpsSetVol	$03
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1
	smpsSetVol	$FF
	dc.b		nA1,	$04
	smpsSetVol	$03
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1
	smpsSetVol	$FF
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1,	$04
	smpsSetVol	$03
	dc.b		nF1,	$01
	smpsSetVol	$FF
	dc.b		nF1
	smpsSetVol	$FF
	dc.b		nF1,	$02
	smpsSetVol	$FF
	dc.b		nF1,	$05
	smpsSetVol	$03
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$04
	smpsSetVol	$03
	dc.b		nG1,	$01
	smpsSetVol	$FF
	dc.b		nG1
	smpsSetVol	$FF
	dc.b		nG1,	$02
	smpsSetVol	$FF
	dc.b		nG1,	$0B
	smpsSetVol	$01
	dc.b		nG1,	$02
	smpsSetVol	$02
	dc.b		nFs1,	$01
	smpsSetVol	$FF
	dc.b		nFs1
	smpsSetVol	$FF
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$04
	smpsSetVol	$FE
	dc.b		nG2,	$01
	smpsSetVol	$FF
	dc.b		nG2
	smpsSetVol	$FF
	dc.b		nG2,	$03
	smpsSetVol	$FF
	dc.b		nG2,	$0A
	smpsSetVol	$01
	dc.b		nG2,	$02
	smpsSetVol	$02
	dc.b		nFs2,	$01
	smpsSetVol	$FF
	dc.b		nFs2
	smpsSetVol	$FF
	dc.b		nFs2,	$02
	smpsSetVol	$FF
	dc.b		nFs2,	$05
	smpsSetVol	$03
	dc.b		nG2,	$01
	smpsSetVol	$FF
	dc.b		nG2
	smpsSetVol	$FF
	dc.b		nG2,	$02
	smpsSetVol	$FF
	dc.b		nG2,	$04
	smpsSetVol	$03
	dc.b		nAb2,	$01
	smpsSetVol	$FF
	dc.b		nAb2
	smpsSetVol	$FF
	dc.b		nAb2,	$02
	smpsSetVol	$FF
	dc.b		nAb2,	$0B
	smpsSetVol	$01
	dc.b		nAb2,	$02
	smpsSetVol	$02
	dc.b		nG2,	$01
	smpsSetVol	$FF
	dc.b		nG2
	smpsSetVol	$FF
	dc.b		nG2,	$02
	smpsSetVol	$FF
	dc.b		nG2,	$0B
	smpsSetVol	$01
	dc.b		nG2,	$02,	nRst,	$32
	smpsSetVol	$04
	dc.b		nG2,	$08
	smpsSetVol	$03
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1,	$01
	smpsSetVol	$FF
	dc.b		nA1,	$02
	smpsSetVol	$FF
	dc.b		nA1,	$04
	smpsJump	RedBall4BossRemix_Jump07

; PSG3 Data
RedBall4BossRemix_PSG3:
	smpsSetVol	$02
	smpsPSGform	$E7
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
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
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
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
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
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
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
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
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
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
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
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
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$F4
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
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
RedBall4BossRemix_Jump08:
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
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
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
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
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
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
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
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
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
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
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
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
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
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
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
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
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
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
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$F4
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
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$04
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
	dc.b		nA5,	$03
	smpsSetVol	$F4
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$F4
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$F4
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
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$03
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$03
	smpsSetVol	$F4
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$04
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5,	$01
	smpsSetVol	$F8
	smpsAlterNote	$01
	dc.b		nA5,	$02
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
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
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nA5,	$01
	smpsSetVol	$FF
	smpsJump	RedBall4BossRemix_Jump08

; DAC Data
RedBall4BossRemix_DAC:
	dc.b		dKick,	$10,	dSnare,	$11,	dKick,	dSnare,	dKick,	dSnare
	dc.b		$10,	dKick,	$11,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		$10,	dKick,	$11,	dSnare,	$09,	dKick,	$04,	dKick
	dc.b		dKick,	$08,	dKick,	$09,	dSnare,	$08,	dSnare,	$09
	dc.b		dKick,	$11,	dSnare,	$10,	dKick,	$11,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	$10,	dKick,	$11,	dSnare,	dKick
	dc.b		dSnare,	$08,	dKick,	$04,	dKick,	$05,	dKick,	$08
	dc.b		dKick,	$11,	dSnare,	dSnare,	$08,	dSnare,	$09,	dSnare
	dc.b		$08
RedBall4BossRemix_Jump09:
	dc.b		dKick,	$11,	dSnare,	dKick,	$08,	dKick,	dSnare,	$11
	dc.b		dKick,	dSnare,	$09,	dKick,	$10,	dKick,	$09,	dSnare
	dc.b		$11,	dKick,	$10,	dSnare,	$11,	dKick,	$09,	dKick
	dc.b		$08,	dSnare,	$11,	dKick,	dSnare,	$08,	dKick,	$11
	dc.b		dKick,	$08,	dSnare,	$09,	dSnare,	$08,	dKick,	$11
	dc.b		dSnare,	dKick,	$08,	dKick,	$09,	dSnare,	$11,	dKick
	dc.b		$10,	dSnare,	$09,	dKick,	$11,	dKick,	$08,	dSnare
	dc.b		$11,	dKick,	dSnare,	$10,	dKick,	$09,	dKick,	$08
	dc.b		dSnare,	$11,	dKick,	dSnare,	$08,	dKick,	$11,	dSnare
	dc.b		$09,	dSnare,	$08,	dSnare,	dKick,	$11,	dSnare,	dKick
	dc.b		$09,	dKick,	$08,	dSnare,	$11,	dKick,	dSnare,	$08
	dc.b		dKick,	$11,	dKick,	$08,	dSnare,	$11,	dKick,	dSnare
	dc.b		dKick,	$08,	dKick,	$09,	dSnare,	$10,	dKick,	$11
	dc.b		dSnare,	$09,	dKick,	$10,	dSnare,	$09,	dSnare,	$08
	dc.b		dSnare,	$09,	dKick,	$19,	dSnare,	$08,	dKick,	$11
	dc.b		dSnare,	dKick,	$19,	dSnare,	$09,	dKick,	$08,	dKick
	dc.b		dSnare,	$09,	dSnare,	$08,	dKick,	$11,	dSnare,	$09
	dc.b		dSnare,	$08,	dKick,	$11,	dSnare,	$08,	dSnare,	$09
	dc.b		dKick,	$10,	dKick,	$11,	dSnare,	$09,	dSnare,	$08
	dc.b		dSnare,	dSnare,	$09
	smpsJump	RedBall4BossRemix_Jump09

RedBall4BossRemix_Voices:
	dc.b		$25,$31,$12,$0A,$22,$1F,$1F,$1F,$1F,$0E,$0B,$10,$0E,$10,$00,$00
	dc.b		$00,$E7,$3F,$3F,$3F,$06,$02,$06,$00;			Voice 00
	dc.b		$3D,$01,$21,$51,$01,$12,$14,$14,$16,$0A,$05,$05,$05,$00,$00,$00
	dc.b		$00,$2B,$2B,$2B,$1B,$19,$0D,$0D,$00;			Voice 01
	dc.b		$04,$12,$03,$71,$01,$13,$14,$15,$14,$09,$0F,$00,$0F,$00,$00,$00
	dc.b		$00,$3A,$1B,$0A,$0B,$0E,$04,$0D,$00;			Voice 02
	even
