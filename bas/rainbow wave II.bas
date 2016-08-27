Check 1129B466
Auto 8224

# Run-time Variables

Var r: Num = 61
Var z: Num = -3
Var x: Num = 3.560823
Var n: NumFOR = 0.058407349, 3.1415927, 0.2, 80, 2
Var a$: Str = "  oooooooo  "

# End Run-time Variables

   1 BORDER 0: PAPER 0: INK 7: CLS
   5 POKE 23692,255
  10 LET r=45: LET z=3
  50 LET r=45
  80 FOR n=-PI TO PI STEP .2
 115 LET x=r*(SIN n)
 120 READ a$
 121 IF a$="      O     " THEN RESTORE : LET z=-z
 124 PRINT AT 21,10+x/12; INK 1; BRIGHT 0;a$
 125 PRINT BRIGHT 1;AT 21,10+z+x/12; INK 1+INT (0.02*PEEK r);a$
 128 PRINT " "
 130 LET r=r+1
 135 POKE 23692,255
 210 NEXT n
 240 GO TO 50
1010 DATA "       o    "
1011 DATA "       o    "
1012 DATA "       o    "
1013 DATA "      oo    "
1014 DATA "      oo    "
1015 DATA "      oo    "
1020 DATA "     ooo    "
1030 DATA "     oooo   "
1040 DATA "     oooo   "
1041 DATA "    ooooo   "
1042 DATA "    ooooo   "
1043 DATA "    ooooo   "
1050 DATA "    oooooo  "
1051 DATA "    oooooo  "
1052 DATA "    oooooo  "
1060 DATA "   ooooooo  "
1070 DATA "   oooooooo "
1080 DATA "   oooooooo "
1081 DATA "  ooooooooo "
1090 DATA "  ooooooooo "
1100 DATA " oooooooooo "
1110 DATA " oooooooooo "
1120 DATA "ooooooooooo "
1121 DATA "ooooooooooo "
1122 DATA "ooooooooooo "
1130 DATA "ooooooooooo "
1140 DATA "ooooooooooo "
1150 DATA "ooooooooooo "
1160 DATA " ooooooooo  "
1170 DATA " ooooooooo  "
1180 DATA " ooooooooo  "
1181 DATA "  oooooooo  "
1182 DATA "  oooooooo  "
1183 DATA "  ooooooo   "
1190 DATA "  ooooooo   "
1191 DATA "   oooooo   "
1192 DATA "   oooooo   "
1193 DATA "   ooooo    "
1200 DATA "   ooooo    "
1201 DATA "    oooo    "
1202 DATA "    oooo    "
1203 DATA "    ooo     "
1204 DATA "    ooo     "
1210 DATA "     oo     "
1211 DATA "     oo     "
1212 DATA "      o     "
1213 DATA "      O     "
