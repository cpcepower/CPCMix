; Music of Robozone (1991)(Image Works)(Tiny Williams)()
; Ripped by Megachur the 21/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ROBOZONE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #c000
FIRST_THEME				equ 1
LAST_THEME				equ 1

	read "music_header.asm"

.lc005 equ $ + 5
.lc004 equ $ + 4
.lc003 equ $ + 3
.lc002 equ $ + 2
.music_end equ $ + 1
.lc001 equ $ + 1
.lc000
	db #01,#00,#00,#00,#00,#0f
;
.play_music
;
	push af
	push bc
	push de
	push hl
	call lc04d
	call lc0c0
	ld a,(lc001)
	or a
	jr nz,lc025
	ld hl,lc632
	ld a,(hl)
	inc h
	or (hl)
	inc h
	or (hl)
	jr z,lc048
	ld a,#01
	ld (lc11f),a
.lc025
	ld hl,lc11f
	dec (hl)
	ld h,#c6
	call lc0fd
	inc h
	call lc0fd
	inc h
	call lc0fd
	call lc2ab
	call lc214
	ld hl,lc11f
	ld a,(hl)
	or a
	jr nz,lc045
.lc044 equ $ + 1
	ld (hl),#01
.lc045
	call lc2bb
.lc048
	pop hl
	pop de
	pop bc
	pop af
	ret
.lc04d
	ld a,(lc001)
	or a
	jr nz,lc059
	ld a,(lc000)
;
.init_music
;
	ld (lc05a),a
.lc05a equ $ + 1
.lc059
	ld a,#00
	or a
	ret z
	push af
	call lc302
	pop af
	cp #02
	ret nc
	ld (lc001),a
	dec a
	add a
	add a
	add a
	add #31
	ld e,a
	adc #c9
	sub e
	ld d,a
	ld a,(de)
	inc de
	ld (lc044),a
	ld h,#c6
	call lc091
	call lc091
	call lc091
	xor a
	ld (lc003),a
	inc a
	ld (lc11f),a
	ld a,#10
	ld (lc005),a
	ret
.lc091
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
.lc0c0
	ld a,(lc002)
	or a
	ret z
	cp #01
	ret nc
	ld c,a
	ld hl,lc632
	ld a,(hl)
	or a
	jr z,lc0d9
	inc h
	ld a,(hl)
	or a
	jr z,lc0d9
	inc h
	ld a,(hl)
	or a
	ret nz
.lc0d9
	inc (hl)
	ld (lc002),a
	ld l,#04
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld a,c
	add a
	add #e7
	ld c,a
	adc #cd
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
	jp lc140
.lc0fd
	ld l,#32
	ld a,(hl)
	or a
	ret z
	ld l,#04
	bit 7,(hl)
	jr z,lc119
.lc109 equ $ + 1
	ld a,#00
	dec a
	ld (lc109),a
	jr nz,lc119
	ld l,#20
	ld a,(lc693)
	or (hl)
	ld (lc693),a
.lc119
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
.lc11f equ $ + 1
	ld a,#01
	or a
	jr nz,lc12e
	ld l,#05
	dec (hl)
	jr z,lc140
	call lc69b
	call lc914
.lc12e
	call lc86e
	call lc83a
	call lc833
	call lc22b
	call lc6a6
	jp lc7e2
.lc140
	ld a,(de)
	inc de
	or a
	jp m,lc184
.lc146
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call lc6c1
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
	call lc33d
	ld l,#0e
	call lc174
	inc l
.lc174
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
.lc184
	cp #e0
	jr nc,lc1ac
	cp #d0
	jr nc,lc1bc
	cp #c0
	jr nc,lc1b4
	cp #b0
	jr nc,lc1e3
	ld c,h
	add a
	add #33
	ld l,a
	adc #c7
	sub l
	ld h,a
	ld a,c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	ld (lc1a7),bc
.lc1a7 equ $ + 1
	call #0000
	jp lc140
.lc1ac
	sub #df
	ld l,#0d
	ld (hl),a
	jp lc140
.lc1b4
	sub #c0
	ld l,#14
	ld (hl),a
	jp lc140
.lc1bc
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
	jp lc140
.lc1e3
	sub #b0
	add a
	add #3c
	ld c,a
	adc #c4
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
	jp lc140
.lc1ff
	pop af
	call lc692
	ld a,(lc693)
	or c
	ld (lc693),a
	ld l,#32
	ld (hl),#00
	ret
