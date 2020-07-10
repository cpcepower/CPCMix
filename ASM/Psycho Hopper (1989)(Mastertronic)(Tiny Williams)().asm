; Music of Psycho Hopper (1989)(Mastertronic)(Tiny Williams)()
; Ripped by Megachur the 10/09/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PSYCHOHO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2011
music_adr				equ #c000
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

; 06/11/2011

.lc003 equ $ + 3
.lc001 equ $ + 1
.lc000
	db #00,#00,#00,#00
;
.play_music
;
	push af
	push bc
	push de
	push hl
	ld a,#c7
	ld (lc2c6),a
	call lc060
	ld a,(l0035)
	or a
	jr z,lc047
	ld hl,lc13a
	dec (hl)
	ld h,#c5
	call lc127
	inc h
	call lc127
	inc h
	call lc127
	call lc0c7
	call lc108
	call lc2a9
	ld hl,lc13a
	ld a,(hl)
	or a
	jr nz,lc039
.lc038 equ $ + 1
	ld (hl),#01
.lc039
	ld a,(l0035)
	or a
	jr z,lc047
	call lc2b9
	pop hl
	pop de
	pop bc
	pop af
	ret
.lc047
	call lc0c7
	call lc108
	ld a,(lc000)
	or a
	jr z,lc05b
	call lc318
	ld h,#c9
	call lc2c7
.lc05b
	pop hl
	pop de
	pop bc
	pop af
	ret
.lc060
	ld a,(l0035)
	or a
	jr nz,lc06c
	ld a,(l0034)
;
.real_init_music
;
	ld (lc5fc),a
.lc06c
	ld a,(lc5fc)
	or a
	ret z
	push af
	call lc300
	pop af
	cp #06
	ret nc
	ld (l0035),a
	dec a
	add a
	add a
	add a
	add #33
	ld e,a
	adc #c9
	sub e
	ld d,a
	ld h,#c5
	call lc0a1
	call lc0a1
	call lc0a1
	ld a,(de)
	ld (lc038),a
	ld a,#01
	ld (lc13a),a
	ld a,#10
	ld (lc003),a
	ret
.lc0a1
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
.lc0c7
	ld a,(l0036)
	or a
	ret z
	cp #08
	ret nc
	ld l,a
	ld a,(lc000)
	or a
	jr z,lc0da
	cp l
	jr c,lc0e0
	ret
.lc0da
	ld a,(lc12a)
	ld (lc23e),a
.lc0e0
	ld a,l
	ld (lc000),a
	add a
	add #10
	ld l,a
	adc #d2
	sub l
	ld h,a
	ld de,lc902
	ldi
	ex de,hl
	ld a,(de)
	ld (hl),a
	ld d,a
	dec l
	ld e,(hl)
	xor a
	ld (l0036),a
	ld l,#04
	ld (hl),a
	ld l,#15
	ld (hl),a
	ld l,#16
	ld (hl),#01
	jp lc175
.lc108
	ld a,(lc000)
	or a
	ret z
	ld hl,lc902
	ld a,h
	ld (lc2c6),a
	ld e,(hl)
	inc l
	ld d,(hl)
	ld l,#20
	ld a,(lc12a)
	and (hl)
	jr nz,lc13e
	ld l,#0c
	ld a,(hl)
	ld (lc326),a
	jr lc13e
.lc127
	ld l,#20
.lc12a equ $ + 1
	ld a,#3f
	and (hl)
	jr nz,lc134
	ld l,#0c
	ld a,(hl)
	ld (lc326),a
.lc134
	ld l,#02
	ld e,(hl)
	inc l
	ld d,(hl)
.lc13a equ $ + 1
	ld a,#00
	or a
	jr nz,lc149
.lc13e
	ld l,#05
	dec (hl)
	jr z,lc175
	call lc59d
	call lc7d8
.lc149
	call lc769
	call lc735
	call lc72e
	call lc252
	call lc5a8
	call lc6e1
	ld l,#04
	bit 5,(hl)
	ret z
	ld a,r
	and #07
	ld c,a
	ld l,#07
	ld a,(lc507)
	add c
	ld (hl),a
	ld a,(lc509)
	ld l,#09
	ld (hl),a
	ret nc
	inc (hl)
	ret
.lc175
	ld a,(de)
	inc de
	or a
	jp m,lc1b1
.lc17b
	ld l,#0c
	ld (hl),a
	ld l,#02
	ld (hl),e
	inc l
	ld (hl),d
	call lc5c3
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
	ld l,#2d
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#0e
	call lc1a1
	inc l
.lc1a1
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
.lc1b1
	cp #e0
	jr nc,lc1d9
	cp #d0
	jr nc,lc1e9
	cp #c0
	jr nc,lc1e1
	cp #b0
	jr nc,lc210
	ld c,h
	add a
	add #2e
	ld l,a
	adc #c6
	sub l
	ld h,a
	ld a,c
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld h,a
	ld (lc1d4),bc
.lc1d4 equ $ + 1
	call #0000
	jp lc175
