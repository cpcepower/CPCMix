10 INK 0,1:INK 1,24:INK 2,20:INK 3,6:I=0
20 SYMBOL AFTER 1:DIM F$(4,15,7):DIM RP(26)  
30 GOSUB 6530:MODE 1
40 MODE 1:PEN 1:PRINT "\n\n\t\t–ššššššššššššššššššššššššššššššššššœ"
50 LOCATE 2,2:PRINT "\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tBLACK JACK" 
60 PRINT"  •                                  •    •            3BUT DU JEU1            •"
70 WINDOW #1,4,37,7,19
80 PRINT"  •            ÐÐÐÐÐÐÐÐÐÐ            •"
90 PRINT"\t\t•                                  •    •  TOTALISER UN NOMBRE DE POINTS LE•    •PLUS PROCHE POSSIBLE DE 21 ,ET SU-•    •PERIEUR AU TOTAL DE L'ADVERSAIRE. •"
100 PRINT"  •                                  •    •  SI VOTRE TOTAL DEPASSE 21 POINTS•    •VOUS ~CREVEZ~ LE PLAFOND ET PERDEZ•    •VOTRE MISE.                       •    •                                  •"
110 PRINT "  •",SPC(24)"•":PRINT"  •",SPC(24)"•":PRINT"  •",SPC(24)"•":PRINT"  •",SPC(24)"•":PRINT"  •",SPC(24)"•":PRINT"  •      APPUYEZ SUR UNE TOUCHE      •"  
120 PRINT "\t\t“šššššššššššššššššššššššššššššššššš™"
130 A$=INKEY$:IF A$=""THEN 130  
140 LOCATE 1,5
150 PRINT"  • 3       VALEUR DES CARTES1         •"
160 PRINT"  •        ÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐ         "
170 CLS#1:PRINT#1,"  LES CARTES NUMEROTEES DE 2 A 10 GARDENT LEUR VALEUR NOMINALE."
180 PRINT#1,"\n  L'AS VAUT,A VOTRE CHOIX, 1 OU 11POINTS, TOUTES  LES  FIGURES (HON-NEURS) VALENT 10 POINTS."
190 PRINT#1,"\n  SI  LES  POINTS  D'UN  JOUEUR ETCEUX DU DONNEUR  SONT EGAUX, AUCUNDES DEUX  N'A GAGNE OU PERDU."
200 A$=INKEY$:IF A$="" THEN 200
210 LOCATE 1,5
220 PRINT"  •          3COMMENT  JOUER1    "
230 CLS#1:PRINT"\t\t\t          ÐÐÐÐÐÐÐÐÐÐÐÐÐÐ "
240 PRINT#1," 2  LAISSER >1 A DEUX SIGNIFICATIONSSUIVANT QUE L'ON JOUE CONTRE L'OR-DINATEUR  OU  CONTRE  UN  DEUXIEMEJOUEUR."
250 PRINT#1,"\n  DANS LE PREMIER CAS, LE DONNEUR VOUS DEMANDE  SI VOUS ACCEPTEZ LES";
260 PRINT#1,"CARTES DISTRIBUEES OU SI VOUS LES LAISSEZ.                            SI VOUS REPONDEZ OUI ( DONC VOUSLAISSEZ ), LE  DONNEUR  REMET  LESCARTES A LA BANQUE  ET EN  EXTRAITDEUX AUTRES."
270 A$=INKEY$:IF A$="" THEN 270
280 LOCATE 1,12:PRINT"\t\t\t  DANS LE SECOND CAS, EN REPONDANT•    •OUI A LA QUESTION DU DONNEUR, VOUS•    •NE RECEVEZ  AUCUNE CARTE.         •    •                                  •    •  LE DEUXIEME JOUEUR PEUT CONTINU-"
290 PRINT"\t\t\tER DE JOUER  ET GAGNE SI LE TOTAL •    •DE SES POINTS  DEPASSE  CELUI  QUE•    •VOUS AVEZ REALISE.                "
300 A$=INKEY$:IF A$=""THEN 300
310 CLS#1:PRINT#1,"                                    2  MISE >1 LE DONNEUR DEMANDE  AUXJOUEURS  LA SOMME  QU'ILS DESIRENTENGAGER DANS LA PARTIE (0 A 9999).                                 "
320 PRINT#1,"                                    SI VOUS  JOUEZ  SEUL, LE MONTANTDE LA SOMME  DE DEPART DU DEUXIEMEJOUEUR DOIT ETRE 0.                                                                                  "
330 L$=INKEY$:IF L$="" THEN 330
340 CLS#1:PRINT#1,"                                    2  PONTE >1 LE DONNEUR  DEMANDE A CHAQUE PHASE DE JEU LE MONTANT DESPARIS ( DE 1 A 999$ ).           "
350 PRINT#1,"                                    QUAND LA PARTIE SE JOUE A DEUX, LA MISE DE DEPART POUR CHACUN DES JOUEURS EST DE 50$.                                                "
360 PRINT#1,"  EN GAGNANT, VOUS AJOUTEZ AU MON-TANT DE VOTRE PARI,CELUI QUE VOTREADVERSAIRE VIENT DE PERDRE."
370 A$=INKEY$:IF A$=""THEN 370
380 CLS#1:PRINT#1,"                                                                      LE DONNEUR NE FAIT PAS DE PARIS,MAIS TIENT LA BANQUE.                                                           "
390 PRINT#1,"                                    EN AUCUN CAS LE MONTANT DE VOTREPARI  NE PEUT ETRE  SUPERIEUR A LASOMME DONT VOUS DISPOSEZ."
400 A$=INKEY$:IF A$=""THEN 400
410 CLS#1:PRINT#1,"  2  CARTE >1 LE DONNEUR  DEMANDE SIVOUS  DESIREZ  PRENDRE  UNE  AUTRECARTE.                                                            "
420 PRINT#1,"                                    CHAQUE  JOUEUR PEUT  DEMANDER LENOMBRE DE  CARTES  QU'IL  DESIRE,"
430 PRINT#1,"POUR S'APPROCHER LE PLUS POSSIBLE DE  21  POINTS, SANS TOUTEFOIS LESDEPASSER."
440 L$=INKEY$:IF L$="" THEN 440
450 CLS#1:PRINT#1,"  LE DONNEUR NE PEUT PLUS DEMANDERDE CARTES  SI SON  TOTAL DE POINTSEST SUPERIEUR OU EGAL A 17.                                                   "
460 PRINT#1,"  MAIS IL EST OBLIGE  DE REPRENDREUNE CARTE  SI SON  TOTAL DE POINTSEST INFERIEUR A 17."
470 L$=INKEY$:IF L$="" THEN 470
480 CLS#1:PRINT#1,"                                    2  DOUBLER >1  LE DONNEUR  DEMANDESI VOUS VOULEZ DOUBLER  LA MISE DEDEPART. SI C'EST  LE CAS, IL VOUS DONNE UNE DERNIERE CARTE."
490 A$=INKEY$:IF A$="" THEN 490 
500 LOCATE 1,5:PRINT"  • 3COMMENT REPONDRE  A L'ORDINATEUR1"
510 PRINT"  • ÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐÐ "
520 CLS#1:PRINT#1,"                                    2  MISE >1  DEFINIR  LE MONTANT DEVOTRE  PECULE DE DEPART  EN TAPANTUN NOMBRE PUIS  EN APPUYANT SUR LATOUCHE  13< ENTER >01."
530 PRINT#1,"                                    IL EN VA DE MEME POUR 2 PONTE >1."
540 PRINT#1,"                                   2  CARTE >1 APPUYER SUR 13O01 OU SUR 13N01."
550 PRINT#1,"                                   2DOUBLER >1 APPUYER SUR 13O01 OU SUR 13N01."
560 L$=INKEY$:IF L$="" THEN 560
570 CLS#1:PRINT#1,"  POUR VOIR LES CARTES CACHEES                                        LE PREMIER JOUEUR  DOIT APPUYER SUR: 13T01   ET   13G01.                    LE DEUXIEME JOUEUR DOIT APPUYER"
580 PRINT#1,"SUR: 13O01   ET   13L01."
590 PRINT#1,"\n  INDIQUEZ QUE  VOUS AVEZ  FINI DEREGARDER  LES CARTES  CACHEES AVECLA TOUCHE 13C01."
600 A$=INKEY$:IF A$="" THEN 600
610 LOCATE 5,5:PRINT"                                ":LOCATE 5,6:PRINT"                                "
620 CLS#1:PRINT#1,"\n\n  LES REGLES DE CE BLACK JACK SONTCELLES  QUE  VOUS  POUVEZ  TROUVERDANS LES CASINOS. \n                  CEPENDANT,  LORSQU'IL Y  A  DEUXJOUEURS  CES REGLES  SONT  QUELQUEPEU MODIFIEES ( LA BANQUE  NE JOUEPAS )."
630 L$=INKEY$: IF L$="" THEN 630
640 IF I=1 THEN I=0:CLS:GOTO 1560
650 COMP=0:WINDOW #1,4,37,7,19:LOCATE 5,5:PRINT STRING$(33," "):LOCATE 5,6:PRINT STRING$(33," "):CLS#1:INPUT #1,"2MISE DE DEPART DU JOUEUR (1)1",MONEY(1):IF MONEY(1)<=0 THEN 650      
660 IF MONEY(1)>9999 THEN 650    
670 INPUT #1,"\n2MISE DE DEPART DU JOUEUR (2)1",MONEY(2):IF MONEY(2)<=0 THEN COMP=1      
680 IF MONEY(2)>9999 THEN 670
690 CLS
700 SC=1000
710 j3=-2       
720 X=100:Y=100:A=0:B=1:C=2:D=3:E=0:F=1:G=2:H=3     
730 MODE 1
740 SYMBOL AFTER 34
750 REM ** I ** 
760 SYMBOL 100,239,247,120,63,16,15,8,12
770 SYMBOL 101,174,108,97,255,0,255,42,21
780 SYMBOL 103,189,185,131,255,30,196,184,88
790 REM ** II **
800 SYMBOL 104,11,16,38,64,112,32,32,24
810 SYMBOL 105,21,149,21,10,10,10,37,34
820 SYMBOL 107,84,84,84,168,168,168,82,165
830 REM ** III **    
840 SYMBOL 108,32,32,31,0,103,132,255,255
850 SYMBOL 109,65,128,0,0,3,204,255,255
860 SYMBOL 111,86,233,30,192,139,136,255,255
870 SYMBOL 112,76,210,82,82,82,82,82,236
880 SYMBOL 113,0,0,0,0,1,2,6,9
890 SYMBOL 114,0,32,80,136,20,34,68,136
900 SYMBOL 115,17,34,68,40,17,10,4,0
910 SYMBOL 116,144,96,64,128,0,0,0,0
920 SYMBOL 117,0,0,0,1,7,14,14,12
930 SYMBOL 118,12,12,12,12,8,8,8,4
940 SYMBOL 119,4,2,1,0,0,1,1,1
950 SYMBOL 120,0,62,127,227,128,128,65,34
960 SYMBOL 121,128,8,8,8,8,8,24,0
970 SYMBOL 122,62,65,0,128,127,128,193,227
980 SYMBOL 123,0,0,0,192,240,184,56,24
990 SYMBOL 124,152,24,24,24,8,8,8,16
1000 SYMBOL 125,16,32,64,128,0,192,192,192
1010 SYMBOL 126,0,0,0,1,7,14,14,12
1020 SYMBOL 127,12,12,12,12,8,8,8,4
1030 SYMBOL 128,4,2,1,0,0,1,1,1
1040 SYMBOL 129,0,62,127,227,128,0,0,227
1050 SYMBOL 130,65,8,8,8,8,8,24,0
1060 SYMBOL 131,0,62,0,128,127,128,193,227
1070 SYMBOL 132,0,0,0,192,240,56,56,152
1080 SYMBOL 133,24,24,24,24,8,8,8,16
1090 SYMBOL 134,16,32,64,128,0,192,192,192
1100 SYMBOL 135,0,0,0,1,7,14,14,12
1110 SYMBOL 136,12,12,12,12,8,8,8,4
1120 SYMBOL 137,4,2,1,0,0,1,1,1
1130 SYMBOL 138,0,62,127,227,128,34,65,128
1140 SYMBOL 139,65,8,8,8,8,8,24,128
1150 SYMBOL 140,65,62,0,128,127,128,193,227
1160 SYMBOL 142,24,24,24,24,8,8,8,144
1170 SYMBOL 143,16,32,64,128,0,128,128,128
1180 SYMBOL 144,0,0,0,0,0,0,1,3
1190 SYMBOL 145,0,24,60,126,126,189,255,255
1200 SYMBOL 146,0,0,0,0,0,0,128,192
1210 SYMBOL 161,3,1,0,0,0,0,0,0
1220 SYMBOL 148,255,255,153,24,60,0,0,0
1230 SYMBOL 162,192,128,0,0,0,0,0,0
1240 SYMBOL 163,24,24,24,24,24,24,31,31
1250 SYMBOL 164,24,24,24,24,24,24,248,248
1260 SYMBOL 165,0,0,0,0,1,3,3,3
1270 SYMBOL 166,0,60,126,255,255,255,255,255
1280 SYMBOL 167,0,0,0,0,128,192,192,192
1290 SYMBOL 168,3,1,0,0,0,0,0,0
1300 SYMBOL 169,255,255,219,24,60,0,0,0
1310 SYMBOL 170,192,128,0,0,0,0,0,0
1320 SYMBOL 171,0,0,1,3,3,3,3,3
1330 SYMBOL 172,0,195,231,255,255,255,255,255
1340 SYMBOL 173,0,0,128,192,192,192,192,192
1350 SYMBOL 174,1,0,0,0,0,0,0,0
1360 SYMBOL 175,255,255,126,60,24,0,0,0
1370 SYMBOL 176,128,0,0,0,0,0,0,0
1380 SYMBOL 177,2,5,6,5,8,12,20,20
1390 SYMBOL 178,173,21,10,141,0,168,32,64
1400 SYMBOL 179,80,80,72,40,168,164,148,148
1410 SYMBOL 180,20,36,42,42,73,81,82,180
1420 SYMBOL 181,64,128,192,0,112,0,130,140
1430 SYMBOL 182,148,82,74,74,168,38,20,50
1440 SYMBOL 183,188,83,32,64,0,0,255,255
1450 SYMBOL 184,112,7,248,0,0,0,255,255
1460 SYMBOL 185,201,8,4,2,1,0,255,255
1470 SYMBOL 186,204,255,255,95,32,31,8,12
1480 SYMBOL 187,204,255,255,255,127,135,120,15
1490 SYMBOL 188,206,254,254,254,254,252,232,16
1500 SYMBOL 189,11,16,38,64,112,32,32,24
1510 SYMBOL 190,10,138,10,5,5,18,18,33
1520 SYMBOL 191,224,160,160,80,80,168,168,84
1530 SYMBOL 192,32,32,31,42,42,85,255,255
1540 SYMBOL 193,65,161,32,160,160,64,255,255
1550 SYMBOL 194,84,84,170,170,84,0,255,255
1560 REM **** CORPS ****
1570 ORIGIN 204,294  
1580 DRAWR 30,-2:DRAWR -2,-10:DRAWR -14,0:DRAWR -26,2:DRAWR -2,2,1:DRAWR -2,4:DRAWR 4,34:DRAWR 2,2:DRAWR 4,2:DRAWR 2,2:DRAWR 34,0
1590 DRAWR 0,4:DRAWR 0,-4:DRAWR 4,-20:DRAWR 4,-4:DRAWR 6,-8:DRAWR 6,+8:DRAWR 4,+4:DRAWR 4,+20:DRAWR 0,+4:DRAWR 0,-4:DRAWR 34,0 
1600 DRAWR 4,-2:DRAWR 2,-2:DRAWR 2,-2:DRAWR 4,-34:DRAWR -2,-4:DRAWR -2,-2:DRAWR -26,-2:DRAWR -14,-0:DRAWR -2,10:DRAWR 30,2:DRAWR -6,24:PLOTR -28,16:DRAWR -20,0,2:DRAWR 0,-2:DRAWR 8,0,1:DRAWR 6,0,0
1610 DRAWR 6,0,1                        :DRAWR 0,-2:DRAWR -6,0:DRAWR -10,0,0:DRAWR -4,0,1:DRAWR 0,-2:DRAWR 4,0:DRAWR 14,0,0:DRAWR 2,0,1
1620 REM **** FIN DU CORPS,SANS LES MAINS ****
1630 REM **** BOUTONS,MAIN,ET POCHETTE ****
1640 PLOTR -10,-4,2:PLOTR 0,-6:PLOTR 0,-6:PLOTR 0,-6:PLOTR -12,-16,2:DRAWR 10,0,C:DRAWR 4,0,A:DRAWR 10,0,2:PLOTR 0,-2:DRAWR -8,0
1650 DRAWR -10,0,A:DRAWR -6,0,C:PLOTR -2,-2,C:DRAWR 6,0,C:DRAWR 4,0,0:DRAWR 10,0,3:DRAWR 4,0,0:DRAWR 4,0,2:PLOTR 0,-2:DRAWR -10,0,0 
1660 DRAWR -8,0,3:PLOTR 0,-2:DRAWR 8,0,3:PLOTR -34,30,1:DRAWR 0,-6:PLOTR 2,-2:DRAWR 4,0:PLOTR 2,2:DRAWR 0,6:DRAWR -6,0
1670 FACE$(1)="ux{"   
1680 FACE$(2)="vy|"  
1690 FACE$(3)="wz}"    
1700 FACE$(4)="u„"   
1710 FACE$(5)="v‚…"  
1720 FACE$(6)="wƒ}"   
1730 FACE$(7)="uŠ„"       
1740 FACE$(8)="v‹Ž"
1750 FACE$(9)="wŒ}"  
1760 FOR I=4 TO 6:LOCATE 15,I-2:PRINT FACE$(I):NEXT I     
1770 f$(1,11,1)="–šššœ"   
1780 f$(1,11,2)="•deg•"    
1790 f$(1,11,3)="•hik•"        
1800 f$(1,11,4)="£lmo¤"    
1810 f$(1,11,5)="• ä •" 
1820 f$(1,11,6)="“ššš™"         
1830 f$(1,12,1)="–šššœ"         
1840 f$(1,12,2)="•±²³•"  
1850 f$(1,12,3)="•´µ¶•"
1860 f$(1,12,4)="£·¸¹¤" 
1870 f$(1,12,5)="• ä •"          
1880 f$(1,12,6)="“ššš™"     
1890 f$(1,13,1)="–šššœ"    
1900 f$(1,13,2)="•º»¼•" 
1910 f$(1,13,3)="•h¾¿•" 
1920 f$(1,13,4)="£ÀÁÂ¤" 
1930 f$(1,13,5)="• ä •"  
1940 f$(1,13,6)="“ššš™"  
1950 f$(1,1,1)="–šššœ"        
1960 f$(1,1,2)="•A A•" 
1970 f$(1,1,3)="•«¬­•"  
1980 f$(1,1,4)="•®¯°•" 
1990 f$(1,1,5)="•A A•" 
2000 f$(1,1,6)="“ššš™"          
2010 f$(1,2,1)="–šššœ"         
2020 f$(1,2,2)="•2 2•" 
2030 f$(1,2,3)="•«¬­•" 
2040 f$(1,2,4)="•®¯°•"      
2050 f$(1,2,5)="•2 2•"
2060 f$(1,2,6)="“ššš™" 
2070 f$(1,3,1)="–šššœ"         
2080 f$(1,3,2)="•3 3•" 
2090 f$(1,3,3)="•«¬­•
2100 f$(1,3,4)="•®¯°•" 
2110 f$(1,3,5)="•3 3•"      
2120 f$(1,3,6)="“ššš™"         
2130 f$(1,4,1)="–šššœ"          
2140 f$(1,4,2)="•4 4•" 
2150 f$(1,4,3)="•«¬­•     
2160 f$(1,4,4)="•®¯°•"    
2170 f$(1,4,5)="•4 4•" 
2180 f$(1,4,6)="“ššš™"          
2190 f$(1,5,1)="–šššœ"      
2200 f$(1,5,2)="•5 5•" 
2210 f$(1,5,3)="•«¬­•        
2220 f$(1,5,4)="•®¯°•"      
2230 f$(1,5,5)="•5 5•"  
2240 f$(1,5,6)="“ššš™"       
2250 f$(1,6,1)="–šššœ"        
2260 f$(1,6,2)="•6 6•"    
2270 f$(1,6,3)="•«¬­•     
2280 f$(1,6,4)="•®¯°•"      
2290 f$(1,6,5)="•6 6•"       
2300 f$(1,6,6)="“ššš™"      
2310 f$(1,7,1)="–šššœ"      
2320 f$(1,7,2)="•7 7•"     
2330 f$(1,7,3)="•«¬­•    
2340 f$(1,7,4)="•®¯°•"     
2350 f$(1,7,5)="•7 7•"       
2360 f$(1,7,6)="“ššš™"              
2370 f$(1,8,1)="–šššœ"    
2380 F$(1,8,2)="•8 8•"     
2390 f$(1,8,3)="•«¬­•"
2400 f$(1,8,4)="•®¯°•"   
2410 f$(1,8,5)="•8 8•"    
2420 f$(1,8,6)="“ššš™"           
2430 f$(1,9,1)="–šššœ"           
2440 F$(1,9,2)="•9 9•"     
2450 f$(1,9,3)="•«¬­•"  
2460 f$(1,9,4)="•®¯°•"     
2470 f$(1,9,5)="•9 9•" 
2480 f$(1,9,6)="“ššš™"             
2490 f$(1,10,1)="–šššœ"         
2500 F$(1,10,2)="•p p•" 
2510 F$(1,10,3)="•«¬­•"
2520 F$(1,10,4)="•®¯°•"         
2530 F$(1,10,5)="•p p•"       
2540 F$(1,10,6)="“ššš™"           
2550 f$(4,1,1)="–šššœ"         
2560 f$(4,1,2)="•A A•" 
2570 f$(4,1,3)="•¥¦§•" 
2580 f$(4,1,4)="•¡©¢•" 
2590 f$(4,1,5)="•A A•"     
2600 f$(4,1,6)="“ššš™"           
2610 f$(4,2,1)="–šššœ"              
2620 f$(4,2,2)="•2 2•"  
2630 f$(4,2,3)="•¥¦§•"      
2640 f$(4,2,4)="•¡©¢•"    
2650 f$(4,2,5)="•2 2•"     
2660 f$(4,2,6)="“ššš™"        
2670 f$(4,3,1)="–šššœ"     
2680 f$(4,3,2)="•3 3•"             
2690 f$(4,3,3)="•¥¦§•"       
2700 f$(4,3,4)="•¡©¢•"       
2710 f$(4,3,5)="•3 3•"            
2720 f$(4,3,6)="“ššš™"              
2730 f$(4,4,1)="–šššœ"        
2740 f$(4,4,2)="•4 4•"      
2750 f$(4,4,3)="•¥¦§•"      
2760 f$(4,4,4)="•¡©¢•"        
2770 f$(4,4,5)="•4 4•"  
2780 f$(4,4,6)="“ššš™"         
2790 f$(4,5,1)="–šššœ"     
2800 f$(4,5,2)="•5 5•" 
2810 f$(4,5,3)="•¥¦§•"       
2820 f$(4,5,4)="•¡©¢•"     
2830 f$(4,5,5)="•5 5•" 
2840 f$(4,5,6)="“ššš™"                     
2850 f$(3,1,1)="–šššœ"   
2860 f$(3,1,2)="•A A•"  
2870 f$(3,1,3)="•‘’•" 
2880 f$(3,1,4)="•¡”¢•"
2890 f$(3,1,5)="•A A•"  
2900 f$(3,1,6)="“ššš™"  
2910 f$(3,2,1)="–šššœ" 
2920 f$(3,2,2)="•2 2•"  
2930 f$(3,2,3)="•‘’•" 
2940 f$(3,2,4)="•¡”¢•"
2950 f$(3,2,5)="•2 2•"  
2960 f$(3,2,6)="“ššš™" 
2970 f$(3,3,1)="–šššœ"   
2980 f$(3,3,2)="•3 3•"         
2990 f$(3,3,3)="•‘’•" 
3000 f$(3,3,4)="•¡”¢•"               
3010 f$(3,3,5)="•3 3•"
3020 f$(3,3,6)="“ššš™" 
3030 f$(3,4,1)="–šššœ"   
3040 f$(3,4,2)="•4 4•"  
3050 f$(3,4,3)="•‘’•"         
3060 f$(3,4,4)="•¡”¢•"         
3070 f$(3,4,5)="•4 4•" 
3080 f$(3,4,6)="“ššš™"   
3090 f$(3,5,1)="–šššœ" 
3100 f$(3,5,2)="•5 5•"  
3110 f$(3,5,3)="•‘’•"           
3120 f$(3,5,4)="•¡”¢•"            
3130 f$(3,5,5)="•5 5•"   
3140 f$(3,5,6)="“ššš™" 
3150 f$(3,6,1)="–šššœ"
3160 f$(3,6,2)="•6 6•"  
3170 f$(3,6,3)="•‘’•"       
3180 f$(3,6,4)="•¡”¢•"             
3190 f$(3,6,5)="•6 6•"  
3200 f$(3,6,6)="“ššš™" 
3210 f$(3,7,1)="–šššœ"  
3220 f$(3,7,2)="•7 7•"   
3230 f$(3,7,3)="•‘’•"     
3240 f$(3,7,4)="•¡”¢•"      
3250 f$(3,7,5)="•7 7•"  
3260 f$(3,7,6)="“ššš™" 
3270 f$(3,8,1)="–šššœ"   
3280 f$(3,8,2)="•8 8•"  
3290 f$(3,8,3)="•‘’•"
3300 f$(3,8,4)="•¡”¢•"   
3310 f$(3,8,5)="•8 8•"      
3320 f$(3,8,6)="“ššš™"          
3330 f$(3,9,1)="–šššœ"  
3340 f$(3,9,2)="•9 9•"  
3350 f$(3,9,3)="•‘’•"            
3360 f$(3,9,4)="•¡”¢•"     
3370 f$(3,9,5)="•9 9•"
3380 f$(3,9,6)="“ššš™" 
3390 f$(3,10,1)="–šššœ" 
3400 f$(3,10,2)="•p p•" 
3410 f$(3,10,3)="•‘’•"       
3420 f$(3,10,4)="•¡”¢•"              
3430 f$(3,10,5)="•p p•" 
3440 f$(3,10,6)="“ššš™" 
3450 f$(3,11,1)="–šššœ"     
3460 f$(3,11,2)="•deg•"
3470 f$(3,11,3)="•hik•"
3480 f$(3,11,4)="£lmo¤"
3490 f$(3,11,5)="• â •" 
3500 f$(3,11,6)="“ššš™"           
3510 f$(3,12,1)="–šššœ"       
3520 f$(3,12,2)="•±²³•"
3530 f$(3,12,3)="•´µ¶•" 
3540 f$(3,12,4)="£·¸¹¤"              
3550 f$(3,12,5)="• â •"        
3560 f$(3,12,6)="“ššš™"       
3570 f$(3,13,1)="–šššœ"
3580 f$(3,13,2)="•º»¼•"
3590 f$(3,13,3)="•h¾¿•"
3600 f$(3,13,4)="£ÀÁÂ¤"     
3610 f$(3,13,5)="• â •"       
3620 f$(3,13,6)="“ššš™"       
3630 f$(3,14,1)="–šžšœ"  
3640 f$(3,14,2)="• • •"  
3650 f$(3,14,3)="—šŸš"  
3660 f$(3,14,4)="• • •" 
3670 f$(3,14,5)="• • •" 
3680 f$(3,14,6)="“š›š™"  
3690 f$(4,6,1)="–šššœ"      
3700 f$(4,6,2)="•6 6•"     
3710 f$(4,6,3)="•¥¦§•"    
3720 f$(4,6,4)="•¡©¢•"    
3730 f$(4,6,5)="•6 6•"     
3740 f$(4,6,6)="“ššš™"      
3750 f$(4,7,1)="–šššœ"        
3760 f$(4,7,2)="•7 7•"       
3770 f$(4,7,3)="•¥¦§•"       
3780 f$(4,7,4)="•¡©¢•"         
3790 f$(4,7,5)="•7 7•"        
3800 f$(4,7,6)="“ššš™"         
3810 f$(4,8,1)="–šššœ"      
3820 f$(4,8,2)="•8 8•"      
3830 f$(4,8,3)="•¥¦§•"    
3840 f$(4,8,4)="•¡©¢•"        
3850 f$(4,8,5)="•8 8•"    
3860 f$(4,8,6)="“ššš™"           
3870 f$(4,9,1)="–šššœ"         
3880 f$(4,9,2)="•9 9•" 
3890 f$(4,9,3)="•¥¦§•"   
3900 f$(4,9,4)="•¡©¢•"       
3910 f$(4,9,5)="•9 9•"       
3920 f$(4,9,6)="“ššš™"         
3930 f$(4,10,1)="–šššœ"          
3940 f$(4,10,2)="•p p•"            
3950 f$(4,10,3)="•¥¦§•"     
3960 f$(4,10,4)="•¡©¢•" 
3970 f$(4,10,5)="•p p•"           
3980 f$(4,10,6)="“ššš™"           
3990 f$(4,11,1)="–šššœ"          
4000 f$(4,11,2)="•deg•"       
4010 f$(4,11,3)="•hik•"       
4020 f$(4,11,4)="£lmo¤"             
4030 f$(4,11,5)="• å •"
4040 f$(4,11,6)="“ššš™"                    
4050 f$(4,12,1)="–šššœ"    
4060 f$(4,12,2)="•±²³•" 
4070 f$(4,12,3)="•´µ¶•" 
4080 f$(4,12,4)="£·¸¹¤" 
4090 f$(4,12,5)="• å •"   
4100 f$(4,12,6)="“ššš™"         
4110 f$(4,13,1)="–šššœ"
4120 f$(4,13,2)="•º»¼•"
4130 f$(4,13,3)="•h¾¿•"
4140 f$(4,13,4)="£ÀÁÂ¤"
4150 f$(4,13,5)="• å •"       
4160 f$(4,13,6)="“ššš™"  
4170 f$(2,1,1)="–šššœ"        
4180 f$(2,1,2)="•A A•"          
4190 f$(2,1,3)="•¥¦§•"         
4200 f$(2,1,4)="•®¯°•"           
4210 f$(2,1,5)="•A A•"       
4220 f$(2,1,6)="“ššš™"          
4230 f$(2,2,1)="–šššœ"          
4240 f$(2,2,2)="•2 2•"      
4250 f$(2,2,3)="•¥¦§•"        
4260 f$(2,2,4)="•®¯°•"          
4270 f$(2,2,5)="•2 2•" 
4280 f$(2,2,6)="“ššš™"        
4290 f$(2,3,1)="–šššœ"         
4300 f$(2,3,2)="•3 3•" 
4310 f$(2,3,3)="•¥¦§•"     
4320 f$(2,3,4)="•®¯°•"         
4330 f$(2,3,5)="•3 3•" 
4340 f$(2,3,6)="“ššš™"           
4350 f$(2,4,1)="–šššœ"      
4360 f$(2,4,2)="•4 4•"      
4370 f$(2,4,3)="•¥¦§•"       
4380 f$(2,4,4)="•®¯°•"         
4390 f$(2,4,5)="•4 4•"      
4400 f$(2,4,6)="“ššš™"            
4410 f$(2,5,1)="–šššœ"      
4420 f$(2,5,2)="•5 5•"       
4430 f$(2,5,3)="•¥¦§•"     
4440 f$(2,5,4)="•®¯°•"       
4450 f$(2,5,5)="•5 5•"      
4460 f$(2,5,6)="“ššš™"             
4470 f$(2,6,1)="–šššœ"   
4480 f$(2,6,2)="•6 6•"     
4490 f$(2,6,3)="•¥¦§•"      
4500 f$(2,6,4)="•®¯°•"      
4510 f$(2,6,5)="•6 6•"       
4520 f$(2,6,6)="“ššš™"      
4530 f$(2,7,1)="–šššœ"      
4540 f$(2,7,2)="•7 7•"       
4550 f$(2,7,3)="•¥¦§•"    
4560 f$(2,7,4)="•®¯°•"       
4570 f$(2,7,5)="•7 7•"    
4580 f$(2,7,6)="“ššš™"       
4590 f$(2,8,1)="–šššœ"        
4600 f$(2,8,2)="•8 8•" 
4610 f$(2,8,3)="•¥¦§•"        
4620 f$(2,8,4)="•®¯°•"       
4630 f$(2,8,5)="•8 8•"     
4640 f$(2,8,6)="“ššš™"       
4650 f$(2,9,1)="–šššœ"      
4660 f$(2,9,2)="•9 9•"     
4670 f$(2,9,3)="•¥¦§•"     
4680 f$(2,9,4)="•®¯°•"     
4690 f$(2,9,5)="•9 9•" 
4700 f$(2,9,6)="“ššš™"        
4710 f$(2,10,1)="–šššœ"   
4720 f$(2,10,2)="•p p•"       
4730 f$(2,10,3)="•¥¦§•"
4740 f$(2,10,4)="•®¯°•" 
4750 f$(2,10,5)="•p p•"        
4760 f$(2,10,6)="“ššš™"             
4770 f$(2,11,1)="–šššœ"       
4780 f$(2,11,2)="•deg•"      
4790 f$(2,11,3)="•hik•"     
4800 f$(2,11,4)="£lmo¤"     
4810 f$(2,11,5)="• ã •" 
4820 f$(2,11,6)="“ššš™"        
4830 f$(2,12,1)="–šššœ"     
4840 f$(2,12,2)="•±²³•"
4850 f$(2,12,3)="•´µ¶•" 
4860 f$(2,12,4)="£·¸¹¤" 
4870 f$(2,12,5)="• ã •"   
4880 f$(2,12,6)="“ššš™"      
4890 f$(2,13,1)="–šššœ"  
4900 f$(2,13,2)="•º»¼•"    
4910 f$(2,13,3)="•h¾¿•"   
4920 f$(2,13,4)="£ÀÁÂ¤"      
4930 f$(2,13,5)="• ã •"     
4940 f$(2,13,6)="“ššš™"   
4950 X3=12
4960 WINDOW #2,1,40,30,11:PAPER #2,3:CLS #2        
4970 FTY$="u v w x y z { | } u v w  ‚ ƒ „ … } u v w Š ‹ Œ Ž "  
4980 WINDOW #2,1,40,11,25:PAPER 4:CLS #2  
4990 LOCATE 1,1:PRINT "SCORE 1";MONEY(1):PNT(1)=0:PNT(2)=0
5000 LOCATE 1,3:PRINT "SCORE 2";MONEY(2)          
5010 Q=0:SCS=0:Y=0
5020 FOR I=1 TO 4:A=INT(RND*3)+1:B=INT(RND*12)+1:C(I)=A:D(I)=B:NEXT I 
5030 IF C(1)=C(2) AND D(1)=D(2) THEN 5020
5040 IF C(1)=C(3) AND D(1)=D(3) THEN 5020 
5050 IF C(1)=C(4) AND D(1)=D(4) THEN 5020 
5060 IF C(2)=C(3) AND D(2)=D(3) THEN 5020 
5070 IF C(2)=C(4) AND D(2)=D(4) THEN 5020 
5080 IF C(3)=C(4) AND D(3)=D(4) THEN 5020
5090 SC(1)=D(1)
5100 SC(2)=D(2)
5110 SC(3)=D(3)
5120 SC(4)=D(4)
5130 IF D(1)>10 THEN SC(1)=10
5140 IF D(2)>10 THEN SC(2)=10
5150 IF D(3)>10 THEN SC(3)=10
5160 IF D(4)>10 THEN SC(4)=10
5170 IF D(1)=1 THEN SC(1)=11:FE(1)=1
5180 IF D(2)=1 THEN SC(2)=11:FE(2)=1
5190 IF D(3)=1 THEN SC(3)=11:FE(3)=1
5200 IF D(4)=1 THEN SC(4)=11:FE(4)=1
5210 SCORE(PL+1)=SC(1)+SC(2)
5220 FOR I=1 TO 6:LOCATE 2,11+I:PRINT F$(3,14,I):NEXT I
5230 FOR I=1 TO 6:LOCATE 8,11+I:PRINT F$(C(2),D(2),I):NEXT I       
5240 FOR I=1 TO 6:LOCATE 2,17+I:PRINT F$(3,14,I):NEXT I
5250 FOR I=1 TO 6:LOCATE 8,17+I:PRINT F$(C(4),D(4),I):NEXT I         
5260 W$=INKEY$
5270 IF W$<>"G" AND W$<>"g" AND W$<>"T" AND W$<>"t" AND W$<>"L" AND W$<>"l" AND W$<>"O" AND W$<>"o" AND W$<>"C" AND W$<>"c" THEN 5260     
5280 IF W$="G" OR W$="g" THEN FOR I=1 TO 6:LOCATE 2,11+I:PRINT F$(C(1),D(1),I):NEXT I :GOTO 5260   
5290 IF W$="T" OR W$="t" THEN FOR I=1 TO 6:LOCATE 2,11+I:PRINT F$(3,14,I):NEXT I :GOTO 5260  
5300 IF UPPER$(W$)="L" AND COMP=0 THEN FOR I=1 TO 6:LOCATE 2,17+I:PRINT F$(C(3),D(3),I):NEXT I :GOTO 5260  
5310 IF UPPER$(W$)="O" AND COMP=0 THEN FOR I=1 TO 6:LOCATE 2,17+I:PRINT F$(3,14,I):NEXT I :GOTO 5260    
5320 IF W$="C" OR W$="c" THEN GOTO 5330
5330 IF SCS>=1 THEN 5550
5340 LOCATE 20,2:PEN (PL+1):PRINT "LAISSER > [O/N]?     ":PEN 1
5350 W$=INKEY$
5360 IF W$<>"O" AND W$<>"o" AND W$<>"N" AND W$<>"n" THEN 5350   
5370 IF UPPER$(W$)="O" AND COMP=0 THEN 5820
5380 IF W$="O" OR W$="o" THEN W$="":GOTO 5980
5390 IF W$="N" OR W$="n" THEN W$="":GOTO 5400       
5400 IF SCS<1 THEN GOTO 5460
5410 LOCATE 20,2:PEN (PL+1):PRINT "CARTE > [O/N]?      ":PEN 1
5420 W$=INKEY$   
5430 IF W$<>"O" AND W$<>"o" AND W$<>"N" AND W$<>"n" THEN 5420       
5440 IF W$="O" OR W$="o" THEN W$="":GOTO 6320   
5450 IF W$="N" OR W$="n" THEN W$="":GOTO 5820 
5460 IF SCS>=1 THEN GOTO 5550
5470 LOCATE 20,2:PEN (PL+1):INPUT "VOTRE MISE   ";PNT(PL+1)
5480 IF PNT(PL+1)<50 AND COMP=0 THEN PNT(PL+1)=50    
5490 IF PNT(PL+1)<0 THEN 5470    
5500 IF PNT(PL+1)>999 THEN 5470    
5510 IF PNT(PL+1)>MONEY(PL+1) THEN 5470      
5520 PEN 1   
5530 SCS=SCS+1
5540 GOTO 5410
5550 LOCATE 20,2:PEN (PL+1):PRINT "DOUBLER > [O/N]?     ":PEN 1 
5560 W$=INKEY$   
5570 IF W$<>"O" AND W$<>"o" AND W$<>"N" AND W$<>"n" THEN 5550 
5580 IF W$="o" OR W$="O" THEN E=1:PNT(PL+1)=PNT(PL+1)*2:W$="":GOTO 5600
5590 IF W$="N" OR W$="n" THEN W$="":GOTO 5410
5600 A=INT(RND*3)+1:B=INT(RND*13)+1
5610 IF F$(A,B,1)="1" THEN 5600
5620 IF A=C(1) AND B=D(1) THEN 5600
5630 IF A=C(2) AND B=D(2) THEN 5600     
5640 IF A=C(3) AND B=D(3) THEN 5600     
5650 IF A=C(4) AND B=D(3) THEN 5600        
5660 SOUND 1,200,100,0,1
5670 FOR I=1 TO 6:LOCATE 14+Q,11+Y+I:PRINT F$(A,B,I):NEXT I   
5680 Q=Q+6
5690 IF B=1 THEN RP(Q)=1
5700 F$(A,B,1)="1"
5710 IF B>10 THEN B=10
5720 SCORE(PL+1)=SCORE(PL+1)+B 
5730 IF SCORE(PL+1)>21 AND RP(6)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:RP(6)=0   
5740 IF SCORE(PL+1)>21 AND RP(12)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:RP(12)=0 
5750 IF SCORE(PL+1)>21 AND RP(18)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10 RP(18)=0 
5760 IF SCORE(PL+1)>21 AND RP(24)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10 RP(24)=0  
5770 IF SCORE(PL+1)>21 AND FE(ALICE+1)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:FE(ALICE+1)=0   
5780 IF SCORE(PL+1)>21 AND FE(ALICE+2)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:FE(ALICE+2)=0  
5790 IF SCORE(PL+1)>21 THEN 5860
5800 IF E=1 AND PL=1 THEN GOTO 5860
5810 IF E=1 AND PL=0 THEN GOTO 5820
5820 IF PL=1 THEN GOTO 5910
5830 RP(6)=0:RP(12)=0:RP(18)=0:RP(24)=0:PL=PL+1:SCORE(PL+1)=SC(3)+SC(4):SCS=0:Y=Y+6:Q=0:ALICE=2   
5840 IF COMP=1 THEN GOTO 6060
5850 IF PL=1 THEN 5330    
5860 REM ******* REGARDE QUI A GAGNE ********
5870 IF COMP=1 AND SCORE(2)>21 THEN MONEY(1)=MONEY(1)+PNT(1):LOCATE 9,10:PRINT "LA BANQUE A CREVE":FOR I=1 TO 3:LOCATE 15,1+I:PRINT FACE$(I):NEXT I:GOTO 5950     
5880 IF SCORE(2)>21 AND COMP=0 THEN LOCATE 9,10:PRINT"LE JOUEUR 2 A CREVE":MONEY(1)=MONEY(1)+PNT(2)+PNT(1):MONEY(2)=MONEY(2)-PNT(2)-PNT(1):GOTO 5950 
5890 IF COMP=1 AND SCORE(1)>21 THEN LOCATE 9,10:PRINT "LE JOUEUR 1 A CREVE":MONEY(1)=MONEY(1)-PNT(1):FOR I=1 TO 3:LOCATE 15,1+I:PRINT FACE$(I+6):NEXT I:GOTO 5950     
5900 IF COMP=0 AND SCORE(1)>21 THEN LOCATE 9,10:PRINT "LE JOUEUR 1 A CREVE":MONEY(1)=MONEY(1)-PNT(1):MONEY(2)=MONEY(2)+PNT(1):GOTO 5950    
5910 IF COMP=0 AND SCORE(1)>SCORE(2) THEN MONEY(1)=PNT(1)+MONEY(1)+PNT(2):LOCATE 9,10:PRINT "LE JOUEUR 1 A GAGNE":MONEY(2)=MONEY(2)-PNT(2)-PNT(1)
5920 IF COMP=0 AND SCORE(2)>SCORE(1) THEN MONEY(2)=MONEY(2)+PNT(2)+PNT(1):LOCATE 9,10:PRINT "LE JOUEUR 2 A GAGNE":MONEY(1)=MONEY(1)-PNT(1)-PNT(2)
5930 IF COMP=1 AND SCORE(1)>SCORE(2) THEN MONEY(1)=PNT(1)+MONEY(1):LOCATE 9,10:PRINT "VOUS AVEZ GAGNE":FOR I=1 TO 3:LOCATE 15,1+I:PRINT FACE$(I):NEXT I     
5940 IF COMP=1 AND SCORE(2)>SCORE(1) THEN LOCATE 9,10:PRINT "VOUS AVEZ PERDU":MONEY(1)=MONEY(1)-PNT(1):FOR I=1 TO 3:LOCATE 15,1+I:PRINT FACE$(I+6):NEXT I
5950 FOR I=1 TO 3000:NEXT I:FOR I=1 TO 3:LOCATE 15,1+I:PRINT FACE$(3+I):NEXT I
5960 PAPER #2,0:CLS #2:LOCATE 4,18:IF money(1)<=0 AND COMP=1 THEN PRINT "LE JOUEUR 1 N'A PLUS D'ARGENT":FOR I=1 TO 1000:NEXT I:GOTO 650
5965 IF money(1)<=0 AND COMP=0 THEN PRINT "LE JOUEUR 1 NE PEUT PLUS MISER":FOR I=1 TO 1000:NEXT I:GOTO 650
5970 IF money(2)<=0 AND COMP=0 THEN PRINT "LE JOUEUR 2 NE PEUT PLUS MISER":FOR I=1 TO 1000:NEXT I:GOTO 650
5980 PAPER #2,0:CLS #2:LOCATE 4,18:PRINT "VOULEZ-VOUS CONTINUER (C)":LOCATE 4,20:PRINT "VOULEZ-VOUS ARRETER (S)":LOCATE 4,22:PRINT "VOULEZ-VOUS CHANGER D'ADVERSAIRE (D)":LOCATE 4,24:PRINT "VOULEZ-VOUS LES INSTRUCTIONS (I)"
5990 W$=INKEY$:LOCATE 1,10:PRINT "                                 ":LOCATE 20,2:PRINT "                 "
6000 IF W$<>"C" AND W$<>"c" AND W$<>"S" AND W$<>"s" AND W$<>"D" AND W$<>"d" AND W$<>"I" AND W$<>"i" THEN 5990
6010 IF W$="C" OR W$="c" THEN 6050
6020 IF W$="S" OR W$="s" THEN END         
6030 IF W$="D" OR W$="d" THEN CLS:GOTO 650
6040 IF W$="I" OR W$="i" THEN I=1:GOTO 40
6050 CLS #2:PL=0:SCORE(1)=0:SCORE(2)=0:Y=0:SCS=0:FE(1)=0:FE(2)=0:FE(3)=0:FE(4)=0:ALICE=0:GOTO 1770 
6060 REM ********* BOUCLE DE L'ORDINATEUR ********
6070 RP(6)=0:RP(12)=0:RP(18)=0:RP(24)=0:Q=0    
6080 FOR I=1 TO 6:LOCATE 2,17+I:PRINT F$(C(3),D(3),I):NEXT I  
6090 IF SCORE(PL+1)>=17 AND SCORE(PL+1)<=21 THEN GOTO 5860 
6100 RP(6)=0:RP(12)=0:RP(18)=0:RP(24)=0:Q=0  
6110 A=INT(RND*3)+1:B=INT(RND*13)+1
6120 IF F$(A,B,1)="1" GOTO 6110
6130 IF A=C(1) AND B=D(1) THEN 6110
6140 IF A=C(2) AND B=D(2) THEN 6110
6150 IF A=C(3) AND B=D(3) THEN 6110     
6160 IF A=C(4) AND B=D(4) THEN 6110      
6170 FOR I=1 TO 6:LOCATE 14+Q,11+Y+I:PRINT F$(A,B,I):NEXT I
6180 F$(A,B,1)="1"  
6190 IF B>10 THEN B=10    
6200 IF B=1 THEN RP(Q+6)=1:B=11   
6210 SCORE(PL+1)=SCORE(PL+1)+B       
6220 Q=Q+6     
6230 IF SCORE(PL+1)>21 AND FE(4)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:FE(4)=0     
6240 IF SCORE(PL+1)>21 AND FE(3)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:FE(3)=0
6250 IF SCORE(PL+1)>21 AND RP(6)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:RP(6)=0       
6260 IF SCORE(PL+1)>21 AND RP(12)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:RP(12)=0   
6270 IF SCORE(PL+1)>21 AND RP(18)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:RP(18)=0  
6280 IF SCORE(PL+1)>21 AND RP(24)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:RP(24)=0
6290 IF SCORE(PL+1)>21 THEN GOTO 5860
6300 IF SCORE(PL+1)>=17 AND SCORE(PL+1)<=21 THEN GOTO 5860         
6310 IF SCORE(PL+1)<17 THEN GOTO 6110
6320 A=INT(RND*3)+1:B=INT(RND*13)+1   
6330 IF F$(A,B,1)="1" GOTO 6110   
6340 IF A=C(1) AND B=D(1) THEN 6320
6350 IF A=C(2) AND B=D(2) THEN 6320
6360 IF A=C(3) AND B=D(3) THEN 6320
6370 IF A=C(4) AND B=D(4) THEN 6320
6380 SOUND 1,200,100,0,1
6390 FOR I=1 TO 6:LOCATE 14+Q,11+Y+I:PRINT F$(A,B,I):NEXT I 
6400 F$(A,B,1)="1"    
6410 IF B>10 THEN B=10   
6420 Q=Q+6
6430 IF B=1 THEN RP(Q)=1:B=11
6440 SCORE(PL+1)=SCORE(PL+1)+B
6450 IF SCORE(PL+1)>21 AND FE(ALICE+1)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:FE(ALICE+1)=0   
6460 IF SCORE(PL+1)>21 AND FE(ALICE+2)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:FE(ALICE+2)=0   
6470 IF SCORE(PL+1)>21 AND RP(6)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:RP(6)=0
6480 IF SCORE(PL+1)>21 AND RP(12)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:RP(12)=0  
6490 IF SCORE(PL+1)>21 AND RP(18)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:RP(18)=0 
6500 IF SCORE(PL+1)>21 AND RP(24)=1 THEN SCORE(PL+1)=SCORE(PL+1)-10:RP(24)=0   
6510 IF SCORE(PL+1)>21 THEN FOR T=1 TO 3000:NEXT T:GOTO 5860  
6520 GOTO 5330
6530 UY=4:WEB=1      
6540 G$=" C C#D D#E F F#G G#A A#B"     
6550 ENV 1,1,15,1,3,-1,4,12,-1,8
6560 FOR N=1 TO 95:READ N$,UR:GOSUB 6580:SOUND 1,H,UR*UY,0,WE:NEXT N
6570 RETURN 
6580 IF N$="R" THEN WE=0:RETURN ELSE WE=WEB     
6590 ASS=LEN(N$)      
6600 IF ASS=2 THEN EFF$=LEFT$(N$,1):RED=VAL(RIGHT$(N$,1)):GOTO 6630   
6610 IF ASS=4 THEN EFF$=LEFT$(N$,2):RED=VAL(RIGHT$(N$,2)):GOTO 6630  
6620 IF MID$(N$,2,1)="-" THEN EFF$=LEFT$(N$,1):RED=VAL(RIGHT$(N$,2)) ELSE EFF$=LEFT$(N$,2):RED=VAL(RIGHT$(N$,1)) 
6630 KITR=INSTR(G$,EFF$)/2 
6640 D=440*(2^(RED+(KITR-10)/12))   
6650 H=ROUND(125000/D)       
6660 RETURN
6670 DATA G1,12,A1,3,C2,3,B1,3,A1,3,D2,6,D2,6,D2,3
6680 DATA E2,3,B1,3,C2,3,A1,6,A1,6
6690 DATA A1,3,C2,3,B1,3,A1,3,G1,3,G2,3,F#2,3,E2,3,D2,3,C2,3,B1,3,A1,3,G1,12
6700 DATA A1,3,C2,3,B1,3,A1,3,D2,6,D2,6,D2,3,E2,3,B1,3,C2,3,A1,6,A1,6
6710 DATA A1,3,C2,3,B1,3,A1,3,G1,3,D2,3,A1,3,B1,3,G1,6,R,6,G1,12
6720 DATA A1,3,C2,3,B1,3,A1,3,D2,6,D2,6,D2,3,E2,3,B1,3,C2,3,A1,6,A1,6
6730 DATA A1,3,C2,3,B1,3,A1,3,G1,3,G2,3,F#2,3,E2,3,D2,3,C2,3,B1,3,A1,3,G1,12 
6740 DATA A1,3,C2,3,B1,3,A1,3,D2,6,D2,6,D2,3,E2,3,B1,3,C2,3,A1,6,A1,6
6750 DATA A1,3,C2,3,B1,3,A1,3,G1,3,D2,3,A1,3,B1,3,G1,12