.lc20f
	ld l,#04
	res 0,(hl)
	ret
.lc214
	ld hl,lc228
	dec (hl)
	ret p
	xor a
	ld (hl),a
	inc hl
	cp (hl)
	ret z
	dec (hl)
	inc hl
	ld a,(lc331)
	add (hl)
	ld (lc331),a
	ret
.lc228
	nop
.lc229
	nop
.lc22a
	nop
.lc22c equ $ + 1
.lc22b
	ld a,#55
	rrca
	ld (lc22c),a
	ret c
	dec de
	ld a,(de)
	inc de
	cp #8e
	jr z,lc243
	ld l,#0d
	ld a,(hl)
	ld l,#2a
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.lc243
	ld l,#04
	bit 3,(hl)
	ret z
	ld l,#30
	ld a,(hl)
	or a
	jr z,lc259
	dec l
	dec (hl)
	jr nz,lc259
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#2b
	inc (hl)
.lc259
	ld l,#04
	bit 6,(hl)
	jr z,lc279
	ld l,#2d
	dec (hl)
	jr nz,lc26d
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.lc26d
	ld l,#2b
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.lc279
	ld l,#2d
	dec (hl)
	jr nz,lc287
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.lc287
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
.lc295
	ld l,#04
	res 5,(hl)
	ret
.lc29a
	ld a,#35
	ld (lc003),a
	ld (lc004),a
	ret
.lc2a3
	ld a,(de)
	ld l,#31
	ld (hl),a
	inc de
	ret
.lc2a9
	inc (hl)
	ret
.lc2ab
	ld hl,lc003
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
	jr lc302
.lc2bb
	call lc323
	ld h,#c6
	call lc2c9
	inc h
	call lc2c9
	ld h,#c8
.lc2c9
	ld l,#06
	call lc2e5
	call lc2e5
	ld a,(lc005)
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
	ld h,#c5
	ld a,b
	ld c,(hl)
	pop hl
	jr lc2e9
.lc2e5
	ld a,(hl)
	inc l
	ld c,(hl)
	inc l
.lc2e9
	ld b,d
	out (c),a
.lc2ed equ $ + 1
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
.lc301
	pop af
.lc302
	xor a
	ld (lc001),a
	ld (lc05a),a
	ld (lc000),a
	ld (lc632),a
	ld (lc732),a
	ld (lc832),a
	ld (lc631),a
	ld (lc731),a
	ld (lc831),a
	ld a,#3f
	ld (lc693),a
.lc323
	ld de,#f4f6
	ld b,e
	in a,(c)
	or #c0
	ld (lc2ed),a
	ld a,#06
.lc331 equ $ + 1
	ld c,#01
	call lc2e9
	ld a,(lc693)
	ld c,a
	ld a,#07
	jr lc2e9
.lc33d
	ld l,#04
	bit 7,(hl)
	ret z
.lc343 equ $ + 1
	ld a,#00
	ld (lc331),a
	xor a
	ld (lc228),a
	ld (lc229),a
	ld (lc22a),a
	ld a,#01
	ld (lc109),a
	ld l,#20
	ld a,(hl)
	cpl
	ld c,a
	ld a,(lc693)
	and c
	ld (lc693),a
	ret
.lc363
	ld l,#15
	ld (hl),#01
	ret
.lc368
	ld l,#15
	ld (hl),#ff
	ret
.lc36d
	ld l,#04
	set 7,(hl)
	ret
.lc372
	ld a,(de)
	inc de
	ld (lc343),a
	ret
.lc378
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
.lc38f
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
	dw #0030,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw lc450,lc45f,lc461,lc463
	dw lc465,lc467,lc46b,lc46f
	dw lc473,lc478
.lc450
	db #00,#01,#02,#83,#80,#00,#0c,#01
	db #0d,#02,#0e,#01,#0d,#00,#8c
.lc45f
	db #00,#83
.lc461
	db #00,#84
.lc463
	db #00,#85
.lc465
	db #00,#86
.lc467
	db #0c,#10,#00,#84
.lc46b
	db #0c,#0f,#00,#83
.lc46f
	db #0c,#11,#00,#85
.lc473
	db #00,#00,#00,#00,#8c
.lc478
	db #18,#0c,#80,#53,#4f,#55,#4e,#44
	db #20,#49,#4d,#41,#47,#45,#53,#20
	db #28,#43,#29,#20,#31,#39,#39,#30
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#08,#0f,#00,#04,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.lc631
	db #00
