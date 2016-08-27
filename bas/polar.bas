Check D83C4E30
Auto 8224

# Run-time Variables

Var r: Num = 10
Var s: Num = 0.9
Var x: Num = 20
Var y: Num = 16
Var t: NumFOR = 0, 6.283185, 0.9, 20, 2

# End Run-time Variables

  10 LET r=10: LET s=.1
  15 LET s=s+.1
  20 FOR t=0 TO 2*PI STEP s
  25 REM LET r=10
  30 LET x=10+r*COS (t)
  40 LET y=16+r*SIN (t)
  50 PRINT AT 21,x;"********"
  55 PRINT
  60 NEXT t
  70 GO TO 15
