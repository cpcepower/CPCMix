; Music of Procrastinopolis (2013)(Dirty Minds)(Sice)(StArkos)
; Ripped by Megachur the 14/12/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "PROCRAST.BIN"
	ENDIF

music_date_rip_day		equ 14
music_date_rip_month	equ 12
music_date_rip_year		equ 2014
music_adr				equ &8000

	read "music_header.asm"

.music_data
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #03,#07,#1e,#00,#10,#80,#19,#80
	db #00,#00,#00,#00,#00,#00,#0d,#12
	db #80,#01,#00,#3c,#3c,#3c,#3c,#3c
	db #3c,#3c,#3c,#3c,#3c,#3c,#1c,#0d
	db #12,#80,#40,#00,#00,#00,#4f,#80
	db #00,#50,#80,#0a,#81,#b2,#81,#00
	db #ad,#80,#55,#81,#00,#82,#00,#50
	db #80,#0a,#81,#63,#82,#00,#ad,#80
	db #55,#81,#00,#82,#01,#30,#80,#00
	db #96,#e1,#00,#00,#01,#02,#7e,#43
	db #02,#66,#45,#02,#96,#43,#02,#7e
	db #45,#02,#66,#47,#02,#94,#41,#02
	db #7c,#43,#02,#64,#45,#02,#94,#43
	db #02,#7c,#45,#02,#64,#47,#02,#9e
	db #41,#02,#86,#43,#02,#6e,#45,#02
	db #9e,#43,#02,#86,#45,#02,#6e,#47
	db #02,#9e,#45,#02,#86,#47,#02,#6e
	db #49,#02,#9e,#47,#02,#86,#49,#02
	db #6e,#4b,#02,#9e,#49,#02,#86,#4b
	db #02,#6e,#4d,#02,#9e,#4f,#02,#86
	db #51,#02,#6e,#53,#00,#94,#e1,#00
	db #00,#01,#02,#7c,#43,#02,#64,#45
	db #02,#94,#43,#02,#7c,#45,#02,#64
	db #47,#02,#96,#41,#02,#7e,#43,#02
	db #66,#45,#02,#96,#43,#02,#7e,#45
	db #02,#66,#47,#02,#94,#41,#02,#7c
	db #43,#02,#64,#45,#02,#94,#43,#02
	db #7c,#45,#02,#64,#47,#02,#9e,#41
	db #02,#86,#43,#02,#6e,#45,#02,#9e
	db #43,#02,#86,#45,#02,#6e,#47,#02
	db #9e,#45,#02,#86,#47,#02,#6e,#49
	db #02,#9e,#4b,#02,#86,#4d,#02,#6e
	db #4f,#00,#de,#e1,#00,#00,#01,#02
	db #c6,#43,#02,#ae,#45,#02,#de,#43
	db #02,#c6,#45,#02,#ae,#47,#02,#de
	db #45,#02,#c6,#47,#02,#ae,#49,#02
	db #de,#47,#02,#c6,#49,#02,#ae,#4b
	db #02,#ce,#41,#02,#b6,#43,#02,#9e
	db #45,#02,#ce,#43,#02,#b6,#45,#02
	db #9e,#47,#02,#ce,#45,#02,#b6,#47
	db #02,#9e,#49,#02,#ce,#47,#02,#b6
	db #49,#02,#9e,#4b,#00,#d2,#e1,#00
	db #00,#01,#02,#ba,#43,#02,#a2,#45
	db #02,#d2,#43,#02,#ba,#45,#02,#a2
	db #47,#02,#d2,#45,#02,#ba,#47,#02
	db #a2,#49,#02,#d2,#47,#02,#ba,#49
	db #02,#a2,#4b,#06,#bc,#41,#02,#a4
	db #43,#02,#8c,#45,#02,#bc,#43,#02
	db #a4,#45,#02,#8c,#47,#02,#dc,#41
	db #02,#c4,#43,#02,#ac,#45,#02,#dc
	db #43,#02,#c4,#45,#02,#ac,#47,#02
	db #dc,#45,#02,#c4,#47,#02,#ac,#49
	db #02,#dc,#4b,#02,#c4,#4d,#02,#ac
	db #4f,#00,#42,#80,#00,#00,#16,#d8
	db #61,#01,#02,#c0,#43,#02,#a8,#45
	db #02,#d8,#43,#02,#c0,#45,#02,#a8
	db #47,#02,#d8,#45,#02,#c0,#47,#02
	db #d8,#41,#02,#c4,#40,#02,#ac,#43
	db #02,#94,#45,#02,#c4,#43,#02,#ac
	db #45,#02,#94,#47,#02,#c4,#45,#02
	db #ac,#47,#02,#94,#49,#02,#c4,#47
	db #02,#ac,#49,#02,#94,#4b,#02,#c4
	db #4f,#02,#ac,#51,#02,#94,#53,#00
	db #d4,#e1,#00,#00,#01,#02,#bc,#45
	db #02,#d2,#41,#02,#ca,#40,#02,#b2
	db #43,#02,#9a,#45,#02,#ca,#43,#02
	db #b2,#45,#02,#9a,#47,#02,#ca,#45
	db #02,#b2,#47,#02,#9a,#49,#02,#ca
	db #47,#02,#d2,#41,#02,#ba,#43,#02
	db #a2,#45,#02,#d4,#47,#02,#e2,#41
	db #02,#ca,#43,#02,#b2,#45,#02,#e2
	db #43,#02,#ca,#45,#02,#b2,#47,#02
	db #ce,#41,#02,#b6,#43,#02,#9e,#45
	db #02,#ce,#43,#02,#b6,#45,#02,#9e
	db #47,#02,#ce,#49,#02,#b6,#4b,#02
	db #9e,#4d,#00,#42,#80,#00,#00,#16
	db #dc,#61,#01,#02,#c4,#43,#02,#ac
	db #45,#02,#dc,#43,#02,#c4,#45,#02
	db #ac,#47,#02,#ce,#45,#02,#b6,#47
	db #02,#9e,#41,#02,#c4,#40,#02,#ac
	db #43,#02,#94,#45,#02,#c4,#43,#02
	db #ac,#45,#02,#94,#47,#02,#c4,#45
	db #02,#ac,#47,#02,#94,#49,#02,#c4
	db #47,#02,#ac,#49,#02,#94,#4b,#02
	db #c4,#4f,#02,#ac,#51,#02,#94,#53
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	jp l9674
	jp l900a
	jp l96c9
