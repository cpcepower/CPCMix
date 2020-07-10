; Music of Edd the Duck (1990)(Impulse)(Sound Images)()
; Ripped by Megachur the 16/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EDDTHEDU.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #0040
FIRST_THEME				equ 1
LAST_THEME				equ 8

	read "music_header.asm"
	
.l0040			; music theme
	db #00
.l0045 equ $ + 4
.l0043 equ $ + 2
.l0042 equ $ + 1	; bruitage
.l0041
	db #00,#00,#00,#00,#10
;
.play_music
;
	push af
	push bc
	push de
	push hl
	call l008d
	call l01a8
	ld a,(l0041)
	or a
	jr nz,l0065
	ld hl,l0530
	ld a,(hl)
	inc h
	or (hl)
	inc h
	or (hl)
	jr z,l0088
	ld a,#01
	ld (l01ef),a
.l0065
	ld hl,l01ef
	dec (hl)
	ld h,#05
	call l01e4
	inc h
	call l01e4
	inc h
	call l01e4
	call l0346
	call l02d7
	ld hl,l01ef
	ld a,(hl)
	or a
	jr nz,l0085
.l0084 equ $ + 1
	ld (hl),#01
.l0085
	call l0356
.l0088
	pop hl
	pop de
	pop bc
	pop af
	ret
.l008d
	ld a,(l0041)
	or a
	jr nz,l0099
	ld a,(l0040)
;
.init_music     ; a = 1 -> 8
;
	ld (l009a),a
.l009a equ $ + 1
.l0099
	ld a,#00
	or a
	ret z
	push af
	call l039d
	pop af
	cp #09
	ret nc
	ld (l0041),a
	dec a
	add a
	add a
	add a
	add #28
	ld e,a
	adc #08
	sub e
	ld d,a
	ld a,(de)
	inc de
	ld (l0084),a
	ld h,#05
	call l00d1
	call l00d1
	call l00d1
	xor a
	ld (l0043),a
	inc a
	ld (l01ef),a
	ld a,#10
	ld (l0045),a
	ret
.l00d1
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
	ld l,#30
	ld (hl),#01
	inc h
	ret
	db #20,#2d
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
.l01a8
	ld a,(l0042)
	or a
	ret z
	cp #07
	ret nc
	ld c,a
	ld hl,l0530
	ld a,(hl)
	or a
	jr z,l01c1
	inc h
	ld a,(hl)
	or a
	jr z,l01c1
	inc h
	ld a,(hl)
	or a
	ret nz
.l01c1
	inc (hl)
	ld (l0042),a
	ld l,#04
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld a,c
	add a
	add #8a
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
	jr l020d
.l01e4
	ld l,#30
	ld a,(hl)
	or a
	ret z
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
.l01ef equ $ + 1
	ld a,#01
	or a
	jr nz,l01fe
	ld l,#05
	dec (hl)
	jr z,l020d
	call l0599
	call l080b
.l01fe
	call l0765
	call l0731
	call l05f7
	call l02ee
	jp l05a4
.l020d
	ld a,(de)
	inc de
	or a
	jp m,l024e
.l0213
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call l05bf
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
	call l023e
	inc l
.l023e
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
.l024e
	cp #e0
	jr nc,l0276
	cp #d0
	jr nc,l0284
	cp #c0
	jr nc,l027d
	cp #b0
	jr nc,l02ab
	ld c,h
	add a
	add #31
	ld l,a
	adc #06
	sub l
	ld h,a
	ld a,c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	ld (l0271),bc
.l0271 equ $ + 1
	call #0000
.l0273
	jp l020d
.l0276
	sub #df
	ld l,#0d
	ld (hl),a
	jr l0273
.l027d
	sub #c0
	ld l,#14
	ld (hl),a
	jr l0273
.l0284
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
	jp l020d
.l02ab
	sub #b0
	add a
	add #d8
	ld c,a
	adc #03
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
	jp l020d
.l02c7
	pop af
	call l0590
	ld a,(l0591)
	or c
	ld (l0591),a
	ld l,#30
	ld (hl),#00
	ret
