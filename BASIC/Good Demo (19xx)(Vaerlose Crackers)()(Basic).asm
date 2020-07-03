1 ' HAHA..Your ca'nt crack this one
2 ' Because we have protected it with
3 ' A system as we has read in the
4 ' Amstrad Bladet [Control-D]
5 ' Bye bye Sucker
6 '
7 ' Ohh nooooooo. FUCK OFF - NOW!!!
8 ' You do'nt must crack games
9 ' This is you last chanse to fuck off
10 ' Well
11 GOSUB 27:GOSUB 30:GOSUB 31:INK 0,10:BORDER 10:INK 1,26:INK 2,1:INK 3,6:MODE 1:vaerloese.er.gode=3:EVERY vaerloese.er.gode GOSUB 35
12 PEN 2:PRINT:PRINT"           VAERL0SE CRACKERS"
13 PEN 1:PRINT:PRINT"                Present"
14 PRINT:PRINT:PRINT:PEN 3:PRINT"               GOOD DEMO"
15 WINDOW#1,40,40,1,24:LOCATE#1,1,24
16 RESTORE 16
17 READ a$:IF a$="END" THEN RESTORE 17:GOTO 17
18 FOR c=1 TO LEN(a$):LOCATE#1,1,24
19 PRINT#1,MID$(a$,c,1)
20 FOR b=1 TO 50:NEXT b:NEXT c
21 GOTO 17
22 DATA "Vaerloese Crackers proudlies present 'GOOD DEMO'      Vaerloese Crackers contains: Mr. Speedlock, CPM, Rasmus Klump, Pingo, Pelle, Skaeg and the great duo: G0jen & Pilskadden          "
23 DATA "Programmed by: The great duo       Music by Skaeg and Pingo         Machinecode by: Mr. Speedlock and Rasmus Klump       Graphics Designs by: Pelle and CPM                   "
24 DATA "If you want to be a member of Vaerloese Crackers then send your application (ansoegning) to: Vaerloese Crackers      postbox 437       Amalienborg   1337 Kobenhagen K       "
25 DATA "Gretings to 1001 Crew and softteam and Lambda Crackers      Fuckings to all Amstrad crackers                               "
26 DATA "END"
27 RESTORE  28:DIM a(47):FOR a=1 TO 47:READ a(a):NEXT a:RETURN
28 'RESTORE
29 DATA 1478,1478,1478,426,1379,1379,1379,379,1426,1426,1426,379,1478,1478,1379,1379,1319,1319,1358,1358,1358,1319,1379,379,1239,239,1239,1253,1253,1284,1284,1284,1284,1319,319,1478,1478,1478,426,1379,1379,1379,379,1426,1426,1426,1379,1478,1478
30 CALL &BB03:a=1
31 IF a>47 THEN GOTO 30
32 IF a(a)>1000 THEN a(a)=a(a)-1000:SOUND 1,0,1,0:p=1
33 IF a<47 THEN SOUND 1,a(a),30,7:IF p=1 THEN p=0:a(a)=a(a)+1000:a=a+1:ON SQ(1) GOSUB 31:RETURN ELSE a=a+1:ON SQ(1) GOSUB 31:RETURN ELSE 30
34 bor=0
35 IF bor=26 THEN 34
36 BORDER bor
37 bor=bor+1:RETURN