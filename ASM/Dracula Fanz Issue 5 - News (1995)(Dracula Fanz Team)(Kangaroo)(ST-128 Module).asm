; Music of Dracula Fanz Issue 5 - News (1995)(Dracula Fanz Team)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 28/05/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DRFI5NEW.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2022
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
	ld a,#01
	or a
	jr nz,l40bf
.l40bb equ $ + 1
	ld a,#06
	ld (l40b6),a
.l40c0 equ $ + 1
.l40bf
	ld a,#38
	ld hl,l4303
	cp (hl)
	jr z,l40ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l42e4
.l40cf equ $ + 1
.l40ce
	ld a,#01
	ld hl,l4302
	cp (hl)
	jr z,l40dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l42e4
.l40de equ $ + 1
.l40dd
	ld a,#5a
	ld hl,l4304
	cp (hl)
	jr z,l40ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l42e4
.l40ed equ $ + 1
.l40ec
	ld a,#88
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
	set 5,a
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
	db #01,#38,#5a,#88
.l4306
	dw l4782,l47a9,l47d0
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
	db #00,#00,#00,#00,#48,#48,#00,#01
	db #08,#08,#01,#64,#00,#10,#00,#df
.l43e8 equ $ + 2
	db #85,#47,#e2,#45,#82,#46,#42,#46
	db #00,#00,#06,#1a,#00,#00,#00,#00
.l43f6
	db #7d,#4b,#02,#03,#09,#09,#02,#45
.l4404 equ $ + 6
	db #00,#00,#00,#e7,#ac,#47,#a2,#46
	db #e2,#46,#42,#46,#08,#18,#06,#1a
.l4412 equ $ + 4
	db #47,#00,#00,#00,#72,#4c,#04,#05
	db #0a,#06,#01,#41,#00,#00,#00,#ef
.l4420 equ $ + 2
	db #d3,#47,#e2,#45,#22,#46,#42,#46
	db #00,#00,#06,#1a,#3c,#00,#42,#47
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4442 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#44,#22,#45
	db #42,#45,#00,#00,#62,#45,#a2,#45
	db #c2,#45,#00,#00,#25,#76,#21,#d7
	db #fc,#40,#00,#ff,#db,#22,#fd,#b4
	db #4c,#81,#23,#56,#ff,#23,#ec,#22
	db #e5,#a0,#23,#4e,#da,#22,#a6,#23
	db #74,#21,#50,#30,#e2,#45,#22,#46
	db #42,#46,#00,#00,#e2,#45,#62,#46
	db #42,#46,#00,#00,#e2,#45,#82,#46
	db #42,#46,#00,#00,#a2,#46,#e2,#46
	db #42,#46,#08,#18,#02,#47,#e2,#46
	db #42,#46,#10,#10,#dc,#22,#dc,#22
	db #dc,#22,#00,#00,#dc,#22,#dc,#22
	db #dc,#22,#00,#00,#dc,#22,#dc,#22
	db #dc,#22,#00,#00,#dc,#22,#dc,#22
	db #dc,#22,#00,#00,#dc,#22,#dc,#22
.l44c2 equ $ + 4
	db #dc,#22,#00,#00,#dc,#22,#42,#47
	db #62,#47,#dc,#22,#dc,#22,#dc,#22
	db #dc,#22,#dc,#22,#dc,#22,#dc,#22
	db #dc,#22,#dc,#22,#dc,#22,#dc,#22
	db #dc,#22,#dc,#22,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0b,#0b,#0a,#0a
	db #09,#06,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0c,#0b,#0b
	db #0a,#09,#08,#07,#07,#06,#06,#05
	db #04,#03,#03,#03,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#07,#09,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#01,#01,#01,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0c,#0b,#0a
	db #09,#09,#08,#08,#07,#07,#07,#06
	db #06,#06,#05,#05,#05,#04,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0b,#0b,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#0b,#0a,#09,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#07,#00,#07,#00
	db #06,#00,#06,#00,#05,#00,#05,#00
	db #04,#00,#04,#00,#03,#00,#03,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
.l4782 equ $ + 4
	db #03,#07,#00,#03,#00,#f7,#47,#00
	db #4c,#48,#00,#a1,#48,#00,#f6,#48
	db #00,#f7,#47,#00,#4b,#49,#00,#a0
	db #49,#00,#f5,#49,#00,#4a,#4a,#00
	db #1e,#4b,#00,#48,#4b,#00,#a0,#4a
