; =============================================================================================
; Project Name:		InvincibleCoconut
; Created:		28th March 2025
; Remixed By:		TheGamer2000
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

InvincibleCoconut_Header:
	smpsHeaderStartSong = 1
;	Voice Pointer	location
	smpsHeaderVoice	InvincibleCoconut_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$00

;	DAC Pointer	location
	smpsHeaderDAC	InvincibleCoconut_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	InvincibleCoconut_FM1,	smpsPitch00,	$00
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	InvincibleCoconut_FM2,	smpsPitch00,	$00
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	InvincibleCoconut_FM3,	smpsPitch00,	$00
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	InvincibleCoconut_FM4,	smpsPitch00,	$00
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	InvincibleCoconut_FM5,	smpsPitch00,	$00
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	InvincibleCoconut_PSG1,	smpsPitch00,	$00,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	InvincibleCoconut_PSG2,	smpsPitch00,	$00,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	InvincibleCoconut_PSG3,	smpsPitch00,	$00,	$00
	dc.b		$00,	$00,	$00,	$00

; PSG1 Data
InvincibleCoconut_PSG1:

; PSG2 Data
InvincibleCoconut_PSG2:
	smpsStop

; FM1 Data
InvincibleCoconut_FM1:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$33
InvincibleCoconut_Jump01:
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$08
	dc.b		nD5,	$06,	nRst,	$07,	nEb5,	$06,	nRst,	$07
	dc.b		nE5,	$0C,	nRst,	$07,	nD5,	$06,	nRst,	$07
	dc.b		nD5,	$06,	nRst,	$07,	nE5,	$06,	nF5,	nRst
	dc.b		$07,	nC6,	$06,	nRst,	$07,	nD6,	$06,	nRst
	dc.b		$07,	nC6,	$06,	nRst,	nD6,	$07,	nRst,	$06
	dc.b		nC6,	$07,	nRst,	$06,	nBb5,	$07,	nA5,	$06
	dc.b		nG5,	nF5,	$0D,	nRst,	$07,	nC5,	$0C,	nD5
	dc.b		$07,	nRst,	$06,	nEb5,	$07,	nRst,	$06,	nE5
	dc.b		$0D,	nRst,	$06,	nD5,	$07,	nRst,	$06,	nD5
	dc.b		$07,	nRst,	$06,	nE5,	$07,	nF5,	$06,	nRst
	dc.b		nC6,	$07,	nRst,	$06,	nF6,	$07,	nRst,	$06
	dc.b		nD6,	$07,	nC6,	$06,	nBb5,	nA5,	$07,	nG5
	dc.b		$06,	nF5,	$0D,	nRst,	$20,	nC5,	$07,	nCs5
	dc.b		$06,	nD5,	nRst,	$07,	nEb5,	$06,	nRst,	$07
	dc.b		nE5,	$0D,	nRst,	$06,	nD5,	nRst,	$07,	nD5
	dc.b		$06,	nRst,	$07,	nE5,	$06,	nF5,	$07,	nRst
	dc.b		$06,	nC6,	nRst,	$07,	nD6,	$06,	nRst,	$07
	dc.b		nC6,	$06,	nRst,	$07,	nD6,	$06,	nRst,	nC6
	dc.b		$07,	nRst,	$06,	nBb5,	$07,	nA5,	$06,	nG5
	dc.b		$07,	nF5,	$0C,	nRst,	$07,	nC6,	$0D,	nF6
	dc.b		$06,	nRst,	nD6,	$07,	nRst,	$06,	nC6,	$07
	dc.b		nRst,	$06,	nBb5,	$07,	nRst,	$06,	nA5,	nBb5
	dc.b		$07,	nB5,	$06,	nC6,	$0D,	nD6,	$07,	nRst
	dc.b		$06,	nF5,	nA5,	$07,	nRst,	$06,	nF5,	$07
	dc.b		nRst,	$06,	nD5,	$07,	nE5,	$06,	nRst,	nF5
	dc.b		$0D,	nRst,	$20,	nCs5,	$07,	nD5,	$06,	nEb5
	dc.b		$07,	nRst,	$06,	nE5,	$07,	nRst,	$06,	nF5
	dc.b		$0D,	nRst,	$06,	nEb5,	$07,	nRst,	$06,	nEb5
	dc.b		nRst,	$07,	nF5,	$06,	nFs5,	$07,	nRst,	$06
	dc.b		nCs6,	$07,	nRst,	$06,	nEb6,	nRst,	$07,	nCs6
	dc.b		$06,	nRst,	$07,	nEb6,	$06,	nRst,	$07,	nCs6
	dc.b		$06,	nRst,	nB5,	$07,	nBb5,	$06,	nAb5,	$07
	dc.b		nFs5,	$0D,	nRst,	$06,	nCs5,	$0D,	nEb5,	$06
	dc.b		nRst,	$07,	nE5,	$06,	nRst,	$07,	nF5,	$0C
	dc.b		nRst,	$07,	nEb5,	$06,	nRst,	$07,	nEb5,	$06
	dc.b		nRst,	nF5,	$07,	nFs5,	$06,	nRst,	$07,	nCs6
	dc.b		$06,	nRst,	$07,	nFs6,	$06,	nRst,	nEb6,	$07
	dc.b		nCs6,	$06,	nB5,	$07,	nBb5,	$06,	nAb5,	$07
	dc.b		nFs5,	$0C,	nRst,	$21,	nCs5,	$06,	nD5,	nEb5
	dc.b		$07,	nRst,	$06,	nE5,	$07,	nRst,	$06,	nF5
	dc.b		$0D,	nRst,	$06,	nEb5,	$07,	nRst,	$06,	nEb5
	dc.b		$07,	nRst,	$06,	nF5,	nFs5,	$07,	nRst,	$06
	dc.b		nCs6,	$07,	nRst,	$06,	nEb6,	$07,	nRst,	$06
	dc.b		nCs6,	nRst,	$07,	nEb6,	$06,	nRst,	$07,	nCs6
	dc.b		$06,	nRst,	$07,	nB5,	$06,	nBb5,	nAb5,	$07
	dc.b		nFs5,	$0D,	nRst,	$06,	nCs6,	$0D,	nFs6,	$06
	dc.b		nRst,	$07,	nEb6,	$06,	nRst,	$07,	nCs6,	$06
	dc.b		nRst,	$07,	nB5,	$06,	nRst,	nBb5,	$07,	nB5
	dc.b		$06,	nC6,	$07,	nCs6,	$0D,	nEb6,	$06,	nRst
	dc.b		nFs5,	$07,	nBb5,	$06,	nRst,	$07,	nFs5,	$06
	dc.b		nRst,	nEb5,	$07,	nF5,	$06,	nRst,	$07,	nFs5
	dc.b		$0D,	nRst,	$20,	nC5,	$06,	nCs5,	$07
