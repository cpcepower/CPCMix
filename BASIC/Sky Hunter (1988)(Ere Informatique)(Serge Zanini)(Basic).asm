10 REM * SKYHUNTER COPYRIGHT 1988 ERE INTERNATIONAL *
20 POKE &BDEE,&C9:MODE 0:INK 0,0:BORDER 0:FOR T=1 TO 15:READ I:INK T,I:NEXT
30 SYMBOL AFTER 230
40 FOR T=230 TO 255
50 READ A,B,C,D,E,F,G,H
60 SYMBOL T,A,B,C,D,E,F,G,H
70 NEXT
80 DATA 13,26,12,24,25,9,18,14,1,2,11,16,15,6,3
90 DATA 0,64,160,160,224,160,160,0,0,192,160,192,160,160,192,0,0,224,160,128,128,160,224,0,0,192,160,160,160,160,192,0,0,224,128,192,128,128,224,0,0,224
100 DATA 128,192,128,128,128,0,0,224,128,128,160,160,224,0,0,160,160,224,160,160,160,0,0,224,64,64,64,64,224,0,0,32,32,32,160,160,224,0,0,160,160,192,160,160
110 DATA 160,0,0,128,128,128,128,128,224,0,0,160,224,160,160,160,160,0,0,224,160,160,160,160,160,0,0,224,160,160,160,160,224,0,0,224,160,160,224,128,128,0
120 DATA 0,224,160,160,160,224,224,32,0,224,160,160,192,160,160,0,0,224,128,224,32,32,224,0,0,224,64,64,64,64,64,0,0,160,160,160,160,160,224,0,0,160,160,160
130 DATA 160,64,64,0,0,160,160,160,160,224,160,0,0,160,160,64,64,160,160,0,0,160,160,160,64,64,64,0,0,224,32,64,64,128,224,0
140 DATA 33,159,1,205,212,188,48,37,34,160,1,121,50,162,1,30,0,22,2,14,193,33,0,144,223,160,1,17,0,2,25,30,0,22,2,14,194,223,160,1,201,132,1,2,3,199
150 FOR T=1 TO 46:READ A:POKE &175+T,A:NEXT:CALL &176
160 CALL &9101
170 CALL &9000:EVERY 14,1 GOSUB 810
180 ENV 1,12,1,5:ENT 1,100,5,2:SOUND 1,10,200,0,1,1
190 VV=1:AA=1:BB=1:F=1:A=15:READ L:ENV 1,15,1,8,100,0,1,15,-1,13:ENT -1,8,3,1,8,-3,1:SOUND 1,L,400,15,1,1:SOUND 2+16,L*2,400,15,1,1:SOUND 4+32,L/2,400,15,1,1
200 ENV 7,3,5,1,2,-1,1:ENV 2,1,15,1,1,0,3,1,-2,1:ENV 3,1,15,5,1,-5,5,10,-1,19:ENV 4,2,-2,7,2,-2,1:FOR P=1 TO 4:RESTORE 300:FOR QQ=0 TO 15:READ L,V
210 SOUND 1,L,12,0,2
220 NEXT QQ,P
230 FOR P=1 TO 2:RESTORE 300:FOR QQ=0 TO 15:READ L,V
240 IF V=1 THEN A=12 ELSE A=15
250 SOUND 1,L,12,0,2:SOUND 2+16,0,12,A,3,,V:IF V=31 OR V=8 THEN A=15
260 IF BB=2 THEN 280 ELSE 270
270 NEXT QQ,P
280 IF AA=1 THEN 310
290 RETURN
300 DATA 638,1,638,1,319,1,319,1,638,31,638,1,319,1,319,1,638,1,638,1,426,1,426,1,358,31,379,1,426,1,506,1
310 RESTORE 340:FOR G=1 TO 32:READ I,Z,B:IF Z=1 THEN SS=12 ELSE SS=13
320 SOUND 1,I,12,15,2:SOUND 2+16,0,12,SS,3,,Z:SOUND 4+32,B,12,0,7
330 NEXT
340 DATA 638,1,0,638,1,0,319,1,119,319,1,0,638,31,106,638,1,0,319,1,119,319,1,0,638,1,127,638,1,0,426,1,159,426,1,0,358,31,127,379,1,0,426,1,159,506,1,0
350 DATA 638,1,95,638,1,106,319,1,89,319,1,106,638,31,0,638,1,0,319,1,0,319,1,0,638,1,0,638,1,0,426,1,0,426,1,0,358,31,0,379,1,0,426,1,0,506,1,0
360 BB=2:AA=2:RESTORE 370:FOR QQ=0 TO 15:READ L,V:GOSUB 240:NEXT QQ
370 DATA 638,1,638,1,319,1,319,1,638,31,638,1,319,1,319,1,638,31,638,31,426,1,426,31,358,1,379,31,426,31,506,31
380 S=1:F=1:AA=2:BB=2:RESTORE 530:FOR QQ=0 TO 15:READ L,V:GOSUB 240:NEXT QQ:F=F+1:IF F=2 THEN 390 ELSE 380
390 MD=1:FOR T=1 TO 420:NEXT
400 FOR BB=1 TO 3:K=1:GOTO 500
410 S=S+1:RESTORE 540:FOR G=1 TO 16:READ I,Z,B
420 IF Z=1 THEN SS=12 ELSE SS=13
430 ENV 5,4,0,1,10,-1,1:SOUND 1,I/TT/VV,12,0,7:SOUND 2+16,0,12,SS,5,,Z:SOUND 4+32,B/Q/VV,12,14,2
440 IF X=2 THEN RETURN
450 NEXT:IF K=2 AND KK=2 AND BB=2 THEN RETURN
460 IF BB=3 AND TT=0.891791045 THEN 550
470 K=K+1:IF K=1 THEN 500 ELSE IF K=2 THEN 510 ELSE IF K=3 THEN 520
480 IF W=2 THEN RETURN
490 IF K=4 THEN NEXT BB
500 TT=1:Q=1:GOTO 410
510 TT=1.18905473:Q=1.18905473:GOTO 410
520 TT=0.891791045:Q=0.891791045:GOTO 410
530 DATA 638,10,638,31,319,1,319,1,638,10,638,31,319,1,319,31,638,10,638,31,426,1,426,31,358,31,379,10,426,10,506,31
540 DATA 638,31,159,638,1,0,319,1,106,319,1,0,638,8,119,638,1,0,319,1,106,319,1,159,638,31,0,638,1,159,426,1,0,426,1,106,358,8,119,379,1,0,426,1,106,506,1,0
550 X=2:W=2:RESTORE 560:FOR G=1 TO 16:READ I,Z,B:GOSUB 420:NEXT G
560 DATA 638,31,159,638,1,0,319,1,106,319,1,0,638,8,119,638,1,0,319,1,106,319,1,159,638,31,0,638,1,159,426,1,127,426,1,0,358,8,119,379,1,0,426,1,106,506,1,0
570 T=1:FOR B0=1 TO 2:T0=2:TT=1:Q=1:X=2:W=2:GOSUB 630:GOSUB 640:TT=1.19029851:GOSUB 630:GOSUB 660:TT=0.891061453:Q=0.888268157:GOSUB 650:GOSUB 640:GOSUB 650:GOSUB 660:NEXT B0:KK=2:GOTO 670
580 FOR G=1 TO 8:READ I,Z,B:GOSUB 420:NEXT G:RETURN:TT=1.19029:RESTORE 620:FOR G=1 TO 16:READ I,Z,B:GOSUB 420:NEXT G:TT=0.89106157:RESTORE 590:FOR G=1 TO 16:READ I,Z,B:GOSUB 420:NEXT G
590 DATA 638,31,106,638,1,0,319,1,119,319,1,0,638,8,119,638,1,0,319,1,134,319,1,0
600 DATA 638,31,119,638,1,0,426,1,106,426,1,159,358,8,0,379,1,159,426,1,0,506,1,159
610 DATA 638,31,106,638,1,0,319,1,119,319,1,0,638,8,119,638,1,0,319,1,127,319,1,0
620 DATA 638,31,119,638,1,0,426,1,0,426,1,106,358,8,0,379,1,0,426,1,0,506,1,0
630 RESTORE 590:GOTO 580
640 RESTORE 600:GOTO 580
650 RESTORE 610:GOTO 580
660 RESTORE 620:GOTO 580
670 KK=2:X=1:GOSUB 400:FOR NN=1 TO 2:TT=1:Q=1:X=2:W=2:RESTORE 690:GOSUB 680:TT=1.19029851:RESTORE 690:GOSUB 680:RESTORE 700:TT=0.891061453:GOSUB 680:RESTORE 710:NEXT NN:GOTO 720
680 X=2:FOR G=1 TO 16:READ I,Z,B:GOSUB 420:NEXT G:RETURN
690 DATA 638,8,67,638,1,0,319,1,71,319,15,0,638,31,80,638,31,0,319,1,89,319,31,80,638,8,0,638,1,0,426,1,213,426,31,179,358,8,159,379,12,179,426,1,213,506,31,0
700 DATA 638,31,67,638,1,0,319,1,71,319,1,0,638,8,80,638,1,0,319,1,89,319,31,119,638,8,0,638,11,0,426,14,0,426,17,0,358,21,0,379,24,0,426,27,0,506,31,0
710 DATA 638,31,179,638,31,0,319,1,119,319,31,0,638,8,134,638,1,142,319,15,134,319,1,179,638,31,0,638,31,179,426,1,0,426,31,179,358,8,119,379,31,0,426,1,119,506,31,0
720 FOR NN=1 TO 2:TT=1:Q=1:X=2:W=2:RESTORE 740:GOSUB 730:RESTORE 740:TT=1.19029851:GOSUB 730:FOR N=1 TO 2:RESTORE 750:TT=0.891061145:GOSUB 730:NEXT N:NEXT NN:W=1:KK=2:X=1:GOSUB 400:GOTO 760
730 FOR G=1 TO 16:READ I,Z,B:GOSUB 420:NEXT G:RETURN
740 DATA 638,31,80,638,1,0,319,1,106,319,1,89,638,8,80,638,1,89,319,1,106,319,1,80,638,31,0,638,1,0,426,1,142,426,1,0,358,8,134,379,31,0,426,31,119,506,8,0
750 DATA 638,31,179,638,1,0,319,1,119,319,1,0,638,8,134,638,1,0,319,1,119,319,1,179,638,31,0,638,1,0,426,5,142,426,8,0,358,13,134,379,19,0,426,25,119,506,31,0
760 KK=0:MD=MD+1:IF MD=4 THEN MD=1
770 ON MD GOTO 780,790,800
780 VV=1:GOTO 550
790 VV=1.87:GOTO 550
800 VV=0.82:GOTO 550
810 IF PEEK(&90BA)<>0 THEN 820 ELSE IF INKEY$<>"" THEN 830
820 CALL &904E:RETURN
830 CALL &BCA7:CALL &90C9
840 ENT -1,10,-20,1,10,20,1:ENT 2,20,-10,1:ENT -3,10,1,1,10,-1,1:ENT -4,5,10,1,5,-10,1:ENT 5,5,0,1,1,-30,1,4,0,1:ENT 6,75,-6,1:ENT -7,1,20,1,1,-21,1:ENT -8,10,100,1,10,-100,1:ENT 9,10,-5,1
850 ENT 10,10,12,1:ENT -11,5,9,1,5,-20,1:ENT 12,10,1,1:ENT 13,10,-120,1:ENT 14,10,90,1:ENT -15,1,10,1
860 ENV 1,15,-1,10:ENV 2,1,0,100,15,-1,20:ENV 3,3,5,2,3,-5,1,1,0,1:ENV 4,100,5,3:ENV 5,15,-1,5:ENV 6,100,0,2,10,-1,10:ENV 7,15,-1,3:ENV 8,15,1,1,10,0,1,15,-1,4
870 CALL &9162