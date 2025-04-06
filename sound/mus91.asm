Mus91_Credits_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     Mus91_Credits_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $33

	smpsHeaderDAC       Mus91_Credits_DAC
	smpsHeaderFM        Mus91_Credits_FM1,	$F4, $12
	smpsHeaderFM        Mus91_Credits_FM2,	$00, $0B
	smpsHeaderFM        Mus91_Credits_FM3,	$F4, $14
	smpsHeaderFM        Mus91_Credits_FM4,	$F4, $08
	smpsHeaderFM        Mus91_Credits_FM5,	$F4, $20
	smpsHeaderPSG       Mus91_Credits_PSG1,	$D0, $01, $00, $00
	smpsHeaderPSG       Mus91_Credits_PSG2,	$D0, $03, $00, $00
	smpsHeaderPSG       Mus91_Credits_PSG3,	$00, $03, $00, fTone_04
;	this is just a rip of the track
;	ripper, 	part,		joke
;	coninight, 	intro,		beavis and butthead (oily fella) - COMPLETE!
;	coninight, 	ghz,		luka luka night fever - COMPLETE!
;	coninight, 	lz,		the cleveland show (callback) - COMPLETE!
;	coninight, 	mz,		somari - COMPLETE!
;	carlos, 	slz,		meltdown - COMPLETE! maybe?
;	coninight, 	sbz,		sailor moon (MD 1994) - dream land part 2 - COMPLETE!
;	undecided, 	syz,		undecided...
;	thegamer2000, 	ending,		super mario land, unknown - COMPLETE!
; additional fart by coninight

; FM1 Data
Mus91_Credits_FM1:
	smpsNop             $01
	dc.b	nRst, $60
	smpsSetvoice        $1C
	smpsAlterVol        $F8
	smpsNoteFill        $06
	smpsCall            Mus91_Credits_Call11
	smpsPan             panCenter, $00
	smpsNoteFill        $00
	smpsSetvoice        $03
	smpsModSet          $0D, $01, $07, $04

	smpsCall            Mus91_Credits_Call12	;ruka ruka
	dc.b	nG5, $0C, nAb5, nBb5, $18, nAb5, $30	;★ naito fiibaa

	smpsCall            Mus91_Credits_Call12	;watashi wa 
	dc.b	nEb6, $0C, nCs6, nC6, nCs6		;koko ni
	dc.b	nC6, nC6, nBb5, nAb5, nRst		;iru kara

	dc.b	nF5, nF5, nG5, nAb5, nBb5, $18		;sukoshi de mo
	dc.b	nG5, nAb5, $0C, nBb5, $18, nAb5, nRst	;shisen o

	dc.b	nF5, nG5, nAb5, nBb5, $0C		;sorashicha

	smpsCall           Mus91_Credits_DameDameYo	;dame dame yo

	smpsModOff
	smpsNop             $01
	smpsSetvoice        $05
	smpsAlterVol        $02
	dc.b	nE5, $0C, nG5, nE5			;My name is
;cut for tempo change
	smpsSetTempoMod     $0F
;perfect now continue
	dc.b	nG5, $09, nG5, nA5, $0C			;Cleveland Brown

	dc.b	nE5, $06, nE5, $03, nD5, nC5, $06	;and I am
	dc.b	nC5, $09, nC5, nA4, $06, nRst		;proud to be

	dc.b	nE6, $06, nD6, nB5			; and silence
	dc.b	nD6, $09, nC6, nA5, $0C

	dc.b	nB5, $06, nA5, $03, nG5, nA5, $06
	dc.b	nA5, $09, nA5, nB5, $06, nRst, $0C

	dc.b	nC6, nD6, $04, nC6, nD6, nC6, $24	;welcome back to labyrinth zone from sonic 1
	smpsAlterPitch      $F4
	smpsAlterVol        $09
	smpsSetvoice        $08
	dc.b	nRst, $18, nA5, $06, nB5, nC6, nE6
	smpsCall            Mus91_Credits_Call0C
	smpsSetvoice        $0B
	smpsAlterVol        $EB
	dc.b	nRst, $0C, nG5, nA5, nG6
	smpsCall            Mus91_Credits_CallMeltdown1 ; meltdown haha funny
	
	;dc.b	nE6, $1E, nE7, $06, nC7, $18, nRst, $24
	;smpsNop             $01
	; no more interlude
	smpsSetTempoMod     $0A
	smpsSetvoice        $0F
	smpsAlterPitch      $0C
	smpsAlterVol        $0B
	smpsCall            Mus91_Credits_Call0E
	smpsNop             $01
	smpsSetTempoMod     $07
	dc.b	nRst, $60
	smpsNop             $01
	smpsSetTempoMod     $03
	dc.b	nRst, $30
	smpsSetvoice        $17
	smpsAlterVol        $0E
	dc.b	nRst, $04, nF6, $08, nE6, $03, nRst, nD6, nRst, nC6, nRst, nD6
	dc.b	nRst, nC6, $04, nA5, nRst, $02, nBb5, nRst, $04, nBb5, $08, nC6
	dc.b	$03, nRst, nBb5, nRst, nA5, $04, nBb5, nRst, $02, nC6, $0E, nRst
	dc.b	$06, nE6, $02, nRst, $04, nE6, $0C, nF6, nE6, $0A, nD6, $02
	smpsNop             $01
	smpsSetTempoMod     $04
	smpsAlterVol        $F5
	smpsSetvoice        $1A
	dc.b	nRst, $60
	smpsCall            Mus91_Credits_Call07
	smpsAlterVol        $09
	smpsAlterNote       $03
	smpsSetvoice        $18
	smpsModSet          $00, $01, $06, $04
	smpsCall            Mus91_Credits_Call0B
	smpsAlterVol        $EF
	smpsSetvoice        $1B
	smpsAlterNote       $02
	dc.b	nA1, $6C, smpsNoAttack, $60
	smpsNop             $01
	smpsStop

Mus91_Credits_Call12:
	;whats the name of the pink haired vocaloid just askin'
	;and twice as well
	;them:
	dc.b	nF5, $18, nC6, nF5, nC6
	smpsReturn

Mus91_Credits_DameDameYo:
	smpsCall           Mus91_Credits_DameDameYo1	;dame dame yo
	dc.b	nRst, $60, $60, $60, $18
	smpsCall           Mus91_Credits_DameDameYo1	;dame dame yo
	smpsReturn

Mus91_Credits_DameDameYo1:
	dc.b	nG5, $18, nAb5, $0C, nG5, nAb5, nF5	
	smpsReturn

Mus91_Credits_Call07:
	dc.b		nCs6,	$0C,	nRst,	nB5,	$09,	nA5,	$03,	nRst
	dc.b		$06,	nCs6,	$1E,	nRst,	$0C,	nA5,	$09,	nB5
	dc.b		$03,	nCs6,	$06,	nRst,	nCs6,	nRst,	nB5,	nRst
	dc.b		nA5,	nRst,	nCs6,	nRst,	nD6,	nRst,	nE6,	nRst
	dc.b		nFs6,	nRst,	$12,	nA5,	$06,	nRst,	nA5,	nRst
	dc.b		nFs5,	nRst,	nE5,	$0C,	nRst,	$06,	nCs6,	$12
	dc.b		nRst,	$0C,	nFs5,	$06,	nRst,	nA5,	nRst,	nB5
	dc.b		nRst,	nCs6,	nRst,	nB5,	$0C,	nRst,	$06,	nE5
	dc.b		$12,	nRst,	$0C
	smpsReturn

; FM2 Data
Mus91_Credits_FM2:
	dc.b	nRst, $60
	smpsSetvoice        $1D

Mus91_Credits_Loop0F:
	dc.b	nA2, $0C, nA2, nA3, nA3, nG3, nG3
	dc.b	nA3, nA3
	smpsLoop            $00, $08, Mus91_Credits_Loop0F
	smpsSetvoice        $00

