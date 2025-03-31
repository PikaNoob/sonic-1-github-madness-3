triple_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     triple_Voices
	smpsHeaderChan      $06, $01
	smpsHeaderTempo     $02, $00

	smpsHeaderDAC       triple_DAC
	smpsHeaderFM        triple_FM1,	$F4, $0A
	smpsHeaderFM        triple_FM2,	$00, $0F
	smpsHeaderFM        triple_FM3,	$00, $0B
	smpsHeaderFM        triple_FM4,	$00, $13
	smpsHeaderFM        triple_FM5,	$00, $13
	smpsHeaderPSG       triple_PSG1,	$0C, $01, $00, $00

; DAC Data
triple_DAC:
	smpsPan             panCenter, $00
	dc.b	dSnare, $03, $03, dKick, dKick, dSnare

triple_Loop01:
	dc.b	dSnare, dSnare, dSnare

triple_Loop00:
	dc.b	dKick, $06, dSnare, dKick, dSnare, dKick, dSnare, $03, dKick, $06, $03, dSnare
	dc.b	$06
	smpsLoop            $00, $08, triple_Loop00
	dc.b	dKick, $0C, dSnare, $09, $09, dKick, $06, dSnare, $09, $03, dKick, $0C
	dc.b	dSnare, $09, $09, dKick, $06, dSnare, $03
	smpsLoop            $01, $02, triple_Loop01
	dc.b	$03, $03, $1B
	smpsPan             panCenter, $00
	smpsJump triple_DAC

; FM1 Data
triple_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $18

triple_Loop0B:
	dc.b	nG3, $06, nG4
	smpsLoop            $00, $04, triple_Loop0B

triple_Loop0C:
	dc.b	nD3, nD4
	smpsLoop            $00, $04, triple_Loop0C

triple_Loop0D:
	dc.b	nE3, nE4
	smpsLoop            $00, $04, triple_Loop0D
	dc.b	nC3, nC4, nC3, nC4, nD3, nD4, nD3, nD4
	smpsLoop            $01, $02, triple_Loop0B
	dc.b	nB2, nB3, nB2, nB3, nG2, nG3, nG2, nG3, nA2, $03, nRst, nA3
	dc.b	nRst, nCs3, nRst, nCs4, nRst, nB2, nCs3, nD3, nE3, nCs3, nEb3, nF3
	dc.b	nAb3
	smpsLoop            $02, $02, triple_Loop0B
	dc.b	nRst, $18
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsJump triple_FM1

; FM2 Data
triple_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $18

triple_Loop07:
	dc.b	nG5, $30, nFs5, $11, nRst, $01, nA5, $12, nFs5, $0B, nRst, $01
	dc.b	nG5, $36, nFs5, $03, nG5, nFs5, $06, nE5, nD5, nC5, nB4, nA4
	smpsLoop            $00, $02, triple_Loop07
	dc.b	nRst, $03

triple_Loop08:
	dc.b	nG4, $09, nB4, $03, nRst, $0C
	smpsLoop            $00, $03, triple_Loop08
	dc.b	nG4, $09, nB4, $03, nRst, $09

triple_Loop09:
	dc.b	nG5, $30, nFs5, $11, nRst, $01, nA5, $12, nFs5, $0B, nRst, $01
	dc.b	nG5, $36, nFs5, $03, nG5, nFs5, $06, nE5, nD5, nC5, nB4, nA4
	smpsLoop            $00, $02, triple_Loop09
	dc.b	nRst, $03

triple_Loop0A:
	dc.b	nG4, $09, nB4, $03, nRst, $0C
	smpsLoop            $00, $03, triple_Loop0A
	dc.b	nG4, $09, nB4, $03, nRst, $21
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsJump triple_FM2

; FM3 Data
triple_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $18

triple_Loop06:
	dc.b	nG4, $30, nFs4, nG4, $36, nD4, $2A
	smpsLoop            $00, $02, triple_Loop06
	dc.b	nRst, $30, nG4, $02, nA4, nB4, nC5, nD5, nE5, nA4, nB4, nCs5
	dc.b	nD5, nE5, nFs5, nB4, nCs5, nEb5, nE5, nFs5, nAb5, nCs5, nEb5, nF5
	dc.b	nFs5, nAb5, nBb5
	smpsLoop            $01, $02, triple_Loop06
	dc.b	nRst, $18
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsJump triple_FM3

; FM4 Data
triple_FM4:
	smpsAlterNote       $03
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $18

triple_Loop02:
	dc.b	nG5, $30, nFs5, $11, nRst, $01, nA5, $12, nFs5, $0B, nRst, $01
	dc.b	nG5, $36, nFs5, $03, nG5, nFs5, $06, nE5, nD5, nC5, nB4, nA4
	smpsLoop            $00, $02, triple_Loop02
	dc.b	nRst, $03

