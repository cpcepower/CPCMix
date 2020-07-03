; Music of Scoop-X-Treme 5-4 (1994)(Hypnomega)()(ST-Module)
; Ripped by Megachur the 28/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SCOOXT54.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6300

	read "music_header.asm"

	jp l630b
	jp l6393
	jp l6377
	db #66,#04
;
.init_music
.l630b
;
	ld b,#03
	ld ix,l66da
	ld iy,l6606
	ld de,#001c
.l6318
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
	djnz l6318
	ld a,#04
	ld (l63bb),a
	ld a,d
	ld (l63cf),a
	inc a
	ld (l63b6),a
	ld a,#38
	ld (l63c0),a
	ld a,#ff
	ld (l6602),a
	ld (l6603),a
	ld (l6604),a
	ld (l6605),a
	ld a,#0c
	ld c,d
	call l65e4
	ld a,#0d
	ld c,d
	jp l65e4
;
.stop_music
.l6377
;
	ld a,#07
	ld c,#3f
	call l65e4
	ld a,#08
	ld c,#00
	call l65e4
	ld a,#09
	ld c,#00
	call l65e4
	ld a,#0a
	ld c,#00
	jp l65e4
;
.play_music
.l6393
;
	ld hl,l63b6
	dec (hl)
	ld ix,l66da
	ld bc,l66e8
	call l6449
	ld ix,l66f6
	ld bc,l6704
	call l6449
	ld ix,l6712
	ld bc,l6720
	call l6449
.l63b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l63bf
.l63bb equ $ + 1
	ld a,#00
	ld (l63b6),a
.l63c0 equ $ + 1
.l63bf
	ld a,#00
	ld hl,l6603
	cp (hl)
	jr z,l63ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l65e4
.l63cf equ $ + 1
.l63ce
	ld a,#00
	ld hl,l6602
	cp (hl)
	jr z,l63dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l65e4
.l63de equ $ + 1
.l63dd
	ld a,#00
	ld hl,l6604
	cp (hl)
	jr z,l63ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l65e4
.l63ed equ $ + 1
.l63ec
	ld a,#00
	ld hl,l6605
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l65e4
.l63fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l64fa
.l6409
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
	jp l65e4
