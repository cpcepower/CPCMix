; Music of Zap 't' Balls - The Advanced Edition Menu (1992)(Elmsoft Game-Service)(Beta Soft Cologne)(ST-Module)
; Ripped by Megachur the 14/10/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ZATBTAEM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #9c00

	read "music_header.asm"

	jp l9c0b
	jp l9c93
	jp l9c77
	db #66,#04
;
.init_music
.l9c0b
;
	ld b,#03
	ld ix,l9fda
	ld iy,l9f06
	ld de,#001c
.l9c18
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
	djnz l9c18
	ld a,#06
	ld (l9cbb),a
	ld a,d
	ld (l9ccf),a
	inc a
	ld (l9cb6),a
	ld a,#38
	ld (l9cc0),a
	ld a,#ff
	ld (l9f02),a
	ld (l9f03),a
	ld (l9f04),a
	ld (l9f05),a
	ld a,#0c
	ld c,d
	call l9ee4
	ld a,#0d
	ld c,d
	jp l9ee4
;
.stop_music
.l9c77
;
	ld a,#07
	ld c,#3f
	call l9ee4
	ld a,#08
	ld c,#00
	call l9ee4
	ld a,#09
	ld c,#00
	call l9ee4
	ld a,#0a
	ld c,#00
	jp l9ee4
;
.play_music
.l9c93
;
	ld hl,l9cb6
	dec (hl)
	ld ix,l9fda
	ld bc,l9fe8
	call l9d49
	ld ix,l9ff6
	ld bc,la004
	call l9d49
	ld ix,la012
	ld bc,la020
	call l9d49
.l9cb6 equ $ + 1
	ld a,#00
	or a
	jr nz,l9cbf
.l9cbb equ $ + 1
	ld a,#00
	ld (l9cb6),a
.l9cc0 equ $ + 1
.l9cbf
	ld a,#00
	ld hl,l9f03
	cp (hl)
	jr z,l9cce
	ld (hl),a
	ld c,a
	ld a,#07
	call l9ee4
.l9ccf equ $ + 1
.l9cce
	ld a,#00
	ld hl,l9f02
	cp (hl)
	jr z,l9cdd
	ld (hl),a
	ld c,a
	ld a,#06
	call l9ee4
.l9cde equ $ + 1
.l9cdd
	ld a,#00
	ld hl,l9f04
	cp (hl)
	jr z,l9cec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9ee4
.l9ced equ $ + 1
.l9cec
	ld a,#00
	ld hl,l9f05
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9ee4
.l9cfa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l9dfa
.l9d09
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
	jp l9ee4
