1 MODE 1:DEFINT a-z
2 stopuhrend$=STR$(TIME)
3 z1=VAL("stopuhr")
4 z2=(TIME-z1)/300
5 PRINT"Gesamtzeit betraegt:"z2"Sekunden"
6 CALL &BB18
1750 MODE 1:PEN 1:PRINT CHR$(22)+CHR$(1)
1760 DIM s(33)
1770 FOR n=1 TO 33:READ s(n):NEXT n
1780 DATA 100,90,100,110,120,110,100,0
1790 DATA 130,120,110,0,120,110,100,0
1800 DATA 100,90,100,110,120,110,100,0
1810 DATA 130,0,100,0,120,150,0,0,0
1820 EVERY 20 GOSUB 2410
1830 DIM t$(50)
1840 FOR i=1 TO 50:READ t$(i):LOCATE 1,25:PRINT t$(i);:PRINT CHR$(13)
1850 FOR k=1 TO 500:NEXT k
1860 NEXT i
1870 RESTORE 1820
1880 GOTO 1840
1890 END
1900 DATA "                 Hello!                 "
1910 DATA "                                        "
1920 DATA "This is Bytebreaker on the keys. I hope "
1930 DATA "you enjoyed this little presentation.   "
1940 DATA "                                        "
1950 DATA "Triangles are really fascinating and it "
1960 DATA "is great to see what a 1984 Amstrad     "
1970 DATA "Basic is capable of doing with them.    "
1980 DATA "                                        "
1990 DATA "The diamond objects were inspired by the"
2000 DATA "CPC 6128 demo disk, where coder Matt    "
2010 DATA "Green introduced a similar effect which "
2020 DATA "I liked so much that I tried to re-code "
2030 DATA "it. Matt did other great stuff in this  "
2040 DATA "demo aswell. I would not be surprised to"
2050 DATA "hear he was a demo scener. :-)          "
2060 DATA "                                        "
2070 DATA "I am not really a sound guy but since   "
2080 DATA "the CPC offers comfortable sound usage  "
2090 DATA "in Basic, I decided to give it a try.   "
2100 DATA "                                        "
2110 DATA "Horizontal and vertical scrollers were  "
2120 DATA "als on my list so I decided to code them"
2130 DATA "aswell. As far as I know the CPC 6128+  "
2140 DATA "supports hardware scrolling in Basic.   "
2150 DATA "Maybe I use this function in the future."
2160 DATA "                                        "
2170 DATA "        Greetings to cpcwiki.eu!        "
2180 DATA "          Bytebreaker in 2016           "
2190 DATA "                                        "
2200 DATA "           Text restarts ...            "
2210 DATA "                                        "
2220 DATA "                                        "
2230 DATA "                                        "
2240 DATA "                                        "
2250 DATA "                                        "
2260 DATA "                                        "
2270 DATA "                                        "
2280 DATA "                                        "
2290 DATA "                                        "
2300 DATA "                                        "
2310 DATA "                                        "
2320 DATA "                                        "
2330 DATA "                                        "
2340 DATA "                                        "
2350 DATA "                                        "
2360 DATA "                                        "
2370 DATA "                                        "
2380 DATA "                                        "
2390 DATA "                                        "
2400 DATA "                                        "
2410 zae=zae+1:IF zae=33 THEN zae=1
2420 SOUND 1,s(zae),40,5
2430 RETURN