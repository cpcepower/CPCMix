10 REM ...................
15 REM .                 .
20 REM . CAPTAIN AMERICA .
25 REM .                 .
30 REM ...................
35 REM .                 .
40 REM . COCCHI BERNARD  .
45 REM .                 .
50 REM ...................  
55 REM .                 .
60 REM .     AMSTRAD     .
65 REM .                 .    
70 REM .  464,664,6128   .
75 REM .                 .
80 REM ...................    
100 SYMBOL AFTER 142
105 SYMBOL 240,24,24,219,36,126,165,153,90
110 SYMBOL 241,24,24,24,24,24,24,24,24
115 SYMBOL 242,153,102,90,153,165,36,36,102
120 SYMBOL 143,24,24,126,189,153,60,36,102
125 SYMBOL 144,36,102,129,66,36,66,90,153
130 SYMBOL 150,0,0,60,66,153,153,66,60
135 SYMBOL 151,0,0,0,60,102,102,60,0
140 SYMBOL 152,0,0,0,0,24,24,0,0
145 SYMBOL 160,56,68,146,186,146,84,84,124
150 SYMBOL 250,126,66,126,66,126,66,126,66
155 MEMORY &7000:LOAD"!CAP",&7500
156 INK 0,0:BORDER 0:INK 1,6:INK 2,2:INK 3,26:DIM p(41,25):MODE 1:vv=1:m=7:n=28:tt=1:w=39:t=9:e=36:l=12:ee=1:q=18:r=7:qq=1:o=16:p=12:oo=1:CALL &9840,&7500,1
160 GOTO 875
165 vie=6:place=1:GOSUB 740:GOSUB 645:GOSUB 760
170 a$=CHR$(22)+CHR$(1):b$=CHR$(22)+CHR$(0)
175 p1=0:p2=0:p3=0:p4=0:p5=0:p6=0:p7=0:p8=0:c1=0:c2=0:c3=0:c4=0:c5=0:c6=0:c7=0:c8=0
180 a=17:b=19:PEN 1:LOCATE a,b:PRINT CHR$(143)
185 REM
190 IF INKEY(74)=0 AND p(a-1,b)<>0 THEN PEN 1:PRINT a$:x=(a-1)*2:y=b-1:v=1:GOSUB 560:x=(a-1)*2-2:GOSUB 470:GOSUB 515:a=a-1:LOCATE a,b:PRINT CHR$(143):PEN 0:LOCATE a,b:PRINT CHR$(144):PRINT b$:GOTO 210
195 IF INKEY(75)=0 AND p(a+1,b)<>0 THEN PEN 1:PRINT a$:x=(a-1)*2:y=b-1:v=1:GOSUB 560:x=(a-1)*2+2:GOSUB 470:GOSUB 515:a=a+1:LOCATE a,b:PRINT CHR$(143):PEN 0:LOCATE a,b:PRINT CHR$(144):PRINT b$:GOTO 210
200 IF INKEY(73)=0 AND p(a,b+1)=2 THEN PEN 1:PRINT a$:y=b-1:x=(a-1)*2:v=1:GOSUB 560:y=b:GOSUB 470:GOSUB 515:b=b+1:LOCATE a,b:PRINT CHR$(143):PEN 0:LOCATE a,b:PRINT CHR$(144):PRINT b$:GOTO 210
205 IF INKEY(72)=0 AND p(a,b-1)=2 THEN PEN 1:PRINT a$:y=b-1:v=1:x=(a-1)*2:v=1:GOSUB 560:y=b-2:GOSUB 470:GOSUB 515:b=b-1:LOCATE a,b:PRINT CHR$(143):PEN 0:LOCATE a,b:PRINT CHR$(144):PRINT b$:GOTO 210
210 IF p(a,b)=3 THEN p(a,b)=1:GOSUB 370:GOSUB 830
215 IF p(a,b)>3 THEN vie=vie-1:GOSUB 445:GOSUB 855
220 IF(a=o AND b=p)OR(a=q AND b=r)OR(a=e AND b=l)OR(a=w AND b=t)OR(a=n AND b=m)THEN vie=vie-1:GOSUB 855
225 IF o>16 AND oo=1 THEN PEN 2:LOCATE o,p:PRINT" ":o=o-1:LOCATE o,p:PRINT CHR$(242)
230 IF o=16 AND oo=1 THEN oo=2
235 IF o<23 AND oo=2 THEN PEN 2:LOCATE o,p:PRINT" ":o=o+1:LOCATE o,p:PRINT CHR$(242)
240 IF o=23 AND oo=2 THEN oo=1
245 IF(a=o AND b=p)THEN vie=vie-1:GOSUB 855
250 IF q>18 AND qq=1 THEN PEN 2:LOCATE q,r:PRINT" ":q=q-1:LOCATE q,r:PRINT CHR$(242)
255 IF q=18 AND qq=1 THEN qq=2
260 IF q<24 AND qq=2 THEN PEN 2:LOCATE q,r:PRINT" ":q=q+1:LOCATE q,r:PRINT CHR$(242)
265 IF q=24 AND qq=2 THEN qq=1
270 IF(q=19 AND qq=1)OR(q=21 AND qq=2)THEN PEN 3:LOCATE 20,7:PRINT CHR$(250)
275 IF(a=q AND b=r)THEN vie=vie-1:GOSUB 855
280 IF l>12 AND ee=1 THEN PEN 2:LOCATE e,l:PRINT" ":l=l-1:LOCATE e,l:PRINT CHR$(240)
285 IF l=12 AND ee=1 THEN ee=2
290 IF l<17 AND ee=2 THEN PEN 1:LOCATE e,l:PRINT CHR$(241):l=l+1:PEN 2:LOCATE e,l:PRINT CHR$(240)
295 IF l=17 AND ee=2 THEN ee=1
300 IF(a=e AND b=l)THEN vie=vie-1:GOSUB 855
305 IF t>9 AND tt=1 THEN PEN 2:LOCATE w,t:PRINT" ":t=t-1:LOCATE w,t:PRINT CHR$(240)
310 IF t=9 AND tt=1 THEN tt=2
315 IF t<13 AND tt=2 THEN PEN 1:LOCATE w,t:PRINT CHR$(241):t=t+1:PEN 2:LOCATE w,t:PRINT CHR$(240)
320 IF t=13 AND tt=2 THEN tt=1
325 IF(a=w AND b=t)THEN vie=vie-1:GOSUB 855
330 IF m>7 AND vv=1 THEN PEN 2:LOCATE n,m:PRINT" ":m=m-1:LOCATE n,m:PRINT CHR$(240)
335 IF m=7 AND vv=1 THEN vv=2
340 IF m<10 AND vv=2 THEN PEN 1:LOCATE n,m:PRINT CHR$(241):m=m+1:PEN 2:LOCATE n,m:PRINT CHR$(240)
345 IF m=10 AND vv=2 THEN vv=1
350 IF(a=n AND b=m)THEN vie=vie-1:GOSUB 855
355 IF mort=1 THEN LOCATE 1,1:PRINT b$:LOCATE x1,x2:PRINT" ":GOTO 875
360 REM
365 GOTO 185
370 ENV 1,1,12,1,1,0,5,12,-1,2
375 ENV 2,1,13,1,1,0,15,13,-1,5
380 ENV 3,1,13,1,12,-1,3
385 ENT 3,5,40,1,5,20,1,10,25,1
390 ENV 4,11,1,5,2,0,120,11,-1,14
395 ENT-5,14,-10,1,1,120,1
400 ENV 5,1,15,1,15,-1,12
405 ENV 6,1,12,1,12,-1,9
410 ENV 7,15,-1,2
415 ENV 8,10,1,1,20,0,1,10,-1,2
420 ENT-8,1,1,1
425 ENV 9,1,15,1,15,-1,4
430 ENT-9,9,5,3,1,-45,3
435 SOUND 129,250,0,0,5,5
440 RETURN
445 FOR i=b TO b+(p(a,b)-11)
450 FOR we=1 TO 10
455 PEN 1:LOCATE a,i:PRINT CHR$(143):LOCATE a,i:PRINT" "
460 SOUND 1,i+100,2:NEXT we:NEXT i
465 RETURN
470 p1=PEEK(x+49152+y*80)
475 p2=PEEK(x+49152+y*80+2048)
480 p3=PEEK(x+49152+y*80+2*2048)
485 p4=PEEK(x+49152+y*80+3*2048)
490 p5=PEEK(x+49152+y*80+4*2048)
495 p6=PEEK(x+49152+y*80+5*2048)
500 p7=PEEK(x+49152+y*80+6*2048)
505 p8=PEEK(x+49152+y*80+7*2048)
510 RETURN
515 c1=PEEK(x+49152+y*80+v)
520 c2=PEEK(x+49152+y*80+2048+v)
525 c3=PEEK(x+49152+y*80+2*2048+v)
530 c4=PEEK(x+49152+y*80+3*2048+v)
535 c5=PEEK(x+49152+y*80+4*2048+v)
540 c6=PEEK(x+49152+y*80+5*2048+v)
545 c7=PEEK(x+49152+y*80+6*2048+v)
550 c8=PEEK(x+49152+y*80+7*2048+v)
555 RETURN
560 POKE(x+49152+y*80),p1
565 POKE(x+49152+y*80+2048),p2
570 POKE(x+49152+y*80+2*2048),p3
575 POKE(x+49152+y*80+3*2048),p4
580 POKE(x+49152+y*80+4*2048),p5
585 POKE(x+49152+y*80+5*2048),p6
590 POKE(x+49152+y*80+6*2048),p7
595 POKE(x+49152+y*80+7*2048),p8
600 POKE(x+49152+y*80+v),c1
605 POKE(x+49152+y*80+2048+v),c2
610 POKE(x+49152+y*80+2*2048+v),c3
615 POKE(x+49152+y*80+3*2048+v),c4
620 POKE(x+49152+y*80+4*2048+v),c5
625 POKE(x+49152+y*80+5*2048+v),c6
630 POKE(x+49152+y*80+6*2048+v),c7
635 POKE(x+49152+y*80+7*2048+v),c8
640 RETURN
645 p(16,4)=1:p(17,4)=1:p(18,4)=1:p(19,4)=1:p(20,4)=1:p(21,4)=1:p(22,4)=1:p(23,4)=1:p(24,4)=1:p(25,4)=1:p(26,4)=1:p(27,4)=1:p(31,4)=1:p(32,4)=1:p(33,4)=1:p(34,4)=1:p(35,4)=1:p(36,4)=1:p(37,4)=1:p(38,4)=1:p(39,4)=1:p(40,4)=1
650 p(16,9)=1:p(17,9)=1:p(18,9)=1:p(19,9)=1:p(21,9)=1:p(22,9)=1:p(23,9)=1:p(24,9)=1:p(25,9)=1:p(29,7)=1:p(30,7)=1:p(31,7)=1:p(32,7)=1:p(33,7)=1:p(34,7)=1:p(35,7)=1:p(36,7)=1:p(37,7)=1:p(38,7)=1
655 p(28,10)=1:p(30,10)=1:p(31,10)=1:p(32,10)=1:p(33,10)=1:p(34,10)=1:p(35,10)=1:p(36,10)=1:p(37,10)=1:p(38,10)=1:p(39,13)=1
660 p(18,12)=1:p(19,12)=1:p(20,12)=1:p(21,12)=1:p(22,14)=1:p(23,14)=1:p(24,14)=1:p(26,14)=1:p(27,14)=1:p(28,14)=1
665 p(29,14)=1:p(30,14)=1:p(31,14)=1:p(32,14)=1:p(33,14)=1:p(34,14)=1:p(35,17)=1:p(36,17)=1:p(37,17)=1:p(38,17)=1:p(39,17)=1:p(40,17)=1
670 p(16,19)=1:p(17,19)=1:p(19,19)=1:p(20,19)=1:p(21,19)=1:p(22,19)=1:p(23,19)=1:p(24,19)=1:p(25,19)=1:p(26,19)=1:p(27,19)=1:p(28,19)=1:p(29,19)=1:p(30,19)=1:p(31,19)=1:p(32,19)=1
675 p(20,5)=2:p(20,6)=2:p(20,7)=2:p(20,8)=2:p(20,9)=2:p(25,10)=2:p(25,11)=2:p(25,12)=2:p(25,13)=2:p(25,14)=2
680 p(21,13)=2:p(21,14)=2:p(18,13)=2:p(18,14)=2:p(18,15)=2:p(18,16)=2:p(18,17)=2:p(18,18)=2:p(18,19)=2
685 p(34,15)=2:p(34,16)=2:p(34,17)=2:p(39,5)=2:p(39,6)=2:p(39,7)=2:p(29,8)=2:p(29,9)=2:p(29,10)=2
690 p(38,11)=2:p(38,12)=2:p(38,13)=2:p(18,12)=2:p(21,12)=2:p(25,9)=2:p(20,4)=2:p(29,7)=2:p(38,10)=2:p(39,13)=2:p(34,14)=2:p(39,4)=2
695 p(39,14)=2:p(39,15)=2:p(39,16)=2:p(39,17)=2
700 p(21,17)=2:p(20,17)=2:p(21,18)=2:p(20,18)=2:p(21,19)=2:p(20,19)=2
705 p(17,12)=18
710 p(22,12)=13
715 p(40,7)=21
720 p(39,10)=13
725 p(40,13)=14
730 p(35,14)=13
735 RETURN
740 LOCATE 24,22:PRINT"         ":IF vie>0 THEN PEN 1:LOCATE 24,22:PRINT STRING$(6,CHR$(143)):IF vie<6 THEN PEN 2:LOCATE 24,22:PRINT STRING$(6-vie,CHR$(160))
745 LOCATE 24,23:PRINT"         ":PEN 3:LOCATE 24,23:PRINT score
750 LOCATE 24,24:PRINT"         ":PEN 3:LOCATE 24,24:PRINT record
755 RETURN
760 IF place=1 THEN p(16,4)=3:x1=16:x2=4
765 IF place=2 THEN p(24,19)=3:x1=24:x2=19
770 IF place=3 THEN p(27,4)=3:x1=27:x2=4
775 IF place=4 THEN p(37,17)=3:x1=37:x2=17
780 IF place=5 THEN p(30,7)=3:x1=30:x2=7
785 IF place=6 THEN p(26,4)=3:x1=26:x2=4
790 IF place=7 THEN p(35,17)=3:x1=35:x2=17
795 IF place=8 THEN p(31,4)=3:x1=31:x2=4
800 IF place=9 THEN p(33,14)=3:x1=33:x2=14
805 IF place=10 THEN p(34,7)=3:x1=34:x2=7
810 IF place=11 THEN p(22,14)=3:x1=22:x2=14
815 IF place=12 THEN p(31,10)=3:x1=31:x2=10
820 LOCATE 1,1:PRINT CHR$(22)+CHR$(1):LOCATE x1,x2:PEN 1:PRINT CHR$(150):PEN 3:LOCATE x1,x2:PRINT CHR$(151):PEN 2:LOCATE x1,x2:PRINT CHR$(152):LOCATE 1,1:PRINT CHR$(22)+CHR$(0)
825 RETURN
830 LOCATE a,b:PRINT b$:LOCATE a,b:PRINT" ":LOCATE a,b:PRINT a$:LOCATE a,b:PEN 1:PRINT CHR$(143):LOCATE a,b:PEN 0:PRINT CHR$(144):PRINT b$:p1=0:p2=0:p3=0:p4=0:p5=0:p6=0:p7=0:p8=0:c1=0:c2=0:c3=0:c4=0:c5=0:c6=0:c7=0:c8=0
835 place=place+1:score=score+5
840 IF place=13 THEN place=1
845 GOSUB 760:GOSUB 745
850 RETURN
855 LOCATE 1,1:PRINT b$:LOCATE a,b:PRINT" ":a=17:b=19:PEN 1:LOCATE a,b:PRINT CHR$(143):p1=0:p2=0:p3=0:p4=0:p5=0:p6=0:p7=0:p8=0:c1=0:c2=0:c3=0:c4=0:c5=0:c6=0:c7=0:c8=0:GOSUB 370
860 GOSUB 740
865 IF vie<=0 THEN mort=1
870 RETURN
875 GOSUB 915
880 IF score>record THEN record=score:score=0
885 PEN 1:LOCATE 24,22:PRINT"  APPUYER "::LOCATE 24,23:PEN 2:PRINT"    SUR   ":PEN 3:LOCATE 24,24:PRINT"  [SPACE] "
890 score=0
895 aa$=INKEY$:IF aa$=""THEN 900
900 IF aa$=" "THEN GOSUB 1015:GOTO 910
905 GOTO 895
910 mort=0:GOTO 165
915 EVERY 90 GOSUB 990
920 EVERY 15,1 GOSUB 955
925 EVERY 30,3 GOSUB 940
930 EVERY 45,2 GOSUB 970
935 RETURN
940 ENV 1,15,-1,1
945 SOUND 2,200,15,15,1,0,1
950 RETURN
955 ENV 1,15,-1,1
960 SOUND 2,284,15,15,1,0,1
965 RETURN
970 ENV 2,15,-1,3
975 SOUND 1,600,45,15,2,0,10
980 SOUND 4,5,45,15,2,0,1
985 RETURN
990 ENV 3,15,-1,5
995 ENT 1,1,-1,1,2,1,1,1,-1,1
1000 SOUND 1,10,45,15,3,1,1
1005 SOUND 4,10,45,15,3,1,1
1010 RETURN
1015 WINDOW#1,1,1,1,1:PEN#1,0:PRINT#1,REMAIN(0):PRINT#1,REMAIN(1):PRINT#1,REMAIN(2):PRINT#1,REMAIN(3)
1020 RETURN