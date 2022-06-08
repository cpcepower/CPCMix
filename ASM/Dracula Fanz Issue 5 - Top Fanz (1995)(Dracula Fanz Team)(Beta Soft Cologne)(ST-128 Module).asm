; Music of Dracula Fanz Issue 5 - Top Fanz (1995)(Dracula Fanz Team)(Beta Soft Cologne)(ST-128 Module)
; Ripped by Megachur the 28/05/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DRFI5TOF.BIN"
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
	ld (hl),#06
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
	add #fb
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
	add (hl)
	add a
	adc b
	add c
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
	db #00,#38,#00,#00,#06,#0d,#03,#00
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
.l45b0 equ $ + 2
	dw #000f,#0008
.l45b4 equ $ + 2
	db #01,#08,#7f,#00,#00,#3b,#00,#00
.l45be equ $ + 4
	db #00,#00,#60,#00,#20,#49,#60,#49
	db #40,#47,#16,#0a,#04,#1c,#00,#00
.l45cf equ $ + 5
	db #00,#00,#00,#00,#00,#0e,#74,#4d
	db #0c,#4b,#00,#90,#00,#00,#00,#00
.l45de equ $ + 4
	db #00,#00,#01,#01,#09,#02,#03,#10
.l45e2
	db #7f,#00,#00,#3b,#00,#00,#00,#00
.l45ec equ $ + 2
	db #00,#00,#60,#47,#a0,#47,#40,#47
	db #18,#08,#04,#1c,#00,#00,#00,#00
.l45fd equ $ + 3
	db #00,#00,#00,#02,#84,#4f,#8a,#4b
	db #00,#30,#00,#00,#00,#00,#00,#00
.l4610 equ $ + 6
.l460c equ $ + 2
	db #01,#01,#0a,#04,#05,#20,#7f,#00
	db #00,#37,#00,#00,#00,#00,#c0,#4a
.l461a
	db #e0,#46,#20,#47,#40,#47,#1a,#06
	db #10,#10,#00,#00,#00,#00,#00,#00
.l462b equ $ + 1
	db #00,#0e,#48,#50,#08,#4c,#00,#20
	db #00,#00,#00,#00,#00,#00,#01,#01
.l4640 equ $ + 6
.l463a
	db #00,#4b,#7e,#4b,#fc,#4b,#d1,#ff
	db #d2,#ff,#d2,#ff,#ff,#ff,#d1,#ff
	db #d2,#ff,#d2,#ff,#ff,#ff,#e0,#46
	db #20,#47,#40,#47,#1a,#06,#60,#47
	db #a0,#47,#40,#47,#18,#08,#c0,#47
	db #00,#48,#20,#48,#80,#00,#40,#48
	db #80,#48,#a0,#48,#16,#0a,#c0,#48
	db #00,#49,#a0,#48,#1a,#00,#d1,#ff
	db #d2,#ff,#d2,#ff,#ff,#ff,#d1,#ff
	db #d2,#ff,#d2,#ff,#ff,#ff,#20,#49
	db #60,#49,#40,#47,#16,#0a,#80,#49
	db #c0,#49,#40,#47,#16,#0a,#d1,#ff
	db #d2,#ff,#d2,#ff,#ff,#ff,#e0,#49
	db #20,#4a,#40,#47,#1e,#02,#d1,#ff
	db #d2,#ff,#d2,#ff,#ff,#ff,#d1,#ff
	db #d2,#ff,#d2,#ff,#ff,#ff,#d1,#ff
