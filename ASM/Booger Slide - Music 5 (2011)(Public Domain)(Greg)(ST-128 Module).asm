; Music of Booger Slide - Music 5 (2011)(Public Domain)(Greg)(ST-128 Module)
; Ripped by Megachur the 08/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOOGESM5.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
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
	ld (hl),#03
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
	db #01,#38,#00,#00,#03,#03,#03,#01
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
	db #08,#00,#01,#08,#e1,#00,#00,#32
.l45be equ $ + 6
	db #00,#00,#00,#00,#a0,#49,#e0,#47
	db #c0,#48,#c0,#47,#00,#00,#01,#1f
.l45cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #f4,#4b,#c3,#49,#00,#70,#00,#00
.l45de equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l45e2 equ $ + 2
	db #03,#10,#1c,#01,#00,#2d,#00,#00
.l45ec equ $ + 4
	db #00,#00,#00,#00,#e0,#47,#c0,#48
	db #c0,#47,#00,#00,#01,#1f,#00,#00
.l45fd equ $ + 5
	db #00,#00,#00,#00,#01,#01,#fe,#50
	db #56,#4a,#00,#70,#00,#00,#00,#00
.l460c equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l4610
	db #1c,#01,#00,#2d,#00,#00,#00,#00
.l461a equ $ + 2
	db #00,#00,#e0,#47,#60,#49,#80,#49
	db #80,#00,#20,#00,#00,#00,#00,#00
.l462b equ $ + 3
	db #00,#00,#08,#04,#c2,#55,#e9,#4a
	db #00,#e0,#00,#00,#00,#00,#00,#00
.l463a equ $ + 2
	db #01,#01,#c0,#49,#53,#4a,#e6,#4a
.l4640
	db #e0,#46,#20,#47,#40,#47,#80,#00
	db #72,#48,#b2,#47,#f2,#47,#c0,#47
	db #60,#47,#a0,#47,#c0,#47,#08,#18
	db #12,#00,#24,#01,#76,#01,#24,#02
	db #a4,#02,#a4,#03,#76,#ff,#a4,#ff
	db #e0,#47,#20,#48,#40,#48,#09,#00
	db #60,#48,#a0,#48,#c0,#47,#00,#00
	db #e0,#47,#c0,#48,#c0,#47,#00,#00
	db #a4,#ff,#b2,#47,#72,#48,#c0,#48
	db #e0,#48,#20,#49,#40,#49,#00,#00
	db #d2,#ff,#a4,#ff,#a5,#ff,#d3,#ff
	db #a4,#ff,#a4,#ff,#a3,#ff,#d1,#ff
	db #a4,#ff,#a4,#ff,#a5,#ff,#d3,#ff
	db #a4,#ff,#a4,#ff,#a3,#ff,#d1,#ff
	db #e0,#47,#60,#49,#80,#49,#80,#00
	db #52,#02,#a2,#02,#f2,#02,#00,#00
