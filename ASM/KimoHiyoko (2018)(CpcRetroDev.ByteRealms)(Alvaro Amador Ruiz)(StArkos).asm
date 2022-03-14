; Music of KimoHiyoko (2018)(CpcRetroDev.ByteRealms)(Alvaro Amador Ruiz)(StArkos)
; Ripped by Megachur the 11/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "KIMOHIYO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9600
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

; #9600
.l9600
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#52,#00,#16,#96,#1f,#96
	db #32,#96,#41,#96,#52,#96,#00,#00
	db #00,#00,#00,#00,#0d,#18,#96,#02
	db #00,#26,#1f,#22,#1f,#1e,#1f,#1a
	db #1f,#16,#1e,#12,#1e,#0e,#1e,#0d
	db #18,#96,#02,#00,#26,#1f,#22,#1f
	db #1e,#1f,#1a,#1f,#16,#1e,#0d,#18
	db #96,#02,#00,#2a,#01,#22,#01,#16
	db #01,#12,#01,#0a,#01,#06,#01,#0d
	db #18,#96,#01,#00,#3c,#7c,#ff,#78
	db #fe,#74,#fc,#0d,#18,#96,#08,#00
	db #00,#00,#6e,#96,#00,#6f,#96,#7b
	db #96,#8a,#96,#01,#64,#96,#00,#88
	db #e0,#00,#00,#01,#06,#88,#60,#02
	db #42,#00,#00,#42,#80,#00,#00,#42
	db #00,#96,#60,#03,#42,#00,#04,#57
	db #42,#00,#42,#80,#00,#00,#04,#8e
	db #60,#04,#42,#00,#02,#4f,#42,#00
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#ff,#3a,#01,#bc,#96,#c5,#96
	db #d0,#96,#d9,#96,#e2,#96,#f4,#96
	db #12,#97,#22,#97,#30,#97,#7d,#97
	db #84,#97,#ad,#97,#00,#00,#00,#00
	db #00,#00,#0d,#be,#96,#01,#00,#a9
	db #03,#2e,#3c,#18,#34,#0d,#be,#96
	db #21,#00,#c9,#67,#ff,#0a,#0d,#be
	db #96,#67,#fe,#89,#19,#00,#08,#0d
	db #be,#96,#02,#00,#3c,#78,#03,#74
	db #07,#30,#6c,#03,#68,#07,#24,#60
	db #03,#0d,#be,#96,#01,#00,#7e,#3b
	db #f4,#3e,#39,#7a,#37,#0c,#3a,#34
	db #36,#32,#32,#30,#2e,#2c,#26,#2a
	db #1e,#24,#16,#24,#0e,#21,#04,#0d
	db #f6,#96,#05,#00,#5e,#2b,#21,#2a
	db #2b,#2a,#30,#2e,#34,#36,#36,#0d
	db #be,#96,#01,#00,#26,#1c,#26,#1b
	db #78,#0c,#38,#74,#0c,#0d,#be,#96
	db #01,#00,#f0,#ff,#ff,#18,#f8,#ff
	db #ff,#0c,#38,#78,#0c,#74,#18,#74
	db #0c,#34,#74,#0c,#f4,#ff,#ff,#18
	db #f0,#ff,#ff,#0c,#30,#70,#0c,#70
	db #18,#70,#0c,#30,#70,#0c,#f8,#ff
	db #ff,#18,#f4,#ff,#ff,#0c,#30,#6c
	db #0c,#68,#18,#68,#0c,#28,#68,#0c
	db #f4,#ff,#ff,#18,#f0,#ff,#ff,#0c
	db #2c,#68,#0c,#64,#18,#64,#0c,#24
	db #60,#0c,#0d,#be,#96,#01,#00,#22
	db #09,#0d,#be,#96,#02,#00,#2a,#07
	db #2e,#07,#32,#0e,#36,#14,#3a,#17
	db #36,#15,#32,#12,#2e,#0f,#2a,#0c
	db #26,#09,#22,#07,#1e,#07,#1a,#07
	db #16,#07,#12,#07,#0e,#07,#0a,#07
	db #06,#07,#0d,#be,#96,#07,#00,#09
	db #1a,#01,#00,#09,#1a,#02,#00,#09
	db #1a,#03,#00,#09,#1a,#04,#00,#09
	db #1a,#05,#00,#09,#1a,#06,#00,#09
	db #1a,#07,#00,#09,#1a,#08,#00,#09
	db #1a,#09,#00,#09,#1a,#0a,#00,#09
	db #1a,#09,#00,#0d,#af,#97,#40,#00
	db #00,#00,#ee,#97,#00,#ef,#97,#ef
	db #97,#ef,#97,#01,#e4,#97,#00,#42
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #81,#81,#03,#42,#03,#d5,#81,#7f
	db #81,#c0,#57,#03,#7b,#bf,#f3,#a3
	db #03,#81,#bf,#17,#f3,#fb,#f9,#f3
	db #03,#42,#57,#03,#7b,#bf,#f9,#a3
	db #81,#42,#53,#2b,#f7,#f7,#f9,#f3
	db #42,#42,#03,#03,#a3,#03,#b7,#42
	db #81,#7b,#03,#17,#81,#fb,#17,#f6
	db #f6,#ec,#f3,#fc,#fc,#ec,#fc,#fc
	db #00,#00,#08,#44,#0c,#88,#4c,#44
	db #48,#00,#c8,#00,#c8,#00,#80,#0c
	db #00,#80,#00,#c4,#00,#c4,#0c,#40
	db #0c,#0c,#8c,#00,#44,#00,#88,#88
	db #40,#01,#80,#06,#01,#49,#01,#86
	db #02,#80,#01,#40,#08,#02,#08,#02
	db #40,#80,#c0,#04,#80,#19,#04,#33
	db #19,#77,#33,#aa,#77,#40,#aa,#c0
	db #81,#7b,#57,#f3,#17,#f3,#81,#fb
	db #f9,#f3,#f9,#f3,#53,#f3,#f3,#f3
	db #f3,#f9,#f6,#03,#f3,#f3,#f9,#f9
	db #f3,#f3,#f3,#f3,#f3,#f3,#f9,#f9
	db #f3,#f3,#f9,#f6,#56,#a9,#f9,#f6
	db #f3,#42,#f3,#a3,#f9,#03,#f3,#42
	db #57,#f3,#81,#7b,#03,#fb,#81,#7b
	db #f6,#ec,#fc,#fc,#fc,#fc,#f6,#fc
	db #88,#c8,#c8,#80,#88,#04,#88,#04
	db #04,#cc,#4c,#0c,#8c,#00,#8c,#40
	db #cc,#08,#0c,#8c,#00,#4c,#80,#4c
	db #c4,#44,#40,#c4,#08,#44,#08,#44
	db #01,#0c,#01,#5d,#80,#06,#40,#01
	db #aa,#02,#08,#02,#01,#40,#02,#80
	db #19,#77,#33,#aa,#77,#40,#aa,#c0
	db #40,#80,#c0,#04,#80,#19,#04,#33
	db #03,#7b,#81,#7b,#57,#f3,#03,#fb
	db #f3,#f6,#f3,#f9,#f6,#f6,#f3,#fc
	db #f6,#f6,#f9,#a9,#fc,#56,#a9,#a9
	db #f6,#f6,#f9,#fc,#56,#56,#a9,#fc
	db #f3,#f3,#f9,#f3,#fc,#f3,#fc,#f3
	db #f3,#03,#f3,#a3,#f3,#03,#f3,#a3
	db #81,#7b,#03,#fb,#17,#f3,#57,#f3
	db #fc,#ec,#fc,#fc,#fc,#fc,#f6,#ec
	db #88,#04,#c8,#80,#88,#c8,#4c,#44
	db #8c,#00,#4c,#0c,#04,#cc,#80,#0c
	db #00,#4c,#0c,#8c,#cc,#08,#0c,#40
	db #08,#44,#40,#c4,#c4,#44,#88,#88
	db #0c,#0c,#0c,#08,#0c,#00,#08,#00
	db #00,#00,#08,#00,#0c,#00,#0c,#08
	db #40,#80,#c0,#04,#80,#19,#04,#33
	db #19,#77,#33,#aa,#77,#40,#aa,#c0
	db #81,#7b,#17,#f3,#57,#f3,#81,#f3
	db #f6,#f6,#f3,#f9,#f6,#f6,#f3,#ec
	db #56,#56,#a9,#fc,#ec,#ec,#cc,#cc
	db #56,#56,#a9,#fc,#ec,#ec,#cc,#cc
	db #fc,#f9,#fc,#f3,#fc,#f9,#dc,#f9
	db #f3,#a3,#f3,#03,#f3,#42,#f3,#03
	db #81,#f3,#57,#f3,#81,#f3,#17,#f3
	db #f3,#fc,#fc,#ec,#f6,#fc,#fc,#ec
	db #4c,#80,#0c,#c8,#0c,#44,#08,#00
	db #c8,#00,#40,#00,#c8,#00,#48,#00
	db #00,#c4,#00,#80,#00,#c4,#00,#80
	db #40,#88,#c4,#00,#8c,#00,#0c,#08
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #cf,#cf,#cf,#cf,#cf,#cf,#cf,#cf
	db #19,#77,#33,#aa,#77,#40,#aa,#c0
	db #40,#80,#c0,#04,#80,#19,#04,#33

