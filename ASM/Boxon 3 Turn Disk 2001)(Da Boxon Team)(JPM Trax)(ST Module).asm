; Music of Boxon 3 Turn Disk 2001)(Da Boxon Team)(JPM Trax)(ST Module)
; Ripped by Megachur the 05/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOXON3TD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #42b8

	read "music_header.asm"

	jp l42c3
	jp l434b
	jp l432f
	ld h,(hl)
	inc b
;
.init_music
.l42c3
;
	ld b,#03
	ld ix,l4692
	ld iy,l45be
	ld de,#001c
.l42d0
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l42d0
	ld a,#06
	ld (l4373),a
	ld a,d
	ld (l4387),a
	inc a
	ld (l436e),a
	ld a,#38
	ld (l4378),a
	ld a,#ff
	ld (l45ba),a
	ld (l45bb),a
	ld (l45bc),a
	ld (l45bd),a
	ld a,#0c
	ld c,d
	call l459c
	ld a,#0d
	ld c,d
	jp l459c
;
.stop_music
.l432f
;
	ld a,#07
	ld c,#3f
	call l459c
	ld a,#08
	ld c,#00
	call l459c
	ld a,#09
	ld c,#00
	call l459c
	ld a,#0a
	ld c,#00
	jp l459c
;
.play_music
.l434b
;
	ld hl,l436e
	dec (hl)
	ld ix,l4692
	ld bc,l46a0
	call l4401
	ld ix,l46ae
	ld bc,l46bc
	call l4401
	ld ix,l46ca
	ld bc,l46d8
	call l4401
.l436e equ $ + 1
	ld a,#00
	or a
	jr nz,l4377
.l4373 equ $ + 1
	ld a,#00
	ld (l436e),a
.l4378 equ $ + 1
.l4377
	ld a,#00
	ld hl,l45bb
	cp (hl)
	jr z,l4386
	ld (hl),a
	ld c,a
	ld a,#07
	call l459c
.l4387 equ $ + 1
.l4386
	ld a,#00
	ld hl,l45ba
	cp (hl)
	jr z,l4395
	ld (hl),a
	ld c,a
	ld a,#06
	call l459c
.l4396 equ $ + 1
.l4395
	ld a,#00
	ld hl,l45bc
	cp (hl)
	jr z,l43a4
	ld (hl),a
	ld c,a
	ld a,#0b
	call l459c
