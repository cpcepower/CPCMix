; Music of Anarchy In The UK - StarWorx'91 (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ANAITUS9.BIN"
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
	db #02,#04,#8d,#01,#72,#87,#7b,#87
	db #86,#87,#91,#87,#9c,#87,#a2,#87
	db #af,#87,#c6,#87,#d7,#87,#e0,#87
	db #f1,#87,#fa,#87,#05,#88,#18,#88
	db #23,#88,#36,#88,#41,#88,#54,#88
	db #5f,#88,#6a,#88,#7d,#88,#88,#88
	db #93,#88,#9e,#88,#a9,#88,#b4,#88
	db #be,#88,#00,#00,#00,#00,#00,#00
	db #0d,#74,#87,#01,#00,#30,#70,#03
	db #70,#07,#30,#0d,#7d,#87,#01,#00
	db #30,#70,#04,#70,#07,#30,#0d,#88
	db #87,#01,#00,#30,#70,#05,#70,#07
	db #30,#0d,#93,#87,#01,#00,#3c,#0d
	db #9e,#87,#01,#00,#3c,#3c,#7c,#01
	db #7c,#01,#7c,#02,#0d,#aa,#87,#01
	db #00,#bc,#ff,#ff,#bc,#ff,#ff,#bc
	db #ff,#ff,#bc,#01,#00,#bc,#01,#00
	db #bc,#01,#00,#0d,#b1,#87,#01,#00
	db #3e,#65,#c3,#01,#3a,#60,#fa,#01
	db #36,#60,#a4,#02,#0d,#74,#87,#01
	db #00,#2e,#05,#2a,#03,#0d,#74,#87
	db #01,#00,#3e,#67,#d5,#00,#3a,#65
	db #52,#01,#36,#63,#aa,#01,#0d,#74
	db #87,#01,#00,#2e,#0a,#2a,#08,#0d
	db #74,#87,#01,#00,#30,#70,#02,#70
	db #07,#30,#0d,#fc,#87,#01,#00,#3e
	db #65,#c3,#01,#3a,#60,#fa,#01,#36
	db #60,#a4,#02,#05,#5c,#0d,#13,#88
	db #01,#00,#2e,#05,#2a,#03,#05,#4e
	db #0d,#1e,#88,#01,#00,#3e,#67,#d5
	db #00,#3a,#65,#52,#01,#36,#63,#aa
	db #01,#05,#4e,#0d,#31,#88,#01,#00
	db #2e,#0a,#2a,#08,#05,#5c,#0d,#3c
	db #88,#01,#00,#3e,#65,#c3,#01,#3a
	db #60,#fa,#01,#36,#60,#a4,#02,#05
	db #4e,#0d,#4f,#88,#01,#00,#2e,#05
	db #2a,#03,#05,#5c,#0d,#5a,#88,#01
	db #00,#2e,#0a,#2a,#08,#05,#4e,#0d
	db #65,#88,#01,#00,#3e,#67,#d5,#00
	db #3a,#65,#52,#01,#36,#63,#aa,#01
	db #05,#5c,#0d,#78,#88,#01,#00,#30
	db #70,#0c,#70,#07,#30,#0d,#7f,#88
	db #01,#00,#3c,#3c,#7c,#0c,#7c,#0c
	db #0d,#8a,#88,#01,#00,#3c,#3c,#7c
	db #0f,#7c,#0f,#0d,#95,#88,#01,#00
	db #3c,#3c,#7c,#10,#7c,#10,#0d,#a0
	db #88,#01,#00,#3c,#3c,#7c,#13,#7c
	db #13,#0d,#ab,#88,#01,#00,#3c,#3c
	db #7c,#01,#3c,#0d,#b6,#88,#01,#00
	db #30,#70,#03,#70,#0c,#30,#0d,#c0
	db #88,#40,#00,#00,#00,#68,#8a,#00
	db #69,#8a,#71,#8a,#c3,#8a,#00,#69
	db #8a,#47,#8b,#98,#8b,#00,#1e,#8c
	db #71,#8a,#c3,#8a,#00,#75,#8c,#c6
	db #8c,#98,#8b,#00,#1e,#8c,#17,#8d
	db #c3,#8a,#00,#75,#8c,#8b,#8d,#98
	db #8b,#00,#fd,#8d,#17,#8d,#17,#8e
	db #00,#69,#8a,#17,#8d,#17,#8e,#00
	db #a0,#8e,#26,#8f,#c3,#8a,#00,#a0
	db #8f,#e9,#8f,#98,#8b,#00,#65,#90
	db #26,#8f,#c3,#8a,#00,#c3,#90,#e9
	db #8f,#98,#8b,#00,#03,#91,#26,#8f
	db #c3,#8a,#00,#93,#91,#e9,#8f,#98
	db #8b,#00,#03,#91,#26,#8f,#c3,#8a
	db #00,#c5,#91,#e9,#8f,#98,#8b,#00
	db #a0,#8e,#26,#8f,#c3,#8a,#00,#a0
	db #8f,#e9,#8f,#98,#8b,#00,#65,#90
	db #26,#8f,#c3,#8a,#00,#c3,#90,#e9
	db #8f,#98,#8b,#00,#ff,#91,#82,#92
	db #17,#8e,#00,#ff,#91,#82,#92,#17
	db #8e,#00,#fe,#92,#81,#93,#fd,#93
	db #00,#ff,#91,#82,#92,#17,#8e,#00
	db #86,#94,#82,#92,#17,#8e,#00,#a6
	db #94,#82,#92,#17,#8e,#00,#fe,#92
	db #81,#93,#fd,#93,#00,#ff,#91,#82
	db #92,#17,#8e,#00,#69,#8a,#82,#92
	db #69,#8a,#00,#69,#8a,#82,#92,#69
	db #8a,#00,#69,#8a,#82,#92,#f2,#94
	db #00,#69,#8a,#82,#92,#28,#95,#00
	db #ff,#91,#82,#92,#f2,#94,#00,#5e
	db #95,#e1,#95,#28,#95,#00,#03,#91
	db #26,#8f,#c3,#8a,#00,#93,#91,#e9
	db #8f,#98,#8b,#00,#03,#91,#26,#8f
	db #c3,#8a,#00,#c5,#91,#e9,#8f,#98
	db #8b,#00,#ff,#91,#82,#92,#f2,#94
	db #00,#5e,#95,#e1,#95,#28,#95,#00
	db #ff,#91,#82,#92,#f2,#94,#00,#5e
	db #95,#e1,#95,#28,#95,#00,#5d,#96
	db #17,#8d,#e1,#96,#00,#64,#97,#17
	db #8d,#e8,#97,#00,#5d,#96,#17,#8d
	db #e1,#96,#00,#64,#97,#17,#8d,#e8
	db #97,#00,#69,#8a,#82,#92,#69,#8a
	db #00,#69,#8a,#82,#92,#69,#8a,#00
	db #69,#8a,#82,#92,#f2,#94,#00,#69
	db #8a,#82,#92,#28,#95,#00,#69,#8a
	db #82,#92,#f2,#94,#00,#69,#8a,#82
	db #92,#28,#95,#00,#ff,#91,#82,#92
	db #17,#8e,#00,#ff,#91,#82,#92,#17
	db #8e,#00,#ff,#91,#6b,#98,#17,#8e
	db #00,#ff,#91,#71,#98,#17,#8e,#00
	db #76,#98,#71,#98,#e0,#98,#00,#69
	db #8a,#69,#8a,#69,#8a,#01,#cf,#88
	db #00,#42,#60,#00,#42,#80,#00,#00
	db #00,#a6,#e7,#00,#00,#01,#02,#42
	db #09,#02,#42,#0b,#02,#42,#0d,#06
	db #42,#0b,#02,#42,#09,#02,#42,#07
	db #06,#42,#09,#02,#42,#0b,#02,#42
	db #0d,#06,#42,#0b,#02,#42,#09,#02
	db #42,#07,#02,#a2,#60,#02,#02,#42
	db #09,#02,#42,#0b,#02,#42,#0d,#06
	db #42,#0b,#02,#42,#09,#02,#42,#07
	db #06,#42,#09,#02,#42,#0b,#02,#42
	db #0d,#06,#42,#0b,#02,#42,#09,#02
	db #42,#07,#00,#be,#e1,#00,#00,#01
	db #42,#03,#42,#05,#42,#07,#be,#41
	db #42,#03,#42,#05,#42,#07,#be,#41
	db #42,#03,#be,#41,#42,#03,#42,#05
	db #42,#07,#be,#41,#42,#03,#42,#05
	db #42,#07,#be,#41,#42,#03,#42,#05
	db #42,#07,#be,#41,#42,#03,#be,#41
	db #42,#03,#be,#41,#42,#03,#be,#41
	db #42,#03,#42,#05,#42,#07,#ba,#61
	db #02,#42,#03,#42,#05,#42,#07,#ba
	db #41,#42,#03,#42,#05,#42,#07,#ba
	db #41,#42,#03,#ba,#41,#42,#03,#42
	db #05,#42,#07,#ba,#41,#42,#03,#42
	db #05,#42,#07,#ba,#41,#42,#03,#42
	db #05,#42,#07,#ba,#41,#42,#03,#ba
	db #41,#42,#03,#ba,#41,#42,#03,#ba
	db #41,#42,#03,#42,#05,#42,#07,#a6
	db #e7,#00,#00,#03,#02,#42,#09,#02
	db #42,#0b,#02,#42,#0d,#06,#42,#0b
	db #02,#42,#09,#02,#42,#07,#06,#42
	db #09,#02,#42,#0b,#02,#42,#0d,#06
	db #42,#0b,#02,#42,#09,#02,#42,#07
	db #02,#67,#02,#42,#09,#02,#a6,#6b
	db #01,#02,#42,#0d,#06,#42,#0b,#02
	db #42,#09,#02,#42,#07,#06,#42,#09
	db #02,#42,#0b,#02,#42,#0d,#06,#42
	db #0b,#02,#42,#09,#02,#42,#07,#00
	db #be,#e1,#00,#00,#03,#42,#03,#42
	db #05,#42,#07,#be,#41,#42,#03,#42
	db #05,#42,#07,#be,#41,#42,#03,#be
	db #41,#42,#03,#42,#05,#42,#07,#be
	db #41,#42,#03,#42,#05,#42,#07,#be
	db #41,#42,#03,#42,#05,#42,#07,#be
	db #41,#42,#03,#be,#41,#42,#03,#be
	db #41,#42,#03,#be,#41,#42,#03,#42
	db #05,#42,#07,#be,#61,#01,#42,#03
	db #42,#05,#42,#07,#be,#41,#42,#03
	db #42,#05,#42,#07,#be,#41,#42,#03
	db #ba,#61,#03,#42,#03,#42,#05,#42
	db #07,#be,#61,#01,#42,#03,#42,#05
	db #42,#07,#be,#41,#42,#03,#42,#05
	db #42,#07,#be,#41,#42,#03,#be,#41
	db #42,#03,#be,#41,#42,#03,#be,#41
	db #42,#03,#42,#05,#42,#07,#ba,#e3
	db #00,#00,#04,#ba,#60,#05,#04,#be
	db #60,#06,#16,#42,#05,#02,#42,#07
	db #02,#42,#09,#02,#c2,#63,#04,#02
	db #85,#02,#c4,#60,#06,#02,#c2,#60
	db #04,#02,#85,#02,#85,#c4,#60,#05
	db #06,#c8,#60,#06,#04,#42,#05,#02
	db #42,#07,#02,#42,#09,#02,#42,#0b
	db #02,#cc,#63,#04,#02,#cc,#60,#06
	db #02,#c8,#60,#04,#02,#85,#02,#c4
	db #60,#06,#02,#c2,#60,#04,#42,#0b
	db #be,#43,#02,#7b,#00,#be,#e3,#00
	db #00,#06,#02,#ba,#60,#04,#02,#71
	db #02,#be,#60,#06,#02,#be,#6b,#04
	db #02,#ba,#63,#06,#02,#b4,#60,#04
	db #02,#73,#02,#b0,#60,#06,#06,#ac
	db #60,#04,#42,#0b,#a6,#43,#42,#0b
	db #ac,#63,#06,#02,#a6,#60,#04,#42
	db #0b,#a2,#43,#42,#0b,#a6,#43,#02
	db #a6,#60,#06,#0e,#42,#05,#06,#42
	db #07,#06,#42,#09,#06,#42,#0b,#06
	db #42,#0d,#06,#42,#0f,#00,#a6,#e7
	db #00,#00,#03,#02,#42,#09,#02,#42
	db #0b,#02,#42,#0d,#06,#42,#0b,#02
	db #42,#09,#02,#42,#07,#06,#42,#09
	db #02,#42,#0b,#02,#42,#0d,#06,#42
	db #0b,#02,#42,#09,#02,#42,#07,#02
	db #67,#02,#42,#09,#02,#a6,#6b,#02
	db #02,#42,#0d,#06,#42,#0f,#06,#42
	db #11,#06,#42,#13,#02,#42,#15,#02
	db #42,#17,#02,#42,#19,#02,#42,#1b
	db #02,#42,#1d,#02,#42,#1f,#00,#8a
	db #e3,#00,#00,#07,#02,#8a,#60,#08
	db #4b,#4b,#02,#8a,#60,#07,#02,#8a
	db #60,#09,#02,#8a,#60,#0a,#02,#8a
	db #60,#08,#02,#8a,#60,#07,#02,#4b
	db #02,#8a,#60,#08,#4b,#4b,#02,#8a
	db #60,#07,#02,#8a,#60,#09,#02,#8a
	db #60,#0a,#02,#8a,#60,#08,#02,#8a
	db #60,#07,#02,#4b,#02,#8a,#60,#08
	db #4b,#4b,#02,#8a,#60,#07,#02,#8a
	db #60,#09,#02,#8a,#60,#0a,#02,#8a
	db #60,#08,#02,#8a,#60,#07,#02,#4b
	db #02,#8a,#60,#08,#4b,#4b,#02,#8a
	db #60,#07,#02,#8a,#60,#09,#02,#8a
	db #60,#0a,#02,#8a,#60,#08,#02,#8a
	db #60,#09,#00,#8a,#e3,#00,#00,#07
	db #02,#8a,#60,#08,#4b,#4b,#02,#8a
	db #60,#07,#02,#8a,#60,#09,#02,#8a
	db #60,#0a,#02,#8a,#60,#08,#02,#8a
	db #60,#07,#02,#4b,#02,#8a,#60,#08
	db #4b,#4b,#02,#8a,#60,#07,#02,#8a
	db #60,#09,#02,#8a,#60,#0a,#02,#8a
	db #60,#08,#02,#8a,#60,#07,#02,#4b
	db #02,#8a,#60,#08,#4b,#4b,#02,#8a
	db #60,#07,#02,#8a,#60,#09,#02,#8a
	db #60,#0a,#02,#8a,#60,#08,#02,#8a
	db #60,#07,#02,#4b,#02,#8a,#60,#08
	db #4b,#4b,#02,#8a,#60,#07,#02,#8a
	db #60,#09,#02,#8a,#60,#0a,#02,#8a
	db #60,#09,#02,#4b,#00,#42,#91,#00
	db #00,#06,#42,#13,#06,#42,#15,#06
	db #42,#17,#06,#42,#19,#06,#42,#1b
	db #06,#42,#1d,#06,#42,#1f,#00,#be
	db #e1,#00,#00,#01,#42,#03,#42,#05
	db #42,#07,#be,#41,#42,#03,#42,#05
	db #42,#07,#be,#41,#42,#03,#be,#41
	db #42,#03,#42,#05,#42,#07,#be,#61
	db #03,#42,#03,#42,#05,#42,#07,#be
	db #41,#42,#03,#42,#05,#42,#07,#be
	db #41,#42,#03,#be,#61,#0b,#42,#03
	db #be,#41,#42,#03,#be,#41,#42,#03
	db #42,#05,#42,#07,#be,#61,#01,#42
	db #03,#42,#05,#42,#07,#be,#41,#42
	db #03,#42,#05,#42,#07,#be,#41,#42
	db #03,#be,#41,#42,#03,#42,#05,#42
	db #07,#be,#61,#03,#42,#03,#42,#05
	db #42,#07,#be,#41,#42,#03,#42,#05
	db #42,#07,#be,#41,#42,#03,#be,#61
	db #01,#42,#03,#be,#41,#42,#03,#be
	db #61,#0b,#42,#03,#42,#05,#42,#07
	db #ba,#e3,#00,#00,#04,#42,#05,#be
	db #47,#42,#09,#a6,#47,#42,#05,#ba
	db #43,#42,#05,#be,#47,#42,#09,#a6
	db #47,#42,#05,#ba,#43,#42,#05,#be
	db #47,#42,#09,#a6,#47,#42,#05,#ba
	db #43,#42,#05,#be,#47,#42,#09,#a6
	db #47,#42,#05,#ba,#43,#42,#05,#be
	db #47,#42,#09,#a6,#47,#42,#05,#ba
	db #43,#42,#05,#be,#47,#42,#09,#a6
	db #47,#42,#05,#ba,#43,#42,#05,#be
	db #47,#42,#09,#a6,#47,#42,#05,#ba
	db #43,#42,#05,#be,#47,#42,#09,#a6
	db #47,#42,#05,#ba,#43,#42,#05,#be
	db #47,#42,#09,#a6,#47,#42,#05,#ba
	db #43,#42,#05,#be,#47,#42,#09,#a6
	db #47,#42,#05,#ba,#43,#02,#42,#80
	db #fa,#ff,#42,#80,#f9,#ff,#8e,#e3
	db #00,#00,#0c,#02,#8e,#60,#0d,#4f
	db #4f,#02,#8e,#60,#0c,#02,#a6,#60
	db #0e,#02,#8e,#60,#0f,#02,#8e,#60
	db #0d,#02,#a6,#60,#10,#02,#8e,#60
	db #0c,#02,#8e,#60,#0d,#4f,#8e,#60
	db #11,#02,#8e,#60,#10,#02,#a6,#60
	db #0e,#02,#8e,#60,#0f,#02,#8e,#60
	db #0d,#02,#a6,#60,#0c,#02,#4b,#02
	db #8a,#60,#11,#4b,#8a,#60,#0d,#02
	db #8a,#60,#10,#02,#a2,#60,#0e,#02
	db #8a,#60,#0f,#02,#8a,#60,#0d,#02
	db #a2,#60,#0c,#02,#4b,#02,#8a,#60
	db #0d,#4b,#4b,#02,#8a,#60,#0c,#02
	db #a2,#60,#0e,#02,#8a,#60,#12,#02
	db #8a,#60,#11,#02,#a2,#60,#0e,#00
	db #be,#e3,#00,#00,#06,#1e,#cc,#60
	db #04,#02,#89,#06,#7f,#02,#85,#02
	db #83,#02,#7f,#02,#7b,#02,#7f,#06
	db #be,#60,#06,#16,#a6,#e5,#7e,#00
	db #04,#42,#09,#42,#9f,#00,#00,#02
	db #a6,#c5,#7e,#00,#42,#09,#42,#9f
	db #00,#00,#02,#a2,#c5,#7e,#00,#42
	db #09,#42,#9f,#00,#00,#02,#9c,#c5
	db #7e,#00,#42,#09,#42,#9f,#00,#00
	db #00,#98,#e3,#00,#00,#0c,#02,#98
	db #60,#0d,#59,#59,#02,#98,#60,#0c
	db #02,#b0,#60,#0e,#02,#98,#60,#12
	db #02,#98,#60,#11,#02,#b0,#60,#10
	db #02,#98,#60,#0c,#02,#98,#60,#11
	db #59,#98,#60,#0d,#02,#98,#60,#10
	db #02,#b0,#60,#13,#02,#98,#60,#12
	db #02,#98,#60,#0d,#02,#b0,#60,#0c
	db #02,#4f,#02,#8e,#60,#11,#4f,#4f
	db #02,#8e,#60,#10,#02,#a6,#60,#0e
	db #02,#8e,#60,#0f,#02,#8e,#60,#0d
	db #02,#a6,#60,#0c,#02,#8e,#60,#10
	db #02,#8e,#60,#0d,#4f,#8e,#60,#11
	db #02,#8e,#60,#10,#02,#a6,#60,#0e
	db #02,#8e,#60,#0f,#02,#8e,#60,#0e
	db #02,#a6,#60,#13,#00,#a2,#e3,#00
	db #00,#04,#67,#5d,#59,#63,#67,#5d
	db #59,#63,#67,#5d,#59,#63,#67,#5d
	db #59,#63,#67,#5d,#59,#63,#67,#5d
	db #59,#63,#67,#5d,#59,#63,#67,#5d
	db #59,#6b,#02,#aa,#60,#06,#06,#42
	db #80,#fb,#ff,#42,#80,#fa,#ff,#ac
	db #e0,#00,#00,#04,#02,#42,#80,#06
	db #00,#42,#80,#05,#00,#aa,#c0,#00
	db #00,#06,#63,#02,#a2,#60,#06,#0a
	db #a2,#e0,#0a,#00,#04,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#00,#42
	db #00,#42,#00,#98,#e3,#00,#00,#04
	db #06,#98,#60,#06,#16,#a6,#60,#04
	db #02,#6d,#06,#67,#02,#71,#02,#6d
	db #02,#6b,#02,#6d,#02,#67,#02,#63
	db #02,#67,#02,#6d,#02,#a6,#45,#02
	db #63,#02,#a6,#47,#02,#6d,#02,#a6
	db #49,#02,#65,#02,#a2,#4b,#02,#5d
	db #02,#a6,#4d,#02,#65,#02,#a2,#4f
	db #02,#5d,#00,#8a,#e3,#00,#00,#09
	db #02,#a6,#60,#04,#a6,#60,#06,#ac
	db #60,#04,#ac,#60,#06,#a6,#60,#04
	db #a6,#60,#06,#b0,#60,#04,#b0,#60
	db #06,#42,#05,#02,#b0,#63,#04,#b0
	db #60,#06,#a6,#60,#04,#a6,#60,#06
	db #b4,#60,#04,#b4,#60,#06,#b0,#60
	db #04,#b0,#60,#06,#04,#ac,#60,#04
	db #ac,#60,#06,#04,#b0,#60,#04,#b0
	db #60,#06,#ac,#60,#04,#ac,#60,#06
	db #04,#aa,#60,#04,#aa,#60,#06,#ac
	db #60,#04,#ac,#60,#06,#aa,#60,#04
	db #aa,#60,#06,#a2,#60,#04,#a2,#60
	db #06,#04,#9c,#60,#04,#9c,#60,#06
	db #04,#98,#60,#04,#98,#60,#06,#42
	db #05,#02,#42,#07,#02,#42,#09,#02
	db #98,#63,#04,#98,#60,#06,#9c,#60
	db #04,#9c,#60,#06,#a2,#60,#04,#a2
	db #60,#06,#00,#a6,#e3,#00,#00,#06
	db #2a,#98,#60,#04,#02,#5d,#02,#9c
	db #60,#06,#02,#a2,#60,#04,#02,#6d
	db #6b,#a6,#60,#06,#1e,#42,#05,#02
	db #42,#07,#02,#42,#09,#02,#42,#0b
	db #02,#42,#0d,#02,#42,#0f,#02,#42
	db #11,#02,#42,#13,#00,#a6,#e3,#00
	db #00,#06,#0a,#6d,#02,#71,#12,#71
	db #02,#6d,#02,#b0,#60,#04,#02,#73
	db #02,#b0,#60,#06,#02,#ac,#60,#04
	db #02,#63,#02,#a6,#60,#06,#1e,#42
	db #05,#02,#42,#07,#02,#42,#09,#02
	db #42,#0b,#02,#42,#0d,#02,#42,#0f
	db #02,#42,#11,#02,#42,#13,#00,#be
	db #e3,#00,#00,#04,#42,#0b,#c4,#49
	db #42,#0b,#c2,#47,#42,#0b,#ba,#45
	db #42,#0b,#b0,#43,#42,#0b,#b4,#49
	db #42,#0b,#be,#47,#42,#0b,#c4,#45
	db #42,#0b,#c2,#43,#42,#0b,#ba,#49
	db #42,#0b,#b0,#47,#42,#0b,#b4,#45
	db #42,#0b,#be,#43,#42,#0b,#c4,#49
	db #42,#0b,#c2,#47,#42,#0b,#cc,#45
	db #42,#0b,#be,#43,#42,#0b,#c4,#49
	db #42,#0b,#c2,#47,#42,#0b,#ba,#45
	db #42,#0b,#b0,#43,#42,#0b,#b4,#49
	db #42,#0b,#be,#47,#42,#0b,#c4,#45
	db #42,#0b,#c2,#43,#42,#0b,#ba,#49
	db #42,#0b,#b0,#47,#42,#0b,#b4,#45
	db #42,#0b,#be,#43,#42,#0b,#c4,#49
	db #42,#0b,#c2,#47,#42,#0b,#cc,#45
	db #42,#0b,#8e,#e3,#00,#00,#0c,#02
	db #8e,#60,#0d,#4f,#4f,#02,#8e,#60
	db #0c,#02,#a6,#60,#0e,#02,#8e,#60
	db #12,#02,#8e,#60,#11,#02,#a6,#60
	db #10,#02,#8e,#60,#0c,#02,#8e,#60
	db #11,#4f,#8e,#60,#0d,#02,#8e,#60
	db #10,#02,#a6,#60,#13,#02,#8e,#60
	db #12,#02,#8e,#60,#0d,#02,#a6,#60
	db #0c,#02,#4f,#02,#8e,#60,#11,#4f
	db #4f,#02,#8e,#60,#10,#02,#a6,#60
	db #0e,#02,#8e,#60,#0f,#02,#8e,#60
	db #0d,#02,#a6,#60,#0c,#02,#8e,#60
	db #10,#02,#8e,#60,#0d,#4f,#8e,#60
	db #11,#02,#8e,#60,#10,#02,#a6,#60
	db #0e,#02,#8e,#60,#0f,#02,#8e,#60
	db #11,#02,#a6,#60,#13,#00,#be,#e3
	db #00,#00,#04,#42,#0b,#c8,#49,#42
	db #0b,#c4,#47,#42,#0b,#be,#45,#42
	db #0b,#b0,#43,#42,#0b,#b6,#49,#42
	db #0b,#be,#47,#42,#0b,#c8,#45,#42
	db #0b,#c4,#43,#42,#0b,#be,#49,#42
	db #0b,#b0,#47,#42,#0b,#b6,#45,#42
	db #0b,#b0,#43,#42,#0b,#ac,#49,#42
	db #0b,#b0,#47,#42,#0b,#b6,#45,#42
	db #0b,#b0,#43,#42,#0b,#c8,#49,#42
	db #0b,#c4,#47,#42,#0b,#be,#45,#42
	db #0b,#b0,#43,#42,#0b,#b6,#49,#42
	db #0b,#be,#47,#42,#0b,#c8,#45,#42
	db #0b,#c4,#43,#42,#0b,#be,#49,#42
	db #0b,#b0,#47,#42,#0b,#b6,#45,#42
	db #0b,#b0,#43,#42,#0b,#ac,#49,#42
	db #0b,#b0,#47,#42,#0b,#b6,#45,#42
	db #0b,#98,#e3,#00,#00,#0c,#02,#98
	db #60,#0d,#59,#59,#02,#98,#60,#0c
	db #02,#b0,#60,#0e,#02,#98,#60,#12
	db #02,#98,#60,#11,#02,#b0,#60,#10
	db #02,#98,#60,#0c,#02,#98,#60,#11
	db #59,#98,#60,#0d,#02,#98,#60,#10
	db #02,#b0,#60,#13,#02,#98,#60,#12
	db #02,#98,#60,#0d,#02,#b0,#60,#0c
	db #02,#59,#02,#98,#60,#11,#59,#59
	db #02,#98,#60,#10,#02,#b0,#60,#0e
	db #02,#98,#60,#0f,#02,#98,#60,#0d
	db #02,#b0,#60,#0c,#02,#98,#60,#10
	db #02,#98,#60,#0d,#59,#98,#60,#11
	db #02,#98,#60,#10,#02,#b0,#60,#0e
	db #02,#98,#60,#0f,#02,#98,#60,#11
	db #02,#b0,#60,#13,#00,#b0,#e1,#00
	db #00,#01,#42,#03,#42,#05,#42,#07
	db #b0,#41,#42,#03,#42,#05,#42,#07
	db #b0,#41,#42,#03,#b0,#41,#42,#03
	db #42,#05,#42,#07,#b0,#61,#03,#42
	db #03,#42,#05,#42,#07,#b0,#41,#42
	db #03,#42,#05,#42,#07,#b0,#41,#42
	db #03,#b0,#61,#0b,#42,#03,#b0,#41
	db #42,#03,#b0,#41,#42,#03,#42,#05
	db #42,#07,#b0,#61,#01,#42,#03,#42
	db #05,#42,#07,#b0,#41,#42,#03,#42
	db #05,#42,#07,#b0,#41,#42,#03,#b0
	db #41,#42,#03,#42,#05,#42,#07,#b0
	db #61,#03,#42,#03,#42,#05,#42,#07
	db #b0,#41,#42,#03,#42,#05,#42,#07
	db #b0,#41,#42,#03,#b0,#61,#01,#42
	db #03,#b0,#41,#42,#03,#b0,#61,#0b
	db #42,#03,#42,#05,#42,#07,#ba,#e3
	db #00,#00,#04,#ba,#60,#05,#0c,#be
	db #60,#06,#26,#42,#05,#42,#07,#42
	db #09,#42,#0b,#c8,#63,#04,#c8,#60
	db #05,#06,#cc,#60,#06,#00,#ca,#e3
	db #00,#00,#04,#02,#89,#02,#85,#02
	db #7f,#02,#c4,#60,#06,#06,#be,#60
	db #04,#02,#42,#0b,#06,#ba,#43,#42
	db #0b,#b4,#43,#42,#0b,#b2,#43,#42
	db #0b,#b0,#43,#42,#0b,#ac,#43,#42
	db #0b,#b4,#43,#02,#b4,#60,#06,#02
	db #a6,#60,#04,#02,#a6,#60,#06,#0a
	db #42,#05,#06,#42,#07,#06,#42,#09
	db #06,#42,#0b,#06,#42,#0d,#06,#42
	db #0f,#00,#a6,#e1,#00,#00,#01,#06
	db #42,#03,#06,#42,#05,#06,#a6,#67
	db #14,#06,#42,#05,#06,#42,#03,#06
	db #42,#01,#06,#42,#03,#06,#a2,#61
	db #02,#06,#42,#03,#06,#42,#05,#06
	db #a2,#67,#14,#06,#42,#05,#06,#42
	db #03,#06,#42,#01,#06,#42,#03,#00
	db #9e,#e1,#00,#00,#02,#06,#42,#03
	db #06,#42,#05,#06,#9e,#67,#14,#06
	db #42,#05,#06,#42,#03,#06,#42,#01
	db #06,#42,#03,#06,#a2,#61,#02,#06
	db #42,#03,#06,#42,#05,#06,#a2,#67
	db #14,#06,#42,#05,#06,#42,#03,#06
	db #42,#01,#06,#42,#03,#00,#be,#e3
	db #00,#00,#04,#42,#0b,#c4,#49,#42
	db #0b,#c2,#47,#42,#0b,#ba,#45,#42
	db #0b,#b4,#43,#42,#0b,#b4,#49,#42
	db #0b,#be,#47,#42,#0b,#c4,#45,#42
	db #0b,#c2,#43,#42,#0b,#ba,#49,#42
	db #0b,#b0,#47,#42,#0b,#b4,#45,#42
	db #0b,#be,#43,#42,#0b,#c4,#49,#42
	db #0b,#c2,#47,#42,#0b,#cc,#45,#42
	db #0b,#be,#43,#42,#0b,#c4,#49,#42
	db #0b,#c2,#47,#42,#0b,#ba,#45,#42
	db #0b,#b4,#43,#42,#0b,#b4,#49,#42
	db #0b,#be,#47,#42,#0b,#c4,#45,#42
	db #0b,#c2,#43,#42,#0b,#ba,#49,#42
	db #0b,#b0,#47,#42,#0b,#b4,#45,#42
	db #0b,#be,#43,#42,#0b,#c4,#49,#42
	db #0b,#c2,#47,#42,#0b,#cc,#45,#42
	db #0b,#9e,#e3,#00,#00,#0c,#02,#9e
	db #60,#0d,#5f,#5f,#02,#9e,#60,#0c
	db #02,#b6,#60,#0e,#02,#9e,#60,#12
	db #02,#9e,#60,#11,#02,#b6,#60,#10
	db #02,#9e,#60,#0c,#02,#9e,#60,#11
	db #5f,#9e,#60,#0d,#02,#9e,#60,#10
	db #02,#b6,#60,#13,#02,#9e,#60,#12
	db #02,#9e,#60,#0d,#02,#b6,#60,#0c
	db #02,#4b,#02,#8a,#60,#11,#4b,#4b
	db #02,#8a,#60,#10,#02,#a2,#60,#0e
	db #02,#8a,#60,#0f,#02,#8a,#60,#0d
	db #02,#a2,#60,#0c,#02,#8a,#60,#10
	db #02,#8a,#60,#0d,#4b,#8a,#60,#11
	db #02,#8a,#60,#10,#02,#a2,#60,#0e
	db #02,#8a,#60,#0f,#02,#8a,#60,#11
	db #02,#a2,#60,#13,#00,#8e,#e3,#00
	db #00,#15,#42,#1f,#42,#05,#42,#1f
	db #42,#07,#42,#1f,#42,#09,#42,#1f
	db #42,#0b,#42,#1f,#42,#0d,#42,#1f
	db #42,#0f,#42,#1f,#42,#09,#42,#1f
	db #42,#0b,#42,#1f,#42,#0d,#42,#1f
	db #42,#0f,#42,#1f,#42,#11,#42,#1f
	db #42,#13,#42,#1f,#42,#15,#42,#1f
	db #42,#17,#42,#1f,#42,#19,#42,#1f
	db #8e,#63,#16,#42,#1f,#42,#05,#42
	db #1f,#42,#07,#42,#1f,#42,#09,#42
	db #1f,#42,#0b,#42,#1f,#42,#0d,#42
	db #1f,#42,#0f,#42,#1f,#42,#09,#42
	db #1f,#42,#0b,#42,#1f,#42,#0d,#42
	db #1f,#42,#0f,#42,#1f,#42,#11,#42
	db #1f,#42,#13,#42,#1f,#42,#15,#42
	db #1f,#42,#17,#42,#1f,#42,#19,#42
	db #1f,#94,#e3,#00,#00,#04,#42,#1f
	db #42,#05,#42,#1f,#42,#07,#42,#1f
	db #42,#09,#42,#1f,#42,#0b,#42,#1f
	db #42,#0d,#42,#1f,#42,#0f,#42,#1f
	db #42,#09,#42,#1f,#42,#0b,#42,#1f
	db #42,#0d,#42,#1f,#42,#0f,#42,#1f
	db #42,#11,#42,#1f,#42,#13,#42,#1f
	db #42,#15,#42,#1f,#42,#17,#42,#1f
	db #42,#19,#42,#1f,#9c,#43,#42,#1f
	db #42,#05,#42,#1f,#42,#07,#42,#1f
	db #42,#09,#42,#1f,#42,#0b,#42,#1f
	db #42,#0d,#42,#1f,#42,#0f,#42,#1f
	db #42,#09,#42,#1f,#42,#0b,#42,#1f
	db #42,#0d,#42,#1f,#42,#0f,#42,#1f
	db #42,#11,#42,#1f,#42,#13,#42,#1f
	db #42,#15,#42,#1f,#42,#17,#42,#1f
	db #42,#19,#42,#1f,#8a,#e3,#00,#00
	db #17,#42,#1f,#42,#05,#42,#1f,#42
	db #07,#42,#1f,#42,#09,#42,#1f,#42
	db #0b,#42,#1f,#42,#0d,#42,#1f,#42
	db #0f,#42,#1f,#42,#09,#42,#1f,#42
	db #0b,#42,#1f,#42,#0d,#42,#1f,#42
	db #0f,#42,#1f,#42,#11,#42,#1f,#42
	db #13,#42,#1f,#42,#15,#42,#1f,#42
	db #17,#42,#1f,#42,#19,#42,#1f,#8a
	db #63,#18,#42,#1f,#42,#05,#42,#1f
	db #42,#07,#42,#1f,#42,#09,#42,#1f
	db #42,#0b,#42,#1f,#42,#0d,#42,#1f
	db #42,#0f,#42,#1f,#42,#09,#42,#1f
	db #42,#0b,#42,#1f,#42,#0d,#42,#1f
	db #42,#0f,#42,#1f,#42,#11,#42,#1f
	db #42,#13,#42,#1f,#42,#15,#42,#1f
	db #42,#17,#42,#1f,#42,#19,#42,#1f
	db #98,#e3,#00,#00,#04,#42,#1f,#42
	db #05,#42,#1f,#42,#07,#42,#1f,#42
	db #09,#42,#1f,#42,#0b,#42,#1f,#42
	db #0d,#42,#1f,#42,#0f,#42,#1f,#42
	db #09,#42,#1f,#42,#0b,#42,#1f,#42
	db #0d,#42,#1f,#42,#0f,#42,#1f,#42
	db #11,#42,#1f,#42,#13,#42,#1f,#42
	db #15,#42,#1f,#42,#17,#42,#1f,#42
	db #19,#42,#1f,#a2,#43,#42,#1f,#42
	db #05,#42,#1f,#42,#07,#42,#1f,#42
	db #09,#42,#1f,#42,#0b,#42,#1f,#42
	db #0d,#42,#1f,#42,#0f,#42,#1f,#42
	db #09,#42,#1f,#42,#0b,#42,#1f,#42
	db #0d,#42,#1f,#42,#0f,#42,#1f,#42
	db #11,#42,#1f,#42,#13,#42,#1f,#42
	db #15,#42,#1f,#42,#17,#42,#1f,#42
	db #19,#42,#1f,#8e,#e1,#00,#00,#0c
	db #00,#42,#80,#00,#00,#00,#be,#e3
	db #00,#00,#04,#42,#0b,#04,#42,#0f
	db #02,#42,#11,#02,#42,#13,#02,#42
	db #15,#02,#42,#17,#02,#8e,#4f,#8e
	db #60,#19,#8e,#60,#04,#8e,#60,#19
	db #08,#8e,#60,#04,#8e,#60,#19,#8e
	db #60,#04,#8e,#60,#19,#08,#8e,#60
	db #04,#8e,#60,#19,#8e,#60,#04,#8e
	db #60,#19,#08,#8e,#60,#04,#8e,#60
	db #19,#8e,#60,#04,#8e,#60,#19,#08
	db #8e,#60,#04,#8e,#60,#19,#8e,#60
	db #04,#8e,#60,#19,#08,#8e,#60,#04
	db #8e,#60,#19,#8e,#60,#04,#8e,#60
	db #19,#08,#8e,#60,#04,#8e,#60,#19
	db #a6,#e1,#00,#00,#01,#1e,#a6,#63
	db #1a,#06,#42,#05,#06,#a6,#67,#01
	db #06,#42,#09,#06,#a6,#6b,#1a,#0e
	db #a6,#6d,#01,#0e,#a6,#6f,#1a,#0e
	db #a6,#71,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music
;
	ld de,l8730
	jp real_init_music
;
.music_info
	db "Anarchy In The UK - StarWorx'91 (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"