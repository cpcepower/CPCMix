10 DIM voicel(34),lenl(34),voi(21),leni(21),vot(15),lent(15),voiw(17),lenw(17),r$(14),r%(14),dr$(14,4),nr%(14,4),k%(23),check(14),place$(6,20)
15 SPEED KEY 255,255:REM dont include this line until the programme is debugged and running satisfactorily
20 REM:Title screen & music
25 GOSUB 2310:GOSUB 1990
30 RANDOMIZE TIME
35 CLS: INPUT "Do you want instructions (y/n)";ins$:IF ins$<>"y"AND ins$<>"n" THEN 35
40 IF ins$="n"THEN 45 ELSE GOSUB 2460
45 BORDER 15:PAPER 2:INK 2,20:PEN 3:INK 3,6:CLS
50 WINDOW#1,18,40,6,22:PEN #1,3:PAPER#1,2:CLS#1
55 WINDOW#2,1,40,1,5:PAPER#2,1:INK 1,26:PEN #2,0:INK 0,1:CLS #2
60 WINDOW#6,14,17,6,25:PAPER#6,2:PEN#6,0:CLS#6
65 WINDOW#7,18,35,23,25:PAPER#7,2:PEN#7,0:CLS#7
70 WINDOW #3,1,17,6,9:PAPER #3,2:CLS #3:PEN #3,0:WINDOW #4,1,17,10,17:PAPER #4,2:CLS #4:PEN #4,0:WINDOW #5,1,17,18,25:PAPER #5,2:CLS #5:PEN #5,0
75 DEF FNr(x)=INT(RND(1)*x)+1
80 GOSUB 580
85 CLS#2:PRINT #2,"Won't be long-setting up the game"
90 REM:initialisation
95 p=FNr(8):m%=p
100 IF p>4 THEN fp$="woman's":fq$="man's":GOTO 110
105 fp$="man's":fq$="woman's"
110 p=FNr(7):sa%=p
115 p=FNr(4):IF m%<5 THEN a%=p+4 ELSE a%=p
120 FOR x=1 TO 3
125 p=FNr(8):IF d%(p)=1 THEN 125
130 d%(p)=1
135 NEXT
140 p=FNr(14):IF p=6 OR p=11 OR p=1 THEN 140
145 b%=p
150 x=1:FOR y=1 TO 14:check(x)=0:NEXT
155 WHILE x<4:p=FNr(14):IF p=6 OR p=11 THEN 155
160 IF check(p)<>0 THEN 155
165 w%(x)=p:check(p)=1: x=x+1
170 WEND
175 x=1: WHILE x<8
180 p=FNr(14):IF p=6 OR p=11 OR p=1 THEN 180
185 IF x=sa% THEN 195
190 v%(x)=p
195 x=x+1
200 WEND
205 x=1:WHILE x<9
210 p=FNr(14):IF p=6 OR p=11 OR p=1 THEN 225
215 s%(x)=p
220 x=x+1
225 WEND
230 x=1:WHILE x<7
235 p=FNr(12):IF k%(p)=6 THEN 245
240 k%(p)=6:x=x+1
245 WEND
250 FOR x=1 TO 12
255 IF k%(x)=0 THEN k%(x)=11
260 NEXT
265 p=FNr(14):IF p=6 OR p=11 OR p=1 THEN 265
270 k%(13)=p
275 FOR x=1 TO np%:pl%(x)=1:NEXT
280 FOR x=1 TO np%:pc%(x)=0:pf%(x)=0:NEXT
285  mw%=FNr(3)
290 IF mw%=1 THEN md$="SHOT"
295 IF mw%=2 THEN md$="CLUBBED TO DEATH"
300 IF mw%=3 THEN md$="STABBED"
305 x=1:fp%(mw%)=1:p$(mw%)=fp$
310 WHILE x<3
315 p=FNr(3):IF fp%(p)=1 THEN 315
320 IF x=1 THEN p$(p)=fp$
325 IF x=2 THEN p$(p)=fq$
330 fp%(p)=1
335 x=x+1:WEND
340 FOR x=1 TO 14:FOR y=1 TO 4:READ dr$(x,y):NEXT:NEXT
345  FOR x=1 TO 14:FOR y=1 TO 4:READ nr%(x,y):NEXT:NEXT
350 FOR x=1 TO 3:READ w$(x):NEXT
355 FOR x=1 TO 7:READ v$(x):NEXT
360 FOR x=1 TO 8:READ s$(x):NEXT
365 FOR x=1 TO 14:READ r$(x):NEXT
370 FOR x=1 TO 14:r%(x)=x:NEXT
375 FOR x=1 TO 14:check(x)=0:NEXT
380 sw(m%)=b%:sw(a%)=b%:IF m%<5 THEN qq=0 ELSE qq=4
385 x=1:WHILE x<4
390 y=FNr(4)+qq:IF sw(y)<>0 THEN 390
395 z=FNr(14):IF z=11 OR z=6 OR z=b% THEN 395
400 IF check(z)=1 THEN 395
405 check(z)=1:sw(y)=z:x=x+1
410 WEND
415 IF m%<5 THEN pp=4 ELSE pp=0
420 FOR x=1 TO 14:check(x)=0:NEXT
425 x=1:WHILE x<4
430 y=FNr(4)+pp:IF sw(y)<>0 THEN 430
435 p=FNr(4)+qq:IF sw(p)=b% THEN 435
440 IF check(sw(p))=1 THEN 435
445 check(sw(p))=1:sw(y)=sw(p):sk(p)=y:sk(y)=p:x=x+1
450 WEND
455 sk(m%)=a%:sk(a%)=m%
460 x=1
465 FOR y=1 TO 8:sk%(y)=0:NEXT:WHILE x<3
470 p=FNr(4):q=FNr(4):IF p=q THEN 470
475 IF sk%(p)<>0 OR sk%(q)<>0 THEN 470
480 sk%(p)=q:sk%(q)=p
485 x=x+1: WEND
490 x=1:WHILE x<3
495 p=FNr(4)+4:q=FNr(4)+4:IF p=q THEN 495
500 IF sk%(p)<>0 OR sk%(q)<>0 THEN 495
505 sk%(p)=q:sk%(q)=p
510 x=x+1
515 WEND
520 IF sw(sk%(m%))=sw(sk%(a%)) THEN 460
525 PEN 0: LOCATE 38,23:PRINT"N":LOCATE 37,24:PRINT"W";CHR$(159);"E":LOCATE 38,25:PRINT"S"
530 FOR x=1 TO 3
535 LOCATE #3,1,x:PRINT #3,x;w$(x)
540 NEXT
545 FOR x=1 TO 7
550 LOCATE #4,1,x:PRINT #4,x;v$(x)
555 NEXT
560 FOR x=1 TO 8
565 LOCATE#5,1,x:PRINT #5,x;s$(x)
570 NEXT
575 GOTO 650
580 GOSUB 1765:CLS#2:INPUT#2,"How many players,please (1 to 6)";np%
585 IF np%<0 OR np%>6 THEN 580
590 PRINT#2,"The computer will decide who goes first"
595 GOSUB 1765:INPUT#2,"How many questions to be allowed on any one turn(max 5)";nqr
600 IF nqr<0 OR nqr>5 THEN 595
605 FOR x=1 TO np%
610 GOSUB 1765:CLS#2:PRINT#2,"Player number";x:INPUT#2,"Please type your name (max 8 letters)",in$(x)
615 pn$(x)=UPPER$(in$(x))
620 IF LEN(pn$(x))>8 THEN 610
625 GOSUB 1765:CLS#2:PRINT#2,pn$(x):INPUT #2,"Without letting the other players see   type a 2 lettercode for identification, please,",code$(x)
630 CLS#2
635 NEXT
640 RETURN
645 REM:main game loop
650 f=0:pn=FNr(np%)
655 WHILE f=0
660 pn=pn+1:IF pn>np% THEN pn=1
665 IF pr(pn)=1 THEN 825
670 GOSUB 1765:CLS#2:PRINT#2,pn$(pn):INPUT#2, "Please type in your code letters";cl$:IF cl$<>code$(pn) THEN 670
675 PRINT#2,"Looking for the floor plan"
680 IF pf%(pn)=0 THEN GOSUB 1780 ELSE GOSUB 1885
685 yy=pl%(pn)
690 CLS#6:FOR x=1 TO 3:LOCATE#6,1,x:PRINT#6,place$(pn,x):NEXT
695 FOR x=1 TO 7:LOCATE#6,1,x+4:PRINT#6,place$(pn,x+3):NEXT
700 FOR x=1 TO 8:LOCATE#6,1,x+12:PRINT#6,place$(pn,x+10):NEXT
705 pv$(pn)=pv$(pn)+LEFT$(r$(yy),1)
710 CLS#7:PRINT#7,pv$(pn)
715 IF bf%(pn)=1 THEN LOCATE#7,6,3:PRINT#7,"BODY IS IN ";LEFT$(r$(b%),1)
720 CLS#2:PRINT#2,"You are standing in the ";r$(yy) :GOSUB 1750:GOSUB 970
725 GOSUB 1750
730 CLS#2:fq=0:qa=0:qx=0
735 PRINT#2,"1)QUESTION SUSPECT  2)SEARCH  3)ACCUSE"
740 PRINT#2,"4)NOTHING  5)PICK UP  6)FILCH"
745 GOSUB 1765:INPUT#2,"Which option doyou want(1-6)";op%
750 IF op%<1 OR op%>6 THEN PRINT#2,"Try again":GOTO 730
755 ON op% GOSUB 1200,1320,1470,1705,1340,1410
760 IF fq=1 THEN 730
765 IF pr(pn)=1 THEN 825
770 IF f=1 THEN 825
775 CLS#2:PRINT#2,"Looking for the floor plan":IF pf%(pn)=0 THEN GOSUB 1780 ELSE GOSUB 1885
780 CLS#2: fd=0:PRINT#2,"You are standing in the ";r$(yy)
785 PRINT#2, "You can move ";:
790 FOR x=1 TO 4
795 IF dr$(yy,x)<>"Q" THEN PRINT #2,dr$(yy,x);" ";
800 NEXT
805 GOSUB 1765:LOCATE#2,1,3: INPUT#2,"Move to another room (y/n)";ans$
810 IF ans$<>"y" AND ans$<>"n" THEN 805
815 IF ans$="y" THEN GOSUB 895:IF fd=1 THEN 780 ELSE yy=pl%(pn):CLS#2:PRINT#2,"You are moving to the ";r$(yy):GOSUB 1750
820 CLS#1:CLS#2:CLS#6:CLS#7:qx=0:qa=0: GOSUB 2295
825 WEND
830 CLS:LOCATE 12,3:PRINT pn$(pn);" YOU HAVE WON !"
835 GOSUB 2305
840 PRINT :PRINT
845 PRINT "TO HELP THE OTHER CRIME BUSTERS THIS IS"
850 PRINT"THE SOLUTION"
855 PRINT:PRINT"The murderer was the ";s$(m%)
860 PRINT"The accomplice was the "s$(a%)
865 PRINT"The murder weapon was the ";w$(mw%)
870 PRINT"The stolen article was the ";v$(sa%)
875 PRINT"The body was in the ";r$(b%)
880 PRINT"The "w$(mw%);" was in the ";r$(mw%)
885 PRINT:PRINT"Hope you enjoyed playing CRIME BUSTERS !"
890 GOTO 890
895 CLS#2
900 GOSUB 1765:INPUT#2,"Type initial letter of the direction youwish to move";dir$
905 IF dir$="n"AND dr$(pl%(pn),1)="N" THEN xx=1:GOTO  950
910 IF dir$="s"AND dr$(pl%(pn),2)="S" THEN xx=2:GOTO 950
915 IF dir$="e"AND dr$(pl%(pn),3)="E" THEN xx=3:GOTO 950
920 IF dir$="w"AND dr$(pl%(pn),4)="W" THEN xx=4:GOTO  950
925 IF dir$="u"AND dr$(pl%(pn),1)="UP" THEN xx=1:pf%(pn)=1:GOTO 950
930 IF dir$="d"AND dr$(pl%(pn),1)="DOWN" THEN xx=1:pf%(pn)=0:GOTO 950
935 CLS#2:PRINT#2,"You can't move that way":FOR x=1 TO 1500:NEXT
940 PRINT #2,"You are standing in the ";r$(yy)
945 GOTO 900
950 IF nr%(yy,xx)>100 THEN GOSUB 1105:GOTO 960
955 b=nr%(yy,xx)
960 pl%(pn)=b
965 RETURN
970 CLS#1:CLS#2
975 fl=0
980 IF pc%(pn)=0 THEN PRINT#2,"You are carrying nothing":GOTO 995
985 IF pc%(pn)=13 THEN PRINT#2,"You are carrying the skeleton key":GOTO 995
990 PRINT#2,"You are carrying the ";r$(pc%(pn));" key"
995 PRINT#1,"You can see"
1000 fl=0
1005 FOR x=1 TO 7:IF v%(x)=0 THEN 1015
1010 IF v%(x)=r%(yy) THEN PRINT#1,CHR$(32);v$(x):fl=1:place$(pn,x+3)=LEFT$(r$(yy),1)
1015 NEXT
1020 PRINT#1
1025 FOR x=1 TO 12
1030 IF k%(x)=r%(yy) THEN PRINT#1,x;r$(x);" key":fl=1
1035 NEXT
1040 IF k%(13)=r%(yy)THEN PRINT#1,"13 SKELETON key":fl=1
1045 PRINT#1
1050 fb=0: FOR x=1 TO 8
1055 IF s%(x)=r%(yy) THEN PRINT#1,CHR$(32);s$(x):fl=1:place$(pn,x+10)=LEFT$(r$(yy),1)
1060 NEXT
1065 FOR x=1 TO np%
1070 IF x=pn THEN 1080
1075 IF pl%(x)=r%(yy) THEN PRINT#1,x;pn$(x):fl=1
1080 NEXT
1085 PRINT #1
1090 IF b%=r%(yy)THEN PRINT#1,CHR$(32);"The cook's body.":PRINT#1," She has been ";md$:fl=1:bf%(pn)=1
1095 IF fl=0 THEN PRINT#1,"NOTHING OF INTEREST"
1100 RETURN
1105 b=nr%(yy,xx)-100:a=yy
1110 IF a*b=3 THEN d=1
1115 IF a*b=12 THEN d=2
1120 IF a*b=28 THEN d=3
1125 IF a*b=42 THEN d=4
1130 IF a*b=10 THEN d=5
1135 IF a*b=110 THEN d=6
1140 IF a*b=96 THEN d=7
1145 IF a*b=72 THEN d=8
1150 IF d%(d)=0 THEN 1190
1155 IF d%(d)=1 THEN CLS#2:IF pc%(pn)<>a AND pc%(pn)<>b AND pc%(pn)<>13 THEN PRINT#2,"The door is locked and you haven't a key":fd=1:GOSUB 1750:RETURN
1160 IF pc%(pn)=13 THEN PRINT #2,"The door is locked but the skeleton key will open it":d%(d)=0:GOSUB 1750:GOTO 1195
1165 PRINT#2,"the door is locked but you have the ";r$(pc%(pn));" key"
1170 GOSUB 1765:INPUT#2,"Do you want to lock the door behind you (y/n)";ld$
1175 IF ld$<>"y" AND ld$<>"n" THEN 1170
1180 IF ld$="y" THEN d%(d)=1:GOTO 1195
1185 d%(d)=0:GOTO 1195
1190 IF pc%(pn)=a OR pc%(pn)=b THEN PRINT#2,"You have the ";r$(pc%(pn));" key":GOTO 1170
1195 RETURN
1200 FOR x=1 TO 8:IF s%(x)=pl%(pn) THEN vv=1
1205 NEXT
1210 IF vv=0 THEN PRINT#2,"There are no suspects in this room":fq=1:GOSUB 1750:RETURN
1215 WHILE qa<nqr:GOSUB 1765:CLS#2: INPUT#2,"Which suspect do you wish to question   (1-8).Type 9 if no further questions";qs:IF qs<1 OR qs>9 THEN 1215
1220 IF qs=9 THEN qa=nqr:GOTO 1315
1225 IF s%(qs)<>pl%(pn) THEN PRINT#2,"The ";s$(qs);" is not in this room":GOSUB 1750:GOTO 1215
1230 CLS#2:PRINT#2,"a) WHERE IS THE....(1-8)"
1235 PRINT#2,"b) AT THE TIME OF THE MURDER WHERE WAS"
1240 PRINT#2,"THE....(1-8)
1245 GOSUB 1765:PRINT#2,"Which question do you want to put to the ";s$(qs);" (a or b)";:INPUT#2,wq$
1250 IF wq$<>"a"AND wq$<>"b" THEN 1230
1255 GOSUB 1765:IF wq$="a" THEN CLS#2: INPUT#2,"Whose whereabouts do you wish to know (1-8)";wh: PRINT#2,"The ";s$(wh);" is in the ";r$(s%(wh)):GOTO 1305
1260 CLS#2:GOSUB 1765:INPUT#2,"Whose whereabouts at the time of the murder do you wish to know (1-8)";wt
1265 IF wt=qs THEN PRINT#2,"I'm not telling you !" :GOTO 1305
1270 CLS#2:IF sk(qs)<>wt AND sk%(qs)<>wt THEN PRINT#2,"The "; s$(qs)" doesn't know"
1275 IF sk(qs)=wt AND qs=m% THEN PRINT#2,"The ";s$(wt);" was in the ";r$(sw(sk%(qs))):GOTO 1305
1280 IF sk%(qs)=wt AND qs=m% THEN PRINT#2,"The ";s$(wt);" was in the ";r$(b%):GOTO 1305
1285 IF sk(qs)=wt AND qs=a% THEN PRINT#2,"The ";s$(wt);" was in the ";r$(sw(sk%(qs))):GOTO 1305
1290 IF sk%(qs)=wt AND qs=a% THEN PRINT#2,"The ";s$(wt);" was in the ";r$(b%):GOTO 1305
1295 IF sk(qs)=wt THEN PRINT#2,"The ";s$(wt);" was in the "; r$(sw(wt))
1300 IF sk%(qs)=wt THEN PRINT#2,"The ";s$(wt);" was in the ";r$(sw(wt))
1305 qa=qa+1 :GOSUB 1750
1310 WEND
1315 RETURN
1320 CLS#2:kk=0: FOR x=1 TO 3:IF w%(x)=pl%(pn) THEN PRINT#2,"You find the ";w$(x):kk=1:PRINT#2,"On it are a ";p$(x);" fingerprints":place$(pn,x)=LEFT$(r$(yy),1)+CHR$(32)+LEFT$(p$(x),1)
1325 NEXT
1330 IF kk=0 THEN PRINT#2,"You find nothing"
1335 GOSUB 1750:RETURN
1340 CLS#2:fk=0:FOR x=1 TO 13:IF k%(x)=r%(yy) THEN fk=1
1345 NEXT
1350 IF fk=0 THEN PRINT#2,"There are no keys to pick up":GOSUB 1750:RETURN
1355 GOSUB 1765:INPUT#2,"Which key do you want to pick up(1-13)";kp
1360 IF k%(kp)<>r%(yy) THEN PRINT#2,"The ";r$(kp);" key is not in this room":GOSUB 1750:RETURN
1365 IF kp=13 THEN PRINT#2,"You have picked up the SKELETON key":GOTO 1375
1370 PRINT#2,"You have picked up the ";r$(kp);" key"
1375 dk=pc%(pn):IF dk=0 THEN 1395
1380 IF dk<13 THEN PRINT#2,"You have dropped the ";r$(dk);" key":GOTO 1390
1385 IF dk=13 THEN PRINT#2,"You have dropped the SKELETON key"
1390 k%(dk)=yy
1395 pc%(pn)=kp
1400 k%(kp)=0
1405 GOSUB 1750:RETURN
1410 fp=0:CLS#2:FOR x=1 TO np%:IF pl%(x)=yy AND x<>pn THEN fp=1
1415 NEXT
1420 IF fp=0 THEN PRINT#2,"There are no players here":GOSUB 1750:RETURN
1425 GOSUB 1765:INPUT#2,"From which player do you want to filch ?Type number shown before their name";pf
1430 IF pl%(pf)<>r%(yy) THEN PRINT#2,pn$(pf);" is not here":GOSUB 1750:RETURN
1435 IF pc%(pf)=0 THEN PRINT#2,pn$(pf);" is not carrying anything":GOSUB 1750:RETURN
1440 IF pc%(pf)<13 THEN PRINT#2,"You have filched the ";r$(pc%(pf));" key":GOTO 1450
1445 IF pc%(pf)=13 THEN PRINT#2,"You have filched the SKELETON key":GOTO 1450
1450 IF pc%(pn)=0 THEN 1465
1455 IF pc%(pn)<13 THEN PRINT#2,"You have dropped the ";r$(pc%(pn));" key":k%(pc%(pn))=yy
1460 IF pc%(pn)=13 THEN PRINT#2"You have dropped the SKELETON KEY":k%(13)=yy
1465 pc%(pn)=pc%(pf):pc%(pf)=0:GOSUB 1750:RETURN
1470 CLS#2:PRINT#2,"YOU MUST GIVE THE FOLLOWING INFORMATION"
1475 PRINT#2,"CORRECTLY:  MURDERER,ACCOMPLICE,WEAPON,"
1480 PRINT#2,"STOLEN OBJECT,LOCATIONS OF BODY & WEAPON";
1485 GOSUB 1765:INPUT#2,"Are you prepared (y/n)";yp$
1490 IF yp$<>"y" AND yp$<>"n" THEN 1485
1495 IF yp$="n" THEN fq=1:RETURN
1500 wa=0
1505 GOSUB 1765:CLS#2:INPUT#2,"Type in the number of the MURDERER (1-8)";mg
1510 IF mg<1 OR mg>8 THEN 1505
1515 GOSUB 1765: PRINT#2,"You say the murderer is the ";s$(mg):INPUT#2,"(y/n)";ans$
1520 IF ans$<>"y"AND ans$<>"n" THEN 1515
1525 IF ans$="n" THEN 1505
1530 IF s%(mg)<>pl%(pn) THEN PRINT #2,"You must be in the same room as the suspect you accuse":fq=1:GOSUB 1750:RETURN
1535 IF mg<>m% THEN wa=1
1540 GOSUB 1765: CLS#2:INPUT#2,"Type in the number of the ACCOMPLICE (1-8)";ag
1545 IF ag<1 OR ag>8 THEN 1540
1550 GOSUB 1765: PRINT#2,"You say the accomplice is the ";s$(ag):INPUT#2,"(y/n)";ans$
1555 IF ans$<>"y"AND ans$<>"n" THEN 1550
1560 IF ans$="n" THEN 1540
1565 IF ag<>a% THEN wa=1
1570 GOSUB 1765:CLS#2:INPUT#2,"Type in the number of the WEAPON (1-3)";wg
1575 IF wg<1 OR wg>3 THEN 1570
1580 GOSUB 1765: PRINT#2,"You say the weapon is the ";w$(wg):INPUT#2,"(y/n)";ans$
1585 IF ans$<>"y"AND ans$<>"n" THEN 1580
1590 IF ans$="n" THEN 1570
1595 IF wg<>mw% THEN wa=1
1600 GOSUB 1765:CLS#2:INPUT#2,"Type in the number of the STOLEN OBJECT (1-7)";og
1605 IF og<1 OR og>7 THEN 1600
1610 GOSUB 1765:PRINT#2,"You say the object is the ";v$(og):INPUT#2,"(y/n)";ans$
1615 IF ans$<>"y"AND ans$<>"n" THEN 1610
1620 IF ans$="n" THEN 1600
1625 IF og<>sa% THEN wa=1
1630 CLS#1:FOR x= 1 TO 14:PRINT#1,x;") ";r$(x):NEXT
1635 GOSUB 1765:CLS#2:INPUT#2,"In which room was the body (1-14)";gb
1640 IF gb<1 OR gb>14 THEN 1635
1645 GOSUB 1765:PRINT#2,"You say the body was in the ";r$(gb):INPUT#2,"(y/n)";ans$
1650 IF ans$<>"y"AND ans$<>"n" THEN 1645
1655 IF ans$="n" THEN 1635
1660 IF gb<>b% THEN wa=1
1665 GOSUB 1765:CLS#2:INPUT#2,"In which room was the weapon (1-14)";gw
1670 IF gw<1 OR gw>14 THEN 1665
1675 GOSUB 1765:PRINT#2,"You say the weapon was in the ";r$(gw):INPUT#2,"(y/n)";ans$
1680 IF ans$<>"y"AND ans$<>"n" THEN 1675
1685 IF ans$="n" THEN 1665
1690 IF gw<>w%(mw%) THEN wa=1
1695 IF wa=0 THEN f=1:RETURN
1700 IF wa=1 THEN GOSUB 1710
1705 RETURN
1710 CLS#1:PRINT#1, pn$(pn);" YOU HAVE FAILED"
1715 PRINT#1:PRINT#1,"YOU ARE NO LONGER A"
1720 PRINT #1,"CRIME BUSTER !"
1725 PRINT#1:PRINT#1,"IN FACT YOU'RE OUT OF  THE GAME !"
1730 GOSUB 2300
1735 pr(pn)=1:pl%(pn)=0
1740 GOSUB 1750
1745 RETURN
1750 PRINT#2,"PRESS SPACE BAR TO CONTINUE"
1755 IF INKEY(47)<>0 THEN 1755
1760 RETURN
1765 cb$=INKEY$:IF cb$<>"" THEN 1765
1770 RETURN
1775 REM:ground floor plan
1780 CLS#1:LOCATE#1,1,1:INK 3,20
1785 PRINT#1,CHR$(150);STRING$(8,154);CHR$(158);STRING$(12,154);CHR$(156);
1790 PRINT#1,CHR$(149);"UTILITY ";CHR$(149);"CONSERVATORY";CHR$(149);
1795 PRINT#1,CHR$(149);"  ROOM  ";CHR$(240);SPACE$(12);CHR$(149);
1800 PRINT#1,CHR$(149);SPACE$(8);CHR$(151);CHR$(154);CHR$(158);CHR$(154);CHR$(154);CHR$(158);STRING$(3,154);CHR$(241);STRING$(3,154);CHR$(157);
1805 PRINT#1,CHR$(151);STRING$(7,154);CHR$(32);CHR$(159);CHR$(154);CHR$(157);SPACE$(2);CHR$(149);SPACE$(7);CHR$(149);
1810 PRINT#1,CHR$(149);SPACE$(8);CHR$(151);CHR$(154);CHR$(157);SPACE$(2);CHR$(149);SPACE$(7);CHR$(149);
1815 PRINT#1,CHR$(149);SPACE$(8);CHR$(151);CHR$(154);CHR$(157);SPACE$(2);CHR$(149);"SITTING";CHR$(149);
1820 PRINT#1,CHR$(149);SPACE$(8);CHR$(151);CHR$(154);CHR$(157);SPACE$(2);CHR$(149);" ROOM  ";CHR$(149);
1825 PRINT#1,CHR$(149);"KITCHEN ";CHR$(151);CHR$(154);CHR$(153);SPACE$(2);CHR$(149);SPACE$(7);CHR$(149);
1830 PRINT#1,CHR$(149);SPACE$(21);CHR$(149);
1835 PRINT#1,CHR$(151);STRING$(3,154);CHR$(241);STRING$(3,154);;CHR$(158);CHR$(153);SPACE$(4);CHR$(149);SPACE$(7);CHR$(149);
1840 PRINT#1,CHR$(149);SPACE$(7);CHR$(149);" HALL";CHR$(151);STRING$(3,154);CHR$(241);STRING$(3,154);CHR$(157);
1845 PRINT#1,CHR$(149);"REFECT-";CHR$(149);SPACE$(5);CHR$(149);SPACE$(7);CHR$(149);
1850 PRINT#1,CHR$(149);"ORY    ";CHR$(151);STRING$(2,154);CHR$(32);STRING$(2,154);CHR$(157);"MORNING";CHR$(149);
1855 PRINT#1,CHR$(149);SPACE$(7);CHR$(149);"FOYER";CHR$(149);" ROOM  ";CHR$(149);
1860 PRINT#1,CHR$(149);SPACE$(13);CHR$(240);SPACE$(7);CHR$(149);
1865 PRINT#1,CHR$(147);STRING$(7,154);CHR$(155);STRING$(5,154);CHR$(155);STRING$(7,154);CHR$(153);
1870 INK 3,6
1875 RETURN
1880 REM :1st floor plan
1885 CLS#1:LOCATE#1,1,1:INK 3,20
1890 PRINT#1,CHR$(150);STRING$(8,154);CHR$(158);STRING$(4,154);CHR$(158);STRING$(7,154);CHR$(156);
1895 PRINT#1,CHR$(149);SPACE$(9);"  P ";SPACE$(8);CHR$(149);
1900 PRINT#1,CHR$(149);SPACE$(8);CHR$(149);"  A ";CHR$(149);" GUEST ";CHR$(149);
1905 PRINT#1,CHR$(149);" BEDROOM";CHR$(151);CHR$(154);CHR$(156);"S ";CHR$(149);SPACE$(7);CHR$(149);
1910 PRINT#1,CHR$(149);SPACE$(8);CHR$(151);CHR$(154);CHR$(157);"S ";CHR$(149);" ROOM  ";CHR$(149);
1915 PRINT#1,CHR$(149);SPACE$(8);CHR$(151);CHR$(154);CHR$(157);"A ";CHR$(149);SPACE$(7);CHR$(149);
1920 PRINT#1,CHR$(149);SPACE$(8);CHR$(151);CHR$(154);CHR$(157);"G ";CHR$(149);SPACE$(7);CHR$(149);
1925 PRINT#1,CHR$(149);SPACE$(8);CHR$(151);CHR$(154);CHR$(157);"E ";CHR$(151);STRING$(3,154);CHR$(241);STRING$(3,154);CHR$(157);
1930 PRINT#1,CHR$(149);SPACE$(8);CHR$(149);SPACE$(4);CHR$(149);"LINEN  ";CHR$(149);
1935 PRINT#1,CHR$(149);SPACE$(8);CHR$(149);CHR$(32);CHR$(150);CHR$(154);CHR$(32);CHR$(157);"ROOM";SPACE$(3);CHR$(149);
1940 PRINT#1,CHR$(151);STRING$(3,154);CHR$(241);STRING$(4,154);CHR$(155);CHR$(154);CHR$(157);SPACE$(10);CHR$(149);
1945 PRINT#1,CHR$(149);SPACE$(10);CHR$(149);SPACE$(2);CHR$(147);STRING$(7,154);CHR$(157);
1950 PRINT#1,CHR$(149);" DRESSING ";CHR$(149);SPACE$(10);CHR$(149);
1955 PRINT#1,CHR$(149);SPACE$(3);"ROOM";SPACE$(3);CHR$(240);" NURSERY  ";CHR$(149);
1960 PRINT#1,CHR$(149);SPACE$(10);CHR$(149);SPACE$(10);CHR$(149);
1965 PRINT#1,CHR$(149);SPACE$(10);CHR$(149);SPACE$(10);CHR$(149);
1970 PRINT#1,CHR$(147);STRING$(10,154);CHR$(155);STRING$(10,154);CHR$(153);
1975 INK 3,6
1980 RETURN
1985 REM:Title screen
1990 BORDER 0:PAPER 0:INK 0,0:PEN 1:INK 1,26:PEN 2:INK 2,6:PEN 3:INK 3,0,26:CLS
1995 ld$=CHR$(2)+CHR$(10)+CHR$(8)+CHR$(8)
2000 up$=STRING$(3,11)
2005 hd$=CHR$(10)+CHR$(8)
2010 lc$=CHR$(204)+CHR$(205)+ld$+CHR$(211)+hd$+CHR$(211)+hd$+CHR$(205)+CHR$(204)+up$
2015 lr$=CHR$(242)+CHR$(205)+CHR$(10)+STRING$(2,8)+CHR$(243)+CHR$(204)+CHR$(10)+STRING$(2,8)+CHR$(211)+CHR$(205)+CHR$(10)+STRING$(2,8)+CHR$(211)+CHR$(209)+up$
2020 hi$=CHR$(211)+hd$:li$=hi$+hi$+hi$+CHR$(211)+up$
2025 hm$=CHR$(211)+CHR$(209)+ld$:lm$=CHR$(244)+CHR$(245)+ld$+hm$+hm$+CHR$(211)+CHR$(209)+up$
2030 le$=CHR$(242)+CHR$(208)+ld$+CHR$(243)+CHR$(210)+ld$+CHR$(211)+hd$+CHR$(243)+CHR$(210)+up$
2035 lb$=CHR$(242)+CHR$(205)+ld$+CHR$(243)+CHR$(204)+ld$+CHR$(211)+CHR$(205)+ld$+CHR$(243)+CHR$(204)+up$
2040 lu$=hm$+hm$+hm$+CHR$(205)+CHR$(204)+up$
2045 ls$=CHR$(204)+CHR$(205)+ld$+CHR$(205)+CHR$(10)+CHR$(205)+ld$+CHR$(205)+CHR$(204)+up$
2050 lt$=CHR$(208)+CHR$(242)+hd$+CHR$(211)+hd$+CHR$(211)+hd$+CHR$(211)+up$
2055 gun$=CHR$(210)+CHR$(246)+STRING$(4,210)+CHR$(247)+CHR$(248)+CHR$(249)+CHR$(10)+STRING$(9,8)
2060 gun$=gun$+CHR$(243)+STRING$(2,210)+CHR$(249)+SPACE$(4)+CHR$(149)+CHR$(10)+STRING$(6,8)
2065 gun$=gun$+CHR$(147)+CHR$(250)+CHR$(154)+CHR$(254)+CHR$(32)+CHR$(253)+CHR$(255)+CHR$(10)+STRING$(6,8)+CHR$(193)+CHR$(154)+CHR$(211)+SPACE$(2)+CHR$(205)+CHR$(10)+STRING$(4,8)
2070 gun$=gun$+CHR$(205)+CHR$(255)+CHR$(32)+CHR$(209)+CHR$(10)+STRING$(3,8)+CHR$(251)+CHR$(210)+CHR$(252)
2075 bul$=CHR$(231)+CHR$(32)
2080 WINDOW#1,31,40,6,12:PAPER #1,0:CLS#1:PEN#1,2:PRINT#1,gun$
2085 WINDOW#2,1,18,6,9:PEN#2,1
2090 LOCATE 30,7:PRINT CHR$(238):GOSUB 2250:FOR x=1 TO 250:NEXT:FOR x=29 TO 9 STEP-1:LOCATE x,7:PRINT bul$;:FOR y=1 TO 5:NEXT:NEXT
2095 PAPER #2,3:CLS#2:FOR x=1 TO 700:NEXT :PAPER#2,0 :CLS#2
2100 PRINT#2, USING"&";lc$;" ";lr$;" ";li$;" ";lm$;" ";le$:FOR z=1 TO 1500:NEXT
2105 CLS#1:WINDOW#1,31,40,14,20:PRINT#1,gun$
2110 LOCATE 30,15:PRINT CHR$(238):GOSUB 2250:FOR x=1 TO 250:NEXT:FOR x=29 TO 12 STEP-1:LOCATE x,15:PRINT bul$;:FOR y=1 TO 5:NEXT:NEXT
2115 WINDOW#3,1,24,13,16 :PEN#3,1:PAPER #3,3:CLS#3:FOR x=1 TO 700:NEXT :PAPER#3,0 :CLS#3
2120 PRINT#3, USING"&";lb$;" ";lu$;" ";ls$;" ";lt$;" ";le$;" ";lr$;" ";ls$:FOR z=1 TO 1500:NEXT
2125 l1$="TO ALL CRIME BUSTERS STOP"
2130 l2$="PROCEDE AT ONCE TO STRANGEWAYS HALL STOP"
2135 l3$="INVESTIGATE REPORT OF ARMED ROBBERY STOP"
2140 l4$="BELIEVED COOK HAS BEEN MURDERED STOP IT"
2145 l5$="SEEMS MOST LIKELY THAT IT IS AN INSIDE"
2150 l6$="JOB STOP NOBODY HAS LEFT THE HOUSE SO"
2155 l7$="THIS ASSIGNMENT SHOULD NOT PROVE TOO"
2160 l8$="DIFFICULT STOP AN ARREST SHOULD BE MADE "
2165 l9$="WITHIN THE HOUR STOP GOOD LUCK STOP"
2170 l10$="MESSAGE ENDS"
2175 GOSUB 2260
2180 ENT -2,1,1,8,1,-1,8:ENV 2,5,3,2,9,-1,20,5,-1,2
2185 ON SQ(1)GOSUB 2285
2190 PAPER 0:PEN 1:CLS:FOR x=1 TO 39:PRINT MID$(l1$,x,1);:FOR y=1 TO 30: NEXT:NEXT:PRINT :PRINT
2195 FOR x=1 TO 40:PRINT MID$(l2$,x,1);:FOR y=1 TO 30: NEXT:NEXT :PRINT
2200 FOR x=1 TO 40:PRINT MID$(l3$,x,1);:FOR y=1 TO 30: NEXT:NEXT:PRINT
2205 FOR x=1 TO 39:PRINT MID$(l4$,x,1);:FOR y=1 TO 30: NEXT:NEXT:PRINT:PRINT
2210 FOR x=1 TO 38:PRINT MID$(l5$,x,1);:FOR y=1 TO 30: NEXT:NEXT:PRINT:PRINT
2215 FOR x=1 TO 37:PRINT MID$(l6$,x,1);:FOR y=1 TO 30: NEXT:NEXT:PRINT:PRINT
2220 FOR x=1 TO 36:PRINT MID$(l7$,x,1);:FOR y=1 TO 30: NEXT:NEXT:PRINT:PRINT
2225 FOR x=1 TO 39:PRINT MID$(l8$,x,1);:FOR y=1 TO 30: NEXT:NEXT:PRINT:PRINT
2230 FOR x=1 TO 35:PRINT MID$(l9$,x,1);:FOR y=1 TO 30: NEXT:NEXT:PRINT:PRINT
2235 FOR x=1 TO 12:PRINT MID$(l10$,x,1);:FOR y=1 TO 30: NEXT:NEXT
2240 FOR x=1 TO 5000:NEXT
2245 RETURN
2250 ENV 3,15,-1,10:SOUND 1,0,80,15,3,0,15
2255 RETURN
2260 tempo=25: FOR s=1 TO 34:READ voicel(s),lenl(s):lenl(s)=lenl(s)*tempo:NEXT
2265 FOR x=1 TO 21:READ voi(x),leni(x):leni(x)=leni(x)*10:NEXT
2270 FOR x=1 TO 15:READ vot(x),lent(x):lent(x)=lent(x)*tempo:NEXT
2275 FOR x=1 TO 17:READ voiw(x),lenw(x):lenw(x)=lenw(x)*tempo:NEXT
2280 p=1:RETURN
2285 IF p<35 THEN SOUND 1,voicel(p),lenl(p),0,2,2:p=p+1:ON SQ(1) GOSUB 2285
2290 RETURN
2295 FOR x=1 TO 21:SOUND 2,voi(x),leni(x),6:NEXT:RETURN
2300 FOR x=1 TO 15:SOUND 1,vot(x),lent(x),6:NEXT:RETURN
2305 FOR x=1 TO 17: SOUND 1,voiw(x),lenw(x),0,2,2:NEXT:RETURN
2310 SYMBOL 240,0,0,0,7,253,103,96,0
2315 SYMBOL 241,56,40,56,16,16,28,28,16
2320 SYMBOL 242,255,255,192,192,192,192,192,192
2325 SYMBOL 243,192,192,192,192,192,192,255,255
2330 SYMBOL 244,192,224,240,216,204,198,195,193
2335 SYMBOL 245,3,7,15,27,51,99,195,131
2340 SYMBOL 246,0,0,0,255,255,195,195,195
2345 SYMBOL 247,0,0,0,255,255,192,192,192
2350 SYMBOL 248,0,0,0,255,255,3,3,3
2355 SYMBOL 249,0,0,0,0,0,0,248,248
2360 SYMBOL 250,0,0,0,255,255,24,24,24
2365 SYMBOL 251,192,192,192,224,112,56,31,15
2370 SYMBOL 252,3,3,3,7,14,28,248,240
2375 SYMBOL 253,24,24,24,24,28,14,7,3
2380 SYMBOL 254,0,0,0,192,192,192,192,192
2385 SYMBOL 255,0,0,0,0,0,0,0,128
2390 RETURN
2395 DATA 239,2,190,2,159,3,159,1,142,2,142,2,159,2,190,2
2400 DATA 239,2,190,2,159,3,159,1,179,2,190,2,213,4
2405 DATA 239,2,190,2,159,3,159,1,239,2,190,2,213,2,239,2,253,1,284,1,319,2
2410 DATA 239,3,190,1,159,2,190,2,179,1,179,1,190,2,239,4
2415 DATA 402,1,379,4,0,3,338,1,319,4,0,3,402,1,379,3,338,1,319,3,239,1,253,3,379,1,319,3,253,1,268,8,284,1.33,319,1.33,379,1.33,425,1.33,379,8
2420 DATA 238,1,212,1,190,1,178,1,134,1,142,1,178,1,160,1,190,1,178,2,358,.75,0,.25,358,.75,0,.25,358,1
2425 DATA 239,2,179,6,159,.67,239,.67,159,.67,142,1.8,0,.2,142,1.8,0,.2,142,1.8,0,.2,142,.67,134,.67,179,.67,142,3,159,1,179,6
2430 DATA N,Q,E,W,N,Q,E,Q,N,Q,Q,W,N,S,Q,W,N,S,E,Q,Q,S,E,Q,Q,S,Q,W,N,Q,E,Q,Q,S,E,Q,Q,S,Q,W,N,Q,Q,W,N,Q,E,W,DOWN,S,E,W,UP,S,E,W
2435  DATA 14,0,103,2,105,0,1,0,104,0,0,101,107,103,0,14,6,102,14,0,0,5,107,0,0,104,0,106,109,0,112,0,0,108,13,0,0,111,0,13,110,0,0,12,13,0,11,108,14,12,10,9,13,1,4,5
2440 DATA GUN,HAMMER,KNIFE
2445 DATA NECKLACE,MING VASE,CORONET,CASH BOX,STAMPS,COINS,RING
2450 DATA DUKE,BULTER,CHAUFFER,GARDENER,DUCHESS,GOVERNESS,NANNY,MAID
2455 DATA FOYER,REFECTORY,MORNING ROOM,SITTING ROOM,KITCHEN,UTILITY ROOM,CONSERVATORY,DRESSING ROOM,BEDROOM,GUEST ROOM,LINEN ROOM,NURSERY,PASSAGE,HALL
2460 CLS:PEN 1: PRINT"Your task is to identify the murderer,"
2465 PRINT"the accomplice,the missing valuable,the"
2470 PRINT"location of the body,the murder weapon"
2475 PRINT"and its location."
2480 PRINT"  There are 8 suspects- 4 men and 4"
2485 PRINT"women.At the time of the murder,they"
2490 PRINT"were in 4 seperate rooms(1 man and 1"
2495 PRINT"woman in each room)."
2500 PRINT"  The murderer and the accomplice(of"
2505 PRINT"opposite sex) were in the murder room"
2510 PRINT"where the body lies at present."
2515 PRINT"  Six valuables can be seen as you pass"
2520 PRINT"from room to room.The seventh is the"
2525 PRINT"stolen article which has been removed"
2530 PRINT"from the house."
2535 PRINT"  Finding the body will reveal which"
2540 PRINT"of three possible weapons was used."
2545 PRINT"Knowing the murder room will be of"
2550 PRINT"great help when questioning suspects."
2555 PEN 2:PRINT:PRINT"PRESS SPACE BAR TO CONTINUE"
2560 a$=INKEY$:IF a$<>" " THEN 2560
2565 CLS: PEN 1:PRINT"There are 3 weapons with fingerprints"
2570 PRINT"(male or female) hidden in the rooms 1"
2575 PRINT"of which is the murder waepon. This will":
2580 PRINT"enable you to distinguish between the"
2585 PRINT"murderer and accomplice"
2590 PRINT"  Strangeways Hall has two floors. You"
2595 PRINT"move around using (n)orth,(s)outh,(e)ast";
2600 PRINT"(w)est,(u)p or(d)own when prompted."
2605 PRINT"At your turn you will be shown a plan"
2610 PRINT"of the floor you are on. This plan"
2615 PRINT"shows the names of the rooms and"
2620 PRINT"location of doorways.Some of the doors"
2625 PRINT"are lockable (shown by a key).At the"
2630 PRINT"start 3 doors will be locked. All doors"
2635 PRINT"leading from a room can be locked or"
2640 PRINT"unlocked with the key for that room.At"
2645 PRINT"the start 6 keys will be in the UTILITY"
2650 PRINT"ROOM(ground floor) and 6 in the LINEN"
2655 PRINT"ROOM(first floor). Keys to ground floor"
2660 PRINT"rooms may be on the first floor and vice";
2665 PRINT"versa.
2670 PRINT
2675 PEN 2:PRINT"PRESS SPACE BAR TO CONTINUE"
2680 a$=INKEY$:IF a$<>" "THEN 2680
2685 CLS:PEN 1
2690 PRINT"There is also a skeleton key in one of"
2695 PRINT"the rooms.This key will unlock any door"
2700 PRINT"but cannot be used to lock doors. You "
2705 PRINT"can only carry one key at a time. Using"
2710 PRINT"keys avoids detours which are time"
2715 PRINT"consuming. Three of the rooms have all"
2720 PRINT"their exits lockable so that you may not";
2725 PRINT"be able to see what's in the room unless";
2730 PRINT"you have a key. Also you may get locked"
2735 PRINT"in one of these three rooms.
2740 PRINT"  At the start of the game you will type";
2745 PRINT"in 2 code letters.On your turn you must"
2750 PRINT"type in this code.No other player should";
2755 PRINT"see the screen during your turn. A list"
2760 PRINT"of possible weapons.Valuables and"
2765 PRINT"suspects is shown on the left of the"
2770 PRINT"screen. As you find them the initial"
2775 PRINT"letter of the room in which they were"
2780 PRINT"found is shown alongside.The type of"
2785 PRINT"fingerprint(m/f) on the weapons is also"
2790 PRINT"shown.The initial letter of rooms you"
2795 PRINT"have visited is shown at then bottom"
2800 PRINT
2805 PEN 2:PRINT"PREES SPACE TO CONTINUE"
2810 a$=INKEY$:IF a$<>" " THEN 2810
2815 PEN 1
2820 CLS: PRINT"At your turn you will be shown the room"
2825 PRINT"you are in and a list of its visible"
2830 PRINT"contents. A menu displays the following"
2835 PRINT"options.Only one can be used each turn"
2840 PRINT"NOTHING  Carry on.No option used"
2845 PRINT"PICK UP  Pick up a key.You wii drop any"
2850 PRINT"         other key."
2855 PRINT"SEARCH  Will reveal any hidden weapon"
2860 PRINT"ACCUSE  When you have the answers go to"
2865 PRINT"        the room where the murderer is"
2870 PRINT"        for debriefing"
2875 PRINT"FILCH   If you are in the same room as"
2880 PRINT"        another player,you can steal"
2885 PRINT"        any key they are carrying"
2890 PRINT"QUESTION  At the start of the game, an"
2895 PRINT"agreed number of questions(up to 5) is"
2900 PRINT"fixed for any one turn.There are two"
2905 PRINT"possible questions.You must be in the"
2910 PRINT"same room as the suspect you question."
2915 PRINT"The possible questions are"
2920 PRINT"a) in which room is the...(any suspect)"
2925 PRINT"This question will always be answered"
2930 PRINT"positively and truthfully"
2935 PRINT
2940 PEN 2:PRINT"PRESS SPACE BAR TO CONTINUE"
2945 a$=INKEY$:IF a$<>" "THEN 2945
2950 CLS:PEN 1
2955 PRINT"b) At the time of the murder where was"
2960 PRINT"the...(any suspect)
2965 PRINT"The whereabouts of every suspect at the"
2970 PRINT"time of the murder is known by two other";
2975 PRINT"suspects(including the person with them"
2980 PRINT"at the time of the murder).All suspects"
2985 PRINT"with the exception of the murderer and"
2990 PRINT"the accomplice will answer truthfully if";
2995 PRINT"they can.When questioned the muderer"
3000 PRINT"and the accomplice will lie to protect"
3005 PRINT"each other.When questioned,the murderer"
3010 PRINT"will switch the location of the
3015 PRINT"the accomplice with the location of the"
3020 PRINT"other suspect whose whereabouts he knew."
3025 PRINT"The accomplice will use similar tactics"
3030 PRINT"when questioned about the whereabouts of";
3035 PRINT"the murderer."
3040 PRINT"  You will then have the opportunity to"
3045 PRINT"move to another room before your turn"
3050 PRINT"ends.You are advised to have pencil and"
3055 PRINT"paper with you to make notes"
3060 PRINT
3065 PEN 2:INPUT "DO YOU WANT INSTRUCTIONS AGAIN (y/n)";i$
3070 IF i$<>"y" AND i$<>"n"THEN 3070
3075 IF i$="y" THEN 2460
3080 RETURN