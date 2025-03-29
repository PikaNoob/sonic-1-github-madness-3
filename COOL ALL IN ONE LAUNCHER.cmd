@echo off

set first=0
set version=v1.01

for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

if exist zARCHIVED BUILDS\thisdoesnothing.txt (set first=1) else goto:Menu
echo The first one to run was COOL ALL IN ONE LAUNCHER was %username%>thisdoesnothing.txt

set name=All in one launcher for github madness 3 by Anakama

title %name%

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
echo Thats what %name% is made for!
timeout 1 > NUL

:Menu
cls
pushd %~dp0
set "choice=-"
echo.
echo ============================================================
echo  %name%
echo ============================================================
echo.
echo  [ A ] Open sonic.asm
echo  [ B ] Build and start the game
echo  [ C ] See contrictubers or smth
echo  [ E ] open real pizza tower game
echo  [ D ] join official discord s official server
echo.
echo  [ / ] Settings
echo  [ - ] EXIT
echo.
set /p choice= Select: 
if %choice%==A goto:sonicasm
if %choice%==a goto:sonicasm
if %choice%==b goto:build
if %choice%==B goto:build
if %choice%==c goto:cont
if %choice%==C goto:cont
if %choice%==D goto:discord
if %choice%==d goto:discord
if %choice%==E goto:pizzatower
if %choice%==e goto:pizzatower
if %choice%==/ goto:setting
if %choice%==- goto:exit

:discord
start https://discord.gg/tDYpbpvmet
goto:Menu

:pizzatower
start /wait pizza-tower.exe
msg * Opened
:cont
start https://github.com/PikaNoob/sonic-1-github-madness-3/graphs/contributors
goto:Menu
msg * Opened

:sonicasm
echo Oh you wanna open sonic.asm
start sonic.asm
goto:Menu

:build
asm68k /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /p /o ae- sonic1.asm, s1built.bin, s1built.sym, sonic1.lst
convsym sonic1.lst s1built.bin -input asm68k_lst -inopt "/localSign=@ /localJoin=. /ignoreMacroDefs+ /ignoreMacroExp- /addMacrosAsOpcodes+" -a
fixheadr.exe s1built.bin
echo All right
start s1built.bin
msg * Select the emulator you want

:exit
echo cya

:setting
cls
pushd %~dp0
set "choice=-"
echo.
echo  [ 1 ] open repo page
echo  [ 2 ] delete current build
echo  [ 3 ] go back to menu
echo  [ 4 ] version info
echo.
set /p choice= Select: 
if %choice%==1 goto:repo
if %choice%==2 goto:delete
if %choice%==3 goto:Menu
if %choice%==4 goto:version

:version
cls
echo Version Info:
echo.
if "%first%" == "1" call :ColorText 2 "Running for the first time"
if "%first%" == "0" call :ColorText C "Not running for the first time"
echo.
call :ColorText 9 "%name% V%version%"
echo.
echo Press any button to exit...
echo.
pause>nul

:delete
del s1build.bin
echo You can always build again
goto:Menu

:repo
echo Alr
start https://github.com/PikaNoob/sonic-1-github-madness-3
goto:Menu

:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
