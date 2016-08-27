Check FA86A901
Auto 8224

# Run-time Variables

Var r: Num = 7
Var rx: Num = 0.8
Var ry: Num = 81.57
Var z: NumArray(32) = 53, 96, 81, 67, 89, 53, 73, 14, 93, 22, 100, -26, 81, -62, 28, -71, 2, -48, -13, 12, 73, 14, 32, 35, 0, 0, -16, 33, -17, 53, 0, 85
Var c: NumArray(32) = 70, 80, 90, 48, 95, 33, 73, 0, 93, 4, 90, -44, 65, -74, 14, -71, -7, -45, -9, 14, 73, 0, 39, 28, 0, 0, -8, 35, -5, 54, 18, 81
Var n: NumFOR = 33, 32, 1, 40, 2
Var l: NumFOR = 25, 24, 1, 65, 2
Var f: NumFOR = 31, 30, 2, 290, 3
Var l$: Str = ""

# End Run-time Variables

   5 POKE 23692,255
  10 DIM z(32): DIM c(32)
  20 LET r=1
  30 PAPER 0: INK 7: BORDER 0: CLS
  40 FOR n=1 TO 32
  50 READ z(n): LET z(n)=z(n)*10: LET c(n)=z(n)
  60 NEXT n
  64 RESTORE 115
  65 FOR l=1 TO 24
  66 POKE 23692,255: READ l$: PRINT BRIGHT 1;AT 21,16-(LEN l$)/2;l$: PRINT : PRINT
  70 GO SUB 120
  80 GO SUB 250
  90 GO SUB 190: GO SUB 290
 100 NEXT l
 105 STOP
 110 DATA -3,2,-2,3,-1,3,-0,2,0,3,2,3,3,2,3,0,2,-1,0,-1,0,2,-1,1,0,0,-1,-1,-2,-1,-3,0
 115 DATA "3D","IN BASIC","IS","REAL THING","BUT","SO BORING","LET'S","TRY","SOMETHING","FASTER","...","","","","","","","","","","","","","",""
 119 REM risuem
 120 INK r
 130 FOR f=1 TO 30 STEP 2
 140 PLOT OVER 1;128+INT (z(f)),88+INT ((z(f+1)))
 150 DRAW OVER 1;z(f+2)-z(f),z(f+3)-z(f+1)
 160 LET r=r+1: IF r>7 THEN LET r=1
 170 NEXT f
 180 RETURN
 189 REM poworot
 190 FOR f=1 TO 32 STEP 2
 200 LET rx=INT (z(f)*0.97)-(z(f+1)*0.20)
 210 LET ry=INT (z(f)*0.20)+(z(f+1)*0.97)
 220 LET z(f)=INT (rx*1.05): LET z(f+1)=INT (ry*1.05)
 230 NEXT f
 240 RETURN
 249 REM perebros massiva
 250 FOR f=1 TO 32
 260 REM READ z(f)
 270 LET c(f)=z(f)
 280 NEXT f: RETURN
 289 REM stiraem staroe
 290 INK r: FOR f=1 TO 30 STEP 2
 300 PLOT OVER 1;128+INT (c(f)),88+INT ((c(f+1)))
 310 DRAW OVER 1;c(f+2)-c(f),c(f+3)-c(f+1)
 320 LET r=r+1: IF r>7 THEN LET r=1
 330 NEXT f
 340 RETURN
