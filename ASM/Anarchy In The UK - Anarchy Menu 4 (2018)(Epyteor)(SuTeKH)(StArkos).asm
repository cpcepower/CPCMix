; Music of Anarchy In The UK - Anarchy Menu 4 (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ANITAM04.BIN"
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
	db #02,#06,#54,#02,#74,#87,#7d,#87
	db #84,#87,#9e,#87,#a4,#87,#b5,#87
	db #bc,#87,#d9,#87,#e6,#87,#0f,#88
	db #1a,#88,#31,#88,#45,#88,#4f,#88
	db #59,#88,#7c,#88,#86,#88,#b3,#88
	db #bb,#88,#c1,#88,#d4,#88,#e5,#88
	db #ee,#88,#01,#89,#1e,#89,#35,#89
	db #4c,#89,#87,#89,#00,#00,#00,#00
	db #00,#00,#0d,#76,#87,#01,#00,#28
	db #3c,#0d,#80,#87,#01,#00,#a8,#ff
	db #ff,#bc,#fe,#ff,#bc,#ff,#ff,#bc
	db #01,#00,#bc,#02,#00,#bc,#01,#00
	db #bc,#ff,#ff,#0d,#89,#87,#01,#00
	db #3c,#0d,#a0,#87,#01,#00,#3e,#65
	db #c3,#01,#3a,#60,#fa,#01,#36,#60
	db #a4,#02,#0d,#76,#87,#01,#00,#05
	db #5c,#0d,#b7,#87,#01,#00,#45,#5c
	db #fe,#ff,#45,#5c,#fd,#ff,#45,#5c
	db #fe,#ff,#45,#5c,#02,#00,#45,#5c
	db #03,#00,#45,#5c,#02,#00,#0d,#be
	db #87,#01,#00,#3c,#34,#2c,#24,#1c
	db #14,#0c,#04,#0d,#76,#87,#01,#00
	db #3e,#65,#c3,#01,#3a,#60,#fa,#01
	db #36,#60,#a4,#02,#45,#5c,#02,#00
	db #45,#5c,#03,#00,#45,#5c,#02,#00
	db #45,#5c,#fe,#ff,#45,#5c,#fd,#ff
	db #45,#5c,#fe,#ff,#0d,#f4,#87,#01
	db #00,#05,#5c,#05,#5c,#05,#5c,#0d
	db #76,#87,#01,#00,#bc,#fc,#ff,#bc
	db #fa,#ff,#bc,#fc,#ff,#bc,#04,#00
	db #bc,#06,#00,#bc,#04,#00,#0d,#1c
	db #88,#01,#00,#3c,#38,#34,#30,#2c
	db #28,#24,#20,#1c,#18,#14,#10,#0c
	db #08,#04,#0d,#76,#87,#01,#00,#30
	db #70,#03,#70,#07,#0d,#47,#88,#01
	db #00,#30,#70,#04,#70,#07,#0d,#51
	db #88,#01,#00,#3c,#38,#38,#34,#34
	db #30,#34,#30,#2c,#28,#24,#20,#2c
	db #28,#24,#20,#1c,#18,#24,#20,#1c
	db #18,#14,#10,#1c,#18,#14,#10,#0c
	db #08,#0d,#76,#87,#01,#00,#30,#70
	db #03,#70,#08,#0d,#7e,#88,#01,#00
	db #2e,#05,#7e,#28,#0c,#3a,#27,#76
	db #27,#0c,#32,#26,#6e,#26,#0c,#2a
	db #25,#66,#25,#0c,#22,#24,#5e,#24
	db #0c,#1a,#23,#56,#23,#0c,#12,#22
	db #4e,#22,#0c,#0a,#21,#46,#21,#0c
	db #0d,#76,#87,#01,#00,#68,#0c,#3c
	db #0d,#b7,#88,#01,#00,#3c,#0d,#bd
	db #88,#01,#00,#68,#0c,#bc,#ff,#ff
	db #bc,#ff,#ff,#bc,#ff,#ff,#3c,#3c
	db #3c,#0d,#c5,#88,#01,#00,#bc,#ff
	db #ff,#bc,#ff,#ff,#bc,#ff,#ff,#3c
	db #3c,#3c,#0d,#d6,#88,#01,#00,#3c
	db #3c,#7c,#0c,#0d,#e7,#88,#01,#00
	db #3e,#65,#c3,#01,#3a,#60,#fa,#01
	db #36,#60,#a4,#02,#05,#5c,#0d,#fc
	db #88,#01,#00,#45,#5c,#ff,#ff,#45
	db #5c,#fe,#ff,#45,#5c,#ff,#ff,#45
	db #5c,#01,#00,#45,#5c,#02,#00,#45
	db #5c,#01,#00,#0d,#03,#89,#01,#00
	db #bc,#ff,#ff,#bc,#fe,#ff,#bc,#ff
	db #ff,#bc,#01,#00,#bc,#02,#00,#bc
	db #ff,#ff,#0d,#20,#89,#01,#00,#b8
	db #ff,#ff,#b4,#fe,#ff,#b0,#ff,#ff
	db #ac,#01,#00,#a8,#02,#00,#a4,#01
	db #00,#0d,#76,#87,#01,#00,#b8,#ff
	db #ff,#b8,#fe,#ff,#b4,#ff,#ff,#b4
	db #01,#00,#b0,#02,#00,#b0,#01,#00
	db #ac,#ff,#ff,#ac,#fe,#ff,#a8,#ff
	db #ff,#a8,#ff,#ff,#a4,#fe,#ff,#a4
	db #01,#00,#a0,#ff,#ff,#a0,#fe,#ff
	db #9c,#ff,#ff,#9c,#01,#00,#98,#02
	db #00,#98,#01,#00,#0d,#76,#87,#01
	db #00,#3c,#3c,#7c,#07,#0d,#89,#89
	db #30,#00,#00,#00,#fb,#89,#00,#fc
	db #89,#66,#8a,#7a,#8a,#00,#fc,#89
	db #91,#8a,#82,#91,#00,#fc,#89,#03
	db #8b,#de,#91,#00,#fc,#89,#63,#8b
	db #a3,#8a,#00,#d3,#8b,#01,#8c,#71
	db #8c,#00,#d7,#8c,#01,#8c,#71,#8c
	db #00,#54,#8d,#af,#8d,#0c,#8e,#00
	db #6a,#8e,#01,#8c,#71,#8c,#00,#d7
	db #8e,#01,#8c,#71,#8c,#00,#44,#8f
	db #c8,#8f,#38,#90,#00,#9e,#90,#12
	db #91,#38,#90,#00,#d3,#8b,#01,#8c
	db #71,#8c,#00,#d7,#8c,#01,#8c,#71
	db #8c,#00,#54,#8d,#af,#8d,#0c,#8e
	db #01,#96,#89,#00,#b0,#e7,#00,#00
	db #01,#75,#ba,#60,#02,#42,#09,#42
	db #0b,#42,#0d,#a6,#67,#01,#6b,#b0
	db #60,#02,#42,#09,#42,#0b,#42,#0d
	db #a2,#67,#01,#9c,#60,#02,#02,#42
	db #09,#42,#0b,#42,#0d,#98,#67,#01
	db #92,#60,#02,#02,#42,#09,#42,#0b
	db #42,#0d,#b0,#67,#01,#75,#ba,#60
	db #02,#42,#09,#42,#0b,#42,#0d,#a6
	db #67,#01,#6b,#b0,#60,#02,#42,#09
	db #42,#0b,#42,#0d,#a2,#67,#01,#9c
	db #60,#02,#02,#42,#09,#42,#0b,#42
	db #0d,#98,#67,#01,#92,#60,#02,#02
	db #42,#09,#42,#0b,#42,#0d,#6c,#e3
	db #00,#00,#03,#42,#07,#42,#0b,#42
	db #0f,#42,#13,#42,#17,#42,#1b,#42
	db #1f,#00,#88,#e1,#00,#00,#04,#88
	db #49,#88,#51,#88,#59,#3e,#12,#96
	db #60,#05,#98,#60,#06,#02,#9a,#60
	db #05,#42,#80,#00,#00,#3e,#18,#76
	db #63,#03,#8e,#60,#07,#72,#60,#03
	db #8a,#60,#07,#9c,#e1,#00,#00,#08
	db #02,#42,#60,#00,#9c,#60,#05,#9c
	db #60,#09,#92,#60,#05,#98,#60,#08
	db #02,#9c,#60,#05,#6b,#aa,#60,#09
	db #b0,#60,#05,#b0,#60,#08,#0a,#71
	db #02,#8e,#60,#05,#92,#60,#09,#98
	db #60,#05,#a2,#60,#09,#9c,#60,#08
	db #02,#42,#60,#00,#9c,#60,#05,#9c
	db #60,#09,#92,#60,#05,#98,#60,#08
	db #02,#9c,#60,#05,#6b,#aa,#60,#09
	db #b4,#60,#05,#b4,#60,#08,#0a,#75
	db #02,#8e,#60,#05,#92,#60,#06,#02
	db #98,#60,#05,#6c,#e3,#00,#00,#0a
	db #04,#6c,#60,#07,#08,#76,#60,#03
	db #7a,#60,#0b,#02,#80,#60,#0a,#42
	db #05,#42,#07,#76,#63,#03,#7a,#60
	db #0b,#02,#80,#60,#0a,#42,#05,#42
	db #07,#7a,#63,#03,#41,#80,#60,#0b
	db #45,#6c,#60,#0a,#04,#6c,#60,#07
	db #08,#76,#60,#03,#7a,#60,#0b,#02
	db #80,#60,#0a,#42,#05,#42,#07,#80
	db #63,#03,#72,#60,#0a,#72,#60,#0b
	db #8a,#60,#07,#76,#60,#03,#76,#60
	db #0b,#8e,#60,#07,#78,#60,#03,#78
	db #60,#0b,#3b,#6c,#e3,#00,#00,#0a
	db #04,#6c,#60,#07,#02,#b4,#65,#0c
	db #b0,#63,#0d,#42,#01,#76,#63,#03
	db #7a,#60,#0b,#02,#80,#60,#0a,#42
	db #05,#42,#07,#76,#63,#03,#7a,#60
	db #0b,#02,#80,#60,#0a,#42,#05,#42
	db #07,#7a,#63,#03,#41,#80,#60,#0b
	db #45,#6c,#60,#0a,#04,#6c,#60,#07
	db #02,#b4,#65,#0c,#b0,#63,#0d,#42
	db #01,#76,#63,#03,#7a,#60,#0b,#02
	db #80,#60,#0a,#42,#05,#42,#07,#80
	db #63,#03,#72,#60,#0a,#72,#60,#0b
	db #8a,#60,#07,#76,#60,#03,#76,#60
	db #0b,#8e,#60,#07,#78,#60,#03,#78
	db #60,#0b,#3b,#c8,#e3,#00,#00,#0e
	db #02,#87,#89,#02,#8d,#89,#02,#87
	db #7f,#02,#7b,#04,#7f,#83,#02,#75
	db #06,#7b,#02,#75,#7f,#02,#7b,#75
	db #02,#7f,#04,#7b,#75,#02,#7f,#04
	db #7b,#75,#02,#73,#04,#75,#79,#02
	db #73,#6c,#e3,#00,#00,#0a,#04,#6c
	db #60,#07,#02,#b4,#65,#0c,#b0,#63
	db #0d,#42,#01,#76,#63,#03,#7a,#60
	db #0b,#02,#80,#60,#0a,#42,#05,#42
	db #07,#76,#63,#03,#7a,#60,#0b,#02
	db #80,#60,#0a,#42,#05,#42,#07,#7a
	db #63,#03,#41,#80,#60,#0b,#45,#64
	db #60,#0a,#04,#64,#60,#07,#02,#b0
	db #65,#0d,#b4,#63,#0f,#42,#01,#64
	db #63,#03,#72,#60,#0b,#02,#76,#60
	db #0a,#42,#05,#42,#07,#76,#63,#03
	db #8e,#60,#0a,#8e,#60,#0b,#78,#60
	db #07,#7a,#60,#03,#7a,#60,#0b,#80
	db #60,#07,#7a,#60,#03,#7a,#60,#0b
	db #45,#9c,#e1,#00,#00,#08,#02,#42
	db #60,#00,#88,#60,#10,#02,#92,#60
	db #05,#98,#60,#08,#02,#9c,#60,#05
	db #88,#60,#10,#02,#b0,#60,#05,#b0
	db #60,#08,#04,#88,#60,#10,#04,#88
	db #60,#04,#02,#8e,#60,#05,#88,#60
	db #10,#98,#60,#05,#a2,#60,#09,#94
	db #60,#08,#02,#42,#60,#00,#88,#60
	db #10,#02,#92,#60,#05,#94,#60,#08
	db #02,#94,#60,#05,#88,#60,#10,#02
	db #a6,#60,#05,#a6,#60,#08,#04,#88
	db #60,#10,#04,#88,#60,#04,#02,#be
	db #60,#05,#88,#60,#10,#02,#49,#f6
	db #e5,#fe,#ff,#11,#f8,#e0,#00,#00
	db #12,#f6,#60,#11,#f8,#60,#13,#42
	db #09,#fc,#65,#11,#f8,#60,#13,#42
	db #09,#f6,#65,#11,#ee,#60,#13,#42
	db #09,#ea,#45,#42,#07,#42,#09,#ee
	db #65,#11,#f2,#60,#13,#42,#09,#e4
	db #45,#42,#07,#42,#09,#42,#0b,#ea
	db #45,#42,#09,#e4,#65,#11,#ee,#60
	db #13,#42,#09,#ea,#65,#11,#e4,#60
	db #13,#42,#09,#ee,#45,#42,#07,#42
	db #09,#ea,#65,#11,#e4,#60,#13,#42
	db #09,#ee,#65,#11,#ee,#67,#14,#42
	db #09,#ea,#65,#11,#e4,#60,#13,#42
	db #09,#e2,#65,#11,#e2,#67,#14,#42
	db #09,#e4,#65,#11,#e8,#60,#13,#42
	db #09,#e2,#65,#11,#e4,#e5,#00,#00
	db #11,#04,#e4,#60,#14,#04,#42,#07
	db #04,#42,#09,#04,#42,#0b,#04,#42
	db #0d,#04,#42,#0f,#04,#42,#11,#04
	db #e4,#65,#11,#e4,#69,#14,#42,#0d
	db #ea,#65,#11,#ea,#60,#0b,#e4,#60
	db #11,#ec,#c0,#fe,#ff,#ee,#e0,#00
	db #00,#12,#ea,#60,#11,#a5,#e4,#60
	db #0b,#e8,#60,#11,#a3,#e2,#60,#0b
	db #e4,#60,#11,#a9,#e8,#60,#0b,#f2
	db #60,#11,#f2,#60,#14,#42,#07,#42
	db #09,#42,#0b,#42,#0d,#42,#0f,#6c
	db #e3,#00,#00,#03,#6c,#60,#0b,#2d
	db #84,#60,#15,#04,#6a,#60,#03,#6a
	db #60,#0b,#2b,#82,#60,#15,#04,#68
	db #60,#03,#68,#60,#0b,#29,#80,#60
	db #15,#04,#66,#60,#03,#66,#60,#0b
	db #27,#7e,#60,#15,#04,#64,#60,#03
	db #04,#64,#60,#0a,#42,#05,#02,#42
	db #07,#02,#68,#63,#03,#25,#64,#60
	db #0b,#02,#62,#60,#03,#62,#60,#0b
	db #70,#60,#03,#70,#60,#0b,#02,#7a
	db #60,#03,#7a,#60,#0a,#02,#42,#05
	db #02,#42,#07,#00,#b4,#e1,#00,#00
	db #16,#02,#b4,#60,#09,#88,#60,#10
	db #88,#49,#88,#51,#b2,#61,#16,#02
	db #b2,#60,#09,#88,#60,#10,#88,#49
	db #88,#51,#b0,#61,#16,#02,#b0,#60
	db #09,#88,#60,#10,#88,#49,#88,#51
	db #ae,#61,#16,#02,#ae,#60,#09,#88
	db #60,#10,#88,#49,#88,#51,#ac,#61
	db #16,#04,#ac,#60,#06,#08,#b0,#60
	db #05,#6d,#02,#ac,#60,#09,#aa,#60
	db #05,#aa,#60,#09,#b8,#60,#05,#02
	db #b8,#60,#09,#c2,#60,#05,#c2,#60
	db #17,#00,#42,#91,#00,#00,#42,#13
	db #42,#15,#b0,#63,#01,#b0,#60,#18
	db #02,#ae,#60,#01,#ae,#60,#18,#02
	db #a6,#60,#01,#a6,#60,#18,#02,#a2
	db #60,#01,#a2,#60,#18,#02,#aa,#60
	db #01,#aa,#60,#18,#02,#a6,#60,#01
	db #a6,#60,#18,#02,#a0,#60,#01,#a0
	db #60,#18,#02,#a2,#60,#01,#a2,#60
	db #18,#02,#a0,#60,#01,#a0,#60,#0b
	db #9c,#60,#01,#a2,#60,#03,#02,#a6
	db #60,#0b,#a0,#60,#01,#a0,#60,#0b
	db #9c,#60,#01,#9c,#60,#18,#04,#42
	db #05,#42,#07,#42,#09,#a2,#60,#01
	db #67,#aa,#47,#71,#aa,#45,#75,#42
	db #87,#00,#00,#42,#09,#42,#0b,#b0
	db #63,#01,#b0,#60,#18,#02,#ae,#60
	db #01,#ae,#60,#18,#02,#a6,#60,#01
	db #a6,#60,#18,#02,#a2,#60,#01,#a2
	db #60,#18,#02,#aa,#60,#01,#aa,#60
	db #18,#02,#a6,#60,#01,#a6,#60,#18
	db #02,#a0,#60,#01,#a0,#60,#18,#02
	db #a2,#60,#01,#a2,#60,#18,#02,#a0
	db #60,#01,#a0,#60,#0b,#9c,#60,#01
	db #a2,#60,#03,#02,#a6,#60,#0b,#a0
	db #60,#01,#a0,#60,#0b,#9c,#60,#01
	db #9c,#60,#18,#04,#42,#05,#42,#07
	db #42,#09,#a2,#60,#01,#67,#aa,#47
	db #71,#aa,#45,#75,#b8,#e3,#00,#00
	db #02,#b8,#60,#19,#be,#60,#01,#b8
	db #60,#02,#b8,#60,#19,#c0,#e0,#fc
	db #ff,#01,#c2,#e0,#00,#00,#03,#c2
	db #60,#19,#be,#60,#01,#79,#b8,#60
	db #19,#c4,#60,#01,#c4,#60,#18,#c4
	db #60,#19,#c2,#60,#01,#be,#60,#02
	db #be,#60,#19,#c0,#e0,#fc,#ff,#01
	db #c2,#e0,#00,#00,#03,#c2,#65,#18
	db #42,#07,#42,#09,#be,#63,#01,#79
	db #be,#60,#02,#be,#60,#19,#b8,#60
	db #01,#c4,#60,#02,#c4,#60,#1a,#02
	db #c2,#60,#01,#c2,#60,#19,#be,#60
	db #01,#b8,#60,#02,#b8,#60,#19,#be
	db #60,#01,#be,#60,#18,#42,#05,#42
	db #07,#b4,#65,#15,#02,#79,#be,#60
	db #1b,#02,#b8,#60,#15,#75,#02,#79
	db #70,#e3,#00,#00,#0a,#04,#70,#60
	db #07,#02,#b8,#65,#0c,#b4,#63,#0d
	db #42,#01,#7a,#63,#03,#7e,#60,#0b
	db #02,#84,#60,#0a,#42,#05,#42,#07
	db #7a,#63,#03,#7e,#60,#0b,#02,#84
	db #60,#0a,#42,#05,#42,#07,#7e,#63
	db #03,#45,#84,#60,#0b,#49,#68,#60
	db #0a,#04,#68,#60,#07,#02,#b4,#65
	db #0d,#b8,#63,#0f,#42,#01,#68,#63
	db #03,#76,#60,#0b,#02,#7a,#60,#0a
	db #42,#05,#42,#07,#7a,#63,#03,#92
	db #60,#0a,#92,#60,#0b,#7c,#60,#07
	db #7e,#60,#03,#7e,#60,#0b,#84,#60
	db #07,#7e,#60,#03,#7e,#60,#0b,#49
	db #a0,#e1,#00,#00,#08,#02,#42,#60
	db #00,#88,#60,#10,#02,#96,#60,#05
	db #9c,#60,#08,#02,#a0,#60,#05,#88
	db #60,#10,#02,#b4,#60,#05,#b4,#60
	db #08,#04,#88,#60,#10,#04,#88,#60
	db #04,#02,#92,#60,#05,#88,#60,#10
	db #9c,#60,#05,#a6,#60,#09,#98,#60
	db #08,#02,#42,#60,#00,#88,#60,#10
	db #02,#96,#60,#05,#98,#60,#08,#02
	db #98,#60,#05,#88,#60,#10,#02,#aa
	db #60,#05,#aa,#60,#08,#04,#88,#60
	db #10,#04,#88,#60,#04,#02,#c2,#60
	db #05,#88,#60,#10,#02,#49,#a0,#e5
	db #00,#00,#15,#42,#1f,#a0,#45,#9c
	db #63,#02,#9c,#60,#19,#a0,#60,#01
	db #a6,#60,#02,#a6,#60,#19,#aa,#60
	db #01,#ae,#60,#02,#ae,#60,#19,#b4
	db #60,#01,#79,#b8,#60,#19,#be,#60
	db #02,#42,#05,#42,#07,#b4,#43,#42
	db #05,#42,#07,#ae,#63,#01,#aa,#60
	db #02,#aa,#60,#19,#ae,#60,#01,#b8
	db #60,#02,#42,#05,#42,#07,#b4,#43
	db #b4,#60,#19,#ae,#60,#01,#b4,#60
	db #02,#b4,#60,#19,#ae,#60,#01,#aa
	db #60,#02,#aa,#60,#19,#b8,#60,#01
	db #b8,#60,#18,#42,#05,#02,#42,#07
	db #02,#b4,#63,#0e,#79,#02,#7f,#83
	db #02,#87,#70,#e3,#00,#00,#0a,#04
	db #70,#60,#07,#02,#b8,#65,#0c,#b4
	db #63,#0d,#42,#01,#7a,#63,#03,#7e
	db #60,#0b,#02,#84,#60,#0a,#42,#05
	db #42,#07,#7a,#63,#03,#7e,#60,#0b
	db #02,#84,#60,#0a,#42,#05,#42,#07
	db #7e,#63,#03,#45,#84,#60,#0b,#49
	db #68,#60,#0a,#04,#68,#60,#07,#02
	db #b4,#65,#0d,#b8,#63,#0f,#42,#01
	db #68,#63,#03,#76,#60,#0b,#02,#7a
	db #60,#0a,#42,#05,#42,#07,#7a,#63
	db #03,#92,#60,#0a,#92,#60,#0b,#7c
	db #60,#07,#70,#60,#03,#70,#60,#0b
	db #88,#60,#07,#6e,#60,#03,#6e,#60
	db #0b,#47,#9c,#e1,#00,#00,#06,#02
	db #42,#60,#00,#9c,#60,#05,#9c,#60
	db #09,#92,#60,#05,#98,#60,#06,#02
	db #9c,#60,#05,#6b,#aa,#60,#09,#b0
	db #60,#05,#b0,#60,#06,#0e,#8e,#60
	db #05,#92,#60,#09,#98,#60,#05,#a2
	db #60,#09,#9c,#60,#06,#02,#42,#60
	db #00,#9c,#60,#05,#9c,#60,#09,#92
	db #60,#05,#98,#60,#06,#02,#9c,#60
	db #05,#6b,#aa,#60,#09,#b4,#60,#05
	db #b4,#60,#06,#0e,#8e,#60,#05,#92
	db #60,#06,#02,#98,#60,#05,#9c,#e1
	db #00,#00,#08,#02,#42,#60,#00,#9c
	db #60,#05,#9c,#60,#09,#92,#60,#05
	db #98,#60,#06,#02,#9c,#60,#05,#6b
	db #aa,#60,#09,#b0,#60,#05,#b0,#60
	db #06,#0e,#8e,#60,#05,#92,#60,#09
	db #98,#60,#05,#a2,#60,#09,#9c,#60
	db #08,#02,#42,#60,#00,#9c,#60,#05
	db #9c,#60,#09,#92,#60,#05,#98,#60
	db #06,#02,#9c,#60,#05,#6b,#aa,#60
	db #09,#b4,#60,#05,#b4,#60,#06,#0e
	db #8e,#60,#05,#92,#60,#06,#02,#98
	db #60,#05,#00,#00,#00,#00,#00,#00
;
.init_music
;
	ld de,l8730
	jp real_init_music
;
.music_info
	db "Anarchy In The UK - Anarchy Menu 4 (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
