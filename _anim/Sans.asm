; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
		dc.w SonAni_Walk-SonicAniData
		dc.w SonAni_Run-SonicAniData
		dc.w SonAni_Roll-SonicAniData
		dc.w SonAni_Roll2-SonicAniData
		dc.w SonAni_Push-SonicAniData
		dc.w SonAni_Wait-SonicAniData
		dc.w SonAni_Balance-SonicAniData
		dc.w SonAni_LookUp-SonicAniData
		dc.w SonAni_Duck-SonicAniData
		dc.w SonAni_Warp1-SonicAniData
		dc.w SonAni_Warp2-SonicAniData
		dc.w SonAni_Warp3-SonicAniData
		dc.w SonAni_Warp4-SonicAniData
		dc.w SonAni_Stop-SonicAniData
		dc.w SonAni_Float1-SonicAniData
		dc.w SonAni_Float2-SonicAniData
		dc.w SonAni_Spring-SonicAniData
		dc.w SonAni_LZHang-SonicAniData
		dc.w SonAni_Leap1-SonicAniData
		dc.w SonAni_Leap2-SonicAniData
		dc.w SonAni_Surf-SonicAniData
		dc.w SonAni_Bubble-SonicAniData
		dc.w SonAni_Death1-SonicAniData
		dc.w SonAni_Drown-SonicAniData
		dc.w SonAni_Death2-SonicAniData
		dc.w SonAni_Shrink-SonicAniData
		dc.w SonAni_Hurt-SonicAniData
		dc.w SonAni_LZSlide-SonicAniData
		dc.w SonAni_Blank-SonicAniData
		dc.w SonAni_Float3-SonicAniData
		dc.w SonAni_Float4-SonicAniData

;SonAni_Walk:	dc.b $FF, 8, 9, $5A, $A, $B, 6, $59, 7, $FF ; <this has two extra frames
;prone to bugs and also causes issues with other characters, i fixed them up ^^
;dw i kept oily fella in one to two diagonal frames

SonAni_Walke:	dc.b $FF, 6, 7, 8, 9, $A, $B, $FF
SonAni_Rune:	dc.b $FF, $1E, $1F, $20, $21, $FF, $FF,	$FF
SonAni_Rolle:	dc.b $FE, $2E, $2F, $30, $31, $32, $FF,	$FF
SonAni_Roll2e:	dc.b $FE, $2E, $2F, $32, $30, $31, $32,	$FF
SonAni_Pushe:	dc.b $FD, $45, $46, $47, $48, $FF, $FF,	$FF
SonAni_Waite:	dc.b $17, 1, 1,	1, 1, 1, 1, 1, 1, 1, 1,	1, 1, 3, 2, 2, 2, 3, 4, $FE, 2, 0
SonAni_Balancee:	dc.b $1E, $3A, $3B, $FF
SonAni_LookUpe:	dc.b $3F, 5, $FF, 0
SonAni_Ducke:	dc.b $3F, $39, $FF, 0
SonAni_Warp1e:	dc.b $3F, $33, $FF, 0
SonAni_Warp2e:	dc.b $3F, $34, $FF, 0
SonAni_Warp3e:	dc.b $3F, $35, $FF, 0
SonAni_Warp4e:	dc.b $3F, $36, $FF, 0
SonAni_Stope:	dc.b 7,	$37, $38, $FF
SonAni_Float1e:	dc.b 7,	$3C, $3F, $FF
SonAni_Float2e:	dc.b 7,	$3C, $3D, $53, $3E, $54, $FF, 0
SonAni_Springe:	dc.b $2F, $40, $FD, 0
SonAni_LZHange:	dc.b 4,	$41, $42, $FF
SonAni_Leap1e:	dc.b $F, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69
	dc.b $6A, $6B, $6C, $6D, $6E, $6F, $70, $71, $72, $FE, 1
SonAni_Leap2e:	dc.b $F, $43, $44, $FE,	1, 0
SonAni_Surfe:	dc.b $3F, $49, $FF, 0
SonAni_Bubbeele:	dc.b $B, $56, $56, $A, $B, $FD,	0, 0
SonAni_Death1:	dc.b $20, $4B, $FF, 0
SonAni_Drown:	dc.b $2F, $4C, $FF, 0
SonAni_Death2:	dc.b 3,	$4D, $FF, 0
SonAni_Shrink:	dc.b 3,	$4E, $4F, $50, $51, $52, 0, $FE, 1, 0
SonAni_Hurt:	dc.b 3,	$58, $FF, 0
SonAni_LZSlide:	dc.b 7, $55, $57, $FF
SonAni_Blank:	dc.b $77, 0, $FD, 0
SonAni_Float3:	dc.b 3,	$3C, $3D, $53, $3E, $54, $FF, 0
SonAni_Float4:	dc.b 3,	$3C, $FD, 0
		even