10 ENV 1,1,15,1,1,0,2
13 RESTORE 275
14 EI:GOSUB 25:K$=INKEY$:IF K$="" THEN 14
15 END
25 DI:IF SQ(1)>4 AND SQ(1)<130 THEN RETURN
26 READ NOTE,TEM:IF TEM=0 THEN RESTORE 275:GOTO 26
27 TEM=TEM/1.8:SOUND 4,NOTE,TEM-1,S,1:SOUND 2,NOTE+2*SGN(NOTE),TEM,S,1:SOUND 4,0,1,1
28 RETURN
275 DATA 159,80,190,40,239,40,159,80,190,40,239,40,253,40,239,40,213,40,319,40,239,40,213,40,190,40,319,40
276 DATA 159,80,190,40,239,40,159,80,190,40,239,40,253,40,239,40,213,40,319,40,239,80,0,80,0,0
277 DATA 478,40,478,40,319,80,478,40,319,40,478,40,319,40,284,40,358,80,0,80,478,20,0,20,478,20,478,20,319,80,478,40,319,40,478,40,319,40,284,40,268,80,0,160
278 DATA 239,40,239,40,159,80,239,40,159,40,239,40,159,40,142,40,179,80,0,80,239,20,0,20,239,20,239,20,159,80,239,40,159,40,239,40,159,40,142,40,134,80,0,0
279 DATA 80,65,83,67,65,76,32,74,65,82,82,89,32,164