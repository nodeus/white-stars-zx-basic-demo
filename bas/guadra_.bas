Check 5EA852DF
Auto 8224

# Run-time Variables

Var h: Num = -1
Var z: Num = 6
Var b: Num = 180
Var r: Num = 2
Var a: Num = 0
Var f: NumFOR = 13, 12, 1, 90, 2
Var k: NumFOR = 16, 15, 1, 40, 2
Var s: NumFOR = 7, 6, 1, 60, 2
Var a$: Str = "            "

# End Run-time Variables

 590 PAPER 0: INK 7: BORDER 0: CLS : LET h=1: LET z=0: LET b=180: LET r=2: POKE 23675,b: POKE 23676,215
 592 FOR f=1 TO 7: PRINT INK f;AT 8,5;"get ready to hop around"'""'"   through thorns to the stars"'""'"       like a Rubik's cube": PAUSE 3: NEXT f
 594 GO SUB 778: PAUSE 50
 596 FOR f=7 TO 1 STEP -1: PRINT INK f;AT 8,5;"get ready to hop around"'""'"   through thorns to the stars"'""'"       like a Rubik's cube": PAUSE 3: NEXT f
 598 RESTORE 634
 600 CLS
 602 FOR k=1 TO 15
 604 FOR s=1 TO 6
 606 PRINT AT 0,1; INK r;"\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b"
 608 PRINT AT 21,1; INK r;"\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b\c\b\a\b"
 610 POKE 23675,b: LET b=b+8
 612 IF b>220 THEN LET b=180
 614 FOR f=1 TO 12
 616 READ a$
 618 PRINT AT f+z,10; INK r;a$
 620 NEXT f
 622 LET r=r+1: LET z=z+h
 624 IF z=8 OR z=0 THEN LET h=-h
 626 IF r>7 THEN LET r=2
 628 NEXT s
 630 RESTORE 634: NEXT k: STOP
 634 DATA "            "
 636 DATA "            "
 638 DATA "  \a\a\a\a\a\a\a\a  "
 640 DATA "  \a\a\a\a\a\a\a\a  "
 642 DATA "  \a\a\a\a\a\a\a\a  "
 644 DATA "  \a\a\a\a\a\a\a\a  "
 646 DATA "  \a\a\a\a\a\a\a\a  "
 648 DATA "  \a\a\a\a\a\a\a\a  "
 650 DATA "  \a\a\a\a\a\a\a\a  "
 652 DATA "  \a\a\a\a\a\a\a\a  "
 654 DATA "            "
 656 DATA "            "
 658 DATA "            "
 660 DATA "      \a\a\a   "
 662 DATA "   \a\a\a\a\a\a   "
 664 DATA " \a\a\a\a\a\a\a\a\a  "
 666 DATA " \a\a\a\a\a\a\a\a\a  "
 668 DATA " \a\a\a\a\a\a\a\a\a  "
 670 DATA "  \a\a\a\a\a\a\a\a\a "
 672 DATA "  \a\a\a\a\a\a\a\a\a "
 674 DATA "  \a\a\a\a\a\a\a\a\a "
 676 DATA "   \a\a\a\a\a\a   "
 678 DATA "   \a\a\a      "
 680 DATA "            "
 682 DATA "            "
 684 DATA "      \a\a    "
 686 DATA "    \a\a\a\a    "
 688 DATA "   \a\a\a\a\a\a   "
 690 DATA " \a\a\a\a\a\a\a\a\a  "
 692 DATA " \a\a\a\a\a\a\a\a\a  "
 694 DATA "  \a\a\a\a\a\a\a\a\a "
 696 DATA "  \a\a\a\a\a\a\a\a\a "
 698 DATA "   \a\a\a\a\a\a   "
 700 DATA "    \a\a\a\a    "
 702 DATA "    \a\a      "
 704 DATA "            "
 706 DATA "            "
 708 DATA "     \a\a     "
 710 DATA "    \a\a\a\a    "
 712 DATA "   \a\a\a\a\a\a   "
 714 DATA "  \a\a\a\a\a\a\a\a  "
 716 DATA " \a\a\a\a\a\a\a\a\a\a "
 718 DATA " \a\a\a\a\a\a\a\a\a\a "
 720 DATA "  \a\a\a\a\a\a\a\a  "
 722 DATA "   \a\a\a\a\a\a   "
 724 DATA "    \a\a\a\a    "
 726 DATA "     \a\a     "
 728 DATA "            "
 730 DATA "            "
 732 DATA "    \a\a      "
 734 DATA "   \a\a\a\a\a    "
 736 DATA "   \a\a\a\a\a\a\a  "
 738 DATA "  \a\a\a\a\a\a\a\a\a "
 740 DATA "  \a\a\a\a\a\a\a\a\a "
 742 DATA " \a\a\a\a\a\a\a\a\a  "
 744 DATA " \a\a\a\a\a\a\a\a\a  "
 746 DATA "  \a\a\a\a\a\a\a   "
 748 DATA "    \a\a\a\a\a   "
 750 DATA "      \a\a    "
 752 DATA "            "
 754 DATA "            "
 756 DATA "            "
 758 DATA "   \a\a\a\a     "
 760 DATA "   \a\a\a\a\a\a\a\a "
 762 DATA "   \a\a\a\a\a\a\a\a "
 764 DATA "   \a\a\a\a\a\a\a\a "
 766 DATA "  \a\a\a\a\a\a\a\a\a "
 768 DATA "  \a\a\a\a\a\a\a\a  "
 770 DATA "  \a\a\a\a\a\a\a\a  "
 772 DATA "  \a\a\a\a\a\a\a\a  "
 774 DATA "      \a\a\a\a  "
 776 DATA "            "
 778 RESTORE 780: FOR F=55220 TO 55220+63: READ A: POKE F,A: NEXT F
 780 DATA 0,0,0,24,24,0,0,0,0,0,60,36,36,60,0,0
 782 DATA 0,126,66,90,90,66,126,0,255,129,189,165,165,189,129,255
 784 DATA 0,126,66,90,90,66,126,0,0,0,60,36,36,60,0,0
 786 DATA 0,0,60,36,36,60,0,0,0,0,0,24,24,0,0,0
 788 RETURN
