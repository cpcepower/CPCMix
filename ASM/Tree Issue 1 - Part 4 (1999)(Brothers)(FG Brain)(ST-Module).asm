; Music of Tree Issue 1 - Part 4 (1999)(Brothers)(FG Brain)(ST-Module)
; Ripped by Megachur the 08/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TREEI1P4.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #8dc0

	read "music_header.asm"

	jp l8dcb
	jp l8e53
	jp l8e37
	ld h,(hl)
	inc b
;
.init_music
.l8dcb
;
	ld b,#03
	ld ix,l919a
	ld iy,l90c6
	ld de,#001c
.l8dd8
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
	djnz l8dd8
	ld a,#05
	ld (l8e7b),a
	ld a,d
	ld (l8e8f),a
	inc a
	ld (l8e76),a
	ld a,#38
	ld (l8e80),a
	ld a,#ff
	ld (l90c2),a
	ld (l90c3),a
	ld (l90c4),a
	ld (l90c5),a
	ld a,#0c
	ld c,d
	call l90a4
	ld a,#0d
	ld c,d
	jp l90a4
;
.stop_music
.l8e37
;
	ld a,#07
	ld c,#3f
	call l90a4
	ld a,#08
	ld c,#00
	call l90a4
	ld a,#09
	ld c,#00
	call l90a4
	ld a,#0a
	ld c,#00
	jp l90a4
;
.play_music
.l8e53
;
	ld hl,l8e76
	dec (hl)
	ld ix,l919a
	ld bc,l91a8
	call l8f09
	ld ix,l91b6
	ld bc,l91c4
	call l8f09
	ld ix,l91d2
	ld bc,l91e0
	call l8f09
.l8e76 equ $ + 1
	ld a,#01
	or a
	jr nz,l8e7f
.l8e7b equ $ + 1
	ld a,#05
	ld (l8e76),a
.l8e80 equ $ + 1
.l8e7f
	ld a,#38
	ld hl,l90c3
	cp (hl)
	jr z,l8e8e
	ld (hl),a
	ld c,a
	ld a,#07
	call l90a4
.l8e8f equ $ + 1
.l8e8e
	ld a,#00
	ld hl,l90c2
	cp (hl)
	jr z,l8e9d
	ld (hl),a
	ld c,a
	ld a,#06
	call l90a4
.l8e9e equ $ + 1
.l8e9d
	ld a,#00
	ld hl,l90c4
	cp (hl)
	jr z,l8eac
	ld (hl),a
	ld c,a
	ld a,#0b
	call l90a4
.l8ead equ $ + 1
.l8eac
	ld a,#00
	ld hl,l90c5
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l90a4
.l8eba
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l8fba
.l8ec9
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
	jp l90a4
