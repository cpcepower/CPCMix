; Music of Lop Ears (1991)(Players)(Sonic Graffiti)()
; Ripped by Megachur the 16/08/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LOPEARS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #4000

	read "music_header.asm"

	jp l44b9	; init music
	jp l45a8	; play music
.l4008 equ $ + 2
.music_end equ $ + 1
.l4007 equ $ + 1
.l4006
	db #00,#01,#00,#0f,#08,#00,#ff,#0d
	db #03,#00,#fe,#ff,#00,#00,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #c2,#00,#00,#00,#00,#00,#0f,#02
	db #04,#ff,#0c,#0a,#06,#ff,#0a,#01
	db #06,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#c2,#00,#00,#00,#00
	db #00,#0d,#06,#02,#ff,#0c,#80,#0a
	db #ff,#ff,#00,#00,#00,#0c,#00,#00
	db #00,#00,#04,#04,#04,#04,#07,#07
	db #07,#07,#00,#00,#00,#00,#c2,#00
	db #00,#00,#00,#00,#0f,#0c,#00,#ff
	db #0e,#03,#01,#ff,#ff,#00,#00,#00
	db #03,#03,#07,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#c2,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#08,#02,#ff,#0c,#05
	db #03,#ff,#0a,#01,#06,#02,#03,#f4
	db #f4,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#c2
	db #00,#00,#00,#00,#00,#0f,#0f,#00
	db #fe,#0d,#00,#00,#ff,#ff,#00,#00
	db #03,#06,#f4,#f0,#e8,#e8,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#d2,#00,#00,#00,#00
.l4103 equ $ + 6
.l40fd
	dw l412f,l41a4,l4210,l425c
	dw l4261,l426a,l4273,l4278
	dw l427d,l4288,l4293,l4298
	dw l429f,l42a6,l42ad,l42b4
	dw l42bb,l42c2,l42cb,l42d2
	dw l42db,l42fe,l4321,l4344
	dw l4367
.l412f
	db #fc,#00,#fb,#18,#05,#01,#05,#01
	db #06,#02,#05,#02,#06,#02,#05,#02
	db #00,#02,#08,#01,#09,#01,#0a,#01
	db #00,#01,#08,#01,#09,#01,#0b,#01
	db #0c,#01,#0d,#01,#0e,#01,#0f,#01
	db #10,#01,#08,#01,#09,#01,#0a,#01
	db #00,#01,#08,#01,#09,#01,#0b,#01
	db #15,#01,#00,#01,#11,#01,#12,#01
	db #13,#01,#14,#01,#11,#01,#12,#01
	db #13,#01,#14,#01,#11,#01,#12,#01
	db #13,#01,#14,#01,#11,#01,#12,#01
	db #13,#01,#14,#01,#11,#01,#12,#01
	db #13,#01,#14,#01,#05,#02,#06,#02
	db #05,#02,#06,#02,#05,#02,#06,#02
.l41a4 equ $ + 5
	db #00,#01,#fd,#00,#bd,#03,#01,#00
	db #01,#04,#01,#00,#01,#03,#01,#00
	db #01,#04,#01,#00,#01,#03,#01,#00
	db #01,#04,#01,#07,#01,#03,#01,#00
	db #01,#04,#01,#00,#01,#03,#01,#00
	db #01,#04,#01,#00,#01,#03,#01,#00
	db #01,#04,#01,#00,#01,#05,#02,#06
	db #02,#05,#02,#06,#02,#00,#01,#05
	db #02,#06,#02,#05,#02,#06,#02,#08
	db #01,#09,#01,#0a,#01,#00,#01,#08
	db #01,#09,#01,#0c,#01,#00,#01,#0d
	db #01,#0e,#01,#0f,#01,#10,#01,#08
	db #01,#09,#01,#0a,#01,#00,#01,#08
	db #01,#09,#01,#0c,#01,#0d,#01,#00
.l4210 equ $ + 1
	db #c2,#01,#02,#02,#02,#01,#02,#02
	db #02,#01,#02,#00,#02,#01,#02,#02
	db #02,#01,#02,#02,#02,#01,#02,#02
	db #02,#01,#02,#02,#02,#01,#02,#02
	db #02,#00,#01,#01,#02,#02,#02,#01
	db #02,#02,#02,#f7,#00,#01,#01,#01
	db #01,#02,#02,#01,#02,#02,#02,#01
	db #02,#02,#02,#f7,#00,#01,#01,#01
	db #01,#02,#02,#01,#02,#02,#02,#01
.l425c equ $ + 5
	db #02,#02,#02,#00,#be,#f9,#00,#60
