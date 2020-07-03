30 MEMORY 25800:SPEED KEY 50,3:CALL &BB48
50 MODE 1:INK 0,0:INK 1,0:INK 2,0:INK 3,0:LOAD"aubadeu.mus",25801:dep=26801:LOAD"PONT.cmp",dep:ad=57373:GOSUB 30000:LOAD"dessin2.cmp",26801:LOAD"caract.bin",40400:CALL &BB48
90 mus(1)=25801:mus(2)=26150:mus(3)=26319:mus(4)=26532:mus(5)=26319:mus(6)=26597:mus=mus(1):mor=1:GOSUB 10115
100 DIM lig$(20),pt(20),poe$(2),nbver(2),pla(10),mot1$(7),mot2$(7):cn=1
120 GOSUB 30040:GOSUB 30050:GOSUB 30060
130 EVERY 10,1 GOSUB 10000
140 BORDER 3:WINDOW#1,3,40,19,23:WINDOW#2,3,14,1,17:PEN#1,3:PEN#2,3:LOCATE#2,1,4:PRINT#2,"VOUS":PRINT#2:PRINT#2,"ARRIVEZ":PRINT#2:PRINT#2,"PRES":PRINT#2:PRINT#2,"D'UN PONT.":INK 1,23:INK 2,9:INK 3,16:GOSUB 20220:GOSUB 20200
160 CLS#2:GOSUB 30070:GOSUB 30220:GOSUB 10130:GOSUB 30070:FOR t=1 TO 500:NEXT:PRINT#1,"- Bonjour, mes gentils damoiseaux !";"  Si vous voulez passer ce gu{,";"  Il faudra me donner le mot";"  Que l'enchanteur vous a souffl{.":GOSUB 30060:GOSUB 20220
190 CLS#1:GOSUB 20200:PRINT#1,"- Ecrivez-le ici:":A$="":cod1=0:cod2=32:cod3=126:cod4=253:cn=1:co=15:lig=4:long=8:pla=0:col=15:GOSUB 20000:GOSUB 20120:mot$=UPPER$(A$):PEN#1,3
200 CLS#1:IF mot$<>"MOZART"AND mot$<>"VIVALDI"THEN GOSUB 30240:PRINT#1,"- Navr{, mes jouvenceaux !";"Cela n'est pas le mot.";"Vous devrez revenir";"Et ne plus me mentir.":GOSUB 30060:GOSUB 20220:CLS#1:CLS#2:GOTO 140
220 GOSUB 30230:PRINT#1,"- Votre r{ponse me pla^t.";"  Je suis le Po}te Distrait...":GOSUB 30060:GOSUB 20220:GOSUB 20200
240 CLS#1:PEN#1,3:GOSUB 30070:PRINT#1,"- J'ai m{lang{ deux po{sies.";"  J'aimerais bien les retrouver.";"  Troubadours, voulez-vous m'aider ?";"  R{pondez par Non ou par Oui."
250 IF INKEY$<>""THEN 250
260 C$=UPPER$(INKEY$):IF C$<>"O"AND C$<>"N"THEN 260
270 CLS#1:IF C$="N"THEN GOSUB 30240:PRINT#1,"- Ce n'est pas sympa, ce refus!";"  Je ne vous rendrai pas service";"  Et ne livrerai point d'indice.";"  Je ne vous retiens pas. Salut !";:GOSUB 30060:GOSUB 20220:GOTO 360
280 CLS#2:WINDOW#2,1,9,1,12:WINDOW#3,11,40,1,18:PAPER#3,0:CLS#3:larg=29:WINDOW#3,11,11+larg-1,2,18:INK 1,10:INK 2,9
300 GOSUB 30080:RESTORE 5500:mx=17:FOR x=1 TO mx:READ lig$(x):NEXT:READ poe$(1),poe$(2),nbver(1),nbver(2):PEN#3,0:PAPER#3,1:PEN#1,3:CLS#3:GOSUB 5410:cur$=CHR$(243):LOCATE#3,1,1:PRINT#3,cur$
310 PRINT#1:PRINT#1,"- Pour retrouver une po{sie,";"  Devant chaque vers de celle-ci";"  La fl}che tu am}neras";"  Puis sur ENTER tu appuieras.";:GOSUB 30060:GOSUB 20220
320 CLS#1:PRINT#1:PRINT#1,"- Et lorsque tu auras fini,";"  Tu appuieras sur COPY.":GOSUB 20220:GOSUB 20200
330 CLS#1:PAPER#1,1:PEN#1,0:LOCATE#1,12,2:PRINT#1,CHR$(241);:LOCATE#1,17,2:PRINT#1,CHR$(240);:LOCATE#1,22,2:PRINT#1,"ENTER";:LOCATE#1,31,2:PRINT#1,"COPY";:PAPER#1,0:PEN#1,3:WINDOW#1,3,40,22,23
340 SPEED KEY 20,2:faute=0:FOR x=1 TO mx:pt(x)=0:NEXT:GOTO 5000
360 r=REMAIN(1):CALL &BCA7:ENV 1,1,15,3,5,-3,1:ENV 2,1,14,1,3,-4,1,1,-2,3,1,15,3,5,-3,1:mus=mus(1):INK 1,0:INK 2,0:INK 3,0:MODE 1:GOSUB 30090
370 PEN 3:LOCATE 14,8:PRINT"Vous traversez":LOCATE 14,12:PRINT"la lande de":LOCATE 14,16:PRINT"Guernemeur.":GOSUB 30060:INK 1,23:INK 2,9:INK 3,16:EVERY 10,1 GOSUB 10050:GOSUB 20220:INK 1,0:INK 2,0:INK 3,0:MODE 1:WINDOW#1,3,39,20,23:WINDOW#2,3,14,1,18
380 WINDOW#3,15,40,1,18:PAPER#1,0:PEN#1,3:GOSUB 30040:GOSUB 30050:GOSUB 30100:INK 1,25:INK 2,15:INK 3,13:GOSUB 10130:GOSUB 30110:GOSUB 10130:GOSUB 30120:GOSUB 10130
385 GOSUB 30130:GOSUB 10130:GOSUB 30140:GOSUB 10130:GOSUB 30150:r=REMAIN(1):GOSUB 10130
390 PEN#2,1:LOCATE#2,1,4:PRINT#2,"AU PIED":PRINT#2:PRINT#2,"DU MENHIR,":PRINT#2:PRINT#2,"UN ROULEAU":PRINT#2:PRINT#2,"CACHETE...":FOR t=1 TO 3000:NEXT
410 PEN#1,3:PRINT#1:PRINT#1,"  Vous d{pliez le parchemin...":GOSUB 10130:GOSUB 30060:GOSUB 20220:GOSUB 20200:CLS#2:PAPER#3,0:CLS#3:CLS#1:INK 1,23:INK 2,10:INK 3,16
440 GOSUB 30160:GOSUB 10130:GOSUB 30170:PRINT#1,"- Une page blanche ! Quel est donc";"  ce myst}re ?":GOSUB 30060:GOSUB 20220
442 CLS#1:PRINT#1,"- S'il y a un message @ d{couvrir,";"  comment le faire appara^tre ?":essai=0:z1=36000
450 GOSUB 20220:CLS#1:GOSUB 30170:PRINT#1,"- Si tu as une id{e, {cris-la";"  (puis ENTER) :":z=TIME:flag1=0
460 GOSUB 20200:A$="":co=3:lig=4:long=30:col=3:pla=0:GOSUB 20000:essai=essai+1:IF flag1=1 THEN GOSUB 20250
461 IF flag1=1 AND flag2=0 THEN essai=0:PEN#1,3:GOTO 450 ELSE IF flag1=1 AND flag2=1 THEN 1000
464 GOSUB 20120:rep$="":FOR x=1 TO LEN(A$):C$=MID$(A$,x,1):GOSUB 20140:rep$=rep$+C$:NEXT:RESTORE 470
470 DATA UTILIS,VERSE,VERSO,ETAL,ENDUI,ETEN,RENVERS,REPAN,EPAN,MET,SAUPOUDR,*
480 READ A$:IF A$="*"THEN 500'p1=0
490 p1=INSTR(rep$,A$):IF p1=0 THEN 480
500 p2=INSTR(rep$,"POUDR")
505 CLS#1:PEN#1,3:PRINT#1:IF(p1>0 AND p2>0)AND p1<p2 AND mot$="MOZART"THEN 580
510 GOSUB 30060:IF p2>0 AND mot$<>"MOZART"THEN GOSUB 30200:PRINT#1,"- De quelle poudre parles-tu ?";"  Tu ne poss}des rien de tel !":GOTO 450
520 IF p1=0 AND p2=0 THEN GOSUB 30210:PRINT#1,"- Tu peux essayer mais cela";"  ne nous avancera gu}re !"
530 IF p1=0 AND p2>0 THEN GOSUB 30180:PRINT#1,"- Aaatchoum !!! (C'est de la poudre";" @ {ternuer, peut-]tre...)"
540 IF p1>0 AND p2=0 THEN GOSUB 30190:PRINT#1,"- Il y a une id{e...";"  Cherche encore un peu."
550 IF(p1>0 AND p2>0)AND p1>p2 THEN GOSUB 30210:PRINT#1,"- Une phrase bien {trangement";"  tourn{e, troubadour !"
560 GOTO 450
575 'pas effacer!
580 psg=1:mus=mus(1):GOSUB 10110:EVERY 10,1 GOSUB 10000:WINDOW#3,18,39,4,17:GOSUB 20400
600 GOSUB 10130:CLS#1:GOSUB 30180:PRINT#1,"- De l'encre sympathique,";" en effet !!! ":GOSUB 30060:GOSUB 20220:CLS#1:GOSUB 30170:PRINT#1,"- Bien {trange message, en v{rit{...";"Il est certainement cod{.":GOSUB 20220:CLS#1
610 PRINT#1,"- A mon avis, en rempla\\ant certains";"mots, tu d{couvriras son vrai sens.":GOSUB 20220:GOSUB 20200
630 DATA HIDEUSE,*prisonni}re*captive*enferm{e*retenue*emprisonn{e*,COIFFEUR,*sire*baron*seigneur*,COUPANT,*cruel*dur*,TAILLEUR,*p}re*,ROBE,*cl{*clef*,SOIR,*bonheur*,BICHE,*fille*enfant*
640 RESTORE 630:FOR x=1 TO 7:READ mot1$(x),mot2$(x):NEXT:essai=0:z1=54000:z=TIME:flag1=0:ok$="premier"
660 CLS#1:GOSUB 30170:PRINT#1,"- Quel ";ok$;" mot changerais-tu ?":A$="":co=2:lig=4:long=15:pla=0:col=2:GOSUB 20000:IF flag1=1 THEN 20440 ELSE PEN#1,3:GOSUB 20120:rep1$="":FOR x=1 TO LEN(A$):C$=MID$(A$,x,1):GOSUB 20140:rep1$=rep1$+C$:NEXT
670 FOR x=1 TO 7:IF rep1$=mot1$(x)THEN rang=x:GOTO 690 ELSE NEXT x:PRINT#1,CHR$(30);"- Non, pas celui-l@ !";CHR$(18):GOSUB 10130:GOTO 660
690 ok$="autre":PRINT#1,CHR$(30);"- Tu le remplaces par :";CHR$(18):PRINT#1,CHR$(18):A$="":co=20:lig=4:long=15:pla=0:col=20:GOSUB 20000:PEN#1,3:GOSUB 20120:rep2$="":FOR x=1 TO LEN(A$):C$=MID$(A$,x,1):GOSUB 20140:rep2$=rep2$+C$:NEXT:rep$="*"+rep2$+"*"
700 mot$="":FOR l=1 TO LEN(mot2$(rang)):C$=MID$(mot2$(rang),l,1):GOSUB 20140:mot$=mot$+C$:NEXT:IF INSTR(mot$,rep$)>0 THEN 720 ELSE PRINT#1,CHR$(30);"- Il ne convient pas mieux.":PRINT#1,CHR$(18):GOSUB 10130:GOTO 660
720 CLS#1:GOSUB 30180:PRINT#1,"- D'accord.":GOSUB 20520:FOR i=1 TO 14:p=INSTR(lig$(i),LOWER$(mot1$(rang))):IF p=0 THEN NEXT ELSE l=LEN(lig$(i)):lig$(i)=LEFT$(lig$(i),p-1)+A$+MID$(lig$(i),p+LEN(mot1$(rang))):mot1$(rang)=CHR$(252)
730 LOCATE#3,1,i:PRINT#3,lig$(i)SPC(L-LEN(lig$(i))):PEN#3,1:LOCATE#3,p,i:PRINT#3,A$:PEN#3,0:FOR t=1 TO 800:NEXT:FOR x=1 TO 7:IF mot1$(x)=CHR$(252)THEN NEXT ELSE GOSUB 20600:GOTO 660
750 CLS#1:GOSUB 20600:PRINT#1,"- Bravo !Le message est d{chiffr{.";"Il contient une indication tr}s";"importante.";"Remarque-la et souviens t-en.":GOSUB 30060:GOSUB 20220:GOTO 1000
1000 IF psg=0 THEN mus=mus(1):GOSUB 10110:EVERY 10,1 GOSUB 10000
1005 CLS#1:GOSUB 30170:PEN#1,3:PRINT#1,"- Je te donne @ pr{sent le mot de";"passe pour entrer au ROC-NOIR.";"C'est le nom d'un po}te de talent :":PRINT#1,SPC(16);CHR$(24);"VILLON";CHR$(24);:GOSUB 30060:GOSUB 20220
1010 CLS#1:GOSUB 30190:PRINT#1,"- Soyez de plus en plus prudent...":PRINT#1:PRINT#1,"  Le danger menace !":GOSUB 20220:MODE 1:CLEAR
1020 INK 1,0:INK 2,0:INK 3,0:GOSUB 30090:LOCATE 11,8:PEN 1:PRINT"Une nuit de repos":LOCATE 11,12:PRINT"avant de poursuivre":LOCATE 11,16:PRINT"votre qu]te...":INK 1,16:INK 2,9:INK 3,15:WINDOW#0,1,40,22,25:RUN"trouba3"
5000 col=1:lig=1:choix=1
5010 lig$=lig$(lig):GOSUB 30080
5020 LOCATE#3,col,lig:PRINT#3,cur$;
5030 C$=INKEY$:IF C$=""THEN 5030 ELSE c=ASC(C$)
5040 IF INKEY(9)=0 AND nbver>0 THEN 5210
5050 IF c=240 AND lig>1 THEN LOCATE#3,col,lig:PRINT#3," ";:lig=lig-1:GOTO 5010
5060 IF c=241 AND lig<mx THEN LOCATE#3,col,lig:PRINT#3," ";:lig=lig+1:GOTO 5010
5070 IF c<>13 THEN 5030
5090 num$="-"+MID$(STR$(lig),2)+"-"
5100 IF choix=1 THEN GOSUB 5180:PAPER#3,2:LOCATE#3,1,lig:PRINT#3,lig$;SPC(larg-LEN(lig$));:PAPER#3,1:GOTO 5010
5120 p=INSTR(poe$,num$):IF p>0 THEN PAPER#3,2:LOCATE#3,1,lig:PRINT#3,lig$;SPC(larg-LEN(lig$));:PAPER#3,1:CLS#1:GOSUB 30250:PRINT#1,"- Cela sonne tr}s bien !";"  Lou{ soit ton soutien !";:pt(lig)=1:GOTO 5010
5140 faute=faute+1:CLS#1
5150 IF faute=3 THEN WINDOW#1,3,40,19,23:CLS#1:GOSUB 30260:PRINT#1:PRINT#1,"- Ceci est ta troisi}me erreur";"  Et moi, je dois partir sur l'heure !";"  Nous nous verrons @ mon retour";"  Si tu d{sires mon secours.":GOTO 5350
5160 GOSUB 30080:PRINT#1,"- Tu tiens un {trange discours...";"  Ce n'est pas cela, troubadour !";:GOTO 5010
5180 FOR i=1 TO 2:p=INSTR(poe$(i),num$):IF p>0 THEN 5190 ELSE NEXT i
5190 poe$=poe$(i):nbver=nbver(i):choix=choix+1:pt(lig)=1:RETURN'on a trouve la chaine de reference
5210 CLS#1:pt=0
5220 FOR x=1 TO mx:num$="-"+MID$(STR$(x),2)+"-":p=INSTR(poe$,num$)
5230 IF pt(x)=1 THEN pt=pt+1
5240 NEXT x
5250 IF pt<nbver THEN PRINT#1,"- Ainsi, tu crois avoir fini ?";"  Je r{pondrai: nenni, nenni...":GOTO 5010
5270 WINDOW#1,3,39,19,23:CLS#1:GOSUB 30250:PRINT#1:PRINT#1,"- Ah, je ne peux que t'approuver,";"  La po{sie est retrouv{e !":GOSUB 30060:GOSUB 20220
5280 CLS#1:GOSUB 30080:PRINT#1:PRINT#1,"- Ecoute @ pr{sent mes paroles";"  Avant qu'au loin tu caracoles...":GOSUB 20220
5290 CLS#1:PRINT#1:PRINT#1,"- Le don du gnome, t'en souviendras";"  Et ";CHR$(24);"SEPT";CHR$(24);" mots tu remplaceras.":GOSUB 20220:CLS#1:PRINT#1:PRINT#1,"- Un autre indice je te c}de";"  Si tu m'apportes encore ton aide.":GOSUB 20220
5300 CLS#1:PRINT#1:PRINT#1," QUE DECIDEZ - VOUS ?":PRINT#1:PRINT#1,"  ";CHR$(24);"1";CHR$(24);" aider le Po}te.":PRINT#1,"  ";CHR$(24);"2";CHR$(24);" continuer votre route.":GOSUB 20200
5310 IF INKEY$<>""THEN 5310
5320 C$=INKEY$:IF C$<>"1"AND C$<>"2"THEN 5320
5330 CLS#1:PRINT#1:PRINT#1,"- D'accord":GOSUB 20200:FOR t=1 TO 1000:NEXT:IF C$="1"THEN 6000 ELSE 360
5350 GOSUB 30060:GOSUB 20220:CLS#2:LOCATE 4,13:PRINT SPC(5):LOCATE 4,14:PRINT SPC(5):CLS#1:GOSUB 20200:PEN#2,1:LOCATE#2,2,5:PRINT#2,"QUE":LOCATE#2,2,8:PRINT#2,"FAITES":LOCATE#2,2,11:PRINT#2,"VOUS ?"
5360 PRINT#1:PRINT#1," ";CHR$(24);"1";CHR$(24);" vous attendez et recommencez.":PRINT#1:PRINT#1," ";CHR$(24);"2";CHR$(24);" vous poursuivez votre chemin."
5370 IF INKEY$<>""THEN 5370
5380 C$=INKEY$:IF C$<>"1"AND C$<>"2"THEN 5380
5390 IF C$="1"THEN CLS#1:PRINT#1:PRINT#1,"- D'accord.":LOCATE#3,col,lig:PRINT#3," ":GOSUB 5410:CLS#1:CLS#2:GOSUB 30080:GOTO 330 ELSE 360
5410 LOCATE#3,1,1:FOR x=1 TO mx:PRINT#3,lig$(x);CHR$(18);:NEXT:RETURN
5500 DATA " Moi,j'irai dans la lune"," Quand nul ne la regarde"," La mer n'est plus la mer,"," Avec des petits pois,"," Elle est ce que nous sommes"," Quelques mots de fortune"," Lorsque nul ne nous voit."," Elle a d'autres poissons,"
5510 DATA " Et Blanquette, mon oie."," D'autres vagues aussi."," Nous dormirons l@-haut"," C'est la mer pour la mer"," Et pour ceux qui en r]vent"," Un p'tit peu de guingois"," Comme je fais ici."," Au grand pays du froid"," O| l'on voit des bateaux."
5520 DATA "-1-4-6-9-11-14-16-17-","-2-3-5-7-8-10-12-13-15-",8,9
6000 r=REMAIN(1):CALL &BCA7::MODE 1:WINDOW#1,3,39,15,23:WINDOW#2,2,10,1,14:WINDOW#3,12,39,3,13:PAPER#1,1:PEN#1,0:PAPER#3,0:PEN#3,1:GOSUB 7200:ind=0
6040 GOSUB 30040:GOSUB 30050:GOSUB 30080:PLOT 127,279,3:DRAW 159,287:DRAW 159,387:DRAW 624,387:DRAW 624,191:DRAW 159,191:DRAW 159,279:DRAW 127,279
6060 PRINT#3,"- Je vais t'exposer mon";"affaire :":PRINT#3:PRINT#3,"Marc-Antoine DESAUGIERS,";"un auteur":PRINT#3:PRINT#3,"Avait {crit ces quelques";"vers :":PEN#3,3:PRINT#3:PRINT#3,"Tableau de PARIS @ cinq";"heures...";:PEN#3,1:GOSUB 30065
6090 RESTORE 7500:GOSUB 7220:GOSUB 20220
6140 CLS#3:PRINT#3:PRINT#3,"- J'ai oubli{ o| se finit":PRINT#3:PRINT#3,"Chaque vers de la po{sie.":PRINT#3:PRINT#3,"Cela me reviendra peut-]tre":PRINT#3:PRINT#3,"Si tu les fais r{appara^tre.";:GOSUB 30065:GOSUB 20220
6160 CLS#3:PRINT#3:PRINT#3,"- Coupe le texte ailleurs":PRINT#3:PRINT#3,"En pla\\ant le curseur":PRINT#3:PRINT#3,"Apr}s chacun des vers":PRINT#3:PRINT#3,"Puis frappe sur ENTER.":GOSUB 30065:PAPER#1,3:PEN#1,0:PRINT#1,CHR$(30);"L":GOSUB 20220
6180 CLS#3:LOCATE#3,1,3:PRINT#3,"- Il y a ";CHR$(24);"8";CHR$(24);" vers @ trouver":LOCATE#3,1,6:PRINT#3,"Avec les rimes pour t'aider."
6500 pla=1:col=1:lig=1:num=1:fin=0:compt=0
6530 lig$=lig$(num):long=LEN(lig$):LOCATE#1,col,lig:cur$=MID$(lig$,col,1):PAPER#1,3:PEN#1,0:IF cur$=""THEN cur$=CHR$(255):PRINT#1,CHR$(24);
6550 PRINT#1,cur$;:PAPER#1,1:PEN#1,0:IF cur$=CHR$(255)THEN cur$=" "
6570 GOSUB 30080
6575 C$=INKEY$:IF C$=""THEN 6575 ELSE C=ASC(C$)
6590 IF C=243 AND col<larg THEN col=col+1:GOTO 6700
6600 IF C=242 AND col>1 THEN col=col-1:GOTO 6730
6610 IF C=240 AND num>1 THEN num=num-1:GOTO 6760
6620 IF C=241 AND num<mx THEN num=num+1:GOTO 6800
6630 IF C=13 THEN 6850 ELSE 6570
6700 IF col<=long THEN pla=pla+1
6710 LOCATE#1,col-1,lig:PRINT#1,cur$;:GOTO 6530
6730 IF col<long THEN pla=pla-1
6740 LOCATE#1,col+1,lig:PRINT#1,cur$;:GOTO 6530
6760 reste=LEN(MID$(lig$(num),col+1)):long1=LEN(LEFT$(lig$,col)):pla=pla-(reste+long1)
6770 LOCATE#1,col,lig:PRINT#1,cur$;:lig=lig-1
6780 GOTO 6530
6800 reste=LEN(MID$(lig$,col+1)):long1=LEN(LEFT$(lig$(num),col)):pla=pla+reste+long1
6810 LOCATE#1,col,lig:PRINT#1,cur$;:lig=lig+1
6820 GOTO 6530
6850 CLS#3:FOR i=1 TO mxi:IF pla=pla(i)THEN 6950 ELSE NEXT i
6860 compt=compt+1:IF compt<3 THEN 6920 ELSE GOSUB 30260:PRINT#3:PRINT#3,"- Trois erreurs, mes amis !":PRINT#3:PRINT#3,"Si tu veux arr]ter,"
6865 PRINT#3:PRINT#3,"Sur la touche ";CHR$(24);"1";CHR$(24);", appuie.":PRINT#3:PRINT#3,CHR$(24);"2";CHR$(24);" pour recommencer..."
6870 IF INKEY$<>""THEN 6870
6880 C$=INKEY$:IF C$<>"1"AND C$<>"2"THEN 6880
6890 CLS#3:IF C$="1"THEN GOSUB 7180:GOTO 360
6900 GOSUB 30250:LOCATE#3,1,4:PRINT#3,"- C'est une sage r{solution":PRINT#3:PRINT#3,"Pour la suite de ta mission.":GOSUB 30065:GOSUB 20220:IF ind=0 THEN RESTORE 7500 ELSE IF ind=1 THEN RESTORE 7530 ELSE IF ind=2 THEN RESTORE 7560
6910 GOSUB 7200:GOSUB 7220:GOTO 6500'on recommence
6920 GOSUB 30260:LOCATE#3,3,4:PRINT#3,"- Cela ne me dit rien...":LOCATE#3,1,7:PRINT#3,"C'est faux,je le crois bien!":GOTO 6570
6950 GOSUB 30250:LOCATE#3,3,4:PRINT#3,"- Il me semble en effet...":LOCATE#3,3,7:PRINT#3,"Oui, je le reconnais !"
6980 lig$(num+1)=UPPER$(MID$(lig$(num),col+1,1))+MID$(lig$(num),col+2)+lig$(num+1):lig$(num)=LEFT$(lig$(num),col)
6990 LOCATE#1,1,lig:PRINT#1,lig$(num);CHR$(18);
7000 lig1=lig+1
7020 FOR x=num+1 TO mxi+1
7025 IF x>mx THEN mx=x
7026 IF LEN(lig$(x))<larg THEN LOCATE#1,1,lig1:PRINT#1,lig$(x);CHR$(18);:GOTO 7092
7027 IF LEN(lig$(x))=larg THEN LOCATE#1,1,lig1:PRINT#1,lig$(x);:GOTO 7092
7030 p=larg
7040 sep$=MID$(lig$(x),p,1):IF sep$<>CHR$(32)THEN p=p-1:GOTO 7040
7060 lig$(x+1)=MID$(lig$(x),p+1)+lig$(x+1):lig$(x)=LEFT$(lig$(x),p)
7080 LOCATE#1,1,lig1:PRINT#1,lig$(x);CHR$(18);:lig1=lig1+1
7090 NEXT x
7092 GOSUB 7120:IF fin=2 THEN 360'renvoi a la suite de l'aventure
7093 IF fin=1 THEN GOSUB 7200:GOSUB 7220:GOTO 6500
7100 GOTO 6530
7120 pla1=0:FOR i=1 TO mxi:pla1=pla(i)+1-pla(i-1):IF MID$(lig$(i),pla1)<>""THEN RETURN ELSE NEXT
7125 fin=1:ind=ind+1
7130 CLS#3:FOR t=1 TO 1000:NEXT:IF ind=1 THEN RESTORE 7530:expr$="deuxi}me"ELSE RESTORE 7560:expr$="derni}re"
7135 IF ind<3 THEN PRINT#3:PRINT#3,"- Je vois que tu as";" r{ussi!":PRINT#3:PRINT#3,"  Passons @ la ";expr$;" strophe.":PRINT#3:PRINT#3,"  Elle comprend ";CHR$(24);"8";CHR$(24);" vers aussi.":GOSUB 30065:GOSUB 20220:RETURN
7145 mus=mus(1):mor=1:EVERY 10,1 GOSUB 10000
7146 fin=2:GOSUB 30250:PRINT#3:PRINT#3,"- La po{sie est arrang{e.":PRINT#3:PRINT#3,"Cela vaut un remerciement.":PRINT#3:PRINT#3,"Ce que je vais dire @":PRINT#3,"l'instant,":PRINT#3:PRINT#3,"Je te conseille de":PRINT#3,"le noter.":GOSUB 30065:GOSUB 20220
7150 CLS#3:GOSUB 30080:PRINT#3:PRINT#3,"- CRUEL est le BONHEUR!":PRINT#3:PRINT#3,"CAPTIVE du SEIGNEUR,":PRINT#3:PRINT#3,"La FILLE appelle son PERE.":PRINT#3:PRINT#3,"C'est la CLEF du myst}re!":GOSUB 30065
7160 PEN#3,3:RESTORE 7170:FOR x=1 TO 7:READ col,lig,A$:LOCATE#3,col,lig:PRINT#3,A$:NEXT:PEN#3,1:GOSUB 20220:GOSUB 7180:RETURN
7170 DATA 3,2,CRUEL,16,2,BONHEUR,1,4,CAPTIVE,12,4,SEIGNEUR,4,6,FILLE,22,6,PERE,10,8,CLEF
7180 CLS#3:GOSUB 30080:LOCATE#3,3,5:PRINT#3,"- Au revoir,":LOCATE#3,3,7:PRINT#3,"  Et bonsoir !":FOR t=1 TO 1000:NEXT:RETURN
7200 CLS#1:CLS#3:mx=1:mxi=1:larg=37:FOR x=1 TO 20:lig$(x)="":NEXT:RETURN
7220 READ lig$(mx):IF lig$(mx)="*"THEN lig$(mx)="":mx=mx-1 ELSE mx=mx+1:GOTO 7220
7230 READ pla(mxi):IF pla(mxi)=0 THEN mxi=mxi-1 ELSE mxi=mxi+1:GOTO 7230
7240 FOR x=1 TO mx:PRINT#1,lig$(x);:NEXT:RETURN
7500 DATA "L'ombre s'{vapore et d{j@ l'aurore ","de ses rayons dore les toits ","d'alentour; les lampes p[lissent, les"," maisons blanchissent, les march{s ","s'emplissent, on a vu le jour. ","*"
7510 DATA 18,35,54,76,98,124,150,167,0
7530 DATA "Dans chaque rue plus parcourue, ","la foule accrue grossit tout @ ","coup : grands, valetaille, ","vieillards, marmaille, bourgeois, ","canaille, abondent partout. ","*" 
7540 DATA 16,32,48,70,90,113,134,152,0
7560 DATA "Ah ! Quelle cohue ! Ma t]te est ","perdue, moulue et fendue : o| donc ","me cacher ? Jamais mon oreille n'eut ","frayeur pareille... Tout Paris ","s'{veille... Allons nous coucher. ","*"
7570 DATA 20,40,59,79,98,124,148,169,0
10000 IF PEEK(mus)>0 THEN 10020
10005 mor=mor+1:IF mor=7 THEN mor=1:GOSUB 10115
10006 IF mor=3 THEN GOSUB 10110
10010 mus=mus(mor)
10020 IF SQ(PEEK(mus))=128 THEN RETURN
10030 SOUND PEEK(mus),(PEEK(mus+1)*256)+PEEK(mus+2),PEEK(mus+3),0,PEEK(mus)
10040 mus=mus+4:GOTO 10000
10050 IF SQ(1)=4 OR SQ(1)>130 THEN SOUND 1,1430,22,0,2,,18:SOUND 1,1430,18,0,1,,15:SOUND 1,1430,14,0,1,,15
10060 RETURN
10110 ENV 1,2,6,1,1,0,6,12,-1,6:ENV 2,2,4,1,2,1,1,2,-1,2,8,-1,1:ENV 4,2,6,1,1,0,6,5,-1,4:RETURN
10115 ENV 1,2,6,1,1,0,6,5,-1,6:ENV 2,2,5,1,1,0,6,5,-1,6:ENV 4,2,6,1,1,0,6,5,-1,6:RETURN
10130 FOR t=1 TO 2000:NEXT:RETURN
20000 LOCATE#cn,co,lig:PRINT#cn,A$+STRING$(long-LEN(A$),"_")SPC(1);
20010 cur$=MID$(A$,pla+1,1):IF cur$=""THEN cur$=CHR$(255)ELSE PRINT#cn,CHR$(24);
20020 LOCATE#cn,col,lig:PRINT#cn,cur$;:PAPER#cn,0:PEN#cn,2
20030 IF(z>0 AND TIME-z>z1)OR essai>4 THEN flag1=1:RETURN ELSE C$=INKEY$
20035 IF C$=""THEN 20030 ELSE C=ASC(C$)
20040 IF c=13 AND A$<>""THEN LOCATE#cn,co,lig:PRINT#cn,A$+STRING$(long-LEN(A$),"_")SPC(1);:POKE 40883,PEEK(42027)+2:RETURN
20050 IF c=127 AND pla>0 THEN A$=LEFT$(A$,pla-1)+MID$(A$,pla+1):col=col-1:pla=pla-1:GOTO 20000
20060 IF c=16 THEN A$=LEFT$(A$,pla)+MID$(A$,pla+2):GOTO 20000
20070 IF c=242 AND pla>0 THEN col=col-1:pla=pla-1:GOTO 20000
20080 IF c=243 AND pla<LEN(A$)THEN col=col+1:pla=pla+1:GOTO 20000
20090 IF(C>cod1 AND C<cod2)OR(C>cod3 AND C<cod4)OR LEN(A$)=long THEN 20000
20100 A$=LEFT$(A$,pla)+C$+MID$(A$,pla+1):col=col+1:pla=pla+1:GOTO 20000
20120 IF LEFT$(A$,1)=" "THEN A$=MID$(A$,2):GOTO 20120 ELSE IF RIGHT$(A$,1)=" "THEN A$=LEFT$(A$,LEN(A$)-1):GOTO 20120 ELSE RETURN
20140 IF C$="@"OR C$="["THEN C$="A"ELSE IF C$="\\"THEN C$="C"
20150 IF C$="{"OR C$="}"OR C$="]"OR C$="þ"THEN C$="E"ELSE IF C$="^"OR C$="ý"THEN C$="I"
20160 IF C$="`"THEN C$="O"ELSE IF C$="|"OR C$="~"THEN C$="U"ELSE C$=UPPER$(C$)
20170 RETURN
20200 LOCATE 37,24:PRINT"    ";:LOCATE 37,25:PRINT"    ";:LOCATE 1,1:RETURN
20220 IF INKEY$<>""THEN 20220
20230 IF INKEY$=""THEN 20230 ELSE RETURN
20250 CLS#1:PEN#1,3:GOSUB 30190:PRINT#1,"- Je te sens un peu perdu,troubadour.";"Alors, apprends que TU DOIS UTILISER";" LA POUDRE DE DWORKIN.":PRINT#1," Maintenant que tu le sais...":GOSUB 30060:GOSUB 10130:GOSUB 20220
20260 CLS#1:PRINT#1,"... que d{cides-tu ?":PRINT#1," ";CHR$(24);"1";CHR$(24);" Essayer encore.":PRINT#1," ";CHR$(24);"2";CHR$(24);" Recommencer l'aventure au d{but.":PRINT#1," ";CHR$(24);"3";CHR$(24);" Poursuivre la route.":GOSUB 20200
20270 C$=INKEY$:IF C$<>"1"AND C$<>"2"AND C$<>"3"THEN 20270
20280 IF c$="1"THEN flag2=0:RETURN ELSE IF C$="3"THEN flag2=1:RETURN
20290 CLEAR:MODE 1:RUN"trouba1"
20400 DATA "Je suis hideuse","au Roc-Noir. Le triste","coiffeur se montre","chaque jour plus","coupant. J'attends de","l'aide, mon tailleur.","Je reconna^trai","celui ou celle qui","m'apportera la robe","du soir.",,"Votre biche aimante,",,"      Viviane."
20402 RESTORE 20400:PAPER#3,2:PEN#3,0:FOR x=1 TO 14:READ lig$(x):NEXT
20405 GOSUB 20520:FOR i=1 TO 200
20410 col=INT(RND*20)+1:lig=INT(RND*14)+1:IF lig=13 OR lig=11 THEN 20410
20420 C$=MID$(lig$(lig),col,2):IF C$=""THEN 20410 ELSE LOCATE#3,col,lig:PRINT#3,C$;:NEXT:FOR x=1 TO 14:LOCATE#3,1,x:PRINT#3,lig$(x):NEXT:GOSUB 20600:RETURN
20440 FOR i=1 TO 150
20450 col=INT(RND*19)+1:lig=INT(RND*14)+1:IF lig=13 OR lig=11 THEN 20450 ELSE LOCATE#3,col,lig:PRINT#3,"  ";:NEXT:FOR lig=1 TO 14:LOCATE#3,1,lig:PRINT#3,SPACE$(LEN(lig$(lig)));:NEXT
20470 CLS#1:GOSUB 30200:PEN#1,3:PRINT#1,"- La poudre n'agit plus !":GOSUB 10130:GOSUB 30180:PRINT#1,"Mais gr[ce @ mon pouvoir magique, je";"peux faire r{appara^tre le message.":GOSUB 30060:GOSUB 20220:CLS#1:PRINT#1,"- Que d{sires-tu ?"
20480 PRINT#1," ";CHR$(24);"1";CHR$(24);" revoir le message.":PRINT#1," ";CHR$(24);"2";CHR$(24);" passer @ la suite.";" (si tu penses avoir assez d'indices)";:GOSUB 20200
20490 C$=INKEY$:IF c$<>"1"AND C$<>"2"THEN 20490
20500 IF C$="1"THEN GOSUB 20400:GOTO 640 ELSE 1000
20520 case=40400:GOSUB 20640
20530 SYMBOL 74,0,2,2,2,68,68,56,0:SYMBOL 76,0,16,16,32,32,64,126,0:SYMBOL 78,0,33,49,82,74,140,132,0:SYMBOL 82,0,62,33,66,124,136,132,0:SYMBOL 86,0,66,66,132,136,80,32,0'MAJ.
20540 SYMBOL 123,4,8,30,34,60,64,60,0:SYMBOL 125,16,8,30,34,60,64,60,0:SYMBOL 94,16,40,0,8,8,16,56,0:RETURN'{-}-^
20600 SYMBOL 74,14,4,4,4,68,68,56,0:SYMBOL 76,64,64,64,64,64,64,126,0:SYMBOL 78,66,98,82,74,70,66,66,0:SYMBOL 82,124,66,66,124,68,66,66,0:SYMBOL 86,66,66,66,66,66,36,24,0'MAJ.
20610 case=40600:GOSUB 20640
20620 SYMBOL 123,8,16,60,66,124,64,60,0:SYMBOL 125,16,8,60,66,124,64,60,0:SYMBOL 94,16,40,24,8,8,8,28,0:RETURN
20640 n=97:FOR x=case TO case+175 STEP 8:SYMBOL n,PEEK(x),PEEK(x+1),PEEK(x+2),PEEK(x+3),PEEK(x+4),PEEK(x+5),PEEK(x+6),PEEK(x+7):n=n+1:NEXT:POKE 40883,PEEK(42027)+2:RETURN
30000 buf=dep+3:hau=PEEK(dep+1):lar=PEEK(dep+2):POKE &9FF5,buf-256*INT(buf/256):POKE &9FF6,INT(buf/256):POKE &9FF7,hau:POKE &9FF8,lar:POKE &9FF1,ad-256*INT(ad/256):POKE &9FF2,INT(ad/256)
30010 IF PEEK(dep)=0 THEN CALL 40848 ELSE CALL 40880
30020 RETURN
30040 dep=26903:ad=50112:GOSUB 30000:RETURN
30050 dep=27314:ad=55092:GOSUB 30000:RETURN
30060 dep=27686:ad=53113:GOSUB 30000:RETURN
30065 dep=27686:ad=52151:GOSUB 30000:RETURN
30070 dep=29492:ad=49400:GOSUB 30000:RETURN
30080 dep=29492:ad=63492:GOSUB 30000:RETURN
30090 dep=26801:FOR ad=49408 TO 49450 STEP 6:GOSUB 30000:NEXT:FOR ad=50766 TO 50808 STEP 6:GOSUB 30000:NEXT:dep=26852:FOR ad=49406 TO 50606 STEP 240:GOSUB 30000:NEXT:FOR ad=49454 TO 50654 STEP 240:GOSUB 30000:NEXT:RETURN
30091 FOR x=1 TO 23:IF ad+2048>65500 THEN ad=ad-(2048*7)+80 ELSE ad=ad+2048
30092 NEXT:RETURN
30100 dep=30755:ad=49261:GOSUB 30000:RETURN
30110 dep=34534:ad=59767:GOSUB 30000:RETURN
30120 dep=34657:ad=61733:GOSUB 30000:RETURN
30130 dep=34930:ad=59603:GOSUB 30000:RETURN
30140 dep=35411:ad=59519:GOSUB 30000:RETURN
30150 dep=36494:ad=57387:GOSUB 30000:RETURN
30160 dep=38258:ad=57374:GOSUB 30000:RETURN
30170 dep=27757:ad=49318:GOSUB 30000:RETURN
30180 dep=39887:ad=49725:GOSUB 30000:dep=40085:ad=52016:GOSUB 30000:RETURN
30190 dep=39953:ad=49725:GOSUB 30000:dep=40096:ad=52016:GOSUB 30000:RETURN
30200 dep=40019:ad=49725:GOSUB 30000:dep=40118:ad=52016:GOSUB 30000:RETURN
30210 dep=39821:ad=49725:GOSUB 30000:dep=40107:ad=52016:GOSUB 30000:RETURN
30220 dep=40129:ad=55708:GOSUB 30000:dep=40348:ad=60125:GOSUB 30000:RETURN
30230 dep=40275:ad=55708:GOSUB 30000:dep=40369:ad=60125:GOSUB 30000:RETURN
30240 dep=40202:ad=55708:GOSUB 30000:dep=40348:ad=60125:GOSUB 30000:RETURN
30250 dep=40275:ad=53496:GOSUB 30000:dep=40369:ad=57913:GOSUB 30000:RETURN
30260 dep=40202:ad=53496:GOSUB 30000:dep=40348:ad=57913:GOSUB 30000:RETURN