.l02d7
	ld hl,l02eb
	dec (hl)
	ret p
	xor a
	ld (hl),a
	inc hl
	cp (hl)
	ret z
	dec (hl)
	inc hl
	ld a,(l03cc)
	add (hl)
	ld (l03cc),a
	ret
.l02ed equ $ + 2
.l02ec equ $ + 1
.l02eb
	db #00,#00,#00
.l02ee
	dec de
	ld a,(de)
	inc de
	cp #8e
	jr z,l02ff
	ld l,#0d
	ld a,(hl)
	ld l,#2a
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.l02ff
	ld l,#04
	bit 3,(hl)
	ret z
	bit 6,(hl)
	jr z,l0322
	ld l,#2d
	dec (hl)
	jr nz,l0316
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.l0316
	ld l,#2b
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.l0322
	ld l,#2d
	dec (hl)
	jr nz,l0330
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.l0330
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
.l033e
	ld a,(de)
	ld l,#2f
	ld (hl),a
	inc de
	ret
.l0344
	inc (hl)
	ret
.l0346
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
	jr l039d
.l0356
	call l03be
	ld h,#05
	call l0364
	inc h
	call l0364
	ld h,#07
.l0364
	ld l,#06
	call l0380
	call l0380
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
	ld h,#04
	ld a,b
	ld c,(hl)
	pop hl
	jr l0384
.l0380
	ld a,(hl)
	inc l
	ld c,(hl)
	inc l
.l0384
	ld b,d
	out (c),a
.l0388 equ $ + 1
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
.l039c
	pop af
.l039d
	xor a
	ld (l0041),a
	ld (l009a),a
	ld (l0040),a
	ld (l0530),a
	ld (l0630),a
	ld (l0730),a
	ld (l052f),a
	ld (l062f),a
	ld (l072f),a
	ld a,#3f
	ld (l0591),a
.l03be
	ld de,#f4f6
	ld b,e
	in a,(c)
	or #c0
	ld (l0388),a
	ld a,#06
.l03cc equ $ + 1
	ld c,#01
	call l0384
	ld a,(l0591)
	ld c,a
	ld a,#07
	jr l0384
	dw l03e2,l03ec,l03f0,l03f4
	dw l03fb
.l03e2
	db #00,#0c,#01,#0d,#02,#0e,#01,#0d
	db #00,#8c
.l03f0 equ $ + 4
.l03ec
	db #0c,#13,#18,#9f,#00,#00,#0c,#98
.l03f4
	db #00,#00,#0c,#00,#00,#00,#8c
.l03fb
	db #00,#07,#0c,#93,#00,#00,#01,#02
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
	db #00,#00,#00,#00,#01,#08,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0530 equ $ + 5
.l052f equ $ + 4
	db #00,#00,#00,#00,#00,#00
	db #28,#63,#29,#20,#53,#6f,#75,#6e      ; author
	db #64,#20,#49,#6d,#61,#67,#65,#73
.l0541
	call l0590
	ld l,#1f
.l0546
	ld a,(hl)
.l0547
	cpl
	and c
	ld (l0591),a
	ld l,#04
	res 4,(hl)
	res 0,(hl)
	ret
.l0553
	call l056a
	call l0590
	ld l,#20
	jr l0546
.l055d
	call l056a
.l0560
	call l0590
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	jr l0547
.l056a
	ld a,(de)
	inc de
	ld (l03cc),a
	ld a,(de)
	inc de
	ld (l02ed),a
	ld a,(de)
	inc de
	ld (l02eb),a
	ld a,(de)
	inc de
	ld (l02ec),a
	ret
.l057f
	ld l,#0b
	ld (hl),#00
.l0583
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
.l0591 equ $ + 1
.l0590
	ld a,#3f
	ld l,#1f
	or (hl)
	inc l
	or (hl)
	ld c,a
	ret
.l0599
	ld l,#15
	ld a,(hl)
	or a
	ret z
	ld l,#0c
	add (hl)
	ld (hl),a
	jr l05bf
.l05a4
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
	jr nc,l05b4
	inc b