;	Alter Volume	value
	smpsAlterVol	$F8
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	InvincibleCoconut_Jump01

; FM2 Data
InvincibleCoconut_FM2:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$33
InvincibleCoconut_Jump02:
;	Set FM Voice	#
	smpsFMvoice	$01
;	Alter Volume	value
	smpsAlterVol	$05
	dc.b		nG2,	$06,	nRst,	$07,	nC3,	$06,	nRst,	$07
	dc.b		nC2,	$06,	nRst,	nC3,	$07,	nF2,	$06,	nRst
	dc.b		$07,	nF2,	$06,	nRst,	$07,	nF2,	$06,	nF2
	dc.b		$0D,	nFs2,	nG2,	$06,	nRst,	$07,	nC3,	$06
	dc.b		nRst,	nC2,	$07,	nRst,	$06,	nC3,	$07,	nF2
	dc.b		$06,	nRst,	$07,	nF2,	$06,	nRst,	nF2,	$07
	dc.b		nF2,	$0D,	nFs2,	$0C,	nG2,	$07,	nRst,	$06
	dc.b		nC3,	$07,	nRst,	$06,	nC2,	$07,	nRst,	$06
	dc.b		nC3,	nF2,	$07,	nRst,	$06,	nF2,	$07,	nRst
	dc.b		$06,	nF2,	$07,	nF2,	$0C,	nFs2,	$0D,	nG2
	dc.b		$07,	nRst,	$06,	nC3,	$07,	nRst,	$06,	nC2
	dc.b		nRst,	$07,	nC3,	$06,	nF2,	$0D,	nA2,	$07
	dc.b		nC3,	$06,	nF3,	nF2,	$07,	nA2,	$06,	nC3
	dc.b		$07,	nF3,	$06,	nG2,	nRst,	$07,	nC3,	$06
	dc.b		nRst,	$07,	nC2,	$06,	nRst,	$07,	nC3,	$06
	dc.b		nF2,	nRst,	$07,	nF2,	$06,	nRst,	$07,	nF2
	dc.b		$06,	nF2,	$0D,	nFs2,	nG2,	$06,	nRst,	$07
	dc.b		nC3,	$06,	nRst,	$07,	nC2,	$06,	nRst,	nC3
	dc.b		$07,	nF2,	$06,	nRst,	$07,	nF2,	$06,	nRst
	dc.b		$07,	nF2,	$06,	nF2,	$0D,	nFs2,	nBb2,	$06
	dc.b		nRst,	nBb2,	$07,	nRst,	$06,	nB2,	$07,	nRst
	dc.b		$06,	nB2,	$07,	nRst,	$06,	nC3,	nRst,	$07
	dc.b		nC3,	$06,	nD3,	$0D,	nF2,	$07,	nA2,	$0C
	dc.b		nG2,	$07,	nRst,	$06,	nC3,	$07,	nRst,	$06
	dc.b		nC2,	$07,	nRst,	$06,	nC3,	nF2,	$0D,	nA2
	dc.b		$07,	nC3,	$06,	nF3,	$07,	nF2,	$06,	nA2
	dc.b		nC3,	$07,	nF3,	$06,	nAb2,	$07,	nRst,	$06
	dc.b		nCs3,	$07,	nRst,	$06,	nCs2,	nRst,	$07,	nCs3
	dc.b		$06,	nFs2,	$07,	nRst,	$06,	nFs2,	nRst,	$07
	dc.b		nFs2,	$06,	nFs2,	$0D,	nG2,	nAb2,	$06,	nRst
	dc.b		$07,	nCs3,	$06,	nRst,	$07,	nCs2,	$06,	nRst
	dc.b		$07,	nCs3,	$06,	nFs2,	nRst,	$07,	nFs2,	$06
	dc.b		nRst,	$07,	nFs2,	$06,	nFs2,	$0D,	nG2,	nAb2
	dc.b		$06,	nRst,	$07,	nCs3,	$06,	nRst,	$07,	nCs2
	dc.b		$06,	nRst,	nCs3,	$07,	nFs2,	$06,	nRst,	$07
	dc.b		nFs2,	$06,	nRst,	nFs2,	$07,	nFs2,	$0D,	nG2
	dc.b		nAb2,	$06,	nRst,	nCs3,	$07,	nRst,	$06,	nCs2
	dc.b		$07,	nRst,	$06,	nCs3,	$07,	nFs2,	$0C,	nBb2
	dc.b		$07,	nCs3,	$06,	nFs3,	$07,	nFs2,	$06,	nBb2
	dc.b		$07,	nCs3,	$06,	nFs3,	nAb2,	$07,	nRst,	$06
	dc.b		nCs3,	$07,	nRst,	$06,	nCs2,	$07,	nRst,	$06
	dc.b		nCs3,	nFs2,	$07,	nRst,	$06,	nFs2,	$07,	nRst
	dc.b		$06,	nFs2,	nFs2,	$0D,	nG2,	nAb2,	$07,	nRst
	dc.b		$06,	nCs3,	nRst,	$07,	nCs2,	$06,	nRst,	$07
	dc.b		nCs3,	$06,	nFs2,	$07,	nRst,	$06,	nFs2,	nRst
	dc.b		$07,	nFs2,	$06,	nFs2,	$0D,	nG2,	nB2,	$06
	dc.b		nRst,	$07,	nB2,	$06,	nRst,	$07,	nC3,	$06
	dc.b		nRst,	$07,	nC3,	$06,	nRst,	nCs3,	$07,	nRst
	dc.b		$06,	nCs3,	$07,	nEb3,	$0D,	nFs2,	$06,	nBb2
	dc.b		$0D,	nAb2,	$06,	nRst,	$07,	nCs3,	$06,	nRst
	dc.b		nCs2,	$07,	nRst,	$06,	nCs3,	$07,	nFs2,	$0D
	dc.b		nBb2,	$06,	nCs3,	nFs3,	$07,	nFs2,	$06,	nBb2
	dc.b		$07,	nCs3,	$06,	nFs3,	$07