; #9ae4
	ds #9ae4-$
.l9ae4
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#44,#00,#f8,#a6,#01,#a7
	db #13,#a7,#24,#a7,#00,#00,#00,#00
	db #00,#00,#0d,#fa,#a6,#02,#00,#1a
	db #1f,#12,#1f,#12,#1f,#0a,#1f,#0a
	db #1e,#06,#1e,#00,#0d,#fa,#a6,#02
	db #00,#2a,#01,#1e,#01,#12,#01,#0e
	db #01,#0a,#01,#06,#01,#0d,#fa,#a6
	db #01,#00,#18,#58,#ff,#54,#fe,#50
	db #fc,#4c,#fb,#48,#f8,#0d,#fa,#a6
	db #08,#00,#00,#00,#44,#a7,#00,#45
	db #a7,#4f,#a7,#5e,#a7,#01,#3a,#a7
	db #00,#88,#e0,#00,#00,#01,#06,#49
	db #42,#00,#00,#42,#80,#00,#00,#42
	db #00,#96,#60,#02,#42,#00,#04,#57
	db #42,#00,#42,#80,#00,#00,#04,#8e
	db #60,#03,#42,#00,#02,#4f,#42,#00
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#31,#00,#7e,#a7,#87,#a7
	db #99,#a7,#00,#00,#00,#00,#00,#00
	db #0d,#80,#a7,#01,#00,#1a,#1f,#12
	db #1f,#12,#1f,#0a,#1f,#0a,#1e,#06
	db #1e,#00,#0d,#80,#a7,#01,#00,#18
	db #58,#ff,#54,#fe,#50,#fc,#4c,#fb
	db #48,#f8,#0d,#80,#a7,#08,#00,#00
	db #00,#b9,#a7,#00,#ba,#a7,#c4,#a7
	db #d3,#a7,#01,#af,#a7,#00,#88,#e0
	db #00,#00,#01,#06,#49,#42,#00,#00
	db #42,#80,#00,#00,#42,#00,#42,#00
	db #42,#00,#04,#42,#00,#42,#00,#42
	db #80,#00,#00,#04,#8e,#60,#02,#42
	db #00,#02,#4f,#42

