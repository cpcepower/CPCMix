; Music of Arquimedes XXI (2012)(ESP Soft)(Fenyx Kell)(StArkos)
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ARQUIMEX.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6000

	read "music_header.asm"

	jp l668c
	jp l600a
	jp l66e1
.l6009
	nop
;
.play_music
.l600a
;
	call l66fb
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l6009),a
.l601a equ $ + 1
	ld a,#01
	dec a
	jp nz,l61e6
.l6020 equ $ + 1
	ld a,#01
	dec a
	jr nz,l608c
.l6025 equ $ + 1
	ld hl,l6851
	ld a,(hl)
	inc hl
	rra
	jr nc,l6033
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l6033
	rra
	jr nc,l603b
	ld de,l60dc
	ldi
.l603b
	rra
	jr nc,l6043
	ld de,l6141
	ldi
.l6043
	rra
	jr nc,l604b
	ld de,l61a6
	ldi
.l604b
	ld de,l60bb
	ldi
	ldi
	ld de,l6120
	ldi
	ldi
	ld de,l6185
	ldi
	ldi
	rra
	jr nc,l6068
	ld de,l608b
	ldi
.l6068
	rra
	jr nc,l6073
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l6077),de
.l6073
	ld (l6025),hl
.l6077 equ $ + 1
	ld hl,l68a2
	ld (l6095),hl
	ld a,#01
	ld (l6090),a
	ld (l60b6),a
	ld (l611b),a
	ld (l6180),a
.l608b equ $ + 1
	ld a,#20
.l608c
	ld (l6020),a
.l6090 equ $ + 1
	ld a,#01
	dec a
	jr nz,l60b2
.l6095 equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l60af
	srl a
	jr nz,l60a3
	ld a,(hl)
	inc hl
.l60a3
	jr nc,l60aa
	ld (l6009),a
	jr l60ad
.l60aa
	ld (l61e5),a
.l60ad
	ld a,#01
.l60af
	ld (l6095),hl
.l60b2
	ld (l6090),a
.l60b6 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6117
.l60bb equ $ + 1
	ld hl,#0000
	call l6538
	ld (l60bb),hl
	jr c,l6117
	ld a,d
	rra
	jr nc,l60ce
	and #0f
	ld (l6268),a
.l60ce
	rl d
	jr nc,l60d6
	ld (l6256),ix
.l60d6
	rl d
	jr nc,l6115
	ld a,e
.l60dc equ $ + 1
	add #00
	ld (l6267),a
	ld hl,#0000
	ld (l6253),hl
	rl d
	jr c,l60f5
.l60eb equ $ + 1
	ld hl,#0000
	ld a,(l6278)
	ld (l6270),a
	jr l6112
.l60f5
	ld l,b
	add hl,hl
.l60f8 equ $ + 1
	ld bc,l680c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l6278),a
	ld (l6270),a
	ld a,(hl)
	or a
	jr z,l610e
	ld (l6363),a
.l610e
	inc hl
	ld (l60eb),hl
.l6112
	ld (l626a),hl
.l6115
	ld a,#01
.l6117
	ld (l60b6),a
.l611b equ $ + 1
	ld a,#01
	dec a
	jr nz,l617c
.l6120 equ $ + 1
	ld hl,#0000
	call l6538
	ld (l6120),hl
	jr c,l617c
	ld a,d
	rra
	jr nc,l6133
	and #0f
	ld (l6234),a
.l6133
	rl d
	jr nc,l613b
	ld (l6222),ix
.l613b
	rl d
	jr nc,l617a
	ld a,e
.l6141 equ $ + 1
	add #00
	ld (l6233),a
	ld hl,#0000
	ld (l621f),hl
	rl d
	jr c,l615a
.l6150 equ $ + 1
	ld hl,#0000
	ld a,(l6244)
	ld (l623c),a
	jr l6177
.l615a
	ld l,b
	add hl,hl
.l615d equ $ + 1
	ld bc,l680c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l6244),a
	ld (l623c),a
	ld a,(hl)
	or a
	jr z,l6173
	ld (l6363),a
.l6173
	inc hl
	ld (l6150),hl
.l6177
	ld (l6236),hl
.l617a
	ld a,#01
.l617c
	ld (l611b),a
.l6180 equ $ + 1
	ld a,#01
	dec a
	jr nz,l61e1
.l6185 equ $ + 1
	ld hl,#0000
	call l6538
	ld (l6185),hl
	jr c,l61e1
	ld a,d
	rra
	jr nc,l6198
	and #0f
	ld (l6203),a
.l6198
	rl d
	jr nc,l61a0
	ld (l61f1),ix
.l61a0
	rl d
	jr nc,l61df
	ld a,e
.l61a6 equ $ + 1
	add #00
	ld (l6202),a
	ld hl,#0000
	ld (l61ee),hl
	rl d
	jr c,l61bf
.l61b5 equ $ + 1
	ld hl,#0000
	ld a,(l6213)
	ld (l620b),a
	jr l61dc
.l61bf
	ld l,b
	add hl,hl
.l61c2 equ $ + 1
	ld bc,l680c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l6213),a
	ld (l620b),a
	ld a,(hl)
	or a
	jr z,l61d8
	ld (l6363),a
