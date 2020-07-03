; Music of Saint Dragon (1990)(Storm Software)(Tiny Williams)()
; Ripped by Megachur the 22/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SAINTDRA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0040
first_theme				equ 1
last_theme				equ 1

	read "music_header.asm"

.l0045 equ $ + 5
.l0044 equ $ + 4
.l0043 equ $ + 3
.l0042 equ $ + 2
.l0041 equ $ + 1
.l0040
	db #01,#01,#00,#00,#00,#10
;
.play_music
;
	push af
	push bc
	push de
	push hl
.l004b equ $ + 1
	ld a,#00
	inc a
	and #07
	ld (l004b),a
	jr z,l0083
	call l0097
	call l010a
	ld a,(l0041)
	or a
	jr nz,l006f
	ld hl,l0632
	ld a,(hl)
	inc h
	or (hl)
	inc h
	or (hl)
	jr z,l0092
	ld a,#01
	ld (l0169),a
.l006f
	ld hl,l0169
	dec (hl)
	ld h,#06
	call l0147
	inc h
	call l0147
	inc h
	call l0147
	call l02ee
.l0083
	call l025e
	ld hl,l0169
	ld a,(hl)
	or a
	jr nz,l008f
.l008e equ $ + 1
	ld (hl),#01
.l008f
	call l02fe
.l0092
	pop hl
	pop de
	pop bc
	pop af
	ret
.l0097
	ld a,(l0041)
	or a
	jr nz,l00a3
	ld a,(l0040)
;
.init_music
;
	ld (l00a4),a
.l00a4 equ $ + 1
.l00a3
	ld a,#00
	or a
	ret z
	push af
	call l0345
	pop af
	cp #02
	ret nc
	ld (l0041),a
	dec a
	add a
	add a
	add a
	add #31
	ld e,a
	adc #09
	sub e
	ld d,a
	ld a,(de)
	inc de
	ld (l008e),a
	ld h,#06
	call l00db
	call l00db
	call l00db
	xor a
	ld (l0043),a
	inc a
	ld (l0169),a
	ld a,#10
	ld (l0045),a
	ret
.l00db
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
.l010a
	ld a,(l0042)
	or a
	ret z
	cp #01
	ret nc
	ld c,a
	ld hl,l0632
	ld a,(hl)
	or a
	jr z,l0123
	inc h
	ld a,(hl)
	or a
	jr z,l0123
	inc h
	ld a,(hl)
	or a
	ret nz
.l0123
	inc (hl)
	ld (l0042),a
	ld l,#04
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld a,c
	add a
	add #73
	ld c,a
	adc #0e
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
	jp l018a
.l0147
	ld l,#32
	ld a,(hl)
	or a
	ret z
	ld l,#04
	bit 7,(hl)
	jr z,l0163
.l0153 equ $ + 1
	ld a,#00
	dec a
	ld (l0153),a
	jr nz,l0163
	ld l,#20
	ld a,(l0693)
	or (hl)
	ld (l0693),a
.l0163
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
.l0169 equ $ + 1
	ld a,#01
	or a
	jr nz,l0178
	ld l,#05
	dec (hl)
	jr z,l018a
	call l069b
	call l0914
.l0178
	call l086e
	call l083a
	call l0833
	call l0275
	call l06a6
	jp l07e2
.l018a
	ld a,(de)
	inc de
	or a
	jp m,l01ce
.l0190
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call l06c1
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
	call l0380
	ld l,#0e
	call l01be
	inc l
.l01be
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
.l01ce
	cp #e0
	jr nc,l01f6
	cp #d0
	jr nc,l0206
	cp #c0
	jr nc,l01fe
	cp #b0
	jr nc,l022d
	ld c,h
	add a
	add #33
	ld l,a
	adc #07
	sub l
	ld h,a
	ld a,c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	ld (l01f1),bc
.l01f1 equ $ + 1
	call #0000
	jp l018a
.l01f6
	sub #df
	ld l,#0d
	ld (hl),a
	jp l018a
.l01fe
	sub #c0
	ld l,#14
	ld (hl),a
	jp l018a
.l0206
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
	jp l018a
.l022d
	sub #b0
	add a
	add #7f
	ld c,a
	adc #04
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
	jp l018a
.l0249
	pop af
	call l0692
	ld a,(l0693)
	or c
	ld (l0693),a
	ld l,#32
	ld (hl),#00
	ret
