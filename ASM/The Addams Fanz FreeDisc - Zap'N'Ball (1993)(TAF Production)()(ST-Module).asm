; Music of The Addams Fanz FreeDisc - Zap'N'Ball (1993)(TAF Production)()(ST-Module)
; Ripped by Megachur the 20/07/2019
; $VER 1.5

	IFDEF FILENAME_WRITE
	write "TAFFRZNB.BIN"
	ENDIF

MUSIC_DATE_RIP_DAY		equ 20
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6ec5

	read "music_header.asm"

	jr l6ec9
	jr l6ed8
.l6ec9
	call l6ef4
	ld hl,l7317
	ld de,l6ee1
	ld bc,#81ff
	jp #bcd7
.l6ed8
	ld hl,l7317
	call #bcdd
	jp l6f60
.l6ee1
	push ix
	call l6f7c
	pop ix
	ret
	jp l6ef4
	jp l6f7c
	jp l6f60
	db #66,#04
;
.init_music
.l6ef4
;
	ld b,#03
	ld ix,l72c3
	ld iy,l71ef
	ld de,#001c
.l6f01
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
	djnz l6f01
	ld a,#06
	ld (l6fa4),a
	ld a,d
	ld (l6fb8),a
	inc a
	ld (l6f9f),a
	ld a,#38
	ld (l6fa9),a
	ld a,#ff
	ld (l71eb),a
	ld (l71ec),a
	ld (l71ed),a
	ld (l71ee),a
	ld a,#0c
	ld c,d
	call l71cd
	ld a,#0d
	ld c,d
	jp l71cd
;
.stop_music
.l6f60
;
	ld a,#07
	ld c,#3f
	call l71cd
	ld a,#08
	ld c,#00
	call l71cd
	ld a,#09
	ld c,#00
	call l71cd
	ld a,#0a
	ld c,#00
	jp l71cd
;
.play_music
.l6f7c
;
	ld hl,l6f9f
	dec (hl)
	ld ix,l72c3
	ld bc,l72d1
	call l7032
	ld ix,l72df
	ld bc,l72ed
	call l7032
	ld ix,l72fb
	ld bc,l7309
	call l7032
.l6f9f equ $ + 1
	ld a,#04
	or a
	jr nz,l6fa8
.l6fa4 equ $ + 1
	ld a,#06
	ld (l6f9f),a
.l6fa9 equ $ + 1
.l6fa8
	ld a,#38
	ld hl,l71ec
	cp (hl)
	jr z,l6fb7
	ld (hl),a
	ld c,a
	ld a,#07
	call l71cd
.l6fb8 equ $ + 1
.l6fb7
	ld a,#09
	ld hl,l71eb
	cp (hl)
	jr z,l6fc6
	ld (hl),a
	ld c,a
	ld a,#06
	call l71cd
.l6fc7 equ $ + 1
.l6fc6
	ld a,#00
	ld hl,l71ed
	cp (hl)
	jr z,l6fd5
	ld (hl),a
	ld c,a
	ld a,#0b
	call l71cd
.l6fd6 equ $ + 1
.l6fd5
	ld a,#00
	ld hl,l71ee
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l71cd
.l6fe3
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l70e3
.l6ff2
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
	jp l71cd