;	Alter Volume	value
	smpsAlterVol	$FB
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	InvincibleCoconut_Jump02

; FM3 Data
InvincibleCoconut_FM3:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$33
InvincibleCoconut_Jump03:
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$09
;	Set Modulation	wait	speed	change	step
	smpsModSet	$00,	$02,	$03,	$03
	dc.b		nD5,	$06,	nRst,	$07,	nEb5,	$06,	nRst,	$07
	dc.b		nE5,	$0C,	nRst,	$07,	nD5,	$06,	nRst,	$07
	dc.b		nD5,	$06,	nRst,	$07,	nE5,	$06,	nF5,	nRst
	dc.b		$07,	nC6,	$06,	nRst,	$07,	nD6,	$06,	nRst
	dc.b		$07,	nC6,	$06,	nRst,	nD6,	$07,	nRst,	$06
	dc.b		nC6,	$07,	nRst,	$06,	nBb5,	$07,	nA5,	$06
	dc.b		nG5,	nF5,	$0D,	nRst,	$07,	nC5,	$0C,	nD5
	dc.b		$07,	nRst,	$06,	nEb5,	$07,	nRst,	$06,	nE5
	dc.b		$0D,	nRst,	$06,	nD5,	$07,	nRst,	$06,	nD5
	dc.b		$07,	nRst,	$06,	nE5,	$07,	nF5,	$06,	nRst
	dc.b		nC6,	$07,	nRst,	$06,	nF6,	$07,	nRst,	$06
	dc.b		nD6,	$07,	nC6,	$06,	nBb5,	nA5,	$07,	nG5
	dc.b		$06,	nF5,	$0D,	nRst,	$20,	nC5,	$07,	nCs5
	dc.b		$06,	nD5,	nRst,	$07,	nEb5,	$06,	nRst,	$07
	dc.b		nE5,	$0D,	nRst,	$06,	nD5,	nRst,	$07,	nD5
	dc.b		$06,	nRst,	$07,	nE5,	$06,	nF5,	$07,	nRst
	dc.b		$06,	nC6,	nRst,	$07,	nD6,	$06,	nRst,	$07
	dc.b		nC6,	$06,	nRst,	$07,	nD6,	$06,	nRst,	nC6
	dc.b		$07,	nRst,	$06,	nBb5,	$07,	nA5,	$06,	nG5
	dc.b		$07,	nF5,	$0C,	nRst,	$07,	nC6,	$0D,	nF6
	dc.b		$06,	nRst,	nD6,	$07,	nRst,	$06,	nC6,	$07
	dc.b		nRst,	$06,	nBb5,	$07,	nRst,	$06,	nA5,	nBb5
	dc.b		$07,	nB5,	$06,	nC6,	$0D,	nD6,	$07,	nRst
	dc.b		$06,	nF5,	nA5,	$07,	nRst,	$06,	nF5,	$07
	dc.b		nRst,	$06,	nD5,	$07,	nE5,	$06,	nRst,	nF5
	dc.b		$0D,	nRst,	$20
