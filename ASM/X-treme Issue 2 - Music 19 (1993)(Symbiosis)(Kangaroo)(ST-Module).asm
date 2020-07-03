; Music of X-treme Issue 2 - Music 19 (1993)(Symbiosis)(Kangaroo)(ST-Module)
; Ripped by Megachur the 31/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XTRI2M19.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 31
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4009

	read "music_header.asm"

	db #66,#04
;
.init_music
;
	ld b,#03
	ld ix,l43da
	ld iy,l4306
	ld de,#001c
.l4018
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l4018
	ld a,#07
	ld (l40bb),a
	ld a,d
	ld (l40cf),a
	inc a
	ld (l40b6),a
	ld a,#38
	ld (l40c0),a
	ld a,#ff
	ld (l4302),a
	ld (l4303),a
	ld (l4304),a
	ld (l4305),a
	ld a,#0c
	ld c,d
	call l42e4
	ld a,#0d
	ld c,d
	jp l42e4
;
.stop_music
;
	ld a,#07
	ld c,#3f
	call l42e4
	ld a,#08
	ld c,#00
	call l42e4
	ld a,#09
	ld c,#00
	call l42e4
	ld a,#0a
	ld c,#00
	jp l42e4
;
.play_music
;
	ld hl,l40b6
	dec (hl)
	ld ix,l43da
	ld bc,l43e8
	call l4149
	ld ix,l43f6
	ld bc,l4404
	call l4149
	ld ix,l4412
	ld bc,l4420
	call l4149
.l40b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l40bf
.l40bb equ $ + 1
	ld a,#00
	ld (l40b6),a
.l40c0 equ $ + 1
.l40bf
	ld a,#00
	ld hl,l4303
	cp (hl)
	jr z,l40ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l42e4
.l40cf equ $ + 1
.l40ce
	ld a,#00
	ld hl,l4302
	cp (hl)
	jr z,l40dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l42e4
.l40de equ $ + 1
.l40dd
	ld a,#00
	ld hl,l4304
	cp (hl)
	jr z,l40ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l42e4
.l40ed equ $ + 1
.l40ec
	ld a,#00
	ld hl,l4305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l42e4
