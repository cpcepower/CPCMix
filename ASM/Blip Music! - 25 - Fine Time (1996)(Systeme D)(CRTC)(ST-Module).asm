; Music of Blip Music! - 25 - Fine Time (1996)(Systeme D)(CRTC)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU25.BIN"
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
	db #00,#00,#00,#00,#00,#00,#00,#30
	db #0a,#80,#87,#b0,#87,#e0,#87,#c0
	db #06,#06,#20,#87,#40,#87,#60,#87
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#a0,#84,#c0,#84,#e0,#84
	db #00,#00,#20,#85,#af,#84,#af,#84
	db #00,#00,#40,#85,#af,#84,#af,#84
	db #00,#00,#60,#85,#af,#84,#80,#85
	db #00,#00,#c0,#85,#af,#84,#e0,#85
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#af,#84,#af,#84,#af,#84
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#af,#84,#af,#84,#af,#84
	db #00,#00,#20,#86,#40,#86,#af,#84
	db #00,#00,#60,#86,#80,#86,#af,#84
	db #00,#00,#a0,#86,#c0,#86,#af,#84
	db #00,#00,#e0,#86,#00,#87,#af,#84
	db #00,#00,#e8,#f0,#e8,#d0,#68,#02
	db #c0,#e8,#e0,#e8,#d0,#68,#02,#c0
	db #e8,#f0,#e8,#d0,#68,#02,#c0,#e8
	db #e0,#e8,#d0,#68,#02,#c0,#e8,#f0
	db #e8,#d0,#68,#02,#c0,#e8,#e0,#e8
	db #d0,#e8,#c0,#e8,#e0,#68,#81,#e8
	db #d0,#68,#02,#c0,#e8,#e0,#e8,#d0
	db #68,#02,#c0,#68,#02,#f0,#68,#02
	db #c0,#e8,#e0,#e8,#d0,#68,#02,#c0
	db #e8,#f0,#e8,#d0,#68,#02,#c0,#e8
	db #e0,#e8,#d0,#68,#02,#c0,#e8,#f0
	db #e8,#d0,#68,#02,#c0,#e8,#e0,#e8
	db #d0,#e8,#c0,#e8,#e0,#68,#81,#e8
	db #d0,#68,#02,#c0,#e8,#e0,#e8,#d0
	db #e8,#c0,#68,#81,#ff,#92,#10,#12
	db #82,#12,#82,#12,#82,#12,#81,#14
	db #82,#14,#82,#12,#81,#17,#81,#14
	db #82,#12,#81,#12,#82,#12,#82,#12
	db #81,#12,#81,#12,#81,#14,#82,#14
	db #82,#0d,#82,#0f,#82,#12,#81,#12
	db #82,#12,#82,#12,#82,#12,#81,#14
	db #82,#14,#82,#12,#81,#17,#81,#14
	db #82,#12,#81,#12,#82,#12,#82,#12
	db #81,#12,#81,#12,#81,#14,#82,#14
	db #82,#0d,#82,#0f,#82,#ff,#c2,#3f
	db #01,#44,#83,#42,#82,#44,#84,#3f
	db #82,#3f,#82,#3f,#82,#42,#81,#44
	db #83,#42,#82,#44,#84,#3f,#82,#3f
	db #82,#3f,#82,#42,#81,#44,#83,#42
	db #82,#44,#84,#3f,#82,#3f,#82,#3f
	db #82,#47,#82,#47,#82,#46,#82,#44
	db #84,#42,#82,#3f,#82,#3f,#82,#ff
	db #00,#34,#3f,#03,#08,#1b,#fe,#01
	db #3f,#03,#08,#1b,#fe,#01,#3f,#03
	db #08,#1b,#fe,#01,#ff,#92,#10,#12
	db #82,#12,#82,#12,#82,#12,#81,#14
	db #82,#14,#82,#12,#81,#17,#81,#14
	db #82,#12,#81,#12,#81,#bd,#2f,#00
	db #92,#11,#ba,#2f,#02,#92,#11,#b6
	db #2f,#00,#92,#11,#14,#82,#38,#02
	db #2f,#00,#0d,#02,#11,#0f,#82,#12
	db #81,#12,#82,#12,#82,#12,#82,#12
	db #81,#14,#82,#14,#82,#12,#81,#17
	db #81,#14,#82,#12,#81,#12,#82,#12
	db #82,#12,#81,#12,#81,#12,#81,#14
	db #82,#14,#82,#0d,#82,#0f,#82,#ff
	db #3f,#03,#0c,#1b,#36,#03,#2f,#00
	db #38,#8a,#3f,#02,#2f,#02,#bd,#0c
	db #1e,#fe,#01,#bf,#0c,#1b,#fe,#01
	db #bd,#0c,#1e,#fe,#01,#bf,#0c,#1b
	db #fe,#01,#41,#02,#0c,#18,#fe,#02
	db #3f,#04,#0c,#1b,#36,#04,#2f,#00
	db #38,#8a,#3f,#02,#2f,#02,#3d,#02
	db #2f,#00,#3a,#02,#2f,#02,#36,#04
	db #2f,#00,#3c,#02,#2f,#02,#bf,#0c
	db #1b,#fe,#03,#ff,#38,#05,#48,#a0
	db #33,#85,#2f,#85,#2c,#84,#29,#85
	db #fe,#0a,#68,#02,#f1,#68,#8e,#68
	db #82,#68,#88,#68,#81,#68,#81,#68
	db #81,#68,#81,#ff,#e8,#d0,#68,#81
	db #68,#02,#c0,#e8,#d0,#68,#81,#68
	db #02,#c0,#e8,#d0,#68,#81,#68,#02
	db #c0,#e8,#d0,#68,#81,#68,#02,#c0
	db #e8,#d0,#68,#81,#68,#02,#c0,#e8
	db #d0,#68,#81,#68,#02,#c0,#e8,#d0
	db #68,#81,#68,#02,#c0,#e8,#d0,#68
	db #81,#68,#02,#c0,#68,#81,#e8,#d0
	db #68,#02,#c0,#e8,#d0,#68,#81,#68
	db #02,#c0,#e8,#d0,#68,#81,#68,#02
	db #c0,#e8,#d0,#68,#81,#68,#02,#c0
	db #e8,#f0,#68,#81,#e8,#c0,#e8,#f0
	db #68,#81,#68,#81,#e8,#c0,#e8,#f0
	db #68,#81,#68,#81,#e8,#c0,#e8,#f0
	db #68,#81,#68,#81,#68,#81,#68,#81
	db #ff,#94,#10,#14,#83,#14,#81,#14
	db #82,#14,#82,#12,#81,#0f,#82,#12
	db #82,#13,#82,#14,#81,#14,#83,#14
	db #81,#14,#82,#14,#82,#12,#81,#0f
	db #82,#12,#82,#13,#82,#14,#81,#14
	db #83,#14,#81,#14,#82,#14,#82,#12
	db #81,#0f,#82,#12,#82,#13,#82,#14
	db #81,#14,#83,#14,#81,#14,#82,#14
	db #82,#12,#81,#0f,#82,#12,#82,#13
	db #82,#ff,#00,#40,#ff,#e8,#d0,#68
	db #81,#68,#02,#c0,#e8,#d0,#68,#81
	db #68,#02,#c0,#e8,#d0,#68,#81,#68
	db #02,#c0,#e8,#d0,#68,#81,#68,#02
	db #c0,#e8,#d0,#68,#81,#68,#02,#c0
	db #e8,#d0,#68,#81,#68,#02,#c0,#e8
	db #d0,#68,#81,#68,#02,#c0,#e8,#d0
	db #68,#81,#68,#02,#c0,#68,#81,#e8
	db #d0,#68,#02,#c0,#e8,#d0,#68,#81
	db #68,#02,#c0,#e8,#d0,#68,#81,#68
	db #02,#c0,#e8,#d0,#68,#81,#68,#02
	db #c0,#e8,#d0,#68,#81,#68,#02,#c0
	db #e8,#d0,#68,#83,#68,#02,#f0,#68
	db #82,#68,#82,#68,#82,#ff,#b1,#08
	db #00,#fe,#01,#31,#81,#fe,#03,#31
	db #81,#fe,#01,#31,#81,#fe,#01,#31
	db #81,#fe,#03,#31,#81,#fe,#01,#31
	db #81,#fe,#01,#31,#81,#fe,#03,#31
	db #81,#fe,#01,#31,#81,#fe,#01,#31
	db #81,#fe,#03,#31,#81,#fe,#01,#31
	db #81,#fe,#01,#31,#81,#fe,#03,#31
	db #81,#fe,#01,#31,#81,#fe,#01,#31
	db #81,#fe,#03,#31,#81,#fe,#01,#31
	db #81,#fe,#01,#31,#81,#fe,#03,#31
	db #81,#fe,#01,#31,#81,#fe,#01,#31
	db #81,#fe,#05,#ff,#00,#1e,#2a,#02
	db #31,#2c,#8a,#2a,#82,#29,#82,#2a
	db #82,#29,#82,#25,#84,#68,#03,#f0
	db #68,#82,#68,#82,#68,#82,#68,#81
	db #ff,#e8,#f1,#e8,#d0,#68,#02,#c0
	db #e8,#e0,#e8,#d0,#68,#02,#c0,#e8
	db #f0,#e8,#d0,#68,#02,#c0,#e8,#e0
	db #e8,#d0,#68,#02,#c0,#e8,#f0,#e8
	db #d0,#68,#02,#c0,#e8,#e0,#e8,#d0
	db #e8,#c0,#e8,#e0,#68,#81,#e8,#d0
	db #68,#02,#c0,#e8,#e0,#e8,#d0,#68
	db #02,#c0,#68,#02,#f0,#68,#02,#c0
	db #e8,#e0,#e8,#d0,#68,#02,#c0,#e8
	db #f0,#e8,#d0,#68,#02,#c0,#e8,#e0
	db #e8,#d0,#68,#02,#c0,#e8,#f0,#e8
	db #d0,#68,#02,#c0,#e8,#e0,#e8,#d0
	db #e8,#c0,#e8,#e0,#68,#81,#e8,#d0
	db #68,#02,#c0,#e8,#e0,#e8,#d0,#e8
	db #c0,#68,#81,#ff,#92,#11,#12,#82
	db #12,#82,#12,#82,#12,#81,#14,#82
	db #14,#82,#12,#81,#17,#81,#14,#82
	db #12,#81,#12,#82,#12,#82,#12,#81
	db #12,#81,#12,#81,#14,#82,#14,#82
	db #0d,#82,#0f,#82,#12,#81,#12,#82
	db #12,#82,#12,#82,#12,#81,#14,#82
	db #14,#82,#12,#81,#17,#81,#14,#82
	db #12,#81,#12,#82,#12,#82,#12,#81
	db #12,#81,#12,#81,#14,#82,#14,#82
	db #0d,#82,#0f,#82,#ff,#36,#02,#2f
	db #00,#3a,#02,#31,#36,#02,#2f,#00
	db #3a,#02,#31,#3a,#02,#31,#38,#02
	db #2f,#00,#38,#02,#31,#38,#02,#2f
	db #00,#3a,#02,#31,#3d,#02,#31,#36
	db #02,#2f,#00,#3d,#02,#31,#3a,#02
	db #31,#38,#02,#2f,#00,#38,#02,#31
	db #38,#02,#2f,#00,#38,#02,#2f,#00
	db #3a,#02,#31,#36,#02,#2f,#00,#3a
	db #02,#31,#3a,#02,#31,#38,#02,#2f
	db #00,#38,#02,#31,#36,#02,#2f,#00
	db #3a,#02,#31,#3a,#02,#31,#36,#02
	db #2f,#00,#3a,#02,#31,#3a,#02,#31
	db #38,#02,#2f,#00,#38,#02,#31,#38
	db #02,#2f,#00,#ff,#36,#02,#2f,#00
	db #3a,#02,#31,#36,#02,#2f,#00,#3a
	db #02,#31,#3a,#02,#31,#38,#02,#2f
	db #00,#38,#02,#31,#38,#02,#2f,#00
	db #3a,#02,#31,#3d,#02,#31,#36,#02
	db #2f,#00,#3d,#02,#31,#3a,#02,#31
	db #38,#02,#2f,#00,#38,#02,#31,#38
	db #02,#2f,#00,#38,#02,#2f,#00,#3a
	db #02,#31,#36,#02,#2f,#00,#3a,#02
	db #31,#3a,#02,#31,#38,#02,#2f,#00
	db #38,#02,#31,#36,#02,#2f,#00,#3a
	db #02,#31,#3a,#02,#31,#bf,#08,#1b
	db #fe,#01,#3a,#02,#31,#bf,#08,#1b
	db #fe,#01,#38,#02,#2f,#00,#3f,#02
	db #08,#1b,#38,#02,#2f,#00,#ff,#3f
	db #02,#08,#1b,#3a,#02,#31,#36,#02
	db #2f,#00,#3a,#02,#31,#3a,#02,#31
	db #38,#02,#2f,#00,#38,#02,#31,#38
	db #02,#2f,#00,#3a,#02,#31,#bd,#08
	db #1e,#fe,#01,#bf,#08,#1b,#fe,#01
	db #bd,#08,#1e,#fe,#01,#bf,#08,#1b
	db #fe,#01,#c1,#08,#18,#fe,#03,#3f
	db #03,#08,#1b,#fe,#01,#3a,#02,#31
	db #36,#02,#2f,#00,#3a,#02,#31,#3a
	db #02,#31,#38,#02,#2f,#00,#38,#02
	db #31,#36,#02,#2f,#00,#3a,#02,#31
	db #3a,#02,#31,#bf,#08,#1b,#fe,#01
	db #3a,#02,#31,#bf,#08,#1b,#fe,#01
	db #38,#02,#2f,#00,#3f,#02,#08,#1b
	db #38,#02,#2f,#00,#ff,#bf,#08,#00
	db #fe,#01,#3f,#81,#33,#81,#fe,#01
	db #33,#81,#fe,#01,#27,#81,#fe,#01
	db #27,#81,#fe,#01,#33,#81,#fe,#01
	db #3f,#81,#fe,#02,#3f,#81,#fe,#01
	db #3f,#81,#33,#81,#fe,#01,#33,#81
	db #fe,#01,#27,#81,#fe,#01,#27,#81
	db #fe,#01,#33,#81,#fe,#01,#3f,#81
	db #fe,#02,#3f,#81,#fe,#01,#3f,#81
	db #33,#81,#fe,#01,#33,#81,#fe,#01
	db #27,#81,#fe,#01,#27,#81,#fe,#01
	db #33,#81,#fe,#01,#3f,#81,#fe,#02
	db #3f,#81,#fe,#01,#3f,#81,#33,#81
	db #fe,#01,#33,#81,#fe,#01,#27,#81
	db #fe,#01,#27,#81,#fe,#01,#33,#81
	db #fe,#01,#3f,#81,#fe,#02,#ff,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#09,#08
	db #07,#06,#05,#04,#03,#01,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0f,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0e
	db #0e,#0e,#0e,#0a,#05,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0d
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0b
	db #0b,#0a,#0a,#09,#09,#08,#08,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#02,#00,#ff
	db #ff,#00,#00,#01,#00,#00,#00,#ff
	db #ff,#00,#00,#01,#00,#00,#00,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#00
	db #00,#02,#00,#04,#00,#06,#00,#08
	db #00,#0a,#00,#0c,#00,#0e,#00,#10
	db #00,#12,#00,#14,#00,#16,#00,#18
	db #00,#1a,#00,#1c,#00,#1e,#00,#20
	db #00,#22,#00,#24,#00,#26,#00,#28
	db #00,#2a,#00,#2c,#00,#2e,#00,#30
	db #00,#32,#00,#34,#00,#36,#00,#38
	db #00,#3a,#00,#3c,#00,#3e,#00,#0f
	db #0f,#0e,#0e,#0d,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0a
	db #0a,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #09,#0d,#0f,#14,#1a,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #04,#00,#04,#00,#04,#00,#04,#00
	db #f4,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#00,#03,#00,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#03,#00
	db #03,#00,#03,#00,#03,#00,#03,#00
	db #8b,#7e,#00,#8b,#7e,#00,#8b,#7e
	db #00,#8b,#7e,#00,#8b,#7e,#00,#8b
	db #7e,#00,#8b,#7e,#00,#8b,#7e,#00
	db #65,#80,#00,#26,#81,#00,#0a,#82
	db #00,#0a,#82,#00,#0a,#82,#00,#0a
	db #82,#00,#0a,#82,#80,#89,#87,#00
	db #fe,#7e,#00,#fe,#7e,#00,#fe,#7e
	db #00,#9e,#7f,#00,#9e,#7f,#00,#fe
	db #7e,#00,#9e,#7f,#00,#9e,#7f,#00
	db #da,#80,#00,#8f,#81,#00,#7d,#82
	db #00,#7d,#82,#00,#7d,#82,#00,#7d
	db #82,#00,#7d,#82,#80,#b9,#87,#00
	db #4f,#7f,#00,#4f,#7f,#00,#89,#7f
	db #00,#f9,#7f,#00,#f9,#7f,#00,#45
	db #80,#00,#f9,#7f,#00,#f9,#7f,#00
	db #23,#81,#00,#ed,#81,#00,#ce,#82
	db #00,#3d,#83,#00,#b0,#83,#00,#b0
	db #83,#00,#26,#84,#80,#e9,#87,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music		; added by Megachur
;
	ld e,#01
	jp real_init_music
;
.music_info
	db "Blip Music! - 25 - Fine Time (1996)(Systeme D)(CRTC)",0
	db "ST-Module",0

	read "music_end.asm"
