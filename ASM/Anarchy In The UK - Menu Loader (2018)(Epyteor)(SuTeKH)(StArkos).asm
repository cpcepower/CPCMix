; Music of Anarchy In The UK - Menu Loader (2018)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 25/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ANAITUML.BIN"
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
	db #02,#06,#c5,#02,#66,#87,#6f,#87
	db #84,#87,#a9,#87,#b0,#87,#b6,#87
	db #c7,#87,#d1,#87,#db,#87,#e6,#87
	db #f0,#87,#fa,#87,#04,#88,#99,#88
	db #aa,#88,#bd,#88,#d0,#88,#e3,#88
	db #ee,#88,#01,#89,#14,#89,#00,#00
	db #00,#00,#00,#00,#0d,#68,#87,#01
	db #00,#2e,#05,#7e,#37,#10,#7a,#39
	db #0c,#76,#3b,#08,#72,#3d,#04,#2e
	db #3f,#0d,#68,#87,#01,#00,#2e,#05
	db #7c,#e8,#7e,#2b,#06,#3a,#2a,#7a
	db #29,#06,#36,#28,#72,#27,#06,#2e
	db #26,#6a,#25,#06,#26,#24,#62,#23
	db #06,#1e,#22,#5a,#21,#06,#0d,#68
	db #87,#01,#00,#2e,#05,#0d,#68,#87
	db #01,#00,#3c,#0d,#b2,#87,#01,#00
	db #2e,#25,#68,#07,#70,#f8,#70,#04
	db #68,#f8,#60,#04,#0d,#68,#87,#01
	db #00,#3c,#7c,#04,#7c,#07,#0d,#c9
	db #87,#01,#00,#3c,#7c,#03,#7c,#07
	db #0d,#d3,#87,#01,#00,#38,#3c,#3c
	db #38,#30,#24,#0d,#68,#87,#01,#00
	db #3c,#7c,#05,#7c,#07,#0d,#e8,#87
	db #01,#00,#3c,#7c,#05,#7c,#09,#0d
	db #f2,#87,#01,#00,#3c,#7c,#02,#7c
	db #07,#0d,#fc,#87,#01,#00,#fc,#f0
	db #ff,#02,#fc,#f0,#ff,#02,#f8,#10
	db #00,#02,#f8,#10,#00,#02,#f8,#f0
	db #ff,#02,#f4,#f0,#ff,#02,#f4,#10
	db #00,#02,#f4,#10,#00,#02,#f0,#f0
	db #ff,#02,#f0,#f0,#ff,#02,#f0,#10
	db #00,#02,#ec,#10,#00,#02,#ec,#f0
	db #ff,#02,#ec,#f0,#ff,#02,#e8,#10
	db #00,#02,#e8,#10,#00,#02,#e8,#f0
	db #ff,#02,#e4,#f0,#ff,#02,#e4,#10
	db #00,#02,#e4,#10,#00,#02,#e0,#f0
	db #ff,#02,#e0,#f0,#ff,#02,#dc,#10
	db #00,#02,#dc,#10,#00,#02,#d8,#f0
	db #ff,#02,#d8,#f0,#ff,#02,#d4,#10
	db #00,#02,#d4,#10,#00,#02,#d0,#f0
	db #ff,#02,#d0,#f0,#ff,#02,#cc,#10
	db #00,#02,#cc,#10,#00,#02,#c8,#f0
	db #ff,#02,#c8,#f0,#ff,#02,#c4,#10
	db #00,#02,#c4,#10,#00,#02,#0d,#68
	db #87,#01,#00,#bc,#ff,#ff,#bc,#ff
	db #ff,#bc,#01,#00,#bc,#01,#00,#0d
	db #9b,#88,#01,#00,#2e,#05,#74,#04
	db #6c,#07,#24,#5c,#04,#54,#07,#0c
	db #44,#04,#0d,#68,#87,#01,#00,#2e
	db #05,#74,#05,#6c,#09,#24,#5c,#05
	db #54,#09,#0c,#44,#05,#0d,#68,#87
	db #01,#00,#2e,#05,#74,#03,#6c,#07
	db #24,#5c,#03,#54,#07,#0c,#44,#03
	db #0d,#68,#87,#01,#00,#34,#3c,#30
	db #24,#18,#0c,#0d,#68,#87,#01,#00
	db #2e,#05,#74,#02,#6c,#07,#24,#5c
	db #02,#54,#07,#0c,#44,#02,#0d,#68
	db #87,#01,#00,#2e,#05,#74,#05,#6c
	db #07,#24,#5c,#05,#54,#07,#0c,#44
	db #05,#0d,#68,#87,#01,#00,#fc,#f0
	db #ff,#02,#fc,#f0,#ff,#02,#f8,#10
	db #00,#02,#f8,#10,#00,#02,#f8,#f0
	db #ff,#02,#f8,#f0,#ff,#02,#f4,#10
	db #00,#02,#f4,#10,#00,#02,#f4,#f0
	db #ff,#02,#f4,#f0,#ff,#02,#f0,#10
	db #00,#02,#f0,#10,#00,#02,#f0,#f0
	db #ff,#02,#f0,#f0,#ff,#02,#ec,#10
	db #00,#02,#ec,#10,#00,#02,#ec,#f0
	db #ff,#02,#ec,#f0,#ff,#02,#e8,#10
	db #00,#02,#e8,#10,#00,#02,#e8,#f0
	db #ff,#02,#e8,#f0,#ff,#02,#e4,#10
	db #00,#02,#e4,#10,#00,#02,#e4,#f0
	db #ff,#02,#e4,#f0,#ff,#02,#e0,#10
	db #00,#02,#e0,#10,#00,#02,#e0,#f0
	db #ff,#02,#e0,#f0,#ff,#02,#dc,#10
	db #00,#02,#dc,#10,#00,#02,#dc,#f0
	db #ff,#02,#dc,#f0,#ff,#02,#d8,#10
	db #00,#02,#d8,#10,#00,#02,#d8,#f0
	db #ff,#02,#d8,#f0,#ff,#02,#d4,#10
	db #00,#02,#d4,#10,#00,#02,#d4,#f0
	db #ff,#02,#d4,#f0,#ff,#02,#d0,#10
	db #00,#02,#d0,#10,#00,#02,#d0,#f0
	db #ff,#02,#d0,#f0,#ff,#02,#cc,#10
	db #00,#02,#cc,#10,#00,#02,#cc,#f0
	db #ff,#02,#cc,#f0,#ff,#02,#c8,#10
	db #00,#02,#c8,#10,#00,#02,#c8,#f0
	db #ff,#02,#c8,#f0,#ff,#02,#c4,#10
	db #00,#02,#c4,#10,#00,#02,#c4,#f0
	db #ff,#02,#c4,#f0,#ff,#02,#0d,#68
	db #87,#40,#00,#00,#00,#8f,#8a,#00
	db #98,#8a,#90,#8a,#90,#8a,#00,#f3
	db #8a,#95,#8b,#27,#8c,#00,#f3,#8a
	db #95,#8b,#27,#8c,#00,#f3,#8a,#61
	db #8c,#27,#8c,#00,#f3,#8a,#61,#8c
	db #27,#8c,#00,#cd,#8c,#6f,#8d,#e8
	db #8d,#00,#22,#8e,#b5,#8e,#24,#8f
	db #00,#f3,#8a,#61,#8c,#27,#8c,#00
	db #f3,#8a,#61,#8c,#27,#8c,#00,#f3
	db #8a,#95,#8b,#27,#8c,#00,#f3,#8a
	db #95,#8b,#27,#8c,#00,#f3,#8a,#59
	db #8f,#a6,#8f,#00,#f3,#8a,#ea,#8f
	db #a6,#8f,#00,#2e,#90,#d6,#90,#63
	db #91,#00,#2e,#90,#d6,#90,#63,#91
	db #00,#cd,#8c,#6f,#8d,#e8,#8d,#00
	db #22,#8e,#b5,#8e,#24,#8f,#00,#f3
	db #8a,#95,#8b,#27,#8c,#00,#f3,#8a
	db #95,#8b,#27,#8c,#01,#07,#8a,#00
	db #42,#60,#00,#42,#80,#00,#00,#00
	db #5e,#e1,#00,#00,#01,#06,#1f,#06
	db #1f,#06,#1f,#06,#1f,#06,#1f,#06
	db #1f,#04,#1f,#8e,#60,#02,#02,#5e
	db #60,#01,#02,#1f,#8e,#67,#03,#8e
	db #41,#8e,#47,#5e,#61,#01,#8e,#67
	db #03,#8e,#41,#8e,#47,#5e,#61,#01
	db #8e,#67,#03,#8e,#41,#8e,#47,#5e
	db #61,#01,#8e,#67,#03,#8e,#41,#8e
	db #47,#5e,#61,#01,#02,#cc,#e5,#48
	db #00,#04,#8d,#42,#00,#89,#89,#42
	db #00,#85,#42,#00,#83,#83,#42,#00
	db #7f,#7f,#7f,#5e,#e1,#00,#00,#01
	db #8e,#60,#03,#ba,#60,#05,#7b,#8e
	db #60,#02,#02,#ba,#60,#05,#7b,#5e
	db #60,#01,#8e,#60,#03,#ba,#60,#05
	db #7b,#8e,#60,#02,#ba,#60,#05,#5e
	db #60,#01,#ba,#60,#05,#5e,#60,#01
	db #8e,#60,#03,#ba,#60,#05,#7b,#8e
	db #60,#02,#02,#ba,#60,#05,#7b,#5e
	db #60,#01,#8e,#60,#03,#ba,#60,#05
	db #7b,#8e,#60,#02,#ba,#60,#05,#5e
	db #60,#01,#ba,#60,#05,#5e,#60,#01
	db #8e,#60,#03,#b0,#60,#05,#71,#8e
	db #60,#02,#02,#b0,#60,#05,#71,#5e
	db #60,#01,#8e,#60,#03,#b0,#60,#05
	db #71,#8e,#60,#02,#b0,#60,#05,#5e
	db #60,#01,#b0,#60,#05,#5e,#60,#01
	db #8e,#60,#03,#b0,#60,#05,#71,#8e
	db #60,#02,#02,#b0,#60,#05,#71,#5e
	db #60,#01,#8e,#60,#03,#b0,#60,#05
	db #71,#8e,#60,#02,#b0,#60,#05,#5e
	db #60,#01,#b0,#60,#05,#a6,#e5,#00
	db #00,#06,#02,#aa,#60,#07,#02,#92
	db #60,#08,#aa,#60,#07,#02,#92,#60
	db #08,#aa,#60,#09,#02,#92,#60,#08
	db #aa,#60,#07,#02,#92,#60,#08,#aa
	db #60,#0a,#02,#a6,#60,#06,#02,#aa
	db #60,#07,#02,#92,#60,#08,#aa,#60
	db #07,#02,#92,#60,#08,#aa,#60,#0b
	db #02,#92,#60,#08,#aa,#60,#07,#02
	db #92,#60,#08,#aa,#60,#0a,#02,#b4
	db #60,#06,#02,#b8,#60,#07,#02,#a0
	db #60,#08,#b8,#60,#07,#02,#a0,#60
	db #08,#b8,#60,#09,#02,#a0,#60,#08
	db #b8,#60,#07,#02,#a0,#60,#08,#b8
	db #60,#0b,#02,#b4,#60,#06,#02,#b8
	db #60,#07,#02,#a0,#60,#08,#b8,#60
	db #07,#02,#a0,#60,#08,#b8,#60,#09
	db #02,#a0,#60,#08,#b8,#60,#07,#02
	db #a0,#60,#08,#b8,#60,#07,#00,#5e
	db #e3,#00,#00,#0c,#06,#37,#04,#2d
	db #02,#33,#29,#02,#2d,#02,#25,#02
	db #1f,#06,#37,#04,#2d,#02,#33,#29
	db #02,#2d,#02,#25,#02,#2d,#06,#45
	db #04,#3b,#02,#41,#37,#02,#3b,#02
	db #33,#02,#2d,#04,#45,#19,#31,#02
	db #19,#1b,#33,#02,#1b,#1d,#35,#02
	db #1d,#b0,#e3,#00,#00,#0d,#02,#ae
	db #60,#04,#42,#0b,#aa,#63,#0d,#02
	db #ae,#60,#04,#71,#b0,#60,#0d,#04
	db #a0,#60,#08,#67,#6b,#6f,#6b,#b4
	db #60,#04,#02,#b4,#60,#0d,#02,#b0
	db #60,#04,#42,#0b,#ae,#63,#0d,#06
	db #b0,#60,#04,#02,#42,#0b,#02,#b4
	db #43,#42,#0b,#ae,#63,#0d,#02,#a6
	db #60,#04,#42,#0b,#a0,#63,#0d,#02
	db #9c,#60,#04,#61,#a0,#60,#0d,#06
	db #42,#1f,#0e,#b8,#65,#07,#02,#a0
	db #60,#08,#61,#b4,#60,#06,#b8,#60
	db #07,#42,#1f,#b8,#45,#02,#a0,#60
	db #08,#b8,#60,#07,#00,#5e,#e1,#00
	db #00,#01,#8e,#60,#03,#ba,#60,#0e
	db #7b,#8e,#60,#02,#02,#ba,#60,#0e
	db #7b,#5e,#60,#01,#8e,#60,#03,#ba
	db #60,#0e,#7b,#8e,#60,#02,#ba,#60
	db #0e,#5e,#60,#01,#ba,#60,#0e,#5e
	db #60,#01,#8e,#60,#03,#be,#60,#0e
	db #7f,#8e,#60,#02,#02,#be,#60,#0e
	db #7f,#5e,#60,#01,#8e,#60,#03,#be
	db #60,#0e,#7f,#8e,#60,#02,#be,#60
	db #0f,#5e,#60,#01,#be,#60,#0e,#5e
	db #60,#01,#8e,#60,#03,#b8,#60,#0e
	db #79,#8e,#60,#02,#02,#b8,#60,#0e
	db #79,#5e,#60,#01,#8e,#60,#03,#b8
	db #60,#0e,#79,#8e,#60,#02,#b8,#60
	db #0e,#5e,#60,#01,#b8,#60,#0e,#5e
	db #60,#01,#8e,#60,#03,#c2,#60,#10
	db #83,#8e,#60,#02,#02,#c2,#60,#10
	db #83,#5e,#60,#01,#8e,#60,#03,#be
	db #60,#0e,#7f,#8e,#60,#02,#be,#60
	db #0e,#5e,#60,#01,#be,#60,#0e,#c8
	db #e3,#00,#00,#04,#c8,#60,#0d,#02
	db #c6,#60,#04,#c6,#60,#0d,#02,#c2
	db #60,#04,#42,#0b,#c8,#c3,#fa,#ff
	db #cc,#c0,#00,#00,#cc,#60,#0d,#06
	db #c6,#60,#04,#83,#87,#c6,#60,#0d
	db #02,#be,#60,#04,#be,#60,#0d,#02
	db #b4,#60,#04,#02,#b4,#60,#0d,#06
	db #42,#1f,#02,#be,#63,#04,#83,#89
	db #c8,#60,#0d,#02,#c6,#60,#04,#c6
	db #60,#0d,#02,#c2,#60,#04,#42,#0b
	db #c6,#43,#02,#c6,#60,#0d,#02,#c8
	db #60,#04,#42,#0b,#cc,#43,#02,#89
	db #c8,#60,#0d,#02,#c6,#60,#04,#c6
	db #60,#0d,#02,#be,#e0,#f9,#ff,#04
	db #c2,#c0,#00,#00,#c2,#60,#0d,#00
	db #56,#e3,#00,#00,#0c,#06,#2f,#04
	db #25,#02,#29,#25,#02,#2f,#02,#25
	db #02,#1b,#06,#33,#04,#29,#02,#2d
	db #29,#02,#25,#02,#1b,#02,#15,#06
	db #2d,#04,#23,#02,#29,#1f,#02,#23
	db #02,#1b,#02,#1f,#04,#2d,#33,#37
	db #02,#29,#02,#2d,#25,#02,#29,#02
	db #25,#00,#5e,#e1,#00,#00,#01,#8e
	db #60,#03,#ba,#60,#0e,#7b,#8e,#60
	db #02,#02,#ba,#60,#0e,#7b,#5e,#60
	db #01,#8e,#60,#03,#ba,#60,#0e,#7b
	db #8e,#60,#02,#ba,#60,#0e,#5e,#60
	db #01,#ba,#60,#0e,#5e,#60,#01,#8e
	db #60,#03,#be,#60,#0e,#7f,#8e,#60
	db #02,#02,#be,#60,#0e,#7f,#5e,#60
	db #01,#8e,#60,#03,#be,#60,#0e,#7f
	db #8e,#60,#02,#be,#60,#0f,#5e,#60
	db #01,#be,#60,#0e,#5e,#60,#01,#8e
	db #60,#03,#b8,#60,#0e,#79,#8e,#60
	db #02,#02,#b8,#60,#0e,#79,#5e,#60
	db #01,#8e,#60,#03,#b8,#60,#0e,#79
	db #8e,#60,#02,#b8,#60,#0e,#5e,#60
	db #01,#b8,#60,#0e,#8e,#60,#02,#04
	db #5e,#60,#01,#8e,#60,#03,#4f,#8e
	db #60,#02,#06,#8e,#60,#03,#4f,#8e
	db #60,#02,#4f,#4f,#00,#c8,#e3,#00
	db #00,#04,#c8,#60,#0d,#02,#c6,#60
	db #04,#c6,#60,#0d,#02,#c2,#60,#04
	db #42,#0b,#c8,#c3,#fa,#ff,#cc,#c0
	db #00,#00,#cc,#60,#0d,#06,#c6,#60
	db #04,#83,#87,#c6,#60,#0d,#02,#be
	db #60,#04,#be,#60,#0d,#02,#b4,#60
	db #04,#02,#b4,#60,#0d,#06,#42,#1f
	db #02,#be,#63,#04,#83,#89,#c8,#60
	db #0d,#02,#c6,#60,#04,#c6,#60,#0d
	db #02,#c2,#60,#04,#42,#0b,#c6,#43
	db #02,#c6,#60,#0d,#02,#c2,#60,#04
	db #42,#0b,#be,#43,#02,#b8,#65,#09
	db #02,#42,#0d,#b8,#45,#02,#42,#0d
	db #b8,#65,#06,#00,#56,#e3,#00,#00
	db #0c,#06,#2f,#04,#25,#02,#29,#25
	db #02,#2f,#02,#25,#02,#1b,#06,#33
	db #04,#29,#02,#2d,#29,#02,#25,#02
	db #1b,#02,#15,#06,#2d,#04,#23,#02
	db #29,#1f,#02,#23,#02,#1b,#02,#15
	db #04,#15,#04,#15,#0a,#1f,#23,#29
	db #2d,#72,#e3,#00,#00,#0c,#02,#37
	db #02,#37,#02,#2d,#02,#33,#37,#02
	db #37,#02,#2d,#33,#2d,#33,#02,#37
	db #02,#37,#02,#2d,#02,#33,#37,#02
	db #37,#02,#2d,#33,#37,#41,#02,#45
	db #02,#45,#02,#3b,#02,#41,#45,#02
	db #45,#02,#3b,#41,#3b,#cc,#e0,#5e
	db #00,#04,#8d,#42,#00,#89,#89,#42
	db #00,#85,#85,#42,#00,#7f,#7f,#42
	db #00,#75,#75,#6d,#42,#00,#5a,#e3
	db #00,#00,#0c,#02,#1f,#02,#1f,#02
	db #15,#02,#1b,#1f,#02,#1f,#02,#15
	db #1b,#15,#1b,#02,#1f,#02,#1f,#02
	db #15,#02,#1b,#1f,#02,#1f,#02,#15
	db #1b,#1f,#29,#02,#2d,#02,#2d,#02
	db #23,#02,#29,#2d,#02,#2d,#02,#23
	db #29,#23,#29,#02,#2d,#02,#2d,#02
	db #23,#02,#29,#2d,#02,#2d,#02,#23
	db #29,#23,#c8,#e3,#00,#00,#11,#79
	db #6b,#87,#79,#6b,#83,#79,#6b,#7f
	db #79,#6b,#83,#6b,#87,#6b,#89,#79
	db #6b,#87,#79,#6b,#83,#79,#6b,#8d
	db #79,#6b,#89,#79,#87,#79,#89,#79
	db #6f,#87,#79,#6f,#83,#79,#6f,#7f
	db #79,#6f,#83,#79,#87,#79,#7f,#79
	db #6f,#87,#79,#6f,#8d,#79,#6f,#89
	db #79,#6f,#87,#79,#89,#79,#5e,#e1
	db #00,#00,#01,#8e,#60,#03,#c2,#60
	db #10,#83,#8e,#60,#02,#02,#c2,#60
	db #10,#83,#5e,#60,#01,#8e,#60,#03
	db #c2,#60,#10,#c2,#60,#12,#8e,#60
	db #02,#c2,#60,#13,#5e,#60,#01,#c2
	db #60,#10,#5e,#60,#01,#8e,#60,#03
	db #c2,#60,#10,#83,#8e,#60,#02,#02
	db #c2,#60,#10,#83,#5e,#60,#01,#8e
	db #60,#03,#c2,#60,#10,#c2,#60,#12
	db #8e,#60,#02,#c2,#60,#13,#5e,#60
	db #01,#c2,#60,#10,#5e,#60,#01,#8e
	db #60,#03,#b4,#60,#0e,#75,#8e,#60
	db #02,#02,#b4,#60,#0e,#75,#5e,#60
	db #01,#8e,#60,#03,#b4,#60,#13,#b4
	db #60,#0e,#8e,#60,#02,#b4,#60,#0e
	db #5e,#60,#01,#b4,#60,#0e,#5e,#60
	db #01,#8e,#60,#03,#b0,#60,#0e,#71
	db #8e,#60,#02,#02,#b0,#60,#0e,#71
	db #5e,#60,#01,#8e,#60,#03,#b8,#60
	db #10,#79,#8e,#60,#02,#b8,#60,#10
	db #5e,#60,#01,#b8,#60,#10,#b4,#e3
	db #00,#00,#04,#42,#80,#fc,#ff,#42
	db #80,#fd,#ff,#42,#00,#b8,#e0,#00
	db #00,#0d,#06,#42,#1f,#02,#b8,#63
	db #04,#75,#71,#aa,#60,#08,#ac,#e0
	db #f9,#ff,#04,#ae,#e0,#00,#00,#0d
	db #aa,#60,#04,#02,#aa,#60,#0d,#02
	db #42,#1f,#02,#a6,#63,#04,#6b,#b0
	db #60,#0d,#02,#ae,#60,#04,#42,#0b
	db #aa,#63,#0d,#02,#a6,#60,#04,#42
	db #0b,#a2,#c3,#f5,#ff,#a4,#e0,#00
	db #00,#0d,#a0,#60,#04,#5d,#9c,#60
	db #0d,#02,#42,#1f,#02,#98,#63,#04
	db #42,#0b,#96,#63,#0d,#02,#98,#60
	db #04,#42,#0b,#a6,#43,#61,#a0,#60
	db #0d,#06,#42,#1f,#02,#a0,#63,#08
	db #61,#b0,#60,#0d,#02,#ae,#60,#04
	db #42,#0b,#aa,#63,#0d,#02,#ae,#60
	db #04,#42,#0b,#5e,#e3,#00,#00,#14
	db #04,#37,#c2,#60,#11,#02,#6c,#60
	db #14,#33,#02,#2d,#37,#02,#c2,#60
	db #11,#54,#60,#14,#1b,#1d,#1f,#04
	db #37,#c2,#60,#11,#02,#72,#60,#14
	db #37,#3d,#02,#3b,#02,#37,#02,#1b
	db #02,#11,#04,#29,#c2,#60,#11,#02
	db #5e,#60,#14,#25,#02,#1f,#29,#02
	db #c2,#60,#11,#68,#60,#14,#25,#1f
	db #25,#04,#3d,#c2,#60,#11,#02,#64
	db #60,#14,#29,#2d,#02,#23,#2d,#02
	db #45,#41,#3b,#00,#00,#00,#00,#00
;
.init_music
;
	ld de,l8730
	jp real_init_music
;
.music_info
	db "Anarchy In The UK - Menu Loader (2018)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
