; Music of World Championship Soccer (1990)(Elite Systems)()()
; Ripped by Megachur the 31/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WORLDCHS.BIN"
ENDIF

MUSIC_DATE_RIP_MONTH	equ 31
MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #a0ba
FIRST_THEME				equ 2
LAST_THEME				equ 3	; 2 -> 3

	read "music_header.asm"

	jp la142	; init
	jp la17c	; play
	jp la12b
	jp la112
;
.stop_music
.la0c6
;
	ld hl,la78b
	ld (hl),#00
	ld e,l
	ld d,h
	inc de
	ld bc,#0095
	ldir
	xor a
	ld e,#08
	call la725
	ld e,#09
	call la725
	ld e,#0a
	call la725
	ld a,#3f
	ld (la758),a
	ld e,#07
	call la725
	ld a,#01
	ld (la78e),a
	ld (la7c0),a
	ld (la7f2),a
	ld (la791),a
	ld (la7c3),a
	ld (la7f5),a
	ld (la263),a
	ld (la264),a
	xor a
	ld (la78b),a
	ld (la7bd),a
	ld (la7ef),a
	ret
.la112
	ld l,c
	ld a,(la758)
	or c
	sla c
	sla c
	sla c
	or c
	ld (la758),a
	ld e,#07
	call la725
	ld c,l
	xor a
	jp la12d
.la12b
	ld a,#01
.la12d
	srl c
	jr nc,la134
	ld (la78b),a
.la134
	srl c
	jr nc,la13b
	ld (la7bd),a
.la13b
	srl c
	ret nc
	ld (la7ef),a
	ret
;
.init_music
.la142
;
	ex af,af'
	call la0c6
	ex af,af'
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,la821
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la78c),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la7be),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la7f0),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (la756),de
	ld a,#02
	ld (la78b),a
	ld (la7bd),a
	ld (la7ef),a
	ret
;
.play_music
.la17c
;
	xor a
	ld hl,la78b
.la180
	push af
	push hl
	ld b,a
	add a
	ld (la6ff),a
	inc a
	ld (la705),a
	ld a,b
	add #08
	ld (la713),a
	ld a,b
	inc a
	cp #03
	jp nz,la199
	inc a
.la199
	ld (la38e),a
	ld bc,#0032
	ld de,la759
	ldir
	call la1c7
	pop de
	ld hl,la759
	ld bc,#0032
	ldir
	ex de,hl
	pop af
	inc a
	cp #03
	jp nz,la180
	ld a,(la263)
	dec a
	ld (la263),a
	ret nz
	ld a,(la264)
	ld (la263),a
	ret
.la1c7
	ld a,(la759)
	and a
	ret z
	ld a,(la263)
	dec a
	jp nz,la242
	ld a,(la75c)
	dec a
	ld (la75c),a
	jp nz,la242
.la1dd
	ld hl,(la75a)
	ld a,(hl)
	inc hl
	and a
	ld c,#00
	jp p,la1ef
	ld c,#01
	and #7f
	jp la222
.la1ef
	cp #60
	jp c,la222
	sub #60
	jp z,la281
	dec a
	jp z,la2b6
	dec a
	jr z,la27b
	dec a
	jp z,la265
	dec a
	jp z,la2ee
	dec a
	jp z,la333
	dec a
	jp z,la33d
	dec a
	jp z,la328
	dec a
	jp z,la313
	dec a
	jp z,la31e
	dec a
	jr z,la270
	jp la350
.la222
	ex af,af'
	ld a,(hl)
	inc hl
	ld (la75a),hl
	push af
	and #f0
	srl c
	call la35a
	pop af
	and #0f
	ld e,a
	ld d,#00
	ld hl,(la756)
	add hl,de
	ld a,(hl)
	ld (la75c),a
	ex af,af'
	call la3ac
.la242
	ld a,(la75f)
	dec a
	jr z,la25f
	call la5e7
	call la59d
	call la51f
	srl a
	ld (la762),a
	call la63b
	call la684
	call la69a
.la25f
	call la6f0
	ret
.la265 equ $ + 2
.la264 equ $ + 1
.la263
	ld bc,#7e01
	ld (#a0b9),a
	inc hl
	ld (la75a),hl
	jp la1dd
.la270
	ld a,(hl)
	ld (la776),a
	inc hl
	ld (la75a),hl
	jp la1dd
.la27b
	ld a,(hl)
	ex af,af'
	inc hl
	jp la284
.la281
	ld a,#01
	ex af,af'
.la284
	ld c,(hl)
	inc hl
	ld a,(hl)
	add a
	inc hl
	ld (la77b),a
	ex de,hl
	ld b,#00
	sla c
	ld hl,laabd
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (la75a),bc
	ld a,(la766)
	inc a
	ld (la766),a
	ld c,a
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,la765
	add hl,bc
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ex af,af'
	ld (hl),a
	jp la1dd
.la2b6
	ld a,(la766)
	ld c,a
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,la765
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	dec (hl)
	jp z,la2df
	ex de,hl
	dec hl
	dec hl
	ld c,(hl)
	sla c
	ld hl,laabd
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la75a),hl
	jp la1dd
