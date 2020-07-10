; Music of European Soccer Challenge (1989)(Players)()()
; Ripped by Megachur the 10/12/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EUROPESC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #4000

	read "music_header.asm"

; 10/03/2019 - clean player code

	jp l47d3	; init_music
	jp l48be	; play_music
.l4008 equ $ + 2
.music_end equ $ + 1
.l4007 equ $ + 1
.l4006
	db #01,#01,#00,#0f,#08,#00,#fe,#0c
	db #00,#00,#ff,#ff,#00,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c2,#00,#00,#00,#00,#00,#0f,#0f
	db #00,#fd,#0c,#02,#02,#ff,#03,#05
	db #05,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c2,#00,#00,#00,#00
	db #00,#0f,#0c,#00,#ff,#0e,#03,#01
	db #ff,#ff,#00,#00,#00,#03,#04,#07
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#c2,#00
	db #00,#00,#00,#00,#0f,#0c,#00,#ff
	db #0e,#03,#01,#ff,#ff,#00,#00,#00
	db #03,#03,#07,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#c2,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#08,#02,#ff,#0c,#14
	db #02,#ff,#0a,#01,#07,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#c2
	db #00,#00,#00,#00,#00,#0f,#0f,#00
	db #fe,#0d,#00,#00,#ff,#ff,#00,#00
	db #03,#06,#f4,#f0,#e8,#e8,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d2,#00,#00,#00,#00,#00
	db #0f,#08,#02,#ff,#0c,#14,#02,#ff
	db #00,#01,#04,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#c2,#00,#00
	db #00,#00,#00,#0f,#08,#02,#ff,#0c
	db #14,#02,#ff,#00,#01,#07,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c2,#00,#00,#00,#00,#00,#0f,#08
	db #02,#ff,#0c,#14,#02,#ff,#00,#01
	db #07,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c2,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0c
	db #08,#00,#00,#0c,#00,#00,#fe,#ff
	db #00,#00,#02,#04,#24,#18,#12,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#42,#00,#00,#00
	db #00
.l41cf
	dw l421b,l425b,l42a5,l4256
.l41db equ $ + 4
	dw l42a1,l42eb,l42f1,l42f6
	dw l4309,l4324,l4337,l4346
	dw l4359,l4374,l4391,l43ac
	dw l43d1,l4412,l4449,l4472
	dw l4497,l44bc,l44e4,l44fc
	dw l4521,l4549,l456e,l45a0
	dw l45ae,l45e3,l45f2,l45fd
	dw l4617,l462f,l4642,l464d
	dw l4670,l4684
.l421b
	db #fc,#00,#fb,#18,#12,#01,#01,#02
	db #08,#01,#09,#03,#0c,#01,#fa,#fb
	db #0a,#01,#0b,#01,#0a,#01,#0b,#01
	db #0a,#01,#0b,#01,#fa,#fe,#0a,#01
	db #16,#01,#0a,#01,#fa,#01,#0b,#01
	db #0a,#01,#0b,#01,#fa,#ff,#0a,#03
	db #0b,#01,#fa,#fe,#0a,#03,#0b,#01
.l4256 equ $ + 3
	db #fa,#09,#fd,#1b,#01,#00,#02,#ff
.l425b
	db #02,#01,#05,#01,#02,#01,#06,#01
	db #02,#01,#05,#01,#02,#01,#06,#01
	db #fa,#fb,#0d,#01,#0e,#01,#0d,#01
	db #0f,#01,#0d,#01,#0e,#01,#fa,#fe
	db #0d,#01,#0f,#01,#0d,#01,#fa,#01
	db #0e,#01,#0d,#01,#0f,#01,#fa,#06
	db #0d,#01,#0e,#01,#0d,#01,#0f,#01
	db #fa,#fe,#0d,#01,#0e,#01,#0d,#01
.l42a1 equ $ + 6
	db #0f,#01,#fa,#02,#00,#0a,#1c,#01
