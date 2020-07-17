; Music of Yogi Bear & Friends In The Greed Monster (1990)(Hi-Tec Software)(Sean Conran)()
; Ripped by Megachur the 29/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "YOBFITGM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #a45c

	read "music_header.asm"

.la45c
	dw #1144
	dw #1134,#1124,#1114,#1104
	dw #10f4,#10e3,#10d3,#10c3
	dw #10b3,#10a4,#1095,#1086
	dw #1077,#1068,#1059,#104a
	dw #103b,#102c,#101d,#100e
	dw #1000,#0ff1,#0fe2,#0fd3
	dw #0fc4,#0fb6,#0fa7,#0f99
	dw #0f8b,#0f7d,#0f6e,#0f60
	dw #0f52,#0f44,#0f35,#0f27
	dw #0f19,#0f0b,#0efc,#0eee
	dw #0ee0,#0ed3,#0ec6,#0eb9
	dw #0eac,#0e9e,#0e91,#0e84
	dw #0e77,#0e6a,#0e5d,#0e50
	dw #0e43,#0e36,#0e29,#0e1c
	dw #0e0f,#0e02,#0df5,#0de8
	dw #0ddb,#0dce,#0dc1,#0db4
	dw #0da7,#0d9a,#0d8d,#0d80
	dw #0d74,#0d67,#0d5a,#0d4d
	dw #0d40,#0d34,#0d28,#0d1c
	dw #0d10,#0d04,#0cf8,#0cec
	dw #0ce0,#0cd4,#0cc8,#0cbc
	dw #0cb0,#0ca4,#0c98,#0c8c
	dw #0c80,#0c75,#0c6a,#0c5f
	dw #0c54,#0c49,#0c3e,#0c33
	dw #0c28,#0c1d,#0c12,#0c07
	dw #0bfc,#0bf1,#0be6,#0bdb
	dw #0bd0,#0bc5,#0bbb,#0bb0
	dw #0ba6,#0b9b,#0b91,#0b86
	dw #0b7c,#0b71,#0b67,#0b5c
	dw #0b52,#0b47,#0b3d,#0b32
	dw #0b28,#0b1e,#0b14,#0b0a
	dw #0b00,#0af6,#0aec,#0ae2
	dw #0ad8,#0acd,#0ac3,#0ab9
	dw #0aaf,#0aa5,#0a9b,#0a91
	dw #0a87,#0a7e,#0a74,#0a6b
	dw #0a61,#0a58,#0a4e,#0a45
	dw #0a3b,#0a32,#0a28,#0a1f
	dw #0a15,#0a0c,#0a02,#09f9
	dw #09ef,#09e6,#09dd,#09d4
	dw #09cb,#09c2,#09b9,#09b0
	dw #09a7,#099e,#0995,#098c
	dw #0983,#097a,#0971,#0968
	dw #095f,#0957,#094f,#0946
	dw #093e,#0936,#092e,#0925
	dw #091d,#0915,#090c,#0904
	dw #08fc,#08f4,#08eb,#08e3
	dw #08db,#08d3,#08cb,#08c2
	dw #08ba,#08b2,#08aa,#08a2
	dw #089a,#0892,#088a,#0882
	dw #087a,#0872,#0869,#0861
	dw #0859,#0852,#084a,#0843
	dw #083b,#0834,#082c,#0825
	dw #081e,#0816,#080f,#0807
	dw #3011,#1963
;
.la60a
.real_init_music
;
	xor a
	ld (la74a),a
	ld a,h
	ld (labfb),a
	sla l
	ld a,l
	add a
	add l
	ld l,a
	ld h,#00
	ld de,laff0
	add hl,de
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	ld de,la62d
	ld (la6b3),de
	jp la692
.la62d
	ld de,la755
	ld (la6b3),de
	pop hl
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	ld de,la645
	ld (la6db),de
	jp la6ba
.la645
	ld de,laa7e
	ld (la6db),de
	pop hl
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld de,la65c
	ld (la702),de
	jp la6e2
.la65c
	ld de,la8a9
	ld (la702),de
	ld a,#04
	ld (lac74),a
	xor a
	ld (labe1),a
	ld (la7de),a
	ld (lab07),a
	ld (la941),a
	ld (la764),a
	ld (laa8d),a
	ld (la8b8),a
	dec a
	ld (lac21),a
	ld (la74a),a
	ld (la709),a
	ret
.la689
	ld a,(hl)
	cp b
	jr z,la704
	ld e,a
	xor a
	ld d,a
	sbc hl,de
.la692
	ld a,(hl)
	inc hl
	jp la6a0
.la698 equ $ + 1
.la697
	ld hl,#c100
	ld a,(hl)
	inc hl
	cp b
	jp z,la689
.la6a0
	ld (la698),hl
	ld de,lb011
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la756),hl
.la6b3 equ $ + 1
	jp la6bf
.la6b5
	ld e,(hl)
	ld d,#00
	sbc hl,de
.la6ba
	ld a,(hl)
	inc hl
	jp la6c8
.la6c0 equ $ + 1
.la6bf
	ld hl,#c102
	ld a,(hl)
	inc hl
	cp b
	jp z,la6b5
.la6c8
	ld (la6c0),hl
	ld de,lb01d
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (laa7f),hl
.la6db equ $ + 1
	jp la6e7
.la6dd
	ld e,(hl)
	ld d,#00
	sbc hl,de
.la6e2
	ld a,(hl)
	inc hl
	jp la6ef
.la6e8 equ $ + 1
.la6e7
	ld hl,#c104
	ld a,(hl)
	inc hl
	cp b
	jr z,la6dd
.la6ef
	ld (la6e8),hl
	ld de,lb029
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la8aa),hl
.la702 equ $ + 1
	jp la697
.la704
	inc a
	ld (la74a),a
.la709 equ $ + 1
.la708
	ld a,#00
	and a
	jp z,lad3d
	inc a
	ld (lac71),a
	ld (lac72),a
	ld (lac73),a
	ld (la709),a
	jp lad3d
;
.la71e
.play_music
;
	ld de,#f6f4
	ld l,#00
	ld bc,#f707
	ld a,#86
	out (c),a
	ld b,e
	out (c),c
	ld b,d
	ld a,#c0
	out (c),l
	out (c),a
	out (c),l
	ld b,#f7
	ld a,#96
	out (c),a
	ld b,d
	ld a,#40
	out (c),a
	ld b,e
	in c,(c)
	ld b,d
	out (c),l
	ld b,#ff
.la74a equ $ + 1
	ld a,#00
	and a
	jr z,la708
	ld hl,la764
	dec (hl)
	jp p,la833
.la756 equ $ + 1
.la755
	ld hl,#c000
.la758
	ld e,(hl)
	inc hl
	ld ix,la765
	ld d,#00
	add ix,de
	jp (ix)
.la764
	db #01
.la765
	jp la7b7
	jp la7bf
	jp la7c7
	jp la7d2
	jp la7dd
	jp la7dd
	jp la7ec
	jp la7fb
	jp la7fb
	jp la7fb
	jp la7fb
	jp la79c
	jp la7fb
	jp la7fb
	jp la802
	jp la697
	ld a,b
	ld (la839),a
	ld (la859),a
.la79c
	ld a,b
	ld (la834),a
	ld (la854),a
	ld a,(hl)
	inc hl
	ld (la867),a
	ld a,(hl)
	inc hl
	ld (la764),a
	ld (la756),hl
	set 3,c
	res 0,c
	jp la833
.la7b7
	ld a,(hl)
	inc hl
	ld (la847),a
	jp la758
.la7bf
	ld a,(hl)
	inc hl
	ld (la878),a
	jp la758
.la7c7
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la80e),de
	jp la758
.la7d2
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la821),de
	jp la758
.la7de equ $ + 1
.la7dd
	ld a,#00
	inc a
	jp nz,la758
	ld (la7de),a	; init next bloc
.la7e7 equ $ + 1
	ld hl,#ce3f
	jp la758
.la7ec
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la7e7),hl
	ld a,b
	ld (la7de),a
	ex de,hl
	jp la758
.la7fb
	ld a,b
	ld (la839),a
	ld (la859),a
.la802
	ld a,(hl)
	inc hl
	ld (la764),a
	ld (la756),hl
	jp la833
