jump_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     jump_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM4, jump_FM4,	$00, $00
    smpsHeaderSFXChannel cPSG3, jump_PSG3, $00, $00

; FM4 Data
jump_FM4:
	smpsSetvoice        $00
	smpsPan             panNone, $00
	smpsAlterVol        $07
	smpsPan             panCenter, $00
	dc.b	nC2, $03, nC4
	smpsAlterVol        $07
	smpsPan             panRight, $00
	dc.b	nC2, nC4
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nC2, nC4
	smpsAlterVol        $03
	smpsPan             panCenter, $00
	dc.b	nC2, nC4
	smpsPan             panNone, $00
	dc.b	nRst, $3D
	smpsStop

; PSG3 Data
jump_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $56
	smpsStop

jump_Voices:
;	Voice $00
;	$3C
;	$00, $0F, $01, $00, 	$1F, $1F, $1F, $1F, 	$00, $12, $14, $0E
;	$00, $11, $00, $11, 	$0F, $EF, $FF, $0F, 	$00, $00, $00, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $01, $0F, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $14, $12, $00
	smpsVcDecayRate2    $11, $00, $11, $00
	smpsVcDecayLevel    $00, $0F, $0E, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

