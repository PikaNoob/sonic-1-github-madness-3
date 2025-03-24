; ---------------------------------------------------------------------------
; Animation script - Eggman (bosses)
; ---------------------------------------------------------------------------
		dc.w spin-Ani_TetoB
		dc.w static-Ani_TetoB
		dc.w static2-Ani_TetoB
spin:	dc.b 4, 0, 1, 2, 3, $FF, 0
static:	dc.b 5,	0, $FF
static2:	dc.b 5,	1, $FF
		even