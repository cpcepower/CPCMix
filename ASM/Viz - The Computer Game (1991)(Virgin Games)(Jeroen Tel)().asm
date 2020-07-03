; Music of Viz - The Computer Game (1991)(Virgin Games)(Jeroen Tel)()
; Ripped by Megachur the 30/07/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "VIZTHECG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #7400
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

.l7400
	dw l7408,l7416,l764b,#0303
.l740a equ $ + 2
.l7408
	dw l7428,l7465,l749e,l7465
	dw l7512,#0000,l740a
.l7416
	db #54,#75,#6e,#75,#c2,#75,#c2,#75
	db #16,#76,#16,#76,#54,#75,#00,#00
.l7428 equ $ + 2
	db #18,#74,#df,#00,#1f,#13,#83,#01
	db #11,#8a,#88,#00,#01,#01,#98,#e5
	db #0b,#e1,#0e,#e3,#09,#0b,#e7,#0e
	db #09,#e5,#0b,#e1,#0e,#e3,#09,#0b
	db #e7,#0e,#0e,#e5,#0b,#e1,#0e,#e3
	db #09,#0b,#e7,#0e,#09,#e5,#0b,#e1
	db #0e,#e3,#09,#0b,#e3,#10,#e1,#11
.l7465 equ $ + 7
	db #10,#e3,#0e,#e1,#10,#0e,#80,#df
	db #00,#1f,#13,#83,#01,#11,#8a,#e5
	db #98,#0b,#e1,#0e,#e3,#09,#0b,#e7
	db #0e,#09,#e5,#0b,#e1,#0e,#e3,#09
	db #0b,#e7,#0e,#0e,#e5,#0b,#e1,#0e
	db #e3,#09,#0b,#e7,#0e,#09,#e5,#0b
	db #e1,#0e,#e3,#09,#0b,#e3,#10,#e1
	db #11,#10,#e3,#0e,#e1,#10,#0e,#80
.l749e
	db #df,#00,#1f,#13,#83,#01,#11,#8a
	db #e5,#0b,#e1,#06,#e3,#09,#0b,#e7
	db #0e,#e3,#06,#09,#e5,#0b,#e1,#0e
	db #e3,#10,#0e,#09,#0b,#e7,#09,#e5
	db #0b,#e1,#0e,#e3,#10,#10,#12,#11
	db #10,#0e,#e5,#0b,#e1,#0e,#e3,#09
	db #0b,#10,#e1,#11,#10,#e3,#0e,#df
	db #00,#1f,#12,#e1,#92,#92,#df,#00
	db #1f,#13,#8a,#98,#e5,#0b,#e1,#0e
	db #e3,#09,#0b,#e7,#0e,#09,#e5,#0b
	db #e1,#0e,#e3,#09,#0b,#e7,#0e,#0e
	db #e5,#0b,#e1,#0e,#e3,#09,#0b,#e7
	db #0e,#09,#e5,#0b,#e1,#0e,#e3,#09
	db #0b,#e3,#10,#e1,#11,#10,#e3,#0e
