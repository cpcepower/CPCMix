0 POKE &BDEE,201
10 SYMBOL AFTER 123:MODE 0:CLEAR:TROFF:DEFINT A-Z:DIM P(15),B(7):BORDER 0:FOR I=0 TO 15:READ P(I):INK I,0:NEXT:LOAD"RAINBOW",&C000:FOR I=0 TO 15:INK I,P(I):NEXT
20 DIM v1(1,23),v2(1,29),v3(1,23),vv1(1,50),vv2(1,50),vv3(1,50)
30 FOR m=0 TO 1:FOR n=1 TO 23:READ v1(m,n):NEXT N,M:FOR m=0 TO 1:FOR n=1 TO 29:READ v2(m,n):NEXT N,M:FOR n=1 TO 23:READ v3(0,n):NEXT
40 DATA 0,13,26,11,24,20,18,15,23,1,2,16,4,7,14,6
50 DATA 179,150,179,179,134,179,201,179,119,179,179,113,119,150,179,119,89,179,201,201,239,159,179,56,40,24,12,24,24,24,56,40,24,12,24,24,24,24,24,24,12,24,12,24,24,72,716,716,804,716,804,956,804,716,716,0,716,956,804,716,902,0,902,804,0,804,956,804,716
60 DATA 716,478,536,602,638,716,56,40,24,12,24,24,24,56,40,24,24,12,24,24,24,24,24,24,12,24,12,24,24,72 90,12,24,24,24,24,358,301,358,358,268,358,402,358,239,358,358,225,239,301,358,239,179,358,402,402,478,319,358
70 FOR I=0 TO 19:Q$=INKEY$:NEXT
80 EVERY 200 GOSUB 960
90 ENV 1,8,1,1,6,-1,3:ENV 2,8,-1,7
100 ENV 3,6,-1,2:ENT 2,4,-1,6,8,1,6,8,-1,6,8,1,6,4,-1,6
110 GOSUB 640
120 GOSUB 540
130 k=0
140 FOR n=1 TO 23
150 SOUND 4,v3(0,n),v1(1,n),4
160 SOUND 1,v1(0,n),v1(1,n),7,1
170 WHILE SQ(4)>127:WEND  
180 NEXT
190 GOSUB 570
200 GOSUB 400
210 FOR l=1 TO 3 
220 FOR n=1 TO 23
230 IF v2(0,n)=0 THEN e1=0 AND e2=0:GOTO 250    
240  e1=2:e2=2      
250 WHILE SQ(4)>127:WEND   
260 SOUND 4,v3(0,n),v1(1,n),4
270 SOUND 1,v1(0,n),v1(1,n),7,1  
280 SOUND 2,v2(0,n),v2(1,n),0,e1,e2 
290 NEXT
300 IF k=200 THEN GOTO 350  
310 GOSUB 570
320 GOSUB 400
330 IF k=300 THEN GOTO 350  
340 NEXT
350 ENV 15,8,-1,6
360 FOR n=1 TO 1250:NEXT 
370 SOUND 2,1,48,15,15,0,5:SOUND 1,0,48,0:SOUND 4,0,48,0
380 FOR n=1 TO 5:SOUND 2,vv2(0,n),vv2(1,n),0,2,2:NEXT
390 GOTO 770
400 z=25    
410 k=k+100  
420 SOUND 2,v2(0,25),v2(1,25),0,2,2
430 FOR n=7 TO 1 STEP -1
440 z=z+1   
450 IF n=1 THEN GOTO 520
460 SOUND 2,v2(0,z),v2(1,z),0,2,2 
470 SOUND 4,10,5,n,0,0,5       
480 FOR u=1 TO 200:NEXT
490 SOUND 1,10,5,n,0,0,5  
500 n=n-1
510 FOR u=1 TO 200:NEXT
520 NEXT
530 RETURN
540 FOR n=478 TO 179 STEP -13
550 SOUND 1,n,5,6:SOUND 2,n+5,5,6:SOUND 4,n+10,5,5:NEXT
560 RETURN
570 FOR u=6 TO 4 STEP -2   
580 z=50  
590 FOR n=31 TO 1 STEP -3     
600 SOUND 1,1,4,u,0,0,n   
610 FOR x=1 TO z:NEXT
620 z=z-10    
630 NEXT n,U:RETURN
640 FOR m=0 TO 1:FOR n=1 TO 40:READ vv1(m,n):NEXT n,M
650 FOR m=0 TO 1:FOR n=1 TO 45:READ vv2(m,n):NEXT n,M
660 FOR m=0 TO 1:FOR n=1 TO 40:READ vv3(m,n):NEXT n,M
670 DATA 75,0,0,75,0,0,75,75,75,75,75,0,0,75,0,0,75,75,75,75,75,0,0,75,0,0,75,75,75,75,75,0,0,75,0,0,75,75,75,75
680 DATA 12,12,12,24,24,12,24,24,24,24,12,12,12,24,24,12,24,24,24,24,12,12,12,24,24,12,24,24,24,24,12,12,12,24,24,12,24,24,24,24
690 DATA 716,716,676,638,602
700 DATA 602,0,0,602,0,602,0,716,716,716,676,0,0,676,0,676,0,804,804,804,602,0,0,602,0,602,0,716,716,716,676,0,0,676,0,676,0,804,804,804
710 DATA 13,26,13,26,26
720 DATA 12,12,12,24,24,12,24,24,24,24,12,12,12,24,24,12,24,24,24,24,12,12,12,24,24,12,24,24,24,24,12,12,12,24,24,12,24,24,24,24 
730 DATA 100,119,134,150,134,119,100,119,134,150,100,119,134,150,134,119,100,119,134,150,100,119,134,150,134,119,100,119,134,150,100,119,134,150,134,119,100,119,134,150  
740 DATA 12,12,12,24,24,12,24,24,24,24,12,12,12,24,24,12,24,24,24,24,12,12,12,24,24,12,24,24,24,24,12,12,12,24,24,12,24,24,24,24
750 RETURN
760 GOSUB 940
770 j=6
780 FOR n=1 TO 40  
790 WHILE SQ(2)>127:WEND
800 SOUND 1,vv3(0,n),vv3(1,n),5,1
810 SOUND 4,vv1(0,n),vv1(1,n),5,1
820 IF vv2(0,j)=0 THEN SOUND 2,0,vv2(1,j),0:GOTO 840
830 SOUND 2,vv2(0,j),vv2(1,j),0,2,2
840 j=j+1
850 NEXT
860 FOR n=7 TO 0 STEP -1
870 SOUND 4,1,10,n,0,0,5
880 FOR k=1 TO 250:NEXT
890 SOUND 1,1,10,n,0,0,5 
900 FOR k=1 TO 250:NEXT
910 NEXT
920 FOR n=1 TO 100:NEXT
930 GOTO 130
940 FOR n=1 TO 5:SOUND 1,vv2(0,n),vv2(1,n),0,2,2:SOUND 4,0,vv2(1,n),0:NEXT
950 RETURN
960 Q$=INKEY$:IF Q$=""THEN RETURN
970 MEMORY &6A00-1:LOAD"arcade",&6A00:LOAD"MOMACHE",&9300:POKE &932F,0:POKE &9330,&76:LOAD"VOIE",&6B00:LOAD"WARCADE",&9420:LOAD"PWARRIOR",&9C19
980 DATA 01030509112F0909,0080C0E0F0F8E0E0,050505050DF9FFFE,0000040C1F3F7FFF,C0C0C0C0E1FFFFFF,00004060F0F8FCFE,4424170C04000000,03F90D0505050509,80BEE1C0C0C0C0E0,4448D06040000000,093F110905030100,E0F8F0E0C0800000,0000030408080912,0000E0100808C824
990 DATA 12121213151A1F00,242424E454ACFC00,0000070A12121A2A,0000C0A09090B0A8,3A2A3A2A3E2A3F00,A8F8B8A8A8A8F800,01013931303F2E2E,E0C0E0703C101000,2B2B2B2B2B2B3F00,E0C0407C7868F800,00003930303F2E2E,4040E0743C1C3C00,2B2B2B2B2B2B3F00
1000 DATA E0C0407C7868F800
1010 FOR I=123 TO 150:READ A$:FOR J=1 TO 16 STEP 2:B((J-1)/2)=VAL("&"+MID$(A$,J,2)):NEXT:SYMBOL I,B(0),B(1),B(2),B(3),B(4),B(5),B(6),B(7):NEXT
1020 POKE &9BDB,1:POKE &9BDB+1,0:POKE &9BDB+2,0:POKE &9BDB+3,1:POKE &9BDB+4,0:POKE &9BDB+5,1:POKE &9BDB+6,15:POKE &9BDB+7,5:POKE &9BDB+8,0
1030 POKE &9BE4,2:POKE &9BE4+1,0:POKE &9BE4+2,0:POKE &9BE4+3,1:POKE &9BE4+4,0:POKE &9BE4+5,31:POKE &9BE4+6,15:POKE &9BE4+7,5:POKE &9BE4+8,0
1040 POKE &9BF6,4:POKE &9BF6+1,0:POKE &9BF6+2,0:POKE &9BF6+3,110:POKE &9BF6+4,0:POKE &9BF6+5,1:POKE &9BF6+6,15:POKE &9BF6+7,5:POKE &9BF6+8,0
1050 POKE &9BED,4:POKE &9BED+1,0:POKE &9BED+2,1:POKE &9BED+3,25:POKE &9BED+4,0:POKE &9BED+5,0:POKE &9BED+6,15:POKE &9BED+7,100:POKE &9BED+8,0
1060 RUN"war500