.lc1d9
	sub #df
	ld l,#0d
	ld (hl),a
	jp lc175
.lc1e1
	ld a,(de)
	inc de
	ld l,#14
	ld (hl),a
	jp lc175
.lc1e9
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
	jp lc175
.lc210
	sub #b0
	add a
	add #f2
	ld c,a
	adc #c3
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
	jp lc175
	pop af
	xor a
	ld (lc000),a
	ld (lc90b),a
	ld (lc70b),a
	ld a,(lc12a)
	and #db
	ld c,a
.lc23e equ $ + 1
	ld a,#00
	and #24
	or c
	ld (lc12a),a
	ld a,(l0035)
	or a
	ret nz
	ld a,#3f
	ld (lc12a),a
	jp lc318
.lc253 equ $ + 1
.lc252
	ld a,#55
	rrca
	ld (lc253),a
	ret c
	dec de
	ld a,(de)
	inc de
	cp #8e
	jr z,lc26a
	ld l,#0d
	ld a,(hl)
	ld l,#2a
	sub (hl)
	ld l,#05
	cp (hl)
	ret c
.lc26a
	ld l,#04
	bit 3,(hl)
	ret z
	bit 6,(hl)
	jr z,lc28d
	ld l,#2c
	dec (hl)
	jr nz,lc281
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	res 6,(hl)
	ret
.lc281
	ld l,#2b
	ld a,(hl)
	ld l,#07
	add (hl)
	ld (hl),a
	ret nc
	ld l,#09
	inc (hl)
	ret
.lc28d
	ld l,#2c
	dec (hl)
	jr nz,lc29b
	inc l
	ld a,(hl)
	dec l
	ld (hl),a
	ld l,#04
	set 6,(hl)
	ret
.lc29b
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
.lc2a9
	ld hl,lc001
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
	jr lc300
.lc2b9
	call lc318
	ld h,#c5
	call lc2c7
	inc h
	call lc2c7
.lc2c6 equ $ + 1
	ld h,#c7
.lc2c7
	ld l,#06
	call lc2e3
	call lc2e3
	ld a,(lc003)
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
	ld h,#c8
	ld a,b
	ld c,(hl)
	pop hl
	jr lc2e7
.lc2e3
	ld a,(hl)
	inc l
	ld c,(hl)
	inc l
.lc2e7
	ld b,d
	out (c),a
.lc2eb equ $ + 1
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
.lc300
	xor a
	ld (l0035),a
	ld (lc000),a
	ld (lc5c4),a
	ld (lc5fc),a
	ld (l0034),a
	ld (lc001),a
	ld a,#3f
	ld (lc12a),a
.lc318
	ld de,#f4f6
	ld b,e
	in a,(c)
	or #c0
	ld (lc2eb),a
	ld a,#06
.lc326 equ $ + 1
	ld c,#01
	call lc2e7
	ld a,(lc12a)
	ld c,a
	ld a,#07
	jr lc2e7
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
	dw #000f,#000e,#000d,#000c
	dw #000c,#000b,#000b,#000a
	dw #0009,#0009,#0008,#0008
	dw lc402,lc40c,lc410,lc413
	dw lc417,lc419,lc41b,lc420
.lc402
	db #3e,#3e,#3e,#3e,#3e,#00,#02,#02
.lc410 equ $ + 6
.lc40c equ $ + 2
	db #02,#82,#00,#00,#00,#8c,#00,#00
.lc419 equ $ + 7
.lc417 equ $ + 5
.lc413 equ $ + 1
	db #83,#00,#09,#14,#97,#00,#84,#00
.lc41b equ $ + 1
	db #8c,#0f,#17,#18,#17,#8a
.lc420
	ld a,c
	ld l,(hl)
	ld l,c
	ld d,h
	jr nz,lc45f
	jr c,lc461
	ld sp,#2820
	ld h,e
	add hl,hl
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc461 equ $ + 4
.lc45f equ $ + 2
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
.lc509 equ $ + 4
.lc507 equ $ + 2
	db #00,#00,#00,#01,#00,#08,#0f,#00
	db #04,#00,#00,#00,#00,#00,#00,#0f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#08,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
	db #2e,#04,#cb,#96,#c9,#cd,#89,#c5
	db #2e,#1f,#7e,#2f,#a1,#4f,#2e,#04
	db #cb,#a6,#cb,#86,#7c,#fe,#c7,#28
	db #05,#79,#32,#2a,#c1,#c9,#3a,#00
	db #c0,#b7,#28,#f5,#79,#32,#3e,#c2
.lc557 equ $ + 1
	db #c9,#cd,#89,#c5,#2e,#20,#18,#da
	db #cd,#89,#c5,#2e,#1f,#7e,#2c,#b6
	db #18,#d1,#cd,#89,#c5,#2e,#20,#7e
	db #2f,#a1,#32,#2a,#c1,#2e,#04,#cb
	db #e6,#c9,#2e,#0b,#36,#00,#f1,#2e
	db #0d,#7e,#2e,#05,#77,#2e,#02,#73
	db #2c,#72,#c9,#3a,#2a,#c1,#2e,#1f
	db #b6,#2c,#b6,#4f,#c9,#2e,#15,#36
