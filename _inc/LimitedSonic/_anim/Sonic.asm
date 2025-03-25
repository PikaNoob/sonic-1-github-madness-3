; ---------------------------------------------------------------------------
; Animation script - Sonic
;
; The animation format for Sonic: Miracle Island is slightly different from
; that of Sonic 1.
; The first byte represents the sprite bank from which the sprites will
; be taken. From the second byte onwards, it's all the same as in Sonic 1.
; The animations controlled by the player speed actually ignore the bank
; value, and to change their banks, Sonic_Animate is to be edited.
;
;														- Giovanni
; ---------------------------------------------------------------------------
Ani_Sonic:

ptr_Walk:	dc.w SonAni_Walk-Ani_Sonic
ptr_Run:	dc.w SonAni_Run-Ani_Sonic
ptr_Roll:	dc.w SonAni_Roll-Ani_Sonic
ptr_Roll2:	dc.w SonAni_Roll2-Ani_Sonic
ptr_Push:	dc.w SonAni_Push-Ani_Sonic
ptr_Wait:	dc.w SonAni_Wait-Ani_Sonic
ptr_Balance:	dc.w SonAni_Balance-Ani_Sonic
ptr_LookUp:	dc.w SonAni_LookUp-Ani_Sonic
ptr_Duck:	dc.w SonAni_Duck-Ani_Sonic
ptr_Warp1:	dc.w SonAni_Warp1-Ani_Sonic
ptr_Warp2:	dc.w SonAni_Warp2-Ani_Sonic
ptr_Warp3:	dc.w SonAni_Warp3-Ani_Sonic
ptr_Warp4:	dc.w SonAni_Warp4-Ani_Sonic
ptr_Stop:	dc.w SonAni_Stop-Ani_Sonic
ptr_Float1:	dc.w SonAni_Float1-Ani_Sonic
ptr_Float2:	dc.w SonAni_Float2-Ani_Sonic
ptr_Spring:	dc.w SonAni_Spring-Ani_Sonic
ptr_Hang:	dc.w SonAni_Hang-Ani_Sonic
ptr_Leap1:	dc.w SonAni_Leap1-Ani_Sonic
ptr_Leap2:	dc.w SonAni_Leap2-Ani_Sonic
ptr_Surf:	dc.w SonAni_Surf-Ani_Sonic
ptr_GetAir:	dc.w SonAni_GetAir-Ani_Sonic
ptr_Burnt:	dc.w SonAni_Burnt-Ani_Sonic
ptr_Drown:	dc.w SonAni_Drown-Ani_Sonic
ptr_Death:	dc.w SonAni_Death-Ani_Sonic
ptr_Shrink:	dc.w SonAni_Shrink-Ani_Sonic
ptr_Hurt:	dc.w SonAni_Hurt-Ani_Sonic
ptr_WaterSlide:	dc.w SonAni_WaterSlide-Ani_Sonic
ptr_Null:	dc.w SonAni_Null-Ani_Sonic
ptr_Float3:	dc.w SonAni_Float3-Ani_Sonic
ptr_Float4:	dc.w SonAni_Float4-Ani_Sonic
ptr_Spindash: dc.w SonAni_Spindash-Ani_Sonic 
ptr_Fall: dc.w SonAni_Fall-Ani_Sonic 
ptr_Peelout: dc.w SonAni_Peelout-Ani_Sonic 
ptr_Victory: dc.w SonAni_Victory-Ani_Sonic 
ptr_Dropdash: dc.w SonAni_Dropdash-Ani_Sonic	
ptr_AirSlash: dc.w SonAni_AirSlash-Ani_Sonic	
ptr_Jog:	dc.w SonAni_Jog-Ani_Sonic
ptr_GetUp:	dc.w SonAni_GetUp-Ani_Sonic
ptr_SpringDiag:	dc.w SonAni_SpringDiag-Ani_Sonic
ptr_ContinueIdle:	dc.w SonAni_ContinueIdle-Ani_Sonic
ptr_ContinueReact:	dc.w SonAni_ContinueReact-Ani_Sonic
ptr_Twister:	dc.w SonAni_Twister-Ani_Sonic
ptr_Turntable:	dc.w SonAni_Turntable-Ani_Sonic
ptr_Shimmy:	dc.w SonAni_Shimmy-Ani_Sonic
ptr_Swing:	dc.w SonAni_Swing-Ani_Sonic
ptr_BalanceBackward:	dc.w SonAni_BalanceBackward-Ani_Sonic

SonAni_Walk:	dc.b 0, $FF, $1, $2, $3, $4, $5, $6, $7, $8, $9, $A, $B, $C, afEnd, afEnd, afEnd
		even
SonAni_Run:		dc.b 0, $FF,  $65, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd
		even
SonAni_Roll:	dc.b 0, $FE,  $95, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd
		even
SonAni_Roll2:	dc.b 0, $FE,  $95, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd
		even
