; Music of PC Slide Show 2 - Photographics (1994)(TGS)(BSC and Weee)(ST-128 Module)
; Ripped by Megachur the 03/01/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PCSLIS2P.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #0040

	read "music_header.asm"

	jp l0049
	jp l00dd
	jp l00c1
;
.init_music
.l0049
;
	xor a
	ld hl,l05f4
	call l00ba
	ld hl,l0622
	call l00ba
	ld hl,l0650
	call l00ba
	ld ix,l05f0
	ld iy,l067a
	ld de,#002e
	ld b,#03
.l0069
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
	djnz l0069
	ld hl,l0509
	ld (hl),#03
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l0505),hl
	ld (l0507),hl
	ld a,#0c
	ld c,d
	call l04e5
	ld a,#0d
	ld c,d
	jp l04e5
.l00ba
	ld b,#2a
.l00bc
	ld (hl),a
	inc hl
	djnz l00bc
	ret
;
.stop_music
.l00c1
;
	ld a,#07
	ld c,#3f
	call l04e5
	ld a,#08
	ld c,#00
	call l04e5
	ld a,#09
	ld c,#00
	call l04e5
	ld a,#0a
	ld c,#00
	jp l04e5
;
.play_music
.l00dd
;
	ld hl,l050b
	dec (hl)
	ld ix,l05f0
	ld bc,l05fe
	call l017f
	ld ix,l061e
	ld bc,l062c
	call l017f
	ld ix,l064c
	ld bc,l065a
	call l017f
.l0101 equ $ + 2
	ld hl,l0504
	ld de,l050b
	ld b,#06
	call l015c
	ld b,#07
	call l015c
	ld b,#0b
	call l015c
	ld b,#0d
	call l015c
	ld de,l050b
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l060f
	call l0135
	ld hl,l063d
	call l0135
	ld hl,l066b
.l0135
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
	jr nz,l014a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l014a
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
.l015c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l04e5
.l0167
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld e,l
	ld (hl),d
	rla
	ld e,l
	ld (hl),d
	dec d
	ld c,d
	ld e,l
	ld a,(hl)
	nop
	jp l04e5