.lc632
	db #00
.lc633
	call lc692
	ld l,#1f
.lc638
	ld a,(hl)
.lc639
	cpl
	and c
	ld (lc693),a
	ld l,#04
	res 4,(hl)
	res 0,(hl)
	ret
.lc645
	call lc65c
	call lc692
	ld l,#20
	jr lc638
.lc64f
	call lc65c
.lc652
	call lc692
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	jr lc639
.lc65c
	ld a,(de)
	inc de
	ld (lc331),a
	ld a,(de)
	inc de
	ld (lc22a),a
	ld a,(de)
	inc de
	ld (lc228),a
	ld a,(de)
	inc de
	ld (lc229),a
	ret
.lc671
	call lc692
	ld l,#20
	ld a,(hl)
	cpl
	and c
	ld (lc693),a
	ld l,#04
	set 4,(hl)
	ret
.lc681
	ld l,#0b
	ld (hl),#00
.lc685
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
.lc693 equ $ + 1
.lc692
	ld a,#3f
	ld l,#1f
	or (hl)
	inc l
	or (hl)
	ld c,a
	ret
.lc69b
	ld l,#15
	ld a,(hl)
	or a
	ret z
	ld l,#0c
	add (hl)
	ld (hl),a
	jr lc6c1
.lc6a6
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
	jr nc,lc6b6
	inc b
.lc6b6
	inc (hl)
	ld a,(bc)
	or a
	jp p,lc6be
	ld (hl),#00
.lc6be
	ld l,#0c
	add (hl)
.lc6c1
	ld l,#31
	add (hl)
	add a
	add #94
	ld c,a
	adc #c3
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
	jr z,lc6f5
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
.lc6f5
	ld l,#04
	bit 5,(hl)
	ret z
	res 1,(hl)
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#02,#00,#03,#00,#09,#0f,#00
	db #04,#00,#00,#00,#00,#00,#00,#0f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02,#10,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.lc731
	db #00
.lc732
	db #00
	dw lc7bc,lc363,lc368,lc786
	dw lc20f,lc7a5,lc378,lc38f
	dw lc76b,lc7f5,lc633,lc645
	dw lc64f,lc671,lc685,lc681
	dw lc2a3,lc301,lc8c1,lc8ef
	dw lc7b4,lc1ff,lc295,lc29a
	dw lc36d,lc7fa,lc79f,lc372
.lc76b
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
.lc786
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
.lc79f
	ld l,#04
	set 5,(hl)
	jr lc7a9
.lc7a5
	ld l,#04
	set 1,(hl)
.lc7a9
	ex de,hl
	ld e,#24
	ldi
	ldi
	ldi
	ex de,hl
	ret
.lc7b4
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
.lc7bc
	ld a,(lc000)
	ld (lc05a),a
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
	jr z,lc7d9
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.lc7d9
	ld d,b
	ld e,c
	pop bc
	ld a,(lcde8)
	jp lc184
.lc7e2
	ld l,#04
	bit 4,(hl)
	ret z
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	ld c,a
	ld a,(lc693)
	xor c
	ld (lc693),a
	ret
.lc7f5
	ld l,#04
	res 3,(hl)
	ret
.lc7fa
	ld l,#04
	res 7,(hl)
	ret
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #00,#05,#00,#0a,#0f,#00,#04,#00
	db #00,#00,#00,#00,#00,#0f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#20,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc832 equ $ + 3
.lc831 equ $ + 2
	db #00,#00,#00,#00
.lc833
	ld l,#04
	bit 2,(hl)
	jr nz,lc83f
	ret
.lc83a
	ld l,#04
	bit 1,(hl)
	ret z
.lc83f
	ld l,#26
	dec (hl)
	jp m,lc2a9
	ld l,#25
	bit 7,(hl)
	jr nz,lc85a
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
.lc85a
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
.lc86e
	ld l,#0f
	ld a,(hl)
	or a
	jr z,lc889
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
.lc889
	ld l,#12
	ld a,(hl)
	or a
	jr z,lc8a7
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
	jr nc,lc8a3
	xor a
.lc8a3
	ld l,#0b
	ld (hl),a
	ret
.lc8a7
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
	jr nc,lc8bd
	xor a
.lc8bd
	ld l,#0b
	ld (hl),a
	ret