.l4261 equ $ + 2
	db #20,#fe,#61,#05,#41,#0c,#3f,#0c
.l426a equ $ + 3
	db #3a,#08,#fe,#61,#05,#43,#0c,#41
.l4273 equ $ + 4
	db #0c,#3c,#08,#fe,#61,#02,#3f,#20
.l427d equ $ + 6
.l4278 equ $ + 1
	db #fe,#61,#02,#38,#20,#fe,#61,#05
	db #60,#04,#43,#0c,#41,#0c,#3c,#04
.l4288 equ $ + 1
	db #fe,#61,#05,#60,#04,#44,#0c,#43
.l4293 equ $ + 4
	db #0c,#3f,#04,#fe,#61,#02,#3a,#20
.l4298 equ $ + 1
	db #fe,#f9,#01,#61,#01,#3f,#20,#fe
.l42a6 equ $ + 7
.l429f
	db #f9,#01,#61,#01,#3e,#20,#fe,#f9
.l42ad equ $ + 6
	db #01,#61,#01,#3c,#20,#fe,#f9,#01
.l42b4 equ $ + 5
	db #61,#01,#3f,#20,#fe,#f9,#01,#61
.l42bb equ $ + 4
	db #01,#3c,#20,#fe,#f9,#01,#61,#01
.l42c2 equ $ + 3
	db #3f,#20,#fe,#f9,#01,#61,#01,#43
.l42cb equ $ + 4
	db #18,#46,#08,#fe,#f9,#01,#61,#01
.l42d2 equ $ + 3
	db #48,#20,#fe,#f9,#01,#60,#14,#61
.l42db equ $ + 4
	db #01,#43,#0c,#fe,#61,#00,#27,#06
	db #62,#60,#02,#61,#06,#25,#04,#61
	db #00,#27,#06,#62,#60,#02,#27,#03
	db #62,#60,#01,#61,#06,#25,#04,#61
.l42fe equ $ + 7
	db #00,#27,#02,#62,#60,#02,#fe,#61
	db #00,#24,#06,#62,#60,#02,#61,#06
	db #25,#04,#61,#00,#24,#06,#62,#60
	db #02,#24,#03,#62,#60,#01,#61,#06
	db #25,#04,#61,#00,#24,#02,#62,#60
.l4321 equ $ + 2
	db #02,#fe,#61,#00,#29,#06,#62,#60
	db #02,#61,#06,#25,#04,#61,#00,#29
	db #06,#62,#60,#02,#29,#03,#62,#60
	db #01,#61,#06,#25,#04,#61,#00,#29
.l4344 equ $ + 5
	db #02,#62,#60,#02,#fe,#61,#00,#22
	db #06,#62,#60,#02,#61,#06,#25,#04
	db #61,#00,#22,#06,#62,#60,#02,#22
	db #03,#62,#60,#01,#61,#06,#25,#04
	db #61,#00,#22,#02,#62,#60,#02,#fe
.l4367
	db #f9,#01,#61,#01,#3c,#20,#f9,#00
.l4372 equ $ + 3
.l4371 equ $ + 2
.l4370 equ $ + 1
	db #fe,#00,#00,#00,#00,#00,#00,#00
.l437e equ $ + 7
.l437d equ $ + 6
	db #00,#30,#30,#30,#30,#00,#0f,#00
.l4381 equ $ + 2
.l4380 equ $ + 1
.l437f
	db #00,#00,#00,#00
.l4383
	ld a,(l437f)
	and a
	ld b,a
	ret z
	ld a,(l4381)
	cp #80
	jp z,l43ac
	ld a,(l4380)
	dec a
	ld (l4380),a
	ret nz
	ld a,(l4381)
	ld (l4380),a
	ld a,(l437d)
	add b
	bit 4,a
	jp nz,l43bb
	ld (l437d),a
	ret
.l43ac
	ld a,b
	cp #01
	ld a,#0f
	jp z,l43b5
	xor a
.l43b5
	ld (l437d),a
	jp l43bb
.l43bb
	xor a
	ld (l437f),a
	ld a,(l437e)
	and a
	jp nz,l4574
	ret
	ld a,#00
	ld (l437d),a
	ld a,#01
.l43ce
	ld (l437f),a
	inc hl
	ld a,(hl)
	ld (l4381),a
	ld (l4380),a
	inc hl
	ret
	ld a,#0f
	ld (l437d),a
	ld a,#ff
	jp l43ce
.l43e5
	ld a,h
	ld c,#00
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld a,h
	cp #07
	jp nz,l4402
	res 7,l
	res 6,l
