; Music of Ecstasy Volume 1 - Ursula (1999)(Ebola)(Greg)(ST-128 Module)
; Ripped by Megachur the 30/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ECSV1URS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 05
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
	ld (hl),#02
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
	db #00,#00,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00
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
	db #00,#00,#00,#49,#9c,#49,#38,#4a
.l4640
	db #12,#03,#77,#ff,#84,#47,#d2,#48
	db #e0,#46,#20,#47,#40,#47,#40,#00
	db #77,#ff,#32,#48,#d2,#48,#20,#49
	db #92,#00,#12,#49,#52,#49,#40,#47
	db #60,#47,#a0,#47,#c0,#47,#5c,#00
	db #a4,#ff,#76,#ff,#76,#ff,#a5,#ff
	db #a5,#ff,#77,#ff,#77,#ff,#a4,#ff
	db #a4,#ff,#76,#ff,#76,#ff,#a5,#ff
	db #60,#47,#e0,#47,#00,#48,#c0,#00
	db #20,#48,#60,#48,#40,#47,#00,#08
	db #60,#47,#80,#48,#40,#47,#5e,#02
	db #a4,#ff,#a4,#ff,#f2,#49,#40,#4a
	db #a5,#ff,#a5,#ff,#a4,#ff,#d2,#ff
	db #a4,#ff,#a4,#ff,#a5,#ff,#d3,#ff
	db #a5,#ff,#d2,#ff,#d2,#ff,#00,#00
	db #a0,#48,#e0,#47,#e0,#48,#00,#00
