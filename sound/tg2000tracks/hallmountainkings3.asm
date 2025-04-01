MountainKing_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     MountainKing_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       MountainKing_DAC
	smpsHeaderFM        MountainKing_FM1,	$00, $0B
	smpsHeaderFM        MountainKing_FM2,	$00, $0D
	smpsHeaderFM        MountainKing_FM3,	$00, $09
	smpsHeaderFM        MountainKing_FM4,	$00, $00
	smpsHeaderFM        MountainKing_FM5,	$00, $00
	smpsHeaderPSG       MountainKing_PSG1,	$D0, $00, $00, $00
	smpsHeaderPSG       MountainKing_PSG2,	$D0, $00, $00, $00
	smpsHeaderPSG       MountainKing_PSG3,	$00, $00, $00, $00

; DAC Data
MountainKing_DAC:

; FM6 Data
MountainKing_FM6:

; PSG1 Data
MountainKing_PSG1:

; PSG2 Data
MountainKing_PSG2:
	smpsStop

; FM1 Data
MountainKing_FM1:
	smpsSetvoice	$00
	smpsAlterVol	$08
	smpsPan		panCentre,	$00
	dc.b		nA4,	$0A,	nB4,	nC5,	nD5,	nE5,	nC5,	nE5
	dc.b		$14,	nEb5,	$0A,	nB4,	nEb5,	$14,	nD5,	$0A
	dc.b		nBb4,	nD5,	$14,	nA4,	$0A,	nB4,	nC5,	nD5
	dc.b		nE5,	nC5,	nE5,	nA5,	nG5,	nE5,	nC5,	nE5
	dc.b		nG5,	$28,	nA4,	$0A,	nB4,	nC5,	nD5,	nE5
	dc.b		nC5,	nE5,	$14,	nEb5,	$0A,	nB4,	nEb5,	$14
	dc.b		nD5,	$0A,	nBb4,	nD5,	$14,	nA4,	$0A,	nB4
	dc.b		nC5,	nD5,	nE5,	nC5,	nE5,	nA5,	nG5,	nE5
	dc.b		nC5,	nE5,	nG5,	$28,	nA4,	$0A,	nB4,	nC5
	dc.b		nD5,	nE5,	nC5,	nE5,	$14,	nEb5,	$0A,	nB4
	dc.b		nEb5,	$14,	nD5,	$0A,	nBb4,	nD5,	$14,	nA4
	dc.b		$0A,	nB4,	nC5,	nD5,	nE5,	nC5,	nE5,	nA5
	dc.b		nG5,	nE5,	nC5,	nE5,	nG5,	$28,	nA4,	$0A
	dc.b		nB4,	nC5,	nD5,	nE5,	nC5,	nE5,	$14,	nEb5
	dc.b		$0A,	nB4,	nEb5,	$14,	nD5,	$0A,	nBb4,	nD5
	dc.b		$14,	nA4,	$0A,	nB4,	nC5,	nD5,	nE5,	nC5
	dc.b		nE5,	nA5,	nG5,	nE5,	nC5,	nE5,	nG5,	$28
	smpsAlterVol	$F8
	smpsPan		panCentre,	$00
	smpsJump	MountainKing_FM1

; FM2 Data
MountainKing_FM2:
	smpsSetvoice	$01
	smpsPan		panCentre,	$00
	dc.b		nF1,	$0A,	nF2,	$14,	nF1,	$05,	nF2,	$0F
	dc.b		nF1,	$14,	nF1,	$0A,	nE1,	nE2,	$14,	nE1
	dc.b		$05,	nE2,	$0F,	nE1,	$14,	nE1,	$0A,	nE1
	dc.b		nE2,	$14,	nE1,	$05,	nE2,	$0F,	nE1,	$14
	dc.b		nE1,	$0A,	nA1,	nA2,	$14,	nA1,	$05,	nA2
	dc.b		nA1,	$0A,	nA1,	nA2,	$05,	nG2,	nFs2,	nF2
	dc.b		nF1,	$0A,	nF2,	$14,	nF1,	$05,	nF2,	$0F
	dc.b		nF1,	$14,	nF1,	$0A,	nE1,	nE2,	$14,	nE1
	dc.b		$05,	nE2,	$0F,	nE1,	$14,	nE1,	$0A,	nE1
	dc.b		nE2,	$14,	nE1,	$05,	nE2,	$0F,	nE1,	$14
	dc.b		nE1,	$0A,	nA1,	nA2,	$14,	nA1,	$05,	nA2
	dc.b		nA1,	$0A,	nA1,	nA1,	nA1,	nA1,	nA2,	$14
	dc.b		nA1,	$05,	nA2,	$0F,	nA1,	$14,	nA1,	$0A
	dc.b		nAb1,	nAb2,	$14,	nAb1,	$05,	nAb2,	$0F,	nAb1
	dc.b		$14,	nAb1,	$0A,	nF1,	nF2,	$14,	nF1,	$05
	dc.b		nF2,	$0F,	nF1,	$14,	nF1,	$0A,	nC2,	nC3
	dc.b		$14,	nG1,	$05,	nG2,	$0F,	nG1,	$0A,	nE2
	dc.b		$05,	nD2,	nC2,	nB1,	nA1,	$0A,	nA2,	$14
	dc.b		nA1,	$05,	nA2,	$0F,	nA1,	$14,	nA1,	$0A
	dc.b		nAb1,	nAb2,	$14,	nAb1,	$05,	nAb2,	$0F,	nAb1
	dc.b		$14,	nAb1,	$0A,	nF1,	nF2,	$14,	nF1,	$05
	dc.b		nF2,	$0F,	nF1,	$14,	nF1,	$0A,	nC2,	nC3
	dc.b		$14,	nG1,	$05,	nG2,	$0F,	nG1,	$0A,	nE2
	dc.b		$05,	nD2,	nC2,	nB1
	smpsSetvoice	$00
	smpsPan		panCentre,	$00
	smpsJump	MountainKing_FM2

