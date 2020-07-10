; Music of Jukebox 2 - Inspecteur Gadget (2003)(RoundSoft)(Napo)(ST-128 Module)
; Ripped by Megachur the 21/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JUKEB2IG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #5170

	read "music_header.asm"

	jr l5174
	jr l5183
.l5174
	call l51a7
	ld hl,l5194
	ld de,l518c
	ld bc,#81ff
	jp #bcd7
.l5183
	ld hl,l5194
	call #bcdd
	jp l521f
.l518c
	push ix
	call l523b
	pop ix
	ret
.l5194
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l51a7
	jp l523b
	jp l521f
;
.init_music
.l51a7
;
	xor a
	ld hl,l5752
	call l5218
	ld hl,l5780
	call l5218
	ld hl,l57ae
	call l5218
	ld ix,l574e
	ld iy,l57d8
	ld de,#002e
	ld b,#03
.l51c7
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
	djnz l51c7
	ld hl,l5667
	ld (hl),#05
	inc hl
	ld (hl),#30
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l5663),hl
	ld (l5665),hl
	ld a,#0c
	ld c,d
	call l5643
	ld a,#0d
	ld c,d
	jp l5643
.l5218
	ld b,#2a
.l521a
	ld (hl),a
	inc hl
	djnz l521a
	ret
;
.stop_music
.l521f
;
	ld a,#07
	ld c,#3f
	call l5643
	ld a,#08
	ld c,#00
	call l5643
	ld a,#09
	ld c,#00
	call l5643
	ld a,#0a
	ld c,#00
	jp l5643
;
.play_music
.l523b
;
	ld hl,l5669
	dec (hl)
	ld ix,l574e
	ld bc,l575c
	call l52dd
	ld ix,l577c
	ld bc,l578a
	call l52dd
	ld ix,l57aa
	ld bc,l57b8
	call l52dd
	ld hl,l5662
	ld de,l5669
	ld b,#06
	call l52ba
	ld b,#07
	call l52ba
	ld b,#0b
	call l52ba
	ld b,#0d
	call l52ba
	ld de,l5669
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#30
	ld hl,l576d
	call l5293
	ld hl,l579b
	call l5293
	ld hl,l57c9
