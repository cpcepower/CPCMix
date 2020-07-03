1 ' &17D
10 'INIT
20 ON BREAK GOSUB 1120:MODE 1:INK 0,0:BORDER 0:INK 1,10:SYMBOL AFTER 33:SYMBOL 230,&FF,0,&FF,&FF,&FF,&FF,0,&FF:SYMBOL 231,&BD,&BD,&BD,&BD,&BD,&BD,&BD,&BD:SYMBOL 232,&BD,&BC,&BB,&B7,&AF,&9F,64,63:SYMBOL 233,&BD,29,&ED,&F5,&F9,&FD,2,&FC
30 SYMBOL 234,&FC,2,&F9,&F5,&ED,&DD,61,&BD:SYMBOL 235,63,64,&9F,&AF,&B7,&BB,&BC,&BD:SYMBOL 97,&FF,&FF,&FF,&FF,&FF,&FF,&FF,&FF:SYMBOL 98,&AA,85,&AA,85,&AA,85,&AA,85:SYMBOL 236,24,66,0,&81,&81,0,66,24:SYMBOL 237,24,66,8,&B9,&9D,16,66,24
40 SYMBOL 99,&F7,&B6,85,0,&7F,&6B,85:SYMBOL 100,&FE,&FE,&FE,0,&EF,&EF,&EF:SYMBOL 101,&C7,&C7,&FF,17,17,&FF,&C7,&C7:SYMBOL 102,0,84,&7A,&7C,&7E,&7C,62:SYMBOL 103,95,&FF,&7F,0,&AA,85,&AA,85:SYMBOL 104,&E7,&C3,&99,60,60,&99,&C3,&E7
50 SYMBOL 105,0,&FF,&FF,&A2,0,0,&FF,&FF:SYMBOL 106,&F7,&FB,&FD,&FE,0,&FE,&FE,&FE:SYMBOL 107,&E0,&EE,&EE,&EE,&EE,&EE,&EC,&E0:SYMBOL 108,&FF,&7F,63,31,&F,7,3,1:SYMBOL 109,&FF,&FE,&FC,&F8,&F0,&E0,&C0,&80:SYMBOL 110,&FE,&FE,&FE,&FE,&FE,&FE,&FE,&FE
60 SYMBOL 111,0,24,60,25,&7F,&7E,&7C,60:SYMBOL 112,24,52,52,52,52,60,0,60:SYMBOL 113,0,31,63,&7D,&F9,&8A,&8C,&F8:SYMBOL 114,3,1,4,3,&70,&ED,5,62:SYMBOL 115,&D8,&B0,&70,&94,60,&F0,52,&E6:SYMBOL 116,30,&67,97,&F1,&E0,74,26,22
70 SYMBOL 117,&A,&AF,&AF,&AF,&6F,&FE,94,30:SYMBOL 118,7,55,&77,&7B,60,&F,16,9:SYMBOL 119,96,&E0,&EC,&FC,24,&F0,16,16:SYMBOL 120,&E,7,5,27,&78,&F4,&EE,&F6:SYMBOL 121,&E0,&C0,&78,&80,92,&6F,&77,&6F:PEN 1:LOCATE 5,1:PRINT CHR$(235)+STRING$(30,230)+CHR$(234)
80 LOCATE 5,2:PRINT CHR$(231)+"SCORE: 0      "+CHR$(231)+"  AMSTAR & CPC "+CHR$(231):LOCATE 5,3:PRINT CHR$(232)+STRING$(30,230)+CHR$(233):FOR I=4 TO 19:LOCATE 8,I:PRINT CHR$(231):LOCATE 33,I:PRINT CHR$(231):NEXT:LOCATE 2,20
90 PRINT CHR$(235)+STRING$(36,230)+CHR$(234):FOR I=21 TO 24:LOCATE 2,I:PRINT CHR$(231):LOCATE 39,I:PRINT CHR$(231):NEXT:LOCATE 2,25:PRINT CHR$(232)+STRING$(36,230)+CHR$(233):WINDOW#3,3,38,21,24
100 GOSUB 960:GOSUB 1050:WINDOW#2,9,32,4,19:CLS#2:CLS#3:LOCATE 13,2:PRINT"0     ":CLEAR:ON BREAK GOSUB 1120:LEVEL=1:VIE=5:LOCATE 23,23:PRINT"TEMPS:":LOCATE 32,23:PRINT"VIE:"vie:GOSUB 680
110 'DEPLACEMENT VISEUR
120 PLOT-2,0,2:TAGOFF#1:PRINT#1,CHR$(22)+CHR$(1);:PRINT#1,CHR$(23)+CHR$(3);:TAG#1
130 MOVE X,Y:PRINT#1,CHR$(236);
140 J=JOY(0):IF MORT=1 THEN 620
150 IF GANG=0 THEN 340
160 IF(J AND 16)<>0 THEN J=J-16:IF CHAR>-1 THEN 270
170 IF J=0 THEN 130
180 PLOT-2,0,1:TAGOFF#1:PRINT#1,CHR$(23)+CHR$(2);:TAG#1:MOVE X,Y:PRINT#1,"a";:IF J=1 THEN Y=Y+16
190 IF J=2 THEN Y=Y-16
200 IF J=4 THEN X=X-16
210 IF J=8 THEN X=X+16
220 IF J=5 THEN X=X-16:Y=Y+16
230 IF J=6 THEN X=X-16:Y=Y-16
240 IF J=9 THEN X=X+16:Y=Y+16
250 IF J=10 THEN X=X+16:Y=Y-16
260 GOTO 120
270 'FIRE
280 MOVE X,Y:PRINT#1,CHR$(237);:ENV 1,30,0,1,127,-1,15:SOUND 129,0,240,15,1,0,10:IF TYPE=10 THEN 300
290 MUNI=MUNI-1:DI:LOCATE 3+MUNI,23:PRINT" ":EI:IF MUNI=0 THEN MUNI=9:CHAR=CHAR-1:DI:LOCATE 14+CHAR,23:PRINT" ":EI:IF CHAR<>-1 THEN DI:LOCATE 3,23:PRINT STRING$(9,"p"):EI
300 IF TYPE=1 OR TYPE=3 THEN IF X=GX*16 OR X=GX*16-16 THEN IF Y=(-GY+26)*16-18 OR Y=(-GY+26)*16-2 THEN 550
310 IF TYPE=2 THEN IF X=GX*16-16 AND Y=(-GY+26)*16-2 THEN 550
320 IF TYPE=6 THEN IF X=GX*16 OR X=GX*16-16 THEN IF Y=(-GY+26)*16-18 OR Y=(-GY+26)*16-2 THEN 1010
330 GOTO 180
340 'ICI LES BANDITS ARRIVENT
350 ON LEVEL GOSUB 360,420,440,500,520,540:TEMPS=5:GANG=1:LOCATE 29,23:PRINT TEMPS:EVERY 50,0 GOSUB 660:GOTO 140
360 CHANCE=INT(RND*6)+1:IF CHANCE=1 THEN LOCATE 13,12:PRINT"s":GX=13:GY=12:TYPE=2:RETURN
370 IF CHANCE>1 AND CHANCE<5 THEN 400
380 TYPE=1:CHANCE=INT(RND*5)+1:RESTORE 390:FOR I=1 TO CHANCE:READ GX,GY:NEXT:LOCATE GX,GY:PRINT"rs":LOCATE GX,GY+1:PRINT"tu":RETURN
390 DATA 16,11,23,11,28,11,12,6,16,6
400 TYPE=3:CHANCE=INT(RND*7)+1:RESTORE 410:FOR I=1 TO CHANCE:READ GX,GY:NEXT:LOCATE GX,GY:PRINT"rs":LOCATE GX,GY+1:PRINT"tu":RETURN
410 DATA 21,5,22,5,23,5,24,5,28,5,29,5,30,5,31,5
420 TYPE=1:CHANCE=INT(RND*6)+1:RESTORE 430:FOR I=1 TO CHANCE:READ GX,GY:NEXT:LOCATE GX,GY:PRINT"rs":LOCATE GX,GY+1:PRINT"tu":RETURN
430 DATA 12,8,17,8,22,8,27,8,12,14,27,14
440 CHANCE=INT(RND*2):IF CHANCE=1 THEN 450:ELSE 480
450 CHANCE=INT(RND*13)+1:RESTORE 470:FOR I=1 TO CHANCE:READ GX,GY:NEXT:LOCATE GX,GY:PRINT"rs":LOCATE GX,GY+1:PRINT"tu":IF CHANCE>2 THEN TYPE=3:ELSE TYPE=1
460 RETURN
470 DATA 12,6,12,13,17,17,18,17,19,17,20,17,21,17,22,17,23,17,25,13,28,13,29,13,30,13,31,13
480 TYPE=2:CHANCE=INT(RND*15)+1:RESTORE 490:FOR I=1 TO CHANCE:READ GX,GY:NEXT:LOCATE GX,GY:PRINT"o":RETURN
490 DATA 21,12,23,12,25,12,21,10,23,10,25,10,27,10,29,10,31,10,27,8,29,8,31,8,27,6,29,6,31,6
500 TYPE=1:CHANCE=INT(RND*8)+1:RESTORE 510:FOR I=1 TO CHANCE:READ GX,GY:NEXT:LOCATE GX,GY:PRINT"rs":LOCATE GX,GY+1:PRINT"tu":RETURN
510 DATA 10,10,10,14,21,10,21,14,25,10,25,14,29,10,29,14
520 TYPE=2:CHANCE=INT(RND*29)+1:RESTORE 530:FOR I=1 TO CHANCE:READ GX,GY:NEXT:LOCATE GX,GY:PRINT"o":RETURN
530 DATA 10,6,10,8,10,10,10,13,10,15,14,8,14,10,14,12,14,14,18,7,18,9,18,11,18,13,18,15,20,7,20,9,20,11,20,13,26,14,29,7,29,9,29,11,29,13,29,15,31,7,31,9,31,11,31,13,31,15
540 GX=20:GY=12:TYPE=6:RETURN
550 DI:LOCATE 1,1:PEN 0:PRINT REMAIN(0):EI:PEN 1:ATUER=ATUER-1:LOCATE 3+ATUER,21:PRINT" ":SCORE=SCORE+50:LOCATE 12,2:PRINT SCORE:GOSUB 570:IF ATUER=0 THEN LEVEL=LEVEL+1:GOSUB 680
560 GOTO 120
570 'LA ILS REPARTENT
580 BORDER 6:GANG=0:IF TYPE=1 THEN LOCATE GX,GY:PRINT"ff":LOCATE GX,GY+1:PRINT"ff":BORDER 0:RETURN
590 IF TYPE=3 THEN LOCATE GX,GY:PRINT"  ":LOCATE GX,GY+1:PRINT"  ":BORDER 0:RETURN
600 IF TYPE=2 THEN LOCATE GX,GY:PRINT"f":BORDER 0:RETURN
610 BORDER 0:RETURN
620 'MORT
630 MORT=0:ENV 1,30,0,1,127,-1,15:SOUND 129,0,240,15,1,0,10:FOR I=1 TO 2000:NEXT:GOSUB 570:PLOT-2,1,1:PRINT CHR$(23)+CHR$(2):MOVE x,y:PRINT#1,"a";:PRINT CHR$(23)+CHR$(3):INK 2,6:INK 3,6:S=640:FOR I=350 TO 96 STEP-2:PLOT 128,I,2:DRAW 510,I:SOUND 2,S,1,5
640 S=S-5:NEXT:VIE=VIE-1:LOCATE 36,23:PRINT VIE:IF VIE=0 THEN LOCATE 16,11:PEN 0:PAPER 2:PRINT"GAME OVER":PAPER 0:PEN 1:FOR I=1 TO 3000:NEXT:GOTO 100
650 PRINT CHR$(23)+CHR$(2):FOR I=350 TO 96 STEP-2:PLOT 128,I,1:DRAW 510,I:SOUND 2,S,1,5:S=S+5:NEXT:INK 2,26:INK 3,26:X=320:Y=206:GOTO 120
660 TEMPS=TEMPS-1:LOCATE 29,23:PRINT TEMPS:IF TEMPS<=0 THEN LOCATE 1,1:PEN 0:PRINT REMAIN(0):PEN 1:MORT=1:RETURN
670 RETURN:END
680 'CHANGEMENT DE TAB.
690 IF LEVEL<1 OR LEVEL>6 THEN CLS:SYMBOL AFTER 33:PRINT"LEVEL doit etre compris entre 1 et 6    inclus...":END
700 IF LEVEL=1 THEN RESTORE 780
710 IF LEVEL=2 THEN RESTORE 810
720 IF LEVEL=3 THEN RESTORE 840
730 IF LEVEL=4 THEN RESTORE 870
740 IF LEVEL=5 THEN RESTORE 900
750 IF LEVEL=6 THEN RESTORE 930
760 LOCATE 3,21:PRINT STRING$(36,"o"):CHAR=CHAR+5:MUNI=9:X=320:Y=206:LOCATE 14,23:PRINT STRING$(CHAR,"q"):LOCATE 3,23:PRINT STRING$(9,"p"):ATUER=36:CLS#2:LOCATE 17,11:PRINT"LEVEL"LEVEL:FOR I=1 TO 1000:NEXT:SOUND 129,426,60,14,2,3:SOUND 2,213,20,14,2,3
770 SOUND 2,179,20,14,2,3:SOUND 2,142,20,14,2,3:FOR I=1 TO 1000:NEXT:CLS#2:FOR I=4 TO 19:READ A$:LOCATE 9,I:PRINT A$:NEXT:RETURN
780 DATA "aaaaaaaaaaak            ","aaaffaaffaaf            "            ,"aeaffaaffaak     cc     "  ,"aaaffaaffaafdddddccddddd","aaaiiaaiiaakdddddddddddd","iiiiiiiiiiiigggggggggggg","aaaaaaaaaaakbbbbbbbbbbbb"
790 DATA "aaabbbaffaafbbffbbbffbbb","aeabfbaffaakbbffbbbffbbb","aaabbbaiiaafbbggbbbggbbb","aaabbbaaaeakbbbbbbbbbbbb","aaabbbaaaaafbbbbaaabbbbb","hm ggg lhaakbbbbaaabbbbb","c ggggg caafbbbbaaabbbbb"
800 DATA "cgggggggcaakbbbbaaabbbbb","jjjjjjjjjjjjjjjjjjjjjjjj"
810 DATA "dddddddddddddddddddddddd","dddddddddddddddddddddddd" ,"iiiiiiiiiiiiiiiiiiiiiiii","aaaaaaaaaaaaaaaaeaaaaaaa","aaaffaaaffaaaffaaaffaaaa","aeaffaaaffaaaffaaaffaaaa","aaaiiaaaiiaaaiiaaaiiaaaa"
820 DATA "aaaaaaaaaaaaaaaaaaaaaaaa","iiiiiiiiiiiiiiiiiiiiiiii","aaaaaaaaaaaaaaaaaaaaaaaa","aaaffaaaafgfgfaaaaffaaaa","aaaffaaaakbbbkaaaaffaaaa","aaaiiaeaafbbbfaaaaiiaaaa","aaaaaaaaakbbbkaaaaaaaaaa"
830 DATA "aaaaaaaaafbbbfaaaaaaaaaa","jjjjjjjjjjjjjjjjjjjjjjjj"
840 DATA "dddddddkbbbbbbbbbbbbbbbb","dddddddkbbbbbbbb        ","dddffddkbbbbbbbb  f f f ","dddffddkbbbbbbbb        ","dddggddkbbbbbbbb  f f f ","iiiiiiiibbb             ","        bbb f f f f f f "  
850 DATA "ddddddddbbb             ","ddddddddbbb f f f       ","dddffdddbbb             ","dddffddd                ","dddggddd        nn nnnnn","dddddddd        nninnnnn","dddddddd        nn nnnnn"
860 DATA "dddddddd        nn nnnnn","ddddddddddddddddnndnnnnn"
870 DATA "laa  laa  laa  laa  laa "," la   la   la   la   la ","iiiiiiiiiiiiiiiiiiiiiiii","kkkkkkkkkkkkkkkkkkkkkkkk","iiiiiiiiiiiiiiiiiiiiiiii","dddddddddddddddddddddddd","dffdddddddddffddffddffdd"
880 DATA "dffdddddddddffddffddffdd","diidaaaaaandiiddiiddiidd","ddddaVOTEZnddddddddddddd","dffdaaaaaandffddffddffdd","dffdaaCPCandffddffddffdd","diidaaaaaandiiddiiddiidd","ddddaaaaaanddddddddddddd"
890 DATA "dddddddddddddddddddddddd","jjjjjjjjjjjjjjjjjjjjjjjj"
900 DATA "                        ","aaaa    bbbbb  aa  aaaaa","afaa    bbbbb  aa  aaaaa","aaanaaa bfbfb  aa  afafa","afanafa bbbbb  aa  aaaaa","aaanaaa bfbfbanaa  afafa","afanafa bbbbbanaa  aaaaa"
910 DATA "aaanaaa bfbfbanaa  afafa","bbbnafa bbbbbanaa  aaaaa","bfbnaaa bfbfbanabbbafafa","bbbnafa bbbbbanabfbaaaaa","bfbnaanabfbfbanabbbafafa","gggggggggggggggggggggggg","bbbbbbbbnnnnnnnnnnnnnnnn"
920 DATA "bbbbbbnnnnnnnnnnnnnnnnnn","bbbnnnnnnnnnnnnnnnnnnnnn"
930 DATA "aaaanddddddddddddddaaaaa","aaaanddddddddddddddaaaaa","aaaanddddddddddddddaaaaa","aaaanddddddddddddddaaaaa","aaaanddddddddddddddaaaaa","aaaanddddddaanaaa daaaaa","aaaanddddddaanaaa daaaaa"
940 DATA "aaaandddddm  laaa daaaaa","aaaanddddd vw aaa daaaaa","aaaanddddd xy aaa daaaaa","aaaanddiiiiiiiiia daaaaa","aaaam  aaaaaaaaa   laaaa","aaam   aaaaaaaaa    laaa","aam    k       k     laa"
950 DATA "am                    la","m                      l"
960 'TITRE
970 CLS#3:RESTORE 980:FOR I=4 TO 19:READ A$:LOCATE 9,I:PRINT A$:NEXT:LOCATE 20,11:PAPER 1:PEN 0:PRINT"OF":PAPER 0:PEN 1:CLS#3:LOCATE 11,23:PRINT" ESPACE POUR JOUER":INK 2,26:INK 3,26:RESTORE 1090:RETURN
980 DATA "dddddddddddddddddddddddd","dddddddddddddddddddddddd" ,"ddd   dd   dd   dd   ddd","ddd c cd c cd cccd cccdd","ddd   cd c cd   dd   ddd","ddd c cd c cddc cddc cdd","ddd   cd   cd   cd   cdd"
990 DATA "ddddcccddcccddcccddcccdd","  d d d d  d   d   d    "," cc   c c cc c c ccc cc "," cd c c c cd   c c d cd ","  d c c c  d c c   c    ","dccdcdcdcdccdcdcdcccdccc","dddddddddddddddddddddddd"
1000 DATA "dddddddddddddddddddddddd","jjjjjjjjjjjjjjjjjjjjjjjj"
1010 'GAGNE
1020 DI:LOCATE 1,1:PEN 0:PRINT REMAIN(0):PEN 1:EI:SCORE=SCORE+500:LOCATE 12,2:PRINT SCORE:SPEED INK 1,1:BORDER 0,6:FOR I=1 TO 3000:NEXT:BORDER 0:CLS#2:PEN 2:LOCATE 10,10:PRINT"VOUS AVEZ TUE LE BOSS.":LOCATE 14,12:PRINT"FELICITATIONS":FOR I=1 TO 3000:NEXT
1030 CLS#2:LOCATE 12,10:PRINT"MAIS OSERIEZ VOUS":LOCATE 15,12:PRINT"LE REFAIRE":FOR I=1 TO 3000:NEXT:CLS#2:LOCATE 11,10:PRINT"ET C'EST REPARTI...":PEN 1:FOR I=1 TO 3000:NEXT:GANG=0:LEVEL=1:CHAR=0:GOSUB 680:GOTO 110:GANG=0:LEVEL=1:CHAR=0:GOSUB 680
1040 GOTO 110
1050 'MUSIQUE
1060 IF son=57 THEN son=0:RESTORE 1090
1070 SON=SON+1:READ S,D:A$="":A$=INKEY$:IF A$=" "THEN RETURN
1080 SOUND 6,S*2,D*40,15,2,3:SOUND 2,S+S,D*20,5,4,0:SOUND 1,200,D*5,4,2,3:GOTO 1060
1090 DATA 239,1,253,0.5,284,0.5,319,1,358,1,379,1,426,1,478,0.5,319,0.5,284,1.5,284,0.5,253,1.5,253,0.5,239,1.5,239,0.5,239,0.5,253,0.5,284,0.5,319,0.5,319,0.75,358,0.25,379,0.5,239,0.5,239,0.5,253,0.5,284,0.5,319,0.5
1100 DATA 213,0.5,179,0.5,142,0.5,190,0.5,179,0.5,213,0.5,478,0.5 ,319,0.75,358,0.25,379,0.5,379,0.5,379,0.5,379,0.5,379,0.5,379,0.5,358,0.25,319,1.5,358,0.25,379,0.5,426,0.5,426,0.5,426,0.5,426,0.5,379,0.25
1110 DATA 358,1.5,379,0.5,426,0.25,478,0.5,239,1,284,0.5,319,0.75,358,0.25,379,0.25,358,0.25,379,1,426,1,478,1
1120 SYMBOL AFTER 33:END