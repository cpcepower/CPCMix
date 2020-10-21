10 MEMORY 30000:LOAD"elec1.bin":CALL 37556
100 MODE 0:INK 0,0:INK 1,24:INK 2,6,9:INK 3,11:|DESK,1,1:BORDER 20,11
192 ORIGIN 0,0:PEN 0:|WINDOW,0,1,40,12,14:PRINT:m$=" L O G Y S presente":POKE &B28F,39:|VITES,60:|ROTATION,@M$:FOR t=0 TO 1000:NEXT
200 |DESK,2,34:PEN 0:|WINDOW,0,1,40,10,14:PRINT:m$=" L'ELECTRICITE                                AU   DOMICILE":PEN 2:|PENG,1:|RELIEF,2,@M$:WINDOW 1,40,1,25
210 POKE &B28F,200:LOCATE 1,21:PRINT"auteur: G.LE QUELLEC"
212 POKE &B28F,78:WINDOW 1,20,23,25:PRINT"copyright  LOGYS (";CHR$(164);")":LOCATE 13,3:PRINT"- 1987 -";
215 GOSUB 10000
220 POKE &B28F,19:LOCATE 1,3:PRINT"Pressez une touche..";:PRINT CHR$(7);:CALL &BB18
3230 CLS:MODE 1:INK 0,0:INK 1,24:INK 2,11:INK 3,26:PAPER 0:BORDER 24:PEN 1
3240 |DESK,45,67:|WINDOW,0,11,31,11,13:PEN 0:|PENG,1:PRINT:m$=" H I S T O R I Q U E":|RELIEF,2,@M$:WINDOW 1,40,1,25
3245 PEN 1:GOSUB 3410
3250 CLS:MODE 2:INK 0,0:INK 1,24:PAPER 0:BORDER 11
3260 LOCATE 2,3:PEN 1:PRINT"Au VIIeme siecle av.J.C,les phenomenes d'electricite statique etaient connus.":PRINT" On avait constate qu'un morceau d'ambre (en grec ELECTRON) attirait les corps   legers apres frottement.
3270 PRINT:PRINT:PRINT"  Ce n'est pourtant qu'a partir de 1795, avec l'invention de la pile de VOLTA,    suivie en 1920 des decouvertes d'AMPERE et ARAGO sur l'electromagnetisme que
3280 PRINT"  l'on envisage les possibilites d'utiliser l'ELECTRICITE dans la vie courante    avec les premieres applications en eclairage,telephone,moteurs.
3290 PRINT:PRINT:PRINT"         Fin XIXeme siecle,la mise au point et la production du courant                 alternatif  permettra le developpement de l'industrie electrique.
3300 PRINT:PRINT:PRINT"        Au XXe siecle, plusieurs applications mecaniques et chimiques de":LOCATE 34,20:PRINT" l'ELECTRICITE":PRINT:PRINT"       verront le jour, notamment la radio, les rayons X, l'electronique.
3310 PAPER 1:PEN 0:GOSUB 3420:PAPER 0:PEN 1
3320 CLS:MODE 1:INK 0,0:INK 1,26:INK 2,11:INK 3,24:PAPER 0:BORDER 26:PEN 1
3330 |DESK,55,77:|WINDOW,0,12,30,11,13:PEN 0:|PENG,1:PRINT:m$=" P R E A M B U L E":|RELIEF,2,@M$:WINDOW 1,40,1,25
3335 PEN 1:GOSUB 3410
3340 CLS:MODE 2:INK 0,0:INK 1,24:PAPER 0:BORDER 11
3350 LOCATE 2,5:PRINT"De nos jours,l'utilisation de l'ELECTRICITE nous est devenue familiere et meme":LOCATE 28,7:PRINT"I N D I S P E N S A B L E
3360 PRINT:PRINT" A l'aide d'un 'MENU' de selection, choisissez la rubrique qui vous interesse.
3370 PRINT:PRINT:PRINT"          L'ordre chronologique du 'menu' n'a aucun caractere obligatoire.                Il est seulement conseille car suivant une progression logique.
3380 PRINT:PRINT"              Vous aurez ainsi une bonne approche de l'ELECTRICITE,                          celle qui nous sert tous les jours dans notre logement.
3390 LOCATE 33,18:PRINT"****************
3395 GOSUB 3420
3400 RUN "elec2.bin
3410 FOR t=0 TO 200:NEXT:ch$="Appuyez sur une touche":FOR i=1 TO LEN(ch$):LOCATE i+9,24:PRINT MID$(ch$,i,1):FOR at=1 TO 30:NEXT at:NEXT i:PRINT CHR$(7):CALL &BB18:RETURN
3420 FOR t=0 TO 200:NEXT:ch$="Appuyez sur une touche":FOR i=1 TO LEN(ch$):LOCATE i+30,24:PRINT MID$(ch$,i,1):FOR at=1 TO 30:NEXT at:NEXT i:PRINT CHR$(7):CALL &BB18:RETURN
3440 FOR t=0 TO 200:NEXT:ch$="Pour retour au Menu,appuyez sur une touche":FOR i=1 TO LEN(ch$):LOCATE i+21,25:PRINT MID$(ch$,i,1):FOR at=1 TO 30:NEXT at:NEXT i:CALL &BB18:RETURN
3450 FOR t=0 TO 200:NEXT:ch$="Retour au Menu,appuyez sur une touche":FOR i=1 TO LEN(ch$):LOCATE i+1,24:PRINT MID$(ch$,i,1):FOR at=1 TO 30:NEXT at:NEXT i:PRINT CHR$(7):CALL &BB18:RETURN
10000 ENV 4,1,10,1,1,-2,2,1,0,1,1,0,4,8,-1,6
10010 RESTORE 10040:FOR I=1 TO 88:READ A,B
10020 IF A>60 THEN SOUND 4,A,B*20,0,4:SOUND 2,A*2,B*20,1 ELSE IF A<51 THEN SOUND 1,A,B*20,0,4:SOUND 2,A*2,B*20,1 ELSE SOUND 5,A,20*B,0,4:SOUND 2,A*2,B*20,1
10030 WHILE SQ(2)>127:WEND:NEXT
10035 RETURN
10040 DATA 47,1,50,1,47,1,50,1,47,1,50,1,47,1,63,1,53,1,60,1,71,2,71,1,95,1,75,1
10050 DATA 63,2,63,1,60,1,63,1,71,2,47,1,50,1,47,1,50,1,47,1,50,1,47,1,63,1,53,1
10060 DATA 60,1,71,2,71,1,95,1,75,1,63,2,63,1,60,1,63,1,71,2,71,1,71,1,63,1,60,1
10070 DATA 53,1,47,1,47,2,47,1,60,1,45,1,47,1,53,2,53,1,63,1,47,1,53,1,60,2,60,1
10080 DATA 71,1,53,1,60,1,63,2,47,1,50,1,47,1,50,1,47,1,50,1,47,1,25,1,24,1,25,1
10090 DATA 24,1,25,1,24,1,63,1,53,1,60,1,71,2,71,1,95,1,75,1,63,2,63,1,60,1,63,1
10100 DATA 71,2,60,2,47,2,36,3
50000 LT=LEN(TEX$):R$=""
50020 LOCATE c-LT,23:PRINT" Reponse (";
50030 FOR I=1 TO LT-1
50040 PRINT MID$(TEX$,I,1);",";:NEXT
50050 PRINT RIGHT$(TEX$,1);") "
50060 TEX$=UPPER$(TEX$)
50070 WHILE R$="":R$=INKEY$:WEND
50080 R$=UPPER$(R$):K=INSTR(TEX$,R$)
50090 IF K=0 THEN R$="":PRINT CHR$(7);:GOTO 50070
50100 RETURN