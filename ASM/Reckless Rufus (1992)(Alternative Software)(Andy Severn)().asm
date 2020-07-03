; Music of Reckless Rufus (1992)(Alternative Software)(Andy Severn)()
; Ripped by Megachur the 04/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RECKLESR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0400
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

	jp l0bbd        ; init music
	jp l0ca8        ; play music
.l0408 equ $ + 2
.music_end equ $ + 1
.l0407 equ $ + 1
.l0406
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#ff,#00,#00,#00,#01
	db #00,#0c,#00,#0c,#00,#00,#18,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #00,#00,#0f,#00,#00,#fc,#01,#14
	db #64,#03,#04,#00,#fc,#f8,#f4,#e8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c2,#00,#00,#00,#00
	db #00,#0f,#0f,#00,#fe,#0d,#00,#00
	db #ff,#01,#01,#01,#03,#06,#00,#e8
	db #00,#f4,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#d0,#00
	db #00,#00,#00,#00,#0f,#08,#00,#ff
	db #0e,#02,#01,#ff,#ff,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#42,#00,#00,#00,#00,#00,#0f
	db #08,#00,#ff,#0c,#02,#00,#ff,#01
	db #01,#01,#00,#01,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#42,#00,#00,#00
	db #00,#00,#0f,#08,#00,#ff,#0c,#02
	db #01,#ff,#06,#01,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#42
	db #00,#00,#00,#00,#00,#0f,#06,#00
	db #ff,#0c,#14,#0c,#ff,#ff,#00,#00
	db #00,#03,#05,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#42,#00,#00,#00,#00,#00
	db #0f,#06,#00,#ff,#0c,#14,#08,#ff
	db #ff,#00,#00,#00,#03,#03,#07,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#42,#00,#00
	db #00,#00,#00,#0f,#06,#00,#ff,#0c
	db #14,#08,#ff,#ff,#00,#00,#00,#03
	db #04,#07,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #42,#00,#00,#00,#00,#00,#0f,#06
	db #00,#ff,#0c,#05,#02,#ff,#ff,#00
	db #00,#00,#03,#05,#09,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#42,#00,#00,#00,#00
	db #00,#0f,#06,#00,#ff,#0c,#05,#02
	db #ff,#ff,#00,#00,#00,#03,#04,#07
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#42,#00
	db #00,#00,#00,#00,#0f,#06,#00,#ff
	db #0c,#05,#02,#ff,#ff,#00,#00,#00
	db #03,#03,#07,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#42,#00,#00,#00,#00,#01,#0f
	db #01,#01,#ff,#0a,#14,#02,#ff,#ff
	db #00,#00,#00,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#50,#00,#00,#00
	db #00,#00,#0f,#08,#00,#ff,#0a,#05
	db #02,#ff,#ff,#00,#00,#00,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#42
	db #00,#00,#00,#00,#00,#0f,#0f,#00
	db #fe,#0a,#00,#01,#ff,#01,#01,#01
	db #00,#10,#00,#e8,#00,#f4,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d0,#00,#00,#00,#00,#00
	db #0f,#0f,#00,#ff,#0d,#0a,#04,#ff
	db #ff,#00,#00,#00,#ff,#1e,#14,#0a
	db #00,#1e,#19,#14,#0a,#10,#0e,#0c
	db #0a,#08,#06,#04,#02,#d2,#00,#00
	db #00,#00,#00,#0f,#08,#01,#ff,#0c
	db #06,#03,#ff,#02,#02,#03,#02,#03
	db #18,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #42,#00,#00,#00,#00,#00,#0f,#02
	db #00,#ff,#0f,#00,#00,#fe,#ff,#00
	db #00,#00,#10,#1e,#00,#1e,#00,#00
	db #1e,#1e,#00,#00,#1e,#1e,#1e,#00
	db #00,#00,#00,#d0,#00,#00,#00,#00
