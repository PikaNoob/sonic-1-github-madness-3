; ---------------------------------------------------------------------------
; Body
; ---------------------------------------------------------------------------

bbush.Flag  = $30
bbush.orgX  = $32
bbush.orgY  = $34
bbush.Cntr  = $36
bbush.Timer = $38
bbush.MvChk = $39


QUAGTILE = $300

BbushObj_QuagmireBody:                          
        moveq   #0,d0
        move.b  obj.Action(a0),d0
        move.w  .Index(pc,d0.w),d1
        jmp     .Index(pc,d1.w)

; ---------------------------------------------------------------------------
.Index:                                
        dc.w QuagmireBody_Init-.Index
        dc.w QuagmireBody_Display-.Index
; ---------------------------------------------------------------------------

QuagmireBody_Init:                         
        addq.b  #2,obj.Action(a0)
        move.w  #168,obj.X(a0)
        move.w  #160,obj.Y(a0)
        move.l  #SprPat_Quagmire,obj.Map(a0)
        move.w  #QUAGTILE,obj.Tile(a0)
        move.b  #%00001000,obj.Render(a0)
        move.b  #7,obj.Priority(a0)
        move.b  #2,obj.Frame(a0)
        lea     membushHead,a1
        move.w  obj.X(a0),obj.X(a1)
        move.w  obj.Y(a0),obj.Y(a1)
        sub.w   #60,obj.Y(a1)
        sub.w   #8,obj.X(a1)    
        move.w  obj.X(a1),bbush.orgX(a1)
        move.w  obj.Y(a1),bbush.orgY(a1)
      

QuagmireBody_Display:                           
        jsr     _objectDraw  
        rts

; ---------------------------------------------------------------------------
; Head
; ---------------------------------------------------------------------------

BbushObj_QuagmireHead:                          
        moveq   #0,d0
        move.b  obj.Action(a0),d0
        move.w  .Index(pc,d0.w),d1
        jmp     .Index(pc,d1.w)

; ---------------------------------------------------------------------------
.Index:                                
        dc.w QuagmireHead_Init-.Index
        dc.w QuagmireHead_Display-.Index
        dc.w QuagmireHead_InitBck-.Index
        dc.w QuagmireHead_MoveBck-.Index
        dc.w QuagmireHead_WaitInit-.Index
        dc.w QuagmireHead_Wait-.Index
; ---------------------------------------------------------------------------

QuagmireHead_Init:                         
        addq.b  #2,obj.Action(a0)
        move.b  #18,obj.YRad(a0)
        move.b  #9,obj.XRad(a0)
        move.l  #SprPat_Quagmire,obj.Map(a0)
        move.w  #QUAGTILE,obj.Tile(a0)
        move.b  #%00001000,obj.Render(a0)
        move.b  #6,obj.Priority(a0)
        move.b  #1,obj.Frame(a0)

QuagmireHead_Display:  
        move.b  #3,(membushEyes+obj.Frame)
        move.w  bbush.orgX(a0),obj.X(a0)
        move.w  bbush.orgY(a0),obj.Y(a0)  
        move.w  obj.X(a0),(membushEyes+obj.X)
        move.w  obj.Y(a0),(membushEyes+obj.Y)
        sub.w   #22,(membushEyes+obj.Y)
        move.w  obj.X(a0),(membushMouth+obj.X)
        move.w  obj.Y(a0),(membushMouth+obj.Y)
        add.w   #10,(membushMouth+obj.Y)                   
        jsr     _objectDraw  
        rts

QuagmireHead_InitBck:
        move.b  #$9A,bbush.Cntr(a0)     ; set initial "phase" of sine
        move.b  #60,bbush.Timer(a0)  
        addq.b  #2,obj.Action(a0)   
        move.b  #4,(membushEyes+obj.Frame)
    
QuagmireHead_MoveBck:
        move.b  bbush.Cntr(a0),d0
        add.b   #8,bbush.Cntr(a0)
        jsr     CalcSinCos              ; note: d0 yshift div. needs to be 6 so adj.


        asr.w   #4,d0
        move.w  bbush.orgX(a0),d2
        sub.w   d0,d2
        move.w  d2,obj.X(a0)


        asr.w   #3,d0        
        move.w  bbush.orgY(a0),d3
        add.w   d0,d3
        move.w  d3,obj.Y(a0) 
        move.w  obj.X(a0),(membushEyes+obj.X)
        move.w  obj.Y(a0),(membushEyes+obj.Y)
        sub.w   #22,(membushEyes+obj.Y)
        move.w  obj.X(a0),(membushMouth+obj.X)
        move.w  obj.Y(a0),(membushMouth+obj.Y)
        add.w   #10,(membushMouth+obj.Y) 
        jsr     _objectDraw 
        sub.b   #1,bbush.Timer(a0) 
        beq.s   .Exit
        rts