.l61d8
	inc hl
	ld (l61b5),hl
.l61dc
	ld (l6205),hl
.l61df
	ld a,#01
.l61e1
	ld (l6180),a
.l61e5 equ $ + 1
	ld a,#06
.l61e6
	ld (l601a),a
	ld iy,l637a
.l61ee equ $ + 1
	ld hl,#0000
.l61f1 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l61ee),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l6203 equ $ + 2
.l6202 equ $ + 1
	ld de,#0000
.l6205 equ $ + 1
	ld hl,l6816
	call l6385
.l620b equ $ + 1
	ld a,#01
	dec a
	jr nz,l6214
	ld (l6205),hl
.l6213 equ $ + 1
	ld a,#06
.l6214
	ld (l620b),a
	ld a,lx
	ex af,af'
	ld iy,l6378
.l621f equ $ + 1
	ld hl,#0000
.l6222 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l621f),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l6234 equ $ + 2
.l6233 equ $ + 1
	ld de,#0000
.l6236 equ $ + 1
	ld hl,l6816
	call l6385
.l623c equ $ + 1
	ld a,#01
	dec a
	jr nz,l6245
	ld (l6236),hl
.l6244 equ $ + 1
	ld a,#06
.l6245
	ld (l623c),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l6376
.l6253 equ $ + 1
	ld hl,#0000
.l6256 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l6253),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l6268 equ $ + 2
.l6267 equ $ + 1
	ld de,#0000
.l626a equ $ + 1
	ld hl,l6816
	call l6385
.l6270 equ $ + 1
	ld a,#01
	dec a
	jr nz,l6279
	ld (l626a),hl
.l6278 equ $ + 1
	ld a,#06
.l6279
	ld (l6270),a
	ex af,af'
	or lx
.l627f
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l6376
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
	call l6361
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.l635f
	ei
	ret
.l6361
	ld a,(hl)
.l6363 equ $ + 1
	cp #ff
	ret z
	ld (l6363),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l637d equ $ + 7
.l637c equ $ + 6
.l637a equ $ + 4
.l6378 equ $ + 2
.l6376
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6384 equ $ + 6
.l6382 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#ff
.l6385
	ld b,(hl)
	inc hl
	rr b
	jp c,l63e3
	rr b
	jr c,l63b3
	ld a,b
	and #0f
	jr nz,l639c
	ld (iy+#07),a
	ld lx,#09
	ret
.l639c
	ld lx,#08
	sub d
	jr nc,l63a3
	xor a
.l63a3
	ld (iy+#07),a
	rr b
	call l650c
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l63b3
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l63c3
	ld (l637c),a
	ld lx,#00
.l63c3
	ld a,b
	and #0f
	sub d
	jr nc,l63ca
	xor a
.l63ca
	ld (iy+#07),a
	bit 5,c
	jr nz,l63d4
	inc lx
	ret
.l63d4
	rr b
	bit 6,c
	call l64fe
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l63e3
	rr b
	jr nc,l63f6
	ld a,(l6270)
	ld c,a
	ld a,(l6278)
	cp c
	jr nz,l63f6
	ld a,#fe
	ld (l6363),a
.l63f6
	bit 1,b
	jp nz,l64af
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l6384),a
	bit 0,b
	jr z,l6465
	bit 2,b
	call l64fe
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l6425),a
	ld a,b
	exx
.l6425 equ $ + 1
	jr l6426
.l6426
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
	jr nc,l6445
	inc hl
.l6445
	bit 5,a
	jr z,l6455
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
.l6455
	ld (l6382),hl
	exx
.l6459
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l637c),a
	ld lx,#00
	ret
.l6465
	bit 2,b
	call l64fe
	ld (l6382),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l6479),a
	ld a,b
	exx
.l6479 equ $ + 1
	jr l647a
.l647a
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
	jr z,l64a6
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
.l64a6
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l6459
.l64af
	bit 0,b
	jr z,l64ba
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l6385
.l64ba
	ld (iy+#07),#10
	bit 5,b
	jr nz,l64c7
	ld lx,#09
	jr l64da
.l64c7
	ld lx,#08
	ld hx,e
	bit 2,b
	call l64fe
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l64da
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l6384),a
	rr b
	rr b
	bit 2,b
	call l64fe
	ld (l6382),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l637c),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l64fe
	jr z,l650c
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
.l650c
	bit 4,b
	jr z,l651c
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
.l651c
	ld a,e
	bit 3,b
	jr z,l6529
	add (hl)
	inc hl
	cp #90
	jr c,l6529
	ld a,#8f
.l6529
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l656c
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l6538
	ld a,(hl)
	inc hl
	srl a
	jr c,l655f
	sub #20
	jr c,l6569
	jr z,l655b
	dec a
	ld e,a
.l6546
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l6554
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l6554
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l655b
	ld e,(hl)
	inc hl
	jr l6546
.l655f
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l6569
	add #20
	ret
.l656c
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
.l668c
;
	ld hl,#0009
	add hl,de
	ld de,l61e5
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l60f8),hl
	ld (l615d),hl
	ld (l61c2),hl
	add hl,bc
	ld de,l608b
	ldi
	ld de,l60dc
	ldi
	ld de,l6141
	ldi
	ld de,l61a6
	ldi
	ld de,l6077
	ldi
	ldi
	ld (l6025),hl
	ld a,#01
	ld (l601a),a
	ld (l6020),a
	ld a,#ff
	ld (l6384),a
	ld hl,(l60f8)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l626a),hl
	ld (l6236),hl
	ld (l6205),hl
	ret
