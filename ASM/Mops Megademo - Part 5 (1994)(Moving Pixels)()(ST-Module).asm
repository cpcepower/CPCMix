; Music of Mops Megademo - Part 5 (1994)(Moving Pixels)()(ST-Module)
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MOPSMDP5.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5b00

	read "music_header.asm"

	jr l5b04
	jr l5b13
.l5b04
	call l5b2f
	ld hl,l5f52
	ld de,l5b1c
	ld bc,#81ff
	jp #bcd7
.l5b13
	ld hl,l5f52
	call #bcdd
	jp l5b9b
.l5b1c
	push ix
	call l5bb7
	pop ix
	ret
	jp l5b2f
	jp l5bb7
	jp l5b9b
	db #66,#04
;
.init_music
.l5b2f
;
	ld b,#03
	ld ix,l5efe
	ld iy,l5e2a
	ld de,#001c
.l5b3c
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
	djnz l5b3c
	ld a,#07
	ld (l5bdf),a
	ld a,d
	ld (l5bf3),a
	inc a
	ld (l5bda),a
	ld a,#38
	ld (l5be4),a
	ld a,#ff
	ld (l5e26),a
	ld (l5e27),a
	ld (l5e28),a
	ld (l5e29),a
	ld a,#0c
	ld c,d
	call l5e08
	ld a,#0d
	ld c,d
	jp l5e08
;
.stop_music
.l5b9b
;
	ld a,#07
	ld c,#3f
	call l5e08
	ld a,#08
	ld c,#00
	call l5e08
	ld a,#09
	ld c,#00
	call l5e08
	ld a,#0a
	ld c,#00
	jp l5e08
;
.play_music
.l5bb7
;
	ld hl,l5bda
	dec (hl)
	ld ix,l5efe
	ld bc,l5f0c
	call l5c6d
	ld ix,l5f1a
	ld bc,l5f28
	call l5c6d
	ld ix,l5f36
	ld bc,l5f44
	call l5c6d
.l5bda equ $ + 1
	ld a,#00
	or a
	jr nz,l5be3
.l5bdf equ $ + 1
	ld a,#00
	ld (l5bda),a
.l5be4 equ $ + 1
.l5be3
	ld a,#00
	ld hl,l5e27
	cp (hl)
	jr z,l5bf2
	ld (hl),a
	ld c,a
	ld a,#07
	call l5e08
.l5bf3 equ $ + 1
.l5bf2
	ld a,#00
	ld hl,l5e26
	cp (hl)
	jr z,l5c01
	ld (hl),a
	ld c,a
	ld a,#06
	call l5e08
.l5c02 equ $ + 1
.l5c01
	ld a,#00
	ld hl,l5e28
	cp (hl)
	jr z,l5c10
	ld (hl),a
	ld c,a
	ld a,#0b
	call l5e08
.l5c11 equ $ + 1
.l5c10
	ld a,#00
	ld hl,l5e29
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l5e08
.l5c1e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l5d1e
.l5c2d
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
	jp l5e08
