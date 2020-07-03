1000 '-----------------------
1010 '---- ORBIT CHICANE ----
1020 '-- (c) Juni 1987 by: --
1030 '-----------------------
1040 '--- Thomas Rotthoff ---
1050 '--------- und ---------
1060 '--- Alexander Stroh ---
1070 '-----------------------
1080 '--- Music and other ---
1090 '--- special effects ---
1100 '--- Thomas Rotthoff ---
1110 '-----------------------
1120 '--- Graphics and MC ---
1130 '--- Alexander Stroh ---
1140 '-----------------------
1150 '--- PREPARING PARTS
1160 'Welcome
1170 SYMBOL AFTER 256:MEMORY &8FFF
1180 LOAD"orbit.bin":CALL &9C00
1190 GOSUB 2810:BORDER 0:MODE 0:PAPER 0:CLS:PEN 4
1200 INK 4,26,2:INK 13,6:SPEED INK 5,5
1210 WINDOW#1,17,20,11,14:title$="ORBIT--CHICAN"
1220 FOR l=0 TO 128 STEP 2
1230 |TOP,l,118:SOUND 1,0,3,4,,,1
1240 IF l>24 AND l MOD 8=0 THEN LOCATE l/8,12:PRINT MID$(title$,l/8-3,1);:|BIG,l/8,12,1:SOUND 2,177,3,6
1250 |CL.TOP,l,118:NEXT:CLS#1:LOCATE 17,12:PRINT"E"
1260 |BIG,17,12,1:|BUFFER:|HLT,4:CLS
1270 'Defining part
1280 DEFINT a-z:DEFREAL s
1290 SYMBOL AFTER 32
1300 OPENIN"orbit.fil
1310 FOR i=1 TO 10
1320 INPUT#9,s(i)
1330 INPUT#9,nam$(i)
1340 INPUT#9,day$(i)
1350 NEXT:CLOSEIN
1360 DIM c(16),ix(2,9),iy(2,9)
1370 DIM col$(2),com$(9),lev$(3),null$(6)
1380 SPEED INK 4,4
1390 ENT-1,2,1,3,2,-1,3
1400 ENV 1,1,-2,1
1410 ENV 2,2,-1,2
1420 ENV 3,1,14,1,1,0,10,14,-1,3
1430 ENV 4,3,-3,25
1440 'Symbols
1450 SYMBOL 33,8,8,8,8,8,0,8,0
1460 SYMBOL 34,20,20,20,0,0,0,0,0
1470 SYMBOL 35,20,20,62,20,62,20,20,0
1480 SYMBOL 36,8,30,40,28,10,60,8,0
1490 SYMBOL 37,0,66,68,8,16,34,66,0
1500 SYMBOL 38,0,16,40,18,44,76,50,0
1510 SYMBOL 39,8,8,16
1520 SYMBOL 40,4,8,16,16,16,8,4,0
1530 SYMBOL 41,16,8,4,4,4,8,16,0
1540 SYMBOL 42,0,36,24,126,24,36,0,0
1550 SYMBOL 43,0,8,8,62,8,8,0,0
1560 SYMBOL 44,0,0,0,0,0,8,8,16
1570 SYMBOL 45,0,0,0,62,0,0,0,0
1580 SYMBOL 46,0,0,0,0,0,8,8,0
1590 SYMBOL 47,0,2,4,8,16,32,64,0
1600 SYMBOL 48,62,34,34,34,34,34,62,0
1610 SYMBOL 49,2,2,2,2,2,2,2,0
1620 SYMBOL 50,62,2,2,62,32,32,62,0
1630 SYMBOL 51,62,2,2,62,2,2,62,0
1640 SYMBOL 52,32,32,40,62,8,8,8,0
1650 SYMBOL 53,62,32,32,62,2,2,62,0
1660 SYMBOL 54,62,32,32,62,34,34,62,0
1670 SYMBOL 55,62,2,2,2,2,2,2,0
1680 SYMBOL 56,62,34,34,62,34,34,62,0
1690 SYMBOL 57,62,34,34,62,2,2,62,0
1700 SYMBOL 58,0,0,8,8,0,8,8,0
1710 SYMBOL 59,0,0,8,8,0,8,8,16
1720 SYMBOL 60,0,8,16,32,16,8,0,0
1730 SYMBOL 61,0,0,62,0,62,0,0,0
1740 SYMBOL 62,0,32,16,8,16,32,0,0
1750 SYMBOL 63,60,2,28,32,30,0,8,0
1760 SYMBOL 64,0,60,66,78,78,64,62,0
1770 SYMBOL 65,28,34,34,62,34,34,34,0
1780 SYMBOL 66,60,34,34,60,34,34,60,0
1790 SYMBOL 67,30,32,32,32,32,32,30,0
1800 SYMBOL 68,60,34,34,34,34,34,60,0
1810 SYMBOL 69,62,32,32,56,32,32,62,0
1820 SYMBOL 70,62,32,32,56,32,32,32,0
1830 SYMBOL 71,30,32,32,44,34,34,28,0
1840 SYMBOL 72,34,34,34,62,34,34,34,0
1850 SYMBOL 73,62,8,8,8,8,8,62,0
1860 SYMBOL 74,2,2,2,2,2,34,28,0
1870 SYMBOL 75,34,36,40,48,40,36,34,0
1880 SYMBOL 76,32,32,32,32,32,32,62,0
1890 SYMBOL 77,34,54,42,34,34,34,34,0
1900 SYMBOL 78,34,50,42,38,34,34,34,0
1910 SYMBOL 79,28,34,34,34,34,34,28,0
1920 SYMBOL 80,60,34,34,60,32,32,32,0
1930 SYMBOL 81,28,34,34,34,42,36,26,0
1940 SYMBOL 82,60,34,34,60,40,36,34,0
1950 SYMBOL 83,30,32,32,28,2,2,60,0
1960 SYMBOL 84,62,8,8,8,8,8,8,0
1970 SYMBOL 85,34,34,34,34,34,34,28,0
1980 SYMBOL 86,34,34,34,34,34,20,8,0
1990 SYMBOL 87,34,34,34,34,42,42,20,0
2000 SYMBOL 88,34,20,8,8,8,20,34,0
2010 SYMBOL 89,34,20,8,8,8,8,8,0
2020 SYMBOL 90,62,2,4,8,16,32,62,0
2030 'Arrays
2040 RESTORE 2050:FOR l=0 TO 9:READ com$(l):NEXT
2050 DATA TWIN ROCK,WHERE ALIENS DIE
2060 DATA THE THIRD SCREEN,DEVIL'S CORNER
2070 DATA HALF DOME 5,ORBIT ON TOP
2080 DATA END OF HOPE,SKY GUNNER
2090 DATA FORGOTTEN PLATEAU,THE LAST FIGHT
2100 FOR m=0 TO 9:FOR l=0 TO 2
2110 ix(l,m)=PEEK(38464+m*6+l*2)
2120 iy(l,m)=PEEK(38465+m*6+l*2)
2130 NEXT l,m:FOR l=0 TO 16:c(l)=0:NEXT
2140 FOR l=1 TO 6:null$(l)=STRING$(l,"0"):NEXT
2150 lev$(1)="EASY":lev$(2)="HALF":lev$(3)="HARD"
2160 col$(1)="GREEN":col$(2)="COLOR":col=1:lev=1:neu=0
2170 'Menue
2180 |BUFFER:GOSUB 2940:PAPER 0:PEN 1:MODE 1
2190 LOCATE 18,4:PRINT"MENUE:":|BIG,18,4,6:PEN 2
2200 LOCATE 7,7:PRINT"INSTRUCTIONS -------------"
2210 LOCATE 7,9:PRINT"DEMO ---------------------"
2220 LOCATE 7,11:PRINT"TOPTEN -------------------"
2230 LOCATE 7,13:PRINT"MONITOR [GREEN/COLOR] ----"
2240 LOCATE 7,15:PRINT"SKILL LEVEL [    ]--------"
2250 PEN 3:LOCATE 20,15:PRINT lev$(lev):PEN 2
2260 LOCATE 7,17:PRINT"START GAME ---------------"
2270 LOCATE 7,19:PRINT"END ----------------------"
2280 PEN 3:FOR l=7 TO 19 STEP 2:LOCATE 33,l:PRINT(l+1)/2-3:NEXT
2290 PEN 1:LOCATE 14,21:PRINT"SELECT OPTION;":|BIG,14,21,14
2300 PEN 2:IF col=1 THEN LOCATE 22,13:PRINT col$(2):LOCATE 16,13 ELSE LOCATE 16,13:PRINT col$(1):LOCATE 22,13
2310 PEN 3:PRINT col$(col)
2320 INK 1,6:INK 2,26:INK 3,15-(col-1)*13
2330 in=ASC(INKEY$+CHR$(0)):in=in-48:IF in<1 OR in>7 THEN 2330
2340 IF in=1 THEN 4310
2350 IF in=2 THEN 3850
2360 IF in=3 THEN GOSUB 3730:GOTO 2180
2370 IF in<>4 THEN 2390 ELSE col=3-col:INK 3,15-(col-1)*13:PEN 2:IF col=1 THEN LOCATE 22,13:PRINT col$(2):LOCATE 16,13 ELSE LOCATE 16,13:PRINT col$(1):LOCATE 22,13
2380 PEN 3:PRINT col$(col):GOTO 2330
2390 IF in<>5 THEN 2410 ELSE lev=lev+1:IF lev>3 THEN lev=1
2400 PEN 3:LOCATE 20,15:PRINT lev$(lev):GOTO 2330
2410 IF in=6 THEN liv=lev*2+1:flip=6-2*lev:GOTO 2520
2420 IF neu=0 THEN 2490
2430 OPENOUT"orbit.fil
2440 FOR l=1 TO 10
2450 PRINT#9,s(l)
2460 PRINT#9,nam$(l)
2470 PRINT#9,day$(l)
2480 NEXT:CLOSEOUT
2490 CLS:CALL &BC02:PEN 1
2500 CLEAR:SYMBOL AFTER 256:MODE 1:|READY:END
2510 ' Screen
2520 GOSUB 4260:|HLT,4:GOSUB 2940:GOSUB 3410
2530 PEN 3:LOCATE 1,21:PRINT"SCORE: ROUND: LIVES:"
2540 PEN 3:LOCATE 1,24:PRINT"HI-SC: ITEMS: BONUS:"
2550 PEN 1:LOCATE 1,22:PRINT"000000 000001 000004"
2560 PEN 1:LOCATE 1,25:PRINT"000000 000003 000000";
2570 sch=s(1):GOSUB 3200
2580 b=0:sc=0:sbon=0:GOSUB 3270
2590 b=b+1:GOSUB 3240
2600 INK 9,0:INK 10,0:PEN 5:LOCATE 1,1
2610 PRINT STRING$(20,143):PEN 2:CLS#1
2620 it=3:GOSUB 3290
2630 |MOUNTAIN,b:FOR l=0 TO 2:|SPRITE,ix(l,b-1),iy(l,b-1),3:NEXT:GOSUB 3350
2640 '--- MAIN PROGRAM
2650 x=36:y=191:ax=0:ay=0:s=1:z=0
2660 POKE &A670,0:ON col GOSUB 2860,2800
2670 x1=x:y1=y:s1=s
2680 IF 1+INKEY(79)THEN 3030
2690 IF INKEY(1)XOR INKEY(75)THEN s=2:ax=ax+(1 AND ax<6-flip)
2700 IF INKEY(8)XOR INKEY(74)THEN s=1:ax=ax-(1 AND ax>flip-6)
2710 IF INKEY(0)XOR INKEY(72)THEN ay=ay+(1 AND ay<6-flip):GOTO 2730
2720 ay=ay-(1 AND ay>-6 AND zz MOD 3=0)
2730 zz=zz+1:IF zz MOD 4=0 THEN ax=ax-SGN(ax)
2740 x=x+ax:y=y+ay:IF x<-2 THEN x=150+x ELSE IF x>150 THEN x=x-150
2750 |CL.SPRITE,x1,y1,s1:|SPRITE,x,y,s
2760 SOUND 1,622-y*3,3,4:IF PEEK(&A670)THEN IF PEEK(&A670)=15 THEN 3070 ELSE 2960
2770 GOTO 2670
2780 '--- THE ROUTINES
2790 'Inks on (color)
2800 BORDER 13
2810 INK 0,0:INK 1,24:INK 2,0:INK 3,6
2820 INK 4,26:INK 5,13:INK 8,18:INK 9,2
2830 INK 10,18,9:INK 11,6:INK 12,24:INK 13,26
2840 INK 14,20:INK 15,24
2850 RETURN
2860 'Inks on (green)
2870 BORDER 13
2880 INK 0,0:INK 1,26:INK 2,0:INK 3,1
2890 INK 5,13:INK 8,18:INK 9,24:INK 10,2,19
2900 INK 10,2,19:INK 11,11:INK 12,26:INK 13,24
2910 INK 14,20:INK 15,26
2920 RETURN
2930 'Inks off
2940 BORDER 0:FOR l=0 TO 15:INK l,0:NEXT:RETURN
2950 'Crash
2960 |CL.SPRITE,x,y,s:PAPER 5:PEN 0:LOCATE 1,1:PRINT"BAD LUCK. TRY AGAIN!"
2970 MOVE 0,94:DRAWR 638,0,5:MOVER 0,-2:DRAWR-638,0
2980 |FLUSH:SOUND 2,0,0,0,3,0,3:FOR l=y TO 16 STEP-2
2990 |SHAPE,x,l,0:SOUND 1,622-l*3,2,4:|CL.SHAPE,x,l:NEXT
3000 |HLT,4:liv=liv-1
3010 IF liv THEN GOSUB 3270:INK 2,13:GOTO 2600
3020 'End of game
3030 PEN 1:LOCATE 16,22:PRINT null$(5);
3040 sc=sc+sbon:GOSUB 3150:|HLT,5:IF sc<=s(10)THEN 2180
3050 GOSUB 2940:MODE 1:GOSUB 3440:GOTO 2180
3060 'Got item
3070 SOUND 2,61,0,0,4:SOUND 2,0,100,0:FOR l=0 TO 2
3080 IF ABS(ix(l,b-1)-x)<8 THEN|CL.SPRITE,ix(l,b-1),iy(l,b-1),3:|SPRITE,x,y,s
3090 NEXT:it=it-1:sc=sc+b*lev*liv*150
3100 POKE &A670,0:GOSUB 3150:IF it THEN GOSUB 3280:ay=flip:GOTO 2670
3110 sbon=sbon+b*lev*liv*75:GOSUB 3310
3120 GOSUB 4260:|HLT,6:|CL.SPRITE,x,y,s
3130 IF b=10 THEN 3030 ELSE 2590
3140 'Set score
3150 IF sc=0 THEN RETURN
3160 le=INT(LOG10(sc))+1:PEN 1:LOCATE 1,22
3170 PRINT USING"######";sc;:LOCATE 1,22
3180 PRINT null$(6-le);:RETURN
3190 'Set highscore
3200 le=INT(LOG10(sch))+1:PEN 1:LOCATE 1,25
3210 PRINT USING"######";sch;:LOCATE 1,25
3220 PRINT null$(6-le);:RETURN
3230 'Set level
3240 le=INT(LOG10(b))+1:PEN 1:LOCATE 13-le,22
3250 PRINT b;:LOCATE 9,22:PRINT null$(5-le);:RETURN
3260 'Set lives
3270 PEN 1:LOCATE 20,22:PRINT USING"#";liv;:RETURN
3280 'Set item
3290 PEN 1:LOCATE 13,25:PRINT USING"#";it;:RETURN
3300 'Set bonus
3310 le=INT(LOG10(sbon))+1:PEN 1:LOCATE 20-le,25
3320 PRINT STR$(sbon);:LOCATE 15,25
3330 PRINT null$(6-le);:RETURN
3340 'Place screen-title
3350 PEN 5:LOCATE 1,1:PRINT STRING$(20,143);
3360 le=LEN(com$(b-1)):LOCATE 11-le\2,1
3370 PAPER 5:PEN 2:PRINT com$(b-1);
3380 IF le/2<>le\2 THEN|LTURN,1,1
3390 |READY:RETURN
3400 'Define window
3410 MODE 0:PAPER 0:CLS:PAPER 5:LOCATE 1,20:PRINT CHR$(20)
3420 PEN 5:LOCATE 1,1:PRINT STRING$(20,143):WINDOW#1,1,20,2,19:RETURN
3430 'Topten (put in)
3440 PAPER 0:CLS:|BUFFER:neu=1:s(10)=sc
3450 nam$(10)="":day$(10)="":PEN 3
3460 LOCATE 16,6:PRINT"EXCELLENT!"
3470 LOCATE 8,8:PRINT"YOU'VE REACHED THE TOP TEN"
3480 LOCATE 8,9:PRINT STRING$(26,45)
3490 PEN 1:LOCATE 16,12
3500 PRINT"ENTER NAME":PEN 2:LOCATE 14,15
3510 PRINT STRING$(14,45):INK 2,15-(col-1)*13
3520 INK 1,26:INK 3,6:a1=14:a2=14:a3=13:k=0
3530 GOSUB 3590:FOR l=0 TO a3:nam$(10)=nam$(10)+CHR$(c(l)):c(l)=32:NEXT
3540 PEN 1:LOCATE 11,17:PRINT"ENTER DAY OF SCORING"
3550 PEN 2:LOCATE 16,20:PRINT"----------"
3560 a1=16:a2=19:a3=9:k=0:GOSUB 3590
3570 FOR l=0 TO 10:day$(10)=day$(10)+CHR$(c(l)):c(l)=32:NEXT:GOTO 3650
3580 'Input subroutine
3590 WHILE in$="":in$=INKEY$:WEND:in=ASC(in$)
3600 IF in$=CHR$(13)THEN in$="":RETURN
3610 IF in$=CHR$(127)THEN k=k-(1 AND k>0):LOCATE a1+k,a2:PRINT" ":c(k)=32
3620 IF in<32 OR in>90 THEN in$="":GOTO 3590
3630 LOCATE a1+k,a2:IF k<=a3 THEN PRINT CHR$(in)ELSE PRINT" "
3640 c(k)=in:k=k+(1 AND k<=a3):in$="":GOTO 3590
3650 'Topten (sort)
3660 FOR f=2 TO 10:FOR i=10 TO f STEP-1
3670 IF s(i-1)>=s(i)THEN 3710
3680 s1=s(i):s(i)=s(i-1):s(i-1)=s1
3690 j$=nam$(i):nam$(i)=nam$(i-1):nam$(i-1)=j$
3700 j$=day$(i):day$(i)=day$(i-1):day$(i-1)=j$
3710 NEXT i,f
3720 'Topten (print)
3730 GOSUB 2940:MODE 1:PEN 3:LOCATE 13,1
3740 PRINT"THE HALL OF FAME":|BIG,13,1,16
3750 PEN 2:LOCATE 2,3:PRINT STRING$(38,45)
3760 FOR l=1 TO 10:LOCATE 2,2+l*2
3770 PRINT nam$(l):LOCATE 30,2+l*2:PRINT day$(l)
3780 PEN 1:LOCATE 18,2+l*2:PRINT USING"######";s(l)
3790 IF s(l)<100000 THEN LOCATE 18,2+l*2:PRINT"0";
3800 PEN 2:NEXT:LOCATE 2,23:PRINT STRING$(38,45)
3810 PEN 3:LOCATE 8,24:PRINT"PRESS ANY KEY TO CONTINUE;":|BIG,8,24,28
3820 INK 1,26:INK 2,15-(col-1)*13
3830 INK 3,6:|BUFFER:|KEY.IN:CLS:RETURN
3840 'Demo
3850 quiet=0:b=RND*9+1:GOSUB 2940
3860 GOSUB 3410:|MOUNTAIN,b:|SPRITE,0,183,4:|SPRITE,128,167,5:GOSUB 3350
3870 PEN 4:LOCATE 1,20:PRINT STRING$(20,154)
3880 LOCATE 1,25:PRINT STRING$(20,154);
3890 PEN 3:LOCATE 1,21:PRINT"SUPRA-SOFT"
3900 LOCATE 1,23:PRINT"TORO-GAMES"
3910 PEN 1:LOCATE 13,21:PRINT"THE DEMO"
3920 LOCATE 13,22:PRINT"THE DEMO"
3930 |BIG,13,22,8:|BIG,1,23,20
3940 |BIG,1,21,20:|BIG,13,21,8:|READY
3950 ON col GOSUB 2860,2800
3960 RESTORE 4040:EVERY 5,0 GOSUB 4000
3970 ON SQ(1)GOSUB 4020:IF quiet=0 THEN FOR m=1 TO 45:NEXT:GOTO 3970
3980 FOR l=1 TO 1750:NEXT:r=REMAIN(0):|FLUSH:GOTO 2180
3990 'Move aliens
4000 |LTURN,3:|RTURN,5:RETURN
4010 'Music
4020 IF quiet THEN RETURN ELSE READ a,c:IF c=-1 THEN quiet=1
4030 SOUND 1,a,c*1,12,1,1:RETURN
4040 DATA 142,20,142,10,0,4,142,10
4050 DATA 0,4,142,20,0,4,142,10,0,4
4060 DATA 142,20,213,20,179,20,142,20
4070 DATA 159,20,0,4,159,10,0,4,159,10
4080 DATA 0,4,159,20,0,4,159,10,0,4
4090 DATA 159,10,0,4,159,20,0,4,239,20
4100 DATA 190,20,159,20,142,20,0,4
4110 DATA 142,10,0,4,142,10,0,4,142,20
4120 DATA 0,4,142,10,0,4,142,10,0,5
4130 DATA 142,20,127,20,119,20,106,20
4140 DATA 119,20,142,20,159,20,190,20
4150 DATA 213,40,0,8,213,40,0,4,142,40
4160 DATA 0,4,142,20,0,4,142,10,0,4
4170 DATA 142,20,213,20,179,20,142,20
4180 DATA 159,40,0,4,159,20,0,4,159,10
4190 DATA 0,4,159,20,239,20,179,20
4200 DATA 159,20,142,40,0,4,142,20
4210 DATA 142,10,0,4,142,10,0,4
4220 DATA 142,20,127,20,119,20,106,20
4230 DATA 119,20,142,20,159,20,190,20
4240 DATA 213,40,0,4,213,40,0,-1
4250 'Winner sound
4260 RESTORE 4280
4270 READ a,c:IF c=-1 THEN RETURN ELSE SOUND 2,a,c*0.5,12,1,1:GOTO 4270
4280 DATA 426,40,319,50,426,20,319,40
4290 DATA 253,20,0,5,253,20,0,5,319,80
4300 DATA 426,40,0,-1
4310 'Instructions
4320 GOSUB 2940:MODE 1:PEN 1:LOCATE 13,1
4330 PRINT"INSTRUCTIONS (1)":|BIG,13,1,16
4340 PEN 2:PRINT:PRINT:PRINT
4350 PRINT" DER HEUTIGE SOFTWARE-MARKT IST UEBER-"
4360 PRINT" SCHWEMMT MIT SCHLECHTEN PROGRAMMEN."
4370 PRINT" DAS MUSS NICHT SEIN! >ORBIT CHICANE<"
4380 PRINT" BEWEIST DAS GEGENTEIL: EIN SPIEL, DAS"
4390 PRINT" KLASSE HAT!"
4400 PEN 3:PRINT
4410 PRINT" LASSEN SIE SICH FESSELN VON MITREISSEN-";
4420 PRINT" DEN SPRITES, AUSGEKLUEGELTER GRAPHIK"
4430 PRINT" UND Z80-POWERSOUND. DREI FAKTOREN, EINE";
4440 PRINT" GARANTIE: ORBIT CHICANE HAELT, WAS DER"
4450 PRINT" NAME VERSPRICHT!"
4460 PEN 2:PRINT
4470 PRINT" MULTI-SCREEN TECHNIK MIT ZEHN TOLLEN"
4480 PRINT" GEBIRGSZUEGEN ERWARTET SIE, WOBEI JE-"
4490 PRINT" DESMAL DREI ITEMS EINZUSAMMELN SIND."
4500 PRINT" SO LEICHT ES KLINGT, SO SCHWER IST ES."
4510 PEN 1:LOCATE 14,23:PRINT"<<< TASTE; >>>"
4520 |BIG,14,23,14:INK 1,6:INK 2,26
4530 INK 3,15-(col-1)*13:|BUFFER:|KEY.IN
4540 GOSUB 2940:MODE 1:PEN 1:LOCATE 13,1
4550 PRINT"INSTRUCTIONS (2)":|BIG,13,1,16
4560 PEN 2:PRINT:PRINT:PRINT
4570 PRINT" PRO EINGESAMMELTEM ITEM BEKOMMEN SIE"
4580 PRINT" PUNKTE, DEREN ANZAHL SICH NACH SCREEN-"
4590 PRINT" INDEX, RESTLEBEN SOWIE DEM VORHER IM"
4600 PRINT" MENUE SELEKTIERTEN SKILL-LEVEL RICHTET.";
4610 PEN 3:PRINT
4620 PRINT" NACH ERFOLGREICHER BEENDIGUNG IHRER"
4630 PRINT" GEFAHRVOLLEN MISSION KOENNEN SIE SICH"
4640 PRINT" BEI ENTSPRECHENDER PUNKTEZAHL SELBST-"
4650 PRINT" VERSTAENDLICH IN DIE TOPTEN EINREIHEN."
4660 PEN 2:PRINT
4670 PRINT" DIES IST AUCH DER FALL, WENN SIE DAS"
4680 PRINT" SPIEL VORZEITIG DURCH >DEL< ABBRECHEN."
4690 PRINT" SIND SIE DAGEGEN MUTIG GENUG, ERHAL-"
4700 PRINT" TEN SIE NACH JEDER RUNDE EINEN BONUS!"
4710 PEN 3:PRINT
4720 PRINT"         VIEL GLUECK WUENSCHEN:"
4730 PRINT"   THOMAS ROTTHOFF -- ALEXANDER STROH"
4740 PEN 1:LOCATE 14,24:PRINT"<<< TASTE; >>>"
4750 |BIG,14,24,14:INK 1,6:INK 2,26
4760 INK 3,15-(col-1)*13:|BUFFER:|KEY.IN:GOTO 2180