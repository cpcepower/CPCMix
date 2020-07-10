; Music of Jukebox 4 - Isabelle (2003)(RoundSoft)(Napo)(ST-128 Module)
; Ripped by Megachur the 21/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JUKEB4IS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #5e12

	read "music_header.asm"

	jr l5e16
	jr l5e25
.l5e16
	call l5e49
	ld hl,l5e36
	ld de,l5e2e
	ld bc,#81ff
	jp #bcd7
.l5e25
	ld hl,l5e36
	call #bcdd
	jp l5ec1
.l5e2e
	push ix
	call l5edd
	pop ix
	ret
.l5e36
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l5e49
	jp l5edd
	jp l5ec1
;
.init_music
.l5e49
;
	xor a
	ld hl,l63f4
	call l5eba
	ld hl,l6422
	call l5eba
	ld hl,l6450
	call l5eba
	ld ix,l63f0
	ld iy,l647a
	ld de,#002e
	ld b,#03
.l5e69
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l5e69
	ld hl,l6309
	ld (hl),#04
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l6305),hl
	ld (l6307),hl
	ld a,#0c
	ld c,d
	call l62e5
	ld a,#0d
	ld c,d
	jp l62e5
.l5eba
	ld b,#2a
.l5ebc
	ld (hl),a
	inc hl
	djnz l5ebc
	ret
;
.stop_music
.l5ec1
;
	ld a,#07
	ld c,#3f
	call l62e5
	ld a,#08
	ld c,#00
	call l62e5
	ld a,#09
	ld c,#00
	call l62e5
	ld a,#0a
	ld c,#00
	jp l62e5
;
.play_music
.l5edd
;
	ld hl,l630b
	dec (hl)
	ld ix,l63f0
	ld bc,l63fe
	call l5f7f
	ld ix,l641e
	ld bc,l642c
	call l5f7f
	ld ix,l644c
	ld bc,l645a
	call l5f7f
	ld hl,l6304
	ld de,l630b
	ld b,#06
	call l5f5c
	ld b,#07
	call l5f5c
	ld b,#0b
	call l5f5c
	ld b,#0d
	call l5f5c
	ld de,l630b
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l640f
	call l5f35
	ld hl,l643d
	call l5f35
	ld hl,l646b
