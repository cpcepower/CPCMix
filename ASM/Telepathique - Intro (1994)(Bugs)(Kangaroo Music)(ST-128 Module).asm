; Music of Telepathique - Intro (1994)(Bugs)(Kangaroo Music)(ST-128 Module)
; Ripped by Megachur the 17/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TELEPATI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #a000

	read "music_header.asm"

	jp la009
	jp la09d
	jp la081
;
.init_music
.la009
;
	xor a
	ld hl,la5b4
	call la07a
	ld hl,la5e2
	call la07a
	ld hl,la610
	call la07a
	ld ix,la5b0
	ld iy,la63a
	ld de,#002e
	ld b,#03
.la029
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
	djnz la029
	ld hl,la4c9
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
	ld (la4c5),hl
	ld (la4c7),hl
	ld a,#0c
	ld c,d
	call la4a5
	ld a,#0d
	ld c,d
	jp la4a5
.la07a
	ld b,#2a
.la07c
	ld (hl),a
	inc hl
	djnz la07c
	ret
;
.stop_music
.la081
;
	ld a,#07
	ld c,#3f
	call la4a5
	ld a,#08
	ld c,#00
	call la4a5
	ld a,#09
	ld c,#00
	call la4a5
	ld a,#0a
	ld c,#00
	jp la4a5
;
.play_music
.la09d
;
	ld hl,la4cb
	dec (hl)
	ld ix,la5b0
	ld bc,la5be
	call la13f
	ld ix,la5de
	ld bc,la5ec
	call la13f
	ld ix,la60c
	ld bc,la61a
	call la13f
	ld hl,la4c4
	ld de,la4cb
	ld b,#06
	call la11c
	ld b,#07
	call la11c
	ld b,#0b
	call la11c
	ld b,#0d
	call la11c
	ld de,la4cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,la5cf
	call la0f5
	ld hl,la5fd
	call la0f5
	ld hl,la62b
