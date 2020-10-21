; Music of Atom Ant (1990)(Hi-Tec Software)()()
; Ripped by Megachur the 12/04/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ATOMANT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #a000

	read "music_header.asm"

	dw #103c,#101e,#1000,#0fe2
	dw #0fc4,#0fa7,#0f8b,#0f0a
	dw #0f52,#0f35,#0f19,#0efc
	dw #0ee0,#0ec6,#0eac,#0e92
	dw #0e77,#0e5d,#0e43,#0e29
	dw #0e0f,#0df5,#0ddb,#0dc1
	dw #0da8,#0d8e,#0d74,#0d5a
	dw #0d40,#0d28,#0d10,#0cf8
	dw #0ce0,#0cc8,#0cb0,#0c98
	dw #0c80,#0c69,#0c53,#0c3c
	dw #0c26,#0c0f,#0bf9,#0be2
	dw #0bd0,#0bbb,#0ba6,#0b91
	dw #0b7c,#0b67,#0b52,#0b3d
	dw #0b28,#0b14,#0b00,#0aec
	dw #0ad7,#0ac3,#0aaf,#0a9b
	dw #0a87,#0a74,#0a61,#0a4e
	dw #0a3b,#0a28,#0a15,#0a02
	dw #09ef,#09dd,#09cb,#09b9
	dw #09a7,#0995,#0983,#0971
	dw #095f,#094f,#093e,#092e
	dw #091d,#090c,#08fc,#08eb
	dw #08db,#08cb,#08bb,#08aa
	dw #089a,#0889,#0879,#0869
	dw #0859,#084a,#083b,#082c
	dw #081e,#080f,#0800,#07f1
	dw #07e2,#07d4,#07c6,#07b8
	dw #07a9,#079a,#078c,#077e
	dw #0770,#0763,#0756,#0749
	dw #073b,#072e,#0721,#0714
	dw #0707,#06fa,#06ed,#06e0
	dw #06d4,#06c7,#06ba,#06ad
	dw #06a0,#0694,#0688,#067c
	ld de,#6330
	add hl,de
.la104
	ld de,#f6f4
	ld c,#07
	ld b,#f7
	ld a,#84
	out (c),a
	ld b,d
	ld a,#c0
	out (c),a
	ld b,e
	out (c),c
	ld b,#f7
	ld a,#94
	out (c),a
	ld b,d
	ld a,#40
	out (c),a
	ld b,e
	in a,(c)
	or #3f
	ld (la805),a
	xor a
	ld (la806),a
	ld (la807),a
	ld (la808),a
	jp la7d8
;
.real_init_music
;
	ld a,h
	ld (la7ac),a
	ld a,l
	add a
	ld l,a
	add a
	add l
	ld l,a
	ld h,#00
	ld de,la80a
	add hl,de
	ld a,(hl)
	inc hl
	ld b,h
	ld c,l
	ld h,(hl)
	ld l,a
	ld de,la159
	ld (la1e5),de
	ld a,(hl)
	inc hl
	jp la1d2
.la159
	ld de,la277
	ld (la1e5),de
	ld h,b
	ld l,c
	inc hl
	ld a,(hl)
	inc hl
	ld b,h
	ld c,l
	ld h,(hl)
	ld l,a
	ld de,la175
	ld (la20d),de
	ld a,(hl)
	inc hl
	jp la1fa
.la175
	ld de,la5c8
	ld (la20d),de
	ld h,b
	ld l,c
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,la18f
	ld (la234),de
	ld a,(hl)
	inc hl
	jp la221
.la18f
	ld de,la407
	ld (la234),de
	xor a
	ld (la304),a
	ld (la660),a
	ld (la49f),a
	ld (la792),a
	inc a
	ld (la286),a
	ld (la5d7),a
	ld (la416),a
	ld a,#04
	ld (la809),a
	ld a,#ff
	ld (la249),a
	ld (la23e),a
	ret
.la1bb
	ld a,(hl)
	cp b
	jr z,la236
	ld e,a
	xor a
	ld d,a
	sbc hl,de
	ld a,(hl)
	inc hl
	jp la1d2
.la1ca equ $ + 1
.la1c9
	ld hl,#c100
	ld a,(hl)
	inc hl
	cp b
	jp z,la1bb
.la1d2
	ld (la1ca),hl
	ld de,la81e
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la278),hl
.la1e5 equ $ + 1
	jp la1f1
.la1e7
	ld e,(hl)
	ld d,#00
	sbc hl,de
	ld a,(hl)
	inc hl
	jp la1fa
.la1f2 equ $ + 1
.la1f1
	ld hl,#c102
	ld a,(hl)
	inc hl
	cp b
	jp z,la1e7
.la1fa
	ld (la1f2),hl
	ld de,la824
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la5c9),hl
.la20d equ $ + 1
	jp la219
.la20f
	ld e,(hl)
	ld d,#00
	sbc hl,de
	ld a,(hl)
	inc hl
	jp la221
.la21a equ $ + 1
.la219
	ld hl,#c104
	ld a,(hl)
	inc hl
	cp b
	jr z,la20f
.la221
	ld (la21a),hl
	ld de,la82a
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la408),hl
.la234 equ $ + 1
	jp la1c9
.la236
	xor a
	ld (la249),a
	jp la242
.la23e equ $ + 1
.la23d
	ld a,#ff
	and a
	ret z
	xor a
