; Music of Blip Music! - 23 - Tech - No! - Original (1996)(Systeme D)(CRTC)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU23.BIN"
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
	db #00,#00,#00,#00,#00,#00,#00,#6f
	db #06,#f9,#82,#6b,#83,#dd,#83,#19
	db #03,#03,#b9,#82,#d9,#82,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#f9,#80,#19,#81,#39,#81
	db #00,#00,#79,#81,#08,#81,#08,#81
	db #00,#00,#99,#81,#08,#81,#08,#81
	db #00,#00,#b9,#81,#08,#81,#d9,#81
	db #00,#00,#19,#82,#08,#81,#08,#81
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#39,#82,#59,#82,#08,#81
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#79,#82,#99,#82,#08,#81
	db #00,#00,#2e,#20,#28,#24,#ff,#00
	db #14,#22,#0c,#30,#ff,#00,#20,#ff
	db #3a,#02,#00,#41,#82,#3f,#82,#41
	db #82,#44,#82,#41,#82,#3f,#82,#41
	db #82,#3a,#82,#41,#82,#3f,#82,#41
	db #82,#44,#82,#41,#82,#3f,#82,#41
	db #82,#ff,#36,#02,#00,#41,#82,#3f
	db #82,#41,#82,#44,#82,#41,#82,#3f
	db #82,#41,#82,#38,#82,#41,#82,#3f
	db #82,#41,#82,#44,#82,#41,#82,#3f
	db #82,#41,#82,#ff,#2e,#20,#20,#ff
	db #68,#06,#f0,#68,#86,#68,#84,#68
	db #84,#68,#84,#68,#82,#68,#82,#68
	db #81,#68,#81,#68,#81,#68,#81,#ff
	db #2e,#04,#28,#24,#ba,#2f,#00,#2e
	db #03,#28,#24,#27,#02,#28,#35,#29
	db #02,#28,#30,#2c,#02,#28,#28,#ae
	db #28,#24,#fe,#01,#2e,#04,#28,#24
	db #ba,#2f,#00,#2e,#03,#28,#24,#27
	db #02,#28,#35,#29,#02,#28,#30,#2c
	db #02,#28,#28,#2e,#02,#28,#24,#ff
	db #e8,#f1,#c6,#40,#46,#81,#22,#81
	db #46,#81,#22,#81,#22,#81,#46,#81
	db #e8,#f0,#c6,#40,#46,#81,#22,#81
	db #46,#81,#22,#81,#22,#81,#46,#81
	db #e8,#f0,#c6,#40,#46,#81,#22,#81
	db #46,#81,#22,#81,#22,#81,#46,#81
	db #e8,#f0,#c6,#40,#46,#81,#22,#81
	db #46,#81,#22,#81,#22,#81,#46,#81
	db #ff,#2a,#04,#28,#2d,#b6,#2f,#01
	db #2a,#03,#28,#2d,#1e,#02,#28,#5a
	db #2a,#02,#28,#2d,#25,#02,#28,#3c
	db #2a,#02,#28,#2d,#b1,#28,#1e,#b0
	db #28,#20,#ae,#28,#24,#ac,#28,#28
	db #ae,#28,#24,#ac,#28,#28,#aa,#28
	db #2d,#a9,#28,#30,#a7,#28,#35,#a5
	db #28,#3c,#a4,#28,#40,#a2,#28,#48
	db #a0,#28,#50,#9d,#28,#60,#a9,#28
	db #30,#b5,#28,#18,#ff,#e8,#f0,#c2
	db #40,#42,#81,#1e,#81,#42,#81,#1e
	db #81,#1e,#81,#42,#81,#e8,#f0,#c2
	db #40,#42,#81,#1e,#81,#42,#81,#1e
	db #81,#1e,#81,#42,#81,#e8,#f0,#c4
	db #40,#44,#81,#20,#81,#44,#81,#20
	db #81,#20,#81,#44,#81,#e8,#f0,#a0
	db #20,#2c,#81,#38,#81,#44,#81,#38
	db #81,#2c,#81,#20,#81,#ff,#fe,#20
	db #ff,#e8,#d0,#e8,#f0,#e8,#d0,#e8
	db #f0,#e8,#d0,#e8,#f0,#e8,#d0,#e8
	db #f0,#e8,#d0,#e8,#f0,#68,#81,#68
	db #81,#68,#84,#e8,#d0,#e8,#f0,#e8
	db #d0,#e8,#f0,#e8,#d0,#e8,#f0,#e8
	db #d0,#e8,#f0,#e8,#d0,#e8,#f0,#68
	db #81,#68,#81,#68,#84,#ff,#94,#01
	db #20,#81,#2c,#81,#38,#81,#44,#81
	db #50,#81,#44,#81,#38,#81,#2a,#81
	db #1e,#81,#12,#81,#1e,#81,#2a,#81
	db #36,#81,#42,#81,#4e,#81,#3d,#81
	db #31,#81,#25,#81,#19,#81,#0d,#81
	db #19,#81,#25,#81,#31,#81,#3d,#81
	db #4b,#81,#3f,#81,#33,#81,#27,#81
	db #1b,#81,#0f,#81,#1b,#81,#ff,#a0
	db #18,#50,#ac,#18,#28,#9e,#18,#5a
	db #aa,#18,#2d,#9b,#18,#6a,#a7,#18
	db #35,#a0,#18,#50,#ac,#18,#28,#9e
	db #18,#5a,#aa,#18,#2d,#9b,#18,#6a
	db #a7,#18,#35,#a0,#18,#50,#ac,#18
	db #28,#9e,#18,#5a,#aa,#18,#2d,#9b
	db #18,#6a,#a7,#18,#35,#a0,#18,#50
	db #ac,#18,#28,#9e,#18,#5a,#aa,#18
	db #2d,#9b,#18,#6a,#a7,#18,#35,#a0
	db #18,#50,#ac,#18,#28,#9e,#18,#5a
	db #aa,#18,#2d,#9b,#18,#6a,#a7,#18
	db #35,#a0,#18,#50,#ac,#18,#28,#ff
	db #1b,#06,#11,#1b,#86,#19,#84,#1b
	db #86,#1b,#86,#19,#84,#ff,#1b,#06
	db #10,#1b,#86,#19,#82,#20,#84,#19
	db #82,#1b,#84,#19,#84,#1b,#84,#ff
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#09
	db #08,#07,#06,#05,#04,#03,#01,#00
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
	db #07,#0b,#0e,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#08,#08,#08,#08,#07
	db #07,#06,#06,#06,#06,#05,#05,#05
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #0e,#0e,#0e,#0e,#0a,#05,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #00,#00,#10,#00,#20,#00,#30,#00
	db #40,#00,#50,#00,#60,#00,#70,#00
	db #80,#00,#90,#00,#a0,#00,#b0,#00
	db #c0,#00,#d0,#00,#e0,#00,#f0,#00
	db #00,#01,#10,#01,#20,#01,#30,#01
	db #40,#01,#50,#01,#60,#01,#70,#01
	db #80,#01,#90,#01,#a0,#01,#b0,#01
	db #c0,#01,#d0,#01,#e0,#01,#f0,#01
	db #0a,#0a,#0a,#0a,#07,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#07,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#02,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #00,#8b,#7e,#00,#8b,#7e,#00,#96
	db #7e,#00,#8b,#7e,#00,#dd,#7e,#00
	db #f9,#7e,#00,#72,#7f,#00,#f9,#7e
	db #00,#72,#7f,#00,#ff,#7f,#00,#ff
	db #7f,#00,#96,#7e,#00,#96,#7e,#00
	db #96,#7e,#00,#96,#7e,#00,#37,#80
	db #00,#37,#80,#00,#37,#80,#00,#37
	db #80,#00,#f9,#7e,#00,#72,#7f,#00
	db #f9,#7e,#00,#72,#7f,#00,#ff,#7f
	db #00,#ff,#7f,#00,#96,#7e,#00,#96
	db #7e,#00,#96,#7e,#00,#96,#7e,#00
	db #37,#80,#00,#37,#80,#00,#37,#80
	db #00,#37,#80,#00,#d9,#80,#00,#e7
	db #80,#f9,#d9,#80,#00,#d9,#80,#80
	db #08,#83,#00,#90,#7e,#00,#99,#7e
	db #00,#bb,#7e,#00,#99,#7e,#00,#bb
	db #7e,#00,#99,#7e,#00,#bb,#7e,#00
	db #99,#7e,#00,#bb,#7e,#00,#02,#80
	db #00,#02,#80,#00,#02,#80,#00,#02
	db #80,#00,#02,#80,#00,#02,#80,#00
	db #02,#80,#00,#02,#80,#00,#02,#80
	db #00,#02,#80,#00,#99,#7e,#00,#bb
	db #7e,#00,#99,#7e,#00,#bb,#7e,#00
	db #02,#80,#00,#02,#80,#00,#02,#80
	db #00,#02,#80,#00,#02,#80,#00,#02
	db #80,#00,#02,#80,#00,#02,#80,#00
	db #02,#80,#00,#02,#80,#00,#ff,#7f
	db #00,#96,#7e,#f9,#ff,#7f,#00,#ff
	db #7f,#80,#7a,#83,#00,#96,#7e,#00
	db #96,#7e,#00,#96,#7e,#00,#96,#7e
	db #00,#e1,#7e,#00,#31,#7f,#00,#be
	db #7f,#00,#31,#7f,#00,#be,#7f,#00
	db #96,#7e,#00,#96,#7e,#00,#78,#80
	db #00,#78,#80,#00,#78,#80,#00,#78
	db #80,#00,#78,#80,#00,#78,#80,#00
	db #78,#80,#00,#78,#80,#00,#31,#7f
	db #00,#be,#7f,#00,#31,#7f,#00,#be
	db #7f,#00,#96,#7e,#00,#96,#7e,#00
	db #78,#80,#00,#78,#80,#00,#78,#80
	db #00,#78,#80,#00,#78,#80,#00,#78
	db #80,#00,#78,#80,#00,#78,#80,#00
	db #ff,#7f,#00,#96,#7e,#f9,#ff,#7f
	db #00,#ff,#7f,#80,#ec,#83,#00,#00
;
.init_music		; added by Megachur
;
	ld e,#01
	jp real_init_music
;
.music_info
	db "Blip Music! - 23 - Tech - No! - Original (1996)(Systeme D)(CRTC)",0
	db "ST-Module",0

	read "music_end.asm"