.l067e
	dw l06e2,l06f9,l06fe,l0723
	dw l072a,l072d,l0730,l073d
	dw l0744,l0998,l09a1,l09a5
	dw l09c0,l09c0,l09a5,l09d0
	dw l09d9,l09dd,l09f5,l09fe
	dw l0a06,l0a19,l0a22,l09a5
	dw l0a35,l0a40,l0a44,l0a60
.l06ba equ $ + 4
	dw l09a5,l09a5,l074b,l0766
	dw l082f,l088c,l08af,l08fc
	dw l095d,l098c,l0995,l09a8
	dw l09b4,l09c9,l09e1,l09e8
	dw l0a0e,l0a2a,l0a48,l0a50
	dw l0a58,l0a69
.l06e2
	db #fc,#00,#fb,#18,#01,#0e,#fa,#fb
	db #01,#02,#03,#02,#fa,#05,#01,#02
.l06f9 equ $ + 7
	db #fa,#fb,#01,#02,#fa,#05,#fe,#00
.l06fe equ $ + 4
	db #02,#02,#14,#fe,#00,#01,#f9,#02
	db #01,#01,#f8,#01,#01,#02,#f8,#ff
	db #f9,#00,#03,#02,#04,#02,#03,#02
	db #05,#02,#04,#02,#fa,#fb,#04,#04
	db #fa,#05,#05,#02,#fa,#fb,#05,#02
.l0723 equ $ + 1
	db #fe,#fc,#00,#fb,#18,#06,#02,#fe
.l0730 equ $ + 6
.l072d equ $ + 3
.l072a
	db #02,#01,#fe,#03,#01,#fe,#fc,#00
	db #fb,#18,#07,#01,#06,#01,#08,#01
.l073d equ $ + 3
	db #06,#01,#ff,#07,#01,#02,#01,#00
.l0744 equ $ + 2
	db #0a,#fe,#07,#01,#04,#01,#00,#0a
.l074b equ $ + 1
	db #fe,#61,#00,#19,#10,#60,#10,#60
	db #10,#60,#10,#60,#10,#60,#10,#60
	db #10,#60,#10,#60,#10,#60,#10,#60
.l0766 equ $ + 4
	db #10,#60,#10,#fe,#61,#04,#25,#03
	db #61,#05,#25,#03,#25,#03,#61,#04
	db #25,#03,#61,#05,#25,#03,#25,#03
	db #61,#04,#25,#03,#25,#03,#25,#03
	db #61,#05,#25,#03,#25,#03,#61,#04
	db #25,#03,#61,#05,#25,#03,#25,#03
	db #61,#04,#25,#03,#25,#03,#25,#03
	db #61,#05,#25,#03,#25,#03,#61,#04
	db #25,#03,#61,#05,#25,#03,#25,#03
	db #61,#04,#25,#03,#25,#03,#25,#03
	db #61,#05,#25,#03,#25,#03,#61,#04
	db #25,#03,#61,#05,#25,#03,#25,#03
	db #61,#04,#25,#03,#25,#03,#2a,#03
	db #61,#05,#2a,#03,#2a,#03,#61,#04
	db #2a,#03,#61,#05,#2a,#03,#2a,#03
	db #61,#04,#2a,#03,#2a,#03,#2a,#03
	db #61,#05,#2a,#03,#2a,#03,#61,#04
	db #2a,#03,#61,#05,#2a,#03,#2a,#03
	db #61,#04,#20,#03,#61,#05,#20,#03
	db #61,#04,#23,#03,#61,#05,#23,#03
	db #23,#03,#61,#04,#23,#03,#61,#05
	db #23,#03,#23,#03,#61,#04,#23,#03
	db #23,#03,#23,#03,#61,#05,#23,#03
	db #23,#03,#61,#04,#23,#03,#61,#05
	db #23,#03,#23,#03,#61,#04,#24,#03
