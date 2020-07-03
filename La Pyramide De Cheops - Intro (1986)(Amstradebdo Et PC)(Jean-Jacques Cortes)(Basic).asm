160 REM PYRAMIDE DE CHEOPS par Jean-Jacques Cortes Amstadebdo & Pc no 8 dec 86.
270 MODE 1:INK 0,0:INK 1,26:INK 2,23:INK 3,24:BORDER 9:WINDOW#1,1,40,1,25:PAPER#1,2:CLS#1:WINDOW#0,1,40,14,25:PAPER 3:CLS
280 FOR INC=0 TO 400 STEP 100:X=0:FOR Y=192 TO 202:MOVE X+INC,Y:DRAWR 200-(2*X),0,3:X=X+10:NEXT Y:NEXT INC
290 GOSUB 4970
300 X=180:Z=0:FOR Y=100 TO 300:MOVE X-Z,Y:DRAWR 400+2*Z,0,1:DRAWR 50+(0.2*Z),10+(0.1*Z):Z=Z-1:NEXT
310 MOVE 180,100:DRAWR 400,0,0:DRAWR-200,204:DRAWR-200,-204:MOVE 580,100:DRAWR 50,10:DRAW 380,304
320 R=30:XA=90:YA=340:Z=R^2:FOR INCX=-R TO R STEP 2:INCY=SQR(Z-(INCX^2)):PLOT XA+INCX,YA+INCY,3:DRAW XA+INCX,YA-INCY,3:NEXT
330 PRINT CHR$(22)+CHR$(1):LOCATE 18,1:PEN 2:PRINT CHR$(129);CHR$(130);CHR$(133);CHR$(134);CHR$(137);CHR$(138);CHR$(129);CHR$(130);CHR$(141);CHR$(142);CHR$(145);CHR$(146);CHR$(137);CHR$(149);CHR$(151);CHR$(152)
340 LOCATE 18,2:PRINT CHR$(131);CHR$(132);CHR$(135);CHR$(136);CHR$(139);CHR$(128);CHR$(131);CHR$(132);CHR$(143);CHR$(144);CHR$(147);CHR$(148);CHR$(139);CHR$(150);CHR$(153);CHR$(154)
350 PEN 0:LOCATE 22,4:PRINT"Presente":PRINT CHR$(22)+CHR$(0)
360 PEN 0:LOCATE 6,8:PRINT"La Pyramide de Cheops"
370 LOCATE 4,10:PRINT"Par J-J Cortes,� Juillet 1986"
380 GOSUB 4430
400 REM REGLES DU JEU
420 GOSUB 3800
430 MODE 1:INK 0,0:INK 1,2:INK 2,6:INK 3,24:PAPER 0:PEN 1:BORDER 0:PAPER#1,0:PEN#1,1:PAPER#2,0:PEN#2,1:WINDOW#0,5,36,1,25:WINDOW#1,1,4,1,25:WINDOW#2,37,40,1,25:CLS:CLS#1:CLS#2
440 LOCATE#1,2,2:PEN#1,2:PRINT#1,CHR$(202):LOCATE#1,2,3:PEN#1,3:PRINT#1,CHR$(214):LOCATE#1,2,5:PRINT#1,CHR$(212);CHR$(213):LOCATE#1,2,8:PEN#1,1:PRINT#1,CHR$(217);CHR$(217):LOCATE#1,2,12:PEN#1,2:PRINT#1,CHR$(215):LOCATE#1,2,13:PRINT#1,CHR$(216)
450 LOCATE#1,2,16:PEN#1,2:PRINT#1,CHR$(202):LOCATE#1,2,17:PEN#1,3:PRINT#1,CHR$(214):LOCATE#1,2,20:PRINT#1,CHR$(217);CHR$(217):LOCATE#1,2,22:PEN#1,1:PRINT#1,CHR$(212);CHR$(213):LOCATE#1,2,24:PEN#1,2:PRINT#1,CHR$(215):LOCATE#1,2,25:PRINT#1,CHR$(216)
460 LOCATE#2,2,2:PEN#2,2:PRINT#2,CHR$(202):LOCATE#2,2,3:PEN#2,3:PRINT#2,CHR$(214):LOCATE#2,2,5:PRINT#2,CHR$(212);CHR$(213):LOCATE#2,2,8:PEN#2,1:PRINT#2,CHR$(217);CHR$(217):LOCATE#2,2,12:PEN#2,2:PRINT#2,CHR$(215):LOCATE#2,2,13:PRINT#2,CHR$(216)
470 LOCATE#2,2,16:PEN#2,2:PRINT#2,CHR$(202):LOCATE#2,2,17:PEN#2,3:PRINT#2,CHR$(214):LOCATE#2,2,20:PRINT#2,CHR$(217);CHR$(217):LOCATE#2,2,22:PEN#2,1:PRINT#2,CHR$(212);CHR$(213):LOCATE#2,2,24:PEN#2,2:PRINT#2,CHR$(215):LOCATE#2,2,25:PRINT#2,CHR$(216)
480 LOCATE 6,1:PRINT"LA PYRAMIDE DE CHEOPS":LOCATE 6,2:PRINT STRING$(21,"-")
490 LOCATE 1,5:PEN 2:PRINT"Vous etes volontaire pour entrer":PEN 3:PRINT"dans la pyramide de Cheops,et y ":PEN 1:PRINT"trouver un masque cache dans la ":PEN 2:PRINT"chambre royale,puis bien sur,   ":PEN 3:PRINT"sortir vivant avec le tresor ! "
500 PEN 1:PRINT"Afin de vous empecher de voler  ":PEN 2:PRINT"ce tresor,les architectes ont   ":PEN 3:PRINT"place des pieges sur l'ensemble ":PEN 1:PRINT"du chemin qui mene a la chambre ":PEN 2:PRINT"royale et donc au tresor..."
510 LOCATE 12,25:PEN 1:PRINT"<ESPACE>":WHILE INKEY$="":WEND
520 CLS:INK 0,0:INK 1,2:INK 2,6:INK 3,24:PEN 1:LOCATE 6,1:PRINT"LA PYRAMIDE DE CHEOPS":LOCATE 6,2:PRINT STRING$(21,"-")
530 LOCATE 1,4:PEN 2:PRINT"Voici les personnages ou objets ":PEN 3:PRINT"que vous pourez rencontrer :    "
540 LOCATE 7,8:PEN 3:PRINT CHR$(218):LOCATE 7,9:PEN 2:PRINT CHR$(219):LOCATE 7,10:PEN 1:PRINT CHR$(220):LOCATE 7,11:PRINT CHR$(221):LOCATE 1,13:PRINT"La statue du Pharaon":PEN 2:LOCATE 1,14:PRINT"Signal de mort prochaine"
550 LOCATE 23,8:PEN 3:PRINT CHR$(222):LOCATE 18,10:PEN 1:PRINT"Le scorpion":PEN 2:LOCATE 16,11:PRINT"-100 pts de vie"
560 LOCATE 4,19:PEN 3:PRINT CHR$(223);CHR$(224):PEN 1:LOCATE 1,21:PRINT"Un panier":PEN 2:LOCATE 1,22:PRINT"+XX pts de vie"
570 PEN 3:LOCATE 15,15:PRINT CHR$(247):LOCATE 15,16:PRINT CHR$(248):PEN 1:LOCATE 7,18:PRINT"Un sac de pieces":PEN 2:LOCATE 7,19:PRINT"+XX pts au score"
580 PEN 3:LOCATE 25,17:PRINT CHR$(225):LOCATE 25,18:PRINT CHR$(226):LOCATE 25,19:PRINT CHR$(227):PEN 1:LOCATE 20,21:PRINT"Le serpent":PEN 2:LOCATE 17,22:PRINT"Mort immediate"
590 LOCATE 12,25:PEN 1:PRINT"<ESPACE>":WHILE INKEY$="":WEND
600 CLS:PEN 1:LOCATE 6,1:PRINT"LA PYRAMIDE DE CHEOPS":LOCATE 6,2:PRINT STRING$(21,"-")
610 LOCATE 1,5:PEN 2:PRINT"Voici les ordres que vous devez utiliser :"
620 PEN 1:LOCATE 1,8:PRINT"Verbes de mouvement :":PEN 2:LOCATE 1,9:PRINT STRING$(21,"-")
630 PEN 3:LOCATE 1,10:PRINT"AV : Avancer   DR : Droite":PEN 1:PRINT"GA : Gauche    SA : Sauter"
640 PEN 3:LOCATE 1,13:PRINT"Verbes de chang. de position :":PEN 2:LOCATE 1,14:PRINT STRING$(30,"-")
650 PEN 1:LOCATE 1,15:PRINT"DT : Demi-tour":PEN 3:PRINT"QD : Quart de tour droite":PEN 1:PRINT"QG : Quart de tour gauche"
660 PEN 3:LOCATE 1,19:PRINT"Verbes de prise d'objets :":PEN 2:LOCATE 1,20:PRINT STRING$(26,"-")
670 PEN 1:LOCATE 1,21:PRINT"PM : Prendre masque":PEN 3:PRINT"PP : Prendre panier":PEN 1:PRINT"PS : Prendre sac de pieces"
680 LOCATE 12,25:PEN 3:PRINT"<ESPACE>":WHILE INKEY$="":WEND
681 MODE 1:INK 1,26:INK 2,23:INK 3,24:PEN 1:LOCATE 5,11:PRINT"Ouvrir les portes avec n'importe":LOCATE 9,13:PRINT"quelle manette (o/n) ?"
682 m$=UPPER$(INKEY$):IF m$<"N"OR m$>"O"THEN 682
683 IF m$="O"THEN POKE 62,1 ELSE POKE 62,0
684 LOCATE 8,15:PRINT"Cobra inoffensif (o/n) ?"
685 i$=UPPER$(INKEY$):IF i$<"N"OR i$>"O"THEN 685
686 IF i$="O"THEN POKE 63,1 ELSE POKE 63,0
690 MODE 1:INK 1,26:INK 2,23:INK 3,24:BORDER 9:WINDOW#1,1,40,1,25:PAPER#1,2:CLS#1:WINDOW#0,1,40,14,25:PAPER 3:CLS
700 FOR INC=0 TO 400 STEP 100:X=0:FOR Y=192 TO 202:MOVE X+INC,Y:DRAWR 200-(2*X),0,3:X=X+10:NEXT Y:NEXT INC
710 X=180:Z=0:FOR Y=100 TO 300:MOVE X-Z,Y:DRAWR 400+2*Z,0,1:DRAWR 50+(0.2*Z),10+(0.1*Z):Z=Z-1:NEXT
720 MOVE 180,100:DRAWR 400,0,0:DRAWR-200,204:DRAWR-200,-204:MOVE 580,100:DRAWR 50,10:DRAW 380,304:FOR y=100 TO 140:MOVE 360,y:DRAWR 40,0,0:NEXT y:DRAWR 10,5:DRAW 400,100:MOVE 360,140:DRAWR 10,5:DRAWR 40,0
730 PEN 0:LOCATE 1,8:PRINT"Vous etes devant l'entree de la pyramide":LOCATE 1,9:PRINT"Y entrez-vous (O/N) ?":REP$=UPPER$(INKEY$):IF REP$<"N"OR REP$>"O"THEN 730
735 IF REP$="N"THEN PRINT"Vous n'etes qu'un peureux,au revoir !..":END
740 LOCATE 1,10:PRINT"C'est de la folie mais vous avez raison!"
760 REM CREATION TERRAIN
780 DIM SA(100),PO(100,3),PH$(7)
790 RESTORE 2640:FOR INC=1 TO 100:READ SA(INC):READ PO(INC,0):READ PO(INC,2):READ PO(INC,1):READ PO(INC,3):NEXT INC:RESTORE 3690:FOR INC=0 TO 7:READ PH$(INC):NEXT
800 PV=1000:SC=0:PS=96:DR$="NORD":VU=0:RANDOMIZE(TIME)
820 REM DEBUTER PARTIE
840 TSTG=0:WHILE TSTG=0
850 GOSUB 1860:'DESSIN PIECE
860 GOSUB 2410:'RENCONTRE
870 TST=0:WHILE TST=0:GOSUB 2340:GOSUB 2580:WEND:'ENTREE COMMANDE
880 COMM=VAL(MID$(COMMANDE$,3))
890 ON COMM GOSUB 940,1070,1190,1270,1390,1460,1520,1580,1660,1740
900 WEND
920 'AV(ANCE)
940 IF DR$="NORD"THEN VU=0 ELSE IF DR$="SUD"THEN VU=2 ELSE IF DR$="EST"THEN VU=1 ELSE IF DR$="OUEST"THEN VU=3
950 IF SA(PS)=3 THEN GOSUB 4200:REM CHUTE DANS FOSSE
960 IF PO(PS,VU)=0 THEN LOCATE#1,1,4:PEN#1,3:PRINT#1,"Desole,il n'y a pas de porte devant vous":FOR TEMPS=1 TO 500:NEXT:RETURN
970 IF PO(PS,VU)=1 AND VU=0 THEN PS=PS-10:RETURN
980 IF PO(PS,VU)=1 AND VU=1 THEN PS=PS+1:RETURN
990 IF PO(PS,VU)=1 AND VU=2 THEN PS=PS+10:RETURN
1000 IF PO(PS,VU)=1 AND VU=3 THEN PS=PS-1:RETURN
1010 IF PO(PS,VU)=2 THEN GOSUB 2150:RETURN
1020 IF PO(PS,VU)=3 AND TRESOR=1 THEN GOSUB 4120:END:ELSE IF PO(PS,VU)=3 AND TRESOR=0 THEN SOUND 1,428,25,15:LOCATE#1,1,4:PEN#1,3:PRINT#1,"Ne partez pas sans le masque!":FOR TEMPS=1 TO 500:NEXT:RETURN
1030 RETURN
1050 'COMMANDE DR(OITE)
1070 IF DR$="NORD"THEN VU=1:DR$="EST":ELSE IF DR$="SUD"THEN VU=3:DR$="OUEST":ELSE IF DR$="EST"THEN VU=2:DR$="SUD":ELSE IF DR$="OUEST"THEN VU=0:DR$="NORD"
1080 IF PO(PS,VU)=0 THEN LOCATE#1,1,4:PEN#1,3:PRINT#1,"Desole,il n'y a pas de porte a droite":FOR TEMPS=1 TO 500:NEXT:RETURN
1090 IF PO(PS,VU)=1 AND VU=0 THEN PS=PS-10:RETURN
1100 IF PO(PS,VU)=1 AND VU=1 THEN PS=PS+1:RETURN
1110 IF PO(PS,VU)=1 AND VU=2 THEN PS=PS+10:RETURN
1120 IF PO(PS,VU)=1 AND VU=3 THEN PS=PS-1:RETURN
1130 IF PO(PS,VU)=2 THEN CLS:GOSUB 1870:LOCATE#1,33,1:PRINT#1,DR$:GOSUB 2150:RETURN
1140 IF PO(PS,VU)=3 AND TRESOR=1 THEN GOSUB 4120 ELSE IF PO(PS,VU)=3 AND TRESOR=0 THEN SOUND 1,428,25,15:LOCATE#1,1,4:PEN#1,3:PRINT#1,"Ne partez pas sans le masque!":FOR TEMPS=1 TO 500:NEXT:RETURN
1150 RETURN
1170 'DT(DEMI-TOUR)
1190 IF DR$="NORD"THEN DR$="SUD":RETURN
1200 IF DR$="SUD"THEN DR$="NORD":RETURN
1210 IF DR$="EST"THEN DR$="OUEST":RETURN
1220 IF DR$="OUEST"THEN DR$="EST":RETURN
1230 RETURN
1250 'GA(UCHE)
1270 IF DR$="NORD"THEN VU=3:DR$="OUEST":ELSE IF DR$="SUD"THEN VU=1:DR$="EST":ELSE IF DR$="EST"THEN VU=0:DR$="NORD":ELSE IF DR$="OUEST"THEN VU=2:DR$="SUD"
1280 IF PO(PS,VU)=0 THEN LOCATE#1,1,4:PEN#1,3:PRINT#1,"Desole,il n'y a pas de porte a gauche":FOR TEMPS=1 TO 500:NEXT:RETURN
1290 IF PO(PS,VU)=1 AND VU=0 THEN PS=PS-10:RETURN
1300 IF PO(PS,VU)=1 AND VU=1 THEN PS=PS+1:RETURN
1310 IF PO(PS,VU)=1 AND VU=2 THEN PS=PS+10:RETURN
1320 IF PO(PS,VU)=1 AND VU=3 THEN PS=PS-1:RETURN
1330 IF PO(PS,VU)=2 THEN CLS:GOSUB 1870:LOCATE#1,33,1:PRINT#1,DR$:GOSUB 2150:RETURN
1340 IF PO(PS,VU)=3 AND TRESOR=1 THEN GOSUB 4120 ELSE IF PO(PS,VU)=3 AND TRESOR=0 THEN SOUND 1,428,25,15:LOCATE#1,1,4:PEN#1,3:PRINT#1,"Ne partez pas sans le masque!":FOR TEMPS=1 TO 500:NEXT:RETURN
1350 RETURN
1370 'PM(PRENDRE MASQUE)
1390 IF SA(PS)<>6 THEN LOCATE#1,1,4:PEN#1,3:PRINT#1,"Je ne vois pas de masque ici...":WHILE INKEY$="":WEND:RETURN
1400 IF SA(PS)=6 AND TRESOR=1 THEN LOCATE#1,1,4:PEN#1,3:PRINT#1,"Vous l'avez deja !":FOR TPS=1 TO 700:NEXT:RETURN
1410 IF SA(PS)=6 AND TRESOR=0 THEN GOSUB 4340:SOUND 1,428,10:LOCATE#1,1,4:PEN#1,3:PRINT#1,"Bravo !Vous avez le masque !":TRESOR=1:FOR TEMPS=1 TO 1000:NEXT:RETURN
1420 RETURN
1440 'PP(PRENDRE PANIER)
1460 IF SA(PS)<>2 THEN LOCATE#1,1,4:PEN#1,3:PRINT#1,"Je ne vois pas de panier ici...":WHILE INKEY$="":WEND:RETURN
1470 IF SA(PS)=2 THEN LOCATE 20,18:PEN 0:PRINT CHR$(223);CHR$(224):SOUND 1,428,10:LOCATE#1,1,4:PEN#1,3:PRINT#1,"Humm ! C'etait bien bon !":GN=INT((RND(1)*20)+30):PV=PV+GN:SA(PS)=0:LOCATE#1,1,1:PRINT#1,"Energie :";PV:FOR TP=1 TO 700:NEXT:RETURN
1480 RETURN
1500 'PS(PRENDRE SAC)
1520 IF SA(PS)<>7 THEN LOCATE#1,1,4:PEN#1,3:PRINT#1,"Je ne vois pas de sac ici...":WHILE INKEY$="":WEND:RETURN
1530 IF SA(PS)=7 THEN LOCATE 20,18:PEN 0:PRINT CHR$(247):LOCATE 20,19:PRINT CHR$(248):LOCATE#1,1,4:PEN#1,3:PRINT#1,"Excelent pour les finances !":GN=INT((RND(1)*20)+30):SC=SC+GN:SA(PS)=0:LOCATE#1,17,1:PRINT#1,"Score :";SC:FOR TEMPS=1 TO 700:NEXT:RETURN
1540 RETURN
1560 'QD(1/4 DE TOUR DROITE)
1580 IF DR$="NORD"THEN DR$="EST":RETURN
1590 IF DR$="EST"THEN DR$="SUD":RETURN
1600 IF DR$="SUD"THEN DR$="OUEST":RETURN
1610 IF DR$="OUEST"THEN DR$="NORD":RETURN
1620 RETURN
1640 'QG(1/4 DE TOUR GAUCHE)
1660 IF DR$="NORD"THEN DR$="OUEST":RETURN
1670 IF DR$="OUEST"THEN DR$="SUD":RETURN
1680 IF DR$="SUD"THEN DR$="EST":RETURN
1690 IF DR$="EST"THEN DR$="NORD":RETURN
1700 RETURN
1720 'SA(UTER)
1740 IF DR$="NORD"THEN VU=0 ELSE IF DR$="SUD"THEN VU=2 ELSE IF DR$="EST"THEN VU=1 ELSE IF DR$="OUEST"THEN VU=3
1750 IF PO(PS,VU)=0 THEN LOCATE#1,1,4:PEN#1,3:PRINT#1,"Desole,il n'y a pas de porte devant vous":WHILE INKEY$="":WEND:RETURN
1760 IF PO(PS,VU)=1 AND VU=0 THEN PS=PS-10:RETURN
1770 IF PO(PS,VU)=1 AND VU=1 THEN PS=PS+1:RETURN
1780 IF PO(PS,VU)=1 AND VU=2 THEN PS=PS+10:RETURN
1790 IF PO(PS,VU)=1 AND VU=3 THEN PS=PS-1:RETURN
1800 IF PO(PS,VU)=2 THEN GOSUB 2150:RETURN
1810 IF PO(PS,VU)=3 AND TRESOR=1 THEN GOSUB 4120 ELSE PO(PS,VU)=3 AND TRESOR=0 THEN SOUND 1,428,25,15:LOCATE#1,1,4:PEN#1,3:PRINT#1,"Ne partez pas sans le masque!":WHILE INKEY$="":WEND:RETURN
1820 RETURN
1840 'DESSINE PIECE
1860 MODE 1:INK 0,0:INK 1,2:INK 2,6:INK 3,24:BORDER 0:WINDOW#0,1,40,1,20:WINDOW#1,1,40,21,25:PAPER#0,0:CLS#0:PAPER#1,0:CLS#1
1870 MOVE 0,92:DRAWR 200,80,1:DRAWR 240,0:DRAWR 200,-80:MOVE 638,92:DRAWR 0,288:MOVE 0,92:DRAWR 0,288
1880 MOVE 0,380:DRAWR 200,-80,1:DRAWR 240,0:DRAWR 200,80
1890 MOVE 148,320:DRAWR 346,0,1:MOVE 78,350:DRAWR 484,0:MOVE 4,380:DRAWR 634,0
1900 MOVE 258,300:DRAW 160,380:MOVE 318,300:DRAW 318,380:MOVE 378,300:DRAW 476,380
1910 MOVE 148,150:DRAWR 346,0,1:MOVE 78,122:DRAWR 484,0:MOVE 4,92:DRAWR 634,0
1920 MOVE 258,170:DRAW 160,92:MOVE 318,170:DRAW 318,92:MOVE 378,170:DRAW 476,92
1930 MOVE 198,172:DRAWR 0,128:MOVE 442,172:DRAWR 0,128:LOCATE 18,11:PEN 2:PRINT CHR$(202):LOCATE 18,12:PEN 3:PRINT CHR$(214):LOCATE 24,11:PRINT CHR$(215):LOCATE 24,12:PRINT CHR$(216)
1940 LOCATE 15,8:PEN 2:PRINT CHR$(212);CHR$(213):LOCATE 19,8:PEN 3:PRINT CHR$(217);CHR$(217):LOCATE 23,8:PEN 2:PRINT CHR$(202):LOCATE 23,9:PEN 3:PRINT CHR$(214):LOCATE 25,8:PEN 2:PRINT CHR$(212);CHR$(213)
1950 LOCATE 26,11:PEN 3:PRINT CHR$(217);CHR$(217):LOCATE 15,11:PRINT CHR$(215):LOCATE 15,12:PRINT CHR$(216)
1960 IF DR$="NORD"THEN VU=0
1970 IF DR$="SUD"THEN VU=2
1980 IF DR$="EST"THEN VU=1
1990 IF DR$="OUEST"THEN VU=3
2000 IF PO(PS,VU)=1 THEN MOVE 298,172:DRAWR 0,80,1:DRAWR 44,0:DRAWR 0,-80:MOVE 298,172:DRAWR 10,10:DRAWR 0,70
2010 IF PO(PS,VU)=2 THEN MOVE 298,172:DRAWR 0,80,1:DRAWR 44,0:DRAWR 0,-80:MOVE 322,172:DRAWR 0,80:LOCATE 23,12:PEN 3:PRINT CHR$(253)
2020 IF PO(PS,VU)=3 THEN MOVE 298,172:DRAWR 0,80,1:DRAWR 44,0:DRAWR 0,-80:MOVE 298,172:DRAWR 10,10:DRAWR 0,70:FOR Y=182 TO 202:MOVE 310,Y:DRAWR 30,0,3:NEXT Y:FOR Y=204 TO 250:MOVE 310,Y:DRAWR 30,0,1:NEXT
2030 VU=VU+1:IF VU>3 THEN VU=VU-4
2040 IF PO(PS,VU)=1 THEN MOVE 510,144:DRAWR 0,120,1:DRAWR 40,10:DRAWR 0,-144:MOVE 510,144:DRAWR 18,0:DRAWR 0,124:MOVE 522,144:DRAWR 28,-8
2050 IF PO(PS,VU)=2 THEN MOVE 510,144:DRAWR 0,120,1:DRAWR 40,10:DRAWR 0,-144:MOVE 530,138:DRAWR 0,132:LOCATE 37,12:PEN 3:PRINT CHR$(251):LOCATE 37,13:PRINT CHR$(252)
2060 IF PO(PS,VU)=3 THEN MOVE 510,144:DRAWR 0,120,1:DRAWR 40,10:DRAWR 0,-144:MOVE 510,144:DRAWR 18,0:DRAWR 0,124:MOVE 522,144:DRAWR 28,-8:FOR Y=142 TO 180:MOVE 530,Y:DRAWR 18,0,3:NEXT:FOR Y=182 TO 270:MOVE 530,Y:DRAWR 18,0,1:NEXT:MOVE 540,272:DRAWR 8,0
2070 VU=VU+2:IF VU>3 THEN VU=VU-4
2080 IF PO(PS,VU)=1 THEN MOVE 130,144:DRAWR 0,120,1:DRAWR-40,10:DRAWR 0,-144:MOVE 130,144:DRAWR-18,0:DRAWR 0,124:MOVE 118,144:DRAWR-28,-8
2090 IF PO(PS,VU)=2 THEN MOVE 130,144:DRAWR 0,120,1:DRAWR-40,10:DRAWR 0,-144:MOVE 110,138:DRAWR 0,132:LOCATE 10,12:PEN 3:PRINT CHR$(249):LOCATE 10,13:PRINT CHR$(250)
2100 IF PO(PS,VU)=3 THEN MOVE 130,144:DRAWR 0,120,1:DRAWR-40,10:DRAWR 0,-144:MOVE 130,144:DRAWR-18,0:DRAWR 0,124:MOVE 90,136:DRAWR 28,8:FOR Y=142 TO 180:MOVE 92,Y:DRAWR 18,0,3:NEXT:FOR Y=182 TO 270:MOVE 92,Y:DRAWR 18,0,1:NEXT:MOVE 92,272:DRAWR 4,0
2110 RETURN
2130 'PORTE S'OUVRE?
2150 LOCATE#1,1,4:PEN#1,3:PRINT#1,"A droite de la porte,il y a 3 leviers":REP=0:WHILE REP<1 OR REP>3:LOCATE#1,1,5:INPUT#1,"Lequel tirez-vous:1-Haut,2-Mil,3-Bas";REP:WEND
2160 IF PEEK(62)=1 THEN REP=WW ELSE WW=INT((RND(1)*3)+1)
2170 IF REP=WW THEN FOR Z=0 TO 18 STEP 2:MOVE 322+Z,174:DRAWR 0,76,1:MOVE 322-Z,174:DRAWR 0,76,1:MOVE 322+Z,174:DRAWR 0,76,0:MOVE 322-Z,174:DRAWR 0,76,0:SOUND 1,388,10,15,,,15:NEXT Z:MOVE 298,172:DRAWR 10,10,1:DRAWR 0,70,1:FOR TEMPS=1 TO 500:NEXT
2180 IF REP=WW AND VU=1 AND REP$<>"AV"THEN PS=PS+10:RETURN
2190 IF REP=WW AND VU=2 AND REP$<>"AV"THEN PS=PS-1:RETURN
2200 IF REP=WW AND VU=3 AND REP$<>"AV"THEN PS=PS-10:RETURN
2210 IF REP=WW AND VU=0 AND REP$<>"AV"THEN PS=PS+1:RETURN
2220 IF REP=WW AND VU=1 AND REP$="AV"THEN PS=PS+1:RETURN
2230 IF REP=WW AND VU=2 AND REP$="AV"THEN PS=PS+10:RETURN
2240 IF REP=WW AND VU=3 AND REP$="AV"THEN PS=PS-1:RETURN
2250 IF REP=WW AND VU=0 AND REP$="AV"THEN PS=PS-10:RETURN
2260 IF REP<>WW THEN LOCATE#1,1,3:PEN#1,3:PRINT#1,"Mauvais levier,au revoir car des murs ":PRINT#1,"bloquent les portes,vous ne pouvez plus":PRINT#1,"sortir de ce qui devient votre tombeau."
2270 FOR Y=92 TO 230:MOVE 0,Y:DRAWR 20,0,1:DRAWR 180,70
2280 DRAWR 240,0:DRAWR 180,-70:DRAWR 20,0:SOUND 1,388,10,15,,,15:NEXT
2290 FOR Y=232 TO 370:MOVE 0,Y:DRAWR 20,0:DRAW 200,300:MOVE 620,Y:DRAW 440,300:MOVE 620,Y:DRAWR 20,0:SOUND 1,388,10,15,,,15:NEXT:MOVE 22,92:DRAWR 0,278,0:MOVE 198,162:DRAWR 0,138:MOVE 442,162:DRAWR 0,138:MOVE 618,92:DRAWR 0,278
2300 FOR INC=1 TO 500:NEXT:GOSUB 4530:END
2320 'TABL. DE BORD
2340 PAPER#1,2:PEN#1,3:CLS#1:LOCATE#1,1,1:PRINT#1,"Energie :";PV:LOCATE#1,17,1:PRINT#1,"Score :";SC:LOCATE#1,33,1:PRINT#1,DR$
2350 LOCATE#1,1,3:PRINT#1,"Dans cette piece : ";PH$(SA(PS))
2360 LOCATE#1,1,5:INPUT#1,"Que faites-vous ";REP$:REP$=UPPER$(LEFT$(REP$,2)):PV=PV-1
2370 RETURN
2390 REM RENCONTRE
2410 IF SA(PS)=0 THEN RETURN
2415 IF PEEK(63)=1 THEN 2420 ELSE 2425
2420 IF SA(PS)=1 THEN LOCATE 20,17:PEN 3:PRINT CHR$(225):LOCATE 20,18:PRINT CHR$(226):LOCATE 20,19:PRINT CHR$(227):RETURN
2425 IF SA(PS)=1 THEN LOCATE 20,17:PEN 3:PRINT CHR$(225):LOCATE 20,18:PRINT CHR$(226):LOCATE 20,19:PRINT CHR$(227):LOCATE#1,1,5:PEN#1,3:PRINT#1,"Le serpent vous a mordu,vous etes mort.":FOR TEMPS=1 TO 700:NEXT TEMPS:GOSUB 4530:END
2430 IF SA(PS)=2 THEN LOCATE 20,18:PEN 3:PRINT CHR$(223);CHR$(224):LOCATE#1,1,3:PEN#1,3:PRINT#1,"Voila de quoi manger !":FOR TEMPS=1 TO 700:NEXT:RETURN
2440 IF SA(PS)=3 THEN Z=0:FOR Y=110 TO 150:MOVE 180+Z,Y:DRAWR 276-(2*Z),0,1:Z=Z+1.4:NEXT:MOVE 232,150:DRAWR 0,-40,0:MOVE 400,150:DRAWR 0,-40:RETURN
2450 IF SA(PS)=4 THEN PRINT CHR$(22)+CHR$(1):LOCATE 19,17:PEN 3:PRINT CHR$(222):PRINT CHR$(22)+CHR$(0):LOCATE#1,1,3:PEN#1,3:PRINT#1,"Aie ! Un scorpion vous a pique...":PV=PV-100:FOR TIM=1 TO 500:NEXT:GOSUB 4380:FOR TEMPS=1 TO 500:NEXT:RETURN
2460 IF SA(PS)=5 THEN LOCATE 20,16:PEN 3:PRINT CHR$(218):LOCATE 20,17:PEN 2:PRINT CHR$(219):LOCATE 20,18:PEN 3:PRINT CHR$(220):LOCATE 20,19:PRINT CHR$(221):LOCATE#1,1,3:PEN#1,3:PRINT#1,"Prenez garde,un danger est proche !":FOR TEPS=1 TO 700:NEXT:RETURN
2470 IF SA(PS)=6 AND DR$="OUEST"THEN GOSUB 2520:IF TRESOR=0 THEN GOSUB 4300:FOR TEMPS=1 TO 500:NEXT:RETURN:ELSE IF SA(PS)=6 AND TRESOR=1 THEN FOR TEMPS=1 TO 500:NEXT:RETURN
2480 IF SA(PS)=6 AND DR$="EST"THEN LOCATE#1,1,3:PEN#1,3:PRINT#1,"Derriere vous : le sarcophage du pharaon":FOR TEMPS=1 TO 700:NEXT:RETURN
2490 IF SA(PS)=6 AND DR$="NORD"THEN LOCATE#1,1,3:PEN#1,3:PRINT#1,"A gauche : le sarcophage du pharaon":FOR TEMPS=1 TO 700:NEXT:RETURN
2500 IF SA(PS)=6 AND DR$="SUD"THEN LOCATE#1,1,3:PEN#1,3:PRINT#1,"A droite : le sarcophage du pharaon":FOR TEMPS=1 TO 700:NEXT:RETURN
2510 IF SA(PS)=7 THEN PRINT CHR$(22)+CHR$(1):LOCATE 20,18:PEN 3:PRINT CHR$(247):LOCATE 20,19:PRINT CHR$(248):PRINT CHR$(22)+CHR$(0):LOCATE#1,1,3:PEN#1,3:PRINT#1,"Utile pour devenir riche...":FOR TEMPS=1 TO 700:NEXT:RETURN
2520 FOR Y=100 TO 160:MOVE 220,Y:DRAWR 200,0,3:NEXT Y:MOVE 220,160:DRAWR 200,0,0:Z=0:FOR Y=162 TO 192:MOVE 220+Z,Y:DRAWR 200-(2*Z),0,3:Z=Z+2:NEXT
2530 PRINT CHR$(22)+CHR$(1):PEN 2:LOCATE 16,17:PRINT CHR$(212);CHR$(213):LOCATE 16,18:PRINT CHR$(217);CHR$(217):PEN 1:LOCATE 19,17:PRINT CHR$(215):LOCATE 19,18:PRINT CHR$(216):PEN 2:LOCATE 21,17:PRINT CHR$(202):LOCATE 21,18:PRINT CHR$(214)
2540 PEN 1:LOCATE 24,17:PRINT CHR$(217);CHR$(217):LOCATE 24,18:PRINT CHR$(212);CHR$(213):PRINT CHR$(22)+CHR$(0):RETURN
2560 'EXISTANCE COMMANDE
2580 RESTORE 2600:FOR INC=1 TO 10:READ COMMANDE$:IF REP$=LEFT$(COMMANDE$,2)THEN TST=1:RETURN
2590 NEXT INC:SOUND 1,428,25:LOCATE#1,1,4:PRINT#1,"Commande inconnue !":FOR TEMPS=1 TO 250:NEXT:RETURN
2600 DATA AV1,DR2,DT3,GA4,PM5,PP6,PS7,QD8,QG9,SA10
2620 'LES PIECES
2640 DATA 0,0,1,1,0
2650 DATA 1,0,0,1,1
2660 DATA 0,0,0,1,1
2670 DATA 2,0,0,0,1
2680 DATA 0,0,0,1,0
2690 DATA 2,0,0,1,1
2700 DATA 0,0,2,2,1
2710 DATA 0,0,1,1,2
2720 DATA 7,0,1,1,1
2730 DATA 0,0,1,0,1
2740 DATA 3,1,1,0,0
2750 DATA 6,0,0,1,0
2760 DATA 0,0,2,0,1
2770 DATA 0,0,1,1,0
2780 DATA 3,0,0,1,1
2790 DATA 7,0,0,0,1
2800 DATA 7,2,1,0,0
2810 DATA 0,1,1,0,0
2820 DATA 0,1,1,0,0
2830 DATA 0,1,1,0,0
2840 DATA 7,1,1,1,0
2850 DATA 0,0,0,1,1
2860 DATA 0,2,1,1,1
2870 DATA 4,1,0,1,1
2880 DATA 0,0,2,1,1
2890 DATA 1,0,0,1,1
2900 DATA 0,1,1,0,1
2910 DATA 1,1,1,0,0
2920 DATA 3,1,1,0,0
2930 DATA 3,1,1,0,0
2940 DATA 0,1,2,0,0
2950 DATA 2,0,1,1,0
2960 DATA 0,1,0,1,1
2970 DATA 0,0,0,0,1
2980 DATA 7,2,1,0,0
2990 DATA 0,0,1,0,0
3000 DATA 5,1,1,0,0
3010 DATA 0,1,0,0,0
3020 DATA 0,1,2,0,0
3030 DATA 0,1,2,0,0
3040 DATA 4,2,1,0,0
3050 DATA 0,1,1,0,0
3060 DATA 5,0,1,1,0
3070 DATA 3,0,0,1,1
3080 DATA 0,1,0,1,1
3090 DATA 1,1,0,0,1
3100 DATA 3,1,1,0,0
3110 DATA 7,0,1,1,0
3120 DATA 0,2,0,1,1
3130 DATA 0,2,0,0,1
3140 DATA 7,1,1,0,0
3150 DATA 7,1,0,2,0
3160 DATA 0,1,1,0,2
3170 DATA 0,0,1,1,0
3180 DATA 0,0,0,1,1
3190 DATA 0,0,0,1,1
3200 DATA 0,1,1,0,1
3210 DATA 0,1,1,0,0
3220 DATA 0,0,1,1,0
3230 DATA 0,0,1,0,1
3240 DATA 0,1,1,1,0
3250 DATA 3,0,0,1,1
3260 DATA 2,1,0,1,1
3270 DATA 0,1,2,0,1
3280 DATA 2,0,0,1,0
3290 DATA 0,0,0,2,1
3300 DATA 0,1,2,0,2
3310 DATA 0,1,1,0,0
3320 DATA 2,1,1,0,0
3330 DATA 3,1,1,0,0
3340 DATA 4,1,1,0,0
3350 DATA 0,0,1,0,0
3360 DATA 0,0,1,1,0
3370 DATA 0,2,1,0,1
3380 DATA 1,0,1,0,0
3390 DATA 2,0,0,1,0
3400 DATA 0,2,0,1,1
3410 DATA 0,1,0,1,1
3420 DATA 0,1,1,0,1
3430 DATA 0,1,2,0,0
3440 DATA 0,1,1,2,0
3450 DATA 0,1,1,0,2
3460 DATA 7,1,1,0,0
3470 DATA 0,1,1,0,0
3480 DATA 0,1,1,2,0
3490 DATA 0,0,0,1,2
3500 DATA 0,0,0,1,1
3510 DATA 0,0,1,0,1
3520 DATA 7,1,0,0,0
3530 DATA 0,2,1,0,0
3540 DATA 7,1,0,0,0
3550 DATA 0,1,0,1,0
3560 DATA 0,1,0,0,1
3570 DATA 4,1,0,1,0
3580 DATA 0,1,0,0,1
3590 DATA 0,0,3,1,0
3600 DATA 0,0,0,1,1
3610 DATA 0,1,0,1,1
3620 DATA 3,0,0,1,1
3630 DATA 0,1,0,0,1
3650 REM 0=MUR,1=PORTE OUVERTE,2=PORTE FERMEE:3=SORTIE
3670 'CONTENU SALLES
3690 DATA rien a signaler.
3700 DATA un serpent.
3710 DATA un panier a provision
3720 DATA une fosse.
3730 DATA un scorpion.
3740 DATA une statue du pharaon
3750 DATA la chambre funeraire.
3760 DATA un sac de pieces d'or
3780 'REDEF.CARACTERES
3800 SYMBOL AFTER 211
3810 SYMBOL 212,255,128,128,128,128,128,240
3820 SYMBOL 213,255,1,1,1,1,1,15
3830 SYMBOL 214,255,255,24,24,24,24,24,24
3840 SYMBOL 215,60,66,129,129,2,4,4,4
3850 SYMBOL 216,4,4,4,4,4,4,4
3860 SYMBOL 217,0,0,0,34,85,136
3870 SYMBOL 218,200,212,228,196,197,254,254,252
3880 SYMBOL 219,68,140,135,131,132,68,60,50
3890 SYMBOL 220,73,132,130,227,149,137,149,231
3900 SYMBOL 221,34,34,34,36,36,40,46,62
3910 SYMBOL 222,0,6,9,1,1,254,248,72
3920 SYMBOL 223,7,8,16,63,32,32,16,15
3930 SYMBOL 224,224,16,8,252,4,4,8,240
3940 SYMBOL 225,28,34,85,65,99,85,73,73
3950 SYMBOL 226,85,65,34,20,28,28,28,56
3960 SYMBOL 227,112,224,199,205,249,58,132,120
3970 SYMBOL 228,7,11,19,33,65,143,136,142
3980 SYMBOL 229,224,208,200,132,130,241,17,113
3990 SYMBOL 230,137,137,248,11,4,2,1
4000 SYMBOL 231,145,145,31,208,32,64,128
4010 SYMBOL 253,126,66,90,66,90,66,90,126
4020 SYMBOL 251,0,0,3,29,225,137,145,137
4030 SYMBOL 252,145,137,145,225,29,3
4040 SYMBOL 249,0,0,192,184,135,145,137,145
4050 SYMBOL 250,137,145,137,135,184,192
4060 SYMBOL 247,0,0,0,0,0,255,129,66
4070 SYMBOL 248,63,66,129,129,129,129,66,60
4080 RETURN
4100 'SORTIE AVEC MASQUE
4120 MODE 1:INK 1,13:INK 2,1:INK 3,12:BORDER 0:WINDOW#1,1,40,1,25:PAPER#1,2:CLS#1:WINDOW#0,1,40,14,25:PAPER 3:CLS:FOR INC=1 TO 100:X=INT(RND(1)*639):Y=INT((RND(1)*200)+200):PLOT X,Y,1:NEXT
4130 FOR INC=0 TO 400 STEP 100:X=0:FOR Y=192 TO 202:MOVE X+INC,Y:DRAWR 200-(2*X),0,3:X=X+10:NEXT Y:NEXT INC:DEG:FOR ANG=70 TO 290 STEP 0.75:MOVE 100,340:DRAWR COS(ANG)*30,SIN(ANG)*30,1:NEXT
4140 Z=0:FOR Y=150 TO 310:MOVE 200+Z,Y:DRAWR 320-(2*Z),0,1:DRAWR 12-(0.12*Z),6,1:Z=Z+1:NEXT:MOVE 200,150:DRAWR 320,0,0:DRAWR-160,160:DRAWR-160,-160:MOVE 520,150:DRAWR 12,6,0:DRAW 360,310,0
4150 LOCATE 3,5:PEN 0:PRINT"Dehors c'est la nuit,l'air est frais":LOCATE 3,6:PRINT"et la lune brille dans le ciel etoile":LOCATE 3,7:PRINT"Bravo ! Vous avez gagne !!!"
4160 GOSUB 4630
4180 'CHUTE DANS LA FOSSE
4200 CLS
4210 MOVE 0,92:DRAWR 200,80,1:DRAWR 240,0:DRAWR 200,-80
4220 MOVE 0,380:DRAWR 200,-80,1:DRAWR 240,0:DRAWR 200,80
4230 MOVE 198,172:DRAWR 0,128:MOVE 442,172:DRAWR 0,128:LOCATE 16,11:PEN 3:PRINT CHR$(212);CHR$(213):LOCATE 20,11:PRINT CHR$(217);CHR$(217):LOCATE 24,11:PRINT CHR$(215):LOCATE 24,12:PRINT CHR$(216)
4240 MOVE 98,340:DRAWR 0,80,1:MOVE 520,333:DRAWR 0,80:LOCATE 20,8:PEN 2:PRINT CHR$(202):LOCATE 20,9:PEN 3:PRINT CHR$(214)
4250 LOCATE#1,1,3:PEN#1,3:PRINT#1,"Vous etes tombe dans la fosse":LOCATE#1,1,5:PRINT#1,"Vous etes mort !!!...":GOSUB 4530:END
4260 END
4280 'DESSINE MASQUE
4300 PRINT CHR$(22)+CHR$(1):LOCATE 20,14:PEN 0:PRINT CHR$(228);CHR$(229):LOCATE 20,15:PRINT CHR$(230);CHR$(231):PRINT CHR$(22)+CHR$(0):RETURN
4320 'EFFACE MASQUE
4340 PRINT CHR$(22)+CHR$(1):LOCATE 20,14:PEN 3:PRINT CHR$(228);CHR$(229):LOCATE 20,15:PEN 3:PRINT CHR$(230);CHR$(231):PRINT CHR$(22)+CHR$(0):RETURN
4360 'VERIF. RESERVES ENERGIE
4380 IF PV<=0 THEN PV=0:LOCATE#1,1,1:PEN#1,3:PRINT#1,"Energie :";PV:LOCATE#1,1,4:PRINT#1,"Vous etes mort !!!...":FOR TEMPS=1 TO 700:NEXT:GOSUB 4530
4390 IF PV>0 THEN RETURN
4410 'MUSIQUE D'INTRO.
4430 DI:RESTORE 4460
4440 READ L:IF L=-1 THEN RETURN
4450 READ M:SOUND 1,L*2,M,5:SOUND 2,L/2,M,5:SOUND 4,L,M,7:GOTO 4440
4460 DATA 71,20,80,20,71,50,80,20,89,20,95,20,106,20,113,55,106,90,142,20,159,20,142,50,190,35,179,35,225,60,213,80,284,20,319,20,284,50,319,20,358,20,379,20,426,20,451,50,426,90
4470 DATA 106,20,119,20,106,20,134,20,106,20,142,20,106,20,159,20,106,20,169,20,106,20,159,20,106,20,142,20,106,20,134,20,106,20,426,20,106,20,379,20,106,20,338,20,106,20,319,20,106,20
4480 DATA 338,20,106,20,319,20,106,20,284,20,106,20,134,40,106,40,134,40,106,40,100,40,319,40,100,40,319,40,119,40,142,40,119,40,142,40,106,40,358,40,106,40,358,40,134,40,319,40,134,40,319,40
4490 DATA 113,40,379,40,113,40,379,40,142,40,358,40,142,40,358,40,159,40,451,40,159,40,451,40,358,40,426,40,358,40,426,40,402,40,1136,40,402,40,956,40,284,100,-1
4510 'PARTIE PERDUE
4530 RESTORE 4560:FOR INC=1 TO 18:READ K,L
4540 ENT-1,1,1,3,1,-1,3,1,0,3,1,1,3,1,-1,3
4550 SOUND 1,K,L,5,0,1:SOUND 2,379,L,5,0,1:NEXT
4560 DATA 284,80,0,1,284,80,0,1,284,40,0,1,284,80,239,80,253,40,0,1,253,80,284,40,0,1,284,80,0,1,301,40,0,1,284,80
4570 CLS#1:LOCATE#1,1,3:INPUT#1,"Une autre partie (O/N) ";REP$:REP$=UPPER$(LEFT$(REP$,1)):IF REP$="N"THEN LOCATE#1,1,4:PRINT#1,"Alors,au revoir...":END
4580 IF REP$="O"THEN LOCATE#1,1,4:PRINT#1,"Bravo !Vous etes courageux !":FOR TEMPS=1 TO 700:NEXT:RUN 681
4590 END
4610 'PARTIE GAGNEE
4630 ENV 1,2,2,7,1,0,100
4640 RESTORE 4720:FOR INC=1 TO 107:READ A,D
4650 SOUND 1,A,5*D,9,1
4660 SOUND 2,A-0.5,5*D,9
4670 SOUND 4,A+0.5,5*D,9,1
4680 NEXT
4690 LOCATE 1,7:PRINT SPACE$(38):LOCATE 1,7:PEN 0:INPUT"Une autre partie (O/N) ";REP$:REP$=UPPER$(LEFT$(REP$,1)):IF REP$="N"THEN LOCATE 1,8:PRINT"Alors,au revoir...":END
4700 IF REP$="O"THEN LOCATE 1,8:PRINT"Bravo !Vous etes courageux !":FOR TEMPS=1 TO 700:NEXT:RUN 681
4710 END
4720 DATA 239,4,319,2,319,2,338,4,319,4
4730 DATA 239,4,319,2,319,2,338,4,319,4
4740 DATA 239,4,319,4,239,4,319,4,239,4
4750 DATA 319,4,239,4,319,4,379,4,319,4
4760 DATA 239,4,319,4,239,4,190,4,159,16
4770 DATA 159,8,179,4,190,4,213,8,190,4
4780 DATA 213,4,239,8,213,4,190,4,319,6
4790 DATA 284,2,319,4,1,4,159,8,179,4
4800 DATA 190,4,142,8,159,4,190,4,179,4
4810 DATA 159,2,179,2,190,4,179,2,190,2
4820 DATA 213,4,379,2,358,2,319,2,284,2
4830 DATA 253,2,239,2,213,4,213,2,213,2
4840 DATA 239,4,213,4,190,4,179,4,159,8
4850 DATA 213,4,190,4,179,8,190,4,213,4
4860 DATA 239,8,213,4,213,2,213,2,239,4
4870 DATA 213,4,190,4,179,4,159,8,253,4
4880 DATA 239,4,213,6,190,2,239,4,319,2
4890 DATA 319,2,338,4,319,4,239,4,319,2
4900 DATA 319,2,338,4,319,4,239,4,319,4
4910 DATA 239,4,319,4,239,4,319,4,379,4
4920 DATA 319,4,239,4,319,2,319,2,319,4
4930 DATA 319,4,239,12
4950 'REDEF.CARACTERES PAGE PRESENTATION
4970 SYMBOL AFTER 48
4980 SYMBOL 49,48,16,16,16,16,16,56
4990 SYMBOL 54,24,36,32,56,36,36,24
5000 SYMBOL 56,24,36,36,24,36,36,24
5010 SYMBOL 57,24,36,36,28,4,36,24
5020 SYMBOL 67,8,20,32,64,32,20,8
5030 SYMBOL 74,2,2,2,2,34,20,8
5040 SYMBOL 76,32,32,32,32,32,32,62
5050 SYMBOL 80,56,36,34,36,56,32,32
5060 SYMBOL 97,0,0,16,40,68,44,22
5070 SYMBOL 100,2,2,18,42,70,42,18
5080 SYMBOL 101,0,0,8,20,62,16,12
5090 SYMBOL 104,64,64,80,104,68,68,68
5100 SYMBOL 105,8,0,8,8,8,8,8
5110 SYMBOL 108,32,32,32,32,32,32,48
5120 SYMBOL 109,0,0,68,170,146,130,130
5130 SYMBOL 110,0,0,16,40,68,68,68
5140 SYMBOL 111,0,0,16,40,68,40,16
5150 SYMBOL 112,48,40,36,56,32,32,32
5160 SYMBOL 114,0,0,40,52,32,32,32
5170 SYMBOL 115,0,0,28,32,126,4,56
5180 SYMBOL 116,16,56,16,16,16,20,8
5190 SYMBOL 117,0,0,34,34,34,20,8
5200 SYMBOL 121,0,0,34,34,22,10,34,28
5210 SYMBOL 129,15,31,63,120,112,120,63,31
5220 SYMBOL 130,254,252,248,0,0,0,240,248
5230 SYMBOL 131,15,0,0,0,31,63,127
5240 SYMBOL 132,252,30,14,30,252,248,240
5250 SYMBOL 133,7,15,31,60,120,112,112,112
5260 SYMBOL 134,224,240,248,60,30,14,14,14
5270 SYMBOL 135,112,112,120,60,31,15,7
5280 SYMBOL 136,14,14,30,60,248,240,224
5290 SYMBOL 137,7,15,31,60,120,112,127,127
5300 SYMBOL 138,254,252,248,0,0,0,192,128
5310 SYMBOL 139,127,112,112,112,112,96,64
5320 SYMBOL 141,31,63,127,3,3,3,3,3
5330 SYMBOL 142,254,252,248,128,128,128,128,128
5340 SYMBOL 143,3,3,3,3,3,3,2
5350 SYMBOL 144,128,128,128,128,128
5360 SYMBOL 145,127,127,127,112,112,112,127,127
5370 SYMBOL 146,240,248,252,30,14,30,252,248
5380 SYMBOL 147,127,115,113,112,112,96,64
5390 SYMBOL 148,240,192,224,240,120,60,30
5400 SYMBOL 149,224,240,248,60,30,14,254,254
5410 SYMBOL 150,254,14,14,14,14,12,8
5420 SYMBOL 151,127,127,127,112,112,112,112,112
5430 SYMBOL 152,240,248,252,30,14,14,14,14
5440 SYMBOL 153,112,112,112,112,127,127,127
5450 SYMBOL 154,14,14,14,30,252,248,240
5460 RETURN