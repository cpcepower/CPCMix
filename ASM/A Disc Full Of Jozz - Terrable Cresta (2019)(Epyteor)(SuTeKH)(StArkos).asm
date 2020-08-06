; Music of A Disc Full Of Jozz - Terrable Cresta (2019)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 31/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DISFOJTC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 31
MUSIC_DATE_RIP_MONTH	equ 03
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
.l8365 equ $ + 7
.l8364 equ $ + 6
.l8362 equ $ + 4
.l8360 equ $ + 2
.l835e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l836c equ $ + 6
.l836a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
.l86e0
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#04,#65,#01,#0c,#87,#15,#87
	db #1c,#87,#22,#87,#3b,#87,#55,#87
	db #6f,#87,#88,#87,#a1,#87,#be,#87
	db #d8,#87,#f2,#87,#fb,#87,#04,#88
	db #1e,#88,#37,#88,#00,#00,#00,#00
	db #00,#00,#0d,#0e,#87,#01,#00,#28
	db #3c,#0d,#18,#87,#01,#00,#3c,#0d
	db #1e,#87,#01,#00,#3c,#bc,#ff,#ff
	db #bc,#fe,#ff,#bc,#ff,#ff,#3c,#bc
	db #01,#00,#bc,#02,#00,#bc,#01,#00
	db #0d,#24,#87,#01,#00,#28,#bc,#ff
	db #ff,#bc,#fe,#ff,#bc,#ff,#ff,#38
	db #b8,#01,#00,#b4,#02,#00,#b4,#01
	db #00,#30,#0d,#0e,#87,#01,#00,#28
	db #bc,#ff,#ff,#b8,#fe,#ff,#b8,#ff
	db #ff,#34,#b4,#01,#00,#b0,#02,#00
	db #b0,#01,#00,#2c,#0d,#0e,#87,#01
	db #00,#2a,#05,#05,#4e,#05,#4e,#05
	db #4e,#09,#2e,#24,#09,#2e,#24,#09
	db #2e,#24,#09,#2e,#24,#0d,#0e,#87
	db #01,#00,#2a,#05,#7e,#27,#0c,#3a
	db #26,#76,#25,#0c,#32,#24,#6e,#23
	db #0c,#2a,#22,#66,#21,#0c,#0d,#0e
	db #87,#01,#00,#30,#70,#04,#6c,#07
	db #2c,#28,#68,#04,#64,#07,#24,#20
	db #60,#04,#5c,#07,#1c,#18,#58,#04
	db #54,#07,#14,#0d,#0e,#87,#01,#00
	db #28,#bc,#ff,#ff,#bc,#fe,#ff,#bc
	db #ff,#ff,#3c,#bc,#01,#00,#bc,#02
	db #00,#bc,#01,#00,#3c,#0d,#c1,#87
	db #01,#00,#28,#bc,#ff,#ff,#b8,#fe
	db #ff,#b4,#ff,#ff,#30,#ac,#01,#00
	db #a8,#02,#00,#a4,#01,#00,#20,#0d
	db #0e,#87,#01,#00,#28,#3c,#38,#34
	db #0d,#0e,#87,#01,#00,#28,#3c,#38
	db #38,#0d,#0e,#87,#01,#00,#3c,#bc
	db #ff,#ff,#bc,#fe,#ff,#bc,#ff,#ff
	db #38,#b4,#01,#00,#b0,#02,#00,#ac
	db #01,#00,#28,#0d,#0e,#87,#01,#00
	db #3c,#bc,#ff,#ff,#b8,#fe,#ff,#b8
	db #ff,#ff,#34,#b4,#01,#00,#b0,#02
	db #00,#b0,#01,#00,#0d,#0e,#87,#01
	db #00,#38,#b4,#ff,#ff,#b0,#fe,#ff
	db #ac,#ff,#ff,#24,#9c,#01,#00,#94
	db #02,#00,#8c,#01,#00,#04,#0d,#0e
	db #87,#40,#00,#00,#00,#76,#88,#00
	db #77,#88,#04,#89,#68,#89,#00,#9c
	db #89,#3f,#8a,#a1,#8a,#00,#d5,#8a
	db #65,#8b,#c9,#8b,#00,#fd,#8b,#89
	db #8c,#eb,#8c,#01,#57,#88,#00,#c0
	db #e3,#00,#00,#01,#42,#0b,#b2,#43
	db #c0,#4b,#ba,#43,#b2,#4b,#bc,#43
	db #ba,#4b,#c0,#43,#bc,#4b,#b2,#43
	db #c0,#4b,#ca,#43,#b2,#4b,#c4,#c3
	db #fb,#ff,#c6,#e0,#00,#00,#02,#42
	db #05,#02,#c6,#67,#03,#02,#42,#09
	db #02,#42,#0b,#02,#42,#0d,#02,#c4
	db #63,#04,#02,#c6,#60,#05,#85,#7d
	db #02,#c0,#60,#04,#02,#b2,#60,#01
	db #c0,#4b,#ba,#43,#b2,#4b,#bc,#43
	db #ba,#4b,#c0,#43,#bc,#4b,#ba,#63
	db #02,#c0,#6b,#01,#b2,#43,#ba,#4b
	db #ac,#c3,#f6,#ff,#ae,#e0,#00,#00
	db #02,#ae,#65,#03,#02,#b2,#63,#01
	db #ae,#4b,#ba,#43,#b2,#4b,#ae,#43
	db #ba,#4b,#b2,#43,#ae,#4b,#a8,#43
	db #b2,#4b,#ae,#43,#a8,#4b,#a2,#63
	db #02,#ae,#6b,#01,#9a,#e1,#00,#00
	db #06,#02,#73,#02,#8a,#60,#07,#02
	db #b2,#60,#06,#02,#6f,#02,#73,#02
	db #8a,#60,#07,#02,#96,#60,#06,#02
	db #5b,#02,#73,#02,#8a,#60,#07,#02
	db #b2,#60,#06,#02,#6f,#02,#73,#02
	db #8a,#60,#07,#02,#96,#60,#06,#02
	db #5b,#02,#73,#02,#8a,#60,#07,#02
	db #b2,#60,#06,#02,#6f,#02,#73,#02
	db #8a,#60,#07,#02,#96,#60,#06,#02
	db #5b,#02,#73,#02,#8a,#60,#07,#02
	db #b2,#60,#06,#02,#6f,#02,#73,#02
	db #8a,#60,#07,#02,#96,#60,#06,#00
	db #b2,#e1,#00,#00,#08,#02,#73,#06
	db #73,#06,#73,#02,#73,#02,#73,#02
	db #73,#02,#73,#06,#73,#06,#73,#02
	db #73,#73,#73,#73,#73,#02,#73,#06
	db #73,#06,#73,#02,#73,#02,#73,#02
	db #73,#02,#73,#06,#73,#06,#73,#02
	db #73,#02,#73,#00,#c6,#e3,#00,#00
	db #09,#c6,#67,#02,#c6,#6b,#03,#c6
	db #63,#0a,#c6,#60,#0b,#c6,#67,#03
	db #c6,#6b,#02,#c6,#6f,#03,#ae,#63
	db #01,#c6,#4b,#b8,#43,#42,#05,#b8
	db #60,#03,#02,#ae,#60,#01,#b8,#4b
	db #a8,#63,#02,#02,#a8,#65,#03,#02
	db #42,#07,#02,#c6,#63,#0c,#87,#91
	db #c6,#6b,#01,#d0,#63,#02,#d0,#6b
	db #01,#ce,#63,#02,#d0,#6b,#01,#d0
	db #43,#ce,#4b,#ca,#c3,#f8,#ff,#ce
	db #e0,#00,#00,#02,#ce,#65,#03,#02
	db #42,#07,#02,#ca,#63,#02,#ce,#6b
	db #01,#ca,#63,#02,#02,#42,#05,#02
	db #ca,#67,#03,#02,#42,#09,#02,#b2
	db #63,#0b,#b4,#60,#0a,#b6,#67,#01
	db #b8,#63,#0a,#ba,#60,#09,#bc,#60
	db #0b,#be,#60,#09,#c0,#67,#01,#c2
	db #63,#0a,#c4,#60,#09,#c6,#60,#0a
	db #c8,#67,#01,#ca,#63,#0c,#cc,#60
	db #09,#ce,#67,#01,#d0,#63,#0a,#a0
	db #e1,#00,#00,#06,#02,#79,#02,#8a
	db #60,#07,#02,#b8,#60,#06,#02,#75
	db #02,#79,#02,#8a,#60,#07,#02,#9c
	db #60,#06,#02,#61,#02,#79,#02,#8a
	db #60,#07,#02,#b8,#60,#06,#02,#75
	db #02,#79,#02,#8a,#60,#07,#02,#9c
	db #60,#06,#02,#5b,#02,#73,#02,#8a
	db #60,#07,#02,#b2,#60,#06,#02,#6f
	db #02,#73,#02,#8a,#60,#07,#02,#96
	db #60,#06,#02,#5b,#02,#73,#02,#8a
	db #60,#07,#02,#b2,#60,#06,#02,#6f
	db #02,#8a,#60,#07,#02,#4b,#4b,#4b
	db #00,#b8,#e1,#00,#00,#08,#02,#79
	db #06,#79,#06,#79,#02,#79,#02,#79
	db #02,#79,#02,#79,#06,#79,#06,#79
	db #02,#79,#79,#79,#79,#73,#02,#73
	db #06,#73,#06,#73,#02,#73,#02,#73
	db #02,#73,#02,#73,#06,#73,#06,#73
	db #02,#73,#73,#73,#73,#c0,#e3,#00
	db #00,#01,#02,#c0,#60,#0d,#02,#be
	db #e0,#fa,#ff,#01,#c0,#e0,#00,#00
	db #02,#c0,#60,#03,#02,#bc,#60,#01
	db #02,#bc,#60,#0d,#02,#c0,#60,#01
	db #02,#c0,#60,#0d,#02,#c8,#60,#01
	db #42,#05,#c0,#43,#c8,#4b,#bc,#43
	db #c0,#4b,#be,#c3,#fa,#ff,#c0,#e0
	db #00,#00,#02,#04,#c0,#65,#03,#02
	db #42,#07,#02,#42,#09,#02,#ca,#63
	db #01,#02,#ca,#60,#0e,#02,#c8,#e0
	db #fb,#ff,#01,#ca,#e0,#00,#00,#02
	db #ca,#60,#03,#02,#c6,#60,#01,#02
	db #c6,#60,#0d,#02,#ca,#60,#01,#02
	db #ca,#60,#0d,#02,#d2,#60,#01,#42
	db #05,#ca,#43,#d2,#4b,#c6,#43,#ca
	db #4b,#c8,#c3,#fb,#ff,#ca,#e0,#00
	db #00,#02,#04,#ca,#65,#03,#02,#42
	db #07,#02,#42,#09,#00,#a8,#e1,#00
	db #00,#06,#02,#81,#02,#8a,#60,#07
	db #02,#c0,#60,#06,#02,#7d,#02,#81
	db #02,#8a,#60,#07,#02,#a4,#60,#06
	db #02,#69,#02,#81,#02,#8a,#60,#07
	db #02,#c0,#60,#06,#02,#7d,#02,#81
	db #02,#8a,#60,#07,#02,#c0,#60,#06
	db #02,#5b,#02,#73,#02,#8a,#60,#07
	db #02,#b2,#60,#06,#02,#6f,#02,#73
	db #02,#8a,#60,#07,#02,#96,#60,#06
	db #02,#5b,#02,#73,#02,#8a,#60,#07
	db #02,#b2,#60,#06,#02,#6f,#02,#73
	db #02,#8a,#60,#07,#02,#96,#60,#06
	db #00,#c0,#e1,#00,#00,#08,#02,#81
	db #06,#81,#06,#81,#02,#81,#02,#81
	db #02,#81,#02,#81,#06,#81,#06,#81
	db #02,#81,#81,#81,#81,#73,#02,#73
	db #06,#73,#06,#73,#02,#73,#02,#73
	db #02,#73,#02,#73,#06,#73,#06,#73
	db #02,#73,#73,#73,#73,#d4,#e3,#00
	db #00,#01,#42,#05,#d4,#60,#0f,#02
	db #d0,#e3,#f9,#ff,#01,#d4,#e0,#00
	db #00,#02,#42,#05,#d4,#63,#01,#91
	db #d4,#4b,#d0,#43,#02,#d0,#65,#03
	db #02,#d0,#63,#0a,#02,#ce,#60,#01
	db #42,#05,#ce,#60,#03,#42,#07,#c4
	db #63,#02,#42,#05,#c4,#60,#03,#42
	db #07,#ce,#63,#01,#c4,#4b,#ca,#43
	db #ce,#4b,#ce,#43,#ca,#4b,#d0,#43
	db #ce,#4b,#cc,#c3,#fc,#ff,#ce,#e0
	db #00,#00,#02,#42,#05,#02,#ce,#67
	db #03,#02,#42,#09,#02,#42,#0b,#02
	db #42,#0d,#02,#42,#0f,#02,#42,#11
	db #02,#d4,#e3,#fd,#ff,#01,#42,#00
	db #d8,#e5,#00,#00,#02,#02,#d8,#67
	db #03,#02,#42,#09,#02,#42,#0b,#02
	db #42,#0d,#02,#42,#0f,#02,#42,#11
	db #00,#a4,#e1,#00,#00,#06,#02,#7d
	db #02,#8a,#60,#07,#02,#bc,#60,#06
	db #02,#79,#02,#7d,#02,#8a,#60,#07
	db #02,#bc,#60,#06,#02,#67,#02,#7f
	db #02,#8a,#60,#07,#02,#be,#60,#06
	db #02,#7b,#02,#7f,#02,#8a,#60,#07
	db #02,#be,#60,#06,#02,#69,#02,#81
	db #02,#8a,#60,#07,#02,#c0,#60,#06
	db #02,#7d,#02,#81,#02,#8a,#60,#07
	db #02,#a4,#60,#06,#02,#69,#02,#81
	db #02,#8a,#60,#07,#02,#c0,#60,#06
	db #02,#7d,#02,#81,#02,#8a,#60,#07
	db #4b,#4b,#4b,#bc,#e1,#00,#00,#08
	db #02,#7d,#06,#7d,#06,#7d,#02,#7d
	db #02,#7d,#02,#7d,#02,#7d,#06,#7d
	db #06,#7d,#02,#7d,#7d,#7d,#7d,#81
	db #02,#81,#06,#81,#06,#81,#02,#81
	db #02,#81,#02,#81,#02,#81,#06,#81
	db #06,#81,#02,#81,#81,#81,#81,#00
	db #01,#1d,#02,#01,#73,#0b,#00,#89
	db #81,#b9,#79,#9f,#00,#00,#ff,#f0
	db #af,#cd,#0e,#bc,#06,#00,#48,#cd
	db #38,#bc,#21,#ab,#8d,#cd,#8b,#8d
	db #21,#88,#6e,#11,#00,#40,#cd,#cb
	db #8d,#21,#bb,#8d,#cd,#8b,#8d,#11
	db #e0,#86,#cd,#00,#80,#3e,#10,#01
	db #0c,#bc,#ed,#49,#04,#ed,#79,#cd
	db #03,#bb,#cd,#83,#8d,#cd,#09,#bb
	db #fe,#fc,#cc,#00,#00,#f3,#d9,#08
	db #f5,#c5,#d5,#e5,#cd,#03,#80,#e1
	db #d1,#c1,#f1,#08,#d9,#fb,#76,#76
	db #76,#18,#df,#06,#f5,#ed,#78,#1f
	db #30,#fb,#c9,#af,#e5,#f5,#46,#48
	db #cd,#32,#bc,#f1,#e1,#23,#3c,#fe
	db #10,#20,#f1,#cd,#83,#8d,#76,#76
	db #76,#cd,#83,#8d,#76,#76,#76,#cd
	db #83,#8d,#c9,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#09,#0a,#0b
	db #12,#14,#03,#05,#0d,#0e,#17,#06
	db #0f,#18,#1a,#f3,#d9,#c5,#e5,#d5
	db #d9,#cd,#db,#8d,#d9,#d1,#e1,#c1
	db #d9,#fb,#c9,#23,#23,#23,#23,#3e
	db #80,#d9,#11,#01,#00,#d9,#87,#20
	db #03,#7e,#23,#17,#38,#22,#ed,#a0
	db #87,#20,#03,#7e,#23,#17,#38,#18
	db #ed,#a0,#87,#20,#03,#7e,#23,#17
	db #38,#0e,#ed,#a0,#87,#20,#03,#7e
	db #23,#17,#38,#04,#ed,#a0,#18,#d6
	db #4e,#23,#06,#00,#cb,#79,#28,#22
	db #87,#20,#03,#7e,#23,#17,#cb,#10
	db #87,#20,#03,#7e,#23,#17,#cb,#10
	db #87,#20,#03,#7e,#23,#17,#cb,#10
	db #87,#20,#03,#7e,#23,#17,#38,#02
	db #cb,#b9,#03,#d9,#62,#6b,#43,#d9
	db #87,#20,#03,#7e,#23,#17,#d9,#30
	db #0d,#04,#18,#f3,#d9,#87,#20,#03
	db #7e,#23,#17,#d9,#ed,#6a,#10,#f4
	db #23,#d9,#d8,#e5,#d9,#e5,#d9,#62
	db #6b,#ed,#42,#c1,#ed,#b0,#e1,#87
	db #20,#03,#7e,#23,#17,#38,#a1,#ed
	db #a0,#87,#20,#03,#7e,#23,#17,#38
	db #97,#ed,#a0,#c3,#e6,#8d,#00,#00
	db #4d,#02,#7c,#4f,#02,#7c,#51,#02
	db #7c,#53,#00,#a6,#ef,#00,#00,#06
	db #42,#0d,#02,#42,#0b,#02,#42,#09
	db #02,#42,#07,#10,#42,#09,#02,#42
	db #07,#0c,#42,#09,#02,#42,#0b,#02
	db #42,#0d,#42,#0f,#42,#11,#b0,#6f
	db #07,#42,#0d,#02,#42,#0b,#02,#42
	db #09,#02,#42,#07,#10,#42,#09,#02
	db #42,#07,#0c,#42,#09,#02,#42,#0b
	db #02,#42,#0d,#42,#0f,#42,#11,#aa
	db #e3,#00,#00,#01,#42,#80,#fc,#ff
	db #42,#80,#fd,#ff,#ac,#e0,#00,#00
	db #02,#04,#ac,#60,#03,#02,#42,#05
	db #02,#42,#07,#02,#aa,#63,#04,#02
	db #67,#02,#a6,#e0,#fb,#ff,#01,#42
	db #00,#42,#00,#42,#80,#fc,#ff,#42
	db #00,#ac,#e0,#00,#00,#02,#ac,#60
	db #03,#02,#42,#05,#02,#42,#07,#02
	db #ba,#63,#04,#02,#42,#05,#02,#ba
	db #63,#01,#42,#80,#03,#00,#42,#80
	db #02,#00,#b8,#e0,#00,#00,#02,#04
	db #b8,#60,#03,#02,#42,#05,#02,#42
	db #07,#02,#b8,#63,#04,#02,#7b,#02
	db #ba,#e0,#fd,#ff,#02,#42,#00,#42
	db #00,#be,#c0,#00,#00,#be,#60,#03
	db #02,#42,#05,#02,#42,#07,#02,#42
	db #09,#02,#42,#0b,#02,#42,#0d,#00
	db #a6,#ef,#00,#00,#06,#42,#0d,#02
	db #42,#0b,#02,#42,#09,#02,#42,#07
	db #10,#42,#09,#02,#42,#07,#0c,#42
	db #09,#02,#42,#0b,#02,#42,#0d,#42
	db #0f,#42,#11,#ac,#4f,#42,#0d,#02
	db #42,#0b,#02,#42,#09,#02,#42,#07
	db #10,#42,#09,#02,#42,#07,#0c,#42
	db #09,#02,#42,#0b,#02,#42,#0d,#42
	db #0f,#42,#11,#00,#00,#00,#00,#00
;
.init_music		; added by Megachur
;
	ld de,l86e0
	jp real_init_music
;
.music_info
	db "A Disc Full Of Jozz - Terrable Cresta (2019)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
