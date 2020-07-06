; Music of Adidas Championship Tie Break (1990)(Ocean Software)(Tiny Williams)()
; Ripped by Megachur the 02/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ADIDACTB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b000
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

.music_end equ $ + 4
.lb004 equ $ + 4
.lb003 equ $ + 3
.lb002 equ $ + 2
.lb001 equ $ + 1
.lb000
	db #01,#00,#00,#00,#0e
;
.play_music
.lb005
;
	push af
	push bc
	push de
	push hl
	call lb03a
	ld a,(lb001)
	or a
	jr z,lb035
	ld hl,lb0a6
	dec (hl)
	ld h,#b5
	call lb0a0
	inc h
	call lb0a0
	inc h
	call lb0a0
	call lb212
	call lb182
	ld hl,lb0a6
	ld a,(hl)
	or a
	jr nz,lb032
.lb031 equ $ + 1
	ld (hl),#01
.lb032
	call lb222
.lb035
	pop hl
	pop de
	pop bc
	pop af
	ret
.lb03a
	ld a,(lb001)
	or a
	jr nz,lb046
	ld a,(lb000)
;
.init_music
;
	ld (lb047),a
.lb047 equ $ + 1
.lb046
	ld a,#01
	or a
	ret z
	push af
	call lb269
	pop af
	cp #02
	ret nc
	ld (lb001),a
	dec a
	add a
	add a
	add a
	add #18
	ld e,a
	adc #b8
	sub e
	ld d,a
	ld a,(de)
	inc de
	ld (lb031),a
	xor a
	ld (lb002),a
	inc a
	ld (lb0a6),a
	ld a,#10
	ld (lb004),a
	ld h,#b5
	call lb07a
	call lb07a
.lb07a
	ld l,#05
	ld (hl),#01
	dec l
	xor a
	ld (hl),a
	ld l,#07
	ld (hl),a
	ld l,#09
	ld (hl),a
	ld l,#31
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
	inc h
	ret
.lb0a0
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
.lb0a6 equ $ + 1
	ld a,#01
	or a
	jr nz,lb0b2
	ld l,#05
	dec (hl)
	jr z,lb0c1
	call lb7ff
.lb0b2
	call lb76e
	call lb73a
	call lb733
	call lb199
	jp lb58b
.lb0c1
	ld a,(de)
	inc de
	or a
	jp m,lb102
.lb0c7
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call lb5a6
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
	ld l,#0e
	call lb0f2
	inc l
.lb0f2
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
.lb102
	cp #e0
	jr nc,lb12a
	cp #d0
	jr nc,lb13a
	cp #c0
	jr nc,lb132
	cp #b0
	jr nc,lb161
	ld c,h
	add a
	add #33
	ld l,a
	adc #b6
	sub l
	ld h,a
	ld a,c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	ld (lb125),bc
.lb125 equ $ + 1
	call #0000
	jp lb0c1
.lb12a
	sub #df
	ld l,#0d
	ld (hl),a
	jp lb0c1
.lb132
	sub #c0
	ld l,#14
	ld (hl),a
	jp lb0c1
.lb13a
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
	jp lb0c1
.lb161
	sub #b0
	add a
	add #5f
	ld c,a
	adc #b3
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
	jp lb0c1
.lb17d
	ld l,#04
	res 0,(hl)
	ret
.lb182
	ld hl,lb196
	dec (hl)
	ret p
	xor a
	ld (hl),a
	inc hl
	cp (hl)
	ret z
	dec (hl)
	inc hl
	ld a,(lb28f)
	add (hl)
	ld (lb28f),a
	ret
.lb198 equ $ + 2
.lb197 equ $ + 1
.lb196
	db #00,#00,#00
.lb199
	dec de
	ld a,(de)
	inc de
	cp #8e
	jr z,lb1aa
	ld l,#0d
	ld a,(hl)
	ld l,#2a
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.lb1aa
	ld l,#04
	bit 3,(hl)
	ret z
	ld l,#30
	ld a,(hl)
	or a
	jr z,lb1c0
	dec l
	dec (hl)
	jr nz,lb1c0
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#2b
	inc (hl)
