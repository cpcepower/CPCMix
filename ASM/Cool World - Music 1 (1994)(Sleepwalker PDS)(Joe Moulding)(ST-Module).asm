; Music of Cool World - Music 1 (1994)(Sleepwalker PDS)(Joe Moulding)(ST-Module)
; Ripped by Megachur the 03/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COOLWOM1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #997c

	read "music_header.asm"

	jr l9980
	jr l998f
.l9980
	call l99ab
	ld hl,l9dce
	ld de,l9998
	ld bc,#81ff
	jp #bcd7
.l998f
	ld hl,l9dce
	call #bcdd
	jp l9a17
.l9998
	push ix
	call l9a33
	pop ix
	ret
	jp l99ab
	jp l9a33
	jp l9a17
	db #66,#04
;
.init_music
.l99ab
;
	ld b,#03
	ld ix,l9d7a
	ld iy,l9ca6
	ld de,#001c
.l99b8
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
	djnz l99b8
	ld a,#06
	ld (l9a5b),a
	ld a,d
	ld (l9a6f),a
	inc a
	ld (l9a56),a
	ld a,#38
	ld (l9a60),a
	ld a,#ff
	ld (l9ca2),a
	ld (l9ca3),a
	ld (l9ca4),a
	ld (l9ca5),a
	ld a,#0c
	ld c,d
	call l9c84
	ld a,#0d
	ld c,d
	jp l9c84
;
.stop_music
.l9a17
;
	ld a,#07
	ld c,#3f
	call l9c84
	ld a,#08
	ld c,#00
	call l9c84
	ld a,#09
	ld c,#00
	call l9c84
	ld a,#0a
	ld c,#00
	jp l9c84
;
.play_music
.l9a33
;
	ld hl,l9a56
	dec (hl)
	ld ix,l9d7a
	ld bc,l9d88
	call l9ae9
	ld ix,l9d96
	ld bc,l9da4
	call l9ae9
	ld ix,l9db2
	ld bc,l9dc0
	call l9ae9
.l9a56 equ $ + 1
	ld a,#00
	or a
	jr nz,l9a5f
.l9a5b equ $ + 1
	ld a,#00
	ld (l9a56),a
.l9a60 equ $ + 1
.l9a5f
	ld a,#00
	ld hl,l9ca3
	cp (hl)
	jr z,l9a6e
	ld (hl),a
	ld c,a
	ld a,#07
	call l9c84
.l9a6f equ $ + 1
.l9a6e
	ld a,#00
	ld hl,l9ca2
	cp (hl)
	jr z,l9a7d
	ld (hl),a
	ld c,a
	ld a,#06
	call l9c84
.l9a7e equ $ + 1
.l9a7d
	ld a,#00
	ld hl,l9ca4
	cp (hl)
	jr z,l9a8c
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9c84
.l9a8d equ $ + 1
.l9a8c
	ld a,#00
	ld hl,l9ca5
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9c84
.l9a9a
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l9b9a
.l9aa9
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
	jp l9c84
