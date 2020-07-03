; Music of Future Freak Of Dexion - The Last Hero (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 15/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FUTURBOD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8700
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#05,#1c,#01,#24,#87,#2d,#87
	db #50,#87,#70,#87,#94,#87,#a7,#87
	db #bc,#87,#da,#87,#e3,#87,#f8,#87
	db #16,#88,#22,#88,#00,#00,#00,#00
	db #00,#00,#0d,#26,#87,#01,#00,#30
	db #70,#0c,#6c,#0c,#2c,#28,#68,#0c
	db #64,#0c,#24,#20,#60,#0c,#5c,#0c
	db #1c,#18,#58,#0c,#54,#0c,#14,#10
	db #50,#0c,#4c,#0c,#0c,#0d,#26,#87
	db #01,#00,#ac,#fc,#ff,#b4,#fc,#ff
	db #b4,#04,#00,#b0,#04,#00,#b0,#fc
	db #ff,#ac,#fc,#ff,#ac,#04,#00,#ac
	db #04,#00,#ac,#fc,#ff,#0d,#61,#87
	db #01,#00,#2a,#05,#70,#0c,#6c,#0c
	db #2c,#28,#68,#0c,#64,#0c,#24,#20
	db #60,#0c,#5c,#0c,#1c,#18,#58,#0c
	db #54,#0c,#14,#10,#50,#0c,#4c,#0c
	db #0c,#0d,#26,#87,#01,#00,#3a,#65
	db #c3,#01,#36,#60,#fa,#01,#32,#60
	db #a4,#02,#05,#5c,#0d,#a2,#87,#01
	db #00,#34,#74,#03,#74,#07,#30,#70
	db #03,#70,#07,#2c,#6c,#03,#6c,#07
	db #28,#0d,#26,#87,#01,#00,#2a,#05
	db #7a,#33,#f8,#7c,#fc,#3a,#2f,#76
	db #2d,#f8,#72,#29,#fc,#2e,#29,#6a
	db #29,#f8,#66,#28,#fc,#22,#27,#0d
	db #26,#87,#01,#00,#2a,#05,#05,#5c
	db #0d,#de,#87,#01,#00,#34,#74,#04
	db #74,#07,#30,#70,#04,#70,#07,#2c
	db #6c,#04,#6c,#07,#28,#0d,#26,#87
	db #01,#00,#28,#30,#38,#38,#38,#b4
	db #ff,#ff,#b4,#fe,#ff,#b4,#ff,#ff
	db #34,#b4,#01,#00,#b4,#02,#00,#b4
	db #01,#00,#34,#0d,#ff,#87,#01,#00
	db #28,#30,#38,#38,#38,#34,#34,#0d
	db #1d,#88,#01,#00,#34,#0d,#24,#88
	db #40,#00,#00,#00,#ee,#88,#00,#ef
	db #88,#13,#89,#19,#89,#00,#42,#89
	db #66,#89,#70,#89,#00,#97,#89,#13
	db #89,#db,#89,#00,#45,#8a,#66,#89
	db #89,#8a,#00,#97,#89,#13,#89,#db
	db #89,#00,#45,#8a,#66,#89,#89,#8a
	db #00,#97,#89,#f3,#8a,#db,#89,#00
	db #45,#8a,#11,#8b,#89,#8a,#00,#97
	db #89,#f3,#8a,#db,#89,#00,#45,#8a
	db #11,#8b,#89,#8a,#00,#97,#89,#13
	db #89,#db,#89,#00,#2f,#8b,#73,#8b
	db #ba,#8b,#00,#24,#8c,#68,#8c,#8a
	db #8c,#00,#2f,#8b,#73,#8b,#ba,#8b
	db #00,#24,#8c,#68,#8c,#8a,#8c,#00
	db #97,#89,#f3,#8a,#db,#89,#00,#45
	db #8a,#f4,#8c,#89,#8a,#00,#97,#89
	db #f3,#8a,#db,#89,#00,#45,#8a,#11
	db #8b,#89,#8a,#00,#12,#8d,#56,#8d
	db #83,#8d,#00,#12,#8d,#ed,#8d,#83
	db #8d,#00,#03,#8e,#47,#8e,#74,#8e
	db #00,#03,#8e,#de,#8e,#74,#8e,#00
	db #97,#89,#13,#89,#db,#89,#00,#45
	db #8a,#66,#89,#89,#8a,#00,#97,#89
	db #13,#89,#db,#89,#00,#45,#8a,#66
	db #89,#89,#8a,#01,#2e,#88,#00,#b2
	db #e1,#00,#00,#01,#06,#6b,#06,#73
	db #06,#6b,#06,#73,#06,#6b,#06,#73
	db #06,#6b,#06,#73,#06,#6b,#06,#73
	db #06,#6b,#06,#73,#06,#6b,#06,#73
	db #06,#6b,#00,#74,#e1,#00,#00,#02
	db #00,#42,#60,#00,#42,#80,#00,#00
	db #a4,#61,#01,#06,#65,#06,#65,#06
	db #65,#06,#65,#06,#65,#06,#65,#06
	db #65,#06,#65,#06,#65,#06,#65,#06
	db #65,#06,#65,#06,#65,#06,#65,#06
	db #65,#00,#b4,#e1,#00,#00,#01,#06
	db #6b,#06,#75,#06,#6b,#06,#75,#06
	db #6b,#06,#75,#06,#6b,#06,#73,#06
	db #6b,#06,#73,#06,#6b,#06,#6f,#06
	db #69,#06,#6f,#06,#69,#00,#84,#e1
	db #00,#00,#02,#3e,#3b,#1e,#39,#00
	db #42,#80,#00,#00,#02,#a4,#61,#01
	db #06,#65,#06,#65,#06,#65,#06,#65
	db #06,#65,#06,#65,#06,#65,#06,#61
	db #06,#61,#06,#61,#06,#61,#06,#61
	db #06,#61,#06,#61,#06,#61,#00,#b2
	db #e1,#00,#00,#03,#02,#65,#02,#6b
	db #02,#65,#02,#73,#02,#65,#02,#6b
	db #02,#65,#02,#73,#02,#65,#02,#6b
	db #02,#65,#02,#73,#02,#65,#02,#6b
	db #02,#65,#02,#73,#02,#65,#02,#6b
	db #02,#65,#02,#73,#02,#65,#02,#6b
	db #02,#65,#02,#73,#02,#65,#02,#6b
	db #02,#65,#02,#73,#02,#65,#02,#6b
	db #02,#65,#00,#a4,#e1,#00,#00,#04
	db #06,#a4,#60,#05,#02,#a4,#60,#04
	db #02,#8a,#60,#06,#02,#a4,#60,#05
	db #02,#a4,#60,#04,#02,#65,#02,#65
	db #06,#a4,#60,#05,#02,#a4,#60,#04
	db #02,#8a,#60,#06,#02,#a4,#60,#05
	db #02,#a4,#60,#04,#02,#a4,#60,#07
	db #02,#a4,#60,#04,#06,#a4,#60,#05
	db #02,#a4,#60,#04,#02,#8a,#60,#06
	db #02,#a4,#60,#05,#02,#a4,#60,#04
	db #02,#65,#02,#65,#06,#a4,#60,#05
	db #02,#a4,#60,#04,#02,#8a,#60,#06
	db #02,#a4,#60,#05,#02,#a4,#60,#04
	db #02,#a4,#60,#07,#00,#b4,#e1,#00
	db #00,#03,#02,#65,#02,#6b,#02,#65
	db #02,#75,#02,#65,#02,#6b,#02,#65
	db #02,#75,#02,#65,#02,#6b,#02,#65
	db #02,#75,#02,#65,#02,#6b,#02,#65
	db #02,#73,#02,#61,#02,#6b,#02,#61
	db #02,#73,#02,#61,#02,#6b,#02,#61
	db #02,#6f,#02,#61,#02,#69,#02,#61
	db #02,#6f,#02,#61,#02,#69,#02,#61
	db #00,#b4,#e1,#00,#00,#04,#06,#b4
	db #60,#08,#02,#b4,#60,#04,#02,#8a
	db #60,#06,#02,#b4,#60,#08,#02,#b4
	db #60,#04,#02,#75,#02,#75,#06,#b4
	db #60,#08,#02,#b4,#60,#04,#02,#8a
	db #60,#06,#02,#b4,#60,#08,#02,#b4
	db #60,#04,#02,#b4,#60,#07,#02,#aa
	db #60,#04,#06,#aa,#60,#08,#02,#aa
	db #60,#04,#02,#8a,#60,#06,#02,#aa
	db #60,#08,#02,#aa,#60,#04,#02,#6b
	db #02,#69,#06,#b8,#60,#08,#02,#a8
	db #60,#04,#02,#8a,#60,#06,#02,#b8
	db #60,#08,#02,#a8,#60,#04,#02,#a8
	db #60,#07,#00,#b2,#e1,#00,#00,#09
	db #0e,#6f,#06,#73,#02,#65,#0e,#65
	db #02,#6b,#06,#6f,#06,#73,#0e,#6f
	db #06,#79,#02,#73,#12,#6b,#06,#6f
	db #00,#b2,#e1,#00,#00,#09,#0e,#6f
	db #06,#73,#02,#61,#0e,#61,#02,#6b
	db #06,#6f,#06,#73,#0a,#75,#0a,#79
	db #06,#73,#0a,#6f,#0a,#6b,#00,#a8
	db #e1,#00,#00,#03,#02,#5b,#02,#61
	db #02,#5b,#02,#69,#02,#5b,#02,#61
	db #02,#5b,#02,#69,#02,#5b,#02,#61
	db #02,#5b,#02,#69,#02,#5b,#02,#61
	db #02,#5b,#02,#6b,#02,#5d,#02,#65
	db #02,#5d,#02,#6b,#02,#5d,#02,#65
	db #02,#5d,#02,#6b,#02,#5d,#02,#65
	db #02,#5d,#02,#6b,#02,#5d,#02,#65
	db #02,#5d,#00,#a4,#e1,#fb,#ff,#0a
	db #42,#00,#42,#00,#42,#80,#fc,#ff
	db #a8,#e0,#00,#00,#0b,#06,#a4,#60
	db #0a,#0e,#61,#06,#65,#06,#69,#06
	db #a8,#c0,#fd,#ff,#42,#80,#fe,#ff
	db #42,#00,#42,#00,#aa,#e0,#00,#00
	db #0b,#0e,#a8,#60,#0a,#06,#65,#06
	db #65,#06,#69,#06,#6b,#06,#ae,#c0
	db #fc,#ff,#42,#00,#42,#00,#42,#80
	db #fd,#ff,#aa,#e1,#00,#00,#04,#06
	db #b2,#60,#05,#02,#aa,#60,#04,#02
	db #8a,#60,#06,#02,#b2,#60,#05,#02
	db #aa,#60,#04,#02,#6b,#02,#6b,#06
	db #b2,#60,#05,#02,#aa,#60,#04,#02
	db #8a,#60,#06,#02,#b2,#60,#05,#02
	db #aa,#60,#04,#02,#aa,#60,#07,#02
	db #ae,#60,#04,#06,#b4,#60,#08,#02
	db #ae,#60,#04,#02,#8a,#60,#06,#02
	db #b4,#60,#08,#02,#ae,#60,#04,#02
	db #6f,#02,#6f,#06,#b4,#60,#08,#02
	db #ae,#60,#04,#02,#8a,#60,#06,#02
	db #b4,#60,#08,#02,#ae,#60,#04,#02
	db #ae,#60,#07,#00,#ae,#e1,#00,#00
	db #03,#02,#61,#02,#69,#02,#61,#02
	db #6f,#02,#61,#02,#69,#02,#61,#02
	db #6f,#02,#61,#02,#69,#02,#61,#02
	db #6f,#02,#61,#02,#69,#02,#61,#02
	db #73,#02,#65,#02,#6d,#02,#65,#02
	db #73,#02,#65,#02,#6d,#02,#65,#02
	db #73,#02,#65,#02,#6d,#02,#65,#02
	db #73,#02,#65,#02,#6d,#02,#65,#00
	db #b2,#e1,#00,#00,#0b,#0e,#ae,#60
	db #0a,#0e,#6b,#06,#61,#0e,#65,#06
	db #65,#06,#b2,#60,#09,#06,#6d,#06
	db #65,#06,#73,#06,#6d,#06,#65,#06
	db #5b,#00,#b2,#e1,#00,#00,#04,#06
	db #b8,#60,#08,#02,#b2,#60,#04,#02
	db #8a,#60,#06,#02,#b8,#60,#08,#02
	db #b2,#60,#04,#02,#73,#02,#73,#06
	db #b8,#60,#08,#02,#b2,#60,#04,#02
	db #8a,#60,#06,#02,#b8,#60,#08,#02
	db #b2,#60,#04,#02,#b2,#60,#07,#02
	db #a4,#60,#04,#06,#a4,#60,#08,#02
	db #a4,#60,#04,#02,#8a,#60,#06,#02
	db #a4,#60,#08,#02,#a4,#60,#04,#02
	db #65,#02,#65,#06,#a4,#60,#08,#02
	db #a4,#60,#04,#02,#8a,#60,#06,#02
	db #a4,#60,#08,#02,#a4,#60,#04,#02
	db #a4,#60,#07,#00,#b2,#e1,#00,#00
	db #09,#0e,#6f,#06,#73,#02,#61,#0e
	db #61,#02,#6b,#06,#6f,#06,#73,#0a
	db #6f,#0a,#6b,#06,#6f,#0a,#6b,#0a
	db #69,#00,#a8,#e1,#00,#00,#03,#02
	db #5b,#02,#61,#02,#5b,#02,#69,#02
	db #5b,#02,#61,#02,#5b,#02,#69,#02
	db #5b,#02,#61,#02,#5b,#02,#69,#02
	db #5b,#02,#61,#02,#5b,#02,#69,#02
	db #5b,#02,#61,#02,#5b,#02,#69,#02
	db #5b,#02,#61,#02,#5b,#02,#65,#02
	db #57,#02,#5f,#02,#57,#02,#65,#02
	db #57,#02,#5f,#02,#57,#00,#ae,#e1
	db #fe,#ff,#0a,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #80,#ff,#ff,#b2,#e0,#00,#00,#0b
	db #1e,#b2,#60,#09,#06,#77,#06,#79
	db #0a,#7d,#0a,#79,#06,#77,#0a,#6f
	db #0a,#69,#00,#b2,#e1,#00,#00,#04
	db #06,#b2,#60,#05,#02,#b2,#60,#04
	db #02,#8a,#60,#06,#02,#b2,#60,#05
	db #02,#b2,#60,#04,#02,#73,#02,#73
	db #06,#b2,#60,#05,#02,#b2,#60,#04
	db #02,#8a,#60,#06,#02,#b2,#60,#05
	db #02,#b2,#60,#04,#02,#b2,#60,#07
	db #02,#aa,#60,#04,#06,#b2,#60,#05
	db #02,#aa,#60,#04,#02,#8a,#60,#06
	db #02,#b2,#60,#05,#02,#aa,#60,#04
	db #02,#6b,#02,#69,#06,#ae,#60,#08
	db #02,#a8,#60,#04,#02,#8a,#60,#06
	db #02,#ae,#60,#08,#02,#a8,#60,#04
	db #02,#a8,#60,#07,#00,#a8,#e1,#00
	db #00,#09,#2e,#73,#06,#77,#06,#79
	db #0a,#7d,#0a,#81,#06,#7d,#0a,#77
	db #0a,#6f,#00,#b2,#e1,#00,#00,#03
	db #02,#65,#02,#6b,#02,#65,#02,#73
	db #02,#65,#02,#6b,#02,#65,#02,#73
	db #02,#65,#02,#6b,#02,#65,#02,#73
	db #02,#65,#02,#6b,#02,#65,#02,#73
	db #02,#65,#02,#6b,#02,#65,#02,#73
	db #02,#65,#02,#6b,#02,#65,#02,#6f
	db #02,#61,#02,#69,#02,#61,#02,#6f
	db #02,#61,#02,#69,#02,#61,#00,#9e
	db #e1,#fc,#ff,#0a,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#80,#fd,#ff,#a4,#e0,#00,#00
	db #0b,#1e,#a4,#60,#09,#06,#69,#06
	db #6b,#0a,#6f,#0a,#6b,#06,#69,#0a
	db #61,#0a,#5b,#00,#a4,#e1,#00,#00
	db #04,#06,#a4,#60,#05,#02,#a4,#60
	db #04,#02,#8a,#60,#06,#02,#a4,#60
	db #05,#02,#a4,#60,#04,#02,#65,#02
	db #65,#06,#a4,#60,#05,#02,#a4,#60
	db #04,#02,#8a,#60,#06,#02,#a4,#60
	db #05,#02,#a4,#60,#04,#02,#a4,#60
	db #07,#02,#b4,#60,#04,#06,#a4,#60
	db #05,#02,#b4,#60,#04,#02,#8a,#60
	db #06,#02,#a4,#60,#05,#02,#b4,#60
	db #04,#02,#75,#02,#73,#06,#a0,#60
	db #08,#02,#b2,#60,#04,#02,#8a,#60
	db #06,#02,#a0,#60,#08,#02,#b2,#60
	db #04,#02,#b2,#60,#07,#00,#9a,#e1
	db #00,#00,#09,#2e,#65,#06,#69,#06
	db #6b,#0a,#6f,#0a,#73,#06,#6f,#0a
	db #69,#0a,#61,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #81,#00,#00,#e7,#00,#ff,#ff,#00
	db #00
;
; #8f59
; ld de,#8700
; call #8000
;
.init_music
;
	ld de,l8700
	jp real_init_music
;
.music_info
	db "Future Freak Of Dexion - The Last Hero (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
