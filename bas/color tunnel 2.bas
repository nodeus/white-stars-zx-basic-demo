Check 439EF2AE
Auto 8224

# Run-time Variables

Var r: Num = 1138
Var i: Num = 3
Var cx: Num = 88
Var cy: Num = 88
Var dx: Num = 32
Var dy: Num = 32
Var f: NumFOR = 36, 60, 4, 90, 2

# End Run-time Variables

   1 BORDER 0: PAPER 0: INK 7: CLS
   2 POKE 23692,255: PRINT AT 21,0;""
   3 LET r=1000
   5 LET cx=78+INT (0.4*PEEK r): LET cy=88: LET dx=64: LET dy=64
   6 LET r=r+1
  80 LET i=1+INT (0.02*PEEK r)
  81 LET r=r+1: LET cx=78+INT (0.4*PEEK r): LET cy=88: LET dx=64: LET dy=64: LET r=r+1
  90 FOR f=0 TO 60 STEP 4
  91 LET r=r+1: LET i=1+INT (0.02*PEEK r)
  95 LET dx=f: LET dy=f
 100 PLOT INK i;cx+dx,cy+dy
 110 DRAW INK i;-2*dx,0
 120 PLOT INK i;cx-dx,cy+dy
 130 DRAW INK i;0,-2*dy
 140 PLOT INK i;cx-dx,cy-dy
 150 DRAW INK i;2*dx,0
 160 PLOT INK i;cx+dx,cy-dy
 170 DRAW INK i;0,2*dy
 175 PRINT "": POKE 23692,255
 200 NEXT f
 220 IF cx>128 THEN LET cx=cx-dx
 230 IF cx<88 THEN LET cx=cx+dx
 240 IF cy>88 THEN LET cy=cy-dy
 250 IF cy<88 THEN LET cy=cy+dy
1000 GO TO 80
