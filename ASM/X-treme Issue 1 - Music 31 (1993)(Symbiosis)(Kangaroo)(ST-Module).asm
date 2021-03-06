; Music of X-treme Issue 1 - Music 31 (1993)(Symbiosis)(Kangaroo)(ST-Module)
; Ripped by Megachur the 28/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XTRI1M31.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
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
	ld a,#03
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
	dw l4702,l471d,l4738
.l430c
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
	dw #000f
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
	db #75,#6c,#65,#2e,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#e2,#44,#22,#45
	db #42,#45,#00,#00,#62,#45,#a2,#45
	db #c2,#45,#0c,#00,#db,#3e,#fd,#d0
	db #4c,#9d,#23,#56,#e2,#45,#22,#46
	db #42,#46,#08,#18,#e2,#45,#62,#46
	db #82,#46,#00,#00,#e4,#7a,#2b,#45
	db #dc,#2b,#b0,#18,#c8,#3d,#7c,#6f
	db #e4,#14,#4d,#4f,#e2,#3e,#8b,#57
	db #51,#3d,#f0,#30,#a2,#46,#e2,#46
	db #42,#46,#08,#18,#94,#bc,#b8,#7d
	db #94,#bc,#b8,#7d,#b8,#7d,#dc,#3e
	db #fe,#84,#42,#46,#3e,#85,#5e,#85
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
.l44c2 equ $ + 4
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#00,#00,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#32,#00
	db #64,#00,#91,#00,#be,#00,#eb,#00
	db #22,#01,#4a,#01,#7c,#01,#a9,#01
	db #d6,#01,#08,#02,#3a,#02,#6c,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0f
	db #0f,#0e,#0e,#0d,#0c,#0a,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0d,#0c,#0b,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0b,#0b,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#0d,#0c,#0b,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l4702 equ $ + 4
	db #80,#80,#80,#80,#00,#53,#47,#00
	db #78,#47,#00,#53,#47,#00,#53,#47
	db #00,#53,#47,#00,#53,#47,#00,#53
.l471d equ $ + 7
	db #47,#00,#53,#47,#80,#02,#47,#00
	db #9d,#47,#00,#bb,#47,#00,#9d,#47
	db #00,#bb,#47,#00,#9d,#47,#00,#bb
	db #47,#00,#9d,#47,#00,#bb,#47,#80