.l0259
	ld l,#04
	res 0,(hl)
	ret
.l025e
	ld hl,l0272
	dec (hl)
	ret p
	xor a
	ld (hl),a
	inc hl
	cp (hl)
	ret z
	dec (hl)
	inc hl
	ld a,(l0374)
	add (hl)
	ld (l0374),a
	ret
.l0272
	nop
.l0273
	nop
.l0274
	nop
.l0275
	dec de
	ld a,(de)
	inc de
	cp #8e
	jr z,l0286
	ld l,#0d
	ld a,(hl)
	ld l,#2a
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.l0286
	ld l,#04
	bit 3,(hl)
	ret z
	ld l,#30
	ld a,(hl)
	or a
	jr z,l029c
	dec l
	dec (hl)
	jr nz,l029c
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#2b
	inc (hl)
.l029c
	ld l,#04
	bit 6,(hl)
	jr z,l02bc
	ld l,#2d
	dec (hl)
	jr nz,l02b0
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.l02b0
	ld l,#2b
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.l02bc
	ld l,#2d
	dec (hl)
	jr nz,l02ca
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.l02ca
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
.l02d8
	ld l,#04
	res 5,(hl)
	ret
.l02dd
	ld a,#35
	ld (l0043),a
	ld (l0044),a
	ret
.l02e6
	ld a,(de)
	ld l,#31
	ld (hl),a
	inc de
	ret
.l02ec
	inc (hl)
	ret
.l02ee
	ld hl,l0043
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
	jr l0345
.l02fe
	call l0366
	ld h,#06
	call l030c
	inc h
	call l030c
	ld h,#08
.l030c
	ld l,#06
	call l0328
	call l0328
	ld a,(l0045)
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
	ld h,#05
	ld a,b
	ld c,(hl)
	pop hl
	jr l032c
.l0328
	ld a,(hl)
	inc l
	ld c,(hl)
	inc l
.l032c
	ld b,d
	out (c),a
.l0330 equ $ + 1
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
.l0344
	pop af
.l0345
	xor a
	ld (l0041),a
	ld (l00a4),a
	ld (l0040),a
	ld (l0632),a
	ld (l0732),a
	ld (l0832),a
	ld (l0631),a
	ld (l0731),a
	ld (l0831),a
	ld a,#3f
	ld (l0693),a
.l0366
	ld de,#f4f6
	ld b,e
	in a,(c)
	or #c0
	ld (l0330),a
	ld a,#06
.l0374 equ $ + 1
	ld c,#01
	call l032c
	ld a,(l0693)
	ld c,a
	ld a,#07
	jr l032c
.l0380
	ld l,#04
	bit 7,(hl)
	ret z
.l0386 equ $ + 1
	ld a,#00
	ld (l0374),a
	xor a
	ld (l0272),a
	ld (l0273),a
	ld (l0274),a
	ld a,#02
	ld (l0153),a
	ld l,#20
	ld a,(hl)
	cpl
	ld c,a
	ld a,(l0693)
	and c
	ld (l0693),a
	ret
.l03a6
	ld l,#15
	ld (hl),#01
	ret
.l03ab
	ld l,#15
	ld (hl),#ff
	ret
.l03b0
	ld l,#04
	set 7,(hl)
	ret
.l03b5
	ld a,(de)
	inc de
	ld (l0386),a
	ret
.l03bb
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
.l03d2
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
	dw l0491,l049b,l04a0,l04a4
	dw l04a8,l04ac,l04b0,l04b6
	dw l04bc
.l0491
	db #00,#0c,#01,#0d,#02,#0e,#01,#0d
.l04a0 equ $ + 7
.l049b equ $ + 2
	db #00,#8c,#0c,#00,#00,#00,#80,#00
.l04a8 equ $ + 7
.l04a4 equ $ + 3
	db #00,#05,#85,#00,#00,#02,#82,#00
.l04b0 equ $ + 7
.l04ac equ $ + 3
	db #00,#04,#84,#00,#00,#03,#83,#00
.l04b6 equ $ + 5
	db #00,#04,#04,#07,#87,#00,#00,#03
	db #03,#07,#87
.l04bc
	db #79,#6e,#69,#54,#20,#39,#38,#39
	db #31,#20,#28,#63,#29
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#02,#03,#04,#05,#06,#07,#08
	db #09,#0a,#0b,#0c,#0d,#0e,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
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
.l0632 equ $ + 2
.l0631 equ $ + 1
	db #00,#00,#00
