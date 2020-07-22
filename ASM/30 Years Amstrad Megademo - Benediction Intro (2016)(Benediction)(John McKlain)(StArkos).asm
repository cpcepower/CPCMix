; Music of 30 Years Amstrad Megademo - Benediction Intro (2016)(Benediction)(John McKlain)(StArkos)
; Ripped by Megachur the 22/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "30YAMBEI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	jp l8674
	jp l800a
	jp l86c9
.l8009
	db #00
;
.play_music
.l800a
;
	xor a
	ld (l8009),a
.l800f equ $ + 1
	ld a,#01
	dec a
	jp nz,l81db
.l8015 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8081
.l801a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l8028
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l8028
	rra
	jr nc,l8030
	ld de,l80d1
	ldi
.l8030
	rra
	jr nc,l8038
	ld de,l8136
	ldi
.l8038
	rra
	jr nc,l8040
	ld de,l819b
	ldi
.l8040
	ld de,l80b0
	ldi
	ldi
	ld de,l8115
	ldi
	ldi
	ld de,l817a
	ldi
	ldi
	rra
	jr nc,l805d
	ld de,l8080
	ldi
.l805d
	rra
	jr nc,l8068
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l806c),de
.l8068
	ld (l801a),hl
.l806c equ $ + 1
	ld hl,#0000
	ld (l808a),hl
	ld a,#01
	ld (l8085),a
	ld (l80ab),a
	ld (l8110),a
	ld (l8175),a
.l8080 equ $ + 1
	ld a,#01
.l8081
	ld (l8015),a
.l8085 equ $ + 1
	ld a,#01
	dec a
	jr nz,l80a7
.l808a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l80a4
	srl a
	jr nz,l8098
	ld a,(hl)
	inc hl
.l8098
	jr nc,l809f
	ld (l8009),a
	jr l80a2
.l809f
	ld (l81da),a
.l80a2
	ld a,#01
.l80a4
	ld (l808a),hl
.l80a7
	ld (l8085),a
.l80ab equ $ + 1
	ld a,#01
	dec a
	jr nz,l810c
.l80b0 equ $ + 1
	ld hl,#0000
	call l8520
	ld (l80b0),hl
	jr c,l810c
	ld a,d
	rra
	jr nc,l80c3
	and #0f
	ld (l825d),a
.l80c3
	rl d
	jr nc,l80cb
	ld (l824b),ix
.l80cb
	rl d
	jr nc,l810a
	ld a,e
.l80d1 equ $ + 1
	add #00
	ld (l825c),a
	ld hl,#0000
	ld (l8248),hl
	rl d
	jr c,l80ea
.l80e0 equ $ + 1
	ld hl,#0000
	ld a,(l826d)
	ld (l8265),a
	jr l8107
.l80ea
	ld l,b
	add hl,hl
.l80ed equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l826d),a
	ld (l8265),a
	ld a,(hl)
	or a
	jr z,l8103
	ld (l834b),a
.l8103
	inc hl
	ld (l80e0),hl
.l8107
	ld (l825f),hl
.l810a
	ld a,#01
.l810c
	ld (l80ab),a
.l8110 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8171
.l8115 equ $ + 1
	ld hl,#0000
	call l8520
	ld (l8115),hl
	jr c,l8171
	ld a,d
	rra
	jr nc,l8128
	and #0f
	ld (l8229),a
.l8128
	rl d
	jr nc,l8130
	ld (l8217),ix
.l8130
	rl d
	jr nc,l816f
	ld a,e
.l8136 equ $ + 1
	add #00
	ld (l8228),a
	ld hl,#0000
	ld (l8214),hl
	rl d
	jr c,l814f
.l8145 equ $ + 1
	ld hl,#0000
	ld a,(l8239)
	ld (l8231),a
	jr l816c
.l814f
	ld l,b
	add hl,hl
.l8152 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8239),a
	ld (l8231),a
	ld a,(hl)
	or a
	jr z,l8168
	ld (l834b),a
.l8168
	inc hl
	ld (l8145),hl
.l816c
	ld (l822b),hl
.l816f
	ld a,#01
.l8171
	ld (l8110),a
.l8175 equ $ + 1
	ld a,#01
	dec a
	jr nz,l81d6
.l817a equ $ + 1
	ld hl,#0000
	call l8520
	ld (l817a),hl
	jr c,l81d6
	ld a,d
	rra
	jr nc,l818d
	and #0f
	ld (l81f8),a
.l818d
	rl d
	jr nc,l8195
	ld (l81e6),ix
.l8195
	rl d
	jr nc,l81d4
	ld a,e
.l819b equ $ + 1
	add #00
	ld (l81f7),a
	ld hl,#0000
	ld (l81e3),hl
	rl d
	jr c,l81b4
.l81aa equ $ + 1
	ld hl,#0000
	ld a,(l8208)
	ld (l8200),a
	jr l81d1
.l81b4
	ld l,b
	add hl,hl
.l81b7 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8208),a
	ld (l8200),a
	ld a,(hl)
	or a
	jr z,l81cd
	ld (l834b),a
.l81cd
	inc hl
	ld (l81aa),hl
.l81d1
	ld (l81fa),hl
.l81d4
	ld a,#01
.l81d6
	ld (l8175),a
.l81da equ $ + 1
	ld a,#01
.l81db
	ld (l800f),a
	ld iy,l8362
.l81e3 equ $ + 1
	ld hl,#0000
.l81e6 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l81e3),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l81f8 equ $ + 2
.l81f7 equ $ + 1
	ld de,#0000
.l81fa equ $ + 1
	ld hl,#0000
	call l836d
.l8200 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8209
	ld (l81fa),hl
.l8208 equ $ + 1
	ld a,#06
.l8209
	ld (l8200),a
	ld a,lx
	ex af,af'
	ld iy,l8360
.l8214 equ $ + 1
	ld hl,#0000
.l8217 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8214),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8229 equ $ + 2
.l8228 equ $ + 1
	ld de,#0000
.l822b equ $ + 1
	ld hl,#0000
	call l836d
.l8231 equ $ + 1
	ld a,#01
	dec a
	jr nz,l823a
	ld (l822b),hl
.l8239 equ $ + 1
	ld a,#06
.l823a
	ld (l8231),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l835e
.l8248 equ $ + 1
	ld hl,#0000
.l824b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8248),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l825d equ $ + 2
.l825c equ $ + 1
	ld de,#0000
.l825f equ $ + 1
	ld hl,#0000
	call l836d
