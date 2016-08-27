Check D2834CA2
Auto 8224

# Run-time Variables

Var y: Num = 16
Var x: Num = 14
Var adr: Num = 51115
Var a: NumArray(42) = 0, 192, 112, 192, 224, 192, 80, 193, 192, 193, 48, 194, 160, 194, 16, 195, 128, 195, 240, 195, 96, 196, 208, 196, 64, 197, 176, 197, 32, 198, 144, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
Var f: NumFOR = 26, 25, 1, 9080, 2
Var n: NumFOR = 88, 87, 1, 9160, 2
Var a$: Str = "                                WE NEED TO GO DEEPER!"

# End Run-time Variables

   1 DIM a(42)
   2 LET y=16: LET x=14: LET adr=49152
   9 GO SUB 9010
  10 FOR f=1 TO y*2 STEP 2
  11 POKE 23675,a(f): POKE 23676,a(f+1)
  20 PRINT "                  \a\b\c\d\e\f\g\h\i\j\k\l\m\n"
  30 NEXT f
  99 LET A$="                               WE NEED TO GO DEEPER! "
 130 PLOT 30,54: DRAW 120,0: GO TO 9080
9000 DEF FN h(n)=INT (n/256)
9001 DEF FN l(n)=n-(FN h(n)*256)
9010 FOR f=1 TO y*2 STEP 2: LET a(f)=FN l(adr): LET a(f+1)=FN h(adr): LET adr=adr+(x*8): NEXT f: RETURN
9020 POKE 23675,FN l(adr): POKE 23676,FN h(adr): RETURN
9080 FOR f=0 TO 25
9099 LET adr=50945: GO SUB 9020
9100 PRINT AT 8,8;"   \a\b "
9101 PRINT AT 9,8;"   \c\d "
9102 PRINT AT 10,8;"   \e\f "
9103 PRINT AT 11,8;"  \g\h\i "
9104 PRINT AT 12,8;"\j\k\l\m\n "
9105 PRINT AT 13,8;" \o\p\q\r\s"
9106 PRINT AT 14,8;"  \t\u  "
9107 LET A$=A$(2 TO )+A$(1)
9108 FOR N=80 TO 87: POKE 23681,N: LPRINT A$(1 TO 30): NEXT N
9110 LET adr=51115: GO SUB 9020
9111 PRINT AT 8,8;" \a\b   "
9112 PRINT AT 9,8;" \c\d   "
9113 PRINT AT 10,8;" \e\f   "
9115 PRINT AT 11,8;" \g\h\i  "
9116 PRINT AT 12,8;" \j\k\l\m\n"
9117 PRINT AT 13,8;"\o\p\q\r\s "
9118 PRINT AT 14,8;"  \t\u  "
9150 LET A$=A$(2 TO )+A$(1)
9160 FOR N=80 TO 87: POKE 23681,N: LPRINT A$(1 TO 30): NEXT N
9170 NEXT f