Mus91_Credits_Loop10:
	smpsNoteFill        $0A

	smpsCall            Mus91_lukabass1
	smpsCall            Mus91_Credits_Call0F
	dc.b	nAb3, $0C, $0C, $0C, $0C, $0C, $0C, nG3, $0C, nFs3, $0C
	smpsCall            Mus91_lukabass1
	dc.b	nCs3, $0C, $0C, $0C, $0C, nEb3, $0C, $0C, $0C
	smpsNoteFill        $00
	smpsCall            Mus91_Credits_Call01F
	dc.b	nRst, $60, $60, $54
	smpsCall            Mus91_Credits_Call01F

	smpsSetvoice        $06
	smpsAlterPitch      $E8
	smpsAlterVol        $02

Mus91_Credits_Loop12:
	dc.b	nC4, $0F, nRst, $03, nE4, nRst, nG4, $09, nRst, $03, nA4, $09
	dc.b	nRst, $03, nB4, $0F, nRst, $03, nA4, nRst, nG4, $09, nRst, $03
	dc.b	nE4, $09, nRst, $03
	smpsAlterPitch      $05
	smpsLoop            $00, $02, Mus91_Credits_Loop12
	smpsAlterPitch      $F6
	dc.b	nC4, $0F, nRst, $03, nE4, nRst, nG4, $09, nRst, $03, nE4, $09
	dc.b	nRst, $03, nC4, $06, nRst, $12, nE4, $18
	smpsAlterVol        $01
	smpsSetvoice        $09

Mus91_Credits_Loop13:
	dc.b	nA3, $03, nRst, nA3, $06, nA4, $03, nRst, nA4, $06, nG4, $03
	dc.b	nRst, nG4, $06, nA4, $03, nRst, nA4, $06
	smpsLoop            $00, $07, Mus91_Credits_Loop13
	dc.b	nA3, $03, nRst, $09, nRst, $24
	smpsAlterVol        $F8
	dc.b	nC4, $06, nRst, $03, nC4, nRst, $06, nC4, $12, nRst, $06, nC4
	dc.b	$02, nRst, $01, nC4, $02, nRst, $01, nBb3, $06, nRst, $03, nBb3
	dc.b	$03, nRst, $06, nA3, $12, nRst, $06, nA3, $02, nRst, $01, nA3
	dc.b	$02, nRst, $01

Mus91_Credits_Loop15:
	dc.b	nD4, $06, nRst, $03, nD4, $06, nRst, $03, nD4, $02, nRst, $01
	dc.b	nD4, $02, nRst, $01
	smpsAlterPitch      $FF
	smpsLoop            $00, $04, Mus91_Credits_Loop15
	smpsAlterPitch      $04
	dc.b	nG3, $06, nRst, $03, nG3, nRst, $06, nG3, $12, nRst, $06, nG3
	dc.b	$02, nRst, $01, nG3, $02, nRst, $01, nB3, $06, nRst, $03, nB3
	dc.b	nRst, $06, nB3, $12, nRst, $06, nD4, $02, nRst, $01, nB3, $02
	dc.b	nRst, $01, nC4, $06, nRst, $03, nC4, nRst, $06, nC4, $12, nRst
	dc.b	$06, nE4, $02, nRst, $01, nF4, $02, nRst, $01, nG4, $06, nRst
	dc.b	nG3, $24
	smpsSetvoice        $10
	smpsAlterPitch      $0C
	smpsAlterVol        $07
	smpsNoteFill        $06

Mus91_Credits_Loop16:
	smpsCall            Mus91_Credits_Call10
	dc.b	nF3, nF2, nF3, nRst, $09, nF3, $03, nA3, nG3, nG3, nG3, nRst
	dc.b	$09, nA3, $03, nB3
	smpsCall            Mus91_Credits_Call10
	dc.b	nF3, nF3, nF3, nRst, nG3, nA3, nB3, nG3, nC4, nC4, nC4, nRst
	dc.b	$09, nE3, $03, nG3
	smpsNoteFill        $00
	smpsAlterPitch      $F4
	smpsAlterVol        $FC
	smpsSetvoice        $14
	dc.b	nRst, $30, nRst, $30, nA4, $03, nRst, nA4, nRst, nG4, nRst, nG4
	dc.b	nRst, nF4, nRst, nF4, nRst, nE4, nRst, nE4, $02, nRst, nBb4
	smpsAlterVol        $02
	dc.b	nRst, $04, nBb4, $08, nC5, $03, nRst, nBb4, nRst, nA4, $06, nRst
	dc.b	nBb4, $04, nA4, nRst, $02, nG4, nRst, $04, nG4, $08, nA4, $03
	dc.b	nRst, nG4, nRst, nF4, nRst, nF4, nRst, nG4, $04, nF4, nRst, $02
	dc.b	nE4, nRst, $04, nE4, $08, nE4, $03, nRst, nE4, nRst, nA4, $09
	dc.b	nRst, $03, nA4, $0A, nD4, $02
	smpsAlterPitch      $0C
	smpsAlterVol        $FE
	smpsSetvoice        $19
	dc.b	nRst, $60

Mus91_Credits_Loop17:
	dc.b	nA3,	$06,	nRst,	nA3,	nRst,	nE3,	nRst,	nE3
	dc.b	nRst,	nG3,	$12,	nE3,	$0C,	nFs3,	$06,	nAb3
	dc.b	$0C,	nA3,	$06,	nRst,	nA3,	nRst,	nE3,	nRst
	dc.b	nE3,	nRst,	nD4,	$12,	nCs4,	$0C,	nC4,	$06
	dc.b	nB3,	$0C,	nD3,	$06,	nRst,	nD3,	nRst,	nFs3
	dc.b	nRst,	nFs3,	nRst,	nA3,	$12,	nE4,	$0C,	nE3
	dc.b	$06,	nA3,	$0C,	nB3,	$06,	nRst,	nB3,	nRst
	dc.b	nEb4,	nRst,	nEb4,	nRst,	nE4,	$12,	nE3,	$0C
	dc.b	nE4,	$06,	nE3,	$0C
	dc.b	nG3, $06, nRst, nE3, nRst, nF3, nRst, nFs3, nRst, nG3, $06, nG3
	dc.b	$06, nE3, $06, nRst, nF3, nRst, nG3, nRst, nE3, $06, nRst, nE3
	dc.b	nRst, nAb3, nRst, nAb3, nRst, nB3, $06, nRst, nB3, nRst, nD4, nRst
	dc.b	nD4, nRst, nRst, $0C, nA3, $12, nRst, $06, nA3, $12, nAb3, $12
	dc.b	nA3, $06, nRst
	smpsAlterVol        $FD
	dc.b	nA2, $6C, smpsNoAttack, $60
	smpsStop

Mus91_lukabass1:
	smpsCall            Mus91_Credits_Call0F
	dc.b	nC3, $0C, $0C, $0C, $0C, nF3, $0C, $0C, nC3, $0C, $0C
	smpsReturn

Mus91_Credits_Call0F:
	dc.b	nCs3, $0C, $0C, $0C, $0C, nEb3, $0C, $0C, $0C, $0C
	smpsReturn

Mus91_Credits_Call01F:
	dc.b	nG2, $18, nAb2, $0C, nG2, nAb2, nF2, $18, nRst, $18
	smpsReturn

Mus91_Credits_Call10:
	dc.b	nC4, $03, nC4, nC4, nRst, $09, nC4, $03, nB3, nBb3, nBb3, nBb3
	dc.b	nRst, $09, nBb3, $03, nBb3, nA3, nA3, nA3, nRst, $09, nA3, $03
	dc.b	nA3, nAb3, nAb3, nAb3, nRst, $09, nAb3, $03, nAb3, nG3, nG3, nG3
	dc.b	nRst, $09, nA3, $03, nG3, nFs3, nFs3, nFs3, nRst, $09, nD3, $03
	dc.b	nE3
	smpsReturn

; FM3 Data
Mus91_Credits_FM3:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Mus91_Credits_FM3
	smpsSetvoice        $1F
	smpsAlterVol        $01
	smpsPan             panRight, $00
	dc.b	nA5, $06, nB5, nCs6, nD6, nB5
	dc.b	nCs6, nD6, nE6, nD6, nE6, nFs6
	dc.b	nAb6, nA6, nB6, nD7, nE7

