10 MODE 1
20 REM *****************************
30 REM *                           *
40 REM * Game      :Submarine hunt *
50 REM * Created by:C.R. Wijnen    *
60 REM * Date      :18-jan 1985    *
70 REM *                           *
80 REM *****************************
90 :
100 :
110 REM *** prepare loading sprites ****
120 MEMORY 36999
130 PRINT"loading spritecode"
140 LOAD "spritcom"
150 PRINT "loading sprites"
160 CALL 37000
170 LOAD "sprites"
180 DIM SHIP%(5):DIM SUNK%(5):maxscore=0
190 ENV 4,1,15,1,15,-1,9
200 RESTORE:ON SQ(1) GOSUB 240
210 GOTO 380
220 :
230 :
240 REM ***play tune****
250 READ pe:READ ti
260 IF pe=999 THEN RETURN
270 SOUND 4,pe,ti,12,4
280 SOUND 1,pe*4,ti,12,4
290 ON SQ(1) GOSUB 240
300 RETURN
310 DATA 119,50,0,10,119,50,0,10,119,50,0,10,106,50,0,10,159,40,0,5,159,15,0,5,159,25,0,5,159,15,0,5,159,25,0,90,159,40,0,5,159,15,0,5,159,25,0,5,159,15,0,5,159,25,0,90,179,40,0,5,179,15,0,5,179,25,0,5,179,15,0,5,179,25,0,100
320 DATA 119,50,0,10,119,50,0,10,119,50,0,10,106,50,0,10,159,40,0,5,159,15,0,5,159,25,0,5,159,15,0,5,159,25,0,90,159,40,0,5,159,15,0,5,159,25,0,5,159,15,0,5,159,25,0,90,179,40,0,5,179,15,0,5,179,25,0,5,179,15,0,5,179,25,0,50
330 DATA 142,30,0,5,134,20,0,5,119,90,0,5,142,20,0,5,159,30,0,5,142,20,0,5,179,90,0,15,142,30,0,5,142,20,0,5,159,30,0,5,179,20,0,5,213,75,0,20,213,20,0,5,142,30,0,5,142,20,0,5,159,60,0,100
340 DATA 142,30,0,5,134,20,0,5,119,90,0,5,142,20,0,5,159,30,0,5,142,20,0,5,179,90,0,15,142,30,0,5,142,20,0,5,159,30,0,5,179,20,0,5,213,75,0,20,213,20,0,5,142,30,0,5,142,20,0,5,159,60,0,100,999,999
350 :
360 :
370 REM *** give instructions ***
380 MODE 1:LOCATE 12,6:PRINT "onderzeebootjacht."
390 LOCATE 13,8:PRINT "ontworpen door:"
400 LOCATE 12,14:PRINT "** C.R.WIJNEN **"
410 PEN 3:LOCATE 9,21:PRINT"Wil je instrukties? (j/n)":PEN 1
420 IF INKEY(45)=0 THEN 450
430 IF INKEY(46)=0 THEN 580
440 GOTO 420
450 CLS:LOCATE 1,2:PRINT "Je bent commandant van een onderzeeboot-jager! Je opdracht is om zoveel mogelijkvijandelijke onderzeeboten te vernieti- gen."
460 PRINT "Je hebt dieptebommen ter beschikking. Gooi ze overboord en laat ze op het juistemoment ontploffen. Maar pas op!!! De on-derzeeboot vuurt levensgevaarlijke Polaris-raketten af!"
470 PRINT:PRINT "commando's zijn:
480 PRINT
490 PRINT "joystick links : manoevreer naar links"
500 PRINT"joystick rechts: manoevreer naar rechts"
510 PRINT "joystick op    : werp dieptebom."
520 PRINT "vuurknop       : ontsteek dieptebom."
530 PRINT
540 PRINT"Dezelfde funkties zijn beschikbaar met  de cursor/copy toetsen.
550 PRINT:PRINT "              succes!!!!"
560 PEN 3:LOCATE 2,24:PRINT"Druk op spatiebalk om te beginnen:":PEN 1
570 IF INKEY(47)<>0 THEN 570
580 :
590 :
600 REM coordinates boat   : x2,y2
610 REM      "      bomb   : x1,y1
620 REM      "      missile: x3,y3
630 REM      "      sub    : x,y
640 :
650 :
660 REM ****initialise****
670 ENV 1,1,15,1,1,0,40,15,-1,20
680 ENV 3,5,3,1,15,-1,10
690 ENV 2,1,15,1,15,-1,20
700 ENT 1,15,-1,10
710 MODE 0:INK 0,1:PAPER 0:CLS:RANDOMIZE TIME:BORDER 13:fire%=0:dump%=0:expl%=0
720 INK 0,1:INK 1,24:INK 2,2:INK 5,0:INK 3,6:INK 15,9
730 WINDOW#1,1,20,1,5:PAPER#1,2:CLS#1
740 WINDOW#2,1,20,21,25:PAPER#2,5:CLS#2
750 :
760 REM ***draw sun***
770 FOR a%=180 TO 360
780 DEG:MOVE 550,399
790 DRAW 550+45*COS(a%),399+45*SIN(a%),1:NEXT
800 :
810 REM ****paint bottom *****
820 x4%=0:y4%=95
830 FOR x4%=0 TO 639 STEP 4:c%=ROUND(RND(1))
840 IF c%=1 THEN y4%=y4%+1 ELSE y4%=y4%-1
850 IF y4%>105 THEN y4%=105
860 IF y4%<82 THEN y4%=82
870 PLOT x4%,80,15:DRAW x4%,y4%,15:NEXT
880 score%=0:f%=55:g%=0
890 FOR d%=1 TO 5:f%=f%+17:ship%(d%)=f%:sunk%(d%)=2:NEXT
900 GOSUB 930:GOTO 970
910 :
920 REM ***print score ****
930 FOR d%=1 TO 5:|SPRITEON,ship%(d%),180,sunk%(d%):NEXT
940 PEN#2,3:LOCATE#2,1,1:PRINT#2,"Score   ";score%
950 PRINT#2,"Maxscore";maxscore%
960 RETURN
970 WHILE pe<>999:WEND
980 sub%=1:x%=200
990 x2%=1:y2%=26
1000 :
1010 REM **** set up interrupts ****
1020 EVERY 5,0 GOSUB 1490:REM MISSILE
1030 EVERY 8,3 GOSUB 1240:REM SUB
1040 EVERY 260,1 GOSUB 1460:REM SONAR 
1050 EVERY 5,2 GOSUB 1310:REM BOMB
1060 EI
1070 :
1080 REM **** check joystick ******
1090 :
1100 IF JOY(0)=4 OR  INKEY(8)=0 THEN |SPRITEON,x2%,y2%,12:x2%=x2%-1:IF x2%<1 THEN x2%=1
1110 IF halt%=1 THEN halt%=0:GOTO 200
1120 IF JOY(0)=8 OR INKEY(1)=0 THEN |SPRITEON,x2%,y2%,12:x2%=x2%+1:IF x2%>143 THEN x2%=143
1130 IF JOY(0)=16 OR INKEY(9)=0 THEN expl%=1
1140 |SPRITEON,x2%,y2%,2
1150 IF x2%>16 AND JOY(0)=1 OR INKEY(0)=0  THEN GOTO 1180 ELSE GOTO 1100
1160 :
1170 ***launch depth charge ****
1180 IF dump%=0 THEN SOUND 129,1000,13:X1%=X2%-18:Y1%=42:|SPRITEON,x2%,y2%,14:FOR junk=1 TO 250:NEXT:|SPRITEON,x2%,y2%,2:|SPRITEON,x2%-16,y2%,15:SOUND 4,0,80,10,3,0,10:FOR junk=1 TO 300:NEXT:|SPRITEON,x2%-16,y2%,12:dump%=1:GOTO 1100 ELSE GOTO 1100
1190 :
1200 REM **** launch missile *****
1210 IF FIRE%=1 THEN RETURN ELSE SOUND 129,0,200,12,1,0,2:X3%=X%:Y3%=Y%:FIRE%=1:RETURN
1220 :
1230 REM *** move submarine ****
1240 IF SUB%=0 THEN RETURN ELSE IF x%>143 THEN |SPRITEOFF,x%,y%:y%=INT(RND(1)*80+50):x%=1
1250 :
1260 REM ***decide to launch missile***
1270 IF fire%=0 AND x2%>30 AND ABS(x%-x2%)<=1 THEN GOSUB 1210
1280 |SPRITEOFF,x%,y%:x%=x%+1:IF up%=0 THEN y%=y%-1:IF y%<50 THEN y%=50
1290 IF up%=2 THEN y%=y%+1:IF y%>130 THEN y%=130
1300 |SPRITEON,x%,y%,1:RETURN
1310 IF dump%=0 THEN RETURN
1320 :
1330 REM *** check collision with bomb***
1340 IF expl%=0 THEN 1360
1350 IF ABS(x1%-x%)<5 AND ABS((y1%-10)-y%)<5 THEN expl%=0:GOSUB 1410 ELSE GOTO 1370
1360 IF y1%<=130 THEN  1380 ELSE dump%=0:expl%=0:SOUND 129,900,180,8,1,0,20:|SPRITEON,x1%,y1%,13:FOR junk=1 TO 300:NEXT:|SPRITEOFF,x1%,y1%:RETURN
1370 dump%=0:expl%=0:SOUND 129,900,180,8,1,0,20:|SPRITEON,x1%,y1%,13:FOR junk=1 TO 300:NEXT:|SPRITEOFF,x1%,y1%:RETURN
1380 IF dump%=0 THEN RETURN ELSE |SPRITEOFF,x1%,y1%:y1%=y1%+1:|SPRITEON,x1%,y1%,4:RETURN
1390 :
1400 REM ***sub hit by bomb***
1410 sub%=0:SOUND 129,2000,300,15,1,0,31:score%=INT(score%+y%/4)
1420 LOCATE#2,1,1:PRINT#2,"Score   ";score%
1430 |SPRITEON,x%,y%,6:FOR junk=1 TO 900:NEXT:|SPRITEON,x%,y%,7:FOR junk=1 TO 1200:NEXT:|SPRITEOFF,x%,y%:|SPRITEOFF,x1%,y1%:x%=200:dump%=0:SUB%=1:RETURN
1440 :
1450 REM ***sonar beep ***
1460 IF sub%=0 THEN RETURN
1470 SOUND 2,100,140,8,2,1:up%=ROUND(RND(1)*2):RETURN
1480 REM *** move rocket routine ****
1490 IF fire%=0 THEN RETURN
1500 :
1510 REM ***check collision with boat ***
1520 IF ABS((x3%-3)-x2%)<6 AND ABS((y3%-11)-y2%)<6 THEN |SPRITEOFF,x3%,y3%:GOSUB 1570
1530 IF y3%<40 THEN Y3%=40:|SPRITEOFF,x3%,y3%:|SPRITEON,x3%,y3%-14,5:SOUND 129,600,180,8,1,0,20:AFTER 100,0 GOSUB 1620 :RETURN
1540 IF fire%=0 THEN RETURN ELSE |SPRITEOFF,x3%,y3%::y3%=y3%-4:|SPRITEON,x3%,y3%,3:RETURN
1550 :
1560 REM *** boat hit by missile ***
1570 SOUND 129,1000,300,15,1,0,31
1580 fire%=0:|SPRITEON,x2%,y2%,8:FOR junk=1 TO 900:NEXT:|SPRITEON,x2%,y2%,9:FOR junk=1 TO 1200:NEXT
1590 |SPRITEON,x2%,y2%,10:FOR junk=1 TO 1500:NEXT:|SPRITEON,x2%,y2%,11:FOR junk=1 TO 1600:NEXT:|SPRITEOFF,x3%,y3%:|SPRITEON,x2%,y2%,12:x2%=1
1600 g%=g%+1:IF g%=5 THEN GOSUB 1630 ELSE sunk%(g%)=9:GOSUB 930
1610 RETURN
1620 |SPRITEON,x3%,y3%-14,12:fire%=0:EVERY 3,0 GOSUB 1490:RETURN
1630 SUB%=0:CLS#2:LOCATE#2,2,2:PRINT#2,"JE SCORE IS:";SCORE%
1640 IF SCORE%>MAXSCORE% THEN MAXSCORE%=SCORE%:SCORE%=0
1650 LOCATE#2,1,4:PRINT#2,"NOG EEN KEER (J/N)"
1660 IF INKEY(45)=0 THEN |SPRITEOFF,x%,y%:sub%=0:x%=200:halt%=1:RETURN
1670 IF INKEY(46)=0 THEN CLS:CLS#2:LOCATE#2,5,3:PRINT#2,"TOT ZIENS!":END
1680 GOTO 1660
2000 :
2010 :
2020 REM ***routine to save this program     on tape!!!****
2030 MODE 1
2040 SAVE "sub-hunt"
2050 SAVE "!spritcom",b,37000,600
2060 SAVE "!sprites",b,37500,4352
2070 END