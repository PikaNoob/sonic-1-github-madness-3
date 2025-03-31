; ---------------------------------------------------------------------------
; Bee Bush Screen objects library
; Depends on Stock Sonic 1 object library and sprite renderer
; ---------------------------------------------------------------------------

OBJ.GRAVITY    EQU     56              ; Gravity delta

                    rsreset
obj.No:             rs.b 1                  
obj.Render:         rs.b 1                  
obj.Tile:           rs.b 2                  
obj.Map:            rs.b 4                  
obj.X:              rs.b 2                  
obj.YScr:           rs.b 2                  
obj.Y:              rs.b 2                  
obj.YSub:           rs.b 2                  
obj.XSpeed:         rs.b 2                  
obj.YSpeed:         rs.b 2                  
obj.Momentum:       rs.b 2                  
obj.YRad:           rs.b 1                  
obj.XRad:           rs.b 1                  
obj.XDraw:          rs.b 1                  
obj.Priority:       rs.b 1                  
obj.Frame:          rs.b 1                  
obj.AnimFrame:      rs.b 1                  
obj.Anim:           rs.b 1                  
obj.LastAnim:       rs.b 1                  
obj.FrameTimer:     rs.b 1                  
obj.FrameMirr:      rs.b 1                  
obj.Collision:      rs.b 1                  
obj.ColliCnt:       rs.b 1                  
obj.Status:         rs.b 1                  
obj.Respawn:        rs.b 1                  
obj.Action:         rs.b 1                  
obj.SubAction:      rs.b 1                  
obj.Angle:          rs.b 2                  
obj.Arg:            rs.b 1                   

; --------------------------------------------------------------------------- 

STAT.XDIR:       equ 0
STAT.YDIR:       equ 1                  
STAT.HOISTING:   equ 3                  
STAT.PUSHED:     equ 5                  
STAT.FLAG:       equ 7

; ---------------------------------------------------------------------------

PHYS.DIR:        equ 0                  
PHYS.AIRBORNE:   equ 1                  
PHYS.ROLLING:    equ 2                  
PHYS.HOISTED:    equ 3                  
PHYS.ROLLJUMP:   equ 4                  
PHYS.PUSH:       equ 5                  
PHYS.WATER:      equ 6
PHYS.FLAG:       equ 7

; ---------------------------------------------------------------------------

REND.XMIRR:      equ 0
REND.YMIRR:      equ 1
REND.CAMOFF:     equ 2
REND.CAMOFF2:    equ 3
REND.HEIGHT:     equ 4
REND.SPTYPE:     equ 5
REND.BEHIND:     equ 6                  
REND.ONSCREEN:   equ 7

; ---------------------------------------------------------------------------

_beebushRunObjects:                             
        lea     OBJECTRAM.w,a0
        moveq   #8-1,d7
        moveq   #0,d0

.RunObjLoop:                       
        move.b  obj.No(a0),d0
        beq.s   .EmptySlot
        add.w   d0,d0
        add.w   d0,d0
        movea.l .ObjectIndex-4(pc,d0.w),a1       ; No zero offset - start at 1
        jsr     (a1)
        moveq   #0,d0

.EmptySlot:                            
        lea     OBJSZ(a0),a0            ; Move into next object memory space
        dbf     d7,.RunObjLoop
        rts

; ---------------------------------------------------------------------------
; Object Index for Bee Bush
; ---------------------------------------------------------------------------

BBUSH_OBJNO_PLAYER      = 1
BBUSH_OBJNO_BODY        = 2
BBUSH_OBJNO_HEAD        = 3
BBUSH_OBJNO_EYES        = 4
BBUSH_OBJNO_MOUTH       = 5
BBUSH_OBJNO_BEES        = 6
BBUSH_OBJNO_HIVE        = 7
BBUSH_OBJNO_PETER       = 8

.ObjectIndex:    
        dc.l BbushObj_Player
        dc.l BbushObj_QuagmireBody
        dc.l BbushObj_QuagmireHead
        dc.l BbushObj_QuagmireEyes
        dc.l BbushObj_QuagmireMouth
        dc.l BbushObj_Bees
        dc.l BbushObj_Hive
        dc.l BbushObj_Hive
.Null:
        rts 

        include  "beebush/Objects/OBJ_QUAGMIRE.asm"
        include  "beebush/Objects/OBJ_PLAYER.asm"

; ---------------------------------------------------------------------------
; Slow object fall
; ---------------------------------------------------------------------------

_objectFallSlow:                            
        move.l  obj.X(a0),d2
        move.l  obj.Y(a0),d3
        move.w  obj.XSpeed(a0),d0
        ext.l   d0
        asl.l   #8,d0
        add.l   d0,d2
        move.w  obj.YSpeed(a0),d0
        addi.w  #10,d0
        move.w  d0,obj.YSpeed(a0)
        ext.l   d0
        asl.l   #8,d0
        add.l   d0,d3
        move.l  d2,obj.X(a0)
        move.l  d3,obj.Y(a0)
        rts

; ---------------------------------------------------------------------------
; Animate an object based on an animation script
; !!!TODO: document script
; ---------------------------------------------------------------------------

_objectAnimate:                         
        moveq   #0,d0
        move.b  obj.Anim(a0),d0
        cmp.b   obj.LastAnim(a0),d0
        beq.s   .DoAnim
        move.b  d0,obj.LastAnim(a0)
        move.b  #0,obj.AnimFrame(a0)
        move.b  #0,obj.FrameTimer(a0)

.DoAnim:                               
        add.w   d0,d0
        adda.w  (a1,d0.w),a1
        subq.b  #1,obj.FrameTimer(a0)
        bpl.s   .Exit
        move.b  (a1),obj.FrameTimer(a0)
        moveq   #0,d1
        move.b  obj.AnimFrame(a0),d1
        move.b  1(a1,d1.w),d0
        bmi.s   .HandleFlags

.Finish:                               
        move.b  d0,d1
        andi.b  #$1F,d0
        move.b  d0,obj.Frame(a0)
        move.b  obj.Status(a0),d0
        andi.b  #3,d0
        andi.b  #$FC,obj.Render(a0)
        lsr.b   #5,d1
        eor.b   d0,d1
        or.b    d1,obj.Render(a0)
        addq.b  #1,obj.AnimFrame(a0)

.Exit:                                 
        rts

.HandleFlags:                          
        addq.b  #1,d0
        bne.s   .NotLoop
        move.b  #0,obj.AnimFrame(a0)
        move.b  1(a1),d0
        bra.s   .Finish

.NotLoop:                              
        addq.b  #1,d0
        bne.s   .NotBack
        move.b  2(a1,d1.w),d0
        sub.b   d0,obj.AnimFrame(a0)
        sub.b   d0,d1
        move.b  1(a1,d1.w),d0
        bra.s   .Finish

.NotBack:                              
        addq.b  #1,d0
        bne.s   .NotChgAni
        move.b  2(a1,d1.w),obj.Anim(a0)

.NotChgAni:                            
        addq.b  #1,d0
        bne.s   .NotRoutine
        addq.b  #2,obj.Action(a0)

.NotRoutine:                           
        addq.b  #1,d0
        bne.s   .NotReset
        move.b  #0,obj.AnimFrame(a0)
        clr.b   obj.SubAction(a0)

.NotReset:                             
        rts