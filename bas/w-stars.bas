Check 4B6F5470
Auto 1

# Run-time Variables

Var n: Num = 7
Var r: Num = 1397
Var ty: Num = 6
Var adr: Num = 48288
Var x: NumFOR = 22, 21, 1, 15, 3
Var f: NumFOR = 29, 60, 1, 320, 2
Var z: NumFOR = 8, 7, 1, 17, 2
Var a$: Str = "C L A R I T Y"

# End Run-time Variables

  10 GO TO VAL "40"
  11 FOR f=1 TO y+y STEP 2: LET a(f)=FN l(adr): LET a(f+1)=FN h(adr): LET adr=adr+(x*8): NEXT f: RETURN
  12 POKE VAL "23675",FN l(adr): POKE VAL "23676",FN h(adr): RETURN
  13 FOR f=3 TO 7: PAPER f: BORDER f: CLS : NEXT f: INK 0: CLS : RETURN
  14 FOR f=3 TO 0 STEP -1: PAPER f: BORDER f: CLS : NEXT f: INK 7: CLS : RETURN
  15 OVER 1: FOR x=0 TO 21: FOR f=4 TO 7: PRINT AT x,0; PAPER f; INK 8;"                                ": PRINT AT x,0; PAPER f; INK 7;"                                ": NEXT f: NEXT x: INK 0: BORDER 7: CLS : OVER 0: RETURN
  16 BORDER VAL "7": PAUSE VAL "1": BORDER VAL "5": PAUSE VAL "1": BORDER VAL "0": RETURN
  17 FOR z=1 TO n: READ a$: FOR f=4 TO 7: PRINT AT z+ty,16-(LEN a$/2); INK f;a$: PRINT AT z+ty,16-(LEN a$/2); OVER 1; INK f;a$: PRINT AT z+ty,16-(LEN a$/2); OVER 0; INK f;a$: PAUSE 2: NEXT f: NEXT z: RETURN
  18 FOR z=1 TO n: READ a$: FOR f=4 TO 7: PRINT AT z+ty,tx; INK f;a$: PRINT AT z+ty,tx; OVER 1; INK f;a$: PRINT AT z+ty,tx; OVER 0; INK f;a$: PAUSE 2: NEXT f: NEXT z: RETURN
  20 DEF FN h(n)=INT (n/256)
  30 DEF FN l(n)=n-(FN h(n)*256)
  31 INK 2+INT (0.02*PEEK r): FOR f=n TO m STEP 2: PLOT OVER 1;z(f),z(f+1): DRAW OVER 1;z(f+2)-z(f),z(f+3)-z(f+1): LET r=r+1
  32 NEXT f: RETURN
  34 INK r: FOR f=1 TO 30 STEP 2: PLOT OVER 1;128+INT (z(f)),88+INT ((z(f+1))): DRAW OVER 1;z(f+2)-z(f),z(f+3)-z(f+1): LET r=r+1: IF r>7 THEN LET r=1
  35 NEXT f: RETURN
  36 FOR f=1 TO 32: LET c(f)=z(f): NEXT f: RETURN
  37 FOR f=1 TO 32 STEP 2: LET rx=INT (z(f)*0.97)-(z(f+1)*0.20): LET ry=INT (z(f)*0.20)+(z(f+1)*0.97): LET z(f)=INT (rx*1.05): LET z(f+1)=INT (ry*1.05): NEXT f: RETURN
  38 INK r: FOR f=1 TO 30 STEP 2: PLOT OVER 1;128+INT (c(f)),88+INT ((c(f+1))): DRAW OVER 1;c(f+2)-c(f),c(f+3)-c(f+1): LET r=r+1: IF r>7 THEN LET r=1
  39 NEXT f: RETURN
  40 POKE VAL "23606",VAL "250": POKE VAL "23607",VAL "187": POKE VAL "23672",VAL "0": POKE VAL "23673",VAL "0": POKE VAL "23674",VAL "0": PAPER 7: BORDER 7: INK 0: BRIGHT 0: OVER 0: CLS : CLEAR VAL "42699": POKE 23739,111
  50 LOAD "ws-sship" CODE 16384
  60 LOAD "wsdata" CODE 42700: POKE VAL "23739",VAL "244"
  70 POKE VAL "65281",VAL "0": PAUSE VAL "100": GO SUB 15: GO SUB 14
  80 FOR f=1 TO 50: PLOT 255*RND,175*RND: NEXT f
  90 RESTORE VAL "8000": LET ty=VAL "3": LET n=VAL "13": GO SUB VAL "17": PAUSE VAL "150"
 100 POKE VAL "23692",VAL "255": PRINT AT VAL "21",VAL "0";""
 110 GO SUB VAL "16"
 120 FOR f=0 TO 25
 130 PLOT 255*RND,5*RND
 140 PLOT 255*RND,0
 141 PRINT INK 1+5*RND;"         ______________"
 150 PRINT "        /              \\": PRINT
 160 PRINT INK 1+5*RND;"     _____/          \\_____": PRINT "    /                      \\"
 170 PLOT 255*RND,5*RND: PRINT
 180 PRINT INK 1+5*RND;" _____/                 \\_____": PRINT "/                             \\"
 190 NEXT f
 200 PRINT AT 21,0;"": POKE VAL "23692",VAL "255"
 210 LET adr=VAL "48288": GO SUB VAL "12"
 220 LET ty=VAL "6": LET n=VAL "7"
 230 RESTORE VAL "8013": GO SUB VAL "17": PAUSE VAL "50": GO SUB VAL "16"
 240 LET r=VAL "1200": FOR f=1 TO 60
 250 PAUSE 2
 260 PRINT AT 21,1+INT (0.12*PEEK r);"\a"
 270 POKE 23692,255: LET r=r+1: PRINT : NEXT f
 280 FOR f=1 TO 40
 290 PAUSE 2
 300 PRINT AT 21,1+INT (0.12*PEEK r);"\c": LET r=r+1: PRINT AT 21,1+INT (0.12*PEEK r);"\b"
 310 PRINT : POKE 23692,255: LET r=r+1: NEXT f
 320 FOR f=1 TO 50
 330 PAUSE 2
 340 PRINT INK 1+INT (0.02*PEEK r);AT 21,1+INT (0.12*PEEK r);"\c": LET r=r+1: PRINT AT 21,1+INT (0.12*PEEK r);"\b"
 350 PRINT : POKE 23692,255: LET r=r+1: NEXT f
 360 LET x1=128: LET y1=0
 370 PLOT x1,y1
 380 LET c=1
 390 FOR f=0 TO 120
 400 POKE 23692,255
 410 LET x2=70+INT (PEEK r/2): LET r=r+1: LET y2=INT (0.5*PEEK r)
 420 DRAW INK c;x2-x1,y2-y1
 430 LET x1=x2: LET y1=y2
 440 LET c=c+1: IF c=8 THEN LET c=1
 450 PRINT AT 21,1+INT (0.12*PEEK r); INK 1+INT (0.02*PEEK r);"\c"
 460 LET r=r+1
 470 PRINT AT 21,1+INT (0.12*PEEK r);"\a"
 480 PRINT ""
 490 LET r=r+1
 500 NEXT f
 510 FOR f=1 TO 45
 520 PAUSE 2
 530 PRINT INK 1+INT (0.02*PEEK r);AT 21,1+INT (0.12*PEEK r);"\b": LET r=r+1: PRINT AT 21,1+INT (0.12*PEEK r);"\a"
 540 PRINT "": POKE 23692,255: LET r=r+1: NEXT f
 550 FOR f=1 TO 45
 560 PRINT AT 21,1+INT (0.12*PEEK r);"\a"
 570 LET r=r+1
 580 PRINT ""
 590 PAUSE 2
 600 POKE 23692,255: NEXT f
 610 FOR f=0 TO 20: PAUSE 2: PRINT "": NEXT f
 620 CLEAR : LET ty=VAL "5": LET n=VAL "12": RESTORE VAL "8022": GO SUB VAL "17"
 650 DIM a(48)
 670 LET y=VAL "22": LET x=VAL "18": LET adr=VAL "42700": GO SUB VAL "11": GO SUB VAL "13"
 680 FOR f=1 TO y*2 STEP 2: POKE 23675,a(f): POKE 23676,a(f+1)
 690 PRINT "\a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r"
 700 NEXT f
 701 LET adr=VAL "45868": GO SUB VAL "12"
 702 PRINT #0;AT 0,0;"\a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r"
 703 LET adr=VAL "46012": GO SUB VAL "12"
 704 PRINT #0;AT 1,0;"\a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r"
 710 PAUSE VAL "50"
 720 PRINT AT VAL "15",VAL "17";"What": PAUSE VAL "30": PRINT AT VAL "15",VAL "22";"do": PAUSE VAL "10": PRINT AT VAL "15",VAL "25";"you": PAUSE VAL "10": PRINT AT VAL "15",VAL "29";"say": PAUSE VAL "40": PRINT AT VAL "16",VAL "19";"in response"
 730 PAUSE VAL "40": PRINT AT VAL "18",VAL "21";"HUMAN ?"
 750 DIM a(42)
 760 LET y=VAL "16": LET x=VAL "14": LET adr=VAL "46157"
 770 GO SUB VAL "11"
 780 GO SUB VAL "13"
 790 FOR f=1 TO y*2 STEP 2
 800 POKE 23675,a(f): POKE 23676,a(f+1)
 810 PRINT "                  \a\b\c\d\e\f\g\h\i\j\k\l\m\n"
 820 NEXT f
 830 LET A$="                               WE NEED TO GO DEEPER! "
 840 PLOT 30,54: DRAW 120,0
 850 FOR f=0 TO 25
 860 LET adr=VAL "47950": GO SUB VAL "12"
 870 PRINT AT 8,8;"   \a\b "
 880 PRINT AT 9,8;"   \c\d "
 890 PRINT AT 10,8;"   \e\f "
 900 PRINT AT 11,8;"  \g\h\i "
 910 PRINT AT 12,8;"\j\k\l\m\n "
 920 PRINT AT 13,8;" \o\p\q\r\s"
 930 PRINT AT 14,8;"  \t\u  "
 940 LET A$=A$(2 TO )+A$(1)
 950 FOR N=80 TO 87: POKE 23681,N: LPRINT A$(1 TO 30): NEXT N
 960 LET adr=VAL "48119": GO SUB VAL "12"
 970 PRINT AT 8,8;" \a\b   "
 980 PRINT AT 9,8;" \c\d   "
 990 PRINT AT 10,8;" \e\f   "
