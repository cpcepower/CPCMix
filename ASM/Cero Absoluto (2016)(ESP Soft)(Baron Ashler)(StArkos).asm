; Music of Cero Absoluto (2016)(ESP Soft)(Baron Ashler)(StArkos)
; Ripped by Megachur the 23/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CEROABSO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #01cd

	read "music_header.asm"

; test player
	ld de,l08ee		; music data
	call l0871		; init music
	call #bb03
.l01d6
	call #bd19
	halt
	call l01ef		; play music
	call #bb09
	jr nc,l01d6

	jp l08c6
	jp l0871
	jp l01ef
	jp l08c6
.l01ee
	nop
;
.play_music
.l01ef
;
	call l08e0
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l01ee),a
.l01ff equ $ + 1
	ld a,#01
	dec a
	jp nz,l03cb
.l0205 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0271
.l020a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l0218
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l0218
	rra
	jr nc,l0220
	ld de,l02c1
	ldi
.l0220
	rra
	jr nc,l0228
	ld de,l0326
	ldi
.l0228
	rra
	jr nc,l0230
	ld de,l038b
	ldi
.l0230
	ld de,l02a0
	ldi
	ldi
	ld de,l0305
	ldi
	ldi
	ld de,l036a
	ldi
	ldi
	rra
	jr nc,l024d
	ld de,l0270
	ldi
.l024d
	rra
	jr nc,l0258
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l025c),de
.l0258
	ld (l020a),hl
.l025c equ $ + 1
	ld hl,#0000
	ld (l027a),hl
	ld a,#01
	ld (l0275),a
	ld (l029b),a
	ld (l0300),a
	ld (l0365),a
.l0270 equ $ + 1
	ld a,#01
.l0271
	ld (l0205),a
.l0275 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0297
.l027a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l0294
	srl a
	jr nz,l0288
	ld a,(hl)
	inc hl
.l0288
	jr nc,l028f
	ld (l01ee),a
	jr l0292
.l028f
	ld (l03ca),a
.l0292
	ld a,#01
.l0294
	ld (l027a),hl
.l0297
	ld (l0275),a
.l029b equ $ + 1
	ld a,#01
	dec a
	jr nz,l02fc
.l02a0 equ $ + 1
	ld hl,#0000
	call l071d
	ld (l02a0),hl
	jr c,l02fc
	ld a,d
	rra
	jr nc,l02b3
	and #0f
	ld (l044d),a
.l02b3
	rl d
	jr nc,l02bb
	ld (l043b),ix
.l02bb
	rl d
	jr nc,l02fa
	ld a,e
.l02c1 equ $ + 1
	add #00
	ld (l044c),a
	ld hl,#0000
	ld (l0438),hl
	rl d
	jr c,l02da
.l02d0 equ $ + 1
	ld hl,#0000
	ld a,(l045d)
	ld (l0455),a
	jr l02f7
.l02da
	ld l,b
	add hl,hl
.l02dd equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l045d),a
	ld (l0455),a
	ld a,(hl)
	or a
	jr z,l02f3
	ld (l0548),a
.l02f3
	inc hl
	ld (l02d0),hl
.l02f7
	ld (l044f),hl
.l02fa
	ld a,#01
.l02fc
	ld (l029b),a
.l0300 equ $ + 1
	ld a,#01
	dec a
	jr nz,l0361
.l0305 equ $ + 1
	ld hl,#0000
	call l071d
	ld (l0305),hl
	jr c,l0361
	ld a,d
	rra
	jr nc,l0318
	and #0f
	ld (l0419),a
.l0318
	rl d
	jr nc,l0320
	ld (l0407),ix
.l0320
	rl d
	jr nc,l035f
	ld a,e
.l0326 equ $ + 1
	add #00
	ld (l0418),a
	ld hl,#0000
	ld (l0404),hl
	rl d
	jr c,l033f
.l0335 equ $ + 1
	ld hl,#0000
	ld a,(l0429)
	ld (l0421),a
	jr l035c
.l033f
	ld l,b
	add hl,hl
.l0342 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l0429),a
	ld (l0421),a
	ld a,(hl)
	or a
	jr z,l0358
	ld (l0548),a
