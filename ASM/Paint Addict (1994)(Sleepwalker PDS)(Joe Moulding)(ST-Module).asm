; Music of Paint Addict (1994)(Sleepwalker PDS)(Joe Moulding)(ST-Module)
; Ripped by Megachur the 03/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "PAINTADD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #99c1

	read "music_header.asm"

	jr l99c5
	jr l99d4
.l99c5
	call l99f0
	ld hl,l9e13
	ld de,l99dd
	ld bc,#81ff
	jp #bcd7
.l99d4
	ld hl,l9e13
	call #bcdd
	jp l9a5c
.l99dd
	push ix
	call l9a78
	pop ix
	ret
	jp l99f0
	jp l9a78
	jp l9a5c
	db #66,#04
;
.init_music
.l99f0
;
	ld b,#03
	ld ix,l9dbf
	ld iy,l9ceb
	ld de,#001c
.l99fd
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
	djnz l99fd
	ld a,#06
	ld (l9aa0),a
	ld a,d
	ld (l9ab4),a
	inc a
	ld (l9a9b),a
	ld a,#38
	ld (l9aa5),a
	ld a,#ff
	ld (l9ce7),a
	ld (l9ce8),a
	ld (l9ce9),a
	ld (l9cea),a
	ld a,#0c
	ld c,d
	call l9cc9
	ld a,#0d
	ld c,d
	jp l9cc9
;
.stop_music
.l9a5c
;
	ld a,#07
	ld c,#3f
	call l9cc9
	ld a,#08
	ld c,#00
	call l9cc9
	ld a,#09
	ld c,#00
	call l9cc9
	ld a,#0a
	ld c,#00
	jp l9cc9
;
.play_music
.l9a78
;
	ld hl,l9a9b
	dec (hl)
	ld ix,l9dbf
	ld bc,l9dcd
	call l9b2e
	ld ix,l9ddb
	ld bc,l9de9
	call l9b2e
	ld ix,l9df7
	ld bc,l9e05
	call l9b2e
.l9a9b equ $ + 1
	ld a,#00
	or a
	jr nz,l9aa4
.l9aa0 equ $ + 1
	ld a,#00
	ld (l9a9b),a
.l9aa5 equ $ + 1
.l9aa4
	ld a,#00
	ld hl,l9ce8
	cp (hl)
	jr z,l9ab3
	ld (hl),a
	ld c,a
	ld a,#07
	call l9cc9
.l9ab4 equ $ + 1
.l9ab3
	ld a,#00
	ld hl,l9ce7
	cp (hl)
	jr z,l9ac2
	ld (hl),a
	ld c,a
	ld a,#06
	call l9cc9
.l9ac3 equ $ + 1
.l9ac2
	ld a,#00
	ld hl,l9ce9
	cp (hl)
	jr z,l9ad1
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9cc9
.l9ad2 equ $ + 1
.l9ad1
	ld a,#00
	ld hl,l9cea
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9cc9
.l9adf
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l9bdf
.l9aee
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
	jp l9cc9
