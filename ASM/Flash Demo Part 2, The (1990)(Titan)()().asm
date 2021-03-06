; Music of Flash Demo Part 2, The (1990)(Titan)()()
; Ripped by Megachur the 29/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FLASHDP2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #6000

	read "music_header.asm"

	jr l6012	; init music interrupt
	jr l6004	; stop music interrupt
.l6004
	ld hl,l6167
	call #bcdd
;
.stop_music
;
	ld a,#07
	ld c,#3f
	call l6139
	ret
.l6012
	ld hl,l6167
	ld de,l604a
	ld bc,#8100
	call #bcd7
;
.init_music
;
	ld hl,l6170
	ld (l6161),hl
	ld (l6163),hl
	ret
.l6028
	ld a,(l615f)
	ld (l6160),a
	jr l603a
.l6030
	call l6004
	jr l6041
.l6035
	ld hl,(l6163)
	jr l6063
.l603a
	dec a
	ld (l6160),a
	ld (l6161),hl
.l6041
	pop ix
	pop iy
	pop hl
	pop de
	pop bc
	pop af
	ret
;
.play_music
.l604a
;
	push af
	push bc
	push de
	push hl
	push iy
	push ix
	ld a,(l6160)
	ld hl,(l6161)
	cp #00
	jr nz,l603a
	ld a,#07
	ld c,#38
	call l6139
.l6063
	inc hl
	ld a,(hl)
	cp #f1
	jr z,l6093
	cp #f2
	jr z,l6098
	cp #f3
	jr z,l609d
	cp #f4
	jr z,l60a2
	cp #f6
	jr z,l60aa
	cp #aa
	jr z,l60b5
	cp #bb
	jr z,l60c9
	cp #cc
	jr z,l60d7
	cp #ff
	jr z,l6028
	cp #dd
	jr z,l6035
	cp #ee
	jr z,l6030
	jr l6063
.l6093
	call l60df
	jr l6063
.l6098
	call l60f6
	jr l6063
.l609d
	call l610d
	jr l6063
.l60a2
	call l60df
	call l60f6
	jr l6063
.l60aa
	call l60df
	call l60f6
	call l610d
	jr l6063
.l60b5
	call l6159
	ld (l615c),a
	call l6159
	ld (l615d),a
	call l6159
	ld (l615e),a
	jr l6063
.l60c9
	call l6159
	ld (l6165),a
	call l6159
	ld (l6166),a
	jr l6063
.l60d7
	call l6159
	ld (l615f),a
	jr l6063
.l60df
	ld a,#01
	call l6137
	ld a,#00
	call l6137
	ld a,(l615c)
	ld c,a
	ld a,#08
	call l6139
	call l6124
	ret
.l60f6
	ld a,#03
	call l6137
	ld a,#02
	call l6137
	ld a,(l615d)
	ld c,a
	ld a,#09
	call l6139
	call l6124
	ret
.l610d
	ld a,#05
	call l6137
	ld a,#04
	call l6137
	ld a,(l615e)
	ld c,a
	ld a,#0a
	call l6139
	call l6124
	ret
.l6124
	ld a,(l6165)
	ld c,a
	ld a,#0c
	call l6139
	ld a,(l6166)
	ld c,a
	ld a,#0d
	call l6139
	ret
.l6137
	inc hl
	ld c,(hl)
.l6139
	di
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ei
	ret
.l6159
	inc hl
	ld a,(hl)
	ret
.l6163 equ $ + 7
.l6161 equ $ + 5
.l6160 equ $ + 4
.l615f equ $ + 3
.l615e equ $ + 2
.l615d equ $ + 1
.l615c
	db #10,#10,#08,#14,#09,#9e,#64,#70
.l6167 equ $ + 3
.l6166 equ $ + 2
.l6165 equ $ + 1
	db #61,#08,#09,#ff,#00,#2e,#00,#00
