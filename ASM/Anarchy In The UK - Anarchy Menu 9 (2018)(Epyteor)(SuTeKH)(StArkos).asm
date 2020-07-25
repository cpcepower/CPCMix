; Music of Anarchy In The UK - Anarchy Menu 9 (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ANITAM09.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	jp l8684	; init
	jp l801a	; play
	jp l86d9	; stop
.l8019
	nop
;
.play_music
.l801a
;
	xor a
	ld (l8019),a
.l801f equ $ + 1
	ld a,#01
	dec a
	jp nz,l81eb
.l8025 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8091
.l802a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l8038
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l8038
	rra
	jr nc,l8040
	ld de,l80e1
	ldi
.l8040
	rra
	jr nc,l8048
	ld de,l8146
	ldi
.l8048
	rra
	jr nc,l8050
	ld de,l81ab
	ldi
.l8050
	ld de,l80c0
	ldi
	ldi
	ld de,l8125
	ldi
	ldi
	ld de,l818a
	ldi
	ldi
	rra
	jr nc,l806d
	ld de,l8090
	ldi
.l806d
	rra
	jr nc,l8078
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l807c),de
.l8078
	ld (l802a),hl
.l807c equ $ + 1
	ld hl,#0000
	ld (l809a),hl
	ld a,#01
	ld (l8095),a
	ld (l80bb),a
	ld (l8120),a
	ld (l8185),a
.l8090 equ $ + 1
	ld a,#01
.l8091
	ld (l8025),a
.l8095 equ $ + 1
	ld a,#01
	dec a
	jr nz,l80b7
.l809a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l80b4
	srl a
	jr nz,l80a8
	ld a,(hl)
	inc hl
.l80a8
	jr nc,l80af
	ld (l8019),a
	jr l80b2
.l80af
	ld (l81ea),a
.l80b2
	ld a,#01
.l80b4
	ld (l809a),hl
.l80b7
	ld (l8095),a
.l80bb equ $ + 1
	ld a,#01
	dec a
	jr nz,l811c
.l80c0 equ $ + 1
	ld hl,#0000
	call l8530
	ld (l80c0),hl
	jr c,l811c
	ld a,d
	rra
	jr nc,l80d3
	and #0f
	ld (l826d),a
.l80d3
	rl d
	jr nc,l80db
	ld (l825b),ix
.l80db
	rl d
	jr nc,l811a
	ld a,e
.l80e1 equ $ + 1
	add #00
	ld (l826c),a
	ld hl,#0000
	ld (l8258),hl
	rl d
	jr c,l80fa
.l80f0 equ $ + 1
	ld hl,#0000
	ld a,(l827d)
	ld (l8275),a
	jr l8117
.l80fa
	ld l,b
	add hl,hl
.l80fd equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l827d),a
	ld (l8275),a
	ld a,(hl)
	or a
	jr z,l8113
	ld (l835b),a
.l8113
	inc hl
	ld (l80f0),hl
.l8117
	ld (l826f),hl
.l811a
	ld a,#01
.l811c
	ld (l80bb),a
.l8120 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8181
.l8125 equ $ + 1
	ld hl,#0000
	call l8530
	ld (l8125),hl
	jr c,l8181
	ld a,d
	rra
	jr nc,l8138
	and #0f
	ld (l8239),a
.l8138
	rl d
	jr nc,l8140
	ld (l8227),ix
.l8140
	rl d
	jr nc,l817f
	ld a,e
.l8146 equ $ + 1
	add #00
	ld (l8238),a
	ld hl,#0000
	ld (l8224),hl
	rl d
	jr c,l815f
.l8155 equ $ + 1
	ld hl,#0000
	ld a,(l8249)
	ld (l8241),a
	jr l817c
.l815f
	ld l,b
	add hl,hl
.l8162 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8249),a
	ld (l8241),a
	ld a,(hl)
	or a
	jr z,l8178
	ld (l835b),a
.l8178
	inc hl
	ld (l8155),hl
.l817c
	ld (l823b),hl
.l817f
	ld a,#01
.l8181
	ld (l8120),a
.l8185 equ $ + 1
	ld a,#01
	dec a
	jr nz,l81e6
.l818a equ $ + 1
	ld hl,#0000
	call l8530
	ld (l818a),hl
	jr c,l81e6
	ld a,d
	rra
	jr nc,l819d
	and #0f
	ld (l8208),a