.la2df
	ld (la75a),de
	ld hl,la766
	dec (hl)
	xor a
	ld (la77b),a
	jp la1dd
.la2ee
	ld e,(hl)
	inc hl
	ld (la75a),hl
	sla e
	sla e
	sla e
	ld d,#00
	ld hl,la55b
	add hl,de
	ld (la59b),hl
	ld a,#01
	ld (la791),a
	ld (la7c3),a
	ld (la7f5),a
	ld (la75f),a
	jp la1dd
.la313
	ld (la75a),hl
	ld a,#02
	ld (la765),a
	jp la1dd
.la31e
	ld (la75a),hl
	xor a
	ld (la765),a
	jp la1dd
.la328
	ld a,(hl)
	ld (la264),a
	inc hl
	ld (la75a),hl
	jp la1dd
.la333
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld (la75a),hl
	jp la1dd
.la33d
	ld a,(hl)
	and #0f
	ld e,a
	inc hl
	ld (la75a),hl
	ld d,#00
	ld hl,(la756)
	add hl,de
	ld a,(hl)
	ld (la75c),a
	ret
.la350
	xor a
	ld (la759),a
	ld (la762),a
	jp la6f0
.la35a
	ld hl,la75f
	cp (hl)
	ret z
	ld (la75f),a
	ld hl,la8ff
	ld e,a
	ld d,#00
	add hl,de
	ld (la760),hl
	ld e,#06
	add hl,de
	ld e,(hl)
	ld hl,(la59b)
	add hl,de
	ld e,(hl)
	sla e
	ld hl,la54b
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la77e),hl
	ld hl,(la760)
	ld de,#000a
	add hl,de
	ld a,(la758)
	ld c,a
.la38e equ $ + 1
	ld a,#00
	ld b,(hl)
	srl b
	jr nc,la39a
	ld e,a
	cpl
	and c
	jp la39c
.la39a
	ld e,a
	or c
.la39c
	sla e
	sla e
	sla e
	or e
	ld (la758),a
	ld e,#07
	call la725
	ret
.la3ac
	add a
	ld e,a
	ld d,#00
	ld hl,la45f
	add hl,de
	ld a,(la77b)
	and a
	jp p,la3bd
	ld d,#ff
.la3bd
	ld e,a
	add hl,de
	ex de,hl
	ld hl,#0000
	ld a,(la765)
	and a
	jr z,la3cf
	dec a
	jr z,la3d5
	ld (la765),a
.la3cf
	ld (la780),hl
	ld (la782),hl
.la3d5
	ld (la784),hl
	ld (la786),hl
	ld (la788),hl
	ld (la779),hl
	ld hl,(la760)
	ld bc,#000b
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (la77c),bc
	xor a
	ld (la78a),a
	ld a,#fe
	ld (la774),a
	ld a,(la776)
	and a
	jr nz,la40a
	ex de,hl
	ld (la75d),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (la763),de
	ret
.la40a
	ld hl,(la75d)
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ex de,hl
	ld (la75d),hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la763),hl
	ex de,hl
	sbc hl,de
	push hl
	jp nc,la441
	add hl,de
	ex de,hl
	and a
	sbc hl,de
	ld a,(la776)
	ld c,a
	ld b,#00
	ld (la779),bc
	call la718
	ld (la777),hl
	ld b,#00
	ld c,a
	pop hl
	add hl,bc
	ld (la788),hl
	ret
.la441
	ld a,(la776)
	ld c,a
	neg
	ld e,a
	ld d,#ff
	ld (la779),de
	call la718
	ld (la777),hl
	ld b,#ff
	cpl
	ld c,a
	inc bc
	pop hl
	add hl,bc
	ld (la788),hl
	ret
.la45f
	dw #0eee,#0e18,#0d4d,#0c8e
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
.la51f
	ld a,(la783)
	srl a
	srl a
	srl a
	ld hl,(la77e)
	jp (hl)
.la531 equ $ + 5
.la52e equ $ + 2
.la52d equ $ + 1
.la52c
	db #87,#87,#87,#87,#c9,#87,#47,#87