Mus91_Credits_Loop0C:
	smpsPan             panLeft, $00
	dc.b	nF7
	smpsPan             panRight, $00
	dc.b	nCs7
	smpsAlterVol        $02
	smpsLoop            $00, $0D, Mus91_Credits_Loop0C
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsAlterVol        $E5
	smpsAlterPitch      $E8
	dc.b	nEb6, $06, nF6, nAb6, $0C, nF6, nRst, $4E, nRst, nEb6, $06, nF6
	dc.b	nAb6, $0C, nC7, nRst, $4E, nRst, nEb6, $06, nF6, nAb6, $0C, nF6
	dc.b	nRst, $54
	smpsSetvoice        $04
	smpsCall           Mus91_Credits_DameDameYo
	smpsModOff
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, $12
	smpsSetvoice        $08
	smpsAlterPitch      $0C
	smpsAlterNote       $02
	dc.b	nRst, $18, nA5, $06, nB5, nC6, nE6
	smpsCall            Mus91_Credits_Call0C
	smpsSetvoice        $0D
	smpsAlterPitch      $0C
	smpsAlterVol        $0B
	dc.b	nRst, $0C, nG5, nA5, nG6
	smpsCall            Mus91_Credits_CallMeltdown1
	; no more interlude teehee
;	smpsSetvoice        $0A
;	smpsAlterVol        $EC
;	dc.b	nRst, $06
;	smpsAlterNote       $14
;	dc.b	nG5, $01, smpsNoAttack
;	smpsAlterNote       $00
;	dc.b	$02, nA5, $03
;	smpsNoteFill        $05
;	dc.b	nC6, $03, nC6, $06, nA5, $03, nC6
;	smpsNoteFill        $00
;	dc.b	nC6
;	smpsAlterVol        $FC
;	smpsAlterPitch      $33
;	smpsSetvoice        $0E
;	dc.b	nEb4, $03
;	smpsAlterVol        $07
;	dc.b	nEb4
;	smpsAlterVol        $07
;	dc.b	nEb4
;	smpsAlterVol        $07
;	dc.b	nEb4
;	smpsSetvoice        $0A
;	smpsAlterVol        $EF
;	smpsAlterPitch      $CD
;	dc.b	nE6, $03, nF6, nG6, nRst, $09
;	smpsAlterNote       $EC
;	dc.b	nC7, $01, smpsNoAttack
;	smpsAlterNote       $00
;	smpsModSet          $2C, $01, $04, $04
;	dc.b	nC7, $23
;	smpsModOff
	smpsSetvoice        $0F
	smpsAlterVol        $FF
	smpsAlterNote       $03
	smpsCall            Mus91_Credits_Call0E
	smpsAlterNote       $00
	smpsSetvoice        $15
	smpsAlterVol        $09
	dc.b	nRst, $30, nRst, $30, nRst, $2E, nF5, $02, nRst, $04, nF5, $08
	dc.b	nF5, $03, nRst, nF5, nRst, nE5, $03, nRst, $13, nD5, $02, nRst
	dc.b	$04, nD5, $08, nD5, $03, nRst, nD5, nRst, nC5, $03, nRst, $15
	dc.b	nRst, $04, nA6, $08, nG6, $03, nRst, nG6, nRst, nF6, nRst, nF6
	dc.b	nRst, nE6, $04, nF6, $02, nE6, $04, nD6, $02
	smpsSetvoice        $0A
	smpsAlterVol        $F9
	dc.b	nRst, $60

	dc.b		nE6,	$06,	nRst,	nE6,	nRst,	nE6,	nRst,	nE6
	dc.b		nRst,	nE6,	$0C,	nRst,	$06,	nCs6,	$1E,	nCs6
	dc.b		$06,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst
	dc.b		nCs6,	$0C,	nRst,	$06,	nCs6,	$1E,	nA5,	$06
	dc.b		nRst,	nA5,	nRst,	nA5,	nRst,	nCs6,	nRst,	nCs6
	dc.b		$0C,	nRst,	$06,	nCs6,	$1E,	nD6,	$06,	nRst
	dc.b		nD6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nAb5,	$0C
	dc.b		nRst,	$06,	nAb5,	$1E
	dc.b	nRst, $0C, nD6, $12, nRst, $06, nD6, nRst, nCs6, $12, nD6, nCs6
	dc.b	$0C, nAb5, $18, nB5, nD6, nAb6, nRst, $0C, nE6, nRst, nE6, $12
	dc.b	nEb6, nE6, $06, nRst
	smpsSetvoice        $19
	smpsAlterVol        $F8
	smpsAlterNote       $03
	dc.b	nA2, $6C, smpsNoAttack, $60
	smpsStop

Mus91_Credits_Call14:
	dc.b	nA5, $06, nB5, nCs6, nD6, nB5
	dc.b	nCs6, nD6, nE6, nD6, nE6, nFs6
	dc.b	nAb6, nA6, nB6, nD7, nE7
	smpsReturn

; FM4 Data
Mus91_Credits_FM4:
	smpsSetvoice        $20
	dc.b	nRst, $60
	smpsAlterVol        $08
oily1:
	dc.b	nA5, $0C
	smpsLoop            $01, $0C, oily1
	dc.b	nG5, nFs5, nE5, nA4
	smpsLoop            $00, $04, oily1
	smpsPan             panLeft, $00
	smpsCall            Mus91_Credits_Call03
	smpsAlterVol        $F2
	smpsCall           Mus91_Credits_DameDameYo2	;dame dame yo
	smpsAlterPitch      $18
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, $3C
	smpsPan             panCenter, $00
	smpsSetvoice        $0A
	smpsAlterPitch      $F4
	smpsAlterVol        $05

	smpsCall            Mus91_Credits_Loop0A
	dc.b	nRst, $2D

	smpsAlterPitch      $F4
	smpsAlterVol        $03
	smpsSetvoice        $0C
	smpsPan             panLeft, $00
	smpsCall            Mus91_Credits_Call09
	smpsSetvoice        $11
	smpsAlterVol        $F6
	smpsAlterPitch      $18
	smpsCall            Mus91_Credits_Call0A
	dc.b	nRst, $0C
	smpsAlterNote       $EC
	dc.b	nD5, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $0A, nRst, $03, nF5, nRst, nRst, nF5, nRst, $09
	smpsCall            Mus91_Credits_Call0A
	smpsAlterNote       $EC
	dc.b	nE5, $02
	smpsAlterNote       $00
	dc.b	$0A, nRst, $06
	smpsModSet          $18, $01, $07, $04
	smpsAlterNote       $E2
	dc.b	nE5, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$1C
	smpsAlterNote       $00
	smpsAlterNote       $03
	smpsCall            Mus91_Credits_Call06
	smpsAlterNote       $00
	smpsPan             panCenter, $00
	smpsSetvoice        $0A
	smpsAlterVol        $F5
	dc.b	nRst, $60
	dc.b	nCs6,	$06,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b	nRst,	nCs6,	$0C,	nRst,	$06,	nA5,	$1E,	nA5
	dc.b	$06,	nRst,	nA5,	nRst,	nA5,	nRst,	nA5,	nRst
	dc.b	nA5,	$0C,	nRst,	$06,	nA5,	$1E,	nFs5,	$06
	dc.b	nRst,	nFs5,	nRst,	nFs5,	nRst,	nA5,	nRst,	nA5
	dc.b	$0C,	nRst,	$06,	nA5,	$1E,	nB5,	$06,	nRst
	dc.b	nB5,	nRst,	nA5,	nRst,	nA5,	nRst,	nE5,	$0C
	dc.b	nRst,	$06,	nE5,	$1E
	smpsSetvoice        $18
	smpsAlterNote       $03
	smpsAlterVol        $08
	smpsCall            Mus91_Credits_Call0B
	smpsSetvoice        $19
	smpsAlterVol        $F0
	smpsModSet          $00, $01, $06, $04
	dc.b	nA2, $6C, smpsNoAttack, $60
	smpsStop

