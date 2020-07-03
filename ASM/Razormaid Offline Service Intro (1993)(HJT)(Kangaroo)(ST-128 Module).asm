; Music of Razormaid Offline Service Intro (1993)(HJT)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 16/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RAZORMSI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #6000

	read "music_header.asm"

	jp l6009
	jp l609d
	jp l6081
;
.init_music
.l6009
;
	xor a
	ld hl,l65a5
	call l607a
	ld hl,l65d3
	call l607a
	ld hl,l6601
	call l607a
	ld ix,l65a1
	ld iy,l662b
	ld de,#002e
	ld b,#03
.l6029
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
	djnz l6029
	ld hl,l64ba
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
	ld (l64b6),hl
	ld (l64b8),hl
	ld a,#0c
	ld c,d
	call l6496
	ld a,#0d
	ld c,d
	jp l6496
.l607a
	ld b,#2a
.l607c
	ld (hl),a
	inc hl
	djnz l607c
	ret
;
.stop_music
.l6081
;
	ld a,#07
	ld c,#3f
	call l6496
	ld a,#08
	ld c,#00
	call l6496
	ld a,#09
	ld c,#00
	call l6496
	ld a,#0a
	ld c,#00
	jp l6496
;
.play_music
.l609d
;
	ld hl,l64bc
	dec (hl)
	ld ix,l65a1
	ld bc,l65af
	call l613f
	ld ix,l65cf
	ld bc,l65dd
	call l613f
	ld ix,l65fd
	ld bc,l660b
	call l613f
	ld hl,l64b5
	ld de,l64bc
	ld b,#06
	call l611c
	ld b,#07
	call l611c
	ld b,#0b
	call l611c
	ld b,#0d
	call l611c
	ld de,l64bc
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l65c0
	call l60f5
	ld hl,l65ee
	call l60f5
	ld hl,l661c
