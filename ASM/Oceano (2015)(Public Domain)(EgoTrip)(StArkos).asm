; Music of Oceano (2015)(Public Domain)(EgoTrip)(StArkos)
; Ripped by Megachur the 25/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OCEANO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	jp l8009
	jp l8027
	jp l801b
.l8009
	call l86d6
	ld hl,l804d
.l8010 equ $ + 1
	ld de,#0000
	ld a,d
	ld (l803c),a
	add hl,de
	ld a,(hl)
	ld (l803e),a
.l801b
	ld hl,l8030
	ld bc,l8100
	ld de,l803a
	jp #bce0
.l8027
	ld hl,l8030
	call #bce6
	jp l8730
.l8030
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l803a
	di
.l803c equ $ + 1
	ld a,#00
.l803e equ $ + 1
	cp #05
	jr z,l8046
	inc a
	ld (l803c),a
	ret
.l8046
	xor a
	ld (l803c),a
	jp l8054
.l804d
	ld de,#050b
	ld (bc),a
.l8053 equ $ + 2
	ld bc,#0000
;
.play_music
.l8054
;
	call l874a
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l8053),a
.l8064 equ $ + 1
	ld a,#01
	dec a
	jp nz,l8230
.l806a equ $ + 1
	ld a,#01
	dec a
	jr nz,l80d6
.l806f equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l807d
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l807d
	rra
	jr nc,l8085
	ld de,l8126
	ldi
.l8085
	rra
	jr nc,l808d
	ld de,l818b
	ldi
.l808d
	rra
	jr nc,l8095
	ld de,l81f0
	ldi
.l8095
	ld de,l8105
	ldi
	ldi
	ld de,l816a
	ldi
	ldi
	ld de,l81cf
	ldi
	ldi
	rra
	jr nc,l80b2
	ld de,l80d5
	ldi
.l80b2
	rra
	jr nc,l80bd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l80c1),de
.l80bd
	ld (l806f),hl
.l80c1 equ $ + 1
	ld hl,#0000
	ld (l80df),hl
	ld a,#01
	ld (l80da),a
	ld (l8100),a
	ld (l8165),a
	ld (l81ca),a
.l80d5 equ $ + 1
	ld a,#01
.l80d6
	ld (l806a),a
.l80da equ $ + 1
	ld a,#01
	dec a
	jr nz,l80fc
.l80df equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l80f9
	srl a
	jr nz,l80ed
	ld a,(hl)
	inc hl
.l80ed
	jr nc,l80f4
	ld (l8053),a
	jr l80f7
.l80f4
	ld (l822f),a
.l80f7
	ld a,#01
.l80f9
	ld (l80df),hl
.l80fc
	ld (l80da),a
.l8100 equ $ + 1
	ld a,#01
	dec a
	jr nz,l8161
.l8105 equ $ + 1
	ld hl,#0000
	call l8582
	ld (l8105),hl
	jr c,l8161
	ld a,d
	rra
	jr nc,l8118
	and #0f
	ld (l82b2),a
.l8118
	rl d
	jr nc,l8120
	ld (l82a0),ix
.l8120
	rl d
	jr nc,l815f
	ld a,e
.l8126 equ $ + 1
	add #00
	ld (l82b1),a
	ld hl,#0000
	ld (l829d),hl
	rl d
	jr c,l813f
.l8135 equ $ + 1
	ld hl,#0000
	ld a,(l82c2)
	ld (l82ba),a
	jr l815c
.l813f
	ld l,b
	add hl,hl
.l8142 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l82c2),a
	ld (l82ba),a
	ld a,(hl)
	or a
	jr z,l8158
	ld (l83ad),a
.l8158
	inc hl
	ld (l8135),hl
.l815c
	ld (l82b4),hl
.l815f
	ld a,#01
.l8161
	ld (l8100),a
.l8165 equ $ + 1
	ld a,#01
	dec a
	jr nz,l81c6
.l816a equ $ + 1
	ld hl,#0000
	call l8582
	ld (l816a),hl
	jr c,l81c6
	ld a,d
	rra
	jr nc,l817d
	and #0f
	ld (l827e),a
.l817d
	rl d
	jr nc,l8185
	ld (l826c),ix