.l0633
	call l0692
	ld l,#1f
.l0638
	ld a,(hl)
.l0639
	cpl
	and c
	ld (l0693),a
	ld l,#04
	res 4,(hl)
	res 0,(hl)
	ret
.l0645
	call l065c
	call l0692
	ld l,#20
	jr l0638
.l064f
	call l065c
.l0652
	call l0692
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	jr l0639
.l065c
	ld a,(de)
	inc de
	ld (l0374),a
	ld a,(de)
	inc de
	ld (l0274),a
	ld a,(de)
	inc de
	ld (l0272),a
	ld a,(de)
	inc de
	ld (l0273),a
	ret
.l0671
	call l0692
	ld l,#20
	ld a,(hl)
	cpl
	and c
	ld (l0693),a
	ld l,#04
	set 4,(hl)
	ret
.l0681
	ld l,#0b
	ld (hl),#00
.l0685
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
.l0693 equ $ + 1
.l0692
	ld a,#3f
	ld l,#1f
	or (hl)
	inc l
	or (hl)
	ld c,a
	ret
.l069b
	ld l,#15
	ld a,(hl)
	or a
	ret z
	ld l,#0c
	add (hl)
	ld (hl),a
	jr l06c1
.l06a6
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
	jr nc,l06b6
	inc b
.l06b6
	inc (hl)
	ld a,(bc)
	or a
	jp p,l06be
	ld (hl),#00
.l06be
	ld l,#0c
	add (hl)
.l06c1
	ld l,#31
	add (hl)
	add a
	add #d7
	ld c,a
	adc #03
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
	jr z,l06f5
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
.l06f5
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
.l0732 equ $ + 5
.l0731 equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw l07bc,l03a6,l03ab,l0786
	dw l0259,l07a5,l03bb,l03d2
	dw l076b,l07f5,l0633,l0645
	dw l064f,l0671,l0685,l0681
	dw l02e6,l0344,l08c1,l08ef
	dw l07b4,l0249,l02d8,l02dd
	dw l03b0,l07fa,l079f,l03b5
.l076b
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
.l0786
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
.l079f
	ld l,#04
	set 5,(hl)
	jr l07a9
.l07a5
	ld l,#04
	set 1,(hl)
.l07a9
	ex de,hl
	ld e,#24
	ldi
	ldi
	ldi
	ex de,hl
	ret
.l07b4
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
.l07bc
	ld a,(l0040)
	ld (l00a4),a
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
	jr z,l07d9
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l07d9
	ld d,b
	ld e,c
	pop bc
	ld a,(l0e6a)
	jp l01ce
.l07e2
	ld l,#04
	bit 4,(hl)
	ret z
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	ld c,a
	ld a,(l0693)
	xor c
	ld (l0693),a
	ret
.l07f5
	ld l,#04
	res 3,(hl)
	ret
.l07fa
	ld l,#04
	res 7,(hl)
	ret
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #00,#05,#00,#0a,#0f,#00,#04,#00
	db #00,#00,#00,#00,#00,#0f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#20,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0832 equ $ + 3
.l0831 equ $ + 2
	db #00,#00,#00,#00
.l0833
	ld l,#04
	bit 2,(hl)
	jr nz,l083f
	ret
.l083a
	ld l,#04
	bit 1,(hl)
	ret z
.l083f
	ld l,#26
	dec (hl)
	jp m,l02ec
	ld l,#25
	bit 7,(hl)
	jr nz,l085a
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
.l085a
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
.l086e
	ld l,#0f
	ld a,(hl)
	or a
	jr z,l0889
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
.l0889
	ld l,#12
	ld a,(hl)
	or a
	jr z,l08a7
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
	jr nc,l08a3
	xor a
.l08a3
	ld l,#0b
	ld (hl),a
	ret
.l08a7
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
	jr nc,l08bd
	xor a
.l08bd
	ld l,#0b
	ld (hl),a
	ret
.l08c1
	pop af
	call l0652
	ld a,#1f
	ld (l0374),a
	xor a
	ld (l0272),a
	ld a,#e1
	ld (l0274),a
	ld a,#04
	ld (l0273),a
	ld l,#21
	ld (hl),#91
	inc l
	ld (hl),#04
	ld l,#04
	set 0,(hl)
	set 1,(hl)
	res 7,(hl)
	ld a,#18
	ld l,#31
	sub (hl)
	jp l0190
