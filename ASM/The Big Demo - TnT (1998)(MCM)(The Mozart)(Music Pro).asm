; Music of The Big Demo - TnT (1998)(MCM)(The Mozart)(Music Pro)
; Ripped by Megachur the 17/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THEBDTNT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7000

	read "music_header.asm"

	call l7064
	call l783a
.l7006
	call l7810
	ld a,(l77b1)
	bit 4,a
	jp nz,l7013
	jr l7006
.l7013
	ld a,(l76b4)
	or a
	jr z,l7022
	dec a
	ld (l76b4),a
	call l7830
	jr l7013
.l7022
	call #bb00
	call l7851
	ret
	ld a,(l7902)
	cp #13
	jp z,l7006
	call l78a4
	call l78b0
	ld a,(l7902)
	inc a
	ld (l7902),a
	call l78aa
	call l78b0
	jp l7006
	ld a,(l7902)
	or a
	jp z,l7006
	call l78a4
	call l78b0
	ld a,(l7902)
	dec a
	ld (l7902),a
	call l78aa
	call l78b0
	jp l7006
;
.init_music
.l7064
;
	xor a
	ld (l7574),a
	ld (l757b),a
	ld hl,l7583
	ld (hl),#00
	ld de,l7584
	ld bc,#0128
	ldir
	ld a,(l8001)
	ld (l76ac),a
	ld bc,l8000
	ld hl,(l8002)
	add hl,bc
	ld (l76af),hl
	ld hl,(l8004)
	add hl,bc
	ld (l76b1),hl
	ld hl,(l8006)
	add hl,bc
	ld (l7588),hl
	ld hl,(l8008)
	add hl,bc
	ld (l75c3),hl
	ld hl,(l800a)
	add hl,bc
	ld (l75fe),hl
	ld hl,l800c
	ld (l76ad),hl
	ld a,#0f
	ld (l76b4),a
	ld hl,l757d
	ld de,l7583
	ld bc,#0005
	ldir
	ld hl,l757d
	ld de,l75be
	ld bc,#0005
	ldir
	ld hl,l757d
	ld de,l75f9
	ld bc,#0005
	ldir
	ld c,#38
	ld a,#07
	call l778f
	ld a,#ff
	ld (l7574),a
	ret
;
.play_music
.l70dd
;
	ei
	call l77c2
	ld a,(l7574)
	or a
	ret z
	xor a
	ld (l7574),a
	ld a,#08
	ld (l7576),a
	cpl
	ld (l7577),a
	ld a,(l76b4)
	ld e,a
	ld b,#03
	ld hl,l7618
.l70fc
	ld a,(hl)
	ld c,a
	ld a,(l757c)
	or b
	sub #03
	ld a,#00
	jr c,l710d
	ld a,c
	cp e
	jr c,l710d
	ld a,e
.l710d
	ld c,a
	ld a,b
	add #07
	push de
	call l778f
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l70fc
	ld hl,l76ac
	dec (hl)
	ld ix,l7583
	xor a
