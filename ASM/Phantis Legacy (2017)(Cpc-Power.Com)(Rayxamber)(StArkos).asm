; Music of Phantis Legacy (2017)(Cpc-Power.Com)(Rayxamber)(StArkos)
; Ripped by Megachur the 15/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PHANTISL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7e10

	read "music_header.asm"

;
.l7e10
;
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#5c,#00,#28,#7e,#31,#7e
	db #3b,#7e,#47,#7e,#51,#7e,#5b,#7e
	db #00,#00,#00,#00,#00,#00,#0d,#2a
	db #7e,#06,#00,#25,#28,#0c,#05,#28
	db #0d,#33,#7e,#06,#00,#3c,#20,#30
	db #18,#24,#10,#18,#0d,#42,#7e,#02
	db #00,#3c,#3c,#bc,#ff,#ff,#0d,#4a
	db #7e,#03,#00,#3c,#3c,#bc,#ff,#ff
	db #0d,#54,#7e,#01,#00,#3e,#22,#7e
	db #21,#0c,#78,#f4,#38,#74,#e8,#34
	db #70,#0c,#70,#f4,#2c,#6c,#e8,#28
	db #68,#0c,#64,#f4,#24,#0d,#2a,#7e
	db #40,#00,#00,#00,#c7,#7e,#00,#d1
	db #7e,#b4,#7f,#b4,#7f,#00,#d1,#7e
	db #b4,#7f,#b4,#7f,#00,#d1,#7e,#c8
	db #7e,#10,#7f,#00,#d1,#7e,#c8,#7e
	db #74,#7f,#00,#d1,#7e,#ba,#7f,#15
	db #7f,#00,#d1,#7e,#c8,#7e,#74,#7f
	db #00,#d1,#7e,#af,#7f,#74,#7f,#00
	db #d1,#7e,#c8,#7e,#1e,#7f,#00,#d1
	db #7e,#c8,#7e,#2a,#7f,#00,#d1,#7e
	db #c8,#7e,#6c,#7f,#01,#85,#7e,#00
	db #5e,#fd,#00,#00,#01,#3e,#3e,#42
	db #00,#8e,#ed,#00,#00,#02,#06,#b0
	db #47,#06,#8e,#4d,#02,#b4,#49,#02
	db #8e,#4d,#02,#8e,#40,#06,#ac,#47
	db #06,#8e,#4d,#02,#aa,#47,#06,#8e
	db #4d,#02,#a6,#4b,#02,#8e,#4d,#06
	db #b0,#47,#02,#8e,#4d,#06,#b4,#47
	db #0a,#ac,#45,#06,#8e,#4b,#02,#aa
	db #47,#06,#8e,#4d,#02,#a6,#47,#00
	db #42,#80,#00,#00,#00,#c8,#e9,#00
	db #00,#03,#1e,#cc,#4f,#00,#be,#ed
	db #00,#00,#03,#36,#ba,#40,#06,#be
	db #40,#00,#cc,#eb,#00,#00,#04,#06
	db #ce,#49,#02,#c8,#4d,#06,#cc,#4f
	db #42,#00,#04,#c4,#4d,#06,#c8,#40
	db #06,#c4,#4f,#02,#c2,#40,#06,#be
	db #40,#06,#cc,#4b,#06,#ce,#49,#02
	db #c8,#4d,#06,#cc,#4f,#04,#42,#00
	db #c4,#4d,#04,#42,#00,#c8,#40,#04
	db #42,#00,#c4,#4f,#42,#00,#c2,#40
	db #06,#be,#40,#00,#42,#80,#00,#00
	db #3e,#3e,#42,#00,#be,#ed,#00,#00
	db #05,#42,#00,#04,#be,#40,#0a,#be
	db #40,#06,#be,#40,#06,#be,#40,#06
	db #be,#40,#02,#d6,#49,#06,#da,#40
	db #02,#ba,#4b,#02,#be,#4d,#06,#be
	db #40,#0a,#be,#40,#06,#be,#40,#06
	db #be,#4b,#06,#be,#4d,#02,#d6,#49
	db #06,#da,#40,#02,#ba,#4b,#00,#42
	db #80,#00,#00,#00,#aa,#ff,#00,#00
	db #05,#00,#5e,#ff,#00,#00,#01,#00

	ds #9d43-$,0

	jp l9d58
	jp l9d76
	jp l9d6a
	jp la550
	jp la5d3
	jp la5a5
	jp la5ba
