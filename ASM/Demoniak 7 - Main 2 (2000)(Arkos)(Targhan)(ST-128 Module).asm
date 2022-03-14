; Music of Demoniak 7 - Main 2 (2000)(Arkos)(Targhan)(ST-128 Module)
; Ripped by Megachur the 09/10/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DEMON7M2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #4000

	read "music_header.asm"

	jp l4009
	jp l409d
	jp l4081
;
.init_music
.l4009
;
	xor a
	ld hl,l45b4
	call l407a
	ld hl,l45e2
	call l407a
	ld hl,l4610
	call l407a
	ld ix,l45b0
	ld iy,l463a
	ld de,#002e
	ld b,#03
.l4029
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l4029
	ld hl,l44c9
	ld (hl),#08
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l44c5),hl
	ld (l44c7),hl
	ld a,#0c
	ld c,d
	call l44a5
	ld a,#0d
	ld c,d
	jp l44a5
.l407a
	ld b,#2a
.l407c
	ld (hl),a
	inc hl
	djnz l407c
	ret
;
.stop_music
.l4081
;
	ld a,#07
	ld c,#3f
	call l44a5
	ld a,#08
	ld c,#00
	call l44a5
	ld a,#09
	ld c,#00
	call l44a5
	ld a,#0a
	ld c,#00
	jp l44a5
;
.play_music
.l409d
;
	ld hl,l44cb
	dec (hl)
	ld ix,l45b0
	ld bc,l45be
	call l413f
	ld ix,l45de
	ld bc,l45ec
	call l413f
	ld ix,l460c
	ld bc,l461a
	call l413f
	ld hl,l44c4
	ld de,l44cb
	ld b,#06
	call l411c
	ld b,#07
	call l411c
	ld b,#0b
	call l411c
	ld b,#0d
	call l411c
	ld de,l44cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l45cf
	call l40f5
	ld hl,l45fd
	call l40f5
	ld hl,l462b
