; Music of Captain Planet And The Planeteers (1990)(Mindscape)()()
; Ripped by Megachur the 17/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CAPTAINP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #2000
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

.l2005 equ $ + 5
.l2004 equ $ + 4
.l2003 equ $ + 3
.l2002 equ $ + 2
.l2001 equ $ + 1
.l2000
	db #01,#00,#00,#00,#00,#0f
.l2006
	db #10
;
.play_music
;
	push af
	push bc
	push de
	push hl
	call l2056
	call l20cb
	ld hl,l212e
	dec (hl)
	ld h,#27
	call l210a
	inc h
	call l210a
	inc h
	call l210a
	inc h
	call l210a
	ld a,#3f
	ld hl,l2734
	and (hl)
	inc h
	and (hl)
	inc h
	and (hl)
	ld bc,(l2003)
	inc c
	dec c
	jr z,l203c
	or #24
	inc h
	and (hl)
.l203c
	ld (l235b),a
	call l22b7
	call l2476
	ld hl,l212e
	ld a,(hl)
	or a
	jr nz,l204e
.l204d equ $ + 1
	ld (hl),#01
.l204e
	call l22c7
	pop hl
	pop de
	pop bc
	pop af
	ret
.l2056
	ld a,(l2001)
	or a
	jr nz,l2062
	ld a,(l2000)
;
.init_music
;
	ld (l2063),a
.l2063 equ $ + 1
.l2062
	ld a,#00
	or a
	ret z
	push af
	call l231e
	pop af
	cp #02
	ret nc
	ld (l2001),a
	dec a
	add a
	add a
	add a
	add #35                 ; à revoir !
	ld e,a
	adc #2a                 ; à revoir !
	sub e
	ld d,a
	ld a,(de)
	inc de
	ld (l204d),a
	ld h,#27
	call l209d
	call l209d
	call l209d
	xor a
	ld (l2004),a
	ld (l275f),a
	inc a
	ld (l212e),a
	ld a,#10
	ld (l2006),a
	ret
.l209d
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
.l20cb
	ld a,(l2002)
	or a
	ret z
	cp #01
	ret nc
	ld c,a
	ld hl,l2733
	xor a
	cp (hl)
	jr z,l20e4
	inc h
	cp (hl)
	jr z,l20e4
	inc h
	cp (hl)
	jr z,l20e4
	ret
.l20e4
	ld (hl),#02
	ld a,c
	add a
	add #ad
	ld c,a
	adc #2c
	sub c
	ld b,a
	ld a,(bc)
	ld l,#02
	ld (hl),a
	ld e,a
	inc l
	inc bc
	ld a,(bc)
	ld (hl),a
	ld d,a
	ld l,#16
	ld (hl),#01
	xor a
	ld (l2002),a
	ld l,#04
	ld (hl),a
	ld l,#15
	ld (hl),a
	jp l214c
.l210a
	ld l,#33
	ld a,(hl)
	or a
	ret z
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
	cp #02
	jr z,l2132
	ld l,#04
	bit 7,(hl)
	jr z,l212d
.l211f equ $ + 1
	ld a,#00
	dec a
	ld (l211f),a
	jr nz,l212d
	ld l,#20
	ld a,(hl)
	ld l,#34
	or (hl)
	ld (hl),a
.l212e equ $ + 1
.l212d
	ld a,#01
	or a
	jr nz,l213d
.l2132
	ld l,#05
	dec (hl)
	jr z,l214c
	call l2735
	call l2887
.l213d
	call l225d
	call l28ab
	call l28a4
	call l2799
	jp l2740
.l214c
	ld a,(de)
	inc de
	or a
	jp m,l2190
.l2152
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call l275b
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
	call l240c
	ld l,#0f
	call l2180
	inc l
.l2180
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
.l2190
	cp #e0
	jr nc,l21b4
	cp #c0
	jr nc,l21e0
	cp #b0
	jr nc,l21bc
	cp #a0
	jr nc,l21c4
	ld c,h
	add a
	add #35
	ld l,a
	adc #28
	sub l
	ld h,a
	ld a,c
	ld bc,l214c
	push bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	push bc
	ret
.l21b4
	sub #df
	ld l,#0d
	ld (hl),a
	jp l214c
.l21bc
	sub #b0
	ld l,#0e
	ld (hl),a
	jp l214c
