; Music of Greek Meeting 2 - Intro (1995)(Chaos)(Catloc)(ST-128 Module)
; Ripped by Megachur the 02/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GREEM2IN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #1bf0

	read "music_header.asm"

	jp l1bf9
	jp l1c8d
	jp l1c71
;
.init_music
.l1bf9
;
	xor a
	ld hl,l21a4
	call l1c6a
	ld hl,l21d2
	call l1c6a
	ld hl,l2200
	call l1c6a
	ld ix,l21a0
	ld iy,l222a
	ld de,#002e
	ld b,#03
.l1c19
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
	djnz l1c19
	ld hl,l20b9
	ld (hl),#05
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l20b5),hl
	ld (l20b7),hl
	ld a,#0c
	ld c,d
	call l2095
	ld a,#0d
	ld c,d
	jp l2095
.l1c6a
	ld b,#2a
.l1c6c
	ld (hl),a
	inc hl
	djnz l1c6c
	ret
;
.stop_music
.l1c71
;
	ld a,#07
	ld c,#3f
	call l2095
	ld a,#08
	ld c,#00
	call l2095
	ld a,#09
	ld c,#00
	call l2095
	ld a,#0a
	ld c,#00
	jp l2095
;
.play_music
.l1c8d
;
	ld hl,l20bb
	dec (hl)
	ld ix,l21a0
	ld bc,l21ae
	call l1d2f
	ld ix,l21ce
	ld bc,l21dc
	call l1d2f
	ld ix,l21fc
	ld bc,l220a
	call l1d2f
	ld hl,l20b4
	ld de,l20bb
	ld b,#06
	call l1d0c
	ld b,#07
	call l1d0c
	ld b,#0b
	call l1d0c
	ld b,#0d
	call l1d0c
	ld de,l20bb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l21bf
	call l1ce5
	ld hl,l21ed
	call l1ce5
	ld hl,l221b
