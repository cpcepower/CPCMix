; Music of Silents Demo - 4 (1994)(Power System)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 01/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SILENTD4.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5c1a

	read "music_header.asm"

	jp l5c23
	jp l5cb7
	jp l5c9b
;
.init_music
.l5c23
;
	xor a
	ld hl,l61ce
	call l5c94
	ld hl,l61fc
	call l5c94
	ld hl,l622a
	call l5c94
	ld ix,l61ca
	ld iy,l6254
	ld de,#002e
	ld b,#03
.l5c43
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l5c43
	ld hl,l60e3
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l60df),hl
	ld (l60e1),hl
	ld a,#0c
	ld c,d
	call l60bf
	ld a,#0d
	ld c,d
	jp l60bf
.l5c94
	ld b,#2a
.l5c96
	ld (hl),a
	inc hl
	djnz l5c96
	ret
;
.stop_music
.l5c9b
;
	ld a,#07
	ld c,#3f
	call l60bf
	ld a,#08
	ld c,#00
	call l60bf
	ld a,#09
	ld c,#00
	call l60bf
	ld a,#0a
	ld c,#00
	jp l60bf
;
.play_music
.l5cb7
;
	ld hl,l60e5
	dec (hl)
	ld ix,l61ca
	ld bc,l61d8
	call l5d59
	ld ix,l61f8
	ld bc,l6206
	call l5d59
	ld ix,l6226
	ld bc,l6234
	call l5d59
	ld hl,l60de
	ld de,l60e5
	ld b,#06
	call l5d36
	ld b,#07
	call l5d36
	ld b,#0b
	call l5d36
	ld b,#0d
	call l5d36
	ld de,l60e5
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l61e9
	call l5d0f
	ld hl,l6217
	call l5d0f
	ld hl,l6245