.l46c0 equ $ + 6
	db #d2,#ff,#d2,#ff,#ff,#ff,#d1,#ff
	db #40,#4a,#60,#4a,#80,#4a,#a0,#4a
	db #d2,#ff,#c0,#4a,#e0,#4a,#d1,#ff
	db #d2,#ff,#d2,#ff,#d1,#ff,#d1,#ff
	db #d2,#ff,#d2,#ff,#d1,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0b,#0b
	db #0b,#0b,#0c,#0c,#0c,#0c,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#0b,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#09,#09,#09,#08,#08
	db #08,#07,#07,#07,#06,#06,#06,#05
	db #05,#04,#04,#03,#03,#00,#fd,#00
	db #2f,#01,#61,#01,#93,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0e,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#08,#00
	db #00,#00,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0b,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#03,#00,#02,#00
	db #01,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#01,#00,#03,#00
	db #05,#00,#03,#00,#01,#00,#ff,#ff
	db #fd,#ff,#fb,#ff,#fd,#ff,#ff,#ff
	db #01,#00,#04,#00,#07,#00,#04,#00
	db #01,#00,#ff,#ff,#fc,#ff,#f9,#ff
	db #fc,#ff,#ff,#ff,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0c,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0d,#0d
	db #0d,#0d,#0d,#0c,#0c,#0c,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#09,#09
	db #09,#09,#0a,#0a,#0a,#0a,#0b,#0b
	db #0b,#0b,#0b,#0c,#0c,#0c,#0c,#0c
	db #0b,#0b,#0b,#0b,#0b,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#03,#00,#02,#00
	db #01,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#02,#00,#03,#00
	db #04,#00,#03,#00,#02,#00,#0f,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0d,#0d,#0d,#0d,#0d,#ff,#ff
	db #ff,#ff,#fe,#ff,#fe,#ff,#fd,#ff
	db #fd,#ff,#fc,#ff,#fc,#ff,#fb,#ff
	db #fb,#ff,#fa,#ff,#fa,#ff,#f9,#ff
	db #f9,#ff,#f8,#ff,#f8,#ff,#f7,#ff
	db #f7,#ff,#f6,#ff,#f6,#ff,#f5,#ff
	db #f5,#ff,#f4,#ff,#f4,#ff,#f3,#ff
	db #f3,#ff,#f2,#ff,#f2,#ff,#f1,#ff
	db #f1,#ff,#f0,#ff,#f0,#ff,#0d,#0d
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0d,#0d,#0d,#0d,#0d,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#fe,#fe,#fe,#00,#00,#00,#fe
	db #fe,#fe,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#00
	db #00,#0c,#0c,#00,#00,#0c,#0c,#00
	db #00,#0c,#0c,#00,#00,#0c,#0c,#00
	db #00,#0c,#0c,#00,#00,#0c,#0c,#00
	db #00,#0c,#0c,#00,#00,#0c,#00,#00
	db #00,#02,#02,#02,#00,#00,#00,#02
	db #02,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#04,#07,#07,#00,#00,#04,#04
	db #07,#07,#00,#00,#04,#04,#07,#07
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #04,#04,#07,#07,#00,#00,#00,#00
	db #03,#03,#07,#07,#00,#00,#03,#03
	db #07,#07,#00,#00,#03,#03,#07,#07
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #03,#03,#07,#07,#00,#00,#00,#5b
	db #4d,#00,#5e,#4d,#00,#75,#4d,#00
	db #5e,#4d,#00,#75,#4d,#00,#7a,#4c
	db #00,#7a,#4c,#00,#7a,#4c,#00,#7a
	db #4c,#00,#7a,#4c,#00,#7a,#4c,#00
	db #7a,#4c,#00,#7a,#4c,#02,#7a,#4c
	db #02,#7a,#4c,#02,#7a,#4c,#02,#7a
	db #4c,#02,#7a,#4c,#02,#7a,#4c,#02
	db #7a,#4c,#02,#7a,#4c,#02,#7a,#4c
	db #02,#7a,#4c,#03,#7a,#4c,#03,#7a
	db #4c,#03,#7a,#4c,#03,#7a,#4c,#03
	db #7a,#4c,#03,#7a,#4c,#03,#7a,#4c
	db #03,#7a,#4c,#04,#7a,#4c,#04,#7a
	db #4c,#04,#bb,#4c,#04,#d8,#4c,#04
	db #bb,#4c,#04,#d8,#4c,#04,#03,#4d
	db #04,#d8,#4c,#04,#03,#4d,#04,#20
	db #4d,#80,#00,#4b,#00,#97,#4f,#00
	db #35,#4f,#00,#35,#4f,#00,#35,#4f
	db #00,#35,#4f,#00,#35,#4f,#00,#35
	db #4f,#00,#f1,#4e,#00,#13,#4f,#00
	db #f1,#4e,#00,#13,#4f,#00,#35,#4f
	db #00,#35,#4f,#02,#fa,#4f,#02,#1a
	db #50,#02,#fa,#4f,#02,#1a,#50,#02
	db #35,#4f,#02,#35,#4f,#02,#fb,#4d
	db #02,#1f,#4e,#02,#fb,#4d,#02,#1f
	db #4e,#03,#86,#4d,#03,#bf,#4d,#03
	db #86,#4d,#03,#bf,#4d,#03,#fb,#4d
	db #03,#1f,#4e,#03,#fb,#4d,#03,#1f
	db #4e,#04,#35,#4f,#04,#35,#4f,#04
	db #5b,#4d,#04,#5b,#4d,#04,#5b,#4d
	db #04,#5b,#4d,#04,#46,#4e,#04,#8e
	db #4e,#04,#46,#4e,#04,#b6,#4e,#80
	db #7e,#4b,#00,#5b,#4d,#00,#3a,#50
	db #00,#3a,#50,#00,#3a,#50,#00,#3a
	db #50,#00,#3a,#50,#00,#3a,#50,#00
	db #3a,#50,#00,#3a,#50,#00,#3a,#50
	db #00,#3a,#50,#00,#3a,#50,#00,#3a
	db #50,#02,#3a,#50,#02,#3a,#50,#02
	db #3a,#50,#02,#3a,#50,#02,#3a,#50
	db #02,#3a,#50,#02,#3a,#50,#02,#3a
	db #50,#02,#3a,#50,#02,#3a,#50,#03
	db #3a,#50,#03,#3a,#50,#03,#3a,#50
	db #03,#3a,#50,#03,#3a,#50,#03,#3a
	db #50,#03,#3a,#50,#03,#3a,#50,#04
	db #3a,#50,#04,#3a,#50,#04,#3a,#50
	db #04,#3a,#50,#04,#3a,#50,#04,#3a
	db #50,#04,#3a,#50,#04,#3a,#50,#04
	db #3a,#50,#04,#49,#50,#80,#fc,#4b
	db #31,#5f,#61,#3d,#50,#02,#38,#41
	db #40,#34,#5f,#21,#2d,#50,#02,#2f
	db #60,#04,#31,#50,#02,#2f,#50,#02
	db #38,#41,#20,#2f,#5f,#21,#bb,#50
	db #af,#50,#2c,#50,#02,#2d,#60,#06
	db #39,#50,#02,#38,#41,#40,#2d,#5f
	db #41,#34,#60,#06,#40,#50,#02,#38
	db #41,#40,#2f,#5f,#21,#2c,#50,#02
	db #ff,#50,#91,#00,#10,#50,#90,#02
	db #4e,#90,#04,#50,#90,#02,#4e,#90
	db #06,#4e,#cb,#22,#51,#90,#10,#53
	db #9f,#22,#50,#91,#e0,#ff,#55,#91
	db #60,#57,#90,#02,#58,#90,#02,#57
	db #90,#02,#58,#90,#02,#5a,#90,#02
	db #57,#90,#04,#55,#90,#02,#53,#90
	db #0a,#5d,#90,#04,#5c,#90,#02,#5a
	db #90,#08,#5c,#90,#02,#58,#90,#10
	db #ff,#50,#91,#00,#10,#50,#90,#02
	db #4e,#90,#04,#50,#90,#02,#4e,#90
	db #06,#4e,#cb,#22,#51,#90,#10,#53
	db #3f,#22,#50,#91,#e0,#ff,#55,#9d
	db #06,#06,#57,#90,#02,#58,#90,#02
	db #57,#90,#02,#58,#90,#02,#5a,#90
	db #02,#57,#90,#04,#55,#90,#02,#53
	db #90,#0a,#5d,#90,#04,#5c,#90,#02
	db #5a,#90,#08,#5c,#90,#02,#58,#9d
	db #0c,#02,#04,#1c,#04,#10,#04,#10
	db #04,#10,#04,#10,#04,#10,#0b,#8f
	db #ff,#fe,#40,#ff,#50,#91,#00,#10
	db #50,#90,#02,#4e,#90,#0b,#4e,#cb
	db #32,#51,#90,#10,#53,#9f,#22,#50
	db #91,#e0,#ff,#55,#91,#00,#10,#57
	db #90,#10,#5d,#90,#10,#5d,#9f,#24
	db #5c,#91,#e0,#ff,#50,#a1,#20,#4e
	db #a0,#02,#4c,#a0,#02,#4e,#a0,#04
	db #50,#a0,#02,#4c,#a0,#02,#50,#a0
	db #02,#4e,#a0,#02,#4c,#a0,#02,#4b
	db #a0,#02,#47,#a0,#08,#fe,#02,#51
	db #a1,#40,#50,#a0,#02,#4e,#a0,#08
	db #49,#a0,#02,#4c,#a0,#02,#4c,#2f
	db #44,#47,#a1,#a0,#ff,#4c,#a1,#20
	db #4c,#a0,#02,#4b,#a0,#02,#49,#a0
	db #04,#49,#a0,#02,#47,#a0,#02,#49
	db #a0,#02,#4b,#a0,#0e,#fe,#02,#49
	db #a1,#20,#4b,#a0,#02,#4c,#a0,#02
	db #4c,#a0,#04,#4c,#a0,#02,#4e,#a0
	db #02,#50,#a0,#02,#51,#a0,#02,#50
	db #a0,#02,#4c,#a0,#02,#4c,#a0,#0a
	db #ff,#50,#2f,#63,#50,#20,#02,#4c
	db #20,#04,#50,#20,#02,#4e,#20,#12
	db #4c,#20,#04,#fe,#02,#4c,#2f,#23
	db #50,#20,#02,#4e,#20,#02,#50,#20
	db #02,#47,#20,#12,#ff,#4c,#2f,#63
	db #4c,#20,#02,#4b,#20,#02,#4b,#20
	db #02,#4c,#20,#02,#4b,#20,#12,#4c
	db #20,#04,#fe,#02,#4c,#2f,#23,#4c
	db #20,#02,#4c,#20,#02,#4c,#20,#02
	db #47,#20,#12,#ff,#00,#02,#4c,#ab
	db #11,#ce,#a0,#d0,#a0,#50,#ab,#12
	db #53,#ab,#21,#50,#a0,#02,#4c,#a1
	db #20,#4e,#af,#24,#50,#a1,#20,#4e
	db #a0,#02,#cc,#a0,#4b,#a0,#02,#c9
	db #a0,#47,#a0,#0a,#49,#a0,#02,#49
	db #a0,#02,#4c,#a0,#02,#ce,#a0,#50
	db #a0,#02,#ce,#a0,#4c,#a0,#02,#cb
	db #a0,#4c,#a0,#02,#49,#af,#14,#4c
	db #a1,#00,#10,#ff,#49,#ab,#41,#4b
	db #a0,#02,#4c,#a0,#06,#4c,#a0,#02
	db #4e,#a0,#02,#4b,#a0,#04,#4c,#a0
	db #02,#4b,#a0,#0a,#4c,#a0,#08,#50
	db #a0,#02,#4e,#a0,#02,#50,#a0,#02
	db #4c,#a0,#12,#ff,#49,#ab,#41,#4b
	db #a0,#02,#4c,#a0,#06,#4c,#a0,#02
	db #4e,#a0,#02,#4b,#a0,#04,#4c,#a0
	db #02,#4b,#a0,#0a,#4c,#a0,#08,#50
	db #a0,#02,#4e,#a0,#02,#50,#a0,#02
	db #4c,#a0,#02,#04,#1c,#0d,#20,#01
	db #04,#10,#04,#10,#04,#10,#04,#10
	db #04,#10,#04,#10,#0b,#8f,#ff,#50
	db #a0,#0c,#4e,#a0,#02,#4c,#a0,#02
	db #4b,#a0,#04,#49,#a0,#02,#4b,#a0
	db #0a,#4c,#a0,#08,#50,#a0,#02,#4e
	db #a0,#02,#4c,#a0,#02,#47,#a0,#12
	db #ff,#49,#a0,#08,#4b,#a0,#02,#47
	db #a0,#02,#44,#a0,#02,#40,#a0,#02
	db #42,#a0,#10,#4c,#a0,#08,#4c,#a0
	db #02,#4e,#a0,#02,#50,#a0,#02,#4c
	db #a0,#12,#ff,#55,#31,#20,#d8,#30
	db #50,#30,#02,#d8,#30,#55,#30,#02
	db #4c,#30,#02,#49,#30,#02,#4c,#30
	db #02,#50,#30,#02,#53,#30,#02,#4e
	db #30,#02,#4b,#30,#02,#47,#30,#02
	db #4b,#30,#02,#4e,#30,#02,#53,#30
	db #02,#57,#30,#02,#55,#30,#02,#51
	db #30,#02,#4c,#30,#02,#45,#30,#02
	db #55,#30,#02,#58,#30,#02,#51,#30
	db #02,#49,#30,#02,#40,#30,#02,#50
	db #30,#02,#53,#30,#02,#4c,#30,#02
	db #58,#30,#02,#4c,#30,#02,#53,#30
	db #02,#47,#30,#02,#ff,#55,#3d,#06
	db #02,#d8,#30,#50,#30,#02,#d8,#30
	db #55,#30,#02,#4c,#30,#02,#49,#30
	db #02,#4c,#30,#02,#50,#30,#02,#53
	db #30,#02,#4e,#30,#02,#4b,#30,#02
	db #47,#30,#02,#4b,#30,#02,#4e,#30
	db #02,#53,#30,#02,#57,#30,#02,#55
	db #30,#02,#51,#30,#02,#4c,#30,#02
	db #45,#30,#02,#55,#30,#02,#58,#30
	db #02,#51,#30,#02,#49,#30,#02,#40
	db #30,#02,#50,#30,#02,#53,#30,#02
	db #4c,#30,#02,#58,#30,#02,#4c,#30
	db #02,#53,#30,#02,#47,#30,#02,#ff
	db #50,#a0,#0e,#ce,#a0,#cc,#a0,#4b
	db #a0,#04,#49,#a0,#02,#4b,#a0,#0a
	db #4c,#a0,#0a,#50,#a0,#02,#4e,#a0
	db #02,#4c,#a0,#02,#47,#a0,#10,#ff
	db #49,#a0,#0a,#4b,#a0,#02,#47,#a0
	db #02,#40,#a0,#02,#42,#a0,#10,#4c
	db #a0,#0a,#d0,#a0,#ce,#a0,#50,#a0
	db #02,#53,#a0,#02,#4c,#a0,#10,#ff
	db #49,#2f,#07,#10,#47,#2f,#06,#10
	db #45,#20,#10,#4c,#20,#10,#ff,#49
	db #2f,#07,#10,#47,#2f,#06,#10,#45
	db #20,#10,#4c,#20,#02,#04,#1c,#04
	db #10,#04,#10,#04,#10,#04,#10,#04
	db #10,#0b,#8f,#ff,#02,#50,#30,#02
	db #53,#30,#02,#4e,#30,#02,#4b,#30
	db #02,#47,#30,#02,#4b,#30,#02,#4e
	db #30,#02,#53,#30,#02,#57,#30,#02
	db #55,#30,#02,#51,#30,#02,#4c,#30
	db #02,#45,#30,#02,#55,#30,#02,#58
	db #30,#02,#51,#30,#02,#49,#30,#02
	db #40,#fd,#08,#49,#4f,#13,#4c,#30
	db #02,#58,#30,#02,#4c,#30,#02,#53
	db #30,#02,#47,#30,#02,#ff,#55,#3d
	db #06,#02,#fd,#5f,#38,#4f,#06,#50
	db #a0,#0e,#ce,#a0,#cc,#a0,#fd,#0b
	db #fa,#4e,#00,#0a,#fd,#0b,#06,#4f
	db #08,#10,#ff,#49,#a0,#0a,#4b,#a0
	db #02,#47,#fd,#0a,#1d,#4f,#1b,#0a
	db #d0,#a0,#ce,#a0,#50,#a0,#02,#53
	db #a0,#02,#4c,#a0,#10,#ff,#49,#2f
	db #07,#10,#47,#2f,#06,#10,#45,#20
	db #10,#4c,#20,#fd,#0e,#38,#50,#00
	db #20,#fd,#10,#4b,#4d,#ff

;
.music_info
	db "Dracula Fanz Issue 5 - Top Fanz (1995)(Dracula Fanz Team)(Beta Soft Cologne)",0
	db "ST-128 Module",0

	read "music_end.asm"
