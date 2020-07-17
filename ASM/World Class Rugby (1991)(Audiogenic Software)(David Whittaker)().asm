; Music of World Class Rugby (1991)(Audiogenic Software)(David Whittaker)()
; Ripped by Megachur the 09/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WORLDCLR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #f000

	read "music_header.asm"
	
	jp lf00d	; init
	jp lf0d8	; play
.lf006
	jp lf1bb	; stop
.lf009
.music_end
	db #00
.lf00c equ $ + 2
.lf00b equ $ + 1
.lf00a
	db #00,#00,#00
;
.init_music
.lf00d
;
	push af
	call lf006
	pop af
	ld b,#00
	ld hl,lf608
	ld a,(hl)
	ld (lf00b),a
	ld (lf00c),a
	inc hl
	ld ix,lf075
	ld c,#21
	ld a,#03
.lf027
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld hl,lf503
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,lf027
	ld (lf35f),a
	dec a
	ld (lf426),a
	ld hl,lf00a
	ld (hl),#0e
	ld (lf009),a
	ret
.lf075
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09
.lf096
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12
.lf0b7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #24
;
.play_music
.lf0d8
;
	ld a,(lf009)
	and a
	ret z
.lf0de equ $ + 1
	ld a,#00
	ld (lf12b),a
	ld a,(lf00b)
	ld hl,lf426
	add (hl)
	ld (hl),a
	jr nc,lf103
	ld b,#00
	ld ix,lf075
	call lf298
	ld ix,lf096
	call lf298
	ld ix,lf0b7
	call lf298
.lf103
	ld ix,lf075
	call lf32c
	ld (lf427),hl
	ld (lf42f),a
	ld ix,lf096
	call lf32c
	ld (lf429),hl
	ld (lf430),a
	ld ix,lf0b7
	call lf32c
	ld (lf42b),hl
	ld (lf431),a
.lf12b equ $ + 1
	ld a,#00
	ld (lf42d),a
	ld a,(lf009)
	and a
	jr nz,lf145
	ld (lf42f),a
	ld (lf430),a
	ld (lf431),a
	ld a,#3f
	ld (lf42e),a
	jr lf16d
.lf145
	ld a,(lf00a)
	and #0f
.lf14a
	xor #0f
	jr z,lf16d
	ld b,a
	ld a,(lf42f)
	sub b
	jr nc,lf156
	xor a
.lf156
	ld (lf42f),a
	ld a,(lf430)
	sub b
	jr nc,lf160
	xor a
.lf160
	ld (lf430),a
	ld a,(lf431)
	sub b
	jr nc,lf16a
	xor a
.lf16a
	ld (lf431),a
.lf16d
	ld hl,lf431
	ld d,#0a
.lf172
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,lf600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,lf172
	ret
.lf193
	ld de,#0a00
.lf196
	call lf1a0
	dec d
	jp p,lf196
	ld de,#073f
.lf1a0
	ld b,#f4
	out (c),d
	ld bc,lf600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