.lc8c1
	pop af
	call lc652
	ld a,#1f
	ld (lc331),a
	xor a
	ld (lc228),a
	ld a,#e1
	ld (lc22a),a
	ld a,#03
	ld (lc229),a
	ld l,#21
	ld (hl),#50
	inc l
	ld (hl),#c4
	ld l,#04
	set 0,(hl)
	set 1,(hl)
	res 7,(hl)
	ld a,#1a
	ld l,#31
	sub (hl)
	jp lc146
.lc8ef
	pop af
	call lc633
	ld l,#24
	ld (hl),#70
	inc l
	ld (hl),#00
	inc l
	ld (hl),#0c
	ld l,#04
	set 1,(hl)
	ld l,#21
	ld (hl),#50
	inc l
	ld (hl),#c4
	ld l,#04
	set 0,(hl)
	ld a,#09
	ld l,#31
	sub (hl)
	jp lc146
.lc914
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
	db #03
	dw lc938,lc97e,lc9bc
.lc93e equ $ + 6
.lc938
	dw lcaab,lcabe,lcad8,lc9fa
	dw lc9fa,lcba8,lca62,lca62
	dw lca62,lca62,lcafb,lcb28
	dw lcafb,lcb28,lcb5c,lcb5c
	dw lcb5c,lca62,lca62,lca62
	dw lca62,lca3e,lca3e,lca62
	dw lca62,lcb6a,lcb6a,lc9fa
	dw lc9fa,lc9fa,lc9fa,lca3e
	dw lca3e,#0000
.lc982 equ $ + 6
.lc97e equ $ + 2
	dw lc93e,lcde4,lcc5d,lcbc5
	dw lccd8,lcc1e,lcc1e,lcc1e
	dw lcc1e,lcc39,lcc39,lcc39
	dw lcc39,lcc72,lcc72,lcc93
	dw lcc1e,lcc1e,lcc1e,lcc1e
	dw lcbfb,lcbfb,lcc1e,lcc1e
	dw lccb9,lccb9,lcbc5,lcbc5
	dw lcbfb,lcbfb,#0000,lc982
.lc9c2 equ $ + 6
.lc9bc
	dw lcd40,lcd40,lcd5d,lccfa
	dw lcdc7,lcd2a,lcd2a,lcd2a
	dw lcd2a,lcd6d,lcd6d,lcd6d
	dw lcd6d,lcd7b,lcd8b,lcd2a
	dw lcd2a,lcd2a,lcd2a,lcd0a
	dw lcd0a,lcd2a,lcd2a,lcda5
	dw lcda5,lccfa,lccfa,lcd0a
.lc9fa equ $ + 6
	dw lcd0a,#0000,lc9c2,#00da
	db #25,#11,#8b,#00,#00,#00,#00,#e1
	db #5f,#5b,#e0,#5d,#8f,#5f,#8e,#de
	db #00,#1f,#12,#e3,#5d,#da,#00,#25
	db #11,#e1,#59,#56,#5f,#5f,#ce,#5f
	db #cb,#5f,#5f,#5f,#ce,#5f,#ca,#5f
	db #5f,#54,#59,#51,#de,#00,#1f,#12
	db #e3,#5d,#da,#00,#25,#11,#e1,#5f
	db #48,#5f,#5f,#59,#56,#5f,#54,#5d
.lca3e equ $ + 2
	db #56,#80,#de,#00,#1f,#12,#e3,#8f
	db #e1,#8f,#8f,#92,#8f,#92,#8f,#ca
	db #92,#8f,#c6,#92,#e9,#8f,#ce,#e3
	db #8f,#e1,#8f,#8f,#e3,#92,#8f,#8f
.lca62 equ $ + 6
	db #8f,#92,#e1,#8f,#92,#80,#de,#00
	db #35,#11,#8a,#e3,#93,#8f,#de,#00
	db #1f,#12,#92,#de,#00,#35,#11,#8a
	db #e1,#93,#de,#00,#1f,#12,#92,#8f
	db #92,#de,#00,#35,#11,#8a,#8f,#93
	db #de,#00,#1f,#12,#e3,#92,#de,#00
	db #35,#11,#8f,#8a,#93,#93,#de,#00
	db #1f,#12,#92,#e1,#8f,#92,#8f,#92
	db #8f,#de,#00,#35,#11,#8a,#93,#de
.lcaab equ $ + 7
	db #00,#1f,#12,#e3,#92,#8f,#80,#d6
	db #18,#12,#65,#8a,#83,#01,#11,#88
	db #10,#02,#02,#00,#ff,#19,#8e,#8e
