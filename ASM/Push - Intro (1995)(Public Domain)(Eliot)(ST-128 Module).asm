; Music of Push - Intro (1995)(Public Domain)(Eliot)(ST-128 Module)
; Ripped by Megachur the 04/09/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PUSHINTR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #6695

	read "music_header.asm"

	jr l6699
	jr l66a8
.l6699
	call l66cc
	ld hl,l66b9
	ld de,l66b1
	ld bc,#81ff
	jp #bcd7
.l66a8
	ld hl,l66b9
	call #bcdd
	jp l6744
.l66b1
	push ix
	call l6760
	pop ix
	ret
.l66b9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l66cc
	jp l6760
	jp l6744
;
.init_music
.l66cc
;
	xor a
	ld hl,l6c77
	call l673d
	ld hl,l6ca5
	call l673d
	ld hl,l6cd3
	call l673d
	ld ix,l6c73
	ld iy,l6cfd
	ld de,#002e
	ld b,#03
.l66ec
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
	djnz l66ec
	ld hl,l6b8c
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
	ld (l6b88),hl
	ld (l6b8a),hl
	ld a,#0c
	ld c,d
	call l6b68
	ld a,#0d
	ld c,d
	jp l6b68
.l673d
	ld b,#2a
.l673f
	ld (hl),a
	inc hl
	djnz l673f
	ret
;
.stop_music
.l6744
;
	ld a,#07
	ld c,#3f
	call l6b68
	ld a,#08
	ld c,#00
	call l6b68
	ld a,#09
	ld c,#00
	call l6b68
	ld a,#0a
	ld c,#00
	jp l6b68
;
.play_music
.l6760
;
	ld hl,l6b8e
	dec (hl)
	ld ix,l6c73
	ld bc,l6c81
	call l6802
	ld ix,l6ca1
	ld bc,l6caf
	call l6802
	ld ix,l6ccf
	ld bc,l6cdd
	call l6802
	ld hl,l6b87
	ld de,l6b8e
	ld b,#06
	call l67df
	ld b,#07
	call l67df
	ld b,#0b
	call l67df
	ld b,#0d
	call l67df
	ld de,l6b8e
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6c92
	call l67b8
	ld hl,l6cc0
	call l67b8
	ld hl,l6cee
