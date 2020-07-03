10 ' =========================
20 ' =                       =
30 ' =  MUSIC-DEMO  (c)1988  =
40 ' =                       =
50 ' = von Andreas Stroiczek =
60 ' =      4950 Minden      =
70 ' =                       =
80 ' =  Songname: 'TRACK'    =
90 ' =                       =
100 '=========================
110 '
120 '
130 'Sounds
140 '
150 ENV 1,3,3,1,4,-1,5:ENT -1,1,-2,2,2,2,4,1,-2,3
160 ENV 2,1,9,1,7,-1,7:ENT -2,1,-1,2,1,2,2,1,-1,2
170 ENV 3,1,11,2,6,-1,3:ENT -3,1,30,2,1,15,2,1,10,2
180 ENV 4,3,3,1,2,-1,1:ENT 4,1,0,1,1,0,1,1,0,1
190 ENV 5,1,0,1,1,0,1:ENT 5,1,-30,1,1,0,1,1,0,1
200 ENV 6,1,5,1,1,0,1:ENT -6,1,-10,2,1,99,2,1,-89,2
210 ENV 7,1,11,1,6,-1,3:ENT 7,1,-30,1,1,0,1,1,0,1
220 ENV 8,3,2,1,1,0,1:ENT -8,1,-2,2,1,-1,1,1,3,2
230 ENV 15,1,0,1,1,0,1:ENT 15,1,0,1,1,0,1,1,0,1
240 '
250 'Initialisierung
260 '
270 DEFINT a-z:MODE 0:BORDER 0
280 mm=15:FOR i=0 TO 15:INK i,0:NEXT
290 DIM pp(mm,63,2),n(mm,63,2),cd(mm,63,2),p(2,63),tp(96)
300 FOR k=0 TO 7:FOR i=1 TO 12
310 tp(k*12+i)=ROUND(62500/440*(2^(4-k-((i-10)/12))))
320 NEXT i,k
330 EVERY 44 GOSUB 1070
340 '
350 'Laden
360 '
370 OPENIN"TRACK.DAT"
380 FOR k=0 TO 2
390 FOR j=0 TO mm
400 FOR i=0 TO 63
410 INPUT#9,a,b
420 IF a=255 THEN FOR x=i TO i+b-1:n(j,x,k)=0:cd(j,x,k)=0:pp(j,x,k)=0:NEXT:i=i+b-1:GOTO 460
430 n(j,i,k)=a AND &FF
440 pp(j,i,k)=(a AND &FF00)\256
450 cd(j,i,k)=b
460 NEXT
470 NEXT j,k
480 FOR i=0 TO 63
490 INPUT#9,j
500 p(0,i)=(j AND &F)
510 p(1,i)=(j AND &F0)\16
520 p(2,i)=(j AND &F00)\256
530 NEXT
540 CLOSEIN
550 '
560 'Demostart
570 '
580 A=REMAIN(0)
590 BORDER 1
600 SOUND 4,3822,9999,1,4,4:SOUND 1,1276,9999,0,4,4
610 LOCATE 6,5:PRINT CHR$(22)CHR$(1)"MUSIC-DEMO"
620 LOCATE 10,9:PRINT"by"
630 LOCATE 8,15:PRINT"Andreas"
640 LOCATE 7,17:PRINT"Stroiczek"
650 LOCATE 13,25:PRINT"(c)1988";
660 FOR j=1 TO 26:FOR i=2 TO 15:INK i,j:CALL &BD19:INK i,0:NEXT:NEXT
670 FOR j=1 TO 15:FOR i=2 TO 15:INK i,26:CALL &BD19:INK i,0:NEXT:NEXT
680 FOR j=1 TO 24:FOR i=2 TO 15:INK i,26:INK 1,j:CALL &BD19:INK i,0:NEXT:NEXT
690 FOR j=1 TO 25:FOR i=2 TO 15:INK i,26:CALL &BD19:INK i,0:NEXT:NEXT
700 FOR j=26 TO 0 STEP -1:FOR i=2 TO 15:INK i,j:CALL &BD19:INK i,0:NEXT:NEXT
710 '
720 'Lied abspielen
730 '
740 pl0=ps:pl1=ps:pl2=ps:nr0=p(0,pl0):nr1=p(1,pl1):nr2=p(2,pl2)
750 i0=0:i1=0:i2=0:CALL &BCA7:SOUND 7,0,96,0
760 FOR i=0 TO 13:INK 2,i:CALL &BD19:NEXT
770 z=0:EVERY 4 GOSUB 1180
780 IF (SQ(1) AND 7) THEN GOSUB 910
790 IF i0<64 THEN 810
800 pl0=(pl0+1)MOD 64:nr0=p(0,pl0):i0=i0 MOD 64
810 IF (SQ(2) AND 7) THEN GOSUB 960
820 IF i1<64 THEN 840
830 pl1=(pl1+1)MOD 64:nr1=p(1,pl1):i1=i1 MOD 64
840 IF (SQ(4) AND 7) THEN GOSUB 1010
850 IF i2<64 THEN 870
860 pl2=(pl2+1)MOD 64:nr2=p(2,pl2):i2=i2 MOD 64
870 IF INKEY(12) THEN 780
880 CALL &BCA7:FOR j=23 TO 0 STEP -1:INK 1,j:CALL &BD19:NEXT
890 a=REMAIN(0):FOR j=12 TO 0 STEP -1:INK z+2,j:CALL &BD19:NEXT:GOTO 600
900 '
910 a=(cd(nr0,i0,0) AND &F000)\&1000:IF a<0 THEN a=a+16
920 SOUND 1,tp(n(nr0,i0,0)),pp(nr0,i0,0)*12,(cd(nr0,i0,0) AND &F00)\&100,a,a,(cd(nr0,i0,0) AND &FF)
930 i0=i0+pp(nr0,i0,0)
940 RETURN
950 '
960 a=(cd(nr1,i1,1) AND &F000)\&1000:IF a<0 THEN a=a+16
970 SOUND 2,tp(n(nr1,i1,1)),pp(nr1,i1,1)*12,(cd(nr1,i1,1) AND &F00)\&100,a,a,(cd(nr1,i1,1) AND &FF)
980 i1=i1+pp(nr1,i1,1)
990 RETURN
1000 '
1010 a=(cd(nr2,i2,2) AND &F000)\&1000:IF a<0 THEN a=a+16
1020 SOUND 4,tp(n(nr2,i2,2)),pp(nr2,i2,2)*12,(cd(nr2,i2,2) AND &F00)\&100,a,a,(cd(nr2,i2,2) AND &FF)
1030 i2=i2+pp(nr2,i2,2)
1040 RETURN
1050 '
1060 'Sterne
1070 '
1080 IF y>400 THEN RETURN
1090 g=2^(RND*5)+8
1100 FOR d=-RND*512 TO 639 STEP g*14
1110 FOR f=2 TO 15
1120 PLOT d+f*g,y,f
1130 NEXT f,d
1140 y=y+4:RETURN
1150 '
1160 'Farbcycle waehrend des Liedes
1170 '
1180 CALL &BD19:INK z+2,0:z=(z+1)MOD 14:INK z+2,13:RETURN