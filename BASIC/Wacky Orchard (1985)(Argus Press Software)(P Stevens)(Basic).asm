10 DIM pitch(96),pitch1(225):GOSUB 2360:GOSUB 2450:GOSUB 2530:start=0
20 ENV 3,1,10,1,5,1,1,5,-2,1,5,1,2 
30 ENV 2,15,-1,13
40 ENT 1,12,-3,2
50 DIM i(13):i(0)=14:i(1)=13:i(2)=20:i(3)=6:i(4)=26:i(5)=0:i(6)=2:i(7)=8:i(8)=10:i(9)=12:i(10)=14:i(11)=16:i(12)=18:i(13)=22:mcnt=1:mcnt1=1
60 MEMORY &6FFF
70 LOAD"wacky.bin
80 CALL &8000
90 MODE 0
100 SYMBOL 240 ,(56),(108),(214),(222),(142),(222),(68),(56)
110 lv=1
120 level=lv:barrel=level:hazard=0:score=0:lev=100:f%=2:e%=4:z%=2:n%=0:o%=2:hit=0:g%=16:film=1:k%=0:l%=0:j%=4:h%=4:phase=0:fr=0:hi=0    
130 IF start=0 THEN GOSUB 2560
140 GOSUB 750:GOSUB 890
150 start=0
160 REM ************************** main loop *******************************
170 GOSUB 430:GOSUB 560:GOSUB 630:IF j=0 GOTO 170
180 ON SQ(2) GOSUB 2290
190 |SETINC,1,m%,n%:|SETINC,2,m%,n%:CALL &BD19:|MOVESP,1,2:GOTO 170 
200 REM ****************** bee ******************************************
210 g%=g%+1
220 IF g%>16 THEN e%=2 
230 IF g%=16 THEN e%=0 
240 IF g%>32 THEN e%=-2:g%=0 
250 IF c%>140 THEN |DRAWSP,7,c%,d%:|SPADDR,7,&7700:|DRAWSP,7,c%,d%:h%=-4
260 IF c%<4 THEN |DRAWSP,7,c%,d%:|SPADDR,7,&7300:|DRAWSP,7,c%,d%:h%=4
270 IF d%>155 AND c%>x%-8 AND c%<x%+8 THEN |DRAWSP,7,c%,d%:GOTO 1250
280 d%=d%+e%:c%=c%+h%
290 |SETINC,7,h%,e%:CALL &BD19:|MOVESP,7
300 RETURN
310 REM ****************** bonus *****************************************
320 IF bonus=0 THEN RETURN
330 IF bonus=1 THEN |SPADDR,4,&7C00:a1%=RND(1)*140:b1%=32:|DRAWSP,4,a1%,b1%:bonus=2:RETURN  
340 IF bonus=2 THEN |SETINC,4,0,f%+2:CALL &BD19:|MOVESP,4:GOSUB 360:RETURN
350 RETURN
360 IF b1%>145 AND a1%>x%-8 AND a1%<x%+8 THEN r%=RND(1)*100:score=score+r%:SOUND &X1001,72,24,7,0,1:|DRAWSP,4,a1%,b1%+f%+2:GOSUB 1560:bonus=0:RETURN
370 b1%=b1%+f%+2:IF b1%>158 THEN |DRAWSP,4,a1%,b1%:bonus=0:RETURN   
380 RETURN
390 REM ******************* blackout **************************************
400 FOR a=0 TO 15:INK a,11:NEXT:RETURN
410 REM ******************* re colour *************************************
420 FOR a=0 TO 13:INK a,i(a):NEXT:INK 14,1,24:INK 15,16,11:RETURN
430 REM ***************** joystick routine *****************************
440 IF o%=1 THEN GOSUB 510:RETURN 
450 j=JOY(0):IF j=0 THEN m%=0:n%=0:RETURN 
460 IF j=4 AND x%>6 THEN m%=-4:x%=x%-4:GOTO 500 
470 IF j=8 AND x%<134 THEN m%=4:x%=x%+4:GOTO 500
480 IF j=16 AND o%=2 THEN o%=1:ct%=0
490 m%=0:n%=0:RETURN
500 RETURN
510 REM *************************** jump *******************************
520 m%=0:IF ct%<16 THEN n%=-z%:ct%=ct%+1:y%=y%-z%
530 IF ct%>15 THEN n%=z%:ct%=ct%+1:y%=y%+z%
540 IF ct%>31 THEN n%=0:ct%=0:o%=2
550 RETURN
560 REM ************************ drop fruit ********************************
570 b%=b%+f%:CALL &BD19:|MOVESP,0:IF b%>158 THEN |DRAWSP,0,a%,b%:a%=RND(1)*130+4:b%=32:|DRAWSP,0,a%,b%
580 IF b%>140 AND a%>x%-8 AND a%<x%+8 THEN score=score+10:|DRAWSP,0,a%,b%:a%=RND(1)*130+4:b%=32:|DRAWSP,0,a%,b%:GOSUB 1560:r%=RND(1)*10:IF r%=6 AND bonus=0 THEN bonus=1
590 IF b%=32 THEN s%=5:t%=4
600 GOSUB 1410:s%=0:t%=0
610 GOSUB 310 
620 RETURN
630 REM ************************ hazard     ********************************
640 IF hazard<2 THEN RETURN
650 IF hazard>4 THEN GOSUB 1300:RETURN
660 d%=d%+j%:CALL &BD19:|MOVESP,7:IF d%>158 THEN |DRAWSP,7,c%,d%:GOSUB 690:GOSUB 1060:c%=RND(1)*130+4:d%=32:|DRAWSP,7,c%,d% 
670 IF d%>150 AND c%<x%+15 AND c%+16>x% THEN |DRAWSP,7,c%,d%:GOSUB 690:hit=1:score=score-20:GOSUB 1060:c%=RND(1)*130+4:d%=32:|DRAWSP,7,c%,d%:GOSUB 1560
680 RETURN
690 REM ************************** explode *******************************
700  IF level<3 OR level>4 THEN RETURN 
710 SOUND 4,0,195,15,2,0,15 
720 |SPADDR,3,&9300:|SETINC,3,0,0:|DRAWSP,3,c%,d%:FOR a=0 TO 20:|MOVESP,3:NEXT:|DRAWSP,3,c%,d%
730 IF d%>150 AND c%<x%+19 AND c%+20>x% THEN GOTO 1250
740 RETURN
750 REM *********************** screen setup *****************************
760 LOCATE 1,25:FOR a=1 TO 26:PRINT:GOSUB 2410:IF a=4 THEN |DRAWSP,1,10,212
770 IF a=10 THEN PEN 14:PRINT" Level=";:PEN 15:PRINT;level-1;:PEN 14:PRINT;" Phase=";:PEN 15:PRINT;phase 
780 NEXT
790 GOSUB 400:RESTORE 830 
800 MODE 0:PEN 14:PAPER 0:WINDOW#1,1,20,23,25:WINDOW SWAP 0,1:PAPER 8:CLS:WINDOW SWAP 1,0
810 FOR a=1 TO 6:|SPADDR,a,&9500+a*&100:NEXT
820 FOR a=1 TO 16:READ s,x,y:|DRAWSP,s,x,y:NEXT
830 DATA 1,144,0,6,112,16,5,128,16,4,144,16,1,144,32,2,144,48,1,144,64,1,144,80,6,112,96,5,128,96,4,144,96,1,144,112,1,144,128,2,144,144,1,144,160,3,144,176
840 FOR a=1 TO 6:|SPADDR,a,&9C00+a*&100:NEXT
850 |DRAWSP,4,16,0:|DRAWSP,5,32,0:|DRAWSP,6,48,0
860 FOR a=1 TO 7:|SPADDR,a,&6F00+a*&100:NEXT:|SPADDR,0,&7200
870 LOCATE 9,2:PEN 3:PRINT score 
880 RETURN
890 REM ********************* initialize ******************************
900 x%=50:y%=160:d%=32:|DRAWSP,1,x%,y%:|DRAWSP,2,x%,y%-16:c%=RND(1)*130+4:s%=0:t%=0:k%=0:l%=0:o%=2:m%=0:n%=0
910 IF level=1 THEN |SPADDR,0,&7200
920 IF level=2 THEN |SPADDR,0,&7400:|SPADDR,7,&9500
930 IF level=3 THEN |SPADDR,0,&9000:|SPADDR,7,&9200
940 IF level=4 THEN |SPADDR,0,&9100:|SPADDR,7,&7500
950 IF level=5 THEN |SPADDR,0,&9400:|SPADDR,7,&9F00:c%=144:d%=0
960 IF level=6 THEN |SPADDR,0,&9E00:|SPADDR,7,&7300:e%=2:d%=128:c%=4:h%=4:g%=15
970 IF level=7 THEN |SPADDR,0,&7D00:|SPADDR,7,&7B00:c%=60:d%=0:e%=0:q%=0
980 IF level=8 THEN level=1:f%=f%+1:e%=e%+2:j%=j%+2:phase=phase+1
990 |DRAWSP,0,0,32:|SPADDR,5,&9C00:|SPADDR,6,&9D00:|DRAWSP,6,0,48:|SPADDR,4,&7A00:|DRAWSP,4,112,80:|SPADDR,6,&7800:|DRAWSP,6,0,0:IF barrel>1 THEN GOSUB 1210
1000 a%=RND(1)*130+4:b%=32:|DRAWSP,0,a%,b%:|SETINC,0,0,f%
1010 IF level>1 THEN hazard=1
1020 hazard=level:IF hazard>1 THEN |DRAWSP,7,c%,d%:|SETINC,7,0,j%
1030 GOSUB 420
1040 GOSUB 1880
1050 RETURN
1060 REM *************************** shudder ****************************
1070 IF level>4 THEN RETURN
1080 IF level=2 THEN IF hit=1 THEN GOSUB 1380:hit=0:RETURN
1090 IF level=2 THEN RETURN
1100 FOR x=0 TO 5
1110 OUT &BC00,13:OUT &BD00,2
1120 FOR y=0 TO 50:NEXT
1130 OUT &BC00,13:OUT &BD00,0
1140 FOR y=0 TO 50:NEXT
1150 NEXT:RETURN
1160 REM *************************** fanfare ****************************
1170 RESTORE 1190
1180 FOR a=1 TO 11:READ n,d:SOUND 3,n,d,15,1:FOR b=1 TO 100:NEXT:NEXT
1190 DATA 100,5,150,5,100,10,200,10,90,5,100,5,150,5,100,10,200,10,150,10,80,20
1200 RETURN
1210 REM ********************* barrels of fruit *************************
1220 b=0:c=144:FOR a=2 TO barrel:|DRAWSP,5,b,c:c=c-16:IF c<64 THEN b=b+16:c=144
1230 NEXT
1240 RETURN  
1250 REM *************************  deaded ****************************
1260 |DRAWSP,1,x%-m%,y%:|DRAWSP,2,x%-m%,y%-16:|SPADDR,4,&7600:|DRAWSP,4,x%,y%:LOCATE 5,10:PRINT"GAME OVER":FOR a=0 TO 500:NEXT:IF score<0 THEN LOCATE 9,2:PRINT"oh dear!"
1270 IF score>n(5) THEN GOSUB 1900
1280 j=JOY(0):IF j<>16 THEN 2560
1290 BORDER 0:GOTO 120
1300 REM **************************** bugs ****************************
1310 IF level=6 GOTO 200 
1320 IF level=7 GOTO 1460
1330 IF d%<158 THEN d%=d%+4:|SETINC,7,0,4:CALL &BD19:|MOVESP,7 
1340 IF d%>158 THEN c%=c%-4:|SETINC,7,-4,0:CALL &BD19:|MOVESP,7
1350 IF c%<4 THEN |DRAWSP,7,c%,d%:c%=144:d%=0:|SETINC,7,0,4:|DRAWSP,7,c%,d%
1360 IF y%>150 AND c%>x% AND c%<x%+8 THEN |DRAWSP,7,c%,d%:score=score-25:GOSUB 1560:|DRAWSP,7,c%,d%
1370 RETURN
1380 REM ************************ flattened  **************************
1390 FOR a=1 TO 32:|SETINC,1,0,1:|SETINC,2,0,1:CALL &BD19:|MOVESP,1,2:NEXT
1400 FOR a=1 TO 32:|SETINC,1,0,-1:|SETINC,2,0,-1:FOR b=0 TO 50:NEXT:CALL &BD19:|MOVESP,1,2:NEXT:RETURN
1410 REM **************************** bird *****************************
1420 IF film=0 THEN |DRAWSP,6,k%,l%:k%=k%+s%:l%=l%+t%:|SPADDR,6,&7800:film=1:|DRAWSP,6,k%,l%:GOTO 1440
1430 IF film=1 THEN |DRAWSP,6,k%,l%:k%=k%+s%:l%=l%+t%:|SPADDR,6,&7900:film=0:|DRAWSP,6,k%,l%
1440 IF k%>104 THEN GOTO 1250
1450 RETURN
1460 REM ******************************* fly ***************************
1470 IF c%<x% THEN c%=c%+1:e%=1
1480 IF c%>x% THEN c%=c%-1:e%=-1
1490 IF c%=x% THEN e%=0
1500 IF d%>y% THEN d%=d%-1:q%=-1
1510 IF d%<y% THEN d%=d%+1:q%=1 
1520 IF d%=y% THEN q%=0
1530 |SETINC,7,e%,q%:CALL &BD19:|MOVESP,7
1540 IF d%=y% AND c%=x% THEN score=score-5:GOSUB 1560  
1550 RETURN
1560 REM ******************************* score ***************************
1570 IF score<0 THEN GOTO 1250
1580 LOCATE 9,2:PRINT score:SOUND 3,40,10,15,2,1
1590 IF level<7 AND score>lev THEN lev=lev+100:level=level+1:barrel=barrel+1:GOSUB 1160:GOSUB 750:GOSUB 890:RETURN
1600 IF level=7 AND score>lev THEN lev=lev+100:level=level+1:barrel=1:GOSUB 1160:GOSUB 1620:GOSUB 750:GOSUB 890:RETURN
1610 RETURN
1620 REM ********************** THE BOSS ***********************************
1630 |DRAWSP,0,a%,b%
1640 IF x%<64 THEN FOR a=x% TO 64:|SETINC,1,1,0:|SETINC,2,1,0:CALL &BD19:|MOVESP,1,2:x%=x%+1:NEXT
1650 IF d%>64 THEN FOR a=d% TO 64 STEP -2:|SETINC,7,0,-2:CALL &BD19:|MOVESP,7:NEXT
1660 film1=0:film2=0
1670 FOR a=0 TO X%-12 STEP 2
1680 GOSUB 1780
1690 FOR b=1 TO 100:NEXT
1700 NEXT
1710 |SPADDR,3,&8D00:|DRAWSP,3,X%-20,144:FOR b=0 TO 1000:NEXT:|DRAWSP,3,X%-20,144:|DRAWSP,5,A-2,160:|SPADDR,5,&8900:|DRAWSP,5,A-2,160:FOR B=0 TO 100:NEXT:|DRAWSP,5,A-2,160  
1720 FOR a=X%-12 TO 0 STEP -2 
1730 GOSUB 1830
1740 FOR B=0 TO 100:NEXT
1750 NEXT
1760 |DRAWSP,5,A+2,160
1770 RETURN
1780 IF film1=0 THEN |SPADDR,5,&8600:|DRAWSP,5,a,160:film1=1:RETURN
1790 IF film1=1 THEN |DRAWSP,5,a-2,160:|SPADDR,5,&8700:|DRAWSP,5,a,160:film1=2:RETURN  
1800 IF film1=2 THEN |DRAWSP,5,a-2,160:|SPADDR,5,&8800:|DRAWSP,5,a,160:film1=3:RETURN 
1810 IF film1=3 THEN |DRAWSP,5,a-2,160:|SPADDR,5,&8600:|DRAWSP,5,a,160:film1=1:RETURN
1820 RETURN    
1830 IF film2=0 THEN |SPADDR,5,&8A00:|DRAWSP,5,a,160:film2=1:RETURN
1840 IF film2=1 THEN |DRAWSP,5,a+2,160:|SPADDR,5,&8B00:|DRAWSP,5,a,160:film2=2:RETURN    
1850 IF film2=2 THEN |DRAWSP,5,a+2,160:|SPADDR,5,&8C00:|DRAWSP,5,a,160:film2=3:RETURN    
1860 IF film2=3 THEN |DRAWSP,5,a+2,160:|SPADDR,5,&8A00:|DRAWSP,5,a,160:film2=1:RETURN   
1870 RETURN
1880 REM ***************** coins *********************************
1890 WINDOW SWAP 0,1:FOR a=1 TO phase:LOCATE a,2:PEN 13:PRINT CHR$(240):NEXT:WINDOW SWAP 1,0:RETURN
1900 REM ********** high score table **********************
1910 GOSUB 2010
1920 |SPADDR,4,&9C00:RESTORE 1920:MODE 0:INK 0,0:PEN 13:CLS:FOR a=1 TO 10:READ x,y,n:FOR b=0 TO n-1:|DRAWSP,4,x+b*16,y:NEXT:NEXT:DATA 0,160,10,8,144,9,16,128,8,24,112,7,32,96,6,40,80,5,48,64,4,56,48,3,64,32,2,72,16,1 
1930 |SPADDR,4,&A000:|DRAWSP,4,0,0:|SPADDR,4,&A100:|DRAWSP,4,16,0:|SPADDR,4,&9D00:|DRAWSP,4,144,0
1940 PEN 4:LOCATE 1,23:PRINT"** wacky  orchard **" 
1950 FOR a=15 TO 19:LOCATE 6,a
1960 P=13:IF a-14=hi THEN P=14
1970 PEN p:PRINT n$(a-14);dot$(a-14);n(a-14);:NEXT 
1980 PEN 15:LOCATE 1,24:PRINT"    press   jump    ":hct=0
1990 j=JOY(0):hct=hct+0.1:IF j<>16 THEN GOSUB 2100:IF hct>4 THEN GOSUB 2560:ELSE GOTO 1990 
2000 RETURN
2010 REM *************** sort ***********
2020 FOR a=1 TO 5:IF score<n(a) THEN NEXT a:GOTO 2090
2030 IF a<>5 THEN FOR b=5 TO a+1 STEP -1:n$(b)=n$(b-1):n(b)=n(b-1):NEXT b
2040 FOR b=0 TO 200:a$=INKEY$:NEXT
2050 CLS:MODE 2:INK 0,0:LOCATE 1,10:PEN 3:PRINT"Great ! youve got onto the high score table , please enter your initials..";
2060 INPUT n$(a):hi=a:IF LEN(n$(a))<3 THEN n$(a)=n$(a)+"..."
2070 n$(a)=LEFT$(n$(a),3):n(a)=score:MODE 0
2080 FOR a=1 TO 5:v$=STR$(n(a)):le=(7-LEN(v$)):dot$(a)=STRING$(le,"."):NEXT
2090 RETURN
2100 REM ******************* wait routine ******************************
2110 |SETINC,0,0,2:fr=fr+1:IF fr>6 THEN fr=1  
2120 ON fr GOTO 2130,2140,2150,2160,2170,2180
2130 |SPADDR,0,&7200:c%=0:EN=112:GOTO 2190 
2140 |SPADDR,0,&7400:c%=16:EN=80:GOTO 2190 
2150 |SPADDR,0,&9E00:c%=32:EN=48:GOTO 2190
2160 |SPADDR,0,&9100:c%=112:EN=48:GOTO 2190 
2170 |SPADDR,0,&9400:c%=128:EN=80:GOTO 2190
2180 |SPADDR,0,&7D00:c%=144:EN=112:GOTO 2190  
2190 d%=16:|DRAWSP,0,c%,d%:FOR a=d% TO en STEP 8:CALL &BD19:|MOVESP,0:d%=d%+1
2200 IF JOY(0)=16 THEN RETURN
2210 GOSUB 2410
2220 NEXT:RETURN
2230 SCORE=0:GOSUB 750:GOSUB 890 
2240 BORDER 0:LOCATE 4,12:PEN 15:PRINT"press  fire":LOCATE 4,14:PEN 14:PRINT"to   start!":LOCATE 16,20:PRINT;LEVEL-1
2250 GOSUB 2410:GOSUB 560:GOSUB 630:GOSUB 2410:IF JOY(0)=16 THEN 120
2260 T=T+1:IF T>25 THEN level=level+1:T=0:GOTO 2230 
2270 i$=INKEY$:IF i$="" THEN GOTO 2250:ELSE lv=VAL(i$):IF lv>0 AND lv<8 THEN GOTO 120
2280 GOTO 2250
2290 REM******* music ********
2300 freq=440*(2^(1+((pitch(mcnt)-10)/12)))    
2310 pitchnum=ROUND(125000/freq)
2320 SOUND 1,pitchnum,10,15,2,2,0
2330 mcnt=mcnt+1
2340 IF mcnt=96 THEN mcnt=1
2350 RETURN
2360 RESTORE 2380
2370 FOR a=1 TO 96:READ b:pitch(a)=b:NEXT:RETURN 
2380 DATA 17,16,17,16,17,12,15,14,10,-14,-7,-2,1,6,10,12,-19,-7,-3,5,9,12,13,-14,-7,-2,5,17,16,17,16,17,12,15,14,10,-14,-7,-2,1,6,10,12,-19,-7,-3,5
2390 DATA 13,12,10,-14,-7,-2,17,16,17,16,17,12,15,14,10,-14,-7,-2,1,6,10,12,-19,-7,-3,5,9,12,13,-14,-7,-2,5,17,16,17,16,17,12,15,10,-14,-7,-2,1,6,10,12,-19
2400 REM******* music ******** 
2410 SOUND 4,pitch1(mcnt1),20,15,2,3,0
2420 mcnt1=mcnt1+1  
2430 IF mcnt1=225 THEN mcnt1=1
2440 RETURN    
2450 RESTORE 2480:FOR a=1 TO 225:READ b:freq=440*(2^(2+(b-10)/12))
2460 pitchnum=ROUND(125000/freq):pitch1(a)=pitchnum:NEXT:RETURN
2470 SOUND 1,pitchnum,10:
2480 DATA 17,16,17,16,17,12,15,14,10,-14,-7,-2,1,6,10,12,-19,-7,-3,5,9,12,13,-14,-7,-2,5,17,16,17,16,17,12,15,14,10,-14,-7,-2,1,6,10,12,-19,-7,-3,5
2490 DATA 13,12,10,-14,-7,-2,17,16,17,16,17,12,15,14,10,-14,-7,-2,1,6,10,12,-19,-7,-3,5,9,12,13,-14,-7,-2,5,17,16,17,16,17,12,15,14,10,-14,-7,-2,1,6,10,12,-19
2500 DATA -7,-3,5,13,12,10,-14,-7,-2,12,13,15,17,-11,-4,1,8,18,17,15,-16,-4,0,6,17,15,13,-14,-7,-2,5,15,13,12,-18,-7,5,5,17,5,17,17,29,16,17,16,17,16
2510 DATA 17,16,17,16,17,16,17,12,15,14,10,-14,-7,-2,1,6,10,12,-19,-7,-3,5,9,12,13,-14,-7,-2,5,17,16,17,16,17,12,15,14,10,-14,-7,-2,1,6,10,12,-19,-7,-3 
2520 DATA 5,13,12,10,-14,-7,-2,12,13,15,17,-11,-4,1,8,18,17,15,-16,-4,0,6,17,15,13,-14,-7,-2,5,15,13,12
2530 REM ************ high scores init *****************************
2540 RESTORE 2550:FOR a=1 TO 5:READ n$(a),n(a):NEXT:RETURN
2550 DATA osc,1000,pip,900,alf,800,bov,700,Pad,600
2560 REM ********** title screen *******
2570 RESTORE 2560
2580 INK 0,0:INK 1,15:of=50:CLS:FOR b=1 TO 41:READ o,t,th,f:s=f:th=th+of:o=o-of:t=t-of:fi=f:IF f<3 THEN s=20  
2590 IF f>2 THEN fi=0:f=0
2600 FOR a=o TO t STEP-4:MOVE th+f,a:DRAW th+s+f,a,1:f=f+fi:NEXT:NEXT:LOCATE 2,22:PEN 6:PRINT"PHILSOFT (c) 1985":LOCATE 5,24:PEN 1:PRINT"press (FIRE)"  
2610 hct=0:start=1
2620 FOR a=0 TO 26:INK 1,a:NEXT:hct=hct+0.1:j=JOY(0):IF j=16 THEN GOTO 120
2630 IF hct>5 THEN GOSUB 2230:ELSE GOTO 2620 
2640 RETURN
2650 DATA 400,300,0,0,320,300,20,0,340,300,40,0,320,300,60,0,400,300,80,0,360,300,120,0,360,340,140,0,320,300,130,0,360,300,160,0,360,300,200,0,360,340,220,0,320,300,220,0,440,300,260,0,400,360,300,-2,360,300,280,2,360,300,320,2,360,260,390,-2,280,260,0,350
2660 DATA 260,160,0,0,180,160,20,0,260,160,40,0,220,160,80,0,220,190,110,-2,220,160,140,0,220,200,160,0,180,160,160,0,260,160,200,0,220,200,220,-2,220,200,220,2,200,160,232,0,220,160,270,0,220,200,290,0,180,160,285,0,220,160,310,0,220,160,350,0
2670 DATA 220,190,380,-2,220,160,420,0,300,220,460,-2,180,160,440,0,440,160,460,0,440,420,260,200  
9999 SAVE "orchard"