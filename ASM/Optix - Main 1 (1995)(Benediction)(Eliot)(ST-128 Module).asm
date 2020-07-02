; Music of Optix - Main 1 (1995)(Benediction)(Eliot)(ST-128 Module)
; Ripped by Megachur the 12/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OPTIXMA1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7a00

	read "music_header.asm"
	
	jr l7a04
	jr l7a13
.l7a04
	call l7a37
	ld hl,l7a24
	ld de,l7a1c
	ld bc,l81ff
	jp #bcd7
.l7a13
	ld hl,l7a24
	call #bcdd
	jp l7aaf
.l7a1c
	push ix
	call l7acb
	pop ix
	ret
.l7a24
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l7a37
	jp l7acb
	jp l7aaf
;
.init_music
.l7a37
;
	xor a
	ld hl,l7fe2
	call l7aa8
	ld hl,l8010
	call l7aa8
	ld hl,l803e
	call l7aa8
	ld ix,l7fde
	ld iy,l8068
	ld de,#002e
	ld b,#03
.l7a57
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l7a57
	ld hl,l7ef7
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l7ef3),hl
	ld (l7ef5),hl
	ld a,#0c
	ld c,d
	call l7ed3
	ld a,#0d
	ld c,d
	jp l7ed3
.l7aa8
	ld b,#2a
.l7aaa
	ld (hl),a
	inc hl
	djnz l7aaa
	ret
;
.stop_music
.l7aaf
;
	ld a,#07
	ld c,#3f
	call l7ed3
	ld a,#08
	ld c,#00
	call l7ed3
	ld a,#09
	ld c,#00
	call l7ed3
	ld a,#0a
	ld c,#00
	jp l7ed3
;
.play_music
.l7acb
;
	ld hl,l7ef9
	dec (hl)
	ld ix,l7fde
	ld bc,l7fec
	call l7b6d
	ld ix,l800c
	ld bc,l801a
	call l7b6d
	ld ix,l803a
	ld bc,l8048
	call l7b6d
	ld hl,l7ef2
	ld de,l7ef9
	ld b,#06
	call l7b4a
	ld b,#07
	call l7b4a
	ld b,#0b
	call l7b4a
	ld b,#0d
	call l7b4a
	ld de,l7ef9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l7ffd
	call l7b23
	ld hl,l802b
	call l7b23
	ld hl,l8059