.la80e equ $ + 1
.la80d
	ld hl,#c3d1
	xor a
	ld (la839),a
	jp la840
.la817
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp la840
.la821 equ $ + 1
.la820
	ld hl,#cf3a
	xor a
	ld (la859),a
	jp la860
.la82a
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp la860
.la834 equ $ + 1
.la833
	ld a,#00
	and a
	jr z,la853
.la839 equ $ + 1
	ld a,#ff
	inc a
	jr z,la80d
.la83e equ $ + 1
	ld hl,#c5a2
.la840
	ld a,(hl)
	inc hl
	cp #80
	jr z,la817
.la847 equ $ + 1
	ld d,#01
	add d
	jp p,la84d
	xor a
.la84d
	ld (lac00),a
	ld (la83e),hl
.la854 equ $ + 1
.la853
	ld a,#00
	and a
	jr z,la8a2
.la859 equ $ + 1
	ld a,#ff
	inc a
	jr z,la820
.la85e equ $ + 1
	ld hl,#c624
.la860
	ld a,(hl)
	inc hl
	cp #80
	jr z,la82a
.la867 equ $ + 1
	ld d,#01
	add d
	ld (la85e),hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,la45c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.la878 equ $ + 1
	ld a,#01
	ld hl,la882
	add l
	ld l,a
	jr nc,la881
	inc h
.la881
	jp (hl)
.la882
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
	ld (lac69),de
.la8a2
	ld hl,la8b8
	dec (hl)
	jp p,la9ed
.la8aa equ $ + 1
.la8a9
	ld hl,#c28b
.la8ac
	ld e,(hl)
	inc hl
	ld ix,la8b9
	ld d,#00
	add ix,de
	jp (ix)
.la8b8
	ld (bc),a
.la8b9
	jp la90f
	jp la917
	jp la91f
	jp la92a
	jp la935
	jp la940
	jp la94f
	jp la95e
	jp la95e
	jp la976
	jp la980
	jp la8f0
	jp la99e
	jp la99e
	jp la9a8
	jp la6e7
	ld a,b
	ld (la9f3),a
	ld (laa13),a
.la8f0
	ld a,b
	ld (la9ee),a
	ld (laa0e),a
	xor a
	ld (laa5d),a
	ld a,(hl)
	inc hl
	ld (laa21),a
	ld a,(hl)
	inc hl
	ld (la8b8),a
	ld (la8aa),hl
	set 5,c
	res 2,c
	jp la9ed
.la90f
	ld a,(hl)
	inc hl
	ld (laa01),a
	jp la8ac
.la917
	ld a,(hl)
	inc hl
	ld (laa32),a
	jp la8ac
.la91f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la9b4),de
	jp la8ac
.la92a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la9c7),de
	jp la8ac
.la935
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la9da),de
	jp la8ac
.la941 equ $ + 1
.la940
	ld a,#00
	inc a
	jp nz,la8ac
	ld (la941),a
.la94a equ $ + 1
	ld hl,#c64a
	jp la8ac
.la94f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la94a),hl
	ld a,b
	ld (la941),a
	ex de,hl
	jp la8ac
.la95e
	xor a
	ld (la9ee),a
	ld (laa0e),a
	ld (laa5d),a
	ld (lac14),a
	ld a,(hl)
	inc hl
	ld (la8b8),a
	ld (la8aa),hl
	jp laa77
.la976
	ld a,b
	ld (la9f3),a
	ld (laa13),a
	ld (laa62),a
.la980
	ld a,b
	ld (la9ee),a
	ld (laa0e),a
	ld (laa5d),a
	ld a,(hl)
	inc hl
	ld (laa21),a
	ld a,(hl)
	inc hl
	ld (la8b8),a
	ld (la8aa),hl
	res 5,c
	res 2,c
	jp la9ed
.la99e
	ld a,b
	ld (la9f3),a
	ld (laa13),a
	ld (laa62),a
.la9a8
	ld a,(hl)
	inc hl
	ld (la8b8),a
	ld (la8aa),hl
	jp la9ed
.la9b4 equ $ + 1
.la9b3
	ld hl,#c90c
	xor a
	ld (la9f3),a
	jp la9fa
.la9bd
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp la9fa
.la9c7 equ $ + 1
.la9c6
	ld hl,#c351
	xor a
	ld (laa13),a
	jp laa1a
.la9d0
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp laa1a
.la9da equ $ + 1
.la9d9
	ld hl,#c0dd
	xor a
	ld (laa62),a
	jp laa6a
.la9e3
	ld e,(hl)
	inc e
	ld d,#00
	and a
	sbc hl,de
	jp laa6a
.la9ee equ $ + 1
.la9ed
	ld a,#00
	and a
	jr z,laa0d
.la9f3 equ $ + 1
	ld a,#ff
	inc a
	jr z,la9b3
.la9f8 equ $ + 1
	ld hl,#c427
.la9fa
	ld a,(hl)
	inc hl
	cp #80
	jr z,la9bd
.laa01 equ $ + 1
	ld d,#02
	add d
	jp p,laa07
	xor a
.laa07
	ld (lac14),a
	ld (la9f8),hl
.laa0e equ $ + 1
.laa0d
	ld a,#00
	and a
	jr z,laa5c
.laa13 equ $ + 1
	ld a,#ff
	inc a
	jr z,la9c6
.laa18 equ $ + 1
	ld hl,#c7f9
.laa1a
	ld a,(hl)
	inc hl
	cp #80
	jr z,la9d0
.laa21 equ $ + 1
	ld d,#02
	add d
	ld (laa18),hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,la45c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.laa32 equ $ + 1
	ld a,#02
	ld hl,laa3c
	add l
	ld l,a
	jr nc,laa3b
	inc h
.laa3b
	jp (hl)
.laa3c
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
	ld (lac6d),de
.laa5d equ $ + 1
.laa5c
	ld a,#00
	and a
	jr z,laa77
.laa62 equ $ + 1
	ld a,#ff
	inc a
	jp z,la9d9
.laa68 equ $ + 1
	ld hl,#c003
.laa6a
	ld a,(hl)
	inc hl
	cp #80
	jp z,la9e3
	ld (lac6f),a
	ld (laa68),hl
.laa77
	ld hl,laa8d
	dec (hl)
	jp p,lab71
.laa7f equ $ + 1
.laa7e
	ld hl,#c5da
.laa81
	ld e,(hl)
	inc hl
	ld ix,laa8e
	ld d,#00
	add ix,de
	jp (ix)
.laa8d
	inc bc
.laa8e
	jp laae0
	jp laae8
	jp laaf0
	jp laafb
	jp lab06
	jp lab06
	jp lab15
	jp lab24
	jp lab24
	jp lab39
	jp lab39
	jp laac5
	jp lab39
	jp lab39
	jp lab40
	jp la6bf
	ld a,b
	ld (lab77),a
	ld (lab97),a
.laac5
	ld a,b
	ld (lab72),a
	ld (lab92),a
	ld a,(hl)
	inc hl
	ld (laba5),a
	ld a,(hl)
	inc hl
	ld (laa8d),a
	ld (laa7f),hl
	set 4,c
	res 1,c
	jp lab71
.laae0
	ld a,(hl)
	inc hl
	ld (lab85),a
	jp laa81
.laae8
	ld a,(hl)
	inc hl
	ld (labb6),a
	jp laa81
.laaf0
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lab4c),de
	jp laa81
.laafb
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lab5f),de
	jp laa81
.lab07 equ $ + 1
.lab06
	ld a,#00
	inc a
	jp nz,laa81
	ld (lab07),a
.lab10 equ $ + 1
	ld hl,#c621
	jp laa81
.lab15
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lab10),hl
	ld a,b
	ld (lab07),a
	ex de,hl
	jp laa81
.lab24
	xor a
	ld (lab72),a
	ld (lab92),a
	ld (lac0a),a
	ld a,(hl)
	inc hl
	ld (laa8d),a
	ld (laa7f),hl
	jp labe0
.lab39
	ld a,b
	ld (lab77),a
	ld (lab97),a
.lab40
	ld a,(hl)
	inc hl
	ld (laa8d),a
	ld (laa7f),hl
	jp lab71
