; Music of CPC-Fastloader Issue 7 - Music 16 (1993)(Beng!)()(ST-Module)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPFI7M16.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
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
.l4302
	rst #38
.l4303
	rst #38
.l4304
	rst #38
.l4305
	rst #38
.l4306
	dw l4722,l4734,l4746
.l430c
	xor #0e
	jr l431e
	ld c,l
	dec c
	adc (hl)
	inc c
	jp c,#2f0b
	dec bc
	adc a
	ld a,(bc)
	rst #30
	add hl,bc
	ld l,b
	add hl,bc
.l431e
	pop hl
	ex af,af'
	ld h,c
	ex af,af'
	jp (hl)
	rlca
	ld (hl),a
	rlca
	inc c
	rlca
	and a
	ld b,#47
	ld b,#ed
	dec b
	sbc b
	dec b
	ld b,a
	dec b
	call m,#b404
	inc b
	ld (hl),b
	inc b
	ld sp,#f404
	inc bc
	cp h
	inc bc
	add (hl)
	inc bc
	ld d,e
	inc bc
	inc h
	inc bc
	or #02
	call z,#a402
	ld (bc),a
	ld a,(hl)
	ld (bc),a
	ld e,d
	ld (bc),a
	jr c,l4352
	jr l4354
.l4354 equ $ + 2
.l4352
	jp m,#de01
	ld bc,#01c3
	xor d
	ld bc,#0192
	ld a,e
	ld bc,#0166
	ld d,d
	ld bc,#013f
	dec l
	ld bc,#011c
	inc c
	ld bc,#00fd
	rst #28
	nop
	pop hl
	nop
	push de
	nop
	ret
	nop
	cp (hl)
	nop
	or e
	nop
	xor c
	nop
	sbc a
	nop
	sub (hl)
	nop
	adc (hl)
	nop
	add (hl)
	nop
	ld a,a
	nop
	ld (hl),a
	nop
	ld (hl),c
	nop
	ld l,d
	nop
	ld h,h
	nop
	ld e,a
	nop
	ld e,c
	nop
	ld d,h
	nop
	ld d,b
	nop
	ld c,e
	nop
	ld b,a
	nop
	ld b,e
	nop
	ccf
	nop
	inc a
	nop
	jr c,l43a0