.l8265 equ $ + 1
	ld a,#01
	dec a
	jr nz,l826e
	ld (l825f),hl
.l826d equ $ + 1
	ld a,#06
.l826e
	ld (l8265),a
	ex af,af'
	or lx
.l8274
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l835e
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
	outi
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
	outi
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
	ld a,(hl)
.l834b equ $ + 1
	cp #ff
	ret z
	ld (l834b),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l835e
	nop
	nop
.l8360
	nop
	nop
.l8362
	nop
	nop
.l8364
	nop
.l8365
	nop
	nop
	nop
	nop
	nop
.l836a
	nop
	nop
.l836c
	nop
.l836d
	ld b,(hl)
	inc hl
	rr b
	jp c,l83cb
	rr b
	jr c,l839b
	ld a,b
	and #0f
	jr nz,l8384
	ld (iy+#07),a
	ld lx,#09
	ret
.l8384
	ld lx,#08
	sub d
	jr nc,l838b
	xor a
.l838b
	ld (iy+#07),a
	rr b
	call l84f4
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l839b
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l83ab
	ld (l8364),a
	ld lx,#00
.l83ab
	ld a,b
	and #0f
	sub d
	jr nc,l83b2
	xor a
.l83b2
	ld (iy+#07),a
	bit 5,c
	jr nz,l83bc
	inc lx
	ret
.l83bc
	rr b
	bit 6,c
	call l84e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l83cb
	rr b
	jr nc,l83de
	ld a,(l8265)
	ld c,a
	ld a,(l826d)
	cp c
	jr nz,l83de
	ld a,#fe
	ld (l834b),a
.l83de
	bit 1,b
	jp nz,l8497
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l836c),a
	bit 0,b
	jr z,l844d
	bit 2,b
	call l84e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l840d),a
	ld a,b
	exx
.l840d equ $ + 1
	jr l840e
.l840e
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
	jr nc,l842d
	inc hl
.l842d
	bit 5,a
	jr z,l843d
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
.l843d
	ld (l836a),hl
	exx
.l8441
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l8364),a
	ld lx,#00
	ret
.l844d
	bit 2,b
	call l84e6
	ld (l836a),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l8461),a
	ld a,b
	exx
.l8461 equ $ + 1
	jr l8462
.l8462
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
	jr z,l848e
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
.l848e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l8441
.l8497
	bit 0,b
	jr z,l84a2
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l836d
.l84a2
	ld (iy+#07),#10
	bit 5,b
	jr nz,l84af
	ld lx,#09
	jr l84c2
.l84af
	ld lx,#08
	ld hx,e
	bit 2,b
	call l84e6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l84c2
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l836c),a
	rr b
	rr b
	bit 2,b
	call l84e6
	ld (l836a),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l8364),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l84e6
	jr z,l84f4
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
.l84f4
	bit 4,b
	jr z,l8504
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
.l8504
	ld a,e
	bit 3,b
	jr z,l8511
	add (hl)
	inc hl
	cp #90
	jr c,l8511
	ld a,#8f
.l8511
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l8554
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l8520
	ld a,(hl)
	inc hl
	srl a
	jr c,l8547
	sub #20
	jr c,l8551
	jr z,l8543
	dec a
	ld e,a
.l852e
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l853c
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l853c
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l8543
	ld e,(hl)
	inc hl
	jr l852e
.l8547
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l8551
	add #20
	ret
.l8554
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
	dw #000f,#000e,#000d,#000d
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw #0007,#0007,#0007,#0006
	dw #0006,#0006,#0005,#0005
	dw #0005,#0004,#0004,#0004
	dw #0004,#0004,#0003,#0003
	dw #0003,#0003,#0003,#0002
	dw #0002,#0002,#0002,#0002
	dw #0002,#0002,#0002,#0002
	dw #0001,#0001,#0001,#0001
	dw #0001,#0001,#0001,#0001
;
.real_init_music
.l8674
;
	ld hl,#0009
	add hl,de
	ld de,l81da
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l80ed),hl
	ld (l8152),hl
	ld (l81b7),hl
	add hl,bc
	ld de,l8080
	ldi
	ld de,l80d1
	ldi
	ld de,l8136
	ldi
	ld de,l819b
	ldi
	ld de,l806c
	ldi
	ldi
	ld (l801a),hl
	ld a,#01
	ld (l800f),a
	ld (l8015),a
	ld a,#ff
	ld (l836c),a
	ld hl,(l80ed)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l825f),hl
	ld (l822b),hl
	ld (l81fa),hl
	ret
;
.stop_music
.l86c9
;
	ld hl,l8365
	ld bc,#0300
.l86cf
	ld (hl),c
	inc hl
	djnz l86cf
	ld a,#3f
	jp l8274
;
	ds #8a32-$,#00	; added by Megachur