.l05b4
	inc (hl)
	ld a,(bc)
	or a
	jp p,l05bc
	ld (hl),#00
.l05bc
	ld l,#0c
	add (hl)
.l05bf
	ld l,#2f
	add (hl)
	add a
	ld c,a
	ld b,#01
	ld a,(bc)
	inc bc
	ld l,#07
	ld (hl),a
	ld a,(bc)
	ld l,#09
	ld (hl),a
	ld l,#04
	bit 2,(hl)
	jr z,l05ef
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
.l05ef
	ld l,#04
	bit 5,(hl)
	ret z
	res 1,(hl)
	ret
.l05f7
	ld l,#04
	bit 2,(hl)
	jp nz,l0736
	ret
	db #00,#00,#00,#00,#00,#00,#00,#02
	db #00,#03,#00,#09,#0f,#00,#04,#00
	db #00,#00,#00,#00,#00,#0f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#10,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0630 equ $ + 1
.l062f
	db #00,#00
	dw l06a3,l039c,l06c9,l0673
	dw l039c,l068c,l06d3,l06ce
	dw l065d,l039c,l0541,l0553
	dw l055d,l039c,l0583,l057f
	dw l033e,l039c
	dw l07b8,l07e6,l069b,l02c7
.l065d
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
.l0673
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
.l068c
	ld l,#04
	set 1,(hl)
	ex de,hl
	ld e,#24
	ldi
	ldi
	ldi
	ex de,hl
	ret
.l069b
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
.l06a3
	ld a,(l0040)
	ld (l009a),a
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
	jr z,l06c0
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l06c0
	ld d,b
	ld e,c
	pop bc
	ld a,(l0e82)
	jp l024e
.l06c9
	ld l,#15
	ld (hl),#ff
	ret
.l06ce
	ld l,#04
	res 2,(hl)
	ret
.l06d3
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#04,#00,#05,#00
	db #0a,#0f,#00,#04,#00,#00,#00,#00
	db #00,#00,#0f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#04,#20,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0730 equ $ + 6
.l072f equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00
.l0731
	ld l,#04
	bit 1,(hl)
	ret z
.l0736
	ld l,#26
	dec (hl)
	jp m,l0344
	ld l,#25
	bit 7,(hl)
	jr nz,l0751
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
.l0751
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
.l0765
	ld l,#0f
	ld a,(hl)
	or a
	jr z,l0780
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
.l0780
	ld l,#12
	ld a,(hl)
	or a
	jr z,l079e
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
	jr nc,l079a
	xor a
.l079a
	ld l,#0b
	ld (hl),a
	ret
.l079e
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
	jr nc,l07b4
	xor a
.l07b4
	ld l,#0b
	ld (hl),a
	ret
.l07b8
	pop af
	call l0560
	ld a,#1f
	ld (l03cc),a
	xor a
	ld (l02eb),a
	ld a,#e1
	ld (l02ed),a
	ld a,#03
	ld (l02ec),a
	ld l,#21
	ld (hl),#e2
	inc l
	ld (hl),#03
	ld l,#04
	set 0,(hl)
	set 1,(hl)
	res 7,(hl)
	ld a,#1a
	ld l,#2f
	sub (hl)
	jp l0213
.l07e6
	pop af
	call l0541
	ld l,#24
	ld (hl),#70
	inc l
	ld (hl),#00
	inc l
	ld (hl),#0c
	ld l,#04
	set 1,(hl)
	ld l,#21
	ld (hl),#e2
	inc l
	ld (hl),#03
	ld l,#04
	set 0,(hl)
	ld a,#09
	ld l,#2f
	sub (hl)
	jp l0213
