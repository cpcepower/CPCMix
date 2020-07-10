; Music of Mortal Intro (1994)(Power System)()(ST-128 Module)
; Ripped by Megachur the 01/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MORTALIN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
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
	db #23,#4e,#23,#46,#23,#dd,#75,#22
	db #dd,#74
	inc hl
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
	ld (hl),#20
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
	ld (hl),#20
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
	dw #4353,#4366,#4365,#438a
	dw #4387,#439a,#43ab,#43d3
	dw #43ed,#43d3,#4407,#4410
	dw #4432,#443a,#4459
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
	db #60,#49,#8d,#49,#ba,#49,#e0,#46
	db #20,#47,#40,#47,#00,#00,#e0,#46
	db #20,#47,#60,#47,#00,#00,#e0,#46
	db #80,#47,#40,#47,#1a,#06,#d2,#ff
	db #d2,#ff,#d2,#ff,#00,#00,#a0,#47
	db #e0,#47,#00,#48,#00,#00,#20,#48
	db #60,#48,#80,#48,#16,#0a,#d2,#ff
	db #d2,#ff,#d2,#ff,#00,#00,#d2,#ff
	db #d2,#ff,#d2,#ff,#00,#00,#d2,#ff
	db #d2,#ff,#d2,#ff,#00,#00,#d2,#ff
	db #d2,#ff,#d2,#ff,#00,#00,#a0,#48
	db #e0,#48,#40,#47,#16,#0a,#d2,#ff
	db #d2,#ff,#d2,#ff,#00,#00,#d2,#ff
	db #d2,#ff,#d2,#ff,#00,#00,#d2,#ff
	db #d2,#ff,#d2,#ff,#00,#00,#d2,#ff
	db #d2,#ff,#d2,#ff,#00,#00,#d2,#ff
