GentleBreeze_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     GentleBreeze_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       GentleBreeze_DAC
	smpsHeaderFM        GentleBreeze_FM1,	$00, $00
	smpsHeaderFM        GentleBreeze_FM2,	$00, $00
	smpsHeaderFM        GentleBreeze_FM3,	$00, $00
	smpsHeaderFM        GentleBreeze_FM4,	$00, $00
	smpsHeaderFM        GentleBreeze_FM5,	$00, $00
	smpsHeaderPSG       GentleBreeze_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       GentleBreeze_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       GentleBreeze_PSG3,	$00, $00, $00, $00

; PSG3 Data
GentleBreeze_PSG3:
	smpsStop

; FM1 Data
GentleBreeze_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsAlterNote       $FF
	dc.b	nG5, $10
	smpsAlterVol        $0F
	dc.b	nG5
	smpsAlterVol        $F1
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	dc.b	nEb5, $10
	smpsAlterVol        $0F
	dc.b	nEb5
	smpsAlterVol        $F1
	dc.b	nC5, nEb5, nF5, $08, nC6, $10
	smpsAlterVol        $0F
	dc.b	nC6
	smpsAlterVol        $F1
	dc.b	nAb5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	dc.b	nEb5, $10
	smpsAlterVol        $0F
	dc.b	nEb5
	smpsAlterVol        $F1
	dc.b	nF5, $08
	smpsAlterNote       $FF
	dc.b	nG5, $10
	smpsAlterNote       $00
	dc.b	nAb5, nBb5
	smpsAlterVol        $0F
	dc.b	nBb5
	smpsAlterVol        $F1
	dc.b	nAb5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	smpsAlterNote       $FF
	dc.b	nG5, $10
	smpsAlterVol        $0F
	dc.b	nG5
	smpsAlterVol        $F1
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nF5, $08, nEb5, $10, nF5
	smpsAlterVol        $0F
	dc.b	nF5
	smpsAlterVol        $F1
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	dc.b	$10
	smpsAlterVol        $0F
	dc.b	$38
	smpsAlterVol        $F1
	dc.b	$10
	smpsAlterVol        $0F
	dc.b	nG5
	smpsAlterVol        $F1
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	dc.b	nEb5, $10
	smpsAlterVol        $0F
	dc.b	nEb5
	smpsAlterVol        $F1
	dc.b	nC5, nEb5, nF5, $08, nC6, $10
	smpsAlterVol        $0F
	dc.b	nC6
	smpsAlterVol        $F1
	dc.b	nAb5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	dc.b	nEb5, $10
	smpsAlterVol        $0F
	dc.b	nEb5
	smpsAlterVol        $F1
	dc.b	nF5, $08
	smpsAlterNote       $FF
	dc.b	nG5, $10
	smpsAlterNote       $00
	dc.b	nAb5, nBb5
	smpsAlterVol        $0F
	dc.b	nBb5
	smpsAlterVol        $F1
	dc.b	nAb5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	smpsAlterNote       $FF
	dc.b	nG5, $10
	smpsAlterVol        $0F
	dc.b	nG5
	smpsAlterVol        $F1
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nF5, $08, nEb5, $10, nF5
	smpsAlterVol        $0F
	dc.b	$28
	smpsAlterVol        $F1
	dc.b	nEb5, $08, $10
	smpsAlterVol        $0F
	dc.b	$21

