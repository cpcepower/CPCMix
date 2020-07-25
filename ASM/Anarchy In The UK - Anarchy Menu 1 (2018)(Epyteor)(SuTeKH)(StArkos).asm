; Music of Anarchy In The UK - Anarchy Menu 1 (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ANITAM01.BIN"
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
	db #02,#07,#ff,#01,#6a,#87,#73,#87
	db #7a,#87,#89,#87,#a7,#87,#cb,#87
	db #ef,#87,#13,#88,#23,#88,#2f,#88
	db #3f,#88,#63,#88,#87,#88,#9c,#88
	db #a5,#88,#c0,#88,#ce,#88,#dc,#88
	db #eb,#88,#fb,#88,#0b,#89,#1b,#89
	db #2b,#89,#00,#00,#00,#00,#00,#00
	db #0d,#6c,#87,#01,#00,#05,#5c,#0d
	db #75,#87,#01,#00,#05,#5c,#05,#5c
	db #05,#5c,#05,#5c,#05,#5c,#0d,#6c
	db #87,#01,#00,#38,#38,#38,#38,#38
	db #38,#38,#b8,#ff,#ff,#b8,#ff,#ff
	db #b8,#ff,#ff,#b8,#01,#00,#b8,#01
	db #00,#b8,#01,#00,#0d,#92,#87,#01
	db #00,#38,#78,#09,#38,#78,#09,#38
	db #78,#09,#38,#f8,#ff,#ff,#09,#b8
	db #ff,#ff,#f8,#ff,#ff,#09,#b8,#01
	db #00,#f8,#01,#00,#09,#b8,#01,#00
	db #0d,#b3,#87,#01,#00,#38,#78,#0a
	db #38,#78,#0a,#38,#78,#0a,#38,#f8
	db #ff,#ff,#0a,#b8,#ff,#ff,#f8,#ff
	db #ff,#0a,#b8,#01,#00,#f8,#01,#00
	db #0a,#b8,#01,#00,#0d,#d7,#87,#01
	db #00,#38,#78,#0c,#38,#78,#0c,#38
	db #78,#0c,#38,#f8,#ff,#ff,#0c,#b8
	db #ff,#ff,#f8,#ff,#ff,#0c,#b8,#01
	db #00,#f8,#01,#00,#0c,#b8,#01,#00
	db #0d,#fb,#87,#01,#00,#3c,#7c,#03
	db #7c,#07,#3c,#7c,#03,#7c,#07,#3c
	db #0d,#15,#88,#01,#00,#3c,#3c,#38
	db #34,#30,#2c,#28,#0d,#6c,#87,#01
	db #00,#3c,#7c,#02,#7c,#07,#3c,#7c
	db #02,#7c,#07,#3c,#0d,#31,#88,#01
	db #00,#38,#78,#07,#38,#78,#07,#38
	db #78,#07,#38,#f8,#ff,#ff,#07,#b8
	db #ff,#ff,#f8,#ff,#ff,#07,#b8,#01
	db #00,#f8,#01,#00,#07,#b8,#01,#00
	db #0d,#4b,#88,#01,#00,#38,#78,#08
	db #38,#78,#08,#38,#78,#08,#38,#f8
	db #ff,#ff,#08,#b8,#ff,#ff,#f8,#ff
	db #ff,#08,#b8,#01,#00,#f8,#01,#00
	db #08,#b8,#01,#00,#0d,#6f,#88,#01
	db #00,#3e,#6b,#ef,#00,#3a,#69,#e1
	db #00,#36,#67,#be,#00,#05,#5c,#05
	db #5c,#0d,#6c,#87,#01,#00,#2e,#05
	db #05,#5c,#0d,#a0,#88,#01,#00,#3e
	db #6b,#ef,#00,#3a,#69,#e1,#00,#3a
	db #67,#be,#00,#05,#5c,#05,#5c,#05
	db #5c,#2e,#25,#05,#5c,#0d,#bb,#88
	db #01,#00,#3c,#3c,#7c,#0c,#3c,#3c
	db #7c,#0c,#3c,#0d,#c2,#88,#01,#00
	db #3c,#7c,#0c,#3c,#3c,#7c,#0c,#3c
	db #3c,#0d,#d0,#88,#01,#00,#2e,#05
	db #05,#5c,#05,#5c,#05,#5c,#05,#5c
	db #0d,#6c,#87,#01,#00,#3c,#7c,#04
	db #7c,#07,#3c,#7c,#04,#7c,#07,#3c
	db #0d,#ed,#88,#01,#00,#3c,#7c,#05
	db #7c,#08,#3c,#7c,#05,#7c,#08,#3c
	db #0d,#fd,#88,#01,#00,#3c,#7c,#05
	db #7c,#07,#3c,#7c,#05,#7c,#07,#3c
	db #0d,#0d,#89,#01,#00,#3c,#7c,#05
	db #7c,#09,#3c,#7c,#05,#7c,#09,#3c
	db #0d,#1d,#89,#01,#00,#3c,#7c,#07
	db #7c,#0a,#3c,#7c,#07,#7c,#0a,#3c
	db #0d,#2d,#89,#40,#00,#00,#00,#c1
	db #89,#00,#c2,#89,#8d,#8a,#46,#8a
	db #00,#c2,#89,#8d,#8a,#d7,#8a,#00
	db #59,#8b,#dd,#8b,#d7,#8a,#00,#59
	db #8b,#dd,#8b,#d7,#8a,#10,#27,#8c
	db #af,#8c,#6d,#8c,#20,#10,#04,#92
	db #cb,#8c,#d7,#8a,#40,#00,#9e,#92
	db #25,#8d,#74,#8d,#00,#04,#92,#cb
	db #8c,#d7,#8a,#00,#9e,#92,#25,#8d
	db #74,#8d,#00,#08,#8e,#a2,#8e,#eb
	db #8e,#00,#33,#8f,#cd,#8f,#12,#90
	db #00,#5e,#90,#f8,#90,#3c,#91,#0a
	db #05,#05,#5e,#90,#b8,#91,#3c,#91
	db #0a,#00,#00,#04,#92,#8d,#8a,#fc
	db #91,#00,#04,#92,#8d,#8a,#fc,#91
	db #00,#08,#8e,#a2,#8e,#eb,#8e,#00
	db #33,#8f,#38,#93,#12,#90,#01,#41
	db #89,#00,#8e,#e1,#00,#00,#01,#67
	db #a6,#60,#02,#8e,#60,#01,#67,#02
	db #a6,#60,#02,#8e,#60,#01,#67,#4f
	db #8e,#60,#02,#8e,#60,#01,#67,#a6
	db #60,#02,#8e,#60,#01,#67,#4f,#67
	db #a6,#60,#02,#8e,#60,#01,#67,#02
	db #a6,#60,#02,#8e,#60,#01,#67,#4f
	db #8e,#60,#02,#8e,#60,#01,#67,#a6
	db #60,#02,#8e,#60,#01,#67,#4b,#63
	db #a2,#60,#02,#8a,#60,#01,#63,#02
	db #a2,#60,#02,#8a,#60,#01,#63,#4b
	db #8a,#60,#02,#8a,#60,#01,#63,#a2
	db #60,#02,#8a,#60,#01,#63,#47,#5f
	db #9e,#60,#02,#86,#60,#01,#5f,#02
	db #9e,#60,#02,#86,#60,#01,#5f,#47
	db #86,#60,#02,#86,#60,#01,#5f,#9e
	db #60,#02,#86,#60,#01,#5f,#b4,#e9
	db #00,#00,#03,#42,#07,#42,#05,#42
	db #03,#10,#42,#05,#42,#07,#42,#09
	db #42,#0b,#b4,#49,#42,#07,#42,#05
	db #42,#03,#10,#42,#05,#42,#07,#42
	db #09,#42,#0b,#b0,#49,#42,#07,#42
	db #05,#42,#03,#10,#42,#05,#42,#07
	db #42,#09,#42,#0b,#b4,#49,#42,#07
	db #42,#05,#42,#03,#10,#42,#05,#42
	db #07,#42,#09,#42,#0b,#ac,#e9,#00
	db #00,#04,#42,#07,#42,#05,#42,#03
	db #10,#42,#05,#42,#07,#42,#09,#42
	db #0b,#aa,#69,#05,#42,#07,#42,#05
	db #42,#03,#10,#42,#05,#42,#07,#42
	db #09,#42,#0b,#aa,#69,#06,#42,#07
	db #42,#05,#42,#03,#10,#42,#05,#42
	db #07,#42,#09,#42,#0b,#ac,#69,#04
	db #42,#07,#42,#05,#42,#03,#10,#42
	db #05,#42,#07,#42,#09,#42,#0b,#be
	db #e7,#00,#00,#07,#a6,#60,#08,#7f
	db #be,#60,#07,#a6,#60,#08,#7f,#67
	db #67,#be,#60,#09,#a6,#60,#08,#67
	db #be,#60,#09,#a6,#60,#08,#7f,#67
	db #67,#be,#60,#07,#a6,#60,#08,#7f
	db #be,#60,#07,#a6,#60,#08,#7f,#67
	db #67,#be,#60,#09,#a6,#60,#08,#67
	db #be,#60,#09,#a6,#60,#08,#7f,#67
	db #67,#be,#60,#07,#a6,#60,#08,#7f
	db #be,#60,#07,#a6,#60,#08,#7f,#67
	db #67,#be,#60,#09,#a6,#60,#08,#67
	db #be,#60,#09,#a6,#60,#08,#7f,#67
	db #67,#be,#60,#07,#a6,#60,#08,#7f
	db #be,#60,#07,#a6,#60,#08,#7f,#67
	db #67,#be,#60,#09,#a6,#60,#08,#67
	db #be,#60,#09,#a6,#60,#08,#7f,#67
	db #67,#94,#e1,#00,#00,#01,#6d,#ac
	db #60,#02,#94,#60,#01,#6d,#02,#ac
	db #60,#02,#94,#60,#01,#6d,#55,#94
	db #60,#02,#94,#60,#01,#6d,#ac,#60
	db #02,#94,#60,#01,#6d,#4b,#63,#a2
	db #60,#02,#8a,#60,#01,#63,#02,#a2
	db #60,#02,#8a,#60,#01,#63,#4b,#8a
	db #60,#02,#8a,#60,#01,#63,#a2,#60
	db #02,#8a,#60,#01,#63,#59,#71,#b0
	db #60,#02,#98,#60,#01,#71,#02,#b0
	db #60,#02,#98,#60,#01,#71,#59,#98
	db #60,#02,#98,#60,#01,#71,#b0,#60
	db #02,#98,#60,#01,#71,#4f,#67,#a6
	db #60,#02,#8e,#60,#01,#67,#02,#a6
	db #60,#02,#8e,#60,#01,#67,#4f,#8e
	db #60,#02,#8e,#60,#01,#67,#a6,#60
	db #02,#8e,#60,#01,#67,#ac,#e9,#00
	db #00,#0a,#42,#07,#42,#05,#42,#03
	db #10,#42,#05,#42,#07,#42,#09,#42
	db #0b,#aa,#69,#0b,#42,#07,#42,#05
	db #42,#03,#10,#42,#05,#42,#07,#42
	db #09,#42,#0b,#a6,#69,#04,#42,#07
	db #42,#05,#42,#03,#10,#42,#05,#42
	db #07,#42,#09,#42,#0b,#a6,#69,#0a
	db #42,#07,#42,#05,#42,#03,#10,#42
	db #05,#42,#07,#42,#09,#42,#0b,#8e
	db #e1,#00,#00,#01,#67,#a6,#60,#02
	db #8e,#60,#01,#67,#02,#a6,#60,#02
	db #8e,#60,#01,#67,#4f,#8e,#60,#02
	db #8e,#60,#01,#67,#a6,#60,#02,#8e
	db #60,#01,#67,#4f,#67,#a6,#60,#02
	db #8e,#60,#01,#67,#02,#a6,#60,#02
	db #8e,#60,#01,#67,#4f,#8e,#60,#0c
	db #8e,#60,#0d,#a6,#60,#0e,#a6,#60
	db #0c,#8e,#60,#0e,#67,#be,#e7,#00
	db #00,#07,#a6,#60,#08,#7f,#be,#60
	db #07,#a6,#60,#08,#7f,#67,#67,#be
	db #60,#09,#a6,#60,#08,#67,#be,#60
	db #09,#a6,#60,#08,#7f,#67,#67,#be
	db #60,#07,#a6,#60,#08,#7f,#be,#60
	db #07,#a6,#60,#08,#7f,#67,#67,#be
	db #60,#09,#a6,#60,#08,#67,#be,#60
	db #09,#a6,#60,#08,#7f,#67,#67,#42
	db #80,#00,#00,#0e,#42,#0d,#1e,#42
	db #0f,#cc,#e3,#14,#00,#03,#85,#42
	db #00,#7f,#7f,#a2,#c1,#00,#00,#42
	db #80,#f0,#ff,#a6,#e1,#00,#00,#03
	db #06,#42,#03,#02,#42,#05,#02,#42
	db #07,#02,#a6,#41,#02,#75,#42,#80
	db #04,#00,#42,#00,#42,#80,#02,#00
	db #b0,#c0,#00,#00,#06,#42,#03,#02
	db #42,#05,#02,#42,#07,#02,#ac,#41
	db #71,#6d,#6b,#63,#6b,#04,#42,#03
	db #02,#42,#05,#02,#42,#07,#02,#aa
	db #41,#6d,#6b,#6d,#6b,#67,#63,#67
	db #04,#42,#03,#02,#42,#05,#02,#42
	db #07,#02,#42,#09,#02,#42,#0b,#02
	db #a6,#41,#63,#5d,#63,#42,#80,#00
	db #00,#02,#42,#03,#02,#42,#05,#02
	db #42,#07,#06,#a2,#61,#03,#5d,#63
	db #67,#6b,#63,#04,#42,#03,#02,#42
	db #05,#02,#42,#07,#02,#b0,#41,#6d
	db #6b,#02,#6d,#6b,#67,#61,#04,#42
	db #03,#02,#42,#05,#02,#42,#07,#02
	db #98,#41,#5d,#63,#5d,#67,#63,#5d
	db #67,#08,#42,#03,#02,#42,#05,#02
	db #42,#07,#02,#42,#09,#02,#42,#0b
	db #02,#42,#0d,#00,#ba,#e7,#00,#00
	db #0f,#75,#ac,#60,#10,#c4,#60,#0f
	db #b4,#60,#10,#ac,#60,#0f,#8d,#b4
	db #60,#10,#ac,#60,#0f,#c4,#60,#10
	db #b4,#60,#0f,#6d,#ba,#60,#10,#75
	db #c4,#60,#0f,#75,#7b,#71,#aa,#60
	db #10,#c2,#60,#0f,#b0,#60,#10,#aa
	db #60,#0f,#89,#b0,#60,#10,#aa,#60
	db #0f,#c2,#60,#10,#b0,#60,#0f,#6b
	db #ba,#60,#10,#71,#c2,#60,#0f,#71
	db #7f,#71,#a6,#60,#10,#c8,#60,#0f
	db #b0,#60,#10,#a6,#60,#0f,#91,#b0
	db #60,#10,#a6,#60,#0f,#c8,#60,#10
	db #b0,#60,#0f,#67,#be,#60,#10,#71
	db #c8,#60,#0f,#71,#7f,#75,#ac,#60
	db #10,#c4,#60,#0f,#b4,#60,#10,#ac
	db #60,#0f,#8d,#b4,#60,#10,#ac,#60
	db #0f,#c4,#60,#10,#b4,#60,#0f,#6d
	db #be,#60,#10,#75,#c4,#60,#0f,#6d
	db #8c,#e1,#00,#00,#0d,#65,#a4,#60
	db #11,#8c,#60,#0d,#a4,#60,#0e,#02
	db #a4,#60,#11,#8c,#60,#0d,#65,#4d
	db #8c,#60,#11,#8c,#60,#0d,#a4,#60
	db #0e,#a4,#60,#11,#8c,#60,#0d,#65
	db #4f,#67,#a6,#60,#11,#8e,#60,#0d
	db #a6,#60,#0e,#02,#a6,#60,#11,#8e
	db #60,#0d,#67,#4f,#8e,#60,#11,#8e
	db #60,#0d,#a6,#60,#0e,#a6,#60,#11
	db #8e,#60,#0d,#a6,#60,#0e,#86,#60
	db #0d,#5f,#9e,#60,#11,#86,#60,#0d
	db #9e,#60,#0e,#02,#9e,#60,#11,#86
	db #60,#0d,#4b,#63,#a2,#60,#11,#8a
	db #60,#0d,#a2,#60,#0e,#a2,#60,#11
	db #8a,#60,#0d,#63,#4f,#67,#a6,#60
	db #11,#8e,#60,#0d,#a6,#60,#0e,#02
	db #a6,#60,#11,#8e,#60,#0d,#67,#8e
	db #60,#0e,#8e,#60,#11,#8e,#60,#0d
	db #a6,#60,#0e,#a6,#60,#11,#8e,#60
	db #0e,#67,#c2,#e1,#00,#00,#03,#04
	db #7f,#04,#7d,#7d,#75,#02,#42,#03
	db #42,#05,#42,#07,#aa,#41,#6f,#75
	db #83,#04,#85,#04,#7f,#7f,#02,#42
	db #03,#02,#42,#05,#02,#b4,#41,#7f
	db #83,#85,#04,#83,#04,#7f,#7f,#7b
	db #04,#71,#04,#77,#77,#75,#75,#71
	db #75,#04,#42,#03,#02,#42,#05,#02
	db #42,#07,#02,#cc,#c3,#14,#00,#8d
	db #7f,#42,#05,#b4,#e5,#00,#00,#12
	db #02,#b4,#60,#09,#02,#b4,#60,#12
	db #02,#b4,#60,#09,#b4,#60,#12,#02
	db #b4,#60,#09,#04,#b4,#60,#12,#02
	db #b4,#60,#09,#02,#b4,#60,#13,#1e
	db #b6,#60,#12,#02,#b6,#60,#09,#02
	db #b6,#60,#12,#02,#b6,#60,#09,#ba
	db #60,#12,#02,#ba,#60,#09,#04,#ba
	db #60,#12,#02,#ba,#60,#09,#02,#b4
	db #60,#13,#00,#8c,#e1,#00,#00,#0d
	db #65,#a4,#60,#11,#8c,#60,#0d,#a4
	db #60,#0e,#02,#a4,#60,#11,#8c,#60
	db #0d,#65,#4d,#8c,#60,#11,#8c,#60
	db #0d,#a4,#60,#0e,#a4,#60,#11,#8c
	db #60,#0d,#65,#4f,#67,#a6,#60,#11
	db #8e,#60,#0d,#a6,#60,#0e,#02,#a6
	db #60,#11,#8e,#60,#0d,#67,#4f,#8e
	db #60,#11,#8e,#60,#0d,#a6,#60,#0e
	db #a6,#60,#11,#8e,#60,#0d,#a6,#60
	db #0e,#86,#60,#0d,#5f,#9e,#60,#11
	db #86,#60,#0d,#9e,#60,#0e,#02,#9e
	db #60,#11,#86,#60,#0d,#4b,#63,#a2
	db #60,#11,#8a,#60,#0d,#a2,#60,#0e
	db #a2,#60,#11,#8a,#60,#0d,#63,#5d
	db #75,#9c,#60,#11,#9c,#60,#0d,#b4
	db #60,#0e,#02,#9c,#60,#11,#9c,#60
	db #0d,#75,#9c,#60,#0e,#84,#60,#11
	db #9c,#60,#0d,#b4,#60,#0e,#9c,#60
	db #11,#9c,#60,#0e,#75,#c2,#e1,#00
	db #00,#03,#04,#7f,#04,#7d,#7d,#85
	db #04,#89,#04,#83,#83,#85,#04,#83
	db #04,#77,#77,#75,#42,#03,#02,#42
	db #05,#02,#b4,#41,#7f,#83,#85,#04
	db #c2,#c0,#fd,#ff,#c4,#c0,#00,#00
	db #02,#83,#83,#83,#04,#71,#04,#77
	db #77,#75,#71,#7d,#75,#83,#7d,#89
	db #83,#8d,#06,#cc,#c3,#0e,#00,#8d
	db #8d,#8d,#b4,#e5,#00,#00,#12,#02
	db #b4,#60,#09,#02,#b4,#60,#12,#02
	db #b4,#60,#09,#b4,#60,#12,#02,#b4
	db #60,#09,#04,#b4,#60,#12,#02,#b4
	db #60,#09,#02,#b4,#60,#13,#1e,#b6
	db #60,#12,#02,#b6,#60,#09,#02,#b6
	db #60,#12,#02,#b6,#60,#09,#ba,#60
	db #12,#02,#ba,#60,#09,#04,#ba,#60
	db #12,#02,#ba,#60,#09,#02,#b4,#60
	db #14,#0c,#b4,#60,#12,#00,#8e,#e1
	db #00,#00,#0d,#67,#a6,#60,#11,#8e
	db #60,#0d,#a6,#60,#0e,#02,#a6,#60
	db #11,#8e,#60,#0d,#67,#4f,#8e,#60
	db #11,#8e,#60,#0d,#a6,#60,#0e,#a6
	db #60,#11,#8e,#60,#0d,#67,#4f,#67
	db #a6,#60,#11,#8e,#60,#0d,#a6,#60
	db #0e,#02,#a6,#60,#11,#8e,#60,#0d
	db #67,#4f,#8e,#60,#11,#8e,#60,#0d
	db #a6,#60,#0e,#a6,#60,#11,#8e,#60
	db #0d,#a6,#60,#0e,#8e,#60,#0d,#67
	db #a6,#60,#11,#8e,#60,#0d,#a6,#60
	db #0e,#02,#a6,#60,#11,#8e,#60,#0d
	db #67,#4f,#8e,#60,#11,#8e,#60,#0d
	db #a6,#60,#0e,#a6,#60,#11,#8e,#60
	db #0d,#67,#4f,#67,#a6,#60,#11,#8e
	db #60,#0d,#a6,#60,#0e,#02,#a6,#60
	db #11,#8e,#60,#0d,#67,#8e,#60,#0e
	db #8e,#60,#11,#8e,#60,#0d,#a6,#60
	db #0e,#a6,#60,#11,#8e,#60,#0e,#67
	db #a6,#e7,#00,#00,#03,#5d,#63,#67
	db #5d,#63,#67,#5d,#67,#5d,#63,#67
	db #5d,#63,#67,#5d,#67,#5d,#63,#67
	db #5d,#63,#67,#5d,#67,#5d,#63,#67
	db #5d,#63,#67,#5d,#67,#5d,#63,#67
	db #5d,#63,#67,#5d,#67,#5d,#63,#67
	db #5d,#63,#67,#5d,#67,#5d,#63,#67
	db #5d,#63,#67,#5d,#67,#5d,#63,#67
	db #5d,#63,#67,#5d,#a6,#e5,#00,#00
	db #07,#42,#0b,#42,#05,#02,#42,#0b
	db #42,#05,#42,#0b,#42,#05,#a6,#6b
	db #15,#42,#05,#02,#42,#0b,#42,#05
	db #42,#0b,#42,#05,#02,#a6,#60,#16
	db #42,#0b,#42,#05,#02,#42,#0b,#42
	db #05,#42,#0b,#42,#05,#42,#0b,#42
	db #05,#02,#42,#0b,#42,#05,#42,#0b
	db #42,#05,#02,#a6,#60,#07,#42,#0b
	db #42,#05,#02,#42,#0b,#42,#05,#42
	db #0b,#42,#05,#a6,#6b,#09,#42,#05
	db #02,#42,#0b,#42,#05,#42,#0b,#42
	db #05,#02,#a6,#60,#07,#42,#0b,#42
	db #05,#02,#42,#0b,#42,#05,#42,#0b
	db #42,#05,#42,#0b,#42,#05,#02,#42
	db #0b,#42,#05,#42,#0b,#42,#05,#00
	db #b0,#e7,#00,#00,#03,#67,#6d,#71
	db #67,#6d,#71,#67,#71,#67,#6d,#71
	db #67,#6d,#71,#67,#71,#67,#6d,#71
	db #67,#6d,#71,#67,#71,#67,#6d,#71
	db #67,#6d,#71,#67,#71,#67,#6d,#71
	db #67,#6d,#71,#67,#71,#67,#6d,#71
	db #67,#6d,#71,#67,#71,#67,#6d,#71
	db #67,#6d,#71,#67,#71,#67,#6d,#71
	db #67,#6d,#71,#67,#42,#60,#00,#42
	db #80,#00,#00,#00,#8e,#e1,#00,#00
	db #0d,#67,#a6,#60,#11,#8e,#60,#0d
	db #a6,#60,#0e,#02,#a6,#60,#11,#8e
	db #60,#0d,#67,#4f,#8e,#60,#11,#8e
	db #60,#0d,#a6,#60,#0e,#a6,#60,#11
	db #8e,#60,#0d,#67,#4f,#67,#a6,#60
	db #11,#8e,#60,#0d,#a6,#60,#0e,#02
	db #a6,#60,#11,#8e,#60,#0d,#67,#4f
	db #8e,#60,#11,#8e,#60,#0d,#a6,#60
	db #0e,#a6,#60,#11,#8e,#60,#0d,#a6
	db #60,#0e,#8a,#60,#0d,#63,#a2,#60
	db #11,#8a,#60,#0d,#a2,#60,#0e,#02
	db #a2,#60,#11,#8a,#60,#0d,#63,#4b
	db #8a,#60,#11,#8a,#60,#0d,#a2,#60
	db #0e,#a2,#60,#11,#8a,#60,#0d,#63
	db #47,#5f,#9e,#60,#11,#86,#60,#0d
	db #9e,#60,#0e,#02,#9e,#60,#11,#86
	db #60,#0d,#5f,#86,#60,#0e,#86,#60
	db #11,#86,#60,#0d,#9e,#60,#0e,#9e
	db #60,#11,#86,#60,#0e,#5f,#94,#e1
	db #00,#00,#0d,#6d,#ac,#60,#11,#94
	db #60,#0d,#ac,#60,#0e,#02,#ac,#60
	db #11,#94,#60,#0d,#6d,#55,#94,#60
	db #11,#94,#60,#0d,#ac,#60,#0e,#ac
	db #60,#11,#94,#60,#0d,#6d,#4b,#63
	db #a2,#60,#11,#8a,#60,#0d,#a2,#60
	db #0e,#02,#a2,#60,#11,#8a,#60,#0d
	db #63,#4b,#8a,#60,#11,#8a,#60,#0d
	db #a2,#60,#0e,#a2,#60,#11,#8a,#60
	db #0d,#a2,#60,#0e,#98,#60,#0d,#71
	db #b0,#60,#11,#98,#60,#0d,#b0,#60
	db #0e,#02,#b0,#60,#11,#98,#60,#0d
	db #71,#59,#98,#60,#11,#98,#60,#0d
	db #b0,#60,#0e,#b0,#60,#11,#98,#60
	db #0d,#71,#4f,#67,#a6,#60,#11,#8e
	db #60,#0d,#a6,#60,#0e,#02,#a6,#60
	db #11,#8e,#60,#0d,#67,#8e,#60,#0e
	db #8e,#60,#11,#8e,#60,#0d,#a6,#60
	db #0e,#a6,#60,#11,#8e,#60,#0e,#67
	db #c2,#e1,#00,#00,#03,#04,#7f,#04
	db #7d,#7d,#85,#04,#89,#04,#83,#83
	db #85,#04,#83,#04,#77,#77,#75,#42
	db #03,#02,#42,#05,#02,#b4,#41,#7f
	db #83,#85,#04,#c2,#c0,#fd,#ff,#c4
	db #c0,#00,#00,#02,#83,#83,#83,#04
	db #71,#04,#77,#77,#75,#71,#7d,#75
	db #83,#7d,#89,#83,#8d,#06,#42,#03
	db #42,#05,#42,#07,#42,#09,#00,#00
;
.init_music
;
	ld de,l8730
	jp real_init_music
;
.music_info
	db "Anarchy In The UK - Anarchy Menu 1 (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"

