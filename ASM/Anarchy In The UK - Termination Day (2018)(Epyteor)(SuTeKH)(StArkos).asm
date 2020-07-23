; Music of Anarchy In The UK - Termination Day (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ANAITUAM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	db #06,#1a,#0e,#e7,#00,#ff,#ff,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	jp l8684
	jp l801a
	jp l86d9
.l8019
	nop
;
.play_music
.l801a
;
	xor a
	ld (l8019),a
.l801f equ $ + 1
	ld a,#06
	dec a
	jp nz,l81eb
.l8025 equ $ + 1
	ld a,#28
	dec a
	jr nz,l8091
.l802a equ $ + 1
	ld hl,l8731
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
	ld hl,l873b
	ld (l809a),hl
	ld a,#01
	ld (l8095),a
	ld (l80bb),a
	ld (l8120),a
	ld (l8185),a
.l8090 equ $ + 1
	ld a,#40
.l8091
	ld (l8025),a
.l8095 equ $ + 1
	ld a,#e8
	dec a
	jr nz,l80b7
.l809a equ $ + 1
	ld hl,l873c
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
	ld hl,l8759
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
	ld hl,l871b
	ld a,(l827d)
	ld (l8275),a
	jr l8117
.l80fa
	ld l,b
	add hl,hl
.l80fd equ $ + 1
	ld bc,l870c
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
	ld hl,l879d
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
	ld hl,l871b
	ld a,(l8249)
	ld (l8241),a
	jr l817c
.l815f
	ld l,b
	add hl,hl
.l8162 equ $ + 1
	ld bc,l870c
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
	ld hl,l87e1
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
	ld hl,l871b
	ld a,(l8218)
	ld (l8210),a
	jr l81e1
.l81c4
	ld l,b
	add hl,hl
.l81c7 equ $ + 1
	ld bc,l870c
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
	ld a,#06
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
	ld de,#0941
.l820a equ $ + 1
	ld hl,l871c
	call l837d
.l8210 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8219
	ld (l820a),hl
.l8218 equ $ + 1
	ld a,#01
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
	ld de,#064a
.l823b equ $ + 1
	ld hl,l871c
	call l837d
.l8241 equ $ + 1
	ld a,#01
	dec a
	jr nz,l824a
	ld (l823b),hl
.l8249 equ $ + 1
	ld a,#01
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
	ld de,#0354
.l826f equ $ + 1
	ld hl,l871c
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
	ld e,#00
.l8370
	dec (hl)
	nop
.l8372
	ld e,c
	nop
.l8374
	nop
.l8375
	nop
	nop
	nop
	nop
.l837a equ $ + 1
	ld b,#00
	nop
.l837c
	rst #38
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
.l870c equ $ + 4
	db #09,#0e,#07,#26,#00,#00,#00,#00
	db #01,#0d,#09,#07,#01,#00,#0d,#05
.l871c equ $ + 4
.l871b equ $ + 3
	db #0d,#0f,#12,#09,#05,#13,#00,#00
	db #00,#00,#28,#1b,#1c,#26,#20,#1f
	db #29,#00,#00,#00,#00,#00,#ff,#00
.l8730
.l8731 equ $ + 1
	db #41,#54,#31,#30,#01,#40,#42,#0f
.l873c equ $ + 4
.l873b equ $ + 3
	db #02,#06,#fa,#00,#5e,#87,#67,#87
	db #6f,#87,#7d,#87,#94,#87,#ab,#87
	db #b1,#87,#c1,#87,#d3,#87,#dd,#87
	db #e6,#87,#f0,#87,#fa,#87,#0a,#88
.l8759 equ $ + 1
	db #14,#88,#21,#88,#2c,#88,#00,#00
	db #00,#00,#00,#00,#0d,#60,#87,#01
	db #00,#28,#34,#3c,#0d,#6b,#87,#01
	db #00,#a8,#ff,#ff,#b4,#ff,#ff,#bc
	db #ff,#ff,#0d,#77,#87,#01,#00,#bc
	db #01,#00,#bc,#02,#00,#bc,#01,#00
	db #bc,#ff,#ff,#bc,#fe,#ff,#bc,#ff
	db #ff,#0d,#7f,#87,#01,#00,#bc,#ff
.l879d equ $ + 5
	db #ff,#bc,#fe,#ff,#bc,#ff,#ff,#bc
	db #01,#00,#bc,#02,#00,#bc,#01,#00
	db #0d,#96,#87,#01,#00,#3c,#0d,#ad
	db #87,#01,#00,#00,#05,#5c,#05,#5c
	db #05,#5c,#05,#5c,#05,#5c,#0d,#60
	db #87,#01,#00,#00,#05,#5c,#25,#5c
	db #01,#05,#5c,#05,#5c,#25,#5c,#01
	db #0d,#60,#87,#01,#00,#3c,#7c,#03
	db #7c,#07,#0d,#d5,#87,#01,#00,#3c
.l87e1 equ $ + 1
	db #7c,#04,#3c,#0d,#df,#87,#01,#00
	db #3c,#7c,#04,#7c,#07,#0d,#e8,#87
	db #01,#00,#3c,#7c,#07,#7c,#07,#0d
	db #f2,#87,#01,#00,#bc,#ff,#ff,#fc
	db #ff,#ff,#03,#fc,#ff,#ff,#07,#0d
	db #fc,#87,#01,#00,#3c,#7c,#03,#7c
	db #0c,#0d,#0c,#88,#01,#00,#28,#34
	db #7c,#01,#3c,#3c,#7c,#01,#0d,#60
	db #87,#01,#00,#3c,#34,#2c,#24,#1c
	db #14,#0d,#60,#87,#01,#00,#3c,#7c
	db #04,#7c,#0c,#0d,#2e,#88,#40,#00
	db #00,#00,#11,#89,#00,#12,#89,#1a
	db #89,#35,#89,#00,#50,#89,#5a,#89
	db #6c,#89,#00,#50,#89,#5a,#89,#76
	db #89,#00,#50,#89,#98,#89,#aa,#89
	db #00,#b8,#89,#ca,#89,#d4,#89,#00
	db #50,#89,#98,#89,#aa,#89,#00,#b8
	db #89,#ca,#89,#d4,#89,#00,#de,#89
	db #f4,#89,#68,#8a,#00,#7a,#8a,#90
	db #8a,#04,#8b,#00,#de,#89,#f4,#89
	db #68,#8a,#00,#7a,#8a,#90,#8a,#04
	db #8b,#00,#16,#8b,#21,#8b,#95,#8b
	db #00,#16,#8b,#21,#8b,#95,#8b,#00
	db #e5,#8b,#f4,#89,#eb,#8b,#00,#f1
	db #8b,#ff,#8b,#09,#8c,#00,#f1,#8b
	db #ff,#8b,#5c,#8c,#00,#50,#89,#98
	db #89,#aa,#89,#00,#b8,#89,#ca,#89
	db #d4,#89,#00,#de,#89,#f4,#89,#68
	db #8a,#00,#7a,#8a,#90,#8a,#04,#8b
	db #00,#b5,#8c,#21,#8b,#11,#8d,#00
	db #23,#8d,#21,#8b,#11,#8d,#00,#7e
	db #8d,#21,#8b,#11,#8d,#00,#d3,#8d
	db #21,#8b,#23,#8d,#00,#33,#8e,#f4
	db #89,#eb,#8e,#00,#33,#8e,#f4,#89
	db #f1,#8e,#00,#de,#89,#f4,#89,#68
	db #8a,#00,#7a,#8a,#90,#8a,#04,#8b
	db #00,#de,#89,#f4,#89,#68,#8a,#00
	db #7a,#8a,#90,#8a,#04,#8b,#01,#3c
	db #88,#00,#42,#60,#00,#42,#80,#00
	db #00,#00,#8e,#e5,#00,#00,#01,#0e
	db #42,#07,#0e,#42,#09,#0e,#42,#0b
	db #0e,#42,#0d,#0e,#42,#0f,#0e,#42
	db #11,#0e,#42,#13,#00,#8e,#e5,#00
	db #00,#02,#0e,#42,#07,#0e,#42,#09
	db #0e,#42,#0b,#0e,#42,#0d,#0e,#42
	db #0f,#0e,#42,#11,#0e,#42,#13,#00
	db #a6,#e5,#00,#00,#01,#02,#a6,#60
	db #03,#00,#b0,#e5,#00,#00,#01,#02
	db #b0,#60,#04,#3a,#ae,#60,#01,#06
	db #ae,#60,#04,#00,#b4,#e5,#00,#00
	db #01,#02,#b4,#60,#04,#00,#ba,#e5
	db #00,#00,#01,#02,#ba,#60,#04,#2a
	db #ba,#e0,#fe,#ff,#05,#42,#00,#42
	db #00,#42,#00,#42,#80,#ff,#ff,#be
	db #c0,#00,#00,#04,#be,#60,#04,#00
	db #ac,#e5,#00,#00,#01,#02,#ac,#60
	db #04,#3a,#ac,#60,#05,#06,#ac,#60
	db #04,#00,#be,#e5,#00,#00,#01,#02
	db #be,#60,#04,#3a,#7b,#1e,#79,#00
	db #ac,#e5,#00,#00,#01,#02,#ac,#60
	db #03,#3a,#aa,#60,#01,#06,#aa,#60
	db #03,#00,#b0,#e5,#00,#00,#01,#02
	db #b0,#60,#04,#00,#ba,#e5,#00,#00
	db #01,#02,#ba,#60,#04,#00,#b4,#e5
	db #00,#00,#01,#02,#b4,#60,#04,#1a
	db #7b,#1e,#b8,#60,#01,#06,#b8,#60
	db #04,#16,#77,#00,#a6,#e5,#00,#00
	db #06,#02,#a6,#60,#07,#a6,#60,#06
	db #67,#02,#67,#67,#a6,#60,#07,#a6
	db #60,#06,#67,#02,#67,#02,#a6,#60
	db #07,#a6,#60,#06,#67,#02,#a6,#60
	db #07,#a6,#60,#06,#67,#02,#67,#67
	db #a6,#60,#07,#a6,#60,#06,#67,#02
	db #67,#02,#a6,#60,#07,#a6,#60,#06
	db #67,#02,#a6,#60,#07,#a6,#60,#06
	db #67,#02,#67,#67,#a6,#60,#07,#a6
	db #60,#06,#67,#02,#67,#02,#a6,#60
	db #07,#a6,#60,#06,#67,#02,#a6,#60
	db #07,#a6,#60,#06,#67,#02,#67,#67
	db #a6,#60,#07,#a6,#60,#06,#67,#02
	db #67,#02,#a6,#60,#07,#a6,#60,#06
	db #ac,#e5,#00,#00,#01,#02,#ac,#60
	db #03,#3a,#ac,#60,#05,#06,#ac,#60
	db #03,#00,#b4,#e5,#00,#00,#01,#02
	db #b4,#60,#04,#1a,#7b,#1e,#ac,#60
	db #01,#06,#ac,#60,#04,#16,#6b,#00
	db #a2,#e5,#00,#00,#06,#02,#a2,#60
	db #07,#a2,#60,#06,#63,#02,#63,#63
	db #a2,#60,#07,#a2,#60,#06,#63,#02
	db #63,#02,#a2,#60,#07,#a2,#60,#06
	db #63,#02,#a2,#60,#07,#a2,#60,#06
	db #63,#02,#63,#63,#a2,#60,#07,#a2
	db #60,#06,#63,#02,#63,#02,#a2,#60
	db #07,#a2,#60,#06,#63,#02,#a2,#60
	db #07,#a2,#60,#06,#63,#02,#63,#63
	db #a2,#60,#07,#a2,#60,#06,#63,#02
	db #63,#02,#a2,#60,#07,#a2,#60,#06
	db #63,#02,#a2,#60,#07,#a2,#60,#06
	db #63,#02,#63,#63,#a2,#60,#07,#a2
	db #60,#06,#63,#02,#63,#02,#a2,#60
	db #07,#a2,#60,#06,#ac,#e5,#00,#00
	db #01,#02,#ac,#60,#03,#3a,#b0,#60
	db #01,#06,#b0,#60,#03,#00,#be,#e7
	db #00,#00,#08,#3e,#20,#ba,#60,#09
	db #00,#a6,#e5,#00,#00,#06,#02,#a6
	db #60,#07,#a6,#60,#06,#67,#02,#67
	db #67,#a6,#60,#07,#a6,#60,#06,#67
	db #02,#67,#02,#a6,#60,#07,#a6,#60
	db #06,#67,#02,#a6,#60,#07,#a6,#60
	db #06,#67,#02,#67,#67,#a6,#60,#07
	db #a6,#60,#06,#67,#02,#67,#02,#a6
	db #60,#07,#a6,#60,#06,#67,#02,#a6
	db #60,#07,#a6,#60,#06,#67,#02,#67
	db #67,#a6,#60,#07,#a6,#60,#06,#67
	db #02,#67,#02,#a6,#60,#07,#a6,#60
	db #06,#63,#02,#a2,#60,#07,#a2,#60
	db #06,#63,#02,#63,#63,#a2,#60,#07
	db #a2,#60,#06,#63,#02,#63,#02,#a2
	db #60,#07,#a2,#60,#06,#a2,#e5,#00
	db #00,#01,#42,#80,#fc,#ff,#42,#80
	db #fd,#ff,#42,#00,#42,#00,#42,#00
	db #a6,#e0,#00,#00,#05,#02,#a6,#60
	db #04,#2e,#b0,#60,#01,#42,#80,#fd
	db #ff,#42,#80,#fe,#ff,#42,#00,#42
	db #00,#42,#00,#b4,#e0,#00,#00,#05
	db #02,#b4,#60,#04,#0e,#ba,#60,#01
	db #02,#ba,#60,#04,#02,#b0,#60,#01
	db #02,#6d,#02,#6b,#02,#6d,#02,#71
	db #02,#b0,#60,#04,#00,#be,#e7,#00
	db #00,#08,#00,#a6,#e7,#00,#00,#08
	db #00,#ba,#e7,#00,#00,#0a,#1e,#ba
	db #60,#0b,#1e,#be,#60,#0c,#00,#b4
	db #e7,#00,#00,#08,#3e,#b4,#60,#0d
	db #00,#b2,#e5,#00,#00,#01,#75,#ba
	db #60,#03,#b2,#60,#01,#75,#ba,#60
	db #04,#04,#42,#60,#00,#02,#be,#60
	db #01,#02,#83,#02,#7b,#02,#75,#02
	db #b4,#60,#04,#0a,#b0,#60,#01,#02
	db #6d,#71,#75,#b4,#60,#0e,#b0,#60
	db #01,#6d,#67,#06,#a6,#60,#04,#16
	db #42,#60,#00,#02,#ac,#60,#04,#02
	db #a6,#60,#0f,#ac,#60,#01,#02,#a6
	db #60,#0f,#a2,#60,#01,#5d,#59,#55
	db #4f,#4b,#4f,#59,#9c,#e5,#00,#00
	db #01,#9c,#60,#04,#a2,#60,#0e,#9c
	db #60,#01,#9c,#60,#04,#a2,#60,#0e
	db #9c,#60,#01,#59,#53,#59,#5d,#02
	db #63,#02,#67,#02,#6b,#02,#6d,#02
	db #6b,#02,#63,#5d,#08,#63,#67,#6d
	db #71,#42,#80,#fe,#ff,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#80,#ff
	db #ff,#b4,#e0,#00,#00,#05,#02,#b4
	db #60,#04,#0e,#ba,#60,#01,#75,#71
	db #6d,#71,#6d,#67,#63,#67,#63,#5d
	db #59,#55,#59,#55,#4f,#c4,#e5,#00
	db #00,#01,#c4,#60,#04,#02,#be,#60
	db #01,#be,#60,#04,#06,#c2,#60,#01
	db #c2,#60,#04,#02,#b4,#60,#01,#b4
	db #60,#04,#02,#ba,#60,#01,#7f,#85
	db #c4,#60,#04,#02,#c8,#60,#01,#c8
	db #60,#04,#02,#c4,#60,#01,#c4,#60
	db #04,#c2,#60,#01,#c2,#60,#04,#02
	db #be,#60,#01,#be,#60,#04,#02,#ba
	db #60,#01,#ba,#60,#04,#be,#60,#01
	db #06,#be,#60,#04,#0e,#b0,#60,#01
	db #75,#7b,#7f,#83,#06,#c2,#60,#04
	db #00,#a6,#e7,#00,#00,#08,#1e,#a6
	db #60,#0d,#1e,#a6,#60,#08,#1e,#a2
	db #60,#10,#00,#c4,#e5,#00,#00,#01
	db #c4,#60,#04,#02,#be,#60,#01,#be
	db #60,#04,#06,#c2,#60,#01,#c2,#60
	db #04,#02,#b4,#60,#01,#b4,#60,#04
	db #02,#ba,#60,#01,#7f,#85,#c4,#60
	db #04,#02,#c8,#60,#01,#c8,#60,#04
	db #02,#c4,#60,#01,#c4,#60,#04,#c2
	db #60,#01,#c2,#60,#04,#02,#be,#60
	db #01,#be,#60,#04,#02,#ba,#60,#01
	db #ba,#60,#04,#be,#60,#01,#06,#be
	db #60,#04,#0e,#c8,#60,#01,#85,#83
	db #7b,#08,#ba,#60,#04,#00,#c4,#e5
	db #00,#00,#01,#c4,#60,#04,#02,#cc
	db #60,#01,#04,#cc,#60,#04,#06,#c8
	db #60,#01,#85,#c8,#60,#05,#c4,#60
	db #01,#7f,#7b,#7f,#02,#be,#60,#04
	db #12,#b0,#60,#01,#75,#7b,#7f,#85
	db #02,#c4,#60,#04,#06,#c2,#60,#01
	db #02,#c2,#60,#04,#06,#ba,#60,#01
	db #02,#71,#02,#6d,#02,#ac,#60,#04
	db #02,#aa,#60,#01,#02,#6d,#02,#ac
	db #60,#04,#02,#b0,#60,#01,#02,#b0
	db #60,#04,#00,#42,#60,#00,#42,#80
	db #00,#00,#c4,#6d,#02,#c4,#60,#03
	db #02,#be,#60,#02,#be,#60,#03,#06
	db #c2,#60,#02,#c2,#60,#03,#02,#b4
	db #60,#02,#b4,#60,#03,#02,#ba,#60
	db #02,#7f,#85,#c4,#60,#03,#02,#c8
	db #60,#02,#c8,#60,#03,#02,#c4,#60
	db #02,#c4,#60,#03,#c2,#60,#02,#c2
	db #60,#03,#02,#be,#60,#02,#be,#60
	db #03,#02,#ba,#60,#02,#ba,#60,#03
	db #be,#60,#02,#06,#be,#60,#03,#0e
	db #c8,#60,#02,#85,#83,#7b,#08,#ba
	db #60,#03,#00,#a2,#e7,#3e,#00,#01
	db #42,#60,#00,#42,#80,#00,#00,#02
	db #b0,#e0,#3e,#00,#01,#42,#60,#00
	db #42,#80,#00,#00,#a2,#e0,#3e,#00
	db #01,#63,#42,#60,#00,#a2,#60,#01
	db #42,#60,#00,#b0,#60,#01,#42,#60
	db #00,#42,#80,#00,#00,#02,#a2,#e0
	db #3e,#00,#01,#63,#42,#60,#00,#a2
	db #60,#01,#71,#42,#60,#00,#42,#80
	db #00,#00,#a2,#e0,#3e,#00,#01,#63
	db #42,#60,#00,#a2,#60,#01,#42,#60
	db #00,#b0,#60,#01,#42,#60,#00,#b0
	db #60,#01,#71,#63,#42,#60,#00,#42
	db #80,#00,#00,#02,#b0,#e0,#3e,#00
	db #01,#42,#60,#00,#42,#80,#00,#00
	db #a2,#e0,#3e,#00,#01,#63,#42,#60
	db #00,#a2,#60,#01,#42,#60,#00,#b0
	db #60,#01,#42,#60,#00,#42,#80,#00
	db #00,#02,#a2,#e0,#3e,#00,#01,#63
	db #42,#60,#00,#a2,#60,#01,#71,#42
	db #60,#00,#42,#80,#00,#00,#a2,#e0
	db #3e,#00,#01,#63,#63,#71,#42,#60
	db #00,#b0,#60,#01,#42,#60,#00,#b0
	db #60,#01,#71,#8e,#e5,#00,#00,#01
	db #00,#42,#87,#00,#00,#0e,#42,#09
	db #0e,#42,#0b,#0e,#42,#0d,#0e,#42
	db #0f,#06,#42,#11,#06,#42,#13,#06
	db #42,#15,#06,#42,#17,#06,#42,#19
	db #06,#42,#1b,#06,#42,#1d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music
;
	ld de,l8730
	jp real_init_music
;
.music_info
	db "Anarchy In The UK - Termination Day (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
