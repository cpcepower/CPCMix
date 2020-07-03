; Music of Greek Meeting 2 - Part 7 (1995)(Chaos)(Catloc)(ST-128 Module)
; Ripped by Megachur the 02/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GREEM2P7.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 06
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
	ld (hl),#04
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
	add a
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
	db #00,#00,#40,#4a,#91,#4a,#e2,#4a
.l4640
	db #e0,#46,#20,#47,#40,#47,#00,#00
	db #e0,#46,#60,#47,#80,#47,#00,#00
	db #a0,#47,#e0,#47,#80,#47,#48,#08
	db #00,#48,#40,#48,#80,#47,#08,#18
	db #e0,#46,#60,#48,#80,#47,#48,#08
	db #e0,#46,#80,#48,#80,#47,#48,#08
	db #a0,#48,#e0,#48,#00,#49,#1a,#06
	db #d2,#ff,#d2,#ff,#d2,#ff,#00,#00
	db #d2,#ff,#d2,#ff,#d2,#ff,#00,#00
	db #00,#48,#40,#48,#80,#47,#08,#18
	db #e0,#46,#20,#49,#40,#49,#00,#00
	db #60,#49,#a0,#49,#c0,#49,#00,#00
	db #d2,#ff,#d2,#ff,#d2,#ff,#00,#00
	db #e0,#46,#e0,#49,#00,#4a,#00,#00
	db #e0,#46,#20,#4a,#80,#47,#00,#00
	db #d2,#ff,#d2,#ff,#d2,#ff,#00,#00
