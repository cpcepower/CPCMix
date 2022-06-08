; Music of Dracula Fanz Issue 5 - Ze Meeting 95 (1995)(Dracula Fanz Team)(Tom & Jerry of GPA)(ST-128 Module)
; Ripped by Megachur the 28/05/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DRFI5ZM9.BIN"
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
	db #41,#53,#54,#20,#53,#59,#53,#54
	db #45,#4d,#2d,#39,#34
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
	db #01,#38,#0f,#08,#06,#39,#01,#01
.l44cf equ $ + 2
.l44ce equ $ + 1
	db #38,#0f,#08
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
	db #08,#00,#01,#08,#b3,#00,#00,#41
.l45be equ $ + 6
	db #00,#00,#00,#00,#e0,#48,#e0,#46
	db #00,#48,#40,#47,#00,#00,#06,#1a
.l45cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #45,#4b,#27,#49,#00,#40,#00,#00
.l45de equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l45e2 equ $ + 2
	db #03,#10,#cc,#02,#00,#1d,#00,#00
.l45ec equ $ + 4
	db #00,#00,#00,#00,#e0,#46,#60,#47
	db #40,#47,#00,#00,#06,#1a,#00,#00
.l45fd equ $ + 5
	db #00,#00,#00,#00,#00,#01,#3b,#4d
	db #9f,#49,#00,#20,#00,#00,#00,#00
.l460c equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l4610
	db #77,#00,#10,#3c,#00,#00,#00,#00
.l461a equ $ + 2
	db #00,#00,#e0,#46,#20,#47,#40,#47
	db #00,#00,#06,#1a,#00,#00,#00,#00
.l462b equ $ + 3
	db #00,#00,#00,#01,#45,#4e,#17,#4a
	db #00,#10,#00,#00,#00,#00,#00,#00
.l463a equ $ + 2
	db #01,#01,#00,#49,#78,#49,#f0,#49
.l4640
	db #d2,#0f,#12,#50,#12,#40,#50,#50
	db #e0,#46,#20,#47,#40,#47,#00,#00
	db #e0,#46,#60,#47,#40,#47,#00,#00
	db #80,#47,#c0,#47,#e0,#47,#07,#00
	db #e0,#46,#00,#48,#40,#47,#00,#00
	db #20,#48,#60,#48,#80,#48,#1a,#00
	db #e0,#46,#a0,#48,#c0,#48,#09,#00
	db #0c,#32,#ec,#91,#ec,#91,#9a,#92
	db #6c,#b3,#4c,#f2,#4c,#f2,#7a,#72
	db #4c,#72,#4c,#72,#0c,#32,#3e,#32
	db #1a,#00,#2d,#53,#24,#51,#1a,#b0
	db #ea,#af,#2c,#62,#e4,#21,#12,#02
	db #e4,#1f,#50,#74,#e4,#31,#52,#52
	db #24,#52,#4c,#32,#0c,#32,#3a,#32
	db #0c,#32,#2c,#72,#ec,#31,#1a,#12
	db #2c,#50,#ec,#31,#ec,#2f,#50,#70
