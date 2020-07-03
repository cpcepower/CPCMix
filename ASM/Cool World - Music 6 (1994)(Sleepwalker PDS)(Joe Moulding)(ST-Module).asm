; Music of Cool World - Music 6 (1994)(Sleepwalker PDS)(Joe Moulding)(ST-Module)
; Ripped by Megachur the 03/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COOLWOM6.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9c9e

	read "music_header.asm"

	jr l9ca2
	jr l9cb1
.l9ca2
	call l9ccd
	ld hl,la0f0
	ld de,l9cba
	ld bc,#81ff
	jp #bcd7
.l9cb1
	ld hl,la0f0
	call #bcdd
	jp l9d39
.l9cba
	push ix
	call l9d55
	pop ix
	ret
	jp l9ccd
	jp l9d55
	jp l9d39
	db #66,#04
;
.init_music
.l9ccd
;
	ld b,#03
	ld ix,la09c
	ld iy,l9fc8
	ld de,#001c
.l9cda
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
	djnz l9cda
	ld a,#06
	ld (l9d7d),a
	ld a,d
	ld (l9d91),a
	inc a
	ld (l9d78),a
	ld a,#38
	ld (l9d82),a
	ld a,#ff
	ld (l9fc4),a
	ld (l9fc5),a
	ld (l9fc6),a
	ld (l9fc7),a
	ld a,#0c
	ld c,d
	call l9fa6
	ld a,#0d
	ld c,d
	jp l9fa6
;
.stop_music
.l9d39
;
	ld a,#07
	ld c,#3f
	call l9fa6
	ld a,#08
	ld c,#00
	call l9fa6
	ld a,#09
	ld c,#00
	call l9fa6
	ld a,#0a
	ld c,#00
	jp l9fa6
;
.play_music
.l9d55
;
	ld hl,l9d78
	dec (hl)
	ld ix,la09c
	ld bc,la0aa
	call l9e0b
	ld ix,la0b8
	ld bc,la0c6
	call l9e0b
	ld ix,la0d4
	ld bc,la0e2
	call l9e0b
.l9d78 equ $ + 1
	ld a,#00
	or a
	jr nz,l9d81
.l9d7d equ $ + 1
	ld a,#00
	ld (l9d78),a
.l9d82 equ $ + 1
.l9d81
	ld a,#00
	ld hl,l9fc5
	cp (hl)
	jr z,l9d90
	ld (hl),a
	ld c,a
	ld a,#07
	call l9fa6
.l9d91 equ $ + 1
.l9d90
	ld a,#00
	ld hl,l9fc4
	cp (hl)
	jr z,l9d9f
	ld (hl),a
	ld c,a
	ld a,#06
	call l9fa6
.l9da0 equ $ + 1
.l9d9f
	ld a,#00
	ld hl,l9fc6
	cp (hl)
	jr z,l9dae
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9fa6
.l9daf equ $ + 1
.l9dae
	ld a,#00
	ld hl,l9fc7
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9fa6
.l9dbc
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l9ebc
.l9dcb
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
	jp l9fa6
