20 KEY DEF 66,1,32,32,32:ON BREAK GOSUB 2120:ON ERROR GOTO 2120
30 PEN 1:PAPER 0:INK 1,24:INK 0,15:BORDER 15:MODE 0:PRINT"David\n":PRINT"Computer\n":PRINT"Software":PRINT"\n03-233-9227 \n\n":PRINT"\n\nAMSTRAD UNLOCKED\n\n\n\n":PRINT CHR$(164);" 1984":GOSUB 2130    
40 INK 1,24:INK 0,0:BORDER 0:MODE 2:n$="":PRINT TAB (23);"** MORE ABOUT THE AMSTRAD CPC 464 **\n\n"   
50 PRINT"   01 Additional commands    02 Arcsin, arcos           03 BASIC bugs"
60 PRINT"   04 CTRL keys              05 CTRL cursor             06 Cassette files"    
70 PRINT"   07 Call BELL              08 Datacorder              09 DEC$, UNT"
80 PRINT"   10 DATA, tokenised        11 DIM                     12 E notation"
90 PRINT"   13 FOR ... NEXT           14 Find variables etc      15 Hex, what is it"   
100 PRINT"   16 Handbook errors        17 Integer division\\       18 MOD"
110 PRINT"   19 Memory                 20 Miscellaneous           21 MID$=" 
120 PRINT"   22 MID$(X$,Y)             23 Number bases            24 Program storage"
130 PRINT"   25 Print separator ;      26 Passing parameters      27 RAM & ROM"
140 PRINT"   28 Record protect         29 REM:                    30 REM, tokenised"
150 PRINT"   31 Storage of programs    32 SPC(X)                  33 Sorting"
160 PRINT"   34 Scroll                 35 Scientific notation     36 TIMESET"
170 PRINT"   37 Tokens                 38 Trig functions          39 Why hex" 
180 PRINT"   40 Zero clock             41 End program"
190 IF pp THEN PRINT""
200 LOCATE 22,25:INPUT"  TYPE IN OPTION NUMBER, PRESS ENTER ",g$   
210 g=VAL(g$):IF (g<1) OR (g>41) THEN 200
220 ON g GOSUB 250,1520,260,1060,1020,440,1670,1690,630,790,1410,990,1630,1710,1270,270,310,770,1560,2030,550,580,1270,1100,360,2050,1560,1440,510,790,1100,610,1460,680,990,1600,850,1520,1370,1600  
230 IF g=41 THEN 2110
240 pp=1:GOTO 40  
250 n$="** ADDITIONAL COMMANDS **\n":GOSUB 540:GOSUB 580:GOSUB 610:GOSUB 630:GOSUB 680:RETURN  
260 n$="** BASIC BUGS **\n":GOSUB 310:GOSUB 360:GOSUB 440:GOSUB 510:GOSUB 790:RETURN  
270 n$="** HANDBOOK ERRORS **\n":GOSUB 280:GOSUB 440:RETURN 
280 PRINT"** HANDBOOK ERRORS **\n\n":GOTO 320
290 n$="** BASIC BUGS **\n\n":PRINT n$:PRINT"Every machine has it's 'bugs', and the Amstrad has its share.\n\n                   The first is not really a fault in the BASIC but an error in the manual.\n\n"   
300 GOTO 320
310 PRINT n$
320 PRINT"** INTEGER DIVISION **\n\n                                                          The manual, in Chapter 4, page 2, states that when using \\ instead of / for     division, the result is shortened to give the whole number part of the result,"
330 PRINT"the decimal part being discarded."
340 PRINT"\n\nThis is incorrect, the Amstrad using the \\ (integer division) operator in the   standard manner, ie numerator and denominator are rounded to the nearest whole  number, and then the result is truncated to the nearest whole number below."      
350 GOTO 2090
360 PRINT n$:PRINT"** PRINT SEPARATOR (;) **\n                                                       Eg PRINT A$;B$ should result in the two strings being printed consecutively on  the same line. Normally this is the case, but if their combined length is"
370 PRINT"greater than the character space remaining on the line, the Amstrad's BASIC     malfunctions, and prints the second string on the following line, eg\n"
380 PRINT"A$=";CHR$(34);"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";CHR$(34) 
390 PRINT"B$=";CHR$(34);"BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB";CHR$(34)
400 PRINT"PRINT A$,B$                                                                     gives"
410 PRINT"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA                                       BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\n"
420 PRINT"This bug can be overcome by using a plus sign in place of the semi-colon, eg    \nPRINT A$+B$                                                                     gives"   
430 PRINT"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB":GOTO 2090
440 PRINT n$:PRINT"** CASSETTE FILES **\n\n":PRINT"Chapter 3 page 4, and Chapter 8 page 54 of the handbook say that PRINT #9 shouldbe used for output to cassette files. The BASIC interpreter however malfunctions"
450 PRINT"if this is done, taking commas within strings as separators, and rejecting thoseactually used as separators between strings, eg\n"  
460 PRINT"10 A$=";CHR$(34);"Hello, John";CHR$(34);":B$=";CHR$(34);"Hello, Mary";CHR$(34)   
470 PRINT"20 OPENOUT ";CHR$(34);"TEST";CHR$(34);":PRINT #9,A$,B$:CLOSEOUT:CLEAR"      
480 PRINT"30 OPENIN ";CHR$(34);"TEST";CHR$(34);":INPUT #9,C$,D$:CLOSEIN:PRINT C$:PRINT D$"         
490 PRINT"\n\nwill give      Hello                                                                           John  Hello  "     
500 PRINT"\n\nHowever, substituting WRITE #9 for PRINT #9 enables cassette data files to be   written and read without corruption.":GOTO 2090   
510 PRINT n$:PRINT"** REM: **\n\n":PRINT"The use of the colon as a separator for multi-statements is not  permitted afterREM, the subsequent statements being taken by the Amstrad's BASIC as part of theremark.\n\n"  
520 PRINT"Do not therefore use, eg\n\n":PRINT"100 REM DEFINE A:A=55\n\n"
530 PRINT"Use instead, eg\n\n":PRINT"100 A=55:REM DEFINE A":GOTO 2090
540 n$="** ADDITIONAL COMMANDS **\n\n"
550 PRINT n$:PRINT"** MID$(...)= **\n\n":PRINT"The normal usage of MID$ is to identify the characters contained in a subset of a string, eg\n"
560 PRINT"A$=";CHR$(34);"ABCDEFGHIJK";CHR$(34):PRINT"B$=MID$(A$,4,2)":PRINT"PRINT B$            would give DE.\n"   
570 PRINT "The CPC 464, and a few other machines, allow the reverse use of MID$ to alter a string, eg MID$(A$,7,3)=";CHR$(34);"XYZ";CHR$(34);" would change A$ to ABCDEFXYZJK.":GOTO 2090 
580 PRINT n$:PRINT"** MID$(X,Y) **\n\n":PRINT"MID$ normally requires three parameters, ie MID$(A$,X,Y) giving the specified   string (A$), the start character count (X), and the number of characters (Y).   With the Amstrad however, the last parameter  may be omitted."
590 PRINT"\nWhen this is done, the value of Y is taken to be equal to the remaining number  of characters in the string, eg, if M$ is ABCDEFGHIJK, then MID$(M$,8) is HIJKL,ie from the eigth character on."
600 PRINT"\nThis facility is available either with the normal usage of eg A$=MID$(...) or   the reverse application, MID$(...)= .":GOTO 2090
610 PRINT n$:PRINT"** SPC(X) **\n\n":PRINT"The command SPC is not mentioned in the handbook, even though available.\n\n":PRINT"It is similar to the PRINT TAB(X) facility, but whereas both PRINT TAB(5);A$"
620 PRINT"and PRINT SPC(4);A$ would print A$ commencing at the fifth column of the next   line, only the SPC command would delete any existing text in columns 1 to 4.":GOTO 2090
630 PRINT n$:PRINT"** DEC$, UNT etc **\n\n":PRINT"When presented with a 4 digit hex number, a computer may return it as a decimal either in the range 0 to 65535 or from -32767 to +32767. Although the Amstrad"
640 PRINT"does the latter, it was evidently not intended to, because it has been provided with the function UNT, declared as being to return a number in the range        +/- 32767, which the machine does anyway. The presence in the token table of the";
650 PRINT"unimplemented command DEC$ also seems to confirm this view.\n\n":PRINT"We are thus left with a redundant command UNT, and no way of accessing a hex    number greater than &7FFF. All is not lost however, for the one-line routine"
660 PRINT"below provides the facility. To use, type in eg PRINT FN DEC(&C000).\n\n"
670 PRINT"10 DEF FN(A)=VAL(";CHR$(34);"&";CHR$(34);"+RIGHT$(HEX$(A),2))+VAL("+CHR$(34);"&"+CHR$(34)+"+LEFT$(HEX$(A),2))*256":GOTO 2090
680 PRINT n$:PRINT"** SCROLL **\n\n":PRINT"One facility not provided on the Amstrad is screen scrolling within programs.   \nThis can easily be incorporated by including lines 10 to 40 below, which place a";  
690 PRINT"machine code routine in memory, and then accessing this by CALL SCROLLUP or     CALL SCROLLDOWN, as eg in lines 100 to 120."    
700 PRINT"\n\n10 MEMORY 43500:FOR X=0 TO 27:READ A:POKE 43976+X,A:NEXT":PRINT"20 DATA 245,197,213,229,6,0,205,77,188,225,209,193,241,201"  
710 PRINT"30 DATA 245,197,213,229,6,1,205,77,188,225,209,193,241,201"
720 PRINT"40 SCROLLUP=43990:SCROLLDOWN=43976\n":PRINT"100 G$=INKEY$:IF G$=";CHR$(34);CHR$(34);" THEN 100"    
730 PRINT"110 IF G$=";CHR$(34);"u";CHR$(34);" THEN CALL SCROLLUP ELSE IF G$=";CHR$(34);"d";CHR$(34);" THEN CALL SCROLLDOWN"
740 PRINT"120 GOTO 100":GOSUB 2090
750 PRINT"Values sent to port 256 control screen horizontal offset, and can be used for   sideways scrolling, as below. Line 10 is simply to put a display on screen; line100 is a delay, and this subroutine would usually be eg game control.\n\n"
760 PRINT"10 FOR X=1 TO 25:PRINT TAB(X);";CHR$(34);"A";CHR$(34);":NEXT":PRINT"20 FOR S=1 TO 40:OUT 256,S":PRINT"30 GOSUB 100:NEXT:GOTO 20":PRINT"100 FOR Y=1 TO 25:NEXT::RETURN":GOTO 2090
770 PRINT n$:PRINT"** MOD COMMAND **\n\n":PRINT"The modulus arithmetic function MOD is available on  the AMSTRAD, although not  mentioned in the handbook. It gives the integer value that is the remainder of  an integer division (see index item 17) eg:\n\n"  
780 PRINT"    25.68 MOD 6.99   gives 5  (26/7=3 remainder 5)":GOTO 2090  
790 PRINT n$:PRINT"** TOKENS - REM & DATA **\n":PRINT"BASIC programs are not stored by the computer in the way you type them in. This is covered in more detail in the sections on program storage and tokenisation,"    
800 PRINT"for the moment it is sufficient to know that keywords (commands such as PRINT & INPUT etc), are represented in the computers memory as numbers or as pairs of   numbers."
810 PRINT "\nOne of the numbers used (&A3, decimal 163) happens to be the ASCII code for £,  which appears on the keyboard, and which can thus be used in REM or DATA        statememts. Unfortunately, due to a fault in its design, the BASIC interpreter," 
820 PRINT"when meeting the character, thinks it is a keyword token and since 163 is the   token for INPUT, any £ signs in DATA or REM statements will appear as INPUT when";
830 PRINT"listed to screen.\n":PRINT"There is a way of overcoming the problem, which is to enclose in quotes any wordcontaining £ in REM or DATA lines, eg\n" 
840 PRINT"100 DATA 55$,200 yen,fifty shillings,";CHR$(34);"£5.25";CHR$(34);",100 lira":GOTO 2090        
850 PRINT n$:PRINT"** TOKENS **":PRINT"The various keywords (ie the commands, such as PRINT, GOTO, SAVE etc) are not   stored in the way they are typed in, but as a numeric code.  This saves space in";   
860 PRINT"memory and also makes programs much faster running. The keywords and their tokennumbers are listed below\n"
870 PRINT"128 AFTER, 129 AUTO, 130 BORDER, 131 CALL, 132 CAT, 133 CHAIN, 134 CLEAR,       135 CLG, 136 CLOSEIN, 137 CLOSEOUT, 138 CLS, 139 CONT, 140 DATA, 141 DEF,       142 DEFINT, 143 DEFREAL, 144 DEFSTR, 145 DEG, 146 DELETE, 147 DIM, 148 DRAW," 
880 PRINT"149 DRAWR, 150 EDIT, 151 ELSE, 152 END, 153 ENT, 154 ENV, 155 ERASE, 156 ERROR, 157 EVERY, 158 FOR, 159 GOSUB, 160 GOTO, 161 IF, 162 INK, 163 INPUT, 164 KEY"
890 PRINT"165 LET, 166 LINE, 167 LIST, 168 LOAD, 169 LOCATE, 170 MEMORY, 171 MERGE,       172 MID$, 173 MODE, 174 MOVE, 175 MOVER, 176 NEXT, 177 NEW, 178 ON, 179 ON BREAK";
900 PRINT"180 ON ERROR GOTO, 181 ON SQ, 182 OPENIN, 183 OPENOUT, 184 ORIGIN, 185 OUT,     186 PAPER, 187 PEN, 188 PLOT, 189 PLOTR, 190 POKE, 191 PRINT, 192 ' (REM),      193 RAD, 194 RANDOMIZE, 195 READ, 196 RELEASE, 197 REM, 198 RENUM, 199 RESTORE"
910 PRINT"200 RESUME, 201 RETURN, 202 RUN, 203 SAVE, 204 SOUND, 205 SPEED, 206 STOP,      207 SYMBOL, 208 TAG, 209 TAGOFF, 210 TROFF, 211 TRON, 212 WAIT, 213 WEND,       214 WHILE, 215 WIDTH, 216 WINDOW, 217 WRITE, 218 ZONE, 219 DI, 220 EI, 227 ERL,"
920 PRINT"228 FN, 229 SPC, 230 STEP, 231 SWAP, 234 TAB, 235 THEN, 236 TO, 237 USING, 238 >239 =, 240 >=, 241 <, 242 <>, 243 <=, 244 +, 245 -, 246 *, 247 /, 248 ^, 249 \\, 250 AND, 251 MOD, 252 OR, 253 XOR, 254 NOT"
930 PRINT"\n           A FURTHER LIST OF TOKENS FOLLOWS - PRESS ANY KEY TO CONTINUE ";   
940 G$=INKEY$:IF G$="" THEN 940
950 PRINT N$:PRINT"** TOKENS **\n":PRINT"All the tokens in this second list have pairs of numbers, being prefixed by 255."
960 PRINT"0 ABS, 1 ASC, 2 ATN, 3 CHR$, 4 CINT, 5 COS, 6 CREAL, 7 EXP, 8 EXP, 9 FRE,       10 INKEY, 11 INP, 12 INT, 13 JOY, 14 LEN, 15 LOG, 16 LOG10, 17 LOWER$, 18 PEEK, 19 REMAIN, 20 SGN, 21 SIN, 22 SPACE$, 23 SQ, 24 SQR, 25 STR$, 26 TAN, 27 UNT,"   
970 PRINT"28 UPPER$, 29 VAL, 64 EOF, 65 ERR, 66 HIMEM, 67 INKEY$, 68 PI, 69 RND, 70 TIME, 71 XPOS, 72 YPOS, 113 BIN$, 114 DEC$, 115 HEX$, 116 INSTR, 117 LEFT$, 118 MAX,  119 MIN, 120 POS, 121 RIGHT$, 122 ROUND, 123 STRING$, 124 TEST, 125 TESTR,"
980 PRINT"127 VPOS":GOTO 2090
990 PRINT N$:PRINT"** SCIENTIFIC NOTATION **\n\n":PRINT"There is a limit to the size of number which computers can display on screen in the conventional manner.  With the CPC 464 this limit is a number of up to nine digits, eg 678321695.\n"
1000 PRINT"Above this, and with very small numbers also, the computer adopts a different   system, known as scientific notation.  For example, if you type in A=5678923453,and then, PRINT A, the value appearing on screen will be 5.67892E+09, ie"       
1010 PRINT"5.67892 with the decimal point shifted 9 places to the right.\n\n":PRINT"The Amstrad also lets you use this system for entering values, ie A=2.2E+12.":GOTO 2090           
1020 PRINT n$:PRINT"** CTRL CURSOR **\n":PRINT"The cursor keys function in a special way, which is very useful when editing,   if the CTRL key is simultaneously pressed.\n"   
1030 PRINT"CTRL + CURSOR LEFT":PRINT"The cursor jumps to the start of the current screen line.\n"
1040 PRINT"CTRL + CURSOR RIGHT":PRINT"The cursor jumps to the end of the current screen line.\n":PRINT"CTRL + CURSOR UP":PRINT"The cursor jumps to the start of the current logic line.\n"
1050 PRINT"CTRL + CURSOR DOWN":PRINT"The cursor jumps to the end of the current logic line.\n":PRINT"NB A logic line is a complete program line, which may occupy several screen     lines.":GOTO 2090
1060 PRINT n$:PRINT"** CTRL KEYS **":PRINT"\nThere are a number of keys which, if pressed together with CTRL and included    inside quotes ";CHR$(34);" in a PRINT statement, will perform special functions.\n"
1070 PRINT"The character which appears in the text when the program is listed is not       printed when the program is run.\n":PRINT"The most useful of these CTRL keys, and their effect, are listed below.\n"
1080 PRINT"CTRL + G         Sounds bell           CTRL + X         Inverts colours         \nCTRL + L         Clears screen         CTRL + £         Homes cursor            \nCTRL + H         Cursor left           CTRL + I         Cursor right"
1090 PRINT"\nCTRL + J         Cursor down           CTRL + K         Cursor up":GOTO 2090
1100 PRINT n$:PRINT"** PROGRAM STORAGE **":PRINT"\nIt is suggested that you look at the notes on tokens and hexadecimal notation   before this section.\n"  
1110 PRINT"BASIC programs are stored in memory at addresses from 368 onwards.  Keywords    (commands) are tokenised, and similar systems are used to represent variables   and numbers in the program, other than line numbers themselves, which are stored"; 
1120 PRINT"in reversed hex. Other characters are represented by their ASCII codes.\n":PRINT"Each line of a BASIC program is both preceded and followed by a zero, as a      marker, and the first of these is itself preceded by a number which indicates"
1130 PRINT"how many characters there are in the encoded line, including the two zeros and  line length figure. The end of the program itself is indicated by a further fourzeros.\n"
1140 PRINT"Variable names are represented by their ASCII codes, but for identification one bit is set in the last character by adding 80 to its value, eg the variable ABC would appear as 65 66 147, XY as 88 169 and D as 148.\n":GOSUB 2090
1150 PRINT"Where numeric values appear in programs, they are, if specified as binary or hexor as decimal numbers which must be integers (eg GOTO etc), represented in      reversed hex, preceded by the code 11, 12 or 14, to indicate binary, hex or"
1160 PRINT"decimal form. Real numbers, ie decimals which can have a fractional component   (eg 15.234) are dealt with in a much more complex way.\n":GOSUB 2090
1170 PRINT"If a simple program  10 REM    20 PRINT "+CHR$(34)+"A"+CHR$(34)+"  is entered, and the memory contents";
1180 PRINT"examined by typing in   FOR X=368 TO 387:PRINT PEEK(X);"+CHR$(34)+" "+CHR$(34)+";:NEXT   you will find"
1190 PRINT"\n6 0 10 0 197 0 10 0 20 0 191 32 34 65 34 0 0 0 0 0\n" 
1200 PRINT"A B C  D E   F G  H I  J K   L  M  N  O  P Q R S T\n"
1210 PRINT"The letters A-T have been added beneath the numbers for ease of reference.\n"
1220 PRINT"Letters A-F represent line 10, G-P are line 20 and Q-T are the four zeros which indicate the end of the program.\n"
1230 PRINT"A indicates that the encoded line 10 occupies 6 characters, B and F are the zeromarkers for start and finish of the line, and D and C, 010, are the line number,";
1240 PRINT"and 197 is the token for REM.\n"
1250 PRINT"Similarly with line 20, G indicates a line length of 10 characters, H and P are the start/end markers and J/I are the line number. K (191) is the token for     PRINT, L (32) is ASCII for space, M and O (34) are ASCII for quotes, and N (65)"    
1260 PRINT"is the ASCII for A.":GOTO 2090
1270 PRINT n$:PRINT"** NUMBER BASES **\n":PRINT"The 'number base' of a counting system is the figure which, when reached, causesus to put a zero in a column of numbers and increase by one the figure in the"
1280 PRINT"column to its left. We are accustomed today to using base 10 (decimal or denary)but any number base can be used. At one time base 5 and base 15 were commonplace(the nursery rhyme 'Eeny meeny miny mo' is a relic of this, the numbers being" 
1290 PRINT"said 'Eina, meina, methera, tethera ... bumfit') and until recently we used manyother bases, eg 16 for pounds and ounces, 3 for feet and yards; many of these   systems were very complex indeed, the number base changing, as in inches & feet." 
1300 PRINT"To avoid having double numbers in a column, when using bases greater than 10    mathematicians and programmers extend the number range by using letters,        eg A for 10, B for 11, C for 12 etc.\n"     
1310 GOSUB 2090
1320 PRINT"Base 16, or hexadecimal is commonly used with computers.  With hex, it is usual to prefix numbers with $, H, & or &H to avoid doubt as to which system is being used. Try the examples and see if you can get the correct answers.\n"
1330 PRINT"   D 000=H 00       D 001=H 01       D 009=H 09       D 010=H 0A                   D 011=H 0B       D 015=H 0F       D 016=H 10       D 017=H 11                   D 031=H 1F       D 032=H 20       D 033=H 21       D 255=H FF\n"
1340 PRINT"\nBecause the central processor can only handle two-digit hex numbers (0-FF or    0-255 decimal) any that are larger, such as memory addresses, have to be dealt  with in two operations, and consequently become reversed. By way of example, C3"
1350 PRINT"is the machines code for 'jump to address following', and so the code for       transferring to address &23A7 would be C3 A7 23. This system is known as reversehex, or LSB/MSB (least significant byte/most significant byte).
1360 PRINT"\nIt doesn't really matter if you do not understand the system, it is only really necessary for machine code programming.":GOTO 2090   
1370 PRINT n$:PRINT"** WHY HEX? **\n":PRINT"Computers are not very clever. Because memory cells can only be on or off (0/1),the central processor can only count in base 2, or binary, but does so very fast"; 
1380 PRINT"An 'eight bit' machine such as the CPC 464 can deal with eight of these cells ata time (one byte) and so can accept numbers from B 00000000 to B 11111111,      decimal 0-255, hex 0-FF. Keying in binary numbers is something of a chore, and"
1390 PRINT"so an interface arrangement is provided so the user can key in using a differentnumber base. Hex uses only two digits for any number which the machine can      handle, is easier for it to convert than decimal, and so this is the one used."
1400 PRINT"Base 255 would only need a single digit, but what follows Z!":GOTO 2090
1410 PRINT n$:PRINT"** DIM **\n":PRINT"One would suppose from reading Chapter 8 page 12 of the manual, that DIM A(5)   provides a 5 way array from A(1) to A(5). Not so - the array is A(0) to A(5);"
1420 PRINT"even though the CPC 464 has more memory than most micros, it can still be at a  premium with very large programs, and failing to make use of eg A(0) can result in a large loss of memory, especially with array variables of several dimensions";
1430 PRINT"such as A(5,5,5,5).\n":GOTO 2090
1440 PRINT n$:PRINT"** RECORD PROTECT **\n\n":PRINT"Accidental overwriting of programs recorded on cassette can be prevented by     removing the record-protect tab at the left hand rear corner of the cassette.\n\n"
1450 PRINT"Never leave cassettes near strong magnetic fields - hours of work, or lots of   money, can be lost by program erasure; television sets are notorious for this,  as are printers.":GOTO 2090
1460 PRINT n$:PRINT"** SORTING **\n":PRINT"The sub-routine below will produce a reasonably fast sort; for maximum speed    include it near the beginning of the program. Before calling, establish N as"   
1470 PRINT"equal to the number of items, and arrange these in an array S(1) to S(N) - you  must of course DIM this. They will be returned in the same array, but sorted    into ascending order.\n"  
1480 PRINT"Changing references to S( ) to S$( ) converts the routine to a string sort; for this purpose letters at the start of the alphabet are regarded as having lower  value than those near the end.\n"
1490 PRINT"      10 U=2:D=N:F=0":PRINT"      20 P=U":PRINT"      IF S(P-1)<=S(P) THEN 50":PRINT"      40 S(0)=S(P):S(P)=S(P-1):S(P-1)=S(0):F=P"
1500 PRINT"      50 P=P+1:IF P<=D THEN 30":PRINT"      60 D=F-1:IF D<U THEN 120":PRINT"      70 P=D":PRINT"      80 IF S(P-1)<=S(P) THEN 100":PRINT"      90 S(0)=S(P):S(P)=S(P-1):S(P-1)=S(0):F=P"  
1510 PRINT"     100 P=P-1:IF P>=U THEN 80":PRINT"     110 U=F+1":PRINT"     120 IF D>=U THEN 20":PRINT"     130 RETURN":GOTO 2090
1520 PRINT n$:PRINT"** TRIG FUNCTIONS **\n":PRINT"On the Amstrad, the SIN, COS or TAN of an angle can be found, and using ATN the angle of which the TAN is known. The functions ARCSIN and ARCOS, to find angles knowing their SIN or COS, are not however provided.\n"
1530 PRINT"The missing functions can be created if the following is put at the start of a  program:\n"
1540 PRINT"    10 DEF FN S(X)=(ATN(X/SQR(-X*X+1.000001)))*180/PI                               20 DEF FN C(X)=(-ATN(X/SQR(-X*X+1.000001))+1.5708)*180/PI\n"
1550 PRINT"Thereafter if X is the SIN or COS of an angle, PRINT FN S(X) and PRINT FN C(X)  respectively will give the angle in degrees. To work in radians, omit *180/PI inboth lines.\n":GOTO 2090
1560 PRINT n$:PRINT"** RAM & ROM **\n\n":PRINT"There are two types of memory built into the computer - RAM and ROM.\n":PRINT"ROM is Read Only Memory, whose contents are permanent, unaffected by power-off  and cannot be changed by the user.\n" 
1570 PRINT"RAM is Random Access Memory, the contents of which can be changed by the user   (eg by loading a program from cassette, or by POKE), and which are wiped clean  by power-off.\n"
1580 PRINT"Programs are loaded into RAM, the ROM banks containing the BASIC interpreter andthe operating system (at &C000-&FFFF and &0000-&3FFF respectively). The user    cannot normally examine the ROM, because it is overlain by additional RAM, and"
1590 PRINT"is switched in by complex programs, or by BASIC, when required. This section of Amstrad Unlocked however permits you to look through the ROM banks.":GOSUB 2090:GOTO 1780              
1600 PRINT n$:PRINT"** TIMESET **\n":PRINT"There is no means provided on the Amstrad to zero the clock, and to determine anelapsed time it is therefore necessary to adopt the rather circuitous procedure outlined in Chapter 8 page 48 of the manual."
1610 PRINT"\nHowever, if the little routine below is included at the start of a program it ispossible to zero the clock by CALL TIMESET.\n"
1620 PRINT"   10 MEMORY 43500:FOR X=0 TO 15:READ A:POKE 43960+X,A:NEXT                        20 DATA 245,213,229,17,0,0,33,0,0,205,16,189,225,209,241,201                    30 TIMESET=43960":GOTO 2090
1630 PRINT n$:PRINT"** FOR...NEXT **\n":PRINT"On most machines a FOR ... NEXT loop is always executed at least once.\n":PRINT"The Amstrad is however rather more logical - if the second parameter is less"
1640 PRINT"than the first, and there is no negative STEP, then the loop is not executed, eg"
1650 PRINT"FOR X=6 TO 5:PRINT ";CHR$(34);"A";CHR$(34);":NEXT\n"
1660 PRINT"The Amstrad would bypass the FOR ... NEXT loop, other machines would print A.":GOTO 2090     
1670 PRINT n$:PRINT"** CALL BELL **\n":PRINT"If the routine listed below is included at the start of a program, a beep can becaused at any time by CALL BELL.\n\n"
1680 PRINT"   10 MEMORY 43500:FOR X=0 TO 7::READ A:POKE 43952+X,A:NEXT                        20 DATA 245,62,7,205,90,187,241,201                                             30 BELL=43952":GOTO 2090 
1690 PRINT n$:PRINT"\n** DATACORDER **\n":PRINT"Cassette heads should be cleaned regularly, if loading errors are to be avoided.Open cassette door, press PLAY to move heads forward, and wipe with cleaning    fluid on cotton wool. Dry with cotton wool."    
1700 PRINT"\nThe cassette motor is controlled by port 512. If the PLAY key is down, the motorcan be enabled/disabled by OUT 512,X where X is 255/0.":GOTO 2090
1710 PRINT n$:PRINT"** FIND COMMANDS & VARIABLES **\n":PRINT"The routine below enables all lines containing any specified variable or commandto be found and listed to screen. Save on cassette and MERGE when required.\n"
1720 PRINT"To use, type in the text sought as line 1, then call the routine, eg to find alllines containing INPUT X$, enter 1 INPUT X$ then GOTO 65000\n\n"
1730 PRINT"65000 LF$="+CHR$(34)+CHR$(34)+":TT=0:LL=PEEK(368):FOR X=372 TO 366+LL:LF$=LF$+CHR$(PEEK(X)):NEXT:CP=368" 
1740 PRINT"65010 CP=CL+LL:LL=PEEK(CP):IF LL=0 THEN 65050":PRINT"65020 CL$=";CHR$(34);CHR$(34);":FOR X=CP+4 TO CP+LL-2:CL$=CL$+CHR$(PEEK(X)):NEXT"
1750 PRINT"65030 IF INSTR(CL$,LF$) THEN TT=1:PRINT PEEK(CP+3)*256+PEEK(CP+2);"
1760 PRINT"65040 GOTO 65010":PRINT"65050 PRINT:PRINT";CHR$(34);"FINISHED SEARCH";CHR$(34);":IF TT=0 THEN PRINT";CHR$(34);"NOT FOUND";CHR$(34)
1770 PRINT"65060 END":GOTO 2090
1780 MEMORY &AAFF:RESTORE 2020:FOR x=&AB00 TO &AB23:READ h$:h$="&"+h$:POKE x,VAL(h$):NEXT:pk=&AB00  
1790 ca=0:CLS:WINDOW #1,1,80,24,25:WINDOW #2,1,80,1,22
1800 PRINT#1,"Press key: A CHANGE ADDRESS, F FORWARD LIST, B BACKWARDS LIST, I MAIN INDEX":PRINT#1,"All values in hex. Current address ";HEX$(ca,4)
1810 g$=UPPER$(INKEY$):IF g$="" THEN 1810
1820 IF g$="I" THEN RETURN
1830 IF g$="A" THEN 1940
1840 IF ggg=0 AND (g$="F" OR g$="B") THEN ggg=1:GOTO 1890
1850 IF g$="B" AND ca>7 THEN ca=ca-8:GOTO 1890
1860 IF g$="F" AND ca<65521 THEN ca=ca+8:GOTO 1890
1870 GOTO 1810   
1880 IF ca>&3FFF AND ca<49152 THEN ca=49152
1890 IF ca>&3FFF AND ca<49152 THEN ca=49152 
1900 PRINT#2,HEX$(ca,4);" ";:FOR x=0 TO 7:pa$=HEX$(ca+x,4):POKE &AB11,VAL("&"+RIGHT$(pa$,2)):POKE &AB12,VAL("&"+LEFT$(pa$,2)):CALL pk:PRINT#2,HEX$(PEEK(&AB24),2);" ";:NEXT   
1910 PRINT#2,"          ";:FOR x=0 TO 7:pa$=HEX$(ca+x,4):POKE &AB11,VAL("&"+RIGHT$(pa$,2)):POKE &AB12,VAL("&"+LEFT$(pa$,2)):CALL pk:ap=PEEK(&AB24):IF ap<32 THEN ap=46 ELSE ap=ap       
1920 PRINT#2,CHR$(ap);" ";:NEXT:PRINT#2:GOTO 1800    
1930 GOTO 1800
1940 ggg=0:INPUT #1,"Enter hex address, without & ";g$:g$=UPPER$(g$) 
1950 IF LEN(g$)<4 THEN g$="0"+g$:GOTO 1950
1960 IF LEN(g$)>4 THEN 1940
1970 cu=0:FOR x=1 TO 4:t$=MID$(g$,x,1):IF t$>"F" OR t$<"0" OR (t$<"A" AND t$>"9") THEN cu=1
1980 NEXT:IF cu=1 THEN 1940
1990 ca=VAL("&"+g$):IF ca<0 THEN ca=65536+ca  
2000 IF ca>65528 THEN ca=65528
2010 GOTO 1800
2020 DATA f3,c5,d5,e5,f5,fd,e5,dd,e5,cd,00,b9,f5,cd,06,b9,3a,0,0,32,24,ab,f1,cd,0c,b9,dd,e1,fd,e1,f1,e1,d1,c1,fb,c9   
2030 PRINT n$:PRINT"** MISCELLANEOUS **\n":PRINT"ON BREAK does not always prevent the use of ESC to break a program - it still   operates during INPUT, LOAD & SAVE etc.\n"
2040 PRINT"POKE 46312,225/0   Enables/disables CAPS LOCK.\n":PRINT"POKE 48622,201/195 Disables/enables reset, ie CTRL.SHIFT.ESC.\n":PRINT"CALL 47944/7       Disables/enables ESC if used in a program.":GOTO 2090
2050 PRINT n$:PRINT"** PARAMETER PASSING, BASIC <> MACHINE CODE **\n":PRINT"Parameters may be passed to machine code routines by eg CALL A,B,@C,@D$ or      eg CALL G,@E$,&5000,F where A,G are code locations; 25000,&5000 are integers;"
2060 PRINT"B,C,F are integer variables; E$,D$ are string variables. Register IX contains   the address of the final parameter passed. Where a variable name is prefaced by @, instead of the value, the location where this is stored is transmitted or in"
2070 PRINT"the case of string variables the string data address (three bytes, the first    indicating length, and two the location of the string). By using @ therefore,   the code can be made to pass values back to BASIC by changing variable values"
2080 PRINT"before return.":GOTO 2090
2090 LOCATE 27,25:PRINT" PRESS ANY KEY TO CONTINUE "  
2100 g$=INKEY$:IF g$="" THEN 2100 ELSE RETURN
2110 |BASIC
2120 RUN
2130 te=2:ENV 2,2,5,1,te*10-4,0,1,2,-5,1:ENV 4,3,3,1,te*20-6,0,1,3,-3,1:ENV 5,3,3,1,te*30-6,0,1,3,-3,1:ENV 6,5,2,1,te*40-10,0,1,5,-2,1   
2140 RESTORE 2180:FOR x=1 TO 49:READ p,d:SOUND 2,p,0,0,d   
2150 IF SQ(1)>127 THEN 2150
2160 NEXT
2170 SOUND 49,239,0,0,6:SOUND 42,379,0,0,6:SOUND 28,478,0,0,6:RETURN
2180 DATA 190,2,213,2,239,2,268,2,284,2,268,4,319,2,358,2,319,2,284,2,478,4,284,2,319,2,358,2,379,2,358,2,319,2,478,4,268,2,284,2 
2190 DATA 319,2,358,2,284,2,213,2,239,5,239,4,190,2,213,2,239,2,268,2,284,2,268,4,379,4,358,2,379,2,358,2,284,4,284,2,319,2,358,2 
2200 DATA 379,2,239,2,253,2,284,2,301,2,253,4,379,2,284,4,1,4