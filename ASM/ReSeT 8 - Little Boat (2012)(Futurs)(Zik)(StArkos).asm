; Music of ReSeT 8 - Little Boat (2012)(Futurs)(Zik)(StArkos)
; Ripped by Megachur the 22/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RESET8LB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4000

	read "music_header.asm"

	jp l4009
	jp l4027
	jp l401b
.l4009
	call l46d6
	ld hl,l404d
.l4010 equ $ + 1
	ld de,#0000
	ld a,d
	ld (l403c),a
	add hl,de
	ld a,(hl)
	ld (l403e),a
.l401b
	ld hl,l4030
	ld bc,#8100
	ld de,l403a
	jp #bce0
.l4027
	ld hl,l4030
	call #bce6
	jp l4730
.l4030
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l403a
	di
.l403c equ $ + 1
	ld a,#00
.l403e equ $ + 1
	cp #05
	jr z,l4046
	inc a
	ld (l403c),a
	ret
.l4046
	xor a
	ld (l403c),a
	jp l4054
.l404d
	ld de,#050b
	ld (bc),a
.l4053 equ $ + 2
	ld bc,#0000
;
.play_music
.l4054
;
	call l474a
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	xor a
	ld (l4053),a
.l4064 equ $ + 1
	ld a,#01
	dec a
	jp nz,l4230
.l406a equ $ + 1
	ld a,#01
	dec a
	jr nz,l40d6
.l406f equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	rra
	jr nc,l407d
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	rra
.l407d
	rra
	jr nc,l4085
	ld de,l4126
	ldi
.l4085
	rra
	jr nc,l408d
	ld de,l418b
	ldi
.l408d
	rra
	jr nc,l4095
	ld de,l41f0
	ldi
.l4095
	ld de,l4105
	ldi
	ldi
	ld de,l416a
	ldi
	ldi
	ld de,l41cf
	ldi
	ldi
	rra
	jr nc,l40b2
	ld de,l40d5
	ldi
.l40b2
	rra
	jr nc,l40bd
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l40c1),de
.l40bd
	ld (l406f),hl
.l40c1 equ $ + 1
	ld hl,#0000
	ld (l40df),hl
	ld a,#01
	ld (l40da),a
	ld (l4100),a
	ld (l4165),a
	ld (l41ca),a
.l40d5 equ $ + 1
	ld a,#01
.l40d6
	ld (l406a),a
.l40da equ $ + 1
	ld a,#01
	dec a
	jr nz,l40fc
.l40df equ $ + 1
	ld hl,#0000
	ld a,(hl)
	inc hl
	srl a
	jr nc,l40f9
	srl a
	jr nz,l40ed
	ld a,(hl)
	inc hl
.l40ed
	jr nc,l40f4
	ld (l4053),a
	jr l40f7
.l40f4
	ld (l422f),a
.l40f7
	ld a,#01
.l40f9
	ld (l40df),hl
.l40fc
	ld (l40da),a
.l4100 equ $ + 1
	ld a,#01
	dec a
	jr nz,l4161
.l4105 equ $ + 1
	ld hl,#0000
	call l4582
	ld (l4105),hl
	jr c,l4161
	ld a,d
	rra
	jr nc,l4118
	and #0f
	ld (l42b2),a
.l4118
	rl d
	jr nc,l4120
	ld (l42a0),ix
.l4120
	rl d
	jr nc,l415f
	ld a,e
.l4126 equ $ + 1
	add #00
	ld (l42b1),a
	ld hl,#0000
	ld (l429d),hl
	rl d
	jr c,l413f
.l4135 equ $ + 1
	ld hl,#0000
	ld a,(l42c2)
	ld (l42ba),a
	jr l415c
.l413f
	ld l,b
	add hl,hl
.l4142 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l42c2),a
	ld (l42ba),a
	ld a,(hl)
	or a
	jr z,l4158
	ld (l43ad),a
.l4158
	inc hl
	ld (l4135),hl
.l415c
	ld (l42b4),hl
.l415f
	ld a,#01
.l4161
	ld (l4100),a
.l4165 equ $ + 1
	ld a,#01
	dec a
	jr nz,l41c6
.l416a equ $ + 1
	ld hl,#0000
	call l4582
	ld (l416a),hl
	jr c,l41c6
	ld a,d
	rra
	jr nc,l417d
	and #0f
	ld (l427e),a
.l417d
	rl d
	jr nc,l4185
	ld (l426c),ix
.l4185
	rl d
	jr nc,l41c4
	ld a,e
.l418b equ $ + 1
	add #00
	ld (l427d),a
	ld hl,#0000
	ld (l4269),hl
	rl d
	jr c,l41a4
.l419a equ $ + 1
	ld hl,#0000
	ld a,(l428e)
	ld (l4286),a
	jr l41c1
.l41a4
	ld l,b
	add hl,hl
.l41a7 equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l428e),a
	ld (l4286),a
	ld a,(hl)
	or a
	jr z,l41bd
	ld (l43ad),a
.l41bd
	inc hl
	ld (l419a),hl
.l41c1
	ld (l4280),hl
.l41c4
	ld a,#01
.l41c6
	ld (l4165),a
