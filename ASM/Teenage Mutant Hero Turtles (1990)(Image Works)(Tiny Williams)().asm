; Music of Teenage Mutant Hero Turtles (1990)(Image Works)(Tiny Williams)()
; Ripped by Megachur the 22/03/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TEENAMHT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #2000
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

.l2005 equ $ + 5
.l2004 equ $ + 4
.l2003 equ $ + 3
;
.music_end equ $ + 1
.l2001 equ $ + 1
;
.l2000
	db #00,#01,#00,#00,#00,#10
;
.play_music
;
	push af
	push bc
	push de
	push hl
	call l203b
	ld a,(l2001)
	or a
	jr z,l2036
	ld hl,l20c3
	dec (hl)
	ld h,#25
	call l20a1
	inc h
	call l20a1
	inc h
	call l20a1
	call l224f
	call l21b8
	ld hl,l20c3
	ld a,(hl)
	or a
	jr nz,l2033
	ld (hl),#03
.l2033
	call l225f
.l2036
	pop hl
	pop de
	pop bc
	pop af
	ret
.l203b
	ld a,(l2001)
	or a
	jr nz,l2047
	ld a,(l2000)
;
.init_music
;
	ld (l2048),a
.l2048 equ $ + 1
.l2047
	ld a,#00
	or a
	ret z
	push af
	call l22a6
	pop af
	cp #02
	ret nc
	ld (l2001),a
	ld de,l2824
	ld h,#25
	call l2072
	call l2072
	call l2072
	xor a
	ld (l2003),a
	inc a
	ld (l20c3),a
	ld a,#10
	ld (l2005),a
	ret
.l2072
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
	ld l,#31
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
	ld l,#32
	ld (hl),#01
	inc h
	ret
.l20a1
	ld l,#32
	ld a,(hl)
	or a
	ret z
	ld l,#04
	bit 7,(hl)
	jr z,l20bd
.l20ad equ $ + 1
	ld a,#00
	dec a
	ld (l20ad),a
	jr nz,l20bd
	ld l,#20
	ld a,(l2593)
	or (hl)
	ld (l2593),a
.l20bd
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
.l20c3 equ $ + 1
	ld a,#02
	or a
	jr nz,l20d2
	ld l,#05
	dec (hl)
	jr z,l20e4
	call l259b
	call l2807
.l20d2
	call l276e
	call l273a
	call l2733
	call l21cf
	call l25a6
	jp l26e0
.l20e4
	ld a,(de)
	inc de
	or a
	jp m,l2128
.l20ea
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call l25c1
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
	call l22e1
	ld l,#0e
	call l2118
	inc l
.l2118
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
.l2128
	cp #e0
	jr nc,l2150
	cp #d0
	jr nc,l2160
	cp #c0
	jr nc,l2158
	cp #b0
	jr nc,l2187
	ld c,h
	add a
	add #33
	ld l,a
	adc #26
	sub l
	ld h,a
	ld a,c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	ld (l214b),bc
.l214b equ $ + 1
	call l27c1
	jp l20e4
.l2150
	sub #df
	ld l,#0d
	ld (hl),a
	jp l20e4
.l2158
	sub #c0
	ld l,#14
	ld (hl),a
	jp l20e4
.l2160
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
	jp l20e4
.l2187
	sub #b0
	add a
	add #b6
	ld c,a
	adc #23
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
	jp l20e4
	pop af
	call l2592
	ld a,(l2593)
	or c
	ld (l2593),a
	ld l,#32
	ld (hl),#00
	ret
	ld l,#04
	res 0,(hl)
	ret
.l21b8
	ld hl,l21cc
	dec (hl)
	ret p
	xor a
	ld (hl),a
	inc hl
	cp (hl)
	ret z
	dec (hl)
	inc hl
	ld a,(l22d5)
	add (hl)
	ld (l22d5),a
	ret
.l21cc
	nop
