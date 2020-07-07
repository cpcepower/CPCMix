; Music of Golden Axe (1990)(Mastertronic)(Tiny Williams)()
; Ripped by Megachur the 11/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GOLDENAX.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #8000
FIRST_THEME				equ 1
LAST_THEME				equ 2

	read "music_header.asm"

.music_end equ $ + 1
.l8001 equ $ + 1
.l8000
	db #01,#00,#00
.l8003
	db #00
.l8004
	db #00
.l8005
	db #10
;
.play_music
;
	push af
	push bc
	push de
	push hl
	call l803b
	ld a,(l8001)
	or a
	jr z,l8036
	ld hl,l80ca
	dec (hl)
	ld h,l8531/&100		; #85
	call l80a8
	inc h
	call l80a8
	inc h
	call l80a8
	call l8258
	call l81c6
	ld hl,l80ca
	ld a,(hl)
	or a
	jr nz,l8033
.l8032 equ $ + 1
	ld (hl),#04
.l8033
	call l8268
.l8036
	pop hl
	pop de
	pop bc
	pop af
	ret
.l803b
	ld a,(l8001)
	or a
	jr nz,l8047
	ld a,(l8000)
;
.init_music
;
	ld (l8048),a
.l8048 equ $ + 1
.l8047
	ld a,#00        ; a = 1,2
	or a
	ret z
	push af
	call l82af
	pop af
	cp #03
	ret nc
	ld (l8001),a
	dec a
	add a
	add a
	add a
	add l8803       ; #03
	ld e,a
	adc l8803/&100  ; #88
	sub e
	ld d,a
	ld a,(de)
	inc de
	ld (l8032),a
	ld h,l8505/&100		; #85
	call l807f
	call l807f
	call l807f
	xor a
	ld (l8003),a
	inc a
	ld (l80ca),a
	ld a,#10
	ld (l8005),a
	ret
.l807f
	ld l,#05
	ld (hl),#01
	dec l
	xor a
	ld (hl),a
	ld l,#07
	ld (hl),a
	ld l,#09
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
	ld l,l8531	;#31
	ld (hl),#01
	inc h
	ret
.l80a8
	ld l,l8531	;#31
	ld a,(hl)
	or a
	ret z
	ld l,#04
	bit 7,(hl)
	jr z,l80c4
.l80b4 equ $ + 1
	ld a,#fb
	dec a
	ld (l80b4),a
	jr nz,l80c4
	ld l,#20
	ld a,(l8597)
	or (hl)
	ld (l8597),a
.l80c4
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
.l80ca equ $ + 1
	ld a,#02
	or a
	jr nz,l80d6
	ld l,#05
	dec (hl)
	jr z,l8102
	call l87e9
.l80d6
	call l876d
	call l8739
	call l8732
	call l81dd
	call l859f
	call l86d7
	ld l,#04
	bit 5,(hl)
	ret z
	ld a,r
	and #07
	ld c,a
	ld l,#07
	ld a,(l8507)
	add c
	ld (hl),a
	ld a,(l8509)
	ld l,#09
	ld (hl),a
	ret nc
	inc (hl)
	ret
.l8102
	ld a,(de)
	inc de
	or a
	jp m,l8146
.l8108
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call l85ba
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
	call l82e4
	ld l,#0e
	call l8136
	inc l
.l8136
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
.l8146
	cp #e0
	jr nc,l816e
	cp #d0
	jr nc,l817e
	cp #c0
	jr nc,l8176
	cp #b0
	jr nc,l81a5
	ld c,h
	add a
	add l8632       ; #32
	ld l,a
	adc l8632/&100  ; #86
	sub l
	ld h,a
	ld a,c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	ld (l8169),bc
.l8169 equ $ + 1
	call l8681
	jp l8102
.l816e
	sub #df
	ld l,#0d
	ld (hl),a
	jp l8102
.l8176
	sub #c0
	ld l,#14
	ld (hl),a
	jp l8102
.l817e
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
	jp l8102
.l81a5
	sub #b0
	add a
	add l83c9       ; #c9
	ld c,a
	adc l83c9/&100  ; #83
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
	jp l8102
.l81c1
	ld l,#04
	res 0,(hl)
	ret
