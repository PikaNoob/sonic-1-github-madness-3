hugefart_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     hugefart_Voices
	smpsHeaderChan      $02, $00
	smpsHeaderTempo     $02, $08

	smpsHeaderDAC       hugefart_DAC
	smpsHeaderFM        hugefart_FM1,	$0C, $01

; FM1 Data
hugefart_FM1:
	smpsSetvoice	    $00
	smpsPan             panCenter, $00
	smpsAlterVol        $05
	dc.b	nFs2, $03
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nF1
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nFs1
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, nG1
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $06
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, nAb1, $03
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, nA1
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $1E
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, nBb1
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $1D
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nB1
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nC2
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, nCs2
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nD2
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nEb2
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nE2
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nF2
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $03
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nFs2, smpsNoAttack, $66
	smpsPan             panCenter, $00
	smpsStop

; DAC Data
hugefart_DAC:
	dc.b $80
	smpsFade

hugefart_Voices:
;	Voice $00
;	$2A
;	$00, $16, $10, $02, 	$10, $C0, $CD, $9F, 	$00, $00, $00, $00
;	$00, $00, $12, $0C, 	$00, $FF, $57, $48, 	$0C, $27, $17, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $01, $00
	smpsVcCoarseFreq    $02, $00, $06, $00
	smpsVcRateScale     $02, $03, $03, $00
	smpsVcAttackRate    $1F, $0D, $00, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $0C, $12, $00, $00
	smpsVcDecayLevel    $04, $05, $0F, $00
	smpsVcReleaseRate   $08, $07, $0F, $00
	smpsVcTotalLevel    $00, $17, $27, $0C
