; Music of Butcher Hill (1988)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 01/04/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BUTCHERH.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #2e10
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"
	
;2e10
	jp l2ea0        ; init
	jp l2f28        ; play
.l2e16
.music_end
	db #00
	jp l2e21        ; init sound effects
;
.stop_music
;
	xor a
	ld (l2e16),a
	jp l32aa
.l2e21
	di
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l3f7d
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l31ec
	call l3223
	set 7,(ix+#11)
	nop
	ret
.l2e50 equ $ + 7
.l2e4a equ $ + 1
.l2e49
	db #00,#3a,#3d,#ac,#35,#b2,#35,#d9
.l2e58 equ $ + 7
.l2e56 equ $ + 5
.l2e55 equ $ + 4
.l2e54 equ $ + 3
.l2e53 equ $ + 2
.l2e52 equ $ + 1
	db #3e,#05,#00,#00,#06,#ff,#0d,#00
.l2e5f equ $ + 6
.l2e5e equ $ + 5
	db #00,#00,#00,#00,#40,#08,#49,#3d
.l2e68 equ $ + 7
.l2e67 equ $ + 6
.l2e65 equ $ + 4
	db #eb,#34,#12,#35,#f7,#3e,#01,#00
.l2e6d equ $ + 4
.l2e6b equ $ + 2
.l2e6a equ $ + 1
.l2e69
	db #00,#00,#ff,#31,#00,#3f,#3f,#01
.l2e74 equ $ + 3
.l2e73 equ $ + 2
	db #01,#40,#10,#62,#3d,#15,#35,#3c
.l2e80 equ $ + 7
.l2e7f equ $ + 6
.l2e7e equ $ + 5
.l2e7d equ $ + 4
.l2e7c equ $ + 3
.l2e7a equ $ + 1
	db #35,#e3,#3e,#05,#00,#00,#02,#ff
.l2e88 equ $ + 7
.l2e82 equ $ + 1
	db #42,#00,#3f,#3f,#01,#01,#40,#00
	db #0a,#14,#1e,#28,#32,#3c,#46,#00
	db #0a,#14,#1e,#28,#32,#3c,#46,#00
	db #0a,#14,#1e,#28,#32,#3c,#46
;
.init_music
.l2ea0
;
	push af
	call l32aa
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l3d20
	add l
	ld l,a
	jr nc,l2eb1
	inc h
.l2eb1
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l2e4a),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l2e5f),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l2e74),de
	xor a
	ld (l2e53),a
	ld (l2e68),a
	ld (l2e7d),a
	ld (l2e58),a
	ld (l2e6d),a
	ld (l2e82),a
	cpl
	ld (l2e54),a
	ld (l2e69),a
	ld (l2e7e),a
	ld a,#01
	ld (l2e52),a
	ld (l2e67),a
	ld (l2e7c),a
	ld (l2e55),a
	ld (l2e6a),a
	ld (l2e7f),a
	ld hl,l2e88
	ld bc,#030a
.l2f00
	xor a
.l2f01
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l2f01
	djnz l2f00
	ld hl,l3ed9
	ld (l2e50),hl
	ld (l2e65),hl
	ld (l2e7a),hl
	ld a,#ff
	ld (l2e56),a
	ld (l2e6b),a
	ld (l2e80),a
	ld (l2e16),a
	ret
;
.play_music
.l2f28
;
	call l32eb
	ld a,(l2e16)
	and a
	ret z
	ld a,(l2e56)
	ld hl,l2e6b
	or (hl)
	ld hl,l2e80
	or (hl)
	ld (l2e16),a
	jr nz,l2f52
	xor a
	ld (l2e16),a
	ld a,(l31eb)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l2e16),a
	ret
.l2f52
	ld iy,l2e49
	ld ix,l31ec
	call l2f70
	ld iy,l2e5e
	ld ix,l31fe
	call l2f70
	ld iy,l2e73
	ld ix,l3210