.lb1c0
	ld l,#04
	bit 6,(hl)
	jr z,lb1e0
	ld l,#2d
	dec (hl)
	jr nz,lb1d4
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.lb1d4
	ld l,#2b
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.lb1e0
	ld l,#2d
	dec (hl)
	jr nz,lb1ee
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.lb1ee
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
.lb1fc
	ld l,#04
	res 5,(hl)
	ret
.lb201
	ld a,#35
	ld (lb002),a
	ld (lb003),a
	ret
.lb20a
	ld a,(de)
	ld l,#31
	ld (hl),a
	inc de
	ret
.lb210
	inc (hl)
	ret
.lb212
	ld hl,lb002
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
	jr lb269
.lb222
	call lb281
	ld h,#b5
	call lb230
	inc h
	call lb230
	ld h,#b7
.lb230
	ld l,#06
	call lb24c
	call lb24c
	ld a,(lb004)
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
	ld h,#b4
	ld a,b
	ld c,(hl)
	pop hl
	jr lb250
.lb24c
	ld a,(hl)
	inc l
	ld c,(hl)
	inc l
.lb250
	ld b,d
	out (c),a
.lb254 equ $ + 1
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
.lb268
	pop af
;
.stop_music
.lb269
;
	xor a
	ld (lb001),a
	ld (lb047),a
	ld (lb000),a
	ld (lb531),a
	ld (lb631),a
	ld (lb731),a
	ld a,#3f
	ld (lb583),a
.lb281
	ld de,#f4f6
	ld b,e
	in a,(c)
	or #c0
	ld (lb254),a
	ld a,#06
.lb28f equ $ + 1
	ld c,#01
	call lb250
	ld a,(lb583)
	ld c,a
	ld a,#07
	jr lb250
.lb29b
	ex de,hl
	ld e,#27
	ldi
	ldi
	ld e,#24
	ldi
	ldi
	ld e,#29
	ldi
	ex de,hl
	ld l,#04
	set 2,(hl)
	ret
.lb2b2
	ld l,#04
	res 2,(hl)
	ret
.lb2b7
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
.lb35f
	dw lb371,lb37b,lb37f,lb37f
	dw lb37f,lb37f,lb37f,lb37f
	dw lb380
.lb371
	db #00,#0c,#01,#0d,#02,#0e,#01,#0d
.lb37f equ $ + 6
.lb37b equ $ + 2
	db #00,#8c,#0c,#0c,#0c,#80,#80
.lb380
	db #79,#6e,#69,#54,#20,#39,#38,#39
	db #31,#20,#28,#63,#29,#00,#00,#00
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
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#02,#02,#02,#02,#02
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #02,#02,#02,#02,#03,#03,#03,#03
	db #00,#00,#00,#00,#01,#01,#01,#02
	db #02,#02,#03,#03,#03,#04,#04,#04
	db #00,#00,#00,#01,#01,#01,#02,#02
	db #03,#03,#03,#04,#04,#04,#05,#05
	db #00,#00,#00,#01,#01,#02,#02,#03
	db #03,#03,#04,#04,#05,#05,#06,#06
	db #00,#00,#01,#01,#02,#02,#03,#03
	db #04,#04,#05,#05,#06,#06,#07,#07
	db #00,#00,#01,#01,#02,#02,#03,#03
	db #04,#05,#05,#06,#06,#07,#07,#08
	db #00,#00,#01,#01,#02,#03,#03,#04
	db #05,#05,#06,#06,#07,#08,#08,#09
	db #00,#00,#01,#02,#02,#03,#04,#04
	db #05,#06,#06,#07,#08,#08,#09,#0a
	db #00,#00,#01,#02,#03,#03,#04,#05
	db #06,#06,#07,#08,#09,#09,#0a,#0b
	db #00,#00,#01,#02,#03,#04,#04,#05
	db #06,#07,#08,#08,#09,#0a,#0b,#0c
	db #00,#00,#01,#02,#03,#04,#05,#06
	db #07,#07,#08,#09,#0a,#0b,#0c,#0d
	db #00,#00,#01,#02,#03,#04,#05,#06
	db #07,#08,#09,#0a,#0b,#0c,#0d,#0e