.lc59d equ $ + 7
	db #01,#c9,#2e,#15,#36,#ff,#c9,#2e
	db #15,#7e,#b7,#c8,#2e,#0c,#86,#77
.lc5a8 equ $ + 2
	db #18,#1b,#2e,#04,#cb,#46,#c8,#2e
	db #21,#7e,#2c,#46,#2c,#86,#4f,#30
	db #01,#04,#34,#0a,#b7,#f2,#c0,#c5
.lc5c4 equ $ + 6
.lc5c3 equ $ + 5
	db #36,#00,#2e,#0c,#86,#c6,#00,#87
	db #c6,#32,#4f,#ce,#c3,#91,#47,#0a
	db #03,#2e,#07,#77,#0a,#2e,#09,#77
	db #2e,#04,#cb,#56,#c8,#d5,#2e,#27
	db #5e,#2c,#56,#2e,#07,#4e,#2e,#09
	db #46,#eb,#09,#eb,#72,#2e,#07,#73
	db #d1,#2e,#29,#7e,#2e,#26,#77,#c9
.lc5fd equ $ + 7
.lc5fc equ $ + 6
	db #1a,#32,#c4,#c5,#13,#c9,#00,#34
	db #c9,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#03,#00,#09,#0f,#00,#04
	db #00,#00,#00,#00,#00,#00,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#02,#10,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #bb,#c6,#93,#c5,#98,#c5,#74,#c6
	db #2e,#c9,#8d,#c6,#9c,#c6,#2e,#c5
	db #5c,#c6,#6f,#c6,#33,#c5,#57,#c5
	db #5e,#c5,#68,#c5,#7c,#c5,#78,#c5
	db #f6,#c5,#00
	jp lc6f4
	ld sp,hl
	add #b3
	add #2c
	jp nz,lc7bc
	ex de,hl
	ld e,#2a
	ldi
	ldi
	ld a,(hl)
	ldi
	ld (de),a
	ex de,hl
	ld l,#04
	set 3,(hl)
	set 6,(hl)
	ret
	ld l,#04
	res 3,(hl)
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
	ex de,hl
	ld e,#24
	ldi
	ldi
	ldi
	ex de,hl
	ld l,#04
	set 1,(hl)
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
	ld l,#00
	ex de,hl
	ldi
	ldi
	ex de,hl
	ld a,(l0034)
	ld (lc5fc),a
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
	jr z,lc6d8
	ld (hl),b
	dec l
	ld (hl),c
	inc l
	inc l
	ld (hl),e
	inc l
	ld (hl),d
	ret
.lc6d8
	ld d,b
	ld e,c
	pop bc
	ld a,(ld204)
	jp lc1b1
.lc6e1
	ld l,#04
	bit 4,(hl)
	ret z
	ld l,#1f
	ld a,(hl)
	inc l
	or (hl)
	ld c,a
	ld a,(lc12a)
	xor c
	ld (lc12a),a
	ret
.lc6f4
	ld l,#04
	set 5,(hl)
	ret
	ld l,#04
	res 5,(hl)
	ret
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc70b equ $ + 5
	db #04,#00,#05,#00,#0a,#0f,#00,#04
	db #00,#00,#00,#00,#00,#00,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#20,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lc72e
	ld l,#04
	bit 2,(hl)
	jr nz,lc73a
	ret
.lc735
	ld l,#04
	bit 1,(hl)
	ret z
.lc73a
	ld l,#26
	dec (hl)
	jp m,lc5fd
	ld l,#25
	bit 7,(hl)
	jr nz,lc755
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
.lc755
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
.lc769
	ld l,#0f
	ld a,(hl)
	or a
	jr z,lc784
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
	cp #10
	ret nc
	ld (hl),a
	ret
.lc784
	ld l,#12
	ld a,(hl)
	or a
	jr z,lc7a2
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
	jr nc,lc79e
	xor a
.lc79e
	ld l,#0b
	ld (hl),a
	ret
.lc7a2
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
	jr nc,lc7b8
	xor a
.lc7b8
	ld l,#0b
	ld (hl),a
	ret
.lc7bc
	call lc557
	pop af
	ld l,#21
	ld (hl),#b0
	inc l
	ld (hl),#00
	inc l
	ld (hl),#00
	ld l,#04
	set 0,(hl)
	ld a,(lc5c4)
	neg
	add #16
	jp lc17b
.lc7d8
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
.lc902 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#04,#00
.lc90b equ $ + 3
.lc90a equ $ + 2
	db #05,#00,#0a,#0f,#00,#04,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #20,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
	ld l,#04
	res 0,(hl)
	ret
	ld d,e
	ret
	and a
	ret
	or a
	ret
	inc bc
	inc bc
	jr c,lc90a
	ld l,b
	call lcd88
	inc bc
	inc bc
	adc (hl)
	call lcd90
	sub d