Mus91_Credits_DameDameYo2:
	smpsCall           Mus91_Credits_DameDameYo21	;dame dame yo
	dc.b	nRst, $60, $60, $60, $18
	smpsCall           Mus91_Credits_DameDameYo21	;dame dame yo
	smpsReturn

Mus91_Credits_DameDameYo21:
	dc.b	nC5, $18, nCs5, $0C, nC5, nCs5, nAb4
	smpsReturn

Mus91_Credits_Call08:
	dc.b	nB5, $24, $24, $18, nA5, $24, $24, $18, nG5, $24, $24, $18
	smpsReturn

Mus91_Credits_Call03:
	smpsSetvoice        $02
	smpsAlterPitch      $E8
	smpsAlterVol        $0D
	smpsCall            Mus91_Credits_Call1B1
	smpsCall            Mus91_Credits_Call1B
	dc.b	nAb4, nAb5, nAb5, nEb5, nEb5, nAb5, nAb5, nG5, nFs5
	smpsCall            Mus91_Credits_Call1B1
	smpsAlterVol        $03
	smpsSetvoice        $04
	smpsCall            Mus91_Credits_Call1B
	smpsReturn

Mus91_Credits_Call1B1:
	smpsCall            Mus91_Credits_Call1B
	dc.b	nAb4, nC5, nC5, nG4, nG4, nF5, nF5, nC5, nC5
	smpsReturn

Mus91_Credits_Call1B:
	dc.b	nCs5, $0C, nCs5, nAb4, nAb4, nEb5, nEb5, nAb4
	smpsReturn

Mus91_Credits_Call0A:
	dc.b	nRst, $0C
	smpsAlterNote       $EC
	dc.b	nG5, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $06, nRst, $01, nG5, $03, nRst, $18, nRst, $0C
	smpsAlterNote       $EC
	dc.b	nF5, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $06, nRst, $01, nF5, $03, nRst, $18, nRst, $0C
	smpsAlterNote       $EC
	dc.b	nE5, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $06, nRst, $01, nE5, $03, nRst, $18
	smpsReturn

Mus91_Credits_Call06:
	smpsAlterVol        $08
	smpsSetvoice        $16
	dc.b	nRst, $30, nRst, $30
	smpsChanTempoDiv    $01
	smpsCall            Mus91_Credits_Call17
	smpsChanTempoDiv    $02
	smpsSetvoice        $12
	smpsModSet          $01, $01, $01, $04
	dc.b	nD6, $02, nRst, $04, nD6, $08, nD6, $03, nRst, nD6, nRst, nC6
	dc.b	nRst, nA6, nRst, nF6, nRst, $07, nBb5, $02, nRst, $04, nBb5, $08
	dc.b	nBb5, $03, nRst, nBb5, nRst, nA5, $03, nRst, $13, nA5, $0E, nCs6
	dc.b	$0C, nE6, nCs7, $0A, nD7, $02
	smpsReturn

Mus91_Credits_Call17:
	dc.b	nBb3, $01, smpsNoAttack, nA3, $04, nRst, $07, nBb3, $01, smpsNoAttack, nA3, $04
	dc.b	nRst, $07, nC4, $01, smpsNoAttack, nB3, $04, nRst, $07, nC4, $01, smpsNoAttack
	dc.b	nB3, $04, nRst, $07, nCs4, $01, smpsNoAttack, nC4, $04, nRst, $07, nCs4
	dc.b	$01, smpsNoAttack, nC4, $04, nRst, $07, nD4, $01, smpsNoAttack, nCs4, $04, nRst
	dc.b	$07, nD4, $01, smpsNoAttack, nCs4, $04, nRst, $03
	smpsReturn

Mus91_Credits_Call0B:
	dc.b	nRst, $09
	dc.b	nD7,	$03
	dc.b	nCs7,	$09,	nD7,	$03,	nCs7,	$09,	nD7,	$03
	dc.b	nRst,	$09,	nD7,	$03,	nCs7,	$09,	nD7,	$03
	dc.b	nCs7,	$06,	nFs7,	$0C,	nG7,	$06,	nFs7,	$0C
	dc.b	nE7,	$06,	nRst,	nE7,	nRst,	nD7,	nRst,	nD7
	dc.b	nRst,	nCs7,	nRst,	nCs7,	nRst,	nB6,	nRst,	nB6
	dc.b	nRst,	nA6,	$0C,	nB6,	nC7,	nD7,	nB6,	$06
	dc.b	nG7,	$12,	nA7,	$0C
	smpsReturn

; FM5 Data
Mus91_Credits_FM5:
	smpsSetvoice        $20
	dc.b	nRst, $60
	smpsAlterVol        $F0
oily2:
	dc.b	nE5, $0C
	smpsLoop            $01, $0C, oily2
	dc.b	nD5, nCs5, nA4, nE5
	smpsLoop            $00, $04, oily2
	smpsPan             panRight, $00
	smpsCall            Mus91_Credits_Call03
	smpsAlterVol        $F2
	smpsCall           Mus91_Credits_DameDameYo31	;dame dame yo
	dc.b	nRst, $60, $60, $60, $18
	smpsCall           Mus91_Credits_DameDameYo31	;dame dame yo
	smpsAlterPitch      $18
	smpsPan             panCenter, $00
	smpsAlterVol        $03
	smpsAlterPitch      $0C
	smpsSetvoice        $07
	dc.b	nRst, $60, $30, nG4, $03, nA4, nC5, nRst, nA4, nRst, $51, nA5, $03
	dc.b	nF5, nC5, nRst, nF5, nRst, $5D
	smpsSetvoice        $0A
	smpsAlterPitch      $E8
	smpsAlterVol        $02
	dc.b	nRst, $01
	smpsCall            Mus91_Credits_Loop0A
	dc.b	nRst, $2C
	smpsSetvoice        $0C
	smpsPan             panRight, $00
	smpsAlterPitch      $F4
	smpsAlterVol        $03
	smpsCall            Mus91_Credits_Call04
	smpsSetvoice        $12
	smpsAlterPitch      $24
	smpsAlterVol        $F4
	smpsCall            Mus91_Credits_Call05
	dc.b	nD6, $0C, nE6, nF6, nG6
	smpsCall            Mus91_Credits_Call05
	dc.b	nC6, $0C, nD6, nE6, nC6
	smpsAlterPitch      $F4
	smpsCall            Mus91_Credits_Call06
	smpsPan             panCenter, $00
	smpsSetvoice        $1A
	smpsAlterNote       $03
	smpsAlterVol        $F8
	dc.b	nRst, $60
	smpsCall            Mus91_Credits_Call07
	smpsAlterVol        $00
	smpsSetvoice        $1A
	dc.b	nRst, $60, nRst, $0C, nE6, $06, nRst, nB6, nE6, $06, nRst, $0C
	dc.b	nE6, $06, nRst, nB6, nE6, $06, nRst, $18
	smpsAlterVol        $05
	dc.b	nRst, $0C, nA3, nRst, nA3
	dc.b	nRst, $24
	smpsSetvoice        $21 ; FARD
	smpsAlterVol        $F0
	smpsModSet          $00, $02, $10, $03
	dc.b	nA3, $12
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, nA3, $0C
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nA3
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nA3
	smpsAlterVol        $04
	dc.b	smpsNoAttack, nA3
	smpsAlterVol        $06
	dc.b	smpsNoAttack, nA3, $18
	smpsAlterVol        $10
	dc.b	smpsNoAttack, nA3, $0C
	smpsAlterVol        $10
	dc.b	smpsNoAttack, nA3, $12, nRst, $42
	smpsStop

Mus91_Credits_Call02:
	dc.b	nG5, $24, $24, $18, nFs5, $24, $24, $18, nE5, $24, $24, $18
	smpsReturn

Mus91_Credits_DameDameYo31:
	dc.b	nC5, $18, nCs5, $0C, nC5, nCs5, nAb4
	smpsReturn