.l81c6
	ld hl,l81da
	dec (hl)
	ret p
	xor a
	ld (hl),a
	inc hl
	cp (hl)
	ret z
	dec (hl)
	inc hl
	ld a,(l82d8)
	add (hl)
	ld (l82d8),a
	ret
.l81da
	db #00
.l81db
	db #00
.l81dc
	db #00
.l81de equ $ + 1
.l81dd
	ld a,#55
	rrca
	ld (l81de),a
	ret c
	dec de
	ld a,(de)
	inc de
	cp #8e
	jr z,l81f5
	ld l,#0d
	ld a,(hl)
	ld l,#2a
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.l81f5
	ld l,#04
	bit 3,(hl)
	ret z
	ld l,#30
	ld a,(hl)
	or a
	jr z,l820b
	dec l
	dec (hl)
	jr nz,l820b
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#2b
	inc (hl)
.l820b
	ld l,#04
	bit 6,(hl)
	jr z,l822b
	ld l,#2d
	dec (hl)
	jr nz,l821f
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.l821f
	ld l,#2b
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.l822b
	ld l,#2d
	dec (hl)
	jr nz,l8239
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.l8239
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
.l8247
	ld a,#35
	ld (l8003),a
	ld (l8004),a
	ret
.l8250
	ld a,(de)
	ld (l85bb),a
	inc de
	ret
.l8256
	inc (hl)
	ret
.l8258
	ld hl,l8003
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
	jr l82af
.l8268
	call l82ca
	ld h,l8506/&100      ; #85
	call l8276
	inc h
	call l8276
	ld h,l8706/&100      ; #87
.l8276
	ld l,#06
	call l8292
	call l8292
	ld a,(l8005)
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
	ld h,l8400/&100		; #84 ?
	ld a,b
	ld c,(hl)
	pop hl
	jr l8296
.l8292
	ld a,(hl)
	inc l
	ld c,(hl)
	inc l
.l8296
	ld b,d
	out (c),a
.l829a equ $ + 1
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
.l82ae
	pop af
;
.stop_music
.l82af
;
	xor a
	ld (l8001),a
	ld (l8048),a
	ld (l8000),a
	ld (l85bb),a
	ld (l8531),a
	ld (l8631),a
	ld (l8731),a
	ld a,#3f
	ld (l8597),a
.l82ca
	ld de,#f4f6
	ld b,e
	in a,(c)
	or #c0
	ld (l829a),a
	ld a,#06
.l82d8 equ $ + 1
	ld c,#02
	call l8296
	ld a,(l8597)
	ld c,a
	ld a,#07
	jr l8296
.l82e4
	ld l,#04
	bit 7,(hl)
	ret z
	ld a,#02
	ld (l82d8),a
	xor a
	ld (l81da),a
	ld (l81db),a
	ld (l81dc),a
	ld a,#01
	ld (l80b4),a
	ld l,#20
	ld a,(hl)
	cpl
	ld c,a
	ld a,(l8597)
	and c
	ld (l8597),a
	ret
.l830a
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
.l8321
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
.l83c9
	dw l83d7,l83e1,l83e7,l83ed
	dw l83f3,l83f9,l87fd
.l83d7
	db #00,#0c,#01,#0d,#02,#0e,#01,#0d
.l83e1 equ $ + 2
	db #00,#8c,#00,#00,#00,#07,#07,#87
.l83ed equ $ + 6
.l83e7
	db #00,#00,#00,#05,#05,#85,#0c,#0c
.l83f3 equ $ + 4
	db #0c,#00,#00,#80,#00,#00,#00,#04
.l83f9 equ $ + 2
	db #04,#84,#00,#00,#00,#0c,#0c,#8c
.l8400 equ $ + 1
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
	db #0e,#6b,#8d,#aa,#8d,#84
.l8506 equ $ +1
.l8505
	db #01,#00
.l8507
	db #73,#01
.l8509
	db #04,#08,#0c,#09,#02,#00,#00,#00
	db #1f,#0c,#01,#0f,#00,#01,#01,#01
	db #01,#01,#01,#02,#01,#01,#01,#08
	db #00,#00,#00,#08,#00,#00,#f0,#ff
	db #02,#00,#01,#01,#01,#01,#00,#00
.l8531
	db #00
.l8532
	ld l,#04
	res 2,(hl)
	ret
