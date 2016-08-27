Check 1B6381DD
Auto 8224

# Run-time Variables

Var n: Num = 9
Var ty: Num = 5
Var z: NumFOR = 10, 9, 1, 2000, 2
Var f: NumFOR = 8, 7, 1, 2002, 2
Var a$: Str = "C L A R I T Y"

# End Run-time Variables

  40 LET ty=5: LET n=9
  45 GO SUB 2000
  50 STOP
 410 DATA "you can't"
 420 DATA "control"
 430 DATA "the singularity"
 440 DATA "but able"
 450 DATA "to control"
 460 DATA ""
 470 DATA "YOUR"
 480 DATA ""
 490 DATA "C L A R I T Y"
2000 FOR z=1 TO n
2001 READ a$
2002 FOR f=1 TO 7
2003 PRINT AT z+ty,16-(LEN a$/2); INK f;a$: PAUSE 1: PRINT AT z+ty,16-(LEN a$/2); OVER 1; INK f;a$: PRINT AT z+ty,16-(LEN a$/2); OVER 0; INK f;a$
2004 PAUSE 5: NEXT f: NEXT z: PAUSE 50: RETURN
