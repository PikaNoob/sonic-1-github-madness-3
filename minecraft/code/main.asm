; Minecraft: Very Legacy Console Edition
; Main file

	include	minecraft\code\variables.asm

MC_Init:
		ori	#$700,sr		; disables CPU interrupts
		lea	($C00004).l,a6	;	; load the address of the VDP control port into a6

		move.w	#$8134,(a6)		; disable display
		bsr.w	MC_ClearScreen		; clear VRAM, CRAM, and VSRAM
		bsr.w	MC_LoadPalette		; load in the palette
		move.w	#$8174,(a6)		; enable display



		bra.w	*			; spin infinitely

; ===========================================================================
; ---------------------------------------------------------------------------
; Clear The Screen
; ---------------------------------------------------------------------------
MC_ClearScreen:
		move.w	#$8F01,(a6)		; set auto-incremement size to byte

		move.l	#$94FF93FF,(a6)		; clear the VRAM
		move.w	#$9780,(a6)		; ^
		move.l	#$40000080,(a6)		; ^
		move.w	#0,-4(a6)		; ^

.waitVRAMClr:	move.w	(a6),ccr		; is a DMA in progress?
		bvs.s	.waitVRAMClr		; if so, loop until DMA is complete

		move.l	#$9400937F,(a6)		; clear the CRAM
		move.w	#$9780,(a6)		; ^
		move.l	#$C0000080,(a6)		; ^
		move.w	#0,-4(a6)		; ^

.waitCRAMClr:	move.w	(a6),ccr		; is a DMA in progress?
		bvs.s	.waitCRAMClr		; if so, loop until DMA is complete

		move.l	#$9400935F,(a6)		; clear the VSRAM
		move.w	#$9780,(a6)		; ^
		move.l	#$40000090,(a6)		; ^
		move.w	#0,-4(a6)		; ^

.waitVSRAMClr:	move.w	(a6),ccr		; is a DMA in progress?
		bvs.s	.waitVSRAMClr		; if so, loop until DMA is complete

		move.w	#$8F02,(a6)		; set auto-incremement size to word
		rts				; return
; ---------------------------------------------------------------------------

; ===========================================================================
; ---------------------------------------------------------------------------
; Load The Palette
; ---------------------------------------------------------------------------
MC_LoadPalette:
		move.w	(a6),ccr		; is v-blank active?
		bpl.s	MC_LoadPalette		; if not, wait for it to start

.updatePalette:
		move.l	#$94009340,(a6)		; set the DMA transfer size (64 colors)
		
		lea	MC_Palette(pc),a5	; load the base address of the palette data (pc relative)
		move.l	a5,d0			; move the address to a data register so we can modify it
		lsr.l	#1,d0			; divide by two

		move.w	#$9500,d1		; set the low byte of the transfer source address
		move.b	d0,d1			; ^
		move.w	d1,(a6)			; ^

		lsr.l	#8,d0			; set the middle byte of the transfer source address
		move.w	#$9600,d1		; ^
		move.b	d0,d1			; ^
		move.w	d1,(a6)			; ^

		lsr.l	#8,d0			; set the high byte of the transfer source address
		move.w	#$9700,d1		; ^
		move.b	d0,d1			; ^
		move.w	d1,(a6)			; ^

		move.l	#$C0000080,(a6)		; set the destination palette index and begin the transfer

.waitForScan:
	;	move.w	(a6),ccr		; is v-blank still active?
	;	bmi.s	.waitForScan		; if so, wait for active scan before returning
		rts				; return
; ---------------------------------------------------------------------------

MC_Palette:
	dc.w	$E86, $8AE, $68E, $46C, $246, $024, $CC0, $AA0, $C46, $824, $EEE, $444, $222, $000, $000, $000
	dc.w	$000, $CCC, $AAA, $888, $666, $444, $222, $4EE, $6AE, $48C, $26A, $048, $026, $4E6, $2C4, $080
	dc.w	$EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE
	dc.w	$EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE, $EEE