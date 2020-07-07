; Music of Gary Linekers Hotshot (1988)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 14/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GARYLINH.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #3430

	read "music_header.asm"
;
; #03a0 - reallocated
;
	jp l042e	; init
	jp l04b6	; play
.l03a6
.music_end
	db #00
	jp l03b1	; init sound effetcs
;
.stop_music
;
	xor a
	ld (l03a6),a
	jp l0835
.l03b1
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,l0d05
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l077a
	call l07b1
	set 7,(ix+#11)
	ret
.l03de equ $ + 7
.l03d8 equ $ + 1
.l03d7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l03e6 equ $ + 7
.l03e4 equ $ + 5
.l03e3 equ $ + 4
.l03e2 equ $ + 3
.l03e1 equ $ + 2
.l03e0 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l03ed equ $ + 6
.l03ec equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.l03f6 equ $ + 7
.l03f5 equ $ + 6
.l03f3 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l03fb equ $ + 4
.l03f9 equ $ + 2
.l03f8 equ $ + 1
.l03f7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0402 equ $ + 3
.l0401 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.l040e equ $ + 7
.l040d equ $ + 6
.l040c equ $ + 5
.l040b equ $ + 4
.l040a equ $ + 3
.l0408 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l0410
	db #00,#00,#00,#00,#00,#00
.l0416
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.init_music
.l042e
;
	push af
	call l0835
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l0c37
	add l
	ld l,a
	jr nc,l043f
	inc h
.l043f
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l03d8),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l03ed),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l0402),de
	xor a
	ld (l03e1),a
	ld (l03f6),a
	ld (l040b),a
	ld (l03e6),a
	ld (l03fb),a
	ld (l0410),a
	cpl
	ld (l03e2),a
	ld (l03f7),a
	ld (l040c),a
	ld a,#01
	ld (l03e0),a
	ld (l03f5),a
	ld (l040a),a
	ld (l03e3),a
	ld (l03f8),a
	ld (l040d),a
	ld hl,l0416
	ld bc,#030a
.l048e
	xor a
.l048f
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l048f
	djnz l048e
	ld hl,l0c9d
	ld (l03de),hl
	ld (l03f3),hl
	ld (l0408),hl
	ld a,#ff
	ld (l03e4),a
	ld (l03f9),a
	ld (l040e),a
	ld (l03a6),a
	ret
;
.play_music
.l04b6
;
	call l085e
	ld a,(l03a6)
	and a
	ret z
	ld a,(l03e4)
	ld hl,l03f9
	or (hl)
	ld hl,l040e
	or (hl)
	ld (l03a6),a
	jr nz,l04e0
	xor a
	ld (l03a6),a
	ld a,(l0779)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l03a6),a
	ret
.l04e0
	ld iy,l03d7
	ld ix,l077a
	call l04fe
	ld iy,l03ec
	ld ix,l078c
	call l04fe
	ld iy,l0401
	ld ix,l079e
