10 ' Micro girl - N.: 7 (OCTOBRE 1989)
20 '
30 ' LES CORONS GANGS
40 '
50 MODE 1:BORDER 0:INK 0,0:INK 1,26:INK 3,6  
60 CALL &BB48:GOSUB 280
70 ' DEBUT
80 BORDER 0:INK 0,0:INK 1,26:INK 3,6
90 FOR FOI=1 TO 3
100 PL=1:DR1=399:DR2=639:PLOT PL,PL,3:DRAW PL,DR1:DRAW DR2,DR1:DRAW DR2,PL:DRAW PL,PL   
110 FOR I=1 TO 200 STEP 4:PLOT PL+I,PL+I:DRAW PL+I,DR1-I:DRAW DR2-I,DR1-I:DRAW DR2-I,PL+I:DRAW PL+I,PL+I,2:NEXT I
120 FOR I=200 TO 190 STEP -2:PLOT PL+I,PL+I,0:DRAW PL+I,DR1-I:DRAW DR2-I,DR1-I:DRAW DR2-I,PL+I:DRAW PL+I,PL+I:NEXT I
130 IF FOI=1 THEN LOCATE 15,13:PRINT CHR$(22)+CHR$(1);"MICRO GIRL 7"
140 IF FOI=2 THEN LOCATE 15,13:PRINT "presente par"
150 IF FOI=3 THEN LOCATE 13,13:PRINT "Les CORONS GANGS"CHR$(22)+CHR$(0)  
160 FOR I=190 TO 1 STEP -2:PLOT PL+I,PL+I,0:DRAW PL+I,DR1-I:DRAW DR2-I,DR1-I:DRAW DR2-I,PL+I:DRAW PL+I,PL+I:NEXT I:NEXT FOI
170 ' AFFICHAGE IMAGE PRESENTATION  
180 MEMORY &1FFF:LOAD"!imagepre.gir":MODE 1:INK 0,10:INK 1,26:INK 2,0:INK 3,6:CALL &2000
190 PAPER 1:PEN 2:LI=1:LO=38:PH1$=" MICRO ":FOR G=1 TO LEN(PH1$):LOCATE LO,LI:PRINT MID$(PH1$,G,1);:LI=LI+1:NEXT G:LI=1:LO=40:PH1$=" GIRL 7 ":FOR G=1 TO LEN(PH1$):LOCATE LO,LI:PRINT MID$(PH1$,G,1);:LI=LI+1:NEXT G:PAPER 0
200 ' MUSIQUE GENERIQUE 
210 GOSUB 400
220 ' SUITE
230 MODE 2:FOR COUL=0 TO 2:INK COUL,2:NEXT COUL:BORDER 2:LOAD"!IMAGEPR2.GIR":INK 0,8:INK 1,0:BORDER 0:CALL &2000
240 POKE &BDEE,&C9:BORDER 0:GOSUB 270
250 CLEAR:RUN"!suite7.gir
260 ' TEST TOUCHES ENFONCEES
270 IF INKEY(47)=0 OR INKEY(76)=0 THEN RETURN ELSE 270
280 '*** CARACTERES FRANCAIS **********
290 SYMBOL AFTER 256:SYMBOL AFTER 64
300 SYMBOL 64,96,48,120,12,124,204,118
310 SYMBOL 91,0,56,108,56,0,0,0,0
320 SYMBOL 92,0,0,60,102,96,102,60,24
330 SYMBOL 93,60,96,60,102,60,6,60,0
340 SYMBOL 124,48,24,102,102,102,102,62,0
350 SYMBOL 125,48,24,60,102,126,96,60,0
360 SYMBOL 126,36,0,0,0,0,0,0,0
370 SYMBOL 94,112,136,112,216,248,192,120,0 ' E accent chinois
380 SYMBOL 95,120,132,120,4,124,132,122,0
390 RETURN
400 ' MUSIQUE    
410 '*********** LA TRUITE **************
420 '********** D'apres SCHUBERT ********
430 ENV 1,2,2,7,1,0,200
440 FOR foi=1 TO 2
450 IF INKEY$<>"" THEN 590        
460 RESTORE 600:FOR K=1 TO 98:IF INKEY$<>"" THEN 590 ELSE READ A,B
470 IF INKEY$<>"" THEN 590
480 IF A=2 THEN V=0 ELSE V=9
490 IF INKEY$<>"" THEN 590 
500 SOUND 4,A,B*3,V,1
510 IF INKEY$<>"" THEN 590
520 SOUND 2,A-1,B*3,V,1
530 IF INKEY$<>"" THEN 590        
540 SOUND 1,A,B*3,V,1
550 IF INKEY$<>"" THEN 590    
560 NEXT K
570 IF INKEY$<>"" THEN 590   
580 NEXT foi
590 RETURN
600 DATA 358,8
610 DATA 268,8,268,8,213,8,213,8,268,16
620 DATA 358,12,358,4,358,16,239,4,268,4
630 DATA 284,4,319,4
640 DATA 358,16,2,8,358,8,268,8,268,8
650 DATA 213,8,213,8,268,16,358,8,268,8
660 DATA 284,8,319,4,284,4,268,8,379,8
670 DATA 358,16,2,8,358,8
680 DATA 284,8,284,8,268,4,284,4,319,4
690 DATA 284,4,268,16,358,8,268,8,284,8
700 DATA 284,8,284,4,201,4,239,4,284,4
710 DATA 268,24,268,8
720 DATA 301,8,301,8,301,8,268,8,268,16
730 DATA 358,12,358,4,358,16,239,8,284,8
740 DATA 268,24,268,8,284,4,319,4,319,8
750 DATA 319,4,268,4,284,4,239,4
760 DATA 268,16,358,12,358,4,358,16
770 DATA 239,8,204,8,268,16,358,4,426,4
780 DATA 402,4,379,4,358,4,213,8,268,8
790 DATA 2,4,536,4,426,4,402,4,379,4
800 DATA 358,4,213,8,268,8,2,10,536,4
810 DATA 426,4,402,4,379,4,358,4,213,8
820 DATA 358,8,268,24