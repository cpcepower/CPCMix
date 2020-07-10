; Music of Predator 2 (1991)(Image Works)(Tiny Williams)()
; Ripped by Megachur the 19/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PREDATO2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #0200
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

.l0200
	db #00		; theme = 1
.l0201
	db #00
.l0202
	db #00
.l0203
	db #00,#00
.l0205
	db #00
;
.play_music
;
	push af
	push bc
	push de
	push hl
	call l0240
	call l02b2
	ld hl,l030f
	dec (hl)
	ld hl,l0b33
	ld a,(hl)
	dec h
	or (hl)
	dec h
	or (hl)
	jr z,l023b
	call l02e9
	inc h
	call l02e9
	inc h
	call l02e9
	call l04a1
	call l07b0
	ld hl,l030f
	ld a,(hl)
	or a
	jr nz,l0238
.l0237 equ $ + 1
	ld (hl),#01
.l0238
	call l04b1
.l023b
	pop hl
	pop de
	pop bc
	pop af
	ret
.l0240
	ld a,(l0201)
	or a
	jr nz,l024c
	ld a,(l0200)
;
.init_music
;
	ld (l024d),a
.l024d equ $ + 1
.l024c
	ld a,#00
	or a
	ret z
	push af
	call l04f7
	pop af
	cp #02
	ret nc
	ld (l0201),a
	dec a
	add a
	add a
	add a
	add #48
	ld e,a
	adc #0b
	sub e
	ld d,a
	ld a,(de)
	inc de
	ld (l0237),a
	ld h,#09
	call l0284
	call l0284
	call l0284
	xor a
	ld (l0203),a
	inc a
	ld (l030f),a
	ld a,#10
	ld (l0205),a
	ret
.l0284
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
	ld l,#32
	ld (hl),a
	ld a,(de)
	inc de
	ld c,a
	ld a,(de)
	inc de
	ld b,a
	or c
	ret z
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
	ld l,#33
	ld (hl),l
	inc h
	ret
.l02b2
	ld a,(l0202)
	or a
	ret z
	cp #0b
	ret nc
	ld c,a
	xor a
	ld hl,l0933
	cp (hl)
	jr z,l02c9
	inc h
	cp (hl)
	jr z,l02c9
	inc h
	cp (hl)
	ret nz
.l02c9
	ld (hl),#02
	ld (l0202),a
	ld l,#04
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld a,c
	add a
	add #26
	ld c,a
	adc #0e
	sub c
	ld b,a
	ld a,(bc)
	ld e,a
	inc bc
	ld a,(bc)
	ld d,a
	ld l,#16
	ld (hl),#01
	jp l032d
.l02e9
	ld l,#33
	ld a,(hl)
	or a
	ret z
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
	cp #02
	jr z,l0313
	ld l,#04
	bit 7,(hl)
	jr z,l030e
.l02fe equ $ + 1
	ld a,#00
	dec a
	ld (l02fe),a
	jr nz,l030e
	ld l,#20
	ld a,(l052e)
	or (hl)
	ld (l052e),a
.l030f equ $ + 1
.l030e
	ld a,#01
	or a
	jr nz,l031e
.l0313
	ld l,#05
	dec (hl)
	jr z,l032d
	call l0934
	call l0a7c
.l031e
	call l044c
	call l0aa0
	call l0a99
	call l0996
	jp l093f
.l032d
	ld a,(de)
	inc de
	or a
	jp m,l036e
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call l095a
	ld l,#0e
	ld a,(hl)
	ld l,#0b
	ld (hl),a
	ld l,#0d
	ld a,(hl)
	ld l,#05
	ld (hl),a
	ld l,#18
	ld (hl),#00
	ld l,#2f
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#2d
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#0f
	call l035e
	inc l
.l035e
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
.l036e
	cp #e0
	jr nc,l0392
	cp #c0
	jr nc,l03be
	cp #b0
	jr nc,l039a
	cp #a0
	jr nc,l03a2
	ld c,h
	add a
	add #34
	ld l,a
	adc #0a
	sub l
	ld h,a
	ld a,c
	ld bc,l032d
	push bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	push bc
	ret