.l67b8
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
	jr nz,l67cd
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l67cd
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
.l67df
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6b68
.l67ea
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6b68
.l6802
	ld a,(l6b8e)
	or a
	jp nz,l68ba
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l68ba
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l67ea
	or a
	jp z,l68af
	ld r,a
	and #7f
	cp #10
	jr c,l688a
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l6a02
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
	jr z,l6863
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l6863
	rrca
	ld c,a
	ld hl,l6d03
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
	jr z,l6882
	ld (ix+#1e),b
.l6882
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l68a3
.l688a
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6b93
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
.l68a3
	ld a,d
	or a
	jr nz,l68b1
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l68b1
.l68af
	ld a,(hl)
	inc hl
.l68b1
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l68ba
	ld a,(ix+#17)
	or a
	jr nz,l68d0
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l68d0
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l68e6
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l68e6
	ld a,(ix+#0d)
	or a
	jr z,l68f4
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l6912
.l68f4
	ld a,(ix+#1a)
	or a
	jp z,l6919
	ld c,a
	cp #03
	jr nz,l6901
	xor a
.l6901
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l6912
	ld a,(ix+#18)
	dec c
	jr z,l6912
	ld a,(ix+#19)
.l6912
	add (ix+#07)
	ld b,d
	call l6a02
.l6919
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6941
	dec (ix+#1b)
	jr nz,l6941
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6979
.l6941
	ld a,(ix+#29)
	or a
	jr z,l6979
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l6970
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6967
	ld (ix+#29),#ff
	jr l6970
.l6967
	cp (ix+#2b)
	jr nz,l6970
	ld (ix+#29),#01
.l6970
	ld b,d
	or a
	jp p,l6976
	dec b
.l6976
	ld c,a
	jr l6984
.l6979
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6984
	pop hl
	bit 7,(ix+#14)
	jr z,l698d
	ld h,d
	ld l,d
.l698d
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6b68
	ld c,h
	ld a,(ix+#02)
	call l6b68
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l69e0
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l69cf
	dec (ix+#09)
	jr nz,l69cf
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l69c7
	xor a
	jr l69cc
.l69c7
	cp #10
	jr nz,l69cc
	dec a
.l69cc
	ld (ix+#1e),a
.l69cf
	ld a,b
	sub (ix+#1e)
	jr nc,l69d6
	xor a
.l69d6
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6b68
.l69e0
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6b8f)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l69fe
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l69fe
	ld (l6b8f),hl
	ret
.l6a02
	ld hl,l6bb1
	cp #61
	jr nc,l6a0c
	add a
	ld c,a
	add hl,bc
.l6a0c
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6a16
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6b3b
	ld (ix+#1e),a
	jp l68a3
.l6a28
	dec b
.l6a29
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6a34
	neg
.l6a34
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
	jp l68a3
.l6a4a
	dec b
	jr l6a4e
.l6a4d
	inc b
.l6a4e
	call l6b3b
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l68a3
.l6a5d
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
	jp l6b20
.l6a6e
	ld a,(hl)
	inc hl
	or a
	jr z,l6a90
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
.l6a90
	ld (ix+#29),a
	jp l68a3
.l6a96
	dec hl
	ld a,(hl)
	and #0f
	ld (l6b92),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6b91),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l68a3
.l6ab0
	ld a,(hl)
	or a
	jr z,l6ac1
	call l6b3d
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l68a3
.l6ac1
	ld hl,#0101
	ld (l6b8d),hl
	jp l68a3
.l6aca
	call l6b3b
	ld (ix+#1e),a
	jp l68a3
.l6ad3
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6b4c
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6b4c
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l68a3
.l6af5
	ld a,(hl)
	inc hl
	ld (l6b8c),a
	jp l68a3
.l6afd
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
	jp l68a3
.l6b1c
	call l6b3b
	add a
.l6b20
	ld b,#00
	ld c,a
	push hl
	ld hl,l6d83
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l68a3
.l6b3b
	ld a,(hl)
	inc hl
.l6b3d
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
.l6b4c
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6d03
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l6b68
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
.l6b87
	ret
.l6b8f equ $ + 7
.l6b8e equ $ + 6
.l6b8d equ $ + 5
.l6b8c equ $ + 4
.l6b8a equ $ + 2
.l6b88
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6b92 equ $ + 2
.l6b91 equ $ + 1
	db #38,#00,#00
.l6b93
	dw l6a16,l6a29,l6a28,l6a4d
	dw l6a4a,l6a5d,l6a6e,l6a96
	dw l6ab0,l6a96,l6aca,l6ad3
	dw l6af5,l6afd,l6b1c
.l6bb1
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
.l6c77 equ $ + 4
.l6c73
	db #08,#00,#01,#08,#00,#00,#00,#00
.l6c81 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6c92 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6ca1 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l6ca5 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l6caf equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6cc0 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6ccf equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l6cd3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6cdd equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6cee equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6cfd equ $ + 2
	db #00,#00,#23,#71,#38,#71,#4d,#71
.l6d03
	db #a3,#6d,#e3,#6d,#03,#6e,#80,#00
	db #23,#6e,#63,#6e,#83,#6e,#00,#00
	db #35,#55,#1a,#3d,#1f,#4a,#fc,#f8
	db #a3,#6e,#e3,#6e,#03,#6f,#14,#0c
	db #23,#6f,#63,#6f,#03,#6f,#48,#00
	db #db,#47,#26,#29,#1e,#21,#fd,#f0
	db #73,#d5,#e7,#3d,#e7,#3d,#b4,#f0
	db #83,#6f,#c3,#6f,#03,#6f,#00,#00
	db #37,#59,#1f,#42,#df,#49,#f4,#b4
	db #e3,#6f,#23,#70,#43,#70,#00,#00
	db #93,#e5,#df,#3d,#1f,#40,#b4,#f0
	db #83,#6f,#63,#70,#03,#6f,#14,#09
	db #2a,#ea,#27,#42,#df,#09,#b4,#f4
	db #83,#70,#c3,#70,#03,#6f,#16,#0a
	db #23,#20,#e7,#3f,#29,#40,#be,#f0
	db #29,#40,#e0,#21,#77,#e1,#ff,#fe
.l6d83
	db #d8,#29,#a0,#ed,#e3,#70,#03,#71
	db #98,#73,#53,#e5,#93,#57,#1a,#3d
	db #33,#55,#53,#33,#53,#4b,#53,#3f
	db #63,#7f,#88,#21,#70,#11,#88,#23
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#17,#00,#2f,#00,#47,#00
	db #5e,#00,#75,#00,#8d,#00,#a4,#00
	db #bc,#00,#d3,#00,#eb,#00,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0a
	db #09,#07,#05,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#01,#01,#02,#01,#01
	db #02,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#fe,#ff
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#03,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0d,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0e,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#06,#04,#03
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#b0,#00,#e0,#00,#10,#01
	db #40,#01,#70,#01,#a0,#01,#d0,#01
	db #00,#02,#00,#02,#30,#02,#60,#02
	db #70,#02,#80,#02,#90,#02,#a0,#02
	db #b0,#02,#b0,#02,#c0,#02,#e0,#02
	db #e0,#02,#e0,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#01,#00,#00
	db #01,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0d,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #02,#02,#02,#04,#06,#07,#00,#02
	db #02,#02,#04,#06,#07,#00,#02,#02
	db #02,#04,#06,#07,#00,#02,#02,#02
	db #04,#06,#07,#00,#02,#02,#02,#04
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #00,#b3,#71,#00,#f9,#71,#00,#f9
	db #71,#00,#65,#71,#00,#65,#71,#00
	db #65,#71,#80,#23,#71,#00,#b8,#72
	db #00,#29,#73,#00,#29,#73,#00,#47
	db #72,#00,#47,#72,#00,#47,#72,#80
	db #38,#71,#00,#a5,#73,#00,#27,#74
	db #00,#27,#74,#00,#9a,#73,#00,#9a
	db #73,#00,#9a,#73,#80,#4d,#71,#00
	db #40,#ff,#53,#d1,#10,#d2,#d0,#d1
	db #d0,#d0,#d0,#cf,#d0,#ce,#d0,#cd
	db #d0,#cc,#d0,#cb,#d0,#ca,#d0,#c9
	db #d0,#c8,#d0,#47,#d0,#0c,#d5,#d0
	db #d6,#d0,#d7,#d0,#d8,#d0,#d9,#d0
	db #da,#d0,#db,#d0,#dc,#d0,#d7,#d0
	db #d8,#d0,#d9,#d0,#da,#d0,#db,#d0
	db #dc,#d0,#dd,#d0,#de,#d0,#df,#d0
	db #e0,#d0,#e1,#d0,#e3,#d0,#e5,#d0
	db #e6,#d0,#e7,#d0,#68,#d0,#11,#ff
	db #50,#31,#20,#50,#30,#02,#55,#30
	db #02,#53,#30,#02,#55,#30,#02,#50
	db #30,#06,#50,#30,#02,#58,#30,#02
	db #55,#30,#04,#53,#30,#02,#55,#30
	db #02,#55,#30,#02,#53,#30,#02,#50
	db #30,#08,#55,#30,#02,#58,#30,#02
	db #57,#30,#02,#55,#30,#02,#58,#30
	db #02,#5a,#30,#02,#57,#30,#02,#58
	db #30,#02,#55,#30,#08,#ff,#44,#10
	db #02,#c4,#00,#c4,#00,#44,#10,#02
	db #45,#10,#02,#50,#df,#33,#50,#d0
	db #03,#50,#d0,#02,#53,#d0,#02,#55
	db #d0,#02,#58,#d0,#02,#55,#d0,#02
	db #57,#d0,#02,#53,#d0,#02,#50,#d0
	db #02,#50,#d0,#06,#50,#d0,#04,#55
	db #d0,#02,#58,#d0,#02,#57,#d0,#02
	db #53,#d0,#02,#55,#d0,#02,#50,#d0
	db #09,#dc,#10,#dc,#10,#d0,#10,#d0
	db #10,#c4,#10,#ff,#3b,#3c,#b0,#02
	db #47,#30,#02,#3b,#3c,#b1,#02,#3b
	db #30,#02,#47,#3c,#b0,#02,#3b,#30
	db #02,#3b,#3c,#b9,#02,#47,#30,#02
	db #3b,#3c,#b0,#02,#3b,#30,#02,#47
	db #3c,#b1,#02,#3b,#30,#02,#3b,#3c
	db #b0,#02,#47,#30,#02,#3b,#3c,#b9
	db #02,#3b,#30,#02,#4b,#3c,#b0,#02
	db #3f,#30,#02,#3f,#3c,#b1,#02,#4b
	db #30,#02,#3f,#3c,#b0,#02,#3f,#30
	db #02,#4b,#3c,#b9,#02,#3f,#30,#02
	db #3f,#3c,#b0,#02,#4b,#30,#02,#3f
	db #3c,#b1,#02,#3f,#30,#02,#4b,#3c
	db #b0,#02,#3f,#30,#02,#3f,#3c,#b9
	db #02,#4b,#30,#02,#ff,#38,#3c,#b0
	db #02,#44,#30,#02,#38,#3c,#b1,#02
	db #38,#30,#02,#44,#3c,#b0,#02,#38
	db #30,#02,#38,#3c,#b9,#02,#44,#30
	db #02,#38,#3c,#b0,#02,#38,#30,#02
	db #44,#3c,#b1,#02,#38,#30,#02,#3b
	db #3c,#b0,#02,#47,#30,#02,#3b,#3c
	db #b9,#02,#3b,#30,#02,#47,#3c,#b0
	db #02,#3b,#30,#02,#3b,#3c,#b1,#02
	db #47,#30,#02,#3d,#3c,#b0,#02,#3d
	db #30,#02,#49,#3c,#b9,#02,#3d,#30
	db #02,#3d,#3c,#b0,#02,#49,#30,#02
	db #3d,#3c,#b1,#02,#3d,#30,#02,#49
	db #3c,#b0,#02,#3d,#30,#02,#3d,#3c
	db #b9,#02,#49,#30,#02,#ff,#38,#3c
	db #b0,#02,#44,#30,#02,#38,#3c,#b1
	db #02,#38,#30,#02,#44,#3c,#b0,#02
	db #38,#30,#02,#38,#3c,#b9,#02,#44
	db #30,#02,#38,#3c,#b0,#02,#38,#30
	db #02,#44,#3c,#b1,#02,#38,#30,#02
	db #38,#3c,#b0,#02,#44,#30,#02,#38
	db #3c,#b1,#02,#38,#30,#02,#44,#3c
	db #b0,#02,#38,#30,#02,#38,#3c,#b9
	db #02,#44,#30,#02,#38,#3c,#b0,#02
	db #38,#30,#02,#44,#3c,#b1,#02,#38
	db #30,#02,#38,#3c,#b0,#02,#44,#30
	db #02,#38,#3c,#b9,#02,#38,#30,#02
	db #44,#3c,#b0,#02,#38,#30,#02,#38
	db #3c,#b1,#02,#44,#30,#02,#ff,#53
	db #df,#02,#18,#55,#d0,#08,#57,#d0
	db #20,#ff,#d0,#46,#23,#fe,#01,#d0
	db #40,#d0,#40,#fe,#01,#d0,#40,#d0
	db #40,#fe,#01,#d0,#40,#d0,#40,#d0
	db #40,#fe,#01,#d0,#40,#d0,#40,#d0
	db #40,#fe,#01,#d0,#40,#d0,#40,#fe
	db #01,#d0,#40,#fe,#01,#d0,#40,#d0
	db #40,#fe,#01,#d3,#40,#fe,#01,#d3
	db #40,#d3,#40,#fe,#01,#d3,#40,#fe
	db #01,#d3,#40,#d3,#40,#d3,#40,#fe
	db #01,#d3,#40,#d3,#40,#fe,#01,#d3
	db #40,#fe,#01,#d5,#40,#fe,#01,#d5
	db #40,#d5,#40,#fe,#01,#d5,#40,#d5
	db #40,#fe,#01,#d5,#40,#fe,#01,#d5
	db #40,#d5,#40,#d5,#40,#fe,#01,#d5
	db #40,#fe,#01,#d5,#40,#d5,#40,#fe
	db #01,#d5,#40,#d5,#40,#fe,#01,#d5
	db #40,#fe,#01,#ff,#dc,#d6,#20,#db
	db #d0,#da,#d0,#d9,#d0,#d8,#d0,#d7
	db #d0,#d6,#d0,#d5,#d0,#d4,#d0,#d3
	db #d0,#d2,#d0,#d1,#d0,#50,#d0,#04
	db #50,#76,#25,#08,#50,#76,#24,#08
	db #50,#76,#23,#08,#50,#76,#22,#08
	db #50,#76,#21,#08,#50,#76,#20,#08
	db #ff
;
.music_info
	db "Push - Intro (1995)(Public Domain)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