.l42a5 equ $ + 2
	db #00,#0a,#03,#01,#04,#01,#03,#01
	db #07,#01,#03,#01,#04,#01,#03,#01
	db #07,#01,#f7,#05,#10,#01,#11,#01
	db #f7,#00,#00,#01,#f7,#05,#12,#01
	db #10,#01,#11,#01,#14,#01,#15,#01
	db #17,#01,#18,#01,#19,#01,#1a,#01
	db #f7,#08,#0d,#01,#0e,#01,#0d,#01
	db #0f,#01,#fa,#fe,#0d,#01,#0e,#01
	db #0d,#01,#0f,#01,#fa,#02,#00,#0a
.l42f1 equ $ + 6
.l42eb
	db #1d,#01,#1e,#01,#00,#0a,#61,#00
.l42f6 equ $ + 3
	db #60,#20,#fe,#61,#0c,#25,#04,#25
	db #04,#25,#04,#25,#04,#25,#04,#25
.l4309 equ $ + 6
	db #04,#25,#04,#25,#04,#fe,#61,#00
	db #25,#02,#31,#04,#25,#02,#31,#04
	db #25,#02,#31,#04,#25,#02,#31,#04
	db #2c,#02,#28,#02,#22,#02,#23,#02
.l4324 equ $ + 1
	db #fe,#61,#00,#60,#04,#61,#02,#40
	db #06,#40,#06,#61,#03,#3f,#06,#3f
.l4337 equ $ + 4
	db #06,#3f,#04,#fe,#61,#00,#60,#04
	db #61,#02,#40,#06,#40,#06,#61,#03
.l4346 equ $ + 3
	db #3f,#10,#fe,#61,#00,#25,#02,#31
	db #04,#25,#02,#31,#04,#25,#02,#31
.l4359 equ $ + 6
	db #0e,#22,#02,#23,#02,#fe,#61,#00
	db #25,#02,#31,#04,#25,#02,#31,#04
	db #25,#02,#31,#04,#28,#02,#27,#02
	db #25,#02,#27,#04,#23,#02,#25,#02
.l4374 equ $ + 1
	db #fe,#61,#00,#60,#04,#61,#02,#40
	db #06,#40,#08,#40,#02,#61,#03,#3f
	db #02,#3d,#02,#3f,#04,#61,#02,#3b
.l4391 equ $ + 6
	db #02,#61,#03,#3d,#02,#fe,#61,#0c
	db #25,#04,#25,#04,#25,#04,#25,#04
	db #25,#04,#25,#04,#25,#02,#61,#06
	db #25,#02,#25,#02,#25,#01,#25,#01
.l43ac equ $ + 1
	db #fe,#61,#0c,#25,#04,#61,#06,#25
	db #02,#61,#0c,#25,#04,#25,#02,#61
	db #06,#25,#04,#61,#0c,#25,#04,#61
	db #06,#25,#02,#61,#0c,#25,#04,#25
.l43d1 equ $ + 6
	db #02,#61,#06,#25,#04,#fe,#61,#0c
	db #25,#02,#61,#02,#40,#02,#61,#06
	db #25,#02,#61,#0c,#25,#02,#61,#02
	db #40,#02,#61,#0c,#25,#02,#61,#06
	db #25,#02,#61,#02,#40,#02,#61,#0c
	db #25,#02,#61,#03,#3f,#02,#61,#06
	db #25,#02,#61,#0c,#25,#02,#61,#03
	db #3f,#02,#61,#0c,#25,#02,#61,#06
.l4412 equ $ + 7
	db #25,#02,#61,#03,#3f,#02,#fe,#61
	db #0c,#25,#02,#61,#02,#40,#02,#61
	db #06,#25,#02,#61,#0c,#25,#02,#61
	db #02,#40,#02,#61,#0c,#25,#02,#61
	db #06,#25,#02,#61,#02,#40,#02,#61
	db #0c,#25,#02,#61,#03,#3f,#02,#61
	db #06,#25,#02,#61,#0c,#25,#04,#25