.l017f
	ld a,(l050b)
	or a
	jp nz,l0237
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l0237
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l0167
	or a
	jp z,l022c
	ld r,a
	and #7f
	cp #10
	jr c,l0207
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l037f
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
	jr z,l01e0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l01e0
	rrca
	ld c,a
	ld hl,l0680
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
	jr z,l01ff
	ld (ix+#1e),b
.l01ff
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l0220
.l0207
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l0510
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add (hl)
	add a
	add a
	add l
	add a
.l0220
	ld a,d
	or a
	jr nz,l022e
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l022e
.l022c
	ld a,(hl)
	inc hl
.l022e
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l0237
	ld a,(ix+#17)
	or a
	jr nz,l024d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l024d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l0263
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l0263
	ld a,(ix+#0d)
	or a
	jr z,l0271
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l028f
.l0271
	ld a,(ix+#1a)
	or a
	jp z,l0296
	ld c,a
	cp #03
	jr nz,l027e
	xor a
.l027e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l028f
	ld a,(ix+#18)
	dec c
	jr z,l028f
	ld a,(ix+#19)
.l028f
	add (ix+#07)
	ld b,d
	call l037f
.l0296
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l02be
	dec (ix+#1b)
	jr nz,l02be
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l02f6
.l02be
	ld a,(ix+#29)
	or a
	jr z,l02f6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l02ed
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l02e4
	ld (ix+#29),#ff
	jr l02ed
.l02e4
	cp (ix+#2b)
	jr nz,l02ed
	ld (ix+#29),#01
.l02ed
	ld b,d
	or a
	jp p,l02f3
	dec b
.l02f3
	ld c,a
	jr l0301
.l02f6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l0301
	pop hl
	bit 7,(ix+#14)
	jr z,l030a
	ld h,d
	ld l,d
.l030a
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l04e5
	ld c,h
	ld a,(ix+#02)
	call l04e5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l035d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l034c
	dec (ix+#09)
	jr nz,l034c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l0344
	xor a
	jr l0349
.l0344
	cp #10
	jr nz,l0349
	dec a
.l0349
	ld (ix+#1e),a
.l034c
	ld a,b
	sub (ix+#1e)
	jr nc,l0353
	xor a
.l0353
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l04e5
.l035d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l050c)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l037b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l037b
	ld (l050c),hl
	ret
.l037f
	ld hl,l052e
	cp #61
	jr nc,l0389
	add a
	ld c,a
	add hl,bc
.l0389
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l04b8
	ld (ix+#1e),a
	jp l0220
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l03b1
	neg
.l03b1
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
	jp l0220
	dec b
	jr l03cb
	inc b
.l03cb
	call l04b8
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l0220
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
	jp l049d
	ld a,(hl)
	inc hl
	or a
	jr z,l040d
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
.l040d
	ld (ix+#29),a
	jp l0220
	dec hl
	ld a,(hl)
	and #0f
	ld (l050f),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l050e),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l0220
	ld a,(hl)
	or a
	jr z,l043e
	call l04ba
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l0220
.l043e
	ld hl,l0101
	ld (l050a),hl
	jp l0220
	call l04b8
	ld (ix+#1e),a
	jp l0220
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l04c9
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l04c9
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l0220
	ld a,(hl)
	inc hl
	ld (l0509),a
	jp l0220
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
	jp l0220
	call l04b8
	add a
.l049d
	ld b,#00
	ld c,a
	push hl
	ld hl,l0700
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l0220
.l04b8
	ld a,(hl)
	inc hl
.l04ba
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
.l04c9
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l0680
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l04e5
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
.l0504
	ret
.l050c equ $ + 7
.l050b equ $ + 6
.l050a equ $ + 5
.l0509 equ $ + 4
.l0507 equ $ + 2
.l0505
	db #00,#00,#00,#00,#00,#00,#00,#00
.l050f equ $ + 2
.l050e equ $ + 1
	db #38,#00,#00
.l0510
	db #93,#03,#a6,#03,#a5,#03,#ca,#03
	db #c7,#03,#da,#03,#eb,#03,#13,#04
	db #2d,#04,#13,#04,#47,#04,#50,#04
.l052e equ $ + 6
	db #72,#04,#7a,#04,#99,#04,#00,#00
	db #18,#0e,#4d,#0d,#8e,#0c,#da,#0b
	db #2f,#0b,#8f,#0a,#f7,#09,#68,#09
	db #e1,#08,#61,#08,#e9,#07,#77,#07
	db #0c,#07,#a7,#06,#47,#06,#ed,#05
	db #98,#05,#47,#05,#fc,#04,#b4,#04
	db #70,#04,#31,#04,#f4,#03,#bc,#03
	db #86,#03,#53,#03,#24,#03,#f6,#02
	db #cc,#02,#a4,#02,#7e,#02,#5a,#02
	db #38,#02,#18,#02,#fa,#01,#de,#01
	db #c3,#01,#aa,#01,#92,#01,#7b,#01
	db #66,#01,#52,#01,#3f,#01,#2d,#01
	db #1c,#01,#0c,#01,#fd,#00,#ef,#00
	db #e1,#00,#d5,#00,#c9,#00,#be,#00
	db #b3,#00,#a9,#00,#9f,#00,#96,#00
	db #8e,#00,#86,#00,#7f,#00,#77,#00
	db #71,#00,#6a,#00,#64,#00,#5f,#00
	db #59,#00,#54,#00,#50,#00,#4b,#00
	db #47,#00,#43,#00,#3f,#00,#3c,#00
	db #38,#00,#35,#00,#32,#00,#2f,#00
	db #2d,#00,#2a,#00,#28,#00,#26,#00
	db #24,#00,#22,#00,#20,#00,#1e,#00
	db #1c,#00,#1b,#00,#19,#00,#18,#00
	db #16,#00,#15,#00,#14,#00,#13,#00
	db #12,#00,#11,#00,#10,#00,#0f,#00
.l05f4 equ $ + 4
.l05f0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l05fe equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l060f equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l061e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l0622 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l062c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l063d equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l064c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l0650
	db #00,#00,#00,#00,#00,#00,#00,#00
.l065a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l066b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l067a equ $ + 2
	db #00,#00,#80,#0a,#a1,#0a,#c2,#0a
.l0680
	db #20,#07,#60,#07,#80,#07,#80,#00
	db #a0,#07,#e0,#07,#00,#08,#c0,#00
	db #20,#08,#60,#08,#80,#08,#9a,#06
	db #12,#c0,#e4,#0f,#e4,#0f,#d2,#4f
	db #a0,#08,#e0,#08,#00,#09,#40,#00
	db #20,#09,#60,#09,#00,#09,#48,#00
	db #12,#c0,#e4,#0f,#e4,#0f,#d2,#4f
	db #12,#c0,#f2,#57,#b2,#59,#c0,#99
	db #12,#c0,#e4,#0f,#e4,#0f,#d2,#4f
	db #12,#c0,#e4,#0f,#e4,#0f,#d2,#4f
	db #80,#09,#c0,#09,#00,#09,#18,#08
	db #e4,#0f,#e4,#0f,#e4,#0f,#d2,#4f
	db #e4,#0f,#e4,#0f,#e4,#0f,#d2,#4f
	db #20,#08,#e0,#09,#00,#0a,#00,#00
	db #e4,#0f,#a2,#c1,#f2,#c1,#30,#02
	db #92,#c2,#e2,#c2,#32,#c3,#00,#00
.l0700
	db #20,#0a,#40,#0a,#60,#0a,#12,#c0
	db #12,#c0,#12,#c0,#12,#c0,#12,#c0
	db #12,#c0,#12,#c0,#12,#c0,#12,#c0
	db #12,#c0,#12,#c0,#12,#c0,#12,#c0
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0f,#0f,#0e,#0d,#0c,#0e,#0d,#0c
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#09,#08,#07,#06
	db #05,#04,#04,#04,#04,#04,#04,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0d,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #09,#0b,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0f,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0a,#09,#08,#07,#05
	db #04,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #08,#00,#05,#08,#00,#05,#08,#00
	db #05,#08,#00,#05,#08,#00,#05,#08
	db #00,#05,#08,#00,#05,#08,#00,#05
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#e3,#0a,#00,#ea,#0a,#00,#ea
	db #0a,#00,#ea,#0a,#00,#ea,#0a,#00
	db #ea,#0a,#00,#ea,#0a,#00,#ea,#0a
	db #00,#ea,#0a,#00,#ea,#0a,#80,#86
	db #0a,#00,#1f,#0b,#00,#1f,#0b,#00
	db #22,#0b,#00,#46,#0b,#00,#61,#0b
	db #00,#85,#0b,#00,#b2,#0b,#00,#d4
	db #0b,#00,#85,#0b,#00,#de,#0b,#80
	db #a7,#0a,#00,#e8,#0b,#00,#4d,#0c
	db #00,#4d,#0c,#00,#4d,#0c,#00,#4d
	db #0c,#00,#4d,#0c,#00,#4d,#0c,#00
	db #4d,#0c,#00,#4d,#0c,#00,#4d,#0c
	db #80,#c8,#0a,#fe,#3c,#23,#48,#28
	db #04,#ff,#25,#48,#24,#08,#a8,#48
	db #1e,#aa,#48,#1b,#2c,#48,#18,#02
	db #2f,#48,#14,#0e,#27,#48,#20,#02
	db #28,#48,#1e,#04,#25,#48,#24,#08
	db #a8,#48,#1e,#aa,#48,#1b,#2c,#48
	db #18,#02,#2f,#48,#14,#0e,#27,#48
	db #20,#02,#23,#48,#28,#04,#ff,#00
	db #40,#ff,#00,#08,#3d,#40,#04,#3d
	db #40,#04,#3b,#40,#04,#3b,#40,#0c
	db #3d,#40,#04,#3b,#40,#04,#3d,#40
	db #04,#40,#40,#08,#3b,#40,#04,#38
	db #40,#04,#36,#40,#04,#ff,#00,#08
	db #3d,#40,#04,#3d,#40,#04,#44,#40
	db #04,#42,#40,#04,#40,#40,#04,#3d
	db #40,#0c,#38,#40,#04,#3b,#40,#14
	db #ff,#00,#08,#3d,#40,#04,#3d,#40
	db #04,#3b,#40,#04,#3b,#40,#0c,#3d
	db #40,#04,#3b,#40,#04,#44,#40,#04
	db #42,#40,#08,#40,#40,#04,#3f,#40
	db #04,#42,#40,#04,#ff,#00,#08,#44
	db #40,#04,#47,#40,#04,#49,#40,#04
	db #4c,#40,#04,#47,#40,#04,#49,#40
	db #14,#4e,#40,#02,#4b,#40,#02,#47
	db #40,#02,#42,#40,#02,#4b,#40,#02
	db #47,#40,#02,#42,#40,#02,#3f,#40
	db #02,#ff,#49,#a0,#0c,#50,#a0,#18
	db #4e,#a0,#02,#4c,#a0,#02,#4e,#a0
	db #02,#4c,#a0,#02,#4b,#a0,#02,#4c
	db #a0,#02,#4b,#a0,#04,#49,#a0,#04
	db #47,#a0,#08,#ff,#49,#a0,#08,#55
	db #a0,#04,#50,#a0,#34,#ff,#50,#a0
	db #08,#58,#a0,#04,#55,#a0,#34,#ff
	db #21,#00,#02,#21,#20,#02,#73,#d0
	db #02,#21,#20,#02,#21,#10,#02,#21
	db #20,#02,#21,#00,#02,#21,#20,#02
	db #a1,#20,#a1,#20,#21,#20,#02,#73
	db #d0,#02,#21,#20,#02,#21,#10,#02
	db #21,#20,#02,#a1,#20,#a1,#20,#39
	db #20,#02,#21,#00,#02,#21,#20,#02
	db #73,#d0,#02,#21,#20,#02,#21,#10
	db #02,#21,#20,#02,#21,#00,#02,#21
	db #20,#02,#a1,#20,#a1,#20,#21,#20
	db #02,#73,#d0,#02,#21,#20,#02,#21
	db #10,#02,#21,#20,#02,#a1,#20,#a1
	db #20,#39,#20,#02,#ff,#21,#01,#10
	db #44,#5f,#10,#21,#21,#10,#44,#5f
	db #10,#73,#d1,#10,#44,#5f,#10,#21
	db #21,#10,#44,#5f,#10,#21,#11,#10
	db #44,#5f,#10,#21,#21,#10,#44,#5f
	db #10,#21,#01,#10,#44,#5f,#11,#21
	db #21,#10,#44,#5f,#11,#21,#21,#10
	db #44,#5f,#11,#21,#21,#10,#44,#5f
	db #11,#73,#d1,#10,#44,#5f,#11,#21
	db #21,#10,#44,#5f,#11,#21,#11,#10
	db #44,#5f,#11,#21,#21,#10,#44,#5f
	db #11,#21,#21,#10,#44,#5f,#11,#39
	db #21,#10,#44,#5f,#11,#21,#01,#10
	db #44,#5f,#10,#21,#21,#10,#44,#5f
	db #10,#73,#d1,#10,#44,#5f,#10,#21
	db #21,#10,#44,#5f,#10,#21,#11,#10
	db #44,#5f,#10,#21,#21,#10,#44,#5f
	db #10,#21,#01,#10,#47,#5f,#12,#21
	db #21,#10,#47,#5f,#12,#21,#21,#10
	db #47,#5f,#12,#21,#21,#10,#47,#5f
	db #12,#73,#d1,#10,#47,#5f,#12,#21
	db #21,#10,#47,#5f,#12,#21,#11,#10
	db #47,#5f,#12,#21,#21,#10,#47,#5f
	db #12,#21,#21,#10,#47,#5f,#12,#39
	db #21,#10,#47,#5f,#12,#ff,#00,#00
	db #21,#ff
;
.music_info
	db "PC Slide Show 2 - Photographics (1994)(TGS)(BSC and Weee)",0
	db "ST-128 Module",0

	read "music_end.asm"