.l700c
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l7021
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l7021
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l7045
.l7032
	ld a,(l6f9f)
	or a
	jp nz,l70e3
	dec (ix+#06)
	jp nz,l70e3
	ld l,(ix+#00)
	ld h,(ix+#01)
.l7045
	ld a,(hl)
	or a
	jr z,l6fe3
	cp #fe
	jr z,l6ff2
	cp #ff
	jr z,l700c
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l71f5
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l7081
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l7081
	and #7f
	ld (ix+#06),a
	jr l70d4
.l7081
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l7095
	ld (ix+#05),a
	ld (ix+#0a),d
.l7095
	add a
	add a
	add a
	ld e,a
	ld hl,l732b
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
	jr z,l70d4
	cp #f0
	jp z,l7189
	cp #d0
	jp z,l71a5
	cp #b0
	jp z,l71ad
	cp #80
	jp nc,l71b5
	cp #10
	jr nz,l70d4
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l70d4
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l70e3
	ld a,(ix+#17)
	or a
	jr nz,l70f7
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l70f7
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l7122
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l71f5
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l7122
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
	call l71cd
	ld c,h
	ld a,(ix+#03)
	call l71cd
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7160
	and #0f
	sub (ix+#0a)
	jr nc,l7156
	xor a
.l7156
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l71cd
.l7160
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
	jr z,l717d
	ld b,a
	ld a,c
	ld (l6fb8),a
	ld a,b
	sub #40
.l717d
	ld (l7184),a
	ld a,(l6fa9)
.l7184 equ $ + 1
	set 5,a
	ld (l6fa9),a
	ret
.l7189
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l73ab
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l70d4
.l71a5
	inc hl
	ld a,(hl)
	ld (l6fa4),a
	jp l70d4
.l71ad
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l70d4
.l71b5
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l6fd6),a
	inc hl
	ld a,(hl)
	ld (l6fc7),a
	jp l70d4
.l71cd
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
.l71ee equ $ + 3
.l71ed equ $ + 2
.l71ec equ $ + 1
.l71eb
	db #09,#38,#00,#00
.l71ef
	dw l772b,l7746,l7761
.l71f5
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
.l72c3 equ $ + 4
	db #00,#00,#00,#00,#8f,#77,#00,#01
	db #08,#09,#02,#3a,#00,#00,#00,#df
.l72d1 equ $ + 2
	db #2e,#77,#ab,#75,#eb,#75,#ab,#74
	db #07,#18,#1b,#05,#86,#00,#2b,#00
.l72df
	db #2f,#78,#02,#03,#09,#08,#02,#1f
.l72ed equ $ + 6
	db #00,#00,#00,#e7,#49,#77,#4b,#75
	db #8b,#75,#ab,#74,#00,#00,#03,#1d
.l72fb equ $ + 4
	db #7e,#02,#00,#00,#b5,#78,#04,#05
	db #0a,#07,#02,#3a,#00,#00,#00,#ef
.l7309 equ $ + 2
	db #64,#77,#cb,#74,#2b,#75,#ab,#74
	db #00,#00,#03,#1d,#86,#00,#8b,#76
.l7317
	db #00,#00,#00,#00,#00,#81,#e1,#6e
	db #ff,#00,#53,#54,#2d,#4d,#6f,#64
.l732b equ $ + 4
	db #75,#6c,#65,#2e,#c5,#6d,#c5,#6d
	db #c5,#6d,#00,#00,#cb,#73,#0b,#74
	db #2b,#74,#00,#00,#c5,#6d,#c5,#6d
	db #c5,#6d,#00,#00,#c5,#6d,#c5,#6d
	db #c5,#6d,#00,#00,#c5,#6d,#c5,#6d
	db #c5,#6d,#00,#00,#4b,#74,#8b,#74
	db #ab,#74,#11,#0f,#cb,#74,#0b,#75
	db #ab,#74,#14,#09,#cb,#74,#2b,#75
	db #ab,#74,#00,#00,#4b,#75,#8b,#75
	db #ab,#74,#00,#00,#ab,#75,#eb,#75
	db #ab,#74,#07,#18,#48,#22,#88,#22
	db #a8,#21,#00,#00,#ac,#cf,#4c,#d2
	db #6c,#d2,#00,#00,#28,#5f,#68,#61
	db #88,#5f,#00,#00,#22,#59,#22,#59
	db #22,#59,#00,#00,#88,#61,#c8,#61
	db #e8,#61,#00,#00,#22,#59,#22,#59
.l73ab equ $ + 4
	db #22,#59,#00,#00,#8c,#d2,#0b,#76
	db #2b,#76,#4b,#76,#88,#62,#a8,#62
	db #6b,#76,#8b,#76,#ab,#76,#22,#59
	db #22,#59,#cb,#76,#22,#59,#22,#59
	db #eb,#76,#0b,#77,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#04,#06,#07,#09
	db #0c,#11,#17,#1d,#15,#10,#0c,#09
	db #06,#05,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#08,#08,#09,#09
	db #0a,#0a,#0b,#0b,#0c,#0c,#0b,#0b
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0d,#0e,#0f,#0e
	db #0d,#0c,#0b,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0b,#0b,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0a,#07,#04,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#02,#00,#00,#00,#00,#00
	db #00,#00,#fe,#ff,#00,#00,#00,#00
	db #00,#00,#02,#00,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#f8,#fd,#00,#f8
	db #fd,#00,#f8,#fd,#00,#f8,#fd,#00
	db #f8,#fd,#00,#f8,#fd,#00,#f8,#fd
	db #00,#f8,#fd,#00,#f8,#fd,#00,#f8
	db #fd,#00,#f8,#fd,#f9,#fd,#00,#f9
	db #fd,#00,#f9,#fd,#00,#f9,#fd,#00
	db #f9,#fd,#00,#f9,#fd,#00,#f9,#fd
	db #00,#f9,#fd,#00,#f9,#fd,#00,#f9
	db #fd,#00,#f9,#fd,#f7,#fc,#00,#f7
	db #fc,#00,#f7,#fc,#00,#f7,#fc,#00
	db #f7,#fc,#00,#f7,#fc,#00,#f7,#fc
	db #00,#f7,#fc,#00,#f7,#fc,#00,#f7
	db #fc,#00,#f7,#fc,#f4,#f9,#00,#f4
	db #f9,#00,#f4,#f9,#00,#f4,#f9,#00
	db #f4,#f9,#00,#f4,#f9,#00,#f4,#f9
	db #00,#f4,#f9,#00,#f4,#f9,#00,#f4
	db #f9,#00,#f4,#f9,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#00,#f8,#fb,#00
	db #f8,#fb,#00,#f8,#fb,#00,#f8,#fb
	db #00,#f8,#fb,#00,#f8,#fb,#00,#f8
	db #fb,#00,#f8,#fb,#f7,#fb,#00,#f7
	db #fb,#00,#f7,#fb,#00,#f7,#fb,#00
	db #f7,#fb,#00,#f7,#fb,#00,#f7,#fb
	db #00,#f7,#fb,#00,#f7,#fb,#00,#f7
	db #fb,#00,#f7,#fb,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
.l772b equ $ + 4
	db #04,#07,#00,#04,#00,#7c,#77,#00
	db #f0,#77,#00,#9a,#77,#00,#9a,#77
	db #00,#df,#77,#00,#df,#77,#00,#9a
.l7746 equ $ + 7
	db #77,#00,#9a,#77,#80,#2b,#77,#00
	db #0e,#78,#00,#0e,#78,#00,#50,#78
	db #00,#50,#78,#00,#50,#78,#00,#50
	db #78,#00,#50,#78,#00,#50,#78,#80
.l7761 equ $ + 2
	db #46,#77,#00,#92,#78,#00,#92,#78
	db #00,#d6,#78,#00,#d6,#78,#00,#d6
	db #78,#00,#d6,#78,#00,#d6,#78,#00
	db #d6,#78,#80,#61,#77,#49,#0c,#19
	db #cb,#09,#c9,#09,#c8,#09,#c9,#09
	db #48,#84,#44,#82,#41,#84,#44,#86
	db #46,#88,#48,#82,#49,#84,#4d,#82
	db #4b,#90,#ff,#55,#06,#f6,#01,#52
	db #04,#f6,#0b,#50,#02,#f6,#02,#52
	db #02,#f6,#0b,#55,#04,#f6,#02,#55
	db #84,#55,#82,#52,#04,#f6,#03,#57
	db #04,#f6,#0b,#59,#04,#f6,#03,#55
	db #02,#f6,#08,#5c,#04,#f6,#06,#5a
	db #02,#f6,#08,#59,#04,#f6,#03,#57
	db #04,#f6,#02,#54,#02,#f6,#03,#59
	db #04,#f6,#08,#54,#06,#f6,#02,#ff
	db #52,#10,#f5,#0e,#4e,#10,#f5,#0f
	db #49,#90,#50,#88,#51,#08,#f5,#0e
	db #ff,#49,#0c,#19,#cb,#09,#c9,#09
	db #c8,#09,#c9,#09,#48,#84,#44,#82
	db #41,#84,#44,#86,#42,#86,#44,#82
	db #46,#84,#49,#84,#4b,#90,#ff,#2e
	db #04,#18,#3a,#02,#01,#2e,#02,#08
	db #2e,#84,#3a,#02,#01,#2e,#02,#08
	db #29,#84,#3a,#02,#01,#29,#02,#08
	db #29,#84,#3a,#02,#01,#29,#02,#08
	db #2a,#84,#3a,#02,#01,#2a,#02,#08
	db #2a,#84,#3a,#02,#01,#2a,#02,#08
	db #2c,#84,#3a,#02,#01,#2c,#02,#08
	db #2c,#84,#3a,#02,#01,#2c,#02,#08
	db #ff,#2e,#04,#18,#3a,#02,#01,#2e
	db #02,#08,#2e,#84,#3a,#02,#01,#2e
	db #02,#08,#2a,#84,#3a,#02,#01,#2a
	db #02,#08,#2a,#84,#3a,#02,#01,#2a
	db #02,#08,#25,#84,#3a,#02,#01,#25
	db #02,#08,#25,#84,#3a,#02,#01,#25
	db #02,#08,#2c,#84,#3a,#02,#01,#2c
	db #02,#08,#2d,#84,#3a,#02,#01,#2d
	db #02,#08,#ff,#41,#02,#f7,#07,#44
	db #02,#07,#46,#82,#48,#82,#4b,#82
	db #48,#82,#46,#82,#44,#82,#41,#82
	db #44,#82,#46,#82,#48,#82,#4b,#82
	db #48,#82,#46,#82,#44,#82,#41,#82
	db #44,#82,#46,#82,#48,#82,#4b,#82
	db #48,#82,#46,#82,#44,#82,#41,#82
	db #44,#82,#46,#82,#48,#82,#4b,#82
	db #48,#82,#46,#82,#44,#82,#ff,#4d
	db #02,#f7,#07,#49,#02,#07,#48,#82
	db #49,#82,#46,#82,#49,#82,#48,#82
	db #49,#82,#4e,#82,#49,#82,#48,#82
	db #49,#82,#46,#82,#49,#82,#48,#82
	db #49,#82,#4d,#82,#49,#82,#48,#82
	db #49,#82,#44,#82,#49,#82,#48,#82
	db #49,#82,#4b,#82,#48,#82,#46,#82
	db #48,#82,#44,#82,#48,#82,#46,#82
	db #48,#82,#ff
;
.music_info
	db "The Addams Fanz FreeDisc - Zap'N'Ball (1993)(TAF Production)()",0
	db "ST-Module",0

	read "music_end.asm"