.l8537
	call l8596
	ld l,#1f
.l853c
	ld a,(hl)
.l853d
	cpl
	and c
	ld (l8597),a
	ld l,#04
	res 4,(hl)
	res 0,(hl)
	ret
.l8549
	call l8560
	call l8596
	ld l,#20
	jr l853c
.l8553
	call l8560
.l8556
	call l8596
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	jr l853d
.l8560
	ld a,(de)
	inc de
	ld (l82d8),a
	ld a,(de)
	inc de
	ld (l81dc),a
	ld a,(de)
	inc de
	ld (l81da),a
	ld a,(de)
	inc de
	ld (l81db),a
	ret
.l8575
	call l8596
	ld l,#20
	ld a,(hl)
	cpl
	and c
	ld (l8597),a
	ld l,#04
	set 4,(hl)
	ret
.l8585
	ld l,#0b
	ld (hl),#00
.l8589
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
.l8597 equ $ + 1
.l8596
	ld a,#3f
	ld l,#1f
	or (hl)
	inc l
	or (hl)
	ld c,a
	ret
.l859f
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
	jr nc,l85af
	inc b
.l85af
	inc (hl)
	ld a,(bc)
	or a
	jp p,l85b7
	ld (hl),#00
.l85b7
	ld l,#0c
	add (hl)
.l85bb equ $ + 1
.l85ba
	add #00
	add a
	add l8321              ; #21
	ld c,a
	adc l8321/&100         ; #83
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
;.l85ed
	db #79,#6e,#69,#54,#20,#30,#39,#39
	db #31,#20,#28,#63,#29
.l85fa
	ld l,#04
	set 7,(hl)
	ret

	db #00,#7d,#8d,#0e,#8e,#4c,#01,#02
	db #7f,#03,#00,#09,#0d,#2f,#02,#13
	db #00,#01,#12,#01,#01,#0b,#00,#01
	db #01,#01,#01,#01,#01,#02,#01,#01
	db #02,#10,#ed,#83
.l8623
	db #04,#03,#00,#00,#fa,#ff,#02,#04
	db #01,#01,#01,#02,#00,#00
.l8631
	db #00
.l8632
	dw l86b1,l82ae,l82ae,l8681
	dw l81c1,l869a,l830a,l8532
	dw l8666,l86f4,l8537,l8549
	dw l8553,l8575,l8589,l8585
	dw l8250,l82ae,l86ea,l86ef
	dw l86a9,l82ae,l87c0,l8247
	dw l85fa,l86f9
.l8666
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
.l8681
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
.l869a
	ex de,hl
	ld e,#24
	ldi
	ldi
	ldi
	ex de,hl
	ld l,#04
	set 1,(hl)
	ret
.l86a9
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
.l86b1
	ld a,(l8000)
	ld (l8048),a
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
	jr z,l86ce
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.l86ce
	ld d,b
	ld e,c
	pop bc
	ld a,(l8fe9)
	jp l8146
.l86d7
	ld l,#04
	bit 4,(hl)
	ret z
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	ld c,a
	ld a,(l8597)
	xor c
	ld (l8597),a
	ret
.l86ea
	ld l,#04
	set 5,(hl)
	ret
.l86ef
	ld l,#04
	res 5,(hl)
	ret
.l86f4
	ld l,#04
	res 3,(hl)
	ret
.l86f9
	ld l,#04
	res 7,(hl)
	ret
	db #00,#00,#8b,#8d,#5c,#8f,#49,#05
.l8706
	db #04,#a0,#05,#00,#0a,#0b,#26,#06
	db #00,#00,#00,#1f,#0d,#01,#0d,#00
	db #01,#01,#00,#01,#01,#01,#03,#01
	db #01,#04,#20,#e7,#83,#05,#03,#00
	db #00,#fa,#ff,#02,#04,#01,#01,#02
	db #02,#00,#00
.l8731
	db #00
.l8732
	ld l,#04
	bit 2,(hl)
	jr nz,l873e
	ret
.l8739
	ld l,#04
	bit 1,(hl)
	ret z
