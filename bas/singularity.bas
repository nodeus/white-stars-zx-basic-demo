Check 65DCB60F
Auto 8224

# Run-time Variables

Var a: Num = 0
Var r: Num = 1778
Var n: Num = 9
Var c: Num = 6
Var ty: Num = 5
Var x1: Num = 70
Var y1: Num = 0
Var x2: Num = 70
Var y2: Num = 0
Var f: NumFOR = 21, 20, 1, 390, 2
Var z: NumFOR = 10, 9, 1, 2000, 2
Var v: NumFOR = 0, 1, -1, 2005, 3
Var a$: Str = "C L A R I T Y"

# End Run-time Variables

  10 PAPER 0: INK 7: BORDER 0: CLS : PRINT AT 21,0;"": POKE 23692,255
  15 GO SUB 1020
  16 RESTORE 410
  20 LET r=1200
  21 LET ty=5: LET n=9: GO SUB 2000
  30 FOR f=1 TO 60
  50 PAUSE 2
  70 PRINT AT 21,1+INT (0.12*PEEK r);"\a"
  75 POKE 23692,255: LET r=r+1: PRINT : NEXT f
  80 PRINT
  90 FOR f=1 TO 40
  91 PAUSE 2
  92 PRINT AT 21,1+INT (0.12*PEEK r);"\c": LET r=r+1: PRINT AT 21,1+INT (0.12*PEEK r);"\b"
  93 PRINT : POKE 23692,255: LET r=r+1: NEXT f
 100 FOR f=1 TO 60
 110 PAUSE 2
 120 PRINT INK 1+INT (0.02*PEEK r);AT 21,1+INT (0.12*PEEK r);"\c": LET r=r+1: PRINT AT 21,1+INT (0.12*PEEK r);"\b"
 130 PRINT : POKE 23692,255: LET r=r+1: NEXT f
 140 LET x1=128: LET y1=0
 150 PLOT x1,y1
 160 LET c=1
 170 FOR f=0 TO 60
 180 POKE 23692,255
 190 LET x2=70+INT (PEEK r/2): LET r=r+1: LET y2=INT (0.5*PEEK r)
 200 DRAW INK c;x2-x1,y2-y1
 210 LET x1=x2: LET y1=y2
 220 LET c=c+1: IF c=8 THEN LET c=1
 230 PRINT AT 21,1+INT (0.12*PEEK r); INK 1+INT (0.02*PEEK r);"\c"
 240 LET r=r+1
 250 PRINT AT 21,1+INT (0.12*PEEK r);"\a"
 260 PRINT ""
 270 LET r=r+1
 280 NEXT f
 290 FOR f=1 TO 45
 300 PAUSE 2
 310 PRINT INK 1+INT (0.02*PEEK r);AT 21,1+INT (0.12*PEEK r);"\b": LET r=r+1: PRINT AT 21,1+INT (0.12*PEEK r);"\a"
 320 PRINT "": POKE 23692,255: LET r=r+1: NEXT f
 330 FOR f=1 TO 45
 340 PRINT AT 21,1+INT (0.12*PEEK r);"\a"
 350 LET r=r+1
 360 PRINT ""
 370 PAUSE 2
 380 POKE 23692,255: NEXT f
 390 FOR f=0 TO 20: PAUSE 2: PRINT "": NEXT f
 400 CLS : STOP
 410 DATA "you can't"
 420 DATA "control"
 430 DATA "the singularity"
 440 DATA "but able"
 450 DATA "to control"
 460 DATA ""
 470 DATA "YOUR"
 480 DATA ""
 490 DATA "C L A R I T Y"
1020 RESTORE 1021: FOR F=65368 TO 65391: READ A: POKE F,A: NEXT F
1030 DATA 0,0,8,28,8,0,0,0
1040 DATA 0,8,8,54,8,8,0,0
1050 DATA 8,8,28,119,28,8,8,0
1060 RETURN
2000 FOR z=1 TO n
2001 READ a$
2002 FOR f=1 TO 7
2003 PRINT AT z+ty,16-(LEN a$/2); INK f;a$: PAUSE 1: PRINT AT z+ty,16-(LEN a$/2); OVER 1; INK f;a$: PRINT AT z+ty,16-(LEN a$/2); OVER 0; INK f;a$
2004 PAUSE 2: NEXT f: NEXT z: PAUSE 50
2005 FOR f=7 TO 0 STEP -1: FOR v=9 TO 1 STEP -1: PRINT INK f; OVER 1;AT v+5,5;"                    ": NEXT v: NEXT f: CLS
2010 RETURN