.l082f equ $ + 5
	db #61,#05,#24,#03,#fe,#61,#01,#31
	db #06,#31,#06,#61,#02,#31,#09,#61
	db #01,#31,#06,#31,#03,#31,#06,#61
	db #02,#31,#0c,#61,#01,#31,#06,#31
	db #06,#61,#02,#31,#03,#61,#01,#31
	db #06,#31,#06,#3d,#06,#3a,#03,#38
	db #06,#33,#06,#61,#01,#31,#06,#31
	db #06,#61,#02,#31,#09,#61,#01,#31
	db #06,#31,#03,#31,#06,#61,#02,#31
	db #0c,#61,#01,#31,#06,#3d,#09,#3a
	db #09,#31,#03,#35,#03,#31,#06,#61
	db #02,#31,#03,#31,#03,#31,#03,#31
.l088c equ $ + 2
	db #03,#fe,#61,#06,#44,#10,#60,#10
	db #60,#10,#60,#10,#60,#10,#60,#10
	db #61,#07,#44,#10,#60,#10,#60,#10
	db #61,#06,#47,#10,#60,#08,#61,#08
.l08af equ $ + 5
	db #47,#10,#60,#08,#fe,#61,#05,#44
	db #06,#42,#09,#3d,#03,#3f,#03,#40
	db #09,#42,#06,#40,#06,#3d,#06,#44
	db #06,#42,#06,#47,#03,#44,#03,#42
	db #03,#44,#03,#61,#00,#19,#10,#60
	db #08,#61,#05,#49,#06,#47,#06,#44
	db #06,#47,#06,#49,#03,#47,#06,#44
	db #06,#42,#06,#44,#06,#44,#03,#40
	db #03,#3d,#03,#3d,#06,#44,#06,#40
	db #03,#3d,#03,#3d,#06,#3b,#06,#3d
.l08fc equ $ + 2
	db #06,#fe,#61,#09,#44,#06,#44,#06
	db #44,#03,#44,#06,#44,#06,#44,#03
	db #44,#06,#44,#06,#61,#0a,#44,#06
	db #61,#09,#44,#06,#44,#06,#44,#03
	db #44,#06,#44,#06,#44,#03,#44,#06
	db #44,#06,#61,#0a,#44,#06,#61,#09
	db #40,#06,#40,#06,#40,#03,#40,#06
	db #40,#06,#40,#03,#40,#03,#40,#03
	db #40,#06,#61,#0b,#44,#06,#61,#09
	db #42,#06,#42,#06,#42,#03,#42,#06
	db #42,#06,#42,#03,#42,#03,#42,#03
	db #42,#03,#42,#03,#42,#03,#61,#0a
.l095d equ $ + 3
	db #42,#03,#fe,#61,#03,#25,#09,#31
	db #03,#61,#00,#25,#06,#61,#05,#23
	db #03,#24,#03,#25,#06,#31,#06,#28
	db #06,#2a,#06,#25,#09,#31,#03,#61
	db #00,#25,#06,#61,#05,#24,#03,#23
	db #03,#2a,#06,#28,#06,#31,#06,#25
.l098c equ $ + 2
	db #06,#fe,#61,#0c,#49,#0a,#60,#06
.l0998 equ $ + 6
.l0995 equ $ + 3
	db #61,#01,#fe,#fd,#11,#fe,#fc,#00
.l09a1 equ $ + 7
	db #fb,#18,#09,#01,#00,#01,#ff,#0a
.l09a8 equ $ + 6
.l09a5 equ $ + 3
	db #01,#00,#ff,#00,#01,#fe,#61,#0d
	db #fa,#00,#fe,#3d,#32,#60,#14,#61
.l09b4 equ $ + 2
	db #00,#fe,#61,#0d,#fa,#00,#fe,#49
.l09c0 equ $ + 6
	db #32,#60,#14,#61,#00,#fe,#fc,#00
.l09c9 equ $ + 7
	db #fb,#18,#0b,#01,#00,#01,#ff,#61
.l09d0 equ $ + 6
	db #0e,#3d,#14,#60,#14,#fe,#fc,#00