.l873e
	ld l,#26
	dec (hl)
	jp m,l8256
	ld l,#25
	bit 7,(hl)
	jr nz,l8759
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
	.l8759
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
.l876d
	ld l,#0f
	ld a,(hl)
	or a
	jr z,l8788
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
.l8788
	ld l,#12
	ld a,(hl)
	or a
	jr z,l87a6
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
	jr nc,l87a2
	xor a
	.l87a2
	ld l,#0b
	ld (hl),a
	ret
	.l87a6
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
	jr nc,l87bc
	xor a
.l87bc
	ld l,#0b
	ld (hl),a
	ret
.l87c0
	pop af
	call l8556
	ld a,#1f
	ld (l82d8),a
	xor a
	ld (l81da),a
	ld a,#e1
	ld (l81dc),a
	ld a,#08
	ld (l81db),a
	ld l,#21
	ld (hl),#d7
	inc l
	ld (hl),#83
	ld l,#04
	set 0,(hl)
	set 1,(hl)
	ld a,#18
	jp l8108
.l87e9
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
	ret
.l87fd
	db #00,#00,#00,#03,#03,#83
.l8803
	db #03
	dw l8812,l8852,l8876,#0404
.l8812 equ $ + 6
	dw l8d69,l8d7b,l8d89,l88a0
	dw l88c5,l88c5,l88c5,l88c5
	dw l892a,l892a,l88c5,l88c5
	dw l88c5,l88c5,l89f2,l89f2
	dw l89f2,l89f2,l8a0a,l89d9
	dw l88c5,l88c5,l88c5,l88c5
	dw l892a,l892a,l8a41,l8a41
	dw l88c5,l88c5,l8fe6,l8fe4
.l8852 equ $ + 6
.l884c
	dw l88c5,#0000,l884c,l8a94
	dw l8ad3,l8ad3,l8b53,l8b53
	dw l8ad3,l8ad3,l8bdf,l8bc3
	dw l8ad3,l8ad3,l8b53,l8b53
.l8870 equ $ + 4
	dw l8c5e,l8c5e,l8ad3,#0000
.l8876 equ $ + 2
	dw l8870,l8c80,l8ca8,l8ca8
	dw l8cc5,l8cc5,l8ca8,l8ca8
	dw l8d15,l8d15,l8d15,l8d15
	dw l8d15,l8ca8,l8ca8,l8cc5
.l889a equ $ + 6
	dw l8cc5,l8d41,l8d41,l8ca8
	dw #0000
	dw l889a
.l88a0
	db #dd,#11,#1f,#19,#8a,#90,#01,#83
	db #01,#11,#88,#00,#01,#01,#00,#ff
	db #10,#0e,#0c,#0b,#10,#0e,#0c,#0b
	db #de,#00,#1f,#2e,#88,#00,#02,#02
.l88c5 equ $ + 5
	db #00,#ff,#15,#8e,#80,#df,#00,#1f
	db #13,#8a,#88,#00,#00,#00,#00,#98
	db #e3,#15,#e1,#15,#15,#99,#e3,#96
	db #8a,#98,#15,#e3,#15,#e1,#15,#15
	db #99,#e3,#96,#8a,#98,#e1,#1a,#1c
	db #e3,#11,#e1,#11,#11,#99,#e3,#96
	db #8a,#98,#e1,#11,#11,#e3,#11,#e1
	db #11,#11,#99,#e3,#96,#8a,#98,#e1
	db #13,#15,#e3,#13,#e1,#13,#13,#99
	db #e3,#96,#8a,#98,#e1,#13,#13,#e3
	db #18,#e1,#18,#e5,#17,#e3,#13,#e3
	db #15,#e1,#15,#15,#99,#e3,#96,#8a
	db #98,#15,#1a,#18,#99,#96,#8a,#98