.l41ca equ $ + 1
	ld a,#01
	dec a
	jr nz,l422b
.l41cf equ $ + 1
	ld hl,#0000
	call l4582
	ld (l41cf),hl
	jr c,l422b
	ld a,d
	rra
	jr nc,l41e2
	and #0f
	ld (l424d),a
.l41e2
	rl d
	jr nc,l41ea
	ld (l423b),ix
.l41ea
	rl d
	jr nc,l4229
	ld a,e
.l41f0 equ $ + 1
	add #00
	ld (l424c),a
	ld hl,#0000
	ld (l4238),hl
	rl d
	jr c,l4209
.l41ff equ $ + 1
	ld hl,#0000
	ld a,(l425d)
	ld (l4255),a
	jr l4226
.l4209
	ld l,b
	add hl,hl
.l420c equ $ + 1
	ld bc,#0000
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(hl)
	inc hl
	ld (l425d),a
	ld (l4255),a
	ld a,(hl)
	or a
	jr z,l4222
	ld (l43ad),a
.l4222
	inc hl
	ld (l41ff),hl
.l4226
	ld (l424f),hl
.l4229
	ld a,#01
.l422b
	ld (l41ca),a
.l422f equ $ + 1
	ld a,#01
.l4230
	ld (l4064),a
	ld iy,l43c4
.l4238 equ $ + 1
	ld hl,#0000
.l423b equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4238),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l424d equ $ + 2
.l424c equ $ + 1
	ld de,#0000
.l424f equ $ + 1
	ld hl,#0000
	call l43cf
.l4255 equ $ + 1
	ld a,#01
	dec a
	jr nz,l425e
	ld (l424f),hl
.l425d equ $ + 1
	ld a,#06
.l425e
	ld (l4255),a
	ld a,lx
	ex af,af'
	ld iy,l43c2
.l4269 equ $ + 1
	ld hl,#0000
.l426c equ $ + 1
	ld de,#0000
	add hl,de
	ld (l4269),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l427e equ $ + 2
.l427d equ $ + 1
	ld de,#0000
.l4280 equ $ + 1
	ld hl,#0000
	call l43cf
.l4286 equ $ + 1
	ld a,#01
	dec a
	jr nz,l428f
	ld (l4280),hl
.l428e equ $ + 1
	ld a,#06
.l428f
	ld (l4286),a
	ex af,af'
	add a
	or lx
	rla
	ex af,af'
	ld iy,l43c0
.l429d equ $ + 1
	ld hl,#0000
.l42a0 equ $ + 1
	ld de,#0000
	add hl,de
	ld (l429d),hl
	sra h
	rr l
	sra h
	rr l
	ex de,hl
	exx
.l42b2 equ $ + 2
.l42b1 equ $ + 1
	ld de,#0000
.l42b4 equ $ + 1
	ld hl,#0000
	call l43cf
.l42ba equ $ + 1
	ld a,#01
	dec a
	jr nz,l42c3
	ld (l42b4),hl
.l42c2 equ $ + 1
	ld a,#06
.l42c3
	ld (l42ba),a
	ex af,af'
	or lx
.l42c9
	ld de,#c080
	ld b,#f6
	out (c),d
	exx
	ld hl,l43c0
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
	call l43ab
	pop iy
	pop ix
	pop bc
	pop af
	exx
	ex af,af'
.l43a9
	nop
	ret
.l43ab
	ld a,(hl)
.l43ad equ $ + 1
	cp #ff
	ret z
	ld (l43ad),a
	out (c),c
	ld b,e
	db #ed,#71 ; out (c),0
	dec b
	outi
	exx
	out (c),e
	out (c),d
	ret
.l43c0
	nop
	nop
.l43c2
	nop
	nop
.l43c4
	nop
	nop
.l43c6
	nop
.l43c7
	nop
	nop
	nop
	nop
	nop
.l43cc
	nop
	nop
.l43ce
	nop