.lcabe equ $ + 2
	db #8e,#80,#de,#00,#1f,#13,#8a,#90
	db #fd,#e3,#1c,#eb,#1c,#e3,#1c,#eb
	db #1c,#e3,#1c,#eb,#1c,#e3,#1c,#eb
.lcad8 equ $ + 4
	db #1c,#90,#00,#80,#90,#fd,#e3,#1c
	db #eb,#1c,#e3,#1c,#eb,#1c,#90,#00
	db #de,#00,#1f,#12,#e0,#92,#92,#e1
	db #92,#e7,#92,#e3,#92,#e0,#92,#e2
.lcafb equ $ + 7
	db #92,#e7,#92,#e1,#92,#92,#80,#d8
	db #14,#12,#25,#8a,#90,#0c,#e7,#0d
	db #e3,#1b,#e5,#1c,#0d,#da,#12,#00
	db #11,#8a,#88,#00,#01,#02,#00,#90
	db #0c,#e7,#81,#23,#e3,#2c,#25,#28
	db #e1,#2a,#2b,#2a,#28,#2a,#28,#e7
.lcb28 equ $ + 4
	db #25,#90,#00,#80,#d8,#14,#12,#25
	db #8a,#90,#00,#88,#08,#02,#02,#00
	db #e7,#19,#e3,#27,#e5,#1c,#19,#da
	db #12,#00,#11,#8a,#88,#00,#02,#02
	db #00,#90,#0c,#e7,#82,#23,#e3,#17
	db #19,#1c,#e1,#19,#1f,#1e,#1c,#1e
	db #1c,#20,#1e,#e3,#1c,#90,#00,#80
.lcb5c
	db #da,#14,#12,#25,#8a,#88,#10,#02
.lcb6a equ $ + 6
	db #02,#00,#ff,#19,#8e,#80,#de,#00
	db #35,#11,#8a,#e3,#93,#8f,#de,#00
	db #1f,#12,#92,#8f,#8f,#de,#00,#35
	db #11,#8a,#e1,#93,#93,#de,#00,#1f
	db #12,#e3,#92,#8f,#de,#00,#35,#11
	db #8a,#93,#8f,#de,#00,#1f,#12,#92
	db #de,#00,#35,#11,#8a,#93,#e3,#93
	db #de,#00,#1f,#12,#92,#92,#e1,#92
.lcba8 equ $ + 4
	db #e0,#92,#92,#80,#d8,#16,#12,#25
	db #8a,#83,#01,#11,#88,#10,#02,#02
	db #00,#90,#f4,#ff,#19,#8e,#8e,#8e
	db #8e,#8e,#8e,#8e,#8e,#8e,#90,#00
.lcbc5 equ $ + 1
	db #80,#de,#00,#1f,#13,#8a,#90,#f1
	db #e5,#1c,#e1,#28,#e7,#1c,#eb,#1c
	db #e1,#27,#28,#e7,#1c,#1c,#e5,#1c
	db #e1,#2e,#2d,#2b,#26,#27,#e5,#1c
	db #e1,#28,#e7,#1c,#eb,#1c,#e1,#27
	db #28,#e7,#1c,#1c,#e5,#1c,#e1,#2e
.lcbfb equ $ + 7
	db #2d,#2b,#26,#27,#90,#00,#80,#de
	db #00,#1f,#13,#8a,#90,#f1,#e3,#21
	db #21,#2d,#e1,#21,#f1,#21,#e1,#2e
	db #2d,#2b,#2d,#2b,#28,#2b,#2a,#28
	db #26,#28,#26,#e0,#23,#e2,#22,#e3
.lcc1e equ $ + 2
	db #21,#80,#de,#00,#1f,#13,#8a,#90
	db #f1,#e3,#1c,#28,#1f,#f7,#21,#e3
	db #1f,#21,#e1,#1f,#21,#e3,#22,#21
.lcc39 equ $ + 5
	db #1f,#1b,#90,#00,#80,#90,#f1,#e3
	db #1c,#28,#e1,#92,#8a,#1f,#21,#92
	db #8f,#92,#e3,#8f,#92,#8f,#8f,#8a
	db #1f,#e1,#92,#8a,#21,#1f,#92,#8a
	db #22,#92,#8a,#e3,#21,#92,#8a,#1b
.lcc5d equ $ + 1
	db #80,#d6,#18,#12,#65,#8a,#83,#01
	db #11,#88,#10,#01,#02,#00,#ff,#20