.l08ef
	pop af
	call l0633
	ld l,#24
	ld (hl),#70
	inc l
	ld (hl),#00
	inc l
	ld (hl),#0c
	ld l,#04
	set 1,(hl)
	ld l,#21
	ld (hl),#91
	inc l
	ld (hl),#04
	ld l,#04
	set 0,(hl)
	ld a,#09
	ld l,#31
	sub (hl)
	jp l0190
.l0914
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
	db #02
	dw l0940,l0952,l0966
	db #02
	db #02
	dw l094a,l095c,l0974
.l0940
	dw l097c,l0a07,l0a51,l0a07
.l094a equ $ + 2
	dw l0a51,l0aa5,l0afb,#0000
.l0952 equ $ + 2
	dw l0940,l0bbc,l0be2,l0c34
.l095c equ $ + 4
	dw l0be2,l0c34,l0c74,l0d11
.l0966 equ $ + 6
	dw l0d11,#0000,l0952,l0d4c
	dw l0d72,l0da4,l0dd5,l0d72
.l0974 equ $ + 4
	dw l0da4,l0dd5,l0e18,l0e45
	dw #0000,l0966
.l097c
	db #dd,#12,#1f,#13,#8a,#83,#01,#11
	db #9b,#05,#e3,#98,#0c,#0c,#99,#0c
	db #98,#0c,#99,#0c,#98,#0c,#0c,#0c
	db #0c,#0c,#99,#0c,#98,#0c,#99,#0c
	db #98,#0c,#0c,#0c,#0b,#0b,#99,#0b
	db #98,#0b,#99,#0b,#98,#0b,#0b,#0b
	db #0b,#0b,#99,#0b,#98,#0b,#99,#0b
	db #98,#0b,#0b,#0b,#0c,#0c,#99,#0c
	db #98,#0c,#99,#0c,#98,#0c,#df,#00
	db #1f,#12,#92,#dd,#21,#1f,#13,#8a
	db #98,#0c,#0c,#0c,#99,#0c,#98,#0c
	db #99,#0c,#98,#0c,#df,#00,#1f,#12
	db #92,#dd,#21,#1f,#13,#8a,#98,#0c
	db #0b,#0b,#99,#0b,#98,#0b,#99,#0b
	db #98,#0b,#df,#00,#1f,#12,#92,#dd
	db #21,#1f,#13,#8a,#98,#0b,#0b,#0b
	db #99,#0b,#98,#0b,#99,#0b,#98,#0b
.l0a07 equ $ + 3
	db #0b,#0b,#80,#dd,#12,#1f,#13,#8a
	db #9b,#00,#e3,#98,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#08,#08,#08,#08
	db #08,#08,#08,#08,#07,#07,#07,#07
	db #07,#07,#08,#0a,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#09,#09,#09,#09
.l0a51 equ $ + 5
	db #09,#09,#0a,#0b,#80,#e3,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#08,#08
	db #08,#08,#08,#08,#08,#08,#09,#09
	db #09,#09,#09,#09,#09,#09,#08,#08
	db #08,#08,#08,#08,#08,#08,#0c,#0c
	db #92,#8a,#98,#0c,#0c,#0c,#92,#8a
	db #98,#0c,#08,#08,#92,#8a,#98,#08
	db #08,#08,#92,#8a,#98,#08,#09,#09
	db #92,#8a,#98,#09,#09,#09,#92,#8a
	db #98,#09,#08,#de,#00,#1f,#12,#92
	db #8a,#98,#08,#08,#92,#92,#92,#92
.l0aa5 equ $ + 1
	db #80,#dd,#21,#1f,#13,#8a,#e3,#98
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#99
	db #0c,#98,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#99,#0a,#98,#08,#08,#08,#08
	db #08,#08,#08,#99,#08,#98,#07,#07
	db #07,#07,#07,#07,#08,#99,#0a,#98
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#99
	db #0c,#98,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#99,#0b,#98,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#99,#0a,#99,#09,#09
