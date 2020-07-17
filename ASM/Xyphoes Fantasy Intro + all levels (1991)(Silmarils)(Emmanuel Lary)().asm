; Music of Xyphoes Fantasy Intro + all levels (1991)(Silmarils)(Emmanuel Lary)()
; Ripped by Megachur the 03/06/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XYPHOESF.BIN"
ENDIF

	read "Xyphoes Fantasy Player (1991)(Silmarils)(Emmanuel Lary)().asm"          ; player
	read "Xyphoes Fantasy Menu_v1_1.asm"            ; music data
	read "Xyphoes Fantasy Level 1_v1_1.asm"
	read "Xyphoes Fantasy Level 2_v1_0.asm"
	read "Xyphoes Fantasy Level 2 bis_v1_0.asm"
	read "Xyphoes Fantasy Level 3_v1_0.asm"
	read "Xyphoes Fantasy Level 4_v1_0.asm"

;
.music_info
	db "Xyphoes Fantasy Intro + all levels (1991)(Silmarils)(Emmanuel Lary)",0
	db "(c) LARY - Intro + all levels music merged by Megachur",0

	read "music_end.asm"
