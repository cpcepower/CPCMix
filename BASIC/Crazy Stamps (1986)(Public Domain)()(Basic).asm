10 REM   ****************************
20 REM  ***                        ***
30 REM *** ----- CRAZY STAMPS ----- ***
40 REM ***                          ***
50 REM *** Copyright by Dirk M]ller ***
60 REM ***                          ***
70 REM ***  4900 Herford,  Juli 86  ***
80 REM  ***                        ***
90 REM   ****************************
100 REM================================
101 REM===    Initialisierung 1     ===
102 REM================================
110 CLEAR:DEFINT a-z:GOSUB 6000:DIM f(6,5),r(5),k(6),s(7)
120 DIM w(26),pa(26),st(26),dm(10),gr(10),na$(10),t(48),h(78),d(78)
130 INK 0,0:INK 1,26:INK 2,24:INK 3,6:INK 4,1:INK 5,15:INK 6,4:INK 7,12
140 INK 8,16:INK 9,11:INK 10,10:INK 11,9:INK 12,3:INK 13,17:INK 14,19:INK 15,20
150 SYMBOL 250,0,30,30,51,51,3,3,6
160 SYMBOL 251,6,12,12,0,0,12,12
170 SYMBOL 252,0,60,60,102,102,6,6,12
180 SYMBOL 253,12,24,24,0,0,24,24
190 SYMBOL 254,1,1,1,1,1,1,1,1:                                                     SYMBOL 255,128,128,128,128,128,128,128,128:                                     SYMBOL 169,170,85,170,85,170,85,170,85
200 SYMBOL 170,0,0,0,0,0,5,7,3
210 SYMBOL 171,0,0,0,0,0,85,255,255
220 SYMBOL 172,0,0,0,0,0,64,192,128
230 SYMBOL 173,6,2,6,2,6,2,6,2
240 SYMBOL 174,192,128,192,128,192,128,192,128
250 SYMBOL 175,7,7,5
260 SYMBOL 176,255,255,85
270 SYMBOL 177,192,192,64
280 SYMBOL 178,3,12,16,19,36,40,67,68
290 SYMBOL 179,192,48,8,200,36,20,194,34
300 SYMBOL 180,136,143,152,144,144,144,151,151
310 SYMBOL 181,17,241,25,9,9,9,233,233
320 SYMBOL 182,151,144,144,144,144,152,143,128
330 SYMBOL 183,233,9,9,9,9,25,241,1
340 SYMBOL 184,64,64,35,39,19,16,12,3
350 SYMBOL 185,2,2,196,228,200,8,48,192
360 SYMBOL 186,0,0,0,0,0,0,3,7
370 SYMBOL 187,0,0,0,0,0,0,192,224
380 SYMBOL 188,7,15,15,29,29,25,25,29
390 SYMBOL 189,224,240,240,24,88,88,88,88
400 SYMBOL 190,29,29,29,29,29,15,15,7
410 SYMBOL 191,88,88,88,88,24,240,240,224
420 SYMBOL 192,7,3
430 SYMBOL 193,224,192
440 SYMBOL 194,0,0,0,0,0,1,3,3
450 SYMBOL 195,0,0,0,0,0,3,15,159
460 SYMBOL 196,0,0,0,0,0,192,240,249
470 SYMBOL 197,0,0,0,0,0,128,192,192
480 SYMBOL 198,3,2
490 SYMBOL 199,223,251,113,49,27,31,31,14
500 SYMBOL 200,251,223,142,140,216,248,248,112
510 SYMBOL 201,192,64
520 SYMBOL 202,0,0,0,0,0,2,3,3
530 SYMBOL 203,14,14,31,63,119,230,194,131
540 SYMBOL 204,112,112,248,252,238,103,67,193
550 SYMBOL 205,0,0,0,0,0,64,192,192
560 SYMBOL 206,3,3,1
570 SYMBOL 207,3,3,1
580 SYMBOL 208,192,192,128
590 SYMBOL 209,192,192,128
600 SYMBOL 210,0,56,124,68,68,76,76,84
610 SYMBOL 211,0,16,16,48,48,16,16,16
620 SYMBOL 212,0,56,124,68,4,4,4,60
630 SYMBOL 213,0,56,124,68,4,4,4,24
640 SYMBOL 214,0,8,8,24,24,40,40,72
650 SYMBOL 215,0,124,124,68,64,64,64,120
660 SYMBOL 216,0,56,124,68,64,64,64,120
670 SYMBOL 217,0,124,124,68,4,4,4,12
680 SYMBOL 218,0,56,124,68,68,68,68,56
690 SYMBOL 219,0,56,124,68,68,68,68,124
700 SYMBOL 220,84,100,100,68,68,124,56
710 SYMBOL 221,16,16,16,16,16,56,56
720 SYMBOL 222,120,64,64,64,68,124,124
730 SYMBOL 223,24,4,4,4,68,124,56
740 SYMBOL 224,72,124,124,8,8,28,28
750 SYMBOL 225,124,4,4,4,68,124,56
760 SYMBOL 226,124,68,68,68,68,124,56
770 SYMBOL 227,24,16,16,16,16,16,16
780 SYMBOL 228,56,68,68,68,68,124,56
790 SYMBOL 229,60,4,4,4,68,124,56
800 SYMBOL 230,0,0,0,238,170,170,170,170
810 SYMBOL 231,0,0,0,78,74,202,74,74
820 SYMBOL 232,0,0,0,238,170,42,42,106
830 SYMBOL 233,0,0,0,238,170,42,42,106
840 SYMBOL 234,0,0,0,142,138,138,170,170
850 SYMBOL 235,0,0,0,238,138,138,138,234
860 SYMBOL 236,0,0,0,238,170,138,138,234
870 SYMBOL 237,0,0,0,238,170,42,42,106
880 SYMBOL 238,0,0,0,238,170,170,170,234
890 SYMBOL 239,0,0,0,238,170,170,170,234
900 SYMBOL 240,170,170,170,238
910 SYMBOL 241,74,74,74,238
920 SYMBOL 242,202,138,138,238
930 SYMBOL 243,42,42,170,238
940 SYMBOL 244,234,42,42,46
950 SYMBOL 245,42,42,170,238
960 SYMBOL 246,170,170,170,238
970 SYMBOL 247,74,74,74,78
980 SYMBOL 248,170,170,170,238
990 SYMBOL 249,42,42,170,238
1000 REM===============================
1001 REM===    Initialisierung 2    ===
1002 REM===============================
1010 RESTORE 1000:MODE 1:BORDER 0:PAPER 0:PEN 1
1020 FOR q=1 TO 48:READ t(q):NEXT q
1030 FOR q=1 TO 26:READ w(q):w(q)=w(q)*10:NEXT q
1040 FOR q=1 TO 26:READ pa(q),st(q):st(q)=3*st(q)+12:NEXT q
1050 DATA 478,451,426,402,379,358,338,319,301,284,268,253
1060 DATA 239,225,213,201,190,179,169,159,150,142,134,127
1070 DATA 119,113,106,100,95,89,84,80,75,71,67,63
1080 DATA 60,56,53,50,47,45,42,40,38,36,34,32
1090 DATA 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,25,30,40,50,100,0
1100 DATA 4,1,5,1,6,1,7,1,8,,9,1,10,1,11,1,12,1,13,
1110 DATA 4,1,5,1,6,1,7,1,8,,9,1,10,1,11,1,12,1,13,,15,,14,,14,,15,,,2,,1
1120 FOR q=1 TO 10:na$(q)="PHIL PHILATELY":dm(q)=220-20*q:gr(q)=0:mz(q)=0
1130 NEXT q
1140 POKE &BDEE,201:POKE &BDEF,0:POKE &BDF0,0
1150 an$=CHR$(22)+CHR$(1):aus$=CHR$(22)+CHR$(0)
1160 r(1)=0:r(2)=1:r(3)=2:r(4)=8:r(5)=9
1170 IF PEEK(&BB01)=&E0 THEN ad!=PEEK(&B296)+PEEK(&B297)*256
1180 IF PEEK(&BB01)=&5C THEN ad!=PEEK(&B736)+PEEK(&B737)*256
1190 IF PEEK(&BB01)=&5C THEN PRINT"CPC 664/6128"ELSE PRINT"CPC 464"
1200 REM===============================
1201 REM===      Melodie-Datas      ===
1202 REM===============================
1210 FOR q=1 TO 78:READ h(q),d(q):NEXT q
1220 DATA 1,2,6,2,10,2,13,4,10,2,6,2,1,4,13,2,10,2,11,2,8,6
1230 DATA 0,2,1,2,5,2,8,2,11,4,8,2,5,2,1,4,11,2,8,2, 10,2,6,6
1240 DATA 1,2,6,2,10,2,13,4,10,2,6,2,1,4,13,2,10,2,11,2,8,6
1250 DATA 0,2,1,2,5,2,8,2,11,4,8,2,5,2,1,4,11,2,8,2, 10,2,6,4,1,2
1260 DATA 6,1,6,1,6,2,5,2,3,2,5,2,5,4,1,2
1270 DATA 5,1,5,1,5,2,3,2,5,2, 6,4,0,2,1,2
1280 DATA 6,1,6,1,6,2,5,2,3,2,5,2,5,4,1,2
1290 DATA 5,1,5,1,5,2,3,2,5,2, 6,6,0,4
1300 REM===============================
1301 REM===         Titel 1         ===
1302 REM===============================
1310 MODE 0:BORDER 9:PAPER 11:PEN 1:CLS:INK 0,0:INK 1,9:INK 2,24:INK 3,6
1320 SYMBOL 167,0,0,0,0,85,85,255,255
1330 SYMBOL 168,255,255,85,85
1340 FOR y=1 TO 22:c=143
1350 IF y=1 OR y=7 OR y=11 OR y=15 OR y=19 THEN c=167
1360 IF y=6 OR y=10 OR y=14 OR y=18 OR y=22 THEN c=168
1370 LOCATE 5,y:PEN 1:PRINT STRING$(12,c);:NEXT y:INK 1,26
1380 LOCATE 6,2:PAPER 1:PEN 3:dat$="CRAZY":GOSUB 4100
1390 LOCATE 10,4:PEN 3:dat$="STAMPS":GOSUB 4100
1400 REM===============================
1401 REM===         Titel 2         ===
1402 REM===============================
1410 LOCATE 5,8:PEN 5:dat$="1-":GOSUB 4100
1420 LOCATE 7,8:PEN 9:dat$="Spiel":GOSUB 4100
1430 LOCATE 5,12:PEN 5:dat$="2-":GOSUB 4100
1440 LOCATE 7,12:PEN 9:dat$="Anleitung":GOSUB 4100
1450 LOCATE 5,16:PEN 5:dat$="3-":GOSUB 4100
1460 LOCATE 7,16:PEN 9:dat$="Tabelle":GOSUB 4100
1470 LOCATE 5,20:PEN 5:dat$="4-":GOSUB 4100
1480 LOCATE 7,20:PEN 9:dat$="Tastenwahl":GOSUB 4100
1490 LOCATE 5,24:PAPER 11:PEN 2:dat$="Bitte w@hlen":GOSUB 4100
1500 REM===============================
1501 REM===         Menue 1         ===
1502 REM===============================
1510 WINDOW#1,1,4,1,25:WINDOW#2,17,20,1,25:PAPER#1,11:PAPER#2,11:CLS#1:CLS#2
1520 wa=VAL(INKEY$):IF wa<>0 THEN 1520 ELSE u=23:GOSUB 4000
1530 wa=VAL(INKEY$)
1540 IF wa=1 THEN 1700
1550 IF wa=2 THEN 5000
1560 IF wa=3 THEN 4700
1570 IF wa=4 THEN 4900
1580 IF INKEY(18)=0 THEN u=78:GOSUB 4000:CLS#1:CLS#2
1590 IF CINT(RND(TIME)*1000)>995 THEN u=78:GOSUB 4000:CLS#1:CLS#2
1600 REM===============================
1601 REM===         Menue 2         ===
1602 REM===============================
1610 h=CINT(RND(TIME)*30):q=INT(RND(TIME)*2)+1:pp=0
1620 IF h>0 AND h<25 THEN pp=pa(h):pe=st(h):wert=w(h)
1630 IF q=1 THEN LOCATE#1,1,1:PRINT#1,STRING$(4,11);:y=1
1640 IF q=2 THEN LOCATE#2,1,25:PRINT#2,STRING$(4,10);:y=22
1650 x=16*(q-1)+1
1660 IF h=0 OR h>28 THEN 1530
1670 IF h=25 THEN GOSUB 3200 ELSE IF h=26 THEN GOSUB 3300
1680 IF h=27 THEN GOSUB 3000:GOSUB 3500 ELSE IF h>0 AND h<25 THEN GOSUB 3000
1690 GOTO 1530
1700 REM===============================
1701 REM===    Spielfeld-Fenster    ===
1702 REM===============================
1710 IF INKEY$<>""THEN 1710 ELSE GOSUB 4500:MODE 0:BORDER 3:PAPER 0:PEN 1
1720 WINDOW#1,1,20,1,3:PAPER#1,12:CLS#1:WINDOW#2,1,20,4,9:PAPER#2,11:CLS#2
1730 FOR q=348 TO 350 STEP 2
1740 PLOT 0,q,14:DRAWR 588,0:DRAWR 0,-92:DRAWR-588,0:DRAWR 0,92
1750 NEXT q
1760 FOR q=4 TO 25
1770 PAPER 0:PEN 4:LOCATE 19,q:PRINT an$;CHR$(138)CHR$(143);aus$;:NEXT q
1780 FOR y=6 TO 342 STEP 16:PLOT 596,y,15:DRAW 632,y,15:NEXT y
1790 FOR y=14 TO 334 STEP 16:PLOT 600,y,15:DRAW 628,y,15:NEXT y
1800 REM===============================
1801 REM===  Markenfeld erstellen   ===
1802 REM===============================
1810 LOCATE 1,1:PAPER 12:PEN 1:dat$="CRAZY":GOSUB 4100
1820 LOCATE 15,1:PAPER 12:PEN 1:dat$="STAMPS":GOSUB 4100
1830 h=1:FOR y=1 TO 4:FOR x=1 TO 6:f(x,y)=h:h=h+1:NEXT x,y
1840 h=20:FOR x=1 TO 5:f(x,5)=h:h=h+1:NEXT x:f(6,5)=10
1850 FOR y=1 TO 5:FOR x=1 TO 6
1860 hx=INT(RND(TIME)*6)+1
1870 hy=INT(RND(TIME)*5)+1
1880 h=f(x,y):f(x,y)=f(hx,hy):f(hx,hy)=h
1890 NEXT x,y
1900 REM===============================
1901 REM===  Markenfeld ausdrucken  ===
1902 REM===============================
1910 FOR q=1 TO 6:k(q)=-1:NEXT q
1920 dmark=0:grosch=0:en=42
1930 GOSUB 3700
1940 FOR hy=1 TO 5:FOR hx=1 TO 6
1950 wf=f(hx,hy):wert=w(wf):pp=pa(wf):pe=st(wf):x=3*hx-2:y=3*hy+7
1960 IF f(hx,hy)<25 THEN GOSUB 3000
1970 IF f(hx,hy)=25 THEN GOSUB 3200
1980 IF f(hx,hy)=26 THEN GOSUB 3300
1990 NEXT hx,hy
2000 REM===============================
2001 REM===      Sucher-Start       ===
2002 REM===============================
2010 sx=INT(RND(TIME)*6)+1
2020 sy=INT(RND(TIME)*5)+1
2030 IF f(sx,sy)>24 THEN 2010
2040 m=0:x=3*sx-2:y=3*sy+7:GOSUB 3900
2050 REM===============================
2051 REM===      Wert vorgeben      ===
2052 REM===============================
2060 m=m+1
2070 mwert=w(INT(RND(TIME)*24)+1)
2080 mx=3*m-2
2090 GOSUB 4200
2100 REM===============================
2101 REM===     Tastaturabfrage     ===
2102 REM===============================
2110 nx=sx:ny=sy
2120 wx=nx:wy=ny
2130 IF INKEY(76)=0 OR INKEY(r(5))=0 THEN 2500
2140 IF INKEY(72)=0 OR INKEY(r(1))=0 THEN wy=wy-1
2150 IF INKEY(74)=0 OR INKEY(r(4))=0 THEN wx=wx-1
2160 IF INKEY(73)=0 OR INKEY(r(3))=0 THEN wy=wy+1
2170 IF INKEY(75)=0 OR INKEY(r(2))=0 THEN wx=wx+1
2180 IF INKEY(66)>-1 THEN 2900 ELSE IF wx=nx AND wy=ny THEN 2130
2190 IF wx<>nx AND wy<>ny THEN 2120
2200 REM===============================
2201 REM===    Sucher Kontrolle     ===
2202 REM===============================
2210 IF wx<1 OR wx>6 THEN 2120
2220 IF wy<1 OR wy>5 THEN 2120
2230 IF wx<>sx AND wy<>sy THEN 2120
2240 x=3*nx-2:y=3*ny+7:GOSUB 3950
2250 nx=wx:ny=wy:x=3*nx-2:y=3*ny+7:GOSUB 3900
2260 IF f(nx,ny)>0 AND f(nx,ny)<26 THEN 2120
2270 IF f(nx,ny)<0 THEN 2300
2280 IF f(nx,ny)=0 THEN sx=nx:sy=ny:GOTO 2450
2290 IF f(nx,ny)>25 THEN sx=nx:sy=ny:GOTO 2400
2300 REM===============================
2301 REM===     Auf CRAZY STAMP     ===
2302 REM===============================
2310 FOR q=500 TO 50 STEP-50:SOUND 1,q,3,7:NEXT q:wf=1+(22-f(nx,ny))MOD 24
2320 wert=w(wf):pp=pa(wf):pe=st(wf):x=3*nx-2:y=3*ny+7:GOSUB 3000
2330 f(nx,ny)=ABS(wf):en=en-1:GOSUB 3800:IF en=0 THEN 2900
2340 GOTO 2120
2350 REM===============================
2351 REM===  Zu kleiner Markenwert  ===
2352 REM===============================
2360 k(m)=1:x=3*sx-2:y=3*sy+7:GOSUB 3300
2370 f(sx,sy)=30:en=en-5:GOSUB 3800
2380 x=mx:GOSUB 3650
2390 IF en<1 THEN 2900 ELSE IF m=6 THEN 2750 ELSE GOSUB 4300:GOTO 2050
2400 REM===============================
2401 REM===      Auf Totenkopf      ===
2402 REM===============================
2410 k(m)=1:x=3*sx-2:y=3*sy+7:GOSUB 3600:GOSUB 3300
2420 f(sx,sy)=30:en=en-7:GOSUB 3800
2430 x=mx:GOSUB 3650
2440 IF en<1 THEN 2900 ELSE IF m=6 THEN 2750 ELSE GOSUB 4300:GOTO 2050
2450 REM===============================
2451 REM===      Auf Leerfeld       ===
2452 REM===============================
2460 k(m)=1:x=3*sx-2:y=3*sy+7:GOSUB 3300
2470 f(sx,sy)=30:en=en-6:GOSUB 3800
2480 x=mx:GOSUB 3650
2490 IF en<1 THEN 2900 ELSE IF m=6 THEN 2750 ELSE GOSUB 4300:GOTO 2050
2500 REM===============================
2501 REM===  Ausreichend frankiert  ===
2502 REM===============================
2510 sx=nx:sy=ny:x=3*sx-2:y=3*sy+7:GOSUB 3600
2520 IF f(sx,sy)<0 THEN 2300
2530 IF f(sx,sy)=0 THEN 2350
2540 IF f(sx,sy)>25 THEN 2400
2550 IF f(sx,sy)=25 THEN mun=3:GOSUB 4400:GOTO 2700
2560 IF w(f(sx,sy))<mwert THEN 2450
2570 IF w(f(sx,sy))=mwert THEN mun=2:GOSUB 4400:GOTO 2600
2580 IF w(f(sx,sy))>mwert THEN mun=1:GOSUB 4400:GOTO 2660
2590 GOTO 2520
2600 REM===============================
2601 REM===    Passend / Zu viel    ===
2602 REM===============================
2610 wf=f(sx,sy):wert=w(wf):pp=pa(wf):pe=st(wf):x=mx:y=4:GOSUB 3000:GOSUB 3400
2620 k(m)=2:f(sx,sy)=25:x=3*sx-2:y=3*sy+7:GOSUB 3200
2630 grosch=grosch+mwert:en=en+1:IF en>42 THEN en=42
2640 IF grosch>90 THEN dmark=dmark+1:grosch=grosch-100:GOTO 2680
2650 GOSUB 3700:IF m=6 THEN 2750 ELSE GOSUB 4300:GOTO 2050
2660 wf=f(sx,sy):wert=w(wf):pp=pa(wf):pe=st(wf):x=mx:y=4:GOSUB 3000:GOSUB 3400
2670 k(m)=2:f(sx,sy)=0:grosch=grosch+mwert
2680 IF grosch>90 THEN dmark=dmark+1:grosch=grosch-100:GOTO 2680
2690 GOSUB 3700:IF m=6 THEN 2750 ELSE GOSUB 4300:GOTO 2050
2700 REM===============================
2701 REM===        Auf Taler        ===
2702 REM===============================
2710 x=mx:y=5:GOSUB 3200
2720 k(m)=2:f(sx,sy)=0:dmark=dmark+10
2730 GOSUB 3700
2740 IF m=6 THEN 2750 ELSE GOSUB 4300:GOTO 2050
2750 REM===============================
2751 REM===     Ende der Runde      ===
2752 REM===============================
2760 h=0:FOR q=1 TO 6:h=h+k(q):NEXT q:h=INT((h-6)/2)
2770 en=en+h:IF en>42 THEN en=42
2780 IF h=3 THEN dmark=dmark+6:GOSUB 3700:mun=4:GOSUB 4400 ELSE GOSUB 3700
2790 SOUND 1,0,40,4,0,0,6:FOR q=260 TO 346 STEP 2:MOVE 4,q:DRAW 584,q,11:NEXT q
2800 REM===============================
2801 REM=== Zerfall des Totenkopfs  ===
2802 REM===============================
2810 FOR hy=1 TO 5:FOR hx=1 TO 6:x=3*hx-2:y=3*hy+7
2820 IF f(hx,hy)=26 THEN f(hx,hy)=0:GOSUB 3600
2830 IF f(hx,hy)>26 THEN f(hx,hy)=f(hx,hy)-1
2840 NEXT hx,hy
2850 REM===============================
2851 REM===    Neue Briefmarken     ===
2852 REM===============================
2860 FOR hy=1 TO 5:FOR hx=1 TO 6
2870 IF f(hx,hy)=0 THEN f(hx,hy)=INT(RND(TIME)*24)+1 ELSE 2890
2880 wf=f(hx,hy):wert=w(wf):pp=pa(wf):pe=st(wf):x=3*hx-2:y=3*hy+7:GOSUB 3000
2890 NEXT hx,hy:m=0:GOTO 2050
2900 REM===============================
2901 REM===        GAME OVER        ===
2902 REM===============================
2910 FOR h=1 TO 6:FOR q=1 TO 15
2920 SOUND 1,0,1,0:SOUND 1,0,h,7,0,0,q:NEXT q,h
2930 FOR q=0 TO 640 STEP 8:MOVE q,164:DRAWR 0,60,1
2940 MOVE 644-q,164:DRAWR 0,60,1:NEXT q
2950 LOCATE 2,13:PAPER 1
2960 PEN 9:dat$="G A M E ":GOSUB 4100
2970 PEN 5:dat$="  O V E R":GOSUB 4100
2980 h=JOY(0):FOR q=1 TO 5:h=h+1+INKEY(q):NEXT q:IF h=0 THEN 2980
2990 BORDER 0:PAPER 0:PEN 1:CLS:GOTO 4600
3000 REM===============================
3001 REM===      Briefmarke 1       ===
3002 REM===============================
3010 LOCATE x,y+1:PEN pp:PRINT an$;CHR$(254);
3020 LOCATE x,y+2:PEN pp:PRINT an$;CHR$(254);
3030 PRINT aus$;:PAPER pp:PEN pe
3040 IF wert<100 THEN c=32:h=0 ELSE c=INT(wert/100)+210:h=10
3050 LOCATE x+1,y+1:PRINT CHR$(c);
3060 LOCATE x+1,y+2:PRINT CHR$(c+h);
3070 c=(wert-100*INT(wert/100))/10+230:h=10
3080 LOCATE x+2,y+1:PRINT CHR$(c);
3090 LOCATE x+2,y+2:PRINT CHR$(c+h);
3100 REM===============================
3101 REM===      Briefmarke 2       ===
3102 REM===============================
3110 PAPER 0:PEN 1
3120 LOCATE x,y:PRINT an$;CHR$(170)CHR$(171)CHR$(171)CHR$(172);
3130 LOCATE x,y+1:PRINT CHR$(173);
3140 LOCATE x,y+2:PRINT CHR$(173);
3150 LOCATE x+3,y+1:PRINT CHR$(174);
3160 LOCATE x+3,y+2:PRINT CHR$(174);
3170 LOCATE x,y+3:PRINT CHR$(175)CHR$(176)CHR$(176)CHR$(177);
3180 PRINT aus$;
3190 SOUND 1,0,5,5,0,0,1:RETURN
3200 REM===============================
3201 REM===          Taler          ===
3202 REM===============================
3210 LOCATE x+1,y+1:PEN 7:PRINT an$;CHR$(138)CHR$(133);
3220 LOCATE x+1,y+2:PEN 7:PRINT an$;CHR$(138)CHR$(133);
3230 PEN 2
3240 LOCATE x+1,y:PRINT CHR$(186)CHR$(187);
3250 LOCATE x+1,y+1:PRINT CHR$(188)CHR$(189);
3260 LOCATE x+1,y+2:PRINT CHR$(190)CHR$(191);
3270 LOCATE x+1,y+3:PRINT CHR$(192)CHR$(193);
3280 PRINT aus$;
3290 FOR q=0 TO 2:SOUND 1,30,1,7:SOUND 2,70,1,7:NEXT q:RETURN
3300 REM===============================
3301 REM===        Totenkopf        ===
3302 REM===============================
3310 LOCATE x+1,y+1:PEN 5:PRINT an$;CHR$(138)CHR$(133);
3320 LOCATE x+1,y+2:PEN 5:PRINT an$;CHR$(254)CHR$(255);
3330 PEN 1
3340 LOCATE x,y:PRINT CHR$(194)CHR$(195)CHR$(196)CHR$(197);
3350 LOCATE x,y+1:PRINT CHR$(198)CHR$(199)CHR$(200)CHR$(201);
3360 LOCATE x,y+2:PRINT CHR$(202)CHR$(203)CHR$(204)CHR$(205);
3370 LOCATE x,y+3:PRINT CHR$(206)CHR$(207)CHR$(208)CHR$(209);
3380 PRINT aus$;
3390 FOR q=300 TO 1800 STEP 100:SOUND 1,q,3,7:NEXT q:RETURN
3400 REM===============================
3401 REM===         Stempel         ===
3402 REM===============================
3410 PEN 0
3420 PRINT an$;
3430 LOCATE x+1,y+1:PRINT CHR$(178)CHR$(179);
3440 LOCATE x+1,y+2:PRINT CHR$(180)CHR$(181);
3450 LOCATE x+1,y+3:PRINT CHR$(182)CHR$(183);
3460 LOCATE x+1,y+4:PRINT CHR$(184)CHR$(185);
3470 PRINT aus$;
3480 SOUND 1,0,7,7,0,0,15
3490 RETURN
3500 REM===============================
3501 REM===       CRAZY STAMP       ===
3502 REM===============================
3510 PAPER 0:PEN 1
3520 PRINT an$;
3530 LOCATE x,y+1:PRINT CHR$(254);
3540 LOCATE x,y+2:PRINT CHR$(254);
3550 PRINT aus$;
3560 PAPER 1:PEN 0
3570 LOCATE x+1,y+1:PRINT CHR$(250)CHR$(252);
3580 LOCATE x+1,y+2:PRINT CHR$(251)CHR$(253);
3590 FOR q=50 TO 600 STEP 50:SOUND 1,q,3,7:NEXT q:RETURN
3600 REM===============================
3601 REM===        Leerfeld         ===
3602 REM===============================
3610 gx=32*x-12:gy=404-16*y
3620 FOR q=0 TO 21
3630 PLOT gx,gy-2*q,0:DRAWR 80,0:NEXT q
3640 RETURN
3650 REM===============================
3651 REM===      Rot Ankreuzen      ===
3652 REM===============================
3660 PAPER 0:PEN 3
3670 LOCATE x+1,5:PRINT an$;CHR$(92)CHR$(47);aus$;
3680 LOCATE x+1,6:PRINT an$;CHR$(47)CHR$(92);aus$;
3690 RETURN
3700 REM===============================
3701 REM===     Anzeige * Geld      ===
3702 REM===============================
3710 h$=STR$(dmark)
3720 h$=STRING$(6-LEN(h$),"0")+MID$(h$,2,LEN(h$)-1)
3730 FOR x=8 TO 12
3740 c=152+ASC(MID$(h$,x-7,1))
3750 FOR y=1 TO 2
3760 LOCATE x,y:PAPER 12:PEN 2:PRINT CHR$(c+10*y);
3770 NEXT y,x
3780 c=grosch/10+220
3790 FOR q=1 TO 2:LOCATE 13,q:PRINT CHR$(c+10*q);:NEXT q
3800 REM===============================
3801 REM===    Anzeige * Energie    ===
3802 REM===============================
3810 LOCATE 1,1:PRINT an$;
3820 FOR y=1 TO 42:h=25-INT(y/2)
3830 IF y>8 THEN pe=2 ELSE pe=3
3840 IF y>en THEN pe=0
3850 IF INT(y/2)=y/2 THEN c=132 ELSE c=129
3860 LOCATE 19,h:PEN pe:PRINT" ";CHR$(c);
3870 NEXT y
3880 PRINT aus$;
3890 RETURN
3900 REM===============================
3901 REM===       Sucher an         ===
3902 REM===============================
3910 gx=32*x-20:gy=408-16*y:FOR q=0 TO 1:FOR h=0 TO 1
3920 PLOT gx,gy-2*q-48*h,3+(q=h):DRAWR 96,0:NEXT h,q:FOR q=0 TO 1:FOR h=0 TO 1
3930 PLOT gx+4*q+92*h,gy-2,3+(q=h):DRAWR 0,-46:NEXT h,q
3940 SOUND 1,70,7,7:RETURN
3950 REM===============================
3951 REM===       Sucher aus        ===
3952 REM===============================
3960 gx=32*x-20:gy=408-16*y:FOR q=0 TO 1:FOR h=0 TO 1
3970 PLOT gx,gy-2*q-48*h,0:DRAWR 96,0
3980 PLOT gx+4*q+92*h,gy-2,0:DRAWR 0,-46:NEXT h,q
3990 RETURN
4000 REM===============================
4001 REM===     Melodie spielen     ===
4002 REM===============================
4010 FOR q=1 TO u
4020 IF INKEY(47)=0 OR INKEY$<>""THEN q=78
4030 IF h(q)=0 THEN SOUND 1,0,d(q)*8,7 ELSE SOUND 1,t(h(q)),d(q)*8,7
4040 IF h(q)=0 THEN SOUND 2,0,d(q)*7,6 ELSE SOUND 2,t(h(q)+12),d(q)*7,6
4050 IF h(q)=0 THEN SOUND 4,0,d(q)*6,5 ELSE SOUND 4,t(h(q)+24),d(q)*6,5
4060 SOUND 7,0,2
4070 IF INKEY(47)=0 OR INKEY$<>""THEN q=78
4080 NEXT q
4090 RETURN
4100 REM===============================
4101 REM===      Riesenschrift      ===
4102 REM===============================
4110 FOR q=1 TO LEN(dat$)
4120 FOR h=0 TO 7
4130 s(h)=PEEK(ad!+(ASC(MID$(dat$,q,1))-32)*8+h)
4140 NEXT h
4150 SYMBOL 167,s(0),s(0),s(1),s(1),s(2),s(2),s(3),s(3)
4160 SYMBOL 168,s(4),s(4),s(5),s(5),s(6),s(6),s(7),s(7)
4170 PRINT CHR$(167)CHR$(10)CHR$(8)CHR$(168)CHR$(11);
4180 NEXT q
4190 RETURN
4200 REM===============================
4201 REM=== Wertvorgabe ausdrucken  ===
4202 REM===============================
4210 PEN 15:PRINT an$;
4220 IF mwert<100 THEN c=32:h=0 ELSE c=INT(mwert/100)+210:h=10
4230 LOCATE mx+1,5:PRINT CHR$(c);
4240 LOCATE mx+1,6:PRINT CHR$(c+h);
4250 c=(mwert-100*INT(mwert/100))/10+230:h=10
4260 LOCATE mx+2,5:PRINT CHR$(c);
4270 LOCATE mx+2,6:PRINT CHR$(c+h);
4280 PRINT aus$;
4290 RETURN
4300 REM===============================
4301 REM===    STAMP wird CRAZY     ===
4302 REM===============================
4310 FOR h=1 TO 8-INT(en/6)
4320 hx=INT(RND(TIME)*6)+1
4340 hy=INT(RND(TIME)*5)+1
4350 IF hx=sx AND hy=sy THEN 4320
4360 IF f(hx,hy)<1 OR f(hx,hy)>24 THEN 4380
4370 f(hx,hy)=-f(hx,hy):x=3*hx-2:y=3*hy+7:GOSUB 3500
4380 NEXT h
4390 RETURN
4400 REM===============================
4401 REM===     4 Soundeffekte      ===
4402 REM===============================
4410 ENV 1,1,15,1,8,0,1,15,-1,1
4420 ON mun GOTO 4430,4450,4470,4490
4430 FOR q=12 TO 24 STEP 2:SOUND 1,t(q),3,0,1:SOUND 1,t(q+4),3,0,1:NEXT q
4440 SOUND 1,t(24),20,0,1:RETURN
4450 FOR q=24 TO 36:SOUND 1,t(q),3,0,1:SOUND 1,t(q+2),3,0,1:NEXT q
4460 SOUND 1,t(36),20,0,1:RETURN
4470 FOR q=24 TO 36:SOUND 1,t(q),2,7:SOUND 1,t(q+8),2,7:NEXT q
4480 SOUND 1,t(36),20,0,1:RETURN
4490 FOR q=1 TO 20:SOUND 1,70,2,7:SOUND 1,70,1,0:NEXT q:RETURN
4500 REM===============================
4501 REM===      Namenseingabe      ===
4502 REM===============================
4510 MODE 1:LOCATE 10,10:PAPER 0:PEN 2:PRINT"Bitte Namen eintippen:":name$=""
4520 SOUND 1,70,2,7:LOCATE 10,15:PEN 1:PRINT name$;:PEN 3:PRINT"_ ";
4530 w$=INKEY$
4540 IF w$=CHR$(13)THEN 4580
4550 IF w$=""OR(w$=CHR$(127)AND LEN(name$)=0)THEN 4530
4560 IF w$=CHR$(127)THEN name$=LEFT$(name$,LEN(name$)-1):GOTO 4520
4570 IF LEN(name$)<20 THEN name$=name$+w$:GOTO 4520 ELSE 4530
4580 IF name$=""THEN name$="Mister SLUGGARD"
4590 LOCATE 10,15:PEN 1:PRINT name$;" ";:FOR q=0 TO 1000:NEXT q:RETURN
4600 REM===============================
4601 REM=== Neue Tabelle erstellen  ===
4602 REM===============================
4610 h=0
4620 FOR q=10 TO 1 STEP-1
4630 IF dm(q)<dmark OR(dm(q)=dmark AND grosch>gr(q))THEN h=q
4640 NEXT q
4650 IF h=0 THEN 4700
4660 FOR q=10 TO h+1 STEP-1
4670 dm(q)=dm(q-1):gr(q)=gr(q-1):na$(q)=na$(q-1)
4680 NEXT q
4690 dm(h)=dmark:gr(h)=grosch:na$(h)=name$
4700 REM===============================
4701 REM===        Tabelle 1        ===
4702 REM===============================
4710 MODE 1:PAPER 1:CLS:BORDER 26:INK 2,2
4720 PEN 3:LOCATE 1,1:dat$="* TOP TEN *  CRAZY  STAMPS  * TOP TEN *":GOSUB 4100
4730 PEN 0:LOCATE 1,3:PRINT STRING$(39,154)
4740 h$=STR$(dmark):PEN 0:LOCATE 9,25
4750 PRINT STRING$(6-LEN(h$),"0")+MID$(h$,2,LEN(h$)-1);:PEN 0:PRINT"."
4760 h$=STR$(grosch+100):PEN 0:LOCATE 15,25
4770 PRINT RIGHT$(h$,2)
4780 PEN 0:LOCATE 19,25
4790 PRINT name$
4800 REM===============================
4801 REM===        Tabelle 2        ===
4802 REM===============================
4810 FOR q=1 TO 10
4820 LOCATE 4,2*q+3:PEN 0:PRINT USING"##";q;:PRINT"."
4830 h$=STR$(dm(q)):PEN 3:LOCATE 9,2*q+3
4840 PRINT STRING$(6-LEN(h$),"0")+MID$(h$,2,LEN(h$)-1);:PEN 0:PRINT"."
4850 h$=STR$(gr(q)+100):PEN 3:LOCATE 15,2*q+3
4860 PRINT RIGHT$(h$,2)
4870 PEN 2:LOCATE 19,2*q+3:PRINT na$(q)
4880 NEXT q
4890 WHILE INKEY$<>"":WEND:WHILE INKEY$="":WEND:GOTO 1300
4900 REM===============================
4901 REM===    Tastaturbelegung     ===
4902 REM===============================
4910 MODE 1:LOCATE 10,2:PAPER 0:PEN 1:PRINT"TASTATURBELEGUNG:":FOR q=1 TO 5
4920 IF q=1 THEN LOCATE 10,4*q+2:PEN 2:PRINT"HOCH   : ";
4930 IF q=2 THEN LOCATE 10,4*q+2:PEN 2:PRINT"RECHTS : ";
4940 IF q=3 THEN LOCATE 10,4*q+2:PEN 2:PRINT"RUNTER : ";
4950 IF q=4 THEN LOCATE 10,4*q+2:PEN 2:PRINT"LINKS  : ";
4960 IF q=5 THEN LOCATE 10,4*q+2:PEN 2:PRINT"FEUER  : ";
4970 h=(h+1)MOD 80:IF INKEY(h)=-1 THEN 4970 ELSE SOUND 1,70,7,7
4980 r(q)=h:PEN 3:PRINT RIGHT$(STR$(r(q)+100),2)
4990 NEXT q:FOR q=0 TO 3000:NEXT q:GOTO 1300
5000 REM===============================
5001 REM===        Anleitung        ===
5002 REM===============================
5010 MODE 1:BORDER 0:INK 0,0:INK 1,20:INK 2,21:INK 3,15
5020 LOCATE 9,1:PEN 2:PRINT CHR$(164);" 1986 by Dirk M]ller":LOCATE 1,3:PEN 3
5030 dat$="* Anleitung * CRAZY STAMPS * Anleitung *":GOSUB 4100
5040 FOR q=6 TO 24 STEP 18:LOCATE 1,q:PEN 2:PRINT STRING$(40,154):NEXT q
5050 LOCATE 9,25:PEN 3:PRINT"Bitte Leertaste dr]cken"
5060 FOR q=1 TO 4:LOCATE 1,8:PEN 1
5070 ON q GOTO 5200,5300,5400,5500
5080 IF INKEY(47)<>0 THEN 5080
5090 SOUND 1,70,7,7
5100 REM===============================
5101 REM===         Wischen         ===
5102 REM===============================
5110 FOR h=30 TO 300 STEP 4:SOUND 1,0,2,4,0,0,4
5120 MOVE 0,h:DRAW 640,h,1
5130 MOVE 0,334-h:DRAW 640,334-h,1
5140 NEXT h
5150 FOR h=30 TO 300 STEP 4:SOUND 1,0,2,4,0,0,4
5160 MOVE 0,h:DRAW 640,h,0
5170 MOVE 0,334-h:DRAW 640,334-h,0
5180 NEXT h
5190 NEXT q:GOTO 1300
5200 REM===============================
5201 REM===         Text 1          ===
5202 REM===============================
5210 PRINT"CRAZY STAMPS - Ein total verr]ckter Job!"
5220 PRINT"Die Aufgabe besteht darin, Postsendungen"
5230 PRINT"AUSREICHEND zu frankieren. In dem gr]nen"
5240 PRINT"Fenster erscheint der Wert,  welchen die"
5250 PRINT"Briefmarke  mindestens  haben mu£.  Wird"
5260 PRINT"ausreichend frankiert, stempelt die Post"
5270 PRINT"ab, und der Lohn steigt!  Nach 6 richtig"
5280 PRINT"geklebten Marken erh@lt man einen Bonus."
5290 GOTO 5080
5300 REM===============================
5301 REM===         Text 2          ===
5302 REM===============================
5310 PRINT"Mit dem Sucher  kann man  beliebig viele"
5320 PRINT"Felder in EINE Richtung ziehen  und eine"
5330 PRINT"durch FEUER ausgew@hlte Marke aufkleben."
5340 PRINT"Wird eine genau passende Marke gefunden,"
5350 PRINT"so erscheint als Belohnung an der Stelle"
5360 PRINT"ein Goldst]ck. Mit diesem Taler kann man"
5370 PRINT"jeweils einmal die Portokosten bezahlen."
5380 PRINT"Dabei  gibt es  einen sehr hohen Bonus !"
5390 GOTO 5080
5400 REM===============================
5401 REM===         Text 3          ===
5402 REM===============================
5410 PRINT"Gelangt man auf ein Leerfeld  oder sucht"
5420 PRINT"man eine Marke mit zu geringem Wert aus,"
5430 PRINT"erscheint ein Totenkopf, und die Energie"
5440 PRINT"sinkt deutlich,  wie auch,  falls man zu"
5450 PRINT"einem Totenkopf steuert.   Um  m[glichst"
5460 PRINT"lange jobben zu k[nnen, darf die Energie"
5470 PRINT"nicht ganz abfallen.   Bei  jedem  Bonus"
5480 PRINT"wird  die  Energie   ein  wenig  erh[ht."
5490 GOTO 5080
5500 REM===============================
5501 REM===         Text 4          ===
5502 REM===============================
5510 PRINT"Seltsamerweise  spielen  die Briefmarken"
5520 PRINT"manchmal verr]ckt und ver@ndern ihr Aus-"
5530 PRINT"sehen,  so da£ man ihren Wert nur wieder"
5540 PRINT"erf@hrt,  wenn  man  auf die betroffenen"
5550 PRINT"Marken gelangt.  Aber auch  dies  kostet"
5560 PRINT"Energie, mit der man sparsam sein soll !"
5570 PRINT"**** Den Briefmarken-Freaks w]nscht ****"
5580 PRINT"****    Dirk M]ller alles Gute !    ****"
5590 GOTO 5080
6000 REM"*****  Utility  No. 1   ***** *************** ¤ by Dirk Mueller *****
6010 SYMBOL AFTER 32
6020 SYMBOL  64,108,0,120,12,124,204,118
6030 SYMBOL 124,102,24,60,102,102,126,102
6040 SYMBOL  91,102,0,60,102,102,102,60
6050 SYMBOL 123,198,0,124,198,198,198,124
6060 SYMBOL  93,102,0,102,102,102,102,62
6070 SYMBOL 125,198,0,198,198,198,198,124
6080 SYMBOL 163,60,70,198,220,198,198,220,192
6090 RETURN