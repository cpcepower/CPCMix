; Music of Isometrikum (2018)(Vanity)(Tom & Jerry)()
; Ripped by Megachur the 15/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ISOMETRI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #2000
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

.l2000
	db #00,#00,#08,#00,#00,#04,#24,#00
	db #00,#18,#18,#08,#04,#24,#24,#24
	db #18,#18,#18,#18,#8c,#24,#24,#60
	db #4c,#18,#18,#c4,#8c,#8c,#60,#c8
	db #4c,#4c,#c4,#c4,#8c,#8c,#c8,#c8
	db #4c,#4c,#c4,#c4,#8c,#8c,#c8,#c8
	db #4c,#4c,#c4,#c4,#04,#8c,#c8,#88
	db #00,#4c,#c4,#00,#00,#04,#88,#00
	db #00,#20,#00,#10,#03,#00,#00,#00
;
.stop_music
.l2048
;
	ld hl,l2000
	ld de,#0017
	ld bc,#030a
	xor a
.l2052
	call l2338
	ld (hl),a
	inc hl
	ld (hl),a
	add hl,de
	dec c
	djnz l2052
	ret
;
.real_init_music
.l205d
;
	xor a
	call l2064
	call l2064
.l2064
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ex de,hl
	add hl,de
	ex de,hl
	ld c,a
	call l2314
	ld a,c
	inc a
	push af
	push hl
	ld hl,#1fe8
	ld bc,#0018
.l2079
	add hl,bc
	dec a
	jr nz,l2079
	ld b,#03
.l207f
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	djnz l207f
	ld b,#04
	inc a
.l2088
	ld (hl),a
	inc hl
	djnz l2088
	ld (hl),#ff
	xor a
	ld b,#0d
.l2091
	inc hl
	ld (hl),a
	djnz l2091
	pop hl
	pop af
	ret
;
.play_music
.l2098
;
.l2099 equ $ + 1
	ld l,#00
	ld de,l20b3
	ld a,(de)
	call l232e
	ld (de),a
	ld bc,#00ff
	ld ix,l2000
	call l20c3
	call l20c3
	call l20c3
.l20b3 equ $ + 1
	ld a,#00
.l20b5 equ $ + 1
	cp #00
	ret z
	ld (l20b5),a
	rrca
	rrca
	rrca
	push bc
	ld c,#06
	jp l2339
