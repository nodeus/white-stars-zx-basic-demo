Check 9337F0B9
Auto 8224

# Run-time Variables

Var y: Num = 19
Var x: Num = 29
Var t: Num = 0
Var chars: Num = 15360
Var ca: Num = 16296
Var sa: Num = 22684
Var a: NumFOR = 26, 25, 1, 260, 2
Var b: NumFOR = 3, 2, 1, 320, 2
Var c: NumFOR = 5, 4, 1, 370, 2
Var p$: Str = "Sample Double Height Text"

# End Run-time Variables

 100 PAUSE 1: BRIGHT 1: BORDER 1: PAPER 1: INK 7: CLS
 220 LET p$="Sample Double Height Text"
 230 LET y=19: LET x=4: LET CHARS=PEEK 23606+256*PEEK 23607
 250 REM Loop for each character
 260 FOR a=1 TO LEN (p$)
 270 LET T= CODE p$(a)
 280 IF T=32 THEN GO TO 480
 290 LET ca=CHARS+T*8
 310 REM Loop for top & bottom
 320 FOR b=1 TO 2
 340 PRINT AT y,x;: LET sa=PEEK 23684+256*PEEK 23685
 360 REM Loop for 4 bytes
 370 FOR c=1 TO 4
 380 LET T=PEEK ca
 390 IF T=0 THEN LET sa=sa+512: GO TO 410
 400 POKE sa,T: LET sa=sa+256: POKE sa,T: LET sa=sa+256
 410 LET ca=ca+1
 420 NEXT c
 440 LET y=y+1
 450 NEXT b
 470 LET y=y-2
 480 LET x=x+1
 490 NEXT a
 510 STOP
