Check 8DB3DCB3
Auto 8224

# Run-time Variables

Var h: Num = -1
Var z: Num = 7
Var b: Num = 104
Var r: Num = 3
Var a: Num = 0
Var f: NumFOR = 2, 12, 1, 90, 2
Var s: NumFOR = 2, 6, 1, 60, 2
Var a$: Str = "      \a\a\a   "

# End Run-time Variables

  10 PAPER 1: INK 7: BORDER 1: CLS : LET h=1: LET z=0: LET b=88: LET r=2: POKE 23675,b
  15 FOR f=1 TO 7: PRINT INK f;AT 10,5;"get ready to hop around"'""'"       like a Rubik's cube": PAUSE 3: NEXT f
  20 GO SUB 900
  24 FOR f=7 TO 1 STEP -1: PRINT INK f;AT 10,5;"get ready to hop around"'""'"       like a Rubik's cube": PAUSE 3: NEXT f
  30 RESTORE 180
  35 CLS
  60 FOR s=1 TO 6
  65 PRINT AT 0,1; INK r;"\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b"
  66 PRINT AT 21,1; INK r;"\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b"
  70 POKE 23675,b: LET b=b+8
  80 IF b>128 THEN LET b=88
  90 FOR f=1 TO 12
 100 READ a$
 110 PRINT AT f+z,10; INK r;a$
 120 NEXT f
 130 LET r=r+1: LET z=z+h
 140 IF z=8 OR z=0 THEN LET h=-h
 145 IF r>7 THEN LET r=2
 150 NEXT s
 160 RESTORE : GO TO 40
 170 RESTORE 180
 180 DATA "            "
 190 DATA "            "
 200 DATA "  \a\a\a\a\a\a\a\a  "
 210 DATA "  \a\a\a\a\a\a\a\a  "
 220 DATA "  \a\a\a\a\a\a\a\a  "
 230 DATA "  \a\a\a\a\a\a\a\a  "
 240 DATA "  \a\a\a\a\a\a\a\a  "
 250 DATA "  \a\a\a\a\a\a\a\a  "
 260 DATA "  \a\a\a\a\a\a\a\a  "
 270 DATA "  \a\a\a\a\a\a\a\a  "
 280 DATA "            "
 290 DATA "            "
 300 DATA "            "
 310 DATA "      \a\a\a   "
 320 DATA "   \a\a\a\a\a\a   "
 330 DATA " \a\a\a\a\a\a\a\a\a  "
 340 DATA " \a\a\a\a\a\a\a\a\a  "
 350 DATA " \a\a\a\a\a\a\a\a\a  "
 360 DATA "  \a\a\a\a\a\a\a\a\a "
 370 DATA "  \a\a\a\a\a\a\a\a\a "
 380 DATA "  \a\a\a\a\a\a\a\a\a "
 390 DATA "   \a\a\a\a\a\a   "
 400 DATA "   \a\a\a      "
 410 DATA "            "
 420 DATA "            "
 430 DATA "      \a\a    "
 440 DATA "    \a\a\a\a    "
 450 DATA "   \a\a\a\a\a\a   "
 460 DATA " \a\a\a\a\a\a\a\a\a  "
 470 DATA " \a\a\a\a\a\a\a\a\a  "
 480 DATA "  \a\a\a\a\a\a\a\a\a "
 490 DATA "  \a\a\a\a\a\a\a\a\a "
 500 DATA "   \a\a\a\a\a\a   "
 510 DATA "    \a\a\a\a    "
 520 DATA "    \a\a      "
 530 DATA "            "
 540 DATA "            "
 550 DATA "     \a\a     "
 560 DATA "    \a\a\a\a    "
 570 DATA "   \a\a\a\a\a\a   "
 580 DATA "  \a\a\a\a\a\a\a\a  "
 590 DATA " \a\a\a\a\a\a\a\a\a\a "
 600 DATA " \a\a\a\a\a\a\a\a\a\a "
 610 DATA "  \a\a\a\a\a\a\a\a  "
 620 DATA "   \a\a\a\a\a\a   "
 630 DATA "    \a\a\a\a    "
 640 DATA "     \a\a     "
 650 DATA "            "
 660 DATA "            "
 670 DATA "    \a\a      "
 680 DATA "   \a\a\a\a\a    "
 690 DATA "   \a\a\a\a\a\a\a  "
 700 DATA "  \a\a\a\a\a\a\a\a\a "
 710 DATA "  \a\a\a\a\a\a\a\a\a "
 720 DATA " \a\a\a\a\a\a\a\a\a  "
 730 DATA " \a\a\a\a\a\a\a\a\a  "
 740 DATA "  \a\a\a\a\a\a\a   "
 750 DATA "    \a\a\a\a\a   "
 760 DATA "      \a\a    "
 770 DATA "            "
 780 DATA "            "
 790 DATA "            "
 800 DATA "   \a\a\a\a     "
 810 DATA "   \a\a\a\a\a\a\a\a "
 820 DATA "   \a\a\a\a\a\a\a\a "
 830 DATA "   \a\a\a\a\a\a\a\a "
 840 DATA "  \a\a\a\a\a\a\a\a\a "
 850 DATA "  \a\a\a\a\a\a\a\a  "
 860 DATA "  \a\a\a\a\a\a\a\a  "
 870 DATA "  \a\a\a\a\a\a\a\a  "
 880 DATA "      \a\a\a\a  "
 890 DATA "            "
 900 RESTORE 910: FOR F=65368 TO 65368+63: READ A: POKE F,A: NEXT F
 910 DATA 0,0,0,24,24,0,0,0,0,0,60,36,36,60,0,0
 920 DATA 0,126,66,90,90,66,126,0,255,129,189,165,165,189,129,255
 930 DATA 0,126,66,90,90,66,126,0,0,0,60,36,36,60,0,0
 940 DATA 0,0,60,36,36,60,0,0,0,0,0,24,24,0,0,0
1020 RETURN