.la0f5
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
	jr nz,la10a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.la10a
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
.la11c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp la4a5
.la127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp la4a5
.la13f
	ld a,(la4cb)
	or a
	jp nz,la1f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,la1f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,la127
	or a
	jp z,la1ec
	ld r,a
	and #7f
	cp #10
	jr c,la1c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call la33f
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
	jr z,la1a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.la1a0
	rrca
	ld c,a
	ld hl,la640
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
	jr z,la1bf
	ld (ix+#1e),b
.la1bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,la1e0
.la1c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,la4d0
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
.la1e0
	ld a,d
	or a
	jr nz,la1ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,la1ee
.la1ec
	ld a,(hl)
	inc hl
.la1ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.la1f7
	ld a,(ix+#17)
	or a
	jr nz,la20d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.la20d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,la223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.la223
	ld a,(ix+#0d)
	or a
	jr z,la231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr la24f
.la231
	ld a,(ix+#1a)
	or a
	jp z,la256
	ld c,a
	cp #03
	jr nz,la23e
	xor a
.la23e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,la24f
	ld a,(ix+#18)
	dec c
	jr z,la24f
	ld a,(ix+#19)
.la24f
	add (ix+#07)
	ld b,d
	call la33f
.la256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,la27e
	dec (ix+#1b)
	jr nz,la27e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr la2b6
.la27e
	ld a,(ix+#29)
	or a
	jr z,la2b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,la2ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,la2a4
	ld (ix+#29),#ff
	jr la2ad
.la2a4
	cp (ix+#2b)
	jr nz,la2ad
	ld (ix+#29),#01
.la2ad
	ld b,d
	or a
	jp p,la2b3
	dec b
.la2b3
	ld c,a
	jr la2c1
.la2b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.la2c1
	pop hl
	bit 7,(ix+#14)
	jr z,la2ca
	ld h,d
	ld l,d
.la2ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call la4a5
	ld c,h
	ld a,(ix+#02)
	call la4a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,la31d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,la30c
	dec (ix+#09)
	jr nz,la30c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,la304
	xor a
	jr la309
.la304
	cp #10
	jr nz,la309
	dec a
.la309
	ld (ix+#1e),a
.la30c
	ld a,b
	sub (ix+#1e)
	jr nc,la313
	xor a
.la313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call la4a5
.la31d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(la4cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,la33b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.la33b
	ld (la4cc),hl
	ret
.la33f
	ld hl,la4ee
	cp #61
	jr nc,la349
	add a
	ld c,a
	add hl,bc
.la349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.la353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call la478
	ld (ix+#1e),a
	jp la1e0
.la365
	dec b
.la366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,la371
	neg
.la371
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
	jp la1e0
.la387
	dec b
	jr la38b
.la38a
	inc b
.la38b
	call la478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp la1e0
.la39a
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
	jp la45d
.la3ab
	ld a,(hl)
	inc hl
	or a
	jr z,la3cd
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
.la3cd
	ld (ix+#29),a
	jp la1e0
.la3d3
	dec hl
	ld a,(hl)
	and #0f
	ld (la4cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (la4ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp la1e0
.la3ed
	ld a,(hl)
	or a
	jr z,la3fe
	call la47a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp la1e0
.la3fe
	ld hl,#0101
	ld (la4ca),hl
	jp la1e0
.la407
	call la478
	ld (ix+#1e),a
	jp la1e0
.la410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call la489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call la489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp la1e0
.la432
	ld a,(hl)
	inc hl
	ld (la4c9),a
	jp la1e0
.la43a
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
	jp la1e0
.la459
	call la478
	add a
.la45d
	ld b,#00
	ld c,a
	push hl
	ld hl,la6c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp la1e0
.la478
	ld a,(hl)
	inc hl
.la47a
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
.la489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,la640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.la4a5
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
.la4c4
	ret
.la4cc equ $ + 7
.la4cb equ $ + 6
.la4ca equ $ + 5
.la4c9 equ $ + 4
.la4c7 equ $ + 2
.la4c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.la4cf equ $ + 2
.la4ce equ $ + 1
	db #38,#00,#00
.la4d0
	dw la353,la366,la365,la38a
	dw la387,la39a,la3ab,la3d3
	dw la3ed,la3d3,la407,la410
	dw la432,la43a,la459
.la4ee
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
.la5b0 equ $ + 2
	dw #000f,#0008
.la5b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.la5be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la5cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la5de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.la5e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.la5ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la5fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la610 equ $ + 6
.la60c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la61a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la62b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la640 equ $ + 6
.la63a
	db #60,#a9,#8d,#a9,#ba,#a9,#e0,#a6
	db #20,#a7,#40,#a7,#00,#00,#e0,#a6
	db #20,#a7,#60,#a7,#00,#00,#e0,#a6
	db #80,#a7,#40,#a7,#1a,#06,#d2,#5f
	db #a4,#bf,#a4,#bf,#d2,#5f,#a0,#a7
	db #e0,#a7,#00,#a8,#00,#00,#20,#a8
	db #60,#a8,#80,#a8,#16,#0a,#d2,#5f
	db #a4,#bf,#a4,#bf,#d2,#5f,#d2,#5f
	db #a4,#bf,#a4,#bf,#d2,#5f,#d2,#5f
	db #a4,#bf,#a4,#bf,#d2,#5f,#d2,#5f
	db #a4,#bf,#a4,#bf,#d2,#5f,#a0,#a8
	db #e0,#a8,#40,#a7,#16,#0a,#a4,#bf
	db #a4,#bf,#a4,#bf,#d2,#5f,#12,#09
	db #a4,#bf,#a4,#bf,#d2,#5f,#a4,#bf
	db #a4,#bf,#a4,#bf,#d2,#5f,#a4,#bf
	db #d2,#5f,#d2,#5f,#00,#00,#d2,#5f
.la6c0 equ $ + 6
	db #d2,#5f,#d2,#5f,#00,#00,#d2,#5f
	db #00,#a9,#20,#a9,#d2,#5f,#d2,#5f
	db #d2,#5f,#d2,#5f,#40,#a9,#d2,#5f
	db #d2,#5f,#d2,#5f,#d2,#5f,#d2,#5f
	db #d2,#5f,#d2,#5f,#d2,#5f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0d
	db #0d,#0d,#0e,#0e,#0e,#0e,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0e,#0d,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#00,#00
	db #20,#00,#40,#00,#60,#00,#a0,#00
	db #e0,#00,#00,#00,#20,#00,#40,#00
	db #60,#00,#a0,#00,#e0,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#80,#00
	db #a0,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#06,#05,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #06,#08,#0b,#10,#02,#00,#06,#08
	db #0b,#10,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0b,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#03,#00,#02,#00
	db #01,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#02,#00,#03,#00
	db #04,#00,#03,#00,#02,#00,#0f,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#fd,#fd
	db #f9,#f9,#00,#00,#fd,#fd,#f9,#f9
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#00,#00
	db #03,#03,#07,#07,#00,#00,#03,#03
	db #07,#07,#00,#00,#03,#03,#07,#07
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #03,#03,#07,#07,#00,#00,#00,#e7
	db #a9,#00,#e7,#a9,#00,#03,#aa,#00
	db #38,#aa,#00,#6d,#aa,#00,#a2,#aa
	db #00,#d7,#aa,#00,#dc,#aa,#00,#e1
	db #aa,#00,#00,#ab,#00,#d7,#aa,#00
	db #dc,#aa,#00,#e1,#aa,#00,#00,#ab
	db #80,#66,#a9,#00,#1f,#ab,#00,#1f
	db #ab,#00,#6e,#ab,#00,#7f,#ab,#00
	db #9a,#ab,#00,#a1,#ab,#00,#ae,#ab
	db #00,#ca,#ab,#00,#d9,#ab,#00,#e3
	db #ab,#00,#ae,#ab,#00,#ca,#ab,#00
	db #d9,#ab,#00,#e3,#ab,#80,#93,#a9
	db #00,#e6,#ab,#00,#e6,#ab,#00,#e6
	db #ab,#00,#1b,#ac,#00,#50,#ac,#00
	db #85,#ac,#00,#ba,#ac,#00,#f3,#ac
	db #00,#2c,#ad,#00,#65,#ad,#00,#ba
	db #ac,#00,#f3,#ac,#00,#2c,#ad,#00
	db #65,#ad,#80,#c0,#a9,#42,#a0,#18
	db #02,#12,#01,#02,#12,#01,#02,#12
	db #01,#02,#12,#01,#02,#12,#01,#02
	db #12,#01,#02,#12,#01,#02,#12,#01
	db #ff,#4e,#0f,#21,#ce,#00,#4e,#00
	db #02,#ce,#00,#4e,#00,#02,#4e,#00
	db #02,#ce,#00,#4e,#00,#02,#ce,#00
	db #4e,#00,#02,#4e,#00,#02,#ce,#00
	db #4e,#00,#02,#ce,#00,#4e,#00,#02
	db #4e,#00,#02,#ce,#00,#4e,#00,#02
	db #ce,#00,#4e,#00,#02,#ff,#4a,#0f
	db #21,#ca,#00,#4a,#00,#02,#ca,#00
	db #4a,#00,#02,#4a,#00,#02,#ca,#00
	db #4a,#00,#02,#ca,#00,#4a,#00,#02
	db #4a,#00,#02,#ca,#00,#4a,#00,#02
	db #ca,#00,#4a,#00,#02,#4a,#00,#02
	db #ca,#00,#4a,#00,#02,#ca,#00,#4a
	db #00,#02,#ff,#47,#0f,#21,#c7,#00
	db #47,#00,#02,#c7,#00,#47,#00,#02
	db #47,#00,#02,#c7,#00,#47,#00,#02
	db #c7,#00,#47,#00,#02,#47,#00,#02
	db #c7,#00,#47,#00,#02,#c7,#00,#47
	db #00,#02,#47,#00,#02,#c7,#00,#47
	db #00,#02,#c7,#00,#47,#00,#02,#ff
	db #49,#0f,#21,#c9,#00,#49,#00,#02
	db #c9,#00,#49,#00,#02,#49,#00,#02
	db #c9,#00,#49,#00,#02,#c9,#00,#49
	db #00,#02,#49,#00,#02,#c9,#00,#49
	db #00,#02,#c9,#00,#49,#00,#02,#49
	db #00,#02,#c9,#00,#49,#00,#02,#c9
	db #00,#49,#00,#02,#ff,#49,#2f,#02
	db #20,#ff,#4a,#2f,#01,#20,#ff,#47
	db #1f,#47,#47,#10,#03,#47,#10,#03
	db #47,#10,#03,#47,#10,#03,#47,#10
	db #04,#47,#10,#03,#47,#10,#03,#47
	db #10,#03,#47,#10,#03,#ff,#4c,#1f
	db #41,#4c,#10,#03,#4c,#10,#03,#4c
	db #10,#03,#4c,#10,#03,#4c,#10,#04
	db #4c,#10,#03,#4c,#10,#03,#4c,#10
	db #03,#4c,#10,#03,#ff,#42,#0b,#10
	db #49,#0b,#13,#42,#0b,#15,#42,#0b
	db #13,#42,#0b,#20,#42,#0b,#15,#42
	db #0b,#13,#42,#0b,#20,#42,#0b,#15
	db #42,#0b,#13,#42,#0b,#20,#49,#0b
	db #10,#42,#0b,#13,#42,#0b,#10,#49
	db #0b,#13,#42,#0b,#15,#42,#0b,#13
	db #42,#0b,#20,#42,#0b,#15,#42,#0b
	db #13,#42,#0b,#20,#42,#0b,#15,#42
	db #0b,#13,#42,#0b,#20,#49,#0b,#10
	db #42,#0b,#13,#ff,#46,#a0,#10,#47
	db #a0,#06,#49,#a0,#06,#46,#a2,#10
	db #03,#02,#11,#01,#ff,#45,#a0,#0c
	db #42,#a0,#04,#45,#a0,#04,#42,#a0
	db #04,#c9,#a0,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#47,#a0,#04,#ff
	db #42,#a0,#1f,#03,#12,#01,#ff,#44
	db #a0,#14,#45,#a0,#04,#47,#a0,#04
	db #4a,#a0,#04,#ff,#49,#00,#04,#47
	db #00,#02,#45,#00,#04,#49,#00,#0c
	db #42,#00,#02,#49,#00,#02,#49,#00
	db #02,#47,#00,#02,#45,#00,#02,#ff
	db #00,#18,#45,#00,#02,#47,#00,#02
	db #49,#00,#02,#45,#00,#02,#ff,#47
	db #00,#1c,#45,#00,#02,#47,#00,#02
	db #ff,#00,#20,#ff,#28,#58,#1e,#02
	db #2a,#58,#1b,#02,#38,#41,#20,#2a
	db #58,#1b,#04,#2a,#58,#1b,#02,#38
	db #41,#20,#2a,#58,#1b,#02,#28,#58
	db #1e,#02,#2a,#58,#1b,#02,#38,#41
	db #20,#2a,#58,#1b,#04,#2a,#58,#1b
	db #02,#38,#41,#20,#25,#58,#24,#02
	db #ff,#25,#58,#24,#02,#26,#58,#22
	db #02,#38,#41,#20,#26,#58,#22,#04
	db #26,#58,#22,#02,#38,#41,#20,#21
	db #58,#2d,#02,#25,#58,#24,#02,#26
	db #58,#22,#02,#38,#41,#20,#26,#58
	db #22,#04,#26,#58,#22,#02,#38,#41
	db #20,#21,#58,#2d,#02,#ff,#2d,#58
	db #16,#02,#2f,#58,#14,#02,#38,#41
	db #20,#2f,#58,#14,#04,#2f,#58,#14
	db #02,#38,#41,#20,#2a,#58,#1b,#02
	db #2d,#58,#16,#02,#2f,#58,#14,#02
	db #38,#41,#20,#2f,#58,#14,#04,#2f
	db #58,#14,#02,#38,#41,#20,#2a,#58
	db #1b,#02,#ff,#2f,#58,#14,#02,#31
	db #58,#12,#02,#38,#41,#20,#31,#58
	db #12,#04,#31,#58,#12,#02,#38,#41
	db #20,#2c,#58,#18,#02,#2f,#58,#14
	db #02,#31,#58,#12,#02,#38,#41,#20
	db #31,#58,#12,#04,#31,#58,#12,#02
	db #38,#41,#20,#2c,#58,#18,#02,#ff
	db #2a,#51,#20,#aa,#50,#aa,#50,#b8
	db #40,#aa,#50,#2a,#50,#02,#2a,#50
	db #02,#aa,#50,#aa,#50,#b8,#40,#aa
	db #50,#2a,#50,#02,#2a,#50,#02,#aa
	db #50,#aa,#50,#b8,#40,#aa,#50,#2a
	db #50,#02,#2a,#50,#02,#aa,#50,#aa
	db #50,#b8,#40,#aa,#50,#28,#50,#02
	db #ff,#26,#51,#20,#a6,#50,#a6,#50
	db #b8,#40,#a6,#50,#26,#50,#02,#26
	db #50,#02,#a6,#50,#a6,#50,#b8,#40
	db #a6,#50,#26,#50,#02,#26,#50,#02
	db #a6,#50,#a6,#50,#b8,#40,#a6,#50
	db #26,#50,#02,#26,#50,#02,#a6,#50
	db #a6,#50,#b8,#40,#a6,#50,#25,#50
	db #02,#ff,#2f,#51,#20,#af,#50,#af
	db #50,#b8,#40,#af,#50,#2f,#50,#02
	db #2f,#50,#02,#af,#50,#af,#50,#b8
	db #40,#af,#50,#2f,#50,#02,#2f,#50
	db #02,#af,#50,#af,#50,#b8,#40,#af
	db #50,#2f,#50,#02,#2f,#50,#02,#af
	db #50,#af,#50,#b8,#40,#af,#50,#2f
	db #50,#02,#ff,#28,#51,#20,#a8,#50
	db #a8,#50,#b8,#40,#a8,#50,#28,#50
	db #02,#28,#50,#02,#a8,#50,#a8,#50
	db #b8,#40,#a8,#50,#28,#50,#02,#28
	db #50,#02,#a8,#50,#a8,#50,#b8,#40
	db #a8,#50,#28,#50,#02,#28,#50,#02
	db #a8,#50,#a8,#50,#b8,#40,#a8,#50
	db #28,#50,#02,#ff
;
.music_info
	db "Telepathique - Intro (1994)(Bugs)(Kangaroo Music)",0
	db "ST-128 Module",0

	read "music_end.asm"