.l6170 equ $ + 4
	db #81,#4a,#60,#00,#dd,#aa,#10,#10
	db #10,#cc,#08,#bb,#06,#09,#f6,#01
	db #0c,#00,#d5,#00,#86,#ff,#ff,#f6
	db #01,#0c,#00,#d5,#00,#86,#ff,#f6
	db #01,#0c,#00,#d5,#00,#8e,#ff,#f6
	db #01,#0c,#00,#d5,#00,#86,#ff,#ff
	db #f6,#01,#0c,#00,#c9,#00,#77,#ff
	db #ff,#f6,#01,#0c,#00,#c9,#00,#77
	db #ff,#f6,#01,#0c,#00,#c9,#00,#7f
	db #ff,#f6,#01,#0c,#00,#c9,#00,#77
	db #ff,#ff,#f6,#01,#0c,#00,#b3,#00
	db #6a,#ff,#ff,#f6,#01,#0c,#00,#b3
	db #00,#6a,#ff,#f6,#01,#0c,#00,#b3
	db #00,#71,#ff,#f6,#01,#0c,#00,#96
	db #00,#6a,#ff,#ff,#f6,#01,#0c,#00
	db #9f,#00,#64,#ff,#ff,#f6,#01,#0c
	db #00,#b3,#00,#59,#ff,#ff,#f6,#01
	db #0c,#00,#c9,#00,#50,#ff,#ff,#bb
	db #08,#09,#f6,#02,#18,#00,#00,#00
	db #00,#ff,#ff,#f6,#01,#0c,#00,#d5
	db #00,#59,#ff,#f6,#01,#0c,#00,#d5
	db #00,#5f,#ff,#f6,#01,#0c,#00,#d5
	db #00,#59,#ff,#ff,#f6,#02,#18,#00
	db #00,#00,#00,#ff,#ff,#f6,#01,#0c
	db #00,#c9,#00,#50,#ff,#f6,#01,#0c
	db #00,#c9,#00,#54,#ff,#f6,#01,#0c
	db #00,#c9,#00,#50,#ff,#ff,#f6,#02
	db #18,#00,#00,#00,#00,#ff,#ff,#f6
	db #01,#0c,#00,#be,#00,#50,#ff,#f6
	db #01,#0c,#00,#be,#00,#54,#ff,#f6
	db #01,#0c,#00,#be,#00,#50,#ff,#ff
	db #bb,#0b,#09,#cc,#0a,#f6,#02,#18
	db #00,#b3,#00,#4b,#ff,#ff,#f6,#00
	db #00,#00,#00,#00,#43,#ff,#ff,#f3
	db #00,#3c,#ff,#ff,#ff,#ff,#ff,#aa
	db #10,#10,#0b,#f3,#00,#4b,#ff,#f3
	db #00,#43,#ff,#f3,#00,#3c,#ff,#f3
	db #00,#86,#ff,#f3,#00,#4b,#ff,#ff
	db #bb,#05,#09,#f4,#02,#18,#00,#d5
	db #ff,#ff,#f4,#02,#18,#00,#d5,#ff
	db #ff,#f6,#02,#18,#00,#d5,#00,#00
	db #ff,#ff,#f6,#00,#00,#00,#00,#00
	db #4b,#ff,#f3,#00,#43,#ff,#f3,#00
	db #3c,#ff,#00,#f3,#00,#86,#ff,#f3
	db #00,#50,#ff,#ff,#f4,#02,#18,#00
	db #c9,#ff,#ff,#f4,#02,#18,#00,#c9
	db #ff,#ff,#f6,#02,#18,#00,#c9,#00
	db #00,#ff,#ff,#f6,#00,#00,#00,#00
	db #00,#50,#ff,#f3,#00,#4b,#ff,#f3
	db #00,#43,#ff,#f3,#00,#86,#ff,#aa
	db #09,#09,#10,#f6,#02,#18,#00,#d5
	db #00,#59,#ff,#ff,#f3,#00,#96,#ff
	db #ff,#f3,#00,#86,#ff,#ff,#f2,#00
	db #ef,#f3,#00,#64,#ff,#ff,#f3,#00
	db #96,#ff,#ff,#f3,#00,#86,#ff,#ff
	db #f2,#01,#0c,#f3,#00,#6a,#ff,#ff
	db #f3,#00,#96,#ff,#ff,#f3,#00,#86
	db #ff,#ff,#f2,#00,#96,#f3,#00,#77
	db #ff,#ff,#f3,#00,#b3,#ff,#ff,#f3
	db #00,#96,#ff,#ff,#f2,#00,#9f,#f3
	db #00,#86,#ff,#ff,#f3,#00,#c9,#ff
	db #ff,#f3,#00,#9f,#ff,#ff,#cc,#0b
	db #f2,#00,#b3,#f3,#00,#96,#ff,#ff
	db #f3,#00,#d5,#ff,#ff,#f3,#00,#b2
	db #ff,#ff,#cc,#45,#bb,#08,#09,#aa
	db #10,#10,#10,#f6,#02,#18,#01,#0c
	db #00,#00,#ff,#f4,#02,#5a,#01,#2d
	db #ff,#f4,#02,#cc,#01,#66,#ff,#aa
	db #10,#10,#08,#f6,#01,#92,#00,#c9
	db #00,#c9,#ff,#f6,#01,#3f,#00,#9f
	db #00,#9f,#ff,#f6,#01,#0c,#00,#86
	db #00,#86,#ff,#cc,#14,#f6,#03,#24
	db #01,#3f,#00,#86,#ff,#f4,#01,#92
	db #01,#3f,#ff,#f6,#00,#c9,#00,#50
	db #00,#43,#ff,#f6,#03,#24,#00,#50
	db #00,#43,#ff,#f4,#01,#92,#01,#3f
	db #ff,#f6,#00,#c9,#00,#64,#00,#50
	db #ff,#f6,#06,#47,#00,#64,#00,#50
	db #ff,#f4,#01,#92,#01,#3f,#ff,#f6
	db #01,#92,#00,#c9,#00,#c9,#ff,#f6
	db #01,#92,#00,#c9,#00,#c9,#ff,#f6
	db #01,#3f,#00,#9f,#00,#9f,#ff,#f6
	db #01,#0c,#00,#86,#00,#86,#ff,#f6
	db #02,#cc,#01,#aa,#00,#86,#ff,#f4
	db #01,#2d,#01,#0c,#ff,#f6,#00,#d5
	db #00,#59,#00,#43,#ff,#f6,#02,#18
	db #00,#59,#00,#43,#ff,#f4,#01,#2d
	db #01,#0c,#ff,#f6,#00,#d5,#00,#59
	db #00,#4b,#ff,#f6,#04,#31,#00,#59
	db #00,#4b,#ff,#f4,#01,#0c,#00,#d5
	db #ff,#f6,#01,#aa,#00,#d5,#00,#d5
	db #ff,#f6,#01,#aa,#00,#d5,#00,#d5
	db #ff,#f6,#01,#66,#00,#b3,#00,#b3
	db #ff,#f6,#00,#ef,#00,#77,#00,#77
	db #ff,#f6,#02,#18,#00,#96,#00,#77
	db #ff,#f4,#01,#0c,#00,#d5,#ff,#f6
	db #00,#94,#00,#4b,#00,#3c,#ff,#f6
	db #02,#18,#00,#4b,#00,#3c,#ff,#f4
	db #01,#0c,#00,#d5,#ff,#f6,#00,#b3
	db #00,#59,#00,#4b,#ff,#f6,#04,#31
	db #00,#59,#00,#4b,#ff,#f4,#01,#0c
	db #00,#d5,#ff,#f6,#01,#aa,#00,#d5
	db #00,#d5,#ff,#f6,#01,#aa,#00,#d5
	db #00,#d5,#ff,#f6,#01,#66,#00,#b3
	db #00,#b3,#ff,#f6,#00,#ef,#00,#77
	db #00,#77,#ff,#f6,#03,#24,#01,#3f
	db #00,#77,#ff,#f4,#01,#92,#01,#3f
	db #00,#77,#ff,#f6,#00,#c9,#00,#50
	db #00,#3c,#ff,#f6,#03,#24,#00,#50
	db #00,#3c,#ff,#f4,#01,#92,#01,#3f
	db #ff,#f6,#00,#c9,#00,#64,#00,#50
	db #ff,#f6,#06,#46,#00,#64,#00,#50
	db #ff,#f4,#01,#92,#01,#3f,#ff,#cc
	db #17,#aa,#10,#10,#09,#bb,#09,#09
	db #f6,#01,#92,#00,#c9,#00,#c9,#ff
	db #f6,#01,#92,#00,#c9,#00,#c9,#ff
	db #f6,#01,#3f,#00,#9f,#00,#9f,#ff
	db #f6,#01,#0c,#00,#86,#00,#86,#ff
	db #cc,#12,#f6,#02,#7e,#00,#64,#00
	db #64,#ff,#f4,#01,#92,#01,#3f,#ff
	db #f6,#00,#9f,#00,#43,#00,#32,#ff
	db #f6,#02,#7e,#00,#43,#00,#32,#ff
	db #f4,#01,#92,#01,#3f,#ff,#f6,#00
	db #9f,#00,#64,#00,#43,#ff,#f6,#03
	db #24,#00,#50,#00,#43,#ff,#f4,#01
	db #92,#01,#3f,#ff,#f6,#01,#92,#00
	db #c9,#00,#c9,#ff,#f6,#01,#92,#00
	db #c9,#00,#c9,#ff,#f6,#01,#3f,#00
	db #9f,#00,#9f,#ff,#f6,#01,#0c,#00
	db #86,#00,#86,#ff,#f6,#02,#5a,#00
	db #ef,#00,#64,#ff,#f4,#01,#2d,#00
	db #ef,#ff,#f6,#00,#c9,#00,#3c,#00
	db #32,#ff,#f6,#02,#5a,#00,#3c,#00
	db #32,#ff,#f4,#01,#2d,#00,#ef,#ff
	db #f6,#02,#5a,#00,#4b,#00,#3c,#ff
	db #aa,#10,#10,#10,#f6,#04,#b4,#00
	db #4b,#00,#3c,#ff,#ff,#bb,#0c,#09
	db #aa,#10,#10,#0b,#cc,#18,#f6,#01
	db #66,#00,#b3,#00,#b3,#ff,#f6,#01
	db #66,#00,#b3,#00,#b3,#ff,#f6,#01
	db #2d,#00,#96,#00,#96,#ff,#f6,#00
	db #ef,#00,#77,#00,#77,#ff,#00,#cc
	db #10,#f6,#02,#18,#00,#77,#00,#77
	db #ff,#f4,#01,#0c,#00,#d5,#ff,#f4
	db #00,#d5,#00,#b3,#ff,#f4,#02,#5a
	db #01,#66,#ff,#f6,#01,#0c,#00,#d5
	db #00,#8e,#ff,#f6,#00,#d5,#00,#b3
	db #00,#86,#ff,#f6,#02,#7e,#02,#7e
	db #00,#50,#ff,#f4,#01,#92,#01,#3f
	db #ff,#f4,#01,#3f,#01,#0c,#ff,#f4
	db #03,#24,#03,#24,#ff,#f6,#01,#92
	db #01,#3f,#00,#64,#ff,#f6,#01,#92
	db #00,#e1,#00,#9f,#ff,#f6,#02,#5a
	db #02,#5a,#00,#9f,#ff,#f4,#01,#2d
	db #00,#ef,#ff,#f6,#01,#2d,#00,#ef
	db #00,#b3,#ff,#f6,#02,#18,#02,#18
	db #00,#77,#ff,#f4,#01,#2d,#00,#d5
	db #ff,#f6,#01,#2d,#00,#d5,#00,#86
	db #ff,#cc,#08,#f6,#01,#92,#01,#3f
	db #00,#c9,#ff,#ff,#ff,#aa,#10,#10
	db #10,#f6,#06,#47,#01,#92,#00,#c9
	db #ff,#f6,#06,#47,#01,#92,#00,#c9
	db #ff,#ff,#ff,#ff,#cc,#11,#aa,#10
	db #10,#09,#bb,#05,#09,#f6,#00,#00
	db #00,#50,#00,#32,#ff,#f2,#00,#59
	db #f3,#00,#35,#ff,#f6,#02,#cc,#00
	db #59,#00,#35,#ff,#f6,#01,#66,#00
	db #64,#00,#3c,#ff,#f6,#01,#1c,#00
	db #64,#00,#3c,#ff,#f6,#02,#cc,#00
	db #00,#00,#00,#ff,#f6,#01,#66,#00
	db #64,#00,#3c,#ff,#f6,#01,#2d,#00
	db #6a,#00,#3f,#ff,#f6,#02,#cc,#00
	db #6a,#00,#3f,#ff,#f6,#01,#66,#00
	db #64,#00,#3c,#ff,#f6,#01,#1c,#00
	db #64,#00,#3c,#ff,#f6,#05,#98,#00
	db #00,#00,#00,#ff,#aa,#10,#10,#10
	db #f6,#01,#66,#00,#c9,#00,#b3,#ff
	db #f6,#01,#1c,#00,#c9,#00,#b3,#ff
	db #aa,#10,#0a,#0a,#f6,#02,#18,#00
	db #d5,#00,#9f,#ff,#f1,#01,#66,#ff
	db #f1,#01,#0b,#f3,#00,#b3,#ff,#f6
	db #02,#cc,#00,#00,#00,#00,#ff,#aa
	db #10,#10,#10,#f6,#01,#66,#00,#d5
	db #00,#b3,#ff,#f6,#01,#1c,#00,#d5
	db #00,#b3,#ff,#aa,#10,#0a,#0a,#f6
	db #02,#18,#00,#d5,#00,#77,#ff,#f1
	db #01,#66,#ff,#f1,#01,#0c,#f3,#00
	db #86,#ff,#f6,#04,#31,#00,#00,#00
	db #00,#ff,#aa,#10,#10,#09,#f6,#00
	db #00,#00,#50,#00,#32,#ff,#f2,#00
	db #59,#f3,#00,#35,#ff,#f6,#02,#cc
	db #00,#59,#00,#35,#ff,#f6,#01,#66
	db #00,#64,#00,#3c,#ff,#f6,#01,#1c
	db #00,#64,#00,#3c,#ff,#f6,#02,#cc
	db #00,#00,#00,#00,#ff,#f6,#01,#66
	db #00,#64,#00,#3c,#ff,#f6,#01,#2d
	db #00,#59,#00,#35,#ff,#f6,#02,#cc
	db #00,#47,#00,#2d,#ff,#f6,#01,#66
	db #00,#50,#00,#32,#ff,#f6,#01,#1c
	db #00,#50,#00,#32,#ff,#f6,#05,#98
	db #00,#00,#00,#00,#ff,#aa,#10,#10
	db #0a,#bb,#09,#09,#f6,#01,#66,#00
	db #c9,#00,#8e,#ff,#f6,#01,#52,#00
	db #c9,#00,#77,#ff,#f6,#01,#3f,#00
	db #d5,#00,#77,#ff,#ff,#f6,#02,#7e
	db #00,#d5,#00,#86,#ff,#f6,#01,#92
	db #00,#b3,#00,#8e,#ff,#ff,#f6,#06
	db #47,#00,#c9,#00,#9f,#ff,#aa,#10
	db #10,#10,#cc,#09,#f6,#01,#66,#00
	db #c9,#00,#9f,#ff,#f6,#01,#66,#00
	db #c9,#00,#9f,#ff,#f6,#01,#66,#00
	db #c9,#00,#9f,#ff,#ff,#f6,#02,#cc
	db #00,#c9,#00,#b3,#ff,#ff,#f6,#04
	db #31,#02,#18,#01,#0c,#ff,#ff,#ff
	db #ff,#bb,#06,#09,#aa,#10,#09,#0c
	db #f6,#00,#00,#00,#00,#00,#86,#ff
	db #ff,#f6,#04,#31,#01,#2d,#00,#96
	db #ff,#f4,#00,#00,#01,#0c,#ff,#f4
	db #02,#18,#00,#d5,#ff,#f6,#00,#00
	db #00,#b3,#00,#00,#ff,#f6,#02,#18
	db #00,#96,#00,#86,#ff,#f4,#00,#00
	db #00,#6a,#ff,#f6,#04,#31,#01,#2d
	db #00,#96,#ff,#f4,#00,#00,#01,#0c
	db #ff,#f4,#02,#18,#00,#d5,#ff,#f6
	db #00,#00,#00,#b3,#00,#00,#ff,#f6
	db #02,#18,#00,#96,#00,#86,#ff,#f4
	db #00,#00,#00,#6a,#ff,#f6,#04,#31
	db #01,#2d,#00,#50,#ff,#f4,#00,#00
	db #01,#0c,#ff,#f4,#02,#18,#00,#d5
	db #ff,#f4,#00,#00,#00,#b3,#ff,#f4
	db #02,#18,#00,#96,#ff,#f4,#00,#00
	db #00,#6a,#ff,#f4,#04,#31,#01,#2d
	db #ff,#f6,#00,#00,#01,#0c,#00,#00
	db #ff,#f6,#02,#18,#00,#d5,#00,#59
	db #ff,#f2,#00,#b3,#ff,#f2,#00,#96
	db #f3,#00,#86,#ff,#f4,#00,#00,#00
	db #6a,#ff,#f6,#03,#24,#01,#3f,#00
	db #9f,#ff,#f4,#00,#00,#01,#0c,#ff
	db #f4,#01,#92,#00,#c9,#ff,#f6,#00
	db #00,#00,#9f,#00,#00,#ff,#f6,#01
	db #92,#00,#86,#00,#86,#ff,#f4,#00
	db #00,#00,#64,#ff,#f6,#03,#24,#01
	db #3f,#00,#9f,#ff,#f4,#00,#00,#01
	db #0c,#ff,#f4,#01,#92,#00,#c9,#ff
	db #f6,#00,#00,#00,#9f,#00,#00,#ff
	db #f6,#01,#92,#00,#86,#00,#86,#ff
	db #f4,#00,#00,#00,#64,#ff,#f6,#03
	db #24,#01,#3f,#00,#59,#ff,#f4,#00
	db #00,#01,#0c,#ff,#f4,#01,#92,#00
	db #c9,#ff,#f4,#00,#00,#00,#9f,#ff
	db #f4,#01,#92,#00,#86,#ff,#f4,#00
	db #00,#00,#64,#ff,#f4,#06,#47,#01
	db #3f,#ff,#f4,#00,#00,#01,#0c,#00
	db #00,#ff,#f6,#01,#92,#00,#c9,#00
	db #64,#ff,#f2,#00,#9f,#ff,#f2,#00
	db #86,#f3,#00,#86,#ff,#f4,#00,#00
	db #00,#64,#ff,#f6,#04,#31,#01,#2d
	db #00,#96,#ff,#f4,#00,#00,#01,#0c
	db #ff,#f4,#02,#18,#00,#d5,#ff,#f6
	db #00,#00,#00,#b3,#00,#00,#ff,#f6
	db #02,#18,#00,#96,#00,#86,#ff,#f4
	db #00,#00,#00,#6a,#ff,#f6,#04,#31
	db #01,#2d,#00,#96,#ff,#f4,#00,#00
	db #01,#0c,#ff,#f4,#02,#18,#00,#d5
	db #ff,#f6,#00,#00,#00,#b3,#00,#00
	db #ff,#f6,#02,#18,#00,#96,#00,#86
	db #ff,#f4,#00,#00,#00,#6a,#ff,#f6
	db #04,#31,#01,#2d,#00,#50,#ff,#f4
	db #00,#00,#01,#0c,#ff,#f4,#02,#18
	db #00,#d5,#ff,#f4,#00,#00,#00,#b3
	db #ff,#f4,#02,#18,#00,#96,#ff,#f4
	db #00,#00,#00,#6a,#ff,#f4,#04,#31
	db #01,#2d,#ff,#f6,#00,#00,#01,#0c
	db #00,#00,#ff,#f6,#02,#18,#00,#d5
	db #00,#59,#ff,#f2,#00,#b3,#ff,#f2
	db #00,#96,#f3,#00,#86,#ff,#f4,#00
	db #00,#00,#6a,#ff,#cc,#12,#f6,#01
	db #92,#00,#9f,#00,#64,#ff,#f2,#00
	db #d5,#f3,#00,#59,#ff,#f2,#00,#e1
	db #f3,#00,#50,#ff,#f6,#01,#2d,#00
	db #be,#00,#43,#ff,#f1,#04,#b4,#ff
	db #f6,#02,#5a,#00,#b3,#00,#4b,#ff
	db #cc,#09,#aa,#10,#10,#10,#bb,#09
	db #09,#f6,#02,#18,#00,#c9,#00,#50
	db #ff,#f6,#02,#18,#00,#c9,#00,#50
	db #ff,#f6,#02,#18,#00,#d5,#00,#50
	db #ff,#ff,#f6,#04,#31,#00,#96,#00
	db #59,#ff,#ff,#cc,#11,#f6,#06,#47
	db #00,#9f,#00,#64,#ff,#ff,#aa,#10
	db #10,#09,#bb,#05,#09,#cc,#13,#f6
	db #00,#00,#00,#00,#00,#64,#ff,#f1
	db #01,#fa,#ff,#f4,#00,#fd,#00,#c9
	db #ff,#f4,#00,#fd,#00,#c9,#ff,#f4
	db #01,#fa,#01,#fa,#ff,#f6,#00,#fd
	db #00,#e1,#00,#5f,#ff,#f6,#00,#fd
	db #00,#c9,#00,#64,#ff,#f6,#02,#f6
	db #02,#f6,#00,#71,#ff,#f6,#01,#7b
	db #01,#2d,#00,#7f,#ff,#f6,#02,#f6
	db #01,#0c,#00,#86,#ff,#f6,#01,#7b
	db #00,#fd,#00,#96,#ff,#f6,#05,#ed
	db #02,#f6,#00,#00,#ff,#f6,#01,#7b
	db #00,#fd,#00,#96,#ff,#f6,#02,#18
	db #02,#18,#00,#71,#ff,#f6,#01,#0c
	db #00,#e1,#00,#00,#ff,#f6,#01,#0c
	db #00,#e1,#00,#71,#ff,#f6,#02,#a4
	db #02,#a4,#00,#00,#ff,#f6,#01,#0c
	db #00,#be,#00,#96,#ff,#f3,#00,#a9
	db #ff,#f4,#01,#fa,#01,#fa,#ff,#f4
	db #00,#fd,#00,#c9,#ff,#f1,#00,#fd
	db #ff,#f4,#01,#52,#00,#be,#ff,#f6
	db #00,#00,#00,#c9,#00,#00,#ff,#f6
	db #02,#18,#00,#e1,#00,#a9,#ff,#f6
	db #01,#fa,#01,#fa,#00,#64,#ff,#f4
	db #00,#fd,#00,#c9,#ff,#f4,#00,#fd
	db #00,#c9,#ff,#f4,#01,#fa,#01,#fa
	db #ff,#f6,#00,#fd,#00,#e1,#00,#5f
	db #ff,#f6,#00,#fd,#00,#c9,#00,#64
	db #ff,#f6,#02,#f6,#02,#f6,#00,#71
	db #ff,#f6,#01,#7b,#01,#2d,#00,#7f
	db #ff,#f6,#01,#7b,#01,#0c,#00,#86
	db #ff,#f6,#01,#66,#00,#d5,#00,#96
	db #ff,#ff,#f4,#02,#18,#00,#d5,#ff
	db #f6,#01,#92,#01,#92,#00,#9f,#ff
	db #f6,#01,#0c,#00,#c9,#00,#00,#ff
	db #f6,#01,#0c,#00,#c9,#00,#9f,#ff
	db #f6,#01,#92,#01,#92,#00,#00,#ff
	db #f6,#00,#fd,#00,#d5,#00,#96,#ff
	db #f6,#00,#fd,#00,#d5,#00,#7f,#ff
	db #f6,#01,#92,#00,#9f,#00,#86,#ff
	db #f6,#02,#18,#01,#0c,#00,#00,#ff
	db #f1,#02,#18,#ff,#f1,#02,#18,#ff
	db #f1,#02,#18,#ff,#cc,#09,#bb,#06
	db #09,#aa,#10,#09,#0c,#f6,#00,#00
	db #00,#00,#00,#86,#ff,#ff,#f6,#04
	db #31,#01,#2d,#00,#96,#ff,#f4,#00
	db #00,#01,#0c,#ff,#f4,#02,#18,#00
	db #d5,#ff,#f6,#00,#00,#00,#b3,#00
	db #00,#ff,#f6,#02,#18,#00,#96,#00
	db #86,#ff,#f4,#00,#00,#00,#6a,#ff
	db #f6,#04,#31,#01,#2d,#00,#96,#ff
	db #f4,#00,#00,#01,#0c,#ff,#f4,#02
	db #18,#00,#d5,#ff,#f6,#00,#00,#00
	db #b3,#00,#00,#ff,#f6,#02,#18,#00
	db #96,#00,#86,#ff,#f4,#00,#00,#00
	db #6a,#ff,#f6,#04,#31,#01,#2d,#00
	db #50,#ff,#f4,#00,#00,#01,#0c,#ff
	db #f4,#02,#18,#00,#d5,#ff,#f4,#00
	db #00,#00,#b3,#ff,#f4,#02,#18,#00
	db #96,#ff,#f4,#00,#00,#00,#6a,#ff
	db #f4,#04,#31,#01,#2d,#ff,#f6,#00
	db #00,#01,#0c,#00,#00,#ff,#f6,#02
	db #18,#00,#d5,#00,#59,#ff,#f2,#00
	db #b3,#ff,#f2,#00,#96,#f3,#00,#86
	db #ff,#f4,#00,#00,#00,#6a,#ff,#f6
	db #03,#24,#01,#3f,#00,#9f,#ff,#f4
	db #00,#00,#01,#0c,#ff,#f4,#01,#92
	db #00,#c9,#ff,#f6,#00,#00,#00,#9f
	db #00,#00,#ff,#f6,#01,#92,#00,#86
	db #00,#86,#ff,#f4,#00,#00,#00,#64
	db #ff,#f6,#03,#24,#01,#3f,#00,#9f
	db #ff,#f4,#00,#00,#01,#0c,#ff,#f4
	db #01,#92,#00,#c9,#ff,#f6,#00,#00
	db #00,#9f,#00,#00,#ff,#f6,#01,#92
	db #00,#86,#00,#86,#ff,#f4,#00,#00
	db #00,#64,#ff,#f6,#03,#24,#01,#3f
	db #00,#59,#ff,#f4,#00,#00,#01,#0c
	db #ff,#f4,#01,#92,#00,#c9,#ff,#f4
	db #00,#00,#00,#9f,#ff,#f4,#01,#92
	db #00,#86,#ff,#f4,#00,#00,#00,#64
	db #ff,#f4,#06,#47,#01,#3f,#ff,#f4
	db #00,#00,#01,#0c,#00,#00,#ff,#f6
	db #01,#92,#00,#c9,#00,#64,#ff,#f2
	db #00,#9f,#ff,#f2,#00,#86,#f3,#00
	db #86,#ff,#f4,#00,#00,#00,#64,#ff
	db #f6,#04,#31,#01,#2d,#00,#96,#ff
	db #f4,#00,#00,#01,#0c,#ff,#f4,#02
	db #18,#00,#d5,#ff,#f6,#00,#00,#00
	db #b3,#00,#00,#ff,#f6,#02,#18,#00
	db #96,#00,#86,#ff,#f4,#00,#00,#00
	db #6a,#ff,#f6,#04,#31,#01,#2d,#00
	db #96,#ff,#f4,#00,#00,#01,#0c,#ff
	db #f4,#02,#18,#00,#d5,#ff,#f6,#00
	db #00,#00,#b3,#00,#00,#ff,#f6,#02
	db #18,#00,#96,#00,#86,#ff,#f4,#00
	db #00,#00,#6a,#ff,#f6,#04,#31,#01
	db #2d,#00,#50,#ff,#f4,#00,#00,#01
	db #0c,#ff,#f4,#02,#18,#00,#d5,#ff
	db #f4,#00,#00,#00,#b3,#ff,#f4,#02
	db #18,#00,#96,#ff,#f4,#00,#00,#00
	db #6a,#ff,#f4,#04,#31,#01,#2d,#ff
	db #f6,#00,#00,#01,#0c,#00,#00,#ff
	db #f6,#02,#18,#00,#d5,#00,#59,#ff
	db #f2,#00,#b3,#ff,#f2,#00,#96,#f3
	db #00,#86,#ff,#f4,#00,#00,#00,#6a
	db #ff,#cc,#12,#f6,#01,#92,#00,#9f
	db #00,#64,#ff,#f2,#00,#d5,#f3,#00
	db #59,#ff,#f2,#00,#e1,#f3,#00,#50
	db #ff,#f6,#01,#2d,#00,#be,#00,#43
	db #ff,#f1,#04,#b4,#ff,#f6,#02,#5a
	db #00,#b3,#00,#4b,#ff,#cc,#09,#aa
	db #10,#10,#10,#bb,#09,#09,#f6,#02
	db #18,#00,#c9,#00,#50,#ff,#f6,#02
	db #18,#00,#c9,#00,#50,#ff,#f6,#02
	db #18,#00,#d5,#00,#50,#ff,#ff,#f6
	db #04,#31,#00,#96,#00,#59,#ff,#ff
	db #cc,#11,#f6,#06,#47,#00,#9f,#00
	db #64,#ff,#ff,#ff,#dd,#00,#00
;
.music_info
	db "The Flash Demo Part 2 (1990)(Titan)()",0
	db "",0

	read "music_end.asm"