Mus91_Credits_Loop0A:
	dc.b	nRst, $06
	dc.b	nB5, nB5, nB5, nA5, nB5, $12, nB5, $0C
	dc.b	nB5, $06, nB5, nA6, nB5, $18, nF5, $06, nF5
	dc.b	nF5, nE5, nF5, $18, nF5, $06, nF5, nF5
	dc.b	nE5, $06, nF5, $18, nF5, $06, nF5, nF5, nE5
	dc.b	nF5, $12, nF5, $0C, nF5, $06, nF5, nE5, nF5, $18
	dc.b	nE5, $06, nE5, nE5, nD5, nE5, $18, nE5, $03
	smpsReturn

; PSG1 Data
Mus91_Credits_PSG1:
	dc.b	nRst, $60
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $03
	smpsNoteFill        $06
	smpsCall            Mus91_Credits_Call11
	smpsPSGvoice        fTone_01
	smpsNoteFill        $00
	smpsPSGAlterVol     $FD

Mus91_Credits_Loop2A:
	dc.b	nRst, $18, nAb5, $06, nRst, $1E, nAb5, $0C, nRst, $18, nRst, $18
	dc.b	nG5, $06, nRst, $1E, nG5, $0C, nRst, $18
	smpsLoop            $00, $03, Mus91_Credits_Loop2A
	dc.b	nRst, $18, nF5, $06, nRst, $1E, nF5, $0C, nRst
	smpsPSGvoice        fTone_05
	smpsCall           Mus91_Credits_DameDameYo2	;dame dame yo
	dc.b	nRst, $24

	smpsPSGvoice        fTone_08 ; changed from 9 to 8 for cleveland rip
	smpsPSGAlterVol     $01
Mus91_Credits_Loop2B:
	dc.b	nRst, $06, nE6, $0C, nE6, nE6, nE6, $06, nRst, nE6, $0C, nE6
	dc.b	nE6, $03, $09, $06
	smpsAlterPitch      $05
	smpsLoop            $00, $02, Mus91_Credits_Loop2B
	smpsAlterPitch      $F6
	dc.b	nRst, $06, nE6, $0C, nE6, nE6, nE6, $06, nRst, $30
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $01
	smpsCall            Mus91_Credits_Call15
	dc.b	nRst, $02, nRst, $30
	smpsPSGAlterVol     $03
	smpsAlterPitch      $F4
	smpsPSGvoice        fTone_05
	smpsCall            Mus91_Credits_Call09
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $FC
	smpsPSGvoice        $00
	smpsCall            Mus91_Credits_Call16
	dc.b	nRst, $0C, nB4, nRst, $03, nD5, nRst, nRst, nD5, nRst, $09
	smpsCall            Mus91_Credits_Call16
	dc.b	nC5, $0C, nRst, $06, nC5, $1E
	smpsPSGvoice        fTone_06
	smpsPSGAlterVol     $04
	dc.b	nRst, $30, nRst, $30
	smpsChanTempoDiv    $01
	smpsCall            Mus91_Credits_Call17
	smpsChanTempoDiv    $02
	dc.b	nD6, $02, nRst, $04, nD6, $08, nD6, $03, nRst, nD6, nRst, nC6
	dc.b	nRst, nA6, nRst, nF6, nRst, $07, nBb5, $02, nRst, $04, nBb5, $08
	dc.b	nBb5, $03, nRst, nBb5, nRst, nA5, $03, nRst, $13, nA5, $0E, nCs6
	dc.b	$0C, nE6, nCs7, $0A, nD7, $02, nRst, $60, nRst, nRst, nRst, nRst
	smpsPSGAlterVol     $FF
	dc.b	nRst, $0C, nB5, $12, nRst, $06, nB5, nRst, nA5, $12, nB5, nA5
	dc.b	$0C, nE5, $18, nAb5, nB5, nD6, nRst, $0C, nCs6, nRst, nCs6, $12
	dc.b	nC6, nCs6, $06
	smpsStop

Mus91_Credits_Call16:
	dc.b	nRst, $0C, nE5, $07, nRst, $02, nE5, $03, nRst, $18, nRst, $0C
	dc.b	nC5, $07, nRst, $02, nC5, $03, nRst, $18, nRst, $0C, nC5, $07
	dc.b	nRst, $02, nC5, $03, nRst, $18
	smpsReturn

; PSG2 Data
Mus91_Credits_PSG2:
	dc.b	nRst, $60
	smpsLoop            $00, $08, Mus91_Credits_PSG2
	dc.b	nRst, $02
	smpsCall            Mus91_Credits_Call14
	smpsPSGAlterVol     $FE
	smpsPSGvoice        fTone_01
	dc.b	nRst, $16, nC6, $06, nRst, $1E, nC6, $0C, nRst, $18, nRst, $18
	dc.b	nBb5, $06, nRst, $1E, nBb5, $0C, nRst, $18
Mus91_Credits_Loop24:
	dc.b	nRst, $18, nC6, $06, nRst, $1E, nC6, $0C, nRst, $18, nRst, $18
	dc.b	nBb5, $06, nRst, $1E, nBb5, $0C, nRst, $18
	smpsLoop            $00, $02, Mus91_Credits_Loop24
	dc.b	nRst, $18, nAb5, $06, nRst, $1E, nAb5, $0C, nRst
	smpsPSGvoice        fTone_05
	smpsCall           Mus91_Credits_DameDameYo	;dame dame yo
	dc.b	nRst, $24

	smpsPSGvoice        fTone_08 ; changed from 9 to 8 for cleveland rip
	smpsPSGAlterVol     $01

Mus91_Credits_Loop26:
	dc.b	nRst, $06, nG6, $0C, nG6, nG6, nG6, $06, nRst, nG6, $0C, nG6
	dc.b	nG6, $03, $09, $06
	smpsAlterPitch      $05
	smpsLoop            $00, $02, Mus91_Credits_Loop26
	smpsAlterPitch      $F6
	dc.b	nRst, $06, nG6, $0C, nG6, nG6, nG6, $06, nRst, $30, nRst, $02
	smpsAlterNote       $01
	smpsPSGAlterVol     $03
	smpsCall            Mus91_Credits_Call15
	smpsAlterNote       $00
	dc.b	nRst, $30
	smpsPSGAlterVol     $01
	smpsAlterPitch      $F4
	smpsPSGvoice        fTone_05
	smpsCall            Mus91_Credits_Call04
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $FD
	smpsNoteFill        $03

	smpsCall Mus91_Credits_Loop27
	dc.b	nB6, $03, nB6, nF7, nB6, nE7, nB6, nD7, nB6
	smpsCall Mus91_Credits_Loop27
	dc.b	nC7, $03, nC7, nG7, nC7, nF7, nC7, nE7, nC7
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst
;	; These rests are unnecessary, and cause the following notes to play way too late.
;	; Delete these three notes to fix this.
;	dc.b	nRst, nRst, nRst
;	; This erroneous FM-only command causes the following notes to be inaudible.
;	smpsAlterVol        $0C
; there we go i fixed it - coni
	smpsAlterNote       $02
	smpsPSGAlterVol     $02
	dc.b	nRst, $0C, nE6, $06, nRst, nB6, nE6, $06, nRst, $0C, nE6, $06
	dc.b	nRst, nB6, nE6
	smpsStop

Mus91_Credits_Loop27:
	dc.b	nC7, $03, nC7, nG7, nC7, nF7, nC7, nE7, nC7
	smpsLoop            $00, $02, Mus91_Credits_Loop27
Mus91_Credits_Loop28:
	dc.b	nBb6, nBb6, nF7, nBb6, nEb7, nBb6, nCs7, nBb6
	smpsLoop            $00, $02, Mus91_Credits_Loop28
Mus91_Credits_Loop29:
	dc.b	nA6, nA6, nE7, nA6, nD7, nA6, nC7, nA6
	smpsLoop            $00, $03, Mus91_Credits_Loop29
	smpsReturn

; PSG3 Data
Mus91_Credits_PSG3:
	smpsPSGform         $E7
	smpsNoteFill        $04

Mus91_Credits_Loop18:
	dc.b	nMaxPSG, $0C
	smpsLoop            $00, $48, Mus91_Credits_Loop18
	smpsNoteFill        $06