;	Alter Volume	value
	smpsAlterVol	$FF
	dc.b		smpsModOff,	nCs5,	$07,	nD5,	$06
;	Alter Volume	value
	smpsAlterVol	$01
;	Set Modulation	wait	speed	change	step
	smpsModSet	$00,	$02,	$03,	$03
	dc.b		nEb5,	$07,	nRst,	$06,	nE5,	$07,	nRst,	$06
	dc.b		nF5,	$0D,	nRst,	$06,	nEb5,	$07,	nRst,	$06
	dc.b		nEb5,	nRst,	$07,	nF5,	$06,	nFs5,	$07,	nRst
	dc.b		$06,	nCs6,	$07,	nRst,	$06,	nEb6,	nRst,	$07
	dc.b		nCs6,	$06,	nRst,	$07,	nEb6,	$06,	nRst,	$07
	dc.b		nCs6,	$06,	nRst,	nB5,	$07,	nBb5,	$06,	nAb5
	dc.b		$07,	nFs5,	$0D,	nRst,	$06,	nCs5,	$0D,	nEb5
	dc.b		$06,	nRst,	$07,	nE5,	$06,	nRst,	$07,	nF5
	dc.b		$0C,	nRst,	$07,	nEb5,	$06,	nRst,	$07,	nEb5
	dc.b		$06,	nRst,	nF5,	$07,	nFs5,	$06,	nRst,	$07
	dc.b		nCs6,	$06,	nRst,	$07,	nFs6,	$06,	nRst,	nEb6
	dc.b		$07,	nCs6,	$06,	nB5,	$07,	nBb5,	$06,	nAb5
	dc.b		$07,	nFs5,	$0C,	nRst,	$21,	nCs5,	$06,	nD5
	dc.b		nEb5,	$07,	nRst,	$06,	nE5,	$07,	nRst,	$06
	dc.b		nF5,	$0D,	nRst,	$06,	nEb5,	$07,	nRst,	$06
	dc.b		nEb5,	$07,	nRst,	$06,	nF5,	nFs5,	$07,	nRst
	dc.b		$06,	nCs6,	$07,	nRst,	$06,	nEb6,	$07,	nRst
	dc.b		$06,	nCs6,	nRst,	$07,	nEb6,	$06,	nRst,	$07
	dc.b		nCs6,	$06,	nRst,	$07,	nB5,	$06,	nBb5,	nAb5
	dc.b		$07,	nFs5,	$0D,	nRst,	$06,	nCs6,	$0D,	nFs6
	dc.b		$06,	nRst,	$07,	nEb6,	$06,	nRst,	$07,	nCs6
	dc.b		$06,	nRst,	$07,	nB5,	$06,	nRst,	nBb5,	$07
	dc.b		nB5,	$06,	nC6,	$07,	nCs6,	$0D,	nEb6,	$06
	dc.b		nRst,	nFs5,	$07,	nBb5,	$06,	nRst,	$07,	nFs5
	dc.b		$06,	nRst,	nEb5,	$07,	nF5,	$06,	nRst,	$07
	dc.b		nFs5,	$0D,	nRst,	$20
