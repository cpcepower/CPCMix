; Music of Plissken Noel (2002)(Public Domain)()(ST-Module)
; Ripped by Megachur the 01/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PLISSKNO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5200

	read "music_header.asm"

	jp l5209
	jp l529d
	jp l5281
;
.init_music
.l5209
;
	xor a
	ld hl,l57b4
	call l527a
	ld hl,l57e2
	call l527a
	ld hl,l5810
	call l527a
	ld ix,l57b0
	ld iy,l583a
	ld de,#002e
	ld b,#03
.l5229
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
	djnz l5229
	ld hl,l56c9
	ld (hl),#06
	inc hl
	ld (hl),#30
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l56c5),hl
	ld (l56c7),hl
	ld a,#0c
	ld c,d
	call l56a5
	ld a,#0d
	ld c,d
	jp l56a5
.l527a
	ld b,#2a
.l527c
	ld (hl),a
	inc hl
	djnz l527c
	ret
;
.stop_music
.l5281
;
	ld a,#07
	ld c,#3f
	call l56a5
	ld a,#08
	ld c,#00
	call l56a5
	ld a,#09
	ld c,#00
	call l56a5
	ld a,#0a
	ld c,#00
	jp l56a5
;
.play_music
.l529d
;
	ld hl,l56cb
	dec (hl)
	ld ix,l57b0
	ld bc,l57be
	call l533f
	ld ix,l57de
	ld bc,l57ec
	call l533f
	ld ix,l580c
	ld bc,l581a
	call l533f
	ld hl,l56c4
	ld de,l56cb
	ld b,#06
	call l531c
	ld b,#07
	call l531c
	ld b,#0b
	call l531c
	ld b,#0d
	call l531c
	ld de,l56cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#30
	ld hl,l57cf
	call l52f5
	ld hl,l57fd
	call l52f5
	ld hl,l582b
