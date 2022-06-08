; Music of Dracula Fanz Issue 5 - Turn Disk C (1995)(Dracula Fanz Team)(Beta Soft Cologne)(ST-128 Module)
; Ripped by Megachur the 28/05/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DRFI5TDC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2022
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
	db #00,#00,#a0,#4a,#00,#4b,#60,#4b
.l4640
	db #e0,#46,#20,#47,#40,#47,#00,#00
	db #60,#47,#a0,#47,#40,#47,#18,#08
	db #c0,#47,#00,#48,#20,#48,#80,#00
	db #40,#48,#80,#48,#a0,#48,#c0,#00
	db #e0,#46,#c0,#48,#e0,#48,#00,#00
	db #00,#49,#40,#49,#60,#49,#c0,#1f
	db #80,#49,#a0,#47,#40,#47,#18,#08
	db #a4,#ff,#d2,#4a,#b2,#49,#40,#48
	db #e0,#46,#c0,#49,#e0,#49,#9a,#06
	db #02,#02,#f2,#48,#12,#4b,#40,#48
	db #d2,#ff,#a4,#ff,#a4,#ff,#d2,#ff
	db #a4,#ff,#a4,#ff,#a4,#ff,#d2,#ff
	db #a4,#ff,#a4,#ff,#a4,#ff,#d2,#ff
	db #a4,#ff,#a4,#ff,#a4,#ff,#d2,#ff
	db #a4,#ff,#62,#01,#b2,#01,#30,#02
	db #52,#02,#a2,#02,#f2,#02,#00,#00