.lab4c equ $ + 1
.lab4b
	ld hl,#c7fd
	xor a
	ld (lab77),a
	jp lab7e
.lab55
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp lab7e
.lab5f equ $ + 1
.lab5e
	ld hl,#c2a0
	xor a
	ld (lab97),a
	jp lab9e
.lab68
	ld e,(hl)
	inc e
	ld d,#00
	sbc hl,de
	jp lab9e
.lab72 equ $ + 1
.lab71
	ld a,#00
	and a
	jr z,lab91
.lab77 equ $ + 1
	ld a,#ff
	inc a
	jr z,lab4b
.lab7c equ $ + 1
	ld hl,#c38b
.lab7e
	ld a,(hl)
	inc hl
	cp #80
	jr z,lab55
.lab85 equ $ + 1
	ld d,#03
	add d
	jp p,lab8b
	xor a
.lab8b
	ld (lac0a),a
	ld (lab7c),hl
.lab92 equ $ + 1
.lab91
	ld a,#00
	and a
	jr z,labe0
.lab97 equ $ + 1
	ld a,#ff
	inc a
	jr z,lab5e
.lab9c equ $ + 1
	ld hl,#cecd
.lab9e
	ld a,(hl)
	inc hl
	cp #80
	jr z,lab68
.laba5 equ $ + 1
	ld d,#03
	add d
	ld (lab9c),hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,la45c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.labb6 equ $ + 1
	ld a,#03
	ld hl,labc0
	add l
	ld l,a
	jr nc,labbf
	inc h
.labbf
	jp (hl)
.labc0
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
	ld (lac6b),de
.labe1 equ $ + 1
.labe0
	ld a,#00
	and a
	jp z,labfa
	ld hl,lac74
	dec (hl)
	jp nz,labfa
	ld (hl),#04
	ld hl,labfb
	dec (hl)
	jp nz,labfa
	xor a
	ld (la74a),a
.labfb equ $ + 1
.labfa
	ld a,#0f
	sub #0f
	ld d,a
.lac00 equ $ + 1
	ld a,#01
	add d
	jp p,lac06
	xor a
.lac06
	ld (lac71),a
.lac0a equ $ + 1
	ld a,#02
	add d
	jp p,lac10
	xor a
.lac10
	ld (lac72),a
.lac14 equ $ + 1
	ld a,#03
	add d
	jp p,lac1a
	xor a
.lac1a
	ld (lac73),a
	jp lad3d
.lac21 equ $ + 1
.lac20
	ld a,#00
	and a
	ret z
	ld a,c
	ld (lac70),a
	ld hl,lac73
	ld de,#f600
	ld bc,#f70a
	ld a,#86
	out (c),a
.lac35
	ld b,#f4
	out (c),c
	ld b,d
	ld a,#c0
	out (c),a
	out (c),e
	ld b,#f4
	ld a,(hl)
	out (c),a
	ld b,d
	ld a,#80
	out (c),a
	out (c),e
	dec hl
	dec c
	jp p,lac35
	ld a,(la74a)
	and a
	ret nz
	ld a,(lac75)
	and a
	ret nz
	ld a,(lac76)
	and a
	ret nz
	ld a,(lac77)
	and a
	ret nz
	ld (lac21),a
	ret
.lac70 equ $ + 7
.lac6f equ $ + 6
.lac6d equ $ + 4
.lac6b equ $ + 2
.lac69
	db #00,#00,#00,#00,#00,#00,#00,#00
.lac78 equ $ + 7
.lac77 equ $ + 6
.lac76 equ $ + 5
.lac75 equ $ + 4
.lac74 equ $ + 3
.lac73 equ $ + 2
.lac72 equ $ + 1
.lac71
	db #00,#00,#00,#00,#00,#00,#00,#ff
.lac7c equ $ + 3
.lac7b equ $ + 2
.lac7a equ $ + 1
.lac79
	db #ff,#03,#00,#00,#00
	xor a
	ld (lac75),a
	ld (lac76),a
	ld (lac77),a
	dec a
	ld (lac78),a
	ld (lac79),a
	ret
	push af
	push bc
	push de
	ld a,h
	ld (lac7b),a
	ld e,l
	ld d,#00
	sla e
	ld hl,lbe20
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (lac7c),de
	ld a,(lac7a)
	cp #02
	jp c,lacfd
	jp z,lace1
	ld a,(lac75)
	and a
	jp z,lacfd
	ld a,(lac76)
	and a
	jp z,lad15
	ld a,(lac77)
	and a
	jp z,lad29
	ld hl,lac79
	ld a,(hl)
	and a
	jp m,lacdc
	jp z,lacd7
	ld (hl),#ff
	jp lad29
.lacd7
	ld (hl),#01
	jp lad15
.lacdc
	ld (hl),#00
	jp lacfd
.lace1
	ld a,(lac75)
	and a
	jp z,lacfd
	ld a,(lac76)
	and a
	jp z,lad15
	ld hl,lac78
	ld a,(hl)
	jp m,lacfb
	ld (hl),#ff
	jp lad15
.lacfb
	ld (hl),#00
.lacfd
	ld a,(lac7b)
	ld (ladb1),a
	ld hl,(lac7c)
	ld (lad53),hl
	ld a,#ff
	ld (lac75),a
.lad0e
	ld (lac21),a
	pop de
	pop bc
	pop af
	ret
.lad15
	ld a,(lac7b)
	ld (lae90),a
	ld hl,(lac7c)
	ld (lae33),hl
	ld a,#ff
	ld (lac76),a
	jp lad0e
.lad29
	ld a,(lac7b)
	ld (laf6f),a
	ld hl,(lac7c)
	ld (laf12),hl
	ld a,#ff
	ld (lac77),a
	jp lad0e
.lad3d
	ld a,(lac77)
	and a
	jp nz,laf11
.lad44
	ld a,(lac76)
	and a
	jp nz,lae32
.lad4b
	ld a,(lac75)
	and a
	jp z,lac20
.lad53 equ $ + 1
	ld hl,#d566
.lad55
	ld a,(hl)
	inc hl
	ld (lad53),hl
	cp #10
	jp nc,lad69
	and a
	jp z,lade1
	ld (ladb5),a
	jp lad55
.lad69
	ld l,a
.lad6b equ $ + 1
	ld a,#ff
	and a
	jp m,ladc2
	ld h,#00
	add hl,hl
	ld de,la45c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.lad7b equ $ + 1
	ld a,#01
	ld hl,lad86
	add l
	ld l,a
	jp nc,lad85
	inc h
.lad85
	jp (hl)
.lad86
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
	ld (lac6d),de
.lada7 equ $ + 1
	ld a,#ff
	and a
	jp m,ladcf
	set 5,c
	res 2,c
.ladb1 equ $ + 1
.ladb0
	ld a,#00
	sub #0f
.ladb5 equ $ + 1
	ld l,#00
	add l
	and a
	jp p,ladbc
	xor a
.ladbc
	ld (lac73),a
	jp lac20
.ladc2
	ld a,l
	sub #20
	ld (lac6f),a
	res 5,c
	set 2,c
	jp ladb0
.ladcf
	ld hl,(lad53)
	ld a,(hl)
	inc hl
	ld (lad53),hl
	ld (lac6f),a
	res 5,c
	res 2,c
	jp ladb0
.lade1
	ld e,(hl)
	inc hl
	ld ix,laded
	ld d,#00
	add ix,de
	jp (ix)
.laded
	jp lae07
	jp lae11
	jp lae1c
	jp lae24
	jp lae24
	jp lae32
	ld a,(hl)
	inc hl
	ld (lad7b),a
	jp lad55
.lae07
	xor a
	ld (lad6b),a
	ld (lada7),a
	jp lad55
.lae11
	xor a
	ld (lad6b),a
	dec a
	ld (lada7),a
	jp lad55
.lae1c
	ld a,#ff
	ld (lad6b),a
	jp lad55
.lae24
	xor a
	ld (lac75),a
	ld (lac73),a
	set 5,c
	set 2,c
	jp lac20
.lae33 equ $ + 1
.lae32
	ld hl,#d566
.lae35
	ld a,(hl)
	inc hl
	ld (lae33),hl
	cp #10
	jp nc,lae49
	and a
	jp z,laec0
	ld (lae94),a
	jp lae35
