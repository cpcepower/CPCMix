; Music of Revolog (1989)(Logon System)(Rob Hubbard)(Atari St)
; Ripped by Megachur the 20/10/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "REVOLOG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0245

	read "music_header.asm"

;
.init_music
; .l0245
;
	ex af,af'	; init music
	xor a
	ld (l071d),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l071f
	add hl,bc
	ld ix,l0292
	ld c,#20
	ld a,#03
.l025e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
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
	jr nz,l025e
	inc a
	ld (l036f),a
	ld (l071d),a
	ret
.l0292
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l02b2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l02d2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l02f0 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#24
;
.play_music
; .l02f2
;
	ld a,(l071d)
	and a
	ret z
.l02f8 equ $ + 1
	ld a,#00
	ld (l0346),a
	ld hl,l036f
	dec (hl)
	jr nz,l031e
	ld b,#00
	ld ix,l0292
	call l0442
	ld ix,l02b2
	call l0442
	ld ix,l02d2
	call l0442
	ld hl,l036f
.l031d equ $ + 1
	ld (hl),#01
.l031e
	ld ix,l0292
	call l04ef
	ld (l0610),hl
	ld (l0618),a
	ld ix,l02b2
	call l04ef
	ld (l0612),hl
	ld (l0619),a
	ld ix,l02d2
	call l04ef
	ld (l0614),hl
	ld (l061a),a
.l0346 equ $ + 1
	ld a,#00
	srl a
	ld (l0616),a
	ld hl,l061d
	ld d,#0d
	xor a
.l0352
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	dec hl
	dec d
	jp p,l0352
	ret
