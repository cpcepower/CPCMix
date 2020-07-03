10 REM  :::::::::::::::::::::::
20 REM  :                     : 
30 REM  :  CLAUDE LE MOULLEC  :
40 REM  :                     : 
50 REM  :    83 RUE J CURIE   : 
60 REM  :                     :
70 REM  :    22420 PLOUARET   :
80 REM  :                     : 
90 REM  :   TEL  96 38 94 24  :
100 REM :                     : 
110 REM :::::::::::::::::::::::  
120 SYMBOL AFTER 230
130 SYMBOL 231,0,138,142,138,138,138,234,0 
140 SYMBOL 232,0,224,128,128,128,128,224,0  
150 SYMBOL 233,0,238,138,138,234,42,238,0
160 SYMBOL 234,0,238,132,132,196,132,132,0 
170 SYMBOL 235,0,174,170,170,174,234,170,0 
180 SYMBOL 236,0,238,168,232,204,168,174,0  
190 MEMORY &7FFF
200 LOAD "EMPIBIN",&9C10
210 GOSUB 3070:REM PRESENTATION/EXPLICATIONS
220 REM :::::::::::::::::::::::
230 REM :                     :  
240 REM :  VARIABLES DE BASE  :
250 REM :                     : 
260 REM :::::::::::::::::::::::
270 DEFINT a-z:MODE 1 
280 BORDER 0:INK 0,0:INK 1,6:INK 2,2:INK 3,19   
290 DEF FN po(x,y)=&D000+(y-1)*80+(x-1)*2   
300 DIM sp(15):FOR h=0 TO 11:sp(h+1)=&9C10+(h*84):NEXT   
310 TR$=CHR$(22)+CHR$(1):NR$=CHR$(22)+CHR$(0)  
320 DIM je(17,17):dp1=INT(RND*4)+1  
330 temps=360:tp=temps:WINDOW #1,9,32,1,23
340 ENV 1,15,-1,1:ENT 2,200,20,5
350 DATA 10,11,12,13,14,26,27,28,29,30,30,29,28,27,26,14,13,12,11,10
360 DATA 5,4,3,2,1,1,2,3,4,5,17,18,19,20,21,21,20,19,18,17
370 DATA 1,2,3,4,5,5,4,3,2,1,5,4,3,2,1,1,2,3,4,5
380 DIM px(20):RESTORE 350:FOR h=1 TO 20:READ a:px(h)=a:NEXT
390 DIM py(20):RESTORE 360:FOR h=1 TO 20:READ a:py(h)=a:NEXT 
400 DIM nv(20):RESTORE 370:FOR h=1 TO 20:READ a:nv(h)=a:NEXT  
410 REM ::::::::::::::::::::::: 
420 REM :                     :
430 REM :     DESSIN DECOR    :
440 REM :                     :
450 REM :::::::::::::::::::::::
460 GOSUB 470:GOTO 570 
470 PLOT 176,208,2:DRAW 320,352:DRAW 464,208:DRAW 320,64:DRAW 176,208
480 PLOT 224,384,3:DRAW 320,288:DRAW 416,384:PLOT 496,304:DRAW 400,208:DRAW 496,112      
490 PLOT 224,32:DRAW 320,128:DRAW 416,32:PLOT 144,112:DRAW 240,208:DRAW 144,304
500 zl=0:FOR gl=0 TO 3:ORIGIN 160+zl,96-zl:GOSUB 510:zl=zl+16:NEXT gl:GOTO 530
510 xl=0:FOR hl=0 TO 272 STEP 16:al=TEST(hl,xl):IF al=0 THEN PLOT hl,xl
520 xl=xl+16:NEXT hl:RETURN    
530 zl=0:FOR gl=0 TO 3:ORIGIN 160+zl,320+zl:GOSUB 550:zl=zl+16:NEXT gl
540 ORIGIN 0,0:RETURN
550 xl=0:FOR hl=0 TO 272 STEP 16:al=TEST(hl,xl):IF al=0 THEN PLOT hl,xl
560 xl=xl-16:NEXT hl:RETURN
570 X=1:Y=20:A$="SCOR":GOSUB 660  
580 X=33:Y=20:A$="HIGH":GOSUB 660 
590 X=1:Y=1:A$="TIME":GOSUB 660
600 X=1:Y=6:A$="LINE":GOSUB 660
610 X=33:A$="NEXT":Y=6:GOSUB 660:Y=3:GOSUB 660:Y=1:GOSUB 660 
620 PRINT TR$:FOR H=3 TO 8:PEN 2:LOCATE X,H:PRINT CHR$(143):LOCATE X+7,H:PRINT CHR$(143):NEXT 
630 FOR H=3 TO 8:PEN 3:LOCATE X,H:PRINT CHR$(207):LOCATE X+7,H:PRINT CHR$(207):NEXT:LOCATE 1,1:PRINT NR$  
640 WINDOW #2,34,39,3,8:CLS #2:CALL &A00E,&C186,sp(dp1)
650 GOTO 730
660 PEN 2:FOR H=X TO X+7:LOCATE H,Y+1:PRINT CHR$(143):LOCATE H,Y+3:PRINT CHR$(143):NEXT   
670 LOCATE X,Y+2:PRINT CHR$(143):LOCATE X+7,Y+2:PRINT CHR$(143) 
680 PEN 1:LOCATE X+1,Y:PRINT CHR$(214)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(215)
690 PEN 0:LOCATE X+2,Y:PRINT TR$;A$:PEN 3:LOCATE X,Y+1:PRINT CHR$(223):LOCATE X+7,Y+1:PRINT CHR$(222)
700 LOCATE X,Y+2:PRINT CHR$(207):LOCATE X+7,Y+2:PRINT CHR$(207)
710 LOCATE X,Y+3:PRINT CHR$(220):LOCATE X+7,Y+3:PRINT CHR$(221)
720 LOCATE 1,1:PRINT NR$:RETURN
730 PEN 3:sc=0:GOSUB 2690:li=0:GOSUB 2730:GOSUB 2760
740 GOSUB 2240:GOSUB 2200:pas=0:IF fin=1 THEN 2890
750 REM :::::::::::::::::::::::  
760 REM :                     :  
770 REM : ROUTINE  PRINCIPALE :
780 REM :                     : 
790 REM :::::::::::::::::::::::
800 zd=INT(RND*20)+1:x=px(zd):y=py(zd):niv=nv(zd):
810 dp=dp1:dp1=INT(RND*4)+1:CLS #2:CALL &A00E,&C186,sp(dp1)
820 CALL &A00E,FN po(x,y),sp(dp):tp=temps
830 GOTO 2800
840 IF INKEY(1)*INKEY(75)=0 THEN pas=pas+1:GOTO 900 
850 IF INKEY(8)*INKEY(74)=0 THEN pas=pas+1:GOTO 960
860 IF INKEY(9)*INKEY(76)=0 THEN 1060
870 GOTO 830   
880 WHILE INKEY$<>"":WEND:FOR t=1 TO 100:NEXT t:GOTO 830
890 REM ::: SENS AIGUILLES MONTRE :::
900 SOUND 1,100,2,5:IF pas>5 THEN 1060  
910 CALL &A00E,FN po(x,y),sp(dp) 
920 zd=zd+1:IF zd=21 THEN zd=1
930 x=px(zd):y=py(zd):niv=nv(zd):CALL &A00E,FN po(x,y),sp(dp)
940 GOTO 880
950 REM ::: SENS CONTRAIRE AIGUILLES :::
960 SOUND 1,100,2,5:IF pas>5 THEN 1060  
970 CALL &A00E,FN po(x,y),sp(dp) 
980 zd=zd-1:IF zd=0 THEN zd=20  
990 x=px(zd):y=py(zd):niv=nv(zd):CALL &A00E,FN po(x,y),sp(dp)  
1000 GOTO 880  
1010 REM :::::::::::::::::::::::  
1020 REM :                     :  
1030 REM :   CHUTE DES CUBES   :
1040 REM :                     :  
1050 REM :::::::::::::::::::::::
1060 SOUND 1,200,50,7,0,2
1070 IF zd<6 THEN ss=1:GOTO 1110  
1080 IF zd<11 THEN ss=2:GOTO 1110 
1090 IF zd<16 THEN ss=3:GOTO 1110   
1100 ss=4
1110 ON ss GOTO 1130,1190,1250,1310
1120 REM ::: CHUTE SENS 1 :::
1130 st=13:FOR h=13 TO 1 STEP -1:IF je(6+niv,h)<>0 THEN st=h-1 
1140 NEXT
1150 FOR h=1 TO st-1:CALL &A00E,FN po(x,y),sp(dp) 
1160 x=x+1:y=y+1:CALL &A00E,FN po(x,y),sp(dp):NEXT
1170 ax=6+niv:by=st:GOSUB 1540:je(ax,by)=dp:GOSUB 1690:GOTO 740
1180 REM ::: CHUTE SENS 2 :::
1190 st=5:FOR h=5 TO 17:IF je(h,12-niv)<>0 THEN st=h+1    
1200 NEXT
1210 FOR h=17 TO st+1 STEP -1:CALL &A00E,FN po(x,y),sp(dp)  
1220 x=x-1:y=y+1:CALL &A00E,FN po(x,y),sp(dp):NEXT
1230 ax=st:by=12-niv:GOSUB 1540:je(ax,by)=dp:GOSUB 1690:GOTO 740 
1240 REM ::: CHUTE SENS 2 :::    
1250 st=5:FOR h=5 TO 17:IF je(6+niv,h)<>0 THEN st=h+1
1260 NEXT
1270 FOR h=17 TO st+1 STEP -1:CALL &A00E,FN po(x,y),sp(dp)
1280 x=x-1:y=y-1:CALL &A00E,FN po(x,y),sp(dp):NEXT  
1290 ax=6+niv:by=st:GOSUB 1540::je(ax,by)=dp:GOSUB 1690:GOTO 740   
1300 REM ::: CHUTE SENS 4 :::   
1310 st=13:FOR h=13 TO 1 STEP -1:IF je(h,12-niv)<>0 THEN st=h-1  
1320 NEXT
1330 FOR h=1 TO st-1:CALL &A00E,FN po(x,y),sp(dp)
1340 x=x+1:y=y-1:CALL &A00E,FN po(x,y),sp(dp):NEXT 
1350 ax=st:by=12-niv:GOSUB 1540:je(ax,by)=dp:GOSUB 1690:GOTO 740  
1360 REM ::::::::::::::::::::::: 
1370 REM :                     : 
1380 REM :   EFFACER UN CUBE   :
1390 REM :                     :
1400 REM ::::::::::::::::::::::: 
1410 CALL &A00E,FN po(x,y),sp(dp+4) 
1420 IF je(ax-1,by)=0 AND je(ax-1,by+1)=0 THEN CALL &A00E,FN po(x,y),sp(9)
1430 IF je(ax-1,by)=0 AND je(ax-1,by+1)<>0 THEN CALL &A00E,FN po(x,y),sp(11)
1440 IF je(ax,by+1)=0 AND je(ax-1,by+1)=0 THEN CALL &A00E,FN po(x,y),sp(10)
1450 IF je(ax,by+1)=0 AND je(ax-1,by+1)<>0 THEN CALL &A00E,FN po(x,y),sp(12)
1460 IF je(ax,by-1)=0 AND je(ax+1,by-1)<>0 THEN CALL &A038,FN po(x,y-2),sp(9)
1470 IF je(ax+1,by)=0 AND je(ax+1,by-1)<>0 THEN CALL &A038,FN po(x,y-2),sp(10)
1480 RETURN
1490 REM ::::::::::::::::::::::: 
1500 REM :                     : 
1510 REM :  AFFICHER UN  CUBE  :
1520 REM :                     :
1530 REM ::::::::::::::::::::::: 
1540 CALL &A00E,FN po(x,y),sp(dp) 
1550 CALL &A038,FN po(x,y),sp(dp+4)
1560 IF JE(AX-1,BY)<>0 AND JE(AX-1,BY+1)<>0 AND JE(AX,BY+1)<>0 THEN RETURN
1570 IF JE(AX-1,BY)=0 AND JE(AX-1,BY+1)=0 AND JE(AX,BY+1)=0 THEN GOSUB 1640:GOSUB 1650:RETURN
1580 IF JE(AX-1,BY)=0 AND JE(AX-1,BY+1)<>0 AND JE(AX,BY+1)=0 THEN GOSUB 1640:GOSUB 1650:GOSUB 1670:RETURN
1590 IF JE(AX-1,BY)<>0 AND JE(AX-1,BY+1)<>0 AND JE(AX,BY+1)=0 THEN GOSUB 1650:GOSUB 1660:GOSUB 1670:RETURN
1600 IF JE(AX-1,BY)=0 AND JE(AX-1,BY+1)<>0 AND JE(AX,BY+1)<>0 THEN GOSUB 1640:GOSUB 1670:GOSUB 1680:RETURN
1610 IF JE(AX-1,BY)<>0 AND JE(AX-1,BY+1)=0 AND JE(AX,BY+1)=0 THEN GOSUB 1650:RETURN
1620 IF JE(AX-1,BY)=0 AND JE(AX-1,BY+1)=0 AND JE(AX,BY+1)<>0 THEN GOSUB 1640:RETURN     
1630 RETURN
1640 CALL &A038,FN po(x,y),sp(9):RETURN
1650 CALL &A038,FN po(x,y),sp(10):RETURN
1660 A=JE(AX-1,BY):CALL &A038,FN po(x-1,y+1),sp(a+4):RETURN  
1670 A=JE(AX-1,BY+1):CALL &A038,FN po(x,Y+2),sp(a+4):RETURN  
1680 A=JE(AX,BY+1):CALL &A038,FN po(x+1,y+1),sp(a+4):RETURN
1690 ON ss GOTO 1760,1860,1960,2060  
1700 REM ::::::::::::::::::::::: 
1710 REM :                     : 
1720 REM :  DECALAGE DES CUBES :
1730 REM :                     : 
1740 REM :::::::::::::::::::::::  
1750 REM ::: DECALAGE SENS 1 :::
1760 IF by<>4 THEN RETURN 
1770 pla=0:FOR h=13 TO 5 STEP -1:IF je(AX,H)=0 THEN pla=h  
1780 NEXT:IF pla=0 THEN RETURN 
1790 x1=ax:y1=by:FOR h=4 TO pla:IF je(AX,H)=0 THEN 1810
1800 x=(AX+H)+2:y=(11+H)-AX:dp=je(AX,H):BY=H:GOSUB 1410 
1810 NEXT:FOR h=pla TO st+1 STEP -1:je(AX,H)=je(AX,H-1):NEXT 
1820 je(x1,y1)=0:FOR h=4 TO pla:IF je(AX,H)=0 THEN 1840
1830 x=(AX+H)+2:y=(11+H)-AX:dp=je(AX,H):BY=H:GOSUB 1550    
1840 NEXT:RETURN        
1850 REM ::: DECALAGE SENS 2 :::
1860 IF ax<>14 THEN RETURN
1870 pla=0:FOR h=5 TO 13:IF je(h,by)=0 THEN pla=h  
1880 NEXT:IF pla=0 THEN RETURN 
1890 x1=ax:y1=by:FOR h=14 TO PLA STEP -1:IF je(h,by)=0 THEN 1910
1900 x=(h+by)+2:y=(11+by)-h:dp=je(h,by):ax=h:GOSUB 1410
1910 NEXT:FOR h=pla TO st+1:je(h,by)=je(h+1,by):NEXT  
1920 je(x1,y1)=0:FOR h=14 TO PLA STEP -1:IF je(h,by)=0 THEN 1940
1930 x=(h+by)+2:y=(11+by)-h:dp=je(h,by):ax=h:GOSUB 1550
1940 NEXT:RETURN     
1950 REM ::: DECALAGE SENS 3 :::  
1960 IF by<>14 THEN RETURN
1970 pla=0:FOR h=5 TO 13:IF je(AX,H)=0 THEN pla=h  
1980 NEXT:IF pla=0 THEN RETURN  
1990 x1=ax:y1=by:FOR h=14 TO PLA STEP -1:IF je(AX,H)=0 THEN 2010
2000 x=(AX+H)+2:y=(11+H)-AX:dp=je(AX,H):BY=h:GOSUB 1410
2010 NEXT:FOR h=pla TO st+1:je(AX,H)=je(AX,H+1):NEXT  
2020 je(x1,y1)=0:FOR h=14 TO PLA STEP -1:IF je(AX,H)=0 THEN 2040
2030 x=(AX+H)+2:y=(11+H)-AX:dp=je(AX,H):BY=h:GOSUB 1550
2040 NEXT:RETURN  
2050 REM ::: DECALAGE SENS 4 :::  
2060 IF ax<>4 THEN RETURN
2070 pla=0:FOR h=13 TO 5 STEP -1:IF je(h,by)=0 THEN pla=h 
2080 NEXT:IF pla=0 THEN RETURN     
2090 x1=ax:y1=by:FOR h=4 TO pla:IF je(h,by)=0 THEN 2110 
2100 x=(h+by)+2:y=(11+by)-h:dp=je(h,by):ax=h:GOSUB 1410    
2110 NEXT:FOR h=pla TO st+1 STEP -1:je(h,by)=je(h-1,by):NEXT   
2120 je(x1,y1)=0:FOR h=4 TO pla:IF je(h,by)=0 THEN 2140 
2130 x=(h+by)+2:y=(11+by)-h:dp=je(h,by):ax=h:GOSUB 1550
2140 NEXT:RETURN
2150 REM :::::::::::::::::::::::
2160 REM :                     : 
2170 REM :  TEST LIGNE/SORTIE  :
2180 REM :                     : 
2190 REM :::::::::::::::::::::::
2200 fin=0:FOR h=7 TO 11
2210 IF je(h,4)<>0 OR je(h,14)<>0 OR je(4,h)<>0 OR je(14,h)<>0 THEN fin=1
2220 NEXT:RETURN
2230 REM ::: LIGNE COMPLETE ? :::
2240 FOR g=5 TO 13:FOR h=5 TO 9:IF je(h,g)=0 THEN 2270
2250 com=1:FOR z=h TO h+4:IF je(z,g)<>je(h,g) THEN com=0 ELSE lx=h:ly=g
2260 NEXT z:IF com=1 THEN GOSUB 2370:GOSUB 2480
2270 NEXT h,g
2280 FOR h=5 TO 13:FOR g=5 TO 9:IF je(h,g)=0 THEN 2310
2290 com=1:FOR z=g TO g+4:IF je(h,z)<>je(h,g) THEN com=0 ELSE lx=h:ly=g  
2300 NEXT z:IF com=1 THEN GOSUB 2580:GOSUB 2480  
2310 NEXT g,h:RETURN
2320 REM :::::::::::::::::::::::
2330 REM :                     :
2340 REM : EFF LIGNE HORIZONT  :
2350 REM :                     :
2360 REM :::::::::::::::::::::::
2370 by=ly:FOR ax=lx TO lx+4
2380 x=(ax+by)+2:y=(11+by)-ax:dp=je(ax,by)
2390 je(ax,by)=0:CALL &A00E,FN po(x,y),sp(dp+4)
2400 IF je(ax,by+1)=0 THEN CALL &A00E,FN po(x,y),sp(10)   
2410 NEXT:IF je(lx-1,by)<>0 THEN RETURN
2420 x=(lx+by)+2:y=(11+by)-lx:CALL &A00E,FN po(x,y),sp(9):RETURN 
2430 REM ::::::::::::::::::::::: 
2440 REM :                     : 
2450 REM :    REMISE A JOUR    :
2460 REM :                     :
2470 REM ::::::::::::::::::::::: 
2480 sc=sc+85:GOSUB 2690:li=li+1:GOSUB 2730
2490 temps=temps-10:IF temps<60 THEN temps=60
2500 GOSUB 470:FOR BY=5 TO 13:FOR AX=5 TO 13:IF JE(AX,BY)=0 THEN 2520 
2510 x=(AX+BY)+2:y=(11+BY)-AX:dp=je(AX,BY):GOSUB 1550
2520 NEXT AX,BY:RETURN   
2530 REM ::::::::::::::::::::::::
2540 REM :                      :
2550 REM :  EFF LIGNE VERTICALE :
2560 REM :                      :
2570 REM ::::::::::::::::::::::::
2580 ax=lx:FOR by=ly TO ly+4
2590 x=(ax+by)+2:y=(11+by)-ax:dp=je(ax,by)  
2600 je(ax,by)=0:CALL &A00E,FN po(x,y),sp(dp+4)
2610 IF je(ax-1,by)=0 THEN CALL &A00E,FN po(x,y),sp(9)
2620 NEXT:IF je(ax,ly+5)<>0 THEN RETURN  
2630 x=(ax+ly+4)+2:y=(11+ly+4)-ax:CALL &A00E,FN po(x,y),sp(10):RETURN 
2640 REM ::::::::::::::::::::::::
2650 REM :                      :  
2660 REM :  SCORE,TEMPS,ETC..   :
2670 REM :                      :  
2680 REM :::::::::::::::::::::::: 
2690 PEN 3:LOCATE 2,22:PRINT nr$;"000000":IF sc=0 THEN RETURN  
2700 IF sc<100 THEN LOCATE 6,22:PRINT nr$;"  ":LOCATE 5,22:PRINT tr$;sc:RETURN 
2710 IF sc<1000 THEN LOCATE 5,22:PRINT nr$;"   ":LOCATE 4,22:PRINT tr$;sc:RETURN
2720 IF sc<10000 THEN LOCATE 4,22:PRINT nr$;"    ":LOCATE 3,22:PRINT tr$;sc:RETURN
2730 PEN 3:LOCATE 2,8:PRINT nr$;"..00..":IF li=0 THEN RETURN  
2740 IF li<10 THEN LOCATE 5,8:PRINT nr$;" ":LOCATE 4,8:PRINT tr$;li:RETURN 
2750 LOCATE 4,8:PRINT nr$;"  ":LOCATE 3,8:PRINT tr$;li:RETURN  
2760 PEN 3:LOCATE 34,22:PRINT nr$;"000000":IF rec=0 THEN RETURN 
2770 IF rec<100 THEN LOCATE 38,22:PRINT nr$;"  ":LOCATE 37,22:PRINT tr$;rec:RETURN  
2780 IF rec<1000 THEN LOCATE 37,22:PRINT nr$;"   ":LOCATE 36,22:PRINT tr$;rec:RETURN   
2790 IF rec<10000 THEN LOCATE 36,22:PRINT nr$;"    ":LOCATE 35,22:PRINT tr$;rec:RETURN 
2800 tp=tp-1
2810 PEN 3:LOCATE 3,3:PRINT nr$;tp
2820 IF tp>0 THEN 840
2830 ENT 4,20,3,5:SOUND 4,20,100,15,0,4:GOTO 1070
2840 REM ::::::::::::::::::::::::  
2850 REM :                      :
2860 REM :    FIN DE PARTIE     :
2870 REM :                      :
2880 REM :::::::::::::::::::::::: 
2890 FIN=0:FOR t=1 TO 200:SOUND 1,t,1,14:NEXT t   
2900 FOR g=1 TO 17:FOR h=1 TO 17
2910 IF je(h,g)=0 THEN 2930    
2920 sc=sc+10:SOUND 1,0,15,15,1,,15:GOSUB 2690  
2930 NEXT h,g:PEN 1:PAPER #1,0:ERASE JE:DIM JE(17,17)   
2940 IF rec<sc THEN rec=sc:GOSUB 2760
2950 FOR h=1 TO 25:LOCATE #1,24,23:PRINT #1,CHR$(10):NEXT    
2960 PEN 3:LOCATE 16,10:PRINT "UNE AUTRE?":LOCATE 18,12:PRINT "(O/N)"
2970 A$=INKEY$:IF A$="" THEN 2970
2980 A$=UPPER$(A$):IF A$="N" THEN END
2990 IF A$="O" THEN 3000 ELSE 2970  
3000 FOR h=1 TO 25:LOCATE #1,24,23:PRINT #1,CHR$(10):NEXT   
3010 CLS #2:GOSUB 470:DP1=INT(RND*4)+1:DP=DP1:TEMPS=360:GOTO 730
3020 REM ::::::::::::::::::::::: 
3030 REM :                     :
3040 REM :    PRESENTATION     : 
3050 REM :                     : 
3060 REM :::::::::::::::::::::::
3070 CALL &BBFF:MODE 1:BORDER 0:INK 0,0:INK 1,6:INK 2,2:INK 3,19 
3080 PEN 3:LOCATE 11,8:PRINT STRING$(21,"*"):LOCATE 11,15:PRINT STRING$(21,"*"):FOR h=9 TO 14:LOCATE 11,h:PRINT "*":LOCATE 31,h:PRINT"*":NEXT 
3090 PEN 2:LOCATE 13,10:PRINT"1 -";:PEN 1:PRINT" EXPLICATIONS"  
3100 PEN 2:LOCATE 13,13:PRINT"2 -";:PEN 1:PRINT" ACTION"   
3110 A$=INKEY$:IF a$="" THEN 3110
3120 PRINT CHR$(7):IF A$="1" THEN 3140
3130 IF A$="2" THEN mu=REMAIN(2):RETURN ELSE 3110 
3135 CALL &BCA7:ENV 1,15,-1,1:ENT 2,200,20,5
3140 RESTORE 3640:EVERY 20,2 GOSUB 3620  
3150 LMC$=CHR$(231)+CHR$(232)+CHR$(233)+CHR$(234)+CHR$(235)+CHR$(236)
3160 tr$=CHR$(22)+CHR$(1):nr$=CHR$(22)+CHR$(0)
3170 MODE 0:BORDER 2:INK 0,0:INK 1,26:INK 2,14:INK 3,1:INK 4,3:INK 5,21:INK 6,18:INK 7,9:INK 8,6:INK 9,24:INK 10,13:INK 11,15:INK 12,17:INK 13,20:INK 14,24:INK 15,0
3180 FOR T=0 TO 810:PLOT RND*640,RND*400+175,RND*10+1:NEXT 
3190 WINDOW #1,1,20,15,25:PAPER #1,13:CLS#1
3200 PLOT 0,5,1:DRAW 639,5:PLOT 0,100:DRAW 639,100:PLOT 0,150:DRAW 639,150:PLOT 0,175:DRAW 639,175
3210 PLOT 0,5:DRAW 316,175:PLOT 639,5:DRAW 324,175:PLOT 0,75:DRAW 316,175:PLOT 639,75:DRAW 324,175:PLOT 160,5:DRAW 316,175:PLOT 480,5:DRAW 324,175:PLOT 0,120:DRAW 318,175:PLOT 639,120:DRAW 324,175:PLOT 0,155:DRAW 316,175:PLOT 639,155:DRAW 324,175
3220 DEG:ORIGIN 300,175:FOR T=-94 TO 100 STEP 0.5:MOVE 0,0:PLOT SIN(T)*200,COS(T)*200,14:DRAWR 20,0:DRAWR 20,0,13:DRAWR 20,0,12:DRAWR 20,0,11:DRAWR 20,0,10:NEXT:ORIGIN 0,0
3230 ORIGIN 0,0
3240 A=0:FOR T=0 TO 28:PLOT 200+A,110+T,15:DRAW 300+A,110+T:A=A+1.2:NEXT 
3250 FOR T=0 TO 70:PLOT 200,120+T:DRAW 270,120+T,5:NEXT:A=0:FOR T=190 TO 202:PLOT 200+A,T:DRAW 270+A,T,8:DRAW 270+A,120+A,7:A=A+2:NEXT  
3260 A=0:FOR T=0 TO 28:PLOT 500+A,50+T,15:DRAW 600+A,50+T:A=A+1.2:NEXT
3270 FOR T=0 TO 70:PLOT 500,60+T:DRAW 570,60+T,2:NEXT:A=0:FOR T=130 TO 142:PLOT 500+A,T:DRAW 570+A,T,10:DRAW 570+A,60+A,8:A=A+2:NEXT   
3280 A=0:FOR T=0 TO 28:PLOT 20+A,10+T,15:DRAW 150+A,10+T:A=A+1.2:NEXT  
3290 FOR T=0 TO 90:PLOT 20,20+T:DRAW 110,20+T,8:NEXT:A=0:FOR T=110 TO 132:PLOT 20+A,T:DRAW 110+A,T,2:DRAW 110+A,20+A,10:A=A+1.2:NEXT
3300 PEN 0:LOCATE 7,22:PRINT tr$;"L'EMPIRE":LOCATE 13,24:PRINT "ECLATE"  
3310 PEN 11:LOCATE 2,2:PRINT lmc$;nr$
3320 WHILE INKEY$="":WEND
3330 REM ::::::::::::::::::::::: 
3340 REM :                     : 
3350 REM :    EXPLICATION      :
3360 REM :                     : 
3370 REM :::::::::::::::::::::::
3380 CALL &BBFF:MODE 1:BORDER 0:INK 0,0:INK 1,6:INK 2,2:INK 3,19  
3390 CLS:MODE 1:LOCATE 13,1:PRINT"L'EMPIRE ECLATE":PEN 2:LOCATE 13,2:PRINT"---------------"    
3400 PEN 3:LOCATE 1,4:PRINT"    L'EMPIRE ECLATE c'est un TETRIS a lapuissance 4 et en trois dimensions."
3410 PEN 2:LOCATE 1,4:PRINT"    L'EMPIRE ECLATE":PEN 1:LOCATE 30,4:PRINT "TETRIS"  
3420 PEN 3:LOCATE 1,7:PRINT"    Des cubes de couleurs arrivent par 4voies diff{rentes  pour  s'arr{ter  dansl'aire qui leur est r{serv{e."  
3430 LOCATE 1,11:PRINT"    Votre  tache consiste @ en aligner 5de la m}me couleur pour les  voir dispa-raitre.Plus facile @ dire qu'@ faire."  
3440 LOCATE 1,15:PRINT"    Le  d{placement  de chaque cube  estlimit{ @ cinq pas et ils n'h{sitent  pas @ jouer des coudes pour se faire de  laplace."
3450 LOCATE 1,20:PRINT"    Mais au grand jamais ils  ne devronts'{chapper en passant la frontiere car.."
3460 LOCATE 10,23:PEN 1:PRINT"LA LIBERTE DES PEUPLES"  
3470 LOCATE 10,25:PRINT"C'EST L'EMPIRE ECLATE."  
3480 WHILE INKEY$="":WEND
3490 CLS:LOCATE 15,1:PRINT"DEPLACEMENTS":PEN 2:LOCATE 15,2:PRINT"************"
3500 LOCATE 1,4:PRINT"Joystick/curseur":PEN 1:LOCATE 1,5:PRINT"----------------" 
3510 LOCATE 1,7:PRINT "  "+CHR$(243)+"  =  d{placement du cube dans le sensdes aiguilles d'une montre." 
3520 LOCATE 1,11:PRINT "  "+CHR$(242)+"  =  d{placement du cube dans le senscontraire des aiguilles d'une montre."  
3530 LOCATE 4,15:PRINT "<COPY> ou <FIRE> =  le cube tombe"  
3540 PEN 3:LOCATE 6,19:PRINT STRING$(30,"=")   
3550 PEN 2:LOCATE 4,22:PRINT "<ANY KEY>":LOCATE 14,22:PEN 1:PRINT"=  depart de la partie"
3560 LOCATE 33,25:PEN 1:PRINT"<ENTER>":WHILE INKEY$="":WEND:CLS:GOTO 3070
3570 REM :::::::::::::::::::::::
3580 REM :                     : 
3590 REM :  MUSIQUE MAESTRO !  :
3600 REM :                     : 
3610 REM ::::::::::::::::::::::: 
3620 DI:IF (SQ(1) AND 7)=0 THEN EI:RETURN ELSE READ p:IF p=-1 THEN RESTORE 3640:CALL &BCA7:GOTO 3620
3630 SOUND 1,p,28,7:SOUND 1,p,1,0:GOTO 3620
3640 DATA 239,239,253,239,239,239,253,239,213,239,253,284,239,239,253,239,239,239,253,239,284,319,379,358,319,319,319,319,319,358,379,426,379,358,319 
3650 DATA 284,319,319,358,319,319,319,284,253,284,319,358,379,426,379,426,478,478,426,379,358,426,319,213,213,239,213,213,213,239,253,284,253,239,213 
3660 DATA 190,213,213,239,213,213,213,190,179,190,213,190,179,190,179,190,213,239,253,284,253,284,319,319,284,253,239,284,239,-1,-1