.la538 equ $ + 4
	db #87,#87,#90,#c9,#87,#87,#47,#87
.la53e equ $ + 2
	db #80,#c9,#87,#47,#87,#87,#80,#c9
.la549 equ $ + 5
.la544
	db #87,#47,#87,#80,#c9,#af,#c9
.la54b
	dw la549,la52e,la544,la52d
	dw la53e,la538,la531,la52c
.la55b
	db #00,#00,#00,#00,#00,#01,#01,#01
	db #00,#00,#01,#01,#01,#02,#02,#02
	db #00,#00,#01,#02,#02,#02,#03,#03
	db #00,#01,#02,#02,#03,#03,#04,#04
	db #00,#01,#01,#02,#03,#04,#04,#05
	db #00,#01,#02,#03,#04,#05,#05,#06
	db #00,#01,#01,#02,#03,#04,#05,#06
	db #00,#01,#02,#03,#04,#05,#06,#07
.la59b
	db #93,#a5
.la59d
	ld hl,(la760)
	ld de,#0005
	add hl,de
	ld a,(la780)
	inc a
	cp (hl)
	ld (la780),a
	ret c
	xor a
	ld (la780),a
	ld b,a
	ld a,(la765)
	and a
	jp z,la5bf
	ld a,(la781)
	cp #04
	ret z
.la5bf
	dec hl
	ld a,(hl)
	dec hl
	ld l,(hl)
	ld h,a
	ld a,(la781)
	ld c,a
	add hl,bc
	ld e,(hl)
	ld a,(la783)
	add e
	ret m
	ld (la783),a
	ld a,(la782)
	inc a
	ld (la782),a
	inc hl
	cp (hl)
	ret c
	xor a
	ld (la782),a
	inc c
	inc c
	ld a,c
	ld (la781),a
	ret
.la5e7
	ld hl,(la760)
	inc hl
	inc hl
	ld a,(la784)
	inc a
	cp (hl)
	ld (la784),a
	ret c
	xor a
	ld (la784),a
	ld b,a
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ld a,(la785)
	ld l,a
	ld h,b
	add hl,de
	ld a,(hl)
	ex de,hl
	and a
	ld c,a
	jp p,la60d
	ld b,#ff
.la60d
	ld hl,(la788)
	add hl,bc
	ld (la788),hl
	inc de
	ex de,hl
	ld a,(la786)
	inc a
	cp (hl)
	ld (la786),a
	ret c
	xor a
	ld (la786),a
	ld a,(la785)
	inc a
	inc a
	ld (la785),a
	inc hl
	ld a,(hl)
	cp #7f
	ret nz
	inc hl
	ld a,(hl)
	add a
	ld hl,la785
	add (hl)
	ld (la785),a
	ret
.la63b
	ld hl,(la760)
	ld de,#0009
	add hl,de
	ld a,(hl)
	and a
	ret z
	ld a,(la774)
	inc a
	cp (hl)
	ld (la774),a
	ret c
	xor a
	ld (la774),a
	ld b,a
	dec hl
	ld d,(hl)
	dec hl
	ld e,(hl)
	ex de,hl
	ld a,(la787)
	ld c,a
	add hl,bc
	inc a
	ld (la787),a
	ld a,(hl)
	ld c,a
	ld b,#00
	and a
	jp p,la66b
	ld b,#ff
.la66b
	sla c
	rl b
	inc hl
	ld a,(hl)
	ld hl,(la75d)
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (la763),de
	cp #7f
	ret nz
	xor a
	ld (la787),a
	ret
.la684
	ld hl,(la777)
	ld a,h
	or l
	ret z
	dec hl
	ld (la777),hl
	ld hl,(la788)
	ld de,(la779)
	add hl,de
	ld (la788),hl
	ret
.la69a
	ld hl,(la760)
	ld de,#000d
	add hl,de
	ld a,(hl)
	and a
	ret z
	ld a,(la78a)
	inc a
	cp (hl)
	ld (la78a),a
	ret c
	xor a
	ld (la78a),a
	ld hl,(la77c)
	ld a,(hl)
	inc hl
	cp #21
	jr z,la6dc
	ld (la77c),hl
	cp #20
	jr z,la6dc
	ld e,#06
	call la725
	ld a,(la38e)
	and a
	rla
	rla
	rla
	cpl
	ld b,a
	ld a,(la758)
	and b
	ld (la758),a
	ld e,#07
	call la725
	ret
.la6dc
	ld a,(la38e)
	rla
	rla
	rla
	ld b,a
	ld a,(la758)
	or b
	ld (la758),a
	ld e,#07
	call la725
	ret
