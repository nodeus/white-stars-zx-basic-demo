@echo off
_bin\sjasmplus --nofakes --exp=player.lst player.asm 
del /q player.zx7
_bin\zx7 player.bin player.zx7 >nul

_bin\sjasmplus --nofakes loader_tap.asm
_bin\bin2tap -b loader_tap.bin out.tap "W-STARS" 0 >nul