; #a6e4

	ds #a6e4-$
.la6e4
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#44,#00,#f8,#a6,#01,#a7
	db #13,#a7,#24,#a7,#00,#00,#00,#00
	db #00,#00,#0d,#fa,#a6,#02,#00,#1a
	db #1f,#12,#1f,#12,#1f,#0a,#1f,#0a
	db #1e,#06,#1e,#00,#0d,#fa,#a6,#02
	db #00,#2a,#01,#1e,#01,#12,#01,#0e
	db #01,#0a,#01,#06,#01,#0d,#fa,#a6
	db #01,#00,#18,#58,#ff,#54,#fe,#50
	db #fc,#4c,#fb,#48,#f8,#0d,#fa,#a6
	db #08,#00,#00,#00,#44,#a7,#00,#45
	db #a7,#4f,#a7,#5e,#a7,#01,#3a,#a7
	db #00,#88,#e0,#00,#00,#01,#06,#49
	db #42,#00,#00,#42,#80,#00,#00,#42
	db #00,#96,#60,#02,#42,#00,#04,#57
	db #42,#00,#42,#80,#00,#00,#04,#8e
	db #60,#03,#42,#00,#02,#4f,#42,#00
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#31,#00,#7e,#a7,#87,#a7
	db #99,#a7,#00,#00,#00,#00,#00,#00
	db #0d,#80,#a7,#01,#00,#1a,#1f,#12
	db #1f,#12,#1f,#0a,#1f,#0a,#1e,#06
	db #1e,#00,#0d,#80,#a7,#01,#00,#18
	db #58,#ff,#54,#fe,#50,#fc,#4c,#fb
	db #48,#f8,#0d,#80,#a7,#08,#00,#00
	db #00,#b9,#a7,#00,#ba,#a7,#c4,#a7
	db #d3,#a7,#01,#af,#a7,#00,#88,#e0
	db #00,#00,#01,#06,#49,#42,#00,#00
	db #42,#80,#00,#00,#42,#00,#42,#00
	db #42,#00,#04,#42,#00,#42,#00,#42
	db #80,#00,#00,#04,#8e,#60,#02,#42
	db #00,#02,#4f,#42
