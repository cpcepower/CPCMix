1 '************************************
2 '
3 '    initialisation - presentation
4 '
5 '************************************
6 GOSUB 10000:CLEAR:MODE 1:BORDER 13:INK 0,13:INK 1,0:RANDOMIZE TIME:jj=0:fin=0:PEN 1:ENV 3,=1,10000
7 DIM note(16),nc(22),v(22),num(22),mise(132)
8 PRINT"Grilles de jeux simples con\\ues @ partird'un programme math{matique.":PRINT:PRINT:PRINT"Ce syst}me de combinaisons vous offre lapossibilit{ de jouer 8 @ 22 num{ros, lesmises allant de 4 @ 132,00 fr.":PRINT
9 PRINT"Vous pouvez:":PRINT"soit utiliser vos num{ros personnels.":PRINT"soit utiliser la s{lection du cpc.":PRINT:PRINT"Pour chaque jeu, un tableau affiche les garanties.":PRINT 
10 PRINT"Ce tableau donne pour 3,4,5,ou 6 num{rossortis, le rapport minimum possible.":PRINT:PRINT"Dans la moiti{ des jeux propos{s gains @partir du 5}me rang (3 num{ros) assur{s"   
11 LOCATE 1,24:PRINT"appuyez sur une touche"
12 GOSUB 386
13 t$=INKEY$:IF t$="" THEN 12
14 '***********************************
15 '
16 '  choix nombre de No - variable cn
17 '
18 '***********************************
19 CLS:PRINT"Combien de num{ros jouez-vous ?":PRINT:PRINT:PRINT"8 - 9 - 10 - 11 - 12 - 15 - 16 - 22":PRINT:PRINT:INPUT"Tapez votre choix: ",cn
20 IF cn=8 OR cn=9 OR cn=10 OR cn=11 OR cn=12 OR cn=15 OR cn=16 OR cn=22 THEN 21 ELSE CLS:GOTO 19
21 '***********************************
22 '
23 ' choix No personnels jj=1 ou cpc jj=0
24 '
25 '***********************************
26 CLS:LOCATE 8,9:PRINT"1 - Num{ros personnels":PRINT:LOCATE 8,11:PRINT"2 - S{lection ordinateur":LOCATE 11,16:PRINT"Tapez votre choix" 
27 t$=INKEY$:IF t$="" THEN 27
28 IF t$="1" THEN jj=1:GOTO 31
29 IF t$="2" THEN 38
30 GOTO 27
31 '***********************************
32 '
33 ' memorisation des No du joueur - v(i)
34 '
35 '***********************************
36 CLS:PRINT"Entrez vos num{ros dans l'ordre d{sir{":PRINT
37 FOR i=1 TO cn:PRINT USING"##";i;:INPUT"  ",v(i):NEXT i
38 MODE 2:WINDOW#1,1,80,1,4:PAPER#1,1:CLS#1:WINDOW#2,2,38,7,23:PAPER#2,0:CLS#2:WINDOW#3,43,77,7,9:PAPER#3,0:CLS#3:WINDOW#4,43,77,10,20:PAPER#4,0:CLS#4:x=1
39 PEN#1,0:LOCATE#1,28,1:PRINT#1,"Liste des num{ros jou{s:"
40 IF jj=0 THEN 42 
41 FOR i=1 TO cn:PEN#1,0:LOCATE#1,x,3:PRINT#1,v(i):x=x+3:FOR s=200 TO 100 STEP-25:SOUND 1,s,10,15:NEXT s,i:GOSUB 342:GOTO 69
42 '**********************************
43 '
44 ' selection de numeros par le cpc - num(l) 
45 '
46 '**********************************
47 FOR l=1 TO cn
48 num(l)=INT(RND*49)+1  
49 FOR j=1 TO l-1
50 IF num(l)=num(j) THEN 48
51 NEXT j
52 NEXT l
53 x=1:y=2:i=1
54 FOR n=1 TO 49
55 FOR l=1 TO cn
56 IF n=num(l) THEN GOSUB 62
57 NEXT l
58 PEN 0
59 NEXT n 
60 PEN 1
61 GOSUB 342:GOTO 69
62 '**********************************
63 '
64 ' affichage des No en jeu - n et v(i)
65 '
66 '**********************************
67 PEN#1,0:LOCATE#1,x,3:PRINT#1,n:x=x+3:FOR s=200 TO 100 STEP-25:SOUND 1,s,10,15:NEXT s:v(i)=n:i=i+1
68 RETURN
69 '***********************************
70 '
71 ' trace tableaux garantie et grille
72 '
73 '***********************************
74 INK 1,13:LOCATE 2,24:PRINT STRING$(39,CHR$(207)):LOCATE 44,24:PRINT STRING$(37,CHR$(207))
75 FOR i=7 TO 23:LOCATE 39,i:PRINT CHR$(207);CHR$(207):LOCATE 79,i:PRINT CHR$(207);CHR$(207):NEXT i 
76 PLOT 0,322,1:DRAW 0,32:DRAW 303,32:DRAW 303,322:DRAW 0,322:PLOT 334,322,1:DRAW 334,32:DRAW 623,32:DRAW 623,322:DRAW 334,322 
77 LOCATE#2,1,1:PRINT#2,"JEUX :  ";cn;"   Num{ros":PRINT#2,"MISE :  ";mise;"   Francs":LOCATE#2,10,4:PRINT#2,"GARANTIES MINIMUM":LOCATE#2,4,6:PRINT#2,"No":LOCATE#2,2,7:PRINT#2,"sortis"
78 PRINT#2,CHR$(22)+CHR$(1):LOCATE#2,5,17:PRINT#2,"No compl{mentaire non retenu":y=9:FOR i=3 TO 6:LOCATE#2,4,y:PRINT#2,i:y=y+2:NEXT i 
79 LOCATE#2,22,6:PRINT#2,"rangs":LOCATE#2,15,7:PRINT#2,"5     4     3     1"
80 PLOT 0,264,1:DRAW 303,264:PLOT 0,262,1:DRAW 303,262:PLOT 0,232,1:DRAW 303,232:PLOT 0,184,1:DRAW 303,184:PLOT 0,152,1:DRAW 303,152:PLOT 0,120,1:DRAW 303,120:PLOT 0,88,1:DRAW 303,88:PLOT 88,232,1:DRAW 88,64
81 PLOT 92,232,1:DRAW 92,64:PLOT 148,200,1:DRAW 148,64:PLOT 198,200,1:DRAW 198,64:PLOT 246,200,1:DRAW 246,64
82 PLOT 334,264,1:DRAW 623,264:PLOT 334,262,1:DRAW 623,262:g=0:GOSUB 322
83 INK 1,0
84 '***********************************
85 '
86 '  position des No dans les grilles
87 '   selon mise et quantite jouee
88 '
89 '***********************************
90 IF cn=8 AND mise=4 THEN 105
91 IF cn=8 AND mise=12 THEN 115
92 IF cn=9 AND mise=3 THEN 125
93 IF cn=9 AND mise=12 THEN 128
94 IF cn=9 AND mise=30 THEN 141
95 IF cn=10 AND mise=4 THEN 173
96 IF cn=10 AND mise=10 THEN 177
97 IF cn=11 AND mise=5 THEN 187
98 IF cn=11 AND mise=11 THEN 192
99 IF cn=12 AND mise=2 THEN 204
100 IF cn=12 AND mise=15 THEN 207
101 IF cn=15 THEN 224
102 IF cn=16 THEN 234
103 IF cn=22 THEN 251
104 GOTO 413
105 '**********************************
106 '
107 '    datas construction grilles
108 '
109 '**********************************
110 RESTORE 111:GOSUB 276:RESTORE 112:GOSUB 276:RESTORE 113:GOSUB 276:RESTORE 114:fin=1:GOSUB 276 
111 DATA 1,2,3,4,5,6
112 DATA 1,2,3,4,7,8
113 DATA 1,2,5,6,7,8
114 DATA 3,4,5,6,7,8
115 RESTORE 111:GOSUB 276:RESTORE 117:GOSUB 276:RESTORE 118:GOSUB 276:RESTORE 119:GOSUB 276:RESTORE 120:GOSUB 276:RESTORE 112:GOSUB 276:RESTORE 113:GOSUB 276:RESTORE 121:GOSUB 276:RESTORE 122:GOSUB 276:RESTORE 123:GOSUB 276
116 RESTORE 124:GOSUB 276:RESTORE 114:fin=1:GOSUB 276
117 DATA 1,2,3,4,5,7   
118 DATA 1,2,3,4,5,8
119 DATA 1,2,3,4,6,7
120 DATA 1,2,3,4,6,8 
121 DATA 1,3,5,6,7,8          
122 DATA 1,4,5,6,7,8
123 DATA 2,3,5,6,7,8
124 DATA 2,4,5,6,7,8
125 RESTORE 111:GOSUB 276:RESTORE 126:GOSUB 276:RESTORE 127:fin=1:GOSUB 276
126 DATA 1,2,3,7,8,9
127 DATA 4,5,6,7,8,9
128 RESTORE 111:GOSUB 276:RESTORE 130:GOSUB 276:RESTORE 131:GOSUB 276:RESTORE 132:GOSUB 276:RESTORE 133:GOSUB 276:RESTORE 134:GOSUB 276:RESTORE 135:GOSUB 276:RESTORE 136:GOSUB 276:RESTORE 137:GOSUB 276:RESTORE 138:GOSUB 276
129 RESTORE 139:GOSUB 276:RESTORE 140:fin=1:GOSUB 276
130 DATA 1,2,3,4,7,9
131 DATA 1,2,3,5,7,8
132 DATA 1,2,4,6,8,9
133 DATA 1,2,5,6,7,9
134 DATA 1,3,4,5,8,9
135 DATA 1,3,6,7,8,9
136 DATA 1,4,5,6,7,8
137 DATA 2,3,4,6,7,8
138 DATA 2,3,5,6,8,9
139 DATA 2,4,5,7,8,9
140 DATA 3,4,5,6,7,9
141 RESTORE 111:GOSUB 276:RESTORE 144:GOSUB 276:RESTORE 145:GOSUB 276:RESTORE 146:GOSUB 276:RESTORE 147:GOSUB 276:RESTORE 148:GOSUB 276:RESTORE 149:GOSUB 276:RESTORE 150:GOSUB 276:RESTORE 151:GOSUB 276:RESTORE 152:GOSUB 276:RESTORE 153
142 GOSUB 276:RESTORE 154:GOSUB 276:RESTORE 155:GOSUB 276:RESTORE 156:GOSUB 276:RESTORE 157:GOSUB 276:RESTORE 158:GOSUB 276:RESTORE 159:GOSUB 276:RESTORE 160:GOSUB 276:RESTORE 161:GOSUB 276:RESTORE 162:GOSUB 276:RESTORE 163:GOSUB 276
143 RESTORE 164:GOSUB 276:RESTORE 165:GOSUB 276:RESTORE 166:GOSUB 276:RESTORE 167:GOSUB 276:RESTORE 168:GOSUB 276:RESTORE 169:GOSUB 276:RESTORE 170:GOSUB 276:RESTORE 171:GOSUB 276:RESTORE 172:fin=1:GOSUB 276
144 DATA 1,2,3,4,5,7
145 DATA 1,2,3,4,5,8
146 DATA 1,2,3,4,5,9
147 DATA 1,2,3,4,6,7
148 DATA 1,2,3,4,6,8
149 DATA 1,2,3,4,6,9
150 DATA 1,2,3,5,6,7
151 DATA 1,2,3,5,6,8
152 DATA 1,2,3,5,6,9
153 DATA 1,2,3,7,8,9
154 DATA 1,2,4,7,8,9
155 DATA 1,2,5,7,8,9
156 DATA 1,2,6,7,8,9
157 DATA 1,3,4,7,8,9
158 DATA 1,3,5,7,8,9
159 DATA 1,3,6,7,8,9
160 DATA 1,4,5,6,7,8
161 DATA 1,4,5,6,7,9
162 DATA 1,4,5,6,8,9
163 DATA 2,3,4,7,8,9
164 DATA 2,3,5,7,8,9
165 DATA 2,3,6,7,8,9
166 DATA 2,4,5,6,7,8
167 DATA 2,4,5,6,7,9
168 DATA 2,4,5,6,8,9
169 DATA 3,4,5,6,7,8
170 DATA 3,4,5,6,7,9
171 DATA 3,4,5,6,8,9
172 DATA 4,5,6,7,8,9
173 RESTORE 111:GOSUB 276:RESTORE 174:GOSUB 276:RESTORE 175:GOSUB 276:RESTORE 176:fin=1:GOSUB 276
174 DATA 1,4,7,8,9,10
175 DATA 2,5,7,8,9,10
176 DATA 3,6,7,8,9,10
177 RESTORE 111:GOSUB 276:RESTORE 178:GOSUB 276:RESTORE 179:GOSUB 276:RESTORE 180:GOSUB 276:RESTORE 181:GOSUB 276:RESTORE 182:GOSUB 276:RESTORE 183:GOSUB 276:RESTORE 184:GOSUB 276:RESTORE 185:GOSUB 276:RESTORE 186:fin=1:GOSUB 276
178 DATA 1,2,3,4,7,8
179 DATA 1,2,3,4,9,10
180 DATA 1,2,5,6,7,8
181 DATA 1,2,5,6,9,10
182 DATA 1,2,7,8,9,10
183 DATA 3,4,5,6,7,8
184 DATA 3,4,5,6,9,10
185 DATA 3,4,7,8,9,10
186 DATA 5,6,7,8,9,10
187 RESTORE 111:GOSUB 276:RESTORE 188:GOSUB 276:RESTORE 189:GOSUB 276:RESTORE 190:GOSUB 276:RESTORE 191:fin=1:GOSUB 276
188 DATA 1,2,3,7,8,9
189 DATA 1,2,3,9,10,11
190 DATA 4,5,8,9,10,11
191 DATA 6,7,8,9,10,11
192 RESTORE 111:GOSUB 276:RESTORE 194:GOSUB 276:RESTORE 195:GOSUB 276:RESTORE 196:GOSUB 276:RESTORE 197:GOSUB 276:RESTORE 198:GOSUB 276:RESTORE 199:GOSUB 276:RESTORE 200:GOSUB 276:RESTORE 201:GOSUB 276:RESTORE 202:GOSUB 276
193 RESTORE 203:fin=1:GOSUB 276  
194 DATA 1,2,4,8,9,10
195 DATA 1,2,5,7,8,11
196 DATA 1,2,4,7,9,11
197 DATA 1,3,6,8,10,11
198 DATA 1,5,6,7,9,10
199 DATA 2,3,5,9,10,11
200 DATA 2,3,6,7,8,9
201 DATA 2,4,6,7,10,11
202 DATA 3,4,5,7,8,10
203 DATA 4,5,6,8,9,11
204 RESTORE 205:GOSUB 276:RESTORE 206:fin=1:GOSUB 276
205 DATA 1,3,5,7,9,11
206 DATA 2,4,6,8,10,12
207 RESTORE 209:GOSUB 276:RESTORE 210:GOSUB 276:RESTORE 211:GOSUB 276:RESTORE 212:GOSUB 276:RESTORE 213:GOSUB 276:RESTORE 214:GOSUB 276:RESTORE 215:GOSUB 276:RESTORE 216:GOSUB 276:RESTORE 217:GOSUB 276:RESTORE 218:GOSUB 276
208 RESTORE 219:GOSUB 276:RESTORE 220:GOSUB 276:RESTORE 221:GOSUB 276:RESTORE 222:GOSUB 276:RESTORE 223:fin=1:GOSUB 276
209 DATA 1,2,3,4,9,10
210 DATA 1,2,5,6,7,8
211 DATA 1,2,5,7,9,12
212 DATA 1,2,6,8,10,11
213 DATA 1,3,5,8,9,10
214 DATA 1,3,6,7,11,12
215 DATA 1,4,5,6,9,11
216 DATA 1,4,7,8,10,12
217 DATA 2,3,5,6,10,12
218 DATA 2,3,7,8,9,11
219 DATA 2,4,5,8,11,12
220 DATA 2,4,6,7,9,10
221 DATA 3,4,5,7,10,11
222 DATA 3,4,6,8,9,12
223 DATA 5,6,9,10,11,12
224 RESTORE 111:GOSUB 276:RESTORE 225:GOSUB 276:RESTORE 226:GOSUB 276:RESTORE 227:GOSUB 276:RESTORE 228:GOSUB 276:RESTORE 229:GOSUB 276:RESTORE 230:GOSUB 276:RESTORE 231:GOSUB 276:RESTORE 232:GOSUB 276:RESTORE 233:fin=1:GOSUB 276
225 DATA 1,2,3,7,8,9
226 DATA 1,2,3,10,11,12
227 DATA 1,2,3,13,14,15
228 DATA 4,5,6,7,8,9
229 DATA 4,5,6,10,11,12
230 DATA 4,5,6,13,14,15
231 DATA 7,8,9,10,11,12
232 DATA 7,8,9,13,14,15
233 DATA 10,11,12,13,14,15
234 RESTORE 111:GOSUB 276:RESTORE 236:GOSUB 276:RESTORE 237:GOSUB 276:RESTORE 238:GOSUB 276:RESTORE 239:GOSUB 276:RESTORE 240:GOSUB 276:RESTORE 241:GOSUB 276:RESTORE 242:GOSUB 276:RESTORE 243:GOSUB 276:RESTORE 244:GOSUB 276
235 RESTORE 245:GOSUB 276:RESTORE 246:GOSUB 276:RESTORE 247:GOSUB 276:RESTORE 248:GOSUB 276:RESTORE 249:GOSUB 276:RESTORE 250:fin=1:GOSUB 276
236 DATA 1,2,7,8,9,10
237 DATA 1,3,7,11,12,13
238 DATA 1,4,8,11,14,15
239 DATA 1,5,9,12,14,16
240 DATA 1,6,10,13,15,16
241 DATA 2,3,7,14,15,16
242 DATA 2,4,8,12,13,16
243 DATA 2,5,9,11,13,15
244 DATA 2,6,10,11,12,14
245 DATA 3,4,9,10,12,15
246 DATA 3,5,8,10,11,16
247 DATA 3,6,8,9,13,14
248 DATA 4,5,7,10,13,14
249 DATA 4,6,7,9,11,16
250 DATA 5,6,7,8,12,15
251 RESTORE 254:GOSUB 276:RESTORE 255:GOSUB 276:RESTORE 256:GOSUB 276:RESTORE 257:GOSUB 276:RESTORE 258:GOSUB 276:RESTORE 259:GOSUB 276:RESTORE 260:GOSUB 276:RESTORE 261:GOSUB 276:RESTORE 262:GOSUB 276:RESTORE 263:GOSUB 276
252 RESTORE 264:GOSUB 276:RESTORE 265:GOSUB 276:RESTORE 266:GOSUB 276:RESTORE 267:GOSUB 276:RESTORE 268:GOSUB 276:RESTORE 269:GOSUB 276:RESTORE 270:GOSUB 276:RESTORE 271:GOSUB 276:RESTORE 272:GOSUB 276:RESTORE 273:GOSUB 276
253 RESTORE 274:GOSUB 276:RESTORE 275:fin=1:GOSUB 276
254 DATA 1,3,5,7,9,11
255 DATA 1,3,5,13,15,17
256 DATA 1,3,11,15,19,21
257 DATA 1,5,7,17,19,21
258 DATA 1,7,9,13,15,19
259 DATA 1,9,11,13,17,21
260 DATA 2,4,6,8,10,12
261 DATA 2,4,6,14,16,18
262 DATA 2,4,12,16,20,22
263 DATA 2,6,8,18,20,22
264 DATA 2,8,10,14,16,20
265 DATA 2,10,12,14,18,22
266 DATA 3,5,9,13,19,21
267 DATA 3,7,9,15,17,21
268 DATA 3,7,11,13,17,19
269 DATA 4,6,10,14,20,22
270 DATA 4,8,10,16,18,22
271 DATA 4,8,12,14,18,20
272 DATA 5,7,11,13,15,21
273 DATA 5,9,11,15,17,19
274 DATA 6,8,12,14,16,22
275 DATA 6,10,12,16,18,20
276 '********************************
277 '
278 '     lecture datas grilles
279 '
280 '********************************
281 FOR n=1 TO 6
282 READ i
283 GOSUB 286 
284 NEXT n
285 GOSUB 310
286 '********************************
287 '
288 '  compare No grille et No joues
289 '
290 '********************************
291 x=3:y=1
292 FOR ln=0 TO 49  
293 IF ln=10 OR ln=20 OR ln=30 OR ln=40 THEN x=x+7:y=1
294 IF ln=v(i) THEN 297 
295 y=y+1
296 NEXT ln
297 '********************************
298 '
299 '   affichage des No a cocher
300 '
301 '********************************
302 LOCATE#4,3,1:PEN#4,0:PRINT#4,CHR$(143);CHR$(143);CHR$(143)  
303 PRINT#4,CHR$(22)+CHR$(1):LOCATE#4,x,y
304 IF ln=0 THEN PEN#4,0:GOTO 309 
305 IF ln>9 THEN 307
306 PEN#4,1:PRINT#4,CHR$(143);CHR$(143);CHR$(143):GOTO 308
307 PEN#4,1:PRINT#4,CHR$(143);CHR$(143);CHR$(143);CHR$(143)
308 PEN#4,0:LOCATE#4,x,y:PRINT#4,v(i)
309 RETURN
310 '********************************
311 '
312 '  attente touche pour nouvelle
313 '     grille ou fin programme
314 '
315 '********************************
316 LOCATE 50,22:PEN 1:PRINT "Appuyez sur une touche"
317 GOSUB 386
318 t$=INKEY$:IF t$="" THEN 317
319 IF fin=1 THEN 402
320 IF mise<132 THEN 321 ELSE CLS#5:CLS#7:RETURN
321 IF g=9 THEN 330
322 '********************************
323 '
324 ' efface la grille et renumerote
325 '
326 '********************************
327 g=g+1:IF g=9 THEN 328 ELSE 331
328 LOCATE#3,10,1:PEN#3,0:PRINT#3,STRING$(19,CHR$(143)):LOCATE#3,12,2:PRINT#3,STRING$(16,CHR$(143)):LOCATE#3,8,1:PEN#3,1:PRINT#3,"CHANGEMENT DE TICKET"
329 SOUND 4,366,300,,3:CLS#4:GOTO 310
330 LOCATE#3,6,1:PEN#3,0:PRINT#3,STRING$(23,CHR$(143)):g=1
331 IF mise=132 AND cn=12 THEN 418 ELSE LOCATE#3,10,1:PEN#3,1:PRINT#3,"Cochez les num{ros":LOCATE#3,12,2:PRINT#3,"de la grille ";g
332 LOCATE 49,22:PEN 0:PRINT STRING$(24,CHR$(143)):CLS#4:x=3:no=0
333 FOR col=1 TO 5:FOR lig=1 TO 10
334 LOCATE#4,x,lig
335 IF no=0 THEN 337 
336 PEN#4,1:PRINT#4,no 
337 no=no+1
338 NEXT lig:x=x+7:NEXT col
339 LOCATE#1,1,1:PEN#1,1:PRINT#1,FRE("")
340 p=0:ln=0:v(p)=0:n=0
341 RETURN
342 '********************************
343 '
344 ' choix des mises et garanties
345 '
346 '********************************
347 IF cn=8 THEN 381
348 IF cn=9 THEN 355
349 IF cn=10 THEN 362
350 IF cn=11 THEN 368
351 IF cn=12 THEN 374
352 IF cn=15 THEN mise=10:LOCATE#2,15,15:PRINT#2,"1":INK 1,13:RETURN 
353 IF cn=16 THEN mise=16:LOCATE#2,15,13:PRINT#2,"4":LOCATE#2,15,15:PRINT#2,"8":INK 1,13:RETURN
354 mise=22:LOCATE#2,15,13:PRINT#2,"1":INK 1,13:RETURN
355 LOCATE#2,1,1:PRINT#2,"choisissez votre mise":PRINT#2:PRINT#2:PRINT#2,"1 - 3 fr.":PRINT#2:PRINT#2,"2 - 12 fr.":PRINT#2:PRINT#2,"3 - 30 fr.":PRINT#2:PRINT#2:PRINT#2,"appuyez sur le No choisi" 
356 t$=INKEY$:IF t$="" THEN 356
357 CLS#2:INK 1,13
358 IF t$="1" THEN mise=3:LOCATE#2,15,13:PRINT#2,"1":RETURN  
359 IF t$="2" THEN mise=12:LOCATE#2,15,9:PRINT#2,"2":LOCATE#2,15,11:PRINT#2,"7     1":LOCATE#2,15,13:PRINT#2,"4     6":LOCATE#2,15,15:PRINT#2,"3     6     3":RETURN  
360 IF t$="3" THEN mise=30:LOCATE#2,15,9:PRINT#2,"6":LOCATE#2,15,11:PRINT#2,"15    3":LOCATE#2,15,13:PRINT#2,"15    11    1":LOCATE#2,15,15:PRINT#2,"6     18    6":RETURN
361 GOTO 356
362 LOCATE#2,1,1:PRINT#2,"choisissez votre mise":PRINT#2:PRINT#2:PRINT#2,"1 - 4 fr.":PRINT#2:PRINT#2,"2 - 10 fr.":PRINT#2:PRINT#2,"appuyez sur le No choisi" 
363 t$=INKEY$:IF t$="" THEN 363
364 CLS#2:INK 1,13
365 IF t$="1" THEN mise=4:LOCATE#2,15,11:PRINT#2,"1":RETURN   
366 IF t$="2" THEN mise=10:LOCATE#2,15,9:PRINT#2,"1":LOCATE#2,15,11:PRINT#2,"4":LOCATE#2,15,13:PRINT#2,"10":LOCATE#2,15,15:PRINT#2,"4     6":RETURN
367 GOTO 363
368 LOCATE#2,1,1:PRINT#2,"choisissez votre mise":PRINT#2:PRINT#2:PRINT#2,"1 - 5 fr.":PRINT#2:PRINT#2,"2 - 11 fr.":PRINT#2:PRINT#2:PRINT#2,"appuyez sur le No choisi"
369 t$=INKEY$:IF t$="" THEN 369
370 CLS#2:INK 1,13 
371 IF t$="1" THEN mise=5:LOCATE#2,15,15:PRINT#2,"1":RETURN
372 IF t$="2" THEN mise=11:LOCATE#2,15,9:PRINT#2,"1":LOCATE#2,15,11:PRINT#2,"4":LOCATE#2,15,13:PRINT#2,"10":LOCATE#2,15,15:PRINT#2,"5     5":RETURN
373 GOTO 369
374 LOCATE#2,1,1:PRINT#2,"choisissez votre mise":PRINT#2:PRINT#2:PRINT#2,"1 - 2 fr.":PRINT#2:PRINT#2,"2 - 15 fr.":PRINT#2:PRINT#2,"3 - 132 fr.":PRINT#2:PRINT#2:PRINT#2,"appuyez sur le No choisi"
375 t$=INKEY$:IF t$="" THEN 375
376 CLS#2:INK 1,13
377 IF t$="1" THEN mise=2:LOCATE#2,15,13:PRINT#2,"1":RETURN
378 IF t$="2" THEN mise=15:LOCATE#2,15,9:PRINT#2,"1":LOCATE#2,15,11:PRINT#2,"4":LOCATE#2,15,13:PRINT#2,"10":LOCATE#2,15,15:PRINT#2,"8     3":RETURN 
379 IF t$="3" THEN mise=132:LOCATE#2,15,9:PRINT#2,"12":LOCATE#2,15,11:PRINT#2,"32    4":LOCATE#2,15,13:PRINT#2,"50    15    1":LOCATE#2,15,15:PRINT#2,"60    30    6":RETURN  
380 GOTO 375
381 LOCATE#2,1,1:PRINT#2,"choisissez votre mise":PRINT#2:PRINT#2:PRINT#2,"1 - 4 fr.":PRINT#2:PRINT#2,"2 - 12 fr.":PRINT#2:PRINT#2:PRINT#2,"appuyez sur le No choisi" 
382 t$=INKEY$:IF t$="" THEN 382
383 CLS#2:INK 1,13
384 IF t$="1" THEN mise=4:LOCATE#2,15,9:PRINT#2,"1":RETURN  
385 IF t$="2" THEN mise=12:LOCATE#2,15,9:PRINT#2,"4":LOCATE#2,15,11:PRINT#2,"8     2":LOCATE#2,15,13:PRINT#2,"4     7     1":LOCATE#2,15,15:PRINT#2,"      6     6":RETURN  
386 '********************************
387 '
388 '     accompagnement musical
389 '
390 '********************************
391 RESTORE 393
392 FOR i=1 TO 16:READ note(i):NEXT
393 DATA 95,106,127,142,159,190,213,253,284,319,379,80,71,63,53,47 
394 '
395 choix1=INT(RND*7)+5:SOUND 1,note(choix1),320,12,,1
396 FOR accomp=1 TO 5 
397 choix=INT(RND*16)+1:SOUND 2,note(choix),32,11,1 
398 choix=INT(RND*16)+1:SOUND 2,note(choix),32,11,1
399 choix=INT(RND*11)+1:SOUND 4,note(choix),64,,2
400 NEXT accomp
401 RETURN
402 '*******************************
403 '
404 '       fin des jeux
405 '
406 '*******************************
407 MODE 1:IF jj=0 THEN 411
408 PRINT" J'esp}re sinc}rement vous voir gagner!":PRINT:PRINT:PRINT" Et si cela ne marche pas, ne me mettez            pas en cause....."
409 PRINT:PRINT:PRINT:PRINT"   Mon programme est ultra-performant":PRINT:PRINT"Seuls les num{ros que vous m'avez donn{s           seront @ modifier.":PRINT:PRINT:PRINT
410 PRINT:PRINT:PRINT"        BONNE CHANCE QUAND-MEME!":PRINT:PRINT:PRINT:PRINT:END
411 PRINT"   J'ai fait mon travail correctememt":PRINT:PRINT:PRINT"  J'esp}re que vous-m^me, vous ne vous     ^tes pas plant{ en cours de route.":PRINT:PRINT:PRINT:PRINT" Si par malheur, je n'ai pas choisi les"      
412 PRINT"bons num{ros. Dites vous bien que, seulsceux qui ne font rien, ne se trompe pas!":PRINT:PRINT:PRINT:PRINT:GOTO 410
413 '*******************************
414 '
415 ' programme special mise 132 fr.
416 '
417 '*******************************
418 WINDOW#5,41,65,5,24:PAPER#5,0:CLS#5:PEN#5,1:WINDOW#6,66,80,5,19:PAPER#6,0:CLS#6:PEN#6,1:WINDOW#7,66,80,20,24:PAPER#7,0:CLS#7:PEN#7,1:INK 1,0
419 LOCATE#6,2,6:PRINT#6,"chaque colonne":LOCATE#6,3,9:PRINT#6,"correspond @":LOCATE#6,4,12:PRINT#6,"une grille":g=0
420 RESTORE 422:GOSUB 439:RESTORE 423:GOSUB 451:RESTORE 424:GOSUB 439:RESTORE 425:GOSUB 451:RESTORE 426:GOSUB 439:RESTORE 427:GOSUB 451:RESTORE 428:GOSUB 439:RESTORE 429:GOSUB 451:RESTORE 430:GOSUB 439:RESTORE 431:GOSUB 451:RESTORE 432
421 GOSUB 439:RESTORE 433:GOSUB 451:RESTORE 434:GOSUB 439:RESTORE 435:GOSUB 451:RESTORE 436:GOSUB 439:RESTORE 437:GOSUB 451:RESTORE 438:fin=1:GOSUB 439
422 DATA 1,2,3,4,5,6,1,2,3,4,7,10,1,2,3,4,8,11,1,2,3,4,9,12,1,2,3,5,7,11,1,2,3,5,8,12,1,2,3,5,9,10,1,2,3,6,7,12
423 DATA 1,2,3,6,8,10,1,2,3,6,9,11,1,2,3,7,8,9,1,2,3,10,11,12,1,2,4,5,7,8,1,2,4,5,9,11,1,2,4,5,10,12,1,2,4,6,7,9
424 DATA 1,2,4,6,8,12,1,2,4,6,10,11,1,2,4,7,11,12,1,2,4,8,9,10,1,2,5,6,7,10,1,2,5,6,8,9,1,2,5,6,11,12,1,2,5,7,9,12
425 DATA 1,2,5,8,10,11,1,2,6,7,8,11,1,2,6,9,10,12,1,2,7,8,10,12,1,2,7,9,10,11,1,2,8,9,11,12,1,3,4,5,7,9,1,3,4,5,8,10  
426 DATA 1,3,4,5,11,12,1,3,4,6,7,11,1,3,4,6,8,9,1,3,4,6,10,12,1,3,4,7,8,12,1,3,4,9,10,11,1,3,5,6,7,8,1,3,5,6,9,12
427 DATA 1,3,5,6,10,11,1,3,5,7,10,12,1,3,5,8,9,11,1,3,6,7,9,10,1,3,6,8,11,12,1,3,7,8,10,11,1,3,7,9,11,12,1,3,8,9,10,12
428 DATA 1,4,5,6,7,12,1,4,5,6,8,11,1,4,5,6,9,10,1,4,5,7,10,11,1,4,5,8,9,12,1,4,6,7,8,10,1,4,6,9,11,12,1,4,7,8,9,11
429 DATA 1,4,7,9,10,12,1,4,8,10,11,12,1,5,6,7,9,11,1,5,6,8,10,12,1,5,7,8,9,10,1,5,7,8,11,12,1,5,9,10,11,12,1,6,7,8,9,12
430 DATA 1,6,7,10,11,12,1,6,8,9,10,11,2,3,4,5,7,12,2,3,4,5,8,9,2,3,4,5,10,11,2,3,4,6,7,8,2,3,4,6,9,10,2,3,4,6,11,12
431 DATA 2,3,4,7,9,11,2,3,4,8,10,12,2,3,5,6,7,9,2,3,5,6,8,11,2,3,5,6,10,12,2,3,5,7,8,10,2,3,5,9,11,12,2,3,6,7,10,11
432 DATA 2,3,6,8,9,12,2,3,7,8,11,12,2,3,7,9,10,12,2,3,8,9,10,11,2,4,5,6,7,11,2,4,5,6,8,10,2,4,5,6,9,12,2,4,5,7,9,10
433 DATA 2,4,5,8,11,12,2,4,6,7,10,12,2,4,6,8,9,11,2,4,7,8,9,12,2,4,7,8,10,11,2,4,9,10,11,12,2,5,6,7,8,12,2,5,6,9,10,11
434 DATA 2,5,7,8,9,11,2,5,7,10,11,12,2,5,8,9,10,12,2,6,7,8,9,10,2,6,7,9,11,12,2,6,8,10,11,12,3,4,5,6,7,10,3,4,5,6,8,12
435 DATA 3,4,5,6,9,11,3,4,5,7,8,11,3,4,5,9,10,12,3,4,6,7,9,12,3,4,6,8,10,11,3,4,7,8,9,10,3,4,7,10,11,12,3,4,8,9,11,12
436 DATA 3,5,6,7,11,12,3,5,6,8,9,10,3,5,7,8,9,12,3,5,7,9,10,11,3,5,8,10,11,12,3,6,7,8,9,11,3,6,7,8,10,12,3,6,9,10,11,12
437 DATA 4,5,6,7,8,9,4,5,6,10,11,12,4,5,7,8,10,12,4,5,7,9,11,12,4,5,8,9,10,11,4,6,7,8,11,12,4,6,7,9,10,11,4,6,8,9,10,12
438 DATA 5,6,7,8,10,11,5,6,7,9,10,12,5,6,8,9,11,12,7,8,9,10,11,12
439 g=g+1:LOCATE#5,6,2:PEN#5,1:PRINT#5,"Bulletin No";g:x=1:y=4:GOTO 440
440 IF g<=16 THEN no=48 ELSE no=24
441 FOR ln=1 TO no
442 READ i
443 IF ln=7 OR ln=13 OR ln=19 OR ln=25 OR ln=31 OR ln=37 OR ln=43 THEN y=4:x=x+3
444 GOSUB 448
445 NEXT ln
446 IF fin=1 THEN 461
447 RETURN
448 LOCATE#5,x,y:PEN#5,1:PRINT#5,v(i) 
449 y=y+1     
450 RETURN
451 g=g+1:LOCATE#5,6,12:PEN#5,1:PRINT#5,"Bulletin No";g:x=1:y=14
452 FOR ln=1 TO 48
453 READ i
454 IF ln=7 OR ln=13 OR ln=19 OR ln=25 OR ln=31 OR ln=37 OR ln=43 THEN y=14:x=x+3
455 GOSUB 458
456 NEXT ln
457 GOTO 461
458 LOCATE#5,x,y:PEN#5,1:PRINT#5,v(i) 
459 y=y+1 
460 RETURN 
461 LOCATE#7,2,2:PEN#7,1:PRINT#7,"appuyez  sur":LOCATE#7,3,4:PRINT#7,"une touche"
462 GOTO 318
10000 '************************************
10010 '
10020 '         ecran de chargement
10030 '
10040 '************************************
10050 MODE 1:BORDER 4,3:INK 0,13:INK 1,13:INK 2,13:INK 3,13:SYMBOL AFTER 64
10060 DIM note(16):b=1:RANDOMIZE TIME:ENT 1,1,1,3,1,-1,3,1,0,1,1,1,3,1,-1,3:ENV 2,=10,390:ENV 1,1,15,1,1,0,1,1,0,1,12,-1,8,2,-1,20 
10070 WINDOW#1,9,32,17,21:PAPER#1,1:CLS#1:RESTORE 10130
10080 FOR i=1 TO 5
10090 READ t,sy,s1,s2,s3,s4,s5,s6,s7,s8
10100 SYMBOL sy,s1,s2,s3,s4,s5,s6,s7,s8
10110 KEY t,CHR$(sy)
10120 NEXT i
10130 DATA 128,64,&60,&10,&78,&8c,&7c,&cc,&76,0,129,123,&06,&08,&3c,&66,&7e,&60,&3c,0,130,125,&60,&10,&3c,&66,&7e,&60,&3c,0,131,92,0,0,&3c,&66,&60,&3e,&08,&18,132,94,&18,&24,&3c,&66,&7e,&60,&3c,0
10270 cr=LEN(t$):p=cr*8
10280 x=(640-cr*32)/2
10290 LOCATE 1,1:PEN 3:PRINT t$;:PEN 1
10300 tx=x:y2=398
10310 FOR i=1 TO 8:x2=0:FOR j=1 TO p
10320 IF TEST(x2,y2)=3 THEN PLOT x,y,c:PLOT x,y-2:PLOT x+2,y:PLOT x+2,y-2
10330 x=x+4:x2=x2+2
10340 NEXT j:y=y-4:y2=y2-2:x=tx:NEXT i 
10350 LOCATE 1,1:PEN 0:PRINT STRING$(6,CHR$(143)):RETURN
10360 INK 1,2:INK 2,6:INK 3,0:INK 0,13,25
10370 PEN 3:LOCATE 13,10:PRINT"syst}mes de jeux":LOCATE 14,12:PRINT"avec garanties"
10380 LOCATE 6,24:PEN 1:PRINT CHR$(164):LOCATE 8,24:PRINT"G. & K. Goument - Aout  1986"
10390 LOCATE#1,1,4:PEN#1,0:PRINT#1," appuyez sur une touche"
10400 LOCATE#1,3,2:PEN#1,0:PRINT#1,"chargement programme":BORDER 4:j=0
10410 IF j=1 THEN j=0:INK 0,13:GOSUB 10460
10420 IF j=0 THEN j=1:INK 0,14:GOSUB 10460
10430 t$=INKEY$:IF t$="" THEN 10410
10440 CLS#1:LOCATE#1,3,3:PEN#1,2:PRINT#1,"chargement en cours!":INK 0,13
10450 RETURN
10460 '********************************
10470 '
10480 '     accompagnement musical
10490 '
10500 '********************************
10510 RESTORE 10530
10520 FOR i=1 TO 16:READ note(i):NEXT
10530 DATA 95,106,127,142,159,190,213,253,284,319,379,80,71,63,53,47 
10540 '
10550 choix1=INT(RND*7)+5:SOUND 1,note(choix1),320,13,,1 
10560 FOR accomp=1 TO 5 
10570 choix=INT(RND*16)+1:SOUND 2,note(choix),32,12,1  
10580 choix=INT(RND*16)+1:SOUND 2,note(choix),32,12,1
10590 choix=INT(RND*11)+1:SOUND 4,note(choix),64,8,2
10600 NEXT accomp
10610 RETURN