.l6423
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l6438
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l6438
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l645c
.l6449
	ld a,(l63b6)
	or a
	jp nz,l64fa
	dec (ix+#06)
	jp nz,l64fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l645c
	ld a,(hl)
	or a
	jr z,l63fa
	cp #fe
	jr z,l6409
	cp #ff
	jr z,l6423
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l660c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l6498
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l6498
	and #7f
	ld (ix+#06),a
	jr l64eb
.l6498
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l64ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l64ac
	add a
	add a
	add a
	ld e,a
	ld hl,l6742
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
	jr z,l64eb
	cp #f0
	jp z,l65a0
	cp #d0
	jp z,l65bc
	cp #b0
	jp z,l65c4
	cp #80
	jp nc,l65cc
	cp #10
	jr nz,l64eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l64eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l64fa
	ld a,(ix+#17)
	or a
	jr nz,l650e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l650e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l6539
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l660c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l6539
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
	call l65e4
	ld c,h
	ld a,(ix+#03)
	call l65e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6577
	and #0f
	sub (ix+#0a)
	jr nc,l656d
	xor a
.l656d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l65e4
.l6577
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
	jr z,l6594
	ld b,a
	ld a,c
	ld (l63cf),a
	ld a,b
	sub #40
.l6594
	ld (l659b),a
	ld a,(l63c0)
.l659b equ $ + 1
	bit 0,a
	ld (l63c0),a
	ret
.l65a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l67c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l64eb
.l65bc
	inc hl
	ld a,(hl)
	ld (l63bb),a
	jp l64eb
.l65c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l64eb
.l65cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l63ed),a
	inc hl
	ld a,(hl)
	ld (l63de),a
	jp l64eb
.l65e4
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
.l6605 equ $ + 3
.l6604 equ $ + 2
.l6603 equ $ + 1
.l6602
	db #ff,#ff,#ff,#ff
.l6606
	dw l6b62,l6ba4,l6be6
.l660c
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
	dw #000f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l66e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l66f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l6704 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6712 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l6720 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6742 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#67,#22,#68
	db #42,#68,#00,#00,#62,#68,#a2,#68
	db #c2,#68,#00,#00,#e2,#68,#22,#69
	db #42,#69,#00,#00,#62,#69,#a2,#69
	db #42,#69,#00,#00,#e2,#68,#c2,#69
	db #42,#69,#00,#00,#e2,#69,#22,#6a
	db #42,#68,#18,#08,#e2,#69,#42,#6a
	db #42,#68,#18,#08,#e2,#67,#62,#6a
	db #42,#68,#1c,#04,#e2,#67,#62,#6a
	db #42,#68,#1c,#04,#e2,#67,#62,#6a
	db #42,#68,#1c,#04,#82,#6a,#c2,#6a
	db #42,#69,#00,#00,#e2,#68,#e2,#6a
	db #42,#69,#00,#00,#dc,#61,#dc,#61
	db #dc,#61,#00,#00,#dc,#61,#dc,#61
	db #dc,#61,#00,#00,#dc,#61,#dc,#61
	db #dc,#61,#00,#00,#dc,#61,#dc,#61
.l67c2 equ $ + 4
	db #dc,#61,#00,#00,#dc,#61,#dc,#61
	db #dc,#61,#dc,#61,#dc,#61,#dc,#61
	db #dc,#61,#02,#6b,#22,#6b,#42,#6b
	db #dc,#61,#dc,#61,#dc,#61,#dc,#61
	db #dc,#61,#dc,#61,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#21,#01,#71,#02
	db #71,#03,#b1,#03,#91,#04,#11,#06
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0d,#0d,#0c
	db #0c,#0b,#07,#05,#03,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#11,#02,#a1,#00
	db #2c,#02,#a1,#02,#f0,#00,#e1,#02
	db #31,#01,#b1,#02,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#08,#08,#08,#08
	db #08,#08,#08,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#0e,#0e,#0e,#0e
	db #0e,#0e,#0d,#0d,#0d,#0d,#0d,#0d
	db #0c,#0c,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#0a,#09,#09,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0a,#09,#09,#0a
	db #0a,#09,#09,#0a,#0a,#09,#09,#0a
	db #0a,#09,#09,#0a,#0a,#09,#09,#0a
	db #0a,#09,#09,#0a,#0a,#09,#09,#0a
	db #0a,#09,#09,#0a,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#11,#ff,#11,#ff
	db #11,#ff,#11,#ff,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#05,#05,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#18,#1c,#1f,#18
	db #18,#1c,#1f,#18,#18,#1c,#1f,#18
	db #18,#1c,#1f,#18,#18,#1c,#1f,#18
	db #18,#1c,#1f,#18,#18,#1c,#1f,#18
	db #18,#1c,#1f,#18,#18,#1b,#1f,#18
	db #18,#1b,#1f,#18,#18,#1b,#1f,#18
	db #18,#1b,#1f,#18,#18,#1b,#1f,#18
	db #18,#1b,#1f,#18,#18,#1b,#1f,#18
	db #18,#1b,#1f,#18,#18,#1b,#22,#18
	db #18,#1b,#22,#18,#18,#1b,#22,#18
	db #18,#1b,#22,#18,#18,#1b,#22,#18
	db #18,#1b,#22,#18,#18,#1b,#22,#18
.l6b62 equ $ + 4
	db #18,#1b,#22,#18,#00,#28,#6c,#00
	db #9e,#6c,#00,#fd,#6c,#00,#76,#6d
	db #00,#dc,#6d,#00,#58,#6e,#00,#cc
	db #6e,#00,#1b,#6f,#00,#68,#6f,#00
	db #bb,#6f,#00,#f5,#6f,#00,#37,#70
	db #00,#78,#70,#00,#b1,#70,#00,#fb
	db #70,#00,#46,#71,#00,#5e,#71,#00
	db #91,#71,#00,#ef,#71,#00,#18,#72
.l6ba4 equ $ + 6
	db #00,#2c,#72,#80,#62,#6b,#00,#31
	db #72,#00,#31,#72,#00,#31,#72,#00
	db #31,#72,#00,#31,#72,#00,#af,#72
	db #00,#20,#73,#00,#9e,#73,#00,#31
	db #72,#00,#31,#72,#00,#31,#72,#00
	db #31,#72,#00,#31,#72,#00,#31,#72
	db #00,#31,#72,#00,#0f,#74,#00,#20
	db #73,#00,#20,#73,#00,#8a,#74,#00
	db #fe,#74,#00,#46,#75,#80,#a4,#6b
.l6be6
	db #00,#4f,#75,#00,#b4,#75,#00,#4f
	db #75,#00,#19,#76,#00,#7e,#76,#00
	db #e3,#76,#00,#48,#77,#00,#ad,#77
	db #00,#12,#78,#00,#77,#78,#00,#dc
	db #78,#00,#41,#79,#00,#a6,#79,#00
	db #0b,#7a,#00,#70,#7a,#00,#d5,#7a
	db #00,#35,#7b,#00,#9a,#7b,#00,#ff
	db #7b,#00,#64,#7c,#00,#8e,#7c,#80
	db #e6,#6b,#1f,#03,#d6,#04,#9f,#b6
	db #01,#1f,#02,#b6,#04,#9f,#b6,#00
	db #9f,#b6,#01,#2b,#02,#05,#2b,#02
	db #b5,#02,#29,#03,#b5,#00,#a9,#b5
	db #02,#2b,#04,#06,#ab,#b6,#01,#ab
	db #b6,#04,#ab,#b6,#00,#ab,#b6,#02
	db #2b,#03,#b6,#0f,#ab,#b6,#05,#a6
	db #b6,#00,#a6,#b6,#02,#9f,#b6,#02
	db #9f,#b6,#0f,#2b,#04,#b6,#00,#9f
	db #b6,#02,#9f,#b6,#0f,#1d,#82,#1d
	db #02,#b6,#06,#9f,#b6,#02,#1f,#02
	db #b6,#0f,#1f,#02,#b5,#0f,#9f,#b5
	db #07,#1f,#06,#b5,#00,#22,#04,#06
	db #16,#02,#05,#96,#b5,#02,#96,#b5
	db #0f,#a3,#b6,#02,#a3,#b6,#0f,#ff
	db #24,#05,#06,#a4,#b6,#00,#24,#02
	db #b6,#02,#30,#02,#b6,#00,#b0,#b6
	db #00,#b0,#b6,#01,#ae,#b5,#01,#ae
	db #b5,#0f,#30,#02,#b5,#05,#24,#04
	db #06,#a4,#b6,#00,#a4,#b6,#01,#a4
	db #b6,#01,#24,#04,#b6,#02,#a4,#b6
	db #01,#2b,#04,#b6,#00,#26,#02,#06
	db #27,#02,#36,#26,#82,#27,#82,#26
	db #82,#27,#82,#26,#82,#27,#82,#26
	db #04,#35,#a9,#05,#a9,#b5,#02,#2b
	db #02,#b5,#00,#30,#02,#35,#32,#02
	db #05,#33,#02,#35,#2b,#82,#ff,#9f
	db #06,#1f,#05,#b6,#01,#9f,#b6,#04
	db #9f,#b6,#07,#2b,#04,#05,#a9,#b5
	db #02,#a9,#b5,#0f,#ab,#b5,#00,#2b
	db #02,#b5,#02,#ab,#b5,#06,#ab,#b6
	db #02,#ab,#b6,#0f,#24,#04,#05,#26
	db #02,#35,#a6,#b5,#01,#26,#03,#b5
	db #0f,#9d,#b6,#02,#9d,#b6,#0f,#2b
	db #04,#b6,#00,#9f,#05,#9f,#b5,#01
	db #1f,#02,#b5,#03,#a6,#b5,#02,#a6
	db #b5,#0f,#a9,#b5,#02,#a9,#b5,#0f
	db #24,#04,#36,#26,#04,#05,#a6,#b5
	db #00,#a6,#b5,#01,#a4,#b5,#00,#a4
	db #b5,#01,#a6,#b5,#00,#a6,#b5,#01
	db #a4,#b5,#00,#a4,#b5,#01,#a2,#b5
	db #00,#a2,#b5,#01,#1f,#02,#36,#ff
	db #1b,#04,#06,#1b,#02,#b6,#01,#9b
	db #b5,#02,#9b,#b5,#0f,#27,#03,#06
	db #a7,#b6,#00,#a4,#b5,#02,#a4,#b5
	db #0f,#30,#08,#b5,#00,#a4,#b6,#01
	db #a4,#b6,#0f,#27,#02,#05,#a7,#b5
	db #01,#a7,#b5,#0f,#a7,#b5,#02,#a7
	db #b5,#0f,#a7,#b5,#02,#a7,#b5,#0f
	db #26,#02,#06,#a6,#b6,#00,#a6,#b6
	db #01,#a6,#b5,#02,#a6,#b5,#0f,#24
	db #02,#b5,#00,#26,#04,#35,#a4,#35
	db #a4,#b5,#01,#26,#08,#06,#29,#84
	db #a6,#b5,#02,#a6,#b5,#0f,#29,#02
	db #b5,#00,#2a,#02,#36,#ff,#1f,#02
	db #06,#1f,#02,#b6,#01,#ab,#b5,#02
	db #2b,#03,#b5,#0f,#2b,#02,#06,#ab
	db #b6,#00,#ab,#b6,#02,#a9,#b5,#02
	db #a9,#b5,#0f,#2e,#06,#06,#9d,#b5
	db #02,#9d,#b5,#0f,#1f,#02,#36,#22
	db #02,#46,#9d,#35,#9d,#b5,#0f,#24
	db #02,#b5,#00,#a4,#b5,#00,#a4,#b5
	db #01,#9a,#b6,#01,#1a,#03,#b6,#04
	db #9a,#b5,#02,#9a,#b5,#0f,#a6,#b6
	db #02,#a6,#b6,#0f,#a4,#b6,#01,#a4
	db #b6,#04,#26,#02,#b6,#00,#29,#04
	db #46,#26,#04,#05,#a6,#b5,#00,#a6
	db #b5,#01,#a6,#b5,#01,#a6,#b5,#04
	db #1a,#02,#b5,#00,#9a,#b5,#00,#9a
	db #b5,#01,#25,#02,#06,#a4,#36,#a4
	db #36,#ff,#24,#06,#06,#24,#02,#05
	db #30,#03,#35,#b0,#b5,#01,#24,#02
	db #b5,#00,#25,#02,#45,#a6,#05,#a6
	db #b5,#00,#b2,#b5,#00,#b2,#b5,#01
	db #29,#02,#b5,#00,#37,#03,#05,#b7
	db #b5,#01,#29,#02,#b5,#00,#2b,#02
	db #45,#a9,#35,#a9,#35,#26,#02,#05
	db #a6,#b5,#00,#a6,#b5,#02,#a6,#b5
	db #02,#a6,#b5,#01,#32,#04,#b6,#02
	db #b2,#b6,#02,#b2,#b6,#03,#24,#02
	db #b6,#00,#a6,#06,#a6,#b6,#02,#a6
	db #b6,#05,#26,#03,#b6,#0f,#26,#02
	db #05,#29,#02,#b5,#01,#2b,#02,#b5
	db #02,#2e,#02,#b5,#04,#30,#02,#b5
	db #05,#30,#02,#b5,#06,#ff,#1f,#02
	db #06,#9f,#b6,#01,#1f,#03,#b6,#04
	db #1f,#02,#35,#ab,#06,#2b,#03,#b6
	db #02,#29,#04,#35,#2b,#06,#06,#ab
	db #06,#2b,#05,#b6,#02,#a2,#05,#a2
	db #b5,#02,#23,#02,#b5,#00,#24,#02
	db #06,#a4,#b6,#01,#24,#03,#b6,#04
	db #24,#02,#35,#ab,#06,#2b,#03,#b6
	db #02,#2e,#04,#35,#2b,#06,#06,#ab
	db #06,#2b,#05,#b6,#02,#26,#02,#b6
	db #00,#29,#02,#35,#ff,#26,#02,#06
	db #a6,#b6,#01,#26,#03,#b6,#04,#26
	db #02,#05,#a9,#06,#29,#03,#b6,#02
	db #24,#04,#05,#26,#06,#06,#a9,#06
	db #29,#05,#b6,#02,#a6,#05,#a6,#b5
	db #02,#25,#02,#b5,#00,#24,#02,#06
	db #a4,#b6,#01,#24,#03,#b6,#04,#24
	db #02,#05,#ab,#06,#2b,#03,#b6,#02
	db #29,#04,#05,#2e,#06,#06,#ab,#06
	db #2b,#05,#b6,#02,#29,#02,#05,#24
	db #82,#ff,#2b,#02,#06,#ab,#b6,#00
	db #2b,#03,#b6,#02,#ab,#b6,#00,#2b
	db #03,#b6,#02,#26,#02,#b6,#00,#29
	db #02,#05,#26,#82,#2b,#84,#ab,#b5
	db #01,#2b,#05,#b5,#04,#a6,#06,#a6
	db #b6,#02,#2b,#03,#b6,#00,#ab,#b6
	db #01,#29,#02,#b6,#00,#29,#02,#b6
	db #01,#24,#02,#06,#26,#04,#05,#2b
	db #82,#24,#02,#06,#24,#02,#b6,#01
	db #26,#0a,#05,#26,#02,#b5,#00,#22
	db #02,#06,#23,#82,#ff,#24,#06,#06
	db #2b,#04,#05,#30,#82,#22,#82,#23
	db #82,#24,#04,#06,#a4,#b6,#00,#a4
	db #b6,#00,#24,#02,#b6,#02,#29,#02
	db #05,#2b,#04,#06,#2b,#02,#b6,#00
	db #29,#84,#24,#02,#06,#33,#06,#05
	db #32,#02,#b5,#00,#27,#02,#05,#30
	db #8c,#22,#02,#06,#24,#82,#ff,#21
	db #0c,#06,#a1,#06,#a1,#b6,#02,#21
	db #0a,#b6,#0f,#ac,#b6,#01,#2d,#05
	db #06,#ad,#b6,#00,#ad,#b6,#01,#2c
	db #04,#b6,#00,#30,#02,#05,#31,#04
	db #06,#38,#82,#33,#83,#b3,#b6,#00
	db #b1,#b6,#00,#b1,#b6,#01,#31,#04
	db #b6,#03,#25,#02,#06,#2c,#02,#05
	db #31,#82,#33,#82,#33,#02,#b5,#02
	db #ff,#31,#02,#05,#30,#82,#31,#82
	db #30,#82,#35,#82,#35,#02,#b5,#00
	db #30,#02,#06,#31,#82,#30,#84,#33
	db #82,#ac,#06,#ac,#b6,#00,#ac,#b6
	db #01,#2c,#83,#25,#02,#b6,#00,#a5
	db #b6,#01,#a5,#b6,#04,#1e,#08,#b6
	db #00,#25,#04,#06,#2c,#88,#2a,#04
	db #05,#28,#84,#2c,#82,#2c,#02,#b5
	db #00,#ff,#2a,#0a,#06,#2c,#02,#05
	db #30,#82,#31,#82,#35,#82,#36,#82
	db #38,#82,#36,#82,#35,#84,#31,#04
	db #06,#27,#02,#05,#2e,#82,#38,#82
	db #33,#83,#b3,#b5,#00,#b1,#b5,#00
	db #b1,#b5,#00,#b1,#b5,#01,#b1,#b5
	db #01,#33,#0c,#b5,#00,#27,#02,#05
	db #2c,#84,#ff,#28,#04,#06,#34,#02
	db #05,#36,#82,#38,#82,#28,#04,#06
	db #2f,#88,#af,#b6,#00,#af,#b6,#02
	db #2f,#02,#b6,#03,#2f,#02,#b6,#00
	db #34,#02,#05,#36,#82,#38,#82,#39
	db #82,#38,#82,#34,#82,#38,#82,#34
	db #84,#b4,#b5,#00,#b4,#b5,#02,#b1
	db #06,#31,#05,#b6,#00,#b4,#05,#34
	db #03,#b5,#02,#2d,#02,#b5,#00,#31
	db #02,#05,#2c,#82,#ff,#2f,#06,#06
	db #b1,#05,#b1,#b5,#02,#31,#07,#b5
	db #0f,#38,#03,#05,#b8,#b5,#0d,#b8
	db #b5,#07,#38,#02,#06,#34,#82,#31
	db #82,#2f,#82,#31,#82,#af,#b6,#0f
	db #af,#b6,#0a,#b4,#05,#36,#83,#b6
	db #b5,#00,#b6,#b5,#02,#38,#02,#b5
	db #00,#b8,#b5,#02,#38,#03,#b5,#0f
	db #39,#0c,#b5,#00,#2f,#02,#05,#2a
	db #82,#2c,#82,#2c,#02,#b5,#01,#ff
	db #28,#24,#05,#2f,#02,#06,#2d,#02
	db #05,#2f,#84,#32,#84,#34,#86,#32
	db #84,#2f,#82,#32,#82,#34,#82,#ff
	db #36,#02,#05,#37,#82,#36,#82,#39
	db #86,#34,#82,#36,#82,#39,#82,#36
	db #82,#34,#82,#32,#84,#34,#82,#36
	db #84,#32,#86,#af,#05,#2f,#05,#b5
	db #02,#2f,#08,#b5,#00,#37,#02,#05
	db #36,#82,#32,#82,#2f,#82,#32,#82
	db #34,#82,#ff,#36,#02,#05,#36,#02
	db #b5,#01,#36,#02,#b5,#00,#2a,#02
	db #05,#36,#82,#34,#82,#32,#82,#34
	db #82,#2d,#84,#2e,#82,#2f,#82,#2f
	db #02,#b5,#01,#36,#02,#b5,#00,#2a
	db #02,#05,#b6,#05,#b6,#b5,#01,#39
	db #02,#b5,#00,#34,#02,#05,#39,#82
	db #32,#82,#34,#82,#b2,#05,#32,#03
	db #b5,#01,#34,#02,#b5,#00,#b4,#b5
	db #00,#b4,#b5,#01,#34,#04,#b5,#02
	db #2f,#02,#b5,#00,#b2,#05,#32,#03
	db #b5,#01,#34,#02,#06,#26,#02,#05
	db #ff,#35,#02,#05,#35,#02,#b5,#01
	db #35,#02,#b5,#00,#34,#02,#05,#35
	db #84,#34,#82,#35,#82,#34,#86,#32
	db #86,#2e,#84,#2d,#82,#32,#82,#34
	db #82,#36,#94,#2d,#82,#32,#82,#34
	db #82,#ff,#36,#04,#d5,#04,#39,#03
	db #05,#36,#84,#34,#85,#32,#86,#2d
	db #8a,#2a,#90,#26,#90,#ff,#00,#04
	db #fe,#3c,#ff,#3a,#02,#b1,#02,#3a
	db #02,#bb,#0a,#ba,#b2,#02,#ba,#b2
	db #0f,#3a,#02,#bb,#09,#3a,#04,#03
	db #ba,#b2,#02,#ba,#b2,#0f,#3a,#02
	db #b2,#09,#3a,#02,#b1,#02,#3a,#02
	db #bb,#0a,#ba,#b2,#02,#ba,#b2,#0f
	db #3a,#02,#bb,#09,#3a,#04,#03,#ba
	db #b2,#02,#ba,#b2,#0f,#ba,#04,#ba
	db #b4,#01,#3a,#02,#b1,#02,#3a,#02
	db #bb,#0a,#ba,#b2,#02,#ba,#b2,#0f
	db #3a,#02,#bb,#09,#3a,#04,#03,#ba
	db #b2,#02,#ba,#b2,#0f,#3a,#02,#bb
	db #09,#3a,#02,#b1,#02,#3a,#02,#bb
	db #09,#ba,#b2,#02,#ba,#b2,#0f,#3a
	db #02,#bb,#09,#3a,#04,#03,#ba,#b3
	db #02,#ba,#b3,#0f,#3a,#02,#b3,#00
	db #ff,#3a,#02,#b1,#02,#3a,#02,#bb
	db #0a,#ba,#b2,#02,#ba,#b2,#0f,#3a
	db #02,#bb,#09,#3a,#04,#03,#ba,#b2
	db #02,#ba,#b2,#0f,#3a,#02,#b2,#09
	db #3a,#02,#b1,#02,#3a,#02,#bb,#0a
	db #ba,#b2,#02,#ba,#b2,#0f,#3a,#02
	db #bb,#09,#3a,#04,#03,#ba,#b2,#02
	db #ba,#b2,#0f,#ba,#04,#ba,#b4,#01
	db #3a,#02,#b1,#02,#3a,#02,#bb,#0a
	db #ba,#b2,#02,#ba,#b2,#0f,#3a,#02
	db #bb,#09,#3a,#04,#03,#ba,#b2,#02
	db #ba,#b2,#0f,#3a,#02,#bb,#09,#3a
	db #02,#b1,#02,#3a,#06,#03,#3a,#04
	db #b3,#00,#3a,#02,#bb,#04,#3a,#02
	db #03,#ff,#3a,#02,#b1,#02,#3a,#02
	db #bb,#0a,#ba,#b2,#02,#ba,#b2,#0f
	db #3a,#02,#bb,#09,#3a,#04,#03,#ba
	db #b2,#02,#ba,#b2,#0f,#3a,#02,#b2
	db #09,#3a,#02,#b1,#02,#3a,#02,#bb
	db #0a,#ba,#b2,#02,#ba,#b2,#0f,#3a
	db #02,#bb,#09,#3a,#04,#03,#ba,#b2
	db #02,#ba,#b2,#0f,#ba,#04,#ba,#b4
	db #01,#3a,#02,#b1,#02,#3a,#02,#bb
	db #0a,#ba,#b2,#02,#ba,#b2,#0f,#3a
	db #02,#bb,#09,#3a,#04,#03,#ba,#b2
	db #02,#ba,#b2,#0f,#3a,#02,#bb,#09
	db #3a,#02,#b1,#02,#3a,#02,#bb,#09
	db #ba,#b2,#02,#ba,#b2,#0f,#3a,#02
	db #bb,#09,#3a,#04,#03,#ba,#b3,#02
	db #ba,#b3,#0f,#3a,#02,#b3,#00,#ff
	db #3a,#02,#b1,#02,#3a,#02,#bb,#0a
	db #ba,#b2,#02,#ba,#b2,#0f,#3a,#02
	db #bb,#09,#3a,#04,#03,#ba,#b2,#02
	db #ba,#b2,#0f,#3a,#02,#b2,#09,#3a
	db #02,#b1,#02,#3a,#02,#bb,#0a,#ba
	db #b2,#02,#ba,#b2,#0f,#3a,#02,#bb
	db #09,#3a,#04,#03,#ba,#b2,#02,#ba
	db #b2,#0f,#ba,#04,#ba,#b4,#01,#3a
	db #02,#b1,#02,#3a,#02,#bb,#0a,#ba
	db #b2,#02,#ba,#b2,#0f,#3a,#02,#bb
	db #09,#3a,#04,#03,#ba,#b2,#02,#ba
	db #b2,#0f,#3a,#02,#bb,#09,#3a,#02
	db #b1,#02,#3a,#06,#03,#3a,#04,#b3
	db #00,#3a,#02,#bb,#04,#3a,#02,#03
	db #ff,#3a,#02,#b1,#02,#3a,#02,#bb
	db #0a,#ba,#b2,#02,#ba,#b2,#0f,#3a
	db #02,#bb,#09,#3a,#04,#03,#ba,#b2
	db #02,#ba,#b2,#0f,#3a,#02,#b2,#09
	db #3a,#02,#b1,#02,#3a,#02,#bb,#0a
	db #ba,#b2,#02,#ba,#b2,#0f,#3a,#02
	db #bb,#09,#3a,#04,#03,#ba,#b2,#02
	db #ba,#b2,#0f,#ba,#04,#ba,#b4,#01
	db #3a,#02,#b1,#02,#3a,#02,#bb,#0a
	db #ba,#b2,#02,#ba,#b2,#0f,#3a,#02
	db #bb,#09,#3a,#04,#03,#ba,#b2,#02
	db #ba,#b2,#0f,#3a,#02,#bb,#09,#3a
	db #02,#b1,#02,#3a,#02,#bb,#09,#ba
	db #b2,#02,#ba,#b2,#0f,#3a,#02,#bb
	db #09,#3a,#04,#03,#ba,#b3,#02,#3a
	db #03,#b3,#0f,#ff,#3a,#02,#b1,#02
	db #3a,#02,#bb,#0a,#ba,#b2,#02,#ba
	db #b2,#0f,#3a,#02,#bb,#09,#3a,#04
	db #03,#ba,#b2,#02,#ba,#b2,#0f,#3a
	db #02,#b2,#09,#3a,#02,#b1,#02,#3a
	db #02,#bb,#0a,#ba,#b2,#02,#ba,#b2
	db #0f,#3a,#02,#bb,#09,#3a,#04,#03
	db #ba,#b2,#02,#ba,#b2,#0f,#ba,#04
	db #ba,#b4,#01,#3a,#02,#b1,#02,#3a
	db #02,#bb,#0a,#ba,#b2,#02,#ba,#b2
	db #0f,#3a,#02,#bb,#09,#3a,#04,#03
	db #ba,#b2,#02,#ba,#b2,#0f,#3a,#02
	db #bb,#09,#3a,#02,#b1,#02,#3a,#02
	db #bb,#09,#ba,#b2,#02,#ba,#b2,#0f
	db #3a,#02,#bb,#09,#3a,#08,#03,#ff
	db #00,#1d,#ba,#b2,#0d,#ba,#b2,#08
	db #ba,#b2,#04,#ba,#b2,#01,#ba,#b2
	db #02,#ba,#b2,#0f,#ba,#b2,#02,#3a
	db #02,#b2,#0f,#ba,#b2,#02,#3a,#03
	db #b2,#0f,#ba,#b2,#02,#3a,#04,#b2
	db #0f,#ba,#b2,#02,#3a,#07,#b2,#0f
	db #ba,#b2,#02,#3a,#02,#b2,#0f,#3a
	db #02,#ba,#0f,#ba,#ba,#0d,#ba,#ba
	db #08,#ba,#ba,#06,#ba,#ba,#04,#ff
	db #3a,#08,#ba,#01,#3a,#38,#ba,#0b
	db #ff,#ab,#b8,#05,#ab,#f8,#08,#ab
	db #b8,#04,#ab,#b8,#03,#ab,#b8,#02
	db #ab,#b8,#01,#ab,#b8,#01,#ab,#b8
	db #00,#2b,#90,#ab,#b8,#00,#ab,#b8
	db #01,#ab,#b8,#01,#ab,#b8,#02,#ab
	db #b8,#03,#ab,#b8,#04,#ab,#b8,#04
	db #ab,#b8,#05,#a6,#b9,#05,#a6,#f9
	db #09,#a6,#b9,#04,#a6,#b9,#03,#a6
	db #b9,#02,#a6,#b9,#01,#a6,#b9,#01
	db #a6,#b9,#00,#26,#90,#a6,#b9,#00
	db #a6,#b9,#01,#a6,#b9,#01,#a6,#b9
	db #02,#a6,#b9,#03,#a6,#b9,#04,#a6
	db #b9,#04,#a6,#b9,#05,#ff,#a7,#b7
	db #05,#a7,#f7,#07,#a7,#b7,#04,#a7
	db #b7,#03,#a7,#b7,#02,#a7,#b7,#01
	db #a7,#b7,#01,#a7,#b7,#00,#27,#90
	db #a7,#b7,#00,#a7,#b7,#01,#a7,#b7
	db #01,#a7,#b7,#02,#a7,#b7,#03,#a7
	db #b7,#04,#a7,#b7,#04,#a7,#b7,#05
	db #a6,#b9,#05,#a6,#f9,#09,#a6,#b9
	db #04,#a6,#b9,#03,#a6,#b9,#02,#a6
	db #b9,#01,#a6,#b9,#01,#a6,#b9,#00
	db #26,#90,#a6,#b9,#00,#a6,#b9,#01
	db #a6,#b9,#01,#a6,#b9,#02,#a6,#b9
	db #03,#a6,#b9,#04,#a6,#b9,#04,#a6
	db #b9,#05,#ff,#ab,#b8,#05,#ab,#f8
	db #08,#ab,#b8,#04,#ab,#b8,#03,#ab
	db #b8,#02,#ab,#b8,#01,#ab,#b8,#01
	db #ab,#b8,#00,#2b,#90,#ab,#b8,#00
	db #ab,#b8,#01,#ab,#b8,#01,#ab,#b8
	db #02,#ab,#b8,#03,#ab,#b8,#04,#ab
	db #b8,#04,#ab,#b8,#05,#a6,#b8,#05
	db #a6,#f8,#08,#a6,#b8,#04,#a6,#b8
	db #03,#a6,#b8,#02,#a6,#b8,#01,#a6
	db #b8,#01,#a6,#b8,#00,#26,#90,#a6
	db #b8,#00,#a6,#b8,#01,#a6,#b8,#01
	db #a6,#b8,#02,#a6,#b8,#03,#a6,#b8
	db #04,#a6,#b8,#04,#a6,#b8,#05,#ff
	db #ab,#b8,#05,#ab,#f8,#08,#ab,#b8
	db #04,#ab,#b8,#03,#ab,#b8,#02,#ab
	db #b8,#01,#ab,#b8,#01,#ab,#b8,#00
	db #2b,#90,#ab,#b8,#00,#ab,#b8,#01
	db #ab,#b8,#01,#ab,#b8,#02,#ab,#b8
	db #03,#ab,#b8,#04,#ab,#b8,#04,#ab
	db #b8,#05,#a6,#b9,#05,#a6,#f9,#09
	db #a6,#b9,#04,#a6,#b9,#03,#a6,#b9
	db #02,#a6,#b9,#01,#a6,#b9,#01,#a6
	db #b9,#00,#26,#90,#a6,#b9,#00,#a6
	db #b9,#01,#a6,#b9,#01,#a6,#b9,#02
	db #a6,#b9,#03,#a6,#b9,#04,#a6,#b9
	db #04,#a6,#b9,#05,#ff,#a4,#b9,#05
	db #a4,#f9,#09,#a4,#b9,#04,#a4,#b9
	db #03,#a4,#b9,#02,#a4,#b9,#01,#a4
	db #b9,#01,#a4,#b9,#00,#24,#90,#a4
	db #b9,#00,#a4,#b9,#01,#a4,#b9,#01
	db #a4,#b9,#02,#a4,#b9,#03,#a4,#b9
	db #04,#a4,#b9,#04,#a4,#b9,#05,#a9
	db #b7,#05,#a9,#f7,#07,#a9,#b7,#04
	db #a9,#b7,#03,#a9,#b7,#02,#a9,#b7
	db #01,#a9,#b7,#01,#a9,#b7,#00,#29
	db #90,#a9,#b7,#00,#a9,#b7,#01,#a9
	db #b7,#01,#a9,#b7,#02,#a9,#b7,#03
	db #a9,#b7,#04,#a9,#b7,#04,#a9,#b7
	db #05,#ff,#ab,#b9,#05,#ab,#f9,#09
	db #ab,#b9,#04,#ab,#b9,#03,#ab,#b9
	db #02,#ab,#b9,#01,#ab,#b9,#01,#ab
	db #b9,#00,#2b,#90,#ab,#b9,#00,#ab
	db #b9,#01,#ab,#b9,#01,#ab,#b9,#02
	db #ab,#b9,#03,#ab,#b9,#04,#ab,#b9
	db #04,#ab,#b9,#05,#a4,#b9,#05,#a4
	db #f9,#09,#a4,#b9,#04,#a4,#b9,#03
	db #a4,#b9,#02,#a4,#b9,#01,#a4,#b9
	db #01,#a4,#b9,#00,#24,#90,#a4,#b9
	db #00,#a4,#b9,#01,#a4,#b9,#01,#a4
	db #b9,#02,#a4,#b9,#03,#a4,#b9,#04
	db #a4,#b9,#04,#a4,#b9,#05,#ff,#a6
	db #b9,#05,#a6,#f9,#09,#a6,#b9,#04
	db #a6,#b9,#03,#a6,#b9,#02,#a6,#b9
	db #01,#a6,#b9,#01,#a6,#b9,#00,#26
	db #90,#a6,#b9,#00,#a6,#b9,#01,#a6
	db #b9,#01,#a6,#b9,#02,#a6,#b9,#03
	db #a6,#b9,#04,#a6,#b9,#04,#a6,#b9
	db #05,#a4,#b9,#05,#a4,#f9,#09,#a4
	db #b9,#04,#a4,#b9,#03,#a4,#b9,#02
	db #a4,#b9,#01,#a4,#b9,#01,#a4,#b9
	db #00,#24,#90,#a4,#b9,#00,#a4,#b9
	db #01,#a4,#b9,#01,#a4,#b9,#02,#a4
	db #b9,#04,#a4,#b9,#05,#a4,#b9,#06
	db #a4,#b9,#05,#ff,#ab,#b9,#05,#ab
	db #f9,#09,#ab,#b9,#04,#ab,#b9,#03
	db #ab,#b9,#02,#ab,#b9,#01,#ab,#b9
	db #01,#ab,#b9,#00,#2b,#90,#ab,#b9
	db #00,#ab,#b9,#01,#ab,#b9,#01,#ab
	db #b9,#02,#ab,#b9,#03,#ab,#b9,#04
	db #ab,#b9,#04,#ab,#b9,#05,#a6,#b9
	db #05,#a6,#f9,#09,#a6,#b9,#04,#a6
	db #b9,#03,#a6,#b9,#02,#a6,#b9,#01
	db #a6,#b9,#01,#a6,#b9,#00,#26,#90
	db #a6,#b9,#00,#a6,#b9,#01,#a6,#b9
	db #01,#a6,#b9,#02,#a6,#b9,#04,#a6
	db #b9,#05,#a6,#b9,#06,#a6,#b9,#05
	db #ff,#a4,#b9,#05,#a4,#f9,#09,#a4
	db #b9,#04,#a4,#b9,#03,#a4,#b9,#02
	db #a4,#b9,#01,#a4,#b9,#01,#a4,#b9
	db #00,#24,#90,#a4,#b9,#00,#a4,#b9
	db #01,#a4,#b9,#01,#a4,#b9,#02,#a4
	db #b9,#03,#a4,#b9,#04,#a4,#b9,#04
	db #a4,#b9,#05,#a9,#b9,#05,#a9,#f9
	db #09,#a9,#b9,#04,#a9,#b9,#03,#a9
	db #b9,#02,#a9,#b9,#01,#a9,#b9,#01
	db #a9,#b9,#00,#29,#90,#a9,#b9,#00
	db #a9,#b9,#01,#a9,#b9,#01,#a9,#b9
	db #02,#a9,#b9,#04,#a9,#b9,#05,#a9
	db #b9,#06,#a9,#b9,#05,#ff,#a5,#b9
	db #05,#a5,#f9,#09,#a5,#b9,#04,#a5
	db #b9,#03,#a5,#b9,#02,#a5,#b9,#01
	db #a5,#b9,#01,#a5,#b9,#00,#25,#90
	db #a5,#b9,#00,#a5,#b9,#01,#a5,#b9
	db #01,#a5,#b9,#02,#a5,#b9,#03,#a5
	db #b9,#04,#a5,#b9,#04,#a5,#b9,#05
	db #a7,#b9,#05,#a7,#f9,#09,#a7,#b9
	db #04,#a7,#b9,#03,#a7,#b9,#02,#a7
	db #b9,#01,#a7,#b9,#01,#a7,#b9,#00
	db #27,#90,#a7,#b9,#00,#a7,#b9,#01
	db #a7,#b9,#01,#a7,#b9,#02,#a7,#b9
	db #04,#a7,#b9,#05,#a7,#b9,#06,#a7
	db #b9,#05,#ff,#a9,#b9,#05,#a9,#f9
	db #09,#a9,#b9,#04,#a9,#b9,#03,#a9
	db #b9,#02,#a9,#b9,#01,#a9,#b9,#01
	db #a9,#b9,#00,#29,#90,#a9,#b9,#00
	db #a9,#b9,#01,#a9,#b9,#01,#a9,#b9
	db #02,#a9,#b9,#03,#a9,#b9,#04,#a9
	db #b9,#04,#a9,#b9,#05,#a5,#b9,#05
	db #a5,#f9,#09,#a5,#b9,#04,#a5,#b9
	db #03,#a5,#b9,#02,#a5,#b9,#01,#a5
	db #b9,#01,#a5,#b9,#00,#25,#90,#a5
	db #b9,#00,#a5,#b9,#01,#a5,#b9,#01
	db #a5,#b9,#02,#a5,#b9,#04,#a5,#b9
	db #05,#a5,#b9,#06,#a5,#b9,#05,#ff
	db #a7,#b9,#05,#a7,#f9,#09,#a7,#b9
	db #04,#a7,#b9,#03,#a7,#b9,#02,#a7
	db #b9,#01,#a7,#b9,#01,#a7,#b9,#00
	db #27,#90,#a7,#b9,#00,#a7,#b9,#01
	db #a7,#b9,#01,#a7,#b9,#02,#a7,#b9
	db #03,#a7,#b9,#04,#a7,#b9,#04,#a7
	db #b9,#05,#a7,#b9,#05,#a7,#f9,#09
	db #a7,#b9,#04,#a7,#b9,#03,#a7,#b9
	db #02,#a7,#b9,#01,#a7,#b9,#01,#a7
	db #b9,#00,#27,#90,#a7,#b9,#00,#a7
	db #b9,#01,#a7,#b9,#01,#a7,#b9,#02
	db #a7,#b9,#04,#a7,#b9,#05,#a7,#b9
	db #06,#a7,#b9,#05,#ff,#ac,#b9,#05
	db #ac,#f9,#09,#ac,#b9,#04,#ac,#b9
	db #03,#ac,#b9,#02,#ac,#b9,#01,#ac
	db #b9,#01,#ac,#b9,#00,#2c,#90,#ac
	db #b9,#00,#ac,#b9,#01,#ac,#b9,#01
	db #ac,#b9,#02,#ac,#b9,#03,#ac,#b9
	db #04,#ac,#b9,#04,#ac,#b9,#05,#aa
	db #b9,#05,#aa,#f9,#09,#aa,#b9,#04
	db #aa,#b9,#03,#aa,#b9,#02,#aa,#b9
	db #01,#aa,#b9,#01,#aa,#b9,#00,#2a
	db #90,#aa,#b9,#00,#aa,#b9,#01,#aa
	db #b9,#01,#aa,#b9,#02,#aa,#b9,#04
	db #aa,#b9,#05,#aa,#b9,#06,#aa,#b9
	db #05,#ff,#ac,#b8,#05,#ac,#f8,#08
	db #ac,#b8,#04,#ac,#b8,#03,#ac,#b8
	db #02,#ac,#b8,#01,#ac,#b8,#01,#ac
	db #b8,#00,#2c,#90,#ac,#b8,#00,#ac
	db #b8,#01,#ac,#b8,#01,#ac,#b8,#02
	db #ac,#b8,#03,#ac,#b8,#04,#ac,#b8
	db #04,#ac,#b8,#05,#aa,#b9,#05,#aa
	db #f9,#09,#aa,#b9,#04,#aa,#b9,#03
	db #aa,#b9,#02,#aa,#b9,#01,#aa,#b9
	db #01,#aa,#b9,#00,#2a,#90,#aa,#b9
	db #00,#aa,#b9,#01,#aa,#b9,#01,#aa
	db #b9,#02,#aa,#b9,#04,#aa,#b9,#05
	db #aa,#b9,#06,#aa,#b9,#05,#ff,#a5
	db #b9,#05,#a5,#f9,#09,#a5,#b9,#04
	db #a5,#b9,#03,#a5,#b9,#02,#a5,#b9
	db #01,#a5,#b9,#01,#a5,#b9,#00,#25
	db #90,#a5,#b9,#00,#a5,#b9,#01,#a5
	db #b9,#01,#a5,#b9,#02,#a5,#b9,#03
	db #a5,#b9,#04,#a5,#b9,#04,#a5,#b9
	db #05,#a8,#b9,#05,#a8,#f9,#09,#a8
	db #b9,#04,#a8,#b9,#03,#a8,#b9,#02
	db #a8,#b9,#01,#a8,#b9,#01,#a8,#b9
	db #00,#28,#90,#a8,#b9,#00,#a8,#b9
	db #01,#a8,#b9,#01,#a8,#b9,#02,#a8
	db #b9,#04,#28,#03,#b9,#05,#ff,#aa
	db #b9,#05,#aa,#f9,#09,#aa,#b9,#04
	db #aa,#b9,#03,#aa,#b9,#02,#aa,#b9
	db #01,#aa,#b9,#01,#aa,#b9,#00,#2a
	db #90,#aa,#b9,#00,#aa,#b9,#01,#aa
	db #b9,#01,#aa,#b9,#02,#aa,#b9,#03
	db #aa,#b9,#04,#aa,#b9,#04,#aa,#b9
	db #05,#a8,#b9,#05,#a8,#f9,#09,#a8
	db #b9,#04,#a8,#b9,#03,#a8,#b9,#02
	db #a8,#b9,#01,#a8,#b9,#01,#a8,#b9
	db #00,#28,#90,#a8,#b9,#00,#a8,#b9
	db #01,#a8,#b9,#01,#a8,#b9,#02,#a8
	db #b9,#04,#a8,#b9,#05,#a8,#b9,#06
	db #a8,#b9,#05,#ff,#b2,#b7,#05,#b2
	db #f7,#07,#b2,#b7,#04,#b2,#b7,#03
	db #b2,#b7,#02,#b2,#b7,#01,#b2,#b7
	db #01,#b2,#b7,#00,#32,#90,#b2,#b7
	db #00,#b2,#b7,#01,#b2,#b7,#01,#b2
	db #b7,#02,#b2,#b7,#03,#b2,#b7,#04
	db #b2,#b7,#04,#b2,#b7,#05,#af,#b8
	db #05,#af,#f8,#08,#af,#b8,#04,#af
	db #b8,#03,#af,#b8,#02,#af,#b8,#01
	db #af,#b8,#01,#af,#b8,#00,#2f,#90
	db #af,#b8,#00,#af,#b8,#01,#af,#b8
	db #01,#af,#b8,#02,#af,#b8,#04,#af
	db #b8,#05,#af,#b8,#06,#af,#b8,#05
	db #ff,#ab,#b8,#05,#ab,#f8,#08,#ab
	db #b8,#04,#ab,#b8,#03,#ab,#b8,#02
	db #ab,#b8,#01,#ab,#b8,#01,#ab,#b8
	db #00,#2b,#90,#ab,#b8,#00,#ab,#b8
	db #01,#ab,#b8,#01,#ab,#b8,#02,#ab
	db #b8,#03,#ab,#b8,#04,#ab,#b8,#04
	db #ab,#b8,#05,#a6,#b7,#05,#a6,#f7
	db #07,#a6,#b7,#04,#a6,#b7,#03,#a6
	db #b7,#02,#a6,#b7,#01,#a6,#b7,#01
	db #a6,#b7,#00,#26,#90,#a6,#b7,#00
	db #a6,#b7,#01,#a6,#b7,#01,#a6,#b7
	db #02,#a6,#b7,#04,#a6,#b7,#05,#a6
	db #b7,#06,#a6,#b7,#05,#ff,#26,#2e
	db #b7,#05,#a6,#b7,#05,#a6,#b7,#05
	db #a6,#b7,#04,#a6,#b7,#04,#a6,#b7
	db #03,#a6,#b7,#03,#a6,#b7,#02,#a6
	db #b7,#02,#a6,#b7,#01,#26,#07,#b7
	db #00,#a6,#b7,#00,#a6,#b7,#00,#ff
	db #a6,#b7,#00,#a6,#b7,#00,#a6,#b7
	db #00,#a6,#b7,#01,#a6,#b7,#01,#a6
	db #b7,#01,#a6,#b7,#02,#a6,#b7,#02
	db #a6,#b7,#03,#a6,#b7,#03,#a6,#b7
	db #03,#a6,#b7,#04,#a6,#b7,#04,#a6
	db #b7,#04,#a6,#b7,#05,#a6,#b7,#05
	db #a6,#b7,#06,#a6,#b7,#06,#a6,#b7
	db #07,#a6,#b7,#08,#a6,#b7,#0a,#a6
	db #b7,#0d,#26,#2a,#b7,#0f,#ff
;
.music_info
	db "Scoop-X-Treme 5-4 (1994)(Hypnomega)()",0
	db "ST-Module",0

	read "music_end.asm"