;
; #3255	- player reallocated by Megachur
;
.l3256 equ $ + 1
.l3255
	db #00,#00
;
.play_music
;
	push ix		; play
	push iy
	xor a
	ld (l3255),a
.l3260 equ $ + 1
	ld a,#a8
	dec a
	jp nz,l3433
.l3266 equ $ + 1
	ld a,#3c
	dec a
	jr nz,l32d9
.l326b equ $ + 1
	ld hl,#97eb
	ld a,(hl)
	inc hl
	rra
	jr nc,l3280
	ld a,(l3256)
	inc a
	ld (l3256),a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l3280
	rra
	jr nc,l3288
	ld de,l3329
	ldi
.l3288
	rra
	jr nc,l3290
	ld de,l338e
	ldi
.l3290
	rra
	jr nc,l3298
	ld de,l33f3
	ldi
.l3298
	ld de,l3308
	ldi
	ldi
	ld de,l336d
	ldi
	ldi
	ld de,l33d2
	ldi
	ldi
	rra
	jr nc,l32b5
	ld de,l32d8
	ldi
.l32b5
	rra
	jr nc,l32c0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l32c4),de
.l32c0
	ld (l326b),hl
.l32c4 equ $ + 1
	ld hl,#97ee
	ld (l32e2),hl
	ld a,#01
	ld (l32dd),a
	ld (l3303),a
	ld (l3368),a
	ld (l33cd),a
.l32d8 equ $ + 1
	ld a,#40
.l32d9
	ld (l3266),a
.l32dd equ $ + 1
	ld a,#fc
	dec a
	jr nz,l32ff
.l32e2 equ $ + 1
	ld hl,#97ef
	ld a,(hl)
	inc hl
	srl a
	jr nc,l32fc
	srl a
	jr nz,l32f0
	ld a,(hl)
	inc hl
.l32f0
	jr nc,l32f7
	ld (l3255),a
	jr l32fa
.l32f7
	ld (l3432),a
.l32fa
	ld a,#01
.l32fc
	ld (l32e2),hl
.l32ff
	ld (l32dd),a
.l3303 equ $ + 1
	ld a,#fd
	dec a
	jr nz,l3364
.l3308 equ $ + 1
	ld hl,#97f4
	call l3806
	ld (l3308),hl
	jr c,l3364
	ld a,d
	rra
	jr nc,l331b
	and #0f
	ld (l350b),a
.l331b
	rl d
	jr nc,l3323
	ld (l34f9),ix
.l3323
	rl d
	jr nc,l3362
	ld a,e
.l3329 equ $ + 1
	add #00
	ld (l350a),a
	ld hl,#0000
	ld (l34f6),hl
	rl d
	jr c,l3342
.l3338 equ $ + 1
	ld hl,#0000
	ld a,(l351b)
	ld (l3513),a
	jr l335f
