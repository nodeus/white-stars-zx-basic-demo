Check 7F60F4DD
Auto 8224

# Run-time Variables

Var cx: Num = 128
Var cy: Num = 8
Var f: NumFOR = 6, 50, 4, 40, 2

# End Run-time Variables

   1 BORDER 0: PAPER 0: INK 7: CLS
   2 POKE 23692,255: PRINT AT 21,0;""
  10 LET cx=128
  20 LET cy=8
  30 PLOT cx,cy
  40 FOR f=-50 TO 50 STEP 4
  50 PLOT cx,cy
  60 DRAW f,0: PLOT cx,cy
  70 DRAW -f,0
  90 PRINT : PRINT : PRINT
 100 NEXT f
 105 GO TO 2