.l04fe
	call l063f
	ld a,(iy+#0b)
	and a
	jr z,l0583
.l0507
	dec (iy+#09)
	jr z,l051e
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l0583
.l051e
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l0528
	ld a,(hl)
	cp #80
	jr c,l0563
	cp #fe
	jr nz,l053a
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l0528
.l053a
	cp #ff
	jr nz,l0543
	xor a
	ld (iy+#0d),a
	ret
.l0543
	cp #c0
	jr nc,l0550
	and #1f
	ld (iy+#09),a
	inc hl
	jp l0528
.l0550
	and #07
	add (iy+#00)
	ld de,l0416
	add e
	ld e,a
	jr nc,l055d
	inc d
.l055d
	inc hl
	ldi
	jp l0528
.l0563
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l0c15
	add hl,bc
	ld e,(hl)
	ld hl,l0c26
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l0589
.l0583
	ld e,(iy+#05)
	ld d,(iy+#06)
.l0589
	dec (iy+#0c)
	jr z,l059b
	ld a,(de)
	cp #80
	call nc,l0605
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l059b
	ld a,(de)
	cp #80
	jr c,l05ac
	call l0605
	ld a,(iy+#0b)
	and a
	jr z,l059b
	jp l0507
.l05ac
	cp #7f
	jr z,l05f8
	cp #7e
	jr nz,l05bd
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l05d1
.l05bd
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l06cf
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l05d1
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
.l05e5 equ $ + 2
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp l07b1
.l05f8
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l0605
	ld a,(de)
	cp #88
	jr nc,l0623
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l0416
	add hl,bc
	ld c,(hl)
	ld hl,l0c9d
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l0623
	cp #ff
	jr nz,l062c
	ld (iy+#0b),#ff
	ret
.l062c
	cp #c0
	jr nc,l0637
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l0637
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l063f
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l0653
	res 7,(iy+#14)
	ret
.l0653
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l0687
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l0687
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l0676
	inc h
	ld (iy+#11),h
.l0676
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l06bc
.l0687
	ld hl,l05e5
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l06a1
	bit 6,(iy+#14)
	jr nz,l06a1
	ld (iy+#13),#01
	ret
.l06a1
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
.l06bc
	add a
	ld hl,l06cf
	add l
	ld l,a
	jr nc,l06c5
	inc h
.l06c5
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.l06cf
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
.l077f equ $ + 6
.l077e equ $ + 5
.l077d equ $ + 4
.l077a equ $ + 1
.l0779
	db #3f,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0790 equ $ + 7
.l078f equ $ + 6
.l078c equ $ + 3
.l078b equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.l0791
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l079d
	db #00
.l079e
	db #fb,#df,#24
.l07a3 equ $ + 2
.l07a2 equ $ + 1
.l07a1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.l07af
	db #00
.l07b0
	db #00
.l07b1
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
	jr nz,l07d5
	ld a,#01
.l07d5
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l0779)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l07fe
	and (ix+#00)
.l07fe
	bit 1,c
	jr z,l0805
	and (ix+#01)
.l0805
	ld (l0779),a
	bit 2,c
	jr nz,l0816
	ld hl,l094c
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l0816
	call l0a04
	ld a,(iy+#00)
	ld c,#0d
	call l0a1d
	ld a,(iy+#04)
	ld c,#0b
	call l0a1d
	inc c
	xor a
	call l0a1d
	ld (ix+#05),#ff
	jp l0a10
.l0835
	call l0a04
	ld c,#07
	ld a,(l0779)
	or #3f
	ld (l0779),a
	call l0a1d
	xor a
	inc c
	call l0a1d
	inc c
	call l0a1d
	inc c
	call l0a1d
	ld (l078b),a
	ld (l079d),a
	ld (l07af),a
	jp l0a10
.l085e
	ld a,(l0779)
	and #3f
	cp #3f
	ret z
	ld ix,l077a
	call l091a
	ld ix,l078c
	call l091a
	ld ix,l079e
	call l091a
	call l0a04
	ld ix,l077a
	ld c,#07
	ld a,(l0779)
	call l0a1d
	ld c,#00
	ld a,(l077d)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l089c
	ld (l07b0),a
.l089c
	call l0a1d
	inc c
	ld a,(l077e)
	adc (ix+#0a)
	call l0a1d
	inc c
	ld a,(l078f)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l08ba
	ld (l07b0),a
.l08ba
	call l0a1d
	inc c
	ld a,(l0790)
	adc (ix+#1c)
	call l0a1d
	inc c
	ld a,(l07a1)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l08d8
	ld (l07b0),a
.l08d8
	call l0a1d
	inc c
	ld a,(l07a2)
	adc (ix+#2e)
	call l0a1d
	inc c
	ld a,(l07b0)
	rrca
	rrca
	rrca
	call l0a1d
	ld c,#08
	ld a,(l077f)
	srl a
	srl a
	srl a
	call l0a1d
	inc c
	ld a,(l0791)
	srl a
	srl a
	srl a
	call l0a1d
	inc c
	ld a,(l07a3)
	srl a
	srl a
	srl a
	call l0a1d
	jp l0a10
.l091a
	ld a,(l0779)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l093b
	cp #ff
	jr z,l093b
	dec (ix+#06)
.l093b
	call l09c2
	bit 2,(iy+#09)
	jp nz,l09bb
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l094c
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l095b
	ld (ix+#05),a
	ret
.l095b
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l096b
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l096b
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l097d
	cp (iy+#02)
	jr c,l097d
	ld (ix+#05),a
	ret
.l097d
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l098d
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l098d
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l099c
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l099c
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l09a9
	ld (ix+#05),a
	ret
.l09a9
	ld (ix+#05),#00
	ld a,(l0779)
	or (ix+#02)
	ld (l0779),a
	res 7,(ix+#11)
	ret
.l09bb
	ld a,(ix+#06)
	and a
	ret nz
	jr l09a9
.l09c2
	ld a,(ix+#07)
	and a
	jr z,l09cf
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l09cf
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
	jp p,l09f3
	ld (ix+#07),#ff
	ret
.l09f3
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
.l0a04
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l0a10
	ld bc,#f40e
	di
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ei
	ret
.l0a1d
	ld b,#f4
	di
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	ei
	ret
.s00
	db #80,#01,#09,#01,#09,#81,#1e,#09
	db #80,#01,#09,#83,#31,#09,#80,#01
	db #09,#81,#1e,#09,#80,#01,#09,#ff
.s01
	db #7f,#12,#ff
.s02
	db #83,#31,#12,#ff
.s03
	db #83
	db #31,#09,#84,#06,#09,#0a,#09,#0b
	db #09,#7f,#5a,#91,#86,#12,#12,#90
	db #83,#31,#09,#84,#06,#09,#0a,#09
	db #0b,#12,#0b,#12,#08,#12,#08,#12
	db #08,#09,#04,#09,#10,#09,#0b,#09
	db #0d,#09,#ff
.s04
	db #85,#92,#22,#09,#22
	db #09,#22,#09,#91,#23,#09,#90,#83
	db #31,#12,#31,#12,#31,#12,#31,#12
	db #31,#12,#92,#86,#19,#12,#85,#22
	db #09,#22,#09,#22,#09,#91,#23,#09
	db #90,#83,#31,#09,#91,#85,#23,#09
	db #90,#83,#31,#09,#92,#85,#24,#09
	db #90,#83,#31,#09,#92,#85,#24,#09
	db #90,#83,#31,#09,#92,#85,#24,#09
	db #93,#23,#12,#91,#23,#09,#86,#19
	db #09,#ff
.s05
	db #84,#14,#09,#08,#09,#0c
	db #09,#0d,#09,#01,#09,#01,#09,#0d
	db #09,#01,#09,#01,#09,#01,#09,#0d
	db #09,#01,#09,#01,#09,#01,#09,#0d
	db #09,#01,#09,#14,#09,#08,#09,#0c
	db #09,#0d,#09,#01,#09,#01,#09,#0d
	db #09,#01,#09,#0a,#09,#0a,#09,#16
	db #09,#0a,#09,#06,#09,#12,#09,#01
	db #09,#0d,#09,#ff
.s06
	db #86,#91,#12,#12
	db #90,#ff
.s07
	db #84,#03,#09,#03,#09,#03
	db #09,#03,#09,#ff
.s08
	db #85,#93,#22,#09
	db #22,#09,#91,#22,#09,#93,#22,#12
	db #22,#12,#20,#1b,#20,#09,#91,#20
	db #1b,#20,#09,#93,#20,#09,#93,#22
	db #09,#22,#09,#91,#22,#09,#93,#22
	db #12,#22,#12,#91,#23,#12,#23,#12
	db #23,#09,#92,#22,#12,#22,#12,#93
	db #22,#09,#22,#09,#91,#22,#09,#93
	db #22,#12,#22,#12,#20,#1b,#20,#09
	db #91,#20,#1b,#20,#09,#93,#20,#09
	db #93,#22,#09,#22,#09,#20,#09,#22
	db #12,#22,#12,#20,#12,#20,#12,#20
	db #09,#91,#23,#12,#23,#12,#ff
.s09
	db #80
	db #01,#09,#01,#09,#81,#1e,#09,#80
	db #01,#09,#83,#31,#05,#80,#1b,#04
	db #1b,#05,#1b,#04,#17,#05,#17,#04
	db #14,#05,#14,#04,#ff
.s10
	db #85,#91,#1e
	db #36,#1e,#09,#1c,#3f,#1c,#09,#92
	db #1b,#1b,#1b,#09,#91,#1c,#1b,#1c
	db #09,#1e,#09,#83,#31,#12,#31,#12
	db #31,#12,#31,#12,#ff
.s11
	db #85,#92,#22
	db #09,#22,#12,#93,#25,#12,#92,#22
	db #12,#93,#23,#3f,#23,#09,#91,#23
	db #1b,#23,#09,#92,#1e,#12,#1e,#09
	db #1e,#09,#91,#1e,#09,#83,#31,#12
	db #31,#12,#31,#12,#31,#12,#ff
.s12
	db #85
	db #93,#20,#09,#20,#12,#91,#20,#12
	db #20,#12,#93,#22,#12,#22,#12,#22
	db #09,#91,#22,#12,#22,#12,#93,#20
	db #09,#20,#12,#91,#20,#12,#20,#12
	db #92,#1f,#48,#93,#1d,#09,#ff
.s13
	db #ff
.s14
	db #ff
.s15
	db #ff
.s16
	db #ff
.l0c15
	db s00,s01,s02,s03,s04,s05,s06,s07
	db s08,s09,s10,s11,s12,s13,s14,s15
	db s16
;	db #32,#4a,#4d,#51,#7d,#cc,#0e,#14
;	db #1e,#81,#9f,#bf,#e9,#11,#12,#13
;	db #14
.l0c26
	db s00/&100,s01/&100,s02/&100,s03/&100,s04/&100,s05/&100,s06/&100,s07/&100
	db s08/&100,s09/&100,s10/&100,s11/&100,s12/&100,s13/&100,s14/&100,s15/&100
	db s16/&100
;	db #0a,#0a,#0a,#0a,#0a,#0a,#0b,#0b
;	db #0b,#0b,#0b,#0b,#0b,#0c,#0c,#0c
;	db #0c
.l0c37
	dw l0c3d,l0c50,l0c85
.l0c3d
	db #9b,#00
	db #09,#8b,#00,#09,#83,#00,#09,#83
	db #00,#09,#83,#00,#09,#83,#00,#09
	db #ff
.l0c50
	db #8f,#01,#06,#03,#03,#05,#05
	db #86,#07,#fe,#03,#07,#07,#fe,#00
	db #87,#07,#fe,#fc,#07,#fe,#00,#03
	db #03,#fe,#03,#90,#07,#90,#07,#fe
	db #fe,#07,#fe,#05,#07,#fe,#00,#07
	db #fe,#07,#07,#fe,#fe,#07,#fe,#05
	db #07,#fe,#00,#07,#07,#ff
.l0c85
	db #8f,#02
	db #fe,#07,#06,#fe,#00,#04,#04,#fe
	db #02,#04,#04,#fe,#00,#08,#04,#04
	db #0a,#0a,#0b,#0b,#0c,#ff
.l0c9d
	db #7f,#f7,#01,#ff,#7f,#00,#00,#3c
	db #00,#01,#7f,#fe,#00,#00,#7f,#00
	db #00,#3c,#00,#03,#7f,#f7,#00,#00
	db #7f,#00,#00,#00,#00,#02,#7f,#d9
	db #01,#ff,#7f,#00,#00,#01,#00,#03
	db #7f,#fd,#01,#ff,#7f,#00,#04,#04
	db #00,#01,#7f,#fe,#01,#ff,#7f,#00
	db #04,#01,#00,#01,#0a,#ff,#01,#ff
	db #7f,#01,#00,#f7,#ff,#01,#00,#00
	db #00,#00,#7f,#01,#00,#00,#00,#00
	db #8a,#21,#39,#00,#00,#00,#00,#00
	db #8a,#19,#41,#00,#00,#00,#00,#00
	db #8a,#29,#49,#00,#00
	db #00,#00,#00
.l0d05
	db #1c,#fa,#7f,#9d,#7f,#00,#01,#03
	db #00,#01,#2f,#00,#07,#1c,#fa,#7f
	db #9d,#7f,#00,#01,#03,#00,#01,#2f
	db #00,#10,#7f,#fa,#7f,#9d,#7f,#08
	db #81,#ae,#ff,#01,#c2,#00,#0f,#7f
	db #fa,#7f,#9d,#7f,#08,#81,#ae,#ff
	db #01,#c2,#00,#23,#7f,#f8,#01,#ff
	db #7f,#00,#00,#38,#00,#01,#54,#02
	db #0a,#7f,#f8,#01,#00,#7f,#00,#00
	db #eb,#ff,#01,#88,#05,#0a,#04,#f8
	db #7f,#ff,#7f,#ff,#00,#00,#00,#02
	db #e5,#00,#fa,#7f,#f3,#01,#ff,#7f
	db #00,#00,#3d,#00,#03,#a6,#02,#0a
	db #00,#00,#00
;
.music_info
	db "Gary Linekers Hotshot (1988)(Gremlin Graphics)(Ben Daglish)",0
	db "Same as Buitre 2 Part 2 (1989)(Erbe Software)(Ben Daglish)",0

	read "music_end.asm"
