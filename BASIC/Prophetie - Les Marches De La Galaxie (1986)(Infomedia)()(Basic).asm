5 MODE 1:KEY DEF 68,0,0,0,0:KEY DEF 70,0,0,0,0:POKE &B632,1:SYMBOL AFTER 173
10 MEMORY 29999:LOAD"OBJET":INK 0,0:INK 1,0:INK 2,0:INK 3,0:BORDER 0:INK 11,13:INK 12,0:INK 13,0:INK 14,11:INK 15,15:POKE 42049,0
40 CALL 36200:POKE &91EB,&30:POKE &91EC,&75
41 FOR i=26 TO 66 STEP 8:MOVE 0,i:DRAW 16,i:NEXT:FOR i=72 TO 88 STEP 6:MOVE 0,i:DRAW 16,i:NEXT:FOR i=88 TO 96 STEP 4:MOVE 0,i:DRAW 16,i:NEXT:MOVE 0,i-2:DRAW 16,i-2:MOVE 0,i+2:DRAW 16,i+2:
42 MOVE 4,106:DRAW 16,106:MOVE 6,110:DRAW 16,110:MOVE 8,114:DRAW 16,114:MOVE 10,118:DRAW 16,118:MOVE 10,120:DRAW 16,120:MOVE 0,20,0:DRAW 16,20
45 GOSUB 9000:MEMORY 30000
50 RUN"pro
9000 '
9005 RESTORE 9110
9010 ENV 1,10,1,1,80,0,1,80,0,1,10,-1,1:ENT -1,2,1,1,2,-1,1
9020 FOR i=1 TO 8
9021 IF INKEY$<>"" THEN 9105
9030 READ notea
9035 IF SQ(4)<>6 AND encore=1 THEN SOUND 4,60,8,12,1,1,10
9040 SOUND 1,notea,160,2,1,1  
9050 FOR j=1 TO 8
9055 IF SQ(4)<>6 AND encore=1 THEN SOUND 4,60,8,12, 1,1,10
9060 READ noteb
9070 SOUND 2,noteb,20,2,1,1  
9080 NEXT j,i
9090 IF encore=1 THEN 9100 ELSE encore=1:RESTORE 9110:GOTO 9020
9100 SOUND 1,506,120,2,1,1:SOUND 2,253,120,2,1,1
9101 FOR i=1 TO 10:SOUND 4,60,8,12, 1,1,10:FOR j=1 TO 99 :NEXT:NEXT
9105 FOR i=1 TO 2000:NEXT
9106 RETURN
9110 DATA 506,253,213,169,253,213,169,253,213,568,284,225,190,284,225,190,284,225,758,301,253,190,301,253,190,301,253
9120 DATA 676,338,268,225,169,225,268,225,268,506,338,253,213,338,253,213,338,253,638,319,253,213,319,253,213,319,253,758,379,301,253,379,301,253,379,301
9130 DATA 676,338,268,225,169,225,268,225,268