; ---------------------------------------------------------------------------
; Animation script - Bomb enemy
; ---------------------------------------------------------------------------
		dc.w byte_11C12-Ani_obj5F
		dc.w byte_11C16-Ani_obj5F
		dc.w byte_11C1C-Ani_obj5F
		dc.w byte_11C20-Ani_obj5F
		dc.w byte_11C24-Ani_obj5F
byte_11C12:	dc.b $12, 0, 0,	$FF
byte_11C16:	dc.b $12, 1, 0,	2, 0, $FF
byte_11C1C:	dc.b $12, 3, 4,	$FF
byte_11C20:	dc.b 3,	5, 6, $FF
byte_11C24:	dc.b 3,	$7, $8,	$FF
		even