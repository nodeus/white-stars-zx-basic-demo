Check 7BF6988F
Auto 8224

# Run-time Variables

Var n: NumFOR = 66, 65, 1, 10, 2
Var a$: Str = "                                  Hello and we need to go deeper!"

# End Run-time Variables

   5 LET a$="                                  Hello and we need to go deeper!"
  10 FOR n=1 TO LEN a$
  20 LET a$=a$(2 TO )+a$(1)
  30 PRINT AT 21,0;a$(1 TO 31)
  40 PAUSE 1
  50 NEXT n
