; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
@index:
		dc.w LimitAni_Walk-@index
		dc.w LimitAni_Run-@index
		dc.w LimitAni_Roll-@index
		dc.w LimitAni_Roll2-@index
		dc.w LimitAni_Push-@index
		dc.w LimitAni_Wait-@index
		dc.w LimitAni_Balance-@index
		dc.w LimitAni_LookUp-@index
		dc.w LimitAni_Duck-@index
		dc.w LimitAni_Warp1-@index
		dc.w LimitAni_Warp2-@index
		dc.w LimitAni_Warp3-@index
		dc.w LimitAni_Warp4-@index
		dc.w LimitAni_Stop-@index
		dc.w LimitAni_Float1-@index
		dc.w LimitAni_Float2-@index
		dc.w LimitAni_Spring-@index
		dc.w LimitAni_Hang-@index
		dc.w LimitAni_Leap1-@index
		dc.w LimitAni_Leap2-@index
		dc.w LimitAni_Surf-@index
		dc.w LimitAni_GetAir-@index
		dc.w LimitAni_Burnt-@index
		dc.w LimitAni_Drown-@index
		dc.w LimitAni_Death-@index
		dc.w LimitAni_Shrink-@index
		dc.w LimitAni_Hurt-@index
		dc.w LimitAni_WaterSlide-@index
		dc.w LimitAni_Null-@index
		dc.w LimitAni_Float3-@index
		dc.w LimitAni_Float4-@index

LimitAni_Walk:	dc.b $FF, $1E, $FF
LimitAni_Run:	dc.b $FF,  $1E, $FF
LimitAni_Roll:	dc.b $FE,  $32, $FF
LimitAni_Roll2:	dc.b $FE,  $32, $FF
LimitAni_Push:	dc.b $FD,  $1E, $FF
LimitAni_Wait:	dc.b $17, 1, $FF
LimitAni_Balance:	dc.b $1F, 1, $FF
LimitAni_LookUp:	dc.b $3F, 1, $FF
LimitAni_Duck:	dc.b $3F, $39, $FF
LimitAni_Warp1:	dc.b $3F, 1, $FF
LimitAni_Warp2:	dc.b $3F, 1, $FF
LimitAni_Warp3:	dc.b $3F, 1, $FF
LimitAni_Warp4:	dc.b $3F, 1, $FF
LimitAni_Stop:	dc.b 7,	1, $FF
LimitAni_Float1:	dc.b 7,	$4D, $FF
LimitAni_Float2:	dc.b 7,	$4D, $FF
LimitAni_Spring:	dc.b $2F, 1, $FD, 0
LimitAni_Hang:	dc.b 4,	$4D, $FF
LimitAni_Leap1:	dc.b $F, $4D,	$FF
LimitAni_Leap2:	dc.b $F, $4D, $FF
LimitAni_Surf:	dc.b $3F, 1, $FF
LimitAni_GetAir:	dc.b $B, $4D, $FD, 0
LimitAni_Burnt:	dc.b $20, $4D, $FF
LimitAni_Drown:	dc.b $2F, $4D, $FF
LimitAni_Death:	dc.b 3,	$4D, $FF
LimitAni_Shrink:	dc.b 3,	$4D, 0, $FE, 1
LimitAni_Hurt:	dc.b 3,	$4D, $FF
LimitAni_WaterSlide:
		dc.b 7, $4D, $FF
LimitAni_Null:	dc.b $77, 0, $FD, 0
LimitAni_Float3:	dc.b 3,	$4D, $FF
LimitAni_Float4:	dc.b 3,	$4D, $FD, 0
		even
