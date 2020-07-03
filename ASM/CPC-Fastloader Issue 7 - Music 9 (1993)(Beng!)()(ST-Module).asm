; Music of CPC-Fastloader Issue 7 - Music 9 (1993)(Beng!)()(ST-Module)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPFI7M09.BIN"
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
	dw l4742,l475d,l4778
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
	db #00,#00,#00,#00,#00,#00,#00,#00
.l43da equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#08,#00,#00,#00,#00,#00,#00
.l43e8 equ $ + 3
	db #df,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l43f6 equ $ + 1
	db #00,#00,#00,#02,#03,#09,#00,#00
.l4404 equ $ + 7
	db #00,#00,#00,#00,#e7,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4412 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #05,#0a,#00,#00,#00,#00,#00,#00
.l4420 equ $ + 3
	db #ef,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#53,#54,#2d,#4d,#6f
.l4442 equ $ + 5
	db #64,#75,#6c,#65,#2e,#dc,#3e,#dc
	db #3e,#dc,#3e,#00,#00,#e2,#44,#22
	db #45,#42,#45,#0c,#00,#25,#92,#21
	db #f3,#fc,#40,#00,#ff,#db,#3e,#fd
	db #d0,#4c,#9d,#23,#56,#ff,#3f,#ec
	db #3e,#e5,#bc,#23,#4e,#da,#3e,#a6
	db #3f,#74,#3d,#50,#30,#62,#45,#a2
	db #45,#c2,#45,#00,#00,#e2,#45,#22
	db #46,#42,#46,#18,#07,#62,#46,#a2
	db #46,#42,#46,#18,#07,#e5,#14,#b8
	db #7d,#94,#bc,#b8,#7d,#94,#bc,#b8
	db #7d,#94,#bc,#b8,#7d,#b8,#7d,#0c
	db #3f,#18,#7e,#6c,#3f,#78,#7e,#a8
	db #7e,#d8,#7e,#2c,#40,#38,#7f,#68
	db #7f,#98,#7f,#ec,#40,#f8,#7f,#28
	db #80,#58,#80,#ac,#41,#b8,#80,#d8
.l44c2 equ $ + 5
	db #80,#dc,#3e,#30,#00,#3c,#3f,#c2
	db #46,#e2,#46,#02,#47,#22,#47,#2c
	db #40,#5c,#40,#8c,#40,#bc,#40,#ec
	db #40,#1c,#41,#4c,#41,#7c,#41,#ac
	db #41,#dc,#41,#fc,#41,#00,#00,#32
	db #00,#64,#00,#91,#00,#be,#00,#eb
	db #00,#22,#01,#4a,#01,#7c,#01,#a9
	db #01,#d6,#01,#08,#02,#3a,#02,#6c
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#0f,#0f
	db #0f,#0f,#0e,#0e,#0d,#0c,#0a,#06
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#38,#00,#60
	db #00,#b0,#00,#18,#01,#48,#01,#80
	db #01,#c8,#01,#10,#02,#58,#02,#b0
	db #02,#00,#00,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#0e,#0e
	db #0d,#0c,#0b,#09,#07,#06,#03,#01
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#06,#06,#06
	db #05,#04,#04,#03,#02,#01,#00,#80
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
	db #00,#00,#00,#00,#00,#0e,#0e,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#05,#05,#05,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #00,#02,#00,#01,#00,#00,#00,#ff
	db #ff,#fe,#ff,#ff,#ff,#00,#00,#01
	db #00,#02,#00,#01,#00,#00,#00,#ff
	db #ff,#fe,#ff,#ff,#ff,#00,#00,#01
	db #00,#02,#00,#01,#00,#00,#00,#ff
	db #ff,#fe,#ff,#ff,#ff,#00,#00,#01
	db #00,#02,#00,#01,#00,#0e,#0e,#0e
	db #0d,#0d,#0d,#0c,#0c,#0b,#0a,#09
	db #07,#05,#07,#09,#0b,#0b,#0b,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #09,#09,#09,#09,#09,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#00,#05,#0a
	db #00,#05,#0a,#00,#05,#0a,#00,#05
	db #0a,#00,#05,#0a,#00,#05,#0a,#00
	db #05,#0a,#00,#05,#0a,#00,#05,#0a
	db #00,#05,#0a,#00,#05,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
