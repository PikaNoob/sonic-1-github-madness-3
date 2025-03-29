; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
		dc.w LimitAni_Walk-LimitedSonicAniData
		dc.w LimitAni_Run-LimitedSonicAniData
		dc.w LimitAni_Roll-LimitedSonicAniData
		dc.w LimitAni_Roll2-LimitedSonicAniData
		dc.w LimitAni_Push-LimitedSonicAniData
		dc.w LimitAni_Wait-LimitedSonicAniData
		dc.w LimitAni_Balance-LimitedSonicAniData
		dc.w LimitAni_LookUp-LimitedSonicAniData
		dc.w LimitAni_Duck-LimitedSonicAniData
		dc.w LimitAni_Warp1-LimitedSonicAniData
		dc.w LimitAni_Warp2-LimitedSonicAniData
		dc.w LimitAni_Warp3-LimitedSonicAniData
		dc.w LimitAni_Warp4-LimitedSonicAniData
		dc.w LimitAni_Stop-LimitedSonicAniData
		dc.w LimitAni_Float1-LimitedSonicAniData
		dc.w LimitAni_Float2-LimitedSonicAniData
		dc.w LimitAni_Spring-LimitedSonicAniData
		dc.w LimitAni_Hang-LimitedSonicAniData
		dc.w LimitAni_Leap1-LimitedSonicAniData
		dc.w LimitAni_Leap2-LimitedSonicAniData
		dc.w LimitAni_Surf-LimitedSonicAniData
		dc.w LimitAni_GetAir-LimitedSonicAniData
		dc.w LimitAni_Burnt-LimitedSonicAniData
		dc.w LimitAni_Drown-LimitedSonicAniData
		dc.w LimitAni_Death-LimitedSonicAniData
		dc.w LimitAni_Shrink-LimitedSonicAniData
		dc.w LimitAni_Hurt-LimitedSonicAniData
		dc.w LimitAni_WaterSlide-LimitedSonicAniData
		dc.w LimitAni_Null-LimitedSonicAniData
		dc.w LimitAni_Float3-LimitedSonicAniData
		dc.w LimitAni_Float4-LimitedSonicAniData

LimitAni_Walk:	dc.b $FF, $1E, $FF
		even
LimitAni_Run:	dc.b $FF,  $1E, $FF
		even
LimitAni_Roll:	dc.b $FE,  $32, $FF
		even
LimitAni_Roll2:	dc.b $FE,  $32, $FF
		even
LimitAni_Push:	dc.b $FD,  $1E, $FF
		even
LimitAni_Wait:	dc.b $17, 1, $FF
		even
LimitAni_Balance:	dc.b $1F, 1, $FF
		even
LimitAni_LookUp:	dc.b $3F, 1, $FF
		even
LimitAni_Duck:	dc.b $3F, $39, $FF
		even
LimitAni_Warp1:	dc.b $3F, 1, $FF
		even
LimitAni_Warp2:	dc.b $3F, 1, $FF
		even
LimitAni_Warp3:	dc.b $3F, 1, $FF
		even
LimitAni_Warp4:	dc.b $3F, 1, $FF
		even
LimitAni_Stop:	dc.b 7,	1, $FF
		even
LimitAni_Float1:	dc.b 7,	$4D, $FF
		even
LimitAni_Float2:	dc.b 7,	$4D, $FF
		even
LimitAni_Spring:	dc.b $2F, 1, $FD, 0
		even
LimitAni_Hang:	dc.b 4,	$4D, $FF
		even
LimitAni_Leap1:	dc.b $F, $4D,	$FF
		even
LimitAni_Leap2:	dc.b $F, $4D, $FF
		even
LimitAni_Surf:	dc.b $3F, 1, $FF
		even
LimitAni_GetAir:	dc.b $B, $4D, $FD, 0
		even
LimitAni_Burnt:	dc.b $20, $4D, $FF
		even
LimitAni_Drown:	dc.b $2F, $4D, $FF
		even
LimitAni_Death:	dc.b 3,	$4D, $FF
		even
LimitAni_Shrink:	dc.b 3,	$4D, 0, $FE, 1
		even
LimitAni_Hurt:	dc.b 3,	$4D, $FF
		even
LimitAni_WaterSlide:
		dc.b 7, $4D, $FF
		even
LimitAni_Null:	dc.b $77, 0, $FD, 0
		even
LimitAni_Float3:	dc.b 3,	$4D, $FF
		even
LimitAni_Float4:	dc.b 3,	$4D, $FD, 0
		even