.la6f0
	ld a,(la759)
	dec a
	ret z
	ld hl,(la763)
	ld de,(la788)
	add hl,de
	ld a,l
.la6ff equ $ + 1
	ld e,#00
	call la725
	ld a,h
.la705 equ $ + 1
	ld e,#01
	call la725
	ld a,(la762)
	srl a
	srl a
	srl a
.la713 equ $ + 1
	ld e,#08
	call la725
	ret
.la718
	ld b,#10
	xor a
.la71b
	add hl,hl
	rla
	cp c
	jr c,la722
	sub c
	inc l
.la722
	djnz la71b
	ret
.la725
	ld b,#f4
	out (c),e
	ld de,#c000
	inc b
	inc b
	out (c),d
	out (c),e
	dec b
	dec b
	out (c),a
	inc b
	inc b
	ld d,#80
	out (c),d
	out (c),e
	ret
	ld b,#f5
.la741
	in a,(c)
	rra
	jr nc,la741
.la746
	in a,(c)
	rra
	jr c,la746
	ret
	ld bc,#7f10
	or #40
	out (c),c
	out (c),a
	ret
.la75d equ $ + 7
.la75c equ $ + 6
.la75a equ $ + 4
.music_end equ $ + 3
.la759 equ $ + 3
.la758 equ $ + 2
.la756
	db #00,#00,#3f,#00,#00,#00,#00,#00
.la765 equ $ + 7
.la763 equ $ + 5
.la762 equ $ + 4
.la760 equ $ + 2
.la75f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.la766
	db #00,#00,#09,#a7,#ed,#42,#7d,#fe
.la774 equ $ + 6
	db #20,#38,#0a,#3a,#82,#57,#00,#00
.la77c equ $ + 6
.la77b equ $ + 5
.la779 equ $ + 3
.la777 equ $ + 1
.la776
	db #00,#00,#00,#00,#00,#00,#00,#00
.la785 equ $ + 7
.la784 equ $ + 6
.la783 equ $ + 5
.la782 equ $ + 4
.la781 equ $ + 3
.la780 equ $ + 2
.la77e
	db #00,#00,#00,#00,#00,#00,#00,#00
.la78c equ $ + 6
.la78b equ $ + 5
.la78a equ $ + 4
.la788 equ $ + 2
.la787 equ $ + 1
.la786
	db #00,#00,#00,#00,#00,#00,#00,#00
.la791 equ $ + 3
.la78e
	db #01,#00,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la7bd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.la7c3 equ $ + 5
.la7c0 equ $ + 2
.la7be
	db #00,#00,#01,#00,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la7f5 equ $ + 7
.la7f2 equ $ + 4
.la7f0 equ $ + 2
.la7ef equ $ + 1
	db #00,#00,#00,#00,#01,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.la821
	dw la9af,la9af,la9af,la859
	dw la9af,la9af,la9af,la879
	dw laa16,laa23,laa2c,la869
	dw la9b0,la9da,la9ee,la859
	dw laab0,laab7,laaba,la859
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60,#80,#fe,#05,#09
.la859
	db #03,#04,#06,#09,#0c,#12,#18,#24
	db #30,#48,#60,#90,#c0,#08,#10,#20
.la869
	db #02,#03,#05,#07,#0a,#0f,#14,#1e
	db #28,#3c,#50,#78,#a0,#f0,#04,#08
.la879
	db #04,#06,#08,#0c,#10,#18,#20,#30
	db #40,#60,#80,#c0,#fc,#05,#0a,#14
	db #00,#0a,#00,#0a,#00,#0a,#ff,#00
	db #ff,#00,#ff,#00,#04,#fe,#01,#02
	db #02,#fe,#01,#7f,#fd,#70,#01,#f8
	db #02,#fe,#2e,#fe,#01,#00,#ff,#70
	db #01,#fb,#08,#00,#0a,#fe,#2e,#fe
	db #01,#00,#ff,#78,#01,#fc,#04,#00
	db #0a,#fe,#34,#00,#ff,#68,#01,#fc
	db #04,#00,#0a,#fe,#2c,#00,#ff,#00
	db #04,#07,#00,#04,#07,#7f,#04,#07
	db #0c,#04,#07,#0c,#7f,#07,#0c,#10
	db #07,#0c,#10,#7f,#00,#03,#07,#00
	db #03,#07,#7f,#03,#07,#0c,#03,#07
	db #0c,#7f,#07,#0c,#0f,#07,#0c,#0f
	db #7f,#07,#0c,#11,#07,#0c,#11,#7f