.l9009
	nop
;
.play_music
.l900a
;
	xor a
	ld (l9009),a
.l900f equ $ + 1
	ld a,#01
	dec a
	jp nz,l91db
.l9015 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9081
.l901a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l9028
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l9028
	rra
	jr nc,l9030
	ld de,l90d1
	ldi
.l9030
	rra
	jr nc,l9038
	ld de,l9136
	ldi
.l9038
	rra
	jr nc,l9040
	ld de,l919b
	ldi
.l9040
	ld de,l90b0
	ldi
	ldi
	ld de,l9115
	ldi
	ldi
	ld de,l917a
	ldi
	ldi
	rra
	jr nc,l905d
	ld de,l9080
	ldi
.l905d
	rra
	jr nc,l9068
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l906c),de
.l9068
	ld (l901a),hl
.l906c equ $ + 1
	ld hl,#0000
	ld (l908a),hl
	ld a,#01
	ld (l9085),a
	ld (l90ab),a
	ld (l9110),a
	ld (l9175),a
.l9080 equ $ + 1
	ld a,#01
.l9081
	ld (l9015),a
.l9085 equ $ + 1
	ld a,#01
	dec a
	jr nz,l90a7
.l908a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l90a4
	srl a
	jr nz,l9098
	ld a,(hl)
	inc hl
.l9098
	jr nc,l909f
	ld (l9009),a
	jr l90a2
.l909f
	ld (l91da),a
.l90a2
	ld a,#01
.l90a4
	ld (l908a),hl
.l90a7
	ld (l9085),a
.l90ab equ $ + 1
	ld a,#01
	dec a
	jr nz,l910c
.l90b0 equ $ + 1
	ld hl,#0000
	call l9520
	ld (l90b0),hl
	jr c,l910c
	ld a,d
	rra
	jr nc,l90c3
	and #0f
	ld (l925d),a
.l90c3
	rl d
	jr nc,l90cb
	ld (l924b),ix
.l90cb
	rl d
	jr nc,l910a
	ld a,e