GentleBreeze_Loop12:
	dc.b	smpsNoAttack, nEb5, $7F
	smpsLoop            $00, $08, GentleBreeze_Loop12
	dc.b	smpsNoAttack, $17
	smpsAlterVol        $F1
	smpsAlterNote       $FF
	dc.b	nG5, $10
	smpsAlterVol        $0F
	dc.b	nG5
	smpsAlterVol        $F1
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	dc.b	nEb5, $10
	smpsAlterVol        $0F
	dc.b	nEb5
	smpsAlterVol        $F1
	dc.b	nC5, nEb5, nF5, $08, nC6, $10
	smpsAlterVol        $0F
	dc.b	nC6
	smpsAlterVol        $F1
	dc.b	nAb5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	dc.b	nEb5, $10
	smpsAlterVol        $0F
	dc.b	nEb5
	smpsAlterVol        $F1
	dc.b	nF5, $08
	smpsAlterNote       $FF
	dc.b	nG5, $10
	smpsAlterNote       $00
	dc.b	nAb5, nBb5
	smpsAlterVol        $0F
	dc.b	nBb5
	smpsAlterVol        $F1
	dc.b	nAb5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	smpsAlterNote       $FF
	dc.b	nG5, $10
	smpsAlterVol        $0F
	dc.b	nG5
	smpsAlterVol        $F1
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nF5, $08, nEb5, $10, nF5
	smpsAlterVol        $0F
	dc.b	nF5
	smpsAlterVol        $F1
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	dc.b	$10
	smpsAlterVol        $0F
	dc.b	$38
	smpsAlterVol        $F1
	dc.b	$10
	smpsAlterVol        $0F
	dc.b	nG5
	smpsAlterVol        $F1
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	dc.b	nEb5, $10
	smpsAlterVol        $0F
	dc.b	nEb5
	smpsAlterVol        $F1
	dc.b	nC5, nEb5, nF5, $08, nC6, $10
	smpsAlterVol        $0F
	dc.b	nC6
	smpsAlterVol        $F1
	dc.b	nAb5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	dc.b	nEb5, $10
	smpsAlterVol        $0F
	dc.b	nEb5
	smpsAlterVol        $F1
	dc.b	nF5, $08
	smpsAlterNote       $FF
	dc.b	nG5, $10
	smpsAlterNote       $00
	dc.b	nAb5, nBb5
	smpsAlterVol        $0F
	dc.b	nBb5
	smpsAlterVol        $F1
	dc.b	nAb5
	smpsAlterVol        $0F
	dc.b	$08
	smpsAlterVol        $F1
	smpsAlterNote       $FF
	dc.b	nG5, $10
	smpsAlterVol        $0F
	dc.b	nG5
	smpsAlterVol        $F1
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nF5, $08, nEb5, $10, nF5
	smpsAlterVol        $0F
	dc.b	$28
	smpsAlterVol        $F1
	dc.b	nEb5, $08, $10
	smpsAlterVol        $0F
	dc.b	$21
	smpsPan             panCenter, $00
	smpsJump            GentleBreeze_Loop12

; FM2 Data
GentleBreeze_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $0C
	smpsPan             panCenter, $00
	dc.b	nF2, $20, nG2, $18, nC3, $08, nRst, $40, nG2, $20, nF2, $18
	dc.b	nC3, $08, nRst, $20, nG2, $10, nF2, nF2, $20, nG2, $18, nC3
	dc.b	$08, nRst, $40, nF2, $38, nG2, $48, nF2, $20, nG2, $18, nC3
	dc.b	$08, nRst, $40, nG2, $20, nF2, $18, nC3, $08, nRst, $20, nG2
	dc.b	$10, nF2, nF2, $20, nG2, $18, nC3, $08, nRst, $40, nF2, $38
	dc.b	nG2, $39

GentleBreeze_Jump04:
	dc.b	smpsNoAttack, nG2, $0F

GentleBreeze_Loop11:
	dc.b	nAb2, $18, $08, nRst, $10, nAb2, $20, $08, nG2, nF2, nFs2, nG2
	dc.b	nAb2, nG2, $18, $08, nRst, $10, nG2, $20, $08, nRst, nG2, nC3
	dc.b	$18, nF2, nG2, $20, nC3, $10, nG2, $08, nC3, $18, nG2, $08
	dc.b	nFs2, nG2, nEb2, $18, nBb1, nEb2, $20, $08, nF2, nA2, nEb3, nB2
	dc.b	nBb2
	smpsLoop            $00, $02, GentleBreeze_Loop11
	dc.b	nF2, $20, nG2, $18, nC3, $08, nRst, $40, nG2, $20, nF2, $18
	dc.b	nC3, $08, nRst, $20, nG2, $10, nF2, nF2, $20, nG2, $18, nC3
	dc.b	$08, nRst, $40, nF2, $38, nG2, $48, nF2, $20, nG2, $18, nC3
	dc.b	$08, nRst, $40, nG2, $20, nF2, $18, nC3, $08, nRst, $20, nG2
	dc.b	$10, nF2, nF2, $20, nG2, $18, nC3, $08, nRst, $40, nF2, $38
	dc.b	nG2, $39
	smpsPan             panCenter, $00
	smpsJump            GentleBreeze_Jump04

