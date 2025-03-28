; ---------------------------------------------------------------------------
; Uncompressed graphics	loading	array for Sonic
; ---------------------------------------------------------------------------
		dc.w LimitPLC_Blank-LimitDynPLC
		dc.w LimitPLC_Stand-LimitDynPLC
		dc.w LimitPLC_Wait1-LimitDynPLC
		dc.w LimitPLC_Wait2-LimitDynPLC
		dc.w LimitPLC_Wait3-LimitDynPLC
		dc.w LimitPLC_LookUp-LimitDynPLC
		dc.w LimitPLC_Walk11-LimitDynPLC
		dc.w LimitPLC_Walk12-LimitDynPLC
		dc.w LimitPLC_Walk13-LimitDynPLC
		dc.w LimitPLC_Walk14-LimitDynPLC
		dc.w LimitPLC_Walk15-LimitDynPLC
		dc.w LimitPLC_Walk16-LimitDynPLC
		dc.w LimitPLC_Walk21-LimitDynPLC
		dc.w LimitPLC_Walk22-LimitDynPLC
		dc.w LimitPLC_Walk23-LimitDynPLC
		dc.w LimitPLC_Walk24-LimitDynPLC
		dc.w LimitPLC_Walk25-LimitDynPLC
		dc.w LimitPLC_Walk26-LimitDynPLC
		dc.w LimitPLC_Walk31-LimitDynPLC
		dc.w LimitPLC_Walk32-LimitDynPLC
		dc.w LimitPLC_Walk33-LimitDynPLC
		dc.w LimitPLC_Walk34-LimitDynPLC
		dc.w LimitPLC_Walk35-LimitDynPLC
		dc.w LimitPLC_Walk36-LimitDynPLC
		dc.w LimitPLC_Walk41-LimitDynPLC
		dc.w LimitPLC_Walk42-LimitDynPLC
		dc.w LimitPLC_Walk43-LimitDynPLC
		dc.w LimitPLC_Walk44-LimitDynPLC
		dc.w LimitPLC_Walk45-LimitDynPLC
		dc.w LimitPLC_Walk46-LimitDynPLC
		dc.w LimitPLC_Run11-LimitDynPLC
		dc.w LimitPLC_Run12-LimitDynPLC
		dc.w LimitPLC_Run13-LimitDynPLC
		dc.w LimitPLC_Run14-LimitDynPLC
		dc.w LimitPLC_Run21-LimitDynPLC
		dc.w LimitPLC_Run22-LimitDynPLC
		dc.w LimitPLC_Run23-LimitDynPLC
		dc.w LimitPLC_Run24-LimitDynPLC
		dc.w LimitPLC_Run31-LimitDynPLC
		dc.w LimitPLC_Run32-LimitDynPLC
		dc.w LimitPLC_Run33-LimitDynPLC
		dc.w LimitPLC_Run34-LimitDynPLC
		dc.w LimitPLC_Run41-LimitDynPLC
		dc.w LimitPLC_Run42-LimitDynPLC
		dc.w LimitPLC_Run43-LimitDynPLC
		dc.w LimitPLC_Run44-LimitDynPLC
		dc.w LimitPLC_Roll1-LimitDynPLC
		dc.w LimitPLC_Roll2-LimitDynPLC
		dc.w LimitPLC_Roll3-LimitDynPLC
		dc.w LimitPLC_Roll4-LimitDynPLC
		dc.w LimitPLC_Roll5-LimitDynPLC
		dc.w LimitPLC_Warp1-LimitDynPLC
		dc.w LimitPLC_Warp2-LimitDynPLC
		dc.w LimitPLC_Warp3-LimitDynPLC
		dc.w LimitPLC_Warp4-LimitDynPLC
		dc.w LimitPLC_Stop1-LimitDynPLC
		dc.w LimitPLC_Stop2-LimitDynPLC
		dc.w LimitPLC_Duck-LimitDynPLC
		dc.w LimitPLC_Balance1-LimitDynPLC
		dc.w LimitPLC_Balance2-LimitDynPLC
		dc.w LimitPLC_Float1-LimitDynPLC
		dc.w LimitPLC_Float2-LimitDynPLC
		dc.w LimitPLC_Float3-LimitDynPLC
		dc.w LimitPLC_Float4-LimitDynPLC
		dc.w LimitPLC_Spring-LimitDynPLC
		dc.w LimitPLC_Hang1-LimitDynPLC
		dc.w LimitPLC_Hang2-LimitDynPLC
		dc.w LimitPLC_Leap1-LimitDynPLC
		dc.w LimitPLC_Leap2-LimitDynPLC
		dc.w LimitPLC_Push1-LimitDynPLC
		dc.w LimitPLC_Push2-LimitDynPLC
		dc.w LimitPLC_Push3-LimitDynPLC
		dc.w LimitPLC_Push4-LimitDynPLC
		dc.w LimitPLC_Slide-LimitDynPLC
		dc.w LimitPLC_BblUnk-LimitDynPLC
		dc.w LimitPLC_Death1-LimitDynPLC
		dc.w LimitPLC_Drown-LimitDynPLC
		dc.w LimitPLC_Burnt-LimitDynPLC
		dc.w LimitPLC_Shrink1-LimitDynPLC
		dc.w LimitPLC_Shrink2-LimitDynPLC
		dc.w LimitPLC_Shrink3-LimitDynPLC
		dc.w LimitPLC_Shrink4-LimitDynPLC
		dc.w LimitPLC_Shrink5-LimitDynPLC
		dc.w LimitPLC_Float1-LimitDynPLC
		dc.w LimitPLC_Float3-LimitDynPLC
		dc.w LimitPLC_Injury1-LimitDynPLC
		dc.w LimitPLC_Bubble-LimitDynPLC
		dc.w LimitPLC_Injury2-LimitDynPLC