.l9de5
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l9dfa
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l9dfa
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9e1e
.l9e0b
	ld a,(l9d78)
	or a
	jp nz,l9ebc
	dec (ix+#06)
	jp nz,l9ebc
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9e1e
	ld a,(hl)
	or a
	jr z,l9dbc
	cp #fe
	jr z,l9dcb
	cp #ff
	jr z,l9de5
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9fce
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l9e5a
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l9e5a
	and #7f
	ld (ix+#06),a
	jr l9ead
.l9e5a
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l9e6e
	ld (ix+#05),a
	ld (ix+#0a),d
.l9e6e
	add a
	add a
	add a
	ld e,a
	ld hl,la104
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
	jr z,l9ead
	cp #f0
	jp z,l9f62
	cp #d0
	jp z,l9f7e
	cp #b0
	jp z,l9f86
	cp #80
	jp nc,l9f8e
	cp #10
	jr nz,l9ead
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l9ead
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l9ebc
	ld a,(ix+#17)
	or a
	jr nz,l9ed0
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9ed0
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l9efb
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9fce
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l9efb
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
	call l9fa6
	ld c,h
	ld a,(ix+#03)
	call l9fa6
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9f39
	and #0f
	sub (ix+#0a)
	jr nc,l9f2f
	xor a
.l9f2f
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9fa6
.l9f39
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
	jr z,l9f56
	ld b,a
	ld a,c
	ld (l9d91),a
	ld a,b
	sub #40
.l9f56
	ld (l9f5d),a
	ld a,(l9d82)
.l9f5d equ $ + 1
	bit 0,a
	ld (l9d82),a
	ret
.l9f62
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,la184
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l9ead
.l9f7e
	inc hl
	ld a,(hl)
	ld (l9d7d),a
	jp l9ead
.l9f86
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l9ead
.l9f8e
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9daf),a
	inc hl
	ld a,(hl)
	ld (l9da0),a
	jp l9ead
.l9fa6
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
.l9fc7 equ $ + 3
.l9fc6 equ $ + 2
.l9fc5 equ $ + 1
.l9fc4
	db #ff,#ff,#ff,#ff
.l9fc8
	dw la3a4,la3bf,la3da
.l9fce
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
.la09c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.la0aa equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0b8
	db #00,#00,#02,#03,#09,#00,#00,#00
.la0c6 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0d4 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.la0e2 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0f0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.la104 equ $ + 4
	db #75,#6c,#65,#2e,#9e,#9b,#9e,#9b
	db #9e,#9b,#00,#00,#9e,#9b,#9e,#9b
	db #9e,#9b,#00,#00,#9e,#9b,#9e,#9b
	db #9e,#9b,#00,#00,#9e,#9b,#9e,#9b
	db #9e,#9b,#00,#00,#a4,#a1,#e4,#a1
	db #04,#a2,#00,#00,#24,#a2,#64,#a2
	db #04,#a2,#14,#00,#9e,#9b,#9e,#9b
	db #9e,#9b,#00,#00,#9e,#9b,#9e,#9b
	db #9e,#9b,#00,#00,#9e,#9b,#9e,#9b
	db #9e,#9b,#00,#00,#9e,#9b,#83,#7b
	db #63,#7a,#00,#00,#a4,#a1,#84,#a2
	db #a4,#a2,#00,#00,#c4,#a2,#04,#a3
	db #04,#a2,#00,#00,#24,#a3,#64,#a3
	db #84,#a3,#00,#00,#fd,#72,#fd,#72
	db #fd,#72,#00,#00,#fd,#72,#fd,#72
	db #fd,#72,#00,#00,#fd,#72,#fd,#72
.la184 equ $ + 4
	db #fd,#72,#00,#00,#fd,#72,#fd,#72
	db #fd,#72,#fd,#72,#fd,#72,#fd,#72
	db #fd,#72,#fd,#72,#fd,#72,#fd,#72
	db #fd,#72,#fd,#72,#fd,#72,#fd,#72
	db #fd,#72,#fd,#72,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0d,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#09,#08
	db #08,#08,#07,#07,#07,#06,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0b,#0a,#0a,#09,#09,#08,#07
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#0e,#0f,#0f,#0f
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#00,#00,#40,#00
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
.la3a4 equ $ + 4
	db #80,#80,#80,#80,#00,#3f,#a4,#00
	db #42,#a4,#00,#45,#a4,#00,#45,#a4
	db #00,#45,#a4,#00,#45,#a4,#00,#f5
.la3bf equ $ + 7
	db #a3,#00,#45,#a4,#80,#b9,#a3,#00
	db #77,#a4,#00,#7a,#a4,#00,#93,#a4
	db #00,#93,#a4,#00,#bb,#a4,#00,#bb
	db #a4,#00,#6d,#a4,#00,#bb,#a4,#80
.la3da equ $ + 2
	db #d4,#a3,#00,#f1,#a4,#00,#f1,#a4
	db #00,#f1,#a4,#00,#f1,#a4,#00,#f1
	db #a4,#00,#f1,#a4,#00,#f1,#a4,#00
	db #f1,#a4,#80,#ef,#a3,#1f,#02,#0b
	db #1f,#82,#1f,#82,#9f,#0b,#1f,#82
	db #9f,#0b,#1f,#82,#1a,#83,#9a,#0b
	db #1f,#82,#1f,#82,#1f,#82,#9f,#0b
	db #1f,#82,#9f,#0b,#1f,#82,#1a,#83
	db #9a,#0b,#1f,#82,#1f,#82,#1f,#82
	db #9f,#0b,#1f,#82,#9f,#0b,#1f,#82
	db #1a,#83,#9a,#0b,#1f,#82,#1f,#82
	db #1f,#82,#9f,#0b,#1f,#82,#9f,#0b
	db #1f,#82,#1a,#83,#9a,#0b,#ff,#00
	db #40,#ff,#00,#40,#ff,#4a,#04,#05
	db #4a,#82,#4a,#82,#4b,#82,#4a,#82
	db #4b,#82,#4a,#86,#46,#8c,#c8,#05
	db #c6,#05,#c8,#05,#c6,#05,#c8,#05
	db #c6,#05,#c8,#05,#c6,#05,#45,#84
	db #46,#82,#4a,#92,#ff,#4f,#10,#0c
	db #4f,#90,#4f,#90,#4f,#90,#ff,#00
	db #40,#ff,#ab,#04,#a6,#04,#2b,#8e
	db #ab,#04,#a6,#04,#2b,#8e,#ab,#04
	db #a6,#04,#2b,#8e,#ab,#04,#a6,#04
	db #2b,#8e,#ff,#32,#04,#04,#32,#82
	db #32,#82,#33,#82,#32,#82,#33,#82
	db #32,#86,#2e,#8c,#b0,#04,#ae,#04
	db #b0,#04,#ae,#04,#b0,#04,#ae,#04
	db #b0,#04,#ae,#04,#2d,#84,#2e,#82
	db #32,#92,#ff,#2b,#04,#0b,#2e,#82
	db #2b,#82,#26,#82,#2b,#82,#26,#82
	db #2b,#84,#2e,#82,#2b,#82,#26,#82
	db #2b,#82,#26,#82,#2b,#82,#26,#82
	db #24,#84,#29,#82,#29,#82,#24,#82
	db #29,#82,#24,#82,#26,#84,#29,#82
	db #26,#82,#2e,#82,#2d,#84,#2b,#84
	db #ff,#4f,#02,#0a,#4f,#82,#4f,#82
	db #cf,#0a,#4f,#82,#cf,#0a,#4f,#82
	db #4f,#82,#4a,#82,#4f,#82,#4f,#82
	db #4f,#82,#cf,#0a,#4f,#82,#cf,#0a
	db #4f,#82,#4f,#82,#4a,#82,#4f,#82
	db #4f,#82,#4f,#82,#cf,#0a,#4f,#82
	db #cf,#0a,#4f,#82,#4f,#82,#4a,#82
	db #4f,#82,#4f,#82,#4f,#82,#cf,#0a
	db #4f,#82,#cf,#0a,#4f,#82,#4f,#82
	db #4a,#82,#ff
;
.music_info
	db "Cool World - Music 6 (1994)(Sleepwalker PDS)(Joe Moulding)",0
	db "ST-Module",0

	read "music_end.asm"