.l819d
	rl d
	jr nc,l81a5
	ld (l81f6),ix
.l81a5
	rl d
	jr nc,l81e4
	ld a,e
.l81ab equ $ + 1
	add #00
	ld (l8207),a
	ld hl,#0000
	ld (l81f3),hl
	rl d
	jr c,l81c4
.l81ba equ $ + 1
	ld hl,#0000
	ld a,(l8218)
	ld (l8210),a
	jr l81e1
.l81c4
	ld l,b
	add hl,hl
.l81c7 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8218),a
	ld (l8210),a
	ld a,(hl)
	or a
	jr z,l81dd
	ld (l835b),a
.l81dd
	inc hl
	ld (l81ba),hl
.l81e1
	ld (l820a),hl
.l81e4
	ld a,#01
.l81e6
	ld (l8185),a
.l81ea equ $ + 1
	ld a,#01
.l81eb
	ld (l801f),a
	ld iy,l8372
.l81f3 equ $ + 1
	ld hl,#0000
.l81f6 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l81f3),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8208 equ $ + 2
.l8207 equ $ + 1
	ld de,#0000
.l820a equ $ + 1
	ld hl,#0000
	call l837d
.l8210 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8219
	ld (l820a),hl
.l8218 equ $ + 1
	ld a,#06
.l8219
	ld (l8210),a
	ld a,lx
	ex af,af'
	ld iy,l8370
.l8224 equ $ + 1
	ld hl,#0000
.l8227 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8224),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8239 equ $ + 2
.l8238 equ $ + 1
	ld de,#0000
.l823b equ $ + 1
	ld hl,#0000
	call l837d
.l8241 equ $ + 1
	ld a,#01
	dec a
	jr nz,l824a
	ld (l823b),hl
.l8249 equ $ + 1
	ld a,#06
.l824a
	ld (l8241),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l836e
.l8258 equ $ + 1
	ld hl,#0000
.l825b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8258),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l826d equ $ + 2
.l826c equ $ + 1
	ld de,#0000
.l826f equ $ + 1
	ld hl,#0000
	call l837d
.l8275 equ $ + 1
	ld a,#01
	dec a
	jr nz,l827e
	ld (l826f),hl
.l827d equ $ + 1
	ld a,#01
.l827e
	ld (l8275),a
	ex af,af'
	or lx
.l8284
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l836e
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
.l835b equ $ + 1
	cp #ff
	ret z
	ld (l835b),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l836e
	nop
	nop
.l8370
	nop
	nop
.l8372
	nop
	nop
.l8374
	nop
.l8375
	nop
	nop
	nop
	nop
	nop
.l837a
	nop
	nop
.l837c
	nop
.l837d
	ld b,(hl)
	inc hl
	rr b
	jp c,l83db
	rr b
	jr c,l83ab
	ld a,b
	and #0f
	jr nz,l8394
	ld (iy+#07),a
	ld lx,#09
	ret
.l8394
	ld lx,#08
	sub d
	jr nc,l839b
	xor a
.l839b
	ld (iy+#07),a
	rr b
	call l8504
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l83ab
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l83bb
	ld (l8374),a
	ld lx,#00
.l83bb
	ld a,b
	and #0f
	sub d
	jr nc,l83c2
	xor a
.l83c2
	ld (iy+#07),a
	bit 5,c
	jr nz,l83cc
	inc lx
	ret
.l83cc
	rr b
	bit 6,c
	call l84f6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l83db
	rr b
	jr nc,l83ee
	ld a,(l8275)
	ld c,a
	ld a,(l827d)
	cp c
	jr nz,l83ee
	ld a,#fe
	ld (l835b),a
.l83ee
	bit 1,b
	jp nz,l84a7
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l837c),a
	bit 0,b
	jr z,l845d
	bit 2,b
	call l84f6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l841d),a
	ld a,b
	exx
.l841d equ $ + 1
	jr l841e
.l841e
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
	jr nc,l843d
	inc hl
.l843d
	bit 5,a
	jr z,l844d
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
.l844d
	ld (l837a),hl
	exx
.l8451
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l8374),a
	ld lx,#00
	ret
.l845d
	bit 2,b
	call l84f6
	ld (l837a),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l8471),a
	ld a,b
	exx
.l8471 equ $ + 1
	jr l8472
