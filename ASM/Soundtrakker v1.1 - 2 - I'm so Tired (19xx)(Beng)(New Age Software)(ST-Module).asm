; Music of Soundtrakker v1.1 - 2 - I'm so Tired (19xx)(Beng)(New Age Software)(ST-Module)
; Ripped by Megachur the 05/08/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOUNDT2I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #28ee

	read "music_header.asm"

	jp l28f9
	jp l2981
	jp l2965
	db #66,#04
;
.init_music
.l28f9
;
	ld b,#03
	ld ix,l2cc8
	ld iy,l2bf4
	ld de,#001c
.l2906
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
	djnz l2906
	ld a,#06
	ld (l29a9),a
	ld a,d
	ld (l29bd),a
	inc a
	ld (l29a4),a
	ld a,#38
	ld (l29ae),a
	ld a,#ff
	ld (l2bf0),a
	ld (l2bf1),a
	ld (l2bf2),a
	ld (l2bf3),a
	ld a,#0c
	ld c,d
	call l2bd2
	ld a,#0d
	ld c,d
	jp l2bd2
;
.stop_music
.l2965
;
	ld a,#07
	ld c,#3f
	call l2bd2
	ld a,#08
	ld c,#00
	call l2bd2
	ld a,#09
	ld c,#00
	call l2bd2
	ld a,#0a
	ld c,#00
	jp l2bd2
;
.play_music
.l2981
;
	ld hl,l29a4
	dec (hl)
	ld ix,l2cc8
	ld bc,l2cd6
	call l2a37
	ld ix,l2ce4
	ld bc,l2cf2
	call l2a37
	ld ix,l2d00
	ld bc,l2d0e
	call l2a37
.l29a4 equ $ + 1
	ld a,#00
	or a
	jr nz,l29ad
.l29a9 equ $ + 1
	ld a,#00
	ld (l29a4),a
.l29ae equ $ + 1
.l29ad
	ld a,#00
	ld hl,l2bf1
	cp (hl)
	jr z,l29bc
	ld (hl),a
	ld c,a
	ld a,#07
	call l2bd2
.l29bd equ $ + 1
.l29bc
	ld a,#00
	ld hl,l2bf0
	cp (hl)
	jr z,l29cb
	ld (hl),a
	ld c,a
	ld a,#06
	call l2bd2
.l29cc equ $ + 1
.l29cb
	ld a,#00
	ld hl,l2bf2
	cp (hl)
	jr z,l29da
	ld (hl),a
	ld c,a
	ld a,#0b
	call l2bd2
.l29db equ $ + 1
.l29da
	ld a,#00
	ld hl,l2bf3
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l2bd2
.l29e8
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l2ae8
.l29f7
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
	jp l2bd2
