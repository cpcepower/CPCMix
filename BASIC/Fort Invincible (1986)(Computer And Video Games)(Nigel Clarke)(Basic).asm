1 ' Debugged By JBO 2018-12-30
2 ' Type By Copper
3 ' Computer & Video Games no.51 Januar 1986
10 '*********************
20 '***FORT INVINCIBLE***
30 '**(C) N.CLARKE 1984**
40 '*********************
50 '*****INITIALISE******
60 '*********************
70 ON ERROR GOTO 4810
80 SOUND 1,500,500,12
90 SOUND 2,499,499,10
100 SOUND 4,498,498,12
110 KEY DEF 7,1,48
120 KEY DEF 31,1,48
130 KEY DEF 25,1,48
140 CALL &BB03
150 CLS
160 DEFINT a-z
170 GOSUB 3400
180 GOSUB 2940
190 GOSUB 3800
200 GOSUB 3040
210 GOSUB 1920
220 GOSUB 3920
230 GOSUB 1600
240 GOSUB 2590
250 '*************
260 '**MAIN LOOP**
270 '*************
280 IF ti>=3 THEN EVERY 50,2 GOSUB 1150
290 EVERY 25,1 GOSUB 1350
300 CALL &BB03
310 WHILE nc
320 IF INKEY(up)=0 THEN DI:GOSUB 640
330 IF INKEY(do)=0 THEN DI:GOSUB 660
340 IF INKEY(le)=0 THEN DI:GOSUB 680
350 IF INKEY(ri)=0 THEN DI:GOSUB 700
360 IF de=1 THEN GOTO 890 ELSE de=0
370 IF x=d AND y=e THEN GOTO 890
380 IF x=t(rn) AND y=l(rn)-1 THEN GOTO 890
390 IF INKEY(79)<>-1 THEN i=REMAIN(1):i=REMAIN(2):GOTO 1490
400 WEND
410 '****************
420 '**END OF LEVEL**
430 '****************
440 i%=REMAIN(1):i%=REMAIN(2)
450 PEN c:LOCATE ox,oy:IF TEST((ox*32)-16,364-(oy*16)) THEN PRINT USING"&";d1$; ELSE PRINT USING"&";d2$;
460 LOCATE x,y:PRINT USING"&";m$;
470 l=l+1
480 IF l>=6 THEN ti=ti+1:l=1
490 IF ti>=5 THEN ti=4
500 sc!=sc!+100:sc$=STR$(sc!):MID$(sc$,1)="0":LOCATE #4,7-LEN(sc$),1:PRINT#4,sc$
510 RESTORE 3610
520 FOR n=1 TO 7
530 READ dur,pit
540 dur=dur-10
550 SOUND 1,pit,dur,7
560 SOUND 1,0,3,0
570 NEXT n
580 GOSUB 1800
590 ol=l+((ti-1)*5):IF ol<=9 THEN l$=STR$(ol):MID$(l$,1)="0":LOCATE #5,3-LEN(l$),1:PRINT#5,l$; ELSE IF ol>=10 THEN LOCATE#5,1,1:PRINT#5,USING"##";ol;
600 GOSUB 2780:GOTO 280
610 '************
620 '**MOVE MAN**
630 '************
640 y=y-2:GOSUB 720
650 EI:RETURN
660 y=y+2:GOSUB 720
670 EI:RETURN
680 x=x-2:m$=ml$:GOSUB 720
690 EI:RETURN
700 x=x+2:m$=mr$:GOSUB 720
710 EI:RETURN
720 SOUND 1,100+((l-1)*12),18,0,1
730 IF TEST((x*32),374-((y+2)*16)) THEN de=0:GOTO 740 ELSE de=1:x=ox:y=oy:RETURN
740 te=TEST((x*32)-8,344-(y*16))
750 IF te=1 THEN nc=nc-1:oc=9:sc!=sc!+10
760 PEN c:LOCATE ox,oy:IF TEST((ox*32)-16,364-(oy*16)) THEN PRINT USING"&";d1$;ELSE PRINT USING"&";d2$;
770 IF ti=2 OR ti=4 THEN IF te=9 THEN oc=1:nc=nc+1:sc!=sc!-10
780 LOCATE x,y:PRINT USING"&";m$;
790 ox=x:oy=y
800 c=oc
810 te=0
820 IF x=d AND y=e THEN de=1
830 IF x=t(rn) AND y=l(rn)-1 THEN de=1
840 sc$=STR$(sc!):MID$(sc$,1)="0":LOCATE #4,7-LEN(sc$),1:PRINT#4,sc$
850 RETURN
860 '************
870 '**MAN DEAD**
880 '************
890 i=REMAIN(1):i=REMAIN(2)
900 od=d:oe=e:ox=x:oy=y:rn=rn+1
910 te1=TEST((ox*32)-16,364-(oy*16))
920 te2=TEST((ox*32)-16,344-(oy*16))
930 IF te1<>0 AND te2<>0 THEN PEN c:LOCATE ox,oy:PRINT USING"&";d1$;
940 IF te1=0 AND te2=0 THEN LOCATE ox,oy:PRINT "  ";:LOCATE ox,oy+1:PRINT "  ";
950 IF te1=0 AND te2<>0 THEN PEN c:LOCATE ox,oy:PRINT USING"&";d2$;
960 IF te1<>0 AND te2=0 THEN LOCATE ox,oy:PEN 2:PRINT CHR$(204)+CHR$(205);:LOCATE ox,oy+1:PRINT "  ";
970 IF ti>=3 THEN PEN dc:LOCATE od,oe:IF TEST((od*32)-16,364-(oe*16)) THEN PRINT USING"&";d1$; ELSE PRINT USING"&";d2$;
980 PEN pc:LOCATE t(rn-1),l(rn-1)-1:IF TEST((t(rn-1)*32)-16,364-(((l(rn-1))-1)*16)) THEN PRINT USING"&";d1$; ELSE PRINT USING"&";d2$;
990 OUT &BC00,8:OUT &BD00,1
1000 SOUND 7,0,135,0,2,0,20
1010 FOR n=1 TO 26
1020 INK 1,n:INK 9,n
1030 FOR de=1 TO 75:NEXT de
1040 NEXT n
1050 IF l=1 THEN INK 1,14:INK 9,10 ELSE IF l=2 THEN INK 1,22:INK 9,13 ELSE IF l=3 THEN INK 1,24:INK 9,3 ELSE IF l=4 THEN INK 1,5:INK 9,4 ELSE IF l=5 THEN INK 1,6:INK 9,23
1060 OUT &BC00,8:OUT &BD00,0
1070 li=li-1:IF li<=0 THEN 1490
1080 CLS#2:PRINT#2,LEFT$(li$,(li*35)+2);
1090 GOSUB 1800
1100 GOSUB 2780
1110 GOTO 280
1120 '******************
1130 '**MOVE 2nd DROID**
1140 '******************
1150 DI:IF d=x AND e=y THEN de=1:EI:RETURN
1160 IF d>x THEN d=d-2:GOSUB 1220:DI:IF te=0 THEN 1210
1170 IF d<x THEN d=d+2:GOSUB 1220:DI:IF te=0 THEN 1210
1180 IF d=x AND e=y THEN EI:RETURN
1190 IF e>y THEN e=e-2:GOSUB 1220:DI:IF te=0 THEN 1210
1200 IF e<y THEN e=e+2:GOSUB 1220:DI:IF te=0 THEN 1210
1210 EI:RETURN
1220 IF d=x AND e=y THEN de=1:te=0:RETURN
1230 te=TEST((d*32)-8,344-(e*16)):IF te=0 OR te=8 THEN te=1:d=od:e=oe:RETURN
1240 PEN dc:LOCATE od,oe:IF TEST((od*32)-16,364-(oe*16)) THEN PRINT USING"&";d1$; ELSE PRINT USING"&";d2$;
1250 IF TEST((d*32)-8,344-(e*16))=1 THEN doc=1 ELSE doc=9
1260 IF x=d AND y=e THEN de=1
1270 LOCATE d,e:PRINT USING"&";dd$;
1280 od=d:oe=e
1290 dc=doc
1300 te=0
1310 RETURN
1320 '******************
1330 '**MOVE 1st DROID**
1340 '******************
1350 DI:rn=rn+1:fl=0
1360 IF x=t(rn-1) AND y=l(rn-1)-1 THEN de=1:EI:RETURN
1370 IF fl=0 THEN PEN pc:LOCATE t(rn-1),l(rn-1)-1:IF TEST((t(rn-1)*32)-16,364-(((l(rn-1))-1)*16)) THEN PRINT USING"&";d1$; ELSE PRINT USING"&";d2$;
1380 IF rn>25 THEN rn=1
1390 IF d=t(rn) AND e=l(rn)-1 THEN rn=rn+1:fl=1:LOCATE d,e:PRINT USING"&";dd$;:GOTO 1360
1400 IF TEST((t(rn)*32)-8,344-((l(rn)-1)*16))=1 THEN poc=1 ELSE poc=9
1410 IF x=t(rn) AND y=l(rn)-1 THEN de=1:EI:RETURN
1420 LOCATE t(rn),l(rn)-1:PRINT USING"&";p$;
1430 LOCATE 25,15:PRINT nm$;
1440 pc=poc
1450 EI:RETURN
1460 '***************
1470 '**END OF GAME**
1480 '***************
1490 INK 11,26:PEN 11:PRINT CHR$(22)+CHR$(1):LOCATE 6,13:PRINT "GAME  OVER";CHR$(22)+CHR$(0)
1500 WINDOW#1,1,20,1,3:PAPER#1,0:CLS#1
1510 FOR n=1 TO 13
1520 LOCATE 1,n+4:PRINT "                    ";
1530 LOCATE 1,22-n:PRINT "                    ";
1540 NEXT n
1550 ls!=sc!
1560 GOSUB 1920:GOTO 220
1570 '*************
1580 '**VARIABLES**
1590 '*************
1600 sc!=0
1610 l=1:li=3:ti=1
1620 d$="":dd$="":p$="":mr$="":ml$="":d1$="":d2$="":m$="":md$=""
1630 RESTORE 4520:FOR n=1 TO 19:READ ch
1640 d$=d$+CHR$(ch):NEXT n
1650 FOR n=1 TO 25:READ ch
1660 dd$=dd$+CHR$(ch):NEXT n
1670 FOR n=1 TO 25:READ ch
1680 p$=p$+CHR$(ch):NEXT n
1690 FOR n=1 TO 35:READ ch
1700 mr$=mr$+CHR$(ch):NEXT n
1710 FOR n=1 TO 35:READ ch
1720 ml$=ml$+CHR$(ch):NEXT n
1730 FOR n=1 TO 26:READ ch
1740 d1$=d1$+CHR$(ch):NEXT n
1750 FOR n=1 TO 18:READ ch
1760 d2$=d2$+CHR$(ch):NEXT n
1770 FOR n=1 TO 51:READ ch
1780 md$=md$+CHR$(ch):NEXT n
1790 li$=ml$+CHR$(11)+CHR$(8)+ml$+CHR$(11)+CHR$(8)+ml$
1800 x=10:y=6
1810 ox=x:oy=y
1820 IF ti>=3 THEN d=10:e=18 ELSE d=0:e=0
1830 od=d:oe=e
1840 nc=24:c=9:oc=0:pc=1:poc=0:dc=1:doc=1
1850 m$=ml$
1860 rn=INT(RND*25)+1
1870 IF t(rn)=x AND l(rn)-1=y OR t(rn)=d AND l(rn)-1=e THEN 1860
1880 RETURN
1890 '********************
1900 '**HIGH SCORE TABLE**
1910 '********************
1920 MODE 1
1930 SOUND 135,0,1,0
1940 BORDER 0:PAPER 0:INK 0,0:CLS
1950 INK 3,11:INK 2,0:INK 1,0:PEN 1
1960 POKE 46312,255
1970 KEY DEF 7,1,138
1980 KEY DEF 31,1,46
1990 KEY DEF 25,1,45
2000 CALL &BB03
2010 IF sc!>VAL(MID$(hst$(1),13)) THEN LOCATE 1,12:PEN 3:PRINT "YOU HAVE MADE IT INTO THE HI-SCORE TABLE"; ELSE 2140
2020 LOCATE 1,15:LINE INPUT "PLEASE ENTER YOUR NAME..";nm$:IF nm$="" THEN 2020 ELSE nm$=UPPER$(nm$)
2030 nm$=MID$(nm$,1,10)
2040 ch=10
2050 WHILE sc!<VAL(MID$(hst$(ch),13))
2060 ch=ch-1
2070 WEND
2080 IF ch>1 THEN FOR n=1 TO ch-1:hst$(n)=hst$(n+1):NEXT n
2090 hst$(ch)=nm$+STRING$(11-LEN(nm$)+(7-LEN(STR$(sc!))),32)+STR$(sc!)
2100 nm$=""
2110 '***************************
2120 '**DISPLAY TABLE & OPTIONS**
2130 '***************************
2140 INK 3,0:CLS
2150 KEY DEF 7,1,48:KEY DEF 31,1,48
2160 KEY DEF 25,1,48
2170 LOCATE 1,4:PEN 1:FOR n=10 TO 1 STEP -1
2180 PRINT TAB(3);hst$(n):PRINT
2190 NEXT n
2200 FOR n=0 TO 40 STEP 40
2210 PLOT n/2,n/2,2
2220 DRAWR 639-n,0
2230 DRAWR 0,399-n
2240 DRAWR -639+n,0
2250 DRAWR 0,-399+n
2260 NEXT n
2270 PLOT 0,0:DRAWR 20,20
2280 PLOT 639,0:DRAWR -20,20
2290 PLOT 0,399:DRAWR 20,-20
2300 PLOT 639,399:DRAWR -20,-20
2310 PLOT 352,379,0:DRAWR 40,0,0:DRAWR 0,-359,2:DRAWR -40,0,0:DRAWR 0,359,2
2320 TAG:PLOT 400,700,2:MOVE 404,354:PRINT"SELECT OPTION";
2330 MOVE 404,334:PRINT "====== ======";
2340 op=0
2350 TAGOFF
2360 LOCATE 27,10:PRINT "1=JOYSTICK"
2370 LOCATE 27,12:PRINT "2=KEYBOARD"
2380 LOCATE 27,14:PRINT "3=PLAY GAME"
2390 LOCATE 27,16:PRINT "4=BRIEFING"
2400 LOCATE 27,18:PRINT "5=WARM START"
2410 INK 3,11:INK 2,6:INK 1,25:PEN 1
2420 IF up=72 THEN 2460 ELSE IF up<>0 THEN 2500
2430 IF up=0 THEN 2460
2440 op=VAL(INKEY$):IF op>5 OR op<1 THEN 2440
2450 ON op GOTO 2460,2500,2540,3660,2550
2460 up=72:do=73:le=74:ri=75
2470 LOCATE 27,10:PEN 3:PRINT "1=JOYSTICK"
2480 LOCATE 27,12:PEN 1:PRINT "2=KEYBOARD"
2490 GOTO 2440
2500 up=69:do=71:le=39:ri=31
2510 LOCATE 27,12:PEN 3:PRINT "2=KEYBOARD"
2520 LOCATE 27,10:PEN 1:PRINT "1=JOYSTICK"
2530 GOTO 2440
2540 PEN 2:LOCATE 27,23:PRINT "PLEASE WAIT":RETURN
2550 POKE 46312,0:CLEAR:SYMBOL AFTER 255:MODE 1:CALL &BC02:GOSUB 4930:PEN 1:LIST
2560 '*****************
2570 '**SET UP SCREEN**
2580 '*****************
2590 MODE 0
2600 PAPER 0:PEN 1
2610 BORDER 0:INK 0,0
2620 RESTORE 4630:FOR n=3 TO 15:READ ch
2630 INK n,ch:NEXT n
2640 WINDOW#0,1,20,4,25
2650 WINDOW#1,1,7,1,3
2660 WINDOW#2,15,20,2,3:PAPER#2,9:CLS#2:LOCATE#2,2,1:PRINT#2,USING"&";LEFT$(li$,(li*35)+2);
2670 WINDOW#3,15,20,1,1:PAPER#3,0:CLS#3:PEN#3,10:PRINT#3,"LIVES:";
2680 PAPER#1,0:CLS#1:PEN#1,10
2690 LOCATE#1,1,1:PRINT#1,"SCORE:"
2700 LOCATE#1,1,2:PRINT#1,"LEVEL:"
2710 LOCATE#1,1,3:PRINT#1," LAST:"
2720 WINDOW#4,7,14,1,1:PAPER#4,0:CLS#4:PEN#4,10:PRINT#4,"000000"
2730 WINDOW#5,7,14,2,2:PAPER#5,0:CLS#5:PEN#5,10:PRINT#5,"00"
2740 WINDOW#6,7,14,3,3:PAPER#6,0:CLS#6:PEN#6,10:PRINT#6,"000000"
2750 sc$=STR$(sc!):MID$(sc$,1)="0":LOCATE #4,7-LEN(sc$),1:PRINT#4,sc$
2760 ol=l+((ti-1)*5):IF ol<=9 THEN l$=STR$(ol):MID$(l$,1)="0":LOCATE #5,3-LEN(l$),1:PRINT#5,l$; ELSE IF ol>=10 THEN LOCATE#5,1,1:PRINT#5,USING"##";ol;
2770 ls$=STR$(ls!):MID$(ls$,1)="0":LOCATE #6,7-LEN(ls$),1:PRINT#6,ls$
2780 CLS:ON l GOSUB 2880,2890,2900,2910,2920
2790 FOR n=1 TO 25
2800 READ t(n),l(n)
2810 LOCATE t(n),l(n)
2820 PRINT USING"&";d$
2830 NEXT n
2840 LOCATE x,y:PRINT USING"&";m$;
2850 IF ti>=3 THEN LOCATE d,e:PRINT USING"&";dd$;
2860 LOCATE t(rn),l(rn)-1:PRINT USING"&";p$;
2870 GOTO 2930
2880 INK 1,14:INK 2,22:INK 9,10:RESTORE 4400:RETURN
2890 INK 1,22:INK 2,9:INK 9,13:RESTORE 4410:RETURN
2900 INK 1,24:INK 2,12:INK 9,3:RESTORE 4420:RETURN
2910 INK 1,5:INK 2,23:INK 9,4:RESTORE 4430:RETURN
2920 INK 1,17:INK 2,6:INK 9,23:RESTORE 4440:RETURN
2930 RETURN
2940 DIM t(25),l(25),hst$(10)
2950 ls!=0
2960 RESTORE 4480
2970 FOR n=10 TO 1 STEP -1:READ ch$
2980 hst$(n)=ch$
2990 NEXT n
3000 RETURN
3010 '****************
3020 '**TITLE SCREEN**
3030 '****************
3040 MODE 1:SYMBOL 255,255,254,252,240,240,252,254,255
3050 FOR n=0 TO 3:INK n,0:NEXT
3060 PAPER 0:PEN 1:BORDER 0:CLS
3070 PRINT:PRINT:PRINT:PRINT:PRINT:PRINT
3080 RESTORE 4670:FOR row=1 TO 5
3090 ti$=""
3100 FOR n=1 TO 19:READ ch
3110 ti$=ti$+CHR$(ch):NEXT n
3120 PRINT TAB(11);ti$:NEXT row
3130 RESTORE 4720:FOR row=1 TO 5
3140 ti$="":FOR n=1 TO 38:READ ch
3150 ti$=ti$+CHR$(ch):NEXT n
3160 PLOT -10,-10,1
3170 TAG:MOVE 8,214-(row*16)
3180 PRINT ti$;:TAGOFF:NEXT row
3190 PLOT -10,-10,3:TAG:MOVE 200,32
3200 PRINT CHR$(164)+" N.CLARKE 1985";
3210 PLOT -10,-10,2:MOVE 232,378:PRINT "PRESS SPACE";:TAGOFF
3220 PLOT 0,0,2
3230 DRAWR 639,0
3240 DRAWR 0,399
3250 DRAWR -639,0
3260 DRAWR 0,-399
3270 PLOT 16,16,2
3280 DRAWR 607,0
3290 DRAWR 0,367
3300 DRAWR -607,0
3310 DRAWR 0,-367
3320 WHILE SQ(1)>=127:WEND
3330 RESTORE 4770:FOR n=0 TO 3:READ ch:INK n,ch:NEXT
3340 SOUND 1,100,1,0:SOUND 1,100,1,0:SOUND 1,100,1,0:SOUND 1,100,1,0
3350 mu=1:RESTORE 3580
3360 ON SQ(1) GOSUB 3490
3370 CALL &BB03
3380 IF INKEY(47)<>-1 THEN mu=0:GOTO 3390 ELSE 3380
3390 RETURN
3400 ENT -1,1,-127,1,5,24,1
3410 ENV 1,1,15,1,5,-3,2
3420 ENV 2,15,-1,9
3430 ENV 3,3,5,1,5,-2,3
3440 RETURN
3450 '*********
3460 '**MUSIC**
3470 '*********
3480 RESTORE 3580
3490 IF mu=0 THEN SOUND 129,0,1,0:SOUND 130,0,1,0:SOUND 132,0,1,0:RETURN
3500 READ dur,pit
3510 IF pit=0 THEN RESTORE 3580:SOUND 1,0,500,0:SOUND 2,0,500,0:GOTO 3570
3520 dur=dur-10
3530 SOUND 17,pit,dur,7
3540 SOUND 10,pit,dur,3,1,1,2
3550 SOUND 1,0,3,0
3560 IF pit=0 THEN WHILE SQ(1)>=127:WEND:RESTORE 3580:SOUND 129,0,500,0:SOUND 130,0,500,0
3570 ON SQ(1) GOSUB 3490:RETURN
3580 DATA 30,239,30,239,30,239,20,319,20,319,20,239,40,239,50,190
3590 DATA 30,239,30,239,30,239,20,319,20,319,20,239,30,239,50,284
3600 DATA 30,239,30,239,30,239,20,319,20,319,20,239,30,239,30,190
3610 DATA 30,179,30,169,30,179,30,190,30,239,40,201,40,239,500,0
3620 RETURN
3630 '**************** 
3640 '**INSTRUCTIONS**
3650 '****************
3660 MODE 1:PEN 2:LOCATE 13,2:PRINT "MISSION BRIEFING";
3670 LOCATE 13,3:PRINT "======= ========";
3680 PEN 1:PRINT:PRINT
3690 PRINT " YOU HAVE BEEN ORDERED TO GET AS FAR    INTO FORT INVINCIBLE AS YOU CAN,HOWEVER,FORT INVINCIBLE GOES ON FOR INFINITY.   YOUR TASK IS TO CHANGE THE COLOUR OF ALL";
3700 PRINT "THE DISCS WHILST DODGING THE TWO ROBOT  INHABITANTS OF THE FORT WHOSE JOB IT IS TO DESTROY ANY INTRUDERS."
3710 PRINT " YOU MOVE USING THE JOYSTICK OR KEYS    (A,Z,< & >) AND MUST CHANGE THE COLOUR  OF ALL THE DISCS TO MOVE ON TO THE NEXT LEVEL.DELETE ACTS AS MISSION ABORT."
3720 PRINT:PEN 3:PRINT TAB(9);"GOOD LUCK YOU'LL NEED IT"
3730 LOCATE 1,24:PEN 1:PRINT TAB(3);"PRESS SPACE TO RETURN TO THE OPTIONS";
3740 WHILE INKEY(47)=-1:WEND
3750 INK 0,0:INK 1,0:INK 2,0:INK 3,0
3760 GOTO 2140
3770 '***********
3780 '**U.D.G's**
3790 '***********
3800 SYMBOL AFTER 32
3810 SYMBOL 48,124,198,198,206,206,206,124,0
3820 SYMBOL 49,24,24,24,56,56,56,56,0
3830 SYMBOL 50,126,102,6,126,96,110,126,0
3840 SYMBOL 51,126,102,6,62,14,110,126,0
3850 SYMBOL 52,204,204,220,254,28,28,28,0
3860 SYMBOL 53,126,102,96,126,14,110,126,0
3870 SYMBOL 54,126,102,96,126,110,110,126,0
3880 SYMBOL 55,126,102,12,12,28,28,28,0
3890 SYMBOL 56,62,54,54,126,110,110,126,0
3900 SYMBOL 57,126,102,110,126,14,14,14,0
3910 RETURN
3920 SYMBOL 200,1,15,63,127,127,63,15,1
3930 SYMBOL 201,128,240,252,254,254,252,240,128
3940 SYMBOL 202,0,0,0,0,0,64,112,126
3950 SYMBOL 203,0,0,0,0,0,2,14,126
3960 SYMBOL 204,127,127,127,127,127,63,15,1
3970 SYMBOL 205,254,254,254,254,254,252,240,128
3980 SYMBOL 206,0,3,3,0,0,0,3,3
3990 SYMBOL 207,0,192,224,0,0,0,192,192
4000 SYMBOL 208,3,3,1,1,1,0,0,0
4010 SYMBOL 209,64,192,128,128,128,0,0,0
4020 SYMBOL 210,0,0,0,1,1,1,0,0
4030 SYMBOL 211,0,0,0,64,224,192,0,0
4040 SYMBOL 212,128,0,0,0,0,0,0,0
4050 SYMBOL 213,0,0,0,2,2,0,0,0
4060 SYMBOL 214,0,0,0,0,0,1,0,0
4070 SYMBOL 215,0,0,0,0,0,192,0,0
4080 SYMBOL 216,0,2,3,2,3,15,11,10
4090 SYMBOL 217,0,64,192,64,192,240,208,80
4100 SYMBOL 218,10,11,3,3,0,0,0,0
4110 SYMBOL 219,80,208,192,192,0,0,0,0
4120 SYMBOL 220,0,0,0,1,0,0,0,1
4130 SYMBOL 221,0,0,0,128,0,0,0,128
4140 SYMBOL 222,1,0,8,0,3,0,0,0
4150 SYMBOL 223,128,0,16,0,192,0,0,0
4160 SYMBOL 224,0,0,3,5,7,3,1,1
4170 SYMBOL 225,0,0,128,64,192,128,0,0
4180 SYMBOL 226,3,14,31,19,0,0,0,0
4190 SYMBOL 227,128,224,240,144,0,0,0,0
4200 SYMBOL 228,0,0,0,2,0,0,0,0
4210 SYMBOL 229,0,0,0,128,0,0,0,0
4220 SYMBOL 230,0,1,0,12,0,0,0,0
4230 SYMBOL 231,0,0,0,96,0,0,0,0
4240 SYMBOL 232,0,3,7,0,0,0,3,3
4250 SYMBOL 233,0,192,192,0,0,0,192,192
4260 SYMBOL 234,2,3,1,1,1,0,0,0
4270 SYMBOL 235,192,192,128,128,128,0,0,0
4280 SYMBOL 236,0,0,0,2,7,3,0,0
4290 SYMBOL 237,0,0,0,128,128,128,0,0
4300 SYMBOL 238,1,0,0,0,0,0,0,0
4310 SYMBOL 239,0,0,0,64,64,0,0,0
4320 SYMBOL 240,0,0,0,0,0,3,0,0
4330 SYMBOL 241,0,0,0,0,0,128,0,0
4340 SYMBOL 242,126,112,64,0,0,0,0,0
4350 SYMBOL 243,126,14,2,0,0,0,0,0
4360 RETURN
4370 '***************
4380 '**SCREEN DATA**
4390 '***************
4400 DATA 10,7,8,9,10,9,12,9,6,11,8,11,10,11,12,11,14,11,4,13,6,13,8,13,10,13,12,13,14,13,16,13,6,15,8,15,10,15,12,15,14,15,8,17,10,17,12,17,10,19
4410 DATA 10,7,8,9,10,9,12,9,6,11,8,11,10,11,12,11,14,11,4,13,6,13,8,13,10,13,12,13,14,13,16,13,4,15,10,15,16,15,4,17,10,17,16,17,4,19,10,19,16,19
4420 DATA 4,7,10,7,16,7,4,9,10,9,16,9,4,11,10,11,16,11,4,13,6,13,8,13,10,13,12,13,14,13,16,13,6,15,10,15,14,15,6,17,10,17,14,17,6,19,10,19,14,19
4430 DATA 10,7,4,9,6,9,8,9,10,9,12,9,14,9,16,9,8,11,12,11,4,13,6,13,8,13,12,13,14,13,16,13,6,15,10,15,14,15,6,17,8,17,10,17,12,17,14,17,10,19
4440 DATA 8,7,10,7,12,7,10,9,4,11,8,11,10,11,12,11,16,11,4,13,6,13,8,13,10,13,12,13,14,13,16,13,4,15,8,15,10,15,12,15,16,15,10,17,8,19,10,19,12,19
4450 '******************
4460 '**HI-SCORE TABLE**
4470 '******************'
4480 DATA **STAR**      3000,ARNOLD        2500,ROLAND        2000,MINER WHO     1500,GENIUS        1000,THE SPY        750,ACG            600,SUPERMAN       500,HIPPIE         250,P.J.K.!        100
4490 '***************
4500 '**STRING DATA**
4510 '***************
4520 DATA 15,1,200,201,22,1,15,2,8,8,202,203,10,8,8,204,205,22,0
4530 DATA 22,1,15,6,216,217,8,8,10,218,219,8,8,11,15,7,220,221,8,8,10,222,223,22,0
4540 DATA 22,1,15,8,224,225,8,8,10,226,227,8,8,11,15,7,228,229,8,8,10,230,231,22,0
4550 DATA 22,1,15,3,206,207,8,8,10,208,209,8,8,11,15,5,210,211,8,10,212,15,4,8,8,11,213,8,10,15,0,214,215,22,0
4560 DATA 22,1,15,3,232,233,8,8,10,234,235,8,8,11,15,5,236,237,10,8,8,238,11,15,4,239,10,8,8,15,0,240,241,22,0
4570 DATA 22,1,10,200,201,15,0,8,8,242,243,8,8,11,15,2,204,205,8,8,15,0,202,203,22,0
4580 DATA 22,1,10,200,201,8,8,15,0,242,243,11,8,8,143,143,22,0
4590 DATA 22,1,15,12,170,171,8,8,15,13,172,173,8,8,15,14,174,175,8,8,15,15,176,177,8,8,15,12,10,178,179,8,8,15,13,180,181,8,8,15,14,182,183,8,8,15,15,184,185,22,0
4600 '***************
4610 '**COLOUR DATA**
4620 '***************
4630 DATA 2,12,16,13,6,25,10,25,26,0,0,0,0
4640 '**********************
4650 '**TITLE PAGE LETTERS**
4660 '**********************
4670 DATA 32,143,143,143,143,32,214,143,143,215,32,143,143,143,215,32,143,143,143
4680 DATA 32,143,32,32,32,32,143,32,32,143,32,143,32,32,143,32,32,143,32
4690 DATA 32,143,143,143,32,32,143,32,32,143,32,143,143,143,212,32,32,143,32
4700 DATA 32,143,32,32,32,32,143,32,32,143,32,143,213,215,32,32,32,143,32
4710 DATA 32,143,32,32,32,32,213,143,143,212,32,143,32,213,215,32,32,143,32
4720 DATA 32,143,32,215,32,32,143,32,143,32,32,143,32,143,32,215,32,32,143,32,214,143,143,32,143,32,143,143,143,215,32,143,32,32,32,143,143,143
4730 DATA 32,143,32,143,215,32,143,32,143,32,32,143,32,143,32,143,215,32,143,32,143,32,32,32,143,32,143,32,32,143,32,143,32,32,32,143,32,32
4740 DATA 32,143,32,143,213,215,143,32,143,32,32,143,32,143,32,143,213,215,143,32,143,32,32,32,143,32,143,143,143,255,32,143,32,32,32,143,143,32
4750 DATA 32,143,32,143,32,213,143,32,213,215,214,212,32,143,32,143,32,213,143,32,143,32,32,32,143,32,143,32,32,143,32,143,32,32,32,143,32,32
4760 DATA 32,143,32,143,32,32,213,32,32,213,212,32,32,143,32,143,32,32,213,32,213,143,143,32,143,32,143,143,143,212,32,143,143,143,32,143,143,143
4770 DATA 0,25,6,2
4780 '**************************
4790 '**ERROR FOUND IN LISTING**
4800 '**************************
4810 CALL &BC02
4820 i=REMAIN(1):i=REMAIN(2)
4830 POKE 46312,0
4840 KEY DEF 31,1,46:KEY DEF 25,1,45
4850 CALL &BB03
4860 SOUND 135,0,1,0
4870 MODE 1:PEN 1:PAPER 0:CLS
4880 GOSUB 4930
4890 SYMBOL AFTER 255
4900 PEN 3:PRINT "THERE IS AN ERROR";ERR;"IN LINE";ERL;
4910 PEN 2:PRINT "PLEASE CORRECT BEFORE RE-RUNNING PROGRAM":PEN 1
4920 END
4930 WINDOW#0,1,40,1,24
4940 KEY DEF 7,1,138
4950 KEY DEF 31,1,46
4960 KEY DEF 25,1,45
4970 WINDOW#7,1,40,25,25
4980 PAPER#7,2:PEN#7,3
4990 CLS#7
5000 PRINT#7,TAB(6);" PROGRAM CODE ";CHR$(164);" N.CLARKE 1985 "
5010 CLS
5020 RETURN