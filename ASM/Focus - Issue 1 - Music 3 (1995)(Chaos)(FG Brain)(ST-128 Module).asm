; Music of Focus - Issue 1 - Music 3 (1995)(Chaos)(FG Brain)(ST-128 Module)
; Ripped by Megachur the 03/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FOCUI1M3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #6460

	read "music_header.asm"

	jp l6469
	jp l64fd
	jp l64e1
;
.init_music
.l6469
;
	xor a
	ld hl,l6a14
	call l64da
	ld hl,l6a42
	call l64da
	ld hl,l6a70
	call l64da
	ld ix,l6a10
	ld iy,l6a9a
	ld de,#002e
	ld b,#03
.l6489
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
	djnz l6489
	ld hl,l6929
	ld (hl),#07
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l6925),hl
	ld (l6927),hl
	ld a,#0c
	ld c,d
	call l6905
	ld a,#0d
	ld c,d
	jp l6905
.l64da
	ld b,#2a
.l64dc
	ld (hl),a
	inc hl
	djnz l64dc
	ret
;
.stop_music
.l64e1
;
	ld a,#07
	ld c,#3f
	call l6905
	ld a,#08
	ld c,#00
	call l6905
	ld a,#09
	ld c,#00
	call l6905
	ld a,#0a
	ld c,#00
	jp l6905
;
.play_music
.l64fd
;
	ld hl,l692b
	dec (hl)
	ld ix,l6a10
	ld bc,l6a1e
	call l659f
	ld ix,l6a3e
	ld bc,l6a4c
	call l659f
	ld ix,l6a6c
	ld bc,l6a7a
	call l659f
	ld hl,l6924
	ld de,l692b
	ld b,#06
	call l657c
	ld b,#07
	call l657c
	ld b,#0b
	call l657c
	ld b,#0d
	call l657c
	ld de,l692b
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6a2f
	call l6555
	ld hl,l6a5d
	call l6555
	ld hl,l6a8b
