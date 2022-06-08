; Music of Kangaroo's Letter Creator version 3.3 - 2 (19xx)(Public Domain)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 21/03/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "KANLCV32.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #7d00

	read "music_header.asm"

	jr l7d04
	jr l7d13
.l7d04
	call l7d37
	ld hl,l7d24
	ld de,l7d1c
	ld bc,l81ff
	jp #bcd7
.l7d13
	ld hl,l7d24
	call #bcdd
	jp l7daf
.l7d1c
	push ix
	call l7dcb
	pop ix
	ret
.l7d24
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l7d37
	jp l7dcb
	jp l7daf
;
.init_music
.l7d37
;
	xor a
	ld hl,l82e2
	call l7da8
	ld hl,l8310
	call l7da8
	ld hl,l833e
	call l7da8
	ld ix,l82de
	ld iy,l8368
	ld de,#002e
	ld b,#03
.l7d57
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
	djnz l7d57
	ld hl,l81f7
	ld (hl),#06
	inc hl
	ld (hl),#20
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l81f3),hl
	ld (l81f5),hl
	ld a,#0c
	ld c,d
	call l81d3
	ld a,#0d
	ld c,d
	jp l81d3
.l7da8
	ld b,#2a
.l7daa
	ld (hl),a
	inc hl
	djnz l7daa
	ret
;
.stop_music
.l7daf
;
	ld a,#07
	ld c,#3f
	call l81d3
	ld a,#08
	ld c,#00
	call l81d3
	ld a,#09
	ld c,#00
	call l81d3
	ld a,#0a
	ld c,#00
	jp l81d3
;
.play_music
.l7dcb
;
	ld hl,l81f9
	dec (hl)
	ld ix,l82de
	ld bc,l82ec
	call l7e6d
	ld ix,l830c
	ld bc,l831a
	call l7e6d
	ld ix,l833a
	ld bc,l8348
	call l7e6d
	ld hl,l81f2
	ld de,l81f9
	ld b,#06
	call l7e4a
	ld b,#07
	call l7e4a
	ld b,#0b
	call l7e4a
	ld b,#0d
	call l7e4a
	ld de,l81f9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l82fd
	call l7e23
	ld hl,l832b
	call l7e23
	ld hl,l8359
