Check EAD1AEE4
Auto 8224

# Run-time Variables

Var c: Num = 2
Var l: Num = 16
Var x: Num = 8
Var dx: Num = 16
Var f: NumFOR = 70, 67, 4, 175, 3
Var a: NumFOR = 37, 36, 1, 20, 2
Var a$: Str = " F O R E V E R !"

# End Run-time Variables

 418 PAPER 0: INK 0: BRIGHT 0: BORDER 0: CLS
 420 FOR f=30 TO 67 STEP 4: PLOT 50+f/2,f: DRAW 158-f,0: PLOT 50+f/2,170-f: DRAW 158-f,0: NEXT f
 422 PAPER 0: BORDER 0: BRIGHT 1: OVER 1: LET c=6:
 424 LET dx=16
 426 FOR a=1 TO 36
 428 READ a$
 430 LET l=LEN a$: LET x=INT ((32-l)/2)
 432 FOR f=0 TO 8: PRINT BRIGHT 1; OVER 1; INK f; PAPER 0;AT 11,x;a$: NEXT f
 434 FOR f=67 TO 30 STEP -4
 436 INK c: PAPER c: OVER 1: BRIGHT 1
 438 PLOT x*8+0-dx,f
 440 DRAW l*8+3+dx+dx,0
 442 PLOT x*8+0-dx,170-f
 444 DRAW l*8+3+dx+dx,0
 446 LET c=c+1: IF c>7 THEN LET c=1
 448 LET dx=dx-2
 450 NEXT f
 452 LET dx=16
 454 PAUSE (30-(LEN a$))/3
 456 FOR f=6 TO 0 STEP -1
 458 PRINT OVER 1; PAPER 0; INK f;AT 11,x;a$;" "
 460 NEXT f
 462 NEXT a
 464 INK 0: FOR f=30 TO 67 STEP 4: PLOT 50,f: DRAW 158,0: PLOT 50,170-f: DRAW 158,0: NEXT f: INK 7: CLS
7000 STOP
8110 DATA " BASIC GENERALISSIMO"," DIVER"," AND BASIC MAJOR"," ROLLERBOB"," AND BASIC PRINCESS "," NATASHA ZOTOVA "
8111 DATA "   and all  "," zx spectrum"," cool dudes:","  TREFI ","  INTROSPEC "," SQ "," LUCHIBOBRA "," PSNDCJ "
8112 DATA " N1K-O"," HACKER VBI ","  BOLEG ","  KOWALSKI  ","  PHEEL ","  MMA "," RANDOM "," NYUK "," BRIGHTENTYLE "," PROF "," RISKEJ "," TMK"," ROBUS"," DMAN "," BFOX "," OISEE","   MMCM   "
8113 DATA " and all","who keep","speccy scene","ALIVE!"," F O R E V E R !"