.l080b
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
	db #05,#c1,#0b,#db,#0b,#fb,#0b,#06
	db #06,#04,#0b,#06,#0b,#08,#0b,#04
	db #04,#c1,#0a,#c3,#0a,#c5,#0a,#04
	db #04,#73,#0a,#75,#0a,#77,#0a,#04
	db #04,#27,#0a,#29,#0a,#2b,#0a,#08
	db #08,#b3,#09,#b5,#09,#b7,#09,#02
	db #02,#e5,#08,#e7,#08,#e9,#08,#04
	db #04,#67,#08,#6d,#08,#73,#08,#79
	db #08,#00,#00,#67,#08,#a2,#08,#00
	db #00,#6d,#08,#d2,#08,#00,#00,#73
	db #08,#df,#00,#16,#13,#8a,#90,#01
	db #e1,#0b,#0b,#17,#0b,#0b,#0b,#17
	db #0b,#0b,#0b,#17,#0b,#8e,#0b,#0d
	db #0f,#10,#10,#1c,#10,#8e,#10,#1b
	db #1c,#12,#12,#1e,#12,#8e,#10,#0f
	db #0d,#80,#dd,#01,#15,#13,#8a,#90
	db #01,#88,#03,#01,#02,#e7,#2f,#36
	db #e5,#34,#33,#e3,#31,#e7,#2f,#36
	db #e5,#34,#33,#e3,#36,#88,#03,#01
	db #02,#e7,#3b,#42,#e5,#40,#3f,#e3
	db #3d,#e7,#3b,#42,#e5,#40,#3f,#e3
	db #42,#80,#d9,#13,#16,#78,#8a,#90
	db #01,#b2,#ff,#2f,#ef,#34,#36,#ff
	db #2f,#ef,#34,#36,#80,#eb,#08,#24
	db #09,#95,#09,#df,#00,#16,#13,#8a
	db #e3,#0b,#17,#0b,#17,#0b,#17,#0b
	db #17,#0c,#18,#0c,#18,#0c,#18,#0c
	db #18,#0d,#19,#0d,#19,#0d,#19,#0d
	db #19,#0e,#1a,#0e,#1a,#0e,#1a,#0e
	db #1a,#0f,#1b,#0f,#1b,#10,#1c,#10
	db #1c,#11,#1d,#11,#1d,#12,#1e,#12
	db #1e,#ff,#23,#91,#dc,#01,#1c,#11
	db #8a,#e1,#12,#17,#1b,#1e,#23,#27
	db #2a,#2f,#27,#2a,#2f,#33,#36,#3b
	db #3f,#42,#13,#18,#1c,#1f,#24,#28
	db #2b,#30,#28,#2b,#30,#34,#37,#3c
	db #40,#43,#14,#19,#1d,#20,#25,#29
	db #2c,#31,#29,#2c,#31,#35,#38,#3d
	db #41,#44,#15,#1a,#1e,#21,#26,#2a
	db #2d,#32,#2a,#2d,#32,#36,#39,#3e
	db #42,#45,#16,#1b,#1f,#22,#27,#2b
	db #2e,#33,#2c,#2f,#34,#38,#3b,#40
	db #44,#47,#18,#1d,#21,#24,#29,#2d
	db #30,#35,#2e,#31,#36,#3a,#3d,#42
	db #46,#3d,#dd,#01,#18,#12,#88,#02
	db #01,#02,#ff,#3b,#91,#db,#14,#16
	db #43,#8a,#88,#02,#03,#02,#ff,#23
	db #24,#25,#26,#ef,#27,#28,#29,#2a
	db #de,#01,#18,#12,#88,#02,#01,#02
	db #2f,#8e,#91,#b9,#09,#d6,#09,#fd
	db #09,#df,#00,#16,#13,#8a,#e5,#13
	db #18,#e3,#1c,#e5,#14,#1c,#e1,#18
	db #14,#e5,#15,#18,#e3,#1c,#e5,#1d
	db #18,#e3,#15,#e7,#0c,#91,#dd,#12
	db #14,#13,#8a,#86,#ff,#ff,#01,#00
	db #02,#88,#04,#01,#02,#e5,#2b,#30
	db #e3,#34,#e5,#32,#30,#e3,#34,#e5
	db #32,#30,#e1,#32,#34,#e5,#35,#30
	db #e3,#2d,#e7,#2b,#91,#dd,#00,#16
	db #13,#8a,#b2,#e1,#24,#24,#24,#24
	db #24,#24,#24,#24,#20,#20,#20,#20
	db #20,#20,#20,#20,#21,#21,#21,#21
	db #21,#21,#21,#21,#1d,#1d,#1d,#1d
	db #1d,#1d,#1d,#1d,#e7,#24,#91,#2d
	db #0a,#40,#0a,#5c,#0a,#df,#00,#18
	db #12,#8a,#e1,#13,#13,#16,#13,#eb
	db #1a,#e1,#18,#16,#13,#e7,#8f,#91
	db #dd,#12,#14,#13,#8a,#86,#ff,#ff
	db #01,#00,#01,#88,#05,#01,#02,#e1
	db #1f,#1f,#22,#1f,#eb,#29,#e1,#34
	db #32,#e7,#2b,#91,#db,#00,#16,#13
	db #8a,#b2,#e1,#1f,#1f,#1f,#1f,#26
	db #26,#26,#26,#26,#26,#24,#24,#1f
	db #e7,#8f,#91,#79,#0a,#8b,#0a,#a7
	db #0a,#df,#00,#18,#12,#8a,#e5,#18
	db #13,#e3,#18,#e5,#1d,#18,#e3,#15
	db #ef,#0c,#91,#dd,#12,#14,#13,#8a
	db #86,#fc,#ff,#02,#00,#02,#88,#05
	db #01,#03,#e5,#24,#28,#e3,#2b,#e5
	db #29,#28,#e3,#24,#ef,#2b,#91,#db
	db #00,#16,#13,#8a,#b1,#e1,#24,#24
	db #24,#24,#24,#24,#24,#24,#1d,#1d
	db #1d,#1d,#1d,#1d,#1d,#1d,#ef,#24
	db #91,#c7,#0a,#d5,#0a,#ea,#0a,#df
	db #00,#1f,#12,#8a,#e1,#1a,#19,#13
	db #0e,#0d,#e7,#13,#91,#dc,#12,#1f
	db #13,#8a,#83,#00,#11,#88,#01,#02
	db #02,#e1,#26,#25,#2b,#26,#25,#e7
	db #2b,#91,#dc,#12,#1f,#13,#8a,#83
	db #00,#11,#88,#01,#02,#02,#e0,#26
	db #32,#25,#31,#2b,#37,#26,#32,#25
	db #31,#e7,#1f,#91,#0a,#0b,#48,#0b
	db #7f,#0b,#df,#00,#1f,#12,#83,#01
	db #11,#8a,#e1,#0a,#0a,#92,#8a,#0a
	db #e0,#16,#e1,#0a,#e0,#0a,#92,#8a
	db #16,#e1,#0a,#0c,#0c,#92,#8a,#0c
	db #e0,#18,#e1,#0c,#e0,#0c,#92,#8a
	db #18,#e1,#0c,#0e,#0e,#92,#8a,#0e
	db #e0,#1a,#e1,#0e,#e0,#0e,#92,#8a
	db #1a,#e1,#0e,#e3,#0e,#8f,#1a,#91
	db #dd,#12,#14,#12,#8a,#83,#01,#11
	db #88,#01,#02,#02,#e1,#29,#28,#29
	db #26,#8e,#e5,#8f,#e1,#29,#28,#29
	db #24,#8e,#e5,#8f,#e0,#1d,#1c,#1d
	db #1f,#21,#1f,#21,#24,#26,#24,#26
	db #28,#29,#28,#2b,#24,#26,#8e,#8f
	db #8f,#e3,#8f,#e1,#2d,#8f,#91,#de
	db #00,#1c,#11,#8a,#b1,#e0,#26,#8e
	db #26,#26,#8e,#26,#8e,#26,#8e,#26
	db #26,#8e,#26,#8e,#26,#26,#26,#8e
	db #26,#26,#8e,#26,#8e,#26,#8e,#26
	db #8e,#26,#26,#8e,#26,#8e,#26,#8e
	db #26,#26,#8e,#26,#8e,#26,#26,#8e
	db #26,#8e,#26,#8e,#26,#26,#26,#8e
	db #8f,#8f,#8f,#8f,#8f,#8f,#e3,#26
	db #80,#15,#0c,#15,#0c,#15,#0c,#15
	db #0c,#15,#0c,#3c,#0c,#3c,#0c,#15
	db #0c,#15,#0c,#63,#0c,#63,#0c,#00
	db #00,#c1,#0b,#94,#0c,#99,#0c,#99
	db #0c,#99,#0c,#a2,#0c,#cc,#0c,#94
	db #0c,#99,#0c,#e7,#0c,#18,#0d,#a2
	db #0c,#cc,#0c,#48,#0d,#6d,#0d,#00
	db #00,#db,#0b,#86,#0e,#9f,#0d,#c6
	db #0d,#c6,#0d,#86,#0e,#4c,#0e,#4c
	db #0e,#c6,#0d,#c6,#0d,#66,#0e,#66
	db #0e,#00,#00,#fb,#0b,#df,#00,#1f
	db #12,#8a,#e1,#13,#1f,#1d,#13,#1f
	db #1d,#8e,#13,#8e,#1f,#1d,#13,#1f
	db #1d,#22,#8e,#13,#1f,#1d,#13,#1f
	db #1d,#8e,#24,#13,#1f,#14,#20,#15
	db #21,#16,#22,#80,#e1,#8a,#18,#18
	db #92,#8f,#8f,#8f,#92,#92,#8a,#16
	db #18,#92,#8a,#13,#8f,#8f,#92,#92
	db #8f,#8a,#11,#92,#8a,#11,#8f,#11
	db #92,#92,#8a,#8f,#18,#92,#8a,#0c
	db #e7,#8f,#80,#e1,#8a,#18,#18,#92
	db #8a,#1f,#16,#1c,#92,#8a,#11,#8e
	db #11,#92,#8a,#11,#1d,#1f,#92,#92
	db #8a,#18,#18,#92,#8a,#1d,#16,#1c
	db #92,#8a,#11,#8e,#11,#92,#8a,#11
	db #92,#8a,#1c,#92,#e0,#92,#92,#85
	db #00,#00,#00,#80,#df,#00,#28,#11
	db #e3,#93,#93,#93,#93,#93,#93,#93
	db #93,#80,#de,#11,#17,#12,#8a,#86
	db #fe,#ff,#02,#00,#01,#88,#02,#02
	db #02,#e1,#8f,#e5,#26,#24,#e3,#22
	db #e1,#22,#21,#1f,#8e,#e7,#21,#e5
	db #26,#24,#e3,#29,#e1,#29,#28,#26
	db #8e,#e5,#28,#80,#e1,#8f,#e5,#26
	db #24,#e3,#22,#e1,#22,#21,#1f,#8e
	db #e7,#21,#e5,#2b,#29,#e1,#28,#26
	db #28,#29,#2b,#e7,#8f,#87,#80,#dc
	db #02,#15,#13,#8a,#e1,#8f,#30,#32
	db #30,#8f,#8f,#8f,#2d,#2e,#30,#2d
	db #29,#e7,#8f,#e1,#8f,#2e,#2e,#2e
	db #2e,#8f,#2e,#2e,#8f,#30,#30,#8f
	db #8f,#8f,#de,#00,#1f,#11,#8b,#1f
	db #00,#00,#00,#00,#e0,#00,#00,#80
	db #dc,#02,#15,#13,#8a,#e1,#28,#1f
	db #24,#28,#e9,#8f,#e1,#29,#28,#24
	db #e9,#8f,#e1,#22,#24,#28,#8f,#29
	db #8f,#28,#8f,#24,#8f,#8f,#8f,#de
	db #00,#1f,#11,#8c,#04,#00,#00,#00
	db #85,#14,#00,#14,#24,#24,#24,#80
	db #dc,#02,#15,#13,#8a,#e1,#30,#8e
	db #37,#35,#8e,#34,#8e,#32,#8e,#8e
	db #2e,#8e,#2e,#30,#8e,#8e,#30,#8e
	db #37,#35,#8e,#34,#8e,#32,#8e,#34
	db #30,#8e,#e7,#8f,#80,#e1,#8a,#24
	db #28,#2b,#24,#29,#28,#24,#1d,#ef
	db #8f,#e1,#30,#2b,#28,#26,#24,#1f
	db #1d,#29,#e0,#da,#00,#1f,#11,#92
	db #92,#cb,#92,#92,#ca,#92,#92,#cb
	db #92,#92,#cc,#92,#92,#cd,#92,#92
	db #ce,#92,#92,#cf,#92,#92,#80,#dc
	db #02,#1f,#11,#8a,#b4,#e1,#8f,#2b
	db #8f,#8f,#2b,#8f,#8f,#2b,#8f,#2b
	db #8f,#8f,#2b,#8f,#8f,#2b,#e7,#8f
	db #e1,#2b,#2b,#8f,#8f,#8f,#2b,#8f
	db #8f,#2b,#8f,#8f,#2b,#80,#dc,#02
	db #1f,#11,#e1,#8a,#b4,#8f,#2b,#de
	db #00,#1f,#11,#92,#8f,#dc,#02,#1f
	db #11,#8a,#b4,#2b,#8f,#de,#00,#1f
	db #11,#8b,#0f,#00,#00,#00,#00,#dc
	db #02,#1f,#11,#8a,#b4,#2b,#8f,#2b
	db #de,#00,#1f,#11,#92,#8f,#dc,#02
	db #1f,#11,#8a,#b4,#2b,#8f,#de,#00
	db #1f,#11,#8b,#0f,#00,#00,#00,#00
	db #dc,#02,#1f,#11,#8a,#b4,#2b,#8f
	db #8f,#de,#00,#1f,#11,#92,#8f,#dc
	db #02,#1f,#11,#8a,#b4,#2b,#2b,#de
	db #00,#1f,#11,#8b,#0f,#00,#00,#00
	db #00,#8f,#dc,#02,#1f,#11,#8a,#b4
	db #8f,#2b,#de,#00,#1f,#11,#92,#8f
	db #dc,#02,#1f,#11,#8a,#b4,#2b,#de
	db #00,#1f,#11,#8b,#0f,#00,#00,#00
	db #00,#00,#00,#80,#dd,#02,#19,#14
	db #8a,#86,#fc,#ff,#01,#00,#04,#88
	db #01,#02,#02,#ef,#24,#22,#ed,#29
	db #e3,#28,#ed,#24,#87,#80,#dc,#01
	db #1c,#11,#8a,#e1,#24,#28,#2b,#24
	db #29,#28,#24,#1d,#ef,#8f,#e1,#30
	db #2b,#28,#26,#24,#1f,#1d,#29,#ef
	db #8f,#80
