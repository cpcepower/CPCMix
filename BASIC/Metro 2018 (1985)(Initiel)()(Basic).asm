1 MODE 1:INK 0,0:INK 1,15:INK 2,7:INK 3,9:BORDER 0
2 SYMBOL AFTER 200:MEMORY &A000:LOAD"!smooth.obj"
3 SYMBOL 201,&60,&10,&3C,&66,&7E,&60,&3C:SYMBOL 200,&6,&8,&3C,&66,&7E,&60,&3C:SYMBOL 202,&3C,&42,&3C,&66,&7E,&60,&3C:SYMBOL 203,&60,&10,&78,&C,&7C,&CC,&76
4 SYMBOL 206,0,0,&3C,&66,&60,&3E,&8,&18:SYMBOL 204,&30,&8,&66,&66,&66,&66,&3E:SYMBOL 205,&1C,&32,&38,&6C,&38,&10,&90,&60
5 DIM a%(850),b%(850),c%(850)
6 lm%=268*3:FOR i%=0 TO lm%:READ a%(i%),b%(i%),c%(i%):NEXT      
7 DATA 1,142,100,2,106,100,4,426,100  
8 DATA 1,142,100,2,106,100,4,851,100 
9 DATA 1,95,50,2,80,50,4,0,50
10 DATA 1,142,100,2,113,100,4,568,150
11 DATA 1,142,100,2,113,100,4,536,50
12 DATA 1,0,50,2,0,50,4,568,50
13 DATA 1,0,50,2,0,50,4,638,50
14 DATA 1,119,100,2,71,100,4,358,100 
15 DATA 1,119,100,2,71,100,4,716,100 
16 DATA 1,67,50,2,80,50,4,0,50
17 DATA 1,119,100,2,95,100,4,478,150
18 DATA 1,0,2,2,0,2,4,478,2
19 DATA 1,119,98,2,95,98,4,478,48
20 DATA 1,0,50,2,0,50,4,536,50
21 DATA 1,84,50,2,71,50,4,568,50
22 DATA 1,106,100,2,67,100,4,638,100
23 DATA 1,0,2,2,0,2,4,0,2
24 DATA 1,106,100,2,67,100,4,319,100
25 DATA 1,0,50,2,0,50,4,638,50
26 DATA 1,71,50,2,60,50,4,634,50
27 DATA 1,106,100,2,71,100,4,426,100  
28 DATA 1,0,2,2,0,2,4,0,2
29 DATA 1,106,100,2,71,100,4,426,100 
30 DATA 1,71,50,2,0,50,4,478,50
31 DATA 1,71,100,2,53,100,4,536,100
32 DATA 1,80,100,2,53,100,4,268,100
33 DATA 1,47,50,2,0,50,4,0,50
34 DATA 1,95,100,2,71,100,4,284,100
35 DATA 1,95,100,2,71,100,4,568,50
36 DATA 1,0,34,2,0,34,4,319,50
37 DATA 1,0,33,2,0,33,4,358,50
38 DATA 1,0,33,2,0,33,4,379,50
39 DATA 1,142,100,2,106,100,4,426,100  
40 DATA 1,142,100,2,106,100,4,851,100
41 DATA 1,95,50,2,80,50,4,0,50
42 DATA 1,142,100,2,113,100,4,568,150
43 DATA 1,142,100,2,113,100,4,536,50 
44 DATA 1,0,50,2,0,50,4,568,50 
45 DATA 1,0,50,2,0,50,4,638,50 
46 DATA 1,119,100,2,71,100,4,358,100
47 DATA 1,119,100,2,71,100,4,716,100 
48 DATA 1,67,50,2,80,50,4,0,50 
49 DATA 1,119,100,2,95,100,4,478,150
50 DATA 1,0,2,2,0,2,4,478,2 
51 DATA 1,119,98,2,95,98,4,478,48 
52 DATA 1,0,50,2,0,50,4,536,50  
53 DATA 1,84,50,2,71,50,4,568,50 
54 DATA 1,106,50,2,80,50,4,638,50
55 DATA 1,106,50,2,80,50,4,319,50
56 DATA 1,119,50,2,80,50,4,379,50
57 DATA 1,119,50,2,80,50,4,319,50  
58 DATA 1,0,50,2,0,50,4,478,50
59 DATA 1,0,50,2,60,50,4,379,50
60 DATA 1,119,150,2,89,150,4,358,150
61 DATA 1,0,50,2,71,50,4,426,50
62 DATA 1,0,50,2,53,50,4,268,50
63 DATA 1,0,50,2,56,50,4,268,50
64 DATA 1,0,50,2,53,50,4,319,50
65 DATA 1,47,50,4,319,50,2,0,50
66 DATA 1,45,100,4,284,100,2,0,100 
67 DATA 1,47,50,4,568,50,2,0,50
68 DATA 1,53,50,4,568,50,2,0,50
69 DATA 1,89,100,2,53,100,4,426,100
70 DATA 1,89,100,2,53,100,4,851,100
71 DATA 1,0,100,2,0,100,4,0,100
72 DATA 1,89,100,2,0,100,4,426,100 
73 DATA 1,89,50,2,0,50,4,284,50  
74 DATA 1,106,100,2,0,100,4,358,100
75 DATA 1,71,50,2,0,50,4,0,50
76 DATA 1,80,50,2,0,50,4,284,50
77 DATA 1,89,50,2,0,50,4,284,50
78 DATA 1,95,50,2,0,50,4,284,50
79 DATA 1,95,50,2,127,50,4,284,50
80 DATA 1,113,50,2,0,50,4,568,50
81 DATA 1,113,50,2,319,50,4,568,50
82 DATA 1,0,50,2,284,50,4,0,50
83 DATA 1,0,50,2,379,50,4,0,50
84 DATA 1,71,50,2,0,50,4,358,50
85 DATA 1,71,50,2,119,50,4,358,50
86 DATA 1,89,50,2,0,50,4,284,50
87 DATA 1,89,50,2,60,50,4,284,50
88 DATA 1,67,50,2,0,50,4,358,50
89 DATA 1,71,50,2,0,50,4,358,50   
90 DATA 1,80,50,2,0,50,4,478,50
91 DATA 1,80,50,2,106,50,4,478,50
92 DATA 1,95,50,2,0,50,4,0,50
93 DATA 1,95,50,2,127,50,4,0,50
94 DATA 1,119,50,2,0,50,4,0,50
95 DATA 1,119,50,2,71,50,4,338,50
96 DATA 1,67,50,2,0,50,4,319,50
97 DATA 1,67,50,2,106,50,4,319,50
98 DATA 1,67,50,2,80,50,4,268,50
99 DATA 1,53,50,2,80,50,4,268,50 
100 DATA 1,60,50,2,0,50,4,319,50
101 DATA 1,67,50,2,0,50,4,319,50
102 DATA 1,71,50,2,0,50,4,213,50
103 DATA 1,71,50,2,80,50,4,213,50
104 DATA 1,89,50,2,0,50,4,426,50
105 DATA 1,95,50,2,0,50,4,426,50
106 DATA 1,106,50,2,0,50,4,0,50
107 DATA 1,71,50,2,0,50,4,239,50
108 DATA 1,53,50,2,71,50,4,268,50
109 DATA 1,53,2,2,0,2,4,268,2
110 DATA 1,53,48,2,71,48,4,268,48
111 DATA 1,53,50,2,80,50,4,536,50
112 DATA 1,45,50,2,80,50,4,536,50
113 DATA 1,47,50,2,0,50,4,268,50
114 DATA 1,53,50,2,0,50,4,268,50
115 DATA 1,56,50,2,0,50,4,284,50
116 DATA 1,47,50,2,0,50,4,284,50
117 DATA 1,71,50,2,0,50,4,284,50
118 DATA 1,60,50,2,0,50,4,319,50
119 DATA 1,95,50,2,0,50,4,358,50
120 DATA 1,80,50,2,0,50,4,379,50
121 DATA 1,89,100,2,0,100,4,426,100
122 DATA 1,89,50,2,0,50,4,284,50  
123 DATA 1,106,100,2,0,100,4,358,100
124 DATA 1,71,50,2,0,50,4,0,50
125 DATA 1,80,50,2,0,50,4,284,50
126 DATA 1,89,50,2,0,50,4,284,50
127 DATA 1,95,50,2,0,50,4,284,50  
128 DATA 1,95,50,2,127,50,4,284,50
129 DATA 1,113,50,2,0,50,4,568,50
130 DATA 1,113,50,2,319,50,4,568,50
131 DATA 1,0,50,2,284,50,4,0,50
132 DATA 1,0,50,2,379,50,4,0,50
133 DATA 1,71,50,2,0,50,4,358,50  
134 DATA 1,71,50,2,119,50,4,358,50
135 DATA 1,89,50,2,0,50,4,284,50 
136 DATA 1,89,50,2,60,50,4,284,50 
137 DATA 1,67,50,2,0,50,4,358,50
138 DATA 1,71,50,2,0,50,4,358,50
139 DATA 1,80,50,2,0,50,4,478,50  
140 DATA 1,80,50,2,106,50,4,478,50  
141 DATA 1,95,50,2,0,50,4,0,50 
142 DATA 1,95,50,2,127,50,4,0,50 
143 DATA 1,119,50,2,0,50,4,0,50 
144 DATA 1,119,50,2,71,50,4,338,50
145 DATA 1,67,50,2,0,50,4,319,50   
146 DATA 1,67,50,2,106,50,4,319,50
147 DATA 1,67,50,2,80,50,4,268,50 
148 DATA 1,53,50,2,80,50,4,268,50
149 DATA 1,60,50,2,0,50,4,319,50  
150 DATA 1,67,50,2,0,50,4,319,50 
151 DATA 1,71,50,2,0,50,4,213,50
152 DATA 1,71,50,2,80,50,4,213,50 
153 DATA 1,71,50,2,89,50,4,0,50
154 DATA 1,0,2,2,89,2,4,0,2
155 DATA 1,71,50,2,95,50,4,239,50
156 DATA 1,53,50,2,0,50,4,268,50
157 DATA 1,53,50,2,89,50,4,284,50
158 DATA 1,80,50,2,53,50,4,268,50
159 DATA 1,47,50,2,67,50,4,319,50
160 DATA 1,45,50,2,71,50,4,284,50
161 DATA 1,45,50,2,53,50,4,284,50 
162 DATA 1,47,50,2,56,50,4,568,50
163 DATA 1,47,50,2,80,50,4,568,50
164 DATA 1,0,50,2,53,50,4,426,50
165 DATA 1,67,50,2,53,50,4,426,50
166 DATA 1,71,50,2,53,50,4,426,50 
167 DATA 1,80,50,2,53,50,4,426,50 
168 DATA 1,89,50,2,0,50,4,851,50
169 DATA 1,95,50,2,0,50,4,851,50
170 DATA 1,106,50,2,142,50,4,426,50
171 DATA 1,106,50,2,142,50,4,451,50
172 DATA 1,0,2,2,0,2,4,451,2
173 DATA 1,106,50,2,142,50,4,426,50
174 DATA 1,106,50,2,142,50,4,379,50
175 DATA 1,106,50,2,142,50,4,358,50
176 DATA 1,106,50,2,142,50,4,319,50
177 DATA 1,95,50,2,113,50,4,284,50
178 DATA 1,95,50,2,113,50,4,319,50
179 DATA 1,0,2,2,0,2,4,319,2
180 DATA 1,95,50,2,113,50,4,284,50
181 DATA 1,95,50,2,113,50,4,379,50
182 DATA 1,95,50,2,113,50,4,451,50
183 DATA 1,95,50,2,113,50,4,568,50
184 DATA 1,71,50,2,119,50,4,358,50 
185 DATA 1,71,50,2,119,50,4,379,50
186 DATA 1,0,2,2,0,2,4,379,2
187 DATA 1,71,50,2,119,50,4,358,50
188 DATA 1,71,50,2,119,50,4,319,50
189 DATA 1,71,50,2,119,50,4,284,50
190 DATA 1,71,50,2,119,50,4,268,50
191 DATA 1,80,50,2,95,50,4,239,50
192 DATA 1,80,50,2,95,50,4,319,50
193 DATA 1,0,2,2,0,2,4,319,2
194 DATA 1,80,50,2,95,50,4,379,50
195 DATA 1,80,50,2,95,50,4,319,50
196 DATA 1,80,50,2,95,50,4,478,50
197 DATA 1,80,50,2,95,50,4,379,50 
198 DATA 1,67,50,2,106,50,4,319,50
199 DATA 1,67,50,2,106,50,4,338,50
200 DATA 1,0,2,2,0,2,4,338,2
201 DATA 1,67,50,2,80,50,4,319,50
202 DATA 1,67,50,2,80,50,4,284,50
203 DATA 1,67,50,2,80,50,4,268,50
204 DATA 1,67,50,2,80,50,4,239,50
205 DATA 1,71,50,2,89,50,4,213,50
206 DATA 1,71,50,2,89,50,4,284,50
207 DATA 1,0,2,2,0,2,4,284,2
208 DATA 1,71,50,2,89,50,4,358,50
209 DATA 1,71,50,2,89,50,4,284,50
210 DATA 1,71,50,2,89,50,4,426,50
211 DATA 1,71,50,2,89,50,4,358,50 
212 DATA 1,53,50,2,71,50,4,536,50
213 DATA 1,53,50,2,71,50,4,358,50
214 DATA 1,47,50,2,80,50,4,268,50
215 DATA 1,47,50,2,80,50,4,284,50
216 DATA 1,47,50,2,80,50,4,319,50
217 DATA 1,53,50,2,80,50,4,268,50
218 DATA 1,56,50,2,95,50,4,284,50
219 DATA 1,56,50,2,95,50,4,268,50
220 DATA 1,56,50,2,95,50,4,284,50
221 DATA 1,56,50,2,95,50,4,319,50
222 DATA 1,56,50,2,95,50,4,358,50 
223 DATA 1,0,2,2,0,2,4,379,2
224 DATA 1,89,50,2,142,50,4,426,50
225 DATA 1,89,50,2,142,50,4,568,50
226 DATA 1,0,2,2,0,2,4,568,2
227 DATA 1,89,50,2,142,50,4,716,50
228 DATA 1,89,50,2,142,50,4,568,50
229 DATA 1,89,50,2,142,50,4,851,50
230 DATA 1,89,50,2,142,50,4,716,50
231 DATA 1,95,50,2,113,50,4,568,50
232 DATA 1,95,50,2,113,50,4,379,50
233 DATA 1,0,2,2,0,2,4,379,2
234 DATA 1,95,50,2,113,50,4,284,50
235 DATA 1,95,50,2,113,50,4,319,50
236 DATA 1,95,50,2,113,50,4,358,50
237 DATA 1,95,50,2,113,50,4,379,50
238 DATA 1,71,50,2,89,50,4,358,50
239 DATA 1,71,50,2,89,50,4,478,50
240 DATA 1,0,2,2,0,2,4,478,2
241 DATA 1,71,50,2,89,50,4,568,50
242 DATA 1,71,50,2,89,50,4,478,50 
243 DATA 1,71,50,2,89,50,4,716,50
244 DATA 1,71,50,2,89,50,4,568,50
245 DATA 1,80,50,2,95,50,4,478,50
246 DATA 1,80,50,2,95,50,4,536,50
247 DATA 1,0,2,2,0,2,4,536,2
248 DATA 1,80,50,2,95,50,4,478,50
249 DATA 1,80,50,2,95,50,4,426,50
250 DATA 1,80,50,2,95,50,4,379,50
251 DATA 1,80,50,2,95,50,4,358,50
252 DATA 1,67,50,2,106,50,4,319,50
253 DATA 1,67,50,2,106,50,4,426,50
254 DATA 1,67,50,2,80,50,4,536,50
255 DATA 1,67,50,2,80,50,4,426,50
256 DATA 1,67,50,2,80,50,4,638,50
257 DATA 1,67,50,2,80,50,4,536,50 
258 DATA 1,71,50,2,89,50,4,426,50
259 DATA 1,71,50,2,89,50,4,379,50
260 DATA 1,71,50,2,89,50,4,426,50
261 DATA 1,71,50,2,0,50,4,478,50
262 DATA 1,53,50,2,80,50,4,536,50
263 DATA 1,56,50,2,80,50,4,568,50
264 DATA 1,53,50,2,0,50,4,536,50
265 DATA 1,47,50,2,0,50,4,638,50
266 DATA 1,45,50,2,71,50,4,284,50
267 DATA 1,53,50,2,0,50,4,319,50
268 DATA 1,47,50,2,56,50,4,284,50
269 DATA 1,71,50,2,0,50,4,568,50
270 DATA 1,53,50,2,89,50,4,213,50
271 DATA 1,53,50,2,89,50,4,284,50
272 DATA 1,53,50,2,89,50,4,358,50
273 DATA 1,53,50,2,89,50,4,284,50
274 DATA 1,53,100,2,89,100,4,426,100
275 DATA 1,0,100,2,0,100,4,0,100
276 MODE 1:PRINT TAB(15);"METRO 2018":PRINT:PRINT:INPUT "Instructions imprimÈes (O/N) ";a$:IF LEFT$(UPPER$(a$),1)="O" THEN prt=-1 ELSE prt=0
277 MODE 1
278 RESTORE 285:n%=0:ON SQ(1) GOSUB 283'indice note lue        
279 ON ERROR GOTO 282
280 FOR i=5 TO 23:READ t$:LOCATE 1,I:PRINT t$;:GOSUB 470:CALL &A600:NEXT
281 LOCATE 1,24:READ t$:PRINT t$;:CALL &A600:GOSUB 470:PRINT:CALL &A600:GOTO 281
282 RESTORE 278:ON ERROR GOTO 282:GOTO 281
283 SOUND a%(n%),b%(n%),c%(n%),7:SOUND a%(n%+1),b%(n%+1),c%(n%+1),7:SOUND a%(n%+2),b%(n%+2),c%(n%+2),7:n%=(n%+3) MOD lm%:ON SQ(1) GOSUB 283:IF INKEY$="" THEN RETURN
284 MODE 1:SPEED INK 5,5:INK 0,0:INK 1,10,14:INK 2,1:INK 3,15:LOAD"!IMAGE.PM":LOCATE 1,1:PRINT "    METRO 2018 EN COURS DE CHARGEMENT":RUN"!METRO1"
285 DATA "         --   METRO 2018   --"
286 DATA "",""
287 DATA "  2018-LE METRO,DESAFFECTE,N'EST PLUS"," QU'UN REFUGE POUR MARGINAUX,POETES ET"
288 DATA "HISTORIENS.SES COULOIRS IMMENSES ONT EN","  GRANDE PARTIE ETE OBSTRUES POUR DES"
289 DATA "  RAISONS DE SECURITE.C'EST NOTAMMENT","  LE CAS POUR LA MOITIE NORD DE PARIS."
290 DATA "  MAIS D'ETRANGES RUMEURS CIRCULENT EN","   CE QUI CONCERNE LA MOITIE SUD,ET"
291 DATA "  CERTAINS PRETENDENT MEME QUE LA MORT","    ATTEND CELUI QUI S'Y AVENTURERA.",""
292 DATA "   C'EST POURTANT DANS CE DEDALE PEU","AMICAL QUE C'EST ENFONCE VOTRE MEILLEUR"
293 DATA "AMI HAN DUO,ETUDIANT EN HISTOIRE,POUR Y","TROUVER DES ELEMENTS,AFIN DE DOCUMENTER","SA THESE."
294 DATA "","   S'IL VOUS A CONFIE SON INTENTION"," D'EXPLORER LE LABYRINTHE,CE N'EST PAS"
295 DATA " SANS PRECISER QU'IL REVIENDRAIT AVANT"," LA TOMBEE DE LA NUIT."
296 DATA "","   OR,IL Y A PLUS DE 48 HEURES QUE VOUS","   ETES SANS NOUVELLE DE LUI."
297 DATA " C'EST DONC AVEC LA FERME INTENTION DE"," LE RETROUVER ET DE LE RAMENER VIVANT"
298 DATA "   A LA SURFACE, QUE VOUS REJOIGNEZ"," UNE ANCIENNE ENTREE DE STATION,SUIVANT"
299 DATA "   EN CELA LES INDICATIONS LAISSEES","    PAR VOTRE AMI AVANT SON DEPART."
300 DATA "","          --------------------",""
301 DATA "METRO 2018 : LE JEU","",""
302 DATA "MÈtro 2018 est un jeu d'aventure bien","diffÈrent de ses prÈdecesseurs."
303 DATA "Sa prÈsentation,la faÎon de jouer,les","ÈvÉnements y intervenant,en font un"
304 DATA "jeu de 3e gÈnÈration,beaucoup plus","complexe,plus sophistiquÈ,plus proche"
305 DATA "de la vÈritable aventure."
306 DATA"","Ces progrÉs dans le jeu,vous aurez","avant tout Ë les assimiler.PassÈ ce"
307 DATA "cap,vous serez Ë mÊme de profiter","pleinement du plaisir pur que peut"
308 DATA "procurer un jeu d'aventure de 3e","gÈnÈration."
309 DATA "","          --------------------",""
310 DATA "         L'ECRAN DE JEU",""
311 DATA "L'Ècran est partagÈ en petites fenÊtres","possÈdant chacune un role prÈcis."
312 DATA "La plus grosse (coin supÈrieur gauche","de l'Ècran) rÈsume votre situation"
313 DATA "de faÎon graphique : vue en plan de la","piÉce,des personnages rÈsidents,des"
314 DATA "objets visibles,des points de passage.","Vous y remarquerez deux traces de pieds"
315 DATA "qui reprÈsentent votre personnage.","Le nom de la piÉce est affichÈ sous le"
316 DATA "dessin,Èventuellement suivi du numÈro","de la ligne de mÈtro correspondante."
317 DATA "Exemple : 'GOBELINS/7' signifie que","vous Êtes Ë la station Gobelins sur la"
318 DATA "ligne No 7.Cette information vous","sera souvent utile afin de diffÈrencier"
319 DATA "les stations servant de correspondances","entre diffÈrentes lignes."
320 DATA "Sous ces informations se trouve une","fenÊtre indiquant l'Ètat de votre"
321 DATA "personnage.PDV reprÈsente par exemple","l'Ètat de vos Points De Vie.Le role"
322 DATA "des points reprÈsentÈs dans cette","fenÊtre sera expliquÈ plus tard."
323 DATA "A droite de la fenÊtre des points est","situÈe une fenÊtre frÈquemment utile :"
324 DATA "elle sert, en effet, d'organe de","communication au programme qui y envoie"
325 DATA "tous les renseignements qu'il estime","devoir donner au joueur : liste des"
326 DATA "objets visibles,commentaires des","ÈvÉnements..."
327 DATA "Sous cette fenÊtre,il existe une place","rÈservÈe Ë l'entrÈe des commandes."
328 DATA "C'est dans cet espace que seront","acceptÈs les ordres du joueur,tapÈs"
329 DATA "au clavier soit en minuscules soit en","majuscules.La longueur limite d'une"
330 DATA "commande est de trois lignes d'Ècran.","Il est possible d'effacer un caractÉre"
331 DATA "erronÈ avec la touche DEL.C'est la","seule touche d'Èdition permise."
332 DATA "Une fois la commande tapÈe,le joueur","doit la valider Ë l'aide de la touche"
333 DATA "ENTER.Elle sera alors prise en charge","par l'interprÈteur de commandes du jeu."
334 DATA "Enfin,il reste deux autres fenÊtres","situÈes Ë droite du dessin de la piÉce."
335 DATA "L'une d'entre elles affiche les points","caractÈristiques des RÈsidents"
336 DATA "rencontrÈs (force,PDV...),l'autre","affiche l'horloge (mise Ë 00:00 au"
337 DATA "dÈbut du jeu) et la liste des objets","transportÈs par le joueur,celui tenu"
338 DATA "en main Ètant mis en Èvidence (Ècrit en","couleur inversÈe)."
339 DATA ""
340 DATA "Une indication en dessous des fenÊtres","rappelle leur role."
341 DATA "","          --------------------",""
342 DATA "           LES POINTS DU JOUEUR"
343 DATA "","Le joueur est caractÈrisÈ par un","certain nombre de points.Il faut"
344 DATA "avant tout assimiler leur role avant","de se lancer dans une partie."
345 DATA "Les amateurs de jeux de roles n'auront","aucune difficultÈ Ë ce sujet."
346 DATA "Le potentiel le plus important est PDV:","il reprÈsente l'Ètat physique du joueur"
347 DATA "en Points De Vie.Si les PDV tombent Ë","zÈro,le joueur est mort.S'il existe de"
348 DATA "nombreux moyens de rÈcupÈrer des PDV,","nous prÈfÈrons toutefois mettre en"
349 DATA "Èvidence le fait qu'il existe Ègalement","de nombreuses faÎons d'en perdre !"
350 DATA "RES reprÈsente la rÈsistance aux coups.","Ce potentiel varie beaucoup au cours du"
351 DATA "jeu.Plus il est ÈlevÈ,moins le joueur","est vulnÈrable aux coups des rÈsidents"
352 DATA "hostiles.RES=15 correspond Ë une","quasi-invulnÈrabilitÈ. RES=1,par contre"
353 DATA "indique que le plus faible des","adversaires sera le plus fort."
354 DATA "RES est utilisÈ dans les combats:pour","avoir la possibilitÈ de toucher le"
355 DATA "joueur,un rÈsident doit avoir une force","supÈrieure Ë la rÈsistance du joueur."
356 DATA "FOR est le complÈment de RES:il","reprÈsente la force du joueur, opposÈe"
357 DATA "Ë la rÈsistance du rÈsident lors des","combats."
358 DATA "La force varie Ègalement beaucoup."
359 DATA "TC est vital.Ce nombre reprÈsente","le potentiel 'Tentative de Coup' du"
360 DATA "joueur.Variant de 1 Ë 15,il indique","la facilitÈ avec laquelle le joueur"
361 DATA "rÈussit un coup lors d'un combat.","Il va de soi que plus la TC est ÈlevÈe,"
362 DATA "plus le joueur est efficace lors des","combats.Les rÈsidents possÊdent"
363 DATA "Ègalement une TC,bien que celle-ci ne","soit jamais affichÈe.Ne perdez pas"
364 DATA "de vue qu'une TC faible,si elle est","un handicap,peut Être 'rattrapÈe', dans"
365 DATA "une certaine mesure, par une force","ÈlevÈe,puisque dans ce cas le peu"
366 DATA "de coups portÈs sera trÈs efficace."
367 DATA "FAT reprÈsente la fatigue du joueur.","Ce nombre grandit lors des actions ou"
368 DATA "des dÈplacements et diminue lors du","repos (aucune action en cours,aucun"
369 DATA "dÈplacement).La fatigue provoque,si","elle dÈpasse certaines limites,des"
370 DATA "effets secondaires; perte de force,de","rÈsistance,Èvanouissements...ou mort"
371 DATA "si la fatigue est rÈellement trop","ÈlevÈe."
372 DATA "Enfin,TICK reprÈsente la fortune du","joueur,en Equivalents-Tickets de mÈtro"
373 DATA "(Les tickets de mÈtro sont trÈs","recherchÈs par les collectionneurs)."
374 DATA "","D'autre part,deux scores sont retenus","par le programme : ils ne sont affichÈs"
375 DATA "qu'Ë la fin de la partie.Il appartient","au joueur de dÈterminer quelles actions"
376 DATA "lui rapportent des points de combat ou","d'expÈrience,et lesquelles lui en"
377 DATA "enlÉvent."
378 DATA "","          --------------------",""
379 DATA "         COMMANDES ET DEPLACEMENTS",""
380 DATA "L'entrÈe des commandes dans MÈtro 2018","se fait par le clavier,sous la forme de"
381 DATA "phrases ou d'associations de verbes et","de mots.Plusieurs prÈcisions s'imposent"
382 DATA "Ë ce sujet.","Tout d'abord,le programme possÉde un","vocabulaire d'environ 400 mots (200"
383 DATA "verbes et 200 noms) qui peut en partie","Être affichÈ par la commande VOCA."
384 DATA "Ensuite,l'analyse des commandes est","extrÊmement souple,puisqu'aussi bien"
385 DATA "la commande 'PREND LIVRE' et la phrase","'EH TOTO, MAGNE TOI D'EMBARQUER LE"
386 DATA "BOUQUIN,J'AI PAS QUE CA A FAIRE !'","seront prises en compte identiquement."
387 DATA "Les commandes peuvent Être tapÈes en","minuscules ou majuscules sans problÉme."
388 DATA "De plus,l'analyse des commandes n'est","pas la seule Ë avoir bÈnÈficiÈ de"
389 DATA "techniques innovatrices; en effet,","toute commande utile dans le jeu est"
390 DATA "associÈe Ë un effet,parfois invisible.","Le joueur devra s'imprÈgner de ce"
391 DATA "principe; quelle que soit la rÈponse","Ë sa commande,le programme N'OUBLIE"
392 DATA "JAMAIS RIEN !"
393 DATA ""
394 DATA "Il existe de plus 3 touches gÈnÈrant","des commandes immÈdiates sans rapport","immÈdiat avec le jeu :"
395 DATA "- CTRL-S suspend le jeu.Un simple","  appui de touche relance la partie."
396 DATA "- CTRL-Q interrompt la partie avec","  affichage des scores.La partie peut","  reprendre ensuite."
397 DATA "- CTRL-P passe la main au moniteur","  du programme. Celui-ci vous permet de","  sauver la partie en cours,ou de"
398 DATA "  rÈcupÈrer une partie prÈcedemment ","  sauvegardÈe.Il est aussi possible de","  reprendre le cours normal du jeu."
399 DATA "Les dÈplacements se font Ë l'aide du","joystick ou des touches-flÉches du"
400 DATA "clavier.Pour passer une porte,le joueur","doit se diriger dans sa direction et la"
401 DATA "'heurter'.Toutefois,seules les portes","et grilles ouvertes permettent le"
402 DATA "passage.Une porte peut Être fermÈe dans","plusieurs cas : ou bien un rÈsident"
403 DATA "l'a fermÈ quand le joueur n'Ètait pas","prÈsent,ou bien il a piÈgÈ la piÉce"
404 DATA "sur laquelle cette porte donne,ou bien","la porte/grille nÈcessite une action"
405 DATA "particuliÉre pour son ouverture."
406 DATA "","L'initiative du combat avec un rÈsident","sera la plupart du temps laissÈe Ë"
407 DATA "l'apprÈciation du joueur,sauf si le","rÈsident est dÈjË hostile Ë 100 %,"
408 DATA "auquel cas il se prÈcipite sur le","joueur dÈs sa rencontre. Dans le cas"
409 DATA "contraire,il ne bouge pas et attend.","Si le joueur veut le combattre,il doit"
410 DATA "dÈclencher les hostilitÈs en appuyant","le bouton TIR du joystick ou la touche"
411 DATA "COPY du clavier.Cette action Ë un effet","dÈpendant de plusieurs paramÉtres :"
412 DATA " - Si le joueur a en main une arme de","   tir,celle-ci est utilisÈe (si le"
413 DATA "   joueur n'est pas au contact) contre","   le rÈsident.Celui-ci vient au"
414 DATA "   contact avant de frapper le joueur."," - S'il tient une arme de frappe en","   main (ou un objet pouvant en tenir"
415 DATA "   lieu), celle-ci est utilisÈe mais","   uniquement lorsque le joueur et le"
416 DATA "   rÈsident sont au contact."," - Si aucune arme ne se trouve dans la"
417 DATA "   main du joueur,2 cas se prÈsentent :","   1:Le joueur est au contact.Il se bat"
418 DATA "     alors Ë mains nues contre le","     rÈsident."
419 DATA "   2:Si le joueur n'est pas au contact,","     rien de spÈcial ne se passe mise"
420 DATA "     Ë part l'hostilitÈ du rÈsident qui","     augmente.Lorsque le rÈsident"
421 DATA "     atteint sa limite de tolÈrance,il","     devient agressif et attaque le"
422 DATA "     joueur."
423 DATA "Le fait d'utiliser une arme est un","facteur de sÈcuritÈ; ce sont les"
424 DATA "caractÈristiques de combat de l'arme","qui sont utilisÈes (TC,force)."
425 DATA "","          --------------------",""
426 DATA "         RESIDENTS HOSTILES/AMICAUX",""
427 DATA "Certains rÈsidents de MÈtro 2018 sont","hostiles par nature,certains sont"
428 DATA "amicaux,mais certains peuvent aussi","changer d'avis Ë votre sujet."
429 DATA "Il existe dans le jeu trois sources de","renseignements qui vous seront utiles."
430 DATA "Il appartient au joueur de les trouver","et de savoir les utiliser afin"
431 DATA "d'obtenir des informations sans","lesquelles il lui sera extrÊmement"
432 DATA "difficile de gagner."
433 DATA "De plus,il peut Être trÉs bÈnÈfique","d'amadouer certains rÈsidents.En effet,"
434 DATA "un rÈsident bien traitÈ peut devenir","par la suite un alliÈ fort utile."
435 DATA "Il existe notamment quelques piÉges","d'oÌ le joueur ne pourra sortir qu'avec"
436 DATA "l'aide d'un alliÈ."
437 DATA "","          --------------------",""
438 DATA "         SAISIE ET GESTION DES OBJETS",""
439 DATA "Le joueur peut transporter jusqu'Ë","cinq objets,dont l'un en main."
440 DATA "Pour prendre un objet,il suffit de","placer le symbole du joueur dessus"
441 DATA "et de taper la commande correspondante.","Pour prendre un objet en main,il suffit"
442 DATA "de taper la mÊme commande.","Exemple:si le joueur transporte la"
443 DATA "cafetiÉre,il suffit de demander","JE PRENDS LA CAFETIERE pour que"
444 DATA "celle-ci soit placÈe dans sa main.Elle","apparait alors en couleur inversÈe dans"
445 DATA "la liste des objets transportÈs."
446 DATA "Certains objets ne sont pas mobiles;","le programme affiche alors un message"
447 DATA "l'indiquant lorsque le joueur tente","de les emporter."
448 DATA "Il est parfaitement possible de poser","un objet dans une piÉce pour le"
449 DATA "rÈcupÈrer plus tard.Mais attention aux","ennemis jurÈs; ils se promÉnent dans le"
450 DATA "jeu et s'emparent parfois des objets","qui trainent."
451 DATA "","          --------------------",""
452 DATA "         LE VIRUS ET LA FUITE DE GAZ",""
453 DATA "Deux ÈlÈments peuvent gÊner le joueur","dans son exploration."
454 DATA "Un virus indÈtectable se rÈpand en","effet dans les piÉces,ainsi qu'une"
455 DATA "dangereuse fuite de gaz.Il existe"
456 DATA "toutefois des moyens de protection.","La fuite de gaz n'est pas dangereuse en"
457 DATA "elle-mÊme si le joueur ne passe pas","trop de temps dans la piÉce envahie."
458 DATA "Quant au virus,il existe deux moyens","de s'immuniser temporairement contre"
459 DATA "ses effets (perte de PDV).Nous ne les","donnons pas.Au joueur de les dÈcouvrir,"
460 DATA "ou de trouver un rÈsident coopÈratif","qui les lui indiquera."
461 DATA "","          --------------------","",""
462 DATA "Afin d'Èviter une hÈcatombe parmi les","joueurs, voici quelques conseils","destinÈs Ë faciliter les dÈbuts :"
463 DATA "- N'hÈsitez pas Ë observer les objets","  et Ë dialoguer avec les rÈsidents."
464 DATA "- Ne nombreuses rÈfÈrences cinÈmatogra-","  phiques peuvent aider le joueur, mais"
465 DATA "  elles ne sont pas essentielles dans","  la rÈsolution de l'Ènigme.","- Les 400 mots de vocabulaire et"
466 DATA "  l'analyse des commandes permettent","  d'obtenir les mÊmes effets de","  multiples faÎons."
467 DATA "","IL FAUT BIEN PLUS QUE CES CONSEILS ET","DE LA CHANCE POUR VAINCRE METRO 2018.","IL FAUT DE L'EXPERIENCE. MAIS CELA,","NOUS NE POUVONS LE LIVRER AVEC LE JEU !"
468 DATA "","BONNE CHANCE TOUT DE MEME ...","","","","","",""
469 DATA ""
470 IF prt=0 THEN RETURN ELSE FOR i%=1 TO LEN(t$):c$=MID$(t$,i%,1):IF c$>="È" AND c$<="Î" THEN c$=MID$("eeeau|c",ASC(c$)-199,1) ELSE IF c$<" " THEN i%=i%-(c$<>""):c$=""
471 PRINT#8,c$;:NEXT:PRINT#8:RETURN