Mus91_Credits_Loop19:
	dc.b	$0C
	smpsLoop            $00, $60, Mus91_Credits_Loop19
	smpsPSGAlterVol     $FF
	smpsCall            Mus91_Credits_Call13
	smpsNoteFill        $0E
	dc.b	$0C
	smpsNoteFill        $03
	dc.b	$06, $06, $03, $03, $06, $03, $03, $06

Mus91_Credits_Loop1A:
	smpsCall            Mus91_Credits_Call13
	smpsLoop            $00, $04, Mus91_Credits_Loop1A
	smpsPSGvoice        fTone_09
	smpsPSGAlterVol     $01
	smpsAlterPitch      $0B

Mus91_Credits_Loop1B:
	dc.b	nA3, $06, nA3, nE4, nE4, nD4, nD4, nE4, nE4
	smpsLoop            $00, $02, Mus91_Credits_Loop1B

Mus91_Credits_Loop1C:
	dc.b	nD4, nD4, nA4, nA4, nF4, nF4, nA4, nA4
	smpsLoop            $00, $02, Mus91_Credits_Loop1C
	dc.b	nB3, nB3, nF4, nF4, nD4, nD4, nF4, nF4, nE4, nE4, nB4, nB4
	dc.b	nAb4, nAb4, nB4, nB4, nA3, nA3, nE4, nE4, nC4, nC4, nE4, nE4
	dc.b	nA3, $06, nRst, $1E
	smpsNoteFill        $02
	smpsAlterPitch      $F5

Mus91_Credits_Loop1D:
	smpsPSGvoice        fTone_04
	dc.b	nMaxPSG, $03, $03
	smpsPSGAlterVol     $02
	smpsPSGvoice        fTone_08
	smpsNoteFill        $08
	dc.b	$06
	smpsNoteFill        $03
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $1E, Mus91_Credits_Loop1D
	dc.b	nRst, $24

Mus91_Credits_Loop1E:
	smpsPSGvoice        fTone_04
	dc.b	$03, $03
	smpsPSGAlterVol     $02
	smpsPSGvoice        fTone_08
	smpsNoteFill        $08
	dc.b	$06
	smpsNoteFill        $03
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $20, Mus91_Credits_Loop1E
	dc.b	nRst, $30
	smpsNoteFill        $01
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03

Mus91_Credits_Loop1F:
	dc.b	nMaxPSG, $02, nRst, nMaxPSG
	smpsLoop            $00, $08, Mus91_Credits_Loop1F

Mus91_Credits_Loop20:
	dc.b	nRst, $04, nMaxPSG, $02
	smpsLoop            $00, $08, Mus91_Credits_Loop20
	smpsPSGAlterVol     $FF

Mus91_Credits_Loop21:
	dc.b	nMaxPSG, $02, nRst, nMaxPSG
	smpsLoop            $00, $18, Mus91_Credits_Loop21
	smpsPSGAlterVol     $FE

Mus91_Credits_Loop22:
	dc.b	nMaxPSG, $04, nRst, nMaxPSG
	smpsLoop            $00, $08, Mus91_Credits_Loop22

Mus91_Credits_Loop23:
	smpsNoteFill        $03
	dc.b	$0C
	smpsNoteFill        $0C
	dc.b	$0C
	smpsNoteFill        $03
	dc.b	$0C
	smpsNoteFill        $0C
	dc.b	$0C
	smpsLoop            $00, $0D, Mus91_Credits_Loop23
	smpsNoteFill        $03
	dc.b	$06
	smpsNoteFill        $0E
	dc.b	$12
	smpsNoteFill        $03
	dc.b	$0C
	smpsPSGAlterVol     $FE
	smpsNoteFill        $00
	smpsPSGform         $E3
	smpsPSGvoice        fTone_00
	dc.b	nC3, $60, smpsNoAttack, $60 smpsNoAttack, $60
	smpsStop

; DAC Data
Mus91_Credits_DAC:
	dc.b	dSnare, $06, dSnare, dSnare, dSnare, dSnare, $0C, $06, $0C, $06, $0C, $0C
	dc.b	$0C
	smpsCall            Mus91_Credits_Call00
	dc.b	dKick, $18, dSnare, $0C, dSnare, dKick, $18, dSnare, $0C, dSnare
	smpsCall            Mus91_Credits_Call00
	dc.b	dKick, $0C, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare

Mus91_Credits_Loop00:
	dc.b	dKick, $18, dSnare, $0C, dKick, $18, $0C, dSnare, $18
	smpsLoop            $00, $07, Mus91_Credits_Loop00
	dc.b	dKick, $18, dSnare, $0C, dKick, $18, dSnare, $0C, $0C, $0C

Mus91_Credits_Loop01:
	dc.b	dKick, $18, dSnare, $0C, dKick, $18, $0C, dSnare, $18
	smpsLoop            $00, $03, Mus91_Credits_Loop01
	dc.b	dKick, $18, dSnare, $0C, dKick, $18, dSnare, $0C, dSnare, dSnare
	smpsSetTempoDiv     $02

Mus91_Credits_Loop02:
	dc.b	dKick, $12, dKick, $06, dKick, $0C, dSnare
	smpsLoop            $00, $05, Mus91_Credits_Loop02
	dc.b	dKick, $12, dKick, $06, dKick, $06, dSnare, dSnare, dSnare

Mus91_Credits_Loop03:
	dc.b	dKick, $0C
	smpsLoop            $00, $18, Mus91_Credits_Loop03
	dc.b	dKick, $0C, dKick, dKick, dKick, $06, dKick, $02, dKick, dSnare, dSnare, $0C
	dc.b	nRst, $24

Mus91_Credits_Loop04:
	dc.b	dKick, $0C, dKick, dKick, dKick
	smpsLoop            $00, $07, Mus91_Credits_Loop04
	dc.b	dKick, $0C, dKick, dSnare, $03, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare
	smpsCall            Mus91_Credits_Call01
	dc.b	dHiTimpani, $02, dKick, $01, dMidTimpani, $05, dSnare, $01, dHiTimpani, $05, dMidTimpani, $06
	smpsCall            Mus91_Credits_Call01
	dc.b	dMidTimpani, $02, dSnare, $01, dHiTimpani, $05, dSnare, $01, dMidTimpani, $05, dSnare, $01
	dc.b	dHiTimpani, $02, dSnare, $03, dSnare, $03, dSnare, dKick, dKick, dSnare, dSnare, dKick
	dc.b	dKick, dKick, dSnare, $09, dSnare, $06, $03, $03, dKick, $09, $03, dSnare
	dc.b	$09, dKick, $06, $06, $03, dSnare, $06, $03, $03, dSnare, $06, dSnare
	dc.b	dSnare, dSnare, dSnare, dSnare, dSnare, $04, $02, $04, dKick, $02

Mus91_Credits_Loop05:
	dc.b	nRst, $04, dKick, $08, dSnare, $06, dKick, dKick, $0C, dSnare, $0A, dKick
	dc.b	$02
	smpsLoop            $00, $03, Mus91_Credits_Loop05
	smpsSetTempoDiv     $01
	dc.b	nRst, $18, dSnare, $14, dKick, $04, dSnare, $0C, dSnare, dSnare, $0C, $08
	dc.b	dKick, $04

Mus91_Credits_Loop06:
	dc.b	dKick, $0C, dSnare, dKick, dSnare
	smpsLoop            $01, $03, Mus91_Credits_Loop06
	dc.b	dKick, $0C, dSnare, dKick, $06, nRst, $02, dSnare, dSnare, dSnare, $09, dSnare
	dc.b	$03
	smpsLoop            $00, $03, Mus91_Credits_Loop06
	dc.b	dKick, $0C, dSnare, dKick, dSnare, dKick, $06, dSnare, $12, dSnare, $0C, dKick
	smpsStop

Mus91_Credits_Call00:
	dc.b	dKick, $18, dSnare, $0C, dKick, $18, dKick, $0C, dSnare, dKick
	smpsLoop            $00, $03, Mus91_Credits_Call00
	smpsReturn