.l0392
	sub #df
	ld l,#0d
	ld (hl),a
	jp l032d
.l039a
	sub #b0
	ld l,#0e
	ld (hl),a
	jp l032d
.l03a2
	sub #a0
	add a
	add #b7
	ld c,a
	adc #05
	sub c
	ld b,a
	ld a,(bc)
	ld l,#22
	ld (hl),a
	inc l
	inc bc
	ld a,(bc)
	ld (hl),a
	inc l
	ld (hl),#00
	ld l,#04
	set 0,(hl)
	jp l032d
.l03be
	ld l,#04
	ld (hl),#40
	ex de,hl
	push hl
	sub #c0
	and #1f
	rlca
	rlca
	rlca
	add a
	ld h,#06
	jr nc,l03d1
	inc h
.l03d1
	ld l,a
	ld e,#21
	ld a,(de)
	ld c,a
	ld a,(l052e)
	or c
	ld c,a
	ld a,(hl)
	push af
	ld e,a
	inc l
	ld a,(de)
	cpl
	and c
	ld (l052e),a
	ld e,#32
	ldi
	ld e,#0e
	ldi
	ldi
	ld e,#12
	ldi
	ld a,(hl)
	rra
	rra
	rra
	rra
	and #0f
	ld e,#19
	ld (de),a
	inc e
	ld (de),a
	ld a,(hl)
	inc l
	and #0f
	ld e,#1b
	ld (de),a
	inc e
	ld (de),a
	ld e,#16
	ldi
	ld a,(hl)
	rra
	rra
	rra
	rra
	and #0f
	ld e,#1d
	ld (de),a
	inc e
	ld (de),a
	ld a,(hl)
	inc l
	and #0f
	ld (hl),a
	ld e,#2b
	ldi
	ld a,(hl)
	ldi
	ld (de),a
	inc e
	ld a,(hl)
	ldi
	ld (de),a
	inc e
	ld a,(hl)
	ldi
	ld (de),a
	pop af
	cp #1f
	jr z,l0447
	ld a,(hl)
	inc l
	ld (l0529),a
	ld a,(hl)
	inc l
	ld (l09fc),a
	ld a,(hl)
	inc l
	ld (l09fa),a
	ld a,(hl)
	ld (l09fb),a
.l0447
	pop hl
	ex de,hl
	jp l032d
.l044c
	ld l,#10
	ld a,(hl)
	or a
	jr z,l0467
	ld l,#19
	dec (hl)
	ret nz
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#10
	dec (hl)
	inc l
	ld a,(hl)
	ld l,#0b
	add (hl)
	cp #0f
	ret nc
	ld (hl),a
	ret
.l0467
	ld l,#13
	ld a,(hl)
	or a
	jr z,l047f
	ld l,#1b
	dec (hl)
	ret nz
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#13
	dec (hl)
	ld l,#0b
	ld a,(hl)
	ld l,#14
	jr l0491
.l047f
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
.l0491
	sub (hl)
	jr nc,l0495
	xor a
.l0495
	ld l,#0b
	ld (hl),a
	ret
	ld a,(de)
	ld l,#32
	ld (hl),a
	inc de
	ret
.l049f
	inc (hl)
	ret
.l04a1
	ld hl,l0203
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
	jr l04f7
.l04b1
	call l051b
	ld h,#09
	call l04be
	inc h
	call l04be
	inc h
.l04be
	ld l,#06
	call l04da
	call l04da
	ld a,(l0205)
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
	ld h,#08
	ld a,b
	ld c,(hl)
	pop hl
	jr l04de
.l04da
	ld a,(hl)
	inc l
	ld c,(hl)
	inc l
.l04de
	ld b,d
	out (c),a
.l04e2 equ $ + 1
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
	pop af
;
.stop_music
.l04f7
;
	xor a
	ld (l0201),a
	ld (l024d),a
	ld (l0200),a
	ld (l0202),a
	ld (l0933),a
	ld (l0a33),a
	ld (l0b33),a
	ld (l0932),a
	ld (l0a32),a
	ld (l0b32),a
	ld a,#3f
	ld (l052e),a