; FM3 Data
GentleBreeze_FM3:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $7F, $7F, $04
	smpsSetvoice        $04
	smpsAlterVol        $16
	smpsModSet          $00, $02, $07, $03

GentleBreeze_Loop0F:
	dc.b	nEb5, $08, nC5, nC6
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nEb5, nBb4, nC5, nEb5, $10
	smpsAlterVol        $08
	dc.b	nEb5, nRst, $08
	smpsAlterVol        $F8
	dc.b	nBb5
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nEb5, nBb4
	smpsLoop            $00, $02, GentleBreeze_Loop0F
	dc.b	nEb5, nC5, nC6
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nEb5, nBb4, nC5, nEb5, $10
	smpsAlterVol        $08
	dc.b	nEb5, nRst, $08
	smpsAlterVol        $F8
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nF5, nEb5, nBb4, nEb5, nBb4, nBb5, nAb5
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nF5, nEb5, nBb4, nBb4, nEb5
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nBb5
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nF5, nEb5, $01

GentleBreeze_Jump03:
	dc.b	smpsNoAttack, nEb5, $07, nBb4, $08
	smpsSetvoice        $05
	smpsAlterVol        $FA
	smpsModOff
	smpsAlterNote       $FF
	dc.b	nG4, $50
	smpsAlterNote       $00
	dc.b	nEb4, $08, nC4, nEb4, nE4, nF4, nBb3, $18, nE4, $10, nF4, $08
	smpsAlterNote       $FF
	dc.b	nG4, $10
	smpsAlterNote       $00
	dc.b	nBb4, $18, nAb4, $08, nRst
	smpsAlterNote       $FF
	dc.b	nG4
	smpsAlterNote       $00
	dc.b	nF4, $10
	smpsAlterNote       $FF
	dc.b	nG4, $50
	smpsAlterNote       $00
	dc.b	nF4, $08, nEb4, $10, $08, nF4, nBb3, $60
	smpsAlterNote       $FF
	dc.b	nG3, $08
	smpsAlterNote       $00
	dc.b	nBb3, nD4, nEb4, nF4, nFs4
	smpsAlterNote       $FF
	dc.b	nG4, $50
	smpsAlterNote       $00
	dc.b	nBb4, $08
	smpsAlterNote       $FF
	dc.b	nG4
	smpsAlterNote       $00
	dc.b	nC5, nBb4, nF4
	smpsAlterNote       $FF
	dc.b	nG4, $10, $08
	smpsAlterNote       $00
	dc.b	nF4
	smpsAlterNote       $FF
	dc.b	nG4, nRst
	smpsAlterNote       $00
	dc.b	nBb4, nAb4, nBb4
	smpsAlterNote       $FF
	dc.b	nG4, $10
	smpsAlterNote       $00
	dc.b	nD4, $08, nEb4, nC4, nBb3, nEb4, nE4
	smpsAlterNote       $FF
	dc.b	nG4, $7F, smpsNoAttack, $7F, smpsNoAttack, $02, nRst, $7F, $7F, $7F, $7F, $04
	smpsSetvoice        $04
	smpsAlterVol        $06
	smpsModSet          $00, $02, $07, $03
	smpsAlterNote       $00

