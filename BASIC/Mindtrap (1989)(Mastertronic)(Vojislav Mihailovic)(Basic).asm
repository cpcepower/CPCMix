10 ON BREAK GOSUB 3000:CALL &BB03:bb=34000
20 MODE 1:BORDER 0:INK 0,15:INK 1,0:INK 2,6:INK 3,1:OPENOUT "mind":MEMORY 16383:GOSUB 2020
30 a$=INKEY$:IF a$="" THEN GOSUB 1870:GOTO 30
40 MODE 1:OUT &BC00,1:OUT &BD00,0:INK 0,0:BORDER 0:INK 2,11:INK 1,24:INK 3,6:CALL &A000:DEFINT a,c-z:DEFREAL b:PEN 1:OUT &BC00,6:OUT &BD00,0:SPEED INK 1,1:ON ERROR GOTO 2000
50 PRINT"
60 FOR y=2 TO 23:LOCATE 1,y:PRINT"":LOCATE 31,y:PRINT"
70 NEXT
80 LOCATE 1,21:PRINT CHR$(151)""CHR$(157)
90 PRINT:PRINT
100 PRINT"
110 WINDOW 32,40,1,24
120          PRINT"         Time   0000          Move   0000         Lvl No 000000        Flr No  0000                                                            "
130 PEN 2:WINDOW 33,38,3,13:PRINT" Time  0000        Move  0000       Lvl No000000      Flr No 0000":WINDOW 1,40,1,25:|WLOAD,17,23,65,76,41920
140 OUT &BC00,1:OUT &BD00,40:FOR x=0 TO 25:OUT &BC00,6:OUT &BD00,x:OUT &BC00,7:OUT &BD00,x+5:CALL &BD19:NEXT
150 DIM a(5,6,4),b(6,4),c(6):e=0:f=2:g=1:h=8:ex%=47
160 l=1:t=1:s=1:k=0:u=1:POKE &8CE4,&E6:POKE &8CE5,&8C:PEN 1
170 FOR x=0 TO 5:|WLOAD,22,23,5+x*10,8+x*10,41472+x*64:NEXT
180 |WLOAD,2,20,4,60,16384
190 LOCATE 10,5:PRINT"    Menu
200 LOCATE 10,8:PRINT"1. New game
210 LOCATE 10,10:PRINT"2. Old game
220 LOCATE 10,13:PRINT"3. Joystick
230 LOCATE 10,15:PRINT"4. Keyboard
240 LOCATE 10,17:PRINT"5. Define keys
250 LOCATE 31,2
260 a$=INKEY$:LOCATE 31,2:CALL 36000:IF a$="" THEN 260
270 LOCATE 2,2:PRINT" "
280 IF a$="1" THEN tme%=0:mv%=0:ttm=0:tm=0:GOTO 580
290 IF a$="2" THEN 390
300 IF a$="3" THEN 350
310 IF a$="4" THEN 340
320 IF a$="5" THEN 1680
330 GOTO 260
340 POKE &7549,0:POKE &7556,2:POKE &7563,1:POKE &7570,8:POKE &757D,47:POKE &753D,21:GOTO 360
350 POKE &7549,72:POKE &7556,73:POKE &7563,75:POKE &7570,74:POKE &757D,47:POKE &753D,76
360 |WLOAD,2,20,4,60,16384
370 LOCATE 8,8:IF PEEK(&7549)=0 THEN PRINT"Keyboard selected" ELSE PRINT"Joystick selected
380 CALL &BB03:CALL &BB18:GOTO 180
390 |WLOAD,2,20,4,60,16384:LOCATE 6,10:PRINT"PASSWORD : ";:FOR c=0 TO 9
400 a$=INKEY$:a$=UPPER$(a$):IF a$="" THEN 400 ELSE IF a$=CHR$(127) THEN IF c>0 THEN PRINT" ";:c=c-2:GOTO 420 ELSE 400
410 IF ASC(a$)>31 THEN PRINT a$;:POKE &904F+c,ASC(a$)
420 NEXT
430 LOCATE 6,11:FOR c=0 TO 20
440 a$=INKEY$:a$=UPPER$(a$):IF a$="" THEN 440 ELSE IF a$=CHR$(127) THEN IF c>0 THEN PRINT" ";:c=c-2:GOTO 460 ELSE 440
450 IF ASC(a$)>31 THEN PRINT a$;:POKE &904F+10+c,ASC(a$)
460 NEXT
470 |WLOAD,2,20,4,60,16384:LOCATE 10,10:PRINT"Name: ";:FOR c=0 TO 8:POKE &9046+c,32:NEXT:b$="":d=0
480 a$=INKEY$:a$=UPPER$(a$):IF a$="" THEN 480 ELSE IF a$=CHR$(127) THEN IF d>0 THEN PRINT" ";:d=d-1:b$=LEFT$(b$,LEN(b$)-1):GOTO 480 ELSE 480
490 IF a$=CHR$(13) OR d=9 THEN 500 ELSE d=d+1:PRINT a$;:b$=b$+a$:GOTO 480
500 FOR c=0 TO d-1:POKE &9046+c,ASC(MID$(b$,c+1,1)):NEXT
510 POKE &9071,0:CALL &8F5D:CALL &8F88:IF PEEK(&9071)=1 THEN |WLOAD,2,20,4,60,16384:LOCATE 10,10:PRINT"INVALID PASSWORD":CALL &BB18:GOTO 160
520 a$="":FOR bb=&902C TO &902C+8:a$=a$+CHR$(PEEK(bb)):NEXT:ttm=VAL(a$)
530 a$="":FOR bb=&9035 TO &9035+8:a$=a$+CHR$(PEEK(bb)):NEXT:tm=VAL(a$)
540 a$="":FOR bb=&903E TO &903E+5:a$=a$+CHR$(PEEK(bb)):NEXT
550 k=VAL(a$)/256:l=PEEK(&9044)+1:s=PEEK(&9045)
560 u=32*((l+k*256)/32-INT((l+k*256)/32)):IF u=0 THEN u=32
570 GOTO 620
580 |WLOAD,2,20,4,60,16384:LOCATE 10,10:PRINT"Name: ";:FOR c=0 TO 8:POKE &9046+c,32:NEXT:b$="":d=0
590 a$=INKEY$:a$=UPPER$(a$):IF a$="" THEN 590 ELSE IF a$=CHR$(127) THEN IF d>0 THEN PRINT" ";:d=d-1:b$=LEFT$(b$,LEN(b$)-1):GOTO 590 ELSE 590
600 IF a$=CHR$(13) OR d=9 THEN 610 ELSE d=d+1:PRINT a$;:b$=b$+a$:GOTO 590
610 FOR c=0 TO d-1:POKE &9046+c,ASC(MID$(b$,c+1,1)):NEXT
620 PEN 2:LOCATE 33,10:a$=STR$(l+k*256):d=LEN(a$):PRINT STRING$(7-d,CHR$(48));RIGHT$(a$,d-1):LOCATE 37,13:PRINT RIGHT$(STR$(t),1)
630 |WLOAD,2,20,4,60,16384:b=37000+(l-1)*15:FOR y=1 TO 3:FOR x=1 TO 5:b(x,y)=PEEK(b):b=b+1:NEXT:NEXT:FOR z=1 TO s:FOR y=1 TO 4:FOR x=1 TO 6:a(z,x,y)=7:NEXT:NEXT:NEXT
640 PEN 1:a$=STR$(l+k*256):LOCATE 4,4:PRINT"Level ";STRING$(7-LEN(a$),CHR$(48));RIGHT$(a$,LEN(a$)-1);" has"s;:IF s=1 THEN PRINT"floor" ELSE PRINT"floors
650 IF NOT a$=" 1" THEN LOCATE 6,7:a$=STR$(l+k*256-1):PRINT"LEVEL ";STRING$(7-LEN(a$),CHR$(48));RIGHT$(a$,LEN(a$)-1);" FINISHED
660 LOCATE 6,9:PRINT"TOTAL TIME :";:a$=STR$(ttm):PRINT STRING$(10-LEN(a$),CHR$(48));RIGHT$(a$,LEN(a$)-1):LOCATE 6,11:PRINT"TOTAL MOVES:";:a$=STR$(tm):PRINT STRING$(10-LEN(a$),CHR$(48));RIGHT$(a$,LEN(a$)-1)
670 o=2:FOR d=1 TO 5:IF b(d,2)=1 THEN p=d ELSE NEXT
680 FOR z=1 TO s:n(z)=0:NEXT:FOR z=s+1 TO 5:n(z)=1:NEXT
690 FOR z=1 TO s:FOR y=1 TO 3:FOR x=1 TO 5:IF b(x,y)=1 THEN a(z,x,y)=x:a(z,x+1,y)=x+1:a(z,x+1,y+1)=x+1:a(z,x,y+1)=x
700 NEXT:NEXT:NEXT
710 c$="":b$=STR$(ttm):FOR c=1 TO 10-LEN(b$):c$=c$+"0":NEXT:c$=c$+RIGHT$(b$,LEN(b$)-1):FOR c=0 TO 8:POKE &902C+c,ASC(MID$(c$,c+1,1)):NEXT
720 c$="":b$=STR$(tm):FOR c=1 TO 10-LEN(b$):c$=c$+"0":NEXT:c$=c$+RIGHT$(b$,LEN(b$)-1):FOR c=0 TO 8:POKE &9035+c,ASC(MID$(c$,c+1,1)):NEXT
730 c$="":b$=STR$(l+k*256):FOR c=1 TO 7-LEN(b$):c$=c$+"0":NEXT:c$=c$+RIGHT$(b$,LEN(b$)-1):FOR c=0 TO 5:POKE &903E+c,ASC(MID$(c$,c+1,1)):NEXT
740 POKE &9044,l-1
750 POKE &9045,s:CALL &8E94:LOCATE 6,15:PRINT"PASSWORD : ";:FOR b=35950 TO 35959:PRINT CHR$(PEEK(b));:NEXT:LOCATE 6,16:FOR b=35960 TO 35980:PRINT CHR$(PEEK(b));:NEXT
760 CALL 35536:FOR c=1 TO PEEK(35542):xx%=RND(1):NEXT
770 xx%=RND(1)*5+1:yy%=RND(1)*3+1:zz%=RND(1)*(s-1)+1:IF a(zz%,xx%,yy%)=7 THEN 770 ELSE d=a(zz%,xx%,yy%)
780 FOR c=1 TO s*24:x=RND(1)*5+1:y=RND(1)*3+1:z=RND(1)*(s-1)+1:IF a(z,x,y)=7 THEN c=c-1 ELSE a(zz%,xx%,yy%)=a(z,x,y):zz%=z:xx%=x:yy%=y
790 NEXT:a(z,x,y)=d
800 CALL &BB03:CALL &BB18:|WLOAD,2,20,4,60,16384
810 EVERY 50,3 GOSUB 1650
820 m=0:mv%=(s+1)*100:tme%=mv%
830 PEN 1:FOR y=1 TO 4
840 FOR x=1 TO 6
850 |WLOAD,3+(y-1)*5,4+(y-1)*5,5+(x-1)*10,8+(x-1)*10,41472+(a(t,x,y)-1)*64
860 NEXT:NEXT:PEN 1:FOR y=1 TO 3:FOR x=1 TO 5:IF b(x,y) THEN LOCATE 1+x*5,1+y*5:PRINT CHR$(227)
870 NEXT:NEXT:EI
880 c=2:y=o:x=p
890 GOTO 1140
900 MOVE 16*(1+(x-1)*5),400-16*(1+(y-1)*5)
910 DRAWR 142,0,c
920 DRAWR 0,-142
930 DRAWR -142,0
940 DRAWR 0,142
950 DRAWR 2,-2
960 DRAWR 138,0
970 DRAWR 0,-138
980 DRAWR -138,0
990 DRAWR 0,138
1000 DRAWR -2,2
1010 RETURN
1020 '
1030 POKE &753A,0:POKE &753B,0:ON m GOTO 1620:CALL &753C:pa%=PEEK(&753A):pb%=PEEK(&753B)
1040 IF pb%=3 AND pa%=255 THEN 1180
1050 IF pb%=4 AND pa%=255 THEN 1270
1060 IF pb%=1 AND pa%=255 THEN IF s=1 THEN 1030 ELSE c=0:GOSUB 910:LOCATE 37,13:o=y:p=x:IF t=s THEN t=1:PEN 2:PRINT"1":GOTO 830 ELSE t=t+1:PEN 2:PRINT RIGHT$(STR$(t),1):GOTO 830
1070 IF pb%=2 AND pa%=255 THEN IF s=1 THEN 1030 ELSE c=0:GOSUB 910:LOCATE 37,13:o=y:p=x:IF t=1 THEN t=s:PEN 2:PRINT RIGHT$(STR$(t),1):GOTO 830 ELSE t=t-1:PEN 2:PRINT RIGHT$(STR$(t),1):GOTO 830
1080 IF pb%=5 THEN 1450
1090 IF pb%=1 AND y>1 AND b(x,y-1) THEN y=y-1:GOTO 1140
1100 IF pb%=2 AND y<3 AND b(x,y+1) THEN y=y+1:GOTO 1140
1110 IF pb%=3 AND x<5 AND b(x+1,y) THEN x=x+1:GOTO 1140
1120 IF pb%=4 AND x>1 AND b(x-1,y) THEN x=x-1:GOTO 1140
1130 GOTO 1030
1140 mv%=mv%-1:PEN 2:DI:a$=STR$(mv%):LOCATE 34,7:PRINT STRING$(5-LEN(a$),CHR$(48));RIGHT$(a$,LEN(a$)-1):EI:IF mv%=0 THEN 1620
1150 c=0:GOSUB 910
1160 c=1:SOUND 1,0,3,15,0,0,15:GOSUB 900
1170 GOTO 1020
1180 d=a(t,x,y):a(t,x,y)=a(t,x,y+1):a(t,x,y+1)=a(t,x+1,y+1):a(t,x+1,y+1)=a(t,x+1,y):a(t,x+1,y)=d
1190 |WLOAD,3+(y-1)*5,4+(y-1)*5,5+(x-1)*10,8+(x-1)*10,41472+(a(t,x,y)-1)*64
1200 |WLOAD,3+y*5,4+y*5,5+(x-1)*10,8+(x-1)*10,41472+(a(t,x,y+1)-1)*64
1210 |WLOAD,3+y*5,4+y*5,5+x*10,8+x*10,41472+(a(t,x+1,y+1)-1)*64
1220 |WLOAD,3+(y-1)*5,4+(y-1)*5,5+x*10,8+x*10,41472+(a(t,x+1,y)-1)*64
1230 SOUND 1,0,3,15,0,0,15:d=1:FOR c=1 TO 6:IF a(t,c,1)=c OR a(t,c,1)=7 THEN IF a(t,c,2)=c OR a(t,c,2)=7 THEN IF a(t,c,3)=c OR a(t,c,3)=7 THEN IF a(t,c,4)=c OR a(t,c,4)=7 THEN d=d+1
1240 NEXT:IF d<6 THEN 1020
1250 n(t)=1:IF n(1) AND n(2) AND n(3) AND n(4) AND n(5) THEN 1360
1260 GOTO 1020
1270 d=a(t,x,y):a(t,x,y)=a(t,x+1,y):a(t,x+1,y)=a(t,x+1,y+1):a(t,x+1,y+1)=a(t,x,y+1):a(t,x,y+1)=d
1280 |WLOAD,3+(y-1)*5,4+(y-1)*5,5+(x-1)*10,8+(x-1)*10,41472+(a(t,x,y)-1)*64
1290 |WLOAD,3+(y-1)*5,4+(y-1)*5,5+x*10,8+x*10,41472+(a(t,x+1,y)-1)*64
1300 |WLOAD,3+y*5,4+y*5,5+x*10,8+x*10,41472+(a(t,x+1,y+1)-1)*64
1310 |WLOAD,3+y*5,4+y*5,5+(x-1)*10,8+(x-1)*10,41472+(a(t,x,y+1)-1)*64
1320 SOUND 1,0,3,15,0,0,15:d=1:FOR c=1 TO 6:IF a(t,c,1)=c OR a(t,c,1)=7 THEN IF a(t,c,2)=c OR a(t,c,2)=7 THEN IF a(t,c,3)=c OR a(t,c,3)=7 THEN IF a(t,c,4)=c OR a(t,c,4)=7 THEN d=d+1
1330 NEXT:IF d<6 THEN 1020
1340 n(t)=1:IF n(1) AND n(2) AND n(3) AND n(4) AND n(5) THEN 1360
1350 GOTO 1020
1360 c=REMAIN(3):CALL &BB03:bb=34000:BORDER 0,1:DI:c=0:GOSUB 900:PEN 3:LOCATE 12,25:PRINT"LEVEL COMPLETED":FOR c=1 TO 100:NEXT:BORDER 0
1370 a$=INKEY$:IF a$="" THEN GOSUB 1870:GOTO 1370
1380 LOCATE 12,25:PRINT"                        "
1390 tm=tm+(s*100+99-mv%)
1400 ttm=ttm+(s*100+99-tme%)
1410 IF k=3906 AND l=63 THEN 1960
1420 l=l+1:t=1:IF l=257 THEN l=1:k=k+1
1430 IF u=32 THEN s=s+1:u=0:IF s=6 THEN s=1
1440 u=u+1:BORDER 0:GOTO 620
1450 IF s=1 THEN 1030
1460 IF t=s THEN v=1 ELSE v=t+1
1470 d=a(t,x,y):a(t,x,y)=a(v,x,y):a(v,x,y)=d
1480 d=a(t,x+1,y):a(t,x+1,y)=a(v,x+1,y):a(v,x+1,y)=d
1490 d=a(t,x,y+1):a(t,x,y+1)=a(v,x,y+1):a(v,x,y+1)=d
1500 d=a(t,x+1,y+1):a(t,x+1,y+1)=a(v,x+1,y+1):a(v,x+1,y+1)=d
1510 |WLOAD,3+(y-1)*5,4+(y-1)*5,5+(x-1)*10,8+(x-1)*10,41472+(a(t,x,y)-1)*64
1520 |WLOAD,3+y*5,4+y*5,5+(x-1)*10,8+(x-1)*10,41472+(a(t,x,y+1)-1)*64
1530 |WLOAD,3+y*5,4+y*5,5+x*10,8+x*10,41472+(a(t,x+1,y+1)-1)*64
1540 |WLOAD,3+(y-1)*5,4+(y-1)*5,5+x*10,8+x*10,41472+(a(t,x+1,y)-1)*64
1550 n(t)=0:n(v)=0
1560 SOUND 1,0,3,15,0,0,15:d=0:FOR c=1 TO 6:IF a(t,c,1)=c OR a(t,c,1)=7 THEN IF a(t,c,2)=c OR a(t,c,2)=7 THEN IF a(t,c,3)=c OR a(t,c,3)=7 THEN IF a(t,c,4)=c OR a(t,c,4)=7 THEN d=d+1
1570 NEXT:IF d=6 THEN n(t)=1
1580 d=0:FOR c=1 TO 6:IF a(v,c,1)=c OR a(v,c,1)=7 THEN IF a(v,c,2)=c OR a(v,c,2)=7 THEN IF a(v,c,3)=c OR a(v,c,3)=7 THEN IF a(v,c,4)=c OR a(v,c,4)=7 THEN d=d+1
1590 NEXT:IF d=6 THEN n(v)=1
1600 IF n(1) AND n(2) AND n(3) AND n(4) AND n(5) THEN 1360
1610 GOTO 1030
1620 bb=34000:CALL &BB03:c=0:GOSUB 910:c=REMAIN(3):PEN 3:LOCATE 15,25:PRINT"GAME OVER":PEN 1
1630 a$=INKEY$:IF a$="" THEN GOSUB 1870:GOTO 1630
1640 LOCATE 15,25:PRINT"         ":GOTO 160
1650 tme%=tme%-1:PEN 2:LOCATE 34,4:a$=STR$(tme%):PRINT STRING$(5-LEN(a$),CHR$(48));RIGHT$(a$,LEN(a$)-1):IF tme%<31 THEN SOUND 1,128,3,15
1660 IF tme%=0 THEN m=1
1670 RETURN
1680 LOCATE 14,19:PRINT"UP     ";
1690 FOR x=0 TO 79:IF INKEY(x)=0 THEN POKE &7549,x:POKE 30001,x:CALL 30000:PRINT UPPER$(CHR$(PEEK(&7539))):GOTO 1710
1700 NEXT:GOTO 1690
1710 FOR c=0 TO 300:NEXT:LOCATE 14,19:PRINT"DOWN   ";
1720 FOR x=0 TO 79:IF INKEY(x)=0 THEN POKE &7556,x:POKE 30001,x:CALL 30000:PRINT UPPER$(CHR$(PEEK(&7539))):GOTO 1740
1730 NEXT:GOTO 1720
1740 FOR c=0 TO 300:NEXT:LOCATE 14,19:PRINT"LEFT   ";
1750 FOR x=0 TO 79:IF INKEY(x)=0 THEN POKE &7570,x:POKE 30001,x:CALL 30000:PRINT UPPER$(CHR$(PEEK(&7539))):GOTO 1770
1760 NEXT:GOTO 1750
1770 FOR c=0 TO 300:NEXT:LOCATE 14,19:PRINT"RIGHT  ";
1780 FOR x=0 TO 79:IF INKEY(x)=0 THEN POKE &7563,x:POKE 30001,x:CALL 30000:PRINT UPPER$(CHR$(PEEK(&7539))):GOTO 1800
1790 NEXT:GOTO 1780
1800 FOR c=0 TO 300:NEXT:LOCATE 14,19:PRINT"FIRE   ";
1810 FOR x=0 TO 79:IF INKEY(x)=0 THEN POKE &753D,x:POKE 30001,x:CALL 30000:PRINT UPPER$(CHR$(PEEK(&7539))):GOTO 1830
1820 NEXT:GOTO 1810
1830 FOR c=0 TO 300:NEXT:LOCATE 14,19:PRINT"SWAP   ";
1840 FOR x=0 TO 79:IF INKEY(x)=0 THEN POKE &757D,x:POKE 30001,x:CALL 30000:PRINT UPPER$(CHR$(PEEK(&7539))):GOTO 1860
1850 NEXT:GOTO 1840
1860 FOR c=0 TO 300:NEXT:LOCATE 14,19:PRINT"        ":GOTO 160
1870 ENV 1,5,3,1,4,-1,5,1,0,50,11,-1,10
1880 a=PEEK(bb):nt%=a AND &X1111
1890 ok%=((INT(a/16) AND &X111)-4)
1900 SOUND 1,INT(125000/(440*(2^(ok%+(nt%-10)/12)))),14,14
1910 a=PEEK(bb+512):nt%=a AND &X1111
1920 ok%=((INT(a/16) AND &X111)-4):IF a<128 THEN r=0 ELSE r=1
1930 SOUND 2,INT(125000/(440*(2^(ok%+(nt%-10)/12)))),9+5*r,13,1
1940 IF PEEK(bb+1024) THEN SOUND 4,600,10,15,1
1950 bb=bb+1:IF bb=34512 THEN bb=34000:RETURN ELSE RETURN
1960 BORDER 0:CALL &BB03:|WLOAD,2,20,4,60,16384:PEN 1:LOCATE 9,10:PRINT"CONGRATULATIONS":LOCATE 5,25:PRINT"YOU'VE FINISHED THIS LITTLE GAME
1970 bb=34000
1980 a$=INKEY$:IF a$="" THEN GOSUB 1870:GOTO 1980
1990 LOCATE 5,25:PRINT"                                ":GOTO 160
2000 RESUME NEXT
2010 RETURN
2020 OUT 512,255:LOAD"!screen",49152:OUT 512,255
2030 LOAD"!code":OUT 512,0
2040 FOR b=30000 TO 30011:READ x:POKE b,x:NEXT
2050 DATA &1,0,&40,&11,1,&40,&21,0,&40,&ed,&b0,&c9
2060 POKE 16384,0:CALL 30000
2070 FOR X=30000 TO 30000+87:READ A:POKE X,A:NEXT:POKE &7549,0:POKE &7556,2:POKE &7563,1:POKE &7570,8:POKE &757D,47:POKE &753D,21:RETURN
2080 DATA &3E,&48,&CD,&2A,&BB,&32,&39,&75,&C9,&0,&0,&0,&3E,&0,&CD,&1E,&BB,&28,&5,&3E,&FF,&32,&3A,&75,&3E,&1,&CD,&1E,&BB,&28,&6,&3E,&1,&32,&3B,&75,&C9,&3E,&2,&CD,&1E,&BB,&28,&6,&3E,&2,&32,&3B,&75,&C9,&3E,&3,&CD,&1E,&BB,&28,&6,&3E,&3,&32
2090 DATA &3B,&75,&C9,&3E,&04,&CD,&1E,&BB,&28,&06,&3E,&04,&32,&3B,&75,&C9,&3E,&05,&CD,&1E,&BB,&C8,&3E,&05,&32,&3B,&75,&C9
3000 RETURN