; FM3 Data
MountainKing_FM3:
	smpsSetvoice	$02
	smpsAlterVol	$13
	smpsPan		panCentre,	$00
	dc.b		nC5,	$1E,	nG4,	$0A,	nA4,	$1E,	nE4,	$0A
	dc.b		nG4,	$46,	nE4,	$0A,	nD4,	$46,	nE4,	$0A
	dc.b		nC4,	$28,	nC4,	$0A,	nC4,	nC4,	nC4,	nC5
	dc.b		$1E,	nG4,	$0A,	nA4,	$1E,	nE4,	$0A,	nG4
	dc.b		$46,	nE4,	$0A,	nD4,	$46,	nE4,	$0A,	nC4
	dc.b		$28,	nC4,	$0A,	nC4,	nC4,	nC4,	nC5,	$0F
	dc.b		nD5,	nE5,	$7F,	smpsNoAttack,	$7B,	nF5,	$05,	nE5
	dc.b		nD5,	nC5,	nE5,	nD5,	nC5,	nB4,	nC5,	$0F
	dc.b		nD5,	nE5,	$7F,	smpsNoAttack,	$7F,	smpsNoAttack,	$24
	smpsSetvoice	$00
	smpsAlterVol	$ED
	smpsPan		panCentre,	$00
	smpsJump	MountainKing_FM3

; FM4 Data
MountainKing_FM4:
	smpsSetvoice	$02
	smpsAlterVol	$13
	smpsPan		panCentre,	$00
	dc.b		nA4,	$1E,	nE4,	$0A,	nF4,	$1E,	nC4,	$0A
	dc.b		nE4,	$46,	nC4,	$0A,	nB3,	$46,	nC4,	$0A
	dc.b		nA3,	$28,	nA3,	$0A,	nA3,	nA3,	nA3,	nA4
	dc.b		$1E,	nE4,	$0A,	nF4,	$1E,	nC4,	$0A,	nE4
	dc.b		$46,	nC4,	$0A,	nB3,	$46,	nC4,	$0A,	nA3
	dc.b		$28,	nA3,	$0A,	nA3,	nA3,	nA3,	nA4,	$0F
	dc.b		nB4,	nC5,	$7F,	smpsNoAttack,	$7B,	nF5,	$05,	nE5
	dc.b		nD5,	nC5,	nE5,	nD5,	nC5,	nB4,	nA4,	$0F
	dc.b		nB4,	nC5,	$7F,	smpsNoAttack,	$7F,	smpsNoAttack,	$24
	smpsSetvoice	$00
	smpsAlterVol	$ED
	smpsPan		panCentre,	$00
	smpsJump	MountainKing_FM4

; FM5 Data
MountainKing_FM5:
	smpsSetvoice	$03
	smpsAlterVol	$02
	smpsPan		panCentre,	$00
	dc.b		nA1,	$14
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$1E
	smpsSetvoice	$03
	smpsAlterVol	$02
	dc.b		nA1,	$0A
	smpsSetvoice	$04
	smpsAlterVol	$FE
	dc.b		nCs0,	$14
	smpsSetvoice	$00
	smpsPan		panCentre,	$00
	smpsJump	MountainKing_FM5

; PSG3 Data
MountainKing_PSG3:
	dc.b		nRst,	$14
	smpsPSGform	$E7
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$25
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$11
	smpsJump	MountainKing_PSG3

MountainKing_Voices:
	dc.b		$27,$01,$01,$01,$03,$1F,$1F,$1F,$1F,$00,$09,$09,$09,$00,$00,$00
	dc.b		$00,$FF,$FF,$FF,$FF,$04,$11,$00,$0C;			Voice 00
	dc.b		$24,$01,$01,$00,$00,$1F,$1F,$1F,$1F,$08,$0B,$05,$11,$00,$00,$00
	dc.b		$00,$FF,$AF,$FF,$FF,$07,$08,$11,$00;			Voice 01
	dc.b		$1C,$73,$72,$33,$32,$97,$96,$94,$99,$08,$07,$08,$0A,$00,$05,$00
	dc.b		$05,$3F,$4F,$3F,$4F,$1E,$00,$19,$00;			Voice 02
	dc.b		$3B,$0F,$00,$00,$00,$1F,$1F,$1F,$1F,$00,$1F,$1F,$1F,$00,$17,$00
	dc.b		$00,$F0,$07,$F0,$04,$00,$18,$7F,$00;			Voice 03
	dc.b		$3C,$05,$75,$70,$70,$1F,$1F,$1F,$1B,$96,$0C,$00,$00,$00,$00,$00
	dc.b		$16,$F0,$F0,$F0,$0F,$00,$00,$00,$00;			Voice 04
	even