GentleBreeze_Loop10:
	dc.b	nEb5, $08, nC5, nC6
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nEb5, nBb4, nC5, nEb5, $10
	smpsAlterVol        $08
	dc.b	nEb5, nRst, $08
	smpsAlterVol        $F8
	dc.b	nBb5
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nEb5, nBb4
	smpsLoop            $00, $02, GentleBreeze_Loop10
	dc.b	nEb5, nC5, nC6
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nEb5, nBb4, nC5, nEb5, $10
	smpsAlterVol        $08
	dc.b	nEb5, nRst, $08
	smpsAlterVol        $F8
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nF5, nEb5, nBb4, nEb5, nBb4, nBb5, nAb5
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nF5, nEb5, nBb4, nBb4, nEb5
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nBb5
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nF5, nEb5, $01
	smpsPan             panCenter, $00
	smpsModOn
	smpsJump            GentleBreeze_Jump03

; FM4 Data
GentleBreeze_FM4:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst

GentleBreeze_Loop0D:
	dc.b	$7F
	smpsLoop            $00, $07, GentleBreeze_Loop0D
	dc.b	$77
	smpsSetvoice        $05
	smpsAlterVol        $09
	dc.b	nEb5, $01

GentleBreeze_Jump02:
	dc.b	smpsNoAttack, nEb5, $07, nF5, $08
	smpsAlterVol        $07
	smpsAlterNote       $FF
	dc.b	nG5, $50
	smpsAlterNote       $00
	dc.b	nEb5, $08, nC5, nEb5, nE5, nF5, nBb4, $18, nE5, $10, nF5, $08
	smpsAlterNote       $FF
	dc.b	nG5, $10
	smpsAlterNote       $00
	dc.b	nBb5, $18, nAb5, $08, nRst
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nF5, $10
	smpsAlterNote       $FF
	dc.b	nG5, $50
	smpsAlterNote       $00
	dc.b	nF5, $08, nEb5, $10, $08, nF5, nBb4, $60
	smpsAlterNote       $FF
	dc.b	nG4, $08
	smpsAlterNote       $00
	dc.b	nBb4, nD5, nEb5, nF5, nFs5
	smpsAlterNote       $FF
	dc.b	nG5, $50
	smpsAlterNote       $00
	dc.b	nBb5, $08
	smpsAlterNote       $FF
	dc.b	nG5
	smpsAlterNote       $00
	dc.b	nC6, nBb5, nF5
	smpsAlterNote       $FF
	dc.b	nG5, $10, $08
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $FF
	dc.b	nG5, nRst
	smpsAlterNote       $00
	dc.b	nBb5, nAb5, nBb5
	smpsAlterNote       $FF
	dc.b	nG5, $10
	smpsAlterNote       $00
	dc.b	nD5, $08, nEb5, nC5, nBb4, nEb5, nE5
	smpsAlterNote       $FF
	dc.b	nG5, $7F, smpsNoAttack, $01, $7F, smpsNoAttack, $01, nRst

GentleBreeze_Loop0E:
	dc.b	$7F
	smpsLoop            $00, $07, GentleBreeze_Loop0E
	dc.b	$77
	smpsAlterNote       $00
	dc.b	nEb5, $01
	smpsAlterVol        $F9
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            GentleBreeze_Jump02

; FM5 Data
GentleBreeze_FM5:
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	dc.b	nC3

GentleBreeze_Loop06:
	dc.b	$10
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $F9
	dc.b	$08
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	$18
	smpsAlterVol        $07
	dc.b	$10
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	nC3
	smpsLoop            $00, $03, GentleBreeze_Loop06
	dc.b	nC3

GentleBreeze_Loop07:
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $F9
	dc.b	$08
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	$10
	smpsLoop            $00, $02, GentleBreeze_Loop07

GentleBreeze_Loop08:
	dc.b	nC3
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $F9
	dc.b	$08
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	$18
	smpsAlterVol        $07
	dc.b	$10
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	nC3
	smpsLoop            $00, $03, GentleBreeze_Loop08
	dc.b	nC3
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $F9
	dc.b	$08
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	$10
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $F9
	dc.b	$08
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	$01

GentleBreeze_Jump01:
	dc.b	smpsNoAttack, nC3, $0F
	smpsAlterVol        $07