.la242
	ld (la23e),a
	jp la104
;
.play_music
;
.music_end equ $ + 1
.la249 equ $ + 1
	ld a,#00
	and a
	jr z,la23d
	ld de,#f6f4
	ld c,#07
	ld b,#f7
	ld a,#84
	out (c),a
	ld b,d
	ld a,#c0
	out (c),a
	ld b,e
	out (c),c
	ld b,#f7
	ld a,#94
	out (c),a
	ld b,d
	ld a,#40
	out (c),a
	ld b,e
	in c,(c)
	ld b,#ff
	ld hl,la286
	dec (hl)
	jp nz,la378
.la278 equ $ + 1
.la277
	ld hl,#c000
.la27a
	ld e,(hl)
	inc hl
	ld ix,la287
	ld d,#00
	add ix,de
	jp (ix)
.la287 equ $ + 1
.la286
	db &01
	jp la2dd
	jp la2e5
	jp la2ed
	jp la2f8
	jp la303
	jp la303
	jp la312
	jp la321
	jp la321
	jp la339
	jp la339
	jp la2be
	jp la339
	jp la339
	jp la343
	jp la1c9
	ld a,b
	ld (la37e),a
	ld (la3a0),a
.la2be
	ld a,b
	ld (la379),a
	ld (la39b),a
	xor a
	ld (la3e6),a
	ld a,(hl)
	inc hl
	ld (la3ae),a
	ld a,(hl)
	inc hl
	ld (la286),a
	ld (la278),hl
	set 3,c
	res 0,c
	jp la378
.la2dd
	ld a,(hl)
	inc hl
	ld (la38c),a
	jp la27a
.la2e5
	ld a,(hl)
	inc hl
	ld (la3bd),a
	jp la27a
.la2ed
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la34f),de
	jp la27a
.la2f8
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la364),de
	jp la27a
.la304 equ $ + 1
.la303
	ld a,#00
	inc a
	jp nz,la27a
	ld (la304),a
.la30d equ $ + 1
	ld hl,#ce3f
	jp la27a
.la312
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la30d),hl
	ld a,b
	ld (la304),a
	ex de,hl
	jp la27a
.la321
	xor a
	ld (la379),a
	ld (la39b),a
	ld (la3e6),a
	ld (la806),a
	ld a,(hl)
	inc hl
	ld (la286),a
	ld (la278),hl
	jp la400
.la339
	ld a,b
	ld (la37e),a
	ld (la3a0),a
	ld (la3eb),a
.la343
	ld a,(hl)
	inc hl
	ld (la286),a
	ld (la278),hl
	jp la378
.la34f equ $ + 1
.la34e
	ld hl,#c3d1
	xor a
	ld (la37e),a
	jp la385
.la358
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	ld a,(hl)
	inc hl
	jp la38b
.la364 equ $ + 1
.la363
	ld hl,#cf3a
	xor a
	ld (la3a0),a
	jp la3a7
.la36d
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	ld a,(hl)
	inc hl
	jp la3ad
.la379 equ $ + 1
.la378
	ld a,#00
	and a
	jr z,la39a
.la37e equ $ + 1
	ld a,#ff
	inc a
	jr z,la34e
.la383 equ $ + 1
	ld hl,#c5a2
.la385
	ld a,(hl)
	inc hl
	cp #80
	jr z,la358
.la38c equ $ + 1
.la38b
	ld d,#01
	add d
	jp p,la392
	xor a
.la392
	and #0f
	ld (la806),a
	ld (la383),hl
.la39b equ $ + 1
.la39a
	ld a,#00
	and a
	jr z,la3e5
.la3a0 equ $ + 1
	ld a,#ff
	inc a
	jr z,la363
.la3a5 equ $ + 1
	ld hl,#c624
.la3a7
	ld a,(hl)
	inc hl
	cp #80
	jr z,la36d
.la3ae equ $ + 1
.la3ad
	ld d,#01
	add d
	ld (la3a5),hl
	ld h,#a0
	ld l,a
	ld e,(hl)
	inc l
	ld d,(hl)
	ld hl,la3c5
.la3bd equ $ + 1
	ld a,#01
	add l
	ld l,a
	jp nc,la3c4
	inc h
.la3c4
	jp (hl)
.la3c5
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	ld (la7fe),de
.la3e6 equ $ + 1
.la3e5
	ld a,#00
	and a
	jr z,la400
.la3eb equ $ + 1
	ld a,#ff
	inc a
	jp z,la378
.la3f1 equ $ + 1
	ld hl,#c7d2
	ld a,(hl)
	inc hl
	cp #80
	jp z,la378
	ld (la804),a
	ld (la3f1),hl
.la400
	ld hl,la416
	dec (hl)
	jp nz,la539
.la408 equ $ + 1
.la407
	ld hl,#c28b
.la40a
	ld e,(hl)
	inc hl
	ld ix,la417
	ld d,#00
	add ix,de
	jp (ix)
.la416
	ld (bc),a
.la417
	jp la46d
	jp la475
	jp la47d
	jp la488
	jp la493
	jp la49e
	jp la4ad
	jp la4bc
	jp la4bc
	jp la4bc
	jp la4c6
	jp la44e
	jp la4e4
	jp la4e4
	jp la4ee
	jp la219
	ld a,b
	ld (la53f),a
	ld (la561),a
