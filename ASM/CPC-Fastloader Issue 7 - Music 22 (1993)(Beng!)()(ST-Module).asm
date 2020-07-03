; Music of CPC-Fastloader Issue 7 - Music 22 (1993)(Beng!)()(ST-Module)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPFI7M22.BIN"
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
	dw l4662,l4671,l4680
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
	db #dc,#3e,#00,#00,#dc,#3e,#21,#8d
	db #30,#5f,#4e,#4f,#25,#92,#21,#f3
	db #fc,#40,#00,#ff,#e2,#44,#22,#45
	db #42,#45,#00,#00,#ff,#3f,#ec,#3e
	db #e5,#bc,#23,#4e,#da,#3e,#a6,#3f
	db #74,#3d,#50,#30,#e4,#7a,#2b,#45
	db #dc,#2b,#b0,#18,#62,#45,#a2,#45
	db #c2,#45,#00,#00,#e2,#3e,#8b,#57
	db #51,#3d,#f0,#30,#e2,#45,#22,#46
	db #c2,#45,#08,#18,#62,#45,#42,#46
	db #c2,#45,#00,#00,#b8,#7d,#dc,#3e
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
	db #b8,#7d,#dc,#3e,#b8,#7d,#b8,#7d
.l44c2 equ $ + 4
	db #dc,#3e,#00,#00,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#dc,#3e,#dc,#3e
	db #dc,#3e,#dc,#3e,#00,#00,#08,#00
	db #10,#00,#18,#00,#20,#00,#28,#00
	db #30,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0c
	db #0a,#07,#06,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#07,#07,#07,#06
	db #06,#06,#05,#05,#05,#04,#04,#04
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#03
	db #03,#03,#03,#03,#00,#00,#00,#00
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
	db #01,#00,#01,#00,#0b,#0a,#09,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0e,#0d,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#06,#06,#05,#04,#03,#02,#02
.l4662 equ $ + 4
	db #02,#02,#02,#02,#00,#8f,#46,#00
	db #8f,#46,#00,#a9,#46,#00,#a9,#46
.l4671 equ $ + 3
	db #80,#62,#46,#00,#c4,#46,#00,#c4
	db #46,#00,#c4,#46,#00,#c4,#46,#80