.l46c0 equ $ + 6
	db #d2,#ff,#d2,#ff,#00,#00,#d2,#ff
	db #00,#49,#20,#49,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#40,#49,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d2,#ff,#d2,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0d
	db #0d,#0d,#0e,#0e,#0e,#0e,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0e,#0d,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#00,#00
	db #20,#00,#40,#00,#60,#00,#a0,#00
	db #e0,#00,#00,#00,#20,#00,#40,#00
	db #60,#00,#a0,#00,#e0,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#80,#00
	db #a0,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#06,#05,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #06,#08,#0b,#10,#02,#00,#06,#08
	db #0b,#10,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0c,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#fd,#fd
	db #f9,#f9,#00,#00,#fd,#fd,#f9,#f9
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#00,#00
	db #03,#03,#07,#07,#00,#00,#03,#03
	db #07,#07,#00,#00,#03,#03,#07,#07
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #03,#03,#07,#07,#00,#00,#00,#e7
	db #49,#00,#e7,#49,#00,#03,#4a,#00
	db #38,#4a,#00,#6d,#4a,#00,#a2,#4a
	db #00,#d7,#4a,#00,#dc,#4a,#00,#e1
	db #4a,#00,#00,#4b,#00,#d7,#4a,#00
	db #dc,#4a,#00,#e1,#4a,#00,#00,#4b
	db #80,#66,#49,#00,#1f,#4b,#00,#1f
	db #4b,#00,#6e,#4b,#00,#7f,#4b,#00
	db #9a,#4b,#00,#a1,#4b,#00,#ae,#4b
	db #00,#ca,#4b,#00,#d9,#4b,#00,#e3
	db #4b,#00,#ae,#4b,#00,#ca,#4b,#00
	db #d9,#4b,#00,#e3,#4b,#80,#93,#49
	db #00,#e6,#4b,#00,#e6,#4b,#00,#e6
	db #4b,#00,#1b,#4c,#00,#50,#4c,#00
	db #85,#4c,#00,#ba,#4c,#00,#f3,#4c
	db #00,#2c,#4d,#00,#65,#4d,#00,#ba
	db #4c,#00,#f3,#4c,#00,#2c,#4d,#00
	db #65,#4d,#80,#c0,#49,#42,#a0,#18
	db #02,#12,#01,#02,#12,#01,#02,#12
	db #01,#02,#12,#01,#02,#12,#01,#02
	db #12,#01,#02,#12,#01,#02,#12,#01
	db #ff,#4e,#0f,#21,#ce,#00,#4e,#00
	db #02,#ce,#00,#4e,#00,#02,#4e,#00
	db #02,#ce,#00,#4e,#00,#02,#ce,#00
	db #4e,#00,#02,#4e,#00,#02,#ce,#00
	db #4e,#00,#02,#ce,#00,#4e,#00,#02
	db #4e,#00,#02,#ce,#00,#4e,#00,#02
	db #ce,#00,#4e,#00,#02,#ff,#4a,#0f
	db #21,#ca,#00,#4a,#00,#02,#ca,#00
	db #4a,#00,#02,#4a,#00,#02,#ca,#00
	db #4a,#00,#02,#ca,#00,#4a,#00,#02
	db #4a,#00,#02,#ca,#00,#4a,#00,#02
	db #ca,#00,#4a,#00,#02,#4a,#00,#02
	db #ca,#00,#4a,#00,#02,#ca,#00,#4a
	db #00,#02,#ff,#47,#0f,#21,#c7,#00
	db #47,#00,#02,#c7,#00,#47,#00,#02
	db #47,#00,#02,#c7,#00,#47,#00,#02
	db #c7,#00,#47,#00,#02,#47,#00,#02
	db #c7,#00,#47,#00,#02,#c7,#00,#47
	db #00,#02,#47,#00,#02,#c7,#00,#47
	db #00,#02,#c7,#00,#47,#00,#02,#ff
	db #49,#0f,#21,#c9,#00,#49,#00,#02
	db #c9,#00,#49,#00,#02,#49,#00,#02
	db #c9,#00,#49,#00,#02,#c9,#00,#49
	db #00,#02,#49,#00,#02,#c9,#00,#49
	db #00,#02,#c9,#00,#49,#00,#02,#49
	db #00,#02,#c9,#00,#49,#00,#02,#c9
	db #00,#49,#00,#02,#ff,#49,#2f,#02
	db #20,#ff,#4a,#2f,#01,#20,#ff,#47
	db #1f,#47,#47,#10,#03,#47,#10,#03
	db #47,#10,#03,#47,#10,#03,#47,#10
	db #04,#47,#10,#03,#47,#10,#03,#47
	db #10,#03,#47,#10,#03,#ff,#4c,#1f
	db #41,#4c,#10,#03,#4c,#10,#03,#4c
	db #10,#03,#4c,#10,#03,#4c,#10,#04
	db #4c,#10,#03,#4c,#10,#03,#4c,#10
	db #03,#4c,#10,#03,#ff,#42,#0b,#10
	db #49,#0b,#13,#42,#0b,#15,#42,#0b
	db #13,#42,#0b,#20,#42,#0b,#15,#42
	db #0b,#13,#42,#0b,#20,#42,#0b,#15
	db #42,#0b,#13,#42,#0b,#20,#49,#0b
	db #10,#42,#0b,#13,#42,#0b,#10,#49
	db #0b,#13,#42,#0b,#15,#42,#0b,#13
	db #42,#0b,#20,#42,#0b,#15,#42,#0b
	db #13,#42,#0b,#20,#42,#0b,#15,#42
	db #0b,#13,#42,#0b,#20,#49,#0b,#10
	db #42,#0b,#13,#ff,#46,#a0,#10,#47
	db #a0,#06,#49,#a0,#06,#46,#a2,#10
	db #03,#02,#11,#01,#ff,#45,#a0,#0c
	db #42,#a0,#04,#45,#a0,#04,#42,#a0
	db #04,#c9,#a0,#02,#11,#01,#02,#11
	db #01,#02,#11,#01,#47,#a0,#04,#ff
	db #42,#a0,#1f,#03,#12,#01,#ff,#44
	db #a0,#14,#45,#a0,#04,#47,#a0,#04
	db #4a,#a0,#04,#ff,#49,#00,#04,#47
	db #00,#02,#45,#00,#04,#49,#00,#0c
	db #42,#00,#02,#49,#00,#02,#49,#00
	db #02,#47,#00,#02,#45,#00,#02,#ff
	db #00,#18,#45,#00,#02,#47,#00,#02
	db #49,#00,#02,#45,#00,#02,#ff,#47
	db #00,#1c,#45,#00,#02,#47,#00,#02
	db #ff,#00,#20,#ff,#28,#58,#1e,#02
	db #2a,#58,#1b,#02,#38,#41,#20,#2a
	db #58,#1b,#04,#2a,#58,#1b,#02,#38
	db #41,#20,#2a,#58,#1b,#02,#28,#58
	db #1e,#02,#2a,#58,#1b,#02,#38,#41
	db #20,#2a,#58,#1b,#04,#2a,#58,#1b
	db #02,#38,#41,#20,#25,#58,#24,#02
	db #ff,#25,#58,#24,#02,#26,#58,#22
	db #02,#38,#41,#20,#26,#58,#22,#04
	db #26,#58,#22,#02,#38,#41,#20,#21
	db #58,#2d,#02,#25,#58,#24,#02,#26
	db #58,#22,#02,#38,#41,#20,#26,#58
	db #22,#04,#26,#58,#22,#02,#38,#41
	db #20,#21,#58,#2d,#02,#ff,#2d,#58
	db #16,#02,#2f,#58,#14,#02,#38,#41
	db #20,#2f,#58,#14,#04,#2f,#58,#14
	db #02,#38,#41,#20,#2a,#58,#1b,#02
	db #2d,#58,#16,#02,#2f,#58,#14,#02
	db #38,#41,#20,#2f,#58,#14,#04,#2f
	db #58,#14,#02,#38,#41,#20,#2a,#58
	db #1b,#02,#ff,#2f,#58,#14,#02,#31
	db #58,#12,#02,#38,#41,#20,#31,#58
	db #12,#04,#31,#58,#12,#02,#38,#41
	db #20,#2c,#58,#18,#02,#2f,#58,#14
	db #02,#31,#58,#12,#02,#38,#41,#20
	db #31,#58,#12,#04,#31,#58,#12,#02
	db #38,#41,#20,#2c,#58,#18,#02,#ff
	db #2a,#51,#20,#aa,#50,#aa,#50,#b8
	db #40,#aa,#50,#2a,#50,#02,#2a,#50
	db #02,#aa,#50,#aa,#50,#b8,#40,#aa
	db #50,#2a,#50,#02,#2a,#50,#02,#aa
	db #50,#aa,#50,#b8,#40,#aa,#50,#2a
	db #50,#02,#2a,#50,#02,#aa,#50,#aa
	db #50,#b8,#40,#aa,#50,#28,#50,#02
	db #ff,#26,#51,#20,#a6,#50,#a6,#50
	db #b8,#40,#a6,#50,#26,#50,#02,#26
	db #50,#02,#a6,#50,#a6,#50,#b8,#40
	db #a6,#50,#26,#50,#02,#26,#50,#02
	db #a6,#50,#a6,#50,#b8,#40,#a6,#50
	db #26,#50,#02,#26,#50,#02,#a6,#50
	db #a6,#50,#b8,#40,#a6,#50,#25,#50
	db #02,#ff,#2f,#51,#20,#af,#50,#af
	db #50,#b8,#40,#af,#50,#2f,#50,#02
	db #2f,#50,#02,#af,#50,#af,#50,#b8
	db #40,#af,#50,#2f,#50,#02,#2f,#50
	db #02,#af,#50,#af,#50,#b8,#40,#af
	db #50,#2f,#50,#02,#2f,#50,#02,#af
	db #50,#af,#50,#b8,#40,#af,#50,#2f
	db #50,#02,#ff,#28,#51,#20,#a8,#50
	db #a8,#50,#b8,#40,#a8,#50,#28,#50
	db #02,#28,#50,#02,#a8,#50,#a8,#50
	db #b8,#40,#a8,#50,#28,#50,#02,#28
	db #50,#02,#a8,#50,#a8,#50,#b8,#40
	db #a8,#50,#28,#50,#02,#28,#50,#02
	db #a8,#50,#a8,#50,#b8,#40,#a8,#50
	db #28,#50,#02,#ff,#00,#11,#00,#c0
	db #21,#cb,#4d,#7e,#23,#32,#b3,#4d
	db #7a,#fe,#00,#ca,#ca,#4d,#7e,#47
	db #fe,#01,#ca,#be,#4d,#78,#12,#13
	db #23,#c3,#aa,#4d,#23,#7e,#23,#46
	db #23,#12,#13,#10,#fc,#c3,#aa,#4d
	db #c9,#02,#02,#00,#c4,#02,#0f,#62
	db #02,#ff,#07,#88,#02,#00,#03,#ff
	db #ff,#88,#77,#02,#ff,#12,#99,#02
	db #ff,#03,#88,#00,#33,#02,#ff,#03
	db #02,#00,#04,#77,#02,#ff,#24,#00
	db #77,#02,#ff,#12,#03,#78,#87,#33
	db #25,#00,#06,#03,#3b,#02,#ff,#13
	db #cf,#0f,#3f,#02,#ff,#06,#9f,#02
	db #ff,#05,#88,#33,#00,#00,#77,#cc
	db #33,#02,#ff,#19,#ab,#0f,#69,#3b
	db #25,#06,#25,#08,#bb,#02,#ff,#0f
	db #ab,#95,#4a,#ad,#25,#45,#95,#02
	db #ff,#17,#ed,#f7,#02,#ff,#03,#ef
	db #a5,#02,#ff,#04,#cf,#5a,#7f,#5a
	db #7f,#ff,#5a,#7b,#02,#ff,#1a,#ab
	db #95,#2e,#ad,#47,#45,#95,#02,#ff
	db #10,#dd,#5b,#23,#4b,#11,#56,#95
	db #02,#ff,#12,#fc,#02,#f0,#06,#f3
	db #ff,#ff,#fe,#f0,#f7,#02,#ff,#03
	db #db,#f0,#f7,#f9,#ff,#bc,#f0,#f7
	db #02,#ff,#1a,#dd,#5b,#33,#4b,#00
	db #34,#95,#02,#ff,#5f,#77,#ff,#dd
	db #02,#ff,#09,#02,#00,#ff,#02,#00
	db #ff,#02,#00,#ff,#02,#00,#ff,#02
	db #00,#ff,#02,#00,#b9,#02,#f0,#62
	db #02,#ff,#07,#00,#0f,#47,#6e,#33
	db #ff,#13,#33,#02,#ff,#12,#00,#77
	db #88,#02,#00,#03,#11,#ff,#ff,#88
	db #02,#00,#04,#33,#ff,#ff,#dd,#02
	db #ff,#04,#77,#02,#ff,#1a,#88,#02
	db #00,#03,#ff,#ff,#88,#77,#02,#ff
	db #0e,#56,#96,#3f,#00,#25,#77,#00
	db #3c,#3b,#02,#ff,#14,#0f,#1f,#02
	db #ff,#06,#1f,#02,#ff,#05,#8f,#3f
	db #0f,#0f,#ff,#cf,#3f,#02,#ff,#19
	db #03,#78,#87,#33,#25,#00,#06,#03
	db #3b,#02,#ff,#0f,#ab,#95,#4a,#ad
	db #25,#45,#95,#02,#ff,#17,#fe,#7b
	db #02,#ff,#03,#fe,#5a,#02,#ff,#04
	db #de,#a5,#7f,#a5,#ff,#ef,#a5,#b7
	db #02,#ff,#1a,#ab,#95,#4a,#ad,#25
	db #45,#95,#02,#ff,#10,#cc,#2d,#11
	db #4b,#77,#ab,#95,#02,#ff,#12,#fc
	db #02,#f0,#05,#e1,#df,#ff,#ff,#fe
	db #f0,#f7,#02,#ff,#03,#e9,#f8,#f0
	db #5a,#e1,#6f,#78,#f7,#02,#ff,#1a
	db #dd,#5b,#23,#4b,#11,#56,#95,#02
	db #ff,#6b,#02,#00,#ff,#02,#00,#ff
	db #02,#00,#ff,#02,#00,#ff,#02,#00
	db #ff,#02,#00,#b9,#02,#ff,#68,#ee
	db #8f,#4b,#56,#87,#08,#ee,#07,#33
	db #02,#ff,#11,#ee,#02,#00,#06,#11
	db #ff,#ee,#02,#00,#05,#33,#ff,#ff
	db #99,#02,#ff,#04,#33,#02,#ff,#1a
	db #00,#0f,#47,#6e,#33,#ff,#13,#33
	db #02,#ff,#0e,#07,#5e,#7f,#ff,#ad
	db #00,#47,#e1,#3b,#02,#ff,#14,#cf
	db #0f,#02,#ff,#06,#0f,#02,#ff,#05
	db #0f,#3f,#0f,#0f,#ff,#cf,#3f,#02
	db #ff,#19,#56,#96,#3f,#00,#25,#77
	db #00,#3c,#3b,#02,#ff,#0f,#89,#95
	db #4a,#ad,#25,#45,#95,#02,#ff,#18
	db #d3,#02,#ff,#03,#ef,#e1,#02,#ff
	db #04,#ed,#5a,#ff,#5a,#ff,#fe,#5a
	db #7b,#02,#ff,#1a,#ab,#95,#4a,#ad
	db #25,#45,#95,#02,#ff,#10,#ee,#ad
	db #00,#8f,#77,#99,#1d,#02,#ff,#12
	db #de,#02,#f0,#04,#e1,#7f,#df,#ff
	db #ff,#fe,#f0,#b7,#02,#ff,#03,#f8
	db #7f,#f0,#5a,#f0,#b7,#02,#ff,#1c
	db #cc,#2d,#11,#4b,#77,#ab,#95,#02
	db #ff,#6b,#02,#00,#ff,#02,#00,#ff
	db #02,#00,#ff,#02,#00,#ff,#02,#00
	db #ff,#02,#00,#b9,#02,#ff,#68,#ee
	db #bc,#97,#23,#69,#2e,#cc,#2d,#bb
	db #02,#ff,#11,#ee,#02,#00,#06,#11
	db #ff,#88,#02,#00,#05,#33,#ff,#ff
	db #11,#02,#ff,#04,#33,#02,#ff,#19
	db #ee,#8f,#4b,#56,#87,#08,#ee,#07
	db #33,#02,#ff,#0e,#37,#12,#0f,#0f
	db #2d,#0e,#34,#c3,#3b,#02,#ff,#14
	db #ef,#0f,#7f,#02,#ff,#05,#0f,#02
	db #ff,#05,#0f,#7f,#0f,#1f,#ff,#cf
	db #3f,#02,#ff,#19,#07,#5e,#7f,#ff
	db #ad,#00,#47,#e1,#3b,#02,#ff,#0f
	db #89,#95,#4a,#ad,#25,#45,#95,#02
	db #ff,#18,#f9,#02,#ff,#03,#fe,#b4
	db #7f,#02,#ff,#03,#fc,#f0,#ff,#e1
	db #ff,#de,#f0,#f3,#02,#ff,#1a,#89
	db #95,#4a,#ad,#25,#45,#95,#02,#ff
	db #10,#ee,#26,#66,#47,#77,#cc,#9d
	db #02,#ff,#12,#de,#02,#f0,#03,#c3
	db #ff,#ff,#fd,#ff,#ff,#fe,#f0,#f3
	db #02,#ff,#03,#f8,#97,#fc,#3c,#f0
	db #87,#3f,#02,#ff,#1b,#ee,#ad,#00
	db #8f,#77,#99,#1d,#02,#ff,#6b,#02
	db #00,#ff,#02,#00,#ff,#02,#00,#ff
	db #02,#00,#ff,#02,#00,#ff,#02,#00
	db #b9,#02,#ff,#68,#ee,#ad,#6e,#99
	db #3c,#86,#89,#78,#3b,#02,#ff,#11
	db #cc,#02,#00,#06,#11,#ee,#02,#00
	db #06,#33,#ff,#ee,#11,#02,#ff,#03
	db #ee,#33,#02,#ff,#19,#ee,#bc,#97
	db #23,#69,#2e,#cc,#2d,#bb,#02,#ff
	db #0e,#00,#03,#02,#f0,#03,#e1,#07
	db #97,#33,#02,#ff,#15,#8f,#3f,#02
	db #ff,#05,#0f,#02,#ff,#04,#ef,#0f
	db #7f,#0f,#1f,#ff,#8f,#3f,#02,#ff
	db #19,#37,#12,#0f,#0f,#2d,#0e,#34
	db #c3,#3b,#02,#ff,#0f,#cd,#95,#4a
	db #ad,#25,#01,#95,#02,#ff,#18,#fc
	db #02,#ff,#03,#fe,#78,#7f,#02,#ff
	db #03,#de,#a5,#ff,#4b,#ff,#ed,#d2
	db #b7,#02,#ff,#1a,#89,#95,#4a,#ad
	db #25,#45,#95,#02,#ff,#11,#00,#ff
	db #23,#77,#ee,#15,#02,#ff,#12,#fe
	db #f0,#c3,#02,#ff,#08,#3c,#f3,#02
	db #ff,#03,#cf,#f1,#ff,#bc,#f0,#f0
	db #87,#3f,#02,#ff,#1a,#ee,#26,#66
	db #47,#77,#cc,#9d,#02,#ff,#6b,#02
	db #00,#ff,#02,#00,#ff,#02,#00,#ff
	db #02,#00,#ff,#02,#00,#ff,#02,#00
	db #b9,#02,#ff,#68,#ee,#9f,#01,#08
	db #ad,#4a,#03,#c3,#3b,#02,#ff,#11
	db #cc,#00,#11,#33,#ff,#ff,#cc,#11
	db #cc,#00,#11,#ff,#ff,#00,#00,#33
	db #ff,#cc,#33,#02,#ff,#03,#ee,#33
	db #02,#ff,#19,#ee,#ad,#6e,#99,#3c
	db #86,#89,#78,#3b,#02,#ff,#0e,#11
	db #8b,#87,#0f,#2d,#0f,#01,#84,#02
	db #ff,#16,#cf,#1f,#02,#ff,#05,#0f
	db #02,#ff,#04,#ef,#0f,#7f,#0f,#3f
	db #ff,#8f,#3f,#02,#ff,#19,#00,#03
	db #02,#f0,#03,#e1,#07,#97,#33,#02
	db #ff,#0f,#cd,#a6,#8e,#2d,#17,#03
	db #95,#02,#ff,#18,#fe,#02,#ff,#03
	db #fe,#d2,#f7,#02,#ff,#03,#ed,#d2
	db #ff,#d3,#ff,#bc,#a5,#b7,#02,#ff
	db #1a,#cd,#95,#4a,#ad,#25,#01,#95
	db #02,#ff,#11,#11,#ff,#99,#77,#ff
	db #11,#02,#ff,#23,#f1,#ff,#ff,#f8
	db #f0,#f0,#f3,#02,#ff,#1b,#44,#ff
	db #23,#77,#ee,#15,#02,#ff,#09,#02
	db #f0,#62,#02,#00,#ff,#02,#00,#ff
	db #02,#00,#ff,#02,#00,#ff,#02,#00
	db #ff,#02,#00,#b9,#02,#ff,#68,#88
	db #11,#1e,#2a,#25,#8e,#16,#86,#33
	db #02,#ff,#12,#ee,#aa,#17,#02,#ff
	db #04,#88,#11,#ff,#df,#ff,#ff,#88
	db #77,#ff,#cc,#33,#88,#11,#ff,#ee
	db #33,#02,#ff,#19,#ee,#9f,#01,#08
	db #ad,#4a,#03,#c3,#3b,#02,#ff,#0f
	db #ab,#84,#00,#ad,#00,#45,#95,#02
	db #ff,#17,#0f,#02,#ff,#04,#ef,#0f
	db #02,#ff,#04,#ef,#0f,#7f,#0f,#3f
	db #ff,#8f,#3f,#02,#ff,#19,#11,#8b
	db #87,#0f,#2d,#0f,#01,#84,#02,#ff
	db #10,#cd,#a6,#46,#2d,#26,#12,#95
	db #02,#ff,#19,#7f,#ff,#ff,#fe,#f0
	db #f7,#02,#ff,#03,#fc,#78,#ff,#f9
	db #ff,#f8,#f0,#b7,#02,#ff,#1a,#cd
	db #a6,#8e,#2d,#17,#03,#95,#02,#ff
	db #11,#bb,#ff,#cc,#77,#ff,#99,#02
	db #ff,#45,#11,#ff,#99,#77,#ff,#11
	db #02,#ff,#09,#02,#0f,#62,#02,#00
	db #ff,#02,#00,#ff,#02,#00,#ff,#02
	db #00,#ff,#02,#00,#ff,#02,#00,#b9
	db #02,#ff,#09,#00,#77,#02,#ff,#5d
	db #ab,#0f,#69,#3b,#25,#06,#25,#08
	db #bb,#02,#ff,#13,#89,#0f,#7f,#02
	db #ff,#03,#99,#ff,#ff,#9f,#ff,#ff
	db #ee,#77,#ff,#88,#33,#00,#00,#77
	db #ee,#33,#02,#ff,#19,#88,#11,#1e
	db #2a,#25,#8e,#16,#86,#33,#02,#ff
	db #0f,#ab,#95,#2e,#ad,#47,#45,#95
	db #02,#ff,#17,#da,#7f,#02,#ff,#03
	db #ef,#5a,#02,#ff,#04,#de,#0f,#7f
	db #0f,#7f,#ff,#0f,#3f,#02,#ff,#1a
	db #ab,#84,#00,#ad,#00,#45,#95,#02
	db #ff,#10,#dd,#5b,#33,#4b,#00,#34
	db #95,#02,#ff,#12,#fc,#97,#02,#ff
	db #04,#9e,#f1,#ff,#ff,#fe,#f0,#f7
	db #02,#ff,#03,#be,#c3,#ff,#f9,#ff
	db #f0,#f0,#f7,#02,#ff,#1a,#cd,#a6
	db #46,#2d,#26,#12,#95,#02,#ff,#14
	db #77,#ff,#dd,#02,#ff,#45,#bb,#ff
	db #cc,#77,#ff,#99,#02,#ff,#09,#02
	db #00,#ff,#02,#00,#ff,#02,#00,#ff
	db #02,#00,#ff,#02,#00,#ff,#02,#00
;
.music_info
	db "Mortal Intro (1994)(Power System)()",0
	db "ST-128 Module",0

	read "music_end.asm"