.la44e
	ld a,b
	ld (la53a),a
	ld (la55c),a
	xor a
	ld (la5a7),a
	ld a,(hl)
	inc hl
	ld (la56f),a
	ld a,(hl)
	inc hl
	ld (la416),a
	ld (la408),hl
	set 5,c
	res 2,c
	jp la539
.la46d
	ld a,(hl)
	inc hl
	ld (la54d),a
	jp la40a
.la475
	ld a,(hl)
	inc hl
	ld (la57e),a
	jp la40a
.la47d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la4fa),de
	jp la40a
.la488
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la50f),de
	jp la40a
.la493
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la524),de
	jp la40a
.la49f equ $ + 1
.la49e
	ld a,#00
	inc a
	jp nz,la40a
	ld (la49f),a
.la4a8 equ $ + 1
	ld hl,#c64a
	jp la40a
.la4ad
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la4a8),hl
	ld a,b
	ld (la49f),a
	ex de,hl
	jp la40a
.la4bc
	ld a,b
	ld (la53f),a
	ld (la561),a
	ld (la5ac),a
.la4c6
	ld a,b
	ld (la53a),a
	ld (la55c),a
	ld (la5a7),a
	ld a,(hl)
	inc hl
	ld (la56f),a
	ld a,(hl)
	inc hl
	ld (la416),a
	ld (la408),hl
	res 5,c
	res 2,c
	jp la539
.la4e4
	ld a,b
	ld (la53f),a
	ld (la561),a
	ld (la5ac),a
.la4ee
	ld a,(hl)
	inc hl
	ld (la416),a
	ld (la408),hl
	jp la539
.la4fa equ $ + 1
.la4f9
	ld hl,#c90c
	xor a
	ld (la53f),a
	jp la546
.la503
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	ld a,(hl)
	inc hl
	jp la54c
.la50f equ $ + 1
.la50e
	ld hl,#c351
	xor a
	ld (la561),a
	jp la568
.la518
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	ld a,(hl)
	inc hl
	jp la56e
.la524 equ $ + 1
.la523
	ld hl,#c0dd
	xor a
	ld (la5ac),a
	jp la5b4
.la52d
	ld e,(hl)
	inc e
	ld d,#00
	and a
	sbc hl,de
	ld a,(hl)
	inc hl
	jp la5bb
.la53a equ $ + 1
.la539
	ld a,#00
	and a
	jr z,la55b
.la53f equ $ + 1
	ld a,#ff
	inc a
	jr z,la4f9
.la544 equ $ + 1
	ld hl,#c427
.la546
	ld a,(hl)
	inc hl
	cp #80
	jr z,la503
.la54d equ $ + 1
.la54c
	ld d,#02
	add d
	jp p,la553
	xor a
.la553
	and #0f
	ld (la808),a
	ld (la544),hl
.la55c equ $ + 1
.la55b
	ld a,#00
	and a
	jr z,la5a6
.la561 equ $ + 1
	ld a,#ff
	inc a
	jr z,la50e
.la566 equ $ + 1
	ld hl,#c7f9
.la568
	ld a,(hl)
	inc hl
	cp #80
	jr z,la518
.la56f equ $ + 1
.la56e
	ld d,#02
	add d
	ld (la566),hl
	ld h,#a0
	ld l,a
	ld e,(hl)
	inc l
	ld d,(hl)
	ld hl,la586
.la57e equ $ + 1
	ld a,#02
	add l
	ld l,a
	jp nc,la585
	inc h
.la585
	jp (hl)
.la586
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	ld (la802),de
.la5a7 equ $ + 1
.la5a6
	ld a,#00
	and a
	jr z,la5c1
.la5ac equ $ + 1
	ld a,#ff
	inc a
	jp z,la523
.la5b2 equ $ + 1
	ld hl,#c003
.la5b4
	ld a,(hl)
	inc hl
	cp #80
	jp z,la52d
.la5bb
	ld (la804),a
	ld (la5b2),hl
.la5c1
	ld hl,la5d7
	dec (hl)
	jp nz,la709
.la5c9 equ $ + 1
.la5c8
	ld hl,#c5da
.la5cb
	ld e,(hl)
	inc hl
	ld ix,la5d8
	ld d,#00
	add ix,de
	jp (ix)
.la5d7
	inc bc
.la5d8
	jp la62e
	jp la636
	jp la63e
	jp la649
	jp la654
	jp la65f
	jp la66e
	jp la67d
	jp la67d
	jp la695
	jp la695
	jp la60f
	jp la695
	jp la6b5
	jp la6bf
	jp la1f1
	ld a,b
	ld (la70f),a
	ld (la731),a
.la60f
	ld a,b
	ld (la70a),a
	ld (la72c),a
	xor a
	ld (la777),a
	ld a,(hl)
	inc hl
	ld (la73f),a
	ld a,(hl)
	inc hl
	ld (la5d7),a
	ld (la5c9),hl
	set 4,c
	res 1,c
	jp la709
.la62e
	ld a,(hl)
	inc hl
	ld (la71d),a
	jp la5cb
.la636
	ld a,(hl)
	inc hl
	ld (la74e),a
	jp la5cb
.la63e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la6cb),de
	jp la5cb
.la649
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la6e0),de
	jp la5cb
.la654
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la6f5),de
	jp la5cb
.la660 equ $ + 1
.la65f
	ld a,#00
	inc a
	jp nz,la5cb
	ld (la660),a
