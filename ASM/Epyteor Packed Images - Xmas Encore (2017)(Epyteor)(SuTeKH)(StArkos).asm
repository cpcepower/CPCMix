; Music of Epyteor Packed Images - Xmas Encore (2017)(Epyteor)(SuTeKH)(StArkos)
; Ripped by Megachur the 12/02/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EPYTPIXE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #8020

	read "music_header.asm"

	jp l8694
	jp l802a
	jp l86e9
.l8029
	db #00
;
.play_music
.l802a
;
	xor a
	ld (l8029),a
.l802f equ $ + 1
	ld a,#01
	dec a
	jp nz,l81fb
.l8035 equ $ + 1
	ld a,#01
	dec a
	jr nz,l80a1
.l803a equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l8048
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l8048
	rra
	jr nc,l8050
	ld de,l80f1
	ldi
.l8050
	rra
	jr nc,l8058
	ld de,l8156
	ldi
.l8058
	rra
	jr nc,l8060
	ld de,l81bb
	ldi
.l8060
	ld de,l80d0
	ldi
	ldi
	ld de,l8135
	ldi
	ldi
	ld de,l819a
	ldi
	ldi
	rra
	jr nc,l807d
	ld de,l80a0
	ldi
.l807d
	rra
	jr nc,l8088
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l808c),de
.l8088
	ld (l803a),hl
.l808c equ $ + 1
	ld hl,#0000
	ld (l80aa),hl
	ld a,#01
	ld (l80a5),a
	ld (l80cb),a
	ld (l8130),a
	ld (l8195),a
.l80a0 equ $ + 1
	ld a,#01
.l80a1
	ld (l8035),a
.l80a5 equ $ + 1
	ld a,#01
	dec a
	jr nz,l80c7
.l80aa equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l80c4
	srl a
	jr nz,l80b8
	ld a,(hl)
	inc hl
.l80b8
	jr nc,l80bf
	ld (l8029),a
	jr l80c2
.l80bf
	ld (l81fa),a
.l80c2
	ld a,#01
.l80c4
	ld (l80aa),hl
.l80c7
	ld (l80a5),a
.l80cb equ $ + 1
	ld a,#01
	dec a
	jr nz,l812c
.l80d0 equ $ + 1
	ld hl,#0000
	call l8540
	ld (l80d0),hl
	jr c,l812c
	ld a,d
	rra
	jr nc,l80e3
	and #0f
	ld (l827d),a
.l80e3
	rl d
	jr nc,l80eb
	ld (l826b),ix
.l80eb
	rl d
	jr nc,l812a
	ld a,e
.l80f1 equ $ + 1
	add #00
	ld (l827c),a
	ld hl,#0000
	ld (l8268),hl
	rl d
	jr c,l810a
.l8100 equ $ + 1
	ld hl,#0000
	ld a,(l828d)
	ld (l8285),a
	jr l8127
.l810a
	ld l,b
	add hl,hl
.l810d equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l828d),a
	ld (l8285),a
	ld a,(hl)
	or a
	jr z,l8123
	ld (l836b),a
.l8123
	inc hl
	ld (l8100),hl
.l8127
	ld (l827f),hl
.l812a
	ld a,#01
.l812c
	ld (l80cb),a
.l8130 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8191
.l8135 equ $ + 1
	ld hl,#0000
	call l8540
	ld (l8135),hl
	jr c,l8191
	ld a,d
	rra
	jr nc,l8148
	and #0f
	ld (l8249),a
.l8148
	rl d
	jr nc,l8150
	ld (l8237),ix
.l8150
	rl d
	jr nc,l818f
	ld a,e
.l8156 equ $ + 1
	add #00
	ld (l8248),a
	ld hl,#0000
	ld (l8234),hl
	rl d
	jr c,l816f
.l8165 equ $ + 1
	ld hl,#0000
	ld a,(l8259)
	ld (l8251),a
	jr l818c
.l816f
	ld l,b
	add hl,hl
.l8172 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8259),a
	ld (l8251),a
	ld a,(hl)
	or a
	jr z,l8188
	ld (l836b),a
.l8188
	inc hl
	ld (l8165),hl
.l818c
	ld (l824b),hl
.l818f
	ld a,#01
.l8191
	ld (l8130),a
.l8195 equ $ + 1
	ld a,#01
	dec a
	jr nz,l81f6