.l46c0
	db #e2,#ff,#4a,#70,#44,#73,#44,#72
	db #e0,#48,#0c,#32,#ec,#31,#ec,#31
	db #1a,#20,#f3,#0f,#d2,#0f,#d2,#0f
	db #d2,#0f,#e2,#0f,#e2,#0f,#e2,#0f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0c,#0c,#0b,#0b,#0a,#0a,#09
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0f,#0e,#0f,#0e,#0f,#0e
	db #0f,#0d,#0e,#0c,#0d,#0b,#0c,#0a
	db #0b,#09,#0a,#08,#09,#07,#08,#06
	db #07,#05,#06,#04,#05,#03,#04,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #0f,#0d,#0b,#09,#07,#05,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#68,#4a,#00,#19,#4d,#00,#6b
	db #4a,#00,#6b,#4a,#00,#ed,#4a,#00
	db #0f,#4b,#00,#ed,#4a,#00,#0f,#4b
	db #00,#3f,#4b,#00,#3f,#4b,#00,#ed
	db #4a,#00,#0f,#4b,#00,#3f,#4b,#00
	db #6a,#4b,#00,#ed,#4a,#00,#0f,#4b
	db #00,#3f,#4b,#00,#6a,#4b,#00,#9c
	db #4b,#00,#9c,#4b,#00,#ed,#4a,#00
	db #0f,#4b,#00,#68,#4a,#00,#6b,#4a
	db #00,#ed,#4a,#00,#0f,#4b,#00,#1c
	db #4c,#00,#9a,#4c,#00,#3f,#4b,#00
	db #6a,#4b,#00,#9c,#4b,#00,#9c,#4b
	db #00,#1c,#4c,#00,#1c,#4c,#00,#9a
	db #4c,#00,#9a,#4c,#00,#68,#4a,#00
	db #ed,#4a,#00,#0f,#4b,#80,#0c,#49
	db #00,#2c,#4d,#00,#2c,#4d,#00,#2c
	db #4d,#00,#2c,#4d,#00,#2c,#4d,#00
	db #2c,#4d,#00,#2c,#4d,#00,#2c,#4d
	db #00,#2c,#4d,#00,#2c,#4d,#00,#2c
	db #4d,#00,#2c,#4d,#00,#2c,#4d,#00
	db #2c,#4d,#00,#2c,#4d,#00,#2c,#4d
	db #00,#2c,#4d,#00,#2c,#4d,#00,#2c
	db #4d,#00,#2c,#4d,#00,#2c,#4d,#00
	db #2c,#4d,#00,#2c,#4d,#00,#2c,#4d
	db #00,#2c,#4d,#00,#2c,#4d,#00,#2c
	db #4d,#00,#2c,#4d,#00,#2c,#4d,#00
	db #2c,#4d,#00,#2c,#4d,#00,#2c,#4d
	db #00,#2c,#4d,#00,#2c,#4d,#00,#2c
	db #4d,#00,#2c,#4d,#00,#2c,#4d,#00
	db #68,#4a,#00,#ae,#4d,#80,#84,#49
	db #00,#6b,#4a,#00,#6b,#4a,#00,#30
	db #4e,#00,#30,#4e,#00,#30,#4e,#00
	db #30,#4e,#00,#30,#4e,#00,#30,#4e
	db #00,#30,#4e,#00,#30,#4e,#00,#30
	db #4e,#00,#30,#4e,#00,#30,#4e,#00
	db #30,#4e,#00,#30,#4e,#00,#30,#4e
	db #00,#30,#4e,#00,#30,#4e,#00,#ef
	db #4e,#00,#ef,#4e,#00,#30,#4e,#00
	db #30,#4e,#00,#6b,#4a,#00,#30,#4e
	db #00,#30,#4e,#00,#30,#4e,#00,#30
	db #4e,#00,#30,#4e,#00,#30,#4e,#00
	db #30,#4e,#00,#ef,#4e,#00,#ef,#4e
	db #00,#30,#4e,#00,#30,#4e,#00,#30
	db #4e,#00,#30,#4e,#00,#6b,#4a,#00
	db #30,#4e,#00,#30,#4e,#80,#fc,#49
	db #00,#40,#ff,#74,#61,#10,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#f4,#60,#f4,#60
	db #f4,#60,#f4,#60,#ff,#51,#4f,#64
	db #58,#40,#06,#5d,#40,#04,#5b,#40
	db #0a,#58,#40,#02,#5b,#40,#02,#5d
	db #40,#02,#56,#40,#06,#54,#40,#06
	db #56,#40,#02,#58,#40,#12,#ff,#51
	db #4f,#64,#58,#40,#06,#5d,#40,#04
	db #5b,#40,#0a,#58,#40,#02,#5b,#40
	db #02,#5d,#40,#02,#5f,#40,#02,#60
	db #40,#02,#5f,#40,#02,#dd,#40,#5b
	db #40,#03,#5d,#40,#02,#5b,#40,#02
	db #58,#40,#02,#5d,#40,#10,#ff,#51
	db #4f,#64,#51,#40,#04,#51,#40,#02
	db #51,#40,#02,#4f,#40,#02,#4f,#40
	db #10,#4f,#40,#02,#4f,#40,#02,#4f
	db #40,#02,#51,#40,#02,#53,#40,#02
	db #54,#40,#02,#53,#40,#02,#51,#40
	db #12,#ff,#51,#4f,#64,#58,#40,#04
	db #58,#40,#02,#59,#40,#02,#58,#40
	db #02,#56,#40,#10,#56,#40,#02,#56
	db #40,#02,#5b,#40,#02,#5d,#40,#02
	db #5f,#40,#02,#5f,#40,#02,#60,#40
	db #02,#5f,#40,#02,#dd,#40,#db,#40
	db #5d,#40,#0e,#ff,#58,#11,#10,#d4
	db #10,#d1,#10,#d8,#10,#d4,#10,#d1
	db #10,#d8,#10,#d4,#10,#d1,#10,#d8
	db #10,#d4,#10,#d1,#10,#d8,#10,#d4
	db #10,#d1,#10,#d4,#10,#d6,#10,#d3
	db #10,#cf,#10,#d6,#10,#d3,#10,#cf
	db #10,#d6,#10,#d3,#10,#cf,#10,#d6
	db #10,#d3,#10,#cf,#10,#d6,#10,#d3
	db #10,#4f,#10,#02,#d6,#10,#d3,#10
	db #cf,#10,#d6,#10,#d3,#10,#cf,#10
	db #d6,#10,#d3,#10,#cf,#10,#d6,#10
	db #d3,#10,#cf,#10,#d6,#10,#d3,#10
	db #cf,#10,#d6,#10,#d8,#10,#d4,#10
	db #d1,#10,#d8,#10,#d4,#10,#d1,#10
	db #d8,#10,#d4,#10,#d1,#10,#d8,#10
	db #d4,#10,#d1,#10,#d8,#10,#d4,#10
	db #51,#10,#02,#ff,#51,#4f,#14,#d3
	db #40,#d4,#40,#d1,#40,#d1,#40,#d3
	db #40,#d4,#40,#d1,#40,#d1,#40,#d1
	db #40,#d3,#40,#d4,#40,#d1,#40,#d1
	db #40,#d3,#40,#d4,#40,#53,#40,#02
	db #d4,#40,#d1,#40,#d3,#40,#d4,#40
	db #d1,#40,#d1,#40,#d3,#40,#54,#40
	db #03,#d4,#40,#d3,#40,#d3,#40,#d4
	db #40,#d3,#40,#cf,#40,#d3,#40,#cf
	db #40,#d4,#40,#d3,#40,#d3,#40,#d4
	db #40,#d3,#40,#cf,#40,#d3,#40,#cf
	db #40,#d4,#40,#d3,#40,#d3,#40,#d4
	db #40,#d3,#40,#cf,#40,#d4,#40,#d3
	db #40,#d1,#40,#cf,#40,#d1,#40,#cf
	db #40,#d1,#40,#d1,#40,#d4,#40,#d1
	db #40,#d1,#40,#d1,#40,#d4,#40,#d1
	db #40,#ff,#51,#4f,#14,#d1,#40,#d8
	db #40,#dd,#40,#d1,#40,#d1,#40,#d8
	db #40,#dd,#40,#d1,#40,#d8,#40,#dd
	db #40,#d1,#40,#d1,#40,#d8,#40,#dd
	db #40,#d1,#40,#d8,#40,#dd,#40,#d1
	db #40,#d1,#40,#d8,#40,#dd,#40,#d1
	db #40,#d1,#40,#d1,#40,#d8,#40,#d8
	db #40,#dd,#40,#51,#40,#03,#cf,#40
	db #cf,#40,#d6,#40,#db,#40,#cf,#40
	db #cf,#40,#d6,#40,#cf,#40,#d6,#40
	db #d6,#40,#d6,#40,#d6,#40,#cf,#40
	db #cf,#40,#d6,#40,#db,#40,#d1,#40
	db #d8,#40,#dd,#40,#d1,#40,#d1,#40
	db #d8,#40,#d8,#40,#dd,#40,#d8,#40
	db #d1,#40,#d1,#40,#d1,#40,#dd,#40
	db #d1,#40,#dd,#40,#d1,#40,#dd,#40
	db #ff,#00,#38,#bf,#50,#bf,#50,#bf
	db #50,#bf,#50,#bf,#50,#bf,#50,#bf
	db #50,#bf,#50,#ff,#40,#31,#10,#ad
	db #20,#b9,#20,#ad,#20,#c0,#50,#b9
	db #20,#ad,#20,#c0,#30,#b9,#20,#ad
	db #20,#c0,#30,#b9,#20,#c0,#50,#ad
	db #20,#b9,#20,#ad,#20,#c0,#30,#b9
	db #20,#ad,#20,#b9,#20,#c0,#50,#ad
	db #20,#b9,#20,#c0,#30,#ad,#20,#b9
	db #20,#c0,#30,#ad,#20,#c0,#50,#b9
	db #20,#ad,#20,#b9,#20,#c0,#30,#ab
	db #20,#b7,#20,#ab,#20,#c0,#50,#b7
	db #20,#ab,#20,#c0,#30,#b7,#20,#ab
	db #20,#c0,#30,#b7,#20,#c0,#50,#ab
	db #20,#b7,#20,#ab,#20,#c0,#30,#ad
	db #20,#b9,#20,#ad,#20,#c0,#50,#b9
	db #20,#ad,#20,#c0,#30,#b9,#20,#ad
	db #20,#c0,#30,#b9,#20,#c0,#50,#ad
	db #20,#c0,#50,#c0,#50,#ff,#2d,#21
	db #10,#b9,#20,#ad,#20,#b9,#20,#ad
	db #20,#b9,#20,#ad,#20,#b9,#20,#ad
	db #20,#b9,#20,#ad,#20,#b9,#20,#ad
	db #20,#b9,#20,#ad,#20,#b9,#20,#ab
	db #20,#b7,#20,#ab,#20,#b7,#20,#ab
	db #20,#b7,#20,#ab,#20,#b7,#20,#ab
	db #20,#b7,#20,#ab,#20,#b7,#20,#ab
	db #20,#b7,#20,#ab,#20,#b7,#20,#ab
	db #20,#b7,#20,#ab,#20,#b7,#20,#ab
	db #20,#b7,#20,#ab,#20,#b7,#20,#ab
	db #20,#b7,#20,#ab,#20,#b7,#20,#ab
	db #20,#b7,#20,#ab,#20,#b7,#20,#ad
	db #20,#b9,#20,#ad,#20,#b9,#20,#ad
	db #20,#b9,#20,#ad,#20,#b9,#20,#ad
	db #20,#b9,#20,#b9,#20,#b9,#20,#b9
	db #20,#b9,#20,#ad,#20,#ad,#20,#ff
	db #cc,#18,#0f,#c8,#18,#13,#c5,#18
	db #16,#cc,#18,#0f,#c8,#18,#13,#c5
	db #18,#16,#cc,#18,#0f,#c8,#18,#13
	db #c5,#18,#16,#cc,#18,#0f,#c8,#18
	db #13,#c5,#18,#16,#cc,#18,#0f,#c8
	db #18,#13,#c5,#18,#16,#c8,#18,#13
	db #ca,#18,#11,#c7,#18,#14,#c3,#18
	db #19,#ca,#18,#11,#c7,#18,#14,#c3
	db #18,#19,#ca,#18,#11,#c7,#18,#14
	db #c3,#18,#19,#ca,#18,#11,#c7,#18
	db #14,#c3,#18,#19,#ca,#18,#11,#c7
	db #18,#14,#c3,#18,#19,#fe,#01,#ca
	db #18,#11,#c7,#18,#14,#c3,#18,#19
	db #ca,#18,#11,#c7,#18,#14,#c3,#18
	db #19,#ca,#18,#11,#c7,#18,#14,#c3
	db #18,#19,#ca,#18,#11,#c7,#18,#14
	db #c3,#18,#19,#ca,#18,#11,#c7,#18
	db #14,#c3,#18,#19,#ca,#18,#11,#cc
	db #18,#0f,#c8,#18,#13,#c5,#18,#16
	db #cc,#18,#0f,#c8,#18,#13,#c5,#18
	db #16,#cc,#18,#0f,#c8,#18,#13,#c5
	db #18,#16,#cc,#18,#0f,#c8,#18,#13
	db #c5,#18,#16,#cc,#18,#0f,#c8,#18
	db #13,#c5,#18,#16,#fe,#01,#ff,#00
	db #01,#58,#11,#10,#d4,#10,#d1,#10
	db #d8,#10,#d4,#10,#d1,#10,#d8,#10
	db #d4,#10,#d1,#10,#d8,#10,#d4,#10
	db #d1,#10,#d8,#10,#d4,#10,#d1,#10
	db #d4,#10,#d6,#10,#d3,#10,#cf,#10
	db #d6,#10,#d3,#10,#cf,#10,#d6,#10
	db #d3,#10,#cf,#10,#d6,#10,#d3,#10
	db #cf,#10,#d6,#10,#d3,#10,#4f,#10
	db #02,#d6,#10,#d3,#10,#cf,#10,#d6
	db #10,#d3,#10,#cf,#10,#d6,#10,#d3
	db #10,#cf,#10,#d6,#10,#d3,#10,#cf
	db #10,#d6,#10,#d3,#10,#cf,#10,#d6
	db #10,#d8,#10,#d4,#10,#d1,#10,#d8
	db #10,#d4,#10,#d1,#10,#d8,#10,#d4
	db #10,#d1,#10,#d8,#10,#d4,#10,#d1
	db #10,#d8,#10,#d4,#10,#d1,#10,#ff

;
.music_info
	db "Dracula Fanz Issue 5 - Ze Meeting 95 (1995)(Dracula Fanz Team)(Tom & Jerry of GPA)",0
	db "ST-128 Module",0

	read "music_end.asm"