.l892a equ $ + 2
	db #15,#80,#df,#00,#1f,#13,#8a,#88
	db #00,#00,#00,#00,#98,#e3,#15,#e1
	db #15,#15,#99,#e3,#96,#8a,#98,#15
	db #e3,#15,#e1,#15,#15,#99,#e3,#96
	db #8a,#98,#e1,#1a,#1c,#e3,#11,#e1
	db #11,#11,#99,#e3,#96,#8a,#98,#e1
	db #11,#11,#e3,#11,#e1,#11,#11,#99
	db #e3,#96,#8a,#98,#e1,#13,#15,#e3
	db #13,#e1,#13,#13,#99,#e3,#96,#8a
	db #98,#e1,#13,#13,#e3,#18,#e1,#18
	db #e5,#17,#e3,#13,#e3,#15,#e1,#15
	db #15,#99,#e3,#96,#8a,#98,#15,#1a
	db #18,#17,#15,#e3,#13,#e1,#13,#13
	db #99,#e3,#96,#8a,#98,#e1,#13,#13
	db #e3,#13,#e1,#13,#13,#99,#e3,#96
	db #8a,#98,#e1,#17,#18,#e3,#13,#e1
	db #13,#13,#99,#e3,#96,#8a,#98,#e1
	db #13,#13,#e3,#13,#e1,#13,#13,#99
	db #e3,#96,#8a,#98,#e1,#17,#18,#e3
	db #15,#e1,#15,#15,#99,#e3,#96,#8a
	db #98,#e1,#15,#15,#e3,#15,#e1,#15
	db #15,#99,#e3,#96,#8a,#98,#e1,#1a
.l89d9 equ $ + 1
	db #18,#df,#00,#1f,#11,#99,#e1,#96
	db #96,#8e,#96,#96,#96,#96,#96,#96
	db #96,#96,#96,#96,#96,#96,#e0,#96
.l89f2 equ $ + 2
	db #96,#80,#df,#00,#1f,#13,#8a,#e7
	db #98,#10,#99,#e3,#96,#8a,#98,#e1
	db #10,#10,#e3,#10,#10,#99,#96,#8a
.l8a0a equ $ + 2
	db #98,#10,#e7,#10,#99,#e3,#96,#8a
	db #98,#e1,#10,#10,#e3,#10,#10,#99
	db #96,#8a,#98,#10,#e7,#10,#99,#e3
	db #96,#8a,#98,#e1,#10,#10,#e3,#10
	db #10,#99,#96,#8a,#98,#10,#e7,#10
	db #99,#e3,#96,#8a,#98,#e1,#10,#10
	db #e3,#10,#10,#99,#96,#8a,#98,#10
.l8a41 equ $ + 1
	db #80,#df,#00,#1f,#13,#8a,#88,#00
	db #00,#00,#00,#98,#e3,#11,#11,#99
	db #96,#8a,#98,#11,#13,#e1,#13,#13
	db #99,#e3,#96,#8a,#98,#e1,#10,#13
	db #e3,#15,#15,#99,#96,#8a,#98,#17
	db #18,#17,#99,#96,#8a,#98,#10,#11
	db #11,#99,#96,#8a,#98,#11,#13,#e1
	db #13,#13,#99,#e3,#96,#8a,#98,#e1
	db #10,#13,#e3,#15,#17,#99,#96,#8a
	db #98,#e3,#17,#e3,#15,#13,#99,#96
.l8a94 equ $ + 4
	db #8a,#98,#11,#80,#db,#13,#1f,#1a
	db #8a,#83,#01,#11,#88,#04,#01,#02
	db #00,#86,#f8,#ff,#04,#00,#02,#f7
	db #28,#e7,#32,#32,#30,#32,#34,#f7
	db #2d,#e7,#2f,#ef,#2d,#2c,#f7,#28
	db #e7,#32,#32,#30,#32,#34,#f7,#39
	db #e7,#3b,#ef,#39,#38,#de,#00,#1f
	db #2e,#88,#00,#01,#01,#00,#ff,#30
.l8ad3 equ $ + 3
	db #8e,#87,#80,#df,#00,#1f,#11,#8a
	db #e5,#b3,#2d,#2f,#30,#e5,#8f,#d9
	db #15,#1f,#17,#e1,#30,#2f,#30,#32
	db #df,#00,#1f,#11,#e5,#2d,#2f,#30
	db #ed,#8f,#e5,#2f,#30,#32,#df,#00
	db #1f,#13,#e5,#8f,#e3,#96,#8a,#df
	db #00,#1f,#11,#b3,#2b,#e5,#30,#2f
	db #2d,#e5,#8f,#84,#df,#00,#1f,#13
	db #e3,#17,#8f,#df,#00,#1f,#11,#e5
	db #b3,#2d,#2f,#30,#e5,#8f,#d9,#15
	db #1f,#17,#e1,#30,#2f,#30,#32,#df
	db #00,#1f,#11,#e5,#2d,#2f,#30,#ed
	db #8f,#e5,#2f,#30,#32,#df,#00,#1f
	db #13,#e5,#8f,#e3,#96,#8a,#df,#00
	db #1f,#11,#b3,#2b,#e5,#30,#2f,#2d
	db #e5,#8f,#84,#df,#00,#1f,#13,#e3