GentleBreeze_Loop09:
	dc.b	$10
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	$08
	smpsAlterVol        $0F
	dc.b	$18
	smpsAlterVol        $F8
	smpsLoop            $00, $0F, GentleBreeze_Loop09
	dc.b	$10
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	$08
	smpsAlterVol        $0F
	dc.b	$18
	smpsAlterVol        $F1

GentleBreeze_Loop0A:
	dc.b	$10
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $F9
	dc.b	$08
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	$18
	smpsAlterVol        $07
	dc.b	$10
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	nC3
	smpsLoop            $00, $03, GentleBreeze_Loop0A
	dc.b	nC3

GentleBreeze_Loop0B:
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $F9
	dc.b	$08
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	$10
	smpsLoop            $00, $02, GentleBreeze_Loop0B

GentleBreeze_Loop0C:
	dc.b	nC3
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $F9
	dc.b	$08
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	$18
	smpsAlterVol        $07
	dc.b	$10
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	nC3
	smpsLoop            $00, $03, GentleBreeze_Loop0C
	dc.b	nC3
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $F9
	dc.b	$08
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	$10
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $F9
	dc.b	$08
	smpsAlterVol        $07
	dc.b	nC3
	smpsAlterVol        $08
	dc.b	nC3
	smpsAlterVol        $F1
	dc.b	$01
	smpsPan             panCenter, $00
	smpsJump            GentleBreeze_Jump01

; DAC Data
GentleBreeze_DAC:
	dc.b	dKick

GentleBreeze_Loop00:
	dc.b	$20, $18, $28, $10, $08, dKick
	smpsLoop            $00, $02, GentleBreeze_Loop00
	dc.b	$20, $18, $7F, nRst, $29, dHiTimpani, $08, dMidTimpani, dLowTimpani, dVLowTimpani, dKick

GentleBreeze_Loop01:
	dc.b	$20, $18, $28, $10, $08, dKick
	smpsLoop            $00, $02, GentleBreeze_Loop01
	dc.b	$20, $18, $7F, nRst, $29, dHiTimpani, $08, dMidTimpani, dLowTimpani, $01

GentleBreeze_Jump00:
	dc.b	nRst, $07, dVLowTimpani, $08

GentleBreeze_Loop02:
	dc.b	dKick

GentleBreeze_Loop03:
	dc.b	$10, $08, dKick, dSnare, $20, dKick, $10, $08, dKick, dSnare, $10, dMidTimpani
	dc.b	$08, dLowTimpani
	smpsLoop            $00, $03, GentleBreeze_Loop02
	dc.b	dKick, $10, $08, dKick, dSnare, $10, dHiTimpani, $08, dMidTimpani, dSnare, dLowTimpani, dVLowTimpani
	dc.b	$10, dSnare, $08, dKick, $18
	smpsLoop            $01, $02, GentleBreeze_Loop03

GentleBreeze_Loop04:
	dc.b	$20, $18, $28, $10, $08, dKick
	smpsLoop            $00, $02, GentleBreeze_Loop04
	dc.b	$20, $18, $7F, nRst, $29, dHiTimpani, $08, dMidTimpani, dLowTimpani, dVLowTimpani, dKick

GentleBreeze_Loop05:
	dc.b	$20, $18, $28, $10, $08, dKick
	smpsLoop            $00, $02, GentleBreeze_Loop05
	dc.b	$20, $18, $7F, nRst, $29, dHiTimpani, $08, dMidTimpani, dLowTimpani, $01
	smpsJump            GentleBreeze_Jump00

; PSG 1 Data
GentleBreeze_PSG1:
	dc.b	nRst

GentleBreeze_LoopPSG02:
	dc.b	$7F
	smpsLoop            $00, $08, GentleBreeze_LoopPSG02
	dc.b	$08
	smpsPSGAlterVol     $04

GentleBreeze_JumpPSG01:
	dc.b	nBb2, $7F, nG2, $7F, $01, nF2, $7F, $7F, $02, nBb2, $7F, $01
	dc.b	nG2, $7F, $01, nF2, $7F, $7F, $02, nRst

