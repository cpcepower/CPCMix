60 POKE &BDEE,201:KEY DEF 66,0,0,0,0:ON ERROR GOTO 620
70 MODE 0:BORDER 3:FOR n=0 TO 15:INK n,3:NEXT
80 LOAD"drum.pre",&C000
90 INK 15,26:INK 10,24:INK 10,6
100 ENV 1,15,1,18
110 SOUND 1,2000,0,0,1,0,0:SOUND 4,2010,0,0,1,0,0:SOUND 2,0,0,0,1,0,0
120 FOR n=0 TO 2500:NEXT
130 RESTORE 130:FOR n=0 TO 15:READ a:INK n,a:NEXT:DATA 0,1,2,11,24,22,19,18,12,10,6,3,15,23,0,26
140 ENV 1,5,-2,3:ENT 1,21,8,1
150 ENV 2,4,-3,4:ENT-2,1,1,3,1,-1,3,1,0,3,1,1,3,1,-1,3
160 ENV 3,1,12,1,4,-3,2:ENT 3,1,15,1,1,-14,1
170 ENV 4,1,15,1,5,-1,2:ENT 4,15,1,1
180 ENV 5,12,-1,6
190 ENV 6,1,0,1,1,-10,1,1,0,1,1,10,1,1,0,2
200 ENV 7,15,1,1
210 ENV 8,5,3,1,9,-1,4
220 ENV 9,1,15,1,1,-14,1
230 tempo%=20:CLEAR INPUT
240 WHILE-1:RESTORE 310:FOR pas%=0 TO 511:READ i$
250 FOR ins%=1 TO 3:canal%=ins%:IF canal%=3 THEN canal%=4
260 ins$=MID$(i$,ins%,1):IF ins$="X"THEN ins$="N"
270 t%=33-tempo%:ON ASC(ins$)-64 GOSUB 480,490,500,510,520,530,540,550,560,570,580,590,600,610
280 NEXT ins%:IF INKEY$<>""THEN nom$="drum.mep":GOTO 10000
290 NEXT pas%:WEND
300 '
310 DATA KXX,KXX,XXX,KXX,KXX,KXX,XXX,XXX,XXX,XXX,KXX,XXX,XXX,KXX,XXX,XXX,KXX,KXX,XXX,KXX,KXX,KXX,XXX,XXX,XXX,XXX,KXX,XXX,XXX,KXX,XXX,XXX
320 DATA KCI,KIX,IMX,KIC,KCE,KIX,ILX,ILX,CLX,LXX,KIX,ICX,CEI,KIX,XXX,XXX,KCI,KIX,IMX,KIC,KCE,KIX,ILX,ILX,CLX,LXX,KIX,ICX,CEI,KIX,XXX,XXX
330 DATA AEM,IXX,MIX,ALI,AEI,LIX,IXX,AMI,AMI,IXX,IXX,AMI,AEL,IXX,LIX,ADI,AEM,IXX,MIX,ALI,AEI,LIX,IXX,AMI,AMI,IXX,IXX,AMI,AEL,IXX,LIX,ADI
340 DATA AEM,IXX,MIX,ALI,AEI,LIX,IXX,AMI,AMI,IXX,IXX,AMI,AEL,IXX,LIX,ADI,AEM,IXX,MIX,ALI,AEI,LIX,IXX,AMI,AMI,IXX,IXX,AMI,AEL,IXX,LIX,ADI
350 DATA IAG,IAG,IGX,IAG,IGX,IAE,IAG,IGX,IEB,IAE,IEB,IAE,IAE,EAI,IAE,IXE,IEG,IAG,IGX,IXX,IAX,IEX,IGX,IAG,IXX,IAX,IAX,IAX,IAX,EIA,IEA,IEA
360 DATA IXX,IXX,IEX,IEX,IXX,IEX,IXX,EXX,IXX,IXX,IEX,IEX,IXX,IEX,IXX,EXX,IXX,IXX,IEX,IEX,IXX,IEX,IXX,EXX,IXX,IXX,IEX,IEX,IXX,IEX,IXX,EXX
370 DATA IDX,IXX,IEX,IEX,IBX,IEX,IXX,EHX,IED,IFD,IEX,IED,IBX,IEX,IXX,EHX,IDX,IXX,IEX,IEX,IBX,IEX,IXX,EHX,IDE,IFD,IEX,IED,IBX,IEX,IXX,EHX
380 DATA IDX,IXX,IEX,IEX,IBX,IEX,IXX,EHX,IED,IFD,IEX,IED,IBX,IEX,IXX,EHX,IDX,IXX,IEX,IEX,IBX,IEX,IXX,EHX,IDE,IFD,IEX,IED,IBX,IEX,IXX,EHX
390 DATA XEX,XXX,EXX,XEX,XEX,EXX,EXX,EXX,XEX,XXX,EXX,XEX,XEX,EXX,EXX,EXX,XEX,XXX,EXX,EXX,EXX,EXX,EXX,EXX,XEX,XXX,XEX,EXX,EXX,EXX,EXX,EXX
400 DATA AEI,IXX,EIX,AEI,AEI,EIX,HIX,EIX,AEI,IXX,EIX,AEI,AEI,EIX,HIX,EIX,AEI,IXX,EIX,EAI,EAI,EIX,HIX,EIX,AEI,IXX,IEX,EAI,EAI,EIX,HIX,EIX
410 DATA AEI,IXX,EIX,AEI,AEI,EIX,HIX,EIX,AEI,IXX,EIX,AEI,AEI,EIX,HIX,EIX,AEI,IXX,EIX,EAI,EAI,EIX,HIX,EIX,AEI,IXX,IEX,EAI,EAI,EIX,HIX,EIX
420 DATA IAX,BDI,IAX,BDI,AIX,HIX,ILM,IXX,IXX,XXX,AXX,IXX,AIX,IXX,EIX,IXX,AIX,IXX,AIX,IXX,AIX,HIX,IML,ILM,IML,LMX,AXX,IXX,AIX,IXX,EIX,IFX
430 DATA IAX,BDI,IAX,BDI,AIX,HIX,ILM,IXX,IXX,XXX,AXX,IXX,AIX,IXX,EIX,IXX,AIX,IXX,AIX,IXX,AIX,HIX,IML,ILM,IML,LMX,AXX,IXX,AIX,IXX,EIX,IFX
440 DATA XEM,IXX,MIX,XLI,XEI,LIX,IXX,XMI,XMI,IXX,IXX,XMI,XEL,IXX,LIX,XDI,XEM,IXX,MIX,XLI,XEI,LIX,IXX,XMI,XMI,IXX,IXX,XMI,XEL,IXX,LIX,XDI
450 DATA XEM,IXX,MIX,XLI,XEI,LIX,IXX,XMI,XMI,IXX,IXX,XMI,XEL,IXX,LIX,XDI,XEM,IXX,MIX,XLI,XEI,LIX,IXX,XMI,XMI,IXX,IXX,XMI,XEL,IXX,LIX,XDI
460 DATA EXX,EXX,EXX,EXX,EXX,XXX,XXX,XXX,XXE,XXE,XXE,XXE,XXE,XXX,XXX,XXX,EXX,XXE,EXX,XXE,EXX,XXE,EXX,XXE,ILX,IMX,ILX,IMX,ILX,IMX,ILX,IMX
470 '
480 SOUND canal%,1500,t%,15,1,1,0:RETURN'  Grosse caisse
490 SOUND canal%,880,t%,0,1,1,0:RETURN'  tom bass
500 SOUND canal%,740,t%,0,1,1,0:RETURN'  tom medium
510 SOUND canal%,540,t%,0,1,1,0:RETURN'  tom haut
520 SOUND canal%,0,t%,15,2,0,3:RETURN'  caisse claire
530 SOUND canal%,0,t%,13,6,0,7:RETURN'  Claquement de mains
540 SOUND canal%,0,t%,0,7,0,31:RETURN'  break
550 SOUND canal%,0,t%,0,8,2,1:RETURN'  charleston
560 SOUND canal%,0,t%,0,3,0,1:RETURN'  Balais
570 SOUND canal%,36,t%,0,9,3,0:RETURN'  Claves
580 SOUND canal%,22,t%,12,5,0,0:RETURN'  Triangle
590 SOUND canal%,44,t%,0,1,4,0:RETURN'  Whistle bas
600 SOUND canal%,34,t%,0,1,4,0:RETURN'  Whistle haut
610 SOUND canal%,34,t%,0:RETURN'  Silence
620 CALL 0
10000 RUN nom$:CALL 0