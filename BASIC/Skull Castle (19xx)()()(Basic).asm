5 MODE 1:BORDER 0:INK 0,0:INK 1,15:LOCATE 15,24:PRINT"LOADING . . ."
10 OPENOUT "Sg":MEMORY &87A:CLOSEOUT
20 LOAD"!skull1":CALL &4000
30 GOSUB 50
40 LOAD"!skull2"
41 MODE 1:INK 1,0:LOCATE 15,5:PRINT"POKE Y/N  ?"
42 a$=INKEY$
43 IF a$="Y"OR a$="y"THEN POKE &5B19,0:CALL &87B
44 IF a$="N"OR a$="n"THEN CALL &87B
45 GOTO 42
50 ENV 1,5,3,1,5,-3,100:ENT 2,1,0,64,75,6,1
60 ENT 3,40,-7.5,3:ENT 4,1,0,48,89,2,1:ENT 5,40,-3.5,3
70 FOR i=1 TO 2:RESTORE:FOR j=1 TO 34
80 k1=0:k2=0:IF i=1 THEN gl=0 ELSE gl=12
90 READ a,b,c,d:IF d=256 THEN READ k1,k2
100 SOUND 49,a,d,15,1
110 SOUND 42,b,d,12,,k1
120 SOUND 28,c,d,gl,,k2
130 NEXT:NEXT:RETURN
140 DATA 851,179,213,096,758,179,213,032,716,179,213,064,638,179,213,064
150 DATA 568,190,239,096,758,190,239,032,1136,190,239,64,568,190,239,032
160 DATA 638,190,239,032,716,142,179,096,638,142,179,032,568,142,179,064
170 DATA 506,142,179,064,478,159,190,096,638,159,190,032,956,159,190,064
180 DATA 478,159,190,032,506,159,190,032,568,119,142,096,506,119,142,032
190 DATA 478,119,142,064,426,119,142,064,379,127,159,064,506,127,159,064
200 DATA 758,127,159,128,568,142,284,128,536,134,268,064,716,179,358,064
210 DATA 638,159,319,064,716,179,358,064,758,190,379,064,716,179,358,064
220 DATA 568,142,284,256,004,002,451,213,426,256,005,003