.lcc72 equ $ + 6
	db #8e,#8e,#8e,#8e,#8e,#80,#de,#00
	db #1f,#12,#8a,#90,#e5,#e7,#28,#e3
	db #92,#8a,#28,#ef,#28,#e7,#28,#e3
	db #92,#8a,#e1,#1c,#28,#e7,#26,#e1
.lcc93 equ $ + 7
	db #23,#26,#23,#26,#90,#00,#80,#90
	db #e5,#e7,#28,#e3,#92,#8a,#28,#e7
	db #28,#90,#00,#da,#14,#1f,#14,#28
	db #90,#e5,#de,#00,#1f,#12,#eb,#28
	db #e1,#1c,#28,#e7,#26,#e1,#23,#26
.lccb9 equ $ + 5
	db #23,#26,#90,#00,#80,#de,#00,#1f
	db #12,#8a,#90,#f1,#e7,#1c,#1e,#e3
	db #26,#25,#e7,#23,#21,#e1,#2d,#2b
	db #e3,#2d,#1f,#e1,#2b,#2a,#e3,#2b
.lccd8 equ $ + 4
	db #21,#90,#00,#80,#da,#14,#12,#25
	db #8a,#88,#10,#02,#02,#00,#90,#f4
	db #ff,#8f,#25,#8e,#8e,#fb,#25,#e3
	db #27,#ff,#28,#8e,#29,#fb,#29,#e3
.lccfa equ $ + 6
	db #2b,#ff,#2c,#90,#00,#80,#d6,#16
	db #12,#45,#8a,#88,#10,#01,#02,#00
.lcd0a equ $ + 6
	db #ff,#19,#8e,#8e,#8e,#80,#de,#00
	db #35,#11,#8a,#e1,#93,#e3,#93,#e1
	db #93,#e3,#93,#e1,#93,#e3,#93,#e1
	db #93,#e3,#93,#e1,#93,#e3,#93,#e1
.lcd2a equ $ + 6
	db #93,#fd,#93,#e1,#93,#80,#d9,#14
	db #12,#23,#8a,#88,#08,#02,#02,#00
	db #e7,#19,#e3,#1b,#f3,#1c,#e7,#1f
.lcd40 equ $ + 4
	db #1e,#1c,#17,#80,#de,#00,#1f,#13
	db #8a,#83,#01,#11,#90,#fd,#e3,#10
	db #eb,#10,#e3,#10,#eb,#10,#e3,#10
	db #eb,#10,#e3,#10,#eb,#10,#90,#00
.lcd5d equ $ + 1
	db #80,#d6,#18,#12,#65,#8a,#88,#10
	db #01,#02,#00,#ff,#25,#8e,#8e,#8e
.lcd6d equ $ + 1
	db #80,#d9,#14,#12,#23,#8a,#88,#08
.lcd7b equ $ + 7
	db #02,#02,#00,#ff,#25,#8e,#80,#da
	db #12,#00,#11,#8a,#88,#00,#01,#02
.lcd8b equ $ + 7
	db #00,#ff,#28,#8e,#8e,#8e,#80,#f7
	db #c9,#34,#da,#14,#1f,#14,#e7,#25
	db #de,#00,#1f,#12,#e3,#8f,#92,#92
	db #8f,#8f,#92,#e1,#92,#92,#92,#92
.lcda5 equ $ + 1
	db #80,#da,#12,#00,#11,#8a,#88,#00
	db #01,#02,#00,#90,#0c,#e7,#19,#e1
	db #20,#1f,#f3,#20,#e1,#1f,#1e,#eb
	db #1f,#e1,#1c,#1b,#e7,#1c,#e3,#1b
.lcdc7 equ $ + 3
	db #90,#00,#80,#d8,#16,#12,#25,#8a
	db #88,#10,#01,#02,#00,#90,#f4,#ff
	db #8f,#8f,#31,#8e,#8e,#8e,#8e,#8e
	db #8e,#8e,#90,#00,#80,#ff,#8f,#8f
.lcde8 equ $ + 4
.lcde4
	db #ff,#8f,#8f,#80,#94,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#1a,#00
	db #00
;
; #c47b
; db "SOUND IMAGES (C) 1990"
;
.music_info
	db "Robozone (1991)(Image Works)(Tiny Williams)",0
	db "SOUND IMAGES (C) 1990",0

	read "music_end.asm"