.l46c0
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
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
	db #0f,#0d,#07,#09,#0c,#0e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #1c,#18,#10,#0a,#06,#02,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#07,#07,#06,#06,#05
	db #04,#03,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0c,#0b,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#0b,#0b,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0f,#0e,#0d,#0b,#0a,#0a,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #0f,#00,#0d,#00,#00,#0d,#00,#0d
	db #00,#0d,#00,#0d,#00,#0d,#00,#0d
	db #00,#0d,#00,#0d,#00,#0d,#00,#0d
	db #00,#0d,#00,#0d,#00,#0d,#00,#0d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#ff,#ff,#ff,#ff
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#09,#08,#07,#06,#05,#04
	db #04,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #07,#08,#09,#08,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#08,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #20,#01,#20,#01,#20,#01,#20,#01
	db #20,#01,#20,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#09,#0a,#0b,#0c,#0d,#0e
	db #0d,#0c,#0b,#0a,#08,#05,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#33,#4b,#00,#33,#4b,#00,#33
	db #4b,#00,#33,#4b,#00,#36,#4b,#00
	db #36,#4b,#00,#39,#4b,#00,#39,#4b
	db #00,#9a,#4b,#00,#9a,#4b,#00,#9a
	db #4b,#00,#fb,#4b,#00,#fb,#4b,#00
	db #5d,#4c,#00,#5d,#4c,#00,#5d,#4c
	db #00,#5d,#4c,#00,#c1,#4c,#00,#c1
	db #4c,#00,#fb,#4b,#00,#5d,#4c,#00
	db #5d,#4c,#00,#c1,#4c,#00,#58,#4d
	db #00,#58,#4d,#00,#af,#4d,#80,#40
	db #4a,#00,#16,#4e,#00,#16,#4e,#00
	db #16,#4e,#00,#16,#4e,#00,#36,#4b
	db #00,#36,#4b,#00,#36,#4b,#00,#36
	db #4b,#00,#36,#4b,#00,#36,#4b,#00
	db #1c,#4e,#00,#41,#4e,#00,#41,#4e
	db #00,#a2,#4e,#00,#a2,#4e,#00,#a2
	db #4e,#00,#a2,#4e,#00,#23,#4f,#00
	db #23,#4f,#00,#41,#4e,#00,#a2,#4e
	db #00,#a2,#4e,#00,#23,#4f,#00,#a4
	db #4f,#00,#a4,#4f,#00,#06,#50,#80
	db #91,#4a,#00,#67,#50,#00,#67,#50
	db #00,#67,#50,#00,#67,#50,#00,#e8
	db #50,#00,#e8,#50,#00,#69,#51,#00
	db #69,#51,#00,#ea,#51,#00,#ea,#51
	db #00,#ea,#51,#00,#ea,#51,#00,#ea
	db #51,#00,#ea,#51,#00,#ea,#51,#00
	db #ea,#51,#00,#ea,#51,#00,#ea,#51
	db #00,#ea,#51,#00,#ea,#51,#00,#ea
	db #51,#00,#ea,#51,#00,#ea,#51,#00
	db #6b,#52,#00,#6b,#52,#00,#ec,#52
	db #80,#e2,#4a,#fe,#40,#ff,#00,#40
	db #ff,#55,#40,#02,#5c,#d0,#02,#64
	db #40,#02,#5c,#d0,#02,#55,#40,#02
	db #5c,#d0,#02,#64,#40,#02,#5c,#d0
	db #02,#55,#40,#02,#5c,#d0,#02,#64
	db #40,#02,#5c,#d0,#02,#55,#40,#02
	db #5c,#d0,#02,#64,#40,#02,#5c,#d0
	db #02,#53,#40,#02,#5a,#d0,#02,#63
	db #40,#02,#5a,#d0,#02,#53,#40,#02
	db #5a,#d0,#02,#63,#40,#02,#5a,#d0
	db #02,#53,#40,#02,#5a,#d0,#02,#63
	db #40,#02,#5a,#d0,#02,#53,#40,#02
	db #5a,#d0,#02,#63,#40,#02,#5a,#d0
	db #02,#ff,#49,#40,#02,#50,#60,#02
	db #58,#40,#02,#50,#d0,#02,#49,#40
	db #02,#50,#60,#02,#58,#40,#02,#50
	db #d0,#02,#49,#40,#02,#50,#60,#02
	db #58,#40,#02,#50,#d0,#02,#49,#40
	db #02,#50,#60,#02,#58,#40,#02,#50
	db #d0,#02,#47,#40,#02,#4e,#60,#02
	db #57,#40,#02,#4e,#d0,#02,#47,#40
	db #02,#4e,#60,#02,#57,#40,#02,#4e
	db #d0,#02,#47,#40,#02,#4e,#60,#02
	db #57,#40,#02,#4e,#d0,#02,#47,#40
	db #02,#4e,#60,#02,#57,#40,#02,#4e
	db #d0,#02,#ff,#49,#4e,#0f,#02,#50
	db #60,#02,#58,#40,#02,#50,#d0,#02
	db #49,#40,#02,#50,#60,#02,#58,#40
	db #02,#50,#d0,#02,#49,#40,#02,#50
	db #60,#02,#58,#40,#02,#50,#d0,#02
	db #49,#40,#02,#50,#60,#02,#58,#40
	db #02,#50,#d0,#02,#47,#40,#02,#4e
	db #60,#02,#57,#40,#02,#4e,#d0,#02
	db #47,#40,#02,#4e,#60,#02,#57,#40
	db #02,#4e,#d0,#02,#47,#40,#02,#4e
	db #60,#02,#57,#40,#02,#4e,#d0,#02
	db #47,#40,#02,#4e,#60,#02,#57,#40
	db #02,#4e,#d0,#02,#ff,#49,#48,#09
	db #02,#50,#60,#02,#58,#40,#02,#50
	db #d0,#02,#49,#40,#02,#50,#61,#20
	db #58,#40,#02,#50,#d0,#02,#49,#48
	db #09,#02,#50,#60,#02,#58,#40,#02
	db #50,#d0,#02,#49,#40,#02,#50,#60
	db #02,#58,#40,#02,#50,#d0,#02,#47
	db #40,#02,#4e,#61,#20,#57,#40,#02
	db #4e,#d0,#02,#47,#40,#02,#4e,#60
	db #02,#57,#40,#02,#4e,#d0,#02,#47
	db #4a,#0f,#02,#4e,#60,#02,#57,#40
	db #02,#4e,#d0,#02,#47,#40,#02,#4e
	db #60,#02,#57,#40,#02,#4e,#d1,#20
	db #ff,#c9,#48,#09,#fe,#01,#68,#41
	db #10,#fe,#01,#53,#21,#10,#fe,#01
	db #68,#91,#10,#fe,#01,#55,#21,#10
	db #fe,#01,#5c,#91,#10,#fe,#01,#c7
	db #20,#fe,#01,#dc,#90,#fe,#01,#c9
	db #20,#fe,#01,#50,#91,#10,#fe,#01
	db #3b,#21,#10,#fe,#01,#50,#91,#10
	db #fe,#01,#3d,#21,#10,#fe,#01,#44
	db #91,#10,#fe,#01,#2f,#21,#10,#fe
	db #01,#44,#91,#10,#fe,#01,#31,#21
	db #10,#fe,#01,#38,#91,#10,#fe,#01
	db #a3,#20,#fe,#01,#b8,#90,#fe,#01
	db #a5,#20,#fe,#01,#ac,#90,#fe,#01
	db #bb,#20,#fe,#01,#ac,#90,#fe,#01
	db #bd,#20,#fe,#01,#38,#91,#10,#fe
	db #01,#47,#21,#10,#fe,#01,#38,#91
	db #10,#fe,#01,#49,#21,#10,#fe,#01
	db #44,#91,#10,#fe,#01,#53,#21,#10
	db #fe,#01,#44,#91,#10,#fe,#01,#ff
	db #3d,#30,#04,#4c,#30,#04,#3d,#30
	db #04,#4c,#30,#04,#3d,#30,#04,#4c
	db #30,#04,#3d,#20,#02,#44,#90,#02
	db #4c,#20,#02,#44,#90,#02,#3b,#20
	db #02,#42,#90,#02,#4b,#20,#02,#42
	db #90,#02,#3b,#20,#02,#42,#90,#02
	db #4b,#20,#02,#42,#90,#02,#bb,#20
	db #bf,#10,#c2,#40,#c7,#10,#cb,#40
	db #c7,#10,#c2,#40,#bf,#10,#bb,#40
	db #bf,#10,#c2,#40,#c7,#10,#cb,#40
	db #c7,#10,#c2,#40,#bf,#10,#ff,#3d
	db #30,#04,#4c,#30,#04,#3d,#30,#04
	db #4c,#30,#04,#3d,#30,#04,#4c,#30
	db #04,#3d,#2b,#23,#44,#9b,#23,#4c
	db #2b,#23,#44,#9b,#23,#3b,#2b,#23
	db #42,#9b,#23,#4b,#2b,#23,#42,#9b
	db #23,#3b,#2b,#23,#42,#9b,#23,#4b
	db #2b,#23,#42,#9b,#23,#3b,#2b,#17
	db #3f,#1b,#17,#42,#4b,#17,#47,#1b
	db #17,#4b,#4b,#17,#47,#1b,#17,#42
	db #4b,#17,#3f,#1b,#17,#3b,#4b,#17
	db #3f,#1b,#17,#42,#4b,#17,#47,#1b
	db #17,#4b,#4b,#17,#47,#1b,#17,#42
	db #4b,#17,#3f,#1b,#17,#ff,#fe,#01
	db #0d,#04,#3f,#ff,#2b,#d0,#08,#2b
	db #d0,#08,#2b,#d0,#08,#2b,#d0,#08
	db #38,#bb,#47,#38,#bb,#46,#38,#bb
	db #45,#38,#bb,#44,#38,#bb,#43,#38
	db #bb,#42,#38,#bb,#41,#38,#bb,#40
	db #ff,#38,#60,#02,#38,#a0,#02,#38
	db #b0,#02,#38,#a0,#02,#38,#60,#02
	db #38,#a0,#02,#38,#b0,#02,#38,#a0
	db #02,#38,#60,#02,#38,#a0,#02,#38
	db #b0,#02,#38,#a0,#02,#38,#60,#02
	db #38,#a0,#02,#38,#b0,#02,#38,#a0
	db #02,#38,#60,#02,#38,#a0,#02,#38
	db #b0,#02,#38,#a0,#02,#38,#60,#02
	db #38,#a0,#02,#38,#b0,#02,#38,#a0
	db #02,#38,#60,#02,#38,#a0,#02,#38
	db #b0,#02,#38,#a0,#02,#38,#60,#02
	db #38,#a0,#02,#38,#b0,#02,#38,#a0
	db #02,#ff,#b8,#a0,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#00,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#a0,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#00,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#a0,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#00,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#a0,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#00,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#a0,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#00,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#a0,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#00,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#a0,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#00,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#a0,#b8,#50,#b8,#a0
	db #b8,#60,#b8,#00,#b8,#50,#b8,#a0
	db #b8,#60,#ff,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#e8,#00,#b8,#a0,#b8
	db #a0,#b8,#a0,#ff,#bd,#4d,#06,#c0
	db #10,#c4,#40,#c9,#10,#cc,#40,#c9
	db #10,#c4,#40,#c0,#10,#bd,#40,#c0
	db #10,#c4,#40,#c9,#10,#cc,#40,#c9
	db #10,#c4,#40,#c0,#10,#bd,#40,#c0
	db #10,#c4,#40,#c9,#10,#cc,#40,#c9
	db #10,#c4,#40,#c0,#10,#3d,#40,#02
	db #44,#40,#02,#4c,#40,#02,#44,#40
	db #02,#3b,#40,#02,#42,#40,#02,#4b
	db #40,#02,#42,#40,#02,#3b,#40,#02
	db #42,#40,#02,#4b,#40,#02,#42,#40
	db #02,#3b,#40,#04,#4b,#40,#04,#3b
	db #40,#04,#4b,#40,#04,#ff,#bd,#40
	db #c0,#10,#c4,#40,#c9,#10,#cc,#40
	db #c9,#10,#c4,#40,#c0,#10,#bd,#40
	db #c0,#10,#c4,#40,#c9,#10,#cc,#40
	db #c9,#10,#c4,#40,#c0,#10,#bd,#40
	db #c0,#10,#c4,#40,#c9,#10,#cc,#40
	db #c9,#10,#c4,#40,#c0,#10,#3d,#4b
	db #23,#44,#4b,#23,#4c,#4b,#23,#44
	db #4b,#23,#3b,#4b,#23,#42,#4b,#23
	db #4b,#4b,#23,#42,#4b,#23,#3b,#4b
	db #23,#42,#4b,#23,#4b,#4b,#23,#42
	db #4b,#23,#3b,#4b,#47,#4b,#4b,#47
	db #3b,#4b,#47,#4b,#4b,#47,#ff,#d5
	db #e0,#d8,#10,#dc,#e0,#e1,#10,#e4
	db #e0,#e1,#10,#dc,#e0,#d8,#10,#d5
	db #e0,#d8,#10,#dc,#e0,#e1,#10,#e4
	db #e0,#e1,#10,#dc,#e0,#d8,#10,#d5
	db #e0,#d8,#10,#dc,#e0,#e1,#10,#e4
	db #e0,#e1,#10,#dc,#e0,#d8,#10,#d5
	db #e0,#d8,#10,#dc,#e0,#e1,#10,#e4
	db #e0,#e1,#10,#dc,#e0,#d8,#10,#d3
	db #e0,#d7,#10,#da,#e0,#df,#10,#e3
	db #e0,#df,#10,#da,#e0,#d7,#10,#d3
	db #e0,#d7,#10,#da,#e0,#df,#10,#e3
	db #e0,#df,#10,#da,#e0,#d7,#10,#d3
	db #e0,#d7,#10,#da,#e0,#df,#10,#e3
	db #e0,#df,#10,#da,#e0,#d7,#10,#d3
	db #e0,#d7,#10,#da,#e0,#df,#10,#e3
	db #e0,#df,#10,#da,#e0,#d7,#10,#ff
	db #d5,#50,#d8,#10,#dc,#50,#e1,#10
	db #e4,#50,#e1,#10,#dc,#50,#d8,#10
	db #d5,#50,#d8,#10,#dc,#50,#e1,#10
	db #e4,#50,#e1,#10,#dc,#50,#d8,#10
	db #d5,#50,#d8,#10,#dc,#50,#e1,#10
	db #e4,#50,#e1,#10,#dc,#50,#d8,#10
	db #d5,#50,#d8,#10,#dc,#50,#e1,#10
	db #e4,#50,#e1,#10,#dc,#50,#d8,#10
	db #d3,#50,#d7,#10,#da,#50,#df,#10
	db #e3,#50,#df,#10,#da,#50,#d7,#10
	db #d3,#50,#d7,#10,#da,#50,#df,#10
	db #e3,#50,#df,#10,#da,#50,#d7,#10
	db #d3,#50,#d7,#10,#da,#50,#df,#10
	db #e3,#50,#df,#10,#da,#50,#d7,#10
	db #d3,#50,#d7,#10,#da,#50,#df,#10
	db #e3,#50,#df,#10,#da,#50,#d7,#10
	db #ff,#d5,#40,#d8,#10,#dc,#40,#e1
	db #10,#e4,#40,#e1,#10,#dc,#40,#d8
	db #10,#d5,#40,#d8,#10,#dc,#40,#e1
	db #10,#e4,#40,#e1,#10,#dc,#40,#d8
	db #10,#d5,#40,#d8,#10,#dc,#40,#e1
	db #10,#e4,#40,#e1,#10,#dc,#40,#d8
	db #10,#d5,#40,#d8,#10,#dc,#40,#e1
	db #10,#e4,#40,#e1,#10,#dc,#40,#d8
	db #10,#d3,#40,#d7,#10,#da,#40,#df
	db #10,#e3,#40,#df,#10,#da,#40,#d7
	db #10,#d3,#40,#d7,#10,#da,#40,#df
	db #10,#e3,#40,#df,#10,#da,#40,#d7
	db #10,#d3,#40,#d7,#10,#da,#40,#df
	db #10,#e3,#40,#df,#10,#da,#40,#d7
	db #10,#d3,#40,#d7,#10,#da,#40,#df
	db #10,#e3,#40,#df,#10,#da,#40,#d7
	db #10,#ff,#d5,#30,#d8,#10,#dc,#30
	db #e1,#10,#e4,#30,#e1,#10,#dc,#50
	db #d8,#10,#d5,#30,#d8,#10,#dc,#30
	db #e1,#10,#e4,#30,#e1,#10,#dc,#50
	db #d8,#10,#d5,#30,#d8,#10,#dc,#30
	db #e1,#10,#e4,#30,#e1,#10,#dc,#50
	db #d8,#10,#d5,#30,#d8,#10,#dc,#30
	db #e1,#10,#e4,#30,#e1,#10,#dc,#50
	db #d8,#10,#d3,#30,#d7,#10,#da,#30
	db #df,#10,#e3,#30,#df,#10,#da,#50
	db #d7,#10,#d3,#30,#d7,#10,#da,#30
	db #df,#10,#e3,#30,#df,#10,#da,#50
	db #d7,#10,#d3,#30,#d7,#10,#da,#30
	db #df,#10,#e3,#30,#df,#10,#da,#50
	db #d7,#10,#d3,#30,#d7,#10,#da,#30
	db #df,#10,#e3,#30,#df,#10,#da,#50
	db #d7,#10,#ff,#bd,#40,#c0,#10,#c4
	db #40,#c9,#10,#cc,#40,#c9,#10,#c4
	db #40,#c0,#10,#bd,#40,#c0,#10,#c4
	db #40,#c9,#10,#cc,#40,#c9,#10,#c4
	db #40,#c0,#10,#bd,#40,#c0,#10,#c4
	db #40,#c9,#10,#cc,#40,#c9,#10,#c4
	db #40,#c0,#10,#bd,#40,#c0,#10,#c4
	db #40,#c9,#10,#cc,#40,#c9,#10,#c4
	db #40,#c0,#10,#bb,#40,#bf,#10,#c2
	db #40,#c7,#10,#cb,#40,#c7,#10,#c2
	db #40,#bf,#10,#bb,#40,#bf,#10,#c2
	db #40,#c7,#10,#cb,#40,#c7,#10,#c2
	db #40,#bf,#10,#bb,#40,#bf,#10,#c2
	db #40,#c7,#10,#cb,#40,#c7,#10,#c2
	db #40,#bf,#10,#bb,#40,#bf,#10,#c2
	db #40,#c7,#10,#cb,#40,#c7,#10,#c2
	db #40,#bf,#10,#ff,#bd,#40,#c0,#10
	db #c4,#40,#c9,#10,#cc,#40,#c9,#10
	db #c4,#40,#c0,#10,#bd,#40,#c0,#10
	db #c4,#40,#c9,#10,#cc,#40,#c9,#10
	db #c4,#40,#c0,#10,#bd,#40,#c0,#10
	db #c4,#40,#c9,#10,#cc,#40,#c9,#10
	db #c4,#40,#c0,#10,#3d,#4b,#13,#40
	db #1b,#13,#44,#4b,#13,#49,#1b,#13
	db #4c,#4b,#13,#49,#1b,#13,#44,#4b
	db #13,#40,#1b,#13,#3b,#4b,#13,#3f
	db #1b,#13,#42,#4b,#13,#47,#1b,#13
	db #4b,#4b,#13,#47,#1b,#13,#42,#4b
	db #13,#3f,#1b,#13,#3b,#4b,#13,#3f
	db #1b,#13,#42,#4b,#13,#47,#1b,#13
	db #4b,#4b,#13,#47,#1b,#13,#42,#4b
	db #13,#3f,#1b,#13,#3b,#4b,#17,#3f
	db #1b,#17,#42,#4b,#17,#47,#1b,#17
	db #4b,#4b,#17,#47,#1b,#17,#42,#4b
	db #17,#3f,#1b,#17,#3b,#4b,#17,#3f
	db #1b,#17,#42,#4b,#17,#47,#1b,#17
	db #4b,#4b,#17,#47,#1b,#17,#42,#4b
	db #17,#3f,#1b,#17,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #f0,#e2,#f0,#e0,#00,#e8,#a5,#86
	db #0f,#0e,#4c,#66,#cc,#66,#00,#00
	db #f0,#4c,#f0,#a6,#00,#ca,#5a,#0c
	db #0c,#8e,#5f,#4e,#ff,#cc,#00,#00
	db #f8,#e2,#0f,#2c,#00,#8e,#6a,#00
	db #2e,#8e,#af,#ae,#77,#cc,#00,#00
	db #e2,#00,#f1,#00,#f2,#88,#59,#c4
	db #0c,#06,#af,#ae,#ff,#ee,#00,#00
	db #8f,#0e,#3c,#c2,#48,#00,#3c,#c0
	db #48,#00,#0f,#2c,#9e,#e0,#00,#00
	db #8f,#0e,#3c,#c2,#48,#00,#4b,#0c
	db #78,#c0,#48,#00,#0c,#00,#00,#00
	db #8f,#0e,#78,#86,#c0,#00,#c1,#e0
	db #c0,#e8,#78,#c2,#8f,#2e,#00,#00
	db #0c,#06,#48,#24,#a6,#ca,#78,#e0
	db #a6,#ac,#48,#42,#0c,#06,#00,#00
	db #0f,#0e,#78,#c2,#12,#08,#12,#08
	db #12,#08,#78,#86,#0f,#0e,#00,#00
	db #0f,#2e,#78,#c2,#00,#42,#00,#42
	db #0c,#42,#78,#c2,#8f,#2e,#00,#00
	db #0c,#46,#84,#ea,#95,#c4,#f0,#88
	db #85,#c4,#84,#6a,#0c,#06,#00,#00
	db #0c,#00,#48,#00,#48,#00,#48,#00
	db #48,#00,#0f,#2e,#7f,#ee,#00,#00
	db #2e,#8e,#79,#c2,#7a,#ca,#48,#42
	db #0c,#42,#0c,#06,#4c,#46,#00,#00
	db #2e,#06,#79,#42,#5a,#ca,#49,#c2
	db #48,#4a,#48,#42,#0c,#06,#00,#00
	db #ff,#ee,#87,#2e,#84,#26,#84,#26
	db #84,#26,#87,#2e,#f0,#e2,#00,#00
	db #ff
;
.music_info
	db "Greek Meeting 2 - Part 7 (1995)(Chaos)(Catloc)",0
	db "ST-128 Module",0

	read "music_end.asm"