Mus91_Credits_Call01:
	dc.b	dKick, $0C, dSnare, $09, dKick, $06, $03, dKick, $01, dHiTimpani, $02, dMidTimpani
	dc.b	$03, dSnare, $01, dHiTimpani, $0B, dKick, $0C, dSnare, $09, dKick, $06, $03
	dc.b	dKick, $01, dHiTimpani, $02, dMidTimpani, $03, dSnare, $01, dHiTimpani, $0B, dKick, $0C
	dc.b	dSnare, $09, dKick, $06, $03, dKick, $01, dHiTimpani, $02, dMidTimpani, $03, dSnare
	dc.b	$01, dHiTimpani, $0B, dKick, $0C, dSnare, $09, dKick, $06, dSnare, $01
	smpsReturn

Mus91_Credits_Call11:
	dc.b	nA4, $0C, nG4, nA4, nRst, $7F, $1D
	smpsAlterNote       $01
	dc.b	nG5, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $19
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, nAb5, $01
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E3
	dc.b	smpsNoAttack, nA5, $01
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $30, nG5, $06, nE5, nD5, nC5, nA4, $18
	dc.b	nC5, $0C, nE5, $18, nG5, $0C, nD5, nRst, $30, nA5, $0C
	dc.b	nRst, nA5, $3C, nG5, $0C, nFs5, nE5, $0C, nD5
	dc.b	nE5, nFs5, nE5, $18, nA4, nRst, $0C, nA5, $18
	dc.b	nFs5, $0C, nE5, $18, nA4, $18, nRst, $0C, nC5, $18, nD5, $0C
	smpsReturn

Mus91_Credits_Call13:
	smpsNoteFill        $0E
	dc.b	$0C
	smpsNoteFill        $03
	dc.b	$06, $06, $06, $06, $06, $06
	smpsReturn

Mus91_Credits_Call0C:
	dc.b	nB6, $09, nRst, $03, nB6, $06, nA6
	smpsLoop            $00, $03, Mus91_Credits_Call0C
	dc.b	nB6, nA6, nE6, nC6, nG6, $0C, nA6, $06, smpsNoAttack, nF6, $4D, nRst
	dc.b	$01, nA6, $24, nB6, $0C, nAb6, $24, nB6, $09, nRst, $03, nB6
	dc.b	$18, nA6
	smpsReturn

Mus91_Credits_Call15:
	dc.b	nRst, $30, nRst, nRst
	dc.b	nF7, $03, nD7, nB6, nA6, nD7, nC7, nA6, nG6, nB6, nG6
	dc.b	nE6, nD6, nG6, nE6, nC6, nBb5, $33, nRst, $5E
	smpsReturn

Mus91_Credits_CallMeltdown1:
	; first chorus lyrics
	dc.b	nCs6, $0C, nB5, nAb5, nD5 ; ka ku yuu uu
	dc.b	nE5, $0C, nEb5, $06, nE5, $0C, nCs6, nCs6, $30 ; goo uu ro ni saaaaa
	dc.b	nCs6, $03, nCs6, nC6, $0C, nAb5, $06, nAb6, $0C ; to-bi-te kon de MI
	dc.b	nEb6, $06, $06, nE6, $24 ; ta i toooo
	dc.b	nEb6, $06, nE6, nCs7, nB6, $0C, nA6, $06, nAb6, $18 ; omo oeoooooo oo u
	dc.b	nCs6, $03, $03, nAb6, $0C, nCs6, $06, nAb6, $0C, nCs6 ; (ma) sa{sa}-o na hi ka ri
	; skipped to second chorus because that one is more conclusive
	dc.b	nD6, $06, nEb6, nEb6, nE6, nFs6, nAb6, nFs6, nE6, $0C
	smpsReturn

Mus91_Credits_Call04:
	smpsCall            Mus91_Credits_Call19
	dc.b	nD6, $06, nRst, $03, nD6, nRst, $06, nCs6, $18, nRst, $06

Mus91_Credits_Loop2C:
	dc.b	nF6, $06, nRst, $03, nE6, $06, nRst, $03, nD6, nRst
	smpsLoop            $00, $02, Mus91_Credits_Loop2C
	dc.b	nF6, $06, nRst, $03, nE6, $06, nRst, $03, nD6, $18, nRst, $06
	smpsAlterPitch      $FE
	smpsCall            Mus91_Credits_Call19
	smpsAlterPitch      $03
	smpsCall            Mus91_Credits_Call19
	smpsAlterPitch      $FF
	dc.b	nRst, $06
	smpsNoteFill        $08
	dc.b	nG6, $09, $09, $09, $09
	smpsNoteFill        $05
	dc.b	$03, $03
	smpsNoteFill        $00
	dc.b	nRst, $0C, nF6, $24
	smpsReturn

Mus91_Credits_Call19:
	dc.b	nE6, $06, nRst, $03, nE6, nRst, $06, nE6, $18, nRst, $06
	smpsReturn

Mus91_Credits_Call09:
	dc.b	nG6, $06, nRst, $03, nG6, nRst, $06, nG6, $18, nRst, $06, nF6
	dc.b	$06, nRst, $03, nF6, nRst, $06, nE6, $18, nRst, $06, nA6, $06
	dc.b	nRst, $03, nG6, $06, nRst, $03, nF6, nRst, nA6, $06, nRst, $03
	dc.b	nG6, $06, nRst, $03, nF6, nRst, nA6, $06, nRst, $03, nG6, $06
	dc.b	nRst, $03, nF6, $18, nRst, $06, nF6, $06, nRst, $03, nF6, nRst
	dc.b	$06, nF6, $18, nRst, $06, nAb6, $06, nRst, $03, nAb6, nRst, $06
	dc.b	nAb6, $18, nRst, $06, nRst, $06
	smpsNoteFill        $08
	dc.b	nB6, $09, $09, $09, $09
	smpsNoteFill        $05
	dc.b	$03, $03
	smpsNoteFill        $00
	dc.b	nRst, $0C, nA6, $24
	smpsReturn

Mus91_Credits_Call0E:
	smpsCall            Mus91_Credits_Call18
	dc.b	nRst, $06, nG6, nE6, nC7, nA6, $15, nRst, $03, nA6, $12, nB6
	dc.b	$03, nC7, nD7, nRst, nG6, $0F, nRst, $03
	smpsCall            Mus91_Credits_Call18
	dc.b	nRst, $06, nG5, nC6, nE6, nD6, nC6, $03, nB5, nA5, $0C, nC6
	dc.b	nB5, $06, nA5, $03, nB5, nC6, $15, nRst, $03
	smpsReturn

Mus91_Credits_Call18:
	dc.b	nG6, $03, nF6, nE6, nF6, nG6, $09, nRst, $03, nG6, nF6, nE6
	dc.b	nF6, nG6, $0C, nF6, $12, nG6, $03, nF6, nAb6, nRst, nC6, $12
	smpsReturn

Mus91_Credits_Call05:
	dc.b	nRst, $03, nE6, nC6, $06, $06, nG5, nC6, $09, nE6, $09, nRst, $06

	dc.b	nRst, $03, nF6, nC6, $06, $06, nG5, nC6, $09, nF6, $09, nRst, $06

	dc.b	nRst, $03, nE6, nC6, $06, $06, nA5, nC6, $09, nE6, $09, nRst, $06
	smpsReturn

Mus91_Credits_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $01
;	$2C
;	$72, $78, $34, $34, 	$1F, $12, $1F, $12, 	$00, $0A, $00, $0A
;	$00, $00, $00, $00, 	$0F, $1F, $0F, $1F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $08, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $0A, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $02
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $00, $00, $00
;	$00, $01, $00, $01, 	$0F, $3F, $0F, $3F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $01, $00, $01, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $03
;	$04
;	$72, $42, $32, $32, 	$12, $12, $12, $12, 	$00, $08, $00, $08
;	$00, $08, $00, $08, 	$0F, $1F, $0F, $1F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $00, $08, $00
	smpsVcDecayRate2    $08, $00, $08, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $04
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $07, $00, $07
;	$00, $07, $00, $07, 	$00, $38, $00, $38, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $00, $07, $00
	smpsVcDecayRate2    $07, $00, $07, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $08, $00, $08, $00
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $05
;	$31
;	$34, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$0C, $07, $0C, $09
;	$07, $07, $07, $08, 	$2F, $1F, $1F, $2F, 	$17, $32, $14, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $04
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0C, $07, $0C
	smpsVcDecayRate2    $08, $07, $07, $07
	smpsVcDecayLevel    $02, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $32, $17