.lb500
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#08,#0f,#00,#04,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.lb531
	db #00,#00
.lb533
	call lb582
	ld l,#1f
.lb538
	ld a,(hl)
.lb539
	cpl
	and c
	ld (lb583),a
	ld l,#04
	res 4,(hl)
	res 0,(hl)
	ret
.lb545
	call lb55c
	call lb582
	ld l,#20
	jr lb538
.lb54f
	call lb55c
.lb552
	call lb582
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	jr lb539
.lb55c
	ld a,(de)
	inc de
	ld (lb28f),a
	ld a,(de)
	inc de
	ld (lb198),a
	ld a,(de)
	inc de
	ld (lb196),a
	ld a,(de)
	inc de
	ld (lb197),a
	ret
.lb571
	ld l,#0b
	ld (hl),#00
.lb575
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
.lb583 equ $ + 1
.lb582
	ld a,#3f
	ld l,#1f
	or (hl)
	inc l
	or (hl)
	ld c,a
	ret
.lb58b
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
	jr nc,lb59b
	inc b
.lb59b
	inc (hl)
	ld a,(bc)
	or a
	jp p,lb5a3
	ld (hl),#00
.lb5a3
	ld l,#0c
	add (hl)
.lb5a6
	ld l,#31
	add (hl)
	add a
	add #b7
	ld c,a
	adc #b2
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
	jr z,lb5da
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
.lb5da
	ld l,#04
	bit 5,(hl)
	ret z
	res 1,(hl)
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#00,#03,#00
	db #09,#0f,#00,#04,#00,#00,#00,#00
	db #00,#00,#0f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#02,#10,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.lb633 equ $ + 2
.lb631
	dw #0000,lb6ba,lb268,lb268
	dw lb684,lb17d,lb6a3,lb29b
	dw lb2b2,lb669,lb6e0,lb533
	dw lb545,lb54f,lb268,lb575
	dw lb571,lb20a,lb268,lb7bb
	dw lb7e5,lb6b2,lb268,lb1fc
	dw lb201,lb268,lb268,lb69d
.lb669
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
	inc e
	ld a,(hl)
	ldi
	ld (de),a
	ex de,hl
	ld l,#04
	set 3,(hl)
	set 6,(hl)
	ret
.lb684
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
.lb69d
	ld l,#04
	set 5,(hl)
	jr lb6a7
.lb6a3
	ld l,#04
	set 1,(hl)
.lb6a7
	ex de,hl
	ld e,#24
	ldi
	ldi
	ldi
	ex de,hl
	ret
.lb6b2
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
.lb6ba
	ld a,(lb000)
	ld (lb047),a
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
	jr z,lb6d7
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.lb6d7
	ld d,b
	ld e,c
	pop bc
	ld a,(lbaaf)
	jp lb102
.lb6e0
	ld l,#04
	res 3,(hl)
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb706 equ $ + 1
	db #00,#04,#00,#05,#00,#0a,#0f,#00
	db #04,#00,#00,#00,#00,#00,#00,#0f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#04,#20,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb731 equ $ + 4
	db #00,#00,#00,#00,#00,#00
	
.lb733
	ld l,#04
	bit 2,(hl)
	jr nz,lb73f
	ret
.lb73a
	ld l,#04
	bit 1,(hl)
	ret z
.lb73f
	ld l,#26
	dec (hl)
	jp m,lb210
	ld l,#25
	bit 7,(hl)
	jr nz,lb75a
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
.lb75a
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

.lb76e
	ld l,#0f
	ld a,(hl)
	or a
	jr z,lb789
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
.lb789
	ld l,#12
	ld a,(hl)
	or a
	jr z,lb7a1
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
	jr lb7b3
.lb7a1
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
.lb7b3
	sub (hl)
	jr nc,lb7b7
	xor a
.lb7b7
	ld l,#0b
	ld (hl),a
	ret