.l7512 equ $ + 4
	db #e1,#10,#0e,#80,#df,#00,#1f,#13
	db #83,#01,#11,#8a,#e5,#0b,#e1,#06
	db #e3,#09,#0b,#e7,#0e,#e3,#06,#09
	db #e5,#0b,#e1,#0e,#e3,#10,#0e,#09
	db #0b,#e7,#09,#e5,#0b,#e1,#0e,#e3
	db #10,#10,#12,#11,#10,#0e,#e1,#09
	db #0b,#8e,#09,#e3,#0b,#e3,#09,#e1
	db #0e,#0e,#0d,#8e,#0b,#8e,#df,#00
	db #1f,#12,#e1,#92,#92,#80,#df,#00
	db #27,#11,#83,#01,#11,#8a,#e7,#93
	db #93,#93,#93,#93,#93,#93,#93,#93
	db #93,#93,#93,#93,#93,#93,#93,#80
	db #93,#df,#00,#1f,#12,#92,#df,#00
	db #27,#11,#8a,#93,#df,#00,#1f,#12
	db #92,#df,#00,#27,#11,#8a,#93,#df
	db #00,#1f,#12,#92,#df,#00,#27,#11
	db #8a,#93,#df,#00,#1f,#12,#92,#df
	db #00,#27,#11,#8a,#93,#df,#00,#1f
	db #12,#92,#df,#00,#27,#11,#8a,#93
	db #df,#00,#1f,#12,#92,#df,#00,#27
	db #11,#8a,#93,#df,#00,#1f,#12,#92
	db #df,#00,#27,#11,#8a,#93,#df,#00
	db #1f,#12,#92,#80,#dc,#00,#1f,#12
	db #8a,#e3,#8f,#a2,#2f,#cf,#92,#8a
	db #cc,#a2,#2f,#8f,#2f,#cf,#92,#8a
	db #a2,#cc,#e1,#2d,#2f,#e3,#8f,#2f
	db #cf,#92,#8a,#a2,#cc,#2f,#8f,#2f
	db #cf,#92,#8a,#cc,#a2,#e1,#26,#2f
	db #e3,#8f,#a2,#2f,#cf,#92,#8a,#cc
	db #a2,#2f,#8f,#2f,#cf,#92,#8a,#a2
	db #cc,#e1,#2d,#2f,#e3,#8f,#2f,#cf
	db #92,#8a,#a2,#cc,#2f,#8f,#2f,#cf
	db #92,#8a,#cc,#a2,#e1,#26,#2f,#80
	db #df,#00,#27,#11,#8a,#84,#e7,#93
	db #df,#00,#1f,#12,#92,#df,#00,#27
	db #11,#8a,#e3,#93,#93,#df,#00,#1f
	db #12,#e7,#92,#df,#00,#27,#11,#8a
	db #93,#df,#00,#1f,#12,#92,#df,#00
	db #27,#11,#8a,#e3,#93,#93,#df,#00
.l764b equ $ + 5
	db #1f,#12,#e7,#92,#80,#51,#76,#00
	db #00,#4b,#76,#ff,#8f,#8f,#ff,#8f
	db #8f,#80,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	
	
	org #7a00
.l7a05 equ $ + 5
.l7a04 equ $ + 4
.l7a03 equ $ + 3
.l7a02 equ $ + 2
.l7a01 equ $ + 1
.l7a00
	db #00,#00,#00,#10,#10,#00
;
.play_music
;
	push af
	push bc
	push de
	push hl
	call l7a43
	ld hl,l7acb
	dec (hl)
	ld h,#7e
	call l7aab
	inc h
	call l7aab
	inc h
	call l7aab
	ld a,#3f
	ld l,#30
	and (hl)
	dec h
	and (hl)
	dec h
	and (hl)
	ld (l7c3c),a
	call l7bb5
	call l7fe0
	ld hl,l7acb
	ld a,(hl)
	or a
	jr nz,l7a3b
	ld a,(l7a05)
	ld (hl),a
.l7a3b
	call l7bc5
	pop hl
	pop de
	pop bc
	pop af
	ret
.l7a43
	ld a,(l7a01)
	or a
	jr nz,l7a4f
	ld a,(l7a00)
;
.init_music
;
	ld (l7a50),a
.l7a50 equ $ + 1
.l7a4f
	ld a,#00
	or a
	ret z
	push af
	call l7c0b
	pop af
	cp #02
	ret nc
	ld (l7a01),a
	ld de,l7400
	ld h,#7e
	call l7a7f
	call l7a7f
	call l7a7f
	ld a,(de)
	inc de
	ld (l7a05),a
	xor a
	ld (l7a02),a
	inc a
	ld (l7acb),a
	ld a,#10
	ld (l7a04),a
	ret
.l7a7f
	ld l,#05
	ld (hl),#01
	dec l
	xor a
	ld (hl),a
	ld l,#07
	ld (hl),a
	ld l,#09
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld l,#2f
	ld (hl),a
	ld a,(de)
	inc de
	ld c,a
	ld a,(de)
	inc de
	ld b,a
	ld l,#02
	ld a,(bc)
	ld (hl),a
	inc bc
	inc l
	ld a,(bc)
	ld (hl),a
	inc bc
	ld l,#00
	ld (hl),c
	inc l
	ld (hl),b
	ld l,#31
	ld (hl),l
	inc h
	ret
.l7aab
	ld l,#31
	ld a,(hl)
	or a
	ret z
	ld l,#04
	bit 7,(hl)
	jr z,l7ac5
.l7ab7 equ $ + 1
	ld a,#00
	dec a
	ld (l7ab7),a
	jr nz,l7ac5
	ld l,#20
	ld a,(hl)
	ld l,#30
	or (hl)
	ld (hl),a
.l7ac5
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
.l7acb equ $ + 1
	ld a,#73
	or a
	jr nz,l7ada
	ld l,#05
	dec (hl)
	jr z,l7ae6
	call l7e78
	call l7ed2