.l21c4
	sub #a0
	add a
	add #47
	ld c,a
	adc #24
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
	jp l214c
.l21e0
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
	ld h,#25
	jr nc,l21f3
	inc h
.l21f3
	ld l,a
	ld e,(hl)
	inc l
	ld a,(de)
	cpl
	ld e,#34
	ld (de),a
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
	ld a,(hl)
	inc l
	ld (l2356),a
	ld a,(hl)
	inc l
	ld (l240b),a
	ld a,(hl)
	inc l
	ld (l2409),a
	ld a,(hl)
	ld (l240a),a
	pop hl
	ex de,hl
	jp l214c
.l225d
	ld l,#10
	ld a,(hl)
	or a
	jr z,l2278
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
.l2278
	ld l,#13
	ld a,(hl)
	or a
	jr z,l2290
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
	jr l22a2
.l2290
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
.l22a2
	sub (hl)
	jr nc,l22a6
	xor a
.l22a6
	ld l,#0b
	ld (hl),a
	ret
	ld a,(de)
	ld l,#32
	ld (hl),a
	inc de
	ret
.l22b0
	inc (hl)
	ret
	ld l,#04
	res 2,(hl)
	ret
.l22b7
	ld hl,l2004
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
	jr l231e
.l22c7
	call l2348
	ld h,#27
	call l22da
	inc h
	call l22da
	inc h
	ld a,(l2003)
	or a
	jr nz,l2312
.l22da
	ld l,#06
	call l22f6
	call l22f6
	ld a,(l2006)
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
	ld h,#26
	ld a,b
	ld c,(hl)
	pop hl
	jr l22fa
.l22f6
	ld a,(hl)
	inc l
	ld c,(hl)
	inc l
.l22fa
	ld b,d
	out (c),a
.l22fe equ $ + 1
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
.l2312
	ld hl,l2a06
	call l22f6
	call l22f6
	jr l22f6
	pop af
.l231e
	xor a
	ld (l2001),a
	ld (l2063),a
	ld (l2000),a
	ld (l2733),a
	ld (l2833),a
	ld (l2933),a
	ld (l2732),a
	ld (l2832),a
	ld (l2932),a
	ld a,#3f
	ld (l235b),a
	ld (l2734),a
	ld (l2834),a
	ld (l2934),a
.l2348
	ld de,#f4f6
	ld b,e
	in a,(c)
	or #c0
	ld (l22fe),a
	ld a,#06
.l2356 equ $ + 1
	ld c,#01
	call l22fa
.l235b equ $ + 1
	ld a,#3f
	ld c,a
	ld a,#07
	jr l22fa
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
.l23f5 equ $ + 4
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
.l2405 equ $ + 4
	dw #0013,#0012,#0011,#0010
.l240a equ $ + 1
.l2409
	dw #0000
.l240b
	nop
.l240c
	ld l,#04
	bit 7,(hl)
	ret z
.l2412 equ $ + 1
	ld a,#00
	ld (l2356),a
	xor a
	ld (l2409),a
	ld (l240a),a
	ld (l240b),a
	ld a,#01
	ld (l211f),a
	ld l,#20
	ld a,(hl)
	cpl
	ld c,a
	ld l,#34
	ld a,(hl)
	and c
	ld (hl),a
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
	ld c,l                  ; data !!!
	inc h
	ld d,a
	inc h
	ld e,l
	inc h
	nop
	inc c
	ld bc,#020d
	ld c,#01
	dec c
	nop
	adc h
	nop
	nop
	inc c
	inc c
	jr l23f5
	inc c
	inc c
	jr l2405
	db #73,#65,#67,#61,#6d,#49,#20,#64
	db #6e,#75,#6f,#53,#20,#31,#39,#39
	db #31,#20,#29,#63,#28
