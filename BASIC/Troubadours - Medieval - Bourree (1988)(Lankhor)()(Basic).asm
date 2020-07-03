20 CALL &BB48:MEMORY 20649:LOAD"medieval.mus",20650:LOAD"bourree.mus",21601:LOAD"dessin4.cmp",22800:MODE 1:DIM lig$(20),ver$(20)
70 deb=40815:nom1$=""
80 c=PEEK(deb):IF c>0 THEN C$=CHR$(c):nom1$=nom1$+C$:deb=deb+1:GOTO 80
90 deb=40830:nom2$=""
100 c=PEEK(deb):IF c>0 THEN C$=CHR$(c):nom2$=nom2$+C$:deb=deb+1:GOTO 100
120 GOSUB 20250:GOSUB 30180:GOSUB 20270:PRINT#1:PRINT#1,"- Ouf ! Quelle aventure,":PRINT#1,"  ";nom1$;" et ";nom2$;" !":PRINT#1,"  Mais venons en @ notre affaire...":GOSUB 30060:GOSUB 20220
420 CLS#1:GOSUB 30250:PRINT#1:PRINT#1,"- La princesse aime la po{sie. Vous";"  pourriez en {crire une...";"  et EN PROFITER POUR ETRE RECONNUS";"  PAR ELLE.":GOSUB 20220:CLS#1
430 GOSUB 30240:PRINT#1:PRINT#1,"- ";nom1$;", tu {criras QUATRE";"  strophes de trois vers.";"  Tu les choisiras parmi mes":PRINT#1,"  propositions.":GOSUB 20220
440 CLS#1:GOSUB 30180:PRINT#1:PRINT#1,"- Si elles ne te plaisent pas,";"  REFUSE-LES jusqu'@ ce qu'elles te";"  conviennent VRAIMENT !":GOSUB 20220:GOSUB 5000:LOCATE 3,19:PRINT" ":WINDOW#1,4,40,19,23
445 '
460 GOSUB 20200:CLS#1:PRINT#1,CHR$(24);"1";CHR$(24);" pour pr{senter les strophes dans":PRINT#1,"un autre ordre.":PRINT#1,CHR$(24);"2";CHR$(24);" pour changer une strophe.":PRINT#1,CHR$(24);"3";CHR$(24);" si tu es satisfait.":GOSUB 20220
470 IF C$="2"THEN CLS#1:PRINT#1,"Quelle strophe veux-tu changer ?":GOSUB 20220:C$=UPPER$(c$):LOCATE#1,15,3:PRINT#1,C$:compt=ASC(C$)-65:IF compt<0 OR compt>3 THEN C$="2":GOTO 470 ELSE i=(compt*3)+compt+1:chang=1:GOSUB 5040:GOTO 460
480 IF C$="3"THEN 600
490 IF C$<>"1"THEN 460
510 DATA premi}re,deuxi}me,troisi}me,quatri}me
520 RESTORE 510:FOR st=1 TO 4:READ A$
530 CLS#1:PRINT#1:PRINT#1,"La ";A$;" strophe sera la strophe":LOCATE#1,18,3:PRINT#1,"_":GOSUB 20220:num$(st)=UPPER$(C$):num(st)=ASC(num$(st))-65
535 IF num(st)<0 OR num(st)>3 THEN 530 ELSE LOCATE#1,18,3:PRINT#1,num$(st):GOSUB 10130
540 FOR x=1 TO st-1:IF num$(st)=num$(x)THEN 530 ELSE NEXT
550 NEXT st
560 FOR x=0 TO 3:ver$((x*4)+1)=lig$((num(x+1)*4)+1):ver$((x*4)+2)=lig$((num(x+1)*4)+2):ver$((x*4)+3)=lig$((num(x+1)*4)+3):NEXT:FOR x=1 TO 16:lig$(x)=ver$(x):NEXT
570 CLS#3:i=1:FOR compt=0 TO 3:GOSUB 5820:i=i+4:NEXT:GOSUB 10130:GOTO 460
600 GOSUB 10040:MODE 1:GOSUB 20250:lig$(4)=" ":lig$(8)=" ":lig$(12)=" ":ver$(1)="     Ode @ Viviane":ver$(2)=" par "+nom1$+" et "+nom2$:ver$(3)=" ":FOR x=4 TO 18:ver$(x)=lig$(x-3):NEXT
610 GOSUB 30040:GOSUB 30050:GOSUB 30180:GOSUB 20270:PRINT#1,"- ";nom1$;" et ";nom2$;",":PRINT#1,"  il ne vous reste plus qu'@ attendre";"  ce soir.":GOSUB 30060:GOSUB 20220
620 CLS#1:GOSUB 30250:PRINT#1,"- J'esp}re qu'EN COMPOSANT LA POESIE,";"  vous avez pens{ @ ce qui pourrait";"  vous faire reconna^tre de Viviane !":GOSUB 20220
760 MODE 1:GOSUB 20250:LOCATE#2,1,5:PRINT#2,"QUE LA":LOCATE#2,1,8:PRINT#2,"FETE":LOCATE#2,1,11:PRINT#2,"COMMENCE !":GOSUB 20270:INK 2,3
770 mus(1)=21601:mus(2)=21651:mus=mus(1):mor=1:GOSUB 10040:EVERY 6,1 GOSUB 10000
780 FOR t=1 TO 1800:NEXT:GOSUB 30070:GOSUB 10130
800 CLS#2:LOCATE#2,1,5:PRINT#2,"VOTRE TOUR":LOCATE#2,1,8:PRINT#2,"ARRIVE":LOCATE#2,1,11:PRINT#2,"ENFIN.":GOSUB 30060:GOSUB 20220
870 CLS#2:GOSUB 30100:PRINT#1,"- ";nom1$;" et ";nom2$;",";"  je compte sur vous pour distraire";"  ma dame.";"  Si vous r{ussissez, je saurai";"  me montrer g{n{reux.":GOSUB 20220:MODE 1:GOSUB 20250
890 GOSUB 30100:GOSUB 30080:INK 1,25:INK 2,3:INK 3,15
900 GOSUB 3000:poes=1
910 IF SQ(1)<>4 THEN 910 ELSE FOR t=1 TO 1000:NEXT
980 WINDOW#1,3,40,16,23
990 FOR x=1 TO 18
1000 PRINT#1:LOCATE#1,4,8:PRINT#1,ver$(x):GOSUB 10130:IF INSTR(ver$(x),"cl{ du bonheur")>0 AND bonh=0 THEN bonh=1:GOSUB 2000:GOSUB 10130
1002 IF x=3 AND bonh=0 THEN dep=39098:ad=58016:GOSUB 30000:dep=38934:ad=53758:GOSUB 30000:dep=40534:ad=64142:GOSUB 30000
1004 IF x=7 AND bonh=0 THEN dep=38985:ad=53758:GOSUB 30000
1006 IF x=11 AND bonh=0 THEN dep=38934:ad=53758:GOSUB 30000:dep=39131:ad=51794:GOSUB 30000:FOR t=1 TO 500:NEXT:dep=40654:ad=53740:GOSUB 30000
1008 IF x=15 AND bonh=0 THEN dep=38985:ad=53758:GOSUB 30000
1020 NEXT
1030 IF bonh=0 THEN PEN 1:LOCATE 23,5:PRINT"Rien que je":LOCATE 23,7:PRINT"reconnaisse!":LOCATE 23,9:PRINT"H{las... Qui":LOCATE 23,11:PRINT"viendra m'aider ?"
1040 GOSUB 10150:GOSUB 10130:MODE 1:GOSUB 20250:GOSUB 30070:GOSUB 30100:GOSUB 30000:INK 1,25:INK 2,3:INK 3,15
1050 IF bonh=0 THEN GOTO 2040
1060 mus=mus(2):mor=2:EVERY 10,1 GOSUB 10000
1065 dep=40606:ad=64142:GOSUB 30000:PRINT#1,"- Ma dame semble ravie, troubadours.";"  Votre art est grand et vous serez";"  r{compens{s !":GOSUB 30060:GOSUB 20220
1070 CLS#1:GOSUB 30100:PRINT#1,"- Je vous autorise dor{navant @";"  accompagner ma dame lors de sa";"  promenade quotidienne.":GOSUB 20220
1080 GOSUB 20200:CLS#1:dep=40606:ad=64142:GOSUB 30000:PRINT#1,"- Chaque soir, vous lui chanterez";"  un air que vous composerez.":GOSUB 10130:PRINT#1,"  Recevez {galement cette cassette";"  de pi}ces d'or...":r=REMAIN(1):GOSUB 10130:CALL &BCA7:CALL 22800
1090 CLS#1:PRINT#1,"- Allez maintenant...":GOSUB 30060:GOSUB 20220:MODE 1
1110 GOSUB 20250:BORDER 4:LOCATE#2,2,4:PRINT#2,"LE":LOCATE#2,2,8:PRINT#2,"LENDEMAIN":LOCATE#2,2,12:PRINT#2,"SOIR":GOSUB 20270:GOSUB 11000:GOSUB 10150
1115 CLS#2:GOSUB 20250:LOCATE#2,2,4:PRINT#2,"DANS LA":LOCATE#2,2,8:PRINT#2,"CAMPAGNE":LOCATE#2,2,12:PRINT#2,"PROCHE...":GOSUB 30110:INK 1,23:INK 2,4:INK 3,16:GOSUB 10150
1120 CLS#2:GOSUB 30120:dep=39120:ad=57995:GOSUB 30000:dep=39036:ad=53737:PRINT#1,"- Mes sauveurs, vous avez bien tromp{";"  l'inf[me Kantor !";"  Vous avez des chevaux, des vivres";"  et de l'or.":GOSUB 30060:GOSUB 20220
1130 CLS#1:dep=38985:ad=53737:GOSUB 30000:FOR t=1 TO 700:NEXT:GOSUB 30120:PRINT#1,"- Gr[ce @ tout cela, nous allons";"  enfin pouvoir rejoindre mon p}re !":GOSUB 20220
1140 CLS#2:CLS#1:GOSUB 30170:PRINT#1,"- Eh oui, troubadours, je peux vous";"  assurer que vous ne rencontrerez";"  plus d'obstacles @ pr{sent.":GOSUB 20220
1145 CLS#1:GOSUB 30190:PRINT#1,"- F{licitaions, ";nom1$;" et":PRINT#1,"  ";nom2$;" !":PRINT#1,"  Pour vous r{compenser...":GOSUB 20220
1160 CLS#1:GOSUB 30200:PRINT#1,"- Je vous communique un mot de passe";"  qui vous permettra de participer";"  CHAQUE FOIS QUE VOUS LE VOUDREZ...":GOSUB 20220
1170 CLS#1:GOSUB 30190:PRINT#1,"... au GRAND TOURNOI D'ARCHERS @ la";"  cour du Roi !":PRINT#1:PRINT#1,"  Le mot est ";CHR$(24);"ROBIN";CHR$(24);" (des Bois, {videmment!)":GOSUB 20220:GOSUB 20200
1180 CLS#1:PRINT#1:PRINT#1,CHR$(24);"1";CHR$(24);" pour participer au tournoi.":PRINT#1:PRINT#1,CHR$(24);"2";CHR$(24);" pour rentrer @ la maison."
1190 GOSUB 20220:IF C$="2"THEN CLS#1:PRINT#1:PRINT#1,"- Alors, bonne nuit !":GOSUB 10150:CALL 0
1200 IF C$<>"1"THEN 1190
1210 MODE 1:INK 1,23:INK 2,24:INK 3,15:BORDER 0
1220 PEN 1:LOCATE 10,1:PRINT"REGLEMENT DU TOURNOI":PEN 2:LOCATE 10,2:PRINT STRING$(20,"*")
1230 DATA "  Le jeu se pratique seul ou @ deux :","seul, tu essaies de r{aliser le score","le plus {lev{ possible. A deux, tu","essaies d']tre le meilleur !",,"  Il faut d{crocher avec tes fl}ches"
1240 DATA "les cases d'un panneau o| figurent","des lettres et former le plus grand","nombre de mots de quatre lettres.",,"  Tous les mots sont accept{s sauf les","noms propres et les verbes conjugu{s.",
1250 DATA "  Un bonus t'es accord{ si tu trouves","des mots peu connus !",,"       Alors, de l'adresse... et de","la r{flexion !"
1260 RESTORE 1230:PEN 3:FOR x=5 TO 22:READ A$:LOCATE 2,x:PRINT A$:NEXT:GOSUB 30060:GOSUB 20220
1270 p=1:FOR x=40830 TO 40834:C$=MID$("ROBIN",p,1):POKE x,ASC(C$):p=p+1:NEXT'poker ROBIN
1280 MODE 1:LOCATE 11,7:PRINT"Retourne la disquette et...":LOCATE 11,11:PRINT CHR$(24);"appuie sur une touche.";CHR$(24):GOSUB 20220:MODE 1:CLEAR:RUN"jeu"
2000 dep=39120:ad=58016:GOSUB 30000:dep=39036:ad=53758:GOSUB 30000:GOSUB 10130:LOCATE 23,5:PEN 1:PRINT"La cl{ du":LOCATE 23,7:PRINT"bonheur...":LOCATE 23,9:PRINT"Enfin !":LOCATE 23,11:PRINT"Ce sont eux !"
2010 GOSUB 10130:dep=40654:ad=53740:FOR t=1 TO 700:NEXT:dep=40606:ad=64142:GOSUB 30000
2020 RETURN
2040 dep=40420:ad=53740:GOSUB 30000:PRINT#1,"- Ma dame est de plus en plus triste!";"  Je me demande @ quoi sert votre art,";"  troubadours !":GOSUB 30060:GOSUB 20220
2045 CLS#1:dep=40558:ad=64142:GOSUB 30000:PRINT#1,"- D{guerpissez au plus vite !";"  Je sens la fureur m'envahir !":GOSUB 20220
2050 MODE 1:PEN#2,1:GOSUB 20250:BORDER 4:GOSUB 30110:LOCATE#2,1,4:PRINT#2,"VOUS QUITTEZ":LOCATE#2,1,6:PRINT#2,"LE CHATEAU":LOCATE#2,1,8:PRINT#2,"EN TOUTE":LOCATE#2,1,10:PRINT#2,"HATE...":INK 1,25:GOSUB 11000:GOSUB 10130:CLS#2
2060 INK 3,15:GOSUB 30170:GOSUB 10130:GOSUB 30220:PRINT#1:PRINT#1,"- Vous avez {chou{ dans votre";"  mission, ";nom1$;" et ";nom2$;".":PRINT#1,"  La princesse attendait...":GOSUB 30060:GOSUB 20220
2070 CLS#1:GOSUB 30200:PRINT#1:PRINT#1,"... un SIGNE DE RECONNAISSANCE qui";"  aurait d~ figurer dans la";" po{sie !":GOSUB 20220:CLS#1:GOSUB 30170:PRINT#1:PRINT#1,"- Lorsque tu recommenceras";"  l'aventure, ";nom1$;",":PRINT#1,"  pense @ ceci :"
2080 GOSUB 20220:CLS#1:GOSUB 30200:PRINT#1:PRINT#1,CHR$(24);"1";CHR$(24);" A CHAQUE EPREUVE,on obtient un";"  indice ou quelque chose d'utile.";"  Tu en as peut-]tre oubli{ un !":GOSUB 20220
2090 CLS#1:PRINT#1:PRINT#1,CHR$(24);"2";CHR$(24);" Une indication importante se trouve";"  SUR LE PARCHEMIN.":GOSUB 20220:CLS#1:GOSUB 30190:PRINT#1:PRINT#1,"- Tu ne peux que r{ussir, maintenant,";nom1$,".":PRINT#1,"  A bient`t !":GOSUB 20220:CALL 0
3000 RESTORE 3060:FOR X=1 TO 20
3010 READ DEP:IF DEP>39195 THEN AD=64142:GOSUB 30000 ELSE AD=58016:GOSUB 30000
3020 READ DEP:IF DEP>39195 THEN AD=53740:GOSUB 30000 ELSE AD=53758:GOSUB 30000
3030 READ dur:FOR T=1 TO dur*80:NEXT
3040 NEXT x:RETURN
3060 DATA 40534,40382,0,39087,38934,10,39087,38985,1,39087,39036,1,39098,39145,4,40534,40420,1,40606,40654,3,39098,38934,1,39087,38985,1,39098,39036,3,40582,40420,1,40582,40458,1,40534,40496,4,39087,38985,1,39098,38934,3,40582,40654,1,40534,40420,2
3070 DATA 39087,38985,1,39098,38934,2,40630,40382,10
5000 MODE 1:WINDOW#1,5,40,19,23:CLS#1:WINDOW#3,3,39,2,17:PAPER#3,2:PEN#3,0:CLS#3:GOSUB 30040:GOSUB 30050:LOCATE 3,19:PRINT"-"
5010 RANDOMIZE TIME:i=1:compt=0
5040 RESTORE 6000:nb=48:GOSUB 5800:B1$=A$:RESTORE 6000:GOSUB 5800:B2$=A$:IF B2$=B1$THEN 5040
5050 RESTORE 6500:nb=54:GOSUB 5800:C1$=A$:RESTORE 6500:GOSUB 5800:C2$=A$:IF C2$=C1$THEN 5050
5070 has=INT(RND*4)+1:IF has=1 THEN lig$(i)=B1$:lig$(i+1)=C1$:lig$(i+2)=C2$ELSE IF has=2 THEN lig$(i)=B1$:lig$(i+1)=C1$:lig$(i+2)=B2$ELSE IF has=3 THEN lig$(i)=C1$:lig$(i+1)=B1$:lig$(i+2)=C2$
5080 IF has=4 THEN lig$(i)=C1$:lig$(i+1)=B1$:lig$(i+2)=B2$
5100 CLS#1:PEN#1,1:PRINT#1,"Je propose :":PRINT#1:PEN#1,3:PRINT#1,lig$(i);lig$(i+1);lig$(i+2):TAG:PLOT 384,20,3:PRINT"O";:PLOT 400,20,1:PRINT"UI ?    ";:PLOT 528,20,3:PRINT"N";:PLOT 544,20,1:PRINT"ON ?";:TAGOFF
5120 IF INKEY$<>""THEN 5120
5130 C$=UPPER$(INKEY$):IF C$<>"O"AND C$<>"N"THEN 5130
5140 IF C$="N"THEN 5040
5160 GOSUB 5820:GOSUB 10130
5165 IF chang=1 THEN RETURN'chang.1 strophe
5170 IF compt=3 THEN RETURN ELSE i=i+4:compt=compt+1:GOTO 5040
5800 has=INT(RND*nb)+1:FOR x=1 TO has:READ A$:NEXT:RETURN
5820 LOCATE#3,1,1+(compt*4):PRINT#3,CHR$(24);CHR$(65+compt);CHR$(24);" ";lig$(i);CHR$(18);CHR$(13);CHR$(10);"  ";lig$(i+1);CHR$(18);CHR$(13);CHR$(10);"  ";lig$(i+2);CHR$(18);:RETURN
6000 DATA "Je chante pour passer le temps","Je reste l@ derri}re un arbre","Je viens de plus loin que le vent","Je pr{f}re la nuit profonde","A personne je n'ai rien dit"
6010 DATA "Moi, j'ai un peu perdu la t]te","J'ai retrouv{ la fleur qui parle","Je n'ai pas dormi de la nuit","Je suis venu, calme orphelin","Je ne sais plus parler aux arbres"
6020 DATA "Je salue la lune @ minuit","Je marche dans la plaine immense","Seigneur, je suis tr}s fatigu{","R]vez quand m]me de vaisseaux","Les bois retrouvent leur verdure"
6030 DATA "Il n'y a pas de nuit pour nous","Les oiseaux ne sont pas nombreux","On voit scintiller des fum{es","Elle r{p}te: je suis la mer","Mon r]ve se passait en mai"
6040 DATA "Elle veut avoir robe nouvelle","Non, tu ne veux pas avoir froid","C'{tait mon tout premier amour","Que sont mes amis devenus","Une source vient de jaillir"
6050 DATA "Au haut du jour frappe le gong","C'est le moment cr{pusculaire","Rien n'est revenu du naufrage","La m}re pleure le dimanche","Etais-je un ch]ne ou bien un orme?"
6060 DATA "C'est loin et je ne sais pas trop","Je vous d{fendrai de l'orage","Je suis comme un bateau coulant","Vois-tu, je sais que tu m'attends","Ceux qui passent l'ont entendu"
6070 DATA "L'entendez-vous, l'entendez-vous","Un corbeau devant moi croasse","J'entends {clater le tonnerre","Je vois le centre de la Terre","Ce ruisseau remonte @ sa source"
6080 DATA "Le sang coule de ce rocher","Salut, soleil qui sait mourir","J'aper\\ois la cl{ du bonheur","Un serpent d{chire un vautour","Le soleil est devenu noir"
6090 DATA "Je vois la lune qui va choir","Le ciel verse un repos immense","Ecoute, ce n'est pas le silence",:REM 48
6490 'complements
6500 DATA "Comme dans un paradis vert","Pour faire fr{mir l'herbe haute","A faire chanter la for]t","A {couter parler la fleur","Au fond du soir lorsque l'on r]ve"
6510 DATA "Pour trouver la cl{ du bonheur","Comme @ la foire,en balan\\oire","Au fond du n{ant vaste et noir","D{sempar{ par le chagrin","A la fontaine o| vint l'Amour"
6520 DATA "Alors que pleure un enfant sage","En dansant devant le buffet","Vraiment, inexorablement","Comme une envol{e de ballons","En perdant la cl{ du bonheur"
6530 DATA "Comme des fleurs surnaturelles","En ayant la cl{ du bonheur","Sous les yeux fixes des gar\\ons","Sur le haut d'une vieille tour","Pleurant sans cesse dans la nuit"
6540 DATA "Sur le chemin pr}s du grand bois","En perdant la cl{ du bonheur","Au bal et @ la com{die","Parmi la poussi}re du monde","Dans un grand champ de romarin"
6550 DATA "Pas tr}s loin de la route d'Arles","Vers les racines du jour tendre","A la fin de tous les tourments","Ayant pris la cl{ du bonheur","Jusqu'aux fronti}res des Sargasses"
6560 DATA "Balbutiant les sept langues vertes","Dans la saison d'amour, de joie","Au temps o| tout se r{jouit","Dans la beaut{ de la saison","Sur la place du port d'{t{"
6570 DATA "Pour trouver la cl{ du bonheur","Pour trouver la cl{ du bonheur","Pour y r]ver d'un petit bois","Contre des coups {pouvantables","Dans l'oasis du souvenir"
6580 DATA "Sur les coussins de l'horizon","Dans les terres, de nuit baign{es","A l'heure o| blanchit la campagne","R{sonnant de notes magiques","Au soir quand la lampe s'allume"
6590 DATA "Sur le tapis des mains qui dansent","Vers les hommes des grandes villes","Bien que sans patrie et sans roi","Plus noir qu'une lampe profonde","Dans ce coeur qui bat la chamade"
6600 DATA "Comme une chose inattendue","Tapiss{ d'un vert luxuriant","Marche @ l'amont, marche @ l'aval","A la fin de tous les voyages"
10000 IF poes=1 AND (mus=21901 OR mus=22166 OR mus=22471 OR mus=22781) THEN r=REMAIN(1):poes=0:RETURN
10005 IF PEEK(mus)>0 THEN 10020
10010 mor=mor+1:IF mor=3 THEN mor=1
10015 mus=mus(mor):GOSUB 10040
10020 IF SQ(1)=128 OR SQ(2)=128 OR SQ(4)=128 THEN RETURN ELSE GOSUB 10100:GOTO 10000
10040 IF mor=1 THEN ENV 1,2,6,2,1,2,10,4,-1,2:ENV 2,2,4,1,2,2,2,1,0,4,12,-1,2:ENV 4,2,7,2,1,0,5,3,-1,1:ENV 15,0,0,0 ELSE ENV 1,2,7,2,14,-1,3
10045 RETURN
10050 IF PEEK(mus)>0 THEN 10070
10060 mor=mor+1:IF mor=9 THEN mor=1
10065 mus=mus(mor):GOSUB 10090
10070 IF SQ(PEEK(mus))=128 THEN RETURN ELSE GOSUB 10100:GOTO 10050
10090 IF mor=1 THEN ENV 1,2,7,1,1,0,6,14,-1,6:ENV 2,0,0,0:ENV 4,2,7,1,1,0,6,3,-1,1:ENV 15,0,0,0
10092 IF mor=3 THEN ENV 2,2,7,1,1,0,6,14,-1,6
10094 IF mor=5 THEN ENV 1,2,7,1,1,0,6,3,-1,1:ENV 2,0,0,0
10096 IF mor=7 THEN ENV 2,2,7,1,1,0,6,3,-1,1
10098 RETURN
10100 SOUND PEEK(mus),(PEEK(mus+1)*256)+PEEK(mus+2),PEEK(mus+3),0,PEEK(mus+4):mus=mus+5:RETURN
10130 FOR t=1 TO 2000:NEXT:RETURN
10150 FOR t=1 TO 3000:NEXT:RETURN
11000 MUS(1)=20650:MUS(2)=21236:MUS(3)=20665:MUS(4)=21307:MUS(5)=21363:MUS(6)=21539:MUS(7)=21363:MUS(8)=21555:MUS=MUS(1):MOR=1:GOSUB 10090:EVERY 10,1 GOSUB 10050
11010 RETURN
20200 LOCATE 25,24:PRINT SPC(16);:LOCATE 25,25:PRINT SPC(16);:LOCATE 1,1:RETURN
20220 IF INKEY$<>""THEN 20220
20230 C$=INKEY$:IF C$=""THEN 20230 ELSE RETURN
20250 INK 1,0:INK 2,0:INK 3,0:WINDOW#1,3,40,19,23:WINDOW#2,3,14,1,17:PEN#1,3:PEN#2,1:GOSUB 30040:GOSUB 30050:RETURN
20270 INK 1,25:INK 2,10:INK 3,15:RETURN
30000 buf=dep+3:hau=PEEK(dep+1):lar=PEEK(dep+2):POKE &9FF5,buf-256*INT(buf/256):POKE &9FF6,INT(buf/256):POKE &9FF7,hau:POKE &9FF8,lar:POKE &9FF1,ad-256*INT(ad/256):POKE &9FF2,INT(ad/256)
30010 IF PEEK(dep)=0 THEN CALL 40848 ELSE CALL 40880
30020 RETURN
30040 dep=22901:ad=50112:GOSUB 30000:RETURN
30050 dep=23312:ad=55092:GOSUB 30000:RETURN
30060 dep=23684:ad=53113:GOSUB 30000:RETURN
30070 dep=23755:ad=57373:GOSUB 30000:RETURN
30080 dep=37761:ad=49338:GOSUB 30000:RETURN
30100 dep=39196:ad=49321:GOSUB 30000:RETURN
30110 dep=29700:ad=57373:GOSUB 30000:RETURN
30120 dep=37761:ad=49317:GOSUB 30000:RETURN
30170 dep=35795:ad=49317:GOSUB 30000:RETURN
30180 dep=35795:ad=49342:GOSUB 30000:RETURN
30190 dep=37596:ad=49724:GOSUB 30000:dep=37728:ad=52015:GOSUB 30000:RETURN
30200 dep=37662:ad=49724:GOSUB 30000:dep=37739:ad=52015:GOSUB 30000:RETURN
30220 dep=37530:ad=49724:GOSUB 30000:dep=37750:ad=52015:GOSUB 30000:RETURN
30240 dep=37596:ad=49749:GOSUB 30000:dep=37728:ad=52040:GOSUB 30000:RETURN
30250 dep=37662:ad=49749:GOSUB 30000:dep=37739:ad=52040:GOSUB 30000:RETURN
30260 dep=37530:ad=49749:GOSUB 30000:dep=37750:ad=52040:GOSUB 30000:RETURN