.la8ff equ $ + 6
	db #20,#20,#21,#1e,#20,#21,#89,#a8
	db #00,#9e,#a8,#01,#07,#00,#00,#00
	db #01,#f9,#a8,#00,#32,#19,#89,#a8
	db #00,#a8,#a8,#02,#05,#c8,#a8,#01
	db #01,#f9,#a8,#00,#c6,#89,#89,#a8
	db #00,#a8,#a8,#02,#05,#cf,#a8,#01
	db #01,#f9,#a8,#00,#23,#46,#89,#a8
	db #00,#a8,#a8,#02,#05,#d6,#a8,#01
	db #01,#f9,#a8,#00,#c1,#79,#89,#a8
	db #00,#a8,#a8,#02,#05,#dd,#a8,#01
	db #01,#f9,#a8,#00,#12,#18,#89,#a8
	db #00,#a8,#a8,#02,#05,#e4,#a8,#01
	db #01,#f9,#a8,#00,#0e,#2f,#89,#a8
	db #00,#a8,#a8,#02,#05,#eb,#a8,#01
	db #01,#f9,#a8,#00,#13,#7e,#89,#a8
	db #00,#a8,#a8,#02,#05,#f2,#a8,#01
	db #01,#f9,#a8,#00,#f3,#cd,#94,#a8
	db #02,#b4,#a8,#02,#05,#00,#00,#00
	db #01,#f9,#a8,#00,#fd,#3e,#94,#a8
	db #02,#be,#a8,#02,#06,#00,#00,#00
	db #01,#f9,#a8,#00,#65,#48,#89,#a8
	db #01,#9e,#a8,#01,#07,#00,#00,#00
.la9b0 equ $ + 7
.la9af equ $ + 6
	db #01,#fc,#a8,#01,#fd,#21,#61,#64
	db #07,#66,#06,#39,#82,#30,#84,#33
	db #84,#66,#02,#66,#04,#39,#84,#37
	db #82,#35,#84,#66,#02,#66,#04,#39
	db #82,#30,#84,#33,#84,#66,#02,#66
	db #04,#66,#06,#63,#00,#65,#b0,#a9
.la9da equ $ + 1
	db #7f,#66,#09,#30,#84,#2e,#82,#2d
	db #84,#66,#02,#66,#04,#66,#06,#66
.la9ee equ $ + 5
	db #08,#65,#da,#a9,#7f,#11,#02,#11
	db #02,#11,#04,#1c,#a2,#1d,#04,#11
	db #04,#11,#02,#14,#04,#15,#04,#18
	db #04,#11,#06,#1d,#a2,#11,#04,#11
	db #04,#11,#02,#1a,#04,#1b,#04,#1f
.laa16 equ $ + 5
	db #04,#65,#ee,#a9,#7f,#64,#07,#60
	db #12,#00,#60,#12,#00,#37,#9a,#63
.laa23 equ $ + 2
	db #00,#7f,#60,#13,#00,#60,#13,#00
.laa2c equ $ + 3
	db #3c,#1a,#7f,#62,#04,#14,#00,#62
.laa37 equ $ + 6
	db #04,#14,#00,#18,#0a,#7f,#2b,#9c
.laa40 equ $ + 7
	db #2e,#9c,#2d,#9c,#2b,#9c,#61,#3c
	db #16,#3c,#14,#3c,#14,#3c,#16,#3c
	db #16,#3c,#16,#3c,#14,#3c,#14,#3c
	db #16,#3c,#16,#37,#66,#37,#64,#37
	db #64,#37,#66,#37,#66,#37,#66,#37
	db #64,#37,#64,#37,#66,#37,#66,#35
	db #36,#35,#34,#35,#34,#35,#36,#35
	db #36,#35,#36,#35,#34,#35,#34,#35
	db #36,#35,#36,#3c,#16,#3c,#14,#3c
	db #14,#3c,#16,#3c,#16,#3c,#16,#3c
	db #14,#3c,#14,#3c,#16,#3c,#16,#61
.laa91
	db #18,#04,#18,#06,#18,#04,#1f,#a4
	db #22,#04,#24,#04,#18,#04,#18,#04
	db #1f,#04,#22,#04,#24,#04,#22,#a4
.laab0 equ $ + 7
	db #1f,#04,#13,#04,#16,#04,#61,#64
.laab7 equ $ + 6
	db #00,#66,#0a,#63,#00,#7f,#66,#0a
.laaba equ $ + 1
	db #7f,#66,#0a,#7f
.laabd
	dw la9af,la9af,la9af,la9af
	dw la9af,la9af,la9af,la9af
	dw la9af,la9af,la9af,la9af
	dw la9af,la9af,la9af,la9af
	dw la9af,la9af,laa37,laa40
	dw laa91
	jp laaf0
	jp lab22
	jp lab99
