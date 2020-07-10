; Music of Final Fight (1991)(U.S. Gold)()()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FINALFIG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #4000
FIRST_THEME				equ 1
LAST_THEME				equ 2

	read "music_header.asm"

;
.play_music_save_regs
;
	push hl
	push de
	push bc
	push af
	push ix
	call l4014
	pop ix
	pop af
	pop bc
	pop de
	pop hl
	ret
.l4010
	db #02		; theme number 1 - > 2
	db #00
.l4012
	db #00          ; 00/01 = enable/disable play
	db #01
;
.play_music
.l4014
;
	ld a,(l4012)
	and a
	ret nz
	ld ix,l440c
	ld hl,l4432
	ld (l4400),hl
	ld a,#08
	ld (l4402),a
	ld a,#f6
	ld (l4403),a
	ld a,(l4010)
	and a
	jr z,l403c
	ld a,(l4012)
	and a
	jr nz,l403c
	call l40dc
.l403c
	ld ix,l440e
	ld hl,l444b
	ld (l4400),hl
	ld a,#07
	ld (l4402),a
	ld a,#ed
	ld (l4403),a
	call l40dc
	ld a,(l4010)
	and a
	jr z,l4076
	ld a,(l4012)
	and a
	jr nz,l4076
	ld hl,l4464
	ld (l4400),hl
	ld ix,l4410
	ld a,#06
	ld (l4402),a
	ld a,#db
	ld (l4403),a
	call l40dc
.l4076
	ld a,#0a
	ld hl,l4416
	ld c,(hl)
	call l40c0
	ld a,#09
	dec hl
	ld c,(hl)
	call l40c0
	ld a,#08
	dec hl
	ld c,(hl)
	call l40c0
	ld a,#07
	dec hl
	ld c,(hl)
	call l40c0
	ld a,#05
	dec hl
	dec hl
	ld c,(hl)
	call l40c0
	ld a,#04
	dec hl
	ld c,(hl)
	call l40c0
	ld a,#03
	dec hl
	ld c,(hl)
	call l40c0
	ld a,#02
	dec hl
	ld c,(hl)
	call l40c0
	ld a,#01
	dec hl
	ld c,(hl)
	call l40c0
	ld a,#00
	dec hl
	ld c,(hl)
	call l40c0
	ret
.l40c0
	ld d,a
	ld e,c
	push af
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	xor a
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	pop af
	ret
.l40dc
	ld a,(hl)
	ld e,a
	inc hl
	or (hl)
	jr z,l40ef
	dec a
	jr nc,l40e6
	dec (hl)
.l40e6
	dec hl
	ld (hl),a
	call l4312
	call l4265
	ret