.l4402
	ld a,l
	ld b,#f4
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	xor a
	ld b,#f6
	out (c),a
	ret
.l441a equ $ + 7
.l4419 equ $ + 6
.l4414 equ $ + 1
.l4413
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l4420 equ $ + 5
.l441e equ $ + 3
.l441d equ $ + 2
.l441c equ $ + 1
.l441b
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#00
	db #00,#08,#04,#00,#00,#01,#00,#00
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.l4452 equ $ + 7
.l4450 equ $ + 5
.l444b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#01,#01,#02,#01,#ff
	db #00,#00,#02,#03,#09,#00,#00,#01
	db #00,#00,#00,#00,#00,#ef,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4482 equ $ + 7
.l447d equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4484 equ $ + 1
	db #00,#00,#00,#00,#0f,#0a,#01,#02
	db #02,#ff,#00,#00,#04,#05,#0a,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #df,#ff,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l44af equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
;
.real_init_music
.l44b9
;
	ld a,#0f
	ld (l437d),a
	xor a
	ld (l437f),a
	ld (l437e),a
	call l457c
	ld a,(l4371)
	cp #ff
	jp nz,l44d4
	inc a
	ld (l4371),a
.l44d4
	ld a,#01
	ld (l4420),a
	ld (l4452),a
	ld (l4484),a
	xor a
	ld (l4370),a
	push ix
	ld ix,l441e
	ld a,(l4371)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l40fd
	add hl,de
	ld (l4505),hl
	inc hl
	inc hl
	ld (l450f),hl
	inc hl
	inc hl
	ld (l4519),hl