.l8b53 equ $ + 3
	db #17,#8f,#80,#df,#00,#1f,#11,#8a
	db #e1,#b3,#2d,#30,#34,#39,#e3,#8f
	db #e1,#2d,#30,#34,#39,#eb,#8f,#e1
	db #2d,#30,#35,#39,#e3,#8f,#e1,#2d
	db #30,#35,#39,#eb,#8f,#e1,#2b,#2f
	db #32,#37,#e3,#8f,#e1,#2b,#2f,#32
	db #37,#df,#00,#1f,#13,#e3,#8f,#96
	db #8a,#8f,#df,#00,#1f,#11,#b3,#e1
	db #2d,#30,#34,#39,#e3,#8f,#e1,#2d
	db #30,#34,#39,#df,#00,#1f,#13,#e3
	db #8f,#96,#8f,#8a,#df,#00,#1f,#11
	db #b3,#e5,#2b,#2f,#e3,#30,#32,#eb
	db #8f,#e5,#2b,#2f,#e3,#30,#32,#8f
	db #e3,#30,#2f,#e5,#2d,#30,#e3,#32
.l8bc3 equ $ + 3
	db #34,#eb,#8f,#de,#00,#1f,#11,#86
	db #9f,#ff,#38,#00,#02,#e1,#09,#09
	db #8e,#09,#07,#8e,#e1,#07,#05,#8e
.l8bdf equ $ + 7
	db #05,#e3,#07,#05,#04,#87,#80,#db
	db #13,#12,#23,#8a,#86,#f8,#ff,#04
	db #00,#02,#88,#08,#02,#02,#1e,#ff
	db #8f,#8f,#f7,#2f,#e3,#2d,#2f,#ff
	db #2b,#eb,#2a,#26,#ef,#28,#8e,#e7
	db #2f,#f7,#32,#e7,#34,#eb,#31,#2d
	db #e7,#31,#83,#10,#81,#ff,#2f,#8e
	db #d9,#13,#1f,#13,#86,#fe,#ff,#00
	db #00,#00,#88,#00,#01,#01,#00,#e3
	db #1c,#1a,#1c,#1d,#1f,#1d,#1c,#1a
	db #1c,#1a,#1c,#1d,#1f,#1d,#1c,#1a
	db #db,#13,#12,#23,#8a,#83,#01,#11
	db #86,#fc,#ff,#02,#00,#02,#88,#08
	db #01,#02,#32,#f7,#3b,#e3,#39,#3b
	db #ff,#37,#eb,#36,#32,#ef,#34,#8e
	db #e7,#3b,#f7,#3e,#e7,#40,#eb,#3d
.l8c5e equ $ + 6
	db #39,#e7,#3d,#ff,#3b,#80,#dc,#13
	db #14,#23,#8a,#88,#04,#02,#02,#00
	db #87,#e3,#39,#39,#8e,#39,#e7,#3b
	db #37,#e3,#3b,#fb,#39,#e3,#39,#39
	db #8e,#39,#e7,#3b,#3e,#ff,#40,#80
.l8c80
	db #d7,#14,#1f,#2a,#8a,#83,#01,#11
	db #88,#00,#01,#01,#00,#ff,#8f,#3e
	db #40,#3b,#8f,#3e,#40,#eb,#47,#e3
	db #44,#ef,#44,#de,#00,#1f,#2e,#88
	db #00,#01,#01,#00,#ff,#34,#8e,#80
.l8ca8
	db #d9,#15,#13,#27,#8a,#ff,#b2,#28
	db #b1,#2d,#f7,#b2,#2d,#e7,#26,#ff
	db #28,#ff,#b2,#28,#b1,#2d,#ef,#b2