.l2476
	ld hl,l2409
	dec (hl)
	ret p
	xor a
	ld (hl),a
	inc hl
	cp (hl)
	ret z
	dec (hl)
	inc hl
	ld a,(l2356)
	add (hl)
	ld (l2356),a
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
	ld a,#34
	ld (l2004),a
	ld (l2005),a
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#1f,#f4,#0e
	db #00,#19,#12,#01,#11,#00,#01,#01
	db #00,#00,#00,#00,#00,#21,#06,#0e
	db #00,#28,#12,#01,#11,#00,#00,#00
	db #00,#01,#00,#00,#00,#1f,#0c,#0e
	db #00,#1f,#13,#01,#11,#08,#01,#02
	db #00,#00,#00,#00,#00,#1f,#00,#0b
	db #00,#1f,#14,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#1f,#f4,#0d
	db #02,#1f,#14,#00,#00,#03,#01,#02
	db #00,#00,#00,#00,#00,#1f,#e8,#0d
	db #02,#17,#14,#00,#00,#03,#02,#02
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
	db #00,#00,#00,#00,#00,#00,#01,#02
	db #03,#04,#05,#06,#07,#08,#09,#0a
	db #0b,#0c,#0d,#0e,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#01,#01,#01,#01,#01
	db #02,#02,#02,#02,#02,#00,#00,#00
	db #00,#01,#01,#01,#01,#02,#02,#02
	db #02,#03,#03,#03,#03,#00,#00,#00
	db #00,#01,#01,#01,#02,#02,#02,#03
	db #03,#03,#04,#04,#04,#00,#00,#00
	db #01,#01,#01,#02,#02,#03,#03,#03
	db #04,#04,#04,#05,#05,#00,#00,#00
	db #01,#01,#02,#02,#03,#03,#03,#04
	db #04,#05,#05,#06,#06,#00,#00,#01
	db #01,#02,#02,#03,#03,#04,#04,#05
	db #05,#06,#06,#07,#07,#00,#00,#01
	db #01,#02,#02,#03,#03,#04,#05,#05
	db #06,#06,#07,#07,#08,#00,#00,#01
	db #01,#02,#03,#03,#04,#05,#05,#06
	db #06,#07,#08,#08,#09,#00,#00,#01
	db #02,#02,#03,#04,#04,#05,#06,#06
	db #07,#08,#08,#09,#0a,#00,#00,#01
	db #02,#03,#03,#04,#05,#06,#06,#07
	db #08,#09,#09,#0a,#0b,#00,#00,#01
	db #02,#03,#04,#04,#05,#06,#07,#08
	db #08,#09,#0a,#0b,#0c,#00,#00,#01
	db #02,#03,#04,#05,#06,#07,#07,#08
	db #09,#0a,#0b,#0c,#0d,#00,#00,#01
	db #02,#03,#04,#05,#06,#07,#08,#09
	db #0a,#0b,#0c,#0d,#0e,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#08
	db #0f,#00,#04,#00,#00,#00,#00,#00
	db #00,#0f,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#08,#09,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.l2732
	nop
.l2733
	nop
.l2734
	ccf
.l2735
	ld l,#15
	ld a,(hl)
	or a
	ret z
	ld l,#0c
	add (hl)
	ld (hl),a
	jr l275b
.l2740
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
	jr nc,l2750
	inc b
.l2750
	inc (hl)
	ld a,(bc)
	or a
	jp p,l2758
	ld (hl),#00
.l2758
	ld l,#0c
	add (hl)
.l275b
	ld l,#32
	add (hl)
.l275f equ $ + 1
	add #00
	add a
	add #61                 ; à revoir !
	ld c,a
	adc #23                 ; à revoir !
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
	jr z,l2791
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
.l2791
	ld l,#04
	bit 5,(hl)
	ret z
	res 1,(hl)
	ret
.l2799
	ld l,#2c
	ld a,(hl)
	or a
	ret z
	dec de
	ld a,(de)
	inc de
	cp #86
	jr z,l27af
	ld l,#0d
	ld a,(hl)
	ld l,#2b
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.l27af
	ld l,#31
	ld a,(hl)
	or a
	jr z,l27c0
	dec l
	dec (hl)
	jr nz,l27c0
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#2c
	inc (hl)
.l27c0
	ld l,#04
	bit 6,(hl)
	jr z,l27e0
	ld l,#2e
	dec (hl)
	jr nz,l27d4
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.l27d4
	ld l,#2c
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.l27e0
	ld l,#2e
	dec (hl)
	jr nz,l27ee
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.l27ee
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02,#00,#03,#00,#09,#0f
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#02,#10,#12,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2833 equ $ + 7
.l2832 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2834
	db #3f,#61,#28,#e4,#28,#a2,#24,#8a
	db #24,#30,#24,#b2,#22,#ed,#28,#e9
	db #28,#aa,#22,#1d,#23,#59,#28,#35
	db #29,#3a,#29,#99,#24,#4b,#29,#df
	db #28,#59,#29,#87,#29,#2e,#00,#eb
	db #ed,#a0,#ed,#a0,#eb
	ld a,(l2000)
	ld (l2063),a
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
	jr z,l287e
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l287e
	ld d,b
	ld e,c
	pop bc
	ld a,(l2ca8)
	jp l2190