.lae49
	ld l,a
.lae4b equ $ + 1
	ld a,#ff
	and a
	jp m,laea1
	ld h,#00
	add hl,hl
	ld de,la45c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.lae5b equ $ + 1
	ld a,#02
	ld hl,lae65
	add l
	ld l,a
	jr nc,lae64
	inc h
.lae64
	jp (hl)
.lae65
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
	ld (lac69),de
.lae86 equ $ + 1
	ld a,#ff
	and a
	jp m,laeae
	set 3,c
	res 0,c
.lae90 equ $ + 1
.lae8f
	ld a,#00
	sub #0f
.lae94 equ $ + 1
	ld l,#00
	add l
	and a
	jp p,lae9b
	xor a
.lae9b
	ld (lac71),a
	jp lad4b
.laea1
	ld a,l
	sub #20
	ld (lac6f),a
	res 3,c
	set 0,c
	jp lae8f
.laeae
	ld hl,(lae33)
	ld a,(hl)
	inc hl
	ld (lae33),hl
	ld (lac6f),a
	res 3,c
	res 0,c
	jp lae8f
.laec0
	ld e,(hl)
	inc hl
	ld ix,laecc
	ld d,#00
	add ix,de
	jp (ix)
.laecc
	jp laee6
	jp laef0
	jp laefb
	jp laf03
	jp laf03
	jp laf11
	ld a,(hl)
	inc hl
	ld (lae5b),a
	jp lae35
.laee6
	xor a
	ld (lae4b),a
	ld (lae86),a
	jp lae35
.laef0
	xor a
	ld (lae4b),a
	dec a
	ld (lae86),a
	jp lae35
.laefb
	ld a,#ff
	ld (lae4b),a
	jp lae35
.laf03
	xor a
	ld (lac76),a
	ld (lac71),a
	set 3,c
	set 0,c
	jp lad4b
.laf12 equ $ + 1
.laf11
	ld hl,#d566
.laf14
	ld a,(hl)
	inc hl
	ld (laf12),hl
	cp #10
	jp nc,laf28
	and a
	jp z,laf9f
	ld (laf73),a
	jp laf14
.laf28
	ld l,a
.laf2a equ $ + 1
	ld a,#ff
	and a
	jp m,laf80
	ld h,#00
	add hl,hl
	ld de,la45c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.laf3a equ $ + 1
	ld a,#03
	ld hl,laf44
	add l
	ld l,a
	jr nc,laf43
	inc h
.laf43
	jp (hl)
.laf44
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
	ld (lac6b),de
.laf65 equ $ + 1
	ld a,#ff
	and a
	jp m,laf8d
	set 4,c
	res 1,c
.laf6f equ $ + 1
.laf6e
	ld a,#00
	sub #0f
.laf73 equ $ + 1
	ld l,#00
	add l
	and a
	jp p,laf7a
	xor a
.laf7a
	ld (lac72),a
	jp lad44
.laf80
	ld a,l
	sub #20
	ld (lac6f),a
	res 4,c
	set 1,c
	jp laf6e
.laf8d
	ld hl,(laf12)
	ld a,(hl)
	inc hl
	ld (laf12),hl
	ld (lac6f),a
	res 4,c
	res 1,c
	jp laf6e
.laf9f
	ld e,(hl)
	inc hl
	ld ix,lafab
	ld d,#00
	add ix,de
	jp (ix)
.lafab
	jp lafc5
	jp lafcf
	jp lafda
	jp lafe2
	jp lafe2
	jp laff0
	ld a,(hl)
	inc hl
	ld (laf3a),a
	jp laf14
.lafc5
	xor a
	ld (laf2a),a
	ld (laf65),a
	jp laf14
.lafcf
	xor a
	ld (laf2a),a
	dec a
	ld (laf65),a
	jp laf14
.lafda
	ld a,#ff
	ld (laf2a),a
	jp laf14
.lafe2
	xor a
	ld (lac77),a
	ld (lac72),a
	set 4,c
	set 1,c
	jp lad44
.laff0
	dw laffc,laffc,lb004,lb00e
	dw lb00e,lb00e
.laffc
	db #00,#01,#01,#02,#03,#04,#ff,#06
.lb004
	db #00,#01,#06,#01,#07,#02,#03,#04
	db #ff,#08
.lb00e
	db #05,#ff,#ff
.lb011
	dw lb125,lb176,lb239,lb317
.lb01d equ $ + 4
	dw lb3e9,lbcc6,lb4cb,lb508
	dw lb599,lb69e,lb72f,lbd2b
.lb029
	dw lb834,lb8bb,lb993,lbac1
	dw lbbe2,lbdb8,lb98b,lb98f
	dw #0000
	db #ff,#fe,#fd,#fc,#fd,#fe,#fe,#fd
	db #fc,#fb,#fa,#fb,#80,#04,#00,#00
	db #00,#00,#ff,#ff,#ff,#fe,#fe,#fe
	db #fe,#fd,#fd,#fd,#fc,#fc,#fc,#fc
	db #fb,#fb,#fb,#fa,#fa,#fa,#fa,#f9
	db #f9,#f9,#f8,#f8,#f8,#f8,#f7,#f7
	db #f7,#f6,#f6,#f6,#f6,#f5,#f4,#f3
	db #80,#02,#00,#00,#00,#ff,#ff,#fe
	db #fd,#fe,#fe,#fe,#fd,#fd,#fc,#fb
	db #fc,#fc,#fc,#fb,#fb,#fa,#f9,#80
	db #15,#00,#01,#02,#01,#ff,#fe,#ff
	db #00,#02,#04,#02,#fe,#fc,#fe,#80
	db #0e,#02,#04,#06,#08,#06,#04,#02
	db #fe,#fc,#fa,#f8,#fa,#fc,#fe,#80
	db #0e,#f0,#f8,#fc,#00,#01,#02,#01
	db #00,#fe,#fc,#fe,#02,#04,#02,#00
	db #fd,#fa,#fd,#03,#06,#03,#00,#fc
	db #f8,#fc,#04,#08,#04,#00,#fb,#f6
	db #fb,#05,#0a,#05,#00,#fa,#f4,#fa
	db #06,#0c,#06,#80,#0e,#08,#04,#02
	db #00,#ff,#fe,#fd,#03,#02,#01,#00
	db #fe,#fc,#fa,#06,#04,#02,#00,#fd
	db #fa,#f7,#80,#15,#1e,#00,#80,#02
	db #20,#73,#6f,#75,#6e,#64,#20,#72
	db #6f,#75,#74,#69,#6e,#65,#73,#2c
	db #20,#6d,#75,#73,#69,#63,#20,#61
	db #6e,#64,#20,#46,#58,#20,#28,#63
	db #29,#53,#65,#61,#6e,#20,#43,#6f
	db #6e,#72,#61,#6e,#20,#31,#39,#39
	db #30,#20
.lb125
	db #09,#ac,#b0,#06,#49,#b0,#03,#0c
	db #00,#0d,#30,#48,#06,#30,#68,#0d
	db #30,#98,#06,#00,#0a,#27,#0d,#00
	db #0d,#27,#06,#00,#0a,#27,#0d,#00
	db #0d,#27,#06,#00,#0a,#27,#0d,#00
	db #0d,#30,#b8,#06,#03,#08,#30,#18
	db #0d,#30,#48,#06,#00,#0a,#27,#14
	db #00,#0d,#30,#48,#0d,#30,#48,#06
	db #30,#68,#0d,#30,#98,#06,#00,#0a
	db #27,#0d,#00,#0d,#30,#18,#06,#0f