.l2a11
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l2a26
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l2a26
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l2a4a
.l2a37
	ld a,(l29a4)
	or a
	jp nz,l2ae8
	dec (ix+#06)
	jp nz,l2ae8
	ld l,(ix+#00)
	ld h,(ix+#01)
.l2a4a
	ld a,(hl)
	or a
	jr z,l29e8
	cp #fe
	jr z,l29f7
	cp #ff
	jr z,l2a11
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l2bfa
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l2a86
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l2a86
	and #7f
	ld (ix+#06),a
	jr l2ad9
.l2a86
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l2a9a
	ld (ix+#05),a
	ld (ix+#0a),d
.l2a9a
	add a
	add a
	add a
	ld e,a
	ld hl,l2d30
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
	jr z,l2ad9
	cp #f0
	jp z,l2b8e
	cp #d0
	jp z,l2baa
	cp #b0
	jp z,l2bb2
	cp #80
	jp nc,l2bba
	cp #10
	jr nz,l2ad9
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l2ad9
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l2ae8
	ld a,(ix+#17)
	or a
	jr nz,l2afc
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l2afc
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l2b27
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l2bfa
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l2b27
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
	call l2bd2
	ld c,h
	ld a,(ix+#03)
	call l2bd2
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l2b65
	and #0f
	sub (ix+#0a)
	jr nc,l2b5b
	xor a
.l2b5b
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l2bd2
.l2b65
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
	jr z,l2b82
	ld b,a
	ld a,c
	ld (l29bd),a
	ld a,b
	sub #40
.l2b82
	ld (l2b89),a
	ld a,(l29ae)
.l2b89 equ $ + 1
	bit 0,a
	ld (l29ae),a
	ret
.l2b8e
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l2db0
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l2ad9
.l2baa
	inc hl
	ld a,(hl)
	ld (l29a9),a
	jp l2ad9
.l2bb2
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l2ad9
.l2bba
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l29db),a
	inc hl
	ld a,(hl)
	ld (l29cc),a
	jp l2ad9
.l2bd2
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
.l2bf3 equ $ + 3
.l2bf2 equ $ + 2
.l2bf1 equ $ + 1
.l2bf0
	db #ff,#ff,#ff,#ff
.l2bf4
	dw l3050,l3062,l3074
.l2bfa
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
.l2cc8 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l2cd6 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2ce4
	db #00,#00,#02,#03,#09,#00,#00,#00
.l2cf2 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2d00 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l2d0e equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l2d30 equ $ + 4
	db #75,#6c,#65,#2e,#d0,#2d,#10,#2e
	db #30,#2e,#00,#00,#ca,#27,#0f,#76
	db #1e,#48,#4e,#4f,#13,#7b,#0f,#dc
	db #ea,#29,#00,#ff,#c9,#27,#eb,#b9
	db #3a,#86,#23,#56,#50,#2e,#90,#2e
	db #b0,#2e,#00,#00,#c8,#27,#94,#28
	db #62,#26,#50,#30,#d2,#63,#19,#2e
	db #ca,#14,#b0,#18,#50,#2e,#d0,#2e
	db #30,#2e,#18,#07,#f0,#2e,#30,#2f
	db #30,#2e,#18,#07,#50,#2f,#90,#2f
	db #b0,#2f,#00,#00,#d0,#2f,#10,#30
	db #30,#30,#00,#00,#45,#42,#c8,#27
	db #2c,#4b,#82,#23,#47,#42,#48,#42
	db #47,#42,#7c,#1a,#45,#42,#44,#42
	db #45,#42,#7c,#1a,#47,#42,#48,#42
	db #47,#42,#7c,#1a,#45,#42,#44,#42
.l2db0 equ $ + 4
	db #ca,#27,#00,#00,#ca,#27,#ca,#27
	db #ca,#27,#ca,#27,#ca,#27,#ca,#27
	db #ca,#27,#ca,#27,#ca,#27,#ca,#27
	db #ca,#27,#ca,#27,#ca,#27,#ca,#27
	db #ca,#27,#ca,#27,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0a,#0a,#09,#09
	db #08,#08,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#01
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
	db #00,#00,#00,#00,#0e,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0c,#0b,#0a,#08
	db #06,#08,#0a,#0c,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#00,#00,#40,#00
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
	db #80,#80,#80,#80,#00,#00,#30,#00
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
.l3050 equ $ + 4
	db #00,#00,#00,#00,#00,#86,#30,#00
	db #b7,#30,#00,#86,#30,#00,#e8,#30
.l3062 equ $ + 6
	db #00,#e8,#30,#80,#53,#30,#00,#02
	db #31,#00,#0e,#31,#00,#3b,#31,#00
	db #74,#31,#00,#74,#31,#80,#65,#30
.l3074
	db #00,#b9,#31,#00,#ea,#31,#00,#b9
	db #31,#00,#b9,#31,#00,#b9,#31,#80
	db #77,#30,#36,#04,#07,#52,#04,#04
	db #36,#04,#07,#52,#04,#04,#36,#04
	db #07,#52,#04,#04,#36,#04,#07,#52
	db #04,#04,#36,#04,#07,#52,#04,#04
	db #36,#04,#07,#52,#04,#04,#36,#04
	db #07,#52,#04,#04,#36,#04,#07,#52
	db #04,#04,#ff,#36,#04,#07,#52,#04
	db #04,#36,#04,#07,#52,#04,#04,#36
	db #04,#07,#52,#04,#04,#36,#04,#07
	db #52,#04,#04,#36,#04,#07,#52,#04
	db #04,#36,#04,#07,#52,#04,#04,#36
	db #04,#07,#52,#04,#04,#36,#04,#07
	db #52,#04,#04,#ff,#3d,#08,#08,#36
	db #8c,#3d,#84,#3b,#82,#39,#82,#3b
	db #84,#3d,#88,#36,#88,#38,#86,#39
	db #86,#38,#82,#36,#82,#ff,#2a,#10
	db #08,#28,#90,#26,#90,#25,#88,#29
	db #88,#ff,#2a,#04,#08,#3a,#02,#09
	db #33,#84,#2e,#86,#28,#04,#08,#3a
	db #02,#09,#33,#84,#2e,#86,#26,#04
	db #08,#3a,#02,#09,#33,#84,#2e,#86
	db #25,#04,#08,#3a,#02,#09,#33,#82
	db #29,#02,#08,#2e,#06,#09,#ff,#2a
	db #04,#08,#3a,#02,#09,#33,#84,#2e
	db #82,#41,#04,#0a,#28,#04,#08,#3a
	db #02,#09,#33,#84,#2e,#82,#41,#04
	db #0a,#26,#04,#08,#3a,#02,#09,#33
	db #84,#2e,#82,#41,#04,#0a,#25,#04
	db #08,#3a,#02,#09,#33,#82,#29,#02
	db #08,#2e,#02,#09,#41,#04,#0a,#ff
	db #36,#04,#07,#3a,#02,#09,#33,#82
	db #36,#02,#07,#2e,#02,#09,#41,#04
	db #0a,#36,#04,#07,#3a,#02,#09,#33
	db #82,#36,#02,#07,#2e,#02,#09,#41
	db #04,#0a,#36,#04,#07,#3a,#02,#09
	db #33,#82,#36,#02,#07,#2e,#02,#09
	db #41,#04,#0a,#36,#04,#07,#3a,#02
	db #09,#33,#82,#36,#02,#07,#2e,#02
	db #09,#41,#04,#0a,#ff,#36,#06,#a0
	db #13,#36,#84,#36,#84,#34,#02,#a0
	db #15,#36,#06,#a0,#13,#36,#84,#36
	db #84,#34,#02,#a0,#15,#36,#06,#a0
	db #13,#36,#84,#36,#84,#34,#02,#a0
	db #15,#36,#06,#a0,#13,#36,#84,#36
	db #84,#34,#02,#a0,#15,#ff,#36,#06
	db #a0,#13,#36,#84,#36,#84,#34,#02
	db #a0,#15,#36,#06,#a0,#13,#36,#84
	db #36,#84,#34,#02,#a0,#15,#36,#06
	db #a0,#13,#36,#84,#36,#84,#34,#02
	db #a0,#15,#36,#06,#a0,#13,#36,#84
	db #36,#84,#34,#02,#a0,#15,#ff
;
.music_info
	db "Soundtrakker v1.1 - 2 - I'm so Tired (19xx)(Beng)(New Age Software)",0
	db "ST-Module",0

	read "music_end.asm"