.l47a9 equ $ + 3
	db #80,#82,#47,#00,#72,#4b,#00,#7e
	db #4b,#00,#8e,#4b,#00,#9a,#4b,#00
	db #a0,#4b,#00,#ab,#4b,#00,#bb,#4b
	db #00,#c5,#4b,#00,#fd,#4b,#00,#0f
	db #4c,#00,#1d,#4c,#00,#31,#4c,#80
.l47d0 equ $ + 2
	db #a9,#47,#00,#41,#4c,#00,#75,#4c
	db #00,#a9,#4c,#00,#dd,#4c,#00,#41
	db #4c,#00,#75,#4c,#00,#a9,#4c,#00
	db #dd,#4c,#00,#20,#4d,#00,#54,#4d
	db #00,#20,#4d,#00,#54,#4d,#80,#d0
	db #47,#ee,#88,#5a,#fe,#01,#ee,#88
	db #2d,#fe,#01,#ee,#88,#5a,#ee,#88
	db #2d,#fe,#01,#ee,#88,#5a,#fe,#01
	db #ee,#88,#2d,#fe,#01,#ee,#88,#5a
	db #ee,#88,#2d,#fe,#01,#ee,#88,#5a
	db #ee,#88,#2d,#ee,#88,#5a,#fe,#01
	db #ee,#88,#2d,#fe,#01,#ee,#88,#5a
	db #ee,#88,#2d,#fe,#01,#ee,#88,#5a
	db #fe,#01,#ee,#88,#2d,#fe,#01,#ee
	db #88,#5a,#ee,#88,#2d,#fe,#01,#ee
	db #88,#5a,#ee,#88,#2d,#ff,#ee,#88
	db #3c,#fe,#01,#ee,#88,#1e,#fe,#01
	db #ee,#88,#3c,#ee,#88,#1e,#fe,#01
	db #ee,#88,#3c,#fe,#01,#ee,#88,#1e
	db #fe,#01,#ee,#88,#3c,#ee,#88,#1e
	db #fe,#01,#ee,#88,#3c,#ee,#88,#1e
	db #ee,#88,#3c,#fe,#01,#ee,#88,#1e
	db #fe,#01,#ee,#88,#3c,#ee,#88,#1e
	db #fe,#01,#ee,#88,#3c,#fe,#01,#ee
	db #88,#1e,#fe,#01,#ee,#88,#3c,#ee
	db #88,#1e,#fe,#01,#ee,#88,#3c,#ee
	db #88,#1e,#ff,#ee,#88,#36,#fe,#01
	db #ee,#88,#1b,#fe,#01,#ee,#88,#36
	db #ee,#88,#1b,#fe,#01,#ee,#88,#36
	db #fe,#01,#ee,#88,#1b,#fe,#01,#ee
	db #88,#36,#ee,#88,#1b,#fe,#01,#ee
	db #88,#36,#ee,#88,#1b,#ee,#88,#36
	db #fe,#01,#ee,#88,#1b,#fe,#01,#ee
	db #88,#36,#ee,#88,#1b,#fe,#01,#ee
	db #88,#36,#fe,#01,#ee,#88,#1b,#fe
	db #01,#ee,#88,#36,#ee,#88,#1b,#fe
	db #01,#ee,#88,#36,#ee,#88,#1b,#ff
	db #ee,#88,#44,#fe,#01,#ee,#88,#22
	db #fe,#01,#ee,#88,#44,#ee,#88,#22
	db #fe,#01,#ee,#88,#44,#fe,#01,#ee
	db #88,#22,#fe,#01,#ee,#88,#44,#ee
	db #88,#22,#fe,#01,#ee,#88,#44,#ee
	db #88,#22,#ee,#88,#44,#fe,#01,#ee
	db #88,#22,#fe,#01,#ee,#88,#44,#ee
	db #88,#22,#fe,#01,#ee,#88,#44,#fe
	db #01,#ee,#88,#22,#fe,#01,#ee,#88
	db #44,#ee,#88,#22,#fe,#01,#ee,#88
	db #44,#ee,#88,#22,#ff,#ee,#88,#3c
	db #fe,#01,#ee,#88,#1e,#fe,#01,#ee
	db #88,#3c,#ee,#88,#1e,#fe,#01,#ee
	db #88,#3c,#fe,#01,#ee,#88,#1e,#fe
	db #01,#ee,#88,#3c,#ee,#88,#1e,#fe
	db #01,#ee,#88,#3c,#ee,#88,#1e,#ee
	db #88,#3c,#fe,#01,#ee,#88,#1e,#fe
	db #01,#ee,#88,#3c,#ee,#88,#1e,#fe
	db #01,#ee,#88,#3c,#fe,#01,#ee,#88
	db #1e,#fe,#01,#ee,#88,#3c,#ee,#88
	db #1e,#fe,#01,#ee,#88,#3c,#ee,#88
	db #1e,#ff,#ee,#88,#36,#fe,#01,#ee
	db #88,#1b,#fe,#01,#ee,#88,#36,#ee
	db #88,#1b,#fe,#01,#ee,#88,#36,#fe
	db #01,#ee,#88,#1b,#fe,#01,#ee,#88
	db #36,#ee,#88,#1b,#fe,#01,#ee,#88
	db #36,#ee,#88,#1b,#ee,#88,#36,#fe
	db #01,#ee,#88,#1b,#fe,#01,#ee,#88
	db #36,#ee,#88,#1b,#fe,#01,#ee,#88
	db #36,#fe,#01,#ee,#88,#1b,#fe,#01
	db #ee,#88,#36,#ee,#88,#1b,#fe,#01
	db #ee,#88,#36,#ee,#88,#1b,#ff,#ee
	db #88,#44,#fe,#01,#ee,#88,#22,#fe
	db #01,#ee,#88,#44,#ee,#88,#22,#fe
	db #01,#ee,#88,#44,#fe,#01,#ee,#88
	db #22,#fe,#01,#ee,#88,#44,#ee,#88
	db #22,#fe,#01,#ee,#88,#44,#ee,#88
	db #22,#ee,#88,#44,#fe,#01,#ee,#88
	db #22,#fe,#01,#ee,#88,#44,#ee,#88
	db #22,#fe,#01,#ee,#88,#44,#fe,#01
	db #ee,#88,#22,#fe,#01,#ee,#88,#44
	db #ee,#88,#22,#fe,#01,#ee,#88,#44
	db #ee,#88,#22,#ff,#27,#02,#17,#33
	db #02,#07,#a7,#07,#33,#82,#27,#82
	db #33,#82,#a7,#07,#33,#82,#a7,#07
	db #b3,#07,#2c,#82,#38,#82,#ac,#07
	db #38,#82,#2c,#82,#38,#82,#ac,#07
	db #38,#82,#ac,#07,#b8,#07,#ff,#22
	db #02,#17,#2e,#02,#07,#a2,#07,#2e
	db #82,#22,#82,#2e,#82,#a2,#07,#2e
	db #82,#a2,#07,#ae,#07,#27,#82,#33
	db #82,#a7,#07,#33,#82,#27,#82,#33
	db #82,#a7,#07,#33,#82,#a7,#07,#b3
	db #07,#ff,#27,#02,#07,#33,#82,#a7
	db #07,#33,#82,#27,#82,#33,#82,#a7
	db #07,#33,#82,#a7,#07,#b3,#07,#22
	db #82,#2e,#82,#a2,#07,#2e,#82,#22
	db #82,#2e,#82,#a2,#07,#2e,#82,#a2
	db #07,#ae,#07,#ff,#24,#02,#07,#30
	db #82,#a4,#07,#30,#82,#24,#82,#30
	db #82,#a4,#07,#30,#82,#a4,#07,#b0
	db #07,#22,#82,#2e,#82,#a2,#07,#2e
	db #82,#22,#82,#2e,#82,#a2,#07,#2e
	db #82,#a2,#07,#ae,#07,#ff,#22,#02
	db #07,#2e,#82,#a2,#07,#2e,#82,#22
	db #82,#2e,#82,#a2,#07,#2e,#82,#a2
	db #07,#ae,#07,#29,#82,#35,#82,#a9
	db #07,#35,#82,#29,#82,#35,#82,#a9
	db #07,#35,#82,#a9,#07,#b5,#07,#ff
	db #22,#02,#07,#2e,#82,#a2,#07,#2e
	db #82,#22,#82,#2e,#82,#a2,#07,#2e
	db #82,#a2,#07,#ae,#07,#27,#82,#33
	db #82,#a7,#07,#33,#82,#27,#82,#33
	db #82,#a7,#07,#33,#82,#a7,#07,#b3
	db #07,#ff,#27,#02,#07,#33,#82,#a7
	db #07,#33,#82,#27,#82,#33,#82,#a7
	db #07,#33,#82,#a7,#07,#b3,#07,#2c
	db #82,#38,#82,#ac,#07,#38,#82,#2c
	db #82,#38,#82,#ac,#07,#38,#82,#ac
	db #07,#b8,#07,#ff,#52,#18,#1a,#52
	db #03,#0a,#50,#03,#09,#4f,#82,#ff
	db #4f,#06,#09,#4d,#82,#4d,#90,#50
	db #03,#0a,#4f,#03,#09,#4d,#82,#ff
	db #4d,#06,#09,#4b,#82,#4b,#90,#4b
	db #84,#4a,#84,#ff,#48,#1c,#09,#46
	db #84,#ff,#52,#18,#1a,#46,#03,#09
	db #4b,#83,#4f,#82,#ff,#50,#04,#09
	db #4f,#82,#4d,#92,#46,#03,#0a,#4a
	db #03,#09,#4d,#82,#ff,#50,#04,#09
	db #4f,#82,#4f,#96,#4d,#84,#ff,#50
	db #20,#09,#ff,#48,#04,#09,#46,#84
	db #44,#82,#46,#84,#44,#86,#43,#82
	db #43,#8a,#ff,#48,#04,#09,#46,#84
	db #4a,#82,#4b,#84,#4d,#92,#ff,#50
	db #04,#09,#4f,#84,#4d,#84,#4b,#82
	db #4d,#92,#ff,#48,#04,#09,#46,#84
	db #4a,#82,#4b,#86,#4d,#90,#ff,#46
	db #08,#09,#50,#04,#0a,#4f,#02,#09
	db #4d,#82,#4b,#88,#4a,#84,#4b,#84
	db #ff,#4d,#08,#09,#52,#04,#0a,#50
	db #02,#09,#4f,#82,#4b,#90,#ff,#46
	db #08,#09,#50,#04,#0a,#46,#02,#09
	db #50,#82,#54,#88,#5c,#04,#0a,#5b
	db #04,#09,#ff,#59,#08,#09,#56,#04
	db #0a,#54,#02,#09,#52,#82,#4f,#8c
	db #46,#84,#ff,#3a,#02,#00,#4b,#02
	db #f6,#01,#b5,#01,#4b,#03,#06,#ba
	db #00,#4b,#02,#06,#cb,#06,#35,#02
	db #01,#cb,#06,#cb,#06,#3a,#02,#00
	db #4b,#02,#06,#b5,#01,#4b,#03,#06
	db #ba,#00,#4b,#02,#06,#cb,#06,#35
	db #02,#01,#cb,#06,#cb,#06,#ff,#3a
	db #02,#00,#46,#02,#f6,#01,#b5,#01
	db #46,#03,#06,#ba,#00,#46,#02,#06
	db #c6,#06,#35,#02,#01,#c6,#06,#c6
	db #06,#3a,#02,#00,#46,#02,#06,#b5
	db #01,#46,#03,#06,#ba,#00,#46,#02
	db #06,#c6,#06,#35,#02,#01,#c6,#06
	db #c6,#06,#ff,#3a,#02,#00,#48,#02
	db #f6,#02,#b5,#01,#48,#03,#06,#ba
	db #00,#48,#02,#06,#c8,#06,#35,#02
	db #01,#c8,#06,#c8,#06,#3a,#02,#00
	db #48,#02,#06,#b5,#01,#48,#03,#06
	db #ba,#00,#48,#02,#06,#c8,#06,#35
	db #02,#01,#c8,#06,#c8,#06,#ff,#3a
	db #02,#00,#44,#02,#f6,#01,#b5,#01
	db #44,#03,#06,#ba,#00,#44,#02,#06
	db #c4,#06,#35,#02,#01,#c4,#06,#c4
	db #06,#3a,#02,#00,#44,#02,#06,#b5
	db #01,#44,#03,#06,#ba,#00,#44,#02
	db #06,#c4,#06,#35,#02,#01,#c4,#06
	db #c4,#06,#ff,#00,#20,#ff,#00,#20
	db #ff,#00,#20,#ff,#00,#20,#ff,#00
	db #20,#ff,#3a,#02,#00,#4b,#02,#f6
	db #01,#b5,#01,#4b,#03,#06,#ba,#00
	db #4b,#02,#06,#cb,#06,#35,#02,#01
	db #cb,#06,#cb,#06,#3a,#02,#00,#44
	db #02,#06,#b5,#01,#44,#03,#06,#ba
	db #00,#44,#02,#06,#c4,#06,#35,#02
	db #01,#c4,#06,#c4,#06,#ff,#3a,#02
	db #00,#46,#02,#f6,#01,#b5,#01,#46
	db #03,#06,#ba,#00,#46,#02,#06,#c6
	db #06,#35,#02,#01,#c6,#06,#c6,#06
	db #3a,#02,#00,#4b,#02,#06,#b5,#01
	db #4b,#03,#06,#ba,#00,#4b,#02,#06
	db #cb,#06,#35,#02,#01,#cb,#06,#cb
	db #06,#ff

;
.music_info
	db "Dracula Fanz Issue 5 - News (1995)(Dracula Fanz Team)(Kangaroo)",0
	db "ST-128 Module",0

	read "music_end.asm"