.l4738 equ $ + 2
	db #1d,#47,#00,#d9,#47,#00,#dc,#47
	db #00,#d9,#47,#00,#ee,#47,#00,#d9
	db #47,#00,#00,#48,#00,#d9,#47,#00
	db #00,#48,#80,#38,#47,#2e,#08,#02
	db #3a,#06,#01,#2e,#06,#02,#2e,#84
	db #3a,#04,#01,#3a,#84,#2e,#08,#02
	db #3a,#06,#01,#2e,#04,#02,#2e,#82
	db #2e,#84,#3a,#04,#01,#3a,#82,#3a
	db #82,#ff,#2e,#08,#02,#3a,#06,#01
	db #2e,#06,#02,#2e,#84,#3a,#04,#01
	db #3a,#84,#2e,#08,#02,#3a,#06,#01
	db #2e,#04,#02,#2e,#82,#2e,#84,#3a
	db #04,#01,#3a,#82,#3a,#82,#ff,#26
	db #08,#04,#26,#86,#2b,#84,#2b,#82
	db #2b,#84,#2b,#84,#2b,#84,#29,#88
	db #29,#86,#2b,#84,#2b,#82,#2e,#84
	db #30,#84,#24,#84,#ff,#26,#08,#04
	db #26,#86,#2b,#84,#2b,#82,#2b,#84
	db #2b,#84,#2b,#84,#29,#88,#29,#86
	db #2b,#84,#2b,#82,#2e,#84,#30,#84
	db #24,#84,#ff,#00,#40,#ff,#3e,#0e
	db #05,#3e,#96,#3e,#84,#3c,#82,#3a
	db #86,#3e,#86,#3a,#86,#37,#84,#ff
	db #3e,#0e,#05,#3e,#96,#3e,#84,#3c
	db #82,#3a,#86,#3e,#86,#41,#86,#43
	db #84,#ff,#45,#20,#09,#46,#8c,#45
	db #8c,#43,#88,#ff,#4a,#02,#b7,#03
	db #c5,#b7,#00,#4a,#02,#b7,#05,#43
	db #02,#b7,#00,#c6,#b7,#00,#43,#02
	db #b7,#03,#c6,#b7,#03,#43,#02,#b7
	db #05,#c6,#b7,#00,#c5,#b7,#00,#c6
	db #b7,#00,#c6,#b7,#03,#c3,#b7,#00
	db #c6,#b7,#03,#c6,#b7,#05,#c3,#b7
	db #03,#43,#02,#b7,#00,#bf,#b7,#00
	db #43,#02,#b7,#03,#c3,#b7,#00,#43
	db #02,#b7,#05,#46,#02,#b7,#00,#c5
	db #b7,#00,#46,#02,#b7,#03,#c1,#b7
	db #00,#46,#02,#b7,#05,#3e,#02,#b7
	db #00,#ff,#2b,#02,#00,#ab,#00,#ab
	db #00,#ba,#02,#2b,#02,#00,#ab,#00
	db #2b,#82,#2b,#82,#ba,#02,#2b,#02
	db #00,#ab,#00,#27,#82,#a7,#00,#a7
	db #00,#ba,#02,#27,#02,#00,#a7,#00
	db #29,#82,#29,#82,#ba,#02,#29,#02
	db #00,#a9,#00,#2b,#82,#ab,#00,#ab
	db #00,#ba,#02,#2b,#02,#00,#ab,#00
	db #2b,#82,#2b,#82,#ba,#02,#2b,#02
	db #00,#ab,#00,#27,#82,#a7,#00,#a7
	db #00,#ba,#02,#27,#02,#00,#a7,#00
	db #29,#82,#29,#82,#ba,#02,#29,#02
	db #00,#a9,#00,#ff,#2b,#02,#00,#ab
	db #00,#ab,#00,#ba,#02,#2b,#02,#00
	db #ab,#00,#2b,#82,#2b,#82,#ba,#02
	db #2b,#02,#00,#ab,#00,#27,#82,#a7
	db #00,#a7,#00,#ba,#02,#27,#02,#00
	db #a7,#00,#29,#82,#29,#82,#ba,#02
	db #29,#02,#00,#a9,#00,#2b,#82,#ab
	db #00,#ab,#00,#ba,#02,#2b,#02,#00
	db #ab,#00,#2b,#82,#2b,#82,#ba,#02
	db #2b,#02,#00,#ab,#00,#27,#82,#a7
	db #00,#a7,#00,#ba,#02,#27,#02,#00
	db #a7,#00,#a9,#00,#ba,#02,#29,#02
	db #00,#ba,#02,#29,#02,#00,#a9,#00
	db #ff,#2b,#02,#00,#ab,#00,#ab,#00
	db #ba,#02,#2b,#02,#00,#ab,#00,#2b
	db #82,#2b,#82,#ba,#02,#2b,#02,#00
	db #ab,#00,#27,#82,#a7,#00,#a7,#00
	db #ba,#02,#27,#02,#00,#a7,#00,#29
	db #82,#29,#82,#ba,#02,#29,#02,#00
	db #a9,#00,#2b,#82,#ab,#00,#ab,#00
	db #ba,#02,#2b,#02,#00,#ab,#00,#2b
	db #82,#2b,#82,#ba,#02,#2b,#02,#00
	db #ab,#00,#27,#82,#a7,#00,#a7,#00
	db #ba,#02,#27,#02,#00,#a7,#00,#a9
	db #00,#ba,#02,#29,#02,#00,#ba,#02
	db #29,#02,#00,#a9,#00,#ff,#fe,#40
	db #ff,#46,#06,#b1,#07,#c6,#b1,#07
	db #c5,#b1,#07,#46,#82,#43,#84,#43
	db #02,#b1,#06,#46,#83,#48,#83,#4a
	db #82,#46,#03,#b1,#05,#45,#83,#43
	db #82,#46,#06,#b1,#04,#c6,#b1,#04
	db #c5,#b1,#04,#46,#82,#43,#84,#43
	db #02,#b1,#03,#3f,#83,#43,#83,#46
	db #82,#45,#03,#b1,#02,#41,#03,#b1
	db #01,#3e,#82,#ff,#c6,#11,#3e,#02
	db #b1,#03,#c6,#b1,#03,#3e,#02,#b1
	db #05,#c6,#b1,#00,#c5,#b1,#00,#c6
	db #b1,#00,#c6,#b1,#03,#c3,#b1,#00
	db #c6,#b1,#03,#c6,#b1,#05,#c3,#b1
	db #03,#43,#02,#b1,#00,#c6,#b1,#00
	db #43,#02,#b1,#03,#c8,#b1,#00,#43
	db #02,#b1,#05,#4a,#02,#b1,#00,#c6
	db #b1,#00,#4a,#02,#b1,#03,#c5,#b1
	db #00,#4a,#02,#b1,#05,#43,#02,#b1
	db #00,#c6,#b1,#00,#43,#02,#b1,#03
	db #c6,#b1,#03,#43,#02,#b1,#05,#c6
	db #b1,#00,#c5,#b1,#00,#c6,#b1,#00
	db #c6,#b1,#03,#c3,#b1,#00,#c6,#b1
	db #03,#c6,#b1,#05,#c3,#b1,#03,#43
	db #02,#b1,#00,#bf,#b1,#00,#43,#02
	db #b1,#03,#c3,#b1,#00,#43,#02,#b1
	db #05,#46,#02,#b1,#00,#c5,#b1,#00
	db #46,#02,#b1,#03,#c1,#b1,#00,#46
	db #02,#b1,#05,#3e,#02,#b1,#00,#ff
	db #c6,#b1,#00,#43,#02,#b1,#03,#c6
	db #b1,#03,#43,#02,#b1,#05,#c6,#b1
	db #00,#c5,#b1,#00,#c6,#b1,#00,#c6
	db #b1,#03,#c3,#b1,#00,#c6,#b1,#03
	db #c6,#b1,#05,#c3,#b1,#03,#43,#02
	db #b1,#00,#c6,#b1,#00,#43,#02,#b1
	db #03,#c8,#b1,#00,#43,#02,#b1,#03
	db #4a,#02,#b1,#00,#c6,#b1,#00,#4a
	db #02,#b1,#03,#c5,#b1,#00,#4a,#02
	db #b1,#05,#43,#02,#b1,#00,#c6,#b1
	db #00,#43,#02,#b1,#03,#c6,#b1,#03
	db #43,#02,#b1,#05,#c6,#b1,#00,#c5
	db #b1,#00,#c6,#b1,#00,#c6,#b1,#03
	db #c3,#b1,#00,#c6,#b1,#03,#c6,#b1
	db #05,#c3,#b1,#03,#43,#02,#b1,#00
	db #bf,#b1,#00,#43,#02,#b1,#03,#be
	db #b1,#00,#43,#02,#b1,#05,#3c,#02
	db #b1,#00,#ba,#b1,#00,#3c,#02,#b1
	db #03,#b9,#b1,#00,#3c,#02,#b1,#05
	db #35,#02,#b1,#00,#ff,#3a,#02,#01
	db #39,#82,#37,#82,#b5,#01,#37,#82
	db #b7,#01,#39,#82,#3a,#82,#3c,#82
	db #3e,#83,#3a,#83,#35,#83,#35,#83
	db #3c,#82,#3a,#82,#3c,#82,#3a,#82
	db #39,#82,#ba,#01,#37,#83,#32,#82
	db #35,#82,#37,#82,#3a,#83,#39,#83
	db #37,#82,#39,#83,#35,#83,#39,#82
	db #ff,#4f,#02,#17,#cd,#07,#4f,#82
	db #cf,#07,#cd,#07,#cd,#07,#cf,#07
	db #cf,#07,#cd,#07,#cf,#07,#4f,#82
	db #52,#82,#4f,#82,#cd,#07,#4f,#83
	db #4d,#82,#d2,#07,#d2,#07,#4f,#82
	db #4d,#82,#4f,#82,#cf,#07,#cf,#07
	db #cd,#07,#cf,#07,#cf,#07,#d2,#07
	db #4f,#82,#4d,#82,#4f,#82,#52,#82
	db #4f,#82,#cf,#07,#cf,#07,#cd,#07
	db #d2,#07,#cf,#07,#cd,#07,#d2,#07
	db #cf,#07,#cd,#07,#d2,#07,#cf,#07
	db #cd,#07,#4f,#82,#52,#82,#ff,#4a
	db #10,#f5,#03,#46,#08,#f5,#05,#48
	db #88,#4a,#10,#f5,#03,#46,#08,#f5
	db #05,#48,#88,#ff,#1f,#10,#a0,#12
	db #1b,#08,#a0,#16,#1d,#08,#a0,#14
	db #1f,#10,#a0,#12,#1b,#08,#a0,#16
	db #1d,#08,#a0,#14,#ff,#1f,#10,#a0
	db #12,#1b,#08,#a0,#16,#1d,#08,#a0
	db #14,#1f,#10,#a0,#12,#1b,#08,#a0
	db #16,#1d,#08,#a0,#14,#ff,#4a,#10
	db #f5,#03,#46,#08,#f5,#05,#48,#88
	db #4a,#10,#f5,#03,#46,#08,#f5,#05
	db #48,#88,#ff,#4a,#10,#f5,#03,#46
	db #08,#f5,#05,#48,#88,#4a,#10,#f5
	db #03,#46,#08,#f5,#05,#48,#88,#ff
	db #4a,#10,#f5,#03,#46,#08,#f5,#05
	db #48,#88,#4a,#10,#f5,#03,#46,#08
	db #f5,#05,#c8,#f5,#05,#4d,#03,#f1
	db #04,#4d,#04,#01,#ff,#43,#06,#c1
	db #12,#c3,#c1,#12,#c5,#c1,#10,#c6
	db #c1,#0f,#c5,#c1,#10,#c3,#c1,#12
	db #41,#02,#c1,#14,#48,#03,#c1,#0d
	db #46,#02,#c1,#0f,#45,#02,#c1,#10
	db #46,#02,#c1,#0f,#c3,#c1,#12,#45
	db #02,#c1,#10,#c5,#c1,#10,#46,#02
	db #c1,#0f,#45,#02,#c1,#10,#41,#02
	db #c1,#14,#43,#06,#c1,#12,#c3,#c1
	db #12,#c5,#c1,#10,#c6,#c1,#0f,#c5
	db #c1,#10,#c3,#c1,#12,#c1,#c1,#14
	db #43,#02,#c1,#12,#48,#02,#c1,#0d
	db #46,#02,#c1,#0f,#c5,#c1,#10,#46
	db #02,#c1,#0f,#43,#02,#c1,#12,#45
	db #02,#c1,#10,#4a,#02,#c1,#0c,#fe
	db #01,#4a,#82,#48,#02,#c1,#0d,#ff
	db #43,#06,#c1,#12,#c3,#c1,#12,#c5
	db #c1,#10,#c6,#c1,#0f,#c5,#c1,#10
	db #c3,#c1,#12,#41,#02,#c1,#14,#48
	db #03,#c1,#0d,#46,#02,#c1,#0f,#45
	db #02,#c1,#10,#46,#02,#c1,#0f,#c3
	db #c1,#12,#45,#02,#c1,#10,#c5,#c1
	db #10,#46,#02,#c1,#0f,#45,#02,#c1
	db #10,#41,#02,#c1,#14,#43,#06,#c1
	db #12,#c3,#c1,#12,#c5,#c1,#10,#c6
	db #c1,#0f,#c5,#c1,#10,#c3,#c1,#12
	db #c1,#c1,#14,#43,#02,#c1,#12,#48
	db #02,#c1,#0d,#46,#02,#c1,#0f,#c5
	db #c1,#10,#46,#02,#c1,#0f,#43,#02
	db #c1,#12,#45,#02,#c1,#10,#4a,#02
	db #c1,#0c,#fe,#01,#41,#02,#c1,#05
	db #43,#02,#c1,#09,#ff,#cf,#11,#cd
	db #b1,#00,#ca,#b1,#00,#cf,#b1,#03
	db #cf,#b1,#00,#ca,#b1,#03,#cd,#b1
	db #00,#cf,#b1,#00,#ca,#b1,#05,#ca
	db #b1,#00,#4d,#82,#cf,#b1,#00,#4d
	db #02,#b1,#03,#cf,#b1,#03,#cf,#b1
	db #00,#cd,#b1,#00,#ca,#b1,#00,#d2
	db #b1,#00,#cd,#b1,#03,#ca,#b1,#03
	db #cf,#b1,#00,#cd,#b1,#05,#ca,#b1
	db #05,#51,#03,#b1,#00,#52,#82,#d1
	db #b1,#00,#d2,#b1,#03,#cf,#b1,#00
	db #cd,#b1,#00,#ca,#b1,#00,#cf,#b1
	db #03,#cf,#b1,#00,#ca,#b1,#03,#cf
	db #b1,#00,#d1,#b1,#00,#ca,#b1,#05
	db #d2,#b1,#00,#51,#02,#b1,#03,#d4
	db #b1,#00,#d1,#b1,#05,#d6,#b1,#00
	db #54,#02,#b1,#03,#d6,#b1,#03,#56
	db #02,#b1,#00,#d2,#b1,#00,#d6,#b1
	db #03,#cf,#b1,#00,#d1,#b1,#00,#d6
	db #b1,#05,#d1,#b1,#00,#52,#82,#d1
	db #b1,#00,#d2,#b1,#03,#cd,#b1,#00
	db #d1,#b1,#00,#ff,#00,#a3,#00,#ff
	db #4c,#18,#f2,#01,#4a,#08,#f2,#05
	db #4c,#18,#f2,#01,#48,#04,#f2,#04
	db #47,#04,#f2,#05,#ff,#4c,#18,#f2
	db #01,#4a,#08,#f2,#05,#4c,#18,#f2
	db #01,#48,#04,#f2,#04,#47,#04,#f2
	db #05,#ff
;
.music_info
	db "X-treme Issue 1 - Music 31 (1993)(Symbiosis)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