.lb176 equ $ + 1
	db #2d,#00,#0a,#27,#0d,#03,#0c,#00
	db #0d,#30,#b8,#06,#00,#0a,#27,#0d
	db #00,#0d,#30,#98,#06,#00,#0a,#27
	db #0d,#00,#0d,#30,#48,#06,#00,#0a
	db #27,#0d,#00,#0d,#27,#06,#30,#68
	db #0d,#30,#98,#06,#00,#0a,#27,#0d
	db #00,#0d,#30,#28,#06,#00,#0a,#27
	db #0d,#00,#0d,#30,#68,#06,#30,#98
	db #0d,#03,#08,#30,#28,#06,#0f,#00
	db #0a,#27,#0d,#00,#0d,#30,#18,#06
	db #00,#0a,#27,#0d,#03,#0c,#00,#0d
	db #30,#b8,#06,#00,#0a,#27,#0d,#00
	db #0d,#30,#98,#06,#00,#0a,#27,#0d
	db #00,#0d,#30,#48,#06,#0f,#30,#68
	db #0d,#30,#98,#06,#00,#0a,#27,#0d
	db #03,#10,#00,#0d,#30,#98,#06,#00
	db #0a,#27,#0d,#03,#0c,#00,#0d,#30
	db #68,#06,#30,#98,#0d,#03,#08,#30
	db #28,#06,#12,#bc,#b1,#12,#9b,#b1
	db #00,#0a,#27,#0d,#00,#0d,#30,#48
	db #06,#00,#0a,#27,#0d,#00,#0d,#30
	db #18,#06,#03,#0c,#30,#b8,#0d,#30
	db #98,#06,#30,#88,#0d,#30,#98,#06
	db #00,#0a,#27,#22,#03,#08,#00,#0d
.lb239 equ $ + 4
	db #12,#62,#b1,#2d,#00,#0a,#27,#14
	db #00,#0d,#30,#18,#06,#00,#0a,#27
	db #0d,#00,#0d,#27,#06,#00,#0a,#27
	db #0d,#03,#0c,#00,#0d,#30,#a8,#0d
	db #00,#0b,#30,#88,#06,#0f,#03,#08
	db #00,#0d,#30,#18,#06,#00,#0a,#27
	db #0d,#12,#3d,#b2,#00,#0d,#30,#68
	db #0d,#00,#0b,#27,#06,#00,#0d,#30
	db #98,#0d,#00,#0b,#30,#a8,#06,#03
	db #08,#00,#0d,#30,#18,#0d,#00,#0b
	db #27,#06,#00,#0d,#30,#38,#0d,#00
	db #0b,#30,#18,#06,#00,#0d,#30,#68
	db #0d,#00,#0b,#27,#06,#00,#0d,#30
	db #38,#0d,#00,#0b,#30,#18,#06,#0f
	db #12,#91,#b2,#03,#0c,#00,#0d,#30
	db #b8,#06,#00,#0a,#27,#0d,#00,#0d
	db #27,#06,#00,#0a,#27,#0d,#00,#0d
	db #27,#06,#00,#0a,#27,#0d,#00,#0d
	db #30,#88,#0d,#00,#0b,#30,#68,#06
	db #0f,#12,#a8,#b2,#03,#08,#00,#0d
	db #30,#48,#0d,#00,#0b,#27,#06,#03
	db #0c,#00,#0d,#30,#78,#0d,#00,#0b
	db #30,#88,#06,#00,#0d,#30,#b8,#0d
	db #00,#0b,#27,#06,#03,#08,#00,#0d
	db #30,#18,#0d,#30,#28,#06,#00,#0a
	db #27,#14,#00,#0d,#30,#38,#0d,#30
	db #58,#06,#30,#78,#0d,#30,#a8,#06
	db #00,#0a,#27,#0d,#00,#0d,#30,#28
.lb317 equ $ + 2
	db #06,#2d,#00,#0a,#27,#0d,#03,#0c
	db #00,#0d,#30,#c8,#06,#00,#0a,#27
	db #0d,#00,#0d,#30,#a8,#06,#00,#0a
	db #27,#0d,#00,#0d,#30,#58,#06,#00
	db #0a,#27,#0d,#00,#0d,#27,#06,#30
	db #78,#0d,#30,#a8,#06,#00,#0a,#27
	db #0d,#00,#0d,#30,#38,#06,#00,#0a
	db #27,#0d,#00,#0d,#30,#78,#06,#30
	db #a8,#0d,#03,#08,#30,#38,#06,#0f
	db #00,#0a,#27,#0d,#00,#0d,#30,#28
	db #06,#00,#0a,#27,#0d,#03,#0c,#00
	db #0d,#30,#c8,#06,#00,#0a,#27,#0d
	db #00,#0d,#30,#a8,#06,#00,#0a,#27
	db #0d,#00,#0d,#30,#58,#06,#0f,#30
	db #78,#0d,#30,#a8,#06,#00,#0a,#27
	db #0d,#03,#10,#00,#0d,#30,#a8,#06
	db #00,#0a,#27,#0d,#03,#0c,#00,#0d
	db #30,#78,#06,#30,#a8,#0d,#03,#08
	db #30,#38,#06,#12,#5d,#b3,#12,#3c
	db #b3,#00,#0a,#27,#0d,#00,#0d,#30
	db #58,#06,#00,#0a,#27,#0d,#00,#0d
	db #30,#28,#06,#03,#0c,#30,#c8,#0d
	db #30,#a8,#06,#30,#98,#0d,#30,#a8
	db #06,#00,#0a,#27,#22,#03,#08,#00
	db #0d,#30,#58,#06,#30,#78,#0d,#30
	db #a8,#06,#00,#0a,#27,#0d,#00,#0d
.lb3e9 equ $ + 4
	db #30,#28,#06,#2d,#00,#0a,#27,#14
	db #00,#0d,#30,#28,#06,#00,#0a,#27
	db #0d,#00,#0d,#27,#06,#00,#0a,#27
	db #0d,#03,#0c,#00,#0d,#30,#b8,#0d
	db #00,#0b,#30,#98,#06,#0f,#03,#08
	db #00,#0d,#30,#28,#06,#00,#0a,#27
	db #0d,#12,#ed,#b3,#00,#0d,#30,#78
	db #0d,#00,#0b,#27,#06,#00,#0d,#30
	db #a8,#0d,#00,#0b,#30,#b8,#06,#03
	db #08,#00,#0d,#30,#28,#0d,#00,#0b
	db #27,#06,#00,#0d,#30,#48,#0d,#00
	db #0b,#30,#28,#06,#00,#0d,#30,#78
	db #0d,#00,#0b,#27,#06,#00,#0d,#30
	db #48,#0d,#00,#0b,#30,#28,#06,#0f
	db #12,#41,#b4,#03,#0c,#00,#0d,#30
	db #c8,#06,#00,#0a,#27,#0d,#00,#0d
	db #27,#06,#00,#0a,#27,#0d,#00,#0d
	db #27,#06,#00,#0a,#27,#0d,#00,#0d
	db #30,#98,#0d,#00,#0b,#30,#78,#06
	db #0f,#12,#58,#b4,#03,#08,#00,#0d
	db #30,#58,#0d,#00,#0b,#27,#06,#03
	db #0c,#00,#0d,#30,#88,#0d,#00,#0b
	db #30,#98,#06,#00,#0d,#30,#c8,#0d
	db #00,#0b,#27,#06,#03,#08,#00,#0d
	db #30,#28,#0d,#03,#0c,#30,#c8,#06
	db #00,#0a,#27,#14,#03,#08,#00,#0d
	db #30,#28,#0d,#30,#48,#06,#30,#68
	db #0d,#30,#98,#06,#00,#0a,#27,#0d
.lb4cb equ $ + 6
	db #00,#0d,#30,#18,#06,#2d,#09,#d8
	db #b0,#06,#75,#b0,#18,#1b,#03,#1c
	db #00,#0f,#30,#98,#0d,#00,#0e,#27
	db #06,#03,#18,#00,#0f,#30,#18,#0d
	db #00,#0e,#27,#06,#00,#0f,#30,#28
	db #0d,#00,#0e,#27,#06,#00,#0f,#30
	db #38,#0d,#00,#0e,#27,#06,#00,#0f
	db #30,#48,#0d,#18,#06,#30,#48,#14
