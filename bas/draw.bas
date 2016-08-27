Check 32E3C224
Auto 8224

# Run-time Variables

Var x: Num = 27.7711639
Var dx: Num = 1.325073
Var yx: Num = 5.7206726

# End Run-time Variables

   5 LET x=1: LET dx=10+(2*(-10*RND))
  10 PLOT 255/2,88
  20 LET yx=15*(RND)
  30 LET x=x+yx
  40 DRAW -dx,yx
  45 IF x<50 THEN GO TO 20
  50 GO TO 5