.l09d9 equ $ + 7
	db #fb,#00,#f7,#00,#0c,#01,#ff,#0d
.l09e1 equ $ + 7
.l09dd equ $ + 3
	db #01,#00,#0a,#0c,#01,#00,#0a,#61
.l09e8 equ $ + 6
	db #0f,#0d,#04,#0d,#20,#fe,#61,#07
	db #fa,#00,#ff,#55,#0a,#60,#05,#fa
.l09f5 equ $ + 3
	db #00,#00,#fe,#fc,#00,#fb,#18,#0e
.l09fe equ $ + 4
	db #01,#00,#01,#ff,#fa,#f4,#0e,#01
.l0a06 equ $ + 4
	db #fa,#00,#00,#05,#fa,#e8,#0e,#01
.l0a0e equ $ + 4
	db #fa,#00,#00,#05,#61,#10,#25,#03
.l0a19 equ $ + 7
	db #2a,#03,#36,#03,#60,#0a,#fe,#fc
	db #00,#fb,#18,#0e,#01,#00,#01,#ff
.l0a22
	db #fa,#f4,#0f,#01,#fa,#00,#00,#05
.l0a2a
	db #61,#10,#31,#02,#33,#02,#36,#02
.l0a35 equ $ + 3
	db #3a,#14,#fe,#fc,#00,#fb,#00,#f7
.l0a40 equ $ + 6
	db #00,#f8,#00,#10,#01,#ff,#12,#01
.l0a48 equ $ + 6
.l0a44 equ $ + 2
	db #00,#0a,#11,#01,#00,#0a,#61,#06
.l0a50 equ $ + 6
	db #fa,#00,#fc,#25,#40,#fe,#61,#06
.l0a58 equ $ + 6
	db #fa,#00,#fc,#31,#40,#fe,#61,#0f
.l0a60 equ $ + 6
	db #fa,#00,#01,#3d,#40,#fe,#fc,#00
.l0a69 equ $ + 7
	db #fb,#18,#13,#01,#00,#01,#ff,#61
.l0a71 equ $ + 7
.l0a70 equ $ + 6
	db #11,#00,#40,#61,#0a,#fe,#00,#00
.l0a72
	db #00,#00,#00,#00,#00,#00,#30,#30
.l0a81 equ $ + 7
.l0a80 equ $ + 6
.l0a7f equ $ + 5
.l0a7e equ $ + 4
.l0a7d equ $ + 3
	db #30,#30,#00,#0f,#00,#00,#00,#00
	db #00

.l0a83
	ld a,(l0a7f)
	and a
	ld b,a
	ret z
	ld a,(l0a81)
	cp #80
	jp z,l0aac
	ld a,(l0a80)
	dec a
	ld (l0a80),a
	ret nz
	ld a,(l0a81)
	ld (l0a80),a
	ld a,(l0a7d)
	add b
	bit 4,a
	jp nz,l0abb
	ld (l0a7d),a
	ret
.l0aac
	ld a,b
	cp #01
	ld a,#0f
	jp z,l0ab5
	xor a
.l0ab5
	ld (l0a7d),a
	jp l0abb
.l0abb
	xor a
	ld (l0a7f),a
	ld a,(l0a7e)
	and a
	jp nz,l0c74
	ret
	ld a,#00                ; not used code ?
	ld (l0a7d),a
	ld a,#01
.l0ace
	ld (l0a7f),a
	inc hl
	ld a,(hl)
	ld (l0a81),a
	ld (l0a80),a
	inc hl
	ret
	ld a,#0f                ; not used code ?
	ld (l0a7d),a
	ld a,#ff
	jp l0ace
.l0ae5
	db #00
