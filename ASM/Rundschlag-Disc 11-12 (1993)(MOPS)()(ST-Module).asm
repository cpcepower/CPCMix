; Music of Rundschlag-Disc 11-12 (1993)(MOPS)()(ST-Module)
; Ripped by Megachur the 06/02/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RUND1112.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #6ba3

	read "music_header.asm"

	jr l6ba7
	jr l6bb6
.l6ba7
	call l6bd2
	ld hl,l6ff5
	ld de,l6bbf
	ld bc,#81ff
	jp #bcd7
.l6bb6
	ld hl,l6ff5
	call #bcdd
	jp l6c3e
.l6bbf
	push ix
	call l6c5a
	pop ix
	ret
	jp l6bd2
	jp l6c5a
	jp l6c3e
	ld h,(hl)
	inc b
;
.init_music
.l6bd2
;
	ld b,#03
	ld ix,l6fa1
	ld iy,l6ecd
	ld de,#001c
.l6bdf
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
	djnz l6bdf
	ld a,#06
	ld (l6c82),a
	ld a,d
	ld (l6c96),a
	inc a
	ld (l6c7d),a
	ld a,#38
	ld (l6c87),a
	ld a,#ff
	ld (l6ec9),a
	ld (l6eca),a
	ld (l6ecb),a
	ld (l6ecc),a
	ld a,#0c
	ld c,d
	call l6eab
	ld a,#0d
	ld c,d
	jp l6eab
;
.stop_music
.l6c3e
;
	ld a,#07
	ld c,#3f
	call l6eab
	ld a,#08
	ld c,#00
	call l6eab
	ld a,#09
	ld c,#00
	call l6eab
	ld a,#0a
	ld c,#00
	jp l6eab
;
.play_music
.l6c5a
;
	ld hl,l6c7d
	dec (hl)
	ld ix,l6fa1
	ld bc,l6faf
	call l6d10
	ld ix,l6fbd
	ld bc,l6fcb
	call l6d10
	ld ix,l6fd9
	ld bc,l6fe7
	call l6d10
.l6c7d equ $ + 1
	ld a,#00
	or a
	jr nz,l6c86
.l6c82 equ $ + 1
	ld a,#00
	ld (l6c7d),a
.l6c87 equ $ + 1
.l6c86
	ld a,#00
	ld hl,l6eca
	cp (hl)
	jr z,l6c95
	ld (hl),a
	ld c,a
	ld a,#07
	call l6eab
.l6c96 equ $ + 1
.l6c95
	ld a,#00
	ld hl,l6ec9
	cp (hl)
	jr z,l6ca4
	ld (hl),a
	ld c,a
	ld a,#06
	call l6eab
.l6ca5 equ $ + 1
.l6ca4
	ld a,#00
	ld hl,l6ecb
	cp (hl)
	jr z,l6cb3
	ld (hl),a
	ld c,a
	ld a,#0b
	call l6eab
.l6cb4 equ $ + 1
.l6cb3
	ld a,#00
	ld hl,l6ecc
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l6eab
.l6cc1
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l6dc1
.l6cd0
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
	jp l6eab
