dMerryWtf1 = dVLowTimpani ; $87
dMerryWtf2 = dLowTimpani  ; $85
dMerryWtf3 = dVLowTimpani ; $84
dMerryClap = dLowTimpani

MerrysLittleLamb_Header:
	if ~def(smpsHeaderStartSong)
smpsHeaderStartSong = 1
	endif
	smpsHeaderVoice     MerrysLittleLamb_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       MerrysLittleLamb_DAC
	smpsHeaderFM        MerrysLittleLamb_FM1,	$00, $00
	smpsHeaderFM        MerrysLittleLamb_FM2,	$00, $00
	smpsHeaderFM        MerrysLittleLamb_FM3,	$00, $00
	smpsHeaderFM        MerrysLittleLamb_FM4,	$00, $00
	smpsHeaderFM        MerrysLittleLamb_FM5,	$00, $00
	smpsHeaderPSG       MerrysLittleLamb_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       MerrysLittleLamb_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       MerrysLittleLamb_PSG3,	$00, $00, $00, $00

MerrysLittleLamb_FM1:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $7F, $20
	smpsSetvoice        $00
	smpsAlterVol        $0F
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, nD3, $04
	smpsAlterVol        $FA
	dc.b	nD3, $05
	smpsAlterVol        $06
	dc.b	nD3, $04, nD3, $05, nD3
	smpsAlterVol        $FA
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, $04, nD3, $05
	smpsAlterVol        $FA
	dc.b	nD3
	smpsAlterVol        $06
	dc.b	nD3, $04, nD3, $05, nD3
	smpsAlterVol        $FA
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, $04, nD3, $05
	smpsAlterVol        $FA
	dc.b	nD3
	smpsAlterVol        $06
	dc.b	nD3, $04, nD3, $05, nD3, $04
	smpsAlterVol        $FA
	dc.b	nD3, $05
	smpsAlterVol        $06
	dc.b	nD3, nD3, $04, nD3, $05
	smpsAlterVol        $FA
	dc.b	nD3
	smpsAlterVol        $06
	dc.b	nD3, $04, nD3, $05, nD3, $04
	smpsAlterVol        $FA
	dc.b	nD3, $05
	smpsAlterVol        $06
	dc.b	nD3, nD3, $04, nD3, $05
	smpsAlterVol        $FA
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, nD3, $04
	smpsAlterVol        $FA
	dc.b	nD3, $05
	smpsAlterVol        $06
	dc.b	nD3, $04, nD3, $05, nD3
	smpsAlterVol        $FA
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, nD3, $04
	smpsAlterVol        $FA
	dc.b	nD3, $05
	smpsAlterVol        $06
	dc.b	nD3, $04, nD3, $05, nD3
	smpsAlterVol        $FA
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, $04, nD3, $05
	smpsAlterVol        $FA
	dc.b	nD3
	smpsAlterVol        $06
	dc.b	nD3, $04, nD3, $05, nD3, $04
	smpsAlterVol        $FA
	dc.b	nD3, $05
	smpsAlterVol        $06
	dc.b	nD3, nD3, $04, nD3, $05
	smpsAlterVol        $FA
	dc.b	nD3
	smpsAlterVol        $06
	dc.b	nD3, $04, nD3, $05, nD3, $04
	smpsAlterVol        $FA
	dc.b	nD3, $05
	smpsAlterVol        $06
	dc.b	nD3, nD3, $04, nD3, $05
	smpsAlterVol        $FA
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, nD3, $04
	smpsAlterVol        $FA
	dc.b	nD3, $05
	smpsAlterVol        $06
	dc.b	nD3, nD3, $04, nD3, $05
	smpsAlterVol        $FA
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, nD3, $04
	smpsAlterVol        $FA
	dc.b	nD3, $05
	smpsAlterVol        $06
	dc.b	nD3, $04, nD3, $05, nD3
	smpsAlterVol        $FA
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, $04, nD3, $05
	smpsAlterVol        $FA
	dc.b	nD3
	smpsAlterVol        $06
	dc.b	nD3, $04, nD3, $05, nD3
	smpsAlterVol        $FA
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, $04, nD3, $05
	smpsAlterVol        $FA
	dc.b	nD3
	smpsAlterVol        $06
	dc.b	nD3, $04, nD3, $05, nD3, $04
	smpsAlterVol        $FA
	dc.b	nD3, $05
	smpsAlterVol        $06
	dc.b	nD3, nD3, $04, nD3, $05
	smpsAlterVol        $FA
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, nD3, $04
	smpsAlterVol        $FA
	dc.b	nD3, $05
	smpsAlterVol        $06
	dc.b	nD3, nD3, $04, nD3, $05
	smpsAlterVol        $FA
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, nD3, $04
	smpsAlterVol        $FA
	dc.b	nD3, $05
	smpsAlterVol        $06
	dc.b	nD3, $04, nD3, $05, nD3
	smpsAlterVol        $FA
	dc.b	nD3, $04
	smpsAlterVol        $06
	dc.b	nD3, $05, nD3, nD3, $7F, smpsNoAttack, $19
	smpsStop