.l21cd
	nop
.l21ce
	pop hl
.l21d0 equ $ + 1
.l21cf
	ld a,#55
	rrca
	ld (l21d0),a
	ret c
	dec de
	ld a,(de)
	inc de
	cp #8e
	jr z,l21e7
	ld l,#0d
	ld a,(hl)
	ld l,#2a
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.l21e7
	ld l,#04
	bit 3,(hl)
	ret z
	ld l,#30
	ld a,(hl)
	or a
	jr z,l21fd
	dec l
	dec (hl)
	jr nz,l21fd
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#2b
	inc (hl)
.l21fd
	ld l,#04
	bit 6,(hl)
	jr z,l221d
	ld l,#2d
	dec (hl)
	jr nz,l2211
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.l2211
	ld l,#2b
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.l221d
	ld l,#2d
	dec (hl)
	jr nz,l222b
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.l222b
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
.l2239
	ld l,#04
	res 5,(hl)
	ret
	ld a,#35
	ld (l2003),a
	ld (l2004),a
	ret
	ld a,(de)
	ld l,#31
	ld (hl),a
	inc de
	ret
.l224d
	inc (hl)
	ret
.l224f
	ld hl,l2003
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
	jr l22a6
.l225f
	call l22c7
	ld h,#25
	call l226d
	inc h
	call l226d
	ld h,#27
.l226d
	ld l,#06
	call l2289
	call l2289
	ld a,(l2005)
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
	ld h,#24
	ld a,b
	ld c,(hl)
	pop hl
	jr l228d
.l2289
	ld a,(hl)
	inc l
	ld c,(hl)
	inc l
.l228d
	ld b,d
	out (c),a
.l2291 equ $ + 1
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
.l22a6
;
	xor a
	ld (l2001),a
	ld (l2048),a
	ld (l2000),a
	ld (l2532),a
	ld (l2632),a
	ld (l2732),a
	ld (l2531),a
	ld (l2631),a
	ld (l2731),a
	ld a,#3f
	ld (l2593),a
.l22c7
	ld de,#f4f6
	ld b,e
	in a,(c)
	or #c0
	ld (l2291),a
	ld a,#06
.l22d5 equ $ + 1
	ld c,#a3
	call l228d
	ld a,(l2593)
	ld c,a
	ld a,#07
	jr l228d
.l22e1
	ld l,#04
	bit 7,(hl)
	ret z
	ld a,#02
	ld (l22d5),a
	xor a
	ld (l21cc),a
	ld (l21cd),a
	ld (l21ce),a
	ld a,#01
	ld (l20ad),a
	ld l,#20
	ld a,(hl)
	cpl
	ld c,a
	ld a,(l2593)
	and c
	ld (l2593),a
	ret
	ld l,#15
	ld (hl),#01
	ret
	ld l,#15
	ld (hl),#ff
	ret
	ld l,#04
	set 7,(hl)
	ret
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
	dw #003c,#0039,#0035,#0032
	dw #0030,#002d
	db #bc,#23,#c6,#23,#ca,#23,#00,#0c
	db #01,#0d,#02,#0e,#01,#0d,#00,#8c
	db #0c,#0c,#07,#87,#00,#00,#0c,#8c
	db #4d,#75,#73,#69,#63,#20,#28,#63
	db #29,#20,#31,#39,#39,#30,#20,#53
	db #6f,#75,#6e,#64,#20,#49,#6d,#61
	db #67,#65,#73
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#02,#03,#04,#05,#06,#07,#08
	db #09,#0a,#0b,#0c,#0d,#0e,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#01,#01,#01
	db #01,#01,#02,#02,#02,#02,#02,#00
	db #00,#00,#00,#01,#01,#01,#01,#02
	db #02,#02,#02,#03,#03,#03,#03,#00
	db #00,#00,#00,#01,#01,#01,#02,#02
	db #02,#03,#03,#03,#04,#04,#04,#00
	db #00,#00,#01,#01,#01,#02,#02,#03
	db #03,#03,#04,#04,#04,#05,#05,#00
	db #00,#00,#01,#01,#02,#02,#03,#03
	db #03,#04,#04,#05,#05,#06,#06,#00
	db #00,#01,#01,#02,#02,#03,#03,#04
	db #04,#05,#05,#06,#06,#07,#07,#00
	db #00,#01,#01,#02,#02,#03,#03,#04
	db #05,#05,#06,#06,#07,#07,#08,#00
	db #00,#01,#01,#02,#03,#03,#04,#05
	db #05,#06,#06,#07,#08,#08,#09,#00
	db #00,#01,#02,#02,#03,#04,#04,#05
	db #06,#06,#07,#08,#08,#09,#0a,#00
	db #00,#01,#02,#03,#03,#04,#05,#06
	db #06,#07,#08,#09,#09,#0a,#0b,#00
	db #00,#01,#02,#03,#04,#04,#05,#06
	db #07,#08,#08,#09,#0a,#0b,#0c,#00
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #07,#08,#09,#0a,#0b,#0c,#0d,#00
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#2c
	db #28,#a4,#2b,#00,#15,#00,#00,#01
	db #00,#08,#00,#00,#20,#00,#00,#00
	db #00,#00,#00,#0f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#08
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2531
	db #00
