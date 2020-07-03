30 MEMORY 28600:CALL &BB48
40 MODE 1:INK 0,0:INK 1,0:INK 2,0:INK 3,0:LOAD"modul1.mus",28601:dep=30001:LOAD"croix.cmp",dep:ad=57373:GOSUB 30000:LOAD"dessin1.cmp",29900
80 DIM que1$(15),que$(15),sol1(15),sol(15),estim1$(15),estim$(15),note(5),has(4),rep(4):mus=28601:GOSUB 10110'def.env et ent
120 GOSUB 30040:GOSUB 30050:GOSUB 30060
130 BORDER 3:WINDOW#1,3,40,19,23:WINDOW#2,3,14,1,17:PEN#1,3:PEN#2,3:LOCATE#2,1,4:PRINT#2,"VOUS":PRINT#2:PRINT#2,"ARRIVEZ":PRINT#2:PRINT#2,"A LA CROIX":PRINT#2:PRINT#2,"DU  DESTIN.";
140 EVERY 10,1 GOSUB 10000
155 IF INKEY$<>""THEN 155 ELSE INK 1,25:INK 2,9:INK 3,15
160 IF INKEY$=""THEN 160
180 CLS#2:GOSUB 30170:deb=40815:nom1$=""
186 c=PEEK(deb):IF c>0 THEN C$=CHR$(c):nom1$=nom1$+C$:deb=deb+1:GOTO 186
187 deb=40830:nom2$=""
188 c=PEEK(deb):IF c>0 THEN C$=CHR$(c):nom2$=nom2$+C$:deb=deb+1:GOTO 188
190 GOSUB 20200:PRINT#1,"- Bonjour, troubadours, je suis";"l'enchanteur CORWIN.":FOR t=1 TO 2000:NEXT:GOSUB 30190:PRINT#1,"  Mais je vous reconnais,":PRINT#1,nom1$;" et ";nom2$;"!":GOSUB 30060:GOSUB 20220
200 CLS#1:PRINT#1,"- L'esprit de la for]t m'a souffl{";"la venue de deux troubadours que j'ai";"pour mission d'aider.":PRINT#1:PRINT#1," Peut-]tre s'agit-il de vous !":GOSUB 20220
330 CLS#1:GOSUB 30170:PEN#1,3:PRINT#1,"-";nom1$;" et ";nom2$;",":PRINT#1,"je dois m'en assurer.":GOSUB 20220
350 CLS#1:GOSUB 20200:PRINT#1,"-Les troubadours connaissent bien les";:PRINT#1,"CONTES et les LEGENDES. Vous aussi,":PRINT#1,"certainement!":PRINT#1,"Voulez-vous {voquer les CONTES(C)":PRINT#1,"ou les LEGENDES(L)?";
360 choix$=UPPER$(INKEY$):IF NOT(Choix$="C"OR Choix$="L")THEN 360
370 CLS#1:GOSUB 30200:PRINT#1,"-A chaque question, ";nom1$;",":PRINT#1:PRINT#1,"tu indiqueras un nombre (puis ENTER).";:GOSUB 30060:GOSUB 20220:CLS#1:GOSUB 20200:GOSUB 2000
400 CLS#1:GOSUB 30190:PRINT#1,"-Bravo, ";nom1$;" et":PRINT#1,nom2$;"!":PRINT#1,"Vous ]tes bien les troubadours":PRINT#1,"annonc{s, ceux qui r{ussiront l@ o|":PRINT#1,"tant de guerriers ont {chou{...";:GOSUB 30060
410 GOSUB 20220:CLS#1:GOSUB 30200:PRINT#1,"- Car seuls votre talent et votre":PRINT#1,"astuce pourront triompher du terrible";:PRINT#1,"KANTOR, dans son ch[teau de ROC-NOIR.":PRINT#1:PRINT#1,"T[chez de rencontrer maintenant...":GOSUB 20220
420 CLS#1:GOSUB 30170:PRINT#1,"...DWORKIN, le GNOME-MUSICIEN.":PRINT#1:PRINT#1,"Il habite la for]t d' Ambre":PRINT#1,"et vous remettra quelque chose...":GOSUB 20220:r=REMAIN(1)
480 INK 1,0:INK 2,0:INK 3,0:MODE 1:GOSUB 30090
510 PEN 3:LOCATE 14,8:PRINT"La route est":LOCATE 14,11:PRINT"longue jusqu'@":LOCATE 14,14:PRINT"la for]t":LOCATE 14,17:PRINT"d'Ambre.":GOSUB 30060
520 INK 1,25:INK 2,9:INK 3,15:GOSUB 20220
545 EVERY 6,1 GOSUB 10050'musique
550 INK 1,0:INK 2,0:INK 3,0:MODE 1:GOSUB 30070:WINDOW#1,3,40,19,23:WINDOW#2,3,14,1,18:LOCATE#2,1,4:PRINT#2,"ENFIN,":LOCATE#2,1,7:PRINT#2,"LA FORET":LOCATE#2,1,10:PRINT#2,"D'AMBRE !":GOSUB 30040:GOSUB 30050:GOSUB 30060:INK 1,25:INK 2,9:INK 3,15:GOSUB 20220
610 CLS#1:CLS#2:GOSUB 20200:LOCATE#2,4,6:PRINT#2,"QUE":LOCATE#2,1,10:PRINT#2,"FAITES-VOUS?";:PEN#1,2:PRINT#1,CHR$(24);"1":PRINT#1,"2":PRINT#1,"3":PRINT#1,"4";CHR$(24);
620 PEN#1,3:LOCATE#1,3,1:PRINT#1,"Finalement, vous revenez en arri}re.";:LOCATE#1,3,2:PRINT#1,"Vous chantez pour reprendre courage.";:LOCATE#1,3,3:PRINT#1,"Vous avancez, grattant votre viole.";:LOCATE#1,3,4:PRINT#1,"Vous d{cidez de contourner la for]t.";
635 IF INKEY$<>""THEN 635
640 C$=INKEY$:IF C$=""THEN 640
645 IF ASC(C$)<49 OR ASC(C$)>52 THEN 640
650 CLS#2:CLS#1:IF C$="1"THEN GOSUB 30170:GOSUB 30200:PRINT#1,"-Impossible, troubadour, un mur de":PRINT#1,"brouillard t'en emp]che!":PRINT#1:PRINT#1,"Il faut aller de l'avant! Courage!":GOSUB 30060:GOSUB 20220:GOTO 610 ELSE 670
670 IF C$="4"THEN GOSUB 30170:PRINT#1,"-D'accord.":mot$="VIVALDI":FOR t=1 TO 1000:NEXT:GOTO 1000 ELSE 690
680 GOSUB 20220
690 IF(C$<>"2"AND C$<>"3")THEN 610
720 GOSUB 30080
730 GOSUB 30270:PRINT#1,"-Hol@, ";nom1$;:PRINT#1," et ";nom2$;",":PRINT#1,"ceci est ma for]t! Seuls les musiciens";"la traversent.":GOSUB 30060:GOSUB 20220
740 CLS#1:PRINT#1,"-Voyons si tel est votre cas !":PRINT#1:PRINT#1,"Et je vous laisserai passer...":GOSUB 20220
770 CLS#1:PRINT#1,"- Huit fois de suite,";nom1$;",";"tu devras me r{pondre sans te tromper.":PRINT#1,"Et pour commencer...":GOSUB 20220
780 CLS#1:GOSUB 20200:r=REMAIN(1):CALL &BCA7:RESTORE 3000:GOTO 3000'envoi au s/p EXERCICES MUSICAUX
1000 r=REMAIN(1):CALL &BCA7:mus=28601:GOSUB 10110:INK 1,0:INK 2,0:INK 3,0:MODE 1:GOSUB 30090
1010 PEN 3:LOCATE 14,8:PRINT"Vous arrivez":LOCATE 14,11:PRINT"au terme de":LOCATE 14,14:PRINT"la premi}re":LOCATE 14,17:PRINT"{tape.":GOSUB 30060:INK 1,25:INK 2,9:INK 3,15:GOSUB 20220:EVERY 10,1 GOSUB 10000:MODE 1:WINDOW#1,3,40,18,23
1020 GOSUB 30180:GOSUB 30040:GOSUB 30050:PEN#1,3:PRINT#1,"- Me revoil@, ";nom1$;:PRINT#1," et ";nom2$;".":PRINT#1:PRINT#1,"Je vais vous communiquer le mot":PRINT#1,"secret qui permet d'acc{der @ la":PRINT#1," deuxi}me {tape.";:GOSUB 30060:GOSUB 20220
1040 CLS#1:GOSUB 30240:PRINT#1,"- Il a {t{ beaucoup question de":PRINT#1,"musique jusqu'ici...":IF mot$="VIVALDI"THEN PRINT#1:PRINT#1,"(Mais peut-]tre que vous ne le":PRINT#1," savez pas !)";
1050 GOSUB 20220:CLS#1:PRINT#1,"- C'est pourquoi le mot secret sera":LOCATE#1,13,3:PRINT#1,CHR$(24);mot$;CHR$(24):PRINT#1:PRINT#1,"C'est le nom d'un gar\\on":PRINT#1," plein d'avenir !";:GOSUB 20220:CLS#1:GOSUB 30180
1060 PRINT#1,"- Alors, ne l'oubliez pas et";"soyez prudents.":PRINT#1:PRINT#1,"Le plus dur est encore @ venir !";:GOSUB 20220:CLS#1:GOSUB 20200:PRINT#1:PRINT#1,"  -A bient`t, ";nom1$:PRINT#1,"  et ";nom2$;"...":WINDOW#0,3,40,21,23:CLEAR:RUN"trouba2"
2000 IF choix$="C"THEN RESTORE 2500 ELSE RESTORE 2800
2020 RANDOMIZE TIME:n=9:mx=14:faute=0
2040 FOR x=1 TO mx:READ que1$(x),sol1(x),estim1$(x):NEXT
2050 FOR i=1 TO n:has=INT(RND*mx)+1:que$(i)=que1$(has):sol(i)=sol1(has):estim$(i)=estim1$(has):FOR x=has TO mx:que1$(x)=que1$(x+1):sol1(x)=sol1(x+1):estim1$(x)=estim1$(x+1):NEXT:mx=mx-1:NEXT
2070 FOR x=1 TO n
2090 has=INT(RND*6)+1:IF has=1 THEN intro$="-Sais-tu, troubadour,"ELSE IF has=2 THEN intro$="-"+nom1$+","ELSE IF has=3 THEN intro$="-"+nom1$+", peux-tu indiquer"ELSE IF has=4 THEN intro$="-Troubadour, j'aimerais savoir"ELSE IF has=5 THEN intro$=""
2095 IF has=6 THEN intro$="-Rappelle-moi"
2100 IF has=5 THEN quest$="-"+UPPER$(LEFT$(que$(x),1))+MID$(que$(x),2)ELSE quest$=que$(x)
2110 CLS#1:GOSUB 30170:PRINT#1,intro$;:PRINT#1,quest$;
2130 A$="":cod1=0:cod2=48::cod3=57:cod4=255:cn=1:co=15:lig=5:long=4:pla=0:col=15:GOSUB 20000:rep=VAL(A$)'saisie reponse 
2140 PEN#1,1:IF rep=sol(x)THEN GOSUB 30190:LOCATE#1,1,5:PRINT#1,"-C'est exactement cela!":FOR t=1 TO 1000:NEXT t:PEN#1,3:GOTO 2240'envoi a la fin boucle
2150 CLS#1:PRINT#1:IF rep<sol(x)/2 THEN GOSUB 30210:PRINT#1,"-Essaie un plus grand nombre,":PRINT#1:PRINT#1,nom1$;"!";ELSE IF(rep<sol(x)AND rep>=sol(x)/2)THEN GOSUB 30220:PRINT#1,"-C'est un petit peu plus, ":PRINT#1:PRINT#1,nom1$;"!";
2155 IF rep>sol(x)*2 THEN GOSUB 30210:PRINT#1,"-Comment, c'est beaucoup moins,":PRINT#1:PRINT#1,nom1$;"!";ELSE IF(rep>sol(x)AND rep<=sol(x)*2)THEN GOSUB 30220:PRINT#1,"-C'est un peu moins, ":PRINT#1:PRINT#1,nom1$;"!";
2156 p=INSTR(estim$(x),"-"):esti1$=LEFT$(estim$(x),p-1):esti2$=MID$(estim$(x),p+1):PRINT#1," (entre ";esti1$;" et ";esti2$;")";
2160 PEN#1,3:FOR t=1 TO 3000:NEXT t:CLS#1:faute=faute+1:IF faute<3 THEN 2110
2170 GOSUB 30220:IF faute=3 THEN PRINT#1,"-Attention, je ne pourrais accepter":PRINT#1,"une quatri}me erreur!":FOR t=1 TO 2000:NEXT t:GOTO 2110
2180 IF faute=4 THEN PRINT#1,"-D{sol{, ";nom1$;" et ";nom2$;".";:PRINT#1,"Vous n'avez pas r{ussi cette {preuve.":GOSUB 30060:GOSUB 20220
2190 CLS#1:GOSUB 20200:GOSUB 30170:PRINT#1,"-Vous pouvez poursuivre votre route,":PRINT#1,"mais je vous conseille de recommencer";:PRINT#1,"l'{preuve...":PRINT#1,"Que d{cidez-vous?"
2200 PEN#1,1:PRINT#1,"   ";CHR$(24);"1";CHR$(24);" Poursuivre     ";CHR$(24);"2";CHR$(24);" Recommencer";:PEN#1,3
2210 C$=INKEY$:IF C$<>"1"AND C$<>"2"THEN 2210
2220 CLS#1:PRINT#1,"-D'accord.":IF C$="1"THEN FOR t=1 TO 1000:NEXT:mot$="VIVALDI":GOTO 1000
2230 IF C$="2"THEN FOR t=1 TO 1000:NEXT:GOTO 350
2240 NEXT x
2250 RETURN
2500 DATA "quel [ge avait la Belle au Bois       dormant quand elle se piqua le doigt?",16,"12-18","combien d'ann{es dormit la Belle au   Bois avant que le Prince Charmant     l'embrasse?",100,"70-120"
2510 DATA "combien le Petit Poucet comptait de   fr}res (attention au pi}ge!).",6,"4-8","combien de pauvres femmes {pous}rent  le m{chant Barbe-Bleue?",7,"5-10"
2520 DATA "quel est le nombre des voleurs        qu'Ali-Baba vola?",40,"30-60","combien de coups sonn}rent @          l'horloge quand Cendrillon perdit sa  pantoufle de vair?",12,"10-13" 
2530 DATA "combien de nains Blanche-Neige        dorlota dans la maison au coeur de    la for]t?",7,"4-8","pendant combien de nuits la belle     Sch{h{razade conta ses histoires      merveilleuses?",1001,"990-1002"
2540 DATA "quel est le nombre de petits cochons  que le loup voulut d{vorer?",3,"1-5","combien le petit tailleur en a tu{es  d'un seul coup (...de mouches,  bien  s~r!)?",7,"3-8"
2550 DATA "combien {taient les ours d{rang{s     par Boucles d'Or dans leur maison?",3,"1-4","quel est le nombre des voyages de     Sindbad le Marin ?",7,"5-8"
2560 DATA "quel est le nombre des souris que la  bonne f{e transforma en chevaux pour  emmener Cendrillon au bal ?",6,"4-8","combien de lieues l'ogre parcourait   en un seul bond gr[ce @ ses bottes      magiques ?",7,"3-8"
2800 DATA "quel est le nombre des travaux        qu'Hercule dut  accomplir ?",12,"8-15","combien d'ann{es dura le si}ge des    arm{es grecques devant la ville de    Troie ?",10,"7-15"
2810 DATA "pendant combien d'ann{es Ulysse erra  sur les flots d{cha^n{s de la mer     M{diterran{e ?",10,"7-15","combien de guerriers de Sparte        arr]t}rent les Perses au d{fil{ des   Thermophyles?(12-30-120-300-3000)",300,"120-3000"
2820 DATA "pendant combien de jours le D{luge    d{vasta la Terre enti}re ?",40,"30-60","combien de t]tes poss}dait Cerb}re,   le chien monstrueux qui gardait les   Enfers ?",3,"2-5"
2830 DATA "quel est le nombre des collines       entourant Rome, la ville l{gendaire ?",7,"4-8","en quelle ann{e le valeureux          Charlemagne fut couronn{ empereur ?   (500 - 800 - 900 - 950 - 1200)",800,"500-900"
2840 DATA"combien {taient les Dieux entourant   Zeus sur l'Olympe inaccessible        (attention au pi}ge!) ?",11,"8-13","quel est le nombre des Chevaliers de  la Table Ronde, dont Arthur           s'entoura ? (12 - 70 - 150 - 800 -    1500)",150,"70-800"
2850 DATA "combien de t]tes poss}dait l'Hydre    de Lerne qu'Hercule affronta ?",7,"5-10","combien d'ann{es v{cut le             l{gendaire Mathusalem ?               (96 - 250 - 540 - 969 - 2500)",969,"540-2500"
2860 DATA "quel est le nombre des Rois Mages     qui suivirent l'Etoile de Bethl{em ?",3,"2-5","combien de Commandements Moýse re\\ut  sur le mont Sinaý entour{ de nu{es ?",10,"8-12"
3000 DATA SI,379,319,253,213,179,SOL,426,379,319,253,213,RE,319,253,213,179,142,FA,253,213,179,142,127,MI,478,426,379,319,253
3010 HAS=INT(RND*5)+1:IF has=1 THEN note$="SI":note=253 ELSE IF has=2 THEN note$="SOL":note=319 ELSE IF has=3 THEN note$="RE":note=213 ELSE IF has=4 THEN note$="FA":note=179 ELSE IF has=5 THEN note$="MI":note=379
3020 READ A$:IF A$<>NOTE$THEN 3020
3040 FOR x=1 TO 5:READ note(x):NEXT
3060 PRINT#1:PRINT#1,"- ...{coute bien la note    .";:FOR t=1 TO 1000:NEXT
3070 FOR x=1 TO 4:LOCATE#1,26,2:PRINT#1,CHR$(24);note$;:GOSUB 30250:SOUND 1,note,200,15:FOR t=1 TO 2000:NEXT t:GOSUB 30080:FOR t=1 TO 1000:NEXT t,x
3090 CLS#1:essai=1:compt=1
3100 IF essai=4 THEN GOTO 3200 ELSE IF compt=9 THEN GOTO 3500'essai=4(PERDU)  compt=9(GAGNE)
3105 LOCATE#1,30,1:PRINT#1,CHR$(24);"ESSAI":LOCATE#1,36,1:PRINT#1,essai;CHR$(24);:LOCATE 37,24:PRINT CHR$(24);compt;CHR$(24);
3110 LOCATE#1,1,3:PRINT#1,"- Est-ce un ";CHR$(24);note$;CHR$(24);" (O/N)?";:has=INT(RND*5)+1:FOR t=1 TO 1000:NEXT:GOSUB 30250:SOUND 1,note(has),150,15
3113 IF SQ(1)<>4 THEN IF INKEY$<>""THEN 3113 ELSE 3113 ELSE GOSUB 30080
3120 C$=INKEY$:IF C$=""THEN 3120
3130 IF(UPPER$(C$)="O"AND note(has)=note)OR(UPPER$(C$)="N"AND note(has)<>note)THEN PEN#1,1:LOCATE#1,1,3:PRINT#1,CHR$(18);"- C'est juste.";:FOR t=1 TO 1000:NEXT:PEN#1,3:PRINT#1,CHR$(11);CHR$(18);:compt=compt+1:GOTO 3100
3140 IF(UPPER$(C$)<>"O"AND UPPER$(C$)<>"N")THEN 3120
3160 CLS#1:PEN#1,1:PRINT#1:PRINT#1,"- Pas du tout, {coute bien."
3170 FOR t=1 TO 2000:NEXT:PEN#1,3:FOR x=1 TO 3:LOCATE#1,35,1:PRINT#1,CHR$(24);note$;:GOSUB 30250:SOUND 1,note,150,15
3172 IF SQ(1)<>4 THEN 3172 ELSE GOSUB 30080:FOR t=1 TO 2000:NEXT t,x
3174 PRINT#1,CHR$(24);:compt=0:essai=essai+1
3180 IF SQ(1)<>4 THEN 3180 ELSE CLS#1:PRINT#1:PRINT#1,"- Attention...":FOR t=1 TO 2000:NEXT t:CLS#1:GOTO 3100
3200 GOSUB 20200:GOSUB 30270:PRINT#1,"- Votre oreille n'est pas encore":PRINT#1,"assez fine !":PRINT#1:PRINT#1,"Que le vent vous ram}ne @ l'entr{e":PRINT#1,"de mon domaine !":GOSUB 30060:EVERY 6,1 GOSUB 10050
3210 GOSUB 20220:DATA 0,1,3,9,10,12,13,15,16
3220 OUT &BC00,8:OUT &BD00,1:FOR x=1 TO 12:h1=INT(RND*9)+1:h2=INT(RND*9)+1:RESTORE 3210:FOR i=1 TO h1:READ i1:NEXT:RESTORE 3210:FOR i=1 TO h2:READ i2:NEXT:INK 1,i1:INK 2,i2:FOR t=1 TO 150:NEXT t,x:OUT &BD00,0
3230 INK 1,25:INK 2,9:GOTO 610
3490 '
3500 EVERY 6,1 GOSUB 10050
3505 CLS#1:GOSUB 20200:GOSUB 30260:PRINT#1,"- F{licitations, ";nom1$:PRINT#1,"et ";nom2$;", vous ]tes":PRINT#1,"de brillants musiciens !":PRINT#1:PRINT#1,"Aussi, pour vous r{compenser...";:GOSUB 30060:GOSUB 20220:CLS#1:GOSUB 20200
3510 PRINT#1:PRINT#1,"... je vous fais don de cette":PRINT#1,"POUDRE MAGIQUE qui vous sera tr}s":PRINT#1,"utile !":FOR t=1 TO 1500:NEXT:GOSUB 30100:FOR t=1 TO 500:NEXT:mot$="MOZART"
3520 CLS#1:GOSUB 30080:PRINT#1,"- Si, en plus, vous voulez un indice,";"je vous propose une deuxi}me {preuve.";"Que d{cidez-vous ?":PEN#1,1:PRINT#1:PRINT#1," ";CHR$(24);"1";CHR$(24);" Autre {preuve   ";CHR$(24);"2";CHR$(24);" Passer @ la suite";
3530 GOSUB 20200:C$=INKEY$:IF C$=""THEN 3530
3540 IF C$<>"1"AND C$<>"2"THEN 3530
3550 r=REMAIN(1):CALL &BCA7:PEN#1,3:CLS#1:IF C$="2"THEN PRINT#1,"- Entendu !":PRINT#1:PRINT#1," Bonne route !":FOR t=1 TO 1500:NEXT t:GOTO 1000
3580 ind=1
3600 GOSUB 3970:IF ind=1 THEN ENV 1,6,2,1,2,1,1,1,0,30:chan$="COLCHIQUES DANS LES PRES":nbson=6
3630 GOSUB 3940::PRINT#1:PRINT#1,"- Ecoute bien la chanson suivante:":PRINT#1:PRINT#1,"  ";CHR$(24);chan$;CHR$(24);:FOR t=1 TO 2000:NEXT t:GOSUB 4000
3650 CLS#1:PRINT#1,"- Voici maintenant les 4 phrases":PRINT#1,"musicales dans le d{sordre :":GOSUB 30060:GOSUB 20220
3660 CLS#1:GOSUB 20200:mxt=2000:FOR x=1 TO 4:LOCATE#1,x*7,1:PRINT#1,CHR$(24);CHR$(64+x);CHR$(24);:pointeur=((has(x)-1)*(nbson*2))+1:GOSUB 4040:NEXT x
3690 PEN#1,2:LOCATE#1,2,3:PRINT#1,CHR$(24);"1":PRINT#1,CHR$(9);"2":PRINT#1,CHR$(9);"3";CHR$(24);
3695 PEN#1,3:LOCATE#1,4,3:PRINT#1,"pour proposer un ordre.":LOCATE#1,4,4:PRINT#1,"pour {couter encore les phrases.":LOCATE#1,4,5:PRINT#1,"pour recommencer l'{preuve.";
3710 C$=INKEY$:IF C$=""THEN 3710
3720 IF C$="2"THEN 3650 ELSE IF C$="3"THEN 3520
3730 IF C$<>"1"THEN 3710 ELSE LOCATE#1,1,3:PRINT#1,CHR$(20);'efface les choix
3760 DATA premi}re,deuxi}me,troisi}me,quatri}me
3770 RESTORE 3760:col=30:LOCATE#1,23,5:PRINT#1,CHR$(24);"ORDRE:";CHR$(24);:FOR x=1 TO 4:READ A$:LOCATE#1,1,2:PRINT#1,"La ";A$;" phrase est la phrase";CHR$(18);:LOCATE#1,15,3:PRINT#1,"_"
3780 C$=UPPER$(INKEY$):IF C$<>"A"AND C$<>"B"AND C$<>"C"AND C$<>"D"THEN 3780
3790 C=ASC(C$):rep(x)=C-64
3795 FOR i=1 TO x-1:IF rep(x)=rep(i)THEN 3780 ELSE NEXT
3800 LOCATE#1,15,3:PRINT#1,C$:LOCATE#1,col,5:PRINT#1,CHR$(24);C$;CHR$(24);:col=col+2:LOCATE#1,1,2:PRINT#1,CHR$(18);:FOR t=1 TO 1000:NEXT t,x
3820 LOCATE#1,1,1:PRINT#1,CHR$(18):PRINT#1,"- Ecoutons ta solution...";CHR$(18):PRINT#1,CHR$(18)
3830 mxt=0:FOR x=1 TO 4:pointeur=((has(rep(x))-1)*(nbson*2))+1:LOCATE#1,x*7,1:PRINT#1,CHR$(24);CHR$(64+rep(x));CHR$(24):GOSUB 4040:NEXT x
3840 FOR x=1 TO 4:IF x<>has(rep(x))THEN 3870 ELSE NEXT x
3850 EVERY 6,1 GOSUB 10050:CLS#1:GOSUB 30260:PRINT#1,"- Ta r{ponse est exacte. Sache donc";"que PAR CETTE POUDRE, TU REVELERAS";"L'INVISIBLE!":PRINT#1:PRINT#1,"Et maintenant, bonne route !":GOSUB 30060:GOSUB 20220:r=REMAIN(1):CALL &BCA7:GOTO 1000
3870 EVERY 6,1 GOSUB 10050:CLS#1:GOSUB 30270:LOCATE#1,1,1:PRINT#1,"- Eh oui, pas tr}s m{lodieux,";"n'est-ce pas ?":PRINT#1:PRINT#1,"La prochaine fois sera peut-]tre":PRINT#1,"la bonne !";:GOSUB 30060:GOSUB 20220:GOTO 3520
3900 DATA 213,40,142,20,142,20,142,40,159,40,142,80,119,40,142,40,142,40,159,40,142,40,142,40,213,40,159,20,159,20,159,40,179,40,159,80,179,40,213,20,213,20,213,40,239,40,213,80
3940 RESTORE 3900:RETURN
3970 RANDOMIZE TIME:has=INT(RND*4)+1:IF has=1 THEN has(1)=1:has(2)=4:has(3)=3:has(4)=2 ELSE IF has=2 THEN has(1)=4:has(2)=2:has(3)=1:has(4)=3 ELSE IF has=3 THEN has(1)=3:has(2)=2:has(3)=1:has(4)=4 ELSE IF has=4 THEN has(1)=2:has(2)=1:has(3)=4:has(4)=3
3980 RETURN
4000 FOR x=1 TO nbson*4:READ note,dur:SOUND 1,note,dur,0,1
4010 IF SQ(1)<>4 THEN 4010
4020 NEXT x:RETURN
4040 GOSUB 3940:FOR y=1 TO pointeur-1:READ a:NEXT y
4050 FOR y=1 TO nbson:READ note,dur:SOUND 1,note,dur,0,1
4060 IF SQ(1)<>4 THEN 4060
4070 NEXT y:FOR t=1 TO mxt:NEXT t:RETURN
10000 IF mus>29865 THEN mus=28616
10010 IF PEEK(mus)>4 THEN 10030
10020 IF SQ(PEEK(mus))=128 THEN RETURN
10030 SOUND PEEK(mus),(PEEK(mus+1)*256)+PEEK(mus+2),PEEK(mus+3),0,PEEK(mus+4):mus=mus+5:GOTO 10000
10050 IF SQ(1)<>4 THEN RETURN
10060 note=INT(RND*8)+1:IF NOTE=1 THEN n=30:p=1:d=1:t=60 ELSE IF NOTE=2 THEN n=16:p=1:d=1:t=106 ELSE IF NOTE=3 THEN n=20:p=1:d=1:t=40 ELSE IF NOTE=4 THEN n=45:p=2:d=1:t=54 ELSE IF NOTE=5 THEN n=32:p=2:d=1:t=42 ELSE IF NOTE=6 THEN n=38:p=2:d=1:t=108
10070 pause=INT(RND*350)+1:b=INT(RND*3)+1:IF NOTE=6 THEN n=38:p=2:d=1:t=108 ELSE IF NOTE=7 THEN n=18:p=1:d=4:t=92 ELSE IF NOTE=8 THEN n=28:p=1:d=2:t=88
10080 ENV 1,15,p,d:ENT-1,15,-p,d,1,p*15,d:SOUND 1,n,t,0,1,1:SOUND 1,0,pause,0:SOUND 2,0,pause+t+20,4,,,b
10090 RETURN
10110 ENV 1,2,7,1,1,0,6,14,-1,6:ENV 2,3,3,2,3,1,2,1,0,6,12,-1,4:ENV 4,2,7,1,1,0,6,6,-1,4:ENV 15,0,0,0:RETURN
20000 LOCATE#cn,co,lig:PRINT#cn,A$+STRING$(long-LEN(A$),"_")SPC(1);
20010 cur$=MID$(A$,pla+1,1):IF cur$=""THEN cur$=CHR$(255)ELSE PRINT#cn,CHR$(24);
20020 LOCATE#cn,col,lig:PRINT#cn,cur$;:PAPER#cn,0:PEN#cn,1
20030 C$=INKEY$:IF C$=""THEN 20030 ELSE C=ASC(C$)
20040 IF c=13 AND A$<>""THEN RETURN
20050 IF c=127 AND pla>0 THEN A$=LEFT$(A$,pla-1)+MID$(A$,pla+1):col=col-1:pla=pla-1:GOTO 20000
20060 IF c=16 THEN A$=LEFT$(A$,pla)+MID$(A$,pla+2):GOTO 20000
20070 IF c=242 AND pla>0 THEN col=col-1:pla=pla-1:GOTO 20000
20080 IF c=243 AND pla<LEN(A$)THEN col=col+1:pla=pla+1:GOTO 20000
20090 IF(C>cod1 AND C<cod2)OR(C>cod3 AND C<cod4)OR LEN(A$)=long THEN 20000
20100 A$=LEFT$(A$,pla)+C$+MID$(A$,pla+1):col=col+1:pla=pla+1:GOTO 20000
20110 'enlever blancs de A$
20120 IF LEFT$(A$,1)=" "THEN A$=MID$(A$,2):GOTO 20120 ELSE IF RIGHT$(A$,1)=" "THEN A$=LEFT$(A$,LEN(A$)-1):GOTO 20120 ELSE RETURN
20140 IF C$="@"OR C$="["THEN C$="A"ELSE IF C$="\\"THEN C$="C"
20150 IF C$="{"OR C$="}"OR C$="]"OR C$="þ"THEN C$="E"ELSE IF C$="^"OR C$="ý"THEN C$="I"
20160 IF C$="`"THEN C$="O"ELSE IF C$="|"OR C$="~"THEN C$="U"
20170 RETURN
20200 LOCATE 37,24:PRINT"    ";:LOCATE 37,25:PRINT"    ";:LOCATE 1,1:RETURN
20220 IF INKEY$<>""THEN 20220
20230 IF INKEY$=""THEN 20230 ELSE RETURN 
30000 buf=dep+3:hau=PEEK(dep+1):lar=PEEK(dep+2):POKE &9FF5,buf-256*INT(buf/256):POKE &9FF6,INT(buf/256):POKE &9FF7,hau:POKE &9FF8,lar:POKE &9FF1,ad-256*INT(ad/256):POKE &9FF2,INT(ad/256)
30010 IF PEEK(dep)=0 THEN CALL 40848 ELSE CALL 40880
30020 RETURN
30040 dep=30103:ad=50112:GOSUB 30000:RETURN
30050 dep=30514:ad=55092:GOSUB 30000:RETURN
30060 dep=30886:ad=53113:GOSUB 30000:RETURN
30070 dep=30957:ad=57374:GOSUB 30000:RETURN
30080 dep=38568:ad=49320:GOSUB 30000:RETURN
30090 DEP=30001:ad1=PEEK(42027):POKE 40859,ad1+165:FOR ad=49408 TO 49450 STEP 6:GOSUB 30000:NEXT:FOR ad=50766 TO 50808 STEP 6:GOSUB 30000:NEXT:dep=30052:FOR ad=49406 TO 50606 STEP 240:GOSUB 30000:NEXT:FOR ad=49454 TO 50654 STEP 240:GOSUB 30000:NEXT:RETURN
30100 CALL 29900:RETURN
30170 dep=36833:ad=49317:GOSUB 30000:RETURN
30180 dep=36833:ad=49342:GOSUB 30000:RETURN
30190 dep=39755:ad=49724:GOSUB 30000:dep=39964:ad=52015:GOSUB 30000:RETURN
30200 dep=39821:ad=49724:GOSUB 30000:dep=39975:ad=52015:GOSUB 30000:RETURN
30210 dep=39887:ad=49724:GOSUB 30000:dep=40008:ad=52015:GOSUB 30000:RETURN
30220 dep=39689:ad=49724:GOSUB 30000:dep=39986:ad=52015:GOSUB 30000:RETURN
30230 dep=39821:ad=49724:GOSUB 30000:dep=39997:ad=52015:GOSUB 30000:RETURN
30240 dep=39755:ad=49749:GOSUB 30000:dep=39964:ad=52040:GOSUB 30000:RETURN
30250 dep=40019:ad=57917:GOSUB 30000:dep=40259:ad=62176:GOSUB 30000:RETURN
30260 dep=40165:ad=57917:GOSUB 30000:dep=40301:ad=62176:GOSUB 30000:RETURN
30270 dep=40092:ad=57917:GOSUB 30000:dep=40280:ad=62176:GOSUB 30000:RETURN