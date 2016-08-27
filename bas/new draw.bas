Check 82918096
Auto 8224

# Run-time Variables

Var s: Num = -1
Var l: Num = 45
Var n: Num = -5
Var cx: Num = 211
Var cy: Num = 88

# End Run-time Variables

   1 BORDER 0: PAPER 0: INK 7: CLS
   2 POKE 23692,255: PRINT AT 21,0;""
   3 LET cx=128: LET cy=88: LET s=1: LET l=15: LET n=5
   5 LET cx=cx+s
  10 PLOT cx,cy
  20 DRAW l,0: DRAW 0,l: DRAW -l,0: DRAW 0,-l
  30 LET cx=cx+s
  40 IF cx+l+n>255 THEN LET s=-s
  42 IF cx<0 THEN LET s=+s
  43 LET l=l+n
  44 IF l>40 THEN LET n=-n
  45 IF l<1 THEN LET n=ABS (n)
  49 PRINT
  50 GO TO 5
