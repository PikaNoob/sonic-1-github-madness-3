@echo off
echo Please restore the old code before building (especially the asm files) or you might break the disassembly
echo Press anything to continue
pause>nul
cls
echo Building...

asm68k /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /p /o ae- sonic1.asm, s1built.bin, s1built.sym, sonic1.lst
convsym sonic1.lst s1built.bin -input asm68k_lst -inopt "/localSign=@ /localJoin=. /ignoreMacroDefs+ /ignoreMacroExp- /addMacrosAsOpcodes+" -a
fixheadr.exe s1built.bin

pause