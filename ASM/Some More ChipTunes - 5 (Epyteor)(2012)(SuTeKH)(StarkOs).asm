; Music of Some More ChipTunes - 5 (Epyteor)(2012)(SuTeKH)(StarkOs)
; Ripped by Megachur the 21/02/2015
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOMEMOC5.BIN"
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
	db #00,#1e,#50,#20,#50,#7a,#50,#7d
	db #50,#1a,#50,#1e,#50,#20,#50,#7a
	db #50,#06,#c0,#00,#00,#1b,#7f,#0e
	db #2b,#52,#55,#52,#dd,#52,#df,#52
	db #55,#52,#1f,#53,#df,#52,#55,#52
	db #1f,#53,#79,#53,#55,#52,#1f,#53
	db #79,#53,#55,#52,#1f,#53,#d3,#53
	db #55,#52,#1f,#53,#d3,#53,#55,#52
	db #1f,#53,#04,#54,#55,#52,#1f,#53
	db #04,#54,#55,#52,#1f,#53,#df,#52
	db #55,#52,#1f,#53,#df,#52,#55,#52
	db #1f,#53,#4f,#54,#55,#52,#1f,#53
	db #4f,#54,#55,#52,#1f,#53,#93,#54
	db #55,#52,#dd,#52,#93,#54,#dd,#52
	db #dd,#52,#1c,#bb,#54,#8f,#50,#99
	db #50,#c0,#50,#e0,#50,#49,#51,#6d
	db #51,#82,#51,#b3,#51,#e0,#51,#96
	db #50,#99,#50,#ff,#37,#00,#00,#00
	db #00,#a0,#50,#c0,#50,#00,#37,#00
	db #87,#10,#fe,#04,#00,#83,#10,#fe
	db #87,#10,#fe,#fc,#ff,#83,#10,#fe
	db #83,#10,#fe,#87,#10,#fe,#fc,#ff
	db #83,#10,#fe,#87,#10,#fe,#04,#00
	db #96,#50,#e0,#50,#00,#b7,#00,#83
	db #10,#fe,#83,#10,#fe,#87,#10,#fe
	db #f4,#ff,#83,#10,#fe,#83,#10,#fe
	db #87,#10,#fe,#f0,#ff,#83,#10,#fe
	db #96,#50,#49,#51,#00,#b7,#00,#83
	db #10,#fe,#83,#10,#fe,#83,#10,#fe
	db #83,#10,#fe,#83,#10,#fe,#2a,#fe
	db #2a,#fe,#29,#fe,#2c,#fe,#2c,#fe
	db #2a,#fe,#28,#fe,#27,#fe,#26,#fe
	db #28,#fe,#28,#fe,#27,#fe,#2a,#fe
	db #2a,#fe,#28,#fe,#26,#fe,#25,#fe
	db #24,#fe,#26,#fe,#25,#fe,#24,#fe
	db #28,#fe,#28,#fe,#25,#fe,#24,#fe
	db #23,#fe,#22,#fe,#24,#fe,#24,#fe
	db #23,#fe,#26,#fe,#26,#fe,#24,#fe
	db #22,#fe,#21,#fe,#00,#22,#fe,#22
	db #fe,#21,#fe,#24,#fe,#24,#fe,#22
	db #fe,#96,#50,#6d,#51,#00,#b7,#00
	db #3f,#25,#0a,#2f,#fe,#2f,#fe,#2e
	db #fe,#2e,#fe,#2e,#fe,#2d,#fe,#2d
	db #fe,#2d,#fe,#2c,#fe,#2c,#fe,#2c
	db #fe,#2b,#fe,#2b,#fe,#96,#50,#82
	db #51,#00,#b7,#00,#2d,#0a,#2d,#03
	db #2c,#fe,#2c,#0a,#2b,#03,#2b,#fe
	db #2a,#0a,#96,#50,#b3,#51,#00,#b7
	db #00,#2f,#0a,#2e,#f2,#2d,#fe,#2c
	db #0a,#2c,#f2,#26,#fe,#26,#0a,#2d
	db #f2,#2c,#fe,#2b,#0a,#2a,#f2,#2a
	db #fe,#24,#0a,#24,#f2,#2b,#fe,#2a
	db #0a,#29,#f2,#28,#fe,#28,#0a,#22
	db #f2,#22,#fe,#96,#50,#e0,#51,#00
	db #b7,#00,#3f,#2b,#05,#1e,#2b,#3d
	db #2a,#fe,#3d,#2a,#fd,#3d,#29,#05
	db #1c,#29,#3b,#28,#fe,#3b,#27,#fd
	db #3b,#26,#05,#1a,#25,#39,#24,#fe
	db #39,#23,#fd,#17,#22,#37,#21,#05
	db #96,#50,#2b,#52,#00,#b7,#00,#83
	db #10,#fe,#87,#10,#fe,#fe,#ff,#87
	db #10,#fe,#fc,#ff,#87,#10,#fe,#fa
	db #ff,#87,#10,#fe,#f8,#ff,#87,#10
	db #fe,#f6,#ff,#87,#10,#fe,#f4,#ff
	db #87,#10,#fe,#f2,#ff,#87,#10,#fe
	db #f0,#ff,#87,#10,#fe,#ee,#ff,#87
	db #10,#fe,#ec,#ff,#87,#10,#fe,#ea
	db #ff,#87,#10,#fe,#e8,#ff,#87,#10
	db #fe,#e6,#ff,#50,#80,#01,#e6,#56
	db #80,#02,#4c,#80,#01,#51,#ea,#5b
	db #de,#5e,#80,#03,#65,#5e,#80,#02
	db #54,#80,#01,#50,#80,#03,#4d,#50
	db #80,#01,#da,#68,#80,#03,#6f,#73
	db #6f,#69,#57,#55,#4d,#38,#80,#04
	db #ce,#76,#80,#05,#38,#80,#04,#ce
	db #76,#80,#05,#38,#80,#04,#ce,#39
	db #ce,#76,#80,#05,#38,#80,#04,#ce
	db #76,#80,#05,#38,#80,#04,#ce,#39
	db #ce,#76,#80,#05,#38,#80,#04,#ce
	db #76,#80,#05,#38,#80,#04,#ce,#39
	db #ce,#76,#80,#05,#38,#80,#04,#ce
	db #76,#80,#05,#38,#80,#04,#ce,#43
	db #ce,#68,#80,#05,#42,#80,#04,#ce
	db #68,#80,#05,#42,#80,#04,#ce,#47
	db #ce,#72,#80,#05,#46,#80,#04,#ce
	db #72,#80,#05,#46,#80,#04,#72,#80
	db #05,#38,#80,#04,#ce,#76,#80,#05
	db #38,#80,#04,#ce,#76,#80,#05,#38
	db #80,#04,#ce,#39,#ce,#76,#80,#05
	db #38,#80,#04,#ce,#76,#80,#05,#38
	db #80,#04,#72,#80,#05,#ca,#c2,#68
	db #80,#01,#d6,#64,#80,#03,#5f,#65
	db #ce,#6f,#69,#ce,#65,#69,#ce,#6e
	db #80,#02,#64,#80,#01,#69,#da,#76
	db #80,#03,#73,#6f,#73,#77,#73,#6e
	db #80,#01,#d6,#72,#80,#03,#d2,#77
	db #7d,#76,#80,#02,#6c,#80,#03,#69
	db #65,#68,#80,#01,#da,#5f,#d2,#5e
	db #80,#02,#56,#80,#03,#55,#4d,#68
	db #80,#06,#d0,#69,#64,#80,#07,#ce
	db #68,#80,#06,#ce,#69,#d0,#69,#64
	db #80,#07,#ce,#68,#80,#06,#ce,#69
	db #d0,#69,#64,#80,#07,#ce,#68,#80
	db #06,#ce,#69,#d0,#69,#64,#80,#07
	db #ce,#66,#80,#06,#ce,#69,#d0,#69
	db #64,#80,#07,#ce,#68,#80,#06,#ce
	db #69,#d0,#69,#64,#80,#07,#ce,#68
	db #80,#06,#ce,#69,#d0,#69,#64,#80
	db #07,#ce,#68,#80,#06,#ce,#69,#d0
	db #69,#64,#80,#07,#ce,#68,#80,#06
	db #c2,#68,#80,#01,#ce,#64,#80,#03
	db #6f,#ce,#65,#69,#ce,#6e,#80,#01
	db #ce,#68,#80,#03,#65,#6e,#80,#02
	db #68,#80,#03,#65,#69,#6f,#73,#77
	db #7d,#86,#80,#08,#86,#80,#03,#81
	db #7d,#87,#69,#81,#7d,#77,#75,#73
	db #6f,#64,#80,#01,#68,#80,#03,#6f
	db #65,#87,#69,#6f,#73,#74,#80,#01
	db #76,#80,#03,#69,#73,#6f,#65,#6f
	db #6d,#68,#80,#01,#ce,#ca,#d6,#6e
	db #80,#08,#ce,#6e,#80,#03,#69,#6f
	db #69,#65,#69,#68,#80,#01,#e6,#6e
	db #80,#02,#64,#80,#01,#69,#ea,#72
	db #80,#03,#ce,#73,#ce,#6f,#ce,#69
	db #65,#d0,#77,#7d,#76,#80,#02,#6c
	db #80,#01,#68,#80,#03,#65,#68,#80
	db #01,#da,#56,#80,#03,#ce,#57,#5b
	db #ce,#5b,#5d,#5f,#68,#80,#03,#ce
	db #65,#6f,#ce,#69,#73,#ce,#75,#77
	db #73,#6f,#73,#6f,#69,#65,#5f,#5b
	db #57,#51,#57,#5b,#5d,#5f,#69,#80
	db #80,#02,#68,#80,#03,#65,#69,#73
	db #77,#73,#6e,#80,#01,#d6,#72,#80
	db #03,#d0,#80,#80,#02,#76,#80,#03
	db #7d,#76,#80,#02,#6c,#80,#03,#69
	db #65,#68,#80,#01,#da,#5f,#d2,#5e
	db #80,#02,#56,#80,#03,#55,#4d,#68
	db #80,#01,#68,#80,#03,#68,#80,#01
	db #d0,#68,#80,#03,#e0,#81,#ce,#69
	db #81,#ce,#69,#81,#69,#81,#ce,#69
	db #81,#ce,#69,#81,#69,#68,#80,#01
	db #d6,#68,#80,#08,#ce,#72,#80,#01
	db #da,#76,#80,#03,#75,#73,#6f,#73
	db #6e,#80,#02,#64,#80,#03,#5f,#5d
	db #5b,#55,#56,#80,#02,#5a,#80,#03
	db #5d,#5f,#65,#50,#80,#01,#ce,#ca
	db #f6,#56,#80,#02,#4c,#80,#01,#51
	db #ce,#57,#ce,#59,#ce,#5b,#d6,#56
	db #80,#02,#50,#80,#03,#4c,#80,#01
	db #da,#50,#80,#03,#51,#50,#80,#01
	db #ce,#ca,#c2,#ff
;
.init_music		; added by Megachur
;
	ld de,l5000
	jp real_init_music
;
.music_info
	db "Some More ChipTunes - 5 (Epyteor)(2012)(SuTeKH)",0
	db "StarkOs - 5. Sax-Solo by Royal Software 1995 Evgeniy Shvarev",0

	read "music_end.asm"