.l9d58
	call la4dc
	ld hl,l9d9c
.l9d5f equ $ + 1
	ld de,#0000
	ld a,d
	ld (l9d8b),a
	add hl,de
	ld a,(hl)
	ld (l9d8d),a
.l9d6a
	ld hl,l9d7f
	ld bc,#8100
	ld de,l9d89
	jp #bce0
.l9d76
	ld hl,l9d7f
	call #bce6
	jp la536
.l9d7f
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.l9d89
	di
.l9d8b equ $ + 1
	ld a,#00
.l9d8d equ $ + 1
	cp #05
	jr z,l9d95
	inc a
	ld (l9d8b),a
	ret
.l9d95
	xor a
	ld (l9d8b),a
	jp l9daf
.l9d9c
	ld de,#050b
	ld (bc),a
	ld bc,#c300
	ld d,b
	and l
	jp la5d3
	jp la5a5
	jp la5ba
.l9dae
	nop
;
.play_music
.l9daf
;
	call la5c5
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l9dae),a
.l9dbf equ $ + 1
	ld a,#01
	dec a
	jp nz,l9f8b
.l9dc5 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9e31
.l9dca equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l9dd8
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l9dd8
	rra
	jr nc,l9de0
	ld de,l9e81
	ldi
.l9de0
	rra
	jr nc,l9de8
	ld de,l9ee6
	ldi
.l9de8
	rra
	jr nc,l9df0
	ld de,l9f4b
	ldi
.l9df0
	ld de,l9e60
	ldi
	ldi
	ld de,l9ec5
	ldi
	ldi
	ld de,l9f2a
	ldi
	ldi
	rra
	jr nc,l9e0d
	ld de,l9e30
	ldi
.l9e0d
	rra
	jr nc,l9e18
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9e1c),de
.l9e18
	ld (l9dca),hl
.l9e1c equ $ + 1
	ld hl,#0000
	ld (l9e3a),hl
	ld a,#01
	ld (l9e35),a
	ld (l9e5b),a
	ld (l9ec0),a
	ld (l9f25),a
.l9e30 equ $ + 1
	ld a,#01
.l9e31
	ld (l9dc5),a
.l9e35 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9e57
.l9e3a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l9e54
	srl a
	jr nz,l9e48
	ld a,(hl)
	inc hl
.l9e48
	jr nc,l9e4f
	ld (l9dae),a
	jr l9e52
.l9e4f
	ld (l9f8a),a
.l9e52
	ld a,#01
.l9e54
	ld (l9e3a),hl
.l9e57
	ld (l9e35),a
.l9e5b equ $ + 1
	ld a,#01
	dec a
	jr nz,l9ebc
.l9e60 equ $ + 1
	ld hl,#0000
	call la388
	ld (l9e60),hl
	jr c,l9ebc
	ld a,d
	rra
	jr nc,l9e73
	and #0f
	ld (la063),a
.l9e73
	rl d
	jr nc,l9e7b
	ld (la051),ix
.l9e7b
	rl d
	jr nc,l9eba
	ld a,e
.l9e81 equ $ + 1
	add #00
	ld (la062),a
	ld hl,#0000
	ld (la04e),hl
	rl d
	jr c,l9e9a
.l9e90 equ $ + 1
	ld hl,#0000
	ld a,(la073)
	ld (la06b),a
	jr l9eb7
.l9e9a
	ld l,b
	add hl,hl
.l9e9d equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (la073),a
	ld (la06b),a
	ld a,(hl)
	or a
	jr z,l9eb3
	ld (la1aa),a
.l9eb3
	inc hl
	ld (l9e90),hl
.l9eb7
	ld (la065),hl
.l9eba
	ld a,#01
.l9ebc
	ld (l9e5b),a
.l9ec0 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9f21
.l9ec5 equ $ + 1
	ld hl,#0000
	call la388
	ld (l9ec5),hl
	jr c,l9f21
	ld a,d
	rra
	jr nc,l9ed8
	and #0f
	ld (la004),a
.l9ed8
	rl d
	jr nc,l9ee0
	ld (l9ff2),ix
.l9ee0
	rl d
	jr nc,l9f1f
	ld a,e
