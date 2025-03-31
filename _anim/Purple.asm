; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
@index:
		dc.w @Walk-@index
		dc.w @Run-@index
		dc.w @Roll-@index
		dc.w @Roll2-@index
		dc.w @Push-@index
		dc.w @Wait-@index
		dc.w @Balance-@index
		dc.w @LookUp-@index
		dc.w @Duck-@index
		dc.w @Warp1-@index
		dc.w @Warp2-@index
		dc.w @Warp3-@index
		dc.w @Warp4-@index
		dc.w @Stop-@index
		dc.w @Float1-@index
		dc.w @Float2-@index
		dc.w @Spring-@index
		dc.w @LZHang-@index
		dc.w @Leap1-@index
		dc.w @Leap2-@index
		dc.w @Surf-@index
		dc.w @Bubble-@index
		dc.w @Death1-@index
		dc.w @Drown-@index
		dc.w @Death2-@index
		dc.w @Shrink-@index
		dc.w @Hurt-@index
		dc.w @LZSlide-@index
		dc.w @Blank-@index
		dc.w @Float3-@index
		dc.w @Float4-@index
@Roll:		dc.b $FE, $2E, $2F, $30, $31, $32, $FF,	$FF
@Roll2:		dc.b $FE, $2E, $2F, $32, $30, $31, $32,	$FF
@Wait:		dc.b $17, 1, 1,	1, 1, 1, 1, 1, 1, 1, 1,	1, 1, 3, 2, 2, 2, 3, 4, $FE, 2, 0
@Duck:		dc.b $3F, $39, $FF, 0
@Warp1:		dc.b $3F, $33, $FF, 0
@Warp2:		dc.b $3F, $34, $FF, 0
@Warp3:		dc.b $3F, $35, $FF, 0
@Warp4:		dc.b $3F, $36, $FF, 0
@Float1:	dc.b 7,	$3C, $3F, $FF
@Float2:	dc.b 7,	$3C, $3D, $53, $3E, $54, $FF, 0
@Spring:	dc.b $2F, $01, $FD, 0
@LZHang:	dc.b 4,	$41, $42, $FF
@Leap1:		dc.b $F, $43, $43, $43,	$FE, 1
@Leap2:		dc.b $F, $43, $44, $FE,	1, 0
@Surf:		dc.b $3F, $49, $FF, 0
@Bubble:	dc.b $B, $56, $56, $A, $B, $FD,	0, 0
@Death1:	dc.b $20, $4B, $FF, 0
@Drown:		dc.b $2F, $4C, $FF, 0
@Death2:	dc.b 3,	$4D, $FF, 0
@Shrink:	dc.b 3,	$4E, $4F, $50, $51, $52, 0, $FE, 1, 0
@Hurt:		dc.b 3,	$58, $FF, 0
@LZSlide:	dc.b 7, $55, $57, $FF
@Blank:		dc.b $77, 0, $FD, 0
@Float3:	dc.b 3,	$3C, $3D, $53, $3E, $54, $FF, 0
@Float4:	dc.b 3,	$3C, $FD, 0

@Walk:		dc.b $FF, 6, 7, 8, 9, $A, $B, $FF
@Run:		dc.b $FF, $1E, $1F, $20, $21, $FF, $FF, $FF
@Push:		dc.b $FD, $45, $46, $47, $48, $FF, $FF, $FF
@Stop:		;dc.b 7, $37, $38, $FF
@LookUp:	;dc.b $3F, 5, $FF, 0
@Balance:	;dc.b $1E, $3A, $3B, $FF
@Still:		dc.b 3, 1, $FF		; use standing frame
		even