.l8cc5 equ $ + 5
	db #2d,#32,#ff,#34,#80,#db,#12,#12
	db #22,#8a,#e3,#b5,#2d,#2b,#2d,#2f
	db #30,#2f,#2d,#2b,#e5,#b4,#29,#29
	db #f3,#29,#e3,#b5,#2b,#29,#2b,#2d
	db #2b,#29,#28,#26,#e5,#b2,#28,#28
	db #f3,#28,#83,#02,#11,#fb,#26,#8e
	db #e5,#26,#e1,#1a,#ff,#28,#83,#01
	db #11,#de,#00,#1f,#11,#99,#86,#9f
	db #ff,#38,#00,#02,#e1,#15,#15,#8e
	db #15,#13,#8e,#13,#11,#8e,#11,#e3
.l8d15 equ $ + 5
	db #13,#11,#10,#87,#80,#db,#13,#1f
	db #13,#8a,#88,#00,#01,#01,#00,#e3
	db #1c,#1a,#1c,#1d,#1f,#1d,#1c,#1a
	db #1c,#1a,#1c,#1d,#1f,#1d,#1c,#1a
	db #1c,#1a,#1c,#1d,#1f,#1d,#1c,#1a
	db #1c,#1a,#1c,#1d,#1f,#1d,#1c,#1a
.l8d41 equ $ + 1
	db #80,#de,#00,#1f,#13,#8a,#b4,#eb
	db #29,#e3,#29,#eb,#2b,#e3,#2b,#ef
	db #b1,#2d,#e5,#2d,#2d,#e3,#2d,#eb
	db #b4,#29,#e3,#29,#eb,#2b,#e3,#2b
	db #ef,#b1,#2d,#e5,#2d,#2d,#e3,#2d
	db #80
.l8d69
	dw l8d97,l8d97,l8df4,l8d97
	dw l8d97,l8d97,l8d97,#0000
	dw l8d69
.l8d7b
	dw l8df6,l8e6b,l8eb1,l8f27
	dw l8f27,#0000,l8d7b
.l8d89
	dw l8f50,l8fcb,l8fcb,l8eb1
	dw l8eb1,#0000,l8d89
.l8d97
	db #df,#00,#1f,#12,#8a,#83,#01,#11
	db #86,#f0,#ff,#08,#00,#02,#e1,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #e0,#09,#09,#e1,#09,#09,#09,#09
	db #09,#15,#09,#09,#09,#09,#8a,#09
	db #09,#09,#09,#09,#e0,#09,#09,#e1
	db #09,#09,#09,#09,#09,#15,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#e0
	db #07,#07,#e1,#07,#07,#07,#07,#07
	db #13,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#e0,#07,#07,#e1,#07,#07
.l8df6 equ $ + 7
.l8df4 equ $ + 5
	db #07,#13,#07,#13,#80,#98,#80,#db
	db #13,#12,#12,#8a,#83,#01,#11,#88
	db #04,#01,#02,#00,#86,#fa,#ff,#03
	db #00,#02,#e1,#2d,#2f,#30,#2f,#2d
	db #2f,#e3,#37,#e1,#34,#ed,#39,#e1
	db #2f,#30,#2f,#2d,#2f,#2b,#28,#8e
	db #26,#ed,#34,#e1,#30,#30,#eb,#37
	db #c8,#e1,#30,#30,#eb,#37,#c5,#e1
	db #30,#30,#eb,#37,#c4,#e1,#30,#30
	db #eb,#37,#cb,#e1,#2d,#2f,#30,#2f
	db #2d,#2f,#e3,#37,#e1,#34,#ed,#39
	db #e1,#2f,#30,#2f,#2d,#2f,#2b,#28
	db #8e,#26,#ed,#34,#e1,#30,#2b,#eb
	db #2b,#c8,#e1,#30,#2b,#eb,#2b,#c5
	db #e1,#30,#2b,#eb,#2b,#c4,#e1,#30
.l8e6b equ $ + 4
	db #2b,#eb,#2b,#80,#dc,#00,#1f,#13
	db #e1,#2d,#2b,#30,#2d,#2d,#2b,#32
	db #2d,#2d,#2b,#30,#2d,#2d,#2b,#32
	db #2d,#2d,#2b,#30,#2d,#2d,#2b,#32
	db #2d,#2d,#2b,#30,#2d,#2d,#2b,#32
	db #2d,#2f,#2b,#30,#2f,#2f,#2b,#32
	db #2f,#2f,#2b,#30,#2f,#2f,#2b,#32
	db #2f,#2f,#2b,#30,#2f,#2f,#2b,#32
	db #2f,#2f,#2b,#30,#2f,#2f,#2b,#32
