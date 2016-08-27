Check 5F132486
Auto 8224

# Run-time Variables

Var r: Num = 3048
Var x: Num = 1
Var dx: Num = 3
Var yx: Num = 14
Var t: NumFOR = 31.7000003, 3.1415927, 0.1, 4, 2

# End Run-time Variables

   1 POKE 23692,255
   2 PRINT AT 21,0;""
   3 LET r=1000
   4 FOR t=0 TO PI STEP .1
   5 LET x=1: LET dx=5+(2*(-INT (0.02*PEEK r))): LET r=r+1
  10 PLOT 255/2-50*SIN (t),0
  20 LET yx=INT (0.1*PEEK r)
  30 LET x=x+yx: LET r=r+1
  40 DRAW -dx,yx
  45 IF x<50 THEN GO TO 20
  48 PRINT ""
  49 NEXT t
  50 GO TO 5
