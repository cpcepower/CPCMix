; Music of The Long Dark Knight Of The Soul - Intro (2019)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 06/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TLDKSINT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #86e0

	read "music_header.asm"

	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#82,#00
	dw l86fc,l8705,l870c,l8719
	dw l872a,l8737,l8744,l8751
.l86fc
	db #00,#00,#00,#00,#00,#00,#0d,#fe
.l8705 equ $ + 1
	db #86,#01,#00,#74,#05,#0d,#07,#87
.l870c
	db #01,#00,#68,#05,#70,#05,#70,#09
.l8719 equ $ + 5
	db #70,#05,#0d,#10,#87,#01,#00,#6c
	db #05,#68,#05,#64,#05,#5c,#05,#54
.l872a equ $ + 6
	db #05,#4c,#05,#0d,#fe,#86,#01,#00
	db #68,#05,#70,#0c,#70,#09,#70,#05
.l8737 equ $ + 3
	db #0d,#2e,#87,#01,#00,#68,#05,#70
	db #05,#70,#08,#70,#05,#0d,#3b,#87
.l8744
	db #01,#00,#68,#05,#70,#0d,#70,#08
.l8751 equ $ + 5
	db #70,#05,#0d,#48,#87,#01,#00,#78
	db #05,#78,#05,#74,#05,#74,#05,#70
	db #05,#70,#05,#6c,#05,#6c,#05,#68
	db #05,#64,#05,#60,#05,#5c,#05,#0d
	db #fe,#86,#40,#00,#00,#00,#7e,#87
	db #00,#7f,#87,#c3,#87,#79,#88,#01
	db #74,#87,#00,#a2,#e1,#00,#00
	db #01,#71,#7b,#63,#71,#77,#63,#71
	db #75,#63,#6d,#71,#6b,#6d,#67,#6b
	db #63,#6d,#7b,#63,#6d,#77,#75,#6d
	db #71,#63,#6d,#71,#77,#7b,#6d,#71
	db #6d,#7b,#85,#6d,#7b,#81,#6d,#7b
	db #7f,#7b,#6d,#71,#77,#7b,#71,#75
	db #77,#75,#77,#7b,#77,#7b,#7f,#7b
	db #7f,#7b,#7f,#83,#7f,#83,#85,#89
	db #ba,#e1,#00,#00,#02,#ba,#60,#03
	db #ba,#60,#02,#ba,#60,#03,#ba,#60
	db #02,#7b,#ba,#60,#03,#ba,#60,#02
	db #ba,#60,#03,#ba,#60,#02,#ba,#60
	db #03,#ba,#60,#02,#7b,#ba,#60,#03
	db #ba,#60,#02,#7b,#77,#b6,#60,#03
	db #b6,#60,#02,#b6,#60,#03,#b6,#60
	db #04,#77,#b6,#60,#03,#b6,#60,#02
	db #b6,#60,#03,#b6,#60,#02,#b6,#60
	db #03,#b6,#60,#02,#b6,#60,#04,#b6
	db #60,#03,#b6,#60,#04,#b6,#60,#02
	db #b4,#60,#05,#b4,#60,#03,#b4,#60
	db #05,#b4,#60,#03,#b4,#60,#06,#b4
	db #60,#05,#b4,#60,#03,#b4,#60,#05
	db #b4,#60,#03,#b4,#60,#05,#b4,#60
	db #03,#b4,#60,#05,#b4,#60,#06,#b4
	db #60,#03,#b4,#60,#06,#b4,#60,#05
	db #b6,#60,#02,#b6,#60,#03,#b6,#60
	db #02,#b6,#60,#03,#b6,#60,#02,#77
	db #b6,#60,#03,#b6,#60,#02,#b6,#60
	db #03,#b6,#60,#02,#b6,#60,#03,#b6
	db #60,#02,#b6,#60,#04,#b6,#60,#03
	db #b6,#60,#04,#b6,#60,#03,#8a,#e1
	db #00,#00,#07,#02,#4b,#02,#55,#59
	db #02,#4b,#02,#4b,#02,#4b,#55,#59
	db #55,#59,#55,#02,#55,#02,#5f,#63
	db #02,#55,#02,#55,#02,#55,#5f,#63
	db #5f,#63,#4b,#02,#4b,#02,#55,#59
	db #02,#4b,#02,#4b,#02,#4b,#55,#59
	db #55,#59,#55,#02,#55,#02,#5f,#63
	db #02,#55,#02,#55,#02,#55,#5f,#63
	db #59,#5d,#00,#00,#00,#c4,#0b,#b4
	db #b4,#4b,#b4,#0b,#05,#b7,#06,#0e
	db #af,#05,#86,#17,#75,#1d,#4a,#ed
	db #5d,#f6,#91,#03,#8a,#b5,#80,#07
	db #02,#4b,#02,#55,#66,#59,#04,#01
	db #58,#07,#01,#02,#8c,#01,#5f,#63
	db #04,#ca,#01,#07,#01,#7d,#4b,#1f
	db #84,#59,#5d,#cd,#a7,#00,#ff,#fc
	db #00,#00,#00,#00,#00
; #8947
;	ld de,#86e0
;	call #8000

	read "The Long Dark Knight Of The Soul - stArkos Player (2019)(Epyteor)(SuTeKH)(StArkos).asm"
;
.music_info
	db "The Long Dark Knight Of The Soul - Intro (2019)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"