.l43a5 equ $ + 1
.l43a4
	ld a,#00
	ld hl,l45bd
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l459c
.l43b2
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l44b2
.l43c1
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l459c
.l43db
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l43f0
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l43f0
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l4414
.l4401
	ld a,(l436e)
	or a
	jp nz,l44b2
	dec (ix+#06)
	jp nz,l44b2
	ld l,(ix+#00)
	ld h,(ix+#01)
.l4414
	ld a,(hl)
	or a
	jr z,l43b2
	cp #fe
	jr z,l43c1
	cp #ff
	jr z,l43db
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l45c4
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l4450
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l4450
	and #7f
	ld (ix+#06),a
	jr l44a3
.l4450
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l4464
	ld (ix+#05),a
	ld (ix+#0a),d
.l4464
	add a
	add a
	add a
	ld e,a
	ld hl,l46fa
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l44a3
	cp #f0
	jp z,l4558
	cp #d0
	jp z,l4574
	cp #b0
	jp z,l457c
	cp #80
	jp nc,l4584
	cp #10
	jr nz,l44a3
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l44a3
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l44b2
	ld a,(ix+#17)
	or a
	jr nz,l44c6
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l44c6
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l44f1
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l45c4
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l44f1
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l459c
	ld c,h
	ld a,(ix+#03)
	call l459c
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l452f
	and #0f
	sub (ix+#0a)
	jr nc,l4525
	xor a
.l4525
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l459c
.l452f
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l454c
	ld b,a
	ld a,c
	ld (l4387),a
	ld a,b
	sub #40
.l454c
	ld (l4553),a
	ld a,(l4378)
.l4553 equ $ + 1
	bit 0,a
	ld (l4378),a
	ret
.l4558
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l477a
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l44a3
.l4574
	inc hl
	ld a,(hl)
	ld (l4373),a
	jp l44a3
.l457c
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l44a3
.l4584
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l43a5),a
	inc hl
	ld a,(hl)
	ld (l4396),a
	jp l44a3
.l459c
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
	ret
.l45bd equ $ + 3
.l45bc equ $ + 2
.l45bb equ $ + 1
.l45ba
	db #ff,#ff,#ff,#ff
.l45c4 equ $ + 6
.l45be
	db #1a,#4a,#32,#4a,#4a,#4a,#ee,#0e
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
	db #38,#00,#35,#00,#32,#00,#2f,#00
	db #2d,#00,#2a,#00,#28,#00,#26,#00
	db #24,#00,#22,#00,#20,#00,#1e,#00
	db #1c,#00,#1b,#00,#19,#00,#18,#00
	db #16,#00,#15,#00,#14,#00,#13,#00
	db #12,#00,#11,#00,#10,#00,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4692 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l46a0 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46ae
	db #00,#00,#02,#03,#09,#00,#00,#00
.l46bc equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l46ca equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l46d8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l46fa equ $ + 4
	db #75,#6c,#65,#2e,#9a,#47,#da,#47
	db #fa,#47,#00,#00,#1a,#48,#5a,#48
	db #7a,#48,#00,#00,#9a,#48,#da,#48
	db #fa,#48,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#1a,#49,#5a,#49
	db #7a,#49,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#9a,#49,#da,#49
	db #fa,#47,#10,#10,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
.l477a equ $ + 4
	db #dc,#3a,#00,#00,#dc,#3a,#fa,#49
	db #dc,#3a,#dc,#3a,#dc,#3a,#dc,#3a
	db #dc,#3a,#dc,#3a,#dc,#3a,#dc,#3a
	db #dc,#3a,#dc,#3a,#dc,#3a,#dc,#3a
	db #dc,#3a,#dc,#3a,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#05,#00,#06,#00
	db #08,#00,#0a,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#09,#05,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#8b,#89,#88,#88,#87
	db #87,#86,#85,#84,#83,#82,#81,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#18,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#62,#4a,#00
	db #65,#4a,#00,#82,#4a,#00,#65,#4a
	db #00,#82,#4a,#00,#9e,#4a,#00,#9e
	db #4a,#80,#1d,#4a,#00,#cc,#4a,#00
	db #cc,#4a,#00,#cc,#4a,#00,#cc,#4a
	db #00,#cc,#4a,#00,#cc,#4a,#00,#cc
	db #4a,#80,#35,#4a,#00,#fe,#4a,#00
	db #4a,#4b,#00,#cb,#4b,#00,#4a,#4b
	db #00,#cb,#4b,#00,#4a,#4b,#00,#4a
	db #4b,#80,#4d,#4a,#00,#40,#ff,#43
	db #0c,#17,#46,#02,#07,#48,#82,#4a
	db #86,#46,#86,#41,#90,#45,#82,#46
	db #82,#48,#86,#46,#84,#45,#82,#43
	db #82,#41,#82,#ff,#43,#0c,#07,#46
	db #82,#48,#82,#4a,#86,#4f,#86,#4d
	db #93,#cd,#07,#4b,#82,#4d,#82,#4a
	db #82,#48,#84,#46,#83,#45,#83,#ff
	db #43,#04,#f7,#01,#43,#02,#07,#45
	db #82,#46,#82,#45,#82,#43,#82,#41
	db #86,#41,#82,#43,#82,#45,#82,#41
	db #84,#3c,#8c,#3c,#82,#3e,#82,#3f
	db #84,#41,#82,#43,#84,#46,#82,#45
	db #82,#43,#82,#41,#82,#ff,#1f,#02
	db #00,#1f,#84,#1f,#82,#1f,#84,#1f
	db #82,#1f,#82,#22,#82,#22,#84,#22
	db #82,#22,#84,#22,#82,#22,#82,#1d
	db #82,#1d,#84,#1d,#82,#1d,#84,#1d
	db #82,#1d,#82,#20,#82,#20,#84,#20
	db #82,#20,#84,#20,#82,#20,#82,#ff
	db #3a,#04,#01,#3e,#02,#04,#3a,#02
	db #01,#6d,#02,#02,#3a,#02,#01,#3e
	db #04,#04,#3a,#04,#01,#3e,#02,#04
	db #3a,#02,#01,#6d,#02,#02,#3a,#02
	db #01,#3e,#02,#04,#3e,#82,#3a,#04
	db #01,#3e,#02,#04,#3a,#02,#01,#6d
	db #02,#02,#3a,#02,#01,#3e,#04,#04
	db #3a,#04,#01,#3e,#02,#04,#3a,#02
	db #01,#6d,#02,#02,#3e,#02,#04,#3e
	db #82,#3e,#82,#ff,#ba,#01,#ed,#02
	db #ed,#02,#ed,#02,#be,#04,#ed,#02
	db #ba,#01,#ed,#02,#ed,#02,#ed,#02
	db #ba,#01,#ed,#02,#be,#04,#ed,#02
	db #ed,#02,#ed,#02,#ba,#01,#ed,#02
	db #ed,#02,#ed,#02,#be,#04,#ed,#02
	db #ba,#01,#ed,#02,#ed,#02,#ed,#02
	db #ba,#01,#ed,#02,#be,#04,#ed,#02
	db #be,#04,#ed,#02,#ba,#01,#ed,#02
	db #ed,#02,#ed,#02,#be,#04,#ed,#02
	db #ba,#01,#ed,#02,#ed,#02,#ed,#02
	db #ba,#01,#ed,#02,#be,#04,#ed,#02
	db #ed,#02,#ed,#02,#ba,#01,#ed,#02
	db #ed,#02,#ed,#02,#be,#04,#ed,#02
	db #ba,#01,#ed,#02,#ed,#02,#ed,#02
	db #be,#04,#ed,#02,#be,#04,#ed,#02
	db #be,#04,#ed,#02,#ff,#ba,#01,#ed
	db #02,#ed,#02,#ed,#02,#be,#04,#ed
	db #02,#ba,#01,#ed,#02,#ed,#02,#ed
	db #02,#ba,#01,#ed,#02,#be,#04,#ed
	db #02,#ed,#02,#ed,#02,#ba,#01,#ed
	db #02,#ed,#02,#ed,#02,#be,#04,#ed
	db #02,#ba,#01,#ed,#02,#ed,#02,#ed
	db #02,#ba,#01,#ed,#02,#be,#04,#ed
	db #02,#be,#04,#ed,#02,#ba,#01,#ed
	db #02,#ed,#02,#ed,#02,#be,#04,#ed
	db #02,#ba,#01,#ed,#02,#ed,#02,#ed
	db #02,#ba,#01,#ed,#02,#be,#04,#ed
	db #02,#ed,#02,#ed,#02,#ba,#01,#ed
	db #02,#ed,#02,#ed,#02,#be,#04,#ed
	db #02,#ba,#01,#ed,#02,#ed,#02,#ed
	db #02,#be,#04,#ed,#02,#be,#04,#ed
	db #02,#be,#04,#ed,#02,#ff
;
.music_info
	db "Boxon 3 Turn Disk 2001)(Da Boxon Team)(JPM Trax)",0
	db "ST Module",0

	read "music_end.asm"
