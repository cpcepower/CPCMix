; Music of CEZ Collection Volume 1 - Face A (2008)(CEZ Games Studio)()(Protracker 3.5)
; Ripped by Megachur the 29/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CEZCV1FA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #1a4d

	read "music_header.asm"

;
.init_music
.l1a4d
;
	ld hl,l2890
	call l1a7a
	ret
;
.play_music
;
	di
	call l1ef4
	ei
	ret
.l1a5b equ $ + 1
.l1a5a
	db #00,#00,#00
.l1a5d
	ld hl,l1a5a
	set 7,(hl)
	bit 0,(hl)
	ret z
	pop hl
	ld hl,l216e
	inc (hl)
	ld hl,l2132
	inc (hl)
	xor a
	ld h,a
	ld l,a
	ld (l217c),a
	ld (l217d),hl
	jp l1ff4
.l1a7a
	ld (l1be3),hl
	ld (l1d79),hl
	push hl
	ld de,#0064
	add hl,de
	ld a,(hl)
	ld (l1f80),a
	push hl
	pop ix
	add hl,de
	ld (l1a5b),hl
	ld e,(ix+#02)
	add hl,de
	inc hl
	ld (l1f22),hl
	pop de
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,de
	ld (l1f2f),hl
	ld hl,#00a9
	add hl,de
	ld (l1d72),hl
	ld hl,#0069
	add hl,de
	ld (l1bdc),hl
	ld hl,l1a5a
	res 7,(hl)
	ld de,l20e2
	ld bc,l21e5
.l1abc
	ld a,(de)
	inc de
	cp #1e
	jr nc,l1ac8
	ld h,a
	ld a,(de)
	ld l,a
	inc de
	jr l1acf
.l1ac8
	push de
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	pop de
.l1acf
	ld a,h
	ld (bc),a
	dec bc
	ld a,l
	ld (bc),a
	dec bc
	sub #f0
	jr nz,l1abc
	ld hl,l2117
	ld (hl),a
	ld de,l2118
	ld bc,#006c
	ldir
	inc a
	ld (l216e),a
	ld hl,#f001
	ld (l2132),hl
	ld (l214f),hl
	ld (l216c),hl
	ld hl,l20de
	ld (l1f0c),hl
	ld (l2124),hl
	ld (l2141),hl
	ld (l215e),hl
	ld (l2126),hl
	ld (l2143),hl
	ld (l2160),hl
	ld a,(ix-#57)
	sub #30
	jr c,l1b18
	cp #0a
	jr c,l1b1a
.l1b18
	ld a,#06
.l1b1a
	ld (l1cc8),a
	push af
	cp #04
	ld a,(ix-#01)
	rla
	and #07
	ld hl,l208e
	push de
	ld d,b
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	srl e
	sbc a
	and #a7
	ld (l1b5b),a
	ex de,hl
	pop bc
	add hl,bc
	ld a,(de)
	add #9e
	ld c,a
	adc #20
	sub c
	ld b,a
	push bc
	ld de,l2274
	push de
	ld b,#0c
.l1b4a
	push bc
	ld c,(hl)
	inc hl
	push hl
	ld b,(hl)
	push de
	ex de,hl
	ld de,#0017
	ld hx,#08
.l1b57
	srl b
	rr c
.l1b5b
	add hl,de
	ld a,c
	adc d
	ld (hl),a
	inc hl
	ld a,b
	adc d
	ld (hl),a
	add hl,de
	dec hx
	jr nz,l1b57
	pop de
	inc de
	inc de
	pop hl
	inc hl
	pop bc
	djnz l1b4a
	pop hl
	pop de
	ld a,e
	cp #aa
	jr nz,l1b7c
	ld a,#fd
	ld (l22a2),a
.l1b7c
	ld a,(de)
	and a
	jr z,l1b91
	rra
	push af
	add a
	ld c,a
	add hl,bc
	pop af
	jr nc,l1b8a
	dec (hl)
	dec (hl)
.l1b8a
	inc (hl)
	and a
	sbc hl,bc
	inc de
	jr l1b7c
.l1b91
	pop af
	cp #05
	ld hl,#0011
	ld d,h
	ld e,h
	ld a,#17
	jr nc,l1ba0
	dec l
	ld e,l
	xor a
.l1ba0
	ld (l1baf),a
	ld ix,l2184
	ld c,#10
.l1ba9
	push hl
	add hl,de
	ex de,hl
	sbc hl,hl
.l1bae
	ld a,l
.l1baf
	ld a,l
	ld a,h
	adc #00
	ld (ix+#00),a
	inc ix
	add hl,de
	inc c
	ld a,c
	and #0f
	jr nz,l1bae
	pop hl
	ld a,e
	cp #77
	jr nz,l1bc6
	inc e
.l1bc6
	ld a,c
	and a
	jr nz,l1ba9
	jp l1ff4
.l1bcd
	ld (ix+#08),#00
	call l1d6a
	ld a,(bc)
	inc bc
	rrca
.l1bd7
	add a
.l1bd8
	ld e,a
	ld d,#00
.l1bdc equ $ + 1
	ld hl,l2121
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l1be3 equ $ + 1
	ld hl,l2121
	add hl,de
	ld (ix+#03),l
	ld (ix+#04),h
	jr l1c2f
.l1bee
	rlca
	rlca
	rlca
	rlca
	ld (ix+#10),a
	jr l1c32
.l1bf7
	ld (ix+#08),a
	ld (ix-#0c),a
	jr l1c32
.l1bff
	dec a
	jr nz,l1c09
	ld a,(bc)
	inc bc
	ld (ix+#05),a
	jr l1c32
.l1c09
	call l1d4e
	jr l1c32
.l1c0e
	call l1d6a
	jr l1c2f
.l1c13
	ld (ix+#08),a
	ld (ix-#0c),a
	call nz,l1d4e
	ld a,(bc)
	inc bc
	jr l1bd8
.l1c20
	ld a,(ix+#06)
	ld (l1cac),a
	ld l,(ix-#06)
	ld h,(ix-#05)
	ld (l1cce),hl
.l1c2f
	ld de,l2010
.l1c32
	ld a,(bc)
	inc bc
	add e
	jr c,l1bcd
	add d
	jr z,l1c83
	jr c,l1bd7
	add e
	jr z,l1c64
	jr c,l1bee
	add e
	jr z,l1bf7
	jr c,l1bff
	add #60
	jr c,l1c6a
	add e
	jr c,l1c0e
	add d
	jr c,l1c5f
	add e
	jr c,l1c13
	add a
	ld e,a
	ld hl,#fca3
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	jr l1c2f
.l1c5f
	ld (l2172),a
	jr l1c32
.l1c64
	res 0,(ix+#09)
	jr l1c72
.l1c6a
	ld (ix+#06),a
	set 0,(ix+#09)
	xor a
.l1c72
	ld (l1c81),sp
	ld sp,ix
	ld h,a
	ld l,a
	push hl
	push hl
	push hl
	push hl
	push hl
	push hl
.l1c81 equ $ + 1
	ld sp,l3131
.l1c83
	ld a,(ix+#05)
	ld (ix+#0f),a
	ret
.l1c8a
	res 2,(ix+#09)
	ld a,(bc)
	inc bc
	inc bc
	inc bc
	ld (ix+#0a),a
	ld (ix-#07),a
	ld de,l2274
	ld a,(ix+#06)
	ld (ix+#07),a
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
.l1cac equ $ + 1
	ld a,#3e
	ld (ix+#06),a
	add a
	ld l,a
	ld h,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	pop hl
	sbc hl,de
	ld (ix+#0d),l
	ld (ix+#0e),h
	ld e,(ix-#06)
	ld d,(ix-#05)
.l1cc8 equ $ + 1
	ld a,#3e
	cp #06
	jr c,l1cd6
.l1cce equ $ + 1
	ld de,#1111
	ld (ix-#06),e
	ld (ix-#05),d
.l1cd6
	ld a,(bc)
	inc bc
	ex af,af'
	ld a,(bc)
	inc bc
	and a
	jr z,l1cdf
	ex de,hl
.l1cdf
	sbc hl,de
	jp p,l1ce9
	cpl
	ex af,af'
	neg
	ex af,af'
.l1ce9
	ld (ix+#0c),a
	ex af,af'
	ld (ix+#0b),a
	ld (ix-#02),#00
	ret
.l1cf5
	set 2,(ix+#09)
	ld a,(bc)
	inc bc
	ld (ix+#0a),a
	and a
	jr nz,l1d08
	ld a,(l1cc8)
	cp #07
	sbc a
	inc a
.l1d08
	ld (ix-#07),a
	ld a,(bc)
	inc bc
	ex af,af'
	ld a,(bc)
	inc bc
	jr l1ce9
.l1d12
	ld a,(bc)
	inc bc
	ld (ix-#0b),a
	ret
.l1d18
	ld a,(bc)
	inc bc
	ld (ix-#0c),a
	ret
.l1d1e
	ld a,(bc)
	inc bc
	ld (ix-#01),a
	ld (ix-#02),a
	ld a,(bc)
	inc bc
	ld (ix+#00),a
	xor a
	ld (ix-#07),a
	ld (ix-#06),a
	ld (ix-#05),a
	ret
.l1d36
	ld a,(bc)
	inc bc
	ld (l1fea),a
	ld (l2171),a
	ld a,(bc)
	inc bc
	ld l,a
	ld a,(bc)
	inc bc
	ld h,a
	ld (l1fed),hl
	ret
.l1d48
	ld a,(bc)
	inc bc
	ld (l1f80),a
	ret
.l1d4e
	ld (ix+#08),e
	ld (l2181),a
	ld a,(bc)
	inc bc
	ld h,a
	ld a,(bc)
	inc bc
	ld l,a
	ld (l2182),hl
	xor a
	ld (ix-#0c),a
	ld (l2171),a
	ld h,a
	ld l,a
	ld (l216f),hl
.l1d69
	ret
.l1d6a
	add a
	ld e,a
	ld d,#00
	ld (ix-#0c),d
.l1d72 equ $ + 1
	ld hl,l2121
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l1d79 equ $ + 1
	ld hl,l2121
	add hl,de
	ld (ix+#01),l
	ld (ix+#02),h
	ret
	dw l1d69,l1cf5,l1c8a,l1d12
	dw l1d18,l1d1e,l1d69,l1d69
	dw l1d36,l1d48,l1d69,l1d69
	dw l1d69,l1d69,l1d69,l1d69
.l1da3
	xor a
	ld (l217e),a
	bit 0,(ix+#15)
	push hl
	jp z,l1ed1
	ld (l1e1c),sp
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	ld sp,hl
	pop de
	ld h,a
	ld a,(ix+#00)
	ld l,a
	add hl,sp
	inc a
	cp d
	jr c,l1dc6
	ld a,e
.l1dc6
	ld (ix+#00),a
	ld a,(ix+#12)
	add (hl)
	jp p,l1dd1
	xor a
.l1dd1
	cp #60
	jr c,l1dd7
	ld a,#5f
.l1dd7
	add a
	ex af,af'
	ld l,(ix+#0f)
	ld h,(ix+#10)
	ld sp,hl
	pop de
	ld h,#00
	ld a,(ix+#01)
	ld b,a
	add a
	add a
	ld l,a
	add hl,sp
	ld sp,hl
	ld a,b
	inc a
	cp d
	jr c,l1df2
	ld a,e
.l1df2
	ld (ix+#01),a
	pop bc
	pop hl
	ld e,(ix+#08)
	ld d,(ix+#09)
	add hl,de
	bit 6,b
	jr z,l1e08
	ld (ix+#08),l
	ld (ix+#09),h
.l1e08
	ex de,hl
	ex af,af'
	ld l,a
	ld h,#00
	ld sp,l2274
	add hl,sp
	ld sp,hl
	pop hl
	add hl,de
	ld e,(ix+#06)
	ld d,(ix+#07)
	add hl,de
.l1e1c equ $ + 1
	ld sp,l3131
	ex (sp),hl
	xor a
	or (ix+#05)
	jr z,l1e63
	dec (ix+#05)
	jr nz,l1e63
	ld a,(ix+#16)
	ld (ix+#05),a
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,h
	add hl,de
	ld (ix+#06),l
	ld (ix+#07),h
	bit 2,(ix+#15)
	jr nz,l1e63
	ld e,(ix+#19)
	ld d,(ix+#1a)
	and a
	jr z,l1e4e
	ex de,hl
.l1e4e
	sbc hl,de
	jp m,l1e63
	ld a,(ix+#13)
	ld (ix+#12),a
	xor a
	ld (ix+#05),a
	ld (ix+#06),a
	ld (ix+#07),a
.l1e63
	ld a,(ix+#02)
	bit 7,c
	jr z,l1e7d
	bit 6,c
	jr z,l1e75
	cp #0f
	jr z,l1e7d
	inc a
	jr l1e7a
.l1e75
	cp #f1
	jr z,l1e7d
	dec a
.l1e7a
	ld (ix+#02),a
.l1e7d
	ld l,a
	ld a,b
	and #0f
	add l
	jp p,l1e86
	xor a
.l1e86
	cp #10
	jr c,l1e8c
	ld a,#0f
.l1e8c
	or (ix+#1c)
	ld l,a
	ld h,#00
	ld de,l2174
	add hl,de
	ld a,(hl)
	bit 0,c
	jr nz,l1e9e
	or (ix+#14)
.l1e9e
	ld (l217e),a
	bit 7,b
	ld a,c
	jr z,l1ebf
	rla
	rla
	sra a
	sra a
	sra a
	add (ix+#04)
	bit 5,b
	jr z,l1eb8
	ld (ix+#04),a
.l1eb8
	ld hl,l1fc9
	add (hl)
	ld (hl),a
	jr l1ecd
.l1ebf
	rra
	add (ix+#03)
	ld (l2173),a
	bit 5,b
	jr z,l1ecd
	ld (ix+#03),a
.l1ecd
	ld a,b
	rra
	and #48
.l1ed1
	ld hl,l217b
	or (hl)
	rrca
	ld (hl),a
	pop hl
	xor a
	or (ix+#0a)
	ret z
	dec (ix+#0a)
	ret nz
	xor (ix+#15)
	ld (ix+#15),a
	rra
	ld a,(ix+#0b)
	jr c,l1ef0
	ld a,(ix+#0c)
.l1ef0
	ld (ix+#0a),a
	ret
.l1ef4
	xor a
	ld (l1fc9),a
	ld (l217b),a
	dec a
	ld (l2181),a
	ld hl,l216e
	dec (hl)
	jr nz,l1f84
	ld hl,l2132
	dec (hl)
	jr nz,l1f57
.l1f0c equ $ + 1
	ld bc,#0101
	ld a,(bc)
	and a
	jr nz,l1f4c
	ld d,a
	ld (l2172),a
	ld hl,(l1a5b)
	inc hl
	ld a,(hl)
	inc a
	jr nz,l1f26
	call l1a5d		; reinit music
.l1f22 equ $ + 1
	ld hl,l2121
	ld a,(hl)
	inc a
.l1f26
	ld (l1a5b),hl
	dec a
	add a
	ld e,a
	rl d
.l1f2f equ $ + 1
	ld hl,l2121
	add hl,de
	ld de,(l1be3)
	ld (l1f4a),sp
	ld sp,hl
	pop hl
	add hl,de
	ld b,h
	ld c,l
	pop hl
	add hl,de
	ld (l1f62),hl
	pop hl
	add hl,de
	ld (l1f76),hl
.l1f4a equ $ + 1
	ld sp,l3131
.l1f4c
	ld ix,l2123
	call l1c20
	ld (l1f0c),bc
.l1f57
	ld hl,l214f
	dec (hl)
	jr nz,l1f6b
	ld ix,l2140
.l1f62 equ $ + 1
	ld bc,#0101
	call l1c20
	ld (l1f62),bc
.l1f6b
	ld hl,l216c
	dec (hl)
	jr nz,l1f7f
	ld ix,l215d
.l1f76 equ $ + 1
	ld bc,#0101
	call l1c20
	ld (l1f76),bc
.l1f80 equ $ + 1
.l1f7f
	ld a,#3e
	ld (l216e),a
.l1f84
	ld ix,l2117
	ld hl,(l2174)
	call l1da3
	call l202c
	ld (l2174),hl
	ld a,(l217e)
	ld (l217c),a
	ld ix,l2134
	ld hl,(l2176)
	call l1da3
	call l202c
	ld (l2176),hl
	ld a,(l217e)
	ld (l217d),a
	ld ix,l2151
	ld hl,(l2178)
	call l1da3
	call l202c
	ld (l2178),hl
	ld hl,(l2172)
	ld a,h
	add l
	ld (l217a),a
.l1fc9 equ $ + 1
	ld a,#3e
	ld e,a
	add a
	sbc a
	ld d,a
	ld hl,(l2182)
	add hl,de
	ld de,(l216f)
	add hl,de
	push de
	call l2053
	pop de
	ld (l217f),hl
	xor a
	ld hl,l2171
	or (hl)
	jr z,l1ff4
	dec (hl)
	jr nz,l1ff3
.l1fea equ $ + 1
	ld a,#3e
	ld (hl),a
.l1fed equ $ + 1
	ld hl,l2121
	add hl,de
	ld (l216f),hl
.l1ff3
	xor a
.l1ff4
	ld hl,l2174
.l1ff7
	ld bc,#f4c0
	out (c),a
	ld b,#f6
	out (c),c
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	inc a
	cp #0d
.l2010 equ $ + 1
	jr nz,l1ff7
	ld a,(hl)
	and a
	ret m
	ld a,#0d
	ld bc,#f4c0
	out (c),a
	ld b,#f6
	out (c),c
	db #ed,#71 ; out (c),0
	dec b
	outi
	ld bc,#f680
	out (c),c
	db #ed,#71 ; out (c),0
	ret
.l202c
	ld b,h
	ld c,l
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	ex de,hl
	add hl,de
	ex de,hl
	add hl,hl
	ld a,d
	add l
	jr nc,l203b
	inc h
.l203b
	add c
	ld l,a
	ld a,h
	adc b
	srl a
	rr l
	srl a
	rr l
	srl a
	rr l
	srl a
	rr l
	ld h,a
	ret nc
	inc hl
	ret
.l2053
	ld b,#00
	ld c,h
	ld d,l
	ld e,b
	add hl,hl
	rr b
	ex de,hl
	add hl,de
	ld a,c
	adc b
	rl e
	rl d
	rl b
	add hl,de
	adc b
	ld c,a
	rl e
	rl d
	rl b
	ld a,h
	add e
	ld l,a
	ld a,c
	adc d
	jr nc,l2076
	inc b
.l2076
	srl b
	rra
	rr l
	srl b
	rra
	rr l
	srl b
	rra
	rr l
	srl b
	rra
	rr l
	ld h,a
	ret nc
	inc hl
	ret
.l208e
	db #64,#2a,#65,#00,#01,#0c,#01,#0c
	db #94,#35,#30,#0e,#60,#20,#60,#21
	db #01,#05,#09,#0b,#0d,#0f,#13,#15
	db #19,#25,#3d,#00,#5d,#00,#31,#37
	db #4d,#53,#5f,#71,#82,#8c,#9c,#9e
	db #a0,#a6,#a8,#aa,#ac,#ae,#ae,#00
	db #57,#1f,#23,#25,#29,#2d,#2f,#33
	db #bf,#00,#1d,#21,#23,#27,#2b,#2d
	db #31,#55,#bd,#bf,#00,#1b,#21,#25
	db #29,#2b,#3b,#4d,#5f,#bb,#bd,#bf
.l20e2 equ $ + 4
.l20de
	db #00,#01,#00,#90,#0d,#d8,#69,#70
	db #76,#7d,#85,#8d,#95,#9d,#a8,#b1
	db #bb,#0c,#da,#62,#68,#6d,#75,#7b
	db #83,#8a,#92,#9c,#a4,#af,#b8,#0e
	db #08,#6a,#72,#78,#7e,#86,#90,#96
	db #a0,#aa,#b4,#be,#0f,#c0,#78,#88
	db #80,#90,#98,#a0,#b0,#a8,#e0,#b0
.l2118 equ $ + 2
.l2117 equ $ + 1
	db #e8,#00,#00,#00,#00,#00,#00,#00
.l2124 equ $ + 6
.l2123 equ $ + 5
.l2121 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2126
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2134 equ $ + 6
.l2132 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2143 equ $ + 5
.l2141 equ $ + 3
.l2140 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2151 equ $ + 3
.l214f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l215d equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2160 equ $ + 2
.l215e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l216c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2174 equ $ + 6
.l2173 equ $ + 5
.l2172 equ $ + 4
.l2171 equ $ + 3
.l216f equ $ + 1
.l216e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l217d equ $ + 7
.l217c equ $ + 6
.l217b equ $ + 5
.l217a equ $ + 4
.l2178 equ $ + 2
.l2176
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2184 equ $ + 6
.l2182 equ $ + 4
.l2181 equ $ + 3
.l217f equ $ + 1
.l217e
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
.l21e5 equ $ + 7
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
.l2274 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l22a2 equ $ + 4
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
	db #00,#00,#00,#00,#00,#00
	call l2338
	ret
.l2338
	ld lx,#80
.l233b
	ldi
.l233d
	ld hx,#01
.l2340
	call l23c0
	jr nc,l233b
	call l23c0
	jr nc,l237f
	call l23c0
	jr nc,l2369
	ld bc,#0010
.l2352
	call l23c0
	rl c
	jr nc,l2352
	jr nz,l2360
	ld a,b
.l235c
	ld (de),a
	inc de
	jr l233d
.l2360
	and a
	ex de,hl
	sbc hl,bc
	ld a,(hl)
	add hl,bc
	ex de,hl
	jr l235c
.l2369
	ld c,(hl)
	inc hl
	rr c
	ret z
	ld a,#02
	ld b,#00
	adc b
	push hl
	ld hy,b
	ld ly,c
	ld h,d
	ld l,e
	sbc hl,bc
	ld c,a
	jr l23ad
.l237f
	call l23cc
	dec c
	ld a,c
	sub hx
	jr z,l23b4
	dec a
	ld b,a
	ld c,(hl)
	inc hl
	ld hy,b
	ld ly,c
	push bc
	call l23cc
	ex (sp),hl
	push de
	ex de,hl
	ld a,#04
	cp d
	jr nc,l239e
	inc bc
	or a
.l239e
	ld hl,#007f
	sbc hl,de
	jr c,l23a7
	inc bc
	inc bc
.l23a7
	pop hl
	push hl
	or a
.l23aa
	sbc hl,de
	pop de
.l23ad
	ldir
	pop hl
	ld hx,b
	jr l2340
.l23b4
	call l23cc
	push hl
	push de
	ex de,hl
	ld d,hy
	ld e,ly
	jr l23aa
.l23c0
	ld a,lx
	add a
	ld lx,a
	ret nz
	ld a,(hl)
	inc hl
	rla
	ld lx,a
	ret
.l23cc
	ld bc,#0001
.l23cf
	call l23c0
	rl c
	rl b
	call l23c0
	jr c,l23cf
	ret
.l23dc
	ld bc,#bc00
	ld a,#0c
	out (c),a
	ld bc,#bd00
	ld a,#10
	out (c),a
	ret
	call #bd1c
	ld bc,#bc00
	ld a,#0c
	out (c),a
	ld bc,#bd00
	ld a,#30
	out (c),a
	ret
	ld hl,#787f
	ld de,l2890
	call l2338
	ld hl,#8000
	ld de,#4000
	call l2338
	ld hl,#8bf6
	ld de,#c000
	call l2338
	call l23dc
	call l1a4d
	ret
	ld hl,#8000
	ld de,l29f5
	call l2338
	ld hl,#954d
	ld de,#c000
	call l2338
	ret
	ld hl,#4000
	ld de,#4000
	ld c,#0d
	call l2450
	ld b,#40
.l243f
	call #bd19
	djnz l243f
	ld hl,l29f5
	ld de,#160a
	ld c,#0d
	call l2450
	ret
.l2450
	push bc
	push hl
	push de
	ld a,#02
	ld c,#00
	call #bd34
	ld a,#03
	ld c,#00
	call #bd34
	pop de
	pop hl
	pop bc
	di
.l2465
	push bc
	ld c,(hl)
	ld a,#09
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	inc hl
	dec de
	ld a,d
	or e
	ret z
	ld a,c
	or a
	jp z,l2465
	ld b,c
.l2492
	djnz l2492
	jr l2465
	ret
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l2890

; "ProTracker 3.5 compilation of SMALL REMIX BY ALOS(JNR)/SPARK   by   "

	db #50,#72,#6f,#54,#72,#61,#63,#6b
	db #65,#72,#20,#33,#2e,#35,#20,#63
	db #6f,#6d,#70,#69,#6c,#61,#74,#69
	db #6f,#6e,#20,#6f,#66,#20,#53,#4d
	db #41,#4c,#4c,#20,#52,#45,#4d,#49
	db #58,#20,#42,#59,#20,#41,#4c,#4f
	db #53,#28,#4a,#4e,#52,#29,#2f,#53
	db #50,#41,#52,#4b,#20,#20,#20,#62
	db #79,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#20,#20,#20,#20,#20
	db #20,#20,#20,#01,#03,#27,#08,#f1
	db #00,#00,#00,#f0,#0f,#12,#10,#38
	db #10,#56,#10,#8c,#10,#f2,#10,#b8
	db #11,#00,#00,#ba,#12,#bc,#13,#da
	db #13,#10,#14,#46,#14,#7c,#14,#00
	db #00,#00,#00,#a6,#14,#00,#00,#e8
	db #14,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#1a,#15,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#20,#15,#23,#15,#2b,#15,#34
	db #15,#3a,#15,#40,#15,#55,#15,#64
	db #15,#6d,#15,#72,#15,#77,#15,#7c
	db #15,#00,#00,#81,#15,#86,#15,#00
	db #00,#00,#2a,#03,#03,#06,#06,#06
	db #24,#09,#09,#30,#30,#0c,#0c,#36
	db #27,#0f,#0f,#0f,#0f,#21,#33,#06
	db #06,#24,#12,#1e,#12,#2d,#0c,#0c
	db #12,#12,#15,#15,#18,#18,#1b,#1b
	db #ff,#63,#01,#91,#01,#1a,#02,#2a
	db #02,#fa,#02,#82,#03,#95,#03,#69
	db #04,#a2,#04,#57,#05,#3a,#06,#77
	db #06,#57,#05,#12,#08,#77,#06,#57
	db #05,#af,#09,#77,#06,#57,#05,#8b
	db #0b,#b3,#0b,#57,#05,#88,#0d,#b3
	db #0b,#a9,#0d,#8c,#0e,#9c,#0e,#a9
	db #0d,#65,#0f,#9c,#0e,#02,#07,#5e
	db #0c,#77,#06,#e9,#09,#1a,#0a,#41
	db #0a,#95,#03,#69,#04,#27,#05,#57
	db #05,#3b,#09,#77,#06,#2a,#02,#56
	db #02,#e0,#02,#e6,#0c,#1e,#0d,#51
	db #0d,#02,#07,#d5,#07,#77,#06,#55
	db #0a,#29,#0b,#65,#0b,#57,#05,#b7
.l29f5 equ $ + 5
	db #08,#77,#06,#f6,#0e,#cf,#09,#b1
	db #06,#82,#03,#ce,#82,#cd,#82,#cc
	db #82,#ce,#b1,#04,#80,#83,#cf,#b1
	db #06,#82,#ce,#82,#cd,#b1,#04,#82
	db #cf,#b1,#02,#83,#ca,#82,#cf,#83
	db #ca,#83,#cf,#83,#80,#ca,#80,#83
	db #00,#f7,#0a,#cf,#b1,#01,#76,#ca
	db #d0,#cf,#82,#ca,#d0,#cf,#76,#ca
	db #d0,#cf,#76,#ca,#d0,#cf,#82,#ca
	db #d0,#cf,#76,#ca,#d0,#cf,#76,#ca
	db #d0,#cf,#b1,#02,#82,#b1,#01,#76
	db #ca,#d0,#cf,#82,#cc,#d0,#cf,#76
	db #ca,#d0,#cf,#76,#ca,#d0,#cf,#b1
	db #02,#82,#b1,#01,#76,#ca,#d0,#cf
	db #76,#ca,#d0,#cf,#b1,#02,#82,#b1
	db #01,#76,#ca,#d0,#cf,#82,#ca,#d0
	db #cf,#76,#ca,#d0,#cf,#76,#ca,#d0
	db #cf,#82,#ca,#d0,#cf,#76,#ca,#d0
	db #cf,#76,#ca,#d0,#cf,#b1,#02,#82
	db #b1,#01,#77,#ca,#d0,#cf,#83,#ca
	db #d0,#cf,#77,#ca,#d0,#cf,#77,#ca
	db #d0,#cf,#83,#ca,#d0,#cf,#77,#ca
	db #d0,#cf,#77,#ca,#d0,#cf,#b1,#02
	db #83,#00,#b1,#36,#d0,#f5,#0c,#b1
	db #01,#76,#76,#b1,#02,#76,#6f,#6d
	db #6c,#00,#f6,#0e,#cf,#b1,#06,#82
	db #ce,#82,#cd,#82,#cc,#82,#ce,#b1
	db #04,#80,#83,#cf,#b1,#06,#82,#ce
	db #82,#cd,#b1,#04,#82,#cf,#b1,#02
	db #83,#ca,#82,#cf,#83,#ca,#83,#cf
	db #83,#80,#ca,#80,#83,#00,#f7,#0a
	db #cf,#b1,#01,#76,#ca,#d0,#cf,#82
	db #ca,#d0,#cf,#76,#ca,#d0,#cf,#76
	db #ca,#d0,#cf,#82,#ca,#d0,#cf,#76
	db #ca,#d0,#cf,#76,#ca,#d0,#cf,#b1
	db #02,#82,#b1,#01,#76,#ca,#d0,#cf
	db #b1,#02,#82,#b1,#01,#76,#ca,#d0
	db #cf,#76,#ca,#d0,#cf,#b1,#02,#82
	db #b1,#01,#76,#ca,#d0,#cf,#76,#ca
	db #d0,#cf,#b1,#02,#82,#b1,#01,#76
	db #ca,#d0,#cf,#82,#ca,#d0,#cf,#76
	db #ca,#d0,#cf,#76,#ca,#d0,#cf,#82
	db #ca,#d0,#cf,#76,#ca,#d0,#cf,#76
	db #ca,#d0,#cf,#b1,#02,#82,#b1,#01
	db #77,#ca,#d0,#cf,#83,#ca,#d0,#cf
	db #77,#ca,#d0,#cf,#77,#ca,#d0,#cf
	db #83,#ca,#d0,#cf,#77,#ca,#d0,#cf
	db #77,#ca,#d0,#cf,#b1,#02,#83,#00
	db #b1,#04,#6a,#cd,#6a,#cc,#6a,#ca
	db #b1,#2a,#6a,#f5,#0c,#ce,#b1,#01
	db #76,#76,#cf,#b1,#02,#76,#6f,#6d
	db #6c,#00,#f7,#0a,#cf,#b1,#01,#76
	db #ca,#d0,#cf,#82,#ca,#d0,#cf,#76
	db #ca,#d0,#cf,#76,#ca,#d0,#cf,#82
	db #ca,#d0,#cf,#76,#ca,#d0,#cf,#76
	db #ca,#d0,#cf,#b1,#02,#82,#b1,#01
	db #76,#ca,#d0,#cf,#82,#ca,#d0,#cf
	db #76,#ca,#d0,#cf,#76,#ca,#d0,#cf
	db #82,#ca,#d0,#cf,#76,#ca,#d0,#cf
	db #76,#ca,#d0,#cf,#b1,#02,#82,#b1
	db #01,#76,#ca,#d0,#cf,#82,#ca,#d0
	db #cf,#76,#ca,#d0,#cf,#76,#ca,#d0
	db #cf,#82,#ca,#d0,#cf,#76,#ca,#d0
	db #cf,#76,#ca,#d0,#cf,#b1,#02,#82
	db #b1,#01,#77,#ca,#d0,#cf,#83,#ca
	db #d0,#cf,#77,#ca,#d0,#cf,#77,#ca
	db #d0,#cf,#83,#ca,#d0,#cf,#77,#ca
	db #d0,#cf,#77,#ca,#d0,#cf,#b1,#02
	db #83,#00,#b1,#04,#d0,#f0,#22,#cf
	db #b1,#08,#a6,#a6,#a6,#a6,#a6,#a6
	db #a6,#b1,#04,#a6,#00,#f2,#02,#cf
	db #b1,#01,#8e,#43,#ca,#d0,#42,#cf
	db #82,#43,#ca,#d0,#d2,#42,#cf,#89
	db #43,#ca,#d0,#d1,#42,#cf,#8e,#43
	db #ca,#d0,#42,#cf,#87,#43,#ca,#d0
	db #42,#cf,#8c,#43,#ca,#d0,#d2,#42
	db #cf,#82,#43,#ca,#d0,#d1,#42,#cf
	db #87,#43,#ca,#d0,#42,#cf,#8e,#43
	db #ca,#d0,#42,#cf,#82,#43,#ca,#d0
	db #d2,#42,#cf,#89,#43,#ca,#d0,#d1
	db #42,#cf,#8e,#43,#ca,#d0,#42,#cf
	db #87,#43,#ca,#d0,#42,#cf,#8c,#43
	db #ca,#d0,#d2,#42,#cf,#82,#43,#ca
	db #d0,#d1,#42,#cf,#87,#43,#ca,#d0
	db #42,#cf,#8e,#43,#ca,#d0,#42,#cf
	db #82,#43,#ca,#d0,#d2,#42,#cf,#89
	db #43,#ca,#d0,#d1,#42,#cf,#8e,#43
	db #ca,#d0,#42,#cf,#87,#43,#ca,#d0
	db #42,#cf,#8c,#43,#ca,#d0,#d2,#42
	db #cf,#82,#43,#ca,#d0,#d1,#42,#cf
	db #87,#43,#ca,#d0,#42,#cf,#8a,#43
	db #ca,#d0,#42,#cf,#83,#43,#ca,#d0
	db #d2,#42,#cf,#7e,#43,#ca,#d0,#d1
	db #42,#cf,#8f,#43,#ca,#d0,#42,#cf
	db #87,#43,#ca,#d0,#42,#cf,#8c,#43
	db #ca,#d0,#d2,#42,#cf,#8e,#43,#ca
	db #d0,#d1,#42,#cf,#8c,#43,#ca,#d0
	db #00,#f0,#0a,#cf,#b1,#02,#8e,#82
	db #4a,#82,#40,#8e,#82,#4b,#80,#40
	db #8e,#82,#4a,#82,#40,#82,#82,#8e
	db #4a,#82,#40,#82,#8c,#4b,#80,#40
	db #8e,#82,#4a,#82,#40,#8e,#82,#4b
	db #80,#40,#8e,#82,#8f,#83,#4b,#83
	db #40,#8f,#83,#4b,#83,#40,#8c,#4b
	db #83,#00,#f0,#1a,#cf,#b1,#01,#5e
	db #cc,#6a,#cf,#5e,#cc,#5e,#cf,#6a
	db #cc,#5e,#cf,#5e,#cc,#6a,#cf,#6a
	db #cc,#5e,#cf,#6a,#cc,#5e,#cf,#6a
	db #cc,#5e,#cf,#6a,#cc,#5e,#cf,#5e
	db #cc,#6a,#cf,#5e,#cc,#5e,#cf,#6a
	db #cc,#5e,#cf,#5e,#cc,#6a,#cf,#6a
	db #cc,#5e,#cf,#6a,#cc,#5e,#cf,#6a
	db #cc,#5e,#cf,#6a,#cc,#5e,#cf,#5e
	db #cc,#6a,#cf,#5e,#cc,#5e,#cf,#6a
	db #cc,#5e,#cf,#5e,#cc,#6a,#cf,#6a
	db #cc,#5e,#cf,#5e,#cc,#5e,#cf,#6a
	db #cc,#5e,#cf,#6a,#cc,#6a,#cf,#5f
	db #cc,#6b,#cf,#5f,#cc,#5f,#cf,#6b
	db #cc,#5f,#cf,#5f,#cc,#6b,#cf,#6b
	db #cc,#6b,#cf,#5f,#cc,#5f,#cf,#6b
	db #cc,#5f,#cf,#6b,#cc,#5f,#00,#f0
	db #1a,#cf,#b1,#02,#5e,#5e,#6a,#5e
	db #6a,#5e,#5e,#6a,#5e,#5e,#6a,#5e
	db #6a,#5e,#5e,#6a,#db,#44,#5e,#e3
	db #40,#ca,#76,#76,#cb,#76,#76,#cc
	db #76,#cd,#76,#ce,#76,#cf,#76,#76
	db #76,#76,#76,#76,#76,#76,#00,#f2
	db #14,#cf,#b1,#01,#8e,#43,#ca,#d0
	db #d1,#42,#cf,#82,#43,#ca,#d0,#d2
	db #42,#cf,#89,#43,#ca,#d0,#d1,#42
	db #cf,#8e,#43,#ca,#d0,#da,#42,#cf
	db #87,#43,#ca,#d0,#d1,#42,#cf,#8c
	db #43,#ca,#d0,#d2,#42,#cf,#82,#43
	db #ca,#d0,#d1,#42,#cf,#87,#43,#ca
	db #d0,#da,#42,#cf,#8e,#43,#ca,#d0
	db #d1,#42,#cf,#82,#43,#ca,#d0,#d2
	db #42,#cf,#89,#43,#ca,#d0,#d1,#42
	db #cf,#8e,#43,#ca,#d0,#da,#42,#cf
	db #87,#43,#ca,#d0,#d1,#42,#cf,#8c
	db #43,#ca,#d0,#d2,#42,#cf,#82,#43
	db #ca,#d0,#d1,#42,#cf,#87,#43,#ca
	db #d0,#da,#42,#cf,#8e,#43,#ca,#d0
	db #d1,#42,#cf,#82,#43,#ca,#d0,#d2
	db #42,#cf,#89,#43,#ca,#d0,#d1,#42
	db #cf,#8e,#43,#ca,#d0,#da,#42,#cf
	db #87,#43,#ca,#d0,#d1,#42,#cf,#8c
	db #43,#ca,#d0,#d2,#42,#cf,#82,#43
	db #ca,#d0,#d1,#42,#cf,#87,#43,#ca
	db #d0,#da,#42,#cf,#8a,#43,#ca,#d0
	db #d1,#42,#cf,#83,#43,#ca,#d0,#d2
	db #42,#cf,#7e,#43,#ca,#d0,#d1,#42
	db #cf,#8f,#43,#ca,#d0,#da,#42,#cf
	db #87,#43,#ca,#d0,#d1,#42,#cf,#8c
	db #43,#ca,#d0,#d2,#42,#cf,#8e,#43
	db #ca,#d0,#d1,#42,#cf,#8c,#43,#ca
	db #d0,#00,#f9,#08,#ca,#b1,#02,#a6
	db #82,#cf,#82,#ca,#82,#82,#82,#cf
	db #82,#ca,#82,#cf,#82,#ca,#82,#82
	db #cf,#82,#ca,#82,#82,#cf,#80,#ca
	db #80,#48,#82,#82,#cf,#82,#ca,#82
	db #cf,#82,#82,#ca,#82,#82,#4b,#cf
	db #83,#83,#83,#ca,#83,#4d,#cf,#8f
	db #ca,#8f,#cf,#8f,#ca,#8f,#00,#1c
	db #00,#6b,#34,#40,#b1,#02,#76,#d4
	db #b0,#5e,#bd,#00,#35,#95,#b0,#5e
	db #ea,#bd,#00,#6b,#65,#d4,#bd,#00
	db #35,#95,#ea,#bd,#00,#6b,#65,#d4
	db #bd,#00,#36,#5e,#bd,#00,#35,#95
	db #b0,#5e,#ea,#bd,#00,#6a,#56,#d4
	db #bd,#00,#35,#95,#ea,#bd,#00,#6a
	db #7d,#d4,#b0,#5e,#bd,#00,#3c,#93
	db #ea,#bd,#00,#78,#7b,#bd,#00,#6b
	db #76,#d4,#b0,#5e,#bd,#00,#35,#95
	db #b0,#5e,#ea,#bd,#00,#6b,#65,#d4
	db #bd,#00,#35,#95,#ea,#bd,#00,#6b
	db #65,#d4,#bd,#00,#36,#5e,#bd,#00
	db #32,#93,#ea,#bd,#00,#64,#7e,#d4
	db #bd,#00,#64,#7e,#bd,#00,#32,#93
	db #ea,#bd,#00,#64,#7e,#d4,#b0,#5f
	db #bd,#00,#32,#93,#ea,#bd,#00,#64
	db #7e,#00,#f2,#14,#cf,#b1,#01,#8e
	db #43,#ca,#d0,#d1,#42,#cf,#82,#43
	db #ca,#d0,#42,#cf,#89,#43,#ca,#d0
	db #42,#cf,#8e,#43,#ca,#d0,#da,#42
	db #cf,#87,#43,#ca,#d0,#d1,#42,#cf
	db #8c,#43,#ca,#d0,#42,#cf,#82,#43
	db #ca,#d0,#42,#cf,#87,#43,#ca,#d0
	db #da,#42,#cf,#8e,#43,#ca,#d0,#d1
	db #42,#cf,#82,#43,#ca,#d0,#42,#cf
	db #89,#43,#ca,#d0,#42,#cf,#8e,#43
	db #ca,#d0,#da,#42,#cf,#87,#43,#ca
	db #d0,#d1,#42,#cf,#8c,#43,#ca,#d0
	db #42,#cf,#82,#43,#ca,#d0,#42,#cf
	db #87,#43,#ca,#d0,#da,#42,#cf,#8e
	db #43,#ca,#d0,#d1,#42,#cf,#82,#43
	db #ca,#d0,#42,#cf,#89,#43,#ca,#d0
	db #42,#cf,#8e,#43,#ca,#d0,#da,#42
	db #cf,#87,#43,#ca,#d0,#d1,#42,#cf
	db #8c,#43,#ca,#d0,#42,#cf,#82,#43
	db #ca,#d0,#42,#cf,#87,#43,#ca,#d0
	db #da,#42,#cf,#8a,#43,#ca,#d0,#d1
	db #42,#cf,#83,#43,#ca,#d0,#42,#cf
	db #7e,#43,#ca,#d0,#42,#cf,#8f,#43
	db #ca,#d0,#da,#42,#cf,#87,#43,#ca
	db #d0,#d1,#42,#cf,#8c,#43,#ca,#d0
	db #42,#cf,#8e,#43,#ca,#d0,#42,#cf
	db #8c,#43,#ca,#d0,#00,#f9,#08,#ca
	db #b1,#02,#82,#82,#cf,#82,#ca,#82
	db #82,#82,#cf,#82,#ca,#82,#cf,#82
	db #ca,#82,#82,#cf,#82,#ca,#82,#82
	db #cf,#80,#ca,#80,#4e,#82,#82,#cf
	db #82,#ca,#82,#cf,#82,#82,#ca,#82
	db #82,#4d,#cf,#8f,#8f,#8f,#ca,#8f
	db #4b,#cf,#83,#ca,#83,#cf,#83,#ca
	db #83,#00,#f1,#08,#cf,#b1,#02,#76
	db #49,#ca,#82,#41,#cf,#8e,#49,#ca
	db #82,#41,#cf,#8e,#49,#ca,#82,#41
	db #cf,#8c,#8e,#49,#ca,#82,#41,#cf
	db #8e,#89,#49,#ca,#82,#41,#cf,#87
	db #49,#ca,#82,#41,#cf,#89,#49,#ca
	db #80,#d5,#41,#cf,#b1,#01,#6a,#cc
	db #6d,#cf,#6f,#cc,#71,#1c,#00,#35
	db #08,#40,#cf,#8e,#d5,#b0,#cc,#76
	db #cf,#79,#cc,#7b,#d4,#bd,#00,#6b
	db #cf,#95,#d5,#b0,#cc,#80,#cf,#82
	db #cc,#85,#d4,#bd,#00,#6b,#cf,#8e
	db #d5,#b0,#cc,#89,#d4,#bd,#00,#36
	db #cf,#8e,#d5,#b0,#cc,#8e,#cf,#8f
	db #cc,#8c,#d4,#bd,#00,#64,#cf,#9b
	db #d5,#b0,#cc,#87,#d4,#bd,#00,#64
	db #cf,#8f,#d5,#b0,#cc,#80,#cf,#7e
	db #cc,#7b,#d4,#bd,#00,#64,#cf,#8f
.l3131 equ $ + 1
	db #d5,#b0,#cc,#74,#cf,#72,#cc,#6f
	db #d4,#bd,#00,#32,#cf,#8f,#d5,#b0
	db #cc,#6d,#cf,#6f,#cc,#72,#00,#f1
	db #08,#cf,#b1,#02,#76,#49,#ca,#82
	db #41,#cf,#8e,#49,#ca,#82,#41,#cf
	db #8e,#49,#ca,#82,#41,#cf,#8c,#8e
	db #49,#ca,#82,#41,#cf,#8e,#89,#49
	db #ca,#82,#41,#cf,#87,#49,#ca,#82
	db #41,#cf,#89,#49,#ca,#80,#d5,#41
	db #cf,#b1,#01,#6a,#cc,#6d,#cf,#6f
	db #cc,#71,#dc,#cf,#76,#d5,#cc,#76
	db #cf,#79,#cc,#7b,#dc,#cf,#74,#d5
	db #cc,#80,#cf,#82,#cc,#85,#dc,#cf
	db #7d,#d5,#cc,#89,#dc,#cf,#76,#d5
	db #cc,#8e,#cf,#8f,#cc,#8c,#dc,#cf
	db #74,#d5,#cc,#87,#dc,#cf,#74,#d5
	db #cc,#80,#cf,#7e,#cc,#7b,#dc,#cf
	db #74,#d5,#cc,#74,#cf,#72,#cc,#6f
	db #dc,#cf,#79,#d5,#cc,#6d,#cf,#6f
	db #cc,#72,#00,#f1,#08,#cf,#b1,#02
	db #76,#49,#ca,#82,#41,#cf,#8e,#49
	db #ca,#82,#41,#cf,#8e,#49,#ca,#82
	db #41,#cf,#8c,#8e,#49,#ca,#82,#41
	db #cf,#8e,#91,#49,#ca,#82,#41,#cf
	db #93,#49,#ca,#82,#41,#cf,#95,#49
	db #ca,#80,#d5,#41,#cb,#b1,#01,#6a
	db #6d,#6f,#cc,#71,#d4,#cf,#9a,#d5
	db #cc,#76,#cd,#79,#7b,#d4,#cf,#9a
	db #d5,#ce,#80,#82,#85,#d4,#cf,#98
	db #d5,#ce,#89,#d4,#cf,#9b,#d5,#8e
	db #8f,#8c,#d4,#9b,#d5,#87,#d4,#9d
	db #d5,#ca,#80,#7e,#cd,#7b,#d4,#cf
	db #9f,#d5,#cd,#74,#72,#6f,#d4,#cf
	db #a2,#d5,#cc,#6d,#6f,#72,#00,#cf
	db #b1,#04,#d0,#f9,#08,#82,#dc,#76
	db #d4,#b1,#02,#82,#dc,#b1,#04,#76
	db #b1,#02,#76,#d4,#b1,#04,#82,#dc
	db #76,#d4,#4b,#b1,#08,#80,#49,#b1
	db #04,#82,#dc,#76,#d4,#b1,#02,#82
	db #dc,#b1,#04,#76,#b1,#02,#76,#d4
	db #b1,#04,#83,#dc,#77,#d4,#4d,#8f
	db #00,#f9,#14,#cf,#b1,#02,#8e,#ce
	db #d0,#cd,#b1,#01,#d0,#8e,#cc,#b1
	db #02,#d0,#cb,#d0,#ca,#8e,#c9,#d0
	db #c8,#b1,#01,#d0,#8e,#c7,#b1,#02
	db #d0,#c6,#d0,#c5,#d0,#c4,#d0,#c3
	db #d0,#c2,#b1,#01,#d0,#c1,#b1,#05
	db #d0,#00,#f7,#08,#cf,#b1,#02,#8e
	db #ca,#d0,#cc,#8c,#cb,#b1,#04,#8e
	db #ca,#b1,#02,#8c,#c9,#b1,#04,#8e
	db #c8,#b1,#02,#8c,#c7,#b1,#04,#8e
	db #c6,#b1,#02,#8c,#c4,#b1,#08,#8e
	db #00,#1c,#00,#6a,#08,#40,#b1,#05
	db #95,#c9,#89,#ca,#b1,#04,#7d,#c6
	db #5e,#b1,#0e,#c0,#00,#f0,#06,#cf
	db #b1,#01,#76,#ca,#d0,#d1,#42,#cf
	db #82,#43,#ca,#d0,#d2,#42,#cf,#89
	db #43,#ca,#d0,#d1,#42,#cf,#8e,#43
	db #ca,#d0,#42,#cf,#87,#43,#ca,#d0
	db #42,#cf,#8c,#43,#ca,#d0,#d2,#42
	db #cf,#82,#43,#ca,#d0,#d1,#42,#cf
	db #87,#43,#ca,#d0,#42,#cf,#8e,#43
	db #ca,#d0,#42,#cf,#82,#43,#ca,#d0
	db #d2,#42,#cf,#89,#43,#ca,#d0,#d1
	db #42,#cf,#8e,#43,#ca,#d0,#42,#cf
	db #87,#43,#ca,#d0,#42,#cf,#8c,#43
	db #ca,#d0,#d2,#42,#cf,#82,#43,#ca
	db #d0,#d1,#42,#cf,#87,#43,#ca,#d0
	db #42,#cf,#8e,#43,#ca,#d0,#42,#cf
	db #82,#43,#ca,#d0,#d2,#42,#cf,#89
	db #43,#ca,#d0,#d1,#42,#cf,#8e,#43
	db #ca,#d0,#42,#cf,#87,#43,#ca,#d0
	db #42,#cf,#8c,#43,#ca,#d0,#d2,#42
	db #cf,#82,#43,#ca,#d0,#d1,#42,#cf
	db #87,#43,#ca,#d0,#42,#cf,#8a,#43
	db #ca,#d0,#42,#cf,#83,#43,#ca,#d0
	db #d2,#42,#cf,#7e,#43,#ca,#d0,#d1
	db #42,#cf,#8f,#43,#ca,#d0,#42,#cf
	db #87,#43,#ca,#d0,#42,#cf,#8c,#43
	db #ca,#d0,#d2,#42,#cf,#8e,#43,#ca
	db #d0,#d1,#42,#cf,#8c,#43,#ca,#d0
	db #00,#f7,#12,#cf,#b1,#02,#8e,#cc
	db #8e,#ca,#8e,#d5,#40,#cf,#8e,#82
	db #4b,#80,#40,#8e,#82,#4a,#82,#40
	db #82,#82,#8e,#4a,#82,#40,#82,#8c
	db #4b,#80,#40,#8e,#82,#4a,#82,#40
	db #8e,#82,#4b,#80,#40,#8e,#82,#8f
	db #83,#4b,#83,#40,#8f,#83,#4b,#83
	db #40,#8c,#4b,#83,#00,#f0,#1a,#cf
	db #b1,#02,#5e,#5e,#6a,#5e,#6a,#5e
	db #5e,#6a,#5e,#5e,#6a,#5e,#6a,#5e
	db #5e,#6a,#5e,#5e,#6a,#5e,#6a,#5e
	db #5e,#6a,#5f,#5f,#6b,#5f,#6b,#5f
	db #5f,#6b,#00,#1e,#00,#6b,#1c,#40
	db #b1,#02,#82,#83,#84,#85,#86,#87
	db #88,#89,#8a,#8b,#8c,#8d,#8e,#8f
	db #90,#91,#92,#93,#94,#95,#96,#97
	db #98,#99,#9a,#9b,#9c,#9d,#9e,#9f
	db #a0,#a1,#00,#1c,#00,#6b,#34,#40
	db #b1,#01,#76,#c0,#d4,#b0,#5e,#c0
	db #bd,#00,#35,#95,#c0,#b0,#5e,#c0
	db #ea,#bd,#00,#6b,#65,#c0,#d4,#bd
	db #00,#35,#95,#c0,#ea,#bd,#00,#6b
	db #65,#c0,#d4,#bd,#00,#36,#5e,#c0
	db #bd,#00,#35,#95,#c0,#b0,#5e,#c0
	db #ea,#bd,#00,#6a,#56,#c0,#d4,#bd
	db #00,#35,#95,#c0,#ea,#bd,#00,#6a
	db #7d,#c0,#d4,#b0,#5e,#c0,#bd,#00
	db #3c,#93,#c0,#ea,#bd,#00,#78,#7b
	db #c0,#bd,#00,#6b,#76,#c0,#d4,#b0
	db #5e,#c0,#bd,#00,#35,#95,#c0,#b0
	db #5e,#c0,#ea,#bd,#00,#6b,#65,#c0
	db #d4,#bd,#00,#35,#95,#c0,#ea,#bd
	db #00,#6b,#65,#c0,#d4,#bd,#00,#36
	db #5e,#c0,#bd,#00,#32,#93,#c0,#ea
	db #bd,#00,#64,#7e,#c0,#d4,#bd,#00
	db #64,#7e,#c0,#bd,#00,#32,#93,#c0
	db #ea,#bd,#00,#64,#7e,#c0,#d4,#b0
	db #5f,#c0,#bd,#00,#32,#93,#c0,#ea
	db #bd,#00,#64,#7e,#c0,#00,#f9,#08
	db #ca,#b1,#02,#82,#b1,#01,#82,#82
	db #cf,#b1,#02,#82,#ca,#b1,#01,#82
	db #8e,#b1,#02,#82,#82,#cf,#b1,#01
	db #82,#8e,#ca,#b1,#02,#82,#cf,#b1
	db #01,#82,#8e,#ca,#b1,#02,#82,#b1
	db #01,#82,#8e,#cf,#b1,#02,#82,#ca
	db #b1,#01,#82,#8e,#b1,#02,#82,#cf
	db #b1,#01,#80,#8c,#ca,#b1,#02,#80
	db #4e,#b1,#01,#82,#8e,#b1,#02,#82
	db #cf,#b1,#01,#82,#8e,#ca,#b1,#02
	db #82,#cf,#b1,#01,#82,#8e,#b1,#02
	db #82,#ca,#b1,#01,#82,#8e,#b1,#02
	db #82,#4d,#cf,#b1,#01,#8f,#83,#b1
	db #02,#8f,#b1,#01,#8f,#83,#ca,#b1
	db #02,#8f,#4b,#cf,#b1,#01,#83,#8f
	db #ca,#b1,#02,#83,#cf,#b1,#01,#83
	db #8f,#ca,#b1,#02,#83,#00,#f9,#14
	db #cf,#b1,#02,#8e,#ce,#d0,#cd,#b1
	db #01,#d0,#8e,#cc,#b1,#02,#d0,#cb
	db #d0,#ca,#8e,#c9,#d0,#c8,#b1,#01
	db #d0,#8e,#c7,#b1,#02,#d0,#c6,#d0
	db #c5,#d0,#40,#cd,#8e,#cf,#b1,#01
	db #8e,#cc,#d0,#8e,#cf,#d0,#cc,#8e
	db #8e,#cf,#8e,#cc,#d0,#00,#f7,#08
	db #cf,#b1,#02,#8e,#ca,#d0,#cc,#8c
	db #cb,#b1,#04,#8e,#ca,#b1,#02,#8c
	db #c9,#b1,#04,#8e,#c8,#b1,#02,#8c
	db #c7,#b1,#04,#8e,#c6,#b1,#02,#8c
	db #c4,#8e,#ca,#b1,#01,#8e,#cb,#8c
	db #cc,#8e,#cd,#8c,#ce,#8e,#cf,#8c
	db #00,#1c,#00,#6a,#08,#40,#cf,#b1
	db #02,#95,#01,#b1,#03,#d0,#01,#02
	db #00,#c9,#b1,#05,#89,#ca,#b1,#04
	db #7d,#c6,#b1,#02,#5e,#e3,#b0,#ca
	db #76,#cb,#76,#cc,#76,#cd,#76,#cf
	db #b1,#01,#76,#cc,#d0,#76,#cf,#d0
	db #cc,#76,#76,#cf,#76,#cc,#d0,#00
	db #1c,#00,#6b,#08,#40,#b1,#01,#82
	db #89,#8e,#89,#82,#89,#8e,#89,#82
	db #89,#98,#b1,#15,#c0,#de,#bd,#00
	db #6b,#01,#b1,#20,#82,#01,#fe,#ff
	db #00,#f2,#14,#cf,#b1,#01,#8e,#43
	db #ca,#9a,#d1,#42,#cf,#82,#43,#ca
	db #8e,#d2,#42,#cf,#89,#43,#ca,#95
	db #d1,#42,#cf,#8e,#43,#ca,#9a,#da
	db #42,#cf,#87,#43,#ca,#93,#d1,#42
	db #cf,#8c,#43,#ca,#98,#d2,#42,#cf
	db #82,#43,#ca,#8e,#d1,#42,#cf,#87
	db #43,#ca,#93,#da,#42,#cf,#8e,#43
	db #ca,#9a,#d1,#42,#cf,#82,#43,#ca
	db #8e,#d2,#42,#cf,#89,#43,#ca,#95
	db #d1,#42,#cf,#8e,#43,#ca,#9a,#da
	db #42,#cf,#87,#43,#ca,#93,#d1,#42
	db #cf,#8c,#43,#ca,#98,#d2,#42,#cf
	db #82,#43,#ca,#8e,#d1,#42,#cf,#87
	db #43,#ca,#93,#da,#42,#cf,#8e,#43
	db #ca,#9a,#d1,#42,#cf,#82,#43,#ca
	db #8e,#d2,#42,#cf,#89,#43,#ca,#95
	db #d1,#42,#cf,#8e,#43,#ca,#9a,#da
	db #42,#cf,#87,#43,#ca,#93,#d1,#42
	db #cf,#8c,#43,#ca,#98,#d2,#42,#cf
	db #82,#43,#ca,#8e,#d1,#42,#cf,#87
	db #43,#ca,#93,#da,#42,#cf,#8a,#43
	db #ca,#96,#d1,#42,#cf,#83,#43,#ca
	db #8f,#d2,#42,#cf,#7e,#43,#ca,#8a
	db #d1,#42,#cf,#8f,#43,#ca,#9b,#da
	db #42,#cf,#87,#43,#ca,#93,#d1,#42
	db #cf,#8c,#43,#ca,#98,#d2,#42,#cf
	db #8e,#43,#ca,#9a,#d1,#42,#cf,#8c
	db #43,#ca,#98,#00,#1c,#00,#6b,#1c
	db #40,#b1,#02,#9a,#01,#b1,#3e,#d0
	db #01,#02,#00,#00,#1c,#00,#6b,#34
	db #40,#b1,#01,#76,#c0,#d4,#b0,#5e
	db #c0,#bd,#00,#35,#b1,#02,#95,#b0
	db #b1,#01,#5e,#c0,#ea,#bd,#00,#6b
	db #65,#c0,#d4,#bd,#00,#35,#b1,#02
	db #95,#ea,#bd,#00,#6b,#b1,#01,#65
	db #c0,#d4,#bd,#00,#36,#5e,#c0,#bd
	db #00,#35,#b1,#02,#95,#b0,#b1,#01
	db #5e,#c0,#ea,#bd,#00,#6a,#56,#c0
	db #d4,#bd,#00,#35,#b1,#02,#95,#ea
	db #bd,#00,#6a,#b1,#01,#7d,#c0,#d4
	db #b0,#5e,#c0,#bd,#00,#3c,#b1,#02
	db #93,#ea,#bd,#00,#78,#b1,#01,#7b
	db #c0,#bd,#00,#6b,#76,#c0,#d4,#b0
	db #5e,#c0,#bd,#00,#35,#b1,#02,#95
	db #b0,#b1,#01,#5e,#c0,#ea,#bd,#00
	db #6b,#65,#c0,#d4,#bd,#00,#35,#b1
	db #02,#95,#ea,#bd,#00,#6b,#b1,#01
	db #65,#c0,#d4,#bd,#00,#36,#5e,#c0
	db #bd,#00,#32,#b1,#02,#93,#ea,#bd
	db #00,#64,#b1,#01,#7e,#c0,#d4,#bd
	db #00,#64,#7e,#c0,#bd,#00,#32,#b1
	db #02,#93,#ea,#bd,#00,#64,#b1,#01
	db #7e,#c0,#d4,#b0,#5f,#c0,#bd,#00
	db #32,#b1,#02,#93,#ea,#bd,#00,#64
	db #b1,#01,#7e,#c0,#00,#f7,#0a,#cf
	db #b1,#01,#5e,#cc,#d0,#cf,#6a,#cc
	db #d0,#cf,#76,#cc,#d0,#cf,#82,#cc
	db #d0,#cf,#8e,#cc,#d0,#40,#cf,#98
	db #cc,#d0,#47,#cf,#8e,#cc,#d0,#cf
	db #82,#cc,#d0,#cf,#76,#cc,#d0,#cf
	db #6a,#cc,#d0,#cf,#5e,#cc,#d0,#cf
	db #6a,#cc,#d0,#cf,#76,#cc,#d0,#cf
	db #82,#cc,#d0,#cf,#8c,#cc,#d0,#40
	db #cf,#98,#cc,#d0,#47,#cf,#8e,#cc
	db #d0,#cf,#82,#cc,#d0,#cf,#76,#cc
	db #d0,#cf,#6a,#cc,#d0,#cf,#5e,#cc
	db #d0,#cf,#68,#cc,#d0,#cf,#76,#cc
	db #d0,#cf,#82,#cc,#d0,#cf,#8f,#cc
	db #d0,#40,#cf,#9b,#cc,#d0,#47,#cf
	db #8f,#cc,#d0,#cf,#83,#cc,#d0,#cf
	db #77,#cc,#d0,#cf,#6b,#cc,#d0,#cf
	db #5c,#cc,#d0,#cf,#6b,#cc,#d0,#00
	db #04,#08,#02,#0d,#00,#00,#00,#8d
	db #00,#00,#00,#8d,#00,#00,#00,#8d
	db #00,#00,#00,#8d,#00,#00,#00,#8d
	db #00,#00,#00,#8d,#00,#00,#00,#8d
	db #00,#00,#08,#09,#02,#0d,#00,#00
	db #02,#0d,#00,#00,#02,#0d,#00,#00
	db #00,#8d,#00,#00,#00,#8d,#00,#00
	db #00,#8d,#00,#00,#00,#8d,#00,#00
	db #00,#8d,#00,#00,#00,#8d,#00,#00
	db #06,#07,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#0c,#0d
	db #00,#8f,#00,#00,#00,#8f,#00,#00
	db #00,#8f,#00,#00,#00,#8e,#00,#00
	db #00,#8e,#00,#00,#00,#8d,#00,#00
	db #00,#8d,#00,#00,#00,#8c,#00,#00
	db #00,#8c,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8a,#00,#00
	db #00,#8a,#00,#00,#18,#19,#00,#8f
	db #00,#00,#00,#8f,#00,#00,#00,#8e
	db #00,#00,#00,#8d,#00,#00,#00,#8b
	db #00,#00,#00,#89,#00,#00,#00,#86
	db #00,#00,#00,#84,#00,#00,#00,#82
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#00,#80,#00,#00,#00,#80
	db #00,#00,#30,#31,#0e,#0f,#fe,#ff
	db #0a,#0e,#fe,#ff,#08,#0d,#fe,#ff
	db #06,#0b,#fe,#ff,#04,#0a,#02,#00
	db #02,#09,#02,#00,#02,#09,#02,#00
	db #02,#09,#02,#00,#02,#08,#fe,#ff
	db #00,#86,#fe,#ff,#00,#84,#fe,#ff
	db #00,#90,#fe,#ff,#00,#80,#02,#00
	db #00,#80,#02,#00,#00,#80,#02,#00
	db #00,#80,#02,#00,#00,#80,#fe,#ff
	db #00,#80,#fe,#ff,#00,#80,#fe,#ff
	db #00,#80,#fe,#ff,#00,#80,#02,#00
	db #00,#80,#02,#00,#00,#80,#02,#00
	db #00,#80,#02,#00,#00,#80,#00,#00
	db #00,#80,#00,#00,#00,#80,#00,#00
	db #00,#80,#00,#00,#00,#80,#00,#00
	db #00,#80,#00,#00,#00,#80,#00,#00
	db #00,#80,#00,#00,#00,#80,#00,#00
	db #00,#80,#00,#00,#00,#80,#00,#00
	db #00,#90,#00,#00,#00,#90,#00,#00
	db #00,#10,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #3f,#40,#00,#0e,#00,#00,#00,#8e
	db #00,#00,#00,#8d,#00,#00,#00,#8d
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8c,#00,#00,#00,#8b
	db #00,#00,#00,#8b,#00,#00,#00,#8b
	db #00,#00,#00,#8b,#00,#00,#00,#8b
	db #00,#00,#00,#8b,#00,#00,#00,#8a
	db #00,#00,#00,#8a,#00,#00,#00,#8a
	db #00,#00,#00,#8a,#00,#00,#00,#8a
	db #00,#00,#00,#8a,#00,#00,#00,#8a
	db #00,#00,#00,#8a,#00,#00,#00,#8a
	db #00,#00,#00,#8a,#00,#00,#00,#89
	db #00,#00,#00,#89,#00,#00,#00,#89
	db #00,#00,#00,#89,#00,#00,#00,#89
	db #00,#00,#00,#89,#00,#00,#00,#89
	db #00,#00,#00,#89,#00,#00,#00,#89
	db #00,#00,#00,#89,#00,#00,#00,#89
	db #00,#00,#00,#89,#00,#00,#00,#89
	db #00,#00,#00,#89,#00,#00,#00,#88
	db #00,#00,#00,#88,#00,#00,#00,#88
	db #00,#00,#00,#88,#00,#00,#00,#88
	db #00,#00,#00,#88,#00,#00,#00,#88
	db #00,#00,#00,#88,#00,#00,#00,#88
	db #00,#00,#00,#87,#00,#00,#00,#87
	db #00,#00,#00,#87,#00,#00,#00,#87
	db #00,#00,#00,#87,#00,#00,#00,#87
	db #00,#00,#00,#86,#00,#00,#00,#86
	db #00,#00,#00,#86,#00,#00,#00,#86
	db #00,#00,#00,#86,#00,#00,#00,#86
	db #00,#00,#00,#86,#00,#00,#00,#85
	db #00,#00,#00,#84,#00,#00,#00,#83
	db #00,#00,#3f,#40,#00,#8f,#00,#00
	db #00,#8d,#00,#00,#00,#8d,#00,#00
	db #00,#8d,#00,#00,#00,#8d,#00,#00
	db #00,#8d,#00,#00,#00,#8c,#00,#00
	db #00,#8c,#00,#00,#00,#8c,#00,#00
	db #00,#8c,#00,#00,#00,#8c,#00,#00
	db #00,#8c,#00,#00,#00,#8c,#00,#00
	db #00,#8c,#00,#00,#00,#8c,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#fe,#ff
	db #00,#8b,#fe,#ff,#00,#8b,#fe,#ff
	db #00,#8b,#02,#00,#00,#8b,#02,#00
	db #00,#8b,#02,#00,#00,#8a,#02,#00
	db #00,#8a,#fe,#ff,#00,#8a,#fe,#ff
	db #00,#8a,#fe,#ff,#00,#8a,#fe,#ff
	db #00,#8a,#02,#00,#00,#8a,#02,#00
	db #00,#8a,#02,#00,#00,#8a,#02,#00
	db #00,#89,#fe,#ff,#00,#89,#fe,#ff
	db #00,#89,#fe,#ff,#00,#89,#fe,#ff
	db #00,#89,#02,#00,#00,#89,#02,#00
	db #00,#89,#02,#00,#00,#89,#02,#00
	db #00,#89,#fe,#ff,#00,#89,#fe,#ff
	db #00,#89,#fe,#ff,#00,#89,#fe,#ff
	db #00,#89,#02,#00,#00,#89,#02,#00
	db #00,#89,#02,#00,#00,#89,#fe,#ff
	db #00,#89,#00,#00,#06,#07,#1c,#0f
	db #00,#02,#00,#8f,#00,#04,#00,#8f
	db #80,#05,#00,#8e,#00,#00,#00,#8e
	db #00,#00,#00,#8e,#00,#00,#00,#8e
	db #00,#00,#0c,#0d,#3e,#0f,#00,#01
	db #00,#8e,#80,#02,#00,#8d,#80,#03
	db #00,#8c,#00,#00,#00,#8c,#00,#00
	db #00,#8c,#00,#00,#00,#8b,#00,#00
	db #00,#8b,#00,#00,#00,#8a,#00,#00
	db #00,#8a,#00,#00,#00,#89,#00,#00
	db #00,#89,#00,#00,#00,#88,#00,#00
	db #0c,#0d,#06,#0f,#80,#00,#02,#0e
	db #00,#01,#02,#0d,#80,#01,#00,#0d
	db #00,#00,#00,#8c,#00,#00,#00,#8c
	db #00,#00,#00,#8b,#00,#00,#00,#8b
	db #00,#00,#00,#8a,#00,#00,#00,#8a
	db #00,#00,#00,#89,#00,#00,#00,#89
	db #00,#00,#00,#88,#00,#00,#0c,#0d
	db #00,#8e,#00,#00,#00,#8e,#00,#00
	db #00,#8d,#00,#00,#00,#8d,#00,#00
	db #00,#8c,#00,#00,#00,#8c,#00,#00
	db #00,#8b,#00,#00,#00,#8b,#00,#00
	db #00,#8a,#00,#00,#00,#8a,#00,#00
	db #00,#89,#00,#00,#00,#89,#00,#00
	db #00,#88,#00,#00,#09,#0a,#00,#8f
	db #fd,#ff,#00,#8f,#fa,#ff,#00,#8f
	db #f6,#ff,#00,#8f,#f0,#ff,#00,#8f
	db #ea,#ff,#00,#8f,#de,#ff,#00,#8f
	db #d2,#ff,#00,#8f,#c8,#ff,#00,#8f
	db #c0,#ff,#00,#8f,#00,#00,#0f,#10
	db #00,#1f,#00,#00,#00,#1f,#00,#00
	db #00,#1e,#00,#00,#00,#1d,#00,#00
	db #00,#1c,#00,#00,#00,#1c,#00,#00
	db #00,#1b,#00,#00,#00,#1a,#00,#00
	db #00,#19,#00,#00,#00,#18,#00,#00
	db #00,#17,#00,#00,#00,#16,#00,#00
	db #00,#14,#00,#00,#00,#13,#00,#00
	db #00,#12,#00,#00,#00,#11,#00,#00
	db #0b,#0c,#08,#0f,#01,#02,#00,#8d
	db #c2,#02,#00,#8b,#01,#04,#00,#88
	db #c1,#04,#00,#86,#81,#05,#00,#80
	db #41,#06,#00,#80,#01,#07,#00,#80
	db #40,#07,#00,#80,#41,#08,#00,#80
	db #80,#08,#00,#80,#09,#09,#00,#00
	db #00,#00,#00,#01,#00,#90,#00,#00
	db #00,#01,#00,#05,#06,#0c,#13,#00
	db #00,#00,#00,#06,#07,#00,#18,#07
	db #00,#00,#00,#00,#02,#04,#00,#f4
	db #0c,#00,#03,#04,#18,#18,#00,#00
	db #12,#13,#00,#fe,#fc,#fa,#f8,#f6
	db #f4,#f2,#f0,#ee,#ec,#ea,#e6,#e4
	db #e2,#e0,#de,#dc,#da,#0c,#0d,#18
	db #13,#0c,#07,#00,#f4,#0c,#07,#00
	db #f4,#07,#00,#f4,#06,#07,#24,#0c
	db #0c,#00,#f4,#00,#00,#00,#03,#00
	db #05,#0c,#00,#03,#00,#07,#0c,#00
	db #03,#00,#03,#07,#00,#03,#07,#04
	db #00,#00,#03,#f8,#fb,#00,#00,#03
	db #00,#05,#07,#00,#00,#00,#00,#00
;
.music_info
	db "CEZ Collection Volume 1 - Face A (2008)(CEZ Games Studio)()",0
	db "ProTracker 3.5 compilation of SMALL REMIX BY ALOS(JNR)/SPARK",0

	read "music_end.asm"