.lb508 equ $ + 3
	db #18,#29,#2d,#03,#1c,#00,#0f,#30
	db #98,#0d,#00,#0e,#27,#06,#00,#0f
	db #27,#0d,#00,#0e,#27,#06,#00,#0f
	db #27,#0d,#00,#0e,#27,#06,#00,#0f
	db #27,#0d,#03,#18,#00,#0e,#30,#18
	db #06,#00,#0f,#30,#28,#0d,#00,#0e
	db #27,#06,#00,#0f,#27,#0d,#00,#0e
	db #27,#06,#00,#0f,#27,#0d,#00,#0e
	db #27,#06,#03,#1c,#00,#0f,#30,#68
	db #0d,#30,#78,#06,#0f,#12,#08,#b5
	db #12,#08,#b5,#30,#98,#0d,#00,#0e
	db #27,#06,#00,#0f,#27,#0d,#03,#18
	db #00,#0e,#30,#18,#06,#00,#0f,#30
	db #48,#0d,#03,#1c,#00,#0e,#30,#b8
	db #06,#03,#18,#00,#0f,#30,#48,#06
	db #00,#0e,#30,#18,#06,#03,#1c,#30
	db #b8,#06,#00,#0f,#30,#98,#14,#00
	db #0d,#27,#14,#00,#0b,#27,#14,#00
.lb599 equ $ + 4
	db #09,#27,#14,#2d,#03,#18,#00,#0f
	db #30,#18,#0d,#00,#0e,#27,#06,#00
	db #0f,#27,#0d,#00,#0e,#27,#06,#00
	db #0f,#27,#0d,#00,#0e,#27,#06,#00
	db #0f,#27,#0d,#03,#1c,#30,#88,#06
	db #03,#18,#30,#18,#0d,#00,#0e,#27
	db #06,#00,#0f,#27,#0d,#00,#0e,#27
	db #06,#00,#0f,#27,#0d,#00,#0e,#27
	db #06,#03,#1c,#00,#0f,#30,#a8,#0d
	db #30,#88,#06,#00,#0f,#30,#68,#0d
	db #00,#0e,#27,#06,#00,#0f,#30,#98
	db #0d,#00,#0e,#30,#a8,#06,#03,#18
	db #00,#0f,#30,#18,#0d,#00,#0e,#27
	db #06,#00,#0f,#30,#38,#0d,#00,#0e
	db #30,#18,#06,#03,#1c,#0f,#12,#e0
	db #b5,#00,#0f,#30,#b8,#0d,#00,#0e
	db #27,#06,#00,#0f,#27,#0d,#00,#0e
	db #27,#06,#00,#0f,#27,#0d,#00,#0e
	db #27,#06,#00,#0f,#27,#0d,#30,#68
	db #06,#30,#b8,#0d,#00,#0e,#27,#06
	db #03,#18,#00,#0f,#30,#18,#0d,#00
	db #0e,#27,#06,#00,#0f,#30,#28,#0d
	db #00,#0e,#27,#06,#00,#0f,#30,#38
	db #0d,#00,#0e,#27,#06,#00,#0f,#30
	db #48,#0d,#00,#0e,#27,#06,#03,#1c
	db #00,#0f,#30,#78,#0d,#00,#0e,#30
	db #88,#06,#00,#0f,#30,#b8,#0d,#00
	db #0e,#27,#06,#03,#18,#00,#0f,#30
	db #18,#0d,#30,#58,#06,#2a,#0d,#00
	db #0e,#27,#06,#00,#0f,#30,#38,#0d
	db #00,#0e,#27,#06,#00,#0f,#30,#28
	db #0d,#00,#0e,#27,#06,#03,#1c,#00
	db #0f,#30,#c8,#0d,#00,#0e,#27,#06
.lb69e equ $ + 1
	db #2d,#03,#1c,#00,#0f,#30,#a8,#0d
	db #00,#0e,#27,#06,#00,#0f,#27,#0d
	db #00,#0e,#27,#06,#00,#0f,#27,#0d
	db #00,#0e,#27,#06,#00,#0f,#27,#0d
	db #03,#18,#00,#0e,#30,#28,#06,#00
	db #0f,#30,#38,#0d,#00,#0e,#27,#06
	db #00,#0f,#27,#0d,#00,#0e,#27,#06
	db #00,#0f,#27,#0d,#00,#0e,#27,#06
	db #03,#1c,#00,#0f,#30,#78,#0d,#30
	db #88,#06,#0f,#12,#9e,#b6,#12,#9e
	db #b6,#30,#a8,#0d,#00,#0e,#27,#06
	db #00,#0f,#27,#0d,#03,#18,#00,#0e
	db #30,#28,#06,#00,#0f,#30,#58,#0d
	db #03,#1c,#00,#0e,#30,#c8,#06,#03
	db #18,#00,#0f,#30,#58,#06,#00,#0e
	db #30,#28,#06,#03,#1c,#30,#c8,#06
	db #00,#0f,#30,#a8,#14,#00,#0d,#27
	db #14,#00,#0b,#27,#14,#00,#09,#27
.lb72f equ $ + 2
	db #14,#2d,#03,#18,#00,#0f,#30,#28
	db #0d,#00,#0e,#27,#06,#00,#0f,#27
	db #0d,#00,#0e,#27,#06,#00,#0f,#27
	db #0d,#00,#0e,#27,#06,#00,#0f,#27
	db #0d,#03,#1c,#30,#98,#06,#03,#18
	db #30,#28,#0d,#00,#0e,#27,#06,#00
	db #0f,#27,#0d,#00,#0e,#27,#06,#00
	db #0f,#27,#0d,#00,#0e,#27,#06,#03
	db #1c,#00,#0f,#30,#b8,#0d,#30,#98
	db #06,#00,#0f,#30,#78,#0d,#00,#0e
	db #27,#06,#00,#0f,#30,#a8,#0d,#00
	db #0e,#30,#b8,#06,#03,#18,#00,#0f
	db #30,#28,#0d,#00,#0e,#27,#06,#00
	db #0f,#30,#48,#0d,#00,#0e,#30,#28
	db #06,#03,#1c,#0f,#12,#76,#b7,#00
	db #0f,#30,#c8,#0d,#00,#0e,#27,#06
	db #00,#0f,#27,#0d,#00,#0e,#27,#06
	db #00,#0f,#27,#0d,#00,#0e,#27,#06
.lb7c3 equ $ + 6
	db #00,#0f,#27,#0d,#30,#78,#06,#30
	db #c8,#0d,#00,#0e,#27,#06,#03,#18
	db #00,#0f,#30,#28,#0d,#00,#0e,#27
	db #06,#00,#0f,#30,#38,#0d,#00,#0e
	db #27,#06,#00,#0f,#30,#48,#0d,#00
	db #0e,#27,#06,#00,#0f,#30,#58,#0d
	db #00,#0e,#27,#06,#03,#1c,#00,#0f
	db #30,#88,#0d,#00,#0e,#30,#98,#06
	db #00,#0f,#30,#c8,#0d,#00,#0e,#27
	db #06,#03,#18,#00,#0f,#30,#28,#0d
	db #30,#48,#06,#2a,#0d,#00,#0e,#27
	db #06,#00,#0f,#30,#28,#0d,#00,#0e
	db #27,#06,#00,#0f,#30,#18,#0d,#00
	db #0e,#27,#06,#03,#1c,#00,#0f,#30
.lb834 equ $ + 7
	db #b8,#0d,#00,#0e,#27,#06,#2d,#18
	db #1b,#09,#8c,#b0,#06,#39,#b0,#0c
	db #ef,#b0,#00,#0d,#03,#0c,#1b,#18
	db #01,#21,#48,#00,#21,#18,#00,#21
	db #48,#00,#21,#18,#00,#21,#48,#00
	db #21,#18,#00,#21,#48,#00,#21,#18
	db #00,#21,#48,#00,#21,#18,#00,#21
	db #48,#01,#03,#10,#0f,#30,#98,#06
	db #12,#41,#b8,#30,#98,#06,#12,#41
	db #b8,#30,#98,#06,#12,#41,#b8,#30
	db #98,#06,#03,#0c,#1b,#48,#01,#21
	db #88,#00,#21,#48,#00,#21,#88,#00
	db #21,#48,#00,#21,#88,#00,#21,#48
	db #00,#21,#88,#00,#21,#48,#00,#21
	db #88,#00,#21,#48,#00,#21,#88,#01
	db #03,#10,#0f,#18,#06,#12,#7f,#b8
	db #18,#14,#00,#0c,#30,#98,#06,#30