.l819a equ $ + 1
	ld hl,#0000
	call l8540
	ld (l819a),hl
	jr c,l81f6
	ld a,d
	rra
	jr nc,l81ad
	and #0f
	ld (l8218),a
.l81ad
	rl d
	jr nc,l81b5
	ld (l8206),ix
.l81b5
	rl d
	jr nc,l81f4
	ld a,e
.l81bb equ $ + 1
	add #00
	ld (l8217),a
	ld hl,#0000
	ld (l8203),hl
	rl d
	jr c,l81d4
.l81ca equ $ + 1
	ld hl,#0000
	ld a,(l8228)
	ld (l8220),a
	jr l81f1
.l81d4
	ld l,b
	add hl,hl
.l81d7 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l8228),a
	ld (l8220),a
	ld a,(hl)
	or a
	jr z,l81ed
	ld (l836b),a
.l81ed
	inc hl
	ld (l81ca),hl
.l81f1
	ld (l821a),hl
.l81f4
	ld a,#01
.l81f6
	ld (l8195),a
.l81fa equ $ + 1
	ld a,#01
.l81fb
	ld (l802f),a
	ld iy,l8382
.l8203 equ $ + 1
	ld hl,#0000
.l8206 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8203),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8218 equ $ + 2
.l8217 equ $ + 1
	ld de,#0000
.l821a equ $ + 1
	ld hl,#0000
	call l838d
.l8220 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8229
	ld (l821a),hl
.l8228 equ $ + 1
	ld a,#06
.l8229
	ld (l8220),a
	ld a,lx
	ex af,af'
	ld iy,l8380
.l8234 equ $ + 1
	ld hl,#0000
.l8237 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8234),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l8249 equ $ + 2
.l8248 equ $ + 1
	ld de,#0000
.l824b equ $ + 1
	ld hl,#0000
	call l838d
.l8251 equ $ + 1
	ld a,#01
	dec a
	jr nz,l825a
	ld (l824b),hl
.l8259 equ $ + 1
	ld a,#06
.l825a
	ld (l8251),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l837e
.l8268 equ $ + 1
	ld hl,#0000
.l826b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8268),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l827d equ $ + 2
.l827c equ $ + 1
	ld de,#0000
.l827f equ $ + 1
	ld hl,#0000
	call l838d
.l8285 equ $ + 1
	ld a,#01
	dec a
	jr nz,l828e
	ld (l827f),hl
.l828d equ $ + 1
	ld a,#06
.l828e
	ld (l8285),a
	ex af,af'
	or lx
.l8294
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l837e
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
.l836b equ $ + 1
	cp #ff
	ret z
	ld (l836b),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l837e
	nop
	nop
.l8380
	nop
	nop
.l8382
	nop
	nop
.l8384
	nop
.l8385
	nop
	nop
	nop
	nop
	nop
.l838a
	nop
	nop
.l838c
	nop
.l838d
	ld b,(hl)
	inc hl
	rr b
	jp c,l83eb
	rr b
	jr c,l83bb
	ld a,b
	and #0f
	jr nz,l83a4
	ld (iy+#07),a
	ld lx,#09
	ret
.l83a4
	ld lx,#08
	sub d
	jr nc,l83ab
	xor a
.l83ab
	ld (iy+#07),a
	rr b
	call l8514
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l83bb
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l83cb
	ld (l8384),a
	ld lx,#00
.l83cb
	ld a,b
	and #0f
	sub d
	jr nc,l83d2
	xor a
.l83d2
	ld (iy+#07),a
	bit 5,c
	jr nz,l83dc
	inc lx
	ret
.l83dc
	rr b
	bit 6,c
	call l8506
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l83eb
	rr b
	jr nc,l83fe
	ld a,(l8285)
	ld c,a
	ld a,(l828d)
	cp c
	jr nz,l83fe
	ld a,#fe
	ld (l836b),a
.l83fe
	bit 1,b
	jp nz,l84b7
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l838c),a
	bit 0,b
	jr z,l846d
	bit 2,b
	call l8506
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l842d),a
	ld a,b
	exx
.l842d equ $ + 1
	jr l842e
.l842e
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
	jr nc,l844d
	inc hl
.l844d
	bit 5,a
	jr z,l845d
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
.l845d
	ld (l838a),hl
	exx
.l8461
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l8384),a
	ld lx,#00
	ret
.l846d
	bit 2,b
	call l8506
	ld (l838a),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l8481),a
	ld a,b
	exx
.l8481 equ $ + 1
	jr l8482
