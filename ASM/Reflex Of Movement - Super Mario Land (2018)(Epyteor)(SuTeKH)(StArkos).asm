; Music of Reflex Of Movement - Super Mario Land (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 14/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "REFOMSML.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	jp l8674	; init
	jp l800a	; play
	jp l86c9	; stop
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
	ld a,#23
	dec a
	jr nz,l8081
.l801a equ $ + 1
	ld hl,#8946
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
	ld hl,#8972
	ld (l808a),hl
	ld a,#01
	ld (l8085),a
	ld (l80ab),a
	ld (l8110),a
	ld (l8175),a
.l8080 equ $ + 1
	ld a,#30
.l8081
	ld (l8015),a
.l8085 equ $ + 1
	ld a,#f4
	dec a
	jr nz,l80a7
.l808a equ $ + 1
	ld hl,#8974
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
	ld hl,#898e
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
	ld hl,#8738
	ld a,(l826d)
	ld (l8265),a
	jr l8107
.l80ea
	ld l,b
	add hl,hl
.l80ed equ $ + 1
	ld bc,#86ec
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
	ld hl,#89dd
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
	ld hl,#87f1
	ld a,(l8239)
	ld (l8231),a
	jr l816c
.l814f
	ld l,b
	add hl,hl
.l8152 equ $ + 1
	ld bc,#86ec
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
	ld hl,#8a65
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
	ld hl,#8801
	ld a,(l8208)
	ld (l8200),a
	jr l81d1
.l81b4
	ld l,b
	add hl,hl
.l81b7 equ $ + 1
	ld bc,#86ec
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
	ld a,#04
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
	ld de,#0f3e
.l81fa equ $ + 1
	ld hl,#8805
	call l836d
.l8200 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8209
	ld (l81fa),hl
.l8208 equ $ + 1
	ld a,#01
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
	ld de,#022e
.l822b equ $ + 1
	ld hl,#87fc
	call l836d
.l8231 equ $ + 1
	ld a,#01
	dec a
	jr nz,l823a
	ld (l822b),hl
.l8239 equ $ + 1
	ld a,#01
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
	ld de,#033a
.l825f equ $ + 1
	ld hl,#8740
	call l836d
.l8265 equ $ + 1
	ld a,#01
	dec a
	jr nz,l826e
	ld (l825f),hl
.l826d equ $ + 1
	ld a,#01
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
	cp #0c
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
	ld (hl),a
	nop
.l8360
	rst #28
	nop
.l8362
	ld e,a
	nop
.l8364
	dec b
.l8365
	inc c
	nop
	djnz l8369
.l8369
	nop
.l836a
	inc a
	nop
.l836c
	inc c
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
	jr l8422
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
.l8422
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
;
.l86e0
;
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#04,#4d,#02,#20,#87,#29,#87
	db #36,#87,#43,#87,#50,#87,#5d,#87
	db #71,#87,#82,#87,#92,#87,#a2,#87
	db #b6,#87,#ca,#87,#de,#87,#ef,#87
	db #ff,#87,#08,#88,#0f,#88,#30,#88
	db #3d,#88,#4a,#88,#5b,#88,#64,#88
	db #75,#88,#86,#88,#af,#88,#ec,#88
	db #00,#00,#00,#00,#00,#00,#0d,#22
	db #87,#01,#00,#7c,#02,#7c,#06,#7c
	db #09,#7c,#02,#0d,#2b,#87,#01,#00
	db #7c,#02,#7c,#06,#7c,#0a,#7c,#02
	db #0d,#38,#87,#01,#00,#7c,#02,#7c
	db #06,#7c,#0b,#7c,#02,#0d,#45,#87
	db #01,#00,#7c,#02,#7c,#06,#7c,#0c
	db #7c,#02,#0d,#52,#87,#01,#00,#3a
	db #65,#c3,#01,#36,#60,#fa,#01,#32
	db #60,#a4,#02,#25,#5c,#02,#0d,#22
	db #87,#01,#00,#09,#2c,#1a,#09,#2c
	db #1a,#09,#2c,#1a,#09,#2c,#1a,#0d
	db #22,#87,#01,#00,#2e,#05,#09,#2e
	db #26,#09,#2e,#26,#09,#2e,#26,#0d
	db #22,#87,#01,#00,#2e,#05,#25,#5c
	db #02,#25,#5c,#02,#25,#5c,#02,#0d
	db #22,#87,#01,#00,#3a,#65,#c3,#01
	db #36,#60,#fa,#01,#32,#60,#a4,#02
	db #09,#2e,#26,#0d,#22,#87,#01,#00
	db #3e,#65,#d5,#00,#3a,#63,#52,#01
	db #36,#61,#aa,#01,#25,#5c,#02,#0d
	db #22,#87,#01,#00,#3e,#65,#d5,#00
	db #3a,#63,#52,#01,#36,#61,#aa,#01
	db #09,#2e,#26,#0d,#22,#87,#01,#00
	db #25,#5c,#02,#25,#5c,#02,#25,#5c
	db #02,#25,#5c,#02,#0d,#22,#87,#01
	db #00,#2e,#05,#09,#2c,#1a,#09,#2c
	db #1a,#09,#2c,#1a,#0d,#22,#87,#01
	db #00,#68,#02,#7c,#02,#0d,#03,#88
	db #01,#00,#7c,#02,#0d,#0a,#88,#01
	db #00,#fc,#ff,#ff,#02,#fc,#fe,#ff
	db #02,#fc,#ff,#ff,#02,#7c,#02,#fc
	db #01,#00,#02,#fc,#02,#00,#02,#fc
	db #01,#00,#02,#7c,#02,#0d,#11,#88
	db #01,#00,#68,#02,#7c,#02,#78,#02
	db #74,#02,#0d,#38,#88,#01,#00,#7c
	db #02,#7c,#06,#7c,#07,#7c,#02,#0d
	db #3f,#88,#01,#00,#09,#2e,#26,#09
	db #2e,#26,#09,#2e,#26,#09,#2e,#26
	db #0d,#22,#87,#01,#00,#2e,#05,#26
	db #03,#0d,#22,#87,#01,#00,#3e,#65
	db #d5,#00,#3a,#63,#52,#01,#36,#61
	db #aa,#01,#0d,#22,#87,#01,#00,#3a
	db #65,#c3,#01,#36,#60,#fa,#01,#32
	db #60,#a4,#02,#0d,#22,#87,#01,#00
	db #7c,#02,#7c,#02,#7c,#02,#7c,#02
	db #78,#02,#74,#02,#70,#02,#6c,#02
	db #68,#02,#64,#02,#60,#02,#5c,#02
	db #58,#02,#54,#02,#50,#02,#4c,#02
	db #48,#02,#44,#02,#0d,#22,#87,#01
	db #00,#7c,#02,#7c,#02,#7c,#02,#7c
	db #02,#78,#02,#74,#02,#70,#02,#6c
	db #02,#68,#02,#68,#02,#64,#02,#64
	db #02,#60,#02,#60,#02,#5c,#02,#5c
	db #02,#58,#02,#58,#02,#54,#02,#54
	db #02,#50,#02,#50,#02,#4c,#02,#4c
	db #02,#48,#02,#48,#02,#44,#02,#44
	db #02,#0d,#22,#87,#01,#00,#fc,#ff
	db #ff,#02,#fc,#ff,#ff,#02,#fc,#ff
	db #ff,#02,#fc,#ff,#ff,#02,#f8,#ff
	db #ff,#02,#f4,#ff,#ff,#02,#f0,#ff
	db #ff,#02,#ec,#ff,#ff,#02,#e8,#ff
	db #ff,#02,#e4,#ff,#ff,#02,#e0,#ff
	db #ff,#02,#dc,#ff,#ff,#02,#d8,#ff
	db #ff,#02,#d4,#ff,#ff,#02,#d0,#ff
	db #ff,#02,#cc,#ff,#ff,#02,#c8,#ff
	db #ff,#02,#c4,#ff,#ff,#02,#0d,#22
	db #87,#30,#00,#00,#00,#72,#89,#00
	db #7b,#89,#b1,#89,#43,#8a,#00,#b6
	db #8a,#e5,#8a,#6f,#8b,#00,#7b,#89
	db #d5,#8b,#67,#8c,#30,#bd,#8c,#f4
	db #8c,#7e,#8d,#31,#74,#89,#30,#e5
	db #8d,#18,#8e,#aa,#8e,#30,#72,#89
	db #00,#12,#8f,#45,#8f,#d1,#8f,#01
	db #3f,#89,#11,#00,#11,#4c,#09,#09
	db #11,#11,#00,#b6,#e7,#00,#00,#01
	db #02,#42,#0d,#06,#42,#07,#02,#42
	db #0d,#06,#b6,#67,#02,#02,#42,#0d
	db #06,#42,#07,#02,#42,#0d,#06,#b6
	db #67,#03,#02,#42,#0d,#06,#42,#07
	db #02,#42,#0d,#06,#b6,#67,#04,#02
	db #42,#0d,#06,#42,#07,#02,#42,#0d
	db #00,#9e,#e1,#00,#00,#05,#9e,#60
	db #06,#9e,#69,#07,#ac,#61,#08,#ac
	db #60,#06,#ac,#65,#09,#9e,#61,#0a
	db #9e,#60,#06,#9e,#69,#0b,#ac,#61
	db #08,#ac,#60,#06,#ac,#60,#09,#9e
	db #60,#0c,#9e,#65,#0d,#9e,#61,#09
	db #ae,#60,#08,#ae,#60,#06,#ae,#65
	db #07,#9e,#61,#0a,#9e,#60,#06,#9e
	db #69,#0b,#ae,#61,#08,#ae,#60,#06
	db #ae,#65,#07,#9e,#61,#05,#9e,#60
	db #06,#9e,#69,#07,#b0,#61,#08,#b0
	db #60,#06,#b0,#65,#07,#9e,#61,#0a
	db #9e,#60,#06,#9e,#69,#0b,#b0,#61
	db #08,#b0,#60,#06,#b0,#60,#09,#9e
	db #60,#0c,#9e,#65,#0d,#9e,#61,#09
	db #b2,#60,#08,#b2,#60,#06,#b2,#65
	db #07,#b0,#61,#0a,#b0,#60,#06,#b0
	db #60,#0b,#b2,#60,#05,#b2,#60,#06
	db #a8,#60,#0a,#be,#e3,#00,#00,#0e
	db #02,#42,#05,#42,#07,#42,#09,#42
	db #0b,#b6,#c3,#f3,#ff,#ba,#e0,#00
	db #00,#0f,#b6,#60,#0e,#ba,#4d,#02
	db #be,#43,#42,#1f,#02,#be,#4d,#ba
	db #60,#0f,#02,#b6,#60,#0e,#04,#b6
	db #43,#b6,#60,#10,#02,#ba,#60,#0e
	db #ba,#c0,#f5,#ff,#be,#e0,#00,#00
	db #0f,#ba,#6f,#0e,#be,#43,#02,#b6
	db #4b,#ba,#43,#ba,#60,#10,#42,#05
	db #b6,#63,#0e,#04,#ba,#c0,#f5,#ff
	db #be,#e0,#00,#00,#0f,#02,#c0,#60
	db #0e,#02,#be,#4b,#be,#c3,#f1,#ff
	db #c4,#e0,#00,#00,#0f,#be,#6b,#0e
	db #c8,#43,#02,#b6,#60,#11,#b6,#e7
	db #00,#00,#03,#02,#42,#0d,#06,#42
	db #07,#02,#42,#0d,#06,#b6,#67,#01
	db #02,#42,#0d,#06,#42,#07,#02,#42
	db #0d,#06,#b6,#67,#12,#02,#42,#0d
	db #06,#42,#07,#02,#42,#0d,#ac,#67
	db #01,#02,#42,#0d,#00,#a8,#e1,#00
	db #00,#05,#a8,#60,#06,#a8,#69,#07
	db #c8,#61,#08,#c8,#60,#06,#c8,#65
	db #09,#a8,#61,#0a,#a8,#60,#06,#a8
	db #69,#0b,#c8,#61,#08,#c8,#60,#06
	db #c8,#60,#09,#a6,#60,#0c,#a6,#65
	db #0d,#a6,#61,#09,#c4,#60,#08,#c4
	db #60,#06,#c4,#65,#07,#a6,#61,#0a
	db #a6,#60,#06,#a6,#69,#0b,#c4,#61
	db #08,#c4,#60,#06,#c4,#65,#07,#a2
	db #61,#05,#a2,#60,#06,#a2,#69,#07
	db #a6,#61,#08,#a6,#60,#06,#a6,#65
	db #07,#a8,#61,#0a,#a8,#60,#06,#a8
	db #69,#0b,#ac,#61,#08,#ac,#60,#06
	db #ac,#60,#09,#ac,#60,#13,#ac,#65
	db #07,#ac,#61,#09,#ac,#60,#07,#02
	db #ac,#65,#14,#ac,#61,#15,#02,#6d
	db #ac,#60,#16,#02,#ac,#60,#15,#42
	db #87,#00,#00,#42,#09,#42,#0b,#b6
	db #63,#0e,#42,#0f,#b0,#4b,#b0,#c3
	db #e9,#ff,#b6,#e0,#00,#00,#0f,#42
	db #05,#42,#07,#42,#09,#b0,#63,#0e
	db #ac,#60,#0f,#02,#b6,#60,#0e,#ac
	db #4b,#02,#b6,#43,#42,#0f,#02,#ac
	db #4b,#b6,#63,#0f,#42,#0d,#b6,#6b
	db #0e,#a8,#43,#42,#05,#42,#07,#ac
	db #43,#42,#05,#42,#07,#b0,#43,#42
	db #05,#42,#07,#b0,#c3,#f1,#ff,#b4
	db #e0,#00,#00,#0f,#b4,#65,#10,#42
	db #07,#42,#09,#42,#0b,#dc,#65,#17
	db #04,#dc,#60,#18,#00,#9e,#e1,#00
	db #00,#05,#9e,#60,#06,#9e,#69,#07
	db #ac,#61,#08,#ac,#60,#06,#ac,#65
	db #09,#9e,#61,#0a,#9e,#60,#06,#9e
	db #69,#0b,#ac,#61,#08,#ac,#60,#06
	db #ac,#60,#09,#9e,#60,#0c,#9e,#65
	db #0d,#9e,#61,#09,#ae,#60,#08,#ae
	db #60,#06,#ae,#65,#07,#9e,#61,#0a
	db #9e,#60,#06,#9e,#69,#0b,#ae,#61
	db #08,#ae,#60,#06,#ae,#65,#07,#9e
	db #61,#05,#9e,#60,#06,#9e,#69,#07
	db #b0,#61,#08,#b0,#60,#06,#b0,#65
	db #07,#9e,#61,#0a,#9e,#60,#06,#9e
	db #69,#0b,#b0,#61,#08,#b0,#60,#06
	db #b0,#60,#09,#9e,#60,#0c,#9e,#65
	db #0d,#9e,#61,#09,#b2,#60,#08,#b2
	db #60,#06,#b2,#65,#07,#9e,#61,#0a
	db #9e,#60,#06,#9e,#60,#0b,#b2,#60
	db #05,#b2,#60,#06,#b2,#60,#0a,#be
	db #e3,#00,#00,#0e,#02,#42,#05,#42
	db #07,#42,#09,#42,#0b,#b6,#c3,#f3
	db #ff,#ba,#e0,#00,#00,#0f,#b6,#60
	db #0e,#ba,#4d,#02,#be,#43,#42,#1f
	db #02,#be,#4d,#ba,#60,#0f,#02,#b6
	db #60,#0e,#04,#b6,#43,#b6,#60,#10
	db #02,#ba,#60,#0e,#ba,#c0,#f5,#ff
	db #be,#e0,#00,#00,#0f,#ba,#6f,#0e
	db #be,#43,#04,#7b,#04,#77,#04,#89
	db #02,#b6,#4b,#c4,#43,#04,#8f,#04
	db #7b,#02,#b6,#60,#11,#b6,#e7,#00
	db #00,#03,#02,#42,#0d,#06,#42,#07
	db #02,#42,#0d,#06,#b6,#67,#01,#02
	db #42,#0d,#06,#42,#07,#02,#42,#0d
	db #06,#b6,#67,#12,#02,#42,#0d,#06
	db #42,#07,#02,#42,#0d,#ac,#67,#01
	db #02,#42,#0d,#0a,#dc,#71,#19,#02
	db #be,#73,#18,#00,#a8,#e1,#00,#00
	db #05,#a8,#60,#06,#a8,#69,#07,#c8
	db #61,#08,#c8,#60,#06,#c8,#65,#09
	db #a8,#61,#0a,#a8,#60,#06,#a8,#69
	db #0b,#c8,#61,#08,#c8,#60,#06,#c8
	db #60,#09,#a6,#60,#0c,#a6,#65,#0d
	db #a6,#61,#09,#c4,#60,#08,#c4,#60
	db #06,#c4,#65,#07,#a6,#61,#0a,#a6
	db #60,#06,#a6,#69,#0b,#c4,#61,#08
	db #c4,#60,#06,#c4,#65,#07,#a2,#61
	db #05,#a2,#60,#06,#a2,#69,#07,#a6
	db #61,#08,#a6,#60,#06,#a6,#65,#07
	db #a8,#61,#0a,#a8,#60,#06,#a8,#69
	db #0b,#ac,#61,#08,#ac,#60,#06,#ac
	db #60,#09,#ac,#60,#13,#ac,#65,#07
	db #ac,#61,#09,#ac,#60,#07,#04,#ac
	db #65,#14,#ac,#61,#15,#02,#6d,#ac
	db #60,#16,#02,#ac,#60,#15,#42,#80
	db #00,#00,#04,#b6,#63,#0e,#42,#1f
	db #b0,#4b,#b0,#c3,#e9,#ff,#b6,#e0
	db #00,#00,#0f,#42,#05,#ba,#63,#0e
	db #42,#05,#b6,#4b,#be,#43,#02,#77
	db #be,#4b,#02,#b0,#c3,#e9,#ff,#b6
	db #e0,#00,#00,#0f,#42,#0d,#b6,#6b
	db #0e,#be,#43,#02,#77,#bc,#c0,#f5
	db #ff,#c0,#e0,#00,#00,#0f,#02,#be
	db #60,#0e,#04,#b0,#c0,#e9,#ff,#b6
	db #e0,#00,#00,#0f,#02,#ba,#60,#0e
	db #ba,#60,#10,#42,#05,#42,#07,#42
	db #09,#42,#0b,#da,#6d,#17,#dc,#45
	db #04,#c4,#60,#18,#00,#c0,#e7,#00
	db #00,#01,#02,#42,#0d,#06,#42,#07
	db #02,#42,#0d,#06,#c4,#47,#02,#42
	db #0d,#06,#42,#07,#02,#42,#0d,#06
	db #c0,#47,#02,#42,#0d,#06,#42,#07
	db #02,#42,#0d,#06,#b6,#47,#02,#42
	db #0d,#06,#42,#07,#02,#42,#0d,#00
	db #a8,#e1,#00,#00,#05,#a8,#60,#06
	db #a8,#69,#07,#b6,#61,#08,#b6,#60
	db #06,#b6,#65,#09,#a8,#61,#0a,#a8
	db #60,#06,#a8,#69,#0b,#b6,#61,#08
	db #b6,#60,#06,#b6,#60,#09,#a6,#60
	db #0c,#a6,#65,#0d,#a6,#61,#09,#c4
	db #60,#08,#c4,#60,#06,#c4,#65,#07
	db #a6,#61,#0a,#a6,#60,#06,#a6,#69
	db #0b,#c4,#61,#08,#c4,#60,#06,#c4
	db #65,#07,#a2,#61,#05,#a2,#60,#06
	db #a2,#69,#07,#ba,#61,#08,#ba,#60
	db #06,#ba,#65,#07,#a2,#61,#0a,#a2
	db #60,#06,#a2,#69,#0b,#ba,#61,#08
	db #ba,#60,#06,#ba,#60,#09,#b6,#60
	db #0c,#b6,#65,#0d,#b6,#61,#16,#ba
	db #60,#08,#ba,#60,#06,#ba,#65,#14
	db #bc,#61,#0a,#bc,#60,#06,#bc,#60
	db #15,#be,#60,#05,#be,#60,#06,#be
	db #60,#0a,#42,#80,#00,#00,#04,#c8
	db #63,#0e,#42,#05,#42,#07,#cc,#43
	db #42,#05,#42,#07,#ce,#43,#42,#05
	db #c4,#49,#c8,#c3,#f8,#ff,#cc,#e0
	db #00,#00,#0f,#42,#05,#42,#07,#42
	db #09,#c4,#63,#0e,#c4,#65,#10,#42
	db #07,#42,#09,#cc,#6f,#0e,#02,#85
	db #c0,#43,#42,#05,#b6,#4b,#c8,#43
	db #42,#05,#42,#07,#c4,#43,#42,#05
	db #c0,#43,#42,#05,#42,#07,#42,#09
	db #be,#43,#42,#05,#42,#1f,#c0,#43
	db #42,#05,#42,#1f,#be,#c3,#f5,#ff
	db #c2,#e0,#00,#00,#0f,#02,#c4,#60
	db #0e,#00,#c0,#e7,#00,#00,#01,#02
	db #42,#0d,#06,#42,#07,#02,#42,#0d
	db #06,#c4,#47,#02,#42,#0d,#06,#42
	db #07,#02,#42,#0d,#06,#c6,#47,#02
	db #42,#0d,#06,#42,#07,#02,#42,#0d
	db #06,#b2,#47,#02,#42,#0d,#06,#b4
	db #47,#02,#42,#0d,#00,#a8,#e1,#00
	db #00,#05,#a8,#60,#06,#a8,#69,#07
	db #b6,#61,#08,#b6,#60,#06,#b6,#65
	db #09,#a8,#61,#0a,#a8,#60,#06,#a8
	db #69,#0b,#b6,#61,#08,#b6,#60,#06
	db #b6,#60,#09,#a6,#60,#0c,#a6,#65
	db #0d,#a6,#61,#09,#c4,#60,#08,#c4
	db #60,#06,#c4,#65,#07,#a6,#61,#0a
	db #a6,#60,#06,#a6,#69,#0b,#c4,#61
	db #08,#c4,#60,#06,#c4,#65,#07,#ae
	db #61,#05,#ae,#60,#06,#ae,#69,#07
	db #bc,#61,#08,#bc,#60,#06,#bc,#65
	db #07,#ae,#61,#0a,#ae,#60,#06,#ae
	db #69,#0b,#bc,#61,#08,#bc,#60,#06
	db #bc,#65,#09,#b6,#61,#05,#b6,#60
	db #06,#02,#ba,#65,#05,#ba,#61,#06
	db #02,#bc,#60,#05,#bc,#60,#06,#02
	db #b4,#65,#05,#b4,#61,#06,#b4,#60
	db #13,#42,#87,#00,#00,#42,#0b,#42
	db #0f,#c8,#63,#0e,#42,#05,#42,#07
	db #cc,#43,#42,#05,#42,#07,#ce,#43
	db #42,#05,#c4,#49,#c8,#c3,#f8,#ff
	db #cc,#e0,#00,#00,#0f,#42,#05,#42
	db #07,#42,#09,#c4,#63,#0e,#c4,#65
	db #10,#42,#07,#42,#09,#b6,#6f,#0e
	db #bc,#4b,#c4,#47,#ce,#c3,#f6,#ff
	db #d4,#e0,#00,#00,#0f,#02,#d2,#60
	db #0e,#42,#05,#42,#07,#42,#09,#42
	db #0d,#42,#11,#ce,#43,#02,#ba,#4d
	db #c4,#43,#02,#85,#81,#02,#c4,#4d
	db #bc,#43,#02,#c0,#4d,#ba,#43,#02
	db #bc,#4d,#00,#00,#00,#00,#00,#00
	db #a9,#04,#1c,#bc,#4d,#00,#00,#7f
	db #00,#ff,#c0,#00,#00,#00,#00,#00
;
; #9091
; ld de,#86e0
; call #8000
;
.init_music		; added by Megachur
;
	ld de,l86e0
	jp real_init_music
;
.music_info
	db "Reflex Of Movement - Super Mario Land (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
