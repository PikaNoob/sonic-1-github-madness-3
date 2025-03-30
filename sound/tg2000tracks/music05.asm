EpicCutscene_Header:
smpsHeaderStartSong = 1
		smpsHeaderVoice     EpicCutscene_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $26

	smpsHeaderDAC       EpicCutscene_DAC
	smpsHeaderFM        EpicCutscene_FM1,	$00, $0B
	smpsHeaderFM        EpicCutscene_FM2,	$00, $0D
	smpsHeaderFM        EpicCutscene_FM3,	$00, $09
	smpsHeaderFM        EpicCutscene_FM4,	$00, $00
	smpsHeaderFM        EpicCutscene_FM5,	$00, $00
	smpsHeaderPSG       EpicCutscene_PSG1,	$D0, $00, $00, $00
	smpsHeaderPSG       EpicCutscene_PSG2,	$D0, $00, $00, $00
	smpsHeaderPSG       EpicCutscene_PSG3,	$00, $00, $00, $00


; FM1 Data
EpicCutscene_FM1:
	smpsSetvoice	$00
	smpsAlterVol	$11
	smpsPan		panCentre,	$00
	dc.b		nF3,	$0E,	nF2,	$07,	nF2,	nF3,	$0F,	nF3
	dc.b		$0E,	nRst,	$3A,	nFs3,	$0E,	nFs2,	$07,	nFs2
	dc.b		$08,	nFs3,	$0E,	nFs3,	nRst,	$3A,	nF3,	$0E
	dc.b		nF2,	$08,	nF2,	$07,	nF3,	$0E,	nF3,	$0F
	dc.b		nRst,	$39,	nAb3,	$0F,	nAb2,	$07,	nAb2,	nAb3
	dc.b		$0E,	nAb3,	$0F,	nRst,	$39
	smpsStop

; FM2 Data
EpicCutscene_FM2:
	smpsSetvoice	$01
	smpsAlterVol	$08
	smpsPan		panCentre,	$00
	dc.b		nF3,	$0E,	nF2,	nF3,	$0F,	nF2,	$0E,	nF3
	dc.b		$0F,	nF2,	$0E,	nF3,	nF2,	$0F,	nFs3,	$0E
	dc.b		nFs2,	$0F,	nFs3,	$0E,	nFs2,	nFs3,	$0F,	nFs2
	dc.b		$0E,	nFs3,	$0F,	nFs2,	$0E,	nF3,	nF2,	$0F
	dc.b		nF3,	$0E,	nF2,	$0F,	nF3,	$0E,	nF2,	nF3
	dc.b		$0F,	nF2,	$0E,	nAb3,	$0F,	nAb2,	$0E,	nAb3
	dc.b		nAb2,	$0F,	nAb3,	$0E,	nAb2,	$0F,	nAb3,	$0E
	dc.b		nAb2
	smpsStop

; FM3 Data
EpicCutscene_FM3:
	smpsSetvoice	$00
	smpsAlterVol	$11
	smpsPan		panCentre,	$00
	smpsModSet	$00,	$02,	$10,	$03
	dc.b		nF3,	$0E,	nF2,	$07,	nF2,	nF3,	$0F,	nF3
	dc.b		$0E,	nRst,	$3A,	nFs3,	$0E,	nFs2,	$07,	nFs2
	dc.b		$08,	nFs3,	$0E,	nFs3,	nRst,	$3A,	nF3,	$0E
	dc.b		nF2,	$08,	nF2,	$07,	nF3,	$0E,	nF3,	$0F
	dc.b		nRst,	$39,	nAb3,	$0F,	nAb2,	$07,	nAb2,	nAb3
	dc.b		$0E,	nAb3,	$0F,	nRst,	$39
	smpsStop

