; Music of Jukebox 1 - L'Aventurier (2003)(RoundSoft)(Napo)(ST-128 Module)
; Ripped by Megachur the 21/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JUKEBO12.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #5127

	read "music_header.asm"

	jr l512b
	jr l513a
.l512b
	call l515e
	ld hl,l514b
	ld de,l5143
	ld bc,#81ff
	jp #bcd7
.l513a
	ld hl,l514b
	call #bcdd
	jp l51d6
.l5143
	push ix
	call l51f2
	pop ix
	ret
	jp l515e
	jp l51f2
	jp l51d6
.l514b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
;
.init_music
.l515e
;
	xor a
	ld hl,l5709
	call l51cf
	ld hl,l5737
	call l51cf
	ld hl,l5765
	call l51cf
	ld ix,l5705
	ld iy,l578f
	ld de,#002e
	ld b,#03
.l517e
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
	djnz l517e
	ld hl,l561e
	ld (hl),#04
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l561a),hl
	ld (l561c),hl
	ld a,#0c
	ld c,d
	call l55fa
	ld a,#0d
	ld c,d
	jp l55fa
.l51cf
	ld b,#2a
.l51d1
	ld (hl),a
	inc hl
	djnz l51d1
	ret
;
.stop_music
.l51d6
;
	ld a,#07
	ld c,#3f
	call l55fa
	ld a,#08
	ld c,#00
	call l55fa
	ld a,#09
	ld c,#00
	call l55fa
	ld a,#0a
	ld c,#00
	jp l55fa
;
.play_music
.l51f2
;
	ld hl,l5620
	dec (hl)
	ld ix,l5705
	ld bc,l5713
	call l5294
	ld ix,l5733
	ld bc,l5741
	call l5294
	ld ix,l5761
	ld bc,l576f
	call l5294
	ld hl,l5619
	ld de,l5620
	ld b,#06
	call l5271
	ld b,#07
	call l5271
	ld b,#0b
	call l5271
	ld b,#0d
	call l5271
	ld de,l5620
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l5724
	call l524a
	ld hl,l5752
	call l524a
	ld hl,l5780
