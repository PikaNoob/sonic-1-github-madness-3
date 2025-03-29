; ---------------------------------------------------------------------------
; Animation script - Burrobot enemy but craig
; ---------------------------------------------------------------------------
		dc.w byte_AE4C-Ani_obj2D
		dc.w byte_AE50-Ani_obj2D
		dc.w byte_AE54-Ani_obj2D
		dc.w byte_AE58-Ani_obj2D
byte_AE4C:	dc.b 3,	0, $FF ; wait
byte_AE50:	dc.b 3,	0, 1, $FF ; waddle
byte_AE54:	dc.b 1,	0, 1, 2, 3, 4, 5, 6, 7, 8, 3, 9, $A, $FF ; speen
byte_AE58:	dc.b 3,	4, $FF
		even