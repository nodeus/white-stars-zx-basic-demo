Check 841BD29E
Auto 8224

# Run-time Variables

Var i: Num = 5
Var cx: Num = 128
Var cy: Num = 88
Var dx: Num = 78
Var dy: Num = 78
Var f: NumFOR = 0, 80, 5, 90, 2

# End Run-time Variables

   1 BORDER 0: PAPER 0: INK 7: CLS
   5 LET cx=128: LET cy=88: LET dx=64: LET dy=64
  80 LET i=1+INT (RND*6)
  90 FOR f=0 TO 80 STEP 4+INT (4*RND)
  91 LET i=1+INT (RND*6)
  95 LET dx=f: LET dy=f
  96 OVER 1*RND
 100 PLOT INK i;cx+dx,cy+dy
 110 DRAW INK i;-2*dx,0
 120 PLOT INK i;cx-dx,cy+dy
 130 DRAW INK i;0,-2*dy
 140 PLOT INK i;cx-dx,cy-dy
 150 DRAW INK i;2*dx,0
 160 PLOT INK i;cx+dx,cy-dy
 170 DRAW INK i;0,2*dy
 200 NEXT f
 220 IF cx>128 THEN LET cx=cx-dx
 230 IF cx<88 THEN LET cx=cx+dx
 240 IF cy>88 THEN LET cy=cy-dy
 250 IF cy<88 THEN LET cy=cy+dy
1000 GO TO 80
