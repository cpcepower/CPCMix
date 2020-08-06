; Music of Soundtrakker v1.1 - 5 - Klick (19xx)(Beng)(New Age Software)(ST-Module)
; Ripped by Megachur the 05/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOUNDT5K.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #4c2d

	read "music_header.asm"

	jp l4c38
	jp l4cc0
	jp l4ca4
	db #66,#04
;
.init_music
.l4c38
;
	ld b,#03
	ld ix,l5007
	ld iy,l4f33
	ld de,#001c
.l4c45
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
	djnz l4c45
	ld a,#06
	ld (l4ce8),a
	ld a,d
	ld (l4cfc),a
	inc a
	ld (l4ce3),a
	ld a,#38
	ld (l4ced),a
	ld a,#ff
	ld (l4f2f),a
	ld (l4f30),a
	ld (l4f31),a
	ld (l4f32),a
	ld a,#0c
	ld c,d
	call l4f11
	ld a,#0d
	ld c,d
	jp l4f11
;
.stop_music
.l4ca4
;
	ld a,#07
	ld c,#3f
	call l4f11
	ld a,#08
	ld c,#00
	call l4f11
	ld a,#09
	ld c,#00
	call l4f11
	ld a,#0a
	ld c,#00
	jp l4f11
;
.play_music
.l4cc0
;
	ld hl,l4ce3
	dec (hl)
	ld ix,l5007
	ld bc,l5015
	call l4d76
	ld ix,l5023
	ld bc,l5031
	call l4d76
	ld ix,l503f
	ld bc,l504d
	call l4d76
.l4ce3 equ $ + 1
	ld a,#00
	or a
	jr nz,l4cec
.l4ce8 equ $ + 1
	ld a,#00
	ld (l4ce3),a
.l4ced equ $ + 1
.l4cec
	ld a,#00
	ld hl,l4f30
	cp (hl)
	jr z,l4cfb
	ld (hl),a
	ld c,a
	ld a,#07
	call l4f11
.l4cfc equ $ + 1
.l4cfb
	ld a,#00
	ld hl,l4f2f
	cp (hl)
	jr z,l4d0a
	ld (hl),a
	ld c,a
	ld a,#06
	call l4f11
.l4d0b equ $ + 1
.l4d0a
	ld a,#00
	ld hl,l4f31
	cp (hl)
	jr z,l4d19
	ld (hl),a
	ld c,a
	ld a,#0b
	call l4f11
.l4d1a equ $ + 1
.l4d19
	ld a,#00
	ld hl,l4f32
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l4f11
.l4d27
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l4e27
.l4d36
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
	jp l4f11