.l8185
	rl d
	jr nc,l81c4
	ld a,e
.l818b equ $ + 1
	add #00
	ld (l827d),a
	ld hl,#0000
	ld (l8269),hl
	rl d
	jr c,l81a4
.l819a equ $ + 1
	ld hl,#0000
	ld a,(l828e)
	ld (l8286),a
	jr l81c1
.l81a4
	ld l,b
	add hl,hl
.l81a7 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l828e),a
	ld (l8286),a
	ld a,(hl)
	or a
	jr z,l81bd
	ld (l83ad),a
.l81bd
	inc hl
	ld (l819a),hl
.l81c1
	ld (l8280),hl
.l81c4
	ld a,#01
.l81c6
	ld (l8165),a
.l81ca equ $ + 1
	ld a,#01
	dec a
	jr nz,l822b
.l81cf equ $ + 1
	ld hl,#0000
	call l8582
	ld (l81cf),hl
	jr c,l822b
	ld a,d
	rra
	jr nc,l81e2
	and #0f
	ld (l824d),a
.l81e2
	rl d
	jr nc,l81ea
	ld (l823b),ix
.l81ea
	rl d
	jr nc,l8229
	ld a,e
.l81f0 equ $ + 1
	add #00
	ld (l824c),a
	ld hl,#0000
	ld (l8238),hl
	rl d
	jr c,l8209
.l81ff equ $ + 1
	ld hl,#0000
	ld a,(l825d)
	ld (l8255),a
	jr l8226
.l8209
	ld l,b
	add hl,hl
.l820c equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l825d),a
	ld (l8255),a
	ld a,(hl)
	or a
	jr z,l8222
	ld (l83ad),a
.l8222
	inc hl
	ld (l81ff),hl
.l8226
	ld (l824f),hl
.l8229
	ld a,#01
.l822b
	ld (l81ca),a
.l822f equ $ + 1
	ld a,#01
.l8230
	ld (l8064),a
	ld iy,l83c4
.l8238 equ $ + 1
	ld hl,#0000
.l823b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8238),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l824d equ $ + 2
.l824c equ $ + 1
	ld de,#0000
.l824f equ $ + 1
	ld hl,#0000
	call l83cf
.l8255 equ $ + 1
	ld a,#01
	dec a
	jr nz,l825e
	ld (l824f),hl
.l825d equ $ + 1
	ld a,#06
.l825e
	ld (l8255),a
	ld a,lx
	ex af,af'
	ld iy,l83c2
.l8269 equ $ + 1
	ld hl,#0000
.l826c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l8269),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l827e equ $ + 2
.l827d equ $ + 1
	ld de,#0000
.l8280 equ $ + 1
	ld hl,#0000
	call l83cf
.l8286 equ $ + 1
	ld a,#01
	dec a
	jr nz,l828f
	ld (l8280),hl
.l828e equ $ + 1
	ld a,#06
.l828f
	ld (l8286),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l83c0
.l829d equ $ + 1
	ld hl,#0000
.l82a0 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l829d),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l82b2 equ $ + 2
.l82b1 equ $ + 1
	ld de,#0000
.l82b4 equ $ + 1
	ld hl,#0000
	call l83cf
.l82ba equ $ + 1
	ld a,#01
	dec a
	jr nz,l82c3
	ld (l82b4),hl
.l82c2 equ $ + 1
	ld a,#06
.l82c3
	ld (l82ba),a
	ex af,af'
	or lx
.l82c9
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l83c0
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
	call l83ab
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.l83a9
	nop
	ret
.l83ab
	ld a,(hl)
.l83ad equ $ + 1
	cp #ff
	ret z
	ld (l83ad),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l83c0
	nop
	nop
.l83c2
	nop
	nop
.l83c4
	nop
	nop
.l83c6
	nop
.l83c7
	nop
	nop
	nop
	nop
	nop
.l83cc
	nop
	nop
.l83ce
	nop
