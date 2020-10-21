; Music of Arche du Captain Blood (1988)(Ere Informatique)(Jean-Michel Jarre)()
; Ripped by Megachur the 13/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ARCHEDCB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #4000

	read "music_header.asm"

	di
	call l405b
	ld hl,(#0039)
	push hl
	ld hl,l4036
	ld (#0039),hl
	ei
	xor a
	ld bc,#fa7e
	ld (#be5f),a
	out (c),a
.l4018
	ld a,(l46be)
	and a
	jr z,l4018
	call #0103
	di
	pop hl
	ld (#0039),hl
	ei
;
.stop_music
;
	ld c,#00
	ld a,#08
	call l4492	; stop music
	inc a
	call l4492
	inc a
	jp l4492
.l4036
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld hl,l4059
;	dec (hl)
;	jr nz,l404e
;	di
;	ld (hl),#03
;
.play_music
;
	call l40c3	; added by Megachur
	call l46cf	; added by Megachur
	call l40c3
	jp l46cf	; modified by Megachur
	ei
.l404e
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	reti
.l4059
	db #03,#00

;	org #405b
;
.init_music
.l405b
;
	ld hl,l44ba
	ld (hl),#00
	ld de,l44bb
	ld bc,#0128
	ldir
	ld a,(l471e)
	ld (l45e3),a
	ld bc,l471d
	ld hl,(l471f)
	add hl,bc
	ld (l45e6),hl
	ld hl,(l4721)
	add hl,bc
	ld (l45e8),hl
	ld hl,(l4723)
	add hl,bc
	ld (l44bf),hl
	ld hl,(l4725)
	add hl,bc
	ld (l44fa),hl
	ld hl,(l4727)
	add hl,bc
	ld (l4535),hl
	ld hl,l4729
	ld (l45e4),hl
	ld a,#0f
	ld (l45eb),a
	ld hl,l44b4
	push hl
	ld de,l44ba
	ld bc,#0005
	ldir
	pop hl
	push hl
	ld de,l44f5
	ld c,#05
	ldir
	pop hl
	ld de,l4530
	ld c,#05
	ldir
	ld c,#38
	ld a,#07
	jp l4492
.l40c3
	ld a,(l45eb)
	ld e,a
	ld b,#03
	ld hl,l454f
.l40cc
	ld a,(hl)
	ld c,a
	ld a,c
	cp e
	jr c,l40d3
	ld a,e
.l40d3
	ld c,a
	ld a,b
	add #07
	push de
	call l4492
	ld de,#003b
	and a
	sbc hl,de
	pop de
	djnz l40cc
	ld hl,l45e3
	dec (hl)
	ld ix,l44ba
	xor a
.l40ed
	ld (l45ea),a
	ld a,(ix+#07)
	or a
	jp nz,l4343
.l40f7
	ld (ix+#00),#00
	ld a,(ix+#08)
	ld (ix+#07),a
.l4101
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld a,(hl)
	cp #ff
	jr nz,l4145
	ld l,(ix+#01)
	ld h,(ix+#02)
.l4112
	ld a,(hl)
	cp #ff
	jr nz,l4126
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld (ix+#01),l
	ld (ix+#02),h
	jp l4112
.l4126
	inc hl
	ld (ix+#01),l
	ld (ix+#02),h
	add a
	ld hl,(l45e4)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l471d
	add hl,bc
	ld (ix+#03),l
	ld (ix+#04),h
	jp l4101
.l4145
	bit 7,a
	jr nz,l41a8
	ld hl,l45f2
	or a
	jr z,l4152
	add (ix+#20)
.l4152
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
	ld (ix+#0a),b
	ld (ix+#21),b
	ld (ix+#1f),b
	push ix
	pop hl
	ld c,#0b
	add hl,bc
	ex de,hl
	ld a,(l45ea)
	inc a
	ld hl,l4557
	ld c,#14
.l417f
	add hl,bc
	dec a
	jr nz,l417f
	ldir
	push ix
	pop hl
	ld c,#22
	add hl,bc
	ex de,hl
	ld a,(l45ea)
	inc a
	ld hl,l4593
	ld c,#14
.l4195
	add hl,bc
	dec a
	jr nz,l4195
	ldir
	ld a,(ix+#3a)
	ld (ix+#09),a
	ld (ix+#00),#ff
	jp l432f
.l41a8
	bit 6,a
	jr nz,l41e0
	bit 5,a
	jp z,l41cd
	push af
	xor a
	ld (l45ec),a
	pop af
.l41b7
	and #1f
	ld b,a
	ld c,#38
	jr z,l41c0
	ld c,#18
.l41c0
	ld a,#07
	call l4492
	ld c,b
	dec a
	call l4492
	jp l432f
.l41cd
	and #1f
	ld hl,l46b2
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#07),a
	ld (ix+#08),a
	jp l432f
.l41e0
	bit 5,a
	jr nz,l424a
	and #1f
	add a
	add a
	add a
	ld hl,(l45e6)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld c,#0b
	add hl,bc
	ld (ix+#0a),b
.l41fa
	ld a,(de)
	bit 7,a
	jr nz,l420c
	ld (hl),#00
	inc hl
	ld (hl),a
	inc hl
	inc hl
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	jp l4222
.l420c
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#ff
	add a
	jr c,l421d
	ld b,#01
.l421d
	rrca
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l4222
	inc de
	inc hl
	inc (ix+#0a)
	ld a,#04
	cp (ix+#0a)
	jr nz,l41fa
	ld (ix+#0a),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l4557
	ld a,(l45ea)
	inc a
.l4240
	add hl,bc
	dec a
	jr nz,l4240
	ex de,hl
	ldir
	jp l432f
.l424a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	push hl
	ld hl,l4261
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
.l4261
	ld l,c			; data ???
	ld b,d
	or (hl)
	ld b,d
	or d
	ld b,d
	ld (hl),c
	ld b,d
	pop hl
	ld a,(hl)
	ld (ix+#20),a
	jp l432f
	pop hl
	ld a,(hl)
	ld b,a
	and #3f
	ld (l45ee),a
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(hl)
	and #3f
	ld (l45ef),a
	ld a,b
	and #c0
	rlca
	rlca
	rlca
	rlca
	ld b,a
	ld a,(hl)
	rlca
	rlca
	and #03
	or b
	ld (l45ec),a
	ld (l45ed),a
	ld a,(l45ee)
	ld (l45f1),a
	ld b,a
	ld hl,l45ef
	cp (hl)
	ld a,#ff
	jr nc,l42ab
	ld a,#01
.l42ab
	ld (l45f0),a
	ld a,b
	jp l41b7
	ld a,#02
	jr l42b8
	ld a,#01
.l42b8
	ld (ix+#09),a
	pop hl
	ld a,(hl)
	or a
	jr z,l4325
	add a
	add a
	add a
	ld hl,(l45e8)
	ld c,a
	ld b,#00
	add hl,bc
	ex de,hl
	push ix
	pop hl
	ld c,#22
	add hl,bc
	ld (ix+#21),b
.l42d4
	ld a,(de)
	bit 7,a
	jr nz,l42e8
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
	jp l42fe
.l42e8
	ld (hl),#ff
	and #7f
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	inc de
	ld a,(de)
	ld b,#01
	add a
	jr c,l42f9
	ld b,#ff
.l42f9
	rrca
	inc hl
	ld (hl),a
	inc hl
	ld (hl),b
.l42fe
	inc de
	inc hl
	inc (ix+#21)
	ld a,#04
	cp (ix+#21)
	jr nz,l42d4
	ld (ix+#21),#00
	ld bc,#0014
	or a
	sbc hl,bc
	ex de,hl
	ld hl,l4593
	ld a,(l45ea)
	inc a
.l431c
	add hl,bc
	dec a
	jr nz,l431c
	ex de,hl
	ldir
	jr l4329
.l4325
	xor a
	ld (ix+#09),a
.l4329
	ld a,(ix+#09)
	ld (ix+#3a),a
.l432f
	ld l,(ix+#03)
	ld h,(ix+#04)
	inc hl
	ld (ix+#03),l
	ld (ix+#04),h
	ld a,(ix+#00)
	or a
	jp z,l40f7
.l4343
	ld a,(l45e3)
	or a
	jr nz,l434c
	dec (ix+#07)
.l434c
	ld a,(ix+#0a)
	cp #04
	jp z,l4396
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
	jr nz,l4379
	dec (hl)
	jr nz,l436c
	inc (ix+#0a)
.l436c
	inc hl
	inc hl
	inc hl
	ld a,(ix+#1f)
	add (hl)
	ld (ix+#1f),a
	jp l4396
.l4379
	dec (hl)
	jr nz,l438e
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
	jp l4390
.l438e
	inc hl
	inc hl
.l4390
	dec (hl)
	jr nz,l4396
	inc (ix+#0a)
.l4396
	ld a,(ix+#09)
	or a
	jp z,l442f
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
	jr nz,l43d3
	dec (hl)
	jr nz,l43b8
	inc (ix+#21)
.l43b8
	inc hl
	inc hl
	inc hl
	ld c,(hl)
	ld b,#ff
	bit 7,c
	jr nz,l43c3
	inc b
.l43c3
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	jp l4400
.l43d3
	dec (hl)
	jr nz,l43f8
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
	jr nz,l43e6
	inc b
.l43e6
	ld l,(ix+#36)
	ld h,(ix+#37)
	add hl,bc
	ld (ix+#36),l
	ld (ix+#37),h
	pop hl
	dec hl
	jp l43fa
.l43f8
	inc hl
	inc hl
.l43fa
	dec (hl)
	jr nz,l4400
	inc (ix+#21)
.l4400
	ld a,(ix+#21)
	cp #04
	jr nz,l442f
	ld a,(ix+#09)
	cp #02
	jr nz,l4414
	xor a
	ld (ix+#09),a
	jr l442f
.l4414
	ld (ix+#21),#01
	push ix
	pop hl
	ld bc,#0022
	add hl,bc
	ex de,hl
	ld a,(l45ea)
	inc a
	ld hl,l4593
	ld c,#14
.l4429
	add hl,bc
	dec a
	jr nz,l4429
	ldir
.l442f
	ld c,(ix+#36)
	ld a,(l45ea)
	add a
	call l4492
	ld c,(ix+#37)
	inc a
	call l4492
	ld bc,#003b
	add ix,bc
	ld a,(l45ea)
	inc a
	cp #03
	jp nz,l40ed
	ld a,(l45ec)
	or a
	jr z,l4485
	dec a
	ld (l45ec),a
	or a
	jr nz,l4485
	ld a,(l45ed)
	ld (l45ec),a
	ld a,(l45f1)
	ld hl,l45f0
	add (hl)
	ld (l45f1),a
	ld c,a
	ld hl,l45ee
	cp (hl)
	jr z,l4478
	ld hl,l45ef
	cp (hl)
	jr nz,l4480
.l4478
	ld a,(l45f0)
	xor #fe
	ld (l45f0),a
.l4480
	ld a,#06
	call l4492
.l4485
	ld a,(l45e3)
	or a
	jr nz,l4491
	ld a,(l471e)
	ld (l45e3),a
.l4491
	ret
.l4492
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
.l44b4
	db #00
	dw l44b9,l44b9
.l44b9
	db #ff
.l44bf equ $ + 5
.l44bb equ $ + 1
.l44ba
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.l44f5
	db #00,#00,#00,#00,#00
.l44fa
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l4530
	db #00,#00
	db #00,#00,#00
.l4535
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l454f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4557
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l4593
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
.l45ea equ $ + 7
.l45e8 equ $ + 5
.l45e6 equ $ + 3
.l45e4 equ $ + 1
.l45e3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45f2 equ $ + 7
.l45f1 equ $ + 6
.l45f0 equ $ + 5
.l45ef equ $ + 4
.l45ee equ $ + 3
.l45ed equ $ + 2
.l45ec equ $ + 1
.l45eb
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
	db #0010,#000f,#000e
.l46b2
	db #02,#03,#04,#06,#08,#0c,#10,#18
	db #20,#30,#40,#60
.l46be
	db #00
.l46bf
	db #48,#04,#42,#04,#45,#20,#45,#80
	db #40,#02,#41,#01,#40,#04,#40,#01
.l46cf
	ld hl,l46bf
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
.l46ed
	ld a,(hl)
	inc hl
	ld b,#f6
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and (hl)
	jr z,l46fc
	scf
.l46fc
	rl e
	inc hl
	dec d
	jr nz,l46ed
	ld b,#f6
	ld a,#49
	out (c),a
	ld b,#f4
	in a,(c)
	cpl
	and #1f
	or e
	ld e,a
	ld (l46be),a
	pop bc
	ld a,#82
	out (c),a
	dec b
	out (c),c
	ret
.l4723 equ $ + 6
.l4721 equ $ + 4
.l471f equ $ + 2
.l471e equ $ + 1
.l471d
	db #00,#02,#59,#06,#59,#07,#58,#00
.l4725
	db #6e,#00
.l4727
	db #83,#00
.l4729
	db #bb,#00,#c2,#00,#ef,#00,#1d,#01
	db #6b,#01,#84,#01,#b1,#01,#f7,#01
	db #13,#02,#35,#02,#3c,#02,#58,#02
	db #7a,#02,#96,#02,#c1,#02,#e7,#02
	db #14,#03,#42,#03,#86,#03,#9e,#03
	db #cb,#03,#0b,#04,#23,#04,#45,#04
	db #5d,#04,#7f,#04,#8d,#04,#9b,#04
	db #c1,#04,#e7,#04,#0e,#05,#35,#05
	db #3c,#05,#63,#05,#8a,#05,#b1,#05
	db #d8,#05,#ff,#05,#00,#00,#01,#01
	db #02,#03,#03,#04,#01,#06,#03,#03
	db #07,#07,#08,#0a,#0a,#0b,#0c,#0d
	db #0d,#ff,#0e,#0e,#0f,#0f,#10,#11
	db #11,#12,#0f,#14,#11,#11,#15,#15
	db #16,#17,#17,#18,#19,#1a,#ff,#1b
	db #1b,#1b,#1b,#1b,#1b,#1c,#1b,#1b
	db #1b,#1b,#1c,#1b,#1b,#1b,#1c,#1d
	db #1d,#1e,#1e,#1d,#1d,#1e,#1e,#1b
	db #1b,#1b,#1b,#1b,#1b,#1c,#1b,#1b
	db #1b,#1c,#1d,#1d,#1e,#1e,#1d,#1d
	db #1e,#1e,#20,#20,#21,#21,#22,#22
	db #23,#23,#24,#25,#1b,#1b,#ff,#e0
	db #00,#a0,#c0,#8b,#30,#ff,#e0,#00
	db #a0,#c7,#e1,#05,#89,#35,#c8,#e1
	db #04,#35,#c7,#e1,#05,#35,#c8,#e1
	db #04,#35,#c7,#e1,#05,#35,#c8,#e1
	db #04,#35,#c7,#e1,#05,#33,#c8,#e1
	db #04,#33,#c7,#e1,#05,#87,#31,#30
	db #31,#30,#ff,#e0,#00,#a0,#c7,#e1
	db #05,#89,#35,#c8,#e1,#04,#35,#c7
	db #e1,#05,#35,#c8,#e1,#04,#35,#c7
	db #e1,#05,#37,#c8,#e1,#04,#37,#c7
	db #e1,#05,#37,#a5,#d1,#e1,#02,#85
	db #2d,#26,#a0,#dd,#e1,#03,#87,#35
	db #ff,#e0,#00,#a0,#c7,#e1,#05,#89
	db #38,#c3,#e2,#0a,#83,#1d,#c2,#1d
	db #c1,#1d,#c3,#1d,#c1,#1d,#c2,#1d
	db #c1,#1d,#c3,#1d,#c7,#e1,#05,#89
	db #38,#38,#37,#c3,#e2,#0a,#83,#18
	db #c2,#18,#c1,#18,#c3,#18,#c1,#18
	db #c2,#18,#c1,#18,#c3,#18,#c7,#e1
	db #05,#89,#37,#c3,#e2,#0a,#83,#18
	db #c2,#18,#c1,#18,#c3,#18,#c1,#18
	db #c2,#18,#c1,#18,#c3,#18,#ff,#e0
	db #00,#a0,#c6,#e1,#05,#8b,#34,#89
	db #34,#a5,#d1,#e1,#02,#85,#29,#87
	db #26,#a0,#c9,#e1,#07,#85,#21,#ff
	db #e0,#00,#a0,#c6,#e1,#05,#89,#35
	db #c8,#e1,#04,#35,#c6,#e1,#05,#35
	db #c8,#e1,#04,#35,#c6,#e1,#05,#35
	db #c8,#e1,#04,#35,#c6,#e1,#05,#33
	db #c8,#e1,#04,#33,#c7,#e1,#05,#87
	db #31,#30,#31,#30,#ff,#e0,#00,#a0
	db #c7,#e1,#05,#89,#35,#c8,#e1,#04
	db #35,#c7,#e1,#05,#35,#c8,#e1,#04
	db #35,#c7,#e1,#05,#37,#a5,#d1,#e1
	db #02,#85,#2d,#26,#a0,#c9,#e1,#07
	db #87,#35,#a5,#d1,#e1,#02,#85,#2d
	db #26,#a0,#c2,#e2,#0a,#83,#16,#c3
	db #16,#c4,#16,#c2,#16,#a5,#d1,#e1
	db #02,#85,#2d,#26,#a0,#dd,#e1,#03
	db #87,#27,#ff,#e0,#00,#a0,#c7,#e1
	db #05,#89,#36,#c3,#e2,#0a,#83,#1b
	db #c2,#1b,#c1,#1b,#c3,#1b,#c1,#1b
	db #c2,#1b,#c1,#1b,#c3,#1b,#ff,#e0
	db #ff,#a0,#c7,#e1,#05,#89,#36,#c3
	db #e2,#0a,#83,#1b,#c2,#1b,#c1,#1b
	db #c3,#1b,#c1,#1b,#c2,#1b,#c1,#1b
	db #c3,#1b,#c7,#e1,#05,#89,#36,#36
	db #ff,#e0,#00,#a0,#c0,#86,#30,#ff
	db #e0,#fe,#a0,#c7,#e1,#05,#89,#36
	db #c3,#e2,#0a,#83,#1b,#c2,#1b,#c1
	db #1b,#c3,#1b,#c1,#1b,#c2,#1b,#c1
	db #1b,#c3,#1b,#ff,#e0,#fd,#a0,#c7
	db #e1,#05,#89,#36,#c3,#e2,#0a,#83
	db #1b,#c2,#1b,#c1,#1b,#c3,#1b,#c1
	db #1b,#c2,#1b,#c1,#1b,#c3,#1b,#c7
	db #e1,#05,#89,#36,#36,#ff,#e0,#fc
	db #a0,#c7,#e1,#05,#89,#36,#c3,#e2
	db #0a,#83,#1b,#c2,#1b,#c1,#1b,#c3
	db #1b,#c1,#1b,#c2,#1b,#c1,#1b,#c3
	db #1b,#ff,#e0,#00,#a0,#c0,#8b,#1d
	db #d7,#e2,#00,#81,#42,#a5,#d3,#e1
	db #02,#3c,#35,#39,#30,#c0,#30,#30
	db #30,#a0,#d7,#e2,#00,#42,#a5,#d3
	db #e1,#02,#30,#29,#2d,#24,#c0,#24
	db #24,#24,#89,#24,#ff,#e0,#00,#a0
	db #c1,#e1,#04,#85,#16,#c3,#83,#16
	db #c2,#16,#c1,#85,#16,#c3,#83,#16
	db #c2,#16,#c3,#16,#c2,#16,#c3,#16
	db #c2,#16,#c1,#85,#16,#c3,#83,#16
	db #c2,#16,#ff,#e0,#00,#a0,#c7,#e1
	db #05,#89,#2e,#c8,#e1,#04,#2e,#c7
	db #e1,#05,#2e,#c8,#e1,#04,#2e,#c7
	db #e1,#05,#2c,#c8,#e1,#04,#2c,#c7
	db #e1,#05,#2a,#c8,#e1,#04,#2a,#c7
	db #e1,#05,#87,#2a,#29,#2a,#29,#ff
	db #e0,#00,#a0,#c7,#e1,#05,#89,#2e
	db #c8,#e1,#04,#2e,#c7,#e1,#05,#2e
	db #c8,#e1,#04,#2e,#c7,#e1,#05,#30
	db #c8,#e1,#04,#30,#c7,#e1,#05,#30
	db #a5,#d1,#e1,#02,#85,#30,#26,#a0
	db #dd,#e1,#03,#87,#29,#ff,#e0,#00
	db #a0,#c7,#e1,#05,#89,#31,#a5,#d4
	db #e1,#02,#83,#41,#40,#3e,#d3,#3c
	db #3b,#39,#d2,#37,#35,#a0,#c7,#e1
	db #05,#89,#31,#31,#30,#a5,#d4,#e1
	db #02,#83,#30,#2f,#d3,#2d,#2b,#29
	db #d2,#28,#26,#24,#a0,#c7,#e1,#05
	db #89,#30,#a5,#d4,#e1,#02,#83,#30
	db #2f,#d3,#2d,#2b,#29,#d2,#28,#26
	db #24,#ff,#e0,#00,#a0,#c6,#e1,#05
	db #8b,#37,#89,#37,#a5,#d1,#e1,#02
	db #85,#28,#25,#a0,#c9,#e1,#07,#87
	db #23,#ff,#e0,#00,#a0,#c6,#e1,#05
	db #89,#2e,#c8,#e1,#04,#2e,#c6,#e1
	db #05,#2e,#c8,#e1,#04,#2e,#c6,#e1
	db #05,#2c,#c8,#e1,#04,#2c,#c6,#e1
	db #05,#2a,#c8,#e1,#04,#2a,#c7,#e1
	db #05,#87,#2a,#29,#2a,#29,#ff,#e0
	db #00,#a0,#c6,#e1,#05,#89,#2e,#c8
	db #e1,#04,#2e,#c6,#e1,#05,#2e,#c8
	db #e1,#04,#2e,#c6,#e1,#05,#30,#a5
	db #d1,#e1,#02,#85,#30,#26,#a0,#c9
	db #e1,#07,#87,#22,#a5,#d1,#e1,#02
	db #85,#30,#26,#a0,#c9,#e1,#07,#87
	db #22,#a5,#d1,#e1,#02,#85,#30,#26
	db #a0,#dd,#e1,#03,#87,#28,#ff,#e0
	db #00,#a0,#c7,#e1,#05,#89,#2d,#a5
	db #d4,#e1,#02,#83,#30,#2f,#2d,#d3
	db #2b,#29,#28,#d2,#26,#24,#ff,#e0
	db #ff,#a0,#c7,#e1,#05,#89,#2d,#a5
	db #d4,#e1,#02,#83,#30,#2f,#2d,#d3
	db #2b,#29,#28,#d2,#26,#24,#a0,#c7
	db #e1,#05,#89,#2d,#c9,#e1,#07,#2d
	db #ff,#e0,#fe,#a0,#c7,#e1,#05,#89
	db #2d,#a5,#d4,#e1,#02,#83,#30,#2f
	db #2d,#d3,#2b,#29,#28,#d2,#26,#24
	db #ff,#e0,#fd,#a0,#c7,#e1,#05,#89
	db #2d,#a5,#d4,#e1,#02,#83,#30,#2f
	db #2d,#d3,#2b,#29,#28,#d2,#26,#24
	db #a0,#c7,#e1,#05,#89,#2d,#c9,#e1
	db #07,#2d,#ff,#e0,#00,#a0,#c7,#e1
	db #05,#89,#2c,#c9,#e1,#07,#8b,#30
	db #ff,#e0,#00,#a0,#d6,#e1,#0a,#8b
	db #30,#34,#89,#43,#8b,#34,#ff,#e0
	db #00,#a0,#c1,#e2,#0a,#85,#16,#c3
	db #83,#16,#c2,#16,#c1,#85,#16,#c3
	db #83,#16,#c2,#16,#c3,#16,#c2,#16
	db #c3,#16,#c2,#16,#c1,#85,#16,#c3
	db #83,#16,#c2,#16,#ff,#e0,#00,#a0
	db #c1,#e2,#0a,#85,#16,#c3,#83,#16
	db #c2,#16,#c1,#85,#16,#c3,#83,#16
	db #c2,#16,#c1,#85,#16,#c3,#83,#16
	db #c2,#16,#c1,#85,#16,#c3,#83,#16
	db #c2,#16,#ff,#e0,#f0,#a0,#c1,#e2
	db #0a,#83,#29,#c3,#29,#c2,#29,#c1
	db #29,#c3,#29,#c2,#29,#c1,#29,#c2
	db #29,#c1,#29,#c4,#29,#c3,#29,#c2
	db #29,#c1,#29,#c4,#29,#c3,#29,#c2
	db #29,#ff,#e0,#ef,#a0,#c1,#e2,#0a
	db #83,#29,#c3,#29,#c2,#29,#c1,#29
	db #c3,#29,#c2,#29,#c1,#29,#c2,#29
	db #c1,#29,#c4,#29,#c3,#29,#c2,#29
	db #c1,#29,#c4,#29,#c3,#29,#c2,#29
	db #ff,#e0,#00,#a0,#c0,#86,#30,#ff
	db #e0,#ee,#a0,#c1,#e2,#0a,#83,#29
	db #c3,#29,#c2,#29,#c1,#29,#c3,#29
	db #c2,#29,#c1,#29,#c2,#29,#c1,#29
	db #c4,#29,#c3,#29,#c2,#29,#c1,#29
	db #c4,#29,#c3,#29,#c2,#29,#ff,#e0
	db #ed,#a0,#c1,#e2,#0a,#83,#29,#c3
	db #29,#c2,#29,#c1,#29,#c3,#29,#c2
	db #29,#c1,#29,#c2,#29,#c1,#29,#c4
	db #29,#c3,#29,#c2,#29,#c1,#29,#c4
	db #29,#c3,#29,#c2,#29,#ff,#e0,#ec
	db #a0,#c1,#e2,#0a,#83,#29,#c3,#29
	db #c2,#29,#c1,#29,#c3,#29,#c2,#29
	db #c1,#29,#c2,#29,#c1,#29,#c4,#29
	db #c3,#29,#c2,#29,#c1,#29,#c4,#29
	db #c3,#29,#c2,#29,#ff,#e0,#eb,#a0
	db #c1,#e2,#0a,#83,#29,#c3,#29,#c2
	db #29,#c1,#29,#c3,#29,#c2,#29,#c1
	db #29,#c2,#29,#c1,#29,#c4,#29,#c3
	db #29,#c2,#29,#c1,#29,#c4,#29,#c3
	db #29,#c2,#29,#ff,#e0,#ea,#a0,#c1
	db #e2,#0a,#83,#29,#c3,#29,#c2,#29
	db #c1,#29,#c3,#29,#c2,#29,#c1,#29
	db #c2,#29,#c1,#29,#c4,#29,#c3,#29
	db #c2,#29,#c1,#29,#c4,#29,#c3,#29
	db #c2,#29,#ff,#e0,#00,#a0,#c4,#e1
	db #04,#83,#18,#26,#34,#42,#81,#41
	db #40,#3f,#3e,#3c,#3b,#3a,#39,#56
	db #c0,#56,#56,#56,#c4,#56,#c0,#56
	db #56,#56,#c4,#56,#c0,#56,#c4,#56
	db #c0,#56,#c4,#56,#c0,#56,#c4,#56
	db #c0,#56,#c4,#56,#56,#56,#56,#56
	db #54,#52,#50,#4e,#4c,#4a,#48,#46
	db #44,#42,#40,#3e,#3c,#3a,#38,#36
	db #34,#32,#30,#2e,#2c,#2a,#28,#26
	db #24,#22,#20,#1e,#1c,#1a,#18,#c0
	db #18,#18,#18,#18,#ff,#0f,#00,#0f
	db #00,#0f,#00,#0f,#00,#01,#0f,#83
	db #ad,#01,#00,#01,#00,#01,#0d,#0d
	db #ff,#01,#00,#01,#00,#01,#0b,#0b
	db #ff,#01,#00,#01,#00,#01,#09,#09
	db #ff,#01,#00,#01,#00,#01,#07,#07
	db #ff,#01,#00,#01,#00,#01,#0d,#ad
	db #da,#20,#00,#ad,#5a,#01,#0d,#93
	db #df,#93,#df,#99,#cb,#01,#0b,#02
	db #00,#90,#d0,#8d,#ce,#01,#0c,#01
	db #00,#03,#00,#01,#00,#01,#0e,#01
	db #00,#03,#00,#87,#e2,#01,#0e,#01
	db #00,#82,#9c,#62,#00,#01,#0f,#07
	db #00,#84,#bc,#01,#00,#01,#0f,#04
	db #ff,#08,#00,#88,#d3,#01,#0a,#01
	db #00,#01,#f6,#01,#00,#01,#0c,#01
	db #00,#01,#f4,#01,#00,#01,#0e,#01
	db #00,#01,#f2,#01,#00,#01,#0f,#84
	db #bc,#01,#00,#01,#00,#01,#0d,#0d
	db #ff,#01,#00,#01,#00,#01,#0b,#0b
	db #ff,#01,#00,#01,#00,#01,#09,#09
	db #ff,#01,#00,#01,#00,#01,#0e,#03
	db #00,#01,#f2,#01,#00,#01,#0c,#91
	db #e3,#a1,#63,#a1,#63,#05,#03,#08
	db #00,#01,#00,#0f,#ff,#01,#0d,#04
	db #ff,#08,#00,#8a,#d3,#01,#0b,#04
	db #ff,#08,#00,#8c,#d3,#01,#09,#04
	db #ff,#08,#00,#95,#d3,#01,#07,#04
	db #ff,#08,#00,#9e,#da,#01,#0d,#03
	db #00,#08,#ff,#05,#00,#01,#0a,#89
	db #12,#89,#12,#92,#12,#01,#0f,#02
	db #00,#0c,#ff,#0c,#01,#01,#0f,#0c
	db #00,#8d,#8d,#0e,#ff,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#84
	db #08,#82,#88,#84,#08,#01,#00,#01
	db #3c,#03,#ec,#01,#ef,#86,#86,#01
	db #f1,#01,#2b,#01,#e8,#88,#08,#84
	db #08,#08,#ff,#03,#02,#04,#00,#84
	db #08,#82,#88,#82,#04,#85,#0a,#03
	db #fd,#85,#0a,#01,#05,#01,#00,#01
	db #63,#03,#e2,#01,#d1,#01,#04,#01
	db #38,#03,#ec,#01,#f1,#08,#00,#01
	db #01,#01,#fe,#01,#01,#82,#04,#02
	db #03,#04,#00,#04,#00,#01,#00,#01
	db #f4,#01,#f5,#01,#ef,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#02,#00,#01
	db #0c,#01,#06,#01,#08,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#f6,#01
	db #0a,#01,#01,#01,#ff,#01,#02,#01
	db #f7,#02,#01,#01,#05,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #fa,#01,#fb,#01,#fa,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#01,#00,#01
	db #63,#02,#d8,#01,#d1,#06,#00,#01
	db #ff,#01,#00,#01,#01,#08,#00,#01
	db #01,#01,#fe,#01,#01,#08,#00,#01
	db #01,#01,#01,#01,#01,#01,#00,#01
	db #00,#01,#01,#01,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #09,#1a,#00,#81,#09,#7f,#00,#1b
	db #00,#82,#01,#09,#0c,#00,#81,#0f
	db #81,#00,#81,#0f,#82,#00,#0f,#7f
	db #00,#35,#00,#85,#01,#07,#0f,#03
	db #01,#12,#00,#06,#10,#02,#01,#6c
	db #00,#82,#11,#33,#3c,#00,#83,#08
	db #0f,#08,#0e,#00,#02,#01,#03,#00
	db #81,#f0,#02,#80,#81,#f0,#02,#80
	db #82,#08,#0f,#68,#00,#86,#11,#33
	db #77,#ee,#cc,#88,#3c,#00,#83,#07
	db #0b,#0d,#0a,#00,#81,#04,#85,#0a
	db #04,#0a,#01,#0e,#03,#00,#81,#80
	db #02,#40,#81,#e0,#02,#20,#82,#02
	db #0c,#65,#00,#85,#33,#77,#ff,#cc
	db #88,#3d,#00,#02,#04,#81,#06,#02
	db #0f,#81,#0c,#02,#04,#0d,#00
;
; #405a
; call #40c3	; play	x 2 / VBL
;
; #405b	; init
;
.music_info
	db "Arche du Captain Blood (1988)(Ere Informatique)(Jean-Michel Jarre)",0
	db "",0

	read "music_end.asm"
