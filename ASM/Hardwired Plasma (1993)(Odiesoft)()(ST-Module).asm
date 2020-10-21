; Music of Hardwired Plasma (1993)(Odiesoft)()(ST-Module)
; Ripped by Megachur the 23/09/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "HARDWIRP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #3c00

	read "music_header.asm"

	jp l3c0b
	jp l3c93
	jp l3c77
	db #66,#04
;
.init_music
.l3c0b
;
	ld b,#03
	ld ix,l3fda
	ld iy,l3f06
	ld de,#001c
.l3c18
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l3c18
	ld a,#06
	ld (l3cbb),a
	ld a,d
	ld (l3ccf),a
	inc a
	ld (l3cb6),a
	ld a,#38
	ld (l3cc0),a
	ld a,#ff
	ld (l3f02),a
	ld (l3f03),a
	ld (l3f04),a
	ld (l3f05),a
	ld a,#0c
	ld c,d
	call l3ee4
	ld a,#0d
	ld c,d
	jp l3ee4
;
.stop_music
.l3c77
;
	ld a,#07
	ld c,#3f
	call l3ee4
	ld a,#08
	ld c,#00
	call l3ee4
	ld a,#09
	ld c,#00
	call l3ee4
	ld a,#0a
	ld c,#00
	jp l3ee4
;
.play_music
.l3c93
;
	ld hl,l3cb6
	dec (hl)
	ld ix,l3fda
	ld bc,l3fe8
	call l3d49
	ld ix,l3ff6
	ld bc,l4004
	call l3d49
	ld ix,l4012
	ld bc,l4020
	call l3d49
.l3cb6 equ $ + 1
	ld a,#00
	or a
	jr nz,l3cbf
.l3cbb equ $ + 1
	ld a,#00
	ld (l3cb6),a
.l3cc0 equ $ + 1
.l3cbf
	ld a,#00
	ld hl,l3f03
	cp (hl)
	jr z,l3cce
	ld (hl),a
	ld c,a
	ld a,#07
	call l3ee4
.l3ccf equ $ + 1
.l3cce
	ld a,#00
	ld hl,l3f02
	cp (hl)
	jr z,l3cdd
	ld (hl),a
	ld c,a
	ld a,#06
	call l3ee4
.l3cde equ $ + 1
.l3cdd
	ld a,#00
	ld hl,l3f04
	cp (hl)
	jr z,l3cec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l3ee4