.lb7bb
	pop af
	call lb552
	ld a,#1f
	ld (lb28f),a
	xor a
	ld (lb196),a
	ld a,#e1
	ld (lb198),a
	ld a,#04
	ld (lb197),a
	ld l,#21
	ld (hl),#71
	inc l
	ld (hl),#b3
	ld l,#04
	set 0,(hl)
	ld a,#18
	ld l,#31
	sub (hl)
	jp lb0c7
.lb7e5
	pop af
	call lb533
	ld l,#24
	ld (hl),#70
	inc l
	ld (hl),#00
	inc l
	ld (hl),#0c
	ld l,#04
	set 1,(hl)
	ld a,#18
	ld l,#31
	sub (hl)
	jp lb0c7

.lb7ff
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
	ld l,#04
	res 1,(hl)
	bit 5,(hl)
	ret z
	set 1,(hl)
	ret
.lb818
	db #03
	dw lb827,lb877,lb89f
	db #03,#03
	dw lb83b,lb883,lb8a3
.lb827
	dw lb8bb,lb8bb,lb8e0,lb8e0
	dw lb8e0,lb8e0,lb8e0,lb8e0
.lb83b equ $ + 4
	dw lb8e0,lb8e0,lb92e,lb92e
	dw lb92e,lb92e,lb92e,lb92e
	dw lb92e,lb92e,lbaa9,lb92e
	dw lb92e,lb92e,lb92e,lb92e
	dw lb92e,lb92e,lb92e,lbaac
	dw lb92e,lb92e,lb92e,lb92e
	dw lbaa6,lb92e,lb92e,lb92e
	dw lb92e,lbaac,#0000
.lb877 equ $ + 2
	dw lb827,lb980,lb980,lb99f
.lb883 equ $ + 6
	dw lb99f,lb99f,lb99f,lb9c7
	dw lb9c7,lb9f0,lbaa9,lb9c7
	dw lb9c7,lb9f0,lbaac,lb9f0
	dw lbaa6,lb9f0,lbaac,#0000
	dw lb877
.lb8a3 equ $ + 4
.lb89f
	dw lba25,lba54,lba67,lba67
	dw lbaa9,lba67,lba67,lbaac
	dw lba8d,lbaa6,lba8d,lbaac
	dw #0000,lb89f
.lb8bb
	db #de,#00,#34,#12,#8a,#86,#00,#00
	db #20,#60,#63,#e1,#18,#18,#16,#16
	db #14,#14,#13,#e3,#13,#ed,#8f,#e1
	db #18,#18,#16,#16,#14,#14,#13,#e3
.lb8e0 equ $ + 5
	db #13,#ed,#8f,#87,#80,#dd,#00,#1e
	db #11,#e1,#93,#da,#00,#1a,#11,#86
	db #00,#00,#08,#00,#63,#19,#1c,#1e
	db #87,#dd,#00,#1e,#11,#93,#da,#00
	db #1a,#11,#86,#00,#00,#08,#00,#63
	db #19,#1c,#1e,#87,#dd,#00,#1e,#11
	db #93,#da,#00,#1a,#11,#86,#00,#00
	db #08,#00,#63,#19,#1c,#1e,#87,#dd
	db #00,#1e,#11,#93,#da,#00,#1a,#11
	db #86,#00,#00,#08,#00,#63,#19,#1c
.lb92e equ $ + 3
	db #1e,#87,#80,#dd,#00,#1e,#11,#e1
	db #93,#da,#00,#1a,#11,#86,#00,#00
	db #08,#00,#63,#19,#1c,#1e,#87,#dd
	db #00,#1e,#11,#92,#8a,#da,#00,#1a
	db #11,#86,#00,#00,#08,#00,#63,#19
	db #1c,#1e,#87,#dd,#00,#1e,#11,#93
	db #da,#00,#1a,#11,#86,#00,#00,#08
	db #00,#63,#19,#1c,#1e,#87,#dd,#00
	db #1e,#11,#92,#8a,#dc,#00,#1c,#12
	db #8a,#86,#00,#00,#26,#60,#63,#e1