.l051b
	ld de,#f4f6
	ld b,e
	in a,(c)
	or #c0
	ld (l04e2),a
	ld a,#06
.l0529 equ $ + 1
	ld c,#01
	call l04de
.l052e equ $ + 1
	ld a,#3f
	ld c,a
	ld a,#07
	jr l04de
	ld l,#04
	res 2,(hl)
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
	dw #003c,#0039,#0035
	dw l05c5,l05cf,l05d5,l05db
	dw l05db,l05e1,l05e4
.l05c5
	db #00,#0c,#01,#0d,#02,#0e,#01,#0d
	db #00,#8c
.l05cf
	db #0c,#00,#0f,#03,#13,#87
.l05d5
	db #0c,#00,#10,#04,#13,#87
.l05db
	db #18,#0c,#00,#1c,#10,#84
.l05e1
	db #18,#0c,#80
.l05e4
	db #00,#13,#0d,#12,#0e,#91
	db #73,#65,#67,#61,#6d,#49,#20,#64
	db #6e,#75,#6f,#53,#20,#31,#39,#39
	db #31,#20,#29,#63,#28,#00
	db #1f,#00,#0f,#00,#1f,#11,#00,#00
	db #00,#c8,#01,#00,#00,#00,#00,#00
	db #1f,#0c,#0a,#15,#14,#14,#01,#21
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #21,#fd,#0f,#00,#1f,#13,#00,#00
	db #00,#96,#01,#00,#20,#01,#00,#04
	db #1f,#0c,#08,#15,#18,#27,#01,#11
	db #08,#01,#02,#00,#00,#00,#00,#00
	db #1f,#0c,#08,#15,#18,#27,#01,#11
	db #18,#01,#02,#00,#00,#00,#00,#00
	db #1f,#f4,#0f,#30,#1f,#14,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #21,#f6,#0d,#00,#1f,#12,#01,#11
	db #00,#dc,#01,#00,#22,#00,#00,#00
	db #1f,#0c,#0c,#11,#1f,#12,#01,#11
	db #02,#02,#02,#00,#00,#00,#00,#00
	db #1f,#00,#0b,#13,#13,#12,#01,#11
	db #00,#01,#02,#00,#00,#00,#00,#00
	db #21,#0a,#0f,#00,#1f,#11,#01,#11
	db #00,#dc,#01,#00,#01,#00,#00,#00
	db #1f,#00,#0b,#12,#1f,#14,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #21,#00,#0e,#00,#1f,#12,#01,#11
	db #00,#00,#00,#00,#30,#02,#00,#18
	db #21,#00,#0b,#14,#1f,#13,#01,#11
	db #00,#00,#00,#00,#20,#04,#00,#10
	db #21,#00,#0d,#12,#1f,#13,#01,#11
	db #00,#01,#02,#00,#20,#0a,#00,#10
	db #21,#00,#09,#32,#1f,#18,#01,#11
	db #00,#00,#00,#00,#1a,#14,#00,#40
	db #1f,#fa,#0b,#22,#50,#12,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #20,#00,#0e,#60,#00,#12,#01,#11
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #1f,#10,#0b,#12,#1f,#11,#00,#00
	db #04,#03,#02,#00,#00,#00,#00,#00
	db #1f,#f4,#0d,#00,#35,#11,#01,#11
	db #00,#14,#01,#00,#00,#00,#00,#00
	db #1f,#f4,#0f,#00,#1f,#12,#01,#11
	db #00,#5a,#01,#00,#00,#00,#00,#00
	db #21,#fb,#0f,#00,#1f,#13,#01,#11
	db #00,#78,#01,#00,#29,#00,#00,#04
	db #1f,#0c,#0c,#11,#13,#39,#00,#00
	db #02,#03,#02,#00,#00,#00,#00,#00
	db #1f,#0c,#0a,#12,#1f,#2b,#01,#11
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #1f,#0c,#0a,#12,#1f,#2b,#01,#11
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #1f,#f4,#0f,#40,#1f,#15,#01,#11
	db #01,#02,#02,#00,#00,#00,#00,#00
	db #1f,#15,#0e,#00,#1f,#14,#01,#11
	db #01,#01,#02,#00,#00,#00,#00,#00
	db #1f,#09,#0d,#12,#11,#14,#01,#11
	db #01,#03,#02,#00,#00,#00,#00,#00