.l46c0
	db #00,#4a,#20,#4a,#40,#4a,#60,#4a
	db #80,#4a,#d2,#ff,#d2,#ff,#d2,#ff
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
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
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
	db #0f,#0f,#0e,#0d,#0c,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #60,#01,#40,#01,#00,#00,#60,#01
	db #40,#01,#00,#00,#60,#01,#40,#01
	db #00,#00,#60,#01,#40,#01,#00,#00
	db #60,#01,#40,#01,#00,#00,#60,#01
	db #40,#01,#00,#00,#60,#01,#40,#01
	db #00,#00,#60,#01,#40,#01,#00,#00
	db #60,#01,#40,#01,#00,#00,#60,#01
	db #0f,#0f,#0e,#0f,#0f,#0e,#0f,#0f
	db #0e,#0f,#0f,#0e,#0f,#0f,#0e,#0f
	db #0f,#0e,#0f,#0f,#0e,#0f,#0f,#0e
	db #0f,#0f,#0e,#0f,#0f,#0e,#0f,#0f
	db #06,#00,#00,#06,#00,#00,#06,#00
	db #00,#06,#00,#00,#06,#00,#00,#06
	db #00,#00,#06,#00,#00,#06,#00,#00
	db #06,#00,#00,#06,#00,#00,#06,#00
	db #08,#00,#07,#00,#06,#00,#05,#00
	db #04,#00,#03,#00,#02,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #fe,#03,#07,#fe,#03,#07,#fe,#03
	db #07,#fe,#03,#07,#fe,#03,#07,#fe
	db #03,#07,#fe,#03,#07,#fe,#03,#07
	db #fe,#03,#07,#fe,#03,#07,#fe,#03
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#03,#0c,#00,#03,#0c,#00,#03
	db #0c,#00,#03,#0c,#00,#03,#0c,#00
	db #03,#0c,#00,#03,#0c,#00,#03,#0c
	db #00,#03,#0c,#00,#03,#0c,#00,#03
	db #00,#42,#4d,#00,#c0,#4b,#00,#81
	db #4c,#00,#48,#4d,#00,#09,#4e,#00
	db #c7,#4e,#00,#82,#4f,#00,#3d,#50
	db #00,#3d,#50,#00,#55,#50,#00,#55
	db #50,#00,#55,#50,#00,#55,#50,#00
	db #12,#51,#00,#12,#51,#00,#12,#51
	db #00,#12,#51,#00,#ca,#51,#00,#ca
	db #51,#00,#ca,#51,#00,#ca,#51,#00
	db #ca,#51,#00,#ca,#51,#00,#ca,#51
	db #00,#ca,#51,#00,#ca,#51,#00,#ca
	db #51,#00,#ca,#51,#00,#ca,#51,#00
	db #c7,#4e,#00,#c7,#4e,#80,#a0,#4a
	db #00,#2f,#52,#00,#2c,#52,#00,#2c
	db #52,#00,#32,#52,#00,#90,#52,#00
	db #32,#52,#00,#c3,#52,#00,#f7,#52
	db #00,#f7,#52,#00,#5b,#53,#00,#d2
	db #53,#00,#fa,#53,#00,#fa,#53,#00
	db #2a,#54,#00,#47,#54,#00,#72,#54
	db #00,#8e,#54,#00,#9f,#54,#00,#2f
	db #52,#00,#60,#55,#00,#e1,#55,#00
	db #60,#55,#00,#e1,#55,#00,#62,#56
	db #00,#62,#56,#00,#62,#56,#00,#e3
	db #56,#00,#9f,#54,#00,#2f,#52,#00
	db #79,#53,#00,#79,#53,#80,#00,#4b
	db #00,#61,#57,#00,#47,#57,#00,#50
	db #57,#00,#47,#57,#00,#50,#57,#00
	db #66,#57,#00,#09,#58,#00,#ad,#58
	db #00,#ad,#58,#00,#08,#59,#00,#08
	db #59,#00,#08,#59,#00,#08,#59,#00
	db #31,#5a,#00,#31,#5a,#00,#31,#5a
	db #00,#31,#5a,#00,#d3,#5a,#00,#d3
	db #5a,#00,#d3,#5a,#00,#d3,#5a,#00
	db #d3,#5a,#00,#d3,#5a,#00,#d3,#5a
	db #00,#d3,#5a,#00,#d3,#5a,#00,#d3
	db #5a,#00,#d3,#5a,#00,#d3,#5a,#00
	db #aa,#59,#00,#aa,#59,#80,#60,#4b
	db #44,#0b,#10,#47,#0b,#15,#44,#0b
	db #15,#47,#0b,#10,#44,#0b,#15,#47
	db #0b,#15,#4c,#0b,#10,#47,#0b,#15
	db #4c,#0b,#15,#44,#0b,#10,#47,#0b
	db #15,#44,#0b,#15,#47,#0b,#10,#44
	db #0b,#15,#47,#0b,#15,#4c,#0b,#10
	db #44,#0b,#10,#47,#0b,#15,#44,#0b
	db #15,#47,#0b,#10,#44,#0b,#15,#47
	db #0b,#15,#4b,#0b,#10,#47,#0b,#15
	db #4b,#0b,#15,#44,#0b,#10,#47,#0b
	db #15,#44,#0b,#15,#47,#0b,#10,#44
	db #0b,#15,#47,#0b,#15,#4b,#0b,#10
	db #42,#0b,#10,#47,#0b,#15,#42,#0b
	db #15,#47,#0b,#10,#42,#0b,#15,#47
	db #0b,#15,#4b,#0b,#10,#47,#0b,#15
	db #4b,#0b,#15,#42,#0b,#10,#47,#0b
	db #15,#42,#0b,#15,#47,#0b,#10,#42
	db #0b,#15,#47,#0b,#15,#4b,#0b,#10
	db #42,#0b,#10,#46,#0b,#15,#42,#0b
	db #15,#46,#0b,#10,#42,#0b,#15,#46
	db #0b,#15,#49,#0b,#10,#46,#0b,#15
	db #49,#0b,#15,#42,#0b,#10,#46,#0b
	db #15,#42,#0b,#15,#46,#0b,#10,#42
	db #0b,#15,#46,#0b,#15,#49,#0b,#10
	db #ff,#40,#0b,#10,#44,#0b,#15,#40
	db #0b,#15,#44,#0b,#10,#40,#0b,#15
	db #44,#0b,#15,#49,#0b,#10,#44,#0b
	db #15,#49,#0b,#15,#40,#0b,#10,#44
	db #0b,#15,#40,#0b,#15,#44,#0b,#10
	db #40,#0b,#15,#44,#0b,#15,#49,#0b
	db #10,#40,#0b,#10,#44,#0b,#15,#40
	db #0b,#15,#44,#0b,#10,#40,#0b,#15
	db #44,#0b,#15,#47,#0b,#10,#44,#0b
	db #15,#42,#0b,#10,#46,#0b,#15,#42
	db #0b,#15,#46,#0b,#10,#42,#0b,#15
	db #46,#0b,#15,#49,#0b,#10,#46,#0b
	db #15,#43,#0b,#10,#46,#0b,#15,#43
	db #0b,#15,#46,#0b,#10,#43,#0b,#15
	db #46,#0b,#15,#4b,#0b,#10,#46,#0b
	db #15,#4b,#0b,#15,#43,#0b,#10,#46
	db #0b,#15,#43,#0b,#15,#46,#0b,#10
	db #43,#0b,#15,#46,#0b,#15,#4b,#0b
	db #10,#43,#0b,#10,#46,#0b,#15,#43
	db #0b,#15,#46,#0b,#10,#43,#0b,#15
	db #46,#0b,#15,#4b,#0b,#10,#43,#0b
	db #15,#46,#0b,#10,#4b,#0b,#15,#46
	db #0b,#15,#4b,#0b,#10,#46,#0b,#15
	db #4b,#0b,#15,#4f,#0b,#10,#4b,#0b
	db #15,#ff,#fe,#01,#0d,#06,#3f,#ff
	db #74,#2b,#10,#47,#0b,#15,#74,#2b
	db #10,#47,#0b,#10,#44,#0b,#15,#47
	db #0b,#15,#4c,#0b,#10,#47,#0b,#15
	db #4c,#0b,#15,#44,#0b,#10,#47,#0b
	db #15,#44,#0b,#15,#47,#0b,#10,#44
	db #0b,#15,#47,#0b,#15,#74,#2b,#10
	db #74,#2b,#10,#47,#0b,#15,#44,#0b
	db #15,#74,#2b,#10,#44,#0b,#15,#47
	db #0b,#15,#74,#2b,#10,#47,#0b,#15
	db #74,#3b,#10,#44,#0b,#10,#47,#0b
	db #15,#44,#0b,#15,#47,#0b,#10,#44
	db #0b,#15,#47,#0b,#15,#4b,#0b,#10
	db #74,#2b,#10,#47,#0b,#15,#42,#0b
	db #15,#47,#0b,#10,#42,#0b,#15,#47
	db #0b,#15,#4b,#0b,#10,#47,#0b,#15
	db #4b,#0b,#15,#42,#0b,#10,#47,#0b
	db #15,#42,#0b,#15,#47,#0b,#10,#42
	db #0b,#15,#47,#0b,#15,#74,#2b,#10
	db #74,#2b,#10,#46,#0b,#15,#42,#0b
	db #15,#74,#2b,#10,#42,#0b,#15,#46
	db #0b,#15,#74,#2b,#10,#46,#0b,#15
	db #74,#3b,#10,#42,#0b,#10,#46,#0b
	db #15,#42,#0b,#15,#74,#2b,#10,#42
	db #0b,#15,#46,#0b,#15,#49,#0b,#10
	db #ff,#74,#2b,#10,#44,#0b,#15,#74
	db #2b,#10,#44,#0b,#10,#40,#0b,#15
	db #44,#0b,#15,#49,#0b,#10,#44,#0b
	db #15,#49,#0b,#15,#40,#0b,#10,#44
	db #0b,#15,#40,#0b,#15,#44,#0b,#10
	db #40,#0b,#15,#44,#0b,#15,#74,#2b
	db #10,#74,#2b,#10,#44,#0b,#15,#40
	db #0b,#15,#74,#2b,#10,#40,#0b,#15
	db #44,#0b,#15,#74,#2b,#10,#44,#0b
	db #15,#74,#3b,#10,#46,#0b,#15,#42
	db #0b,#15,#74,#2b,#10,#42,#0b,#15
	db #46,#0b,#15,#74,#2b,#10,#46,#0b
	db #15,#74,#2b,#10,#46,#0b,#15,#43
	db #0b,#15,#46,#0b,#10,#43,#0b,#15
	db #46,#0b,#15,#4b,#0b,#10,#46,#0b
	db #15,#74,#2b,#10,#43,#0b,#10,#46
	db #0b,#15,#74,#2b,#10,#46,#0b,#10
	db #43,#0b,#15,#74,#2b,#10,#4b,#0b
	db #10,#74,#2b,#10,#46,#0b,#15,#43
	db #0b,#15,#46,#0b,#10,#43,#0b,#15
	db #46,#0b,#15,#4b,#0b,#10,#43,#0b
	db #15,#74,#2b,#10,#4b,#0b,#15,#46
	db #0b,#15,#74,#2b,#10,#74,#3b,#10
	db #4b,#0b,#15,#68,#5b,#20,#ff,#74
	db #2b,#10,#47,#0b,#12,#44,#0b,#12
	db #47,#0b,#10,#74,#3b,#10,#47,#0b
	db #12,#74,#2b,#10,#47,#0b,#12,#4c
	db #0b,#12,#44,#0b,#10,#74,#2b,#10
	db #44,#0b,#12,#74,#3b,#10,#44,#0b
	db #12,#74,#2b,#10,#4c,#0b,#10,#74
	db #2b,#10,#47,#0b,#12,#44,#0b,#12
	db #47,#0b,#10,#74,#3b,#10,#47,#0b
	db #12,#4b,#0b,#10,#47,#0b,#12,#74
	db #2b,#10,#44,#0b,#10,#47,#0b,#12
	db #44,#0b,#12,#74,#3b,#10,#44,#0b
	db #12,#74,#2b,#10,#4b,#0b,#10,#74
	db #2b,#10,#47,#0b,#12,#42,#0b,#12
	db #47,#0b,#10,#74,#3b,#10,#47,#0b
	db #12,#74,#2b,#10,#47,#0b,#12,#4b
	db #0b,#12,#42,#0b,#10,#74,#2b,#10
	db #42,#0b,#12,#74,#3b,#10,#42,#0b
	db #12,#74,#2b,#10,#4b,#0b,#10,#74
	db #2b,#10,#46,#0b,#12,#42,#0b,#12
	db #46,#0b,#10,#74,#3b,#10,#46,#0b
	db #12,#74,#2b,#10,#46,#0b,#12,#49
	db #0b,#12,#42,#0b,#10,#74,#2b,#10
	db #42,#0b,#12,#74,#3b,#10,#74,#5b
	db #30,#ff,#74,#2b,#10,#44,#0b,#12
	db #40,#0b,#12,#44,#0b,#10,#74,#3b
	db #10,#44,#0b,#12,#74,#2b,#10,#44
	db #0b,#12,#49,#0b,#12,#40,#0b,#10
	db #74,#2b,#10,#40,#0b,#12,#74,#3b
	db #10,#40,#0b,#12,#74,#2b,#10,#49
	db #0b,#10,#74,#2b,#10,#44,#0b,#12
	db #40,#0b,#12,#44,#0b,#10,#74,#3b
	db #10,#44,#0b,#12,#47,#0b,#10,#44
	db #0b,#12,#74,#2b,#10,#46,#0b,#12
	db #42,#0b,#12,#46,#0b,#10,#74,#3b
	db #10,#46,#0b,#12,#74,#2b,#10,#46
	db #0b,#12,#74,#2b,#10,#46,#0b,#12
	db #43,#0b,#12,#46,#0b,#10,#74,#3b
	db #10,#46,#0b,#12,#74,#2b,#10,#46
	db #0b,#12,#4b,#0b,#12,#43,#0b,#10
	db #74,#2b,#10,#43,#0b,#12,#74,#3b
	db #10,#43,#0b,#12,#74,#2b,#10,#4b
	db #0b,#10,#74,#2b,#10,#46,#0b,#12
	db #43,#0b,#12,#46,#0b,#10,#74,#3b
	db #10,#46,#0b,#12,#4b,#0b,#10,#43
	db #0b,#12,#74,#2b,#10,#4b,#0b,#12
	db #46,#0b,#12,#74,#2b,#10,#74,#3b
	db #10,#74,#5b,#30,#ff,#fe,#2c,#74
	db #20,#02,#74,#20,#02,#74,#30,#02
	db #74,#30,#02,#74,#30,#02,#74,#30
	db #02,#74,#50,#08,#ff,#74,#2b,#10
	db #47,#0b,#15,#44,#0b,#15,#47,#0b
	db #10,#74,#3b,#10,#47,#0b,#15,#74
	db #2b,#10,#47,#0b,#15,#4c,#0b,#15
	db #44,#0b,#10,#74,#2b,#10,#44,#0b
	db #15,#74,#3b,#10,#44,#0b,#15,#74
	db #2b,#10,#4c,#0b,#10,#74,#2b,#10
	db #47,#0b,#15,#44,#0b,#15,#47,#0b
	db #10,#74,#3b,#10,#47,#0b,#15,#4b
	db #0b,#10,#44,#0b,#15,#74,#2b,#10
	db #46,#0b,#15,#42,#0b,#15,#46,#0b
	db #10,#74,#3b,#10,#46,#0b,#15,#74
	db #2b,#10,#46,#0b,#15,#74,#2b,#10
	db #47,#0b,#15,#44,#0b,#15,#47,#0b
	db #10,#74,#3b,#10,#47,#0b,#15,#74
	db #2b,#10,#44,#0b,#15,#47,#0b,#15
	db #4c,#0b,#10,#74,#2b,#10,#44,#0b
	db #15,#74,#3b,#10,#47,#0b,#15,#74
	db #2b,#10,#4c,#0b,#10,#74,#2b,#10
	db #47,#0b,#15,#44,#0b,#15,#47,#0b
	db #10,#74,#3b,#10,#47,#0b,#15,#4b
	db #0b,#10,#44,#0b,#15,#74,#2b,#10
	db #4b,#0b,#15,#47,#0b,#15,#4b,#0b
	db #10,#74,#2b,#10,#f4,#30,#74,#50
	db #02,#ff,#74,#2b,#10,#44,#0b,#12
	db #40,#0b,#12,#44,#0b,#10,#74,#3b
	db #10,#44,#0b,#12,#74,#2b,#10,#44
	db #0b,#12,#49,#0b,#12,#40,#0b,#10
	db #74,#2b,#10,#40,#0b,#12,#74,#3b
	db #10,#40,#0b,#12,#74,#2b,#10,#49
	db #0b,#10,#74,#2b,#10,#44,#0b,#12
	db #40,#0b,#12,#44,#0b,#10,#74,#3b
	db #10,#44,#0b,#12,#47,#0b,#10,#44
	db #0b,#12,#74,#2b,#10,#40,#0b,#12
	db #44,#0b,#12,#40,#0b,#10,#74,#3b
	db #10,#40,#0b,#12,#74,#2b,#10,#40
	db #0b,#12,#74,#2b,#10,#47,#0b,#12
	db #44,#0b,#12,#47,#0b,#10,#74,#3b
	db #10,#47,#0b,#12,#74,#2b,#10,#47
	db #0b,#12,#4c,#0b,#12,#44,#0b,#10
	db #74,#2b,#10,#44,#0b,#12,#74,#3b
	db #10,#44,#0b,#12,#74,#2b,#10,#4c
	db #0b,#10,#74,#2b,#10,#47,#0b,#12
	db #44,#0b,#12,#47,#0b,#10,#74,#3b
	db #10,#47,#0b,#12,#74,#2b,#10,#47
	db #0b,#12,#4c,#0b,#12,#44,#0b,#10
	db #74,#2b,#10,#44,#0b,#12,#74,#5b
	db #40,#ff,#74,#2d,#03,#02,#74,#80
	db #02,#f4,#80,#f4,#80,#f4,#80,#f4
	db #80,#74,#30,#02,#74,#80,#02,#74
	db #80,#02,#74,#20,#02,#74,#80,#02
	db #74,#80,#02,#74,#20,#02,#74,#80
	db #02,#74,#30,#02,#74,#80,#02,#74
	db #20,#02,#74,#80,#02,#74,#20,#02
	db #74,#80,#02,#f4,#80,#f4,#80,#74
	db #80,#02,#74,#30,#02,#74,#80,#02
	db #74,#80,#02,#74,#20,#02,#74,#80
	db #02,#74,#80,#02,#74,#20,#02,#74
	db #80,#02,#74,#30,#02,#74,#20,#02
	db #74,#50,#04,#ff,#00,#40,#ff,#fe
	db #40,#ff,#ce,#13,#23,#50,#10,#0f
	db #50,#1b,#11,#50,#1b,#11,#50,#1b
	db #12,#50,#1b,#12,#50,#1b,#13,#50
	db #1b,#13,#50,#1b,#14,#50,#1b,#14
	db #50,#1b,#15,#50,#1b,#15,#50,#1b
	db #30,#52,#10,#03,#d2,#13,#21,#53
	db #10,#0d,#53,#1b,#11,#53,#1b,#11
	db #53,#1b,#12,#53,#1b,#12,#53,#1b
	db #13,#53,#1b,#13,#53,#1b,#14,#53
	db #1b,#14,#53,#1b,#15,#53,#1b,#15
	db #53,#1b,#16,#53,#1b,#17,#53,#1b
	db #30,#55,#10,#02,#02,#22,#01,#ff
	db #53,#10,#10,#53,#1b,#11,#53,#1b
	db #12,#53,#1b,#13,#53,#1b,#14,#53
	db #1b,#15,#53,#1b,#16,#53,#1b,#17
	db #0b,#10,#d5,#13,#22,#d7,#10,#55
	db #10,#02,#53,#10,#02,#55,#10,#02
	db #55,#13,#34,#10,#d7,#13,#12,#5b
	db #10,#0f,#ff,#53,#1d,#06,#10,#53
	db #1b,#11,#53,#1b,#12,#53,#1b,#13
	db #53,#1b,#14,#53,#1b,#15,#53,#1b
	db #16,#53,#1b,#17,#0b,#10,#d5,#13
	db #22,#d7,#10,#55,#10,#02,#53,#10
	db #02,#55,#10,#02,#55,#13,#34,#10
	db #d7,#13,#12,#5b,#10,#0f,#ff,#44
	db #0d,#03,#02,#47,#0b,#25,#44,#0b
	db #25,#47,#0b,#20,#44,#0b,#25,#47
	db #0b,#25,#4c,#0b,#20,#47,#0b,#25
	db #4c,#0b,#25,#44,#0b,#20,#47,#0b
	db #25,#44,#0b,#25,#47,#0b,#20,#44
	db #0b,#25,#47,#0b,#25,#4c,#0b,#20
	db #44,#0b,#20,#47,#0b,#25,#44,#0b
	db #25,#47,#0b,#20,#44,#0b,#25,#47
	db #0b,#25,#4b,#0b,#20,#47,#0b,#25
	db #4b,#0b,#25,#44,#0b,#20,#47,#0b
	db #25,#44,#0b,#25,#47,#0b,#20,#44
	db #0b,#25,#47,#0b,#25,#4b,#0b,#10
	db #fe,#01,#ff,#c2,#1d,#06,#03,#11
	db #01,#03,#11,#01,#03,#11,#01,#44
	db #10,#1c,#ce,#10,#03,#21,#01,#03
	db #21,#01,#03,#21,#01,#50,#10,#1c
	db #ff,#50,#6d,#06,#10,#50,#1b,#11
	db #50,#1b,#11,#50,#1b,#12,#50,#1b
	db #12,#50,#1b,#13,#50,#1b,#13,#50
	db #1b,#14,#50,#1b,#14,#50,#1b,#15
	db #50,#1b,#15,#50,#1b,#30,#52,#10
	db #03,#d2,#13,#21,#53,#10,#0d,#53
	db #1b,#11,#53,#1b,#11,#53,#1b,#12
	db #53,#1b,#12,#53,#1b,#13,#53,#1b
	db #13,#53,#1b,#14,#53,#1b,#14,#53
	db #1b,#15,#53,#1b,#15,#53,#1b,#16
	db #53,#1b,#17,#53,#1b,#30,#55,#10
	db #03,#ff,#50,#60,#0c,#55,#10,#02
	db #55,#60,#04,#53,#10,#06,#52,#10
	db #02,#53,#10,#02,#52,#10,#02,#50
	db #10,#12,#4e,#10,#08,#4d,#10,#02
	db #4b,#10,#02,#49,#10,#02,#4b,#10
	db #02,#ff,#00,#02,#50,#60,#03,#50
	db #60,#03,#50,#60,#04,#55,#10,#02
	db #55,#60,#04,#53,#10,#06,#52,#10
	db #02,#53,#10,#02,#52,#10,#02,#4e
	db #10,#0e,#50,#10,#02,#4b,#10,#0a
	db #4d,#10,#02,#4b,#10,#02,#49,#10
	db #04,#ff,#4c,#60,#18,#4b,#10,#04
	db #42,#10,#04,#44,#10,#18,#c2,#10
	db #c4,#10,#c7,#10,#c4,#10,#c7,#10
	db #c9,#10,#cb,#10,#ce,#10,#ff,#50
	db #60,#10,#52,#10,#06,#53,#10,#06
	db #55,#10,#04,#57,#10,#0e,#44,#10
	db #02,#5c,#10,#02,#44,#10,#02,#5a
	db #10,#02,#44,#10,#02,#5f,#10,#02
	db #5e,#10,#02,#5c,#10,#02,#5a,#10
	db #02,#ff,#50,#60,#10,#4c,#10,#06
	db #47,#10,#06,#46,#10,#04,#47,#10
	db #02,#46,#10,#04,#42,#10,#08,#44
	db #60,#02,#3f,#10,#10,#ff,#50,#6d
	db #06,#10,#57,#10,#06,#5a,#10,#06
	db #5f,#10,#04,#5c,#10,#20,#ff,#e8
	db #12,#1f,#02,#1f,#01,#02,#1f,#01
	db #02,#1f,#01,#02,#1f,#01,#02,#1f
	db #01,#02,#1f,#01,#02,#1f,#01,#02
	db #1f,#01,#02,#1f,#01,#02,#1f,#01
	db #02,#1f,#01,#02,#1f,#01,#02,#1f
	db #01,#02,#1f,#01,#02,#1f,#01,#02
	db #1f,#01,#02,#1f,#01,#02,#1f,#01
	db #02,#1f,#01,#02,#1f,#01,#02,#1f
	db #01,#02,#1f,#01,#02,#1f,#01,#02
	db #1f,#01,#02,#1f,#01,#02,#1f,#01
	db #02,#1f,#01,#02,#1f,#01,#02,#1f
	db #01,#02,#1f,#01,#02,#1f,#01,#02
	db #1f,#01,#02,#1f,#01,#02,#1f,#01
	db #02,#1f,#01,#02,#1f,#01,#02,#1f
	db #01,#02,#1f,#01,#02,#1f,#01,#02
	db #1f,#01,#02,#1f,#01,#02,#1f,#01
	db #02,#1f,#01,#02,#1f,#01,#02,#1f
	db #01,#02,#1f,#01,#02,#1f,#01,#02
	db #1f,#01,#02,#1f,#01,#02,#1f,#01
	db #02,#1f,#01,#02,#1f,#01,#02,#1f
	db #01,#02,#1f,#01,#02,#1f,#01,#02
	db #1f,#01,#02,#1f,#01,#02,#1f,#01
	db #02,#1f,#01,#02,#1f,#01,#02,#1f
	db #01,#02,#1f,#01,#02,#1f,#01,#ff
	db #dc,#00,#da,#00,#d7,#00,#da,#00
	db #dc,#00,#da,#00,#d7,#00,#da,#00
	db #dc,#00,#da,#00,#d7,#00,#da,#00
	db #dc,#00,#da,#00,#d7,#00,#da,#00
	db #dc,#00,#da,#00,#d7,#00,#da,#00
	db #dc,#00,#da,#00,#d7,#00,#da,#00
	db #dc,#00,#da,#00,#dc,#00,#df,#00
	db #e1,#00,#df,#00,#e1,#00,#e3,#00
	db #e1,#00,#df,#00,#dc,#00,#df,#00
	db #dc,#00,#da,#00,#d7,#00,#da,#00
	db #d7,#00,#d5,#00,#d3,#00,#d5,#00
	db #d7,#00,#d5,#00,#d7,#00,#d5,#00
	db #d7,#00,#da,#00,#dc,#00,#da,#00
	db #dc,#00,#df,#00,#e1,#00,#df,#00
	db #e1,#00,#e3,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e8,#00
	db #ff,#df,#00,#dc,#00,#da,#00,#dc
	db #00,#df,#00,#dc,#00,#da,#00,#dc
	db #00,#df,#00,#dc,#00,#da,#00,#dc
	db #00,#df,#00,#dc,#00,#da,#00,#dc
	db #00,#df,#00,#dc,#00,#da,#00,#dc
	db #00,#df,#00,#dc,#00,#da,#00,#dc
	db #00,#df,#00,#dc,#00,#df,#00,#e1
	db #00,#e3,#00,#df,#00,#e3,#00,#e6
	db #00,#e8,#00,#e6,#00,#e3,#00,#e6
	db #00,#e8,#00,#e6,#00,#e3,#00,#e6
	db #00,#e8,#00,#e6,#00,#e3,#00,#e6
	db #00,#e8,#00,#e6,#00,#e3,#00,#e6
	db #00,#e8,#00,#e6,#00,#e3,#00,#e6
	db #00,#e8,#00,#e6,#00,#e3,#00,#e6
	db #00,#e8,#00,#e6,#00,#e3,#00,#e6
	db #00,#e8,#00,#e6,#00,#e8,#00,#eb
	db #00,#ff,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#e8,#00,#e6,#00,#e3,#00
	db #e6,#00,#ff,#e8,#00,#e6,#00,#e3
	db #00,#e6,#00,#e8,#00,#e6,#00,#e3
	db #00,#e6,#00,#e8,#00,#e6,#00,#e3
	db #00,#e6,#00,#e8,#00,#e6,#00,#e3
	db #00,#e6,#00,#e8,#00,#e6,#00,#e3
	db #00,#e6,#00,#e8,#00,#e6,#00,#e3
	db #00,#e6,#00,#e8,#00,#e6,#00,#e3
	db #00,#e6,#00,#e8,#00,#e6,#00,#e3
	db #00,#e6,#00,#e8,#00,#e6,#00,#e3
	db #00,#e6,#00,#e8,#00,#e6,#00,#e3
	db #00,#e6,#00,#e8,#00,#e6,#00,#e3
	db #00,#e6,#00,#e8,#00,#e6,#00,#e3
	db #00,#e6,#00,#69,#50,#10,#ff,#20
	db #08,#30,#20,#1e,#08,#36,#20,#ff
	db #1c,#08,#3c,#18,#1e,#08,#36,#08
	db #1f,#08,#32,#10,#1b,#08,#3f,#10
	db #ff,#20,#08,#30,#40,#ff,#a0,#48
	db #30,#a0,#40,#ac,#40,#a0,#40,#a0
	db #40,#44,#0f,#10,#ac,#48,#30,#a0
	db #40,#44,#0f,#10,#ac,#48,#30,#a0
	db #40,#44,#0f,#10,#ac,#48,#30,#a0
	db #40,#44,#0f,#10,#a0,#48,#30,#a0
	db #40,#ac,#40,#a0,#40,#a0,#40,#ac
	db #40,#44,#0f,#11,#a0,#48,#30,#ac
	db #40,#44,#0f,#11,#a0,#48,#30,#ac
	db #40,#44,#0f,#11,#a0,#48,#30,#ac
	db #40,#44,#0f,#11,#a0,#48,#30,#9e
	db #48,#36,#aa,#40,#9e,#40,#9e,#40
	db #aa,#40,#44,#0f,#12,#9e,#48,#36
	db #aa,#40,#44,#0f,#12,#9e,#48,#36
	db #aa,#40,#44,#0f,#12,#aa,#48,#36
	db #9e,#40,#44,#0f,#12,#9e,#48,#36
	db #9e,#40,#aa,#40,#9e,#40,#9e,#40
	db #aa,#40,#42,#0f,#13,#9e,#48,#36
	db #aa,#40,#42,#0f,#13,#9e,#48,#36
	db #aa,#40,#42,#0f,#13,#aa,#48,#36
	db #9e,#40,#42,#0f,#13,#9e,#48,#36
	db #ff,#9c,#48,#3c,#9c,#40,#a8,#40
	db #9c,#40,#9c,#40,#40,#0f,#13,#9c
	db #48,#3c,#a8,#40,#40,#0f,#13,#9c
	db #48,#3c,#a8,#40,#40,#0f,#13,#9c
	db #48,#3c,#a8,#40,#40,#0f,#13,#a8
	db #48,#3c,#9c,#40,#9c,#40,#a8,#40
	db #9c,#40,#9c,#40,#40,#0f,#13,#9c
	db #48,#3c,#9c,#40,#42,#0f,#13,#9e
	db #48,#36,#aa,#40,#42,#0f,#13,#9e
	db #48,#36,#aa,#40,#42,#0f,#13,#aa
	db #48,#36,#9f,#48,#32,#9f,#40,#ab
	db #40,#9f,#40,#9f,#40,#43,#0f,#10
	db #9f,#48,#32,#ab,#40,#43,#0f,#10
	db #9f,#48,#32,#ab,#40,#43,#0f,#10
	db #9f,#48,#32,#ab,#40,#43,#0f,#10
	db #ab,#48,#32,#9b,#48,#3f,#9b,#40
	db #a7,#40,#9b,#40,#9b,#40,#43,#0f
	db #14,#9b,#48,#3f,#a7,#40,#43,#0f
	db #14,#9b,#48,#3f,#a7,#40,#43,#0f
	db #14,#9b,#48,#3f,#a7,#40,#43,#0f
	db #14,#a7,#48,#3f,#ff,#20,#08,#30
	db #02,#20,#00,#02,#2c,#00,#02,#20
	db #00,#02,#20,#00,#02,#2c,#00,#02
	db #20,#00,#02,#2c,#00,#02,#20,#00
	db #02,#20,#00,#02,#2c,#00,#02,#20
	db #00,#02,#20,#00,#02,#2c,#00,#02
	db #20,#00,#02,#2c,#00,#02,#20,#00
	db #02,#20,#00,#02,#2c,#00,#02,#20
	db #00,#02,#20,#00,#02,#2c,#00,#02
	db #20,#00,#02,#2c,#00,#02,#20,#00
	db #02,#20,#00,#02,#2c,#00,#02,#20
	db #00,#02,#20,#00,#02,#fe,#06,#ff
	db #a0,#48,#30,#a0,#40,#ac,#40,#a0
	db #40,#a0,#40,#44,#0f,#10,#a0,#48
	db #30,#ac,#40,#44,#0f,#10,#a0,#48
	db #30,#ac,#40,#44,#0f,#10,#a0,#48
	db #30,#ac,#40,#44,#0f,#10,#ac,#48
	db #30,#9e,#48,#36,#9e,#40,#aa,#40
	db #9e,#40,#9e,#40,#44,#0f,#11,#9e
	db #48,#36,#aa,#40,#44,#0f,#11,#a5
	db #48,#24,#b1,#40,#44,#0f,#11,#a5
	db #48,#24,#b1,#40,#44,#0f,#11,#b1
	db #48,#24,#a0,#48,#30,#a0,#40,#ac
	db #40,#a0,#40,#a0,#40,#44,#0f,#10
	db #a0,#48,#30,#ac,#40,#44,#0f,#10
	db #a0,#48,#30,#ac,#40,#44,#0f,#10
	db #a0,#48,#30,#ac,#40,#44,#0f,#10
	db #ac,#48,#30,#a3,#48,#28,#a3,#40
	db #af,#40,#a3,#40,#a3,#40,#47,#0f
	db #13,#a3,#48,#28,#af,#40,#a5,#48
	db #24,#a5,#40,#b1,#40,#a5,#40,#a5
	db #40,#49,#0f,#13,#a5,#48,#24,#b1
	db #40,#ff,#a0,#48,#30,#a0,#40,#ac
	db #40,#a0,#40,#a0,#40,#ac,#40,#a0
	db #40,#ac,#40,#a0,#40,#a0,#40,#ac
	db #40,#a0,#40,#a0,#40,#ac,#40,#a0
	db #40,#ac,#40,#9e,#48,#36,#9e,#40
	db #aa,#40,#9e,#40,#9e,#40,#aa,#40
	db #9e,#40,#aa,#40,#a5,#48,#24,#a5
	db #40,#b1,#40,#a5,#40,#a5,#40,#b1
	db #40,#a5,#40,#b1,#40,#9e,#48,#36
	db #9e,#40,#aa,#40,#9e,#40,#9e,#40
	db #aa,#40,#9e,#40,#aa,#40,#9e,#40
	db #9e,#40,#aa,#40,#9e,#40,#9e,#40
	db #aa,#40,#9e,#40,#aa,#40,#a0,#48
	db #30,#a0,#40,#ac,#40,#a0,#40,#a0
	db #40,#ac,#40,#a0,#40,#ac,#40,#a3
	db #48,#28,#a3,#40,#af,#40,#a3,#40
	db #a3,#40,#af,#40,#a3,#40,#af,#40
	db #ff,#9c,#18,#3c,#9c,#10,#a8,#10
	db #9c,#10,#9c,#10,#44,#0f,#10,#9c
	db #18,#3c,#a8,#10,#44,#0f,#10,#9c
	db #18,#3c,#a8,#10,#44,#0f,#10,#9c
	db #18,#3c,#a8,#10,#44,#0f,#10,#a8
	db #18,#3c,#9c,#10,#9c,#10,#a8,#10
	db #9c,#10,#9c,#10,#44,#0f,#10,#9c
	db #18,#3c,#a8,#10,#44,#0f,#10,#9c
	db #18,#3c,#a8,#10,#44,#0f,#10,#9c
	db #18,#3c,#a8,#10,#a7,#18,#20,#b3
	db #10,#a0,#18,#30,#a0,#10,#ac,#10
	db #a0,#10,#a0,#10,#44,#0f,#11,#a0
	db #18,#30,#ac,#10,#44,#0f,#11,#a0
	db #18,#30,#ac,#10,#44,#0f,#11,#a0
	db #18,#30,#ac,#10,#44,#0f,#11,#ac
	db #18,#30,#a0,#10,#a0,#10,#ac,#10
	db #a0,#10,#a0,#10,#44,#0f,#11,#a0
	db #18,#30,#ac,#10,#44,#0f,#11,#a0
	db #18,#30,#ac,#10,#44,#0f,#11,#a0
	db #18,#30,#ac,#10,#44,#0f,#11,#ac
	db #18,#30,#ff,#20,#08,#30,#02,#20
	db #00,#02,#2c,#00,#02,#20,#00,#02
	db #20,#00,#02,#2a,#08,#36,#02,#1e
	db #00,#02,#2f,#08,#50,#02,#20,#08
	db #30,#02,#20,#00,#02,#2c,#00,#02
	db #20,#00,#02,#20,#00,#02,#2f,#08
	db #28,#02,#23,#00,#02,#31,#08,#24
	db #02,#20,#08,#30,#02,#20,#00,#02
	db #2c,#00,#02,#20,#00,#02,#20,#00
	db #02,#2a,#08,#35,#02,#1e,#00,#02
	db #2f,#08,#28,#02,#23,#00,#02,#23
	db #00,#02,#2f,#00,#02,#23,#00,#02
	db #25,#08,#24,#02,#31,#00,#02,#25
	db #00,#02,#33,#08,#20,#02,#ff

;
.music_info
	db "Dracula Fanz Issue 5 - Turn Disk C (1995)(Dracula Fanz Team)(Beta Soft Cologne)",0
	db "ST-128 Module",0

	read "music_end.asm"