.la669 equ $ + 1
	ld hl,#c621
	jp la5cb
.la66e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la669),hl
	ld a,b
	ld (la660),a
	ex de,hl
	jp la5cb
.la67d
	xor a
	ld (la70a),a
	ld (la72c),a
	ld (la777),a
	ld (la807),a
	ld a,(hl)
	inc hl
	ld (la5d7),a
	ld (la5c9),hl
	jp la791
.la695
	ld a,b
	ld (la70f),a
	ld (la77c),a
	ld (la70a),a
	ld (la777),a
	xor a
	ld (la72c),a
	ld a,(hl)
	inc hl
	ld (la5d7),a
	ld (la5c9),hl
	res 4,c
	set 1,c
	jp la709
.la6b5
	ld a,b
	ld (la70f),a
	ld (la731),a
	ld (la77c),a
.la6bf
	ld a,(hl)
	inc hl
	ld (la5d7),a
	ld (la5c9),hl
	jp la709
.la6cb equ $ + 1
.la6ca
	ld hl,#c7fd
	xor a
	ld (la70f),a
	jp la716
.la6d4
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	ld a,(hl)
	inc hl
	jp la71c
.la6e0 equ $ + 1
.la6df
	ld hl,#c2a0
	xor a
	ld (la731),a
	jp la738
.la6e9
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	ld a,(hl)
	inc hl
	jp la73e
.la6f5 equ $ + 1
.la6f4
	ld hl,#c82c
	xor a
	ld (la77c),a
	jp la784
.la6fe
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	ld a,(hl)
	inc hl
	jp la78b
.la70a equ $ + 1
.la709
	ld a,#00
	and a
	jr z,la72b
.la70f equ $ + 1
	ld a,#ff
	inc a
	jr z,la6ca
.la714 equ $ + 1
	ld hl,#c38b
.la716
	ld a,(hl)
	inc hl
	cp #80
	jr z,la6d4
.la71d equ $ + 1
.la71c
	ld d,#03
	add d
	jp p,la723
	xor a
.la723
	and #0f
	ld (la807),a
	ld (la714),hl
.la72c equ $ + 1
.la72b
	ld a,#00
	and a
	jr z,la776
.la731 equ $ + 1
	ld a,#ff
	inc a
	jr z,la6df
.la736 equ $ + 1
	ld hl,#cecd
.la738
	ld a,(hl)
	inc hl
	cp #80
	jr z,la6e9
.la73f equ $ + 1
.la73e
	ld d,#03
	add d
	ld (la736),hl
	ld h,#a0
	ld l,a
	ld e,(hl)
	inc l
	ld d,(hl)
	ld hl,la756
.la74e equ $ + 1
	ld a,#03
	add l
	ld l,a
	jp nc,la755
	inc h
.la755
	jp (hl)
.la756
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	ld (la800),de
.la777 equ $ + 1
.la776
	ld a,#00
	and a
	jr z,la791
.la77c equ $ + 1
	ld a,#ff
	inc a
	jp z,la6f4
.la782 equ $ + 1
	ld hl,#c96a
.la784
	ld a,(hl)
	inc hl
	cp #80
	jp z,la6fe
.la78b
	ld (la804),a
	ld (la782),hl
.la792 equ $ + 1
.la791
	ld a,#00
	and a
	jp z,la7ab
	ld hl,la809
	dec (hl)
	jp nz,la7ab
	ld (hl),#04
	ld hl,la7ac
	dec (hl)
	jp nz,la7ab
	xor a
	ld (la249),a
.la7ac equ $ + 1
.la7ab
	ld a,#0f
	sub #0f
	ld d,a
	ld a,(la806)
	add d
	jp p,la7b8
	xor a
.la7b8
	ld (la806),a
	ld a,(la807)
	add d
	jp p,la7c3
	xor a
.la7c3
	ld (la807),a
	ld a,(la808)
	add d
	jp p,la7ce
	xor a
.la7ce
	ld (la808),a
	ld a,c
	ld (la805),a
	ld de,#f6f4
.la7d8
	ld hl,la808
	ld c,#0a
	ld b,#f7
	ld a,#84
	out (c),a
.la7e3
	ld b,d
	ld a,#c0
	out (c),a
	ld b,e
	out (c),c
	ld b,d
	ld a,#80
	out (c),a
	ld b,e
	ld a,(hl)
	out (c),a
	dec hl
	dec c
	jp p,la7e3
	ld b,d
	xor a
	out (c),a
	ret
.la805 equ $ + 7
.la804 equ $ + 6
.la802 equ $ + 4
.la800 equ $ + 2
.la7fe
	db #00,#00,#00,#00,#00,#00,#00,#00
.la809 equ $ + 3
.la808 equ $ + 2
.la807 equ $ + 1
.la806
	db #00,#00,#00,#00
.la80a
	dw la816,la816,la816,la81b
.la816 equ $ + 4
	dw la81b,la81b,#0000
.la81b equ $ + 3
	db #01,#ff,#04,#02,#ff,#ff
.la824 equ $ + 6
.la81e
	dw la9af,lab81,lafc9,laba0