.l2887
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
.l28a4
	ld l,#04
	bit 2,(hl)
	jr nz,l28b0
	ret
.l28ab
	ld l,#04
	bit 1,(hl)
	ret z
.l28b0
	ld l,#27
	dec (hl)
	jp m,l22b0
	ld l,#26
	bit 7,(hl)
	jr nz,l28cb
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
.l28cb
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
	db #00,#00,#00,#00,#04,#00,#05,#00
	db #0a,#0f,#00,#04,#00,#00,#00,#00
	db #00,#00,#0f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#04,#20,#24
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2934 equ $ + 2
.l2933 equ $ + 1
.l2932
	db #00,#00,#3f
	ld l,#04
	set 7,(hl)
	ret
	ld l,#04
	res 7,(hl)
	ret
	ld a,(de)
	inc de
	ld (l2412),a
	ret
	ld a,(de)
	inc de
	ld (l204d),a
	ret
	pop af
	ld a,#3f
	ld l,#34
	ld (hl),a
	ld l,#33
	xor a
	ld (hl),a
	ld (l2003),a
	ret
	pop af
	call l29ac
	ld a,#1f
	ld (l2356),a
	xor a
	ld (l2409),a
	ld a,#e1
	ld (l240b),a
	ld a,#04
	ld (l240a),a
	ld l,#22
	ld (hl),#4d
	inc l
	ld (hl),#24
	ld l,#04
	set 0,(hl)
	set 1,(hl)
	res 7,(hl)
	ld a,#21
	ld l,#32
	sub (hl)
	jp l2152
	pop af
	call l29b3
	ld l,#25
	ld (hl),#70
	inc l
	ld (hl),#00
	inc l
	ld (hl),#0c
	ld l,#04
	set 1,(hl)
	ld l,#22
	ld (hl),#4d
	inc l
	ld (hl),#24
	ld l,#04
	set 0,(hl)
	ld a,#09
	ld l,#32
	sub (hl)
	jp l2152
.l29ac
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	jr l29b6
.l29b3
	ld l,#1f
	ld a,(hl)
.l29b6
	cpl
	ld l,#34
	ld (hl),a
	ld l,#04
	res 4,(hl)
	res 0,(hl)
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2a06 equ $ + 5
	db #00,#00,#00,#00,#00,#04,#00,#05
	db #00,#0a,#0f,#00,#04,#00,#00,#00
	db #00,#00,#00,#0f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#04,#20
	db #24,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#3f
