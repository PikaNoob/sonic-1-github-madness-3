@echo off

echo skibidi brainrot toilet goofy soo goated 

echo hamburger

echo ninja low taper fade

echo bro got brainrot

echo what the sigma

pause 2 > nul


asm68k /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /p /o ae- sonic1.asm, s1built.bin, s1built.sym, sonic1.lst
convsym sonic1.lst s1built.bin -input asm68k_lst -inopt "/localSign=@ /localJoin=. /ignoreMacroDefs+ /ignoreMacroExp- /addMacrosAsOpcodes+" -a
fixheadr.exe s1built.bin

echo see ya

pause