;	Alter Volume	value
	smpsAlterVol	$FF
	dc.b		smpsModOff,	nC5,	$06,	nCs5,	$07
;	Alter Volume	value
	smpsAlterVol	$F8
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		smpsModOff
;	Jump To	 	location
	smpsJump	InvincibleCoconut_Jump03

; FM4 Data
InvincibleCoconut_FM4:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$33
InvincibleCoconut_Jump04:
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nF4,	$06,	nRst,	$07,	nF4,	$06,	nRst,	$07
	dc.b		nE4,	$0C,	nRst,	$07,	nD4,	$06,	nRst,	$07
	dc.b		nD4,	$06,	nRst,	$07,	nD4,	$06,	nC4,	nRst
	dc.b		$07,	nC4,	$06,	nRst,	$07,	nF4,	$06,	nRst
	dc.b		$07,	nF4,	$06,	nRst,	nE4,	$0D,	nRst,	$07
	dc.b		nD4,	$06,	nRst,	$07,	nD4,	$06,	nRst,	nD4
	dc.b		$07,	nC4,	$06,	nRst,	$07,	nC4,	$06,	nRst
	dc.b		nF4,	$07,	nRst,	$06,	nF4,	$07,	nRst,	$06
	dc.b		nE4,	$0D,	nRst,	$06,	nD4,	$07,	nRst,	$06
	dc.b		nD4,	$07,	nRst,	$06,	nD4,	$07,	nC4,	$06
	dc.b		nRst,	nC4,	$07,	nRst,	$06,	nD4,	$07,	nRst
	dc.b		$06,	nD4,	$07,	nRst,	$06,	nE4,	nRst,	$07
	dc.b		nE4,	$06,	nF4,	$14,	nRst,	$26,	nF4,	$06
	dc.b		nRst,	$07,	nF4,	$06,	nRst,	$07,	nE4,	$0D
	dc.b		nRst,	$06,	nD4,	nRst,	$07,	nD4,	$06,	nRst
	dc.b		$07,	nD4,	$06,	nC4,	$07,	nRst,	$06,	nC4
	dc.b		nRst,	$07,	nF4,	$06,	nRst,	$07,	nF4,	$06
	dc.b		nRst,	$07,	nE4,	$0C,	nRst,	$07,	nD4,	$06
	dc.b		nRst,	$07,	nD4,	$06,	nRst,	$07,	nD4,	$06
	dc.b		nC4,	nRst,	$07,	nC4,	$06,	nRst,	$07,	nF4
	dc.b		$06,	nRst,	nF4,	$07,	nRst,	$06,	nE4,	$0D
	dc.b		nRst,	$07,	nD4,	$06,	nRst,	nD4,	$07,	nRst
	dc.b		$06,	nD4,	$07,	nC4,	$06,	nRst,	$07,	nC4
	dc.b		$06,	nRst,	nD4,	$07,	nRst,	$06,	nD4,	$07
	dc.b		nRst,	$06,	nE4,	$07,	nRst,	$06,	nE4,	nF4
	dc.b		$14,	nRst,	$26,	nFs4,	$07,	nRst,	$06,	nFs4
	dc.b		$07,	nRst,	$06,	nF4,	$0D,	nRst,	$06,	nEb4
	dc.b		$07,	nRst,	$06,	nEb4,	nRst,	$07,	nEb4,	$06
	dc.b		nCs4,	$07,	nRst,	$06,	nCs4,	$07,	nRst,	$06
	dc.b		nFs4,	nRst,	$07,	nFs4,	$06,	nRst,	$07,	nF4
	dc.b		$0D,	nRst,	$06,	nEb4,	nRst,	$07,	nEb4,	$06
	dc.b		nRst,	$07,	nEb4,	$06,	nCs4,	$07,	nRst,	$06
	dc.b		nCs4,	nRst,	$07,	nFs4,	$06,	nRst,	$07,	nFs4
	dc.b		$06,	nRst,	$07,	nF4,	$0C,	nRst,	$07,	nEb4
	dc.b		$06,	nRst,	$07,	nEb4,	$06,	nRst,	nEb4,	$07
	dc.b		nCs4,	$06,	nRst,	$07,	nCs4,	$06,	nRst,	$07
	dc.b		nEb4,	$06,	nRst,	nEb4,	$07,	nRst,	$06,	nF4
	dc.b		$07,	nRst,	$06,	nF4,	$07,	nFs4,	$13,	nRst
	dc.b		$26,	nFs4,	$07,	nRst,	$06,	nFs4,	$07,	nRst
	dc.b		$06,	nF4,	$0D,	nRst,	$06,	nEb4,	$07,	nRst
	dc.b		$06,	nEb4,	$07,	nRst,	$06,	nEb4,	nCs4,	$07
	dc.b		nRst,	$06,	nCs4,	$07,	nRst,	$06,	nFs4,	$07
	dc.b		nRst,	$06,	nFs4,	nRst,	$07,	nF4,	$0D,	nRst
	dc.b		$06,	nEb4,	$07,	nRst,	$06,	nEb4,	nRst,	$07
	dc.b		nEb4,	$06,	nCs4,	$07,	nRst,	$06,	nCs4,	$07
	dc.b		nRst,	$06,	nFs4,	nRst,	$07,	nFs4,	$06,	nRst
	dc.b		$07,	nF4,	$0D,	nRst,	$06,	nEb4,	nRst,	$07
	dc.b		nEb4,	$06,	nRst,	$07,	nEb4,	$06,	nCs4,	$07
	dc.b		nRst,	$06,	nCs4,	nRst,	$07,	nEb4,	$06,	nRst
	dc.b		$07,	nEb4,	$06,	nRst,	nF4,	$07,	nRst,	$06
	dc.b		nF4,	$07,	nFs4,	$13,	nRst,	$27
