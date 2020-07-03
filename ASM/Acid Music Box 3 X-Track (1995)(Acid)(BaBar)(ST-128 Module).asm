; Music of Acid Music Box 3 X-Track (1995)(Acid)(BaBar)(ST-128 Module)
; Ripped by Megachur the 01/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "ACIMB3XT.BIN"
	ENDIF

music_date_rip_day		equ 01
music_date_rip_month	equ 10
music_date_rip_year		equ 2014
music_adr				equ &4000

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
	ld (hl),#05
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
.l45b0 equ $ + 2
	dw #000f,#0008
.l45b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l45be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l45e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l45fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4610 equ $ + 6
.l460c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l461a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l462b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4640 equ $ + 6
.l463a
	db #40,#4a,#85,#4a,#ca,#4a,#e0,#46
	db #20,#47,#40,#47,#80,#00,#60,#47
	db #a0,#47,#40,#47,#40,#00,#c0,#47
	db #00,#48,#20,#48,#c0,#00,#40,#48
	db #80,#48,#a0,#48,#c0,#00,#d2,#ff
	db #a4,#ff,#76,#ff,#a4,#ff,#e0,#46
	db #c0,#48,#40,#47,#40,#03,#e0,#46
	db #e0,#48,#40,#47,#40,#03,#e0,#46
	db #00,#49,#40,#47,#40,#00,#e0,#46
	db #20,#49,#40,#49,#c0,#00,#60,#49
	db #c0,#48,#40,#47,#00,#08,#e0,#46
	db #a0,#49,#40,#47,#5e,#02,#72,#4a
	db #a4,#ff,#a4,#ff,#d2,#ff,#a4,#ff
	db #a4,#ff,#92,#4a,#d3,#ff,#e0,#46
	db #c0,#49,#40,#47,#48,#03,#e0,#46
	db #e0,#49,#40,#47,#48,#03,#60,#49