.l2532
	db #01
.l2533
	call l2592
	ld l,#1f
.l2538
	ld a,(hl)
.l2539
	cpl
	and c
	ld (l2593),a
	ld l,#04
	res 4,(hl)
	res 0,(hl)
	ret
	call l255c
	call l2592
	ld l,#20
	jr l2538
	call l255c
.l2552
	call l2592
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	jr l2539
.l255c
	ld a,(de)
	inc de
	ld (l22d5),a
	ld a,(de)
	inc de
	ld (l21ce),a
	ld a,(de)
	inc de
	ld (l21cc),a
	ld a,(de)
	inc de
	ld (l21cd),a
	ret
	call l2592
	ld l,#20
	ld a,(hl)
	cpl
	and c
	ld (l2593),a
	ld l,#04
	set 4,(hl)
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
.l2593 equ $ + 1
.l2592
	ld a,#1b
	ld l,#1f
	or (hl)
	inc l
	or (hl)
	ld c,a
	ret
.l259b
	ld l,#15
	ld a,(hl)
	or a
	ret z
	ld l,#0c
	add (hl)
	ld (hl),a
	jr l25c1
.l25a6
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
	jr nc,l25b6
	inc b
.l25b6
	inc (hl)
	ld a,(bc)
	or a
	jp p,l25be
	ld (hl),#00
.l25be
	ld l,#0c
	add (hl)
.l25c1
	ld l,#31
	add (hl)
	add a
	add #32
	ld c,a
	adc #23
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
	jr z,l25f5
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
.l25f5
	ld l,#04
	bit 5,(hl)
	ret z
	res 1,(hl)
	ret
	db #00,#00,#00,#5a,#28,#a4,#2b,#00
	db #15,#02,#00,#03,#00,#09,#00,#00
	db #20,#00,#00,#00,#00,#00,#00,#0f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02,#10,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2632 equ $ + 5
.l2631 equ $ + 4
	db #00,#00,#00,#00,#00,#01,#ba,#26
	db #07,#23,#0c,#23,#84,#26,#b3,#21
	db #a3,#26,#16,#23,#2d,#23,#69,#26
	db #f3,#26,#33,#25,#45,#25,#4f,#25
	db #71,#25,#85,#25,#81,#25,#47,#22
	db #a5,#22,#c1,#27,#ed,#27,#b2,#26
	db #a3
	ld hl,l2239
	ld a,#22
	ld de,#f823
	ld h,#9d
	ld h,#eb
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
	ld l,#04
	set 5,(hl)
	jr l26a7
	ld l,#04
	set 1,(hl)