.la82a equ $ + 4
	dw lad44,lb09e,ladd1,laf60
	db #21,#b1,#ff,#00,#00,#ff,#ff,#ff
	db #fe,#fe,#fe,#fd,#fd,#fd,#fc,#fc
	db #fc,#fc,#fd,#fd,#fd,#fd,#80,#08
	db #ff,#00,#00,#ff,#ff,#ff,#fe,#fe
	db #fe,#fd,#fd,#fd,#fc,#fc,#fc,#80
	db #06,#00,#00,#00,#00,#00,#00,#fe
	db #fe,#fe,#fc,#fa,#f8,#80,#0c,#ff
	db #ff,#ff,#fd,#fd,#fd,#fb,#fb,#fb
	db #f9,#f7,#f5,#80,#0c,#ff,#ff,#fd
	db #fb,#f9,#f7,#80,#06,#00,#00,#00
	db #00,#00,#00,#ff,#ff,#ff,#ff,#ff
	db #ff,#fe,#fe,#fe,#fe,#fe,#fe,#fd
	db #fd,#fd,#fd,#fd,#fd,#fc,#fc,#fc
	db #fc,#fc,#fc,#fb,#fb,#fb,#fb,#fb
	db #fb,#80,#0c,#00,#00,#00,#fc,#fc
	db #fc,#fe,#fe,#fe,#fa,#fa,#fa,#80
	db #0c,#00,#00,#00,#fc,#fe,#fa,#80
	db #06,#00,#00,#00,#00,#00,#00,#fe
	db #fe,#fe,#fe,#fe,#fe,#fc,#fc,#fc
	db #fc,#fc,#fc,#fa,#fa,#fa,#fa,#fa
	db #fa,#80,#18,#00,#06,#fa,#00,#00
	db #00,#fe,#fe,#fe,#00,#00,#00,#02
	db #02,#02,#80,#0c,#f4,#f8,#fc,#00
	db #00,#00,#fe,#fe,#fe,#00,#00,#00
	db #02,#02,#02,#00,#00,#00,#fc,#fc
	db #fc,#00,#00,#00,#04,#04,#04,#00
	db #00,#00,#fa,#fa,#fa,#00,#00,#00
	db #06,#06,#06,#00,#00,#00,#f8,#f8
	db #f8,#00,#00,#00,#80,#0c,#fe,#fe
	db #fe,#02,#02,#02,#80,#06,#00,#00
	db #00,#00,#00,#00,#fe,#fe,#fe,#02
	db #02,#02,#fc,#fc,#fc,#04,#04,#04
	db #fa,#fa,#fa,#06,#06,#06,#f8,#f8
	db #f8,#08,#08,#08,#f6,#f6,#f6,#0a
	db #0a,#0a,#80,#0c,#00,#02,#04,#06
	db #08,#0a,#00,#fe,#fc,#fa,#f8,#f6
	db #80,#0c,#00,#00,#02,#02,#fe,#fe
	db #00,#00,#04,#04,#fc,#fc,#00,#00
	db #06,#06,#fa,#fa,#00,#00,#08,#08
	db #f8,#f8,#80,#18,#0a,#0c,#0e,#10
	db #0e,#0c,#0a,#0c,#0e,#10,#0e,#0c
	db #80,#0c,#00,#00,#00,#80,#03,#2a
	db #20,#5a,#38,#30,#20,#4d,#75,#73
	db #69,#63,#20,#50,#6c,#61,#79,#65
	db #72,#20,#61,#6e,#64,#20,#6d,#75
	db #73,#69,#63,#20,#28,#63,#29,#53
	db #65,#61,#6e,#20,#43,#6f,#6e,#72
	db #61,#6e,#20,#31,#39,#39,#30,#20