.l0358
	inc hl
	ld (l0335),hl
.l035c
	ld (l041b),hl
.l035f
	ld a,#01
.l0361
	ld (l0300),a
.l0365 equ $ + 1
	ld a,#01
	dec a
	jr nz,l03c6
.l036a equ $ + 1
	ld hl,#0000
	call l071d
	ld (l036a),hl
	jr c,l03c6
	ld a,d
	rra
	jr nc,l037d
	and #0f
	ld (l03e8),a
.l037d
	rl d
	jr nc,l0385
	ld (l03d6),ix
.l0385
	rl d
	jr nc,l03c4
	ld a,e
.l038b equ $ + 1
	add #00
	ld (l03e7),a
	ld hl,#0000
	ld (l03d3),hl
	rl d
	jr c,l03a4
.l039a equ $ + 1
	ld hl,#0000
	ld a,(l03f8)
	ld (l03f0),a
	jr l03c1
.l03a4
	ld l,b
	add hl,hl
.l03a7 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l03f8),a
	ld (l03f0),a
	ld a,(hl)
	or a
	jr z,l03bd
	ld (l0548),a
.l03bd
	inc hl
	ld (l039a),hl
.l03c1
	ld (l03ea),hl
.l03c4
	ld a,#01
.l03c6
	ld (l0365),a
.l03ca equ $ + 1
	ld a,#01
.l03cb
	ld (l01ff),a
	ld iy,l055f
.l03d3 equ $ + 1
	ld hl,#0000
.l03d6 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l03d3),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l03e8 equ $ + 2
.l03e7 equ $ + 1
	ld de,#0000
.l03ea equ $ + 1
	ld hl,#0000
	call l056a
.l03f0 equ $ + 1
	ld a,#01
	dec a
	jr nz,l03f9
	ld (l03ea),hl
.l03f8 equ $ + 1
	ld a,#06
.l03f9
	ld (l03f0),a
	ld a,lx
	ex af,af'
	ld iy,l055d
.l0404 equ $ + 1
	ld hl,#0000
.l0407 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0404),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l0419 equ $ + 2
.l0418 equ $ + 1
	ld de,#0000
.l041b equ $ + 1
	ld hl,#0000
	call l056a
.l0421 equ $ + 1
	ld a,#01
	dec a
	jr nz,l042a
	ld (l041b),hl
.l0429 equ $ + 1
	ld a,#06
.l042a
	ld (l0421),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l055b
.l0438 equ $ + 1
	ld hl,#0000
.l043b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l0438),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l044d equ $ + 2
.l044c equ $ + 1
	ld de,#0000
.l044f equ $ + 1
	ld hl,#0000
	call l056a
.l0455 equ $ + 1
	ld a,#01
	dec a
	jr nz,l045e
	ld (l044f),hl
.l045d equ $ + 1
	ld a,#06
.l045e
	ld (l0455),a
	ex af,af'
	or lx
.l0464
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l055b
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	call l0546
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.l0544
	nop
	ret
.l0546
	ld a,(hl)
.l0548 equ $ + 1
	cp #ff
	ret z
	ld (l0548),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l055b
	nop
	nop
.l055d
	nop
	nop
.l055f
	nop
	nop
.l0561
	nop
.l0562
	nop
	nop
	nop
	nop
	nop
.l0567
	nop
	nop
.l0569
	nop
.l056a
	ld b,(hl)
	inc hl
	rr b
	jp c,l05c8
	rr b
	jr c,l0598
	ld a,b
	and #0f
	jr nz,l0581
	ld (iy+#07),a
	ld lx,#09
	ret
.l0581
	ld lx,#08
	sub d
	jr nc,l0588
	xor a
.l0588
	ld (iy+#07),a
	rr b
	call l06f1
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l0598
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l05a8
	ld (l0561),a
	ld lx,#00
.l05a8
	ld a,b
	and #0f
	sub d
	jr nc,l05af
	xor a
.l05af
	ld (iy+#07),a
	bit 5,c
	jr nz,l05b9
	inc lx
	ret
.l05b9
	rr b
	bit 6,c
	call l06e3
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l05c8
	rr b
	jr nc,l05db
	ld a,(l0455)
	ld c,a
	ld a,(l045d)
	cp c
	jr nz,l05db
	ld a,#fe
	ld (l0548),a
.l05db
	bit 1,b
	jp nz,l0694
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l0569),a
	bit 0,b
	jr z,l064a
	bit 2,b
	call l06e3
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l060a),a
	ld a,b
	exx
.l060a equ $ + 1
	jr l060b
.l060b
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,l062a
	inc hl
.l062a
	bit 5,a
	jr z,l063a
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l063a
	ld (l0567),hl
	exx
.l063e
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l0561),a
	ld lx,#00
	ret
