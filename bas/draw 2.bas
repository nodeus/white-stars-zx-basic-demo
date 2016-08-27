Check 6588C877
Auto 8224

# Run-time Variables

Var x: Num = 1
Var dx: Num = 9.9231
Var yx: Num = 10.3343964
Var t: NumFOR = 11.4, 3.1415927, 0.1, 4, 2

# End Run-time Variables

   1 POKE 23692,255
   2 PRINT AT 21,0;""
   4 FOR t=0 TO PI STEP .1
   5 LET x=1: LET dx=10+(2*(-10*RND))
  10 PLOT 255/2-50*SIN (t),0
  20 LET yx=25*(RND)
  30 LET x=x+yx
  40 DRAW -dx,yx
  45 IF x<50 THEN GO TO 20
  48 PRINT ""
  49 NEXT t
  50 GO TO 5