;	db #3a,#7f,#0a,#a7,#47,#c8,#3a
;	db #81,#0a,#fe,#80,#ca,#ac,#0a,#3a
;	db #80,#0a,#3d,#32,#80,#0a,#c0,#3a
;	db #81,#0a,#32,#80,#0a,#3a,#7d,#0a
;	db #80,#cb,#67,#c2,#bb,#0a,#32,#7d
;	db #0a,#c9,#78,#fe,#01,#3e,#0f,#ca
;	db #b5,#0a,#af,#32,#7d,#0a,#c3,#bb
;	db #0a,#af,#32,#7f,#0a,#3a,#7e,#0a
;	db #a7,#c2,#74,#0c,#c9,#3e,#00,#32
;	db #7d,#0a,#3e,#01,#32,#7f,#0a,#23
;	db #7e,#32,#81,#0a,#32,#80,#0a,#23
;	db #c9,#3e,#0f,#32,#7d,#0a,#3e,#ff
;	db #c3,#ce,#0a,#00
.l0ae6
	ld a,h
	push af
	ld c,l
	cp #07
	jp nz,l0afd
	ld a,(l0ae5)
	cp c
	jp z,l0b18
	ld a,c
	ld (l0ae5),a
	res 7,c
	res 6,c
.l0afd
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	out (c),c
	xor a
	ld b,#f6
	out (c),a
	ret
.l0b18
	pop af
	ret
;	db #7c,#f5,#4d,#fe
;	db #07,#c2,#fd,#0a,#3a,#e5,#0a,#b9
;	db #ca,#18,#0b,#79,#32,#e5,#0a,#cb
;	db #b9,#cb,#b1,#3e,#c0,#06,#f6,#ed
;	db #79,#06,#f4,#f1,#ed,#79,#06,#f6
;	db #3e,#80,#ed,#79,#06,#f4,#ed,#49
;	db #af,#06,#f6,#ed,#79,#c9,#f1,#c9
.l0b21 equ $ + 7
.l0b20 equ $ + 6
.l0b1b equ $ + 1
.l0b1a
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l0b27 equ $ + 5
.l0b25 equ $ + 3
.l0b24 equ $ + 2
.l0b23 equ $ + 1
.l0b22
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#00
	db #00,#08,#04,#00,#00,#01,#00,#00
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.l0b58 equ $ + 6
.l0b56 equ $ + 4
.l0b52
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#01,#01,#02,#01,#ff,#00
	db #00,#02,#03,#09,#00,#00,#01,#00
	db #00,#00,#00,#00,#ef,#ff,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b89 equ $ + 7
.l0b87 equ $ + 5
.l0b83 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#0a,#01,#02,#02,#ff
	db #00,#00,#04,#05,#0a,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#df,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0bb4 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
;
.real_init_music		; theme 0,1,2
.l0bbd
;
	ld a,#0f
	ld (l0a7d),a
	xor a
	ld (l0a7f),a
	ld (l0a7e),a
	call l0c7c
	ld a,(l0a71)
	cp #ff
	jp nz,l0bd8
	inc a
	ld (l0a71),a
.l0bd8
	ld a,#01
	ld (l0b27),a
	ld (l0b58),a
	ld (l0b89),a
	xor a
	ld (l0a70),a
	push ix
	ld ix,l0b25
	ld a,(l0a71)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l067e
	add hl,de
	ld (l0c09),hl
	inc hl
	inc hl
	ld (l0c13),hl
	inc hl
	inc hl
	ld (l0c1d),hl
