10 FOR a=1 TO 50:PRINT:NEXT a
20 INK 2,6
30 '-------------DEMONSTRATION PERCUSSIONS
40 MODE 2
50 ENT 1,14,-10,1
60 INK 1,26:INK 0,0:BORDER 0
70 FOR a=1 TO 31:ENV 1,24,-1.25,0.5:SOUND 1,0,6,0,1,0,a:NEXT a
80 FOR a=1 TO 64:ENV 1,24,-1.25,0.5 
90 IF a=4 OR a=8 OR a=12 OR a=16 OR a=20 OR a=24 OR a=28 OR a=32 OR a=36 OR a=40 OR a=44 OR a=48 OR a=52 OR a=56 OR a=60 OR a=64 THEN SOUND 2+16,0,12,0,1,0,31 ELSE 100
100 IF a=32 OR a=16 OR a=48 OR a=64 THEN SOUND 2+16,0,14,0,1,0,31 ELSE 110
110 IF a=32 OR a=64 THEN SOUND 4+32,140,14,0,1,0,11 ELSE 120
120 SOUND 1,0,12,0,1,0,1:NEXT a 
130 FOR a=1 TO 4:SOUND 1,0,12,0,1,0,1:NEXT a
140 FOR a=1 TO 4:SOUND 1,0,12,0,1,0,31:NEXT a
150 FOR a=1 TO 4:SOUND 1,0,12,0,1,0,11:NEXT a
160 FOR a=1 TO 4:SOUND 1,0,12,0,1,0,31:NEXT a
170 FOR a=1 TO 4:SOUND 1,0,12,0,1,0,1:NEXT a
180 ENT 2,1,2,1,2,-2,1,1,2,1:ENV 2,2,6,1,1,0,4,6,-2,1
190 ENV 3,4,0,1,7,-1,1
200 FOR a=1 TO 8:SOUND 1,32,25,2,2,2,0:SOUND 2+16,0,25,0,3,0,1:NEXT a
210 FOR a=1 TO 8:SOUND 1,32,12,2,2,2,0:SOUND 2+16,0,12,0,3,0,1:NEXT a
220 FOR a=1 TO 8:SOUND 1,63,12,2,2,2,0:SOUND 2+16,0,12,0,3,0,1:NEXT a
230 FOR tempo=30 TO 0 STEP -1:LOCATE 39,12:PRINT tempo:NEXT tempo
240 LOCATE 39,12:PRINT"  "
250 RESTORE 290
260 READ son:IF son=9999 THEN 380 ELSE SOUND 1,son,12,2,2,2,0
270 GOTO 260
280 '----------------
290 DATA 80,53,60,53
300 DATA 80,53,60,53
310 DATA 67,47,50,47
320 DATA 67,47,50,47
330 DATA 89,60,67,60
340 DATA 89,60,67,60
350 DATA 89,60,67,60
360 DATA 89,60,67,60
370 DATA 9999
380 '--------------
390 df=0
400 RESTORE 290
410 READ son:IF son=9999 THEN 430 ELSE SOUND 1,son,12,2,2,2,0:SOUND 2+16,0,12,0,1,0,df:df=df+1
420 GOTO 410
430 '--------------
440 '-----------dessin---------
450 MODE 1:INK 1,26:INK 0,0:BORDER 0
460 RESTORE 490
470 READ x,y,xx,yy:IF x=9999 THEN 1860 ELSE PLOT x,y,1:DRAW xx,yy,1:SOUND 2+16,0,3,0,1,0,11:FOR tempo=1 TO 25:NEXT tempo:GOTO 470
480 '------------data-------
490 DATA 100,40,87,100
500 DATA 87,100,80,110
510 DATA 80,110,60,127
520 DATA 60,127,50,132
530 DATA 50,132,46,138
540 DATA 50,132,55,100
550 DATA 55,100,52,60
560 DATA 52,60,48,40
570 DATA 48,40,48,20
580 DATA 48,20,20,20
590 DATA 20,20,30,25
600 DATA 30,25,37,40
610 DATA 37,40,40,94
620 DATA 40,94,36,100
630 DATA 36,100,36,120
640 DATA 36,120,30,140
650 DATA 30,140,26,150
660 DATA 320,66,340,60
670 DATA 340,60,380,50
680 DATA 380,50,400,46
690 DATA 26,150,26,160
700 DATA 26,160,30,175
710 DATA 30,175,40,180
720 DATA 40,180,48,166
730 DATA 48,166,60,162
740 DATA 60,162,52,180
750 DATA 52,180,60,184
760 DATA 60,184,68,180
770 DATA 68,180,74,174
780 DATA 74,174,80,178
790 DATA 80,178,74,180
800 DATA 74,180,80,190
810 DATA 80,190,220,260
820 DATA 220,260,240,268
830 DATA 240,268,248,266
840 DATA 248,266,230,254
850 DATA 230,254,210,244
860 DATA 210,244,190,228
870 DATA 190,228,124,190
880 DATA 124,190,120,180
890 DATA 120,180,140,155
900 DATA 140,155,144,150
910 DATA 144,150,142,140
920 DATA 142,140,140,135
930 DATA 140,135,125,125
940 DATA 125,125,114,140
950 DATA 114,140,114,160
960 DATA 125,125,130,114
970 DATA 130,114,120,108
980 DATA 130,114,160,124
990 DATA 160,124,180,128
1000 DATA 180,128,200,124
1010 DATA 200,124,224,116
1020 DATA 224,116,260,80
1030 DATA 260,80,300,68
1040 DATA 300,68,320,66
1050 DATA 100,40,108,28
1060 DATA 108,28,120,20
1070 DATA 120,20,200,22
1080 DATA 200,22,280,18
1090 DATA 280,18,300,18
1100 DATA 300,18,308,36
1110 DATA 308,36,300,42
1120 DATA 300,42,284,40
1130 DATA 284,40,280,35
1140 DATA 282,18,280,24
1150 DATA 284,40,240,50
1160 DATA 240,50,230,50
1170 DATA 280,38,260,36
1180 DATA 260,36,230,50
1190 DATA 230,50,195,60
1200 DATA 195,60,190,50
1210 DATA 190,50,180,42
1220 DATA 162,30,175,38
1230 DATA 195,60,150,80
1240 DATA 150,80,140,78
1250 DATA 138,90,150,80
1260 DATA 190,50,180,66
1270 DATA 192,54,182,66
1280 DATA 194,56,182,66
1290 DATA 192,50,182,66
1300 DATA 195,60,205,70
1310 DATA 196,64,185,66
1320 DATA 60,124,60,114
1330 DATA 60,114,70,105
1340 DATA 70,104,84,106
1350 DATA 196,66,185,66
1360 DATA 196,66,230,50
1370 DATA 196,64,230,50
1380 DATA 196,62,230,50
1390 DATA 194,58,210,60
1400 DATA 207,75,210,90
1410 DATA 105,210,90,250
1420 DATA 90,196,105,210
1430 DATA 90,250,90,260
1440 DATA 90,260,85,275
1450 DATA 85,275,80,285
1460 DATA 80,285,60,280
1470 DATA 60,280,40,260
1480 DATA 40,260,30,255
1490 DATA 30,255,35,240
1500 DATA 35,240,26,220
1510 DATA 26,220,24,210
1520 DATA 24,210,30,190
1530 DATA 80,220,85,256
1540 DATA 86,226,84,220
1550 DATA 84,220,88,206
1560 DATA 82,260,70,270
1570 DATA 70,270,60,264
1580 DATA 40,220,50,214
1590 DATA 58,212,62,200
1600 DATA 62,200,70,192
1610 DATA 50,250,60,226
1620 DATA 30,190,20,180
1630 DATA 20,180,22,170
1640 DATA 22,170,30,175
1650 DATA 304,42,310,44
1660 DATA 310,44,314,38
1670 DATA 314,38,310,36
1680 DATA 220,22,215,26
1690 DATA 230,50,220,40
1700 DATA 260,18,250,25
1710 DATA 250,26,250,28
1720 DATA 250,28,260,30
1730 DATA 400,28,312,40
1740 DATA 400,28,420,32
1750 DATA 420,32,440,32
1760 DATA 440,32,438,52
1770 DATA 438,52,400,46
1780 DATA 420,32,422,38
1790 DATA 422,38,418,44
1800 DATA 400,30,400,36
1810 DATA 98,104,95,116
1820 DATA 104,96,108,84
1830 DATA 80,138,82,142
1840 DATA 100,140,90,150
1850 DATA 9999,,,
1860 LOCATE 16,2:PEN 2:INK 2,26,0:SPEED INK 1,1:PRINT"NEWS AMSTRAD OF TOP CRACKERS presente":LOCATE 20,4:PEN 3:INK 3,18:PRINT"T.O.P Crackers Demo II."
1870 IF INKEY$="" THEN 1870
1880 FOR a=1 TO 50:PRINT:NEXT a
1890 '----------------AB=? CORPORATION-----------------------
1900 PAPER 0
1910 EVERY 10,0 GOSUB 4220:'---------------------DIF----ATF----
1920 MODE 2
1930 INK 0,1:INK 1,24,1:BORDER 1:BORDER 1
1940 ENT 1,100,-10,1:SOUND 1,1000,100,14,0,1,0
1950 FOR tempo=1 TO 1000:NEXT tempo
1960 MODE 1:INK 0,0:INK 1,26:BORDER 0
1970 INK 2,13
1980 READ x,y,xx,yy:IF x=9999 THEN 2610 ELSE PLOT x,y,2:DRAW xx,yy,2
1990 GOTO 1980
2000 '---------DATA--------------
2010 '-----carlingue-------
2020 DATA 504,310,440,300
2030 DATA 10,260,620,260
2040 DATA 490,300,280,300
2050 DATA 280,300,180,310
2060 DATA 20,260,100,285
2070 DATA 180,310,170,310
2080 DATA 170,310,140,305
2090 DATA 140,305,100,285
2100 '-------ailes arrieres--
2110 DATA 450,270,440,270
2120 DATA 440,270,556,340
2130 DATA 580,260,630,340
2140 DATA 630,340,560,340
2150 DATA 560,340,450,270
2160 DATA 450,270,580,260
2170 '-----ailerons arrieres-
2180 DATA 590,280,560,280
2190 DATA 616,320,586,320
2200 DATA 560,280,586,320
2210 DATA 576,280,562,260
2220 DATA 604,320,614,340
2230 '-------sous-l'avion-----
2240 DATA 380,242,520,242
2250 DATA 20,260,40,250
2260 DATA 40,250,80,250
2270 DATA 80,250,100,240
2280 DATA 100,240,520,240
2290 DATA 520,240,540,250
2300 DATA 540,250,560,250
2310 DATA 560,250,580,260
2320 '-----details--------
2330 DATA 230,306,220,284
2340 DATA 222,306,210,282
2350 DATA 90,260,80,280
2360 DATA 50,250,50,270
2370 DATA 610,260,568,254
2380 DATA 610,260,590,270
2390 DATA 110,288,176,284
2400 DATA 176,284,190,290
2410 DATA 190,290,200,308
2420 '--------ailes------
2430 DATA 480,258,360,258
2440 DATA 540,260,500,254
2450 DATA 500,254,360,250
2460 DATA 360,250,320,260
2470 '------reacteurs-----
2480 DATA 440,300,440,260
2490 DATA 340,300,340,260
2500 DATA 340,278,440,278
2510 DATA 370,296,420,296
2520 DATA 340,292,440,292
2530 DATA 370,286,420,286
2540 '-----canons 30 mm --
2550 DATA 330,300,330,270
2560 DATA 330,270,280,270
2570 DATA 280,270,280,300
2580 DATA 280,270,180,280
2590 DATA 180,280,280,290
2600 DATA 9999,,,
2610 '-----------------
2620 FOR tt=1 TO 4:FOR x=1 TO 46 STEP 1:OUT &BC00,2:OUT &BD00,x:FOR tempo=1 TO 4:NEXT tempo:NEXT:NEXT
2630 FOR x=1 TO 46 STEP 1:OUT &BC00,2:OUT &BD00,x:FOR tempo=1 TO 40:NEXT tempo:NEXT
2640 OUT &BC00,2:OUT &BD00,x
2650 FOR tempo=1 TO 40:NEXT tempo
2660 OUT &BC00,2:OUT &BD00,46
2670 RESTORE 2020
2680 INK 0,0:INK 1,26:BORDER 0
2690 READ x,y,xx,yy:IF x=9999 THEN 2730 ELSE PLOT x,y,1:DRAW xx,yy,1
2700 SOUND 1,100,1,14
2710 FOR tempo=1 TO 25:NEXT tempo
2720 GOTO 2690
2730 FOR tempo=25 TO 0 STEP -1:INK 2,18:PEN 2:LOCATE 19,3:PRINT tempo:NEXT tempo
2740 LOCATE 19,3:PRINT"  "
2750 INK 1,26,0:SPEED INK 1,1
2760 INK 2,26,0
2770 RESTORE 2550:FOR aa=1 TO 5:READ x,y,xx,yy:PLOT x,y,2:DRAW xx,yy,2:NEXT aa
2780 PAPER 1:INK 3,18:LOCATE 10,12:PEN 3:PRINT"CANON 30mm"
2790 FOR aaaa=140 TO 320 STEP 1:PLOT aaaa,204,3:NEXT aaaa
2800 df=0:FOR aaaa=204 TO 280 STEP 1:PLOT 320-df,aaaa,3:df=df+1:NEXT aaaa
2810 INK 2,6
2820 FOR a=1 TO 20:ENV 1,2,0,1,1,14,1,2,-7,1:SOUND 1,100,5,0,1,0,31:NEXT a
2830 INK 2,26,0
2840 RESTORE 2480:FOR aa=1 TO 6:READ x,y,xx,yy:PLOT x,y,2:DRAW xx,yy,2:NEXT aa
2850 INK 3,18:LOCATE 20,3:PEN 3:PRINT"REACTEURS"
2860 FOR aaaa=450 TO 300 STEP -1:PLOT aaaa,350,3:NEXT aaaa
2870 df=0:FOR aaaa=350 TO 280 STEP -1:PLOT 300+df,aaaa,3:df=df+1:NEXT aaaa
2880 INK 2,6
2890 SOUND 1,100,100,14,0,0,31
2900 FOR aaaa=140 TO 320 STEP 1:PLOT aaaa,204,0:NEXT aaaa
2910 df=0:FOR aaaa=204 TO 280 STEP 1:PLOT 320-df,aaaa,0:df=df+1:NEXT aaaa
2920 df=0:FOR aaaa=350 TO 280 STEP -1:PLOT 300+df,aaaa,0:df=df+1:NEXT aaaa
2930 FOR aaaa=450 TO 300 STEP -1:PLOT aaaa,350,0:NEXT aaaa
2940 RESTORE 2020
2950 INK 0,0:INK 1,26,0:BORDER 0
2960 READ x,y,xx,yy:IF x=9999 THEN 2980 ELSE PLOT x,y,1:DRAW xx,yy,1
2970 GOTO 2960
2980 FOR ch=0 TO 45000 STEP 1000:LOCATE 29,3:PEN 2:INK 2,6:PRINT ch;"Ch.":ENT 1,5,-100,1:SOUND 1,500,5,14,0,1,0:NEXT ch
2990 FOR a=0 TO 31:SOUND 1,1000,5,14,0,0,a:NEXT a
3000 BORDER 5:INK 0,5
3010 FOR a=1 TO 1000:NEXT a
3020 INK 1,6,24
3030 FOR a=1 TO 500 STEP 10:SOUND 1,500-a,1,14,0,0,1:NEXT a
3040 INK 0,0:BORDER 0
3050 ENT 1,100,-10,1:ENV 1,10,1,10:SOUND 1,1000,100,4,1,1,31
3060 FOR a=0 TO 36000 STEP 1000:LOCATE 15,12:PEN 2:PRINT a:ENV 1,5,2,1:SOUND 1,100,5,4,1,0,0:NEXT a
3070 ENT 1,200,-10,1:SOUND 1,2000,200,12,0,1,0:ENT 2,200,10,1:SOUND 2,0,2000,14,0,2,0:ENT 3,50,1,1,100,-1,1,50,1,1:SOUND 4,100,14,0,3,0
3080 PAPER 0
3090 LOCATE 1,12:PRINT"                                     "
3100 LOCATE 20,3:PRINT"                   "
3110 INK 1,26,0:LOCATE 9,15:PEN 1:PRINT"Top Crackers Demo Group"  
3120 RESTORE 2020
3130 INK 2,6,24:INK 3,24,6:READ x,y,xx,yy:IF x=9999 THEN 3150 ELSE PLOT x,y-200,2:DRAW xx,yy-200,2:PLOT x,y-202,3:DRAW xx,yy-202,3:PLOT x,y-204,2:DRAW xx,yy-204,2:PLOT x,y-206,3:DRAW xx,yy-206,3
3140 GOTO 3130
3150 FOR a=1 TO 25:PRINT:NEXT a
3160 RESTORE 2020
3170 INK 1,26,0:INK 3,24,6:READ x,y,xx,yy:IF x=9999 THEN 3190 ELSE PLOT x,y-200,1:DRAW xx,yy-200,1:PLOT x+2,y-202,3:DRAW xx+2,yy-202,3:PLOT x+4,y-204,1:DRAW xx+4,yy-204,1:PLOT x+6,y-206,3:DRAW xx+6,yy-206,3
3180 GOTO 3170
3190 RESTORE 2020
3200 INK 0,0:INK 1,26:BORDER 0
3210 READ x,y,xx,yy:IF x=9999 THEN 3240 ELSE PLOT x,y,1:DRAW xx,yy,1:PLOT x,y-30,1:DRAW xx,yy-30,1:PLOT x,y-60,1:DRAW xx,yy-60,1:PLOT x,y-90,1:DRAW xx,yy-90,1:PLOT x,y-120,1:DRAW xx,yy-120,1:PLOT x,y-150,1:DRAW xx,yy-150,1
3220 SOUND 1,100,1,14
3230 GOTO 3210
3240 RESTORE 2020
3250 MODE 1
3260 INK 0,0:INK 1,26:BORDER 0
3270 READ x,y,xx,yy:IF x=9999 THEN 3300 ELSE PLOT x,y,1:DRAW xx,yy,1
3280 SOUND 1,100,1,14
3290 GOTO 3270
3300 FOR tt=1 TO 10:SOUND 1,100,1,14:FOR x=1 TO 46 STEP 1:OUT &BC00,2:OUT &BD00,x:NEXT x,tt
3310 OUT &BC00,2:OUT &BD00,46
3320 RESTORE 3390:FOR a=1 TO 25:READ s$:LOCATE 8+a,15:PEN 1:INK 2,6,24:PRINT s$:SOUND 1,100,5,14,0,0,0:FOR tempo=1 TO 30:NEXT tempo:NEXT a
3330 INK 3,18:LOCATE 9,15:PEN 3:PRINT"T":SOUND 1,100,10,14,0,0,0     
3340 FOR a=1 TO 300:NEXT a
3350 INK 3,18:LOCATE 17,15:PEN 3:PRINT" C":SOUND 1,100,10,14,0,0,0                                                                                                                                              
3360 FOR a=1 TO 300:NEXT a
3370 INK 3,18:LOCATE 26,15:PEN 3:PRINT" D":SOUND 1,100,10,14,0,0,0                                                                                                                                              
3380 FOR a=1 TO 300:NEXT a
3390 DATA T,o,p, , , , , , ,C,r,a,c,k,e,r,s, ,D,e,m,o, ,I,I,
3400 SPEED INK 5,1:LOCATE 9,10:PEN 2:PRINT"A.T.F"
3410 PLOT 110,240,1:DRAW 300,240,1
3420 LOCATE 32,8:PEN 2:PRINT"TOP"
3430 FOR t=1 TO 4:FOR a=100 TO 540 STEP 20:PLOT a,0,1:DRAW a,100,1:PLOT a,0,0:DRAW a,100,0:NEXT a:CALL &BD20:CALL &BD21:CALL &BD22:CALL &BD23:CALL &BD24:CALL &BD25:FOR a=440 TO 100 STEP -20:PLOT a,0,1:DRAW a,100,1:PLOT a,0,0:DRAW a,100,0:NEXT a
3440 CALL &BD20:CALL &BD21:CALL &BD22:CALL &BD23:CALL &BD24:CALL &BD25:NEXT t
3450 FOR t=1 TO 25:CALL &BD20:CALL &BD21:CALL &BD22:CALL &BD23:CALL &BD24:CALL &BD25:SOUND 1,50-t,1,14,0,0,11:NEXT t
3460 FOR a=1 TO 396 STEP 4:PLOT 128+a,1,1:NEXT a
3470 FOR a=3 TO 398 STEP 4:PLOT 128+a,1,1:NEXT a
3480 FOR a=1 TO 156 STEP 4:PLOT 128,a,1:DRAW 524,a,1:PLOT 128,a,0:DRAW 524,a,0:NEXT a
3490 PLOT 128,156,1:DRAW 524,156,1
3500 FOR a=39 TO 19 STEP -1:PEN 2:LOCATE a,20:PRINT"T ":NEXT a:SOUND 1,100,10,14,0,0,31
3510 FOR a=39 TO 20 STEP -1:PEN 2:LOCATE a,20:PRINT"C ":NEXT a
3520 SOUND 1,100,10,14,0,0,31
3530 FOR a=39 TO 21 STEP -1:PEN 2:LOCATE a,20:PRINT"D ":NEXT a
3540 SOUND 1,100,10,14,0,0,31
3550 FOR a=1 TO 40 STEP 2:PLOT 120,240-a,2:PLOT 100,240-a,2:PLOT 180,240-a,2:PLOT 200,240-a,2:PLOT 300,240-a,2:PLOT 320,240-a,2:PLOT 420,240-a,2:PLOT 440,240-a,2:NEXT a
3560 RESTORE 3570:FOR a=1 TO 4:READ aq:FOR aa=1 TO 20 STEP 2:PLOT aq+aa,200,2:NEXT aa:NEXT a
3570 DATA 100,180,300,420
3580 PEN 3:LOCATE 19,20:PRINT"ATF"
3590 FOR a=1 TO 100 STEP 2:PLOT 100+a,360,2:NEXT a
3600 FOR a=1 TO 60 STEP 2:PLOT 120+a,340,2:NEXT a
3610 FOR a=1 TO 80 STEP 2:PLOT 420+a,360,2:NEXT a
3620 FOR a=1 TO 38 STEP 2:PLOT 360-a,340,2:PLOT 320,340-a,2:PLOT 260+a,340,2:PLOT 300,340-a,2:NEXT a
3630 FOR a=-4 TO 70 STEP 2:PLOT 100,290+a,2:NEXT a
3640 FOR a=1 TO 60 STEP 2:PLOT 500-a,340,2:NEXT a
3650 FOR a=1 TO 20 STEP 2:PLOT 260,360-a,2:PLOT 360,360-a,2:PLOT 440,340-a,2:PLOT 500,360-a,2:NEXT a
3660 FOR a=1 TO 50 STEP 2:PLOT 200,360-a,2:NEXT a
3670 FOR a=1 TO 100 STEP 2:PLOT 260+a,360,2:NEXT a
3680 FOR a=1 TO 40:PLOT 440+a,320,2:NEXT a
3690 FOR a=1 TO 12:PLOT 480,320-a,2:NEXT a
3700 FOR a=1 TO 58:PLOT 420,360-a,2:NEXT a
3710 FOR a=1 TO 28 STEP 2:PLOT 180,340-a,2:NEXT a
3720 FOR a=1 TO 36 STEP 2:PLOT 120,340-a,2:NEXT a
3730 FOR a=1 TO 16 STEP 2:PLOT 120+a,304,2:NEXT a
3740 LOCATE 9,10:PRINT"     ":LOCATE 32,8:PRINT"   "
3750 PLOT 100,240,1:DRAW 300,240,1
3760 ENT 1,10,10,1,20,-10,1,10,10,1:SOUND 1,200,40,14,0,1,0
3770 INK 2,26
3780 ENT 1,10,10,1,20,-10,1,10,10,1:SOUND 1,200,40,14,0,1,31
3790 SOUND 2,3000,50,14,,,20
3800 xm=1:ym=17
3810 INK 1,26,0:SPEED INK 1,1:INK 2,26
3820 b$(1)="Name:TOP CRACKERS GROUP"
3830 b$(2)="Membres:News Amstrad,F,Yabom,CPC Mag,Bam-Bams"
3840 b$(3)="et Grees,D5A7,HITCHER,JAW,TELETEL Z
3850 FOR ligne=1 TO 3
3860 SOUND 1,100,1,14
3870 FOR tt=1 TO LEN(b$(ligne))
3880 LOCATE xm,ym:PRINT MID$(b$(ligne),tt,1):xm=xm+1
3890 IF MID$(b$(ligne),tt,1)=" " THEN 3930
3900 SOUND 7,0,1,14,,,31
3910 duree=CINT(RND*7)
3920 FOR t=1 TO duree*2:NEXT
3930 NEXT
3940 xm=1:ym=ym+3
3950 NEXT
3960 RESTORE 3390:FOR a=1 TO 25:READ s$:LOCATE 8+a,15:PEN 3:INK 2,6,24:PRINT s$:SOUND 1,100,5,14,0,0,0:FOR tempo=1 TO 30:NEXT tempo:NEXT a
3970 INK 1,26,1:INK 3,18:INK 2,26
3980 SPEED INK 1,5
3990 FOR a=1 TO 398 STEP 2:PLOT 128+a,156,2:NEXT a
4000 FOR a=0 TO 26:INK 0,a:BORDER a:INK 1,26,a:FOR tempo=1 TO 50 STEP 10:SOUND 1,tempo,1,14:NEXT tempo:SOUND 2,100,1,14:NEXT a
4010 ENT 1,20,1,1,10,-10,1:SOUND 1,80,30,14,0,1,0
4020 INK 0,0:BORDER 0:INK 1,26,1
4030 FOR a=1 TO 5:SOUND 1,a*20,30,14,0,1,31
4040 NEXT
4050 INK 3,18,0
4060 FOR a=1 TO 500:NEXT a
4070 INK 2,26,0
4080 FOR a=1 TO 500:NEXT a
4090 INK 1,26,1:INK 2,0:INK 3,0
4100 FOR a=1 TO 500:NEXT a
4110 FOR a=10 TO 1 STEP -1:INK 1,26,0:INK 2,26,0:INK 3,26,0:SPEED INK 1,a:FOR tempo =1 TO 100:NEXT :NEXT
4120 INK 1,26,1:INK 2,26:INK 3,18:SPEED INK 1,5
4130 FOR x=40 TO 1 STEP -1
4140 OUT &BC00,1:OUT &BD00,x
4150 FOR tempo=1 TO 60:NEXT tempo
4160 NEXT x
4170 ENV 1,5,2,1
4180 FOR x=1 TO 40:OUT &BC00,1:OUT &BD00,x:FOR tempo=1 TO 50:NEXT tempo:SOUND 1,x*x,5,4,1,0,1:NEXT x
4210 RUN 4230
4220 SOUND 4,100,1,14:RETURN
4230 DI
4240 '----------
4250 E=1:H=5:J=1:P=1:G=18
4260 ENV 1,4,-1,1:G=G-3:RESTORE 4270:FOR B=1 TO 3:READ N,M:SOUND 1,N,M,G,1:NEXT B
4270 DATA 95,12,89,12,106,24
4280 ENV 2,4,0,0.5,7,-1,0.5:ENV 3,24,-1.25,0.5:FOR A=1 TO H:RESTORE 4370:FOR B=0 TO 5:READ C,D
4290 IF D=1 THEN G=12 ELSE G=15
4300 IF D=1 THEN ENV 3,3,0,1,1,-12,1
4310 SPEED INK 1,5:SOUND 1,C,12,15,2:SOUND 2+16,0,12,1,3,,D:
4320 IF D=31 OR D=8 THEN G=15
4330 IF J=2 THEN 4350 ELSE GOTO 4340
4340 NEXT B:NEXT A
4350 IF E=1 THEN GOTO 4370
4360 RETURN
4370 DATA 638,1,638,1,319,1,319,1,638,31,638,1
4380 FOR K=1 TO 450:NEXT K
4390 RESTORE 4460:FOR U=1 TO 32:READ V,W,X
4400 IF W=1 THEN Y=12 ELSE Y=15
4410 IF W=1 THEN ENV 3,3,0,1,1,-12,1
4420 ENV 5,4,0,1,8,-1,1
4430 SPEED INK 1,1:SOUND 1,V,12,15,2:SOUND 2+16,0,2,7,3,,W:SOUND 4+32,X,12,15,5
4440 IF W=31 THEN Y=15
4450 NEXT U
4460 DATA 638,1,0,638,1,0,319,1,119,319,1,0,638,31,106,638,1,0,319,1,119,319,1,0,638,1,127,638,1,0,426,1,159,426,1,0,358,31,127,379,1,0,426,1,159,506,1,0
4470 DATA 638,1,95,638,1,106,319,1,89,319,1,106,638,31,0,638,1,0,319,1,0,319,1,0,638,1,0,638,1,0,426,1,0,426,1,0,358,31,0,379,1,0,426,1,0,506,1,0
4480 E=2:H=3:GOSUB 4280:E=1
4490 J=2
4500 E=2:RESTORE 4520:FOR B=0 TO 15:READ C,D:GOSUB 4290
4510 NEXT B
4520 DATA 638,1,638,1,319,1,319,1,638,31,638,1,319,1,319,1,638,31,638,31,426,1,426,31,358,1,379,31,426,31,506,31
4530 E=2:J=2:RESTORE 4820:FOR B=0 TO 15:READ C,D:GOSUB 4290
4540 NEXT B:P=P+1:IF P=4 THEN 4550 ELSE 4530
4550 S=1:P=1
4560 E=2:J=2:RESTORE 4830:FOR B=0 TO 15:READ C,D:GOSUB 4290
4570 NEXT B:P=P+1:IF P=2 THEN 4580 ELSE 4560
4580 FOR W=1 TO 420:NEXT W
4590 FOR J=1 TO 3
4600 K=1
4610 GOTO 4790
4620 S=S+1:RESTORE 4840:FOR U=1 TO 16:READ V,W,X
4630 IF W=1 THEN Y=12 ELSE Y=15
4640 IF W=1 THEN ENV 3,3,0,1,1,-12,1
4650 ENV 5,4,0,1,8,-1,1
4660 INK 1,26,0:INK 2,18,18:INK 3,0,0:SPEED INK 1,1:SOUND 1,V/M,12,15,2:SOUND 2+16,0,2,7,3,,W:SOUND 4+32,X/N,12,15,2
4670 BORDER ((CINT((v/m)/20))-10)
4680 TAGOFF:LOCATE 19,20:PEN 2:PAPER 1:PRINT CINT(V/M)
4690 BORDER 0
4700 TAGOFF:LOCATE 19,21:PEN 0:PAPER 1:PRINT ((CINT((v/m)/20))-10)
4710 IF W=31 THEN Y=15
4720 IF F=2 THEN RETURN
4730 NEXT U
4740 IF K=4 AND KIO=2 AND J=2 THEN RETURN
4750 IF J=3 AND M=0.891791045 THEN 4850
4760 K=K+1:IF K=1 THEN 4790 ELSE IF K=2 THEN 4800 ELSE IF K=3 OR K=4 THEN 4810
4770 IF Q=2 THEN RETURN
4780 IF K=5 THEN NEXT J
4790 M=1:N=1:GOTO 4620
4800 M=1.18905473:N=1.18905473:GOTO 4620
4810 M=0.891791045:N=0.891791045:GOTO 4620
4820 DATA 638,31,638,1,319,1,319,1,638,8,638,1,319,1,319,1,638,31,638,1,426,1,426,1,358,8,379,1,426,1,506,1
4830 DATA 638,10,638,31,319,1,319,1,638,10,638,31,319,1,319,31,638,10,638,31,426,1,426,31,358,31,379,10,426,10,506,31
4840 DATA 638,31,159,638,1,0,319,1,106,319,1,0,638,8,119,638,1,0,319,1,106,319,1,159,638,31,0,638,1,159,426,1,0,426,1,106,358,8,119,379,1,0,426,1,106,506,1,0
4850 F=2:Q=2:RESTORE 4860:FOR U=1 TO 16:READ V,W,X:GOSUB 4630:NEXT U
4860 DATA 638,31,159,638,1,0,319,1,106,319,1,0,638,8,119,638,1,0,319,1,106,319,1,159,638,31,0,638,1,159,426,1,127,426,1,0,358,8,119,379,1,0,426,1,106,506,1,0
4870 TE1=1:FOR BSW=1 TO 2:TES=2
4880 M=1:N=1:F=2:Q=2:GOSUB 4950:GOSUB 4960:M=1.19029851:GOSUB 4950:GOSUB 4980:M=0.891061453:N=0.888268157:GOSUB 4970:GOSUB 4960:GOSUB 4970:GOSUB 4980:NEXT BSW:KIO=2:GOTO 4990
4890 FOR U=1 TO 8:READ V,W,X:GOSUB 4630:NEXT U:RETURN
4900 M=1.19029851:RESTORE 4940:FOR U=1 TO 16:READ V,W,X:GOSUB 4630:NEXT U:M=0.891061453:N=0.888268157:RESTORE 4910:FOR U=1 TO 16:READ V,W,X:GOSUB 4630:NEXT U
4910 DATA 658,31,106,638,1,0,319,1,119,319,1,0,638,8,119,638,1,0,319,1,134,319,1,0
4920 DATA 638,31,119,638,1,0,426,1,106,426,1,159,358,8,0,379,1,159,426,1,0,506,1,159
4930 DATA 638,31,106,638,1,0,319,1,119,319,1,0,638,8,119,638,1,0,319,1,127,319,1,0
4940 DATA 638,31,119,638,1,0,426,1,0,426,1,106,358,8,0,379,1,0,426,1,0,506,1,0
4950 RESTORE 4910:GOTO 4890
4960 RESTORE 4920:GOTO 4890
4970 RESTORE 4930:GOTO 4890
4980 RESTORE 4940:GOTO 4890
4990 KIO=2:F=1:GOSUB 4590:FOR QWE=1 TO 2:M=1:N=1:F=2:Q=2:RESTORE 5010:GOSUB 5000:M=1.19029851:RESTORE 5010:GOSUB 5000:RESTORE 5020:M=0.891061453:GOSUB 5000:RESTORE 5030:GOSUB 5000:NEXT QWE:GOTO 5040
5000 F=2:FOR U=1 TO 16:READ V,W,X:GOSUB 4630:NEXT U:RETURN
5010 DATA 638,8,67,638,1,0,319,1,71,319,15,0,638,31,80,638,31,0,319,1,89,319,31,80,638,8,0,638,1,0,426,1,213,426,31,179,358,8,159,379,12,179,426,1,213,506,31,0
5020 DATA 638,31,67,638,1,0,319,1,71,319,1,0,638,8,80,638,1,0,319,1,89,319,31,119,638,8,0,638,11,0,426,14,0,426,17,0,358,21,0,379,24,0,426,27,0,506,31,0
5030 DATA 638,31,179,638,31,0,319,1,119,319,31,0,638,8,134,638,1,142,319,15,134,319,1,179,638,31,0,638,31,179,426,1,0,426,31,179,358,8,119,379,31,0,426,1,119,506,31,0
5040 FOR QWE=1 TO 2:M=1:N=1:F=2:Q=2:RESTORE 5060:GOSUB 5050:RESTORE 5060:M=1.19029851:GOSUB 5050:FOR SD=1 TO 2:RESTORE 5070:M=0.891061453:GOSUB 5050:NEXT SD:NEXT QWE:Q=1:KIO=2:F=1:GOSUB 4590:GOTO 5080
5050 FOR U=1 TO 16:READ V,W,X:GOSUB 4630:NEXT U:RETURN
5060 DATA 638,31,80,638,1,0,319,1,106,319,1,89,638,8,80,638,1,89,319,1,106,319,1,80,638,31,0,638,1,0,426,1,142,426,1,0,358,8,134,379,31,0,426,31,119,506,8,0
5070 DATA 638,31,179,638,1,0,319,1,119,319,1,0,638,8,134,638,1,0,319,1,119,319,1,179,638,31,0,638,1,0,426,5,142,426,8,0,358,13,134,379,19,0,426,25,119,506,31,0
5080 F=12:FOR Q=1 TO 2:ENT -4,2,1,1,2,-1,1:ENV 4,15,-1,3.4:SOUND 1,638,F,15,4,4:SOUND 2+16,319,F,15,4,4:SOUND 4+32,159,F,15,4,4:F=30:ENV 4,15,-1,3:NEXT
5090 D=1:J=1:FOR A=1 TO 30:SOUND 1,0,3,J,,,D:J=J+0.4:D=D+0.7:NEXT A
5100 FOR mlk=1 TO 50:PRINT:NEXT mlk
5110 PAPER 0:INK 1,26:INK 2,6:INK 3,18:MODE 1
5120 RESTORE 5170
5130 READ x,y,xx,yy:IF x=9999 THEN 5630 ELSE PLOT x,y+50,1:DRAW xx,yy+50,1
5140 SOUND 1,400,2,14
5150 FOR tempo=1 TO 10:NEXT tempo
5160 GOTO 5130
5170 '-----------------------------------------------
5180 '-----------------DATAS avion 2----------------
5190 '---------------------------------------------
5200 DATA 60,260,580,260
5210 DATA 60,260,100,250
5220 DATA 100,250,540,250
5230 DATA 540,250,580,260
5240 DATA 200,250,220,240
5250 DATA 220,240,420,240
5260 DATA 420,240,440,250
5270 DATA 60,260,120,280
5280 DATA 120,280,160,290
5290 DATA 220,260,180,330
5300 DATA 180,330,160,340
5310 DATA 160,340,190,270
5320 DATA 190,270,220,260
5330 DATA 160,290,176,300
5340 DATA 580,260,520,280
5350 DATA 520,280,480,290
5360 DATA 420,260,460,330
5370 DATA 460,330,480,340
5380 DATA 480,340,450,270
5390 DATA 450,270,420,260
5400 DATA 480,290,464,300
5410 DATA 200,300,440,300
5420 DATA 260,300,300,320
5430 DATA 300,320,340,320
5440 DATA 340,320,380,300
5450 DATA 280,280,260,290
5460 DATA 260,290,240,290
5470 DATA 240,290,220,280
5480 DATA 220,280,240,270
5490 DATA 240,270,260,270
5500 DATA 260,270,280,280
5510 DATA 360,280,380,290
5520 DATA 380,290,400,290
5530 DATA 400,290,420,280
5540 DATA 420,280,400,270
5550 DATA 400,270,380,270
5560 DATA 380,270,360,280
5570 DATA 450,270,500,260
5580 DATA 190,270,140,260
5590 DATA 260,260,300,270
5600 DATA 300,270,340,270
5610 DATA 340,270,380,260
5620 DATA 9999,,,
5630 RESTORE 2020
5640 READ x,y,xx,yy:IF x=9999 THEN 5670 ELSE PLOT 640-x,y-200,1:DRAW 640-xx,yy-200,1
5650 SOUND 1,100,1,14
5660 GOTO 5640
5670 RESTORE 2020
5680 READ x,y,xx,yy:IF x=9999 THEN 5710 ELSE PLOT x,y-50,1:DRAW xx,yy-50,1
5690 SOUND 1,100,1,14
5700 GOTO 5680
5710 LOCATE 17,9:INK 2,6:PEN 2:PRINT"TOP DEMO IS"
5720 LOCATE 10,15:PEN 3:INK 3,18:PRINT"THE BEST DEMO OF CPC "
5730 LOCATE 10,17:PEN 3:INK 3,18:PRINT"BECAUSE WE'RE HAVING THE BEST"
5740 LOCATE 10,18:PEN 3:INK 3,18:PRINT"MEMBERS....."
5750 a$=INKEY$:IF a$="" THEN 5750
5760 FOR a=1 TO 50:PRINT:NEXT a
5770 GOTO 20