.l90d1 equ $ + 1
	add #00
	ld (l925c),a
	ld hl,#0000
	ld (l9248),hl
	rl d
	jr c,l90ea
.l90e0 equ $ + 1
	ld hl,#0000
	ld a,(l926d)
	ld (l9265),a
	jr l9107
.l90ea
	ld l,b
	add hl,hl
.l90ed equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l926d),a
	ld (l9265),a
	ld a,(hl)
	or a
	jr z,l9103
	ld (l934b),a
.l9103
	inc hl
	ld (l90e0),hl
.l9107
	ld (l925f),hl
.l910a
	ld a,#01
.l910c
	ld (l90ab),a
.l9110 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9171
.l9115 equ $ + 1
	ld hl,#0000
	call l9520
	ld (l9115),hl
	jr c,l9171
	ld a,d
	rra
	jr nc,l9128
	and #0f
	ld (l9229),a
.l9128
	rl d
	jr nc,l9130
	ld (l9217),ix
.l9130
	rl d
	jr nc,l916f
	ld a,e
.l9136 equ $ + 1
	add #00
	ld (l9228),a
	ld hl,#0000
	ld (l9214),hl
	rl d
	jr c,l914f
.l9145 equ $ + 1
	ld hl,#0000
	ld a,(l9239)
	ld (l9231),a
	jr l916c
.l914f
	ld l,b
	add hl,hl
.l9152 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l9239),a
	ld (l9231),a
	ld a,(hl)
	or a
	jr z,l9168
	ld (l934b),a
.l9168
	inc hl
	ld (l9145),hl
.l916c
	ld (l922b),hl
.l916f
	ld a,#01
.l9171
	ld (l9110),a
.l9175 equ $ + 1
	ld a,#01
	dec a
	jr nz,l91d6
.l917a equ $ + 1
	ld hl,#0000
	call l9520
	ld (l917a),hl
	jr c,l91d6
	ld a,d
	rra
	jr nc,l918d
	and #0f
	ld (l91f8),a
.l918d
	rl d
	jr nc,l9195
	ld (l91e6),ix
.l9195
	rl d
	jr nc,l91d4
	ld a,e
.l919b equ $ + 1
	add #00
	ld (l91f7),a
	ld hl,#0000
	ld (l91e3),hl
	rl d
	jr c,l91b4
.l91aa equ $ + 1
	ld hl,#0000
	ld a,(l9208)
	ld (l9200),a
	jr l91d1
.l91b4
	ld l,b
	add hl,hl
.l91b7 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l9208),a
	ld (l9200),a
	ld a,(hl)
	or a
	jr z,l91cd
	ld (l934b),a
.l91cd
	inc hl
	ld (l91aa),hl
.l91d1
	ld (l91fa),hl
.l91d4
	ld a,#01
.l91d6
	ld (l9175),a
.l91da equ $ + 1
	ld a,#01
.l91db
	ld (l900f),a
	ld iy,l9362
.l91e3 equ $ + 1
	ld hl,#0000
.l91e6 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l91e3),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l91f8 equ $ + 2
.l91f7 equ $ + 1
	ld de,#0000
.l91fa equ $ + 1
	ld hl,#0000
	call l936d
.l9200 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9209
	ld (l91fa),hl
.l9208 equ $ + 1
	ld a,#06
.l9209
	ld (l9200),a
	ld a,lx
	ex af,af'
	ld iy,l9360
.l9214 equ $ + 1
	ld hl,#0000
.l9217 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9214),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l9229 equ $ + 2
.l9228 equ $ + 1
	ld de,#0000
.l922b equ $ + 1
	ld hl,#0000
	call l936d
.l9231 equ $ + 1
	ld a,#01
	dec a
	jr nz,l923a
	ld (l922b),hl
.l9239 equ $ + 1
	ld a,#06
.l923a
	ld (l9231),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l935e
.l9248 equ $ + 1
	ld hl,#0000
.l924b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9248),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l925d equ $ + 2
.l925c equ $ + 1
	ld de,#0000
.l925f equ $ + 1
	ld hl,#0000
	call l936d
.l9265 equ $ + 1
	ld a,#01
	dec a
	jr nz,l926e
	ld (l925f),hl
.l926d equ $ + 1
	ld a,#06