.l26a7
	ex de,hl
	ld e,#24
	ldi
	ldi
	ldi
	ex de,hl
	ret
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
	ld a,(l2000)
	ld (l2048),a
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
	jr z,l26d7
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l26d7
	ld d,b
	ld e,c
	pop bc
	ld a,(l2b9a)
	jp l2128
.l26e0
	ld l,#04
	bit 4,(hl)
	ret z
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	ld c,a
	ld a,(l2593)
	xor c
	ld (l2593),a
	ret
	ld l,#04
	res 3,(hl)
	ret
	ld l,#04
	res 7,(hl)
	ret
	db #00,#00,#00,#8c,#28,#22,#2b,#03
	db #03,#04,#f0,#05,#00,#0a,#01,#18
	db #06,#00,#00,#00,#27,#00,#02,#0f
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #00,#00,#04,#20,#bc,#23,#02,#e0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2731 equ $ + 4
	db #00,#00,#00,#00,#00
.l2732
	db #01
.l2733
	ld l,#04
	bit 2,(hl)
	jr nz,l273f
	ret
.l273a
	ld l,#04
	bit 1,(hl)
	ret z
.l273f
	ld l,#26
	dec (hl)
	jp m,l224d
	ld l,#25
	bit 7,(hl)
	jr nz,l275a
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
.l275a
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
.l276e
	ld l,#0f
	ld a,(hl)
	or a
	jr z,l2789
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
.l2789
	ld l,#12
	ld a,(hl)
	or a
	jr z,l27a7
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
	sub (hl)
	jr nc,l27a3
	xor a
.l27a3
	ld l,#0b
	ld (hl),a
	ret
.l27a7
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
	sub (hl)
	jr nc,l27bd
	xor a
.l27bd
	ld l,#0b
	ld (hl),a
	ret
.l27c1
	pop af
	call l2552
	ld a,#1f
	ld (l22d5),a
	xor a
	ld (l21cc),a
	ld a,#e1
	ld (l21ce),a
	ld a,#04
	ld (l21cd),a
	ld l,#21
	ld (hl),#bc
	inc l
	ld (hl),#23
	ld l,#04
	set 0,(hl)
	set 1,(hl)
	ld a,#18
	ld l,#31
	sub (hl)
	jp l20ea
	pop af
	call l2533
	ld l,#24
	ld (hl),#e0
	inc l
	ld (hl),#00
	inc l
	ld (hl),#0c
	ld l,#04
	set 1,(hl)
	ld a,#0c
	ld l,#31
	sub (hl)
	jp l20ea
.l2807
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
	bit 5,(hl)
	ret z
	set 1,(hl)
	ret
.l282a equ $ + 6
.l2824
	dw l282a,l2858,l288a,l2ba1
	dw l28d6,l28d6,l28d6,l28d6
	dw l28d6,l28d6,l2969,l2969
	dw l2969,l2969,l28d6,l28d6
	dw l28d6,l28d6,l28d6,l28d6
.l2852 equ $ + 6
	dw l28d6,l28d6,l2983,l2ba1
	dw #0000
.l2858 equ $ + 2
	dw l2852,l2ba1,l2ba1,l2ba1
	dw l2992,l2992,l2a06,l2a06
	dw l2a3c,l2a3c,l2a3c,l2a3c
	dw l2ba1,l2ba1,l29cc,l29cc
	dw l2a63,l2a63,l2aa5,l2aa5
.l2884 equ $ + 6
	dw l2aa5,l2aa5,l2ad1,l2ba1
	dw #0000