.l40f5
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l410a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l410a
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l411c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l44a5
.l4127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l44a5
.l413f
	ld a,(l44cb)
	or a
	jp nz,l41f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l41f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4127
	or a
	jp z,l41ec
	ld r,a
	and #7f
	cp #10
	jr c,l41c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l433f
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l41a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l41a0
	rrca
	ld c,a
	ld hl,l4640
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l41bf
	ld (ix+#1e),b
.l41bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l41e0
.l41c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l44d0
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l41e0
	ld a,d
	or a
	jr nz,l41ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l41ee
.l41ec
	ld a,(hl)
	inc hl
.l41ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l41f7
	ld a,(ix+#17)
	or a
	jr nz,l420d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l420d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4223
	ld a,(ix+#0d)
	or a
	jr z,l4231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l424f
.l4231
	ld a,(ix+#1a)
	or a
	jp z,l4256
	ld c,a
	cp #03
	jr nz,l423e
	xor a
.l423e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l424f
	ld a,(ix+#18)
	dec c
	jr z,l424f
	ld a,(ix+#19)
.l424f
	add (ix+#07)
	ld b,d
	call l433f
.l4256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l427e
	dec (ix+#1b)
	jr nz,l427e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l42b6
.l427e
	ld a,(ix+#29)
	or a
	jr z,l42b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l42ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l42a4
	ld (ix+#29),#ff
	jr l42ad
.l42a4
	cp (ix+#2b)
	jr nz,l42ad
	ld (ix+#29),#01
.l42ad
	ld b,d
	or a
	jp p,l42b3
	dec b
.l42b3
	ld c,a
	jr l42c1
.l42b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l42c1
	pop hl
	bit 7,(ix+#14)
	jr z,l42ca
	ld h,d
	ld l,d
.l42ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l44a5
	ld c,h
	ld a,(ix+#02)
	call l44a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l431d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l430c
	dec (ix+#09)
	jr nz,l430c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4304
	xor a
	jr l4309
.l4304
	cp #10
	jr nz,l4309
	dec a
.l4309
	ld (ix+#1e),a
.l430c
	ld a,b
	sub (ix+#1e)
	jr nc,l4313
	xor a
.l4313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l44a5
.l431d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l44cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l433b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l433b
	ld (l44cc),hl
	ret
.l433f
	ld hl,l44ee
	cp #61
	jr nc,l4349
	add a
	ld c,a
	add hl,bc
.l4349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l4353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l4478
	ld (ix+#1e),a
	jp l41e0
.l4365
	dec b
.l4366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l4371
	neg
.l4371
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l41e0
.l4387
	dec b
	jr l438b
.l438a
	inc b
.l438b
	call l4478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l41e0
.l439a
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l445d
.l43ab
	ld a,(hl)
	inc hl
	or a
	jr z,l43cd
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l43cd
	ld (ix+#29),a
	jp l41e0
.l43d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l44cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l44ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l41e0
.l43ed
	ld a,(hl)
	or a
	jr z,l43fe
	call l447a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l41e0
.l43fe
	ld hl,#0101
	ld (l44ca),hl
	jp l41e0
.l4407
	call l4478
	ld (ix+#1e),a
	jp l41e0
.l4410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l4489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l4489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l41e0
.l4432
	ld a,(hl)
	inc hl
	ld (l44c9),a
	jp l41e0
.l443a
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l41e0
.l4459
	call l4478
	add a
.l445d
	ld b,#00
	ld c,a
	push hl
	ld hl,l46c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l41e0
.l4478
	ld a,(hl)
	inc hl
.l447a
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l4489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l4640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l44a5
	di
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
	ei
.l44c4
	ret
.l44cc equ $ + 7
.l44cb equ $ + 6
.l44ca equ $ + 5
.l44c9 equ $ + 4
.l44c7 equ $ + 2
.l44c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l44cf equ $ + 2
.l44ce equ $ + 1
	db #38,#00,#00
.l44d0
	dw l4353,l4366,l4365,l438a
	dw l4387,l439a,l43ab,l43d3
	dw l43ed,l43d3,l4407,l4410
	dw l4432,l443a,l4459
.l44ee
	dw #0000,#0e18,#0d4d,#0c8e
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
	dw #000f
.l45b4 equ $ + 4
.l45b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l45be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l45e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l460c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l4610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l461a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l463a equ $ + 2
	db #00,#00,#80,#4b,#bc,#4b,#f8,#4b
.l4640
	db #e0,#46,#20,#47,#40,#47,#00,#00
	db #60,#47,#a0,#47,#c0,#47,#18,#08
	db #e0,#46,#e0,#47,#40,#47,#00,#00
	db #00,#48,#40,#48,#40,#47,#18,#08
	db #e0,#46,#60,#48,#80,#48,#00,#00
	db #e0,#46,#a0,#48,#40,#47,#00,#00
	db #c0,#48,#00,#49,#40,#47,#18,#08
	db #20,#49,#60,#49,#80,#48,#00,#00
	db #80,#49,#c0,#49,#40,#47,#00,#00
	db #e0,#46,#e0,#49,#80,#48,#00,#00
	db #e0,#46,#00,#4a,#40,#47,#00,#00
	db #e0,#46,#20,#4a,#40,#47,#1a,#06
	db #e0,#46,#e0,#49,#40,#47,#00,#00
	db #40,#4a,#80,#4a,#40,#47,#00,#00
	db #52,#4c,#d2,#ff,#d2,#ff,#00,#00
	db #d2,#ff,#d2,#ff,#d2,#ff,#00,#00
.l46c0
	db #a0,#4a,#c0,#4a,#e0,#4a,#00,#4b
	db #20,#4b,#40,#4b,#60,#4b,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#0a
	db #0a,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#03,#03,#02,#02,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#00,#04,#00,#00,#00,#00,#00
	db #fc,#ff,#fc,#ff,#00,#00,#00,#00
	db #05,#00,#05,#00,#00,#00,#00,#00
	db #fb,#ff,#fb,#ff,#00,#00,#00,#00
	db #08,#00,#08,#00,#00,#00,#00,#00
	db #f8,#ff,#f8,#ff,#00,#00,#00,#00
	db #08,#00,#08,#00,#00,#00,#00,#00
	db #f8,#ff,#f8,#ff,#00,#00,#00,#00
	db #0f,#0e,#0d,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#0a,#0a,#09,#09
	db #09,#09,#09,#08,#08,#08,#08,#08
	db #07,#07,#07,#07,#06,#04,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#02,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #0d,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#08,#07,#07
	db #07,#06,#06,#06,#05,#05,#05,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #04,#00,#04,#00,#00,#00,#00,#00
	db #fc,#ff,#fc,#ff,#00,#00,#00,#00
	db #06,#00,#06,#00,#00,#00,#00,#00
	db #fa,#ff,#fa,#ff,#00,#00,#00,#00
	db #08,#00,#08,#00,#00,#00,#00,#00
	db #f8,#ff,#f8,#ff,#00,#00,#00,#00
	db #08,#00,#08,#00,#00,#00,#00,#00
	db #f8,#ff,#f8,#ff,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0a,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#08,#08,#08
	db #08,#08,#08,#08,#07,#07,#07,#07
	db #02,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0d,#0c,#0c,#0c,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#04
	db #04,#03,#02,#01,#01,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #0c,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#08,#08,#08,#07
	db #07,#07,#06,#06,#06,#05,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #03,#03,#07,#07,#00,#00,#03,#03
	db #07,#07,#00,#00,#03,#03,#07,#07
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #04,#04,#07,#07,#00,#00,#04,#04
	db #07,#07,#00,#00,#04,#04,#07,#07
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #00,#00,#05,#05,#07,#07,#00,#00
	db #05,#05,#07,#07,#00,#00,#05,#05
	db #07,#07,#00,#00,#05,#05,#07,#07
	db #00,#00,#05,#05,#07,#07,#00,#00
	db #00,#00,#05,#05,#08,#08,#00,#00
	db #05,#05,#08,#08,#00,#00,#05,#05
	db #08,#08,#00,#00,#05,#05,#08,#08
	db #00,#00,#05,#05,#08,#08,#00,#00
	db #00,#00,#03,#03,#08,#08,#00,#00
	db #03,#03,#08,#08,#00,#00,#03,#03
	db #08,#08,#00,#00,#03,#03,#08,#08
	db #00,#00,#03,#03,#08,#08,#00,#00
	db #00,#34,#4c,#00,#95,#4c,#00,#95
	db #4c,#00,#95,#4c,#00,#95,#4c,#00
	db #1a,#4d,#00,#2b,#4d,#00,#41,#4d
	db #00,#76,#4d,#00,#76,#4d,#00,#83
	db #4d,#00,#83,#4d,#00,#b7,#4d,#00
	db #ba,#4d,#02,#bd,#4d,#02,#bd,#4d
	db #00,#22,#4e,#00,#88,#4e,#00,#88
	db #4e,#80,#80,#4b,#00,#d1,#4e,#00
	db #34,#4f,#00,#7e,#4f,#00,#34,#4f
	db #00,#db,#4f,#00,#42,#50,#00,#42
	db #50,#00,#9f,#50,#00,#fc,#50,#00
	db #fc,#50,#00,#fc,#50,#00,#fc,#50
	db #00,#58,#51,#00,#bc,#51,#02,#bc
	db #51,#02,#bc,#51,#00,#22,#52,#00
	db #7f,#52,#00,#e5,#52,#80,#bc,#4b
	db #00,#67,#53,#00,#a0,#53,#00,#a0
	db #53,#00,#a0,#53,#00,#a0,#53,#00
	db #d9,#53,#00,#d9,#53,#00,#d9,#53
	db #00,#12,#54,#00,#12,#54,#00,#12
	db #54,#00,#12,#54,#00,#69,#54,#00
	db #69,#54,#02,#69,#54,#02,#69,#54
	db #00,#ce,#54,#00,#33,#55,#00,#33
	db #55,#80,#f8,#4b,#3a,#0f,#20,#43
	db #00,#02,#3e,#00,#02,#3a,#00,#02
	db #43,#00,#02,#3e,#00,#02,#39,#00
	db #02,#41,#00,#02,#3a,#00,#02,#43
	db #00,#02,#3e,#00,#02,#3a,#00,#02
	db #43,#00,#02,#3e,#00,#02,#39,#00
	db #02,#41,#00,#02,#39,#00,#02,#41
	db #00,#02,#3e,#00,#02,#39,#00,#02
	db #41,#00,#02,#3e,#00,#02,#39,#00
	db #02,#40,#00,#02,#39,#00,#02,#41
	db #00,#02,#3e,#00,#02,#39,#00,#02
	db #41,#00,#02,#3e,#00,#02,#39,#00
	db #02,#40,#00,#02,#ff,#ba,#06,#00
	db #be,#00,#c3,#00,#ba,#00,#be,#00
	db #c3,#00,#ba,#00,#be,#00,#c3,#00
	db #ba,#00,#be,#00,#c3,#00,#b9,#00
	db #bc,#00,#c1,#00,#3c,#0b,#12,#3a
	db #0b,#10,#be,#00,#c3,#00,#ba,#00
	db #be,#00,#c3,#00,#ba,#00,#be,#00
	db #c3,#00,#ba,#00,#be,#00,#c3,#00
	db #b9,#00,#bc,#00,#c1,#00,#bc,#00
	db #b9,#00,#be,#00,#c1,#00,#b9,#00
	db #be,#00,#c1,#00,#b9,#00,#be,#00
	db #c1,#00,#b9,#00,#be,#00,#c1,#00
	db #b9,#00,#be,#00,#c0,#00,#be,#00
	db #b9,#00,#be,#00,#c1,#00,#b9,#00
	db #be,#00,#c1,#00,#b9,#00,#be,#00
	db #c1,#00,#b9,#00,#be,#00,#c1,#00
	db #b9,#00,#be,#00,#c0,#00,#3e,#0b
	db #12,#ff,#43,#61,#00,#10,#41,#60
	db #10,#3e,#60,#10,#3c,#60,#08,#3a
	db #60,#08,#ff,#43,#60,#10,#45,#60
	db #10,#48,#60,#10,#46,#60,#0a,#46
	db #60,#02,#48,#60,#02,#4a,#60,#02
	db #ff,#4b,#63,#71,#06,#46,#60,#06
	db #43,#60,#04,#45,#60,#02,#46,#60
	db #04,#48,#60,#06,#46,#60,#02,#48
	db #60,#02,#4a,#60,#06,#45,#60,#06
	db #41,#60,#04,#43,#60,#02,#45,#60
	db #04,#46,#60,#04,#46,#60,#02,#48
	db #60,#02,#4a,#60,#02,#ff,#45,#60
	db #10,#47,#60,#10,#43,#60,#10,#48
	db #60,#10,#ff,#48,#60,#03,#4a,#60
	db #03,#4f,#60,#06,#4f,#80,#02,#4f
	db #60,#02,#4a,#60,#03,#4c,#60,#03
	db #45,#60,#0a,#43,#60,#03,#45,#60
	db #03,#4a,#60,#06,#4a,#80,#02,#4a
	db #60,#02,#48,#60,#03,#4c,#60,#03
	db #45,#60,#08,#45,#80,#02,#ff,#fe
	db #40,#ff,#00,#40,#ff,#3f,#9f,#11
	db #c1,#90,#44,#90,#02,#46,#90,#02
	db #c8,#90,#46,#90,#02,#44,#90,#03
	db #46,#90,#02,#48,#90,#02,#bf,#90
	db #c1,#90,#44,#90,#02,#46,#90,#02
	db #c8,#90,#46,#90,#02,#44,#90,#03
	db #c6,#90,#c8,#90,#44,#90,#02,#ba
	db #90,#bc,#90,#bf,#90,#bc,#90,#41
	db #90,#02,#c3,#90,#41,#90,#02,#3f
	db #90,#03,#41,#90,#02,#43,#90,#02
	db #ba,#90,#bc,#90,#3f,#90,#02,#41
	db #90,#02,#c3,#90,#41,#90,#02,#3f
	db #90,#03,#46,#90,#02,#c3,#90,#c1
	db #90,#ff,#3a,#cf,#11,#bc,#c0,#3f
	db #c0,#02,#41,#c0,#02,#c3,#c0,#41
	db #c0,#02,#3f,#c0,#03,#41,#c0,#02
	db #43,#c0,#02,#ba,#c0,#bc,#c0,#3f
	db #c0,#02,#41,#c0,#02,#c3,#c0,#41
	db #c0,#02,#3f,#c0,#03,#c1,#c0,#c3
	db #c0,#3f,#c0,#02,#b5,#c0,#b7,#c0
	db #ba,#c0,#b7,#c0,#3c,#c0,#02,#be
	db #c0,#3c,#c0,#02,#3a,#c0,#03,#bc
	db #c0,#be,#c0,#3a,#c0,#02,#b5,#c0
	db #b7,#c0,#3a,#c0,#02,#3c,#c0,#02
	db #be,#c0,#3c,#c0,#02,#3a,#c0,#03
	db #41,#c0,#02,#be,#c0,#bc,#c0,#ff
	db #43,#61,#30,#45,#60,#03,#46,#60
	db #03,#45,#60,#03,#46,#60,#02,#48
	db #60,#02,#46,#60,#03,#45,#60,#03
	db #43,#60,#03,#41,#60,#03,#43,#60
	db #02,#41,#60,#02,#43,#60,#03,#45
	db #60,#03,#46,#60,#03,#45,#60,#03
	db #46,#60,#02,#48,#60,#02,#46,#60
	db #03,#45,#60,#03,#43,#60,#03,#41
	db #60,#03,#43,#60,#02,#41,#60,#02
	db #ff,#01,#10,#3e,#0f,#20,#3a,#00
	db #02,#43,#00,#02,#3e,#00,#02,#3a
	db #00,#02,#43,#00,#02,#3c,#00,#02
	db #3c,#0b,#22,#3e,#0b,#20,#3a,#00
	db #02,#43,#00,#02,#3e,#00,#02,#3a
	db #00,#02,#43,#00,#02,#3c,#00,#02
	db #3c,#00,#02,#3e,#00,#02,#39,#00
	db #02,#41,#00,#02,#3e,#00,#02,#39
	db #00,#02,#41,#00,#02,#3e,#00,#02
	db #3e,#00,#02,#3e,#00,#02,#39,#00
	db #02,#41,#00,#02,#3e,#00,#02,#39
	db #00,#02,#41,#00,#02,#3e,#00,#02
	db #3e,#0b,#12,#ff,#4a,#31,#30,#4c
	db #30,#03,#4d,#30,#03,#4c,#30,#03
	db #4d,#30,#02,#4f,#30,#02,#4d,#30
	db #03,#4c,#30,#03,#4a,#30,#03,#48
	db #30,#03,#4a,#30,#02,#48,#30,#02
	db #4a,#30,#03,#4c,#30,#03,#4d,#30
	db #03,#4c,#30,#03,#4d,#30,#02,#4f
	db #30,#02,#4d,#30,#03,#4c,#30,#03
	db #4a,#30,#03,#48,#30,#03,#4a,#30
	db #02,#c8,#30,#c8,#d0,#ff,#46,#4f
	db #21,#4a,#40,#02,#4a,#40,#03,#46
	db #40,#02,#c6,#40,#46,#40,#02,#4a
	db #40,#02,#48,#40,#02,#46,#40,#02
	db #4a,#40,#02,#4a,#40,#03,#46,#40
	db #02,#c6,#40,#46,#40,#02,#4a,#40
	db #02,#48,#40,#02,#45,#40,#02,#4d
	db #40,#02,#4d,#40,#03,#45,#40,#02
	db #c5,#40,#45,#40,#02,#4d,#40,#02
	db #4c,#40,#02,#45,#40,#02,#4d,#40
	db #02,#4d,#40,#03,#45,#40,#02,#c5
	db #40,#45,#40,#02,#4d,#40,#02,#4c
	db #40,#02,#ff,#00,#02,#43,#5f,#32
	db #43,#50,#02,#c3,#50,#41,#5f,#23
	db #41,#50,#02,#43,#5f,#12,#41,#5f
	db #13,#43,#5f,#42,#43,#50,#03,#43
	db #50,#02,#c3,#50,#41,#5f,#23,#41
	db #50,#02,#43,#5f,#12,#41,#5f,#13
	db #43,#5f,#42,#3e,#50,#03,#3e,#50
	db #02,#be,#50,#3c,#5f,#23,#3c,#50
	db #02,#3e,#5f,#12,#3c,#5f,#13,#3e
	db #5f,#12,#3e,#5b,#12,#4a,#5b,#24
	db #4a,#5b,#30,#4a,#50,#02,#ca,#50
	db #48,#5f,#23,#48,#50,#02,#4a,#5f
	db #12,#48,#5f,#13,#4a,#5f,#12,#ca
	db #50,#ff,#43,#5f,#12,#43,#50,#03
	db #43,#50,#03,#43,#50,#02,#c3,#50
	db #43,#50,#02,#43,#50,#02,#43,#50
	db #02,#3e,#5f,#12,#3e,#50,#03,#3e
	db #50,#03,#3e,#50,#02,#be,#50,#3e
	db #50,#02,#3e,#50,#02,#3e,#50,#02
	db #3e,#5f,#14,#3e,#50,#03,#3e,#50
	db #03,#3e,#50,#02,#be,#50,#3e,#50
	db #02,#3e,#50,#02,#3e,#50,#02,#3e
	db #5f,#15,#3e,#50,#03,#3e,#50,#03
	db #3e,#50,#02,#be,#50,#3e,#50,#02
	db #3e,#50,#02,#3e,#50,#02,#ff,#43
	db #5f,#16,#43,#50,#03,#43,#50,#03
	db #43,#50,#02,#c3,#50,#43,#50,#02
	db #43,#50,#02,#43,#50,#02,#3e,#5f
	db #12,#3e,#50,#03,#3e,#50,#03,#3e
	db #50,#02,#be,#50,#3e,#50,#02,#3e
	db #50,#02,#3e,#50,#02,#3e,#5f,#14
	db #3e,#50,#03,#3e,#50,#03,#3e,#50
	db #02,#be,#50,#3e,#50,#02,#3e,#50
	db #02,#3e,#50,#02,#3e,#5f,#15,#3e
	db #50,#03,#3e,#50,#03,#3e,#50,#02
	db #be,#50,#3e,#50,#02,#3e,#50,#02
	db #3e,#50,#02,#ff,#45,#5f,#12,#45
	db #50,#03,#45,#50,#03,#45,#50,#02
	db #c5,#50,#45,#50,#02,#45,#50,#02
	db #45,#50,#02,#c0,#50,#40,#50,#03
	db #40,#50,#03,#40,#50,#02,#c0,#50
	db #40,#50,#02,#40,#50,#02,#40,#50
	db #02,#40,#5f,#14,#40,#50,#03,#40
	db #50,#03,#40,#50,#02,#c0,#50,#40
	db #50,#02,#40,#50,#02,#40,#50,#02
	db #40,#5f,#15,#40,#50,#03,#40,#50
	db #03,#40,#50,#02,#c0,#50,#40,#50
	db #02,#40,#50,#02,#40,#50,#02,#ff
	db #fe,#02,#41,#5f,#32,#41,#50,#02
	db #c1,#50,#3f,#5f,#23,#3f,#50,#02
	db #41,#5f,#12,#3f,#5f,#13,#41,#5f
	db #42,#41,#50,#03,#41,#50,#02,#c1
	db #50,#3f,#5f,#23,#3f,#50,#02,#41
	db #5f,#12,#3f,#5f,#13,#41,#5f,#42
	db #3c,#50,#03,#3c,#50,#02,#bc,#50
	db #3a,#5f,#23,#3a,#50,#02,#3c,#5f
	db #12,#3a,#5f,#13,#3c,#5f,#12,#3c
	db #50,#03,#3c,#50,#03,#3c,#50,#02
	db #bc,#50,#3a,#5f,#23,#3a,#50,#02
	db #3c,#5f,#12,#3a,#5f,#13,#3c,#5f
	db #12,#bc,#50,#ff,#41,#5b,#23,#41
	db #56,#20,#03,#41,#50,#02,#c1,#50
	db #3f,#5f,#23,#3f,#50,#02,#41,#5f
	db #12,#3f,#5f,#13,#41,#5f,#42,#41
	db #50,#03,#41,#50,#02,#c1,#50,#3f
	db #5f,#23,#3f,#50,#02,#41,#5f,#12
	db #3f,#5f,#13,#41,#5f,#42,#3c,#50
	db #03,#3c,#50,#02,#bc,#50,#3a,#5f
	db #23,#3a,#50,#02,#3c,#5f,#12,#3a
	db #5f,#13,#3c,#5f,#12,#3c,#50,#03
	db #3c,#50,#03,#3c,#50,#02,#bc,#50
	db #3a,#5f,#23,#3a,#50,#02,#3c,#5f
	db #12,#3a,#5f,#13,#3c,#5f,#12,#bc
	db #50,#ff,#4b,#4f,#21,#4f,#40,#02
	db #4f,#40,#03,#4b,#40,#02,#cb,#40
	db #4b,#40,#02,#4f,#40,#02,#4d,#40
	db #02,#4b,#40,#02,#4f,#40,#02,#4f
	db #40,#03,#4b,#40,#02,#cb,#40,#4b
	db #40,#02,#4f,#40,#02,#4d,#40,#02
	db #4a,#40,#02,#52,#40,#02,#52,#40
	db #03,#4a,#40,#02,#ca,#40,#4a,#40
	db #02,#52,#40,#02,#51,#40,#02,#4a
	db #40,#02,#52,#40,#02,#52,#40,#03
	db #4a,#40,#02,#ca,#40,#4a,#40,#02
	db #52,#40,#02,#51,#40,#02,#ff,#3a
	db #af,#10,#bc,#a0,#3f,#a0,#02,#41
	db #a0,#02,#c3,#a0,#41,#a0,#02,#3f
	db #a0,#03,#41,#a0,#02,#43,#a0,#02
	db #ba,#a0,#bc,#a0,#3f,#a0,#02,#41
	db #a0,#02,#c3,#a0,#41,#a0,#02,#3f
	db #a0,#03,#c1,#a0,#c3,#a0,#3f,#a0
	db #02,#b5,#a0,#b7,#a0,#ba,#a0,#b7
	db #a0,#3c,#a0,#02,#be,#a0,#3c,#a0
	db #02,#3a,#a0,#03,#bc,#a0,#be,#a0
	db #3a,#a0,#02,#b5,#a0,#b7,#a0,#3a
	db #a0,#02,#3c,#a0,#02,#be,#a0,#3c
	db #a0,#02,#3a,#a0,#03,#41,#a0,#02
	db #be,#a0,#bc,#a0,#ff,#4b,#af,#10
	db #cf,#a0,#d4,#a0,#cb,#a0,#cf,#a0
	db #d4,#a0,#cb,#a0,#cf,#a0,#d4,#a0
	db #cb,#a0,#cf,#a0,#d4,#a0,#cb,#a0
	db #cf,#a0,#d4,#a0,#cd,#a0,#cb,#a0
	db #cf,#a0,#d4,#a0,#cb,#a0,#cf,#a0
	db #d4,#a0,#cb,#a0,#cf,#a0,#d4,#a0
	db #cb,#a0,#cf,#a0,#d4,#a0,#cb,#a0
	db #cf,#a0,#d4,#a0,#cd,#a0,#ca,#a0
	db #cf,#a0,#d2,#a0,#ca,#a0,#cf,#a0
	db #d2,#a0,#ca,#a0,#cf,#a0,#d2,#a0
	db #ca,#a0,#cf,#a0,#d2,#a0,#ca,#a0
	db #cf,#a0,#d1,#a0,#cf,#a0,#ca,#a0
	db #cf,#a0,#d2,#a0,#ca,#a0,#cf,#a0
	db #d2,#a0,#ca,#a0,#cf,#a0,#d2,#a0
	db #ca,#a0,#cf,#a0,#d2,#a0,#ca,#a0
	db #cf,#a0,#d1,#a0,#cf,#a0,#ff,#2b
	db #11,#80,#2b,#20,#02,#26,#10,#02
	db #2d,#10,#03,#a9,#10,#2b,#10,#08
	db #2b,#20,#02,#2e,#10,#02,#2d,#10
	db #03,#a9,#10,#26,#10,#08,#26,#20
	db #02,#2e,#10,#02,#2d,#10,#03,#a9
	db #10,#26,#10,#08,#26,#20,#02,#26
	db #10,#02,#2d,#10,#03,#a9,#10,#ff
	db #2b,#10,#08,#2b,#20,#02,#26,#10
	db #02,#2d,#10,#03,#a9,#10,#2b,#10
	db #08,#2b,#20,#02,#2e,#10,#02,#2d
	db #10,#03,#a9,#10,#26,#10,#08,#26
	db #20,#02,#2e,#10,#02,#2d,#10,#03
	db #a9,#10,#26,#10,#08,#26,#20,#02
	db #26,#10,#02,#2d,#10,#03,#a9,#10
	db #ff,#27,#10,#08,#27,#20,#02,#27
	db #10,#02,#2e,#10,#03,#a7,#10,#29
	db #10,#08,#29,#20,#02,#29,#10,#02
	db #30,#10,#03,#a9,#10,#26,#10,#08
	db #26,#20,#02,#26,#10,#02,#2d,#10
	db #03,#a9,#10,#2b,#10,#08,#2b,#20
	db #02,#2b,#10,#02,#2d,#10,#03,#ae
	db #10,#ff,#a9,#70,#a9,#70,#29,#70
	db #03,#29,#70,#02,#a9,#70,#29,#70
	db #02,#29,#70,#04,#29,#70,#02,#ab
	db #70,#ab,#70,#2b,#70,#03,#2b,#70
	db #02,#ab,#70,#2b,#70,#02,#2b,#70
	db #04,#ab,#70,#ab,#70,#a8,#70,#a8
	db #70,#28,#70,#03,#28,#70,#02,#a8
	db #70,#28,#70,#02,#28,#70,#04,#a8
	db #70,#a8,#70,#ad,#70,#ad,#70,#2d
	db #70,#03,#2d,#70,#02,#ad,#70,#2d
	db #70,#02,#2d,#70,#04,#2d,#70,#02
	db #ff,#29,#10,#02,#35,#70,#03,#35
	db #70,#02,#b5,#70,#ab,#70,#37,#70
	db #02,#b7,#70,#a7,#70,#33,#70,#02
	db #b3,#70,#29,#10,#02,#35,#70,#03
	db #35,#70,#02,#b5,#70,#ac,#70,#38
	db #70,#02,#b8,#70,#ab,#70,#37,#70
	db #02,#b7,#70,#24,#10,#02,#30,#70
	db #03,#30,#70,#02,#b0,#70,#a6,#70
	db #32,#70,#02,#b2,#70,#a2,#70,#2e
	db #70,#02,#ae,#70,#24,#10,#02,#30
	db #70,#03,#30,#70,#02,#b0,#70,#a7
	db #70,#33,#70,#02,#b3,#70,#a6,#70
	db #32,#70,#02,#b2,#70,#ff,#30,#10
	db #02,#3c,#70,#03,#3c,#70,#02,#bc
	db #70,#b2,#70,#3e,#70,#02,#be,#70
	db #ae,#70,#3a,#70,#02,#ba,#70,#30
	db #10,#02,#3c,#70,#03,#3c,#70,#02
	db #bc,#70,#b3,#70,#3f,#70,#02,#bf
	db #70,#b2,#70,#3e,#70,#02,#be,#70
	db #2b,#10,#02,#37,#70,#03,#37,#70
	db #02,#b7,#70,#ad,#70,#39,#70,#02
	db #b9,#70,#a9,#70,#35,#70,#02,#b5
	db #70,#2b,#10,#02,#37,#70,#03,#37
	db #70,#02,#b7,#70,#ae,#70,#3a,#70
	db #02,#ba,#70,#ad,#70,#39,#70,#02
	db #b9,#70,#ff,#4b,#bf,#03,#20,#4a
	db #bf,#05,#20,#ff,#00,#00,#00,#00
;
.music_info
	db "Demoniak 7 - Main 2 (2000)(Arkos)(Targhan)",0
	db "ST-128 Module - The Deep Dungeon, The Bath - by Mad Max - Turrican 2 (ST)",0

	read "music_end.asm"