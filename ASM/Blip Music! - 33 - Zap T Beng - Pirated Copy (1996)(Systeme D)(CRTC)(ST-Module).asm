; Music of Blip Music! - 33 - Zap T Beng - Pirated Copy (1996)(Systeme D)(CRTC)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU33.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7800

	read "music_header.asm"

	jp l7833
	jp l79a5
	jp l78b9
	jp l7816
	ld bc,l7d37
	ld de,l7d66
	ld hl,l7d95
	ret
.l7816
	ld ix,l7db4
	ld (l79d6),ix
	ld (ix+#0a),#00
	ld (ix+#0b),#20
	ld (ix+#0e),#01
	ld (ix+#0f),d
	ld a,e
	and #f0
	jp l7ae5
;
.real_init_music
.l7833
;
	ld iy,l7de0
.l7837
	dec e
	jr z,l7844
	ld c,(iy+#00)
	ld b,(iy+#01)
	add iy,bc
	jr l7837
.l7844
	ld b,#03
	ld ix,l7d27
	ld de,#002f
.l784d
	inc iy
	inc iy
	ld (ix-#06),#01
	ld (ix+#09),#00
	ld (ix+#0b),#ff
	ld (ix+#0c),#00
	ld (ix+#0d),#0f
	ld (ix+#0e),#01
	ld (ix+#13),#00
	ld l,(iy+#00)
	ld (ix-#02),l
	ld h,(iy+#01)
	ld (ix-#01),h
	ld a,(hl)
	ld (ix-#05),a
	inc hl
	ld a,(hl)
	ld (ix-#04),a
	inc hl
	ld a,(hl)
	ld (ix-#03),a
	add ix,de
	djnz l784d
	ld a,#01
	ld (l79a6),a
	ld a,(iy+#04)
	ld (l79c9),a
	ld e,#05
	add iy,de
	ld (l7dda),iy
	ld a,#38
	ld (l79f3),a
	ld hl,l7ddc
	ld b,#04
.l78a8
	ld (hl),#ff
	inc hl
	djnz l78a8
	ld a,#0c
	ld c,d
	call l7a5a
	ld a,#0d
	ld c,d
	call l7a5a
;
.stop_music
.l78b9
;
	ld a,#08
	ld c,#00
	call l7a5a
	ld a,#09
	ld c,#00
	call l7a5a
	ld a,#0a
	ld c,#00
	call l7a5a
	ld a,#07
	ld c,#1f
.l78d3 equ $ + 1
	jp l7a5a
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f,#000e,#000d,#000c
	dw #000c,#000b,#000a,#0000
.l79a6 equ $ + 1
;
.play_music
.l79a5
;
	ld a,#00
	dec a
	ld (l79a6),a
	jr nz,l79cd
.l79ad
	ld ix,l7d27
	call l7a78
	jr nc,l7a17
	ld ix,l7d56
	call l7a78
	jr nc,l7a17
	ld ix,l7d85
	call l7a78
	jr nc,l7a17
.l79c9 equ $ + 1
	ld a,#00
	ld (l79a6),a
.l79cd
	ld ix,l7d27
	call l7c17
.l79d6 equ $ + 2
	ld ix,l7d56
	call l7c17
	ld ix,l7d85
	call l7c17
	ld hl,l7ddc
.l79e6 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,l79f1
	ld (hl),a
	ld c,a
	ld a,#06
	call l7a5a
.l79f1
	inc hl
.l79f3 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,l79fe
	ld (hl),a
	ld c,a
	ld a,#07
	call l7a5a
.l79fe
	inc hl
.l7a00 equ $ + 1
	ld a,#00
	cp (hl)
	jr z,l7a0b
	ld (hl),a
	ld c,a
	ld a,#0b
	call l7a5a
.l7a0b
	inc hl
.l7a0d equ $ + 1
	ld a,#00
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l7a5a
.l7a17
	ld ix,l7d27
	ld b,#03
.l7a1d
	ld l,(ix-#02)
	ld h,(ix-#01)
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	cp #80
	jr nz,l7a30
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.l7a30
	ld (ix-#02),l
	ld (ix-#01),h
	ld a,(hl)
	inc hl
	ld (ix-#05),a
	ld a,(hl)
	inc hl
	ld (ix-#04),a
	ld a,(hl)
	ld (ix-#03),a
	ld (ix+#0d),#0f
	ld (ix-#06),#01
	ld (ix+#13),#00
	ld de,#002f
	add ix,de
	djnz l7a1d
	jp l79ad
.l7a5a
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
	ret
.l7a78
	ld (ix+#1c),#00
	scf
	dec (ix-#06)
	ret nz
	ld l,(ix-#04)
	ld h,(ix-#03)
	ld a,(hl)
	cp #ff
	ret z
	or a
	jr z,l7ad7
	cp #fe
	jr z,l7ac8
	bit 7,a
	jr nz,l7aba
	ld (ix+#0f),a
	inc hl
	ld e,(hl)
	bit 7,e
	jr nz,l7aa4
	inc hl
	ld a,(hl)
	call l7ae5
.l7aa4
	res 7,e
.l7aa6
	inc hl
	ld (ix-#04),l
	ld (ix-#03),h
	ld (ix+#0a),#00
	ld (ix+#0b),#20
	ld (ix-#06),e
	scf
	ret
.l7aba
	and #7f
	ld (ix+#0f),a
	inc hl
	ld a,(hl)
	call l7ae5
	ld e,#01
	jr l7aa6
.l7ac8
	ld c,#00
	ld (ix+#0b),#ff
	ld (ix+#10),c
	ld a,(ix-#08)
	call l7a5a
.l7ad7
	inc hl
	ld a,(hl)
	ld (ix-#06),a
	inc hl
	ld (ix-#04),l
	ld (ix-#03),h
	scf
	ret
.l7ae5
	ld b,a
	and #f0
	cp (ix+#0e)
	jr z,l7b17
	push de
	push hl
	ld (ix+#0e),a
	ld hl,(l7dda)
	rrca
	add #20
	ld e,a
	ld d,#00
	add hl,de
	push ix
	pop de
	ld c,#08
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop hl
	pop de
	ld (ix+#0d),#0f
.l7b17
	ld a,b
	and #0f
	ret z
	cp #0f
	jr z,l7b61
	cp #0e
	jr z,l7b7d
	cp #0d
	jr z,l7b97
	cp #0c
	jr z,l7b9d
	cp #0b
	jp z,l7bd2
	cp #0a
	jr z,l7b4d
	cp #08
	jr z,l7b4d
	cp #06
	jp z,l7bd8
	cp #02
	jp z,l7be8
	cp #03
	jp z,l7bee
	cp #01
	jp z,l7c0c
	ret
.l7b4d
	ld (l7a0d),a
	ld (ix+#0c),#10
	inc hl
	ld a,(hl)
	ld (l7a00),a
	xor a
	ld (ix+#09),a
	ld (ix+#13),a
	ret
.l7b61
	inc hl
	ld a,(hl)
	add a
.l7b64
	ld b,#00
	ld (ix+#0c),b
	ld (ix+#13),b
	push hl
	ld c,a
	ld hl,(l7dda)
	add hl,bc
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	pop hl
	ret
.l7b7d
	inc hl
	xor a
	ld (ix+#09),a
	inc a
	ld (ix+#13),a
	ld a,(hl)
	and #0f
	ld (ix+#14),a
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#15),a
	ret
.l7b97
	inc hl
	ld a,(hl)
	ld (l79c9),a
	ret
.l7b9d
	inc hl
	ld d,(hl)
	push hl
	ld a,d
	and #0f
	rla
	rla
	rla
	add #20
	ld bc,(l7dda)
	add #02
	ld l,a
	ld h,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#02),a
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	ld a,d
	and #f0
	rra
	add #20
	add #04
	ld l,a
	ld h,#00
	add hl,bc
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	pop hl
	ret
.l7bd2
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	ret
.l7bd8
	inc hl
	ld a,(hl)
	and #0f
	ld (ix+#0d),a
	ld a,(hl)
	and #f0
	rrca
	rrca
	rrca
	jp l7b64
.l7be8
	inc hl
	ld a,(hl)
	and #0f
	jr l7bf4
.l7bee
	inc hl
	ld a,(hl)
	and #0f
	neg
.l7bf4
	ld (ix+#1c),a
	ld a,(hl)
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld (ix+#21),a
	ld (ix+#22),a
	xor a
	ld (ix+#1d),a
	ld (ix+#1e),a
	ret
.l7c0c
	xor a
	ld (ix+#09),a
	ld (ix+#0c),a
	ld (ix+#13),a
	ret
.l7c17
	ld a,(ix+#0b)
	cp #ff
	ret z
	ld e,(ix+#0a)
	ld d,#00
	ld c,d
	ld a,(ix+#0f)
	cp #68
	jr z,l7c5c
	ld a,(ix+#09)
	or a
	jr z,l7c38
	ld l,(ix+#08)
	ld h,a
	add hl,de
	ld c,(hl)
	jr l7c55
.l7c38
	ld a,(ix+#13)
	or a
	jr z,l7c55
	dec a
	jr z,l7c49
	dec a
	jr z,l7c4d
	ld c,(ix+#15)
	jr l7c52
.l7c49
	ld a,#02
	jr l7c52
.l7c4d
	ld c,(ix+#14)
	ld a,#03
.l7c52
	ld (ix+#13),a
.l7c55
	ld a,(ix-#05)
	add (ix+#0f)
	add c
.l7c5c
	ld c,a
	ld b,d
	ld hl,l78d3
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld a,(ix+#1c)
	or a
	jr z,l7c92
	ld l,(ix+#1d)
	ld h,(ix+#1e)
	dec (ix+#22)
	jr nz,l7ca0
	ld a,e
	ld e,(ix+#1c)
	bit 7,e
	jr z,l7c80
	dec d
.l7c80
	add hl,de
	ld e,a
	ld d,#00
	ld (ix+#1d),l
	ld (ix+#1e),h
	ld a,(ix+#21)
	ld (ix+#22),a
	jr l7ca0
.l7c92
	ld l,(ix+#04)
	ld h,(ix+#05)
	add hl,de
	add hl,de
	push de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	pop de
.l7ca0
	add hl,bc
	ld a,(ix-#09)
	ld c,l
	call l7a5a
	ld a,(ix-#09)
	inc a
	ld c,h
	call l7a5a
	ld (ix+#11),l
	ld (ix+#12),h
	ld l,(ix+#00)
	ld h,(ix+#01)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7cd6
	ld c,(ix+#0d)
	cp c
	jr c,l7cc9
	ld a,c
.l7cc9
	ld (ix+#10),a
	or (ix+#0c)
	ld c,a
	ld a,(ix-#08)
	call l7a5a
.l7cd6
	ld l,(ix+#02)
	ld h,(ix+#03)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7cf8
	ld c,(ix-#07)
	or a
	jr z,l7cef
	ld (l79e6),a
	ld a,c
	sub #40
	ld c,a
.l7cef
	ld hl,l7cf7
	ld (hl),c
	ld hl,l79f3
.l7cf7 equ $ + 1
	set 0,(hl)
.l7cf8
	dec (ix+#0b)
	jr nz,l7d14
	ld a,(ix+#07)
	or a
	jr z,l7d0d
	ld (ix+#0b),a
	ld a,(ix+#06)
	ld (ix+#0a),a
	ret
.l7d0d
	ld hl,l7d56
	ld (l79d6),hl
	ret
.l7d14
	inc e
	ld (ix+#0a),e
	ret
	db #a4,#43,#52,#54,#43,#00,#08,#de
.l7d27 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d37 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#02,#09,#e6,#00
.l7d56 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d66 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#04,#0a,#ee,#00,#00
.l7d85 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7d95 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#02,#09,#e6,#00,#00,#00
.l7db4 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #12,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7de0 equ $ + 7
.l7ddc equ $ + 3
.l7dda equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#5e
	db #0b,#c0,#88,#ea,#88,#14,#89,#e0
	db #07,#06,#e0,#85,#40,#88,#00,#00
	db #60,#88,#80,#88,#00,#00,#00,#00
	db #00,#00,#a0,#88,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#c0,#85,#e0,#85,#00,#86
	db #17,#08,#40,#86,#e0,#85,#e0,#85
	db #18,#07,#60,#86,#e0,#85,#80,#86
	db #00,#00,#60,#86,#e0,#85,#c0,#86
	db #18,#07,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#87,#e0,#85,#e0,#85
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#20,#87,#e0,#85,#40,#87
	db #00,#00,#80,#87,#e0,#85,#e0,#85
	db #00,#00,#a0,#87,#e0,#85,#e0,#85
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#c0,#87,#e0,#87,#00,#88
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#3d,#04,#0f,#01,#bd,#0f
	db #01,#3d,#06,#0f,#01,#3d,#03,#0f
	db #01,#3d,#02,#0f,#01,#3d,#04,#0f
	db #01,#bd,#0f,#01,#3d,#06,#0f,#01
	db #3d,#03,#0f,#01,#3d,#02,#0f,#01
	db #3d,#04,#0f,#01,#bd,#0f,#01,#3d
	db #06,#0f,#01,#3d,#03,#0f,#01,#3d
	db #02,#0f,#01,#3d,#04,#0f,#01,#bd
	db #0f,#01,#3d,#03,#0f,#01,#ba,#e1
	db #3a,#02,#e1,#3d,#02,#0f,#01,#ba
	db #e1,#bd,#0f,#01,#3d,#81,#ff,#25
	db #40,#18,#14,#ff,#00,#02,#3d,#06
	db #0f,#01,#bd,#0f,#01,#3d,#04,#0f
	db #01,#3d,#02,#0f,#01,#3d,#03,#0f
	db #01,#3d,#06,#0f,#01,#bd,#0f,#01
	db #3d,#04,#0f,#01,#3d,#02,#0f,#01
	db #3d,#03,#0f,#01,#3d,#06,#0f,#01
	db #bd,#0f,#01,#3d,#04,#0f,#01,#3d
	db #02,#0f,#01,#3d,#03,#0f,#01,#3d
	db #06,#0f,#01,#bd,#0f,#01,#3d,#02
	db #0f,#01,#3a,#02,#e1,#bd,#0f,#01
	db #ba,#e1,#ba,#e1,#ff,#bd,#0f,#01
	db #a5,#a1,#a3,#a1,#99,#a1,#a3,#a1
	db #bd,#0f,#01,#a5,#a1,#bd,#0f,#01
	db #a3,#a1,#a5,#a1,#8d,#c1,#bd,#0f
	db #01,#8d,#c1,#99,#a1,#9e,#a1,#a0
	db #a1,#bd,#0f,#01,#a5,#a1,#a3,#a1
	db #99,#a1,#a3,#a1,#bd,#0f,#01,#a5
	db #a1,#bd,#0f,#01,#a3,#a1,#a5,#a1
	db #8d,#c1,#bd,#0f,#01,#8d,#c1,#99
	db #a1,#9e,#a1,#a0,#a1,#bd,#0f,#01
	db #a5,#a1,#a3,#a1,#99,#a1,#a3,#a1
	db #bd,#0f,#01,#a5,#a1,#bd,#0f,#01
	db #a3,#a1,#a5,#a1,#8d,#c1,#bd,#0f
	db #01,#8d,#c1,#99,#a1,#9e,#a1,#a0
	db #a1,#bd,#0f,#01,#a5,#a1,#a3,#a1
	db #99,#a1,#a3,#a1,#bd,#0f,#01,#a5
	db #a1,#bd,#0f,#01,#a3,#a1,#a5,#a1
	db #8d,#c1,#bd,#0f,#01,#8d,#c1,#99
	db #a1,#9e,#a1,#a0,#a1,#ff,#99,#a1
	db #8d,#c1,#bd,#0f,#01,#8d,#c1,#3a
	db #02,#e1,#8d,#c1,#8d,#b1,#bd,#0f
	db #01,#bd,#0f,#01,#8d,#c1,#99,#a1
	db #3a,#02,#e1,#bd,#0f,#01,#bd,#0f
	db #01,#99,#a1,#8d,#c1,#bd,#0f,#01
	db #8d,#c1,#3a,#02,#e1,#8d,#c1,#8d
	db #b1,#bd,#0f,#01,#bd,#0f,#01,#8d
	db #c1,#99,#a1,#3a,#02,#e1,#bd,#0f
	db #01,#bd,#0f,#01,#99,#a1,#8d,#c1
	db #bd,#0f,#01,#8d,#c1,#3a,#02,#e1
	db #8d,#c1,#8d,#b1,#bd,#0f,#01,#bd
	db #0f,#01,#8d,#c1,#99,#a1,#3a,#02
	db #e1,#bd,#0f,#01,#bd,#0f,#01,#99
	db #a1,#8d,#c1,#bd,#0f,#01,#8d,#c1
	db #3a,#02,#e1,#8d,#c1,#8d,#b1,#bd
	db #0f,#01,#bd,#0f,#01,#8d,#c1,#99
	db #a1,#3a,#02,#e1,#bd,#0f,#01,#bd
	db #0f,#01,#ff,#00,#3c,#3b,#04,#21
	db #ff,#99,#a1,#8d,#c1,#bd,#0f,#01
	db #8d,#c1,#3a,#02,#e1,#8d,#c1,#8d
	db #b1,#bd,#0f,#01,#bd,#0f,#01,#8d
	db #c1,#99,#a1,#3a,#02,#e1,#bd,#0f
	db #01,#bd,#0f,#01,#99,#a1,#8d,#c1
	db #bd,#0f,#01,#8d,#c1,#3a,#02,#e1
	db #8d,#c1,#8d,#b1,#bd,#0f,#01,#bd
	db #0f,#01,#8d,#c1,#99,#a1,#3a,#02
	db #e1,#bd,#0f,#01,#bd,#0f,#01,#99
	db #a1,#8d,#c1,#bd,#0f,#01,#8d,#c1
	db #3a,#02,#e1,#8d,#c1,#8d,#b1,#bd
	db #0f,#01,#bd,#0f,#01,#8d,#c1,#99
	db #a1,#3a,#02,#e1,#bd,#0f,#01,#bd
	db #0f,#01,#99,#a1,#8d,#c1,#bd,#0f
	db #01,#8d,#c1,#3a,#02,#e1,#8d,#c1
	db #8d,#b1,#ba,#e1,#ba,#e1,#8d,#b1
	db #99,#a1,#ba,#e1,#ba,#e1,#bd,#0f
	db #01,#bd,#0f,#01,#ff,#bd,#0f,#01
	db #a5,#a1,#a3,#a1,#99,#a1,#a3,#a1
	db #bd,#0f,#01,#a5,#a1,#bd,#0f,#01
	db #a3,#a1,#a5,#a1,#8f,#c1,#bd,#0f
	db #01,#8f,#c1,#99,#a1,#9e,#a1,#a0
	db #a1,#bd,#0f,#01,#a5,#a1,#a3,#a1
	db #99,#a1,#a3,#a1,#bd,#0f,#01,#a5
	db #a1,#bd,#0f,#01,#a3,#a1,#a5,#a1
	db #8f,#c1,#bd,#0f,#01,#8f,#c1,#99
	db #a1,#9e,#a1,#a0,#a1,#bb,#0f,#04
	db #a3,#a1,#a1,#a1,#97,#a1,#a1,#a1
	db #bb,#0f,#04,#a3,#a1,#bb,#0f,#04
	db #a1,#a1,#a3,#a1,#8d,#c1,#bb,#0f
	db #04,#8d,#c1,#97,#a1,#9c,#a1,#9e
	db #a1,#bb,#0f,#04,#a3,#a1,#a1,#a1
	db #97,#a1,#a1,#a1,#bb,#0f,#04,#a3
	db #a1,#bb,#0f,#04,#a1,#a1,#a3,#a1
	db #8d,#c1,#bb,#0f,#04,#8d,#c1,#97
	db #a1,#9c,#a1,#9e,#a1,#ff,#3d,#07
	db #30,#fe,#01,#3d,#85,#fe,#01,#3d
	db #81,#fe,#01,#3d,#88,#40,#86,#3f
	db #81,#fe,#01,#3f,#86,#3d,#81,#fe
	db #01,#3d,#86,#3c,#82,#3d,#90,#ff
	db #99,#a1,#8d,#c1,#bd,#0f,#01,#8d
	db #c1,#3a,#02,#e1,#8d,#c1,#8d,#b1
	db #bd,#0f,#01,#bd,#0f,#01,#8d,#c1
	db #99,#a1,#3a,#02,#e1,#bd,#0f,#01
	db #bd,#0f,#01,#99,#a1,#8d,#c1,#bd
	db #0f,#01,#8d,#c1,#3a,#02,#e1,#8d
	db #c1,#8d,#b1,#bd,#0f,#01,#bd,#0f
	db #01,#8d,#c1,#99,#a1,#3a,#02,#e1
	db #bd,#0f,#01,#bd,#0f,#01,#97,#a1
	db #8d,#c1,#bb,#0f,#04,#8d,#c1,#3a
	db #02,#e1,#8d,#c1,#8d,#b1,#bb,#0f
	db #04,#bb,#0f,#04,#8d,#c1,#97,#a1
	db #3a,#02,#e1,#bb,#0f,#04,#bb,#0f
	db #04,#97,#a1,#8d,#c1,#bb,#0f,#04
	db #8d,#c1,#3a,#02,#e1,#8d,#c1,#8d
	db #b1,#bb,#0f,#04,#bb,#0f,#04,#8d
	db #c1,#97,#a1,#3a,#02,#e1,#bb,#0f
	db #04,#bb,#0f,#04,#ff,#c2,#0f,#01
	db #aa,#a1,#a8,#a1,#9e,#a1,#a8,#a1
	db #c2,#0f,#01,#aa,#a1,#c2,#0f,#01
	db #a8,#a1,#aa,#a1,#98,#c1,#c2,#0f
	db #01,#98,#c1,#9e,#a1,#a3,#a1,#a5
	db #a1,#c2,#0f,#01,#aa,#a1,#a8,#a1
	db #9e,#a1,#a8,#a1,#c2,#0f,#01,#aa
	db #a1,#c2,#0f,#01,#a8,#a1,#aa,#a1
	db #98,#c1,#c2,#0f,#01,#98,#c1,#9e
	db #a1,#a3,#a1,#a5,#a1,#c0,#0f,#03
	db #a8,#a1,#a6,#a1,#9c,#a1,#a6,#a1
	db #c0,#0f,#03,#a8,#a1,#c0,#0f,#03
	db #a7,#a1,#a8,#a1,#96,#c1,#c0,#0f
	db #03,#96,#c1,#9c,#a1,#a1,#a1,#a3
	db #a1,#c0,#0f,#03,#a8,#a1,#a6,#a1
	db #9c,#a1,#a6,#a1,#c0,#0f,#03,#a8
	db #a1,#c0,#0f,#03,#a7,#a1,#a8,#a1
	db #96,#c1,#c0,#0f,#03,#96,#c1,#9c
	db #a1,#a1,#a1,#a3,#a1,#ff,#42,#06
	db #30,#44,#82,#46,#84,#44,#84,#47
	db #84,#46,#84,#44,#82,#41,#82,#42
	db #84,#4b,#84,#49,#84,#47,#84,#46
	db #84,#44,#84,#46,#82,#42,#82,#49
	db #88,#ff,#9e,#a1,#92,#c1,#c2,#0f
	db #01,#92,#c1,#3a,#02,#e1,#92,#c1
	db #92,#b1,#c2,#0f,#01,#c2,#0f,#01
	db #92,#c1,#9e,#a1,#3a,#02,#e1,#c2
	db #0f,#01,#c2,#0f,#01,#9e,#a1,#92
	db #c1,#c2,#0f,#01,#92,#c1,#3a,#02
	db #e1,#92,#c1,#92,#b1,#c2,#0f,#01
	db #c2,#0f,#01,#92,#c1,#9e,#a1,#3a
	db #02,#e1,#c2,#0f,#01,#c2,#0f,#01
	db #9c,#a1,#90,#c1,#c0,#0f,#03,#90
	db #c1,#3a,#02,#e1,#90,#c1,#90,#b1
	db #c0,#0f,#03,#c0,#0f,#03,#90,#c1
	db #9c,#a1,#3a,#02,#e1,#c0,#0f,#03
	db #c0,#0f,#03,#9c,#a1,#90,#c1,#c0
	db #0f,#03,#90,#c1,#3a,#02,#e1,#90
	db #c1,#90,#b1,#c0,#0f,#03,#c0,#0f
	db #03,#90,#c1,#9c,#a1,#3a,#02,#e1
	db #c0,#0f,#03,#c0,#0f,#03,#ff,#be
	db #0f,#01,#a6,#a1,#a4,#a1,#9a,#a1
	db #a4,#a1,#be,#0f,#01,#a6,#a1,#be
	db #0f,#01,#a4,#a1,#a6,#a1,#90,#c1
	db #be,#0f,#01,#90,#c1,#9a,#a1,#9f
	db #a1,#a1,#a1,#be,#0f,#01,#a6,#a1
	db #a4,#a1,#9a,#a1,#a4,#a1,#be,#0f
	db #01,#a6,#a1,#be,#0f,#01,#a4,#a1
	db #a6,#a1,#90,#c1,#be,#0f,#01,#90
	db #c1,#9a,#a1,#9f,#a1,#a1,#a1,#bc
	db #0f,#04,#a4,#a1,#a2,#a1,#98,#a1
	db #a2,#a1,#bc,#0f,#04,#a4,#a1,#bc
	db #0f,#04,#a2,#a1,#a4,#a1,#8e,#c1
	db #bc,#0f,#04,#8e,#c1,#98,#a1,#9d
	db #a1,#9f,#a1,#bc,#0f,#04,#a4,#a1
	db #a2,#a1,#98,#a1,#a2,#a1,#bc,#0f
	db #04,#a4,#a1,#bc,#0f,#04,#a2,#a1
	db #a4,#a1,#8e,#c1,#bc,#0f,#04,#8e
	db #c1,#98,#a1,#9d,#a1,#9f,#a1,#ff
	db #41,#02,#30,#3e,#88,#45,#82,#47
	db #82,#45,#82,#48,#82,#43,#87,#fe
	db #01,#43,#82,#41,#82,#40,#82,#3e
	db #82,#45,#84,#40,#82,#41,#82,#3e
	db #84,#3b,#82,#d6,#7f,#08,#d4,#7f
	db #08,#d1,#7f,#08,#cf,#7f,#08,#d1
	db #7f,#08,#d1,#7f,#08,#cf,#7f,#08
	db #cd,#7f,#08,#cf,#7f,#08,#cd,#7f
	db #08,#ca,#7f,#08,#c8,#7f,#08,#c5
	db #7f,#08,#c8,#7f,#08,#c3,#7f,#08
	db #c5,#7f,#08,#ff,#9a,#a1,#8e,#c1
	db #be,#0f,#01,#8e,#c1,#3a,#02,#e1
	db #8e,#c1,#8e,#b1,#be,#0f,#01,#be
	db #0f,#01,#8e,#c1,#9a,#a1,#3a,#02
	db #e1,#be,#0f,#01,#be,#0f,#01,#9a
	db #a1,#8e,#c1,#be,#0f,#01,#8e,#c1
	db #3a,#02,#e1,#8e,#c1,#8e,#b1,#be
	db #0f,#01,#be,#0f,#01,#8e,#c1,#9a
	db #a1,#3a,#02,#e1,#be,#0f,#01,#be
	db #0f,#01,#98,#a1,#8e,#c1,#bc,#0f
	db #04,#8e,#c1,#3a,#02,#e1,#8e,#c1
	db #8e,#b1,#bc,#0f,#04,#bc,#0f,#04
	db #8e,#c1,#98,#a1,#3a,#02,#e1,#bc
	db #0f,#04,#bc,#0f,#04,#98,#a1,#8e
	db #c1,#bc,#0f,#04,#8e,#c1,#3a,#02
	db #e1,#8e,#c1,#8e,#b1,#bc,#0f,#04
	db #bc,#0f,#04,#8e,#c1,#98,#a1,#3a
	db #02,#e1,#bc,#0f,#04,#bc,#0f,#04
	db #ff,#43,#02,#31,#40,#87,#fe,#01
	db #40,#82,#41,#82,#43,#82,#4c,#83
	db #fe,#01,#4c,#84,#48,#85,#fe,#01
	db #43,#81,#fe,#01,#43,#82,#40,#87
	db #fe,#01,#40,#82,#41,#82,#40,#82
	db #43,#83,#fe,#01,#43,#84,#41,#85
	db #fe,#01,#41,#02,#31,#ff,#41,#02
	db #30,#3e,#88,#45,#82,#47,#82,#45
	db #82,#48,#82,#43,#88,#43,#82,#41
	db #82,#40,#82,#3e,#82,#45,#84,#40
	db #82,#41,#82,#3e,#84,#3b,#82,#3c
	db #90,#ff,#9a,#a1,#8e,#c1,#be,#0f
	db #01,#8e,#c1,#3a,#02,#e1,#8e,#c1
	db #8e,#b1,#be,#0f,#01,#be,#0f,#01
	db #8e,#c1,#9a,#a1,#3a,#02,#e1,#be
	db #0f,#01,#be,#0f,#01,#9a,#a1,#8e
	db #c1,#be,#0f,#01,#8e,#c1,#3a,#02
	db #e1,#8e,#c1,#8e,#b1,#be,#0f,#01
	db #be,#0f,#01,#8e,#c1,#9a,#a1,#3a
	db #02,#e1,#be,#0f,#01,#be,#0f,#01
	db #98,#a1,#8e,#c1,#bc,#0f,#04,#8e
	db #c1,#3a,#02,#e1,#8e,#c1,#8e,#b1
	db #bc,#0f,#04,#bc,#0f,#04,#8e,#c1
	db #98,#a1,#3a,#02,#e1,#bc,#0f,#04
	db #bc,#0f,#04,#98,#a1,#8e,#c1,#bc
	db #0f,#04,#8e,#c1,#3a,#02,#e1,#8e
	db #c1,#8e,#b1,#bc,#0f,#04,#bc,#0f
	db #04,#8e,#c1,#98,#a1,#3a,#02,#e1
	db #bc,#0f,#04,#bc,#0f,#00,#ff,#0e
	db #0e,#0c,#0b,#0a,#09,#08,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0e,#0e,#0e,#0e,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#00
	db #00,#fe,#ff,#fc,#ff,#fe,#ff,#00
	db #00,#02,#00,#04,#00,#02,#00,#00
	db #00,#fe,#ff,#fc,#ff,#fe,#ff,#00
	db #00,#02,#00,#04,#00,#02,#00,#fe
	db #ff,#fc,#ff,#fa,#ff,#f8,#ff,#f6
	db #ff,#f4,#ff,#f2,#ff,#f0,#ff,#ee
	db #ff,#ec,#ff,#ea,#ff,#e8,#ff,#e6
	db #ff,#e4,#ff,#e2,#ff,#e0,#ff,#00
	db #00,#fe,#ff,#fc,#ff,#fe,#ff,#00
	db #00,#02,#00,#04,#00,#02,#00,#00
	db #00,#fe,#ff,#fc,#ff,#fe,#ff,#00
	db #00,#02,#00,#04,#00,#02,#00,#00
	db #00,#fe,#ff,#fc,#ff,#fe,#ff,#00
	db #00,#02,#00,#04,#00,#02,#00,#00
	db #00,#fe,#ff,#fc,#ff,#fe,#ff,#00
	db #00,#02,#00,#04,#00,#02,#00,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#ff,#ff,#fe,#ff,#ff,#ff,#00
	db #00,#01,#00,#02,#00,#01,#00,#00
	db #00,#ff,#ff,#fe,#ff,#ff,#ff,#00
	db #00,#01,#00,#02,#00,#01,#00,#00
	db #00,#ff,#ff,#fe,#ff,#ff,#ff,#00
	db #00,#01,#00,#02,#00,#01,#00,#00
	db #00,#ff,#ff,#fe,#ff,#ff,#ff,#00
	db #00,#01,#00,#02,#00,#01,#00,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
	db #04,#03,#02,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0a
	db #08,#06,#04,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0b,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#02,#01,#01,#01,#02,#03,#04
	db #06,#07,#09,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#32
	db #00,#64,#00,#96,#00,#c8,#00,#fa
	db #00,#2c,#01,#5e,#01,#90,#01,#c2
	db #01,#f4,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#04
	db #07,#0c,#04,#07,#0c,#04,#07,#0c
	db #04,#07,#0c,#04,#07,#0c,#04,#07
	db #0c,#04,#07,#0c,#04,#07,#0c,#04
	db #07,#0c,#04,#07,#0c,#04,#07,#00
	db #0c,#f4,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#fb
	db #8b,#7e,#fb,#36,#7f,#fb,#36,#7f
	db #fb,#e6,#80,#fb,#e6,#80,#fb,#26
	db #82,#fb,#26,#82,#fb,#e6,#80,#fb
	db #e6,#80,#fb,#68,#83,#fb,#68,#83
	db #fb,#68,#83,#fb,#68,#83,#80,#c0
	db #88,#fb,#e0,#7e,#fb,#e0,#7e,#fb
	db #54,#80,#fb,#77,#81,#fb,#77,#81
	db #fb,#b7,#82,#fb,#b7,#82,#fb,#77
	db #81,#fb,#77,#81,#fb,#da,#84,#fb
	db #0f,#85,#fb,#da,#84,#fb,#f9,#83
	db #80,#ea,#88,#fb,#e5,#7e,#fb,#c7
	db #7f,#fb,#5a,#80,#fb,#99,#81,#fb
	db #99,#81,#fb,#db,#82,#fb,#db,#82
	db #fb,#99,#81,#fb,#99,#81,#fb,#4d
	db #84,#fb,#33,#85,#fb,#4d,#84,#fb
	db #4d,#84,#80,#14,#89,#00,#00,#00
;
.init_music		; added by Megachur
;
	ld e,#01
	jp real_init_music
;
.music_info
	db "Blip Music! - 33 - Zap T Beng - Pirated Copy (1996)(Systeme D)(CRTC)",0
	db "ST-Module",0

	read "music_end.asm"
