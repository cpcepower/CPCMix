; Music of Hawkeye By The Boys Without Brain - 2 (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 04/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HABTBWB2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000
FIRST_THEME				equ 0
LAST_THEME				equ 1

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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00

.l8700
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#03,#d4,#02,#3e,#87,#47,#87
	db #58,#87,#75,#87,#86,#87,#b4,#87
	db #c5,#87,#ec,#87,#2d,#88,#3c,#88
	db #4b,#88,#5a,#88,#69,#88,#78,#88
	db #89,#88,#98,#88,#a7,#88,#b6,#88
	db #c5,#88,#d0,#88,#f5,#88,#1a,#89
	db #2d,#89,#3e,#89,#d9,#89,#00,#00
	db #00,#00,#00,#00,#0d,#40,#87,#01
	db #00,#3a,#6a,#c3,#01,#36,#60,#fa
	db #01,#32,#60,#a4,#02,#0d,#40,#87
	db #01,#00,#fc,#fc,#ff,#04,#fc,#f8
	db #ff,#04,#fc,#fc,#ff,#04,#fc,#04
	db #00,#04,#fc,#08,#00,#04,#fc,#04
	db #00,#04,#0d,#5a,#87,#01,#00,#f4
	db #04,#00,#04,#ec,#08,#00,#04,#e4
	db #04,#00,#04,#0d,#40,#87,#01,#00
	db #7e,#28,#0c,#7a,#27,#0d,#76,#27
	db #10,#32,#26,#6e,#26,#0f,#6a,#25
	db #0e,#26,#25,#62,#24,#0e,#5e,#24
	db #09,#1a,#23,#56,#23,#0e,#52,#22
	db #09,#0e,#22,#4a,#21,#0e,#46,#21
	db #09,#0d,#40,#87,#01,#00,#7c,#04
	db #7c,#04,#7c,#04,#74,#04,#6c,#04
	db #64,#04,#0d,#40,#87,#01,#00,#7c
	db #ff,#7c,#ff,#7c,#ff,#78,#ff,#70
	db #ff,#68,#ff,#64,#ff,#64,#ff,#64
	db #ff,#60,#ff,#5c,#ff,#58,#ff,#54
	db #ff,#50,#ff,#4c,#ff,#48,#ff,#44
	db #ff,#0d,#40,#87,#01,#00,#7c,#ff
	db #7c,#ff,#7c,#ff,#fc,#01,#00,#ff
	db #fc,#02,#00,#ff,#fc,#01,#00,#ff
	db #fc,#ff,#ff,#ff,#fc,#fe,#ff,#ff
	db #fc,#ff,#ff,#ff,#f8,#01,#00,#ff
	db #f4,#02,#00,#ff,#f0,#01,#00,#ff
	db #ec,#ff,#ff,#ff,#e8,#fe,#ff,#ff
	db #e4,#ff,#ff,#ff,#5c,#ff,#50,#ff
	db #44,#ff,#0d,#40,#87,#01,#00,#7c
	db #ff,#78,#02,#74,#06,#74,#ff,#74
	db #02,#0d,#33,#88,#01,#00,#7c,#ff
	db #78,#01,#74,#06,#74,#ff,#74,#01
	db #0d,#42,#88,#01,#00,#7c,#ff,#78
	db #04,#74,#06,#74,#ff,#74,#04,#0d
	db #51,#88,#01,#00,#7c,#ff,#78,#ff
	db #74,#06,#74,#ff,#74,#ff,#0d,#60
	db #88,#01,#00,#7c,#ff,#78,#ff,#74
	db #08,#74,#ff,#74,#ff,#0d,#6f,#88
	db #01,#00,#f4,#fc,#ff,#04,#ec,#f8
	db #ff,#04,#e4,#fc,#ff,#04,#0d,#40
	db #87,#01,#00,#7c,#ff,#78,#03,#74
	db #06,#74,#ff,#74,#03,#0d,#8f,#88
	db #01,#00,#7c,#ff,#78,#ff,#74,#02
	db #74,#ff,#74,#ff,#0d,#9e,#88,#01
	db #00,#7c,#ff,#78,#ff,#74,#04,#74
	db #ff,#74,#ff,#0d,#ad,#88,#01,#00
	db #7c,#ff,#78,#ff,#74,#01,#74,#ff
	db #74,#ff,#0d,#bc,#88,#01,#00,#7c
	db #ff,#78,#ff,#74,#ff,#0d,#cb,#88
	db #01,#00,#f8,#04,#00,#04,#f4,#08
	db #00,#04,#f0,#04,#00,#04,#f0,#fc
	db #ff,#04,#f0,#f8,#ff,#04,#f0,#fc
	db #ff,#04,#f0,#04,#00,#04,#f0,#08
	db #00,#04,#0d,#da,#88,#01,#00,#f8
	db #fc,#ff,#04,#f4,#f8,#ff,#04,#f0
	db #fc,#ff,#04,#f0,#04,#00,#04,#f0
	db #08,#00,#04,#f0,#04,#00,#04,#f0
	db #fc,#ff,#04,#f0,#f8,#ff,#04,#0d
	db #ff,#88,#01,#00,#7c,#ff,#7c,#ff
	db #7c,#ff,#78,#ff,#70,#ff,#68,#ff
	db #64,#ff,#0d,#28,#89,#01,#00,#7c
	db #04,#7c,#04,#7c,#04,#78,#04,#74
	db #04,#70,#04,#0d,#40,#87,#01,#00
	db #7c,#ff,#7c,#ff,#7c,#ff,#fc,#01
	db #00,#ff,#fc,#02,#00,#ff,#fc,#01
	db #00,#ff,#fc,#ff,#ff,#ff,#fc,#fe
	db #ff,#ff,#fc,#ff,#ff,#ff,#fc,#01
	db #00,#ff,#fc,#02,#00,#ff,#f8,#01
	db #00,#ff,#f8,#ff,#ff,#ff,#f4,#fe
	db #ff,#ff,#f4,#ff,#ff,#ff,#f0,#01
	db #00,#ff,#f0,#02,#00,#ff,#ec,#01
	db #00,#ff,#ec,#ff,#ff,#ff,#e8,#fe
	db #ff,#ff,#e8,#ff,#ff,#ff,#e4,#01
	db #00,#ff,#e4,#02,#00,#ff,#e0,#01
	db #00,#ff,#e0,#ff,#ff,#ff,#dc,#fe
	db #ff,#ff,#dc,#ff,#ff,#ff,#d8,#01
	db #00,#ff,#d8,#02,#00,#ff,#d4,#01
	db #00,#ff,#d4,#ff,#ff,#ff,#d0,#fe
	db #ff,#ff,#d0,#ff,#ff,#ff,#cc,#01
	db #00,#ff,#cc,#02,#00,#ff,#c8,#01
	db #00,#ff,#c8,#ff,#ff,#ff,#c4,#fe
	db #ff,#ff,#c4,#ff,#ff,#ff,#0d,#40
	db #87,#01,#00,#7c,#ff,#0d,#db,#89
	db #40,#00,#00,#00,#21,#8a,#00,#22
	db #8a,#5a,#8a,#9e,#8a,#00,#08,#8b
	db #61,#8b,#aa,#8b,#00,#22,#8a,#5a
	db #8a,#9e,#8a,#00,#08,#8b,#61,#8b
	db #aa,#8b,#00,#0d,#8c,#57,#8c,#9e
	db #8a,#00,#b1,#8c,#fb,#8c,#55,#8d
	db #00,#b8,#8d,#57,#8c,#9e,#8a,#00
	db #06,#8e,#fb,#8c,#55,#8d,#01,#e6
	db #89,#00,#8a,#e1,#00,#00,#01,#70
	db #60,#02,#04,#70,#60,#03,#06,#8a
	db #60,#04,#0e,#8a,#60,#01,#06,#4b
	db #06,#8a,#60,#04,#0e,#8a,#60,#01
	db #7a,#60,#02,#04,#8a,#60,#01,#06
	db #8a,#60,#04,#0e,#8a,#60,#01,#06
	db #4b,#06,#8a,#60,#04,#06,#8a,#60
	db #01,#00,#70,#e1,#00,#00,#05,#02
	db #49,#02,#45,#02,#31,#02,#c2,#60
	db #06,#0a,#be,#60,#07,#0a,#c2,#60
	db #06,#02,#70,#60,#05,#02,#49,#02
	db #31,#02,#37,#02,#39,#02,#3b,#02
	db #53,#02,#4f,#02,#3b,#02,#c2,#60
	db #06,#0a,#be,#60,#07,#0a,#c2,#60
	db #06,#02,#76,#60,#05,#02,#3b,#02
	db #37,#02,#31,#02,#2f,#00,#aa,#e5
	db #00,#00,#08,#02,#42,#1f,#02,#aa
	db #45,#02,#42,#1f,#02,#aa,#65,#09
	db #02,#42,#1f,#02,#aa,#45,#02,#42
	db #1f,#02,#aa,#45,#02,#aa,#60,#08
	db #04,#42,#1f,#aa,#45,#02,#42,#1f
	db #02,#aa,#45,#02,#aa,#60,#0a,#02
	db #aa,#60,#0b,#02,#b4,#60,#08,#02
	db #42,#1f,#02,#b4,#45,#02,#42,#1f
	db #02,#b4,#65,#09,#02,#42,#1f,#02
	db #b4,#45,#02,#42,#1f,#02,#b4,#45
	db #02,#b4,#60,#08,#04,#42,#1f,#b4
	db #45,#04,#42,#1f,#b4,#65,#09,#02
	db #b4,#60,#0b,#02,#b0,#60,#0c,#00
	db #8a,#e1,#00,#00,#01,#6c,#60,#02
	db #04,#6c,#60,#03,#06,#8a,#60,#04
	db #0e,#8a,#60,#01,#06,#4b,#06,#8a
	db #60,#04,#0e,#8a,#60,#01,#76,#60
	db #02,#76,#60,#03,#02,#8a,#60,#01
	db #74,#60,#02,#74,#60,#03,#02,#8a
	db #60,#04,#02,#76,#60,#0d,#02,#74
	db #60,#02,#02,#74,#60,#0d,#02,#8a
	db #60,#01,#70,#60,#0d,#6c,#60,#02
	db #02,#8a,#60,#01,#02,#70,#60,#02
	db #02,#8a,#60,#04,#06,#8a,#60,#01
	db #00,#6c,#e1,#00,#00,#05,#02,#49
	db #02,#45,#02,#2d,#02,#c2,#60,#06
	db #0a,#be,#60,#07,#0a,#c2,#60,#06
	db #02,#6c,#60,#05,#02,#31,#02,#2d
	db #02,#31,#02,#35,#02,#37,#02,#4f
	db #02,#37,#02,#35,#02,#b8,#60,#06
	db #02,#75,#02,#b8,#47,#02,#be,#61
	db #07,#06,#62,#60,#05,#02,#27,#02
	db #2d,#02,#23,#02,#27,#02,#2d,#02
	db #2f,#00,#a6,#e5,#00,#00,#0e,#02
	db #42,#1f,#02,#a6,#45,#02,#42,#1f
	db #02,#a6,#65,#09,#02,#42,#1f,#02
	db #a6,#45,#02,#42,#1f,#02,#a6,#45
	db #02,#a6,#60,#0e,#04,#42,#1f,#a6
	db #45,#02,#42,#1f,#02,#a6,#45,#02
	db #a6,#60,#0a,#02,#a6,#60,#0b,#02
	db #aa,#60,#0f,#02,#42,#1f,#02,#aa
	db #65,#10,#02,#42,#1f,#02,#aa,#65
	db #0b,#02,#42,#1f,#02,#aa,#65,#09
	db #02,#42,#1f,#02,#aa,#65,#0f,#02
	db #aa,#60,#11,#04,#42,#1f,#aa,#65
	db #12,#04,#42,#1f,#00,#70,#e1,#00
	db #00,#02,#0a,#70,#60,#0d,#02,#c2
	db #60,#06,#02,#7f,#02,#83,#02,#c8
	db #60,#07,#0a,#c2,#60,#06,#02,#70
	db #60,#02,#04,#70,#60,#13,#04,#76
	db #60,#02,#02,#76,#60,#14,#02,#7a
	db #60,#02,#0a,#7a,#60,#14,#02,#cc
	db #60,#06,#02,#89,#02,#83,#02,#cc
	db #60,#07,#06,#ce,#60,#06,#02,#91
	db #06,#8d,#02,#c8,#60,#15,#00,#8a
	db #e1,#00,#00,#01,#02,#70,#60,#16
	db #02,#49,#02,#31,#02,#8a,#60,#04
	db #06,#70,#60,#16,#02,#49,#02,#8a
	db #60,#01,#02,#70,#60,#16,#02,#49
	db #02,#31,#02,#8a,#60,#04,#06,#70
	db #60,#16,#02,#49,#02,#8a,#60,#01
	db #02,#7a,#60,#16,#02,#53,#02,#3b
	db #02,#8a,#60,#04,#06,#7a,#60,#16
	db #02,#53,#02,#8a,#60,#01,#02,#7a
	db #60,#16,#02,#53,#02,#3b,#02,#8a
	db #60,#04,#06,#7a,#60,#16,#02,#53
	db #00,#cc,#e1,#00,#00,#17,#0e,#c6
	db #60,#07,#06,#c2,#60,#06,#02,#be
	db #60,#07,#0a,#79,#02,#be,#60,#06
	db #02,#c2,#60,#07,#06,#87,#06,#c8
	db #60,#17,#0e,#c6,#60,#07,#06,#c2
	db #60,#06,#02,#c6,#60,#18,#04,#42
	db #80,#04,#00,#42,#03,#42,#05,#42
	db #07,#42,#09,#42,#0b,#42,#0d,#7e
	db #e1,#00,#00,#02,#02,#45,#02,#3b
	db #02,#3f,#00,#8a,#e1,#00,#00,#01
	db #02,#6c,#60,#05,#02,#45,#02,#2d
	db #02,#8a,#60,#04,#06,#6c,#60,#05
	db #02,#45,#02,#8a,#60,#01,#02,#6c
	db #60,#05,#02,#45,#02,#2d,#02,#8a
	db #60,#04,#06,#6c,#60,#05,#02,#45
	db #02,#8a,#60,#01,#02,#76,#60,#05
	db #02,#4f,#02,#37,#02,#8a,#60,#04
	db #06,#76,#60,#05,#02,#4f,#02,#8a
	db #60,#01,#02,#74,#60,#05,#02,#4d
	db #02,#35,#02,#8a,#60,#04,#06,#74
	db #60,#05,#02,#4d,#00,#a6,#e5,#00
	db #00,#0e,#02,#42,#1f,#02,#a6,#45
	db #02,#42,#1f,#02,#a6,#65,#09,#02
	db #42,#1f,#02,#a6,#45,#02,#42,#1f
	db #02,#a6,#45,#02,#a6,#60,#0e,#04
	db #42,#1f,#a6,#45,#02,#42,#1f,#02
	db #a6,#45,#02,#a6,#60,#0a,#02,#a6
	db #60,#0b,#02,#aa,#60,#08,#02,#42
	db #1f,#02,#aa,#65,#09,#02,#42,#1f
	db #02,#aa,#65,#08,#02,#42,#1f,#02
	db #aa,#65,#09,#02,#42,#1f,#02,#aa
	db #65,#0b,#02,#a6,#60,#0c,#04,#42
	db #1f,#aa,#65,#0b,#04,#42,#1f,#00
	db #70,#e1,#00,#00,#02,#0a,#70,#60
	db #0d,#02,#c2,#60,#06,#02,#7f,#02
	db #83,#02,#c8,#60,#07,#0a,#c2,#60
	db #06,#02,#70,#60,#02,#04,#70,#60
	db #13,#04,#76,#60,#02,#02,#76,#60
	db #14,#02,#7a,#60,#02,#0a,#7a,#60
	db #14,#02,#cc,#60,#06,#02,#89,#02
	db #83,#02,#cc,#60,#07,#06,#ce,#60
	db #06,#02,#91,#06,#97,#02,#9b,#02
	db #de,#49,#02,#e0,#41,#00,#de,#e1
	db #00,#00,#17,#0e,#d6,#60,#07,#06
	db #d0,#60,#06,#02,#cc,#60,#17,#12
	db #c8,#60,#07,#06,#8d,#06,#d0,#60
	db #17,#0e,#cc,#60,#07,#06,#c8,#60
	db #06,#02,#cc,#60,#07,#06,#d0,#60
	db #06,#02,#97,#02,#8d,#02,#91,#02
	db #97,#02,#8d,#02,#91,#00,#00,#00
.l8e40
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#c2,#00,#5c,#8e,#65,#8e
	db #82,#8e,#a5,#8e,#c8,#8e,#eb,#8e
	db #fa,#8e,#04,#8f,#00,#00,#00,#00
	db #00,#00,#0d,#5e,#8e,#01,#00,#a8
	db #ff,#ff,#b4,#ff,#ff,#bc,#ff,#ff
	db #bc,#01,#00,#bc,#01,#00,#bc,#01
	db #00,#bc,#ff,#ff,#bc,#ff,#ff,#0d
	db #6d,#8e,#01,#00,#2a,#05,#05,#4c
	db #05,#5c,#05,#5c,#05,#5c,#05,#5c
	db #09,#2c,#18,#09,#2c,#18,#09,#2c
	db #18,#09,#2c,#18,#09,#2c,#18,#09
	db #2c,#18,#0d,#5e,#8e,#01,#00,#2a
	db #05,#7e,#2b,#0c,#3a,#2a,#76,#29
	db #0c,#32,#28,#6e,#27,#0c,#2a,#26
	db #66,#25,#0c,#22,#24,#5e,#23,#0c
	db #1a,#22,#56,#21,#0c,#0d,#5e,#8e
	db #01,#00,#05,#4c,#05,#4c,#05,#5c
	db #05,#5c,#05,#5c,#05,#5c,#09,#2c
	db #18,#09,#2c,#18,#09,#2c,#18,#09
	db #2c,#18,#09,#2c,#18,#09,#2c,#18
	db #0d,#5e,#8e,#01,#00,#7c,#f4,#3c
	db #78,#0c,#78,#f4,#34,#70,#0c,#0d
	db #5e,#8e,#01,#00,#3c,#7c,#02,#7c
	db #07,#0d,#fc,#8e,#01,#00,#3c,#7c
	db #04,#7c,#07,#0d,#06,#8f,#40,#00
	db #00,#00,#5a,#8f,#00,#5b,#8f,#c5
	db #8f,#47,#90,#00,#8b,#90,#ef,#90
	db #47,#90,#00,#71,#91,#ef,#90,#47
	db #90,#10,#da,#91,#ff,#91,#47,#90
	db #10,#10,#5b,#8f,#c5,#8f,#47,#90
	db #40,#00,#8b,#90,#ef,#90,#47,#90
	db #00,#71,#91,#ef,#90,#47,#90,#10
	db #da,#91,#ff,#91,#47,#90,#10,#10
	db #21,#92,#74,#92,#47,#90,#40,#01
	db #14,#8f,#00,#b4,#e1,#00,#00,#01
	db #42,#03,#04,#42,#05,#04,#42,#07
	db #04,#42,#09,#02,#b0,#41,#42,#03
	db #ae,#41,#42,#03,#b0,#41,#42,#03
	db #ae,#41,#42,#03,#a6,#41,#42,#03
	db #04,#a6,#41,#42,#03,#04,#aa,#41
	db #42,#03,#ae,#41,#42,#03,#b0,#41
	db #42,#03,#ae,#41,#42,#03,#a6,#41
	db #42,#03,#a0,#41,#42,#03,#b0,#41
	db #42,#03,#ae,#41,#42,#03,#a6,#41
	db #42,#03,#a0,#41,#42,#03,#9c,#41
	db #42,#03,#04,#a4,#41,#42,#03,#04
	db #aa,#41,#42,#03,#04,#ae,#41,#42
	db #03,#b0,#41,#42,#03,#a6,#e1,#00
	db #00,#02,#02,#67,#02,#8a,#60,#03
	db #02,#a6,#60,#02,#02,#67,#a6,#60
	db #04,#a6,#60,#02,#02,#8a,#60,#03
	db #02,#a6,#60,#02,#a6,#60,#04,#a2
	db #60,#02,#02,#63,#02,#8a,#60,#03
	db #02,#a2,#60,#02,#02,#63,#a2,#60
	db #04,#a2,#60,#02,#02,#8a,#60,#03
	db #02,#a2,#60,#02,#a2,#60,#04,#98
	db #60,#02,#02,#59,#02,#8a,#60,#03
	db #02,#98,#60,#02,#02,#59,#98,#60
	db #04,#98,#60,#02,#02,#8a,#60,#03
	db #02,#98,#60,#02,#98,#60,#04,#9c
	db #60,#02,#02,#5d,#02,#8a,#60,#03
	db #02,#9c,#60,#02,#02,#5d,#9c,#60
	db #04,#9c,#60,#02,#02,#8a,#60,#03
	db #02,#9c,#60,#02,#9c,#60,#04,#8e
	db #e7,#00,#00,#05,#59,#5d,#67,#75
	db #7f,#75,#67,#4f,#59,#5d,#67,#75
	db #7f,#75,#67,#4f,#59,#5d,#67,#75
	db #7f,#75,#67,#4f,#59,#5d,#67,#75
	db #7f,#75,#67,#4f,#59,#5d,#67,#75
	db #7f,#75,#67,#4f,#59,#5d,#67,#75
	db #7f,#75,#67,#4f,#59,#5d,#67,#75
	db #7f,#75,#67,#4f,#59,#5d,#67,#75
	db #7f,#75,#67,#b4,#e1,#00,#00,#01
	db #42,#03,#04,#42,#05,#04,#42,#07
	db #04,#42,#09,#02,#b8,#41,#42,#03
	db #bc,#41,#42,#03,#be,#41,#42,#03
	db #bc,#41,#42,#03,#b4,#41,#42,#03
	db #ae,#41,#42,#03,#be,#41,#42,#03
	db #bc,#41,#42,#03,#b4,#41,#42,#03
	db #ae,#41,#42,#03,#b0,#41,#42,#03
	db #04,#b4,#41,#42,#03,#04,#b8,#41
	db #42,#03,#bc,#41,#42,#03,#be,#41
	db #42,#03,#c2,#41,#42,#03,#04,#42
	db #05,#04,#42,#07,#04,#42,#09,#04
	db #42,#0b,#b4,#41,#42,#03,#00,#a6
	db #e1,#00,#00,#02,#02,#67,#02,#8a
	db #60,#03,#02,#a6,#60,#02,#02,#67
	db #a6,#60,#04,#a6,#60,#02,#02,#8a
	db #60,#03,#02,#a6,#60,#02,#a6,#60
	db #04,#a0,#60,#02,#02,#61,#02,#8a
	db #60,#03,#02,#a0,#60,#02,#02,#61
	db #a0,#60,#04,#a0,#60,#02,#02,#8a
	db #60,#03,#02,#a0,#60,#02,#a0,#60
	db #04,#98,#60,#02,#02,#59,#02,#8a
	db #60,#03,#02,#98,#60,#02,#02,#59
	db #98,#60,#04,#98,#60,#02,#02,#8a
	db #60,#03,#02,#98,#60,#02,#98,#60
	db #04,#9c,#60,#02,#02,#5d,#02,#8a
	db #60,#03,#02,#9c,#60,#02,#02,#5d
	db #9c,#60,#04,#9c,#60,#02,#02,#8a
	db #60,#03,#02,#9c,#60,#02,#9c,#60
	db #04,#c6,#e1,#00,#00,#01,#42,#03
	db #04,#42,#05,#04,#42,#07,#04,#be
	db #41,#42,#03,#c2,#41,#42,#03,#c6
	db #41,#42,#03,#c8,#41,#42,#03,#04
	db #c6,#41,#42,#03,#04,#c2,#41,#42
	db #03,#c6,#41,#42,#03,#cc,#41,#42
	db #03,#be,#41,#42,#03,#04,#42,#05
	db #04,#42,#07,#04,#42,#09,#02,#be
	db #41,#42,#03,#c2,#41,#42,#03,#c6
	db #41,#42,#03,#b4,#65,#06,#42,#09
	db #b4,#65,#07,#42,#09,#b4,#45,#42
	db #09,#b4,#45,#42,#09,#42,#0d,#42
	db #11,#42,#15,#42,#19,#42,#1d,#42
	db #1f,#00,#b0,#e5,#00,#00,#07,#42
	db #07,#b0,#45,#42,#09,#b0,#65,#06
	db #42,#09,#b0,#65,#07,#42,#09,#42
	db #0d,#42,#11,#b4,#45,#42,#09,#42
	db #0d,#42,#11,#42,#15,#42,#19,#9c
	db #e1,#00,#00,#02,#02,#5d,#02,#8a
	db #60,#03,#02,#9c,#60,#02,#02,#5d
	db #9c,#60,#04,#9c,#60,#02,#02,#8a
	db #60,#03,#02,#9c,#60,#02,#9c,#60
	db #04,#98,#e1,#00,#00,#01,#42,#03
	db #04,#42,#05,#04,#42,#07,#9c,#41
	db #42,#03,#04,#a0,#41,#42,#03,#04
	db #9c,#41,#42,#03,#04,#42,#05,#04
	db #42,#07,#a0,#41,#42,#03,#04,#a4
	db #41,#42,#03,#04,#a6,#41,#42,#03
	db #04,#a4,#41,#42,#03,#04,#a6,#41
	db #42,#03,#04,#aa,#41,#42,#03,#04
	db #ae,#41,#42,#03,#04,#aa,#41,#42
	db #03,#04,#ae,#41,#42,#03,#04,#b0
	db #41,#42,#03,#00,#98,#e1,#00,#00
	db #02,#02,#59,#02,#8a,#60,#03,#02
	db #98,#60,#02,#02,#59,#98,#60,#04
	db #98,#60,#02,#02,#8a,#60,#03,#02
	db #98,#60,#02,#98,#60,#04,#9c,#60
	db #02,#02,#5d,#02,#8a,#60,#03,#02
	db #9c,#60,#02,#02,#5d,#9c,#60,#04
	db #9c,#60,#02,#02,#8a,#60,#03,#02
	db #9c,#60,#02,#9c,#60,#04,#a0,#60
	db #02,#02,#61,#02,#8a,#60,#03,#02
	db #a0,#60,#02,#02,#61,#a0,#60,#04
	db #a0,#60,#02,#02,#8a,#60,#03,#02
	db #a0,#60,#02,#a0,#60,#04,#a4,#60
	db #02,#02,#65,#02,#8a,#60,#03,#02
	db #a4,#60,#02,#02,#65,#a4,#60,#04
	db #a4,#60,#02,#02,#8a,#60,#03,#02
	db #a4,#60,#02,#a4,#60,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #a4,#11,#9e,#0f,#b1,#0d,#00,#00
	db #e1,#00,#ff,#ff,#00,#00,#00,#00
;
; #939c
; ld de,#2450
; call #8000
;
; #93ad
; ld (#94a4),a
; ld de,#8700
; call #8000
;
; #93c4
; ld de,#8e40
; call #8000
;
.init_music		; added by Megachur
;
	ld de,l8700
	or a
	jp z,real_init_music
	ld de,l8e40
	jp real_init_music
;
.music_info
	db "Hawkeye By The Boys Without Brain - 2 (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