.la9af equ $ + 1
	db #2a,#09,#d1,#a8,#06,#30,#a8,#00
	db #0e,#03,#08,#30,#38,#01,#03,#10
	db #21,#38,#0b,#03,#08,#27,#01,#03
	db #10,#21,#38,#05,#03,#08,#27,#01
	db #03,#10,#21,#38,#05,#03,#08,#30
	db #78,#01,#03,#10,#21,#78,#0b,#03
	db #08,#30,#58,#01,#03,#10,#21,#58
	db #0b,#03,#08,#30,#38,#01,#03,#10
	db #21,#38,#0b,#03,#08,#30,#a8,#01
	db #03,#10,#21,#a8,#17,#03,#08,#30
	db #c8,#01,#03,#10,#21,#c8,#0b,#03
	db #04,#30,#38,#01,#03,#0c,#21,#38
	db #0b,#03,#04,#27,#01,#03,#0c,#21
	db #38,#05,#03,#04,#27,#01,#03,#0c
	db #21,#38,#05,#03,#08,#30,#c8,#01
	db #03,#10,#21,#c8,#0b,#03,#04,#30
	db #38,#01,#03,#0c,#21,#38,#0b,#03
	db #08,#30,#a8,#01,#03,#10,#21,#a8
	db #23,#03,#08,#30,#c8,#01,#03,#10
	db #21,#c8,#0b,#03,#04,#30,#38,#01
	db #03,#0c,#21,#38,#0b,#03,#04,#27
	db #01,#03,#0c,#21,#38,#05,#03,#04
	db #27,#01,#03,#0c,#21,#38,#05,#03
	db #08,#30,#c8,#01,#03,#10,#21,#c8
	db #0b,#03,#04,#30,#38,#01,#03,#0c
	db #21,#38,#0b,#03,#08,#30,#a8,#01
	db #03,#10,#21,#a8,#17,#03,#04,#30
	db #38,#01,#03,#0c,#21,#38,#0b,#03
	db #04,#30,#78,#01,#03,#0c,#21,#78
	db #0b,#03,#04,#30,#58,#01,#03,#0c
	db #21,#58,#0b,#03,#04,#27,#01,#03
	db #0c,#21,#58,#05,#03,#04,#27,#01
	db #03,#0c,#21,#58,#05,#03,#04,#30
	db #38,#01,#03,#0c,#21,#38,#0b,#03
	db #04,#30,#58,#01,#03,#0c,#21,#58
	db #0b,#0f,#03,#04,#30,#28,#01,#03
	db #0c,#21,#28,#2f,#12,#b7,#a9,#03
	db #04,#30,#28,#01,#03,#0c,#21,#28
	db #0b,#03,#04,#30,#a8,#01,#03,#0c
	db #21,#a8,#17,#09,#e2,#a8,#06,#46
	db #a8,#03,#10,#27,#0c,#03,#10,#30
	db #c8,#0c,#27,#06,#27,#06,#27,#24
	db #03,#0c,#30,#38,#0c,#30,#28,#0c
	db #03,#10,#30,#c8,#0c,#0f,#03,#0c
	db #30,#78,#0c,#27,#06,#27,#06,#27
	db #24,#30,#28,#0c,#03,#10,#30,#c8
	db #0c,#30,#a8,#0c,#12,#f3,#aa,#03
	db #0c,#30,#28,#0c,#27,#06,#27,#06
	db #03,#10,#30,#78,#30,#27,#18,#30
	db #58,#0c,#27,#06,#27,#06,#30,#c8
	db #30,#30,#88,#18,#30,#78,#0c,#27
	db #06,#27,#06,#03,#0c,#30,#28,#30
	db #03,#10,#30,#a8,#18,#30,#88,#0c
	db #27,#06,#27,#06,#03,#0c,#30,#38
	db #30,#03,#10,#30,#c8,#18,#30,#a8
	db #0c,#27,#06,#27,#06,#03,#0c,#30
	db #28,#06,#03,#10,#30,#a8,#06,#03
	db #0c,#30,#28,#06,#30,#58,#06,#30
.lab81 equ $ + 3
	db #a8,#30,#2d,#03,#0c,#30,#28,#0c
	db #27,#06,#27,#06,#30,#58,#06,#30
	db #28,#06,#30,#58,#06,#30,#a8,#06
	db #03,#08,#30,#28,#30,#2a,#60,#2a
.laba0 equ $ + 2
	db #60,#2d,#09,#14,#a9,#06,#57,#a8
	db #0c,#6a,#a9,#00,#0f,#03,#18,#06
	db #57,#a8,#30,#38,#0c,#06,#65,#a8
	db #24,#0c,#03,#1c,#06,#57,#a8,#30
	db #a8,#0c,#06,#65,#a8,#24,#0c,#03
	db #18,#06,#57,#a8,#30,#38,#0c,#06
	db #65,#a8,#24,#0c,#03,#1c,#06,#57
	db #a8,#30,#a8,#0c,#06,#65,#a8,#24
	db #0c,#06,#57,#a8,#30,#88,#0c,#06
	db #65,#a8,#24,#0c,#03,#18,#06,#57
	db #a8,#30,#38,#0c,#06,#65,#a8,#24
	db #0c,#06,#57,#a8,#30,#38,#0c,#06
	db #65,#a8,#24,#0c,#03,#1c,#06,#57
	db #a8,#30,#a8,#0c,#06,#73,#a8,#24
	db #06,#24,#06,#06,#57,#a8,#30,#88
	db #0c,#06,#65,#a8,#24,#0c,#03,#18
	db #06,#57,#a8,#30,#38,#0c,#06,#65
	db #a8,#24,#0c,#06,#57,#a8,#30,#38
	db #0c,#06,#65,#a8,#24,#0c,#03,#1c
	db #06,#57,#a8,#30,#a8,#0c,#06,#65
	db #a8,#24,#0c,#0f,#03,#18,#06,#57
	db #a8,#30,#58,#0c,#06,#65,#a8,#24
	db #0c,#03,#1c,#06,#57,#a8,#30,#c8
	db #0c,#06,#65,#a8,#24,#0c,#06,#57
	db #a8,#30,#a8,#0c,#06,#65,#a8,#24
	db #0c,#03,#18,#06,#57,#a8,#30,#58
	db #0c,#06,#73,#a8,#24,#06,#24,#06
	db #12,#ab,#ab,#03,#1c,#06,#57,#a8
	db #30,#d8,#0c,#06,#65,#a8,#24,#0c
	db #06,#57,#a8,#30,#88,#0c,#06,#65
	db #a8,#24,#0c,#06,#57,#a8,#30,#a8
	db #0c,#06,#65,#a8,#24,#0c,#03,#18
	db #06,#57,#a8,#30,#58,#0c,#06,#73
	db #a8,#24,#06,#24,#06,#09,#1c,#a9
	db #03,#1c,#06,#7b,#a8,#00,#0f,#30
	db #c8,#24,#27,#0c,#27,#18,#06,#65
	db #a8,#24,#0c,#06,#73,#a8,#00,#0e
	db #24,#06,#00,#0d,#24,#06,#06,#7b
	db #a8,#00,#0f,#30,#78,#24,#27,#0c
	db #27,#18,#06,#65,#a8,#24,#0c,#06
	db #73,#a8,#00,#0e,#24,#06,#00,#0d
	db #24,#06,#0f,#12,#b0,#ac,#06,#7b
	db #a8,#00,#0f,#30,#58,#24,#27,#0c
	db #27,#18,#06,#65,#a8,#24,#0c,#06
	db #73,#a8,#00,#0e,#24,#06,#00,#0d
	db #24,#06,#12,#cc,#ac,#06,#7b,#a8
	db #00,#0f,#30,#88,#24,#27,#0c,#27
	db #18,#06,#65,#a8,#24,#0c,#06,#73
	db #a8,#00,#0e,#24,#06,#00,#0d,#24
	db #06,#06,#7b,#a8,#00,#0f,#30,#a8
	db #24,#27,#0c,#27,#18,#06,#65,#a8
	db #24,#0c,#06,#73,#a8,#00,#0e,#24
