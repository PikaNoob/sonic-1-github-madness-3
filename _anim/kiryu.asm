; ---------------------------------------------------------------------------
; Animation script - Kiryu
; ---------------------------------------------------------------------------
		dc.w KiryuAni_Walk-KiryuAniData
		dc.w KiryuAni_Run-KiryuAniData
		dc.w KiryuAni_Roll-KiryuAniData
		dc.w KiryuAni_Roll2-KiryuAniData
		dc.w KiryuAni_Push-KiryuAniData
		dc.w KiryuAni_Wait-KiryuAniData
		dc.w KiryuAni_Balance-KiryuAniData
		dc.w KiryuAni_LookUp-KiryuAniData
		dc.w KiryuAni_Duck-KiryuAniData
		dc.w KiryuAni_Warp1-KiryuAniData
		dc.w KiryuAni_Warp2-KiryuAniData
		dc.w KiryuAni_Warp3-KiryuAniData
		dc.w KiryuAni_Warp4-KiryuAniData
		dc.w KiryuAni_Stop-KiryuAniData
		dc.w KiryuAni_Float1-KiryuAniData
		dc.w KiryuAni_Float2-KiryuAniData
		dc.w KiryuAni_Spring-KiryuAniData
		dc.w KiryuAni_Hang-KiryuAniData
		dc.w KiryuAni_Leap1-KiryuAniData
		dc.w KiryuAni_Leap2-KiryuAniData
		dc.w KiryuAni_Surf-KiryuAniData
		dc.w KiryuAni_GetAir-KiryuAniData
		dc.w KiryuAni_Burnt-KiryuAniData
		dc.w KiryuAni_Drown-KiryuAniData
		dc.w KiryuAni_Death-KiryuAniData
		dc.w KiryuAni_Shrink-KiryuAniData
		dc.w KiryuAni_Hurt-KiryuAniData
		dc.w KiryuAni_WaterSlide-KiryuAniData
		dc.w KiryuAni_Null-KiryuAniData
		dc.w KiryuAni_Float3-KiryuAniData
		dc.w KiryuAni_Float4-KiryuAniData

KiryuAni_Walk:	dc.b 4,2,3,4,5, $FF
		even
KiryuAni_Run:	dc.b 4,2,3,4,5, $FF
		even
KiryuAni_Roll:	dc.b 4, 7, $FF, $FF, $FF, $FF
		even
KiryuAni_Roll2:	dc.b 4, 7, $FF, $FF, $FF, $FF
		even
KiryuAni_Push:	dc.b 4, 8, $FF, $FF, $FF, $FF
		even
KiryuAni_Wait:	dc.b $17, 1, $FF
		even
KiryuAni_Balance:	dc.b $1F, 1, $FF
		even
KiryuAni_LookUp:	dc.b $3F, 1, $FF
		even
KiryuAni_Duck:	dc.b $3F, 1, $FF
		even
KiryuAni_Warp1:	dc.b $3F, 1, $FF
		even
KiryuAni_Warp2:	dc.b $3F, 1, $FF
		even
KiryuAni_Warp3:	dc.b $3F, 1, $FF
		even
KiryuAni_Warp4:	dc.b $3F, 1, $FF
		even
KiryuAni_Stop:	dc.b 7,	1, $FF
		even
KiryuAni_Float1:	dc.b 7,	8, $FF
		even
KiryuAni_Float2:	dc.b 7,	8, $FF
		even
KiryuAni_Spring:	dc.b $2F, 7, $FD, 0
		even
KiryuAni_Hang:	dc.b 4,	1, $FF
		even
KiryuAni_Leap1:	dc.b $F, 7,	$FF
		even
KiryuAni_Leap2:	dc.b $F, 7, $FF
		even
KiryuAni_Surf:	dc.b $3F, 7, $FF
		even
KiryuAni_GetAir:	dc.b $B, 7, $FD, 0
		even
KiryuAni_Burnt:	dc.b $20, 5, $FF
		even
KiryuAni_Drown:	dc.b $2F, 5, $FF
		even
KiryuAni_Death:	dc.b 3,	5, $FF
		even
KiryuAni_Shrink:	dc.b 3,	$4D, 5, $FE, 1
		even
KiryuAni_Hurt:	dc.b 3,	6, $FF
		even
KiryuAni_WaterSlide: dc.b 7, 8, $FF
		even
KiryuAni_Null:	dc.b $77, 0, $FD, 0
		even
KiryuAni_Float3:	dc.b 3,	7, $FF
		even
KiryuAni_Float4:	dc.b 3,	7, $FD, 0
		even