.l9ee6 equ $ + 1
	add #00
	ld (la003),a
	ld hl,#0000
	ld (l9fef),hl
	rl d
	jr c,l9eff
.l9ef5 equ $ + 1
	ld hl,#0000
	ld a,(la014)
	ld (la00c),a
	jr l9f1c
.l9eff
	ld l,b
	add hl,hl
.l9f02 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (la014),a
	ld (la00c),a
	ld a,(hl)
	or a
	jr z,l9f18
	ld (la1aa),a
.l9f18
	inc hl
	ld (l9ef5),hl
.l9f1c
	ld (la006),hl
.l9f1f
	ld a,#01
.l9f21
	ld (l9ec0),a
.l9f25 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9f86
.l9f2a equ $ + 1
	ld hl,#0000
	call la388
	ld (l9f2a),hl
	jr c,l9f86
	ld a,d
	rra
	jr nc,l9f3d
	and #0f
	ld (l9fa8),a
.l9f3d
	rl d
	jr nc,l9f45
	ld (l9f96),ix
.l9f45
	rl d
	jr nc,l9f84
	ld a,e
.l9f4b equ $ + 1
	add #00
	ld (l9fa7),a
	ld hl,#0000
	ld (l9f93),hl
	rl d
	jr c,l9f64
.l9f5a equ $ + 1
	ld hl,#0000
	ld a,(l9fb8)
	ld (l9fb0),a
	jr l9f81
.l9f64
	ld l,b
	add hl,hl
.l9f67 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l9fb8),a
	ld (l9fb0),a
	ld a,(hl)
	or a
	jr z,l9f7d
	ld (la1aa),a
.l9f7d
	inc hl
	ld (l9f5a),hl
.l9f81
	ld (l9faa),hl
.l9f84
	ld a,#01
.l9f86
	ld (l9f25),a
.l9f8a equ $ + 1
	ld a,#01
.l9f8b
	ld (l9dbf),a
	ld iy,la1c1
.l9f93 equ $ + 1
	ld hl,#0000
.l9f96 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9f93),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l9fa8 equ $ + 2
.l9fa7 equ $ + 1
	ld de,#0000
.l9faa equ $ + 1
	ld hl,#0000
	call la1cc
.l9fb0 equ $ + 1
	ld a,#01
	dec a
	jr nz,l9fb9
	ld (l9faa),hl
.l9fb8 equ $ + 1
	ld a,#06
.l9fb9
	ld (l9fb0),a
.l9fbc
	ld de,#0000
	exx
	ld de,#0000
.l9fc4 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,l9fe7
	ld a,#01
	ld (la2fb),a
	call la1cc
	xor a
	ld (la2fb),a
	ld a,l
	or h
	jr z,l9fdf
.l9fdb equ $ + 1
	ld a,#01
	dec a
	jr nz,l9fe4
.l9fdf
	ld (l9fc4),hl
	ld a,#06
.l9fe4
	ld (l9fdb),a
.l9fe7
	ld a,lx
	ex af,af'
	ld iy,la1bf
.l9fef equ $ + 1
	ld hl,#0000
.l9ff2 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l9fef),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.la004 equ $ + 2
.la003 equ $ + 1
	ld de,#0000
.la006 equ $ + 1
	ld hl,#0000
	call la1cc
.la00c equ $ + 1
	ld a,#01
	dec a
	jr nz,la015
	ld (la006),hl
.la014 equ $ + 1
	ld a,#06
.la015
	ld (la00c),a
.la018
	ld de,#0000
	exx
	ld de,#0000
.la020 equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,la043
	ld a,#01
	ld (la2fb),a
	call la1cc
	xor a
	ld (la2fb),a
	ld a,l
	or h
	jr z,la03b
.la037 equ $ + 1
	ld a,#01
	dec a
	jr nz,la040
.la03b
	ld (la020),hl
	ld a,#06
.la040
	ld (la037),a
.la043
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,la1bd
.la04e equ $ + 1
	ld hl,#0000
.la051 equ $ + 1
	ld de,#0000
	add hl,de
	ld (la04e),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.la063 equ $ + 2
.la062 equ $ + 1
	ld de,#0000
.la065 equ $ + 1
	ld hl,#0000
	call la1cc
.la06b equ $ + 1
	ld a,#01
	dec a
	jr nz,la074
	ld (la065),hl
