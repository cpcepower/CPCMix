1000 '**********************
1010 '*                    *
1020 '*      EVASION       *
1030 '*                    *
1040 '*     ECRIT PAR      *
1050 '*                    *
1060 '* MASSOUMIPOUR ALAIN *
1070 '*                    *
1080 '*      C 1987        *
1090 '*                    *
1100 '**********************
1110 '
1120 '
1130 GOSUB 1620 
1140 MODE 1:FOR i=0 TO 3:INK i,0:NEXT:BORDER 0
1150 PEN 1:PAPER 0:CLS
1160 RESTORE
1170 FOR I=1 TO 9:READ X,Y,L:LOCATE X,Y:PRINT STRING$(L,154):NEXT
1180 FOR I=1 TO 7:READ X,Y,L:FOR J=Y TO Y+L:LOCATE X,J:PRINT CHR$(149);:NEXT J,I
1190 FOR i=1 TO 20:READ x,y,c:LOCATE x,y:PRINT CHR$(c);:NEXT
1200 PRINT CHR$(22)CHR$(1)
1210 FOR i=0 TO 2:LOCATE 37,22+i
1220 FOR J=0 TO 2:PRINT CHR$(200+J+I*3);
1230 NEXT J,I
1240 POKE &BE78,255
1250 PEN 3:FOR i=1 TO 4:READ x,y:LOCATE x,y:PRINT CHR$(210):NEXT i
1260 FOR I=1 TO 10
1270 READ X,Y
1280 IF I>7 THEN PEN 2 ELSE PEN 1
1290 LOCATE X,Y:PRINT CHR$(210+I):NEXT 
1300 INK 0,0:INK 1,15:INK 2,18:INK 3,2
1310 LOCATE 2,2:PRINT"VOUS VOYEZ "
1320 PRINT CHR$(22)CHR$(0)
1330 ENT -1,40,3,1,40,-3,1
1340 ENV 1,12,1,10,10,0,10,8,-1,10,2,-1,40
1350 ENT -2,1,40,1
1360 IF PEEK(9999)=2 THEN 1710 ELSE 1370
1370 CALL &4F5D 'LOAD
1380 RESTORE 1700:FOR i=40000 TO 40008:READ a$:POKE i,VAL("&"+a$):NEXT
1390 CALL 40000
1440 |ERA,"EVASION.FAC"
1450 OPENOUT"evasion.fac"
1460 PRINT#9,2
1470 CLOSEOUT
1480 GOTO 1710
1490 DATA 2,1,11,2,3,11,2,17,11,16,1,20,16,15,20
1500 DATA 16,17,20,2,19,38,2,21,38,2,25,38
1510 DATA 1,2,14,13,2,14,15,2,14,36,2,14
1520 DATA 1,20,4,40,20,4,36,22,2
1530 DATA 1,1,150,15,1,150,1,19,150
1540 DATA 1,17,147,15,17,147,1,25,147
1550 DATA 36,1,156,13,1,156,40,19,156
1560 DATA 13,17,153,36,17,153,40,25,153
1570 DATA 1,3,151,15,15,151,1,21,151
1580 DATA 13,3,157,36,15,157,40,21,157
1590 DATA 36,21,158,36,25,155
1600 DATA 38,22,37,23,39,23,38,24
1610 DATA 39,15,38,16,39,16,40,16,38,17,39,17,40,17,38,17,39,17,40,17
1620 MEMORY 19000
1630 LOAD"EDITEUR.BIN"
1640 LOAD"IMPOSSI.BIN"
1650 LOAD"GENE.BIN"
1660 LOAD"GENIE.BIN"
1670 LOAD"PROG.BIN"
1680 LOAD"MORT.BIN"
1690 RETURN
1700 DATA CD,9A,3A,CD,6F,4B,C3,40,9C
1710 LOAD"edite2.bin":CALL 19000 'MODIFIE L'EDITEUR
1720 LOAD"GENE2.BIN"             'NOUVEAU GENE
1730 DATA 119,106,100,89,80,89,100,106,100,106,119,134,119,134,159,100
1740 DATA 119,106,100,89,80,89,100,106,100,106,119,134,119,134,159,150
1750 DATA 179,159,150,179,134,150,159,150,179,159,150,179,119,134,150,159
1760 DATA 179,159,150,179,134,150,159,150,179,159,150,179,134,150,159,40
1770 DATA 956,1073,1204,1276,956,1073,1204,1276
1780 DATA 1432,1276,1204,1276,1432,1276,1204,1276
1790 '
1800 ENV 2,1,10,1,29,0,1,10,-1,13
1810 ENT -2,6,4,2,6,-4,2
1820 ENT -1,1,1,6,1,-1,6
1830 ENV 1,1,12,1,9,0,1,6,-1,5 
1840 DIM a(64),b(16):RESTORE 1730
1850 FOR i=1 TO 64
1860 READ a(i):NEXT
1870 FOR i=1 TO 16
1880 READ b(i):NEXT
1890 PEN 2:LOCATE 2,23:PRINT"      INTRODUISEZ LA FACE (B)     ";
1900 IF PEEK(9999)=2 THEN 1930
1910 LOCATE 3,20:PRINT"LA BOULE DU FANTOME VOUS ABSORBE ..."
1920 LOCATE 16,16:PRINT" ENFIN UNE ISSUE !! "
1930 N=0
1940 N=N+1:IF N=65 THEN N=1
1950 SOUND 1,a(N),-1,0,1,1
1960 IF (N+3)/4=(N+3)\4 THEN SOUND 2,b((N+3)/4),-1,0,2,2:SOUND 4,b((N+3)/4)/2,160,6,,2
1970 IF INKEY(47)=0 THEN 2000
1980 WHILE SQ(1)<>4:WEND    
1990 GOTO 1940
2000 CALL &BCA7:'POKE DATA+1,0
2010 LOCATE 2,23:PRINT" LES DOMAINES DU ROI DES TENEBRES"
2020 WINDOW 40,40,1,1:PEN 0:ON ERROR GOTO 2030:GOTO 2040
2030 WINDOW 1,40,1,25:PEN 2::RESUME 1890
2040 LOAD"prog2.bin":POKE &524A,0:CALL &4FEC:LOAD"zigue.bin
2050 WINDOW 1,40,1,25:PEN 2
2060 DATA CD,9A,3A,CD,87,4B,C3,40,9C
2070 RESTORE 2060:FOR i=40000 TO 40008:READ a$:POKE i,VAL("&"+a$):NEXT
2080 CALL 40000
2090 LOCATE 1,21:PEN 1:PRINT CHR$(149)
2100 LOCATE 40,21:PRINT CHR$(149)
2110 LOCATE 36,25:PRINT CHR$(154)
2120 WINDOW 2,39,20,24:CLS
2130 PEN 3
2140 PRINT"   C'EST AINSI  QUE LE SACRIFICE DE"
2150 PRINT"   XARADUS MIT UN TERME AU REGNE DE"
2160 PRINT"   COMMODORUS,IL PERDIT SA VIE DANS"
2170 PRINT"   L'INCENDIE,ET LE BAGNE DE COMMUS"
2180 PRINT"   DISPARUT AVEC LUI  !!!."
2190 WINDOW 1,40,1,25
2200 LOCATE 2,2:PRINT"  LA  FIN  "
2210 ll=6:note=13+12+7+13+7
2220 ENV 1,2,0,1,1,-2,1,5,0,1:ENV 2,6,0,1,1,15,1,10,-1,2:ENT 1,4,10,1,4,-10,2
2230 GOSUB 2280:GOSUB 2240:EVERY 4 GOSUB 2240 :GOTO 2470
2240 no=PEEK(36000+adr*2)+PEEK(36001+2*adr)*256  
2250 SOUND 2,no,-1,12,1
2260 adr=adr+1:IF adr=256 THEN adr=0
2270 RETURN
2280 DATA 239,239,253,239,213,190,213,239,253,190,190,213,190
2290 DATA 284,319,284,253,239,253,284,319,239,120,120,60   
2300 DATA 358,319,284,319,358,379,284
2310 DATA 426,426,379,379,358,358,319,319,284,284,253,253,239
2320 DATA 119,60,119,239,119,60,119
2330 RESTORE 2280:DIM n(note):FOR i=1 TO note:READ n(i):NEXT
2340 DATA 284,284,319,284,253,239,253,284,319,284,284,319,284
2350 DATA 358,379,358,319,284,319,358,379,426,213,213,106 
2360 DATA 426,379,358,379,426,478,358
2370 DATA 426,426,379,379,358,358,319,319,284,284,253,253,239
2380 DATA 119,60,119,239,119,60,119
2390 DIM ACC(NOTE):RESTORE 2340:FOR I=1 TO NOTE:READ ACC(I):NEXT
2400 DATA 2,1,2,4,3,3,2,1,3,2,1,2,6       
2410 DATA 3,2,4,3,3,2,1,2,3,3,2,4          
2420 DATA 9,3,3,2,1,6,8                   
2430 DATA 5,1,5,1,2,1,2,1,2,1,2,1,1
2440 DATA 1,1,1,1,1,1,1
2450 RESTORE 2400:DIM t(note):FOR i=1 TO note:READ t(i):NEXT 
2460 RETURN
2470 a=a+1:IF a=note+1 THEN a=1
2480 IF A<50 THEN VOL=12 ELSE VOL=62-A
2490 SOUND 1,n(a)/2,t(a)*16,VOL,,1
2500 SOUND 4,ACC(a),t(a)*16,0,2
2510 GOTO 2470