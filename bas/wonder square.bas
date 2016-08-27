Check 221490A4
Auto 8224

# Run-time Variables

Var a: Num = 188
Var z: Num = 0
Var r: Num = 1017
Var d: Num = 747
Var s: Num = 23056
Var l: Num = 4
Var k: Num = -60
Var inc: Num = 53
Var i: NumFOR = 5, 8, 1, 90, 2
Var j: NumFOR = 3, 4, 1, 100, 2

# End Run-time Variables

 790 LET a=180: LET z=0: POKE 23675,a: POKE 23676,215
 792 BORDER z: PAPER z: INK z: CLS : LET r=1000
 794 LET D=5: LET S=22928: LET r=r+1: LET INC=INT ((4+PEEK r)+3/100): LET l=z
 796 FOR I=1 TO 8
 798 PRINT BRIGHT 1;AT 12-i,6;"\a\b\c\d\e\f\e\d\c\a\a\c\d\e\f\e\d\c\b\a"
 800 PRINT BRIGHT 1;AT 11+i,6;"\a\b\c\d\e\f\e\d\c\a\a\c\d\e\f\e\d\c\b\a"
 802 PRINT AT 0,6; INK 1+RND*6;"\a\b\a WHITE  STARS \a\b\a"
 804 PRINT AT 21,10; INK 1+RND*6;"BASE-X compo"
 806 PRINT AT 2,12; INK 1+RND*6;"by nodeus"
 808 PRINT #0;AT 1,13; INK 1+RND*6;"\* 2015"
 810 FOR J=z TO L
 812 LET D=D+INC
 814 LET K=INT (192*SIN D)+64
 816 POKE S+32-31*I+32*J,K
 818 POKE S-31*I-32*J,K
 820 POKE S-33*I+31+32*J,K
 822 POKE S-33*I-1-32*J,K
 824 IF I>9 THEN GO TO 834
 826 POKE S+J,K
 828 POKE S-J-1,K
 830 POKE S-64*I+31-J,K
 832 POKE S-64*I+32+J,K
 834 NEXT J
 836 LET L=L+1: LET s=s+32
 838 NEXT I
 840 LET a=PEEK (23675): LET a=a+8: IF a>196 THEN LET a=180
 842 POKE 23675,a
 844 INK 8: PAPER 8: BRIGHT 1: GO TO 794
 846 GO TO 794