.l4449 equ $ + 6
	db #02,#61,#06,#25,#04,#fe,#61,#0c
	db #25,#04,#61,#06,#25,#02,#61,#0c
	db #25,#04,#25,#02,#61,#06,#25,#04
	db #61,#0c,#25,#04,#61,#06,#25,#02
	db #61,#0c,#25,#04,#61,#06,#25,#02
.l4472 equ $ + 7
	db #25,#01,#25,#01,#25,#02,#fe,#61
	db #00,#25,#02,#2f,#02,#31,#02,#25
	db #03,#62,#60,#01,#31,#04,#61,#01
	db #2f,#04,#61,#00,#2e,#02,#2c,#02
	db #2e,#03,#62,#60,#01,#22,#02,#23
.l4497 equ $ + 4
	db #02,#25,#02,#fe,#61,#00,#25,#02
	db #2f,#02,#31,#02,#25,#03,#62,#60
	db #01,#31,#04,#61,#01,#2f,#03,#61
	db #00,#62,#60,#01,#2e,#02,#20,#02
	db #2c,#04,#2e,#02,#2a,#02,#25,#02
.l44bc equ $ + 1
	db #fe,#61,#00,#25,#02,#2f,#02,#31
	db #02,#25,#03,#62,#60,#01,#31,#04
	db #61,#01,#2f,#02,#61,#00,#37,#02
	db #36,#02,#34,#02,#61,#01,#31,#04
	db #61,#00,#2c,#02,#2f,#02,#31,#02
.l44e4 equ $ + 1
	db #fe,#61,#00,#60,#04,#4c,#01,#4e
	db #03,#4c,#01,#61,#02,#4e,#03,#61
	db #00,#4c,#02,#50,#02,#62,#60,#10
.l44fc equ $ + 1
	db #fe,#61,#00,#60,#04,#4c,#01,#4e
	db #03,#4c,#01,#61,#02,#4e,#03,#61
	db #00,#4c,#02,#51,#04,#50,#01,#62
	db #60,#01,#4e,#04,#4c,#03,#62,#60
.l4521 equ $ + 6
	db #01,#50,#02,#49,#02,#fe,#61,#00
	db #62,#60,#12,#47,#01,#62,#60,#01
	db #61,#02,#49,#02,#61,#00,#47,#01
	db #62,#60,#01,#61,#02,#4e,#02,#61
	db #00,#4c,#01,#62,#60,#01,#47,#02
.l4549 equ $ + 6
	db #49,#01,#62,#60,#01,#fe,#61,#00
	db #60,#04,#4c,#01,#4e,#03,#4c,#01
	db #61,#02,#4e,#03,#61,#00,#4c,#02
	db #51,#04,#50,#01,#62,#60,#01,#4e
	db #04,#4c,#03,#62,#60,#01,#50,#02
.l456e equ $ + 3
	db #4e,#02,#fe,#61,#00,#47,#01,#49
	db #01,#47,#02,#47,#01,#49,#01,#47
	db #02,#47,#01,#49,#01,#47,#02,#47
	db #01,#49,#01,#47,#02,#4e,#01,#62
	db #60,#01,#61,#00,#4d,#01,#62,#60
	db #01,#4b,#01,#62,#60,#01,#49,#04
.l45a0 equ $ + 5
	db #44,#04,#46,#02,#fe,#61,#00,#60
	db #0c,#47,#02,#44,#02,#62,#60,#0c
.l45ae equ $ + 3
	db #42,#04,#fe,#61,#0c,#25,#02,#61
	db #02,#40,#02,#61,#06,#25,#02,#61
	db #0c,#25,#02,#61,#02,#40,#02,#61
	db #0c,#25,#02,#61,#06,#25,#02,#61
	db #02,#40,#02,#61,#0c,#25,#02,#61
	db #03,#3f,#04,#61,#06,#25,#04,#25
	db #02,#25,#02,#25,#01,#25,#01,#fe