.l07b0
	ld hl,l09fa
	dec (hl)
	ret p
	xor a
	ld (hl),a
	inc hl
	cp (hl)
	ret z
	dec (hl)
	inc hl
	ld a,(l0529)
	add (hl)
	ld (l0529),a
	ret
	ex de,hl
	ld e,#28
	ldi
	ldi
	ld e,#25
	ldi
	ldi
	ld e,#2a
	ldi
	ex de,hl
	ld l,#04
	set 2,(hl)
	ret
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#02,#03
	db #04,#05,#06,#07,#08,#09,#0a,#0b
	db #0c,#0d,#0e,#0f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#01,#01,#01,#01,#01,#02
	db #02,#02,#02,#02,#00,#00,#00,#00
	db #01,#01,#01,#01,#02,#02,#02,#02
	db #03,#03,#03,#03,#00,#00,#00,#00
	db #01,#01,#01,#02,#02,#02,#03,#03
	db #03,#04,#04,#04,#00,#00,#00,#01
	db #01,#01,#02,#02,#03,#03,#03,#04
	db #04,#04,#05,#05,#00,#00,#00,#01
	db #01,#02,#02,#03,#03,#03,#04,#04
	db #05,#05,#06,#06,#00,#00,#01,#01
	db #02,#02,#03,#03,#04,#04,#05,#05
	db #06,#06,#07,#07,#00,#00,#01,#01
	db #02,#02,#03,#03,#04,#05,#05,#06
	db #06,#07,#07,#08,#00,#00,#01,#01
	db #02,#03,#03,#04,#05,#05,#06,#06
	db #07,#08,#08,#09,#00,#00,#01,#02
	db #02,#03,#04,#04,#05,#06,#06,#07
	db #08,#08,#09,#0a,#00,#00,#01,#02
	db #03,#03,#04,#05,#06,#06,#07,#08
	db #09,#09,#0a,#0b,#00,#00,#01,#02
	db #03,#04,#04,#05,#06,#07,#08,#08
	db #09,#0a,#0b,#0c,#00,#00,#01,#02
	db #03,#04,#05,#06,#07,#07,#08,#09
	db #0a,#0b,#0c,#0d,#00,#00,#01,#02
	db #03,#04,#05,#06,#07,#08,#09,#0a
	db #0b,#0c,#0d,#0e,#00,#00,#00,#00
	db #00,#00
	db #00,#00,#01,#00,#08,#0f,#00,#04
	db #00,#00,#00,#00,#00,#00,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#08,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0933 equ $ + 5
.l0932 equ $ + 4
	db #00,#00,#00,#00,#00,#00
.l0934
	ld l,#15
	ld a,(hl)
	or a
	ret z
	ld l,#0c
	add (hl)
	ld (hl),a
	jr l095a
.l093f
	ld l,#04
	bit 0,(hl)
	ret z
	ld l,#22
	ld a,(hl)
	inc l
	ld b,(hl)
	inc l
	add (hl)
	ld c,a
	jr nc,l094f
	inc b
.l094f
	inc (hl)
	ld a,(bc)
	or a
	jp p,l0957
	ld (hl),#00
.l0957
	ld l,#0c
	add (hl)
.l095a
	ld l,#32
	add (hl)
	add a
	add #39
	ld c,a
	adc #05
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
	jr z,l098e
	push de
	ld l,#28
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
	ld l,#2a
	ld a,(hl)
	ld l,#27
	ld (hl),a
.l098e
	ld l,#04
	bit 5,(hl)
	ret z
	res 1,(hl)
	ret