.l0afb equ $ + 7
	db #09,#09,#09,#09,#0a,#0b,#80,#e3
	db #98,#0c,#0c,#92,#8a,#98,#0c,#0c
	db #0c,#92,#8a,#98,#0c,#0c,#0c,#92
	db #8a,#98,#0c,#0c,#0c,#92,#8a,#98
	db #0c,#08,#08,#92,#8a,#98,#08,#08
	db #08,#92,#8a,#98,#08,#08,#08,#92
	db #8a,#98,#08,#08,#08,#92,#8a,#98
	db #08,#09,#09,#92,#8a,#98,#09,#09
	db #09,#92,#8a,#98,#09,#09,#09,#92
	db #8a,#98,#09,#09,#09,#92,#8a,#98
	db #09,#08,#08,#92,#8a,#98,#08,#08
	db #08,#92,#8a,#98,#08,#08,#08,#92
	db #8a,#98,#08,#08,#08,#92,#8a,#98
	db #08,#0a,#0a,#92,#8a,#98,#0a,#0a
	db #0a,#92,#8a,#98,#0a,#0a,#0a,#92
	db #8a,#98,#0a,#0a,#0a,#92,#8a,#98
	db #0a,#08,#08,#92,#8a,#98,#08,#08
	db #08,#92,#8a,#98,#08,#08,#08,#92
	db #8a,#98,#08,#08,#08,#92,#8a,#98
	db #08,#09,#09,#92,#8a,#98,#09,#09
	db #09,#92,#8a,#98,#09,#09,#09,#92
	db #8a,#98,#09,#09,#09,#92,#8a,#98
	db #09,#08,#08,#92,#8a,#98,#08,#08
	db #08,#92,#8a,#98,#08,#08,#08,#92
	db #8a,#98,#08,#08,#92,#92,#92,#80
.l0bbc
	db #d7,#16,#11,#43,#8a,#83,#01,#41
	db #88,#08,#01,#03,#00,#eb,#24,#2b
	db #f3,#2c,#8e,#eb,#23,#2a,#f3,#2b
	db #8e,#eb,#24,#2b,#f3,#2c,#8e,#eb
.l0be2 equ $ + 6
	db #23,#2a,#f3,#2b,#8e,#80,#d9,#13
	db #1f,#2d,#8a,#83,#01,#11,#88,#08
	db #01,#03,#00,#e7,#30,#e3,#2e,#ef
	db #2b,#db,#11,#1f,#1d,#e1,#2e,#30
	db #d9,#13,#1f,#2d,#e7,#33,#e3,#37
	db #f3,#35,#e3,#33,#33,#8e,#f3,#33
	db #e3,#8f,#33,#32,#30,#36,#35,#33
	db #30,#fb,#37,#87,#db,#11,#1f,#2d
	db #e1,#37,#36,#d9,#13,#1f,#2d,#fb
	db #33,#db,#11,#1f,#2d,#e1,#33,#32
	db #d9,#13,#1f,#2d,#ff,#30,#2b,#80
.l0c34
	db #dd,#00,#1f,#12,#e7,#8f,#92,#8f
	db #92,#8f,#92,#8f,#92,#8f,#92,#8f
	db #92,#8f,#92,#8f,#92,#d9,#13,#1f
	db #1d,#8a,#ef,#8f,#88,#08,#01,#03
	db #00,#e1,#30,#2e,#2c,#f9,#2a,#e1
	db #33,#30,#2e,#f9,#2b,#e1,#37,#35
	db #33,#e9,#30,#e1,#38,#37,#35,#e9
	db #33,#e1,#37,#35,#33,#e9,#30,#80
.l0c74
	db #de,#00,#1f,#12,#e7,#8f,#92,#8f
	db #e3,#92,#d9,#13,#00,#13,#8b,#00
	db #00,#00,#00,#18,#de,#00,#1f,#12
	db #e7,#8f,#92,#8f,#e3,#92,#d9,#13
	db #00,#13,#8b,#00,#00,#00,#00,#18
	db #de,#00,#1f,#12,#e7,#8f,#92,#8f
	db #e3,#92,#d9,#13,#00,#13,#8b,#00
	db #00,#00,#00,#18,#de,#00,#1f,#12
	db #e7,#8f,#92,#8f,#e3,#92,#d9,#13
	db #00,#13,#8b,#00,#00,#00,#00,#18
	db #de,#00,#1f,#12,#e7,#8f,#92,#8f
	db #e3,#92,#d9,#13,#00,#13,#8b,#00
	db #00,#00,#00,#18,#de,#00,#1f,#12
	db #e7,#8f,#92,#8f,#e3,#92,#d9,#13
	db #00,#13,#8b,#00,#00,#00,#00,#18
	db #de,#00,#1f,#12,#e7,#8f,#92,#8f
	db #e3,#92,#d9,#13,#00,#13,#8b,#00
	db #00,#00,#00,#18,#dc,#00,#1f,#12
	db #e3,#92,#92,#cd,#92,#92,#ce,#92