.laaf0
	ld a,#38
	ld e,#07
	call ladd2
	ld hl,ladd1
	ld (ladb9),hl
	ld (ladbb),hl
	ld (ladbd),hl
	xor a
	ld (ladbf),a
	ld (ladc0),a
	ld (ladc1),a
	ld e,#08
	call ladd2
	ld e,#09
	call ladd2
	ld e,#0a
	call ladd2
	ld a,#38
	ld (lab98),a
	ret
.lab22
	ld h,#00
	sla l
	rl h
	ld de,ladec
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,a
	ld b,#01
	ld a,(ladbf)
	ld c,a
	ld a,(ladc0)
	cp c
	jr nc,lab3e
	ld c,a
	inc b
.lab3e
	ld a,(ladc1)
	cp c
	jr nc,lab47
	ld c,a
	ld b,#03
.lab47
	ld a,l
	cp c
	ret c
	dec b
	jr z,lab68
	dec b
	jr z,lab80
	ld (ladbd),de
	ld (ladc1),a
	xor a
	ld (ladc4),a
	inc a
	ld (ladb8),a
	ld a,(lab98)
	and #fb
	ld (lab98),a
	ret
.lab68
	ld (ladb9),de
	ld (ladbf),a
	xor a
	ld (ladc2),a
	inc a
	ld (ladb6),a
	ld a,(lab98)
	and #fd
	ld (lab98),a
	ret
.lab80
	ld (ladbb),de
	ld (ladc0),a
	xor a
	ld (ladc3),a
	inc a
	ld (ladb7),a
	ld a,(lab98)
	and #fe
	ld (lab98),a
	ret
.lab99 equ $ + 1
.lab98
	jr c,labd4
	cp a
	xor l
	and a
	jp z,lac4f
	ld a,(ladc2)
	and a
	jp z,labd1
	dec a
	ld (ladc2),a
	ld hl,(ladc5)
	ld de,(ladcb)
	add hl,de
	ld (ladc5),hl
	ld a,l
	ld e,#00
	call ladd2
	ld a,h
	srl a
	srl a
	srl a
	dec a
	ld e,#06
	call ladd2
	ld a,h
	and #07
	ld e,#01
	call ladd2
.labd1
	ld hl,ladb6
.labd4
	dec (hl)
	jp nz,lac4f
	ld hl,(ladb9)
.labdb
	ld a,(hl)
	cp #10
	jp c,labf2
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ladcb),de
	inc hl
	ld a,(hl)
	ld (ladc2),a
	inc hl
	jp labdb
.labf2
	ld e,#08
	call ladd2
	and a
	jr nz,lac00
	ld (ladbf),a
	jp lac4f
.lac00
	inc hl
	ld a,(hl)
	ld (ladc5),a
	ld e,#00
	call ladd2
	inc hl
	ld a,(hl)
	ld (ladc6),a
	cp #08
	jp nc,lac24
	ld a,(lab98)
	or #08
	ld (lab98),a
	ld e,#07
	call ladd2
	jp lac31
.lac24
	ld a,(lab98)
	and #f7
	ld (lab98),a
	ld e,#07
	call ladd2
.lac31
	ld a,(hl)
	srl a
	srl a
	srl a
	dec a
	ld e,#06
	call ladd2
	ld a,(hl)
	and #07
	ld e,#01
	call ladd2
	inc hl
	ld a,(hl)
	ld (ladb6),a
	inc hl
	ld (ladb9),hl
.lac4f
	ld a,(ladc0)
	and a
	jp z,lad05
	ld a,(ladc3)
	and a
	jp z,lac87
	dec a
	ld (ladc3),a
	ld hl,(ladc7)
	ld de,(ladcd)
	add hl,de
	ld (ladc7),hl
	ld a,l
	ld e,#02
	call ladd2
	ld a,h
	srl a
	srl a
	srl a
	dec a
	ld e,#06
	call ladd2
	ld a,h
	and #07
	ld e,#03
	call ladd2
.lac87
	ld hl,ladb7
	dec (hl)
	jp nz,lad05
	ld hl,(ladbb)
.lac91
	ld a,(hl)
	cp #10
	jp c,laca8
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ladcd),de
	inc hl
	ld a,(hl)
	ld (ladc3),a
	inc hl
	jp lac91
.laca8
	ld e,#09
	call ladd2
	and a
	jr nz,lacb6
	ld (ladc0),a
	jp lad05