;
.stop_music
.lf1bb
;
	xor a
	ld (lf009),a
	ld (lf42f),a
	ld (lf430),a
	ld (lf431),a
	jr lf193
	db #c3,#b1,#aa,#b4,#77,#00,#00,#0e
	db #97,#88,#4d,#37,#5f,#b0,#03,#bd
	db #88
	pop hl
	jp lf006
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,lf201
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lf201
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lf2a5
	ld a,(ix+#20)
	ld c,a
	and #07
	ld hl,lf40b
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lf2a5
	ld a,(ix+#20)
	ld c,a
	and #38
	ld hl,lf40b
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lf2a5
	ld hl,lf40b
	ld a,(ix+#20)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lf2a5
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lf2a5
	ld a,(de)
	inc de
	ld (lf35f),a
	jr lf2a5
	ld a,(de)
	inc de
	ld (ix+#1f),a
	jr lf2a5
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr lf2a5
	ld (ix+#1d),b
	jr lf2a5
	ld (ix+#1d),#c0
	jr lf2a5
	set 1,(ix+#00)
	jr lf2a5
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lf2d4
	jr lf2d0
.lf298
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lf2a5
	ld a,(de)
	inc de
	and a
	jp m,lf2e1
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lf2b7
	ld (lf0de),a
.lf2b7
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.lf2d0
	set 5,(ix+#00)
.lf2d4
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.lf2e1
	cp #c0
	jr c,lf324
	add #20
	jr c,lf305
	add #10
	jr c,lf30c
	add #10
	ld c,a
	ld hl,lf4f4
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp lf2a5
.lf305
	inc a
	ld (ix+#11),a
	jp lf2a5
.lf30c
	ld hl,lf52f
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp lf2a5
.lf324
	ld hl,lf14a
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lf32c
	ld c,(ix+#00)
	bit 5,c
	jr z,lf35e
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,lf358
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,lf358
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.lf358
	ld a,(ix+#18)
	ld (ix+#13),a
.lf35f equ $ + 1
.lf35e
	ld a,#00
	add (ix+#12)
	add (ix+#1f)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,lf37b
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.lf37b
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lf434
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lf3dc
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lf3a5
	bit 0,c
	jr nz,lf3c3
.lf3a5
	bit 5,l
	jr nz,lf3b5
	sub (ix+#1b)
	jr nc,lf3c0
	set 5,(ix+#1d)
	sub a
	jr lf3c0
.lf3b5
	add (ix+#1b)
	cp b
	jr c,lf3c0
	res 5,(ix+#1d)
	ld a,b
.lf3c0
	ld (ix+#1c),a
.lf3c3
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lf3ce
	dec d
.lf3ce
	add #a0
	jr c,lf3da
.lf3d2
	sla e
	rl d
	add #18
	jr nc,lf3d2
.lf3da
	add hl,de
	ex de,hl
.lf3dc
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lf407
	ld b,(ix+#0e)
	djnz lf404
	ld c,(ix+#0d)
	bit 7,c
	jr z,lf3f3
	dec b
.lf3f3
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lf407
.lf404
	ld (ix+#0e),b
.lf407
	cpl
	and #03
.lf40b equ $ + 1
	ld a,#38
	jr nz,lf418
	ld a,(lf0de)
	xor #08
	ld (lf12b),a
	ld a,#07
.lf418
	ld hl,lf42e
	xor (hl)
	and (ix+#20)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.lf42d equ $ + 7
.lf42b equ $ + 5
.lf429 equ $ + 3
.lf427 equ $ + 1
.lf426
	db #00,#00,#00,#00,#00,#00,#00,#00
.lf431 equ $ + 3
.lf430 equ $ + 2
.lf42f equ $ + 1
.lf42e
	db #3f,#0f,#0f,#0f,#00,#00
.lf434
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.lf4f4
	db #0f,#0f,#11,#13,#15,#18,#1a,#1c
.lf503 equ $ + 7
	db #1e,#20,#21,#22,#23,#24,#25,#80
	db #00,#03,#87,#00,#04,#87,#04,#07
	db #8a,#00,#00,#0c,#8c,#07,#0c,#8f
	db #07,#0c,#90,#03,#07,#8c,#04,#07
	db #8c,#00,#8c,#00,#83,#00,#84,#00
	db #85,#00,#87,#0c,#00,#00,#00,#00
	db #00,#00,#80
.lf52f
	dw lf550,lf558,lf564,lf576
	dw lf588,lf58f,lf596,lf5a1
	dw lf5aa,lf5bb,lf5cc,lf5dd
	dw lf5ee,lf5f4,lf603,lf606
.lf550 equ $ + 1
	db #01,#0f,#0d,#0b,#08,#05,#02,#87
.lf558 equ $ + 1
	db #01,#0e,#0d,#0b,#09,#07,#05,#04
.lf564 equ $ + 5
	db #03,#02,#01,#87,#01,#0f,#0e,#0d
	db #0c,#0d,#0c,#0a,#09,#0b,#0a,#08
.lf576 equ $ + 7
	db #07,#09,#08,#06,#05,#87,#01,#0f
	db #0f,#0d,#0b,#0d,#0c,#0a,#09,#0b
	db #0a,#08,#07,#09,#08,#06,#05,#87
.lf588 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#87,#01
.lf596 equ $ + 7
.lf58f
	db #0e,#0d,#0c,#0b,#0a,#87,#01,#08
	db #0a,#0c,#0d,#0e,#0e,#0d,#0d,#0c
.lf5a1 equ $ + 2
	db #87,#02,#08,#09,#0a,#0b,#0c,#0d
.lf5aa equ $ + 3
	db #0e,#87,#08,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.lf5bb equ $ + 4
	db #02,#01,#87,#08,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.lf5cc equ $ + 5
	db #03,#02,#01,#87,#0a,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.lf5dd equ $ + 6
	db #04,#03,#02,#01,#87,#04,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.lf5ee equ $ + 7
	db #05,#04,#03,#02,#01,#87,#08,#0f
.lf5f4 equ $ + 5
	db #0e,#0d,#0c,#87,#01,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.lf606 equ $ + 7
.lf603 equ $ + 4
.lf600 equ $ + 1
	db #02,#01,#87,#01,#0f,#87,#01,#0c
	db #87
.lf608
	db #2f
	dw lf68d,lf60f,lf6bb
.lf60f
	dw lf6cb,lf6cb,lf6cb,lf6cb
	dw lf6cb,lf6cb,lf6cb,lf6cb
	dw lf6cb,lf6cb,lf6cb,lf6cb
	dw lf6cb,lf6cb,lf6cb,lf6cb
	dw lf6ec,lf6ec,lf6cb,lf6cb
	dw lf6cb,lf6cb,lf6cb,lf6cb
	dw lf6cb,lf6cb,lf6cb,lf6cb
	dw lf6cb,lf6cb,lf6cb,lf6cb
	dw lf6cb,lf6cb,lf6ec,lf6ec
	dw lf6cb,lf6cb,lf6cb,lf6cb
	dw lf6cb,lf6cb,lf6cb,lf6cb
	dw lf6cb,lf6cb,lf6cb,lf6cb
	dw lf6cb,lf6cb,lf6cb,lf6cb
	dw lf6ec,lf6ec,lf6cb,lf6cb
	dw lf6cb,lf6cb,lf6cb,lf6cb
	dw lf6cb,lf6cb,#0000
.lf68d
	dw lf810,lf708,lf708,lf708
	dw lf708,lf72f,lf708,lf708
	dw lf708,lf708,lf813,lf72f
	dw lf708,lf708,lf708,lf708
	dw lf816,lf72f,lf708,lf708
	dw lf708,lf708,#0000
.lf6bb
	dw lf77b,lf7c5,lf77b,lf7c5
	dw lf77b,lf7c5,lf77b,#0000
.lf6cb
	db #8a,#88,#01,#01,#e1,#db,#0c,#8b
	db #d0,#41,#8a,#8d,#84,#1e,#01,#24
	db #db,#0c,#8b,#d0,#41,#8a,#db,#07
	db #d0,#8d,#84,#1e,#02,#22,#db,#07
.lf6ec equ $ + 1
	db #87,#db,#07,#8b,#d0,#41,#8a,#8d
	db #84,#1e,#01,#24,#db,#07,#8b,#d0
	db #41,#8a,#db,#0e,#d0,#8d,#84,#1e
.lf708 equ $ + 5
	db #02,#22,#db,#0e,#87,#8a,#d1,#88
	db #01,#01,#e0,#13,#18,#1c,#18,#13
	db #18,#1c,#18,#13,#18,#1c,#18,#13
	db #18,#1c,#18,#13,#18,#1f,#18,#13
	db #18,#1f,#18,#13,#18,#1f,#18,#13
.lf72f equ $ + 4
	db #18,#1f,#18,#87,#e0,#80,#d8,#e3
	db #24,#e1,#1f,#e3,#24,#e1,#1f,#24
	db #28,#e5,#2d,#2b,#e3,#28,#da,#e3
	db #30,#e1,#2b,#e3,#30,#e1,#2b,#30
	db #34,#e5,#39,#37,#e3,#2b,#d8,#e3
	db #24,#e1,#1f,#e3,#24,#e1,#1f,#24
	db #28,#e5,#2d,#2b,#e3,#28,#da,#e3
	db #30,#e1,#2b,#e3,#30,#e1,#2b,#30
	db #34,#e5,#39,#37,#e3,#32,#26,#24
	db #23,#21,#1f,#1d,#1c,#e2,#1a,#87
.lf77b
	db #8a,#db,#88,#01,#01,#90,#f4,#e5
	db #24,#e3,#24,#e1,#1f,#21,#1f,#e5
	db #24,#e3,#24,#e1,#1f,#21,#1f,#e5
	db #28,#e3,#28,#e1,#1f,#21,#1f,#e5
	db #28,#e3,#28,#e1,#1f,#21,#1f,#e5
	db #24,#e3,#24,#e1,#1f,#21,#1f,#e5
	db #24,#e3,#24,#e1,#1f,#21,#1f,#e5
	db #2b,#e3,#2b,#e1,#28,#29,#28,#e5
	db #2b,#e3,#2b,#e1,#28,#29,#28,#90
.lf7c5 equ $ + 2
	db #00,#87,#d8,#e3,#24,#e1,#1f,#e3
	db #24,#e1,#1f,#24,#28,#e5,#2d,#2b
	db #e3,#28,#da,#e3,#30,#e1,#2b,#e3
	db #30,#e1,#2b,#30,#34,#e5,#39,#37
	db #e3,#2b,#ce,#d8,#e3,#24,#e1,#1f
	db #e3,#24,#e1,#1f,#24,#28,#e5,#2d
	db #2b,#e3,#28,#da,#e3,#30,#e1,#2b
	db #e3,#30,#e1,#2b,#30,#34,#e5,#39
	db #37,#e3,#32,#c0,#26,#24,#23,#21
.lf810 equ $ + 5
	db #1f,#1d,#1c,#1a,#87,#89,#02,#87
.lf816 equ $ + 3
.lf813
	db #89,#03,#87,#89,#05,#87
;
.music_info
	db "World Class Rugby (1991)(Audiogenic Software)(David Whittaker)",0
	db "",0

	read "music_end.asm"