.l6555
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
	jr nz,l656a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l656a
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
.l657c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6905
.l6587
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6905
.l659f
	ld a,(l692b)
	or a
	jp nz,l6657
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6657
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6587
	or a
	jp z,l664c
	ld r,a
	and #7f
	cp #10
	jr c,l6627
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l679f
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
	jr z,l6600
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l6600
	rrca
	ld c,a
	ld hl,l6aa0
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
	jr z,l661f
	ld (ix+#1e),b
.l661f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6640
.l6627
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6930
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
	add a
.l6640
	ld a,d
	or a
	jr nz,l664e
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l664e
.l664c
	ld a,(hl)
	inc hl
.l664e
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6657
	ld a,(ix+#17)
	or a
	jr nz,l666d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l666d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6683
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6683
	ld a,(ix+#0d)
	or a
	jr z,l6691
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l66af
.l6691
	ld a,(ix+#1a)
	or a
	jp z,l66b6
	ld c,a
	cp #03
	jr nz,l669e
	xor a
.l669e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l66af
	ld a,(ix+#18)
	dec c
	jr z,l66af
	ld a,(ix+#19)
.l66af
	add (ix+#07)
	ld b,d
	call l679f
.l66b6
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l66de
	dec (ix+#1b)
	jr nz,l66de
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6716
.l66de
	ld a,(ix+#29)
	or a
	jr z,l6716
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l670d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6704
	ld (ix+#29),#ff
	jr l670d
.l6704
	cp (ix+#2b)
	jr nz,l670d
	ld (ix+#29),#01
.l670d
	ld b,d
	or a
	jp p,l6713
	dec b
.l6713
	ld c,a
	jr l6721
.l6716
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6721
	pop hl
	bit 7,(ix+#14)
	jr z,l672a
	ld h,d
	ld l,d
.l672a
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6905
	ld c,h
	ld a,(ix+#02)
	call l6905
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l677d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l676c
	dec (ix+#09)
	jr nz,l676c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6764
	xor a
	jr l6769
.l6764
	cp #10
	jr nz,l6769
	dec a
.l6769
	ld (ix+#1e),a
.l676c
	ld a,b
	sub (ix+#1e)
	jr nc,l6773
	xor a
.l6773
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6905
.l677d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l692c)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l679b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l679b
	ld (l692c),hl
	ret
.l679f
	ld hl,l694e
	cp #61
	jr nc,l67a9
	add a
	ld c,a
	add hl,bc
.l67a9
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l67b3
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l68d8
	ld (ix+#1e),a
	jp l6640
.l67c5
	dec b
.l67c6
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l67d1
	neg
.l67d1
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
	jp l6640
.l67e7
	dec b
	jr l67eb
.l67ea
	inc b
.l67eb
	call l68d8
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6640
.l67fa
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
	jp l68bd
.l680b
	ld a,(hl)
	inc hl
	or a
	jr z,l682d
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
.l682d
	ld (ix+#29),a
	jp l6640
.l6833
	dec hl
	ld a,(hl)
	and #0f
	ld (l692f),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l692e),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6640
.l684d
	ld a,(hl)
	or a
	jr z,l685e
	call l68da
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6640
.l685e
	ld hl,#0101
	ld (l692a),hl
	jp l6640
.l6867
	call l68d8
	ld (ix+#1e),a
	jp l6640
.l6870
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l68e9
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l68e9
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6640
.l6892
	ld a,(hl)
	inc hl
	ld (l6929),a
	jp l6640
.l689a
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
	jp l6640
.l68b9
	call l68d8
	add a
.l68bd
	ld b,#00
	ld c,a
	push hl
	ld hl,l6b20
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6640
.l68d8
	ld a,(hl)
	inc hl
.l68da
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
.l68e9
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6aa0
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l6905
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
.l6924
	ret
.l692c equ $ + 7
.l692b equ $ + 6
.l692a equ $ + 5
.l6929 equ $ + 4
.l6927 equ $ + 2
.l6925
	db #05,#38,#00,#00,#07,#37,#01,#05
.l692f equ $ + 2
.l692e equ $ + 1
	db #38,#00,#00
.l6930
	dw l67b3,l67c6,l67c5,l67ea
	dw l67e7,l67fa,l680b,l6833
	dw l684d,l6833,l6867,l6870
	dw l6892,l689a,l68b9
.l694e
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
.l6a14 equ $ + 4
.l6a10
	db #08,#00,#01,#08,#be,#00,#00,#34
.l6a1e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#20,#6d
	db #60,#6d,#a0,#6b,#20,#00,#07,#19
.l6a2f equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #41,#71,#4c,#6f,#00,#50,#00,#00
.l6a3e equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l6a42 equ $ + 2
	db #03,#10,#aa,#01,#00,#26,#00,#00
.l6a4c equ $ + 4
	db #00,#00,#00,#00,#40,#6b,#80,#6b
	db #a0,#6b,#00,#00,#07,#19,#00,#00
.l6a5d equ $ + 5
	db #00,#00,#00,#00,#00,#01,#a9,#74
	db #a3,#6f,#00,#10,#00,#00,#00,#00
.l6a6c equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l6a70
	db #aa,#01,#00,#26,#00,#00,#00,#00
.l6a7a equ $ + 2
	db #00,#00,#20,#6c,#60,#6c,#80,#6c
	db #00,#00,#07,#19,#00,#00,#00,#00
.l6a8b equ $ + 3
	db #00,#00,#00,#02,#18,#76,#fa,#6f
	db #00,#30,#00,#00,#00,#00,#00,#00
.l6a9a equ $ + 2
	db #01,#01,#40,#6f,#97,#6f,#ee,#6f
.l6aa0
	db #52,#24,#b2,#91,#f2,#91,#e0,#6d
	db #40,#6b,#80,#6b,#a0,#6b,#00,#00
	db #c0,#6b,#00,#6c,#a0,#6b,#40,#00
	db #20,#6c,#60,#6c,#80,#6c,#00,#00
	db #a0,#6c,#e0,#6c,#00,#6d,#00,#00
	db #20,#6d,#60,#6d,#a0,#6b,#20,#00
	db #80,#6d,#c0,#6d,#e0,#6d,#c0,#00
	db #20,#6d,#00,#6e,#20,#6e,#9a,#06
	db #40,#6e,#80,#6e,#a0,#6e,#00,#00
	db #c0,#6e,#00,#6f,#20,#6f,#00,#00
	db #32,#24,#64,#48,#64,#48,#32,#24
	db #64,#48,#64,#48,#64,#48,#32,#24
	db #64,#48,#64,#48,#64,#48,#32,#24
	db #64,#48,#64,#48,#64,#48,#32,#24
	db #64,#48,#31,#24,#30,#24,#ff,#ff
	db #32,#24,#33,#24,#34,#24,#01,#00
.l6b20
	db #32,#24,#31,#24,#30,#24,#31,#24
	db #32,#24,#33,#24,#34,#24,#33,#24
	db #32,#24,#31,#24,#30,#24,#31,#24
	db #32,#24,#33,#24,#34,#24,#33,#24
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #02,#00,#02,#00,#01,#00,#01,#00
	db #0f,#0f,#0e,#0d,#0c,#0e,#0d,#0c
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#09,#08,#07,#06
	db #05,#04,#03,#02,#02,#02,#02,#00
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
	db #05,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #04,#06,#07,#09,#0c,#11,#17,#1d
	db #15,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#0a,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#00
	db #00,#00,#35,#01,#0e,#01,#00,#00
	db #93,#04,#35,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0a,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#40,#00,#80,#00,#c0,#00
	db #00,#01,#40,#01,#80,#01,#c0,#01
	db #00,#02,#40,#02,#80,#02,#c0,#02
	db #00,#03,#40,#03,#80,#03,#c0,#03
	db #00,#04,#40,#04,#80,#04,#c0,#04
	db #00,#05,#40,#05,#80,#05,#c0,#05
	db #00,#06,#40,#06,#80,#06,#c0,#06
	db #00,#07,#40,#07,#80,#07,#c0,#07
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#03,#00
	db #00,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #02,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0f,#0e,#0e,#0e,#0e,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0c,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#08,#00
	db #00,#80,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#45,#70,#00,#93,#70,#00,#f8
	db #70,#00,#37,#71,#00,#77,#71,#00
	db #bb,#71,#00,#10,#72,#00,#89,#72
	db #00,#10,#72,#00,#dd,#72,#00,#29
	db #73,#00,#54,#73,#00,#8e,#73,#00
	db #d2,#73,#00,#77,#71,#00,#bb,#71
	db #00,#10,#72,#00,#89,#72,#00,#10
	db #72,#00,#89,#72,#00,#93,#70,#00
	db #93,#70,#00,#10,#72,#00,#89,#72
	db #00,#10,#72,#00,#89,#72,#00,#15
	db #74,#00,#96,#74,#80,#40,#6f,#00
	db #99,#74,#00,#99,#74,#00,#99,#74
	db #00,#99,#74,#00,#0a,#75,#00,#0a
	db #75,#00,#0a,#75,#00,#0a,#75,#00
	db #0a,#75,#00,#0a,#75,#00,#0a,#75
	db #00,#0a,#75,#00,#99,#74,#00,#99
	db #74,#00,#0a,#75,#00,#0a,#75,#00
	db #0a,#75,#00,#0a,#75,#00,#0a,#75
	db #00,#0a,#75,#00,#99,#74,#00,#99
	db #74,#00,#0a,#75,#00,#0a,#75,#00
	db #0a,#75,#00,#0a,#75,#00,#0a,#75
	db #00,#7b,#75,#80,#97,#6f,#00,#7e
	db #75,#00,#c3,#75,#00,#07,#76,#00
	db #07,#76,#00,#07,#76,#00,#78,#76
	db #00,#e9,#76,#00,#59,#77,#00,#e9
	db #76,#00,#c9,#77,#00,#39,#78,#00
	db #a9,#78,#00,#19,#79,#00,#88,#79
	db #00,#07,#76,#00,#78,#76,#00,#e9
	db #76,#00,#59,#77,#00,#e9,#76,#00
	db #59,#77,#00,#c3,#75,#00,#7e,#75
	db #00,#e9,#76,#00,#59,#77,#00,#e9
	db #76,#00,#59,#77,#00,#f8,#79,#00
	db #69,#7a,#80,#ee,#6f,#45,#20,#02
	db #42,#20,#02,#c0,#20,#c0,#20,#c2
	db #20,#45,#20,#09,#45,#20,#02,#42
	db #20,#02,#c0,#20,#c0,#20,#c2,#20
	db #47,#20,#05,#45,#20,#04,#45,#20
	db #02,#42,#20,#02,#c0,#20,#c0,#20
	db #c2,#20,#45,#20,#02,#c5,#20,#42
	db #20,#02,#40,#20,#02,#42,#20,#02
	db #49,#20,#03,#49,#20,#03,#49,#20
	db #02,#4c,#20,#03,#4c,#20,#03,#4c
	db #20,#02,#ff,#45,#20,#02,#42,#20
	db #02,#c0,#20,#c0,#20,#c2,#20,#45
	db #20,#02,#c5,#20,#42,#20,#02,#40
	db #20,#02,#42,#20,#02,#45,#20,#02
	db #42,#20,#02,#c0,#20,#c0,#20,#c2
	db #20,#47,#20,#02,#47,#20,#02,#c7
	db #20,#45,#20,#02,#45,#20,#02,#45
	db #20,#02,#42,#20,#02,#c0,#20,#c0
	db #20,#c2,#20,#45,#20,#02,#c5,#20
	db #42,#20,#02,#40,#20,#02,#42,#20
	db #02,#49,#20,#03,#49,#20,#03,#49
	db #20,#02,#49,#20,#02,#c7,#20,#4c
	db #20,#02,#c7,#20,#49,#20,#02,#ff
	db #00,#04,#45,#50,#02,#45,#50,#02
	db #c4,#50,#45,#50,#02,#44,#50,#03
	db #42,#50,#06,#45,#50,#02,#45,#50
	db #02,#47,#50,#02,#45,#50,#02,#c4
	db #50,#45,#50,#02,#45,#50,#03,#44
	db #50,#02,#c4,#50,#42,#50,#02,#42
	db #50,#03,#40,#50,#02,#40,#50,#02
	db #3e,#50,#02,#3d,#50,#10,#ff,#00
	db #04,#45,#50,#02,#45,#50,#02,#c4
	db #50,#45,#50,#02,#44,#50,#03,#42
	db #50,#06,#45,#50,#02,#45,#50,#02
	db #47,#50,#02,#45,#50,#02,#44,#50
	db #02,#45,#50,#02,#45,#50,#02,#44
	db #50,#02,#c4,#50,#42,#50,#02,#42
	db #50,#03,#40,#50,#02,#40,#50,#02
	db #42,#50,#04,#41,#50,#0e,#ff,#00
	db #04,#45,#50,#02,#45,#50,#02,#c4
	db #50,#42,#50,#02,#40,#50,#03,#42
	db #50,#02,#40,#50,#04,#44,#50,#02
	db #45,#50,#02,#44,#50,#02,#c5,#50
	db #44,#50,#03,#45,#50,#02,#3e,#50
	db #04,#3e,#50,#02,#40,#50,#02,#c2
	db #50,#42,#50,#03,#44,#50,#02,#45
	db #50,#02,#45,#50,#03,#c4,#50,#44
	db #50,#0c,#ff,#00,#04,#45,#50,#02
	db #45,#50,#02,#c4,#50,#42,#50,#02
	db #40,#50,#03,#42,#50,#02,#40,#50
	db #04,#c4,#50,#45,#50,#02,#44,#50
	db #03,#45,#50,#02,#44,#50,#02,#45
	db #50,#02,#44,#50,#02,#c2,#50,#42
	db #50,#04,#c2,#50,#47,#50,#02,#45
	db #50,#02,#44,#50,#02,#42,#50,#02
	db #c5,#50,#c4,#50,#c2,#50,#44,#50
	db #06,#c4,#50,#c4,#50,#c4,#50,#c5
	db #50,#c4,#50,#c0,#50,#c2,#50,#ff
	db #42,#2b,#11,#42,#2b,#11,#44,#2b
	db #11,#45,#2b,#31,#45,#5b,#20,#c5
	db #50,#3e,#50,#03,#c5,#50,#c4,#50
	db #c2,#50,#c4,#50,#40,#2b,#11,#40
	db #2b,#11,#42,#2b,#11,#44,#2b,#31
	db #44,#5b,#20,#c4,#50,#3d,#50,#03
	db #bd,#50,#bd,#50,#bd,#50,#be,#50
	db #3e,#2b,#11,#3e,#2b,#11,#40,#2b
	db #11,#42,#2b,#11,#45,#2b,#31,#44
	db #5b,#10,#42,#50,#02,#44,#50,#02
	db #45,#50,#02,#c2,#50,#c4,#50,#3d
	db #2b,#11,#3d,#2b,#11,#3e,#2b,#11
	db #41,#2b,#51,#3d,#2b,#11,#3e,#2b
	db #11,#41,#2b,#11,#44,#2b,#11,#45
	db #5b,#10,#c4,#50,#c2,#50,#c0,#50
	db #ff,#42,#2b,#11,#42,#2b,#11,#44
	db #2b,#11,#45,#2b,#31,#49,#5b,#20
	db #ca,#50,#42,#50,#03,#45,#50,#02
	db #c4,#50,#40,#50,#03,#44,#50,#02
	db #45,#50,#02,#47,#50,#02,#40,#50
	db #04,#40,#50,#02,#c4,#50,#45,#50
	db #03,#42,#50,#02,#42,#50,#02,#44
	db #50,#02,#45,#50,#03,#44,#50,#03
	db #42,#50,#02,#44,#50,#09,#c4,#50
	db #c4,#50,#c4,#50,#c5,#50,#c4,#50
	db #c0,#50,#c2,#50,#ff,#42,#2b,#11
	db #42,#2b,#11,#44,#2b,#11,#45,#2b
	db #31,#49,#5b,#20,#ca,#50,#42,#50
	db #03,#45,#50,#02,#c4,#50,#40,#50
	db #03,#44,#50,#02,#45,#50,#02,#47
	db #50,#02,#40,#50,#04,#40,#50,#02
	db #c4,#50,#45,#50,#03,#42,#50,#02
	db #42,#50,#02,#44,#50,#02,#45,#50
	db #03,#44,#50,#03,#42,#50,#02,#44
	db #50,#0c,#49,#90,#02,#49,#90,#02
	db #ff,#c9,#90,#42,#90,#07,#ca,#90
	db #4c,#90,#07,#cc,#90,#4e,#90,#07
	db #49,#90,#08,#49,#90,#03,#47,#90
	db #03,#4e,#90,#04,#4c,#90,#04,#47
	db #90,#02,#49,#90,#0c,#49,#90,#02
	db #49,#90,#02,#ff,#c9,#90,#42,#90
	db #07,#ce,#90,#4a,#90,#07,#cc,#90
	db #4e,#90,#07,#49,#90,#04,#49,#90
	db #02,#49,#90,#02,#49,#90,#03,#47
	db #90,#03,#4e,#90,#04,#4c,#90,#04
	db #47,#90,#02,#49,#90,#03,#4c,#90
	db #03,#4e,#90,#04,#51,#90,#02,#49
	db #90,#02,#49,#90,#02,#ff,#c9,#90
	db #42,#90,#03,#45,#50,#02,#45,#50
	db #02,#47,#50,#02,#45,#50,#02,#c4
	db #50,#42,#50,#02,#42,#50,#05,#45
	db #50,#02,#45,#50,#02,#c7,#50,#45
	db #50,#02,#44,#50,#03,#45,#50,#02
	db #45,#50,#02,#44,#50,#02,#c4,#50
	db #42,#50,#02,#42,#50,#03,#40,#50
	db #02,#c0,#50,#3e,#50,#03,#3d,#50
	db #10,#ff,#00,#04,#c5,#50,#45,#50
	db #02,#47,#50,#03,#45,#50,#02,#44
	db #50,#02,#42,#50,#02,#42,#50,#03
	db #c2,#50,#c5,#50,#45,#50,#02,#47
	db #50,#03,#45,#50,#02,#44,#50,#02
	db #45,#50,#02,#c5,#50,#44,#50,#02
	db #44,#50,#03,#42,#50,#02,#c2,#50
	db #40,#50,#02,#40,#50,#03,#3e,#50
	db #04,#3d,#50,#0e,#ff,#aa,#90,#aa
	db #90,#fe,#01,#aa,#90,#aa,#90,#fe
	db #01,#aa,#90,#aa,#90,#a6,#90,#a6
	db #90,#fe,#01,#a6,#90,#a6,#90,#fe
	db #01,#a6,#90,#a6,#90,#a8,#90,#a8
	db #90,#fe,#01,#a8,#90,#a8,#90,#fe
	db #01,#a8,#90,#a8,#90,#a5,#90,#a5
	db #90,#fe,#01,#a5,#90,#a5,#90,#fe
	db #01,#a5,#90,#a5,#90,#a6,#90,#a6
	db #90,#fe,#01,#a6,#90,#a6,#90,#fe
	db #01,#a6,#90,#a6,#90,#a3,#90,#a3
	db #90,#fe,#01,#a3,#90,#a3,#90,#fe
	db #01,#a3,#90,#a3,#90,#a5,#90,#a5
	db #90,#fe,#01,#a5,#90,#a5,#90,#fe
	db #01,#a5,#90,#a5,#90,#a5,#90,#a5
	db #90,#fe,#01,#a5,#90,#a5,#90,#fe
	db #01,#a5,#90,#a5,#90,#ff,#fe,#40
	db #ff,#b6,#10,#36,#10,#02,#b6,#10
	db #36,#10,#02,#b6,#10,#b6,#10,#b6
	db #10,#36,#10,#02,#b6,#10,#36,#10
	db #02,#b6,#10,#b6,#10,#b2,#10,#32
	db #10,#02,#b2,#10,#32,#10,#02,#b2
	db #10,#b2,#10,#b2,#10,#32,#10,#02
	db #b2,#10,#32,#10,#02,#b2,#10,#b2
	db #10,#b4,#10,#34,#10,#02,#b4,#10
	db #34,#10,#02,#b4,#10,#b4,#10,#b4
	db #10,#34,#10,#02,#b4,#10,#34,#10
	db #02,#b4,#10,#b4,#10,#b1,#10,#31
	db #10,#02,#b1,#10,#31,#10,#02,#b1
	db #10,#b1,#10,#b1,#10,#31,#10,#02
	db #b1,#10,#31,#10,#02,#b1,#10,#b1
	db #10,#ff,#b6,#10,#36,#10,#02,#b6
	db #10,#36,#10,#02,#b6,#10,#b6,#10
	db #b2,#10,#32,#10,#02,#b2,#10,#32
	db #10,#02,#b2,#10,#b2,#10,#b4,#10
	db #34,#10,#02,#b4,#10,#34,#10,#02
	db #b4,#10,#b4,#10,#b1,#10,#31,#10
	db #02,#b1,#10,#31,#10,#02,#b1,#10
	db #b1,#10,#b2,#10,#32,#10,#02,#b2
	db #10,#32,#10,#02,#b2,#10,#b2,#10
	db #af,#10,#2f,#10,#02,#af,#10,#2f
	db #10,#02,#af,#10,#af,#10,#b1,#10
	db #31,#10,#02,#b1,#10,#31,#10,#02
	db #b1,#10,#b1,#10,#b1,#10,#31,#10
	db #02,#b1,#10,#31,#10,#02,#b1,#10
	db #b1,#10,#ff,#00,#40,#ff,#36,#3d
	db #07,#03,#b6,#30,#3d,#40,#04,#36
	db #30,#03,#b6,#30,#3d,#40,#04,#36
	db #30,#03,#b6,#30,#3d,#40,#04,#36
	db #30,#03,#b6,#30,#3d,#40,#04,#36
	db #30,#03,#b6,#30,#3d,#40,#04,#36
	db #30,#03,#b6,#30,#3d,#40,#04,#36
	db #30,#03,#b6,#30,#3d,#40,#04,#36
	db #30,#03,#b6,#30,#3d,#40,#02,#3d
	db #40,#02,#ff,#36,#30,#03,#b6,#30
	db #3d,#40,#04,#36,#30,#03,#b6,#30
	db #3d,#40,#04,#36,#30,#03,#b6,#30
	db #3d,#40,#04,#36,#30,#03,#b6,#30
	db #3d,#40,#04,#36,#30,#03,#b6,#30
	db #3d,#40,#04,#36,#30,#03,#b6,#30
	db #3d,#40,#04,#36,#30,#03,#b6,#30
	db #3d,#40,#04,#36,#30,#03,#b6,#30
	db #3d,#40,#02,#3d,#40,#02,#ff,#36
	db #30,#02,#bb,#70,#b4,#70,#3d,#40
	db #02,#bb,#70,#b4,#70,#36,#30,#02
	db #bb,#70,#b4,#70,#3d,#40,#02,#b4
	db #60,#b4,#70,#36,#30,#02,#bb,#70
	db #b4,#70,#3d,#40,#02,#bb,#70,#b4
	db #70,#36,#30,#02,#bb,#70,#b4,#70
	db #3d,#40,#02,#b4,#60,#b4,#70,#36
	db #30,#02,#bb,#70,#b4,#70,#3d,#40
	db #02,#bb,#70,#b4,#70,#36,#30,#02
	db #bb,#70,#b4,#70,#3d,#40,#02,#b4
	db #60,#b4,#70,#36,#30,#02,#bb,#70
	db #b4,#70,#3d,#40,#02,#bb,#70,#b4
	db #70,#36,#30,#02,#bb,#70,#b4,#70
	db #3d,#40,#02,#b4,#60,#b4,#70,#ff
	db #36,#30,#02,#bb,#70,#b4,#70,#3d
	db #40,#02,#bb,#70,#b4,#70,#36,#30
	db #02,#bb,#70,#b4,#70,#3d,#40,#02
	db #b4,#60,#b4,#70,#36,#30,#02,#bb
	db #70,#b4,#70,#3d,#40,#02,#bb,#70
	db #b4,#70,#36,#30,#02,#bb,#70,#b4
	db #70,#3d,#40,#02,#b4,#60,#b4,#70
	db #36,#30,#02,#bb,#70,#b4,#70,#3d
	db #40,#02,#bb,#70,#b4,#70,#36,#30
	db #02,#bb,#70,#b4,#70,#3d,#40,#02
	db #b4,#60,#b4,#70,#36,#30,#02,#bb
	db #70,#b4,#70,#3d,#40,#02,#bb,#70
	db #b4,#70,#36,#30,#02,#bb,#70,#c0
	db #80,#34,#80,#02,#b4,#60,#c0,#70
	db #ff,#36,#30,#02,#bb,#70,#b4,#70
	db #3d,#40,#02,#bb,#70,#b4,#70,#36
	db #30,#02,#bb,#70,#b4,#70,#3d,#40
	db #02,#b4,#60,#b4,#70,#36,#30,#02
	db #bb,#70,#b4,#70,#3d,#40,#02,#bb
	db #70,#b4,#70,#36,#30,#02,#bb,#70
	db #b4,#70,#3d,#40,#02,#b4,#60,#b4
	db #70,#36,#30,#02,#bb,#70,#b4,#70
	db #3d,#40,#02,#bb,#70,#b4,#70,#36
	db #30,#02,#bb,#70,#b4,#70,#3d,#40
	db #02,#b4,#60,#b4,#70,#36,#30,#02
	db #bb,#70,#b4,#70,#3d,#40,#02,#bb
	db #70,#b4,#70,#36,#30,#02,#bb,#70
	db #3d,#40,#02,#b4,#70,#3d,#40,#02
	db #ff,#36,#30,#02,#bb,#70,#b4,#70
	db #3d,#40,#02,#bb,#70,#b4,#70,#36
	db #30,#02,#bb,#70,#b4,#70,#3d,#40
	db #02,#b4,#60,#b4,#70,#36,#30,#02
	db #bb,#70,#b4,#70,#3d,#40,#02,#bb
	db #70,#b4,#70,#36,#30,#02,#bb,#70
	db #b4,#70,#3d,#40,#02,#b4,#60,#b4
	db #70,#36,#30,#02,#bb,#70,#b4,#70
	db #3d,#40,#02,#bb,#70,#b4,#70,#36
	db #30,#02,#bb,#70,#b4,#70,#3d,#40
	db #02,#b4,#60,#b4,#70,#36,#30,#02
	db #bb,#70,#b4,#70,#3d,#40,#02,#bb
	db #70,#b4,#70,#b6,#30,#3d,#40,#02
	db #3d,#40,#02,#bd,#40,#3d,#40,#02
	db #ff,#36,#30,#02,#bb,#70,#b4,#70
	db #3d,#40,#02,#bb,#70,#b4,#70,#36
	db #30,#02,#bb,#70,#b4,#70,#3d,#40
	db #02,#b4,#60,#b4,#70,#36,#30,#02
	db #bb,#70,#b4,#70,#3d,#40,#02,#bb
	db #70,#b4,#70,#36,#30,#02,#bb,#70
	db #b4,#70,#3d,#40,#02,#b4,#60,#b4
	db #70,#36,#30,#02,#bb,#70,#b4,#70
	db #3d,#40,#02,#bb,#70,#b4,#70,#36
	db #30,#02,#bb,#70,#b4,#70,#3d,#40
	db #02,#b4,#60,#b4,#70,#36,#30,#02
	db #bb,#70,#b4,#70,#3d,#40,#02,#bb
	db #70,#b4,#70,#b6,#30,#3d,#40,#02
	db #3d,#40,#02,#bd,#40,#3d,#4b,#23
	db #ff,#36,#30,#02,#cc,#70,#b6,#30
	db #3d,#40,#02,#cc,#70,#cc,#70,#36
	db #30,#02,#cc,#70,#b6,#30,#3d,#40
	db #02,#cc,#70,#cc,#70,#36,#30,#02
	db #cc,#70,#b6,#30,#3d,#40,#02,#cc
	db #70,#cc,#70,#36,#30,#02,#cc,#70
	db #b6,#30,#3d,#40,#02,#cc,#70,#cc
	db #70,#36,#30,#02,#cc,#70,#b6,#30
	db #3d,#40,#02,#cc,#70,#cc,#70,#36
	db #30,#02,#cc,#70,#b6,#30,#3d,#40
	db #02,#cc,#70,#cc,#70,#36,#30,#02
	db #cc,#70,#b6,#30,#3d,#40,#02,#cc
	db #70,#cc,#70,#36,#30,#02,#cc,#70
	db #b6,#30,#3d,#40,#02,#3d,#40,#02
	db #ff,#36,#30,#02,#cc,#70,#b6,#30
	db #3d,#40,#02,#cc,#70,#cc,#70,#36
	db #30,#02,#cc,#70,#b6,#30,#3d,#40
	db #02,#cc,#70,#cc,#70,#36,#30,#02
	db #cc,#70,#b6,#30,#3d,#40,#02,#cc
	db #70,#cc,#70,#36,#30,#02,#cc,#70
	db #b6,#30,#3d,#40,#02,#cc,#70,#cc
	db #70,#36,#30,#02,#cc,#70,#b6,#30
	db #3d,#40,#02,#cc,#70,#cc,#70,#36
	db #30,#02,#cc,#70,#b6,#30,#3d,#40
	db #02,#cc,#70,#cc,#70,#36,#30,#02
	db #cc,#70,#b6,#30,#3d,#40,#02,#cc
	db #70,#cc,#70,#36,#30,#02,#3d,#40
	db #02,#3d,#40,#02,#bd,#40,#bd,#40
	db #ff,#36,#30,#02,#bb,#70,#b4,#70
	db #3d,#40,#02,#bb,#70,#b4,#70,#36
	db #30,#02,#bb,#70,#b4,#70,#3d,#40
	db #02,#b4,#60,#b4,#70,#36,#30,#02
	db #bb,#70,#b4,#70,#3d,#40,#02,#bb
	db #70,#b4,#70,#36,#30,#02,#bb,#70
	db #b4,#70,#3d,#40,#02,#b4,#60,#b4
	db #70,#36,#30,#02,#bb,#70,#b4,#70
	db #3d,#40,#02,#bb,#70,#b4,#70,#36
	db #30,#02,#bb,#70,#b4,#70,#3d,#40
	db #02,#b4,#60,#b4,#70,#36,#30,#02
	db #bb,#70,#b4,#70,#3d,#40,#02,#bd
	db #40,#3d,#40,#02,#34,#60,#02,#b4
	db #60,#3d,#40,#02,#34,#60,#02,#ff
	db #36,#3b,#20,#bb,#70,#b4,#70,#3d
	db #40,#02,#bb,#70,#b4,#70,#36,#30
	db #02,#bb,#70,#b4,#70,#3d,#40,#02
	db #b4,#60,#b4,#70,#36,#30,#02,#bb
	db #70,#b4,#70,#3d,#40,#02,#bb,#70
	db #b4,#70,#36,#30,#02,#bb,#70,#b4
	db #70,#3d,#40,#02,#b4,#60,#b4,#70
	db #36,#30,#02,#bb,#70,#b4,#70,#3d
	db #40,#02,#bb,#70,#b4,#70,#36,#30
	db #02,#bb,#70,#b4,#70,#3d,#40,#02
	db #b4,#60,#b4,#70,#36,#30,#02,#bb
	db #70,#b4,#70,#3d,#40,#02,#bd,#40
	db #3d,#40,#02,#bd,#40,#3d,#40,#02
	db #b4,#70,#bd,#40,#3d,#40,#02,#ff
	db #36,#30,#02,#c0,#70,#b6,#30,#3d
	db #40,#02,#c0,#70,#c0,#70,#36,#30
	db #02,#c0,#70,#b6,#30,#3d,#40,#02
	db #b4,#60,#c0,#70,#36,#30,#02,#c0
	db #70,#b6,#30,#3d,#40,#02,#c0,#70
	db #c0,#70,#36,#30,#02,#c0,#70,#b6
	db #30,#3d,#40,#02,#b4,#60,#c0,#70
	db #36,#30,#02,#c0,#70,#b6,#30,#3d
	db #40,#02,#c0,#70,#c0,#70,#36,#30
	db #02,#c0,#70,#b6,#30,#3d,#40,#02
	db #b4,#60,#c0,#70,#36,#30,#02,#c0
	db #70,#b6,#30,#3d,#40,#02,#c0,#70
	db #c0,#70,#36,#30,#02,#c0,#70,#c0
	db #80,#34,#80,#02,#b4,#60,#c0,#70
	db #ff,#40,#49,#72,#fe,#39,#ff
;
.music_info
	db "Focus - Issue 1 - Music 3 (1995)(Chaos)(FG Brain)",0
	db "ST-128 Module",0

	read "music_end.asm"