.l4680 equ $ + 2
	db #71,#46,#00,#18,#47,#00,#18,#47
	db #00,#4a,#47,#00,#4a,#47,#80,#80
	db #46,#46,#0c,#09,#46,#84,#49,#86
	db #48,#86,#44,#84,#46,#90,#3f,#83
	db #3f,#83,#41,#82,#3d,#82,#3c,#82
	db #3a,#84,#ff,#46,#0c,#09,#46,#84
	db #49,#86,#48,#86,#44,#84,#46,#90
	db #3f,#03,#07,#3f,#83,#41,#82,#3d
	db #82,#3c,#82,#3a,#84,#ff,#22,#02
	db #07,#22,#82,#3c,#02,#03,#22,#02
	db #07,#25,#82,#25,#82,#3f,#02,#03
	db #25,#02,#07,#27,#82,#27,#82,#41
	db #02,#03,#27,#02,#07,#29,#82,#29
	db #82,#43,#02,#03,#25,#02,#07,#22
	db #82,#22,#82,#3c,#02,#03,#22,#02
	db #07,#25,#82,#25,#82,#3f,#02,#03
	db #25,#02,#07,#20,#82,#20,#82,#3a
	db #02,#03,#20,#02,#07,#3d,#02,#03
	db #22,#02,#07,#3d,#02,#03,#22,#02
	db #07,#ff,#41,#04,#07,#3f,#82,#bd
	db #07,#3f,#82,#41,#83,#3f,#82,#3d
	db #82,#46,#84,#46,#84,#49,#84,#48
	db #84,#46,#84,#3f,#82,#bd,#07,#3f
	db #83,#41,#82,#3f,#82,#3d,#82,#3f
	db #83,#3f,#83,#41,#82,#3d,#82,#3c
	db #82,#3a,#84,#ff,#cd,#ba,#05,#c9
	db #0a,#c8,#0a,#c9,#0a,#c8,#0a,#c6
	db #0a,#c9,#0a,#cb,#0a,#cd,#ba,#04
	db #c9,#0a,#c8,#0a,#c9,#0a,#c8,#0a
	db #c6,#0a,#c9,#0a,#cb,#0a,#cd,#ba
	db #03,#c9,#0a,#c8,#0a,#c9,#0a,#c8
	db #0a,#c6,#0a,#c9,#0a,#cb,#0a,#cd
	db #ba,#02,#cb,#0a,#cd,#0a,#ce,#0a
	db #cd,#0a,#cb,#0a,#c9,#0a,#c8,#0a
	db #cd,#0a,#c9,#0a,#c8,#0a,#c9,#0a
	db #c8,#0a,#c6,#0a,#c9,#0a,#cb,#0a
	db #cd,#0a,#c9,#0a,#c8,#0a,#c9,#0a
	db #c8,#0a,#c6,#0a,#c9,#0a,#cb,#0a
	db #cd,#0a,#c9,#0a,#c8,#0a,#c9,#0a
	db #c8,#0a,#c6,#0a,#c9,#0a,#cb,#0a
	db #cd,#0a,#ce,#0a,#cd,#0a,#cb,#0a
	db #cd,#0a,#c9,#0a,#c8,#0a,#c9,#0a
	db #ff,#00,#bf,#00,#b3,#00,#bd,#00
	db #b3,#00,#bb,#00,#b3,#00,#bd,#00
	db #b3,#00,#bf,#00,#b3,#00,#c1,#00
	db #b3,#00,#c2,#00,#b3,#00,#c1,#00
	db #b3,#00,#bf,#00,#b3,#00,#bd,#00
	db #b3,#00,#c6,#00,#c1,#00,#be,#00
	db #c1,#00,#ba,#00,#be,#00,#c1,#00
	db #be,#00,#c6,#00,#c1,#00,#be,#00
	db #c1,#00,#ba,#00,#be,#00,#c1,#00
	db #be,#00,#c6,#00,#c1,#00,#be,#00
	db #c1,#00,#ba,#00,#be,#00,#c1,#00
	db #be,#00,#c6,#00,#c1,#00,#be,#00
	db #c1,#00,#c6,#00,#be,#00,#c1,#00
	db #c6,#00,#ff,#27,#02,#00,#27,#82
	db #27,#82,#27,#82,#27,#82,#27,#82
	db #27,#82,#27,#82,#27,#82,#27,#82
	db #27,#82,#27,#82,#27,#82,#27,#82
	db #27,#82,#27,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#25,#82,#25,#82
	db #25,#82,#25,#82,#ff,#23,#02,#00
	db #23,#82,#23,#82,#23,#82,#23,#82
	db #23,#82,#23,#82,#23,#82,#23,#82
	db #23,#82,#23,#82,#23,#82,#23,#82
	db #23,#82,#23,#82,#23,#82,#22,#82
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #22,#82,#22,#82,#22,#82,#ff,#27
	db #02,#00,#27,#82,#3a,#02,#06,#27
	db #02,#00,#27,#82,#27,#82,#3a,#02
	db #06,#27,#02,#00,#27,#82,#27,#82
	db #3a,#02,#06,#27,#02,#00,#27,#82
	db #3a,#02,#06,#42,#02,#03,#3a,#02
	db #06,#25,#02,#00,#25,#82,#3a,#02
	db #06,#25,#02,#00,#25,#82,#25,#82
	db #3a,#02,#06,#25,#02,#00,#25,#82
	db #25,#82,#3a,#02,#06,#25,#02,#00
	db #25,#82,#3a,#02,#06,#49,#02,#03
	db #47,#82,#ff,#23,#02,#00,#23,#82
	db #3a,#02,#06,#23,#02,#00,#23,#82
	db #23,#82,#3a,#02,#06,#23,#02,#00
	db #23,#82,#23,#82,#3a,#02,#06,#23
	db #02,#00,#23,#82,#3a,#02,#06,#47
	db #02,#03,#3a,#02,#06,#22,#02,#00
	db #22,#82,#3a,#02,#06,#22,#02,#00
	db #22,#82,#22,#82,#3a,#02,#06,#22
	db #02,#00,#22,#82,#22,#82,#3a,#02
	db #06,#22,#02,#00,#22,#82,#3a,#02
	db #06,#4d,#02,#03,#3a,#02,#06,#ff
	db #27,#02,#00,#27,#82,#3a,#02,#06
	db #27,#02,#00,#27,#82,#27,#82,#3a
	db #02,#06,#27,#02,#00,#27,#82,#27
	db #82,#3a,#02,#06,#27,#02,#00,#27
	db #82,#3a,#02,#06,#42,#02,#03,#3a
	db #02,#06,#25,#02,#00,#25,#82,#3a
	db #02,#06,#25,#02,#00,#25,#82,#25
	db #82,#3a,#02,#06,#25,#02,#00,#25
	db #82,#25,#82,#3a,#02,#06,#25,#02
	db #00,#25,#82,#3a,#02,#06,#49,#02
	db #03,#47,#82,#ff,#23,#02,#00,#23
	db #82,#3a,#02,#06,#23,#02,#00,#23
	db #82,#23,#82,#3a,#02,#06,#23,#02
	db #00,#23,#82,#23,#82,#3a,#02,#06
	db #23,#02,#00,#23,#82,#3a,#02,#06
	db #47,#02,#03,#3a,#02,#06,#22,#02
	db #00,#22,#82,#3a,#02,#06,#22,#02
	db #00,#22,#82,#22,#82,#3a,#02,#06
	db #22,#02,#00,#22,#82,#22,#82,#3a
	db #02,#06,#22,#02,#00,#22,#82,#3a
	db #02,#06,#4d,#02,#03,#3a,#02,#06
	db #ff,#00,#04,#42,#06,#00,#44,#86
	db #42,#86,#44,#86,#42,#88,#42,#86
	db #41,#86,#42,#86,#41,#86,#42,#82
	db #41,#82,#ff,#00,#04,#42,#06,#00
	db #44,#86,#42,#86,#44,#86,#42,#88
	db #44,#86,#42,#86,#44,#86,#46,#86
	db #46,#84,#ff,#00,#04,#42,#06,#00
	db #44,#86,#42,#86,#44,#84,#3f,#02
	db #03,#42,#02,#00,#46,#02,#03,#4b
	db #84,#42,#06,#00,#41,#86,#42,#84
	db #4e,#02,#03,#41,#02,#00,#4d,#04
	db #03,#42,#02,#00,#41,#82,#ff,#00
	db #04,#42,#06,#00,#44,#86,#42,#86
	db #44,#82,#47,#02,#03,#49,#82,#42
	db #02,#00,#46,#06,#03,#44,#06,#00
	db #42,#86,#44,#84,#4d,#02,#03,#46
	db #02,#00,#4e,#04,#03,#46,#02,#00
	db #4b,#02,#03,#ff,#00,#04,#42,#06
	db #00,#44,#86,#42,#86,#44,#84,#3f
	db #02,#03,#42,#02,#00,#46,#02,#03
	db #4b,#84,#42,#06,#00,#41,#86,#42
	db #84,#4e,#02,#03,#41,#02,#00,#4d
	db #04,#03,#42,#02,#00,#41,#82,#ff
	db #00,#04,#42,#06,#00,#44,#86,#42
	db #86,#44,#82,#47,#02,#03,#49,#82
	db #42,#02,#00,#46,#06,#03,#44,#06
	db #00,#42,#86,#44,#84,#4d,#02,#03
	db #46,#02,#00,#4e,#04,#03,#46,#02
	db #00,#4b,#02,#03,#ff
;
.music_info
	db "CPC-Fastloader Issue 7 - Music 22 (1993)(Beng!)()",0
	db "ST-Module",0

	read "music_end.asm"