.l0d11 equ $ + 5
	db #92,#cf,#92,#92,#80,#da,#13,#1f
	db #1e,#8a,#88,#08,#01,#03,#00,#e1
	db #30,#2e,#2b,#30,#2e,#2b,#30,#2e
	db #f7,#2b,#8e,#e1,#36,#33,#30,#36
	db #33,#30,#36,#33,#f7,#30,#8e,#e1
	db #39,#36,#33,#39,#36,#33,#39,#36
	db #f7,#33,#8e,#e1,#30,#2e,#2b,#30
	db #2e,#2b,#30,#2e,#f7,#2b,#8e,#80
.l0d4c
	db #d7,#16,#11,#43,#8a,#83,#01,#41
	db #88,#08,#01,#03,#00,#ff,#24,#8e
	db #23,#8e,#24,#8e,#f3,#23,#8e,#dc
	db #00,#1f,#12,#e3,#92,#92,#cd,#92
.l0d72 equ $ + 6
	db #ce,#92,#cf,#92,#92,#80,#de,#00
	db #1f,#12,#8a,#83,#01,#11,#e3,#b5
	db #30,#30,#ef,#92,#e7,#92,#8a,#e3
	db #b5,#30,#30,#92,#8a,#b5,#30,#e7
	db #8f,#92,#8a,#e3,#b5,#30,#8f,#ef
	db #92,#e7,#92,#8a,#b5,#e3,#30,#30
	db #ef,#92,#e3,#92,#8a,#b5,#2e,#80
.l0da4
	db #e3,#b5,#30,#30,#ef,#92,#e7,#92
	db #8a,#e7,#b4,#2f,#e3,#92,#8a,#b4
	db #2f,#e7,#8f,#92,#8a,#e7,#b3,#2e
	db #e3,#92,#8a,#b3,#2e,#e7,#8f,#92
	db #8a,#e3,#8f,#b5,#2d,#e7,#92,#8a
	db #e3,#b5,#8f,#2d,#92,#8a,#b5,#30
.l0dd5 equ $ + 1
	db #80,#de,#00,#1f,#11,#e7,#b2,#2b
	db #2b,#ef,#8f,#e7,#b4,#2c,#e3,#8f
	db #2c,#ef,#8f,#e3,#b5,#2d,#2d,#e7
	db #2d,#ef,#8f,#e3,#8f,#b4,#e7,#2c
	db #2c,#2c,#e3,#2c,#e7,#b2,#2b,#2b
	db #ef,#8f,#e7,#b4,#2c,#e3,#8f,#2c
	db #ef,#8f,#e3,#b5,#2d,#2d,#e7,#2d
	db #ef,#8f,#e3,#8f,#b4,#e7,#2c,#2c
.l0e18 equ $ + 4
	db #2c,#e3,#2c,#80,#df,#00,#1f,#11
	db #8a,#89,#84,#ff,#8f,#8f,#8f,#8f
	db #ef,#8f,#e3,#85,#40,#00,#04,#11
	db #85,#60,#00,#04,#0c,#f3,#8f,#8f
	db #ef,#8f,#e3,#85,#40,#00,#04,#11
	db #85,#60,#00,#04,#0c,#f3,#8f,#8f
.l0e45 equ $ + 1
	db #80,#d9,#16,#13,#46,#8a,#83,#04
	db #41,#88,#18,#01,#02,#00,#90,#f4
	db #ff,#30,#8e,#2c,#8e,#2d,#8e,#2c
	db #8e,#2b,#8e,#2c,#8e,#2d,#8e,#2c
.l0e6a equ $ + 6
	db #8e,#90,#00,#80,#97,#80,#94,#ff
	db #8f,#8f,#8f,#8f,#8f,#8f,#8f,#8f
	db #80,#00,#00
;
.music_info
	db "Saint Dragon (1990)(Storm Software)(Tiny Williams)",0
	db "Sound Images",0

	read "music_end.asm"
