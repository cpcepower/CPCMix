10 MODE 1
20 ENT 1,30,2,1
30 INK 0,0:INK 1,19:INK 2,15:INK 3,9
40 SYMBOL AFTER 32
50 SYMBOL 91,247,247,247,0,239,239,239,0
60 SYMBOL 65,49,74,6,26,34,119,10
70 SYMBOL 66,62,73,10,30,33,114,76
80 SYMBOL 67,30,35,36,68,72,33,30
90 SYMBOL 68,60,74,73,17,33,49,78
100 SYMBOL 69,27,36,75,78,72,49,30
110 SYMBOL 70,63,72,75,14,8,36,24
120 SYMBOL 71,26,37,72,78,89,33,30
130 SYMBOL 72,14,16,20,26,17,82,36
140 SYMBOL 73,50,76,4,8,8,36,24
150 SYMBOL 74,50,76,4,8,8,68,56
160 SYMBOL 75,14,17,44,18,12,74,49
170 SYMBOL 76,24,36,64,32,32,50,76
180 SYMBOL 77,42,85,85,21,37,74,41
190 SYMBOL 78,46,83,81,17,18,82,33
200 SYMBOL 79,28,38,35,65,65,34,92
210 SYMBOL 80,44,82,81,18,60,16,32
220 SYMBOL 81,28,38,35,73,69,34,93
230 SYMBOL 82,44,82,17,30,20,18,35
240 SYMBOL 83,29,38,64,82,77,34,28
250 SYMBOL 84,49,78,40,8,8,57,70
260 SYMBOL 85,34,102,34,34,34,55,10
270 SYMBOL 86,36,110,33,33,34,10,8,48
280 SYMBOL 87,42,121,41,41,41,106,20
290 SYMBOL 88,67,36,24,24,40,69,66
300 SYMBOL 89,34,102,34,34,28,72,48
310 SYMBOL 90,56,68,4,56,68,2,50,76
320 SYMBOL 97,0,0,18,44,68,78,52
330 SYMBOL 98,80,32,32,44,50,36,88
340 SYMBOL 99,0,0,28,38,64,34,28
350 SYMBOL 100,16,16,8,52,66,68,56
360 SYMBOL 101,0,0,24,44,80,102,56
370 SYMBOL 102,24,44,32,120,48,32,32,32
380 SYMBOL 103,0,0,16,40,68,60,8,112
390 SYMBOL 104,80,32,44,50,33,34,36,8
400 SYMBOL 105,0,16,0,48,16,24,16
410 SYMBOL 106,0,8,0,24,8,8,20,32
420 SYMBOL 107,40,20,24,20,16,16,8
430 SYMBOL 108,40,16,16,16,16,16,8
440 SYMBOL 109,0,0,84,42,42,42,21
450 SYMBOL 110,0,0,88,36,70,68,36
460 SYMBOL 111,0,0,24,36,70,68,56
470 SYMBOL 112,0,0,80,40,36,120,32,32
480 SYMBOL 113,0,0,20,44,68,76,52,4
490 SYMBOL 114,0,0,88,36,32,32,16
500 SYMBOL 115,8,4,56,64,56,68,56
510 SYMBOL 116,8,16,56,16,16,24,16
520 SYMBOL 117,0,0,36,108,36,46,20
530 SYMBOL 118,0,0,36,106,34,100,24
540 SYMBOL 119,0,0,42,105,41,106,20
550 SYMBOL 120,0,0,104,20,16,16,44,64
560 SYMBOL 121,0,0,88,36,36,40,40,4
570 SYMBOL 122,0,0,56,68,24,68,36,24
580 SYMBOL 33,8,24,24,24,16,0,24
590 SYMBOL 34,36,108,72
600 SYMBOL 40,8,16,32,32,32,16,8
610 SYMBOL 41,32,16,8,8,8,16,32
620 SYMBOL 44,0,0,0,0,0,8,24,16
630 SYMBOL 45,0,0,4,24,32
640 SYMBOL 47,2,4,8,16,32,64,128
650 SYMBOL 60,4,8,16,8,4
660 SYMBOL 61,0,4,24,32,4,24,32
670 SYMBOL 62,32,16,8,4,8,16,32
680 SYMBOL 63,56,68,8,16,16,0,1
690 REM kaempfer
700 SYMBOL 132,1,3,7,4,2,3,13,31
710 SYMBOL 133,128,200,232,40,72,216,152,200
720 SYMBOL 134,31,31,31,13,14,2,2,14
730 SYMBOL 135,168,184,216,200,72,72,72,120
740 REM drache
750 SYMBOL 136,0,0,0,0,7,30,60,61
760 SYMBOL 137,0,0,0,1,129,240,252,254
770 SYMBOL 138,0,0,0,1,131,238,186,254
780 SYMBOL 139,0,0,0,0,3,30,126,255
790 SYMBOL 140,0,0,0,0,192,240,120,120
800 SYMBOL 141,57,123,127,68,0,0,0,0
810 SYMBOL 142,254,255,17,1,0,0,0,0
820 SYMBOL 143,84,125,41,147,146,254,124,63
830 SYMBOL 144,255,255,17,0,8,60,232,192
840 SYMBOL 145,56,188,252,68,0,0,0,0
850 SYMBOL 146,125,232,188,20,0,0,0,0
860 REM init
870 drach1$=CHR$(136)+CHR$(137)+CHR$(138)+CHR$(139)+CHR$(140)
880 drach2$=CHR$(141)+CHR$(142)+CHR$(143)+CHR$(144)+CHR$(145)
890 drach3$=CHR$(32)+CHR$(32)+CHR$(146)+CHR$(32)+CHR$(32)
900 man1$=CHR$(132)+CHR$(133)
910 man2$=CHR$(134)+CHR$(135)
920 GOSUB 1560
930 REM start
940 live=7:score=0:must=12:castle=1
950 ENV 1,=1,1000
960 xman=10:yman=130:TAG:PLOT xman,yman,2:PRINT man1$;:PLOT xman,yman-16,2:PRINT man2$;:TAGOFF:LOCATE 2,15:PEN 3:PRINT "Entering the Dragons' cave.";:TAG
970 FOR x=640 TO 0 STEP -2:MOVE x,0:DRAW x,INT(RND*100),1:MOVE x,400:DRAW x,400-INT(RND*100),1:NEXT
980 ORIGIN 0,100,0,640,300,100
990 PAPER 1:CLG 0
1000 TAGOFF:PEN 0:LOCATE 2,2:PRINT "DRAGONS:";score;:LOCATE 20,2:PRINT "LIVES:";live;:LOCATE 15,4:PRINT "CASTLES:";castle;:TAG
1010 xman=10:yman=30
1020 xdrach=INT(RND*500):ydrach=240
1030 IF xdrach<250 THEN MINus=2 ELSE MINus=-2
1040 TAG
1050 PLOT xman,yman,2:PRINT man1$;
1060 PLOT xman,yman-16,2:PRINT man2$;
1070 PLOT xdrach,ydrach,3:PRINT drach1$;
1080 PLOT xdrach,ydrach-16,3:PRINT drach2$;
1090 PLOT xdrach,ydrach-32,3:PRINT drach3$;
1100 SOUND 2,3000,5,15,1,1,6
1110 IF live<=0 THEN GOTO 1450
1120 IF score>=must THEN must=must+12:GOSUB 1660:GOTO 960
1130 REM init joy
1140 IF schild=1 THEN 1180
1150 IF JOY(0)=4 THEN xman=xman-6:IF xman<=0 THEN xman=0
1160 IF JOY(0)=8 THEN xman=xman+6:IF xman>=630 THEN xman=630 
1170 IF JOY(0)>=16 THEN  IF xman+26>xdrach+16 AND xman+26<xdrach+64 THEN SOUND 1,200,50,15,1,1:MOVE xman+26,yman:DRAW xman+26,ydrach,1:DRAW xman+26,yman,0:GOTO 1250 ELSE SOUND 1,200,50,15,1,1:MOVE xman+26,yman:DRAW xman+26,400,1:DRAW xman+26,yman,0
1180 IF JOY(0)=1 THEN schild=1:man1$=CHR$(222)+CHR$(223):man2$=CHR$(134)+CHR$(135)
1190 IF JOY(0)=2 THEN schild=0:man1$=CHR$(132)+CHR$(133):man2$=CHR$(134)+CHR$(135)
1200 IF RND<=0.2 THEN SOUND 4,4000,20,15,10,10,10:MOVE xdrach+32,ydrach-16:DRAW xdrach,0,1:MOVE xdrach+32,ydrach-16:DRAW xdrach+62,0,1:MOVE xdrach+32,ydrach-16:DRAW xdrach,0,0:MOVE xdrach+32,ydrach-16:DRAW xdrach+62,0,0:GOSUB 1370
1210 xdrach=xdrach+MINus
1220 ydrach=ydrach-2
1230 IF ydrach<=30 THEN 1410
1240 GOTO 1050
1250 REM dead dragon
1260 drach2$=CHR$(141)+CHR$(142)+CHR$(238)+CHR$(144)+CHR$(145)
1270 PLOT xdrach,ydrach,3:PRINT drach1$;:PLOT xdrach,ydrach-16,3:PRINT drach2$;:PLOT xdrach,ydrach-32,3:PRINT drach3$;
1280 SOUND 1,INT(RND*1000+2000),3,15,10,6,10:SOUND 2,INT(RND*1000+2000),3,15
1290 PLOT xman,yman,2:PRINT man1$;:PLOT xman,yman-16,2:PRINT man2$;
1300 IF JOY(0)=4 THEN xman=xman-5:IF xman<=0 THEN xman=0
1310 IF JOY(0)=8 THEN xman=xman+5:IF xman>=630 THEN xman=630
1320 ydrach=ydrach-2
1330 IF ydrach<=40 THEN IF xman+26>xdrach+16 AND xman+26<xdrach+64 THEN live=live-1:CLG:score=score+1:GOTO 1360
1340 IF ydrach<=30 THEN score=score+1:GOTO 1360
1350 GOTO 1270
1360 SOUND 4,4000,100,15,10,6,6:CLG 1:CLG 2:CLG 3:CLG 0:TAGOFF:PEN 0:LOCATE 2,2:PRINT "DRAGONS:";score;:LOCATE 20,2:PRINT "LIVES:";live;:TAG:drach2$=CHR$(141)+CHR$(142)+CHR$(143)+CHR$(144)+CHR$(145):GOTO 1020
1370 REM fire
1380 IF xman>xdrach-16 AND xman<xdrach+46 AND schild=0 THEN OUT &FBFE,32:live=live-1:TAGOFF:LOCATE 20,2:PEN 0:PRINT "LIVES:";live;:TAG:OUT &FBFE,0
1390 RETURN
1400 REM dragon kills you
1410 live=live-1:TAGOFF:PEN 0:LOCATE 20,2:PRINT "LIVES:";live;:TAG
1420 FOR x1=xdrach TO xman STEP 2*(SGN(xman-xdrach)):SOUND 4,3000,3,15,10,6,6:PLOT x1,ydrach,3:PRINT drach1$;:PLOT x1,ydrach-16,3:PRINT drach2$;:PLOT x1,ydrach-32,3:PRINT drach3$;:NEXT
1430 CLG 0:xman=10:yman=30:GOTO 1020
1440 REM game over
1450 TAGOFF:MODE 1
1460 PEN 2:PAPER 0
1470 PRINT:PRINT "The Quest is over!":PRINT:PRINT
1480 PRINT " Poor knight! You don't get to next      castle."
1490 PRINT " Your aim has not been reached, because  the dragons' attack was to strong for   you."
1500 PRINT:PRINT
1510 PRINT:PRINT:PEN 2:PRINT "    ";drach1$:PRINT "    ";drach2$:PRINT "    ";drach3$
1520 PRINT :PRINT score;" Dragons are killed.":PRINT:PRINT:GOSUB 1930
1530 PRINT " Press SPACE to retry."
1540 k$=INKEY$:IF k$=" " THEN live=7:score=0:castle=0:GOSUB 1560:GOTO 940 ELSE 1540
1550 REM initiation
1560 MODE 1
1570 PAPER 0
1580 PEN 2
1590 PRINT drach1$:PRINT drach2$+"              The Dragonslayer":PRINT drach3$
1600 PRINT:PRINT "                         ";CHR$(164);"1986 by GMsoft":PRINT:PRINT
1610 PRINT "Once upon a time, there was a herd of   dragons, which killed a lot of people.  Your duty is to kill as much dragons as you can, to release the Kingdom from thepower of the dragons."
1620 PRINT
1630 PRINT:GOSUB 1930
1640 PRINT "Press SPACE to begin."
1650 k$=INKEY$:IF k$=" " THEN GOSUB 1660:RETURN ELSE 1650
1660 REM castle
1670 MODE 1:TAGOFF
1680 INK 0,0:INK 1,19:INK 2,15:INK 3,9
1690 PEN 2:PAPER 0
1700 PRINT 
1710 PRINT "    [[  [[  [[  [[      [[  [[  [[  [["
1720 PRINT "     [[[[[[[[[[[[        [[[[[[[[[[[["
1730 PRINT "     [[[[[[[[[[[[        [[[[[[[[[[[["
1740 PRINT "     [[[  [[  [[[        [[[  [[  [[["
1750 PRINT "     [[[  [[  [[[        [[[  [[  [[["
1760 PRINT "    [[[[[[[[[[[[[[      [[[[[[[[[[[[[["
1770 PRINT "     [[[[[[[[[[[[        [[[[[[[[[[[["
1780 PRINT "     [[[[[[[[[[[[        [[[[[[[[[[[["
1790 PRINT "     [[[[    [[[[        [[[[    [[[["
1800 PRINT "     [[[      [[[        [[[[    [[[["
1810 PRINT "     [[        [[       [[[[[[[[[[[[[["
1820 PRINT "     [[        [[        [[[[[[[[[[[["
1830 PRINT "[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[["
1840 PRINT "[[  [[[  [[[  [[[  [[[  [[[ [[[  [[[ [["
1850 PRINT "[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[["
1860 PRINT:PRINT 
1870 PRINT "[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[["
1880 PRINT "[[[  [[[  [[[  [[[  [[[  [[[ [[[  [[[ ["
1890 PRINT "[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[["
1900 PEN 3:PRINT " After passing the castle, you have to  kill 12 dragons to reach the next       castle. If you get to the next castle,  you will get an extra live."
1910 FOR LOC=1 TO 38:PEN 2:LOCATE LOC,17:PRINT " ";CHR$(132);CHR$(133);:LOCATE LOC,18:PRINT " ";CHR$(134);CHR$(135);:FOR T=1 TO 100:NEXT T:NEXT
1920 castle=castle+1:live=live+1:MODE 1:INK 0,0:INK 1,19:INK 2,15:INK 3,9:TAG:RETURN
1930 ENV 1,=2,6000
1940 ENV 2,=1,4000
1950 ENV 3,=10,2000
1960 RESTORE:FOR x=1 TO 34
1970 READ a,b
1980 SOUND 1,a*2,b/2,15,1
1990 SOUND 2,a,b/3,15,3
2000 SOUND 4,a,b/1.5,15,2
2010 NEXT
2020 DATA 758,100,851,100,956,200,758,100,851,100,956,100,1012,200,758,100,851,100,956,200,716,100,956,200
2030 DATA 758,100,851,100,956,100,1012,200,758,100,956,200,758,100,851,100,956,100,1012,200
2040 DATA 758,100,851,100,956,200,758,100,851,100,956,100,1012,200,758,100,851,100,956,200,716,100,956,200
2050 ENV 1,=1,0
2060 ENV 3,=1,0
2070 ENV 2,=1,0
2080 RETURN