.l8472
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
	jr z,l849e
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
.l849e
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l8451
.l84a7
	bit 0,b
	jr z,l84b2
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l837d
.l84b2
	ld (iy+#07),#10
	bit 5,b
	jr nz,l84bf
	ld lx,#09
	jr l84d2
.l84bf
	ld lx,#08
	ld hx,e
	bit 2,b
	call l84f6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l84d2
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l837c),a
	rr b
	rr b
	bit 2,b
	call l84f6
	ld (l837a),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l8374),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l84f6
	jr z,l8504
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
.l8504
	bit 4,b
	jr z,l8514
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
.l8514
	ld a,e
	bit 3,b
	jr z,l8521
	add (hl)
	inc hl
	cp #90
	jr c,l8521
	ld a,#8f
.l8521
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l8564
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l8530
	ld a,(hl)
	inc hl
	srl a
	jr c,l8557
	sub #20
	jr c,l8561
	jr z,l8553
	dec a
	ld e,a
.l853e
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l854c
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l854c
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l8553
	ld e,(hl)
	inc hl
	jr l853e
.l8557
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l8561
	add #20
	ret
.l8564
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
.l8684
;
	ld hl,#0009
	add hl,de
	ld de,l81ea
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l80fd),hl
	ld (l8162),hl
	ld (l81c7),hl
	add hl,bc
	ld de,l8090
	ldi
	ld de,l80e1
	ldi
	ld de,l8146
	ldi
	ld de,l81ab
	ldi
	ld de,l807c
	ldi
	ldi
	ld (l802a),hl
	ld a,#01
	ld (l801f),a
	ld (l8025),a
	ld a,#ff
	ld (l837c),a
	ld hl,(l80fd)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l826f),hl
	ld (l823b),hl
	ld (l820a),hl
	ret
;
.stop_music
.l86d9
;
	ld hl,l8375
	ld bc,#0300
.l86df
	ld (hl),c
	inc hl
	djnz l86df
	ld a,#3f
	jp l8284
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#17,#00,#10,#0c,#01,#19
	db #09,#0e,#07,#26,#00,#00,#00,#00
	db #01,#0e,#01,#12,#03,#08,#19,#00
	db #0d,#05,#0e,#15,#00,#1c,#00,#00
	db #00,#00,#28,#1b,#1d,#26,#1d,#23
	db #29,#00,#00,#00,#00,#00,#ff,#00
