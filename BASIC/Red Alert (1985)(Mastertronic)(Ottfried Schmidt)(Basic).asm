1  '***************************
2  '*        RED ALERT        *
3  '*(C) 1985 OTTFRIED SCHMIDT*
4  '***************************
5  ' ---*--- FOR MASTERTRONIC LTD.
6  '
1000 SYMBOL AFTER 256:MEMORY &7F00:SYMBOL AFTER 199
1010 hsc=0:ENV 1,=11,3000:nam$=" ":DIM s(65),st(5)
1020 FOR i=1 TO 5:st(i)=1:NEXT i
1030 ' FARBEN DEFINIEREN
1040 INK 0,0:INK 1,24:INK 2,6:INK 3,11:INK 4,21:INK 5,23:INK 6,4
1050 ' SPRITES EINLESEN (EXPLOSIONEN)
1060 MODE 0:LOCATE 3,12:PRINT"READ SPRITEDATES":GOTO 2150
1070 '
1080 DATA 00,00,00,00,00,00,00,00,00,00
1090 DATA 00,00,00,00,00,00,00,00,00,00
1100 DATA 00,00,00,00,00,00,00,0C,00,00
1110 DATA 00,04,C0,08,00,00,00,48,08,00
1120 DATA 00,00,48,08,00,00,00,04,00,00
1130 DATA 00,00,00,00,00,00,00,00,00,00
1140 DATA 00,00,00,00,00,00,00,00,00,00
1150 DATA 00,00,00,00,00,00,00,00,00,00
1160 DATA 00,00,00,00,00,00,00,00,00,00
1170 DATA 00,00,08,00,00,00,04,84,00,00
1180 DATA 00,00,48,08,00,00,00,48,08,00
1190 DATA 00,04,C0,84,00,00,04,C0,08,00
1200 DATA 00,00,48,08,00,00,00,04,00,00
1210 DATA 00,00,00,00,00,00,00,00,00,00
1220 DATA 00,00,00,00,00,00,00,00,00,00
1230 DATA 00,00,00,00,00,00,00,0C,00,00
1240 DATA 00,00,48,08,00,00,04,C0,84,00
1250 DATA 00,48,48,08,00,00,48,C0,08,00
1260 DATA 00,04,84,84,00,00,04,C0,84,00
1270 DATA 00,48,C0,08,00,00,04,0C,00,00
1280 DATA 00,00,00,00,00,00,00,00,00,00
1290 DATA 00,00,00,00,00,00,00,00,00,00
1300 DATA 00,00,04,00,00,00,00,48,0C,00
1310 DATA 00,04,C0,C0,08,00,04,84,84,00
1320 DATA 00,48,C0,80,00,00,0C,84,84,00
1330 DATA 04,C0,48,84,00,04,C0,C0,08,00
1340 DATA 00,48,84,00,00,00,04,C0,08,00
1350 DATA 00,00,48,08,00,00,00,04,00,00
1360 DATA 00,00,00,00,00,00,04,08,00,00
1370 DATA 00,0C,84,00,00,04,C0,C0,08,00
1380 DATA 04,48,48,84,00,48,84,C0,84,00
1390 DATA 48,C0,84,C0,08,48,48,C0,C0,08
1400 DATA 04,C0,48,48,08,04,C0,C0,84,00
1410 DATA 48,48,48,84,00,48,C0,C0,08,00
1420 DATA 04,C0,48,08,00,00,0C,04,00,00
1430 DATA 04,0C,00,0C,00,48,48,0C,C0,08
1440 DATA 04,84,C0,48,84,00,48,C0,C0,08
1450 DATA 04,84,84,C0,08,04,C0,C0,84,00
1460 DATA 48,84,84,84,00,0C,C0,C0,C0,08
1470 DATA 48,C0,C0,48,84,04,C0,48,84,84
1480 DATA 04,C0,C0,48,84,00,48,48,C0,08
1490 DATA 00,48,0C,84,00,00,0C,00,08,00
1500 DATA 04,08,04,08,00,48,84,48,84,00
1510 DATA 48,48,C0,48,08,04,84,C0,C0,08
1520 DATA 48,C0,84,84,84,04,C0,C0,C0,08
1530 DATA 00,48,48,48,08,00,48,C0,84,00
1540 DATA 00,48,C0,84,00,04,84,84,C0,08
1550 DATA 04,C0,C0,C0,08,0C,C0,84,84,00
1560 DATA 48,0C,C0,08,00,04,08,0C,00,00
1570 DATA 00,00,00,00,00,00,00,00,00,00
1580 DATA 00,04,08,08,00,00,48,84,84,00
1590 DATA 04,C0,48,84,00,48,48,C0,48,08
1600 DATA 48,C0,48,C0,08,04,C0,84,84,00
1610 DATA 04,84,C0,84,00,00,48,C0,84,00
1620 DATA 00,04,84,08,00,00,00,08,00,00
1630 DATA 00,00,00,00,00,00,00,00,00,00
1640 DATA 00,00,00,00,00,00,00,00,00,00
1650 DATA 00,04,00,00,00,00,48,0C,00,00
1660 DATA 04,84,C0,08,00,04,C0,84,84,00
1670 DATA 00,48,48,08,00,00,48,C0,08,00
1680 DATA 00,04,C0,84,00,00,04,84,C0,08
1690 DATA 00,48,C0,84,00,00,04,48,08,00
1700 DATA 00,00,04,00,00,00,00,00,00,00
1710 DATA 00,00,00,00,00,00,00,00,00,00
1720 DATA 00,00,00,00,00,00,00,04,00,00
1730 DATA 00,04,48,08,00,00,48,84,84,00
1740 DATA 00,48,C0,84,00,04,C0,48,08,00
1750 DATA 48,48,C0,08,00,04,84,84,00,00
1760 DATA 00,48,08,00,00,00,48,84,00,00
1770 DATA 04,C0,84,00,00,00,0C,08,00,00
1780 DATA 00,00,00,00,00,00,04,00,00,00
1790 DATA 00,00,00,00,00,00,00,0C,04,08
1800 DATA 00,04,C0,48,08,00,48,C0,48,08
1810 DATA 00,48,84,84,00,00,04,C0,84,00
1820 DATA 00,04,C0,08,00,00,08,0C,00,00
1830 DATA 00,00,00,00,00,00,00,00,08,00
1840 DATA 00,00,00,00,00,00,00,00,00,00
1850 DATA 00,00,00,00,00,00,00,00,00,00
1860 DATA 00,00,00,00,00,00,00,00,00,00
1870 DATA 00,00,0C,00,00,00,04,C0,08,00
1880 DATA 00,48,48,08,00,00,48,C0,08,00
1890 DATA 00,48,0C,00,00,00,04,00,00,00
1900 DATA 00,00,00,00,00,00,00,00,00,00
1910 DATA 00,00,00,00,00,00,00,00,00,00
1920 DATA 00,F0,A0,00,50,50,50,00,A0,50
1930 DATA 00,A0,A0,50,00,A0,F0,F0,F0,A0
1940 DATA A0,50,00,A0,A0,50,00,A0,50,50
1950 DATA 50,00,00,F0,A0,00
1960 '
1970 DATA 00,00,08,04,84,04,00,00,00,00
1980 DATA 08,48,48,08,04,00,00,04,04,C0
1990 DATA C0,84,00,00,00,00,48,84,84,C0
2000 DATA 48,00,00,04,C0,48,C0,48,08,00
2010 DATA 00,04,84,84,C0,C0,84,00,00,40
2020 DATA 48,C0,48,C0,08,00,00,00,48,84
2030 DATA C0,48,08,00,00,04,C0,C0,48,84
2040 DATA 08,00,00,04,84,C0,C0,C0,08,00
2050 DATA 00,00,48,48,48,0C,00,00,00,04
2060 DATA 48,C0,C0,84,00,00,00,00,0C,84
2070 DATA C0,08,00,00,00,00,04,48,84,04
2080 DATA 00,00,00,00,00,0C,08,08,00,00
2090 DATA 00,00,00,04,08,00,00,00,00,00
2100 DATA 00,0C,84,00,00,00,00,00,00,04
2110 DATA 08,00,00,00,00,00,00,04,08,00
2120 DATA 00,00,00,00,00,48,0C,00,00,00
2130 DATA 00,00,0C,0C,0C,0C,00,00,00,00
2140 '
2150 adr=&A000
2160 FOR i=0 TO 1045:READ a$
2170 POKE adr+i,VAL("&"+a$)
2180 NEXT i
2190 '
2200 DATA 00,C0,C0,08,40,84,48,84,C0,08
2210 DATA 04,08,C0,08,00,00,C0,08,00,00
2220 DATA C0,08,00,00,C0,08,00,00,C0,08
2230 DATA 00,00,C0,08,0C,0C,C0,08,C0,84
2240 DATA C0,08,40,84,C0,08,40,84,C0,08
2250 DATA 40,84,40,84,40,84,00,C0,C0,0C
2260 DATA 00,0C,0C,08,00,00,00,00,00,00
2270 DATA 00,00,00,40,84,00,00,C0,C0,08
2280 DATA 40,84,40,84,40,84,40,84,40,84
2290 DATA 40,84,40,84,48,84,40,C0,C0,84
2300 DATA 40,C0,C0,84,40,84,48,84,40,84
2310 DATA 40,84,40,84,40,84,40,84,40,84
2320 DATA 00,00,00,00,00,00,00,00,C0,08
2330 DATA 40,84,C0,08,40,84,C0,84,C0,84
2340 DATA C0,84,C0,84,C0,C0,C0,84,C0,C0
2350 DATA C0,84,C0,C0,C0,84,C0,C0,C0,84
2360 DATA C0,48,48,84,C0,48,48,84,C0,08
2370 DATA 40,84,C0,08,40,84,C0,08,40,84
2380 DATA C0,08,40,84,00,00,00,00,00,00
2390 DATA 00,00,C0,C0,C0,84,C0,C0,C0,84
2400 DATA 40,84,0C,84,40,84,00,00,40,84
2410 DATA 84,00,40,84,84,00,40,C0,84,00
2420 DATA 40,C0,84,00,40,84,84,00,40,84
2430 DATA 84,00,40,84,00,84,40,84,0C,84
2440 DATA C0,C0,C0,84,C0,C0,C0,84,00,00
2450 DATA 00,00,00,00,00,00,00,00,00,00
2460 DATA 00,00,00,00,00,C0,84,00,40,84
2470 DATA C0,08,40,08,40,08,C0,08,40,84
2480 DATA C0,08,40,84,C0,08,40,84,C0,08
2490 DATA 40,84,C0,08,40,84,C0,08,40,84
2500 DATA 40,08,40,08,40,84,C0,08,00,C0
2510 DATA 84,00,00,00,00,00,00,00,00,00
2520 DATA 40,84,40,84,40,84,40,84,40,84
2530 DATA 40,84,40,84,40,84,40,84,40,84
2540 DATA 40,84,40,84,40,84,40,84,40,84
2550 DATA 40,84,40,84,40,84,40,84,48,84
2560 DATA 00,C0,C0,08,00,C0,C0,08,00,40
2570 DATA 84,00,00,40,84,00,00,00,00,00
2580 DATA 00,00,00,00,C0,C0,C0,08,C0,84
2590 DATA 40,08,40,84,40,84,40,84,40,84
2600 DATA 40,84,40,84,40,84,40,84,40,84
2610 DATA 48,08,40,C0,C0,08,40,C0,C0,08
2620 DATA 40,84,C0,08,40,84,C0,08,40,84
2630 DATA 40,84,C0,84,40,84,C0,84,00,84
2640 DATA 00,00,00,00,00,00,00,00,00,00
2650 '
2660 FOR i=&8100 TO &82C1
2670 READ a$:POKE i,VAL("&"+a$):NEXT i
2680 '
2690 DATA 16,00,26,00,3A,F0,7F,5F,3A,F1
2700 DATA 7F,6F,2D,1D,CD,1D,BC,ED,4B,F2
2710 DATA 7F,E5,16,10,1E,04,0A,AE,77,23
2720 DATA 03,1D,20,F8,E1,CD,26,BC,E5,15
2730 DATA 20,EE,E1,C9,00,00,00,00,00,00
2740 '
2750 FOR i=&8000 TO &8031:READ a$
2760 POKE i,VAL("&"+a$):NEXT i
2770 '
2780 '
2790 'SYMBOLE
2800 '
2810 SYMBOL 200,249,171,250,171,250,175,255,175
2820 SYMBOL 201,64,228,164,228,164,244,250,255
2830 SYMBOL 202,0,0,0,0,0,128,128,128
2840 SYMBOL 203,252,252,102,102,102,102,124,124
2850 SYMBOL 204,124,108,110,102,102,226,226,0
2860 SYMBOL 205,254,254,98,98,96,104,104,120
2870 SYMBOL 206,120,104,104,98,98,254,254,0
2880 SYMBOL 207,248,248,108,108,102,102,102,102
2890 SYMBOL 208,102,102,102,108,108,248,248,0
2900 SYMBOL 209,0,24,24,60,60,102,102,102
2910 SYMBOL 210,102,126,126,102,102,102,102,0
2920 SYMBOL 211,240,240,96,96,96,96,96,96
2930 SYMBOL 212,96,98,98,102,102,254,254,0
2940 SYMBOL 213,126,126,90,90,24,24,24,24
2950 SYMBOL 214,24,24,24,24,24,60,60,0
2960 '
2970 ' MASCHINENSPRACHE
2980 '
2990 MODE 0:LOCATE 1,10:PRINT"  READ MACHINE CODE":GOTO 4360
3000 DATA CD,50,95,3E,01,CD,59,BC,3E,03
3010 DATA CD,DE,BB,CD,DF,94,3A,07,91,FE
3020 DATA 00,28,06,3D,32,07,91,18,23,3A
3030 DATA 08,91,32,07,91,3A,06,91,FE,01
3040 DATA 28,06,FE,02,28,0B,18,10,2A,02
3050 DATA 91,2B,22,02,91,18,07,2A,02,91
3060 DATA 23,22,02,91,ED,5B,02,91,2A,04
3070 DATA 91,2B,2B,22,04,91,E5,D5,CD,F0
3080 DATA BB,FE,00,20,07,D1,E1,CD,EA,BB
3090 DATA 18,4C,FE,03,28,F5,FE,05,28,F1
3100 DATA FE,04,20,07,3E,03,32,2E,91,18
3110 DATA 10,FE,06,20,07,3E,02,32,2E,91
3120 DATA 18,05,3E,01,32,2E,91,3E,01,32
3130 DATA 2D,91,2A,00,91,22,24,91,2A,02
3140 DATA 91,22,26,91,2A,04,91,22,28,91
3150 DATA 2A,06,91,22,2A,91,3A,08,91,32
3160 DATA 2C,91,D1,E1,CD,77,94,C9,CD,DF
3170 DATA 94,3A,10,91,FE,00,28,06,3D,32
3180 DATA 10,91,18,23,3A,11,91,32,10,91
3190 DATA 3A,0F,91,FE,01,28,06,FE,02,28
3200 DATA 0B,18,10,2A,0B,91,2B,22,0B,91
3210 DATA 18,07,2A,0B,91,23,22,0B,91,ED
3220 DATA 5B,0B,91,2A,0D,91,2B,2B,22,0D
3230 DATA 91,E5,D5,CD,F0,BB,FE,00,20,07
3240 DATA D1,E1,CD,EA,BB,18,4C,FE,03,28
3250 DATA F5,FE,05,28,F1,FE,04,20,07,3E
3260 DATA 03,32,2E,91,18,10,FE,06,20,07
3270 DATA 3E,02,32,2E,91,18,05,3E,01,32
3280 DATA 2E,91,3E,02,32,2D,91,2A,09,91
3290 DATA 22,24,91,2A,0B,91,22,26,91,2A
3300 DATA 0D,91,22,28,91,2A,0F,91,22,2A
3310 DATA 91,3A,11,91,32,2C,91,D1,E1,CD
3320 DATA 77,94,C9,CD,DF,94,3A,19,91,FE
3330 DATA 00,28,06,3D,32,19,91,18,23,3A
3340 DATA 1A,91,32,19,91,3A,18,91,FE,01
3350 DATA 28,06,FE,02,28,0B,18,10,2A,14
3360 DATA 91,2B,22,14,91,18,07,2A,14,91
3370 DATA 23,22,14,91,ED,5B,14,91,2A,16
3380 DATA 91,2B,2B,22,16,91,E5,D5,CD,F0
3390 DATA BB,FE,00,20,07,D1,E1,CD,EA,BB
3400 DATA 18,4C,FE,03,28,F5,FE,05,28,F1
3410 DATA FE,04,20,07,3E,03,32,2E,91,18
3420 DATA 10,FE,06,20,07,3E,02,32,2E,91
3430 DATA 18,05,3E,01,32,2E,91,3E,03,32
3440 DATA 2D,91,2A,12,91,22,24,91,2A,14
3450 DATA 91,22,26,91,2A,16,91,22,28,91
3460 DATA 2A,18,91,22,2A,91,3A,1A,91,32
3470 DATA 2C,91,D1,E1,CD,77,94,C9,CD,DF
3480 DATA 94,3A,22,91,FE,00,28,06,3D,32
3490 DATA 22,91,18,23,3A,23,91,32,22,91
3500 DATA 3A,21,91,FE,01,28,06,FE,02,28
3510 DATA 0B,18,10,2A,1D,91,2B,22,1D,91
3520 DATA 18,07,2A,1D,91,23,22,1D,91,ED
3530 DATA 5B,1D,91,2A,1F,91,2B,2B,22,1F
3540 DATA 91,E5,D5,CD,F0,BB,FE,00,20,08
3550 DATA D1,E1,CD,EA,BB,C3,00,92,FE,03
3560 DATA 28,F4,FE,05,28,F0,FE,04,20,07
3570 DATA 3E,03,32,2E,91,18,10,FE,06,20
3580 DATA 07,3E,02,32,2E,91,18,05,3E,01
3590 DATA 32,2E,91,3E,04,32,2D,91,2A,1B
3600 DATA 91,22,24,91,2A,1D,91,22,26,91
3610 DATA 2A,1F,91,22,28,91,2A,21,91,22
3620 DATA 2A,91,3A,23,91,32,2C,91,D1,E1
3630 DATA CD,77,94,C9,23,23,22,2F,91,3A
3640 DATA 2C,91,32,2B,91,21,90,01,22,28
3650 DATA 91,ED,5B,24,91,ED,53,26,91,3A
3660 DATA 2B,91,FE,00,28,06,3D,32,2B,91
3670 DATA 18,23,3A,2C,91,32,2B,91,3A,2A
3680 DATA 91,FE,01,28,06,FE,02,28,0B,18
3690 DATA 10,2A,26,91,2B,22,26,91,18,07
3700 DATA 2A,26,91,23,22,26,91,2A,2F,91
3710 DATA ED,5B,28,91,7A,BC,20,03,7B,BD
3720 DATA C8,2A,28,91,2B,2B,ED,5B,26,91
3730 DATA 22,28,91,CD,EA,BB,18,B1,2A,31
3740 DATA 91,22,33,91,CD,24,BB,CB,67,CA
3750 DATA 7F,95,67,CB,4C,CC,26,95,CB,44
3760 DATA CC,31,95,CB,5C,CC,1B,95,CB,54
3770 DATA CC,10,95,CD,3C,95,CD,24,BB,CB
3780 DATA 67,C4,8E,95,C3,F6,95,3A,31,91
3790 DATA FE,98,C8,3C,32,31,91,C9,3A,31
3800 DATA 91,FE,06,C8,3D,32,31,91,C9,3A
3810 DATA 32,91,FE,B4,C8,3C,32,32,91,C9
3820 DATA 3A,32,91,FE,36,C8,3D,32,32,91
3830 DATA C9,16,00,26,00,3A,33,91,5F,3A
3840 DATA 34,91,6F,2D,1D,CD,1D,BC,CD,65
3850 DATA 95,16,00,26,00,3A,31,91,5F,3A
3860 DATA 32,91,6F,2D,1D,CD,1D,BC,CD,65
3870 DATA 95,C9,01,48,A3,E5,16,09,1E,04
3880 DATA 0A,AE,77,03,23,1D,20,F8,E1,CD
3890 DATA 26,BC,E5,15,20,EE,E1,C9,FE,00
3900 DATA CA,02,95,47,3E,00,32,35,91,78
3910 DATA C3,ED,94,3A,35,91,FE,01,C8,3E
3920 DATA 01,32,35,91,3A,40,91,FE,00,28
3930 DATA 08,3A,44,91,FE,00,28,28,C9,3E
3940 DATA 01,32,40,91,AF,32,41,91,3E,03
3950 DATA 32,4C,91,21,00,A0,22,48,91,22
3960 DATA 50,91,2A,31,91,22,42,91,22,54
3970 DATA 91,CD,B1,96,CD,E1,96,C9,3E,01
3980 DATA 32,44,91,AF,32,45,91,3E,03,32
3990 DATA 4D,91,21,00,A0,22,4A,91,22,50
4000 DATA 91,2A,31,91,22,46,91,22,54,91
4010 DATA CD,B1,96,CD,E1,96,C9,3A,40,91
4020 DATA FE,01,CC,07,96,3A,44,91,FE,01
4030 DATA CC,17,96,C9,3A,4C,91,FE,00,20
4040 DATA 04,CD,27,96,C9,3D,32,4C,91,C9
4050 DATA 3A,4D,91,FE,00,20,04,CD,60,96
4060 DATA C9,3D,32,4D,91,C9,3E,10,32,4C
4070 DATA 91,2A,48,91,22,52,91,2A,42,91
4080 DATA 22,54,91,3A,41,91,3C,32,41,91
4090 DATA 2A,48,91,01,46,00,09,22,50,91
4100 DATA 22,48,91,CD,99,96,3A,41,91,FE
4110 DATA 0C,28,01,C9,3E,00,32,40,91,CD
4120 DATA B1,96,C9,3E,10,32,4D,91,2A,4A
4130 DATA 91,22,52,91,2A,46,91,22,54,91
4140 DATA 3A,45,91,3C,32,45,91,2A,4A,91
4150 DATA 01,46,00,09,22,50,91,22,4A,91
4160 DATA CD,99,96,3A,45,91,FE,0C,28,01
4170 DATA C9,3E,00,32,44,91,CD,B1,96,C9
4180 DATA 16,00,26,00,3A,54,91,5F,3A,55
4190 DATA 91,6F,2D,1D,CD,1D,BC,ED,4B,52
4200 DATA 91,CD,CA,96,16,00,26,00,3A,54
4210 DATA 91,5F,3A,55,91,6F,2D,1D,CD,1D
4220 DATA BC,ED,4B,50,91,CD,CA,96,C9,E5
4230 DATA 16,0E,1E,05,0A,AE,77,03,23,1D
4240 DATA 20,F8,E1,CD,26,BC,E5,15,20,EE
4250 DATA E1,C9,3E,0B,0E,96,CD,34,BD,3E
4260 DATA 0C,0E,1F,CD,34,BD,3E,06,0E,1E
4270 DATA CD,34,BD,3E,00,0E,00,CD,34,BD
4280 DATA 3E,01,0E,00,CD,34,BD,3E,08,0E
4290 DATA 10,CD,34,BD,3E,07,0E,36,CD,34
4300 DATA BD,3E,0D,0E,02,CD,34,BD,C9,16
4310 DATA 00,26,00,3A,60,91,5F,3A,61,91
4320 DATA 6F,2D,1D,CD,1D,BC,3A,62,91,57
4330 DATA CD,33,97,C9,01,6C,A3,E5,1E,08
4340 DATA 0A,AE,77,03,23,1D,20,F8,E1,CD
4350 DATA 26,BC,E5,15,20,EE,E1,C9,00,00
4360 RESTORE 3000:FOR i=&91FD TO &974C
4370 READ a$:POKE i,VAL("&"+a$):NEXT i
4380 MODE 0:PEN 2:PAPER 0
4390 a$=" "+CHR$(203)+CHR$(205)+CHR$(207)
4400 b$=CHR$(204)+CHR$(206)+CHR$(208)+" "
4410 c$=" "+CHR$(209)+CHR$(211)+CHR$(205)+CHR$(203)+CHR$(213)
4420 d$=CHR$(210)+CHR$(212)+CHR$(206)+CHR$(204)+CHR$(214)+" "
4430 SOUND 1,60,40,15,1
4440 FOR i=1 TO 8:LOCATE i,8:PRINT a$:LOCATE 17-i,9:PRINT b$:FOR l=1 TO 10:NEXT l,i
4450 SOUND 1,60,40,15,1
4460 PEN 1:FOR i=1 TO 7:LOCATE i,10:PRINT c$:LOCATE 15-i,11:PRINT d$:FOR l=1 TO 10:NEXT l,i
4470 PEN 2:LOCATE 6,13:PRINT"<C> 1985"
4480 PEN 1:LOCATE 3,15:PRINT"MASTERTRONIC LTD"
4490 GOSUB 5670
4500 MODE 0:FOR i=1 TO 5:st(i)=1:NEXT i
4510 POKE &9131,76:POKE &9132,130:sc=0:std=5:str=0
4520 POKE &9140,0:POKE &9144,0
4530 LOCATE 1,1:PEN 3:PAPER 5:PRINT STRING$(20," "):LOCATE 6,1:PRINT"RED  ALERT":PAPER 0
4540 PAPER 0:MOVE 639,400:DRAW 639,1,6:DRAW 1,1,6:DRAW 1,400,6
4550 PEN 6:LOCATE 1,23:PRINT STRING$(20,CHR$(143));
4560 PEN 4:LOCATE 2,22:PRINT CHR$(200);CHR$(201);"  ";CHR$(200);CHR$(201);"  ";CHR$(200);CHR$(201);"  ";CHR$(200);CHR$(201);"  ";CHR$(200);CHR$(201)
4570 LOCATE 3,21:PRINT CHR$(202);"   ";CHR$(202);"   ";CHR$(202);"   ";CHR$(202);"   ";CHR$(202)
4580 PEN 7:LOCATE 8,24:PRINT"SCORE";sc
4590 FOR i=1 TO 4:GOSUB 4960:NEXT i
4600 CALL &91FD:i=PEEK (&912D):GOSUB 4960
4610 CALL &9200:i=PEEK (&912D)
4620 IF PEEK(&912E)=1 THEN GOSUB 4680
4630 IF PEEK(&912E)=3 THEN GOSUB 4700:IF std<=0 THEN GOTO 5170
4640 IF PEEK(&912E)=2 THEN str=str+1
4650 GOSUB 4960
4660 IF str>=50 THEN GOTO 5170
4670 GOTO 4610
4680 sc=sc+10:PEN 7:LOCATE 14,24:PRINT sc:RETURN
4690 END
4700 'ATOMPILZ
4710 IF i=1 THEN adr=&9102 ELSE IF i=2 THEN adr=&910B ELSE IF i=3 THEN adr=&9114 ELSE IF i=4 THEN adr=&911D
4720 ko=PEEK(adr)+256*PEEK(adr+1):lo=0
4730 IF ko>31 AND ko<97 AND st(1)=1 THEN lo=2:ko2=8:st(1)=0
4740 IF ko>159 AND ko<225 AND st(2)=1 THEN lo=6:ko2=40:st(2)=0
4750 IF ko>287 AND ko<353 AND st(3)=1 THEN lo=10:ko2=72:st(3)=0
4760 IF ko>415 AND ko<481 AND st(4)=1 THEN lo=14:ko2=104:st(4)=0
4770 IF ko>543 AND ko<609 AND st(5)=1 THEN lo=18:ko2=136:st(5)=0
4780 IF lo=0 THEN RETURN
4790 LOCATE lo,21:PRINT"  ":LOCATE lo,22:PRINT"  "
4800 POKE &9160,ko2:POKE &9161,24:POKE &9162,1:CALL &971A
4810 ho=1:hok=24
4820 FOR o=1 TO 21
4830 POKE &9162,ho:POKE &9161,hok:CALL &971A
4840 ho=ho+1:hok=hok+1
4850 POKE &9162,ho:POKE &9161,hok
4860 CALL &BD19:CALL &971A:SOUND 130,0,30,15,1,0,RND*30+1:NEXT o
4870 FOR o=21 TO 1 STEP-1
4880 POKE &9162,ho:POKE &9161,hok:CALL &971A
4890 ho=ho-1:hok=hok-1
4900 POKE &9162,ho:POKE &9161,hok
4910 CALL &BD19:CALL &971A:SOUND 130,0,30,15,1,0,RND*30+1:NEXT o
4920 POKE &9160,ko2:POKE &9161,24:POKE &9162,1:CALL &971A
4930 std=std-1
4940 LOCATE lo,21:PRINT"  ":LOCATE lo,22:PRINT"  "
4950 RETURN
4960 s=&1:s2=&90
4970 v=INT(RND*5)+1:lr=INT(RND*2)+1
4980 st=INT(RND*3):sr=INT(RND*247)+7:IF st=2 THEN sr=INT(RND*120+8)
4990 ON i GOTO 5010,5050,5090,5130
5000 END
5010 POKE &9107,v:POKE &9108,v
5020 POKE &9106,lr:POKE &9104,s2:POKE &9105,s
5030 POKE &9100,sr:POKE &9102,sr:POKE &9101,st:POKE &9103,st
5040 RETURN
5050 POKE &9110,v:POKE &9111,v
5060 POKE &910F,lr:POKE &910D,s2:POKE &910E,s
5070 POKE &9109,sr:POKE &910B,sr:POKE &910A,st:POKE &910C,st
5080 RETURN
5090 POKE &9119,v:POKE &911A,v
5100 POKE &9118,lr:POKE &9116,s2:POKE &9117,s
5110 POKE &9112,sr:POKE &9114,sr:POKE &9113,st:POKE &9115,st
5120 RETURN
5130 POKE &9122,v:POKE &9123,v
5140 POKE &9121,lr:POKE &911F,s2:POKE &9120,s
5150 POKE &911B,sr:POKE &911D,sr:POKE &911C,st:POKE &911E,st
5160 RETURN
5170 'GAME OVER
5180 ENV 1,=11,1000
5190 x=128:POKE &7FF0,30:POKE &7FF1,20
5200 POKE &7FF2,0:POKE &7FF3,&81
5210 MODE 0:CALL &8000:a=20
5220 GOSUB 5230:GOTO 5300
5230 a1=a:SOUND 129,a,10,12,1:SOUND 130,a*2,10,12,1
5240 a=a+4:IF a>=x THEN x=x-8:RETURN
5250 CALL &BD19
5260 POKE &7FF1,a1:CALL &8000
5270 POKE &7FF1,a:CALL &8000
5280 CALL &BD19
5290 GOTO 5230
5300 POKE &7FF0,40:POKE &7FF1,20
5310 POKE &7FF2,&40:POKE &7FF3,&81
5320 CALL &8000:a=20
5330 GOSUB 5230
5340 POKE &7FF0,50:POKE &7FF1,20
5350 POKE &7FF2,&80:POKE &7FF3,&81
5360 CALL &8000:a=20
5370 GOSUB 5230
5380 POKE &7FF0,60:POKE &7FF1,20
5390 POKE &7FF2,&C0:POKE &7FF3,&81
5400 CALL &8000:a=20
5410 GOSUB 5230
5420 x=124:POKE &7FF0,80:POKE &7FF1,20
5430 POKE &7FF2,0:POKE &7FF3,&82
5440 CALL &8000:a=20
5450 GOSUB 5230
5460 POKE &7FF0,90:POKE &7FF1,20
5470 POKE &7FF2,&40:POKE &7FF3,&82
5480 CALL &8000:a=20
5490 GOSUB 5230
5500 POKE &7FF0,100:POKE &7FF1,20
5510 POKE &7FF2,&C0:POKE &7FF3,&81
5520 CALL &8000:a=20
5530 GOSUB 5230
5540 POKE &7FF0,110:POKE &7FF1,20
5550 POKE &7FF2,&80:POKE &7FF3,&82
5560 CALL &8000:a=20
5570 GOSUB 5230
5580 FOR i=1 TO 12:FOR l=1 TO 25:INK 2,l:INK 1,26-l
5590 SOUND 129,i*l,10,12,1:SOUND 130,i*l*2,10,12,1:NEXT l,i
5600 INK 1,24:INK 2,6
5610 MODE 1:CALL &BB03:PEN 1
5620 IF sc>hsc THEN hsc=sc:LOCATE 1,12:INPUT"Your Name,please";nam$
5630 CLS:LOCATE 15,12:PRINT"HIGH  SCORE":LOCATE 18,13:PRINT hsc
5640 LOCATE 20-LEN(nam$)/2,15:PRINT nam$:PEN 2:LOCATE 15,20
5650 PRINT"LAST SCORE":LOCATE 18,21:PRINT sc
5660 GOSUB 5670:GOTO 4500
5670 ENV 1,1,1,1,1,-1,1:ENV 2,1,1,1,1,-1,1
5680 GOSUB 6030:RESTORE 5790
5690 c=c+1:IF c=17 THEN c=1:READ rd,bd
5700 a=s(bd+c):IF a<>0 THEN st=a:sl=6
5710 READ a:IF JOY(0) AND 16 THEN SOUND 129,0,0:SOUND 130,0,0:SOUND 132,0,0:RETURN
5720 IF a=-1 THEN RESTORE 5800:READ a
5730 IF a<>0 THEN t=a:tl=15:SOUND 129,0,0
5740  IF tl>15 THEN tl=15
5750 SOUND 129,t*2,300,tl,2:SOUND 132,st*4,300,sl+6,1:SOUND 130,st*2,300,sl+8,1
5760 FOR i=1 TO 15:NEXT i
5770 tl=tl+(tl>0):sl=sl+2*(sl>0)
5780 FOR i=1 TO 20:NEXT i:GOTO 5690
5790 DATA 0,0
5800 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
5810 DATA 16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
5820 DATA 0,0,40,0,0,0,0,0,0,0,0,0,0,0,40,0,45,0
5830 DATA 0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
5840 DATA 0,32,68,0,0,0,0,0,0,0,0,0,0,0,68,0,60,0
5850 DATA 16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
5860 DATA 0,0,40,0,0,0,0,0,0,0,0,0,0,0,40,0,45,0
5870 DATA 0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
5880 DATA 0,32,68,0,0,0,0,0,0,0,0,0,0,0,68,0,60,0
5890 DATA 32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
5900 DATA 0,0,60,0,0,0,0,0,0,0,0,0,0,0,40,0,45,0
5910 DATA 16,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
5920 DATA 0,48,45,0,0,0,0,0,0,0,0,0,0,0,68,0,0,0
5930 DATA 32,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
5940 DATA 48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
5950 DATA 48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
5960 DATA 48,0,60,0,0,40,0,0,60,0,0,60,0,60,60,0,60,0
5970 DATA 48,0,60,0,0,40,0,0,60,0,0,60,0,60,60,0,0,0
5980 DATA 0,0,40,0,0,0,0,0,0,0,0,0,0,0,40,0,45,0
5990 DATA 0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
6000 DATA 0,32,68,0,0,0,0,0,0,0,0,0,0,0,68,0,60,0
6010 DATA 32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
6020 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1
6030 '
6040 RESTORE 6060
6050 FOR i=1 TO 64:READ a:s(i)=a:NEXT i
6060 DATA 239,0,201,0,159,0,201,0,179,0,201,0,239,0,319,0
6070 DATA 268,0,213,0,179,0,213,0,201,0,213,0,268,0,358,0
6080 DATA 319,0,268,0,213,0,268,0,239,0,268,0,319,0,426,0
6090 DATA 358,0,301,0,239,0,301,0,268,0,301,0,358,0,478,0
6100 C=16
6110 RETURN