MerrysLittleLamb_FM2:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $7F, $7F, $30
	smpsSetvoice        $01
	smpsAlterVol        $10
	dc.b	nEb3, $7F, smpsNoAttack, $19, nRst, $7F, $7F, $7F, $3E

MerrysLittleLamb_FM3:
MerrysLittleLamb_FM4:
MerrysLittleLamb_FM5:
	smpsStop

MerrysLittleLamb_PSG1:
	dc.b	nRst, $7F, $7F, $7F, $7F, $06, nFs4, $01
	smpsPSGAlterVol     $02
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $F5
	dc.b	nFs4
	smpsPSGAlterVol     $02
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $F8
	dc.b	nFs4
	smpsPSGAlterVol     $02
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $F5
	dc.b	nFs4
	smpsPSGAlterVol     $02
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $F5
	dc.b	nFs4
	smpsPSGAlterVol     $02
	dc.b	nFs4
	smpsPSGAlterVol     $06
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $F5
	dc.b	nFs4
	smpsPSGAlterVol     $02
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $F5
	dc.b	nFs4
	smpsPSGAlterVol     $02
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4
	smpsPSGAlterVol     $03
	dc.b	nFs4, nRst, $7F, $2B
	smpsPSGAlterVol     $F7
	dc.b	nG2, $08, nRst, $06, nF2, $08, nRst, $06, nBb2, $08, nRst, $0A
	dc.b	nG2, $06, nRst, $04, nG2, $05, nRst, $04, nA2, $05, nRst, $04
	dc.b	nG2, $05, nRst, $04, nA2, $08, nRst, $01, nBb2, $05, nRst, $01
	dc.b	nBb2, $05, nRst, $03, nBb2, $05, nRst, $01, nBb2, $04, nRst, nBb2
	dc.b	$05, nRst, $01, nBb2, $04, nRst, nBb2, $08, nRst, $7F, $7F, $26
	smpsStop

MerrysLittleLamb_PSG2:
	dc.b	nRst, $7F, $7F, $7F, $7F, $7F, $52
	smpsPSGAlterVol     $02
	dc.b	nD3, $08, nRst, $06, nE3, $08, nRst, $06, nE3, $08, nRst, $0A
	smpsAlterNote       $01
	dc.b	nFs3, $06, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs3, $05, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs3, $05, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs3, $05, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs3, $08, nRst, $01
	smpsAlterNote       $01
	dc.b	nFs3, $05, nRst, $01
	smpsAlterNote       $01
	dc.b	nFs3, $05, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs3, $05, nRst, $01
	smpsAlterNote       $01
	dc.b	nFs3, $04, nRst
	smpsAlterNote       $01
	dc.b	nFs3, $05, nRst, $01
	smpsAlterNote       $01
	dc.b	nFs3, $04, nRst
	smpsAlterNote       $01
	dc.b	nFs3, $08, nRst, $7F, $7F, $26
	smpsStop

MerrysLittleLamb_PSG3:
	dc.b	nRst, $7F, $7F, $7F, $7F, $39
	smpsPSGform         $E7
	smpsAlterNote       $08
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $05
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $08
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $07
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $05
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $07
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $04
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $07
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $09
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $07
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $09
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG, $07, nRst, $7F, $7F, $7F, $68
	smpsStop

