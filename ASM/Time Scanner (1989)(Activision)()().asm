; Music of Time Scanner (1989)(Activision)()()
; Ripped by Megachur the 07/03/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TIMESCAN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.real_play_music
;
	ld a,(bc)
	ld (l4817),a
	ld a,(de)
	ld (l409e),a
	ld a,(hl)
	ld (l409a),a
	push bc
	push de
	push hl
	call l42e2
	pop hl
	pop de
	pop bc
	ld a,(l409a)
	ld (hl),a
	ld a,(l409e)
	ld (de),a
	ld a,(l4817)
	ld (bc),a
	ret
.l4026 equ $ + 4
.l4022
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
.l407f equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4088 equ $ + 6
.l4083 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4091 equ $ + 7
.l408c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4095 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l409e equ $ + 4
.l409d equ $ + 3
.l409c equ $ + 2
.l409b equ $ + 1
.l409a
	db #00,#00,#00,#00,#00
.l409f
	dw l475e,l4773,l4793,l478f
	dw l4797,l4793,l4793
.l40ad
	db #16,#01,#27,#01,#38,#01,#4b,#01
	db #5f,#01,#73,#01,#8a,#01,#a1,#01
	db #ba,#01,#d4,#01,#f0,#01,#0e,#02
	db #2d,#02,#4e,#02,#71,#02,#96,#02
	db #bd,#02,#e7,#02,#13,#03,#42,#03
	db #74,#03,#a9,#03,#e0,#03,#1b,#04
	db #5a,#04,#9b,#04,#e2,#04,#2c,#05
	db #7b,#05,#ce,#05,#27,#06,#85,#06
	db #e8,#06,#51,#07,#c1,#07,#37,#08
	db #b4,#08,#37,#09,#c4,#09,#57,#0a
	db #f5,#0a,#9c,#0b,#4e,#0c,#09,#0d
	db #d0,#0d,#a3,#0e,#82,#0f,#6e,#10
	db #68,#11,#6e,#12,#88,#13,#af,#14
	db #eb,#15,#39,#17,#9c,#18,#13,#1a
	db #a1,#1b,#46,#1d,#04,#1f,#dc,#20
	db #d0,#22,#dc,#24,#10,#27,#5e,#29
	db #d6,#2b,#72,#2e,#38,#31,#26,#34
	db #42,#37,#8c,#3a,#08,#3e,#b8,#41
	db #a0,#45,#b8,#49,#20,#4e,#bc,#52
	db #ac,#57,#e4,#5c,#70,#62,#4c,#68
	db #84,#6e,#18,#75,#10,#7c,#70,#83
	db #40,#8b,#70,#93,#40,#9c,#78,#a5
	db #58,#af,#c8,#b9,#e0,#c4,#08,#d0
	db #08,#dd,#30,#ea,#20,#f8,#2e,#fd
.l416d
	db #00,#0c,#0c,#00,#80,#00,#04,#04
	db #07,#80,#00,#03,#03,#07,#80,#00
	db #04,#04,#07,#80,#00,#07,#07,#0c
	db #80
.l4186
	dw l419e,l41a7,l41da,l41e3
	dw l41ee,l41f0,l41f2,l41f7
	dw l4200,l4202,l420f,l4211
.l419e
	db #00,#07,#07,#00,#07,#07,#07,#07
	db #ff
.l41a7
	db #02,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#06,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
.l41da equ $ + 3
	db #04,#04,#ff,#01,#03,#03,#05,#08
.l41e3 equ $ + 4
	db #08,#08,#08,#ff,#0a,#0a,#0b,#0a
.l41ee equ $ + 7
	db #0a,#0b,#00,#00,#00,#00,#ff,#0c
.l41f2 equ $ + 3
.l41f0 equ $ + 1
	db #ff,#09,#ff,#0e,#0e,#11,#11,#ff
.l41f7
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#10
.l4202 equ $ + 3
.l4200 equ $ + 1
	db #ff,#0d,#ff,#15,#14,#14,#18,#1a
	db #18,#1a,#18,#00,#00,#00,#00,#ff