.l83cf
	ld b,(hl)
	inc hl
	rr b
	jp c,l842d
	rr b
	jr c,l83fd
	ld a,b
	and #0f
	jr nz,l83e6
	ld (iy+#07),a
	ld lx,#09
	ret
.l83e6
	ld lx,#08
	sub d
	jr nc,l83ed
	xor a
.l83ed
	ld (iy+#07),a
	rr b
	call l8556
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l83fd
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l840d
	ld (l83c6),a
	ld lx,#00
.l840d
	ld a,b
	and #0f
	sub d
	jr nc,l8414
	xor a
.l8414
	ld (iy+#07),a
	bit 5,c
	jr nz,l841e
	inc lx
	ret
.l841e
	rr b
	bit 6,c
	call l8548
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l842d
	rr b
	jr nc,l8440
	ld a,(l82ba)
	ld c,a
	ld a,(l82c2)
	cp c
	jr nz,l8440
	ld a,#fe
	ld (l83ad),a
.l8440
	bit 1,b
	jp nz,l84f9
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l83ce),a
	bit 0,b
	jr z,l84af
	bit 2,b
	call l8548
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l846f),a
	ld a,b
	exx
.l846f equ $ + 1
	jr l8470
.l8470
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
	jr nc,l848f
	inc hl
.l848f
	bit 5,a
	jr z,l849f
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
.l849f
	ld (l83cc),hl
	exx
.l84a3
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l83c6),a
	ld lx,#00
	ret
.l84af
	bit 2,b
	call l8548
	ld (l83cc),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l84c3),a
	ld a,b
	exx
.l84c3 equ $ + 1
	jr l84c4
.l84c4
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
	jr z,l84f0
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
.l84f0
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l84a3
.l84f9
	bit 0,b
	jr z,l8504
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l83cf
.l8504
	ld (iy+#07),#10
	bit 5,b
	jr nz,l8511
	ld lx,#09
	jr l8524
.l8511
	ld lx,#08
	ld hx,e
	bit 2,b
	call l8548
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l8524
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l83ce),a
	rr b
	rr b
	bit 2,b
	call l8548
	ld (l83cc),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l83c6),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l8548
	jr z,l8556
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
.l8556
	bit 4,b
	jr z,l8566
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
.l8566
	ld a,e
	bit 3,b
	jr z,l8573
	add (hl)
	inc hl
	cp #90
	jr c,l8573
	ld a,#8f
.l8573
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l85b6
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l8582
	ld a,(hl)
	inc hl
	srl a
	jr c,l85a9
	sub #20
	jr c,l85b3
	jr z,l85a5
	dec a
	ld e,a
.l8590
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l859e
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l859e
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l85a5
	ld e,(hl)
	inc hl
	jr l8590
.l85a9
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l85b3
	add #20
	ret
.l85b6
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
.l86d6
;
	ld hl,#0008
	add hl,de
	ld de,l8010
	ldi
	ld de,l822f
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l8142),hl
	ld (l81a7),hl
	ld (l820c),hl
	add hl,bc
	ld de,l80d5
	ldi
	ld de,l8126
	ldi
	ld de,l818b
	ldi
	ld de,l81f0
	ldi
	ld de,l80c1
	ldi
	ldi
	ld (l806f),hl
	ld a,#01
	ld (l8064),a
	ld (l806a),a
	ld a,#ff
	ld (l83ce),a
	ld hl,(l8142)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l82b4),hl
	ld (l8280),hl
	ld (l824f),hl
	ret
.l8730
	call l874a
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,l83c7
	ld bc,#0300
.l8741
	ld (hl),c
	inc hl
	djnz l8741
	ld a,#3f
	jp l82c9
.l874a
	ld a,i
	di
	ld a,#f3
	jp po,l8754
	ld a,#fb
