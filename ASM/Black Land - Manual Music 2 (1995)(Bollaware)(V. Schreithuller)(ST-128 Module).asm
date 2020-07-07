; Music of Black Land - Manual Music 2 (1995)(Bollaware)(V. Schreithuller)(ST-128 Module)
; Ripped by Megachur the 22/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLACLMM2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 12
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
	ld (hl),#06
	inc hl
	ld (hl),#30
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
	ld (hl),#30
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
	add b
	add b
	add e
	adc b
	adc c
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
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l4478
	ld (ix+#1e),a
	jp l41e0
	dec b
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
	dec b
	jr l438b
	inc b
.l438b
	call l4478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l41e0
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
	call l4478
	ld (ix+#1e),a
	jp l41e0
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
	ld a,(hl)
	inc hl
	ld (l44c9),a
	jp l41e0
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
	db #53,#43,#66,#43,#65,#43,#8a,#43
	db #87,#43,#9a,#43,#ab,#43,#d3,#43
	db #ed,#43,#d3,#43,#07,#44,#10,#44
	db #32,#44,#3a,#44,#59,#44
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
	db #00,#00,#60,#49,#81,#49,#a2,#49
.l4640
	db #e0,#46,#20,#47,#40,#47,#80,#00
	db #60,#47,#a0,#47,#c0,#47,#c0,#00
	db #e0,#47,#20,#48,#40,#48,#9a,#06
	db #60,#48,#a0,#48,#c0,#48,#1a,#06
	db #b7,#e5,#89,#e5,#89,#e5,#b7,#e5
	db #b7,#e5,#89,#e5,#89,#e5,#b7,#e5
	db #b7,#e5,#89,#e5,#89,#e5,#b7,#e5
	db #b7,#e5,#89,#e5,#89,#e5,#b7,#e5
	db #b7,#e5,#89,#e5,#89,#e5,#b7,#e5
	db #b7,#e5,#89,#e5,#89,#e5,#b7,#e5
	db #b7,#e5,#89,#e5,#89,#e5,#b7,#e5
	db #12,#49,#89,#e5,#32,#49,#80,#49
	db #72,#49,#92,#49,#89,#e5,#b7,#e5
	db #89,#e5,#89,#e5,#89,#e5,#b7,#e5
	db #89,#e5,#62,#01,#b2,#01,#30,#02
	db #52,#02,#a2,#02,#f2,#02,#00,#00
.l46c0
	db #e0,#48,#d2,#ff,#00,#49,#20,#49
	db #40,#49,#d2,#ff,#d2,#ff,#d2,#ff
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
	db #0d,#0e,#0e,#0e,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
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
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #0f,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#03,#06,#00,#03,#06,#00,#03
	db #06,#00,#03,#06,#00,#03,#06,#00
	db #03,#06,#00,#03,#06,#00,#03,#06
	db #00,#03,#06,#00,#03,#06,#00,#03
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #01,#04,#07,#01,#04,#07,#01,#04
	db #07,#01,#04,#07,#01,#04,#07,#01
	db #04,#07,#01,#04,#07,#01,#04,#07
	db #01,#04,#07,#01,#04,#07,#01,#04
	db #00,#c3,#49,#00,#c3,#49,#00,#c3
	db #49,#00,#c3,#49,#00,#c3,#49,#00
	db #06,#4a,#00,#c3,#49,#00,#c3,#49
	db #00,#c3,#49,#00,#c3,#49,#80,#60
	db #49,#00,#4b,#4a,#00,#53,#4a,#00
	db #4b,#4a,#00,#53,#4a,#00,#57,#4a
	db #00,#5f,#4a,#00,#66,#4a,#00,#66
	db #4a,#00,#66,#4a,#00,#76,#4a,#80
	db #81,#49,#00,#86,#4a,#00,#8b,#4a
	db #00,#86,#4a,#00,#8b,#4a,#00,#90
	db #4a,#00,#99,#4a,#00,#a0,#4a,#00
	db #a0,#4a,#00,#a0,#4a,#00,#a9,#4a
	db #80,#a2,#49,#28,#00,#02,#28,#00
	db #02,#34,#20,#02,#a8,#10,#34,#20
	db #03,#28,#00,#02,#28,#00,#02,#34
	db #20,#02,#a8,#10,#34,#20,#03,#a8
	db #10,#34,#20,#03,#28,#00,#02,#28
	db #00,#02,#34,#20,#02,#a8,#10,#34
	db #20,#03,#28,#00,#02,#28,#00,#02
	db #34,#20,#02,#a8,#10,#34,#20,#03
	db #a8,#10,#34,#20,#03,#ff,#28,#00
	db #02,#28,#00,#02,#34,#20,#02,#a8
	db #10,#34,#20,#03,#28,#00,#02,#28
	db #00,#02,#34,#20,#02,#a8,#10,#34
	db #20,#03,#a8,#10,#34,#20,#03,#28
	db #00,#02,#28,#00,#02,#34,#20,#02
	db #a8,#10,#34,#20,#03,#28,#00,#02
	db #a8,#00,#fe,#03,#b4,#10,#b4,#20
	db #34,#20,#02,#b4,#10,#b4,#20,#34
	db #20,#02,#ff,#34,#31,#00,#18,#3b
	db #30,#18,#ff,#3a,#30,#30,#ff,#3b
	db #31,#00,#18,#39,#30,#18,#ff,#34
	db #31,#00,#25,#fe,#0b,#ff,#31,#30
	db #0c,#31,#30,#04,#34,#30,#04,#38
	db #30,#04,#37,#30,#18,#ff,#3a,#30
	db #10,#3a,#30,#04,#3b,#30,#04,#3b
	db #30,#0c,#3c,#30,#0c,#ff,#34,#3f
	db #00,#30,#ff,#34,#3f,#02,#30,#ff
	db #34,#3f,#00,#18,#32,#3f,#03,#18
	db #ff,#34,#3f,#00,#25,#fe,#0b,#ff
	db #31,#3f,#00,#18,#34,#3f,#00,#18
	db #ff,#36,#3f,#03,#18,#3b,#3f,#c3
	db #3b,#3f,#c4,#ff,#3f,#c4,#ff,#00
	db #00,#00,#00,#b6,#06,#00,#23,#12
	db #87,#dd,#6e,#12,#dd,#66,#13,#19
	db #4e,#cb,#79,#c0,#dd,#46,#03,#2a
	db #cc,#44,#7c,#b0,#67,#79,#e6,#1f
	db #28,#05,#6f,#78,#2f,#a4,#67,#22
	db #cc,#44,#c9,#21,#ee,#44,#fe,#61
	db #30,#03,#87,#4f,#09,#02,#22,#04
	db #23,#00,#05,#05,#c9,#dd,#72,#0d
	db #dd,#72,#06,#dd,#72,#1a,#cd,#78
	db #44,#00,#56,#c3,#e0,#41,#05,#7e
	db #23,#4f,#e6,#0f,#cb,#78,#28,#02
	db #ed,#00,#12,#1c,#dd,#70,#1d,#79
	db #0f,#0f,#0f,#0f,#e6,#0f,#22,#38
	db #1b,#10,#22,#18,#01,#04,#20,#2f
	db #20,#9a,#70,#0a,#00,#13,#20,#34
	db #00,#40,#79,#e6,#f0,#00,#2c,#c3
	db #5d,#44,#7e,#23,#b7,#28,#1d,#4f
	db #50,#39,#21,#29,#e6,#07,#dd,#77
	db #2a,#10,#54,#2b,#01,#32,#3e,#01
	db #dd,#77,#29,#00,#39,#2b,#7e,#e6
	db #0f,#32,#cf,#44,#23,#7e,#23,#32
	db #ce,#44,#20,#8d,#1a,#dd,#36,#06
	db #10,#10,#53,#b7,#28,#0d,#cd,#7a
	db #00,#2f,#2c,#dd,#77,#2d,#23,#00
	db #11,#21,#01,#01,#22,#ca,#44,#00
	db #09,#60,#ab,#7e,#23,#e5,#5f,#10
	db #63,#cd,#89,#44,#dd,#71,#0e,#dd
	db #72,#0f,#7b,#16,#04,#20,#0c,#12
	db #dd,#72,#13,#e1,#50,#20,#22,#32
	db #c9,#10,#33,#00,#a0,#50,#8c,#18
	db #79,#10,#06,#19,#20,#f6,#0d,#dd
	db #36,#1a,#01,#30,#52,#87,#06,#00
	db #4f,#e5,#21,#c0,#46,#11,#1c,#0c
	db #11,#1c,#0d,#e1,#dd,#70,#06,#dd
	db #70,#1a,#20,#3e,#fe,#10,#d8,#4f
	db #20,#db,#0f,#57,#00,#3f,#c9,#e6
	db #0f,#87,#87,#87,#82,#22,#ee,#4e
	db #23,#56,#c9,#53,#54,#2d,#31,#32
	db #38,#20,#4d,#6f,#64,#75,#6c,#65
	db #f3,#06,#f4,#ed,#79,#06,#f6,#ed
	db #78,#f6,#c0,#ed,#79,#e6,#3f,#00
	db #0c,#f4,#ed,#49,#06,#f6,#4f,#f6
	db #80,#ed,#79,#ed,#49,#fb,#c9,#00
	db #00,#00,#00,#00,#00,#04,#38,#00
	db #00,#53,#43,#66,#43,#65,#43,#8a
	db #43,#87,#43,#9a,#43,#ab,#43,#d3
	db #43,#ed,#00,#04,#07,#44,#10,#44
	db #32,#44,#3a,#44,#59,#44,#00,#00
	db #18,#0e,#4d,#0d,#8e,#0c,#da,#0b
	db #2f,#0b,#8f,#0a,#f7,#09,#68,#09
	db #e1,#08,#61,#08,#e9,#07,#77,#07
	db #0c,#07,#a7,#06,#47,#06,#ed,#05
	db #98,#05,#47,#05,#fc,#04,#b4,#04
	db #70,#04,#31,#04,#f4,#03,#bc,#03
	db #86,#03,#53,#03,#24,#03,#f6,#02
	db #cc,#02,#a4,#02,#7e,#02,#5a,#02
	db #38,#02,#18,#02,#fa,#01,#de,#01
	db #c3,#01,#aa,#01,#92,#01,#7b,#01
	db #66,#01,#52,#01,#3f,#01,#2d,#01
	db #1c,#01,#0c,#01,#fd,#00,#ef,#00
	db #e1,#00,#d5,#00,#c9,#00,#be,#00
	db #b3,#00,#a9,#00,#9f,#00,#96,#00
	db #8e,#00,#86,#00,#7f,#00,#77,#00
	db #71,#00,#6a,#00,#64,#00,#5f,#00
	db #59,#00,#54,#00,#50,#00,#4b,#00
	db #47,#00,#43,#00,#3f,#00,#3c,#00
	db #b3,#35,#00,#32,#00,#2f,#00,#2d
	db #00,#2a,#00,#28,#00,#26,#00,#24
	db #00,#22,#00,#20,#00,#1e,#00,#1c
	db #00,#1b,#00,#19,#00,#18,#00,#16
	db #00,#15,#00,#14,#00,#13,#00,#12
	db #00,#11,#00,#10,#00,#0f,#00,#08
	db #00,#01,#08,#50,#ef,#50,#f7,#50
	db #ff,#f0,#13,#09,#02,#03,#10,#f0
	db #16,#f0,#28,#30,#07,#0a,#04,#05
	db #20,#f0,#16,#f0,#28,#30,#07,#60
	db #49,#81,#49,#a2,#49,#e0,#46,#20
	db #47,#40,#47,#80,#00,#60,#47,#a0
	db #47,#c0,#47,#c0,#00,#e0,#47,#20
	db #48,#40,#48,#9a,#06,#60,#48,#a0
	db #48,#c0,#48,#1a,#06,#b7,#e5,#89
	db #e5,#89,#e5,#b7,#e5,#b7,#00,#06
	db #89,#00,#06,#b7,#00,#06,#89,#00
	db #06,#f0,#18,#b0,#10,#12,#49,#89
	db #e5,#32,#49,#80,#49,#72,#49,#92
	db #00,#0a,#30,#16,#30,#08,#62,#01
	db #b2,#01,#30,#02,#52,#02,#a2,#02
	db #f2,#02,#00,#00,#e0,#48,#d2,#ff
	db #00,#49,#20,#49,#40,#49,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#70,#0c,#90,#01,#e0,#00
	db #2e,#80,#02,#d0,#02,#20,#03,#f0
	db #c4,#f0,#d6,#d0,#11,#0d,#0e,#0e
	db #0e,#0d,#0d,#f0,#18,#50,#09,#f1
	db #8d,#d0,#11,#65,#01,#3e,#01,#00
	db #00,#c3,#04,#65,#00,#06,#f0,#1e
	db #f0,#13,#b0,#0f,#00,#7e,#0c,#0b
	db #0a,#f0,#18,#50,#09,#06,#00,#00
	db #06,#07,#07,#f0,#18,#f0,#2a,#f0
	db #13,#f0,#13,#f0,#13,#0d,#0b,#09
	db #07,#05,#03,#f0,#bb,#50,#09,#01
	db #01,#01,#01,#00,#04,#f0,#19,#f0
	db #2b,#f0,#13,#30,#42,#00,#01,#00
	db #04,#40,#4e,#20,#0c,#ff,#ff,#ff
	db #ff,#50,#0e,#0f,#0c,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#b0,#0f,#f0
	db #50,#c0,#10,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#b0,#0f,#00,#03
	db #06,#00,#03,#06,#00,#03,#06,#00
	db #03,#06,#00,#03,#06,#00,#03,#06
	db #b0,#0f,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#b0,#0f,#01,#04
	db #07,#01,#04,#07,#01,#04,#07,#01
	db #04,#07,#01,#04,#07,#01,#04,#07
	db #b0,#0f,#00,#c3,#49,#00,#c3,#49
	db #00,#c3,#49,#40,#09,#06,#4a,#90
	db #0f,#80,#60,#49,#00,#4b,#4a,#00
	db #53,#4a,#00,#4b,#20,#06,#57,#4a
	db #00,#5f,#4a,#00,#66,#4a,#00,#66
	db #20,#06,#76,#4a,#80,#81,#49,#00
	db #86,#4a,#00,#8b,#4a,#00,#86,#20
	db #06,#90,#4a,#00,#99,#4a,#00,#a0
	db #4a,#00,#a0,#20,#06,#a9,#4a,#80
	db #a2,#49,#28,#00,#02,#28,#00,#02
	db #34,#20,#02,#a8,#10,#34,#20,#03
	db #00,#0b,#80,#0e,#f0,#13,#f0,#21
	db #20,#03,#ff,#f0,#22,#f0,#43,#b0
	db #21,#a8,#00,#fe,#03,#b4,#10,#b4
	db #20,#00,#13,#b4,#30,#07,#ff,#34
	db #31,#00,#18,#3b,#30,#18,#ff,#3a
	db #30,#30,#ff,#3b,#00,#0c,#39,#00
	db #0c,#00,#14,#25,#fe,#0b,#ff,#31
	db #30,#0c,#31,#30,#04,#34,#30,#04
	db #38,#30,#04,#37,#20,#23,#10,#3a
	db #30,#04,#3b,#30,#04,#3b,#30,#0c
	db #3c,#30,#0c,#ff,#34,#3f,#00,#30
	db #00,#05,#02,#10,#05,#00,#18,#32
	db #3f,#03,#00,#3a,#3f,#30,#3a,#00
	db #10,#10,#14,#ff
;
; #8f09
; sub #31		; choose music 1 / 2
; jr nz,l8f18
; ld bc,#7fc4
; ld hl,#4003
; ld de,#4000
; jr l8f21
; .l8f18
; ld bc,#7fc4
; ld hl,#712c
; ld de,#7147
; .l8f21
; push hl
; di
; ld (l8f42),bc
; out (c),c
; ld hl,#0000
; ld (#8f44),hl
; ld (l8f34),de
; .l8f34 equ $ + 1
; call #0000
; call #8f77
; sub a
; ei
; pop hl
; ld (#8f44),hl
; jp #8e25
; .l8f42
; ret z
;
.music_info
	db "Black Land - Manual Music 2 (1995)(Bollaware)(V. Schreithuller)",0
	db "ST-128 Module",0

	read "music_end.asm"