.l8ee3
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l8ef8
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l8ef8
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l8f1c
.l8f09
	ld a,(l8e76)
	or a
	jp nz,l8fba
	dec (ix+#06)
	jp nz,l8fba
	ld l,(ix+#00)
	ld h,(ix+#01)
.l8f1c
	ld a,(hl)
	or a
	jr z,l8eba
	cp #fe
	jr z,l8ec9
	cp #ff
	jr z,l8ee3
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l90cc
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l8f58
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l8f58
	and #7f
	ld (ix+#06),a
	jr l8fab
.l8f58
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l8f6c
	ld (ix+#05),a
	ld (ix+#0a),d
.l8f6c
	add a
	add a
	add a
	ld e,a
	ld hl,l9202
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
	jr z,l8fab
	cp #f0
	jp z,l9060
	cp #d0
	jp z,l907c
	cp #b0
	jp z,l9084
	cp #80
	jp nc,l908c
	cp #10
	jr nz,l8fab
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l8fab
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l8fba
	ld a,(ix+#17)
	or a
	jr nz,l8fce
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l8fce
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l8ff9
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l90cc
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l8ff9
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
	call l90a4
	ld c,h
	ld a,(ix+#03)
	call l90a4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9037
	and #0f
	sub (ix+#0a)
	jr nc,l902d
	xor a
.l902d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l90a4
.l9037
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
	jr z,l9054
	ld b,a
	ld a,c
	ld (l8e8f),a
	ld a,b
	sub #40
.l9054
	ld (l905b),a
	ld a,(l8e80)
.l905b equ $ + 1
	set 5,a
	ld (l8e80),a
	ret
.l9060
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l9282
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l8fab
.l907c
	inc hl
	ld a,(hl)
	ld (l8e7b),a
	jp l8fab
.l9084
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l8fab
.l908c
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l8ead),a
	inc hl
	ld a,(hl)
	ld (l8e9e),a
	jp l8fab
.l90a4
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
.l90c5 equ $ + 3
.l90c4 equ $ + 2
.l90c3 equ $ + 1
.l90c2
	db #00,#38,#00,#00
.l90c6
	db #e2,#94,#fd,#94,#18,#95
.l90cc
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
.l919a equ $ + 4
	db #00,#00,#00,#00,#58,#95,#00,#01
	db #08,#00,#03,#30,#00,#00,#00,#df
.l91a8 equ $ + 2
	db #e8,#94,#a2,#92,#e2,#92,#02,#93
	db #00,#00,#0a,#16,#ef,#00,#00,#00
.l91b6
	db #92,#96,#02,#03,#09,#00,#01,#3c
.l91c4 equ $ + 6
	db #00,#00,#00,#e7,#03,#95,#a2,#92
	db #e2,#92,#02,#93,#00,#00,#14,#0c
.l91d2 equ $ + 4
	db #77,#00,#00,#00,#c6,#97,#04,#05
	db #0a,#08,#05,#43,#00,#00,#00,#ef
.l91e0 equ $ + 2
	db #1e,#95,#82,#94,#c2,#94,#02,#93
	db #18,#07,#19,#06,#50,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l9202 equ $ + 4
	db #75,#6c,#65,#2e,#a2,#92,#e2,#92
	db #02,#93,#00,#00,#22,#93,#62,#93
	db #82,#93,#00,#00,#a2,#93,#e2,#93
	db #02,#94,#00,#00,#9c,#8c,#9c,#8c
	db #9c,#8c,#00,#00,#9c,#8c,#9c,#8c
	db #9c,#8c,#00,#00,#9c,#8c,#9c,#8c
	db #9c,#8c,#00,#00,#9c,#8c,#9c,#8c
	db #9c,#8c,#00,#00,#22,#94,#62,#94
	db #02,#93,#18,#07,#82,#94,#c2,#94
	db #02,#93,#18,#07,#9c,#8c,#9c,#8c
	db #9c,#8c,#00,#00,#9c,#8c,#9c,#8c
	db #9c,#8c,#00,#00,#9c,#8c,#9c,#8c
	db #9c,#8c,#00,#00,#9c,#8c,#9c,#8c
	db #9c,#8c,#00,#00,#9c,#8c,#9c,#8c
	db #9c,#8c,#00,#00,#9c,#8c,#9c,#8c
	db #9c,#8c,#00,#00,#9c,#8c,#9c,#8c
.l9282 equ $ + 4
	db #9c,#8c,#00,#00,#9c,#8c,#9c,#8c
	db #9c,#8c,#9c,#8c,#9c,#8c,#9c,#8c
	db #9c,#8c,#9c,#8c,#9c,#8c,#9c,#8c
	db #9c,#8c,#9c,#8c,#9c,#8c,#9c,#8c
	db #9c,#8c,#9c,#8c,#ff,#ff,#fe,#ff
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
	db #00,#00,#00,#00,#00,#00,#40,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#33,#95,#00
	db #4d,#95,#00,#4d,#95,#00,#6f,#95
	db #00,#6f,#95,#00,#8d,#95,#00,#cf
	db #95,#00,#1d,#96,#80,#e5,#94,#00
	db #6b,#96,#00,#87,#96,#00,#87,#96
	db #00,#ab,#96,#00,#ab,#96,#00,#ed
	db #96,#00,#4a,#97,#00,#ed,#96,#80
	db #00,#95,#00,#a7,#97,#00,#bb,#97
	db #00,#e3,#97,#00,#0d,#98,#00,#0d
	db #98,#00,#35,#98,#00,#5f,#98,#00
	db #5f,#98,#80,#1b,#95,#3a,#06,#00
	db #46,#86,#41,#84,#3a,#86,#46,#86
	db #41,#84,#38,#86,#44,#86,#3f,#84
	db #36,#86,#42,#86,#3d,#84,#ff,#3a
	db #04,#00,#41,#84,#3a,#84,#41,#84
	db #3a,#84,#41,#84,#3a,#84,#41,#84
	db #38,#84,#3f,#84,#38,#84,#3f,#84
	db #36,#84,#3d,#84,#36,#84,#3d,#84
	db #ff,#41,#04,#07,#3d,#84,#3a,#8e
	db #3a,#82,#3d,#82,#41,#82,#3f,#82
	db #3d,#82,#3f,#88,#44,#86,#44,#82
	db #42,#84,#42,#84,#41,#88,#ff,#22
	db #02,#00,#22,#82,#22,#82,#22,#82
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #22,#82,#22,#82,#22,#82,#22,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #20,#82,#20,#82,#20,#82,#20,#82
	db #1e,#82,#1e,#82,#1e,#82,#1e,#82
	db #1e,#82,#1e,#82,#1e,#82,#1e,#82
	db #ff,#46,#02,#08,#22,#02,#00,#49
	db #02,#08,#46,#82,#4b,#82,#4d,#82
	db #22,#02,#00,#22,#82,#22,#82,#22
	db #82,#22,#82,#4d,#02,#08,#4e,#82
	db #4d,#82,#4b,#82,#49,#82,#4b,#82
	db #20,#02,#00,#48,#02,#08,#20,#02
	db #00,#44,#02,#08,#20,#02,#00,#20
	db #82,#20,#82,#46,#02,#08,#1e,#02
	db #00,#1e,#82,#49,#02,#08,#48,#82
	db #46,#82,#48,#82,#49,#82,#ff,#46
	db #02,#08,#22,#02,#00,#49,#02,#08
	db #46,#82,#4b,#82,#4d,#82,#22,#02
	db #00,#22,#82,#22,#82,#22,#82,#22
	db #82,#4d,#02,#08,#4e,#82,#4d,#82
	db #4b,#82,#49,#82,#50,#82,#20,#02
	db #00,#4b,#02,#08,#20,#02,#00,#48
	db #02,#08,#20,#02,#00,#20,#82,#44
	db #02,#08,#46,#82,#1e,#02,#00,#1e
	db #82,#49,#02,#08,#48,#82,#46,#82
	db #44,#82,#48,#82,#ff,#00,#02,#3d
	db #06,#00,#3a,#86,#46,#84,#3d,#86
	db #3a,#86,#46,#84,#3c,#86,#38,#86
	db #44,#84,#3a,#86,#36,#86,#42,#82
	db #ff,#00,#02,#3d,#04,#00,#46,#84
	db #3d,#84,#46,#84,#3d,#84,#46,#84
	db #3d,#84,#46,#84,#3c,#84,#44,#84
	db #3c,#84,#44,#84,#3a,#84,#42,#84
	db #3a,#84,#42,#82,#ff,#3a,#02,#00
	db #3d,#82,#41,#82,#46,#82,#3a,#82
	db #3d,#82,#41,#82,#46,#82,#3a,#82
	db #3d,#82,#41,#82,#46,#82,#3a,#82
	db #3d,#82,#41,#82,#46,#82,#38,#82
	db #3c,#82,#3f,#82,#44,#82,#38,#82
	db #3c,#82,#3f,#82,#44,#82,#36,#82
	db #3a,#82,#3d,#82,#42,#82,#36,#82
	db #3a,#82,#3d,#82,#42,#82,#ff,#2e
	db #02,#01,#3d,#02,#00,#3a,#02,#02
	db #2e,#02,#01,#2e,#82,#3d,#02,#00
	db #3a,#02,#02,#46,#02,#00,#2e,#02
	db #01,#3d,#02,#00,#3a,#02,#02,#2e
	db #02,#01,#2e,#82,#3d,#02,#00,#3a
	db #02,#02,#46,#02,#00,#2e,#02,#01
	db #3c,#02,#00,#3a,#02,#02,#2e,#02
	db #01,#2e,#82,#3c,#02,#00,#3a,#02
	db #02,#44,#02,#00,#2e,#02,#01,#3a
	db #02,#00,#3a,#02,#02,#2e,#02,#01
	db #2e,#82,#3a,#02,#00,#3a,#02,#02
	db #42,#02,#00,#ff,#2e,#02,#01,#3d
	db #02,#00,#3a,#02,#02,#2e,#02,#01
	db #2e,#82,#3d,#02,#00,#3a,#02,#02
	db #46,#02,#00,#2e,#02,#01,#3d,#02
	db #00,#3a,#02,#02,#2e,#02,#01,#2e
	db #82,#3d,#02,#00,#3a,#02,#02,#46
	db #02,#00,#2e,#02,#01,#3c,#02,#00
	db #3a,#02,#02,#2e,#02,#01,#2e,#82
	db #3c,#02,#00,#3a,#02,#02,#44,#02
	db #00,#2e,#02,#01,#3a,#02,#00,#3a
	db #02,#02,#2e,#02,#01,#2e,#82,#3a
	db #02,#00,#3a,#02,#02,#42,#02,#00
	db #ff,#00,#04,#41,#06,#00,#3d,#8a
	db #41,#86,#3d,#8a,#3f,#86,#3c,#8a
	db #3d,#86,#3a,#86,#ff,#46,#04,#08
	db #49,#82,#46,#82,#4b,#82,#4d,#8c
	db #4d,#82,#4e,#82,#4d,#82,#4b,#82
	db #49,#82,#4b,#84,#48,#84,#44,#88
	db #46,#86,#49,#82,#48,#82,#46,#82
	db #48,#82,#49,#82,#ff,#46,#04,#08
	db #49,#82,#46,#82,#4b,#82,#4d,#8c
	db #4d,#82,#4e,#82,#4d,#82,#4b,#82
	db #49,#82,#50,#84,#4b,#84,#48,#86
	db #44,#82,#46,#86,#49,#82,#48,#82
	db #46,#82,#44,#82,#48,#82,#ff,#46
	db #04,#08,#49,#82,#46,#82,#4b,#82
	db #4d,#8c,#4d,#82,#4e,#82,#4d,#82
	db #4b,#82,#49,#82,#4b,#84,#48,#84
	db #44,#88,#46,#86,#49,#82,#48,#82
	db #46,#82,#48,#82,#49,#82,#ff,#3a
	db #04,#00,#41,#82,#46,#82,#3a,#84
	db #41,#84,#3a,#84,#41,#82,#46,#82
	db #3a,#84,#41,#84,#38,#84,#3f,#82
	db #44,#82,#38,#84,#3f,#84,#36,#84
	db #3d,#82,#42,#82,#36,#84,#3d,#84
	db #ff,#3a,#04,#00,#41,#82,#46,#82
	db #3a,#82,#22,#82,#41,#84,#3a,#84
	db #41,#82,#46,#82,#3a,#84,#41,#84
	db #38,#84,#3f,#82,#44,#82,#38,#84
	db #3f,#82,#20,#82,#36,#84,#3d,#82
	db #42,#82,#36,#82,#1e,#82,#3d,#84
	db #ff,#00,#f1,#ff,#ff,#ff,#ff,#ff
	db #ee,#00,#f1,#ff,#ff,#ff,#ff,#ff
	db #cc,#00,#f1,#ff,#ff,#ff,#ff,#ff
	db #ff,#e0,#70,#ff,#ff,#ff,#ff,#ff
	db #ff,#00,#70,#ff,#ff,#ff,#ff,#ff
	db #ff,#00,#00,#00,#00,#00,#f1,#ff
	db #ff,#ff,#ff,#ff,#ee,#00,#00,#00
	db #00,#00,#f1,#ff,#ff,#ff,#cc,#00
	db #f3,#ee,#f1,#ff,#ff,#fe,#00,#30
	db #ee,#00,#f1,#ff,#ff,#ff,#ff,#ff
	db #ff,#ec,#f3,#ff,#ff,#ff,#00,#00
	db #00,#00,#70,#ff,#ff,#ff,#ff,#ff
	db #ff,#f8,#70,#f0,#f0,#f0,#f0,#f0
	db #f1,#88,#70,#f0,#f0,#f0,#f0,#f0
	db #f3,#00,#70,#f0,#f0,#f0,#f0,#f0
	db #f0,#c0,#30,#f0,#f0,#f0,#f0,#f0
	db #f0,#cc,#30,#f0,#f0,#f0,#f0,#f0
	db #f0,#cc,#00,#00,#00,#00,#70,#f0
	db #f0,#f0,#f0,#f0,#f1,#88,#00,#00
	db #00,#00,#70,#f0,#f0,#f1,#00,#00
	db #f0,#e2,#70,#f0,#f0,#f1,#00,#32
	db #f1,#88,#70,#f0,#f0,#f0,#f0,#f0
	db #f0,#c4,#70,#f0,#f0,#f1,#00,#00
	db #00,#00,#30,#f0,#f0,#f0,#f0,#f0
	db #f0,#e0,#30,#f0,#f0,#f0,#f0,#f0
	db #f0,#c4,#30,#f0,#f0,#f0,#f0,#f0
	db #f0,#88,#32,#f0,#f0,#f0,#f0,#f0
	db #f0,#88,#10,#f0,#f0,#f0,#f0,#f0
	db #f0,#e2,#11,#f0,#f0,#f0,#f0,#f0
	db #f0,#e2,#00,#00,#00,#00,#30,#f0
	db #f0,#f0,#f0,#f0,#f0,#c4,#00,#00
	db #00,#00,#32,#f0,#f0,#e2,#00,#00
	db #f8,#e2,#30,#f0,#f0,#f1,#00,#32
	db #f0,#c4,#30,#f0,#f0,#f0,#f0,#f0
	db #f0,#88,#32,#f0,#f0,#f1,#00,#00
	db #00,#00,#11,#f0,#f0,#f0,#f0,#f0
	db #f0,#c4,#11,#f0,#f0,#f0,#f0,#f0
	db #f0,#c4,#11,#f0,#f0,#f0,#f0,#f0
	db #f0,#c4,#11,#f0,#f0,#f0,#f0,#f0
	db #f1,#00,#00,#f8,#f0,#f0,#f0,#f0
	db #f0,#e2,#00,#f8,#f0,#f0,#f0,#f0
	db #f0,#e2,#00,#00,#00,#00,#11,#f0
	db #f0,#f0,#f0,#f0,#f0,#c4,#00,#00
	db #00,#00,#11,#f0,#f0,#c4,#00,#00
	db #f8,#e2,#11,#f0,#f0,#f1,#00,#32
	db #f0,#c4,#11,#f0,#f0,#f0,#f0,#f0
	db #f1,#00,#11,#f0,#f0,#f1,#00,#00
	db #00,#00,#00,#f8,#f0,#f0,#f0,#f0
	db #f0,#88,#00,#da,#ff,#ff,#ff,#fe
	db #5a,#6a,#00,#da,#ff,#ff,#ff,#da
	db #5a,#4c,#00,#da,#ff,#ff,#ff,#ff
	db #ee,#00,#00,#56,#7f,#ff,#ff,#fe
	db #5a,#5b,#00,#56,#7f,#ff,#da,#7b
	db #da,#5b,#00,#00,#00,#00,#00,#da
	db #ff,#ff,#ff,#de,#5a,#6a,#00,#00
	db #00,#00,#00,#da,#ff,#88,#00,#00
	db #da,#6a,#00,#da,#ff,#ff,#00,#32
	db #5a,#6a,#00,#da,#ff,#ff,#ff,#ff
	db #ee,#00,#00,#ad,#ff,#ff,#00,#00
	db #00,#00,#00,#65,#f7,#ff,#ff,#ff
	db #ff,#00,#00,#75,#00,#00,#00,#11
	db #a5,#a6,#00,#75,#00,#00,#00,#65
	db #a5,#a6,#00,#75,#00,#00,#00,#00
	db #00,#00,#00,#23,#88,#00,#00,#11
	db #a5,#b5,#00,#23,#88,#00,#ad,#a6
	db #65,#b5,#00,#00,#00,#00,#00,#75
	db #00,#00,#00,#23,#a5,#a6,#00,#00
	db #00,#00,#00,#75,#00,#00,#00,#00
	db #ad,#a6,#00,#75,#00,#00,#00,#23
	db #a5,#a6,#00,#75,#00,#00,#00,#00
	db #00,#00,#00,#57,#00,#00,#00,#00
	db #00,#00,#00,#32,#88,#00,#00,#00
	db #00,#00,#00,#22,#00,#00,#00,#00
	db #da,#6a,#00,#22,#00,#00,#00,#32
	db #5a,#6a,#00,#22,#00,#00,#00,#00
	db #00,#00,#00,#11,#00,#00,#00,#11
	db #5a,#5b,#00,#11,#00,#00,#da,#6a
	db #56,#5b,#00,#00,#00,#00,#00,#22
	db #00,#00,#00,#32,#5a,#6a,#00,#00
	db #00,#00,#00,#22,#00,#00,#00,#00
	db #da,#6a,#00,#22,#00,#00,#00,#32
	db #5a,#6a,#00,#22,#00,#00,#00,#00
	db #00,#00,#00,#22,#00,#00,#00,#00
	db #00,#00,#00,#11,#00,#00,#00,#00
	db #00,#00,#00,#00,#32,#ff,#00,#00
	db #8f,#2e,#00,#00,#31,#ff,#00,#23
	db #0f,#2e,#00,#00,#31,#fc,#00,#00
	db #00,#00,#00,#00,#10,#ff,#80,#11
	db #0f,#1f,#00,#00,#10,#cc,#8f,#2e
	db #47,#1f,#00,#00,#00,#00,#00,#00
	db #31,#fe,#00,#23,#0f,#2e,#00,#00
	db #00,#00,#00,#00,#31,#88,#00,#00
	db #8f,#2e,#00,#00,#31,#fe,#00,#23
	db #0f,#2e,#00,#00,#00,#73,#fe,#80
	db #00,#00,#00,#00,#33,#ff,#00,#00
	db #00,#00,#00,#00,#10,#fe,#80,#00
	db #00,#00,#00,#00,#47,#1f,#00,#00
	db #8f,#2e,#00,#00,#47,#1f,#00,#23
	db #0f,#2e,#00,#00,#47,#1e,#00,#00
	db #00,#00,#00,#00,#23,#0f,#88,#11
	db #0f,#1f,#00,#00,#23,#4c,#8f,#2e
	db #47,#1f,#00,#00,#00,#00,#00,#00
	db #47,#1f,#00,#23,#0f,#2e,#00,#00
	db #00,#00,#00,#00,#47,#88,#00,#00
	db #8f,#2e,#00,#00,#47,#1f,#00,#23
	db #0f,#2e,#00,#00,#00,#8f,#0f,#88
	db #00,#00,#00,#00,#47,#1f,#00,#00
	db #00,#00,#00,#00,#23,#0f,#80,#00
	db #00,#00,#00,#00,#af,#bf,#00,#00
	db #af,#ae,#00,#00,#af,#bf,#00,#23
	db #af,#ae,#00,#00,#af,#be,#00,#00
	db #00,#00,#00,#00,#67,#af,#88,#11
	db #af,#bf,#00,#00,#67,#cc,#af,#ae
	db #67,#bf,#00,#00,#00,#00,#00,#00
	db #af,#bf,#00,#23,#af,#ae,#00,#00
	db #00,#00,#00,#00,#af,#88,#00,#00
	db #af,#ae,#00,#00,#af,#bf,#00,#23
	db #af,#ae,#00,#00,#11,#af,#af,#80
	db #00,#00,#00,#00,#df,#5f,#00,#00
	db #00,#00,#00,#00,#57,#5f,#80,#00
	db #00,#00,#00,#11,#5f,#5f,#00,#00
	db #df,#6e,#00,#11,#5f,#5f,#00,#33
	db #5f,#6e,#00,#11,#5f,#5f,#00,#00
	db #00,#00,#00,#00,#df,#5f,#88,#11
	db #5f,#5f,#00,#00,#df,#4c,#df,#6e
	db #57,#5f,#00,#00,#00,#00,#00,#11
	db #5f,#5f,#00,#33,#5f,#6e,#00,#00
	db #00,#00,#00,#11,#5f,#88,#00,#40
	db #df,#6e,#00,#11,#5f,#5f,#00,#33
	db #5f,#6e,#00,#00,#33,#5f,#5f,#88
	db #00,#00,#00,#10,#af,#bf,#00,#00
	db #00,#00,#00,#00,#af,#af,#88,#00
	db #00,#00,#00,#31,#ff,#ff,#00,#00
	db #ff,#ee,#00,#31,#ff,#ff,#00,#33
	db #ff,#ee,#00,#31,#ff,#ff,#00,#00
	db #00,#00,#00,#10,#ff,#ff,#88,#11
	db #ff,#ff,#00,#10,#ff,#cc,#ff,#ee
	db #77,#ff,#00,#00,#00,#00,#00,#31
	db #ff,#ff,#00,#33,#ff,#ee,#00,#00
	db #00,#00,#00,#31,#ff,#88,#00,#cc
	db #ff,#ee,#00,#31,#ff,#ff,#00,#33
	db #ff,#ee,#00,#00,#73,#ff,#ff,#88
	db #00,#00,#00,#31,#ff,#ff,#00,#00
	db #00,#00,#00,#10,#ff,#ff,#88,#00
	db #00,#00,#00,#33,#ff,#ff,#00,#00
	db #ff,#ee,#00,#33,#ff,#ff,#00,#33
	db #ff,#ee,#00,#33,#ff,#ff,#00,#00
	db #00,#00,#00,#11,#ff,#ff,#88,#11
	db #ff,#ff,#00,#11,#ff,#cc,#ff,#ee
	db #77,#ff,#00,#00,#00,#00,#00,#33
	db #ff,#ff
;
.music_info
	db "Tree Issue 1 - Part 4 (1999)(Brothers)(FG Brain)",0
	db "ST-Module",0

	read "music_end.asm"