.l8482
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
	jr z,l84ae
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
.l84ae
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l8461
.l84b7
	bit 0,b
	jr z,l84c2
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l838d
.l84c2
	ld (iy+#07),#10
	bit 5,b
	jr nz,l84cf
	ld lx,#09
	jr l84e2
.l84cf
	ld lx,#08
	ld hx,e
	bit 2,b
	call l8506
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l84e2
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l838c),a
	rr b
	rr b
	bit 2,b
	call l8506
	ld (l838a),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l8384),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l8506
	jr z,l8514
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
.l8514
	bit 4,b
	jr z,l8524
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
.l8524
	ld a,e
	bit 3,b
	jr z,l8531
	add (hl)
	inc hl
	cp #90
	jr c,l8531
	ld a,#8f
.l8531
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l8574
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l8540
	ld a,(hl)
	inc hl
	srl a
	jr c,l8567
	sub #20
	jr c,l8571
	jr z,l8563
	dec a
	ld e,a
.l854e
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l855c
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l855c
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l8563
	ld e,(hl)
	inc hl
	jr l854e
.l8567
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l8571
	add #20
	ret
.l8574
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
.l8694
;
	ld hl,#0009
	add hl,de
	ld de,l81fa
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l810d),hl
	ld (l8172),hl
	ld (l81d7),hl
	add hl,bc
	ld de,l80a0
	ldi
	ld de,l80f1
	ldi
	ld de,l8156
	ldi
	ld de,l81bb
	ldi
	ld de,l808c
	ldi
	ldi
	ld (l803a),hl
	ld a,#01
	ld (l802f),a
	ld (l8035),a
	ld a,#ff
	ld (l838c),a
	ld hl,(l810d)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l827f),hl
	ld (l824b),hl
	ld (l821a),hl
	ret
;
.stop_music
.l86e9
;
	ld hl,l8385
	ld bc,#0300
.l86ef
	ld (hl),c
	inc hl
	djnz l86ef
	ld a,#3f
	jp l8294

	db #00,#00,#00,#00,#00,#00,#00,#00