.l7ada
	call l8066
	call l8032
	call l80fb
	jp l7e83
.l7ae6
	ld a,(de)
	inc de
	or a
	jp m,l7b31
.l7aec
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call l7e9e
	ld l,#14
	ld a,(hl)
	ld l,#0b
	ld (hl),a
	ld l,#0d
	ld a,(hl)
	ld l,#05
	ld (hl),a
	ld l,#18
	ld (hl),#00
	ld l,#2e
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#2c
	ld a,(hl)
	dec l
	ld (hl),a
	call l8152
	ld l,#0e
	call l7b1a
	inc l
.l7b1a
	ld a,(hl)
	ld c,a
	and #0f
	inc l
	ld (hl),a
	ld a,c
	rra
	rra
	rra
	rra
	and #0f
	inc l
	ld (hl),a
	ret
.l7b2a
	sub #df
	ld l,#0d
	ld (hl),a
	jr l7ae6
.l7b31
	cp #e0
	jr nc,l7b2a
	cp #d0
	jr nc,l7b61
	cp #c0
	jr nc,l7b59
	cp #a0
	jr nc,l7b88
	ld c,h
	add a
	add #32
	ld l,a
	adc #7f
	sub l
	ld h,a
	ld a,c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	ld (l7b54),bc
.l7b54 equ $ + 1
	call #0000
	jp l7ae6
.l7b59
	sub #c0
	ld l,#14
	ld (hl),a
	jp l7ae6
.l7b61
	sub #d0
	ld l,#14
	ld (hl),a
	ex de,hl
	ld e,#0e
	ldi
	ld e,#11
	ldi
	ex de,hl
	ld a,(de)
	rra
	rra
	rra
	rra
	and #0f
	ld l,#19
	ld (hl),a
	inc l
	ld (hl),a
	ld a,(de)
	and #0f
	ld l,#1b
	ld (hl),a
	inc l
	ld (hl),a
	inc de
	jp l7ae6
.l7b88
	sub #a0
	add a
	add #74
	ld c,a
	adc #81
	sub c
	ld b,a
	ld a,(bc)
	ld l,#21
	ld (hl),a
	inc l
	inc bc
	ld a,(bc)
	ld (hl),a
	inc l
	ld (hl),#00
	ld l,#04
	set 0,(hl)
	jp l7ae6
.l7ba4
	ld a,#35
	ld (l7a02),a
	ld (l7a03),a
	ret
.l7bad
	ld a,(de)
	ld l,#2f
	ld (hl),a
	inc de
	ret
.l7bb3
	inc (hl)
	ret
.l7bb5
	ld hl,l7a02
	ld a,(hl)
	or a
	ret z
	inc hl
	dec (hl)
	ret nz
	ld (hl),a
	inc hl
	dec (hl)
	ret p
	inc (hl)
	jr l7c0b
.l7bc5
	call l7c29
	ld h,#7e
	call l7bd2
	inc h
	call l7bd2
	inc h
.l7bd2
	ld l,#06
	call l7bee
	call l7bee
	ld a,(l7a04)
	add a
	ret z
	ld b,(hl)
	inc l
	add a
	add a
	add a
	add (hl)
	push hl
	ld l,a
	ld h,#7d
	ld a,b
	ld c,(hl)
	pop hl
	jr l7bf2
.l7bee
	ld a,(hl)
	inc l
	ld c,(hl)
	inc l
.l7bf2
	ld b,d
	out (c),a
.l7bf6 equ $ + 1
	ld a,#c0
	ld b,e
	out (c),a
	and #3f
	out (c),a
	ld b,d
	out (c),c
	ld b,e
	ld c,a
	or #80
	out (c),a
	out (c),c
	ret
.l7c0a
	pop af
.l7c0b
	xor a
	ld (l7a01),a
	ld (l7a50),a
	ld (l7a00),a
	ld (l7e31),a
	ld (l7f31),a
	ld (l8031),a
	ld a,#3f
	ld (l7e30),a
	ld (l7f30),a
	ld (l8030),a
.l7c29
	ld de,#f4f6
	ld b,e
	in a,(c)
	or #c0
	ld (l7bf6),a
	ld a,#06
.l7c37 equ $ + 1
	ld c,#01
	call l7bf2
.l7c3c equ $ + 1
	ld a,#3f
	ld c,a
	ld a,#07
	jr l7bf2
.l7c42
	ld l,#04
	set 7,(hl)
	res 0,(hl)
	ret
