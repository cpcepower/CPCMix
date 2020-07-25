; Music of Anarchy In The UK - Anarchy Menu 3 (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ANITAM03.BIN"
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
	db #02,#06,#ef,#00,#5a,#87,#63,#87
	db #77,#87,#8a,#87,#95,#87,#9f,#87
	db #a9,#87,#c0,#87,#ca,#87,#db,#87
	db #e1,#87,#f8,#87,#00,#88,#17,#88
	db #21,#88,#00,#00,#00,#00,#00,#00
	db #0d,#5c,#87,#01,#00,#3c,#38,#34
	db #30,#2c,#28,#24,#20,#1c,#18,#14
	db #10,#0c,#08,#04,#0d,#5c,#87,#01
	db #00,#3e,#7f,#c3,#01,#3a,#60,#fa
	db #01,#36,#60,#a4,#02,#05,#4e,#0d
	db #85,#87,#01,#00,#05,#3e,#05,#3e
	db #05,#4e,#0d,#90,#87,#01,#00,#30
	db #70,#03,#70,#07,#0d,#97,#87,#01
	db #00,#30,#70,#04,#70,#07,#0d,#a1
	db #87,#01,#00,#b0,#fe,#ff,#b0,#fe
	db #ff,#b0,#fe,#ff,#b0,#02,#00,#b0
	db #02,#00,#b0,#02,#00,#0d,#ab,#87
	db #01,#00,#30,#70,#05,#70,#09,#0d
	db #c2,#87,#01,#00,#3e,#7f,#c3,#01
	db #3a,#60,#fa,#01,#36,#60,#a4,#02
	db #0d,#5c,#87,#01,#00,#3c,#0d,#dd
	db #87,#01,#00,#bc,#ff,#ff,#bc,#ff
	db #ff,#bc,#ff,#ff,#bc,#01,#00,#bc
	db #01,#00,#bc,#01,#00,#0d,#e3,#87
	db #01,#00,#bc,#ff,#ff,#0d,#fa,#87
	db #01,#00,#bc,#01,#00,#bc,#01,#00
	db #bc,#01,#00,#bc,#ff,#ff,#bc,#ff
	db #ff,#bc,#ff,#ff,#0d,#02,#88,#01
	db #00,#30,#70,#04,#70,#09,#0d,#19
	db #88,#01,#00,#30,#70,#05,#70,#07
	db #0d,#23,#88,#40,#00,#00,#00,#b2
	db #88,#00,#a1,#89,#b7,#89,#5d,#89
	db #00,#b3,#88,#d7,#88,#5d,#89,#00
	db #b3,#88,#d7,#88,#5d,#89,#00,#c3
	db #89,#d7,#88,#5d,#89,#00,#52,#8a
	db #d7,#88,#5d,#89,#00,#dd,#8a,#66
	db #8b,#d6,#8b,#00,#62,#8c,#e5,#8c
	db #55,#8d,#00,#d4,#8d,#6c,#8e,#f2
	db #8e,#00,#85,#8f,#06,#90,#7a,#90
	db #00,#c3,#89,#d7,#88,#5d,#89,#00
	db #52,#8a,#d7,#88,#5d,#89,#00,#fb
	db #90,#73,#91,#a3,#91,#00,#dd,#8a
	db #66,#8b,#d6,#8b,#00,#62,#8c,#e5
	db #8c,#55,#8d,#00,#d4,#8d,#6c,#8e
	db #f1,#91,#00,#d4,#8d,#6c,#8e,#75
	db #92,#00,#fb,#90,#f6,#92,#66,#93
	db #00,#fd,#93,#24,#94,#2f,#94,#01
	db #38,#88,#00,#8e,#e7,#00,#00,#01
	db #4f,#0a,#4f,#04,#4f,#4f,#08,#4f
	db #4f,#0a,#4f,#04,#4f,#4f,#08,#4f
	db #4f,#0a,#4f,#04,#4f,#4f,#08,#4f
	db #4f,#0a,#4f,#04,#4f,#4f,#00,#a2
	db #e1,#00,#00,#02,#04,#a6,#60,#03
	db #be,#60,#04,#02,#9c,#60,#03,#ba
	db #60,#05,#a2,#60,#02,#02,#a2,#60
	db #03,#67,#a2,#60,#06,#67,#98,#60
	db #03,#5d,#a2,#60,#02,#04,#a6,#60
	db #03,#be,#60,#07,#02,#9c,#60,#03
	db #be,#60,#04,#a2,#60,#02,#02,#a2
	db #60,#03,#67,#ac,#60,#06,#67,#98
	db #60,#03,#5d,#a2,#60,#02,#04,#a6
	db #60,#03,#be,#60,#04,#02,#9c,#60
	db #03,#ba,#60,#05,#a2,#60,#02,#02
	db #a2,#60,#03,#67,#a2,#60,#06,#67
	db #98,#60,#03,#5d,#94,#60,#02,#04
	db #94,#60,#03,#ba,#60,#05,#02,#94
	db #60,#03,#ba,#60,#07,#98,#60,#02
	db #02,#98,#60,#03,#59,#ac,#60,#06
	db #67,#98,#60,#03,#5d,#a6,#e7,#00
	db #00,#01,#75,#67,#67,#71,#67,#67
	db #7b,#67,#7f,#67,#67,#75,#67,#71
	db #75,#67,#75,#67,#67,#71,#67,#67
	db #7b,#67,#7f,#67,#67,#75,#67,#71
	db #75,#67,#75,#67,#67,#71,#67,#67
	db #7b,#67,#7f,#67,#67,#75,#67,#71
	db #75,#67,#75,#67,#67,#71,#67,#67
	db #7b,#67,#7f,#67,#67,#75,#67,#71
	db #75,#42,#60,#00,#42,#80,#00,#00
	db #3e,#1e,#8a,#61,#08,#06,#4b,#06
	db #4b,#04,#4b,#4b,#02,#4b,#00,#42
	db #60,#00,#42,#80,#00,#00,#3c,#8e
	db #61,#02,#00,#b0,#e3,#00,#00,#09
	db #42,#80,#fc,#ff,#42,#00,#42,#80
	db #fd,#ff,#b4,#e0,#00,#00,#0a,#02
	db #ba,#60,#09,#02,#ba,#60,#0a,#02
	db #b8,#60,#09,#02,#b8,#60,#0a,#02
	db #b0,#60,#09,#02,#b0,#60,#0a,#02
	db #b4,#60,#09,#02,#b4,#60,#0a,#02
	db #aa,#60,#09,#42,#80,#fd,#ff,#42
	db #80,#fe,#ff,#42,#00,#ac,#e0,#00
	db #00,#0a,#06,#42,#07,#42,#0b,#b0
	db #63,#09,#42,#07,#ac,#43,#42,#07
	db #a6,#43,#42,#07,#ac,#c3,#f3,#ff
	db #b0,#c0,#00,#00,#b0,#67,#0a,#42
	db #0b,#b4,#63,#09,#42,#07,#a2,#43
	db #42,#07,#a4,#43,#42,#80,#fc,#ff
	db #42,#80,#fd,#ff,#42,#80,#fe,#ff
	db #a6,#e0,#00,#00,#0a,#0a,#42,#05
	db #02,#42,#07,#02,#42,#09,#02,#42
	db #0b,#00,#42,#80,#00,#00,#02,#b4
	db #63,#09,#42,#07,#ba,#43,#42,#07
	db #be,#43,#42,#07,#c2,#c3,#fc,#ff
	db #c4,#c0,#00,#00,#c8,#60,#0a,#02
	db #42,#09,#42,#0f,#be,#63,#09,#42
	db #07,#c2,#c3,#fc,#ff,#c4,#c0,#00
	db #00,#83,#42,#07,#be,#43,#42,#07
	db #b4,#43,#02,#b4,#60,#0a,#06,#42
	db #09,#42,#0f,#aa,#63,#09,#42,#07
	db #ac,#63,#0a,#02,#b4,#60,#09,#42
	db #07,#b8,#43,#42,#07,#b4,#43,#42
	db #07,#ba,#63,#0a,#02,#b8,#60,#09
	db #42,#07,#b0,#43,#42,#07,#ac,#63
	db #0a,#02,#42,#07,#42,#0b,#b2,#e3
	db #fb,#ff,#09,#b4,#c0,#00,#00,#a6
	db #60,#0a,#02,#42,#07,#42,#0b,#cc
	db #e3,#3e,#00,#09,#8d,#42,#00,#85
	db #42,#00,#85,#7f,#7f,#c2,#e3,#fc
	db #ff,#09,#c4,#c0,#00,#00,#c4,#60
	db #0a,#be,#60,#09,#42,#07,#42,#0b
	db #be,#43,#42,#0b,#ba,#63,#0a,#04
	db #be,#60,#09,#42,#07,#42,#0b,#42
	db #0f,#42,#13,#c2,#c3,#fc,#ff,#c4
	db #c0,#00,#00,#7f,#42,#0b,#ba,#63
	db #0a,#02,#be,#60,#09,#75,#42,#0b
	db #42,#13,#0c,#c2,#c3,#fc,#ff,#c4
	db #c0,#00,#00,#c4,#60,#0a,#be,#60
	db #09,#42,#07,#42,#0b,#be,#43,#42
	db #0b,#ca,#43,#ca,#60,#0a,#02,#c8
	db #60,#09,#42,#07,#42,#0b,#42,#0f
	db #42,#13,#c8,#c3,#fc,#ff,#ca,#c0
	db #00,#00,#89,#42,#07,#c4,#63,#0a
	db #42,#0b,#c8,#63,#09,#be,#60,#0a
	db #04,#42,#0b,#42,#13,#42,#1f,#be
	db #63,#09,#42,#05,#c8,#43,#8e,#e1
	db #00,#00,#02,#04,#8e,#60,#03,#be
	db #60,#04,#02,#42,#60,#00,#ba,#60
	db #05,#8e,#60,#08,#06,#a2,#60,#06
	db #67,#42,#60,#00,#02,#8e,#60,#08
	db #06,#be,#60,#07,#02,#42,#60,#00
	db #be,#60,#04,#8e,#60,#08,#06,#ac
	db #60,#06,#67,#42,#60,#00,#02,#98
	db #60,#02,#04,#98,#60,#03,#be,#60
	db #04,#02,#42,#60,#00,#ba,#60,#05
	db #98,#60,#08,#06,#a2,#60,#06,#67
	db #42,#60,#00,#02,#98,#60,#08,#06
	db #ba,#60,#05,#02,#42,#60,#00,#ba
	db #60,#07,#98,#60,#08,#06,#ac,#60
	db #06,#67,#42,#60,#00,#00,#42,#60
	db #00,#42,#80,#00,#00,#c2,#ed,#fc
	db #ff,#0b,#c4,#c0,#00,#00,#c4,#60
	db #0c,#be,#60,#0b,#42,#11,#42,#15
	db #be,#4d,#42,#15,#ba,#6d,#0c,#04
	db #be,#60,#0b,#42,#11,#42,#15,#42
	db #19,#42,#1d,#c2,#cd,#fc,#ff,#c4
	db #c0,#00,#00,#7f,#42,#15,#ba,#6d
	db #0c,#02,#be,#60,#0b,#75,#42,#15
	db #42,#1d,#0c,#c2,#cd,#fc,#ff,#c4
	db #c0,#00,#00,#c4,#60,#0c,#be,#60
	db #0b,#42,#11,#42,#15,#be,#4d,#42
	db #15,#ca,#4d,#ca,#60,#0c,#02,#c8
	db #60,#0b,#42,#11,#42,#15,#42,#19
	db #42,#1d,#c8,#cd,#fc,#ff,#ca,#c0
	db #00,#00,#89,#42,#11,#c4,#6d,#0c
	db #42,#15,#c8,#6d,#0b,#be,#60,#0c
	db #04,#42,#15,#42,#1d,#c4,#63,#09
	db #42,#05,#c2,#e3,#fc,#ff,#09,#c4
	db #c0,#00,#00,#c4,#60,#0a,#be,#60
	db #09,#42,#07,#42,#0b,#be,#43,#42
	db #0b,#ba,#63,#0a,#04,#be,#60,#09
	db #42,#07,#42,#0b,#42,#0f,#42,#13
	db #c2,#c3,#fc,#ff,#c4,#c0,#00,#00
	db #7f,#42,#0b,#ba,#63,#0a,#02,#be
	db #60,#09,#75,#42,#0b,#42,#13,#0c
	db #c2,#c3,#fc,#ff,#c4,#c0,#00,#00
	db #c4,#60,#0a,#be,#60,#09,#42,#07
	db #42,#0b,#be,#43,#42,#0b,#ca,#43
	db #ca,#60,#0a,#02,#c8,#60,#09,#42
	db #07,#42,#0b,#42,#0f,#42,#13,#c8
	db #c3,#fc,#ff,#ca,#c0,#00,#00,#89
	db #42,#07,#c4,#63,#0a,#42,#0b,#c8
	db #63,#09,#be,#60,#0a,#04,#42,#0b
	db #42,#13,#42,#1f,#00,#8e,#e1,#00
	db #00,#02,#04,#8e,#60,#03,#be,#60
	db #04,#02,#42,#60,#00,#ba,#60,#05
	db #8e,#60,#08,#06,#a2,#60,#06,#67
	db #42,#60,#00,#02,#8e,#60,#08,#06
	db #be,#60,#07,#02,#42,#60,#00,#be
	db #60,#04,#8e,#60,#08,#06,#ac,#60
	db #06,#67,#42,#60,#00,#02,#98,#60
	db #02,#04,#98,#60,#03,#be,#60,#04
	db #02,#42,#60,#00,#ba,#60,#05,#98
	db #60,#08,#06,#a2,#60,#06,#67,#42
	db #60,#00,#02,#98,#60,#08,#06,#ba
	db #60,#05,#02,#42,#60,#00,#ba,#60
	db #07,#98,#60,#08,#06,#ac,#60,#06
	db #67,#8a,#60,#03,#4b,#c8,#e3,#fa
	db #ff,#09,#cc,#c0,#00,#00,#cc,#60
	db #0a,#c4,#60,#09,#42,#07,#42,#0b
	db #c4,#43,#42,#0b,#c2,#63,#0a,#04
	db #c4,#60,#09,#42,#07,#42,#0b,#42
	db #0f,#42,#13,#c8,#c3,#fa,#ff,#cc
	db #c0,#00,#00,#85,#42,#0b,#c2,#63
	db #0a,#02,#c4,#60,#09,#7f,#42,#0b
	db #42,#13,#0c,#c8,#c3,#fa,#ff,#cc
	db #c0,#00,#00,#cc,#60,#0a,#c4,#60
	db #09,#42,#07,#42,#0b,#c4,#43,#42
	db #0b,#ba,#43,#ba,#60,#0a,#02,#b8
	db #60,#09,#42,#07,#42,#0b,#42,#0f
	db #42,#13,#b8,#c3,#fa,#ff,#ba,#c0
	db #00,#00,#79,#42,#07,#b4,#43,#42
	db #0b,#ba,#43,#79,#04,#42,#0b,#42
	db #13,#42,#1f,#00,#c2,#e3,#fc,#ff
	db #09,#c4,#c0,#00,#00,#c4,#60,#0a
	db #be,#60,#09,#42,#07,#42,#0b,#be
	db #43,#42,#0b,#ba,#63,#0a,#04,#be
	db #60,#09,#42,#07,#42,#0b,#8a,#61
	db #06,#4f,#c2,#e3,#fc,#ff,#09,#c4
	db #c0,#00,#00,#7f,#42,#0b,#ba,#63
	db #0a,#02,#be,#60,#09,#75,#42,#0b
	db #42,#13,#a2,#61,#06,#42,#03,#ac
	db #41,#42,#03,#a2,#41,#42,#03,#c2
	db #e0,#fc,#ff,#09,#c4,#c0,#00,#00
	db #c4,#60,#0a,#be,#60,#09,#42,#07
	db #42,#0b,#be,#43,#42,#0b,#ca,#43
	db #ca,#60,#0a,#02,#c8,#60,#09,#42
	db #07,#42,#0b,#b4,#61,#06,#02,#c8
	db #e3,#fc,#ff,#09,#ca,#c0,#00,#00
	db #89,#42,#07,#c4,#63,#0a,#42,#0b
	db #c8,#63,#09,#be,#60,#0a,#04,#42
	db #0b,#42,#13,#a6,#61,#06,#42,#03
	db #a2,#41,#42,#03,#8e,#e1,#00,#00
	db #02,#04,#a6,#60,#03,#be,#60,#04
	db #02,#98,#60,#03,#ba,#60,#05,#a2
	db #60,#02,#02,#a6,#60,#03,#02,#a2
	db #60,#06,#67,#98,#60,#03,#5d,#8e
	db #60,#02,#04,#a6,#60,#03,#be,#60
	db #07,#02,#98,#60,#03,#be,#60,#04
	db #a2,#60,#02,#02,#a6,#60,#03,#02
	db #ac,#60,#06,#67,#94,#60,#03,#57
	db #98,#60,#02,#04,#b0,#60,#03,#be
	db #60,#04,#02,#8e,#60,#03,#ba,#60
	db #05,#98,#60,#02,#02,#98,#60,#03
	db #02,#a2,#60,#06,#67,#98,#60,#03
	db #5d,#98,#60,#02,#04,#b0,#60,#03
	db #ba,#60,#05,#02,#98,#60,#03,#ba
	db #60,#07,#a0,#60,#02,#02,#b8,#60
	db #03,#02,#ac,#60,#06,#67,#ba,#60
	db #03,#4b,#c8,#e3,#fa,#ff,#09,#cc
	db #c0,#00,#00,#cc,#60,#0a,#c4,#60
	db #09,#42,#07,#42,#0b,#c4,#43,#42
	db #0b,#c2,#63,#0a,#04,#c4,#60,#09
	db #42,#07,#42,#0b,#98,#61,#06,#5d
	db #c8,#e3,#fa,#ff,#09,#cc,#c0,#00
	db #00,#85,#42,#0b,#c2,#63,#0a,#02
	db #c4,#60,#09,#7f,#42,#0b,#42,#13
	db #02,#a6,#61,#06,#42,#03,#aa,#41
	db #42,#03,#98,#41,#c8,#e3,#fa,#ff
	db #09,#cc,#c0,#00,#00,#cc,#60,#0a
	db #c4,#60,#09,#42,#07,#42,#0b,#c4
	db #43,#42,#0b,#ba,#43,#ba,#60,#0a
	db #02,#b8,#60,#09,#42,#07,#42,#0b
	db #ba,#61,#06,#02,#b8,#e3,#fb,#ff
	db #09,#ba,#c0,#00,#00,#79,#42,#07
	db #b4,#43,#42,#0b,#ba,#43,#79,#04
	db #42,#0b,#42,#13,#ac,#61,#06,#42
	db #03,#aa,#41,#42,#03,#9e,#e1,#00
	db #00,#06,#42,#03,#42,#05,#9e,#41
	db #42,#03,#42,#05,#a2,#41,#42,#03
	db #42,#05,#42,#07,#42,#09,#42,#0b
	db #42,#0d,#42,#0f,#42,#11,#42,#13
	db #a2,#41,#42,#03,#42,#05,#a2,#41
	db #42,#03,#42,#05,#a2,#41,#42,#03
	db #42,#05,#42,#07,#42,#09,#42,#0b
	db #42,#0d,#42,#0f,#a6,#41,#63,#5f
	db #42,#03,#42,#05,#9e,#41,#42,#03
	db #42,#05,#a2,#41,#42,#03,#42,#05
	db #42,#07,#42,#09,#42,#0b,#42,#0d
	db #42,#0f,#42,#11,#42,#13,#9c,#41
	db #42,#03,#a6,#41,#42,#03,#b6,#41
	db #42,#03,#c8,#41,#42,#03,#c2,#41
	db #42,#03,#42,#05,#42,#07,#42,#09
	db #42,#0b,#42,#0d,#42,#0f,#9e,#e1
	db #00,#00,#02,#04,#9e,#60,#03,#be
	db #60,#04,#02,#a2,#60,#03,#ba,#60
	db #05,#a2,#60,#02,#06,#a2,#60,#06
	db #67,#a2,#60,#03,#59,#94,#60,#02
	db #04,#94,#60,#03,#ba,#60,#07,#02
	db #8a,#60,#03,#ba,#60,#05,#8a,#60
	db #02,#06,#ac,#60,#06,#67,#98,#60
	db #03,#5d,#9e,#60,#02,#04,#9e,#60
	db #03,#be,#60,#04,#02,#a2,#60,#03
	db #ba,#60,#05,#a2,#60,#02,#06,#a2
	db #60,#06,#67,#a2,#60,#03,#59,#9c
	db #60,#02,#04,#9c,#60,#03,#04,#5d
	db #02,#9c,#60,#02,#02,#b4,#60,#03
	db #02,#75,#42,#80,#20,#00,#42,#00
	db #42,#00,#a6,#e1,#00,#00,#06,#42
	db #03,#42,#05,#a6,#41,#42,#03,#42
	db #05,#aa,#41,#42,#03,#42,#05,#42
	db #07,#42,#09,#42,#0b,#42,#0d,#42
	db #0f,#42,#11,#42,#13,#ac,#41,#42
	db #03,#42,#05,#ac,#41,#42,#03,#42
	db #05,#aa,#41,#42,#03,#42,#05,#42
	db #07,#42,#09,#42,#0b,#42,#0d,#42
	db #0f,#ac,#41,#6b,#67,#42,#03,#42
	db #05,#a6,#41,#42,#03,#42,#05,#aa
	db #41,#42,#03,#42,#05,#42,#07,#42
	db #09,#42,#0b,#42,#0d,#42,#0f,#42
	db #11,#42,#13,#42,#15,#a4,#41,#42
	db #03,#b0,#41,#42,#03,#bc,#41,#42
	db #03,#bc,#41,#42,#03,#42,#05,#42
	db #07,#42,#09,#42,#0b,#42,#0d,#42
	db #0f,#42,#11,#b0,#e1,#00,#00,#04
	db #02,#42,#03,#02,#42,#05,#02,#ac
	db #61,#0d,#02,#42,#03,#02,#42,#05
	db #02,#42,#07,#02,#42,#09,#02,#ac
	db #41,#02,#42,#03,#ac,#41,#02,#42
	db #03,#b0,#61,#07,#02,#42,#03,#02
	db #42,#05,#02,#42,#07,#02,#42,#09
	db #02,#b0,#61,#04,#02,#42,#03,#02
	db #42,#05,#02,#ac,#61,#0d,#02,#42
	db #03,#02,#42,#05,#02,#42,#07,#02
	db #42,#09,#02,#9e,#61,#06,#02,#42
	db #07,#9e,#41,#02,#42,#07,#a2,#41
	db #02,#42,#07,#42,#0d,#b0,#e3,#f6
	db #ff,#09,#b4,#c0,#00,#00,#b0,#c0
	db #f6,#ff,#b4,#c0,#00,#00,#cc,#c0
	db #3e,#00,#85,#98,#e1,#00,#00,#02
	db #0a,#9c,#60,#03,#02,#9c,#60,#02
	db #0e,#5f,#04,#9e,#60,#03,#04,#63
	db #02,#a2,#60,#02,#0e,#59,#0a,#9c
	db #60,#03,#02,#9c,#60,#02,#0e,#5f
	db #04,#9e,#60,#03,#04,#63,#02,#a2
	db #60,#08,#00,#a6,#e7,#00,#00,#01
	db #75,#67,#67,#71,#67,#67,#7b,#67
	db #7f,#67,#67,#75,#67,#71,#75,#67
	db #75,#67,#67,#71,#67,#67,#7b,#67
	db #7f,#67,#67,#75,#67,#71,#75,#67
	db #75,#67,#67,#71,#67,#67,#7b,#67
	db #7f,#67,#67,#75,#67,#71,#75,#ac
	db #61,#06,#02,#42,#07,#ac,#41,#02
	db #42,#07,#b0,#41,#02,#42,#07,#42
	db #0d,#a6,#67,#01,#67,#75,#67,#71
	db #75,#b2,#e3,#00,#00,#0b,#75,#ba
	db #60,#0c,#02,#42,#07,#42,#0b,#bc
	db #e3,#fd,#ff,#0b,#be,#c0,#00,#00
	db #be,#60,#0c,#02,#c4,#60,#0b,#c4
	db #60,#0c,#04,#42,#07,#42,#0b,#b0
	db #63,#0b,#42,#07,#b4,#63,#0c,#02
	db #ba,#60,#0b,#42,#07,#b6,#c3,#fc
	db #ff,#b8,#c0,#00,#00,#b8,#60,#0c
	db #06,#42,#07,#42,#0b,#b0,#63,#0b
	db #ac,#47,#b2,#c3,#fa,#ff,#b4,#c0
	db #00,#00,#6d,#42,#07,#a6,#43,#02
	db #a6,#60,#0c,#0a,#42,#07,#42,#0b
	db #42,#0f,#98,#63,#0b,#5d,#a2,#60
	db #0c,#02,#9c,#60,#0b,#63,#a6,#60
	db #0c,#02,#a2,#60,#0b,#67,#ac,#60
	db #0c,#02,#a6,#60,#0b,#6d,#b0,#60
	db #0c,#02,#ac,#60,#0b,#b0,#e3,#fd
	db #ff,#0b,#b2,#c0,#00,#00,#b2,#60
	db #0c,#b0,#e0,#fd,#ff,#0b,#b2,#c0
	db #00,#00,#b2,#60,#0c,#b0,#e0,#fd
	db #ff,#0b,#b2,#c0,#00,#00,#b2,#60
	db #0c,#b0,#e0,#fd,#ff,#0b,#b2,#c0
	db #00,#00,#b2,#60,#0c,#ba,#60,#0b
	db #ba,#60,#0c,#04,#be,#60,#0b,#75
	db #73,#71,#75,#73,#71,#6d,#73,#71
	db #6d,#67,#6d,#67,#63,#5d,#9c,#c0
	db #fa,#ff,#42,#00,#42,#80,#fb,#ff
	db #42,#80,#fc,#ff,#a0,#e0,#00,#00
	db #0c,#0e,#42,#05,#02,#42,#07,#02
	db #42,#09,#02,#42,#0b,#02,#a2,#63
	db #0b,#02,#a2,#60,#0c,#02,#a0,#60
	db #0b,#02,#a0,#60,#0c,#02,#a6,#60
	db #0b,#02,#a6,#60,#0c,#00,#98,#e1
	db #00,#00,#02,#06,#be,#60,#04,#02
	db #9c,#60,#03,#ba,#60,#05,#9c,#60
	db #02,#06,#a2,#60,#06,#67,#42,#60
	db #00,#02,#9e,#60,#02,#04,#9e,#60
	db #03,#be,#60,#07,#02,#a2,#60,#03
	db #be,#60,#04,#a2,#60,#02,#06,#ac
	db #60,#06,#67,#42,#60,#00,#02,#98
	db #60,#02,#06,#be,#60,#04,#02,#9c
	db #60,#03,#ba,#60,#05,#9c,#60,#02
	db #06,#a2,#60,#06,#67,#42,#60,#00
	db #02,#9e,#60,#02,#04,#9e,#60,#03
	db #ba,#60,#05,#02,#a2,#60,#03,#ba
	db #60,#07,#a2,#60,#08,#06,#ac,#60
	db #06,#67,#42,#60,#00,#00,#a2,#e3
	db #00,#00,#0b,#42,#80,#fa,#ff,#42
	db #80,#fb,#ff,#42,#00,#a6,#e0,#00
	db #00,#0c,#02,#ac,#60,#0b,#02,#ac
	db #60,#0c,#06,#42,#0b,#42,#13,#b2
	db #63,#0b,#75,#ba,#60,#0c,#02,#42
	db #0b,#be,#43,#42,#0b,#c4,#43,#bc
	db #e0,#fc,#ff,#0b,#be,#c0,#00,#00
	db #be,#60,#0c,#06,#42,#07,#42,#0b
	db #c2,#63,#0b,#85,#c6,#c0,#fe,#ff
	db #c8,#c0,#00,#00,#c8,#60,#0c,#c4
	db #60,#0b,#c4,#60,#0c,#02,#c0,#e0
	db #fd,#ff,#0b,#c2,#c0,#00,#00,#c2
	db #60,#0c,#be,#60,#0b,#be,#60,#0c
	db #02,#ba,#60,#0b,#02,#7f,#42,#60
	db #00,#bc,#60,#0b,#42,#80,#fd,#ff
	db #42,#80,#fe,#ff,#be,#c0,#00,#00
	db #be,#60,#0c,#06,#be,#60,#0b,#42
	db #80,#fe,#ff,#42,#00,#42,#00,#c2
	db #e0,#00,#00,#0c,#00,#a6,#e1,#00
	db #00,#05,#1e,#a6,#60,#0e,#1e,#a6
	db #60,#07,#1e,#a2,#60,#05,#0e,#8a
	db #63,#06,#4f,#42,#07,#42,#0b,#b8
	db #e3,#fa,#ff,#09,#ba,#c0,#00,#00
	db #ba,#60,#0a,#00,#8e,#e1,#00,#00
	db #02,#3e,#30,#8e,#60,#08,#00,#c2
	db #e3,#00,#00,#0b,#42,#80,#fe,#ff
	db #42,#00,#42,#00,#c6,#e0,#00,#00
	db #0c,#16,#42,#05,#06,#42,#07,#06
	db #42,#09,#06,#42,#0b,#06,#42,#0d
	db #06,#42,#0f,#06,#42,#11,#06,#42
	db #13,#06,#42,#15,#06,#42,#17,#06
	db #a2,#63,#06,#67,#42,#07,#42,#0b
	db #b2,#e3,#fa,#ff,#0b,#b4,#c0,#00
	db #00,#b4,#60,#0c,#00,#00,#00,#00
;
.init_music
;
	ld de,l8730
	jp real_init_music
;
.music_info
	db "Anarchy In The UK - Anarchy Menu 3 (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