.l064a
	bit 2,b
	call l06e3
	ld (l0567),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l065e),a
	ld a,b
	exx
.l065e equ $ + 1
	jr l065f
.l065f
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,l068b
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.l068b
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l063e
.l0694
	bit 0,b
	jr z,l069f
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l056a
.l069f
	ld (iy+#07),#10
	bit 5,b
	jr nz,l06ac
	ld lx,#09
	jr l06bf
.l06ac
	ld lx,#08
	ld hx,e
	bit 2,b
	call l06e3
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l06bf
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l0569),a
	rr b
	rr b
	bit 2,b
	call l06e3
	ld (l0567),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l0561),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l06e3
	jr z,l06f1
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.l06f1
	bit 4,b
	jr z,l0701
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.l0701
	ld a,e
	bit 3,b
	jr z,l070e
	add (hl)
	inc hl
	cp #90
	jr c,l070e
	ld a,#8f
.l070e
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l0751
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l071d
	ld a,(hl)
	inc hl
	srl a
	jr c,l0744
	sub #20
	jr c,l074e
	jr z,l0740
	dec a
	ld e,a
.l072b
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l0739
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l0739
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l0740
	ld e,(hl)
	inc hl
	jr l072b
.l0744
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l074e
	add #20
	ret
.l0751
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
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l0871
;
	ld hl,#0009
	add hl,de
	ld de,l03ca
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l02dd),hl
	ld (l0342),hl
	ld (l03a7),hl
	add hl,bc
	ld de,l0270
	ldi
	ld de,l02c1
	ldi
	ld de,l0326
	ldi
	ld de,l038b
	ldi
	ld de,l025c
	ldi
	ldi
	ld (l020a),hl
	ld a,#01
	ld (l01ff),a
	ld (l0205),a
	ld a,#ff
	ld (l0569),a
	ld hl,(l02dd)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l044f),hl
	ld (l041b),hl
	ld (l03ea),hl
	ret
.l08c6
	call l08e0
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,l0562
	ld bc,l0300
.l08d7
	ld (hl),c
	inc hl
	djnz l08d7
	ld a,#3f
	jp l0464
.l08e0
	ld a,i
	di
	ld a,#f3
	jp po,l08ea
	ld a,#fb
.l08ea
	ld (l0544),a
	ret