.l0e82
	db #94,#ff,#8f,#8f,#ff,#8f,#8f,#80
	db #00,#00,#98,#0e,#a4,#0e,#b5,#0e
	db #c5,#0e,#e5,#0e,#f2,#0e,#8a,#de
	db #00,#15,#12,#e1,#30,#47,#3e,#43
	db #48,#95,#df,#00,#1f,#12,#83,#00
	db #00,#8c,#20,#04,#00,#0a,#e9,#82
	db #b2,#39,#95,#8a,#db,#22,#1f,#12
	db #88,#0c,#06,#01,#85,#06,#80,#10
	db #f3,#1f,#95,#de,#00,#27,#11,#8a
	db #86,#ff,#ff,#01,#00,#01,#e1,#3c
	db #3b,#32,#30,#cb,#3c,#3b,#32,#30
	db #c9,#3c,#3b,#32,#30,#c7,#3c,#3b
	db #32,#30,#95,#df,#01,#1f,#11,#8c
	db #0c,#00,#00,#00,#e3,#b0,#0b,#95
	db #8a,#de,#00,#35,#11,#e4,#3e,#4f
	db #95
;
; db "(c) Sound Images"
;
.music_info
	db "Edd the Duck (1990)(Impulse)(Sound Images)",0
	db "(c) Sound Images",0

	read "music_end.asm"
