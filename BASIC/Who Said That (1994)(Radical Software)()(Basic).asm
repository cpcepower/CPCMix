1 'SAID:(c)shockersoft&shimmer,stells lae,boston pe218ab1994
2 ON ERROR GOTO 17
3 ON BREAK CONT
4 DEFINT A-E,G-Z
5 DIM Q$(14),N$(14),name(7),quote(7),left(7),QNS(41),note(37),NOX(7),SC(6),HS$(6),PROV$(13,3)
6 CHAR=0:ATHS$="ATHS":SNO=1:INK 1,25
7 W$=CHR$(154)+" W H O "+CHR$(154):M$="another set"
8 FOR x=1 TO 37:READ note(x):NEXT
9 DATA 2408,2145,1804,1607,1351,1204,1073,902,804,676,602,536,451,402,338,301,268,225,201,169,150,134,113,100,84,75,67,56,50,42,38,34,28,25,21,19,17
10 FOR x=0 TO 13:FOR y=0 TO 3:READ PROV$(x,y):NEXT y,x
11 DATA If at first you,don't succeed..,get new batteries,,A bird in the,hand..,will probably,leave a mess,Truth is stranger,than..,News At Ten,
12 DATA When the blind,leadeth the blind,get outa the way,,A miss is as good,as a..,Mr.,,All that glitters,is not..,lucosade,
13 DATA No news,is..,almost certainly,impossible,He who marries,for money..,better be,really good,Blessed are they, who hunger and.. ,..for sticking to,their diets
14 DATA A penny saved..,,is not enough,for my bank,Still waters..,,get you nowhere,rather slowly,I bet he drinks..,,sick-bag-special,
15 DATA The shortest dist., between 2 points..,depends upon whos,giving directions,The road to hell,is paved..,by the same lot,as all other roads
16 INK 1,0
17 PAPER #7,0:slb=0:god=1:CALL &8308
18 FOR x=1 TO 2:SOUND 1,338,16,8,3,1:SOUND 6,190,16,8,3,1 
19 SOUND 6,253,160,9,3,1:SOUND 1,142,160,9,3,1:NEXT
20 SOUND 3,338,40,8,3,1:SOUND 4,190,40,8,3,1:SOUND 6,253,40,9,3,1:SOUND 1,142,40,9,3,1:SOUND 3,190,80,10,3,1:SOUND 4,106,80,10,3,1:SOUND 6,142,120,9,3,1:SOUND 1,80,120,9,3,1
21 INK 3,6:SOUND 1,169,8,9,3,1:SOUND 7,127,9,9,3,1:SOUND 1,95,8,9,3,1:SOUND 7,71,9,10,3,1
22 SOUND 4,288,160,13,3,3:FOR x=1 TO 4:SOUND 3,851,14:SOUND 3,1,27:NEXT:SOUND 7,123,164,11,,2:FOR f=1 TO 1888:NEXT
23 BORDER 0:INK 0,0:INK 3,6:C1A=13:C1B=0:C2A=23:C2B=0
24 RESTORE 124:x=1:PEN 2
25 CALL &BD19:INK 1,C1A+RND*C1B:INK 2,C2A+INT(RND*C2B)*2:F=RND:J=JOY(0)
26 SLB=SLB+1:IF SLB=239 THEN SLB=0:GOTO 163
27 READ C1,C2,C4:SOUND 1,C1,21,,7,1:SOUND 2,C2,21,10,7,1:SOUND 4,C4,21,14:x=x+1:IF x=193 THEN x=1:RESTORE 124
28 IF x=39 THEN C1A=19:C1B=5:C2A=0:C2B=12
29 IF x=134 THEN C1A=0:C1B=4:C2A=16:C2B=5
30 IF J=16 OR INKEY(6)=0 THEN PRINT CHR$(7);:LOCATE 2,24:PAPER 0:PEN 2:PRINT "OK":INK 2,8+RND*12: ELSE 25
31 F=FRE("")
32 FOR X=1 TO 41:IF QNS(X)=0 THEN X=99
33 NEXT X:IF X<99 THEN FOR X=1 TO 41:QNS(X)=0:NEXT
34 QN=1+RND*40:IF QNS(QN)=1 THEN 34 ELSE QNS(QN)=1
35 IF QN>39 THEN QN$="SET4"+CHR$(8+QN):GOTO 40
36 IF QN>29 THEN QN$="SET3"+CHR$(18+QN):GOTO 40
37 IF QN>19 THEN QN$="SET2"+CHR$(28+QN):GOTO 40
38 IF QN>9 THEN QN$="SET1"+CHR$(38+QN):GOTO 40
39 QN$="SET"+CHR$(48+QN)
40 IF QN>28 THEN ad=32 ELSE ad=((QN+2) MOD 8)+49
41 PAPER 0:LOCATE 34,17:PRINT"       ":LOCATE 34,19:PRINT"       ":LOCATE 34,18:PRINT" ";QN$+CHR$(ad);
42 OPENIN QN$
43 FOR X=1 TO 14
44 INPUT #9,Q$(X),N$(X)
45 NEXT X
46 CLOSEIN
47 FOR X=1 TO 7:NAME(X)=0:quote(x)=0:left(x)=0:nox(X)=0:NEXT
48 IF SNO>20 THEN god=6:GOTO 52
49 god=god+1:IF god>6 THEN god=6
50 IF sno=2 THEN god=2 ELSE IF sno=3 THEN god=4
51 w=sno MOD 7:IF w=0 OR w=4 OR w=6 THEN god=god-1
52 BORDER 3:INK 0,3:INK 1,15:INK 3,0:IF SNO<>2 THEN CALL 39976:MODE 1
53 CALL &7D00:WINDOW #7,1,40,1,12:PAPER 0:FOR X=1 TO god+1
54 y=RND*god+1:IF name(y)=0 THEN name(y)=x:PEN 3:LOCATE 13,11+x*2:PRINT CHR$(143);:PEN 1:PRINT CHR$(233);:PEN 3:PRINT STRING$(4+LEN(N$(y)),252):PEN 1:LOCATE 17,11+x*2:PRINT CHR$(22)+CHR$(1);UPPER$(N$(y));CHR$(22)+CHR$(0):PEN 3 ELSE 54
55 NEXT X
56 PAPER 3:PEN 1:LOCATE 5,15:PRINT USING "####";S:LOCATE 7,24:PRINT USING "##";V:LOCATE 8,20:IF SNO=1 THEN PRINT " 1" ELSE PRINT USING "##";SNO-1
57 INK 1,25:z=1:FOR X=1 TO god:ss=0:PAPER 0:PEN 2:LOCATE 1,1:PEN #7,3
58 q=RND*god+1:IF quote(q)=0 THEN quote(q)=x ELSE 58
59 INK 2,14+RND*7:CLS #7:Z$=Q$(q):A$=Z$:w=LEN(Z$):e=w:FOR Y=1 TO w:MID$(Z$,Y,1)=CHR$((ASC(MID$(A$,e,1))+Y-35)MOD 91+32):e=e-1:NEXT:IF w>160 THEN 61
60 IF w>80 THEN Z$=STRING$(40,32)+Z$ ELSE Z$=STRING$(80,32)+Z$
61 FOR y=1 TO LEN(Z$) STEP 40:PRINT #7,MID$(Z$,y,40):PRINT CHR$(23)+CHR$(1):TAG:PLOT 0,-2,2:MOVE 0,428-(((y+39)/40)*32):PRINT MID$(Z$,y,40);:TAGOFF
62 FOR w=y TO y+39:D$=MID$(Z$,w,1):IF D$="g" THEN ex=1+(w-1) MOD 40:ey=2+2*(INT((w-1)/40)):LOCATE ex,ey:PRINT CHR$(161) ELSE IF D$="p" THEN ex=1+(w-1) MOD 40:ey=2+2*(INT((w-1)/40)):LOCATE ex,ey:PRINT CHR$(163)
63 IF D$="q" THEN ex=1+(w-1) MOD 40:ey=2+2*(INT((w-1)/40)):LOCATE ex,ey:PRINT CHR$(164) ELSE IF D$="y" THEN ex=1+(w-1) MOD 40:ey=2+2*(INT((w-1)/40)):LOCATE ex,ey:PRINT CHR$(162)
64 NEXT w,y:PAPER 3:PEN 1
65 TAG:PLOT 192,234-z*32,1:CALL &BD19:PRINT CHR$(131);
66 F=RND
67 PLOT 192,234-z*32,1,1:CALL &BD19:PRINT CHR$(131);:TAGOFF
68 J=JOY(0)
69 IF J=2 OR INKEY(2)=0 THEN z=MIN(god+1,z+1):SOUND 1,100,1:FOR wa=1 TO 321:NEXT
70 IF J=1 OR INKEY(0)=0 THEN z=MAX(1,z-1):SOUND 1,100,1:FOR wa=1 TO 321:NEXT
71 I6=1:IF INKEY(6)=0 THEN I6=0
72 IF (J=16 OR I6=0) AND name(q)=z THEN name(q)=0:left(z)=1:GOSUB 75:GOTO 78
73 IF (J=16 OR I6=0) AND left(z)=0 AND NOX(Z)=0 THEN 90
74 GOTO 65
75 LOCATE 13,11+2*z:PRINT CHR$(128):TAG:SPEED INK 250,30
76 FOR G=8 TO 11:IF left(z)=1 THEN SOUND 1,note(14+G*2),12,,4:PLOT 192,236-z*32,1,1:CALL &BD19:PRINT CHR$(131);:MOVE 224,239-z*32,1,1:CALL &BD19:PRINT "  ";UPPER$(N$(q));
77 SOUND 1,note(G),9,,2:SOUND 4,note(23-G),9,,2:NEXT:TAGOFF:RETURN
78 ss=ss+7
79 s=s+ss:LOCATE 6,17:PAPER 3:PEN 1:PRINT USING " +#";ss
80 PAPER 0:FOR G=1 TO god+1:LOCATE 14,11+G*2:IF left(G)=1 THEN PEN 0 ELSE PEN 1
81 PRINT CHR$(233):SOUND 1,50+(RND*150),4:SOUND 1,30+(RND*170),4:NOX(G)=0
82 NEXT:PAPER 0:PEN 3:LOCATE 14,11+z*2:PRINT "     ";N$(q):FOR G=19 TO 0 STEP -1:INK 3,G/2:SOUND 1,76+G*5,4:SOUND 4,78+G*5,4:NEXT
83 PAPER 3:LOCATE 5,15:PEN 1:PRINT USING "####";s:LOCATE 6,17:PRINT "   "
84 INK 2,13+RND*12:IF V>3 THEN X=7
85 NEXT X:CLS#7:IF sno=1 THEN 121
86 FOR X=1 TO 48:|USCROLL,3,10,7,17:SOUND 7,530-x*10,5-x/10,7+x/10,1+(x MOD 7),1+(x MOD 3):NEXT
87 IF V>3 THEN 93
88 WINDOW #6,13,40,9,25:CLS #6:PRINT CHR$(7):LOCATE 11,23:PRINT "You made less than 4":LOCATE 11,24:PEN 0:PRINT CHR$(215);:PEN 1:PRINT "faults in this set";:PEN 0:PRINT CHR$(214)
89 LOCATE 12,25:PRINT CHR$(215);:PEN 1:PRINT "and so..";:PEN 0:PRINT CHR$(214):GOTO 111
90 NOX(Z)=1:ss=ss-1:V=V+1:SOUND 1,160,20:SOUND 1,320,60:SOUND 4,158,20:SOUND 4,318,60:LOCATE 14,11+z*2:PRINT CHR$(203)
91 IF V<4 THEN LOCATE 7,24:PRINT USING "##";V:FOR g=1 TO 1700:NEXT ELSE PEN 2:LOCATE 7,24:PRINT USING "##";V:GOTO 84
92 GOTO 65
93 CLS #7:FOR X=2 TO 8 STEP 2::LOCATE 11,X:PRINT STRING$(26,154):PEN 0:LOCATE 12,X-1:PRINT STRING$(24,131):PEN 2:NEXT:LOCATE 13,4:PRINT " YOUR FINAL SCORE:";:PEN 1:PRINT S:PEN 2:GOSUB 109
94 PAPER 3:LOCATE 13,10:PRINT CHR$(150);STRING$(20,208);CHR$(156):LOCATE 13,11:PRINT CHR$(149);:PEN 1:PRINT "ALL TIME HIGH SCORES";:PEN 2:PRINT CHR$(149):LOCATE 13,12:PRINT CHR$(147);STRING$(20,140);CHR$(153):LOCATE 14,14:PRINT CHR$(224);CHR$(225)
95 PEN 2:FOR X=7 TO 24:LOCATE 35,X:PRINT CHR$(233):NEXT
96 OPENIN ATHS$
97 FOR X=1 TO 5
98 INPUT#9,HS$(X),SC(X)
99 NEXT X
100 CLOSEIN
101 FOR X=1 TO 5
102 LOCATE 13,X*2+13:PEN 2:PRINT CHR$(165);STRING$(2,233);CHR$(246);:PEN 1:PRINT SC(X);STRING$(13,"."):LOCATE 26,X*2+13:PRINT " ";HS$(X);" ";
103 PEN 2:LOCATE 14,X*2+14:PRINT STRING$(2,224)
104 NEXT X
105 IF S>(SC(5)-1) THEN GOSUB 148
106 S=0:SNO=1:SNS=0:V=0
107 PEN 1:FOR x=1 TO 999:Y=14+2*(INT(RND*6)):Z=169+(RND*4):LOCATE 15,Y:PRINT CHR$(Z):IF JOY(0)=16 OR INKEY(6)=0 THEN x=x+x/2
108 NEXT:GOTO 17
109 x=37:FOR z=1 TO 8:SOUND 1,note(2*(z MOD 4)+23),60,5+z,3,2:SOUND 2,note(31+x/5-2*(z MOD 4)),64,5+z,7,2
110 FOR x=9 TO 25 STEP 2:SOUND 4,note(34-x),11,,(x MOD 6)+1:|USCROLL,13,40,x,x:NEXT x,z:RETURN
111 PAPER 0:PEN 3
112 SOUND 1,note(28),30,,3,1:SOUND 4,note(23),30,,3,2
113 IF SNO>2 AND SNO<13 THEN LOCATE 12,4:PRINT PROV$(count,0):LOCATE 12,6:PRINT PROV$(count,1):GOTO 115
114 FOR d=13 TO 19:PAPER d MOD 4:LOCATE 14,d-10:PRINT STRING$(d-8,133):NEXT
115 PAPER 3:PEN 2:INK 2,6,26
116 SOUND 132,451,3:FOR z=0 TO 9:FOR x=1 TO 8:GOSUB 123:SOUND 1,note(8+(z*3)-x),13,15-x/2,3,1:SOUND 2,note(25+z-x),13,x/2+11,3:SOUND 4,note(25-z+x),13,,3:|USCROLL,3,30,21-z,25-z:NEXT x,z
117 SOUND 129,note(35),0,,3,1:SOUND 4,note(20),0,,3,1:SOUND 2,note(32),0,,3,1
118 |BIGPRINT,10,19,@W$,1,2:LOCATE 13,21:PRINT "-SAID-THAT-"
119 FOR C=1 TO 6:|USCROLL,11,25,16,22-C:|RSCROLL,15+C,26,16,22:NEXT:|USCROLL,12,13,18,19:|USCROLL,12,13,18,19:FOR d=1 TO 3000:NEXT:|BIGPRINT,19,15,@M$,2,2
120 IF SNO>2 AND SNO<13 THEN LOCATE 12,8:PRINT PROV$(count,2):LOCATE 12,10:PRINT PROV$(count,3):count=count+1:IF count=14 THEN count=0
121 ss=0:SNO=SNO+1:IF SNO<>2 THEN V=0
122 IF (SNO/2<>INT(SNO/2)) OR (SNO>3 AND SNO<13) THEN GOTO 31 ELSE FOR c=1 TO 7:d=c+7:Q$(c)=Q$(d):N$(c)=N$(d):NEXT:GOTO 47
123 |READCHAR,x+2,z+2,@char:LOCATE x+29,z+2:PRINT CHR$(char);:RETURN
124 DATA 21,106,319,32,106,319,40,127,159,40,127,159,53,142,169,53,142,169,47,142,338,42,142,338
125 DATA 40,127,379,40,127,379,47,159,190,47,159,190,63,169,213,63,169,213,63,169,426,63,169,426
126 DATA 47,159,478,47,159,478,60,142,239,60,142,239,71,169,213,71,169,213,63,1,284,60,1,284
127 DATA 53,142,338,63,142,338,60,1,426,71,1,426,60,159,319,63,159,319,71,1,426,80,1,426
128 DATA 21,106,638,16,106,426,20,127,379,20,127,338,24,113,319,24,113,284,24,113,319,21,106,338
129 DATA 20,95,379,20,95,426,24,113,379,24,113,338,28,142,319,28,142,284,27,142,253,24,142,225
130 DATA 21,142,213,27,142,213,20,142,225,24,142,225,21,142,253,27,142,253,18,106,338,18,106,319
131 DATA 20,106,284,21,106,284,24,113,568,21,113,568,27,106,426,27,106,426,27,106,426,27,106,426
132 DATA 142,169,213,142,169,213,106,169,284,106,169,284,84,142,319,84,142,338,84,142,379,84,142,225
133 DATA 80,1,284,84,1,284,95,1,239,106,1,239,80,106,253,80,106,239,106,106,253,106,106,284
134 DATA 63,106,319,63,106,284,80,127,253,80,127,319,95,159,239,95,159,213,84,142,239,80,127,253
135 DATA 71,119,284,71,119,253,84,142,239,84,142,284,100,169,253,100,169,253,100,169,506,100,169,506
136 DATA 127,127,1,113,127,1,100,169,1,95,169,1,84,1,201,80,1,201,84,1,201,95,1,190
137 DATA 100,1,169,95,1,169,84,1,201,80,1,201,71,1,253,63,1,253,71,1,253,80,1,225
138 DATA 84,1,201,80,1,201,71,1,253,63,1,253,60,1,319,71,1,338,63,1,319,63,1,284
139 DATA 95,159,253,95,159,253,84,142,506,100,142,506,95,159,379,95,159,379,95,159,506,95,159,506
140 DATA 84,159,758,127,159,676,95,127,638,95,127,568,80,106,506,80,106,478,80,106,426,80,106,379
141 DATA 119,1,358,127,1,319,142,1,284,159,1,253,89,1,239,106,1,213,95,1,239,95,1,253
142 DATA 169,1,284,159,1,319,142,1,338,127,1,379,119,1,426,142,1,478,127,1,506,119,1,568
143 DATA 106,1,638,119,1,568,106,1,506,95,1,478,142,169,426,142,169,568,142,169,676,142,169,568
144 DATA 40,71,851,60,71,758,71,106,676,71,106,638,84,119,568,84,119,506,84,119,568,80,119,638
145 DATA 71,119,676,71,119,638,84,142,568,84,142,506,106,169,478,106,169,426,106,169,478,95,169,506
146 DATA 84,119,568,80,119,506,71,119,478,84,119,426,80,127,379,95,127,379,71,119,478,71,119,478
147 DATA 84,142,426,84,142,426,84,142,851,80,142,851,80,127,638,80,127,638,80,127,638,80,127,638
148 DSC=25:FOR SF=5 TO 1 STEP -1
149 IF S>(SC(SF)-1) THEN DSC=DSC-2:SNEW=SF:SC(SF+1)=SC(SF):SC(SF)=S:HS$(SF+1)=HS$(SF)
150 NEXT SF
151 FOR X=1 TO 24:|DSCROLL,13,40,DSC,25:NEXT:FOR X=3 TO 7:LOCATE 2,X:PRINT STRING$(38," "):NEXT
152 LOCATE 2,2:PRINT STRING$(38,233):LOCATE 2,4:PRINT "Please enter YOUR NAME at the keyboard":LOCATE 13,6:PRINT "then press ENTER":LOCATE 2,8:PRINT STRING$(38,233)
153 LOCATE 17,dsc:PRINT sc(snew)
154 IF INKEY$<>"" THEN 154
155 PEN 1:LOCATE 22,DSC:INPUT "NAME:",HS$(snew)
156 HS$(snew)=LEFT$(HS$(snew),12)
157 OPENOUT ATHS$
158 FOR X=1 TO 5
159 WRITE #9,HS$(X),SC(X)
160 NEXT
161 CLOSEOUT
162 INK 0,1:BORDER 1:RETURN
163 IF INKEY$<>"" THEN 163
164 CALL &BC02:MODE 0:BORDER 0:INK 0,0:INK 1,0:INK 2,24:INK 6,7:INK 10,9:INK 14,6:INK 15,3:PAPER 1
165 MOVE 320,222:Y=RND*2+5:Y=Y*Y:FOR X=7 TO Y:DRAW RND*636,RND*380:NEXT:DRAW 320,222:MOVE 320,0:DRAW 320,400:MOVE 0,161:DRAW 640,161
166 MOVE 630,4:FILL 1:MOVE 4,4:FILL 1:FOR x=1 TO 2800:MOVE RND*636,16+RND*380:FILL RND*15
167 IF INKEY$<>"" THEN x=4000:GOTO 170
168 IF (x MOD 600)<46 AND x<1500 THEN PEN (x MOD 15):LOCATE 4,25:PRINT"WHO SAID THAT?"; ELSE IF RND>0.998 AND x<2000 THEN Y=1:GOSUB 171
169 IF INKEY$<>"" THEN x=4000
170 NEXT:IF x<4000 THEN MODE 0:GOTO 165 ELSE MODE 1:GOTO 17
171 IF INKEY$<>"" THEN x=4000:RETURN
172 Y=Y+1:IF Y<400 THEN 171
173 IF RND>0.0006 THEN 171 ELSE RETURN