.l0996
	ld l,#2c
	ld a,(hl)
	or a
	ret z
	dec de
	ld a,(de)
	inc de
	cp #86
	jr z,l09ac
	ld l,#0d
	ld a,(hl)
	ld l,#2b
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.l09ac
	ld l,#31
	ld a,(hl)
	or a
	jr z,l09bd
	dec l
	dec (hl)
	jr nz,l09bd
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#2c
	inc (hl)
.l09bd
	ld l,#04
	bit 6,(hl)
	jr z,l09dd
	ld l,#2e
	dec (hl)
	jr nz,l09d1
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.l09d1
	ld l,#2c
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.l09dd
	ld l,#2e
	dec (hl)
	jr nz,l09eb
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.l09eb
	ld l,#07
	ld a,(hl)
	ld l,#2c
	sub (hl)
	ld l,#07
	ld (hl),a
	ret nc
	ld l,#09
	dec (hl)
	ret
.l09fc equ $ + 3
.l09fb equ $ + 2
.l09fa equ $ + 1
.l09f9
	db #8a,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#02,#00,#03
	db #00,#09,#0f,#00,#04,#00,#00,#00
	db #00,#00,#00,#0f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#02,#10
	db #12,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0a33 equ $ + 2
.l0a32 equ $ + 1
	db #00,#00,#00,#56,#0a,#d9,#0a,#db
	db #07,#de,#0a,#c4,#07,#34,#05,#f1
	db #0a,#ed,#0a,#99,#04,#f6,#04,#4e
	db #0a,#34,#0b,#d4,#0a
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
	ld a,(l0200)
	ld (l024d),a
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
	jr z,l0a73
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l0a73
	ld d,b
	ld e,c
	pop bc
	ld a,(l09f9)
	jp l036e
.l0a7c
	ld l,#16
	ld a,(hl)
	ld l,#05
	cp (hl)
	ret nz
	ld a,(de)
	cp #86
	ret z
	ld l,#18
	ld (hl),#01
	ld l,#15
	ld (hl),#00
	ld l,#04
	res 1,(hl)
	bit 5,(hl)
	ret z
	set 1,(hl)
	ret
.l0a99
	ld l,#04
	bit 2,(hl)
	jr nz,l0aa5
	ret
.l0aa0
	ld l,#04
	bit 1,(hl)
	ret z
.l0aa5
	ld l,#27
	dec (hl)
	jp m,l049f
	ld l,#26
	bit 7,(hl)
	jr nz,l0ac0
	ld l,#25
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ld l,#26
	ld a,(hl)
	ld l,#09
	adc (hl)
	ld (hl),a
	ret
.l0ac0
	ld l,#07
	ld a,(hl)
	ld l,#25
	sub (hl)
	ld l,#07
	ld (hl),a
	ld l,#26
	ld c,(hl)
	res 7,c
	ld l,#09
	ld a,(hl)
	sbc c
	ld (hl),a
	ret
	ld l,#15
	ld (hl),#01
	ret
	ld l,#15
	ld (hl),#ff
	ret
	ld l,#04
	set 1,(hl)
	ex de,hl
	ld e,#25
	ldi
	ldi
	ldi
	ex de,hl
	ret
	ld l,#0b
	ld (hl),#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#00,#05,#00,#0a,#0f,#00,#04
	db #00,#00,#00,#00,#00,#00,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#20,#24,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0b33 equ $ + 5
