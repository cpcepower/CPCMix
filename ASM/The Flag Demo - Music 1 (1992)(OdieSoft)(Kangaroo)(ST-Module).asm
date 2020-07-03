; Music of The Flag Demo - Music 1 (1992)(OdieSoft)(Kangaroo)(ST-Module)
; Ripped by Megachur the 23/07/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THEFLDM1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4962

	read "music_header.asm"

	jp l496d
	jp l49f5
	jp l49d9
	db #66,#04
;
.init_music
.l496d
;
	ld b,#03
	ld ix,l4d3c
	ld iy,l4c68
	ld de,#001c
.l497a
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
	djnz l497a
	ld a,#08
	ld (l4a1d),a
	ld a,d
	ld (l4a31),a
	inc a
	ld (l4a18),a
	ld a,#38
	ld (l4a22),a
	ld a,#ff
	ld (l4c64),a
	ld (l4c65),a
	ld (l4c66),a
	ld (l4c67),a
	ld a,#0c
	ld c,d
	call l4c46
	ld a,#0d
	ld c,d
	jp l4c46
;
.stop_music
.l49d9
;
	ld a,#07
	ld c,#3f
	call l4c46
	ld a,#08
	ld c,#00
	call l4c46
	ld a,#09
	ld c,#00
	call l4c46
	ld a,#0a
	ld c,#00
	jp l4c46
;
.play_music
.l49f5
;
	ld hl,l4a18
	dec (hl)
	ld ix,l4d3c
	ld bc,l4d4a
	call l4aab
	ld ix,l4d58
	ld bc,l4d66
	call l4aab
	ld ix,l4d74
	ld bc,l4d82
	call l4aab
.l4a18 equ $ + 1
	ld a,#03
	or a
	jr nz,l4a21
.l4a1d equ $ + 1
	ld a,#08
	ld (l4a18),a
.l4a22 equ $ + 1
.l4a21
	ld a,#38
	ld hl,l4c65
	cp (hl)
	jr z,l4a30
	ld (hl),a
	ld c,a
	ld a,#07
	call l4c46
.l4a31 equ $ + 1
.l4a30
	ld a,#06
	ld hl,l4c64
	cp (hl)
	jr z,l4a3f
	ld (hl),a
	ld c,a
	ld a,#06
	call l4c46
.l4a40 equ $ + 1
.l4a3f
	ld a,#00
	ld hl,l4c66
	cp (hl)
	jr z,l4a4e
	ld (hl),a
	ld c,a
	ld a,#0b
	call l4c46
.l4a4f equ $ + 1
.l4a4e
	ld a,#00
	ld hl,l4c67
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l4c46
.l4a5c
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l4b5c
.l4a6b
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
	jp l4c46