.lacb6
	inc hl
	ld a,(hl)
	ld (ladc7),a
	ld e,#02
	call ladd2
	inc hl
	ld a,(hl)
	ld (ladc8),a
	cp #08
	jp nc,lacda
	ld a,(lab98)
	or #10
	ld (lab98),a
	ld e,#07
	call ladd2
	jp lace7
.lacda
	ld a,(lab98)
	and #ef
	ld (lab98),a
	ld e,#07
	call ladd2
.lace7
	ld a,(hl)
	srl a
	srl a
	srl a
	dec a
	ld e,#06
	call ladd2
	ld a,(hl)
	and #07
	ld e,#03
	call ladd2
	inc hl
	ld a,(hl)
	ld (ladb7),a
	inc hl
	ld (ladbb),hl
.lad05
	ld a,(ladc1)
	and a
	ret z
	ld a,(ladc4)
	and a
	jp z,lad3b
	dec a
	ld (ladc4),a
	ld hl,(ladc9)
	ld de,(ladcf)
	add hl,de
	ld (ladc9),hl
	ld a,l
	ld e,#04
	call ladd2
	ld a,h
	srl a
	srl a
	srl a
	dec a
	ld e,#06
	call ladd2
	ld a,h
	and #07
	ld e,#05
	call ladd2
.lad3b
	ld hl,ladb8
	dec (hl)
	ret nz
	ld hl,(ladbd)
.lad43
	ld a,(hl)
	cp #10
	jp c,lad5a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ladcf),de
	inc hl
	ld a,(hl)
	ld (ladc4),a
	inc hl
	jp lad43
.lad5a
	ld e,#0a
	call ladd2
	and a
	jr nz,lad66
	ld (ladc1),a
	ret
.lad66
	inc hl
	ld a,(hl)
	ld (ladc9),a
	ld e,#04
	call ladd2
	inc hl
	ld a,(hl)
	ld (ladca),a
	cp #08
	jp nc,lad8a
	ld a,(lab98)
	or #20
	ld (lab98),a
	ld e,#07
	call ladd2
	jp lad97
.lad8a
	ld a,(lab98)
	and #df
	ld (lab98),a
	ld e,#07
	call ladd2
.lad97
	ld a,(hl)
	srl a
	srl a
	srl a
	dec a
	ld e,#06
	call ladd2
	ld a,(hl)
	and #07
	ld e,#05
	call ladd2
	inc hl
	ld a,(hl)
	ld (ladb8),a
	inc hl
	ld (ladbd),hl
	ret
.ladb8 equ $ + 2
.ladb7 equ $ + 1
.ladb6
	db #00,#00,#00
.ladbd equ $ + 4
.ladbb equ $ + 2
.ladb9
	dw ladd1,ladd1,ladd1
.ladc6 equ $ + 7
.ladc5 equ $ + 6
.ladc4 equ $ + 5
.ladc3 equ $ + 4
.ladc2 equ $ + 3
.ladc1 equ $ + 2
.ladc0 equ $ + 1
.ladbf
	db #00,#00,#00,#00,#00,#00,#00,#00
.ladcd equ $ + 6
.ladcb equ $ + 4
.ladca equ $ + 3
.ladc9 equ $ + 2
.ladc8 equ $ + 1
.ladc7
	db #00,#00,#00,#00,#00,#00,#00,#00
.ladd1 equ $ + 2
.ladcf
	db #00,#00,#00
.ladd2
	ld b,#f4
	out (c),e
	ld de,#c000
	inc b
	inc b
	out (c),d
	out (c),e
	dec b
	dec b
	out (c),a
	inc b
	inc b
	ld d,#80
	out (c),d
	out (c),e
	ret