.l5c47
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l5c5c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l5c5c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l5c80
.l5c6d
	ld a,(l5bda)
	or a
	jp nz,l5d1e
	dec (ix+#06)
	jp nz,l5d1e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5c80
	ld a,(hl)
	or a
	jr z,l5c1e
	cp #fe
	jr z,l5c2d
	cp #ff
	jr z,l5c47
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l5e30
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l5cbc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l5cbc
	and #7f
	ld (ix+#06),a
	jr l5d0f
.l5cbc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l5cd0
	ld (ix+#05),a
	ld (ix+#0a),d
.l5cd0
	add a
	add a
	add a
	ld e,a
	ld hl,l5f66
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
	jr z,l5d0f
	cp #f0
	jp z,l5dc4
	cp #d0
	jp z,l5de0
	cp #b0
	jp z,l5de8
	cp #80
	jp nc,l5df0
	cp #10
	jr nz,l5d0f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l5d0f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l5d1e
	ld a,(ix+#17)
	or a
	jr nz,l5d32
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l5d32
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l5d5d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l5e30
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l5d5d
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
	call l5e08
	ld c,h
	ld a,(ix+#03)
	call l5e08
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5d9b
	and #0f
	sub (ix+#0a)
	jr nc,l5d91
	xor a
.l5d91
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l5e08
.l5d9b
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
	jr z,l5db8
	ld b,a
	ld a,c
	ld (l5bf3),a
	ld a,b
	sub #40
.l5db8
	ld (l5dbf),a
	ld a,(l5be4)
.l5dbf equ $ + 1
	bit 0,a
	ld (l5be4),a
	ret
.l5dc4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l5fe6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l5d0f
.l5de0
	inc hl
	ld a,(hl)
	ld (l5bdf),a
	jp l5d0f
.l5de8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l5d0f
.l5df0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l5c11),a
	inc hl
	ld a,(hl)
	ld (l5c02),a
	jp l5d0f
.l5e08
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
.l5e26
	rst #38
.l5e27
	rst #38
.l5e28
	rst #38
.l5e29
	rst #38
.l5e2a
	and #62
	ei
	ld h,d
	djnz l5e93
.l5e30
	xor #0e
	jr l5e42
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
.l5e42
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
	jr c,l5e76
	jr l5e78
.l5e78 equ $ + 2
.l5e76
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
.l5e93
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
	jr c,l5ec4
.l5ec4
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
	jr l5ee2
.l5ee2
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
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l5efe
	db #00,#00,#00,#01,#08,#00,#00,#00
.l5f0c equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f1a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l5f28 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f36
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l5f44 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5f52 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l5f66
	db #06,#60,#46,#60,#66,#60,#07,#00
	db #06,#60,#86,#60,#66,#60,#00,#00
	db #a6,#60,#e6,#60,#06,#61,#1a,#00
	db #00,#5a,#00,#5a,#00,#5a,#00,#00
	db #00,#5a,#00,#5a,#00,#5a,#00,#00
	db #00,#5a,#00,#5a,#00,#5a,#00,#00
	db #26,#61,#66,#61,#66,#60,#00,#00
	db #06,#60,#86,#61,#a6,#61,#06,#00
	db #00,#5a,#00,#5a,#00,#5a,#00,#00
	db #00,#5a,#00,#5a,#00,#5a,#00,#00
	db #06,#60,#46,#60,#c6,#61,#00,#00
	db #e6,#61,#26,#62,#46,#62,#00,#00
	db #06,#60,#66,#62,#86,#62,#00,#00
	db #00,#5a,#00,#5a,#00,#5a,#00,#00
	db #00,#5a,#00,#5a,#00,#5a,#00,#00
	db #00,#5a,#00,#5a,#00,#5a,#00,#00
.l5fe6
	db #00,#5a,#00,#5a,#00,#5a,#00,#5a
	db #00,#5a,#00,#5a,#00,#5a,#00,#5a
	db #a6,#62,#c6,#62,#00,#5a,#00,#5a
	db #00,#5a,#00,#5a,#00,#5a,#00,#5a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0c,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#0a,#08,#06,#04,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#09,#09,#09,#09,#09,#08,#08
	db #08,#08,#08,#07,#06,#04,#02,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #05,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0c,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0f,#0c,#09,#06,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#2f,#00,#5e,#00,#8d,#00
	db #bc,#00,#eb,#00,#1a,#01,#49,#01
	db #78,#01,#a7,#01,#d6,#01,#05,#02
	db #34,#02,#63,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#06,#0c,#12,#18,#1e,#04,#0a
	db #10,#16,#1c,#02,#08,#0e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0d,#0b,#09,#07,#05,#04,#06
	db #08,#06,#04,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #07,#0b,#0f,#13,#17,#1b,#1f,#13
	db #08,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#2f,#65,#00,#25,#63,#00,#a6
	db #63,#00,#2d,#64,#00,#ae,#64,#00
	db #2d,#64,#80,#e6,#62,#00,#5c,#67
	db #00,#b1,#65,#00,#07,#66,#00,#58
	db #66,#00,#a7,#66,#00,#0c,#67,#80
	db #fb,#62,#00,#fb,#68,#00,#e5,#67
	db #00,#2d,#68,#00,#6f,#68,#00,#b5
	db #68,#00,#6f,#68,#80,#10,#63,#bc
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#bc
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#bc
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#bc
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#b8
	db #0a,#ba,#07,#b3,#0a,#ba,#07,#b8
	db #0a,#ba,#07,#b3,#0a,#ba,#07,#b7
	db #0a,#ba,#07,#b2,#0a,#ba,#07,#ba
	db #02,#ba,#02,#ba,#02,#ba,#02,#ba
	db #02,#ba,#07,#b7,#0a,#ba,#07,#bc
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#bc
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#bc
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#b8
	db #0a,#ba,#07,#b3,#0a,#ba,#07,#b8
	db #0a,#ba,#07,#b2,#0a,#ba,#07,#b7
	db #0a,#ba,#07,#b2,#0a,#ba,#07,#b7
	db #0a,#ae,#02,#ba,#02,#ba,#02,#ff
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bf,#0a,#ae,#b2,#02,#ae,#b2,#01
	db #ae,#b2,#00,#bc,#0a,#ba,#07,#b7
	db #0a,#ba,#07,#bc,#0a,#ba,#07,#b7
	db #0a,#ba,#07,#bc,#0a,#ba,#07,#b7
	db #0a,#ba,#07,#bc,#0a,#ba,#07,#b7
	db #0a,#ba,#07,#bc,#0a,#ba,#07,#b7
	db #0a,#ba,#07,#bc,#0a,#ba,#07,#b7
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#b2
	db #0a,#ba,#07,#b2,#b2,#02,#b2,#b2
	db #01,#b2,#b2,#00,#b2,#02,#ff,#bc
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#bc
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#bc
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#bc
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#b8
	db #0a,#ba,#07,#b3,#0a,#ba,#07,#b8
	db #0a,#ba,#07,#b3,#0a,#ba,#07,#b7
	db #0a,#ba,#07,#b2,#0a,#ba,#07,#ba
	db #02,#ba,#02,#ba,#02,#ba,#02,#ba
	db #02,#ba,#07,#b7,#0a,#ba,#07,#bc
	db #0a,#ba,#07,#b7,#0a,#ba,#07,#b8
	db #0a,#ba,#07,#b3,#0a,#ba,#07,#b8
	db #0a,#ba,#07,#b3,#0a,#ba,#07,#b7
	db #0a,#ba,#07,#b2,#0a,#ba,#07,#b7
	db #0a,#ba,#07,#b2,#0a,#ba,#07,#ae
	db #02,#ae,#02,#ba,#0b,#ae,#02,#ba
	db #0b,#ae,#02,#ae,#02,#ba,#0b,#ff
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #bc,#0a,#ba,#07,#b7,#0a,#ba,#07
	db #ae,#02,#ae,#02,#ae,#02,#ae,#02
	db #ff,#bc,#ba,#02,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#bc,#0a,#ba,#07,#b7,#0a
	db #ba,#07,#ba,#0c,#ba,#02,#ba,#02
	db #ba,#02,#ff,#cb,#f1,#09,#cb,#01
	db #cb,#01,#4b,#82,#cb,#01,#4a,#82
	db #cb,#01,#cb,#01,#cb,#01,#4b,#82
	db #cb,#01,#4a,#82,#48,#82,#c8,#01
	db #48,#82,#c8,#01,#ca,#01,#c8,#01
	db #c8,#01,#47,#82,#47,#85,#cb,#01
	db #cb,#01,#cb,#01,#4b,#82,#cb,#01
	db #4a,#82,#cb,#01,#cb,#01,#cb,#01
	db #4b,#82,#cb,#01,#4a,#82,#48,#82
	db #c8,#01,#48,#82,#c8,#01,#ca,#01
	db #c8,#01,#c8,#01,#47,#82,#47,#85
	db #ff,#c8,#01,#c6,#01,#c8,#01,#48
	db #82,#c8,#01,#46,#83,#c8,#01,#cb
	db #01,#48,#82,#c8,#01,#46,#83,#c3
	db #01,#c6,#01,#48,#82,#c6,#01,#c8
	db #01,#cb,#01,#c8,#01,#46,#82,#43
	db #85,#c8,#01,#c6,#01,#c8,#01,#48
	db #82,#c8,#01,#46,#83,#c8,#01,#cb
	db #01,#48,#82,#c8,#01,#46,#83,#c3
	db #01,#c6,#01,#48,#82,#c6,#01,#c8
	db #01,#cb,#01,#ca,#01,#48,#82,#47
	db #85,#ff,#cb,#01,#cb,#01,#cb,#01
	db #4b,#82,#cb,#01,#4a,#82,#cb,#01
	db #cb,#01,#cb,#01,#4b,#82,#cb,#01
	db #4a,#82,#48,#82,#c8,#01,#48,#82
	db #c8,#01,#ca,#01,#c8,#01,#c8,#01
	db #47,#82,#47,#85,#cb,#01,#cb,#01
	db #cb,#01,#4b,#82,#cb,#01,#4a,#82
	db #cb,#01,#cb,#01,#cb,#01,#4b,#82
	db #cb,#01,#4a,#82,#4a,#82,#ca,#01
	db #4a,#82,#ca,#01,#4a,#82,#48,#88
	db #ff,#48,#02,#06,#4b,#82,#4d,#82
	db #4e,#82,#cf,#06,#d4,#06,#cf,#06
	db #cd,#06,#fe,#01,#cd,#06,#4f,#82
	db #48,#82,#4b,#82,#4d,#82,#4e,#82
	db #cf,#06,#d4,#06,#cf,#06,#cd,#06
	db #fe,#01,#cd,#06,#4f,#82,#54,#02
	db #c6,#00,#52,#82,#51,#82,#50,#82
	db #cf,#c6,#00,#d4,#c6,#00,#cf,#c6
	db #00,#cd,#c6,#00,#fe,#01,#cd,#c6
	db #00,#cf,#c6,#00,#fe,#01,#54,#02
	db #f6,#09,#52,#02,#06,#51,#82,#50
	db #82,#cf,#06,#d4,#06,#cf,#06,#4d
	db #82,#cf,#06,#4b,#82,#ff,#d7,#f1
	db #09,#d7,#01,#d7,#01,#57,#82,#d7
	db #01,#56,#82,#d7,#01,#d7,#01,#d7
	db #01,#57,#82,#d7,#01,#56,#82,#57
	db #82,#d7,#01,#57,#82,#d7,#01,#d7
	db #01,#d7,#01,#d7,#01,#56,#82,#56
	db #85,#d7,#01,#d7,#01,#d7,#01,#57
	db #82,#d7,#01,#56,#82,#d7,#01,#d7
	db #01,#d7,#01,#57,#82,#d7,#01,#56
	db #82,#56,#82,#d6,#01,#56,#82,#d6
	db #01,#56,#82,#54,#88,#ff,#cf,#c1
	db #12,#fe,#01,#cf,#01,#fe,#01,#cf
	db #01,#fe,#01,#cf,#01,#fe,#01,#ce
	db #c1,#13,#cf,#c1,#12,#fe,#01,#48
	db #04,#c1,#1b,#ca,#c1,#18,#cb,#c1
	db #16,#cd,#c1,#14,#ce,#c1,#13,#cf
	db #c1,#12,#d0,#c1,#11,#cf,#c1,#12
	db #ce,#c1,#13,#cf,#c1,#12,#ce,#c1
	db #13,#cf,#c1,#12,#fe,#01,#48,#05
	db #c1,#1b,#cf,#c1,#12,#fe,#01,#cf
	db #01,#fe,#01,#cf,#01,#fe,#01,#cf
	db #01,#fe,#01,#ce,#c1,#13,#cf,#c1
	db #12,#fe,#01,#48,#04,#c1,#1b,#ca
	db #c1,#18,#cb,#c1,#16,#cd,#c1,#14
	db #ce,#c1,#13,#cf,#c1,#12,#d0,#c1
	db #11,#cf,#c1,#12,#ce,#c1,#13,#cf
	db #c1,#12,#cb,#c1,#16,#ca,#c1,#18
	db #fe,#01,#48,#05,#c1,#1b,#ff,#30
	db #02,#f6,#08,#2b,#02,#06,#30,#82
	db #2b,#82,#30,#82,#2b,#82,#30,#82
	db #2b,#82,#2c,#82,#27,#82,#2c,#82
	db #27,#82,#2b,#82,#26,#82,#b7,#06
	db #b5,#06,#b3,#06,#b2,#06,#30,#82
	db #2b,#82,#30,#82,#2b,#82,#30,#82
	db #2b,#82,#30,#82,#2b,#82,#2c,#82
	db #27,#82,#2c,#82,#27,#82,#2b,#82
	db #26,#82,#2b,#82,#26,#82,#ff,#30
	db #02,#06,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#33,#82,#2e,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #2b,#82,#26,#82,#2b,#82,#26,#82
	db #ff,#30,#02,#06,#2b,#82,#30,#82
	db #2b,#82,#30,#82,#2b,#82,#30,#82
	db #2b,#82,#2c,#82,#27,#82,#2c,#82
	db #27,#82,#2b,#82,#26,#82,#b7,#06
	db #b5,#06,#b3,#06,#b2,#06,#30,#82
	db #2b,#82,#30,#82,#2b,#82,#2c,#82
	db #27,#82,#2c,#82,#27,#82,#2b,#82
	db #26,#82,#2b,#82,#26,#82,#30,#82
	db #2b,#82,#30,#82,#2b,#82,#ff,#30
	db #02,#06,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#b3,#06,#b2,#06
	db #b0,#06,#af,#06,#ff,#30,#02,#b6
	db #02,#2b,#02,#06,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #30,#82,#2b,#82,#30,#82,#2b,#82
	db #ff
;
.music_info
	db "Mops Megademo - Part 5 (1994)(Moving Pixels)()",0
	db "ST-Module",0

	read "music_end.asm"