.l46c0
	db #d3,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d3,#ff,#d3,#ff,#d3,#ff
	db #d3,#ff,#d2,#ff,#d2,#ff,#d2,#ff
	db #d2,#ff,#d3,#ff,#d3,#ff,#d3,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0e,#0e,#0e,#0d,#0d,#0c
	db #0c,#0b,#0a,#09,#07,#05,#03,#00
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
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #03,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #02,#02,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #00,#00,#40,#00,#80,#00,#c0,#00
	db #00,#01,#40,#01,#80,#01,#c0,#01
	db #00,#02,#40,#02,#80,#02,#c0,#02
	db #00,#03,#40,#03,#80,#03,#c0,#03
	db #00,#04,#40,#04,#80,#04,#c0,#04
	db #00,#05,#40,#05,#80,#05,#c0,#05
	db #00,#06,#40,#06,#80,#06,#c0,#06
	db #00,#07,#40,#07,#80,#07,#c0,#07
	db #00,#00,#00,#00,#00,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#d4,#4a,#00,#d4,#4a,#00,#d4
	db #4a,#00,#da,#4a,#00,#da,#4a,#00
	db #da,#4a,#00,#da,#4a,#00,#da,#4a
	db #00,#da,#4a,#00,#da,#4a,#00,#da
	db #4a,#00,#da,#4a,#00,#da,#4a,#00
	db #da,#4a,#00,#df,#4a,#00,#df,#4a
	db #00,#df,#4a,#00,#df,#4a,#00,#df
	db #4a,#00,#df,#4a,#00,#df,#4a,#00
	db #df,#4a,#00,#df,#4a,#00,#df,#4a
	db #00,#df,#4a,#00,#df,#4a,#00,#11
	db #4b,#00,#11,#4b,#00,#11,#4b,#00
	db #11,#4b,#00,#11,#4b,#00,#11,#4b
	db #00,#11,#4b,#00,#11,#4b,#00,#11
	db #4b,#00,#11,#4b,#00,#11,#4b,#00
	db #11,#4b,#00,#df,#4a,#00,#df,#4a
	db #00,#df,#4a,#00,#df,#4a,#00,#df
	db #4a,#00,#df,#4a,#00,#df,#4a,#00
	db #df,#4a,#00,#d4,#4a,#00,#d4,#4a
	db #00,#d4,#4a,#00,#d4,#4a,#00,#d4
	db #4a,#80,#00,#49,#00,#49,#4b,#00
	db #49,#4b,#00,#49,#4b,#00,#4c,#4c
	db #00,#4c,#4c,#00,#4c,#4c,#00,#4c
	db #4c,#00,#4c,#4c,#00,#4c,#4c,#00
	db #cd,#4c,#00,#cb,#4b,#00,#cb,#4b
	db #00,#cb,#4b,#00,#cb,#4b,#00,#cb
	db #4b,#00,#cb,#4b,#00,#cb,#4b,#00
	db #cb,#4b,#00,#4e,#4d,#00,#4e,#4d
	db #00,#4e,#4d,#00,#4e,#4d,#00,#4e
	db #4d,#00,#4e,#4d,#00,#4e,#4d,#00
	db #4e,#4d,#00,#11,#4b,#00,#11,#4b
	db #00,#11,#4b,#00,#d0,#4d,#00,#11
	db #4b,#00,#11,#4b,#00,#11,#4b,#00
	db #11,#4b,#00,#11,#4b,#00,#11,#4b
	db #00,#11,#4b,#00,#d0,#4d,#00,#0a
	db #4e,#00,#0a,#4e,#00,#0a,#4e,#00
	db #0a,#4e,#00,#0a,#4e,#00,#0a,#4e
	db #00,#0a,#4e,#00,#0a,#4e,#00,#0a
	db #4e,#00,#0a,#4e,#00,#0a,#4e,#00
	db #8c,#4e,#00,#d4,#4a,#80,#9c,#49
	db #00,#4d,#4f,#00,#4d,#4f,#00,#4d
	db #4f,#00,#4d,#4f,#00,#4d,#4f,#00
	db #4d,#4f,#00,#7a,#4f,#00,#7a,#4f
	db #00,#7a,#4f,#00,#96,#4f,#00,#56
	db #4f,#00,#56,#4f,#00,#56,#4f,#00
	db #a8,#4f,#00,#d8,#4f,#00,#d8,#4f
	db #00,#d8,#4f,#00,#24,#50,#00,#d8
	db #4f,#00,#d8,#4f,#00,#d8,#4f,#00
	db #d4,#4a,#00,#d8,#4f,#00,#d8,#4f
	db #00,#d8,#4f,#00,#d8,#4f,#00,#d8
	db #4f,#00,#d8,#4f,#00,#d8,#4f,#00
	db #68,#50,#00,#d8,#4f,#00,#d8,#4f
	db #00,#d8,#4f,#00,#af,#50,#00,#d8
	db #4f,#00,#d8,#4f,#00,#d8,#4f,#00
	db #68,#50,#00,#d8,#4f,#00,#d8,#4f
	db #00,#d8,#4f,#00,#cd,#50,#00,#d8
	db #4f,#00,#d8,#4f,#00,#d8,#4f,#00
	db #b2,#50,#00,#d8,#4f,#00,#d8,#4f
	db #00,#d8,#4f,#00,#e8,#50,#00,#d4
	db #4a,#80,#38,#4a,#fe,#01,#01,#00
	db #3f,#ff,#2a,#a8,#36,#40,#ff,#36
	db #a8,#1b,#04,#2a,#a0,#04,#36,#a0
	db #04,#2a,#a0,#04,#36,#a0,#04,#2a
	db #a0,#04,#36,#a0,#04,#2a,#a0,#04
	db #36,#a0,#04,#2a,#a0,#04,#36,#a0
	db #04,#2a,#a0,#04,#36,#a0,#04,#2a
	db #a0,#04,#36,#a0,#04,#2a,#a0,#04
	db #ff,#36,#a8,#1b,#04,#2a,#a0,#04
	db #36,#a0,#04,#2a,#a0,#04,#36,#a0
	db #04,#2a,#a0,#04,#3d,#a8,#12,#04
	db #2a,#a8,#1b,#04,#36,#a0,#04,#2a
	db #a0,#04,#36,#a0,#04,#2a,#a0,#04
	db #3b,#a8,#14,#04,#2a,#a8,#1b,#04
	db #34,#a8,#1e,#04,#2a,#a8,#1b,#04
	db #ff,#3d,#11,#10,#b6,#90,#b6,#10
	db #bd,#90,#bd,#10,#b6,#90,#b6,#10
	db #bd,#90,#c2,#10,#b6,#90,#b6,#10
	db #c2,#90,#bd,#10,#b6,#90,#b6,#10
	db #bd,#90,#bd,#10,#b6,#90,#b6,#10
	db #bd,#90,#bd,#10,#b6,#90,#b6,#10
	db #bd,#90,#bd,#10,#b6,#90,#b6,#10
	db #bd,#90,#bd,#10,#b6,#90,#b6,#10
	db #bd,#90,#be,#10,#b6,#90,#b6,#10
	db #be,#90,#be,#10,#b6,#90,#b6,#10
	db #be,#90,#be,#10,#b6,#90,#b6,#10
	db #be,#90,#be,#10,#b6,#90,#b6,#10
	db #be,#90,#be,#10,#b6,#90,#b6,#10
	db #be,#90,#c0,#10,#b6,#90,#b6,#10
	db #c0,#90,#c2,#10,#b6,#90,#b6,#10
	db #c2,#90,#be,#10,#b6,#90,#b6,#10
	db #be,#90,#ff,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#ce,#10,#c2,#90,#c2
	db #10,#ce,#90,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#ca,#10,#c2,#90,#c2
	db #10,#ca,#90,#ca,#10,#c2,#90,#c2
	db #10,#ca,#90,#ca,#10,#c2,#90,#c2
	db #10,#ca,#90,#ca,#10,#c2,#90,#c2
	db #10,#ca,#90,#ca,#10,#c2,#90,#c2
	db #10,#ca,#90,#cc,#10,#c2,#90,#c2
	db #10,#cc,#90,#ce,#10,#c2,#90,#c2
	db #10,#ce,#90,#ca,#10,#c2,#90,#c2
	db #10,#ca,#90,#ff,#bd,#10,#b6,#90
	db #b6,#10,#bd,#90,#bd,#10,#b6,#90
	db #b6,#10,#bd,#90,#c2,#10,#b6,#90
	db #b6,#10,#c2,#90,#bd,#10,#b6,#90
	db #b6,#10,#bd,#90,#bd,#10,#b6,#90
	db #b6,#10,#bd,#90,#bd,#10,#b6,#90
	db #b6,#10,#bd,#90,#bd,#10,#b6,#90
	db #b6,#10,#bd,#90,#bd,#10,#b6,#90
	db #b6,#10,#bd,#90,#be,#10,#b6,#90
	db #b6,#10,#be,#90,#be,#10,#b6,#90
	db #b6,#10,#be,#90,#be,#10,#b6,#90
	db #b6,#10,#be,#90,#be,#10,#b6,#90
	db #b6,#10,#be,#90,#be,#10,#b6,#90
	db #b6,#10,#be,#90,#c0,#10,#b6,#90
	db #b6,#10,#c0,#90,#c2,#10,#b6,#90
	db #b6,#10,#c2,#90,#be,#10,#b6,#90
	db #b6,#10,#be,#90,#ff,#bd,#10,#b6
	db #90,#b6,#10,#bd,#90,#bd,#10,#b6
	db #90,#b6,#10,#bd,#90,#c2,#10,#b6
	db #90,#b6,#10,#c2,#90,#bd,#10,#b6
	db #90,#b6,#10,#bd,#90,#bd,#10,#b6
	db #90,#b6,#10,#bd,#90,#bd,#10,#b6
	db #90,#b6,#10,#bd,#90,#bd,#10,#b6
	db #90,#b6,#10,#bd,#90,#bd,#10,#b6
	db #90,#b6,#10,#bd,#90,#be,#10,#b6
	db #90,#b6,#10,#be,#90,#be,#10,#b6
	db #90,#b6,#10,#be,#90,#be,#10,#b6
	db #90,#b6,#10,#be,#90,#be,#10,#b6
	db #90,#b6,#10,#be,#90,#ca,#10,#c2
	db #90,#c2,#10,#ca,#90,#cc,#10,#c2
	db #90,#c2,#10,#cc,#90,#ce,#10,#c2
	db #90,#c2,#10,#ce,#90,#ca,#10,#c2
	db #90,#c2,#10,#ca,#90,#ff,#c9,#1e
	db #0c,#c2,#90,#c2,#10,#c9,#90,#c9
	db #10,#c2,#90,#c2,#10,#c9,#90,#ce
	db #10,#c2,#90,#c2,#10,#ce,#90,#c9
	db #10,#c2,#90,#c2,#10,#c9,#90,#c9
	db #10,#c2,#90,#c2,#10,#c9,#90,#c9
	db #10,#c2,#90,#c2,#10,#c9,#90,#c9
	db #10,#c2,#90,#c2,#10,#c9,#90,#c9
	db #10,#c2,#90,#c2,#10,#c9,#90,#ca
	db #10,#c2,#90,#c2,#10,#ca,#90,#ca
	db #10,#c2,#90,#c2,#10,#ca,#90,#ca
	db #10,#c2,#90,#c2,#10,#ca,#90,#ca
	db #10,#c2,#90,#c2,#10,#ca,#90,#ca
	db #10,#c2,#90,#c2,#10,#ca,#90,#cc
	db #10,#c2,#90,#c2,#10,#cc,#90,#ce
	db #10,#c2,#90,#c2,#10,#ce,#90,#ca
	db #10,#c2,#90,#c2,#10,#ca,#90,#ff
	db #36,#a8,#1b,#04,#2a,#a0,#04,#36
	db #a0,#04,#2a,#a0,#04,#36,#a0,#04
	db #2a,#a0,#04,#3d,#a8,#12,#04,#2a
	db #a8,#1b,#04,#36,#a0,#04,#2a,#a0
	db #04,#36,#a0,#04,#2a,#a0,#04,#3b
	db #a8,#14,#04,#2a,#a8,#1b,#04,#34
	db #a8,#1e,#04,#2a,#a8,#1b,#03,#01
	db #10,#ff,#c9,#1e,#0c,#c2,#90,#c2
	db #10,#c9,#90,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#cc,#10,#c2,#90,#c2
	db #10,#cc,#90,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#c9,#10,#c2,#90,#c2
	db #10,#c9,#90,#c7,#10,#c2,#90,#c2
	db #10,#c7,#90,#c7,#10,#c2,#90,#c2
	db #10,#c7,#90,#cc,#10,#c2,#90,#c2
	db #10,#cc,#90,#c7,#10,#c2,#90,#c2
	db #10,#c7,#90,#ca,#10,#c2,#90,#c2
	db #10,#ca,#90,#ca,#10,#c2,#90,#c2
	db #10,#ca,#90,#ce,#10,#c2,#90,#c2
	db #10,#ce,#90,#ce,#10,#c2,#90,#c2
	db #10,#ce,#90,#ff,#c9,#1e,#0c,#42
	db #9b,#10,#42,#1b,#10,#49,#9b,#10
	db #49,#1b,#10,#42,#9b,#10,#42,#1b
	db #10,#49,#9b,#10,#49,#1b,#10,#42
	db #9b,#10,#42,#1b,#10,#49,#9b,#10
	db #49,#1b,#10,#42,#9b,#10,#42,#1b
	db #10,#49,#9b,#10,#4c,#1b,#10,#42
	db #9b,#11,#42,#1b,#11,#4c,#9b,#11
	db #49,#1b,#11,#42,#9b,#11,#42,#1b
	db #11,#49,#9b,#11,#49,#1b,#11,#42
	db #9b,#11,#42,#1b,#11,#49,#9b,#11
	db #49,#1b,#11,#42,#9b,#11,#42,#1b
	db #12,#49,#9b,#12,#47,#1b,#12,#42
	db #9b,#12,#42,#1b,#12,#47,#9b,#12
	db #47,#1b,#12,#42,#9b,#13,#42,#1b
	db #13,#47,#9b,#13,#4c,#1b,#13,#42
	db #9b,#13,#42,#1b,#13,#4c,#9b,#13
	db #47,#1b,#14,#42,#9b,#14,#42,#1b
	db #14,#47,#9b,#14,#4a,#1b,#14,#42
	db #9b,#15,#42,#1b,#15,#4a,#9b,#15
	db #4a,#1b,#15,#42,#9b,#15,#42,#1b
	db #15,#4a,#9b,#15,#4e,#1b,#16,#42
	db #9b,#16,#42,#1b,#16,#4e,#9b,#16
	db #4e,#1b,#16,#42,#9b,#16,#42,#1b
	db #17,#4e,#9b,#17,#ff,#0d,#02,#01
	db #fe,#01,#01,#00,#3e,#ff,#3b,#f0
	db #08,#3b,#f0,#02,#72,#40,#02,#72
	db #80,#03,#fe,#09,#3b,#f0,#04,#3b
	db #f0,#04,#3b,#f0,#18,#3d,#f0,#02
	db #3d,#f0,#02,#3d,#f0,#02,#3d,#f0
	db #02,#ff,#3b,#f0,#08,#3b,#f0,#10
	db #3b,#f0,#04,#3b,#f0,#04,#3b,#f0
	db #18,#3d,#f0,#02,#3d,#f0,#02,#3d
	db #f0,#02,#3d,#f0,#02,#ff,#3b,#f0
	db #08,#3b,#f0,#10,#3b,#f0,#04,#3b
	db #f0,#04,#3b,#f0,#06,#fe,#1a,#ff
	db #3b,#f0,#08,#3b,#f0,#02,#72,#40
	db #02,#72,#80,#03,#fe,#09,#3b,#f0
	db #04,#3b,#f0,#04,#3b,#f0,#10,#3b
	db #f1,#29,#3b,#f1,#27,#3b,#f1,#25
	db #3b,#f1,#23,#3b,#f1,#22,#3b,#f1
	db #21,#3b,#f1,#21,#3b,#f1,#20,#ff
	db #3b,#f1,#20,#74,#40,#02,#3f,#80
	db #04,#3b,#f0,#02,#74,#40,#02,#3f
	db #80,#04,#3b,#f0,#02,#74,#40,#02
	db #3f,#80,#04,#3b,#f0,#02,#74,#40
	db #02,#3f,#80,#04,#3b,#f0,#02,#74
	db #40,#02,#3d,#80,#04,#3b,#f0,#02
	db #74,#40,#02,#3d,#80,#04,#3b,#f0
	db #02,#74,#40,#02,#3d,#80,#04,#3b
	db #f0,#02,#74,#40,#02,#3d,#80,#02
	db #3b,#f0,#02,#ff,#3b,#f1,#20,#74
	db #40,#02,#3f,#80,#04,#3b,#f0,#02
	db #74,#40,#02,#3f,#80,#04,#3b,#f0
	db #02,#74,#40,#02,#3f,#80,#04,#3b
	db #f0,#02,#74,#40,#02,#3f,#80,#04
	db #bb,#f0,#01,#10,#01,#10,#01,#11
	db #01,#11,#01,#12,#01,#12,#01,#13
	db #01,#13,#01,#14,#01,#15,#01,#16
	db #01,#17,#01,#18,#01,#09,#12,#ff
	db #3b,#f1,#20,#74,#40,#02,#3f,#80
	db #04,#3b,#f0,#02,#74,#40,#02,#3f
	db #80,#04,#3b,#f0,#02,#74,#40,#02
	db #3f,#80,#04,#3b,#f0,#02,#74,#40
	db #02,#3f,#80,#04,#3b,#f0,#02,#01
	db #10,#01,#11,#01,#11,#01,#12,#01
	db #12,#01,#12,#01,#13,#01,#13,#01
	db #14,#01,#15,#01,#16,#01,#17,#01
	db #18,#01,#19,#01,#0a,#10,#ff,#fe
	db #40,#ff,#fe,#01,#01,#00,#1f,#3b
	db #f0,#08,#3b,#f0,#08,#3b,#f0,#08
	db #3b,#f0,#02,#72,#40,#02,#72,#80
	db #02,#3b,#f0,#02,#ff,#fe,#01,#01
	db #00,#1f,#3b,#f0,#08,#3b,#f0,#08
	db #3b,#f0,#02,#3b,#f0,#02,#3b,#f0
	db #02,#3b,#f0,#02,#3b,#f0,#08,#ff
	db #3b,#f1,#1f,#0b,#10,#74,#4b,#10
	db #0b,#10,#3f,#8b,#10,#0b,#10,#0b
	db #10,#0b,#10,#3b,#fb,#10,#0b,#10
	db #74,#4b,#10,#0b,#10,#3f,#8b,#10
	db #0b,#10,#0b,#10,#0b,#10,#3b,#fb
	db #10,#0b,#11,#74,#4b,#11,#0b,#11
	db #3f,#8b,#11,#0b,#11,#0b,#11,#0b
	db #11,#3b,#fb,#11,#0b,#11,#74,#4b
	db #11,#0b,#11,#3f,#8b,#11,#0b,#11
	db #0b,#12,#0b,#12,#3b,#fb,#12,#0b
	db #12,#74,#4b,#12,#0b,#12,#3d,#8b
	db #12,#0b,#13,#0b,#13,#0b,#13,#3b
	db #fb,#13,#0b,#13,#74,#4b,#13,#0b
	db #13,#3d,#8b,#14,#0b,#14,#0b,#14
	db #0b,#14,#3b,#fb,#14,#0b,#15,#74
	db #4b,#15,#0b,#15,#3d,#8b,#15,#0b
	db #15,#0b,#15,#0b,#15,#3b,#fb,#16
	db #0b,#16,#74,#4b,#16,#0b,#16,#3d
	db #8b,#16,#0b,#16,#3b,#fb,#16,#0b
	db #16,#ff
;
.music_info
	db "Ecstasy Volume 1 - Ursula (1999)(Ebola)(Greg)",0
	db "ST-128 Module",0

	read "music_end.asm"