.l4211 equ $ + 2
.l420f
	db #13,#ff,#16,#12,#12,#12,#12,#17
	db #17,#17,#17,#19,#19,#19,#19,#1b
	db #1b,#1c,#1c,#19,#19,#17,#17,#17
	db #17,#17,#17,#19,#19,#19,#19,#1b
	db #1b,#1c,#1c,#19,#19,#17,#17,#17
	db #17,#17,#17,#19,#19,#19,#19,#12
	db #12,#ff
.l4247 equ $ + 6
.l4246 equ $ + 5
.l4241
	db #04,#05,#05,#06,#06,#11,#41,#88
.l424d equ $ + 4
.l424c equ $ + 3
.l4249
	db #0c,#00,#02,#00,#00,#00,#11,#81
	db #00,#09,#00,#20,#20,#00,#00,#81
	db #81,#00,#04,#00,#20,#50,#00,#00
	db #11,#41,#f8,#69,#60,#03,#00,#40
	db #40,#41,#41,#f4,#0c,#00,#03,#00
	db #40,#40,#41,#41,#f8,#0c,#80,#03
	db #02,#80,#80,#41,#11,#88,#09,#00
	db #00,#00,#00,#00,#81,#41,#f8,#09
	db #00,#12,#00,#00,#00,#41,#41,#f8
	db #08,#00,#12,#05,#00,#00,#41,#41
	db #f8,#ff,#00,#02,#00,#00,#00,#41
	db #41,#f8,#08,#00,#12,#0a,#00,#00
	db #11,#41,#f8,#09,#60,#03,#06,#ff
	db #ff,#00,#f0,#00,#f0,#00,#78,#00
	db #3c,#00,#28,#00,#1e,#00,#18,#00
	db #14,#00,#10,#7d,#06,#4a,#03,#0e
	db #02,#a2,#01,#8c,#00,#54,#00,#35
	db #00,#00,#70,#90,#a0,#b0,#c0,#c0
	db #d0,#d0,#e0,#e0,#e0,#e0,#f0,#f0
	db #f0
.l42e2
	bit 7,a
	jr nz,l4332
	cp #7f
	jp z,l43aa
	cp #04
	jr nc,l432f
	ld e,a
	ld d,#00
	ld hl,l4241
	add hl,de
	ld a,(hl)
	ld (l409b),a
	ld a,e
	add a
	add e
	add a
	ld e,a
	ld hl,l4022
	ld b,#5d
	xor a
.l4305
	ld (hl),a
	inc hl
	djnz l4305
	ld hl,l407f
	ld b,#1b
.l430e
	ld (hl),a
	inc hl
	djnz l430e
	dec a
	ld (l409a),a
	ld hl,l4186
	add hl,de
	ex de,hl
	ld hl,l4026
	ld bc,#031e
.l4321
	ld a,(de)
	ld (hl),a
	inc de
	inc hl
	ld a,(de)
	ld (hl),a
	inc de
	ld a,b
	ld b,#00
	add hl,bc
	ld b,a
	djnz l4321
.l432f
	jp l461c
.l4332
	ld ix,l4022
	ld iy,l407f
	ld b,#03