.l9b08
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l9b1d
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l9b1d
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9b41
.l9b2e
	ld a,(l9a9b)
	or a
	jp nz,l9bdf
	dec (ix+#06)
	jp nz,l9bdf
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9b41
	ld a,(hl)
	or a
	jr z,l9adf
	cp #fe
	jr z,l9aee
	cp #ff
	jr z,l9b08
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9cf1
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l9b7d
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l9b7d
	and #7f
	ld (ix+#06),a
	jr l9bd0
.l9b7d
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l9b91
	ld (ix+#05),a
	ld (ix+#0a),d
.l9b91
	add a
	add a
	add a
	ld e,a
	ld hl,l9e27
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
	jr z,l9bd0
	cp #f0
	jp z,l9c85
	cp #d0
	jp z,l9ca1
	cp #b0
	jp z,l9ca9
	cp #80
	jp nc,l9cb1
	cp #10
	jr nz,l9bd0
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l9bd0
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l9bdf
	ld a,(ix+#17)
	or a
	jr nz,l9bf3
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9bf3
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l9c1e
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9cf1
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l9c1e
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
	call l9cc9
	ld c,h
	ld a,(ix+#03)
	call l9cc9
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9c5c
	and #0f
	sub (ix+#0a)
	jr nc,l9c52
	xor a
.l9c52
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9cc9
.l9c5c
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
	jr z,l9c79
	ld b,a
	ld a,c
	ld (l9ab4),a
	ld a,b
	sub #40
.l9c79
	ld (l9c80),a
	ld a,(l9aa5)
.l9c80 equ $ + 1
	bit 0,a
	ld (l9aa5),a
	ret
.l9c85
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l9ea7
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l9bd0
.l9ca1
	inc hl
	ld a,(hl)
	ld (l9aa0),a
	jp l9bd0
.l9ca9
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l9bd0
.l9cb1
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9ad2),a
	inc hl
	ld a,(hl)
	ld (l9ac3),a
	jp l9bd0
.l9cc9
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
.l9cea equ $ + 3
.l9ce9 equ $ + 2
.l9ce8 equ $ + 1
.l9ce7
	db #ff,#ff,#ff,#ff
.l9ceb
	dw la207,la243,la27f
.l9cf1
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
.l9dbf equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l9dcd equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9ddb
	db #00,#00,#02,#03,#09,#00,#00,#00
.l9de9 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9df7 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l9e05 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9e13
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l9e27 equ $ + 4
	db #75,#6c,#65,#2e,#c7,#9e,#07,#9f
	db #27,#9f,#00,#00,#47,#9f,#87,#9f
	db #a7,#9f,#00,#00,#c7,#9f,#07,#a0
	db #27,#a0,#08,#18,#47,#a0,#87,#a0
	db #27,#a0,#08,#18,#c1,#98,#c1,#98
	db #c1,#98,#00,#00,#c1,#98,#c1,#98
	db #c1,#98,#00,#00,#c1,#98,#c1,#98
	db #c1,#98,#00,#00,#c1,#98,#c1,#98
	db #c1,#98,#00,#00,#a7,#a0,#e7,#a0
	db #27,#a0,#00,#00,#c1,#98,#8f,#78
	db #ef,#77,#00,#00,#a7,#a0,#07,#a1
	db #27,#a1,#00,#00,#47,#a1,#87,#a1
	db #27,#a0,#00,#00,#51,#2e,#91,#2e
	db #b1,#2e,#00,#00,#93,#53,#d3,#53
	db #f3,#53,#00,#00,#8f,#77,#af,#78
	db #ef,#77,#08,#18,#2a,#fe,#2a,#fe
.l9ea7 equ $ + 4
	db #2a,#fe,#00,#00,#a7,#a1,#c7,#a1
	db #e7,#a1,#2a,#fe,#2a,#fe,#2a,#fe
	db #2a,#fe,#2a,#fe,#2a,#fe,#2a,#fe
	db #2a,#fe,#2a,#fe,#2a,#fe,#2a,#fe
	db #2a,#fe,#2a,#fe,#00,#00,#80,#00
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
	db #00,#00,#00,#00,#00,#00,#30,#00
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
	db #00,#00,#00,#00,#0d,#0e,#0f,#0e
	db #0d,#0c,#0b,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#00,#0f,#00,#00,#00
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
	db #03,#03,#02,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
.la207 equ $ + 4
	db #04,#07,#00,#04,#00,#bb,#a2,#00
	db #bb,#a2,#00,#bb,#a2,#00,#bb,#a2
	db #00,#12,#a3,#00,#12,#a3,#00,#6f
	db #a3,#00,#6f,#a3,#00,#bb,#a2,#00
	db #bb,#a2,#00,#7d,#a3,#00,#7d,#a3
	db #00,#bb,#a2,#00,#bb,#a2,#00,#bb
	db #a2,#00,#bb,#a2,#00,#bb,#a2,#00
	db #bb,#a2,#00,#bb,#a2,#80,#0d,#a2
.la243
	db #00,#9f,#a3,#00,#9f,#a3,#00,#f3
	db #a3,#00,#f3,#a3,#00,#9f,#a3,#00
	db #9f,#a3,#00,#45,#a4,#00,#45,#a4
	db #00,#f3,#a3,#00,#f3,#a3,#00,#67
	db #a4,#00,#67,#a4,#00,#f3,#a3,#00
	db #f3,#a3,#00,#f3,#a3,#00,#f3,#a3
	db #00,#f3,#a3,#00,#f3,#a3,#00,#f3
.la27f equ $ + 4
	db #a3,#80,#49,#a2,#00,#89,#a4,#00
	db #89,#a4,#00,#de,#a4,#00,#de,#a4
	db #00,#8c,#a4,#00,#8c,#a4,#00,#f9
	db #a4,#00,#f9,#a4,#00,#de,#a4,#00
	db #de,#a4,#00,#89,#a4,#00,#89,#a4
	db #00,#de,#a4,#00,#de,#a4,#00,#de
	db #a4,#00,#de,#a4,#00,#de,#a4,#00
	db #de,#a4,#00,#de,#a4,#80,#85,#a2
	db #37,#02,#f8,#01,#43,#02,#08,#b7
	db #08,#43,#82,#b7,#08,#43,#82,#b7
	db #08,#43,#82,#b7,#08,#43,#82,#32
	db #82,#3e,#82,#b2,#08,#3e,#82,#b2
	db #08,#3e,#82,#b2,#08,#3e,#82,#b2
	db #08,#3e,#82,#33,#82,#3f,#82,#b3
	db #08,#3f,#82,#b3,#08,#3f,#82,#b3
	db #08,#3f,#82,#b3,#08,#3f,#82,#35
	db #02,#f8,#02,#41,#02,#08,#b5,#08
	db #41,#82,#b5,#08,#41,#82,#b5,#08
	db #41,#82,#b5,#08,#41,#82,#ff,#37
	db #02,#f8,#01,#43,#02,#08,#b7,#08
	db #43,#82,#b7,#08,#43,#82,#b7,#08
	db #43,#82,#b7,#08,#43,#82,#32,#02
	db #f8,#01,#3e,#02,#08,#b2,#08,#3e
	db #82,#b2,#08,#3e,#82,#b2,#08,#3e
	db #82,#b2,#08,#3e,#82,#33,#02,#f8
	db #01,#3f,#02,#08,#b3,#08,#3f,#82
	db #b3,#08,#3f,#82,#b3,#08,#3f,#82
	db #b3,#08,#3f,#82,#35,#02,#f8,#02
	db #41,#02,#08,#b5,#08,#41,#82,#b5
	db #08,#41,#82,#b5,#08,#41,#82,#b5
	db #08,#41,#82,#ff,#43,#10,#f8,#01
	db #3e,#10,#08,#3f,#90,#41,#10,#f8
	db #02,#ff,#3f,#04,#f2,#01,#3e,#06
	db #0b,#fe,#06,#3f,#04,#02,#3e,#06
	db #0b,#fe,#06,#3f,#04,#02,#3e,#06
	db #0b,#fe,#06,#3f,#04,#02,#41,#06
	db #0b,#fe,#06,#ff,#37,#02,#fb,#00
	db #43,#02,#0b,#b7,#0b,#43,#82,#b7
	db #0b,#43,#82,#b7,#0b,#43,#82,#b7
	db #0b,#43,#82,#32,#82,#3e,#82,#b2
	db #0b,#3e,#82,#b2,#0b,#3e,#82,#b2
	db #0b,#3e,#82,#b2,#0b,#3e,#82,#33
	db #82,#3f,#82,#b3,#0b,#3f,#82,#b3
	db #0b,#3f,#82,#b3,#0b,#3f,#82,#b3
	db #0b,#3f,#82,#35,#82,#41,#82,#b5
	db #0b,#41,#82,#b5,#0b,#41,#82,#b5
	db #0b,#41,#82,#b5,#0b,#41,#82,#ff
	db #37,#02,#0b,#43,#82,#b7,#0b,#43
	db #82,#b7,#0b,#43,#82,#b7,#0b,#43
	db #82,#b7,#0b,#43,#82,#32,#82,#3e
	db #82,#b2,#0b,#3e,#82,#b2,#0b,#3e
	db #82,#b2,#0b,#3e,#82,#b2,#0b,#3e
	db #82,#33,#82,#3f,#82,#b3,#0b,#3f
	db #82,#b3,#0b,#3f,#82,#b3,#0b,#3f
	db #82,#b3,#0b,#3f,#82,#35,#82,#41
	db #82,#b5,#0b,#41,#82,#b5,#0b,#41
	db #82,#b5,#0b,#41,#82,#b5,#0b,#41
	db #82,#ff,#43,#08,#fb,#00,#45,#04
	db #02,#3e,#84,#3e,#08,#0b,#4a,#04
	db #02,#45,#84,#3f,#08,#0b,#46,#04
	db #02,#3f,#84,#41,#08,#0b,#48,#04
	db #02,#41,#84,#ff,#3f,#04,#f2,#00
	db #3e,#04,#0b,#fe,#08,#3f,#04,#02
	db #3e,#04,#0b,#fe,#08,#3f,#04,#02
	db #3e,#04,#0b,#fe,#08,#3f,#04,#02
	db #41,#04,#0b,#fe,#08,#ff,#00,#40
	db #ff,#43,#02,#0a,#43,#82,#43,#02
	db #01,#43,#02,#0a,#43,#82,#43,#82
	db #43,#02,#01,#43,#02,#0a,#43,#82
	db #43,#82,#43,#02,#01,#43,#02,#0a
	db #43,#82,#43,#82,#43,#02,#01,#43
	db #02,#0a,#43,#82,#43,#82,#43,#02
	db #01,#43,#02,#0a,#43,#82,#43,#82
	db #43,#02,#01,#43,#02,#0a,#43,#82
	db #43,#82,#43,#02,#01,#43,#02,#0a
	db #43,#82,#43,#82,#43,#02,#01,#43
	db #02,#0a,#ff,#00,#04,#c3,#0b,#4f
	db #83,#43,#8c,#be,#0b,#4a,#83,#3e
	db #8c,#bf,#0b,#4b,#83,#3f,#8c,#c1
	db #0b,#4d,#83,#41,#88,#ff,#1f,#02
	db #03,#21,#82,#22,#82,#1f,#82,#21
	db #82,#22,#82,#1f,#82,#21,#82,#1a
	db #82,#1b,#82,#1d,#82,#1a,#82,#1b
	db #82,#1d,#82,#1a,#82,#1b,#82,#1b
	db #82,#1d,#82,#1e,#82,#1b,#82,#1d
	db #82,#1e,#82,#1b,#82,#1d,#82,#1d
	db #82,#1f,#82,#21,#82,#1d,#82,#1f
	db #82,#21,#82,#1d,#82,#1f,#82,#ff
;
.music_info
	db "Paint Addict (1994)(Sleepwalker PDS)(Joe Moulding)",0
	db "ST-Module",0

	read "music_end.asm"