.l46c0
	db #a0,#49,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #90,#01,#e0,#01,#30,#02,#80,#02
	db #d0,#02,#20,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#0f,#0f,#0e,#0e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #09,#09,#0a,#0a,#0b,#0b,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0a,#0a
	db #0b,#0b,#0c,#0c,#0b,#0b,#0a,#0a
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
	db #0f,#0e,#0c,#0a,#08,#06,#04,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#80,#00
	db #a0,#00,#c0,#00,#e0,#00,#00,#01
	db #20,#01,#40,#01,#60,#01,#80,#01
	db #a0,#01,#c0,#01,#e0,#01,#00,#02
	db #20,#02,#40,#02,#60,#02,#80,#02
	db #a0,#02,#c0,#02,#e0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#80,#03
	db #a0,#03,#c0,#03,#e0,#03,#00,#04
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0e,#0d
	db #0b,#08,#05,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#b0,#00,#e0,#00,#10,#01
	db #40,#01,#70,#01,#a0,#01,#d0,#01
	db #00,#02,#00,#02,#30,#02,#60,#02
	db #70,#02,#80,#02,#90,#02,#a0,#02
	db #b0,#02,#b0,#02,#c0,#02,#e0,#02
	db #e0,#02,#e0,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#01,#00,#00
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0c,#0b,#0a,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#02,#02,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#79,#4b,#00,#79,#4b,#00,#79
	db #4b,#00,#79,#4b,#05,#79,#4b,#05
	db #79,#4b,#00,#79,#4b,#00,#79,#4b
	db #00,#fb,#4b,#00,#79,#4b,#00,#79
	db #4b,#00,#79,#4b,#00,#79,#4b,#05
	db #79,#4b,#05,#79,#4b,#00,#79,#4b
	db #00,#79,#4b,#00,#79,#4b,#00,#79
	db #4b,#00,#00,#4c,#00,#00,#4c,#05
	db #00,#4c,#05,#00,#4c,#00,#00,#4c
	db #00,#00,#4c,#00,#00,#4c,#00,#00
	db #4c,#05,#00,#4c,#05,#00,#4c,#00
	db #00,#4c,#00,#00,#4c,#00,#79,#4b
	db #00,#79,#4b,#05,#79,#4b,#05,#79
	db #4b,#00,#79,#4b,#00,#79,#4b,#00
	db #82,#4c,#00,#43,#4d,#00,#04,#4e
	db #00,#c5,#4e,#00,#c5,#4e,#00,#86
	db #4f,#00,#86,#4f,#00,#86,#4f,#00
	db #86,#4f,#00,#86,#4f,#00,#86,#4f
	db #80,#c0,#49,#00,#47,#50,#00,#47
	db #50,#00,#47,#50,#00,#47,#50,#05
	db #47,#50,#05,#47,#50,#00,#47,#50
	db #00,#47,#50,#00,#fb,#4b,#00,#47
	db #50,#00,#47,#50,#00,#47,#50,#00
	db #47,#50,#05,#47,#50,#05,#47,#50
	db #00,#47,#50,#00,#47,#50,#00,#47
	db #50,#00,#47,#50,#00,#08,#51,#00
	db #08,#51,#05,#08,#51,#05,#08,#51
	db #00,#08,#51,#00,#08,#51,#00,#08
	db #51,#00,#08,#51,#05,#08,#51,#05
	db #08,#51,#00,#08,#51,#00,#08,#51
	db #00,#47,#50,#00,#47,#50,#05,#47
	db #50,#05,#47,#50,#00,#47,#50,#00
	db #47,#50,#00,#c9,#51,#00,#8a,#52
	db #00,#4b,#53,#00,#0c,#54,#00,#0c
	db #54,#00,#cd,#54,#00,#cd,#54,#00
	db #cd,#54,#00,#cd,#54,#00,#cd,#54
	db #00,#cd,#54,#80,#53,#4a,#00,#8e
	db #55,#00,#8e,#55,#00,#8e,#55,#00
	db #8e,#55,#05,#8e,#55,#05,#8e,#55
	db #00,#8e,#55,#00,#8e,#55,#00,#c3
	db #55,#00,#cb,#55,#00,#cb,#55,#00
	db #e4,#55,#00,#7f,#56,#05,#1b,#56
	db #05,#1b,#56,#00,#1b,#56,#00,#1b
	db #56,#00,#8e,#55,#00,#8e,#55,#00
	db #7c,#56,#00,#7c,#56,#05,#7c,#56
	db #05,#7c,#56,#00,#7c,#56,#00,#7c
	db #56,#00,#aa,#56,#00,#aa,#56,#05
	db #aa,#56,#05,#aa,#56,#00,#aa,#56
	db #00,#aa,#56,#00,#aa,#56,#00,#aa
	db #56,#05,#aa,#56,#05,#aa,#56,#00
	db #aa,#56,#00,#aa,#56,#00,#aa,#56
	db #00,#aa,#56,#00,#aa,#56,#00,#aa
	db #56,#00,#aa,#56,#00,#aa,#56,#00
	db #aa,#56,#00,#aa,#56,#00,#aa,#56
	db #00,#6b,#57,#00,#6b,#57,#80,#e6
	db #4a,#3d,#7f,#10,#b1,#70,#bd,#70
	db #b1,#70,#bd,#70,#b1,#70,#bd,#70
	db #b1,#70,#bd,#70,#b1,#70,#bd,#70
	db #b1,#70,#bd,#70,#b1,#70,#bd,#70
	db #b1,#70,#bf,#70,#b1,#70,#bd,#70
	db #b1,#70,#bd,#70,#b1,#70,#c0,#70
	db #b1,#70,#bd,#70,#b1,#70,#bd,#70
	db #b1,#70,#c2,#70,#b1,#70,#bd,#70
	db #b1,#70,#bd,#70,#b1,#70,#bd,#70
	db #b1,#70,#bd,#70,#b1,#70,#bd,#70
	db #b1,#70,#bd,#70,#b1,#70,#bd,#70
	db #b1,#70,#bd,#70,#b1,#70,#bd,#70
	db #b1,#70,#bf,#70,#b1,#70,#bd,#70
	db #b1,#70,#bd,#70,#b1,#70,#c0,#70
	db #b1,#70,#bd,#70,#b1,#70,#bd,#70
	db #b1,#70,#c2,#70,#b1,#70,#bd,#70
	db #b1,#70,#ff,#28,#91,#00,#40,#ff
	db #49,#7f,#10,#bd,#70,#c9,#70,#bd
	db #70,#c9,#70,#bd,#70,#c9,#70,#bd
	db #70,#c9,#70,#bd,#70,#c9,#70,#bd
	db #70,#c9,#70,#bd,#70,#c9,#70,#bd
	db #70,#cb,#70,#bd,#70,#c9,#70,#bd
	db #70,#c9,#70,#bd,#70,#cc,#70,#bd
	db #70,#c9,#70,#bd,#70,#c9,#70,#bd
	db #70,#ce,#70,#bd,#70,#c9,#70,#bd
	db #70,#c9,#70,#bd,#70,#c9,#70,#bd
	db #70,#c9,#70,#bd,#70,#c9,#70,#bd
	db #70,#c9,#70,#bd,#70,#c9,#70,#bd
	db #70,#c9,#70,#bd,#70,#c9,#70,#bd
	db #70,#cb,#70,#bd,#70,#c9,#70,#bd
	db #70,#c9,#70,#bd,#70,#cc,#70,#bd
	db #70,#c9,#70,#bd,#70,#c9,#70,#bd
	db #70,#ce,#70,#bd,#70,#c9,#70,#bd
	db #70,#ff,#3d,#7b,#10,#31,#7b,#10
	db #3d,#7b,#10,#31,#7b,#10,#3d,#7b
	db #10,#31,#7b,#10,#3d,#7b,#10,#31
	db #7b,#10,#3d,#7b,#10,#31,#7b,#10
	db #3d,#7b,#10,#31,#7b,#10,#3d,#7b
	db #10,#31,#7b,#10,#3d,#7b,#10,#31
	db #7b,#10,#3f,#7b,#10,#31,#7b,#10
	db #3d,#7b,#10,#31,#7b,#10,#3d,#7b
	db #10,#31,#7b,#10,#40,#7b,#10,#31
	db #7b,#10,#3d,#7b,#10,#31,#7b,#10
	db #3d,#7b,#10,#31,#7b,#10,#42,#7b
	db #10,#31,#7b,#10,#3d,#7b,#10,#31
	db #7b,#10,#3d,#7b,#11,#31,#7b,#11
	db #3d,#7b,#11,#31,#7b,#11,#3d,#7b
	db #11,#31,#7b,#11,#3d,#7b,#11,#31
	db #7b,#11,#3d,#7b,#11,#31,#7b,#11
	db #3d,#7b,#11,#31,#7b,#11,#3d,#7b
	db #11,#31,#7b,#11,#3d,#7b,#11,#31
	db #7b,#11,#3f,#7b,#11,#31,#7b,#11
	db #3d,#7b,#11,#31,#7b,#11,#3d,#7b
	db #11,#31,#7b,#11,#40,#7b,#11,#31
	db #7b,#11,#3d,#7b,#11,#31,#7b,#11
	db #3d,#7b,#11,#31,#7b,#11,#42,#7b
	db #11,#31,#7b,#11,#3d,#7b,#11,#31
	db #7b,#11,#ff,#3d,#7b,#12,#31,#7b
	db #12,#3d,#7b,#12,#31,#7b,#12,#3d
	db #7b,#12,#31,#7b,#12,#3d,#7b,#12
	db #31,#7b,#12,#3d,#7b,#12,#31,#7b
	db #12,#3d,#7b,#12,#31,#7b,#12,#3d
	db #7b,#12,#31,#7b,#12,#3d,#7b,#12
	db #31,#7b,#12,#3f,#7b,#13,#31,#7b
	db #13,#3d,#7b,#13,#31,#7b,#13,#3d
	db #7b,#13,#31,#7b,#13,#40,#7b,#13
	db #31,#7b,#13,#3d,#7b,#13,#31,#7b
	db #13,#3d,#7b,#13,#31,#7b,#13,#42
	db #7b,#13,#31,#7b,#13,#3d,#7b,#13
	db #31,#7b,#13,#3d,#7b,#13,#31,#7b
	db #14,#3d,#7b,#14,#31,#7b,#14,#3d
	db #7b,#14,#31,#7b,#14,#3d,#7b,#14
	db #31,#7b,#14,#3d,#7b,#15,#31,#7b
	db #15,#3d,#7b,#15,#31,#7b,#15,#3d
	db #7b,#15,#31,#7b,#15,#3d,#7b,#15
	db #31,#7b,#15,#3f,#7b,#16,#31,#7b
	db #16,#3d,#7b,#16,#31,#7b,#16,#3d
	db #7b,#16,#31,#7b,#16,#40,#7b,#16
	db #31,#7b,#16,#3d,#7b,#17,#31,#7b
	db #17,#3d,#7b,#17,#31,#7b,#17,#42
	db #7b,#17,#31,#7b,#17,#3d,#7b,#17
	db #31,#7b,#17,#ff,#49,#71,#1f,#4e
	db #71,#1f,#49,#71,#1f,#4e,#71,#1f
	db #49,#71,#1e,#4e,#71,#1e,#49,#71
	db #1e,#4e,#71,#1e,#49,#71,#1d,#4e
	db #71,#1d,#49,#71,#1d,#4e,#71,#1d
	db #49,#71,#1c,#4e,#71,#1c,#49,#71
	db #1c,#50,#71,#1c,#49,#71,#1b,#50
	db #71,#1b,#49,#71,#1b,#50,#71,#1b
	db #49,#71,#1a,#50,#71,#1a,#49,#71
	db #1a,#50,#71,#1a,#49,#71,#19,#50
	db #71,#19,#49,#71,#19,#50,#71,#19
	db #49,#71,#18,#50,#71,#18,#49,#71
	db #18,#50,#71,#18,#49,#71,#17,#4c
	db #71,#17,#49,#71,#17,#4c,#71,#17
	db #49,#71,#16,#4c,#71,#16,#49,#71
	db #16,#4c,#71,#16,#49,#71,#15,#4c
	db #71,#15,#49,#71,#15,#4c,#71,#15
	db #49,#71,#14,#4c,#71,#14,#49,#71
	db #14,#4c,#71,#14,#49,#71,#13,#4b
	db #71,#13,#49,#71,#13,#4b,#71,#13
	db #49,#71,#12,#4b,#71,#12,#49,#71
	db #12,#4b,#71,#12,#49,#71,#11,#4b
	db #71,#11,#49,#71,#11,#4b,#71,#11
	db #49,#71,#10,#4b,#71,#10,#49,#71
	db #10,#4b,#71,#10,#ff,#49,#71,#10
	db #4e,#71,#10,#49,#71,#10,#4e,#71
	db #10,#49,#71,#10,#4e,#71,#10,#49
	db #71,#10,#4e,#71,#10,#49,#71,#10
	db #4e,#71,#10,#49,#71,#10,#4e,#71
	db #10,#49,#71,#10,#4e,#71,#10,#49
	db #71,#10,#50,#71,#10,#49,#71,#10
	db #50,#71,#10,#49,#71,#10,#50,#71
	db #10,#49,#71,#10,#50,#71,#10,#49
	db #71,#10,#50,#71,#10,#49,#71,#10
	db #50,#71,#10,#49,#71,#10,#50,#71
	db #10,#49,#71,#10,#50,#71,#10,#49
	db #71,#10,#50,#71,#10,#49,#71,#10
	db #4c,#71,#10,#49,#71,#10,#4c,#71
	db #10,#49,#71,#10,#4c,#71,#10,#49
	db #71,#10,#4c,#71,#10,#49,#71,#10
	db #4c,#71,#10,#49,#71,#10,#4c,#71
	db #10,#49,#71,#10,#4c,#71,#10,#49
	db #71,#10,#4c,#71,#10,#49,#71,#10
	db #4b,#71,#10,#49,#71,#10,#4b,#71
	db #10,#49,#71,#10,#4b,#71,#10,#49
	db #71,#10,#4b,#71,#10,#49,#71,#10
	db #4b,#71,#10,#49,#71,#10,#4b,#71
	db #10,#49,#71,#10,#4b,#71,#10,#49
	db #71,#10,#4b,#71,#10,#ff,#3d,#71
	db #10,#42,#71,#10,#3d,#71,#10,#42
	db #71,#10,#3d,#71,#10,#42,#71,#10
	db #3d,#71,#10,#42,#71,#10,#3d,#71
	db #10,#42,#71,#10,#3d,#71,#10,#42
	db #71,#10,#3d,#71,#10,#42,#71,#10
	db #3d,#71,#10,#44,#71,#10,#3d,#71
	db #10,#44,#71,#10,#3d,#71,#10,#44
	db #71,#10,#3d,#71,#10,#44,#71,#10
	db #3d,#71,#10,#44,#71,#10,#3d,#71
	db #10,#44,#71,#10,#3d,#71,#10,#44
	db #71,#10,#3d,#71,#10,#44,#71,#10
	db #3d,#71,#10,#44,#71,#10,#3d,#71
	db #10,#40,#71,#10,#3d,#71,#10,#40
	db #71,#10,#3d,#71,#10,#40,#71,#10
	db #3d,#71,#10,#40,#71,#10,#3d,#71
	db #10,#40,#71,#10,#3d,#71,#10,#40
	db #71,#10,#3d,#71,#10,#40,#71,#10
	db #3d,#71,#10,#40,#71,#10,#3d,#71
	db #10,#3f,#71,#10,#3d,#71,#10,#3f
	db #71,#10,#3d,#71,#10,#3f,#71,#10
	db #3d,#71,#10,#3f,#71,#10,#3d,#71
	db #10,#3f,#71,#10,#3d,#71,#10,#3f
	db #71,#10,#3d,#71,#10,#3f,#71,#10
	db #3d,#71,#10,#3f,#71,#10,#ff,#42
	db #71,#11,#31,#71,#11,#3d,#71,#11
	db #31,#71,#11,#3d,#71,#11,#31,#71
	db #11,#3d,#71,#11,#31,#71,#11,#3d
	db #71,#11,#31,#71,#11,#3d,#71,#11
	db #31,#71,#11,#3d,#71,#11,#31,#71
	db #11,#3d,#71,#11,#31,#71,#11,#3d
	db #71,#11,#31,#71,#11,#3d,#71,#11
	db #31,#71,#11,#3f,#71,#11,#31,#71
	db #11,#3d,#71,#11,#31,#71,#11,#3d
	db #71,#11,#31,#71,#11,#40,#71,#11
	db #31,#71,#11,#3d,#71,#11,#31,#71
	db #11,#3d,#71,#11,#31,#71,#11,#42
	db #71,#11,#31,#71,#11,#3d,#71,#11
	db #31,#71,#11,#3d,#71,#11,#31,#71
	db #11,#3d,#71,#11,#31,#71,#11,#3d
	db #71,#11,#31,#71,#11,#3d,#71,#11
	db #31,#71,#11,#3d,#71,#11,#31,#71
	db #11,#3d,#71,#11,#31,#71,#11,#3d
	db #71,#11,#31,#71,#11,#3d,#71,#11
	db #31,#71,#11,#3f,#71,#11,#31,#71
	db #11,#3d,#71,#11,#31,#71,#11,#3d
	db #71,#11,#31,#71,#11,#40,#71,#11
	db #31,#71,#11,#3d,#71,#11,#31,#71
	db #11,#3d,#71,#11,#31,#71,#11,#ff
	db #4e,#71,#11,#3d,#71,#11,#49,#71
	db #11,#3d,#71,#11,#49,#71,#11,#3d
	db #71,#11,#49,#71,#11,#3d,#71,#11
	db #49,#71,#11,#3d,#71,#11,#49,#71
	db #11,#3d,#71,#11,#49,#71,#11,#3d
	db #71,#11,#49,#71,#11,#3d,#71,#11
	db #49,#71,#11,#3d,#71,#11,#49,#71
	db #11,#3d,#71,#11,#4b,#71,#11,#3d
	db #71,#11,#49,#71,#11,#3d,#71,#11
	db #49,#71,#11,#3d,#71,#11,#4c,#71
	db #11,#3d,#71,#11,#49,#71,#11,#3d
	db #71,#11,#49,#71,#11,#3d,#71,#11
	db #4e,#71,#11,#3d,#71,#11,#49,#71
	db #11,#3d,#71,#11,#49,#71,#11,#3d
	db #71,#11,#49,#71,#11,#3d,#71,#11
	db #49,#71,#11,#3d,#71,#11,#49,#71
	db #11,#3d,#71,#11,#49,#71,#11,#3d
	db #71,#11,#49,#71,#11,#3d,#71,#11
	db #49,#71,#11,#3d,#71,#11,#49,#71
	db #11,#3d,#71,#11,#4b,#71,#11,#3d
	db #71,#11,#49,#71,#11,#3d,#71,#11
	db #49,#71,#11,#3d,#71,#11,#4c,#71
	db #11,#3d,#71,#11,#49,#71,#11,#3d
	db #71,#11,#49,#71,#11,#3d,#71,#11
	db #ff,#42,#71,#11,#31,#71,#11,#3d
	db #71,#11,#31,#71,#11,#3d,#71,#11
	db #31,#71,#11,#3d,#71,#11,#31,#71
	db #11,#3d,#71,#11,#31,#71,#11,#3d
	db #71,#11,#31,#71,#11,#3d,#71,#11
	db #31,#71,#11,#3d,#71,#11,#31,#71
	db #11,#3d,#71,#11,#31,#71,#11,#3d
	db #71,#11,#31,#71,#11,#3f,#71,#11
	db #31,#71,#11,#3d,#71,#11,#31,#71
	db #11,#3d,#71,#11,#31,#71,#11,#40
	db #71,#11,#31,#71,#11,#3d,#71,#11
	db #31,#71,#11,#3d,#71,#11,#31,#71
	db #11,#42,#71,#12,#31,#71,#12,#3d
	db #71,#12,#31,#71,#12,#3d,#71,#12
	db #31,#71,#12,#3d,#71,#12,#31,#71
	db #12,#3d,#71,#12,#31,#71,#12,#3d
	db #71,#12,#31,#71,#12,#3d,#71,#12
	db #31,#71,#12,#3d,#71,#12,#31,#71
	db #12,#3d,#71,#12,#31,#71,#12,#3d
	db #71,#12,#31,#71,#12,#3f,#71,#12
	db #31,#71,#12,#3d,#71,#12,#31,#71
	db #12,#3d,#71,#12,#31,#71,#12,#40
	db #71,#12,#31,#71,#12,#3d,#71,#12
	db #31,#71,#12,#3d,#71,#12,#31,#71
	db #12,#ff,#42,#71,#13,#31,#71,#13
	db #3d,#71,#13,#31,#71,#13,#3d,#71
	db #13,#31,#71,#13,#3d,#71,#13,#31
	db #71,#13,#3d,#71,#13,#31,#71,#13
	db #3d,#71,#13,#31,#71,#13,#3d,#71
	db #13,#31,#71,#13,#3d,#71,#13,#31
	db #71,#13,#3d,#71,#14,#31,#71,#14
	db #3d,#71,#14,#31,#71,#14,#3f,#71
	db #14,#31,#71,#14,#3d,#71,#14,#31
	db #71,#14,#3d,#71,#14,#31,#71,#14
	db #40,#71,#14,#31,#71,#14,#3d,#71
	db #14,#31,#71,#14,#3d,#71,#14,#31
	db #71,#14,#42,#71,#14,#31,#71,#15
	db #3d,#71,#15,#31,#71,#15,#3d,#71
	db #15,#31,#71,#15,#3d,#71,#15,#31
	db #71,#15,#3d,#71,#16,#31,#71,#16
	db #3d,#71,#16,#31,#71,#16,#3d,#71
	db #16,#31,#71,#16,#3d,#71,#16,#31
	db #71,#16,#3d,#71,#17,#31,#71,#17
	db #3d,#71,#17,#31,#71,#17,#3f,#71
	db #17,#31,#71,#17,#3d,#71,#17,#31
	db #71,#17,#3d,#71,#18,#31,#71,#18
	db #40,#71,#18,#31,#71,#18,#3d,#71
	db #18,#31,#71,#18,#3d,#71,#18,#31
	db #71,#18,#ff,#49,#71,#1f,#4b,#71
	db #1f,#49,#71,#1f,#4b,#71,#1f,#49
	db #71,#1f,#4e,#71,#1f,#49,#71,#1f
	db #4e,#71,#1f,#49,#71,#1e,#4e,#71
	db #1e,#49,#71,#1e,#4e,#71,#1e,#49
	db #71,#1d,#4e,#71,#1d,#49,#71,#1d
	db #4e,#71,#1d,#49,#71,#1c,#4e,#71
	db #1c,#49,#71,#1c,#50,#71,#1c,#49
	db #71,#1b,#50,#71,#1b,#49,#71,#1b
	db #50,#71,#1b,#49,#71,#1a,#50,#71
	db #1a,#49,#71,#1a,#50,#71,#1a,#49
	db #71,#19,#50,#71,#19,#49,#71,#19
	db #50,#71,#19,#49,#71,#18,#50,#71
	db #18,#49,#71,#18,#50,#71,#18,#49
	db #71,#17,#4c,#71,#17,#49,#71,#17
	db #4c,#71,#17,#49,#71,#16,#4c,#71
	db #16,#49,#71,#16,#4c,#71,#16,#49
	db #71,#15,#4c,#71,#15,#49,#71,#15
	db #4c,#71,#15,#49,#71,#14,#4c,#71
	db #14,#49,#71,#14,#4c,#71,#14,#49
	db #71,#13,#4b,#71,#13,#49,#71,#13
	db #4b,#71,#13,#49,#71,#12,#4b,#71
	db #12,#49,#71,#12,#4b,#71,#12,#49
	db #71,#11,#4b,#71,#11,#49,#71,#11
	db #4b,#71,#11,#ff,#49,#71,#10,#4b
	db #71,#10,#49,#71,#10,#4b,#71,#10
	db #49,#71,#10,#4e,#71,#10,#49,#71
	db #10,#4e,#71,#10,#49,#71,#10,#4e
	db #71,#10,#49,#71,#10,#4e,#71,#10
	db #49,#71,#10,#4e,#71,#10,#49,#71
	db #10,#4e,#71,#10,#49,#71,#10,#4e
	db #71,#10,#49,#71,#10,#50,#71,#10
	db #49,#71,#10,#50,#71,#10,#49,#71
	db #10,#50,#71,#10,#49,#71,#10,#50
	db #71,#10,#49,#71,#10,#50,#71,#10
	db #49,#71,#10,#50,#71,#10,#49,#71
	db #10,#50,#71,#10,#49,#71,#10,#50
	db #71,#10,#49,#71,#10,#50,#71,#10
	db #49,#71,#10,#4c,#71,#10,#49,#71
	db #10,#4c,#71,#10,#49,#71,#10,#4c
	db #71,#10,#49,#71,#10,#4c,#71,#10
	db #49,#71,#10,#4c,#71,#10,#49,#71
	db #10,#4c,#71,#10,#49,#71,#10,#4c
	db #71,#10,#49,#71,#10,#4c,#71,#10
	db #49,#71,#10,#4b,#71,#10,#49,#71
	db #10,#4b,#71,#10,#49,#71,#10,#4b
	db #71,#10,#49,#71,#10,#4b,#71,#10
	db #49,#71,#10,#4b,#71,#10,#49,#71
	db #10,#4b,#71,#10,#ff,#3d,#71,#11
	db #3f,#71,#11,#3d,#71,#11,#3f,#71
	db #11,#3d,#71,#11,#42,#71,#11,#3d
	db #71,#11,#42,#71,#11,#3d,#71,#11
	db #42,#71,#11,#3d,#71,#11,#42,#71
	db #11,#3d,#71,#11,#42,#71,#11,#3d
	db #71,#11,#42,#71,#11,#3d,#71,#11
	db #42,#71,#11,#3d,#71,#11,#44,#71
	db #11,#3d,#71,#11,#44,#71,#11,#3d
	db #71,#11,#44,#71,#11,#3d,#71,#11
	db #44,#71,#11,#3d,#71,#11,#44,#71
	db #11,#3d,#71,#11,#44,#71,#11,#3d
	db #71,#11,#44,#71,#11,#3d,#71,#11
	db #44,#71,#11,#3d,#71,#11,#44,#71
	db #11,#3d,#71,#11,#40,#71,#11,#3d
	db #71,#11,#40,#71,#11,#3d,#71,#11
	db #40,#71,#11,#3d,#71,#11,#40,#71
	db #11,#3d,#71,#11,#40,#71,#11,#3d
	db #71,#11,#40,#71,#11,#3d,#71,#11
	db #40,#71,#11,#3d,#71,#11,#40,#71
	db #11,#3d,#71,#11,#3f,#71,#11,#3d
	db #71,#11,#3f,#71,#11,#3d,#71,#11
	db #3f,#71,#11,#3d,#71,#11,#3f,#71
	db #11,#3d,#71,#11,#3f,#71,#11,#3d
	db #71,#11,#3f,#71,#11,#ff,#3d,#e1
	db #10,#3d,#e1,#10,#3d,#e1,#11,#3d
	db #e1,#12,#3d,#e1,#13,#3d,#e1,#12
	db #3d,#e1,#14,#3d,#e1,#13,#3d,#e1
	db #15,#3d,#e1,#14,#3d,#e1,#16,#3d
	db #e1,#15,#3d,#e1,#17,#3d,#e1,#16
	db #3d,#e1,#18,#3d,#e1,#17,#3d,#e1
	db #08,#30,#ff,#6d,#28,#03,#06,#09
	db #00,#3a,#ff,#3f,#01,#80,#3f,#00
	db #08,#3f,#00,#08,#3f,#00,#08,#3f
	db #00,#08,#3f,#00,#08,#3f,#00,#08
	db #3f,#00,#08,#ff,#3f,#01,#40,#40
	db #e0,#04,#3f,#00,#04,#40,#e0,#04
	db #3f,#00,#04,#40,#e0,#04,#3f,#00
	db #04,#40,#e0,#02,#40,#e0,#02,#3f
	db #00,#04,#40,#e0,#04,#3f,#00,#04
	db #46,#e0,#04,#55,#00,#04,#46,#e0
	db #04,#55,#00,#04,#46,#e0,#02,#46
	db #e0,#02,#ff,#3f,#01,#20,#72,#50
	db #02,#40,#e0,#02,#72,#50,#02,#3f
	db #00,#02,#72,#50,#02,#40,#e0,#02
	db #72,#50,#02,#3f,#00,#02,#72,#50
	db #02,#40,#e0,#02,#72,#50,#02,#3f
	db #00,#02,#72,#50,#02,#40,#e0,#02
	db #40,#e0,#02,#3f,#00,#02,#72,#50
	db #02,#40,#e0,#02,#72,#50,#02,#3f
	db #00,#02,#72,#50,#02,#40,#e0,#02
	db #72,#50,#02,#3f,#00,#02,#72,#50
	db #02,#40,#e0,#02,#72,#50,#02,#3f
	db #00,#02,#72,#50,#02,#40,#e0,#02
	db #40,#e0,#02,#ff,#00,#40,#ff,#55
	db #01,#40,#40,#e0,#04,#3f,#00,#04
	db #40,#e0,#04,#3f,#00,#04,#40,#e0
	db #04,#3f,#00,#04,#40,#e0,#02,#40
	db #e0,#02,#3f,#00,#04,#40,#e0,#04
	db #3f,#00,#04,#46,#e0,#04,#55,#00
	db #10,#ff,#3f,#01,#10,#bd,#28,#12
	db #72,#51,#10,#b1,#28,#12,#34,#e1
	db #10,#bd,#28,#12,#72,#51,#10,#b1
	db #28,#12,#3f,#01,#10,#bd,#28,#12
	db #72,#51,#10,#b1,#28,#12,#40,#e1
	db #10,#bd,#28,#12,#72,#51,#10,#b1
	db #28,#12,#3f,#01,#10,#bd,#28,#12
	db #72,#51,#10,#b1,#28,#12,#40,#e1
	db #10,#bd,#28,#12,#72,#51,#10,#b1
	db #28,#12,#3f,#01,#10,#bd,#28,#12
	db #72,#51,#10,#b1,#28,#12,#40,#e1
	db #10,#bd,#28,#12,#40,#e1,#10,#b1
	db #28,#12,#3f,#01,#10,#bd,#28,#12
	db #72,#51,#10,#b1,#28,#12,#40,#e1
	db #10,#bd,#28,#12,#72,#51,#10,#b1
	db #28,#12,#3f,#01,#10,#bd,#28,#12
	db #72,#51,#10,#b1,#28,#12,#40,#e1
	db #10,#bd,#28,#12,#72,#51,#10,#b1
	db #28,#12,#3f,#01,#10,#bd,#28,#12
	db #72,#51,#10,#b1,#28,#12,#40,#e1
	db #10,#bd,#28,#12,#72,#51,#10,#b1
	db #28,#12,#3f,#01,#10,#bd,#28,#12
	db #72,#51,#10,#b1,#28,#12,#40,#e1
	db #10,#bd,#28,#12,#40,#e1,#10,#b1
	db #28,#12,#ff,#3f,#61,#60,#fe,#30
	db #3d,#e1,#19,#3d,#e1,#19,#3d,#e1
	db #17,#3d,#e1,#15,#3d,#e1,#13,#3d
	db #e1,#12,#3d,#e1,#11,#3d,#e1,#11
	db #3d,#e1,#10,#3d,#e1,#10,#ff
;
.music_info
	db "Booger Slide - Music 5 (2011)(Public Domain)(Greg)",0
	db "ST-128 Module",0

	read "music_end.asm"
