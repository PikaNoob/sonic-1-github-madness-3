; ---------------------------------------------------------------------------
; Player object and dependent objects+routines
; ---------------------------------------------------------------------------    

bbplay.WindowSz        equ     $30
bbplay.WindowCnt       equ     $31
bbplay.Xorg            equ     $34
bbplay.Yorg            equ     $36

; ---------------------------------------------------------------------------
; Main player 
; ---------------------------------------------------------------------------      

BbushObj_Player:                          
        moveq   #0,d0
        move.b  obj.Action(a0),d0
        move.w  .Index(pc,d0.w),d1
        jmp     .Index(pc,d1.w)
; ---------------------------------------------------------------------------
.Index:                                
        dc.w BbushPlayer_InitMain-.Index
        dc.w BbushPlayer_Main-.Index
; ---------------------------------------------------------------------------

BbushPlayer_InitMain:                         
        addq.b  #2,obj.Action(a0)
        move.b  #18,obj.YRad(a0)
        move.b  #9,obj.XRad(a0)
        move.l  #SprPat_BBushPlayer,obj.Map(a0)
        move.w  #QUAGTILE,obj.Tile(a0)
        move.b  #0,obj.Render(a0)
        move.w  #160+42+128,obj.X(a0)
        move.w  #100+128,obj.YScr(a0)
        move.b  #2,obj.Priority(a0)
        move.b  #3,obj.Frame(a0)

; ---------------------------------------------------------------------------

BbushPlayer_Main:                           
        move.b  joypad.w,d4         ;SACBRLDU
        move.b  joypadPress.w,d5    
        bsr.w   _bbplayNormalCtrl 
        move.w  obj.X(a0),(membushBees+obj.X).w
        move.w  obj.YScr(a0),(membushBees+obj.YScr).w
        add.w   #6,(membushBees+obj.X).w
        add.w   #9,(membushBees+obj.YScr).w
        jmp     _objectDraw   

; ---------------------------------------------------------------------------
; Player control subroutine
; ---------------------------------------------------------------------------

_bbplayNormalCtrl:                                                 
        btst    #2,d4
        beq.s   .NoLeft
        addi.w  #1,cameraAPosX
        addi.w  #1,cameraCPosX
        subi.l  #1,distance
        lea     AniSpr_QuagmirePlayer,a1
        jmp    _objectAnimate
.NoLeft:                                             
        rts

AniSpr_QuagmirePlayer:
.tbl
        dc.w .qaugplaywalk-.tbl

.qaugplaywalk: 
        dc.b   8
        dc.b   1, 2, 3, 4, 5, 6, 7, $FF
        even 

; ---------------------------------------------------------------------------
; The actual swarm of bees on his Giggity giggity
; ---------------------------------------------------------------------------

BbushObj_Bees:                          
        moveq   #0,d0
        move.b  obj.Action(a0),d0
        move.w  .Index(pc,d0.w),d1
        jmp     .Index(pc,d1.w)
; ---------------------------------------------------------------------------
.Index:                                
        dc.w BbushBees_InitMain-.Index
        dc.w BbushBees_Main-.Index
; ---------------------------------------------------------------------------

BbushBees_InitMain:                         
        addq.b  #2,obj.Action(a0)
        move.b  #18,obj.YRad(a0)
        move.b  #9,obj.XRad(a0)
        move.l  #SprPat_BBushPlayer,obj.Map(a0)
        move.w  #QUAGTILE,obj.Tile(a0)
        move.b  #0,obj.Render(a0)
        move.b  #1,obj.Priority(a0)

; ---------------------------------------------------------------------------

BbushBees_Main:     
        lea     AniSpr_QuagmireBees,a1  
        jsr     _objectAnimate                    
        jmp     _objectDraw   

AniSpr_QuagmireBees:
.tbl
        dc.w .quagbeeswarm-.tbl

.quagbeeswarm: 
        dc.b   1
        dc.b   8, 9, $A, $B, 9, 8, $B, $FF
        even 

SprPat_BBushPlayer:
        include "beebush/Objects/SPRPAT_PLAYER.asm"