.l036f
	db #00,#bd,#a5,#a9,#ae,#6a,#9b,#96
	db #0e,#85,#7c,#48,#37,#56,#aa,#04
	db #b1,#b6,#bb
	jp #0240
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
	jr nz,l03a7
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l03a7
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l0454
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l05f1
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l0454
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l05f1
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l0454
	ld hl,l05f1
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	jp l0454
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jp l0454
	ld a,(de)
	inc de
	ld (l02f8),a
	jp l0454
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l0454
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l0454
	ld (ix+#1d),b
	jr l0454
	ld (ix+#1d),#40
	jr l0454
	ld (ix+#1d),#c0
	jr l0454
	set 1,(ix+#00)
	jr l0454
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l0481
	set 4,(ix+#00)
	jr l0454
	set 0,(ix+#1e)
	jr l0454
.l0442
	dec (ix+#10)
	jr nz,l048e
	ld (ix+#00),b
	res 0,(ix+#1e)
	ld e,(ix+#01)
	ld d,(ix+#02)
.l0454
	ld a,(de)
	inc de
	and a
	jp m,l049f
	ld (ix+#12),a
	bit 4,(ix+#00)
	jr nz,l0481
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	res 4,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l0481
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l048e
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l049b
	inc (ix+#12)
	ret
.l049b
	dec (ix+#12)
	ret
.l049f
	cp #b8
	jr c,l04e7
	add #20
	jr c,l04cb
	add #10
	jr c,l04d2
	add #10
	jr nc,l04c4
	ld c,a
	ld hl,l06e2
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr l0454
.l04c4
	add #09
	ld (l031d),a
	jr l0454
.l04cb
	inc a
	ld (ix+#11),a
	jp l0454
.l04d2
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp l0454
.l04e7
	ld hl,l02f0
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l04ef
	ld c,(ix+#00)
	bit 5,c
	jr z,l053a
	ld a,(ix+#16)
	sub #10
	jr nc,l0522
	bit 6,c
	jr z,l0527
	add (ix+#13)
	jr nc,l0507
	sbc a
.l0507
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l051d
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l053a
.l051d
	ld (ix+#18),a
	jr l053a
.l0522
	ld (ix+#16),a
	jr l053a
.l0527
	cpl
	sub #0f
	add (ix+#13)
	jr c,l0530
	sub a
.l0530
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l053a
	res 5,c
.l053a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr nz,l054c
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l054c
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add (ix+#12)
	ld hl,l061e
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l05b0
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l0579
	bit 0,c
	jr nz,l0597
.l0579
	bit 5,l
	jr nz,l0589
	sub (ix+#1b)
	jr nc,l0594
	set 5,(ix+#1d)
	sub a
	jr l0594
.l0589
	add (ix+#1b)
	cp b
	jr c,l0594
	res 5,(ix+#1d)
	ld a,b
.l0594
	ld (ix+#1c),a
.l0597
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l05a2
	dec d
.l05a2
	add #a0
	jr c,l05ae
.l05a6
	sla e
	rl d
	add #18
	jr nc,l05a6
.l05ae
	add hl,de
	ex de,hl
.l05b0
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l05db
	ld b,(ix+#0e)
	djnz l05d8
	ld c,(ix+#0d)
	bit 7,c
	jr z,l05c7
	dec b
.l05c7
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l05db
.l05d8
	ld (ix+#0e),b
.l05db
	bit 0,(ix+#1e)
	jr z,l05ed
	res 0,(ix+#1e)
	xor a
	ld (l0346),a
	ld a,#07
	jr l05fe
.l05ed
	cpl
	and #03
.l05f1 equ $ + 1
	ld a,#38
	jr nz,l05fe
	ld a,(l02f8)
	xor #08
	ld (l0346),a
	ld a,#07
.l05fe
	ld hl,l0617
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	srl h
	rr l
	ld a,(ix+#13)
	ret
.l0617 equ $ + 7
.l0616 equ $ + 6
.l0614 equ $ + 4
.l0612 equ $ + 2
.l0610
	db #00,#00,#00,#00,#00,#00,#00,#38
.l061d equ $ + 5
.l061a equ $ + 2
.l0619 equ $ + 1
.l0618
	db #0f,#0f,#0e,#00,#00,#00
.l061e
	dw #0eee,#0e17,#0d4d,#0c8e
	dw #0bd9,#0b2f,#0a8e,#09f7
	dw #0967,#08e0,#0861,#07e8
	dw #0777,#070b,#06a6,#0647
	dw #05ec,#0597,#0547,#04fb
	dw #04b3,#0470,#0430,#03f4
	dw #03bb,#0385,#0353,#0323
	dw #02f6,#02cb,#02a3,#027d
	dw #0259,#0238,#0218,#01fa
	dw #01dd,#01c2,#01a9,#0191
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010c,#00fd
	dw #00ee,#00e1,#00d4,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0086,#007e
	dw #0077,#0070,#006a,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0043,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.l06e2 equ $ + 4
	db #3f,#08,#24,#06,#0b,#0c,#0f,#11
	db #13,#15,#17,#19,#1d,#20,#28,#00
	db #87,#00,#07,#0c,#87,#00,#04,#87
	db #00,#02,#87,#00,#03,#87,#00,#05
	db #87,#00,#0e,#87,#0c,#0c,#0c,#18
	db #87,#00,#04,#07,#87,#00,#00,#05
	db #05,#07,#07,#0c,#0c,#87,#00,#00
	db #06,#06,#08,#08,#0c,#0c,#87
.l071d
	db #00,#00
.l0725 equ $ + 6
.l071f
	dw l0725,l076f,l0885,l0d80
	dw l0e51,l0e51,l0e51,l0e51
	dw l0e51,l0e51,l0e51,l0e51
	dw l0d19,l09fa,l09a9,l09a9
	dw l0a2d,l0a8c,l0d19,l09fa
	dw l09a9,l09a9,l0d19,l0d67
	dw l0d67,l0d75,l0e51,l0e51
	dw l0e51,l0e51,l0d19,l0a2d
	dw l0a8c,l0d19,l09fa,l09a3
	dw l0a03,l0a03,l0d19,#0000
.l076f
	dw l0af5,l0af5,l0af5,l0af5
	dw l0af5,l0af5,l0af5,l0af5
	dw l0abf,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
	dw l0cda,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
	dw l0abf,l0b1a,l0b1a,l0b1a
	dw l0b1a,l0b1a,l0b1a,l0b1a
	dw l0b1a,l0b50,l0b50,l0b85
	dw l0b50,l0b50,l0be6,l0be6
	dw l0c17,l0c17,l0c48,l0c48
	dw l0c17,l0c17,l0c79,l0cda
	dw l0abf,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
	dw l0cda,l0d93,l0d93,l0d93
	dw l0d93,l0d93,l0d93,l0d93
	dw l0d93,l0d93,l0d93,l0d93
	dw l0d93,l0cda,l0b1a,l0b1a
	dw l0b1a,l0b1a,l0b1a,l0b1a
	dw l0b1a,l0b1a,l0b50,l0b50
	dw l0b85,l0b50,l0b50,l0be6
	dw l0be6,l0c17,l0c17,l0c48
	dw l0c48,l0c17,l0c17,l0c79
	dw l0cda,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
	dw l0abf,l0abf,l0abf,l0abf
.l0885 equ $ + 6
	dw l0abf,l0cda,#0000,l0f11
	dw l0f11,l0f11,l0f11,l0f11
	dw l0f11,l0f11,l0f11,l0f11
	dw l0f11,l0f11,l0f11,l0f11
	dw l0f11,l0f11,l0f11,l0eec
	dw l0eec,l0eec,l0eec,l0d3c
	dw l0e7a,l0eb8,l0ed2,l0e9e
	dw l0e7a,l0eb8,l0ed2,l0e9e
	dw l0e7a,l0eb8,l0ed2,l0e9e
	dw l0e7a,l0eb8,l0ed2,l0e9e
	dw l0eec,l0f7e,l0f2d,l0f63
	dw l0eec,l0f7e,l0f2d,l0f63
	dw l0f7e,l0f7e,l0f63,l0f63
	dw l0f48,l0f48,l0f2d,l0f2d
	dw l0eec,l0eec,l0f63,l0f63
	dw l0f48,l0f48,l0f2d,l0f2d
	dw l0d3c,l0e7a,l0eb8,l0ed2
	dw l0e9e,l0e7a,l0eb8,l0ed2
	dw l0e9e,l0e7a,l0eb8,l0ed2
	dw l0e9e,l0e7a,l0eb8,l0ed2
	dw l0e9e,l0d3c,l0e07,l0e07
	dw l0e07,l0e07,l0e07,l0e07
	dw l0e07,l0e07,l0e07,l0e07
	dw l0e07,l0e07,l0d3c,l0eec
	dw l0f7e,l0f2d,l0f63,l0eec
	dw l0f7e,l0f2d,l0f63,l0f7e
	dw l0f7e,l0f63,l0f63,l0f48
	dw l0f48,l0f2d,l0f2d,l0eec
	dw l0eec,l0f63,l0f63,l0f48
	dw l0f48,l0f2d,l0f2d,l0d3c
	dw l0e7a,l0eb8,l0ed2,l0e9e
	dw l0e7a,l0eb8,l0ed2,l0e9e
	dw l0e7a,l0eb8,l0ed2,l0e9e
	dw l0e7a,l0eb8,l0ed2,l0e9e
	dw l0e7a,l0eb8,l0ed2,l0e9e
	dw l0e7a,l0eb8,l0ed2,l0e9e
	dw l0d3c,#0000
.l09a9 equ $ + 6
.l09a3
	db #c7,#81,#87,#ff,#80,#87,#c1,#8a
	db #88,#01,#02,#81,#df,#00,#11,#04
	db #e0,#2d,#2d,#2d,#2d,#34,#34,#2d
	db #2d,#30,#30,#e0,#34,#34,#2d,#2d
	db #34,#34,#37,#37,#37,#37,#e0,#37
	db #37,#35,#35,#35,#35,#35,#35,#34
	db #34,#34,#34,#e0,#30,#30,#30,#30
	db #35,#35,#2d,#2d,#30,#30,#35,#35
	db #e0,#2d,#2d,#35,#35,#32,#32,#32
	db #32,#32,#32,#30,#30,#e0,#30,#30
.l09fa equ $ + 7
	db #30,#30,#32,#32,#32,#32,#87,#c0
	db #df,#00,#61,#02,#88,#01,#02,#83
.l0a03
	db #e5,#2d,#2f,#e3,#30,#e5,#34,#32
	db #e3,#30,#e5,#2d,#30,#e3,#35,#32
	db #32,#e1,#30,#e5,#2f,#2d,#30,#e3
	db #34,#e5,#37,#35,#e3,#34,#e5,#30
	db #34,#e3,#35,#32,#32,#e1,#30,#e5
.l0a2d equ $ + 2
	db #2f,#87,#c0,#8a,#88,#01,#02,#82
	db #df,#00,#61,#02,#e1,#80,#e1,#34
	db #e0,#32,#e1,#30,#e4,#2d,#e1,#2b
	db #2d,#e1,#80,#e1,#34,#e0,#32,#e1
	db #30,#e0,#32,#e3,#80,#80,#e1,#80
	db #e1,#32,#e0,#30,#e1,#2f,#e4,#30
	db #e1,#2f,#2d,#ef,#2b,#e1,#80,#e1
	db #34,#e0,#32,#e1,#30,#e4,#2d,#e1
	db #30,#34,#e1,#80,#e1,#39,#e0,#37
	db #e1,#35,#e2,#32,#e1,#80,#e3,#80
	db #e1,#80,#e1,#37,#e0,#35,#e1,#34
	db #e4,#35,#e3,#37,#e6,#35,#e8,#34
.l0a8c equ $ + 1
	db #87,#c0,#8a,#88,#01,#02,#83,#df
	db #00,#f1,#02,#f7,#32,#e3,#34,#35
	db #f7,#30,#e3,#80,#80,#f7,#30,#e3
	db #32,#34,#ef,#2f,#ef,#c6,#86,#1d
	db #c0,#f7,#30,#e3,#34,#35,#ff,#34
	db #f7,#35,#e3,#37,#39,#ef,#37,#ef
.l0abf equ $ + 4
	db #c6,#86,#1d,#87,#c0,#df,#00,#11
	db #0f,#e1,#8b,#89,#1f,#8d,#00,#e0
	db #8a,#91,#28,#91,#2d,#8b,#89,#07
	db #8d,#00,#8a,#91,#30,#91,#34,#8b
	db #89,#1f,#8d,#00,#e1,#8d,#00,#e0
	db #8a,#91,#2d,#91,#2d,#8b,#89,#07
	db #8d,#00,#8a,#91,#34,#91,#32,#91
.l0af5 equ $ + 2
	db #30,#87,#c0,#df,#00,#11,#0f,#e1
	db #8b,#89,#1f,#8d,#00,#80,#e0,#89
	db #07,#8d,#00,#80,#80,#89,#1f,#8d
	db #00,#e1,#8d,#00,#e0,#80,#80,#89
.l0b1a equ $ + 7
	db #07,#8d,#00,#80,#80,#80,#87,#c0
	db #df,#00,#11,#0f,#e1,#8b,#89,#1f
	db #8d,#00,#e0,#8a,#91,#1c,#91,#1f
	db #8b,#89,#07,#8d,#00,#8a,#91,#24
	db #91,#21,#8b,#89,#1f,#8d,#00,#e1
	db #8d,#00,#e0,#8a,#91,#1f,#91,#21
	db #8b,#89,#07,#8d,#00,#8a,#91,#24
.l0b50 equ $ + 5
	db #91,#21,#91,#1f,#87,#c2,#df,#00
	db #21,#08,#e1,#8b,#89,#1f,#8d,#00
	db #e1,#8a,#91,#29,#e0,#8b,#89,#07
	db #8d,#00,#e1,#8a,#91,#29,#e0,#8b
	db #89,#1f,#8d,#00,#e1,#8d,#00,#e0
	db #8a,#91,#29,#91,#1d,#8b,#89,#07
	db #8d,#00,#e1,#8a,#91,#29,#e0,#91
.l0b85 equ $ + 2
	db #29,#87,#c3,#e1,#8b,#89,#1f,#8d
	db #00,#e1,#8a,#91,#29,#e0,#8b,#89
	db #07,#8d,#00,#e1,#8a,#91,#29,#e0
	db #8b,#89,#1f,#8d,#00,#e1,#8d,#00
	db #e0,#8a,#91,#29,#91,#1d,#8b,#89
	db #07,#8d,#00,#e1,#8a,#91,#29,#e0
	db #91,#29,#c4,#e1,#8b,#89,#1f,#8d
	db #00,#e1,#8a,#91,#28,#e0,#8b,#89
	db #07,#8d,#00,#e1,#8a,#91,#28,#e0
	db #8b,#89,#1f,#8d,#00,#e1,#8d,#00
	db #e0,#8a,#91,#28,#91,#1c,#8b,#89
	db #07,#8d,#00,#e1,#8a,#91,#28,#e0
.l0be6 equ $ + 3
	db #91,#28,#87,#c2,#e1,#8b,#89,#1f
	db #8d,#00,#e1,#8a,#91,#2b,#e0,#8b
	db #89,#07,#8d,#00,#e1,#8a,#91,#2b
	db #e0,#8b,#89,#1f,#8d,#00,#e1,#8d
	db #00,#e0,#8a,#91,#2b,#91,#1f,#8b
	db #89,#07,#8d,#00,#e1,#8a,#91,#2b
.l0c17 equ $ + 4
	db #e0,#91,#2b,#87,#c4,#e1,#8b,#89
	db #1f,#8d,#00,#e1,#8a,#91,#2d,#e0
	db #8b,#89,#07,#8d,#00,#e1,#8a,#91
	db #2d,#e0,#8b,#89,#1f,#8d,#00,#e1
	db #8d,#00,#e0,#8a,#91,#2d,#91,#21
	db #8b,#89,#07,#8d,#00,#e1,#8a,#91
.l0c48 equ $ + 5
	db #2d,#e0,#91,#2d,#87,#c5,#e1,#8b
	db #89,#1f,#8d,#00,#e1,#8a,#91,#2b
	db #e0,#8b,#89,#07,#8d,#00,#e1,#8a
	db #91,#2b,#e0,#8b,#89,#1f,#8d,#00
	db #e1,#8d,#00,#e0,#8a,#91,#2b,#91
	db #1f,#8b,#89,#07,#8d,#00,#e1,#8a
.l0c79 equ $ + 6
	db #91,#2b,#e0,#91,#2b,#87,#c3,#e1
	db #8b,#89,#1f,#8d,#00,#e1,#8a,#91
	db #30,#e0,#8b,#89,#07,#8d,#00,#e1
	db #8a,#91,#30,#e0,#8b,#89,#1f,#8d
	db #00,#e1,#8d,#00,#e0,#8a,#91,#30
	db #91,#24,#8b,#89,#07,#8d,#00,#e1
	db #8a,#91,#30,#e0,#91,#30,#c4,#e1
	db #8b,#89,#1f,#8d,#00,#e1,#8a,#91
	db #2f,#e0,#8b,#89,#07,#8d,#00,#e1
	db #8a,#91,#2f,#e0,#8b,#89,#1f,#8d
	db #00,#e1,#8d,#00,#e0,#8a,#91,#2f
	db #91,#23,#8b,#89,#07,#8d,#00,#e1
.l0cda equ $ + 7
	db #8a,#91,#2f,#e0,#91,#2f,#87,#e1
	db #8b,#89,#1f,#8d,#00,#89,#0c,#8d
	db #00,#8d,#00,#89,#1f,#8d,#00,#e0
	db #8d,#00,#89,#0c,#8d,#00,#e1,#8d
	db #00,#8d,#00,#e0,#89,#1f,#8d,#00
	db #e1,#8d,#00,#e0,#89,#0c,#8d,#00
	db #e1,#8d,#00,#8d,#00,#8d,#00,#e3
	db #8d,#00,#e0,#89,#1f,#8d,#00,#8d
.l0d19 equ $ + 6
	db #00,#8d,#00,#8d,#00,#87,#c5,#81
	db #df,#00,#11,#04,#e1,#28,#28,#28
	db #28,#e0,#28,#28,#e1,#28,#28,#e0
	db #28,#e1,#28,#e0,#28,#e1,#28,#28
	db #28,#e3,#28,#e0,#34,#30,#2d,#28
.l0d3c equ $ + 1
	db #87,#df,#00,#61,#02,#e1,#91,#15
	db #91,#15,#91,#15,#91,#15,#e0,#91
	db #15,#91,#15,#e1,#91,#15,#91,#15
	db #e0,#91,#15,#e1,#15,#e0,#91,#15
	db #e1,#91,#15,#91,#15,#91,#15,#e3
.l0d67 equ $ + 4
	db #91,#15,#80,#87,#8a,#d1,#01,#11
	db #f1,#88,#06,#06,#82,#c6,#ff,#86
.l0d75 equ $ + 2
	db #1f,#87,#ff,#c0,#39,#8f,#3c,#8f
.l0d80 equ $ + 5
	db #3b,#34,#2d,#8f,#87,#bd,#8a,#df
	db #00,#f1,#01,#88,#02,#06,#82,#c0
	db #ff,#21,#24,#1d,#1a,#18,#15,#87
.l0d93
	db #c0,#df,#00,#11,#0f,#e0,#8b,#89
	db #1f,#8d,#00,#e1,#89,#07,#8d,#00
	db #e0,#89,#1f,#8d,#00,#e1,#89,#07
	db #8d,#00,#e0,#89,#1f,#8d,#00,#8d
	db #00,#e0,#8b,#89,#1f,#8d,#00,#e1
	db #89,#07,#8d,#00,#e0,#89,#1f,#8d
	db #00,#e1,#89,#07,#8d,#00,#e0,#89
	db #1f,#8d,#00,#8d,#00,#e0,#8b,#89
	db #1f,#8d,#00,#e1,#89,#07,#8d,#00
	db #e0,#89,#1f,#8d,#00,#e1,#89,#07
	db #8d,#00,#e0,#89,#1f,#8d,#00,#8d
	db #00,#e0,#8b,#89,#1f,#8d,#00,#e1
	db #89,#07,#8d,#00,#e0,#89,#1f,#8d
	db #00,#e1,#89,#07,#8d,#00,#e0,#8d
.l0e07 equ $ + 4
	db #00,#8d,#00,#87,#c0,#df,#00,#12
	db #0f,#e0,#91,#21,#91,#45,#91,#21
	db #91,#21,#91,#45,#91,#21,#91,#21
	db #91,#21,#e0,#91,#21,#91,#45,#91
	db #21,#91,#21,#91,#45,#91,#21,#91
	db #21,#91,#21,#e0,#91,#21,#91,#45
	db #91,#21,#91,#21,#91,#45,#91,#21
	db #91,#21,#91,#21,#e0,#91,#21,#91
	db #45,#91,#21,#91,#21,#91,#45,#91
.l0e51 equ $ + 6
	db #21,#91,#45,#91,#45,#87,#df,#00
	db #21,#0f,#8a,#81,#e1,#c4,#91,#39
	db #c0,#e0,#91,#28,#90,#34,#91,#28
	db #90,#34,#91,#24,#90,#30,#e1,#91
	db #21,#c4,#91,#39,#e0,#c0,#91,#2b
.l0e7a equ $ + 7
	db #90,#2d,#91,#37,#90,#39,#87,#8a
	db #df,#00,#41,#03,#c0,#88,#01,#01
	db #82,#e0,#21,#15,#1f,#21,#e1,#91
	db #84,#28,#01,#24,#e1,#21,#e0,#21
	db #15,#1f,#21,#e1,#91,#84,#28,#01
.l0e9e equ $ + 3
	db #24,#21,#87,#e0,#1a,#0e,#18,#1a
	db #e1,#91,#84,#28,#01,#24,#e1,#1a
	db #e0,#1a,#0e,#18,#1a,#e1,#91,#84
.l0eb8 equ $ + 5
	db #28,#01,#24,#1a,#87,#e0,#18,#0c
	db #17,#18,#e1,#91,#84,#28,#01,#24
	db #e1,#18,#e0,#18,#0c,#17,#18,#e1
.l0ed2 equ $ + 7
	db #91,#84,#28,#01,#24,#18,#87,#e0
	db #1d,#11,#1c,#1d,#e1,#91,#84,#28
	db #01,#24,#e1,#1d,#e0,#1d,#11,#1c
	db #1d,#e1,#91,#84,#28,#01,#24,#1d
.l0eec equ $ + 1
	db #87,#8a,#df,#00,#61,#02,#c0,#88
	db #01,#01,#82,#e1,#91,#15,#91,#15
	db #e1,#91,#84,#28,#01,#24,#e0,#80
	db #e0,#91,#15,#e3,#91,#15,#e1,#91
.l0f11 equ $ + 6
	db #84,#28,#01,#24,#80,#87,#8a,#df
	db #00,#61,#02,#c0,#88,#01,#01,#82
	db #e3,#80,#e1,#91,#84,#28,#01,#24
	db #e5,#80,#e1,#91,#84,#28,#01,#24
.l0f2d equ $ + 2
	db #80,#87,#e1,#91,#13,#91,#13,#e1
	db #91,#84,#28,#01,#24,#e0,#80,#e0
	db #91,#13,#e3,#91,#13,#e1,#91,#84
.l0f48 equ $ + 5
	db #28,#01,#24,#80,#87,#e1,#91,#11
	db #91,#11,#e1,#91,#84,#28,#01,#24
	db #e0,#80,#e0,#91,#11,#e3,#91,#11
	db #e1,#91,#84,#28,#01,#24,#80,#87
.l0f63
	db #e1,#91,#0c,#91,#0c,#e1,#91,#84
	db #28,#01,#24,#e0,#80,#e0,#91,#0c
	db #e3,#91,#0c,#e1,#91,#84,#28,#01
.l0f7e equ $ + 3
	db #24,#80,#87,#e1,#91,#0e,#91,#0e
	db #e1,#91,#84,#28,#01,#24,#e0,#80
	db #e0,#91,#0e,#e3,#91,#0e,#e1,#91
	db #84,#28,#01,#24,#80,#87,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#20,#ff,#ff
;
; #1479
; xor a
; call #0245	; init
;
; #10c6
; call #02f2	; play
;
.music_info
	db "Revolog (1989)(Logon System)(Rob Hubbard)",0
	db "Atari St",0

	read "music_end.asm"