;
.stop_music
.l66e1
;
	call l66fb
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,l637d
	ld bc,#0300
.l66f2
	ld (hl),c
	inc hl
	djnz l66f2
	ld a,#3f
	jp l627f
.l66fb
	ld a,i
	di
	ld a,#f3
	jp po,l6705
	ld a,#fb
.l6705
	ld (l635f),a
	ret
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.l6800
;
	db #41,#54,#31,#30,#01,#40,#42,#0f
.l680c equ $ + 4
	db #02,#06,#3f,#00,#14,#68,#1d,#68
.l6816 equ $ + 6
	db #31,#68,#37,#68,#00,#00,#00,#00
	db #00,#00,#0d,#16,#68,#02,#00,#3c
	db #38,#34,#30,#2c,#28,#24,#20,#1c
	db #18,#14,#10,#0c,#08,#04,#0d,#16
	db #68,#01,#00,#3c,#0d,#33,#68,#0b
	db #00,#3c,#38,#34,#30,#2c,#28,#24
	db #20,#1c,#18,#14,#10,#0c,#08,#04
	db #0d,#16,#68,#20,#00,#00,#00,#a2
.l6851 equ $ + 1
	db #68,#00,#a3,#68,#32,#69,#a3,#68
	db #10,#a3,#68,#d7,#68,#32,#69,#40
	db #10,#a3,#68,#d7,#68,#1b,#69,#20
	db #00,#a3,#68,#d7,#68,#6f,#69,#00
	db #a3,#68,#d7,#68,#6f,#69,#16,#00
	db #00,#a3,#68,#d7,#68,#37,#69,#40
	db #00,#a3,#68,#d7,#68,#8b,#69,#00
	db #a3,#68,#d7,#68,#8b,#69,#16,#f4
	db #0c,#9d,#69,#9d,#69,#b3,#69,#20
	db #00,#9d,#69,#9d,#69,#b3,#69,#01
