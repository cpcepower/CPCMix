10 INK 0,13:INK 1,0:PEN 1:PAPER 0:BORDER 13    
20 MODE 2
30 PRINT:PRINT"            Salut a tous les bidouilleurs (et aux autres),
40 PRINT:PRINT:PRINT"    Apres vous avoir presente quelques petites      
50 PRINT"    realisations de ma parts:
60 PRINT"        *  ---> la loire                                                                *  ---> russians                                                                *  ---> equinoxe part V            "      
70 PRINT"        *  ---> chants magnetiques II                                                   *  ---> jmj                                                                  ... et j'en passe ,          
80 PRINT:PRINT"    je vous presente maintenant ma nouvelle realisation"
90 PRINT:PRINT"         ****  *** ** * ==> P L A T O O N <== * ** *** ****"
100 PRINT:PRINT" ( pour avoir les musiques, appuyer sur ==> ESPACE <==,puis sur " " S " ")
110 PRINT:PRINT:PRINT"                           Etienne SAUVAGERE"   
120 PRINT:PRINT"                          Et le C.C.O. Belgium"
130 PRINT:PRINT"                                        pressez une touche et ... PATIENTEZ ==>"  
140 CALL &BB06
150 RESTORE
160 MODE 1:INK 0,13:INK 1,0:INK 2,6,24:SPEED INK 4,4
170 LOAD"platoon.scn"
180 a$=INKEY$
190 IF a$=" " THEN GOTO 210
200 GOTO 180
210 RESTORE 300 
220 ENV 3,13,-1,2
230 READ a,b,c
240 IF a=1 OR a=2 OR a=17 OR a=10 THEN q=1:ENV 1,10,-1,10,9,1,10,20,-1,30   
250 a$=INKEY$:IF a$="s" THEN a=0:b=0:c=0:GOTO 890  
260 IF a=4 THEN q=4:ENV 4,10,-1,5      
270 IF a=128 THEN RESTORE 340
280 SOUND a,b,c*0.8,0,q 
290 GOTO 230
300 DATA 33,0,1280,12,478,20,4,478,40,4,478,20,4,239,20,4,478,20,4,478,20,4,239,20,4,478,20,4,478,40,4,478,20,4,239,20,4,478,20,4,478,20,4,239,20
310 DATA 4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20,4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20 
320 DATA 4,602,20,4,602,40,4,602,20,4,301,20,4,602,20,4,602,20,4,301,20,4,602,20,4,602,40,4,602,20,4,301,20,4,602,20,4,602,20,4,301,20 
330 DATA 4,478,20,4,478,40,4,478,20,4,239,20,4,478,20,4,478,20,4,239,20,4,478,20,4,478,40,4,478,20,4,239,20,4,478,20,4,478,20,4,239,20   
340 DATA 33,0,40,12,478,20,4,478,40,1,100,20,1,89,20,4,478,20,1,80,20,1,89,20,4,239,20,4,478,20,1,100,20,1,80,60,4,478,20,4,239,20      
350 DATA 4,478,20,4,478,40,1,100,20,1,89,20,4,478,20,1,80,20,1,89,20,4,239,20,4,478,20,1,100,20,1,80,60,4,478,20,4,239,20  
360 DATA 4,638,20,4,638,40,1,106,20,1,100,20,4,638,20,1,89,20,1,100,20,4,319,20,4,638,20,1,106,20,1,89,60,4,638,20,4,319,20
370 DATA 4,638,20,4,638,40,1,106,20,1,100,20,4,638,20,1,89,20,1,100,20,4,319,20,4,638,20,1,106,20,1,89,60,4,638,20,4,319,20  
380 DATA 4,602,20,4,602,40,1,119,20,1,106,20,4,602,20,1,100,20,1,106,20,4,301,20,4,602,20,1,119,20,1,100,60,4,602,20,4,301,20 
390 DATA 4,602,20,4,602,40,1,119,20,1,106,20,4,602,20,1,100,20,1,106,20,4,301,20,4,602,20,1,119,20,1,100,100,4,602,20,4,301,20  
400 DATA 4,602,20,4,602,40,4,602,20,1,106,20,1,119,60,4,301,20,4,602,20,4,602,20,4,301,20
410 DATA 1,134,160,4,536,20,4,536,40,4,536,20,4,268,20,4,536,20,4,536,20,4,268,20        
420 DATA 4,536,20,4,536,40,1,150,60,4,536,20,4,268,20,1,134,60,4,536,20,4,536,20,1,150,40,4,268,20
430 DATA 1,159,160,4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20
440 DATA 17,127,160,10,159,160,4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20     
450 DATA 1,106,160,2,127,160,4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20   
460 DATA 1,89,160,2,106,160,4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20      
470 DATA 1,75,480,2,89,480,4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20        
480 DATA 4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20 
490 DATA 4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20
500 DATA 1,0,40,4,478,20,4,478,40,1,100,20,1,89,20,4,478,20,1,80,20,1,89,20,4,239,20,4,478,20,1,100,20,1,80,60,4,478,20,4,239,20     
510 DATA 4,478,20,4,478,40,1,100,20,1,89,20,4,478,20,1,80,20,1,89,20,4,239,20,4,478,20,1,100,20,1,80,60,4,478,20,4,239,20  
520 DATA 4,638,20,4,638,40,1,106,20,1,100,20,4,638,20,1,89,20,1,100,20,4,319,20,4,638,20,1,106,20,1,89,60,4,638,20,4,319,20
530 DATA 4,638,20,4,638,40,1,106,20,1,100,20,4,638,20,1,89,20,1,100,20,4,319,20,4,638,20,1,106,20,1,89,60,4,638,20,4,319,20  
540 DATA 4,602,20,4,602,40,1,119,20,1,106,20,4,602,20,1,100,20,1,106,20,4,301,20,4,602,20,1,119,20,1,100,60,4,602,20,4,301,20 
550 DATA 4,602,20,4,602,40,1,119,20,1,106,20,4,602,20,1,100,20,1,106,20,4,301,20,4,602,20,1,119,20,1,100,100,4,602,20,4,301,20  
560 DATA 4,602,20,4,602,40,4,602,20,1,106,20,1,119,60,4,301,20,4,602,20,4,602,20,4,301,20
570 DATA 1,134,160,4,536,20,4,536,40,4,536,20,4,268,20,4,536,20,4,536,20,4,268,20        
580 DATA 4,536,20,4,536,40,1,150,60,4,536,20,4,268,20,1,134,60,4,536,20,4,536,20,1,150,40,4,268,20
590 DATA 1,159,160,4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20
600 DATA 17,127,160,10,159,160,4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20    
610 DATA 1,106,160,2,127,160,4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20      
620 DATA 1,89,160,2,106,160,4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20      
630 DATA 1,75,480,2,89,480,4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20    
640 DATA 4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20
650 DATA 4,638,20,4,638,40,4,638,20,4,319,20,4,638,20,4,638,20,4,319,20   
660 DATA 1,0,40,4,402,20,4,402,40,1,100,20,1,89,20,4,402,20,1,80,20,1,89,20,4,402,20,4,402,20,1,100,20,1,80,60,4,402,20,4,402,20    
670 DATA 4,402,20,4,402,40,1,100,20,1,89,20,4,402,20,1,80,20,1,89,20,4,402,20,4,402,20,1,100,20,1,80,60,4,402,20,4,402,20    
680 DATA 4,536,20,4,536,40,1,106,20,1,100,20,4,536,20,1,89,20,1,100,20,4,536,20,4,536,20,1,106,20,1,89,60,4,536,20,4,536,20   
690 DATA 4,536,20,4,536,40,1,106,20,1,100,20,4,536,20,1,89,20,1,100,20,4,536,20,4,536,20,1,106,20,1,89,60,4,536,20,4,536,20    
700 DATA 4,478,20,4,478,40,1,119,20,1,106,20,4,478,20,1,100,20,1,106,20,4,478,20,4,478,20,1,119,20,1,100,60,4,478,20,4,478,20     
710 DATA 4,478,20,4,478,40,1,119,20,1,106,20,4,478,20,1,100,20,1,106,20,4,478,20,4,478,20,1,119,20,1,100,60,4,478,20,4,478,20   
720 DATA 4,602,20,4,602,40,1,119,20,1,106,20,4,602,20,1,100,20,1,106,20,4,602,20,4,602,20,1,119,20,1,100,60,4,602,20,4,602,20    
730 DATA 4,602,20,4,602,40,1,119,20,1,106,20,4,602,20,1,100,20,1,106,20,4,602,20,4,602,20,1,119,20,1,100,60,4,602,20,4,602,20   
740 DATA 4,716,20,4,716,40,1,119,20,1,106,20,4,716,20,1,100,20,1,106,20,4,716,20,4,716,20,1,119,20,1,100,60,4,716,20,4,716,20     
750 DATA 4,716,20,4,716,40,1,119,20,1,106,20,4,716,20,1,100,20,1,106,20,4,716,20,4,716,20,1,119,20,1,100,60,4,716,20,4,716,20  
760 DATA 4,716,20,4,716,40,1,119,20,1,106,20,4,716,20,1,100,20,1,106,20,4,716,20,4,716,20,1,119,20,1,106,180,4,716,20,4,716,20   
770 DATA 4,638,20,4,638,40,4,638,20,4,638,20,4,638,20,4,638,20,4,638,20 
780 DATA 1,89,60,4,638,20,4,638,40,1,89,60,4,638,20,4,638,20,4,638,20,1,89,60,4,638,20,4,638,20 
790 DATA 4,638,20,1,89,60,4,638,40,4,638,20,1,89,40,4,638,20,4,638,20,1,89,40,4,638,20,4,638,20
800 DATA 17,127,60,10,159,60,4,638,20,4,638,40,1,127,60,2,159,60,4,638,20,4,638,20,4,638,20,1,127,60,2,159,60,4,638,20,4,638,20  
810 DATA 4,638,20,1,127,60,2,159,60,4,638,40,4,638,20,1,127,40,2,159,40,4,638,20,4,638,20,1,127,40,2,159,40,4,638,20,4,638,20    
820 DATA 17,127,60,10,106,60,4,638,20,4,638,40,1,127,60,2,106,60,4,638,20,4,638,20,4,638,20,1,127,60,2,106,60,4,638,20,4,638,20    
830 DATA 4,638,20,1,127,60,2,106,60,4,638,40,4,638,20,1,127,40,2,106,40,4,638,20,4,638,20,1,127,40,2,106,40,4,638,20,4,638,20    
840 DATA 17,89,60,10,106,60,4,638,20,4,638,40,1,89,60,2,106,60,4,638,20,4,638,20,4,638,20,1,89,60,2,106,60,4,638,20,4,638,20      
850 DATA 4,638,20,1,89,60,2,106,60,4,638,40,4,638,20,1,89,40,2,106,40,4,638,20,4,638,20,1,89,40,2,106,40,4,638,20,4,638,20    
860 DATA 17,89,60,10,75,60,4,638,20,4,638,40,1,89,60,2,75,60,4,638,20,4,638,20,4,638,20,1,89,60,2,75,60,4,638,20,4,638,20      
870 DATA 4,638,20,1,89,60,2,75,60,4,638,40,4,638,20,1,89,40,2,75,40,4,638,20,4,638,20,1,89,40,2,75,40,4,638,20,4,638,20       
880 DATA 128,0,0   
890 RESTORE 970
900 READ a,b,c
910 IF a=1 OR a=4 THEN q=1:ENV 1,10,-1,10,9,1,10,20,-1,30  
920 a$=INKEY$:IF a$="s" THEN a=0:b=0:c=0:GOTO 210   
930 IF a=2 THEN q=2:ENV 2,10,-1,5
940 IF a=128 THEN RESTORE 990     
950 SOUND a,b,c*0.85,0,q        
960 GOTO 900
970 DATA 49,0,640,28,0,640,42,638,20,2,319,20,2,638,20,2,638,20,2,319,20,2,638,20,2,319,20,2,638,20,2,638,20,2,319,20,2,638,20,2,638,20,2,319,20,2,638,20,2,638,20,2,319,20   
980 DATA 2,638,20,2,319,20,2,638,20,2,638,20,2,319,20,2,638,20,2,319,20,2,638,20,2,638,20,2,319,20,2,638,20,2,638,20,2,319,20,2,638,20,2,638,20,2,319,20   
990 DATA 1,0,40,4,0,40,2,638,20,2,319,20,2,638,20,2,638,20,1,106,20,4,127,20,1,119,40,4,142,40,1,106,20,4,127,20,2,319,20,2,638,20,2,319,20,2,638,20,1,119,40,4,142,40,1,106,20,4,127,20,1,119,40,4,142,40,2,638,20,2,319,20,2,638,20,2,638,20,2,319,20,1,127 
1000 DATA 60,4,159,60,1,142,360,4,179,360,2,638,20,2,716,20  
1010 DATA 2,358,20,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20      
1020 DATA 1,0,40,4,0,40,2,716,20,2,358,20,2,716,20,2,716,20,1,119,20,4,142,20,1,127,40,4,159,40,1,119,20,4,142,20,2,358,20,2,716,20,2,358,20,2,716,20,1,127,40,4,159,40,1,119,20,4,142,20,1,127,40,4,159,40,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20,1,142  
1030 DATA 60,4,179,60,1,159,360,4,190,360,2,716,20,2,956,20   
1040 DATA 2,478,20,2,956,20,2,478,20,2,956,20,2,956,20,2,478,20,2,956,20,2,478,20,2,956,20,2,956,20,2,478,20,2,956,20,2,956,20,2,478,20,2,956,20,2,956,20,2,478,20         
1050 DATA 1,0,40,4,0,40,2,638,20,2,319,20,2,638,20,2,638,20,1,106,20,4,127,20,1,119,40,4,142,40,1,106,20,4,127,20,2,319,20,2,638,20,2,319,20,2,638,20,1,119,40,4,142,40,1,106,20,4,127,20,1,119,40,4,142,40,2,638,20,2,319,20,2,638,20,2,638,20,2,319,20,1,127 
1060 DATA 60,4,159,60,1,142,360,4,179,360,2,638,20,2,716,20  
1070 DATA 2,358,20,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20      
1080 DATA 1,0,40,4,0,40,2,716,20,2,358,20,2,716,20,2,716,20,1,119,20,4,142,20,1,127,40,4,159,40,1,119,20,4,142,20,2,358,20,2,716,20,2,358,20,2,716,20,1,127,40,4,159,40,1,119,20,4,142,20,1,127,40,4,159,40,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20,1,142  
1090 DATA 60,4,179,60,1,159,360,4,190,360,2,716,20,2,956,20    
1100 DATA 2,478,20,2,956,20,2,478,20,2,956,20,2,956,20,2,478,20,2,956,20,2,478,20,2,956,20,2,956,20,2,478,20,2,956,20,2,956,20,2,478,20,2,956,20,2,956,20,2,478,20          
1110 DATA 1,0,40,4,0,40,2,478,20,2,956,20,2,956,20,2,956,20,1,190,40,4,239,40,2,478,20,2,956,20,2,956,20,2,956,20,1,190,20,4,239,20,1,179,40,4,213,40,1,179,20,4,213,20,2,478,20,2,956,20,2,956,20,2,956,20,1,159,40,4,190,40,1,159,20,4,190,20,1,142,40
1120 DATA 4,179,40,2,478,20,2,956,20,2,956,20,2,956,20,1,142,20,4,179,20,1,159,40,4,190,40
1130 DATA 2,319,20,2,638,20,2,638,20,2,638,20,1,159,20,4,190,20,1,127,40,4,159,40,1,127,20,4,159,20,2,319,20,2,638,20,2,638,20,2,638,20,1,127,40,4,159,40,1,127,20,4,159,20,1,142,40 
1140 DATA 4,179,40,2,319,20,2,638,20,2,638,20,2,638,20,1,142,20,4,179,20,1,159,40,4,190,40 
1150 DATA 2,319,20,2,638,20,2,638,20,2,638,20,1,159,20,4,190,20,1,179,40,4,213,40,1,179,20,4,213,20,2,319,20,2,638,20,2,638,20,2,638,20,1,179,40,4,213,40,1,179,20,4,213,20,1,159,40      
1160 DATA 4,190,40,2,319,20,2,638,20,2,638,20,2,638,20,1,159,20,4,190,20,1,179,40,4,213,40
1170 DATA 2,478,20,2,956,20,2,956,20,2,956,20,1,179,20,4,213,20,1,190,40,4,239,40,1,190,20,4,239,20,2,478,20,2,956,20,2,956,20,2,956,20,1,190,40,4,239,40,1,190,20,4,239,20,1,190,180
1180 DATA 4,239,180,2,478,20,2,956,20,2,956,20,2,956,20,2,478,20,2,956,20,2,956,20,2,956,20   
1190 DATA 1,0,40,4,0,40,2,638,20,2,319,20,2,638,20,2,638,20,1,106,20,4,127,20,1,119,40,4,142,40,1,106,20,4,127,20,2,319,20,2,638,20,2,319,20,2,638,20,1,119,40,4,142,40,1,106,20,4,127,20,1,119,40,4,142,40,2,638,20,2,319,20,2,638,20,2,638,20,2,319,20,1,127 
1200 DATA 60,4,159,60,1,142,360,4,179,360,2,638,20,2,716,20  
1210 DATA 2,358,20,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20      
1220 DATA 1,0,40,4,0,40,2,716,20,2,358,20,2,716,20,2,716,20,1,119,20,4,142,20,1,127,40,4,159,40,1,119,20,4,142,20,2,358,20,2,716,20,2,358,20,2,716,20,1,127,40,4,159,40,1,119,20,4,142,20,1,127,40,4,159,40,2,716,20,2,358,20,2,716,20,2,716,20,2,358,20,1,142  
1230 DATA 60,4,179,60,1,159,360,4,190,360,2,716,20,2,956,20    
1240 DATA 2,478,20,2,956,20,2,478,20,2,956,20,2,956,20,2,478,20,2,956,20,2,478,20,2,956,20,2,956,20,2,478,20,2,956,20,2,956,20,2,478,20,2,956,20,2,956,20,2,478,20          
1250 DATA 1,0,40,4,0,40,2,478,20,2,956,20,2,956,20,2,956,20,1,190,40,4,239,40,2,478,20,2,956,20,2,956,20,2,956,20,1,190,20,4,239,20,1,179,40,4,213,40,1,179,20,4,213,20,2,478,20,2,956,20,2,956,20,2,956,20,1,159,40,4,190,40,1,159,20,4,190,20,1,142,40
1260 DATA 4,179,40,2,478,20,2,956,20,2,956,20,2,956,20,1,142,20,4,179,20,1,159,40,4,190,40
1270 DATA 2,319,20,2,638,20,2,638,20,2,638,20,1,159,20,4,190,20,1,127,40,4,159,40,1,127,20,4,159,20,2,319,20,2,638,20,2,638,20,2,638,20,1,127,40,4,159,40,1,127,20,4,159,20,1,142,40 
1280 DATA 4,179,40,2,319,20,2,638,20,2,638,20,2,638,20,1,142,20,4,179,20,1,159,40,4,190,40 
1290 DATA 2,319,20,2,638,20,2,638,20,2,638,20,1,159,20,4,190,20,1,179,40,4,213,40,1,179,20,4,213,20,2,319,20,2,638,20,2,638,20,2,638,20,1,179,40,4,213,40,1,179,20,4,213,20,1,159,40      
1300 DATA 4,190,40,2,319,20,2,638,20,2,638,20,2,638,20,1,159,20,4,190,20,1,179,40,4,213,40
1310 DATA 2,478,20,2,956,20,2,956,20,2,956,20,1,179,20,4,213,20,1,190,40,4,239,40,1,190,20,4,239,20,2,478,20,2,956,20,2,956,20,2,956,20,1,190,40,4,239,40,1,190,20,4,239,20,1,190,340     
1320 DATA 4,239,340,2,478,20,2,956,20,2,956,20,2,956,20,2,478,20,2,956,20,2,956,20,2,956,20    
1330 DATA 2,956,20,2,956,20,2,478,20,2,478,20,2,956,20,2,956,20,2,478,20,2,478,20    
1340 DATA 2,956,20,2,956,20,1,159,60,4,134,60,2,478,20,2,478,20,1,179,60,4,142,60,2,956,20,2,956,20,1,190,80,4,159,80,2,478,20,2,478,20,2,956,20,2,956,20,2,478,20,2,478,20,1,213,20,4,179,20,1,190,20,4,159,20,1,0,40,4,0,40,2,956,20,2,956,20,2,478,20,2,478
1350 DATA 20,2,478,20,1,134,60,4,159,60,2,956,20,2,956
1360 DATA 20,1,179,60,4,142,60,2,478,20,2,478,20,1,159,180,4,190,180,2,956,20,2,956,20,2,478,20,2,478,20,2,956,20,2,956,20,2,478,20,2,478,20
1370 DATA 2,956,20,2,956,20,1,159,60,4,134,60,2,478,20,2,478,20,1,179,60,4,142,60,2,956,20,2,956,20,1,190,80,4,159,80,2,478,20,2,478,20,2,956,20,2,956,20,2,478,20,2,478,20,1,213,20,4,179,20,1,190,20,4,159,20,1,0,40,4,0,40,2,956,20,2,956,20,2,478,20,2,478 
1380 DATA 20,2,478,20,1,134,60,4,159,60,2,956,20,2,956    
1390 DATA 20,1,179,60,4,142,60,2,478,20,2,478,20,1,159,180,4,190,180,2,956,20,2,956,20,2,478,20,2,478,20,2,956,20,2,956,20,2,478,20,2,478,20 
1400 DATA 2,716,20,2,716,20,1,159,60,4,134,60,2,358,20,2,358,20,1,142,60,4,179,60,2,716,20,2,716,20,2,358,20,2,358,20,1,142,60,4,119,60,1,159,60,4,134,60,2,716,20,2,716,20,2,358,20,2,358,20,1,134,60,4,106,60,2,716,20,2,716,20,1,142,60,4,119,60,2,358,20
1410 DATA 2,358,20,2,716,20,2,716,20,1,179,120,4,142,120,2,358,20,2,358,20,2,716,20,2,716,20,2,358,20,2,358,20
1420 DATA 2,716,20,2,716,20,1,159,60,4,134,60,2,358,20,2,358,20,1,142,60,4,179,60,2,716,20,2,716,20,2,358,20,2,358,20,1,142,60,4,119,60,1,159,60,4,134,60,2,716,20,2,716,20,2,358,20,2,358,20,1,134,60,4,106,60,2,716,20,2,716,20,1,142,60,4,119,60,2,358,20    
1430 DATA 2,358,20,2,716,20,2,716,20,1,179,60,4,142,60,2,358,20,2,358,20,2,716,20,2,716,20,1,159,60,4,190,60,2,358,20,2,358,20       
1440 DATA 2,956,20,2,956,20,1,159,60,4,134,60,2,478,20,2,478,20,1,179,60,4,142,60,2,956,20,2,956,20,1,190,80,4,159,80,2,478,20,2,478,20,2,956,20,2,956,20,2,478,20,2,478,20,1,213,20,4,179,20,1,190,20,4,159,20,1,0,40,4,0,40,2,956,20,2,956,20,2,478,20,2,478  
1450 DATA 20,2,478,20,1,134,60,4,159,60,2,956,20,2,956   
1460 DATA 20,1,179,60,4,142,60,2,478,20,2,478,20,1,159,180,4,190,180,2,956,20,2,956,20,2,478,20,2,478,20,2,956,20,2,956,20,2,478,20,2,478,20   
1470 DATA 128,0,0   