.l9ac3
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l9ad8
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l9ad8
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9afc
.l9ae9
	ld a,(l9a56)
	or a
	jp nz,l9b9a
	dec (ix+#06)
	jp nz,l9b9a
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9afc
	ld a,(hl)
	or a
	jr z,l9a9a
	cp #fe
	jr z,l9aa9
	cp #ff
	jr z,l9ac3
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9cac
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l9b38
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l9b38
	and #7f
	ld (ix+#06),a
	jr l9b8b
.l9b38
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l9b4c
	ld (ix+#05),a
	ld (ix+#0a),d
.l9b4c
	add a
	add a
	add a
	ld e,a
	ld hl,l9de2
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
	jr z,l9b8b
	cp #f0
	jp z,l9c40
	cp #d0
	jp z,l9c5c
	cp #b0
	jp z,l9c64
	cp #80
	jp nc,l9c6c
	cp #10
	jr nz,l9b8b
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l9b8b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l9b9a
	ld a,(ix+#17)
	or a
	jr nz,l9bae
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9bae
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l9bd9
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9cac
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l9bd9
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
	call l9c84
	ld c,h
	ld a,(ix+#03)
	call l9c84
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9c17
	and #0f
	sub (ix+#0a)
	jr nc,l9c0d
	xor a
.l9c0d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9c84
.l9c17
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
	jr z,l9c34
	ld b,a
	ld a,c
	ld (l9a6f),a
	ld a,b
	sub #40
.l9c34
	ld (l9c3b),a
	ld a,(l9a60)
.l9c3b equ $ + 1
	bit 0,a
	ld (l9a60),a
	ret
.l9c40
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l9e62
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l9b8b
.l9c5c
	inc hl
	ld a,(hl)
	ld (l9a5b),a
	jp l9b8b
.l9c64
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l9b8b
.l9c6c
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9a8d),a
	inc hl
	ld a,(hl)
	ld (l9a7e),a
	jp l9b8b
.l9c84
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
.l9ca5 equ $ + 3
.l9ca4 equ $ + 2
.l9ca3 equ $ + 1
.l9ca2
	db #ff,#ff,#ff,#ff
.l9ca6
	dw la122,la176,la1ca
.l9cac
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
.l9d7a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l9d88 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9d96
	db #00,#00,#02,#03,#09,#00,#00,#00
.l9da4 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9db2 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l9dc0 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9dce
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l9de2 equ $ + 4
	db #75,#6c,#65,#2e,#7c,#98,#7c,#98
	db #7c,#98,#00,#00,#7c,#98,#7c,#98
	db #7c,#98,#00,#00,#82,#9e,#c2,#9e
	db #e2,#9e,#08,#18,#02,#9f,#42,#9f
	db #e2,#9e,#08,#18,#62,#9f,#a2,#9f
	db #e2,#9e,#00,#00,#c2,#9f,#02,#a0
	db #e2,#9e,#14,#00,#82,#9e,#22,#a0
	db #e2,#9e,#08,#00,#82,#9e,#42,#a0
	db #e2,#9e,#10,#10,#62,#9f,#62,#a0
	db #e2,#9e,#00,#00,#62,#9f,#82,#a0
	db #e2,#9e,#00,#00,#62,#9f,#a2,#a0
	db #c2,#a0,#00,#00,#94,#49,#d4,#49
	db #74,#48,#00,#00,#9e,#d6,#de,#d6
	db #fe,#d6,#00,#00,#e0,#fb,#20,#fc
	db #40,#fc,#00,#00,#dc,#1f,#fc,#20
	db #3c,#20,#08,#18,#77,#a6,#77,#a6
.l9e62 equ $ + 4
	db #77,#a6,#00,#00,#e2,#a0,#02,#a1
	db #34,#4a,#77,#a6,#77,#a6,#77,#a6
	db #77,#a6,#77,#a6,#77,#a6,#77,#a6
	db #77,#a6,#77,#a6,#77,#a6,#77,#a6
	db #77,#a6,#77,#a6,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#0b,#0b,#0b,#0a
	db #0a,#0a,#0b,#0b,#0b,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#0b,#0b
	db #0b,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#0b,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#0a,#0b,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#08
	db #08,#07,#07,#07,#07,#06,#06,#06
	db #05,#04,#02,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#8b,#89,#88,#88,#87
	db #87,#86,#85,#84,#83,#82,#81,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0d,#0e,#0f,#0e
	db #0d,#0c,#0b,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#00,#0f,#0d,#0b,#0a
	db #09,#08,#08,#07,#07,#06,#06,#05
	db #05,#05,#04,#04,#04,#03,#03,#03
	db #02,#02,#02,#02,#01,#01,#01,#01
	db #00,#00,#00,#00,#0f,#00,#00,#00
	db #00,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
.la122 equ $ + 4
	db #03,#07,#00,#03,#00,#46,#a2,#00
	db #1e,#a2,#00,#1e,#a2,#00,#49,#a2
	db #00,#49,#a2,#00,#6f,#a2,#00,#6f
	db #a2,#00,#a8,#a2,#00,#a8,#a2,#00
	db #6f,#a2,#00,#6f,#a2,#00,#98,#a2
	db #00,#98,#a2,#00,#6f,#a2,#00,#6f
	db #a2,#00,#a8,#a2,#00,#a8,#a2,#00
	db #98,#a2,#00,#98,#a2,#00,#1e,#a2
	db #00,#1e,#a2,#00,#1e,#a2,#00,#1e
	db #a2,#00,#1e,#a2,#00,#1e,#a2,#00
	db #49,#a2,#00,#49,#a2,#80,#37,#a1
.la176
	db #00,#27,#a3,#00,#ce,#a2,#00,#ce
	db #a2,#00,#80,#a3,#00,#80,#a3,#00
	db #8c,#a3,#00,#8c,#a3,#00,#8c,#a3
	db #00,#8c,#a3,#00,#8c,#a3,#00,#8c
	db #a3,#00,#16,#a4,#00,#16,#a4,#00
	db #8c,#a3,#00,#8c,#a3,#00,#8c,#a3
	db #00,#8c,#a3,#00,#16,#a4,#00,#16
	db #a4,#00,#ce,#a2,#00,#ce,#a2,#00
	db #ce,#a2,#00,#ce,#a2,#00,#ce,#a2
	db #00,#ce,#a2,#00,#80,#a3,#00,#80
.la1ca equ $ + 4
	db #a3,#80,#8b,#a1,#00,#4e,#a4,#00
	db #26,#a4,#00,#26,#a4,#00,#51,#a4
	db #00,#51,#a4,#00,#77,#a4,#00,#77
	db #a4,#00,#31,#a5,#00,#31,#a5,#00
	db #77,#a4,#00,#77,#a4,#00,#d7,#a4
	db #00,#d7,#a4,#00,#77,#a4,#00,#77
	db #a4,#00,#31,#a5,#00,#31,#a5,#00
	db #d7,#a4,#00,#d7,#a4,#00,#26,#a4
	db #00,#26,#a4,#00,#26,#a4,#00,#26
	db #a4,#00,#26,#a4,#00,#26,#a4,#00
	db #51,#a4,#00,#51,#a4,#80,#df,#a1
	db #4a,#02,#f3,#00,#48,#02,#03,#46
	db #82,#45,#82,#46,#86,#45,#82,#43
	db #84,#45,#84,#3e,#88,#45,#82,#43
	db #82,#41,#82,#45,#82,#43,#82,#41
	db #82,#45,#82,#43,#82,#3e,#90,#ff
	db #00,#40,#ff,#4a,#02,#03,#48,#82
	db #46,#82,#45,#82,#46,#86,#45,#82
	db #43,#84,#45,#84,#3e,#88,#45,#82
	db #43,#82,#41,#82,#45,#82,#43,#82
	db #41,#82,#45,#82,#43,#82,#3e,#90
	db #ff,#4a,#02,#03,#48,#82,#46,#82
	db #45,#82,#46,#86,#43,#86,#41,#84
	db #3c,#88,#43,#82,#41,#82,#3c,#82
	db #43,#82,#41,#82,#3c,#82,#43,#82
	db #41,#82,#be,#03,#39,#8f,#ff,#00
	db #40,#ff,#4a,#08,#02,#43,#88,#45
	db #88,#48,#88,#4a,#88,#43,#88,#45
	db #90,#ff,#4a,#02,#03,#48,#82,#46
	db #82,#45,#82,#46,#86,#43,#86,#41
	db #84,#3c,#88,#43,#82,#41,#82,#3c
	db #82,#43,#82,#41,#82,#3c,#82,#43
	db #82,#41,#82,#be,#03,#39,#8f,#ff
	db #37,#02,#f9,#00,#43,#04,#f5,#01
	db #43,#02,#05,#37,#02,#f9,#00,#43
	db #04,#f5,#01,#43,#02,#05,#37,#02
	db #f9,#00,#43,#04,#f5,#01,#43,#02
	db #05,#37,#02,#f9,#00,#43,#04,#f5
	db #01,#43,#02,#05,#32,#02,#f9,#00
	db #3e,#04,#f5,#01,#3e,#02,#05,#32
	db #02,#f9,#00,#3e,#04,#f5,#01,#3e
	db #02,#05,#32,#02,#f9,#00,#3e,#04
	db #f5,#01,#3e,#02,#05,#32,#02,#f9
	db #00,#3e,#04,#f5,#01,#3e,#02,#05
	db #ff,#37,#02,#f9,#00,#43,#04,#f5
	db #01,#43,#02,#05,#37,#02,#f9,#00
	db #43,#04,#f5,#01,#43,#02,#05,#3a
	db #02,#f9,#00,#46,#04,#f5,#01,#46
	db #02,#05,#3a,#02,#f9,#00,#46,#04
	db #f5,#01,#46,#02,#05,#35,#02,#f9
	db #00,#41,#04,#f5,#01,#41,#02,#05
	db #35,#02,#f9,#00,#41,#04,#f5,#01
	db #41,#02,#05,#32,#02,#f9,#00,#3e
	db #04,#f5,#01,#3e,#02,#05,#32,#02
	db #f9,#00,#3e,#04,#f5,#01,#3e,#02
	db #05,#ff,#2b,#10,#f2,#00,#2e,#10
	db #02,#29,#90,#26,#90,#ff,#ab,#09
	db #ab,#09,#ab,#09,#ab,#09,#ab,#09
	db #ab,#09,#ab,#09,#ab,#09,#ab,#09
	db #ab,#09,#ab,#09,#ab,#09,#ab,#09
	db #ab,#09,#ab,#09,#ab,#09,#a9,#09
	db #a9,#09,#a9,#09,#a9,#09,#a9,#09
	db #a9,#09,#a9,#09,#a9,#09,#a9,#09
	db #a9,#09,#a9,#09,#a9,#09,#a9,#09
	db #a9,#09,#a9,#09,#a9,#09,#b0,#09
	db #b0,#09,#b0,#09,#b0,#09,#b0,#09
	db #b0,#09,#b0,#09,#b0,#09,#b0,#09
	db #b0,#09,#b0,#09,#b0,#09,#b0,#09
	db #b0,#09,#b0,#09,#b0,#09,#a6,#09
	db #a6,#09,#a6,#09,#a6,#09,#a6,#09
	db #a6,#09,#a6,#09,#a6,#09,#a6,#09
	db #a6,#09,#a6,#09,#a6,#09,#a6,#09
	db #a6,#09,#a6,#09,#a6,#09,#ff,#00
	db #40,#ff,#43,#06,#04,#45,#ba,#ff
	db #4a,#08,#06,#43,#88,#45,#88,#48
	db #88,#4a,#88,#43,#88,#45,#90,#ff
	db #4a,#02,#f7,#00,#48,#02,#07,#46
	db #82,#45,#82,#46,#86,#45,#82,#43
	db #84,#45,#84,#3e,#88,#45,#82,#43
	db #82,#41,#82,#45,#82,#43,#82,#41
	db #82,#45,#82,#43,#82,#3e,#90,#ff
	db #00,#40,#ff,#4a,#02,#07,#48,#82
	db #46,#82,#45,#82,#46,#86,#45,#82
	db #43,#84,#45,#84,#3e,#88,#45,#82
	db #43,#82,#41,#82,#45,#82,#43,#82
	db #41,#82,#45,#82,#43,#82,#3e,#90
	db #ff,#b7,#0a,#b7,#0a,#b7,#0a,#b7
	db #0a,#43,#04,#f8,#01,#b7,#0a,#b7
	db #0a,#b7,#0a,#b7,#0a,#43,#04,#08
	db #b7,#0a,#b7,#0a,#b7,#0a,#b7,#0a
	db #41,#04,#08,#b7,#0a,#b7,#0a,#b7
	db #0a,#b7,#0a,#41,#04,#08,#b7,#0a
	db #b7,#0a,#b7,#0a,#b7,#0a,#48,#04
	db #08,#b7,#0a,#b7,#0a,#b7,#0a,#b7
	db #0a,#48,#04,#08,#b7,#0a,#b7,#0a
	db #b7,#0a,#b7,#0a,#4a,#04,#08,#b7
	db #0a,#b7,#0a,#b7,#0a,#b7,#0a,#4a
	db #04,#08,#ff,#00,#40,#ff,#00,#40
	db #ff,#b7,#0a,#b7,#0a,#b7,#0a,#b7
	db #0a,#43,#04,#f8,#01,#b7,#0a,#b7
	db #0a,#b7,#0a,#b7,#0a,#43,#04,#08
	db #b7,#0a,#b7,#0a,#b7,#0a,#b7,#0a
	db #41,#04,#08,#b7,#0a,#b7,#0a,#b7
	db #0a,#b7,#0a,#41,#04,#08,#b7,#0a
	db #b7,#0a,#b7,#0a,#b7,#0a,#3c,#04
	db #08,#b7,#0a,#b7,#0a,#b7,#0a,#b7
	db #0a,#3c,#04,#08,#b7,#0a,#b7,#0a
	db #b7,#0a,#b7,#0a,#3e,#04,#08,#b7
	db #0a,#b7,#0a,#b7,#0a,#b7,#0a,#3e
	db #04,#08,#ff,#1f,#10,#02,#1d,#90
	db #24,#90,#26,#90,#ff
;
.music_info
	db "Cool World - Music 1 (1994)(Sleepwalker PDS)(Joe Moulding)",0
	db "ST-Module",0

	read "music_end.asm"