.lb8bb equ $ + 6
	db #b8,#0d,#30,#98,#06,#2d,#00,#0d
	db #12,#41,#b8,#30,#98,#06,#12,#41
	db #b8,#30,#98,#06,#12,#41,#b8,#30
	db #98,#06,#1b,#b8,#01,#21,#b8,#0b
	db #30,#98,#06,#0f,#03,#0c,#1b,#28
	db #01,#21,#68,#00,#21,#28,#00,#21
	db #68,#00,#21,#28,#00,#21,#68,#00
	db #21,#28,#00,#21,#68,#00,#21,#28
	db #00,#21,#68,#00,#21,#28,#00,#21
	db #68,#01,#03,#10,#0f,#30,#98,#06
	db #12,#d9,#b8,#30,#98,#06,#12,#d9
	db #b8,#12,#cc,#b8,#12,#41,#b8,#30
	db #98,#06,#12,#41,#b8,#30,#98,#06
	db #12,#41,#b8,#12,#cc,#b8,#12,#d9
	db #b8,#30,#98,#06,#12,#d9,#b8,#30
	db #98,#06,#12,#d9,#b8,#12,#cc,#b8
	db #12,#41,#b8,#30,#98,#06,#12,#41
	db #b8,#30,#98,#06,#12,#41,#b8,#12
	db #cc,#b8,#12,#d9,#b8,#30,#98,#06
	db #12,#d9,#b8,#30,#98,#06,#12,#d9
	db #b8,#12,#cc,#b8,#12,#41,#b8,#30
	db #98,#06,#12,#41,#b8,#30,#98,#06
	db #12,#7f,#b8,#30,#88,#06,#12,#7f
	db #b8,#30,#88,#06,#12,#41,#b8,#18
	db #06,#00,#0a,#12,#41,#b8,#18,#06
	db #00,#07,#12,#41,#b8,#00,#0c,#30
.lb98b equ $ + 6
	db #98,#06,#30,#b8,#0d,#2d,#30,#98
.lb993 equ $ + 6
.lb98f equ $ + 2
	db #06,#2d,#30,#c8,#06,#2d,#00,#0d
	db #03,#0c,#1b,#18,#01,#21,#58,#00
	db #21,#18,#00,#21,#58,#00,#21,#18
	db #00,#21,#58,#00,#21,#18,#00,#21
	db #58,#00,#21,#18,#00,#21,#58,#00
	db #21,#18,#00,#21,#58,#01,#03,#10
	db #30,#88,#06,#0f,#12,#95,#b9,#12
	db #95,#b9,#1b,#a8,#01,#21,#a8,#0b
	db #30,#88,#06,#0f,#12,#95,#b9,#12
	db #95,#b9,#12,#95,#b9,#12,#c7,#b9
	db #09,#9c,#b0,#03,#10,#1b,#68,#01
	db #21,#68,#0b,#27,#06,#1b,#98,#01
	db #21,#98,#0b,#30,#a8,#06,#03,#0c
	db #1b,#18,#01,#21,#18,#0b,#27,#06
	db #1b,#38,#01,#21,#38,#0b,#30,#18
	db #06,#0f,#12,#e0,#b9,#09,#8c,#b0
	db #03,#10,#1b,#b8,#01,#03,#0c,#21
	db #38,#00,#03,#10,#21,#b8,#00,#03
	db #0c,#21,#38,#00,#03,#10,#21,#b8
	db #00,#03,#0c,#21,#38,#00,#03,#10
	db #21,#b8,#00,#03,#0c,#21,#38,#00
	db #03,#10,#21,#b8,#00,#03,#0c,#21
	db #38,#00,#03,#10,#21,#b8,#00,#03
	db #0c,#21,#38,#01,#03,#10,#30,#68
	db #06,#0f,#12,#0d,#ba,#12,#0d,#ba
	db #1b,#88,#01,#21,#88,#0b,#30,#68
	db #06,#0f,#12,#0d,#ba,#12,#0d,#ba
	db #12,#0d,#ba,#12,#55,#ba,#12,#d9
	db #b8,#30,#48,#06,#12,#d9,#b8,#30
	db #88,#06,#12,#d9,#b8,#30,#b8,#06
	db #12,#d9,#b8,#03,#0c,#1b,#38,#01
	db #21,#78,#00,#21,#38,#00,#21,#78
	db #00,#21,#38,#00,#21,#78,#00,#21
	db #38,#00,#21,#78,#00,#21,#38,#00
	db #21,#78,#00,#21,#38,#00,#21,#78
	db #01,#03,#10,#0f,#18,#06,#30,#58
	db #06,#12,#80,#ba,#30,#98,#06,#12
	db #80,#ba,#30,#c8,#06,#12,#80,#ba
.lbac1 equ $ + 4
	db #30,#98,#06,#2d,#00,#0d,#03,#0c
	db #1b,#28,#01,#21,#58,#00,#21,#28
	db #00,#21,#58,#00,#21,#28,#00,#21
	db #58,#00,#21,#28,#00,#21,#58,#00
	db #21,#28,#00,#21,#58,#00,#21,#28
	db #00,#21,#58,#01,#03,#10,#0f,#30
	db #a8,#06,#12,#c3,#ba,#30,#a8,#06
	db #12,#c3,#ba,#30,#a8,#06,#1b,#c8
	db #01,#21,#c8,#0b,#30,#a8,#06,#0f
	db #03,#0c,#1b,#38,#01,#21,#78,#00
	db #21,#38,#00,#21,#78,#00,#21,#38
	db #00,#21,#78,#00,#21,#38,#00,#21
	db #78,#00,#21,#38,#00,#21,#78,#00
	db #21,#38,#00,#21,#78,#01,#03,#10
	db #0f,#30,#a8,#06,#12,#05,#bb,#30
	db #a8,#06,#12,#05,#bb,#12,#f8,#ba
	db #12,#c3,#ba,#30,#a8,#06,#12,#c3
	db #ba,#30,#a8,#06,#12,#c3,#ba,#12
	db #f8,#ba,#12,#05,#bb,#30,#a8,#06
	db #12,#05,#bb,#30,#a8,#06,#12,#05
	db #bb,#12,#f8,#ba,#12,#c3,#ba,#30
	db #a8,#06,#12,#c3,#ba,#30,#a8,#06
	db #12,#c3,#ba,#12,#f8,#ba,#12,#05
	db #bb,#30,#a8,#06,#12,#05,#bb,#30
	db #a8,#06,#12,#05,#bb,#12,#f8,#ba
	db #12,#c3,#ba,#30,#a8,#06,#12,#c3
	db #ba,#30,#a8,#06,#03,#0c,#1b,#58
	db #01,#21,#98,#00,#21,#58,#00,#21
	db #98,#00,#21,#58,#00,#21,#98,#00
	db #21,#58,#00,#21,#98,#00,#21,#58
	db #00,#21,#98,#00,#21,#58,#00,#21
	db #98,#01,#03,#10,#0f,#30,#98,#06
	db #12,#91,#bb,#30,#98,#06,#12,#c3
	db #ba,#18,#06,#00,#0a,#12,#c3,#ba
	db #18,#06,#00,#07,#12,#c3,#ba,#00
	db #0c,#30,#a8,#06,#30,#c8,#0d,#03
.lbbe2 equ $ + 5
	db #0c,#30,#28,#06,#2d,#00,#0d,#12
	db #d9,#b8,#30,#98,#06,#12,#d9,#b8
	db #30,#98,#06,#12,#d9,#b8,#12,#cc
	db #b8,#12,#d9,#b8,#30,#98,#06,#12
	db #d9,#b8,#30,#98,#06,#12,#d9,#b8
	db #12,#cc,#b8,#09,#9c,#b0,#03,#10
	db #1b,#78,#01,#21,#78,#0b,#27,#06
	db #1b,#a8,#01,#21,#a8,#0b,#30,#b8
	db #06,#03,#0c,#1b,#28,#01,#21,#28
	db #0b,#27,#06,#1b,#48,#01,#21,#48
	db #0b,#30,#28,#06,#0f,#12,#0b,#bc
	db #09,#8c,#b0,#03,#10,#1b,#c8,#01
	db #03,#0c,#21,#48,#00,#03,#10,#21
	db #c8,#00,#03,#0c,#21,#48,#00,#03
	db #10,#21,#c8,#00,#03,#0c,#21,#48
	db #00,#03,#10,#21,#c8,#00,#03,#0c
	db #21,#48,#00,#03,#10,#21,#c8,#00
	db #03,#0c,#21,#48,#00,#03,#10,#21
	db #c8,#00,#03,#0c,#21,#48,#01,#03
	db #10,#30,#78,#06,#0f,#12,#38,#bc
	db #12,#38,#bc,#1b,#98,#01,#21,#98
	db #0b,#30,#78,#06,#0f,#12,#38,#bc
	db #12,#38,#bc,#12,#38,#bc,#12,#80
	db #bc,#12,#80,#ba,#30,#58,#06,#12
	db #80,#ba,#30,#98,#06,#12,#80,#ba
	db #30,#c8,#06,#12,#80,#ba,#12,#d9
	db #b8,#18,#06,#30,#48,#06,#12,#d9
	db #b8,#30,#88,#06,#12,#d9,#b8,#30
	db #b8,#06,#12,#d9,#b8,#30,#88,#06