GentleBreeze_LoopPSG03:
	dc.b	$7F
	smpsLoop            $00, $08, GentleBreeze_LoopPSG03
	dc.b	$08, nBb2, $01
	smpsJump            GentleBreeze_JumpPSG01

; PSG2 Data
GentleBreeze_PSG2:
	dc.b	nRst

GentleBreeze_LoopPSG00:
	dc.b	$7F
	smpsLoop            $00, $08, GentleBreeze_LoopPSG00
	dc.b	$08
	smpsPSGAlterVol     $04

GentleBreeze_JumpPSG00:
	dc.b	nEb3, $7F, nD3, $7F, $01, nC3, $7F, $7F, $02, nEb3, $7F, $01
	dc.b	nD3, $7F, $01, nC3, $7F, $7F, $02, nRst

GentleBreeze_LoopPSG01:
	dc.b	$7F
	smpsLoop            $00, $08, GentleBreeze_LoopPSG01
	dc.b	$08, nEb3, $01
	smpsJump            GentleBreeze_JumpPSG00

GentleBreeze_Voices:
;	Voice $00
;	$0C
;	$2A, $70, $2A, $71, 	$1F, $1F, $1F, $1F, 	$0D, $04, $11, $0C
;	$00, $00, $00, $01, 	$F3, $F4, $F1, $89, 	$7F, $7F, $18, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $02, $07, $02
	smpsVcCoarseFreq    $01, $0A, $00, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $11, $04, $0D
	smpsVcDecayRate2    $01, $00, $00, $00
	smpsVcDecayLevel    $08, $0F, $0F, $0F
	smpsVcReleaseRate   $09, $01, $04, $03
	smpsVcTotalLevel    $00, $18, $7F, $7F

;	Voice $01
;	$38
;	$54, $17, $70, $30, 	$9F, $1F, $9F, $1F, 	$12, $02, $0A, $0A
;	$00, $10, $00, $00, 	$05, $05, $05, $08, 	$21, $35, $10, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $01, $05
	smpsVcCoarseFreq    $00, $00, $07, $04
	smpsVcRateScale     $00, $02, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $02, $12
	smpsVcDecayRate2    $00, $00, $10, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $08, $05, $05, $05
	smpsVcTotalLevel    $00, $10, $35, $21

;	Voice $02
;	$00
;	$00, $00, $00, $00, 	$00, $00, $00, $00, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$00, $00, $00, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $00, $00, $00, $00
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $03
;	$36
;	$0F, $0F, $08, $09, 	$16, $18, $00, $1F, 	$0F, $16, $0C, $0B
;	$00, $12, $00, $00, 	$06, $2F, $4F, $4F, 	$00, $00, $65, $53
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $09, $08, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $00, $18, $16
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0C, $16, $0F
	smpsVcDecayRate2    $00, $00, $12, $00
	smpsVcDecayLevel    $04, $04, $02, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $06
	smpsVcTotalLevel    $53, $65, $00, $00

;	Voice $04
;	$07
;	$05, $53, $64, $75, 	$5C, $5C, $5C, $1C, 	$17, $17, $17, $17
;	$00, $00, $00, $00, 	$26, $26, $26, $26, 	$00, $00, $00, $00
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $06, $05, $00
	smpsVcCoarseFreq    $05, $04, $03, $05
	smpsVcRateScale     $00, $01, $01, $01
	smpsVcAttackRate    $1C, $1C, $1C, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $17, $17, $17, $17
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $05
;	$3C
;	$21, $21, $63, $61, 	$13, $10, $14, $0E, 	$09, $0B, $0B, $10
;	$04, $04, $04, $04, 	$17, $17, $17, $27, 	$1C, $02, $1B, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $06, $02, $02
	smpsVcCoarseFreq    $01, $03, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $14, $10, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $0B, $0B, $09
	smpsVcDecayRate2    $04, $04, $04, $04
	smpsVcDecayLevel    $02, $01, $01, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $1B, $02, $1C

