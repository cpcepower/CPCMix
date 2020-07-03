; Music of Cracktro - LCR (1990)(Public Domain)()(ST-Module)
; Ripped by Megachur the 02/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CRACKTRL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

	jp l400b
	jp l4093
	jp l4077
	db #66,#04
;
.init_music
.l400b
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
	ld a,#06
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
.l4077
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
.l4093
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
	dw l46e2,l46fa,l4712
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
	db #75,#6c,#65,#2e,#e2,#44,#22,#45
	db #42,#45,#00,#00,#e2,#44,#62,#45
	db #42,#45,#00,#00,#82,#45,#c2,#45
	db #e2,#45,#00,#00,#02,#46,#42,#46
	db #42,#45,#18,#07,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#62,#46,#a2,#46
	db #c2,#46,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
.l44c2 equ $ + 4
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0b,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#09,#07
	db #05,#03,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#08,#07,#07,#07,#07,#07,#06
	db #05,#03,#02,#01,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#01,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#fd,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0c,#0b,#0a,#08,#07,#07,#08,#08
	db #09,#09,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #03,#02,#02,#02,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46e2 equ $ + 4
	db #00,#00,#00,#00,#00,#2a,#47,#00
	db #2d,#47,#00,#8e,#47,#00,#2d,#47
	db #00,#ef,#47,#00,#4c,#48,#00,#4c
.l46fa equ $ + 4
	db #48,#80,#e5,#46,#00,#a9,#48,#00
	db #38,#49,#00,#a9,#48,#00,#c7,#49
	db #00,#56,#4a,#00,#59,#4a,#00,#59
