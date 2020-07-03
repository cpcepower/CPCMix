10 '
20 ' QUELQUES MESSAGES POUR CEUX QUI LISENT MON LISTING :
30 '
40 ' POUR LES PIRATES, MERDE !!!! BANDES DE CONS !!!! STOP.
50 '
60 ' POUR LES MESSIEURS DE LANKHOR (EN PARTICULARITE BRUNO), MERCI.
70 '
80 ' POUR LES DEPLOMBEURS, MON JEU N'EST PAS PLOMBE. INUTILE DE CONTINUER.
90 '
100 ' POUR CEUX QUI LISE CA PAR PUR HASARD (MON OEIL), PAS TOUCHE AU PROGRAMME.
110 '
120 ' ET ENFIN,POUR MOI(BEN OUAIS QUOI,J'AI PAS L'DROIT D'LIRE MON PROGRAMME ?)
130 '
140 ' SALUT A TOI. FIN DE CES MESSAGES.
150 '
160 ' P.S:JE REMERCIE EGALEMENT POUM,ALIAS ALAIN MASSOUMIPOUR,POUR LA SOLUTION
170 '     DU PASSAGER DU TEMPS (AUCUN RAPPORT).
180 '
190 ' METTEZ VOUS EN MODE 2, CA IRA MIEUX.
200 '
210 '
220 IF PEEK(&FFCC)<>2 THEN CALL 0:|BASIC:NEW:DELETE:END
230 ON ERROR GOTO 5950
240 MODE 1:CLS
250 MEMORY 37265:LOAD"ecran.aff",37266:POKE 37290,&C9:POKE 37267,&AB:POKE 37277,51:POKE 37268,&91:affiche=37266:debut=37291
260 POKE &BE78,1:POKE &BDEE,&C9:KEY DEF 66,0,0,0,0
270 MODE 1:PAPER 0:CLS:INK 0,0:INK 1,26:INK 2,24:INK 3,6:BORDER 0
280 PEN 3:FOR n=2 TO 39:LOCATE n,1:PRINT"ö";
290 LOCATE n,25:PRINT"ö";:LOCATE n,19:PRINT"ö";:NEXT
300 FOR n=2 TO 24:LOCATE 1,n:PRINT"ï";
310 LOCATE 40,n:PRINT"ï";:NEXT
320 FOR n=2 TO 26:LOCATE n,15:PRINT"ö";:LOCATE N,17:PRINT"ö";:NEXT
330 FOR n=2 TO 19:LOCATE 27,n:PRINT"ï";:NEXT
340 LOCATE 1,1:PRINT"ñ";:LOCATE 1,25:PRINT"ì";
350 LOCATE 40,1:PRINT"ú";:LOCATE 40,25:PRINT"ô";
360 LOCATE 27,1:PRINT"û";:LOCATE 27,19:PRINT"õ";
370 LOCATE 1,19:PRINT"ó";:LOCATE 40,19:PRINT"ù";
380 LOCATE 27,15:PRINT"ù";:LOCATE 1,15:PRINT"ó";
390 LOCATE 27,17:PRINT"ù";:LOCATE 1,17:PRINT"ó";
400 case=3:WINDOW #0,2,39,20,24
410 WINDOW #1,2,26,16,16:PEN#1,2
420 WINDOW #2,28,39,2,18:PEN #2,1
430 WINDOW #3,2,26,2,14:PEN #3,1
440 WINDOW #4,2,26,18,18:PEN #4,2
450 PEN 1:GOSUB 2320
460 GOSUB 1810:PRINT#1,"Copyright 1991 LANKHOR.":PRINT"         Programme entierement":PRINT"       realise par Sylvain GUEHL":PRINT:PRINT"Appuyez sur la barre d'espacement pour";:PRINT"           commencer a jouer";
470 GOSUB 580
480 FOR n=1 TO 6:PRINT:NEXT:CLS #3:CLS:CLS #1
490 PRINT#4,"DIRECTIONS : ":WINDOW #4,15,26,18,18:PEN #4,1
500 case=32:GOSUB 1810
510 m$="Arnold, le domestique,vous fait entrerdans le hall.":GOSUB 550
520 EVERY 4000,1 GOSUB 2170
530 CALL &BB03
540 GOTO 720
550 FOR n=1 TO LEN(m$)
560 PRINT MID$(m$,n,1);:SOUND 1,0,3
570 FOR t=1 TO 15:NEXT t,n:PRINT:RETURN
580 ENV 1,15,-1,1:ENT 2,10,-1,0,10,1,1:ENV 2,1,-1,4:RESTORE 700
590 EVERY 15,1 GOSUB 670
600 EVERY 60,3 GOSUB 660
610 EVERY 15,2 GOSUB 680
620 WHILE INKEY$<>"":WEND
630 a$=UPPER$(INKEY$):IF a$<>" " THEN 630
640 FOR h=0 TO 3:mu=REMAIN(h):NEXT:EI
650 RETURN
660 DI:SOUND 2,0,15,15,1,0,1:SOUND 2,0,15,15,1,0,5:EI:RETURN
670 DI:SOUND 2,0,15,15,1,0,5:EI:RETURN
680 DI:READ s:IF s=0 THEN EI:RETURN ELSE IF s=-1 THEN RESTORE 700:GOTO 680 ELSE 690
690 SOUND 1,s,30,14,0,2:SOUND 4,s*2,30,15,0,2:EI:RETURN
700 DATA 451,0,379,0,301,0,0,451,0,379,0,301,301,451,0,379,0,301,0,0,451,379,0,301,301,338,0,284,0,225,0,0,338,284,0,225,225,338,0,284,0,225,0,0,338,284,0,225,225
710 DATA 451,0,379,0,301,0,0,451,0,379,0,301,301,451,0,379,0,301,0,0,451,379,0,301,301,338,0,301,338,338,379,0,451,-1
720 '
730 GOSUB 2030:GOSUB 2110
740 GOSUB 860:IF LEN(PH$)<2 THEN GOSUB 6180:GOTO 730
750 IF VERBE=8 AND OBJET=22 AND RIGHT$(PH$,10)="DANS TROU " AND case=25 AND placard=1 AND obj(15)=200 THEN M$="D'accord":GOSUB 550:obj(15)=110:verbe=100:nobj=nobj-1
760 IF VERBE=0 THEN GOSUB 5970:GOTO 720
770 ON VERBE GOSUB 2960,3040,3110,3150,3210,3280,3340,3430,3500,3610,3710,3730,3740,3890,4040,4070,4080,4090,4180,4190,4200,4250,4270,4330,4340,4350,4360,4370,4380,4390,4470,4530,4540,4550,4560,4570,4580,4720,4730
780 IF verbe=40 THEN GOSUB 5610
790 IF verbe=41 THEN GOSUB 5700
800 IF verbe=42 THEN GOSUB 5710
810 IF verbe=43 THEN GOSUB 5720
820 IF verbe=44 THEN GOSUB 5730 ELSE IF verbe=45 THEN GOSUB 5790
840 IF mort=1 THEN GOSUB 6050:LOAD"case4.bin",debut:CALL affiche:CLS #1:CLS #4:CLS #2:CLS:PRINT#1,"VOTRE TOMBE":PRINT"APPUYEZ SUR Q POUR QUITTER":GOSUB 6050:IF r$<>"Q" THEN GOSUB 6210:CLS:PRINT"Ok.":POKE &FFCC,2:RUN ELSE CALL 0:|BASIC:CLS:NEW
850 GOTO 730
860 '
870 ' ANALYSEUR DE SYNTAXE
880 '
890 VERBE=0:OBJET=0
900 PEN 2
910 '
920 X=1:Y=VPOS(#0):LONG=0:LMAX=37:PH$="":IF y=5 THEN PRINT
930 '
940 ' SAISIE DE LA PHRASE
950 '
960 A$=UPPER$(INKEY$):CUR=CUR XOR 1:LOCATE X+LONG,Y
970 PRINT CHR$(32+CUR*63);:IF A$="" THEN 960
980 IF A$=CHR$(13) THEN 1180
990 IF A$=CHR$(127) THEN 1120
1000 IF A$=CHR$(32) THEN 1060
1010 IF A$>CHR$(239) AND A$<CHR$(244) THEN 1670
1020 IF A$=CHR$(224) THEN 1750
1030 IF A$<"A" THEN 960
1040 IF A$>"Z" THEN 960
1050 '
1060 IF LONG=LMAX THEN 960
1070 LOCATE X+LONG,Y:PRINT A$;
1080 SOUND 1,0,1,10,0,0,1
1090 PH$=PH$+A$
1100 LONG=LONG+1:GOTO 960
1110 '
1120 IF LONG=0 THEN 960
1130 LOCATE X+LONG,Y:PRINT CHR$(32);
1140 SOUND 1,0,1,6,0,0,30
1150 PH$=LEFT$(PH$,LEN(PH$)-1)
1160 LONG=LONG-1:GOTO 960
1170 '
1180 LOCATE X+LONG,Y:PRINT CHR$(46);
1190 PH$=PH$+" ":IF LONG=0 THEN RETURN
1200 '
1210 ' LES VERBES
1220 '
1230 MOT$="":FOR I=1 TO LEN(PH$)
1240 L$=MID$(PH$,I,1)
1250 IF L$<>CHR$(32) THEN MOT$=MOT$+L$:GOTO 1280
1260 RESTORE 1460:SYNO=1:GOSUB 1410:MOT$=""
1270 IF TROUV<>0 THEN VERBE=TROUV:GOTO 1320
1280 NEXT I
1290 '
1300 ' LES OBJETS
1310 '
1320 MOT$="":FOR I=1 TO LEN(PH$)
1330 L$=MID$(PH$,I,1)
1340 IF L$<>CHR$(32) THEN MOT$=MOT$+L$:GOTO 1370
1350 RESTORE 1610:SYNO=1:GOSUB 1410:MOT$=""
1360 IF TROUV<>0 THEN OBJET=TROUV:GOTO 1390
1370 NEXT I
1380 '
1390 PRINT:PEN 1:RETURN ' SORTIE DU SOUS PROGRAMME
1400 '
1410 TROUV=0:IF LEN(MOT$)=0 THEN RETURN
1420 READ A$:IF A$="**" THEN RETURN
1430 IF A$="*" THEN SYNO=SYNO+1
1440 IF A$<>LEFT$(MOT$,LEN(A$)) THEN 1420
1450 TROUV=SYNO:RETURN
1460 '
1470 ' LISTE DES VERBES
1480 '
1490 DATA NORD,AVANC,*,SUD,RECUL,*,EST,DROIT,*,OUEST,GAUCH,*,MONT,GRIMP,HAUT,*
1500 DATA DESCEN,BAS,*,PREN,SAIS,ATTRA,VOL,*,POS,MET,*,INVENT,LIST,*
1510 DATA CON,SALOP,CONNARD,IDIOT,IMBECILE,ENCULE,ENFOIRE,MERDE,CHIOT,*,PUTAIN,PUTE,*
1520 DATA PEDE,PEDALE,GOUINE,LESBIENNE,*,EXAMIN,REGARD,*,FOUILL,CHERCH,*,AIDE,HELP,SOS,*
1530 DATA EMBRASS,BAIS,*,LECH,SUCE,*,TOURN,RETOURN,*,POUSS,*,TIRE,*
1540 DATA SOULEV,LEV,*,FRAPP,TAP,*,CREVE,ENFONC,DEFONC,CASS,*,CHAUFF,BRUL,*
1550 DATA TUE,ASSASSIN,TABASS,COMBAT,*,SUICID,FIN,STOP,*,NON,OUI,SI,*,QUI,*,QUOI,*,OUVR,*,FERM,*
1560 DATA QUAND,*,COMMENT,*,URINE,PIPI,CACA,*,BONJOUR,SALUT,*
1570 DATA REVOIR,DEMAIN,BIENTOT,TCHAO,*,ALLUM,BRANCH,*,ETEIN,DEBRANCH,*,DISCUT,PARL,*
1580 DATA ENTR,*,SORS,SORT,DEHORS,HORS,*,MERCI,REMERCI,*,EXCUS,PARDON,DESOLE,*,JOUE,*,RANGE,**
1590 '
1600 ' LISTE DES OBJETS
1610 '
1620 DATA BOBBY,*,MARIA,*,SOPHIA,*,LUC,*,ARNOLD,*,ROLAND,*,GARAGE,*
1630 DATA MEUBLE,PLACARD,COMMODE,BUFFET,*,ESCALIER,MARCHE,*
1640 DATA TABLE,*,CHAIS,FAUTEUIL,CANAPE,*,TAPIS,*,DALLE,PIERRE,*,PORTE,*
1650 DATA SOL,PLANCHER,*,TROU,MUR,CLOISON,*,TABLEAU,CADRE,*,SERRURE,POIGNEE,*
1660 DATA ETAGERE,*,TELE,*,BORNE,ARCADE,MACHINE,*,BATON,*,OREILLER,COUSSIN,*,ORDI,*,COFFRE,**
1670 '
1680 ' TOUCHES DE DIRECTIONS
1690 '
1700 A=ASC(A$)-240:PRINT CHR$(8);:ph$="?????"
1710 IF A=0 THEN PRINT"NORD.":VERBE=1:OBJET=0:PEN 1:RETURN
1720 IF A=1 THEN PRINT"SUD.":VERBE=2:OBJET=0:PEN 1:RETURN
1730 IF A=2 THEN PRINT"OUEST.":VERBE=4:OBJET=0:PEN 1:RETURN
1740 PRINT"EST.":VERBE=3:OBJET=0:PEN 1:RETURN
1750 '
1760 ' TOUCHE DE L'AIDE
1770 '
1780 PRINT CHR$(8);"AIDE.":ph$="?????"
1790 VERBE=15:OBJET=0:PEN 1
1800 RETURN
1810 'Acces disc
1820 IF case=25 AND placard=1 THEN a$="case34.bin":GOTO 1850
1830 IF case=32 AND placard=1 THEN a$="case5.bin":GOTO 1850
1840 IF case<10 THEN a$="CASE"+RIGHT$(STR$(case),1)+".BIN" ELSE a$="CASE"+RIGHT$(STR$(case),2)+".BIN"
1850 LOAD a$,debut:CALL affiche:CLS #1:PRINT #1,ph$(case);:GOSUB 1950
1860 IF case=24 THEN INK 2,13
1870 IF case=25 THEN INK 2,24
1880 CLS
1890 IF case=25 THEN qu(5)=1
1900 IF case=12 THEN qu(3)=1
1910 IF case=19 THEN qu(2)=1
1920 IF case=28 THEN qu(8)=1
1930 IF case=42 THEN qu(6)=1
1940 RETURN
1950 ' DIRECTIONS
1960 CLS #4
1970 IF MID$(DIR$(CASE),1,1)="O" THEN PRINT#4,"N-";
1980 IF MID$(DIR$(CASE),2,1)="O" THEN PRINT#4,"S-";
1990 IF MID$(DIR$(CASE),3,1)="O" THEN PRINT#4,"E-";
2000 IF MID$(DIR$(CASE),4,1)="O" THEN PRINT#4,"O-";
2010 PRINT #4,CHR$(8);" ";
2020 RETURN
2030 'OBJETS PRESENTS
2040 CLS #2:Z=0
2050 FOR N=1 TO 17
2060 IF OBJ(N)=CASE AND N=11 THEN PRINT #2,OBJ$(N);:Z=1
2070 IF OBJ(N)=CASE AND N<>11 THEN PRINT #2,OBJ$(N):Z=1
2080 NEXT N
2090 IF Z=0 THEN PRINT#2:PRINT#2:PRINT#2,"   Aucun":PRINT#2:PRINT#2:PRINT#2:PRINT#2,"   objet":PRINT#2:PRINT#2:PRINT#2:PRINT#2,"    ici"
2100 RETURN
2110 'PERSONNAGES PRESENTS
2120 Z=0:FOR N=1 TO 6:IF PER(N)=CASE THEN Z=Z+1:A$(Z)=PER$(N)
2130 NEXT N
2140 IF Z=0 THEN M$="Vous etes seul."
2150 IF Z<>0 THEN M$="Il y a ":FOR n=1 TO z:m$=m$+a$(n)+",":NEXT:M$=m$+CHR$(8)+" avec vous."
2160 GOSUB 550:RETURN
2170 'deplace personnes
2180 FOR pers=1 TO 6
2190 p=INT(RND*10):IF p=10 THEN 2190
2200 IF p=1 THEN p=32:GOTO 2300
2210 IF p=2 THEN p=31:GOTO 2300
2220 IF p=3 THEN p=33:GOTO 2300
2230 IF p=4 THEN p=40:GOTO 2300
2240 IF p=5 THEN p=39:GOTO 2300
2250 IF p=6 THEN p=18:GOTO 2300
2260 IF p=7 THEN p=27:GOTO 2300
2270 IF p=8 THEN p=19:GOTO 2300
2280 IF p=9 THEN p=20:GOTO 2300
2290 IF p=0 THEN p=7
2300 per(pers)=p:NEXT pers
2310 RETURN
2320 ' Variables
2330 RESTORE 2320
2340 nobj=0
2350 DIM obj$(17),obj(17),per$(6),per(6),DIR$(42)
2360 DIM aid$(42),ph$(42),qu(9)
2370 FOR n=1 TO 17:READ obj$(n),obj(n):NEXT
2380 DATA "Couteau",100,"Clef",100,"Feuille",100,"Briquet",31
2390 DATA "Allumettes",100,"Bourse",100,"Loupe",100,"Livre",42
2400 DATA "Lunettes",20,"Corde",100,"Fer a souder",100
2410 DATA "Cartes",11,"Gaz",28,"Oxygene",41,"Batonnet",100
2420 DATA "Lampe",19,"Pile",100
2430 FOR n=1 TO 6:READ per$(n),per(n):NEXT
2440 DATA "Bobby",39,"Maria",33,"Sophia",14,"Luc",39
2450 DATA "Arnold",32,"Roland",31
2460 FOR n=1 TO 11:READ t,aid$(t):NEXT
2470 DATA 31,"Soyez curieux",33
2480 DATA "Mon 1er fait mal,mon 2e est... et puiszut! Debrouillez vous.",14
2490 DATA "La fortune vient en dormant",39
2500 DATA "Si vous voulez entrer, utilisez le    verbe que je viens d'employer",10
2510 DATA "Il faut l'ouvrir",20
2520 DATA "Faites comme chez vous",19
2530 DATA "Mais quelle est la marque du seul qui fonctionne ?",27
2540 DATA "Trouvez la clef",12
2550 DATA "Et si on jouait un peu ?",13
2560 DATA "Roonn...zzzz...ron...zzzz..."
2570 DATA 42,"Il n'y a que la tele qui vous occupe?"
2580 FOR n=1 TO 9:READ qu(n):NEXT
2590 DATA 0,0,0,1,0,0,1,0,1
2600 READ x:FOR n=1 TO x:READ t,ph$(t):NEXT
2610 DATA 28
2620 DATA 6,"LES W.C"
2630 DATA 7,"LA SALLE DE BAIN"
2640 DATA 13,"CHAMBRE DE MARIE & LUC"
2650 DATA 14,"CHAMBRE DE SOPHIA"
2660 DATA 22,"LA SORTIE"
2670 DATA 32,"LE HALL"
2680 DATA 31,"LE GARAGE"
2690 DATA 38,"L'ETABLI"
2700 DATA 33,"LA CUISINE"
2710 DATA 40,"UNE PIECE TRANSITOIRE"
2720 DATA 41,"LA CAVE"
2730 DATA 25,"UN PLACARD"
2740 DATA 34,"UN PLACARD"
2750 DATA 39,"LE COULOIR"
2760 DATA 24,"UN PASSAGE SECRET"
2770 DATA 17,"UNE PIECE VIDE"
2780 DATA 10,"LE COFFRE FORT"
2790 DATA 18,"LE COULOIR DE DROITE"
2800 DATA 11,"LA SALLE DE JEUX"
2810 DATA 12,"LES BORNES ARCADES"
2820 DATA 27,"LE COULOIR DE GAUCHE"
2830 DATA 20,"LE BUREAU"
2840 DATA 21,"LE BAZARD PARTOUT"
2850 DATA 19,"LES ORDINATEURS"
2860 DATA 26,"UN ORDINATEUR"
2870 DATA 28,"LE GRENIER"
2880 DATA 35,"LE JEU PAC.MAN"
2890 DATA 42,"LA TELEVISION"
2900 READ P:FOR N=1 TO P:READ T:READ DIR$(T):NEXT
2910 DATA 24
2920 DATA 32,ONOO,31,NNON,33,NONO,40,ONNN,25,NONN,24,ONNN,17,OONN,00,NNNN
2930 DATA 10,NONN,18,OONN,11,NOON,12,NNNO,06,NONN,07,NONN,13,NONN,14,NONN
2940 DATA 28,NNNN,27,OONN,20,NONO,19,NNON,21,NONO,22,ONNN,39,ONOO,34,NONN
2950 RETURN
2960 'nord
2970 IF case=18 AND porte=0 THEN m$="La porte est fermee a clef.":GOSUB 550:qu(1)=1:RETURN
2980 IF case=17 AND porpas=0 THEN m$="Elle est fermee a clef.":GOSUB 550:RETURN
2990 IF case=39 THEN m$="De quel cote tournez-vous (G/D)?":GOSUB 550:GOSUB 6050:IF r$<>"G" AND r$<>"D" THEN 2960 ELSE IF r$="D" THEN PRINT"A droite":case=18:GOSUB 1810:RETURN ELSE PRINT"A gauche":case=27:GOSUB 1810:RETURN
3000 IF nonmes=1 THEN nonmes=0:IF MID$(dir$(case),1,1)="O" THEN case=case-7:GOSUB 1810:RETURN
3010 IF case=32 THEN GOSUB 6210
3020 IF MID$(dir$(case),1,1)="O" THEN case=case-7:GOSUB 6100:GOSUB 1810:RETURN
3030 m$="Plutot mourir":GOSUB 550:RETURN
3040 'SUD
3050 IF case=21 THEN m$="Rangez d'abord tout le bazard que vousavez mis !!!":GOSUB 550:RETURN
3060 IF case=11 AND porte=0 THEN m$="La porte est fermee a clef.":GOSUB 550:RETURN
3070 IF case=18 OR case=27 OR CASE=6 OR CASE=7 OR CASE=13 OR CASE=14 THEN CASE=39:PRINT"Recu 5 sur 5":GOSUB 1810:RETURN
3080 IF case=25 THEN GOSUB 6210
3090 IF MID$(dir$(case),2,1)="O" THEN case=case+7:GOSUB 6100:GOSUB 1810:RETURN
3100 m$="Non et non":GOSUB 550:RETURN
3110 'EST
3120 IF case=39 THEN m$="Utilisez le verbe 'Entrer'":GOSUB 550:RETURN
3130 IF MID$(dir$(case),3,1)="O" THEN case=case+1:GOSUB 6100:GOSUB 1810:RETURN
3140 m$="Je n'ai pas envie":GOSUB 550:RETURN
3150 'OUEST
3160 IF case=21 THEN m$="Rangez d'abord tout le bazard que vousavez mis !!!":GOSUB 550:RETURN
3170 IF case=35 THEN case=12:GOSUB 1810:RETURN
3180 IF case=39 THEN m$="Utilisez le verbe 'Entrer'":GOSUB 550:RETURN
3190 IF MID$(dir$(case),4,1)="O" THEN case=case-1:GOSUB 6100:GOSUB 1810:RETURN
3200 m$="Si je veux":GOSUB 550:RETURN
3210 'MONTER
3220 IF case=24 AND obj(10)<>200 THEN m$="Vous n'avez rien pour remonter !":GOSUB 550:m$="Vous etes condamne a rester ici...":GOSUB 550:mort=1:RETURN
3230 IF case=24 AND obj(10)=200 THEN m$="Vous remontez avec la corde.":GOSUB 550:case=25:GOSUB 1810:RETURN
3240 IF CASE<>32 AND CASE<>39 AND case<>41 THEN M$="Malheureux! Avec votre vertige ?!":GOSUB 550:RETURN
3250 IF CASE=32 THEN PRINT"D'accord":CASE=39:GOSUB 6210:GOSUB 1810:M$="L'escalier continue plus haut mais    vous vous arretez ici, le 1er etage.":GOSUB 550:RETURN
3260 IF case=41 THEN GOSUB 6210:case=40:PRINT"Ok":GOSUB 1810:RETURN
3270 case=28:PRINT"OK":GOSUB 1810:RETURN
3280 'DESCENDRE
3290 IF CASE<>39 AND CASE<>40 AND case<>28 THEN M$="Quelle bassesse...":GOSUB 550:RETURN
3300 IF case=39 THEN case=32:GOSUB 6210
3310 IF case=40 THEN case=41:GOSUB 6210
3320 IF case=28 THEN case=39
3330 PRINT"D'accord":GOSUB 1810:RETURN
3340 ' PRENDRE
3350 IF objet=22 AND case=25 AND placard=1 AND obj(15)=110 AND nobj<5 THEN m$="D'accord":GOSUB 550:obj(15)=200:nobj=nobj+1:RETURN
3360 IF objet=22 AND case=25 AND placard=1 AND obj(15)=110 AND nobj=5 THEN m$="Vous etes trop charge !":GOSUB 550:RETURN
3370 z=0:FOR n=1 TO 17
3380 IF LEFT$(RIGHT$(ph$,LEN(obj$(n))+1),LEN(obj$(n)))=UPPER$(obj$(n)) AND obj(n)=case THEN z=n:n=17
3390 NEXT n:IF nobj=5 THEN m$="Vous etes trop charge !":GOSUB 550:RETURN
3400 IF z<>0 THEN m$="D'accord":GOSUB 550:obj(z)=200:nobj=nobj+1:RETURN
3410 IF INT(RND*2)=0 THEN m$="Pas touche." ELSE m$="Touche a tes fesses."
3420 GOSUB 550:RETURN
3430 'POSER
3440 z=0:FOR n=1 TO 17
3450 IF LEFT$(RIGHT$(ph$,LEN(obj$(n))+1),LEN(obj$(n)))=UPPER$(obj$(n)) AND obj(n)=200 THEN z=n:n=17
3460 NEXT n
3470 IF z<>0 THEN m$="D'accord":GOSUB 550:obj(z)=case:nobj=nobj-1:RETURN
3480 RANDOMIZE TIME:IF INT(RND)=0 THEN m$="On ne pose pas ce que l'on n'a pas" ELSE m$="On pose seulement ce que l'on possede"
3490 GOSUB 550:RETURN
3500 'INVENTAIRE
3510 PRINT"Regardez la fenetre de droite."
3520 CLS #2
3530 z=0:FOR n=1 TO 17
3540 IF obj(n)=200 AND n=11 THEN PRINT #2,obj$(n);:z=1
3550 IF obj(n)=200 AND n<>11 THEN PRINT #2,obj$(n):z=1
3560 NEXT n:IF z=1 THEN 3580
3570 PRINT#2:PRINT#2:PRINT#2,"   Aucun":PRINT#2:PRINT#2:PRINT#2,"   objet":PRINT#2:PRINT#2:PRINT#2," sur  vous"
3580 '
3590 IF INKEY(47)<>0 THEN 3590
3600 RETURN
3610 ' INJURES
3620 LOAD"case22.bin",debut
3630 CALL affiche:CLS #1:CLS #2::CLS:CLS #4
3640 PRINT#1,"LA SORTIE"
3650 PRINT#4,"DEHORS"
3660 m$="Si c'est pour m'insulter, tu peux     foutre le camp !!!":GOSUB 550
3670 GOSUB 860:IF verbe=41 THEN m$="Adieu !!!":GOSUB 550:FOR n=1 TO 2000:NEXT:CALL 0:|BASIC:NEW:DELETE:END
3680 IF verbe=43 THEN m$="C'est mieux comme ca...":GOSUB 550:GOSUB 1810:RETURN
3690 m$="Excusez vous d'abord.":GOSUB 550
3700 GOTO 3670
3710 m$="On dit prostituee quand on est poli !":GOSUB 550
3720 RETURN
3730 m$="On dit homosexuel !":GOSUB 550:RETURN
3740 'REGARDER
3750 IF objet=16 AND case=41 THEN m$="C'est une bouche d'aeration.":GOSUB 550:RETURN
3760 IF objet=86 AND case=13 THEN m$="C'est une table de nuit.":GOSUB 550:RETURN
3770 IF objet=16 THEN m$="Rien de bien particulier.":GOSUB 550:RETURN
3780 IF objet=10 AND case=32 THEN m$="Une photo de famille":GOSUB 550:RETURN
3790 IF objet=7 AND case=31 THEN m$="Il est tres grand.":GOSUB 550:RETURN
3800 IF objet=8 AND case=32 THEN m$="C'est un meuble de television.":GOSUB 550:RETURN
3810 IF objet=9 AND case=32 THEN m$="19 marches.":GOSUB 550:RETURN
3820 IF objet=20 AND case=42 THEN m$="8 chaines,son stereo et ecran couleur":GOSUB 550:RETURN
3830 IF objet=8 AND case=40 THEN m$="Un buffet qui sert a ranger la":GOSUB 550:m$="vaisselle.":GOSUB 550:RETURN 
3840 IF objet=19 AND case=33 THEN m$="Elles sont en bois.":GOSUB 550:RETURN
3850 IF objet=10 AND case=33 AND obj(1)=100 THEN m$="Un couteau est pose dessus":GOSUB 550:obj(1)=33:RETURN
3860 IF objet=10 AND case=33 AND obj(1)<>100 THEN m$="Rien de remarquable.":GOSUB 550:RETURN
3870 IF objet=21 AND case=12 THEN m$="Quel jeu ? ":GOSUB 550:LINE INPUT ">",r$:IF UPPER$(r$)<>"PAC.MAN" THEN m$="Il n'y est pas":GOSUB 550:RETURN ELSE case=35:GOSUB 1810:m$="Le voila":GOSUB 550:RETURN
3880 m$="C'est fabuleux d'avoir des yeux.":GOSUB 550:RETURN
3890 'FOUILLER
3900 IF case=28 AND obj(10)=100 AND objet=8 THEN m$="Il y a une corde.":GOSUB 550:obj(10)=28:RETURN
3910 IF case=13 AND obj(7)=100 AND objet=8 THEN m$="Il y a une loupe.":GOSUB 550:obj(7)=13:RETURN
3920 IF case=20 THEN case=21:GOSUB 1810:m$="Rien !":GOSUB 550:m$="Ah si,une feuille ou il y a ecrit :":GOSUB 550:m$="<<'Coup de foudre' en anglais.>>":GOSUB 550:RETURN
3930 IF OBJET=8 AND CASE=25 AND PLACARD=1 THEN M$="Le bois est impeccable mais helas,un   noeud est parti.Ca fait un trou.":GOSUB 550:RETURN
3940 IF OBJET=8 AND CASE=25 AND PLACARD=0 THEN M$="Il n'est pas ouvert.":GOSUB 550:RETURN
3950 IF OBJET=8 AND CASE=14 THEN m$="Le meuble est ferme a clef.":GOSUB 550:RETURN
3960 IF objet=19 AND case=33 AND obj(5)=100 THEN m$="Il y a des allumettes sur l'etagere dubas.":obj(5)=33:GOSUB 550:RETURN
3970 IF objet=19 AND case=33 AND obj(5)<>100 THEN m$="Elles sont vides":GOSUB 550:RETURN
3980 IF objet=8 AND case=33 THEN m$="Haut ou bas (H/B) ?":GOSUB 550:GOSUB 6050:IF r$<>"H" AND r$<>"B" THEN 3980 ELSE IF r$="H" THEN m$="Des produits menagers":GOSUB 550:RETURN ELSE m$="Des boissons.":GOSUB 550:RETURN
3990 IF objet=8 AND case=40 THEN m$="Des couverts verts et des verres pas  verts...":GOSUB 550:RETURN
4000 IF objet=8 AND case=6 AND obj(17)=100 THEN m$="Une pile":GOSUB 550:obj(17)=6:RETURN
4010 IF objet=7 AND case=31 AND obj(11)=100 THEN m$="Vous trouvez un fer a souder":GOSUB 550:obj(11)=31:RETURN
4020 IF objet=8 AND CASE=42 THEN M$="Derriere la television,se trouve une  feuille sur laquelle il y a ecrit :":GOSUB 550:m$="'JOUERMETTRETOURNER'":GOSUB 550:RETURN
4030 m$="Rien de remarquable":GOSUB 550:RETURN
4040 'AIDE
4050 IF aid$(case)="" THEN aid$(case)="Debrouillez vous tout seul"
4060 m$=aid$(case):GOSUB 550:RETURN
4070 m$="Smack smack, bisou bisou":GOSUB 550:RETURN
4080 m$="Vous ne pensez qu'a ca !!!":GOSUB 550:RETURN
4090 'tourner
4100 IF case<>25 AND placard<>1 THEN m$="Impossible":GOSUB 550:RETURN
4110 IF objet<>22 THEN m$="Non":GOSUB 550:RETURN
4120 IF obj(16)=200 AND obj(17)=200 THEN lampe=1 ELSE lampe=0
4130 IF obj(15)<>110 THEN m$="Non et non !":GOSUB 550:RETURN
4140 m$="Vous declenchez un mecanisme,le sol sederobe sous vos pieds !!!":GOSUB 550
4150 IF lampe=0 AND obj(10)<>200 THEN m$="Vous vous retrouvez dans une piece    noire et n'ayant rien pour remonter,  vous finirez par mourir ici !!!":CLS #3:GOSUB 550:mort=1:RETURN
4160 IF lampe=0 AND obj(10)=200 THEN m$="Vous vous retrouvez dans une piece    noire, pas la peine de continuer.":GOSUB 550:m$="Vous remontez avec la corde.":GOSUB 550:RETURN
4170 case=24:GOSUB 1810:RETURN
4180 m$="C'est trop dure pour moi.":GOSUB 550:RETURN
4190 m$="Oh, hisse ! Oh, hisse !!!":GOSUB 550:RETURN
4200 'LEVER
4210 IF case=13 AND obj(2)=100 AND objet=23 THEN m$="Une clef":GOSUB 550:obj(2)=13:RETURN
4220 IF case<>14 AND case<>40 THEN m$="Non !!!!":GOSUB 550:RETURN
4230 IF objet<>12 THEN m$="C'est trop lourd":GOSUB 550:RETURN
4240 m$="ATCHOUM !!! De la poussiere,Arnold n'apas fait son boulot.":GOSUB 550:RETURN
4250 m$="Toc toc toc.Qui est la ?":GOSUB 550:RETURN
4260 m$="Sans interet.":GOSUB 550:RETURN
4270 'Enfoncer
4280 IF casE=14 AND obj(1)=200 AND obj(6)=100 AND objet=23 THEN m$="Une bourse":GOSUB 550:obj(6)=14:RETURN
4290 IF casE=14 AND obj=23 AND obj(1)<>200 THEN m$="Avec vos dents peut-etre...":GOSUB 550:RETURN
4300 IF case<>17 THEN m$="Sale brute !!!":GOSUB 550:RETURN
4310 IF objet<>14 THEN m$="Ca fait trop mal.":GOSUB 550:RETURN
4320 m$="La porte s'ouvre.":GOSUB 550:porpas=1:nonmes=1:GOSUB 2960:RETURN
4330 m$="Au feu !!!!":GOSUB 550:RETURN
4340 m$="Du sang,toujours du sang !":GOSUB 550:RETURN
4350 m$="Ressaisissez-vous que diable !":GOSUB 550:RETURN
4360 m$="Ah bon.":GOSUB 550:RETURN
4370 m$="Pas moi.":GOSUB 550:RETURN
4380 m$="Je ne sais pas":GOSUB 550:RETURN
4390 'OUVRIR
4400 IF objet=8 AND case=32 THEN case=42:GOSUB 1810:RETURN
4410 IF objet=8 AND case=25 AND placard=0 THEN placard=1:LOAD"case34.bin",debut:CALL affiche:m$="Il est vide, a part 2 portemanteaux.":GOSUB 550:RETURN
4420 IF objet=14 AND (case=18 OR case=11) AND obj(2)=200 THEN porte=1:m$="D'accord":GOSUB 550:RETURN
4430 IF objet=14 AND (case=18 OR case=11) AND obj(2)<>200 THEN m$="Elle est fermee a clef.":GOSUB 550:RETURN
4440 IF objet=25 AND case=10 AND obj(10)<>200 AND obj(10)<>17 AND obj(10)<>10 AND obj(10)<>24 THEN m$="Meme si vous arriviez a l'ouvrir,vous ne pourriez pas remonter...":GOSUB 550:mort=1:RETURN
4450 IF objet=25 AND case=10 THEN m$="Avec quoi ?":GOSUB 550:LINE INPUT ">",r$:r$=UPPER$(r$):IF r$="FER A SOUDER" THEN GOSUB 5900:RETURN ELSE IF r$="COMBINAISON" THEN GOTO 5820 ELSE m$="Non.":GOSUB 550:RETURN
4460 m$="Non, je n'ai pas envie !!!!":GOSUB 550:RETURN
4470 'FERMER
4480 IF objet=8 AND case=42 THEN case=32:GOSUB 1810:RETURN
4490 IF objet=8 AND case=25 AND placard=1 THEN placard=0:LOAD"case25.bin",debut:CALL affiche:m$="C'est fait.":GOSUB 550:RETURN
4500 IF objet=14 AND (case=18 OR case=11) AND obj(2)=200 THEN porte=0:m$="D'accord":GOSUB 550:RETURN
4510 IF objet=14 AND (case=18 OR case=11) AND obj(2)<>200 THEN m$="Vous n'en n'avez pas la clef.":GOSUB 550:RETURN
4520 m$="je ne veux pas.":GOSUB 550:RETURN
4530 m$="Quand tu veux":GOSUB 550:RETURN
4540 m$="Comme tu peux":GOSUB 550:RETURN
4550 IF case<>6 THEN m$="Pas ici.":GOSUB 550:RETURN ELSE m$="Ca soulage.":GOSUB 550:RETURN
4560 m$="Salut a toi aussi.":GOSUB 550:RETURN
4570 m$="On se revoie demain ?":GOSUB 550:RETURN
4580 'ALLUMER
4590 IF case<>19 THEN m$="Pas maintenant":GOSUB 550:RETURN
4600 IF objet<>24 THEN m$="Non et non et encore non.":GOSUB 550:RETURN
4610 m$="Quelle marque ?":GOSUB 550:LINE INPUT ">",r$:IF UPPER$(r$)<>"CHARTON" THEN m$="Il ne marche pas":GOSUB 550:RETURN
4620 CLS:m$="Vous etes devant l'ordinateur.":GOSUB 550:CLS #3
4630 PLOT 14,398-16,0:DRAW 14,170,0
4640 PRINT#3," BASIC 1.1":PRINT#3:PRINT#3,"Ready":
4650 LINE INPUT #3,"",r$:r$=UPPER$(r$)
4660 IF r$="CAT" OR r$="|DIR" THEN FOR n=1 TO 700:NEXT:PRINT#3:PRINT#3,"Drive A: user 0":PRINT#3:PRINT#3,"COFFRE.BIN   16K":PRINT#3:PRINT#3," 162K free":PRINT#3
4670 c$="RUN"+CHR$(34)+"COFFRE":cc$="RUN"+CHR$(34)+"COFFRE"+CHR$(34)
4680 IF r$="ETEINDS ORDINATEUR" OR r$="ETEINDRE ORDINATEUR" OR r$="ETEINDS CHARTON" OR r$="ETEINDRE CHARTON" THEN CALL affiche:CLS:RETURN
4690 IF r$=c$ OR r$=cc$ THEN FOR n=1 TO 1000:NEXT:CLS #3:INPUT #3,"The Password:",b$:IF UPPER$(b$)<>"THUNDERBOLT" THEN PRINT#3,"Access denied":GOSUB 6050:CLS #3 ELSE PRINT#3:PRINT#3,"The code is :":PRINT#3,"5236987410":GOSUB 6050:CLS #3
4700 PRINT#3,"Ready"
4710 GOTO 4650
4720 m$="Impossible":GOSUB 550:RETURN
4730 ' DISCUTER
4740 DI
4750 IF OBJET>6 THEN M$="Sans interet mais si ca vous amuse...":GOSUB 550:RETURN
4760 IF per(objet)=case THEN x=objet ELSE m$="Cette personne n'est pas ici.":GOSUB 550:RETURN
4770 IF case=31 OR case=32 OR case=33 OR case=40 THEN GOSUB 6210
4780 IF x=1 THEN x$="CASE1"
4790 IF x=2 THEN x$="CASE2"
4800 IF x=3 THEN x$="CASE8"
4810 IF x=4 THEN x$="CASE9"
4820 IF x=5 THEN x$="CASE15"
4830 IF x=6 THEN x$="CASE16"
4840 LOAD x$,debut
4850 CALL affiche:CLS:CLS #2:CLS #1:CLS #4:PRINT#1,"0= FIN DE CONVERSATION.";
4860 WINDOW SWAP 0,2
4870 FOR n=1 TO 9
4880 IF qu(n)=0 THEN 4980
4890 IF n=1 THEN LOCATE 1,1:PRINT"1-La porte    du couloir  de droite"
4900 IF n=2 THEN LOCATE 1,4:PRINT"2-Les ordis"
4910 IF n=3 THEN LOCATE 1,5:PRINT"3-Les bornes  arcades"
4920 IF n=4 THEN LOCATE 1,7:PRINT"4-La Villa"
4930 IF n=5 THEN LOCATE 1,8:PRINT"5-Le placard"
4940 IF n=6 THEN LOCATE 1,9:PRINT"6-La          television"
4950 IF n=7 THEN LOCATE 1,11:PRINT"7-Les gens    qui sont    dans la     Villa"
4960 IF n=8 THEN LOCATE 1,15:PRINT"8-Le grenier"
4970 IF n=9 THEN LOCATE 1,16:PRINT"9-Les bijoux  voles";
4980 NEXT
4990 WINDOW SWAP 0,2
5000 m$="Choisir le sujet de conversation":GOSUB 550
5010 GOSUB 6050:IF r$<"0" OR r$>"9" THEN 5010
5020 IF R$="0" THEN 5560
5030 IF qu(VAL(r$))=0 THEN 5010
5040 CLS
5050 su=VAL(r$)
5060 WHILE x=1
5070 IF su=1 THEN m$="A chaque fois que je viens ici,  cetteporte est toujours fermee a clef.     La seule et unique fois que je l'ai   vue entrouverte, j'ai cru apercevoir  un billard."
5080 IF su=2 THEN m$="Il n'y en a qu'un qui fonctionne      correctement. Je ne me rappelle plus  lequel."
5090 IF su=3 OR su=8 THEN m$="Je ne vois pas de quoi vous voulez    parler."
5100 IF su=4 THEN m$="Je la trouve tres jolie.              Pour une villa,elle est plutot grande."
5110 IF su=5 THEN m$="Ca sert,mais c'est sans valeur        charpentiere"
5120 IF su=6 THEN m$="Je ne la regarde jamais ! ou si peu..."
5130 IF su=7 THEN m$="Sachez que je m'entends a merveille   avec tout le monde."
5140 IF su=9 THEN   m$="Tout le monde prend ses precautions   mais le coupable s'y connait.L'enquetesera rude...tres rude..."
5150 GOSUB 550:GOTO 5600:WEND
5160 WHILE X=2
5170 IF su=1 THEN m$="Si la porte est fermee, demandez a Luc."
5180 IF su=2 THEN m$="Il n'y a que le CHARTON qui fonctionne."
5190 IF su=3 THEN m$="C'est quoi, une borne arcarde ?!"
5200 IF su=4 THEN m$="Mon mari et moi l' avons faite        construire en 1980.Depuis,nous vivons tranquillement avec Sophia,notre fille"
5210 IF su=5 THEN m$="C'est Luc qui a absolument voulu le   construire seul.Je ne sais toujours   pas pourquoi !"
5220 IF su=6 THEN m$="Elle n'a que 8 chaines."
5230 IF su=7 THEN m$="Il y a Bobby,mon frere;Sophia,ma filleLuc,mon mari;Arnold le domestique et  enfin Roland qui est un vieil ami de  la famille."
5240 IF su=8 THEN m$="Je n'y ai jamais mis les pieds."
5250 IF su=9 THEN m$="Il paraitrait que Luc soit suspect... C'est completement absurde !!!"
5260 GOSUB 550:GOTO 5600:WEND
5270 WHILE x=3
5280 IF su=1 OR su=2 OR su=3 OR su=4 OR su=8 THEN m$="Excusez-moi, mais je ne vois pas de   quoi il s'agit."
5290 IF su=4 THEN m$="Je n'etais pas encore nee lorsqu'elle a ete construite."
5300 IF su=5 THEN m$="Ah,ah,ah ! Je ne vois vraiment pas en quoi ce genre de chose peut vous      interesser !!!"
5310 IF su=6 THEN m$="Je la regarde toujours apres l'ecole. C'est le seul moyen que j'ai de me    detendre avant mes devoirs."
5320 IF su=7 THEN m$="Nous sommes 6 au total, si je ne vous compte pas."
5330 IF su=9 THEN m$="Je ne regarde jamais les infos,       demandez a maman."
5340 GOSUB 550:GOTO 5600:WEND
5350 WHILE x=4
5360 IF su=1 THEN m$="Elle donne sur la salle de jeux, j'en possede la clef."
5370 IF su=2 THEN m$="Je m'en sert pour gerer mon compte    banquaire."
5380 IF su=3 THEN m$="J'adore les jeux videos.Mon prefere   est PAC.MAN"
5390 IF su>3 AND su <10 THEN m$="Evitez de fourrer votre nez la ou il  ne faut pas..."
5400 GOSUB 550:GOTO 5600:WEND
5410 WHILE x=5
5420 IF su=1 THEN m$="Celle qui est toujours fermee ? Luc enpossede la clef."
5430 IF su=2 THEN m$="Toujours de la poussiere dessus !"
5440 IF su=3 THEN m$="Il doit y en avoir une au cafe du coin."
5450 IF su=4 THEN m$="J'y suis le domestique."
5460 IF su=5 THEN m$="Un placard tres utile."
5470 IF su=6 THEN m$="Je la nettoie souvent."
5480 IF su=7 THEN m$="Nous sommes 7,vous y compris."
5490 IF su=8 THEN m$="Ne comptez pas sur moi pour y faire lemenage !!!"
5500 IF su=9 THEN m$="Oui, c'est terrible, les alarmes ne   suffisent plus."
5510 GOSUB 550:GOTO 5600:WEND
5520 WHILE x=6
5530 IF su=7 THEN m$="Ils sont tous mes amis.J'ai connu Luc en 1979.A cette epoque, ils n'        habitaient pas encore ici." ELSE m$="Vous etes trop curieux !"
5540 GOSUB 550:GOTO 5600:WEND
5550 GOTO 5600
5560 'fin de convers.
5570 CLS #1:CLS #2:CLS #4:CLS #3:CLS
5580 IF case=32 OR case=33 OR case=31 OR case=40 THEN GOSUB 6220
5590 GOSUB 1810:EI:RETURN
5600 GOSUB 6050:CLS:GOTO 5010
5610 ' ENTRER
5620 IF case<>39 THEN m$="Mais comment ferez-vous pour sortir ?":GOSUB 550:RETURN
5630 m$="Quelle porte ?(son Numero) :":GOSUB 550:GOSUB 6050
5640 IF r$>"4" OR r$<"1" THEN 5630
5650 IF r$="1" THEN case=6
5660 IF r$="2" THEN case=7
5670 IF r$="3" THEN case=13
5680 IF r$="4" THEN case=14
5690 GOSUB 1810:RETURN
5700 m$="C'est impossile.":GOSUB 550:RETURN
5710 m$="C'est tout a fait naturel":GOSUB 550:RETURN
5720 m$="Ce n'est rien.":GOSUB 550:RETURN
5730 'jouer
5740 IF case<>35 THEN m$="Ce n'est pas le moment":GOSUB 550:RETURN
5750 IF obj(6)<>200 THEN m$="Vous n'avez pas d'argent.":GOSUB 550:RETURN
5760 IF porte=1 THEN m$="Luc arrive et vous surprend !":GOSUB 550:m$="-Je savais bien que vous etiez un     flic !":GOSUB 550:m$="Il vous tire un balle dans la tete...":GOSUB 550:mort=1:RETURN
5770 IF obj(15)<>100 THEN m$="Deja fait":GOSUB 550:RETURN
5780 m$="Bon comme vous etes,vous faites le    meilleur score !":GOSUB 550:m$="Vous remarquez un petit baton qui     tombe de la fente par laquelle vous   aviez introduit votre piece...Etrange":GOSUB 550:obj(15)=35:RETURN
5790 '
5800 IF case=21 THEN case=20:GOSUB 1810:RETURN
5810 m$="C'est gentil mais inutile.":GOSUB 550:RETURN
5820 '
5830 m$="Entrez la combinaison:":GOSUB 550
5840 LINE INPUT ">",r$
5850 IF r$<>"5236987410" THEN m$="Ce n'est pas la bonne.":GOSUB 550:RETURN
5860 LOAD"case43.bin",debut:CALL affiche:SPEED INK 1,1:BORDER 24,0:FOR n=1 TO 100:NEXT:BORDER 0
5870 m$="LE COFFRE S'OUVRE !!!! LES BIJOUX !!!!LUC EST COUPABLE !!!!":GOSUB 550
5880 FOR n=1 TO 1000:NEXT
5890 POKE &CCCC,1:RUN"VAGUE"
5900 '
5910 IF obj(11)<>200 THEN m$="Vous n'en avez pas":GOSUB 550:RETURN
5920 IF obj(13)<>200 THEN m$="Il vous faut du Gaz":GOSUB 550:RETURN
5930 IF obj(14)<>200 THEN m$="Il vous faut de l'Oxygene":GOSUB 550:RETURN
5940 m$="A peine avez-vous allume le fer que   Luc arrive et vous tue...":GOSUB 550:mort=1:RETURN
5950 IF ERR=32 THEN CLS:GOSUB 6210:RESUME
5960 MODE 1:PEN 1:INK 1,26:PRINT !   J'AI DETECTE UNE ERREUR DANS MON                   PROGRAMME.":?:?" JE NE PEUX PAS CONTINUER A TRAVAILLER.":WHILE 1:WEND:CALL 0:|BASIC:NEW:DELETE:END
5970 'Verbe 0
5980 RANDOMIZE TIME
5990 x=INT(RND*4):IF x=4 THEN 5970
6000 IF x=0 THEN m$="Je ne vous comprends pas"
6010 IF x=1 THEN m$="Essayez autre chose"
6020 IF x=2 THEN m$="Excusez-moi,je n'ai pas entendu"
6030 IF x=3 THEN m$="Je ne sais pas faire ca"
6040 GOSUB 550:RETURN
6050 'BB06
6060 IF INKEY$<>"" THEN 6050
6070 r$=""
6080 WHILE r$="":r$=UPPER$(INKEY$):WEND
6090 RETURN
6100 'OK
6110 RANDOMIZE TIME
6120 x=INT(RND*4):IF x=4 THEN 6100
6130 IF x=0 THEN PRINT"Avec joie"
6140 IF x=1 THEN PRINT"Bien sur"
6150 IF x=2 THEN PRINT"A vos ordres"
6160 IF x=3 THEN PRINT"Passez devant"
6170 RETURN
6180 'phrase vide
6190 m$="Pas bavard aujourd'hui.":PRINT::PEN 1:GOSUB 550
6200 RETURN
6210 'Tourne disc
6220 DI
6230 CLS #3:PLOT 14,398-16,0:DRAW 14,170,0:LOCATE #3,1,8
6240 PRINT#3,"  Tournez la disquette":PRINT CHR$(7);
6250 PRINT#3,"          S.V.P"
6260 GOSUB 6050:CLS #3:CALL affiche:EI:RETURN
6270 '
6280 ' POUR LES PETITS ZIGOTOS QUI ONT REUSSI A TROUVER LA SOLUTION DU JEU EN
6290 ' LISANT MON LISTING, JE TIENS A SIGNALER QUE CE N'EST PAS UN EXPLOIT
6300 ' ET QUE CE N'EST PAS UNE RAISON POUR SE FAIRE APPELER UN 'PIRATE'.
6310 '
6320 ' JE CROIS PLUTOT QUE LE NOM DE 'PIRATE DE MES FESSES' VOUS IRAIT MIEUX.
6330 ' BEAUCOUP MIEUX...MAIS,BON POUR CEUX QUI SONT VRAIMENT COINCES DANS CE
6340 ' JEU VRAIMENT TROP FACILE, TELEPHONEZ AU 00.00.00.00 ET DEMANDEZ
6350 ' MONSIEUR JEAN NEMARRE (GNARK,GNARK,GNARK)
6360 '
6370 '          SIGNE :              Sylvain GUEHL, Le programmeur
6380 '
6390 '
6400 ' FIN DE CE LISTING.
6410 '
6420 '
6430 '