MerrysLittleLamb_DAC:
	dc.b	dMidTimpani, $13, dLowTimpani, $06, dVLowTimpani, $0D, dLowTimpani, dMidTimpani, dMidTimpani, dMidTimpani, $1A, dLowTimpani
	dc.b	$0D, dLowTimpani, dLowTimpani, $19, dMidTimpani, $0D, dHiTimpani, dHiTimpani, $1A, dMidTimpani, $14, dLowTimpani
	dc.b	$06, dVLowTimpani, $0D, dLowTimpani, dMidTimpani, dMidTimpani, dMidTimpani, dLowTimpani, $0C, dLowTimpani, $0D, dLowTimpani
	dc.b	dMidTimpani, dLowTimpani, dMerryWtf1, $34, dMidTimpani, $0E, dLowTimpani, $04, dVLowTimpani, $09, dLowTimpani, $0A
	dc.b	dMidTimpani, $09, dMidTimpani, dMidTimpani, dMerryWtf2, $0A, dLowTimpani, $09, dLowTimpani, dLowTimpani, dMerryWtf3, dMidTimpani
	dc.b	$0A, dHiTimpani, $09, dHiTimpani, dSnare, dMidTimpani, $05, dKick, $09, dLowTimpani, $05, dVLowTimpani
	dc.b	$09, dLowTimpani, dMidTimpani, dMidTimpani, $0A, dMidTimpani, $09, dLowTimpani, dHiTimpani, $05, dMidTimpani, $04
	dc.b	dLowTimpani, $0A, dMidTimpani, $09, dLowTimpani, dSnare, $01, dSnare, $04, dSnare, $01, dSnare
	dc.b	$03, dSnare, $01, dKick, $04, dKick, $01, dSnare, $03, dSnare, $01, dKick
	dc.b	$04, dKick, $01, dSnare, $04, dSnare, $01, dKick, $03, dKick, $01, dSnare
	dc.b	$04, dMidTimpani, $05, dSnare, $04, dSnare, $05, dLowTimpani, $04, dVLowTimpani, $05, dSnare
	dc.b	dLowTimpani, $04, dSnare, $05, dMidTimpani, $04, dSnare, $05, dMidTimpani, dSnare, $04, dMidTimpani
	dc.b	$05, dSnare, dMerryWtf2, $04, dSnare, $05, dLowTimpani, $04, dSnare, $05, dLowTimpani, dSnare
	dc.b	$04, dLowTimpani, $05, dSnare, $04, $86, $05, dSnare, dMidTimpani, $04, dSnare, $05
	dc.b	dHiTimpani, $04, dSnare, $05, dHiTimpani, dSnare, $04, dSnare, $05, dSnare, dMidTimpani, $04
	dc.b	dSnare, $05, dSnare, $04, dLowTimpani, $05, dVLowTimpani, dSnare, $04, dLowTimpani, $05, dSnare
	dc.b	$04, dMidTimpani, $05, dSnare, dMidTimpani, $09, dMidTimpani, $04, dSnare, $05, dLowTimpani, $09
	dc.b	dHiTimpani, $01, dHiTimpani, $04, dHiTimpani, $01, dMidTimpani, $04, dMidTimpani, dHiTimpani, $01, dHiTimpani
	dc.b	$04, dHiTimpani, $01, dMidTimpani, $03, dMidTimpani, $01, dMidTimpani, $04, dHiTimpani, $01, dHiTimpani
	dc.b	$04, dHiTimpani, $01, dMidTimpani, $03, dMidTimpani, $01, dMidTimpani, $04, dMerryClap, $01, dMerryClap
	dc.b	$03, dMerryClap, $01, dVLowTimpani, $04, dVLowTimpani, $01, dVLowTimpani, $04, dSnare, $01, dKick
	dc.b	$03, dKick, $01, dSnare, $04, dSnare, $01, dKick, $04, dSnare, $7F, nRst
	smpsStop

MerrysLittleLamb_Voices:
;	Voice $00
;	$00
;	$70, $70, $70, $70, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $1F
;	$00, $00, $00, $12, 	$F0, $F0, $F0, $0F, 	$00, $00, $00, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $07, $07
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $00, $00, $00
	smpsVcDecayRate2    $12, $00, $00, $00
	smpsVcDecayLevel    $00, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $00, $00, $00
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $01
;	$25
;	$01, $01, $01, $71, 	$1E, $1E, $1E, $1E, 	$08, $06, $0B, $03
;	$00, $00, $00, $00, 	$4F, $4F, $AF, $0F, 	$08, $16, $06, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0B, $06, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $0A, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $06, $16, $08