.l4712 equ $ + 4
	db #4a,#80,#fd,#46,#00,#ef,#4a,#00
	db #f2,#4a,#00,#f5,#4a,#00,#2d,#4b
	db #00,#43,#4b,#00,#7a,#4b,#00,#7a
	db #4b,#80,#15,#47,#00,#40,#ff,#a4
	db #00,#24,#82,#a4,#00,#3a,#02,#02
	db #24,#02,#00,#a7,#00,#27,#82,#a7
	db #00,#3a,#02,#02,#27,#02,#00,#a2
	db #00,#22,#82,#a2,#00,#3a,#02,#02
	db #22,#02,#00,#a6,#00,#26,#82,#a6
	db #00,#3a,#02,#02,#27,#02,#00,#a4
	db #00,#24,#82,#a4,#00,#3a,#02,#02
	db #24,#02,#00,#a7,#00,#27,#82,#a7
	db #00,#3a,#02,#02,#27,#02,#00,#a2
	db #00,#22,#82,#a2,#00,#3a,#02,#02
	db #22,#02,#00,#a6,#00,#26,#82,#a6
	db #00,#3a,#02,#02,#27,#02,#00,#ff
	db #a4,#00,#24,#82,#a4,#00,#3a,#02
	db #02,#24,#02,#00,#a7,#00,#27,#82
	db #a7,#00,#3a,#02,#02,#27,#02,#00
	db #a2,#00,#22,#82,#a2,#00,#3a,#02
	db #02,#22,#02,#00,#a6,#00,#26,#82
	db #a6,#00,#3a,#02,#02,#27,#02,#00
	db #a4,#00,#24,#82,#a4,#00,#3a,#02
	db #02,#24,#02,#00,#a7,#00,#27,#82
	db #a7,#00,#3a,#02,#02,#27,#02,#00
	db #a2,#00,#22,#82,#a2,#00,#3a,#02
	db #02,#22,#02,#00,#a6,#00,#26,#82
	db #a6,#00,#3a,#02,#02,#27,#02,#00
	db #ff,#a4,#00,#24,#82,#a4,#00,#ba
	db #02,#24,#02,#00,#a4,#00,#24,#82
	db #22,#82,#3a,#02,#02,#27,#02,#00
	db #a9,#00,#29,#82,#a9,#00,#ba,#02
	db #29,#02,#00,#a9,#00,#29,#82,#22
	db #82,#3a,#02,#02,#27,#02,#00,#a9
	db #00,#29,#82,#a9,#00,#ba,#02,#29
	db #02,#00,#a9,#00,#29,#82,#27,#82
	db #3a,#02,#02,#2b,#02,#00,#ac,#00
	db #2c,#82,#ac,#00,#ba,#02,#2c,#02
	db #00,#ac,#00,#2b,#82,#27,#82,#3a
	db #02,#02,#22,#02,#00,#ff,#a4,#00
	db #24,#82,#a4,#00,#ba,#02,#24,#02
	db #00,#a4,#00,#24,#82,#22,#82,#3a
	db #02,#02,#27,#02,#00,#a9,#00,#29
	db #82,#a9,#00,#ba,#02,#29,#02,#00
	db #a9,#00,#29,#82,#22,#82,#3a,#02
	db #02,#27,#02,#00,#a9,#00,#29,#82
	db #a9,#00,#ba,#02,#29,#02,#00,#a9
	db #00,#29,#82,#27,#82,#3a,#02,#02
	db #2b,#02,#00,#ac,#00,#2c,#82,#ac
	db #00,#ba,#02,#2c,#02,#00,#ac,#00
	db #2b,#82,#27,#82,#3a,#02,#02,#22
	db #02,#00,#ff,#43,#03,#b1,#00,#43
	db #03,#b1,#03,#43,#02,#b1,#05,#c3
	db #b1,#00,#c1,#b1,#00,#bf,#b1,#00
	db #c3,#b1,#03,#c1,#b1,#03,#bf,#b1
	db #03,#c3,#b1,#05,#c1,#b1,#05,#3f
	db #82,#41,#02,#b1,#00,#c1,#b1,#00
	db #c1,#b1,#03,#c3,#b1,#00,#c1,#b1
	db #00,#c1,#b1,#05,#c3,#b1,#03,#bf
	db #b1,#00,#c1,#b1,#03,#be,#b1,#00
	db #bf,#b1,#03,#bf,#b1,#00,#be,#b1
	db #03,#bc,#b1,#00,#bf,#b1,#03,#be
	db #b1,#05,#bc,#b1,#03,#43,#02,#b1
	db #00,#bc,#b1,#05,#c3,#b1,#03,#c3
	db #b1,#00,#c1,#b1,#00,#bf,#b1,#00
	db #c3,#b1,#03,#c1,#b1,#03,#bf,#b1
	db #03,#c3,#b1,#00,#c1,#b1,#05,#46
	db #03,#b1,#00,#46,#83,#44,#83,#43
	db #83,#41,#82,#c4,#b1,#00,#c1,#b1
	db #03,#ff,#43,#03,#b7,#00,#43,#03
	db #b7,#03,#43,#02,#b7,#05,#c3,#b7
	db #00,#c1,#b7,#00,#bf,#b7,#00,#c3
	db #b7,#03,#c1,#b7,#03,#bf,#b7,#03
	db #c3,#b7,#05,#c1,#b7,#05,#3f,#82
	db #41,#02,#b7,#00,#c1,#b7,#00,#c1
	db #b7,#03,#c3,#b7,#00,#c1,#b7,#00
	db #c1,#b7,#05,#c3,#b7,#03,#bf,#b7
	db #00,#c1,#b7,#03,#be,#b7,#00,#bf
	db #b7,#03,#bf,#b7,#00,#be,#b7,#03
	db #bc,#b7,#00,#bf,#b7,#03,#be,#b7
	db #05,#bc,#b7,#03,#43,#02,#b7,#00
	db #bc,#b7,#05,#c3,#b7,#03,#c3,#b7
	db #00,#c1,#b7,#00,#bf,#b7,#00,#c3
	db #b7,#03,#c1,#b7,#03,#bf,#b7,#03
	db #c3,#b7,#00,#c1,#b7,#05,#46,#03
	db #b7,#00,#46,#83,#44,#83,#43,#83
	db #41,#82,#c4,#b7,#00,#c1,#b7,#03
	db #ff,#43,#03,#b7,#00,#43,#03,#b7
	db #03,#43,#02,#b7,#05,#c3,#b7,#00
	db #c1,#b7,#00,#bf,#b7,#00,#c3,#b7
	db #03,#c1,#b7,#03,#bf,#b7,#03,#c3
	db #b7,#05,#c1,#b7,#05,#3f,#82,#41
	db #02,#b7,#00,#c1,#b7,#00,#c1,#b7
	db #03,#c3,#b7,#00,#c1,#b7,#00,#c1
	db #b7,#05,#c3,#b7,#03,#bf,#b7,#00
	db #c1,#b7,#03,#be,#b7,#00,#bf,#b7
	db #03,#bf,#b7,#00,#be,#b7,#03,#bc
	db #b7,#00,#bf,#b7,#03,#be,#b7,#05
	db #bc,#b7,#03,#43,#02,#b7,#00,#bc
	db #b7,#05,#c3,#b7,#03,#c3,#b7,#00
	db #c1,#b7,#00,#bf,#b7,#00,#c3,#b7
	db #03,#c1,#b7,#03,#bf,#b7,#03,#c3
	db #b7,#00,#c1,#b7,#05,#46,#03,#b7
	db #00,#46,#83,#44,#83,#43,#83,#41
	db #82,#c4,#b7,#00,#c1,#b7,#03,#ff
	db #00,#40,#ff,#3c,#02,#b1,#00,#c6
	db #b1,#05,#3c,#03,#b1,#03,#bc,#b1
	db #00,#be,#b1,#00,#bf,#b1,#00,#bc
	db #b1,#03,#be,#b1,#03,#bf,#b1,#03
	db #c3,#b1,#00,#be,#b1,#05,#bf,#b1
	db #03,#c3,#b1,#03,#41,#02,#b1,#00
	db #c3,#b1,#05,#41,#03,#b1,#03,#c1
	db #b1,#00,#c3,#b1,#00,#c4,#b1,#00
	db #c1,#b1,#03,#c3,#b1,#03,#c4,#b1
	db #03,#c6,#b1,#00,#c3,#b1,#05,#44
	db #82,#48,#03,#b1,#00,#48,#03,#b1
	db #03,#c8,#b1,#00,#c6,#b1,#00,#c8
	db #b1,#00,#c8,#b1,#03,#c6,#b1,#03
	db #c8,#b1,#03,#ca,#b1,#00,#c6,#b1
	db #05,#c8,#b1,#05,#ca,#b1,#03,#4b
	db #02,#b1,#00,#ca,#b1,#05,#4a,#03
	db #b1,#00,#48,#82,#ca,#b1,#00,#48
	db #02,#b1,#03,#ca,#b1,#03,#46,#02
	db #b1,#00,#ca,#b1,#05,#c6,#b1,#03
	db #ff,#00,#40,#ff,#00,#40,#ff,#3c
	db #06,#07,#bc,#07,#be,#07,#bf,#07
	db #be,#07,#3c,#82,#bc,#07,#3e,#83
	db #3a,#83,#3a,#83,#3a,#82,#3f,#83
	db #3e,#83,#3f,#82,#3c,#84,#3c,#83
	db #43,#82,#43,#82,#c3,#07,#41,#82
	db #43,#82,#41,#83,#41,#83,#3e,#84
	db #3f,#82,#3e,#82,#3a,#82,#ff,#43
	db #04,#03,#43,#84,#46,#86,#43,#82
	db #46,#82,#48,#84,#4b,#84,#4a,#82
	db #46,#82,#48,#a2,#ff,#b7,#07,#35
	db #82,#37,#85,#3a,#82,#b7,#07,#35
	db #82,#33,#83,#35,#87,#b5,#07,#ba
	db #07,#37,#82,#35,#82,#33,#83,#35
	db #82,#ba,#07,#37,#82,#ba,#07,#35
	db #82,#3c,#83,#3c,#83,#3a,#82,#3e
	db #83,#3f,#83,#41,#82,#3e,#84,#3a
	db #82,#35,#82,#ff,#b7,#07,#35,#82
	db #37,#85,#3a,#82,#b7,#07,#35,#82
	db #33,#83,#35,#87,#b5,#07,#ba,#07
	db #37,#82,#35,#82,#33,#83,#35,#82
	db #ba,#07,#37,#82,#ba,#07,#35,#82
	db #3c,#83,#3c,#83,#3a,#82,#3e,#83
	db #3f,#83,#41,#82,#3e,#84,#3a,#82
	db #35,#82,#ff

; org #109b
; ld bc,#7fc4
; out (c),c
; call #4000
;
.music_info
	db "Cracktro - LCR (1990)(Public Domain)()",0
	db "ST-Module",0

	read "music_end.asm"
