; Music of Zaxon (1991)(Crack'n'Rom)(Zig Zag)()
; Ripped by Megachur the 29/07/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ZAXON.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #4000

	read "music_header.asm"

;
.init_music
;
	di
	xor a
	ld (l4562),a
	ld (l455e),a
	ld hl,l4569
	ld (hl),#00
	ld de,l456a
	ld bc,#0128
	ldir
	ld a,(l47f5)
	ld (l4692),a
	ld bc,l47f4
	ld hl,(l47f6)
	add hl,bc
	ld (l4695),hl
	ld hl,(l47f8)
	add hl,bc
	ld (l4697),hl
	ld hl,(l47fa)
	add hl,bc
	ld (l456e),hl
	ld hl,(l47fc)
	add hl,bc
	ld (l45a9),hl
	ld hl,(l47fe)
	add hl,bc
	ld (l45e4),hl
	ld hl,l4800
	ld (l4693),hl
	ld a,#0f
	ld (l469a),a
	ld hl,l4563
	ld de,l4569
	ld bc,#0005
	ldir
	ld hl,l4563
	ld de,l45a4
	ld bc,#0005
	ldir
	ld hl,l4563
	ld de,l45df
	ld bc,#0005
	ldir
	ld a,#ff
	ld (l455e),a
	ld c,#38
	ld a,#07
	call l453c
	ei
	ret
;
.real_play_music
.l407b
;
	ld a,(l455e)
	or a
	ret z
	xor a
	ld (l455e),a
	ld a,#08
	ld (l469d),a
	cpl
	ld (l469c),a
	ld a,(l469a)
	ld e,a
	ld b,#03
	ld hl,l45fe
.l4096
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jp c,l409e
	ld a,e
.l409e
	ld c,a
	ld a,b
	add #07
	push de
	call l453c
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l4096
	ld hl,l4692
	dec (hl)
	ld ix,l4569
	xor a