.ladec
	dw #ae14,#ae64,#aeb4,#aec8
	dw #aedc,#aee8,#aef4,#af04
	dw #af0c,#af20,#af30,#af34
	dw #af34,#af3c,#af40,#af44
	dw #af48,#af4c,#af80,#afd9
	db #0b,#19,#00,#03,#0c,#19,#00,#03
	db #0d,#19,#00,#03,#0d,#19,#00,#03
	db #0d,#19,#00,#03,#0d,#19,#00,#03
	db #0d,#19,#00,#03,#0d,#19,#00,#03
	db #0d,#19,#00,#03,#0d,#19,#00,#03
	db #0d,#19,#00,#03,#0d,#19,#00,#03
	db #0d,#19,#00,#03,#0d,#19,#00,#03
	db #0d,#19,#00,#03,#0d,#19,#00,#03
	db #0c,#19,#00,#03,#0b,#1a,#00,#03
	db #0a,#1a,#00,#03,#00,#00,#00,#00
	db #0b,#1a,#00,#03,#0c,#1a,#00,#03
	db #0d,#1a,#00,#03,#0d,#1a,#00,#03
	db #0d,#1a,#00,#03,#0d,#1a,#00,#03
	db #0d,#1a,#00,#03,#0d,#1a,#00,#03
	db #0d,#1a,#00,#03,#0d,#1a,#00,#03
	db #0d,#1a,#00,#03,#0d,#1a,#00,#03
	db #0d,#1a,#00,#03,#0d,#1a,#00,#03
	db #0d,#1a,#00,#03,#0d,#1a,#00,#03
	db #0c,#1a,#00,#03,#0b,#1b,#00,#03
	db #0a,#1b,#00,#03,#00,#00,#00,#00
	db #0f,#32,#00,#03,#0d,#32,#00,#03
	db #0d,#32,#00,#03,#0d,#32,#00,#03
	db #00,#00,#00,#00,#0d,#34,#00,#03
	db #0d,#34,#00,#03,#0d,#34,#00,#03
	db #0d,#34,#00,#03,#00,#00,#00,#00
	db #0f,#23,#f2,#01,#0e,#23,#f2,#01
	db #00,#00,#00,#00,#0f,#08,#a2,#01
	db #0e,#08,#07,#02,#00,#00,#00,#00
	db #0f,#e8,#03,#01,#0e,#00,#50,#01
	db #0f,#6c,#07,#02,#00,#00,#00,#00
	db #0c,#20,#53,#01,#00,#00,#00,#00
	db #0d,#c8,#00,#01,#0d,#c8,#00,#01
	db #0d,#c8,#00,#01,#0d,#c8,#00,#01
	db #00,#00,#00,#00,#0f,#00,#60,#02
	db #0e,#00,#68,#02,#0d,#00,#c0,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#20,#03,#32,#00,#00,#00,#00
	db #0e,#bc,#02,#32,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#bc,#f2,#01,#0d,#a8,#f2,#01
	db #0b,#8a,#a2,#01,#0a,#80,#f2,#01
	db #08,#6c,#f2,#01,#07,#62,#f2,#01
	db #0a,#20,#f3,#02,#08,#34,#03,#08
	db #06,#20,#03,#08,#04,#0c,#03,#08
	db #02,#20,#03,#08,#01,#34,#03,#08
	db #00,#00,#00,#00,#08,#20,#f3,#07
	db #09,#20,#f3,#07,#0a,#20,#f3,#07
	db #0b,#20,#f3,#07,#0c,#20,#f3,#07
	db #0d,#20,#f3,#07,#0e,#20,#f3,#07
	db #0f,#20,#f3,#f5,#0e,#20,#f3,#12
	db #0d,#20,#f3,#12,#0c,#20,#f3,#12
	db #0b,#20,#f3,#12,#0a,#20,#f3,#1c
	db #09,#00,#20,#f3,#12,#08,#20,#f3
	db #1c,#07,#20,#f3,#12,#05,#20,#f3
	db #1c,#04,#20,#f3,#1c,#03,#20,#f3
	db #12,#02,#20,#f3,#1c,#01,#20,#f3
	db #12,#00,#00,#00,#00,#01,#00,#00
	db #64,#0c,#28,#00,#02,#0d,#27,#00
	db #02,#0e,#26,#00,#02,#0e,#25,#00
	db #02,#0e,#24,#00,#02,#0e,#23,#00
	db #02,#0e,#24,#00,#05,#0d,#25,#00
	db #05,#0c,#24,#00,#05,#0c,#23,#00
	db #05,#0d,#24,#00,#05,#0c,#25,#00
	db #05,#01,#00,#00,#28,#0b,#2c,#00
	db #02,#0c,#2b,#00,#02,#0d,#2a,#00
	db #02,#0d,#29,#00,#02,#0d,#28,#00
	db #02,#0d,#27,#00,#02,#0d,#28,#00
	db #04,#0c,#29,#00,#04,#0d,#28,#00
	db #04,#0b,#27,#00,#04,#0b,#28,#00
	db #04,#01,#00,#00,#28,#0d,#28,#00
	db #02,#0c,#27,#00,#02,#0c,#26,#00
	db #02,#0c,#25,#00,#02,#0c,#25,#00
	db #02,#0c,#25,#00,#02,#0b,#26,#00
	db #05,#0c,#25,#00,#05,#0d,#24,#00
	db #05,#0c,#25,#00,#05,#0a,#26,#00
	db #05,#0b,#25,#00,#05,#00,#00,#00
	db #00
;
;	#b5bb
;	ld a,#02
;	call #a0ba	; init
;
.music_info
	db "World Championship Soccer (1990)(Elite Systems)()",0
	db "",0

	read "music_end.asm"
