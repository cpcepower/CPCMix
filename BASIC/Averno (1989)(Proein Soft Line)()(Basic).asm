10 GOTO 1000
50 IF su<>0 THEN 500
60 IF ba<>0 THEN 600
70 te=7:a$=INKEY$:CALL &BB03:IF a$="" THEN 700
80 IF (ASC (a$)>48 AND ASC (a$)<57) THEN te=VAL (a$)
90 ON te GOTO 100,200,300,400,700,700,700,799
100 IF hf=1 THEN 150
105 sd=-1:POKE 34983,0:IF sx=1 THEN 700
110 IF s%(sx-1,sy)<>1 THEN sx=sx-1:hf=1:GOSUB 5100:GOTO 700
120 IF s%(sx-1,sy-1)<>1 THEN su=2:GOTO 700
130 IF sy>1 THEN IF s%(sx-1,sy-2)<>1 THEN su=3:GOTO 700
140 GOTO 700
150 sd=-1:hf=0:POKE 34983,0:GOSUB 5100:IF s%(sx,sy+1)<>1 THEN ba=1:GOTO 700
160 GOTO 700
200 IF hf=1 THEN 250 
205 sd=0:POKE 34983,97:IF sx=11 THEN 700
210 IF s%(sx+1,sy)<>1 THEN hf=1:GOSUB 5100:GOTO 700
220 IF s%(sx+1,sy-1)<>1 THEN su=2:GOTO 700
230 IF sy>1 THEN IF s%(sx+1,sy-2)<>1 THEN su=3:GOTO 700
240 GOTO 700
250 sd=0:sx=sx+1:hf=0:POKE 34983,96:GOSUB 5100:IF s%(sx,sy+1)<>1 THEN ba=1:GOTO 700
260 GOTO 700
300 IF HF=1 THEN 350
305 IF sx<=1 OR sy>=19 THEN 700
310 IF s%(sx-1,sy)<>1 AND s%(sx-1,sy+1)=1 AND s%(sx-1,sy+2)<>1 THEN la=sx-1:GOSUB 5200:IF mu <>0 THEN 800
320 GOTO 700
350 IF sx<=1 OR sy>=19 THEN 700
360 IF s%(sx,sy+1)=1 AND s%(sx,sy+2)<>1 THEN la=sx:GOSUB 5200:IF mu<>0 THEN 800
370 GOTO 700
400 IF HF=1 THEN 450
405 IF sx>=10 OR sy>=19 THEN 700
410 IF s%(sx+1,sy)<>1 AND s%(sx+1,sy+1)=1 AND s%(sX+1,sy+2)<>1 THEN la=sx+1:GOSUB 5200:IF mu <>0 THEN 800
420 GOTO 700
450 IF sx>=10 OR sy>=19 THEN 700
460 IF s%(sx+1,sy+1)=1 AND s%(sx+1,sy+2)<>1 THEN la=sx+1:GOSUB 5200:IF mu <>0 THEN 800
470 GOTO 700
500 IF su=1 THEN sx=sx+sd:hf=1:GOSUB 5100:su=0:GOTO 700
510 su=su-1:sy=sy-1:GOSUB 5100:GOTO 700
600 sy=sy+1:GOSUB 5100
610 IF s%(sx,sy+1)=1 THEN ba=0:GOTO 700
620 GOTO 700
700 ti%=ti%-10:IF ti%<0 THEN mu=4:GOTO 800
710 IF te<>7 THEN po%=po%-10:IF po%<0 THEN mu=5:GOTO 800
720 POKE 34980,2:POKE 34981,26:CALL 35021,po%:POKE 34980,6:POKE 34981,26:CALL 35021,ti%
730 IF hf=0 AND s%(sx,sy)=2 THEN GOSUB 1400
740 IF hf=0 AND s%(sx,sy)=3 THEN mu=3:IF nl=0 THEN mu=6:GOTO 800:ELSE 800
750 GOTO 50
799 mu=1
800 no=REMAIN (1):DATA -30509,-30490,-30471,-30452,-30433,-30414,-30414
810 CALL &BB03:IF mu<>6 THEN li=li-1: IF li<0 THEN mu=7
820 CALL 35009:IF mu=6 THEN 1100
830 RESTORE 800:FOR n=1 TO mu:READ a%:NEXT
840 POKE 34980,10:POKE 34981,3:CALL 35018,a%
850 FOR n=100 TO 1000 STEP 50:SOUND 2,n,5,15,0,0:NEXT
860 FOR n=0 TO 300:CALL &BB03:NEXT:CALL &BB18
870 mu=0:IF li<0 THEN RUN 1020
880 GOTO 1300
1000 ' arranque
1010 MEMORY 24999:LOAD "!1111"
1020 KEY DEF 66,0,32:SPEED KEY 8,1
1030 DIM s%(11,21):main=30000:hs%=3000
1040 MODE 0:BORDER 26:INK 0,26:INK 1,0:INK 2,24:INK 3,25:INK 4,21:INK 5,22:INK 6,18:INK 7,19:INK 8,9:INK 9,1:INK 10,2:INK 11,20:INK 12,23:INK 13,10:INK 14,13:INK 15,26
1050 POKE 34980,17:POKE 34981,5:CALL 35018,34800:POKE 34980,20:POKE 34981,8:CALL 35018,34823:CALL 35024
1060 main=30000:li=5:le=1:sc%=0
1070 KEY DEF 30,1,49:KEY DEF 22,1,50:KEY DEF 71,1,51:KEY DEF 63,1,52:KEY DEF 47,1,56
1080 MODE 0:BORDER 0:INK 0,0:INK 1,26:INK 2,6:INK 3,2:INK 4,1:INK 5,3:INK 6,20:INK 7,24:INK 8,10:INK 9,12:INK 10,15:INK 11,16:INK 12,18:INK 13,7:INK 14,11:INK 15,24,6
1090 GOTO 1200
1100 '
1110 s1%=sc%
1120 FOR n=po% TO 0 STEP-10:SOUND 1,50,1:sc%=sc%+1:po%=po%-10:IF po%<0 THEN po%=0
1130 POKE 34980,2:POKE 34981,26:CALL 35021,po%:POKE 34980,10:POKE 34981,26:CALL 35021,sc%:NEXT
1150 main=main+250: le=le+1
1190 IF le>=14 THEN 1500
1200 ' inicializa
1210 po%=0
1220 IF sc%>hs% THEN hs%=sc%
1300 '
1310 ti%=6000
1320 po%=po%+3000
1330 MODE 0:GOSUB 5000:CALL 35015
1340 GOSUB 5020:CALL 35012
1350 sx=PEEK (34700)-1:sy=PEEK (34701):nl=PEEK (34703):sd=PEEK(34702):POKE 34983,96*sd
1360 POKE 34986,sx*2:POKE 34985,sy  
1370 CALL 35006
1380 mu=0:su=0:ba=0:hf=0
1390 POKE 34980,0:POKE 34981,25:CALL 35018,34839:POKE 34980,4:POKE 34981,25:CALL 35018,34846:POKE 34980,8:POKE 34981,25:CALL 35018,34853
1392 POKE 34980,12:POKE 34981,25:CALL 35018,34860:POKE 34980,16:POKE 34981,25:CALL 35018,34867:POKE 34980,20:POKE 34981,25:CALL 35018,34874
1394 POKE 34980,2:POKE 34981,26:CALL 35021,po%:POKE 34980,6:POKE 34981,26:CALL 35021,ti%:POKE 34980,10:POKE 34981,26:CALL 35021,sc%:POKE 34980,22:POKE 34981,26:CALL 35021,hs%
1396 POKE 34980,18:POKE 34981,30:POKE 34982,li+48:CALL 35003:POKE 34980,14:POKE 34981,29:IF le<10 THEN POKE 34982,32:CALL 35003:POKE 34982,le+48:CALL 35003 ELSE POKE 34982,49:CALL 35003:POKE 34982,le+48-10:CALL 35003
1398 CALL &BB03:CALL 25016:EVERY 5,1 GOSUB 1600:GOTO 50
1400 ' coge llave
1410 EVERY 5,1 GOSUB 1610:FOR n=80 TO 20 STEP -10:SOUND 2,n,5,15,0,0:NEXT:FOR p=1 TO 30:NEXT:s%(sx,sy)=0:nl=nl-1:CALL 35000
1420 sc%=sc%+100:POKE 34980,10:POKE 34981,26:CALL 35021,sc%
1430 EVERY 5,1 GOSUB 1600:RETURN
1500 ' fin
1510 MODE 0:POKE 34980,6:POKE 34981,0
1520 FOR N=0 TO 31:POKE 34982,130:CALL 35003:POKE 34982,131:CALL 35003:NEXT
1530 FOR N=1 TO 4:POKE 34982,130:CALL 35003:POKE 34982,131:CALL 35003:FOR m=0 TO 13:POKE 34982,128:CALL 35003:POKE 34982,129:CALL 35003:NEXT:POKE 34982,130:CALL 35003:POKE 34982,131:CALL 35003:NEXT
1535 FOR N=0 TO 31:POKE 34982,130:CALL 35003:POKE 34982,131:CALL 35003:NEXT
1540 POKE 34980,10:POKE 34981,28:POKE 34982,136:CALL 35003:POKE 34982,137:CALL 35003:POKE 34982,8:CALL 35003:POKE 34982,8:CALL 35003:POKE 34982,10:CALL 35003:POKE 34982,138:CALL 35003:POKE 34982,139:CALL 35003
1550 FOR o= 0 TO 2:POKE 34985,10:POKE 34986,2:POKE 34983,96:CALL 35006
1560 FOR n=5 TO 28:POKE 34980,10:POKE 34981,n-3:POKE 34982,128:CALL 35003:POKE 34982,140:CALL 35003:POKE 34982,141:CALL 35003:POKE 34980,11:POKE 34981,n-3:POKE 34982,128:CALL 35003:POKE 34982,142:CALL 35003:POKE 34982,143:CALL 35003
1570 POKE 34986,n:CALL 35006:FOR l=0 TO 100:NEXT:NEXT
1580 POKE 34980,10:POKE 34981,26:POKE 34982,128:CALL 35003:POKE 34982,140:CALL 35003:POKE 34982,141:CALL 35003:POKE 34980,11:POKE 34981,26:POKE 34982,128:CALL 35003:POKE 34982,142:CALL 35003:POKE 34982,143:CALL 35003
1582 POKE 34980,10:POKE 34981,27:POKE 34982,128:CALL 35003:POKE 34982,136:CALL 35003:POKE 34982,137:CALL 35003:POKE 34980,11:POKE 34981,27:POKE 34982,128:CALL 35003:POKE 34982,138:CALL 35003:POKE 34982,139:CALL 35003:NEXT
1584 POKE 34980,0:POKE 34981,7:CALL 35018,34881:POKE 34980,3:POKE 34981,5:CALL 35018,34898:POKE 34980,17:POKE 34981,8:CALL 35018,34920:POKE 34980,20:POKE 34981,6:CALL 35018,34936
1590 CALL &BB18:RUN 1020
1600 CALL 25000
1610 RETURN
5000 m1=INT(main/256):m2=main-(m1*256):POKE 34989,m2:POKE 34990,m1:RETURN
5020 sc=@s%(0,0):m1=INT(sc/256):m2=sc-(m1*256):POKE 34987,m2:POKE 34988,m1:RETURN
5100 POKE 34986,sx*2+hf:POKE 34985,sy:CALL 35009:CALL 35006:RETURN
5200 FOR n=sy+2 TO 20:EVERY 5,1 GOSUB 1610:SOUND 2,n*10,10,15,0,0:FOR p=1 TO 15:NEXT
5210 IF s%(la,n)=1 THEN 5280
5220 POKE 34980,n:POKE 34981,la*2:POKE 34982,128:CALL 35003:CALL 35003
5230 s%(la,n-1)=0
5240 POKE 34980,n+1:POKE 34981,la*2:POKE 34982,130:CALL 35003:POKE 34982,131:CALL 35003
5250 old=s%(la,n):s%(la,n)=1
5260 IF old<>2 THEN NEXT n:GOTO 5280
5270 mu=2:GOTO 5280
5280 EVERY 5,1 GOSUB 1600:RETURN