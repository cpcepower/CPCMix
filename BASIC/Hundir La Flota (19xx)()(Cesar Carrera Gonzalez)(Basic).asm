5 h=HIMEM
60 OPENOUT"w":MEMORY &5FFF:LOAD"flota1",&A000:CALL &A000:MODE 0:BORDER 0:INK 0,1:INK 1,24:INK 2,11:INK 3,6:INK 4,26:INK 5,0:INK 6,4:INK 7,6,24:INK 14,26,1:LOAD"flota.scr":CALL &6000:PEN 3:LOCATE 2,22:PRINT"pulsa":LOCATE 1,24:PRINT"ESPACIO":LOCATE 20,2
70 PRINT"5":MEMORY h
80 LOCATE 14,4:PRINT"niveles":LOCATE 19,6:PRINT"de":LOCATE 16,8:PRINT"juego":PEN 1:|SCREENCOPY,2,1
90 READ a,b:IF a=-1 THEN RESTORE:GOTO 90:ELSE IF a=-2 THEN FOR R=1 TO b:NEXT:GOTO 90
100 b=b*10:SOUND 1,a,b:IF INKEY(47)<>-1 THEN MODE 2:CLEAR:GOTO 120
110 GOTO 90:DATA 190,3,179,3,159,6,119,6,127,3,-2,1945,127,3,142,3,-2,545,142,3,159,3,-2,545,159,3,142,3,127,3,119,3,159,3,190,3,179,3,159,6,119,6,127,3,-2,1990,127,3,142,3,-2,545,142,3,159,3,-2,545,159,3,142,3,127,3,119,6,159,6,119,6,-2,2250,-1,0
120 LOCATE 28,1:PRINT CHR$(24)+" INTRUCCIONES DE MANEJO "+CHR$(24):PRINT:PRINT"   El juego esta basado en el tipico juego de los barcos, consistente en hundir al ordenador sus 10 barcos antes de que este hunda los tuyos.":PRINT
140 PRINT"   Estos 10 barcos con los que contais cada jugador, (tu y el ordenador), son dediferentes tama«os.  Disponemos de  1 barco de cuatro cuadriculas,  2 barcos  detres cuadriculas, 3 barcos de dos cuadriculas y 4 barcos de una cuadricula.":PRINT
150 PRINT"   Una vez que el ordenador haya colocado sus barcos, sin que tu sepas donde es-tan, claro,  aparecera en la cuadricula superior izquierda del panel del jugador";
160 PRINT"un punto, a la vez que suena un pitido. Esto indica que debemos colocar nuestrosbarcos. Para ello eleginos con las teclas del cursor una  cuadricula y  pulsamos";
170 PRINT"[COPIA]. Con el barco de 4 cuadriculas elegiremos 4 consecutivas,  para los de 3elegiremos 3 consecutivas, 2 para los de 2, y 1 para los de 1. Ahora bien, debe-remos atender a las siguientes reglas para colocar correctamente los barcos: Los";
180 PRINT"barcos se podran colocar horizontalmente o verticalmente pero nunca en diagonal,zig-zag, etc...  Los barcos  no podran colocarse unos junto a otros sin al menosuna casilla de separacion entre ellos.  Los barcos deberan colocarse en el orden";
190 PRINT"establecido anteriormente.  (El ordenador no acepta una cuadricula que no sea e-legida correctamente).":PRINT
200 PRINT"   Si te equivocas y deseas anular una casilla, coloca el punto del cursor en lacasilla a anular y pulsa [CONTROL],  pero debera hacerse en orden inverso a comose han elegido.":CLEAR INPUT:CALL &BB18:CLS
210 PRINT"   Una vez colocados todos los barcos, el ordenador te preguntara el NIVEL en elque quieres jugar. Elegiras entre 1, 2, 3, 4 o 5, teniendo en cuenta que 5 es elmas facil y 1 es el mas dificil.":PRINT
220 PRINT"   Hechas estas operaciones,comienza el juego. Existe una ventana de informaciondebajo del  respectivo panel.  En esta  ventana aparecera  un punto que indica a";
230 PRINT"quien le toca ``disparar''.  Cuando te corresponda a ti, elegiras una cuadriculacon el teclado numerico.Primero la coordenada horizontal y despues la coordenadavertical.":PRINT
240 PRINT"   Si el disparo es fallido, aparecera el mensaje AGUA. Si el disparo ha dado enuna de las cuadriculas de que se compone un barco, nos indicara que le hemos TO-";
250 PRINT"CADO. Entonces debemos localizarle en las cuadriculas circundantes hasta  que le";
260 PRINT"hundamos. (Nunca deberas abandonar un barco tocado hasta que no sea hundido. Re-cuerda que solo se puede encontrar en posicion horizontal o vertical). Cuando elbarco sea tocado en todas sus cuadriculas, aparecera el mensaje de HUNDIDO.":PRINT
270 PRINT"   Cuando un barco es hundido,  el ordenador se encarga de se«alizarnos las cua-driculas circundantes donde no puede existir ningun otro, con el fin de  facili-tarnos la busqueda. Tambien se«ala un disparo fallido para que no le repitanos.
280 PRINT:PRINT"   EL ORDENADOR ``DISPARA'' Y BUSCA TUS BARCOS DE FORMA INTELIGENTE Y TOTALMENTEINDEPENDIENTE. ¯¯¯  BUENA SUERTE  !!!":LOCATE 31,25:PRINT CHR$(24)+" PULSA UNA TECLA "+CHR$(24):CLEAR INPUT:CALL &BB18:RESTORE 300
300 BORDER 1:MODE 2:INK 0,1:INK 1,1:DATA 1,2,3,4,5,6,7,8,9,0:FOR x=1 TO 10:READ a(x):LOCATE-2+(3*x),14:PRINT a(x):LOCATE 47+(3*x),14:PRINT USING"###";a(x);:NEXT:FOR y=1 TO 10:LOCATE 31,y+2:PRINT USING"##";a(y):LOCATE 48,y+2:PRINT USING"##";a(y)
310 NEXT:FOR y=367 TO 207 STEP-16:MOVE 0,y:DRAW 240,y,1:MOVE 399,y:DRAW 639,y,1:NEXT:FOR x=0 TO 240 STEP 24:MOVE x,367:DRAW x,207:NEXT:FOR x=399 TO 639 STEP 24:MOVE x,367:DRAW x,207:NEXT:MOVE 0,399:DRAW 639,399,1:MOVE 0,385:DRAW 639,385:MOVE 0,394:FILL 1
320 MOVE 0,170:DRAW 639,170:MOVE 0,160:DRAW 639,160:MOVE 0,165:FILL 1:MOVE 0,160:DRAW 0,0:DRAW 639,0:DRAW 639,160:MOVE 7,160:DRAW 7,11:DRAW 632,11:DRAW 632,160:MOVE 2,2:FILL 1:PAPER 1:PEN 0:LOCATE 11,1:PRINT" ORDENADOR ":LOCATE 60,1:PRINT"  JUGADOR  "
330 PAPER 0:PEN 1:MOVE 285,319:DRAW 355,319:DRAW 355,271:DRAW 285,271:DRAW 285,319:MOVE 316,399:DRAW 316,325:DRAW 277,325:DRAW 277,265:DRAW 316,265:DRAW 316,160:MOVE 324,399:DRAW 324,325:DRAW 363,325:DRAW 363,265:DRAW 324,265:DRAW 324,160:MOVE 320,200
340 FILL 1:MOVE 316,0:DRAW 316,160,1:MOVE 324,0:DRAW 324,160,1:MOVE 320,100:FILL 1:MOVE 0,100:DRAW 639,100:MOVE 0,108:DRAW 639,108:MOVE 100,104:FILL 1:MOVE 420,104:FILL 1:LOCATE 4,16:PRINT"LE FALTAN  POR HUNDIR AL ORDENADOR":LOCATE 44,16
360 PRINT"LE FALTAN  POR HUNDIR AL JUNGADOR":F$=CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143):LOCATE 4,17:PRINT F$+" .. 1":LOCATE 44,17:PRINT F$+" .. 1"
370 F$=CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143):LOCATE 4,18:PRINT F$+" ..... 2":LOCATE 44,18:PRINT F$+" ..... 2":F$=CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143)+CHR$(143):LOCATE 27,17:PRINT F$+" .. 3"
380 LOCATE 66,17:PRINT F$+" .. 3":F$=CHR$(143)+CHR$(143)+CHR$(143):LOCATE 27,18:PRINT F$+" ..... 4":LOCATE 66,18:PRINT F$+" ..... 4":MOVE 15,127,0:DRAW 100,127,0:MOVE 190,127,0:DRAW 234,127,0:MOVE 336,127:DRAW 420,127,0:MOVE 512,127,0:DRAW 548,127,0
390 MOVE 0,0:DRAW 0,10,1:CLEAR:INK 0,1:INK 1,24:WINDOW#1,37,44,7,7:CLS#1:WINDOW#2,2,79,25,25:PAPER#2,1:PEN#2,0:CLS#2:|SCREENCOPY,3,1:RUN"flota2"