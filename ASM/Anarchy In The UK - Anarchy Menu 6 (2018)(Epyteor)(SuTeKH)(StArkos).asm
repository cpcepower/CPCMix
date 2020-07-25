; Music of Anarchy In The UK - Anarchy Menu 6 (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ANITAM06.BIN"
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
	db #02,#06,#9d,#00,#52,#87,#5b,#87
	db #65,#87,#6f,#87,#79,#87,#83,#87
	db #96,#87,#9f,#87,#b2,#87,#b8,#87
	db #cf,#87,#00,#00,#00,#00,#00,#00
	db #0d,#54,#87,#01,#00,#30,#70,#03
	db #70,#07,#0d,#5d,#87,#01,#00,#30
	db #70,#03,#70,#06,#0d,#67,#87,#01
	db #00,#30,#70,#03,#70,#08,#0d,#71
	db #87,#01,#00,#30,#70,#04,#70,#07
	db #0d,#7b,#87,#01,#00,#3e,#65,#c3
	db #01,#3a,#60,#fa,#01,#36,#60,#a4
	db #02,#05,#4e,#0d,#91,#87,#01,#00
	db #2e,#05,#05,#4e,#0d,#9a,#87,#01
	db #00,#3e,#67,#d5,#00,#3a,#65,#52
	db #01,#36,#63,#aa,#01,#05,#4e,#0d
	db #ad,#87,#01,#00,#3c,#0d,#b4,#87
	db #01,#00,#bc,#ff,#ff,#bc,#ff,#ff
	db #bc,#ff,#ff,#bc,#01,#00,#bc,#01
	db #00,#bc,#01,#00,#0d,#ba,#87,#01
	db #00,#38,#78,#0c,#78,#0c,#0d,#d1
	db #87,#40,#00,#00,#00,#1a,#88,#00
	db #1b,#88,#91,#88,#31,#89,#00,#1b
	db #88,#91,#88,#9d,#89,#00,#09,#8a
	db #66,#8a,#06,#8b,#00,#09,#8a,#66
	db #8a,#c5,#8c,#00,#1b,#88,#91,#88
	db #64,#8b,#00,#1b,#88,#91,#88,#64
	db #8b,#00,#f7,#8b,#66,#8a,#73,#8c
	db #00,#f7,#8b,#66,#8a,#73,#8c,#01
	db #df,#87,#00,#be,#e7,#00,#00,#01
	db #42,#0b,#42,#05,#02,#42,#0b,#42
	db #03,#02,#42,#0b,#42,#01,#02,#42
	db #0b,#42,#03,#02,#42,#0b,#42,#05
	db #42,#0b,#bc,#67,#02,#42,#0b,#42
	db #05,#02,#42,#0b,#42,#03,#02,#42
	db #0b,#42,#01,#02,#42,#0b,#42,#03
	db #02,#42,#0b,#42,#05,#42,#0b,#be
	db #67,#03,#42,#0b,#42,#05,#02,#42
	db #0b,#42,#03,#02,#42,#0b,#42,#01
	db #02,#42,#0b,#42,#03,#02,#42,#0b
	db #42,#05,#42,#0b,#ba,#67,#04,#42
	db #0b,#42,#05,#02,#42,#0b,#42,#03
	db #02,#42,#0b,#42,#01,#02,#42,#0b
	db #42,#03,#02,#42,#0b,#42,#05,#42
	db #0b,#8e,#e1,#00,#00,#05,#8e,#60
	db #06,#8e,#60,#05,#8e,#60,#06,#a6
	db #60,#07,#a6,#60,#05,#8e,#60,#06
	db #8e,#60,#05,#8e,#60,#06,#67,#67
	db #8e,#60,#05,#a6,#60,#07,#8e,#60
	db #06,#63,#67,#9c,#60,#05,#9c,#60
	db #06,#5d,#9c,#60,#05,#b4,#60,#07
	db #b4,#60,#05,#9c,#60,#06,#9c,#60
	db #05,#9c,#60,#06,#75,#75,#9c,#60
	db #05,#b4,#60,#07,#b4,#60,#06,#4f
	db #55,#98,#60,#05,#98,#60,#06,#98
	db #60,#05,#98,#60,#06,#b0,#60,#07
	db #b0,#60,#05,#98,#60,#06,#98,#60
	db #05,#98,#60,#06,#71,#71,#98,#60
	db #05,#b0,#60,#07,#98,#60,#06,#6f
	db #71,#8a,#60,#05,#8a,#60,#06,#4b
	db #8a,#60,#05,#a2,#60,#07,#a2,#60
	db #05,#8a,#60,#06,#8a,#60,#05,#8a
	db #60,#06,#63,#63,#8a,#60,#05,#8e
	db #60,#07,#92,#60,#06,#94,#60,#07
	db #59,#9c,#e3,#00,#00,#08,#9c,#60
	db #09,#08,#a2,#60,#08,#02,#a2,#60
	db #09,#06,#a6,#60,#08,#a6,#45,#42
	db #07,#42,#09,#a8,#c3,#f9,#ff,#aa
	db #c0,#00,#00,#aa,#60,#09,#06,#a4
	db #60,#08,#02,#65,#02,#42,#05,#02
	db #42,#07,#02,#42,#09,#02,#aa,#c3
	db #f9,#ff,#ac,#c0,#00,#00,#ac,#60
	db #09,#06,#aa,#60,#08,#02,#aa,#60
	db #09,#06,#a6,#60,#08,#a6,#65,#09
	db #42,#07,#42,#09,#a8,#e3,#f9,#ff
	db #08,#aa,#c0,#00,#00,#08,#71,#02
	db #b0,#60,#09,#02,#42,#05,#02,#42
	db #07,#02,#42,#09,#00,#9c,#e3,#00
	db #00,#08,#9c,#60,#09,#08,#a2,#60
	db #08,#02,#a2,#60,#09,#06,#a6,#60
	db #08,#a6,#45,#42,#07,#42,#09,#a8
	db #c3,#f9,#ff,#aa,#c0,#00,#00,#aa
	db #60,#09,#06,#a4,#60,#08,#02,#65
	db #02,#42,#05,#02,#42,#07,#02,#42
	db #09,#02,#ae,#c3,#fa,#ff,#b0,#c0
	db #00,#00,#b0,#60,#09,#06,#ac,#60
	db #08,#02,#ac,#60,#09,#06,#aa,#60
	db #08,#aa,#65,#09,#42,#07,#42,#09
	db #ae,#e3,#fa,#ff,#08,#b0,#c0,#00
	db #00,#b0,#60,#09,#0a,#42,#05,#02
	db #42,#07,#02,#42,#09,#02,#42,#0b
	db #00,#c2,#e5,#00,#00,#09,#0a,#42
	db #07,#42,#09,#42,#0b,#42,#0d,#c6
	db #65,#08,#c6,#60,#09,#02,#42,#07
	db #42,#09,#42,#0b,#be,#65,#08,#be
	db #60,#09,#08,#42,#07,#02,#42,#09
	db #02,#42,#0b,#02,#b0,#65,#08,#b0
	db #60,#09,#04,#42,#07,#42,#09,#42
	db #0b,#c2,#65,#08,#c2,#60,#09,#02
	db #42,#07,#02,#42,#09,#02,#42,#0b
	db #02,#c6,#65,#08,#c6,#60,#09,#42
	db #07,#06,#42,#09,#06,#42,#0b,#06
	db #42,#0d,#06,#42,#0f,#00,#92,#e1
	db #00,#00,#05,#92,#60,#06,#92,#60
	db #05,#92,#60,#06,#aa,#60,#07,#aa
	db #60,#05,#92,#60,#06,#92,#60,#05
	db #92,#60,#06,#6b,#6b,#92,#60,#05
	db #aa,#60,#07,#92,#60,#06,#67,#6b
	db #a0,#60,#05,#a0,#60,#06,#61,#a0
	db #60,#05,#b8,#60,#07,#b8,#60,#05
	db #a0,#60,#06,#a0,#60,#05,#a0,#60
	db #06,#79,#79,#a0,#60,#05,#b8,#60
	db #07,#b8,#60,#06,#53,#59,#9c,#60
	db #05,#9c,#60,#06,#9c,#60,#05,#9c
	db #60,#06,#b4,#60,#07,#b4,#60,#05
	db #9c,#60,#06,#9c,#60,#05,#9c,#60
	db #06,#75,#75,#9c,#60,#05,#b4,#60
	db #07,#9c,#60,#06,#73,#75,#8e,#60
	db #05,#8e,#60,#06,#4f,#8e,#60,#05
	db #a6,#60,#07,#a6,#60,#05,#8e,#60
	db #06,#8e,#60,#05,#8e,#60,#06,#67
	db #67,#8e,#60,#05,#92,#60,#07,#96
	db #60,#06,#98,#60,#07,#5d,#42,#80
	db #00,#00,#42,#0d,#04,#42,#0f,#02
	db #c8,#65,#09,#06,#42,#07,#42,#09
	db #42,#0b,#c2,#65,#08,#c2,#60,#09
	db #02,#42,#07,#02,#42,#09,#02,#42
	db #0b,#02,#b4,#65,#08,#b4,#60,#09
	db #08,#42,#07,#42,#09,#42,#0b,#42
	db #0d,#b8,#65,#08,#b8,#60,#09,#02
	db #42,#07,#42,#09,#42,#0b,#c8,#65
	db #08,#c8,#60,#09,#08,#42,#07,#42
	db #09,#cc,#65,#08,#cc,#60,#09,#04
	db #42,#07,#06,#42,#09,#06,#42,#0b
	db #06,#42,#0d,#00,#ac,#e3,#00,#00
	db #0a,#a6,#49,#9c,#43,#8e,#49,#b4
	db #43,#a6,#49,#9c,#43,#8e,#49,#ba
	db #63,#08,#a6,#69,#0a,#9c,#43,#8e
	db #49,#be,#63,#08,#a6,#69,#0a,#9c
	db #43,#8e,#49,#aa,#43,#9c,#49,#92
	db #43,#8c,#49,#b0,#43,#9c,#49,#92
	db #43,#8c,#49,#b4,#63,#08,#9c,#69
	db #0a,#92,#43,#8c,#49,#bc,#63,#08
	db #9c,#69,#0a,#92,#43,#8c,#49,#ac
	db #43,#9c,#49,#94,#43,#8e,#49,#b6
	db #43,#9e,#49,#94,#43,#8e,#49,#be
	db #63,#08,#9e,#69,#0a,#94,#43,#8e
	db #49,#c4,#63,#08,#9e,#69,#0a,#94
	db #43,#8e,#49,#b0,#43,#98,#49,#92
	db #43,#8a,#49,#b4,#43,#98,#49,#92
	db #43,#8a,#49,#ba,#63,#08,#98,#69
	db #0a,#92,#43,#8a,#49,#c2,#63,#08
	db #98,#69,#0a,#92,#43,#8a,#49,#aa
	db #e3,#00,#00,#08,#aa,#6b,#09,#02
	db #b8,#63,#08,#b8,#6b,#09,#02,#ae
	db #63,#08,#ae,#6b,#09,#02,#b0,#63
	db #08,#b0,#6b,#09,#02,#be,#63,#08
	db #be,#6b,#09,#02,#b4,#63,#08,#b4
	db #6b,#09,#0a,#42,#0d,#02,#42,#0f
	db #cc,#e7,#50,#00,#08,#42,#00,#8d
	db #85,#42,#00,#7f,#7f,#aa,#c3,#00
	db #00,#aa,#6b,#09,#02,#a6,#63,#08
	db #a6,#6b,#09,#02,#a2,#63,#08,#a2
	db #6b,#09,#02,#9c,#63,#08,#9c,#6b
	db #09,#02,#aa,#63,#08,#aa,#6b,#09
	db #02,#ae,#63,#08,#ae,#6b,#09,#08
	db #42,#0d,#02,#42,#0f,#c4,#e7,#50
	db #00,#08,#85,#42,#00,#83,#42,#00
	db #83,#75,#75,#92,#e3,#00,#00,#08
	db #92,#6b,#09,#08,#a0,#63,#08,#a0
	db #6b,#09,#08,#98,#63,#08,#98,#6b
	db #09,#04,#8e,#63,#08,#8e,#6b,#09
	db #0c,#42,#0d,#02,#42,#0f,#02,#42
	db #11,#02,#42,#13,#02,#92,#63,#08
	db #92,#6b,#09,#08,#96,#63,#08,#96
	db #6b,#09,#08,#98,#63,#08,#98,#6b
	db #09,#04,#9c,#63,#08,#9c,#6b,#09
	db #0c,#42,#0d,#02,#42,#0f,#02,#42
	db #11,#02,#42,#13,#00,#42,#80,#00
	db #00,#42,#0f,#04,#42,#11,#02,#c8
	db #65,#09,#06,#42,#07,#42,#09,#42
	db #0b,#c2,#65,#08,#c2,#60,#09,#02
	db #42,#07,#02,#42,#09,#02,#42,#0b
	db #02,#b4,#65,#08,#b4,#60,#09,#08
	db #42,#07,#42,#09,#42,#0b,#42,#0d
	db #b8,#65,#08,#b8,#60,#09,#02,#42
	db #07,#42,#09,#42,#0b,#c8,#65,#08
	db #c8,#60,#09,#08,#42,#07,#42,#09
	db #cc,#65,#08,#cc,#60,#09,#04,#42
	db #07,#06,#42,#09,#06,#42,#0b,#06
	db #42,#0d,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music
;
	ld de,l8730
	jp real_init_music
;
.music_info
	db "Anarchy In The UK - Anarchy Menu 6 (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