.l4a85
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l4a9a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l4a9a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l4abe
.l4aab
	ld a,(l4a18)
	or a
	jp nz,l4b5c
	dec (ix+#06)
	jp nz,l4b5c
	ld l,(ix+#00)
	ld h,(ix+#01)
.l4abe
	ld a,(hl)
	or a
	jr z,l4a5c
	cp #fe
	jr z,l4a6b
	cp #ff
	jr z,l4a85
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l4c6e
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l4afa
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l4afa
	and #7f
	ld (ix+#06),a
	jr l4b4d
.l4afa
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l4b0e
	ld (ix+#05),a
	ld (ix+#0a),d
.l4b0e
	add a
	add a
	add a
	ld e,a
	ld hl,l4da4
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
	jr z,l4b4d
	cp #f0
	jp z,l4c02
	cp #d0
	jp z,l4c1e
	cp #b0
	jp z,l4c26
	cp #80
	jp nc,l4c2e
	cp #10
	jr nz,l4b4d
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l4b4d
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l4b5c
	ld a,(ix+#17)
	or a
	jr nz,l4b70
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l4b70
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l4b9b
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l4c6e
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l4b9b
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
	call l4c46
	ld c,h
	ld a,(ix+#03)
	call l4c46
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4bd9
	and #0f
	sub (ix+#0a)
	jr nc,l4bcf
	xor a
.l4bcf
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l4c46
.l4bd9
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
	jr z,l4bf6
	ld b,a
	ld a,c
	ld (l4a31),a
	ld a,b
	sub #40
.l4bf6
	ld (l4bfd),a
	ld a,(l4a22)
.l4bfd equ $ + 1
	set 5,a
	ld (l4a22),a
	ret
.l4c02
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l4e24
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l4b4d
.l4c1e
	inc hl
	ld a,(hl)
	ld (l4a1d),a
	jp l4b4d
.l4c26
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l4b4d
.l4c2e
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l4a4f),a
	inc hl
	ld a,(hl)
	ld (l4a40),a
	jp l4b4d
.l4c46
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
.l4c67 equ $ + 3
.l4c66 equ $ + 2
.l4c65 equ $ + 1
.l4c64
	db #06,#38,#00,#00
.l4c68
	dw l50a4,l50b3,l50c2
.l4c6e
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
.l4d3c equ $ + 4
	db #00,#00,#00,#00,#d3,#50,#00,#01
	db #08,#07,#16,#3c,#00,#00,#00,#df
.l4d4a equ $ + 2
	db #a7,#50,#c4,#4f,#04,#50,#a4,#4e
	db #18,#00,#08,#00,#3c,#00,#84,#50
.l4d58
	db #75,#51,#02,#03,#09,#00,#01,#25
.l4d66 equ $ + 6
	db #00,#00,#00,#e7,#b6,#50,#44,#4e
	db #84,#4e,#a4,#4e,#00,#00,#06,#1a
.l4d74 equ $ + 4
	db #c3,#01,#00,#00,#61,#52,#04,#05
	db #0a,#00,#01,#19,#00,#00,#00,#ef
.l4d82 equ $ + 2
	db #c5,#50,#44,#4e,#84,#4e,#a4,#4e
	db #00,#00,#06,#1a,#86,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l4da4 equ $ + 4
	db #75,#6c,#65,#2e,#44,#4e,#84,#4e
	db #a4,#4e,#00,#00,#c4,#4e,#04,#4f
	db #24,#4f,#00,#00,#3e,#48,#3e,#48
	db #3e,#48,#00,#00,#3e,#48,#3e,#48
	db #3e,#48,#00,#00,#3e,#48,#3e,#48
	db #3e,#48,#00,#00,#3e,#48,#3e,#48
	db #3e,#48,#00,#00,#44,#4f,#84,#4f
	db #a4,#4f,#00,#00,#c4,#4f,#04,#50
	db #a4,#4e,#18,#07,#24,#50,#64,#50
	db #a4,#4e,#18,#07,#3e,#48,#3e,#48
	db #3e,#48,#00,#00,#3e,#48,#3e,#48
	db #3e,#48,#00,#00,#3e,#48,#3e,#48
	db #3e,#48,#00,#00,#3e,#48,#3e,#48
	db #3e,#48,#00,#00,#3e,#48,#3e,#48
	db #3e,#48,#00,#00,#3e,#48,#3e,#48
	db #3e,#48,#00,#00,#3e,#48,#3e,#48
.l4e24 equ $ + 4
	db #3e,#48,#00,#00,#3e,#48,#3e,#48
	db #3e,#48,#3e,#48,#3e,#48,#3e,#48
	db #84,#50,#3e,#48,#3e,#48,#3e,#48
	db #3e,#48,#3e,#48,#3e,#48,#3e,#48
	db #3e,#48,#3e,#48,#00,#00,#fd,#ff
	db #fa,#ff,#fd,#ff,#00,#00,#03,#00
	db #06,#00,#03,#00,#00,#00,#fd,#ff
	db #fa,#ff,#fd,#ff,#00,#00,#03,#00
	db #06,#00,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0d,#0e,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#0a,#09
	db #09,#09,#08,#08,#08,#07,#07,#07
	db #06,#06,#06,#05,#05,#05,#04,#04
	db #04,#03,#03,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0f,#0f,#0f,#0f
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#09
	db #07,#09,#0b,#0d,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
.l50a4 equ $ + 4
	db #0c,#18,#00,#0c,#00,#d1,#50,#00
	db #d4,#50,#00,#db,#50,#00,#1a,#51
.l50b3 equ $ + 3
	db #80,#a4,#50,#00,#55,#51,#00,#8d
	db #51,#00,#c9,#51,#00,#07,#52,#80
.l50c2 equ $ + 2
	db #b3,#50,#00,#41,#52,#00,#79,#52
	db #00,#b5,#52,#00,#f1,#52,#80,#c2
	db #50,#fe,#30,#ff,#00,#2e,#b9,#10
	db #b9,#00,#ff,#b9,#10,#b9,#00,#b9
	db #00,#46,#02,#f7,#06,#ca,#07,#46
	db #82,#c3,#07,#3f,#82,#48,#83,#c6
	db #07,#45,#82,#c8,#07,#45,#82,#c1
	db #07,#3e,#82,#46,#84,#46,#82,#ca
	db #07,#46,#82,#c3,#07,#3f,#82,#48
	db #83,#c6,#07,#c5,#07,#c6,#07,#c1
	db #07,#43,#82,#c5,#07,#48,#82,#c6
	db #07,#ff,#00,#03,#46,#02,#f7,#06
	db #ca,#07,#46,#82,#c3,#07,#3f,#82
	db #48,#83,#c6,#07,#45,#82,#c8,#07
	db #45,#82,#c1,#07,#3e,#82,#46,#84
	db #46,#82,#ca,#07,#46,#82,#c3,#07
	db #3f,#82,#48,#83,#c6,#07,#c5,#07
	db #c6,#07,#c1,#07,#43,#82,#c5,#07
	db #48,#82,#c6,#07,#ff,#a9,#10,#ab
	db #00,#ad,#00,#2e,#83,#3a,#03,#01
	db #3a,#83,#ab,#00,#ad,#00,#af,#00
	db #30,#83,#3a,#03,#01,#3a,#83,#ab
	db #00,#ad,#00,#af,#00,#30,#83,#ab
	db #00,#ad,#00,#af,#00,#30,#83,#a9
	db #00,#ab,#00,#ad,#00,#2e,#83,#3a
	db #03,#01,#3a,#83,#ff,#a9,#00,#ab
	db #00,#ad,#00,#2e,#83,#3a,#03,#01
	db #3a,#83,#ab,#00,#ad,#00,#af,#00
	db #30,#83,#3a,#03,#01,#3a,#83,#ab
	db #00,#ad,#00,#af,#00,#30,#83,#ab
	db #00,#ad,#00,#af,#00,#30,#83,#a9
	db #00,#ab,#00,#ad,#00,#2e,#83,#3a
	db #03,#01,#ba,#01,#bc,#00,#bc,#00
	db #ff,#bc,#00,#bc,#00,#bc,#00,#46
	db #02,#18,#ca,#08,#46,#82,#c3,#08
	db #3f,#82,#48,#83,#c6,#08,#45,#82
	db #c8,#08,#45,#82,#c1,#08,#3e,#82
	db #46,#84,#46,#82,#ca,#08,#46,#82
	db #c3,#08,#3f,#82,#48,#83,#c6,#08
	db #c5,#08,#c6,#08,#c1,#08,#43,#82
	db #c5,#08,#48,#82,#c6,#08,#ff,#00
	db #03,#46,#02,#18,#ca,#08,#46,#82
	db #c3,#08,#3f,#82,#48,#83,#c6,#08
	db #45,#82,#c8,#08,#45,#82,#c1,#08
	db #3e,#82,#46,#84,#46,#82,#ca,#08
	db #46,#82,#c3,#08,#3f,#82,#48,#83
	db #c6,#08,#c5,#08,#c6,#08,#c1,#08
	db #43,#82,#c5,#08,#48,#82,#c6,#08
	db #ff,#9d,#00,#9f,#00,#a1,#00,#22
	db #83,#2e,#03,#01,#2e,#83,#9f,#00
	db #a1,#00,#a3,#00,#24,#83,#2e,#03
	db #01,#2e,#83,#9f,#00,#a1,#00,#a3
	db #00,#24,#83,#9f,#00,#a1,#00,#a3
	db #00,#24,#83,#9d,#00,#9f,#00,#a1
	db #00,#22,#83,#2e,#03,#01,#2e,#83
	db #ff,#9d,#00,#9f,#00,#a1,#00,#22
	db #83,#2e,#03,#01,#2e,#83,#9f,#00
	db #a1,#00,#a3,#00,#24,#83,#2e,#03
	db #01,#2e,#83,#9f,#00,#a1,#00,#a3
	db #00,#24,#83,#9f,#00,#a1,#00,#a3
	db #00,#24,#83,#9d,#00,#9f,#00,#a1
	db #00,#22,#83,#2e,#03,#01,#ae,#01
	db #c1,#00,#c1,#00,#ff,#c1,#00,#c1
	db #00,#c1,#00,#22,#82,#ba,#06,#29
	db #03,#00,#2b,#82,#ba,#06,#2b,#03
	db #00,#24,#82,#ba,#06,#29,#03,#00
	db #2e,#82,#ba,#06,#29,#03,#00,#2e
	db #82,#ba,#06,#29,#03,#00,#27,#82
	db #ba,#06,#27,#03,#00,#29,#82,#ba
	db #06,#29,#03,#00,#22,#82,#ba,#06
	db #ff,#22,#03,#00,#22,#82,#ba,#06
	db #29,#03,#00,#2b,#82,#ba,#06,#2b
	db #03,#00,#24,#82,#ba,#06,#29,#03
	db #00,#2e,#82,#ba,#06,#29,#03,#00
	db #2e,#82,#ba,#06,#29,#03,#00,#27
	db #82,#ba,#06,#27,#03,#00,#29,#82
	db #ba,#06,#29,#03,#00,#22,#82,#ba
	db #06,#ff,#00
;
.music_info
	db "The Flag Demo - Music 1 (1992)(OdieSoft)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