LimitPLC_Blank:	dc.b 0
LimitPLC_Stand:	dc.b 4,	$20, 0,	$70, 3,	$20, $B, $20, $E
LimitPLC_Wait1:	dc.b 3,	$50, $11, $50, $17, $20, $1D
LimitPLC_Wait2:	dc.b 3,	$50, $20, $50, $17, $20, $1D
LimitPLC_Wait3:	dc.b 3,	$50, $20, $50, $17, $20, $26
LimitPLC_LookUp:	dc.b 3,	$80, $29, $20, $B, $20,	$E
LimitPLC_Walk11:	dc.b 4,	$70, $32, $50, $3A, $50, $40, $10, $46
LimitPLC_Walk12:	dc.b 2,	$70, $32, $B0, $48
LimitPLC_Walk13:	dc.b 2,	$50, $54, $80, $5A
LimitPLC_Walk14:	dc.b 4,	$50, $54, $50, $63, $50, $69, $10, $6F
LimitPLC_Walk15:	dc.b 2,	$50, $54, $B0, $71
LimitPLC_Walk16:	dc.b 3,	$70, $32, $30, $7D, $50, $81
LimitPLC_Walk21:	dc.b 5,	$50, $87, $50, $8D, $20, $93, $50, $96,	0, $9C
LimitPLC_Walk22:	dc.b 6,	$50, $87, $10, $9D, $30, $9F, $50, $A3,	$30, $A9, 0, $AD
LimitPLC_Walk23:	dc.b 4,	$50, $AE, $10, $B4, $70, $B6, $20, $BE
LimitPLC_Walk24:	dc.b 5,	$50, $C1, $30, $C7, $70, $CB, $20, $D3,	$10, $D6
LimitPLC_Walk25:	dc.b 4,	$50, $C1, $10, $D8, $70, $DA, $20, $E2
LimitPLC_Walk26:	dc.b 5,	$50, $87, $10, $9D, 0, $93, $70, $E5, $20, $ED
LimitPLC_Walk31:	dc.b 4,	$70, $F0, $50, $F8, $10, $FE, $51, 0
LimitPLC_Walk32:	dc.b 2,	$70, $F0, $B1, 6
LimitPLC_Walk33:	dc.b 2,	$51, $12, $81, $18
LimitPLC_Walk34:	dc.b 4,	$51, $12, $51, $21, $11, $27, $51, $29
LimitPLC_Walk35:	dc.b 2,	$51, $12, $B1, $2F
LimitPLC_Walk36:	dc.b 3,	$70, $F0, 1, 6,	$81, $3B
LimitPLC_Walk41:	dc.b 6,	$51, $44, $11, $4A, $11, $4C, $81, $4E,	1, $57,	1, $58
LimitPLC_Walk42:	dc.b 6,	$51, $44, $21, $59, $11, $5C, $11, $5E,	$81, $60, 1, $57
LimitPLC_Walk43:	dc.b 4,	$51, $69, $11, $6F, $81, $71, $11, $7A
LimitPLC_Walk44:	dc.b 5,	$51, $7C, $21, $82, $11, $85, $71, $87,	$21, $8F
LimitPLC_Walk45:	dc.b 4,	$51, $7C, $11, $92, $81, $94, $11, $9D
LimitPLC_Walk46:	dc.b 5,	$51, $44, $81, $9F, $11, $5E, $11, $A8,	1, $57
LimitPLC_Run11:	dc.b 2,	$51, $AA, $B1, $B0
LimitPLC_Run12:	dc.b 2,	$50, $54, $B1, $BC
LimitPLC_Run13:	dc.b 2,	$51, $AA, $B1, $C8
LimitPLC_Run14:	dc.b 2,	$50, $54, $B1, $D4
LimitPLC_Run21:	dc.b 4,	$51, $E0, $11, $E6, $B1, $E8, 1, $F4
LimitPLC_Run22:	dc.b 3,	$51, $F5, $11, $FB, $B1, $FD
LimitPLC_Run23:	dc.b 4,	$51, $E0, $12, 9, $B2, $B, 1, $F4
LimitPLC_Run24:	dc.b 3,	$51, $F5, $11, $FB, $B2, $17
LimitPLC_Run31:	dc.b 2,	$52, $23, $B2, $29
LimitPLC_Run32:	dc.b 2,	$51, $12, $B2, $35
LimitPLC_Run33:	dc.b 2,	$52, $23, $B2, $41
LimitPLC_Run34:	dc.b 2,	$51, $12, $B2, $4D
LimitPLC_Run41:	dc.b 4,	$52, $59, $12, $5F, $B2, $61, 2, $6D
LimitPLC_Run42:	dc.b 2,	$72, $6E, $B2, $76
LimitPLC_Run43:	dc.b 4,	$52, $59, $12, $82, $B2, $84, 2, $6D
LimitPLC_Run44:	dc.b 2,	$72, $6E, $B2, $90
LimitPLC_Roll1:	dc.b 1,	$F2, $9C
LimitPLC_Roll2:	dc.b 1,	$F2, $AC
LimitPLC_Roll3:	dc.b 1,	$F2, $BC
LimitPLC_Roll4:	dc.b 1,	$F2, $CC
LimitPLC_Roll5:	dc.b 1,	$F2, $DC
LimitPLC_Warp1:	dc.b 2,	$B2, $EC, $22, $F8
LimitPLC_Warp2:	dc.b 1,	$F2, $FB
LimitPLC_Warp3:	dc.b 2,	$B3, $B, $23, $17
LimitPLC_Warp4:	dc.b 1,	$F3, $1A
LimitPLC_Stop1:	dc.b 2,	$53, $2A, $B3, $30
LimitPLC_Stop2:	dc.b 4,	$53, $3C, $73, $42, $13, $4A, 3, $4C
LimitPLC_Duck:	dc.b 4,	$13, $4D, $73, $4F, $23, $57, 3, $5A
LimitPLC_Balance1:dc.b 3,	$23, $5B, $23, $5E, $F3, $61
LimitPLC_Balance2:dc.b 3,	$B3, $71, $73, $7D, 0, $71
LimitPLC_Float1:	dc.b 3,	$73, $85, $33, $8D, $23, $91
LimitPLC_Float2:	dc.b 1,	$83, $94
LimitPLC_Float3:	dc.b 3,	$73, $9D, 3, $A5, $33, $A6
LimitPLC_Float4:	dc.b 3,	$73, $AA, $33, $B2, $23, $B6
LimitPLC_Spring:	dc.b 3,	$B3, $B9, $13, $C5, 3, $C7
LimitPLC_Hang1:	dc.b 4,	$B3, $C8, $33, $D4, 3, $D8, 3, $D9
LimitPLC_Hang2:	dc.b 4,	$B3, $DA, $33, $E6, 3, $EA, 3, $EB
LimitPLC_Leap1:	dc.b 5,	$83, $EC, $13, $F5, $53, $F7, $13, $FD,	3, $FF
LimitPLC_Leap2:	dc.b 5,	$84, 0,	$14, 9,	$53, $F7, $13, $FD, 3, $FF
LimitPLC_Push1:	dc.b 2,	$84, $B, $74, $14
LimitPLC_Push2:	dc.b 3,	$84, $1C, $24, $25, $14, $28
LimitPLC_Push3:	dc.b 2,	$84, $2A, $74, $33
LimitPLC_Push4:	dc.b 3,	$84, $1C, $24, $3B, $14, $3E
LimitPLC_Slide:	dc.b 2,	$54, $40, $B4, $46
LimitPLC_BblUnk:	dc.b 3,	$84, $52, $34, $5B, 4, $5F
LimitPLC_Death1:	dc.b 3,	$74, $60, $14, $68, $B4, $6A
LimitPLC_Drown:	dc.b 5,	$74, $76, $14, $7E, $54, $80, $34, $86,	4, $8A
LimitPLC_Burnt:	dc.b 5,	$74, $8B, $14, $7E, $54, $93, $34, $86,	4, $8A
LimitPLC_Shrink1:	dc.b 2,	$24, $99, $F4, $9C
LimitPLC_Shrink2:	dc.b 3,	$24, $AC, $B4, $AF, $24, $BB
LimitPLC_Shrink3:	dc.b 1,	$B4, $BE
LimitPLC_Shrink4:	dc.b 1,	$54, $CA
LimitPLC_Shrink5:	dc.b 1,	$14, $D0
LimitPLC_Injury1:	dc.b 3,	$B4, $D2, $14, $DE, $34, $E0
LimitPLC_Bubble:	dc.b 3,	$54, $E4, $B4, $EA, $10, $6D
LimitPLC_Injury2:	dc.b 2,	$F4, $F6, $25, 6
		even