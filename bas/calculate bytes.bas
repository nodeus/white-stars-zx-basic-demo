Check E1E209D7
Auto 8224

# Run-time Variables

Var adr: Num = 50000

# End Run-time Variables

  10 INPUT "adr=";adr
  50 PRINT "adr=";adr
  60 PRINT "high=";FN l(adr)
  70 PRINT "low=";FN h(adr)
 100 DEF FN h(n)=INT (n/256)
 101 DEF FN l(n)=n-(FN h(n)*256)