; FM4 Data
EpicCutscene_FM4:
	smpsSetvoice	$02
	smpsAlterVol	$0E
	smpsPan		panCentre,	$00
	dc.b		nF4,	$03,	nC4,	$04,	nA3,	$03,	nF3,	$04
	dc.b		nF4,	nC4,	$03,	nA3,	$04,	nF3,	$03,	nF4
	dc.b		$04,	nC4,	nA3,	$03,	nF3,	$04,	nF4,	$03
	dc.b		nC4,	$04,	nA3,	nF3,	$03,	nF4,	$04,	nC4
	dc.b		$03,	nA3,	$04,	nF3,	nF4,	$03,	nC4,	$04
	dc.b		nA3,	$03,	nF3,	$04,	nF4,	nC4,	$03,	nA3
	dc.b		$04,	nF3,	$03,	nF4,	$04,	nC4,	nA3,	$03
	dc.b		nF3,	$04,	nFs4,	$03,	nCs4,	$04,	nBb3,	nFs3
	dc.b		$03,	nFs4,	$04,	nCs4,	$03,	nBb3,	$04,	nFs3
	dc.b		nFs4,	$03,	nCs4,	$04,	nBb3,	$03,	nFs3,	$04
	dc.b		nFs4,	nCs4,	$03,	nBb3,	$04,	nFs3,	$03,	nFs4
	dc.b		$04,	nCs4,	nBb3,	$03,	nFs3,	$04,	nFs4,	$03
	dc.b		nCs4,	$04,	nBb3,	nFs3,	$03,	nFs4,	$04,	nCs4
	dc.b		$03,	nBb3,	$04,	nFs3,	nFs4,	$03,	nCs4,	$04
	dc.b		nBb3,	$03,	nFs3,	$04,	nF4,	nC4,	$03,	nA3
	dc.b		$04,	nF3,	$03,	nF4,	$04,	nC4,	nA3,	$03
	dc.b		nF3,	$04,	nF4,	$03,	nC4,	$04,	nA3,	nF3
	dc.b		$03,	nF4,	$04,	nC4,	$03,	nA3,	$04,	nF3
	dc.b		nF4,	$03,	nC4,	$04,	nA3,	$03,	nF3,	$04
	dc.b		nF4,	nC4,	$03,	nA3,	$04,	nF3,	$03,	nF4
	dc.b		$04,	nC4,	nA3,	$03,	nF3,	$04,	nF4,	$03
	dc.b		nC4,	$04,	nA3,	nF3,	$03,	nAb4,	$04,	nEb4
	dc.b		$03,	nC4,	$04,	nAb3,	nAb4,	$03,	nEb4,	$04
	dc.b		nC4,	$03,	nAb3,	$04,	nAb4,	nEb4,	$03,	nC4
	dc.b		$04,	nAb3,	$03,	nAb4,	$04,	nEb4,	nC4,	$03
	dc.b		nAb3,	$04,	nAb4,	$03,	nEb4,	$04,	nC4,	nAb3
	dc.b		$03,	nAb4,	$04,	nEb4,	$03,	nC4,	$04,	nAb3
	dc.b		nAb4,	$03,	nEb4,	$04,	nC4,	$03,	nAb3,	$04
	dc.b		nAb4,	nEb4,	$03,	nC4,	$04,	nAb3,	$03
	smpsStop

; FM5 Data
EpicCutscene_FM5:
	smpsSetvoice	$03
	smpsAlterVol	$17
	smpsPan		panCentre,	$00
	dc.b		nF3,	$0E,	nF2,	$07,	nF2,	nF3,	$0F,	nF3
	dc.b		$0E,	nRst,	$3A,	nFs3,	$0E,	nFs2,	$07,	nFs2
	dc.b		$08,	nFs3,	$0E,	nFs3,	nRst,	$3A,	nF3,	$0E
	dc.b		nF2,	$08,	nF2,	$07,	nF3,	$0E,	nF3,	$0F
	dc.b		nRst,	$39,	nAb3,	$0F,	nAb2,	$07,	nAb2,	nAb3
	dc.b		$0E,	nAb3,	$0F,	nRst,	$39
	smpsStop