.l0c09 equ $ + 1
	ld hl,(#0000)
	call l0c42
	ld ix,l0b56
.l0c13 equ $ + 1
	ld hl,(#0000)
	call l0c42
	ld ix,l0b87
.l0c1d equ $ + 1
	ld hl,(#0000)
	call l0c42
	ld a,#01
	ld (l0407),a
	ld h,#07
	ld l,#f8
	call l0ae6
	ld a,(l0a71)
	cp #01
	pop ix
	ret
.l0c36
	halt
	call l0ca8              ; test player
	ld a,(l0407)
	and a
	jp nz,l0c36
	ret
.l0c42
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l11d4
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ld (ix+#2b),#00
	ld (ix+#2f),#00
	ret
.l0c74
	call l0c7c
	xor a
	ld (l0407),a
	ret
.l0c7c
	ld h,#07
	ld l,#ff
	call l0ae6
	ld hl,l0b1a
	ld de,l0b1b
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#ff
	ld (l0b21),a
.l0c95
	ld b,#0b
	ld h,#00
	ld de,l0b1a
.l0c9c
	ld a,(de)
	ld l,a
	push bc
	call l0ae6
	pop bc
	inc h
	inc de
	djnz l0c9c
	ret
;
.play_music
.l0ca8
;
	ld a,(l0406)
	and a
	jp z,l0ce0
	ld b,a
	xor a
	ld (l0406),a
	ld a,b
	cp #ff
	jp z,l0c74
	cp #fe
	jp nz,l0cd9
	ld b,#0a
	ld a,#01
	ld (l0a7e),a
	call l0ccc
	jp l0ce0
.l0ccc
	ld a,#ff
	ld (l0a7f),a
	ld a,b
	ld (l0a81),a
	ld (l0a80),a
	ret
.l0cd9
	dec a
	ld (l0a71),a
	jp l0bbd
.l0ce0
	call l0a83
	ld a,(l0407)
	and a
	jr z,l0d42
	push ix
	ld ix,l0b25
	bit 7,(ix+#0c)
	call z,l0d43
	ld ix,l0b56
	bit 7,(ix+#0c)
	call z,l0d43
	ld ix,l0b87
	bit 7,(ix+#0c)
	call z,l0d43
	ld a,(l0a7d)
	cpl
	and #0f
	ld b,a
	ld a,(l0a70)
	and a
	ld a,#10
	jp nz,l0d24
	ld a,(l0b22)
	sub b
	jp nc,l0d24
	xor a
.l0d24
	ld (l0b22),a
	ld a,(l0b23)
	sub b
	jp nc,l0d2f
	xor a
.l0d2f
	ld (l0b23),a
	ld a,(l0b24)
	sub b
	jp nc,l0d3a
	xor a
.l0d3a
	ld (l0b24),a
	call l0c95
	pop ix
.l0d42
	ret
.l0d43
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l0eea
.l0d4c
	ld a,(ix+#0c)
	and #03
	jp z,l0e0c
	cp #01
	jp z,l0d66
	cp #02
	jp z,l0da6
	cp #03
	jp z,l0df0
	jp l0e3d
.l0d66
	ld a,(ix+#0b)
	and a
	jr z,l0d72
	dec (ix+#0b)
	jp l0e3d
.l0d72
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l0d93
	jr nc,l0d8d
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l0e3d
.l0d8d
	ld a,(ix+#05)
	ld (ix+#04),a
.l0d93
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l0e3d
.l0da6
	ld a,(ix+#25)
	and a
	jr z,l0db2
	dec (ix+#25)
	jp l0e3d
.l0db2
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l0dd1
	ld b,(ix+#26)
	cp b
	jr z,l0dde
	jr c,l0dd8
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l0e3d
.l0dd1
	ld (ix+#04),#00
	jp l0dde
.l0dd8
	ld a,(ix+#26)
	ld (ix+#04),a
.l0dde
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l0e3d
.l0df0
	ld a,(ix+#27)
	and a
	jr z,l0dfb
	dec (ix+#27)
	jr l0e3d
.l0dfb
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l0e3d
.l0e0c
	ld a,(ix+#29)
	and a
	jr z,l0e17
	dec (ix+#29)
	jr l0e3d
.l0e17
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l0e2d
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l0e3d
.l0e2d
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l0e3d
.l0e3d
	ld a,(ix+#04)
	ld hl,l0b1a
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call l0f87
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l0e79
	ld a,(ix+#11)
	ld (ix+#10),a
.l0e79
	ld a,(ix+#1a)
	cp #ff
	jr z,l0eba
	and a
	jr z,l0e88
	dec (ix+#1a)
	jr nz,l0eba
.l0e88
	dec (ix+#1f)
	jr nz,l0e9b
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#2e)
	xor #01
	ld (ix+#2e),a
.l0e9b
	ld b,#00
	ld c,(ix+#1b)
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	bit 0,(ix+#2e)
	jr z,l0eaf
	add hl,bc
	jr l0eb1
.l0eaf
	sbc hl,bc
.l0eb1
	ld (ix+#1d),h
	ld (ix+#1c),l
	call l0ed5
.l0eba
	ld a,(ix+#2b)
	call l0ec8
	and a
	call nz,l0ed5
	ld a,(ix+#02)
	ret
.l0ec8
	ld l,a
	ld h,#00
	bit 7,a
	ret z
	ld d,h
	ld e,l
	sbc hl,de
	sbc hl,de
	ret
.l0ed5
	ld b,h
	ld c,l
	ld hl,l0b1a
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l0eea
	ld l,(ix+#00)
	ld h,(ix+#01)
.l0ef0
	ld a,(hl)
	cp #60
	jp z,l0f85
	cp #61
	jp z,l1086
	cp #62
	jp z,l1060
	cp #64
	jp z,l100d
	cp #65
	jp z,l1052
	cp #fa
	jp z,l1025
	cp #fc
	jp z,l0ff4
	cp #fd
	jp z,l0fd6
	cp #fe
	jp z,l1068
	cp #ff
	jp z,l104a
	ld b,a
	ld a,(ix+#30)
	ld (ix+#05),a
.l0f2a
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld (ix+#10),#00
	ld (ix+#04),#00
	ld a,b
	sub (ix+#2d)
	ld (ix+#03),a
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1d),#00
	ld (ix+#1c),#00
.l0f59
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l0a72)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld b,(ix+#2c)
	add b
	ld (ix+#2c),#00
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l0f87
	jp l0d4c
.l0f85
	jr l0f59
.l0f87
	ld a,(ix+#17)
	and a
	call nz,l0fcb
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l123d
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l0b1a
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l0a70)
	and a
	ret z
	ld a,(ix+#0f)
	cp #08
	ret nz
	ld de,#00c0
	add hl,de
	ex de,hl
	ld h,#0b
	ld a,(de)
	ld l,a
	call l0ae6
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l0ae6
	ret
.l0fcb
	ld a,(ix+#03)
	neg
	and #1f
	ld (l0b20),a
	ret
.l0fd6
	ld a,(ix+#05)
	and a
	jp z,l0fea
	ld a,(ix+#26)
	and a
	jp z,l0fea
	dec (ix+#05)
	dec (ix+#26)
.l0fea
	ld a,(ix+#03)
	add (ix+#2d)
	ld b,a
	jp l0f2a
.l0ff4
	ld a,(ix+#05)
	cp #0f
	jp z,l0fea
	ld a,(ix+#26)
	cp #0f
	jp z,l0fea
	inc (ix+#05)
	inc (ix+#26)
	jp l0fea
.l100d
	inc hl
	ld a,(hl)
	inc hl
	ld (l0b20),a
	jp l107d
.l1016
	inc hl
	ld a,(hl)
	inc hl
	ld b,a
	ld a,#01
	ld (l0a7e),a
	call l0ccc
	jp l11da
.l1025
	inc hl
	ld (ix+#2e),#01
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	bit 7,a
	jp z,l103b
	neg
	ld (ix+#2e),#00
.l103b
	ld (ix+#1b),a
	ld (ix+#1e),#ff
	ld (ix+#1f),#ff
	inc hl
	jp l107d
.l104a
	inc hl
	ld (ix+#04),#00
	jp l107d
.l1052
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l0ae6
	pop hl
	jp l107d
.l1060
	ld (ix+#04),#00
	inc hl
	jp l107d
.l1068
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l1077
	jp l11c6
	jp l0ef0
.l1077
	ld l,(ix+#15)
	ld h,(ix+#16)
.l107d
	ld (ix+#01),h
	ld (ix+#00),l
	jp l0ef0
.l1086
	inc hl
	ld a,(hl)
	bit 7,a
	jp nz,l1090
	add (ix+#2f)
.l1090
	and #7f
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l0408
	add hl,de
	ld d,#00
	add b
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ld (ix+#30),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#28),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	ld (ix+#10),#00
	ld de,#0010
	add hl,de
	ld a,(hl)
	ld (ix+#17),#00
	and a
	jp z,l1140
	and #12
	xor #12
	ld b,a
	ld c,#ed
	ld a,(ix+#0f)
	cp #08
	jp z,l1127
	cp #09
	jp z,l112b
	sla b
	rlc c
	jp l112b
.l1127
	srl b
	sra c
.l112b
	ld a,(l0b21)
	and c
	or #c0
	or b
	ld (l0b21),a
	ld a,(hl)
	bit 7,a
	jp z,l1140
	and #38
	ld (ix+#17),a
.l1140
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l115c
	ld a,(hl)
	ld (l0a70),a
	and a
	jp z,l115c
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l0ae6
	pop hl
.l115c
	pop hl
	jp l0ef0
.l1160
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l138d
	add hl,de
	ld (l0a72),hl
	pop hl
	jp l11da
.l1175
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2f),a
	jp l11da
.l117e
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp l11da
.l1187
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp l11da
.l1190
	inc hl
	ld a,(hl)
	sub #0c
	inc hl
	ld (l0b52),a
	ld (l0b83),a
	ld (l0bb4),a
	jp l11da
.l11a1
	inc hl
	ld b,(hl)
	inc hl
	ld a,(ix+#2d)
	add b
	ld (ix+#2d),a
	jp l11da
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l0d4c
	call l0c74
	jp l0d4c
.l11c6
	call l11d4
	jp l0eea
.l11cc
	pop bc
	jp l0c74
.l11d0
	pop bc
	jp l0bbd
.l11d4
	ld l,(ix+#20)
	ld h,(ix+#21)
.l11da
	ld a,(hl)
	cp #f7
	jp z,l1175
	cp #f8
	jp z,l117e
	cp #f9
	jp z,l1187
	cp #f6
	jp z,l1016
	cp #fa
	jp z,l11a1
	cp #fb
	jp z,l1190
	cp #fc
	jp z,l1160
	cp #fd
	jp z,l11d0
	cp #fe
	jr z,l1231
	cp #ff
	jr z,l11cc
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l06ba
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ret
.l1231
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l11da
.l123d equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04d4
	dw #0470,#0431,#03f4,#03dc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #6a,#00,#64,#00,#5e,#00,#5a,#00
	db #54,#00,#4f,#00,#4a,#00,#47,#00
	db #43,#00,#3f,#00,#3b,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#25,#00,#23,#00
	db #21,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#16,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#0e,#00
	db #0d,#00,#0c,#00,#0b,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l138d
	db #02,#04,#06,#08,#0a,#0c,#0e,#10
	db #12,#14,#16,#18,#1a,#1c,#1e,#20
	db #22,#24,#26,#28,#2a,#2c,#2e,#30
	db #32,#34,#36,#38,#3a,#3c,#3e,#40
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
;
; #3b38
;
; ld (#0406),a
; ld (l3b42),a
; call #0400	; init
; .l3b42 equ $ + 1
; ld a,#01
; ld (#1d79),a
; ld l,a
; ld h,#00
; ld de,#1d7a
; add hl,de
; ld a,(hl)
; ld (#1d78),a
; ret
;
; #2843
; call #0403	; play
;
.init_music	; added by Megachur
;
	ld (l0a71),a
	jp real_init_music
;
.music_info
	db "Reckless Rufus (1992)(Alternative Software)(Andy Severn)",0
	db "",0

	read "music_end.asm"