.l40b8
	ld (l4699),a
	ld a,(ix+#07)
	or a
	jp nz,l439d
.l40c2
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l40cc
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jp nz,l4123
	ld l,(ix+#01)
	ld h,(ix+#02)
.l40de
	ld a,(hl)
	cp #ff
	jp nz,l4104
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	ld a,(l4562)
	or a
	jp z,l40de
	ld a,(l455f)
	ld (l45e4),a
	xor a
	ld (l455f),a
	jp l40de
.l4104
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l4693)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l47f4
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l40cc
.l4123
	bit 7,a
	jp nz,l4193
	ld hl,l46a4
	or a
	jp z,l4132
	add (ix+#20)
.l4132
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
	ld a,(l4699)
	inc a
	ld hl,l4606
	ld bc,#0014
.l4164
	add hl,bc
	dec a
	jp nz,l4164
	call l4513
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l4699)
	inc a
	ld hl,l4642
	ld bc,#0014
.l417e
	add hl,bc
	dec a
	jp nz,l417e
	call l4513
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l4389
.l4193
	bit 6,a
	jp nz,l41e6
	bit 5,a
	jp z,l41d3
	push af
	xor a
	ld (l469e),a
	pop af
.l41a3
	and #1f
	ld b,a
	jp z,l41bb
	ld a,(l469b)
	push hl
	ld hl,l469c
	and (hl)
	pop hl
	ld c,a
	ld a,#07
	call l453c
	jp l41ca
.l41bb
	ld a,(l469b)
	push hl
	ld hl,l469d
	or (hl)
	pop hl
	ld c,a
	ld a,#07
	call l453c
.l41ca
	ld c,b
	ld a,#06
	call l453c
	jp l4389
.l41d3
	and #1f
	ld hl,l4764
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l4389
.l41e6
	bit 5,a
	jp nz,l428b
	and #1f
	add a
	add a
	add a
	ld hl,(l4695)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#000b
	add hl,bc
	ld (ix+#0a),b
.l4202
	ld a,(de)
	bit 7,a
	jp nz,l4215
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l422e
.l4215
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
	jp nz,l4228
	ld b,#01
.l4228
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l422e
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jp nz,l4202
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l4606
	ld a,(l4699)
	inc a
.l424d
	add hl,bc
	dec a
	jp nz,l424d
	ex de,hl
	call l4513
	jp l4389
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l428b
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l42a2
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
.l42a2
	xor d
	ld b,d
	inc b
	ld b,e
	rst #38
	ld b,d
	or d
	ld b,d
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l4389
	pop hl
	ld a,(hl)
	ld (l469e),a
	and #3f
	ld (l46a0),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l46a1),a
	ld a,(l469e)
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld (l469e),a
	ld a,(hl)
	rlca
	rlca
	and #03
	ld hl,l469e
	or (hl)
	ld (l469e),a
	ld (l469f),a
	ld a,(l46a0)
	ld (l46a3),a
	ld hl,l46a1
	ld b,#ff
	cp (hl)
	jp nc,l42f5
	ld b,#01
.l42f5
	ld a,b
	ld (l46a2),a
	ld a,(l46a3)
	jp l41a3
	ld a,#02
	jp l4306
	ld a,#01
.l4306
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jp z,l437e
	add a
	add a
	add a
	ld hl,(l4697)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ld (ix+#21),#00
.l4325
	ld a,(de)
	bit 7,a
	jp nz,l433a
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
	jp l4353
.l433a
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
	jp nz,l434d
	ld b,#ff
.l434d
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l4353
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jp nz,l4325
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l4642
	ld a,(l4699)
	inc a
.l4372
	add hl,bc
	dec a
	jp nz,l4372
	ex de,hl
	call l4513
	jp l4383
.l437e
	ld a,#00
	ld (ix+#09),a
.l4383
	ld a,(ix+#09)
	ld (ix+#3a),a
.l4389
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l40c2
.l439d
	ld a,(l4692)
	or a
	jp nz,l43a7
	dec (ix+#07)
.l43a7
	ld a,(ix+#0a)
	cp #04
	jp z,l43f5
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
	jp nz,l43d6
	dec (hl)
	jp nz,l43c9
	inc (ix+#0a)
.l43c9
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l43f5
.l43d6
	dec (hl)
	jp nz,l43ec
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
	jp l43ee
.l43ec
	inc hl
	inc hl
.l43ee
	dec (hl)
	jp nz,l43f5
	inc (ix+#0a)
.l43f5
	ld a,(ix+#09)
	or a
	jp z,l449a
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
	jp nz,l4435
	dec (hl)
	jp nz,l4419
	inc (ix+#21)
.l4419
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jp nz,l4425
	inc b
.l4425
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l4465
.l4435
	dec (hl)
	jp nz,l445c
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
	jp nz,l444a
	inc b
.l444a
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l445e
.l445c
	inc hl
	inc hl
.l445e
	dec (hl)
	jp nz,l4465
	inc (ix+#21)
.l4465
	ld a,(ix+#21)
	cp #04
	jp nz,l449a
	ld a,(ix+#09)
	cp #02
	jp nz,l447c
	xor a
	ld (ix+#09),a
	jp l449a
.l447c
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l4699)
	inc a
	ld hl,l4642
	ld bc,#0014
.l4492
	add hl,bc
	dec a
	jp nz,l4492
	call l4513
.l449a
	ld c,(ix+#36)
	ld a,(l4699)
	add a
	call l453c
	ld c,(ix+#37)
	inc a
	call l453c
	ld bc,#003b
	add ix,bc
	ld a,(l469d)
	rlc a
	ld (l469d),a
	cpl
	ld (l469c),a
	ld a,(l4699)
	inc a
	cp #03
	jp nz,l40b8
	ld a,(l469e)
	or a
	jp z,l4500
	dec a
	ld (l469e),a
	or a
	jp nz,l4500
	ld a,(l469f)
	ld (l469e),a
	ld a,(l46a3)
	ld hl,l46a2
	add (hl)
	ld (l46a3),a
	ld c,a
	ld hl,l46a0
	cp (hl)
	jp z,l44f3
	ld hl,l46a1
	cp (hl)
	jp nz,l44fb
.l44f3
	ld a,(l46a2)
	xor #fe
	ld (l46a2),a
.l44fb
	ld a,#06
	call l453c
.l4500
	ld a,(l4692)
	or a
	jp nz,l450d
	ld a,(l47f5)
	ld (l4692),a
.l450d
	ld a,#ff
	ld (l455e),a
	ret
.l4513
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ret
.l453c
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
.l4563 equ $ + 5
.l4562 equ $ + 4
.l455f equ $ + 1
.l455e
	db #00,#00,#00,#00,#ff,#00,#68,#45
.l456a equ $ + 4
.l4569 equ $ + 3
	db #68,#45,#ff,#00,#00,#00,#00,#00
.l456e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45a4 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45a9 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45e4 equ $ + 6
.l45df equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fe
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4606
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4642 equ $ + 4
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
.l4695 equ $ + 7
.l4693 equ $ + 5
.l4692 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l469d equ $ + 7
.l469c equ $ + 6
.l469b equ $ + 5
.l469a equ $ + 4
.l4699 equ $ + 3
.l4697 equ $ + 1
	db #00,#00,#00,#00,#00,#38,#00,#00
.l46a4 equ $ + 6
.l46a3 equ $ + 5
.l46a2 equ $ + 4
.l46a1 equ $ + 3
.l46a0 equ $ + 2
.l469f equ $ + 1
.l469e
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	dw #0010,#000f,#000e
.l4764
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
;
.init_music_interrupt
;
	di
	ld hl,(#0039)
	ld de,l479a
	ldi
	ldi
	ldi
	dec hl
	dec hl
	dec hl
	ld (hl),#c3
	inc hl
	ld de,(l4798)
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	inc hl
	ld (l47c3),hl
	ld bc,#0033
	add hl,bc
	ld (l47c0),hl
	ei
	ret
.l4798
	dw l479d
.l479a
	nop
	nop
	nop
;
.play_music_interrupt
.l479d
;
	ei
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l47c5)
	cp #03
	jr nz,l47b1
	call l407b
	xor a
.l47b1
	inc a
	ld (l47c5),a
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	di
	ex af,af'
.l47c0 equ $ + 1
	jp c,#0000
.l47c3 equ $ + 1
	jp #0000
.l47c5
	nop
	ei
	ld a,#0f
.l47c9
	ld (l469a),a
	ld b,#09
.l47ce
	halt
	djnz l47ce
	dec a
	cp #ff
	jr nz,l47c9
	ld de,(#0039)
	ld hl,l479a
	ldi
	ldi
	ldi
	ret
	ei
	xor a
.l47e6
	ld (l469a),a
	ld b,#0c
.l47eb
	halt
	djnz l47eb
	inc a
	cp #10
	jr nz,l47e6
	ret
.l47fa equ $ + 6
.l47f8 equ $ + 4
.l47f6 equ $ + 2
.l47f5 equ $ + 1
.l47f4
	db #00,#04,#dc,#06,#dc,#07,#44,#00
.l4800 equ $ + 4
.l47fe equ $ + 2
.l47fc
	db #55,#00,#66,#00,#77,#00,#9e,#00
	db #c5,#00,#ec,#00,#13,#01,#2a,#01
	db #3f,#01,#54,#01,#6b,#01,#d0,#01
	db #35,#02,#9a,#02,#ff,#02,#15,#03
	db #2c,#03,#40,#03,#54,#03,#68,#03
	db #7c,#03,#e1,#03,#46,#04,#ab,#04
	db #10,#05,#75,#05,#bd,#05,#05,#06
	db #4d,#06,#94,#06,#00,#01,#02,#03
	db #04,#05,#06,#07,#08,#09,#0a,#0b
	db #0c,#0d,#06,#07,#ff,#0e,#0f,#10
	db #11,#12,#13,#14,#15,#12,#13,#14
	db #15,#12,#16,#14,#15,#ff,#17,#18
	db #19,#1a,#17,#18,#19,#1a,#17,#18
	db #19,#1a,#17,#18,#19,#1a,#ff,#e0
	db #00,#a0,#c1,#e1,#04,#83,#24,#2a
	db #2b,#c2,#24,#2a,#2b,#c3,#24,#2a
	db #2b,#c4,#24,#2a,#2b,#c1,#22,#2a
	db #2b,#c2,#22,#2a,#2b,#c3,#22,#2a
	db #2b,#c4,#22,#2a,#2b,#ff,#e0,#00
	db #a0,#c1,#e1,#04,#83,#20,#2a,#2b
	db #c2,#20,#2a,#2b,#c3,#20,#2a,#2b
	db #c4,#20,#2a,#2b,#c1,#1f,#2a,#2b
	db #c2,#1f,#2a,#2b,#c3,#1f,#2a,#2b
	db #c4,#1f,#2a,#2b,#ff,#e0,#00,#a0
	db #c1,#e1,#04,#83,#27,#2d,#2e,#c2
	db #27,#2d,#2e,#c3,#27,#2d,#2e,#c4
	db #27,#2d,#2e,#c1,#26,#2d,#2e,#c2
	db #26,#2d,#2e,#c3,#26,#2d,#2e,#c4
	db #26,#2a,#2b,#ff,#e0,#00,#a0,#c1
	db #e1,#04,#83,#24,#2b,#2c,#c2,#24
	db #2b,#2c,#c3,#24,#2b,#2c,#c4,#24
	db #2a,#2b,#c1,#23,#2a,#2b,#c2,#23
	db #2a,#2b,#c3,#23,#2a,#2b,#c4,#23
	db #2a,#2b,#ff,#e0,#00,#a0,#c8,#e1
	db #01,#87,#30,#85,#30,#87,#33,#85
	db #33,#87,#37,#37,#83,#33,#32,#30
	db #32,#ff,#e0,#00,#a0,#c8,#e1,#01
	db #87,#30,#85,#30,#87,#33,#85,#33
	db #87,#37,#37,#85,#38,#35,#ff,#e0
	db #00,#a0,#c8,#e1,#01,#87,#3a,#85
	db #3a,#87,#33,#85,#39,#87,#3a,#3a
	db #85,#38,#37,#ff,#e0,#00,#a0,#c8
	db #e1,#01,#87,#38,#85,#38,#87,#30
	db #85,#36,#87,#37,#85,#37,#87,#2f
	db #85,#32,#ff,#e0,#00,#a0,#c1,#e1
	db #04,#83,#30,#c8,#e1,#01,#37,#c1
	db #e1,#04,#36,#c8,#e1,#01,#30,#c2
	db #e1,#04,#37,#c8,#e1,#01,#36,#c2
	db #e1,#04,#30,#c8,#e1,#01,#37,#c3
	db #e1,#04,#36,#c8,#e1,#01,#30,#c3
	db #e1,#04,#37,#c8,#e1,#01,#36,#c1
	db #e1,#04,#2e,#c8,#e1,#01,#37,#c1
	db #e1,#04,#36,#c8,#e1,#01,#2e,#c2
	db #e1,#04,#37,#c8,#e1,#01,#36,#c2
	db #e1,#04,#2e,#c8,#e1,#01,#37,#c3
	db #e1,#04,#36,#c8,#e1,#01,#32,#c4
	db #e1,#04,#37,#c8,#e1,#01,#36,#ff
	db #e0,#00,#a0,#c1,#e1,#04,#83,#2c
	db #c8,#e1,#01,#37,#c1,#e1,#04,#36
	db #c8,#e1,#01,#30,#c2,#e1,#04,#37
	db #c8,#e1,#01,#36,#c2,#e1,#04,#2c
	db #c8,#e1,#01,#37,#c3,#e1,#04,#36
	db #c8,#e1,#01,#30,#c3,#e1,#04,#37
	db #c8,#e1,#01,#36,#c1,#e1,#04,#2b
	db #c8,#e1,#01,#37,#c1,#e1,#04,#36
	db #c8,#e1,#01,#2f,#c2,#e1,#04,#37
	db #c8,#e1,#01,#36,#c2,#e1,#04,#2b
	db #c8,#e1,#01,#37,#c3,#e1,#04,#36
	db #c8,#e1,#01,#38,#c4,#e1,#04,#37
	db #c8,#e1,#01,#35,#ff,#e0,#00,#a0
	db #c1,#e1,#04,#83,#27,#c8,#e1,#01
	db #32,#c1,#e1,#04,#2d,#c8,#e1,#01
	db #33,#c2,#e1,#04,#2e,#c8,#e1,#01
	db #37,#c2,#e1,#04,#27,#c8,#e1,#01
	db #3a,#c3,#e1,#04,#2d,#c8,#e1,#01
	db #3c,#c3,#e1,#04,#2e,#c8,#e1,#01
	db #39,#c1,#e1,#04,#26,#c8,#e1,#01
	db #3a,#c1,#e1,#04,#2d,#c8,#e1,#01
	db #32,#c2,#e1,#04,#2e,#c8,#e1,#01
	db #35,#c2,#e1,#04,#26,#c8,#e1,#01
	db #3a,#c3,#e1,#04,#2d,#c8,#e1,#01
	db #38,#c4,#e1,#04,#2b,#c8,#e1,#01
	db #37,#ff,#e0,#00,#a0,#c1,#e1,#04
	db #83,#24,#c8,#e1,#01,#38,#c1,#e1
	db #04,#2b,#c8,#e1,#01,#30,#c2,#e1
	db #04,#2c,#c8,#e1,#01,#37,#c2,#e1
	db #04,#24,#c8,#e1,#01,#38,#c3,#e1
	db #04,#2b,#c8,#e1,#01,#37,#c3,#e1
	db #04,#2c,#c8,#e1,#01,#36,#c1,#e1
	db #04,#23,#c8,#e1,#01,#37,#c1,#e1
	db #04,#2a,#c8,#e1,#01,#2f,#c2,#e1
	db #04,#2b,#c8,#e1,#01,#36,#c2,#e1
	db #04,#23,#c8,#e1,#01,#37,#c3,#e1
	db #04,#2a,#c8,#e1,#01,#2f,#c4,#e1
	db #04,#2b,#c8,#e1,#01,#32,#ff,#e0
	db #00,#a0,#c8,#e1,#01,#87,#30,#85
	db #30,#87,#3c,#85,#3a,#89,#3e,#83
	db #3f,#3e,#3c,#3e,#ff,#e0,#00,#a0
	db #c8,#e1,#01,#87,#3c,#85,#3c,#87
	db #37,#85,#38,#87,#3a,#85,#3a,#87
	db #33,#85,#33,#ff,#e0,#00,#a0,#c8
	db #e1,#01,#85,#37,#30,#36,#37,#30
	db #36,#37,#2e,#36,#37,#2e,#36,#ff
	db #e0,#00,#a0,#c8,#e1,#01,#85,#37
	db #2c,#36,#37,#2c,#36,#37,#2b,#36
	db #37,#38,#35,#ff,#e0,#00,#a0,#c8
	db #e1,#01,#85,#3a,#33,#39,#3a,#33
	db #39,#3a,#32,#39,#3a,#32,#37,#ff
	db #e0,#00,#a0,#c8,#e1,#01,#85,#38
	db #30,#37,#38,#30,#36,#37,#2f,#36
	db #37,#2f,#36,#ff,#e0,#00,#a0,#c8
	db #e1,#01,#83,#37,#c1,#e1,#04,#2a
	db #c8,#e1,#01,#30,#c2,#e1,#04,#24
	db #c8,#e1,#01,#36,#c2,#e1,#04,#2b
	db #c8,#e1,#01,#37,#c3,#e1,#04,#2a
	db #c8,#e1,#01,#30,#c4,#e1,#04,#24
	db #c8,#e1,#01,#36,#c4,#e1,#04,#2b
	db #c8,#e1,#01,#37,#c1,#e1,#04,#2a
	db #c8,#e1,#01,#32,#c2,#e1,#04,#22
	db #c8,#e1,#01,#36,#c2,#e1,#04,#2b
	db #c8,#e1,#01,#37,#c3,#e1,#04,#2a
	db #c8,#e1,#01,#32,#c4,#e1,#04,#22
	db #c8,#e1,#01,#36,#c4,#e1,#04,#2b
	db #ff,#e0,#00,#a0,#c8,#e1,#01,#83
	db #37,#c1,#e1,#04,#2a,#c8,#e1,#01
	db #30,#c2,#e1,#04,#20,#c8,#e1,#01
	db #36,#c2,#e1,#04,#2b,#c8,#e1,#01
	db #37,#c3,#e1,#04,#2a,#c8,#e1,#01
	db #30,#c4,#e1,#04,#20,#c8,#e1,#01
	db #36,#c4,#e1,#04,#2b,#c8,#e1,#01
	db #37,#c1,#e1,#04,#2a,#c8,#e1,#01
	db #2f,#c2,#e1,#04,#1f,#c8,#e1,#01
	db #36,#c2,#e1,#04,#2b,#c8,#e1,#01
	db #37,#c3,#e1,#04,#2a,#c8,#e1,#01
	db #38,#c4,#e1,#04,#1f,#c8,#e1,#01
	db #35,#c4,#e1,#04,#2b,#ff,#e0,#00
	db #a0,#c8,#e1,#01,#83,#3a,#c1,#e1
	db #04,#2e,#c8,#e1,#01,#33,#c2,#e1
	db #04,#27,#c8,#e1,#01,#39,#c2,#e1
	db #04,#2e,#c8,#e1,#01,#3a,#c3,#e1
	db #04,#2e,#c8,#e1,#01,#33,#c4,#e1
	db #04,#27,#c8,#e1,#01,#39,#c4,#e1
	db #04,#2e,#c8,#e1,#01,#3a,#c1,#e1
	db #04,#2e,#c8,#e1,#01,#32,#c2,#e1
	db #04,#26,#c8,#e1,#01,#39,#c2,#e1
	db #04,#2e,#c8,#e1,#01,#3a,#c3,#e1
	db #04,#2d,#c8,#e1,#01,#32,#c4,#e1
	db #04,#26,#c8,#e1,#01,#37,#c4,#e1
	db #04,#2b,#ff,#e0,#00,#a0,#c8,#e1
	db #01,#83,#38,#c1,#e1,#04,#2b,#c8
	db #e1,#01,#30,#c2,#e1,#04,#24,#c8
	db #e1,#01,#37,#c2,#e1,#04,#2c,#c8
	db #e1,#01,#38,#c3,#e1,#04,#2b,#c8
	db #e1,#01,#30,#c4,#e1,#04,#24,#c8
	db #e1,#01,#36,#c4,#e1,#04,#2b,#c8
	db #e1,#01,#37,#c1,#e1,#04,#2a,#c8
	db #e1,#01,#2f,#c2,#e1,#04,#23,#c8
	db #e1,#01,#36,#c2,#e1,#04,#2b,#c8
	db #e1,#01,#37,#c3,#e1,#04,#2a,#c8
	db #e1,#01,#2f,#c4,#e1,#04,#23,#c8
	db #e1,#01,#36,#c4,#e1,#04,#2b,#ff
	db #e0,#00,#a0,#c8,#e1,#01,#83,#37
	db #c1,#e1,#04,#2a,#c8,#e1,#01,#30
	db #c2,#e1,#04,#20,#c8,#e1,#01,#36
	db #c2,#e1,#04,#2b,#c8,#e1,#01,#37
	db #c3,#e1,#04,#2a,#c8,#e1,#01,#30
	db #c4,#e1,#04,#20,#c8,#e1,#01,#36
	db #c4,#e1,#04,#2b,#c8,#e1,#01,#3a
	db #c1,#e1,#04,#27,#c8,#e1,#01,#33
	db #c2,#e1,#04,#2b,#c8,#e1,#01,#39
	db #c2,#e1,#04,#2e,#c8,#e1,#01,#3a
	db #c3,#e1,#04,#27,#c8,#e1,#01,#33
	db #c4,#e1,#04,#2b,#c8,#e1,#01,#39
	db #c4,#e1,#04,#2e,#ff,#e0,#00,#a0
	db #c2,#e1,#04,#83,#18,#c1,#18,#a5
	db #e1,#02,#29,#d2,#29,#d3,#29,#d4
	db #29,#a0,#c2,#e1,#04,#18,#c1,#18
	db #a5,#e1,#02,#29,#d2,#29,#d3,#29
	db #d4,#29,#a0,#c2,#e1,#04,#16,#c1
	db #16,#a5,#e1,#02,#29,#d2,#29,#d3
	db #29,#d4,#29,#a0,#c2,#e1,#04,#16
	db #c1,#16,#a5,#e1,#02,#29,#d2,#29
	db #d3,#29,#d4,#29,#ff,#e0,#00,#a0
	db #c2,#e1,#04,#83,#14,#c1,#14,#a5
	db #e1,#02,#29,#d2,#29,#d3,#29,#d4
	db #29,#a0,#c2,#e1,#04,#14,#c1,#14
	db #a5,#e1,#02,#29,#d2,#29,#d3,#29
	db #d4,#29,#a0,#c2,#e1,#04,#13,#c1
	db #13,#a5,#e1,#02,#29,#d2,#29,#d3
	db #29,#d4,#29,#a0,#c2,#e1,#04,#13
	db #c1,#13,#a5,#e1,#02,#29,#d2,#29
	db #d3,#29,#d4,#29,#ff,#e0,#00,#a0
	db #c2,#e1,#04,#83,#1b,#c1,#1b,#a5
	db #e1,#02,#29,#d2,#29,#d3,#29,#d4
	db #29,#a0,#c2,#e1,#04,#1b,#c1,#1b
	db #a5,#e1,#02,#29,#d2,#29,#d3,#29
	db #d4,#29,#a0,#c2,#e1,#04,#1a,#c1
	db #1a,#a5,#e1,#02,#29,#d2,#29,#d3
	db #29,#d4,#29,#a0,#c2,#e1,#04,#1a
	db #c1,#1a,#a5,#e1,#02,#29,#d2,#29
	db #d3,#29,#d4,#29,#ff,#e0,#00,#a0
	db #c2,#e1,#04,#83,#18,#c1,#18,#a5
	db #e1,#02,#29,#d2,#29,#d3,#29,#d4
	db #29,#a0,#c2,#e1,#04,#18,#c1,#18
	db #a5,#e1,#02,#29,#d2,#29,#d3,#29
	db #d4,#29,#a0,#c2,#e1,#04,#17,#c1
	db #17,#a5,#e1,#02,#29,#d2,#29,#d3
	db #29,#d4,#29,#c1,#2b,#2a,#a0,#e1
	db #04,#17,#a5,#e1,#02,#29,#26,#a0
	db #e1,#04,#17,#ff,#e0,#00,#a0,#c2
	db #e1,#04,#83,#14,#c1,#14,#a5,#e1
	db #02,#29,#d2,#29,#d3,#29,#d4,#29
	db #a0,#c2,#e1,#04,#14,#c1,#14,#a5
	db #e1,#02,#29,#d2,#29,#d3,#29,#d4
	db #29,#a0,#c2,#e1,#04,#1b,#c1,#1b
	db #a5,#e1,#02,#29,#d2,#29,#d3,#29
	db #d4,#29,#a0,#c2,#e1,#04,#1b,#c1
	db #1b,#a5,#e1,#02,#29,#d2,#29,#d3
	db #29,#d4,#29,#ff,#0f,#00,#0f,#00
	db #0f,#00,#0f,#00,#01,#0f,#83,#ad
	db #01,#00,#01,#00,#01,#0d,#83,#a7
	db #01,#00,#01,#00,#01,#0b,#83,#a1
	db #01,#00,#01,#00,#01,#09,#83,#9b
	db #01,#00,#01,#00,#01,#07,#83,#95
	db #01,#00,#01,#00,#01,#0f,#82,#88
	db #08,#00,#83,#a1,#01,#0a,#01,#00
	db #03,#00,#84,#a8,#01,#0b,#01,#00
	db #03,#00,#18,#00,#01,#0e,#01,#00
	db #03,#00,#01,#00,#01,#0e,#01,#00
	db #03,#00,#87,#e2,#01,#0e,#01,#00
	db #82,#9c,#62,#00,#01,#0f,#07,#00
	db #84,#bc,#01,#00,#01,#0f,#04,#ff
	db #08,#00,#88,#d3,#01,#0a,#01,#00
	db #01,#f6,#01,#00,#01,#0c,#01,#00
	db #01,#f4,#01,#00,#01,#0e,#01,#00
	db #01,#f2,#01,#00,#01,#0f,#0f,#ff
	db #01,#00,#01,#00,#01,#0d,#0d,#ff
	db #01,#00,#01,#00,#01,#0b,#0b,#ff
	db #01,#00,#01,#00,#01,#09,#09,#ff
	db #01,#00,#01,#00,#01,#0e,#01,#00
	db #01,#f2,#01,#00,#01,#0c,#91,#e3
	db #a1,#63,#a1,#63,#82,#14,#0c,#00
	db #01,#00,#82,#94,#01,#0d,#04,#ff
	db #08,#00,#8a,#d3,#01,#0b,#04,#ff
	db #08,#00,#8c,#d3,#01,#09,#04,#ff
	db #08,#00,#95,#d3,#01,#07,#04,#ff
	db #08,#00,#9e,#da,#01,#0d,#03,#00
	db #08,#ff,#05,#00,#01,#0e,#86,#92
	db #89,#89,#82,#92,#01,#0f,#02,#00
	db #0c,#ff,#0c,#01,#01,#0d,#0c,#ff
	db #0d,#01,#0e,#ff,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#01,#84,#08
	db #82,#88,#84,#08,#01,#00,#01,#3c
	db #03,#ec,#01,#ef,#86,#86,#01,#f1
	db #01,#2b,#01,#e5,#08,#00,#82,#0c
	db #0c,#ff,#06,#01,#04,#00,#82,#04
	db #04,#ff,#82,#04,#85,#0a,#03,#fd
	db #85,#0a,#01,#05,#01,#00,#01,#63
	db #03,#e2,#01,#d1,#01,#04,#01,#38
	db #03,#ec,#01,#f1,#08,#00,#01,#01
	db #01,#fe,#01,#01,#82,#04,#04,#02
	db #04,#fc,#04,#02,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#00,#01,#63
	db #02,#d8,#01,#d1,#06,#00,#01,#ff
	db #01,#00,#01,#01,#08,#00,#01,#01
	db #01,#fe,#01,#01,#08,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#01,#00
	db #01,#01,#01,#ff,#01,#ff,#01,#00
	db #01,#01,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff,#01,#00,#01,#63,#02,#d8
	db #01,#d1,#06,#00,#01,#ff,#01,#00
	db #01,#01,#08,#00,#01,#01,#01,#fe
	db #01,#01,#08,#00,#01,#01,#01,#01
	db #01,#01,#01,#00,#01,#00,#01,#01
	db #01,#ff
;
.play_music     ; added by Megachur
;
	call real_play_music
	jp real_play_music
;
.music_info
	db "Zaxon (1991)(Crack'n'Rom)(Zig Zag)",0
	db "",0

	read "music_end.asm"
