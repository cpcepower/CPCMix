30 CALL &BB48:MEMORY 22980
50 MODE 1:GOSUB 20250:PAPER 0:PEN 1:LOAD"modul1.mus",23731:LOAD"arthur.mus",22981:LOAD"chateau.cmp",30000:dep=30000:ad=57373:GOSUB 30000:LOAD"dessin3.cmp",25001
90 CALL &BB48:GOSUB 10115
100 DIM lig$(20),aid$(12),rep1$(12),rep2$(12),solut$(12),col(10),lig(10),ver$(16),num$(4),num(4)
120 GOSUB 30040:GOSUB 30050:GOSUB 30060
130 mus=22981:EVERY 10,1 GOSUB 10000
140 BORDER 3:LOCATE#2,1,4:PRINT#2,"LE":PRINT#2:PRINT#2,"CHATEAU":PRINT#2:PRINT#2,"DE":PRINT#2:PRINT#2,"ROC - NOIR !":INK 1,25:INK 2,9:INK 3,15:GOSUB 20220:GOSUB 20200:CLS#2
160 GOSUB 20250:GOSUB 30130:GOSUB 20270:GOSUB 10130:GOSUB 30070
170 PRINT#1,"- Halte-l@, troubadours !";"  Donnez le mot de passe pour";"  p{n{trer dans le ch[teau :":A$="":cod1=0:cod2=32:cod3=126:cod4=253:cn=1:co=15:lig=4:long=8:pla=0:col=15:pa=0:pe=1:GOSUB 20000:mot$=UPPER$(A$)'saisie
180 CLS#1:PEN#1,3:IF mot$<>"VILLON"THEN PRINT#1,"- Vous me dites n'importe quoi !";"  Passez votre chemin ou j'appelle";"  la garde !":GOSUB 30060:GOSUB 20220:GOSUB 20200:GOSUB 20250:CLS#1:GOSUB 10130:GOTO 160
220 dep=40608:ad=62171:GOSUB 30000:PRINT#1,"- C'est bon, passez.";"  Vous participez sans doute @";"  la f]te de ce soir.":GOSUB 30060:GOSUB 20220
225 CLS#1:dep=40565:ad=62171:GOSUB 30000:PRINT#1,"- Vous m']tes sympathiques et";"  je veux vous avertir :";"  M{fiez-vous du seigneur...":GOSUB 20220
230 CLS#1:PRINT#1,"- Il a peu de qualit{s et beaucoup de";"  d{fauts : m{chant, menteur et l[che";"  de surcro^t.":GOSUB 20220:CLS#1:dep=40522:GOSUB 30000:PRINT#1,"- Mais je me tais, car je l'entends";"  qui vient.":GOSUB 20220
240 deb=40815:nom1$=""
245 c=PEEK(deb):IF c>0 THEN C$=CHR$(c):nom1$=nom1$+C$:deb=deb+1:GOTO 245
250 deb=40830:nom2$=""
255 c=PEEK(deb):IF c>0 THEN C$=CHR$(c):nom2$=nom2$+C$:deb=deb+1:GOTO 255
270 CLS#1:CLS#2:GOSUB 30100:PRINT#1,"- ";nom1$;" et ";nom2$;"!";"  Je vous reconnais : on m'a parl{";"  de vous et racont{ vos aventures !":GOSUB 20220
275 dep=37545:ad=64141:GOSUB 30000:CLS#1:PRINT#1,"- Vous nous divertirez ce soir";"  mais je veux ]tre s~r que vous";"  ferez l'affaire."
280 GOSUB 30100:GOSUB 20220:CLS#1:PRINT#1,"- Un troubadour, le mois dernier,";"  a dress{ mon portrait.";"  Il n'a pas pu le terminer...":GOSUB 20220
285 dep=37459:ad=53739:GOSUB 30000:dep=37593:ad=64141:GOSUB 30000:CLS#1:PRINT#1,"- Il a pr{f{r{ go~ter la paille";"  humide de mes cachots !";"  Ah, ah, ah !!!":GOSUB 20220
290 GOSUB 20200:CLS#1:PRINT#1,"Que d{cidez vous ?":PRINT#1,"  ";CHR$(24);"1";CHR$(24);" Vous faites le portrait demand{.":PRINT#1,"  ";CHR$(24);"2";CHR$(24);" Vous refusez de parler @ ce";"grossier personnage.":
300 PRINT#1,"  ";CHR$(24);"3";CHR$(24);" Vous repartez tr}s vite."
310 IF INKEY$<>""THEN 310
320 c$=INKEY$:IF C$=""THEN 320
325 r=REMAIN(1):CALL &BCA7:GOSUB 10110
330 IF C$="2"OR C$="3"THEN CLS#1:dep=37383:ad=53739:GOSUB 30000:dep=37521:ad=64141:GOSUB 30000:PRINT#1,"- Comment ! Vous osez me d{fier ?";"  Gardes ! Enfermez-les !":GOSUB 10150:GOTO 7000
340 IF C$<>"1"THEN 320
360 CLS#1:CLS#2:GOSUB 30170:PRINT#1,"- Je vais vous aider, troubadours.";"  Je vous soufflerai certains mots.";"  Mais {crivez le bon !":GOSUB 30060:GOSUB 20220
370 GOSUB 20200:MODE 1:GOSUB 20250:WINDOW#1,3,40,20,23:WINDOW#2,3,11,2,18:WINDOW#3,11,39,2,18:PAPER#3,2:PEN#3,0:CLS#3:PAPER#1,0:PEN#1,3:GOSUB 30040:GOSUB 30050:GOSUB 30110:GOSUB 20270
375 mus=23731:EVERY 10,1 GOSUB 10040
376 GOTO 2000
390 PAPER#1,0:PEN#1,3:CLS#1:dep=37459:ad=53655:GOSUB 30000:dep=37569:ad=64057:GOSUB 30000:PRINT#1,"- Finalement, ce n'est pas trop mal,";"  ";nom1$;" !":GOSUB 30060:GOSUB 20220
395 CLS#1:GOSUB 30110:PRINT#1,"- Maintenant, retirez-vous et";"  pr{parez le spectacle";"  de ce soir...":GOSUB 20220
400 CLS#1:PRINT#1,"- Il distraira ma dame, la belle";"  Viviane.";"  Je la trouve un peu triste, ces";"  temps-ci...":GOSUB 20220:MODE 1
410 r=REMAIN(1):CALL &BCA7:GOSUB 20250:PEN 1:GOSUB 30090:LOCATE 12,8:PRINT"Vous vous retirez":LOCATE 16,12:PRINT"dans vos":LOCATE 13,16:PRINT"appartements...":INK 1,25:INK 2,9:INK 3,16:LOCATE 1,23:CLEAR:RUN "trouba4
2000 cn=3:page=1:insol=0:flatt=0:penal=0
2010 x=1:col1=1:lig1=1:IF page=1 THEN RESTORE 3000 ELSE RESTORE 3500
2020 READ lig$(x):IF lig$(x)="*"THEN mxlig=x-1:GOTO 2025 ELSE x=x+1:GOTO 2020
2025 x=1
2030 READ aid$(x):IF aid$(x)="*"THEN mxzon=x-1:GOTO 2040 ELSE x=x+1:GOTO 2030
2040 FOR x=1 TO mxzon:READ rep1$(x):NEXT:FOR x=1 TO mxzon:READ rep2$(x):NEXT:FOR x=1 TO mxzon:READ solut$(x):NEXT:FOR x=1 TO mxzon:READ col(x),lig(x):NEXT
2050 FOR i=1 TO mxzon
2060 LOCATE#3,col1,lig1:IF LEN(lig$(lig1))=29 THEN PRINT#3,MID$(lig$(lig1),col1);ELSE PRINT#3,MID$(lig$(lig1),col1);CHR$(18)
2070 FOR j=lig1+1 TO lig(i)-1
2080 LOCATE#3,1,j:IF LEN(lig$(j))=29 THEN PRINT#3,lig$(j);ELSE PRINT#3,lig$(j)
2090 NEXT
2100 LOCATE#3,1,lig(i):IF LEN(lig$(i))=29 THEN PRINT#3,LEFT$(lig$(lig(i)),col(i));ELSE PRINT#3,LEFT$(lig$(lig(i)),col(i))
2120 CLS#1:PRINT#1,"- Ecris le mot choisi, puis ENTER :":PEN#1,2:PRINT#1,aid$(i);:PEN#1,3
2140 FOR lig=1 TO mxlig:col=INSTR(lig$(lig),"_"):IF col=0 THEN NEXT ELSE long=col
2150 IF MID$(lig$(lig),long,1)="_"THEN long=long+1:GOTO 2150 ELSE long=long-col
2160 WINDOW#2,1,11,2,18:GOSUB 30040:GOSUB 30110
2180 A$="":co=col:pla=0:pa=2:pe=1:GOSUB 20000:PEN#3,0:rep$=A$
2187 CLS#1:R1$="":FOR x=1 TO LEN(rep$):C$=MID$(rep$,x,1):GOSUB 20140:R1$=R1$+C$:NEXT:R1$="*"+R1$+"*"
2190 IF INSTR(solut$(i),R1$)>0 THEN dep=37345:ad=53655:GOSUB 30000:dep=37569:ad=64057:GOSUB 30000:PRINT#1,"- Admettons...";"  Oui, cela me convient. ":GOSUB 2480:GOTO 2300
2210 IF INSTR(rep1$(i),R1$)>0 THEN insol=insol+1:GOSUB 2500:GOSUB 2480:GOSUB 2580:IF insol=2 THEN 7000 ELSE 2300
2230 IF INSTR(rep2$(i),R1$)>0 THEN flatt=flatt+1:GOSUB 2530:GOSUB 2480:GOSUB 2580:IF flatt=3 THEN 7000:(PRISON):ELSE 2300
2250 aid$="":FOR x=1 TO LEN(aid$(i)):C$=MID$(aid$(i),x,1):GOSUB 20140:aid$=aid$+C$:NEXT
2260 R1$=" "+MID$(R1$,2,LEN(R1$)-2)+" ":C$=LEFT$(rep$,1):GOSUB 20140:rep$=C$+MID$(rep$,2)
2270 IF INSTR(aid$,R1$)=0 THEN PRINT#1,"- ";rep$;" !":PRINT#1,"  Je ne connais pas ce mot l@.":GOTO 2280
2275 dep=37421:ad=53655:GOSUB 30000:dep=37545:ad=64057:GOSUB 30000:PRINT#1,"- ";rep$;" !":PRINT#1,"  Tu te moques ou bien tu dis";"  n'importe quoi, ";nom1$;" !"
2280 GOSUB 10150:IF flatt+insol+penal=3 THEN GOSUB 2560:GOSUB 2580:GOTO 7000 ELSE 2060
2300 GOSUB 10150:IF flatt+insol+penal=3 THEN GOSUB 2560:GOTO 7000 ELSE lig1=lig:col1=co+LEN(rep$)
2310 NEXT i
2320 LOCATE#3,col1,lig1:IF LEN(lig$(lig1))=28 THEN PRINT#3,MID$(lig$(lig1),col1);ELSE PRINT#3,MID$(lig$(lig1),col1);CHR$(18)
2330 IF page=1 THEN CLS#3:page=2:GOTO 2010 ELSE 390
2480 lig$(lig)=LEFT$(lig$(lig),co-1)+rep$+MID$(lig$(lig),co+long):RETURN
2500 IF insol=2 THEN GOSUB 30140:PRINT#1,"- Cette fois, vous d{passez la mesure,";"  troubadours !";"  Gardes, enfermez-les !":GOSUB 10170:RETURN
2510 dep=37383:ad=53655:GOSUB 30000:dep=37545:ad=64057:GOSUB 30000:PRINT#1,"- Hum...":PRINT#1,"  Gare @ votre insolence,";"  troubadours !":RETURN
2530 IF flatt=3 THEN GOSUB 30140:PRINT#1,"- Cet exc}s de flatterie cache";"  s~rement de noirs projets !";"  Gardes, enfermez-les !":GOSUB 10170:RETURN
2540 dep=37345:ad=53655:GOSUB 30000:dep=37593:ad=64057:GOSUB 30000:PRINT#1,"- Je vous trouve un peu trop";"  flatteurs, troubadours...":RETURN
2560 IF flatt+insol+penal=3 THEN CLS#1:GOSUB 30140:PRINT#1,"- D'ailleurs, c'en est trop !";"  Gardes, enfermez-les !":GOSUB 10170:RETURN
2580 IF insol=2 OR flatt=3 OR flatt+insol+penal=3 THEN r=REMAIN(1):CALL &BCA7
2590 RETURN
3000 DATA "    Portrait du ____________","    seigneur Kantor.",,"Il pr{sente un visage","_____________ o| brillent","des yeux ______________ .","Quand, marchant d'un air","____________ , il croise ses","sujets, ceux-ci le regardent"
3010 DATA "avec _______________ .","Toujours, il s'exprime avec","______________ .Ainsi, il est","___________ de tous.",*
3020 DATA " noble - fantastique - sinistre        rapide - perfide - fabuleux           lointain - minuscule "
3025 DATA " avenant - accueillant - renfrogn{ -   s{v}re - ahuri - s{rieux -horrible    sympathique - rougeaud "
3026 DATA " sournois - rieurs - malicieux - doux  cruels - fuyants - intelligents       rus{s - r]veurs - vifs "
3030 DATA " inquiet - apeur{ - fier - hautain     humble - but{ - farouche - d{cid{     snob - b]te "," terreur - admiration - consid{ration  stupeur - v{n{ration - effroi         d{f{rence - surprise "
3040 DATA " franchise - autorit{ - hypocrisie     sournoiserie - h{sitation - douceur   gravit{ - effort - l{g}ret{ "," aim{ - appr{ci{ - haý - ador{ - adul{ d{test{ - vomi - respect{ - d{cri{ ",*
3060 DATA "*SINISTRE*PERFIDE*MINUSCULE*","*RENFROGNE*AHURI*HORRIBLE*","*CRUELS*SOURNOIS*FUYANTS*","*INQUIET*APEURE*HAUTAIN*BETE*BUTE*","*TERREUR*EFFROI*","*HYPOCRISIE*SOURNOISERIE*HESITATION*","*DETESTE*HAI*VOMI*DECRIE*"
3080 DATA "*FANTASTIQUE*FABULEUX*","*AVENANT*ACCUEILLANT*SYMPATHIQUE*","*RIEURS*","*HUMBLE*","*ADMIRATION*VENERATION*",,"*ADORE*ADULE*"
3100 DATA "*NOBLE*","*SEVERE*SERIEUX*","*VIFS*MALICIEUX*RUSES*INTELLIGENTS*","*FIER*FAROUCHE*DECIDE*","*CONSIDERATION*DEFERENCE*","*FRANCHISE*AUTORITE*GRAVITE*","*AIME*APPRECIE*RESPECTE*"
3130 DATA 20,2,14,5,25,6,8,9,22,10,16,12,21,13
3500 DATA "A la guerre ou @ la chasse,","le seigneur est le plus","_______________ des hommes.","Chez lui, il se montre","_____________ envers ceux","qu'il aime. Sa dame ne peut","que _______________ de ses","attentions r{p{t{es.",
3510 DATA "Que soit ________ le seigneur","Kantor !","  Nous, troubadours, lui","demandons de bien vouloir","nous accorder _____________ .",*
3530 DATA " {l{gant - brave - poltron - valeureux courageux - peureux - couard - g{nial "," g{n{reux - infect -abominable         r{fl{chi - inf[me - pire - courtois   p{nible - merveilleux "
3540 DATA " se d{soler - se f{liciter - se moquer se plaindre - s'{tonner   se r{jouir  s'inqui{ter - se courber "," maudit - b{ni - lou{ - expuls{        assassin{ - rejet{ - mang{ - v{n{r{   respect{ "
3550 DATA " son cheval - sa protection - son aide sa fortune - son int{r]t - sa main ",*
3570 DATA "*POLTRON*PEUREUX*COUARD*","*INFECT*ABOMINABLE*INFAME*PENIBLE*","*SE DESOLER*SE PLAINDRE*SE MOQUER*S'INQUIETER*","*MAUDIT*ASSASSINE*REJETE*","*SA FORTUNE*"
3590 DATA "*PRODIGIEUX*GENIAL*","*MERVEILLEUX*",,"*VENERE*",
3610 DATA "*BRAVE*VALEUREUX*COURAGEUX*","*GENEREUX*COURTOIS*","*SE FELICITER*SE REJOUIR*","*BENI*LOUE*RESPECTE*","*SA PROTECTION*SON AIDE*SON INTERET*"
3630 DATA 28,3,12,6,21,8,9,11,29,14
7000 MODE 1:GOSUB 20250:GOSUB 30040:GOSUB 30050:GOSUB 30120
7010 LOCATE#2,1,5:PRINT#2,"DANS LES":LOCATE#2,1,8:PRINT#2,"GEOLES":LOCATE#2,1,11:PRINT#2,"DE KANTOR !";:GOSUB 20270:GOSUB 30060:GOSUB 20220:GOSUB 20200
7020 CLS#2:GOSUB 30170:PRINT#1,"- Courage, ";nom1$;" et ":PRINT#1,"  ";nom2$;" !":GOSUB 10130:GOSUB 30190:PRINT#1:PRINT#1,"  Je peux vous aider encore une";"  fois...":GOSUB 30060:GOSUB 20220:GOSUB 20200
7040 CLS#1:PRINT#1,"- ...gr[ce @ ce breuvage qu'on me";"  donna jadis aux Iles Magiques.":GOSUB 10130:CALL 40700:GOSUB 30060:GOSUB 20220:GOSUB 30170:CLS#1:PRINT#1,"- Il permet de franchir les barri}res";"  du temps."
7050 PRINT#1,"  Buvez le et vous vous retrouverez";"  dans le pass{, @ l'entr{e";"  du ch[teau.":GOSUB 20220:CLS#1:PRINT#1,"- Tirez les le\\ons de vos {checs,";"  et bonne chance !":GOSUB 20220:GOSUB 20200:GOSUB 20250:CLS#1:CLS#2
7060 GOSUB 10130:GOSUB 30040:GOSUB 30050:mus=22981:GOSUB 10115:EVERY 10,1 GOSUB 10000
7070 GOTO 160
10000 IF SQ(PEEK(mus))=128 THEN RETURN ELSE SOUND PEEK(mus),((PEEK(mus+1)*256)+PEEK(mus+2))/0.8,PEEK(mus+3),0,PEEK(mus):mus=mus+4
10010 IF mus>23724 THEN mus=22981
10020 GOTO 10000
10040 IF mus>24995 THEN mus=23746
10050 IF PEEK(mus)>4 THEN 10070
10060 IF SQ(PEEK(mus))=128 THEN RETURN
10070 SOUND PEEK(mus),(PEEK(mus+1)*256)+PEEK(mus+2),PEEK(mus+3),0,PEEK(mus+4):mus=mus+5:GOTO 10040
10110 ENV 1,2,7,1,1,0,6,14,-1,6:ENV 2,3,3,2,3,1,2,1,0,6,12,-1,4:ENV 4,2,7,1,1,0,6,6,-1,4:ENV 15,0,0,0:RETURN
10115 ENV 1,2,6,1:ENV 2,7,2,1:ENV 4,7,2,1,2,-1,1:RETURN
10130 FOR t=1 TO 2000:NEXT:RETURN
10150 FOR t=1 TO 3000:NEXT:RETURN
10170 FOR t=1 TO 5000:NEXT:RETURN 
20000 LOCATE#cn,co,lig:PRINT#cn,A$+STRING$(long-LEN(A$),"_")SPC(1);
20010 cur$=MID$(A$,pla+1,1):IF cur$=""THEN cur$=CHR$(255)ELSE PRINT#cn,CHR$(24);
20020 LOCATE#cn,col,lig:PRINT#cn,cur$;:PAPER#cn,pa:PEN#cn,pe
20030 C$=INKEY$:IF C$=""THEN 20030 ELSE C=ASC(C$)
20040 IF c=13 AND A$<>""THEN GOSUB 20120:LOCATE#cn,co,lig:PRINT#cn,A$+STRING$(long-LEN(A$),"_")SPC(1);:RETURN
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
20200 LOCATE 25,24:PRINT SPC(16);:LOCATE 25,25:PRINT SPC(16);:LOCATE 1,1:RETURN
20220 IF INKEY$<>""THEN 20220
20230 C$=INKEY$:IF C$=""THEN 20230 ELSE RETURN
20250 INK 1,0:INK 2,0:INK 3,0:WINDOW#1,3,40,19,23:WINDOW#2,3,14,1,17:PEN#1,3:PEN#2,1:RETURN
20270 INK 1,25:INK 2,13:INK 3,15:RETURN
30000 buf=dep+3:hau=PEEK(dep+1):lar=PEEK(dep+2):POKE &9FF5,buf-256*INT(buf/256):POKE &9FF6,INT(buf/256):POKE &9FF7,hau:POKE &9FF8,lar:POKE &9FF1,ad-256*INT(ad/256):POKE &9FF2,INT(ad/256)
30010 IF PEEK(dep)=0 THEN CALL 40848 ELSE CALL 40880
30020 RETURN
30040 dep=25103:ad=50112:GOSUB 30000:RETURN
30050 dep=25514:ad=55092:GOSUB 30000:RETURN
30060 dep=25886:ad=53113:GOSUB 30000:RETURN
30065 dep=25886:ad=52151:GOSUB 30000:RETURN
30070 dep=39392:ad=49320:GOSUB 30000:RETURN
30090 dep=25001:FOR ad=49408 TO 49450 STEP 6:GOSUB 30000:NEXT:FOR ad=50766 TO 50808 STEP 6:GOSUB 30000:NEXT:dep=25052:FOR ad=49406 TO 50606 STEP 240:GOSUB 30000:NEXT:FOR ad=49454 TO 50654 STEP 240:GOSUB 30000:NEXT:RETURN
30100 dep=36159:ad=49320:GOSUB 30000:RETURN
30110 dep=36159:ad=49236:GOSUB 30000:RETURN
30120 dep=32046:ad=57373:GOSUB 30000:RETURN
30130 dep=25957:ad=57373:GOSUB 30000:RETURN
30140 dep=37383:ad=53655:GOSUB 30000:dep=37521:ad=64057:GOSUB 30000:RETURN
30170 dep=37617:ad=49316:GOSUB 30000:RETURN
30180 dep=37617:ad=49233:GOSUB 30000:RETURN
30190 dep=39352:ad=52014:GOSUB 30000:RETURN
30240 dep=39352:GOSUB 30000:RETURN