Check FF94DCBB
Auto 8224

# Run-time Variables

Var r: Num = 1210
Var c: Num = 1
Var x: Num = 241
Var g: NumFOR = 22, 21, 1, 34, 2
Var f: NumFOR = 23, 22, 1, 100, 2
Var a$: Str = ""

# End Run-time Variables

  10 PAPER 0: INK 7: BORDER 0: CLS : PRINT AT 20,0
  20 LET r=1000
  30 LET c=1
  34 FOR g=1 TO 21
  35 FOR f=0 TO 4
  36 POKE 23692,255
  40 LET x=INT (PEEK r)
  55 PLOT INK 2+INT (0.02*PEEK r);x,0: LET r=r+1
  56 IF x>75 AND x<150 THEN PLOT INK c;x+1,0: PLOT INK c;x+1,1: PLOT INK c;x,1: PLOT INK c;(PEEK r),0
  70 LET c=c+1: IF c=8 THEN LET c=1
  76 PRINT
  77 LET r=r+1
  80 NEXT f
  81 READ a$
  83 PRINT AT 21,16-((LEN A$)/2); INK 7; BRIGHT 1;a$
  90 NEXT g
 100 FOR f=0 TO 22: PAUSE 1: PRINT : NEXT f
 200 DATA "If you became a STAR"
 203 DATA "You will not die"
 205 DATA ""
 210 DATA ""
 215 DATA "But your light"
 220 DATA "Can't burn forever"
 222 DATA ""
 225 DATA ""
 230 DATA "And maybe you"
 240 DATA "Can find the strenght"
 245 DATA ""
 250 DATA ""
 255 DATA "To become a..."
 260 DATA ""
 265 DATA ""
 270 DATA "SUPERNOVA"
 271 DATA ""
 272 DATA ""
 273 DATA ""
 274 DATA ""
 280 DATA ""