.l8730
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#05,#63,#01,#60,#87,#69,#87
	db #80,#87,#89,#87,#b6,#87,#bd,#87
	db #d4,#87,#e8,#87,#ee,#87,#0b,#88
	db #16,#88,#23,#88,#2c,#88,#39,#88
	db #46,#88,#6e,#88,#7b,#88,#88,#88
	db #00,#00,#00,#00,#00,#00,#0d,#62
	db #87,#01,#00,#3e,#65,#c2,#01,#3a
	db #60,#fa,#01,#36,#60,#a4,#02,#38
	db #38,#78,#0c,#78,#0c,#0d,#77,#87
	db #01,#00,#2e,#05,#22,#03,#0d,#62
	db #87,#01,#00,#2e,#05,#7e,#2a,#0c
	db #3a,#29,#76,#29,#0c,#32,#28,#6e
	db #28,#0c,#2a,#27,#66,#27,#0c,#22
	db #26,#5e,#26,#0c,#1a,#25,#56,#25
	db #0c,#12,#24,#4e,#24,#0c,#0a,#23
	db #46,#23,#0c,#0d,#62,#87,#01,#00
	db #28,#3c,#0d,#b9,#87,#01,#00,#bc
	db #ff,#ff,#bc,#fe,#ff,#bc,#ff,#ff
	db #bc,#01,#00,#bc,#02,#00,#bc,#01
	db #00,#0d,#bf,#87,#01,#00,#38,#34
	db #30,#2c,#28,#24,#20,#1c,#18,#14
	db #10,#0c,#08,#04,#00,#0d,#62,#87
	db #01,#00,#3c,#0d,#ea,#87,#01,#00
	db #45,#4e,#fd,#ff,#45,#4e,#fd,#ff
	db #45,#4e,#fd,#ff,#45,#4e,#03,#00
	db #45,#4e,#03,#00,#45,#4e,#03,#00
	db #0d,#f0,#87,#01,#00,#05,#4e,#05
	db #4e,#05,#4e,#0d,#62,#87,#01,#00
	db #30,#70,#04,#70,#07,#30,#70,#04
	db #0d,#18,#88,#01,#00,#05,#4e,#05
	db #4e,#0d,#25,#88,#01,#00,#30,#70
	db #03,#70,#08,#30,#70,#03,#0d,#2e
	db #88,#01,#00,#30,#70,#03,#70,#0a
	db #30,#70,#03,#0d,#3b,#88,#01,#00
	db #f4,#ff,#ff,#e8,#fc,#fe,#ff,#f4
	db #bc,#ff,#ff,#b8,#01,#00,#b8,#01
	db #00,#b4,#02,#00,#b4,#ff,#ff,#b4
	db #fe,#ff,#b4,#ff,#ff,#b4,#01,#00
	db #b4,#02,#00,#0d,#59,#88,#01,#00
	db #30,#70,#03,#70,#07,#30,#70,#03
	db #0d,#70,#88,#01,#00,#74,#e8,#7c
	db #f4,#3c,#38,#38,#34,#0d,#84,#88
	db #01,#00,#b4,#ff,#ff,#b4,#fe,#ff
	db #b4,#ff,#ff,#b4,#01,#00,#b4,#02
	db #00,#b4,#01,#00,#0d,#8a,#88,#40
	db #00,#00,#00,#e0,#88,#00,#e1,#88
	db #57,#89,#e4,#89,#00,#5f,#8a,#d5
	db #8a,#57,#8b,#00,#e1,#88,#57,#89
	db #e4,#89,#00,#5f,#8a,#d5,#8a,#57
	db #8b,#00,#d2,#8b,#48,#8c,#70,#8c
	db #00,#d2,#8b,#eb,#8c,#70,#8c,#00
	db #d2,#8b,#1b,#8d,#70,#8c,#00,#d2
	db #8b,#47,#8d,#70,#8c,#01,#a5,#88
	db #00,#5e,#e1,#00,#00,#01,#02,#8a
	db #60,#02,#4b,#8a,#60,#03,#04,#54
	db #60,#01,#1f,#02,#8a,#60,#02,#4b
	db #8a,#60,#03,#02,#8a,#60,#02,#4b
	db #5a,#60,#01,#02,#8a,#60,#02,#4b
	db #8a,#60,#03,#04,#50,#60,#01,#1b
	db #02,#8a,#60,#02,#4b,#8a,#60,#03
	db #02,#8a,#60,#02,#4b,#5e,#60,#01
	db #02,#8a,#60,#02,#4b,#8a,#60,#03
	db #04,#54,#60,#01,#1f,#02,#8a,#60
	db #02,#4b,#8a,#60,#03,#02,#8a,#60
	db #02,#4b,#5a,#60,#01,#02,#8a,#60
	db #02,#4b,#8a,#60,#03,#04,#50,#60
	db #01,#1b,#02,#8a,#60,#02,#4b,#8a
	db #60,#03,#02,#8a,#60,#02,#4b,#8e
	db #e5,#00,#00,#04,#8e,#60,#05,#08
	db #a6,#60,#04,#a6,#60,#06,#08,#a2
	db #60,#04,#a2,#60,#06,#a6,#60,#04
	db #a6,#60,#06,#a8,#e0,#f7,#ff,#04
	db #aa,#e0,#00,#00,#07,#aa,#67,#05
	db #a2,#65,#04,#a2,#67,#05,#42,#09
	db #98,#65,#04,#98,#60,#05,#42,#07
	db #42,#09,#42,#0b,#42,#0d,#9c,#65
	db #04,#9c,#60,#06,#a0,#60,#04,#a0
	db #60,#06,#9c,#60,#04,#9c,#60,#05
	db #08,#a6,#60,#04,#02,#a6,#60,#06
	db #06,#a2,#60,#04,#a2,#60,#06,#a6
	db #60,#04,#a6,#60,#06,#aa,#60,#04
	db #aa,#67,#05,#42,#09,#a2,#65,#04
	db #a2,#67,#05,#42,#09,#98,#65,#04
	db #02,#98,#67,#05,#02,#42,#09,#02
	db #a6,#65,#04,#a6,#60,#06,#aa,#60
	db #04,#aa,#60,#06,#a6,#e1,#00,#00
	db #08,#04,#be,#60,#09,#a6,#60,#0a
	db #42,#05,#a6,#61,#08,#06,#be,#60
	db #09,#02,#a6,#60,#0a,#a4,#60,#0b
	db #a4,#60,#09,#7d,#a2,#60,#08,#04
	db #ba,#60,#09,#aa,#60,#0c,#42,#05
	db #a2,#61,#08,#06,#ba,#60,#09,#02
	db #aa,#60,#0c,#a4,#60,#0b,#a4,#60
	db #09,#7d,#a6,#60,#08,#04,#be,#60
	db #09,#a6,#60,#0a,#42,#05,#a6,#61
	db #08,#06,#be,#60,#09,#02,#a6,#60
	db #0a,#a4,#60,#0b,#a4,#60,#09,#7d
	db #a2,#60,#08,#04,#ba,#60,#09,#aa
	db #60,#0c,#42,#05,#a2,#61,#08,#06
	db #ba,#60,#09,#02,#aa,#60,#0c,#42
	db #05,#aa,#61,#0b,#aa,#60,#09,#64
	db #e1,#00,#00,#01,#02,#8a,#60,#02
	db #4b,#8a,#60,#03,#04,#5a,#60,#01
	db #25,#02,#8a,#60,#02,#4b,#8a,#60
	db #03,#02,#8a,#60,#02,#4b,#5a,#60
	db #01,#02,#8a,#60,#02,#4b,#8a,#60
	db #03,#04,#50,#60,#01,#1b,#02,#8a
	db #60,#02,#4b,#8a,#60,#03,#02,#8a
	db #60,#02,#4b,#68,#60,#01,#02,#8a
	db #60,#02,#4b,#8a,#60,#03,#04,#5e
	db #60,#01,#29,#02,#8a,#60,#02,#4b
	db #8a,#60,#03,#02,#8a,#60,#02,#4b
	db #68,#60,#01,#02,#8a,#60,#02,#4b
	db #8a,#60,#03,#04,#5e,#60,#01,#29
	db #02,#8a,#60,#02,#4b,#8a,#60,#03
	db #02,#8a,#60,#02,#4b,#ac,#e5,#00
	db #00,#04,#ac,#60,#05,#08,#a2,#60
	db #04,#02,#a2,#60,#06,#06,#ac,#60
	db #04,#ac,#60,#06,#b0,#60,#04,#b0
	db #60,#06,#a8,#e0,#f7,#ff,#04,#aa
	db #e0,#00,#00,#07,#aa,#67,#05,#a2
	db #65,#04,#a2,#67,#05,#42,#09,#98
	db #65,#04,#98,#60,#05,#42,#07,#42
	db #09,#42,#0b,#42,#0d,#a6,#65,#04
	db #a6,#60,#06,#aa,#60,#04,#aa,#60
	db #06,#a6,#60,#04,#a6,#67,#05,#42
	db #09,#a0,#65,#04,#a0,#67,#05,#42
	db #09,#98,#65,#04,#02,#98,#60,#05
	db #06,#42,#07,#02,#42,#09,#02,#42
	db #0b,#02,#42,#0d,#02,#42,#0f,#02
	db #42,#11,#02,#42,#13,#02,#42,#15
	db #02,#42,#17,#02,#42,#19,#00,#94
	db #e1,#00,#00,#08,#04,#94,#60,#09
	db #ac,#60,#0a,#42,#05,#94,#61,#08
	db #06,#ac,#60,#09,#02,#ac,#60,#0a
	db #aa,#60,#0b,#aa,#60,#09,#67,#a2
	db #60,#08,#04,#ba,#60,#09,#aa,#60
	db #0c,#42,#05,#a2,#61,#08,#06,#ba
	db #60,#09,#02,#aa,#60,#0c,#ac,#60
	db #0b,#ac,#60,#09,#85,#b0,#60,#08
	db #04,#c8,#60,#09,#a6,#60,#0d,#42
	db #05,#b0,#61,#08,#06,#c8,#60,#09
	db #02,#a6,#60,#0d,#aa,#60,#0b,#aa
	db #60,#09,#67,#b0,#60,#08,#04,#c8
	db #60,#09,#98,#60,#0a,#42,#05,#b0
	db #61,#08,#06,#c8,#60,#09,#02,#98
	db #60,#0a,#42,#05,#ac,#61,#0b,#ac
	db #60,#09,#6c,#e1,#00,#00,#01,#02
	db #8a,#60,#02,#4b,#8a,#60,#03,#04
	db #62,#60,#01,#2d,#02,#8a,#60,#02
	db #4b,#8a,#60,#03,#02,#8a,#60,#02
	db #4b,#6c,#60,#01,#02,#8a,#60,#02
	db #4b,#8a,#60,#03,#04,#62,#60,#01
	db #2d,#02,#8a,#60,#02,#4b,#8a,#60
	db #03,#02,#8a,#60,#02,#4b,#6c,#60
	db #01,#02,#8a,#60,#02,#4b,#8a,#60
	db #03,#04,#62,#60,#01,#2d,#02,#8a
	db #60,#02,#4b,#8a,#60,#03,#02,#8a
	db #60,#02,#4b,#6c,#60,#01,#02,#8a
	db #60,#02,#4b,#8a,#60,#03,#04,#62
	db #60,#01,#2d,#02,#8a,#60,#02,#4b
	db #8a,#60,#03,#02,#8a,#60,#02,#4b
	db #aa,#e7,#00,#00,#0e,#04,#71,#04
	db #6f,#0a,#61,#02,#63,#0e,#61,#02
	db #67,#04,#6b,#04,#63,#0e,#71,#02
	db #6f,#04,#79,#04,#7b,#0a,#83,#02
	db #7b,#02,#89,#04,#87,#04,#7f,#00
	db #9c,#e1,#00,#00,#08,#04,#b4,#60
	db #09,#b4,#60,#0f,#42,#05,#9c,#61
	db #08,#06,#b4,#60,#09,#02,#b4,#60
	db #0f,#98,#60,#0b,#98,#60,#09,#71
	db #9c,#60,#08,#04,#b4,#60,#09,#b8
	db #60,#0c,#42,#05,#9c,#61,#08,#06
	db #b4,#60,#09,#02,#b8,#60,#0c,#98
	db #60,#0b,#98,#60,#09,#71,#9c,#60
	db #08,#04,#b4,#60,#09,#b4,#60,#0f
	db #42,#05,#9c,#61,#08,#06,#b4,#60
	db #09,#02,#b4,#60,#0f,#98,#60,#0b
	db #98,#60,#09,#71,#9c,#60,#08,#04
	db #b4,#60,#09,#b8,#60,#0c,#42,#05
	db #9c,#61,#08,#06,#b4,#60,#09,#02
	db #b8,#60,#0c,#42,#05,#98,#61,#0b
	db #98,#60,#09,#c2,#e7,#00,#00,#0e
	db #0a,#87,#02,#8d,#04,#87,#04,#89
	db #0e,#8d,#87,#89,#83,#87,#7f,#83
	db #7b,#7f,#79,#7b,#06,#89,#02,#87
	db #02,#7f,#04,#83,#04,#7b,#0a,#75
	db #79,#7f,#83,#71,#75,#79,#7f,#6f
	db #71,#75,#79,#ba,#e7,#00,#00,#0e
	db #0a,#71,#0a,#75,#12,#6b,#6f,#71
	db #04,#79,#04,#7b,#0e,#6f,#02,#71
	db #02,#75,#02,#6b,#02,#6f,#02,#67
	db #02,#6b,#02,#63,#02,#67,#02,#61
	db #02,#63,#02,#5d,#02,#61,#00,#a2
	db #e7,#00,#00,#10,#42,#80,#20,#00
	db #42,#00,#c8,#c0,#00,#00,#42,#80
	db #20,#00,#42,#00,#c6,#e0,#00,#00
	db #0e,#0a,#c2,#60,#10,#87,#89,#7f
	db #7b,#02,#ba,#60,#11,#02,#42,#00
	db #02,#42,#09,#02,#42,#0b,#02,#42
	db #0d,#02,#ba,#65,#10,#7f,#83,#79
	db #75,#02,#b4,#67,#11,#02,#42,#09
	db #02,#42,#0b,#02,#aa,#65,#10,#6f
	db #71,#79,#7b,#ba,#60,#11,#42,#07
	db #02,#aa,#65,#10,#71,#75,#7b,#6d
	db #73,#77,#7d,#71,#77,#79,#81,#73
	db #7b,#81,#83,#00,#00,#00,#00,#00
;
.init_music
;
	ld de,l8730
	jp real_init_music
;
.music_info
	db "Anarchy In The UK - Anarchy Menu 9 (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"