.l45e3
	db #61,#00,#3f,#06,#3b,#06,#3f,#04
.l45f2 equ $ + 7
	db #42,#06,#44,#06,#42,#04,#fe,#61
	db #00,#41,#0c,#43,#04,#45,#08,#4a
.l45fd equ $ + 2
	db #08,#fe,#61,#00,#48,#0c,#48,#02
	db #4a,#01,#62,#60,#03,#61,#02,#43
	db #04,#61,#00,#62,#60,#06,#62,#60
.l4617 equ $ + 4
	db #02,#45,#02,#fe,#61,#00,#48,#0c
	db #48,#02,#4a,#01,#62,#60,#03,#61
	db #02,#43,#04,#61,#00,#62,#60,#06
.l462f equ $ + 4
	db #62,#60,#04,#fe,#61,#00,#25,#06
	db #61,#06,#25,#04,#61,#00,#25,#02
.l4642 equ $ + 7
	db #25,#06,#61,#06,#25,#0e,#fe,#61
	db #03,#49,#06,#49,#06,#49,#06,#49
.l464d equ $ + 2
	db #0e,#fe,#61,#05,#49,#02,#4b,#02
	db #49,#02,#44,#02,#49,#02,#44,#02
	db #42,#02,#44,#02,#42,#02,#3f,#02
	db #42,#02,#3f,#02,#3d,#02,#3f,#02
.l4670 equ $ + 5
	db #3d,#02,#38,#02,#fe,#61,#05,#3d
	db #02,#38,#02,#36,#02,#33,#02,#30
	db #04,#31,#0a,#61,#00,#62,#60,#0a
.l468a equ $ + 7
.l4689 equ $ + 6
.l4684 equ $ + 1
	db #fe,#61,#02,#3d,#10,#fe,#00,#00
.l468b
	db #00,#00,#00,#00,#00,#00,#30,#30
.l469a equ $ + 7
.l4699 equ $ + 6
.l4698 equ $ + 5
.l4697 equ $ + 4
.l4696 equ $ + 3
	db #30,#30,#00,#0f,#00,#00,#00,#00
	db #00
.l469c
	ld a,(l4698)
	and a
	ld b,a
	ret z
	ld a,(l469a)
	cp #80
	jp z,l46c5
	ld a,(l4699)
	dec a
	ld (l4699),a
	ret nz
	ld a,(l469a)
	ld (l4699),a
	ld a,(l4696)
	add b
	bit 4,a
	jp nz,l46d4
	ld (l4696),a
	ret
.l46c5
	ld a,b
	cp #01
	ld a,#0f
	jp z,l46ce
	xor a
.l46ce
	ld (l4696),a
	jp l46d4
.l46d4
	xor a
	ld (l4698),a
	ld a,(l4697)
	and a
	jp nz,l488a
	ret
	ld a,#00
	ld (l4696),a
	ld a,#01
.l46e7
	ld (l4698),a
	inc hl
	ld a,(hl)
	ld (l469a),a
	ld (l4699),a
	inc hl
	ret
	ld a,#0f
	ld (l4696),a
	ld a,#ff
	jp l46e7
.l46fe
	nop
.l46ff
	ld a,h
	push af
	ld c,l
	cp #07
	jp nz,l4716
	ld a,(l46fe)
	cp c
	jp z,l4731
	ld a,c
	ld (l46fe),a
	res 7,c
	res 6,c
.l4716
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
.l4731
	pop af
	ret
.l473a equ $ + 7
.l4739 equ $ + 6
.l4734 equ $ + 1
.l4733
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l4740 equ $ + 5
.l473e equ $ + 3
.l473d equ $ + 2
.l473c equ $ + 1
.l473b
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#00
	db #00,#08,#04,#00,#00,#01,#00,#00
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.l4770 equ $ + 5
.l476e equ $ + 3
.l476b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#01,#01,#02,#01,#ff,#00,#00
	db #02,#03,#09,#00,#00,#01,#00,#00
	db #00,#00,#00,#ef,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l47a0 equ $ + 5