.l6cea
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l6cff
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l6cff
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l6d23
.l6d10
	ld a,(l6c7d)
	or a
	jp nz,l6dc1
	dec (ix+#06)
	jp nz,l6dc1
	ld l,(ix+#00)
	ld h,(ix+#01)
.l6d23
	ld a,(hl)
	or a
	jr z,l6cc1
	cp #fe
	jr z,l6cd0
	cp #ff
	jr z,l6cea
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l6ed3
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l6d5f
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l6d5f
	and #7f
	ld (ix+#06),a
	jr l6db2
.l6d5f
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l6d73
	ld (ix+#05),a
	ld (ix+#0a),d
.l6d73
	add a
	add a
	add a
	ld e,a
	ld hl,l7009
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
	jr z,l6db2
	cp #f0
	jp z,l6e67
	cp #d0
	jp z,l6e83
	cp #b0
	jp z,l6e8b
	cp #80
	jp nc,l6e93
	cp #10
	jr nz,l6db2
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l6db2
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l6dc1
	ld a,(ix+#17)
	or a
	jr nz,l6dd5
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l6dd5
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l6e00
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l6ed3
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l6e00
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
	call l6eab
	ld c,h
	ld a,(ix+#03)
	call l6eab
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6e3e
	and #0f
	sub (ix+#0a)
	jr nc,l6e34
	xor a
.l6e34
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l6eab
.l6e3e
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
	jr z,l6e5b
	ld b,a
	ld a,c
	ld (l6c96),a
	ld a,b
	sub #40
.l6e5b
	ld (l6e62),a
	ld a,(l6c87)
.l6e62 equ $ + 1
	bit 0,a
	ld (l6c87),a
	ret
.l6e67
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l7089
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l6db2
.l6e83
	inc hl
	ld a,(hl)
	ld (l6c82),a
	jp l6db2
.l6e8b
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l6db2
.l6e93
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l6cb4),a
	inc hl
	ld a,(hl)
	ld (l6ca5),a
	jp l6db2
.l6eab
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
.l6ecc equ $ + 3
.l6ecb equ $ + 2
.l6eca equ $ + 1
.l6ec9
	db #ff,#ff,#ff,#ff
.l6ecd
	dw l7329,l734a,l736b
.l6ed3
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
.l6fa1 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l6faf equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6fbd
	db #00,#00,#02,#03,#09,#00,#00,#00
.l6fcb equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6fd9 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l6fe7 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6ff5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l7009 equ $ + 4
	db #75,#6c,#65,#2e,#a9,#70,#e9,#70
	db #09,#71,#00,#00,#a9,#70,#29,#71
	db #09,#71,#00,#00,#49,#71,#89,#71
	db #a9,#71,#00,#00,#c9,#71,#09,#72
	db #29,#72,#00,#00,#49,#72,#89,#72
	db #09,#71,#00,#00,#a9,#70,#29,#71
	db #a9,#72,#00,#00,#a9,#70,#c9,#72
	db #09,#71,#00,#00,#a3,#6a,#a3,#6a
	db #a3,#6a,#00,#00,#a3,#6a,#a3,#6a
	db #a3,#6a,#00,#00,#a3,#6a,#a3,#6a
	db #a3,#6a,#00,#00,#a3,#6a,#a3,#6a
	db #a3,#6a,#00,#00,#a3,#6a,#a3,#6a
	db #a3,#6a,#00,#00,#a3,#6a,#a3,#6a
	db #a3,#6a,#00,#00,#a3,#6a,#a3,#6a
	db #a3,#6a,#00,#00,#a3,#6a,#a3,#6a
	db #a3,#6a,#00,#00,#a3,#6a,#a3,#6a
.l7089 equ $ + 4
	db #a3,#6a,#00,#00,#a3,#6a,#a3,#6a
	db #a3,#6a,#a3,#6a,#e9,#72,#09,#73
	db #a3,#6a,#a3,#6a,#a3,#6a,#a3,#6a
	db #a3,#6a,#a3,#6a,#a3,#6a,#a3,#6a
	db #a3,#6a,#a3,#6a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0e
	db #0e,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0c,#0b,#0a,#09,#09,#08,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#04,#06,#07,#09
	db #0c,#11,#17,#1d,#15,#10,#0c,#09
	db #06,#05,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#0b,#0b,#0b,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #0b,#0b,#0b,#0c,#0c,#0c,#0b,#0b
	db #0b,#0a,#0a,#0a,#0b,#0b,#0b,#0a
	db #08,#05,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0b,#0b,#0c
	db #0c,#0b,#0b,#0a,#0a,#0b,#0b,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#08
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #00,#00,#00,#00,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#0c,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7329 equ $ + 4
	db #00,#00,#00,#00,#00,#8c,#73,#00
	db #be,#75,#00,#8c,#73,#00,#cf,#73
	db #00,#8c,#73,#00,#cf,#73,#00,#36
	db #74,#00,#79,#74,#00,#7b,#75,#00
.l734a equ $ + 5
	db #fa,#74,#80,#29,#73,#00,#ab,#77
	db #00,#bf,#77,#00,#00,#76,#00,#7f
	db #76,#00,#00,#76,#00,#7f,#76,#00
	db #c2,#76,#00,#f3,#76,#00,#78,#77
.l736b equ $ + 6
	db #00,#46,#77,#80,#4a,#73,#00,#6f
	db #7a,#00,#de,#7a,#00,#d5,#77,#00
	db #49,#78,#00,#d5,#77,#00,#49,#78
	db #00,#bc,#78,#00,#2e,#79,#00,#06
	db #7a,#00,#9d,#79,#80,#6b,#73,#1f
	db #02,#11,#1f,#02,#01,#2b,#82,#1f
	db #82,#1f,#82,#1f,#82,#1d,#82,#1f
	db #82,#1f,#82,#1f,#82,#2b,#82,#1f
	db #82,#26,#82,#24,#82,#22,#82,#21
	db #82,#1d,#82,#1d,#82,#29,#82,#1d
	db #82,#1d,#82,#1d,#82,#1b,#82,#1d
	db #82,#1d,#82,#1d,#82,#29,#82,#1d
	db #82,#26,#82,#24,#82,#22,#82,#21
	db #82,#ff,#1b,#02,#81,#2d,#1b,#82
	db #27,#82,#1b,#82,#1b,#82,#1b,#82
	db #1a,#02,#81,#2f,#1b,#02,#81,#2d
	db #1b,#82,#1b,#82,#27,#82,#1b,#82
	db #26,#02,#81,#18,#24,#02,#81,#1b
	db #22,#02,#81,#1e,#21,#02,#81,#20
	db #22,#02,#81,#1e,#22,#82,#2e,#02
	db #81,#0f,#22,#02,#81,#1e,#21,#02
	db #81,#20,#21,#82,#2d,#02,#81,#10
	db #21,#02,#81,#20,#1f,#02,#81,#24
	db #1f,#82,#2b,#02,#81,#12,#1f,#02
	db #81,#24,#26,#02,#81,#30,#26,#82
	db #32,#02,#81,#18,#26,#02,#81,#30
	db #ff,#24,#02,#11,#24,#02,#01,#30
	db #82,#24,#82,#24,#82,#24,#82,#30
	db #82,#24,#82,#29,#82,#29,#82,#35
	db #82,#29,#82,#29,#82,#29,#82,#35
	db #82,#29,#82,#2c,#82,#2c,#82,#38
	db #82,#2c,#82,#2c,#82,#2c,#82,#38
	db #82,#2c,#82,#27,#82,#27,#82,#33
	db #82,#27,#82,#27,#82,#27,#82,#26
	db #82,#27,#82,#ff,#a4,#11,#a4,#01
	db #a4,#01,#a4,#01,#b0,#01,#a4,#01
	db #a4,#01,#a4,#01,#a4,#01,#a4,#01
	db #a4,#01,#a4,#01,#b0,#01,#a4,#01
	db #a4,#01,#a4,#01,#a9,#01,#a9,#01
	db #a9,#01,#a9,#01,#b5,#01,#a9,#01
	db #a9,#01,#a9,#01,#a9,#01,#a9,#01
	db #a9,#01,#a9,#01,#b5,#01,#a9,#01
	db #a9,#01,#a9,#01,#ac,#01,#ac,#01
	db #ac,#01,#ac,#01,#b8,#01,#ac,#01
	db #ac,#01,#ac,#01,#ac,#01,#ac,#01
	db #ac,#01,#ac,#01,#b8,#01,#ac,#01
	db #ac,#01,#ac,#01,#a7,#01,#a7,#01
	db #a7,#01,#a7,#01,#b3,#01,#a7,#01
	db #a7,#01,#a7,#01,#a7,#01,#a7,#01
	db #a7,#01,#a7,#01,#b3,#01,#a7,#01
	db #a7,#01,#a7,#01,#ff,#a2,#10,#a2
	db #00,#a2,#00,#a2,#00,#ae,#00,#a2
	db #00,#a2,#00,#a2,#00,#a2,#00,#a2
	db #00,#a2,#00,#a2,#00,#a1,#00,#a2
	db #00,#a2,#00,#a2,#00,#a2,#00,#a2
	db #00,#a2,#00,#a2,#00,#ae,#00,#a2
	db #00,#a2,#00,#a2,#00,#a2,#00,#a2
	db #00,#a2,#00,#a2,#00,#a1,#00,#a2
	db #00,#a2,#00,#a2,#00,#9d,#00,#9d
	db #00,#9d,#00,#9d,#00,#a9,#00,#9d
	db #00,#9d,#00,#9d,#00,#9d,#00,#9d
	db #00,#9d,#00,#9d,#00,#9b,#00,#9d
	db #00,#9d,#00,#9d,#00,#9d,#00,#9d
	db #00,#9d,#00,#9d,#00,#a9,#00,#9d
	db #00,#9d,#00,#9d,#00,#9d,#00,#9d
	db #00,#9d,#00,#9d,#00,#9b,#00,#9d
	db #00,#9d,#00,#9d,#00,#ff,#1d,#02
	db #10,#1d,#02,#00,#29,#82,#1d,#82
	db #1d,#82,#1d,#82,#1b,#82,#1d,#82
	db #1d,#82,#1d,#82,#29,#82,#1d,#82
	db #1d,#82,#1d,#82,#1b,#82,#1d,#82
	db #20,#82,#20,#82,#2c,#82,#20,#82
	db #20,#82,#20,#82,#1f,#82,#20,#82
	db #20,#82,#20,#82,#2c,#82,#20,#82
	db #20,#82,#20,#82,#1f,#82,#20,#82
	db #ff,#1b,#02,#01,#1b,#82,#27,#82
	db #1b,#82,#1b,#82,#1b,#82,#1a,#82
	db #1b,#82,#1b,#82,#1b,#82,#27,#82
	db #1b,#82,#26,#82,#24,#82,#22,#82
	db #21,#82,#22,#82,#22,#82,#2e,#82
	db #22,#82,#21,#82,#21,#82,#2d,#82
	db #21,#82,#1f,#82,#1f,#82,#2b,#82
	db #1f,#82,#1a,#82,#1a,#82,#26,#82
	db #1a,#82,#ff,#43,#02,#84,#12,#3e
	db #02,#81,#18,#43,#02,#81,#12,#46
	db #02,#81,#0f,#4a,#02,#81,#0c,#46
	db #02,#81,#0f,#43,#02,#81,#12,#3e
	db #02,#81,#18,#43,#02,#81,#12,#3e
	db #02,#81,#18,#43,#02,#81,#12,#46
	db #02,#81,#0f,#4a,#02,#81,#0c,#48
	db #02,#81,#0d,#46,#02,#81,#0f,#45
	db #02,#81,#10,#45,#82,#3e,#02,#81
	db #18,#41,#02,#81,#14,#45,#02,#81
	db #10,#4a,#02,#81,#0c,#45,#02,#81
	db #10,#41,#02,#81,#14,#3e,#02,#81
	db #18,#45,#02,#81,#10,#3e,#02,#81
	db #18,#41,#02,#81,#14,#45,#02,#81
	db #10,#4a,#02,#81,#0c,#48,#02,#81
	db #0d,#46,#02,#81,#0f,#45,#02,#81
	db #10,#ff,#43,#02,#f6,#04,#3c,#82
	db #3f,#82,#43,#82,#48,#82,#46,#82
	db #45,#82,#43,#82,#46,#82,#3f,#82
	db #43,#82,#46,#82,#4a,#82,#48,#82
	db #46,#82,#48,#82,#4a,#82,#4b,#82
	db #4a,#82,#4b,#82,#4a,#82,#4b,#82
	db #4a,#82,#4b,#82,#4a,#82,#4b,#82
	db #4a,#82,#4b,#82,#4a,#82,#48,#82
	db #46,#82,#45,#82,#ff,#43,#06,#84
	db #12,#3c,#06,#84,#1b,#3e,#02,#84
	db #18,#3f,#02,#84,#16,#41,#06,#84
	db #14,#44,#06,#84,#11,#41,#04,#84
	db #14,#44,#02,#84,#11,#44,#84,#44
	db #86,#43,#02,#84,#12,#41,#02,#84
	db #14,#43,#10,#84,#12,#ff,#43,#06
	db #84,#12,#3c,#06,#84,#1b,#3e,#02
	db #84,#18,#3f,#02,#84,#16,#41,#06
	db #84,#14,#44,#06,#84,#11,#48,#04
	db #84,#0d,#48,#82,#49,#82,#48,#82
	db #49,#82,#48,#82,#46,#02,#84,#0f
	db #44,#02,#84,#11,#48,#02,#84,#0d
	db #4a,#02,#84,#0c,#4b,#02,#84,#0b
	db #4a,#02,#84,#0c,#4b,#02,#84,#0b
	db #48,#02,#84,#0d,#46,#02,#84,#0f
	db #44,#02,#84,#11,#43,#02,#84,#12
	db #ff,#3a,#04,#01,#35,#84,#41,#8c
	db #b5,#01,#ba,#01,#41,#82,#b5,#01
	db #ba,#01,#41,#82,#b5,#01,#ba,#01
	db #41,#82,#3c,#84,#35,#84,#41,#8c
	db #b5,#01,#bc,#01,#41,#82,#b5,#01
	db #bc,#01,#41,#82,#b5,#01,#bc,#01
	db #41,#82,#ff,#35,#04,#11,#30,#04
	db #01,#3c,#8c,#b0,#01,#b5,#01,#3c
	db #82,#b0,#01,#b5,#01,#3c,#82,#b0
	db #01,#b5,#01,#3c,#82,#38,#84,#33
	db #84,#3f,#8c,#b3,#01,#b8,#01,#3f
	db #82,#b3,#01,#b8,#01,#3f,#82,#b3
	db #01,#b8,#01,#3f,#82,#ff,#37,#04
	db #f1,#05,#32,#04,#01,#37,#90,#3e
	db #88,#39,#84,#32,#84,#39,#90,#3e
	db #88,#ff,#37,#04,#f1,#05,#30,#04
	db #01,#37,#90,#3f,#88,#3e,#88,#3f
	db #88,#3e,#8c,#3a,#82,#39,#82,#ff
	db #ae,#13,#b7,#00,#37,#02,#05,#3e
	db #02,#02,#b5,#05,#b7,#00,#ae,#03
	db #b7,#00,#37,#02,#05,#3e,#02,#02
	db #b5,#05,#b7,#00,#ae,#03,#b7,#00
	db #37,#02,#05,#3e,#02,#02,#b5,#05
	db #b7,#00,#ae,#03,#be,#00,#bc,#05
	db #bc,#00,#be,#02,#ba,#00,#39,#02
	db #05,#ae,#03,#b5,#00,#35,#02,#05
	db #3e,#02,#02,#b3,#05,#b5,#00,#ae
	db #03,#b5,#00,#35,#02,#05,#3e,#02
	db #02,#b3,#05,#b5,#00,#ae,#03,#b5
	db #00,#35,#02,#05,#3e,#02,#02,#b3
	db #05,#b5,#00,#ae,#03,#be,#00,#bc
	db #05,#bc,#00,#be,#02,#be,#02,#b9
	db #05,#be,#02,#ff,#ae,#13,#b3,#00
	db #33,#02,#05,#3e,#02,#02,#b2,#05
	db #b3,#00,#ae,#03,#b3,#00,#33,#02
	db #05,#3e,#02,#02,#b2,#05,#b3,#00
	db #ae,#03,#b3,#00,#33,#02,#05,#3e
	db #02,#02,#b2,#05,#b3,#00,#ae,#03
	db #b2,#00,#b0,#05,#b0,#00,#be,#02
	db #ae,#00,#ad,#05,#ad,#00,#ae,#03
	db #ba,#00,#3a,#02,#05,#3e,#02,#02
	db #ba,#05,#ba,#00,#ae,#03,#b9,#00
	db #39,#02,#05,#3e,#02,#02,#b9,#05
	db #b9,#00,#ae,#03,#b7,#00,#37,#02
	db #05,#3e,#02,#02,#b7,#05,#b7,#00
	db #ae,#03,#b2,#00,#32,#02,#05,#3e
	db #02,#02,#b2,#05,#be,#02,#ff,#30
	db #02,#13,#30,#02,#f1,#04,#43,#02
	db #12,#30,#02,#f1,#04,#30,#02,#13
	db #30,#02,#f1,#04,#43,#02,#12,#30
	db #02,#f1,#04,#30,#02,#13,#35,#02
	db #f1,#04,#43,#02,#12,#35,#02,#f1
	db #04,#30,#02,#13,#35,#02,#f1,#04
	db #43,#02,#12,#35,#02,#f1,#04,#30
	db #02,#13,#38,#02,#f1,#04,#43,#02
	db #12,#38,#02,#f1,#04,#30,#02,#13
	db #38,#02,#f1,#04,#43,#02,#12,#38
	db #02,#f1,#04,#30,#02,#13,#33,#02
	db #f1,#04,#43,#02,#12,#33,#02,#f1
	db #04,#b0,#13,#c3,#12,#33,#02,#f1
	db #04,#32,#82,#b3,#f1,#04,#c3,#12
	db #ff,#2e,#02,#13,#30,#02,#f1,#04
	db #43,#02,#12,#30,#02,#f1,#04,#2e
	db #02,#13,#30,#02,#f1,#04,#43,#02
	db #12,#30,#02,#f1,#04,#2e,#02,#13
	db #35,#02,#f1,#04,#43,#02,#12,#35
	db #02,#f1,#04,#2e,#02,#13,#35,#02
	db #f1,#04,#43,#02,#12,#35,#02,#f1
	db #04,#2e,#02,#13,#38,#02,#f1,#04
	db #43,#02,#12,#38,#02,#f1,#04,#2e
	db #02,#13,#38,#02,#f1,#04,#43,#02
	db #12,#38,#02,#f1,#04,#2e,#02,#13
	db #33,#02,#f1,#04,#43,#02,#12,#33
	db #02,#f1,#04,#ae,#13,#c3,#12,#43
	db #82,#43,#82,#c3,#12,#c3,#12,#ff
	db #ae,#13,#ae,#01,#2e,#82,#43,#02
	db #02,#ae,#01,#ae,#01,#ae,#03,#ae
	db #01,#2e,#82,#43,#02,#02,#ae,#01
	db #ae,#01,#ae,#03,#ae,#01,#2e,#82
	db #43,#02,#02,#ae,#01,#ae,#01,#ae
	db #03,#ae,#01,#2e,#82,#43,#02,#02
	db #ae,#01,#c3,#02,#ae,#03,#a9,#01
	db #29,#82,#43,#02,#02,#a9,#01,#a9
	db #01,#ae,#03,#a9,#01,#29,#82,#43
	db #02,#02,#a9,#01,#a9,#01,#ae,#03
	db #a9,#01,#29,#82,#43,#02,#02,#a9
	db #01,#a9,#01,#ae,#03,#a9,#01,#29
	db #82,#43,#02,#02,#a9,#01,#c3,#02
	db #ff,#ae,#13,#a9,#01,#29,#82,#43
	db #02,#02,#a9,#01,#a9,#01,#ae,#03
	db #a9,#01,#29,#82,#43,#02,#02,#a9
	db #01,#a9,#01,#ae,#03,#a9,#01,#29
	db #82,#43,#02,#02,#a9,#01,#a9,#01
	db #ae,#03,#a9,#01,#29,#82,#43,#02
	db #02,#a9,#01,#a9,#01,#ae,#03,#ac
	db #01,#2c,#82,#43,#02,#02,#ac,#01
	db #ac,#01,#ae,#03,#ac,#01,#2c,#82
	db #43,#02,#02,#ac,#01,#ac,#01,#ae
	db #03,#ac,#01,#2c,#82,#43,#02,#02
	db #ac,#01,#ac,#01,#ae,#03,#ac,#01
	db #2c,#82,#43,#02,#02,#ac,#01,#c3
	db #02,#ff,#ae,#13,#ab,#01,#2b,#82
	db #43,#02,#02,#ab,#01,#ab,#01,#ae
	db #03,#ab,#01,#2b,#82,#43,#02,#02
	db #ab,#01,#ab,#01,#ae,#03,#ab,#01
	db #2b,#82,#43,#02,#02,#ab,#01,#ab
	db #01,#ae,#03,#b2,#01,#b0,#01,#b0
	db #01,#c3,#02,#ae,#01,#ad,#01,#ad
	db #01,#ae,#03,#a9,#01,#29,#82,#43
	db #02,#02,#a9,#01,#a9,#01,#ae,#03
	db #a9,#01,#29,#82,#43,#02,#02,#a9
	db #01,#a9,#01,#ae,#03,#a9,#01,#29
	db #82,#43,#02,#02,#a9,#01,#a9,#01
	db #ae,#03,#b2,#01,#b0,#01,#b0,#01
	db #c3,#02,#ae,#01,#ad,#01,#ad,#01
	db #ff,#ae,#13,#a7,#01,#27,#82,#43
	db #02,#02,#a7,#01,#a7,#01,#ae,#03
	db #a7,#01,#27,#82,#43,#02,#02,#a7
	db #01,#a7,#01,#ae,#03,#a7,#01,#27
	db #82,#43,#02,#02,#a7,#01,#a7,#01
	db #ae,#03,#a6,#01,#a4,#01,#a4,#01
	db #c3,#02,#a2,#01,#a1,#01,#a1,#01
	db #ae,#03,#a2,#01,#ae,#01,#a2,#01
	db #c3,#02,#a2,#01,#a2,#01,#a1,#01
	db #ae,#03,#a1,#01,#ad,#01,#a1,#01
	db #c3,#02,#a1,#01,#a1,#01,#9f,#01
	db #ae,#03,#9f,#01,#ab,#01,#9f,#01
	db #c3,#02,#9f,#01,#9f,#01,#a6,#01
	db #ae,#03,#a6,#01,#b2,#01,#a6,#01
	db #c3,#02,#c3,#02,#a6,#01,#c3,#02
	db #ff
;
.music_info
	db "Rundschlag-Disc 11-12 (1993)(MOPS)()",0
	db "ST-Module",0

	read "music_end.asm"