.Exit:
        addq.b  #2,obj.Action(a0)
        rts  

QuagmireHead_WaitInit:  
        addq.b  #2,obj.Action(a0)     
        move.b  #30,bbush.Timer(a0) 

QuagmireHead_Wait:
        jsr     _objectDraw                    
        sub.b   #1,bbush.Timer(a0) 
        bne.s   .Exit
        st      bbush.Flag(a0)

.Exit:
        rts

; ---------------------------------------------------------------------------
; Eyes
; ---------------------------------------------------------------------------

BbushObj_QuagmireEyes:                          
        moveq   #0,d0
        move.b  obj.Action(a0),d0
        move.w  .Index(pc,d0.w),d1
        jmp     .Index(pc,d1.w)

; ---------------------------------------------------------------------------
.Index:                                
        dc.w QuagmireEyes_Init-.Index
        dc.w QuagmireEyes_Display-.Index
; ---------------------------------------------------------------------------

QuagmireEyes_Init:                         
        addq.b  #2,obj.Action(a0)
        move.l  #SprPat_Quagmire,obj.Map(a0)
        move.w  #QUAGTILE,obj.Tile(a0)
        move.b  #%00001000,obj.Render(a0)
        move.b  #5,obj.Priority(a0)
        move.b  #3,obj.Frame(a0)

QuagmireEyes_Display:                          
        jsr     _objectDraw  
        rts

; ---------------------------------------------------------------------------
; Mouth
; ---------------------------------------------------------------------------

BbushObj_QuagmireMouth:
        moveq   #0,d0
        move.b  obj.Action(a0),d0
        move.w  .Index(pc,d0.w),d1
        jmp     .Index(pc,d1.w)

; ---------------------------------------------------------------------------
.Index:                                
        dc.w QuagmireMouth_Init1-.Index
        dc.w QuagmireMouth_Speak1-.Index
        dc.w QuagmireMouth_Init2-.Index
        dc.w QuagmireMouth_Speak2-.Index
; ---------------------------------------------------------------------------

QuagmireMouth_Init1:                         
        addq.b  #2,obj.Action(a0)
        move.l  #SprPat_Quagmire,obj.Map(a0)
        move.w  #QUAGTILE,obj.Tile(a0)
        move.b  #%00001000,obj.Render(a0)
        move.b  #5,obj.Priority(a0)
        move.b  #8,obj.Frame(a0)

QuagmireMouth_Speak1:   
        lea     AniSpr_QuagmireMouth,a1
        bsr.w   _objectAnimate
        jsr     _objectDraw  
        rts

QuagmireMouth_Init2:   
        addq.b  #1,obj.Anim(a0)
        addq.b  #2,obj.Action(a0)
        add.b   #2,(membushHead+obj.Action)

QuagmireMouth_Speak2:
        lea     AniSpr_QuagmireMouth,a1
        bsr.w   _objectAnimate
        jsr     _objectDraw  
        rts        

; ---------------------------------------------------------------------------
AniSpr_QuagmireMouth:
.tbl
        dc.w quagvocal_imglennqua-.tbl
        dc.w quagvocal_beebush-.tbl

quagvocal_imglennqua: 

        ; playback speed delta (wait time)
        dc.b   4

        ; "...im glenn quagmire"
        dc.b   8, 8, 8, 8, 8, 6, 8, 7, 5, 6, 8, 5, 6, 7, 8, 6, 5

        ; "...and this is-"
        dc.b   8, 8, 8, 8, 8, 6, 7, 6, 7, 6, 7

        ; routine chg
        dc.b   $FC

        even

quagvocal_beebush:

        ; playback speed delta (wait time)
        dc.b   4

        ; "bee bush"
        dc.b   7, 8, 8, 6, 6, 8, 8, 5, 5, 7, 7, 8, 8, 8, 8

        ; loop 8 forever
        dc.b   $FE, 1
        even

; ---------------------------------------------------------------------------      
; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
; DEBUG DEBUG DEBUG DEBUG DEBUG DEBUG DEBUG DEBUG DEBUG DEBUG DEBUG DEBUG 
; ---------------------------------------------------------------------------  

BbushObj_Dbug:                          
        rts

SprPat_Quagmire:
        include "beebush/Objects/SPRPAT_QUAGMIRE.asm"