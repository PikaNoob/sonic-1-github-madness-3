:: made by anakama

@echo off

title Anakama is so cool launcher 2025 pro extreme max edition

echo Sup brother
timeout 1 > NUL
echo You got headache browsing the dissassembly?
timeout 1 > NUL
echo Yeah the code is fucking hell.
timeout 1 > NUL
echo Don't worry, I am here to help you
timeout 1 > NUL
echo I mean if you call it a help
timeout 1 > NUL
echo Now don't close
timeout 1 > NUL
echo You just wanna rest right?
timeout 1 > NUL
echo Or maybe edit some sonic.asm idk
timeout 1 > NUL
echo I am pro batch guy
timeout 1 > NUL

:Menu
cls
pushd %~dp0
set "choice=-"
echo.
echo ============================================================
echo  Select
echo ============================================================
echo.
echo  [ 1 ] Open sonic.asm
echo  [ 2 ] Build and start the game
echo  [ 3 ] See contrictubers or smth
echo  [ 4 ] join official discord s official server

echo.
echo  [ / ] Settings
echo  [ - ] EXIT
echo.
set /p choice= Game: 
goto:Menu
if %choice%==1 goto:sonicasm
if %choice%==2 goto:build
if %choice%==3 goto:cont
if %choice%==4 goto:diiscord
if %choice%==/ goto:setting
if %choice%==- goto:exit

:diiscord
title discord ahh opening w anakama
start https://discord.gg/tDYpbpvmet
msg * alr bbg
goto:Menu

:cont
start https://github.com/PikaNoob/sonic-1-github-madness-3/graphs/contributors
msg * ok bbg
goto:Menu
msg * btw anakama is most cool guy

:sonicasm
title sonic.asm so cool just like anakama number 1 and %random%
echo Oh you wanna open sonic.asm
start sonic.asm
goto:Menu

:build
start /wait normalbuild.bat
echo All right
start s1built.bin
msg * Just select your emulator bbg

:exit
echo Alr mf I am going
echo cya

:setting
title anakama settigns so cool
echo We don't have such settigns bbg
echo But uhh
echo you can see the repo ig?
echo cus I hate setting some variables
echo %random%
pushd %~dp0
set "choice=-"
echo.
echo.
echo  [ 1 ] open repo page
echo  [ 2 ] delete current Build
echo  [ 3 ] go back to menu

echo.
echo.
set /p choice= Game: 
goto:Menu
if %choice%==1 goto:repo
if %choice%==2 goto:deleteHAHAHA
if %choice%==3 goto:Menu

:deleteHAHAHA
echo ur so evil bbg
del s1build.bin
echo alr just build again ig why this option even exist its ass
goto:Menu

:repo
echo Alr
start https://github.com/PikaNoob/sonic-1-github-madness-3
msg * here bgg
goto:Menu