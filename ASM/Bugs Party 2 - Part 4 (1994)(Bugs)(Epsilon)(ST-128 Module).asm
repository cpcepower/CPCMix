; Music of Bugs Party 2 - Part 4 (1994)(Bugs)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 03/03/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BUGSP2P4.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2021
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
.l5f6d
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6092
	ld (ix+#1e),a
	jp l5dfa
.l5f7f
	dec b
.l5f80
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
.l5fa1
	dec b
	jr l5fa5
.l5fa4
	inc b
.l5fa5
	call l6092
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l5dfa
.l5fb4
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
.l5fc5
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
.l5fed
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
.l6007
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
.l6021
	call l6092
	ld (ix+#1e),a
	jp l5dfa
.l602a
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
.l604c
	ld a,(hl)
	inc hl
	ld (l60e3),a
	jp l5dfa
.l6054
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
.l6073
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
	dw l5f6d,l5f80,l5f7f,l5fa4
	dw l5fa1,l5fb4,l5fc5,l5fed
	dw l6007,l5fed,l6021,l602a
	dw l604c,l6054,l6073
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
	db #60,#bd,#40,#bd,#40,#ff,#e0,#23
	db #99,#3d,#3d,#f0,#6b,#d9,#46,#e3
	db #71,#46,#72,#b6,#b2,#5f,#74,#4f
	db #cf,#96,#d9,#fd,#f9,#dc,#1b,#b7
	db #7b,#27,#1b,#ee,#ad,#e2,#d8,#a9
	db #56,#6c,#af,#31,#89,#db,#7b,#1e
	db #fe,#a6,#b4,#38,#91,#7d,#bd,#a5
	db #3f,#5e,#dd,#de,#99,#fd,#f9,#9c
	db #03,#ec,#b6,#62,#0c,#6b,#09,#73
	db #a7,#3d,#6d,#6a,#c0,#6f,#ec,#89
	db #b2,#53,#58,#a9,#16,#d9,#a4,#6b
	db #b5,#06,#0e,#c2,#1a,#a3,#99,#ac
	db #76,#4d,#b5,#fd,#bd,#a5,#ee,#29
	db #83,#f8,#59,#e8,#d7,#6d,#2e,#70
	db #f0,#64,#c4,#69,#9f,#58,#e9,#9b
	db #33,#8b,#e0,#1a,#ca,#a1,#c3,#b8
	db #7e,#3a,#ad,#0f,#b8,#6b,#49,#94
	db #ca,#23,#75,#de,#19,#7d,#f9,#dc
	db #87,#d6,#4d,#89,#4f,#1e,#fe,#77
	db #bf,#da,#b2,#93,#3f,#e7,#52,#d0
	db #1f,#21,#77,#4c,#8c,#2f,#6c,#ef
	db #68,#da,#b6,#f2,#b5,#06,#76,#4d
	db #68,#da,#2b,#c1,#09,#fa,#1f,#18
	db #b4,#b0,#91,#06,#0e,#97,#dc,#c7
	db #33,#67,#c3,#37,#18,#e9,#37,#ea
	db #48,#bf,#de,#4d,#c9,#2e,#70,#60
	db #36,#7a,#93,#3f,#e7,#ac,#9a,#ce
	db #17,#6b,#e0,#76,#19,#3d,#f9,#21
	db #9b,#27,#68,#97,#d8,#24,#72,#df
	db #0c,#ef,#b1,#dc,#4f,#8f,#96,#cc
	db #ed,#ba,#ad,#73,#7b,#1e,#6c,#bb
	db #46,#f6,#c1,#49,#c1,#99,#e8,#da
	db #af,#35,#06,#4e,#ce,#d7,#e1,#f7
	db #4c,#8c,#bb,#ac,#9a,#8e,#ed,#6a
	db #98,#64,#48,#d8,#e9,#37,#c4,#b4
	db #3c,#b0,#d1,#06,#0e,#ed,#7f,#fb
	db #5a,#f2,#df,#4c,#8c,#2f,#f1,#79
	db #e5,#c5,#2c,#76,#19,#3d,#bd,#61
	db #37,#7b,#5a,#3e,#5b,#b3,#46,#5f
	db #98,#c8,#9a,#8e,#a1,#c3,#16,#60
	db #21,#df,#9c,#43,#83,#6c,#38,#d1
	db #d2,#eb,#31,#f1,#f0,#7e,#4d,#f5
	db #92,#a3,#4d,#31,#b1,#25,#fa,#47
	db #7f,#ff,#e7,#ac,#72,#b2,#1f,#9c
	db #07,#4f,#4b,#c7,#f7,#18,#29,#87
	db #cf,#4b,#6c,#6b,#49,#d0,#07,#8f
	db #ec,#72,#26,#f4,#56,#a4,#76,#c1
	db #d4,#f3,#46,#a3,#99,#7d,#bd,#a5
	db #e2,#c0,#2f,#65,#58,#fc,#75,#17
	db #34,#78,#c5,#25,#ba,#7c,#bc,#a4
	db #58,#47,#2e,#70,#b0,#1d,#38,#95
	db #1e,#19,#7d,#42,#c2,#c6,#36,#eb
	db #d9,#ac,#9a,#b6,#3e,#b2,#5f,#74
	db #1b,#33,#cb,#2c,#36,#3e,#e6,#ed
	db #f7,#0c,#0c,#84,#70,#e9,#db,#7f
	db #c0,#bf,#63,#f5,#86,#17,#d8,#3c
	db #60,#da,#66,#ad,#33,#8b,#f5,#4e
	db #ce,#4a,#5a,#6b,#71,#fd,#57,#6d
	db #ae,#64,#1d,#86,#53,#ea,#6f,#f1
	db #dc,#03,#2c,#ce,#97,#18,#f0,#64
	db #c4,#29,#db,#ea,#d5,#6f,#b0,#1d
	db #de,#9d,#46,#da,#72,#f1,#e8,#1a
	db #f6,#c5,#f1,#fd,#42,#17,#a5,#6e
	db #29,#87,#83,#a4,#76,#81,#be,#df
	db #9c,#43,#c3,#c3,#4f,#f7,#c4,#70
	db #f0,#b0,#1d,#9e,#c1,#d4,#9f,#84
	db #d1,#92,#32,#93,#ea,#95,#23,#d9
	db #3d,#79,#f6,#85,#b5,#e8,#57,#39
	db #90,#b4,#a4,#f6,#3a,#43,#d6,#4d
	db #5c,#0f,#96,#4d,#89,#e2,#98,#64
	db #0c,#34,#07,#9b,#33,#5e,#b0,#5d
	db #23,#f5,#5a,#2b,#c1,#c1,#4d,#71
	db #ac,#da,#7e,#c1,#0d,#49,#fa,#1f
	db #58,#7c,#bc,#60,#76,#85,#49,#3a
	db #47,#f7,#c0,#c0,#4c,#70,#a9,#87
	db #0f,#4b,#f8,#19,#e8,#57,#e1,#9b
	db #27,#ac,#9a,#1f,#d8,#f0,#dd,#9e
	db #c1,#49,#85,#99,#7d,#42,#c2,#f9
	db #58,#a9,#16,#19,#e5,#ee,#8c,#a3
	db #d4,#1b,#67,#ac,#0e,#b9,#6a,#0c
	db #48,#18,#f4,#43,#83,#b8,#64,#5d
	db #63,#2c,#76,#0d,#31,#f0,#b6,#ab
	db #4d,#b5,#06,#4e,#9a,#ce,#d7,#e1
	db #e2,#98,#30,#5d,#76,#4d,#65,#5c
	db #77,#d8,#a9,#c3,#c3,#4f,#73,#7f
	db #ff,#bf,#a7,#ec,#f6,#fe,#a6,#f4
	db #56,#75,#4e,#4a,#a1,#87,#d6,#9d
	db #92,#72,#73,#3d,#42,#86,#0e,#17
	db #dc,#87,#4b,#68,#0e,#ad,#67,#d2
	db #7a,#5b,#bf,#23,#0d,#d4,#5b,#ea
	db #48,#84,#98,#b4,#f0,#c8,#cc,#5d
	db #a7,#ec,#6b,#71,#fd,#42,#86,#4e
	db #36,#ab,#4d,#71,#79,#79,#25,#fa
	db #93,#6a,#c0,#fb,#de,#19,#f1,#25
	db #fa,#47,#b7,#ea,#c0,#0c,#98,#f0
	db #3c,#b0,#c8,#e3,#b5,#57,#6d,#ae
	db #cc,#d1,#c6,#0e,#ad,#b7,#7b,#5e
	db #d9,#fd,#42,#86,#4e,#9a,#ce,#d7
	db #21,#9b,#b3,#d2,#fe,#e6,#b4,#60
	db #9a,#1f,#84,#d1,#06,#4a,#2d,#37
	db #ea,#c0,#0c,#cc,#8c,#fb,#0c,#d5
	db #a7,#12,#ef,#68,#4e,#72,#b1,#b5
	db #e8,#c6,#72,#7e,#ab,#fe,#7a,#5f
	db #21,#1b,#b7,#b3,#96,#19,#3d,#f9
	db #21,#62,#d8,#a9,#03,#c3,#87,#4f
	db #cf,#8f,#16,#75,#9e,#7e,#3a,#47
	db #b7,#a7,#e8,#0e,#13,#c4,#cc,#95
	db #1e,#85,#31,#72,#72,#f2,#32,#4a
	db #2d,#f7,#ff,#e3,#71,#61,#b7,#3b
	db #e8,#97,#18,#24,#6b,#0d,#fa,#93
	db #7f,#c0,#c0,#c0,#bf,#27,#c0,#d5
	db #e7,#52,#91,#46,#36,#ab,#81,#c1
	db #4d,#71,#7d,#42,#86,#86,#17,#a5
	db #ee,#69,#4f,#8f,#52,#19,#fd,#57
	db #39,#d0,#47,#b7,#ea,#c0,#c0,#84
	db #48,#d5,#3b,#96,#19,#3d,#39,#1c
	db #43,#d6,#75,#86,#97,#9c,#a9,#f8
	db #9d,#5a,#2b,#81,#ab,#fe,#3e,#26
	db #ed,#2e,#8c,#d1,#c6,#4a,#f4,#56
	db #d9,#f9,#d8,#3c,#dd,#86,#d7,#e1
	db #db,#ea,#ff,#3f,#b3,#5e,#ff,#bf
	db #e7,#96,#9d,#d2,#eb,#cd,#f0,#72
	db #b6,#7e,#c1,#cd,#65,#65,#c9,#fa
	db #1f,#58,#a9,#03,#38,#91,#e8,#0e
	db #d7,#e1,#e2,#34,#a9,#03,#03,#03
	db #fc,#bc,#24,#bb,#46,#b6,#7a,#5f
	db #18,#b0,#d1,#06,#d7,#e1,#9b,#67
	db #d6,#9d,#46,#33,#25,#49,#d4,#b2
	db #d3,#90,#f0,#24,#f6,#d4,#77,#c0
	db #2f,#31,#1c,#43,#f8,#af,#c9,#fa
	db #47,#7f,#bf,#b3,#cb,#f8,#3f,#3f
	db #67,#96,#dd,#de,#4d,#3d,#42,#42
	db #42,#86,#9a,#72,#b6,#b6,#32,#5f
	db #e1,#e2,#d8,#f0,#64,#ef,#ac,#9a
	db #ce,#53,#9c,#93,#f7,#d5,#bf,#3f
	db #f3,#67,#0b,#6c,#2f,#71,#79,#21
	db #37,#ff,#a7,#68,#c2,#6d,#6a,#0c
	db #95,#de,#19,#e8,#bd,#b1,#c9,#be
	db #df,#9c,#a9,#f8,#19,#79,#74,#0f
	db #96,#85,#94,#c7,#cb,#68,#4e,#5f
	db #a1,#9f,#95,#e7,#0b,#e4,#f3,#f3
	db #67,#d6,#60,#23,#35,#06,#9a,#31
	db #31,#f1,#3d,#fd,#57,#57,#bd,#a5
	db #fa,#93,#6a,#4c,#48,#6f,#ac,#72
	db #f2,#8e,#ed,#2e,#34,#03,#bc,#78
	db #b0,#8c,#95,#63,#e0,#da,#f2,#26
	db #29,#0f,#5e,#35,#42,#b9,#90,#7c
	db #78,#dd,#de,#4d,#8e,#d7,#39,#09
	db #a6,#a1,#0f,#0b,#e0,#ce,#1f,#18
	db #c8,#f6,#be,#1b,#f3,#de,#4d,#8d
	db #fa,#93,#ff,#e7,#96,#60,#9b,#33
	db #27,#d6,#a4,#a7,#e0,#5a,#2b,#81
	db #ab,#ab,#c1,#0d,#0d,#0d,#09,#7a
	db #5f,#21,#db,#7f,#bf,#27,#2c,#36
	db #fe,#7a,#5f,#74,#1b,#6a,#bf,#b3
	db #8f,#83,#f8,#dd,#de,#19,#f1,#25
	db #6e,#b4,#38,#91,#fd,#17,#dc,#4f
	db #cf,#d6,#75,#9e,#94,#66,#97,#a5
	db #ba,#ad,#73,#b3,#d2,#eb,#94,#1b
	db #e7,#12,#32,#5b,#ea,#bb,#46,#9a
	db #4a,#a5,#e2,#e7,#16,#9d,#4f,#cf
	db #8f,#d6,#a4,#6f,#ac,#f6,#4d,#30
	db #ce,#ce,#9a,#32,#72,#32,#ce,#d7
	db #2d,#ba,#e9,#9b,#33,#0b,#a4,#76
	db #c1,#81,#b2,#13,#ee,#29,#16,#b0
	db #8c,#95,#e7,#96,#1d,#c6,#72,#66
	db #13,#6a,#c0,#a7,#7d,#17,#e1,#f7
	db #c0,#bf,#8b,#e0,#cf,#d4,#26,#53
	db #1c,#1b,#6a,#d5,#e3,#b5,#39,#58
	db #3c,#75,#4e,#97,#4c,#c8,#6b,#31
	db #e5,#1c,#9f,#6f,#52,#59,#43,#0f
	db #4b,#56,#e4,#bb,#12,#2f,#71,#e8
	db #57,#bd,#bd,#bd,#fd,#bd,#79,#25
	db #94,#1f,#d8,#e9,#c3,#56,#60,#76
	db #0d,#8d,#d4,#62,#e1,#9f,#95,#e7
	db #4b,#bc,#24,#bb,#d2,#af,#31,#e5
	db #94,#c7,#33,#5e,#71,#fd,#6d,#ee
	db #b4,#78,#c8,#a7,#e0,#6d,#94,#df
	db #e1,#77,#4c,#64,#d1,#92,#32,#93
	db #7f,#6f,#7d,#53,#58,#78,#dd,#da
	db #f2,#66,#13,#91,#d2,#d1,#a9,#c3
	db #c3,#56,#e4,#d1,#d2,#91,#68,#1a
	db #65,#8d,#0d,#0d,#49,#49,#81,#7a
	db #ca,#2d,#e2,#70,#7c,#78,#dd,#76
	db #4d,#b1,#25,#94,#1f,#58,#fc,#38
	db #48,#3b,#0b,#6c,#ef,#ac,#9a,#32
	db #97,#d8,#fc,#38,#91,#3d,#b9,#1c
	db #87,#cf,#0b,#6c,#6f,#df,#e1,#6e
	db #47,#ae,#b4,#bc,#a4,#a3,#49,#ba
	db #e9,#16,#d9,#39,#1c,#03,#f8,#19
	db #3d,#f9,#61,#3f,#1e,#19,#b4,#a9
	db #03,#bc,#e4,#d1,#5e,#d9,#c6,#f6
	db #d4,#3e,#f2,#72,#32,#32,#8e,#d7
	db #6d,#d0,#93,#ae,#98,#64,#95,#de
	db #19,#3d,#79,#61,#6e,#ad,#e2,#3b
	db #0b,#38,#5d,#27,#6c,#a3,#99,#65
	db #89,#77,#4c,#c8,#2f,#b5,#f9,#21
	db #37,#c0,#d5,#e7,#52,#d0,#d3,#dc
	db #9f,#d8,#e9,#c3,#16,#59,#fd,#6d
	db #ae,#48,#e3,#cd,#1c,#c7,#8f,#ec
	db #a3,#81,#be,#ca,#de,#19,#70,#7c
	db #fc,#bc,#e4,#95,#8b,#75,#9e,#af
	db #30,#8e,#c2,#57,#fd,#bd,#39,#25
	db #94,#ca,#a1,#db,#ea,#c0,#fb,#1e
	db #19,#fd,#57,#f9,#89,#62,#74,#f8
	db #5d,#e7,#d6,#60,#e3,#f5,#1a,#32
	db #4a,#e1,#db,#b3,#5e,#d9,#3d,#a5
	db #2e,#b4,#3c,#e4,#d1,#0f,#6e,#ad
	db #6e,#29,#1b,#b3,#cb,#2c,#72,#66
	db #ad,#cf,#d2,#eb,#94,#1b,#7b,#63
	db #f5,#86,#4a,#53,#a3,#d9,#4c,#70
	db #3c,#78,#64,#95,#63,#e0,#23,#99
	db #e8,#bd,#b1,#65,#8d,#49,#d4,#7a
	db #ca,#6d,#ba,#ad,#db,#f3,#67,#96
	db #19,#e8,#0e,#c2,#b9,#1c,#5b,#d1
	db #8b,#6c,#d1,#8b,#60,#76,#4d,#65
	db #c9,#6e,#29,#83,#f8,#c5,#3d,#39
	db #d0,#07,#9b,#8f,#d6,#60,#21,#df
	db #9c,#c7,#7f,#c0,#fb,#5e,#0d,#c9
	db #2e,#70,#60,#36,#7a,#1f,#c0,#95
	db #de,#4d,#31,#25,#85,#b5,#ae,#98
	db #f0,#f0,#64,#95,#63,#6c,#2f,#f5
	db #1a,#25,#09,#fe,#f2,#32,#8e,#d7
	db #6d,#1c,#df,#9c,#43,#4f,#4b,#f8
	db #91,#06,#9a,#32,#4a,#2d,#ee,#fc
	db #60,#6f,#16,#dd,#de,#9d,#46,#9a
	db #8e,#b9,#ae,#30,#8c,#2f,#71,#39
	db #89,#9f,#84,#0c,#95,#27,#5b,#90
	db #ad,#f7,#4c,#30,#8c,#6f,#06,#08
	db #21,#86,#00,#11,#14,#1c,#cd,#77
	db #bc,#21,#14,#1c,#cd,#83,#bc,#cd
	db #7a,#bc,#cd,#80,#97,#06,#08,#21
	db #8e,#00,#11,#8b,#87,#cd,#77,#bc
	db #21,#8b,#87,#cd,#83,#bc,#cd,#7a
	db #bc,#cd,#8b,#87,#06,#08,#21,#96
	db #00,#11,#81,#43,#cd,#77,#bc,#21
	db #81,#43,#cd,#83,#bc,#cd,#7a,#bc
	db #cd,#81,#43,#c9,#42,#55,#47,#53
	db #2e,#41,#4c,#4e,#42,#55
;
.music_info
	db "Bugs Party 2 - Part 4 (1994)(Bugs)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