.l2f70
	call l30b1
	ld a,(iy+#0b)
	and a
	jr z,l2ff5
.l2f79
	dec (iy+#09)
	jr z,l2f90
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l2ff5
.l2f90
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l2f9a
	ld a,(hl)
	cp #80
	jr c,l2fd5
	cp #fe
	jr nz,l2fac
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l2f9a
.l2fac
	cp #ff
	jr nz,l2fb5
	xor a
	ld (iy+#0d),a
	ret
.l2fb5
	cp #c0
	jr nc,l2fc2
	and #1f
	ld (iy+#09),a
	inc hl
	jp l2f9a
.l2fc2
	and #07
	add (iy+#00)
	ld de,l2e88
	add e
	ld e,a
	jr nc,l2fcf
	inc d
.l2fcf
	inc hl
	ldi
	jp l2f9a
.l2fd5
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l3cae
	add hl,bc
	ld e,(hl)
	ld hl,l3ce7
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l2ffb
.l2ff5
	ld e,(iy+#05)
	ld d,(iy+#06)
.l2ffb
	dec (iy+#0c)
	jr z,l300d
	ld a,(de)
	cp #80
	call nc,l3077
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l300d
	ld a,(de)
	cp #80
	jr c,l301e
	call l3077
	ld a,(iy+#0b)
	and a
	jr z,l300d
	jp l2f79
.l301e
	cp #7f
	jr z,l306a
	cp #7e
	jr nz,l302f
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l3043
.l302f
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l3141
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l3043
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp l3223
.l306a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l3077
	ld a,(de)
	cp #88
	jr nc,l3095
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l2e88
	add hl,bc
	ld c,(hl)
	ld hl,l3ed9
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l3095
	cp #ff
	jr nz,l309e
	ld (iy+#0b),#ff
	ret
.l309e
	cp #c0
	jr nc,l30a9
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l30a9
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l30b1
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l30c5
	res 7,(iy+#14)
	ret
.l30c5
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l30f9
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l30f9
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l30e8
	inc h
	ld (iy+#11),h
.l30e8
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l312e
.l30f9
	ld hl,l3835
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l3113
	bit 6,(iy+#14)
	jr nz,l3113
	ld (iy+#13),#01
	ret
.l3113
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.l312e
	add a
	ld hl,l3141
	add l
	ld l,a
	jr nc,l3137
	inc h
.l3137
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l3141
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
	dw #0018
.l31f1 equ $ + 6
.l31f0 equ $ + 5
.l31ef equ $ + 4
.l31ec equ $ + 1
.l31eb
	db #1c,#fe,#f7,#09,#0c,#07,#7d,#06
	db #00,#05,#06,#00,#fd,#ff,#f8,#33
.l3202 equ $ + 7
.l3201 equ $ + 6
.l31fe equ $ + 3
.l31fd equ $ + 2
	db #d9,#3e,#01,#fd,#ef,#12,#e1,#00
.l3203
	db #46,#00,#00,#02,#00,#00,#ff,#ff
.l3210 equ $ + 5
.l320f equ $ + 4
	db #1a,#34,#f7,#3e,#01,#00,#df,#24
.l3215 equ $ + 2
.l3214 equ $ + 1
.l3213
	db #54,#00,#08,#02,#00,#ff,#00,#00
.l3222 equ $ + 7
.l3221 equ $ + 6
	db #00,#00,#f8,#33,#e3,#3e,#02,#54
.l3223
	db #00
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,l3248
	ld a,#01
.l3248
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l31eb)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l3271
	and (ix+#00)
.l3271
	bit 1,c
	jr z,l3278
	and (ix+#01)
.l3278
	ld (l31eb),a
	bit 2,c
	jr nz,l328a
	ld hl,l33d9
	ld (ix+#0d),l
	ld (ix+#0e),h
	nop
	ret
.l328a
	call l3491
	ld a,(iy+#00)
	ld c,#0d
	call l34a8
	ld a,(iy+#04)
	ld c,#0b
	call l34a8
	inc c
	xor a
	call l34a8
	ld (ix+#05),#ff
	nop
	jp l349d
.l32aa
	call l3491
	ld c,#07
	ld a,(l31eb)
	or #3f
	ld (l31eb),a
	call l34a8
	xor a
	inc c
	call l34a8
	inc c
	call l34a8
	inc c
	call l34a8
	ld a,#01
	inc c
	call l34a8
	inc c
	xor a
	call l34a8
	inc c
	call l34a8
	ld (l31fd),a
	ld (l320f),a
	ld (l3221),a
	ld (l31f1),a
	ld (l3203),a
	ld (l3215),a
	jp l349d
.l32eb
	ld a,(l31eb)
	and #3f
	cp #3f
	ret z
	ld ix,l31ec
	call l33a7
	ld ix,l31fe
	call l33a7
	ld ix,l3210
	call l33a7
	call l3491
	ld ix,l31ec
	ld c,#07
	ld a,(l31eb)
	call l34a8
	ld c,#00
	ld a,(l31ef)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l3329
	ld (l3222),a
.l3329
	call l34a8
	inc c
	ld a,(l31f0)
	adc (ix+#0a)
	call l34a8
	inc c
	ld a,(l3201)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l3347
	ld (l3222),a
.l3347
	call l34a8
	inc c
	ld a,(l3202)
	adc (ix+#1c)
	call l34a8
	inc c
	ld a,(l3213)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l3365
	ld (l3222),a
.l3365
	call l34a8
	inc c
	ld a,(l3214)
	adc (ix+#2e)
	call l34a8
	inc c
	ld a,(l3222)
	rrca
	rrca
	rrca
	call l34a8
	ld c,#08
	ld a,(l31f1)
	srl a
	srl a
	srl a
	call l34a8
	inc c
	ld a,(l3203)
	srl a
	srl a
	srl a
	call l34a8
	inc c
	ld a,(l3215)
	srl a
	srl a
	srl a
	call l34a8
	jp l349d
.l33a7
	ld a,(l31eb)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l33c8
	cp #ff
	jr z,l33c8
	dec (ix+#06)
.l33c8
	call l344f
	bit 2,(iy+#09)
	jp nz,l3448
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l33d9
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l33e8
	ld (ix+#05),a
	ret
.l33e8
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l33f8
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l33f8
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l340a
	cp (iy+#02)
	jr c,l340a
	ld (ix+#05),a
	ret
.l340a
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l341a
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l341a
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l3429
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l3429
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l3436
	ld (ix+#05),a
	ret
.l3436
	ld (ix+#05),#00
	ld a,(l31eb)
	or (ix+#02)
	ld (l31eb),a
	res 7,(ix+#11)
	ret
.l3448
	ld a,(ix+#06)
	and a
	ret nz
	jr l3436
.l344f
	ld a,(ix+#07)
	and a
	jr z,l345c
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l345c
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,l3480
	ld (ix+#07),#ff
	ret
.l3480
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.l3491
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l349d
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l34a8
	ld b,#f4
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	ret
	;34bb test play routine
	ld a,#00
	call l2ea0
.l34c0
	nop
	ld bc,#f500
.l34c4
	in a,(c)
	and #01
	jr z,l34c4
	ld b,#00
.l34cc
	djnz l34cc
.l34ce
	djnz l34ce
.l34d0
	djnz l34d0
.l34d2
	djnz l34d2
	ld bc,#7f10
	out (c),c
	ld a,#40
	out (c),a
	call l2f28
	ld bc,#7f10
	out (c),c
	ld a,#54
	out (c),a
	jr l34c0
.l34eb
	db #83,#19,#18,#20,#0c,#1e,#90,#1d
	db #06,#1b,#06,#1d,#0c,#19,#18,#1b
	db #30,#17,#0c,#19,#fa,#7f,#1a,#14
	db #0c,#19,#18,#20,#0c,#22,#f0,#20
	db #06,#1e,#06,#20,#0c,#25,#b4,#7f
.l3515 equ $ + 2
	db #60,#ff,#81,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
	db #04,#36,#04,#36,#04,#36,#04,#36
.l35a7 equ $ + 4
	db #04,#36,#04,#ff,#7f,#90,#7f,#90
.l35ac equ $ + 1
	db #ff,#90,#80,#01,#48,#01,#08,#01
	db #08,#01,#08,#01,#48,#01,#08,#01
	db #08,#01,#08,#01,#18,#01,#18,#01
	db #06,#01,#06,#01,#0c,#01,#0c,#01
.l35cd equ $ + 2
	db #0c,#ff,#83,#91,#19,#24,#93,#19
	db #9c,#91,#19,#24,#17,#3c,#19,#90
	db #19,#90,#19,#24,#93,#19,#fc,#91
.l35ea equ $ + 7
	db #19,#54,#17,#60,#19,#6c,#ff,#84
	db #20,#08,#20,#08,#25,#18,#25,#08
	db #29,#18,#29,#08,#2c,#64,#29,#08
	db #25,#08,#20,#4c,#25,#08,#20,#08
.l3608 equ $ + 5
	db #19,#90,#7f,#90,#ff,#90,#80,#01
	db #18,#86,#0d,#08,#0d,#08,#0d,#08
	db #90,#80,#01,#18,#86,#0d,#08,#0d
	db #08,#0d,#08,#90,#80,#01,#18,#86
	db #0d,#08,#0d,#08,#0d,#08,#90,#80
	db #01,#0c,#86,#0d,#0c,#0d,#06,#0d
.l3639 equ $ + 6
	db #06,#0d,#06,#0d,#06,#ff,#85,#91
	db #25,#18,#25,#0c,#93,#25,#9c,#91
	db #23,#18,#23,#0c,#93,#25,#18,#91
.l364e equ $ + 3
	db #25,#84,#ff,#85,#90,#29,#12,#2a
	db #06,#29,#0c,#25,#9c,#22,#12,#20
	db #06,#1e,#0c,#20,#18,#25,#84,#ff
.l3663
	db #85,#29,#12,#2a,#06,#2c,#0c,#31
	db #9c,#2e,#12,#2c,#06,#2a,#0c,#2c
.l3677 equ $ + 4
	db #18,#25,#84,#ff,#80,#06,#12,#06
	db #06,#86,#0d,#0c,#80,#90,#06,#18
	db #06,#0c,#86,#0d,#06,#80,#90,#06
.l368d equ $ + 2
	db #12,#ff,#83,#91,#1e,#60,#1f,#60
	db #21,#60,#92,#20,#60,#91,#1e,#60
	db #1f,#60,#21,#60,#92,#20,#60,#91
	db #1e,#60,#1f,#60,#21,#60,#92,#20
	db #60,#91,#1e,#60,#1f,#60,#21,#60
.l36b4 equ $ + 1
	db #ff,#85,#91,#23,#24,#93,#23,#3c
.l36bc equ $ + 1
	db #ff,#96,#85,#1b,#12,#1c,#06,#1e
	db #0c,#1e,#9c,#1b,#12,#1c,#06,#1b
	db #0c,#17,#9c,#1b,#12,#1c,#06,#1e
	db #0c,#1e,#90,#20,#0c,#21,#0c,#20
	db #0c,#1e,#0c,#20,#0c,#1e,#0c,#1c
.l36e5 equ $ + 2
	db #0c,#ff,#85,#91,#26,#24,#93,#23
.l36ed equ $ + 2
	db #24,#ff,#80,#09,#0c,#09,#0c,#09
	db #0c,#0b,#0c,#86,#0d,#06,#0d,#06
.l3701 equ $ + 6
	db #0d,#06,#0d,#06,#90,#ff,#80,#0d
	db #12,#0d,#06,#0d,#0c,#7f,#18,#0b
	db #12,#0c,#12,#0d,#12,#0d,#06,#0d
	db #0c,#7f,#18,#0a,#06,#16,#06,#0b
	db #06,#17,#06,#0c,#06,#18,#06,#80
	db #0d,#12,#0d,#06,#0d,#0c,#7f,#18
	db #0b,#12,#0c,#12,#0d,#12,#0d,#06
	db #0a,#0c,#16,#0c,#0b,#0c,#17,#0c
.l3740 equ $ + 5
	db #0c,#0c,#18,#0c,#ff,#87,#36,#06
	db #36,#06,#36,#06,#36,#06,#86,#12
	db #0c,#90,#87,#36,#06,#36,#06,#ff
.l3753
	db #80,#95,#19,#12,#19,#06,#7f,#24
	db #17,#12,#18,#12,#19,#12,#19,#06
.l3766 equ $ + 3
	db #7f,#48,#ff,#80,#06,#12,#06,#06
	db #86,#0d,#0c,#80,#90,#06,#18,#06
	db #0c,#86,#0d,#06,#0d,#06,#0d,#06
.l377e equ $ + 3
	db #0d,#06,#ff,#80,#95,#19,#06,#90
	db #87,#2a,#06,#2a,#06,#80,#95,#19
	db #06,#86,#06,#0c,#87,#90,#2a,#06
	db #2a,#06,#2a,#06,#2a,#06,#80,#95
	db #17,#06,#90,#87,#2a,#06,#86,#06
	db #06,#80,#95,#18,#06,#90,#87,#2a
	db #06,#2a,#06,#80,#95,#19,#06,#90
	db #87,#2a,#06,#2a,#06,#80,#95,#19
	db #06,#86,#06,#0c,#87,#90,#2a,#06
	db #2a,#06,#2a,#06,#2a,#06,#2a,#06
	db #2a,#06,#86,#06,#0c,#87,#90,#2a
.l37d7 equ $ + 4
	db #06,#2a,#06,#ff,#83,#28,#06,#27
	db #06,#25,#06,#23,#0c,#25,#42,#7f
	db #60,#28,#06,#27,#06,#25,#06,#23
	db #0c,#25,#5a,#20,#0c,#1e,#0c,#21
	db #06,#20,#06,#1e,#06,#1b,#0c,#19
.l37fd equ $ + 2
	db #12,#ff,#80,#0b,#0c,#17,#0c,#08
	db #0c,#14,#0c,#0a,#0c,#16,#0c,#0c
.l380f equ $ + 4
	db #0c,#18,#0c,#ff,#85,#91,#23,#0c
	db #23,#18,#92,#24,#18,#24,#18,#24
.l381d equ $ + 2
	db #0c,#ff,#83,#91,#1e,#60,#1f,#60
.l3829 equ $ + 6
	db #21,#60,#92,#20,#60,#ff,#83,#98
	db #2d,#0c,#97,#2c,#0c,#98,#2d,#0c
	db #97,#2a
.l3835
	db #0c,#2c,#0c,#98,#2d,#0c,#97,#2f
	db #0c,#98,#2d,#0c,#97,#2f,#0c,#98
	db #2d,#0c,#97,#2c,#0c,#2a,#0c,#98
.l3854 equ $ + 7
	db #28,#0c,#97,#2c,#0c,#90,#ff,#80
	db #06,#18,#06,#18,#86,#19,#0c,#90
	db #80,#01,#18,#02,#24,#02,#18,#86
.l386c equ $ + 7
.l3869 equ $ + 4
	db #19,#18,#90,#ff,#7f,#a8,#ff,#7f
.l386f equ $ + 2
	db #06,#ff,#97,#2c,#0c,#2a,#0c,#2c
	db #0c,#98,#28,#0c,#97,#2a,#0c,#2c
	db #0c,#98,#2d,#0c,#97,#2f,#0c,#98
	db #2d,#0c,#97,#2c,#0c,#2a,#0c,#98
	db #28,#0c,#97,#2a,#0c,#2c,#0c,#ff
.l3895
	db #80,#12,#18,#12,#18,#86,#23,#0c
	db #90,#80,#0d,#18,#0e,#24,#0e,#18
	db #86,#23,#18,#90,#80,#0b,#18,#0b
	db #18,#86,#23,#0c,#90,#80,#12,#18
	db #10,#24,#10,#18,#86,#23,#0c,#23
.l38c0 equ $ + 3
	db #0c,#90,#ff,#85,#25,#90,#23,#0c
	db #21,#0c,#23,#78,#21,#0c,#20,#0c
	db #21,#0c,#23,#0c,#21,#90,#20,#0c
	db #1c,#0c,#1e,#78,#1e,#0c,#20,#0c
.l38e2 equ $ + 5
	db #21,#0c,#23,#0c,#ff,#21,#48,#20
	db #30,#1e,#0c,#1c,#0c,#1e,#78,#1e
	db #0c,#20,#0c,#21,#0c,#23,#0c,#ff
.l38f5
	db #80,#02,#18,#02,#18,#86,#17,#18
	db #90,#80,#04,#18,#04,#18,#86,#17
.l3908 equ $ + 3
	db #18,#90,#ff,#23,#3c,#21,#18,#20
	db #3c,#1e,#0c,#1c,#0c,#1e,#78,#25
	db #06,#26,#06,#25,#0c,#23,#0c,#21
.l391f equ $ + 2
	db #0c,#ff,#97,#2a,#0c,#98,#28,#0c
	db #97,#2a,#0c,#98,#26,#0c,#28,#0c
	db #97,#2a,#0c,#2c,#0c,#2a,#0c,#98
	db #28,#0c,#97,#2a,#0c,#2c,#0c,#2f
.l393f equ $ + 2
	db #0c,#ff,#23,#3c,#21,#18,#20,#3c
	db #1e,#0c,#1c,#0c,#1e,#a8,#7f,#a8
.l394f equ $ + 2
	db #96,#ff,#80,#0b,#18,#0b,#18,#86
	db #23,#0c,#90,#80,#0b,#18,#0b,#24
	db #17,#18,#86,#23,#0c,#23,#0c,#90
.l3966 equ $ + 1
	db #ff,#80,#0e,#18,#0e,#18,#86,#23
	db #18,#90,#80,#10,#18,#10,#18,#86
	db #23,#18,#90,#80,#0b,#18,#0b,#18
.l3982 equ $ + 5
	db #86,#23,#18,#90,#ff,#97,#2a,#0c
	db #98,#28,#0c,#97,#2a,#0c,#98,#26
	db #0c,#28,#0c,#97,#2a,#0c,#2c,#0c
	db #2a,#0c,#98,#28,#0c,#97,#2a,#0c
	db #2c,#0c,#2f,#0c,#2f,#0c,#98,#21
	db #0c,#97,#2c,#0c,#2a,#0c,#98,#28
.l39b2 equ $ + 5
	db #0c,#97,#27,#0c,#ff,#1e,#30,#20
	db #0c,#21,#0c,#20,#30,#1e,#0c,#1c
	db #0c,#1b,#30,#1c,#0c,#1e,#0c,#1c
	db #a8,#7f,#a8,#7f,#a8,#7f,#a8,#ff
.l39cd
	db #80,#06,#0c,#06,#06,#06,#06,#06
	db #06,#06,#06,#06,#0c,#06,#06,#06
	db #06,#06,#06,#06,#06,#06,#0c,#06
	db #06,#06,#06,#06,#06,#06,#06,#09
	db #06,#10,#06,#0b,#06,#10,#06,#0c
.l39f9 equ $ + 4
	db #06,#0d,#06,#ff,#80,#06,#0c,#06
	db #06,#86,#19,#06,#80,#90,#06,#06
	db #06,#06,#06,#0c,#06,#06,#86,#19
	db #06,#80,#90,#06,#06,#06,#06,#06
	db #0c,#06,#06,#86,#19,#06,#80,#90
	db #06,#06,#06,#06,#09,#06,#10,#06
	db #0b,#06,#86,#19,#06,#80,#90,#0c
.l3a31 equ $ + 4
	db #06,#0d,#06,#ff,#80,#98,#21,#06
	db #97,#20,#06,#98,#21,#06,#97,#1e
	db #06,#20,#06,#98,#21,#06,#21,#06
	db #97,#20,#06,#98,#21,#06,#97,#1e
	db #06,#20,#06,#98,#21,#06,#21,#06
	db #97,#20,#06,#98,#21,#06,#97,#1e
	db #06,#20,#06,#98,#21,#06,#21,#06
	db #97,#20,#06,#98,#21,#06,#97,#23
	db #06,#98,#21,#06,#97,#20,#06,#97
	db #20,#06,#1e,#06,#20,#06,#98,#1c
	db #06,#97,#1e,#06,#20,#06,#20,#06
	db #1e,#06,#20,#06,#98,#1c,#06,#97
	db #1e,#06,#20,#06,#20,#06,#1e,#06
	db #20,#06,#98,#1c,#06,#97,#1e,#06
	db #20,#06,#20,#06,#1e,#06,#20,#06
	db #98,#1c,#06,#97,#1e,#06,#20,#06
	db #97,#1e,#06,#98,#1c,#06,#97,#1e
	db #06,#1b,#06,#98,#1c,#06,#97,#1e
	db #06,#1e,#06,#98,#1c,#06,#97,#1e
	db #06,#1b,#06,#98,#1c,#06,#97,#1e
	db #06,#1e,#06,#98,#1c,#06,#97,#1e
	db #06,#1b,#06,#98,#1c,#06,#97,#1e
	db #06,#1e,#06,#98,#1c,#06,#97,#1e
	db #06,#1b,#06,#98,#1c,#06,#97,#1e
.l3aef equ $ + 2
	db #06,#ff,#7f,#12,#86,#19,#12,#7f
.l3af9 equ $ + 4
	db #12,#19,#12,#ff,#90,#85,#19,#06
	db #1e,#06,#25,#84,#23,#06,#1e,#06
	db #17,#84,#17,#06,#1e,#06,#23,#84
	db #21,#06,#20,#06,#1e,#06,#20,#06
.l3b1a equ $ + 5
	db #21,#06,#23,#06,#ff,#80,#02,#0c
	db #02,#06,#86,#19,#06,#80,#90,#04
.l3b29 equ $ + 4
	db #06,#04,#06,#ff,#97,#1e,#06,#98
	db #1c,#06,#97,#1e,#06,#20,#06,#1e
.l3b39 equ $ + 4
	db #06,#20,#06,#ff,#25,#90,#80,#7f
	db #48,#1e,#0c,#1e,#0c,#1e,#06,#1e
	db #06,#1b,#0c,#1b,#06,#1b,#06,#17
.l3b52 equ $ + 5
	db #06,#17,#06,#c2,#ff,#97,#1e,#06
	db #1d,#06,#1e,#06,#1d,#06,#1b,#06
.l3b60 equ $ + 3
	db #1d,#06,#ff,#80,#90,#0b,#0c,#0b
	db #0c,#7f,#54,#12,#06,#12,#06,#12
	db #06,#0f,#06,#0f,#06,#0f,#04,#0b
	db #02,#0b,#0c,#0b,#0c,#7f,#2a,#7f
	db #03,#12,#03,#12,#0c,#12,#0c,#12
	db #06,#12,#06,#0f,#0c,#0f,#0c,#0f
	db #06,#0f,#04,#0b,#02,#0b,#0c,#0b
	db #0c,#7f,#30,#12,#06,#0f,#06,#0b
	db #0c,#12,#06,#0f,#06,#0b,#0c,#12
	db #0c,#0f,#06,#0f,#04,#0b,#02,#ff
.l3bad
	db #80,#93,#1c,#09,#1c,#09,#1c,#09
	db #1c,#09,#1c,#09,#1c,#09,#1c,#09
	db #1c,#09,#91,#1c,#09,#1c,#09,#1c
	db #09,#1c,#09,#1c,#09,#1c,#09,#1c
	db #09,#1c,#09,#92,#1b,#09,#1b,#09
	db #1b,#09,#1b,#09,#1b,#09,#1b,#09
	db #1b,#09,#1b,#09,#98,#21,#06,#97
	db #20,#06,#98,#21,#06,#97,#1e,#06
	db #20,#06,#98,#21,#06,#21,#06,#97
	db #20,#06,#98,#21,#06,#97,#1e,#06
.l3c03 equ $ + 6
	db #20,#06,#98,#21,#06,#ff,#85,#25
	db #24,#25,#09,#23,#09,#21,#09,#23
	db #3f,#21,#09,#23,#19,#23,#04,#24
	db #10,#23,#09,#21,#09,#1e,#09,#21
	db #12,#1e,#12,#1c,#12,#1e,#09,#21
	db #09,#23,#09,#25,#24,#25,#09,#28
	db #09,#21,#09,#23,#3f,#21,#09,#23
	db #07,#23,#04,#24,#07,#23,#09,#21
	db #09,#23,#12,#21,#09,#1e,#09,#1c
	db #09,#1e,#09,#21,#09,#1e,#09,#1c
	db #09,#1e,#09,#21,#09,#23,#09,#28
.l3c57 equ $ + 2
	db #09,#ff,#80,#09,#12,#09,#12,#86
	db #19,#24,#90,#80,#04,#12,#04,#12
	db #86,#19,#24,#90,#80,#0b,#12,#0b
	db #12,#86,#19,#24,#90,#80,#06,#12
.l3c7c equ $ + 7
	db #06,#12,#86,#19,#24,#90,#ff,#80
	db #06,#0c,#06,#06,#86,#19,#06,#80
.l3c8b equ $ + 6
	db #90,#06,#06,#06,#06,#ff,#80,#98
	db #21,#06,#97,#20,#06,#98,#21,#06
	db #97,#1e,#06,#20,#06,#98,#21,#06
.l3c9e equ $ + 1
	db #ff,#85,#2a,#6c,#28,#06,#25,#06
	db #28,#06,#2d,#06,#2c,#06,#28,#06
	db #ff
.l3cae
	db l34eb,l3515,l35a7,l35ac
	db l35cd,l35ea,l3608,l3639
	db l364e,l3663,l3677,l368d
	db l36b4,l36bc,l36e5,l36ed
	db l3701,l3740,l3753,l3766
	db l377e,l37d7,l37fd,l380f
	db l381d,l3829,l3854,l3869
	db l386c,l386f,l3895,l38c0
	db l38e2,l38f5,l3908,l391f
	db l393f,l394f,l3966,l3982
	db l39b2,l39cd,l39f9,l3a31
	db l3aef,l3af9,l3b1a,l3b29
	db l3b39,l3b52,l3b60,l3bad
	db l3c03,l3c57,l3c7c,l3c8b
	db l3c9e
;	db #eb,#15,#a7,#ac,#cd,#ea,#08,#39
;	db #4e,#63,#77,#8d,#b4,#bc,#e5,#ed
;	db #01,#40,#53,#66,#7e,#d7,#fd,#0f
;	db #1d,#29,#54,#69,#6c,#6f,#95,#c0
;	db #e2,#f5,#08,#1f,#3f,#4f,#66,#82
;	db #b2,#cd,#f9,#31,#ef,#f9,#1a,#29
;	db #39,#52,#60,#ad,#03,#57,#7c,#8b
;	db #9e
.l3ce7
	db l34eb/&100,l3515/&100,l35a7/&100,l35ac/&100
	db l35cd/&100,l35ea/&100,l3608/&100,l3639/&100
	db l364e/&100,l3663/&100,l3677/&100,l368d/&100
	db l36b4/&100,l36bc/&100,l36e5/&100,l36ed/&100
	db l3701/&100,l3740/&100,l3753/&100,l3766/&100
	db l377e/&100,l37d7/&100,l37fd/&100,l380f/&100
	db l381d/&100,l3829/&100,l3854/&100,l3869/&100
	db l386c/&100,l386f/&100,l3895/&100,l38c0/&100
	db l38e2/&100,l38f5/&100,l3908/&100,l391f/&100
	db l393f/&100,l394f/&100,l3966/&100,l3982/&100
	db l39b2/&100,l39cd/&100,l39f9/&100,l3a31/&100
	db l3aef/&100,l3af9/&100,l3b1a/&100,l3b29/&100
	db l3b39/&100,l3b52/&100,l3b60/&100,l3bad/&100
	db l3c03/&100,l3c57/&100,l3c7c/&100,l3c8b/&100
	db l3c9e/&100
;	db #34,#35,#35,#35,#35,#35,#36,#36
;	db #36,#36,#36,#36,#36,#36,#36,#36
;	db #37,#37,#37,#37,#37,#37,#37,#38
;	db #38,#38,#38,#38,#38,#38,#38,#38
;	db #38,#38,#39,#39,#39,#39,#39,#39
;	db #39,#39,#39,#3a,#3a,#3a,#3b,#3b
;	db #3b,#3b,#3b,#3b,#3c,#3c,#3c,#3c
;	db #3c
.l3d20
	dw l3d38,l3d45,l3d60
	dw l3d6d,l3d94,l3db7
	dw l3dd1,l3e00,l3e26
	dw l3e3f,l3e94,l3eb9
.l3d38
	db #8c,#03,#fe,#02,#88,#03,#fe,#04
.l3d45 equ $ + 5
	db #8c,#06,#84,#03,#ff,#82,#02,#05
	db #00,#00,#c3,#14,#fe,#02,#00,#00
	db #fe,#f8,#82,#07,#fe,#04,#08,#08
	db #09,#09,#c5,#28,#08,#08,#09,#ff
.l3d60
	db #8c,#01,#fe,#0e,#04,#04,#fe,#04
.l3d6d equ $ + 5
	db #86,#07,#84,#01,#ff,#8e,#0a,#13
	db #fe,#05,#86,#0a,#0f,#86,#0a,#0f
	db #fe,#f9,#84,#10,#fe,#fb,#82,#10
	db #fe,#fe,#16,#fe,#05,#86,#0a,#0f
	db #86,#0a,#0f,#fe,#f9,#84,#10,#fe
.l3d94 equ $ + 4
	db #00,#88,#0a,#ff,#0b,#fe,#00,#86
	db #0c,#0e,#86,#0c,#0e,#90,#11,#fe
	db #00,#15,#15,#fe,#02,#15,#15,#fe
	db #00,#17,#86,#0c,#0e,#86,#0c,#0e
.l3db7 equ $ + 7
	db #90,#11,#90,#11,#90,#11,#ff,#fe
	db #0c,#0b,#0d,#0d,#c0,#50,#84,#12
	db #84,#14,#fe,#0e,#84,#14,#fe,#0c
	db #11,#11,#0d,#0d,#84,#12,#84,#18
	db #ff
.l3dd1
	db #88,#19,#fe,#02,#19,#1d,#19,#1d
	db #19,#1d,#19,#1d,#23,#19,#23,#19
	db #1d,#19,#1d,#19,#1d,#85,#19,#1d
	db #19,#1d,#19,#1d,#19,#1d,#23,#19
	db #23,#19,#1d,#19,#1d,#19,#1d,#84
.l3e00 equ $ + 7
	db #19,#27,#fe,#00,#84,#19,#ff,#84
	db #1b,#84,#1a,#fe,#f6,#84,#1e,#fe
	db #02,#21,#1a,#21,#fe,#f6,#83,#1e
	db #25,#25,#86,#1e,#fe,#02,#21,#1a
	db #21,#fe,#f6,#83,#1e,#25,#25,#26
	db #fe,#00,#84,#1a,#ff
.l3e26
	db #1c,#87,#19,#9b,#1c,#fe,#02,#1f
	db #1f,#20,#20,#22,#22,#24,#84,#1b
	db #1f,#1f,#20,#20,#22,#22,#24,#28
	db #ff
.l3e3f
	db #86,#29,#86,#2a,#fe,#02,#83,#2a
	db #2e,#83,#2a,#2e,#fe,#fd,#2a,#2a
	db #fe,#02,#83,#2a,#2e,#83,#2a,#2e
	db #fe,#fd,#2a,#2a,#fe,#02,#84,#35
	db #fe,#fd,#2a,#2a,#fe,#02,#83,#2a
	db #2e,#83,#2a,#2e,#fe,#fd,#2a,#2a
	db #fe,#02,#84,#36,#fe,#00,#84,#36
	db #fe,#ff,#84,#36,#fe,#fe,#84,#36
	db #fe,#02,#84,#36,#fe,#00,#84,#36
	db #fe,#ff,#84,#36,#fe,#fe,#84,#36
	db #fe,#fd,#2a,#2a,#ff
.l3e94
	db #c0,#50,#fe,#0c,#84,#2b,#fe,#0e
	db #2b,#2f,#2b,#2f,#88,#31,#2b,#2f
	db #2b,#2f,#88,#31,#84,#33,#88,#31
	db #2b,#2f,#2b,#2f,#88,#31,#90,#37
	db #90,#37,#88,#31,#ff
.l3eb9
	db #8c,#2c,#c0,#5a,#fe,#14,#32,#32
	db #fe,#02,#2d,#2d,#30,#2d,#2d,#30
	db #34,#34,#fe,#06,#30,#fe,#02,#2d
	db #2d,#30,#88,#38,#fe,#06,#30,#ff
.l3ed9
	db #7f,#fe,#01,#ff,#7f,#00,#05,#03
	db #00,#01,#7f,#c2,#01,#ff,#46,#00
	db #00,#00,#00,#02,#3c,#ff,#01,#ff
	db #7f,#00,#04,#01,#00,#01,#3c,#ff
	db #46,#ff,#64,#00,#03,#01,#00,#01
	db #7f,#a6,#5a,#ec,#64,#01,#00,#00
	db #00,#01,#7f,#ff,#5a,#ff,#7f,#00
	db #03,#01,#00,#01,#7f,#fb,#00,#ff
	db #7f,#00,#00,#3c,#00,#03,#7f,#9d
	db #01,#ff,#7f,#00,#01,#01,#00,#02
	db #7f,#fb,#01,#ff,#7f,#00,#03,#02
	db #00,#01,#7f,#fc,#00,#ff,#7f,#01
	db #00,#3c,#00,#01,#8a,#21,#39,#00
	db #00,#00,#00,#00,#8a,#19,#41,#00
	db #00,#00,#00,#00,#8a,#29,#49,#00
	db #00,#00,#00,#00,#89,#b1,#00,#00
	db #00,#00,#00,#00,#8a,#19,#29,#00
	db #00,#00,#00,#00,#89,#61,#00,#00
	db #00,#00,#00,#00,#89,#19,#00,#00
	db #00,#00,#00,#00,#89,#21,#00,#00
	db #00,#00,#00,#00
.l3f7d
	db #7f,#ff,#01,#ff,#7f,#00,#00,#02
	db #28,#02,#9c,#00,#5a,#7f,#fa,#01
	db #ff,#7f,#ff,#00,#00,#00,#02,#9c
	db #00,#0a,#7f,#fd,#01,#ff,#7f,#00
	db #00,#02,#28,#02,#9c,#00,#1e,#03
	db #fd,#01,#ff,#7f,#00,#00,#02,#28
	db #03,#e5,#03,#5a,#7f,#fe,#50,#ff
	db #50,#00,#00,#02,#28,#01,#d8,#06
	db #fa,#7f,#fd,#03,#ff,#7f,#00,#00
	db #02,#0a,#02,#20,#00,#1e,#08,#fd
	db #01,#ff,#7f,#00,#00,#00,#0d,#05
	db #d1,#00,#1e,#7f,#ea,#01,#ff,#6a
	db #00,#00,#00,#00,#02,#71,#00,#05
	db #7f,#f9,#01,#ff,#7f,#00,#00,#00
	db #2f,#03,#75,#02,#0a,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
;
.music_info
	db "Butcher Hill (1988)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
