Fart_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     Fart_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $04

	smpsHeaderSFXChannel cFM3, Fart_FM3,	$00, $01
	smpsHeaderSFXChannel cFM4, Fart_FM4,	$00, $01
	smpsHeaderSFXChannel cFM5, Fart_FM5,	$F4, $01
	smpsHeaderSFXChannel cPSG3, Fart_PSG3,    $00, $03

Fart_FM3:
	smpsSetvoice        $00
	smpsAlterVol        $07
	smpsPan             panCenter, $00
	smpsModSet          $00, $02, $10, $03
	dc.b	nG2, $03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nA2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA2, $11, nRst, $7F, $2C
	smpsStop

; FM4 Data
Fart_FM4:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $06
	smpsSetvoice        $00
	smpsAlterVol        $16
	smpsPan             panLeft, $00
	smpsModSet          $00, $02, $10, $03
	dc.b	nA2, $12
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nA2, $0C
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nA2
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nA2
	smpsAlterVol        $04
	dc.b	smpsNoAttack, nA2
	smpsAlterVol        $06
	dc.b	smpsNoAttack, nA2, $18
	smpsAlterVol        $10
	dc.b	smpsNoAttack, nA2, $0C
	smpsAlterVol        $10
	dc.b	smpsNoAttack, nA2, $12, nRst, $42
	smpsStop

; FM5 Data
Fart_FM5:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $09
	smpsSetvoice        $00
	smpsAlterVol        $16
	smpsPan             panRight, $00
	smpsModSet          $00, $02, $10, $03
	dc.b	nA2, $15
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nA2, $0C
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nA2
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nA2
	smpsAlterVol        $04
	dc.b	smpsNoAttack, nA2
	smpsAlterVol        $06
	dc.b	smpsNoAttack, nA2, $15
	smpsAlterVol        $10
	dc.b	smpsNoAttack, nA2, $0C
	smpsAlterVol        $10
	dc.b	smpsNoAttack, nA2, $12, nRst, $3F
	smpsStop

; PSG3 Data
Fart_PSG3:
	smpsStop

; FM Voices
Fart_Voices:
;	Voice $00
;	$39
;	$70, $32, $71, $01, 	$DF, $DF, $DF, $1F, 	$04, $00, $00, $00
;	$1F, $16, $00, $00, 	$E0, $00, $09, $FA, 	$12, $00, $00, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $07
	smpsVcCoarseFreq    $01, $01, $02, $00
	smpsVcRateScale     $00, $03, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $04
	smpsVcDecayRate2    $00, $00, $16, $1F
	smpsVcDecayLevel    $0F, $00, $00, $0E
	smpsVcReleaseRate   $0A, $09, $00, $00
	smpsVcTotalLevel    $00, $00, $00, $12

;	Voice $01
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