.l8700
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#08,#73,#03,#26,#87,#2f,#87
	db #38,#87,#51,#87,#6d,#87,#8e,#87
	db #af,#87,#b5,#87,#bd,#87,#c4,#87
	db #0b,#89,#18,#8a,#2c,#8a,#00,#00
	db #00,#00,#00,#00,#0d,#28,#87,#01
	db #fe,#2a,#05,#05,#48,#0d,#33,#87
	db #01,#00,#2a,#05,#7a,#27,#0c,#36
	db #26,#72,#25,#0c,#2e,#24,#6a,#23
	db #0c,#26,#22,#62,#21,#0c,#0d,#28
	db #87,#01,#00,#2a,#05,#7c,#08,#78
	db #04,#34,#70,#fc,#6c,#f8,#68,#f4
	db #64,#f0,#60,#ec,#5c,#e8,#58,#e4
	db #54,#e0,#0d,#28,#87,#01,#00,#30
	db #70,#03,#70,#0c,#70,#07,#2c,#6c
	db #03,#6c,#0c,#6c,#07,#28,#68,#03
	db #64,#0c,#64,#07,#20,#60,#03,#5c
	db #0c,#5c,#07,#0d,#28,#87,#01,#00
	db #30,#70,#04,#70,#0c,#70,#07,#2c
	db #6c,#04,#6c,#0c,#6c,#07,#28,#68
	db #04,#64,#0c,#64,#07,#20,#60,#04
	db #5c,#0c,#5c,#07,#0d,#28,#87,#01
	db #00,#3c,#0d,#b1,#87,#01,#00,#bc
	db #f7,#ff,#0d,#b7,#87,#01,#00,#05
	db #5c,#0d,#bf,#87,#01,#00,#68,#0c
	db #74,#0c,#38,#38,#38,#38,#38,#38
	db #b4,#ff,#ff,#b4,#ff,#ff,#b4,#01
	db #00,#b4,#01,#00,#b4,#ff,#ff,#b4
	db #ff,#ff,#b4,#01,#00,#b4,#01,#00
	db #b0,#fe,#ff,#b0,#fe,#ff,#b0,#02
	db #00,#b0,#02,#00,#b0,#fe,#ff,#b0
	db #fe,#ff,#b0,#02,#00,#b0,#02,#00
	db #ac,#fd,#ff,#ac,#fd,#ff,#ac,#03
	db #00,#ac,#03,#00,#ac,#fd,#ff,#ac
	db #fd,#ff,#ac,#03,#00,#ac,#03,#00
	db #a8,#fc,#ff,#a8,#fc,#ff,#a8,#04
	db #00,#a8,#04,#00,#a8,#fc,#ff,#a8
	db #fc,#ff,#a8,#04,#00,#a8,#04,#00
	db #a4,#fe,#ff,#a4,#fe,#ff,#a4,#02
	db #00,#a4,#02,#00,#a4,#fe,#ff,#a4
	db #fe,#ff,#a4,#02,#00,#a4,#02,#00
	db #a0,#fe,#ff,#a0,#fe,#ff,#a0,#02
	db #00,#a0,#02,#00,#a0,#fe,#ff,#a0
	db #fe,#ff,#a0,#02,#00,#a0,#02,#00
	db #9c,#fe,#ff,#9c,#fe,#ff,#9c,#02
	db #00,#9c,#02,#00,#9c,#fe,#ff,#9c
	db #fe,#ff,#9c,#02,#00,#9c,#02,#00
	db #98,#fe,#ff,#98,#fe,#ff,#98,#02
	db #00,#98,#02,#00,#98,#fe,#ff,#98
	db #fe,#ff,#98,#02,#00,#98,#02,#00
	db #94,#fe,#ff,#94,#fe,#ff,#94,#02
	db #00,#94,#02,#00,#94,#fe,#ff,#94
	db #fe,#ff,#94,#02,#00,#94,#02,#00
	db #90,#fe,#ff,#90,#fe,#ff,#90,#02
	db #00,#90,#02,#00,#90,#fe,#ff,#90
	db #fe,#ff,#90,#02,#00,#90,#02,#00
	db #8c,#fe,#ff,#8c,#fe,#ff,#8c,#02
	db #00,#8c,#02,#00,#8c,#fe,#ff,#8c
	db #fe,#ff,#8c,#02,#00,#8c,#02,#00
	db #88,#fe,#ff,#88,#fe,#ff,#88,#02
	db #00,#88,#02,#00,#88,#fe,#ff,#88
	db #fe,#ff,#88,#02,#00,#88,#02,#00
	db #84,#fe,#ff,#84,#fe,#ff,#84,#02
	db #00,#84,#02,#00,#84,#fe,#ff,#84
	db #fe,#ff,#84,#02,#00,#84,#02,#00
	db #0d,#28,#87,#01,#00,#ac,#fd,#ff
	db #ac,#fd,#ff,#ac,#03,#00,#ac,#03
	db #00,#ac,#fd,#ff,#ac,#fd,#ff,#ac
	db #03,#00,#ac,#03,#00,#a8,#fc,#ff
	db #a8,#fc,#ff,#a8,#04,#00,#a8,#04
	db #00,#a8,#fc,#ff,#a8,#fc,#ff,#a8
	db #04,#00,#a8,#04,#00,#a4,#fe,#ff
	db #a4,#fe,#ff,#a4,#02,#00,#a4,#02
	db #00,#a4,#fe,#ff,#a4,#fe,#ff,#a4
	db #02,#00,#a4,#02,#00,#a0,#fe,#ff
	db #a0,#fe,#ff,#a0,#02,#00,#a0,#02
	db #00,#a0,#fe,#ff,#a0,#fe,#ff,#a0
	db #02,#00,#a0,#02,#00,#9c,#fe,#ff
	db #9c,#fe,#ff,#9c,#02,#00,#9c,#02
	db #00,#9c,#fe,#ff,#9c,#fe,#ff,#9c
	db #02,#00,#9c,#02,#00,#98,#fe,#ff
	db #98,#fe,#ff,#98,#02,#00,#98,#02
	db #00,#98,#fe,#ff,#98,#fe,#ff,#98
	db #02,#00,#98,#02,#00,#94,#fe,#ff
	db #94,#fe,#ff,#94,#02,#00,#94,#02
	db #00,#94,#fe,#ff,#94,#fe,#ff,#94
	db #02,#00,#94,#02,#00,#90,#fe,#ff
	db #90,#fe,#ff,#90,#02,#00,#90,#02
	db #00,#90,#fe,#ff,#90,#fe,#ff,#90
	db #02,#00,#90,#02,#00,#8c,#fe,#ff
	db #8c,#fe,#ff,#8c,#02,#00,#8c,#02
	db #00,#8c,#fe,#ff,#8c,#fe,#ff,#8c
	db #02,#00,#8c,#02,#00,#88,#fe,#ff
	db #88,#fe,#ff,#88,#02,#00,#88,#02
	db #00,#88,#fe,#ff,#88,#fe,#ff,#88
	db #02,#00,#88,#02,#00,#84,#fe,#ff
	db #84,#fe,#ff,#84,#02,#00,#84,#02
	db #00,#84,#fe,#ff,#84,#fe,#ff,#84
	db #02,#00,#84,#02,#00,#0d,#28,#87
	db #01,#00,#3c,#38,#34,#30,#2c,#28
	db #24,#20,#1c,#18,#14,#10,#0c,#08
	db #04,#0d,#28,#87,#01,#00,#3c,#7c
	db #0c,#7c,#18,#78,#0c,#38,#78,#0c
	db #74,#18,#74,#0c,#34,#70,#0c,#70
	db #18,#70,#0c,#2c,#6c,#0c,#6c,#18
	db #68,#0c,#28,#68,#0c,#64,#18,#64
	db #0c,#24,#60,#0c,#60,#18,#60,#0c
	db #1c,#5c,#0c,#5c,#18,#58,#0c,#18
	db #58,#0c,#54,#18,#54,#0c,#14,#50
	db #0c,#50,#18,#50,#0c,#0c,#4c,#0c
	db #4c,#18,#48,#0c,#08,#48,#0c,#44
	db #18,#44,#0c,#04,#0d,#28,#87,#01
	db #00,#00,#00,#c5,#8a,#00,#c0,#8b
	db #c5,#8b,#ca,#8b,#30,#27,#8b,#c6
	db #8a,#a9,#8b,#40,#c3,#8a,#00,#cf
	db #8b,#51,#8c,#b5,#8c,#00,#27,#8b
	db #c6,#8a,#d5,#8c,#00,#cf,#8b,#51
	db #8c,#b5,#8c,#00,#27,#8b,#c6,#8a
	db #0b,#8d,#00,#cf,#8b,#51,#8c,#3e
	db #8d,#00,#27,#8b,#c6,#8a,#6a,#8d
	db #01,#96,#8a,#21,#00,#05,#8a,#e1
	db #00,#00,#01,#02,#4b,#02,#8a,#60
	db #02,#82,#60,#01,#47,#4b,#02,#47
	db #4b,#02,#8a,#60,#02,#8a,#60,#01
	db #43,#02,#4b,#02,#4b,#02,#8a,#60
	db #02,#82,#60,#01,#47,#41,#02,#3f
	db #41,#02,#8a,#60,#02,#86,#60,#01
	db #43,#47,#4b,#02,#4b,#02,#8a,#60
	db #02,#82,#60,#01,#47,#4b,#02,#47
	db #4b,#02,#8a,#60,#02,#8a,#60,#01
	db #43,#02,#4b,#02,#4b,#02,#8a,#60
	db #02,#82,#60,#01,#47,#41,#08,#8a
	db #69,#02,#8a,#45,#8a,#41,#4b,#8a
	db #e1,#00,#00,#03,#02,#a2,#60,#04
	db #02,#8a,#60,#03,#4b,#a2,#60,#04
	db #02,#8a,#60,#03,#02,#a2,#60,#04
	db #02,#8a,#60,#03,#02,#a2,#60,#04
	db #63,#8a,#60,#03,#02,#a2,#60,#04
	db #02,#8a,#60,#03,#4b,#a2,#60,#04
	db #02,#8a,#60,#03,#02,#9e,#60,#05
	db #02,#8a,#60,#03,#02,#9e,#60,#05
	db #5f,#8a,#60,#03,#02,#a2,#60,#04
	db #02,#8a,#60,#03,#4b,#a2,#60,#04
	db #02,#8a,#60,#03,#02,#a2,#60,#04
	db #02,#8a,#60,#03,#02,#a2,#60,#04
	db #63,#8a,#60,#03,#02,#9a,#60,#05
	db #02,#8a,#60,#03,#4b,#9a,#60,#05
	db #5b,#8a,#60,#03,#02,#98,#60,#04
	db #02,#8a,#60,#03,#02,#98,#60,#04
	db #59,#5a,#e7,#00,#00,#06,#02,#42
	db #09,#02,#42,#0b,#02,#42,#0d,#22
	db #17,#0e,#1b,#1e,#13,#0e,#11,#00
	db #5a,#e7,#00,#00,#07,#8a,#e1,#00
	db #00,#08,#5a,#e7,#00,#00,#06,#8a
	db #e1,#00,#00,#03,#02,#a2,#60,#04
	db #02,#8a,#60,#03,#4b,#a2,#60,#04
	db #02,#8a,#60,#03,#02,#a2,#60,#04
	db #02,#8a,#60,#03,#02,#a2,#60,#04
	db #63,#8a,#60,#03,#02,#a2,#60,#04
	db #02,#8a,#60,#03,#4b,#a2,#60,#04
	db #02,#8a,#60,#03,#02,#9e,#60,#05
	db #02,#8a,#60,#03,#02,#9e,#60,#05
	db #5f,#8a,#60,#03,#02,#a2,#60,#04
	db #02,#8a,#60,#03,#4b,#a2,#60,#04
	db #02,#8a,#60,#03,#02,#a2,#60,#04
	db #02,#8a,#60,#03,#02,#a2,#60,#04
	db #63,#8a,#60,#03,#02,#a2,#60,#04
	db #02,#8a,#60,#03,#4b,#a2,#60,#04
	db #02,#8a,#60,#03,#02,#9e,#60,#05
	db #02,#8a,#60,#03,#02,#9e,#60,#05
	db #5f,#8a,#e1,#00,#00,#01,#02,#4b
	db #02,#8a,#60,#02,#82,#60,#01,#47
	db #4b,#02,#47,#4b,#02,#8a,#60,#02
	db #8a,#60,#01,#43,#02,#4b,#02,#4b
	db #02,#8a,#60,#02,#82,#60,#01,#47
	db #41,#02,#3f,#41,#02,#8a,#60,#02
	db #86,#60,#01,#43,#47,#4b,#02,#4b
	db #02,#8a,#60,#02,#82,#60,#01,#47
	db #4b,#02,#47,#4b,#02,#8a,#60,#02
	db #8a,#60,#01,#43,#02,#4b,#02,#4b
	db #02,#8a,#60,#02,#82,#60,#01,#47
	db #41,#02,#3f,#41,#02,#8a,#60,#02
	db #86,#60,#01,#43,#47,#a2,#e1,#00
	db #00,#09,#1e,#69,#04,#67,#04,#63
	db #02,#69,#04,#67,#04,#6d,#02,#71
	db #1e,#77,#04,#71,#04,#6d,#02,#69
	db #04,#67,#04,#5f,#00,#98,#e1,#00
	db #00,#09,#0e,#55,#0e,#51,#0e,#4f
	db #04,#47,#04,#3d,#42,#80,#ec,#ff
	db #42,#00,#80,#e0,#00,#00,#0a,#1c
	db #b0,#e0,#7e,#00,#0b,#42,#00,#71
	db #42,#00,#6d,#6d,#42,#00,#67,#42
	db #00,#67,#42,#00,#67,#63,#42,#00
	db #5f,#42,#00,#a2,#e1,#00,#00,#09
	db #08,#5f,#63,#67,#69,#08,#67,#69
	db #6d,#71,#08,#63,#69,#6d,#77,#71
	db #6d,#69,#67,#5f,#59,#5f,#59,#0a
	db #55,#06,#51,#04,#4f,#04,#4b,#0e
	db #b0,#e0,#7e,#00,#0b,#71,#42,#00
	db #6d,#6b,#42,#00,#67,#63,#98,#e1
	db #00,#00,#0c,#04,#55,#04,#51,#06
	db #4b,#0a,#59,#04,#55,#04,#59,#02
	db #5f,#06,#59,#02,#5f,#02,#63,#04
	db #5f,#04,#59,#02,#63,#04,#5f,#04
	db #59,#02,#63,#04,#5f,#04,#59,#02
	db #5f,#00,#a2,#e1,#00,#00,#0c,#08
	db #5f,#63,#67,#69,#08,#67,#69,#6d
	db #71,#08,#63,#69,#6d,#77,#71,#6d
	db #69,#67,#5f,#59,#5f,#59,#0a,#55
	db #06,#51,#04,#4f,#04,#4b,#0e,#b0
	db #e0,#7e,#00,#0b,#71,#42,#00,#6d
	db #6b,#42,#00,#67,#63,#00,#00
;
.init_music	; #9101 - added by Megachur
;
	ld de,l8700
	jp real_init_music
;
.music_info
	db "Epyteor Packed Images - Xmas Encore (2017)(Epyteor)(SuTeKH)",0
	db "StArkos",0

	read "music_end.asm"