.l08ee
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#09,#8b,#00,#06,#09,#0f,#09
	db #33,#09,#55,#09,#69,#09,#70,#09
	db #00,#00,#00,#00,#00,#00,#0d,#08
	db #09,#01,#00,#3c,#7c,#f4,#38,#38
	db #74,#f4,#34,#30,#30,#2c,#2c,#28
	db #28,#24,#24,#20,#20,#1c,#1c,#18
	db #18,#14,#14,#10,#10,#0c,#0c,#08
	db #08,#04,#0d,#08,#09,#01,#00,#7c
	db #0c,#3c,#38,#78,#0c,#74,#0c,#34
	db #30,#30,#30,#70,#0c,#30,#6c,#0c
	db #2c,#2c,#6c,#0c,#28,#24,#64,#0c
	db #64,#0c,#24,#24,#0d,#4b,#09,#01
	db #00,#3c,#38,#34,#30,#2c,#28,#24
	db #20,#1c,#18,#14,#10,#0c,#08,#04
	db #0d,#08,#09,#08,#fe,#2c,#2c,#0d
	db #6b,#09,#10,#00,#38,#34,#34,#30
	db #2c,#2c,#2c,#28,#28,#24,#20,#1c
	db #18,#14,#0c,#04,#0d,#08,#09,#40
	db #00,#00,#00,#e2,#09,#00,#4c,#0d
	db #51,#0d,#84,#0d,#00,#b2,#0c,#d6
	db #0c,#08,#0d,#00,#e3,#09,#07,#0a
	db #61,#0a,#00,#a5,#0a,#c9,#0a,#24
	db #0b,#00,#e3,#09,#07,#0a,#61,#0a
	db #00,#a5,#0a,#c9,#0a,#24,#0b,#00
	db #68,#0b,#8c,#0b,#c9,#0b,#00,#0d
	db #0c,#31,#0c,#6e,#0c,#00,#e3,#09
	db #07,#0a,#61,#0a,#00,#a5,#0a,#c9
	db #0a,#24,#0b,#00,#d7,#0d,#fb,#0d
	db #3f,#0e,#00,#83,#0e,#d6,#0e,#47
	db #0f,#01,#8b,#09,#00,#7a,#e0,#00
	db #00,#01,#06,#3b,#06,#3b,#06,#3b
	db #06,#3b,#06,#3b,#06,#3b,#06,#3b
	db #06,#3b,#06,#3b,#06,#3b,#06,#3b
	db #06,#3b,#06,#3b,#06,#3b,#06,#3b
	db #00,#42,#80,#00,#00,#42,#00,#aa
	db #61,#02,#02,#79,#02,#75,#06,#42
	db #00,#02,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #04,#42,#00,#42,#00,#06,#42,#00
	db #04,#42,#00,#6b,#02,#75,#02,#71
	db #06,#42,#00,#02,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#04,#42,#00,#42,#00,#06
	db #42,#00,#00,#aa,#e0,#00,#00,#03
	db #6b,#83,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#83,#79,#75,#6b
	db #6b,#83,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#83,#79,#75,#6b
	db #6b,#83,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#83,#79,#75,#6b
	db #6b,#83,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#83,#79,#75,#72
	db #e0,#00,#00,#01,#06,#33,#06,#33
	db #06,#33,#06,#33,#06,#33,#06,#33
	db #06,#33,#06,#35,#06,#35,#06,#35
	db #06,#35,#06,#37,#06,#37,#06,#37
	db #06,#37,#00,#42,#80,#00,#00,#42
	db #00,#aa,#60,#02,#02,#71,#02,#6f
	db #06,#42,#00,#02,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#04,#42,#00,#42,#00,#06
	db #42,#00,#04,#42,#00,#6b,#02,#71
	db #02,#75,#06,#42,#00,#02,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#02,#42,#00,#42
	db #00,#08,#42,#00,#42,#00,#aa,#e0
	db #00,#00,#03,#6b,#83,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#6b,#83,#6b,#83
	db #79,#75,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#6b,#83,#6b,#83
	db #79,#75,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#6b,#83,#6b,#83
	db #79,#75,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#6b,#83,#6b,#83
	db #79,#75,#72,#e0,#00,#00,#01,#06
	db #33,#06,#33,#06,#33,#06,#33,#06
	db #33,#06,#37,#06,#37,#06,#3b,#06
	db #3b,#06,#3b,#06,#3b,#06,#3b,#06
	db #3b,#06,#37,#06,#37,#00,#aa,#e0
	db #00,#00,#02,#42,#00,#6f,#42,#00
	db #71,#02,#7f,#06,#71,#06,#6b,#42
	db #00,#0c,#79,#02,#75,#02,#71,#02
	db #6f,#02,#6b,#02,#6f,#02,#71,#06
	db #6b,#12,#42,#00,#42,#00,#42,#00
	db #02,#42,#00,#02,#42,#00,#02,#42
	db #00,#02,#42,#00,#02,#42,#00,#02
	db #42,#00,#00,#aa,#e0,#00,#00,#03
	db #6b,#83,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#83,#79,#75,#6b
	db #6b,#83,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#83,#79,#75,#6b
	db #6b,#83,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#83,#79,#75,#6b
	db #6b,#83,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#83,#79,#75,#72
	db #e0,#00,#00,#01,#06,#33,#06,#33
	db #06,#33,#06,#33,#06,#33,#06,#37
	db #06,#37,#06,#35,#06,#35,#06,#35
	db #06,#35,#06,#33,#06,#33,#06,#37
	db #06,#37,#00,#aa,#e0,#00,#00,#02
	db #42,#00,#6f,#42,#00,#71,#02,#7f
	db #06,#71,#06,#6b,#42,#00,#0c,#79
	db #02,#75,#02,#71,#02,#6f,#02,#6b
	db #02,#6f,#02,#71,#06,#6b,#12,#42
	db #00,#42,#00,#42,#00,#02,#42,#00
	db #02,#42,#00,#02,#42,#00,#02,#42
	db #00,#02,#42,#00,#02,#42,#00,#00
	db #aa,#e0,#00,#00,#03,#6b,#83,#6b
	db #6b,#83,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#83,#79,#75,#6b,#6b,#83,#6b
	db #6b,#83,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#83,#79,#75,#6b,#6b,#83,#6b
	db #6b,#83,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#83,#79,#75,#6b,#6b,#83,#6b
	db #6b,#83,#6b,#6b,#83,#6b,#6b,#83
	db #6b,#83,#79,#75,#7a,#e1,#00,#00
	db #01,#06,#3b,#06,#3b,#06,#3b,#06
	db #3b,#06,#3b,#06,#3b,#06,#3b,#06
	db #3b,#06,#3b,#06,#3b,#06,#3b,#06
	db #3b,#06,#3b,#06,#3b,#06,#3b,#00
	db #42,#80,#00,#00,#3c,#42,#03,#02
	db #42,#05,#02,#42,#07,#02,#42,#09
	db #02,#42,#0b,#02,#42,#0d,#02,#42
	db #0f,#02,#42,#11,#02,#42,#13,#02
	db #42,#15,#02,#42,#17,#02,#42,#19
	db #02,#42,#1b,#02,#42,#1d,#02,#42
	db #1f,#00,#aa,#e0,#00,#00,#03,#6b
	db #83,#6b,#6b,#83,#6b,#6b,#83,#6b
	db #6b,#83,#6b,#83,#79,#75,#6b,#6b
	db #83,#6b,#6b,#83,#6b,#6b,#83,#6b
	db #6b,#83,#6b,#83,#79,#75,#6b,#6b
	db #83,#6b,#6b,#83,#6b,#6b,#83,#6b
	db #6b,#83,#6b,#83,#79,#75,#6b,#6b
	db #83,#6b,#6b,#83,#6b,#6b,#83,#6b
	db #6b,#83,#6b,#83,#79,#75,#42,#9f
	db #00,#00,#00,#7a,#ff,#00,#00,#04
	db #02,#42,#1d,#02,#42,#1b,#02,#42
	db #19,#02,#42,#17,#02,#42,#15,#02
	db #42,#13,#02,#42,#11,#02,#42,#0f
	db #02,#42,#0d,#02,#42,#0b,#02,#42
	db #09,#02,#42,#07,#02,#42,#05,#02
	db #42,#03,#02,#42,#01,#00,#aa,#ff
	db #00,#00,#03,#6b,#c2,#5d,#6b,#aa
	db #5b,#83,#aa,#59,#6b,#c2,#57,#6b
	db #aa,#55,#83,#aa,#53,#83,#b8,#51
	db #75,#aa,#4f,#6b,#c2,#4d,#6b,#aa
	db #4b,#83,#aa,#49,#6b,#c2,#47,#6b
	db #aa,#45,#83,#aa,#43,#83,#b8,#41
	db #75,#6b,#6b,#83,#6b,#6b,#83,#6b
	db #6b,#83,#6b,#6b,#83,#6b,#83,#79
	db #75,#6b,#6b,#83,#6b,#6b,#83,#6b
	db #6b,#83,#6b,#6b,#83,#6b,#83,#79
	db #75,#7a,#e0,#00,#00,#01,#06,#3b
	db #06,#3b,#06,#3b,#06,#3b,#06,#3b
	db #06,#3b,#06,#3b,#06,#3b,#06,#3b
	db #06,#3b,#06,#3b,#06,#3b,#06,#3b
	db #06,#3b,#06,#3b,#00,#aa,#e0,#00
	db #00,#05,#6f,#71,#6f,#71,#75,#71
	db #75,#79,#75,#79,#7f,#79,#7f,#83
	db #79,#6b,#6f,#71,#6f,#71,#75,#71
	db #75,#79,#75,#79,#7f,#79,#7f,#83
	db #79,#6b,#6f,#71,#6f,#71,#75,#71
	db #75,#79,#75,#79,#7f,#79,#7f,#83
	db #79,#6b,#6f,#71,#6f,#71,#75,#71
	db #75,#79,#75,#79,#7f,#79,#7f,#83
	db #79,#aa,#e0,#00,#00,#03,#6b,#83
	db #6b,#6b,#83,#6b,#6b,#83,#6b,#6b
	db #83,#6b,#83,#79,#75,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#6b,#83,#6b,#6b
	db #83,#6b,#83,#79,#75,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#6b,#83,#6b,#6b
	db #83,#6b,#83,#79,#75,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#6b,#83,#6b,#6b
	db #83,#6b,#83,#79,#75,#aa,#e0,#00
	db #00,#05,#6f,#71,#6f,#71,#75,#71
	db #75,#79,#75,#79,#7f,#79,#7f,#83
	db #79,#6b,#6f,#71,#6f,#71,#75,#71
	db #75,#79,#75,#79,#7f,#79,#7f,#83
	db #b8,#43,#6b,#ae,#45,#71,#ae,#47
	db #71,#b4,#49,#71,#b4,#4b,#79,#b4
	db #4d,#79,#be,#4f,#79,#be,#51,#83
	db #b8,#53,#6b,#ae,#55,#71,#ae,#57
	db #71,#b4,#59,#71,#b4,#5b,#79,#b4
	db #5d,#79,#be,#5f,#79,#7f,#83,#79
	db #be,#e7,#00,#00,#05,#c2,#40,#b8
	db #40,#aa,#40,#ae,#40,#b0,#40,#ae
	db #40,#b0,#40,#b4,#40,#b0,#40,#b4
	db #40,#b8,#40,#b4,#40,#b8,#40,#be
	db #40,#b8,#40,#be,#40,#c2,#40,#b8
	db #40,#aa,#40,#ae,#40,#b0,#40,#ae
	db #40,#b0,#40,#b4,#40,#b0,#40,#b4
	db #40,#b8,#40,#b4,#40,#b8,#40,#be
	db #40,#b8,#43,#7f,#c2,#45,#79,#aa
	db #47,#6f,#b0,#49,#6f,#b0,#4b,#75
	db #b0,#4d,#75,#b8,#4f,#75,#b8,#51
	db #7f,#b8,#53,#7f,#c2,#55,#79,#aa
	db #57,#6f,#b0,#59,#6f,#b0,#5b,#75
	db #b0,#5d,#75,#b8,#5f,#75,#79,#7f
	db #79,#aa,#e0,#00,#00,#03,#6b,#83
	db #6b,#6b,#83,#6b,#6b,#83,#6b,#6b
	db #83,#6b,#83,#79,#75,#6b,#6b,#83
	db #6b,#6b,#83,#6b,#6b,#83,#6b,#6b
	db #83,#6b,#83,#79,#b4,#43,#6b,#aa
	db #45,#83,#aa,#47,#6b,#c2,#49,#6b
	db #aa,#4b,#83,#aa,#4d,#6b,#c2,#4f
	db #6b,#c2,#51,#79,#b4,#53,#6b,#aa
	db #55,#83,#aa,#57,#6b,#c2,#59,#6b
	db #aa,#5b,#83,#aa,#5d,#6b,#c2,#5f
	db #6b,#83,#79,#75,#00,#00,#00,#00
	db #00,#00
;
.init_music		; added by Megachur
;
	ld de,l08ee
	jp real_init_music
;
.music_info
	db "Cero Absoluto (2016)(ESP Soft)(Baron Ashler)",0
	db "StArkos",0

	read "music_end.asm"