.l4742 equ $ + 5
	db #00,#03,#08,#00,#03,#00,#93,#47
	db #00,#a4,#47,#00,#93,#47,#00,#93
	db #47,#00,#b5,#47,#00,#ce,#47,#00
	db #b5,#47,#00,#ce,#47,#80,#42,#47
.l475d
	db #00,#e4,#47,#00,#f9,#47,#00,#e4
	db #47,#00,#e4,#47,#00,#e4,#47,#00
	db #e4,#47,#00,#e4,#47,#00,#e4,#47
.l4778 equ $ + 3
	db #80,#5d,#47,#00,#0e,#48,#00,#11
	db #48,#00,#1d,#48,#00,#1d,#48,#00
	db #4f,#48,#00,#ac,#48,#00,#4f,#48
	db #00,#ac,#48,#80,#78,#47,#22,#1c
	db #c7,#1e,#25,#02,#c7,#19,#27,#02
	db #c7,#16,#22,#20,#c7,#1e,#ff,#22
	db #1c,#c7,#1e,#25,#02,#c7,#19,#27
	db #02,#c7,#16,#22,#20,#c7,#1e,#ff
	db #46,#0c,#18,#48,#02,#08,#49,#82
	db #48,#86,#44,#86,#41,#84,#46,#98
	db #46,#82,#48,#82,#49,#82,#4b,#82
	db #ff,#4d,#10,#08,#49,#86,#48,#86
	db #41,#84,#42,#86,#46,#86,#49,#84
	db #46,#86,#44,#86,#41,#84,#ff,#46
	db #10,#f8,#01,#3f,#06,#f8,#02,#3f
	db #0a,#f8,#03,#3a,#06,#f8,#04,#3a
	db #1a,#f8,#01,#ff,#46,#10,#f8,#01
	db #3f,#06,#f8,#02,#3f,#0a,#f8,#03
	db #3a,#06,#f8,#04,#3a,#1a,#f8,#01
	db #ff,#00,#40,#ff,#00,#36,#37,#02
	db #01,#33,#83,#32,#83,#30,#82,#ff
	db #2e,#04,#01,#3a,#02,#06,#2e,#02
	db #01,#2e,#84,#2e,#84,#2e,#84,#3a
	db #02,#06,#2e,#02,#01,#2e,#84,#2e
	db #84,#2e,#84,#3a,#02,#06,#2e,#02
	db #01,#2e,#84,#2e,#84,#2e,#84,#3a
	db #02,#06,#2e,#02,#01,#2e,#84,#2e
	db #84,#ff,#2e,#02,#01,#22,#02,#07
	db #3a,#02,#06,#2e,#02,#01,#2e,#82
	db #22,#02,#07,#2e,#02,#01,#22,#02
	db #07,#2e,#02,#01,#22,#02,#07,#3a
	db #02,#06,#2e,#02,#01,#2e,#82,#22
	db #02,#07,#2e,#02,#01,#22,#02,#07
	db #2e,#02,#01,#22,#02,#07,#3a,#02
	db #06,#2e,#02,#01,#2e,#82,#22,#02
	db #07,#2e,#02,#01,#22,#02,#07,#2e
	db #02,#01,#22,#02,#07,#3a,#02,#06
	db #2e,#02,#01,#2e,#82,#22,#02,#07
	db #2e,#02,#01,#22,#02,#07,#ff,#2e
	db #02,#01,#22,#02,#07,#3a,#02,#06
	db #2e,#02,#01,#2e,#82,#22,#02,#07
	db #2e,#02,#01,#22,#02,#07,#2e,#02
	db #01,#22,#02,#07,#3a,#02,#06,#2e
	db #02,#01,#2e,#82,#22,#02,#07,#2e
	db #02,#01,#22,#02,#07,#2e,#02,#01
	db #22,#02,#07,#3a,#02,#06,#2e,#02
	db #01,#2e,#82,#22,#02,#07,#2e,#02
	db #01,#22,#02,#07,#2e,#02,#01,#22
	db #02,#07,#3a,#02,#06,#2e,#02,#01
	db #2e,#82,#22,#02,#07,#2e,#02,#01
	db #22,#02,#07,#ff,#00,#00,#00,#00
;
.music_info
	db "CPC-Fastloader Issue 7 - Music 9 (1993)(Beng!)()",0
	db "ST-Module",0

	read "music_end.asm"