.l68a2 equ $ + 2
	db #76,#68,#00,#84,#e0,#00,#00,#01
	db #02,#45,#06,#45,#02,#47,#02,#47
	db #06,#47,#02,#49,#02,#49,#06,#49
	db #02,#47,#02,#47,#06,#47,#02,#45
	db #02,#45,#06,#45,#02,#47,#02,#47
	db #06,#47,#02,#49,#02,#49,#06,#49
	db #02,#47,#02,#47,#06,#47,#00,#9c
	db #e0,#00,#00,#01,#02,#4f,#02,#4f
	db #02,#5d,#02,#5f,#02,#4f,#02,#4f
	db #02,#5f,#02,#61,#02,#4f,#02,#4f
	db #02,#61,#02,#5f,#02,#4f,#02,#4f
	db #02,#5f,#02,#5d,#02,#4f,#02,#4f
	db #02,#5d,#02,#5f,#02,#4f,#02,#4f
	db #02,#5f,#02,#61,#02,#4f,#02,#4f
	db #02,#61,#02,#5f,#02,#4f,#02,#4f
	db #02,#5f,#00,#42,#80,#00,#00,#02
	db #a6,#60,#01,#02,#67,#0a,#67,#02
	db #67,#0a,#67,#02,#67,#0a,#67,#02
	db #67,#00,#42,#80,#00,#00,#00,#ac
	db #e0,#00,#00,#01,#02,#67,#06,#67
	db #02,#6d,#02,#67,#06,#67,#02,#6b
	db #02,#6d,#02,#71,#02,#73,#02,#6d
	db #02,#67,#06,#67,#02,#6d,#02,#67
	db #06,#67,#02,#6d,#02,#67,#06,#67
	db #02,#6d,#02,#67,#02,#63,#02,#5d
	db #02,#6d,#02,#67,#06,#67,#00,#b4
	db #e0,#00,#00,#01,#02,#75,#06,#75
	db #02,#77,#02,#77,#06,#77,#02,#79
	db #02,#79,#06,#79,#02,#77,#02,#77
	db #06,#77,#00,#42,#80,#00,#00,#12
	db #a6,#60,#02,#6b,#6d,#67,#7f,#7b
	db #20,#be,#60,#03,#00,#a6,#e0,#00
	db #00,#01,#06,#6b,#06,#6d,#06,#75
	db #02,#71,#06,#71,#02,#75,#06,#77
	db #06,#7f,#00,#42,#60,#00,#42,#80
	db #00,#00,#2c,#be,#60,#02,#83,#85
	db #83,#7f,#71,#75,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#09,#00,#03,#24,#6a,#2d,#6a
	db #a0,#6a,#39,#6b,#53,#6b,#74,#6b
	db #92,#6b,#99,#6b,#af,#6b,#9f,#6c
	db #ac,#6c,#f2,#6c,#00,#00,#00,#00
	db #00,#00,#0d,#26,#6a,#02,#00,#10
	db #54,#03,#18,#5c,#03,#20,#60,#03
	db #24,#64,#03,#24,#68,#03,#28,#68
	db #03,#2c,#6c,#03,#30,#70,#03,#30
	db #70,#03,#34,#74,#03,#34,#74,#03
	db #38,#74,#03,#30,#6c,#03,#2c,#68
	db #03,#28,#68,#03,#24,#64,#03,#24
	db #64,#03,#20,#60,#03,#20,#5c,#03
	db #1c,#5c,#03,#1c,#58,#03,#18,#58
	db #03,#18,#54,#03,#14,#54,#03,#14
	db #50,#03,#10,#50,#03,#10,#50,#03
	db #10,#50,#03,#10,#4c,#03,#0c,#48
	db #03,#08,#48,#03,#08,#48,#03,#08
	db #48,#03,#08,#48,#03,#04,#44,#03
	db #04,#00,#00,#00,#00,#0d,#26,#6a
	db #01,#00,#04,#04,#04,#04,#08,#08
	db #08,#08,#0c,#0c,#0c,#0c,#0c,#10
	db #10,#10,#10,#14,#14,#14,#14,#14
	db #18,#18,#18,#18,#1c,#1c,#1c,#1c
	db #1c,#1c,#1c,#1c,#1c,#18,#18,#18
	db #18,#18,#1c,#1c,#1c,#1c,#20,#20
	db #20,#20,#20,#24,#24,#24,#24,#24
	db #24,#24,#28,#28,#28,#28,#28,#28
	db #2c,#2c,#2c,#2c,#2c,#2c,#2c,#30
	db #30,#30,#30,#30,#30,#2c,#2c,#2c
	db #2c,#2c,#28,#28,#28,#28,#28,#28
	db #28,#28,#24,#24,#24,#24,#24,#20
	db #20,#20,#20,#20,#1c,#1c,#1c,#1c
	db #1c,#1c,#18,#18,#18,#18,#18,#18
	db #18,#14,#14,#14,#14,#14,#14,#10
	db #10,#10,#10,#10,#10,#10,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#08,#08,#08
	db #08,#08,#08,#04,#04,#04,#04,#04
	db #00,#00,#00,#00,#00,#00,#0d,#26
	db #6a,#01,#00,#7e,#25,#18,#7a,#27
	db #0c,#36,#21,#30,#2c,#28,#24,#20
	db #1c,#18,#14,#10,#0c,#08,#04,#00
	db #0d,#26,#6a,#01,#00,#7e,#25,#0c
	db #3a,#27,#76,#21,#0c,#30,#6c,#0c
	db #28,#64,#0c,#20,#5c,#0c,#18,#54
	db #0c,#10,#4c,#0c,#08,#44,#0c,#00
	db #00,#0d,#26,#6a,#01,#00,#7c,#0c
	db #38,#74,#0c,#30,#6c,#0c,#28,#64
	db #0c,#20,#5c,#0c,#18,#54,#0c,#10
	db #4c,#0c,#08,#44,#0c,#00,#00,#0d
	db #26,#6a,#01,#00,#05,#3a,#0d,#94
	db #6b,#01,#00,#3c,#38,#34,#30,#2c
	db #28,#24,#20,#1c,#18,#14,#10,#0c
	db #08,#04,#00,#00,#0d,#26,#6a,#01
	db #00,#54,#03,#54,#07,#50,#0c,#50
	db #03,#50,#07,#50,#0c,#54,#03,#54
	db #07,#54,#0c,#54,#03,#58,#07,#58
	db #0c,#58,#03,#58,#07,#58,#0c,#5c
	db #03,#5c,#07,#5c,#0c,#5c,#03,#5c
	db #07,#60,#0c,#60,#03,#60,#07,#60
	db #0c,#60,#03,#60,#07,#64,#0c,#64
	db #03,#64,#07,#64,#0c,#64,#03,#64
	db #07,#68,#0c,#68,#03,#6c,#07,#6c
	db #0c,#70,#03,#70,#07,#74,#0c,#74
	db #03,#74,#07,#74,#0c,#74,#03,#74
	db #07,#78,#0c,#78,#03,#78,#07,#74
	db #0c,#74,#03,#74,#07,#70,#0c,#70
	db #03,#70,#07,#70,#0c,#70,#03,#6c
	db #07,#6c,#0c,#6c,#03,#6c,#07,#68
	db #0c,#68,#03,#68,#07,#64,#0c,#64
	db #03,#64,#07,#60,#0c,#5c,#03,#5c
	db #07,#5c,#0c,#58,#03,#58,#07,#58
	db #0c,#58,#03,#54,#07,#54,#0c,#50
	db #03,#50,#07,#50,#0c,#50,#03,#50
	db #07,#50,#0c,#4c,#03,#4c,#07,#4c
	db #0c,#4c,#03,#4c,#07,#4c,#0c,#4c
	db #03,#4c,#07,#48,#0c,#48,#03,#48
	db #07,#48,#0c,#48,#03,#48,#07,#48
	db #0c,#48,#03,#48,#07,#44,#0c,#44
	db #03,#44,#07,#44,#0c,#44,#03,#44
	db #07,#44,#0c,#44,#03,#44,#07,#44
	db #0c,#44,#03,#44,#07,#44,#0c,#44
	db #03,#44,#07,#44,#0c,#44,#03,#00
	db #00,#00,#00,#00,#0d,#26,#6a,#01
	db #00,#3c,#bc,#ff,#ff,#3c,#bc,#01
	db #00,#0d,#a1,#6c,#02,#00,#20,#a4
	db #e6,#ff,#ac,#d7,#ff,#b0,#ce,#ff
	db #00,#9c,#14,#00,#a0,#f6,#ff,#a8
	db #e5,#ff,#ac,#de,#ff,#00,#00,#98
	db #2a,#00,#9c,#09,#00,#a4,#fe,#ff
	db #a8,#ea,#ff,#00,#00,#94,#44,#00
	db #98,#1d,#00,#a0,#04,#00,#a4,#f9
	db #ff,#00,#00,#8c,#61,#00,#90,#29
	db #00,#98,#16,#00,#9c,#02,#00,#0d
	db #26,#6a,#04,#00,#bc,#fe,#ff,#b8
	db #02,#00,#34,#30,#2c,#28,#24,#20
	db #1c,#18,#14,#10,#0c,#08,#04,#00
	db #00,#0d,#26,#6a,#24,#00,#00,#00
	db #eb,#6d,#10,#1e,#74,#36,#74,#75
	db #74,#24,#00,#5f,#6e,#77,#6e,#b5
	db #6e,#00,#cd,#6e,#e5,#6e,#53,#6f
	db #20,#45,#70,#60,#70,#ce,#70,#12
	db #6e,#30,#69,#6f,#b3,#6f,#fb,#6f
	db #20,#53,#6e,#20,#ef,#70,#39,#71
	db #8c,#71,#10,#6e,#00,#d6,#71,#20
	db #72,#56,#72,#00,#ef,#70,#c7,#73
	db #fb,#6f,#20,#a0,#72,#c9,#72,#d6
	db #72,#49,#6e,#30,#e4,#72,#03,#73
	db #23,#73,#11,#4b,#6e,#30,#41,#73
	db #50,#73,#63,#73,#19,#10,#6e,#30
	db #76,#73,#89,#73,#9c,#73,#18,#34
	db #6e,#3e,#01,#01,#01,#8b,#74,#b5
	db #74,#23,#75,#24,#12,#6e,#30,#d6
	db #71,#20,#72,#56,#72,#20,#53,#6e
	db #20,#69,#6f,#b3,#6f,#fb,#6f,#10
	db #6e,#00,#ef,#70,#39,#71,#8c,#71
	db #00,#69,#6f,#c7,#73,#fb,#6f,#0e
	db #fe,#fe,#fe,#d6,#71,#20,#72,#56
	db #72,#00,#69,#6f,#39,#71,#fb,#6f
	db #00,#ef,#70,#c7,#73,#8c,#71,#10
	db #d6,#71,#20,#72,#56,#72,#02,#3e
	db #ff,#01,#00,#41,#73,#50,#73,#63
	db #73,#10,#4b,#6e,#32,#00,#50,#73
	db #63,#73,#41,#73,#1b,#eb,#6d,#14
	db #00,#85,#75,#8a,#75,#8f,#75,#40
	db #01,#12,#6d,#29,#25,#29,#25,#29
	db #25,#29,#25,#29,#25,#29,#25,#29
	db #25,#29,#25,#29,#25,#29,#25,#29
	db #25,#29,#25,#29,#25,#29,#25,#29
	db #25,#29,#25,#29,#25,#29,#25,#00
	db #21,#00,#29,#25,#29,#25,#29,#25
	db #29,#25,#29,#25,#29,#25,#29,#25
	db #29,#25,#29,#25,#29,#25,#29,#25
	db #04,#29,#25,#04,#21,#25,#02,#21
	db #25,#21,#25,#21,#09,#7d,#04,#11
	db #7d,#04,#09,#7d,#04,#0d,#7d,#39
	db #02,#35,#02,#31,#02,#2d,#02,#29
	db #00,#29,#00,#19,#02,#15,#04,#11
	db #06,#29,#00,#25,#21,#02,#25,#21
	db #04,#25,#21,#06,#25,#21,#00,#7c
	db #eb,#00,#00,#01,#0e,#aa,#67,#02
	db #08,#42,#0d,#42,#11,#42,#15,#86
	db #67,#01,#0e,#a2,#60,#02,#00,#5a
	db #e9,#00,#00,#03,#02,#5a,#4d,#02
	db #5a,#4f,#02,#5a,#4b,#02,#5a,#47
	db #02,#5a,#4d,#02,#5a,#4f,#02,#5a
	db #4b,#02,#5a,#47,#02,#5a,#4d,#02
	db #5a,#4f,#02,#5a,#4b,#02,#5a,#47
	db #02,#5a,#4d,#02,#5a,#4f,#02,#5a
	db #4b,#02,#5a,#47,#72,#6b,#04,#5a
	db #65,#03,#7a,#69,#04,#ac,#e5,#00
	db #00,#02,#1e,#b2,#43,#06,#42,#80
	db #02,#00,#42,#00,#42,#80,#00,#00
	db #0a,#aa,#6b,#01,#00,#7c,#e7,#00
	db #00,#01,#0e,#c2,#69,#02,#08,#42
	db #0d,#42,#11,#42,#15,#86,#67,#01
	db #0e,#ba,#60,#02,#00,#72,#e7,#00
	db #00,#03,#8c,#69,#05,#5a,#6b,#03
	db #8a,#67,#05,#5a,#6d,#03,#96,#67
	db #05,#5a,#6b,#03,#94,#65,#05,#72
	db #67,#03,#bc,#60,#05,#ba,#69,#04
	db #7c,#6b,#05,#5a,#6d,#03,#ac,#65
	db #05,#5a,#6b,#03,#b0,#65,#05,#5a
	db #67,#03,#c2,#63,#05,#c4,#65,#04
	db #c8,#67,#05,#5a,#6d,#03,#94,#6b
	db #05,#94,#69,#04,#92,#67,#05,#5a
	db #60,#03,#72,#65,#05,#72,#69,#04
	db #7a,#67,#05,#5a,#6d,#03,#8a,#6b
	db #05,#8a,#69,#04,#92,#67,#05,#5a
	db #60,#03,#a2,#65,#05,#a2,#63,#04
	db #aa,#60,#05,#c4,#e7,#00,#00,#02
	db #1e,#ca,#45,#06,#42,#80,#02,#00
	db #42,#80,#00,#00,#0c,#c2,#6f,#01
	db #00,#94,#e0,#00,#00,#06,#c4,#6b
	db #07,#7b,#8a,#60,#06,#55,#ba,#60
	db #07,#73,#9a,#60,#06,#a2,#60,#07
	db #86,#60,#06,#b6,#60,#07,#71,#9e
	db #60,#06,#b6,#60,#07,#71,#6b,#a4
	db #60,#06,#35,#b0,#60,#07,#6b,#92
	db #60,#06,#b6,#60,#07,#71,#6b,#86
	db #60,#06,#aa,#60,#07,#71,#92,#60
	db #06,#59,#b6,#60,#07,#8a,#60,#06
	db #bc,#60,#07,#5a,#e7,#00,#00,#03
	db #c4,#61,#04,#c4,#69,#05,#ba,#45
	db #5a,#67,#03,#ca,#65,#05,#c8,#47
	db #c0,#60,#04,#c4,#43,#d2,#67,#05
	db #0a,#93,#d4,#61,#04,#d4,#63,#05
	db #d2,#49,#5a,#67,#03,#ce,#6b,#04
	db #ca,#65,#05,#02,#c8,#60,#04,#c4
	db #43,#c2,#61,#05,#5a,#67,#03,#a4
	db #65,#05,#a2,#69,#04,#a0,#63,#05
	db #a2,#45,#6b,#c4,#e9,#00,#00,#03
	db #7b,#b2,#60,#07,#6d,#ba,#60,#03
	db #b2,#60,#07,#6d,#a2,#60,#03,#7d
	db #b6,#60,#07,#b0,#60,#03,#aa,#60
	db #07,#b6,#60,#03,#b0,#60,#07,#6b
	db #65,#b6,#60,#03,#b0,#60,#07,#6b
	db #a2,#60,#03,#77,#b0,#60,#07,#6b
	db #a2,#60,#03,#6b,#b0,#60,#07,#b6
	db #60,#03,#b0,#60,#07,#b6,#60,#03
	db #ba,#60,#07,#7d,#83,#7c,#e7,#00
	db #00,#01,#0e,#ce,#61,#02,#08,#42
	db #0b,#42,#0f,#42,#13,#86,#67,#01
	db #0e,#c8,#65,#02,#14,#7c,#60,#06
	db #72,#e7,#00,#00,#03,#a4,#69,#05
	db #5a,#6b,#03,#a2,#67,#05,#5a,#6d
	db #03,#ae,#67,#05,#5a,#6b,#03,#ac
	db #65,#05,#72,#67,#03,#bc,#60,#05
	db #ba,#69,#04,#94,#6b,#05,#5a,#6d
	db #03,#ac,#65,#05,#5a,#6b,#03,#b0
	db #65,#05,#5a,#67,#03,#c2,#63,#05
	db #c4,#65,#04,#c8,#67,#05,#5a,#6d
	db #03,#ac,#6b,#05,#ac,#69,#04,#aa
	db #60,#05,#5a,#67,#03,#8a,#65,#05
	db #8a,#69,#04,#92,#67,#05,#5a,#6d
	db #03,#a2,#6b,#05,#a2,#69,#04,#aa
	db #67,#05,#5a,#60,#03,#ba,#65,#05
	db #ba,#63,#04,#c2,#60,#05,#d2,#e7
	db #00,#00,#02,#14,#c8,#6b,#01,#02
	db #42,#0d,#42,#11,#42,#15,#ca,#65
	db #02,#06,#42,#80,#fa,#ff,#42,#80
	db #00,#00,#0c,#da,#6d,#01,#00,#94
	db #e0,#00,#00,#06,#c4,#6b,#07,#7b
	db #8a,#60,#06,#47,#ba,#60,#07,#73
	db #8a,#60,#06,#a2,#60,#07,#9a,#60
	db #06,#b6,#60,#07,#71,#98,#60,#06
	db #b6,#60,#07,#71,#6b,#8c,#60,#06
	db #65,#b0,#60,#07,#6b,#92,#60,#06
	db #b6,#60,#07,#71,#6b,#8a,#60,#06
	db #aa,#60,#07,#71,#98,#60,#06,#53
	db #b6,#60,#07,#92,#60,#06,#bc,#60
	db #07,#5a,#e3,#00,#00,#03,#ba,#61
	db #04,#c4,#69,#05,#d2,#45,#5a,#6b
	db #03,#ca,#65,#05,#c8,#47,#ca,#60
	db #04,#d2,#43,#ce,#67,#05,#5a,#69
	db #03,#c8,#63,#05,#5a,#6b,#03,#04
	db #d2,#60,#05,#da,#61,#04,#d4,#63
	db #05,#d2,#49,#5a,#67,#03,#ce,#6b
	db #04,#ca,#65,#05,#02,#c8,#60,#04
	db #c4,#43,#c2,#61,#05,#5a,#69,#03
	db #a4,#65,#05,#a2,#69,#04,#a0,#63
	db #05,#a2,#45,#71,#c4,#e9,#00,#00
	db #03,#7b,#b2,#60,#07,#6d,#ba,#60
	db #03,#b2,#60,#07,#6d,#a2,#60,#03
	db #7d,#b6,#60,#07,#b0,#60,#03,#aa
	db #60,#07,#b6,#60,#03,#b0,#60,#07
	db #6b,#65,#b6,#60,#03,#b0,#60,#07
	db #6b,#a2,#60,#03,#77,#b0,#60,#07
	db #6b,#a2,#60,#03,#6b,#b0,#60,#07
	db #b6,#60,#03,#b0,#60,#07,#b6,#60
	db #03,#ba,#60,#07,#7d,#83,#94,#e0
	db #00,#00,#06,#ac,#65,#05,#02,#8a
	db #60,#06,#55,#42,#60,#00,#02,#9a
	db #60,#06,#bc,#61,#05,#86,#65,#06
	db #42,#60,#00,#02,#9e,#60,#06,#42
	db #60,#00,#04,#a4,#60,#06,#b0,#60
	db #05,#42,#60,#00,#02,#92,#60,#06
	db #42,#60,#00,#04,#86,#60,#06,#ba
	db #60,#05,#02,#92,#60,#06,#59,#d2
	db #60,#05,#8a,#60,#06,#42,#60,#00
	db #ac,#e1,#00,#00,#05,#c4,#69,#07
	db #7b,#73,#6d,#7b,#73,#85,#63,#bc
	db #65,#05,#b6,#69,#07,#71,#6b,#77
	db #71,#6b,#b0,#61,#05,#b6,#69,#07
	db #71,#6b,#63,#77,#71,#6b,#ba,#61
	db #05,#aa,#65,#07,#71,#77,#d2,#63
	db #05,#b6,#65,#07,#7b,#7d,#c4,#e7
	db #00,#00,#03,#7b,#b2,#60,#07,#6d
	db #ba,#60,#03,#b2,#60,#07,#6d,#a2
	db #60,#03,#7d,#b6,#60,#07,#b0,#60
	db #03,#aa,#60,#07,#b6,#60,#03,#b0
	db #60,#07,#6b,#65,#b6,#60,#03,#b0
	db #60,#07,#6b,#a2,#60,#03,#77,#b0
	db #60,#07,#6b,#a2,#60,#03,#6b,#b0
	db #60,#07,#b6,#60,#03,#b0,#60,#07
	db #b6,#60,#03,#ba,#60,#07,#7d,#83
	db #7c,#e1,#00,#00,#02,#0a,#42,#09
	db #42,#0d,#42,#13,#c8,#41,#04,#42
	db #03,#42,#05,#42,#07,#42,#89,#04
	db #00,#42,#8b,#08,#00,#42,#8d,#04
	db #00,#8a,#c1,#00,#00,#0a,#90,#47
	db #00,#c4,#e1,#00,#00,#08,#0e,#b6
	db #60,#02,#16,#a8,#45,#00,#ac,#e5
	db #00,#00,#01,#42,#03,#42,#01,#1a
	db #ba,#60,#02,#00,#42,#80,#00,#00
	db #02,#88,#73,#09,#42,#0f,#02,#9a
	db #4d,#04,#ac,#4b,#08,#42,#80,#02
	db #00,#42,#00,#42,#80,#04,#00,#42
	db #80,#06,#00,#42,#80,#00,#00,#82
	db #73,#09,#42,#0f,#02,#94,#40,#42
	db #0b,#02,#a6,#40,#0a,#42,#80,#02
	db #00,#42,#00,#42,#80,#04,#00,#42
	db #80,#06,#00,#7c,#f5,#00,#00,#09
	db #42,#11,#02,#8e,#40,#42,#0d,#02
	db #a0,#4b,#0c,#42,#80,#02,#00,#42
	db #00,#42,#80,#04,#00,#42,#80,#06
	db #00,#7c,#e5,#00,#00,#0a,#0a,#90
	db #40,#06,#94,#40,#0a,#4c,#47,#00
	db #42,#80,#08,#00,#8a,#e3,#00,#00
	db #0a,#0c,#90,#4f,#04,#94,#4b,#0a
	db #4c,#4d,#00,#42,#80,#08,#00,#90
	db #e7,#00,#00,#0a,#0a,#90,#4b,#08
	db #94,#4f,#0a,#4c,#51,#00,#a6,#e7
	db #00,#00,#0b,#06,#67,#06,#67,#06
	db #a6,#4b,#08,#76,#51,#8c,#60,#01
	db #00,#42,#80,#00,#00,#cc,#67,#0b
	db #06,#8d,#06,#cc,#49,#06,#cc,#4b
	db #08,#a6,#4d,#00,#76,#ef,#00,#00
	db #0b,#06,#37,#06,#37,#06,#76,#51
	db #02,#6c,#6d,#03,#84,#60,#07,#6e
	db #6b,#03,#86,#60,#07,#70,#69,#03
	db #88,#60,#07,#72,#60,#03,#8a,#60
	db #07,#74,#67,#03,#82,#60,#07,#5a
	db #e7,#00,#00,#03,#c4,#61,#04,#c4
	db #69,#05,#ba,#45,#5a,#67,#03,#ca
	db #65,#05,#c8,#47,#c0,#60,#04,#c4
	db #43,#d2,#67,#05,#c8,#e0,#fc,#ff
	db #07,#c8,#c9,#00,#00,#ce,#45,#ba
	db #49,#b6,#43,#d2,#67,#05,#d4,#61
	db #04,#d4,#63,#05,#d2,#49,#5a,#67
	db #03,#ce,#6b,#04,#ca,#65,#05,#02
	db #c8,#60,#04,#c4,#43,#c2,#61,#05
	db #5a,#67,#03,#a4,#65,#05,#a2,#69
	db #04,#a0,#43,#a2,#45,#6b,#7c,#ef
	db #00,#00,#01,#0e,#b0,#69,#02,#08
	db #42,#0d,#42,#11,#42,#15,#86,#69
	db #01,#0e,#ba,#67,#02,#00,#ac,#e1
	db #00,#00,#02,#42,#03,#42,#05,#42
	db #07,#42,#09,#42,#0b,#42,#0d,#42
	db #0f,#42,#11,#42,#13,#c2,#43,#42
	db #05,#42,#07,#42,#09,#42,#0b,#42
	db #0d,#42,#0f,#42,#11,#42,#13,#42
	db #15,#96,#65,#0a,#0a,#5a,#77,#03
	db #02,#5a,#55,#02,#5a,#53,#02,#5a
	db #51,#02,#5a,#4d,#00,#b2,#e9,#00
	db #00,#02,#1e,#ca,#45,#06,#42,#80
	db #02,#00,#42,#80,#00,#00,#0c,#92
	db #69,#01,#00,#c4,#ef,#00,#00,#01
	db #06,#42,#80,#02,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#bc,#e3,#00
	db #00,#02,#0c,#42,#80,#02,#00,#42
	db #80,#00,#00,#06,#b0,#45,#10,#ba
	db #41,#08,#8a,#60,#06,#72,#e7,#00
	db #00,#03,#74,#69,#05,#5a,#6b,#03
	db #8a,#67,#07,#5a,#6d,#03,#7e,#67
	db #05,#5a,#6b,#03,#7c,#65,#05,#72
	db #67,#03,#a4,#60,#05,#a2,#69,#04
	db #82,#6b,#07,#5a,#6d,#03,#94,#65
	db #05,#5a,#6b,#03,#8a,#65,#07,#5a
	db #67,#03,#aa,#63,#05,#ac,#65,#04
	db #a2,#67,#07,#5a,#6d,#03,#7c,#6b
	db #05,#7c,#69,#04,#8a,#67,#07,#5a
	db #60,#03,#5a,#65,#05,#5a,#69,#04
	db #8a,#67,#07,#5a,#6d,#03,#72,#6b
	db #05,#72,#69,#04,#92,#65,#07,#5a
	db #60,#03,#8a,#63,#05,#8a,#61,#06
	db #92,#60,#05,#8a,#e7,#00,#00,#07
	db #a4,#69,#05,#92,#60,#07,#a2,#67
	db #05,#02,#ae,#40,#94,#60,#07,#ac
	db #65,#05,#82,#60,#07,#d4,#67,#05
	db #d2,#69,#04,#94,#6b,#05,#86,#60
	db #07,#c4,#65,#05,#02,#c8,#40,#02
	db #da,#43,#dc,#65,#04,#e0,#67,#05
	db #8a,#60,#07,#ac,#6b,#05,#ac,#69
	db #04,#aa,#67,#05,#02,#8a,#45,#8a
	db #67,#04,#92,#65,#05,#8a,#60,#07
	db #a2,#69,#05,#a2,#67,#04,#aa,#65
	db #05,#8a,#60,#07,#ba,#63,#05,#ba
	db #61,#04,#c2,#60,#05,#42,#80,#00
	db #00,#00,#42,#80,#00,#00,#00,#42
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
; #9e08
;
; ld de,(#9e63)
; call #6000
; de = #6800 (1st little theme) then #6a00 (soundfx) ?
;
.init_music		; added by Megachur
;
	ld de,l6800
	jp real_init_music
;
.music_info
	db "Arquimedes XXI (2012)(ESP Soft)(Fenyx Kell)",0
	db "StArkos",0

	read "music_end.asm"