.l2a35
	db #05,#3c,#2a,#4c                     ;à revoir
	db #2a,#5c,#2a,#6a,#2a,#6a,#2a,#6a
	db #2a,#6a,#2a,#6a,#2a,#b0,#2a,#00
	db #00,#3c,#2a,#a2,#2c,#f2,#2a,#f2
	db #2a,#f2,#2a,#f2,#2a,#86,#2b,#00
	db #00,#4c,#2a,#a2,#2c,#3e,#2b,#b1
	db #2b,#3e,#2b,#73,#2c,#00,#00,#5c
	db #2a,#c1,#e1,#91,#87,#90,#91,#87
	db #91,#90,#91,#91,#87,#90,#87,#87
	db #91,#90,#87,#e1,#91,#87,#90,#91
	db #87,#91,#90,#91,#91,#87,#90,#87
	db #87,#91,#90,#87,#e1,#91,#87,#90
	db #91,#87,#91,#90,#91,#91,#87,#90
	db #87,#87,#91,#90,#87,#e1,#91,#87
	db #90,#91,#87,#91,#90,#91,#91,#87
	db #90,#87,#87,#91,#90,#87,#80,#e1
	db #91,#87,#90,#91,#87,#91,#90,#91
	db #91,#87,#90,#87,#91,#87,#90,#87
	db #91,#87,#90,#91,#87,#91,#90,#91
	db #91,#87,#90,#87,#91,#87,#90,#87
	db #91,#87,#90,#91,#87,#91,#90,#91
	db #91,#87,#90,#87,#91,#87,#90,#87
	db #90,#91,#91,#90,#91,#91,#90,#91
	db #91,#90,#91,#91,#90,#87,#90,#87
	db #80,#c2,#e1,#09,#87,#09,#e3,#07
	db #e1,#02,#04,#07,#09,#87,#09,#e3
	db #07,#e1,#02,#04,#07,#09,#87,#09
	db #e3,#07,#e1,#02,#04,#07,#0c,#0b
	db #07,#e3,#09,#e1,#02,#04,#07,#e1
	db #09,#87,#09,#e3,#07,#e1,#02,#04
	db #07,#09,#87,#09,#e3,#07,#e1,#02
	db #04,#07,#09,#87,#09,#e3,#07,#e1
	db #02,#04,#07,#0c,#0b,#07,#e3,#09
	db #e1,#02,#04,#07,#80,#c3,#a1,#e1
	db #87,#e0,#2d,#2d,#2d,#86,#e7,#2b
	db #e3,#87,#e0,#2d,#2d,#2d,#86,#e7
	db #2b,#e3,#87,#e0,#2d,#2d,#2d,#86
	db #e9,#2b,#e1,#30,#2f,#2b,#e9,#2d
	db #e1,#87,#e0,#34,#34,#34,#86,#e7
	db #32,#e3,#87,#e0,#34,#34,#34,#86
	db #e7,#32,#e3,#87,#e0,#34,#34,#34
	db #86,#e7,#32,#e1,#87,#37,#35,#32
	db #e7,#34,#e1,#87,#80,#e3,#0c,#0c
	db #0c,#e1,#0c,#e5,#0b,#e3,#0b,#0b
	db #0b,#0b,#0b,#0b,#e1,#0b,#e5,#09
	db #e3,#09,#09,#09,#0c,#0c,#0c,#e1
	db #0c,#e5,#0b,#e3,#0b,#0b,#0b,#e5
	db #09,#0c,#0e,#10,#e3,#13,#15,#80
	db #c4,#e3,#87,#e0,#2d,#87,#2b,#87
	db #2d,#87,#e9,#30,#e0,#34,#87,#32
	db #87,#34,#87,#e9,#37,#e0,#39,#87
	db #37,#87,#39,#87,#f5,#3c,#e3,#87
	db #e0,#2d,#87,#2b,#87,#2d,#87,#e9
	db #30,#e0,#34,#87,#32,#87,#34,#87
	db #e9,#37,#e1,#3c,#87,#3c,#3b,#39
	db #e3,#3b,#e1,#39,#37,#e9,#39,#c5
	db #e0,#2d,#2f,#30,#86,#2d,#2f,#30
	db #86,#2d,#2f,#30,#86,#2d,#2f,#30
	db #86,#2d,#32,#34,#86,#2d,#32,#34
	db #86,#2d,#32,#34,#86,#2d,#32,#34
	db #86,#2d,#34,#37,#86,#2d,#34,#37
	db #86,#2d,#34,#37,#86,#2d,#34,#37
	db #86,#2d,#34,#39,#86,#2d,#34,#39
	db #86,#2d,#34,#39,#86,#2d,#32,#37
	db #86,#2d,#2f,#30,#86,#2d,#2f,#30
	db #86,#2d,#2f,#30,#86,#2d,#2f,#30
	db #86,#2d,#32,#34,#86,#2d,#32,#34
	db #86,#2d,#32,#34,#86,#2d,#32,#34
	db #86,#2d,#34,#37,#86,#2d,#34,#37
	db #86,#2d,#34,#37,#86,#2d,#34,#37
	db #86,#2d,#34,#39,#86,#2d,#34,#39
	db #86,#2d,#34,#39,#86,#2d,#34,#37
	db #86,#80,#c4,#a2,#e3,#87,#e1,#30
	db #e3,#34,#35,#34,#f1,#30,#e1,#2f
	db #e3,#30,#35,#f5,#34,#e1,#30,#e3
	db #34,#35,#34,#e5,#30,#e3,#34,#35
	db #a1,#2d,#e1,#87,#e2,#30,#87,#32
	db #87,#34,#87,#e1,#37,#87,#39,#87
.l2ca8 equ $ + 7
	db #80,#ff,#87,#87,#87,#87,#80,#8a
	db #a2,#2c,#00,#00,#a9,#2c,#e5
;
.music_info
	db "Captain Planet And The Planeteers (1990)(Mindscape)()",0
	db "",0

	read "music_end.asm"
