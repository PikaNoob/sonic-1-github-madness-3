; ---------------------------------------------------------------------------
; Adds art to the DMA queue
; Inputs:
; d1 = source address
; d2 = destination VRAM address
; d3 = number of words to transfer
; ---------------------------------------------------------------------------
Add_To_DMA_Queue:
		; Detect if transfer crosses 128KB boundary
		lsr.l	#1,d1
		move.w	d3,d0
		neg.w	d0
		sub.w	d1,d0
		bcc.s	@transfer
		; Do first transfer
		movem.l	d1-d3,-(sp)
		add.w	d0,d3			; d3 = words remaining in 128KB "bank"
		bsr.s	@transfer
		movem.l	(sp)+,d1-d3
		; Get second transfer's source, destination, and length
		moveq	#0,d0
		sub.w	d1,d0
		sub.w	d0,d3
		add.l	d0,d1
		add.w	d0,d2
		add.w	d0,d2
		; Do second transfer
@transfer:
		cmp.w	#18,(v_dmaqueuecount).w	; is the queue full?
		bhs.s	@exit			; if it is, return
		addq.w	#1,(v_dmaqueuecount).w
		movea.w	(v_dmaqueueslot).w,a1

		move.w	#$9300,d0
		move.b	d3,d0
		move.w	d0,(a1)+		; command to specify transfer length in words & $00FF

		move.w	#$9400,d0
		lsr.w	#8,d3
		move.b	d3,d0
		move.w	d0,(a1)+		; command to specify transfer length in words & $FF00

		move.w	#$9500,d0
		move.b	d1,d0
		move.w	d0,(a1)+		; command to specify transfer source & $0001FE

		move.w	#$9600,d0
		lsr.l	#8,d1
		move.b	d1,d0
		move.w	d0,(a1)+		; command to specify transfer source & $01FE00

		move.w	#$9700,d0
		lsr.l	#8,d1
		andi.b	#$7F,d1			; this instruction safely allows source to be in RAM; S2's lacks this
		move.b	d1,d0
		move.w	d0,(a1)+		; command to specify transfer source & $FE0000

		andi.l	#$FFFF,d2
		lsl.l	#2,d2
		lsr.w	#2,d2
		swap	d2
		ori.l	#$40000080,d2		; vdpComm(0,VRAM,DMA)
		move.l	d2,(a1)+		; command to specify transfer destination and begin DMA

		move.w	a1,(v_dmaqueueslot).w	; set new free slot address
@exit:
		rts
; -----------------------------------------------------------------------------
Process_DMA_Queue:
		lea	(vdp_control_port).l,a5
		lea	(v_dmaqueuecount).w,a1
		move.w	(a1)+,d0
		subq.w	#1,d0
		bcs.s	@stop
@loop:
		move.l	(a1)+,(a5)
		move.l	(a1)+,(a5)
		move.l	(a1)+,(a5)
		move.w	(a1)+,(a5)		; this one needs to be a word write
		dbf	d0,@loop
@stop:
; -----------------------------------------------------------------------------
Reset_DMA_Queue:
		clr.w	(v_dmaqueuecount).w
		move.w	#v_dmaqueue,(v_dmaqueueslot).w
		rts