1000 PRINT AT 11,8;" \g\h\i  "
1010 PRINT AT 12,8;" \j\k\l\m\n"
1020 PRINT AT 13,8;"\o\p\q\r\s "
1030 PRINT AT 14,8;"  \t\u  "
1040 LET A$=A$(2 TO )+A$(1)
1050 FOR N=80 TO 87: POKE 23681,N: LPRINT A$(1 TO 30): NEXT N
1060 NEXT f
1080 GO SUB VAL "14"
1090 BORDER VAL "0": PAPER VAL "0": INK VAL "7": CLS :: OVER VAL "1": CLEAR
1110 LET r=VAL "2000": FOR n=0 TO 5: POKE 23692,255: PRINT AT 21,0;""
1120 LET cx=55: LET cy=8: PLOT cx,cy
1130 FOR f=-50 TO 50 STEP 6
1140 INK 1+INT (0.02*PEEK r)
1150 PLOT OVER 0;cx,cy: DRAW f,0: PLOT OVER 0;cx,cy: DRAW -f,0
1160 PLOT OVER 0;cx+150,cy: DRAW f,0: PLOT OVER 0;cx+150,cy: DRAW -f,0
1170 PLOT OVER 0;cx+75,cy: DRAW f,0: PLOT OVER 0;cx+75,cy: DRAW -f,0
1180 PRINT : LET r=r+1
1190 NEXT f: NEXT n
1200 FOR f=0 TO 24: PRINT : PAUSE 5: NEXT f
1210 RESTORE VAL "8114": LET ty=VAL "8": LET n=VAL "5": GO SUB VAL "17": PAUSE VAL "50"
1220 GO SUB VAL "16": CLS
1230 LET cx=VAL "128": LET cy=VAL "88": LET dx=VAL "64": LET dy=VAL "64"
1240 FOR n=0 TO 4: LET i=1+INT (6*RND)
1250 FOR f=0 TO 60 STEP 4+INT (4*RND): LET r=r+1: LET i=1+INT (6*RND): LET dx=f: LET dy=f
1260 OVER 1*RND
1270 PLOT INK i;cx+dx,cy+dy
1280 DRAW INK i;-2*dx,0
1290 PLOT INK i;cx-dx,cy+dy
1300 DRAW INK i;0,-2*dy
1310 PLOT INK i;cx-dx,cy-dy
1320 DRAW INK i;2*dx,0
1330 PLOT INK i;cx+dx,cy-dy
1340 DRAW INK i;0,2*dy
1350 NEXT f
1360 IF cx>128 THEN LET cx=cx-dx
1370 IF cx<88 THEN LET cx=cx+dx
1380 IF cy>88 THEN LET cy=cy-dy
1390 IF cy<88 THEN LET cy=cy+dy
1400 NEXT n
1410 GO SUB VAL "16"
1430 POKE VAL "23692",VAL "255": PRINT AT VAL "21",VAL "0";""
1440 LET r=VAL "1170": LET cx=78+INT (0.4*PEEK r): LET cy=VAL "88": LET dx=VAL "64": LET dy=VAL "64": LET r=r+1
1450 FOR n=0 TO 5: LET i=1+INT (0.02*PEEK r)
1460 LET r=r+1: LET cx=78+INT (0.4*PEEK r): LET cy=88: LET dx=64: LET dy=64: LET r=r+1
1470 FOR f=0 TO 60 STEP 4
1480 LET r=r+1: LET i=1+INT (0.02*PEEK r): LET dx=f: LET dy=f
1490 PLOT INK i;cx+dx,cy+dy
1500 DRAW INK i;-2*dx,0
1510 PLOT INK i;cx-dx,cy+dy
1520 DRAW INK i;0,-2*dy
1530 PLOT INK i;cx-dx,cy-dy
1540 DRAW INK i;2*dx,0
1550 PLOT INK i;cx+dx,cy-dy
1560 DRAW INK i;0,2*dy
1570 PRINT "": POKE 23692,255
1580 NEXT f
1590 IF cx>128 THEN LET cx=cx-dx
1600 IF cx<88 THEN LET cx=cx+dx
1610 IF cy>88 THEN LET cy=cy-dy
1620 IF cy<88 THEN LET cy=cy+dy
1630 NEXT n: GO SUB VAL "16": CLS
1640 RESTORE VAL "8102": LET ty=VAL "5": LET n=VAL "8": GO SUB VAL "17"
1650 PAUSE VAL "50": POKE VAL "23692",VAL "255"
1660 LET r=VAL "1000": PRINT AT VAL "21",VAL "0";"": GO SUB VAL "16"
1670 FOR f=0 TO 3: FOR t=0 TO PI STEP .22
1680 PLOT 158-30*SIN (t),8
1690 DRAW INK 1+INT (0.02*PEEK r);75*COS (2*t),0
1700 PLOT 158-30*SIN (t),0
1710 DRAW INK 1;75*SIN (t*2),0
1720 POKE 23692,255
1730 PRINT ""
1740 PRINT ""
1750 LET r=r+1
1760 NEXT t: NEXT f
1770 RESTORE VAL "8034": LET r=VAL "1000": LET c=1
1780 FOR g=1 TO 21
1790 FOR f=0 TO 4
1800 POKE 23692,255
1810 LET x=INT (PEEK r)
1820 PLOT INK 2+INT (0.02*PEEK r);x,0: LET r=r+1
1830 IF x>75 AND x<150 THEN PLOT INK c;x+1,0: PLOT INK c;x+1,1: PLOT INK c;x,1: PLOT INK c;(PEEK r),0
1840 LET c=c+1: IF c=8 THEN LET c=1
1850 PAUSE 1: PRINT
1860 LET r=r+1
1870 NEXT f
1880 READ a$
1890 PAUSE 5: PRINT AT 21,16-((LEN A$)/2); INK 7; BRIGHT 1;a$
1900 NEXT g
1920 LET adr=VAL "48288"+VAL "8": GO SUB VAL "12"
1930 RESTORE VAL "8055": POKE VAL "23692",VAL "255"
1940 LET r=VAL "45": LET z=VAL "3"
1950 FOR f=0 TO 6: LET r=45: OVER 1*RND
1960 FOR n=-PI TO PI STEP .25
1970 LET x=r*(SIN n)
1980 READ a$
1990 IF a$="      .     " THEN RESTORE 8055: LET z=-z
2000 PRINT AT 21,10+x/12; INK 1; BRIGHT 0;a$
2010 PRINT BRIGHT 1;AT 21,10+z+x/12; INK 1+INT (0.02*PEEK r);a$
2020 PRINT " "
2030 LET r=r+1
2040 POKE 23692,255
2050 NEXT n
2060 NEXT f
2070 POKE VAL "23692",VAL "255"
2080 PRINT AT VAL "21",VAL "0";""
2090 LET r=VAL "1000"
2100 FOR t=0 TO PI STEP .25
2110 FOR f=0 TO 30: LET x=1: LET dx=5+(2*(-INT (0.02*PEEK r))): LET r=r+1
2120 PLOT 255/2-50*SIN (t),0
2130 LET yx=INT (0.1*PEEK r)
2140 LET x=x+yx: LET r=r+1
2150 DRAW INK 2+(0.02*PEEK r);-dx,yx
2160 IF x<50 THEN GO TO 2130
2170 PRINT ""
2180 NEXT t
2190 NEXT f
2200 RESTORE VAL "8120": LET ty=VAL "5": LET n=VAL "11": GO SUB VAL "17": PAUSE VAL "100"
2210 RESTORE VAL "8110": PAPER VAL "0": INK VAL "0": BRIGHT VAL "0": BORDER VAL "0": CLS
2220 FOR f=30 TO 67 STEP 4: PLOT 50+f/2,f: DRAW 158-f,0: PLOT 50+f/2,170-f: DRAW 158-f,0: NEXT f
2230 PAPER 0: BORDER 0: BRIGHT 1: OVER 1: LET c=6:
2240 LET dx=VAL "16"
2250 FOR a=1 TO 36
2260 READ a$
2270 LET l=LEN a$: LET x=INT ((32-l)/2)
2280 FOR f=0 TO 8: PRINT BRIGHT 1; OVER 1; INK f; PAPER 0;AT 11,x;a$: NEXT f
2290 FOR f=67 TO 30 STEP -4
2300 INK c: PAPER c: OVER 1: BRIGHT 1
2310 PLOT x*8+0-dx,f
2320 DRAW l*8+3+dx+dx,0
2330 PLOT x*8+0-dx,170-f
2340 DRAW l*8+3+dx+dx,0
2350 LET c=c+1: IF c>7 THEN LET c=1
2360 LET dx=dx-2
2370 NEXT f
2380 LET dx=16
2390 PAUSE (30-(LEN a$))/3
2400 FOR f=6 TO 0 STEP -1
2410 PRINT OVER 1; PAPER 0; INK f;AT 11,x;a$;" "
2420 NEXT f
2430 NEXT a
2440 INK VAL "0": FOR f=30 TO 67 STEP 4: PLOT 50,f: DRAW 158,0: PLOT 50,170-f: DRAW 158,0: NEXT f: PAPER VAL "0": INK VAL "7": CLEAR
2450 RESTORE VAL "8135": LET tx=VAL "10": LET ty=VAL "4": LET n=VAL "11": GO SUB VAL "18"
2460 RESTORE VAL "8131": DIM z(64)
2470 LET r=VAL "100"
2480 FOR n=1 TO 64
2490 READ z(n)
2500 NEXT n
2510 FOR k=1 TO 5
2520 LET n=1: LET m=14: GO SUB 31: GO SUB 31
2530 LET n=17: LET m=30: GO SUB 31: GO SUB 31
2540 LET n=33: LET m=46: GO SUB 31: GO SUB 31
2550 LET n=49: LET m=62: GO SUB 31: GO SUB 31
2560 NEXT k
2640 POKE VAL "23692",VAL "255"
2650 DIM z(32): DIM c(32)
2660 LET r=VAL "1"
2670 PAPER VAL "0": INK VAL "7": BORDER VAL "0": CLS : RESTORE VAL "2790"
2680 FOR n=1 TO 32
2690 READ z(n): LET z(n)=z(n)*10: LET c(n)=z(n)
2700 NEXT n
2710 RESTORE VAL "2800"
2720 FOR k=1 TO 11
2730 POKE 23692,255: READ l$: PRINT BRIGHT 1;AT 21,16-(LEN l$)/2;l$: PRINT : PRINT
2740 GO SUB 34
2750 GO SUB 36
2760 GO SUB 37: GO SUB 38
2770 NEXT k
2780 GO TO VAL "3090"
2790 DATA -3,2,-2,3,-1,3,-0,2,0,3,2,3,3,2,3,0,2,-1,0,-1,0,2,-1,1,0,0,-1,-1,-2,-1,-3,0
2800 DATA "3D","IN BASIC","IS","POSSIBLE","BUT","OH SO BORING","LET'S","TRY","SOMETHING","FASTER","...","","",""
3090 PAPER VAL "0": INK VAL "7": BORDER VAL "0": OVER VAL "0": CLEAR : LET h=VAL "1": LET z=VAL "0": LET b=VAL "185": LET r=VAL "2": POKE VAL "23675",b: POKE VAL "23676",VAL "188"
3100 FOR f=1 TO 7: PRINT INK f;AT 8,5;"get ready to hop around"'""'"   through thorns to the stars"'""'"       like a Rubik's cube": PAUSE 3: NEXT f
3110 PAUSE VAL "50"
3120 FOR f=7 TO 1 STEP -1: PRINT INK f;AT 8,5;"get ready to hop around"'""'"   through thorns to the stars"'""'"       like a Rubik's cube": PAUSE 3: NEXT f
3130 RESTORE VAL "3300"
3140 CLS
3150 FOR k=1 TO 7
3160 FOR s=1 TO 6
3170 PRINT AT 0,1; INK r;"\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b"
3180 PRINT AT 21,1; INK r;"\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b"
3190 POKE 23675,b: LET b=b+8
3200 IF b>233 THEN LET b=185
3210 FOR f=1 TO 12
3220 READ a$
3230 PRINT AT f+z,10; INK r;a$
3240 NEXT f
3250 LET r=r+1: LET z=z+h
3260 IF z=8 OR z=0 THEN LET h=-h
3270 IF r>7 THEN LET r=2
3280 NEXT s
3290 RESTORE 3300: NEXT k: GO TO 4080
3300 DATA "            "
3310 DATA "            "
3320 DATA "  \a\a\a\a\a\a\a\a  "
3330 DATA "  \a\a\a\a\a\a\a\a  "
3340 DATA "  \a\a\a\a\a\a\a\a  "
3350 DATA "  \a\a\a\a\a\a\a\a  "
3360 DATA "  \a\a\a\a\a\a\a\a  "
3370 DATA "  \a\a\a\a\a\a\a\a  "
3380 DATA "  \a\a\a\a\a\a\a\a  "
3390 DATA "  \a\a\a\a\a\a\a\a  "
3400 DATA "            "
3410 DATA "            "
3420 DATA "            "
3430 DATA "      \a\a\a   "
3440 DATA "   \a\a\a\a\a\a   "
3450 DATA " \a\a\a\a\a\a\a\a\a  "
3460 DATA " \a\a\a\a\a\a\a\a\a  "
3470 DATA " \a\a\a\a\a\a\a\a\a  "
3480 DATA "  \a\a\a\a\a\a\a\a\a "
3490 DATA "  \a\a\a\a\a\a\a\a\a "
3500 DATA "  \a\a\a\a\a\a\a\a\a "
3510 DATA "   \a\a\a\a\a\a   "
3520 DATA "   \a\a\a      "
3530 DATA "            "
3540 DATA "            "
3550 DATA "      \a\a    "
3560 DATA "    \a\a\a\a    "
3570 DATA "   \a\a\a\a\a\a   "
3580 DATA " \a\a\a\a\a\a\a\a\a  "
3590 DATA " \a\a\a\a\a\a\a\a\a  "
3600 DATA "  \a\a\a\a\a\a\a\a\a "
3610 DATA "  \a\a\a\a\a\a\a\a\a "
3620 DATA "   \a\a\a\a\a\a   "
3630 DATA "    \a\a\a\a    "
3640 DATA "    \a\a      "
3650 DATA "            "
3660 DATA "            "
3670 DATA "     \a\a     "
3680 DATA "    \a\a\a\a    "
3690 DATA "   \a\a\a\a\a\a   "
3700 DATA "  \a\a\a\a\a\a\a\a  "
3710 DATA " \a\a\a\a\a\a\a\a\a\a "
3720 DATA " \a\a\a\a\a\a\a\a\a\a "
3730 DATA "  \a\a\a\a\a\a\a\a  "
3740 DATA "   \a\a\a\a\a\a   "
3750 DATA "    \a\a\a\a    "
3760 DATA "     \a\a     "
3770 DATA "            "
3780 DATA "            "
3790 DATA "    \a\a      "
3800 DATA "   \a\a\a\a\a    "
3810 DATA "   \a\a\a\a\a\a\a  "
3820 DATA "  \a\a\a\a\a\a\a\a\a "
3830 DATA "  \a\a\a\a\a\a\a\a\a "
3840 DATA " \a\a\a\a\a\a\a\a\a  "
3850 DATA " \a\a\a\a\a\a\a\a\a  "
3860 DATA "  \a\a\a\a\a\a\a   "
3870 DATA "    \a\a\a\a\a   "
3880 DATA "      \a\a    "
3890 DATA "            "
3900 DATA "            "
3910 DATA "            "
3920 DATA "   \a\a\a\a     "
3930 DATA "   \a\a\a\a\a\a\a\a "
3940 DATA "   \a\a\a\a\a\a\a\a "
3950 DATA "   \a\a\a\a\a\a\a\a "
3960 DATA "  \a\a\a\a\a\a\a\a\a "
3970 DATA "  \a\a\a\a\a\a\a\a  "
3980 DATA "  \a\a\a\a\a\a\a\a  "
3990 DATA "  \a\a\a\a\a\a\a\a  "
4000 DATA "      \a\a\a\a  "
4010 DATA "            "
4080 CLS : RESTORE VAL "8138": LET ty=5: LET n=9: GO SUB 17: PAUSE VAL "150": GO SUB VAL "16"
4090 LET a=VAL "185": LET z=0: POKE VAL "23675",a: POKE VAL "23676",188
4100 BORDER z: PAPER z: INK z: CLS : LET r=VAL "1000"
4110 LET D=5: LET S=VAL "22928": LET r=r+1: LET INC=INT ((4+PEEK r)+3/100): LET l=z
4120 FOR I=1 TO 8
4130 PRINT BRIGHT 1;AT 12-i,6;"\a\b\c\d\e\f\e\d\c\a\a\c\d\e\f\e\d\c\b\a"
4140 PRINT BRIGHT 1;AT 11+i,6;"\a\b\c\d\e\f\e\d\c\a\a\c\d\e\f\e\d\c\b\a"
4150 PRINT AT 0,6; INK 1+RND*6;"\a\b\a WHITE  STARS \a\b\a"
4160 PRINT AT 21,10; INK 1+RND*6;"BASE-X compo"
4170 PRINT AT 2,12; INK 1+RND*6;"by nodeus"
4180 PRINT #0;AT 1,13; INK 1+RND*6;"\* 2015"
4190 FOR J=z TO L
4200 LET D=D+INC
4210 LET K=INT (64*SIN D)+64
4220 POKE S+32-31*I+32*J,K
4230 POKE S-31*I-32*J,K
4240 POKE S-33*I+31+32*J,K
4250 POKE S-33*I-1-32*J,K
4260 IF I>8 THEN GO TO 4310
4270 POKE S+J,K
4280 POKE S-J-1,K
4290 POKE S-64*I+31-J,K
4300 POKE S-64*I+32+J,K
4310 NEXT J
4320 LET L=L+1: LET s=s+32
4330 NEXT I
4340 LET a=PEEK (23675): LET a=a+8: IF a>201 THEN LET a=185
4350 POKE 23675,a
4360 INK 8: PAPER 8: BRIGHT 1: GO TO VAL "4110"
4370 GO TO VAL "4110"
8000 DATA "So nice to look at the stars"
8001 DATA "But sad to realize"
8002 DATA "The fact that they are so far"
8003 DATA "From us"
8004 DATA ""
8005 DATA ""
8006 DATA "I am sure"
8007 DATA "What is looking"
8008 DATA "Inside ourselves"
8009 DATA "Each of us"
8010 DATA "Can get to the stars"
8011 DATA ""
8012 DATA "On the stairs of imagination"
8013 DATA "you can't"
8014 DATA "control"
8015 DATA "the singularity"
8016 DATA "but able"
8017 DATA "to control"
8019 DATA "YOUR"
8021 DATA "C L A R I T Y"
8022 DATA "Imagine yourself that you are"
8023 DATA "Immersed in deep-deep space"
8024 DATA "Of ZX Spectrum Basic"
8025 DATA ""
8026 DATA "It is a completely"
8027 DATA "Different side"
8028 DATA "Of speccy universe..."
8029 DATA ""
8030 DATA "Is it your right way"
8031 DATA "To white stars?"
8032 DATA ""
8033 DATA "Is this universe for humans?"
8034 DATA "If you became a STAR"
8035 DATA "You will not die"
8036 DATA ""
8037 DATA ""
8038 DATA "But your light"
8039 DATA "Can't burn forever"
8040 DATA ""
8041 DATA ""
8042 DATA "And maybe you"
8043 DATA "Can find the strenght"
8044 DATA ""
8045 DATA ""
8046 DATA "To become a..."
8047 DATA ""
8048 DATA ""
8049 DATA "SUPERNOVA"
8050 DATA ""
8051 DATA ""
8052 DATA ""
8053 DATA ""
8054 DATA ""
8055 DATA "       \a    "
8056 DATA "       \a    "
8057 DATA "       \a    "
8058 DATA "      \a\a    "
8059 DATA "      \a\a    "
8060 DATA "      \a\a    "
8061 DATA "     \a\a\a    "
8062 DATA "     \a\a\a\a   "
8063 DATA "     \a\a\a\a   "
8064 DATA "    \a\a\a\a\a   "
8065 DATA "    \a\a\a\a\a   "
8066 DATA "    \a\a\a\a\a   "
8067 DATA "    \a\a\a\a\a\a  "
8068 DATA "    \a\a\a\a\a\a  "
8069 DATA "    \a\a\a\a\a\a  "
8070 DATA "   \a\a\a\a\a\a\a  "
8071 DATA "   \a\a\a\a\a\a\a\a "
8072 DATA "   \a\a\a\a\a\a\a\a "
8073 DATA "  \a\a\a\a\a\a\a\a\a "
8074 DATA "  \a\a\a\a\a\a\a\a\a "
8075 DATA " \a\a\a\a\a\a\a\a\a\a "
8076 DATA " \a\a\a\a\a\a\a\a\a\a "
8077 DATA "\a\a\a\a\a\a\a\a\a\a\a "
8078 DATA "\a\a\a\a\a\a\a\a\a\a\a "
8079 DATA "\a\a\a\a\a\a\a\a\a\a\a "
8080 DATA "\a\a\a\a\a\a\a\a\a\a\a "
8081 DATA "\a\a\a\a\a\a\a\a\a\a\a "
8082 DATA "\a\a\a\a\a\a\a\a\a\a\a "
8083 DATA " \a\a\a\a\a\a\a\a\a  "
8084 DATA " \a\a\a\a\a\a\a\a\a  "
8085 DATA " \a\a\a\a\a\a\a\a\a  "
8086 DATA "  \a\a\a\a\a\a\a\a  "
8087 DATA "  \a\a\a\a\a\a\a\a  "
8088 DATA "  \a\a\a\a\a\a\a   "
8089 DATA "  \a\a\a\a\a\a\a   "
8090 DATA "   \a\a\a\a\a\a   "
8091 DATA "   \a\a\a\a\a\a   "
8092 DATA "   \a\a\a\a\a    "
8093 DATA "   \a\a\a\a\a    "
8094 DATA "    \a\a\a\a    "
8095 DATA "    \a\a\a\a    "
8096 DATA "    \a\a\a     "
8097 DATA "    \a\a\a     "
8098 DATA "     \a\a     "
8099 DATA "     \a\a     "
8100 DATA "      \a     "
8101 DATA "      .     "
8102 DATA "Combine your DNA"
8103 DATA "With stardust"
8104 DATA ""
8105 DATA "And you will be"
8106 DATA "A part of Universe"
8107 DATA ""
8108 DATA "The Universe"
8109 DATA "Of White stars"
8110 DATA " BASIC GENERALISSIMO"," DIVER"," AND BASIC MAJOR"," ROLLERBOB"," AND BASIC PRINCESS "," NATASHA ZOTOVA "
8111 DATA "   and all  "," zx spectrum"," cool dudes:","  TREFI ","  INTROSPEC "," SQ "," LUCHIBOBRA "," PSNDCJ "
8112 DATA " N1K-O"," HACKER VBI ","  BOLEG ","  KOWALSKI  ","  PHEEL ","  MMA "," RANDOM "," NYUK "," BRIGHTENTYLE "," PROF "," RISKEJ "," TMK"," ROBUS"," DMAN "," BFOX "," OISEE","   MMCM   "
8113 DATA " and all","who keep","speccy scene","ALIVE!"," F O R E V E R !"
8114 DATA "WITHDRAW"
8115 DATA "INTO YOURSELF"
8116 DATA ""
8117 DATA "DEEPER"
8118 DATA "AND DEEPER"
8120 DATA "So easy to become"
8121 DATA ""
8122 DATA "A White Star"
8123 DATA ""
8124 DATA "So hard to shine"
8125 DATA ""
8126 DATA "For a long time"
8127 DATA ""
8128 DATA "Lets give respects now"
8129 DATA ""
8130 DATA "To the burning stars"
8131 DATA 0,48,44,27,38,76,72,112,24,120,0,164,0,164,0,164
8132 DATA 0,38,20,56,68,50,48,96,68,140,20,134,0,152,0,152
8133 DATA 0,26,24,70,72,80,38,115,45,164,0,144,0,144,0,144
8134 DATA 0,38,16,23,25,72,68,96,25,120,16,168,0,152,0,152
8135 DATA "You must try","","To move away","","From 2d & 3d paradigm",""
8136 DATA "To infinite dimension",""
8137 DATA "And you will be","","A real White Star"
8138 DATA "Passing through"
8139 DATA "The impossibility"
8140 DATA "You entered"
8141 DATA "Through the universe"
8142 DATA "In the center of the Supernova"
8143 DATA ""
8144 DATA "And became"
8145 DATA ""
8146 DATA "A WHITE STAR"