.l4505 equ $ + 1
	ld hl,(#0000)
	call l453e
	ld ix,l4450
.l450f equ $ + 1
	ld hl,(#0000)
	call l453e
	ld ix,l4482
.l4519 equ $ + 1
	ld hl,(#0000)
	call l453e
	ld a,#01
	ld (l4007),a
	ld h,#07
	ld l,#f8
	call l43e5
	ld a,(l4371)
	cp #01
	pop ix
	ret
.l4532
	halt		; test player
	call l45a8
	ld a,(l4007)
	and a
	jp nz,l4532
	ret
.l453e
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l4ae9
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ld (ix+#2b),#00
	ld (ix+#2f),#00
	ld (ix+#31),#00
	ret
.l4574
	call l457c
	xor a
	ld (l4007),a
	ret
.l457c
	ld h,#07
	ld l,#ff
	call l43e5
	ld hl,l4413
	ld de,l4414
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#ff
	ld (l441a),a
.l4595
	ld b,#0b
	ld h,#00
	ld de,l4413
.l459c
	ld a,(de)
	ld l,a
	push bc
	call l43e5
	pop bc
	inc h
	inc de
	djnz l459c
	ret
;
.play_music
.l45a8
;
	ld a,(l4006)
	and a
	jp z,l45e0
	ld b,a
	xor a
	ld (l4006),a
	ld a,b
	cp #ff
	jp z,l4574
	cp #fe
	jp nz,l45d9
	ld b,#0a
	ld a,#01
	ld (l437e),a
	call l45cc
	jp l45e0
.l45cc
	ld a,#ff
	ld (l437f),a
	ld a,b
	ld (l4381),a
	ld (l4380),a
	ret
.l45d9
	dec a
	ld (l4371),a
	jp l44b9
.l45e0
	call l4383
	ld a,(l4007)
	and a
	jr z,l4642
	push ix
	ld ix,l441e
	bit 7,(ix+#0c)
	call z,l4643
	ld ix,l4450
	bit 7,(ix+#0c)
	call z,l4643
	ld ix,l4482
	bit 7,(ix+#0c)
	call z,l4643
	ld a,(l437d)
	cpl
	and #0f
	ld b,a
	ld a,(l4370)
	and a
	ld a,#10
	jp nz,l4624
	ld a,(l441b)
	sub b
	jp nc,l4624
	xor a
.l4624
	ld (l441b),a
	ld a,(l441c)
	sub b
	jp nc,l462f
	xor a
.l462f
	ld (l441c),a
	ld a,(l441d)
	sub b
	jp nc,l463a
	xor a
.l463a
	ld (l441d),a
	call l4595
	pop ix
.l4642
	ret
.l4643
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l47ea
.l464c
	ld a,(ix+#0c)
	and #03
	jp z,l470c
	cp #01
	jp z,l4666
	cp #02
	jp z,l46a6
	cp #03
	jp z,l46f0
	jp l473d
.l4666
	ld a,(ix+#0b)
	and a
	jr z,l4672
	dec (ix+#0b)
	jp l473d
.l4672
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l4693
	jr nc,l468d
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l473d
.l468d
	ld a,(ix+#05)
	ld (ix+#04),a
.l4693
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l473d
.l46a6
	ld a,(ix+#25)
	and a
	jr z,l46b2
	dec (ix+#25)
	jp l473d
.l46b2
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l46d1
	ld b,(ix+#26)
	cp b
	jr z,l46de
	jr c,l46d8
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l473d
.l46d1
	ld (ix+#04),#00
	jp l46de
.l46d8
	ld a,(ix+#26)
	ld (ix+#04),a
.l46de
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l473d
.l46f0
	ld a,(ix+#27)
	and a
	jr z,l46fb
	dec (ix+#27)
	jr l473d
.l46fb
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l473d
.l470c
	ld a,(ix+#29)
	and a
	jr z,l4717
	dec (ix+#29)
	jr l473d
.l4717
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l472d
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l473d
.l472d
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l473d
.l473d
	ld a,(ix+#04)
	ld hl,l4413
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call l4893
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l4779
	ld a,(ix+#11)
	ld (ix+#10),a
.l4779
	ld a,(ix+#1a)
	cp #ff
	jr z,l47ba
	and a
	jr z,l4788
	dec (ix+#1a)
	jr nz,l47ba
.l4788
	dec (ix+#1f)
	jr nz,l479b
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#2e)
	xor #01
	ld (ix+#2e),a
.l479b
	ld b,#00
	ld c,(ix+#1b)
	ld h,(ix+#1d)
	ld l,(ix+#1c)
	bit 0,(ix+#2e)
	jr z,l47af
	add hl,bc
	jr l47b1
.l47af
	sbc hl,bc
.l47b1
	ld (ix+#1d),h
	ld (ix+#1c),l
	call l47d5
.l47ba
	ld a,(ix+#2b)
	call l47c8
	and a
	call nz,l47d5
	ld a,(ix+#02)
	ret
.l47c8
	ld l,a
	ld h,#00
	bit 7,a
	ret z
	ld d,h
	ld e,l
	sbc hl,de
	sbc hl,de
	ret
.l47d5
	ld b,h
	ld c,l
	ld hl,l4413
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l47ea
	ld l,(ix+#00)
	ld h,(ix+#01)
.l47f0
	ld a,(hl)
	cp #60
	jp z,l4891
	cp #61
	jp z,l499b
	cp #62
	jp z,l4975
	cp #64
	jp z,l4922
	cp #65
	jp z,l4967
	cp #f9
	jp z,l48e2
	cp #fa
	jp z,l493a
	cp #fc
	jp z,l4909
	cp #fd
	jp z,l48eb
	cp #fe
	jp z,l497d
	cp #ff
	jp z,l495f
	ld b,a
	ld a,(ix+#30)
	ld (ix+#05),a
.l482f
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld (ix+#10),#00
	ld a,(ix+#31)
	and a
	jp nz,l4848
	ld (ix+#04),#00
.l4848
	ld a,b
	sub (ix+#2d)
	ld (ix+#03),a
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1d),#00
	ld (ix+#1c),#00
.l4865
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l4372)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld b,(ix+#2c)
	add b
	ld (ix+#2c),#00
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l4893
	jp l464c
.l4891
	jr l4865
.l4893
	ld a,(ix+#17)
	and a
	call nz,l48d7
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l4b52
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l4413
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l4370)
	and a
	ret z
	ld a,(ix+#0f)
	cp #08
	ret nz
	ld de,#00c0
	add hl,de
	ex de,hl
	ld h,#0b
	ld a,(de)
	ld l,a
	call l43e5
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l43e5
	ret
.l48d7
	ld a,(ix+#03)
	neg
	and #1f
	ld (l4419),a
	ret
.l48e2
	inc hl
	ld a,(hl)
	ld (ix+#31),a
	inc hl
	jp l4992
.l48eb
	ld a,(ix+#05)
	and a
	jp z,l48ff
	ld a,(ix+#26)
	and a
	jp z,l48ff
	dec (ix+#05)
	dec (ix+#26)
.l48ff
	ld a,(ix+#03)
	add (ix+#2d)
	ld b,a
	jp l482f
.l4909
	ld a,(ix+#05)
	cp #0f
	jp z,l48ff
	ld a,(ix+#26)
	cp #0f
	jp z,l48ff
	inc (ix+#05)
	inc (ix+#26)
	jp l48ff
.l4922
	inc hl
	ld a,(hl)
	inc hl
	ld (l4419),a
	jp l4992
.l492b
	inc hl
	ld a,(hl)
	inc hl
	ld b,a
	ld a,#01
	ld (l437e),a
	call l45cc
	jp l4aef
.l493a
	inc hl
	ld (ix+#2e),#01
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	bit 7,a
	jp z,l4950
	neg
	ld (ix+#2e),#00
.l4950
	ld (ix+#1b),a
	ld (ix+#1e),#ff
	ld (ix+#1f),#ff
	inc hl
	jp l4992
.l495f
	inc hl
	ld (ix+#04),#00
	jp l4992
.l4967
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l43e5
	pop hl
	jp l4992
.l4975
	ld (ix+#04),#00
	inc hl
	jp l4992
.l497d
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l498c
	jp l4adb
	jp l47f0
.l498c
	ld l,(ix+#15)
	ld h,(ix+#16)
.l4992
	ld (ix+#01),h
	ld (ix+#00),l
	jp l47f0
.l499b
	inc hl
	ld a,(hl)
	bit 7,a
	jp nz,l49a5
	add (ix+#2f)
.l49a5
	and #7f
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l4008
	add hl,de
	ld d,#00
	add b
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ld (ix+#30),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#28),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	ld (ix+#10),#00
	ld de,#0010
	add hl,de
	ld a,(hl)
	ld (ix+#17),#00
	and a
	jp z,l4a55
	and #12
	xor #12
	ld b,a
	ld c,#ed
	ld a,(ix+#0f)
	cp #08
	jp z,l4a3c
	cp #09
	jp z,l4a40
	sla b
	rlc c
	jp l4a40
.l4a3c
	srl b
	sra c
.l4a40
	ld a,(l441a)
	and c
	or #c0
	or b
	ld (l441a),a
	ld a,(hl)
	bit 7,a
	jp z,l4a55
	and #38
	ld (ix+#17),a
.l4a55
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l4a71
	ld a,(hl)
	ld (l4370),a
	and a
	jp z,l4a71
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l43e5
	pop hl
.l4a71
	pop hl
	jp l47f0
.l4a75
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l4ca2
	add hl,de
	ld (l4372),hl
	pop hl
	jp l4aef
.l4a8a
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2f),a
	jp l4aef
.l4a93
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp l4aef
.l4a9c
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp l4aef
.l4aa5
	inc hl
	ld a,(hl)
	sub #0c
	inc hl
	ld (l444b),a
	ld (l447d),a
	ld (l44af),a
	jp l4aef
.l4ab6
	inc hl
	ld b,(hl)
	inc hl
	ld a,(ix+#2d)
	add b
	ld (ix+#2d),a
	jp l4aef
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l464c
	call l4574
	jp l464c
.l4adb
	call l4ae9
	jp l47ea
.l4ae1
	pop bc
	jp l4574
.l4ae5
	pop bc
	jp l44b9
.l4ae9
	ld l,(ix+#20)
	ld h,(ix+#21)
.l4aef
	ld a,(hl)
	cp #f7
	jp z,l4a8a
	cp #f8
	jp z,l4a93
	cp #f9
	jp z,l4a9c
	cp #f6
	jp z,l492b
	cp #fa
	jp z,l4ab6
	cp #fb
	jp z,l4aa5
	cp #fc
	jp z,l4a75
	cp #fd
	jp z,l4ae5
	cp #fe
	jr z,l4b46
	cp #ff
	jr z,l4ae1
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l4103
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ret
.l4b46
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l4aef
.l4b52 equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04d4
	dw #0470,#0431,#03f4,#03dc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #6a,#00,#64,#00,#5e,#00,#5a,#00
	db #54,#00,#4f,#00,#4a,#00,#47,#00
	db #43,#00,#3f,#00,#3b,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#25,#00,#23,#00
	db #21,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#16,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#0e,#00
	db #0d,#00,#0c,#00,#0b,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ca2
	db #03,#06,#09,#0c,#0f,#12,#15,#18
	db #1b,#1e,#21,#24,#27,#2a,#2d,#30
	db #33,#36,#39,#3c,#3f,#42,#45,#48
	db #4b,#4e,#51,#54,#57,#5a,#5d,#60
	db #00,#00

;
.init_music		; added by Megachur
;
	ld (l4371),a
	jp real_init_music ; l44b9
;
.music_info
	db "Lop Ears (1991)(Players)(Sonic Graffiti)",0
	db "",0

	read "music_end.asm"
