DEFINT A-Z
DECLARE SUB Initialize ()
DECLARE SUB PythagorasTheorem (x1, y1, x2, y2)
DECLARE SUB Quit ()
DECLARE SUB Main ()

 Initialize
 CALL Main
 Quit

SUB Initialize
 SCREEN 0
 WIDTH 80, 25
 PALETTE
 COLOR 15, 0
 CLS
END SUB

SUB Main
 PRINT "Pythagoras' Theorem v1.00 - by: Peter Swinkels, ***2022***"
 PRINT
 PRINT "Specify the start and end coordinates for a single line as integers."
 PRINT
 LINE INPUT "x1: ", x1$
 LINE INPUT "x2: ", x2$
 LINE INPUT "y1: ", y1$
 LINE INPUT "y2: ", y2$

 PRINT
 x1 = ABS(CINT(VAL(x1$)))
 y1 = ABS(CINT(VAL(y1$)))
 x2 = ABS(CINT(VAL(x2$)))
 y2 = ABS(CINT(VAL(y2$)))

 IF x1 > x2 THEN SWAP x1, x2
 IF y1 > y2 THEN SWAP y1, y2

 PRINT "Interpretation: ("; LTRIM$(STR$(x1)); ","; LTRIM$(STR$(y1)); ")-("; LTRIM$(STR$(x2)); ","; LTRIM$(STR$(y2)); ")"
 PRINT

 PythagorasTheorem x1, y1, x2, y2

 PRINT "Press Escape to quit."
 DO: LOOP UNTIL INKEY$ = CHR$(27)
END SUB

SUB PythagorasTheorem (x1, y1, x2, y2)
 Leg1 = x2 - x1
 Leg2 = y2 - y1

 PRINT "Leg 1 (x2 - x1):"; Leg1
 PRINT "Leg 2 (y2 - y1):"; Leg2
 PRINT

 Leg1Squared& = CLNG(Leg1) * CLNG(Leg1)
 Leg2Squared& = CLNG(Leg2) * CLNG(Leg2)

 PRINT "Leg 1 squared (leg 1 * leg 1):"; Leg1Squared&
 PRINT "Leg 2 squared (leg 2 * leg 2):"; Leg2Squared&
 PRINT

 SquaredLegsSum& = Leg1Squared& + Leg2Squared&
 
 PRINT "Squared legs's sum:"; SquaredLegsSum&
 PRINT

 Distance# = SQR(SquaredLegsSum&)
 PRINT "Distance (sum square root):"; Distance#
END SUB

SUB Quit
 SCREEN 0
 WIDTH 80, 25
 PALETTE
 COLOR 7, 0
 CLS
 SYSTEM
END SUB