;	Alter Volume	value
	smpsAlterVol	$F5
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	InvincibleCoconut_Jump04

; FM5 Data
InvincibleCoconut_FM5:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		nRst,	$33
InvincibleCoconut_Jump05:
;	Set FM Voice	#
	smpsFMvoice	$00
;	Alter Volume	value
	smpsAlterVol	$0B
	dc.b		nD4,	$06,	nRst,	$07,	nD4,	$06,	nRst,	$07
	dc.b		nC4,	$0C,	nRst,	$07,	nBb3,	$06,	nRst,	$07
	dc.b		nBb3,	$06,	nRst,	$07,	nBb3,	$06,	nA3,	nRst
	dc.b		$07,	nA3,	$06,	nRst,	$07,	nD4,	$06,	nRst
	dc.b		$07,	nD4,	$06,	nRst,	nC4,	$0D,	nRst,	$07
	dc.b		nBb3,	$06,	nRst,	$07,	nBb3,	$06,	nRst,	nBb3
	dc.b		$07,	nA3,	$06,	nRst,	$07,	nA3,	$06,	nRst
	dc.b		nD4,	$07,	nRst,	$06,	nD4,	$07,	nRst,	$06
	dc.b		nC4,	$0D,	nRst,	$06,	nBb3,	$07,	nRst,	$06
	dc.b		nBb3,	$07,	nRst,	$06,	nBb3,	$07,	nA3,	$06
	dc.b		nRst,	nA3,	$07,	nRst,	$06,	nBb3,	$07,	nRst
	dc.b		$06,	nBb3,	$07,	nRst,	$06,	nC4,	nRst,	$07
	dc.b		nC4,	$06,	nC4,	$14,	nRst,	$26,	nD4,	$06
	dc.b		nRst,	$07,	nD4,	$06,	nRst,	$07,	nC4,	$0D
	dc.b		nRst,	$06,	nBb3,	nRst,	$07,	nBb3,	$06,	nRst
	dc.b		$07,	nBb3,	$06,	nA3,	$07,	nRst,	$06,	nA3
	dc.b		nRst,	$07,	nD4,	$06,	nRst,	$07,	nD4,	$06
	dc.b		nRst,	$07,	nC4,	$0C,	nRst,	$07,	nBb3,	$06
	dc.b		nRst,	$07,	nBb3,	$06,	nRst,	$07,	nBb3,	$06
	dc.b		nA3,	nRst,	$07,	nA3,	$06,	nRst,	$07,	nD4
	dc.b		$06,	nRst,	nD4,	$07,	nRst,	$06,	nC4,	$0D
	dc.b		nRst,	$07,	nBb3,	$06,	nRst,	nBb3,	$07,	nRst
	dc.b		$06,	nBb3,	$07,	nA3,	$06,	nRst,	$07,	nA3
	dc.b		$06,	nRst,	nBb3,	$07,	nRst,	$06,	nBb3,	$07
	dc.b		nRst,	$06,	nC4,	$07,	nRst,	$06,	nC4,	nC4
	dc.b		$14,	nRst,	$26,	nEb4,	$07,	nRst,	$06,	nEb4
	dc.b		$07,	nRst,	$06,	nCs4,	$0D,	nRst,	$06,	nB3
	dc.b		$07,	nRst,	$06,	nB3,	nRst,	$07,	nB3,	$06
	dc.b		nBb3,	$07,	nRst,	$06,	nBb3,	$07,	nRst,	$06
	dc.b		nEb4,	nRst,	$07,	nEb4,	$06,	nRst,	$07,	nCs4
	dc.b		$0D,	nRst,	$06,	nB3,	nRst,	$07,	nB3,	$06
	dc.b		nRst,	$07,	nB3,	$06,	nBb3,	$07,	nRst,	$06
	dc.b		nBb3,	nRst,	$07,	nEb4,	$06,	nRst,	$07,	nEb4
	dc.b		$06,	nRst,	$07,	nCs4,	$0C,	nRst,	$07,	nB3
	dc.b		$06,	nRst,	$07,	nB3,	$06,	nRst,	nB3,	$07
	dc.b		nBb3,	$06,	nRst,	$07,	nBb3,	$06,	nRst,	$07
	dc.b		nB3,	$06,	nRst,	nB3,	$07,	nRst,	$06,	nCs4
	dc.b		$07,	nRst,	$06,	nCs4,	$07,	nCs4,	$13,	nRst
	dc.b		$26,	nEb4,	$07,	nRst,	$06,	nEb4,	$07,	nRst
	dc.b		$06,	nCs4,	$0D,	nRst,	$06,	nB3,	$07,	nRst
	dc.b		$06,	nB3,	$07,	nRst,	$06,	nB3,	nBb3,	$07
	dc.b		nRst,	$06,	nBb3,	$07,	nRst,	$06,	nEb4,	$07
	dc.b		nRst,	$06,	nEb4,	nRst,	$07,	nCs4,	$0D,	nRst
	dc.b		$06,	nB3,	$07,	nRst,	$06,	nB3,	nRst,	$07
	dc.b		nB3,	$06,	nBb3,	$07,	nRst,	$06,	nBb3,	$07
	dc.b		nRst,	$06,	nEb4,	nRst,	$07,	nEb4,	$06,	nRst
	dc.b		$07,	nCs4,	$0D,	nRst,	$06,	nB3,	nRst,	$07
	dc.b		nB3,	$06,	nRst,	$07,	nB3,	$06,	nBb3,	$07
	dc.b		nRst,	$06,	nBb3,	nRst,	$07,	nB3,	$06,	nRst
	dc.b		$07,	nB3,	$06,	nRst,	nCs4,	$07,	nRst,	$06
	dc.b		nCs4,	$07,	nCs4,	$13,	nRst,	$27