.l8a32
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#7d,#01,#52,#8a,#5b,#8a
	db #a8,#8a,#d1,#8a,#ea,#8a,#0a,#8b
	db #26,#8b,#3a,#8b,#6d,#8b,#94,#8b
	db #00,#00,#00,#00,#00,#00,#0d,#54
	db #8a,#02,#00,#3e,#22,#3e,#23,#ba
	db #24,#ff,#ff,#ba,#25,#fe,#ff,#b6
	db #26,#ff,#ff,#36,#28,#32,#2a,#b2
	db #2b,#01,#00,#ae,#2c,#02,#00,#ae
	db #2d,#01,#00,#2a,#2d,#2a,#2e,#a6
	db #30,#ff,#ff,#a6,#32,#fe,#ff,#a2
	db #33,#ff,#ff,#22,#34,#1e,#36,#9e
	db #38,#01,#00,#9a,#39,#02,#00,#9a
	db #3b,#01,#00,#16,#3c,#16,#3e,#92
	db #3f,#ff,#ff,#0d,#54,#8a,#01,#00
	db #3c,#3c,#3c,#bc,#ff,#ff,#bc,#fe
	db #ff,#bc,#ff,#ff,#3c,#3c,#3c,#bc
	db #01,#00,#bc,#02,#00,#bc,#01,#00
	db #3c,#bc,#ff,#ff,#3c,#3c,#bc,#01
	db #00,#bc,#01,#00,#0d,#aa,#8a,#01
	db #00,#7c,#03,#3c,#7c,#07,#3c,#fc
	db #ff,#ff,#03,#bc,#ff,#ff,#fc,#ff
	db #ff,#07,#bc,#ff,#ff,#0d,#d3,#8a
	db #02,#00,#3c,#78,#0c,#74,#18,#a8
	db #ff,#ff,#e4,#ff,#ff,#0c,#e0,#ff
	db #ff,#18,#9c,#01,#00,#d8,#01,#00
	db #0c,#d4,#01,#00,#18,#0d,#ec,#8a
	db #01,#00,#3c,#3c,#bc,#ff,#ff,#bc
	db #fe,#ff,#bc,#ff,#ff,#3c,#3c,#bc
	db #01,#00,#bc,#02,#00,#bc,#01,#00
	db #3c,#0d,#0c,#8b,#01,#00,#7c,#03
	db #38,#74,#07,#2c,#28,#20,#70,#03
	db #28,#64,#07,#20,#18,#0d,#54,#8a
	db #04,#00,#10,#14,#98,#ff,#ff,#9c
	db #fe,#ff,#a0,#ff,#ff,#24,#28,#ac
	db #01,#00,#ac,#02,#00,#b0,#01,#00
	db #34,#34,#b4,#ff,#ff,#b4,#fe,#ff
	db #b4,#ff,#ff,#34,#34,#b4,#01,#00
	db #b4,#02,#00,#b4,#01,#00,#34,#34
	db #0d,#52,#8b,#01,#00,#3e,#21,#3e
	db #21,#be,#21,#ff,#ff,#be,#21,#fe
	db #ff,#be,#21,#ff,#ff,#3e,#21,#3e
	db #21,#be,#21,#01,#00,#be,#21,#02
	db #00,#be,#21,#01,#00,#3e,#21,#0d
	db #6f,#8b,#01,#00,#3e,#22,#3e,#22
	db #be,#22,#ff,#ff,#be,#22,#fe,#ff
	db #be,#22,#ff,#ff,#3e,#22,#3e,#22
	db #be,#22,#01,#00,#be,#22,#02,#00
	db #be,#22,#01,#00,#3e,#22,#0d,#96
	db #8b,#14,#00,#00,#00,#db,#8b,#00
	db #69,#8d,#57,#8d,#d2,#8c,#10,#dc
	db #8b,#fd,#8c,#5e,#8c,#38,#10,#8b
	db #8d,#96,#8d,#a1,#8d,#10,#01,#d0
	db #8b,#00,#b8,#e1,#00,#00,#01,#42
	db #00,#0c,#ae,#7b,#02,#a0,#59,#a6
	db #57,#b0,#55,#ae,#53,#a0,#51,#a6
	db #4f,#b0,#4d,#ae,#4b,#a0,#49,#a6
	db #47,#b0,#45,#6f,#61,#67,#71,#6f
	db #61,#a6,#40,#b0,#47,#ae,#49,#a0
	db #4b,#a6,#4d,#b0,#4f,#b8,#65,#03
	db #02,#42,#09,#42,#00,#42,#0b,#42
	db #00,#42,#0d,#42,#00,#42,#8f,#02
	db #00,#42,#80,#00,#00,#42,#91,#02
	db #00,#42,#80,#00,#00,#42,#93,#02
	db #00,#42,#80,#00,#00,#42,#95,#02
	db #00,#42,#80,#00,#00,#42,#97,#02
	db #00,#42,#80,#00,#00,#42,#99,#02
	db #00,#42,#80,#00,#00,#42,#9b,#02
	db #00,#42,#80,#00,#00,#42,#9d,#02
	db #00,#42,#60,#00,#c6,#e5,#00,#00
	db #04,#02,#79,#02,#7f,#02,#89,#02
	db #87,#02,#79,#02,#7f,#02,#89,#02
	db #87,#02,#79,#02,#7f,#02,#89,#02
	db #87,#02,#79,#02,#7f,#02,#89,#02
	db #d0,#67,#03,#42,#00,#42,#09,#42
	db #00,#42,#0b,#42,#00,#42,#0d,#42
	db #00,#42,#8f,#01,#00,#42,#80,#00
	db #00,#42,#91,#01,#00,#42,#80,#00
	db #00,#42,#93,#01,#00,#42,#80,#00
	db #00,#42,#95,#01,#00,#42,#80,#00
	db #00,#42,#97,#01,#00,#42,#80,#00
	db #00,#42,#99,#01,#00,#42,#80,#00
	db #00,#42,#9b,#01,#00,#42,#80,#00
	db #00,#42,#9d,#01,#00,#42,#60,#00
	db #b8,#ff,#ff,#ff,#05,#42,#80,#00
	db #00,#02,#42,#1d,#42,#1b,#42,#19
	db #42,#00,#42,#17,#42,#15,#42,#13
	db #42,#11,#42,#0f,#42,#0d,#42,#0b
	db #42,#09,#42,#07,#42,#05,#42,#03
	db #42,#01,#00,#88,#e1,#00,#00,#06
	db #02,#61,#02,#61,#02,#61,#02,#61
	db #02,#61,#02,#61,#02,#49,#02,#49
	db #02,#61,#02,#61,#02,#61,#02,#61
	db #42,#00,#61,#02,#88,#43,#02,#88
	db #41,#02,#a0,#65,#03,#02,#42,#09
	db #42,#00,#42,#0b,#42,#00,#42,#8d
	db #05,#00,#42,#00,#42,#0f,#42,#00
	db #42,#11,#42,#00,#42,#13,#42,#00
	db #42,#15,#42,#00,#42,#17,#42,#00
	db #42,#19,#42,#00,#42,#1b,#42,#00
	db #42,#1d,#42,#60,#00,#88,#e5,#01
	db #00,#07,#42,#80,#00,#00,#0c,#42
	db #00,#12,#88,#60,#06,#42,#00,#a0
	db #f5,#00,#00,#08,#02,#42,#13,#02
	db #42,#11,#02,#42,#0f,#02,#42,#0d
	db #02,#a0,#6b,#09,#02,#42,#09,#02
	db #42,#07,#02,#42,#05,#02,#42,#03
	db #00,#42,#60,#00,#42,#80,#00,#00
	db #04,#42,#01,#00,#42,#60,#00,#42
	db #80,#00,#00,#04,#42,#01,#00,#42
	db #60,#00,#42,#80,#00,#00,#04,#42
	db #01,#00,#21,#00,#c0,#11,#d0,#8d
	db #1a,#13,#fe,#80,#30,#0a,#47,#04
	db #1a,#77,#23,#13,#10,#fa,#18,#09
	db #d6,#80,#47,#1a,#13,#77,#23,#10
	db #fc,#7c,#b5,#20,#e3,#c9,#ff,#00
	db #a1,#00,#82,#02,#02,#f5,#a5,#80
	db #83,#00,#82,#50,#01,#70,#c0,#83
	db #00,#02,#10,#50,#60,#86,#00,#82
	db #50,#01,#70,#c0,#84,#00,#82,#50
	db #01,#70,#c0,#83,#00,#07,#31,#e5
	db #a4,#f5,#a5,#90,#f0,#c0,#83,#00
	db #08,#11,#f5,#a5,#00,#31,#e5,#a4
	db #70,#f0,#83,#00,#02,#10,#50,#40
	db #90,#00,#24,#02,#f5,#a5,#a5,#a4
	db #a5,#a5,#87,#1c,#75,#f5,#a5,#a4
	db #a5,#a5,#87,#0c,#f5,#a5,#a5,#a4
	db #a5,#a5,#87,#1c,#75,#f5,#a5,#a4
	db #a5,#a5,#87,#1c,#75,#f5,#a5,#a4
	db #83,#a5,#1f,#0e,#f5,#a5,#91,#f5
	db #e5,#a5,#a1,#87,#1d,#f5,#a5,#a5
	db #39,#e5,#a4,#75,#f5,#a5,#a4,#a5
	db #a5,#87,#0c,#f5,#a5,#a5,#a4,#a5
	db #a5,#87,#0c,#8b,#00,#03,#31,#e5
	db #a5,#80,#84,#00,#0b,#31,#e5,#a5
	db #a5,#87,#0e,#00,#00,#31,#e5,#a5
	db #80,#84,#00,#0b,#31,#e5,#a5,#a5
	db #87,#0e,#00,#00,#31,#e5,#a5,#80
	db #87,#00,#02,#f5,#a5,#a4,#84,#00
	db #00,#08,#84,#00,#03,#31,#e5,#a5
	db #80,#84,#00,#03,#31,#e5,#a5,#80
	db #8b,#00,#48,#07,#2d,#a5,#a4,#af
	db #ad,#a5,#94,#07,#2d,#a5,#a4,#af
	db #ad,#a5,#a4,#0f,#2d,#80,#00,#0a
	db #29,#a5,#a4,#07,#2d,#a5,#a4,#af
	db #ad,#a5,#a4,#07,#2d,#a5,#a4,#af
	db #ad,#a5,#84,#a5,#a5,#81,#0f,#a5
	db #a5,#a3,#ad,#84,#0f,#a5,#a7,#ab
	db #ad,#a4,#07,#2d,#a5,#a4,#af,#ad
	db #a5,#84,#0f,#2d,#80,#00,#0a,#29
	db #a5,#a4,#08,#08,#8d,#00,#82,#50
	db #01,#70,#c0,#8e,#00,#01,#70,#f0
	db #86,#00,#01,#70,#f0,#83,#00,#07
	db #10,#50,#40,#00,#00,#10,#f0,#c0
	db #84,#00,#01,#f0,#e0,#84,#00,#01
	db #70,#f0,#83,#00,#02,#10,#50,#40
	db #ff,#00,#ff,#00,#ff,#00,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#ba,#00
	db #23,#3a,#d0,#d7,#cd,#1c,#bd,#21
	db #d1,#d7,#46,#48,#cd,#38,#bc,#af
	db #21,#d1,#d7,#46,#48,#f5,#e5,#cd
	db #32,#bc,#e1,#f1,#23,#3c,#fe,#10
	db #20,#f1,#c3,#18,#bb,#ed,#00,#00
	db #20,#9a,#00,#00,#20,#8c,#00,#00
	db #80,#86,#00,#00,#20,#8f,#00,#04
	db #01,#04,#fa,#da,#08,#83,#00,#82
	db #a0,#01,#f0,#e0,#84,#00,#01,#a0
	db #e0,#86,#00,#82,#a0,#01,#f0,#e0
	db #84,#00,#82,#a0,#01,#f0,#e0,#83
	db #00,#07,#32,#fa,#4a,#00,#00,#30
	db #f0,#80,#83,#00,#02,#10,#fa,#5a
	db #84,#00,#01,#f0,#e0,#84,#00,#82
	db #a0,#91,#00,#46,#fa,#da,#5a,#4a
	db #5a,#5a,#4b,#0e,#fa,#fa,#5a,#4a
	db #5a,#5a,#4b,#0e,#fa,#da,#5a,#4a
	db #5a,#5a,#4b,#0e,#fa,#fa,#5a,#4a
	db #5a,#5a,#4b,#0e,#fa,#fa,#5a,#4a
	db #5a,#5a,#4b,#0e,#fa,#da,#3a,#fa
	db #da,#5a,#1a,#0f,#1c,#fa,#5a,#4b
	db #3a,#fa,#4a,#fa,#fa,#5a,#4a,#5a
	db #5a,#4b,#0e,#fa,#da,#5a,#4a,#5a
	db #5a,#4b,#0e,#89,#00,#46,#0f,#5a
	db #3a,#fa,#5a,#1b,#5e,#4a,#0f,#5a
	db #3a,#fa,#5a,#5a,#4b,#0e,#0f,#5a
	db #3a,#fa,#5a,#1b,#5f,#4a,#0f,#5a
	db #3a,#fa,#5a,#5a,#4b,#0e,#0f,#5a
	db #3a,#fa,#5a,#1b,#5e,#4a,#5a,#5a
	db #0b,#1e,#4a,#fa,#da,#4a,#01,#0f
	db #5a,#00,#13,#5e,#4a,#0f,#5a,#3a
	db #fa,#5a,#1b,#5e,#4a,#0f,#5a,#3a
	db #fa,#5a,#1b,#5f,#4a,#89,#00,#47
	db #03,#5a,#5a,#4a,#5f,#5a,#5a,#38
	db #83,#5a,#5a,#4a,#5f,#5a,#5a,#4a
	db #0f,#5a,#08,#00,#05,#12,#5a,#4a
	db #83,#5a,#5a,#4a,#5f,#5a,#5a,#4a
	db #83,#5a,#5a,#4a,#5f,#5a,#5a,#28
	db #5a,#5a,#28,#1e,#5a,#5a,#1b,#5a
	db #58,#07,#5a,#5b,#1b,#5a,#4a,#83
	db #5a,#5a,#4a,#5f,#5a,#5a,#28,#0f
	db #5a,#08,#00,#05,#12,#5a,#4a,#05
	db #8e,#00,#03,#20,#a0,#b0,#80,#8e
	db #00,#01,#f0,#e0,#86,#00,#01,#f0
	db #e0,#84,#00,#82,#a0,#82,#00,#02
	db #30,#f0,#80,#83,#00,#02,#10,#f0
	db #c0,#84,#00,#01,#f0,#e0,#84,#00
	db #82,#a0,#ff,#00,#ff,#00,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#ff,#00
	db #ff,#00,#bc,#00,#03,#02,#f5,#a5
	db #80,#84,#00,#00,#10,#87,#00,#00
	db #40,#87,#00,#00,#10,#87,#00,#00
	db #10,#85,#00,#05,#31,#e5,#a4,#f5
	db #a5,#90,#85,#00,#07,#11,#f5,#a5
	db #00,#31,#e5,#a4,#40,#86,#00,#00
	db #40,#8f,#00,#82,#02,#0f,#f5,#a5
	db #a5,#a4,#a5,#a5,#50,#50,#f0,#d1
	db #f5,#e4,#a5,#a5,#50,#e0,#83,#f5
	db #2b,#e4,#a5,#a5,#50,#50,#f0,#d1
	db #f5,#e4,#a5,#a5,#50,#50,#f0,#d1
	db #f5,#e4,#f5,#f5,#e5,#a4,#f5,#a5
	db #b0,#f0,#75,#f5,#a1,#87,#1d,#f5
	db #a5,#a5,#39,#e5,#a4,#f0,#d1,#f5
	db #e4,#a5,#a5,#50,#60,#83,#f5,#02
	db #e4,#a5,#a5,#8b,#00,#46,#f5,#a5
	db #a5,#a4,#a5,#a5,#87,#0e,#f5,#e5
	db #a5,#a4,#a5,#a5,#87,#0e,#f5,#a5
	db #a5,#a4,#a5,#a5,#87,#0e,#f5,#e5
	db #a5,#a4,#a5,#a5,#87,#0e,#f5,#e5
	db #a5,#a4,#a5,#a5,#87,#0e,#f5,#a5
	db #b1,#f5,#a5,#a5,#a1,#87,#1d,#f5
	db #a5,#a5,#39,#e5,#a4,#f5,#e5,#a5
	db #a4,#a5,#a5,#87,#0e,#f5,#a5,#a5
	db #a4,#a5,#a5,#87,#0e,#89,#00,#47
	db #0f,#2d,#b1,#e5,#a5,#a3,#af,#a4
	db #0f,#2d,#b1,#e5,#a5,#a5,#87,#0e
	db #0f,#2d,#b1,#e5,#a5,#a3,#af,#a4
	db #0f,#2d,#b1,#e5,#a5,#a5,#87,#0e
	db #0f,#2d,#b1,#e5,#a5,#a3,#af,#a4
	db #a5,#a5,#83,#0f,#a4,#f5,#a5,#a4
	db #01,#0f,#a5,#00,#23,#af,#a4,#0f
	db #2d,#b1,#e5,#a5,#a3,#af,#a4,#0f
	db #2d,#b1,#e5,#a5,#a3,#af,#a4,#08
	db #88,#00,#48,#01,#2d,#a5,#a4,#af
	db #a5,#a5,#70,#c1,#2d,#a5,#a4,#af
	db #a5,#a5,#a4,#0f,#2d,#80,#00,#02
	db #29,#a5,#a4,#41,#2d,#a5,#a4,#af
	db #a5,#a5,#a4,#41,#2d,#a5,#a4,#af
	db #a5,#a5,#40,#a5,#a5,#90,#07,#a5
	db #a5,#a3,#a5,#84,#83,#a5,#a5,#ab
	db #a5,#a4,#41,#2d,#a5,#a4,#af,#a5
	db #a5,#40,#0f,#2d,#80,#00,#02,#29
	db #a5,#a4,#08,#08,#8d,#00,#02,#10
	db #50,#50,#8f,#00,#01,#f0,#c0,#86
	db #00,#01,#f0,#c0,#84,#00,#05,#50
	db #60,#00,#00,#30,#f0,#84,#00,#02
	db #10,#f0,#80,#84,#00,#01,#f0,#c0
	db #84,#00,#01,#50,#60,#ff,#00,#ff
	db #00,#ff,#00,#ff,#00,#ff,#00,#ff
	db #00,#ff,#00,#ff,#00,#ff,#00,#ff
	db #00,#ff,#00,#ba,#00,#04,#01,#00
	db #0f,#15,#19,#fb,#00,#04,#01,#04
	db #fa,#da,#08,#84,#00,#01,#20,#80
	db #86,#00,#00,#a0,#87,#00,#01,#20
	db #80,#86,#00,#01,#20,#80,#84,#00
	db #06,#32,#fa,#4a,#fa,#da,#28,#80
	db #84,#00,#07,#10,#fa,#5a,#00,#32
	db #fa,#4a,#a0,#86,#00,#00,#a0,#8f
	db #00,#11,#01,#04,#fa,#da,#5a,#4a
	db #5a,#5a,#28,#b0,#f0,#b2,#fa,#ea
	db #5a,#5a,#38,#e0,#83,#fa,#2b,#ea
	db #5a,#5a,#28,#b0,#f0,#b2,#fa,#ea
	db #5a,#5a,#28,#b0,#f0,#b2,#fa,#ea
	db #fa,#fa,#da,#4a,#fa,#da,#38,#e0
	db #fa,#fa,#9a,#0f,#1c,#fa,#5a,#4b
	db #3a,#fa,#4a,#f0,#b2,#fa,#ea,#5a
	db #5a,#28,#e0,#83,#fa,#03,#ea,#5a
	db #5a,#08,#8a,#00,#2c,#fa,#da,#08
	db #00,#00,#12,#4b,#0e,#fa,#da,#08
	db #00,#00,#52,#4b,#0e,#fa,#da,#08
	db #00,#00,#12,#4b,#0e,#fa,#da,#08
	db #00,#00,#52,#4b,#0e,#fa,#da,#08
	db #00,#00,#12,#4b,#0e,#fa,#da,#3a
	db #fa,#4a,#83,#00,#16,#10,#fa,#5a
	db #00,#32,#fa,#4a,#fa,#da,#08,#00
	db #00,#12,#4b,#0e,#fa,#da,#08,#00
	db #00,#12,#4b,#0e,#89,#00,#47,#0f
	db #5a,#3a,#fa,#5a,#1b,#5e,#4a,#0f
	db #5a,#3a,#fa,#5a,#5a,#4b,#0e,#0f
	db #5a,#3a,#fa,#5a,#1b,#5e,#4a,#0f
	db #5a,#3a,#fa,#5a,#5a,#4b,#0e,#0f
	db #5a,#3a,#fa,#5a,#1b,#5e,#4a,#5a
	db #5a,#0b,#1e,#4a,#fa,#da,#4a,#01
	db #0f,#5a,#00,#13,#5e,#4a,#0f,#5a
	db #3a,#fa,#5a,#1b,#5e,#4a,#0f,#5a
	db #3a,#fa,#5a,#1b,#5e,#4a,#04,#89
	db #00,#82,#5a,#08,#4a,#5a,#5a,#4a
	db #f0,#e0,#5a,#5a,#4a,#83,#5a,#0c
	db #4a,#0f,#5a,#08,#00,#01,#12,#5a
	db #4a,#a0,#5a,#5a,#4a,#83,#5a,#28
	db #4a,#a0,#5a,#5a,#4a,#5a,#5a,#4a
	db #a0,#5a,#5a,#28,#92,#5a,#5a,#1a
	db #5a,#58,#41,#5a,#5a,#1a,#5a,#4a
	db #a0,#5a,#5a,#4a,#5a,#5a,#4a,#a0
	db #0f,#5a,#08,#00,#01,#12,#5a,#4a
	db #05,#8f,#00,#82,#a0,#8f,#00,#01
	db #f0,#80,#86,#00,#01,#f0,#80,#84
	db #00,#05,#20,#e0,#00,#00,#30,#e0
	db #84,#00,#01,#10,#f0,#85,#00,#01
	db #f0,#80,#84,#00,#01,#20,#e0,#ff
	db #00,#ff,#00,#ff,#00,#ff,#00,#ff
	db #00,#ff,#00,#ff,#00,#ff,#00,#ff
	db #00,#ff,#00,#ff,#00,#ff,#00,#bb
	db #00,#82,#02,#02,#f5,#a5,#80,#84
	db #00,#01,#50,#40,#85,#00,#01,#10
	db #40,#87,#00,#01,#50,#40,#86,#00
	db #01,#50,#40,#84,#00,#06,#31,#e5
	db #a4,#f5,#a5,#90,#40,#84,#00,#07
	db #11,#f5,#a5,#00,#31,#e5,#a4,#50
	db #85,#00,#01,#10,#40,#90,#00,#10
	db #02,#f5,#a5,#a5,#a4,#a5,#a5,#94
	db #70,#f0,#75,#f5,#e4,#a5,#a5,#94
	db #e0,#83,#f5,#2b,#e4,#a5,#a5,#94
	db #70,#f0,#75,#f5,#e4,#a5,#a5,#94
	db #70,#f0,#75,#f5,#e4,#f5,#f5,#a5
	db #a4,#f5,#a5,#b0,#d1,#f5,#f5,#a1
	db #87,#1d,#f5,#a5,#a5,#39,#e5,#a4
	db #f0,#75,#f5,#e4,#a5,#a5,#94,#e0
	db #83,#f5,#03,#e4,#a5,#a5,#84,#8a
	db #00,#46,#f5,#a5,#b1,#e5,#a5,#a1
	db #87,#0e,#f5,#a5,#b1,#e5,#a5,#a5
	db #87,#0e,#f5,#a5,#b1,#e5,#a5,#a1
	db #87,#0e,#f5,#a5,#b1,#e5,#a5,#a5
	db #87,#0e,#f5,#a5,#b1,#e5,#a5,#a1
	db #87,#0e,#f5,#a5,#b1,#e5,#a4,#f5
	db #a5,#a4,#19,#f5,#a5,#02,#39,#e5
	db #a4,#f5,#a5,#b1,#e5,#a5,#a1,#87
	db #0e,#f5,#a5,#b1,#e5,#a5,#a1,#87
	db #0e,#89,#00,#47,#0f,#2d,#b1,#e5
	db #a5,#a3,#ad,#a4,#0f,#2d,#b1,#e5
	db #a5,#a5,#87,#0e,#0f,#2d,#b1,#e5
	db #a5,#a3,#ad,#a4,#0f,#2d,#b1,#e5
	db #a5,#a5,#87,#0e,#0f,#2d,#b1,#e5
	db #a5,#a3,#ad,#a4,#a5,#a5,#83,#0f
	db #a4,#f5,#a5,#a4,#01,#0f,#a5,#00
	db #23,#af,#a4,#0f,#2d,#b1,#e5,#a5
	db #a3,#ad,#a4,#0f,#2d,#b1,#e5,#a5
	db #a3,#ad,#a4,#08,#89,#00,#0a,#25
	db #a5,#a4,#a5,#a5,#94,#70,#f0,#25
	db #a5,#a4,#83,#a5,#0c,#a4,#0f,#2d
	db #80,#00,#00,#29,#a5,#a4,#50,#25
	db #a5,#a4,#83,#a5,#29,#a4,#50,#25
	db #a5,#a4,#a5,#a5,#94,#40,#a5,#a5
	db #90,#41,#a5,#a5,#a1,#a5,#84,#a0
	db #a5,#a5,#a1,#a5,#a4,#50,#25,#a5
	db #a4,#a5,#a5,#94,#40,#0f,#2d,#80
	db #00,#00,#29,#a5,#a4,#08,#08,#8e
	db #00,#01,#50,#40,#8f,#00,#00,#f0
	db #87,#00,#00,#f0,#85,#00,#05,#10
	db #e0,#00,#00,#30,#c0,#84,#00,#01
	db #10,#e0,#85,#00,#00,#f0,#85,#00
	db #01,#10,#e0,#ff,#00,#ff,#00,#ff
	db #00,#ff,#00,#ff,#00,#ff,#00,#ff
	db #00,#ff,#00,#ff,#00,#ff,#00,#ff
	db #00,#ff,#00,#bb,#00,#04,#01,#04
	db #fa,#da,#08,#84,#00,#82,#a0,#85
	db #00,#01,#20,#a0,#87,#00,#82,#a0
	db #86,#00,#82,#a0,#84,#00,#06,#32
	db #fa,#4a,#fa,#da,#28,#a0,#84,#00
	db #08,#10,#fa,#5a,#00,#32,#fa,#4a
	db #a0,#80,#84,#00,#01,#20,#a0,#90
	db #00,#10,#04,#fa,#da,#5a,#4a,#5a
	db #5a,#4a,#f0,#e0,#fa,#fa,#ea,#5a
	db #5a,#4a,#e0,#83,#fa,#2b,#ea,#5a
	db #5a,#4a,#f0,#e0,#fa,#fa,#ea,#5a
	db #5a,#4a,#f0,#e0,#fa,#fa,#ea,#fa
	db #fa,#5a,#4a,#fa,#da,#38,#b2,#fa
	db #fa,#9a,#0f,#1c,#fa,#5a,#4b,#3a
	db #fa,#4a,#e0,#fa,#fa,#ea,#5a,#5a
	db #4a,#e0,#83,#fa,#03,#ea,#5a,#5a
	db #4a,#8a,#00,#46,#fa,#da,#3a,#fa
	db #5a,#1a,#4b,#0e,#fa,#da,#3a,#fa
	db #5a,#5a,#4b,#0e,#fa,#da,#3a,#fa
	db #5a,#1a,#4b,#0e,#fa,#da,#3a,#fa
	db #5a,#5a,#4b,#0e,#fa,#da,#3a,#fa
	db #5a,#1a,#4b,#0e,#fa,#da,#3a,#fa
	db #4a,#fa,#da,#4a,#14,#fa,#5a,#05
	db #32,#fa,#4a,#fa,#da,#3a,#fa,#5a
	db #1a,#4b,#0e,#fa,#da,#3a,#fa,#5a
	db #1a,#4b,#0e,#89,#00,#0a,#0f,#5a
	db #08,#00,#00,#13,#5a,#4a,#0f,#5a
	db #08,#85,#00,#0a,#0f,#5a,#08,#00
	db #00,#13,#5a,#4a,#0f,#5a,#08,#85
	db #00,#0c,#0f,#5a,#08,#00,#00,#13
	db #5a,#4a,#5a,#5a,#0b,#1e,#4a,#83
	db #00,#17,#01,#0f,#5a,#00,#13,#5e
	db #4a,#0f,#5a,#08,#00,#00,#13,#5a
	db #4a,#0f,#5a,#08,#00,#00,#13,#5a
	db #4a,#05,#89,#00,#0a,#12,#5a,#4a
	db #5a,#5a,#28,#b0,#f0,#92,#5a,#4a
	db #83,#5a,#0c,#4a,#0f,#5a,#08,#00
	db #00,#12,#5a,#4a,#a0,#92,#5a,#4a
	db #83,#5a,#28,#4a,#a0,#92,#5a,#4a
	db #5a,#5a,#28,#a0,#5a,#5a,#28,#a0
	db #5a,#5a,#1a,#5a,#58,#50,#52,#5a
	db #1a,#5a,#4a,#a0,#92,#5a,#4a,#5a
	db #5a,#28,#a0,#0f,#5a,#08,#00,#00
	db #12,#5a,#4a,#05,#8f,#00,#01,#20
	db #80,#8f,#00,#00,#e0,#87,#00,#00
	db #e0,#86,#00,#04,#e0,#00,#00,#30
	db #80,#84,#00,#01,#10,#c0,#85,#00
	db #00,#e0,#86,#00,#00,#e0,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#bb,#00
	db #82,#02,#02,#f5,#a5,#80,#83,#00
	db #02,#10,#50,#50,#85,#00,#01,#50
	db #40,#86,#00,#02,#10,#50,#50,#85
	db #00,#02,#10,#50,#50,#84,#00,#06
	db #31,#e5,#a4,#f5,#a5,#90,#70,#84
	db #00,#08,#11,#f5,#a5,#00,#31,#e5
	db #a4,#50,#c0,#84,#00,#01,#50,#40
	db #90,#00,#10,#02,#f5,#a5,#a5,#a4
	db #a5,#a5,#87,#70,#d1,#f5,#f5,#e4
	db #a5,#a5,#87,#60,#83,#f5,#2b,#e4
	db #a5,#a5,#87,#70,#d1,#f5,#f5,#e4
	db #a5,#a5,#87,#70,#d1,#f5,#f5,#e4
	db #f5,#e5,#a5,#86,#f5,#a5,#b0,#75
	db #f5,#f5,#a1,#87,#1d,#f5,#a5,#a5
	db #39,#e5,#a4,#d1,#f5,#f5,#e4,#a5
	db #a5,#87,#60,#83,#f5,#03,#e4,#a5
	db #a5,#87,#8a,#00,#46,#f5,#a5,#b1
	db #e5,#a5,#a1,#87,#0e,#f5,#a5,#b1
	db #e5,#a5,#a5,#87,#0e,#f5,#a5,#b1
	db #e5,#a5,#a1,#87,#0e,#f5,#a5,#b1
	db #e5,#a5,#a5,#87,#0e,#f5,#a5,#b1
	db #e5,#a5,#a1,#87,#0e,#f5,#a5,#b1
	db #e5,#a4,#f5,#a5,#a4,#19,#f5,#a5
	db #02,#39,#e5,#a4,#f5,#a5,#b1,#e5
	db #a5,#a1,#87,#0e,#f5,#a5,#b1,#e5
	db #a5,#a1,#87,#0e,#89,#00,#48,#0f
	db #2d,#a5,#a4,#af,#af,#a5,#a4,#0f
	db #2d,#a5,#a4,#af,#af,#a5,#a4,#0f
	db #2d,#80,#02,#0a,#2b,#a5,#a4,#0f
	db #2d,#a5,#a4,#af,#af,#a5,#a4,#0f
	db #2d,#a5,#a4,#af,#af,#a5,#a4,#a5
	db #a5,#83,#0f,#a5,#a5,#a3,#af,#85
	db #0f,#a5,#af,#ab,#af,#a4,#0f,#2d
	db #a5,#a4,#af,#af,#a5,#a4,#0f,#2d
	db #80,#02,#0a,#2b,#a5,#a4,#08,#08
	db #88,#00,#0a,#01,#a5,#a4,#a5,#a5
	db #50,#50,#f0,#c1,#a5,#a4,#83,#a5
	db #0c,#a4,#0f,#2d,#80,#00,#00,#21
	db #a5,#a4,#50,#c1,#a5,#a4,#83,#a5
	db #29,#a4,#50,#c1,#a5,#a4,#a5,#a5
	db #50,#40,#a5,#a5,#90,#70,#25,#a5
	db #a1,#a5,#84,#b0,#a1,#a5,#a1,#a5
	db #a4,#50,#c1,#a5,#a4,#a5,#a5,#50
	db #40,#0f,#2d,#80,#00,#00,#21,#a5
	db #a4,#08,#08,#8e,#00,#00,#10,#90
	db #00,#00,#c0,#87,#00,#00,#c0,#86
	db #00,#03,#60,#00,#00,#30,#85,#00
	db #01,#10,#80,#85,#00,#00,#c0,#86
	db #00,#00,#60,#ff,#00,#ff,#00,#ff
	db #00,#ff,#00,#ff,#00,#ff,#00,#ff
	db #00,#ff,#00,#ff,#00,#ff,#00,#ff
	db #00,#ff,#00,#bb,#00,#04,#01,#04
	db #fa,#da,#08,#83,#00,#03,#20,#a0
	db #b0,#80,#84,#00,#82,#a0,#86,#00
	db #03,#20,#a0,#b0,#80,#84,#00,#03
	db #20,#a0,#b0,#80,#83,#00,#07,#32
	db #fa,#4a,#fa,#da,#28,#f0,#80,#83
	db #00,#08,#10,#fa,#5a,#00,#32,#fa
	db #4a,#b0,#e0,#84,#00,#82,#a0,#90
	db #00,#24,#04,#fa,#da,#5a,#4a,#5a
	db #5a,#4b,#38,#b2,#fa,#da,#4a,#5a
	db #5a,#4b,#28,#fa,#da,#5a,#4a,#5a
	db #5a,#4b,#38,#b2,#fa,#da,#4a,#5a
	db #5a,#4b,#38,#b2,#fa,#da,#4a,#83
	db #5a,#1f,#0e,#fa,#da,#28,#fa,#fa
	db #5a,#1a,#0f,#1c,#fa,#5a,#4b,#3a
	db #fa,#4a,#b2,#fa,#da,#4a,#5a,#5a
	db #4b,#28,#fa,#da,#5a,#4a,#5a,#5a
	db #4b,#08,#89,#00,#46,#fa,#da,#3a
	db #fa,#5a,#1a,#4b,#0e,#fa,#da,#3a
	db #fa,#5a,#5a,#4b,#0e,#fa,#da,#3a
	db #fa,#5a,#1a,#4b,#0e,#fa,#da,#3a
	db #fa,#5a,#5a,#4b,#0e,#fa,#da,#3a
	db #fa,#5a,#1a,#4b,#0e,#fa,#da,#3a
	db #fa,#4a,#fa,#da,#4a,#14,#fa,#5a
	db #01,#32,#fa,#4a,#fa,#da,#3a,#fa
	db #5a,#1a,#4b,#0e,#fa,#da,#3a,#fa
	db #5a,#1a,#4b,#0e,#89,#00,#47,#0f
	db #5a,#5a,#4a,#5f,#5e,#5a,#4a,#0f
	db #5a,#5a,#4a,#5f,#5e,#5a,#4a,#0f
	db #5a,#08,#01,#05,#12,#5a,#4a,#0f
	db #5a,#5a,#4a,#5f,#5e,#5a,#4a,#0f
	db #5a,#5a,#4a,#5f,#5e,#5a,#4a,#5a
	db #5a,#0b,#1e,#5a,#5a,#1b,#5e,#49
	db #0f,#5a,#5f,#1b,#5e,#4a,#0f,#5a
	db #5a,#4a,#5f,#5e,#5a,#4a,#0f,#5a
	db #08,#01,#05,#12,#5a,#4a,#05,#8e
	db #00,#82,#a0,#01,#f0,#e0,#8e,#00
	db #01,#b0,#e0,#86,#00,#01,#b0,#e0
	db #84,#00,#82,#a0,#82,#00,#02,#20
	db #f0,#80,#83,#00,#02,#10,#70,#c0
	db #84,#00,#01,#b0,#e0,#84,#00,#82
	db #a0,#a9,#00,#00,#80,#87,#00,#00
	db #80,#86,#00,#03,#20,#00,#00,#20
	db #85,#00,#00,#10,#86,#00,#00,#80
	db #86,#00,#00,#20,#ff,#00,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#ff,#00
	db #ff,#00,#ff,#00,#ff,#00,#ff,#00
	db #ff,#00,#ea,#00,#f3,#21,#fb,#c9
	db #22,#38,#00,#fb,#cd,#df,#9a,#01
	db #04,#bc,#ed,#49,#01,#2b,#bd,#ed
	db #49,#06,#80,#10,#fe,#76,#76,#76
	db #76,#76,#21,#f7,#9a,#cd,#e7,#9a
	db #76,#76,#01,#04,#bc,#ed,#49,#01
	db #26,#bd,#ed,#49,#cd,#df,#9a,#cd
	db #ac,#8d,#11,#32,#8a,#cd,#00,#80
	db #cd,#df,#9a,#fb,#00,#3e,#01,#3d
	db #32,#80,#9a,#b7,#20,#16,#21,#00
	db #9c,#7e,#b7,#28,#43,#32,#80,#9a
	db #23,#5e,#23,#56,#ed,#53,#ae,#9a
	db #23,#22,#89,#9a,#01,#01,#bc,#ed
	db #49,#0e,#28,#04,#ed,#49,#01,#8d
	db #7f,#ed,#49,#21,#0e,#9b,#01,#80
	db #80,#ed,#a3,#ed,#a3,#ed,#a3,#ed
	db #a3,#ed,#a3,#ed,#a3,#ed,#a3,#ed
	db #a3,#41,#ed,#a3,#ed,#a3,#76,#76
	db #cd,#03,#80,#76,#f3,#c3,#7a,#9a
	db #cd,#df,#9a,#01,#01,#bc,#ed,#49
	db #0d,#04,#ed,#49,#c9,#06,#f5,#ed
	db #78,#1f,#30,#fb,#c9,#06,#bc,#7e
	db #fe,#ff,#c8,#ed,#79,#23,#04,#7e
	db #ed,#79,#23,#18,#f0,#00,#3f,#01
	db #00,#02,#2d,#03,#86,#05,#00,#06
	db #0a,#07,#19,#08,#00,#09,#07,#0c
	db #30,#0d,#00,#ff,#00,#54,#01,#4e
	db #02,#5a,#03,#43,#10,#54,#00,#54
	db #01,#54,#02,#54,#03,#54,#10,#54
;
.init_music		; #9a74 - added by Megachur
;
	ld de,l8a32
	jp real_init_music		; #8000 -> jp l8674
;
.music_info
	db "30 Years Amstrad Megademo - Benediction Intro (2016)(Benediction)(John McKlain)",0
	db "StArkos",0

	read "music_end.asm"