.l288a equ $ + 2
	dw l2884,l2af4,l2af4,l2af4
	dw l2af4,l2af4,l2af4,l2af4
	dw l2af4,l2af4,l2af4,l2af4
	dw l2af4,l2af4,l2af4,l2b40
	dw l2b40,l2b40,l2b6f,l2af4
	dw l2af4,l2af4,l2af4,l2af4
	dw l2af4,l2af4,l2af4,l2af4
	dw l2af4,l2af4,l2af4,l2af4
	dw l2af4,l2af4,l2af4,l2b9b
.l28d0
	dw l2ba1,#0000
	dw l28d0
.l28d6
	db #db,#12,#13,#64,#8a,#83,#00,#00
	db #90,#00,#88,#00,#01,#02,#00,#98
	db #e0,#1b,#8f,#0f,#8f,#1b,#8f,#1b
	db #8f,#1b,#8f,#0f,#8f,#1b,#8f,#1b
	db #8f,#1b,#8f,#0f,#8f,#1b,#8f,#1b
	db #8f,#1b,#8f,#0f,#8f,#1b,#8f,#1b
	db #8f,#1e,#8f,#12,#8f,#1e,#8f,#1e
	db #8f,#1e,#8f,#12,#8f,#1e,#8f,#1e
	db #8f,#1e,#8f,#12,#8f,#1e,#8f,#1e
	db #8f,#1e,#8f,#12,#8f,#1e,#8f,#1e
	db #8f,#22,#8f,#16,#8f,#22,#8f,#22
	db #8f,#22,#8f,#16,#8f,#22,#8f,#22
	db #8f,#22,#8f,#16,#8f,#22,#8f,#22
	db #8f,#22,#8f,#16,#8f,#22,#8f,#22
	db #8f,#20,#8f,#14,#8f,#20,#8f,#20
	db #8f,#20,#8f,#14,#8f,#20,#8f,#20
	db #8f,#20,#8f,#14,#8f,#20,#8f,#20
	db #8f,#20,#8f,#14,#8f,#20,#8f,#20
.l2969 equ $ + 3
	db #8f,#99,#80,#dc,#00,#00,#00,#8a
	db #83,#01,#11,#90,#0c,#e0,#27,#8f
	db #27,#8f,#27,#8f,#27,#8f,#e1,#25
.l2983 equ $ + 5
	db #8f,#25,#f1,#8f,#80,#e1,#1b,#fd
	db #8f,#e1,#19,#fd,#8f,#e1,#16,#fd
.l2992 equ $ + 4
	db #8f,#ef,#0f,#91,#dc,#02,#17,#11
	db #8a,#83,#01,#11,#b1,#87,#88,#02
	db #01,#01,#00,#e1,#27,#27,#27,#27
	db #e3,#25,#25,#22,#eb,#8f,#e1,#27
	db #27,#27,#27,#e3,#25,#25,#22,#eb
	db #8f,#e1,#20,#20,#20,#20,#e3,#22
	db #22,#1e,#eb,#8f,#e1,#25,#25,#25
.l29cc equ $ + 6
	db #27,#f7,#8f,#90,#0c,#80,#dc,#02
	db #17,#11,#8a,#83,#01,#11,#b2,#87
	db #88,#02,#01,#01,#00,#e1,#27,#27
	db #27,#27,#e3,#25,#25,#22,#eb,#8f
	db #e1,#27,#27,#27,#27,#e3,#25,#25
	db #22,#eb,#8f,#e1,#20,#20,#20,#20
	db #e3,#22,#22,#1e,#eb,#8f,#e1,#25
	db #25,#25,#27,#f7,#8f,#90,#0c,#80
.l2a06
	db #e1,#90,#18,#dc,#01,#1f,#11,#8a
	db #86,#fe,#ff,#01,#00,#02,#27,#25
	db #27,#25,#27,#25,#27,#25,#27,#25
	db #27,#25,#27,#25,#27,#25,#ca,#27
	db #25,#8f,#8f,#c9,#27,#25,#8f,#8f
	db #c8,#27,#25,#8f,#8f,#c7,#27,#25
