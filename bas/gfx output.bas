Check 5DBACD49
Auto 8224

# Run-time Variables

Var n: Num = 55339
Var a: NumFOR = 22, 21, 1, 10, 2

# End Run-time Variables

   1 POKE 23675,0: POKE 23676,192
   5 LET n=49152+6144+1
  10 FOR a=1 TO 21
  11 POKE 23675,PEEK (n): LET n=n+1: POKE 23676,PEEK (n): LET n=n+1
  19 REM FOR i=1 TO 7
  20 PRINT "\a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u"
  21 REM NEXT i
  30 NEXT a