.l3ced equ $ + 1
.l3cec
	ld a,#00
	ld hl,l3f05
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l3ee4
.l3cfa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l3dfa
.l3d09
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l3ee4
.l3d23
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l3d38
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l3d38
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l3d5c
.l3d49
	ld a,(l3cb6)
	or a
	jp nz,l3dfa
	dec (ix+#06)
	jp nz,l3dfa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l3d5c
	ld a,(hl)
	or a
	jr z,l3cfa
	cp #fe
	jr z,l3d09
	cp #ff
	jr z,l3d23
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l3f0c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l3d98
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l3d98
	and #7f
	ld (ix+#06),a
	jr l3deb
.l3d98
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l3dac
	ld (ix+#05),a
	ld (ix+#0a),d
.l3dac
	add a
	add a
	add a
	ld e,a
	ld hl,l4042
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l3deb
	cp #f0
	jp z,l3ea0
	cp #d0
	jp z,l3ebc
	cp #b0
	jp z,l3ec4
	cp #80
	jp nc,l3ecc
	cp #10
	jr nz,l3deb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l3deb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l3dfa
	ld a,(ix+#17)
	or a
	jr nz,l3e0e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l3e0e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l3e39
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l3f0c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l3e39
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l3ee4
	ld c,h
	ld a,(ix+#03)
	call l3ee4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l3e77
	and #0f
	sub (ix+#0a)
	jr nc,l3e6d
	xor a
.l3e6d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l3ee4
.l3e77
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l3e94
	ld b,a
	ld a,c
	ld (l3ccf),a
	ld a,b
	sub #40
.l3e94
	ld (l3e9b),a
	ld a,(l3cc0)
.l3e9b equ $ + 1
	bit 0,a
	ld (l3cc0),a
	ret
.l3ea0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l40c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l3deb
.l3ebc
	inc hl
	ld a,(hl)
	ld (l3cbb),a
	jp l3deb
.l3ec4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l3deb
.l3ecc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l3ced),a
	inc hl
	ld a,(hl)
	ld (l3cde),a
	jp l3deb
.l3ee4
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
.l3f05 equ $ + 3
.l3f04 equ $ + 2
.l3f03 equ $ + 1
.l3f02
	db #ff,#ff,#ff,#ff
.l3f06
	dw l4362,l437a,l4392
.l3f0c
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3fda equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l3fe8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3ff6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l4004 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4012 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l4020 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4042 equ $ + 4
	db #75,#6c,#65,#2e,#e2,#40,#22,#41
	db #42,#41,#00,#00,#62,#41,#a2,#41
	db #c2,#41,#00,#00,#e2,#41,#22,#42
	db #42,#42,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#62,#42,#a2,#42
	db #c2,#42,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#e2,#42,#22,#43
	db #42,#41,#10,#10,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
	db #dc,#3a,#00,#00,#dc,#3a,#dc,#3a
.l40c2 equ $ + 4
	db #dc,#3a,#00,#00,#dc,#3a,#42,#43
	db #dc,#3a,#dc,#3a,#dc,#3a,#dc,#3a
	db #dc,#3a,#dc,#3a,#dc,#3a,#dc,#3a
	db #dc,#3a,#dc,#3a,#dc,#3a,#dc,#3a
	db #dc,#3a,#dc,#3a,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#05,#00,#06,#00
	db #08,#00,#0a,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#09,#05,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#8b,#89,#88,#88,#87
	db #87,#86,#85,#84,#83,#82,#81,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#18,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4362 equ $ + 4
	db #00,#00,#00,#00,#00,#aa,#43,#00
	db #ad,#43,#00,#ca,#43,#00,#ad,#43
	db #00,#ca,#43,#00,#e6,#43,#00,#e6
.l437a equ $ + 4
	db #43,#80,#65,#43,#00,#14,#44,#00
	db #14,#44,#00,#14,#44,#00,#14,#44
	db #00,#14,#44,#00,#14,#44,#00,#14
.l4392 equ $ + 4
	db #44,#80,#7d,#43,#00,#46,#44,#00
	db #92,#44,#00,#13,#45,#00,#92,#44
	db #00,#13,#45,#00,#92,#44,#00,#92
	db #44,#80,#95,#43,#00,#40,#ff,#43
	db #0c,#17,#46,#02,#07,#48,#82,#4a
	db #86,#46,#86,#41,#90,#45,#82,#46
	db #82,#48,#86,#46,#84,#45,#82,#43
	db #82,#41,#82,#ff,#43,#0c,#07,#46
	db #82,#48,#82,#4a,#86,#4f,#86,#4d
	db #93,#cd,#07,#4b,#82,#4d,#82,#4a
	db #82,#48,#84,#46,#83,#45,#83,#ff
	db #43,#04,#f7,#01,#43,#02,#07,#45
	db #82,#46,#82,#45,#82,#43,#82,#41
	db #86,#41,#82,#43,#82,#45,#82,#41
	db #84,#3c,#8c,#3c,#82,#3e,#82,#3f
	db #84,#41,#82,#43,#84,#46,#82,#45
	db #82,#43,#82,#41,#82,#ff,#1f,#02
	db #00,#1f,#84,#1f,#82,#1f,#84,#1f
	db #82,#1f,#82,#22,#82,#22,#84,#22
	db #82,#22,#84,#22,#82,#22,#82,#1d
	db #82,#1d,#84,#1d,#82,#1d,#84,#1d
	db #82,#1d,#82,#20,#82,#20,#84,#20
	db #82,#20,#84,#20,#82,#20,#82,#ff
	db #3a,#04,#01,#3e,#02,#04,#3a,#02
	db #01,#6d,#02,#02,#3a,#02,#01,#3e
	db #04,#04,#3a,#04,#01,#3e,#02,#04
	db #3a,#02,#01,#6d,#02,#02,#3a,#02
	db #01,#3e,#02,#04,#3e,#82,#3a,#04
	db #01,#3e,#02,#04,#3a,#02,#01,#6d
	db #02,#02,#3a,#02,#01,#3e,#04,#04
	db #3a,#04,#01,#3e,#02,#04,#3a,#02
	db #01,#6d,#02,#02,#3e,#02,#04,#3e
	db #82,#3e,#82,#ff,#ba,#01,#ed,#02
	db #ed,#02,#ed,#02,#be,#04,#ed,#02
	db #ba,#01,#ed,#02,#ed,#02,#ed,#02
	db #ba,#01,#ed,#02,#be,#04,#ed,#02
	db #ed,#02,#ed,#02,#ba,#01,#ed,#02
	db #ed,#02,#ed,#02,#be,#04,#ed,#02
	db #ba,#01,#ed,#02,#ed,#02,#ed,#02
	db #ba,#01,#ed,#02,#be,#04,#ed,#02
	db #be,#04,#ed,#02,#ba,#01,#ed,#02
	db #ed,#02,#ed,#02,#be,#04,#ed,#02
	db #ba,#01,#ed,#02,#ed,#02,#ed,#02
	db #ba,#01,#ed,#02,#be,#04,#ed,#02
	db #ed,#02,#ed,#02,#ba,#01,#ed,#02
	db #ed,#02,#ed,#02,#be,#04,#ed,#02
	db #ba,#01,#ed,#02,#ed,#02,#ed,#02
	db #be,#04,#ed,#02,#be,#04,#ed,#02
	db #be,#04,#ed,#02,#ff,#ba,#01,#ed
	db #02,#ed,#02,#ed,#02,#be,#04,#ed
	db #02,#ba,#01,#ed,#02,#ed,#02,#ed
	db #02,#ba,#01,#ed,#02,#be,#04,#ed
	db #02,#ed,#02,#ed,#02,#ba,#01,#ed
	db #02,#ed,#02,#ed,#02,#be,#04,#ed
	db #02,#ba,#01,#ed,#02,#ed,#02,#ed
	db #02,#ba,#01,#ed,#02,#be,#04,#ed
	db #02,#be,#04,#ed,#02,#ba,#01,#ed
	db #02,#ed,#02,#ed,#02,#be,#04,#ed
	db #02,#ba,#01,#ed,#02,#ed,#02,#ed
	db #02,#ba,#01,#ed,#02,#be,#04,#ed
	db #02,#ed,#02,#ed,#02,#ba,#01,#ed
	db #02,#ed,#02,#ed,#02,#be,#04,#ed
	db #02,#ba,#01,#ed,#02,#ed,#02,#ed
	db #02,#be,#04,#ed,#02,#be,#04,#ed
	db #02,#be,#04,#ed,#02,#ff
;
.music_info
	db "Hardwired Plasma (1993)(Odiesoft)()",0
	db "ST-Module",0

	read "music_end.asm"
