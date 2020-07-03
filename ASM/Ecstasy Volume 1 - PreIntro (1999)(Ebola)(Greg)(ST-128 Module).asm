; Music of Ecstasy Volume 1 - PreIntro (1999)(Ebola)(Greg)(ST-128 Module)
; Ripped by Megachur the 30/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ECSV1PRE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #48db

	read "music_header.asm"

	jp l48e4
	jp l4978
	jp l495c
;
.init_music
.l48e4
;
	xor a
	ld hl,l4e8f
	call l4955
	ld hl,l4ebd
	call l4955
	ld hl,l4eeb
	call l4955
	ld ix,l4e8b
	ld iy,l4f15
	ld de,#002e
	ld b,#03
.l4904
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
	djnz l4904
	ld hl,l4da4
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
	ld (l4da0),hl
	ld (l4da2),hl
	ld a,#0c
	ld c,d
	call l4d80
	ld a,#0d
	ld c,d
	jp l4d80
.l4955
	ld b,#2a
.l4957
	ld (hl),a
	inc hl
	djnz l4957
	ret
;
.stop_music
.l495c
;
	ld a,#07
	ld c,#3f
	call l4d80
	ld a,#08
	ld c,#00
	call l4d80
	ld a,#09
	ld c,#00
	call l4d80
	ld a,#0a
	ld c,#00
	jp l4d80
;
.play_music
.l4978
;
	ld hl,l4da6
	dec (hl)
	ld ix,l4e8b
	ld bc,l4e99
	call l4a1a
	ld ix,l4eb9
	ld bc,l4ec7
	call l4a1a
	ld ix,l4ee7
	ld bc,l4ef5
	call l4a1a
	ld hl,l4d9f
	ld de,l4da6
	ld b,#06
	call l49f7
	ld b,#07
	call l49f7
	ld b,#0b
	call l49f7
	ld b,#0d
	call l49f7
	ld de,l4da6
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l4eaa
	call l49d0
	ld hl,l4ed8
	call l49d0
	ld hl,l4f06
