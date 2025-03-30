THXLogo_Header:
smpsHeaderStartSong = 1
		smpsHeaderVoice     THXLogo_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $26

	smpsHeaderDAC       THXLogo_DAC
	smpsHeaderFM        THXLogo_FM1,	$00, $0B
	smpsHeaderFM        THXLogo_FM2,	$00, $0D
	smpsHeaderFM        THXLogo_FM3,	$00, $09
	smpsHeaderFM        THXLogo_FM4,	$00, $00
	smpsHeaderFM        THXLogo_FM5,	$00, $00

; FM1 Data
THXLogo_FM1:
	smpsSetvoice	$00
	smpsPan		panCentre,	$00
	smpsAlterNote	$05
	dc.b		nC4,	$01
	smpsAlterNote	$EE
	dc.b		smpsNoAttack,	nCs4,	$01
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0B
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	nD4,	$01
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$11
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F7
	dc.b		smpsNoAttack,	nEb4,	$01
	smpsAlterNote	$08
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EC
	dc.b		smpsNoAttack,	nE4,	$01
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	nF4,	$01
	smpsAlterNote	$05
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$18
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nFs4,	$01
	smpsAlterNote	$0C
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EA
	dc.b		smpsNoAttack,	nG4,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$14
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F1
	dc.b		smpsNoAttack,	nAb4,	$01
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E1
	dc.b		smpsNoAttack,	nA4,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$10
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E9
	dc.b		smpsNoAttack,	nBb4,	$01
	smpsAlterNote	$02
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$1B
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nB4,	$01
	smpsAlterNote	$05
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EF
	dc.b		smpsNoAttack,	nC5,	$01
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0B
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F4
	dc.b		smpsNoAttack,	nCs5,	$01
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$12
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nD5,	$01
	smpsAlterNote	$08
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$ED
	dc.b		smpsNoAttack,	nEb5,	$01
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	nE5,	$01
	smpsAlterNote	$05
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$17
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	nF5,	$01
	smpsAlterNote	$0C
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$ED
	dc.b		smpsNoAttack,	nFs5,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$15
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	nG5,	$01
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0D
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$17
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E8
	dc.b		smpsNoAttack,	nAb5,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$11
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$1B
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E9
	dc.b		smpsNoAttack,	nA5,	$01
	smpsAlterNote	$F4
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$14
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$DF
	dc.b		smpsNoAttack,	nBb5,	$01
	smpsAlterNote	$EB
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F6
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$02
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0D
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$19
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	nB5,	$01
	smpsAlterNote	$F6
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$02
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$08
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0E
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F1
	dc.b		smpsNoAttack,	nC6,	$01
	smpsAlterNote	$F7
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$04
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$11
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	nCs6,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0D
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EB
	dc.b		smpsNoAttack,	nD6,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$08
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EC
	dc.b		smpsNoAttack,	nEb6,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$60
	smpsStop

; FM2 Data
THXLogo_FM2:
	smpsSetvoice	$00
	smpsPan		panCentre,	$00
	smpsAlterNote	$06
	dc.b		nG3,	$01
	smpsAlterNote	$16
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$ED
	dc.b		smpsNoAttack,	nAb3,	$01
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E3
	dc.b		smpsNoAttack,	nA3,	$01
	smpsAlterNote	$F5
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$18
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EB
	dc.b		smpsNoAttack,	nBb3,	$01
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$11
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	nB3,	$01
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0E
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F4
	dc.b		smpsNoAttack,	nC4,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$09
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EE
	dc.b		smpsNoAttack,	nCs4,	$01
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$04
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$10
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	nD4,	$01
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EB
	dc.b		smpsNoAttack,	nEb4,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$02
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$11
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EC
	dc.b		smpsNoAttack,	nE4,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$10
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E8
	dc.b		smpsNoAttack,	nF4,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$13
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E9
	dc.b		smpsNoAttack,	nFs4,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$02
	smpsAlterNote	$05
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$11
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E6
	dc.b		smpsNoAttack,	nG4,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FE
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$09
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$13
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E4
	dc.b		smpsNoAttack,	nAb4,	$01
	smpsAlterNote	$EF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$09
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$13
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$1E
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EB
	dc.b		smpsNoAttack,	nA4,	$01
	smpsAlterNote	$F6
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0C
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$17
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E2
	dc.b		smpsNoAttack,	nBb4,	$01
	smpsAlterNote	$EE
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$16
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EE
	dc.b		smpsNoAttack,	nB4,	$01
	smpsAlterNote	$F4
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0D
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EF
	dc.b		smpsNoAttack,	nC5,	$01
	smpsAlterNote	$F5
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$02
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$08
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0E
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$ED
	dc.b		smpsNoAttack,	nCs5,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0E
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EC
	dc.b		smpsNoAttack,	nD5,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$02
	smpsAlterNote	$04
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0E
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EE
	dc.b		smpsNoAttack,	nEb5,	$01
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$5C
	smpsStop