;call #0303
	defs 3,0
	ld a,a
	pop de
	add c
	pop de
	add e
	pop de
	inc bc
	inc bc
	ret
	db #c9,#c9,#c9,#c9,#c9,#c9,#c9,#c9
	db #c9,#c9,#c9,#c9,#c9,#df,#c9,#f1
	db #c9,#f1,#c9,#f1,#c9,#f1,#c9,#f1
	db #c9,#f1,#c9,#0d,#ca,#f1,#c9,#f1
	db #c9,#f1,#c9,#f1,#c9,#f1,#c9,#f1
	db #c9,#f1,#c9,#f1,#c9,#f1,#c9,#f1
	db #c9,#f1,#c9,#f1,#c9,#f1,#c9,#f1
	db #c9,#f1,#c9,#f1,#c9,#f1,#c9,#24
	db #ca,#24,#ca,#24,#ca,#44,#ca,#24
	db #ca,#24,#ca,#24,#ca,#44,#ca,#00
	db #00,#61,#c9,#5c,#ca,#9d,#ca,#a9
	db #ca,#0a,#cb,#a9,#ca,#54,#cb,#00
	db #00,#a9,#c9,#89,#cb,#ca,#cb,#f8
	db #cb,#20,#cc,#6a,#cc,#a8,#cc,#e1
	db #cc,#00,#00,#b9,#c9,#da,#12,#15
	db #13,#8a,#e5,#0e,#e1,#0e,#e5,#12
	db #e1,#12,#e5,#09,#e1,#09,#e5,#10
	db #e1,#10,#80,#d9,#13,#15,#12,#8a
	db #88,#00,#01,#01,#e7,#15,#83,#01
	db #11,#15,#17,#19,#80,#dc,#00,#15
	db #12,#8a,#e5,#0e,#e1,#1a,#e1,#96
	db #8a,#e3,#12,#e1,#12,#e5,#15,#e1
	db #21,#e1,#96,#8a,#e3,#12,#e1,#12
	db #80,#e5,#15,#e1,#21,#e1,#96,#8a
	db #e3,#0d,#e1,#0d,#e5,#10,#e1,#1c
	db #e1,#96,#8a,#e3,#02,#e1,#02,#80
	db #dc,#00,#15,#12,#8a,#88,#06,#02
	db #01,#e5,#1a,#e1,#1a,#e1,#96,#8a
	db #e3,#1e,#e1,#1e,#e5,#21,#e1,#21
	db #e1,#96,#8a,#e3,#1e,#e1,#1e,#80
	db #e5,#15,#e1,#15,#e1,#96,#8a,#e3
	db #19,#e1,#19,#e5,#1c,#e1,#1c,#e1
	db #96,#8a,#e3,#19,#e1,#96,#8a,#80
	db #db,#13,#16,#14,#8a,#89,#83,#01
	db #11,#ef,#2d,#85,#02,#00,#30,#2d
	db #ff,#21,#e5,#2a,#e1,#28,#de,#00
	db #18,#16,#8a,#88,#08,#01,#01,#f7
	db #26,#da,#13,#16,#14,#8a,#ff,#8f
	db #89,#ef,#2d,#85,#02,#00,#3c,#2d
	db #88,#08,#01,#01,#ff,#21,#89,#e3
	db #21,#de,#00,#18,#16,#8a,#f9,#26
	db #80,#d9,#15,#15,#35,#8a,#88,#08
	db #02,#01,#ff,#25,#80,#d9,#12,#17
	db #15,#8a,#88,#06,#01,#01,#e5,#26
	db #e1,#23,#e5,#26,#e9,#2a,#e5,#28
	db #e7,#26,#e1,#28,#e5,#26,#e1,#28
	db #e5,#23,#e9,#21,#e5,#26,#e1,#23
	db #e5,#26,#e9,#2a,#e3,#28,#dd,#00
	db #17,#05,#ef,#26,#f3,#8f,#d9,#12
	db #17,#15,#8a,#e5,#26,#e1,#23,#e5
	db #26,#e9,#2a,#e5,#28,#e7,#26,#e1
	db #28,#e5,#26,#e1,#28,#e5,#23,#e9
	db #21,#e5,#23,#e1,#21,#e5,#1e,#e1
	db #8f,#e3,#1c,#1c,#19,#dd,#00,#17
	db #05,#ef,#1a,#f3,#8f,#80,#d8,#14
	db #17,#15,#8a,#88,#04,#01,#01,#e1
	db #2a,#e5,#28,#f3,#26,#e1,#8f,#e1
	db #28,#e5,#23,#f3,#21,#e1,#8f,#eb
	db #8f,#e5,#26,#e7,#26,#e1,#23,#e5
	db #21,#e9,#1a,#f7,#8f,#e1,#2a,#e5
	db #28,#f3,#26,#e1,#8f,#e1,#28,#e5
	db #23,#f3,#21,#e1,#8f,#eb,#8f,#e5
	db #26,#e1,#23,#e5,#26,#85,#03,#80
	db #07,#e7,#26,#ff,#26,#e1,#8f,#80
	db #d5,#24,#18,#15,#8a,#88,#04,#01
	db #01,#e3,#32,#e5,#32,#2f,#2d,#f7
	db #2f,#f1,#8f,#e3,#32,#e5,#32,#2f
	db #2d,#eb,#2f,#f5,#28,#e7,#8f,#e3
	db #32,#e5,#32,#2f,#e3,#2d,#f9,#2f
	db #f1,#8f,#e3,#32,#2f,#32,#36,#32
	db #eb,#36,#ff,#34,#80,#da,#13,#16
	db #14,#8a,#88,#08,#01,#01,#ef,#36
	db #85,#02,#00,#2d,#36,#fb,#2a,#e3
	db #8f,#e7,#2d,#dd,#00,#18,#16,#8a
	db #88,#08,#01,#01,#f7,#2a,#ff,#8f
	db #da,#13,#16,#14,#8a,#ef,#36,#85
	db #02,#00,#2d,#36,#fb,#2a,#e3,#8f
	db #e3,#2a,#dd,#00,#18,#16,#8a,#88
	db #08,#01,#01,#f9,#26,#80,#d9,#15
	db #15,#35,#8a,#88,#08,#02,#01,#ff
	db #34,#80,#d9,#12,#17,#15,#8a,#88
	db #06,#01,#01,#e5,#39,#f9,#39,#e5
	db #34,#f9,#34,#e5,#36,#f9,#36,#e5
	db #32,#f9,#32,#ef,#32,#39,#e7,#32
	db #8f,#8f,#8f,#80,#d5,#15,#17,#26
	db #8a,#88,#06,#01,#01,#ff,#8f,#e5
	db #32,#e1,#2f,#e5,#32,#e9,#36,#e7
	db #2d,#ff,#2d,#ff,#8f,#8f,#e5,#32
	db #e1,#2f,#e5,#32,#e9,#36,#e7,#2d
	db #ff,#2d,#8f,#80,#d7,#14,#17,#15
	db #8a,#88,#04,#01,#01,#e1,#2d,#e5
	db #2d,#f3,#2a,#e1,#8f,#e1,#25,#e5
	db #28,#f3,#1c,#e1,#8f,#eb,#8f,#e5
	db #26,#e7,#26,#e1,#23,#e5,#21,#e9
	db #1a,#f7,#8f,#e1,#2d,#e5,#2d,#f3
	db #2a,#e1,#8f,#e1,#25,#e5,#28,#f3
	db #1c,#e1,#8f,#eb,#8f,#e5,#26,#e1
	db #23,#e5,#1a,#85,#03,#80,#0f,#e7
	db #1a,#ff,#1a,#e1,#8f,#80,#d9,#00
	db #14,#14,#8a
	push hl
	ld h,#e3
	ld hl,(#e12d)
	ld (#2de5),a
	ex (sp),hl
	ld hl,(#e126)
	ld hl,(#2de5)
	ex (sp),hl
	ld (#e12d),a
	ld hl,(#26e5)
	ex (sp),hl
	ld hl,(#e12d)
	ld (#2de5),a
	ex (sp),hl
	ld hl,(#e126)
	ld hl,(#2de5)
	ex (sp),hl
	ld (#e12d),a
	ld hl,(#26e5)
	ex (sp),hl
	ld hl,(#e12d)
	ld (#2de5),a
	ex (sp),hl
	ld hl,(#e126)
	ld hl,(#e580)
	ld h,#e3
	ld hl,(#e12d)
	ld (#2de5),a
	ex (sp),hl
	ld hl,(#e126)
	ld hl,(#2de5)
	ex (sp),hl
	ld (#e12d),a
	ld hl,(#26e5)
	ex (sp),hl
	ld hl,(#e12d)
	ld (#2de5),a
	ex (sp),hl
	ld sp,#e134
	add hl,sp
	push hl
	inc (hl)
	ex (sp),hl
	ld sp,#e12d
	ld sp,#26e5
	ex (sp),hl
	ld hl,(#e12d)
	ld (#2de5),a
	ex (sp),hl
	ld hl,(#e126)
	ld hl,(#d980)
	inc de
	ld d,#15
	adc d
	ex (sp),hl
	ld (hl),#e5
	ld (hl),#34
	inc (hl)
	ex de,hl
	inc (hl)
	jp c,#1600
	dec d
	ex (sp),hl
	ld (hl),#e9
	ld (hl),#e3
	inc (hl)
	pop hl
	ld (hl),#e3
	inc (hl)
	adc a
	pop hl
	adc a
	exx
	inc de
	ld d,#15
	ex (sp),hl
	ld (hl),#e5
	ld (hl),#34
	inc (hl)
	ex de,hl
	inc (hl)
	push af
	add hl,sp
	rst #20
	adc a
	ex (sp),hl
	ld (hl),#e5
	ld (hl),#34
	ex (sp),hl
	inc (hl)
	ex de,hl
	inc (hl)
	jp c,#1600
	dec d
	ex (sp),hl
	ld (hl),#e9
	ld (hl),#e3
	inc (hl)
	pop hl
	ld (hl),#e3
	inc (hl)
	adc a
	adc a
	exx
	inc de
	ld d,#15
	ex (sp),hl
	ld (#322f),a
	ld (hl),#32
	ex de,hl
	ld (hl),#ff
.lcd35
	add hl,sp
	add b
	add b
	sub h
	call lcd94
	and #cd
	and #cd
	and #cd
	and #cd
	sub h
	call lcd94
	and #cd
	and #cd
	and #cd
	and #cd
	dec bc
	adc #0b
	adc #26
	adc #26
	adc #26
	adc #26
	adc #94
	call lcd94
	sub h
	call lcd94
	nop
	nop
	jr c,lcd35
	ld (hl),b
	adc #70
	adc #a6
	adc #a6
	adc #70
	adc #70
	adc #a6
	adc #a6
	adc #f5
	adc #54
	rst #08
	call pe,#74cf
	ret nc
	ld (hl),h
	ret nc
	jp #00d0
.lcd88 equ $ + 3
	db #00,#68,#cd,#05,#d2,#00,#00,#88
.lcd94 equ $ + 7
.lcd90 equ $ + 3
	db #cd,#fd,#d0,#31,#d1,#57,#d1,#8a
	db #d9,#22,#18,#11,#83,#01,#11,#e1
	db #0e,#0e,#8e,#0e,#96,#8a,#8f,#0e
	db #8e,#0e,#8e,#0e,#8e,#96,#8a,#8f
	db #0e,#8e,#11,#11,#8e,#11,#96,#8a
	db #8f,#11,#11,#10,#10,#8e,#10,#96
	db #8a,#8f,#10,#10,#0e,#0e,#8e,#0e
	db #96,#8a,#8f,#0e,#8e,#0e,#8e,#0e
	db #8e,#96,#8a,#8f,#0e,#8e,#0c,#0c
	db #8e,#0c,#96,#8a,#8f,#0c,#0c,#0b
	db #0b,#8e,#0b,#96,#8a,#8f,#0b,#0b
	db #80,#10,#10,#8e,#10,#96,#8a,#8f
	db #10,#8e,#10,#10,#8e,#10,#96,#8a
	db #8f,#10,#8e,#0c,#0c,#8e,#0c,#96
	db #8a,#8f,#0c,#0c,#0b,#0b,#8e,#0b
	db #96,#8a,#8f,#0b,#0b,#80,#8a,#d9
	db #22,#18,#11,#83,#01,#11,#e1,#e3
	db #0e,#1a,#0e,#1a,#0e,#1a,#0e,#1a
	db #0e,#1a,#0e,#1a,#0e,#1a,#0e,#1a
	db #80,#e1,#13,#13,#8e,#13,#96,#8a
	db #8f,#13,#8e,#13,#13,#8e,#13,#96
	db #8a,#8f,#13,#8e,#0e,#0e,#8e,#0e
	db #96,#8a,#8f,#0e,#8e,#0e,#0e,#8e
	db #0e,#96,#8a,#8f,#0e,#8e,#0c,#0c
	db #8e,#0c,#96,#8a,#8f,#0c,#8e,#0c
	db #0c,#8e,#0c,#96,#8a,#8f,#0c,#8e
	db #0e,#0e,#8e,#0e,#96,#8a,#8f,#0e
	db #8e,#0e,#0e,#8e,#0e,#96,#8a,#8f
	db #0e,#8e,#80,#8a,#d7,#15,#15,#11
	db #83,#02,#21,#86,#fe,#ff,#01,#00
	db #02,#88,#03,#01,#02,#e3,#32,#8e
	db #32,#30,#2d,#30,#32,#8e,#35,#35
	db #35,#34,#8e,#35,#34,#8e,#e3,#32
	db #8e,#32,#30,#2d,#30,#32,#8e,#30
	db #30,#30,#2f,#8e,#30,#2f,#8e,#87
	db #80,#8b,#d3,#17,#44,#11,#e3,#82
	db #31,#8a,#dd,#00,#15,#11,#b1,#34
	db #8e,#e1,#32,#8f,#e3,#34,#8a,#d5
	db #13,#15,#21,#40,#3b,#34,#c0,#0a
	db #30,#30,#30,#2f,#8e,#30,#2f,#8e
	db #8b,#d3,#17,#44,#11,#e3,#82,#31
	db #8a,#dd,#00,#15,#11,#b1,#34,#8e
	db #e1,#32,#8f,#e3,#34,#8a,#d5,#13
	db #15,#21,#40,#3b,#34,#c0,#0a,#37
	db #37,#37,#36,#8e,#37,#36,#8e,#80
	db #8a,#dd,#00,#26,#11,#86,#fe,#ff
	db #01,#00,#02,#e1,#32,#34,#35,#8f
	db #c0,#0a,#32,#34,#35,#8f,#c0,#09
	db #32,#34,#35,#8f,#c0,#07,#32,#34
	db #35,#8f,#c0,#05,#32,#34,#35,#8f
	db #c0,#04,#32,#34,#35,#8f,#c0,#03
	db #32,#34,#35,#8f,#c0,#02,#32,#34
	db #35,#8f,#c0,#0d,#32,#34,#35,#8f
	db #c0,#0a,#32,#34,#35,#8f,#c0,#09
	db #32,#34,#35,#8f,#c0,#07,#32,#34
	db #35,#8f,#d1,#18,#11,#a2,#86,#b8
	db #00,#02,#80,#5c,#ff,#32,#80,#d7
	db #90,#11,#00,#87,#88,#01,#01,#03
	db #ef,#32,#86,#fe,#ff,#01,#00,#02
	db #8a,#da,#13,#15,#11,#83,#02,#21
	db #88,#02,#01,#02,#e3,#32,#34,#8e
	db #35,#8e,#34,#32,#30,#32,#34,#8e
	db #ef,#30,#f3,#2b,#e0,#c0,#06,#26
	db #28,#2b,#2d,#32,#34,#37,#39,#3e
	db #40,#43,#45,#4a,#4c,#4f,#51,#26
	db #28,#2b,#2d,#32,#34,#37,#39,#3e
	db #40,#43,#45,#4a,#4c,#4f,#51,#26
	db #28,#2b,#2d,#32,#34,#37,#39,#3e
	db #40,#43,#45,#4a,#4c,#4f,#51,#c0
	db #0a,#e3,#32,#34,#8e,#35,#8e,#34
	db #32,#30,#32,#34,#8e,#ff,#30,#e0
	db #c0,#05,#4a,#48,#45,#43,#41,#3e
	db #43,#41,#3e,#3e,#3c,#39,#37,#35
	db #32,#37,#35,#32,#4a,#48,#45,#43
	db #41,#3e,#43,#41,#3e,#3e,#3c,#39
	db #37,#35,#32,#37,#35,#32,#80,#ef
	db #8f,#86,#fe,#ff,#01,#00,#02,#8a
	db #d7,#15,#15,#11,#83,#02,#21,#88
	db #02,#01,#02,#e3,#32,#34,#8e,#35
	db #8e,#34,#32,#30,#32,#34,#8e,#ef
	db #30,#f3,#2b,#e0,#c0,#03,#26,#28
	db #2b,#2d,#32,#34,#37,#39,#3e,#40
	db #43,#45,#4a,#4c,#4f,#51,#26,#28
	db #2b,#2d,#32,#34,#37,#39,#3e,#40
	db #43,#45,#4a,#4c,#4f,#51,#26,#28
	db #2b,#2d,#32,#34,#37,#39,#3e,#40
	db #43,#45,#4a,#4c,#4f,#51,#c0,#07
	db #e3,#32,#34,#8e,#35,#8e,#34,#32
	db #30,#32,#34,#8e,#f1,#37,#8e,#d7
	db #00,#18,#11,#b1,#e1,#39,#37,#35
	db #34,#35,#34,#32,#30,#e0,#45,#43
	db #41,#40,#41,#40,#3e,#3c,#51,#4f
	db #4d,#4c,#4d,#4c,#4a,#48,#80,#8a
	db #d7,#12,#15,#11,#83,#00,#00,#88
	db #03,#01,#01,#e1,#26,#2b,#26,#2d
	db #32,#37,#32,#39,#3e,#43,#3e,#45
	db #4a,#4f,#4a,#51,#35,#34,#32,#30
	db #41,#40,#3e,#3c,#34,#32,#30,#2f
	db #40,#3e,#3c,#3b,#e1,#26,#2b,#26
	db #2d,#32,#37,#32,#39,#3e,#43,#3e
	db #45,#4a,#4f,#4a,#51,#37,#35,#34
	db #32,#43,#41,#40,#3e,#34,#32,#30
	db #2f,#40,#3e,#3c,#3b,#80,#83,#01
	db #00,#c0,#09,#eb,#26,#e3,#81,#26
	db #fb,#32,#e3,#81,#32,#ef,#3e,#e1
	db #41,#3e,#3c,#37,#f7,#39,#e1,#37
	db #35,#37,#35,#f7,#32,#eb,#26,#e3
	db #81,#26,#fb,#32,#e3,#81,#32,#ef
	db #3e,#e1,#41,#3e,#3c,#37,#f7,#39
	db #87,#ff,#85,#01,#00,#61,#32,#80
	db #8a,#d9,#22,#18,#11,#83,#01,#11
	db #e1,#0e,#0e,#8e,#0e,#96,#8a,#8f
	db #0e,#8e,#0e,#8e,#0e,#8e,#96,#8a
	db #8f,#0e,#8e,#0c,#0c,#8e,#0c,#96
	db #8a,#8f,#0c,#0c,#09,#09,#8e,#09
	db #96,#8a,#8f,#09,#09,#d9,#22,#14
	db #11,#ef,#0e,#91,#8a,#d7,#15,#15
	db #11,#83,#02,#21,#86,#fe,#ff,#01
	db #00,#02,#88,#03,#01,#02,#e3,#32
	db #8e,#32,#30,#2d,#30,#32,#8e,#30
	db #30,#30,#2d,#8e,#2b,#2d,#8e,#ef
	db #2d,#91,#8a,#d5,#15,#15,#11,#83
	db #02,#21,#e0,#8f,#86,#fe,#ff,#01
	db #00,#02,#88,#03,#01,#02,#e3,#3e
	db #8e,#3e,#3c,#39,#3c,#3e,#8e,#3c
	db #3c,#3c,#39,#8e,#37,#39,#8e,#ee
	db #32,#91,#85,#d1,#b8,#d1,#e1,#d1
	db #8a,#d9,#22,#18,#11,#83,#01,#11
	db #e1,#13,#13,#8e,#13,#96,#8a,#8f
	db #13,#8e,#13,#8e,#13,#8e,#96,#8a
	db #8f,#13,#8e,#15,#15,#8e,#15,#96
	db #8a,#8f,#15,#15,#15,#15,#8e,#15
	db #96,#8a,#8f,#15,#15,#f3,#1a,#e3
	db #15,#1a,#91,#8a,#d7,#15,#15,#11
	db #83,#02,#21,#86,#fe,#ff,#01,#00
	db #02,#88,#03,#01,#02,#e3,#2b,#32
	db #37,#3e,#2b,#32,#37,#3e,#2d,#34
	db #39,#40,#2d,#34,#39,#40,#f3,#3e
	db #e3,#39,#3e,#91,#8a,#d8,#13,#15
	db #11,#83,#02,#21,#88,#03,#01,#02
	db #e3,#37,#3e,#43,#4a,#37,#3e,#43
	db #4a,#39,#40,#45,#4c,#39,#40,#45
.ld204 equ $ + 7
	db #4c,#f3,#4a,#e3,#45,#4a,#91,#94
	db #ff,#8f,#8f,#8f,#8f,#80,#ff,#8f
	db #8f,#80,#ff,#8f,#80,#b6,#d2,#83
	db #d2,#6f,#d2,#63,#d2,#49,#d2,#39
	db #d2,#20,#d2,#da,#21,#16,#12,#8a
	db #88,#0a,#01,#02,#e7,#32,#e5,#36
	db #e7,#32,#e5,#36,#39,#e7,#36,#e5
	db #39,#ff,#3e,#95,#8c,#dc,#12,#25
	db #15,#88,#14,#0f,#01,#85,#1e,#00
	db #50,#fb,#3c,#95,#de,#00,#14,#12
	db #88,#02,#08,#02,#8c,#e7,#00,#8b
	db #da,#22,#17,#16,#88,#00,#14,#02
	db #f3,#b5,#82,#18,#8e,#95,#8a,#dc
	db #13,#18,#13,#85,#07,#80,#40,#ef
	db #0c,#95,#8a,#dc,#13,#18,#13,#85
	db #07,#80,#20,#e7,#0c,#e1,#8c,#30
	db #8a,#e5,#c0,#04,#0c,#95,#8a,#d9
	db #15,#11,#31,#b4,#eb,#18,#e5,#8a
	db #dc,#00,#11,#11,#b6,#c0,#0a,#85
	db #0a,#80,#20,#24,#c0,#08,#85,#0a
	db #80,#20,#24,#c0,#07,#85,#0a,#80
	db #20,#24,#c0,#06,#85,#0a,#80,#20
	db #24,#c0,#04,#85,#0a,#80,#20,#24
	db #95,#df,#00,#18,#05,#8b,#88,#01
	db #28,#02,#ef,#5f,#e5,#de,#00,#12
	db #01,#c0,#0c,#5f,#c0,#0a,#5f,#c0
	db #08,#5f,#c0,#06,#5f,#c0,#04,#5f
	db #95
	db #6f,#66,#20,#44,#61,#74,#61,#20
	db #bf,#45,#6e,#64,#20,#6f,#66,#20
	db #44,#61,#74,#61,#20,#bf,#4c,#65
	db #6e,#67,#74,#68,#20,#6f,#66,#20
	db #44,#61,#74,#61,#20,#bf,#54,#6f
	db #6b,#65
.l0034
	db #00
.l0035
	db #00
.l0036
	db #00
;
.init_music		; added by Megachur
;
	or a
	jr nz,init_music1
	ld a,1
	jr call_real_init__music
init_music1
	dec a
	jr nz,init_music2
	ld a,2
	jr call_real_init__music
init_music2	
	ld a,4
call_real_init__music
	jp real_init_music
;
.music_info
	db "Psycho Hopper (1989)(Mastertronic)(Tiny Williams)",0
	db "yniT 9891 (c)",0

	read "music_end.asm";