.l0b32 equ $ + 4
	db #00,#00,#00,#00,#00,#00
	db #f1
	ld a,(l052e)
	ld l,#21
	or (hl)
	ld c,a
	ld a,(l052e)
	or c
	ld (l052e),a
	ld l,#33
	ld (hl),#00
	ret
	db #06,#4f,#0b,#7d,#0b,#ab,#0b,#df
	db #0b,#df,#0b,#d9,#0b,#2d,#0c,#d9
	db #0b,#2d,#0c,#d9,#0b,#2d,#0c,#e8
	db #0b,#ed,#0b,#e8,#0b,#ed,#0b,#d9
	db #0b,#2d,#0c,#d9,#0b,#2d,#0c,#f2
	db #0b,#f2,#0b,#33,#0c,#33,#0c,#77
	db #0c,#00,#00,#4f,#0b,#8e,#0c,#80
	db #0c,#80,#0c,#80,#0c,#80,#0c,#80
	db #0c,#80,#0c,#80,#0c,#9e,#0c,#bb
	db #0c,#9e,#0c,#bb,#0c,#80,#0c,#80
	db #0c,#80,#0c,#80,#0c,#da,#0c,#f0
	db #0c,#01,#0d,#01,#0d,#0b,#0d,#00
	db #00,#7d,#0b,#57,#0d,#2c,#0d,#3f
	db #0d,#02,#0e,#e2,#0d,#97,#0d,#e2
	db #0d,#02,#0e,#6a,#0d,#86,#0d,#6a
	db #0d,#86,#0d,#3f,#0d,#97,#0d,#3f
	db #0d,#97,#0d,#24,#0e,#bd,#0d,#bd
	db #0d,#bd,#0d,#18,#0e,#00,#00,#ab
	db #0b
	db #c4,#ff,#a1,#18,#13,#80,#c4,#a1
	db #ff,#18,#f7,#21,#e7,#1b,#80,#c9
	db #ff,#0c,#16,#80,#c9,#ff,#11,#14
	db #80,#c6,#bc,#e1,#11,#e0,#11,#e1
	db #11,#e0,#11,#e1,#11,#e0,#11,#e6
	db #11,#e1,#11,#e0,#11,#e1,#11,#e0
	db #11,#e1,#11,#e0,#11,#e6,#11,#e1
	db #11,#e0,#11,#e1,#11,#e0,#11,#e1
	db #11,#e0,#11,#e6,#11,#e1,#11,#e0
	db #11,#e1,#11,#e0,#11,#e1,#11,#e0
	db #11,#e6,#11,#80,#c3,#ff,#a2,#1d
	db #20,#80,#c5,#e1,#18,#e0,#24,#e1
	db #18,#c6,#e0,#11,#e1,#11,#e0,#11
	db #e6,#11,#c5,#e1,#18,#c6,#e0,#11
	db #e1,#11,#e0,#11,#e1,#11,#e0,#11
	db #e6,#11,#c5,#e1,#18,#e0,#24,#e1
	db #18,#c6,#e0,#11,#e1,#11,#e0,#11
	db #e6,#11,#c5,#e1,#18,#c6,#e0,#11
	db #e1,#11,#e0,#11,#e1,#11,#e0,#11
	db #e2,#11,#c5,#e3,#1b,#80,#c4,#ff
	db #a1,#18,#18,#c4,#18,#86,#80,#c6
	db #e1,#11,#ed,#11,#ef,#11,#e1,#11
	db #ed,#11,#ef,#11,#80,#c8,#84,#fc
	db #ff,#02,#00,#02,#e1,#24,#24,#24
	db #86,#fb,#87,#87,#80,#c1,#84,#fe
	db #ff,#01,#00,#02,#e7,#18,#1b,#1f
	db #22,#e3,#26,#e1,#22,#e3,#21,#22
	db #22,#e1,#22,#24,#26,#2e,#2d,#2b
	db #26,#80,#c1,#84,#fe,#ff,#01,#00
	db #02,#e7,#18,#1a,#1b,#1f,#e3,#20
	db #e1,#22,#e3,#20,#e1,#1f,#20,#1f
	db #e3,#1d,#1b,#e1,#1a,#1b,#e3,#18
	db #80,#c7,#e0,#18,#1b,#1d,#1f,#22
	db #24,#27,#29,#2b,#2e,#2b,#24,#27
	db #1f,#22,#1b,#f7,#18,#86,#80,#c5
	db #e1,#18,#ed,#18,#ef,#18,#e1,#18
	db #ed,#18,#e7,#18,#e3,#18,#1b,#80
	db #c4,#a1,#ff,#18,#f7,#18,#e3,#18
	db #1b,#80,#c9,#ff,#24,#e0,#2e,#2d
	db #2c,#2b,#2a,#29,#28,#27,#26,#25
	db #24,#23,#22,#21,#20,#1f,#1e,#1d
	db #1c,#1b,#1a,#19,#e9,#18,#c4,#ff
	db #24,#86,#80,#c5,#e7,#18,#18,#18
	db #e5,#18,#e1,#1b,#e7,#15,#15,#e5
	db #15,#e1,#15,#e7,#0f,#80,#c5,#e5
	db #18,#e7,#18,#e1,#16,#e5,#18,#e9
	db #18,#e5,#18,#e7,#18,#e1,#16,#e5
	db #18,#e7,#18,#e1,#16,#80,#c5,#e7
	db #18,#18,#18,#e5,#18,#e1,#1b,#e7
	db #15,#15,#e5,#15,#e1,#15,#e7,#0f
	db #80,#c1,#84,#fe,#ff,#01,#00,#02
	db #e3,#24,#27,#24,#22,#24,#1f,#1d
	db #1f,#1d,#e1,#1f,#e3,#1d,#1d,#e9
	db #26,#e3,#26,#26,#80,#c1,#84,#fe
	db #ff,#01,#00,#02,#e7,#1b,#1d,#1f
	db #22,#e5,#27,#f9,#27,#80,#c5,#e2
	db #11,#0f,#e3,#11,#e1,#18,#1b,#18
	db #e2,#11,#0f,#e3,#11,#e1,#16,#18
	db #1b,#e2,#18,#16,#e3,#18,#e1,#14
	db #16,#14,#e2,#18,#16,#e3,#18,#e1
	db #14,#20,#14,#80,#c7,#e0,#18,#1b
	db #1d,#1f,#22,#24,#27,#29,#2b,#2e
	db #2b,#24,#27,#1f,#22,#1b,#ef,#18
	db #e0,#2b,#2e,#1f,#22,#24,#27,#e5
	db #18,#e0,#1f,#22,#24,#27,#ef,#18
	db #80,#c5,#e2,#18,#16,#e7,#18,#e1
	db #16,#e2,#18,#16,#e3,#18,#e1,#16
	db #18,#16,#e2,#18,#16,#e7,#18,#e1
	db #16,#e2,#18,#16,#e7,#18,#e1,#16
	db #80,#c5,#e5,#11,#e7,#11,#e1,#18
	db #e5,#11,#e7,#11,#e1,#13,#e5,#14
	db #e7,#14,#e1,#13,#ef,#14,#80,#c1
	db #e7,#24,#22,#1f,#1b,#ff,#0c,#c4
	db #1b,#86,#80,#ff,#87,#87,#80,#3c
	db #0e,#44,#0e,#4d,#0e,#53,#0e,#58
	db #0e,#5d,#0e,#62,#0e,#67,#0e,#6d
	db #0e,#73,#0e,#c2,#ef,#83,#04,#00
	db #10,#18,#8b,#c9,#88,#fe,#e4,#15
	db #15,#15,#15,#8b,#cb,#f7,#a0,#81
	db #30,#8b,#cd,#ef,#a0,#18,#8b,#cc
	db #ff,#81,#27,#8b,#ca,#ff,#a5,#31
	db #8b,#ca,#ff,#a4,#2c,#8b,#c0,#e6
	db #a6,#81,#09,#8b,#ce,#ff,#a6,#10
	db #86,#8b,#cf,#ef,#a6,#8c,#05,#e3
	db #0c,#c3,#40,#00,#c3,#01,#9d,#00
	db #0f,#00,#20,#36,#26,#42,#26,#06
	db #27,#3d,#28,#4a,#28,#e0,#29,#24
	db #52,#d6,#59,#42,#5a,#00
;
; #5ea
; db "segamI dnuoS 1991 )c("
;
; #97da
; ld (#0200),a	; theme
; xor a
; ld (#0201),a
;
.music_info
	db "Predator 2 (1991)(Image Works)(Tiny Williams)",0
	db "segamI dnuoS 1991 )c(",0

	read "music_end.asm"