.l433c
	push bc
	ld a,(l409c)
	and a
	jr nz,l435b
	dec (ix+#02)
	jp m,l435e
	ld a,(ix+#06)
	rla
	jr c,l4352
	dec (ix+#06)
.l4352
	ld a,(ix+#08)
	rla
	jr c,l435b
	dec (ix+#08)
.l435b
	jp l44b1
.l435e
	ld a,(ix+#0a)
	or (ix+#0c)
	jr z,l438a
	ld b,#00
	ld (ix+#0a),b
	ld (ix+#0c),b
	ld c,(ix+#0e)
	ld hl,l424c
	add hl,bc
	ld a,(hl)
	ld (ix+#06),a
	ld a,(ix+#09)
	ld (ix+#02),a
	ld a,(ix+#10)
	ld (ix+#0f),a
	inc hl
	ld e,(hl)
	jp l4485
.l438a
	ld e,(ix+#04)
	ld d,(ix+#05)
.l4390
	ld l,(ix+#00)
	ld h,#00
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,l43a5
	ld (ix+#00),#00
	ld (ix+#01),#00
	jr l4390
.l43a5
	cp #fe
	jr nz,l43bc
	pop bc
.l43aa
	xor a
	ld (l4083),a
	ld (l408c),a
	ld (l4095),a
	ld a,#7e
	ld (l409a),a
	jp l461c
.l43bc
	add a
	ld l,a
	ld h,#00
	ld bc,(l4818)
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ld c,(ix+#01)
	ld b,#00
	ld a,l
	ld (l409d),a
	add hl,bc
	ex de,hl
.l43d5
	ld a,(de)
	inc de
	cp #ff
	jr nz,l43e3
	inc (ix+#00)
	ld (ix+#01),b
	jr l438a
.l43e3
	cp #a0
	jr c,l4410
	cp #c0
	jr c,l4403
	and #1f
	ld (ix+#02),a
	ld c,(ix+#0e)
	ld hl,l4247
	add hl,bc
	ld a,(hl)
	and #fe
	call l47a7
	inc (ix+#01)
	jp l44b1
.l4403
	and #1f
	add a
	ld c,a
	ld hl,l409f
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l4410
	cp #80
	jr c,l4431
	and #1f
	ld c,a
	add a
	add a
	add a
	add c
	ld (ix+#0e),a
	ld c,a
	ld hl,l4249
	add hl,bc
	ld a,(hl)
	ld (iy+#05),a
	inc hl
	ld a,(hl)
	ld (iy+#06),a
	inc (ix+#11)
	jr l43d5
.l4431
	cp #60
	jr c,l443c
	sub #60
	ld (ix+#03),a
	jr l43d5
.l443c
	ld (ix+#0f),a
.l443f
	ld hl,l409d
	ld a,e
	sub (hl)
	ld (ix+#01),a
	ld c,(ix+#0e)
	ld hl,l4246
	add hl,bc
	ld a,(hl)
	call l47a7
	res 0,(iy+#03)
	res 1,(iy+#03)
	ld (ix+#12),#03
	ld a,(ix+#03)
	ld (ix+#02),a
	ld c,(ix+#0e)
	ld hl,l424d
	add hl,bc
	ld e,(hl)
	dec hl
	ld a,(hl)
	ld (ix+#14),a
	ld (ix+#06),a
	ld a,(ix+#13)
	and #02
	ld (ix+#13),a
	dec hl
	bit 6,(hl)
	jr z,l4485
	ld (ix+#13),#02
.l4485
	ld c,(ix+#0f)
	ld hl,l40ad
	add hl,bc
	add hl,bc
	ld c,(hl)
	ld (ix+#16),c
	ld (ix+#18),c
	inc hl
	ld d,b
	ld b,(hl)
	ld (ix+#17),b
	ld (ix+#19),b
	ld h,b
	ld l,c
	add hl,de
	ld (ix+#1a),l
	ld (ix+#1b),h
	ld h,b
	ld l,c
	and a
	sbc hl,de
	ld (ix+#1c),l
	ld (ix+#1d),h
.l44b1
	ld c,(ix+#0e)
	xor a
	ld b,a
	push iy
	ld iy,l4246
	add iy,bc
	ld e,(iy+#05)
	ld (ix+#1e),e
	bit 5,e
	jr nz,l44dc
	or (ix+#12)
	jr z,l44dc
	dec (ix+#12)
	jr nz,l44dc
	ld a,(iy+#01)
	ex (sp),iy
	call l47a7
	ex (sp),iy
.l44dc
	bit 7,(ix+#08)
	jr z,l44f8
	ld l,(ix+#16)
	ld h,(ix+#17)
	ld c,(ix+#0a)
	add hl,bc
	ld c,(ix+#0c)
	and a
	sbc hl,bc
	ld (ix+#16),l
	ld (ix+#17),h
.l44f8
	bit 5,e
	jr z,l4529
	ld a,(ix+#13)
	xor #20
	ld (ix+#13),a
	and #20
	jr nz,l4519
	ld a,(ix+#18)
	ld (ix+#16),a
	ld a,(ix+#19)
	ld (ix+#17),a
	ld a,(iy+#00)
	jr l4529
.l4519
	ld a,(iy+#06)
	ld (ix+#17),a
	ld a,(iy+#01)
	ex (sp),iy
	call l47a7
	ex (sp),iy
.l4529
	srl (ix+#11)
	jp c,l45e4
	srl (ix+#1e)
	jr c,l457b
	bit 7,(ix+#06)
	jr z,l457b
	ld a,(ix+#0a)
	or (ix+#0c)
	jr nz,l457b
	ld l,(ix+#16)
	ld h,(ix+#17)
	ld c,(iy+#08)
	bit 0,(ix+#13)
	jr nz,l4564
	add hl,bc
	ld a,(ix+#1a)
	sub l
	ld a,(ix+#1b)
	sbc h
	jr nc,l4575
	set 0,(ix+#13)
	jr l4575
.l4564
	and a
	sbc hl,bc
	ld a,l
	sub (ix+#1c)
	ld a,h
	sbc (ix+#1d)
	jr nc,l4575
	res 0,(ix+#13)
.l4575
	ld (ix+#16),l
	ld (ix+#17),h
.l457b
	srl (ix+#1e)
	srl (ix+#1e)
	jr nc,l459a
	ld a,(ix+#17)
	cp #5f
	jr z,l459a
	ld a,(ix+#16)
	add (iy+#06)
	ld (ix+#16),a
	jr nc,l459a
	inc (ix+#17)
.l459a
	srl (ix+#1e)
	jr nc,l45b5
	ld a,(ix+#17)
	cp #01
	jr z,l45b5
	ld a,(ix+#16)
	sub (iy+#06)
	ld (ix+#16),a
	jr nc,l45b5
	dec (ix+#17)
.l45b5
	srl (ix+#1e)
	jr nc,l45e4
.l45bb
	ld c,(ix+#14)
	ld hl,l416d
	add hl,bc
	ld a,(hl)
	cp #80
	jr nz,l45cf
	ld a,(iy+#06)
	ld (ix+#14),a
	jr l45bb
.l45cf
	add (ix+#0f)
	ld c,a
	ld hl,l40ad
	add hl,bc
	add hl,bc
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	inc (ix+#14)
.l45e4
	pop iy
	ld a,(ix+#16)
	cp (iy+#00)
	jr z,l45f4
	ld (iy+#00),a
	ld (iy+#02),b
.l45f4
	ld a,(ix+#17)
	cp (iy+#01)
	jr z,l4602
	ld (iy+#01),a
	ld (iy+#02),b
.l4602
	ld c,#1f
	add ix,bc
	ld c,#09
	add iy,bc
	pop bc
	dec b
	jp nz,l433c
	ld a,(l409c)
	and a
	jr nz,l4618
	ld a,(l409b)
.l4618
	dec a
	ld (l409c),a
.l461c
	ld iy,l407f
	ld c,#00
	call l4638
	ld a,(l409e)
	ld iy,l4088
	ld c,#01
	and a
	call z,l4638
	ld iy,l4091
	ld c,#02
.l4638
	push bc
	ld l,(iy+#07)
	ld h,(iy+#08)
	bit 0,(iy+#04)
	jr z,l4667
	ld a,(iy+#06)
	rrca
	rrca
	rrca
	rrca
	and #0f
	add #d2
	ld c,a
	adc #42
	sub c
	ld b,a
	ld a,(bc)
	ld b,a
	ld c,(iy+#03)
	ld a,(iy+#05)
	bit 1,c
	call z,l471c
	ld (iy+#03),c
	jr l4673
.l4667
	ld bc,#0001
	ld (iy+#03),b
	ld a,(iy+#06)
	call l471c
.l4673
	ld (iy+#07),l
	ld a,(iy+#08)
	ld (iy+#08),h
	pop bc
	cp h
	jr nz,l4685
	bit 0,(iy+#02)
	ret nz
.l4685
	ld (iy+#02),#01
	ld e,(iy+#00)
	ld d,(iy+#01)
	ld l,h
	ld h,(iy+#04)
	ld b,#00
	ld a,l
	sub #40
	jr nc,l469b
	xor a
.l469b
	ld l,a
	ld a,l
	and #f0
	jp z,l4714
	ld a,(l4816)
	rra
	jp c,l4714
	push bc
	push hl
	ld bc,#0000
	ld hl,#0010
	ld a,l
	sub e
	ld a,h
	sbc d
	jr nc,l4712
	ld a,b
	sla c
	rla
	call l47b3
	pop hl
	pop bc
	bit 7,h
	jr z,l46d4
	push bc
	ld c,e
	srl c
	srl c
	srl c
	ld b,#06
	call l47cf
	pop bc
	ld b,#38
.l46d4
	ld a,h
	and #70
	jr z,l46e6
	push bc
	push hl
	sla c
	call l47e9
	pop hl
	pop bc
	ld a,b
	or #07
	ld b,a
.l46e6
	push bc
	ld a,c
	add #08
	ld b,a
	ld c,l
	srl c
	srl c
	srl c
	srl c
	call l47cf
	pop bc
	ld a,c
	cp #01
	rla
	ld d,a
	add a
	add a
	add a
	or d
	ld d,a
	ld a,b
	cpl
	ld hl,l4817
	xor (hl)
	and d
	ret z
	xor (hl)
	ld (hl),a
	ld c,a
	ld b,#07
	jp l47cf
.l4712
	pop hl
	pop bc
.l4714
	ld a,c
	add #08
	ld c,b
	ld b,a
	jp l47cf
.l471c
	ex de,hl
	bit 0,c
	jr nz,l4726
	rrca
	rrca
	rrca
	jr l4727
.l4726
	add a
.l4727
	and #1e
	add #b2
	ld l,a
	adc #42
	sub l
	ld h,a
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ex de,hl
	bit 0,c
	jr nz,l474b
	add hl,de
	jr c,l4746
	add hl,de
	jr c,l4746
	add hl,de
	jr c,l4746
	ld a,h
	cp #f8
	ret c
.l4746
	ld hl,#f800
	inc c
	ret
.l474b
	ld a,b
	and #f0
	or #07
	scf
	sbc hl,de
	jr c,l4758
	cp h
	inc hl
	ret c
.l4758
	inc a
	ld h,a
	ld l,#00
	inc c
	ret
.l475e
	ld a,(de)
	ld (ix+#0f),a
	inc de
	ld a,(de)
	ld (ix+#10),a
	inc de
	ld a,(de)
	ld (ix+#08),a
	inc de
	ld a,(de)
	ld (ix+#0a),a
	jr l4786
.l4773
	ld a,(de)
	ld (ix+#0f),a
	inc de
	ld a,(de)
	ld (ix+#10),a
	inc de
	ld a,(de)
	ld (ix+#08),a
	inc de
	ld a,(de)
	ld (ix+#0c),a
.l4786
	inc de
	ld a,(de)
	ld (ix+#09),a
	inc de
	jp l443f
.l478f
	ld a,(de)
	ld (ix+#03),a
.l4793
	inc de
	jp l43d5
.l4797
	ld a,(de)
	ld (ix+#02),a
	inc de
	ld hl,l409d
	ld a,e
	sub (hl)
	ld (ix+#01),a
	jp l44b1
.l47a7
	cp (iy+#04)
	ret z
	ld (iy+#04),a
	ld (iy+#02),#00
	ret
.l47b3
	ld b,#10
.l47b5
	adc hl,hl
	sbc hl,de
	jr nc,l47bc
	add hl,de
.l47bc
	rl c
	rla
	djnz l47b5
	ld b,a
	add hl,hl
	sbc hl,de
	jr c,l47c8
	dec bc
.l47c8
	xor a
	sub c
	ld e,a
	sbc b
	sub e
	ld d,a
	ret
.l47cf
	ld a,b
	ld b,#f4
	out (c),a
	ld b,#f6
	ld a,#c0
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),c
	ld bc,#f680
	out (c),c
	out (c),a
	ret
.l47e9
	ld hl,#f680
	ld a,#c0
	ld b,#f4
	out (c),c
	ld b,h
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),e
	ld e,b
	inc c
	ld b,h
	out (c),l
	out (c),a
	ld b,e
	out (c),c
	ld b,h
	ld c,#c0
	out (c),c
	out (c),a
	ld b,e
	out (c),d
	ld b,h
	out (c),l
	out (c),a
	ret
.l4818 equ $ + 2
.l4817 equ $ + 1
.l4816
	db #00,#3f,#1c,#48,#2d,#03,#3a,#00
	db #3c,#00,#47,#00,#5b,#00,#7e,#00
	db #8d,#00,#99,#00,#a5,#00,#f5,#00
	db #47,#01,#52,#01,#75,#01,#86,#01
	db #97,#01,#da,#01,#fd,#01,#0b,#02
	db #16,#02,#28,#02,#4b,#02,#63,#02
	db #86,#02,#8e,#02,#b1,#02,#bc,#02
	db #e6,#02,#f1,#02,#15,#03,#20,#03
	db #cf,#ff,#80,#63,#1a,#1a,#1a,#60
	db #1a,#1a,#1a,#1a,#ff,#61,#81,#26
	db #82,#3e,#81,#26,#82,#3e,#81,#26
	db #82,#3e,#60,#81,#26,#26,#26,#26
	db #ff,#80,#63,#1a,#1a,#1a,#1a,#1a
	db #1a,#1a,#1a,#1c,#1c,#1c,#1c,#1c
	db #1c,#1c,#1c,#1c,#1c,#1c,#1c,#1c
	db #1c,#1c,#1c,#1d,#1d,#1c,#1c,#1d
	db #1d,#1c,#1c,#ff,#61,#82,#3e,#3e
	db #81,#26,#82,#3e,#3e,#3e,#81,#26
	db #82,#3e,#ff,#80,#61,#1a,#1a,#1a
	db #63,#1a,#61,#1d,#1c,#1a,#ff,#81
	db #61,#26,#26,#26,#63,#26,#61,#26
	db #26,#26,#ff,#83,#63,#35,#61,#39
	db #63,#34,#61,#35,#63,#37,#63,#35
	db #61,#39,#63,#34,#61,#35,#63,#37
	db #63,#37,#61,#3b,#63,#36,#61,#37
	db #63,#39,#63,#37,#61,#3b,#63,#36
	db #61,#37,#63,#39,#63,#39,#61,#3c
	db #63,#3b,#61,#37,#63,#39,#63,#39
	db #61,#3c,#63,#3b,#61,#37,#63,#39
	db #63,#39,#61,#3c,#63,#37,#37,#61
	db #3b,#63,#39,#61,#3c,#63,#37,#37
	db #61,#3b,#ff,#80,#61,#1a,#1a,#21
	db #63,#1a,#61,#1a,#21,#1a,#61,#1a
	db #1a,#21,#63,#1a,#61,#1a,#21,#1a
	db #61,#1c,#1c,#23,#63,#1c,#61,#1c
	db #23,#1c,#61,#1c,#1c,#23,#63,#1c
	db #61,#1c,#23,#1c,#61,#1c,#1c,#23
	db #63,#1c,#61,#1c,#23,#1c,#61,#1c
	db #1c,#23,#63,#1c,#61,#1c,#23,#1c
	db #61,#1d,#1d,#24,#63,#1d,#61,#1d
	db #24,#1d,#61,#1d,#1d,#24,#63,#1d
	db #61,#1d,#24,#1d,#ff,#80,#61,#13
	db #63,#1f,#61,#1a,#63,#1b,#1d,#ff
	db #87,#61,#3b,#3c,#3e,#3f,#3e,#3c
	db #60,#38,#3b,#61,#38,#6b,#37,#61
	db #33,#32,#33,#36,#37,#38,#3b,#3c
	db #3b,#38,#37,#36,#33,#32,#30,#2f
	db #30,#32,#ff,#84,#61,#3b,#3c,#3e
	db #3f,#3e,#3c,#60,#38,#3b,#61,#38
	db #7f,#37,#cf,#ff,#81,#61,#18,#18
	db #82,#60,#3c,#3c,#3c,#3c,#63,#3c
	db #81,#61,#30,#30,#ff,#80,#60,#18
	db #18,#24,#24,#18,#18,#24,#24,#18
	db #18,#24,#24,#18,#18,#24,#24,#18
	db #18,#24,#24,#18,#18,#24,#24,#18
	db #18,#24,#24,#18,#18,#24,#24,#1a
	db #1a,#26,#26,#1a,#1a,#26,#26,#1a
	db #1a,#26,#26,#1a,#1a,#26,#26,#1a
	db #1a,#26,#26,#1a,#1a,#26,#26,#1a
	db #1a,#26,#26,#1a,#1a,#26,#26,#ff
	db #83,#61,#37,#3c,#3e,#3f,#3e,#3c
	db #3e,#3f,#37,#3c,#3e,#3f,#3e,#3c
	db #3e,#3f,#37,#3e,#3f,#41,#3f,#3e
	db #3f,#41,#37,#3e,#3f,#41,#3f,#3e
	db #3f,#41,#ff,#82,#60,#30,#30,#30
	db #30,#81,#61,#30,#82,#60,#30,#30
	db #ff,#81,#60,#30,#30,#30,#30,#30
	db #30,#30,#30,#ff,#85,#6b,#3f,#60
	db #3c,#3d,#3e,#70,#3f,#6b,#41,#60
	db #3e,#3f,#40,#70,#41,#ff,#80,#60
	db #18,#18,#16,#18,#1b,#1a,#18,#16
	db #18,#18,#16,#18,#1b,#1a,#18,#16
	db #1f,#1f,#1d,#1f,#22,#21,#1f,#1d
	db #1f,#1f,#1d,#1f,#22,#21,#1f,#1d
	db #ff,#60,#82,#24,#3c,#3c,#3c,#81
	db #30,#82,#3c,#3c,#82,#24,#3c,#3c
	db #3c,#3c,#81,#30,#82,#3c,#3c,#3c
	db #ff,#83,#63,#30,#61,#37,#67,#37
	db #60,#35,#37,#63,#39,#61,#35,#69
	db #37,#83,#63,#3c,#61,#43,#67,#43
	db #60,#41,#43,#63,#41,#69,#37,#8a
	db #60,#45,#45,#ff,#89,#7d,#30,#88
	db #60,#3c,#3c,#ff,#80,#60,#18,#18
	db #16,#18,#1b,#1a,#18,#16,#18,#18
	db #16,#18,#1b,#1a,#18,#16,#18,#18
	db #16,#18,#1b,#1a,#18,#16,#18,#18
	db #16,#18,#1b,#1a,#18,#16,#ff,#80
	db #60,#21,#24,#23,#21,#1f,#21,#23
	db #2d,#ff,#8b,#62,#39,#60,#39,#37
	db #39,#37,#39,#3c,#3b,#64,#39,#60
	db #3c,#63,#41,#69,#39,#88,#60,#43
	db #43,#8b,#62,#3b,#60,#3b,#3c,#3e
	db #61,#40,#62,#3e,#3b,#6f,#37,#8a
	db #60,#45,#45,#ff,#80,#60,#1f,#1f
	db #1d,#1f,#1d,#1f,#23,#2b,#ff,#8b
	db #62,#35,#60,#35,#37,#61,#39,#62
	db #37,#60,#35,#61,#34,#62,#30,#63
	db #35,#61,#39,#67,#37,#88,#60,#43
	db #43,#8b,#63,#3c,#3b,#39,#61,#37
	db #71,#39,#ff,#80,#60,#1d,#29,#1a
	db #1d,#1f,#1d,#1c,#1d,#ff,#80,#60
	db #1f,#2b,#1d,#1f,#22,#21,#1d,#1f
	db #ff
;
; #0ccd	- relocated by Megachur
;
.l0cce equ $ +1
.l0ccd
	db #7f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#a0
.l0ce0
	db #3f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00

; #1314
;
.init_music		; modified by Megachur
;
	ld hl,#0cdf	; #100a
	set 7,(hl)
	; call #16fa
	ld (l0ccd),a
	ret
;
.play_music		; modified by Megachur
;
	ld hl,l0ccd
	ld de,l0cce
	; ld bc,#7fc7
	; out (c),c
	ld bc,l0ce0
	jp real_play_music
	; ld bc,#7fc0
	; out (c),c
	; ret
;
.music_info
	db "Time Scanner (1989)(Activision)()",0
	db "",0

	read "music_end.asm"
