fle_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     fle_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       fle_DAC
	smpsHeaderFM        fle_FM1,	$00, $00
	smpsHeaderFM        fle_FM2,	$00, $00
	smpsHeaderFM        fle_FM3,	$00, $00
	smpsHeaderFM        fle_FM4,	$00, $00
	smpsHeaderFM        fle_FM5,	$00, $00
	smpsHeaderPSG       fle_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       fle_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       fle_PSG3,	$00, $00, $00, $00

; FM1 Data
fle_FM1:
; FM2 Data
fle_FM2:
; FM3 Data
fle_FM3:
	smpsStop

; FM4 Data
fle_FM4:
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

; FM5 Data
fle_FM5:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $7F, $7F, $30
	smpsSetvoice        $01
	smpsAlterVol        $10
	dc.b	nEb3, $7F, smpsNoAttack, $19, nRst, $7F, $7F, $7F, $3E
	smpsStop

; PSG1 Data
fle_PSG1:
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

; PSG2 Data
fle_PSG2:
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

; PSG3 Data
fle_PSG3:
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

; DAC Data
fle_DAC:
	dc.b	dMidTimpani, $13, dTimpani, $06, dVLowTimpani, $0D, dTimpani, dMidTimpani, dMidTimpani, dMidTimpani, $1A, dTimpani
	dc.b	$0D, dTimpani, dTimpani, $19, dMidTimpani, $0D, dHiTimpani, dHiTimpani, $1A, dMidTimpani, $14, dTimpani
	dc.b	$06, dVLowTimpani, $0D, dTimpani, dMidTimpani, dMidTimpani, dMidTimpani, dTimpani, $0C, dTimpani, $0D, dTimpani
	dc.b	dMidTimpani, dTimpani, $85, $34, dMidTimpani, $0E, dTimpani, $04, dVLowTimpani, $09, dTimpani, $0A
	dc.b	dMidTimpani, $09, dMidTimpani, dMidTimpani, $85, $0A, dTimpani, $09, dTimpani, dTimpani, $84, dMidTimpani
	dc.b	$0A, dHiTimpani, $09, dHiTimpani, dSnare, dMidTimpani, $05, dKick, $09, dTimpani, $05, dVLowTimpani
	dc.b	$09, dTimpani, dMidTimpani, dMidTimpani, $0A, dMidTimpani, $09, dTimpani, dHiTimpani, $05, dMidTimpani, $04
	dc.b	dTimpani, $0A, dMidTimpani, $09, dTimpani, dSnare, $01, dSnare, $04, dSnare, $01, dSnare
	dc.b	$03, dSnare, $01, dKick, $04, dKick, $01, dSnare, $03, dSnare, $01, dKick
	dc.b	$04, dKick, $01, dSnare, $04, dSnare, $01, dKick, $03, dKick, $01, dSnare
	dc.b	$04, dMidTimpani, $05, dSnare, $04, dSnare, $05, dTimpani, $04, dVLowTimpani, $05, dSnare
	dc.b	dTimpani, $04, dSnare, $05, dMidTimpani, $04, dSnare, $05, dMidTimpani, dSnare, $04, dMidTimpani
	dc.b	$05, dSnare, $85, $04, dSnare, $05, dTimpani, $04, dSnare, $05, dTimpani, dSnare
	dc.b	$04, dTimpani, $05, dSnare, $04, $86, $05, dSnare, dMidTimpani, $04, dSnare, $05
	dc.b	dHiTimpani, $04, dSnare, $05, dHiTimpani, dSnare, $04, dSnare, $05, dSnare, dMidTimpani, $04
	dc.b	dSnare, $05, dSnare, $04, dTimpani, $05, dVLowTimpani, dSnare, $04, dTimpani, $05, dSnare
	dc.b	$04, dMidTimpani, $05, dSnare, dMidTimpani, $09, dMidTimpani, $04, dSnare, $05, dTimpani, $09
	dc.b	dHiTimpani, $01, dHiTimpani, $04, dHiTimpani, $01, dMidTimpani, $04, dMidTimpani, dHiTimpani, $01, dHiTimpani
	dc.b	$04, dHiTimpani, $01, dMidTimpani, $03, dMidTimpani, $01, dMidTimpani, $04, dHiTimpani, $01, dHiTimpani
	dc.b	$04, dHiTimpani, $01, dMidTimpani, $03, dMidTimpani, $01, dMidTimpani, $04, dTimpani, $01, dTimpani
	dc.b	$03, dTimpani, $01, dVLowTimpani, $04, dVLowTimpani, $01, dVLowTimpani, $04, dSnare, $01, dKick
	dc.b	$03, dKick, $01, dSnare, $04, dSnare, $01, dKick, $04, dSnare, $7F, nRst
	dc.b	$19
	smpsStop

fle_Voices:
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