.l7b23
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l7b38
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l7b38
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l7b4a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l7ed3
.l7b55
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l7ed3
.l7b6d
	ld a,(l7ef9)
	or a
	jp nz,l7c25
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l7c25
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l7b55
	or a
	jp z,l7c1a
	ld r,a
	and #7f
	cp #10
	jr c,l7bf5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l7d6d
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l7bce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l7bce
	rrca
	ld c,a
	ld hl,l806e
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l7bed
	ld (ix+#1e),b
.l7bed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l7c0e
.l7bf5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l7efe
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l7c0e
	ld a,d
	or a
	jr nz,l7c1c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l7c1c
.l7c1a
	ld a,(hl)
	inc hl
.l7c1c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l7c25
	ld a,(ix+#17)
	or a
	jr nz,l7c3b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l7c3b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l7c51
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l7c51
	ld a,(ix+#0d)
	or a
	jr z,l7c5f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l7c7d
.l7c5f
	ld a,(ix+#1a)
	or a
	jp z,l7c84
	ld c,a
	cp #03
	jr nz,l7c6c
	xor a
.l7c6c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l7c7d
	ld a,(ix+#18)
	dec c
	jr z,l7c7d
	ld a,(ix+#19)
.l7c7d
	add (ix+#07)
	ld b,d
	call l7d6d
.l7c84
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l7cac
	dec (ix+#1b)
	jr nz,l7cac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l7ce4
.l7cac
	ld a,(ix+#29)
	or a
	jr z,l7ce4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l7cdb
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l7cd2
	ld (ix+#29),#ff
	jr l7cdb
.l7cd2
	cp (ix+#2b)
	jr nz,l7cdb
	ld (ix+#29),#01
.l7cdb
	ld b,d
	or a
	jp p,l7ce1
	dec b
.l7ce1
	ld c,a
	jr l7cef
.l7ce4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l7cef
	pop hl
	bit 7,(ix+#14)
	jr z,l7cf8
	ld h,d
	ld l,d
.l7cf8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l7ed3
	ld c,h
	ld a,(ix+#02)
	call l7ed3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7d4b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l7d3a
	dec (ix+#09)
	jr nz,l7d3a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l7d32
	xor a
	jr l7d37
.l7d32
	cp #10
	jr nz,l7d37
	dec a
.l7d37
	ld (ix+#1e),a
.l7d3a
	ld a,b
	sub (ix+#1e)
	jr nc,l7d41
	xor a
.l7d41
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l7ed3
.l7d4b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l7efa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l7d69
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l7d69
	ld (l7efa),hl
	ret
.l7d6d
	ld hl,l7f1c
	cp #61
	jr nc,l7d77
	add a
	ld c,a
	add hl,bc
.l7d77
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l7ea6
	ld (ix+#1e),a
	jp l7c0e
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l7d9f
	neg
.l7d9f
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l7c0e
	dec b
	jr l7db9
	inc b
.l7db9
	call l7ea6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l7c0e
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l7e8b
	ld a,(hl)
	inc hl
	or a
	jr z,l7dfb
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l7dfb
	ld (ix+#29),a
	jp l7c0e
	dec hl
	ld a,(hl)
	and #0f
	ld (l7efd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l7efc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l7c0e
	ld a,(hl)
	or a
	jr z,l7e2c
	call l7ea8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l7c0e
.l7e2c
	ld hl,#0101
	ld (l7ef8),hl
	jp l7c0e
	call l7ea6
	ld (ix+#1e),a
	jp l7c0e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l7eb7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l7eb7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l7c0e
	ld a,(hl)
	inc hl
	ld (l7ef7),a
	jp l7c0e
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l7c0e
	call l7ea6
	add a
.l7e8b
	ld b,#00
	ld c,a
	push hl
	ld hl,l80ee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l7c0e
.l7ea6
	ld a,(hl)
	inc hl
.l7ea8
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l7eb7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l806e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l7ed3
	di
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
	ei
.l7ef2
	ret
.l7efa equ $ + 7
.l7ef9 equ $ + 6
.l7ef8 equ $ + 5
.l7ef7 equ $ + 4
.l7ef5 equ $ + 2
.l7ef3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7efd equ $ + 2
.l7efc equ $ + 1
	db #38,#00,#00
.l7efe
	db #81,#7d,#94,#7d,#93,#7d,#b8,#7d
	db #b5,#7d,#c8,#7d,#d9,#7d,#01,#7e
	db #1b,#7e,#01,#7e,#35,#7e,#3e,#7e
	db #60,#7e,#68,#7e,#87,#7e
.l7f1c
	dw #0000,#0e18,#0d4d,#0c8e
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
.l7fe2 equ $ + 4
.l7fde
	db #08,#00,#01,#08,#00,#00,#00,#00
.l7fec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7ffd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l800c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l8010 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l801a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l802b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l803a equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l803e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8048 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8059 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8068 equ $ + 2
	db #00,#00,#ce,#82,#04,#83,#3a,#83
.l806e
	db #03,#64,#00,#04,#6b,#b6,#b0,#67
	db #0e,#81,#4e,#81,#6e,#81,#1a,#00
	db #2f,#de,#67,#5c,#80,#bc,#c9,#21
	db #8e,#81,#ce,#81,#ee,#81,#00,#00
	db #0e,#82,#4e,#82,#ee,#81,#00,#00
	db #0e,#82,#6e,#82,#8e,#82,#09,#00
	db #02,#ac,#1a,#07,#76,#74,#66,#c3
	db #0e,#82,#ae,#82,#ee,#81,#00,#00
	db #cb,#82,#78,#64,#ed,#7e,#65,#1c
	db #dd,#aa,#16,#57,#79,#49,#c4,#0f
	db #45,#9f,#08,#eb,#65,#55,#b1,#b3
	db #18,#3b,#04,#e7,#e7,#e9,#54,#08
	db #70,#44,#cc,#ef,#b7,#22,#1c,#66
	db #87,#2a,#c5,#fd,#5b,#a5,#ce,#b5
	db #4a,#57,#4f,#ff,#c6,#14,#28,#ab
	db #65,#60,#87,#41,#65,#64,#bc,#65
.l80ee
	db #45,#65,#65,#61,#3e,#3b,#65,#63
	db #cc,#5d,#2b,#b8,#45,#6c,#cd,#a5
	db #a1,#3b,#01,#5d,#32,#06,#6b,#17
	db #72,#47,#06,#3a,#1a,#17,#36,#40
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0d,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #04,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l81ff equ $ + 1
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
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0b,#09,#07
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0b,#09,#07,#05,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0f,#0f,#0f,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #09,#08,#07,#06,#05,#03,#01,#00
	db #00,#70,#83,#00,#70,#83,#00,#d9
	db #83,#00,#d9,#83,#00,#3a,#84,#00
	db #3a,#84,#00,#d9,#83,#00,#9b,#84
	db #00,#d9,#83,#00,#9b,#84,#00,#f0
	db #84,#00,#f0,#84,#00,#3a,#84,#00
	db #3a,#84,#00,#5a,#85,#00,#5a,#85
	db #00,#3a,#84,#80,#ce,#82,#00,#bb
	db #85,#00,#bb,#85,#00,#1c,#86,#00
	db #1c,#86,#00,#7d,#86,#00,#7d,#86
	db #00,#1c,#86,#00,#bb,#85,#00,#1c
	db #86,#00,#bb,#85,#00,#fe,#86,#00
	db #fe,#86,#00,#7d,#86,#00,#7d,#86
	db #00,#5f,#87,#00,#5f,#87,#00,#7d
	db #86,#80,#04,#83,#00,#20,#88,#00
	db #20,#88,#00,#20,#88,#00,#20,#88
	db #00,#81,#88,#00,#81,#88,#00,#20
	db #88,#00,#20,#88,#00,#20,#88,#00
	db #20,#88,#00,#20,#88,#00,#20,#88
	db #00,#81,#88,#00,#81,#88,#00,#e2
	db #88,#00,#e2,#88,#00,#81,#88,#80
	db #3a,#83,#38,#30,#02,#44,#30,#02
	db #b8,#30,#44,#30,#02,#38,#30,#02
	db #44,#30,#02,#b8,#30,#c4,#30,#38
	db #30,#02,#c4,#30,#38,#30,#02,#44
	db #30,#02,#b8,#30,#44,#30,#02,#38
	db #30,#02,#44,#30,#02,#b8,#30,#c4
	db #30,#38,#30,#02,#c4,#30,#3b,#30
	db #02,#47,#30,#02,#bb,#30,#47,#30
	db #02,#3b,#30,#02,#47,#30,#02,#bb
	db #30,#c7,#30,#3b,#30,#02,#c7,#30
	db #36,#30,#02,#42,#30,#02,#b6,#30
	db #42,#30,#02,#36,#30,#02,#42,#30
	db #02,#b6,#30,#c2,#30,#36,#30,#02
	db #c2,#30,#ff,#44,#30,#02,#50,#30
	db #03,#d0,#30,#44,#30,#02,#50,#30
	db #02,#c4,#30,#50,#30,#02,#44,#30
	db #02,#d0,#30,#44,#30,#02,#50,#30
	db #03,#d0,#30,#44,#30,#02,#50,#30
	db #02,#c4,#30,#50,#30,#02,#44,#30
	db #02,#d0,#30,#47,#30,#02,#53,#30
	db #03,#d3,#30,#47,#30,#02,#53,#30
	db #02,#c7,#30,#53,#30,#02,#47,#30
	db #02,#d3,#30,#49,#30,#02,#55,#30
	db #03,#d5,#30,#49,#30,#02,#55,#30
	db #02,#c9,#30,#55,#30,#02,#49,#30
	db #02,#d5,#30,#ff,#44,#70,#02,#50
	db #70,#02,#c4,#70,#50,#70,#02,#44
	db #70,#03,#50,#70,#02,#44,#70,#02
	db #d0,#70,#c4,#70,#44,#70,#02,#50
	db #70,#02,#c4,#70,#50,#70,#02,#44
	db #70,#03,#50,#70,#02,#44,#70,#02
	db #d0,#70,#c4,#70,#47,#70,#02,#53
	db #70,#02,#c7,#70,#53,#70,#02,#47
	db #70,#03,#53,#70,#02,#47,#70,#02
	db #d3,#70,#c7,#70,#42,#70,#02,#4e
	db #70,#02,#c2,#70,#4e,#70,#02,#42
	db #70,#03,#4e,#70,#02,#42,#70,#02
	db #ce,#70,#c2,#70,#ff,#44,#30,#02
	db #50,#30,#02,#44,#30,#02,#50,#30
	db #02,#44,#30,#02,#44,#30,#02,#50
	db #30,#04,#44,#30,#02,#50,#30,#02
	db #44,#30,#02,#50,#30,#02,#44,#30
	db #02,#44,#30,#02,#50,#30,#04,#47
	db #30,#02,#53,#30,#02,#47,#30,#02
	db #53,#30,#02,#47,#30,#02,#47,#30
	db #02,#53,#30,#04,#42,#30,#02,#4e
	db #30,#02,#42,#30,#02,#4e,#30,#02
	db #42,#30,#02,#42,#30,#02,#4e,#30
	db #04,#ff,#50,#37,#12,#02,#d0,#30
	db #50,#30,#02,#53,#30,#02,#d0,#30
	db #50,#30,#02,#d0,#30,#50,#30,#02
	db #53,#30,#02,#d0,#30,#4c,#30,#02
	db #cc,#30,#4c,#30,#02,#50,#30,#02
	db #cc,#30,#4c,#30,#02,#cc,#30,#4c
	db #30,#02,#50,#30,#02,#cc,#30,#50
	db #30,#02,#d0,#30,#50,#30,#02,#53
	db #30,#02,#d0,#30,#50,#30,#02,#d0
	db #30,#50,#30,#02,#53,#30,#02,#d0
	db #30,#51,#30,#02,#d1,#30,#51,#30
	db #02,#55,#30,#02,#d1,#30,#51,#30
	db #02,#d1,#30,#51,#30,#02,#55,#30
	db #02,#d1,#30,#ff,#44,#70,#02,#45
	db #70,#02,#49,#70,#02,#4c,#70,#02
	db #4e,#70,#02,#4b,#70,#02,#49,#70
	db #02,#4b,#70,#02,#44,#70,#02,#45
	db #70,#02,#49,#70,#02,#4c,#70,#02
	db #4e,#70,#02,#4b,#70,#02,#49,#70
	db #02,#4b,#70,#02,#42,#70,#02,#44
	db #70,#02,#47,#70,#02,#4b,#70,#02
	db #4c,#70,#02,#49,#70,#02,#47,#70
	db #02,#49,#70,#02,#40,#70,#02,#42
	db #70,#02,#45,#70,#02,#49,#70,#02
	db #4b,#70,#02,#47,#70,#02,#45,#70
	db #02,#47,#70,#02,#ff,#2c,#40,#02
	db #38,#40,#02,#2c,#40,#02,#38,#40
	db #02,#2c,#40,#02,#38,#40,#02,#2c
	db #40,#02,#38,#40,#02,#2c,#40,#02
	db #38,#40,#02,#2c,#40,#02,#38,#40
	db #02,#2c,#40,#02,#38,#40,#02,#2c
	db #40,#02,#38,#40,#02,#2f,#40,#02
	db #3b,#40,#02,#2f,#40,#02,#3b,#40
	db #02,#2f,#40,#02,#3b,#40,#02,#2f
	db #40,#02,#3b,#40,#02,#2a,#40,#02
	db #36,#40,#02,#2a,#40,#02,#36,#40
	db #02,#2a,#40,#02,#36,#40,#02,#2a
	db #40,#02,#36,#40,#02,#ff,#2c,#41
	db #20,#38,#40,#02,#2c,#40,#02,#38
	db #40,#02,#2c,#40,#02,#38,#40,#02
	db #2c,#40,#02,#38,#40,#02,#2c,#40
	db #02,#38,#40,#02,#2c,#40,#02,#38
	db #40,#02,#2c,#40,#02,#38,#40,#02
	db #2c,#40,#02,#38,#40,#02,#2f,#40
	db #02,#3b,#40,#02,#2f,#40,#02,#3b
	db #40,#02,#2f,#40,#02,#3b,#40,#02
	db #2f,#40,#02,#3b,#40,#02,#31,#40
	db #02,#3d,#40,#02,#31,#40,#02,#3d
	db #40,#02,#31,#40,#02,#3d,#40,#02
	db #31,#40,#02,#3d,#40,#02,#ff,#2c
	db #43,#08,#02,#38,#43,#08,#02,#2c
	db #43,#08,#02,#38,#43,#08,#02,#2c
	db #43,#08,#02,#38,#43,#08,#02,#2c
	db #43,#08,#02,#38,#43,#08,#02,#2c
	db #43,#08,#02,#38,#43,#08,#02,#2c
	db #43,#08,#02,#38,#43,#08,#02,#2c
	db #43,#08,#02,#38,#43,#08,#02,#2c
	db #43,#08,#02,#38,#43,#08,#02,#2f
	db #43,#08,#02,#3b,#43,#08,#02,#2f
	db #43,#08,#02,#3b,#43,#08,#02,#2f
	db #43,#08,#02,#3b,#43,#08,#02,#2f
	db #43,#08,#02,#3b,#43,#08,#02,#2a
	db #43,#08,#02,#36,#43,#08,#02,#2a
	db #43,#08,#02,#36,#43,#08,#02,#2a
	db #43,#08,#02,#36,#43,#08,#02,#2a
	db #43,#08,#02,#36,#43,#08,#02,#ff
	db #2c,#40,#02,#38,#40,#02,#2c,#40
	db #02,#38,#40,#02,#2c,#40,#02,#38
	db #40,#02,#2c,#40,#02,#38,#40,#02
	db #28,#40,#02,#34,#40,#02,#28,#40
	db #02,#34,#40,#02,#28,#40,#02,#34
	db #40,#02,#28,#40,#02,#34,#40,#02
	db #2c,#40,#02,#38,#40,#02,#2c,#40
	db #02,#38,#40,#02,#2c,#40,#02,#38
	db #40,#02,#2c,#40,#02,#38,#40,#02
	db #2d,#40,#02,#39,#40,#02,#2d,#40
	db #02,#39,#40,#02,#2d,#40,#02,#39
	db #40,#02,#2d,#40,#02,#39,#40,#02
	db #ff,#ac,#43,#08,#03,#07,#01,#b8
	db #43,#08,#03,#07,#01,#ac,#43,#08
	db #03,#07,#01,#b8,#43,#08,#03,#07
	db #01,#ac,#43,#08,#03,#07,#01,#b8
	db #43,#08,#03,#07,#01,#ac,#43,#08
	db #03,#07,#01,#b8,#43,#08,#03,#07
	db #01,#ac,#43,#08,#03,#07,#01,#b8
	db #43,#08,#03,#07,#01,#ac,#43,#08
	db #03,#07,#01,#b8,#43,#08,#03,#07
	db #01,#ac,#43,#08,#03,#07,#01,#b8
	db #43,#08,#03,#07,#01,#ac,#43,#08
	db #03,#07,#01,#b8,#43,#08,#03,#07
	db #01,#aa,#43,#08,#03,#07,#01,#b6
	db #43,#08,#03,#07,#01,#aa,#43,#08
	db #03,#07,#01,#b6,#43,#08,#03,#07
	db #01,#aa,#43,#08,#03,#07,#01,#b6
	db #43,#08,#03,#07,#01,#aa,#43,#08
	db #03,#07,#01,#b6,#43,#08,#03,#07
	db #01,#a8,#43,#08,#03,#07,#01,#b4
	db #43,#08,#03,#07,#01,#a8,#43,#08
	db #03,#07,#01,#b4,#43,#08,#03,#07
	db #01,#a8,#43,#08,#03,#07,#01,#b4
	db #43,#08,#03,#07,#01,#a8,#43,#08
	db #03,#07,#01,#b4,#43,#08,#03,#07
	db #01,#ff,#74,#50,#02,#38,#10,#02
	db #74,#50,#02,#38,#10,#02,#74,#50
	db #02,#38,#10,#02,#74,#50,#02,#38
	db #10,#02,#74,#50,#02,#38,#10,#02
	db #74,#50,#02,#38,#10,#02,#74,#50
	db #02,#38,#10,#02,#74,#50,#02,#38
	db #10,#02,#74,#50,#02,#38,#10,#02
	db #74,#50,#02,#38,#10,#02,#74,#50
	db #02,#38,#10,#02,#74,#50,#02,#38
	db #10,#02,#74,#50,#02,#38,#10,#02
	db #74,#50,#02,#38,#10,#02,#74,#50
	db #02,#38,#10,#02,#74,#50,#02,#38
	db #10,#02,#ff,#74,#5b,#21,#38,#1b
	db #21,#74,#5b,#21,#38,#1b,#21,#74
	db #5b,#21,#38,#1b,#21,#74,#5b,#21
	db #38,#1b,#21,#74,#5b,#21,#38,#1b
	db #21,#74,#5b,#21,#38,#1b,#21,#74
	db #5b,#21,#38,#1b,#21,#74,#5b,#21
	db #38,#1b,#21,#74,#5b,#21,#38,#1b
	db #21,#74,#5b,#21,#38,#1b,#21,#74
	db #5b,#21,#38,#1b,#21,#74,#5b,#21
	db #38,#1b,#21,#74,#5b,#21,#38,#1b
	db #21,#74,#5b,#21,#38,#1b,#21,#74
	db #5b,#21,#38,#1b,#21,#74,#5b,#21
	db #38,#1b,#21,#ff,#74,#5b,#23,#38
	db #1b,#23,#74,#5b,#23,#38,#1b,#23
	db #74,#5b,#23,#38,#1b,#23,#74,#5b
	db #23,#38,#1b,#23,#74,#5b,#23,#38
	db #1b,#23,#74,#5b,#23,#38,#1b,#23
	db #74,#5b,#23,#38,#1b,#23,#74,#5b
	db #23,#38,#1b,#23,#74,#5b,#23,#38
	db #1b,#23,#74,#5b,#23,#38,#1b,#23
	db #74,#5b,#23,#38,#1b,#23,#74,#5b
	db #23,#38,#1b,#23,#74,#5b,#23,#38
	db #1b,#23,#74,#5b,#23,#38,#1b,#23
	db #74,#5b,#23,#38,#1b,#23,#74,#5b
	db #23,#38,#1b,#23,#ff
;
.music_info
	db "Optix - Main 1 (1995)(Benediction)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