.l7c49
	ld a,(de)
	inc de
	ld (l8158),a
	ret
	dw #077c,#0710,#06ab,#064b
	dw #05f1,#059b,#054b,#04ff
	dw #04b7,#0473,#0433,#03f7
	dw #03be,#0388,#0355,#0326
	dw #02f8,#02ce,#02a5,#027f
	dw #025c,#023a,#021a,#01fb
	dw #01df,#01c4,#01ab,#0193
	dw #017c,#0167,#0153,#0140
	dw #012e,#011d,#010d,#00fe
	dw #00f0,#00e2,#00d5,#00c9
	dw #00be,#00b3,#00a9,#00a0
	dw #0097,#008e,#0086,#007f
	dw #0078,#0071,#006b,#0065
	dw #005f,#005a,#0055,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0039,#0035,#0032
	dw #0030,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#02,#03,#04,#05,#06
	db #07,#08,#09,#0a,#0b,#0c,#0d,#0e
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#01,#01,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#01
	db #01,#01,#01,#01,#02,#02,#02,#02
	db #02,#00,#00,#00,#00,#01,#01,#01
	db #01,#02,#02,#02,#02,#03,#03,#03
	db #03,#00,#00,#00,#00,#01,#01,#01
	db #02,#02,#02,#03,#03,#03,#04,#04
	db #04,#00,#00,#00,#01,#01,#01,#02
	db #02,#03,#03,#03,#04,#04,#04,#05
	db #05,#00,#00,#00,#01,#01,#02,#02
	db #03,#03,#03,#04,#04,#05,#05,#06
	db #06,#00,#00,#01,#01,#02,#02,#03
	db #03,#04,#04,#05,#05,#06,#06,#07
	db #07,#00,#00,#01,#01,#02,#02,#03
	db #03,#04,#05,#05,#06,#06,#07,#07
	db #08,#00,#00,#01,#01,#02,#03,#03
	db #04,#05,#05,#06,#06,#07,#08,#08
	db #09,#00,#00,#01,#02,#02,#03,#04
	db #04,#05,#06,#06,#07,#08,#08,#09
	db #0a,#00,#00,#01,#02,#03,#03,#04
	db #05,#06,#06,#07,#08,#09,#09,#0a
	db #0b,#00,#00,#01,#02,#03,#04,#04
	db #05,#06,#07,#08,#08,#09,#0a,#0b
	db #0c,#00,#00,#01,#02,#03,#04,#05
	db #06,#07,#07,#08,#09,#0a,#0b,#0c
	db #0d,#00,#00,#01,#02,#03,#04,#05
	db #06,#07,#08,#09,#0a,#0b,#0c,#0d
	db #0e,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#00,#08,#0f,#00,#04,#00
	db #00,#00,#00,#00,#00,#0f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#08,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7e31 equ $ + 2
.l7e30 equ $ + 1
	db #00,#7f,#00
.l7e32
	ld l,#1f
.l7e34
	ld a,(hl)
.l7e35
	cpl
	ld l,#30
	ld (hl),a
	ld l,#04
	res 4,(hl)
	res 0,(hl)
	ret
.l7e40
	call l7e51
	ld l,#20
	jr l7e34
.l7e47
	call l7e51
.l7e4a
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	jr l7e35
.l7e51
	ld a,(de)
	inc de
	ld (l7c37),a
	ld a,(de)
	inc de
	ld (l7eec),a
	ld a,(de)
	inc de
	ld (l7eea),a
	ld a,(de)
	inc de
	ld (l7eeb),a
	ret
.l7e66
	ret
.l7e67
	ld l,#0b
	ld (hl),#00
.l7e6b
	pop af
	ld l,#0d
	ld a,(hl)
	ld l,#05
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l7e78
	ld l,#15
	ld a,(hl)
	or a
	ret z
	ld l,#0c
	add (hl)
	ld (hl),a
	jr l7e9e
.l7e83
	ld l,#04
	bit 0,(hl)
	ret z
	ld l,#21
	ld a,(hl)
	inc l
	ld b,(hl)
	inc l
	add (hl)
	ld c,a
	jr nc,l7e93
	inc b
.l7e93
	inc (hl)
	ld a,(bc)
	or a
	jp p,l7e9b
	ld (hl),#00
.l7e9b
	ld l,#0c
	add (hl)