;	Voice $06
;	$18
;	$37, $30, $30, $31, 	$9E, $DC, $1C, $9C, 	$0D, $06, $04, $01
;	$08, $0A, $03, $05, 	$BF, $BF, $3F, $2F, 	$2C, $22, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $00, $07
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $0A, $08
	smpsVcDecayLevel    $02, $03, $0B, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $22, $2C

;	Voice $07
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$1F, $0F, $1F, $0F, 	$1A, $80, $16, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $00, $1A

;	Voice $08
;	$22
;	$0A, $13, $05, $11, 	$03, $12, $12, $11, 	$00, $13, $13, $00
;	$03, $02, $02, $01, 	$1F, $1F, $0F, $0F, 	$1E, $18, $26, $81
	smpsVcAlgorithm     $02
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $01, $00
	smpsVcCoarseFreq    $01, $05, $03, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $12, $12, $03
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $13, $13, $00
	smpsVcDecayRate2    $01, $02, $02, $03
	smpsVcDecayLevel    $00, $00, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $26, $18, $1E

;	Voice $09
;	$3A
;	$61, $3C, $14, $31, 	$9C, $DB, $9C, $DA, 	$04, $09, $04, $03
;	$03, $01, $03, $00, 	$1F, $0F, $0F, $AF, 	$21, $47, $31, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $03, $06
	smpsVcCoarseFreq    $01, $04, $0C, $01
	smpsVcRateScale     $03, $02, $03, $02
	smpsVcAttackRate    $1A, $1C, $1B, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $04, $09, $04
	smpsVcDecayRate2    $00, $03, $01, $03
	smpsVcDecayLevel    $0A, $00, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $31, $47, $21

;	Voice $0A
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

;	Voice $0B
;	$34
;	$33, $41, $7E, $74, 	$5B, $9F, $5F, $1F, 	$04, $07, $07, $08
;	$00, $00, $00, $00, 	$FF, $FF, $EF, $FF, 	$23, $90, $29, $97
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $03
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $07, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $17, $29, $10, $23

;	Voice $0C
;	$04
;	$72, $42, $32, $32, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$00, $07, $00, $07, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $00, $07, $00
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $0D
;	$3C
;	$38, $74, $76, $33, 	$10, $10, $10, $10, 	$02, $07, $04, $07
;	$03, $09, $03, $09, 	$2F, $2F, $2F, $2F, 	$1E, $80, $1E, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $03, $06, $04, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $04, $07, $02
	smpsVcDecayRate2    $09, $03, $09, $03
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $00, $1E

;	Voice $0E
;	$F4
;	$06, $04, $0F, $0E, 	$1F, $1F, $1F, $1F, 	$00, $00, $0B, $0B
;	$00, $00, $05, $08, 	$0F, $0F, $FF, $FF, 	$15, $85, $02, $8A
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $03
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0E, $0F, $04, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0B, $00, $00
	smpsVcDecayRate2    $08, $05, $00, $00
	smpsVcDecayLevel    $0F, $0F, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0A, $02, $05, $15

;	Voice $0F
;	$29
;	$36, $74, $71, $31, 	$04, $04, $05, $1D, 	$12, $0E, $1F, $1F
;	$04, $06, $03, $01, 	$5F, $6F, $0F, $0F, 	$27, $27, $2E, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $01, $01, $04, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $05, $04, $04
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $0E, $12
	smpsVcDecayRate2    $01, $03, $06, $04
	smpsVcDecayLevel    $00, $00, $06, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2E, $27, $27

;	Voice $10
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $11
;	$3D
;	$01, $01, $01, $01, 	$8E, $52, $14, $4C, 	$08, $08, $0E, $03
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$1B, $80, $80, $9B
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $0C, $14, $12, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $08, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $1B, $00, $00, $1B

;	Voice $12
;	$3D
;	$01, $02, $00, $01, 	$1F, $0E, $0E, $0E, 	$07, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$1F, $0F, $0F, $0F, 	$17, $8D, $8C, $8C
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $0E, $0E, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0C, $0C, $0D, $17

;	Voice $13
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$10, $07, $10, $07, 	$1A, $80, $16, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $07, $00, $07, $00
	smpsVcTotalLevel    $00, $16, $00, $1A

;	Voice $14
;	$18
;	$37, $30, $30, $31, 	$9E, $DC, $1C, $9C, 	$0D, $06, $04, $01
;	$08, $0A, $03, $05, 	$BF, $BF, $3F, $2F, 	$32, $22, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $00, $07
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $0A, $08
	smpsVcDecayLevel    $02, $03, $0B, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $22, $32

;	Voice $15
;	$3A
;	$01, $01, $01, $02, 	$8D, $07, $07, $52, 	$09, $00, $00, $03
;	$01, $02, $02, $00, 	$5F, $0F, $0F, $2F, 	$18, $22, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $01, $01
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $12, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $00, $02, $02, $01
	smpsVcDecayLevel    $02, $00, $00, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $18, $22, $18

;	Voice $16
;	$2C
;	$74, $74, $34, $34, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $01, $00, $01, 	$0F, $3F, $0F, $3F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $01, $00, $01, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $17
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $00, $00, $00, 	$10, $07, $10, $07, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $07, $03
	smpsVcCoarseFreq    $09, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $07, $00, $07, $00
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $18
;	$3D
;	$01, $02, $02, $02, 	$14, $0E, $8C, $0E, 	$08, $05, $02, $05
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$1A, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $02, $00, $00
	smpsVcAttackRate    $0E, $0C, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $02, $05, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $1A

;	Voice $19
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $FF, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $1A
;	$3A
;	$51, $08, $51, $02, 	$1E, $1E, $1E, $10, 	$1F, $1F, $1F, $0F
;	$00, $00, $00, $02, 	$0F, $0F, $0F, $1F, 	$18, $24, $22, $81
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $00, $05
	smpsVcCoarseFreq    $02, $01, $08, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $1F, $1F, $1F
	smpsVcDecayRate2    $02, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $22, $24, $18

;	Voice $1B
;	$3A
;	$32, $56, $32, $42, 	$8D, $4F, $15, $52, 	$06, $08, $07, $04
;	$02, $00, $00, $00, 	$1F, $1F, $2F, $2F, 	$19, $20, $2A, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $03, $05, $03
	smpsVcCoarseFreq    $02, $02, $06, $02
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $12, $15, $0F, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $07, $08, $06
	smpsVcDecayRate2    $00, $00, $00, $02
	smpsVcDecayLevel    $02, $02, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2A, $20, $19

;	Voice $1C
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

;	Voice $1D
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $1E
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $1F
;	$36
;	$0F, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$12, $11, $0E, $00
;	$00, $0A, $07, $09, 	$FF, $0F, $1F, $0F, 	$18, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0E, $11, $12
	smpsVcDecayRate2    $09, $07, $0A, $00
	smpsVcDecayLevel    $00, $01, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $18

;	Voice $20
;	$3A
;	$03, $19, $01, $53, 	$1F, $DF, $1F, $9F, 	$0C, $02, $0C, $05
;	$04, $04, $04, $07, 	$1F, $FF, $0F, $2F, 	$1D, $36, $1B, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $00, $01, $00
	smpsVcCoarseFreq    $03, $01, $09, $03
	smpsVcRateScale     $02, $00, $03, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0C, $02, $0C
	smpsVcDecayRate2    $07, $04, $04, $04
	smpsVcDecayLevel    $02, $00, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1B, $36, $1D

;	Voice $21
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