.l3342
	ld l,b
	add hl,hl
.l3345 equ $ + 1
	ld bc,#96a4
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l351b),a
	ld (l3513),a
	ld a,(hl)
	or a
	jr z,l335b
	ld (l3628),a
.l335b
	inc hl
	ld (l3338),hl
.l335f
	ld (l350d),hl
.l3362
	ld a,#01
.l3364
	ld (l3303),a
.l3368 equ $ + 1
	ld a,#fd
	dec a
	jr nz,l33c9
.l336d equ $ + 1
	ld hl,#97f4
	call l3806
	ld (l336d),hl
	jr c,l33c9
	ld a,d
	rra
	jr nc,l3380
	and #0f
	ld (l34ac),a
.l3380
	rl d
	jr nc,l3388
	ld (l349a),ix
.l3388
	rl d
	jr nc,l33c7
	ld a,e
.l338e equ $ + 1
	add #00
	ld (l34ab),a
	ld hl,#0000
	ld (l3497),hl
	rl d
	jr c,l33a7
.l339d equ $ + 1
	ld hl,#0000
	ld a,(l34bc)
	ld (l34b4),a
	jr l33c4
.l33a7
	ld l,b
	add hl,hl
.l33aa equ $ + 1
	ld bc,#96a4
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l34bc),a
	ld (l34b4),a
	ld a,(hl)
	or a
	jr z,l33c0
	ld (l3628),a
.l33c0
	inc hl
	ld (l339d),hl
.l33c4
	ld (l34ae),hl
.l33c7
	ld a,#01
.l33c9
	ld (l3368),a
.l33cd equ $ + 1
	ld a,#fd
	dec a
	jr nz,l342e
.l33d2 equ $ + 1
	ld hl,#97f4
	call l3806
	ld (l33d2),hl
	jr c,l342e
	ld a,d
	rra
	jr nc,l33e5
	and #0f
	ld (l3450),a
.l33e5
	rl d
	jr nc,l33ed
	ld (l343e),ix
.l33ed
	rl d
	jr nc,l342c
	ld a,e
.l33f3 equ $ + 1
	add #00
	ld (l344f),a
	ld hl,#0000
	ld (l343b),hl
	rl d
	jr c,l340c
.l3402 equ $ + 1
	ld hl,#0000
	ld a,(l3460)
	ld (l3458),a
	jr l3429
.l340c
	ld l,b
	add hl,hl
.l340f equ $ + 1
	ld bc,#96a4
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l3460),a
	ld (l3458),a
	ld a,(hl)
	or a
	jr z,l3425
	ld (l3628),a
.l3425
	inc hl
	ld (l3402),hl
.l3429
	ld (l3452),hl
.l342c
	ld a,#01
.l342e
	ld (l33cd),a
.l3432 equ $ + 1
	ld a,#ff
.l3433
	ld (l3260),a
	ld iy,l363f
.l343b equ $ + 1
	ld hl,#0000
.l343e equ $ + 1
	ld de,#0000
	add hl,de
	ld (l343b),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l3450 equ $ + 2
.l344f equ $ + 1
	ld de,#0000
.l3452 equ $ + 1
	ld hl,#96bf
	call l364a
.l3458 equ $ + 1
	ld a,#03
	dec a
	jr nz,l3461
	ld (l3452),hl
.l3460 equ $ + 1
	ld a,#06
.l3461
	ld (l3458),a
.l3464
	ld de,#0000
	exx
	ld de,#0000
.l346c equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l348f
	ld a,#01
	ld (l3779),a
	call l364a
	xor a
	ld (l3779),a
	ld a,l
	or h
	jr z,l3487
.l3483 equ $ + 1
	ld a,#01
	dec a
	jr nz,l348c
.l3487
	ld (l346c),hl
	ld a,#06
.l348c
	ld (l3483),a
.l348f
	ld a,lx
	ex af,af'
	ld iy,l363d
.l3497 equ $ + 1
	ld hl,#0000
.l349a equ $ + 1
	ld de,#0000
	add hl,de
	ld (l3497),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l34ac equ $ + 2
.l34ab equ $ + 1
	ld de,#0000
.l34ae equ $ + 1
	ld hl,#96bf
	call l364a