.l7e9e
	ld l,#2f
	add (hl)
	add a
	add #4f
	ld c,a
	adc #7c
	sub c
	ld b,a
	ld a,(bc)
	inc bc
	ld l,#07
	ld (hl),a
	ld a,(bc)
	ld l,#09
	ld (hl),a
	ld l,#04
	bit 2,(hl)
	ret z
	push de
	ld l,#27
	ld e,(hl)
	inc l
	ld d,(hl)
	ld l,#07
	ld c,(hl)
	ld l,#09
	ld b,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	ld l,#07
	ld (hl),e
	pop de
	ld l,#29
	ld a,(hl)
	ld l,#26
	ld (hl),a
	ret
.l7ed2
	ld l,#16
	ld a,(hl)
	ld l,#05
	cp (hl)
	ret nz
	ld a,(de)
	cp #8e
	ret z
	ld l,#18
	ld (hl),#01
	ld l,#15
	ld (hl),#00
	ld l,#04
	res 1,(hl)
	ret
.l7eee equ $ + 4
.l7eed equ $ + 3
.l7eec equ $ + 2
.l7eeb equ $ + 1
.l7eea
	db #00,#00,#00,#94,#2e,#04,#cb,#86
	db #c9,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#03,#00
	db #09,#0f,#00,#04,#00,#00,#00,#00
	db #00,#00,#0f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#02,#10,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
.l7f31 equ $ + 2
.l7f30 equ $ + 1
	db #00,#7f,#00
	dw l7fb0,l7ff4,l7ff9,l7f80
	dw l7eee,l7f99,l7c0a,l7c0a
	dw l7f6a,l7fd6,l7e32,l7e40
	dw l7e47,l7e66,l7e6b,l7e67
	dw l7bad,l7c0a,l80b3,l80d6
	dw l7fa8,l7c0a,l7c0a,l7ba4
	dw l7c42,l7fdb,l7c0a,l7c49
.l7f6a
	ex de,hl
	ld e,#2a
	ldi
	ld a,(hl)
	ldi
	ld (de),a
	inc e
	ld a,(hl)
	ldi
	ld (de),a
	ex de,hl
	ld l,#04
	set 3,(hl)
	set 6,(hl)
	ret
.l7f80
	ld a,(de)
	inc de
	ld l,#16
	ld (hl),a
	ld a,(de)
	rra
	rra
	rra
	rra
	and #0f
	ld l,#1d
	ld (hl),a
	inc l
	ld (hl),a
	ld a,(de)
	and #0f
	ld l,#17
	ld (hl),a
	inc de
	ret
.l7f99
	ld l,#04
	set 1,(hl)
	ex de,hl
	ld e,#24
	ldi
	ldi
	ldi
	ex de,hl
	ret
.l7fa8
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
.l7fb0
	ld a,(l7a00)
	ld (l7a50),a
	ld l,#00
	ld c,(hl)
	inc l
	ld b,(hl)
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	inc bc
	ld d,a
	or e
	jr z,l7fcd
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l7fcd
	ld d,b
	ld e,c
	pop bc
	ld a,(l7eed)
	jp l7b31
.l7fd6
	ld l,#04
	res 3,(hl)
	ret
.l7fdb
	ld l,#04
	res 7,(hl)
	ret
.l7fe0
	ld hl,l7eea
	dec (hl)
	ret p
	xor a
	ld (hl),a
	inc hl
	cp (hl)
	ret z
	dec (hl)
	inc hl
	ld a,(l7c37)
	add (hl)
	ld (l7c37),a
	ret
.l7ff4
	ld l,#15
	ld (hl),#01
	ret
.l7ff9
	ld l,#15
	ld (hl),#ff
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#00,#05,#00,#0a,#0f,#00,#04
	db #00,#00,#00,#00,#00,#00,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#20,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8031 equ $ + 3
.l8030 equ $ + 2
	db #00,#00,#7f,#00
.l8032
	ld l,#04
	bit 1,(hl)
	ret z
	ld l,#26
	dec (hl)
	jp m,l7bb3
	ld l,#25
	bit 7,(hl)
	jr nz,l8052
	ld l,#24
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ld l,#25
	ld a,(hl)
	ld l,#09
	adc (hl)
	ld (hl),a
	ret
.l8052
	ld l,#07
	ld a,(hl)
	ld l,#24
	sub (hl)
	ld l,#07
	ld (hl),a
	ld l,#25
	ld c,(hl)
	res 7,c
	ld l,#09
	ld a,(hl)
	sbc c
	ld (hl),a
	ret