.lad44 equ $ + 6
	db #06,#00,#0d,#24,#06,#2d,#06,#7b
	db #a8,#00,#0f,#30,#a8,#24,#27,#0c
	db #27,#30,#06,#65,#a8,#00,#08,#24
	db #0c,#06,#73,#a8,#00,#07,#24,#06
	db #24,#06,#06,#65,#a8,#00,#09,#24
	db #0c,#06,#73,#a8,#00,#08,#24,#06
	db #24,#06,#06,#65,#a8,#00,#0a,#24
	db #0c,#06,#73,#a8,#00,#09,#24,#06
	db #24,#06,#06,#65,#a8,#00,#0b,#24
	db #0c,#06,#73,#a8,#00,#0a,#24,#06
	db #24,#06,#06,#65,#a8,#00,#0c,#24
	db #0c,#06,#73,#a8,#00,#0b,#24,#06
	db #24,#06,#06,#65,#a8,#00,#0d,#24
	db #0c,#06,#73,#a8,#00,#0c,#24,#06
	db #24,#06,#06,#65,#a8,#00,#0e,#24
	db #0c,#06,#73,#a8,#00,#0d,#24,#06
	db #24,#06,#06,#65,#a8,#00,#0f,#24
	db #0c,#06,#73,#a8,#00,#0e,#24,#06
.ladd1 equ $ + 3
	db #24,#06,#2d,#09,#42,#a9,#0c,#78
	db #a9,#00,#0d,#03,#14,#06,#a1,#a8
	db #1b,#38,#02,#21,#38,#0a,#06,#af
	db #a8,#27,#06,#27,#06,#0f,#12,#db
	db #ad,#12,#db,#ad,#06,#a1,#a8,#1b
	db #38,#02,#21,#38,#0a,#06,#af,#a8
	db #30,#58,#06,#30,#78,#06,#0f,#06
	db #a1,#a8,#1b,#88,#02,#21,#88,#0a
	db #06,#af,#a8,#27,#06,#27,#06,#0f
	db #12,#05,#ae,#12,#db,#ad,#12,#f2
	db #ad,#12,#05,#ae,#12,#05,#ae,#12
	db #db,#ad,#12,#f2,#ad,#06,#a1,#a8
	db #1b,#58,#02,#21,#58,#0a,#06,#af
	db #a8,#27,#06,#27,#06,#0f,#12,#2b
	db #ae,#06,#a1,#a8,#1b,#a8,#02,#21
	db #a8,#0a,#06,#af,#a8,#27,#06,#27
	db #06,#0f,#06,#a1,#a8,#1b,#a8,#02
	db #21,#a8,#0a,#06,#af,#a8,#30,#78
	db #06,#30,#58,#06,#12,#db,#ad,#12
	db #db,#ad,#12,#db,#ad,#12,#f2,#ad
	db #12,#05,#ae,#12,#05,#ae,#12,#db
	db #ad,#12,#f2,#ad,#12,#05,#ae,#12
	db #05,#ae,#12,#db,#ad,#06,#a1,#a8
	db #1b,#38,#02,#21,#38,#0a,#06,#af
	db #a8,#30,#58,#06,#30,#38,#06,#03
	db #18,#06,#a1,#a8,#1b,#d8,#02,#21
	db #d8,#0a,#06,#af,#a8,#27,#06,#27
	db #06,#0f,#12,#97,#ae,#12,#3f,#ae
	db #06,#a1,#a8,#1b,#a8,#02,#21,#a8
	db #0a,#06,#af,#a8,#30,#c8,#06,#03
	db #14,#30,#28,#06,#09,#50,#a9,#06
	db #b7,#a8,#00,#0d,#03,#08,#1b,#c8
	db #02,#21,#c8,#16,#1b,#78,#02,#21
	db #78,#16,#1b,#c8,#02,#21,#c8,#16
	db #1b,#78,#02,#21,#78,#16,#03,#04
	db #1b,#c8,#02,#21,#28,#16,#03,#08
	db #1b,#78,#02,#21,#78,#16,#03,#04
	db #1b,#c8,#02,#21,#28,#16,#03,#08
	db #1b,#78,#02,#21,#78,#16,#0f,#12
	db #ca,#ae,#03,#08,#1b,#c8,#02,#21
	db #c8,#16,#1b,#78,#02,#21,#58,#16
	db #1b,#c8,#02,#21,#c8,#16,#1b,#78
	db #02,#21,#58,#16,#12,#e4,#ae,#03
	db #08,#1b,#c8,#02,#21,#c8,#16,#1b
	db #78,#02,#21,#88,#16,#1b,#c8,#02
	db #21,#c8,#16,#1b,#78,#02,#21,#88
	db #16,#03,#04,#1b,#c8,#02,#21,#28
	db #16,#03,#08,#1b,#78,#02,#21,#a8
	db #16,#03,#04,#1b,#c8,#02,#21,#28
	db #16,#03,#08,#1b,#78,#02,#21,#a8