.l479e equ $ + 3
.l479b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0a,#01,#02,#02,#ff,#00,#00
	db #04,#05,#0a,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#df,#ff,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l47cb
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music
.l47d3
;
	ld a,#0f
	ld (l4696),a
	xor a
	ld (l4698),a
	ld (l4697),a
	call l4892
	ld a,(l468a)
	cp #ff
	jp nz,l47ee
	inc a
	ld (l468a),a
.l47ee
	ld a,#01
	ld (l4740),a
	ld (l4770),a
	ld (l47a0),a
	xor a
	ld (l4689),a
	push ix
	ld ix,l473e
	ld a,(l468a)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l41cf
	add hl,de
	ld (l481f),hl
	inc hl
	inc hl
	ld (l4829),hl
	inc hl
	inc hl
	ld (l4833),hl
.l481f equ $ + 1
	ld hl,(#0000)
	call l4858
	ld ix,l476e
.l4829 equ $ + 1
	ld hl,(#0000)
	call l4858
	ld ix,l479e
.l4833 equ $ + 1
	ld hl,(#0000)
	call l4858
	ld a,#01
	ld (l4007),a
	ld h,#07
	ld l,#f8
	call l46ff
	ld a,(l468a)
	cp #01
	pop ix
	ret
.l484c		; test player
	halt
	call l48be
	ld a,(l4007)
	and a
	jp nz,l484c
	ret
.l4858		; reset music ?
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l4de4
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ld (ix+#2b),#00
	ld (ix+#2f),#00
	ret
;
.stop_music
.l488a		; music end ?
;
	call l4892
	xor a
	ld (l4007),a
	ret
.l4892
	ld h,#07
	ld l,#ff
	call l46ff
	ld hl,l4733
	ld de,l4734
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#ff
	ld (l473a),a
.l48ab
	ld b,#0b
	ld h,#00
	ld de,l4733
.l48b2
	ld a,(de)
	ld l,a
	push bc
	call l46ff
	pop bc
	inc h
	inc de
	djnz l48b2
	ret
;
.play_music
.l48be
;
	ld a,(l4006)
	and a
	jp z,l48f6
	ld b,a
	xor a
	ld (l4006),a
	ld a,b
	cp #ff
	jp z,l488a
	cp #fe
	jp nz,l48ef
	ld b,#0a
	ld a,#01
	ld (l4697),a
	call l48e2
	jp l48f6
.l48e2
	ld a,#ff
	ld (l4698),a
	ld a,b
	ld (l469a),a
	ld (l4699),a
	ret
.l48ef
	dec a
	ld (l468a),a
	jp l47d3
.l48f6
	call l469c
	ld a,(l4007)
	and a
	jr z,l4958
	push ix
	ld ix,l473e
	bit 7,(ix+#0c)
	call z,l4959
	ld ix,l476e
	bit 7,(ix+#0c)
	call z,l4959
	ld ix,l479e
	bit 7,(ix+#0c)
	call z,l4959
	ld a,(l4696)
	cpl
	and #0f
	ld b,a
	ld a,(l4689)
	and a
	ld a,#10
	jp nz,l493a
	ld a,(l473b)
	sub b
	jp nc,l493a
	xor a
.l493a
	ld (l473b),a
	ld a,(l473c)
	sub b
	jp nc,l4945
	xor a
.l4945
	ld (l473c),a
	ld a,(l473d)
	sub b
	jp nc,l4950
	xor a
.l4950
	ld (l473d),a
	call l48ab
	pop ix
.l4958
	ret
.l4959
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l4b00
.l4962
	ld a,(ix+#0c)
	and #03
	jp z,l4a22
	cp #01
	jp z,l497c
	cp #02
	jp z,l49bc
	cp #03
	jp z,l4a06
	jp l4a53
.l497c
	ld a,(ix+#0b)
	and a
	jr z,l4988
	dec (ix+#0b)
	jp l4a53
.l4988
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l49a9
	jr nc,l49a3
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l4a53
.l49a3
	ld a,(ix+#05)
	ld (ix+#04),a
.l49a9
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l4a53
.l49bc
	ld a,(ix+#25)
	and a
	jr z,l49c8
	dec (ix+#25)
	jp l4a53
.l49c8
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l49e7
	ld b,(ix+#26)
	cp b
	jr z,l49f4
	jr c,l49ee
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l4a53
.l49e7
	ld (ix+#04),#00
	jp l49f4
.l49ee
	ld a,(ix+#26)
	ld (ix+#04),a
.l49f4
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l4a53
.l4a06
	ld a,(ix+#27)
	and a
	jr z,l4a11
	dec (ix+#27)
	jr l4a53
.l4a11
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l4a53
.l4a22
	ld a,(ix+#29)
	and a
	jr z,l4a2d
	dec (ix+#29)
	jr l4a53
.l4a2d
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l4a43
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l4a53
.l4a43
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l4a53
.l4a53
	ld a,(ix+#04)
	ld hl,l4733
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
	call l4b9b
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l4a8f
	ld a,(ix+#11)
	ld (ix+#10),a
.l4a8f
	ld a,(ix+#1a)
	cp #ff
	jr z,l4ad0
	and a
	jr z,l4a9e
	dec (ix+#1a)
	jr nz,l4ad0
.l4a9e
	dec (ix+#1f)
	jr nz,l4ab1
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#2e)
	xor #01
	ld (ix+#2e),a
.l4ab1
	ld b,#00
	ld c,(ix+#1b)
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	bit 0,(ix+#2e)
	jr z,l4ac5
	add hl,bc
	jr l4ac7
.l4ac5
	sbc hl,bc
.l4ac7
	ld (ix+#1d),h
	ld (ix+#1c),l
	call l4aeb
.l4ad0
	ld a,(ix+#2b)
	call l4ade
	and a
	call nz,l4aeb
	ld a,(ix+#02)
	ret
.l4ade
	ld l,a
	ld h,#00
	bit 7,a
	ret z
	ld d,h
	ld e,l
	sbc hl,de
	sbc hl,de
	ret
.l4aeb
	ld b,h
	ld c,l
	ld hl,l4733
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
.l4b00
	ld l,(ix+#00)
	ld h,(ix+#01)
.l4b06
	ld a,(hl)
	cp #60
	jp z,l4b99
	cp #61
	jp z,l4c99
	cp #62
	jp z,l4c73
	cp #64
	jp z,l4c21
	cp #65
	jp z,l4c65
	cp #fa
	jp z,l4c38
	cp #fc
	jp z,l4c08
	cp #fd
	jp z,l4bea
	cp #fe
	jp z,l4c7b
	cp #ff
	jp z,l4c5d
	ld b,a
	ld (ix+#05),#0f
.l4b3e
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
.l4b6d
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l468b)
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
	call l4b9b
	jp l4962
.l4b99
	jr l4b6d
.l4b9b
	ld a,(ix+#17)
	and a
	call nz,l4bdf
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l4e4d
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l4733
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l4689)
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
	call l46ff
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l46ff
	ret
.l4bdf
	ld a,(ix+#03)
	neg
	and #1f
	ld (l4739),a
	ret
.l4bea
	ld a,(ix+#05)
	and a
	jp z,l4bfe
	ld a,(ix+#26)
	and a
	jp z,l4bfe
	dec (ix+#05)
	dec (ix+#26)
.l4bfe
	ld a,(ix+#03)
	add (ix+#2d)
	ld b,a
	jp l4b3e
.l4c08
	ld a,(ix+#05)
	cp #0f
	jp z,l4bfe
	ld a,(ix+#26)
	cp #0f
	jp z,l4bfe
	inc (ix+#05)
	inc (ix+#26)
	jp l4bfe
.l4c21
	inc hl
	ld a,(hl)
	inc hl
	ld (l4739),a
	jp l4c90
.l4c2a
	inc hl
	ld a,(hl)
	inc hl
	ld b,a
	xor a
	ld (l4697),a
	call l48e2
	jp l4dea
.l4c38
	inc hl
	ld (ix+#2e),#01
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	bit 7,a
	jp z,l4c4e
	neg
	ld (ix+#2e),#00
.l4c4e
	ld (ix+#1b),a
	ld (ix+#1e),#ff
	ld (ix+#1f),#ff
	inc hl
	jp l4c90
.l4c5d
	inc hl
	ld (ix+#04),#00
	jp l4c90
.l4c65
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l46ff
	pop hl
	jp l4c90
.l4c73
	ld (ix+#04),#00
	inc hl
	jp l4c90
.l4c7b
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l4c8a
	jp l4dd6
	jp l4b06
.l4c8a
	ld l,(ix+#15)
	ld h,(ix+#16)
.l4c90
	ld (ix+#01),h
	ld (ix+#00),l
	jp l4b06
.l4c99
	inc hl
	ld a,(hl)
	bit 7,a
	jp nz,l4ca3
	add (ix+#2f)
.l4ca3
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
	ld de,l4008
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
	jp z,l4d50
	and #12
	xor #12
	ld b,a
	ld c,#ed
	ld a,(ix+#0f)
	cp #08
	jp z,l4d37
	cp #09
	jp z,l4d3b
	sla b
	rlc c
	jp l4d3b
.l4d37
	srl b
	sra c
.l4d3b
	ld a,(l473a)
	and c
	or #c0
	or b
	ld (l473a),a
	ld a,(hl)
	bit 7,a
	jp z,l4d50
	and #38
	ld (ix+#17),a
.l4d50
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l4d6c
	ld a,(hl)
	ld (l4689),a
	and a
	jp z,l4d6c
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l46ff
	pop hl
.l4d6c
	pop hl
	jp l4b06
.l4d70
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l4f9d
	add hl,de
	ld (l468b),hl
	pop hl
	jp l4dea
.l4d85
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2f),a
	jp l4dea
.l4d8e
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp l4dea
.l4d97
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp l4dea
.l4da0
	inc hl
	ld a,(hl)
	sub #0c
	inc hl
	ld (l476b),a
	ld (l479b),a
	ld (l47cb),a
	jp l4dea
.l4db1
	inc hl
	ld b,(hl)
	inc hl
	ld a,(ix+#2d)
	add b
	ld (ix+#2d),a
	jp l4dea
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l4962
	call l488a
	jp l4962
.l4dd6
	call l4de4
	jp l4b00
.l4ddc
	pop bc
	jp l488a
.l4de0
	pop bc
	jp l47d3
.l4de4
	ld l,(ix+#20)
	ld h,(ix+#21)
.l4dea
	ld a,(hl)
	cp #f7
	jp z,l4d85
	cp #f8
	jp z,l4d8e
	cp #f9
	jp z,l4d97
	cp #f6
	jp z,l4c2a
	cp #fa
	jp z,l4db1
	cp #fb
	jp z,l4da0
	cp #fc
	jp z,l4d70
	cp #fd
	jp z,l4de0
	cp #fe
	jr z,l4e41
	cp #ff
	jr z,l4ddc
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l41db
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
.l4e41
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l4dea
.l4e4d equ $ + 4
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
.l4f9d
	db #03,#06,#09,#0c,#0f,#12,#15,#18
	db #1b,#1e,#21,#24,#27,#2a,#2d,#30
	db #33,#36,#39,#3c,#3f,#42,#45,#48
	db #4b,#4e,#51,#54,#57,#5a,#5d,#60
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
;
.music_info
	db "European Soccer Challenge (1989)(Players)()",0
	db "",0

	read "music_end.asm"