.l8066
	ld l,#0f
	ld a,(hl)
	or a
	jr z,l8081
	ld l,#19
	dec (hl)
	ret nz
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#0f
	dec (hl)
	inc l
	ld a,(hl)
	ld l,#0b
	add (hl)
	cp #0f
	ret nc
	ld (hl),a
	ret
.l8081
	ld l,#12
	ld a,(hl)
	or a
	jr z,l8099
	ld l,#1b
	dec (hl)
	ret nz
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#12
	dec (hl)
	ld l,#0b
	ld a,(hl)
	ld l,#13
	jr l80ab
.l8099
	ld l,#18
	ld a,(hl)
	or a
	ret z
	ld l,#1d
	dec (hl)
	ret nz
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#0b
	ld a,(hl)
	ld l,#17
.l80ab
	sub (hl)
	jr nc,l80af
	xor a
.l80af
	ld l,#0b
	ld (hl),a
	ret
.l80b3
	pop af
	call l7e4a
	ld a,#1f
	ld (l7c37),a
	xor a
	ld (l7eea),a
	ld a,#e1
	ld (l7eec),a
	ld a,#04
	ld (l7eeb),a
	ld l,#04
	set 0,(hl)
	set 1,(hl)
	res 7,(hl)
	ld a,#21
	jr l80ee
.l80d6
	pop af
	call l7e32
	ld l,#24
	ld (hl),#70
	inc l
	ld (hl),#00
	inc l
	ld (hl),#0c
	ld l,#04
	set 1,(hl)
	ld l,#04
	set 0,(hl)
	ld a,#09
.l80ee
	ld l,#2f
	sub (hl)
	ld l,#21
	ld (hl),#96
	inc l
	ld (hl),#81
	jp l7aec
.l80fc equ $ + 1
.l80fb
	ld a,#55
	rrca
	ld (l80fc),a
	ret c
	dec de
	ld a,(de)
	inc de
	cp #8e
	jr z,l8113
	ld l,#0d
	ld a,(hl)
	ld l,#2a
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.l8113
	ld l,#04
	bit 3,(hl)
	ret z
	bit 6,(hl)
	jr z,l8136
	ld l,#2d
	dec (hl)
	jr nz,l812a
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.l812a
	ld l,#2b
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.l8136
	ld l,#2d
	dec (hl)
	jr nz,l8144
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.l8144
	ld l,#07
	ld a,(hl)
	ld l,#2b
	sub (hl)
	ld l,#07
	ld (hl),a
	ret nc
	ld l,#09
	dec (hl)
	ret
.l8152
	ld l,#04
	bit 7,(hl)
	ret z
.l8158 equ $ + 1
	ld a,#00
	ld (l7c37),a
	xor a
	ld (l7eea),a
	ld (l7eeb),a
	ld (l7eec),a
	ld a,#01
	ld (l7ab7),a
	ld l,#20
	ld a,(hl)
	cpl
	ld l,#30
	and (hl)
	ld (hl),a
	ret
	dw l8196,l81a0,l81a4,l81aa
	dw l81ae,l81b2,l81b6,l81ba
	dw l81be,l81c2,l81c6,l81ca
	dw l81ce,l81d2,l81d4,l81dc
	dw l81e4
.l8196
	db #00,#0c,#01,#0d,#02,#0e,#01,#0d
.l81a4 equ $ + 6
.l81a0 equ $ + 2
	db #00,#8c,#0c,#0c,#05,#85,#0c,#0c
.l81aa equ $ + 4
	db #0c,#00,#00,#80,#0c,#0c,#07,#87
.l81b2 equ $ + 4
.l81ae
	db #0c,#0c,#08,#88,#0c,#0c,#00,#80
.l81ba equ $ + 4
.l81b6
	db #00,#00,#0a,#8a,#00,#00,#09,#89
.l81c2 equ $ + 4
.l81be
	db #00,#00,#07,#87,#00,#00,#0e,#8e
.l81ca equ $ + 4
.l81c6
	db #0c,#0c,#09,#89,#0c,#0c,#03,#83
.l81d4 equ $ + 6
.l81d2 equ $ + 4
.l81ce
	db #00,#00,#05,#85,#00,#81,#18,#18
.l81dc equ $ + 6
	db #14,#14,#0c,#0c,#08,#88,#18,#18
.l81e4 equ $ + 6
	db #15,#15,#0c,#0c,#09,#89,#00,#00
	db #0c,#0c,#18,#18,#0c,#8c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
;
.music_info
	db "Viz - The Computer Game (1991)(Virgin Games)(Jeroen Tel)",0
	db "",0

	read "music_end.asm"
