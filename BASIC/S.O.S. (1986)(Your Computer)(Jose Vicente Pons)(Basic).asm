10 ENV 2,5,3,1,3,-2,1,1,0,4,9,-1,1:ENV 4,1,5,1,5,2,3,5,-2,1,10,-1,2:ENV 5,4,1,1,4,1,2,4,1,3,3,6,1
20 ENV 1,5,3,1,1,0,22,15,-1,3:ENT 1,2,1,1,1,-1,1
30 ENV 3,5,3,1,5,0,1,5,-3,2
40 SYMBOL AFTER 33
41 GOSUB 1000
50 IF PEEK(&BDD4)=75 THEN a128=1 ELSE IF PEEK(&BDD4)=71 THEN a664=1
60 RESTORE 70:FOR a=0 TO 15:READ b:INK a,b:NEXT:BORDER 0
70 DATA 0,13,26,12,24,9,18,10,20,1,0,11,4,8,3,6
80 MODE 0:OPENOUT"D":MEMORY &3795:LOAD"!sosexo.spr":CALL &3E00:LOAD"!codes":CALL &8B00
90 DIM n$(8),n(8):RESTORE 410:FOR b=1 TO 8:READ n$(b),n(b):NEXT
100 WHILE INKEY$<>"":WEND:PEN 1:RESTORE 420:READ L1,L2,L3:DIM A%(3,L3,2):FOR A=1 TO L1:READ A%(1,A,1),A%(1,A,2):NEXT:FOR A=1 TO L2:READ A%(2,A,1),A%(2,A,2):NEXT:FOR A=1 TO L3:READ A%(3,A,1):NEXT:GOSUB 640
110 WHILE INKEY$="":WEND
120 MODE 1:PEN 3:LOCATE 4,2:POKE &BDD4,74:POKE &BDD5,&A3:PRINT"S. O. S. ";:POKE &BDD5,19:PRINT"par J.V.Pons":IF a128=1 THEN POKE &BDD4,74 ELSE IF a664=1 THEN POKE &BDD4,71
130 PRINT:PRINT:PEN 1:PRINT" Dans la GALAXIE ANDROMEDE, a des annees":PRINT"lumiere de la terre, gravite EPXILON.   "
140 PRINT"Sur cette planete, les habitants n'ont  ":PRINT"plus de ressources naturelles suite au  ":PRINT"degagement d'OZONE dans leur atmosphere."
150 PRINT:PRINT"  Les savants reunis dans l'urgence pour":PRINT"un sommet historique, deciderent donc de":PRINT"partir conquerir une planete habitable."
160 PEN 3:LOCATE 4,23:PRINT"PRESSEZ UNE TOUCHE POUR CONTINUER"
170 WHILE INKEY$="":WEND
180 CLS:PRINT:PRINT:PRINT:PEN 1:PRINT"   apres avoir etudie les planetes de   ":PRINT"toutes les Galaxies et par vote secret,":PRINT:PRINT"les savants ont choisi la meilleure     ":PRINT"planete habitable,qui est pourtant a une"
190 PRINT"distance considerable, mais elle en vaut":PRINT"vraiment la peine.":PRINT:PRINT"    La planete choisie est:"
200 PEN 3:LOCATE 13,19:POKE &BDD4,74:POKE &BDD5,&A3:PRINT"LA TERRE":POKE &BDD5,19:IF A128=1 THEN POKE &BDD4,75 ELSE IF A664=1 THEN POKE &BDD4,71
210 PEN 3:LOCATE 4,23:PRINT"PRESSEZ UNE TOUCHE POUR CONTINUER"
220 WHILE INKEY$="":WEND
230 CLS:PEN 1:LOCATE 7,5:PRINT" 0.......ARRETER LE JEU":LOCATE 7,7:PRINT" H.......PAUSE":LOCATE 7,9:PRINT" S.......ANNULER LA PAUSE"
240 LOCATE 7,11:PRINT" Z.......GAUCHE":LOCATE 7,13:PRINT" X.......DROITE":LOCATE 7,15:PRINT" SHIFT....FEU"
250 LOCATE 7,17:PRINT" K.......TOUCHES":LOCATE 7,19:PRINT" J.......JOYSTICK"
260 PEN 3:LOCATE 4,23:PRINT"PRESSEZ UNE TOUCHE POUR CONTINUER"
270 A$=INKEY$:IF a$="j"OR a$="J"THEN POKE 33650,74:POKE 33658,75:POKE 32389,76:GOTO 300
280 IF a$="k"OR a$="K"THEN POKE 33650,71:POKE 33658,63:POKE 32389,21:GOTO 300
290 GOTO 270
300 CLS:LOCATE 10,12:PRINT"Vies infinies (o/n) ?
301 v$=UPPER$(INKEY$):IF v$<"N"OR v$>"O"THEN 301
302 IF v$="O"THEN POKE &7C3A,0
303 CALL 31700:sc=PEEK(33818)+256*PEEK(33819):GOSUB 640
310 FOR a=0 TO 50:a$=INKEY$:NEXT
320 MODE 1:FOR a=1 TO 8:IF sc>n(a)THEN GOTO 380
330 NEXT
340 CLS:PEN 3:POKE &BDD4,74:POKE &BDD5,&A3:PRINT" ANNEES LUMIERE":FOR A=1 TO 8:LOCATE 2,4+2*A:PEN A+1
350 PRINT LEFT$(N$(A),10):LOCATE 21,4+A*2:PRINT USING"#####";N(A):NEXT A:POKE &BDD5,19:IF A128=1 THEN POKE &BDD4,75 ELSE IF A664=1 THEN POKE &BDD4,71
360 PEN 1:LOCATE 4,23:PRINT"PRESSEZ UNE TOUCHE POUR CONTINUER"
370 WHILE INKEY$="":WEND
371 GOTO 300
380 IF A<>8 THEN FOR B=7 TO A STEP-1:N$(B+1)=N$(B):N(B+1)=N(B):NEXT
390 n(a)=sc:LOCATE 1,25:PRINT"                      ";:LOCATE 1,25:INPUT"nom: ";n$(a)
400 GOTO 340
410 DATA MERCURE,10000,VENUS,9000,LA TERRE,8000,MARS,7000,JUPITER,6000,SATURNE,5000,URANUS,4000,NEPTUNE,3000
420 DATA 66,31,206
430 DATA 106,6,106,2,95,2,89,2,134,8,89,2,106,2,95,6,106,2,95,2,159,2,142,6,142,2,134,2,119,2,106,6,113,2,106,2,95,2,89,6,179,2,159,2,179,2,95,4,106,4,113,2,106,2,113,4,142,2,80,1,89,1,80,1,95,1,89,1,80,1
440 DATA 89,206,106,2,95,2,89,2,134,8,89,2,106,2,95,6,106,2,95,2,159,2,142,6,142,2,134,2,119,2,106,6,113,2,106,2,95,2,89,6,179,2,159,2,179,2,134,6,225,2,213,2,190,2,213,6,284,4,358,2,426,8
450 DATA 90,6,107,2,96,2,90,2,136,8,90,2,107,2,96,6,107,2,96,2,161,2,143,6,143,2,135,2,120,2,107,6,114,2,107,2,96,2,90,6,181,2,161,2,181,2,136,6,227,2,215,2,192,2,215,6,287,4,361,2,429,8
460 DATA 851,568,426,358,426,568,851,568,426,358,426,568,851,568,426,358,426,568,851,568,426,358,426,568,638,426,319,268,319,426,638,426,319,268,319,426,956,638,478,379,478,638,956,638,478,379,478,638
470 DATA 716,478,358,284,358,478,716,478,402,284,402,278,536,358,284,213,284,358,568,379,319,225,319,379,851,568,426,358,426,568,536,358,268,213,268,358,758,506,379,301,379,506,758,506,379,301,379,506
480 DATA 568,379,319,225,319,379,568,0,0,0,0,0
490 DATA 851,568,426,358,426,568,851,568,426,358,426,568,638,426,319,268,319,426,638,426,319,268,319,426,956,638,478,379,478,638,956,638,478,379,478,638
500 DATA 716,478,358,284,358,478,716,478,402,284,402,278,536,358,284,213,284,358,568,379,319,225,319,379,851,568,426,358,426,568,536,358,268,213,268,358,638,426,319,268,319,426,568,379,319,225,319,379,851,568,426,358,426,568,568,426,568,716,568,716,851
510 DATA 0
520 C1=C1+1:IF C1>L1 THEN C1=1
530 IF C1=1 THEN SOUND 33,A%(1,1,1),A%(1,1,2)*17,0,1,1:GOTO 550
540 DA=A%(1,C1,1):DB=A%(1,C1,2):IF DB>200 THEN DB=DB-200:SOUND 17,DA,DB*17,0,1,1 ELSE SOUND 1,DA,DB*17,0,1,1
550 ON SQ(1)GOSUB 520:RETURN
560 C2=C2+1:IF C2>L2 THEN C2=1
570 DA=A%(2,C2,1):DB=A%(2,C2,2):IF C2=1 THEN SOUND 10,DA,DB*17,0,1,1 ELSE SOUND 2,DA,DB*17,0,1,1
580 ON SQ(2)GOSUB 560
590 RETURN
600 C3=C3+1:IF C3>L3 THEN C3=1
610 IF C3=13 THEN SOUND 12,A%(3,1,1),17,0,3:GOTO 630
620 IF C3=L3 THEN SOUND 4,0,11*17 ELSE SOUND 4,A%(3,C3,1),17,0,3
630 ON SQ(4)GOSUB 600:RETURN
640 RESTORE 420:READ L1,L2,L3:C1=0:C2=0:C3=0:SOUND 135,0:ON SQ(1)GOSUB 520:ON SQ(2)GOSUB 560:ON SQ(4)GOSUB 600
650 RETURN
990 SYMBOL AFTER 33
1000 SYMBOL 33,12,12,24,24,48,0,96
1010 SYMBOL 34,76,108,100
1020 SYMBOL 35,20,20,126,40,124,40,40
1030 SYMBOL 36,16,62,80,124,20,248,16
1040 SYMBOL 37,0,196,200,16,32,76,140
1050 SYMBOL 38,24,52,56,90,204,204,118
1060 SYMBOL 39,24,24,8
1070 SYMBOL 40,12,24,48,32,32,56,24
1080 SYMBOL 41,24,28,4,4,12,24,48
1090 SYMBOL 42,16,84,56,254,56,84,16
1100 SYMBOL 43,0,8,8,124,16,16
1110 SYMBOL 44,0,0,0,0,0,24,24,8
1120 SYMBOL 45,0,0,0,124,124
1130 SYMBOL 46,0,0,0,0,0,0,48,48
1140 SYMBOL 47,6,12,24,48,48,96,192
1150 SYMBOL 48,56,108,202,146,162,194,124
1160 SYMBOL 49,16,24,8,8,8,8,60
1170 SYMBOL 50,120,204,6,124,192,192,126
1180 SYMBOL 51,224,48,24,124,6,6,252
1190 SYMBOL 52,14,26,50,98,254,2,2
1200 SYMBOL 53,254,192,124,6,6,6,252
1210 SYMBOL 54,28,54,96,252,134,198,124
1220 SYMBOL 55,124,196,12,8,8,8,8
1230 SYMBOL 56,56,108,198,124,130,198,124
1240 SYMBOL 57,60,102,194,126,2,198,124
1250 SYMBOL 58,0,12,0,0,0,48
1260 SYMBOL 59,0,24,0,0,0,48,48,32
1270 SYMBOL 60,12,24,48,96,48,24,12
1280 SYMBOL 61,0,0,126,0,252
1290 SYMBOL 62,48,24,12,6,12,24,48
1300 SYMBOL 63,124,198,134,28,16,24,24
1310 SYMBOL 64,254,130,186,170,190,128,252
1320 SYMBOL 65,16,56,40,124,68,198,130
1330 SYMBOL 66,224,144,136,252,132,136,240
1340 SYMBOL 67,6,28,112,192,112,28,6
1350 SYMBOL 68,192,112,92,70,92,112,192
1360 SYMBOL 69,14,56,96,254,96,56,14
1370 SYMBOL 70,14,56,96,252,128,128,192
1380 SYMBOL 71,28,54,96,194,98,50,30
1390 SYMBOL 72,68,198,130,254,130,198,68
1400 SYMBOL 73,52,24,24,24,24,24,44
1410 SYMBOL 74,30,4,4,196,100,60,24
1420 SYMBOL 75,76,88,112,96,112,88,76
1430 SYMBOL 76,24,48,96,64,64,102,60
1440 SYMBOL 77,56,124,84,214,214,130,130
1450 SYMBOL 78,56,40,108,68,198,130,130
1460 SYMBOL 79,56,108,198,198,198,108,56
1470 SYMBOL 80,48,76,70,134,252,192,64
1480 SYMBOL 81,56,108,198,130,198,108,62
1490 SYMBOL 82,56,108,198,254,152,140,134
1500 SYMBOL 83,56,108,198,96,56,12,248
1510 SYMBOL 84,124,214,16,16,16,16,56
1520 SYMBOL 85,68,198,130,130,198,108,56
1530 SYMBOL 86,130,130,198,68,108,56,16
1540 SYMBOL 87,130,146,214,84,124,56,56
1550 SYMBOL 88,198,68,124,56,124,68,198
1560 SYMBOL 89,130,198,108,56,16,16,16
1570 SYMBOL 90,126,204,24,48,96,198,252
1580 SYMBOL 91,56,32,32,32,32,32,56
1590 SYMBOL 92,128,64,32,16,8,4,2
1600 SYMBOL 93,56,8,8,8,8,8,56
1610 SYMBOL 94,28,62,42,8,24,16,16
1620 SYMBOL 95,0,0,0,0,0,0,0,255
1630 SYMBOL 96,16,16,24
1640 SYMBOL 97,0,0,48,120,204,132,254
1650 SYMBOL 98,128,128,240,152,140,134,252
1660 SYMBOL 99,0,0,30,48,96,192,126
1670 SYMBOL 100,2,2,30,50,98,194,126
1680 SYMBOL 101,0,0,28,38,120,194,126
1690 SYMBOL 102,28,54,96,120,64,96,32
1700 SYMBOL 103,0,0,60,102,194,126,6,252
1710 SYMBOL 104,128,128,240,152,140,134,130
1720 SYMBOL 105,24,0,24,12,12,12,24
1730 SYMBOL 106,8,0,8,12,4,4,108,56
1740 SYMBOL 107,64,204,136,240,156,196,68
1750 SYMBOL 108,16,24,8,24,24,28,12
1760 SYMBOL 109,0,0,56,124,214,146,130
1770 SYMBOL 110,0,0,56,108,198,194,134
1780 SYMBOL 111,0,0,16,56,108,198,124
1790 SYMBOL 112,0,0,240,156,134,252,192,64
1800 SYMBOL 113,0,0,124,196,100,60,4,6
1810 SYMBOL 114,0,0,120,204,128,128,128
1820 SYMBOL 115,0,0,62,96,254,12,248
1830 SYMBOL 116,16,48,62,96,96,102,60
1840 SYMBOL 117,0,0,68,198,130,198,124
1850 SYMBOL 118,0,0,66,66,102,60,24
1860 SYMBOL 119,0,0,130,146,214,124,56
1870 SYMBOL 120,0,0,238,56,56,56,238
1880 SYMBOL 121,0,0,130,198,108,56,152,240
1890 SYMBOL 122,0,0,248,12,254,96,62
1900 SYMBOL 123,24,16,16,48,16,16,24
1910 SYMBOL 124,16,16,16,0,16,16,16
1920 SYMBOL 125,48,16,16,24,16,16,48
1930 SYMBOL 126,116,92
1940 SYMBOL 127,204,51,204,51,204,51,204,51
1960 SYMBOL 128,128,128,128,128,128,128,128,128
1970 SYMBOL 129,255
1980 SYMBOL 130,1,1,1,1,1,1,1,1
1990 SYMBOL 131,0,0,0,0,0,0,0,255
2000 SYMBOL 132,255,128,128,128,128,128,128,128
2010 SYMBOL 133,255,1,1,1,1,1,1,1
2020 SYMBOL 134,128,128,128,128,128,128,128,255
2030 SYMBOL 135,1,1,1,1,1,1,1,255
2040 SYMBOL 136,3,7,14,28,56,112,224,192
2050 SYMBOL 137,3,7,229,245,205,26,188,241
2060 RETURN