.l2a3c equ $ + 6
	db #8f,#8f,#ff,#8f,#8f,#80,#dc,#00
	db #00,#00,#8a,#83,#01,#11,#90,#0c
	db #e0,#22,#8f,#22,#8f,#22,#8f,#22
	db #8f,#e1,#20,#8f,#20,#8f,#da,#00
	db #25,#11,#92,#92,#92,#92,#8f,#92
.l2a63 equ $ + 5
	db #92,#92,#90,#00,#80,#e1,#db,#01
	db #13,#12,#8a,#88,#01,#02,#01,#0a
	db #83,#01,#31,#86,#fc,#ff,#02,#00
	db #02,#22,#8f,#22,#27,#8f,#27,#22
	db #8e,#ef,#8f,#e1,#22,#8f,#22,#27
	db #8f,#27,#22,#8e,#ef,#8f,#e1,#22
	db #8f,#22,#27,#8f,#27,#22,#8e,#ef
	db #8f,#e1,#22,#8f,#22,#27,#8f,#27
.l2aa5 equ $ + 7
	db #22,#8e,#ef,#8f,#90,#18,#80,#dc
	db #02,#17,#12,#8a,#83,#01,#11,#90
	db #00,#88,#00,#02,#01,#00,#e1,#27
	db #25,#27,#25,#27,#8f,#25,#22,#8f
	db #25,#22,#8f,#20,#8f,#1b,#8f,#27
	db #25,#27,#25,#27,#8f,#25,#22,#8e
.l2ad1 equ $ + 3
	db #ed,#8f,#80,#e1,#27,#25,#27,#25
	db #27,#25,#27,#8e,#ef,#8f,#e1,#25
	db #22,#25,#22,#25,#22,#25,#8e,#ef
	db #8f,#e1,#22,#20,#22,#20,#22,#20
.l2af4 equ $ + 6
	db #22,#8e,#ef,#8f,#1b,#91,#df,#00
	db #27,#11,#83,#00,#00,#e3,#93,#93
	db #e5,#92,#e1,#93,#92,#8a,#85,#03
	db #03,#07,#24,#93,#8f,#8a,#85,#04
	db #04,#04,#13,#85,#03,#03,#07,#24
	db #8a,#85,#04,#04,#04,#13,#8f,#e3
	db #93,#93,#e5,#92,#e1,#93,#92,#8a
	db #85,#03,#03,#07,#24,#93,#8f,#8a
	db #85,#04,#04,#04,#13,#85,#03,#03
	db #07,#24,#8a,#85,#04,#04,#04,#13
.l2b40 equ $ + 2
	db #8f,#80,#8a,#df,#00,#35,#11,#e1
	db #85,#04,#04,#04,#24,#85,#04,#04
	db #04,#24,#85,#03,#03,#03,#24,#85
	db #03,#03,#03,#24,#85,#07,#04,#03
	db #24,#8f,#85,#07,#04,#03,#24,#8f
	db #92,#92,#92,#92,#8f,#92,#92,#92
.l2b6f equ $ + 1
	db #80,#8a,#e1,#85,#04,#04,#04,#24
	db #85,#04,#04,#04,#24,#85,#03,#03
	db #03,#24,#85,#03,#03,#03,#24,#85
	db #07,#04,#03,#24,#8f,#85,#07,#04
	db #03,#24,#8f,#93,#93,#8f,#93,#8f
.l2b9b equ $ + 5
.l2b9a equ $ + 4
	db #92,#92,#8f,#80,#94,#ff,#92,#92
.l2ba1 equ $ + 3
	db #92,#92,#80,#ff,#8f,#8f,#8f,#8f
	db #80,#00
;
; #23ce
; db "Music (c) 1990 Sound Images"
;
.music_info
	db "Teenage Mutant Hero Turtles (1990)(Image Works)(Tiny Williams)",0
	db "Music (c) 1990 Sound Images",0

	read "music_end.asm"
