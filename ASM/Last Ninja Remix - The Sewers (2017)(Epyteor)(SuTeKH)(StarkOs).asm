; Music of Last Ninja Remix - The Sewers (2017)(Epyteor)(SuTeKH)(StarkOs)
; Ripped by Megachur the 28/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LASTNRTS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #8000

	read "music_header.asm"
	
	jp l8674
	jp l800a
	jp l86c9
.l8009
	nop
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
.l8700	; music data
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#0c,#e6,#00,#24,#87,#2d,#87
	db #40,#87,#63,#87,#6d,#87,#77,#87
	db #94,#87,#9a,#87,#b1,#87,#c5,#87
	db #d6,#87,#e2,#87,#00,#00,#00,#00
	db #00,#00,#0d,#26,#87,#01,#00,#3a
	db #7f,#c3,#01,#36,#60,#fa,#01,#32
	db #60,#a4,#02,#05,#4e,#0d,#3b,#87
	db #01,#00,#3a,#26,#76,#26,#0c,#32
	db #25,#6e,#25,#0c,#2a,#24,#66,#24
	db #0c,#22,#23,#5e,#23,#0c,#1a,#22
	db #56,#22,#0c,#12,#21,#4e,#21,#0c
	db #0d,#26,#87,#01,#00,#30,#70,#05
	db #70,#09,#0d,#65,#87,#01,#00,#30
	db #70,#05,#70,#08,#0d,#6f,#87,#01
	db #00,#7c,#03,#7c,#03,#78,#0f,#78
	db #0f,#74,#03,#74,#03,#70,#0f,#70
	db #0f,#6c,#03,#6c,#03,#68,#0f,#68
	db #0f,#0d,#26,#87,#01,#00,#3c,#0d
	db #96,#87,#01,#00,#bc,#ff,#ff,#bc
	db #ff,#ff,#bc,#ff,#ff,#bc,#01,#00
	db #bc,#01,#00,#bc,#01,#00,#0d,#9c
	db #87,#01,#00,#3c,#38,#34,#30,#2c
	db #28,#24,#20,#1c,#18,#14,#10,#0c
	db #08,#04,#0d,#26,#87,#01,#00,#3c
	db #3c,#3c,#38,#38,#38,#34,#34,#34
	db #30,#30,#30,#0d,#26,#87,#01,#00
	db #7c,#0c,#3c,#3c,#7c,#0c,#3c,#0d
	db #26,#87,#01,#00,#7c,#0c,#3c,#3c
	db #7c,#0c,#3c,#3c,#3c,#3c,#3c,#0d
	db #26,#87,#40,#00,#00,#00,#65,#88
	db #00,#86,#88,#cc,#88,#69,#88,#00
	db #09,#89,#6b,#89,#d5,#89,#00,#09
	db #89,#34,#8a,#9e,#8a,#00,#09,#89
	db #ee,#8a,#59,#8b,#00,#09,#89,#b8
	db #8b,#d5,#89,#20,#24,#8c,#68,#8c
	db #9f,#8c,#67,#88,#00,#24,#8c,#68
	db #8c,#e3,#8c,#20,#09,#89,#6b,#89
	db #d5,#89,#65,#88,#00,#09,#89,#34
	db #8a,#9e,#8a,#00,#09,#89,#ee,#8a
	db #59,#8b,#20,#24,#8c,#68,#8c,#9f
	db #8c,#67,#88,#00,#24,#8c,#68,#8c
	db #e3,#8c,#20,#09,#89,#23,#8d,#9e
	db #8a,#65,#88,#00,#09,#89,#54,#8d
	db #59,#8b,#01,#f8,#87,#31,#00,#19
	db #00,#42,#8f,#00,#00,#02,#42,#11
	db #02,#42,#13,#02,#42,#15,#02,#42
	db #17,#02,#42,#19,#02,#42,#1b,#02
	db #42,#1d,#02,#42,#1f,#00,#96,#e1
	db #00,#00,#01,#57,#08,#57,#57,#5b
	db #5b,#08,#5b,#5b,#5f,#5f,#08,#5b
	db #02,#5f,#0a,#5f,#5b,#57,#57,#04
	db #90,#60,#02,#90,#49,#96,#61,#01
	db #57,#5b,#5b,#04,#90,#60,#02,#90
	db #49,#9a,#61,#01,#5b,#5f,#5f,#04
	db #90,#60,#02,#90,#49,#9a,#61,#01
	db #02,#5f,#06,#90,#60,#02,#90,#49
	db #9e,#61,#01,#5b,#42,#60,#00,#42
	db #80,#00,#00,#3c,#a4,#61,#03,#02
	db #42,#03,#02,#42,#05,#02,#42,#07
	db #02,#a8,#41,#02,#42,#03,#02,#42
	db #05,#02,#42,#07,#02,#ac,#61,#04
	db #02,#42,#03,#02,#42,#05,#02,#a8
	db #61,#03,#02,#ac,#60,#04,#02,#42
	db #03,#02,#42,#05,#02,#a8,#61,#03
	db #00,#96,#e1,#00,#00,#01,#57,#04
	db #90,#60,#02,#90,#49,#96,#61,#01
	db #57,#5b,#5b,#04,#90,#60,#02,#90
	db #49,#9a,#61,#01,#5b,#5f,#5f,#04
	db #90,#60,#02,#90,#49,#9a,#61,#01
	db #02,#5f,#06,#90,#60,#02,#90,#49
	db #9e,#61,#01,#5b,#57,#57,#04,#90
	db #60,#02,#90,#49,#96,#61,#01,#57
	db #5b,#5b,#04,#90,#60,#02,#90,#49
	db #9a,#61,#01,#5b,#5f,#5f,#04,#90
	db #60,#02,#90,#49,#9a,#61,#01,#02
	db #5f,#06,#90,#60,#02,#90,#49,#9e
	db #61,#01,#5b,#a4,#e1,#00,#00,#03
	db #02,#42,#03,#02,#42,#05,#02,#42
	db #07,#02,#a8,#41,#02,#42,#03,#02
	db #42,#05,#02,#42,#07,#02,#ac,#61
	db #04,#02,#42,#03,#02,#42,#05,#02
	db #a8,#61,#03,#02,#ac,#60,#04,#02
	db #42,#03,#02,#42,#05,#02,#a8,#61
	db #03,#02,#65,#02,#42,#03,#02,#42
	db #05,#02,#42,#07,#02,#a8,#41,#02
	db #42,#03,#02,#42,#05,#02,#42,#07
	db #02,#ac,#61,#04,#02,#42,#03,#02
	db #42,#05,#02,#a8,#61,#03,#02,#ac
	db #60,#04,#02,#42,#03,#02,#42,#05
	db #02,#a8,#61,#03,#00,#a2,#e3,#00
	db #00,#05,#67,#63,#59,#63,#a2,#4b
	db #a2,#4f,#a2,#53,#a2,#57,#02,#a2
	db #43,#67,#63,#67,#6d,#67,#63,#67
	db #63,#59,#5f,#9e,#4b,#9e,#4f,#9e
	db #53,#9e,#57,#02,#b6,#43,#b6,#4b
	db #b4,#43,#6d,#67,#a6,#4b,#a2,#43
	db #67,#63,#59,#63,#a2,#4b,#a2,#4f
	db #a2,#53,#a2,#57,#02,#a2,#43,#67
	db #63,#67,#6d,#67,#63,#67,#63,#59
	db #5f,#9e,#4b,#9e,#4f,#9e,#53,#9e
	db #57,#02,#b6,#43,#b6,#4b,#b4,#43
	db #6d,#67,#a6,#4b,#a4,#e1,#00,#00
	db #03,#02,#42,#03,#02,#42,#05,#02
	db #42,#07,#02,#a8,#41,#02,#42,#03
	db #02,#42,#05,#02,#42,#07,#02,#ac
	db #61,#04,#02,#42,#03,#02,#42,#05
	db #02,#a8,#61,#03,#02,#ac,#60,#04
	db #02,#42,#03,#02,#42,#05,#02,#a8
	db #61,#03,#02,#65,#02,#42,#03,#02
	db #42,#05,#02,#42,#07,#02,#a8,#41
	db #02,#42,#03,#02,#42,#05,#02,#42
	db #07,#02,#ac,#61,#04,#02,#42,#03
	db #02,#42,#05,#02,#a8,#61,#03,#02
	db #ac,#60,#04,#02,#42,#03,#02,#a8
	db #61,#03,#02,#42,#03,#00,#a8,#e3
	db #fc,#ff,#06,#42,#80,#fd,#ff,#ac
	db #c0,#00,#00,#ac,#60,#07,#18,#a8
	db #e0,#f9,#ff,#06,#ac,#c0,#00,#00
	db #a8,#60,#07,#a4,#60,#08,#02,#69
	db #02,#65,#02,#9e,#60,#09,#5b,#5f
	db #65,#69,#6d,#73,#b6,#60,#06,#b6
	db #60,#07,#08,#ba,#60,#06,#7d,#ba
	db #c0,#fe,#ff,#bc,#c0,#00,#00,#7b
	db #b6,#60,#09,#02,#73,#02,#ac,#60
	db #06,#02,#ac,#60,#07,#00,#a4,#e1
	db #00,#00,#03,#02,#42,#03,#02,#42
	db #05,#02,#42,#07,#02,#a8,#41,#02
	db #42,#03,#02,#42,#05,#02,#42,#07
	db #02,#ac,#61,#04,#02,#42,#03,#02
	db #42,#05,#02,#a8,#61,#03,#02,#ac
	db #60,#04,#02,#42,#03,#02,#a8,#61
	db #03,#02,#42,#03,#02,#a4,#41,#02
	db #42,#03,#02,#42,#05,#02,#42,#07
	db #02,#a8,#41,#02,#42,#03,#02,#42
	db #05,#02,#42,#07,#02,#ac,#61,#04
	db #02,#42,#03,#02,#42,#05,#02,#a8
	db #61,#03,#02,#ac,#60,#04,#02,#42
	db #03,#02,#a8,#61,#03,#02,#42,#03
	db #00,#a8,#e3,#fc,#ff,#06,#42,#80
	db #fd,#ff,#ac,#c0,#00,#00,#ac,#60
	db #07,#18,#a8,#e0,#f9,#ff,#06,#ac
	db #c0,#00,#00,#a8,#60,#07,#a4,#60
	db #08,#02,#69,#02,#65,#02,#9e,#60
	db #09,#5b,#5f,#65,#69,#6d,#73,#b6
	db #60,#06,#b6,#60,#07,#08,#ba,#60
	db #06,#7d,#ba,#c0,#fe,#ff,#bc,#c0
	db #00,#00,#7b,#b6,#60,#09,#02,#73
	db #02,#b6,#60,#06,#02,#b6,#60,#07
	db #08,#42,#05,#02,#42,#07,#02,#42
	db #09,#02,#42,#0b,#02,#42,#0d,#00
	db #a4,#e1,#00,#00,#03,#02,#42,#03
	db #02,#42,#05,#02,#42,#07,#02,#a8
	db #41,#02,#42,#03,#02,#42,#05,#02
	db #42,#07,#02,#ac,#61,#04,#02,#42
	db #03,#02,#42,#05,#02,#a8,#61,#03
	db #02,#ac,#60,#04,#02,#42,#03,#02
	db #42,#05,#02,#ac,#41,#a8,#60,#03
	db #65,#02,#42,#03,#02,#42,#05,#02
	db #42,#07,#02,#a8,#41,#02,#42,#03
	db #02,#42,#05,#02,#42,#07,#02,#ac
	db #61,#04,#02,#42,#03,#02,#42,#05
	db #02,#a8,#61,#03,#02,#ac,#60,#04
	db #02,#42,#03,#02,#42,#05,#02,#ac
	db #41,#a8,#60,#03,#90,#e1,#00,#00
	db #01,#02,#51,#0a,#90,#60,#02,#02
	db #90,#49,#02,#90,#61,#01,#02,#51
	db #02,#5b,#02,#5b,#0a,#90,#60,#02
	db #02,#90,#49,#02,#9a,#61,#01,#02
	db #5b,#02,#5f,#02,#5f,#0a,#90,#60
	db #02,#02,#90,#49,#02,#9a,#61,#01
	db #06,#5f,#0e,#90,#60,#02,#02,#90
	db #49,#02,#9e,#61,#01,#02,#5b,#00
	db #a4,#e1,#00,#00,#03,#06,#42,#03
	db #06,#42,#05,#06,#42,#07,#06,#a8
	db #41,#06,#42,#03,#06,#42,#05,#06
	db #42,#07,#06,#ac,#61,#04,#06,#42
	db #03,#06,#42,#05,#06,#a8,#61,#03
	db #06,#ac,#60,#04,#06,#42,#03,#06
	db #a8,#61,#03,#06,#42,#03,#00,#ce
	db #e3,#00,#00,#0a,#02,#8b,#8f,#85
	db #02,#8b,#02,#8f,#02,#8b,#02,#8f
	db #02,#95,#02,#99,#99,#95,#02,#8f
	db #02,#8b,#02,#8f,#06,#8f,#02,#8f
	db #8b,#8f,#02,#8b,#02,#85,#02,#8b
	db #02,#81,#02,#85,#02,#81,#02,#b6
	db #60,#0b,#bc,#60,#0a,#81,#02,#7d
	db #02,#b6,#60,#0b,#02,#73,#02,#77
	db #06,#77,#00,#ce,#e3,#00,#00,#0a
	db #02,#8b,#8f,#85,#02,#8b,#02,#8f
	db #02,#8b,#02,#8f,#02,#95,#02,#99
	db #99,#95,#02,#8f,#02,#8b,#02,#8f
	db #06,#8f,#02,#8f,#8b,#8f,#02,#8b
	db #02,#85,#02,#8b,#02,#81,#02,#85
	db #02,#81,#02,#c4,#60,#0b,#8b,#8f
	db #02,#77,#02,#8f,#02,#8b,#02,#8f
	db #06,#8f,#00,#a2,#e9,#00,#00,#05
	db #67,#63,#59,#63,#0a,#63,#67,#6d
	db #06,#71,#6d,#71,#77,#71,#08,#71
	db #77,#7b,#77,#02,#6d,#02,#71,#77
	db #7b,#7f,#7f,#06,#89,#85,#7f,#7b
	db #7f,#06,#7f,#7b,#77,#7f,#7b,#77
	db #75,#6d,#71,#00,#b0,#e9,#00,#00
	db #05,#71,#6d,#71,#71,#0a,#6d,#71
	db #77,#7b,#77,#71,#6d,#71,#71,#6d
	db #63,#67,#06,#89,#85,#7f,#7b,#02
	db #6d,#02,#77,#7b,#7f,#7b,#77,#06
	db #71,#6d,#71,#6d,#67,#06,#63,#67
	db #63,#5f,#59,#55,#59,#98,#4d,#98
	db #51,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #8d,#1d,#70,#26,#54,#41,#8d,#1f
	db #01,#f8,#87,#31,#e4,#48,#42,#42
	db #8f,#76,#02,#42,#11,#02,#49,#13
	db #02,#15,#02,#17,#02,#24,#19,#02
	db #1b,#02,#1d,#95,#02,#1f,#c1,#55
	db #d0,#97,#40,#57,#08,#57,#08,#57
	db #5b,#5b,#08,#02,#5f,#5f,#81,#04
	db #02,#5f,#0a,#5f,#5b,#0f,#00,#04
	db #90,#60,#02,#90,#49,#96,#57,#61
	db #1c,#16,#0b,#2b,#9a,#0b,#20,#3c
	db #0b,#27,#27,#06,#0a,#0c,#9e,#16
	db #24,#42,#60,#65,#80,#48,#3c,#16
	db #a4,#61,#03,#54,#02,#20,#05,#02
	db #07,#02,#a8,#41,#f1,#0b,#1d,#ac
	db #61,#04,#0c,#30,#a8,#22,#ac,#60
	db #f2,#0d,#8e,#82,#bf,#6f,#32,#9e
	db #3f,#39,#a4,#61,#91,#98,#fa,#24
	db #02,#65,#cb,#7e,#89,#a2,#e3,#69
	db #00,#05,#67,#63,#59,#63,#a2,#4b
	db #00,#a2,#4f,#a2,#53,#a2,#57,#02
	db #a2,#46,#43,#0e,#67,#6d,#03,#40
	db #14,#5f,#9e,#4b,#9e,#4f,#10,#9e
	db #53,#9e,#14,#b6,#43,#b6,#11,#4b
	db #b4,#43,#15,#a6,#4b,#1e,#bf,#2d
	db #93,#c8,#1f,#d1,#6c,#0a,#06,#00
	db #04,#a8,#e3,#fc,#ff,#06,#d3,#c1
	db #fd,#ff,#ac,#c0,#72,#40,#1a,#07
	db #18,#a8,#e0,#f9,#b5,#10,#0c,#a8
	db #0c,#03,#a4,#60,#08,#02,#69,#55
	db #04,#9e,#60,#09,#f2,#80,#65,#69
	db #6d,#73,#b6,#11,#60,#06,#b6,#16
	db #08,#ba,#06,#05,#7d,#ba,#c0,#fe
	db #b5,#98,#26,#7b,#86,#10,#09,#02
	db #73,#55,#33,#06,#03,#bb,#28,#b9
	db #fc,#f8,#86,#e7,#94,#64,#41,#ba
	db #7f,#73,#19,#8d,#02,#1a,#e4,#71
	db #42,#09,#96,#02,#0b,#02,#9b,#d3
	db #83,#fa,#44,#ac,#41,#79,#03,#7e
	db #65,#33,#92,#90,#9a,#d4,#02,#51
	db #56,#0a,#c9,#56,#ca,#4c,#02,#61
	db #0c,#2e,#02,#5b,#01,#10,#eb,#e7
	db #6f,#b0,#2f,#b2,#3c,#10,#47,#06
	db #5f,#0e,#0c,#4d,#9e,#1d,#8e,#af
	db #64,#8f,#c2,#02,#05,#06,#6f,#5e
	db #06,#7b,#0b,#39,#7b,#0c,#d6,#7b
	db #56,#0d,#7b,#0d,#ec,#0a,#c5,#a2
	db #ce,#c9,#b0,#0a,#02,#11,#8b,#8f
	db #85,#03,#02,#8f,#03,#c0,#95,#02
	db #99,#39,#99,#95,#0b,#26,#06,#8f
	db #03,#8b,#09,#eb,#1d,#81,#05,#29
	db #03,#a9,#02,#0b,#bc,#60,#0a,#07
	db #6c,#7d,#09,#bd,#a0,#77,#06,#77
	db #fd,#43,#05,#c4,#39,#11,#8e,#77
	db #1f,#ec,#cd,#5b,#e9,#cd,#4b,#0a
	db #94,#40,#06,#71,#6d,#71,#12,#77
	db #71,#08,#03,#7b,#20,#30,#6d,#02
	db #06,#7f,#7f,#04,#06,#89,#85,#7f
	db #7b,#05,#7f,#b1,#11,#02,#75,#1e
	db #1b,#00,#b0,#30,#27,#86,#71,#0a
	db #2b,#5a,#12,#09,#6d,#b8,#3a,#26
	db #cc,#33,#32,#b5,#13,#46,#6d,#12
	db #5a,#e1,#00,#5f,#59,#55,#59,#98
	db #4d,#98,#3f,#51,#00,#00,#b5,#ff
	db #00,#ff,#80,#00,#00,#00,#00,#00
	db #af,#cd,#0e,#bc,#06,#00,#48,#cd
	db #38,#bc,#21,#b6,#90,#cd,#91,#90
	db #21,#e0,#6a,#11,#00,#c0,#cd,#07
	db #91,#21,#a0,#73,#11,#00,#40,#cd
	db #07,#91,#3e,#30,#01,#0c,#bc,#ed
	db #49,#04,#ed,#79,#21,#c6,#90,#cd
	db #91,#90,#21,#e6,#90,#e5,#cd,#ae
	db #90,#3e,#05,#46,#48,#cd,#32,#bc
	db #cd,#03,#bb,#3e,#2f,#cd,#1e,#bb
	db #20,#09,#e1,#23,#7e,#fe,#ff,#20
	db #e4,#18,#df,#3e,#05,#06,#00,#0e
	db #00,#cd,#32,#bc,#cd,#ae,#90,#21
	db #b6,#90,#cd,#91,#90,#11,#00,#87
	db #cd,#00,#80,#3e,#10,#01,#0c,#bc
	db #ed,#49,#04,#ed,#79,#21,#d6,#90
	db #cd,#91,#90,#cd,#ae,#90,#f3,#d9
	db #08,#f5,#c5,#d5,#e5,#cd,#03,#80
	db #e1,#d1,#c1,#f1,#08,#d9,#fb,#18
	db #ea,#af,#46,#48,#f5,#e5,#cd,#32
	db #bc,#e1,#23,#f1,#3c,#fe,#10,#20
	db #f1,#cd,#ae,#90,#76,#76,#76,#76
	db #cd,#ae,#90,#76,#76,#c9,#06,#f5
	db #ed,#78,#1f,#30,#fb,#c9,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0a
	db #14,#03,#05,#00,#0d,#0e,#06,#10
	db #1a,#1a,#1a,#1a,#1a,#1a,#00,#01
	db #02,#09,#0b,#14,#03,#0c,#0d,#16
	db #06,#0f,#10,#18,#19,#1a,#00,#00
	db #03,#03,#0c,#0c,#0f,#0f,#18,#18
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#1a
	db #1a,#1a,#1a,#1a,#18,#18,#0f,#0f
	db #0c,#0c,#03,#03,#00,#00,#ff
	di
	exx
	push bc
	push hl
	push de
	exx
	call l9117
	exx
	pop de
	pop hl
	pop bc
	exx
	ei
	ret