.l52f5
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
	jr nz,l530a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l530a
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
.l531c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l56a5
.l5327
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l56a5
.l533f
	ld a,(l56cb)
	or a
	jp nz,l53f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l53f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5327
	or a
	jp z,l53ec
	ld r,a
	and #7f
	cp #10
	jr c,l53c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l553f
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
	jr z,l53a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l53a0
	rrca
	ld c,a
	ld hl,l5840
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
	jr z,l53bf
	ld (ix+#1e),b
.l53bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l53e0
.l53c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l56d0
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
.l53e0
	ld a,d
	or a
	jr nz,l53ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l53ee
.l53ec
	ld a,(hl)
	inc hl
.l53ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l53f7
	ld a,(ix+#17)
	or a
	jr nz,l540d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l540d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5423
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5423
	ld a,(ix+#0d)
	or a
	jr z,l5431
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l544f
.l5431
	ld a,(ix+#1a)
	or a
	jp z,l5456
	ld c,a
	cp #03
	jr nz,l543e
	xor a
.l543e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l544f
	ld a,(ix+#18)
	dec c
	jr z,l544f
	ld a,(ix+#19)
.l544f
	add (ix+#07)
	ld b,d
	call l553f
.l5456
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l547e
	dec (ix+#1b)
	jr nz,l547e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l54b6
.l547e
	ld a,(ix+#29)
	or a
	jr z,l54b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l54ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l54a4
	ld (ix+#29),#ff
	jr l54ad
.l54a4
	cp (ix+#2b)
	jr nz,l54ad
	ld (ix+#29),#01
.l54ad
	ld b,d
	or a
	jp p,l54b3
	dec b
.l54b3
	ld c,a
	jr l54c1
.l54b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l54c1
	pop hl
	bit 7,(ix+#14)
	jr z,l54ca
	ld h,d
	ld l,d
.l54ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l56a5
	ld c,h
	ld a,(ix+#02)
	call l56a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l551d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l550c
	dec (ix+#09)
	jr nz,l550c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5504
	xor a
	jr l5509
.l5504
	cp #10
	jr nz,l5509
	dec a
.l5509
	ld (ix+#1e),a
.l550c
	ld a,b
	sub (ix+#1e)
	jr nc,l5513
	xor a
.l5513
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l56a5
.l551d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l56cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l553b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l553b
	ld (l56cc),hl
	ret
.l553f
	ld hl,l56ee
	cp #61
	jr nc,l5549
	add a
	ld c,a
	add hl,bc
.l5549
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5553
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5678
	ld (ix+#1e),a
	jp l53e0
.l5565
	dec b
.l5566
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l5571
	neg
.l5571
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
	jp l53e0
.l5587
	dec b
	jr l558b
.l558a
	inc b
.l558b
	call l5678
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l53e0
.l559a
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
	jp l565d
.l55ab
	ld a,(hl)
	inc hl
	or a
	jr z,l55cd
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
.l55cd
	ld (ix+#29),a
	jp l53e0
.l55d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l56cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l56ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l53e0
.l55ed
	ld a,(hl)
	or a
	jr z,l55fe
	call l567a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l53e0
.l55fe
	ld hl,#0101
	ld (l56ca),hl
	jp l53e0
.l5607
	call l5678
	ld (ix+#1e),a
	jp l53e0
.l5610
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5689
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5689
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l53e0
.l5632
	ld a,(hl)
	inc hl
	ld (l56c9),a
	jp l53e0
.l563a
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
	jp l53e0
.l5659
	call l5678
	add a
.l565d
	ld b,#00
	ld c,a
	push hl
	ld hl,l58c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l53e0
.l5678
	ld a,(hl)
	inc hl
.l567a
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
.l5689
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5840
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l56ed
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l56a5
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
.l56c4
	ret
.l56cc equ $ + 7
.l56cb equ $ + 6
.l56ca equ $ + 5
.l56c9 equ $ + 4
.l56c7 equ $ + 2
.l56c5
	db #01,#38,#00,#00,#06,#2d,#06,#01
.l56cf equ $ + 2
.l56ce equ $ + 1
	db #38,#00,#00
.l56d0
	dw l5553,l5566,l5565,l558a
	dw l5587,l559a,l55ab,l55d3
	dw l55ed,l55d3,l5607,l5610
.l56ed equ $ + 5
	dw l5632,l563a,l5659
.l56ee
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
.l57b4 equ $ + 4
.l57b0
	db #08,#00,#01,#08,#ef,#00,#00,#30
.l57be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#60,#59
	db #a0,#59,#c0,#59,#00,#00,#0d,#13
.l57cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #e8,#5b,#75,#5b,#00,#40,#00,#00
.l57de equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l57e2 equ $ + 2
	db #03,#10,#3f,#01,#00,#2b,#00,#00
.l57ec equ $ + 4
	db #00,#00,#20,#5b,#60,#59,#60,#5a
	db #80,#5a,#18,#07,#0d,#13,#00,#00
.l57fd equ $ + 5
	db #00,#00,#00,#00,#00,#02,#14,#5e
	db #96,#5b,#00,#70,#00,#00,#00,#00
.l580c equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l5810
	db #50,#00,#00,#43,#00,#00,#00,#00
.l581a equ $ + 2
	db #00,#00,#a0,#5a,#e0,#5a,#00,#5b
	db #08,#18,#01,#1f,#00,#00,#00,#00
.l582b equ $ + 3
	db #00,#00,#00,#01,#54,#5f,#b7,#5b
	db #00,#90,#00,#00,#00,#00,#00,#00
.l583a equ $ + 2
	db #01,#01,#60,#5b,#81,#5b,#a2,#5b
.l5840
	db #d2,#11,#d2,#11,#d2,#11,#00,#00
	db #e0,#58,#20,#59,#40,#59,#00,#00
	db #d2,#11,#d2,#11,#d2,#11,#00,#00
	db #d2,#11,#d2,#11,#d2,#11,#00,#00
	db #60,#59,#a0,#59,#c0,#59,#00,#00
	db #d2,#11,#d2,#11,#d2,#11,#00,#00
	db #e0,#59,#20,#5a,#40,#5a,#00,#00
	db #60,#59,#60,#5a,#80,#5a,#18,#07
	db #d2,#11,#d2,#11,#d2,#11,#00,#00
	db #a0,#5a,#e0,#5a,#00,#5b,#08,#18
	db #d2,#11,#d2,#11,#d2,#11,#00,#00
	db #d2,#11,#d2,#11,#d2,#11,#00,#00
	db #d2,#11,#d2,#11,#d2,#11,#00,#00
	db #d2,#11,#d2,#11,#d2,#11,#00,#00
	db #d2,#11,#d2,#11,#d2,#11,#00,#00
	db #d2,#11,#d2,#11,#d2,#11,#00,#00
.l58c0
	db #d2,#11,#20,#5b,#d2,#11,#d2,#11
	db #d2,#11,#d2,#11,#40,#5b,#d2,#11
	db #d2,#11,#d2,#11,#d2,#11,#d2,#11
	db #d2,#11,#d2,#11,#d2,#11,#d2,#11
	db #00,#00,#80,#00,#40,#01,#a0,#01
	db #40,#02,#e8,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #0d,#0d,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#18,#24,#00,#18,#24,#00,#18
	db #24,#00,#18,#24,#00,#18,#24,#00
	db #18,#24,#00,#18,#24,#00,#18,#24
	db #00,#18,#24,#00,#18,#24,#00,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #00,#c3,#5b,#00,#d2,#5b,#00,#c3
	db #5b,#00,#d2,#5b,#00,#e5,#5b,#00
	db #43,#5c,#00,#e5,#5b,#00,#43,#5c
	db #00,#a0,#5c,#00,#f7,#5c,#80,#6c
	db #5b,#00,#59,#5d,#00,#8a,#5d,#00
	db #59,#5d,#00,#8a,#5d,#00,#b5,#5d
	db #00,#e6,#5d,#00,#11,#5e,#00,#57
	db #5e,#00,#8e,#5e,#00,#a0,#5c,#80
	db #8d,#5b,#00,#f0,#5e,#00,#f0,#5e
	db #00,#f3,#5e,#00,#af,#5f,#00,#4e
	db #5f,#00,#af,#5f,#00,#4e,#5f,#00
	db #af,#5f,#00,#8e,#5e,#00,#10,#60
	db #80,#ae,#5b,#00,#04,#34,#90,#0c
	db #39,#90,#0c,#36,#90,#0c,#3b,#90
	db #08,#ff,#3b,#90,#04,#38,#90,#0c
	db #3d,#90,#0c,#39,#90,#08,#3b,#90
	db #04,#34,#90,#08,#ff,#40,#40,#03
	db #c0,#40,#c0,#10,#b4,#90,#c0,#40
	db #b4,#90,#c0,#60,#b4,#90,#c0,#10
	db #b4,#90,#c0,#40,#c0,#10,#b4,#90
	db #c0,#40,#c0,#10,#b9,#90,#c0,#40
	db #b9,#90,#c0,#60,#c0,#40,#c0,#10
	db #b9,#90,#c0,#40,#c0,#10,#b9,#90
	db #c0,#40,#c0,#10,#b6,#90,#c0,#40
	db #b6,#90,#c0,#60,#c0,#40,#c0,#10
	db #b6,#90,#c0,#40,#c0,#10,#b6,#90
	db #c0,#40,#c0,#10,#bb,#90,#c0,#40
	db #bb,#90,#c0,#60,#c0,#40,#c0,#10
	db #bb,#90,#ff,#40,#40,#03,#c0,#40
	db #b8,#90,#b8,#90,#c0,#40,#b8,#90
	db #c0,#60,#b8,#90,#c0,#10,#b8,#90
	db #c0,#40,#c0,#10,#b8,#90,#c0,#40
	db #c0,#10,#b9,#90,#c0,#40,#b9,#90
	db #c0,#60,#c0,#40,#c0,#10,#b9,#90
	db #c0,#40,#c0,#10,#b9,#90,#c0,#40
	db #c0,#10,#bd,#90,#c0,#10,#c0,#10
	db #c0,#40,#c0,#10,#b6,#90,#c0,#40
	db #c0,#10,#bb,#90,#c0,#40,#bb,#90
	db #b4,#90,#c0,#40,#b4,#90,#c0,#60
	db #c0,#40,#c0,#10,#34,#90,#02,#ff
	db #00,#01,#c0,#40,#c0,#10,#c0,#40
	db #c0,#10,#40,#40,#02,#c0,#40,#c0
	db #60,#c0,#40,#c0,#10,#40,#40,#02
	db #40,#10,#02,#c0,#40,#c0,#10,#40
	db #40,#02,#c0,#40,#c0,#60,#c0,#40
	db #c0,#10,#40,#40,#02,#40,#10,#02
	db #c0,#40,#c0,#10,#40,#40,#02,#c0
	db #40,#c0,#60,#c0,#40,#c0,#10,#40
	db #40,#02,#40,#10,#02,#c0,#40,#c0
	db #10,#40,#40,#02,#c0,#40,#c0,#60
	db #c0,#40,#c0,#10,#c0,#40,#ff,#3b
	db #91,#10,#bf,#90,#c2,#90,#bf,#90
	db #b8,#90,#bc,#90,#bf,#90,#bc,#90
	db #b8,#90,#bc,#90,#bf,#90,#bc,#90
	db #b8,#90,#bc,#90,#bf,#90,#bc,#90
	db #b1,#90,#b4,#90,#bd,#90,#b1,#90
	db #b4,#90,#bd,#90,#b1,#90,#b4,#90
	db #bd,#90,#b1,#90,#b4,#90,#bd,#90
	db #b9,#90,#bd,#90,#b9,#90,#bd,#90
	db #c0,#90,#bd,#90,#b9,#90,#bd,#90
	db #bb,#90,#bf,#90,#c2,#90,#bf,#90
	db #c0,#90,#c4,#90,#c7,#90,#c4,#90
	db #c0,#90,#c4,#90,#c7,#90,#c4,#90
	db #ff,#3b,#71,#40,#40,#70,#04,#40
	db #70,#02,#42,#70,#02,#40,#70,#02
	db #3f,#70,#02,#3d,#70,#04,#3d,#70
	db #04,#3d,#70,#04,#42,#70,#04,#42
	db #70,#02,#44,#70,#02,#42,#70,#02
	db #40,#70,#02,#3f,#70,#04,#3f,#70
	db #04,#ff,#3f,#71,#40,#44,#70,#04
	db #44,#70,#02,#45,#70,#02,#44,#70
	db #02,#42,#70,#02,#40,#70,#04,#40
	db #70,#04,#3b,#70,#02,#3b,#70,#02
	db #3d,#70,#04,#40,#70,#04,#3f,#70
	db #04,#40,#70,#08,#ff,#3b,#7f,#46
	db #40,#70,#04,#40,#70,#02,#42,#70
	db #02,#40,#70,#02,#3f,#70,#02,#3d
	db #70,#04,#3d,#70,#04,#3d,#70,#04
	db #42,#70,#04,#42,#70,#02,#44,#70
	db #02,#42,#70,#02,#40,#70,#02,#3f
	db #70,#04,#3f,#70,#04,#ff,#3f,#7f
	db #46,#44,#70,#04,#44,#70,#02,#45
	db #70,#02,#44,#70,#02,#42,#70,#02
	db #40,#70,#04,#40,#70,#04,#3b,#70
	db #02,#3b,#70,#02,#3d,#70,#04,#40
	db #70,#04,#3f,#70,#04,#40,#70,#08
	db #ff,#3b,#7f,#41,#40,#70,#02,#3f
	db #70,#02,#40,#70,#02,#42,#70,#02
	db #40,#70,#02,#3f,#70,#02,#3d,#70
	db #02,#3b,#70,#02,#39,#70,#02,#38
	db #70,#02,#36,#70,#02,#3d,#70,#02
	db #42,#70,#02,#41,#70,#02,#42,#70
	db #02,#44,#70,#02,#42,#70,#02,#40
	db #70,#02,#3f,#70,#02,#3d,#70,#02
	db #3b,#70,#02,#3a,#70,#02,#ff,#39
	db #7f,#41,#44,#70,#04,#44,#70,#02
	db #45,#70,#02,#44,#70,#02,#42,#70
	db #02,#40,#70,#02,#3f,#70,#02,#3d
	db #70,#02,#3b,#70,#02,#39,#70,#02
	db #38,#70,#02,#39,#70,#04,#40,#70
	db #04,#3f,#70,#04,#40,#70,#02,#3b
	db #70,#02,#34,#70,#04,#ff,#4c,#91
	db #10,#d0,#90,#d3,#90,#d0,#90,#c0
	db #90,#c4,#90,#c7,#90,#c4,#90,#c0
	db #90,#c4,#90,#c7,#90,#c4,#90,#c0
	db #90,#c4,#90,#c7,#90,#c4,#90,#c5
	db #90,#c9,#90,#cc,#90,#c9,#90,#c5
	db #90,#c9,#90,#cc,#90,#c9,#90,#c5
	db #90,#c9,#90,#cc,#90,#c9,#90,#c2
	db #90,#c6,#90,#c9,#90,#c6,#90,#c2
	db #90,#c6,#90,#c9,#90,#c6,#90,#c2
	db #90,#c6,#90,#c9,#90,#c6,#90,#c7
	db #90,#cb,#90,#ce,#90,#cb,#90,#c7
	db #90,#cb,#90,#ce,#90,#cb,#90,#ff
	db #00,#30,#ff,#00,#04,#c0,#90,#c4
	db #90,#c7,#90,#c4,#90,#c0,#90,#c4
	db #90,#c7,#90,#c4,#90,#c0,#90,#c4
	db #90,#c7,#90,#c4,#90,#c5,#90,#c9
	db #90,#cc,#90,#c9,#90,#c5,#90,#c9
	db #90,#cc,#90,#c9,#90,#c5,#90,#c9
	db #90,#cc,#90,#c9,#90,#c2,#90,#c6
	db #90,#c9,#90,#c6,#90,#c2,#90,#c6
	db #90,#c9,#90,#c6,#90,#c2,#90,#c6
	db #90,#c9,#90,#c6,#90,#c7,#90,#cb
	db #90,#ce,#90,#cb,#90,#c7,#90,#cb
	db #90,#ce,#90,#cb,#90,#ff,#cc,#90
	db #d0,#90,#d3,#90,#d0,#90,#c0,#90
	db #c4,#90,#c7,#90,#c4,#90,#c0,#90
	db #c4,#90,#c7,#90,#c4,#90,#c0,#90
	db #c4,#90,#c7,#90,#c4,#90,#c5,#90
	db #c9,#90,#cc,#90,#c9,#90,#c5,#90
	db #c9,#90,#cc,#90,#c9,#90,#c5,#90
	db #c9,#90,#cc,#90,#c9,#90,#c2,#90
	db #c6,#90,#c9,#90,#c6,#90,#c2,#90
	db #c6,#90,#c9,#90,#c6,#90,#c2,#90
	db #c6,#90,#c9,#90,#c6,#90,#c7,#90
	db #cb,#90,#ce,#90,#cb,#90,#c7,#90
	db #cb,#90,#ce,#90,#cb,#90,#ff,#c7
	db #90,#cb,#90,#ce,#90,#cb,#90,#c4
	db #90,#c8,#90,#cb,#90,#c8,#90,#c4
	db #90,#c8,#90,#cb,#90,#c8,#90,#c4
	db #90,#c8,#90,#cb,#90,#c8,#90,#bd
	db #90,#c0,#90,#c9,#90,#bd,#90,#c0
	db #90,#c9,#90,#bd,#90,#c0,#90,#c9
	db #90,#bd,#90,#c0,#90,#c9,#90,#c5
	db #90,#c9,#90,#c5,#90,#c9,#90,#cc
	db #90,#c9,#90,#c5,#90,#c9,#90,#c7
	db #90,#cb,#90,#ce,#90,#cb,#90,#cc
	db #ff
;
.music_info
	db "Plissken Noel (2002)(Public Domain)()",0
	db "ST-Module",0

	read "music_end.asm"