; PSG1 Data
EpicCutscene_PSG1:
	smpsSetVol	$04
	dc.b		nF2,	$04
	smpsSetVol	$01
	dc.b		nF2,	$05
	smpsSetVol	$01
	dc.b		nF2,	$04
	smpsSetVol	$01
	dc.b		nF2,	$01
	smpsSetVol	$FD
	dc.b		nF1,	$05
	smpsSetVol	$01
	dc.b		nF1,	$02
	smpsSetVol	$FF
	dc.b		nF1,	$05
	smpsSetVol	$01
	dc.b		nF1,	$02
	smpsSetVol	$FF
	dc.b		nF2,	$05
	smpsSetVol	$01
	dc.b		nF2
	smpsSetVol	$01
	dc.b		nF2,	$04
	smpsSetVol	$01
	dc.b		nF2,	$01
	smpsSetVol	$FD
	dc.b		nF2,	$05
	smpsSetVol	$01
	dc.b		nF2,	$04
	smpsSetVol	$01
	dc.b		nF2
	smpsSetVol	$01
	dc.b		nF2,	$01,	nRst,	$3A
	smpsSetVol	$FD
	dc.b		nFs2,	$05
	smpsSetVol	$01
	dc.b		nFs2,	$04
	smpsSetVol	$01
	dc.b		nFs2
	smpsSetVol	$01
	dc.b		nFs2,	$01
	smpsSetVol	$FD
	dc.b		nFs1,	$05
	smpsSetVol	$01
	dc.b		nFs1,	$02
	smpsSetVol	$FF
	dc.b		nFs1,	$05
	smpsSetVol	$01
	dc.b		nFs1,	$03
	smpsSetVol	$FF
	dc.b		nFs2,	$04
	smpsSetVol	$01
	dc.b		nFs2,	$05
	smpsSetVol	$01
	dc.b		nFs2,	$04
	smpsSetVol	$01
	dc.b		nFs2,	$01
	smpsSetVol	$FD
	dc.b		nFs2,	$05
	smpsSetVol	$01
	dc.b		nFs2
	smpsSetVol	$01
	dc.b		nFs2,	$03
	smpsSetVol	$01
	dc.b		nFs2,	$01,	nRst,	$3A
	smpsSetVol	$FD
	dc.b		nF2,	$05
	smpsSetVol	$01
	dc.b		nF2
	smpsSetVol	$01
	dc.b		nF2,	$03
	smpsSetVol	$01
	dc.b		nF2,	$01
	smpsSetVol	$FD
	dc.b		nF1,	$05
	smpsSetVol	$01
	dc.b		nF1,	$03
	smpsSetVol	$FF
	dc.b		nF1,	$04
	smpsSetVol	$01
	dc.b		nF1,	$03
	smpsSetVol	$FF
	dc.b		nF2,	$05
	smpsSetVol	$01
	dc.b		nF2,	$04
	smpsSetVol	$01
	dc.b		nF2
	smpsSetVol	$01
	dc.b		nF2,	$01
	smpsSetVol	$FD
	dc.b		nF2,	$05
	smpsSetVol	$01
	dc.b		nF2
	smpsSetVol	$01
	dc.b		nF2,	$03
	smpsSetVol	$01
	dc.b		nF2,	$02,	nRst,	$39
	smpsSetVol	$FD
	dc.b		nAb2,	$05
	smpsSetVol	$01
	dc.b		nAb2
	smpsSetVol	$01
	dc.b		nAb2,	$03
	smpsSetVol	$01
	dc.b		nAb2,	$02
	smpsSetVol	$FD
	dc.b		nAb1,	$04
	smpsSetVol	$01
	dc.b		nAb1,	$03
	smpsSetVol	$FF
	dc.b		nAb1,	$05
	smpsSetVol	$01
	dc.b		nAb1,	$02
	smpsSetVol	$FF
	dc.b		nAb2,	$05
	smpsSetVol	$01
	dc.b		nAb2
	smpsSetVol	$01
	dc.b		nAb2,	$03
	smpsSetVol	$01
	dc.b		nAb2,	$01
	smpsSetVol	$FD
	dc.b		nAb2,	$05
	smpsSetVol	$01
	dc.b		nAb2
	smpsSetVol	$01
	dc.b		nAb2,	$04
	smpsSetVol	$01
	dc.b		nAb2,	$01,	nRst,	$39
	smpsStop