.l40ef
	ld hl,(l4400)
	ld de,#0005
	add hl,de
	ld e,l
	ld d,h
	inc hl
	inc hl
	ldi
	ldi
	ld hl,(l4400)
	ld de,#0015
	add hl,de
	ld a,(hl)
	dec hl
	ld (hl),a
	ld hl,(l4400)
	inc hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4110
	ld a,(bc)
	cp #00
	jr z,l4147
	cp #04
	jr z,l4137
	ld (ix+#00),a
	inc bc
	ld a,(bc)
	ld (ix+#01),a
.l4121
	inc bc
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	ld d,a
	dec de
	ld hl,(l4400)
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	inc bc
	ld (hl),c
	inc hl
	ld (hl),b
	call l4312
	ret
.l4137
	ld hl,(l4400)
	ld de,#0005
	add hl,de
	ld de,l447d
	ld (hl),e
	inc hl
	ld (hl),d
	inc bc
	jr l4121
.l4147
	inc bc
	ld a,(bc)
	ld e,a
	ld d,#00
	ld hl,l4151
	add hl,de
	jp (hl)
.l4151
	nop
	nop
	nop
	jp l4172
	jp l41b4
	jp l41d1
	jp l41f2
	jp l421c
	jp l4228
	jp l4234
	jp l41aa
	jp #0000        ; unused ?
	jp l41b4
.l4172
	nop
.l4173
	ld hl,(l4400)
	ld de,#0009
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	ld a,(de)
	and a
	jr z,l4199
	cp #01
	jr z,l41ab
	dec de
	ld a,(de)
	ld c,a
	inc de
	ld a,(de)
	ld b,a
	inc de
	ld (hl),d
	dec hl
	ld (hl),e
	ld hl,(l4400)
	inc hl
	inc hl
	inc hl
	jp l4110
.l4199
	ld hl,(l4400)
	ld de,#0009
	add hl,de
	ld e,l
	ld d,h
	inc hl
	inc hl
	ldi
	ldi
	jr l4173
.l41aa
	ret
.l41ab
	call l4357
	ld a,#00
	ld (l4010),a
	ret
.l41b4
	inc bc
	ld hl,(l4400)
	ld de,#0005
	add hl,de
	ld a,(bc)
	ld e,a
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	ld (hl),a
	inc hl
	ld (hl),e
	inc hl
	ld (hl),a
	inc bc
	ld hl,(l4400)
	inc hl
	inc hl
	inc hl
	jp l4110
.l41d1
	inc bc
	ld hl,(l4400)
	ld de,#000d
	add hl,de
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	jp l4212
.l41f2
	ld a,#99
	ld hl,(l4400)
	ld de,#0013
	add hl,de
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	ld (hl),a
	inc hl
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	inc bc
	ld (hl),a
.l4212
	inc bc
	ld hl,(l4400)
	inc hl
	inc hl
	inc hl
	jp l4110
.l421c
	ld hl,(l4400)
	ld de,#0013
	add hl,de
	ld (hl),#00
	jp l4212
.l4228
	ld hl,(l4400)
	ld de,#000d
	add hl,de
	ld (hl),#00
	jp l4212
.l4234
	push de
	ld e,c
	ld d,b
	ld c,#fd
.l4239
	inc de
	ld a,(de)
	cp #ff
	jr z,l4250
	cp #fe
	jp z,l4257
	ld b,#ff
	out (c),a
	inc de
	ld a,(de)
	ld b,#bf
	out (c),a
	jr l4239
.l4250
	ld c,e
	ld b,d
	pop de
	inc bc
	jp l4212
.l4257
	ld c,e
	ld b,d
	pop de
	ld hl,(l4400)
	inc hl
	inc hl
	inc bc
	inc bc
	ld (hl),c
	inc hl
	ld (hl),b
	ret
.l4265
	ld hl,(l4400)
	ld de,#000d
	add hl,de
	ld a,(hl)
	and a
	jp z,l42cb
	inc hl
	cp #02
	jr z,l42a0
	ld e,(hl)
	ld a,(ix+#00)
	sub e
	jr nc,l4280
	dec (ix+#01)
.l4280
	ld (ix+#00),a
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	ld e,a
	cp (ix+#01)
	jr c,l429e
	ld a,d
	cp (ix+#00)
	jr c,l429e
	ld (ix+#01),e
	dec hl
	ld (ix+#00),d
	dec hl
	dec hl
	ld (hl),#00
.l429e
	jr l4311
.l42a0
	ld e,(hl)
	ld a,(ix+#00)
	ld d,a
	add e
	jr nc,l42ab
	inc (ix+#01)
.l42ab
	ld (ix+#00),a
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	ld e,a
	cp (ix+#01)
	jr nc,l42c9
	ld a,d
	cp (ix+#00)
	jr nc,l42c9
	ld (ix+#01),e
	dec hl
	ld (ix+#00),d
	dec hl
	dec hl
	ld (hl),#00
.l42c9
	jr l4311
.l42cb
	ld hl,(l4400)
	ld de,#0013
	add hl,de
	ld a,(hl)
	and a
	jr z,l4311
	ld e,a
	ld b,h
	ld c,l
	inc hl
	ld a,#00
	cp (hl)
	jr z,l42e3
	dec (hl)
	jp l4311
.l42e3
	inc hl
	inc hl
	ld a,(hl)
	dec a
	ld (hl),a
	jr nz,l4311
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	rlc e
	jr c,l4302
	inc hl
	ld a,(ix+#00)
	add (hl)
	ld (ix+#00),a
	jr nc,l430f
	inc (ix+#01)
	jp l430f
.l4302
	inc hl
	ld a,(ix+#00)
	sub (hl)
	ld (ix+#00),a
	jr nc,l430f
	dec (ix+#01)
.l430f
	ld a,e
	ld (bc),a
.l4311
	ret
.l4312
	ld hl,(l4400)
	ld de,#0005
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l4402)
	ld (l4330),a
	ld a,(de)
	cp #ff
	jr nz,l4328
	ret
.l4328
	sub #02
	jr nc,l432e
	ld a,#00
.l4330 equ $ + 2
.l432e
	ld (ix+#06),a
	inc de
	ld a,(l4413)
	ld b,a
	ld a,(l4403)
	push af
	and b
	ld b,a
	ld a,(de)
	ld c,a
	pop af
	rr a
	jr nc,l434b
	rlc c
	rr a
	jr nc,l434b
	rlc c
.l434b
	ld a,c
	or b
	jr l434f
.l434f
	ld (l4413),a
	inc de
	ld (hl),d
	dec hl
	ld (hl),e
	ret
;
.stop_music
.l4357
;
	di
	call l4363
	call l437a
	call l438b
	ei
	ret
.l4363
	ld a,#0d
	ld e,#00
.l4367
	push af
	call l40c0
	pop af
	dec a
	and a
	jr z,l4372
	jr l4367
.l4372
	ld a,#07
	ld c,#3f
	call l40c0
	ret
.l437a
	ld b,#0d
	ld hl,l440c
	call l4385
	ret
	ret
	ret
.l4385
	ld (hl),#00
	inc hl
	djnz l4385
	ret
.l438b
	ld b,#4b
	ld hl,l4432
.l4390
	ld (hl),#00
	inc hl
	djnz l4390
	ret
;
.real_init_music
.l4386
;
	di
	call l4363
	call l437a
	ld hl,l4010
	ld a,(hl)
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld hl,l4489
	add hl,de
	ld a,(hl)
	ld (l443d),a
	inc hl
	ld a,(hl)
	ld (l443e),a
	inc hl
	ld a,(hl)
	ld (l4456),a
	inc hl
	ld a,(hl)
	ld (l4457),a
	inc hl
	ld a,(hl)
	ld (l446f),a
	inc hl
	ld a,(hl)
	ld (l4470),a
	inc hl
	inc hl
	ld de,l4407
	ld hl,l443b
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l4454
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l446d
	ld (hl),e
	inc hl
	ld (hl),d
	ld de,l4405
	ld hl,l4434
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l444d
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l4466
	ld (hl),e
	inc hl
	ld (hl),d
	ei
	ret
	di
	jr nz,l43f9
.l43f9
	ret
	db #00,#00,#00,#00,#00,#00
.l4400
	db #64,#44
.l4407 equ $ + 5
.l4405 equ $ + 3
.l4403 equ $ + 1
.l4402
	db #06,#db,#00,#00,#03,#00,#00,#00
.l440c equ $ + 2
	db #00,#00,#b3
.l4413 equ $ + 6
.l4410 equ $ + 3
.l440e equ $ + 1
	db #00,#53,#03,#a7,#06,#00,#38,#09
	db #00
.l4416
	db #00,#00,#00,#00,#00,#08,#09,#0a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l4432
	db #04,#00
.l4434
	dw l47c9
	db #00
.l443e equ $ + 7
.l443d equ $ + 6
.l443b equ $ + 4
	dw l4b31,l4b2d,l4735,l4731
	db #00,#00,#00,#00,#00,#00,#00,#00
.l444b equ $ + 4
	db #00,#00,#00,#00,#04,#00
.l444d
	dw l490d
	db #00
.l4457 equ $ + 7
.l4456 equ $ + 6
.l4454 equ $ + 4
	dw l4afe,l4aee,l4757,l4755
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4464 equ $ + 4
	db #00,#00,#00,#00,#04,#00
.l4466
	dw l49ad
	db #00
.l4470 equ $ + 7
.l446f equ $ + 6
.l446d equ $ + 4
	dw l4a76,l4a68,l476f,l476b
	db #00,#c8,#a7,#06,#00,#00,#00,#00
	db #00,#00,#00,#00
.l447d
	db #00,#00,#ff,#10
	db #01,#ff,#0f,#08,#ff,#00,#00,#00
.l4489
	db #00,#00,#00,#00,#00,#00,#00,#00
	dw l44a1,l44b1,l44bb
	dw #0000
	dw l4731,l4755,l476b,#0000
.l44a1
	dw l44c5,l44e5,l4525,l44e5
	dw l4537,l44c5,l4549,#0000
.l44b1
	dw l4673,l4673,l4673,l4673
	dw #0000
.l44bb
	dw l469d,l469d,l469d
	dw l469d,#0000
.l44c5
	db #00,#06,#2a,#4b,#00,#0c,#02,#02
	db #08,#00,#08,#00,#2c,#00,#00,#09
	db #02,#0f,#f6,#02,#00,#00,#be,#00
	db #a0,#00,#f6,#02,#a0,#00,#00,#03
.l44e5
	db #00,#06,#2a,#4b,#00,#0c,#01,#01
	db #02,#00,#02,#00,#08,#00,#7f,#00
	db #05,#00,#8e,#00,#05,#00,#7f,#00
	db #05,#00,#6a,#00,#91,#00,#7f,#00
	db #05,#00,#8e,#00,#05,#00,#9f,#00
	db #05,#00,#be,#00,#91,#00,#7f,#00
	db #05,#00,#8e,#00,#05,#00,#7f,#00
	db #05,#00,#6a,#00,#96,#00,#00,#03
.l4525
	db #7f,#00,#05,#00,#6a,#00,#05,#00
	db #64,#00,#05,#00,#5f,#00,#8c,#00
	db #00,#03
.l4537
	db #7f,#00,#05,#00,#6a,#00,#05,#00
	db #64,#00,#05,#00,#5f,#00,#a0,#00
	db #00,#03
.l4549
	db #00,#06,#ff,#4a,#00,#0c,#01,#01
	db #01,#00,#01,#00,#04,#00,#6a,#00
	db #03,#00,#04,#00,#02,#00,#6a,#00
	db #05,#00,#7f,#00,#05,#00,#6a,#00
	db #0f,#00,#7f,#00,#0a,#00,#6a,#00
	db #0a,#00,#5f,#00,#05,#00,#04,#00
	db #05,#00,#5f,#00,#0a,#00,#04,#00
	db #0a,#00,#50,#00,#14,#00,#5f,#00
	db #14,#00,#6a,#00,#14,#00,#5f,#00
	db #14,#00,#6a,#00,#03,#00,#04,#00
	db #02,#00,#6a,#00,#05,#00,#7f,#00
	db #05,#00,#6a,#00,#0f,#00,#7f,#00
	db #0a,#00,#6a,#00,#0a,#00,#5f,#00
	db #05,#00,#04,#00,#05,#00,#5f,#00
	db #0a,#00,#04,#00,#0a,#00,#3f,#00
	db #14,#00,#47,#00,#14,#00,#50,#00
	db #05,#00,#47,#00,#05,#00,#50,#00
	db #0a,#00,#5f,#00,#0a,#00,#04,#00
	db #0a,#00,#6a,#00,#03,#00,#04,#00
	db #02,#00,#6a,#00,#05,#00,#7f,#00
	db #05,#00,#6a,#00,#0f,#00,#7f,#00
	db #0a,#00,#6a,#00,#0a,#00,#5f,#00
	db #05,#00,#04,#00,#05,#00,#5f,#00
	db #0a,#00,#04,#00,#0a,#00,#50,#00
	db #14,#00,#5f,#00,#14,#00,#6a,#00
	db #14,#00,#5f,#00,#14,#00,#6a,#00
	db #03,#00,#04,#00,#02,#00,#6a,#00
	db #05,#00,#7f,#00,#05,#00,#6a,#00
	db #0f,#00,#7f,#00,#0a,#00,#6a,#00
	db #0a,#00,#5f,#00,#05,#00,#04,#00
	db #05,#00,#5f,#00,#0a,#00,#04,#00
	db #0a,#00,#3f,#00,#14,#00,#47,#00
	db #14,#00,#50,#00,#05,#00,#47,#00
	db #05,#00,#50,#00,#0a,#00,#5f,#00
	db #0a,#00,#00,#15,#06,#c8,#ff,#00
	db #00,#06,#77,#4a,#00,#09,#02,#0a
	db #a7,#06,#00,#00,#aa,#01,#46,#00
	db #00,#03
.l4673
	db #00,#06,#ee,#4a,#53,#03,#05,#00
	db #f4,#03,#05,#00,#53,#03,#05,#00
	db #f6,#02,#0f,#00,#f4,#03,#0a,#00
	db #53,#03,#0a,#00,#70,#04,#0a,#00
	db #f4,#03,#0a,#00,#fc,#04,#0a,#00
	db #00,#03
.l469d
	db #00,#15,#06,#c8,#ff,#00,#00,#06
	db #68,#4a,#00,#09,#02,#c8,#a7,#06
	db #00,#00,#a9,#00,#05,#00,#a9,#00
	db #05,#00,#a9,#00,#05,#00,#a9,#00
	db #0a,#00,#04,#00,#0f,#00,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #05,#00,#a9,#00,#05,#00,#a9,#00
	db #05,#00,#00,#06,#09,#4b,#00,#09
	db #02,#45,#a7,#06,#00,#00,#d5,#00
	db #19,#00,#00,#06,#68,#4a,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #05,#00,#a9,#00,#05,#00,#a9,#00
	db #05,#00,#a9,#00,#0a,#00,#04,#00
	db #0f,#00,#00,#09,#02,#c8,#a7,#06
	db #00,#00,#a9,#00,#05,#00,#a9,#00
	db #05,#00,#a9,#00,#05,#00,#00,#06
	db #47,#4a,#00,#09,#02,#45,#a7,#06
	db #00,#00,#d5,#00,#0f,#00,#1c,#01
	db #0a,#00,#00,#03
.l4731
	dw l4795,l4795
.l4735
	dw l4795,l47f7
	dw l4795,l4795,l4795,l478f
	dw l4795,l4795,l4795,l47db
	dw l4795,l4795,l4795,l47f7
	dw l4839,#0000
.l4755
	dw l48b9
.l4757
	dw l48b9
	dw l48b9,l4917,l4949,l48b9
	dw l48b9,l48b9,l48b9,l4885
	dw #0000
.l476b
	dw l496f,l496f
.l476f
	dw l496f
	dw l49c3,l496f,l496f,l496f
	dw l49c3,l496f,l496f,l496f
	dw l49c3,l496f,l496f,l496f
	dw l49c3,l49c3,#0000
.l478f
	db #04,#00,#60,#00,#00,#03
.l4795
	db #00,#06,#2d,#4b,#9f,#00,#06,#00
	db #b3,#00,#06,#00,#b3,#00,#06,#00
	db #b3,#00,#06,#00,#9f,#00,#06,#00
	db #be,#00,#06,#00,#be,#00,#06,#00
	db #b3,#00,#06,#00,#b3,#00,#06,#00
	db #be,#00,#06,#00,#be,#00,#06,#00
	db #b3,#00,#06,#00
.l47c9
	db #9f,#00,#06,#00,#9f,#00,#06,#00
	db #b3,#00,#06,#00,#be,#00,#06,#00
	db #00,#03
.l47db
	db #00,#06,#2a,#4b,#00,#0c,#02,#02
	db #02,#00,#02,#00,#14,#00,#00,#09
	db #02,#07,#3f,#01,#00,#00,#9f,#00
	db #60,#00,#00,#03
.l47f7
	db #9f,#00,#06,#00,#86,#00,#06,#00
	db #77,#00,#06,#00,#71,#00,#06,#00
	db #6a,#00,#06,#00,#59,#00,#06,#00
	db #50,#00,#06,#00,#59,#00,#06,#00
	db #50,#00,#06,#00,#59,#00,#06,#00
	db #6a,#00,#06,#00,#71,#00,#06,#00
	db #77,#00,#06,#00,#86,#00,#06,#00
	db #9f,#00,#06,#00,#b3,#00,#06,#00
	db #00,#03
.l4839
	db #00,#06,#ff,#4a,#00,#0c,#01,#01
	db #01,#00,#01,#00,#04,#00,#86,#00
	db #06,#00,#9f,#00,#06,#00,#86,#00
	db #06,#00,#77,#00,#06,#00,#86,#00
	db #06,#00,#9f,#00,#06,#00,#b3,#00
	db #0c,#00,#9f,#00,#06,#00,#86,#00
	db #06,#00,#77,#00,#06,#00,#6a,#00
	db #06,#00,#59,#00,#06,#00,#50,#00
	db #06,#00,#43,#00,#06,#00,#3c,#00
	db #06,#00,#00,#03
.l4885
	db #00,#06,#04,#4b,#00,#0c,#01,#01
	db #01,#00,#01,#00,#04,#00,#04,#00
	db #30,#00,#d5,#00,#06,#00,#b3,#00
	db #06,#00,#9f,#00,#06,#00,#86,#00
	db #06,#00,#77,#00,#06,#00,#6a,#00
	db #06,#00,#59,#00,#06,#00,#50,#00
	db #06,#00,#00,#03
.l48b9
	db #00,#06,#ee,#4a,#7e,#02,#03,#00
	db #04,#00,#03,#00,#7e,#02,#06,#00
	db #cc,#02,#0c,#00,#7e,#02,#0c,#00
	db #cc,#02,#06,#00,#7e,#02,#0c,#00
	db #7e,#02,#06,#00,#18,#02,#0c,#00
	db #de,#01,#0c,#00,#18,#02,#0c,#00
	db #7e,#02,#03,#00,#04,#00,#03,#00
	db #7e,#02,#06,#00,#cc,#02,#0c,#00
	db #7e,#02,#0c,#00,#cc,#02,#06,#00
	db #7e,#02,#0c,#00,#7e,#02,#06,#00
	db #53,#03,#0c,#00
.l490d
	db #cc,#02,#0c,#00,#a4,#02,#0c,#00
	db #00,#03
.l4917
	db #00,#06,#ee,#4a,#7e,#02,#03,#00
	db #04,#00,#03,#00,#7e,#02,#06,#00
	db #cc,#02,#0c,#00,#7e,#02,#0c,#00
	db #cc,#02,#06,#00,#7e,#02,#0c,#00
	db #7e,#02,#06,#00,#18,#02,#0c,#00
	db #de,#01,#0c,#00,#18,#02,#06,#00
	db #00,#03
.l4949
	db #00,#06,#ee,#4a,#3f,#01,#0c,#00
	db #3f,#01,#06,#00,#66,#01,#0c,#00
	db #aa,#01,#0c,#00,#de,#01,#0c,#00
	db #18,#02,#06,#00,#de,#01,#0c,#00
	db #7e,#02,#1e,#00,#00,#03
.l496f
	db #00,#15,#06,#c8,#ff,#00,#00,#06
	db #68,#4a,#00,#09,#02,#c8,#a7,#06
	db #00,#00,#a9,#00,#18,#00,#00,#06
	db #47,#4a,#00,#09,#02,#45,#a7,#06
	db #00,#00,#d5,#00,#0c,#00,#00,#06
	db #68,#4a,#00,#09,#02,#c8,#a7,#06
	db #00,#00,#a9,#00,#06,#00,#a9,#00
	db #06,#00,#a9,#00,#18,#00
.l49ad
	db #00,#06,#47,#4a,#00,#09,#02,#45
	db #a7,#06,#00,#00,#d5,#00,#0c,#00
	db #1c,#01,#0c,#00,#00,#03
.l49c3
	db #00,#15,#06,#c8,#ff,#00,#00,#06
	db #68,#4a,#00,#09,#02,#c8,#a7,#06
	db #00,#00,#a9,#00,#06,#00,#a9,#00
	db #06,#00,#a9,#00,#06,#00,#a9,#00
	db #06,#00,#00,#06,#47,#4a,#00,#09
	db #02,#45,#a7,#06,#00,#00,#d5,#00
	db #0c,#00,#00,#06,#68,#4a,#00,#09
	db #02,#c8,#a7,#06,#00,#00,#a9,#00
	db #06,#00,#a9,#00,#06,#00,#a9,#00
	db #06,#00,#a9,#00,#06,#00,#00,#06
	db #47,#4a,#00,#09,#02,#45,#a7,#06
	db #00,#00,#d5,#00,#0c,#00,#00,#06
	db #68,#4a,#00,#09,#02,#c8,#a7,#06
	db #00,#00,#a9,#00,#06,#00,#a9,#00
	db #06,#00,#00,#06,#47,#4a,#00,#09
	db #02,#45,#a7,#06,#00,#00,#d5,#00
	db #0c,#00,#00,#03,#0f,#00,#0f,#08
	db #0f,#08,#0f,#00,#0f,#08,#0f,#00
	db #0c,#08,#0c,#00,#09,#08,#07,#00
	db #07,#08,#07,#00,#06,#08,#06,#00
	db #06,#08,#05,#08,#ff
.l4a68
	db #0f,#00,#0f,#08,#0f,#08,#0f,#08
	db #07,#08,#03,#08,#00,#08
.l4a76
	db #ff,#0f,#01,#0f,#01,#0f,#01,#0f
	db #01,#0f,#01,#0f,#01,#0f,#01,#0f
	db #01,#0e,#01,#0e,#01,#0e,#01,#0e
	db #01,#0d,#01,#0d,#01,#0d,#01,#0d
	db #01,#0c,#01,#0c,#01,#0c,#01,#0c
	db #01,#0b,#01,#0b,#01,#0b,#01,#0b
	db #01,#0a,#01,#0a,#01,#0a,#01,#0a
	db #01,#09,#01,#09,#01,#09,#01,#09
	db #01,#08,#01,#08,#01,#08,#01,#08
	db #01,#07,#01,#07,#01,#07,#01,#07
	db #01,#06,#01,#06,#01,#06,#01,#06
	db #01,#05,#01,#05,#01,#05,#01,#05
	db #01,#04,#01,#04,#01,#04,#01,#04
	db #01,#03,#01,#03,#01,#03,#01,#03
	db #01,#02,#01,#01,#01,#00,#01,#ff
.l4aee
	db #0f,#08,#0f,#08,#0f,#08,#0f,#08
	db #0f,#08,#0f,#08,#0f,#08,#00,#08
.l4afe
	db #ff,#0e,#00,#0e,#08,#ff,#0e,#00
	db #0e,#08,#ff,#0f,#01,#0e,#01,#0e
	db #01,#0d,#01,#0d,#01,#0c,#01,#0b
	db #01,#0b,#01,#09,#01,#07,#01,#07
	db #01,#07,#01,#06,#01,#06,#01,#06
	db #01,#05,#01,#ff,#0d,#08,#ff
.l4b2d
	db #0e,#08,#0b,#08
.l4b31
	db #00,#08,#ff
;
.init_music		; added by Megachur
;
	ld (l4010),a
	jp real_init_music
;
; #39cb
; xor a
; ld (#4012),a	; init
; call #4396
;
; #39ef
; ld a,#01
; ld (#4012),a	; stop
; call #4357
;
.music_info
	db "Final Fight (1991)(U.S. Gold)()",0
	db "",0

	read "music_end.asm"