.l9d23
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l9d38
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l9d38
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9d5c
.l9d49
	ld a,(l9cb6)
	or a
	jp nz,l9dfa
	dec (ix+#06)
	jp nz,l9dfa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9d5c
	ld a,(hl)
	or a
	jr z,l9cfa
	cp #fe
	jr z,l9d09
	cp #ff
	jr z,l9d23
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9f0c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l9d98
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l9d98
	and #7f
	ld (ix+#06),a
	jr l9deb
.l9d98
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l9dac
	ld (ix+#05),a
	ld (ix+#0a),d
.l9dac
	add a
	add a
	add a
	ld e,a
	ld hl,la042
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
	jr z,l9deb
	cp #f0
	jp z,l9ea0
	cp #d0
	jp z,l9ebc
	cp #b0
	jp z,l9ec4
	cp #80
	jp nc,l9ecc
	cp #10
	jr nz,l9deb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l9deb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l9dfa
	ld a,(ix+#17)
	or a
	jr nz,l9e0e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9e0e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l9e39
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9f0c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l9e39
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
	call l9ee4
	ld c,h
	ld a,(ix+#03)
	call l9ee4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9e77
	and #0f
	sub (ix+#0a)
	jr nc,l9e6d
	xor a
.l9e6d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9ee4
.l9e77
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
	jr z,l9e94
	ld b,a
	ld a,c
	ld (l9ccf),a
	ld a,b
	sub #40
.l9e94
	ld (l9e9b),a
	ld a,(l9cc0)
.l9e9b equ $ + 1
	bit 0,a
	ld (l9cc0),a
	ret
.l9ea0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,la0c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l9deb
.l9ebc
	inc hl
	ld a,(hl)
	ld (l9cbb),a
	jp l9deb
.l9ec4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l9deb
.l9ecc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9ced),a
	inc hl
	ld a,(hl)
	ld (l9cde),a
	jp l9deb
.l9ee4
;exx
;ld l,a
;exx
;ld a,c
;exx
;ld (hl),a
;exx
;ret	; modified by Megachur
	
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
		; modified by Megachur
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
.l9f05 equ $ + 3
.l9f04 equ $ + 2
.l9f03 equ $ + 1
.l9f02
	db #ff,#ff,#ff,#ff
.l9f06
	dw la442,la45d,la478
.l9f0c
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
.l9fda equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l9fe8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9ff6
	db #00,#00,#02,#03,#09,#00,#00,#00
.la004 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la012 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.la020 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.la042 equ $ + 4
	db #75,#6c,#65,#2e,#dc,#9a,#dc,#9a
	db #dc,#9a,#00,#00,#e2,#a0,#22,#a1
	db #42,#a1,#00,#00,#dc,#9a,#dc,#9a
	db #dc,#9a,#00,#00,#dc,#9a,#dc,#9a
	db #dc,#9a,#00,#00,#dc,#9a,#dc,#9a
	db #dc,#9a,#00,#00,#62,#a1,#a2,#a1
	db #c2,#a1,#11,#0f,#e2,#a1,#22,#a2
	db #c2,#a1,#14,#09,#e2,#a1,#42,#a2
	db #c2,#a1,#00,#00,#62,#a2,#a2,#a2
	db #c2,#a1,#00,#00,#c2,#a2,#02,#a3
	db #c2,#a1,#07,#18,#dc,#9a,#dc,#9a
	db #dc,#9a,#00,#00,#dc,#9a,#dc,#9a
	db #dc,#9a,#00,#00,#dc,#9a,#dc,#9a
	db #dc,#9a,#00,#00,#dc,#9a,#dc,#9a
	db #dc,#9a,#00,#00,#dc,#9a,#dc,#9a
	db #dc,#9a,#00,#00,#dc,#9a,#dc,#9a
.la0c2 equ $ + 4
	db #dc,#9a,#00,#00,#dc,#9a,#22,#a3
	db #42,#a3,#62,#a3,#dc,#9a,#dc,#9a
	db #82,#a3,#a2,#a3,#c2,#a3,#dc,#9a
	db #dc,#9a,#e2,#a3,#dc,#9a,#dc,#9a
	db #02,#a4,#22,#a4,#00,#00,#30,#00
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
.la442 equ $ + 4
	db #04,#07,#00,#04,#00,#93,#a4,#00
	db #07,#a5,#00,#b1,#a4,#00,#b1,#a4
	db #00,#f6,#a4,#00,#f6,#a4,#00,#b1
.la45d equ $ + 7
	db #a4,#00,#b1,#a4,#80,#42,#a4,#00
	db #25,#a5,#00,#25,#a5,#00,#67,#a5
	db #00,#67,#a5,#00,#67,#a5,#00,#67
	db #a5,#00,#67,#a5,#00,#67,#a5,#80
.la478 equ $ + 2
	db #5d,#a4,#00,#a9,#a5,#00,#a9,#a5
	db #00,#ed,#a5,#00,#ed,#a5,#00,#ed
	db #a5,#00,#ed,#a5,#00,#ed,#a5,#00
	db #ed,#a5,#80,#78,#a4,#49,#0c,#19
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
	db "Zap 't' Balls - The Advanced Edition Menu (1992)(Elmsoft Game-Service)(Beta Soft Cologne)",0
	db "ST-Module",0

	read "music_end.asm"