.l4d50
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l4d65
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l4d65
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l4d89
.l4d76
	ld a,(l4ce3)
	or a
	jp nz,l4e27
	dec (ix+#06)
	jp nz,l4e27
	ld l,(ix+#00)
	ld h,(ix+#01)
.l4d89
	ld a,(hl)
	or a
	jr z,l4d27
	cp #fe
	jr z,l4d36
	cp #ff
	jr z,l4d50
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l4f39
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l4dc5
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l4dc5
	and #7f
	ld (ix+#06),a
	jr l4e18
.l4dc5
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l4dd9
	ld (ix+#05),a
	ld (ix+#0a),d
.l4dd9
	add a
	add a
	add a
	ld e,a
	ld hl,l506f
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
	jr z,l4e18
	cp #f0
	jp z,l4ecd
	cp #d0
	jp z,l4ee9
	cp #b0
	jp z,l4ef1
	cp #80
	jp nc,l4ef9
	cp #10
	jr nz,l4e18
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l4e18
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l4e27
	ld a,(ix+#17)
	or a
	jr nz,l4e3b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l4e3b
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l4e66
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l4f39
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l4e66
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
	call l4f11
	ld c,h
	ld a,(ix+#03)
	call l4f11
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4ea4
	and #0f
	sub (ix+#0a)
	jr nc,l4e9a
	xor a
.l4e9a
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l4f11
.l4ea4
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
	jr z,l4ec1
	ld b,a
	ld a,c
	ld (l4cfc),a
	ld a,b
	sub #40
.l4ec1
	ld (l4ec8),a
	ld a,(l4ced)
.l4ec8 equ $ + 1
	bit 0,a
	ld (l4ced),a
	ret
.l4ecd
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l50ef
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l4e18
.l4ee9
	inc hl
	ld a,(hl)
	ld (l4ce8),a
	jp l4e18
.l4ef1
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l4e18
.l4ef9
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l4d1a),a
	inc hl
	ld a,(hl)
	ld (l4d0b),a
	jp l4e18
.l4f11
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
.l4f32 equ $ + 3
.l4f31 equ $ + 2
.l4f30 equ $ + 1
.l4f2f
	db #ff,#ff,#ff,#ff
.l4f33
	dw l54af,l54c7,l54df
.l4f39
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
	dw #000f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5007 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l5015 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5023
	db #00,#00,#02,#03,#09,#00,#00,#00
.l5031 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l503f equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l504d equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l506f equ $ + 4
	db #75,#6c,#65,#2e,#0f,#51,#4f,#51
	db #6f,#51,#00,#00,#8f,#51,#cf,#51
	db #ef,#51,#00,#00,#0f,#52,#4f,#52
	db #6f,#52,#00,#00,#8f,#52,#cf,#52
	db #ef,#52,#00,#00,#8f,#52,#0f,#53
	db #2f,#53,#00,#00,#07,#4b,#d3,#4b
	db #a1,#49,#50,#30,#4f,#53,#8f,#53
	db #af,#53,#00,#00,#f5,#49,#a9,#7b
	db #11,#21,#4d,#4f,#cf,#53,#0f,#54
	db #6f,#51,#18,#07,#12,#21,#01,#7c
	db #c7,#b8,#bf,#6d,#2f,#54,#6f,#54
	db #8f,#54,#00,#00,#cd,#87,#07,#4b
	db #cd,#87,#c5,#3c,#cf,#87,#d0,#87
	db #cf,#87,#c5,#3c,#cd,#87,#cc,#87
	db #cd,#87,#c5,#3c,#cf,#87,#d0,#87
	db #cf,#87,#c5,#3c,#cd,#87,#cc,#87
.l50ef equ $ + 4
	db #08,#4b,#fe,#ff,#08,#4b,#09,#4b
	db #0a,#4b,#0b,#4b,#0a,#4b,#09,#4b
	db #08,#4b,#07,#4b,#08,#4b,#09,#4b
	db #0a,#4b,#0b,#4b,#0a,#4b,#09,#4b
	db #08,#4b,#07,#4b,#ff,#ff,#fe,#ff
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
	db #00,#00,#00,#00,#00,#00,#80,#00
	db #40,#01,#a0,#01,#40,#02,#e8,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0c,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#03,#02,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0c,#09,#06
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#00,#40,#00
	db #80,#00,#c0,#00,#00,#01,#40,#01
	db #80,#01,#c0,#01,#00,#02,#40,#02
	db #80,#02,#c0,#02,#00,#03,#40,#03
	db #80,#03,#c0,#03,#00,#04,#40,#04
	db #80,#04,#c0,#04,#00,#05,#40,#05
	db #80,#05,#c0,#05,#00,#06,#40,#06
	db #80,#06,#c0,#06,#00,#07,#40,#07
	db #80,#07,#c0,#07,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#08,#07,#07,#07,#06
	db #06,#06,#03,#00,#00,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
.l54af equ $ + 4
	db #80,#80,#80,#80,#00,#f7,#54,#00
	db #06,#55,#00,#47,#55,#00,#9a,#55
	db #00,#a9,#55,#00,#2a,#56,#00,#8e
.l54c7 equ $ + 4
	db #56,#80,#bb,#54,#00,#0f,#57,#00
	db #46,#57,#00,#0f,#57,#00,#0f,#57
	db #00,#0f,#57,#00,#7d,#57,#00,#a7
.l54df equ $ + 4
	db #57,#80,#d3,#54,#00,#fa,#57,#00
	db #fd,#57,#00,#fa,#57,#00,#00,#58
	db #00,#10,#58,#00,#fd,#57,#00,#13
	db #58,#80,#eb,#54,#00,#08,#46,#10
	db #03,#46,#90,#46,#90,#46,#84,#3a
	db #04,#06,#ff,#3a,#04,#01,#3a,#02
	db #06,#3a,#02,#01,#46,#02,#03,#3a
	db #02,#01,#3a,#02,#06,#3a,#02,#01
	db #3a,#84,#3a,#04,#06,#46,#04,#03
	db #3a,#04,#06,#3a,#04,#01,#3a,#02
	db #06,#3a,#02,#01,#46,#02,#03,#3a
	db #02,#01,#3a,#02,#06,#3a,#02,#01
	db #3a,#84,#3a,#04,#06,#46,#04,#03
	db #3a,#04,#06,#ff,#3a,#02,#01,#52
	db #02,#04,#3a,#02,#06,#ba,#01,#ba
	db #02,#46,#02,#03,#3a,#02,#01,#3a
	db #02,#06,#3a,#02,#01,#3a,#82,#52
	db #02,#04,#3a,#03,#06,#ba,#02,#46
	db #04,#03,#3a,#04,#06,#3a,#02,#01
	db #52,#02,#04,#3a,#02,#06,#ba,#01
	db #ba,#02,#46,#02,#03,#3a,#02,#01
	db #3a,#02,#06,#3a,#02,#01,#3a,#82
	db #52,#02,#04,#3a,#03,#06,#ba,#02
	db #46,#04,#03,#3a,#04,#06,#ff,#00
	db #08,#46,#10,#03,#46,#90,#46,#90
	db #46,#84,#3a,#04,#06,#ff,#ba,#01
	db #d2,#04,#d2,#04,#d2,#04,#ba,#06
	db #d2,#04,#ba,#01,#ba,#02,#c6,#03
	db #d2,#04,#ba,#01,#d2,#04,#ba,#06
	db #d2,#04,#ba,#01,#d2,#04,#ba,#01
	db #d2,#04,#d2,#04,#d2,#04,#ba,#06
	db #d2,#04,#d2,#04,#ba,#02,#c6,#03
	db #d2,#04,#d2,#04,#d2,#04,#ba,#06
	db #d2,#04,#d2,#04,#d2,#04,#ba,#01
	db #d2,#04,#d2,#04,#d2,#04,#ba,#06
	db #d2,#04,#ba,#01,#ba,#02,#c6,#03
	db #d2,#04,#ba,#01,#d2,#04,#ba,#06
	db #d2,#04,#ba,#01,#d2,#04,#ba,#01
	db #d2,#04,#d2,#04,#d2,#04,#ba,#06
	db #d2,#04,#d2,#04,#ba,#02,#c6,#03
	db #d2,#04,#d2,#04,#d2,#04,#ba,#06
	db #d2,#04,#d2,#04,#d2,#04,#ff,#ba
	db #01,#d2,#04,#d2,#04,#d2,#04,#ba
	db #06,#d2,#04,#ba,#01,#ba,#02,#c6
	db #03,#d2,#04,#ba,#01,#d2,#04,#ba
	db #06,#d2,#04,#ba,#01,#d2,#04,#ba
	db #01,#d2,#04,#d2,#04,#d2,#04,#ba
	db #06,#d2,#04,#d2,#04,#ba,#02,#c6
	db #03,#d2,#04,#d2,#04,#d2,#04,#ba
	db #06,#d2,#04,#d2,#04,#d2,#04,#ba
	db #01,#d2,#04,#d2,#04,#d2,#04,#ba
	db #06,#d2,#04,#ba,#01,#ba,#02,#c6
	db #03,#d2,#04,#ba,#01,#d2,#04,#ba
	db #06,#d2,#04,#ba,#01,#d2,#04,#3f
	db #10,#0a,#ff,#ba,#01,#d2,#04,#d2
	db #04,#d2,#04,#ba,#06,#d2,#04,#ba
	db #01,#ba,#02,#c6,#03,#d2,#04,#ba
	db #01,#d2,#04,#ba,#06,#d2,#04,#ba
	db #01,#d2,#04,#ba,#01,#d2,#04,#d2
	db #04,#d2,#04,#ba,#06,#d2,#04,#d2
	db #04,#ba,#02,#c6,#03,#d2,#04,#d2
	db #04,#d2,#04,#ba,#06,#d2,#04,#d2
	db #04,#d2,#04,#ba,#01,#d2,#04,#d2
	db #04,#d2,#04,#ba,#06,#d2,#04,#ba
	db #01,#ba,#02,#c6,#03,#d2,#04,#ba
	db #01,#d2,#04,#ba,#06,#d2,#04,#ba
	db #01,#d2,#04,#ba,#01,#d2,#04,#d2
	db #04,#d2,#04,#ba,#06,#d2,#04,#d2
	db #04,#ba,#02,#c6,#03,#d2,#04,#d2
	db #04,#d2,#04,#ba,#06,#d2,#04,#d2
	db #04,#d2,#04,#ff,#22,#06,#c8,#14
	db #25,#06,#c8,#19,#26,#04,#c8,#18
	db #27,#08,#c8,#16,#29,#02,#c8,#14
	db #2a,#02,#c8,#13,#29,#04,#c8,#14
	db #22,#86,#25,#06,#c8,#19,#26,#04
	db #c8,#18,#27,#08,#c8,#16,#29,#02
	db #c8,#14,#2a,#02,#c8,#13,#29,#04
	db #c8,#14,#ff,#22,#06,#c8,#14,#25
	db #06,#c8,#19,#26,#04,#c8,#18,#27
	db #08,#c8,#16,#29,#02,#c8,#14,#2a
	db #02,#c8,#13,#29,#04,#c8,#14,#22
	db #86,#25,#06,#c8,#19,#26,#04,#c8
	db #18,#27,#08,#c8,#16,#29,#02,#c8
	db #14,#2a,#02,#c8,#13,#29,#04,#c8
	db #14,#ff,#22,#06,#c8,#14,#25,#06
	db #c8,#19,#26,#04,#c8,#18,#27,#08
	db #c8,#16,#29,#02,#c8,#14,#2a,#02
	db #c8,#13,#29,#04,#c8,#14,#22,#86
	db #25,#06,#c8,#19,#26,#04,#c8,#18
	db #33,#10,#1a,#ff,#29,#04,#c8,#14
	db #25,#02,#c8,#19,#22,#04,#c8,#14
	db #22,#82,#25,#02,#c8,#19,#27,#04
	db #c8,#16,#27,#82,#25,#02,#c8,#19
	db #27,#02,#c8,#16,#29,#02,#c8,#14
	db #2a,#02,#c8,#13,#29,#04,#c8,#14
	db #29,#84,#25,#02,#c8,#19,#22,#04
	db #c8,#14,#22,#82,#25,#02,#c8,#19
	db #27,#04,#c8,#16,#27,#82,#25,#02
	db #c8,#19,#27,#02,#c8,#16,#24,#04
	db #c8,#12,#25,#04,#c8,#19,#ff,#00
	db #40,#ff,#00,#40,#ff,#00,#30,#3a
	db #03,#0a,#37,#83,#33,#83,#32,#83
	db #30,#82,#2e,#82,#ff,#fe,#40,#ff
	db #41,#10,#18,#3f,#06,#18,#3d,#06
	db #18,#3c,#04,#18,#41,#10,#18,#3f
	db #86,#3d,#86,#3c,#04,#08,#ff
;
.music_info
	db "Soundtrakker v1.1 - 5 - Klick (19xx)(Beng)(New Age Software)",0
	db "ST-Module",0

	read "music_end.asm"