triple_Loop03:
	dc.b	nG4, $09, nB4, $03, nRst, $0C
	smpsLoop            $00, $03, triple_Loop03
	dc.b	nG4, $09, nB4, $03, nRst, $09

triple_Loop04:
	dc.b	nG5, $30, nFs5, $11, nRst, $01, nA5, $12, nFs5, $0B, nRst, $01
	dc.b	nG5, $36, nFs5, $03, nG5, nFs5, $06, nE5, nD5, nC5, nB4, nA4
	smpsLoop            $00, $02, triple_Loop04
	dc.b	nRst, $03

triple_Loop05:
	dc.b	nG4, $09, nB4, $03, nRst, $0C
	smpsLoop            $00, $03, triple_Loop05
	dc.b	nG4, $09, nB4, $03, nRst, $21
	smpsPan             panCenter, $00
	smpsJump triple_FM4

; FM5 Data
triple_FM5:
	smpsAlterNote       $03
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $7F, $7F, $7F, $4B, nG4, $02, nA4, nB4, nC5, nD5, nE5
	dc.b	nA4, nB4, nCs5, nD5, nE5, nFs5, nB4, nCs5, nEb5, nE5, nFs5, nAb5
	dc.b	nCs5, nEb5, nF5, nFs5, nAb5, nBb5, nRst, $7F, $7F, $7F, $33, nG4
	dc.b	$02, nA4, nB4, nC5, nD5, nE5, nA4, nB4, nCs5, nD5, nE5, nFs5
	dc.b	nB4, nCs5, nEb5, nE5, nFs5, nAb5, nCs5, nEb5, nF5, nFs5, nAb5, nBb5
	dc.b	nRst, $18
	smpsJump triple_FM5

; PSG1 Data
triple_PSG1:
	dc.b	nRst, $18

triple_Loop0E:
	dc.b	nG2, $02, nRst, $01, nD2, $02, nRst, $01, nD2, $02, nRst, $04
	dc.b	nD2, $02, nRst, $04, nC2, $02, nRst, $04, nB1, $02, nRst, $01
	dc.b	nC2, $02, nRst, $01, nD2, $02, nRst, $04, nD2, $02, nRst, $04
	dc.b	nG1, $02, nRst, $04
	smpsLoop            $00, $07, triple_Loop0E
	dc.b	nG2, $02, nRst, $01, nD2, $02, nRst, $01, nD2, $02, nRst, $04
	dc.b	nD2, $02, nRst, $04, nC2, $02, nRst, $04, nB1, $02, nRst, $01
	dc.b	nC2, $02, nRst, $01, nD2, $02, nRst, $04, nD2, $02, nRst, $04
	dc.b	nG1, $02, nRst, $07

triple_Loop0F:
	dc.b	nE1, $09, nG1, $03, nRst, $0C
	smpsLoop            $00, $03, triple_Loop0F
	dc.b	nE1, $09, nG1, $03, nRst, $09

triple_Loop10:
	dc.b	nG2, $02, nRst, $01, nD2, $02, nRst, $01, nD2, $02, nRst, $04
	dc.b	nD2, $02, nRst, $04, nC2, $02, nRst, $04, nB1, $02, nRst, $01
	dc.b	nC2, $02, nRst, $01, nD2, $02, nRst, $04, nD2, $02, nRst, $04
	dc.b	nG1, $02, nRst, $04
	smpsLoop            $00, $07, triple_Loop10
	dc.b	nG2, $02, nRst, $01, nD2, $02, nRst, $01, nD2, $02, nRst, $04
	dc.b	nD2, $02, nRst, $04, nC2, $02, nRst, $04, nB1, $02, nRst, $01
	dc.b	nC2, $02, nRst, $01, nD2, $02, nRst, $04, nD2, $02, nRst, $04
	dc.b	nG1, $02, nRst, $07

triple_Loop11:
	dc.b	nE1, $09, nG1, $03, nRst, $0C
	smpsLoop            $00, $03, triple_Loop11
	dc.b	nE1, $09, nG1, $03, nRst, $21
	smpsPSGvoice        $00
	smpsJump triple_PSG1

triple_Voices:
;	Voice $00
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $01
;	$20
;	$7A, $31, $00, $00, 	$9F, $D8, $DC, $DF, 	$10, $0A, $04, $04
;	$0F, $08, $08, $08, 	$5F, $5F, $BF, $BF, 	$14, $2B, $17, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $07
	smpsVcCoarseFreq    $00, $00, $01, $0A
	smpsVcRateScale     $03, $03, $03, $02
	smpsVcAttackRate    $1F, $1C, $18, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $0A, $10
	smpsVcDecayRate2    $08, $08, $08, $0F
	smpsVcDecayLevel    $0B, $0B, $05, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $2B, $14
