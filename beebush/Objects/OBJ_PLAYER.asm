; ---------------------------------------------------------------------------
; Player object and dependent objects+routines
; ---------------------------------------------------------------------------    

bbplay.MvFlag          equ     $30

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
        move.b  #1,bbplay.MvFlag(a0)
        addi.w  #1,cameraAPosX
        addi.w  #1,cameraCPosX
        subi.l  #1,distance
        lea     AniSpr_QuagmirePlayer,a1
        jmp    _objectAnimate
.NoLeft:    
	clr.b   bbplay.MvFlag(a0)                                         
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

; ---------------------------------------------------------------------------
; The Hive which spawns based on distance (or should, i guess)
; ---------------------------------------------------------------------------

BbushObj_Hive:                          
        moveq   #0,d0
        move.b  obj.Action(a0),d0
        move.w  .Index(pc,d0.w),d1
        jmp     .Index(pc,d1.w)
; ---------------------------------------------------------------------------
.Index:                                
        dc.w BbushHive_InitMain-.Index
        dc.w BbushHive_Wait-.Index
        dc.w BbushHive_Show-.Index
; ---------------------------------------------------------------------------

BbushHive_InitMain:                         
        addq.b  #2,obj.Action(a0)
        move.b  #18,obj.YRad(a0)
        move.b  #9,obj.XRad(a0)
        move.l  #SprPat_BBushPlayer,obj.Map(a0)
        move.w  #QUAGTILE,obj.Tile(a0)
        move.b  #$0,obj.Render(a0)
        move.b  #1,obj.Priority(a0)
        move.b  #$C,obj.Frame(a0)

; ---------------------------------------------------------------------------
BbushHive_Wait:
        cmpi.l  #200,distance.w 
        beq.s   .Show
        rts
.Show 
        addq.b  #2,obj.Action(a0)
        move.w  #88,obj.X(a0)     
        move.w  #260,obj.YScr(a0)     

BbushHive_Show:            
	tst.b   (membushPlayer+$30).w  
	beq.s   .NoMv  
	add.w   #1,obj.X(a0)       
.NoMv:
        jmp     _objectDraw   
        rts