.l9117
	inc hl
	inc hl
	inc hl
	inc hl
	ld a,#80
	exx
	ld de,#0001
	exx
.l9122
	add a
	jr nz,l9128
	ld a,(hl)
	inc hl
	rla
.l9128
	jr c,l914c
	ldi
	add a
	jr nz,l9132
	ld a,(hl)
	inc hl
	rla
.l9132
	jr c,l914c
	ldi
	add a
	jr nz,l913c
	ld a,(hl)
	inc hl
	rla
.l913c
	jr c,l914c
	ldi
	add a
	jr nz,l9146
	ld a,(hl)
	inc hl
	rla
.l9146
	jr c,l914c
	ldi
	jr l9122
.l914c
	ld c,(hl)
	inc hl
	ld b,#00
	bit 7,c
	jr z,l9176
	add a
	jr nz,l915a
	ld a,(hl)
	inc hl
	rla
.l915a
	rl b
	add a
	jr nz,l9162
	ld a,(hl)
	inc hl
	rla
.l9162
	rl b
	add a
	jr nz,l916a
	ld a,(hl)
	inc hl
	rla
.l916a
	rl b
	add a
	jr nz,l9172
	ld a,(hl)
	inc hl
	rla
.l9172
	jr c,l9176
	res 7,c
.l9176
	inc bc
	exx
	ld h,d
	ld l,e
	ld b,e
.l917b
	exx
	add a
	jr nz,l9182
	ld a,(hl)
	inc hl
	rla
.l9182
	exx
	jr nc,l9192
	inc b
	jr l917b
.l9188
	exx
	add a
	jr nz,l918f
	ld a,(hl)
	inc hl
	rla
.l918f
	exx
	adc hl,hl
.l9192
	djnz l9188
	inc hl
	exx
	ret c
	push hl
	exx
	push hl
	exx
	ld h,d
	ld l,e
	sbc hl,bc
	pop bc
	ldir
	pop hl
	add a
	jr nz,l91a9
	ld a,(hl)
	inc hl
	rla
.l91a9
	jr c,l914c
	ldi
	add a
	jr nz,l91b3
	ld a,(hl)
	inc hl
	rla
.l91b3
	jr c,l914c
	ldi
	jp l9122
;
.init_music			;	#9065 - added by Megachur
;
	ld de,l8700
	jp real_init_music
;
.music_info
	db "Last Ninja Remix - The Sewers (2017)(Epyteor)(SuTeKH)",0
	db "StarkOs",0

	read "music_end.asm"