; PSG2 Data
EpicCutscene_PSG2:
	smpsSetVol	$04
	dc.b		nF4,	$04
	smpsSetVol	$01
	dc.b		nF4,	$05
	smpsSetVol	$01
	dc.b		nF4,	$04
	smpsSetVol	$01
	dc.b		nF4,	$01
	smpsSetVol	$FD
	dc.b		nF3,	$05
	smpsSetVol	$01
	dc.b		nF3,	$02
	smpsSetVol	$FF
	dc.b		nF3,	$05
	smpsSetVol	$01
	dc.b		nF3,	$02
	smpsSetVol	$FF
	dc.b		nF4,	$05
	smpsSetVol	$01
	dc.b		nF4
	smpsSetVol	$01
	dc.b		nF4,	$04
	smpsSetVol	$01
	dc.b		nF4,	$01
	smpsSetVol	$FD
	dc.b		nF4,	$05
	smpsSetVol	$01
	dc.b		nF4,	$04
	smpsSetVol	$01
	dc.b		nF4
	smpsSetVol	$01
	dc.b		nF4,	$01,	nRst,	$3A
	smpsSetVol	$FD
	dc.b		nFs4,	$05
	smpsSetVol	$01
	dc.b		nFs4,	$04
	smpsSetVol	$01
	dc.b		nFs4
	smpsSetVol	$01
	dc.b		nFs4,	$01
	smpsSetVol	$FD
	smpsAlterNote	$01
	dc.b		nFs3,	$05
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nFs3,	$02
	smpsSetVol	$FF
	smpsAlterNote	$01
	dc.b		nFs3,	$05
	smpsSetVol	$01
	smpsAlterNote	$01
	dc.b		nFs3,	$03
	smpsSetVol	$FF
	smpsAlterNote	$00
	dc.b		nFs4,	$04
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nFs4,	$05
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nFs4,	$04
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nFs4,	$01
	smpsSetVol	$FD
	smpsAlterNote	$00
	dc.b		nFs4,	$05
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nFs4
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nFs4,	$03
	smpsSetVol	$01
	smpsAlterNote	$00
	dc.b		nFs4,	$01,	nRst,	$3A
	smpsSetVol	$FD
	dc.b		nF4,	$05
	smpsSetVol	$01
	dc.b		nF4
	smpsSetVol	$01
	dc.b		nF4,	$03
	smpsSetVol	$01
	dc.b		nF4,	$01
	smpsSetVol	$FD
	dc.b		nF3,	$05
	smpsSetVol	$01
	dc.b		nF3,	$03
	smpsSetVol	$FF
	dc.b		nF3,	$04
	smpsSetVol	$01
	dc.b		nF3,	$03
	smpsSetVol	$FF
	dc.b		nF4,	$05
	smpsSetVol	$01
	dc.b		nF4,	$04
	smpsSetVol	$01
	dc.b		nF4
	smpsSetVol	$01
	dc.b		nF4,	$01
	smpsSetVol	$FD
	dc.b		nF4,	$05
	smpsSetVol	$01
	dc.b		nF4
	smpsSetVol	$01
	dc.b		nF4,	$03
	smpsSetVol	$01
	dc.b		nF4,	$02,	nRst,	$39
	smpsSetVol	$FD
	dc.b		nAb4,	$05
	smpsSetVol	$01
	dc.b		nAb4
	smpsSetVol	$01
	dc.b		nAb4,	$03
	smpsSetVol	$01
	dc.b		nAb4,	$02
	smpsSetVol	$FD
	dc.b		nAb3,	$04
	smpsSetVol	$01
	dc.b		nAb3,	$03
	smpsSetVol	$FF
	dc.b		nAb3,	$05
	smpsSetVol	$01
	dc.b		nAb3,	$02
	smpsSetVol	$FF
	dc.b		nAb4,	$05
	smpsSetVol	$01
	dc.b		nAb4
	smpsSetVol	$01
	dc.b		nAb4,	$03
	smpsSetVol	$01
	dc.b		nAb4,	$01
	smpsSetVol	$FD
	dc.b		nAb4,	$05
	smpsSetVol	$01
	dc.b		nAb4
	smpsSetVol	$01
	dc.b		nAb4,	$04
	smpsSetVol	$01
	dc.b		nAb4,	$01,	nRst,	$39
	smpsStop

; PSG3 Data
EpicCutscene_PSG3:
	smpsSetVol	$04
	smpsPSGform	$E7
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$04
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$04
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$04
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$04
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$04
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$04
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$04
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$04
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$04
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$04
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$04
	smpsAlterNote	$01
	dc.b		nA5,	nRst,	$0A
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$04
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$0B
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$03
	smpsAlterNote	$01
	dc.b		nA5,	$04,	nRst,	$03
	smpsStop

; DAC Data
EpicCutscene_DAC:
	dc.b		dKick,	$1C,	dSnare,	$1D,	dKick,	dSnare,	dKick,	dSnare
	dc.b		$1C,	dKick,	$1D,	dSnare,	dKick,	dSnare,	dKick,	$1C
	dc.b		dSnare,	$1D,	dKick,	dSnare,	dKick,	dSnare,	$1C
	smpsStop

EpicCutscene_Voices:
	dc.b		$2D,$01,$01,$01,$00,$1F,$1F,$1F,$1F,$09,$09,$09,$09,$00,$00,$00
	dc.b		$00,$FF,$FF,$FF,$FF,$00,$05,$00,$0A;			Voice 00
	dc.b		$18,$37,$30,$30,$31,$9E,$DC,$1C,$9C,$0D,$06,$04,$01,$08,$0A,$03
	dc.b		$05,$BF,$BF,$3F,$2F,$27,$23,$14,$00;			Voice 01
	dc.b		$04,$37,$72,$77,$09,$1F,$1F,$1F,$1F,$07,$0A,$07,$0D,$00,$00,$00
	dc.b		$00,$10,$07,$10,$07,$27,$00,$23,$0C;			Voice 02
	dc.b		$24,$01,$01,$01,$00,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$FF,$FF,$FF,$FF,$07,$00,$1E,$0C;			Voice 03
	even