SonAni_Push:	dc.b 0, $FF,  $A9, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd
		even
SonAni_Wait:	dc.b 0, 0, $A9, afEnd
		even
SonAni_Balance:	dc.b 0, 5, $A9, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd
		even
SonAni_LookUp:	dc.b 0, 0, $A9, afEnd
		even
SonAni_Duck:	dc.b 0, $FE, $95, afEnd
		even
SonAni_Warp1:	dc.b 0, $3F, fr_Warp1, afEnd
		even
SonAni_Warp2:	dc.b 0, $3F, fr_Warp2, afEnd
		even
SonAni_Warp3:	dc.b 0, $3F, fr_Warp3, afEnd
		even
SonAni_Warp4:	dc.b 0, $3F, fr_Warp4, afEnd
		even
SonAni_Stop:	dc.b 1, 2,	$1, $2, $3, $4, $5, $6, $7, $7, $7, $8, $8, $9, afChange, id_Walk
		even
SonAni_Float1:	dc.b 1, 5,	$35, $36, $37, $38, $39, $3A, $3B, $3C, $3D, $3E, afEnd
		even
SonAni_Float2:	dc.b 1, 5,	$35, $36, $37, $38, $39, $3A, $3B, $3C, $3D, $3E, afEnd
		even
SonAni_Spring:	dc.b 0, 0, $A9, afEnd
		even
SonAni_Hang:	dc.b 1, 4,	$3F, $40, $41, $42, afEnd
		even
SonAni_Leap1:	dc.b 0, $F, fr_Leap1, fr_Leap1, fr_Leap1,	afBack, 1
		even
SonAni_Leap2:	dc.b 0, $F, fr_Leap1, fr_Leap2, afBack, 1
		even
SonAni_Surf:	dc.b 0, $3F, fr_Surf, afEnd
		even
SonAni_GetAir:	dc.b 1, $5, $43, $44, $45, $46, $47, $48, afChange, id_Walk
		even
SonAni_Burnt:	dc.b 1, 0, $4D, afEnd
		even
SonAni_Drown:	dc.b 1, 4, $2F, $30, $31, $32, $33, $34, afBack, 1
		even
SonAni_Death:	dc.b 1, 0,	$2E, afEnd
		even
SonAni_Shrink:	dc.b 0, 3,	fr_Shrink1, fr_Shrink2, fr_Shrink3, fr_Shrink4, fr_Shrink5, fr_Null, afBack, 1
		even
SonAni_Hurt:	dc.b 1, 4,	$29, $2A, $2B, $2C, $2D, afBack, 2
		even
SonAni_WaterSlide:	dc.b 1, 4, $49, $4A, $4B, $4C, afBack, 4
		even
SonAni_Null:	dc.b 0, $77, fr_Null, afChange, id_Walk
		even
SonAni_Float3:	dc.b 1, 3,	$35, $36, $37, $38, $39, $3A, $3B, $3C, $3D, $3E, afEnd
		even
SonAni_Float4:	dc.b 1, 3,	$35, $36, $37, $38, $39, $3A, $3B, $3C, $3D, $3E, afChange, id_Walk
		even
SonAni_Spindash: dc.b 0, 0, $CC, $CC, $CD, $CD, $CE, $CE, $CF, $D0, $D1, $D0, $D2, $D0, $D3, $D0, $D4, $D0, $D5, $D0, $D6, $D0, $D7, $D0, $D8, afBack, $E
	    even
SonAni_Fall: dc.b 1, 2, $17, $18, $19, $1A, $1B, afBack, 3
        even
SonAni_Peelout:	dc.b 0, $FF, $85, $86, $87, $88, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd
		even
SonAni_Victory: dc.b 0, 0, $A9, afEnd
        even
SonAni_Dropdash: dc.b 0, 0, $DE, $DF, $E0, $E1, $DE, $E2, $E0, $E3, $DE, $E4, $E0, $E5, $DE, $E6, $E0, $E7, afEnd	; GIO: placeholder animation, you'll have to make one 
		even
SonAni_AirSlash: dc.b 0, 2, $D9, $DA, $DB, $DC, $DD, afChange, id_Roll
        even
SonAni_Jog: dc.b 0, $FF,  $65, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd
		even
SonAni_GetUp: dc.b 0, $3,  $B7, $B8, $BD, afChange, id_Wait
		even
SonAni_SpringDiag: dc.b 1, 1, $15, $16, $15, $16, $15, $16, $15, $16, $15, $16, $15, $16, $15, $16, $15, $16, $15, $16, $15, $16, afChange, id_Fall
		even
SonAni_ContinueIdle: dc.b 1, 4, $50, $51, $52, $53, $54, $55, $56, afEnd
		even
SonAni_ContinueReact: dc.b 1, 1, $57, $58, $59, $5A, afBack, 1
		even