.l1ce5
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
	jr nz,l1cfa
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l1cfa
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
.l1d0c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l2095
.l1d17
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l2095
.l1d2f
	ld a,(l20bb)
	or a
	jp nz,l1de7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l1de7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l1d17
	or a
	jp z,l1ddc
	ld r,a
	and #7f
	cp #10
	jr c,l1db7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l1f2f
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
	jr z,l1d90
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l1d90
	rrca
	ld c,a
	ld hl,l2230
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
	jr z,l1daf
	ld (ix+#1e),b
.l1daf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l1dd0
.l1db7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l20c0
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
.l1dd0
	ld a,d
	or a
	jr nz,l1dde
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l1dde
.l1ddc
	ld a,(hl)
	inc hl
.l1dde
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l1de7
	ld a,(ix+#17)
	or a
	jr nz,l1dfd
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l1dfd
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l1e13
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l1e13
	ld a,(ix+#0d)
	or a
	jr z,l1e21
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l1e3f
.l1e21
	ld a,(ix+#1a)
	or a
	jp z,l1e46
	ld c,a
	cp #03
	jr nz,l1e2e
	xor a
.l1e2e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l1e3f
	ld a,(ix+#18)
	dec c
	jr z,l1e3f
	ld a,(ix+#19)
.l1e3f
	add (ix+#07)
	ld b,d
	call l1f2f
.l1e46
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l1e6e
	dec (ix+#1b)
	jr nz,l1e6e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l1ea6
.l1e6e
	ld a,(ix+#29)
	or a
	jr z,l1ea6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l1e9d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l1e94
	ld (ix+#29),#ff
	jr l1e9d
.l1e94
	cp (ix+#2b)
	jr nz,l1e9d
	ld (ix+#29),#01
.l1e9d
	ld b,d
	or a
	jp p,l1ea3
	dec b
.l1ea3
	ld c,a
	jr l1eb1
.l1ea6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l1eb1
	pop hl
	bit 7,(ix+#14)
	jr z,l1eba
	ld h,d
	ld l,d
.l1eba
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l2095
	ld c,h
	ld a,(ix+#02)
	call l2095
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l1f0d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l1efc
	dec (ix+#09)
	jr nz,l1efc
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l1ef4
	xor a
	jr l1ef9
.l1ef4
	cp #10
	jr nz,l1ef9
	dec a
.l1ef9
	ld (ix+#1e),a
.l1efc
	ld a,b
	sub (ix+#1e)
	jr nc,l1f03
	xor a
.l1f03
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l2095
.l1f0d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l20bc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l1f2b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l1f2b
	ld (l20bc),hl
	ret
.l1f2f
	ld hl,l20de
	cp #61
	jr nc,l1f39
	add a
	ld c,a
	add hl,bc
.l1f39
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l1f43
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l2068
	ld (ix+#1e),a
	jp l1dd0
.l1f55
	dec b
.l1f56
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l1f61
	neg
.l1f61
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
	jp l1dd0
.l1f77
	dec b
	jr l1f7b
.l1f7a
	inc b
.l1f7b
	call l2068
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l1dd0
.l1f8a
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
	jp l204d
.l1f9b
	ld a,(hl)
	inc hl
	or a
	jr z,l1fbd
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
.l1fbd
	ld (ix+#29),a
	jp l1dd0
.l1fc3
	dec hl
	ld a,(hl)
	and #0f
	ld (l20bf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l20be),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l1dd0
.l1fdd
	ld a,(hl)
	or a
	jr z,l1fee
	call l206a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l1dd0
.l1fee
	ld hl,#0101
	ld (l20ba),hl
	jp l1dd0
.l1ff7
	call l2068
	ld (ix+#1e),a
	jp l1dd0
.l2000
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l2079
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l2079
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l1dd0
.l2022
	ld a,(hl)
	inc hl
	ld (l20b9),a
	jp l1dd0
.l202a
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
	jp l1dd0
.l2049
	call l2068
	add a
.l204d
	ld b,#00
	ld c,a
	push hl
	ld hl,l22b0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l1dd0
.l2068
	ld a,(hl)
	inc hl
.l206a
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
.l2079
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l2230
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l2095
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
.l20b4
	ret
.l20bc equ $ + 7
.l20bb equ $ + 6
.l20ba equ $ + 5
.l20b9 equ $ + 4
.l20b7 equ $ + 2
.l20b5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l20bf equ $ + 2
.l20be equ $ + 1
	db #38,#00,#00
.l20c0
	dw l1f43,l1f56,l1f55,l1f7a
	dw l1f77,l1f8a,l1f9b,l1fc3
	dw l1fdd,l1fc3,l1ff7,l2000
	dw l2022,l202a,l2049
.l20de
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
.l21a4 equ $ + 4
.l21a0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l21ae equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l21bf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l21ce equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l21d2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l21dc equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l21ed equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l21fc equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l2200
	db #00,#00,#00,#00,#00,#00,#00,#00
.l220a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l221b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l222a equ $ + 2
	db #00,#00,#d0,#24,#df,#24,#ee,#24
.l2230
	db #c2,#db,#c2,#db,#c2,#db,#00,#00
	db #c2,#db,#c2,#db,#c2,#db,#00,#00
	db #d0,#22,#10,#23,#30,#23,#00,#00
	db #50,#23,#90,#23,#b0,#23,#80,#00
	db #d0,#23,#10,#24,#30,#23,#08,#18
	db #c2,#db,#c2,#db,#c2,#db,#00,#00
	db #30,#24,#70,#24,#90,#24,#9a,#06
	db #c2,#db,#c2,#db,#c2,#db,#00,#00
	db #c2,#db,#c2,#db,#c2,#db,#00,#00
	db #d0,#22,#b0,#24,#30,#23,#00,#00
	db #c2,#db,#c2,#db,#c2,#db,#00,#00
	db #c2,#db,#c2,#db,#c2,#db,#00,#00
	db #c2,#db,#c2,#db,#c2,#db,#00,#00
	db #c2,#db,#c2,#db,#c2,#db,#00,#00
	db #c2,#db,#c2,#db,#c2,#db,#00,#00
	db #c2,#db,#c2,#db,#c2,#db,#00,#00
.l22b0
	db #c2,#db,#c2,#db,#c2,#db,#c2,#db
	db #c2,#db,#c2,#db,#c2,#db,#c2,#db
	db #c2,#db,#c2,#db,#c2,#db,#c2,#db
	db #c2,#db,#c2,#db,#c2,#db,#c2,#db
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
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#0b,#0b,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #30,#00,#30,#00,#30,#00,#30,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#fd,#24,#00,#41,#25,#00,#48
	db #25,#00,#1e,#25,#80,#d0,#24,#00
	db #4f,#25,#00,#11,#26,#00,#72,#26
	db #00,#b0,#25,#80,#df,#24,#00,#d3
	db #26,#00,#91,#27,#00,#91,#27,#00
	db #30,#27,#80,#ee,#24,#34,#4b,#4f
	db #0b,#4e,#0b,#4d,#0b,#4c,#0b,#4b
	db #0b,#4a,#0b,#49,#0b,#48,#31,#4b
	db #47,#0b,#46,#0b,#45,#0b,#44,#0b
	db #43,#0b,#82,#0b,#40,#ff,#2f,#4b
	db #40,#0b,#40,#0b,#41,#0b,#42,#0b
	db #43,#0b,#44,#0b,#45,#0b,#46,#31
	db #4b,#47,#0b,#48,#0b,#49,#0b,#4a
	db #0b,#4b,#0b,#4c,#0b,#4d,#0b,#4e
	db #ff,#2f,#40,#20,#31,#40,#20,#ff
	db #34,#40,#20,#31,#40,#20,#ff,#40
	db #9b,#2f,#43,#90,#02,#42,#9b,#2e
	db #43,#90,#02,#40,#9b,#2d,#43,#90
	db #02,#42,#9b,#2c,#43,#90,#02,#40
	db #9b,#2b,#43,#90,#02,#42,#9b,#2a
	db #43,#90,#02,#40,#9b,#29,#43,#90
	db #02,#42,#9b,#28,#43,#90,#02,#3d
	db #9b,#27,#40,#90,#02,#3f,#9b,#26
	db #40,#90,#02,#3d,#9b,#25,#40,#90
	db #02,#3f,#9b,#24,#40,#90,#02,#3d
	db #9b,#23,#40,#90,#02,#3f,#9b,#22
	db #40,#90,#02,#3d,#9b,#21,#40,#90
	db #02,#3f,#9b,#20,#40,#90,#02,#ff
	db #3b,#9b,#20,#3e,#90,#02,#3d,#9b
	db #20,#3e,#90,#02,#3b,#9b,#21,#3e
	db #90,#02,#3d,#9b,#22,#3e,#90,#02
	db #3b,#9b,#23,#3e,#90,#02,#3d,#9b
	db #24,#3e,#90,#02,#3b,#9b,#25,#3e
	db #90,#02,#3d,#9b,#26,#3e,#90,#02
	db #3d,#9b,#27,#40,#90,#02,#3f,#9b
	db #28,#40,#90,#02,#3d,#9b,#29,#40
	db #90,#02,#3f,#9b,#2a,#40,#90,#02
	db #3d,#9b,#2b,#40,#90,#02,#3f,#9b
	db #2c,#40,#90,#02,#3d,#9b,#2d,#40
	db #90,#02,#3f,#9b,#2e,#40,#90,#02
	db #ff,#3b,#90,#02,#3e,#90,#02,#3d
	db #90,#02,#3e,#90,#02,#3b,#90,#02
	db #3e,#90,#02,#3d,#90,#02,#3e,#90
	db #02,#3b,#90,#02,#3e,#90,#02,#3d
	db #90,#02,#3e,#90,#02,#3b,#90,#02
	db #3e,#90,#02,#3d,#90,#02,#3e,#90
	db #02,#3d,#90,#02,#40,#90,#02,#3f
	db #90,#02,#40,#90,#02,#3d,#90,#02
	db #40,#90,#02,#3f,#90,#02,#40,#90
	db #02,#3d,#90,#02,#40,#90,#02,#3f
	db #90,#02,#40,#90,#02,#3d,#90,#02
	db #40,#90,#02,#3f,#90,#02,#40,#90
	db #02,#ff,#40,#90,#02,#43,#90,#02
	db #42,#90,#02,#43,#90,#02,#40,#90
	db #02,#43,#90,#02,#42,#90,#02,#43
	db #90,#02,#40,#90,#02,#43,#90,#02
	db #42,#90,#02,#43,#90,#02,#40,#90
	db #02,#43,#90,#02,#42,#90,#02,#43
	db #90,#02,#3d,#90,#02,#40,#90,#02
	db #3f,#90,#02,#40,#90,#02,#3d,#90
	db #02,#40,#90,#02,#3f,#90,#02,#40
	db #90,#02,#3d,#90,#02,#40,#90,#02
	db #3f,#90,#02,#40,#90,#02,#3d,#90
	db #02,#40,#90,#02,#3f,#90,#02,#40
	db #90,#02,#ff,#00,#04,#34,#3b,#2e
	db #34,#6b,#2e,#34,#3b,#2d,#34,#6b
	db #2d,#34,#3b,#2c,#34,#6b,#2c,#34
	db #3b,#2b,#34,#6b,#2b,#34,#3b,#2a
	db #34,#6b,#2a,#34,#3b,#29,#34,#6b
	db #29,#34,#3b,#28,#34,#6b,#28,#34
	db #3b,#27,#34,#6b,#27,#34,#3b,#26
	db #34,#6b,#26,#34,#3b,#25,#34,#6b
	db #25,#34,#3b,#24,#34,#6b,#24,#34
	db #3b,#23,#34,#6b,#23,#34,#3b,#22
	db #34,#6b,#22,#34,#3b,#21,#34,#6b
	db #21,#34,#3b,#20,#34,#6b,#20,#ff
	db #34,#3b,#20,#34,#6b,#20,#34,#3b
	db #20,#34,#6b,#20,#34,#3b,#21,#34
	db #6b,#21,#34,#3b,#22,#34,#6b,#22
	db #34,#3b,#23,#34,#6b,#23,#34,#3b
	db #24,#34,#6b,#24,#34,#3b,#25,#34
	db #6b,#25,#34,#3b,#26,#34,#6b,#26
	db #34,#3b,#27,#34,#6b,#27,#34,#3b
	db #28,#34,#6b,#28,#34,#3b,#29,#34
	db #6b,#29,#34,#3b,#2a,#34,#6b,#2a
	db #34,#3b,#2b,#34,#6b,#2b,#34,#3b
	db #2c,#34,#6b,#2c,#34,#3b,#2d,#34
	db #6b,#2d,#34,#3b,#2e,#34,#6b,#2e
	db #ff,#34,#30,#02,#34,#6c,#62,#02
	db #34,#30,#02,#34,#60,#02,#34,#30
	db #02,#34,#6c,#62,#02,#34,#30,#02
	db #34,#60,#02,#34,#30,#02,#34,#6c
	db #62,#02,#34,#30,#02,#34,#60,#02
	db #34,#30,#02,#34,#6c,#62,#02,#34
	db #30,#02,#34,#60,#02,#34,#30,#02
	db #34,#6c,#62,#02,#34,#30,#02,#34
	db #60,#02,#34,#30,#02,#34,#6c,#62
	db #02,#34,#30,#02,#34,#60,#02,#34
	db #30,#02,#34,#6c,#62,#02,#34,#30
	db #02,#34,#60,#02,#34,#30,#02,#34
	db #6c,#62,#02,#34,#30,#02,#34,#60
	db #02,#ff,#cd,#3b,#00,#3b,#3b,#e1
	db #11,#3e,#00,#19,#11,#00,#c0,#eb
	db #01,#19,#00,#18,#1d,#05,#f8,#3e
	db #e5,#04,#d5,#77,#11,#00,#08,#19
	db #30,#0d,#11,#50,#c0,#19,#0d,#20
	db #06,#0e,#19,#11,#31,#f8,#19,#10
	db #ea,#d1,#1a,#13,#fe,#e5,#20,#e1
	db #1a,#13,#47,#fe,#04,#38,#d6,#1a
	db #13,#18,#d7,#e5,#ff,#00,#e5,#ff
	db #00,#e5,#ff,#00,#e5,#ff,#00,#e5
	db #ff,#00,#e5,#ff,#00,#e5,#ff
;
.music_info
	db "Greek Meeting 2 - Intro (1995)(Chaos)(Catloc)",0
	db "ST-128 Module",0

	read "music_end.asm"
