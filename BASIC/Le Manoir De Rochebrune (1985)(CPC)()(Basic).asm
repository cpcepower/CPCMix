10 '        * * * * * * * * * * *
20 '        *                   *
30 '        *     LE MANOIR     *
40 '        *                   *
50 '        *         DE        *
60 '        *                   *
70 '        *     ROCHEBRUNE    *
80 '        *                   *
90 '        * * * * * * * * * * *
100 '
110 '               par Laurent
120 '
130 '               et Pascal   Kerloch
140 '
150 '
160 '               Copyright 1985
170 '
180 ' ****************
190 ' * PRESENTATION *
200 ' ****************
210 MODE 1:BORDER 1
220 INK 0,0:INK 1,18:INK 2,6:INK 3,24
230 PEN 2: LOCATE 16,5:PRINT"Le Manoir"
240 LOCATE 20,8:PRINT"de"
250 LOCATE 16,11:PRINT"Rochebrune"
260 PEN 3
270 LOCATE 16,6:PRINT STRING$(9,CHR$(208))
280 LOCATE 20,9:PRINT STRING$(2,CHR$(208))
290 LOCATE 16,12:PRINT STRING$(10,CHR$(208))
300 PEN 1:LOCATE 20,15:PRINT"par Pascal"
310 PEN 1:LOCATE 20,17:PRINT"et Laurent Kerloch"
320 ENV 1,100,-0.5,20
330 ENV 2,50,-0.5,10
340 SOUND 1,239,60,12,1:SOUND 2,478,60,12,1
350 SOUND 1,319,30,12,2:SOUND 2,638,30,12,2
360 SOUND 1,319,30,12,2:SOUND 2,638,30,12,2
370 SOUND 1,239,60,12,1:SOUND 2,478,60,12,1
380 SOUND 1,190,60,12,1:SOUND 2,379,60,12,1
390 SOUND 1,169,60,12,1:SOUND 2,338,60,12,1
400 SOUND 1,190,30,12,2:SOUND 2,379,30,12,1
410 SOUND 1,190,30,12,2:SOUND 2,379,30,12,1
420 SOUND 1,169,60,12,1:SOUND 2,338,60,12,1
430 SOUND 1,190,60,12,1:SOUND 2,379,60,12,1
440 SOUND 1,169,120,12,1:SOUND 2,338,120,12,1
450 FOR ATT=1 TO 3000:NEXT ATT
460 '    ******************
470 '    * INITIALISATION *
480 '    ******************
490 MODE 1:RANDOMIZE TIME:RANDOMIZE RND
500 ROUTI=1:PARAM=1:DIM ARM$(12):DIM TRES$(12)
510 DATA Diamant,Lingot,Coffre,Sceptre,Couronne,Dague,Arc,Hache,Armure,Lance,Epee
520 FOR A=8 TO 12:READ A$:TRES$(A)=A$:NEXT A:FOR A=1 TO 12 STEP 2:READ A$:ARM$(A)=A$:ARM$(A+1)=A$:NEXT A
530 CLS:DIM ARM(120):DIM TRES (12):WINDOW #1,28,40,1,2:WINDOW #2,28,40,4,17:WINDOW #3,28,40,19,25:WINDOW #0,1,26,4,25:WINDOW #4,1,3,1,2:WINDOW #5,5,26,1,2
540 INK 0,0:INK 1,15:INK 2,6:INK 3,18:FOR A=0 TO 5:PAPER #A,0:NEXT A:PEN #0,1:PEN #1,1:PEN #2,3:PEN #3,2:PEN #4,3:PEN #5,2
550 BORDER 3
560 PLOT 50,400,2:DRAWR 0,-34,2:DRAWR -50,0,2:PLOTR 0,-12,2:DRAWR 418,0,2:DRAWR 0,-354,2:PLOTR 12,0,2:DRAWR 0,114,2:DRAWR 210,0,2:PLOTR 0,12,2:DRAWR -210,0,2:DRAWR 0,228,2:DRAWR 210,0,2:PLOTR 0,12,2:DRAWR -210,0,2:DRAWR 0,34,2:PLOTR -12,0,2:DRAWR 0,-34,2
570 DRAWR -358,0,2:DRAWR 0,34,2
580 PRINT" Des rumeurs circulent quidisent que le terrible    Baron de Dragonnaze garde sa fille, la Princesse    Helene, dans le Donjon de son Chateau, la Tour Noire "
590 PRINT" Vous avez decide de la   delivrer et vous vous     dirigez vers le sombre    Manoir de Rochebrune.":PRINT
600 IF INKEY$<>"" THEN 610 ELSE 600
610 CLS:PRINT" Le Sphinx qui en garde   l'entree vous enonce vos  droits et obligations :":PRINT
620 PRINT" Vous devez rassembler 5  Tresors differents et tuerle Mechant Baron qui des  votre arrivee se metamor- phose en un Terrifiant    Dragon."
630 PRINT:PRINT"Mais vous etes bien decidea tenter votre chance et  vous penetrez dans le Cha-teau. Le pont-levis se    referme derriere vous.":PRINT
640 IF INKEY$="" THEN 640 ELSE CLS
650 ' ********************************
660 ' * TIRAGE DE LA FORCE DE DEPART *
670 ' ********************************
680 PRINT #1,"Votre Force"
690 FRC=INT(RND(1)*10)+2
700 IF FRC=2 THEN PRINT"Vous n'avez pas de chance du tout, l'ordinateur ne  vous attribut que 2 pointsde valeur"
710 IF FRC>2 AND FRC<=5 THEN PRINT"Vous n'avez pas beaucoup":PRINT"de chance, l'ordinateur":PRINT"vous donne "FRC;" points de":PRINT"valeur"
720 IF FRC>5 AND FRC<10 THEN PRINT"Vous avez de la chance,   l'ordinateur vous donne   ";FRC;" points de valeur"
730 IF FRC>=10 AND FRC<=12 THEN PRINT"L'ordinateur vous apprecie";"vraiment beaucoup, il vous";"donne"FRC"points de valeur"
740 PRINT
750 ' *************
760 ' * RENCONTRE *
770 ' *************
780 FOR ATT=0 TO 3000:NEXT ATT:CLS
790 CLS #5:CLS #4
800 LOCATE #1,1,2:PRINT #1,"    "FRC
810 GOSUB 880
820 IF FRC<0 THEN 3900
830 RC=INT(RND(1)*100)+1
840 IF RC<=40 THEN 1050
850 IF RC<=65 THEN 2100
860 IF RC<=90 THEN 3130
870 IF RC<=100 THEN 2380
880 '           TABLEAU DES ARMES
890 LOCATE #2,1,1
900 PRINT#2,"Armes :":PRINT#2,""
910 FOR D=1 TO 120
920 IF ARM(D)=0 THEN 950
930 IF ARM(D)=12 THEN PRINT #2,"Epee de Feu":GOTO 950
940 PRINT #2,ARM$(ARM(D));TAB(9)ARM(D)
950 NEXT D
960 '           TABLEAU DES TRESORS
970 LOCATE #3,1,1
980 PRINT#3,"Tresors :":PRINT#3,""
990 FOR D=1 TO 6
1000 IF TRES(D)=0 THEN 1020
1010 PRINT #3,TRES$(TRES(D));TAB(9)TRES(D)
1020 NEXT D
1030 IF ROUTI=6 AND DRAGON=1 THEN 4090
1040 RETURN
1050 ' *****************************
1060 ' * RENCONTRE AVEC UN MONSTRE *
1070 ' *****************************
1080 '    TYPE DE MONSTRE
1090 TDM=INT(RND(1)*100)+1
1100 IF TDM<=2 THEN M$="e Licorne":B=5:GOTO 1300
1110 IF TDM<=5 THEN M$=" Centaure":B=8:GOTO 1300
1120 IF TDM<=8 THEN M$=" Spectre":B=4:GOTO 1300
1130 IF TDM<=10 THEN M$=" Gobelin":B=3:GOTO 1300
1140 IF TDM<=13 THEN M$=" Squelette":B=4:GOTO 1300
1150 IF TDM<=16 THEN M$="e Sorciere":B=5:GOTO 1300
1160 IF TDM<=19 THEN M$=" Sphinx":B=6:GOTO 1300
1170 IF TDM<=21 THEN M$="e Chimere":B=8:GOTO 1300
1180 IF TDM<=24 THEN M$=" Titan":B=10:GOTO 1300
1190 IF TDM<=27 THEN M$=" Demon":B=6:GOTO 1300
1200 IF TDM<=30 THEN M$=" Fantome":B=6:GOTO 1300
1210 IF TDM<=32 THEN M$="e Momie":B=5:GOTO 1300
1220 IF TDM<=35 THEN M$=" Diable":B=5:GOTO 1300
1230 IF TDM<=38 THEN M$=" Griffon":B=6:GOTO 1300
1240 IF TDM<=47 THEN M$=" Cobra":B=5:GOTO 1300
1250 IF TDM<=57 THEN M$=" Troll":B=9:GOTO 1300
1260 IF TDM<=66 THEN M$="e Goule":B=2:GOTO 1300
1270 IF TDM<=76 THEN M$=" Vampire":B=6:GOTO 1300
1280 IF TDM<=85 THEN M$=" Gnome":B=5:GOTO 1300
1290 IF TDM<=100 THEN M$=" Balrog":B=8:GOTO 1300
1300 '    FORCE DU MONSTRE
1310 FDM=B+(INT(RND(1)*3))
1320 PRINT"Vous etes attaque par":PRINT"un"M$" de force"FDM
1330 PRINT #5,"Monstre :"
1340 PRINT #5,"Un"M$" Force"FDM
1350 PRINT
1360 SOUND 1,319,16,5:SOUND 1,239,16,5:SOUND 1,253,16,5:SOUND 1,284,16,5
1370 SOUND 1,253,48,5:SOUND 1,239,16,5:SOUND 1,213,48,5:SOUND 1,190,16,5
1380 SOUND 1,213,16,5:SOUND 1,239,16,5:SOUND 1,253,16,5:SOUND 1,239,32,5
1390 SOUND 1,253,16,5:SOUND 1,284,48,5:SOUND 1,319,48,5
1400 REM    **********
1410 REM    * COMBAT *
1420 REM    **********
1430 INPUT"Voulez-vous combattre ce  monstre (O/N) ",DESIR$
1440 IF DESIR$="O" OR DESIR$="o" THEN 1460
1450 IF DESIR$="N" OR DESIR$="n" THEN 2050 ELSE 1430
1460 '    *******************
1470 '    * CHOIX DE L'ARME *
1480 '    *******************
1490 PRINT
1500 PRINT "Avec quelle arme voulez-  vous combattre ?":INPUT "  ( Si vous n'avez pas      d'arme tapez 0 )";VARM
1510 FOR V=0 TO 120
1520 IF ARM(V)=VARM OR VARM=0 THEN ABUS=0 : GOTO 1570
1530 NEXT V
1540 PRINT"Vous ne possedez pas cette arme ":ABUS=ABUS+1
1550 IF ABUS=10 THEN VARM=0:GOTO 1570
1560 GOTO 1460
1570 '    ********************
1580 '    * CALCUL DU COMBAT *
1590 '    ********************
1600 PRINT
1610 PRINT"Pour engager le combat    tapez sur une touche":PRINT
1620 CA=CA+1
1630 IF INKEY$<>"" THEN 1650
1640 GOTO 1620
1650 VCOMB=FDM-VARM
1660 IF VARM>FDM THEN VCOMB=0
1670 PRINT"Le combat est de force"VCOMB
1680 LOCATE #4,1,1:PRINT#4,"Des"
1690 FOR A=1 TO 20:SOUND 1,60,1,2
1700 DES=INT(RND(1)*10)+2
1710 DES$=(RIGHT$(STR$(DES),2))
1720 LOCATE #4,1,2:PRINT #4,DES$
1730 FOR B=1 TO 100:NEXT B
1740 NEXT A:SOUND 1,119,5,2
1750 IF DES<VCOMB THEN 1910
1760 IF DES>VCOMB THEN 1780
1770 IF DES=VCOMB THEN 1850
1780 '          *********
1790 '          * GAGNE *
1800 '          *********
1810 FRC=FRC+VCOMB
1820 PRINT"Vous avez gagne, les des  ont fait "DES
1830 PRINT
1840 GOTO 750
1850 '          *******************
1860 '          * LE MONSTRE FUIT *
1870 '          *******************
1880 PRINT"Le monstre fuit, les des  ont fait "DES
1890 PRINT
1900 GOTO 750
1910 '          *********
1920 '          * PERDU *
1930 '          *********
1940 FRC=FRC-VCOMB
1950 PRINT"Vous avez perdu, les des  ont fait "DES
1960 PRINT
1970 IF VARM=0 THEN 750
1980 FOR D=1 TO 120
1990 IF ARM(D)<>VARM THEN NEXT D
2000 ARM(D)=0
2010 NbArmes=NbArmes-1
2020 CLS #2
2030 GOSUB 880
2040 GOTO 750
2050 '    *********************
2060 '    * RETRAIT DE POINTS *
2070 '    *********************
2080 FRC=FRC-FDM
2090 GOTO 750
2100 ' ****************************
2110 ' * RENCONTRE AVEC UN TRESOR *
2120 ' ****************************
2130 VTRES=INT(RND(1)*5)+8
2140 IF RIGHT$(TRES$(VTRES),2)="ne" THEN T$="e " ELSE T$=" "
2150 PRINT"Vous avez trouve un"T$:PRINT TRES$(VTRES)" de valeur"VTRES
2160 PRINT
2170 SOUND 1,71,24,5:SOUND 1,60,48,5:SOUND 1,53,24,5:SOUND 1,47,98,5
2180 SOUND 1,53,24,5:SOUND 1,60,24,5:SOUND 1,53,24,5:SOUND 1,60,24,5
2190 SOUND 1,63,24,5:SOUND 1,71,120,5
2200 '         *********************
2210 '         * ACHAT DU TRESOR ? *
2220 '         *********************
2230 IF ROUTI=6 THEN PRINT"Mais vous avez deja les 5 tresors":PRINT:GOTO 750
2240 FOR D=1 TO 5
2250 IF TRES(D)=VTRES THEN PRINT"Mais vous possedez deja untresor de cette valeur":PRINT:GOTO 750
2260 NEXT D
2270 IF FRC<VTRES THEN PRINT"Mais ce tresor est trop   cher pour votre bourse":PRINT:GOTO 750
2280 INPUT "Voulez-vous l'acheter ?   (O/N) ";DESIR$
2290 IF DESIR$="O" OR DESIR$="o" THEN 2310
2300 IF DESIR$="N" OR DESIR$="n" THEN 750 ELSE 2280
2310 '         *******************************
2320 '         * CALCUL DE L'ACHAT DU TRESOR *
2330 '         *******************************
2340 TRES(ROUTI)=VTRES
2350 ROUTI=ROUTI+1
2360 FRC=FRC-VTRES
2370 GOTO 750
2380 ' *****************************
2390 ' * RENCONTRE AVEC LE SORCIER *
2400 ' *****************************
2410 PRINT"Vous rencontrez le sorcieret il vous propose son    aide en vous offrant un   sortilege."
2420 GOSUB 2490
2430 SOUND 1,239,64,5:SOUND 1,284,32,5:SOUND 1,284,48,5: SOUND 1,301,16,5
2440 SOUND 1,284,32,5:SOUND 1,253,64,5:SOUND 1,301,32,5:SOUND 1,379,64,5
2450 GOSUB 2490
2460 SOUND 1,239,48,5:SOUND 1,253,16,5:SOUND 1,284,32,5:SOUND 1,301,48,5
2470 SOUND 1,338,16,5:SOUND 1,301,32,5:SOUND 1,284,128,5
2480 GOTO 2530
2490 SOUND 1,284,32,5: SOUND 1,239,64,5:SOUND 1,213,32,5:SOUND 1,190,48,5
2500 SOUND 1,179,16,5:SOUND 1,190,32,5:SOUND 1,213,64,5 :SOUND 1,253,32,5
2510 SOUND 1,319,48,5:SOUND 1,284,16,5:SOUND 1,253,32,5
2520 RETURN
2530 '   ****************
2540 '   * CONSULTATION *
2550 '   ****************
2560 INPUT"Acceptez-vous ? (O/N) ",REP$
2570 IF REP$="O" OR REP$="o" THEN 2600
2580 IF REP$="N" OR REP$="n" THEN FOR ATT=0 TO 1500:NEXT ATT:CLS:GOTO 1050
2590 GOTO 2560
2600 '   *************
2610 '   * SORTILEGE *
2620 '   *************
2630 SORT=INT(RND(1)*100)+1
2640 IF SORT<=15 THEN 2730
2650 IF SORT>15 AND SORT<=45 THEN 2790
2660 IF SORT>45 AND SORT<=70 THEN 2830
2670 IF SORT>70 AND SORT<=75 THEN 2940
2680 IF SORT>75 AND SORT<=100 THEN 2690
2690 ROUTI=ROUTI-1:IF ROUTI=0 THEN ROUTI=1:GOTO 2630
2700 TRES(ROUTI)=0
2710 PRINT:PRINT" Le Sorcier vous retire un Tresor.":CLS #3:GOSUB 880
2720 GOTO 2960
2730 ARM(PARAM)=12
2740 PARAM=PARAM+1
2750 NbArmes=NbArmes+1
2760 GOSUB 880
2770 IF NbArmes<13 THEN PRINT:PRINT"  Le Sorcier vous fait donde l'Epee de feu grace a  laquelle vous pourrez tuerle Dragon" ELSE 2960
2780 GOTO 2960
2790 FRC=FRC+12
2800 PRINT:PRINT" Le Sorcier vous offre unefiole qui contient un ele-xir. Grace a cette potion vous gagnez 12 points de  Force."
2810 LOCATE #1,1,2:PRINT #1,"    "FRC
2820 GOTO 2960
2830 PRINT:PRINT"Le Sorcier vous offre deuxarmes de votre choix":PRINT
2840 FOR E=1 TO 2
2850 IF NbArmes>=12 THEN PRINT" Mais vous possedez deja  12 armes.":GOTO 2960
2860 INPUT"  Une arme de quelle Puis-sance desirez-vous ?",VARM
2870 IF VARM<2 OR VARM>11 THEN 2860
2880 ARM(PARAM)=VARM
2890 PARAM=PARAM+1
2900 NbArmes=NbArmes+1
2910 GOSUB 880:PRINT
2920 NEXT E
2930 GOTO 2960
2940 IF DRAGON=1 THEN 2600 ELSE PRINT:PRINT"Le Sorcier tue le Dragon avotre place, vous n'aurez donc pas a le faire"
2950 DRAGON=1
2960 '   *************************
2970 '   * COMBAT MONSTRE/DRAGON *
2980 '   *************************
2990 FOR ATT=0 TO 3000:NEXT ATT:CLS
3000 IF DRAGON=1 THEN 1050
3010 I=INT(RND(1)*2)+1
3020 IF I=1 THEN 1050
3030 ENV 1,6,4,5,9,-2,4,13,7,6,8,-1,5,3,7,8
3040 ENV 2,12,-2,6,13,5,6,8,-1,5,5,7,7,8,-4,9
3050 ENV 3,3,3,7,6,1,8,12,-3,4,7,3,3,3,-2,2
3060 ENT 1,4,-1,8,5,7,9,4,6,7,5,-5,9,15,9,8
3070 ENT 2,5,4,7,12,-1,9,6,1,8,8,-2,9,5,1,7
3080 ENT 3,4,-1,8,6,-2,9,12,3,5,12,-1,4,5,1,3
3090 SOUND 1,478,600,7,1,1,23
3100 SOUND 2,598,580,6,2,2,11
3110 SOUND 4,898,685,8,3,3,31
3120 GOTO 3400
3130 ' ***************************
3140 ' * RENCONTRE AVEC UNE ARME *
3150 ' ***************************
3160 VARM=INT(RND(1)*10)+2
3170 IF RIGHT$(ARM$(VARM),1)="e" THEN T$="e " ELSE T$=" "
3180  PRINT"Vous avez trouve un"T$:PRINT ARM$(VARM)" de valeur"VARM
3190 PRINT
3200 SOUND 1,478,24,5:SOUND 1,638,12,5:SOUND 1,478,12,5:SOUND 1,426,48,5
3210 SOUND 1,379,24,5:SOUND 1,478,12,5:SOUND 1,379,12,5:SOUND 1,319,48,5
3220 SOUND 1,284,12,5:SOUND 1,319,12,5:SOUND 1,284,12,5:SOUND 1,253,12,5
3230 SOUND 1,239,48,5
3240 '         *********************
3250 '         * ACHAT DE L'ARME ? *
3260 '         *********************
3270 IF FRC<VARM THEN PRINT"Vous ne pouvez pas achetercette arme":PRINT:GOTO 750
3280 IF NbArmes>=12 THEN PRINT"Vous avez deja 12 armes":PRINT:GOTO 750
3290 INPUT"Voulez-vous l'acheter ?   (O/N) ";DESIR$
3300 IF DESIR$="O" OR DESIR$="o" THEN 3320
3310 IF DESIR$="N" OR DESIR$="n" THEN 750 ELSE 3290
3320 '        *******************************
3330 '        * CALCUL DE L'ACHAT DE L'ARME *
3340 '        *******************************
3350 ARM(PARAM)=VARM
3360 PARAM=PARAM+1
3370 NbArmes=NbArmes+1
3380 FRC=FRC-VARM
3390 GOTO 750
3400 ' *************************
3410 ' * COMBAT AVEC LE DRAGON *
3420 ' *************************
3430 PRINT"  Un monstrueux Dragon de force 12 se dresse devant vous ; sa bouche crache   des Flammes.":PRINT:PRINT #5,"MONSTRE :":PRINT #5,"Un Dragon de Force 12"
3440 INPUT"Voulez-vous le combattre ";REP$
3450 IF REP$="N" OR REP$="n" THEN 3900
3460 IF REP$="O" OR REP$="o" THEN 3480
3470 GOTO 3440
3480 '   *******************
3490 '   * CHOIX DE L'ARME *
3500 '   *******************
3510 PRINT:PRINT "Avec quelle arme voulez-  vous combattre ?":INPUT "  ( Si vous n'avez pas      d'arme tapez 0 )";VARM
3520 FOR V=0 TO 120
3530 IF ARM(V)=VARM OR VARM=0 THEN ABUS=0 : GOTO 3580
3540 NEXT V
3550 PRINT"Vous ne possedez pas cette arme ":ABUS=ABUS+1
3560 IF ABUS=10 THEN VARM=0:GOTO 3580
3570 GOTO 3480
3580 '   ********************
3590 '   * CALCUL DU COMBAT *
3600 '   ********************
3610 PRINT:PRINT"Pour engager le combat    tapez sur une touche":PRINT
3620 CA=CA+1
3630 IF INKEY$<>"" THEN 3650
3640 GOTO 3620
3650 VCOMB=12-VARM
3660 IF VARM>12 THEN VCOMB=0
3670 PRINT"Le combat est de force"VCOMB
3680 LOCATE #4,1,1:PRINT#4,"Des"
3690 FOR A=1 TO 20:SOUND 1,60,1,2
3700 DES=INT(RND(1)*10)+2
3710 DES$=(RIGHT$(STR$(DES),2))
3720 LOCATE #4,1,2:PRINT #4,DES$
3730 FOR B=1 TO 100:NEXT B
3740 NEXT A:SOUND 1,119,5,2
3750 IF DES<VCOMB THEN 3900
3760 IF DES>VCOMB THEN 3830
3770 IF DES=VCOMB THEN 3780
3780 '       ***********
3790 '       * EX EQUO *
3800 '       ***********
3810 PRINT" Vous n'avez pas reussi a terrasser ce Dragon car   les des ont fait";DES;"Vous allez de nouveau lui etre confronte"
3820 GOTO 3440
3830 '       *********
3840 '       * GAGNE *
3850 '       *********
3860 DRAGON=1:CLS #5:FRC=FRC+VCOMB:LOCATE #1,1,2:PRINT #1,"    "FRC
3870 PRINT"Vous etes sorti victorieuxde ce terrible combat "
3880 FOR B=1 TO 2000:NEXT B
3890 CLS:IF ROUTI=6 THEN 4090 ELSE 2100
3900 '       ********
3910 '       * MORT *
3920 '       ********
3930 CLS:PRINT" Helas, les monstres du   Manoir de Rochebrune  ont eu raison de votre courageet de votre temerite, vousempechant ainsi de mener  a bien votre entreprise."
3940 PRINT:PRINT" Vous n'avez pas reussi a tuer le Pere de la Belle  Helene prisonniere de la  Tour Noire, et a reunir   les 5 Tresors du Chateau."
3950 PRINT:PRINT" D'autres Chevaliers vont essayer de delivrer la    Princesse mais votre prou-esse restera celebre dans les villages de ce triste pays.":PRINT
3960 GOSUB 4050
3970 SOUND 1,253,24,5:SOUND 1,284,24,5:SOUND 1,253,120,5
3980 GOSUB 4050
3990 SOUND 1,253,24,5:SOUND 1,239,24,5:SOUND 1,213,120,5:SOUND 1,190,24,5
4000 SOUND 1,179,48,5:SOUND 1,190,24,5:SOUND 1,213,48,5:SOUND 1,239,24,5
4010 SOUND 1,253,120,5
4020 GOSUB 4050
4030 SOUND 1,239,24,5:SOUND 1,253,24,5:SOUND 1,284,96,5
4040 END
4050 SOUND 1,284,24,5:SOUND 1,239,48,5:SOUND 1,284,24,5:SOUND 1,379,48,5
4060 SOUND 1,284,24,5:SOUND 1,239,120,5:SOUND 1,213,24,5:SOUND 1,190,24,5
4070 SOUND 1,213,24,5:SOUND 1,239,24,5:SOUND 1,253,24,5
4080 RETURN
4090 '   **********
4100 '   * GLOIRE *
4110 '   **********
4120 CLS:PRINT" Vous avez vaincu le Baronde Rochebrune et reuni les5 Tresors, ce qui vous    donne l'acces a la Tour   Noire dans laquelle vous  attend la Belle Helene.":PRINT
4130 IF INKEY$="" THEN 4130 ELSE CLS
4140 PRINT" La Mort du Dragon marque la fin du malefice que le Baron avait jete sur ce   pays :":PRINT
4150 PRINT"Un vent violent chasse lesnuages noirs qui s'etaientamonceles et decouvre un  ciel d'azur.":PRINT
4160 PRINT" Apres votre depart, les  villageois virent le Cha- teau s'embraser et quand  la fumee se dissipa, il nerestait plus pierre sur   pierre. Pendant des siecles rien ne poussa en ces   lieux."
4170 PRINT
4180 ENV 1,15,-1,5
4190 SOUND 1,478,32,15,1:SOUND 1,358,32,15,1
4200 SOUND 1,358,16,15,1:SOUND 1,319,16,15,1
4210 SOUND 1,284,32,15,1:SOUND 1,358,32,15,1
4220 SOUND 1,239,64,15,1:SOUND 1,284,48,15,1
4230 SOUND 1,284,16,15,1:SOUND 1,268,32,15,1
4240 SOUND 1,239,16,15,1:SOUND 1,268,16,15,1
4250 SOUND 1,284,16,15,1:SOUND 1,268,16,15,1
4260 SOUND 1,239,32,15,1:SOUND 1,319,16,15,1
4270 SOUND 1,358,16,15,1:SOUND 1,319,16,15,1
4280 SOUND 1,284,16,15,1:SOUND 1,319,32,15,1
4290 SOUND 1,478,32,15,1:SOUND 1,358,32,15,1
4300 SOUND 1,358,16,15,1:SOUND 1,319,16,15,1
4310 SOUND 1,284,32,15,1:SOUND 1,358,32,15,1
4320 SOUND 1,239,64,15,1:SOUND 1,284,48,15,1
4330 SOUND 1,284,16,15,1:SOUND 1,268,16,15,1
4340 SOUND 1,239,16,15,1:SOUND 1,284,16,15,1
4350 SOUND 1,268,16,15,1:SOUND 1,319,48,15,1
4360 SOUND 1,358,16,15,1:SOUND 1,358,96,15,1