SonAni_Twister: dc.b 1, 4, $67, $68, $69, $6A, $6B, $6C, $6D, $6E, $6F, $70, $71, $72, afEnd
		even
SonAni_Turntable: dc.b 1, 4, $73, $74, $75, $76, $77, $78, $79, $7A, $7B, $7C, $7D, $7E, afEnd
		even
SonAni_Shimmy: dc.b 1, 3, $60, $61, $62, $63, $64, $65, $66, afEnd
		even
SonAni_Swing: dc.b 1, 4, $5B, $5C, $5D, $5E, $5F, afEnd
		even
SonAni_BalanceBackward:	dc.b 0, 5, $A9, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd, afEnd
		even		

id_Walk:	equ (ptr_Walk-Ani_Sonic)/2	; 0
id_Run:		equ (ptr_Run-Ani_Sonic)/2	; 1
id_Peelout: equ (ptr_Peelout-Ani_Sonic)/2 ;  
id_Roll:	equ (ptr_Roll-Ani_Sonic)/2	; 2
id_Roll2:	equ (ptr_Roll2-Ani_Sonic)/2	; 3
id_Push:	equ (ptr_Push-Ani_Sonic)/2	; 4
id_Wait:	equ (ptr_Wait-Ani_Sonic)/2	; 5
id_Balance:	equ (ptr_Balance-Ani_Sonic)/2	; 6
id_LookUp:	equ (ptr_LookUp-Ani_Sonic)/2	; 7
id_Duck:	equ (ptr_Duck-Ani_Sonic)/2	; 8
id_Warp1:	equ (ptr_Warp1-Ani_Sonic)/2	; 9
id_Warp2:	equ (ptr_Warp2-Ani_Sonic)/2	; $A
id_Warp3:	equ (ptr_Warp3-Ani_Sonic)/2	; $B
id_Warp4:	equ (ptr_Warp4-Ani_Sonic)/2	; $C
id_Stop:	equ (ptr_Stop-Ani_Sonic)/2	; $D
id_Float1:	equ (ptr_Float1-Ani_Sonic)/2	; $E
id_Float2:	equ (ptr_Float2-Ani_Sonic)/2	; $F
id_Spring:	equ (ptr_Spring-Ani_Sonic)/2	; $10
id_Hang:	equ (ptr_Hang-Ani_Sonic)/2	; $11
id_Leap1:	equ (ptr_Leap1-Ani_Sonic)/2	; $12
id_Leap2:	equ (ptr_Leap2-Ani_Sonic)/2	; $13
id_Surf:	equ (ptr_Surf-Ani_Sonic)/2	; $14
id_GetAir:	equ (ptr_GetAir-Ani_Sonic)/2	; $15
id_Burnt:	equ (ptr_Burnt-Ani_Sonic)/2	; $16
id_Drown:	equ (ptr_Drown-Ani_Sonic)/2	; $17
id_Death:	equ (ptr_Death-Ani_Sonic)/2	; $18
id_Shrink:	equ (ptr_Shrink-Ani_Sonic)/2	; $19
id_Hurt:	equ (ptr_Hurt-Ani_Sonic)/2	; $1A
id_WaterSlide:	equ (ptr_WaterSlide-Ani_Sonic)/2 ; $1B
id_Null:	equ (ptr_Null-Ani_Sonic)/2	; $1C
id_Float3:	equ (ptr_Float3-Ani_Sonic)/2	; $1D
id_Float4:	equ (ptr_Float4-Ani_Sonic)/2	; $1E
id_Spindash: equ (ptr_Spindash-Ani_Sonic)/2  ; $1F
id_Fall: equ (ptr_Fall-Ani_Sonic)/2 ;  $20
id_Peelout: equ (ptr_Peelout-Ani_Sonic)/2 ;  
id_Victory: equ (ptr_Victory-Ani_Sonic)/2 ;  $23
id_Dropdash: equ (ptr_Dropdash-Ani_Sonic)/2	; $24
id_AirSlash: equ (ptr_AirSlash-Ani_Sonic)/2	; $25
id_Jog:		equ (ptr_Jog-Ani_Sonic)/2
id_GetUp:		equ (ptr_GetUp-Ani_Sonic)/2
id_SpringDiag:		equ (ptr_SpringDiag-Ani_Sonic)/2
id_ContinueIdle:		equ (ptr_ContinueIdle-Ani_Sonic)/2
id_ContinueReact:		equ (ptr_ContinueReact-Ani_Sonic)/2
id_Twister:		equ (ptr_Twister-Ani_Sonic)/2
id_Turntable:		equ (ptr_Turntable-Ani_Sonic)/2
id_Shimmy:		equ (ptr_Shimmy-Ani_Sonic)/2
id_Swing:		equ (ptr_Swing-Ani_Sonic)/2
id_BalanceBackward:		equ (ptr_BalanceBackward-Ani_Sonic)/2