.l5293
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
	jr nz,l52a8
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l52a8
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
.l52ba
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5643
.l52c5
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5643
.l52dd
	ld a,(l5669)
	or a
	jp nz,l5395
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l5395
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l52c5
	or a
	jp z,l538a
	ld r,a
	and #7f
	cp #10
	jr c,l5365
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l54dd
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
	jr z,l533e
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l533e
	rrca
	ld c,a
	ld hl,l57de
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
	jr z,l535d
	ld (ix+#1e),b
.l535d
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l537e
.l5365
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l566e
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	ld sp,#3332
	inc (hl)
	dec (hl)
.l537e equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l538c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l538c
.l538a
	ld a,(hl)
	inc hl
.l538c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l5395
	ld a,(ix+#17)
	or a
	jr nz,l53ab
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l53ab
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l53c1
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l53c1
	ld a,(ix+#0d)
	or a
	jr z,l53cf
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l53ed
.l53cf
	ld a,(ix+#1a)
	or a
	jp z,l53f4
	ld c,a
	cp #03
	jr nz,l53dc
	xor a
.l53dc
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l53ed
	ld a,(ix+#18)
	dec c
	jr z,l53ed
	ld a,(ix+#19)
.l53ed
	add (ix+#07)
	ld b,d
	call l54dd
.l53f4
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l541c
	dec (ix+#1b)
	jr nz,l541c
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l5454
.l541c
	ld a,(ix+#29)
	or a
	jr z,l5454
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l544b
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5442
	ld (ix+#29),#ff
	jr l544b
.l5442
	cp (ix+#2b)
	jr nz,l544b
	ld (ix+#29),#01
.l544b
	ld b,d
	or a
	jp p,l5451
	dec b
.l5451
	ld c,a
	jr l545f
.l5454
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l545f
	pop hl
	bit 7,(ix+#14)
	jr z,l5468
	ld h,d
	ld l,d
.l5468
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5643
	ld c,h
	ld a,(ix+#02)
	call l5643
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l54bb
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l54aa
	dec (ix+#09)
	jr nz,l54aa
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l54a2
	xor a
	jr l54a7
.l54a2
	cp #10
	jr nz,l54a7
	dec a
.l54a7
	ld (ix+#1e),a
.l54aa
	ld a,b
	sub (ix+#1e)
	jr nc,l54b1
	xor a
.l54b1
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5643
.l54bb
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l566a)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l54d9
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l54d9
	ld (l566a),hl
	ret
.l54dd
	ld hl,l568c
	cp #61
	jr nc,l54e7
	add a
	ld c,a
	add hl,bc
.l54e7
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l54f1
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5616
	ld (ix+#1e),a
	jp l537e
.l5503
	dec b
.l5504
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l550f
	neg
.l550f
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
	jp l537e
.l5525
	dec b
	jr l5529
.l5528
	inc b
.l5529
	call l5616
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l537e
.l5538
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
	jp l55fb
.l5549
	ld a,(hl)
	inc hl
	or a
	jr z,l556b
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
.l556b
	ld (ix+#29),a
	jp l537e
.l5571
	dec hl
	ld a,(hl)
	and #0f
	ld (l566d),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l566c),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l537e
.l558b
	ld a,(hl)
	or a
	jr z,l559c
	call l5618
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l537e
.l559c
	ld hl,#0101
	ld (l5668),hl
	jp l537e
.l55a5
	call l5616
	ld (ix+#1e),a
	jp l537e
.l55ae
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5627
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5627
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l537e
.l55d0
	ld a,(hl)
	inc hl
	ld (l5667),a
	jp l537e
.l55d8
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
	jp l537e
.l55f7
	call l5616
	add a
.l55fb
	ld b,#00
	ld c,a
	push hl
	ld hl,l585e
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l537e
.l5616
	ld a,(hl)
	inc hl
.l5618
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
.l5627
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l57de
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l5643
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
.l5662
	ret
.l566a equ $ + 7
.l5669 equ $ + 6
.l5668 equ $ + 5
.l5667 equ $ + 4
.l5665 equ $ + 2
.l5663
	db #00,#00,#00,#00,#00,#00,#00,#00
.l566d equ $ + 2
.l566c equ $ + 1
	db #38,#00,#00
.l566e
	dw l54f1,l5504,l5503,l5528
	dw l5525,l5538,l5549,l5571
	dw l558b,l5571,l55a5,l55ae
	dw l55d0,l55d8,l55f7
.l568c
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
.l574e equ $ + 2
	dw #000f,#0008
.l5752 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l575c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l576d equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l577c equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l5780
	db #00,#00,#00,#00,#00,#00,#00,#00
.l578a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l579b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57ae equ $ + 6
.l57aa equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57b8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57c9 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l57de equ $ + 6
.l57d8
	db #9e,#59,#c8,#59,#f2,#59,#7e,#58
	db #be,#58,#de,#58,#00,#00,#7e,#58
	db #fe,#58,#de,#58,#00,#00,#7e,#58
	db #1e,#59,#3e,#59,#00,#00,#7e,#58
	db #5e,#59,#7e,#59,#00,#00,#e3,#86
	db #03,#88,#43,#87,#00,#00,#09,#76
	db #09,#76,#09,#76,#00,#00,#09,#76
	db #09,#76,#09,#76,#00,#00,#09,#76
	db #09,#76,#09,#76,#00,#00,#09,#76
	db #09,#76,#09,#76,#00,#00,#09,#76
	db #09,#76,#09,#76,#00,#00,#09,#76
	db #09,#76,#09,#76,#00,#00,#09,#76
	db #09,#76,#09,#76,#00,#00,#09,#76
	db #09,#76,#09,#76,#00,#00,#09,#76
	db #09,#76,#09,#76,#00,#00,#09,#76
	db #09,#76,#09,#76,#00,#00,#09,#76
.l585e equ $ + 6
	db #09,#76,#09,#76,#00,#00,#09,#76
	db #09,#76,#09,#76,#09,#76,#09,#76
	db #09,#76,#09,#76,#09,#76,#09,#76
	db #09,#76,#09,#76,#09,#76,#09,#76
	db #09,#76,#09,#76,#09,#76,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0c,#0e,#0d,#0c,#0d,#0a,#0d,#0f
	db #0e,#0d,#0c,#0b,#08,#05,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#0c
	db #0a,#0a,#09,#0a,#0a,#0a,#0a,#0b
	db #0c,#0c,#0a,#0a,#0c,#0a,#0a,#0b
	db #0c,#0a,#0a,#08,#0b,#0c,#0a,#0a
	db #0a,#0a,#0c,#0c,#0c,#09,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0c
	db #0e,#0c,#0d,#0c,#0a,#08,#05,#04
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12,#19
	db #1f,#1b,#1f,#1b,#19,#1a,#14,#1b
	db #19,#15,#1b,#1b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#1c
	db #5a,#00,#6d,#5a,#00,#b3,#5a,#00
	db #6d,#5a,#00,#b3,#5a,#00,#e5,#5a
	db #00,#21,#5b,#00,#6d,#5a,#00,#b3
	db #5a,#00,#e5,#5a,#00,#21,#5b,#00
	db #1c,#5a,#00,#59,#5b,#80,#9e,#59
	db #00,#6c,#5b,#00,#9a,#5b,#00,#d6
	db #5b,#00,#9a,#5b,#00,#d6,#5b,#00
	db #14,#5c,#00,#4a,#5c,#00,#9a,#5b
	db #00,#d6,#5b,#00,#14,#5c,#00,#4a
	db #5c,#00,#6c,#5b,#00,#7b,#5c,#80
	db #c8,#59,#00,#8c,#5c,#00,#ed,#5c
	db #00,#52,#5d,#00,#ed,#5c,#00,#52
	db #5d,#00,#9a,#5d,#00,#ff,#5d,#00
	db #ed,#5c,#00,#52,#5d,#00,#9a,#5d
	db #00,#ff,#5d,#00,#8c,#5c,#00,#64
	db #5e,#80,#f2,#59,#3d,#0e,#cc,#02
	db #bc,#0e,#cc,#38,#0e,#cc,#03,#31
	db #0e,#cc,#06,#3b,#0e,#00,#02,#ba
	db #0e,#00,#36,#0e,#00,#03,#31,#0e
	db #00,#06,#3d,#0e,#00,#02,#bc,#0e
	db #00,#38,#0e,#00,#03,#3b,#0e,#00
	db #02,#ba,#0e,#00,#36,#0e,#00,#03
	db #39,#0e,#00,#02,#b8,#0e,#00,#33
	db #0e,#00,#02,#b4,#0e,#00,#38,#0e
	db #00,#02,#b6,#0e,#00,#34,#0e,#00
	db #02,#b3,#0e,#00,#ff,#49,#01,#20
	db #cb,#00,#4c,#00,#02,#ce,#00,#50
	db #00,#03,#4c,#00,#03,#4f,#00,#03
	db #4b,#00,#03,#4e,#00,#03,#4c,#00
	db #03,#49,#00,#02,#cb,#00,#4c,#00
	db #02,#ce,#00,#50,#00,#03,#55,#00
	db #03,#d4,#02,#11,#03,#11,#01,#02
	db #11,#01,#ce,#1e,#30,#0e,#30,#01
	db #0e,#30,#01,#cc,#1e,#40,#4c,#1e
	db #40,#05,#ff,#49,#01,#20,#cb,#00
	db #4c,#00,#02,#ce,#00,#50,#00,#03
	db #4c,#00,#03,#4f,#00,#03,#4b,#00
	db #03,#4e,#00,#03,#4c,#00,#03,#55
	db #10,#02,#d4,#10,#53,#10,#02,#d2
	db #10,#51,#10,#09,#50,#10,#03,#55
	db #10,#04,#fe,#02,#ff,#42,#01,#30
	db #4e,#0e,#37,#03,#4e,#0e,#37,#05
	db #45,#01,#10,#49,#00,#03,#45,#00
	db #03,#49,#01,#10,#01,#10,#02,#11
	db #01,#01,#10,#02,#11,#02,#47,#01
	db #30,#4e,#0e,#59,#03,#4e,#0e,#59
	db #05,#47,#01,#10,#49,#00,#03,#47
	db #00,#03,#45,#00,#03,#44,#00,#03
	db #ff,#42,#01,#30,#4e,#0e,#37,#03
	db #4e,#0e,#37,#05,#45,#01,#10,#49
	db #00,#03,#45,#00,#03,#49,#01,#10
	db #01,#10,#02,#11,#01,#01,#10,#02
	db #11,#05,#3f,#11,#30,#3f,#11,#30
	db #fe,#02,#c4,#10,#44,#10,#03,#42
	db #10,#03,#40,#10,#03,#3f,#10,#03
	db #ff,#3d,#10,#02,#3d,#11,#21,#3d
	db #11,#26,#3d,#11,#28,#3d,#11,#4a
	db #0d,#02,#24,#ff,#0d,#05,#06,#31
	db #00,#0c,#31,#00,#06,#31,#00,#02
	db #b0,#00,#2c,#00,#03,#2f,#00,#02
	db #ae,#00,#2a,#00,#03,#2d,#00,#02
	db #ac,#00,#27,#00,#02,#a8,#00,#2c
	db #00,#02,#aa,#00,#28,#00,#02,#a7
	db #00,#ff,#25,#10,#02,#a5,#10,#25
	db #10,#02,#a5,#10,#25,#10,#02,#a5
	db #10,#25,#10,#02,#a5,#10,#27,#10
	db #02,#a7,#10,#27,#10,#02,#a7,#10
	db #2c,#10,#02,#a7,#10,#2c,#10,#02
	db #a7,#10,#25,#10,#02,#a0,#10,#25
	db #10,#02,#a0,#10,#25,#10,#03,#25
	db #10,#03,#26,#10,#0c,#ff,#25,#10
	db #02,#a5,#10,#25,#10,#02,#a5,#10
	db #25,#10,#02,#a5,#10,#25,#10,#02
	db #a5,#10,#27,#10,#02,#a7,#10,#27
	db #10,#02,#a7,#10,#2c,#10,#02,#a7
	db #10,#2c,#10,#02,#a7,#10,#3d,#10
	db #02,#bc,#10,#3b,#10,#02,#ba,#10
	db #39,#10,#09,#38,#10,#03,#3d,#10
	db #04,#fe,#02,#ff,#2a,#10,#02,#aa
	db #10,#25,#10,#03,#2a,#10,#03,#fe
	db #03,#2a,#00,#02,#aa,#00,#25,#00
	db #03,#2a,#00,#03,#fe,#03,#2f,#10
	db #02,#af,#10,#2a,#10,#03,#2f,#10
	db #03,#fe,#02,#af,#10,#2a,#10,#03
	db #2f,#10,#03,#2a,#10,#03,#2f,#10
	db #03,#ff,#2a,#10,#02,#aa,#10,#25
	db #10,#03,#2a,#10,#03,#fe,#03,#2a
	db #00,#02,#aa,#00,#25,#00,#03,#2a
	db #00,#03,#fe,#06,#27,#10,#03,#27
	db #10,#03,#fe,#02,#ac,#10,#2c,#10
	db #03,#2a,#10,#03,#28,#10,#03,#27
	db #10,#03,#ff,#25,#10,#02,#25,#11
	db #21,#25,#11,#26,#25,#11,#28,#25
	db #11,#0a,#28,#ff,#74,#21,#20,#74
	db #21,#12,#74,#21,#20,#74,#21,#12
	db #74,#31,#20,#74,#21,#12,#74,#21
	db #20,#74,#21,#12,#74,#21,#20,#74
	db #21,#12,#74,#21,#20,#74,#21,#12
	db #74,#31,#20,#74,#21,#12,#74,#21
	db #20,#74,#21,#12,#74,#21,#20,#74
	db #21,#12,#74,#21,#20,#74,#21,#12
	db #74,#21,#20,#74,#21,#12,#74,#21
	db #20,#74,#21,#12,#74,#21,#20,#74
	db #21,#12,#74,#31,#20,#74,#31,#12
	db #74,#31,#20,#74,#31,#12,#74,#31
	db #20,#74,#31,#12,#ff,#74,#21,#20
	db #74,#21,#12,#74,#21,#20,#74,#21
	db #12,#49,#3e,#37,#02,#74,#21,#12
	db #74,#21,#20,#74,#21,#12,#74,#21
	db #20,#74,#21,#12,#74,#21,#20,#74
	db #21,#12,#44,#3e,#47,#02,#74,#21
	db #12,#74,#21,#20,#74,#21,#12,#74
	db #21,#20,#74,#21,#12,#74,#21,#20
	db #74,#21,#12,#49,#3e,#37,#02,#74
	db #21,#12,#74,#21,#20,#74,#21,#12
	db #74,#21,#20,#74,#21,#12,#74,#21
	db #20,#74,#21,#12,#4a,#3e,#47,#02
	db #74,#21,#12,#74,#21,#20,#74,#21
	db #12,#ff,#74,#21,#20,#74,#21,#12
	db #74,#21,#20,#74,#21,#12,#49,#3e
	db #37,#02,#74,#21,#12,#74,#21,#20
	db #74,#21,#12,#74,#21,#20,#74,#21
	db #12,#74,#21,#20,#74,#21,#12,#44
	db #3e,#47,#02,#74,#21,#12,#74,#21
	db #20,#74,#21,#12,#31,#10,#02,#b0
	db #10,#2f,#10,#02,#ae,#10,#2d,#10
	db #09,#2c,#3e,#47,#03,#31,#3e,#37
	db #06,#ff,#74,#21,#20,#74,#21,#12
	db #74,#21,#20,#74,#21,#12,#42,#3e
	db #37,#02,#74,#21,#12,#74,#21,#20
	db #74,#21,#12,#74,#21,#20,#74,#21
	db #12,#74,#21,#20,#74,#21,#12,#42
	db #3e,#47,#02,#74,#21,#12,#74,#21
	db #20,#74,#21,#12,#74,#21,#20,#74
	db #21,#12,#74,#21,#20,#74,#21,#12
	db #47,#3e,#47,#02,#74,#21,#12,#74
	db #21,#20,#74,#21,#12,#74,#21,#20
	db #74,#21,#12,#74,#21,#20,#74,#21
	db #12,#47,#3e,#47,#02,#74,#21,#12
	db #74,#21,#20,#74,#21,#12,#ff,#74
	db #21,#20,#74,#21,#12,#74,#21,#20
	db #74,#21,#12,#42,#3e,#37,#02,#74
	db #21,#12,#74,#21,#20,#74,#21,#12
	db #74,#21,#20,#74,#21,#12,#74,#21
	db #20,#74,#21,#12,#42,#3e,#47,#02
	db #74,#21,#12,#74,#21,#20,#74,#21
	db #12,#74,#21,#20,#74,#21,#12,#74
	db #21,#20,#74,#21,#12,#4b,#3e,#47
	db #02,#74,#21,#12,#74,#21,#20,#74
	db #21,#12,#74,#21,#20,#74,#21,#12
	db #74,#21,#20,#74,#21,#12,#50,#3e
	db #47,#02,#74,#21,#12,#74,#21,#20
	db #74,#21,#12,#ff,#d5,#3e,#37,#0e
	db #37,#01,#0e,#37,#01,#0e,#37,#2d
	db #ff
;
.music_info
	db "Jukebox 2 - Inspecteur Gadget (2003)(RoundSoft)(Napo)",0
	db "ST-128 Module",0

	read "music_end.asm"
