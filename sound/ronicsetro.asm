ronicsetro_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     ronicsetro_Voices
	smpsHeaderChan      $03, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       ronicsetro_DAC
	smpsHeaderFM        ronicsetro_FM1,	$00, $03
	smpsHeaderFM        ronicsetro_FM2,	$00, $01
	smpsHeaderPSG       ronicsetro_PSG1,	$00, $01, $00, $00
	smpsHeaderPSG       ronicsetro_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       ronicsetro_PSG3,	$00, $01, $00, fTone_02

; DAC Data
ronicsetro_DAC:
	smpsPan             panCenter, $00
	dc.b	dSnare, $03, $03, dKick, $06

ronicsetro_Loop00:
	dc.b	dSnare, $0C, dKick
	smpsLoop            $00, $04, ronicsetro_Loop00
	dc.b	dSnare

ronicsetro_Loop01:
	dc.b	dKick, $06, $06, dSnare, dKick, $03, dSnare, $06, $06, dKick, $03, dSnare
	dc.b	$09, $03
	smpsLoop            $00, $04, ronicsetro_Loop01
	dc.b	dKick, $06, $06, dSnare, dKick, $03, dSnare, $06, $06, dKick, $03, dSnare
	dc.b	$09

ronicsetro_Loop02:
	dc.b	$78, nRst
	smpsLoop            $00, $04, ronicsetro_Loop02
	smpsSetTempoMod $01
	dc.b	nRst, nRst, $03
	smpsPan             panCenter, $00
	smpsStop

; FM1 Data
ronicsetro_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $18, nG5, $06, nRst, $1E, nG5, $06, nA5, nRst, $30, nC6
	dc.b	$06, nRst, $18, nAb5, $06, nRst, nG5, nRst, $30, nE5, $06, nRst
	dc.b	$1E, nG5, $06, nA5, nRst, $30, nD6, $06, $06, $06, nRst, $0C
	dc.b	nD6, $06, nRst, nC6, nRst, $18, nC5, nRst

ronicsetro_Loop03:
	dc.b	$56
	smpsLoop            $00, $0C, ronicsetro_Loop03
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsStop

; FM2 Data
ronicsetro_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $7F, $7F, $7F, $06, nG1, nB0, $03, nB2, nE3
	smpsAlterPitch      $F4
	dc.b	nB0, nG3, nG5, nB5, nE2, nE5, nG1, nB4, nE3, nG2, nB5, nG5
	dc.b	nE3, nB2, nE5, nG5, nG2, nB1, nB2, nG1, nG3, nB0, nE3, nG2
	dc.b	nB0, nB1, nE5, nB5, nG5, nB4, nG1, nE4, nE2, nE3, nG4, nG5
	dc.b	nG3, nE5, nG5, nB2, nB0, nE1, nG3, nE2, nB2, nG4, nB0, nB3
	dc.b	nB0, nB0, nE2, nB1, nG5, nG4, nG3, nB0, nB3, nG3, nB5, nE4
	dc.b	nG1, nB3, nG1, nE2, $06, nB2, $03, nB0, nB4, nG2, nG4, nB2
	dc.b	nB4, nE3, nG3, nB0, nE1, nG4, nE2, nG3, nE1, nB1, nG5, nE4
	dc.b	nB1, nB0, nG1, nE2, nG3, nB2, nB4, nG1, nG2, nB4, nE3, nB3
	dc.b	nB0, nB0, nB0, nG1, nE1, nE2, nE1, nB0, $09, nB4, $03, nE4
	dc.b	nG3, nG5, nG4, nB5, nE4, nB2, nB1, nE2, nG4, nG5, nE3, nE5
	dc.b	nE1, nG2, nG5, nB0, nB3, $06, nB5, $03, nG2, nB0, nB2, nG1
	dc.b	nG4, nG2, nB5, $06, nB0, $03, nB5, nB0, $06, $03, nG1, nB4
	dc.b	nB5, $06, nB4, $03, nB0, nE5, nE1, nG2, nB4, nE4, nB1, nG2
	dc.b	$06, nE5, $03, nB5, nE1, nB2, nB4, $06, nB1, $03, nE5, nB3
	dc.b	nG3, nB5, nE4, nB1, nG2, nB4, nB0, nB2, nG5, nG1, nB4, nB0
	dc.b	nB5, $06, nB0, nE5, $03, nB5, nB2, nB1, nG2, nB3, nB0, nE1
	dc.b	nG3, $06, nG2, $03, nE3, nE2, nE5, nG5, nB0, $06, nB2, $03
	dc.b	nE4, nE3, nE1, nG3, nG5, nE5, nE4, nB0, nG1, nB1, nB2, $09
	dc.b	nE3, $03, nB2, nB3, nB1, nB4, nG5, nE2, nE1, nB0, nG1, nB0
	dc.b	$06, nB3, $03, nB0, nG3, $06, nB0, $03, nE4, nB3, nB1, nB3
	dc.b	nE3, $06, nG1, $03, nB3, nB5, nB4, nB5, nG4, nB5, nE4, nG3
	dc.b	nE5, nB3, nG4, nB0, nB1, nE5, nB1, nE4, nE3, nB3, nB5, nG5
	dc.b	nB1, nB0, nG4, nG1, nB0, nB0, $06, nB3, $03, nG1, nB1, nE3
	dc.b	nB0, $06, nE3, $03, nB2, nG3, nB0, nE1, nB1, nG3, nB0, nB4
	dc.b	nB0, nG5, nE2, nG2, nE4, nE5, nG5, nB4, nB0, nB3, nG3, nB2
	dc.b	nE4, nG3, nB1, nG3, nB5, nE1, nB0, nE2, nG3, nG1, nG3, nG1
	dc.b	nB0, nG2, nB2, nE5, nG1, nG3, $06, nB4, $03, nG5, nB0, nG2
	dc.b	nG5, nE1, nB0, $06, nG1, $03, nB0, nG1, nE2, nG4, nG1, nB0
	dc.b	nG1, nE5, nB3, nE3, nB0, nB3, nG4, nE2, nG2, nB2, nRst, $2D
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsStop

; PSG1 Data
ronicsetro_PSG1:
	dc.b	nRst, $24

ronicsetro_Loop07:
	dc.b	nC2, $02, nC3, $01, nRst, $03
	smpsLoop            $00, $02, ronicsetro_Loop07
	dc.b	nB1, $02, nB2, $01, nB1, $02, $01, nB2, $02, nB1, $01, nC2
	dc.b	$02, nC3, $01, nRst, $18

ronicsetro_Loop08:
	dc.b	nC2, $02, nC3, $01, nRst, $03
	smpsLoop            $00, $02, ronicsetro_Loop08
	dc.b	nD2, $02, nD3, $01, nD2, $02, $01, nD3, $02, nD2, $01, nC2
	dc.b	$02, nC3, $01, nRst, $18

ronicsetro_Loop09:
	dc.b	nC2, $02, nC3, $01, nRst, $03
	smpsLoop            $00, $02, ronicsetro_Loop09
	dc.b	nB1, $02, nB2, $01, nB1, $02, $01, nB2, $02, nB1, $01, nC2
	dc.b	$02, nC3, $01, nRst, $18, nC2, $02, nC3, $01, nRst, $03, nD2
	dc.b	$02, nD3, $01, nRst, $03, nE2, $02, nE3, $01, nE2, $02, $01
	dc.b	nRst, $03, nD2, $02, nD3, $01, nD2, $02, $01, nRst, $03, nC2
	dc.b	$02, nC3, $01, nRst, $0F

ronicsetro_Loop0A:
	dc.b	nC2, $02, nC3, $01, nRst, $03
	smpsLoop            $00, $02, ronicsetro_Loop0A
	dc.b	nB1, $02, nB2, $01, nB1, $02, $01, nB2, $02, nB1, $01, nC2
	dc.b	$02, nC3, $01, nRst, $18

ronicsetro_Loop0B:
	dc.b	nC2, $02, nC3, $01, nRst, $03
	smpsLoop            $00, $02, ronicsetro_Loop0B
	dc.b	nD2, $02, nD3, $01, nD2, $02, $01, nD3, $02, nD2, $01, nC2
	dc.b	$02, nC3, $01, nRst, $0C, nF2

ronicsetro_Loop0C:
	dc.b	$02, nF3, $01, nF2, $02, $01
	smpsLoop            $00, $03, ronicsetro_Loop0C
	dc.b	nRst, $0C, nF2, $02, nF3, $01, nF2, $02, $01, nRst, $06, nE2
	dc.b	$02, nE3, $01, nE2, $02, $01, nRst, $18, nC2

ronicsetro_Loop0D:
	dc.b	$02, nC3, $01, nC2, $02, $01, nC3, $02, nC2, $01
	smpsLoop            $00, $02, ronicsetro_Loop0D
	dc.b	$02, nC3, $01, nC2, $02, $01, nRst

ronicsetro_Loop0E:
	dc.b	$56
	smpsLoop            $00, $0C, ronicsetro_Loop0E
	smpsPSGvoice        $00
	smpsStop

; PSG3 Data
ronicsetro_PSG3:
	smpsPSGform         $E7
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $03, $03, $03, $03, $0C

ronicsetro_Loop04:
	dc.b	$06
	smpsLoop            $00, $10, ronicsetro_Loop04

ronicsetro_Loop05:
	dc.b	$03
	smpsLoop            $00, $4F, ronicsetro_Loop05

ronicsetro_Loop06:
	dc.b	$78, smpsNoAttack
	smpsLoop            $00, $08, ronicsetro_Loop06
	dc.b	$7B
	smpsStop

; PSG2 Data
ronicsetro_PSG2:
	smpsStop

ronicsetro_Voices:
;	Voice $00
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $06
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $2F, 	$18, $28, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $01
;	$3A
;	$71, $0C, $33, $01, 	$1C, $16, $1D, $1F, 	$04, $06, $04, $08
;	$00, $01, $03, $00, 	$16, $17, $16, $A6, 	$25, $2F, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0C, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $16, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $04, $06, $04
	smpsVcDecayRate2    $00, $03, $01, $00
	smpsVcDecayLevel    $0A, $01, $01, $01
	smpsVcReleaseRate   $06, $06, $07, $06
	smpsVcTotalLevel    $00, $25, $2F, $25

