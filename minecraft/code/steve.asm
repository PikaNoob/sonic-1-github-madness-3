; Minecraft: Very Legacy Console Edition
; Steve

; Offsets into steveObjRam
	rsreset
xPos		rs.l	1
yPos		rs.l	1
xVel		rs.w	1
yVel		rs.w	1

state		rs.b	1
flags		rs.b	1
frame		rs.b	1
heldItemID	rs.b	1

cursorXPos	rs.w	1
cursorYPos	rs.w	1

; ===========================================================================
; ---------------------------------------------------------------------------
; Process Player Logic
; ---------------------------------------------------------------------------
MC_Steve:
		rts