10 REM Atomic Battle
20 REM By R.A.Waddilove
30 CLEAR:SYMBOL AFTER 256
40 CLEAR:MEMORY &7FFF
50 SYMBOL AFTER 48:h=HIMEM+1:LOAD"atombatl.n01",h
60 LOAD"atombatl.n02",&8000
70 CLEAR
80 LOAD"atombatl.n03",&9000
90 CLEAR
100 GOSUB 670:REM Initialise
110 GOSUB 360:REM Titles
120 GOSUB 190:REM Instructions
130 GOSUB 850:REM Hi Score Table
140 CALL &9000,screen
150 i=PEEK(&A000):j=PEEK(&A001):score=(i\16)*1000+(i MOD 16)*100+(j\16)*10+(j MOD 16)
160 IF score>hiscore(5) THEN GOSUB 1050
170 GOTO 130
180 :
190 REM ----- Instructions -----
200 CALL &BCA7
210 MODE 1:INK 0,0:INK 1,24:INK 2,20:INK 3,17
220 MOVE 100,398:a$="Atomic Battle":CALL &9003,1,2,2,@a$
230 LOCATE 1,4:PEN 2
240 PRINT"There has been a catastophie at the":PRINT:PRINT"world's first nuclear powered fusion":PRINT:PRINT"reactor. The failsafe mechanism has":PRINT:PRINT"jammed and meltdown is imminent. Your":PRINT:PRINT"task to save the plant from destruction."
250 PEN 3:PRINT
260 PRINT"You and your ship have been shrunk to":PRINT:PRINT"microscopic size and injected into the":PRINT:PRINT"reactor vessel. The plant can only be":PRINT:PRINT"saved by neutralising all the electrons":PRINT:PRINT"with plasma bolts."
270 PEN 1:PRINT:PRINT TAB(10)"Press the SPACE BAR..."
280 WHILE INKEY$<>"":WEND:WHILE INKEY$="":WEND
290 WINDOW 1,40,4,24:CLS
300 PEN 2:PRINT:PRINT"There are many dangers to be found deep":PRINT:PRINT"within the reactor vessel..."
310 PEN 3:PRINT:PRINT:PRINT"Watch out for the dust cloud which is":PRINT:PRINT"attracted to your ship and avoid the":PRINT:PRINT"neutron which rolls around the walls."
320 PEN 2:PRINT:PRINT:PRINT"The reactor control rods in the centre":PRINT:PRINT"are to slow down the fast moving":PRINT:PRINT"electrons and are safe to cross."
330 WHILE INKEY$<>"":WEND:WHILE INKEY$="":WEND
340 RETURN
350 :
360 REM ----- Titles -----
370 MODE 0:BORDER 0
380 RESTORE 390:FOR i=0 TO 15:READ j:INK i,j:NEXT
390 DATA 0,0,0,0,26,0,2,8,10,12,1,16,18,22,0,0
400 ORIGIN 0,0,0,640,0,100:CLG 10
410 ORIGIN 320,100,0,640,0,400:MOVE -320,0:DRAWR 640,0,12
420 i=0:MOVE 320,0:WHILE i<100:i=i+5:MOVER -640,-i:DRAWR 640,0,9:WEND
430 FOR i=-600 TO 600 STEP 10
440 MOVE 0,0:DRAWR i*10,-100,12
450 NEXT
460 ORIGIN 0,0:PLOT -10,-10,4:ORIGIN 110,190:a=10:b=8:GOSUB 1310:ORIGIN 0,0
470 ORIGIN 0,0:PLOT -10,-10,4:ORIGIN 400,160:a=3:b=2:GOSUB 1310:ORIGIN 0,0
480 PRINT CHR$(23);CHR$(1);
490 MOVE 100,390:a$="A O I  B T L ":CALL &9003,2,1,2,@A$
500 MOVE 100,380:a$="A O I  B T L ":CALL &9003,1,1,2,@A$
510 MOVE 100,390:a$=" T M C  A T E":CALL &9003,1,1,2,@A$
520 MOVE 100,380:a$=" T M C  A T E":CALL &9003,2,1,2,@A$
530 PRINT CHR$(23);CHR$(0);
540 FOR i=1 TO 70
550 x=RND*640:y=RND*300+100:IF TEST(x,y) THEN 550
560 PLOTR 0,0,3+RND*10
570 NEXT
580 MOVE 0,0:DRAW 0,398,7:DRAW 638,398:DRAW 638,0:DRAW 0,0
590 i=0:WHILE INKEY$<>"":WEND
600 i=(i+1)MOD 24
610 IF i=0 THEN CALL &BD19:INK 1,24:INK 2,0:INK 3,24
620 IF i=12 THEN CALL &BD19:INK 1,0:INK 2,24:INK 3,24
630 IF SQ(1)=4 THEN GOSUB 1260
640 IF INKEY$="" GOTO 600
650 RETURN
660 :
670 REM ----- Initialise -----
680 POKE &BDEE,&C9:KEY DEF 66,0,0,0,0
690 DEFINT a-z
700 SPEED INK 255,255:SPEED KEY 255,255
710 ENT -1,10,10,1,10,-10,1
720 ENV 1,14,1,1,1,0,50,14,-1,50
730 ENV 2,15,1,1,1,0,90,15,-1,20
740 ENT 2,100,10,1,127,1,1,127,1,1,127,1,1
750 ENV 3,1,15,1,1,0,15,15,-1,6
760 DIM name$(5),hiscore(5)
770 FOR i=1 TO 5:hiscore(i)=600-i*100:NEXT
780 name$(1)="ATOMIC":name$(2)="BATTLE":name$(3)="ATOMIC":name$(4)="BATTLE":name$(5)="ATOMIC"
790 RETURN
800 :
810 REM --------------------------
820 FOR xx=-2 TO 2 STEP 4:FOR yy=-2 TO 2 STEP 4:MOVE x+xx,y+yy:CALL &9003,col,xs,ys,@a$:NEXT:NEXT
830 RETURN
840 :
850 REM ----- Hi Score Table -----
860 screen=0:CALL &BCA7
870 CALL &BD19:INK 0,0:MODE 1:BORDER 0:INK 1,24:INK 2,20:INK 3,6
880 x=46:y=396:col=1:xs=2:ys=2:a$="* Atomic Battle *":GOSUB 810:MOVE x,y:CALL &9003,3,xs,ys,@a$
890 PEN 1:PAPER 3:LOCATE 6,20:PRINT " 1-9 selects start level "CHR$(154)CHR$(243)" 1 "
900 PAPER 1:PEN 3:LOCATE 8,22:PRINT " Press SPACE BAR to start ":PAPER 0
910 PAPER 0:PEN 1:LOCATE 2,25:PRINT"SHIFT=Move   Z=Fire   <=Left   >=Right"
920 PEN 1:FOR i=1 TO 5:LOCATE 7,5+i*2:PRINT i;:PEN 3:PRINT STRING$(30-POS(#0),".");:PEN 1:PRINT hiscore(i):NEXT
930 WHILE INKEY$<>"":WEND
940 i=1:k$="":x=FRE("")
950 WHILE k$<>CHR$(32):k$=INKEY$
960 IF k$>"0" AND k$<":" THEN PEN 1:PAPER 3:LOCATE 34,20:PRINT k$:screen=VAL(k$)-1:PAPER 0
970 LOCATE 10,5+i*2:PEN INT(RND*3+1):PRINT name$(i):i=i+1:IF i=6 THEN i=1:INK 2,1+INT(RND*26)
980 IF SQ(1)=4 THEN GOSUB 1260
990 WEND
1000 CLS:INK 2,20
1010 IF screen>1 THEN INK 1,26:INK 3,13
1020 IF screen>4 THEN INK 1,22:INK 3,7:INK 2,25
1030 IF screen>7 THEN INK 1,23:INK 3,2:INK 2,17
1040 RETURN
1050 REM ----- High Score -----
1060 MODE 1:INK 1,26:INK 2,18:INK 3,19
1070 DRAW 0,398,1:DRAW 638,398:DRAW 638,0:DRAW 0,0
1080 PEN 1:PAPER 0:LOCATE 7,5:PRINT "This  is  a  new  high  score"
1090 LOCATE 10,10:PEN 3:PRINT "Please type in your name"
1100 LOCATE 14,20:PAPER 2:PEN 0:PRINT " ?.......... "
1110 LOCATE 16,20:k$="":name$(5)="":f=1
1120 WHILE INKEY$<>"":WEND:x=FRE("")
1130 WHILE k$<>CHR$(13)
1140 IF SQ(1)=4 THEN GOSUB 1260
1150 IF k$>CHR$(31) AND k$<"z" AND LEN(name$(5))<10 THEN name$(5)=name$(5)+k$:PRINT k$;
1160 IF k$=CHR$(127) AND LEN(name$(5)) THEN name$(5)=LEFT$(name$(5),LEN(name$(5))-1):PRINT CHR$(8);CHR$(16);
1170 k$=INKEY$
1180 WEND
1190 hiscore(5)=score
1200 FOR i=5 TO 2 STEP -1
1210 IF hiscore(i)>hiscore(i-1) THEN k$=name$(i):name$(i)=name$(i-1):name$(i-1)=k$:score=hiscore(i):hiscore(i)=hiscore(i-1):hiscore(i-1)=score
1220 NEXT
1230 x=FRE("")
1240 RETURN
1250 REM --------------------------
1260 REM tune
1270 f=(f+1)MOD 15
1280 IF f<5 THEN SOUND 1,119,10:SOUND 1,95,10:SOUND 1,80,10:SOUND 130,239,500:SOUND 132,190,500:RETURN
1290 IF f>9 THEN SOUND 1,89,10:SOUND 1,71,10:SOUND 1,60,10:SOUND 130,179,500:SOUND 132,142,500:RETURN
1300 SOUND 1,80,10:SOUND 1,63,10:SOUND 1,53,10:SOUND 130,159,500:SOUND 132,127,500:RETURN
1310 RESTORE 1320:FOR j=1 TO 5:READ x,y:MOVE a*x,b*y:READ n:FOR i=1 TO n:READ x,y:DRAWR a*x,b*y:NEXT:NEXT:RETURN:REM Space Ship
1320 DATA -10,5, 6, 0,5, 5,0, 15,-15, 0,-5, -5,0, -15,15
1330 DATA -5,10, 3, 10,-3, 2,-2, 3,-10
1340 DATA -7,7, 6, 1,1, 2,-1, 1,-2, -1,-1, -2,1, -1,2
1350 DATA 4,-4, 6, 1,1, 2,-1, 1,-2, -1,-1, -2,1, -1,2
1360 DATA -2,0, 4, 2,2, 2,-2, -2,-2, -2,2