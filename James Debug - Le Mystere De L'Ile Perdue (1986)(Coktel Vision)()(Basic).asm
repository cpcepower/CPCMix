10 CALL &BB48:SYMBOL AFTER 33:endr=HIMEM:LOAD "lettres",endr+1:CALL &BB48
12 MEMORY &2FFF:INK 0,0:PAPER 0:CLS:BORDER 0:LOAD "steppe.sds",&3000:CALL &3000:CALL &BB48
13 DIM PER%(1,250),DUR%(1,250),vol%(1,250)
15 SYMBOL 128,12,24,60,114,126,112,60,0
16 SYMBOL 129,24,36,60,114,126,112,60,0
17 SYMBOL 130,48,24,60,114,126,112,60,0
22 OPENIN "musique":FOR IM=0 TO 1:FOR JM=1 TO 250:INPUT #9,PER%(IM,JM),DUR%(IM,JM),vol%(im,jm):NEXT:NEXT:CLOSEIN:CALL &BB48:GOSUB 1500
24 CLEAR:MEMORY &238F:DIM a$(14)
30 dv=40600:dh=40601:nu=40602:tp=40604:tp1=40605:md=40603:db=40610
40 LOAD "demo.bin",40610:CALL &BB48:LOAD "cornel",&2D00:CALL &BB48
50 MODE 1:INK 0,0:INK 1,25:POKE nu,1:POKE md,1:POKE tp,0:POKE tp1,&2D:CALL db
60 GOSUB 20000:WINDOW #1,1,40,21,25:FOR i=0 TO 14:PRINT #1,a$(i);:FOR j=1 TO 1000:NEXT:NEXT
100 LOAD "image",&2390:CALL &BB48
110 MODE 0:RESTORE 10000:INK 8,0:INK 0,13:INK 1,7:INK 14,0:POKE dv,0:POKE dh,0:POKE nu,0:POKE tp,&90:POKE tp1,&23:POKE md,0:CALL db
210 FOR i=1 TO 6:READ a:INK 14,a:FOR j=1 TO 500:NEXT:NEXT
270 POKE nu,1:y=400:FOR i=77 TO 18 STEP -1:POKE dv,INT(5*SQR(i)):POKE dh,i:CALL db:SOUND 1,700-700/i,3,16-i/10:FOR j=0 TO 40:NEXT:NEXT 
360 FOR i=2 TO 14:READ a,b:POKE dv,a:POKE dh,b:POKE nu,i:CALL db:SOUND 1,0,20,i/2,,,31-2*i:FOR j=1 TO 100:NEXT:NEXT
460 POKE dv,85:POKE dh,18:POKE nu,15:INK 15,26:SPEED INK 30,30:CALL db:INK 8,6,24
550 j=0:FOR ii=1 TO 10:FOR i=300 TO 50 STEP -50:SOUND 1,i,3,15:NEXT:FOR i=50 TO 300 STEP 50:SOUND 1,i,3,15:NEXT:NEXT:FOR i=400 TO 240 STEP -1:MOVE 0,i:DRAW 640,i,5:MOVE j,i:DRAW j,0:MOVE 640-j,i:DRAW 640-j,0:j=j+1:SOUND 1,1000-i,3,11:NEXT i
570 a$=INKEY$:IF a$="" THEN 110 ELSE IF ASC(a$)=18 THEN 12 ELSE 110
1500 f3=0:TEMPO=0.6:i1=1:U=238:GOTO 2000
1520 a$=INKEY$:IF a$<>"" THEN 1520 ELSE RETURN
2000 'MUSIQUE
2010 I2=I1:U=U+1:f1=0:f2=0
2020 SOUND 1,100,100,0:SOUND 2,100,100,0
2030 IF PER%(0,I1)=0 THEN I1=I1+1:GOTO 2050
2040 IF SQ(1)>130 THEN SOUND 1,PER%(0,I1),DUR%(0,I1)*TEMPO-1,VOL%(0,i1):I1=I1+1:IF PER%(0,I1)<>19 THEN SOUND 1,1,1,0 ELSE SOUND 1,PER%(0,I1-1),1,15:I1=I1+1
2050 IF PER%(1,I2)=0 THEN I2=I2+1:GOTO 2070
2060 IF SQ(2)>130 THEN SOUND 2,PER%(1,I2),DUR%(1,I2)*TEMPO-1,VOL%(1,i2):I2=I2+1:IF PER%(1,I2)<>19 THEN SOUND 2,1,1,0 ELSE SOUND 2,PER%(1,I2-1),1,15:I2=I2+1 
2070 IF (i1=106 OR i2=106) AND f1=0 THEN i1=106:i2=106:f1=1
2080 IF (i1=174 OR i2=174) AND f2=0 THEN i1=174:i2=174:f2=1
2090 IF (i1=239 OR i2=239) AND f3=0 THEN RETURN
2100 IF i1>u THEN i1=250  
2110 IF i2>u THEN i2=250  
2120 IF I1<U OR I2<U THEN 2030 ELSE FOR i=1 TO 5000:NEXT:RETURN
10000 DATA 1,2,11,14,20,23
10100 DATA 20,19,19,18,16,18,16,16,14,15,14,15,13,14,12,12,10,10,10,8,10,6,10,3,8,0
20000 a$(0)="Une grande puissance a implant€ un":a$(1)="centre informatique strat€gique secret":a$(2)="dans une ile perdue du Pacifique. Apr‚s":a$(3)="un incident majeur, un d€versement":a$(4)="massif de programmes 'bugg€s' envahit"
20010 a$(5)="les centres serveurs de la plan‚te.Pour":a$(6)="€viter les cons€quences financi‚res de":a$(7)="la catastrophe, la puissance coupable":a$(8)="€limine radicalement les preuves et les":a$(9)="t€moins g€nants. James DEBUG, vous tes"
20020 a$(10)="envoy€ sur place pour trouver une":a$(11)="preuve formelle pouvant accabler les":a$(12)="coupables. Vous partez le 8 avril 1989":a$(13)="pour l'ile Raivavae.Vous y rencontrerez":a$(14)="le mage Uapou !!":RETURN