.l49d0
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
	jr nz,l49e5
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l49e5
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
.l49f7
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l4d80
.l4a02
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l4d80
.l4a1a
	ld a,(l4da6)
	or a
	jp nz,l4ad2
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4ad2
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4a02
	or a
	jp z,l4ac7
	ld r,a
	and #7f
	cp #10
	jr c,l4aa2
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l4c1a
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
	jr z,l4a7b
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l4a7b
	rrca
	ld c,a
	ld hl,l4f1b
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
	jr z,l4a9a
	ld (ix+#1e),b
.l4a9a
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l4abb
.l4aa2
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l4dab
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
.l4abb
	ld a,d
	or a
	jr nz,l4ac9
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l4ac9
.l4ac7
	ld a,(hl)
	inc hl
.l4ac9
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4ad2
	ld a,(ix+#17)
	or a
	jr nz,l4ae8
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l4ae8
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4afe
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4afe
	ld a,(ix+#0d)
	or a
	jr z,l4b0c
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l4b2a
.l4b0c
	ld a,(ix+#1a)
	or a
	jp z,l4b31
	ld c,a
	cp #03
	jr nz,l4b19
	xor a
.l4b19
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l4b2a
	ld a,(ix+#18)
	dec c
	jr z,l4b2a
	ld a,(ix+#19)
.l4b2a
	add (ix+#07)
	ld b,d
	call l4c1a
.l4b31
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l4b59
	dec (ix+#1b)
	jr nz,l4b59
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l4b91
.l4b59
	ld a,(ix+#29)
	or a
	jr z,l4b91
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l4b88
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l4b7f
	ld (ix+#29),#ff
	jr l4b88
.l4b7f
	cp (ix+#2b)
	jr nz,l4b88
	ld (ix+#29),#01
.l4b88
	ld b,d
	or a
	jp p,l4b8e
	dec b
.l4b8e
	ld c,a
	jr l4b9c
.l4b91
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4b9c
	pop hl
	bit 7,(ix+#14)
	jr z,l4ba5
	ld h,d
	ld l,d
.l4ba5
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l4d80
	ld c,h
	ld a,(ix+#02)
	call l4d80
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4bf8
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l4be7
	dec (ix+#09)
	jr nz,l4be7
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4bdf
	xor a
	jr l4be4
.l4bdf
	cp #10
	jr nz,l4be4
	dec a
.l4be4
	ld (ix+#1e),a
.l4be7
	ld a,b
	sub (ix+#1e)
	jr nc,l4bee
	xor a
.l4bee
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l4d80
.l4bf8
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l4da7)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l4c16
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l4c16
	ld (l4da7),hl
	ret
.l4c1a
	ld hl,l4dc9
	cp #61
	jr nc,l4c24
	add a
	ld c,a
	add hl,bc
.l4c24
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l4c2e
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l4d53
	ld (ix+#1e),a
	jp l4abb
.l4c40
	dec b
.l4c41
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l4c4c
	neg
.l4c4c
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
	jp l4abb
.l4c62
	dec b
	jr l4c66
.l4c65
	inc b
.l4c66
	call l4d53
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l4abb
.l4c75
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
	jp l4d38
.l4c86
	ld a,(hl)
	inc hl
	or a
	jr z,l4ca8
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
.l4ca8
	ld (ix+#29),a
	jp l4abb
.l4cae
	dec hl
	ld a,(hl)
	and #0f
	ld (l4daa),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l4da9),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l4abb
.l4cc8
	ld a,(hl)
	or a
	jr z,l4cd9
	call l4d55
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l4abb
.l4cd9
	ld hl,#0101
	ld (l4da5),hl
	jp l4abb
.l4ce2
	call l4d53
	ld (ix+#1e),a
	jp l4abb
.l4ceb
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l4d64
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l4d64
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l4abb
.l4d0d
	ld a,(hl)
	inc hl
	ld (l4da4),a
	jp l4abb
.l4d15
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
	jp l4abb
.l4d34
	call l4d53
	add a
.l4d38
	ld b,#00
	ld c,a
	push hl
	ld hl,l4f9b
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l4abb
.l4d53
	ld a,(hl)
	inc hl
.l4d55
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
.l4d64
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l4f1b
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l4d80
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
.l4d9f
	ret
.l4da7 equ $ + 7
.l4da6 equ $ + 6
.l4da5 equ $ + 5
.l4da4 equ $ + 4
.l4da2 equ $ + 2
.l4da0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4daa equ $ + 2
.l4da9 equ $ + 1
	db #38,#00,#00
.l4dab
	dw l4c2e,l4c41,l4c40,l4c65
	dw l4c62,l4c75,l4c86,l4cae
	dw l4cc8,l4cae,l4ce2,l4ceb
	dw l4d0d,l4d15,l4d34
.l4dc9
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
.l4e8f equ $ + 4
.l4e8b
	db #08,#00,#01,#08,#00,#00,#00,#00
.l4e99 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4eaa equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4eb9 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l4ebd equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l4ec7 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ed8 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ee7 equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l4eeb
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ef5 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f06 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f15 equ $ + 2
	db #00,#00,#3b,#52,#53,#52,#6b,#52
.l4f1b
	db #bb,#4f,#fb,#4f,#1b,#50,#80,#00
	db #3b,#50,#7b,#50,#9b,#50,#00,#00
	db #ad,#08,#0d,#51,#4d,#51,#40,#48
	db #bb,#50,#fb,#50,#1b,#51,#14,#0c
	db #ad,#08,#7f,#08,#7f,#08,#d2,#ff
	db #ad,#08,#7f,#08,#7f,#08,#d2,#ff
	db #ad,#08,#7f,#08,#7f,#08,#d2,#ff
	db #ad,#08,#7f,#08,#7f,#08,#d2,#ff
	db #3b,#51,#7b,#51,#1b,#51,#40,#00
	db #c3,#12,#7f,#08,#7f,#08,#d2,#ff
	db #ad,#08,#7f,#08,#7f,#08,#d2,#ff
	db #7f,#08,#7f,#08,#7f,#08,#20,#49
	db #7f,#08,#7f,#08,#ed,#51,#d2,#ff
	db #7f,#08,#7f,#08,#7f,#08,#d2,#ff
	db #9b,#51,#db,#51,#1b,#51,#16,#0a
	db #2d,#0b,#7d,#0b,#cd,#0b,#00,#00
.l4f9b
	db #ad,#08,#ad,#08,#ad,#08,#ad,#08
	db #ad,#08,#ad,#08,#fb,#51,#ad,#08
	db #ad,#08,#1b,#52,#ad,#08,#ad,#08
	db #ad,#08,#ad,#08,#ad,#08,#ad,#08
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#0f,#0f,#0e,#0e,#00,#00
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
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0b
	db #0a,#08,#06,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#01,#01,#02,#01,#01
	db #02,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#02,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#03,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0e,#0e,#0f,#0f,#0f,#0f,#0f
	db #0f,#0e,#0e,#0e,#0e,#0e,#0e,#0e
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
	db #0f,#0f,#0f,#0e,#0d,#0f,#0e,#0d
	db #0c,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0a,#09,#08,#07
	db #06,#05,#05,#05,#05,#05,#05,#05
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#02,#00
	db #03,#00,#04,#00,#03,#00,#02,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0e,#0d
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#83,#52,#00,#a7,#52,#00,#a7
	db #52,#00,#a7,#52,#00,#a7,#52,#00
	db #a7,#52,#00,#a7,#52,#80,#3e,#52
	db #00,#ec,#52,#00,#ec,#52,#00,#96
	db #53,#00,#96,#53,#00,#37,#54,#00
	db #37,#54,#00,#ec,#52,#80,#56,#52
	db #00,#5c,#54,#00,#5c,#54,#00,#1d
	db #55,#00,#1d,#55,#00,#2b,#55,#00
	db #2b,#55,#00,#5c,#54,#80,#6e,#52
	db #00,#20,#40,#00,#04,#40,#00,#04
	db #40,#00,#04,#40,#00,#04,#40,#00
	db #04,#40,#00,#04,#40,#00,#02,#c0
	db #10,#c0,#10,#c0,#10,#c0,#10,#c0
	db #10,#c0,#10,#ff,#40,#00,#04,#40
	db #10,#04,#c0,#00,#40,#00,#03,#40
	db #10,#02,#40,#00,#02,#40,#00,#04
	db #40,#10,#04,#c0,#00,#40,#00,#03
	db #40,#10,#02,#40,#00,#02,#40,#00
	db #04,#40,#10,#04,#c0,#00,#40,#00
	db #03,#40,#10,#02,#40,#00,#02,#40
	db #00,#04,#40,#10,#04,#c0,#00,#40
	db #00,#03,#40,#10,#02,#40,#00,#02
	db #ff,#a8,#ea,#0f,#a8,#e0,#a8,#e0
	db #a8,#e0,#b4,#ea,#0a,#a8,#ea,#0f
	db #b4,#ea,#0a,#a8,#ea,#0f,#b4,#ea
	db #0a,#a8,#ea,#0f,#b4,#ea,#0a,#a8
	db #ea,#0f,#b4,#ea,#0a,#b4,#e0,#a8
	db #ea,#0f,#a8,#e0,#a8,#e0,#a8,#e0
	db #a8,#e0,#a8,#e0,#b4,#ea,#0a,#a8
	db #ea,#0f,#b4,#ea,#0a,#a8,#ea,#0f
	db #b4,#ea,#0a,#a8,#ea,#0f,#b4,#ea
	db #0a,#a8,#ea,#0f,#b4,#ea,#0a,#b4
	db #e0,#a8,#ea,#0f,#a8,#e0,#a8,#e0
	db #a8,#e0,#a8,#e0,#a8,#e0,#b4,#ea
	db #0a,#a8,#ea,#0f,#b4,#ea,#0a,#a8
	db #ea,#0f,#b4,#ea,#0a,#a8,#ea,#0f
	db #b4,#ea,#0a,#a8,#ea,#0f,#b4,#ea
	db #0a,#b4,#e0,#a8,#ea,#0f,#a8,#e0
	db #a8,#e0,#a8,#e0,#a8,#e0,#a8,#e0
	db #b4,#ea,#0a,#a8,#ea,#0f,#b4,#ea
	db #0a,#a8,#ea,#0f,#b4,#ea,#0a,#a8
	db #ea,#0f,#b4,#ea,#0a,#a8,#ea,#0f
	db #b4,#ea,#0a,#b4,#e0,#a8,#ea,#0f
	db #a8,#e0,#ff,#a8,#ea,#0a,#a8,#e0
	db #a8,#e0,#a8,#e0,#b4,#ea,#0f,#a8
	db #ea,#0a,#b4,#ea,#0f,#b4,#e0,#a8
	db #ea,#0a,#a8,#e0,#a8,#e0,#a8,#e0
	db #b4,#ea,#0f,#a8,#ea,#0a,#b4,#ea
	db #0f,#b4,#e0,#af,#ea,#08,#af,#e0
	db #af,#e0,#af,#e0,#bb,#ea,#0a,#af
	db #ea,#08,#bb,#ea,#0a,#bb,#e0,#af
	db #ea,#08,#af,#e0,#af,#e0,#af,#e0
	db #bb,#ea,#0a,#af,#ea,#08,#bb,#ea
	db #0a,#bb,#e0,#b2,#ea,#0b,#b2,#e0
	db #b2,#e0,#b2,#e0,#be,#ea,#11,#b2
	db #ea,#0b,#be,#ea,#11,#be,#e0,#b2
	db #ea,#0b,#b2,#e0,#b2,#e0,#b2,#e0
	db #be,#ea,#11,#b2,#ea,#0b,#be,#ea
	db #11,#be,#e0,#ad,#ea,#0f,#ad,#e0
	db #ad,#e0,#ad,#e0,#b9,#ea,#0b,#ad
	db #ea,#0f,#b9,#ea,#0b,#b9,#e0,#ad
	db #ea,#0f,#ad,#e0,#ad,#e0,#ad,#e0
	db #b9,#ea,#0b,#ad,#ea,#0f,#b9,#ea
	db #0b,#b9,#e0,#ff,#4c,#3f,#a6,#4c
	db #30,#02,#53,#30,#02,#58,#30,#02
	db #56,#30,#0e,#55,#30,#02,#56,#30
	db #0c,#51,#33,#11,#0e,#51,#31,#10
	db #d1,#30,#4f,#30,#02,#4e,#30,#02
	db #ff,#cc,#86,#93,#cc,#86,#93,#06
	db #93,#01,#cc,#86,#93,#cc,#86,#93
	db #06,#93,#01,#cc,#86,#93,#06,#93
	db #01,#cc,#86,#93,#06,#93,#01,#cc
	db #86,#93,#cc,#86,#93,#06,#93,#01
	db #cc,#86,#93,#cc,#86,#93,#06,#93
	db #01,#cc,#86,#93,#06,#93,#01,#cc
	db #86,#93,#cc,#86,#93,#06,#93,#01
	db #cc,#86,#93,#06,#93,#01,#cc,#86
	db #93,#06,#93,#01,#cc,#86,#93,#cc
	db #86,#93,#06,#93,#01,#cc,#86,#93
	db #06,#93,#01,#cc,#86,#93,#06,#93
	db #01,#cc,#86,#93,#cc,#86,#93,#06
	db #93,#01,#cc,#86,#93,#06,#93,#01
	db #cc,#86,#93,#06,#93,#01,#cc,#86
	db #93,#06,#93,#01,#cc,#86,#93,#cc
	db #86,#93,#06,#93,#01,#cc,#86,#93
	db #cc,#86,#93,#06,#93,#01,#cc,#86
	db #93,#06,#93,#01,#cc,#86,#93,#cc
	db #86,#93,#06,#93,#01,#cc,#86,#93
	db #cc,#86,#93,#06,#93,#01,#cc,#86
	db #93,#06,#93,#01,#cc,#86,#93,#cc
	db #86,#93,#06,#93,#01,#cc,#86,#93
	db #cc,#86,#93,#cc,#86,#93,#06,#93
	db #01,#ff,#40,#3f,#09,#10,#47,#30
	db #10,#4a,#30,#10,#45,#30,#10,#ff
	db #40,#8f,#19,#c0,#80,#c0,#80,#c0
	db #80,#cc,#80,#c0,#80,#cc,#80,#cc
	db #80,#c0,#80,#c0,#80,#c0,#80,#c0
	db #80,#cc,#80,#c0,#80,#cc,#80,#cc
	db #80,#c0,#80,#c0,#80,#c0,#80,#c0
	db #80,#cc,#80,#c0,#80,#cc,#80,#cc
	db #80,#c0,#80,#c0,#80,#c0,#80,#c0
	db #80,#cc,#80,#c0,#80,#cc,#80,#cc
	db #80,#be,#80,#be,#80,#be,#80,#be
	db #80,#ca,#80,#be,#80,#ca,#80,#ca
	db #80,#be,#80,#be,#80,#be,#80,#be
	db #80,#ca,#80,#be,#80,#ca,#80,#ca
	db #80,#b9,#80,#b9,#80,#b9,#80,#b9
	db #80,#c5,#80,#b9,#80,#c5,#80,#c5
	db #80,#b9,#80,#b9,#80,#b9,#80,#b9
	db #80,#c5,#80,#b9,#80,#c5,#80,#c5
	db #80,#ff
;
.music_info
	db "Ecstasy Volume 1 - PreIntro (1999)(Ebola)(Greg)",0
	db "ST-128 Module",0

	read "music_end.asm"