.l34b4 equ $ + 1
	ld a,#03
	dec a
	jr nz,l34bd
	ld (l34ae),hl
.l34bc equ $ + 1
	ld a,#06
.l34bd
	ld (l34b4),a
.l34c0
	ld de,#0000
	exx
	ld de,#0000
.l34c8 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l34eb
	ld a,#01
	ld (l3779),a
	call l364a
	xor a
	ld (l3779),a
	ld a,l
	or h
	jr z,l34e3
.l34df equ $ + 1
	ld a,#01
	dec a
	jr nz,l34e8
.l34e3
	ld (l34c8),hl
	ld a,#06
.l34e8
	ld (l34df),a
.l34eb
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l363b
.l34f6 equ $ + 1
	ld hl,#0000
.l34f9 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l34f6),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l350b equ $ + 2
.l350a equ $ + 1
	ld de,#0000
.l350d equ $ + 1
	ld hl,#96bf
	call l364a
.l3513 equ $ + 1
	ld a,#03
	dec a
	jr nz,l351c
	ld (l350d),hl
.l351b equ $ + 1
	ld a,#06
.l351c
	ld (l3513),a
.l351f
	ld de,#0000
	exx
	ld de,#0000
.l3527 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l354a
	ld a,#01
	ld (l3779),a
	call l364a
	xor a
	ld (l3779),a
	ld a,l
	or h
	jr z,l3542
.l353e equ $ + 1
	ld a,#01
	dec a
	jr nz,l3547
.l3542
	ld (l3527),hl
	ld a,#06
.l3547
	ld (l353e),a
.l354a
	ex af,af'
	or lx
.l354d
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l363b
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
	pop iy
	pop ix
	ld a,(hl)
.l3628 equ $ + 1
	cp #ff
	ret z
	ld (l3628),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l363b
	nop
	nop
.l363d
	nop
	nop
.l363f
	nop
	nop
.l3641
	nop
.l3642
	nop
	nop
	nop
	nop
	nop
.l3647
	nop
	nop
.l3649
	rst #38
.l364a
	ld b,(hl)
	inc hl
	rr b
	jp c,l36a8
	rr b
	jr c,l3678
	ld a,b
	and #0f
	jr nz,l3661
	ld (iy+#07),a
	ld lx,#09
	ret
.l3661
	ld lx,#08
	sub d
	jr nc,l3668
	xor a
.l3668
	ld (iy+#07),a
	rr b
	call l37da
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l3678
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l3688
	ld (l3641),a
	ld lx,#00
.l3688
	ld a,b
	and #0f
	sub d
	jr nc,l368f
	xor a
.l368f
	ld (iy+#07),a
	bit 5,c
	jr nz,l3699
	inc lx
	ret
.l3699
	rr b
	bit 6,c
	call l37cc
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l36a8
	rr b
	jr nc,l36bb
	ld a,(l3513)
	ld c,a
	ld a,(l351b)
	cp c
	jr nz,l36bb
	ld a,#fe
	ld (l3628),a
.l36bb
	bit 1,b
	jp nz,l3774
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l3649),a
	bit 0,b
	jr z,l372a
	bit 2,b
	call l37cc
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l36ea),a
	ld a,b
	exx
.l36ea equ $ + 1
	jr l36eb
.l36eb
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
	jr nc,l370a
	inc hl
.l370a
	bit 5,a
	jr z,l371a
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
.l371a
	ld (l3647),hl
	exx
.l371e
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l3641),a
	ld lx,#00
	ret
.l372a
	bit 2,b
	call l37cc
	ld (l3647),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l373e),a
	ld a,b
	exx
.l373e equ $ + 1
	jr l373f
.l373f
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
	jr z,l376b
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
.l376b
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l371e
.l3774
	bit 0,b
	jr z,l3788
.l3779 equ $ + 1
	ld a,#00
	or a
	jr z,l3781
	ld hl,#0000
	ret