.lb980 equ $ + 5
	db #1f,#1f,#8e,#87,#80,#dd,#00,#18
	db #12,#8a,#83,#01,#11,#88,#02,#04
	db #02,#00,#e3,#12,#12,#8f,#8f,#12
	db #12,#8f,#8f,#12,#12,#8f,#8f,#12
.lb99f equ $ + 4
	db #12,#8f,#8f,#80,#dd,#00,#18,#12
	db #8a,#83,#01,#11,#88,#02,#04,#02
	db #00,#e5,#12,#e3,#12,#e1,#0d,#e3
	db #10,#e5,#12,#12,#e3,#8f,#e5,#12
	db #e3,#12,#e1,#0d,#e3,#10,#e5,#12
.lb9c7 equ $ + 4
	db #12,#e3,#8f,#80,#dd,#00,#18,#12
	db #8a,#83,#01,#11,#88,#02,#04,#02
	db #00,#e3,#1e,#1e,#e1,#19,#e3,#1c
	db #1e,#1e,#e1,#1e,#e3,#19,#1c,#1e
	db #1e,#e1,#19,#e3,#1c,#1e,#1e,#e1
.lb9f0 equ $ + 5
	db #1e,#e3,#19,#1c,#80,#e5,#12,#e3
	db #12,#e1,#0d,#e3,#10,#e5,#12,#12
	db #e3,#8f,#e5,#17,#e3,#17,#e1,#12
	db #e3,#15,#e5,#17,#17,#e3,#8f,#e5
	db #19,#e3,#19,#e1,#14,#e3,#17,#e5
	db #19,#19,#e3,#8f,#e5,#12,#e3,#12
	db #e1,#0d,#e3,#10,#e5,#12,#12,#e3
.lba25 equ $ + 2
	db #8f,#80,#db,#00,#1b,#12,#8a,#90
	db #f4,#83,#00,#00,#89,#b1,#e0,#31
	db #2f,#2d,#2c,#e7,#2a,#f3,#8f,#ff
	db #8f,#8f,#8f,#e0,#31,#2f,#2d,#2c
	db #e7,#2a,#f3,#8f,#ff,#8f,#e0,#31
	db #2f,#2d,#2c,#e7,#2a,#f3,#8f,#ff
.lba54 equ $ + 1
	db #8f,#e0,#31,#2f,#2d,#2c,#e7,#2a
	db #f3,#8f,#e0,#31,#2f,#2d,#2c,#e7
.lba67 equ $ + 4
	db #2a,#f3,#8f,#80,#d9,#12,#12,#15
	db #83,#00,#00,#8a,#88,#0a,#01,#03
	db #14,#e3,#2a,#2f,#31,#f3,#36,#e3
	db #31,#2f,#31,#f3,#2a,#e3,#2a,#2f
	db #31,#f3,#36,#e3,#36,#31,#2f,#f3
.lba8d equ $ + 2
	db #2a,#80,#e3,#36,#31,#2f,#31,#36
	db #31,#2f,#31,#ef,#36,#8f,#e3,#36
	db #31,#2f,#31,#2a,#25,#23,#25,#ef
.lbaa9 equ $ + 6
.lbaa6 equ $ + 3
	db #1e,#8f,#80,#90,#01,#80,#90,#02
	db #80,#90
.lbaac
	db #00,#80
.lbaaf
	db #94,#30,#30,#30,#30,#30,#30,#30
	db #30,#30,#30,#30,#30,#30,#30,#30
	db #30
;	
; #b380 db "yniT 9891 (c)"
;
; #0456
; ld a,#01
; ld (#b000),a
; xor a
; ld (#b001),a
; ld (#b002),a
; ld (#b003),a
; ld a,#0e
; ld (#b004),a
; call #b005
; ret
;
; #0483
; ld a,#20
; ld (#b002),a
; call #b005
;
; #048e
; ld a,(#b004)	; end music ?
; and a
; ret z
;
.music_info
	db "Adidas Championship Tie Break (1990)(Ocean Software)(Tiny Williams)",0
	db "yniT 9891 (c)",0

	read "music_end.asm"