.la073 equ $ + 1
	ld a,#06
.la074
	ld (la06b),a
.la077
	ld de,#0000
	exx
	ld de,#0000
.la07f equ $ + 1
	ld hl,#0000
	ld a,l
	or h
	jr z,la0a2
	ld a,#01
	ld (la2fb),a
	call la1cc
	xor a
	ld (la2fb),a
	ld a,l
	or h
	jr z,la09a
.la096 equ $ + 1
	ld a,#01
	dec a
	jr nz,la09f
.la09a
	ld (la07f),hl
	ld a,#06
.la09f
	ld (la096),a
.la0a2
	ex af,af'
	or lx
.la0a5
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,la1bd
	ld e,#f6
	ld bc,#f401
	db #ed,#71 ; out (c),0
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	out (c),a
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	ld a,(hl)
.la136 equ $ + 1
	sub #00
	jr nc,la13d
	db #ed,#71 ; out (c),0
	jr la13f
.la13d
	out (c),a
.la13f
	inc hl
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	ld a,(hl)
.la151 equ $ + 1
	sub #00
	jr nc,la158
	db #ed,#71 ; out (c),0
	jr la15a
.la158
	out (c),a
.la15a
	inc hl
	exx
	out (c),e
	out (c),d
	exx
	inc c
	inc hl
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	dec b
	ld a,(hl)
.la16c equ $ + 1
	sub #00
	jr nc,la173
	db #ed,#71 ; out (c),0
	jr la175
.la173
	out (c),a
.la175
	inc hl
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	exx
	inc c
	call la1a8
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.la1a6
	nop
	ret
.la1a8
	ld a,(hl)
.la1aa equ $ + 1
	cp #ff
	ret z
	ld (la1aa),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.la1bd
	nop
	nop
.la1bf
	nop
	nop
.la1c1
	nop
	nop
.la1c3
	nop
.la1c4
	nop
	nop
	nop
	nop
	nop
.la1c9
	nop
	nop
.la1cb
	nop