.lbcc6 equ $ + 1
	db #2d,#09,#ac,#b0,#06,#49,#b0,#03
	db #0c,#00,#0d,#30,#48,#06,#30,#68
	db #0d,#30,#98,#06,#00,#0a,#27,#0d
	db #00,#0d,#30,#98,#06,#00,#0a,#27
	db #0d,#00,#0d,#27,#06,#00,#0a,#27
	db #0d,#00,#0d,#30,#b8,#06,#03,#08
	db #30,#18,#0d,#30,#48,#06,#00,#0a
	db #27,#14,#00,#0d,#30,#48,#0d,#27
	db #06,#30,#68,#0d,#30,#98,#06,#00
	db #0a,#27,#14,#00,#0d,#30,#98,#14
	db #30,#68,#14,#30,#48,#0d,#30,#18
	db #06,#03,#0c,#30,#b8,#14,#30,#98
.lbd2b equ $ + 6
	db #29,#03,#08,#27,#29,#2d,#09,#d8
	db #b0,#06,#75,#b0,#18,#1b,#03,#18
	db #00,#0f,#30,#98,#0d,#00,#0e,#27
	db #06,#00,#0f,#30,#68,#0d,#00,#0e
	db #27,#06,#00,#0f,#30,#48,#0d,#00
	db #0e,#27,#06,#00,#0f,#30,#68,#0d
	db #00,#0e,#27,#06,#00,#0f,#30,#48
	db #0d,#00,#0e,#27,#06,#00,#0f,#30
	db #18,#0d,#00,#0e,#27,#06,#03,#1c
	db #00,#0f,#30,#b8,#0d,#00,#0e,#27
	db #06,#03,#18,#00,#0f,#30,#18,#0d
	db #00,#0e,#27,#06,#03,#1c,#00,#0f
	db #30,#98,#0d,#00,#0e,#27,#06,#03
	db #18,#00,#0f,#30,#18,#0d,#00,#0e
	db #27,#06,#00,#0f,#30,#48,#0d,#00
	db #0e,#27,#06,#00,#0f,#30,#18,#0d
	db #00,#0e,#27,#06,#03,#1c,#00,#0f
	db #30,#98,#14,#18,#14,#30,#98,#14
.lbdb8 equ $ + 3
	db #18,#14,#2d,#09,#8c,#b0,#06,#39
	db #b0,#00,#0c,#03,#10,#30,#98,#06
	db #30,#b8,#0d,#30,#98,#06,#00,#0d
	db #12,#41,#b8,#30,#98,#06,#12,#41
	db #b8,#30,#98,#06,#12,#41,#b8,#30
	db #98,#06,#12,#41,#b8,#30,#98,#06
	db #12,#7f,#b8,#30,#88,#06,#12,#7f
	db #b8,#30,#88,#06,#12,#7f,#b8,#30
	db #88,#06,#12,#7f,#b8,#30,#88,#06
	db #12,#41,#b8,#30,#98,#06,#12,#41
	db #b8,#30,#98,#06,#12,#41,#b8,#30
	db #98,#06,#12,#41,#b8,#30,#98,#06
	db #12,#41,#b8,#18,#1b,#12,#41,#b8
.lbe20 equ $ + 3
	db #18,#1b,#2d,#2e,#be,#78,#be,#90
	db #be,#e6,#be,#25,#bf,#83,#bf,#b3
	db #bf,#00,#00,#00,#12,#04,#0f,#d8
	db #98,#0e,#48,#0c,#18,#00,#12,#00
	db #0d,#d8,#98,#0c,#48,#0a,#18,#00
	db #12,#08,#0b,#d8,#98,#0a,#48,#08
	db #18,#00,#12,#04,#09,#d8,#98,#08
	db #48,#06,#18,#00,#12,#0c,#07,#d8
	db #98,#06,#48,#04,#18,#00,#12,#08
	db #05,#d8,#98,#04,#48,#02,#18,#00
	db #12,#10,#03,#d8,#98,#02,#48,#01
	db #18,#00,#0c,#00,#00,#00,#12,#1c
	db #0c,#64,#00,#12,#18,#0a,#64,#00
	db #12,#14,#08,#64,#00,#12,#18,#06
	db #64,#00,#0c,#00,#03,#00,#12,#00
	db #0f,#32,#00,#0e,#28,#0a,#0d,#1e
	db #14,#0c,#14,#1e,#00,#06,#0d,#2d
;
;db #2c,#32,#33,#0c,#2d,#2b,#32,#34
;db #0b,#2d,#2a,#32,#35,#0a,#2d,#29
;db #32,#36,#09,#2d,#28,#32,#37,#08
;db #2d,#27,#32,#38,#07,#2d,#26,#32
;db #39,#06,#2d,#25,#32,#3a,#05,#2d
;db #24,#32,#3b,#04,#2d,#23,#32,#3c
;db #03,#2d,#22,#32,#3d,#02,#2d,#21
;db #32,#3e,#01,#2d,#20,#32,#3f,#00
;db #0c,#00,#00,#00,#12,#08,#0f,#28
;db #29,#27,#0e,#32,#34,#30,#0d,#3c
;db #3f,#39,#0c,#46,#4a,#42,#0b,#50
;db #55,#4b,#0a,#5a,#60,#54,#09,#64
;db #6b,#5d,#08,#6e,#76,#66,#07,#78
;db #81,#6f,#06,#82,#8c,#78,#05,#8c
;db #97,#81,#04,#96,#a2,#8a,#03,#a0
;db #ad,#93,#02,#aa,#b8,#9c,#00,#0c
;db #00,#00,#00,#12,#18,#0f,#68,#00
;db #12,#14,#0e,#68,#00,#12,#10,#0c
;db #68,#00,#12,#14,#0d,#68,#00,#12
;db #18,#0c,#68,#00,#12,#1c,#0a,#68
;db #00,#12,#18,#0b,#64,#00,#12,#14
;db #0a,#64,#00,#12,#10,#08,#64,#00
;db #12,#14,#09,#64,#00,#12,#18,#08
;db #64,#00,#12,#1c,#06,#64,#00,#12
;db #18,#07,#60,#00,#12,#14,#06,#60
;db #00,#12,#10,#04,#60,#00,#12,#14
;db #05,#60,#00,#12,#18,#04,#60,#00
;db #12,#1c,#03,#60,#00,#0c,#00,#00
;db #00,#12,#08,#0e,#18,#16,#0d,#18
;db #1a,#0c,#18,#14,#0b,#18,#1c,#0a
;db #18,#12,#08,#18,#06,#1e,#00,#12
;db #0c,#0e,#98,#96,#0d,#98,#9a,#0c
;db #98,#94,#0b,#98,#9c,#0a,#98,#92
;db #08,#98,#06,#9e,#00,#0c,#00,#00
;db #00,#12,#0c,#0f
;
; #5def
; ld hl,#0f00
; call #a60a; init
;
; #5e05
; call #a71e; play
;
; #5e11
; ld a,#ff; stop
; ld (#abe1),a
; call #a71e
;
; #b0f3
; " sound routines, music and FX (c)Sean Conran 1990 "
;
.init_music; 1->2
;
		ld h,&0f
		ld l,a
		jp real_init_music
;
.music_info
	db "Yogi Bear & Friends In The Greed Monster (1990)(Hi-Tec Software)(Sean Conran)",0
	db "sound routines, music and FX (c)Sean Conran 1990",0

	read "music_end.asm"
