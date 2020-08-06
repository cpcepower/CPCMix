10  REM**********************
20  REM***     MOITIE     ***
30  REM*** Henri  Chauvet ***
40  REM**********************
50  '
60  GOSUB 230:'titre
70  '
80  GOSUB 480:'initialisations
90  '
100  GOSUB 1350:'choix du niveau
110 '
120 GOSUB 1710:'entr{e du nom
130 '
140 GOSUB 1900:'r{citation
150 '
160 GOSUB 3530:'fin d'exercice
170 GOTO 140
180 '
190 REM*************
200 REM*** titre ***
210 REM************* 
220 '
230 MODE 0:CALL &BC02
240 CLG
250 ON SQ(1) GOSUB 370
260 FOR i=1 TO 88
270 x=x+4:y=y+4
280 IF x>639 THEN x=0
290 IF y>360 THEN y=0
300 z=INT(14*RND)
310 PLOT x,y,z:DRAW 636-x,y:DRAW 636-x,357-y:DRAW x,357-y:DRAW x,y 
320 NEXT
330 INK 15,7,8:PEN 15:PAPER 1:PRINT SPACE$(20)+"CHERCHE  LES MOITIES"+SPACE$(20)
340 LOCATE 9,25:PRINT CHR$(164)+" HC";:PAPER 0:PEN 1
350 FOR at=1 TO 5000:NEXT at
360 ENV 1,11,-1.3:ENT -1,5,-16,1,2,39,1:ENV 2,15,1,2
370 READ no1,du1,no2,du2:IF no1=1 THEN 80 
380 SOUND 1,no1,du1*10,10,2:SOUND 2,no2,du2*10,10,2
390 ON SQ(2) GOSUB 370
400 DATA 142,3,179,3,134,1,159,1,119,4,142,4,127,4,150,4,119,4,142,4,106,4,134,4,119,4,142,4,142,8,179,8,179,3,284,3,284,1,159,1,239,4,142,4,253,4,150,4,239,4,142,4,213,4,134,4,239,4,142,4,284,8,179,8
410 DATA 190,3,239,3,179,1,213,1,159,4,190,4,239,4,190,4,119,4,190,4,0,.1,0,.1,119,4,190,4,179,16,284,16,1,1,1,1
420 RETURN
430 '
440 REM***********************
450 REM*** initialisations ***
460 REM*********************** 
470 '
480 DIM score(30),champ$(30)
490 MODE 1:WINDOW#1,1,40,1,3:WINDOW#2,10,30,9,16:PAPER#2,3:PEN#2,2
500 RANDOMIZE TIME
510 'chiffres et point
520 des$=CHR$(8)+CHR$(10):haut$=CHR$(11)
530 SYMBOL AFTER 200
540 SYMBOL 200,124,124,198,198,206,206,214,214
550 SYMBOL 201,230,230,198,198,124,124
560 c$(0)=CHR$(200)+des$+CHR$(201)+haut$
570 SYMBOL 202,24,24,56,56,24,24,24,24
580 SYMBOL 203,24,24,24,24,126,126
590 c$(1)=CHR$(202)+des$+CHR$(203)+haut$
600 SYMBOL 204,60,60,102,102,6,6,60,60
610 SYMBOL 205,96,96,102,102,126,126
620 c$(2)=CHR$(204)+des$+CHR$(205)+haut$
630 SYMBOL 206,60,60,102,102,6,6,28,28
640 SYMBOL 207,6,6,102,102,60,60
650 c$(3)=CHR$(206)+des$+CHR$(207)+haut$
660 SYMBOL 208,24,24,56,56,88,88,152,152
670 SYMBOL 209,254,254,24,24,60,60
680 c$(4)=CHR$(208)+des$+CHR$(209)+haut$
690 SYMBOL 210,126,126,98,98,96,96,124,60
700 SYMBOL 211,6,6,102,102,60,60
710 c$(5)=CHR$(210)+des$+CHR$(211)+haut$
720 SYMBOL 212,60,60,102,102,96,96,124,124
730 SYMBOL 213,102,102,102,102,60,60
740 c$(6)=CHR$(212)+des$+CHR$(213)+haut$
750 SYMBOL 214,126,126,70,70,6,6,12,12
760 SYMBOL 215,24,24,24,24,24,24
770 c$(7)=CHR$(214)+des$+CHR$(215)+haut$
780 SYMBOL 216,60,60,102,102,102,102,60,60
790 SYMBOL 217,102,102,102,102,60,60
800 c$(8)=CHR$(216)+des$+CHR$(217)+haut$
810 SYMBOL 218,60,60,102,102,102,102,62,62
820 SYMBOL 219,6,6,102,102,60,60
830 c$(9)=CHR$(218)+des$+CHR$(219)+haut$
840 SYMBOL 220,0,0,0,24,24,24
850 c$(10)=CHR$(32)+des$+CHR$(220)+haut$:'point
860 ef$=CHR$(32)+des$+CHR$(32)+haut$:'efface
870 'chatjuste
880 SYMBOL 221,0,0,0,0,0,227,255,255
890 SYMBOL 222,0,0,0,1,3,248,255,255
900 SYMBOL 223,0,15,127,255,255,31,223,223
910 SYMBOL 224,0,128,240,255,255,255,255,31
920 SYMBOL 225,0,0,0,0,192,224,224,240
930 SYMBOL 226,127,127,63,60,63,63,15,1
940 SYMBOL 227,255,255,255,230,255,190,92,240
950 SYMBOL 228,158,61,123,251,253,252,247,247
960 SYMBOL 229,127,255,255,255,255,255,31,207
970 SYMBOL 230,255,255,255,255,249,249,249,240
980 SYMBOL 231,0,192,224,224,224,240,240,240
990 SYMBOL 232,30,63,63,31
1000 SYMBOL 233,13,251,239,159,255,252
1010 SYMBOL 234,247,247,240,207,7
1020 SYMBOL 235,239,206,31,255,255,1,7,3
1030 SYMBOL 236,193,1,1,7,63,255,255,240
1040 SYMBOL 237,240,240,224,224,224,192
1050 chatj$(1)=CHR$(221)+CHR$(222)+CHR$(223)+CHR$(224)+CHR$(225):chatj$(2)=CHR$(226)+CHR$(227)+CHR$(228)+CHR$(229)+CHR$(230)+CHR$(231):chatj$(3)=CHR$(232)+CHR$(233)+CHR$(234)+CHR$(235)+CHR$(236)+CHR$(237)
1060 'chatfaux
1070 SYMBOL 238,24,24,28,56,24,60,189,126
1080 SYMBOL 239,60,126,60,126,60,255,126,60
1090 SYMBOL 240,0,0,0,0,1,8,7,47
1100 SYMBOL 241,255,60,126,60,36,255,255,255
1110 SYMBOL 242,0,0,0,0,128,16,224,244
1120 SYMBOL 243,0,95,47,55,119,55,59,91
1130 SYMBOL 244,126,129,255,126,153,255,231,195
1140 SYMBOL 245,0,250,244,236,238,236,220,218
1150 SYMBOL 246,27,13,30,15,15,31,31,62
1160 SYMBOL 247,165,195,126,195,255,137,66
1170 SYMBOL 248,216,176,120,240,240,248,248,124
1180 SYMBOL 249,31,60,60,248,120,120,248,172
1190 SYMBOL 250,248,60,60,31,30,30,31,53
1200 chatf$(1)=CHR$(32)+CHR$(238)+CHR$(32):chatf$(2)=CHR$(32)+CHR$(239)+CHR$(32):chatf$(3)=CHR$(240)+CHR$(241)+CHR$(242):chatf$(4)=CHR$(243)+CHR$(244)+CHR$(245):chatf$(5)=CHR$(246)+CHR$(247)+CHR$(248):chatf$(6)=CHR$(249)+CHR$(32)+CHR$(250)
1210 SYMBOL 251,24,36,60,102,126,96,60:'e accent circonflexe
1220 'curseur
1230 curtr$=CHR$(22)+CHR$(1)+CHR$(95)+CHR$(22)+CHR$(0)
1240 '
1250 ON ERROR GOTO 5210
1260 PRINT CHR$(21)
1270 nbchamp=0:OPENIN"champmoi":WHILE NOT EOF:nbchamp=nbchamp+1:INPUT#9,champ$(nbchamp),score(nbchamp):WEND:CLOSEIN:PRINT CHR$(6)    
1280 PRINT CHR$(6)
1290 RETURN
1300 '
1310 REM***********************
1320 REM*** choix du niveau ***
1330 REM***********************
1340 '
1350 PAPER 0:CLS:INK 3,17,16
1360 PEN 1:LOCATE 5,2:PRINT"Il y a 7 niveaux de difficult{.":LOCATE 2,4:PRINT"Tu pourras choisir celui que tu d{sires."
1370 LOCATE 2,8:PRINT"Si tu r{ussis parfaitement au niveau 7,";:PRINT"   tu pourras disputer un championnat."
1380 PEN 3:LOCATE 15,14:PRINT"ATTENTION":PLOT 220,174,3:DRAWR 150,0:DRAWR 0,20:DRAWR -150,0:DRAWR 0,-20
1390 PEN 2:LOCATE 1,16:PRINT"Utilise les chiffres @ droite du clavier          et non ceux du haut."
1400 LOCATE 6,19:PRINT"Pour {crire un nombre d{cimal,":LOCATE 2,20:PRINT"utilise le point et non pas la virgule":LOCATE 7,21:PRINT"(comme sur une calculette)." 
1410 GOSUB 5130
1420 CLS:INK 3,17
1430 PEN 2:LOCATE 1,1:PRINT"1 -";:PEN 1:PRINT" nombres d'un chiffre"
1440 PEN 3:PRINT"    exemples : 4,7,8..."
1450 PEN 2:PRINT:PRINT"2 -";:PEN 1:PRINT" 0 au chiffre des unit{s"
1460 PEN 3:PRINT"    exemples : 10,60,70..."
1470 PEN 2:PRINT:PRINT"3 -";:PEN 1:PRINT" dizaines paires, unit{s paires"
1480 PEN 3:PRINT"    exemples : 24,38,46..."
1490 PEN 2:PRINT:PRINT"4 -";:PEN 1:PRINT" dizaines paires, unit{s impaires""
1500 PEN 3:PRINT"    exemples : 23,49,87..."
1510 PEN 2:PRINT:PRINT"5 -";:PEN 1:PRINT" dizaines impaires, unit{s paires"
1520 PEN 3:PRINT"    exemples : 36,54,76..."
1530 PEN 2:PRINT:PRINT"6 -";:PEN 1:PRINT" dizaines impaires, unit{s impaires"
1540 PEN 3:PRINT"    exemples : 37,55,93..."
1550 PEN 2:PRINT:PRINT"7 -";:PEN 1:PRINT" nombres quelconques de 1 @ 99"
1560 PEN 3:PRINT"    exemples : 3,20,45,78..."
1570 PEN 1:LOCATE 1,25:PRINT"Quel niveau choisis-tu ? ";:PEN 2:PRINT curtr$
1580 p=0
1590 CLEAR INPUT
1600 n$=INKEY$:p=p+1:IF n$="" AND p MOD 20<4 THEN LOCATE 26,25:PRINT" ":GOTO 1600:ELSE IF n$="" THEN LOCATE 26,25:PRINT curtr$:GOTO 1600
1610 IF n$="" THEN LOCATE 26,25:PRINT curtr$;:GOTO 1600
1620 IF n$="" OR INSTR("1234567",n$)=0 THEN PRINT CHR$(7);:GOTO 1600
1630 n=VAL(n$):LOCATE 25,25:PRINT n;:FOR at=1 TO 1000:NEXT at
1640 CLS
1650 RETURN
1660 '
1670 REM*********************
1680 REM*** entr{e du nom ***
1690 REM*********************
1700 '
1710 PEN 1:LOCATE 1,12:PRINT"Ecris ton pr{nom et ton nom:":PEN 2:LOCATE 1,14:CLEAR INPUT:INPUT"",nm$:IF nm$="" THEN 1710
1720 nm$=LOWER$(nm$)
1730 FOR i=1 TO LEN(nm$)
1740 IF i=1 OR maj=1 THEN maj=0:MID$(nm$,i,1)=UPPER$(MID$(nm$,i,1)):IF MID$(nm$,i,1)="{" THEN MID$(nm$,i,1)="E"
1750 IF MID$(nm$,i,1)="-" OR MID$(nm$,i,1)=" " THEN maj=1
1760 IF i<>1 THEN IF (MID$(nm$,i,1)=" " AND MID$(nm$,i-1,1)=" ") THEN MID$(nm$,i,1)=CHR$(8)
1770 nom$=nom$+MID$(nm$,i,1)
1780 NEXT
1790 FOR i=1 TO LEN(nom$) 
1800 IF MID$(nom$,i,1)=" " THEN i=LEN(nom$) ELSE prenom$=prenom$+MID$(nom$,i,1)
1810 NEXT
1820 PEN 1:LOCATE 1,17:PRINT"Bon courage, ";prenom$;"...":PRINT:PRINT"   et ne LE r{veille pas !"
1830 FOR at=1 TO 2500:NEXT at
1840 RETURN
1850 '
1860 REM******************   
1870 REM*** recitation ***
1880 REM******************
1890 '
1900 CLS:INK 0,13:BORDER 7:INK 1,25:INK 2,20:INK 3,15:PEN 1
1910 e=0:r=0:j=0:sc=0
1920 IF n=1 OR n=2 THEN nq=9 ELSE nq=10
1930 FOR i=1 TO nq
1940 fl=0
1950 ON n GOSUB 4400,4430,4460,4510,4560,4610,4660,4660
1960 IF i=1 THEN 2000
1970 FOR ci=1 TO i-1
1980 IF x(ci)=x(i) THEN 1950
1990 NEXT ci
2000 x$=STR$(x(i)):dx$="":FOR k=2 TO LEN(x$):dx$=dx$+c$(VAL(MID$(x$,k,1))):NEXT
2010 CLS#2
2020 IF i=nq THEN ques$="question" ELSE ques$="questions"
2030 LOCATE#1,9,2:PRINT#1,CHR$(24);"Il te reste";nq-i+1;ques$;CHR$(24);CHR$(18)
2040 IF n=8 THEN LOCATE 14,5:PRINT CHR$(24);" CHAMPIONNAT ";CHR$(24) ELSE LOCATE 16,5:PRINT CHR$(24);" NIVEAU";n;CHR$(24)
2050 FOR chat=1 TO 3:LOCATE 18,21+chat:PRINT chatj$(chat):NEXT
2060 LOCATE #2,2,3:PRINT#2,"moiti{ de":LOCATE#2,13,2:PRINT#2,dx$
2070 LOCATE#2,8,6:PRINT#2,"---> ":x=13:y=6:dh=1:GOSUB 4730:dh=0
2080 IF rep$="troplent" THEN er=er+1:x(er)=x(i):GOTO 2100
2090 IF VAL(rep$)=x(i)/2 THEN GOSUB 2130 ELSE GOSUB 2160
2100 NEXT i
2110 RETURN
2120 'r{ponse juste
2130 j=j+1:LOCATE 18,19:PRINT"BRAVO!":FOR at=1 TO 1000:NEXT at:LOCATE 18,19:PRINT"      "
2140 RETURN
2150 'r{ponse fausse
2160 LOCATE 17,18:PRINT"ERREUR...":FOR chat=1 TO 3:LOCATE 18,21+chat:PRINT "      ":NEXT:FOR chat=1 TO 6:LOCATE 19,19+chat:PRINT chatf$(chat):NEXT:FOR ch=15 TO 1 STEP-1:SOUND 1,3000,10,ch,,,31:NEXT ch:FOR at=1 TO 1000:NEXT at
2170 CLS:INK 0,10:BORDER 10:INK 1,17:INK 2,18:INK 3,16
2180 er=er+1:x(er)=x(i)
2185 flager=1
2190 ON n GOSUB 2740,2900,2230,3240,2230,3240,3430,3430
2195 flager=0
2200 GOSUB 5130:BORDER 7:INK 1,25:INK 2,20:INK 3,15:PEN 1
2210 RETURN
2220 '
2230 LOCATE 10,1:PRINT CHR$(24);">>> MOITIE DE ";x(i);"<<<";CHR$(24):PEN 1:PRINT:PRINT:PRINT"R{fl{chis bien :"
2240 d=10*INT(x(i)/10):u=x(i)-d
2250 PRINT:PRINT"Tu sais que  ";x(i);"=";d;"+";u
2260 f=0:PEN 3:PRINT:PRINT:PRINT"Donne la moiti{ de";d;"---> "
2270 PEN 2:x=28-(d=10):y=9:GOSUB 4730
2280 md=VAL(r$)
2290 IF md<>d/2 THEN 2300 ELSE 2380
2300 f=f+1:IF f<2 THEN PEN 1:LOCATE 1,y+1:PRINT"Faux, recompte.";CHR$(18):FOR at=1 TO 1500:NEXT at:LOCATE 28,y:PRINT CHR$(18):PRINT CHR$(18):GOTO 2270
2310 PEN 1:LOCATE 1,y+1:PRINT"Non, c'est";d/2;CHR$(18)
2320 FOR at=1 TO 1000:NEXT
2330 FOR rep=1 TO 5
2340 IF rep MOD 2=0 THEN PEN 0 ELSE PEN 2
2350 LOCATE 27,y:PRINT d/2;"   ":FOR at=1 TO 200:NEXT 
2360 NEXT 
2370 GOTO 2390
2380 PEN 1:LOCATE 1,y+1:PRINT"BIEN !";CHR$(18)
2390 f=0:PEN 3:LOCATE 1,12:PRINT"Donne la moiti{ de";u;"----> "
2400 PEN 2:x=29:y=12:GOSUB 4730
2410 mu=VAL(r$)
2420 IF mu<>u/2 THEN 2430 ELSE 2510
2430 f=f+1:IF f<2 THEN PEN 1:LOCATE 1,y+1:PRINT"Faux, recompte.";CHR$(18):FOR at=1 TO 1500:NEXT at:LOCATE 29,y:PRINT CHR$(18):PRINT CHR$(18):GOTO 2400
2440 PEN 1:LOCATE 1,y+1:PRINT"Non, c'est";u/2;CHR$(18)
2450 FOR at=1 TO 1000:NEXT
2460 FOR rep=1 TO 5
2470 IF rep MOD 2=0 THEN PEN 0 ELSE PEN 2
2480 LOCATE 28,y:PRINT u/2;"   ":FOR at=1 TO 200:NEXT
2490 NEXT   
2500 GOTO 2520
2510 PEN 1:LOCATE 1,y+1:PRINT"BIEN !";CHR$(18) 
2520 FOR at=1 TO 1500:NEXT:CLS:LOCATE 10,1:PRINT CHR$(24);">>> MOITIE DE";x(i);"<<<";CHR$(24)
2530 PEN 1:PRINT:PRINT"La moiti{ de";x(i);"est {gale @"
2540 IF d/2=5 THEN esp$="   " ELSE esp$="  "
2550 PRINT:PRINT"la moiti{ de";d;"--------->";esp$;:PEN 2:PRINT d/2
2560 PEN 1:PRINT"plus la moiti{ de";u;
2570 IF u<10 THEN PRINT"-";
2580 PRINT"---->";:PEN 2:PRINT" + ";u/2
2590 LOCATE 28,8:PRINT"----";:IF x(i) MOD 2<>0 THEN PRINT"--"
2600 f=0:PEN 3:LOCATE 1,9:PRINT"Cela fait combien ? ----->"
2610 PEN 2:x=30-(d=10):y=9:GOSUB 4730
2620 r=VAL(r$):IF r<>x(i)/2 THEN 2630 ELSE 2710
2630 f=f+1:IF f<2 THEN PEN 1:PRINT"Faux, recompte.":FOR at=1 TO 1500:NEXT at:LOCATE 30,y:PRINT CHR$(18):PRINT CHR$(18):GOTO 2610
2640 PEN 1:LOCATE 1,y+1:PRINT"Non, c'est";x(i)/2;CHR$(18)
2650 FOR at=1 TO 1000:NEXT
2660 FOR rep=1 TO 5
2670 IF rep MOD 2=0 THEN PEN 0 ELSE PEN 2
2680 LOCATE 29-(d=10),y:PRINT x(i)/2;"   ":FOR at=1 TO 200:NEXT 
2690 NEXT
2700 GOTO 2720
2710 PEN 1:LOCATE 1,y+1:PRINT"BIEN !"; 
2720 IF fl=1 THEN RETURN
2730 '
2740 FOR at=1 TO 1000:NEXT:CLS
2750 PEN 1:LOCATE 11,10:PRINT"Retiens bien ceci :"
2760 PEN 2:LOCATE 1,8:PRINT STRING$(40,127):LOCATE 1,16:PRINT STRING$(40,127):FOR af=9 TO 15:LOCATE 1,af:PRINT CHR$(127):LOCATE 40,af:PRINT CHR$(127):NEXT:FOR at=1 TO 1500:NEXT 
2770 PEN 3:LOCATE 9,14:FOR af=1 TO 13:PRINT MID$("la moiti{ de",af,1);:IF MID$("la moiti{ de",af,1)<>" " THEN SOUND 1,40,10,5
2780 FOR at=1 TO 120:NEXT
2790 NEXT
2800 PEN 2:FOR af=1 TO LEN(STR$(x(i))):PRINT MID$(STR$(x(i)),af,1);:IF MID$(STR$(x(i)),af,1)<>" " THEN SOUND 1,40,15,5
2810 FOR at=1 TO 200:NEXT
2820 NEXT
2830 PEN 3:FOR af=1 TO 5:PRINT MID$(" est",af,1);:IF MID$(" est",af,1)<>" " THEN SOUND 1,40,10,5
2840 FOR at=1 TO 120:NEXT
2850 NEXT
2860 PEN 2:FOR af=1 TO LEN(STR$(x(i)/2)):PRINT MID$(STR$(x(i)/2),af,1);:IF MID$(STR$(x(i)/2),af,1)<>" " THEN SOUND 1,40,15,5
2870 FOR at=1 TO 200:NEXT:NEXT
2880 RETURN
2890 '
2900 IF x(i)=10 AND VAL(x$)<>11 THEN 3220
2910 CLS:LOCATE 10,1:PRINT CHR$(24);">>> MOITIE DE";x(i);"<<<";CHR$(24)
2920 IF VAL(x$)=11 THEN f=0:LOCATE 1,13:PRINT"Tu dois trouver la moiti{ de 10.":PRINT:GOTO 3090
2930 PEN 3:LOCATE 11,4:PRINT"Comme tu le sais,":LOCATE 13,5:PRINT x(i);"=";x(i)/10;"* 10"
2940 LOCATE 18,7:PRINT"donc":PEN 1:LOCATE 4,8:PRINT"(moiti{ de";x(i);CHR$(8);") = (moit. de";x(i)/10;CHR$(8);") * 10"
2950 f=0:PEN 3:PRINT:PRINT:PRINT"Donne la moiti{ de";x(i)/10;"---> "
2960 PEN 2:x=28:y=11:GOSUB 4730 
2970 md=VAL(r$) 
2980 IF md<>x(i)/20 THEN 2990 ELSE 3070
2990 f=f+1:IF f<2 THEN PEN 1:LOCATE 1,y+1:PRINT"Faux, recompte.";CHR$(18):FOR at=1 TO 1500:NEXT at:LOCATE 28,y:PRINT CHR$(18):PRINT CHR$(18):GOTO 2960
3000 PEN 1:LOCATE 1,y+1:PRINT"Non, c'est";x(i)/20;CHR$(18)
3010 FOR at=1 TO 1000:NEXT
3020 FOR rep=1 TO 5
3030 IF rep MOD 2=0 THEN PEN 0 ELSE PEN 2
3040 LOCATE 27,y:PRINT x(i)/20;"   ":FOR at=1 TO 200:NEXT
3050 NEXT
3060 GOTO 3080
3070 PEN 1:LOCATE 1,y+1:PRINT"BIEN !";CHR$(18)
3080 f=0:LOCATE 1,14:PRINT"Maintenant, il faut calculer";x(i)/20;"* 10"
3090 PEN 3:PRINT"Cela fait combien ?"
3100 PEN 2:x=21:y=15:GOSUB 4730
3110 r=VAL(r$):IF r<>x(i)/2 THEN 3120 ELSE 3200
3120 f=f+1:IF f<2 THEN PEN 1:PRINT"Faux, recompte.":FOR at=1 TO 1500:NEXT at:LOCATE 20,y:PRINT CHR$(18):PRINT CHR$(18):GOTO 3100
3130 PEN 1:LOCATE 1,y+1:PRINT"Non, c'est";x(i)/2;CHR$(18)
3140 FOR at=1 TO 1000:NEXT
3150 FOR rep=1 TO 5
3160 IF rep MOD 2=0 THEN PEN 0 ELSE PEN 2
3170 LOCATE 20,y:PRINT x(i)/2;"   ":FOR at=1 TO 200:NEXT
3180 NEXT
3190 GOTO 3220
3200 PEN 1:LOCATE 1,y+1:PRINT"BIEN !";
3210 IF fl=1 THEN RETURN
3220 GOSUB 2740:RETURN
3230 '
3240 LOCATE 10,1:PRINT CHR$(24);">>> MOITIE DE";x(i);"<<<";CHR$(24):fl=1:PEN 3:LOCATE 11,6:PRINT"Comme tu le sais,":PEN 1:LOCATE 13,8:PRINT x(i);"=";x(i)-1;"+ 1":PEN 3
3250 LOCATE 13,10:PRINT"Il faut  donc":LOCATE 6,12:PRINT"que tu trouves la moiti{ de";:PEN 1:PRINT x(i)-1:PEN 3:LOCATE 19,13:PRINT"et":LOCATE 6,14:PRINT"que tu ajoutes la moiti{ de ";:PEN 1:PRINT"1":GOSUB 5130
3260 x(i)=x(i)-1:IF x(i) MOD 10=0 THEN GOSUB 2900:ELSE CLS:LOCATE 10,1:PRINT CHR$(24);">>> MOITIE DE";x(i);"<<<";CHR$(24):PRINT:PRINT:PRINT:GOSUB 2240  
3270 FOR at=1 TO 1000:NEXT at:CLS:LOCATE 10,1:PRINT CHR$(24);">>> MOITIE DE";x(i)+1;"<<<";CHR$(24):PEN 1:PRINT:PRINT:PRINT"La moiti{ de";x(i);"=";x(i)/2;CHR$(8);", donc"
3280 PRINT:PRINT"la moiti{ de";x(i)+1;"=";x(i)/2;"+ 0.5":LOCATE 23,7:PRINT"(la moiti{ de 1)"
3290 PEN 3:LOCATE 1,10:PRINT"Calcule ";x(i)/2;"+ 0.5  --->":PEN 2:x=25:y=10:GOSUB 4730
3300 x(i)=x(i)+1:r=VAL(r$):IF r=x(i)/2 THEN 3380
3310 PRINT"Non, c'est";x(i)/2;CHR$(18)
3320 FOR at=1 TO 1000:NEXT at
3330 FOR rep=1 TO 5
3340 IF rep MOD 2=0 THEN PEN 0 ELSE PEN 2
3350 LOCATE 24,y:PRINT x(i)/2:FOR at=1 TO 200:NEXT at
3360 NEXT rep
3370 GOTO 3390
3380 PEN 1:LOCATE 1,y+1:PRINT"BIEN !";CHR$(18)
3390 FOR at=1 TO 1500:NEXT at:CLS 
3400 GOSUB 2740
3410 RETURN
3420 '
3430 IF x(i)<10 THEN GOSUB 2740:RETURN
3440 d=10*INT(x(i)/10):u=x(i)-d
3450 IF u=0 THEN GOSUB 2900:RETURN
3460 IF u MOD 2=0 THEN GOSUB 2230:RETURN
3470 GOSUB 3240:RETURN
3480 '
3490 REM**********************
3500 REM*** fin d'exercice ***
3510 REM********************** 
3520 '
3530 CLS:INK 0,0:INK 1,26:INK 2,14:INK 3,18
3540 IF n<8 THEN 3690
3550 IF j=10 THEN 3580
3560 PEN 1: LOCATE 3,4:PRINT"Tu n'as pas r{ussi aux 10 questions.":PEN 2:PRINT:PRINT"Ce n'est pas si facile qu'on le croit...":PRINT"Mais c'est d{j@ tr}s bien d'avoir acc{d{":PRINT"             au championnat."
3570 PEN 3:PRINT:PRINT:PRINT"     Une autre fois certainement...":GOTO 3670
3580 LOCATE 10,5:PRINT"Ton score est de";sc:trouve=0
3590 FOR i=1 TO nbchamp
3600 IF nom$=champ$(i) THEN trouve=i:i=nbchamp
3610 NEXT i
3620 IF trouve=0 THEN PEN 2:LOCATE 8-LEN(prenom$)/2,6:PRINT"Bravo, ";prenom$;", tu as r{ussi !":LOCATE 1,9:PRINT"Je t'inscris dans la liste des champions":nbchamp=nbchamp+1:champ$(nbchamp)=nom$:score(nbchamp)=sc:GOTO 3660 
3630 IF score(trouve)=sc THEN PEN 2:LOCATE 10,9:PRINT"Tu as {gal{ ton record.":LOCATE 13,11:PRINT"FELICITATIONS !!!":GOTO 3670 
3640 IF score(trouve)>sc THEN PEN 2:LOCATE 8,9:PRINT"Ton record n'est pas battu.":LOCATE 17,11:PRINT"Dommage !":LOCATE 7,13:PRINT"C'est tout de m";CHR$(251);"me tr}s bien":LOCATE 7,14:PRINT"d'";CHR$(251);"tre arriv{ @ ce niveau...":GOTO 3670 
3650 IF score(trouve)<sc THEN PEN 2:LOCATE 9,9:PRINT"Tu as battu ton record.":LOCATE 14,11:PRINT"FELICITATIONS !!!":LOCATE 7,13:PRINT"Je l'inscris tout de suite.":score(trouve)=sc   
3660 OPENOUT"champmoi":FOR i=1 TO nbchamp:WRITE#9,champ$(i),score(i):NEXT i:CLOSEOUT
3670 GOSUB 5130
3680 GOTO 3750
3690 PEN 1:LOCATE 12,10:PRINT"Sur";nq;"questions,"
3700 LOCATE 5,12:PRINT"Tu as donn{";j;"r{ponses exactes."
3710 PEN 2:IF j=nq THEN LOCATE 1,17:PRINT"Bravo ! Tu ne pouvais pas faire mieux...
3720 '
3730 ' fin de partie
3740 '
3750 PEN 3:LOCATE 5,20:PRINT"Veux-tu recommencer (O/N) ?";:PEN 2:PRINT" _"
3760 suit$=INKEY$:IF suit$="" THEN 3760
3770 IF INSTR("ONon",suit$)=0 THEN LOCATE 1,1:PRINT CHR$(7):GOTO 3760
3780 IF UPPER$(suit$)="O" THEN suit$="OUI" ELSE suit$="NON"
3790 LOCATE 33,20:PRINT suit$
3800 FOR at=1 TO 1500:NEXT at:CLS
3810 IF suit$="OUI" THEN 4100
3820 IF er=0 THEN LOCATE 1,5:PRINT"Comme tu veux...":FOR at=1 TO 1500:NEXT at:GOTO 4050
3830 LOCATE 1,5:PRINT"Comme tu veux, ";prenom$;"."
3840 IF er=1 THEN er$="ton erreur." ELSE er$="tes erreurs."
3850 PEN 1:LOCATE 5,7:PRINT"Mais avant que tu ne t'en ailles,"
3860 PRINT"je voudrais te faire revoir ";er$
3870 GOSUB 5130
3880 FOR e=1 TO er
3890 CLS
3900 PEN 1:LOCATE 1,6:PRINT"Quelle est la moiti{ de";x(e);"? "
3910 PEN 3:LOCATE 30,6:LINE INPUT "",mx$:mx=VAL(mx$):IF mx=0 THEN PRINT CHR$(7):LOCATE 30,6:PRINT CHR$(18):GOTO 3910
3920 IF mx<>x(e)/2 THEN 3930 ELSE 4030
3930 INK 2,15,18:SPEED INK 10,10:PEN 2:LOCATE 18,12:PRINT"FAUX":PEN 1:PRINT:PRINT"      Je sens que je vais {clater.":PRINT:PRINT"              SAUVE-TOI !!!":FOR at=1 TO 1000:NEXT at
3940 FOR son=800 TO 100 STEP-5:SOUND 1,son,2,15:NEXT son
3950 SPEED INK 3,3:BORDER 7,11:ENV 1,15,-1,15:SOUND 1,0,400,15,1,0,30:OUT 255,8:OUT 256,1
3960 FOR inn=1 TO 6:FOR in=1 TO 26:INK 0,in:BORDER in:FOR at=1 TO 3:NEXT at:NEXT in:NEXT inn
3970 OUT 256,0:BORDER 0:INK 0,0:INK 2,14
3980 CLS:PEN 1:LOCATE 2,5:PRINT"J'esp}re que tu n'as pas eu trop peur.":PRINT:PRINT:PRINT"  En tout cas, tu dois retenir que"
3990 SPEED INK 5,100:INK 2,25,7:INK 3,7,25
4000 PEN 2:LOCATE 8,16:PRINT "LA MOITIE DE";:PEN 3:PRINT x(e);:PEN 2:PRINT "C'EST";:PEN 3:PRINT x(e)/2
4010 FOR at=1 TO 50:NEXT
4020 GOSUB 5130:INK 2,14:INK 3,18:BORDER 7:GOTO 4040
4030 PEN 2:PRINT:PRINT"Bien":FOR at=1 TO 1500:NEXT at
4040 NEXT e
4050 MODE 0:SPEED INK 25,25:INK 2,25,7:INK 3,7,25:PEN 2:LOCATE 6,10:PRINT"Au revoir":PEN 3:LOCATE (21-LEN(prenom$))/2,16:PRINT prenom$
4060 FOR at=1 TO 5000:NEXT at
4070 MODE 1:PAPER 0:PEN 1:BORDER 1:CALL &BC02
4080 END
4090 '
4100 PEN 2:er=0
4110 IF n<8 THEN 4140
4120 IF j>7 THEN LOCATE 15-LEN(prenom$)/2,5:PRINT"D'accord, ";prenom$;",":PRINT:PRINT"    tu peux reprendre le championnat.":GOSUB 5130:RETURN
4130 GOTO 4200
4140 IF j=nq THEN 4230
4150 IF n=1 OR (j=nq-1 AND n<4) OR (j>8 AND n>3) THEN 4170 ELSE 4200
4160 '
4170 LOCATE 1,5:PRINT"D'accord, ";prenom$;",":PRINT:PRINT"mais tu restes au niveau";n
4180 GOSUB 5130:RETURN
4190 '
4200 n=n-1:LOCATE 1,5:PRINT"D'accord, ";prenom$;",":PRINT:PRINT"Mais cette fois tu joues au niveau";n
4210 GOSUB 5130:RETURN
4220 '
4230 n=n+1:IF n=8 THEN 4250
4240 LOCATE 1,5:PRINT"D'accord, ";prenom$;".":PRINT:PRINT"Mais cette fois, tu montes au niveau";n:GOSUB 5130:RETURN
4250 PEN 1:LOCATE 11,1:PRINT"Tu viens de r{aliser":LOCATE 7,2:PRINT"le meilleur score possible.":PRINT:PRINT" Tu peux donc participer au championnat."
4260 PEN 2:LOCATE 12,8:PRINT"Il s'agit toujours":PRINT"     de trouver la moiti{ demand{e,":LOCATE 17,10:PRINT"mais..."
4270 PEN 3:LOCATE 15,14:PRINT"ATTENTION!":LOCATE 9,16:PRINT"TU N'AS QUE 10 SECONDES":PRINT:PRINT" POUR TROUVER LA REPONSE ET L'INSCRIRE."
4280 GOSUB 5130
4290 PEN 1:LOCATE 1,5:PRINT "  Si tu peux r{pondre aux 10 questions":PRINT"  j'inscrirai  ton nom dans ma m{moire":PRINT"     et tu pourras, un autre jour,":PRINT"     essayer de battre ton record."
4300 IF nbchamp=0 THEN 4330 ELSE 4310
4310 PRINT:PRINT:PRINT:PRINT" Pour voir les champions d{j@ inscrits,":PRINT"         appuie sur <ESPACE>.":CLEAR INPUT:CALL &BB06
4320 z=(25-nbchamp)/2:CLS:PLOT 0,398-16*(z-1),2:DRAWR 638,0:DRAWR 0,-16*(nbchamp+2):DRAWR -638,0:DRAWR 0,16*(nbchamp+2):FOR i=1 TO nbchamp:LOCATE 2,z+i:PRINT champ$(i):LOCATE 33,z+i:PRINT USING "######";score(i):NEXT
4330 GOSUB 5130:RETURN
4340 '
4350 REM**************************
4360 REM*** tirage des nombres ***
4370 REM**************************
4380 '
4390 REM---niveau 1
4400 x(i)=INT(RND*9)+1
4410 RETURN
4420 REM---niveau 2
4430 x(i)=(INT(RND*9)+1)*10
4440 RETURN
4450 REM---niveau 3
4460 d(i)=(INT(RND*4)+1)*20
4470 u(i)=(INT(RND*4)+1)*2
4480 x(i)=d(i)+u(i)
4490 RETURN
4500 REM---niveau 4
4510 d(i)=(INT(RND*4)+1)*20
4520 u(i)=((INT(RND*4)+1)*2)-1
4530 x(i)=d(i)+u(i)
4540 RETURN
4550 REM---niveau 5
4560 d(i)=((INT(RND*4)+1)*20)-10
4570 u(i)=(INT(RND*4)+1)*2
4580 x(i)=d(i)+u(i)
4590 RETURN
4600 REM---niveau 6
4610 d(i)=((INT(RND*4)+1)*20)-10
4620 u(i)=((INT(RND*4)+1)*2)-1     
4630 x(i)=d(i)+u(i)
4640 RETURN
4650 REM---niveau 7
4660 x(i)=INT(RND*99)+1
4670 RETURN
4680 '
4690 REM***************************
4700 REM*** saisie des r{ponses ***
4710 REM***************************
4720 '
4730 t=TIME
4740 r$="":k$="":rep$=""
4750 IF dh=1 THEN LOCATE#2,x,y+1:PRINT#2,curtr$:ELSE LOCATE x,y:PRINT curtr$
4760 CLEAR INPUT
4770 WHILE k$<>CHR$(13) OR r$=""
4780 k$=INKEY$
4785 IF flager=1 THEN 4810
4790 IF n=8 THEN GOSUB 5020
4800 IF rep$="troplent" THEN 4980
4810 IF k$="" THEN 4780
4820 ask=ASC(k$):IF ask=46 THEN ask=58
4830 IF dh=0 THEN 4890
4840 IF k$=CHR$(127) AND r$<>"" THEN LOCATE#2,x+(LEN(r$)/5)-1,y:PRINT#2,ef$;ef$:r$=LEFT$(r$,LEN(r$)-5):rep$=LEFT$(rep$,LEN(rep$)-1)
4850 IF ask>47 AND ask<59 AND LEN(r$)<21 THEN r$=r$+c$(ask-48):rep$=rep$+k$
4860 LOCATE#2,x,y:PRINT#2,r$;:IF LEN(r$)<21 THEN PRINT#2,CHR$(10);curtr$;
4870 GOTO 4920
4880 '
4890 IF k$=CHR$(127) AND r$<>"" THEN LOCATE x+LEN(r$)-1,y:PRINT CHR$(32);CHR$(32):r$=LEFT$(r$,LEN(r$)-1)
4900 IF ask>47 AND ask<59 AND LEN(r$)<5 THEN r$=r$+k$
4910 LOCATE x,y:PRINT r$;curtr$;
4920 WEND
4930 IF r$<>c$(10) AND r$<>"." THEN 4960
4940 IF dh=1 THEN LOCATE#2,x+(LEN(r$)/5)-1,y:PRINT#2,ef$;ef$ ELSE LOCATE x+LEN(r$)-1,y:PRINT CHR$(32);CHR$(32)      
4950 GOTO 4730
4960 IF dh=1 AND LEN(r$)<21 THEN PRINT#2,CHR$(8);ef$ ELSE PRINT CHR$(8);CHR$(32)
4970 IF n=8 THEN sc=sc+(4000-tt)\4
4980 RETURN
4990 '
5000 ' INPUTWAIT pour championnat
5010 '
5020 tt=TIME-t:IF tt>2500 THEN LOCATE 12,19:PRINT"Le temps passe..."
5030 IF tt>4000 THEN 5040 ELSE 5060
5040 FOR ef=1 TO 6:LOCATE 1,18+ef:PRINT CHR$(18):NEXT:LOCATE 16,19:PRINT"trop tard":LOCATE 9,21:PRINT"il fallait r{pondre";x(i)/2:rep$="troplent"
5050 GOSUB 5130
5060 LOCATE 1,19:PRINT CHR$(18):LOCATE 1,21:PRINT CHR$(18):LOCATE 1,25:PRINT CHR$(18)
5070 RETURN
5080 '
5090 REM****************************
5100 REM*** attente pour lecture ***
5110 REM****************************
5120 '
5130 p=0:CLEAR INPUT
5140 WHILE INKEY$=""
5150 p=p+1:PEN p MOD 4:LOCATE 11,25:PRINT"Appuie sur <ESPACE>"
5160 WEND
5170 CLS:PEN 1
5180 RETURN
5190 '
5200 '
5210 IF ERR=32 AND DERR=146 THEN RESUME 1280 ELSE PRINT"erreur ligne";ERL
10000 |ERA,"champmoi.*"