.l524a
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
	jr nz,l525f
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l525f
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
.l5271
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l55fa
.l527c
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l55fa
.l5294
	ld a,(l5620)
	or a
	jp nz,l534c
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l534c
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l527c
	or a
	jp z,l5341
	ld r,a
	and #7f
	cp #10
	jr c,l531c
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l5494
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
	jr z,l52f5
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l52f5
	rrca
	ld c,a
	ld hl,l5795
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
	jr z,l5314
	ld (ix+#1e),b
.l5314
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l5335
.l531c
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l5625
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
.l5335 equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l5343
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l5343
.l5341
	ld a,(hl)
	inc hl
.l5343
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l534c
	ld a,(ix+#17)
	or a
	jr nz,l5362
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l5362
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5378
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5378
	ld a,(ix+#0d)
	or a
	jr z,l5386
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l53a4
.l5386
	ld a,(ix+#1a)
	or a
	jp z,l53ab
	ld c,a
	cp #03
	jr nz,l5393
	xor a
.l5393
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l53a4
	ld a,(ix+#18)
	dec c
	jr z,l53a4
	ld a,(ix+#19)
.l53a4
	add (ix+#07)
	ld b,d
	call l5494
.l53ab
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l53d3
	dec (ix+#1b)
	jr nz,l53d3
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l540b
.l53d3
	ld a,(ix+#29)
	or a
	jr z,l540b
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l5402
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l53f9
	ld (ix+#29),#ff
	jr l5402
.l53f9
	cp (ix+#2b)
	jr nz,l5402
	ld (ix+#29),#01
.l5402
	ld b,d
	or a
	jp p,l5408
	dec b
.l5408
	ld c,a
	jr l5416
.l540b
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l5416
	pop hl
	bit 7,(ix+#14)
	jr z,l541f
	ld h,d
	ld l,d
.l541f
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l55fa
	ld c,h
	ld a,(ix+#02)
	call l55fa
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5472
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l5461
	dec (ix+#09)
	jr nz,l5461
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5459
	xor a
	jr l545e
.l5459
	cp #10
	jr nz,l545e
	dec a
.l545e
	ld (ix+#1e),a
.l5461
	ld a,b
	sub (ix+#1e)
	jr nc,l5468
	xor a
.l5468
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l55fa
.l5472
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l5621)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l5490
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l5490
	ld (l5621),hl
	ret
.l5494
	ld hl,l5643
	cp #61
	jr nc,l549e
	add a
	ld c,a
	add hl,bc
.l549e
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l54a8
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l55cd
	ld (ix+#1e),a
	jp l5335
.l54ba
	dec b
.l54bb
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l54c6
	neg
.l54c6
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
	jp l5335
.l54dc
	dec b
	jr l54e0
.l54df
	inc b
.l54e0
	call l55cd
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l5335
.l54ef
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
	jp l55b2
.l5500
	ld a,(hl)
	inc hl
	or a
	jr z,l5522
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
.l5522
	ld (ix+#29),a
	jp l5335
.l5528
	dec hl
	ld a,(hl)
	and #0f
	ld (l5624),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l5623),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l5335
.l5542
	ld a,(hl)
	or a
	jr z,l5553
	call l55cf
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l5335
.l5553
	ld hl,#0101
	ld (l561f),hl
	jp l5335
.l555c
	call l55cd
	ld (ix+#1e),a
	jp l5335
.l5565
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l55de
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l55de
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l5335
.l5587
	ld a,(hl)
	inc hl
	ld (l561e),a
	jp l5335
.l558f
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
	jp l5335
.l55ae
	call l55cd
	add a
.l55b2
	ld b,#00
	ld c,a
	push hl
	ld hl,l5815
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l5335
.l55cd
	ld a,(hl)
	inc hl
.l55cf
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
.l55de
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5795
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l55fa
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
.l5619
	ret
.l5621 equ $ + 7
.l5620 equ $ + 6
.l561f equ $ + 5
.l561e equ $ + 4
.l561c equ $ + 2
.l561a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5624 equ $ + 2
.l5623 equ $ + 1
	db #38,#00,#00
.l5625
	dw l54a8,l54bb,l54ba,l54df
	dw l54dc,l54ef,l5500,l5528
	dw l5542,l5528,l555c,l5565
	dw l5587,l558f,l55ae
.l5643
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
.l5705 equ $ + 2
	dw #000f,#0008
.l5709 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l5713 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5724 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5733 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l5737
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5741 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5752 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5765 equ $ + 6
.l5761 equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l576f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5780 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5795 equ $ + 6
.l578f
	db #75,#59,#90,#59,#ab,#59,#35,#58
	db #75,#58,#95,#58,#00,#00,#35,#58
	db #b5,#58,#d5,#58,#00,#00,#5d,#78
	db #1d,#79,#3d,#79,#00,#00,#35,#58
	db #f5,#58,#15,#59,#00,#00,#35,#58
	db #35,#59,#95,#58,#00,#00,#35,#58
	db #55,#59,#95,#58,#00,#00,#65,#8a
	db #a5,#8b,#c5,#8a,#01,#08,#9b,#4b
	db #9b,#4b,#9b,#4b,#00,#00,#9b,#4b
	db #9b,#4b,#9b,#4b,#00,#00,#9b,#4b
	db #9b,#4b,#9b,#4b,#00,#00,#9b,#4b
	db #9b,#4b,#9b,#4b,#00,#00,#9b,#4b
	db #9b,#4b,#9b,#4b,#00,#00,#9b,#4b
	db #9b,#4b,#9b,#4b,#00,#00,#9b,#4b
	db #9b,#4b,#9b,#4b,#00,#00,#9b,#4b
	db #9b,#4b,#9b,#4b,#00,#00,#9b,#4b
.l5815 equ $ + 6
	db #9b,#4b,#9b,#4b,#00,#00,#9b,#4b
	db #9b,#4b,#9b,#4b,#9b,#4b,#9b,#4b
	db #9b,#4b,#9b,#4b,#9b,#4b,#9b,#4b
	db #9b,#4b,#9b,#4b,#9b,#4b,#9b,#4b
	db #9b,#4b,#9b,#4b,#9b,#4b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0f
	db #0e,#0c,#0e,#0d,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0d
	db #0f,#0c,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#1f,#00
	db #1f,#00,#1f,#00,#1f,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0f,#0f,#0e,#0f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0b,#0d
	db #0a,#0b,#09,#0c,#08,#0a,#0b,#0a
	db #0a,#08,#07,#09,#0a,#0b,#0a,#0c
	db #0a,#0c,#0a,#09,#0c,#0c,#0a,#0b
	db #0c,#0a,#0b,#0c,#0c,#0a,#00,#c6
	db #59,#00,#c6,#59,#00,#04,#5a,#00
	db #04,#5a,#00,#04,#5a,#00,#04,#5a
	db #01,#66,#5a,#01,#66,#5a,#80,#8a
	db #59,#00,#73,#5a,#00,#73,#5a,#00
	db #a4,#5a,#00,#a4,#5a,#00,#a4,#5a
	db #00,#a4,#5a,#01,#c5,#5a,#01,#c5
	db #5a,#80,#a5,#59,#00,#86,#5b,#00
	db #86,#5b,#00,#d7,#5b,#00,#d7,#5b
	db #00,#0e,#5c,#00,#0e,#5c,#01,#3f
	db #5c,#01,#3f,#5c,#80,#c0,#59,#74
	db #1d,#04,#04,#72,#30,#04,#74,#10
	db #04,#72,#30,#02,#72,#30,#02,#74
	db #10,#04,#72,#30,#04,#74,#10,#04
	db #72,#30,#02,#72,#30,#02,#74,#10
	db #04,#72,#30,#04,#74,#10,#04,#72
	db #30,#02,#72,#30,#02,#74,#10,#04
	db #72,#30,#04,#74,#10,#04,#72,#30
	db #02,#72,#30,#02,#ff,#74,#1d,#04
	db #02,#30,#40,#02,#72,#30,#02,#30
	db #40,#02,#74,#10,#02,#30,#40,#02
	db #72,#30,#02,#72,#30,#02,#74,#10
	db #02,#2c,#40,#02,#72,#30,#02,#2c
	db #40,#02,#74,#10,#02,#2c,#40,#02
	db #72,#30,#02,#72,#30,#02,#74,#10
	db #02,#33,#40,#02,#72,#30,#02,#33
	db #40,#02,#74,#10,#02,#33,#40,#02
	db #72,#30,#02,#72,#30,#02,#74,#10
	db #02,#35,#40,#02,#72,#30,#02,#35
	db #40,#02,#74,#10,#02,#35,#40,#02
	db #72,#30,#02,#72,#30,#02,#ff,#29
	db #50,#10,#24,#50,#10,#27,#50,#10
	db #29,#50,#10,#ff,#30,#51,#41,#30
	db #51,#41,#30,#51,#41,#30,#51,#41
	db #2c,#51,#41,#2c,#51,#41,#2c,#51
	db #41,#2c,#51,#41,#33,#51,#41,#33
	db #51,#41,#33,#51,#41,#33,#51,#41
	db #35,#51,#41,#35,#51,#41,#35,#51
	db #41,#35,#51,#41,#ff,#54,#5e,#37
	db #08,#54,#5e,#37,#08,#54,#5e,#38
	db #08,#54,#5e,#38,#08,#52,#5e,#59
	db #08,#52,#5e,#59,#08,#51,#5e,#38
	db #08,#51,#5e,#38,#08,#ff,#c4,#5e
	db #49,#0e,#49,#01,#0e,#49,#01,#0e
	db #49,#01,#0e,#49,#01,#0e,#49,#01
	db #0e,#49,#01,#0e,#49,#01,#c4,#5e
	db #49,#0e,#49,#01,#0e,#49,#01,#0e
	db #49,#01,#0e,#49,#01,#0e,#49,#01
	db #0e,#49,#01,#0e,#49,#01,#c3,#5e
	db #58,#0e,#58,#01,#0e,#58,#01,#0e
	db #58,#01,#0e,#58,#01,#0e,#58,#01
	db #0e,#58,#01,#0e,#58,#01,#c3,#5e
	db #58,#0e,#58,#01,#0e,#58,#01,#0e
	db #58,#01,#0e,#58,#01,#0e,#58,#01
	db #0e,#58,#01,#0e,#58,#01,#c3,#5e
	db #38,#0e,#38,#01,#0e,#38,#01,#0e
	db #38,#01,#0e,#38,#01,#0e,#38,#01
	db #0e,#38,#01,#0e,#38,#01,#c3,#5e
	db #38,#0e,#38,#01,#0e,#38,#01,#0e
	db #38,#01,#0e,#38,#01,#0e,#38,#01
	db #0e,#38,#01,#0e,#38,#01,#c1,#5e
	db #57,#0e,#57,#01,#0e,#57,#01,#0e
	db #57,#01,#0e,#57,#01,#0e,#57,#01
	db #0e,#57,#01,#0e,#57,#01,#c1,#5e
	db #47,#0e,#47,#01,#0e,#47,#01,#0e
	db #47,#01,#0e,#47,#01,#0e,#47,#01
	db #0e,#47,#01,#0e,#47,#01,#ff,#3c
	db #01,#20,#3c,#01,#25,#41,#01,#20
	db #43,#00,#02,#46,#00,#02,#46,#01
	db #25,#43,#01,#20,#43,#01,#25,#41
	db #01,#20,#3f,#00,#02,#3f,#01,#25
	db #3c,#01,#20,#3c,#01,#25,#01,#60
	db #3f,#01,#20,#3f,#01,#25,#41,#01
	db #20,#43,#01,#20,#46,#01,#20,#46
	db #01,#25,#43,#01,#20,#43,#01,#25
	db #41,#01,#20,#43,#01,#20,#41,#01
	db #20,#43,#01,#20,#43,#01,#85,#ff
	db #4f,#40,#04,#4f,#40,#04,#4f,#40
	db #04,#4f,#40,#02,#4f,#40,#02,#50
	db #40,#02,#50,#40,#02,#50,#40,#02
	db #50,#40,#02,#50,#40,#08,#4f,#40
	db #04,#4f,#40,#02,#4f,#40,#06,#4f
	db #40,#02,#4f,#40,#02,#4d,#40,#02
	db #4d,#40,#04,#4d,#40,#0a,#ff,#4f
	db #40,#04,#4f,#40,#02,#4f,#40,#06
	db #4f,#40,#02,#4d,#40,#02,#4b,#40
	db #04,#48,#40,#02,#48,#40,#08,#48
	db #40,#02,#4b,#40,#02,#4b,#40,#04
	db #4b,#40,#06,#4f,#40,#04,#4d,#40
	db #02,#4d,#40,#04,#4d,#40,#0a,#ff
	db #4d,#41,#20,#41,#01,#25,#4d,#41
	db #20,#4d,#41,#20,#41,#01,#25,#01
	db #20,#4f,#41,#20,#4d,#41,#20,#4b
	db #41,#20,#3f,#01,#25,#48,#41,#20
	db #48,#41,#20,#3c,#01,#25,#01,#20
	db #01,#20,#48,#41,#20,#4b,#41,#20
	db #4b,#41,#20,#3f,#01,#25,#4b,#41
	db #20,#3f,#01,#25,#01,#20,#4f,#41
	db #20,#43,#01,#25,#4d,#41,#20,#4d
	db #41,#20,#41,#01,#25,#4d,#41,#20
	db #41,#01,#25,#01,#20,#01,#20,#01
	db #20,#ff
;
.music_info
	db "Jukebox 1 - L'Aventurier (2003)(RoundSoft)(Napo)",0
	db "ST-128 Module",0

	read "music_end.asm"
