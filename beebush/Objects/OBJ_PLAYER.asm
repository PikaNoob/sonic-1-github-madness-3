       
bbplay.WindowSz        equ     $30
bbplay.WindowCnt       equ     $31
bbplay.Xorg            equ     $34
bbplay.Yorg            equ     $36

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
        move.w  #$9204,bbplay.WindowSz(a0)
        bra.s   BbushPlayer_Main

.strCams:
        dc.b    ' play camB camC camZ   dist                 ', -1
        even

; ---------------------------------------------------------------------------

BbushPlayer_Main:                           
        move.b  joypad.w,d4         ;SACBRLDU
        move.b  joypadPress.w,d5    
        bsr.w   _bbplayNormalCtrl 
        jmp     _objectDraw   

; ---------------------------------------------------------------------------
; Control window vertical location  (VDPREG $12)
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

_bbplayPrintCams:
        rts

; ---------------------------------------------------------------------------

SprPat_BBushPlayer:
        include "beebush/Objects/SPRPAT_PLAYER.asm"