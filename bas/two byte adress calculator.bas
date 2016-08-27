Check 0AB09001
Auto 8224

# Run-time Variables

Var h: Num = 195
Var l: Num = 80
Var adr: Num = 50000

# End Run-time Variables

  10 INPUT "adr=";adr
  30 LET h=INT (adr/256)
  40 LET l=adr-(INT (adr/256)*256)
  50 PRINT "Font adr=";adr: PRINT "low byte=";l;" high byte=";h