.l60f5
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
	jr nz,l610a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l610a
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
.l611c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6496
.l6127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6496
.l613f
	ld a,(l64bc)
	or a
	jp nz,l61ee
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l61ee
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6127
	or a
	jp z,l61e3
	ld r,a
	and #7f
	cp #10
	jr c,l61c4
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l633a
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
	jr z,l619d
	ld (ix+#25),a
	ld (ix+#1e),b
.l619d
	rrca
	ld c,a
	ld hl,l6631
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
	jr z,l61bc
	ld (ix+#1e),b
.l61bc
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l61d7
.l61c4
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l64c1
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
.l61d7
	ld a,d
	or a
	jr nz,l61e5
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l61e5
.l61e3
	ld a,(hl)
	inc hl
.l61e5
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l61ee
	ld a,(ix+#17)
	or a
	jr nz,l6204
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l6204
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l621a
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l621a
	ld a,(ix+#0d)
	or a
	jr z,l6228
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l6246
.l6228
	ld a,(ix+#1a)
	or a
	jp z,l624d
	ld c,a
	cp #03
	jr nz,l6235
	xor a
.l6235
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l6246
	ld a,(ix+#18)
	dec c
	jr z,l6246
	ld a,(ix+#19)
.l6246
	add (ix+#07)
	ld b,d
	call l633a
.l624d
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6275
	dec (ix+#1b)
	jr nz,l6275
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l62b1
.l6275
	ld a,(ix+#29)
	or a
	jr z,l62b1
	dec (ix+#26)
	jr z,l6285
	ld a,(ix+#27)
	jr l62a8
.l6285
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,(ix+#27)
	add (ix+#29)
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l629f
	ld (ix+#29),#ff
	jr l62a8
.l629f
	cp (ix+#2b)
	jr nz,l62a8
	ld (ix+#29),#01
.l62a8
	ld b,d
	or a
	jp p,l62ae
	dec b
.l62ae
	ld c,a
	jr l62bc
.l62b1
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l62bc
	pop hl
	bit 7,(ix+#14)
	jr z,l62c5
	ld h,d
	ld l,d
.l62c5
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6496
	ld c,h
	ld a,(ix+#02)
	call l6496
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6318
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l6307
	dec (ix+#09)
	jr nz,l6307
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l62ff
	xor a
	jr l6304
.l62ff
	cp #10
	jr nz,l6304
	dec a
.l6304
	ld (ix+#1e),a
.l6307
	ld a,b
	sub (ix+#1e)
	jr nc,l630e
	xor a
.l630e
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6496
.l6318
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l64bd)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6336
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6336
	ld (l64bd),hl
	ret
.l633a
	ld hl,l64df
	cp #61
	jr nc,l6344
	add a
	ld c,a
	add hl,bc
.l6344
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l634e
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6476
	ld (ix+#1e),a
	jp l61d7
.l6360
	dec b
.l6361
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l636c
	neg
.l636c
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
	jp l61d7
.l6382
	dec b
	jr l6386
.l6385
	inc b
.l6386
	call l6476
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l61d7
.l6395
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
	jp l645b
.l63a6
	ld a,(hl)
	ld (ix+#29),a
	inc hl
	or a
	jp z,l61d7
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
	ld (ix+#29),#01
	jp l61d7
.l63d1
	dec hl
	ld a,(hl)
	and #0f
	ld (l64c0),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l64bf),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l61d7
.l63eb
	ld a,(hl)
	or a
	jr z,l63fc
	call l6478
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l61d7
.l63fc
	ld hl,#0101
	ld (l64bb),hl
	jp l61d7
.l6405
	call l6476
	ld (ix+#1e),a
	jp l61d7
.l640e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6487
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6487
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l61d7
.l6430
	ld a,(hl)
	inc hl
	ld (l64ba),a
	jp l61d7
.l6438
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
	jp l61d7
.l6457
	call l6476
	add a
.l645b
	ld b,#00
	ld c,a
	push hl
	ld hl,l66b1
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l61d7
.l6476
	ld a,(hl)
	inc hl
.l6478
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
.l6487
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6631
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
.l6496
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
.l64b5
	ret
.l64bd equ $ + 7
.l64bc equ $ + 6
.l64bb equ $ + 5
.l64ba equ $ + 4
.l64b8 equ $ + 2
.l64b6
	db #01,#38,#00,#00,#06,#3d,#02,#01
.l64c0 equ $ + 2
.l64bf equ $ + 1
	db #38,#00,#00
.l64c1
	dw l634e,l6361,l6360,l6385
	dw l6382,l6395,l63a6,l63d1
	dw l63eb,l63d1,l6405,l640e
	dw l6430,l6438,l6457
.l64df
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
.l65a5 equ $ + 4
.l65a1
	db #08,#00,#01,#08,#3f,#01,#00,#2b
.l65af equ $ + 6
	db #00,#00,#00,#00,#00,#00,#51,#68
	db #91,#68,#b1,#68,#00,#00,#05,#1b
.l65c0 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #f2,#68,#d4,#68,#00,#60,#00,#00
.l65cf equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l65d3 equ $ + 2
	db #03,#10,#3f,#01,#00,#2b,#00,#00
.l65dd equ $ + 4
	db #00,#00,#00,#00,#d1,#66,#11,#67
	db #31,#67,#00,#00,#05,#1b,#00,#00
.l65ee equ $ + 5
	db #00,#00,#00,#00,#00,#02,#60,#6a
	db #dd,#68,#00,#00,#00,#00,#00,#00
.l65fd equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l6601
	db #bc,#03,#00,#18,#00,#00,#00,#00
.l660b equ $ + 2
	db #00,#00,#51,#67,#91,#67,#b1,#67
	db #1a,#00,#05,#1b,#00,#00,#00,#00
.l661c equ $ + 3
	db #00,#00,#00,#01,#0d,#6b,#e6,#68
	db #00,#10,#00,#00,#00,#00,#00,#00
.l662b equ $ + 2
	db #01,#01,#d1,#68,#da,#68,#e3,#68
.l6631
	db #d1,#66,#11,#67,#31,#67,#00,#00
	db #51,#67,#91,#67,#b1,#67,#1a,#00
	db #d2,#1e,#d1,#1f,#d1,#20,#00,#00
	db #d2,#1e,#d1,#1f,#d1,#20,#00,#00
	db #d1,#67,#11,#68,#31,#68,#00,#00
	db #d1,#20,#d2,#1f,#d2,#1e,#ff,#ff
	db #51,#68,#91,#68,#b1,#68,#00,#00
	db #d1,#20,#d2,#1f,#d2,#1e,#ff,#ff
	db #d1,#20,#d2,#1f,#d2,#1e,#ff,#ff
	db #d1,#20,#d2,#1f,#d2,#1e,#ff,#ff
	db #d1,#20,#d2,#1f,#d2,#1e,#ff,#ff
	db #d1,#20,#d2,#1f,#d2,#1e,#ff,#ff
	db #d1,#20,#d2,#1f,#d2,#1e,#ff,#ff
	db #d1,#20,#d2,#1f,#d2,#1e,#ff,#ff
	db #d1,#20,#d2,#1f,#d2,#1e,#ff,#ff
	db #d1,#20,#d2,#1f,#d2,#1e,#ff,#ff
.l66b1
	db #d1,#20,#d2,#1f,#d2,#1e,#d1,#1f
	db #d1,#20,#d2,#1f,#d2,#1e,#d1,#1f
	db #d1,#20,#d2,#1f,#d2,#1e,#d1,#1f
	db #d1,#20,#d2,#1f,#d2,#1e,#d1,#1f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#01,#00
	db #03,#00,#05,#00,#03,#00,#01,#00
	db #ff,#ff,#fd,#ff,#fb,#ff,#fd,#ff
	db #ff,#ff,#01,#00,#04,#00,#07,#00
	db #04,#00,#01,#00,#ff,#ff,#fc,#ff
	db #f9,#ff,#fc,#ff,#ff,#ff,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0d,#0d
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0c
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #a0,#00,#e0,#00,#00,#00,#20,#00
	db #40,#00,#60,#00,#a0,#00,#e0,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#a0,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#06,#05
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#06,#08,#0b,#10,#02,#00
	db #06,#08,#0b,#10,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#03,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#03,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0c,#0b,#0a,#08
	db #07,#07,#08,#08,#09,#09,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#03,#02,#02,#02
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#ec,#68,#00,#a7,#69,#80,#d1
	db #68,#00,#5a,#6a,#00,#b4,#6a,#80
	db #da,#68,#00,#08,#6b,#00,#08,#6b
	db #80,#e3,#68,#3b,#6b,#20,#3b,#6b
	db #10,#3b,#6b,#13,#3b,#6b,#10,#3b
	db #6b,#13,#3b,#6b,#10,#3b,#6b,#13
	db #3b,#6b,#10,#3b,#6b,#13,#3b,#6b
	db #10,#3b,#6b,#13,#40,#6b,#10,#3b
	db #6b,#13,#40,#6b,#10,#40,#6b,#13
	db #3d,#6b,#10,#40,#6b,#13,#3d,#6b
	db #10,#3d,#6b,#13,#3d,#6b,#10,#3d
	db #6b,#13,#3d,#6b,#10,#3d,#6b,#13
	db #3d,#6b,#10,#3d,#6b,#13,#3d,#6b
	db #10,#3d,#6b,#13,#42,#6b,#10,#3d
	db #6b,#13,#42,#6b,#10,#42,#6b,#13
	db #44,#6b,#10,#42,#6b,#13,#44,#6b
	db #13,#42,#6b,#10,#44,#6b,#10,#44
	db #6b,#13,#42,#6b,#10,#44,#6b,#13
	db #42,#6b,#10,#42,#6b,#13,#40,#6b
	db #10,#42,#6b,#13,#3b,#6b,#10,#40
	db #6b,#13,#42,#6b,#15,#3b,#6b,#13
	db #3b,#6b,#20,#3b,#6b,#10,#3b,#6b
	db #13,#3d,#6b,#10,#3b,#6b,#13,#3f
	db #6b,#10,#3d,#6b,#13,#40,#6b,#10
	db #3f,#6b,#13,#40,#6b,#10,#40,#6b
	db #13,#40,#6b,#10,#40,#6b,#13,#40
	db #6b,#15,#40,#6b,#13,#ff,#3b,#6b
	db #20,#3b,#6b,#10,#3b,#6b,#13,#3b
	db #6b,#10,#3b,#6b,#13,#3b,#6b,#10
	db #3b,#6b,#13,#3b,#6b,#10,#3b,#6b
	db #13,#3b,#6b,#10,#3b,#6b,#13,#40
	db #6b,#10,#3b,#6b,#13,#3b,#6b,#15
	db #40,#6b,#13,#3d,#6b,#20,#3d,#6b
	db #10,#3d,#6b,#13,#3d,#6b,#10,#3d
	db #6b,#13,#3d,#6b,#10,#3d,#6b,#13
	db #3d,#6b,#10,#3d,#6b,#13,#3d,#6b
	db #10,#3d,#6b,#13,#42,#6b,#10,#3d
	db #6b,#13,#3d,#6b,#15,#42,#6b,#13
	db #44,#6b,#20,#42,#6b,#13,#42,#6b
	db #10,#44,#6b,#10,#42,#6b,#15,#42
	db #6b,#10,#44,#6b,#13,#42,#6b,#10
	db #42,#6b,#13,#40,#6b,#10,#42,#6b
	db #13,#3b,#6b,#10,#40,#6b,#13,#42
	db #6b,#15,#3b,#6b,#13,#3b,#6b,#20
	db #3b,#6b,#10,#3b,#6b,#13,#3d,#6b
	db #10,#3b,#6b,#13,#3f,#6b,#10,#3d
	db #6b,#13,#40,#6b,#10,#3f,#6b,#13
	db #40,#6b,#10,#40,#6b,#13,#40,#6b
	db #10,#c0,#60,#c0,#60,#40,#6b,#13
	db #ff,#3b,#00,#02,#3b,#00,#02,#3b
	db #00,#02,#3b,#00,#02,#3b,#00,#02
	db #3b,#00,#02,#40,#00,#02,#40,#00
	db #02,#3d,#00,#02,#3d,#00,#02,#3d
	db #00,#02,#3d,#00,#02,#3d,#00,#02
	db #3d,#00,#02,#42,#00,#02,#42,#00
	db #02,#44,#00,#03,#c2,#00,#44,#00
	db #02,#42,#00,#02,#42,#00,#02,#40
	db #00,#02,#3b,#00,#04,#3b,#00,#02
	db #3b,#00,#02,#3d,#00,#02,#3f,#00
	db #02,#40,#00,#02,#40,#00,#02,#40
	db #00,#04,#ff,#3b,#00,#02,#3b,#00
	db #02,#3b,#00,#02,#3b,#00,#02,#3b
	db #00,#02,#3b,#00,#02,#40,#00,#04
	db #3d,#00,#02,#3d,#00,#02,#3d,#00
	db #02,#3d,#00,#02,#3d,#00,#02,#3d
	db #00,#02,#42,#00,#04,#44,#00,#03
	db #c2,#00,#44,#00,#02,#42,#00,#02
	db #42,#00,#02,#40,#00,#02,#3b,#00
	db #04,#3b,#00,#02,#3b,#00,#02,#3d
	db #00,#02,#3f,#00,#02,#40,#00,#02
	db #40,#00,#02,#40,#00,#04,#ff,#28
	db #10,#02,#a8,#10,#a8,#10,#b8,#40
	db #a8,#10,#28,#10,#02,#28,#10,#02
	db #a8,#10,#a8,#10,#b8,#40,#a8,#10
	db #28,#10,#02,#2d,#10,#02,#ad,#10
	db #ad,#10,#b8,#40,#ad,#10,#2d,#10
	db #02,#2d,#10,#02,#ad,#10,#ad,#10
	db #b8,#40,#ad,#10,#2d,#10,#02,#2f
	db #10,#02,#af,#10,#af,#10,#b8,#40
	db #af,#10,#2f,#10,#02,#2f,#10,#02
	db #2f,#10,#02,#38,#40,#02,#2c,#10
	db #02,#28,#10,#02,#a8,#10,#a8,#10
	db #b8,#40,#a8,#10,#28,#10,#02,#28
	db #10,#02,#a8,#10,#a8,#10,#b8,#40
	db #a8,#10,#28,#10,#02,#ff
;
.music_info
	db "Razormaid Offline Service Intro (1993)(HJT)(Kangaroo)",0
	db "ST-128 Module",0

	read "music_end.asm"