.la1cc
	ld b,(hl)
	inc hl
	rr b
	jp c,la22a
	rr b
	jr c,la1fa
	ld a,b
	and #0f
	jr nz,la1e3
	ld (iy+#07),a
	ld lx,#09
	ret
.la1e3
	ld lx,#08
	sub d
	jr nc,la1ea
	xor a
.la1ea
	ld (iy+#07),a
	rr b
	call la35c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.la1fa
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,la20a
	ld (la1c3),a
	ld lx,#00
.la20a
	ld a,b
	and #0f
	sub d
	jr nc,la211
	xor a
.la211
	ld (iy+#07),a
	bit 5,c
	jr nz,la21b
	inc lx
	ret
.la21b
	rr b
	bit 6,c
	call la34e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.la22a
	rr b
	jr nc,la23d
	ld a,(la06b)
	ld c,a
	ld a,(la073)
	cp c
	jr nz,la23d
	ld a,#fe
	ld (la1aa),a
.la23d
	bit 1,b
	jp nz,la2f6
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (la1cb),a
	bit 0,b
	jr z,la2ac
	bit 2,b
	call la34e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (la26c),a
	ld a,b
	exx
.la26c equ $ + 1
	jr la26d
.la26d
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	jr nc,la28c
	inc hl
.la28c
	bit 5,a
	jr z,la29c
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.la29c
	ld (la1c9),hl
	exx
.la2a0
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (la1c3),a
	ld lx,#00
	ret
.la2ac
	bit 2,b
	call la34e
	ld (la1c9),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (la2c0),a
	ld a,b
	exx
.la2c0 equ $ + 1
	jr la2c1
.la2c1
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	sla l
	rl h
	bit 5,a
	jr z,la2ed
	exx
	ld a,(hl)
	inc hl
	exx
	add l
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc h
	ld h,a
.la2ed
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr la2a0
.la2f6
	bit 0,b
	jr z,la30a
.la2fb equ $ + 1
	ld a,#00
	or a
	jr z,la303
	ld hl,#0000
	ret
.la303
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp la1cc
.la30a
	ld (iy+#07),#10
	bit 5,b
	jr nz,la317
	ld lx,#09
	jr la32a
.la317
	ld lx,#08
	ld hx,e
	bit 2,b
	call la34e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.la32a
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (la1cb),a
	rr b
	rr b
	bit 2,b
	call la34e
	ld (la1c9),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (la1c3),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.la34e
	jr z,la35c
	ld a,(hl)
	inc hl
	exx
	add e
	ld l,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld h,a
	ret
.la35c
	bit 4,b
	jr z,la36c
	ld a,(hl)
	inc hl
	exx
	add e
	ld e,a
	exx
	ld a,(hl)
	inc hl
	exx
	adc d
	ld d,a
	exx
.la36c
	ld a,e
	bit 3,b
	jr z,la379
	add (hl)
	inc hl
	cp #90
	jr c,la379
	ld a,#8f
.la379
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,la3bc
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.la388
	ld a,(hl)
	inc hl
	srl a
	jr c,la3af
	sub #20
	jr c,la3b9
	jr z,la3ab
	dec a
	ld e,a
.la396
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,la3a4
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.la3a4
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.la3ab
	ld e,(hl)
	inc hl
	jr la396
.la3af
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.la3b9
	add #20
	ret
.la3bc
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00,#0e,#00,#0d,#00,#0d,#00
	db #0c,#00,#0b,#00,#0b,#00,#0a,#00
	db #09,#00,#09,#00,#08,#00,#08,#00
	db #07,#00,#07,#00,#07,#00,#06,#00
	db #06,#00,#06,#00,#05,#00,#05,#00
	db #05,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#02,#00
	db #02,#00,#02,#00,#02,#00,#02,#00
	db #02,#00,#02,#00,#02,#00,#02,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
;
.real_init_music
.la4dc
;
	ld hl,#0008
	add hl,de
	ld de,l9d5f
	ldi
	ld de,l9f8a
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l9e9d),hl
	ld (l9f02),hl
	ld (l9f67),hl
	add hl,bc
	ld de,l9e30
	ldi
	ld de,l9e81
	ldi
	ld de,l9ee6
	ldi
	ld de,l9f4b
	ldi
	ld de,l9e1c
	ldi
	ldi
	ld (l9dca),hl
	ld a,#01
	ld (l9dbf),a
	ld (l9dc5),a
	ld a,#ff
	ld (la1cb),a
	ld hl,(l9e9d)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (la065),hl
	ld (la006),hl
	ld (l9faa),hl
	ret
.la536
	call la5c5
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,la1c4
	ld bc,#0300
.la547
	ld (hl),c
	inc hl
	djnz la547
	ld a,#3f
	jp la0a5
.la550
	ld hl,#000c
	add hl,de
	ld (la58a),hl
	ld hl,#0000
	ld (la07f),hl
	ld (la020),hl
	ld (l9fc4),hl
	ret
.la564
	ld ix,la077
	or a
	jr z,la576
	ld ix,la018
	dec a
	jr z,la576
	ld ix,l9fbc
.la576
	ld (ix+#01),c
	ld (ix+#02),b
	ld a,e
	ld (ix+#05),a
	ld a,#0f
	sub h
	ld (ix+#06),a
	ld h,#00
	add hl,hl
.la58a equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,d
	or a
	jr nz,la596
	ld a,(hl)
.la596
	ld (ix+#27),a
	ld (ix+#1f),a
	inc hl
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	ret
.la5a5
	ld a,e
	ld hl,la07f
	or a
	jr z,la5b6
	ld hl,la020
	dec a
	jr z,la5b6
	ld hl,l9fc4
	dec a
.la5b6
	ld (hl),a
	inc hl
	ld (hl),a
	ret
.la5ba
	ld a,e
	ld (la136),a
	ld (la151),a
	ld (la16c),a
	ret
.la5c5
	ld a,i
	di
	ld a,#f3
	jp po,la5cf
	ld a,#fb
.la5cf
	ld (la1a6),a
	ret
.la5d3
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld d,(ix+#02)
	ld e,(ix+#04)
	ld h,(ix+#06)
	ld l,(ix+#08)
	ld a,(ix+#0a)
	jp la564
;
; ld de,#7e10
; call #a4dc ; init
;
.init_music		; added by Megachur
;
	ld de,l7e10
	jp real_init_music
;
.music_info
	db "Phantis Legacy (2017)(Cpc-Power.Com)(Rayxamber)",0
	db "StArkos",0

	read "music_end.asm"