.laf60 equ $ + 2
	db #16,#2d,#03,#04,#1b,#c8,#02,#21
	db #28,#16,#03,#08,#1b,#78,#02,#21
	db #a8,#16,#03,#04,#1b,#c8,#02,#21
	db #28,#16,#03,#08,#1b,#78,#02,#21
	db #a8,#16,#00,#0c,#03,#04,#1b,#c8
	db #02,#21,#28,#16,#03,#08,#1b,#78
	db #02,#21,#a8,#16,#00,#0b,#03,#04
	db #1b,#c8,#02,#21,#28,#16,#03,#08
	db #1b,#78,#02,#21,#a8,#16,#00,#0a
	db #03,#04,#1b,#c8,#02,#21,#28,#16
	db #03,#08,#1b,#78,#02,#21,#a8,#16
	db #00,#09,#03,#04,#1b,#c8,#02,#21
	db #28,#16,#03,#08,#1b,#78,#02,#21
.lafc9 equ $ + 3
	db #a8,#16,#2d,#09,#d1,#a8,#06,#30
	db #a8,#00,#0e,#03,#08,#30,#38,#01
	db #03,#10,#21,#38,#0b,#03,#08,#27
	db #01,#03,#10,#21,#38,#05,#03,#08
	db #27,#01,#03,#10,#21,#38,#05,#03
	db #08,#30,#78,#01,#03,#10,#21,#78
	db #0b,#03,#08,#30,#58,#01,#03,#10
	db #21,#58,#0b,#03,#08,#30,#38,#01
	db #03,#10,#21,#38,#0b,#03,#08,#30
	db #a8,#01,#03,#10,#21,#a8,#17,#03
	db #08,#30,#78,#01,#03,#10,#21,#78
	db #0b,#03,#08,#30,#88,#01,#03,#10
	db #21,#88,#0b,#03,#08,#27,#01,#03
	db #10,#21,#88,#05,#03,#08,#27,#01
	db #03,#10,#21,#88,#05,#03,#08,#30
	db #a8,#01,#03,#10,#21,#a8,#0b,#03
	db #04,#30,#28,#01,#03,#0c,#21,#28
	db #0b,#03,#04,#30,#38,#01,#03,#0c
	db #21,#38,#17,#00,#0c,#03,#00,#27
	db #01,#03,#08,#21,#38,#0b,#00,#0a
	db #03,#00,#27,#01,#03,#08,#21,#38
	db #0b,#00,#08,#03,#00,#27,#01,#03
	db #08,#21,#38,#0b,#00,#06,#03,#00
	db #27,#01,#03,#08,#21,#38,#0b,#00
	db #04,#03,#00,#27,#01,#03,#08,#21
	db #38,#0b,#00,#02,#03,#00,#27,#01
	db #03,#08,#21,#38,#0b,#18,#30,#2d
.lb09e
	db #09,#14,#a9,#06,#57,#a8,#0c,#6a
	db #a9,#00,#0f,#03,#18,#06,#57,#a8
	db #30,#38,#0c,#06,#65,#a8,#24,#0c
	db #03,#1c,#06,#57,#a8,#30,#a8,#0c
	db #06,#65,#a8,#24,#0c,#03,#18,#06
	db #57,#a8,#30,#38,#0c,#06,#65,#a8
	db #24,#0c,#03,#1c,#06,#57,#a8,#30
	db #a8,#0c,#06,#65,#a8,#24,#0c,#06
	db #57,#a8,#30,#88,#0c,#06,#65,#a8
	db #24,#0c,#03,#18,#06,#57,#a8,#30
	db #a8,#0c,#06,#65,#a8,#24,#0c,#06
	db #57,#a8,#30,#38,#0c,#06,#65,#a8
	db #24,#0c,#06,#57,#a8,#30,#38,#0c
	db #00,#0b,#27,#0c,#00,#09,#27,#0c
	db #00,#07,#27,#0c,#00,#05,#27,#0c
	db #00,#03,#27,#0c,#00,#01,#27,#0c
	db #18,#24,#2d,#09,#42,#a9,#0c,#78
	db #a9,#00,#0d,#03,#14,#12,#db,#ad
	db #12,#db,#ad,#12,#db,#ad,#12,#f2
	db #ad,#12,#05,#ae,#12,#3f,#ae,#12
	db #f2,#ad,#00,#0a,#12,#db,#ad,#00
	db #08,#12,#db,#ad,#00,#06,#12,#db
	db #ad,#00,#04,#12,#db,#ad,#00,#02
	db #12,#db,#ad,#2d,#00,#00,#00,#00
	db #00
;
; #78ed
; ld hl,#0f00
; call #a137
; ld b,#f5
; .l78f5
; in a,(c)
; rra
; jp nc,l78f5
; call #a248
;
.init_music			; added by Megachur
;
	ld hl,#0f00
	jp real_init_music
;
.music_info
	db "Atom Ant (1990)(Hi-Tec Software)()",0
	db "",0

	read "music_end.asm"
