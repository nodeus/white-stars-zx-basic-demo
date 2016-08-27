Check 1606A2CE
Auto 8224

# Run-time Variables

Var r: Num = 3
Var rx: Num = 65
Var ry: Num = -17.10000001
Var z: NumArray(32) = 63, -55, 40, -69, 27, -71, 5, -56, 8, -68, -28, -64, -48, -44, -43, -9, -25, 4, 18, 4, 5, -56, 28, -32, 0, 0, 34, 4, 47, 0, 68, -18
Var c: NumArray(32) = 50, -64, 25, -72, 13, -71, -5, -53, -5, -65, -38, -54, -52, -31, -41, 1, -21, 10, 19, 1, -5, -53, 21, -35, 0, 0, 34, -2, 45, -9, 61, -30
Var n: NumFOR = 33, 32, 1, 40, 2
Var l: NumFOR = 16, 15, 1, 65, 2
Var f: NumFOR = 31, 30, 2, 290, 3
Var l$: Str = ""

# End Run-time Variables

 500 POKE 23692,255
 502 DIM z(32): DIM c(32)
 504 LET r=1
 506 PAPER 0: INK 7: BORDER 0: CLS : RESTORE 530
 508 FOR n=1 TO 32
 510 READ z(n): LET z(n)=z(n)*10: LET c(n)=z(n)
 512 NEXT n
 514 RESTORE 532
 516 FOR l=1 TO 15
 518 POKE 23692,255: READ l$: PRINT BRIGHT 1;AT 21,16-(LEN l$)/2;l$: PRINT : PRINT
 520 GO SUB 536
 522 GO SUB 566
 524 GO SUB 552: GO SUB 576
 526 NEXT l
 528 STOP
 530 DATA -3,2,-2,3,-1,3,-0,2,0,3,2,3,3,2,3,0,2,-1,0,-1,0,2,-1,1,0,0,-1,-1,-2,-1,-3,0
 532 DATA "3D","IN BASIC","IS","REAL THING","BUT","SO BORING","LET'S","TRY","SOMETHING","FASTER","...","","","","","","","","","","","","","",""
 534 REM risuem
 536 INK r
 538 FOR f=1 TO 30 STEP 2
 540 PLOT OVER 1;128+INT (z(f)),88+INT ((z(f+1)))
 542 DRAW OVER 1;z(f+2)-z(f),z(f+3)-z(f+1)
 544 LET r=r+1: IF r>7 THEN LET r=1
 546 NEXT f
 548 RETURN
 550 REM poworot
 552 FOR f=1 TO 32 STEP 2
 554 LET rx=INT (z(f)*0.97)-(z(f+1)*0.20)
 556 LET ry=INT (z(f)*0.20)+(z(f+1)*0.97)
 558 LET z(f)=INT (rx*1.05): LET z(f+1)=INT (ry*1.05)
 560 NEXT f
 562 RETURN
 564 REM perebros massiva
 566 FOR f=1 TO 32
 568 REM READ z(f)
 570 LET c(f)=z(f)
 572 NEXT f: RETURN
 574 REM stiraem staroe
 576 INK r: FOR f=1 TO 30 STEP 2
 578 PLOT OVER 1;128+INT (c(f)),88+INT ((c(f+1)))
 580 DRAW OVER 1;c(f+2)-c(f),c(f+3)-c(f+1)
 582 LET r=r+1: IF r>7 THEN LET r=1
 584 NEXT f
 586 RETURN