.l3781
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l364a
.l3788
	ld (iy+#07),#10
	bit 5,b
	jr nz,l3795
	ld lx,#09
	jr l37a8
.l3795
	ld lx,#08
	ld hx,e
	bit 2,b
	call l37cc
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l37a8
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l3649),a
	rr b
	rr b
	bit 2,b
	call l37cc
	ld (l3647),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l3641),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l37cc
	jr z,l37da
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
.l37da
	bit 4,b
	jr z,l37ea
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
.l37ea
	ld a,e
	bit 3,b
	jr z,l37f7
	add (hl)
	inc hl
	cp #90
	jr c,l37f7
	ld a,#8f
.l37f7
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l383a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l3806
	ld a,(hl)
	inc hl
	srl a
	jr c,l382d
	sub #20
	jr c,l3837
	jr z,l3829
	dec a
	ld e,a
.l3814
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l3822
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l3822
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l3829
	ld e,(hl)
	inc hl
	jr l3814
.l382d
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l3837
	add #20
	ret
.l383a
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
;
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	xor a
	ld (l3256),a
	ld hl,#0009
	add hl,de
	ld de,l3432
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l3345),hl
	ld (l33aa),hl
	ld (l340f),hl
	add hl,bc
	ld de,l32d8
	ldi
	ld de,l3329
	ldi
	ld de,l338e
	ldi
	ld de,l33f3
	ldi
	ld de,l32c4
	ldi
	ldi
	ld (l326b),hl
	ld a,#01
	ld (l3260),a
	ld (l3266),a
	ld a,#ff
	ld (l3649),a
	ld hl,(l3345)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l350d),hl
	ld (l34ae),hl
	ld (l3452),hl
	ret
	push ix
	push iy
	ld hl,l3642
	ld bc,#0500
.l39c4
	ld (hl),c
	inc hl
	djnz l39c4
	ld a,#3f
	jp l354d
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	rrca
	jp c,l39e2
	rrca
	jp c,l39de
	ld hl,(l346c)
	ret
.l39de
	ld hl,(l34c8)
	ret
.l39e2
	ld hl,(l3527)
	ret
	ld hl,#0002
	add hl,sp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,#000c
	add hl,de
	ld (l3a41),hl
	ld hl,#0000
	ld (l3527),hl
	ld (l34c8),hl
	ld (l346c),hl
	ret
	ld (l3a5d),ix
	pop af
	pop hl
	pop de
	pop bc
	pop ix
	push ix
	push bc
	push de
	push hl
	push af
	ld a,lx
	rrca
	jp c,l3a29
	rrca
	jp c,l3a22
	ld ix,l3464
	jp l3a2d
.l3a22
	ld ix,l34c0
	jp l3a2d
.l3a29
	ld ix,l351f
.l3a2d
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.l3a41 equ $ + 1
	ld bc,#96a4
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,l3a4d
	ld a,(hl)
.l3a4d
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
.l3a5d equ $ + 2
	ld ix,#0000
	ret
	ld hl,#0002
	add hl,sp
	ld a,(hl)
	ld hl,#0000
	rrca
	jp nc,l3a6f
	ld (l3527),hl
.l3a6f
	rrca
.l3a70
	jp nc,l3a76
	ld (l34c8),hl
.l3a76
	rrca
	jp z,l3a7d
	ld (l346c),hl
.l3a7d
	ret

;
; #6002
;	call #44d1
;	ld a,(hl)
;	and #0c
;	jr z,l6013
;	cp #04
;	jr z,l6017
;	sub #08
;	jr z,l601b
;	ret
;.l6013
;	ld hl,#a76c
;	ret
;.l6017
;	ld hl,#a6e4
;	ret
;.l601b
;	ld hl,#9600
;	ret
;	
; #7f2c
;	ld hl,#9ae4	; sound fx
;	
; #65b1
;	ld hl,#9698	; ???
;	
; #603f
;	call #395a	; init
;
.init_music		; added by Megachur
;
	ld hl,l9600
	or a
	jr z,call_real_init_music
	ld hl,la6e4
	dec a
	jr z,call_real_init_music
	ld hl,#a76c
call_real_init_music
	push hl
	call real_init_music
	pop hl
	ret
;
.music_info
	db "KimoHiyoko (2018)(CpcRetroDev.ByteRealms)(Alvaro Amador Ruiz)",0
	db "StArkos",0

	read "music_end.asm"
