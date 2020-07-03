10 '
20 ' L'AFFAIRE RAVENHOOD MIS AU PROPRE PAR CHANY FROM NPS
30 ' SOLUTION DU JEU PAR PAPPY SULLY (FICHIER RAVENHOO.N37 EN FACE B)
40 '
50 CALL &BB48
60 ON ERROR GOTO 500
110 MODE 2:INK 0,0:INK 1,26:PEN 1:PAPER 0:BORDER 0
120 PLOT 124,1,1:DRAW 124,398:PLOT 516,1:DRAW 516,398
130 PLOT 120,1:DRAW 120,398:PLOT 520,1:DRAW 520,398
140 PLOT 120,398:DRAW 520,398
150 PLOT 120,1:DRAW 520,1    
160 LOCATE 28,2:PRINT"  Dans la serie MYSTERE ..."
170 LOCATE 18,4:PRINT"Le second volet des aventures de JEROME LANGE:"
180 LOCATE 18,6:PRINT"    L ' A F F A I R E    R A V E N H O O D"
190 LOCATE 18,8:PRINT"      D'apres le livre de FONTERS Bruno."
200 LOCATE 18,11:PRINT"       Realisation : FONTERS & LANKHOR"
210 LOCATE 18,13:PRINT"          Avec la participation de ..."
220 LOCATE 18,14:PRINT"  FONTERS Bruno pour la musique et les voix,"
230 LOCATE 18,16:PRINT"                FONTERS Bruno"
240 LOCATE 18,17:PRINT"        pour la realisation graphique,"
250 LOCATE 18,19:PRINT" Bruno FONTERS pour la realisation technique,"
260 LOCATE 18,21:PRINT"      FONTERS Bruno  pour l'adaptation"
270 LOCATE 18,22:PRINT"        AMSTRAD CPC 464,664 et 6128 ...
280 LOCATE 18,24:PRINT"     COPYRIGHT 1993 : FONTERS & LANKHOR"
290 IF INKEY(18)=0 OR INKEY(47)=0 OR INKEY(9)=0 OR INKEY(6)=0 THEN 310
300 GOTO 290
310 WINDOW 1,1,1,1:MEMORY &679C:LOAD"RAVENHOO.N01":CALL &A500
320 MODE 1:INK 1,0:INK 2,0:INK 3,0:CALL &A000,&6000
330 CALL &7F00
340 INK 1,26:INK 2,13:INK 3,10:BORDER 0
350 FOR i=0 TO 4000:NEXT
360 PAPER 0:PEN 1
370 WINDOW 1,40,21,25:CLS
380 CLS:PEN 1:PAPER 0:PRINT"Juillet 53. Depuis le mystere de        Mortevielle, mes affaires avaient       soudainement reprises. J'avais donc prisdes vacances bien meritee. ... Quand je revins, une lettre m'attendait ..."
390 IF INKEY(47)=0 OR INKEY(18)=0 OR INKEY(6)=0 OR INKEY(9)=0 THEN 410
400 GOTO 390
410 '
420 INK 2,10:INK 3,13:CALL &A000,&6000
430 IF INKEY(47)=0 OR INKEY(11)=0 OR INKEY(6)=0 OR INKEY(9)=0 THEN 450
440 GOTO 430
450 MODE 1:FOR X=0 TO 4:INK X,0:NEXT:CALL &5F4B:CALL &A000,&6000:PRINT SPACE$(80)
460 INK 1,14:INK 2,26:INK 3,13  
470 GOTO 520
480 WINDOW 1,1,1,1:CLS:GOTO 630
490 ' ERROR
500 RESUME
510 GOTO 500
520 RESTORE 590
530 EVERY 2,1 GOSUB 610
540 FOR n=1 TO 90 STEP 2
550 READ a:READ b
560 SOUND 1,a,35,7,1,1,0:SOUND 4,b,35,7,1,1,0:FOR c=0 TO 1:NEXT c
570 NEXT n
580 SOUND 1,426,150,5:SOUND 4,213,150,7:GOTO 520
590 DATA 284,358,284,284,284,284,284,426,319,284,358,284,358,358,379,284,426,284,426,426,358,284,284,284,213,358,213,284,213,284,213,426,239,284,268,284,268,319,284,284,319,268,319,426,284,284,268,268,284,379,268,319,284,284
600 DATA 225,451,268,284,284,284,284,358,319,284,358,284,358,426,379,284,426,284,379,379,379,284,379,284,379,451,358,284,379,284,426,426,358,426,284,426
610 IF INKEY(47)=0 THEN CALL &BCA7:GOTO 480
620 RETURN
630 ' PROGRAMME
640 CLEAR
650 DIM M1$(4):DIM M2$(4):M1$(0)="Stylo plume":M1$(1)="Bougie":M1$(2)="Chandelier":M2$(0)="Montre":M2$(1)="Somnifere":M2$(2)="Cendrier":M2$(3)="Bobine de fil":H=7:MI=5
660 DIM B1$(4):DIM B2$(4):B1$(0)="Pinceau":B1$(1)="Peinture":B1$(2)="Chiffon":B1$(3)="Peigne":B2$(0)="Rasoir":B2$(1)="Brosse":B2$(2)="Eponge":B2$(3)="Savon"
670 DIM CF1$(4):DIM CF2$(4):DIM CF3$(4):CF1$(0)="Lunettes":CF1$(1)="Portefeuille":CF1$(2)="Baguette"
680 CF2$(0)="Feuille":CF2$(1)="Corde":CF2$(2)="Manuscrit":CF2$(3)="Cendrier"
690 CF3$(0)="Briquet":CF3$(1)="Jeu de cartes":CF3$(2)="Gants"
700 DIM CH1$(4):DIM CH2$(4):DIM CH3$(4):CH1$(0)="Pipe":CH1$(1)="Tabac":CH1$(2)="Allumettes":CH1$(3)="Reveil"
710 CH2$(0)="Manuscrit":CH2$(1)="Collier":CH2$(2)="Crucifix"
720 CH3$(0)="Jumelles":CH3$(1)="Coffret vide":CH3$(2)="Revolver"
730 DIM CN1$(4):DIM CN2$(4):CN1$(0)="Plumeau":CN1$(1)="Lunettes":CN1$(2)="Peigne":CN1$(3)="Rasoir"
740 CN2$(0)="Lettre":CN2$(1)="Mouchoir":CN2$(2)="Lampe-torche":CN2$(3)="Bougie"
750 DIM CV1$(4):DIM CV2$(4):CV1$(0)="Manuscrit":CV1$(1)="Baguette":CV1$(2)="Coffret vide"
760 CV2$(0)="Fusil":CV2$(1)="Munitions":CV2$(2)="Jumelles"
770 DIM CG1$(4):DIM CG2$(4):DIM CG3$(4):CG1$(0)="Miroir casse":CG1$(1)="Couteau":CG1$(2)="Cornue"
780 CG2$(0)="Coffret vide":CG2$(1)="Marteau":CG2$(2)="Ciseaux"
790 CG3$(0)="Porte-monnaie":CG3$(1)="Clef"
800 DIM SA$(4):SA$(0)="Cendrier":SA$(1)="Jeu de cartes":SA$(2)="Bougie"
810 GUS=0:RABI=0:MANU=0:HER=0:MAVL=0:GR=0:MUR=0:CAV=0:OEIL=0:COF=0:CY=0:FOX=0
820 CHE=CSU=CVL=COL=COD=CFR=CNE=0
830 mi1=0:mi2=0:mi3=0:PT=0
840 ACC=0:NES=0:DIM CY$(4):CY$(0)="Petite clef"
850 DIM WC$(4):WC$(0)="Pinceau":WC$(1)="Peinture":WC$(2)="Chiffon":WC$(3)="Rasoir"
860 DIM SC$(4):SC$(0)="Lettre"
870 DIM JL$(12):Jl$(0)="Revolver":H$=""
880 MEMORY 39999:MODE 1:INK 0,0:INK 1,0:INK 2,0:INK 3,0:WINDOW 1,1,1,1:BORDER 0:P$="MANOR":CHAIN"RAVENHOO.N02"