.l43cf
	ld b,(hl)
	inc hl
	rr b
	jp c,l442d
	rr b
	jr c,l43fd
	ld a,b
	and #0f
	jr nz,l43e6
	ld (iy+#07),a
	ld lx,#09
	ret
.l43e6
	ld lx,#08
	sub d
	jr nc,l43ed
	xor a
.l43ed
	ld (iy+#07),a
	rr b
	call l4556
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l43fd
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #1f
	jr z,l440d
	ld (l43c6),a
	ld lx,#00
.l440d
	ld a,b
	and #0f
	sub d
	jr nc,l4414
	xor a
.l4414
	ld (iy+#07),a
	bit 5,c
	jr nz,l441e
	inc lx
	ret
.l441e
	rr b
	bit 6,c
	call l4548
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ret
.l442d
	rr b
	jr nc,l4440
	ld a,(l42ba)
	ld c,a
	ld a,(l42c2)
	cp c
	jr nz,l4440
	ld a,#fe
	ld (l43ad),a
.l4440
	bit 1,b
	jp nz,l44f9
	ld (iy+#07),#10
	ld lx,#08
	ld c,(hl)
	inc hl
	ld a,c
	and #0f
	ld (l43ce),a
	bit 0,b
	jr z,l44af
	bit 2,b
	call l4548
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l446f),a
	ld a,b
	exx
.l446f equ $ + 1
	jr l4470
.l4470
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
	jr nc,l448f
	inc hl
.l448f
	bit 5,a
	jr z,l449f
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
.l449f
	ld (l43cc),hl
	exx
.l44a3
	bit 7,c
	ret z
	ld a,(hl)
	inc hl
	ld (l43c6),a
	ld lx,#00
	ret
.l44af
	bit 2,b
	call l4548
	ld (l43cc),hl
	exx
	ld a,c
	rra
	rra
	and #1c
	ld (l44c3),a
	ld a,b
	exx
.l44c3 equ $ + 1
	jr l44c4
.l44c4
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
	jr z,l44f0
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
.l44f0
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	jr l44a3
.l44f9
	bit 0,b
	jr z,l4504
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l43cf
.l4504
	ld (iy+#07),#10
	bit 5,b
	jr nz,l4511
	ld lx,#09
	jr l4524
.l4511
	ld lx,#08
	ld hx,e
	bit 2,b
	call l4548
	ld (iy+#00),l
	ld (iy+#01),h
	exx
	ld e,hx
.l4524
	ld b,(hl)
	inc hl
	ld a,b
	and #0f
	ld (l43ce),a
	rr b
	rr b
	bit 2,b
	call l4548
	ld (l43cc),hl
	exx
	bit 5,b
	ret z
	ld a,(hl)
	inc hl
	ld (l43c6),a
	ld a,lx
	res 3,a
	ld lx,a
	ret
.l4548
	jr z,l4556
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
.l4556
	bit 4,b
	jr z,l4566
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
.l4566
	ld a,e
	bit 3,b
	jr z,l4573
	add (hl)
	inc hl
	cp #90
	jr c,l4573
	ld a,#8f
.l4573
	exx
	ld l,a
	ld h,#00
	add hl,hl
	ld bc,l45b6
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	add hl,de
	ret
.l4582
	ld a,(hl)
	inc hl
	srl a
	jr c,l45a9
	sub #20
	jr c,l45b3
	jr z,l45a5
	dec a
	ld e,a
.l4590
	ld a,(hl)
	ld d,a
	inc hl
	rla
	jr nc,l459e
	ld b,(hl)
	ld lx,b
	inc hl
	ld b,(hl)
	ld hx,b
	inc hl
.l459e
	rla
	rla
	ret nc
	ld b,(hl)
	inc hl
	or a
	ret
.l45a5
	ld e,(hl)
	inc hl
	jr l4590
.l45a9
	ld d,#40
	sub #01
	ld e,a
	ret nc
	ld e,(hl)
	inc hl
	or a
	ret
.l45b3
	add #20
	ret
.l45b6
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
.l46d6
;
	ld hl,#0008
	add hl,de
	ld de,l4010
	ldi
	ld de,l422f
	ldi
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4142),hl
	ld (l41a7),hl
	ld (l420c),hl
	add hl,bc
	ld de,l40d5
	ldi
	ld de,l4126
	ldi
	ld de,l418b
	ldi
	ld de,l41f0
	ldi
	ld de,l40c1
	ldi
	ldi
	ld (l406f),hl
	ld a,#01
	ld (l4064),a
	ld (l406a),a
	ld a,#ff
	ld (l43ce),a
	ld hl,(l4142)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	inc hl
	inc hl
	ld (l42b4),hl
	ld (l4280),hl
	ld (l424f),hl
	ret
;
.stop_music
.l4730
;
	call l474a
	ex af,af'
	exx
	push af
	push bc
	push ix
	push iy
	ld hl,l43c7
	ld bc,#0300
.l4741
	ld (hl),c
	inc hl
	djnz l4741
	ld a,#3f
	jp l42c9
.l474a
	ld a,i
	di
	ld a,#f3
	jp po,l4754
	ld a,#fb
.l4754
	ld (l43a9),a
	ret
;
	ds #5000-$,#00	; added by Megachur
;
.l5000
;
	db #41,#54,#31,#30,#01,#40,#42,#0f
	db #02,#06,#37,#03,#36,#50,#3f,#50
	db #76,#50,#a8,#50,#b6,#50,#c2,#50
	db #d7,#50,#de,#50,#01,#51,#27,#51
	db #73,#51,#7a,#51,#8e,#51,#c8,#51
	db #eb,#51,#2f,#52,#50,#52,#71,#52
	db #be,#52,#f7,#52,#1d,#53,#00,#00
	db #00,#00,#00,#00,#0d,#38,#50,#03
	db #fe,#3c,#45,#3a,#ff,#ff,#45,#3a
	db #ff,#ff,#45,#3a,#ff,#ff,#b0,#fe
	db #ff,#ac,#fe,#ff,#ac,#ff,#ff,#05
	db #38,#05,#38,#ac,#02,#00,#a8,#02
	db #00,#a8,#01,#00,#05,#3c,#05,#3c
	db #28,#28,#28,#9c,#ff,#ff,#9c,#ff
	db #ff,#14,#14,#0d,#38,#50,#02,#fe
	db #45,#3a,#12,#00,#45,#3a,#08,#00
	db #45,#3a,#ff,#ff,#45,#3a,#ff,#ff
	db #b0,#fe,#ff,#ac,#fe,#ff,#ac,#ff
	db #ff,#05,#38,#05,#38,#ac,#02,#00
	db #a8,#02,#00,#a8,#01,#00,#05,#3c
	db #05,#3c,#28,#28,#28,#0d,#80,#50
	db #01,#00,#3e,#21,#7c,#04,#3c,#78
	db #fc,#74,#f8,#0d,#38,#50,#01,#00
	db #7e,#22,#0c,#3a,#21,#2a,#21,#0d
	db #38,#50,#01,#00,#b4,#01,#00,#f0
	db #01,#00,#fb,#30,#30,#f0,#ff,#ff
	db #fb,#b0,#ff,#ff,#0d,#38,#50,#09
	db #00,#34,#2c,#0d,#38,#50,#03,#00
	db #34,#34,#74,#03,#74,#07,#74,#0c
	db #74,#0f,#74,#13,#74,#18,#70,#1f
	db #74,#18,#74,#13,#74,#11,#74,#0f
	db #74,#0c,#74,#07,#74,#03,#0d,#e0
	db #50,#04,#00,#3c,#78,#03,#25,#3a
	db #05,#25,#3a,#07,#78,#0a,#78,#0c
	db #78,#0f,#78,#0f,#25,#3a,#0f,#25
	db #3a,#0f,#6c,#0f,#6c,#0f,#68,#0f
	db #64,#0f,#64,#0f,#0d,#38,#50,#01
	db #00,#7e,#21,#18,#7c,#0c,#bc,#ff
	db #ff,#bc,#ff,#ff,#7c,#0c,#70,#18
	db #3c,#7c,#0c,#38,#ec,#ff,#ff,#18
	db #f8,#ff,#ff,#0c,#b8,#fe,#ff,#f4
	db #ff,#ff,#18,#74,#0c,#34,#34,#70
	db #0c,#30,#30,#70,#0c,#2c,#2c,#e8
	db #ff,#ff,#0c,#a8,#ff,#ff,#ac,#fe
	db #ff,#ec,#ff,#ff,#0c,#28,#28,#64
	db #0c,#24,#24,#64,#0c,#24,#24,#24
	db #0d,#57,#51,#01,#00,#1e,#01,#0d
	db #38,#50,#01,#00,#7e,#22,#0c,#3a
	db #21,#0a,#21,#7e,#21,#0c,#2c,#7e
	db #21,#0c,#38,#0d,#38,#50,#01,#fe
	db #25,#2a,#0c,#38,#38,#30,#38,#38
	db #34,#34,#34,#b0,#ff,#ff,#b0,#ff
	db #ff,#b0,#fe,#ff,#b0,#ff,#ff,#2c
	db #2c,#2c,#2c,#28,#28,#28,#28,#28
	db #a4,#ff,#ff,#a4,#ff,#ff,#a4,#fe
	db #ff,#a4,#ff,#ff,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#0d,#b0,#51
	db #03,#00,#6c,#04,#6c,#07,#6c,#09
	db #6c,#04,#6c,#07,#6c,#09,#6c,#0d
	db #6c,#10,#6c,#0d,#6c,#09,#6c,#07
	db #6c,#0d,#6c,#09,#6c,#07,#6c,#04
	db #0d,#38,#50,#01,#00,#74,#0c,#3c
	db #38,#78,#07,#74,#f4,#34,#34,#74
	db #f4,#34,#b0,#ff,#ff,#f0,#ff,#ff
	db #f4,#b0,#fe,#ff,#b0,#ff,#ff,#70
	db #f4,#30,#2c,#6c,#f4,#2c,#2c,#68
	db #f4,#28,#28,#e4,#ff,#ff,#f4,#a4
	db #ff,#ff,#a4,#fe,#ff,#e4,#ff,#ff
	db #f4,#24,#24,#64,#f4,#24,#24,#64
	db #f4,#24,#24,#24,#0d,#13,#52,#03
	db #00,#2c,#6c,#03,#6c,#07,#6c,#0c
	db #6c,#0f,#6c,#13,#6c,#18,#6c,#1b
	db #6c,#18,#6c,#13,#6c,#0f,#6c,#0c
	db #6c,#07,#6c,#03,#2c,#0d,#31,#52
	db #03,#00,#2c,#6c,#04,#6c,#07,#6c
	db #0c,#6c,#10,#6c,#13,#6c,#18,#6c
	db #1c,#6c,#18,#6c,#13,#6c,#10,#6c
	db #0c,#6c,#07,#6c,#04,#2c,#0d,#52
	db #52,#01,#fe,#25,#2a,#0c,#38,#38
	db #70,#0d,#74,#01,#34,#f4,#ff,#ff
	db #0e,#f0,#ff,#ff,#02,#b0,#fe,#ff
	db #65,#28,#ff,#ff,#0f,#74,#03,#34
	db #25,#28,#10,#74,#04,#34,#25,#28
	db #11,#74,#05,#74,#12,#25,#38,#06
	db #f4,#ff,#ff,#13,#f4,#ff,#ff,#07
	db #67,#38,#fe,#ff,#14,#65,#38,#ff
	db #ff,#08,#25,#38,#14,#25,#38,#08
	db #25,#38,#14,#0d,#38,#50,#01,#00
	db #74,#0c,#38,#38,#30,#38,#38,#34
	db #34,#34,#b0,#ff,#ff,#b0,#ff,#ff
	db #b0,#fe,#ff,#b0,#ff,#ff,#2c,#2c
	db #2c,#2c,#28,#28,#28,#28,#28,#a4
	db #ff,#ff,#a4,#ff,#ff,#a4,#fe,#ff
	db #a4,#ff,#ff,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#0d,#df,#52,#03
	db #00,#36,#21,#6a,#21,#03,#6c,#07
	db #6c,#0c,#6c,#0f,#6c,#13,#6c,#18
	db #6c,#1b,#6c,#18,#6c,#13,#6c,#0f
	db #6c,#0c,#6c,#07,#6c,#03,#2c,#2c
	db #6c,#03,#0d,#fe,#52,#03,#00,#36
	db #21,#6a,#21,#04,#6c,#07,#6c,#0c
	db #6c,#10,#6c,#13,#6c,#18,#6c,#1c
	db #6c,#18,#6c,#13,#6c,#10,#6c,#0c
	db #6c,#07,#6c,#04,#2c,#2c,#6c,#04
	db #0d,#24,#53,#20,#00,#00,#00,#e5
	db #53,#30,#8a,#5b,#8a,#5b,#b1,#57
	db #20,#e5,#53,#10,#52,#55,#64,#59
	db #f6,#55,#40,#00,#ed,#53,#39,#54
	db #bb,#54,#00,#0f,#55,#39,#54,#bb
	db #54,#00,#2a,#56,#78,#56,#fe,#56
	db #00,#b9,#57,#78,#56,#3f,#57,#00
	db #2a,#56,#78,#56,#90,#57,#00,#a4
	db #58,#78,#56,#fc,#58,#00,#59,#58
	db #78,#56,#14,#58,#00,#e6,#59,#78
	db #56,#19,#59,#00,#59,#58,#34,#5a
	db #14,#58,#00,#e6,#59,#dc,#5b,#d0
	db #5a,#00,#2a,#56,#78,#56,#fe,#56
	db #00,#b9,#57,#78,#56,#3f,#57,#00
	db #2a,#56,#78,#56,#90,#57,#00,#a4
	db #58,#78,#56,#fc,#58,#00,#59,#58
	db #78,#56,#14,#58,#00,#e6,#59,#78
	db #56,#19,#59,#00,#59,#58,#34,#5a
	db #14,#58,#00,#e6,#59,#94,#5a,#d0
	db #5a,#20,#72,#5a,#1b,#5b,#5d,#5b
	db #e7,#53,#01,#49,#53,#19,#00,#60
	db #c1,#0e,#01,#60,#00,#78,#e0,#00
	db #00,#01,#02,#51,#02,#4d,#02,#47
	db #02,#4b,#04,#47,#02,#39,#3f,#41
	db #43,#02,#43,#02,#3f,#7e,#45,#04
	db #82,#c1,#f8,#ff,#86,#c3,#00,#00
	db #43,#3f,#43,#3f,#02,#78,#41,#04
	db #51,#02,#4d,#02,#47,#02,#4b,#04
	db #47,#02,#39,#3f,#41,#43,#86,#60
	db #02,#82,#60,#01,#3f,#43,#3f,#02
	db #47,#02,#47,#43,#3f,#43,#3f,#02
	db #39,#78,#e0,#00,#00,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#78,#60,#03,#02,#c6
	db #60,#04,#87,#42,#80,#00,#00,#02
	db #c0,#61,#05,#04,#81,#04,#81,#04
	db #be,#60,#06,#42,#80,#ff,#ff,#42
	db #00,#c0,#e0,#00,#00,#05,#06,#81
	db #04,#81,#04,#81,#0e,#90,#6b,#07
	db #42,#00,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#00,#42,#09
	db #42,#00,#42,#00,#42,#00,#42,#07
	db #02,#42,#05,#02,#42,#03,#42,#00
	db #02,#42,#05,#04,#42,#07,#04,#42
	db #09,#06,#42,#0b,#42,#0d,#00,#42
	db #80,#00,#00,#02,#90,#60,#01,#02
	db #4d,#02,#47,#02,#4b,#04,#47,#02
	db #39,#3f,#41,#43,#86,#60,#02,#82
	db #60,#01,#3f,#43,#47,#02,#43,#04
	db #43,#3f,#43,#3f,#02,#39,#04,#51
	db #02,#4d,#02,#47,#02,#4b,#04,#47
	db #08,#78,#60,#08,#10,#78,#65,#09
	db #42,#00,#7c,#43,#7e,#41,#42,#00
	db #43,#00,#c6,#e9,#00,#00,#04,#ae
	db #60,#0a,#6f,#c6,#60,#04,#ae,#60
	db #0a,#6f,#c6,#60,#04,#ae,#60,#0a
	db #ae,#47,#c6,#60,#04,#ae,#60,#0a
	db #6f,#c6,#65,#04,#ae,#60,#0a,#c6
	db #60,#04,#ae,#60,#0a,#c6,#63,#04
	db #ae,#60,#0a,#6f,#c6,#60,#04,#ae
	db #60,#0a,#6f,#c6,#60,#04,#ae,#60
	db #0a,#ae,#41,#c6,#60,#04,#ae,#60
	db #0a,#6f,#c6,#60,#04,#ae,#60,#0a
	db #c6,#60,#0b,#ae,#60,#0a,#c6,#60
	db #04,#ae,#60,#0a,#6f,#c6,#60,#04
	db #ae,#60,#0a,#6f,#c6,#60,#04,#ae
	db #60,#0a,#6f,#c6,#60,#04,#ae,#60
	db #0a,#6f,#c6,#60,#04,#ae,#60,#0a
	db #c6,#60,#04,#ae,#60,#0a,#c6,#60
	db #04,#ae,#60,#0a,#6f,#c6,#60,#04
	db #ae,#60,#0a,#6f,#c6,#60,#04,#ae
	db #60,#0a,#6f,#c6,#60,#04,#ae,#60
	db #0a,#c6,#60,#04,#ae,#60,#0a,#6f
	db #c6,#60,#04,#ae,#60,#0a,#c6,#eb
	db #00,#00,#04,#04,#87,#04,#87,#02
	db #42,#09,#87,#04,#87,#04,#87,#42
	db #07,#02,#87,#04,#87,#04,#c6,#45
	db #04,#87,#04,#87,#87,#04,#87,#04
	db #87,#04,#87,#04,#87,#04,#87,#04
	db #87,#04,#87,#04,#87,#04,#87,#04
	db #87,#00,#60,#e0,#00,#00,#0c,#39
	db #51,#21,#39,#51,#21,#39,#35,#4d
	db #02,#35,#1d,#4d,#02,#4d,#43,#2b
	db #02,#2b,#43,#2b,#2f,#42,#00,#47
	db #04,#4d,#2f,#02,#55,#35,#39,#21
	db #51,#04,#21,#39,#3f,#4d,#35,#04
	db #3f,#04,#43,#42,#80,#02,#00,#42
	db #80,#06,#00,#42,#80,#08,#00,#86
	db #c0,#00,#00,#43,#3f,#43,#51,#43
	db #82,#60,#0d,#08,#7e,#60,#0c,#35
	db #78,#e0,#00,#00,#03,#02,#c6,#60
	db #04,#87,#78,#60,#03,#02,#c6,#60
	db #04,#87,#78,#60,#03,#02,#c6,#60
	db #04,#87,#78,#60,#03,#02,#c6,#60
	db #04,#87,#78,#60,#03,#02,#c6,#60
	db #04,#87,#78,#60,#03,#02,#c6,#60
	db #04,#87,#78,#60,#03,#02,#c6,#60
	db #04,#87,#78,#60,#03,#02,#c6,#60
	db #04,#c6,#60,#0b,#78,#60,#03,#02
	db #c6,#60,#04,#87,#78,#60,#03,#02
	db #c6,#60,#04,#87,#78,#60,#03,#02
	db #c6,#60,#04,#87,#78,#60,#03,#02
	db #c6,#60,#04,#87,#78,#60,#03,#02
	db #c6,#60,#04,#87,#78,#60,#03,#02
	db #c6,#60,#04,#c6,#60,#0b,#78,#60
	db #03,#02,#c6,#60,#0b,#87,#78,#60
	db #03,#02,#c6,#60,#04,#87,#42,#8f
	db #00,#00,#02,#b6,#61,#0e,#04,#6f
	db #04,#73,#0a,#6f,#02,#73,#0a,#77
	db #6f,#04,#6d,#02,#69,#02,#65,#06
	db #77,#04,#6f,#04,#73,#0a,#6f,#42
	db #00,#73,#06,#77,#02,#7d,#7b,#42
	db #80,#02,#00,#42,#00,#42,#00,#42
	db #80,#03,#00,#42,#00,#42,#80,#06
	db #00,#42,#83,#0a,#00,#42,#00,#42
	db #60,#00,#42,#80,#00,#00,#b6,#61
	db #0e,#04,#6f,#02,#73,#0c,#6f,#02
	db #73,#0a,#77,#6f,#04,#6d,#02,#69
	db #02,#65,#06,#77,#04,#6f,#04,#73
	db #06,#77,#02,#7d,#7b,#04,#42,#80
	db #02,#00,#42,#00,#42,#80,#03,#00
	db #42,#00,#42,#80,#04,#00,#42,#80
	db #06,#00,#42,#00,#42,#83,#08,#00
	db #42,#00,#42,#80,#0a,#00,#42,#00
	db #42,#00,#42,#80,#0b,#00,#42,#00
	db #90,#e3,#00,#00,#0f,#0e,#8c,#60
	db #10,#0e,#49,#0e,#4d,#0e,#90,#60
	db #0f,#0e,#8c,#60,#10,#0e,#43,#04
	db #5b,#06,#43,#47,#02,#47,#06,#47
	db #00,#42,#60,#00,#42,#80,#00,#00
	db #00,#60,#e0,#00,#00,#0c,#39,#51
	db #21,#39,#51,#42,#00,#39,#35,#4d
	db #02,#35,#1d,#4d,#02,#4d,#43,#2b
	db #02,#2b,#43,#2b,#2f,#42,#00,#47
	db #04,#4d,#2f,#02,#55,#35,#39,#21
	db #51,#04,#21,#39,#3f,#4d,#35,#04
	db #3f,#04,#43,#42,#80,#02,#00,#42
	db #80,#06,#00,#42,#80,#08,#00,#86
	db #c0,#00,#00,#42,#00,#39,#4b,#04
	db #51,#82,#60,#11,#02,#42,#80,#fc
	db #ff,#42,#80,#f8,#ff,#74,#e0,#00
	db #00,#0c,#42,#00,#b8,#e1,#00,#00
	db #12,#04,#77,#42,#60,#00,#b2,#60
	db #12,#42,#60,#00,#ae,#60,#12,#08
	db #6f,#02,#65,#02,#6d,#42,#60,#00
	db #ae,#63,#12,#b2,#41,#12,#77,#04
	db #79,#04,#77,#42,#60,#00,#b2,#60
	db #12,#42,#60,#00,#ae,#60,#12,#10
	db #6d,#6f,#73,#7d,#85,#04,#8c,#45
	db #65,#57,#55,#77,#b2,#41,#6d,#73
	db #77,#82,#e1,#00,#00,#0c,#02,#42
	db #07,#82,#41,#08,#39,#04,#3d,#04
	db #3f,#02,#35,#35,#42,#60,#00,#74
	db #60,#0c,#42,#60,#00,#02,#74,#60
	db #0c,#0e,#3f,#02,#43,#04,#43,#42
	db #60,#00,#02,#78,#60,#0c,#08,#39
	db #4d,#42,#60,#00,#7e,#60,#0c,#02
	db #35,#35,#42,#60,#00,#74,#60,#0c
	db #42,#60,#00,#02,#74,#60,#0c,#10
	db #42,#80,#50,#00,#60,#e0,#00,#00
	db #0c,#39,#51,#21,#39,#51,#42,#00
	db #39,#35,#4d,#02,#35,#1d,#4d,#02
	db #4d,#43,#2b,#02,#2b,#43,#2b,#2f
	db #42,#00,#47,#04,#4d,#2f,#02,#55
	db #35,#39,#21,#51,#04,#21,#39,#3f
	db #4d,#35,#04,#3f,#04,#43,#42,#80
	db #02,#00,#42,#80,#06,#00,#42,#80
	db #08,#00,#86,#c0,#00,#00,#42,#00
	db #39,#4b,#04,#8a,#45,#8a,#43,#8a
	db #45,#8a,#41,#02,#42,#80,#f0,#ff
	db #42,#80,#a0,#ff,#90,#e3,#00,#00
	db #0f,#0e,#8c,#60,#10,#0e,#49,#0e
	db #4d,#0e,#90,#60,#0f,#0e,#8c,#60
	db #10,#0e,#43,#04,#5b,#06,#43,#47
	db #00,#b8,#e1,#00,#00,#12,#02,#ba
	db #c0,#fb,#ff,#b6,#c0,#00,#00,#04
	db #73,#6f,#08,#42,#00,#02,#42,#00
	db #5b,#73,#65,#6f,#73,#6d,#0e,#42
	db #00,#02,#65,#02,#69,#0a,#42,#00
	db #65,#61,#02,#42,#00,#02,#77,#06
	db #b2,#60,#13,#02,#42,#07,#ae,#61
	db #14,#04,#65,#42,#00,#42,#00,#42
	db #00,#42,#00,#42,#00,#42,#05,#02
	db #42,#00,#42,#00,#78,#ff,#00,#00
	db #03,#02,#c6,#60,#04,#87,#78,#60
	db #03,#02,#c6,#60,#04,#87,#78,#60
	db #03,#02,#c6,#60,#04,#87,#78,#60
	db #03,#02,#c6,#60,#04,#87,#78,#60
	db #03,#02,#c6,#60,#04,#87,#78,#60
	db #03,#02,#c6,#60,#04,#87,#78,#60
	db #03,#02,#c6,#60,#04,#87,#78,#60
	db #03,#02,#c6,#60,#04,#87,#78,#6d
	db #03,#02,#c6,#60,#04,#87,#78,#6b
	db #03,#02,#c6,#69,#04,#87,#78,#67
	db #03,#02,#c6,#60,#04,#87,#78,#65
	db #03,#02,#c6,#60,#04,#87,#78,#63
	db #03,#02,#c6,#60,#04,#87,#78,#61
	db #03,#02,#c6,#60,#04,#87,#78,#60
	db #03,#02,#c6,#60,#04,#87,#78,#60
	db #03,#02,#c6,#60,#04,#87,#6a,#e0
	db #00,#00,#0c,#43,#42,#60,#00,#82
	db #60,#0c,#08,#39,#51,#42,#60,#00
	db #7c,#60,#0c,#04,#3f,#57,#35,#35
	db #42,#60,#00,#74,#60,#0c,#42,#60
	db #00,#02,#74,#60,#0c,#0c,#3f,#04
	db #43,#04,#43,#42,#60,#00,#02,#78
	db #60,#0c,#08,#39,#4d,#42,#60,#00
	db #7e,#60,#0c,#02,#35,#35,#42,#60
	db #00,#74,#60,#0c,#42,#60,#00,#02
	db #74,#60,#0c,#00,#c0,#e1,#00,#00
	db #12,#04,#7d,#42,#60,#00,#b8,#60
	db #12,#42,#60,#00,#a8,#60,#12,#08
	db #6d,#02,#73,#6f,#73,#02,#9a,#45
	db #ac,#41,#12,#69,#04,#73,#04,#77
	db #42,#60,#00,#b8,#60,#12,#42,#00
	db #81,#10,#7d,#85,#91,#85,#95,#8b
	db #85,#81,#85,#73,#7d,#81,#85,#7d
	db #73,#79,#42,#83,#00,#00,#0a,#42
	db #05,#06,#42,#07,#04,#42,#09,#06
	db #42,#0b,#04,#42,#0d,#04,#42,#0f
	db #1c,#42,#19,#04,#42,#1b,#02,#42
	db #1d,#42,#1f,#00,#c0,#e1,#00,#00
	db #12,#04,#7d,#42,#60,#00,#b8,#60
	db #12,#42,#60,#00,#a8,#60,#12,#08
	db #6d,#02,#73,#6f,#73,#02,#5b,#6d
	db #12,#69,#04,#73,#04,#77,#42,#60
	db #00,#b8,#60,#12,#42,#00,#81,#10
	db #7d,#85,#91,#85,#95,#8b,#85,#81
	db #85,#73,#7d,#81,#85,#7d,#73,#79
	db #b8,#e1,#00,#00,#12,#02,#ba,#c0
	db #fb,#ff,#b6,#c0,#00,#00,#04,#73
	db #6f,#08,#42,#00,#02,#42,#00,#5b
	db #73,#65,#6f,#73,#6d,#0e,#42,#00
	db #02,#65,#02,#69,#0a,#42,#00,#65
	db #61,#02,#42,#00,#02,#77,#06,#b2
	db #60,#0f,#02,#42,#07,#ae,#61,#10
	db #04,#65,#42,#00,#42,#00,#42,#00
	db #42,#00,#42,#00,#42,#05,#02,#42
	db #00,#42,#00,#bc,#e0,#00,#00,#12
	db #85,#d0,#43,#85,#95,#ca,#45,#85
	db #81,#c4,#47,#73,#7d,#c0,#49,#85
	db #7d,#b2,#4b,#79,#7d,#c4,#4d,#91
	db #85,#d4,#4f,#8b,#85,#c0,#51,#85
	db #73,#bc,#53,#81,#85,#bc,#55,#73
	db #79,#7d,#85,#d0,#57,#85,#95,#8b
	db #85,#81,#85,#b2,#59,#7d,#81,#c4
	db #5f,#7d,#73,#79,#00,#42,#80,#00
	db #00,#02,#42,#03,#06,#42,#05,#06
	db #42,#07,#06,#42,#09,#06,#42,#0b
	db #06,#42,#0d,#06,#42,#0f,#06,#42
	db #11,#04,#42,#13,#10,#42,#17,#02
	db #42,#19,#02,#42,#1b,#42,#1d,#42
	db #1f,#00,#c6,#eb,#00,#00,#04,#ae
	db #67,#0a,#6f,#c6,#6b,#04,#ae,#67
	db #0a,#6f,#c6,#6b,#04,#ae,#67,#0a
	db #6f,#c6,#6b,#04,#ae,#67,#0a,#6f
	db #c6,#6b,#04,#ae,#67,#0a,#c6,#6b
	db #04,#ae,#67,#0a,#c6,#6b,#04,#ae
	db #67,#0a,#6f,#c6,#6b,#04,#ae,#67
	db #0a,#6f,#c6,#6b,#04,#ae,#67,#0a
	db #6f,#c6,#6b,#04,#ae,#67,#0a,#6f
	db #c6,#6b,#04,#ae,#67,#0a,#c6,#6b
	db #0b,#ae,#67,#0a,#c0,#e1,#00,#00
	db #12,#04,#7d,#42,#60,#00,#b8,#60
	db #12,#42,#60,#00,#a8,#60,#12,#08
	db #6d,#02,#73,#6f,#73,#02,#5b,#6d
	db #12,#69,#04,#73,#04,#77,#42,#60
	db #00,#b8,#60,#12,#42,#00,#81,#10
	db #7d,#85,#91,#85,#95,#8b,#85,#81
	db #85,#b2,#45,#c6,#61,#0b,#78,#60
	db #03,#39,#02,#c6,#60,#04,#87,#00
	db #00
;
; 80 CALL &4000,&5000
;
.init_music		; added by Megachur
;
	ld de,l5000
	jp real_init_music
;
.music_info
	db "ReSeT 8 - Little Boat (2012)(Futurs)(Zik)",0
	db "StArkos",0

	read "music_end.asm"