.l5d0f
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l5d24
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l5d24
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l5d36
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l60bf
.l5d41
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l60bf
.l5d59
	ld a,(l60e5)
	or a
	jp nz,l5e11
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l5e11
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5d41
	or a
	jp z,l5e06
	ld r,a
	and #7f
	cp #10
	jr c,l5de1
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l5f59
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l5dba
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l5dba
	rrca
	ld c,a
	ld hl,l625a
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l5dd9
	ld (ix+#1e),b
.l5dd9
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l5dfa
.l5de1
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l60ea
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add e
	add h
	add l
	add (hl)
	add h
.l5dfa
	ld a,d
	or a
	jr nz,l5e08
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l5e08
.l5e06
	ld a,(hl)
	inc hl
.l5e08
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l5e11
	ld a,(ix+#17)
	or a
	jr nz,l5e27
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l5e27
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5e3d
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5e3d
	ld a,(ix+#0d)
	or a
	jr z,l5e4b
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l5e69
.l5e4b
	ld a,(ix+#1a)
	or a
	jp z,l5e70
	ld c,a
	cp #03
	jr nz,l5e58
	xor a
.l5e58
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l5e69
	ld a,(ix+#18)
	dec c
	jr z,l5e69
	ld a,(ix+#19)
.l5e69
	add (ix+#07)
	ld b,d
	call l5f59
.l5e70
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l5e98
	dec (ix+#1b)
	jr nz,l5e98
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l5ed0
.l5e98
	ld a,(ix+#29)
	or a
	jr z,l5ed0
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l5ec7
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5ebe
	ld (ix+#29),#ff
	jr l5ec7
.l5ebe
	cp (ix+#2b)
	jr nz,l5ec7
	ld (ix+#29),#01
.l5ec7
	ld b,d
	or a
	jp p,l5ecd
	dec b
.l5ecd
	ld c,a
	jr l5edb
.l5ed0
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l5edb
	pop hl
	bit 7,(ix+#14)
	jr z,l5ee4
	ld h,d
	ld l,d
.l5ee4
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l60bf
	ld c,h
	ld a,(ix+#02)
	call l60bf
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5f37
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l5f26
	dec (ix+#09)
	jr nz,l5f26
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5f1e
	xor a
	jr l5f23
.l5f1e
	cp #10
	jr nz,l5f23
	dec a
.l5f23
	ld (ix+#1e),a
.l5f26
	ld a,b
	sub (ix+#1e)
	jr nc,l5f2d
	xor a
.l5f2d
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l60bf
.l5f37
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l60e6)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l5f55
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l5f55
	ld (l60e6),hl
	ret
.l5f59
	ld hl,l6108
	cp #61
	jr nc,l5f63
	add a
	ld c,a
	add hl,bc
.l5f63
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6092
	ld (ix+#1e),a
	jp l5dfa
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l5f8b
	neg
.l5f8b
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l5dfa
	dec b
	jr l5fa5
	inc b
.l5fa5
	call l6092
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l5dfa
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l6077
	ld a,(hl)
	inc hl
	or a
	jr z,l5fe7
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l5fe7
	ld (ix+#29),a
	jp l5dfa
	dec hl
	ld a,(hl)
	and #0f
	ld (l60e9),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l60e8),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l5dfa
	ld a,(hl)
	or a
	jr z,l6018
	call l6094
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l5dfa
.l6018
	ld hl,#0101
	ld (l60e4),hl
	jp l5dfa
	call l6092
	ld (ix+#1e),a
	jp l5dfa
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l60a3
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l60a3
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l5dfa
	ld a,(hl)
	inc hl
	ld (l60e3),a
	jp l5dfa
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l5dfa
	call l6092
	add a
.l6077
	ld b,#00
	ld c,a
	push hl
	ld hl,l62da
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l5dfa
.l6092
	ld a,(hl)
	inc hl
.l6094
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l60a3
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l625a
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l60bf
	di
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
	ei
.l60de
	ret
.l60e6 equ $ + 7
.l60e5 equ $ + 6
.l60e4 equ $ + 5
.l60e3 equ $ + 4
.l60e1 equ $ + 2
.l60df
	db #00,#00,#00,#00,#00,#00,#00,#00
.l60e9 equ $ + 2
.l60e8 equ $ + 1
	db #38,#00,#00
.l60ea
	dw #5f6d,#5f80,#5f7f,#5fa4
	dw #5fa1,#5fb4,#5fc5,#5fed
	dw #6007,#5fed,#6021,#602a
	dw #604c,#6054,#6073
.l6108
	dw #0000,#0e18,#0d4d,#0c8e
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
.l61ce equ $ + 4
.l61ca
	db #08,#00,#01,#08,#00,#00,#00,#00
.l61d8 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l61e9 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l61f8 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l61fc equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l6206 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6217 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6226 equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l622a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6234 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6245 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6254 equ $ + 2
	db #00,#00,#7a,#65,#b0,#65,#e6,#65
.l625a
	db #fa,#62,#3a,#63,#5a,#63,#00,#00
	db #7a,#63,#ba,#63,#da,#63,#07,#00
	db #91,#1b,#03,#2a,#d4,#29,#14,#0e
	db #bc,#1b,#2e,#2a,#8f,#73,#e3,#57
	db #fa,#63,#3a,#64,#5a,#64,#1a,#00
	db #bc,#1b,#00,#2a,#01,#2a,#16,#0e
	db #7a,#64,#ba,#64,#da,#64,#09,#00
	db #fa,#64,#3a,#65,#5a,#63,#10,#10
	db #c0,#1b,#02,#2a,#2e,#2a,#41,#0e
	db #eb,#1b,#2f,#2a,#30,#2a,#45,#0e
	db #ed,#1b,#2f,#2a,#2e,#2a,#41,#0e
	db #2e,#2a,#2f,#2a,#30,#2a,#45,#0e
	db #30,#2a,#2f,#2a,#2e,#2a,#41,#0e
	db #2e,#2a,#2f,#2a,#30,#2a,#45,#0e
	db #30,#2a,#6c,#1c,#ec,#1c,#80,#01
	db #ec,#1d,#6c,#1e,#ec,#1e,#00,#04
.l62da
	db #ec,#1b,#5a,#65,#ec,#1b,#ec,#1b
	db #ec,#1b,#ec,#1b,#ec,#1b,#ec,#1b
	db #ec,#1b,#ec,#1b,#ec,#1b,#ec,#1b
	db #ec,#1b,#ec,#1b,#ec,#1b,#ec,#1b
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0d,#0b,#09,#07,#05,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#8b
	db #89,#88,#88,#87,#87,#86,#85,#84
	db #83,#82,#81,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #18,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#1c,#66,#00,#1c,#66,#00,#1c
	db #66,#00,#1c,#66,#00,#1c,#66,#00
	db #1c,#66,#00,#1c,#66,#00,#1c,#66
	db #00,#1c,#66,#00,#1c,#66,#00,#1c
	db #66,#00,#1c,#66,#00,#1c,#66,#00
	db #1c,#66,#00,#1c,#66,#00,#1c,#66
	db #00,#1c,#66,#80,#7a,#65,#00,#9d
	db #66,#00,#15,#67,#00,#96,#67,#00
	db #a2,#66,#00,#a2,#66,#00,#e7,#66
	db #00,#a2,#66,#00,#a2,#66,#00,#a5
	db #67,#00,#a5,#67,#00,#e7,#66,#00
	db #a2,#66,#00,#a2,#66,#00,#e7,#66
	db #00,#a2,#66,#00,#a2,#66,#00,#a5
	db #67,#80,#b0,#65,#00,#1f,#68,#00
	db #1f,#68,#00,#1f,#68,#00,#1f,#68
	db #00,#1f,#68,#00,#1f,#68,#00,#1f
	db #68,#00,#1f,#68,#00,#1f,#68,#00
	db #1f,#68,#00,#1f,#68,#00,#1f,#68
	db #00,#1f,#68,#00,#1f,#68,#00,#1f
	db #68,#00,#1f,#68,#00,#1f,#68,#80
	db #e6,#65,#a5,#70,#b1,#70,#bd,#70
	db #b1,#70,#a5,#70,#b1,#70,#bd,#70
	db #b1,#70,#a5,#70,#b1,#70,#bd,#70
	db #b1,#70,#a5,#70,#b1,#70,#bd,#70
	db #b1,#70,#a5,#70,#a8,#70,#b4,#70
	db #a8,#70,#9c,#70,#a8,#70,#b4,#70
	db #a8,#70,#9c,#70,#a8,#70,#b4,#70
	db #a8,#70,#9c,#70,#a8,#70,#b4,#70
	db #a8,#70,#9c,#70,#af,#70,#bb,#70
	db #af,#70,#a3,#70,#af,#70,#bb,#70
	db #af,#70,#a3,#70,#af,#70,#bb,#70
	db #af,#70,#a3,#70,#af,#70,#bb,#70
	db #af,#70,#a3,#70,#ac,#70,#b8,#70
	db #ac,#70,#a0,#70,#ac,#70,#b8,#70
	db #ac,#70,#a0,#70,#ac,#70,#b8,#70
	db #ac,#70,#a0,#70,#ac,#70,#b8,#70
	db #ac,#70,#ff,#3d,#11,#00,#40,#ff
	db #4c,#01,#20,#4b,#00,#02,#c9,#00
	db #cb,#00,#cc,#00,#ce,#00,#4b,#00
	db #08,#50,#00,#02,#4c,#00,#02,#cb
	db #00,#cc,#00,#ce,#00,#d0,#00,#4c
	db #00,#08,#4b,#00,#02,#49,#00,#02
	db #c7,#00,#c9,#00,#cb,#00,#cc,#00
	db #4b,#00,#08,#4b,#00,#02,#49,#00
	db #02,#c7,#00,#c9,#00,#cb,#00,#cc
	db #00,#49,#00,#08,#ff,#3d,#01,#10
	db #bf,#00,#c0,#00,#c2,#00,#3f,#00
	db #0c,#bf,#00,#c0,#00,#c2,#00,#c4
	db #00,#40,#00,#0c,#bf,#00,#bd,#00
	db #bb,#00,#bd,#00,#3f,#00,#0c,#bb
	db #00,#bd,#00,#bf,#00,#c0,#00,#3d
	db #00,#0c,#ff,#fe,#01,#b1,#70,#bd
	db #70,#b1,#70,#a5,#70,#b1,#70,#bd
	db #70,#b1,#70,#a5,#70,#b1,#70,#bd
	db #70,#b1,#70,#a5,#70,#b1,#70,#bd
	db #70,#b1,#70,#a5,#70,#a8,#70,#b4
	db #70,#a8,#70,#9c,#70,#a8,#70,#b4
	db #70,#a8,#70,#9c,#70,#a8,#70,#b4
	db #70,#a8,#70,#9c,#70,#a8,#70,#b4
	db #70,#a8,#70,#9c,#70,#af,#70,#bb
	db #70,#af,#70,#a3,#70,#af,#70,#bb
	db #70,#af,#70,#a3,#70,#af,#70,#bb
	db #70,#af,#70,#a3,#70,#af,#70,#bb
	db #70,#af,#70,#a3,#70,#ac,#70,#b8
	db #70,#ac,#70,#a0,#70,#ac,#70,#b8
	db #70,#ac,#70,#a0,#70,#ac,#70,#b8
	db #70,#ac,#70,#a0,#70,#ac,#70,#b8
	db #70,#ac,#70,#ff,#3d,#7e,#01,#10
	db #40,#7c,#00,#10,#3b,#70,#10,#3f
	db #70,#10,#ff,#3d,#7f,#11,#c0,#70
	db #c4,#70,#c0,#70,#bd,#70,#c0,#70
	db #44,#70,#02,#bd,#70,#c0,#70,#c4
	db #70,#c0,#70,#bd,#70,#c0,#70,#44
	db #70,#02,#c0,#70,#c4,#70,#c7,#70
	db #c4,#70,#c0,#70,#c4,#70,#47,#70
	db #02,#c0,#70,#c4,#70,#c7,#70,#c4
	db #70,#c0,#70,#c4,#70,#47,#70,#02
	db #bb,#70,#bf,#70,#c2,#70,#bf,#70
	db #bb,#70,#bf,#70,#42,#70,#02,#bb
	db #70,#bf,#70,#c2,#70,#bf,#70,#bb
	db #70,#bf,#70,#42,#70,#02,#b8,#70
	db #bb,#70,#bf,#70,#bb,#70,#b8,#70
	db #bb,#70,#3f,#70,#02,#b8,#70,#bb
	db #70,#bf,#70,#bb,#70,#b8,#70,#bb
	db #70,#3f,#70,#02,#ff,#bd,#10,#f4
	db #60,#f4,#60,#f4,#60,#bd,#40,#f4
	db #60,#f4,#60,#f4,#60,#bd,#10,#f4
	db #60,#f4,#60,#f4,#60,#bd,#40,#f4
	db #60,#f4,#60,#f4,#60,#bd,#10,#f4
	db #60,#f4,#60,#f4,#60,#bd,#40,#f4
	db #60,#f4,#60,#f4,#60,#bd,#10,#f4
	db #60,#f4,#60,#f4,#60,#bd,#40,#f4
	db #60,#f4,#60,#bd,#40,#bd,#10,#f4
	db #60,#f4,#60,#f4,#60,#bd,#40,#f4
	db #60,#f4,#60,#f4,#60,#bd,#10,#f4
	db #60,#f4,#60,#f4,#60,#bd,#40,#f4
	db #60,#f4,#60,#f4,#60,#bd,#10,#f4
	db #60,#f4,#60,#f4,#60,#bd,#40,#f4
	db #60,#f4,#60,#f4,#60,#bd,#10,#f4
	db #60,#f4,#60,#f4,#60,#bd,#40,#f4
	db #60,#bd,#40,#bd,#40,#ff,#00,#60
	db #00,#00,#00,#ff,#ff,#ff,#e8,#00
	db #00,#00,#00,#60,#00,#00,#00,#ff
	db #e8,#00,#40,#20,#00,#60,#00,#77
	db #e8,#00,#77,#e8,#00,#77,#ff,#e8
	db #00,#00,#ff,#c0,#00,#00,#00,#00
	db #c0,#00,#00,#00,#33,#ff,#c0,#33
	db #ff,#ff,#e8,#00,#11,#ff,#ff,#c0
	db #33,#ff,#c0,#00,#00,#00,#33,#c0
	db #00,#00,#00,#00,#c0,#00,#77,#ff
	db #ff,#c0,#00,#77,#ff,#ff,#e8,#00
	db #00,#00,#00,#ff,#e8,#00,#77,#ff
	db #fc,#00,#00,#ff,#e8,#00,#00,#00
	db #00,#60,#00,#00,#00,#ff,#ff,#ff
	db #e8,#00,#74,#00,#00,#60,#00,#00
	db #00,#00,#60,#00,#00,#00,#00,#60
	db #00,#00,#00,#ff,#ff,#ff,#e8,#00
	db #00,#00,#00,#60,#00,#00,#00,#ff
	db #e8,#00,#40,#20,#00,#60,#00,#77
	db #e8,#00,#77,#e8,#00,#77,#fe,#80
	db #00,#33,#ff,#c0,#00,#00,#00,#00
	db #c0,#00,#00,#00,#ff,#fe,#80,#77
	db #ff,#ff,#e8,#00,#11,#ff,#fe,#80
	db #77,#ff,#c0,#00,#30,#00,#11,#c0
	db #00,#00,#00,#00,#c0,#00,#77,#ff
	db #ff,#c0,#00,#77,#ff,#ff,#fe,#80
	db #00,#00,#00,#ff,#fc,#00,#ff,#ff
	db #fc,#00,#00,#ff,#e8,#00,#00,#00
	db #00,#60,#00,#00,#11,#ff,#ff,#ff
	db #e8,#00,#76,#80,#00,#60,#00,#00
	db #00,#00,#60,#00,#40,#20,#00,#60
	db #00,#00,#11,#ff,#ff,#ff,#e8,#00
	db #40,#20,#00,#60,#00,#00,#11,#ff
	db #e8,#00,#40,#20,#00,#60,#00,#77
	db #e8,#00,#77,#fc,#00,#ff,#e8,#00
	db #00,#ff,#ff,#c0,#00,#76,#80,#00
	db #c0,#00,#11,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#e8,#00,#11,#ff,#ff,#ff
	db #ff,#ff,#c0,#00,#76,#80,#00,#c0
	db #00,#76,#80,#00,#c0,#00,#33,#ff
	db #ff,#c0,#00,#33,#ff,#ff,#ff,#ff
	db #ff,#e8,#00,#ff,#ff,#ff,#ff,#ff
	db #fc,#00,#00,#ff,#e8,#00,#33,#c0
	db #00,#60,#00,#11,#ff,#ff,#ff,#ff
	db #e8,#00,#33,#fc,#00,#60,#00,#33
	db #c0,#00,#60,#00,#40,#20,#00,#60
	db #00,#11,#ff,#ff,#ff,#ff,#e8,#00
	db #40,#20,#00,#60,#00,#11,#ff,#ff
	db #e8,#00,#40,#20,#00,#60,#00,#77
	db #e8,#00,#77,#ff,#ff,#ff,#c0,#00
	db #00,#00,#77,#c0,#00,#ff,#c0,#00
	db #c0,#00,#33,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#e8,#00,#11,#ff,#ff,#ff
	db #ff,#ff,#c0,#00,#76,#80,#00,#c0
	db #00,#ff,#c0,#00,#c0,#00,#00,#00
	db #77,#c0,#00,#00,#00,#77,#fe,#80
	db #00,#00,#00,#ff,#ff,#ff,#ff,#ff
	db #fc,#00,#00,#ff,#e8,#00,#77,#e8
	db #00,#60,#00,#00,#00,#33,#ff,#ff
	db #e8,#00,#00,#00,#00,#60,#00,#77
	db #e8,#00,#60,#00,#40,#20,#00,#60
	db #00,#00,#00,#33,#ff,#ff,#e8,#00
	db #40,#20,#00,#60,#00,#00,#00,#33
	db #e8,#00,#40,#20,#00,#60,#00,#33
	db #c0,#00,#77,#ff,#ff,#ff,#c0,#00
	db #00,#00,#00,#c0,#00,#ff,#c0,#00
	db #c0,#00,#33,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#e8,#00,#11,#ff,#ff,#ff
	db #ff,#ff,#c0,#00,#30,#00,#00,#c0
	db #00,#ff,#c0,#00,#c0,#00,#00,#00
	db #11,#c0,#00,#00,#00,#11,#e8,#00
	db #00,#00,#00,#ff,#ff,#ff,#ff,#ff
	db #fc,#00,#00,#ff,#e8,#00,#77,#e8
	db #00,#60,#00,#00,#00,#00,#ff,#ff
	db #e8,#00,#00,#00,#00,#60,#00,#77
	db #e8,#00,#60,#00,#40,#20,#00,#60
	db #00,#00,#00,#00,#ff,#ff,#e8,#00
	db #40,#20,#00,#60,#00,#00,#00,#00
	db #e8,#00,#40,#20,#00,#60,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#c0,#00
	db #00,#00,#00,#c0,#00,#ff,#c0,#00
	db #c0,#00,#33,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#e8,#00,#11,#ff,#ff,#ff
	db #ff,#ff,#c0,#00,#00,#00,#11,#c0
	db #00,#ff,#c0,#00,#c0,#00,#00,#00
	db #00,#c0,#00,#00,#00,#00,#c0,#00
	db #00,#00,#00,#ff,#ff,#ff,#ff,#ff
	db #fc,#00,#00,#ff,#e8,#00,#77,#e8
	db #00,#60,#00,#00,#00,#00,#77,#ff
	db #e8,#00,#00,#00,#00,#60,#00,#77
	db #e8,#00,#60,#00,#60,#64,#00,#60
	db #00,#00,#00,#00,#77,#ff,#e8,#00
	db #60,#64,#00,#60,#00,#00,#00,#00
	db #60,#00,#40,#00,#00,#74,#00,#00
	db #00,#00,#ff,#ff,#ff,#ff,#e8,#00
	db #00,#00,#11,#e8,#11,#ff,#e8,#11
	db #e8,#00,#77,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#fc,#00,#33,#ff,#ff,#ff
	db #ff,#ff,#e8,#00,#00,#00,#33,#e8
	db #11,#ff,#e8,#11,#e8,#00,#00,#00
	db #11,#e8,#00,#00,#00,#11,#e8,#00
	db #00,#00,#11,#ff,#ff,#ff,#ff,#ff
	db #fe,#80,#11,#ff,#fc,#00,#ff,#fc
	db #00,#fc,#00,#00,#00,#00,#ff,#ff
	db #fc,#00,#00,#00,#00,#fc,#00,#ff
	db #fc,#00,#fc,#00,#ff,#fc,#00,#fc
	db #00,#00,#00,#00,#ff,#ff,#fc,#00
	db #ff,#fc,#00,#fc,#00,#00,#00,#00
	db #fc,#00,#e8,#00,#00,#fe,#80,#00
	db #00,#11,#ff,#ff,#ff,#ff,#1e,#80
	db #00,#00,#07,#3c,#03,#0f,#3c,#03
	db #3c,#00,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#1e,#80,#07,#0f,#0f,#0f
	db #0f,#0f,#3c,#00,#00,#00,#0f,#3c
	db #03,#0f,#3c,#03,#3c,#00,#00,#00
	db #07,#3c,#00,#00,#00,#07,#1e,#80
	db #00,#00,#07,#0f,#0f,#0f,#0f,#0f
	db #0f,#c0,#03,#0f,#1e,#81,#0f,#1e
	db #81,#1e,#80,#00,#00,#03,#0f,#0f
	db #1e,#80,#00,#00,#03,#1e,#81,#0f
	db #1e,#81,#1e,#81,#0f,#1e,#81,#1e
	db #80,#00,#00,#03,#0f,#0f,#1e,#81
	db #0f,#1e,#81,#1e,#80,#00,#00,#03
	db #1e,#81,#3c,#00,#01,#0f,#68,#00
	db #00,#07,#0f,#0f,#0f,#0f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff

;
.music_info
	db "Silents Demo - 4 (1994)(Power System)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
