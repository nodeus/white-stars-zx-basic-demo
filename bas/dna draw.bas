Check A8203680
Auto 8224

# Run-time Variables

Var r: Num = 111
Var t: NumFOR = 2.6, 3.1415927, 0.2, 30, 2

# End Run-time Variables

   5 PAPER 0: INK 1: BORDER 0: CLS
  10 POKE 23692,255
  15 LET r=100
  20 PRINT AT 21,0;""
  30 FOR t=0 TO PI STEP .2
  40 PLOT 158-30*SIN (t),8
  50 DRAW INK 1+INT (0.02*PEEK r);75*COS (2*t),0
  55 PLOT 158-30*SIN (t),0
  56 DRAW INK 1;75*SIN (t*2),0
  57 POKE 23692,255
  60 PRINT ""
  65 PRINT ""
  66 LET r=r+1
  70 NEXT t
  80 GO TO 30