.l40fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l41fa
.l4109
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l42e4
.l4123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l4138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l4138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l415c
.l4149
	ld a,(l40b6)
	or a
	jp nz,l41fa
	dec (ix+#06)
	jp nz,l41fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l415c
	ld a,(hl)
	or a
	jr z,l40fa
	cp #fe
	jr z,l4109
	cp #ff
	jr z,l4123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l430c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l4198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l4198
	and #7f
	ld (ix+#06),a
	jr l41eb
.l4198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l41ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l41ac
	add a
	add a
	add a
	ld e,a
	ld hl,l4442
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l41eb
	cp #f0
	jp z,l42a0
	cp #d0
	jp z,l42bc
	cp #b0
	jp z,l42c4
	cp #80
	jp nc,l42cc
	cp #10
	jr nz,l41eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l41eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l41fa
	ld a,(ix+#17)
	or a
	jr nz,l420e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l420e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l4239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l430c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l4239
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l42e4
	ld c,h
	ld a,(ix+#03)
	call l42e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4277
	and #0f
	sub (ix+#0a)
	jr nc,l426d
	xor a
.l426d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l42e4
.l4277
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l4294
	ld b,a
	ld a,c
	ld (l40cf),a
	ld a,b
	sub #40
.l4294
	ld (l429b),a
	ld a,(l40c0)
.l429b equ $ + 1
	bit 0,a
	ld (l40c0),a
	ret
.l42a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l44c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l41eb
.l42bc
	inc hl
	ld a,(hl)
	ld (l40bb),a
	jp l41eb
.l42c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l41eb
.l42cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l40ed),a
	inc hl
	ld a,(hl)
	ld (l40de),a
	jp l41eb
.l42e4
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
	ret
.l4305 equ $ + 3
.l4304 equ $ + 2
.l4303 equ $ + 1
.l4302
	db #ff,#ff,#ff,#ff
.l4306
	db #c2,#46,#cb,#46,#d4,#46
.l430c
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
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
	db #0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l43da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l43e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l43f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l4404 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4412 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l4420 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#44,#22,#45
	db #42,#45,#00,#00,#62,#45,#a2,#45
	db #42,#45,#00,#00,#c2,#45,#02,#46
	db #22,#46,#1a,#00,#db,#3e,#fd,#d0
	db #4c,#9d,#23,#56,#42,#46,#82,#46
	db #42,#45,#08,#18,#da,#3e,#a6,#3f
	db #74,#3d,#50,#30,#e4,#7a,#2b,#45
	db #dc,#2b,#b0,#18,#c8,#3d,#7c,#6f
	db #e4,#14,#4d,#4f,#e2,#3e,#8b,#57
	db #51,#3d,#f0,#30,#e5,#14,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
.l44c2 equ $ + 4
	db #dc,#3e,#00,#00,#a2,#46,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0c,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#09,#08,#08,#08,#08,#08,#07
	db #06,#04,#02,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0a,#0a,#0b,#0b
	db #0c,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#dd,#46,#00
	db #e9,#46,#80,#c2,#46,#00,#ff,#46
	db #00,#68,#47,#80,#cb,#46,#00,#a9
	db #47,#00,#e6,#47,#80,#d4,#46,#39
	db #0d,#f4,#00,#3a,#0c,#04,#37,#8c
	db #35,#8b,#ff,#00,#01,#3a,#06,#04
	db #3c,#86,#39,#86,#3c,#86,#3a,#86
	db #39,#86,#34,#83,#37,#83,#35,#85
	db #ff,#a4,#c0,#1b,#29,#02,#c0,#14
	db #a9,#c0,#14,#3a,#02,#12,#a4,#c0
	db #1b,#29,#02,#c0,#14,#a9,#c0,#14
	db #3a,#02,#12,#a4,#c0,#1b,#2e,#02
	db #c0,#0f,#ae,#c0,#0f,#3a,#02,#12
	db #a9,#c0,#14,#2e,#02,#c0,#0f,#ae
	db #c0,#0f,#3a,#02,#12,#a9,#c0,#14
	db #2b,#02,#c0,#12,#ab,#c0,#12,#3a
	db #02,#12,#a6,#c0,#18,#2b,#02,#c0
	db #12,#ab,#c0,#12,#3a,#02,#12,#a6
	db #c0,#18,#29,#02,#c0,#14,#a9,#c0
	db #14,#3a,#02,#12,#a4,#c0,#1b,#29
	db #02,#c0,#14,#a9,#c0,#14,#3a,#02
	db #12,#ff,#a4,#00,#2e,#82,#ae,#00
	db #26,#82,#a6,#00,#28,#82,#a8,#00
	db #24,#82,#a4,#00,#29,#82,#a9,#00
	db #24,#82,#a4,#00,#29,#82,#a9,#00
	db #24,#82,#a4,#00,#2e,#82,#ae,#00
	db #26,#82,#a6,#00,#29,#82,#a9,#00
	db #24,#82,#a4,#00,#2b,#82,#ab,#00
	db #24,#82,#a4,#00,#29,#82,#a9,#00
	db #24,#82,#ff,#bc,#01,#39,#82,#b9
	db #01,#b9,#01,#b7,#01,#b9,#01,#41
	db #82,#bc,#01,#3c,#82,#b9,#01,#3a
	db #82,#bc,#01,#3e,#82,#bc,#01,#3a
	db #85,#b7,#01,#37,#82,#b7,#01,#b7
	db #01,#b6,#01,#b7,#01,#37,#82,#c0
	db #01,#40,#82,#b7,#01,#39,#82,#ba
	db #01,#3c,#82,#be,#01,#3c,#85,#ff
	db #bc,#01,#3e,#82,#be,#01,#be,#01
	db #bd,#01,#be,#01,#40,#83,#40,#83
	db #41,#82,#c1,#01,#c3,#01,#c1,#01
	db #c3,#01,#45,#85,#c5,#01,#43,#82
	db #c1,#01,#3e,#82,#ba,#01,#39,#83
	db #35,#83,#37,#83,#34,#83,#35,#83
	db #fe,#02,#ff,#00,#a1,#b2,#04,#a1
	db #02,#a1,#b2,#06,#ab,#ba,#00,#a1
	db #b2,#08,#a1,#02,#a1,#b2,#0a,#ab
	db #ba,#00,#a1,#b2,#0c,#ee,#b1,#00
	db #a1,#b2,#0e,#2b,#04,#ba,#00,#2b
	db #04,#0a,#2b,#84,#2b,#82,#6e,#02
	db #01,#ff,#ab,#ba,#00,#ad,#02,#ad
	db #b2,#01,#ad,#b2,#02,#ab,#ba,#00
	db #ad,#b2,#04,#ad,#b2,#05,#ad,#b2
	db #06,#ab,#ba,#00,#ad,#b2,#08,#ad
	db #b2,#09,#ad,#b2,#0a,#ab,#ba,#00
	db #ad,#b2,#0c,#ee,#b1,#00,#ad,#b2
	db #0e,#2b,#04,#ba,#00,#2b,#04,#0a
	db #2b,#84,#2b,#82,#6e,#02,#01,#ff
	db #ab,#ba,#00,#a1,#02,#a1,#b2,#01
	db #a1,#b2,#02,#ab,#ba,#00,#a1,#b2
	db #04,#a1,#b2,#05,#a1,#b2,#06,#ab
	db #ba,#00,#a1,#b2,#08,#a1,#b2,#09
	db #a1,#b2,#0a,#ab,#ba,#00,#a1,#b2
	db #0c,#ee,#b1,#00,#a1,#b2,#0e,#2b
	db #04,#ba,#00,#2b,#04,#0a,#2b,#84
	db #2b,#82,#6e,#02,#01,#ff,#00,#52
	db #4a,#00,#22,#4a,#00,#52,#4a,#80
	db #b5,#48,#00,#64,#4a,#00,#71,#4a
	db #00,#7a,#4a,#00,#86,#4a,#00,#8e
	db #4a,#00,#93,#4a,#00,#98,#4a,#00
	db #93,#4a,#00,#8e,#4a,#00,#98,#4a
	db #00,#8e,#4a,#00,#98,#4a,#80,#dc
	db #48,#fe,#26,#2e,#02,#0b,#2e,#90
	db #2e,#04,#0c,#fe,#04,#ff,#00,#26
	db #2e,#02,#0b,#2e,#90,#2e,#04,#0c
	db #fe,#04,#ff,#00,#26,#2e,#02,#0b
	db #2e,#90,#2e,#04,#0c,#fe,#04,#ff
	db #2e,#08,#0b,#3a,#06,#0c,#2e,#02
	db #0b,#2e,#84,#2e,#84,#3a,#08,#0c
	db #2e,#08,#0b,#3a,#06,#0c,#2e,#02
	db #0b,#2e,#84,#2e,#84,#3a,#08,#0c
	db #ff,#2e,#08,#0b,#3a,#06,#0c,#2e
	db #02,#0b,#2e,#84,#2e,#84,#3a,#08
	db #0c,#2e,#08,#0b,#3a,#06,#0c,#2e
	db #02,#0b,#2e,#84,#2e,#84,#3a,#08
	db #0c,#ff,#2e,#04,#0b,#42,#04,#fe
	db #02,#3a,#06,#1c,#2e,#02,#0b,#2e
	db #84,#2e,#84,#3a,#08,#0c,#2e,#04
	db #0b,#42,#04,#fe,#02,#3a,#06,#1c
	db #2e,#02,#0b,#2e,#84,#2e,#84,#3a
	db #08,#0c,#ff,#2e,#04,#0b,#40,#04
	db #fe,#01,#3a,#06,#1c,#2e,#02,#0b
	db #2e,#84,#2e,#84,#3a,#08,#0c,#2e
	db #04,#0b,#40,#04,#fe,#01,#3a,#06
	db #1c,#2e,#02,#0b,#2e,#84,#2e,#84
	db #3a,#08,#0c,#ff,#fe,#08,#3d,#0c
	db #04,#38,#8c,#36,#8e,#34,#92,#ff
	db #00,#08,#3d,#0c,#04,#3d,#8c,#3d
	db #a0,#ff,#00,#08,#3d,#0c,#04,#38
	db #8c,#38,#8e,#34,#92,#ff,#00,#08
	db #3d,#0c,#04,#38,#8c,#36,#a0,#ff
	db #36,#08,#08,#3d,#88,#3b,#84,#38
	db #88,#34,#84,#36,#8c,#31,#82,#34
	db #82,#31,#90,#ff,#36,#08,#08,#3d
	db #88,#40,#84,#3d,#88,#3b,#84,#3d
	db #a0,#ff,#38,#08,#08,#3d,#88,#3b
	db #84,#38,#88,#36,#84,#38,#8c,#31
	db #82,#34,#82,#31,#90,#ff,#36,#08
	db #08,#3d,#88,#3b,#84,#38,#88,#34
	db #84,#36,#a0,#ff,#3d,#08,#0d,#3b
	db #84,#3d,#82,#36,#8a,#36,#82,#39
	db #82,#3b,#82,#3d,#86,#3d,#84,#3b
	db #84,#3d,#84,#40,#86,#3d,#86,#3b
	db #84,#ff,#3b,#08,#0d,#38,#84,#36
	db #82,#38,#86,#38,#84,#36,#82,#38
	db #84,#31,#a2,#ff,#3b,#08,#0d,#38
	db #84,#36,#82,#38,#86,#38,#84,#36
	db #82,#38,#84,#31,#a2,#ff,#36,#10
	db #14,#3b,#0c,#04,#34,#90,#31,#84
	db #31,#90,#ff,#36,#10,#14,#40,#0c
	db #04,#3b,#a4,#ff,#38,#10,#04,#3b
	db #8c,#36,#90,#31,#84,#31,#90,#ff
	db #36,#10,#04,#3b,#8c,#34,#a4,#ff
	db #1e,#40,#a6,#13,#ff,#1e,#40,#a6
	db #13,#ff,#1c,#40,#a4,#15,#ff,#1c
	db #40,#a4,#15,#ff
;
.music_info
	db "X-treme Issue 2 - Music 19 (1993)(Symbiosis)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