.l8eb1 equ $ + 2
	db #2f,#80,#dc,#00,#1f,#13,#e1,#2d
	db #2b,#ce,#96,#8a,#cc,#2d,#2d,#2b
	db #ce,#96,#96,#cc,#8a,#2d,#2b,#ce
	db #96,#8a,#cc,#2d,#2d,#2b,#ce,#96
	db #96,#cc,#8a,#2d,#2b,#ce,#96,#8a
	db #cc,#2d,#2d,#2b,#ce,#96,#96,#cc
	db #8a,#2d,#2b,#ce,#96,#8a,#cc,#2d
	db #2d,#2b,#ce,#96,#96,#cc,#8a,#2f
	db #2b,#ce,#96,#8a,#cc,#2f,#2f,#2b
	db #ce,#96,#96,#cc,#8a,#2f,#2b,#ce
	db #96,#8a,#cc,#2f,#2f,#2b,#ce,#96
	db #96,#cc,#8a,#2f,#2b,#ce,#96,#8a
	db #cc,#2f,#2f,#2b,#ce,#96,#8a,#cc
	db #2f,#2f,#2b,#ce,#96,#8a,#cc,#2f
	db #2f,#2b,#ce,#96,#8a,#cc,#2f,#80
.l8f27
	db #de,#00,#1f,#18,#8a,#88,#04,#01
	db #02,#00,#87,#e5,#b3,#2d,#28,#26
	db #24,#e3,#23,#21,#e5,#2d,#28,#26
	db #24,#e3,#23,#21,#84,#2d,#e1,#2f
	db #f9,#2f,#e3,#2d,#e1,#2f,#f9,#2f
.l8f50 equ $ + 1
	db #80,#dd,#00,#1f,#13,#8a,#83,#01
	db #11,#e5,#b2,#26,#26,#26,#ed,#28
	db #e5,#b2,#24,#24,#24,#ed,#28,#84
	db #db,#13,#12,#12,#83,#01,#11,#88
	db #04,#01,#02,#00,#86,#fa,#ff,#03
	db #00,#02,#e1,#2b,#2b,#eb,#32,#c8
	db #e1,#2b,#2b,#eb,#32,#c5,#e1,#2b
	db #2b,#eb,#32,#c4,#e1,#2b,#2b,#eb
	db #32,#c8,#87,#e1,#34,#32,#2d,#32
	db #34,#32,#2d,#32,#34,#32,#2d,#32
	db #34,#32,#2d,#32,#34,#32,#2d,#32
	db #34,#32,#2d,#32,#34,#32,#39,#2d
	db #34,#32,#2d,#32,#cb,#2b,#26,#eb
	db #2f,#c8,#e1,#2b,#26,#eb,#2f,#c5
	db #e1,#2b,#26,#eb,#2f,#c4,#e1,#2b
.l8fcb equ $ + 4
	db #26,#eb,#2f,#80,#db,#14,#12,#23
	db #88,#04,#01,#02,#00,#f9,#39,#e1
	db #37,#37,#8e,#ff,#39,#f7,#3b,#e3
	db #39,#39,#ff,#3b,#80
.l8fe6
	db #97,#80
.l8fe4
	db #90,#02,#80
.l8fe9
	db #94,#01
;
; #8feb
; push af
; .l8fed equ $ + 1
; ld a,#05
; inc a
; cp #06
; jr nz,l9007
; call #8006	; play
; ld a,(#8001)
; and a
; jr nz,l9006
; ld a,(#8fea)
; ld (#8000),a
; xor a
; ld (#8003),a
; .l9006
; xor a
; .l9007
; ld (l8fed),a
; pop af
;
; 8006 init poke &8001,1 poke &8000,theme ?
; 8047 init poke 8048,theme
;
; .l85ed db "yniT 0991 (c)"
;
;
.music_info
	db "Golden Axe (1990)(Mastertronic)(Tiny Williams)()",0
	db "yniT 0991 (c)",0

	read "music_end.asm"