; FM3 Data
THXLogo_FM3:
	smpsSetvoice	$00
	smpsPan		panCentre,	$00
	dc.b		nRst,	$02
	smpsAlterNote	$05
	dc.b		nE2,	$01
	smpsAlterNote	$13
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	nF2,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EB
	dc.b		smpsNoAttack,	nFs2,	$01
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$1A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	nG2,	$01
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$14
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EC
	dc.b		smpsNoAttack,	nAb2,	$01
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E4
	dc.b		smpsNoAttack,	nA2,	$01
	smpsAlterNote	$F5
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$08
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$1B
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EE
	dc.b		smpsNoAttack,	nBb2,	$01
	smpsAlterNote	$02
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$15
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	nB2,	$01
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$11
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	nC3,	$01
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0E
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F4
	dc.b		smpsNoAttack,	nCs3,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0B
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EE
	dc.b		smpsNoAttack,	nD3,	$01
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$13
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F5
	dc.b		smpsNoAttack,	nEb3,	$01
	smpsAlterNote	$02
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EF
	dc.b		smpsNoAttack,	nE3,	$01
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0B
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E9
	dc.b		smpsNoAttack,	nF3,	$01
	smpsAlterNote	$F7
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	nFs3,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$03
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$10
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$18
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E9
	dc.b		smpsNoAttack,	nG3,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0E
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$18
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EA
	dc.b		smpsNoAttack,	nAb3,	$01
	smpsAlterNote	$F4
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$08
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$11
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$1B
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E7
	dc.b		smpsNoAttack,	nA3,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$04
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$1B
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E6
	dc.b		smpsNoAttack,	nBb3,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$09
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$13
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$1E
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	nB3,	$01
	smpsAlterNote	$F7
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$02
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$08
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F2
	dc.b		smpsNoAttack,	nC4,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$05
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0B
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$11
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	nCs4,	$01
	smpsAlterNote	$F6
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$05
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$12
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F7
	dc.b		smpsNoAttack,	nD4,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$03
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0E
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EB
	dc.b		smpsNoAttack,	nEb4,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$58
	smpsStop

; FM4 Data
THXLogo_FM4:
	smpsSetvoice	$00
	smpsPan		panCentre,	$00
	dc.b		nEb4,	$20
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F7
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F1
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EA
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	nD4,	$01
	smpsAlterNote	$09
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$03
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F5
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EE
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	nCs4,	$01
	smpsAlterNote	$08
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F6
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$11
	dc.b		smpsNoAttack,	nC4,	$01
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$03
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F7
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0E
	dc.b		smpsNoAttack,	nB3,	$01
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F6
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$1B
	dc.b		smpsNoAttack,	nBb3,	$01
	smpsAlterNote	$11
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E4
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$18
	dc.b		smpsNoAttack,	nA3,	$01
	smpsAlterNote	$0C
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F7
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EE
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E4
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$18
	dc.b		smpsNoAttack,	nAb3,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$05
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F1
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E7
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$15
	dc.b		smpsNoAttack,	nG3,	$01
	smpsAlterNote	$0B
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E7
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$16
	dc.b		smpsNoAttack,	nFs3,	$01
	smpsAlterNote	$0E
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$05
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EA
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$14
	dc.b		smpsNoAttack,	nF3,	$01
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F4
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$16
	dc.b		smpsNoAttack,	nE3,	$01
	smpsAlterNote	$09
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$03
	smpsAlterNote	$FD
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EA
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0E
	dc.b		smpsNoAttack,	nEb3,	$01
	smpsAlterNote	$05
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$58
	smpsStop

; FM5 Data
THXLogo_FM5:
	smpsSetvoice	$00
	smpsPan		panCentre,	$00
	dc.b		nEb3,	$1D
	smpsAlterNote	$F9
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F1
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$15
	dc.b		smpsNoAttack,	nD3,	$01
	smpsAlterNote	$0D
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$12
	dc.b		smpsNoAttack,	nCs3,	$01
	smpsAlterNote	$0B
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$04
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FB
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F4
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EE
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0D
	dc.b		smpsNoAttack,	nC3,	$01
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$0E
	dc.b		smpsNoAttack,	nB2,	$01
	smpsAlterNote	$05
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FA
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F4
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EE
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$16
	dc.b		smpsNoAttack,	nBb2,	$01
	smpsAlterNote	$0A
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E8
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$1D
	dc.b		smpsNoAttack,	nA2,	$01
	smpsAlterNote	$11
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F6
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EB
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$1E
	dc.b		smpsNoAttack,	nAb2,	$01
	smpsAlterNote	$13
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$09
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F4
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EA
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$19
	dc.b		smpsNoAttack,	nG2,	$01
	smpsAlterNote	$0F
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$06
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F3
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EA
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$19
	dc.b		smpsNoAttack,	nFs2,	$01
	smpsAlterNote	$10
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FF
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F6
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$EE
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$18
	dc.b		smpsNoAttack,	nF2,	$01
	smpsAlterNote	$10
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$08
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F8
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$E8
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$10
	dc.b		smpsNoAttack,	nE2,	$01
	smpsAlterNote	$09
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$01
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$FC
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$F0
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$12
	dc.b		smpsNoAttack,	nEb2,	$01
	smpsAlterNote	$07
	dc.b		smpsNoAttack,	$01
	smpsAlterNote	$00
	dc.b		smpsNoAttack,	$5C
	smpsStop

; DAC Data
THXLogo_DAC:
	smpsStop

THXLogo_Voices:
	dc.b		$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01
	dc.b		$01,$17,$97,$27,$47,$1C,$22,$15,$00;			Voice 00
	even