.l20c3
	inc c
	ld e,(ix+#00)
	ld d,(ix+#01)
	ld a,d
	or e
	jr z,l210c
	dec (ix+#07)
	jr nz,l20dc
	ld a,(ix+#06)
	ld (ix+#07),a
	dec (ix+#09)
.l20dc
	jr nz,l215b
.l20de
	ld a,(de)
	inc de
	cp #f0
	jr c,l20f5
	jr z,l2102
	ld hl,l20de
	push hl
	ld l,c
	ld c,a
	ld a,l
	ld hl,l2180
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld c,a
	jp (hl)
.l20f5
	cp #8f
	jr c,l210e
	jr z,l210e
	sub #8f
	ld (ix+#08),a
	jr l20de
.l2102		; end 1st music
	call l2314
	xor a
	ld (ix+#00),a
	ld (ix+#01),a
.l210c
	jr l215f
.l210e
	ld (ix+#00),e
	ld (ix+#01),d
	ld d,(ix+#08)
	ld (ix+#09),d
	jr z,l2151
	cp #80
	jr z,l215b
	jr nc,l2125
	add (ix+#0c)
.l2125
	ld (ix+#0d),a
	ld e,a
	ld a,(ix+#11)
	and #30
	ld (ix+#11),a
	cp #10
	jr z,l2157
	ld a,(ix+#15)
	and a
	jr z,l2149
	ld (l20b3),a
	ld a,(ix+#16)
	cp #80
	jr z,l2148
	ld (l2099),a
.l2148
	or d
.l2149
	call l2310
	ld a,(ix+#0a)
	and a
.l2151 equ $ + 1
	ld h,#af
	ld (ix+#0b),a
	jr z,l215f
.l2157
	ld a,e
	jp l221a
.l215b
	ld a,(ix+#0b)
	and a
.l215f
	jp z,l2266
	ld l,(ix+#10)
	ld h,a
	ld a,l
	sub #60
	cp #40
	jr nc,l217a
	add a
	add a
	add a
	ld l,a
	ld a,(ix+#0a)
	jr nc,l217b
	cp h
	jr nz,l217e
.l217a equ $ + 1
	ld e,#7c
.l217b
	call l232e
.l2180 equ $ + 2
.l217e
	ld (ix+#0b),a
	ld a,(ix+#16)
	add a
	call pe,l2314
	bit 7,(ix+#17)
	jr nz,l21c4
	ld a,(ix+#11)
	and a
.l2192
	jp z,l225d
	ld e,(ix+#12)
	ld d,(ix+#13)
	bit 4,a
	jr z,l21ea
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	bit 5,a
	jr nz,l21b9
	ld a,h
	cp d
	jr nz,l21b1
	ld a,l
	cp e
	jr z,l2192
.l21b1
	adc hl,de
	srl h
	rr l
	jr l21e8
.l21b9
	dec d
	inc d
	jr z,l21cf
	inc a
	ld (ix+#11),a
	and #0f
	cp d
.l21c4
	jp nz,l225d
	xor (ix+#11)
	add #40
	ld (ix+#11),a
.l21cf
	bit 3,e
	jr z,l21d6
	res 3,e
	cpl
.l21d6
	ld d,h
	dec d
	inc d
	jr z,l21e1
.l21db
	sla e
	srl d
	jr nz,l21db
.l21e1
	add a
	jr c,l21e7
	sbc hl,de
.l21e7 equ $ + 1
	ld d,#19
.l21e8
	jr l224a
.l21ea
	add #40
	jr c,l21ea
	ld (ix+#11),a
	add #60
	ld a,d
	jr nc,l2200
	ld a,b
	jr nz,l2200
	or e
	jr nz,l2200
	ld (ix+#11),#20
.l2200
	cp #0d
	jr c,l2212
	rrca
	ld a,#18
	jr z,l2212
	ld a,#f4
	jr c,l220e
	add a
.l220e
	ld (ix+#11),#60
.l2212
	add (ix+#0d)
	cp (ix+#17)
	jr z,l225d
.l221a
	ld (ix+#17),a
	ld h,b
	ld l,b
	add a
	jr c,l223a
.l2222
	inc b
	sub #18
	jr nc,l2222
	add #69
	ld l,a
	adc #22
	sub l
	ld h,a
	ld a,(hl)
	inc hl
	ld h,(hl)
.l2231
	srl h
	rra
	djnz l2231
	ld l,a
	jr nc,l223a
	inc hl
.l223a
	ld a,(ix+#11)
	cp #10
	jr nz,l224a
	ld (ix+#12),l
	ld (ix+#13),h
	jp l215b
.l224a
	ld (ix+#0e),l
	ld (ix+#0f),h
	sla c
	ld a,l
	call l2338
	inc c
	ld a,h
	call l2338
	sra c
.l225d
	ld a,(ix+#0b)
	rrca
	rrca
	rrca
	rrca
	and #0f
.l2266
	ld de,#0018
	add ix,de
	push bc
	set 3,c
	jp l2339
	rrca
	dec d
	ld a,(de)
	ld h,#3f
	ld c,h
	ld b,(hl)
	ld a,l
	ld (hl),e
	sub b
	add (hl)
	ld c,a
	ld c,e
	ld l,b
	ld a,h
	ld e,(ix+#02)
	ld d,(ix+#03)
	ret
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	jr l2290
	ld h,b
	ex de,hl
	ld e,(hl)
.l2290
	inc hl
	ld (ix+#02),l
	ld (ix+#03),h
	add hl,de
	ex de,hl
	ret
	ld a,(de)
	inc de
	and a
	jr z,l22a9
	ld (ix+#14),a
	ld (ix+#04),e
	ld (ix+#05),d
	ret
.l22a9
	dec (ix+#14)
	ret z
	ld e,(ix+#04)
	ld d,(ix+#05)
	ret
	ld a,(de)
	inc de
	ld (ix+#06),a
	ld (ix+#07),a
	ret
	ld a,(de)
	add (ix+#0c)
	ld h,#1a
	ld (ix+#0c),a
	inc de
	ret
	ld l,#10
	ld a,#68
	ld a,(de)
	and a
	jr z,l22d2
	set 5,l
.l22d2
	and #0f
	ld (ix+#12),a
	ld a,(de)
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#13),a
	ld (ix+#11),l
	inc de
	ret
	ld a,(de)
	inc de
	ld (ix+#10),a
	ret
	ld a,(de)
	ld l,a
	ld a,(ix+#0a)
	call l232e
	ld h,#1a
	ld (ix+#0a),a
	inc de
	ret
	ld a,(de)
	inc de
	ld (ix+#16),a
	ret
	ld a,(de)
	ld l,a
	ld a,(ix+#15)
	call l232e
	ld h,#1a
	ld (ix+#15),a
	inc de
	ret
.l2310
	ld a,#f3
	jr nz,l2316
.l2314
	ld a,#fb
.l2316
	add c
	rlca
	rlca
	rlca
	ld (l2321),a
	ld a,(l2323)
.l2321 equ $ + 1
	bit 3,a
.l2323 equ $ + 1
	cp #00
	ret z
	ld (l2323),a
	push bc
	ld c,#07
	jp l2339
.l232e
	add l
	bit 7,l
	jr nz,l2335
	ret nc
	sbc a
.l2335
	ret c
	sbc a
	ret
.l2338
	push bc
.l2339
	ld b,#f4
	out (c),c
	ld bc,#f6c0
	out (c),c
	db #ed,#71 ; out (c),0
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	pop bc
	ret
	db #dd,#1d,#30,#1c,#9b,#1a,#1d,#19
	db #b4,#17,#5f,#16,#1e,#15,#ef,#13
	db #d0,#12,#c2,#11,#c3,#10,#d2,#0f
	db #f5,#04,#f2,#f3,#00,#f6,#fc,#f2
	db #ee,#00,#f6,#03,#f2,#e9,#00,#f6
	db #fe,#f2,#e4,#00,#f6,#00,#f2,#f0
	db #00,#f6,#fc,#f2,#eb,#00,#f6,#03
	db #f2,#e6,#00,#f6,#fe,#f2,#e1,#00
	db #f6,#00,#f2,#dc,#00,#f6,#08,#f2
	db #d7,#00,#f6,#03,#f2,#d2,#00,#f6
	db #fe,#f2,#cd,#00,#f6,#00,#f2,#da
	db #00,#f2,#fb,#00,#f6,#fc,#f2,#d2
	db #00,#f6,#fb,#f2,#cd,#00,#f6,#03
	db #f2,#c8,#00,#f6,#05,#f2,#c3,#00
	db #f6,#00,#f2,#be,#00,#f6,#fc,#f2
	db #dd,#00,#f6,#03,#f2,#b4,#00,#f6
	db #02,#f2,#d3,#00,#f6,#00,#f2,#aa
	db #00,#f6,#fc,#f2,#c9,#00,#f6,#03
	db #f2,#a0,#00,#f6,#fe,#f2,#bf,#00
	db #f6,#fc,#f2,#96,#00,#f6,#03,#f2
	db #91,#00,#f6,#f9,#f2,#8c,#00,#f6
	db #fc,#f2,#87,#00,#f6,#00,#f2,#a6
	db #00,#f6,#03,#f2,#7d,#00,#f6,#05
	db #f2,#78,#00,#f6,#0a,#f2,#73,#00
	db #f6,#fc,#f2,#6e,#00,#f2,#8f,#00
	db #af,#fe,#fe,#fa,#00,#fd,#22,#15
	db #1a,#f6,#f7,#1a,#f6,#f9,#1a,#f6
	db #00,#f2,#57,#00,#f6,#03,#f2,#52
	db #00,#f6,#fe,#f2,#71,#00,#f6,#ff
	db #f2,#6c,#00,#f6,#00,#f2,#31,#00
	db #f2,#40,#00,#93,#f8,#e8,#fe,#78
	db #fc,#0c,#33,#32,#33,#97,#30,#93
	db #2b,#30,#32,#94,#33,#32,#33,#b0
	db #f8,#d0,#fe,#ff,#30,#af,#80,#f0
	db #f4,#02,#93,#fe,#f8,#18,#91,#18
	db #93,#24,#91,#24,#93,#18,#f4,#00
	db #f1,#f4,#02,#91,#fe,#f8,#fa,#00
	db #18,#18,#24,#18,#18,#24,#18,#24
	db #f4,#00,#f1,#f4,#02,#91,#fe,#f8
	db #fa,#00,#fc,#00,#18,#18,#fe,#ec
	db #fa,#10,#30,#fe,#f8,#fa,#00,#18
	db #18,#24,#fe,#ec,#fa,#10,#30,#fe
	db #f8,#fa,#00,#24,#f4,#00,#f1,#fe
	db #f8,#fa,#00,#18,#18,#fe,#ec,#fa
	db #10,#30,#fe,#f8,#fa,#00,#18,#18
	db #24,#fe,#ec,#fa,#10,#30,#fe,#f8
	db #fa,#00,#24,#18,#18,#fe,#ec,#fa
	db #10,#30,#fe,#f8,#fa,#00,#18,#18
	db #24,#fe,#ec,#fa,#10,#30,#30,#f1
	db #f5,#04,#f6,#0c,#af,#80,#80,#f6
	db #00,#f8,#e8,#fe,#78,#fc,#0c,#37
	db #a3,#33,#9b,#32,#af,#37,#f6,#f9
	db #37,#f6,#f7,#37,#f6,#00,#a3,#2e
	db #9b,#2c,#f2,#9c,#00,#93,#33,#32
	db #33,#97,#30,#93,#2b,#30,#32,#f6
	db #fb,#f2,#8d,#00,#f6,#ff,#93,#33
	db #31,#33,#97,#2f,#93,#2a,#97,#2f
	db #f6,#00,#f2,#83,#00,#f4,#02,#f2
	db #7e,#00,#f2,#dd,#00,#f4,#00,#f2
	db #d8,#00,#f4,#07,#f2,#71,#00,#f4
	db #00,#f2,#ce,#00,#f2,#69,#00,#f6
	db #fb,#f2,#64,#00,#f6,#00,#f2,#1f
	db #01,#f6,#05,#f2,#1a,#01,#f6,#00
	db #f2,#55,#00,#f6,#05,#f2,#10,#01
	db #f6,#fe,#f2,#0b,#01,#f6,#00,#f2
	db #06,#01,#f2,#43,#00,#f2,#40,#00
	db #f2,#5b,#01,#f6,#02,#f2,#56,#01
	db #f6,#03,#f2,#51,#01,#f6,#f9,#f2
	db #4c,#01,#f6,#00,#f2,#58,#01,#f6
	db #03,#f2,#53,#01,#f6,#fe,#f2,#4e
	db #01,#f6,#03,#f2,#49,#01,#f6,#f9
	db #af,#fe,#fe,#fd,#22,#37,#37,#f6
	db #ed,#37,#f6,#00,#bf,#80,#af,#80
	db #f0,#93,#33,#32,#33,#a3,#30,#f1
	db #91,#f8,#ee,#fe,#f8,#fc,#00,#3c
	db #90,#37,#f8,#cc,#3c,#f8,#ee,#30
	db #f8,#cc,#37,#f8,#ee,#37,#f8,#cc
	db #30,#f8,#ee,#3f,#f8,#cc,#37,#f8
	db #ee,#3c,#f8,#cc,#3f,#f8,#ee,#37
	db #f8,#cc,#3c,#f8,#ee,#30,#f8,#cc
	db #37,#f8,#ee,#3c,#f8,#cc,#30,#f8
	db #ee,#37,#f8,#cc,#3c,#f8,#ee,#30
	db #f8,#cc,#37,#f8,#ee,#37,#f8,#cc
	db #30,#f8,#ee,#3f,#f8,#cc,#37,#f8
	db #ee,#3c,#f8,#cc,#3f,#f8,#ee,#37
	db #f8,#cc,#3c,#f8,#ee,#30,#f8,#cc
	db #37,#f1,#91,#f8,#ee,#3f,#90,#3c
	db #f8,#cc,#3f,#f8,#ee,#37,#f8,#cc
	db #3c,#f8,#ee,#30,#f8,#cc,#37,#f8
	db #ee,#41,#f8,#cc,#30,#f8,#ee,#3f
	db #f8,#cc,#41,#f8,#ee,#3c,#f8,#cc
	db #3f,#f8,#ee,#37,#f8,#cc,#3c,#f8
	db #ee,#3f,#f8,#cc,#37,#f8,#ee,#3c
	db #f8,#cc,#3f,#f8,#ee,#37,#f8,#cc
	db #3c,#f8,#ee,#30,#f8,#cc,#37,#f8
	db #ee,#41,#f8,#cc,#30,#f8,#ee,#3f
	db #f8,#cc,#41,#f8,#ee,#3c,#f8,#cc
	db #3f,#f8,#ee,#37,#f8,#cc,#3c,#f1
	db #91,#f8,#ee,#3a,#90,#35,#f8,#cc
	db #3a,#f8,#ee,#2e,#f8,#cc,#35,#f8
	db #ee,#35,#f8,#cc,#2e,#f8,#ee,#3a
	db #f8,#cc,#35,#f8,#ee,#35,#f8,#cc
	db #3a,#f8,#ee,#3c,#f8,#cc,#35,#f8
	db #ee,#35,#f8,#cc,#3c,#f8,#ee,#3a
	db #f8,#cc,#35,#f8,#ee,#35,#f8,#cc
	db #3a,#f8,#ee,#2e,#f8,#cc,#35,#f8
	db #ee,#35,#f8,#cc,#2e,#f8,#ee,#3a
	db #f8,#cc,#35,#f8,#ee,#35,#f8,#cc
	db #3a,#f8,#ee,#3c,#f8,#cc,#35,#f8
	db #ee,#35,#f8,#cc,#3c,#f1,#95,#f8
	db #e8,#fe,#78,#fc,#0c,#30,#3c,#93
	db #30,#95,#3c,#30,#93,#3c,#f1,#93
	db #f8,#ff,#fe,#fc,#fc,#00,#24,#2b
	db #91,#24,#93,#30,#2b,#91,#24,#93
	db #2b,#2e,#91,#27,#26,#f1,#f5,#04
	db #f6,#0c,#af,#80,#80,#80,#80,#f2
	db #55,#01,#95,#35,#93,#35,#91,#35
	db #a3,#35,#95,#3f,#93,#3f,#91,#3f
	db #93,#3f,#95,#3f,#91,#3f,#41,#3f
	db #93,#3e,#95,#3c,#93,#3c,#91,#3c
	db #93,#3c,#95,#3c,#93,#3c,#91,#3c
	db #93,#3c,#95,#3a,#93,#3a,#91,#3a
	db #93,#3a,#95,#3a,#91,#3a,#93,#38
	db #37,#95,#35,#93,#35,#91,#35,#93
	db #35,#9f,#35,#f6,#05,#af,#fe,#fe
	db #fd,#22,#37,#f6,#08,#37,#f6,#00
	db #37,#f6,#fe,#37,#f6,#05,#f2,#2d
	db #01,#f6,#09,#f2,#28,#01,#f6,#0c
	db #f2,#f4,#00,#f2,#3b,#01,#95,#3f
	db #93,#3f,#91,#3f,#93,#3f,#95,#3f
	db #91,#3f,#41,#3f,#93,#3e,#95,#3c
	db #93,#3c,#91,#3c,#93,#3c,#95,#3c
	db #93,#3c,#91,#3c,#93,#3c,#95,#3a
	db #93,#3a,#91,#3a,#93,#3a,#95,#3a
	db #91,#3a,#93,#38,#37,#f2,#09,#01
	db #9b,#37,#91,#38,#95,#3f,#91,#37
	db #93,#3f,#3e,#91,#3a,#f2,#04,#01
	db #9b,#80,#93,#3c,#3a,#91,#38,#93
	db #37,#38,#91,#3a,#93,#80,#38,#37
	db #91,#35,#93,#37,#38,#37,#35,#91
	db #37,#9b,#80,#91,#38,#95,#3f,#91
	db #37,#93,#3f,#3e,#91,#3a,#f2,#db
	db #00,#9b,#80,#93,#3c,#3a,#91,#38
	db #93,#37,#35,#91,#38,#93,#80,#91
	db #37,#93,#35,#33,#32,#33,#35,#37
	db #91,#fe,#fe,#fd,#22,#2b,#af,#80
	db #29,#9b,#fe,#fc,#fc,#0f,#37,#91
	db #38,#93,#37,#35,#37,#38,#91,#3a
	db #9b,#80,#91,#3c,#93,#3a,#3c,#3f
	db #95,#41,#43,#41,#93,#3f,#95,#3a
	db #38,#93,#37,#95,#37,#38,#93,#3a
	db #95,#37,#38,#93,#3a,#f6,#05,#af
	db #fe,#fe,#fd,#22,#37,#f6,#fc,#37
	db #f6,#f4,#9b,#f8,#f0,#43,#97,#41
	db #9b,#3f,#a3,#f8,#ff,#3a,#9b,#38
	db #f6,#00,#91,#fe,#fc,#fc,#0f,#37
	db #3c,#3f,#41,#43,#93,#46,#a1,#48
	db #f2,#6e,#00,#f6,#0c,#f2,#69,#00
	db #bf,#3c,#f6,#00,#af,#80,#f0,#95
	db #fe,#fc,#fa,#00,#fc,#0f,#30,#30
	db #93,#30,#95,#30,#30,#93,#32,#95
	db #33,#33,#93,#33,#95,#33,#93,#33
	db #90,#33,#34,#93,#35,#95,#37,#93
	db #37,#91,#37,#93,#37,#95,#37,#93
	db #37,#91,#37,#93,#37,#f1,#f4,#02
	db #93,#fe,#f8,#fa,#00,#fd,#0f,#30
	db #91,#30,#93,#30,#91,#30,#30,#fe
	db #ec,#fa,#10,#fc,#00,#24,#f4,#00
	db #f1,#95,#35,#93,#35,#91,#35,#93
	db #35,#9f,#35,#f1,#9b,#80,#93,#37
	db #3f,#91,#37,#93,#3f,#3e,#91,#3a
	db #f1,#91,#37,#3c,#3f,#41,#43,#93
	db #46,#48,#91,#46,#43,#46,#43,#41
	db #3f,#3e,#f1,#f5,#06,#f6,#00,#f2
	db #12,#00,#f6,#fe,#f2,#0d,#00,#f6
	db #05,#f2,#08,#00,#f6,#03,#f2,#03
	db #00,#f2,#e9,#ff,#91,#f8,#ef,#fe
	db #7c,#1e,#1e,#2a,#1e,#1e,#93,#1e
	db #1e,#91,#1e,#2a,#93,#1e,#91,#1e
	db #2a,#1e,#f1,#f5,#06,#f4,#04,#f6
	db #00,#91,#f8,#ff,#fe,#ec,#fa,#40
	db #fc,#00,#24,#93,#fe,#70,#fa,#30
	db #2a,#91,#2a,#fe,#ec,#fa,#40,#24
	db #24,#fe,#70,#fa,#30,#2a,#2a,#fe
	db #ec,#fa,#40,#24,#93,#fe,#70,#fa
	db #30,#2a,#91,#fe,#ec,#fa,#40,#24
	db #fe,#70,#fa,#30,#2a,#90,#2a,#36
	db #fe,#ec,#fa,#40,#24,#fe,#70,#fa
	db #30,#36,#91,#2a,#f4,#00,#f2,#12
	db #00,#f6,#03,#f2,#b5,#00,#f6,#f9
	db #f2,#08,#00,#f6,#fc,#f2,#ab,#00
	db #f2,#a2,#ff,#91,#f8,#ff,#fe,#ec
	db #fa,#40,#fc,#00,#30,#90,#f8,#e0
	db #fe,#f8,#fa,#00,#fc,#0c,#31,#f8
	db #c0,#36,#f8,#e0,#36,#f8,#c0,#31
	db #f8,#e0,#31,#f8,#c0,#36,#f8,#ff
	db #fe,#ec,#fa,#40,#fc,#00,#30,#f8
	db #c0,#fe,#f8,#fa,#00,#fc,#0c,#36
	db #f8,#ff,#fe,#ec,#fa,#40,#fc,#00
	db #3c,#f8,#c0,#fe,#f8,#fa,#00,#fc
	db #0c,#36,#f8,#e0,#36,#f8,#c0,#31
	db #f8,#e0,#31,#f8,#c0,#36,#f8,#ff
	db #fe,#ec,#fa,#40,#fc,#00,#30,#f8
	db #c0,#fe,#f8,#fa,#00,#fc,#0c,#31
	db #f8,#e0,#31,#f8,#c0,#36,#f8,#e0
	db #36,#f8,#c0,#31,#f8,#ff,#fe,#ec
	db #fa,#40,#fc,#00,#30,#f8,#c0,#fe
	db #f8,#fa,#00,#fc,#0c,#36,#f8,#e0
	db #36,#f8,#c0,#31,#f8,#e0,#31,#f8
	db #c0,#36,#f8,#ff,#fe,#ec,#fa,#40
	db #fc,#00,#30,#f8,#c0,#fe,#f8,#fa
	db #00,#fc,#0c,#36,#f8,#e0,#36,#f8
	db #c0,#31,#f1,#91,#f8,#ff,#fe,#ec
	db #fa,#40,#fc,#00,#30,#90,#f8,#e0
	db #fe,#f8,#fa,#00,#fc,#0c,#31,#f8
	db #c0,#36,#f8,#e0,#36,#f8,#c0,#31
	db #f8,#e0,#31,#f8,#c0,#36,#f8,#ff
	db #fe,#ec,#fa,#40,#fc,#00,#30,#f8
	db #c0,#fe,#f8,#fa,#00,#fc,#0c,#36
	db #f8,#ff,#fe,#ec,#fa,#40,#fc,#00
	db #3c,#f8,#c0,#fe,#f8,#fa,#00,#fc
	db #0c,#35,#f8,#e0,#35,#f8,#c0,#31
	db #f8,#e0,#31,#f8,#c0,#35,#f8,#ff
	db #fe,#ec,#fa,#40,#fc,#00,#30,#f8
	db #c0,#fe,#f8,#fa,#00,#fc,#0c,#31
	db #f8,#e0,#31,#f8,#c0,#35,#f8,#e0
	db #35,#f8,#c0,#31,#f8,#ff,#fe,#ec
	db #fa,#40,#fc,#00,#30,#f8,#c0,#fe
	db #f8,#fa,#00,#fc,#0c,#35,#f8,#e0
	db #35,#f8,#c0,#31,#f8,#e0,#31,#f8
	db #c0,#35,#f8,#ff,#fe,#ec,#fa,#40
	db #fc,#00,#30,#f8,#c0,#fe,#f8,#fa
	db #00,#fc,#0c,#35,#f8,#e0,#35,#f8
	db #c0,#31,#f1,#f5,#06,#97,#f8,#e0
	db #fe,#fc,#fc,#0c,#36,#91,#39,#93
	db #3d,#95,#42,#93,#40,#3d,#39,#97
	db #34,#91,#38,#93,#3b,#95,#45,#93
	db #44,#40,#3b,#97,#2f,#91,#3b,#93
	db #3d,#95,#3e,#93,#40,#42,#39,#97
	db #39,#91,#3d,#93,#3e,#95,#40,#93
	db #3e,#40,#39,#f2,#c7,#ff,#00,#00
	db #00,#00,#00,#01
;
; #2add
;
	ds #2add-$,#00	; added by Megachur
;
.l2ae3 equ $+6
.l2add
;
	db #8a,#f8,#f8,#f9,#04,#fc,#d7,#fd
	db #05,#fe,#b3,#ff,#00,#40,#00,#40
	db #00,#40,#5f,#5b,#4b,#5b,#5f,#00
	db #80,#08,#88,#20,#80,#08,#08,#02
	db #20,#80,#80,#08,#80,#08,#80,#08
	db #20,#80,#80,#08,#20,#88,#88,#28
	db #20,#88,#88,#28,#20,#88,#88,#28
	db #88,#28,#88,#28,#88,#28,#88,#28
	db #88,#28,#88,#28,#88,#28,#28,#0a
	db #88,#28,#28,#0a,#28,#0a,#28,#0a
	db #28,#0a,#28,#0a,#28,#0a,#0a,#2a
	db #28,#0a,#0a,#2a,#0a,#2a,#0a,#2a
	db #0a,#2a,#0a,#2a,#0a,#2a,#0a,#2a
	db #0a,#2a,#2a,#aa,#0a,#2a,#2a,#aa
	db #0a,#2a,#2a,#aa,#2a,#aa,#2a,#aa
	db #2a,#aa,#2a,#aa,#2a,#aa,#2a,#aa
	db #2a,#aa,#2a,#aa,#20,#88,#88,#a0
	db #20,#88,#88,#a0,#88,#a0,#88,#a0
	db #88,#a0,#88,#a0,#88,#a0,#a0,#82
	db #88,#a0,#a0,#82,#a0,#82,#a0,#82
	db #a0,#82,#a0,#82,#a0,#82,#82,#8a
	db #a0,#82,#82,#8a,#82,#8a,#82,#8a
	db #82,#8a,#82,#8a,#82,#8a,#8a,#2a
	db #82,#8a,#8a,#2a,#8a,#2a,#8a,#2a
	db #8a,#2a,#8a,#2a,#20,#88,#88,#a8
	db #20,#88,#88,#a8,#20,#88,#88,#a8
	db #88,#a8,#88,#a8,#88,#a8,#88,#a8
	db #88,#a8,#88,#a8,#88,#a8,#a8,#0a
	db #88,#a8,#a8,#0a,#88,#a8,#a8,#0a
	db #a8,#0a,#a8,#0a,#a8,#0a,#a8,#0a
	db #a8,#0a,#0a,#22,#a8,#0a,#0a,#22
	db #0a,#22,#0a,#22,#0a,#22,#0a,#22
	db #0a,#22,#22,#aa,#0a,#22,#22,#aa
	db #0a,#22,#22,#aa,#22,#aa,#22,#aa
	db #22,#aa,#22,#aa,#22,#aa,#22,#aa
	db #a2,#82,#82,#aa,#88,#82,#82,#2a
	db #a0,#aa,#a0,#aa,#a0,#aa,#a0,#aa
	db #02,#a0,#a0,#aa,#02,#a0,#a0,#aa
	db #a2,#82,#82,#aa,#a2,#82,#82,#aa
	db #a2,#82,#a2,#82,#a2,#82,#a2,#82
	db #88,#a8,#88,#a8,#88,#a8,#88,#a8
	db #88,#a8,#a8,#0a,#88,#a8,#a8,#0a
	db #88,#a8,#a8,#22,#88,#a8,#a8,#22
	db #a8,#22,#a8,#22,#a8,#22,#a8,#22
	db #a8,#8a,#8a,#22,#a8,#8a,#8a,#22
	db #a2,#28,#28,#8a,#a2,#28,#28,#8a
	db #28,#8a,#28,#8a,#28,#8a,#28,#8a
	db #28,#8a,#8a,#2a,#28,#8a,#8a,#2a
	db #8a,#2a,#8a,#2a,#8a,#2a,#8a,#2a
	db #8a,#2a,#2a,#aa,#8a,#2a,#2a,#aa
	db #08,#02,#02,#a0,#08,#02,#02,#a0
	db #08,#02,#08,#02,#08,#02,#08,#02
	db #80,#08,#08,#02,#80,#08,#08,#02
	db #80,#08,#80,#08,#80,#08,#80,#08
	db #20,#80,#80,#08,#20,#80,#80,#08
	db #01,#12,#00,#0c,#00,#08,#00,#12
	db #02,#0c,#02,#00,#12,#00,#12,#01
	db #12,#02,#00,#0c,#00,#0c,#02,#04
	db #00,#04,#02,#00,#12,#00,#12,#01
	db #0c,#00,#08,#00,#04,#00,#00,#12
	db #01,#12,#02,#0c,#00,#0c,#01,#00
	db #0c,#00,#0c,#01,#0c,#02,#04,#01
	db #00,#00,#3f,#01,#30,#02,#33,#03
	db #8b,#04,#26,#05,#00,#06,#15,#07
	db #1d,#08,#00,#09,#07,#0c,#30,#0d
	db #00,#00,#54,#01,#44,#02,#55,#03
	db #5c,#04,#54,#05,#5d,#06,#4c,#07
	db #56,#08,#5f,#09,#40,#0a,#4e,#0b
	db #47,#0c,#52,#0d,#58,#0e,#43,#0f
	db #4b,#10,#54,#8c,#c0
;
; #2d34
; call #2048	; init music 1
; ld hl,#2add
; call #205d
;
; #2e20
; call #2048	; init music 2
; ld hl,#2ae3
; call #205d

;
.init_music		; added by Megachur
;
	call stop_music
	ld hl,l2add
	or a
	jp z,real_init_music
	ld hl,l2ae3
	jp real_init_music
;
.music_info
	db "Isometrikum (2018)(Vanity)(Tom & Jerry)",0
	db "",0

	read "music_end.asm"