.l8754
	ld (l83a9),a
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
.l8800
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#6b,#00,#16,#88,#1f,#88
	db #34,#88,#48,#88,#5e,#88,#00,#00
	db #00,#00,#00,#00,#0d,#18,#88,#01
	db #00,#3e,#21,#38,#34,#30,#2c,#28
	db #24,#20,#1c,#18,#14,#10,#0c,#08
	db #04,#0d,#18,#88,#01,#00,#3c,#38
	db #34,#30,#2c,#28,#24,#20,#1c,#18
	db #14,#10,#0c,#08,#04,#0d,#18,#88
	db #01,#00,#3e,#29,#3a,#26,#34,#30
	db #2c,#28,#24,#20,#1c,#18,#14,#10
	db #0c,#08,#04,#0d,#18,#88,#01,#00
	db #3c,#38,#34,#30,#2c,#28,#a4,#ff
	db #ff,#a4,#fe,#ff,#a4,#ff,#ff,#24
	db #24,#24,#24,#24,#0d,#66,#88,#40
	db #00,#00,#00,#9c,#88,#00,#a2,#88
	db #9d,#88,#30,#89,#00,#a2,#88,#9d
	db #88,#38,#89,#00,#a2,#88,#9a,#89
	db #9f,#89,#00,#66,#89,#c7,#89,#cc
	db #89,#01,#7d,#88,#00,#42,#80,#00
	db #00,#00,#92,#e3,#00,#00,#01,#7a
	db #60,#02,#a0,#60,#01,#02,#9c,#60
	db #03,#02,#92,#60,#01,#7a,#60,#02
	db #59,#02,#94,#60,#03,#02,#92,#60
	db #01,#7a,#60,#02,#4f,#02,#92,#60
	db #01,#7a,#60,#02,#a0,#60,#01,#02
	db #9c,#60,#03,#02,#92,#60,#01,#7a
	db #60,#02,#59,#02,#94,#60,#03,#02
	db #92,#60,#01,#7a,#60,#02,#8e,#60
	db #03,#02,#92,#60,#01,#7a,#60,#02
	db #a0,#60,#01,#02,#9c,#60,#03,#02
	db #92,#60,#01,#7a,#60,#02,#59,#02
	db #94,#60,#03,#02,#92,#60,#01,#7a
	db #60,#02,#4f,#02,#92,#60,#01,#7a
	db #60,#02,#a0,#60,#01,#02,#9c,#60
	db #03,#02,#92,#60,#01,#7a,#60,#02
	db #59,#02,#94,#60,#03,#02,#92,#60
	db #01,#7a,#60,#02,#8e,#60,#03,#00
	db #42,#60,#00,#42,#80,#00,#00,#00
	db #aa,#e3,#00,#00,#04,#06,#79,#06
	db #7b,#02,#75,#06,#6d,#02,#6b,#06
	db #79,#06,#7b,#02,#75,#02,#6d,#02
	db #67,#02,#6b,#06,#79,#06,#7b,#02
	db #75,#06,#6d,#02,#6b,#0e,#67,#06
	db #ea,#65,#02,#a5,#9d,#97,#7a,#e0
	db #00,#00,#02,#04,#3b,#04,#3b,#02
	db #3d,#04,#3d,#04,#3d,#02,#41,#04
	db #41,#04,#41,#02,#45,#04,#45,#04
	db #45,#02,#3b,#04,#3b,#04,#3b,#02
	db #3d,#04,#3d,#04,#3d,#02,#41,#04
	db #41,#04,#41,#02,#33,#04,#33,#04
	db #3d,#00,#42,#80,#00,#00,#00,#aa
	db #e3,#00,#00,#04,#06,#79,#06,#7b
	db #02,#75,#06,#6d,#02,#6b,#06,#79
	db #06,#7b,#02,#75,#02,#6d,#02,#67
	db #02,#6b,#06,#79,#06,#7b,#02,#75
	db #06,#6d,#02,#7f,#0e,#6d,#00,#42
	db #80,#00,#00,#00,#c2,#e0,#00,#00
	db #04,#06,#6b,#06,#79,#02,#75,#02
	db #79,#02,#75,#02,#79,#02,#7b,#02
	db #79,#02,#7b,#02,#7f,#02,#7b,#02
	db #7f,#02,#7b,#02,#6b,#02,#71,#02
	db #6b,#02,#71,#02,#75,#02,#71,#02
	db #75,#02,#71,#02,#79,#02,#75,#02
	db #79,#02,#75,#02,#7b,#02,#79,#02
	db #7b,#02,#83,#00,#00
;
; 80 CALL &8000,&8800
;
; ld de,#8800
; call #8000
;
; #86d6 - init
;
.init_music		; added by Megachur
;
	ld de,l8800
	jp real_init_music
;
.music_info
	db "Oceano (2015)(Public Domain)(EgoTrip)",0
	db "StArkos",0

	read "music_end.asm"