.l43a0
	dec (hl)
	nop
	ld (#2f00),a
	nop
	dec l
	nop
	ld hl,(#2800)
	nop
	ld h,#00
	inc h
	nop
	ld (#2000),hl
	nop
	ld e,#00
	inc e
	nop
	dec de
	nop
	add hl,de
	nop
	jr l43be
.l43be
	ld d,#00
	dec d
	nop
	inc d
	nop
	inc de
	nop
	ld (de),a
	nop
	ld de,#1000
	nop
	rrca
	nop
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
	db #42,#45,#00,#00,#25,#92,#21,#f3
	db #fc,#40,#00,#ff,#db,#3e,#fd,#d0
	db #4c,#9d,#23,#56,#ff,#3f,#ec,#3e
	db #e5,#bc,#23,#4e,#da,#3e,#a6,#3f
	db #74,#3d,#50,#30,#62,#45,#a2,#45
	db #c2,#45,#0b,#15,#62,#45,#e2,#45
	db #c2,#45,#00,#00,#62,#45,#02,#46
	db #c2,#45,#00,#00,#22,#46,#62,#46
	db #c2,#45,#08,#18,#62,#45,#82,#46
	db #c2,#45,#00,#00,#b8,#7d,#dc,#3e
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #de,#85,#dc,#3e,#fe,#85,#1e,#86
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
.l44c2 equ $ + 4
	db #dc,#3e,#30,#00,#3c,#3f,#a2,#46
	db #c2,#46,#cc,#3f,#e2,#46,#02,#47
	db #5c,#40,#8c,#40,#bc,#40,#ec,#40
	db #1c,#41,#4c,#41,#7c,#41,#ac,#41
	db #dc,#41,#fc,#41,#00,#00,#30,#00
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
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#07
	db #07,#07,#08,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#03
	db #03,#03,#03,#03,#09,#0b,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
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
	db #80,#80,#80,#80,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#0a,#09
	db #09,#08,#08,#07,#06,#05,#04,#03
	db #02,#01,#01,#01,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#00,#02,#07,#00
	db #02,#07,#00,#02,#07,#00,#02,#07
	db #00,#02,#07,#00,#02,#07,#00,#02
	db #07,#00,#02,#07,#00,#02,#07,#00
.l4722 equ $ + 4
	db #02,#07,#00,#02,#00,#58,#47,#00
	db #79,#47,#00,#79,#47,#00,#9a,#47
.l4734 equ $ + 6
	db #00,#9a,#47,#80,#25,#47,#00,#cd
	db #47,#00,#cd,#47,#00,#cd,#47,#00
	db #cd,#47,#00,#cd,#47,#80,#37,#47
.l4746
	db #00,#1f,#48,#00,#22,#48,#00,#22
	db #48,#00,#5c,#48,#00,#5c,#48,#80
	db #49,#47,#46,#08,#f6,#01,#46,#08
	db #f6,#02,#46,#08,#f6,#04,#46,#08
	db #f6,#05,#46,#08,#f6,#02,#46,#08
	db #f6,#05,#46,#08,#f6,#04,#46,#08
	db #f6,#05,#ff,#46,#08,#f6,#01,#46
	db #08,#f6,#02,#46,#08,#f6,#04,#46
	db #08,#f6,#05,#46,#08,#f6,#02,#46
	db #08,#f6,#05,#46,#08,#f6,#04,#46
	db #08,#f6,#05,#ff,#59,#04,#18,#55
	db #04,#08,#54,#82,#d5,#08,#54,#83
	db #52,#84,#59,#82,#59,#84,#54,#82
	db #d5,#08,#54,#82,#52,#83,#59,#84
	db #55,#84,#54,#82,#d5,#08,#54,#83
	db #52,#84,#59,#82,#59,#84,#54,#82
	db #d5,#08,#54,#82,#52,#83,#ff,#2e
	db #03,#0a,#ae,#0a,#3a,#02,#01,#2e
	db #02,#0a,#29,#83,#a9,#0a,#3a,#02
	db #01,#29,#02,#0a,#2a,#83,#aa,#0a
	db #3a,#02,#01,#2a,#02,#0a,#27,#83
	db #a7,#0a,#3a,#02,#01,#24,#02,#0a
	db #2e,#83,#ae,#0a,#3a,#02,#01,#2e
	db #02,#0a,#29,#83,#a9,#0a,#3a,#02
	db #01,#29,#02,#0a,#2a,#83,#aa,#0a
	db #3a,#02,#01,#2a,#02,#0a,#27,#83
	db #a7,#0a,#3a,#02,#01,#24,#02,#0a
	db #ff,#00,#40,#ff,#46,#02,#07,#c6
	db #07,#46,#82,#c4,#07,#46,#88,#46
	db #82,#44,#83,#46,#83,#41,#82,#3f
	db #83,#41,#83,#3d,#82,#bd,#07,#bc
	db #07,#3a,#84,#ba,#07,#bc,#07,#3d
	db #82,#3a,#82,#3f,#82,#ba,#07,#41
	db #83,#42,#82,#41,#82,#3d,#82,#3c
	db #83,#3f,#83,#3d,#82,#ff,#46,#0c
	db #09,#48,#84,#49,#86,#48,#86,#44
	db #84,#41,#86,#46,#82,#46,#8a,#41
	db #82,#3f,#82,#41,#82,#3d,#82,#3f
	db #82,#3c,#82,#3d,#82,#ff,#0f,#0f
	db #0f,#0f,#0f,#ff,#ff,#cf,#1f,#6f
	db #2f,#8f,#0f,#df,#9f,#ff,#ee,#33
	db #ff,#ee,#00,#00,#11,#ff,#ef,#0f
	db #0f,#0f,#df,#ff,#ff,#ff,#ff,#ff
	db #9f,#1f,#2f,#bf,#9f,#cf,#9f,#6f
	db #ff,#ff,#bb,#33,#ff,#ff,#00,#00
	db #11,#ff,#af,#0f,#0f,#0f,#7f,#ff
	db #ff,#ff,#ff,#ef,#5f,#2f,#8f,#5f
	db #ff,#7f,#3f,#ff,#ff,#ff,#66,#77
	db #ff,#ff,#00,#00,#00,#ff,#cf,#0f
	db #0f,#0f,#7f,#ff,#ff,#ff,#ff,#ff
	db #2f,#8f,#0f,#bf,#3f,#af,#7f,#ff
	db #ff,#ee,#88,#ff,#ff,#ff,#00,#00
	db #00,#77,#8f,#0f,#0f,#0f,#3f,#ff
	db #ff,#ff,#ff,#ff,#df,#5f,#1f,#4f
	db #9f,#5f,#ff,#ff,#ff,#cc,#66,#ff
	db #ff,#ff,#00,#00,#00,#33,#cf,#0f
	db #0f,#0f,#1f,#ff,#ff,#ff,#ff,#ff
	db #ff,#4f,#0f,#1f,#1f,#1f,#ff,#ff
	db #ff,#99,#77,#ff,#ff,#ee,#00,#00
	db #00,#11,#cf,#0f,#0f,#0f,#3f,#ef
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#6f
	db #ef,#ff,#ff,#ff,#ff,#22,#ff,#ff
	db #ff,#ff,#00,#00,#00,#11,#ff,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#1f,#4f,#1f,#7f,#ff,#ff
	db #ee,#22,#ff,#ff,#ff,#ff,#00,#00
	db #00,#00,#67,#0f,#0f,#0f,#1e,#f0
	db #f0,#f0,#f0,#f0,#87,#0f,#0f,#5f
	db #2f,#ff,#ff,#ff,#cc,#77,#ff,#ff
	db #ff,#ff,#00,#00,#00,#00,#11,#8f
	db #0f,#0f,#2d,#f0,#f0,#f0,#f0,#f0
	db #e1,#0f,#0f,#1f,#3f,#ff,#ff,#ee
	db #33,#77,#ff,#ff,#ff,#ee,#00,#00
	db #00,#00,#00,#ef,#0f,#0f,#0f,#78
	db #f0,#f0,#f0,#f0,#87,#0f,#0f,#ef
	db #ff,#ff,#ff,#cc,#00,#ff,#ff,#ff
	db #ff,#cc,#00,#00,#00,#00,#00,#ff
	db #8f,#0f,#1e,#f0,#b4,#f0,#f0,#f0
	db #0f,#0f,#1f,#2f,#ff,#ff,#ff,#00
	db #77,#ff,#ff,#ff,#77,#99,#00,#00
	db #00,#00,#00,#77,#af,#0f,#0f,#3c
	db #78,#b4,#3c,#e1,#0f,#0f,#0f,#ff
	db #3f,#ff,#ff,#00,#ee,#ff,#ff,#ee
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "CPC-Fastloader Issue 7 - Music 16 (1993)(Beng!)()",0
	db "ST-Module",0

	read "music_end.asm"