.l5f35
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l5f4a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l5f4a
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l5f5c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l62e5
.l5f67
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l62e5
.l5f7f
	ld a,(l630b)
	or a
	jp nz,l6037
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6037
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5f67
	or a
	jp z,l602c
	ld r,a
	and #7f
	cp #10
	jr c,l6007
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l617f
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l5fe0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l5fe0
	rrca
	ld c,a
	ld hl,l6480
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l5fff
	ld (ix+#1e),b
.l5fff
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6020
.l6007
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6310
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	ld sp,#3332
	inc (hl)
	dec (hl)
.l6020 equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l602e
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l602e
.l602c
	ld a,(hl)
	inc hl
.l602e
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6037
	ld a,(ix+#17)
	or a
	jr nz,l604d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l604d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6063
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6063
	ld a,(ix+#0d)
	or a
	jr z,l6071
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l608f
.l6071
	ld a,(ix+#1a)
	or a
	jp z,l6096
	ld c,a
	cp #03
	jr nz,l607e
	xor a
.l607e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l608f
	ld a,(ix+#18)
	dec c
	jr z,l608f
	ld a,(ix+#19)
.l608f
	add (ix+#07)
	ld b,d
	call l617f
.l6096
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l60be
	dec (ix+#1b)
	jr nz,l60be
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l60f6
.l60be
	ld a,(ix+#29)
	or a
	jr z,l60f6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l60ed
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l60e4
	ld (ix+#29),#ff
	jr l60ed
.l60e4
	cp (ix+#2b)
	jr nz,l60ed
	ld (ix+#29),#01
.l60ed
	ld b,d
	or a
	jp p,l60f3
	dec b
.l60f3
	ld c,a
	jr l6101
.l60f6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6101
	pop hl
	bit 7,(ix+#14)
	jr z,l610a
	ld h,d
	ld l,d
.l610a
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l62e5
	ld c,h
	ld a,(ix+#02)
	call l62e5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l615d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l614c
	dec (ix+#09)
	jr nz,l614c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6144
	xor a
	jr l6149
.l6144
	cp #10
	jr nz,l6149
	dec a
.l6149
	ld (ix+#1e),a
.l614c
	ld a,b
	sub (ix+#1e)
	jr nc,l6153
	xor a
.l6153
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l62e5
.l615d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l630c)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l617b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l617b
	ld (l630c),hl
	ret
.l617f
	ld hl,l632e
	cp #61
	jr nc,l6189
	add a
	ld c,a
	add hl,bc
.l6189
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6193
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l62b8
	ld (ix+#1e),a
	jp l6020
.l61a5
	dec b
.l61a6
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l61b1
	neg
.l61b1
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l6020
.l61c7
	dec b
	jr l61cb
.l61ca
	inc b
.l61cb
	call l62b8
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6020
.l61da
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l629d
.l61eb
	ld a,(hl)
	inc hl
	or a
	jr z,l620d
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l620d
	ld (ix+#29),a
	jp l6020
.l6213
	dec hl
	ld a,(hl)
	and #0f
	ld (l630f),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l630e),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6020
.l622d
	ld a,(hl)
	or a
	jr z,l623e
	call l62ba
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6020
.l623e
	ld hl,#0101
	ld (l630a),hl
	jp l6020
.l6247
	call l62b8
	ld (ix+#1e),a
	jp l6020
.l6250
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l62c9
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l62c9
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6020
.l6272
	ld a,(hl)
	inc hl
	ld (l6309),a
	jp l6020
.l627a
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l6020
.l6299
	call l62b8
	add a
.l629d
	ld b,#00
	ld c,a
	push hl
	ld hl,l6500
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6020
.l62b8
	ld a,(hl)
	inc hl
.l62ba
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l62c9
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6480
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l632d
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l62e5
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
.l6304
	ret
.l630c equ $ + 7
.l630b equ $ + 6
.l630a equ $ + 5
.l6309 equ $ + 4
.l6307 equ $ + 2
.l6305
	db #00,#00,#00,#00,#00,#00,#00,#00
.l630f equ $ + 2
.l630e equ $ + 1
	db #38,#00,#00
.l6310
	dw l6193,l61a6,l61a5,l61ca
	dw l61c7,l61da,l61eb,l6213
	dw l622d,l6213,l6247,l6250
.l632d equ $ + 5
	dw l6272,l627a,l6299
.l632e
	db #00,#00,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
.l63f0 equ $ + 2
	db #0f,#00,#08,#00
.l63f4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l63fe equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l640f equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l641e equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l6422
	db #00,#00,#00,#00,#00,#00,#00,#00
.l642c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l643d equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6450 equ $ + 6
.l644c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l645a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l646b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6480 equ $ + 6
.l647a
	db #60,#66,#6f,#66,#7e,#66,#20,#65
	db #60,#65,#80,#65,#00,#00,#20,#65
	db #a0,#65,#80,#65,#00,#00,#20,#65
	db #c0,#65,#e0,#65,#00,#00,#20,#65
	db #00,#66,#20,#66,#00,#00,#20,#65
	db #40,#66,#80,#65,#00,#00,#01,#38
	db #01,#38,#01,#38,#00,#00,#01,#38
	db #01,#38,#01,#38,#00,#00,#01,#38
	db #01,#38,#01,#38,#00,#00,#01,#38
	db #01,#38,#01,#38,#00,#00,#01,#38
	db #01,#38,#01,#38,#00,#00,#01,#38
	db #01,#38,#01,#38,#00,#00,#01,#38
	db #01,#38,#01,#38,#00,#00,#01,#38
	db #01,#38,#01,#38,#00,#00,#01,#38
	db #01,#38,#01,#38,#00,#00,#01,#38
	db #01,#38,#01,#38,#00,#00,#01,#38
.l6500 equ $ + 6
	db #01,#38,#01,#38,#00,#00,#01,#38
	db #01,#38,#01,#38,#01,#38,#01,#38
	db #01,#38,#01,#38,#01,#38,#01,#38
	db #01,#38,#01,#38,#01,#38,#01,#38
	db #01,#38,#01,#38,#01,#38,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0d
	db #0f,#0e,#0d,#08,#04,#06,#0b,#08
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0e
	db #0d,#09,#08,#08,#08,#07,#06,#04
	db #00,#00,#00,#02,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0c
	db #0e,#0c,#0d,#0c,#0a,#08,#05,#04
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12,#19
	db #1f,#1b,#1f,#1b,#19,#1a,#14,#1b
	db #19,#15,#1b,#1b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09,#0c
	db #0e,#0f,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#8d
	db #66,#00,#8d,#66,#00,#bb,#66,#00
	db #fc,#66,#80,#60,#66,#00,#75,#67
	db #00,#75,#67,#00,#d6,#67,#00,#38
	db #68,#80,#6f,#66,#00,#99,#68,#00
	db #99,#68,#00,#99,#68,#00,#0a,#69
	db #80,#7e,#66,#46,#1d,#04,#04,#46
	db #10,#04,#46,#10,#04,#46,#10,#04
	db #44,#10,#04,#c4,#10,#fe,#01,#44
	db #10,#0a,#44,#10,#04,#44,#10,#04
	db #44,#10,#04,#46,#10,#04,#3f,#10
	db #04,#bf,#10,#fe,#01,#3f,#10,#0a
	db #ff,#46,#11,#40,#46,#10,#04,#46
	db #10,#04,#46,#1e,#50,#04,#44,#1e
	db #50,#04,#c4,#1e,#50,#fe,#01,#44
	db #1e,#50,#0a,#44,#1e,#50,#04,#44
	db #1e,#50,#04,#44,#1e,#50,#04,#46
	db #1e,#50,#04,#3f,#1e,#70,#04,#bf
	db #1e,#70,#fe,#01,#3f,#1e,#70,#04
	db #3f,#10,#02,#42,#10,#02,#43,#10
	db #02,#ff,#44,#10,#02,#bf,#1e,#c0
	db #fe,#01,#bf,#1e,#c0,#fe,#01,#bf
	db #1e,#c0,#fe,#01,#bf,#1e,#c0,#fe
	db #01,#42,#11,#20,#44,#10,#02,#42
	db #10,#02,#46,#10,#02,#bf,#1e,#c0
	db #fe,#01,#bf,#1e,#c0,#fe,#01,#bf
	db #1e,#c0,#fe,#01,#bf,#1e,#c0,#fe
	db #01,#3f,#11,#20,#42,#11,#20,#43
	db #10,#02,#44,#10,#02,#bf,#1e,#c0
	db #fe,#01,#bf,#1e,#c0,#fe,#01,#bf
	db #1e,#c0,#fe,#01,#bf,#1e,#c0,#fe
	db #01,#42,#11,#20,#44,#10,#02,#42
	db #10,#02,#46,#10,#02,#3a,#10,#02
	db #46,#10,#02,#3a,#10,#02,#46,#10
	db #02,#3a,#10,#02,#46,#10,#02,#3a
	db #10,#02,#ff,#33,#00,#02,#3f,#00
	db #02,#33,#00,#02,#3f,#00,#02,#33
	db #00,#02,#3f,#00,#02,#33,#00,#02
	db #3f,#00,#02,#2c,#00,#02,#38,#00
	db #02,#2c,#00,#02,#38,#00,#02,#2c
	db #00,#02,#38,#00,#02,#2c,#00,#02
	db #38,#00,#02,#2c,#00,#02,#38,#00
	db #02,#2c,#00,#02,#38,#00,#02,#2c
	db #00,#02,#38,#00,#02,#2c,#00,#02
	db #38,#00,#02,#33,#00,#02,#3f,#00
	db #02,#33,#00,#02,#3f,#00,#02,#33
	db #00,#02,#3f,#00,#02,#33,#00,#02
	db #3f,#00,#02,#ff,#33,#0d,#04,#02
	db #3f,#00,#02,#33,#00,#02,#3f,#00
	db #02,#33,#00,#02,#3f,#00,#02,#33
	db #00,#02,#3f,#00,#02,#2c,#00,#02
	db #38,#00,#02,#2c,#00,#02,#38,#00
	db #02,#2c,#00,#02,#38,#00,#02,#2c
	db #00,#02,#38,#00,#02,#2c,#00,#02
	db #38,#00,#02,#2c,#00,#02,#38,#00
	db #02,#2c,#00,#02,#38,#00,#02,#2c
	db #00,#02,#38,#00,#02,#33,#00,#02
	db #3f,#00,#02,#33,#00,#02,#3f,#00
	db #02,#33,#00,#02,#3f,#00,#02,#33
	db #00,#02,#3f,#00,#02,#ff,#2c,#00
	db #02,#38,#00,#02,#2c,#00,#02,#38
	db #00,#02,#2c,#00,#02,#38,#00,#02
	db #2c,#00,#02,#38,#00,#02,#33,#00
	db #02,#3f,#00,#02,#33,#00,#02,#3f
	db #00,#02,#33,#00,#02,#3f,#00,#02
	db #33,#00,#02,#3f,#00,#02,#2c,#00
	db #02,#38,#00,#02,#2c,#00,#02,#38
	db #00,#02,#2c,#00,#02,#38,#00,#02
	db #2c,#00,#02,#38,#00,#02,#2e,#00
	db #02,#3a,#00,#02,#2e,#00,#02,#3a
	db #00,#02,#2e,#00,#02,#3a,#00,#02
	db #2e,#00,#02,#3a,#00,#02,#ff,#64
	db #30,#02,#4b,#4e,#37,#02,#74,#20
	db #02,#4b,#4e,#37,#02,#64,#30,#02
	db #4b,#4e,#37,#02,#74,#20,#02,#4b
	db #4e,#37,#02,#64,#30,#02,#47,#4e
	db #49,#02,#74,#20,#02,#47,#4e,#49
	db #02,#64,#30,#02,#47,#4e,#49,#02
	db #74,#20,#02,#47,#4e,#49,#02,#64
	db #30,#02,#47,#4e,#49,#02,#74,#20
	db #02,#47,#4e,#49,#02,#64,#30,#02
	db #47,#4e,#49,#02,#74,#20,#02,#47
	db #4e,#49,#02,#64,#30,#02,#4b,#4e
	db #37,#02,#74,#20,#02,#4b,#4e,#37
	db #02,#64,#30,#02,#4b,#4e,#37,#02
	db #74,#20,#02,#4b,#4e,#37,#02,#ff
	db #64,#30,#02,#50,#4e,#37,#02,#74
	db #20,#02,#50,#4e,#37,#02,#64,#30
	db #02,#50,#4e,#37,#02,#74,#20,#02
	db #50,#4e,#37,#02,#64,#30,#02,#4b
	db #4e,#37,#02,#74,#20,#02,#4b,#4e
	db #37,#02,#64,#30,#02,#4b,#4e,#37
	db #02,#74,#20,#02,#4b,#4e,#37,#02
	db #64,#30,#02,#50,#4e,#37,#02,#74
	db #20,#02,#50,#4e,#37,#02,#64,#30
	db #02,#50,#4e,#37,#02,#74,#20,#02
	db #50,#4e,#37,#02,#64,#30,#02,#4d
	db #4e,#59,#02,#74,#20,#02,#4d,#4e
	db #59,#02,#64,#30,#02,#4d,#4e,#59
	db #02,#74,#20,#02,#4d,#4e,#59,#02
	db #ff
;
.music_info
	db "Jukebox 4 - Isabelle (2003)(RoundSoft)(Napo)",0
	db "ST-128 Module",0

	read "music_end.asm"