.l46c0 equ $ + 6
	db #00,#4a,#40,#47,#48,#08,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #20,#4a,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#90,#01
	db #d0,#01,#10,#02,#50,#02,#90,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0f
	db #0f,#0f,#0e,#0e,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#fd,#00
	db #2f,#01,#61,#01,#93,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0e,#0d,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#08,#00
	db #00,#00,#06,#06,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0e,#0e
	db #0d,#0d,#0d,#0c,#0c,#0b,#0b,#0b
	db #0a,#0a,#09,#09,#09,#08,#08,#07
	db #07,#07,#06,#06,#05,#05,#05,#04
	db #04,#03,#03,#03,#02,#02,#0e,#0c
	db #0a,#08,#06,#04,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#01,#00,#00
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
	db #01,#00,#01,#00,#01,#00,#0d,#0d
	db #0d,#0d,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#09,#09
	db #09,#09,#09,#09,#08,#08,#0e,#0d
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0e,#0e
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0f,#0e
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #4b,#00,#0f,#4b,#00,#90,#4b,#00
	db #90,#4b,#00,#01,#4c,#00,#52,#4c
	db #00,#d4,#4c,#00,#01,#4c,#00,#52
	db #4c,#00,#36,#4d,#00,#b7,#4d,#00
	db #b7,#4d,#00,#36,#4d,#00,#52,#4c
	db #00,#01,#4c,#00,#90,#4b,#00,#90
	db #4b,#00,#36,#4d,#00,#b7,#4d,#00
	db #d4,#4c,#00,#52,#4c,#00,#3a,#4e
	db #80,#40,#4a,#00,#d8,#4e,#00,#d8
	db #4e,#00,#0c,#4f,#00,#0c,#4f,#00
	db #29,#4f,#00,#5a,#4f,#00,#73,#4f
	db #00,#29,#4f,#00,#5a,#4f,#00,#c0
	db #4f,#00,#1b,#50,#00,#1b,#50,#00
	db #c0,#4f,#00,#5a,#4f,#00,#29,#4f
	db #00,#0c,#4f,#00,#0c,#4f,#00,#c0
	db #4f,#00,#1b,#50,#00,#73,#4f,#00
	db #5a,#4f,#00,#3b,#50,#80,#85,#4a
	db #00,#6b,#50,#00,#6b,#50,#00,#0f
	db #4b,#00,#0f,#4b,#00,#ed,#50,#00
	db #a1,#51,#00,#3b,#52,#00,#ed,#50
	db #00,#a1,#51,#00,#d5,#52,#00,#fa
	db #52,#00,#fa,#52,#00,#d5,#52,#00
	db #a1,#51,#00,#ed,#50,#00,#0f,#4b
	db #00,#0f,#4b,#00,#d5,#52,#00,#fa
	db #52,#00,#3b,#52,#00,#a1,#51,#00
	db #68,#53,#80,#ca,#4a,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#fe,#01,#fe
	db #01,#fe,#01,#fe,#01,#ff,#34,#3d
	db #05,#02,#34,#80,#02,#3b,#20,#02
	db #34,#30,#02,#34,#30,#02,#34,#80
	db #02,#3b,#20,#02,#34,#80,#02,#34
	db #30,#02,#34,#80,#02,#3b,#20,#02
	db #34,#80,#02,#34,#30,#02,#34,#8d
	db #04,#02,#3b,#20,#02,#34,#80,#02
	db #34,#30,#02,#34,#80,#02,#3b,#20
	db #02,#34,#30,#02,#34,#30,#02,#34
	db #80,#02,#bb,#20,#b9,#8d,#03,#b4
	db #30,#b9,#80,#b4,#3d,#03,#b9,#80
	db #b4,#30,#b9,#80,#bb,#30,#b9,#80
	db #b4,#30,#b9,#80,#b4,#30,#b9,#8d
	db #03,#bb,#30,#b9,#80,#b4,#30,#b9
	db #80,#bb,#30,#b9,#8d,#05,#ff,#10
	db #3d,#05,#04,#10,#20,#02,#10,#30
	db #04,#10,#20,#02,#10,#30,#02,#10
	db #20,#02,#10,#30,#04,#10,#20,#02
	db #10,#30,#04,#10,#20,#02,#10,#30
	db #02,#10,#2d,#05,#02,#10,#3d,#05
	db #04,#10,#20,#02,#10,#30,#04,#10
	db #20,#02,#10,#30,#02,#10,#20,#02
	db #10,#30,#04,#10,#20,#02,#10,#30
	db #02,#10,#20,#02,#10,#30,#02,#90
	db #20,#90,#30,#90,#20,#fe,#01,#ff
	db #90,#3d,#05,#90,#80,#90,#80,#90
	db #80,#90,#20,#90,#80,#90,#30,#90
	db #80,#90,#80,#90,#80,#90,#20,#90
	db #80,#90,#30,#90,#80,#90,#20,#90
	db #80,#90,#30,#90,#80,#90,#80,#90
	db #80,#90,#20,#90,#80,#90,#30,#90
	db #80,#90,#80,#90,#80,#90,#20,#90
	db #80,#90,#30,#90,#80,#90,#20,#90
	db #80,#90,#30,#90,#80,#90,#80,#90
	db #80,#90,#20,#90,#80,#90,#30,#90
	db #80,#90,#80,#90,#80,#90,#20,#90
	db #80,#90,#30,#90,#80,#90,#80,#90
	db #80,#90,#20,#90,#80,#90,#80,#90
	db #80,#90,#30,#90,#80,#90,#20,#90
	db #80,#90,#30,#90,#80,#90,#20,#90
	db #80,#90,#30,#90,#20,#90,#30,#90
	db #80,#ff,#1c,#3d,#05,#02,#1c,#80
	db #02,#23,#20,#02,#1c,#30,#02,#1c
	db #30,#02,#1c,#80,#02,#23,#20,#02
	db #1c,#80,#02,#1c,#30,#02,#1c,#80
	db #02,#23,#20,#02,#1c,#80,#02,#1c
	db #30,#02,#1c,#80,#02,#23,#20,#02
	db #1c,#80,#02,#1c,#30,#02,#1c,#80
	db #02,#23,#20,#02,#1c,#30,#02,#1c
	db #30,#02,#1c,#80,#02,#23,#20,#02
	db #1c,#80,#02,#1c,#30,#02,#1c,#80
	db #02,#23,#20,#02,#1c,#80,#02,#1c
	db #30,#02,#23,#20,#02,#1c,#80,#02
	db #23,#20,#02,#ff,#9c,#30,#9c,#80
	db #9c,#80,#9c,#80,#9c,#20,#9c,#80
	db #9c,#30,#9c,#80,#9c,#80,#9c,#80
	db #9c,#20,#9c,#80,#9c,#30,#9c,#80
	db #9c,#20,#9c,#80,#9c,#30,#9c,#80
	db #9c,#80,#9c,#80,#9c,#20,#9c,#80
	db #9c,#30,#9c,#80,#9c,#80,#9c,#80
	db #9c,#20,#9c,#80,#9c,#30,#9c,#80
	db #9c,#20,#9c,#80,#9c,#80,#9c,#80
	db #9c,#30,#9c,#80,#9c,#20,#9c,#80
	db #9c,#30,#9c,#80,#9c,#80,#9c,#80
	db #9c,#20,#9c,#80,#9c,#30,#9c,#80
	db #9c,#20,#9c,#80,#9c,#30,#9c,#80
	db #9c,#80,#9c,#80,#9c,#20,#9c,#80
	db #9c,#30,#9c,#80,#9c,#20,#9c,#80
	db #9c,#30,#9c,#80,#9c,#20,#9c,#80
	db #9c,#30,#9c,#80,#ff,#34,#2f,#19
	db #b4,#80,#b4,#80,#b4,#80,#bb,#30
	db #b4,#80,#b4,#20,#b4,#80,#b4,#20
	db #b4,#80,#b4,#80,#b4,#80,#bb,#30
	db #b4,#80,#b4,#80,#b4,#80,#b4,#20
	db #b4,#80,#b4,#80,#b4,#80,#bb,#30
	db #b4,#80,#b4,#80,#b4,#80,#b4,#20
	db #b4,#80,#b4,#80,#b4,#80,#bb,#30
	db #b4,#80,#b4,#80,#b4,#80,#b4,#20
	db #b4,#80,#b4,#80,#b4,#80,#bb,#30
	db #b4,#80,#b4,#20,#b4,#80,#b4,#20
	db #b4,#80,#b4,#80,#b4,#80,#bb,#30
	db #b4,#80,#b4,#80,#b4,#80,#b4,#20
	db #b4,#80,#b4,#80,#b4,#80,#bb,#30
	db #b4,#80,#b4,#80,#b4,#80,#b4,#20
	db #b4,#80,#bb,#30,#b4,#80,#b4,#80
	db #b4,#80,#bb,#30,#b4,#8d,#04,#ff
	db #0d,#06,#01,#47,#9b,#10,#0b,#10
	db #3b,#fb,#10,#0b,#10,#2f,#eb,#10
	db #0b,#10,#0b,#10,#3b,#9b,#10,#0b
	db #10,#47,#fb,#10,#0b,#10,#2f,#eb
	db #10,#0b,#10,#0b,#10,#47,#9b,#10
	db #0b,#10,#3b,#fb,#10,#0b,#10,#2f
	db #eb,#10,#0b,#10,#0b,#10,#3b,#9b
	db #10,#0b,#11,#47,#fb,#11,#0b,#11
	db #2f,#eb,#11,#0b,#11,#0b,#11,#47
	db #9b,#11,#0b,#11,#3b,#fb,#11,#0b
	db #11,#2f,#eb,#11,#0d,#05,#01,#0b
	db #11,#3b,#9b,#11,#0b,#11,#47,#fb
	db #12,#0b,#12,#2f,#eb,#12,#0b,#12
	db #0b,#12,#44,#9b,#12,#0b,#12,#38
	db #fb,#12,#0b,#12,#2f,#eb,#12,#0b
	db #12,#0b,#12,#38,#9b,#12,#0b,#12
	db #44,#fb,#12,#0b,#12,#2f,#eb,#12
	db #0b,#12,#0b,#12,#44,#9b,#12,#0b
	db #13,#38,#fb,#13,#0b,#13,#2f,#eb
	db #14,#0b,#14,#0b,#14,#ff,#2f,#58
	db #14,#06,#3b,#58,#14,#06,#2f,#58
	db #14,#04,#3b,#58,#14,#06,#2f,#58
	db #14,#06,#3b,#58,#14,#04,#2c,#58
	db #18,#06,#38,#58,#18,#06,#2c,#58
	db #18,#04,#38,#58,#18,#06,#2c,#58
	db #18,#06,#38,#58,#18,#03,#0d,#06
	db #01,#ff,#2d,#78,#16,#0c,#30,#78
	db #13,#04,#32,#78,#11,#10,#35,#78
	db #1c,#08,#37,#78,#19,#08,#39,#78
	db #16,#0c,#37,#78,#19,#04,#ff,#3b
	db #18,#14,#06,#2f,#18,#14,#06,#3b
	db #18,#14,#04,#2f,#18,#14,#06,#3b
	db #18,#14,#06,#2f,#18,#14,#04,#39
	db #58,#16,#06,#2d,#18,#16,#06,#39
	db #18,#16,#04,#2d,#18,#16,#06,#39
	db #18,#16,#06,#2d,#18,#16,#04,#ff
	db #28,#98,#1e,#10,#3b,#98,#14,#08
	db #32,#98,#11,#08,#34,#98,#1e,#10
	db #39,#98,#17,#08,#3b,#98,#14,#08
	db #ff,#34,#6f,#49,#28,#60,#02,#34
	db #60,#04,#28,#60,#02,#34,#60,#02
	db #28,#60,#02,#34,#60,#04,#28,#60
	db #02,#34,#60,#04,#2d,#60,#02,#39
	db #60,#02,#2d,#60,#02,#39,#60,#04
	db #2d,#60,#02,#39,#60,#04,#2d,#60
	db #02,#39,#60,#02,#2d,#60,#02,#39
	db #60,#04,#2d,#60,#02,#39,#60,#02
	db #2d,#60,#02,#39,#60,#02,#ad,#60
	db #b9,#60,#2d,#60,#02,#ff,#00,#01
	db #34,#9a,#0f,#02,#28,#7a,#0f,#03
	db #40,#9a,#0f,#02,#28,#7a,#0f,#03
	db #34,#9a,#0f,#06,#40,#7a,#0f,#02
	db #34,#9a,#0f,#03,#28,#7a,#0f,#03
	db #34,#9a,#0f,#02,#40,#7a,#0f,#03
	db #34,#9a,#0f,#03,#28,#7a,#0f,#02
	db #40,#9a,#0f,#03,#28,#7a,#0f,#02
	db #34,#9a,#0f,#07,#40,#7a,#0f,#02
	db #34,#9a,#0f,#02,#28,#7a,#0f,#03
	db #40,#9a,#0f,#03,#28,#7a,#0f,#02
	db #34,#9a,#0f,#03,#40,#7a,#0f,#02
	db #ff,#0d,#05,#1c,#34,#98,#3c,#02
	db #3b,#98,#28,#02,#32,#98,#21,#02
	db #34,#98,#3c,#02,#39,#98,#2d,#03
	db #0d,#05,#15,#fe,#03,#0d,#05,#01
	db #ff,#40,#9a,#0f,#06,#34,#9a,#0f
	db #05,#40,#9a,#0f,#05,#34,#9a,#0f
	db #05,#40,#9a,#0f,#0b,#40,#9a,#0f
	db #0a,#34,#ea,#0f,#06,#40,#ea,#0f
	db #06,#34,#ea,#0f,#05,#c0,#ea,#0f
	db #0b,#10,#0b,#12,#0b,#13,#0b,#14
	db #ff,#0d,#02,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#fe,#01,#fe,#01,#fe,#01
	db #fe,#01,#ff,#40,#ab,#12,#34,#ab
	db #10,#45,#ab,#11,#34,#ab,#11,#34
	db #ab,#12,#0b,#10,#47,#ab,#11,#34
	db #ab,#10,#0b,#12,#34,#ab,#11,#43
	db #ab,#10,#34,#ab,#12,#40,#ab,#12
	db #0b,#11,#3e,#ab,#10,#0b,#12,#40
	db #ab,#10,#34,#ab,#11,#45,#ab,#12
	db #34,#ab,#10,#34,#ab,#11,#0b,#12
	db #47,#ab,#10,#3b,#ab,#10,#34,#ab
	db #11,#34,#ab,#12,#43,#ab,#10,#0b
	db #11,#40,#ab,#12,#34,#ab,#12,#3e
	db #ab,#10,#0b,#11,#40,#ab,#10,#32
	db #ab,#12,#45,#ab,#10,#32,#ab,#10
	db #31,#ab,#11,#0b,#10,#47,#ab,#12
	db #32,#ab,#10,#0b,#10,#32,#ab,#12
	db #43,#ab,#11,#31,#ab,#10,#40,#ab
	db #12,#31,#ab,#11,#43,#ab,#10,#0b
	db #11,#40,#ab,#12,#31,#ab,#10,#45
	db #ab,#11,#32,#ab,#12,#32,#ab,#10
	db #0b,#11,#47,#ab,#11,#32,#ab,#12
	db #32,#ab,#12,#32,#ab,#10,#42,#ab
	db #11,#0b,#12,#40,#ab,#10,#32,#ab
	db #10,#43,#ab,#11,#fe,#01,#ff,#4c
	db #1b,#13,#40,#1b,#12,#51,#1b,#11
	db #40,#1b,#10,#40,#1b,#22,#53,#1b
	db #13,#40,#1b,#22,#40,#1b,#10,#4f
	db #1b,#11,#40,#1b,#12,#4c,#1b,#23
	db #4a,#1b,#21,#4c,#1b,#11,#40,#1b
	db #12,#51,#1b,#13,#40,#1b,#12,#40
	db #1b,#21,#53,#1b,#10,#40,#1b,#11
	db #40,#1b,#12,#40,#1b,#13,#4f,#1b
	db #22,#4c,#1b,#10,#40,#1b,#11,#4a
	db #1b,#22,#4c,#1b,#12,#3e,#1b,#11
	db #51,#1b,#10,#3e,#1b,#12,#3e,#1b
	db #21,#53,#1b,#10,#3e,#1b,#21,#3e
	db #1b,#13,#4f,#1b,#13,#3e,#1b,#12
	db #4c,#1b,#11,#3e,#1b,#10,#4f,#1b
	db #20,#4c,#1b,#12,#3d,#1b,#13,#51
	db #1b,#13,#3e,#1b,#12,#3e,#1b,#21
	db #54,#1b,#10,#3e,#1b,#11,#3e,#1b
	db #12,#3e,#1b,#13,#4f,#1b,#23,#4c
	db #1b,#11,#3e,#1b,#10,#4f,#1b,#20
	db #ff,#40,#f1,#13,#34,#f1,#12,#45
	db #f1,#11,#34,#f1,#13,#34,#f1,#22
	db #47,#f1,#11,#34,#f1,#22,#34,#f1
	db #13,#43,#f1,#12,#34,#f1,#11,#40
	db #f1,#22,#3e,#f1,#23,#40,#f1,#11
	db #34,#f1,#12,#45,#f1,#11,#34,#f1
	db #12,#34,#f1,#23,#47,#f1,#11,#34
	db #f1,#12,#34,#f1,#13,#34,#f1,#12
	db #43,#f1,#21,#40,#f1,#12,#34,#f1
	db #12,#3e,#f1,#23,#40,#f1,#11,#32
	db #f1,#12,#45,#f1,#13,#32,#f1,#12
	db #32,#f1,#22,#47,#f1,#11,#32,#f1
	db #22,#32,#f1,#13,#43,#f1,#12,#32
	db #f1,#13,#40,#f1,#12,#32,#f1,#12
	db #43,#f1,#21,#40,#f1,#12,#32,#f1
	db #13,#45,#f1,#12,#32,#f1,#12,#32
	db #f1,#21,#48,#f1,#11,#32,#f1,#12
	db #32,#f1,#13,#32,#f1,#12,#43,#f1
	db #22,#40,#f1,#13,#32,#f1,#12,#43
	db #f1,#23,#ff,#40,#db,#40,#34,#6b
	db #c0,#3b,#db,#40,#2f,#6b,#40,#3e
	db #db,#40,#32,#6b,#40,#40,#db,#40
	db #34,#6b,#c0,#39,#db,#40,#2d,#6b
	db #40,#3b,#db,#42,#2f,#6b,#43,#ff
	db #b4,#1c,#07,#2e,#8f,#19,#34,#1c
	db #07,#02,#34,#1c,#07,#02,#34,#1c
	db #07,#02,#34,#1c,#07,#02,#34,#1c
	db #07,#02,#34,#1c,#07,#02,#34,#1c
	db #07,#02,#3b,#1c,#07,#02,#3b,#1c
	db #07,#02,#3b,#1c,#07,#02,#3b,#1c
	db #07,#02,#32,#1c,#07,#02,#32,#1c
	db #07,#0b,#39,#0f,#19,#34,#1c,#07
	db #02,#34,#1c,#07,#02,#34,#1c,#07
	db #02,#34,#1c,#07,#02,#39,#1c,#07
	db #02,#39,#1c,#07,#02,#39,#1c,#07
	db #02,#39,#1c,#07,#02,#3b,#1c,#07
	db #02,#3b,#1c,#07,#02,#3b,#1c,#07
	db #02,#3b,#1c,#07,#04,#ff,#2b,#2b
	db #10,#2b,#8b,#10,#37,#8b,#10,#2b
	db #8b,#10,#28,#3b,#10,#2d,#8b,#10
	db #2d,#8b,#10,#39,#8b,#10,#28,#2b
	db #10,#39,#8b,#10,#2d,#8b,#10,#2d
	db #8b,#10,#28,#3b,#10,#2d,#8b,#10
	db #2f,#8b,#10,#31,#8b,#10,#28,#2b
	db #10,#39,#8b,#10,#2d,#8b,#11,#2d
	db #8b,#11,#28,#3b,#11,#2d,#8b,#11
	db #39,#8b,#11,#2d,#8b,#11,#28,#2b
	db #11,#39,#8b,#11,#2d,#8b,#11,#2d
	db #8b,#11,#28,#3b,#11,#2a,#8b,#11
	db #28,#8b,#11,#29,#8b,#11,#28,#2b
	db #12,#35,#8b,#12,#29,#8b,#12,#29
	db #8b,#12,#28,#3b,#12,#29,#8b,#12
	db #35,#8b,#12,#29,#8b,#12,#34,#2b
	db #12,#29,#8b,#12,#29,#8b,#12,#29
	db #8b,#12,#28,#3b,#12,#29,#8b,#12
	db #35,#8b,#13,#29,#8b,#13,#28,#2b
	db #13,#35,#8b,#13,#29,#8b,#13,#29
	db #8b,#13,#28,#3b,#13,#2b,#8b,#13
	db #2b,#8b,#13,#37,#8b,#13,#28,#2b
	db #13,#37,#8b,#13,#2b,#8b,#13,#2b
	db #8b,#13,#2b,#3b,#13,#28,#8b,#13
	db #2b,#8b,#14,#2b,#8b,#14,#ff,#4e
	db #47,#42,#51,#10,#ff,#49,#51,#10
	db #44,#51,#10,#c9,#4e,#37,#49,#51
	db #10,#4c,#51,#10,#c9,#4e,#37,#4b
	db #51,#10,#c9,#4e,#37,#4c,#51,#10
	db #c9,#4e,#37,#c9,#4e,#37,#4b,#51
	db #10,#49,#51,#10,#c9,#4e,#37,#4b
	db #51,#10,#c9,#4e,#37,#49,#51,#10
	db #47,#51,#10,#c9,#4e,#37,#49,#51
	db #10,#44,#51,#10,#c9,#4e,#37,#49
	db #51,#10,#c9,#4e,#37,#44,#51,#10
	db #c9,#4e,#37,#c9,#4e,#37,#49,#51
	db #10,#47,#51,#10,#c9,#4e,#37,#49
	db #51,#10,#c9,#4e,#37,#47,#51,#10
	db #42,#51,#10,#c7,#4e,#47,#42,#51
	db #10,#c7,#50,#c7,#4e,#47,#47,#51
	db #10,#c7,#4e,#47,#4b,#51,#10,#c7
	db #4e,#47,#c7,#4e,#47,#49,#51,#10
	db #47,#51,#10,#c7,#4e,#47,#4b,#51
	db #10,#c7,#4e,#47,#4e,#51,#10,#49
	db #51,#10,#c5,#4e,#47,#45,#51,#10
	db #49,#51,#10,#c5,#4e,#47,#4c,#51
	db #10,#c5,#4e,#47,#4b,#51,#10,#c5
	db #4e,#47,#c5,#4e,#47,#49,#51,#10
	db #c5,#4e,#47,#47,#51,#10,#c5,#4e
	db #47,#49,#51,#10,#ff,#47,#51,#10
	db #43,#51,#10,#c3,#4e,#47,#47,#51
	db #10,#43,#51,#10,#c3,#4e,#47,#47
	db #51,#10,#c3,#4e,#47,#48,#51,#10
	db #c3,#4e,#47,#c3,#4e,#47,#43,#51
	db #10,#41,#51,#10,#c3,#4e,#47,#47
	db #51,#10,#c3,#4e,#47,#45,#51,#10
	db #41,#51,#10,#c1,#4e,#47,#45,#51
	db #10,#41,#51,#10,#c1,#4e,#47,#45
	db #51,#10,#c1,#4e,#47,#46,#51,#10
	db #c1,#4e,#47,#c1,#4e,#47,#45,#51
	db #10,#41,#51,#10,#c1,#4e,#47,#45
	db #51,#10,#c1,#4e,#47,#43,#51,#10
	db #3f,#51,#10,#bf,#4e,#47,#43,#51
	db #10,#bf,#50,#bf,#4e,#47,#3a,#51
	db #10,#bf,#4e,#47,#3f,#51,#10,#bf
	db #4e,#47,#bf,#4e,#47,#41,#51,#10
	db #3f,#51,#10,#bf,#4e,#47,#41,#51
	db #10,#bf,#4e,#47,#3d,#51,#10,#38
	db #51,#10,#bd,#4e,#47,#3d,#51,#10
	db #38,#51,#10,#bd,#4e,#47,#3d,#51
	db #10,#bd,#4e,#47,#41,#51,#10,#bd
	db #4e,#47,#bd,#4e,#47,#3d,#51,#10
	db #bd,#4e,#47,#41,#51,#10,#bd,#4e
	db #47,#3d,#51,#10,#ff,#53,#5f,#11
	db #4f,#5f,#11,#cf,#4e,#47,#53,#5f
	db #11,#4f,#5f,#11,#cf,#4e,#47,#53
	db #5f,#11,#cf,#4e,#47,#54,#5f,#11
	db #cf,#4e,#47,#cf,#4e,#47,#4f,#5f
	db #11,#4d,#5f,#11,#cf,#4e,#47,#53
	db #5f,#11,#cf,#4e,#47,#51,#5f,#11
	db #4d,#5f,#11,#cd,#4e,#47,#51,#5f
	db #11,#4d,#5f,#11,#cd,#4e,#47,#51
	db #5f,#11,#cd,#4e,#47,#52,#5f,#11
	db #cd,#4e,#47,#cd,#4e,#47,#51,#5f
	db #11,#4d,#5f,#11,#cd,#4e,#47,#51
	db #5f,#11,#cd,#4e,#47,#4f,#5f,#11
	db #4b,#5f,#11,#cb,#4e,#47,#4f,#5f
	db #11,#4b,#5f,#11,#cb,#4e,#47,#46
	db #5f,#11,#cb,#4e,#47,#4b,#5f,#11
	db #cb,#4e,#47,#cb,#4e,#47,#4d,#5f
	db #11,#4b,#5f,#11,#cb,#4e,#47,#4d
	db #5f,#11,#cb,#4e,#47,#49,#5f,#11
	db #44,#5f,#11,#c9,#4e,#47,#49,#5f
	db #11,#44,#5f,#11,#c9,#4e,#47,#49
	db #5f,#11,#c9,#4e,#47,#4d,#5f,#11
	db #c9,#4e,#47,#c9,#4e,#47,#49,#5f
	db #11,#c9,#4e,#47,#4d,#5f,#11,#c9
	db #4e,#47,#49,#5f,#11,#ff,#53,#5f
	db #11,#4e,#5f,#11,#d3,#4e,#47,#53
	db #5f,#11,#4e,#5f,#11,#d3,#4e,#47
	db #53,#5f,#11,#d3,#4e,#47,#4e,#5f
	db #11,#d3,#4e,#47,#d3,#4e,#47,#53
	db #5f,#11,#57,#5f,#11,#d3,#4e,#47
	db #53,#5f,#11,#d3,#4e,#47,#55,#5f
	db #11,#51,#5f,#11,#d1,#4e,#47,#55
	db #5f,#11,#51,#5f,#11,#d1,#4e,#47
	db #4c,#5f,#11,#d1,#4e,#47,#51,#5f
	db #11,#d1,#4e,#47,#d1,#4e,#47,#55
	db #5f,#11,#51,#5f,#11,#d1,#4e,#47
	db #4c,#5f,#11,#d1,#4e,#47,#53,#5f
	db #11,#4f,#5f,#11,#cf,#4e,#47,#53
	db #5f,#11,#4f,#5f,#11,#cf,#4e,#47
	db #53,#5f,#11,#cf,#4e,#47,#4f,#5f
	db #11,#cf,#4e,#47,#cf,#4e,#47,#53
	db #5f,#11,#56,#5f,#11,#cf,#4e,#47
	db #53,#5f,#11,#cf,#4e,#47,#53,#5f
	db #11,#54,#5f,#11,#cd,#4e,#47,#53
	db #5f,#11,#54,#5f,#11,#cd,#4e,#47
	db #4d,#5f,#11,#cd,#4e,#47,#51,#5f
	db #11,#cd,#4e,#47,#cd,#4e,#47,#4d
	db #5f,#11,#cd,#4e,#47,#51,#5f,#11
	db #cd,#4e,#47,#4d,#5f,#11,#ff,#4b
	db #4b,#12,#46,#4f,#11,#cb,#4e,#47
	db #4b,#4f,#11,#4d,#4b,#13,#cb,#4e
	db #47,#4b,#4f,#11,#cb,#4e,#47,#4d
	db #4f,#11,#cb,#4e,#47,#cb,#4e,#47
	db #4b,#4f,#11,#4d,#4b,#15,#cb,#4e
	db #47,#4b,#4f,#11,#cb,#4e,#47,#49
	db #4f,#11,#44,#4f,#11,#c9,#4e,#47
	db #49,#4f,#11,#44,#4b,#16,#c9,#4e
	db #47,#49,#4f,#11,#c9,#4e,#47,#4b
	db #4f,#11,#c9,#4e,#47,#c9,#4e,#47
	db #49,#4f,#11,#44,#4b,#17,#c9,#4e
	db #47,#49,#4f,#11,#c9,#4e,#47,#47
	db #4f,#11,#42,#4f,#11,#c7,#4e,#47
	db #47,#4f,#11,#4b,#4b,#18,#c7,#4e
	db #47,#47,#4f,#11,#c7,#4e,#47,#4b
	db #4f,#11,#c7,#4e,#47,#c7,#4e,#47
	db #47,#4f,#11,#42,#4b,#19,#c7,#4e
	db #47,#47,#4f,#11,#c7,#4e,#47,#49
	db #4f,#11,#45,#4b,#18,#c5,#4e,#47
	db #45,#4f,#11,#49,#4b,#1a,#c5,#4e
	db #47,#4c,#4f,#11,#c5,#4e,#47,#4b
	db #4f,#11,#c5,#4e,#47,#45,#4b,#1b
	db #47,#4f,#11,#c5,#4e,#47,#49,#4f
	db #11,#c5,#4e,#47,#45,#4f,#11,#ff
	db #0d,#06,#02,#50,#11,#a0,#c9,#10
	db #03,#18,#01,#4e,#10,#02,#50,#10
	db #02,#4c,#10,#06,#4e,#10,#04,#4c
	db #10,#02,#4b,#10,#02,#c7,#10,#02
	db #13,#01,#46,#10,#0c,#02,#27,#01
	db #03,#27,#01,#02,#27,#02,#02,#28
	db #0e,#ff,#00,#02,#50,#10,#0a,#c9
	db #10,#03,#18,#01,#4e,#10,#02,#50
	db #10,#02,#4c,#10,#06,#4e,#10,#04
	db #4e,#10,#02,#d2,#10,#03,#11,#01
	db #d3,#10,#52,#10,#15,#20,#08,#30
	db #02,#23,#08,#28,#03,#20,#08,#30
	db #03,#23,#08,#28,#02,#ff,#74,#21
	db #10,#25,#08,#24,#03,#74,#31,#10
	db #b1,#08,#24,#a5,#08,#24,#74,#21
	db #10,#31,#08,#24,#02,#74,#21,#10
	db #a5,#08,#24,#74,#21,#10,#b1,#08
	db #24,#25,#08,#24,#02,#74,#21,#10
	db #21,#08,#2d,#03,#74,#31,#10,#ad
	db #08,#2d,#a1,#08,#2d,#74,#31,#10
	db #2f,#08,#28,#02,#74,#21,#10,#a3
	db #08,#28,#74,#31,#10,#74,#21,#10
	db #74,#21,#10,#a3,#08,#28,#74,#21
	db #10,#1e,#08,#35,#02,#aa,#08,#35
	db #74,#31,#10,#9e,#08,#35,#aa,#08
	db #35,#74,#31,#10,#2a,#08,#35,#02
	db #74,#21,#10,#9e,#08,#35,#74,#31
	db #10,#74,#21,#10,#74,#21,#10,#aa
	db #08,#35,#74,#21,#20,#9e,#08,#35
	db #aa,#08,#35,#74,#31,#10,#9e,#08
	db #35,#aa,#08,#35,#74,#31,#10,#aa
	db #08,#35,#74,#31,#10,#1e,#08,#35
	db #02,#2f,#08,#28,#04,#ff,#74,#21
	db #10,#25,#08,#24,#03,#74,#31,#10
	db #b1,#08,#24,#a5,#08,#24,#74,#21
	db #10,#31,#08,#24,#02,#74,#21,#10
	db #a5,#08,#24,#74,#21,#10,#b1,#08
	db #24,#25,#08,#24,#02,#74,#21,#10
	db #21,#08,#2d,#03,#74,#31,#10,#ad
	db #08,#2d,#a1,#08,#2d,#74,#31,#10
	db #2f,#08,#28,#02,#74,#21,#10,#a3
	db #08,#28,#74,#31,#10,#74,#21,#10
	db #74,#21,#10,#a3,#08,#28,#74,#21
	db #10,#1e,#08,#35,#02,#aa,#08,#35
	db #74,#31,#10,#9e,#08,#35,#aa,#08
	db #35,#74,#31,#10,#2a,#08,#35,#02
	db #74,#21,#10,#9e,#08,#35,#74,#31
	db #10,#74,#21,#10,#74,#21,#10,#aa
	db #08,#35,#74,#21,#20,#9e,#08,#35
	db #aa,#08,#35,#74,#31,#10,#9e,#08
	db #35,#aa,#08,#35,#74,#31,#10,#aa
	db #08,#35,#74,#31,#10,#1e,#08,#35
	db #02,#20,#08,#30,#04,#ff,#74,#21
	db #10,#21,#08,#2d,#03,#74,#31,#10
	db #ad,#08,#2d,#a1,#08,#2d,#74,#21
	db #10,#2d,#08,#2d,#02,#74,#21,#10
	db #a1,#08,#2d,#74,#21,#10,#ad,#08
	db #2d,#21,#08,#2d,#02,#74,#21,#10
	db #1c,#08,#3c,#03,#74,#31,#10,#a8
	db #08,#3c,#9c,#08,#3c,#74,#21,#10
	db #28,#08,#3c,#02,#74,#21,#10,#9c
	db #08,#3c,#74,#21,#10,#74,#21,#10
	db #74,#21,#10,#9c,#08,#3c,#74,#21
	db #10,#23,#08,#28,#02,#af,#08,#28
	db #74,#21,#10,#a3,#08,#28,#af,#08
	db #28,#74,#31,#10,#2f,#08,#28,#02
	db #74,#21,#10,#a3,#08,#28,#74,#21
	db #10,#74,#31,#10,#74,#21,#10,#af
	db #08,#28,#74,#21,#20,#a3,#08,#28
	db #af,#08,#28,#74,#31,#10,#a3,#08
	db #28,#af,#08,#28,#74,#31,#10,#af
	db #08,#28,#74,#31,#10,#23,#08,#28
	db #02,#74,#31,#10,#f4,#30,#f4,#30
	db #f4,#30,#ff,#74,#21,#10,#21,#08
	db #2d,#03,#74,#31,#10,#ad,#08,#2d
	db #a1,#08,#2d,#74,#21,#10,#2d,#08
	db #2d,#02,#74,#21,#10,#a1,#08,#2d
	db #74,#31,#10,#ad,#08,#2d,#21,#08
	db #2d,#02,#74,#21,#10,#1c,#08,#3c
	db #03,#74,#31,#10,#a8,#08,#3c,#9c
	db #08,#3c,#74,#21,#10,#28,#08,#3c
	db #02,#74,#21,#10,#9c,#08,#3c,#74
	db #21,#10,#74,#21,#10,#74,#21,#10
	db #9c,#08,#3c,#74,#21,#10,#20,#08
	db #30,#02,#ac,#08,#30,#74,#31,#10
	db #a0,#08,#30,#ac,#08,#30,#74,#21
	db #10,#2c,#08,#30,#02,#74,#21,#10
	db #a0,#08,#30,#74,#21,#10,#74,#31
	db #10,#74,#21,#10,#ac,#08,#30,#74
	db #21,#20,#a0,#08,#30,#ac,#08,#30
	db #74,#31,#10,#a0,#08,#30,#ac,#08
	db #30,#74,#31,#10,#ac,#08,#30,#74
	db #31,#10,#20,#08,#30,#02,#74,#31
	db #10,#74,#70,#03,#ff,#74,#21,#10
	db #21,#08,#2d,#03,#74,#31,#10,#ad
	db #08,#2d,#a1,#08,#2d,#74,#21,#10
	db #2d,#08,#2d,#02,#74,#21,#10,#a1
	db #08,#2d,#74,#31,#10,#ad,#08,#2d
	db #21,#08,#2d,#02,#74,#21,#10,#1c
	db #08,#3c,#03,#74,#31,#10,#a8,#08
	db #3c,#9c,#08,#3c,#74,#31,#10,#28
	db #08,#3c,#02,#74,#21,#10,#9c,#08
	db #3c,#74,#31,#10,#74,#21,#10,#74
	db #21,#10,#9c,#08,#3c,#74,#21,#10
	db #23,#08,#28,#02,#af,#08,#28,#74
	db #31,#10,#a3,#08,#28,#af,#08,#28
	db #74,#21,#10,#2f,#08,#28,#02,#74
	db #21,#10,#a3,#08,#28,#74,#31,#10
	db #74,#21,#10,#74,#21,#10,#af,#08
	db #28,#74,#21,#20,#a3,#08,#28,#af
	db #08,#28,#74,#31,#10,#a3,#08,#28
	db #af,#08,#28,#74,#31,#10,#af,#08
	db #28,#74,#31,#10,#23,#08,#28,#02
	db #74,#31,#10,#74,#70,#03,#ff,#74
	db #21,#10,#21,#08,#2d,#03,#74,#31
	db #10,#ad,#08,#2d,#a1,#08,#2d,#74
	db #21,#10,#2d,#08,#2d,#02,#74,#21
	db #10,#a1,#08,#2d,#74,#31,#10,#ad
	db #08,#2d,#21,#08,#2d,#02,#74,#21
	db #10,#1c,#08,#3c,#03,#74,#31,#10
	db #a8,#08,#3c,#9c,#08,#3c,#74,#31
	db #10,#28,#08,#3c,#02,#74,#21,#10
	db #9c,#08,#3c,#74,#31,#10,#74,#21
	db #10,#74,#21,#10,#9c,#08,#3c,#74
	db #21,#10,#20,#08,#30,#02,#ac,#08
	db #30,#74,#31,#10,#a0,#08,#30,#ac
	db #08,#30,#74,#21,#10,#2c,#08,#30
	db #02,#74,#21,#10,#a0,#08,#30,#74
	db #31,#10,#74,#21,#10,#74,#21,#10
	db #ac,#08,#30,#74,#21,#20,#a0,#08
	db #30,#ac,#08,#30,#74,#31,#10,#a0
	db #08,#30,#ac,#08,#30,#74,#31,#10
	db #ac,#08,#30,#74,#31,#10,#20,#08
	db #30,#02,#74,#31,#10,#74,#70,#03
	db #ff,#74,#21,#10,#25,#08,#24,#03
	db #74,#31,#10,#b1,#08,#24,#a5,#08
	db #24,#74,#21,#10,#31,#08,#24,#02
	db #74,#21,#10,#a5,#08,#24,#74,#31
	db #10,#b1,#08,#24,#25,#08,#24,#02
	db #74,#21,#10,#21,#08,#2d,#03,#74
	db #31,#10,#ad,#08,#2d,#a1,#08,#2d
	db #74,#31,#10,#2f,#08,#28,#02,#74
	db #21,#10,#a3,#08,#28,#74,#31,#10
	db #74,#21,#10,#74,#21,#10,#a3,#08
	db #28,#74,#21,#10,#1e,#08,#35,#02
	db #aa,#08,#35,#74,#31,#10,#9e,#08
	db #35,#aa,#08,#35,#74,#21,#10,#2a
	db #08,#35,#02,#74,#21,#10,#9e,#08
	db #35,#74,#31,#10,#74,#21,#10,#74
	db #21,#10,#aa,#08,#35,#74,#21,#20
	db #9e,#08,#35,#aa,#08,#35,#74,#31
	db #10,#9e,#08,#35,#aa,#08,#35,#74
	db #31,#10,#aa,#08,#35,#74,#31,#10
	db #1e,#08,#35,#02,#74,#31,#10,#74
	db #71,#30,#ff,#00,#02,#3d,#10,#07
	db #03,#12,#01,#03,#13,#01,#03,#13
	db #01,#03,#13,#01,#03,#12,#01,#03
	db #13,#01,#03,#13,#01,#03,#13,#01
	db #03,#12,#01,#49,#10,#08,#4c,#10
	db #06,#03,#12,#01,#03,#12,#01,#50
	db #10,#19,#4e,#10,#04,#d1,#10,#ff
	db #00,#02,#50,#00,#10,#49,#10,#08
	db #4c,#10,#06,#03,#12,#01,#03,#12
	db #01,#50,#10,#18,#55,#10,#03,#53
	db #10,#03,#ff,#00,#02,#51,#10,#10
	db #51,#10,#03,#4c,#10,#03,#45,#10
	db #02,#53,#10,#03,#4e,#10,#03,#47
	db #10,#02,#51,#10,#10,#58,#10,#03
	db #57,#10,#03,#53,#10,#02,#55,#10
	db #04,#53,#00,#02,#ff,#00,#02,#51
	db #10,#10,#51,#10,#03,#4c,#10,#03
	db #45,#10,#02,#53,#10,#03,#4e,#10
	db #03,#47,#10,#02,#51,#10,#0a,#03
	db #31,#01,#03,#41,#01,#03,#41,#01
	db #03,#31,#01,#03,#31,#01,#03,#31
	db #01,#53,#00,#08,#f4,#20,#f4,#20
	db #f4,#30,#f4,#30,#f4,#30,#f4,#30
	db #ff,#74,#21,#10,#b1,#08,#24,#a5
	db #08,#24,#a5,#08,#24,#74,#31,#10
	db #a5,#08,#24,#74,#21,#10,#74,#21
	db #10,#a5,#08,#24,#74,#21,#10,#a5
	db #08,#24,#74,#21,#10,#74,#31,#10
	db #a5,#08,#24,#a5,#08,#24,#b1,#08
	db #24,#74,#21,#10,#b1,#08,#24,#a5
	db #08,#24,#a5,#08,#24,#74,#31,#10
	db #a5,#08,#24,#a5,#08,#24,#74,#21
	db #10,#a5,#08,#24,#b1,#08,#24,#74
	db #21,#10,#a5,#08,#24,#74,#31,#10
	db #a5,#08,#24,#a5,#08,#24,#b1,#08
	db #24,#74,#21,#10,#af,#08,#28,#a3
	db #08,#28,#a3,#08,#28,#74,#31,#10
	db #a3,#08,#28,#a3,#08,#28,#74,#21
	db #10,#a3,#08,#28,#af,#08,#28,#74
	db #21,#10,#74,#21,#10,#74,#31,#10
	db #a3,#08,#28,#a3,#08,#28,#af,#08
	db #28,#74,#21,#10,#ad,#08,#2d,#a1
	db #08,#2d,#a1,#08,#2d,#74,#31,#10
	db #a1,#08,#2d,#74,#21,#10,#74,#21
	db #10,#a1,#08,#2d,#74,#21,#10,#a1
	db #08,#2d,#74,#21,#10,#74,#31,#10
	db #74,#21,#10,#74,#31,#10,#74,#31
	db #10,#ff,#74,#21,#10,#b1,#00,#a5
	db #00,#a5,#00,#74,#31,#10,#a5,#00
	db #74,#21,#10,#74,#21,#10,#a5,#00
	db #74,#21,#10,#a5,#00,#74,#21,#10
	db #74,#31,#10,#a5,#00,#a5,#00,#b1
	db #00,#74,#21,#10,#b1,#00,#a5,#00
	db #a5,#00,#74,#31,#10,#a5,#00,#a5
	db #00,#74,#21,#10,#a5,#00,#b1,#00
	db #74,#21,#10,#a5,#00,#74,#31,#10
	db #a5,#00,#a5,#00,#b1,#00,#74,#21
	db #10,#af,#00,#a3,#00,#a3,#00,#74
	db #31,#10,#a3,#00,#a3,#00,#74,#21
	db #10,#a3,#00,#af,#00,#74,#21,#10
	db #74,#21,#10,#74,#31,#10,#a3,#00
	db #a3,#00,#af,#00,#74,#21,#10,#ad
	db #00,#a1,#00,#a1,#00,#74,#31,#10
	db #a1,#00,#74,#21,#10,#74,#21,#10
	db #a1,#00,#74,#21,#10,#a1,#00,#74
	db #21,#10,#74,#31,#10,#74,#21,#10
	db #74,#31,#10,#74,#31,#10,#ff,#f4
	db #20,#ab,#00,#9f,#00,#9f,#00,#f4
	db #30,#9f,#00,#f4,#20,#f4,#20,#9f
	db #00,#ab,#00,#f4,#20,#9f,#00,#f4
	db #30,#9f,#00,#9f,#00,#ab,#00,#f4
	db #20,#a9,#00,#9d,#00,#9d,#00,#f4
	db #30,#9d,#00,#f4,#20,#f4,#20,#9d
	db #00,#f4,#20,#f4,#20,#9d,#00,#f4
	db #30,#9d,#00,#f4,#20,#a9,#00,#f4
	db #20,#a7,#00,#9b,#00,#9b,#00,#f4
	db #30,#9b,#00,#9b,#00,#f4,#20,#9b
	db #00,#a7,#00,#f4,#20,#9b,#00,#f4
	db #30,#9b,#00,#9b,#00,#a7,#00,#f4
	db #20,#a5,#00,#99,#00,#99,#00,#f4
	db #30,#99,#00,#99,#00,#f4,#20,#99
	db #00,#a5,#00,#f4,#20,#99,#00,#f4
	db #30,#99,#00,#f4,#30,#f4,#30,#ff
	db #a3,#00,#af,#00,#a3,#00,#a3,#00
	db #af,#00,#a3,#00,#a3,#00,#af,#00
	db #a3,#00,#af,#00,#a3,#00,#a3,#00
	db #af,#00,#a3,#00,#a3,#00,#af,#00
	db #a1,#00,#ad,#00,#a1,#00,#a1,#00
	db #ad,#00,#a1,#00,#a1,#00,#ad,#00
	db #a1,#00,#ad,#00,#a1,#00,#a1,#00
	db #ad,#00,#a1,#00,#a1,#00,#ad,#00
	db #9f,#00,#ab,#00,#9f,#00,#9f,#00
	db #ab,#00,#9f,#00,#9f,#00,#ab,#00
	db #9f,#00,#ab,#00,#9f,#00,#9f,#00
	db #ab,#00,#9f,#00,#9f,#00,#ab,#00
	db #9d,#00,#a9,#00,#9d,#00,#9d,#00
	db #a9,#00,#9d,#00,#9d,#00,#a9,#00
	db #9d,#00,#a9,#00,#9d,#00,#9d,#00
	db #a9,#00,#9d,#00,#9d,#00,#a9,#00
	db #ff,#27,#0b,#10,#33,#0b,#10,#27
	db #0b,#10,#27,#0b,#10,#33,#0b,#10
	db #27,#0b,#10,#27,#0b,#11,#33,#0b
	db #11,#27,#0b,#11,#33,#0b,#11,#27
	db #0b,#11,#27,#0b,#11,#33,#0b,#12
	db #27,#0b,#12,#27,#0b,#12,#33,#0b
	db #12,#25,#0b,#12,#31,#0b,#12,#25
	db #0b,#13,#25,#0b,#13,#31,#0b,#13
	db #25,#0b,#13,#25,#0b,#13,#31,#0b
	db #13,#25,#0b,#14,#31,#0b,#14,#25
	db #0b,#14,#25,#0b,#14,#31,#0b,#14
	db #25,#0b,#14,#25,#0b,#15,#31,#0b
	db #15,#23,#0b,#15,#2f,#0b,#15,#23
	db #0b,#15,#23,#0b,#15,#2f,#0b,#16
	db #23,#0b,#16,#23,#0b,#16,#2f,#0b
	db #16,#23,#0b,#16,#2f,#0b,#16,#23
	db #0b,#16,#23,#0b,#17,#2f,#0b,#17
	db #23,#0b,#17,#23,#0b,#17,#2f,#0b
	db #17,#21,#0b,#17,#2d,#0b,#17,#21
	db #0b,#18,#21,#0b,#18,#2d,#0b,#18
	db #21,#0b,#18,#21,#0b,#18,#2d,#0b
	db #18,#21,#0b,#19,#2d,#0b,#19,#21
	db #0b,#19,#21,#0b,#5f,#ff
;
.music_info
	db "Acid Music Box 3 X-Track (1995)(Acid)(BaBar)",0
	db "ST-128 Module",0

	read "music_end.asm"