.l926e
	ld (l9265),a
	ex af,af'
	or lx
.l9274
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l935e
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	ld a,(hl)
.l934b equ $ + 1
	cp #ff
	ret z
	ld (l934b),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l935e
	nop
	nop
.l9360
	nop
	nop
.l9362
	nop
	nop
.l9364
	nop
.l9365
	nop
	nop
	nop
	nop
	nop
.l936a
	nop
	nop
.l936c
	nop
.l936d
	ld b,(hl)
	inc hl
	rr b
	jp c,l93cb
	rr b
	jr c,l939b
	ld a,b
	and #0f
	jr nz,l9384
	ld (iy+#07),a
	ld lx,#09
	ret
.l9384
	ld lx,#08
	sub d
	jr nc,l938b
	xor a
.l938b
	ld (iy+#07),a
	rr b
	call l94f4
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l939b
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l93ab
	ld (l9364),a
	ld lx,#00
.l93ab
	ld a,b
	and #0f
	sub d
	jr nc,l93b2
	xor a
.l93b2
	ld (iy+#07),a
	bit 5,c
	jr nz,l93bc
	inc lx
	ret
.l93bc
	rr b
	bit 6,c
	call l94e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l93cb
	rr b
	jr nc,l93de
	ld a,(l9265)
	ld c,a
	ld a,(l926d)
	cp c
	jr nz,l93de
	ld a,#fe
	ld (l934b),a
.l93de
	bit 1,b
	jp nz,l9497
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l936c),a
	bit 0,b
	jr z,l944d
	bit 2,b
	call l94e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l940d),a
	ld a,b
	exx
.l940d equ $ + 1
	jr l940e
.l940e
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l942d
	inc hl
.l942d
	bit 5,a
	jr z,l943d
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l943d
	ld (l936a),hl
	exx
.l9441
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l9364),a
	ld lx,#00
	ret
.l944d
	bit 2,b
	call l94e6
	ld (l936a),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l9461),a
	ld a,b
	exx
.l9461 equ $ + 1
	jr l9462
.l9462
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l948e
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l948e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l9441
.l9497
	bit 0,b
	jr z,l94a2
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l936d
.l94a2
	ld (iy+#07),#10
	bit 5,b
	jr nz,l94af
	ld lx,#09
	jr l94c2
.l94af
	ld lx,#08
	ld hx,e
	bit 2,b
	call l94e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l94c2
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l936c),a
	rr b
	rr b
	bit 2,b
	call l94e6
	ld (l936a),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l9364),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l94e6
	jr z,l94f4
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l94f4
	bit 4,b
	jr z,l9504
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l9504
	ld a,e
	bit 3,b
	jr z,l9511
	add (hl)
	inc hl
	cp #90
	jr c,l9511
	ld a,#8f
.l9511
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l9554
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l9520
	ld a,(hl)
	inc hl
	srl a
	jr c,l9547
	sub #20
	jr c,l9551
	jr z,l9543
	dec a
	ld e,a
.l952e
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l953c
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l953c
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l9543
	ld e,(hl)
	inc hl
	jr l952e
.l9547
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l9551
	add #20
	ret
.l9554
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l9674
;
	ld hl,#0009
	add hl,de
	ld de,l91da
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l90ed),hl
	ld (l9152),hl
	ld (l91b7),hl
	add hl,bc
	ld de,l9080
	ldi
	ld de,l90d1
	ldi
	ld de,l9136
	ldi
	ld de,l919b
	ldi
	ld de,l906c
	ldi
	ldi
	ld (l901a),hl
	ld a,#01
	ld (l900f),a
	ld (l9015),a
	ld a,#ff
	ld (l936c),a
	ld hl,(l90ed)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l925f),hl
	ld (l922b),hl
	ld (l91fa),hl
	ret
.l96c9
	ld hl,l9365
	ld bc,#0300
.l96cf
	ld (hl),c
	inc hl
	djnz l96cf
	ld a,#3f
	jp l9274
;
.init_music		; #6d00 - added by Megachur
;
	ld de,music_data	; ld de,#8000
	jp real_init_music
;
.music_info
	db "Procrastinopolis (2013)(Dirty Minds)(Sice)",0
	db "StArkos",0

	read "music_end.asm"