.l7e23
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
	jr nz,l7e38
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l7e38
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
.l7e4a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l81d3
.l7e55
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l81d3
.l7e6d
	ld a,(l81f9)
	or a
	jp nz,l7f25
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l7f25
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l7e55
	or a
	jp z,l7f1a
	ld r,a
	and #7f
	cp #10
	jr c,l7ef5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l806d
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
	jr z,l7ece
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l7ece
	rrca
	ld c,a
	ld hl,l836e
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
	jr z,l7eed
	ld (ix+#1e),b
.l7eed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l7f0e
.l7ef5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l81fe
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add c
	add d
	add e
	add h
	add l
	add (hl)
.l7f0e
	ld a,d
	or a
	jr nz,l7f1c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l7f1c
.l7f1a
	ld a,(hl)
	inc hl
.l7f1c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l7f25
	ld a,(ix+#17)
	or a
	jr nz,l7f3b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l7f3b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l7f51
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l7f51
	ld a,(ix+#0d)
	or a
	jr z,l7f5f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l7f7d
.l7f5f
	ld a,(ix+#1a)
	or a
	jp z,l7f84
	ld c,a
	cp #03
	jr nz,l7f6c
	xor a
.l7f6c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l7f7d
	ld a,(ix+#18)
	dec c
	jr z,l7f7d
	ld a,(ix+#19)
.l7f7d
	add (ix+#07)
	ld b,d
	call l806d
.l7f84
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l7fac
	dec (ix+#1b)
	jr nz,l7fac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l7fe4
.l7fac
	ld a,(ix+#29)
	or a
	jr z,l7fe4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l7fdb
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l7fd2
	ld (ix+#29),#ff
	jr l7fdb
.l7fd2
	cp (ix+#2b)
	jr nz,l7fdb
	ld (ix+#29),#01
.l7fdb
	ld b,d
	or a
	jp p,l7fe1
	dec b
.l7fe1
	ld c,a
	jr l7fef
.l7fe4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l7fef
	pop hl
	bit 7,(ix+#14)
	jr z,l7ff8
	ld h,d
	ld l,d
.l7ff8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l81d3
	ld c,h
	ld a,(ix+#02)
	call l81d3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l804b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l803a
	dec (ix+#09)
	jr nz,l803a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l8032
	xor a
	jr l8037
.l8032
	cp #10
	jr nz,l8037
	dec a
.l8037
	ld (ix+#1e),a
.l803a
	ld a,b
	sub (ix+#1e)
	jr nc,l8041
	xor a
.l8041
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l81d3
.l804b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l81fa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l8069
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l8069
	ld (l81fa),hl
	ret
.l806d
	ld hl,l821c
	cp #61
	jr nc,l8077
	add a
	ld c,a
	add hl,bc
.l8077
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l8081
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l81a6
	ld (ix+#1e),a
	jp l7f0e
.l8093
	dec b
.l8094
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l809f
	neg
.l809f
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
	jp l7f0e
.l80b5
	dec b
	jr l80b9
.l80b8
	inc b
.l80b9
	call l81a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l7f0e
.l80c8
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
	jp l818b
.l80d9
	ld a,(hl)
	inc hl
	or a
	jr z,l80fb
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
.l80fb
	ld (ix+#29),a
	jp l7f0e
.l8101
	dec hl
	ld a,(hl)
	and #0f
	ld (l81fd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l81fc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l7f0e
.l811b
	ld a,(hl)
	or a
	jr z,l812c
	call l81a8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l7f0e
.l812c
	ld hl,#0101
	ld (l81f8),hl
	jp l7f0e
.l8135
	call l81a6
	ld (ix+#1e),a
	jp l7f0e
.l813e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l81b7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l81b7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l7f0e
.l8160
	ld a,(hl)
	inc hl
	ld (l81f7),a
	jp l7f0e
.l8168
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
	jp l7f0e
.l8187
	call l81a6
	add a
.l818b
	ld b,#00
	ld c,a
	push hl
	ld hl,l83ee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l7f0e
.l81a6
	ld a,(hl)
	inc hl
.l81a8
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
.l81b7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l836e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l81d3
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
.l81f2
	ret
.l81fa equ $ + 7
.l81f9 equ $ + 6
.l81f8 equ $ + 5
.l81f7 equ $ + 4
.l81f5 equ $ + 2
.l81f3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l81fd equ $ + 2
.l81fc equ $ + 1
	db #38,#00,#00
.l81ff equ $ + 1
.l81fe
	dw l8081,l8094,l8093,l80b8
	dw l80b5,l80c8,l80d9,l8101
	dw l811b,l8101,l8135,l813e
	dw l8160,l8168,l8187
.l821c
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
.l82de equ $ + 2
	dw #000f,#0008
.l82e2 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l82ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l82fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l830c equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l8310
	db #00,#00,#00,#00,#00,#00,#00,#00
.l831a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l832b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l833e equ $ + 6
.l833a equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8348
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8359 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l836e equ $ + 6
.l8368
	db #2e,#86,#5e,#86,#8e,#86,#00,#3d
	db #ff,#3c,#ff,#3c,#00,#00,#0e,#84
	db #4e,#84,#6e,#84,#c0,#00,#00,#3d
	db #00,#3d,#00,#3d,#ff,#ff,#8e,#84
	db #ce,#84,#ee,#84,#1a,#06,#0e,#85
	db #4e,#85,#ee,#84,#40,#00,#ff,#3c
	db #00,#3d,#00,#3d,#ff,#ff,#ff,#3c
	db #80,#bd,#00,#3d,#ff,#ff,#ff,#3c
	db #00,#3d,#00,#3d,#ff,#ff,#ff,#3c
	db #00,#3d,#00,#3d,#ff,#ff,#6e,#85
	db #ae,#85,#ee,#84,#08,#18,#ff,#3c
	db #00,#3d,#00,#3d,#ff,#ff,#ff,#3c
	db #00,#3d,#00,#3d,#ff,#ff,#ff,#3c
	db #00,#3d,#00,#3d,#ff,#ff,#ff,#3c
	db #00,#3d,#00,#3d,#ff,#ff,#ff,#3c
	db #00,#3e,#00,#3d,#ff,#ff,#ff,#3c
.l83ee equ $ + 6
	db #00,#3d,#00,#3d,#ff,#ff,#ce,#85
	db #ee,#85,#0e,#86,#ff,#3c,#ff,#3c
	db #00,#3d,#00,#3d,#ff,#3c,#ff,#3c
	db #ff,#3c,#ff,#3c,#00,#3d,#00,#3d
	db #ff,#3c,#ff,#3c,#00,#3d,#00,#00
	db #65,#01,#3e,#01,#00,#00,#c3,#04
	db #65,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0c,#0b,#0a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#06,#07,#07,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#ff,#ff,#ff,#ff,#00,#00
	db #00,#00,#01,#00,#01,#00,#0f,#0c
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#0d,#0d
	db #0c,#0b,#0a,#0c,#0b,#0a,#09,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#07,#06,#05,#04,#03,#02
	db #02,#02,#02,#02,#02,#02,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0d
	db #0c,#8b,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#00,#00
	db #03,#03,#07,#07,#00,#00,#03,#03
	db #07,#07,#00,#00,#03,#03,#07,#07
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #03,#03,#07,#07,#00,#00,#00,#00
	db #04,#04,#07,#07,#00,#00,#04,#04
	db #07,#07,#00,#00,#04,#04,#07,#07
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #04,#04,#07,#07,#00,#00,#00,#00
	db #05,#05,#09,#09,#00,#00,#05,#05
	db #09,#09,#00,#00,#05,#05,#09,#09
	db #00,#00,#05,#05,#09,#09,#00,#00
	db #05,#05,#09,#09,#00,#00,#00,#be
	db #86,#00,#ca,#86,#00,#f2,#86,#00
	db #14,#87,#00,#24,#87,#00,#34,#87
	db #00,#48,#87,#00,#61,#87,#02,#ca
	db #86,#02,#f2,#86,#02,#14,#87,#02
	db #24,#87,#02,#34,#87,#02,#48,#87
	db #02,#61,#87,#80,#37,#86,#00,#7a
	db #87,#00,#7a,#87,#00,#83,#87,#00
	db #7a,#87,#00,#83,#87,#00,#7a,#87
	db #00,#83,#87,#00,#83,#87,#02,#7a
	db #87,#02,#83,#87,#02,#7a,#87,#02
	db #83,#87,#02,#7a,#87,#02,#83,#87
	db #02,#83,#87,#80,#67,#86,#00,#90
	db #87,#00,#90,#87,#00,#d1,#87,#00
	db #12,#88,#00,#4a,#88,#00,#12,#88
	db #00,#4a,#88,#00,#4a,#88,#02,#90
	db #87,#02,#d1,#87,#02,#12,#88,#02
	db #4a,#88,#02,#12,#88,#02,#4a,#88
	db #02,#4a,#88,#80,#97,#86,#00,#1a
	db #31,#30,#02,#34,#30,#02,#35,#30
	db #02,#ff,#36,#30,#04,#49,#10,#04
	db #38,#30,#02,#36,#30,#02,#49,#10
	db #02,#31,#30,#04,#31,#30,#02,#49
	db #10,#02,#31,#30,#02,#39,#30,#02
	db #38,#30,#02,#49,#10,#02,#34,#30
	db #02,#ff,#32,#30,#04,#47,#10,#04
	db #34,#30,#02,#2f,#30,#02,#47,#10
	db #02,#34,#30,#02,#32,#30,#04,#47
	db #10,#02,#32,#30,#02,#34,#30,#04
	db #47,#10,#04,#ff,#49,#90,#06,#4e
	db #90,#06,#49,#90,#02,#47,#90,#0e
	db #45,#90,#04,#ff,#47,#90,#02,#49
	db #90,#02,#4e,#90,#08,#55,#90,#0a
	db #53,#90,#0a,#ff,#c9,#90,#c8,#90
	db #c9,#90,#cc,#90,#ce,#90,#cc,#90
	db #ce,#90,#d1,#90,#4e,#90,#18,#ff
	db #42,#90,#04,#45,#90,#04,#44,#90
	db #02,#42,#90,#02,#40,#90,#02,#42
	db #90,#06,#45,#90,#04,#47,#90,#08
	db #ff,#42,#90,#04,#45,#90,#04,#44
	db #90,#02,#42,#90,#02,#40,#90,#02
	db #42,#90,#06,#49,#90,#04,#47,#90
	db #08,#ff,#42,#9f,#00,#10,#40,#9f
	db #01,#10,#ff,#39,#9f,#82,#3b,#9f
	db #82,#39,#90,#08,#40,#9f,#81,#ff
	db #c9,#40,#c2,#40,#c9,#40,#c2,#40
	db #ca,#40,#c2,#40,#c7,#40,#c2,#40
	db #c9,#40,#c2,#40,#c9,#40,#c2,#40
	db #c7,#40,#c2,#40,#c5,#40,#c2,#40
	db #c7,#40,#c0,#40,#c7,#40,#c0,#40
	db #c9,#40,#c0,#40,#c5,#40,#c0,#40
	db #c4,#40,#c0,#40,#c4,#40,#c0,#40
	db #c5,#40,#c0,#40,#c4,#40,#c0,#40
	db #ff,#c2,#40,#be,#40,#c2,#40,#be
	db #40,#c5,#40,#be,#40,#c2,#40,#be
	db #40,#c4,#40,#c0,#40,#c4,#40,#c0
	db #40,#c2,#40,#bd,#40,#c0,#40,#bd
	db #40,#c2,#40,#be,#40,#c2,#40,#be
	db #40,#c5,#40,#be,#40,#c2,#40,#be
	db #40,#c4,#40,#c0,#40,#c4,#40,#c0
	db #40,#c2,#40,#bd,#40,#c0,#40,#bd
	db #40,#ff,#36,#30,#02,#c9,#40,#c2
	db #40,#b6,#10,#c2,#40,#c7,#40,#c2
	db #40,#38,#30,#02,#36,#30,#02,#b6
	db #10,#c2,#40,#31,#30,#02,#c7,#40
	db #c0,#40,#31,#30,#02,#b6,#10,#c0
	db #40,#31,#30,#02,#39,#30,#02,#38
	db #30,#02,#b6,#10,#c0,#40,#34,#30
	db #02,#ff,#32,#30,#02,#c2,#40,#be
	db #40,#b5,#10,#be,#40,#c2,#40,#be
	db #40,#34,#30,#02,#2f,#30,#02,#b5
	db #10,#bd,#40,#34,#30,#02,#32,#30
	db #02,#c2,#40,#be,#40,#b5,#10,#be
	db #40,#32,#30,#02,#34,#30,#02,#c4
	db #40,#c0,#40,#b5,#10,#bd,#40,#c0
	db #40,#bd,#40,#ff
;
.music_info
	db "Kangaroo's Letter Creator version 3.3 - 2 (19xx)(Public Domain)(Kangaroo)",0
	db "ST-128 Module - My Boy 3",0

	read "music_end.asm"
