; Music of Some More ChipTunes - 2 (Epyteor)(2012)(SuTeKH)(StarkOs)
; Ripped by Megachur the 21/02/2015
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOMEMOC2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2015
music_adr				equ #4000

	read "music_header.asm"

	read "Some More ChipTunes - Player (Epyteor)(2012)(SuTeKH)(StarkOs).asm"
;
	ds #5000-$,#00
;
.l5000
	db #53,#4b,#31,#30,#00,#50,#01,#32
	db #00,#22,#50,#26,#50,#6e,#50,#74
	db #50,#1e,#50,#24,#50,#32,#50,#71
	db #50,#02,#c0,#00,#00,#01,#c0,#00
	db #00,#11,#7f,#01,#7f,#09,#33,#51
	db #69,#51,#6b,#51,#ef,#51,#11,#52
	db #3c,#52,#ef,#51,#ba,#52,#3c,#52
	db #ef,#51,#ba,#52,#3c,#52,#36,#53
	db #ba,#52,#3c,#52,#83,#53,#ba,#52
	db #3c,#52,#36,#53,#ba,#52,#3c,#52
	db #83,#53,#c8,#53,#3c,#52,#50,#54
	db #ba,#52,#3c,#52,#95,#54,#ba,#52
	db #3c,#52,#50,#54,#ba,#52,#3c,#52
	db #95,#54,#da,#54,#3c,#52,#02,#6a
	db #55,#12,#6a,#55,#8e,#50,#98,#50
	db #ab,#50,#b7,#50,#bf,#50,#cb,#50
	db #d7,#50,#e3,#50,#ef,#50,#fc,#50
	db #05,#51,#13,#51,#1e,#51,#95,#50
	db #98,#50,#ff,#37,#00,#00,#00,#00
	db #95,#50,#ab,#50,#00,#b7,#00,#0f
	db #0f,#0f,#0f,#0f,#0f,#0e,#0c,#0a
	db #07,#04,#01,#b2,#50,#b7,#50,#00
	db #37,#00,#0f,#2f,#03,#2f,#07,#be
	db #50,#bf,#50,#00,#37,#00,#0f,#c6
	db #50,#cb,#50,#00,#37,#00,#0f,#2f
	db #03,#2f,#08,#d2,#50,#d7,#50,#00
	db #37,#00,#0f,#2f,#04,#2f,#07,#de
	db #50,#e3,#50,#00,#37,#00,#0f,#2f
	db #02,#2f,#07,#ea,#50,#ef,#50,#00
	db #37,#00,#0f,#2f,#05,#2f,#07,#95
	db #50,#fc,#50,#00,#b7,#00,#1f,#2b
	db #1f,#29,#1e,#27,#03,#51,#05,#51
	db #00,#37,#00,#80,#0d,#95,#50,#13
	db #51,#00,#b7,#00,#1f,#3f,#2f,#fc
	db #2e,#f2,#00,#1c,#51,#1e,#51,#00
	db #37,#00,#1d,#01,#80,#0d,#25,#51
	db #33,#51,#00,#37,#00,#0f,#4f,#ff
	db #ff,#4f,#ff,#ff,#0f,#4f,#01,#00
	db #4f,#01,#00,#72,#9d,#01,#ce,#c4
	db #0d,#ce,#78,#19,#ce,#c4,#0b,#ce
	db #7c,#15,#d2,#80,#13,#d2,#6a,#11
	db #d2,#72,#0f,#d2,#78,#0d,#d2,#7c
	db #0b,#d2,#78,#09,#d2,#86,#07,#d2
	db #83,#d2,#80,#05,#d2,#6f,#d2,#80
	db #03,#d2,#7d,#d2,#79,#ce,#c4,#00
	db #c2,#ca,#c2,#72,#9d,#02,#72,#9f
	db #03,#72,#9b,#02,#72,#9f,#03,#72
	db #99,#02,#ce,#c4,#0b,#ce,#72,#95
	db #04,#72,#99,#03,#72,#95,#04,#72
	db #99,#03,#72,#93,#04,#d2,#6a,#91
	db #05,#6a,#95,#03,#6a,#91,#05,#6a
	db #95,#03,#6a,#8f,#05,#d2,#6a,#8d
	db #06,#6a,#91,#03,#6a,#8d,#06,#6a
	db #91,#03,#6a,#8b,#06,#d2,#78,#89
	db #05,#78,#8d,#03,#78,#89,#05,#78
	db #8d,#03,#78,#87,#05,#d2,#78,#80
	db #07,#78,#8b,#03,#78,#89,#07,#78
	db #8b,#03,#78,#85,#07,#d2,#6f,#6e
	db #89,#03,#6e,#85,#07,#6e,#89,#03
	db #6e,#83,#07,#d2,#6e,#80,#05,#6e
	db #87,#03,#6e,#83,#05,#6e,#87,#03
	db #6e,#83,#05,#ce,#c4,#00,#c2,#72
	db #81,#01,#d2,#79,#d2,#7d,#d2,#81
	db #d2,#6b,#d2,#73,#d2,#79,#d2,#7d
	db #d2,#79,#d2,#87,#d2,#83,#d2,#81
	db #d2,#6f,#d2,#81,#d2,#7d,#d2,#79
	db #c2,#c0,#2d,#50,#81,#08,#51,#51
	db #50,#c0,#09,#20,#c6,#20,#c6,#20
	db #ce,#c6,#20,#50,#80,#08,#50,#c0
	db #09,#20,#ce,#c6,#20,#c6,#20,#c6
	db #20,#50,#80,#08,#50,#c0,#09,#20
	db #c6,#20,#c6,#20,#72,#81,#02,#72
	db #85,#03,#72,#81,#02,#72,#85,#03
	db #72,#81,#02,#d2,#72,#80,#04,#72
	db #85,#03,#72,#81,#04,#72,#85,#03
	db #72,#81,#04,#d2,#6a,#80,#05,#6a
	db #85,#03,#6a,#81,#05,#6a,#85,#03
	db #6a,#81,#05,#d2,#6a,#80,#06,#6a
	db #85,#03,#6a,#81,#06,#6a,#85,#03
	db #6a,#81,#06,#d2,#78,#80,#05,#78
	db #85,#03,#78,#81,#05,#78,#85,#03
	db #78,#81,#05,#d2,#78,#80,#07,#78
	db #85,#03,#78,#81,#07,#78,#85,#03
	db #78,#81,#07,#d2,#6f,#6e,#85,#03
	db #6e,#81,#07,#6e,#85,#03,#6e,#81
	db #07,#d2,#6e,#80,#05,#6e,#85,#03
	db #6e,#81,#05,#6e,#85,#03,#6e,#81
	db #05,#c2,#48,#80,#0a,#42,#80,#0b
	db #5b,#5b,#43,#ce,#48,#80,#0a,#5a
	db #80,#09,#50,#80,#08,#42,#80,#09
	db #5b,#ce,#42,#80,#0b,#ce,#5b,#ce
	db #48,#80,#0a,#3a,#80,#09,#53,#ce
	db #48,#80,#0a,#3a,#80,#09,#52,#80
	db #0b,#ce,#50,#80,#08,#3a,#80,#09
	db #53,#ce,#3a,#80,#0b,#ce,#53,#ce
	db #48,#80,#0a,#48,#80,#0b,#61,#61
	db #49,#ce,#61,#ce,#50,#80,#08,#48
	db #80,#09,#61,#ce,#48,#80,#0b,#ce
	db #48,#80,#0a,#60,#80,#09,#48,#80
	db #0a,#3e,#80,#09,#57,#ce,#48,#80
	db #0a,#3e,#80,#09,#56,#80,#0b,#ce
	db #50,#80,#08,#3e,#80,#09,#57,#ce
	db #3e,#80,#0b,#ce,#57,#c2,#76,#81
	db #03,#79,#78,#80,#0c,#f6,#7c,#80
	db #03,#c4,#01,#c4,#03,#c4,#06,#80
	db #01,#80,#80,#0c,#ce,#7d,#80,#80
	db #03,#80,#80,#0c,#c4,#01,#ce,#c4
	db #02,#ce,#c4,#03,#80,#81,#03,#83
	db #82,#80,#0c,#d0,#80,#80,#03,#80
	db #80,#0c,#d0,#7c,#80,#03,#7c,#80
	db #0c,#d0,#c4,#01,#ce,#c4,#02,#ce
	db #c4,#03,#ce,#c4,#04,#ce,#c4,#05
	db #d0,#c4,#06,#76,#81,#03,#79,#78
	db #80,#0c,#f6,#7c,#80,#03,#c4,#01
	db #c4,#03,#c4,#06,#80,#01,#80,#80
	db #0c,#ce,#6b,#6e,#80,#03,#6e,#80
	db #0c,#c4,#01,#ce,#c4,#02,#ce,#c4
	db #03,#ce,#76,#81,#03,#78,#80,#0c
	db #d0,#80,#80,#03,#80,#80,#0c,#d0
	db #7c,#80,#03,#7c,#80,#0c,#d0,#c4
	db #01,#ce,#c4,#02,#ce,#78,#01,#c2
	db #48,#80,#0a,#42,#80,#0b,#5b,#5b
	db #43,#ce,#48,#80,#0a,#5a,#80,#09
	db #50,#80,#08,#42,#80,#09,#5b,#ce
	db #42,#80,#0b,#ce,#5b,#ce,#48,#80
	db #0a,#3a,#80,#09,#53,#ce,#48,#80
	db #0a,#3a,#80,#09,#52,#80,#0b,#ce
	db #50,#80,#08,#3a,#80,#09,#53,#ce
	db #3a,#80,#0b,#ce,#50,#80,#08,#51
	db #48,#80,#0a,#48,#80,#09,#61,#ce
	db #49,#ce,#50,#80,#08,#60,#80,#09
	db #48,#80,#0a,#48,#80,#09,#61,#ce
	db #50,#80,#08,#48,#80,#09,#48,#80
	db #0a,#60,#80,#09,#48,#80,#0a,#3e
	db #80,#09,#50,#80,#08,#56,#80,#09
	db #48,#80,#0a,#3e,#80,#09,#57,#ce
	db #50,#80,#08,#3e,#80,#09,#57,#ce
	db #50,#80,#08,#3e,#80,#09,#57,#c2
	db #90,#81,#01,#d2,#8f,#d2,#91,#d2
	db #87,#d2,#91,#d2,#8f,#d2,#91,#d2
	db #87,#d0,#94,#80,#03,#c6,#fc,#98
	db #80,#0c,#d2,#94,#80,#03,#c6,#fc
	db #98,#80,#0c,#d2,#94,#80,#03,#c6
	db #fc,#98,#80,#0c,#ce,#98,#80,#03
	db #c6,#04,#94,#80,#0c,#d2,#c4,#01
	db #ce,#c4,#02,#ce,#c4,#03,#ce,#c4
	db #04,#ce,#c4,#05,#c2,#90,#81,#01
	db #d2,#8f,#d2,#91,#d2,#87,#d2,#91
	db #d2,#8f,#d2,#91,#d2,#87,#d0,#82
	db #80,#03,#c6,#fb,#86,#80,#0c,#d2
	db #80,#80,#03,#c6,#fc,#82,#80,#0c
	db #d2,#7c,#80,#03,#c6,#fa,#80,#80
	db #0c,#ce,#78,#80,#03,#c6,#f9,#7c
	db #80,#0c,#d2,#c4,#01,#ce,#c4,#02
	db #ce,#c4,#03,#ce,#c4,#04,#ce,#c4
	db #05,#c2,#48,#80,#0a,#42,#80,#0b
	db #5b,#5b,#43,#ce,#48,#80,#0a,#5a
	db #80,#09,#50,#80,#08,#42,#80,#09
	db #5b,#ce,#42,#80,#0b,#ce,#5b,#ce
	db #48,#80,#0a,#3a,#80,#09,#53,#ce
	db #48,#80,#0a,#3a,#80,#09,#52,#80
	db #0b,#ce,#50,#80,#08,#3a,#80,#09
	db #53,#ce,#3a,#80,#0b,#ce,#53,#ce
	db #48,#80,#0a,#48,#80,#0b,#50,#80
	db #08,#60,#80,#0b,#50,#80,#08,#48
	db #80,#09,#60,#80,#0b,#ce,#50,#80
	db #08,#48,#80,#09,#61,#ce,#50,#80
	db #08,#48,#80,#09,#48,#80,#0a,#60
	db #80,#09,#48,#80,#0a,#3e,#80,#09
	db #57,#ce,#50,#80,#08,#3e,#80,#09
	db #50,#80,#08,#56,#80,#09,#50,#80
	db #08,#3e,#80,#09,#50,#80,#08,#51
	db #51,#3e,#80,#09,#50,#80,#08,#56
	db #80,#09,#ff,#00,#00,#00,#00,#00

;
.init_music		; added by Megachur
;

	ld de,l5000
	jp real_init_music
;
.music_info
	db "Some More ChipTunes - 2 (Epyteor)(2012)(SuTeKH)",0
	db "StarkOs - 2. Hammock Power! by Carter/Outbreak. 1997 Daniel Wressle",0

	read "music_end.asm"