;	Alter Volume	value
	smpsAlterVol	$F5
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Jump To	 	location
	smpsJump	InvincibleCoconut_Jump05

; PSG3 Data
InvincibleCoconut_PSG3:
	dc.b		nRst,	$33
InvincibleCoconut_Jump06:
;	Set Volume	value
	smpsSetVol	$05
;	Set PSG WvForm	#
	smpsPSGform	$E7
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$05
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$03,	nRst,	$06
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FF
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$04
;	Set Volume	value
	smpsSetVol	$01
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nA5,	$02,	nRst,	$07
;	Set Volume	value
	smpsSetVol	$FA
;	Jump To	 	location
	smpsJump	InvincibleCoconut_Jump06

; DAC Data
InvincibleCoconut_DAC:
	dc.b		dSnare,	$06,	dSnare,	dKick,	$07,	dKick,	$06,	dSnare
	dc.b		$07,	dSnare,	$06,	dSnare,	dSnare,	$07
InvincibleCoconut_Jump07:
	dc.b		dKick,	$0D,	dSnare,	dKick,	$0C,	dSnare,	$0D,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	$0C,	dKick,	$0D
	dc.b		dSnare,	dKick,	dSnare,	dKick,	$06,	dSnare,	$07,	dSnare
	dc.b		$0C,	dKick,	$0D,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	$0C,	dSnare,	$0D,	dSnare,	$07,	dSnare,	$06
	dc.b		dKick,	$07,	dKick,	$06,	dSnare,	dSnare,	$07,	dKick
	dc.b		$06,	dKick,	$07,	dSnare,	$06,	dSnare,	$07,	dSnare
	dc.b		$06,	dSnare,	dSnare,	$07,	dSnare,	$06,	dSnare,	$07
	dc.b		dSnare,	$06,	dKick,	$0D,	dSnare,	dKick,	dSnare,	$0C
	dc.b		dKick,	$0D,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		$0C,	dSnare,	$0D,	dKick,	dSnare,	dKick,	$06,	dSnare
	dc.b		$07,	dSnare,	$0D,	dKick,	$0C,	dSnare,	$0D,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	$0C,	dSnare,	$07
	dc.b		dSnare,	$06,	dKick,	$07,	dKick,	$06,	dSnare,	$07
	dc.b		dSnare,	$06,	dKick,	dKick,	$07,	dSnare,	$06,	dSnare
	dc.b		$07,	dSnare,	$06,	dSnare,	$07,	dSnare,	$06,	dSnare
	dc.b		dSnare,	$07,	dSnare,	$06,	dKick,	$0D,	dSnare,	dKick
	dc.b		dSnare,	dKick,	$0C,	dSnare,	$0D,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	$0C,	dKick,	$0D,	dSnare,	dKick
	dc.b		$07,	dSnare,	$06,	dSnare,	$0D,	dKick,	dSnare,	dKick
	dc.b		$0C,	dSnare,	$0D,	dKick,	dSnare,	dKick,	dSnare,	dSnare
	dc.b		$06,	dSnare,	dKick,	$07,	dKick,	$06,	dSnare,	$07
	dc.b		dSnare,	$06,	dKick,	$07,	dKick,	$06,	dSnare,	dSnare
	dc.b		$07,	dSnare,	$06,	dSnare,	$07,	dSnare,	$06,	dSnare
	dc.b		$07,	dSnare,	$06,	dSnare,	dKick,	$0D,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	$0C,	dKick,	$0D,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	$0C,	dSnare,	$0D,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	$0C,	dKick,	$0D
	dc.b		dSnare,	dKick,	dSnare,	dSnare,	$06,	dSnare,	$07,	dKick
	dc.b		$06,	dKick,	dSnare,	$07,	dSnare,	$06,	dKick,	$07
	dc.b		dKick,	$06,	dSnare,	$07,	dSnare,	$06,	dSnare,	dSnare
	dc.b		$07,	dSnare,	$06,	dSnare,	$07,	dSnare,	$06,	dSnare
	dc.b		$07
;	Jump To	 	location
	smpsJump	InvincibleCoconut_Jump07

InvincibleCoconut_Voices:
	dc.b		$3A,$01,$07,$01,$01,$8E,$8E,$8D,$53,$0E,$0E,$0E,$03,$00,$00,$00
	dc.b		$00,$1F,$FF,$1F,$0F,$18,$28,$27,$00;			Voice 00
	dc.b		$20,$7A,$31,$00,$00,$9F,$D8,$DC,$DF,$10,$0A,$04,$04,$0F,$08,$08
	dc.b		$08,$5F,$5F,$BF,$BF,$14,$2B,$17,$00;			Voice 01
	even