.l7127
	ld (l76b3),a
	ld a,(ix+#07)
	or a
	jp nz,l73b8
.l7131
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l713b
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l7181
	ld l,(ix+#01)
	ld h,(ix+#02)
.l714c
	ld a,(hl)
	cp #ff
	jr nz,l7160
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	jp l714c
.l7160
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l76ad)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	pop hl
	ld bc,l8000
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l713b
.l7181
	bit 7,a
	jr nz,l71eb
	ld hl,l76bb
	or a
	jr z,l718e
	add (ix+#20)
.l718e
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld e,(hl)
	ld (ix+#36),e
	ld (ix+#38),e
	inc hl
	ld e,(hl)
	ld (ix+#37),e
	ld (ix+#39),e
	ld (ix+#0a),#00
	ld (ix+#21),#00
	ld (ix+#1f),#00
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ex de,hl
	ld a,(l76b3)
	inc a
	ld hl,l7620
	ld bc,#0014
.l71c0
	add hl,bc
	dec a
	jr nz,l71c0
	ldir
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l76b3)
	inc a
	ld hl,l765c
	ld bc,#0014
.l71d8
	add hl,bc
	dec a
	jr nz,l71d8
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l73a4
.l71eb
	bit 6,a
	jr nz,l7242
	bit 5,a
	jp z,l722f
	push af
	xor a
	ld (l76b5),a
	pop af
.l71fa
	and #1f
	ld b,a
	jr z,l7214
	ld a,(l7575)
	push hl
	ld hl,l7577
	and (hl)
	ld (l7575),a
	pop hl
	ld c,a
	ld a,#07
	call l778f
	jp l7226
.l7214
	ld a,(l7575)
	push hl
	ld hl,l7576
	or (hl)
	ld (l7575),a
	pop hl
	ld c,a
	ld a,#07
	call l778f
.l7226
	ld c,b
	ld a,#06
	call l778f
	jp l73a4
.l722f
	and #1f
	ld hl,l7783
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l73a4
.l7242
	bit 5,a
	jr nz,l72af
	and #1f
	add a
	add a
	add a
	ld hl,(l76af)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l725d
	ld a,(de)
	bit 7,a
	jr nz,l726f
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l7287
.l726f
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#ff
	bit 7,a
	jr nz,l7281
	ld b,#01
.l7281
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l7287
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l725d
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l7620
	ld a,(l76b3)
	inc a
.l72a5
	add hl,bc
	dec a
	jr nz,l72a5
	ex de,hl
	ldir
	jp l73a4
.l72af
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l72c6
	and #1f
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l72c6
	adc #72
	ld h,#73
	ld (#d673),hl
	ld (hl),d
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l73a4
	pop hl
	ld a,(hl)
	ld (l76b5),a
	and #3f
	ld (l76b7),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l76b8),a
	ld a,(l76b5)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l76b5),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l76b5
	or (hl)
	ld (l76b5),a
	ld (l76b6),a
	ld a,(l76b7)
	ld (l76ba),a
	ld hl,l76b8
	ld b,#ff
	cp (hl)
	jr nc,l7318
	ld b,#01
.l7318
	ld a,b
	ld (l76b9),a
	ld a,(l76ba)
	jp l71fa
	ld a,#02
	jr l7328
	ld a,#01
.l7328
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l7399
	add a
	add a
	add a
	ld hl,(l76b1)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l7346
	ld a,(de)
	bit 7,a
	jr nz,l735a
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	neg
	ld (hl),a
	jp l7372
.l735a
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#01
	bit 7,a
	jr nz,l736c
	ld b,#ff
.l736c
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l7372
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l7346
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l765c
	ld a,(l76b3)
	inc a
.l7390
	add hl,bc
	dec a
	jr nz,l7390
	ex de,hl
	ldir
	jr l739e
.l7399
	ld a,#00
	ld (ix+#09),a
.l739e
	ld a,(ix+#09)
	ld (ix+#3a),a
.l73a4
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l7131
.l73b8
	ld a,(l76ac)
	or a
	jr nz,l73c1
	dec (ix+#07)
.l73c1
	ld a,(ix+#0a)
	cp #04
	jp z,l740b
	push ix
	pop hl
	ld b,a
	add a
	add a
	add b
	add #0b
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jr nz,l73ee
	dec (hl)
	jr nz,l73e1
	inc (ix+#0a)
.l73e1
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l740b
.l73ee
	dec (hl)
	jr nz,l7403
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	dec hl
	jp l7405
.l7403
	inc hl
	inc hl
.l7405
	dec (hl)
	jr nz,l740b
	inc (ix+#0a)
.l740b
	ld a,(ix+#09)
	or a
	jp z,l74a8
	push ix
	pop hl
	ld a,(ix+#21)
	ld b,a
	add a
	add a
	add b
	add #22
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	or a
	jr nz,l7449
	dec (hl)
	jr nz,l742d
	inc (ix+#21)
.l742d
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l7439
	ld b,#00
.l7439
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#32),l
	ld (ix+#37),h
	jp l7477
.l7449
	dec (hl)
	jr nz,l746f
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	push hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l745d
	ld b,#00
.l745d
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l7471
.l746f
	inc hl
	inc hl
.l7471
	dec (hl)
	jr nz,l7477
	inc (ix+#21)
.l7477
	ld a,(ix+#21)
	cp #04
	jr nz,l74a8
	ld a,(ix+#09)
	cp #02
	jr nz,l748c
	ld a,#00
	ld (ix+#09),a
	jr l74a8
.l748c
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l76b3)
	inc a
	ld hl,l765c
	ld bc,#0014
.l74a2
	add hl,bc
	dec a
	jr nz,l74a2
	ldir
.l74a8
	ld c,(ix+#36)
	ld a,(l76b3)
	add a
	call l778f
	ld c,(ix+#37)
	inc a
	call l778f
	ld bc,#003b
	add ix,bc
	ld a,(l7576)
	rlc a
	ld (l7576),a
	cpl
	ld (l7577),a
	ld a,(l76b3)
	inc a
	cp #03
	jp nz,l7127
	ld a,(l76b5)
	or a
	jr z,l750a
	dec a
	ld (l76b5),a
	or a
	jr nz,l750a
	ld a,(l76b6)
	ld (l76b5),a
	ld a,(l76ba)
	ld hl,l76b9
	add (hl)
	ld (l76ba),a
	ld c,a
	ld hl,l76b7
	cp (hl)
	jr z,l74fd
	ld hl,l76b8
	cp (hl)
	jr nz,l7505
.l74fd
	ld a,(l76b9)
	xor #fe
	ld (l76b9),a
.l7505
	ld a,#06
	call l778f
.l750a
	ld a,(l76ac)
	or a
	jr nz,l7516
	ld a,(l8001)
	ld (l76ac),a
.l7516
	ld a,#ff
	ld (l7574),a
	ret
	push hl
	push de
	push bc
	push af
	xor a
	ld (l7574),a
	ld a,e
	ld (l7578),a
	ld a,b
	ld (l7579),a
	ld a,c
	ld (l757a),a
	ld hl,l757d
	ld de,l7583
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l757d
	ld de,l75be
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl,l757d
	ld de,l75f9
	ldi
	ldi
	ldi
	ldi
	ldi
	xor a
	ld (l758a),a
	ld (l75c5),a
	ld (l7600),a
	ld a,#ff
	ld (l7574),a
	pop af
	pop bc
	pop de
	pop hl
	ret
.l757b equ $ + 7
.l757a equ $ + 6
.l7579 equ $ + 5
.l7578 equ $ + 4
.l7577 equ $ + 3
.l7576 equ $ + 2
.l7575 equ $ + 1
.l7574
	db #ff,#38,#00,#00,#00,#00,#00,#ff
.l7583 equ $ + 7
.l757d equ $ + 1
.l757c
	db #ff,#00,#82,#75,#82,#75,#ff,#00
.l758a equ $ + 6
.l7588 equ $ + 4
.l7584
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l75c3 equ $ + 7
.l75be equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l75c5 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l75f9 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7600 equ $ + 4
.l75fe equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7618 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7620 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l765c
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
.l76b3 equ $ + 7
.l76b1 equ $ + 5
.l76af equ $ + 3
.l76ad equ $ + 1
.l76ac
	db #00,#00,#00,#00,#00,#00,#00,#00
.l76bb equ $ + 7
.l76ba equ $ + 6
.l76b9 equ $ + 5
.l76b8 equ $ + 4
.l76b7 equ $ + 3
.l76b6 equ $ + 2
.l76b5 equ $ + 1
.l76b4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
	dw #0c9c,#0be7,#0b3c,#0a9b
	dw #0a02,#0973,#08eb,#086b
	dw #07f2,#0780,#0714,#06ae
	dw #064e,#05f4,#059e,#054d
	dw #0501,#0469,#0475,#0435
	dw #03f9,#03c0,#038a,#0357
	dw #0327,#02fa,#02cf,#02a7
	dw #0281,#025d,#023b,#021b
	dw #01fc,#01e0,#01c5,#01ac
	dw #0194,#017d,#0168,#0153
	dw #0140,#012e,#011d,#010d
	dw #00fe,#00f0,#00e2,#00d6
	dw #00ca,#00be,#00b4,#00aa
	dw #00a0,#0097,#008f,#0087
	dw #007f,#0078,#0071,#006b
	dw #0065,#005f,#005a,#0055
	dw #0050,#004c,#0047,#0043
	dw #0040,#003c,#0039,#0035
	dw #0032,#0030,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010,#000f,#000e,#000d
	dw #000c,#000b,#000a
.l7783
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l778f
	push af
	push bc
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	pop af
	ret
.l77b2 equ $ + 1
.l77b1
	db #00,#48,#04,#42,#04,#45,#20,#45
	db #80,#40,#02,#41,#01,#40,#04,#40
	db #01
.l77c2
	ld hl,l77b2
	ld bc,#f40e
	out (c),c
	ld b,#f6
	in a,(c)
	and #30
	ld c,a
	or #c0
	out (c),a
	out (c),c
	inc b
	ld a,#92
	out (c),a
	push bc
	ld de,#0800
.l77e0
	ld a,(hl)
	inc hl
	ld b,#f6
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and (hl)
	jr z,l77ef
	scf
.l77ef
	rl e
	inc hl
	dec d
	jr nz,l77e0
	ld b,#f6
	ld a,#49
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and #1f
	or e
	ld e,a
	ld (l77b1),a
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	ret
.l7810
	ld a,(l7827)
	ld e,a
.l7814
	ld b,#1e
.l7816
	ld a,(l77b1)
	or a
	jr z,l7826
	ld c,#ff
.l781e
	dec c
	jr nz,l781e
	djnz l7816
	dec e
	jr nz,l7814
.l7826
	ret
.l7827
	inc bc
.l7828
	ld a,(l77b1)
	bit 4,a
	jr nz,l7828
	ret
.l7830
	ld a,#be
.l7832
	ld b,#ff
.l7834
	djnz l7834
	dec a
	jr nz,l7832
	ret
.l783a
	di
	ld de,l7881
	ld hl,#0038
	ld bc,#0004
	ldir
	ld hl,#0039
	ld de,l785f
	ld (hl),e
	inc hl
	ld (hl),d
	ei
	ret
.l7851
	di
	ld hl,l7881
	ld de,#0038
	ld bc,#0004
	ldir
	ei
	ret
.l785f
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l7887)
	cp #06
	jr nz,l7875
	call l70dd
	xor a
	ld (l7887),a
.l7875
	inc a
	ld (l7887),a
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
.l7881
	nop
	nop
	nop
	nop
	nop
	ret
.l7887
	nop
	ld a,#0e
	call #bbde
	ld a,#01
	call #bc6b
	call l78aa
	xor a
.l7896
	push af
	ld (l7902),a
	call l78b0
	pop af
	inc a
	cp #05
	jr nz,l7896
	ret
.l78a4
	ld a,#0e
	call #bbde
	ret
.l78aa
	ld a,#08
	call #bbde
	ret
.l78b0
	ld a,(l7902)
	ld b,a
	add a
	add a
	add a
	add b
	ld c,a
	ld b,#00
	ld hl,l790c
	add hl,bc
	ld de,l7903
	ld bc,#0009
	ldir
	ld a,(l7902)
.l78ca
	cp #05
	jr c,l78d2
	sub #05
	jr l78ca
.l78d2
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	push hl
	pop bc
	ld hl,#006e
	or a
	sbc hl,bc
	ld de,#00d6
	call #bbc0
	ld a,#09
	ld bc,l7903
.l78ec
	push af
	push bc
	ld a,(bc)
	call #bbfc
	ld de,#fff6
	ld hl,#0000
	call #bbc3
	pop bc
	inc bc
	pop af
	dec a
	jr nz,l78ec
	ret
.l7903 equ $ + 1
.l7902
	db #00,#54,#52,#4f,#4e,#43,#4f,#4e
.l790c equ $ + 2
	db #20,#20,#20,#54,#52,#4f,#4e,#43
	db #4f,#4e,#20,#20,#54,#52,#4f,#4e
	db #43,#4f,#4e,#41,#20,#54,#52,#4f
	db #4e,#43,#4f,#4e,#42,#20,#54,#52
	db #4e,#4f,#43,#4f,#4e,#43,#20,#54
	db #52,#4f,#4e,#43,#4f,#4e,#45,#20
	db #54,#52,#4f,#4e,#43,#4f,#4e,#46
	db #20,#54,#52,#4f,#4e,#43,#4f,#4e
	db #20,#20,#54,#52,#4f,#4e,#43,#4f
	db #4e,#41,#20,#54,#52,#4f,#4e,#43
	db #4f,#4e,#42,#20,#54,#52,#4e,#4f
	db #43,#4f,#4e,#43,#20,#54,#52,#4f
	db #4e,#43,#4f,#4e,#45,#20,#54,#52
	db #4f,#4e,#43,#4f,#4e,#46,#20,#54
	db #52,#4f,#4e,#43,#4f,#4e,#20,#20
	db #54,#52,#4f,#4e,#43,#4f,#4e,#41
	db #20,#54,#52,#4f,#4e,#43,#4f,#4e
	db #42,#20,#54,#52,#4e,#4f,#43,#4f
	db #4e,#43,#20,#54,#52,#4f,#4e,#43
	db #4f,#4e,#45,#20,#54,#52,#4f,#4e
	db #43,#4f,#4e,#46,#20,#54,#52,#4f
	db #4e,#43,#4f,#4e,#20,#20,#54,#52
	db #4f,#4e,#43,#4f,#4e,#41,#20,#54
	db #52,#4f,#4e,#43,#4f,#4e,#42,#20
	db #54,#52,#4e,#4f,#43,#4f,#4e,#43
	db #20,#54,#52,#4f,#4e,#43,#4f,#4e
	db #45,#20,#54,#52,#4f,#4e,#43,#4f
	db #4e,#46,#20,#46,#4c,#45,#20,#20
	db #3a,#20,#66,#6c,#61,#67,#20,#70
	db #65,#6e,#74,#65,#20,#6c,#6f,#6e
	db #67,#75,#65,#20,#6f,#75,#40,#c0
	db #c0,#80,#00,#c0,#40,#80,#00,#80
	db #00,#80,#00,#80,#00,#6e,#86,#c0
	db #1b,#00,#40,#80,#c0,#c0,#c0,#00
	db #40,#80,#c0,#00,#40,#00,#40,#00
	db #40,#6e,#86,#c0,#0b,#c4,#cc,#cc
	db #c8,#6e,#86,#c0,#04,#80,#80,#c0
	db #40,#c0,#c0,#80,#00,#80,#c0,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#6e,#86,#c0,#19,#00,#40,#80
	db #c0,#c0,#c0,#00,#40,#80,#c0,#00
	db #40,#00,#40,#80,#c0,#00,#40,#00
	db #40,#00,#40,#6e,#86,#c0,#09,#c4
	db #cc,#cc,#9c,#80,#00,#c0,#40,#c0
	db #c0,#80,#40,#80,#00,#80,#00,#80
	db #00,#80,#80,#80,#00,#80,#80,#80
	db #00,#80,#00,#80,#00,#6e,#86,#c0
	db #13,#40,#c0,#80,#c0,#c0,#c0,#80
	db #c0,#40,#c0,#c0,#c0,#00,#40,#80
	db #c0,#00,#40,#00,#40,#00,#40,#00
	db #40,#c0,#c0,#c0,#c4,#cc,#cc,#c8
	db #c4,#cc,#cc,#9c,#c0,#80,#c0,#40
	db #c0,#c0,#80,#00,#80,#00,#c0,#40
	db #80,#00,#c0,#80,#80,#00,#c0,#c0
	db #80,#00,#80,#00,#80,#40,#6e,#86
	db #c0,#13,#00,#40,#80,#c0,#c0,#c0
	db #00,#40,#00,#40,#00,#40,#80,#c0
	db #40,#40,#00,#6e,#86,#c0,#0a,#c4
	db #cc,#cc,#c8,#94,#cc,#9c,#9c,#80
	db #80,#c0,#40,#c0,#c0,#80,#00,#80
	db #00,#80,#00,#80,#00,#80,#00,#80
	db #00,#6e,#86,#c0,#1b,#00,#40,#80
	db #c0,#c0,#c0,#00,#40,#c0,#c0,#00
	db #40,#c0,#c0,#00,#40,#6e,#86,#c0
	db #0b,#94,#cc,#9c,#c8,#90,#cc,#98
	db #9c,#80,#c0,#c0,#40,#c0,#c0,#80
	db #00,#80,#80,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#80,#80,#00,#6e
	db #86,#c0,#17,#00,#40,#80,#c0,#c0
	db #c0,#00,#40,#40,#40,#00,#40,#40
	db #c0,#00,#40,#00,#40,#6e,#86,#c0
	db #09,#90,#cc,#98,#c8,#c4,#cc,#cc
	db #9c,#80,#80,#c0,#40,#c0,#c0,#80
	db #00,#80,#00,#80,#c0,#80,#00,#80
	db #00,#6e,#86,#c0,#1d,#00,#40,#80
	db #c0,#c0,#c0,#40,#40,#80,#c0,#40
	db #40,#00,#c0,#00,#40,#40,#40,#6e
	db #86,#c0,#09,#c4,#cc,#cc,#c8,#c4
	db #cc,#cc,#9c,#80,#00,#c0,#40,#c0
	db #c0,#80,#00,#80,#00,#80,#00,#80
	db #00,#80,#00,#6e,#86,#c0,#0d,#60
	db #6e,#86,#c0,#2a,#c4,#cc,#cc,#c8
	db #6e,#86,#c0,#04,#80,#00,#c0,#40
	db #c0,#c0,#80,#00,#80,#80,#80,#00
	db #80,#80,#80,#00,#6e,#86,#c0,#0d
	db #60,#c0,#48,#0c,#c0,#0c,#48,#48
	db #c0,#c0,#48,#6e,#86,#c0,#04,#0c
	db #48,#0c,#48,#48,#c0,#0c,#48,#0c
	db #48,#0c,#48,#c0,#c0,#0c,#48,#0c
	db #48,#0c,#48,#0c,#48,#0c,#48,#0c
	db #48,#6e,#86,#c0,#06,#c4,#cc,#cc
	db #9c,#80,#00,#c0,#40,#c0,#c0,#80
	db #40,#80,#00,#80,#00,#80,#80,#c0
	db #40,#80,#40,#80,#00,#80,#c0,#80
	db #c0,#80,#00,#80,#00,#c0,#60,#6e
	db #86,#c0,#2a,#c4,#cc,#cc,#c8,#c4
	db #cc,#cc,#9c,#80,#00,#c0,#40,#c0
	db #c0,#80,#80,#c0,#40,#80,#00,#80
	db #00,#80,#80,#80,#00,#80,#00,#6e
	db #86,#c0,#09,#60,#c0,#48,#0c,#48
	db #48,#c0,#0c,#48,#c0,#48,#6e,#86
	db #c0,#04,#0c,#48,#0c,#48,#0c,#48
	db #0c,#48,#0c,#48,#c0,#c0,#0c,#48
	db #0c,#48,#0c,#48,#0c,#48,#0c,#48
	db #0c,#48,#6e,#86,#c0,#04,#c4,#cc
	db #cc,#c8,#94,#cc,#9c,#9c,#80,#00
	db #c0,#40,#c0,#c0,#80,#00,#80,#00
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #80,#80,#80,#00,#6e,#86,#c0,#07
	db #60,#6e,#86,#c0,#2a,#94,#cc,#9c
	db #c8,#90,#cc,#98,#9c,#80,#00,#c0
	db #40,#c0,#c0,#80,#00,#80,#00,#80
	db #00,#80,#00,#80,#00,#6e,#86,#c0
	db #0d,#60,#c0,#c0,#0c,#c0,#48,#48
	db #84,#c0,#0c,#c0,#48,#48,#6e,#86
	db #c0,#04,#0c,#48,#84,#c0,#6e,#86
	db #48,#04,#84,#c0,#c0,#c0,#6e,#86
	db #48,#04,#0c,#48,#84,#c0,#48,#6e
	db #86,#c0,#05,#90,#cc,#98,#c8,#c4
	db #cc,#cc,#9c,#80,#00,#c0,#40,#c0
	db #c0,#c0,#80,#c0,#40,#80,#00,#c0
	db #40,#80,#00,#6e,#86,#c0,#0d,#60
	db #6e,#86,#c0,#2a,#c4,#cc,#cc,#c8
	db #c4,#cc,#cc,#9c,#80,#80,#c0,#40
	db #c0,#c0,#c0,#80,#c0,#40,#80,#00
	db #80,#00,#6e,#86,#c0,#0f,#60,#84
	db #c0,#48,#c0,#6e,#86,#48,#07,#c0
	db #84,#c0,#c0,#c0,#48,#c0,#84,#c0
	db #6e,#86,#48,#04,#c0,#c0,#0c,#6e
	db #86,#48,#04,#c0,#84,#c0,#48,#48
	db #6e,#86,#c0,#06,#c4,#cc,#cc,#c8
	db #6e,#86,#c0,#21,#60,#6e,#86,#c0
	db #2e,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #c8,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #c8,#6e,#86,#00,#30,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#c8,#94,#3c,#3c
	db #3c,#80,#80,#c0,#80,#c0,#c0,#80
	db #80,#80,#00,#6e,#86,#80,#06,#6e
	db #86,#c0,#1d,#40,#40,#c0,#40,#c0
	db #c0,#6e,#86,#40,#05,#c0,#40,#c0
	db #6e,#86,#40,#04,#6e,#86,#c0,#09
	db #94,#3c,#3c,#68,#c4,#cc,#cc,#9c
	db #80,#80,#c0,#80,#c0,#c0,#6e,#86
	db #80,#0d,#6e,#86,#c0,#1a,#40,#40
	db #c0,#40,#c0,#c0,#00,#40,#40,#c0
	db #40,#c0,#6e,#86,#40,#04,#80,#c0
	db #40,#6e,#86,#c0,#08,#c4,#cc,#cc
	db #c8,#94,#cc,#9c,#9c,#80,#80,#c0
	db #80,#c0,#c0,#6e,#86,#80,#05,#c0
	db #80,#80,#c0,#40,#6e,#86,#80,#05
	db #6e,#86,#c0,#18,#40,#40,#c0,#40
	db #c0,#c0,#00,#40,#80,#c0,#40,#c0
	db #40,#c0,#80,#c0,#6e,#86,#40,#04
	db #6e,#86,#c0,#07,#94,#cc,#9c,#c8
	db #90,#cc,#98,#9c,#80,#80,#c0,#80
	db #c0,#c0,#6e,#86,#80,#09,#c0,#80
	db #c0,#6e,#86,#80,#05,#6e,#86,#c0
	db #16,#40,#40,#c0,#40,#c0,#c0,#6e
	db #86,#40,#04,#80,#c0,#40,#40,#c0
	db #c0,#00,#6e,#86,#40,#08,#c0,#c0
	db #90,#cc,#98,#c8,#c4,#cc,#cc,#9c
	db #80,#c0,#c0,#80,#c0,#c0,#80,#80
	db #c0,#40,#6e,#86,#80,#0a,#6e,#86
	db #c0,#1a,#40,#c0,#40,#c0,#c0,#6e
	db #86,#40,#09,#c0,#40,#c0,#40,#c0
	db #40,#6e,#86,#c0,#06,#c4,#cc,#cc
	db #c8,#6e,#86,#c0,#04,#80,#c0,#c0
	db #80,#c0,#c0,#6e,#86,#80,#05,#c0
	db #80,#c0,#6e,#86,#80,#04,#6e,#86
	db #c0,#1b,#00,#c0,#c0,#40,#c0,#c0
	db #6e,#86,#40,#08,#80,#c0,#40,#40
	db #6e,#86,#c0,#0d,#c4,#cc,#cc,#9c
	db #80,#c0,#c0,#80,#c0,#c0,#6e,#86
	db #80,#09,#c0,#80,#6e,#86,#c0,#1c
	db #40,#40,#c0,#40,#c0,#c0,#6e,#86
	db #40,#06,#80,#c0,#40,#6e,#86,#c0
	db #0c,#c4,#cc,#cc,#c8,#94,#3c,#3c
	db #3c,#80,#80,#c0,#80,#c0,#c0,#80
	db #80,#80,#c0,#80,#80,#c0,#40,#c0
	db #40,#80,#80,#80,#6e,#86,#c0,#1a
	db #40,#40,#c0,#40,#c0,#c0,#6e,#86
	db #40,#05,#c0,#40,#c0,#40,#40,#40
	db #c0,#40,#c0,#40,#40,#6e,#86,#c0
	db #05,#94,#3c,#3c,#68,#c4,#cc,#cc
	db #9c,#c0,#40,#c0,#80,#c0,#c0,#80
	db #80,#80,#c0,#6e,#86,#80,#07,#c0
	db #80,#00,#80,#c0,#80,#80,#c0,#40
	db #6e,#86,#c0,#13,#40,#40,#c0,#40
	db #c0,#c0,#40,#40,#40,#c0,#c0,#c0
	db #6e,#86,#40,#0b,#6e,#86,#c0,#04
	db #c4,#cc,#cc,#c8,#94,#cc,#9c,#9c
	db #c0,#80,#c0,#80,#c0,#c0,#80,#c0
	db #80,#c0,#80,#80,#80,#c0,#c0,#40
	db #80,#c0,#c0,#c0,#80,#c0,#6e,#86
	db #80,#04,#6e,#86,#c0,#13,#40,#c0
.l8001 equ $ + 7
.l8000 equ $ + 6
	db #c0,#40,#c0,#c0,#40,#40,#00,#02
.l8008 equ $ + 6
.l8006 equ $ + 4
.l8004 equ $ + 2
.l8002
	db #ee,#00,#ee,#01,#6e,#00,#96,#00
.l800c equ $ + 2
.l800a
	db #be,#00,#ee,#02,#f6,#02,#fe,#02
	db #17,#03,#3f,#03,#6b,#03,#8b,#03
	db #b7,#03,#f1,#03,#27,#04,#3f,#04
	db #67,#04,#87,#04,#bd,#04,#c9,#04
	db #d1,#04,#f1,#04,#1c,#05,#42,#05
	db #6a,#05,#9f,#05,#d3,#05,#fc,#05
	db #1c,#06,#44,#06,#56,#06,#92,#06
	db #b2,#06,#e8,#06,#f4,#06,#00,#07
	db #10,#07,#2f,#07,#96,#07,#f7,#07
	db #25,#08,#52,#08,#83,#08,#ae,#08
	db #d8,#08,#26,#09,#3f,#09,#90,#09
	db #d2,#09,#e3,#09,#f2,#09,#3d,#0a
	db #5e,#0a,#9d,#0a,#00,#01,#02,#03
	db #04,#03,#05,#06,#05,#05,#07,#07
	db #07,#08,#05,#05,#09,#09,#05,#06
	db #07,#07,#07,#08,#05,#05,#04,#04
	db #0b,#0c,#0c,#0c,#03,#04,#03,#04
	db #0b,#0c,#0d,#ff,#0e,#0f,#10,#0f
	db #10,#0f,#11,#10,#0f,#10,#13,#14
	db #13,#15,#16,#17,#18,#18,#17,#17
	db #13,#14,#13,#15,#19,#19,#19,#19
	db #1a,#1b,#19,#19,#19,#19,#19,#19
	db #1a,#1b,#1c,#ff,#1d,#1e,#1f,#20
	db #21,#20,#22,#23,#22,#24,#25,#25
	db #25,#25,#25,#25,#25,#26,#27,#27
	db #28,#28,#27,#29,#2a,#2b,#2a,#2b
	db #2a,#2b,#2a,#2c,#27,#2d,#2d,#2d
	db #2e,#2f,#2d,#2d,#2d,#2d,#2d,#2d
	db #2e,#2f,#30,#ff,#0f,#00,#0f,#00
	db #0f,#00,#0f,#00,#01,#0f,#0f,#ff
	db #01,#00,#01,#00,#01,#0d,#0d,#ff
	db #01,#00,#01,#00,#01,#0b,#0b,#ff
	db #01,#00,#01,#00,#01,#09,#09,#ff
	db #01,#00,#01,#00,#01,#0f,#03,#00
	db #03,#ff,#84,#b0,#01,#0c,#01,#00
	db #01,#00,#01,#00,#01,#0c,#0c,#ff
	db #01,#00,#01,#00,#01,#0f,#05,#ff
	db #04,#00,#83,#9e,#01,#0d,#02,#ff
	db #02,#00,#0b,#ff,#01,#0f,#01,#fb
	db #08,#00,#0a,#ff,#01,#0f,#01,#00
	db #03,#fb,#09,#00,#01,#0c,#02,#00
	db #0c,#ff,#01,#00,#01,#0f,#04,#ff
	db #08,#00,#0b,#ff,#01,#0d,#82,#84
	db #02,#00,#0b,#ff,#01,#0d,#02,#00
	db #06,#fe,#01,#ff,#01,#0e,#01,#00
	db #01,#f2,#01,#00,#01,#0f,#02,#00
	db #0f,#ff,#01,#00,#01,#0f,#02,#00
	db #82,#9e,#01,#00,#01,#0a,#01,#00
	db #01,#f6,#01,#00,#01,#0c,#01,#00
	db #01,#f4,#01,#00,#01,#0e,#01,#00
	db #01,#f2,#01,#00,#01,#0c,#04,#00
	db #0b,#ff,#01,#00,#01,#0e,#04,#00
	db #0b,#ff,#04,#00,#01,#0f,#04,#00
	db #0f,#ff,#01,#00,#01,#0c,#03,#00
	db #04,#fd,#01,#00,#01,#0e,#03,#00
	db #04,#fd,#01,#fe,#01,#0f,#03,#00
	db #08,#ff,#01,#00,#01,#0d,#03,#00
	db #08,#ff,#05,#00,#01,#0f,#09,#ff
	db #09,#01,#0f,#ff,#01,#0f,#02,#00
	db #0c,#ff,#0c,#01,#01,#0d,#0c,#ff
	db #0d,#01,#0e,#ff,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#82,#02
	db #82,#84,#82,#02,#01,#00,#83,#03
	db #83,#86,#83,#03,#01,#00,#84,#04
	db #84,#88,#84,#04,#02,#00,#01,#01
	db #01,#fe,#01,#01,#01,#00,#01,#04
	db #01,#04,#01,#03,#01,#00,#01,#03
	db #01,#02,#01,#02,#01,#00,#01,#7f
	db #03,#d8,#01,#d1,#01,#00,#01,#fe
	db #01,#ff,#01,#ff,#01,#00,#01,#02
	db #01,#02,#01,#01,#02,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#7f
	db #03,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#7f
	db #03,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#7f
	db #03,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#7f
	db #03,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#c0,#e1,#00,#89
	db #e0,#00,#00,#ff,#c0,#e1,#01,#8b
	db #e0,#00,#00,#ff,#c0,#e1,#01,#85
	db #e0,#00,#00,#81,#00,#c6,#2f,#e1
	db #06,#83,#2f,#c7,#e1,#01,#85,#31
	db #c0,#00,#89,#00,#ff,#c0,#e1,#04
	db #81,#e0,#00,#00,#da,#42,#83,#40
	db #42,#81,#40,#83,#44,#81,#42,#83
	db #3d,#3f,#40,#c0,#00,#da,#81,#47
	db #83,#46,#47,#81,#49,#83,#46,#42
	db #40,#81,#44,#42,#ff,#c0,#e1,#01
	db #83,#e0,#00,#00,#da,#81,#47,#46
	db #c0,#00,#c6,#2f,#e1,#06,#83,#2f
	db #c7,#e1,#01,#81,#31,#da,#47,#83
	db #46,#47,#46,#40,#81,#42,#83,#3d
	db #81,#3f,#83,#40,#42,#44,#47,#46
	db #ff,#da,#e1,#04,#85,#e0,#00,#42
	db #42,#c0,#83,#00,#da,#44,#85,#40
	db #83,#47,#c0,#81,#00,#da,#83,#47
	db #81,#47,#83,#46,#42,#44,#3f,#40
	db #ff,#da,#e1,#04,#85,#e0,#00,#46
	db #81,#46,#c6,#e1,#01,#2f,#e1,#06
	db #83,#2f,#c7,#e1,#01,#81,#31,#da
	db #e1,#04,#46,#83,#44,#47,#46,#44
	db #46,#81,#47,#83,#49,#4b,#81,#4b
	db #83,#49,#47,#44,#ff,#da,#e1,#01
	db #83,#e0,#00,#42,#c0,#81,#00,#da
	db #42,#83,#40,#3f,#81,#3d,#c6,#34
	db #e1,#09,#83,#34,#c7,#e1,#01,#81
	db #36,#da,#3b,#34,#34,#3a,#3b,#d9
	db #3b,#38,#da,#3a,#3b,#d9,#3b,#3b
	db #3d,#da,#3f,#d9,#3b,#3a,#d8,#3a
	db #d9,#34,#da,#36,#d9,#36,#ff,#da
	db #e1,#01,#81,#e0,#00,#42,#c6,#40
	db #e1,#0a,#83,#40,#c7,#e1,#01,#81
	db #42,#da,#42,#83,#40,#44,#42,#81
	db #3d,#83,#3f,#40,#c6,#81,#3f,#3d
	db #c4,#2a,#1e,#c3,#25,#c2,#2c,#c1
	db #20,#c4,#25,#c3,#25,#c2,#27,#2e
	db #2a,#36,#2a,#1e,#ff,#da,#e1,#01
	db #81,#e0,#00,#42,#c6,#40,#e1,#0a
	db #83,#40,#c7,#e1,#01,#81,#42,#c1
	db #83,#1e,#81,#1e,#ff,#da,#e1,#01
	db #85,#e0,#00,#42,#81,#42,#c6,#2f
	db #e1,#06,#83,#2f,#c7,#e1,#01,#31
	db #da,#44,#85,#40,#83,#47,#c0,#81
	db #00,#da,#83,#47,#81,#47,#83,#46
	db #42,#44,#3f,#40,#ff,#da,#e1,#01
	db #85,#e0,#00,#3b,#3b,#c0,#83,#00
	db #da,#3d,#85,#3a,#83,#3b,#c0,#81
	db #00,#da,#83,#3b,#81,#3b,#83,#38
	db #36,#38,#33,#31,#ff,#da,#e1,#01
	db #85,#e0,#00,#3b,#81,#3b,#c6,#3a
	db #e1,#0a,#83,#3a,#c7,#e1,#01,#81
	db #3b,#da,#83,#3f,#c0,#81,#00,#da
	db #85,#3d,#c0,#81,#00,#da,#83,#3b
	db #81,#3b,#3f,#3f,#83,#3d,#c0,#81
	db #00,#da,#83,#3b,#81,#3b,#3f,#3f
	db #83,#3d,#ff,#da,#e1,#01,#85,#e0
	db #00,#3b,#c0,#00,#00,#00,#ff,#c0
	db #e1,#00,#89,#e0,#00,#00,#ff,#c1
	db #e1,#01,#85,#e0,#00,#1e,#1e,#c0
	db #83,#00,#c1,#20,#85,#1c,#83,#23
	db #c0,#81,#00,#c1,#83,#23,#81,#23
	db #83,#22,#1e,#20,#1b,#1c,#ff,#c1
	db #e1,#01,#85,#e0,#00,#1e,#81,#1e
	db #c6,#28,#e1,#05,#83,#28,#c7,#e1
	db #01,#2a,#c1,#20,#85,#1c,#83,#23
	db #c0,#81,#00,#c1,#83,#23,#81,#23
	db #83,#22,#23,#25,#81,#1c,#1e,#83
	db #20,#ff,#c0,#e1,#01,#81,#e0,#00
	db #00,#c1,#1e,#83,#1c,#1e,#81,#1c
	db #83,#20,#81,#1e,#83,#19,#1b,#20
	db #23,#81,#23,#83,#22,#81,#23,#83
	db #25,#22,#1e,#1c,#81,#20,#1e,#ff
	db #c0,#e1,#01,#81,#e0,#00,#00,#c1
	db #83,#1e,#81,#1e,#1c,#c6,#28,#e1
	db #05,#83,#28,#c1,#e1,#01,#1e,#1c
	db #20,#1e,#1c,#1e,#81,#20,#83,#1e
	db #1c,#81,#1c,#83,#1b,#23,#20,#ff
	db #da,#e1,#01,#83,#e0,#00,#3a,#c0
	db #81,#00,#da,#3a,#83,#38,#3b,#81
	db #3a,#c6,#2f,#e1,#06,#83,#2f,#c7
	db #e1,#01,#81,#31,#da,#38,#3b,#38
	db #83,#3f,#81,#3f,#83,#3b,#81,#38
	db #3b,#38,#83,#40,#3f,#81,#3d,#83
	db #3b,#c0,#81,#00,#ff,#da,#e1,#01
	db #83,#e0,#00,#3a,#c0,#81,#00,#da
	db #3a,#83,#38,#3b,#81,#3a,#d3,#e1
	db #00,#4e,#5a,#5a,#4e,#da,#e1,#01
	db #38,#3b,#38,#83,#3f,#81,#3f,#83
	db #3b,#81,#3b,#3f,#3b,#83,#44,#81
	db #42,#40,#3d,#83,#42,#c0,#81,#00
	db #ff,#da,#e1,#01,#81,#e0,#00,#3a
	db #c6,#2f,#e1,#06,#83,#2f,#c7,#e1
	db #01,#81,#31,#da,#3a,#83,#38,#3b
	db #3a,#81,#38,#83,#36,#3b,#81,#3b
	db #83,#42,#42,#41,#3d,#3a,#36,#c0
	db #00,#ff,#da,#e1,#01,#85,#e0,#00
	db #3a,#3a,#c0,#83,#00,#da,#3b,#85
	db #38,#83,#3f,#c0,#81,#00,#da,#83
	db #3f,#81,#3f,#83,#3d,#3a,#3b,#3b
	db #3d,#ff,#da,#e1,#01,#85,#e0,#00
	db #3a,#81,#3a,#c6,#38,#e1,#08,#83
	db #38,#c7,#e1,#01,#81,#36,#da,#3a
	db #83,#38,#3b,#3a,#38,#3a,#81,#3b
	db #83,#3d,#3f,#81,#3f,#83,#3d,#3b
	db #38,#ff,#d4,#e1,#01,#81,#e0,#00
	db #1e,#2a,#36,#d5,#36,#d4,#1e,#2a
	db #36,#d5,#36,#ff,#da,#e1,#01,#81
	db #e0,#00,#3a,#d4,#36,#3d,#42,#da
	db #3b,#d4,#47,#42,#3b,#47,#42,#da
	db #3d,#d4,#42,#da,#38,#d4,#2f,#34
	db #38,#da,#3b,#d4,#36,#3d,#da,#44
	db #d4,#31,#da,#38,#36,#d5,#42,#da
	db #3d,#d4,#36,#da,#40,#d4,#34,#da
	db #3b,#d4,#34,#da,#3a,#d4,#36,#ff
	db #da,#e1,#01,#85,#e0,#00,#36,#38
	db #c0,#83,#00,#da,#38,#85,#36,#83
	db #38,#c0,#81,#00,#da,#83,#38,#81
	db #38,#83,#34,#33,#34,#2f,#2a,#ff
	db #da,#e1,#01,#85,#e0,#00,#36,#81
	db #38,#c6,#31,#e1,#06,#83,#31,#c7
	db #e1,#01,#81,#33,#da,#83,#36,#c0
	db #81,#00,#da,#85,#34,#c0,#81,#00
	db #da,#83,#33,#81,#33,#36,#36,#83
	db #34,#c0,#81,#00,#da,#83,#33,#81
	db #33,#36,#36,#83,#34,#ff,#da,#e1
	db #01,#85,#e0,#00,#36,#c0,#00,#00
	db #00,#ff,#a1,#d4,#e1,#00,#85,#e0
	db #00,#00,#00,#00,#00,#ff,#a1,#d4
	db #e1,#00,#85,#e0,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#ff,#a1,#d4
	db #e1,#00,#85,#e0,#00,#00,#81,#00
	db #a0,#c6,#e1,#01,#38,#e1,#08,#83
	db #38,#a1,#d4,#e1,#00,#85,#00,#00
	db #00,#00,#00,#00,#ff,#a1,#d4,#e1
	db #04,#81,#e0,#00,#00,#a0,#da,#e1
	db #01,#3f,#83,#3d,#a1,#d4,#e1,#00
	db #81,#00,#a0,#c0,#e1,#01,#00,#da
	db #3d,#40,#a1,#d4,#e1,#00,#00,#a0
	db #da,#e1,#01,#83,#3f,#c0,#81,#00
	db #a1,#d4,#e1,#00,#83,#00,#a0,#da
	db #e1,#01,#40,#a1,#d4,#e1,#00,#00
	db #a0,#da,#e1,#01,#81,#3f,#3d,#a1
	db #d4,#e1,#00,#00,#a0,#da,#e1,#01
	db #83,#3f,#81,#40,#a1,#d4,#e1,#00
	db #83,#00,#a0,#da,#e1,#01,#3d,#a1
	db #d4,#e1,#00,#00,#a0,#da,#e1,#01
	db #81,#3f,#3d,#ff,#a1,#d4,#e1,#00
	db #83,#e0,#00,#00,#a0,#da,#e1,#01
	db #81,#44,#42,#a1,#d4,#e1,#00,#00
	db #a0,#c6,#e1,#01,#38,#e1,#08,#83
	db #38,#a1,#d4,#e1,#00,#81,#00,#a0
	db #da,#e1,#01,#44,#83,#42,#a1,#d4
	db #e1,#00,#00,#a0,#da,#e1,#01,#42
	db #a1,#d4,#e1,#00,#00,#a0,#da,#e1
	db #01,#81,#3f,#38,#a1,#d4,#e1,#00
	db #00,#a0,#da,#e1,#01,#3a,#83,#3b
	db #a1,#d4,#e1,#00,#00,#a0,#da,#e1
	db #01,#3b,#a1,#d4,#e1,#00,#00,#a0
	db #da,#e1,#01,#36,#ff,#a0,#da,#e1
	db #01,#85,#e0,#00,#3a,#3a,#a1,#d4
	db #e1,#00,#83,#00,#a0,#da,#e1,#01
	db #3b,#85,#38,#83,#3f,#c0,#81,#00
	db #da,#3f,#a1,#d4,#e1,#00,#00,#a0
	db #da,#e1,#01,#3f,#83,#3d,#3a,#3b
	db #3b,#3d,#ff,#a0,#da,#e1,#04,#85
	db #e0,#00,#3a,#81,#3a,#c6,#e1,#01
	db #38,#e1,#08,#83,#38,#c7,#e1,#01
	db #81,#36,#da,#e1,#04,#3a,#83,#38
	db #3b,#3a,#38,#3a,#81,#3b,#83,#3d
	db #3f,#81,#3f,#83,#3d,#3b,#38,#ff
	db #a0,#da,#e1,#01,#85,#e0,#00,#3a
	db #81,#3a,#c6,#2f,#e1,#06,#83,#2f
	db #c7,#e1,#01,#31,#da,#3b,#85,#38
	db #83,#3f,#c0,#81,#00,#da,#83,#3f
	db #81,#3f,#83,#3d,#3a,#3b,#a6,#dd
	db #e1,#07,#81,#2c,#27,#de,#83,#25
	db #ff,#a0,#c1,#e1,#01,#83,#e0,#00
	db #1e,#c0,#81,#00,#c1,#1e,#a6,#e1
	db #07,#2c,#c2,#2c,#c3,#2c,#c4,#2c
	db #a0,#c0,#e1,#01,#83,#00,#c1,#1e
	db #a6,#e1,#07,#81,#2c,#c2,#2c,#c3
	db #2c,#c4,#2c,#ff,#a0,#c1,#e1,#01
	db #83,#e0,#00,#1c,#c0,#81,#00,#c1
	db #1c,#a6,#e1,#07,#2c,#c2,#2c,#c3
	db #2c,#c4,#2c,#a0,#c1,#e1,#01,#83
	db #1c,#1b,#a6,#e1,#07,#81,#2c,#c2
	db #2c,#c3,#2c,#c4,#2c,#ff,#a0,#c1
	db #e1,#01,#85,#e0,#00,#1e,#a6,#e1
	db #07,#81,#2c,#c2,#2c,#c3,#2c,#c4
	db #2c,#c0,#83,#00,#a0,#c1,#e1,#01
	db #20,#a6,#e1,#07,#81,#2c,#c2,#2c
	db #c3,#2c,#c4,#2c,#a0,#c1,#e1,#01
	db #83,#23,#c0,#81,#00,#c1,#23,#a6
	db #e1,#07,#2c,#c2,#2c,#c3,#2c,#c4
	db #2c,#a0,#c1,#e1,#01,#83,#1e,#20
	db #a6,#e1,#07,#81,#2c,#c2,#2c,#c3
	db #2c,#c4,#2c,#ff,#e3,#01,#5f,#c1
	db #e1,#07,#81,#e0,#00,#2c,#c2,#2c
	db #c3,#2c,#c4,#2c,#c1,#2c,#c2,#2c
	db #c3,#2c,#c4,#2c,#ff,#a0,#c1,#e1
	db #01,#81,#e0,#00,#1e,#83,#1c,#81
	db #1e,#a6,#e1,#07,#2c,#c2,#2c,#c3
	db #2c,#c4,#2c,#a0,#c0,#e1,#01,#00
	db #c1,#1c,#83,#1e,#a6,#e1,#07,#81
	db #2c,#c2,#2c,#c3,#2c,#c4,#2c,#a0
	db #c1,#e1,#01,#83,#1c,#1e,#a6,#e1
	db #07,#81,#2c,#c2,#2c,#c3,#2c,#c4
	db #2c,#c0,#00,#a0,#c1,#e1,#01,#20
	db #83,#1e,#a6,#e1,#07,#81,#2c,#c2
	db #2c,#c3,#2c,#c4,#2c,#ff,#a0,#c1
	db #e1,#01,#81,#e0,#00,#1e,#2a,#36
	db #36,#a6,#e1,#07,#2c,#c2,#2c,#c3
	db #2c,#c4,#2c,#a0,#c1,#e1,#01,#1e
	db #2a,#1e,#36,#a6,#e1,#07,#2c,#c2
	db #2c,#c3,#2c,#c4,#2c,#a0,#c1,#e1
	db #01,#1c,#28,#34,#34,#a6,#e1,#07
	db #2c,#c2,#2c,#c3,#2c,#c4,#2c,#a0
	db #c1,#e1,#01,#19,#25,#2a,#36,#ff
	db #e3,#01,#5f,#c1,#e1,#07,#81,#e0
	db #00,#2c,#c2,#2c,#c3,#2c,#c4,#2c
	db #ff,#e3,#01,#5f,#c1,#e1,#07,#81
	db #e0,#00,#2c,#83,#29,#81,#25,#ff
	db #a0,#c1,#e1,#01,#83,#e0,#00,#17
	db #17,#a6,#e1,#07,#81,#2c,#c2,#2c
	db #c3,#2c,#c4,#2c,#a0,#c1,#e1,#01
	db #83,#17,#1e,#a6,#e1,#07,#81,#2c
	db #c2,#2c,#c3,#2c,#c4,#2c,#a0,#c1
	db #e1,#01,#83,#20,#22,#a6,#e1,#07
	db #81,#2c,#c2,#2c,#c3,#2c,#c4,#2c
	db #a0,#c1,#e1,#01,#83,#1b,#19,#a6
	db #e1,#07,#81,#2c,#c2,#2c,#c3,#2c
	db #c4,#2c,#ff,#a0,#c1,#e1,#01,#85
	db #e0,#00,#17,#1c,#c0,#83,#00,#c1
	db #1e,#85,#1e,#83,#20,#c0,#81,#00
	db #c1,#83,#1c,#81,#1b,#83,#19,#17
	db #19,#1c,#1e,#ff,#a0,#c1,#e1,#01
	db #85,#e0,#00,#17,#81,#1c,#c6,#1a
	db #e1,#05,#83,#1a,#c7,#e1,#01,#81
	db #1b,#c1,#83,#1c,#c0,#81,#00,#c1
	db #83,#1e,#a6,#e1,#07,#81,#2c,#83
	db #25,#a0,#e1,#01,#17,#81,#17,#1b
	db #1b,#19,#a6,#e1,#07,#2c,#25,#a0
	db #e1,#01,#83,#17,#81,#17,#1b,#1b
	db #83,#19,#ff,#a0,#c1,#e1,#01,#85
	db #e0,#00,#17,#a1,#d4,#e1,#00,#00
	db #00,#00,#ff,#04,#1c,#05,#42,#05
	db #6a,#05,#9f,#05,#d3,#05,#fc,#05
	db #1c,#06,#44,#06,#56,#06,#92,#06
	db #b2,#06,#e8,#06,#f4,#06,#00,#07
	db #10,#07,#2f,#07,#96,#07,#f7,#07
	db #25,#08,#52,#08,#83,#08,#ae,#08
	db #d8,#08,#26,#09,#3f,#09,#90,#09
	db #d2,#09,#e3,#09,#f2,#09,#3d,#0a
	db #5e,#0a,#9d,#0a,#00,#01,#02,#03
	db #04,#03,#05,#06,#05,#05,#07,#07
	db #07,#08,#05,#05,#09,#09,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#94,#cc
	db #9c,#9c,#94,#cc,#9c,#9c,#94,#cc
	db #9c,#9c,#94,#cc,#9c,#9c,#94,#cc
	db #9c,#9c,#94,#c8,#6e,#86,#c0,#08
	db #80,#c0,#40,#40,#c0,#40,#c0,#c0
	db #00,#40,#40,#40,#00,#40,#c0,#c0
	db #00,#c0,#6e,#86,#40,#06,#6e,#86
	db #c0,#08,#9c,#9c,#94,#cc,#9c,#9c
	db #94,#cc,#9c,#9c,#94,#cc,#9c,#9c
	db #94,#cc,#9c,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #90,#c8,#6e,#86,#c0,#28,#98,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#c8,#6e,#86
	db #c0,#28,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#c8,#6e,#86,#c0,#05,#80,#80
	db #80,#00,#80,#00,#80,#00,#80,#00
	db #c0,#c0,#c0,#40,#80,#00,#c0,#c0
	db #80,#80,#80,#00,#80,#80,#80,#00
	db #80,#00,#6e,#86,#c0,#07,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #6e,#86,#c0,#22,#40,#40,#c0,#c0
	db #6e,#86,#40,#06,#c0,#40,#40,#c0
	db #c0,#40,#80,#6e,#86,#c0,#1d,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#6e
	db #86,#00,#30,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#94,#3c,#3c,#3c,#94
	db #3c,#3c,#3c,#94,#3c,#3c,#3c,#94
	db #3c,#3c,#3c,#94,#3c,#3c,#3c,#94
	db #3c,#3c,#3c,#94,#3c,#3c,#3c,#94
	db #3c,#3c,#3c,#94,#3c,#3c,#3c,#94
	db #3c,#3c,#3c,#94,#3c,#3c,#3c,#94
	db #3c,#3c,#3c,#94,#3c,#3c,#3c,#94
	db #3c,#3c,#3c,#94,#3c,#3c,#3c,#94
	db #3c,#3c,#3c,#94,#3c,#3c,#3c,#94
	db #3c,#3c,#3c,#94,#3c,#3c,#3c,#94
	db #3c,#3c,#3c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#c4,#cc,#cc,#9c,#c4
	db #cc,#cc,#9c,#94,#cc,#9c,#9c,#94
	db #cc,#9c,#9c,#94,#cc,#9c,#9c,#94
	db #cc,#9c,#9c,#94,#cc,#9c,#9c,#84
	db #6e,#86,#0c,#07,#94,#cc,#9c,#9c
	db #94,#cc,#0c,#1c,#94,#cc,#8c,#0c
	db #94,#cc,#9c,#9c,#84,#6e,#86,#0c
	db #08,#4c,#9c,#9c,#94,#cc,#9c,#9c
	db #94,#cc,#9c,#9c,#94,#cc,#9c,#9c
	db #94,#cc,#9c,#9c,#94,#cc,#9c,#9c
	db #94,#cc,#9c,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#8c,#0c,#6e,#86,#c0
	db #04,#cc,#98,#9c,#84,#0c,#0c,#48
	db #90,#cc,#8c,#0c,#0c,#4c,#98,#9c
	db #84,#0c,#0c,#1c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#8c,#0c,#c0,#cc,#9c
	db #c4,#cc,#cc,#9c,#84,#0c,#0c,#48
	db #c4,#cc,#8c,#0c,#0c,#48,#c4,#9c
	db #84,#6e,#86,#0c,#08,#4c,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #6e,#86,#c0,#50,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#94,#3c,#3c,#3c
	db #94,#3c,#3c,#3c,#94,#3c,#3c,#3c
	db #94,#3c,#3c,#3c,#94,#3c,#3c,#3c
	db #94,#3c,#3c,#3c,#94,#3c,#3c,#3c
	db #94,#3c,#3c,#3c,#94,#3c,#3c,#3c
	db #94,#3c,#3c,#3c,#94,#3c,#3c,#3c
	db #94,#3c,#3c,#3c,#94,#3c,#3c,#3c
	db #94,#3c,#3c,#3c,#94,#3c,#3c,#3c
	db #94,#3c,#3c,#3c,#94,#3c,#3c,#3c
	db #94,#3c,#3c,#3c,#94,#3c,#3c,#3c
	db #94,#3c,#3c,#3c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#0c,#4c,#c8,#c0,#c0
	db #c0,#0c,#48,#c0,#c0,#cc,#cc,#9c
	db #c4,#cc,#0c,#1c,#c0,#c0,#cc,#9c
	db #c4,#cc,#cc,#0c,#4c,#c8,#6e,#86
	db #c0,#04,#84,#0c,#c0,#c0,#c4,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#94,#cc,#9c,#9c
	db #94,#cc,#9c,#9c,#94,#cc,#9c,#9c
	db #94,#cc,#9c,#9c,#94,#cc,#9c,#9c
	db #94,#cc,#9c,#0c,#0c,#0c,#c0,#c0
	db #94,#cc,#8c,#0c,#94,#c0,#94,#9c
	db #94,#cc,#0c,#0c,#0c,#c0,#c0,#94
	db #94,#cc,#9c,#0c,#0c,#0c,#c0,#c0
	db #94,#cc,#8c,#0c,#c0,#c0,#94,#9c
	db #94,#cc,#9c,#9c,#94,#cc,#9c,#9c
	db #94,#cc,#9c,#9c,#94,#cc,#9c,#9c
	db #94,#cc,#9c,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#90,#c8,#6e,#86
	db #c0,#08,#90,#9c,#90,#cc,#98,#9c
	db #c0,#c0,#c0,#94,#90,#cc,#98,#9c
	db #90,#c8,#6e,#86,#c0,#08,#90,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#90,#cc,#98,#9c
	db #90,#cc,#98,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#c4,#cc,#cc,#9c
	db #c4,#cc,#cc,#9c,#6e,#86,#c0,#12
	db #84,#6e,#86,#0c,#08,#48,#c0,#c0
	db #84,#6e,#86,#0c,#08,#48,#c0,#c0
	db #84,#6e,#86,#0c,#08,#48,#c0,#c0
	db #84,#6e,#86,#0c,#08,#48,#6e,#86
	db #c0,#10,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#8c,#0c,#0c,#48
	db #c4,#9c,#c4,#cc,#0c,#1c,#c0,#c0
	db #8c,#0c,#0c,#48,#c4,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#8c,#0c,#0c,#48
	db #c4,#0c,#4c,#c8,#0c,#1c,#c0,#c0
	db #8c,#0c,#c4,#c0,#c4,#9c,#84,#0c
	db #0c,#1c,#c0,#c0,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#94,#3c,#3c,#3c,#94,#3c
	db #3c,#3c,#94,#3c,#3c,#3c,#94,#3c
	db #3c,#3c,#94,#3c,#2c,#6e,#86,#0c
	db #08,#1c,#c0,#c0,#2c,#6e,#86,#0c
	db #08,#1c,#94,#3c,#2c,#0c,#0c,#48
	db #c0,#0c,#1c,#68,#0c,#1c,#c0,#c0
	db #2c,#6e,#86,#0c,#08,#48,#c0,#c0
	db #3c,#3c,#94,#3c,#3c,#3c,#94,#3c
	db #3c,#3c,#94,#3c,#3c,#3c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#94,#cc
	db #9c,#9c,#94,#cc,#9c,#9c,#94,#cc
	db #9c,#9c,#94,#cc,#9c,#9c,#94,#cc
	db #9c,#9c,#94,#cc,#9c,#9c,#94,#cc
	db #9c,#9c,#94,#cc,#9c,#9c,#94,#cc
	db #9c,#9c,#94,#cc,#9c,#9c,#94,#cc
	db #9c,#9c,#94,#cc,#9c,#9c,#94,#cc
	db #9c,#9c,#94,#cc,#9c,#9c,#94,#cc
	db #9c,#9c,#94,#cc,#9c,#9c,#94,#cc
	db #9c,#9c,#94,#cc,#9c,#9c,#94,#cc
	db #9c,#9c,#94,#cc,#9c,#9c,#90,#cc
	db #98,#9c,#90,#cc,#98,#9c,#90,#cc
	db #98,#9c,#90,#cc,#98,#9c,#90,#cc
	db #98,#9c,#90,#c8,#6e,#86,#c0,#08
	db #80,#c0,#40,#c0,#c0,#40,#c0,#c0
	db #40,#40,#40,#c0,#40,#40,#c0,#c0
	db #80,#c0,#40,#40,#00,#40,#00,#40
	db #6e,#86,#c0,#08,#98,#9c,#90,#cc
	db #98,#9c,#90,#cc,#98,#9c,#90,#cc
	db #98,#9c,#90,#cc,#98,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#c8,#6e,#86,#c0,#28
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#6e,#86,#c0,#50,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#c8,#6e,#86,#c0,#28
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#c4,#cc,#cc,#9c,#c4,#cc
	db #cc,#9c,#94,#3c,#3c,#3c,#94,#3c
	db #3c,#3c,#94,#3c,#3c,#3c,#94,#3c
	db #3c,#3c,#94,#3c,#3c,#3c,#94,#68
	db #6e,#86,#c0,#0c,#00,#80,#c0,#c0
	db #6e,#86,#40,#06,#00,#40,#00,#40
	db #00,#40,#80,#6e,#86,#c0,#0b,#3c
	db #3c,#94,#3c,#3c,#3c,#94,#3c,#3c
	db #3c,#94,#3c,#3c,#3c,#94,#3c,#3c
	db #3c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#c4,#cc,#cc,#9c,#c4,#cc,#cc
	db #9c,#94,#cc,#9c,#9c,#94,#cc,#9c
	db #9c,#94,#cc,#9c,#9c,#94,#cc,#9c
	db #9c,#94,#cc,#9c,#9c,#94,#cc,#9c
	db #9c,#94,#cc,#9c,#9c,#94,#cc,#9c
	db #9c,#94,#cc,#9c,#9c,#94,#cc,#9c
	db #9c,#94,#cc,#9c,#9c,#94,#cc,#9c
	db #9c,#94,#cc,#9c,#9c,#94,#cc,#9c
	db #9c,#94,#cc,#9c,#9c,#94,#cc,#9c
	db #9c,#94,#cc,#9c,#9c,#94,#cc,#9c
	db #9c,#94,#cc,#9c,#9c,#94,#cc,#9c
	db #9c,#6e,#86,#00,#30,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
;
.music_info
	db "The Big Demo - TnT (1998)(MCM)(The Mozart)",0
	db "Music Pro",0

	read "music_end.asm"
