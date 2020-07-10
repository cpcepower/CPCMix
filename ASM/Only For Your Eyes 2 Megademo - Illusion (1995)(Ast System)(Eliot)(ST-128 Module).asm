; Music of Only For Your Eyes 2 Megademo - Illusion (1995)(Ast System)(Eliot)(ST-128 Module)
; Ripped by Megachur the 24/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OFYE2MIL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #6ae0

	read "music_header.asm"
	
	jp l6ae9
	jp l6b7d
	jp l6b61
;
.init_music
.l6ae9
;
	xor a
	ld hl,l7094
	call l6b5a
	ld hl,l70c2
	call l6b5a
	ld hl,l70f0
	call l6b5a
	ld ix,l7090
	ld iy,l711a
	ld de,#002e
	ld b,#03
.l6b09
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
	djnz l6b09
	ld hl,l6fa9
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
	ld (l6fa5),hl
	ld (l6fa7),hl
	ld a,#0c
	ld c,d
	call l6f85
	ld a,#0d
	ld c,d
	jp l6f85
.l6b5a
	ld b,#2a
.l6b5c
	ld (hl),a
	inc hl
	djnz l6b5c
	ret
;
.stop_music
.l6b61
;
	ld a,#07
	ld c,#3f
	call l6f85
	ld a,#08
	ld c,#00
	call l6f85
	ld a,#09
	ld c,#00
	call l6f85
	ld a,#0a
	ld c,#00
	jp l6f85
;
.play_music
.l6b7d
;
	ld hl,l6fab
	dec (hl)
	ld ix,l7090
	ld bc,l709e
	call l6c1f
	ld ix,l70be
	ld bc,l70cc
	call l6c1f
	ld ix,l70ec
	ld bc,l70fa
	call l6c1f
	ld hl,l6fa4
	ld de,l6fab
	ld b,#06
	call l6bfc
	ld b,#07
	call l6bfc
	ld b,#0b
	call l6bfc
	ld b,#0d
	call l6bfc
	ld de,l6fab
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l70af
	call l6bd5
	ld hl,l70dd
	call l6bd5
	ld hl,l710b
.l6bd5
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
	jr nz,l6bea
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6bea
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
.l6bfc
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6f85
.l6c07
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6f85
.l6c1f
	ld a,(l6fab)
	or a
	jp nz,l6cd7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6cd7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6c07
	or a
	jp z,l6ccc
	ld r,a
	and #7f
	cp #10
	jr c,l6ca7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l6e1f
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
	jr z,l6c80
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l6c80
	rrca
	ld c,a
	ld hl,l7120
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
	jr z,l6c9f
	ld (ix+#1e),b
.l6c9f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6cc0
.l6ca7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6fb0
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
.l6cc0
	ld a,d
	or a
	jr nz,l6cce
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l6cce
.l6ccc
	ld a,(hl)
	inc hl
.l6cce
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6cd7
	ld a,(ix+#17)
	or a
	jr nz,l6ced
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l6ced
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6d03
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6d03
	ld a,(ix+#0d)
	or a
	jr z,l6d11
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l6d2f
.l6d11
	ld a,(ix+#1a)
	or a
	jp z,l6d36
	ld c,a
	cp #03
	jr nz,l6d1e
	xor a
.l6d1e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l6d2f
	ld a,(ix+#18)
	dec c
	jr z,l6d2f
	ld a,(ix+#19)
.l6d2f
	add (ix+#07)
	ld b,d
	call l6e1f
.l6d36
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6d5e
	dec (ix+#1b)
	jr nz,l6d5e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6d96
.l6d5e
	ld a,(ix+#29)
	or a
	jr z,l6d96
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l6d8d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6d84
	ld (ix+#29),#ff
	jr l6d8d
.l6d84
	cp (ix+#2b)
	jr nz,l6d8d
	ld (ix+#29),#01
.l6d8d
	ld b,d
	or a
	jp p,l6d93
	dec b
.l6d93
	ld c,a
	jr l6da1
.l6d96
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6da1
	pop hl
	bit 7,(ix+#14)
	jr z,l6daa
	ld h,d
	ld l,d
.l6daa
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6f85
	ld c,h
	ld a,(ix+#02)
	call l6f85
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6dfd
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l6dec
	dec (ix+#09)
	jr nz,l6dec
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6de4
	xor a
	jr l6de9
.l6de4
	cp #10
	jr nz,l6de9
	dec a
.l6de9
	ld (ix+#1e),a
.l6dec
	ld a,b
	sub (ix+#1e)
	jr nc,l6df3
	xor a
.l6df3
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6f85
.l6dfd
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6fac)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6e1b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6e1b
	ld (l6fac),hl
	ret
.l6e1f
	ld hl,l6fce
	cp #61
	jr nc,l6e29
	add a
	ld c,a
	add hl,bc
.l6e29
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6e33
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6f58
	ld (ix+#1e),a
	jp l6cc0
.l6e45
	dec b
.l6e46
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6e51
	neg
.l6e51
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
	jp l6cc0
.l6e67
	dec b
	jr l6e6b
.l6e6a
	inc b
.l6e6b
	call l6f58
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6cc0
.l6e7a
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
	jp l6f3d
.l6e8b
	ld a,(hl)
	inc hl
	or a
	jr z,l6ead
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
.l6ead
	ld (ix+#29),a
	jp l6cc0
.l6eb3
	dec hl
	ld a,(hl)
	and #0f
	ld (l6faf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6fae),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6cc0
.l6ecd
	ld a,(hl)
	or a
	jr z,l6ede
	call l6f5a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6cc0
.l6ede
	ld hl,#0101
	ld (l6faa),hl
	jp l6cc0
.l6ee7
	call l6f58
	ld (ix+#1e),a
	jp l6cc0
.l6ef0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6f69
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6f69
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6cc0
.l6f12
	ld a,(hl)
	inc hl
	ld (l6fa9),a
	jp l6cc0
.l6f1a
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
	jp l6cc0
.l6f39
	call l6f58
	add a
.l6f3d
	ld b,#00
	ld c,a
	push hl
	ld hl,l71a0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6cc0
.l6f58
	ld a,(hl)
	inc hl
.l6f5a
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
.l6f69
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l7120
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #41,#53,#54,#20,#53,#59,#53,#54
	db #45,#4d,#2d,#39,#34
.l6f85
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
.l6fa4
	ret
.l6fac equ $ + 7
.l6fab equ $ + 6
.l6faa equ $ + 5
.l6fa9 equ $ + 4
.l6fa7 equ $ + 2
.l6fa5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6faf equ $ + 2
.l6fae equ $ + 1
	db #38,#00,#00
.l6fb0
	dw l6e33,l6e46,l6e45,l6e6a
	dw l6e67,l6e7a,l6e8b,l6eb3
	dw l6ecd,l6eb3,l6ee7,l6ef0
	dw l6f12,l6f1a,l6f39
.l6fce
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
.l7094 equ $ + 4
.l7090
	db #08,#00,#01,#08,#00,#00,#00,#00
.l709e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l70af equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l70be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l70c2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l70cc equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l70dd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l70ec equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l70f0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l70fa equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l710b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l711a equ $ + 2
	db #00,#00,#80,#74,#cb,#74,#16,#75
.l7120
	db #c0,#71,#00,#72,#20,#72,#07,#00
	db #40,#72,#80,#72,#a0,#72,#1a,#00
	db #c0,#72,#00,#73,#20,#73,#00,#00
	db #40,#73,#80,#73,#20,#73,#00,#00
	db #c0,#72,#a0,#73,#20,#73,#00,#00
	db #c0,#72,#c0,#73,#e0,#73,#09,#00
	db #00,#74,#40,#74,#20,#73,#00,#00
	db #c0,#72,#60,#74,#20,#73,#00,#00
	db #aa,#29,#aa,#0b,#32,#2b,#02,#0e
	db #f0,#28,#f0,#38,#b4,#2a,#38,#38
	db #44,#a7,#c2,#52,#da,#52,#38,#38
	db #c2,#28,#c2,#52,#f6,#ac,#38,#38
	db #c4,#a6,#42,#53,#d6,#4c,#38,#38
	db #42,#a7,#c4,#52,#fa,#b2,#00,#3c
	db #ca,#66,#ee,#66,#ca,#2a,#3c,#ff
	db #b1,#43,#be,#42,#e2,#42,#18,#3c
.l71a0
	db #30,#43,#ca,#a8,#ee,#42,#b2,#4e
	db #18,#2a,#18,#4f,#b2,#2a,#b2,#2a
	db #b9,#2a,#b2,#2a,#b2,#3a,#5b,#2a
	db #e1,#b7,#b1,#2b,#06,#80,#04,#79
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#00,#82
	db #82,#82,#82,#82,#82,#82,#82,#82
	db #82,#82,#82,#82,#82,#82,#82,#82
	db #82,#82,#82,#82,#82,#82,#82,#82
	db #11,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0f,#0f,#0f,#0e,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#04,#04,#03
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #04,#00,#00,#01,#01,#01,#01,#01
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
	db #0f,#0f,#0e,#0e,#0e,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0a,#0a,#0a,#09,#09,#08,#08,#07
	db #06,#05,#04,#03,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#06
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0b,#09,#07
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0c,#0a,#08,#06,#04,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#80,#00
	db #a0,#00,#c0,#00,#e0,#00,#00,#01
	db #20,#01,#40,#01,#60,#01,#80,#01
	db #a0,#01,#c0,#01,#e0,#01,#00,#02
	db #20,#02,#40,#02,#60,#02,#80,#02
	db #a0,#02,#c0,#02,#e0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#80,#03
	db #a0,#03,#c0,#03,#e0,#03,#00,#04
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0e,#0f,#0f,#0f,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0a
	db #09,#08,#07,#06,#05,#03,#01,#00
	db #00,#b7,#76,#00,#1b,#77,#00,#1b
	db #77,#00,#1b,#77,#00,#1b,#77,#00
	db #45,#76,#00,#b7,#76,#00,#61,#75
	db #00,#61,#75,#00,#d3,#75,#00,#d3
	db #75,#00,#61,#75,#00,#61,#75,#00
	db #45,#76,#00,#b7,#76,#00,#1b,#77
	db #00,#1b,#77,#00,#8e,#77,#00,#8e
	db #77,#00,#1b,#77,#00,#1b,#77,#00
	db #8e,#77,#00,#8e,#77,#00,#45,#76
	db #80,#80,#74,#00,#25,#79,#00,#9b
	db #79,#00,#9b,#79,#00,#9b,#79,#00
	db #9b,#79,#00,#64,#78,#00,#25,#79
	db #00,#03,#78,#00,#03,#78,#00,#03
	db #78,#00,#03,#78,#00,#03,#78,#00
	db #03,#78,#00,#64,#78,#00,#25,#79
	db #00,#fc,#79,#00,#fc,#79,#00,#5e
	db #7a,#00,#5e,#7a,#00,#fc,#79,#00
	db #fc,#79,#00,#5e,#7a,#00,#5e,#7a
	db #00,#64,#78,#80,#cb,#74,#00,#f0
	db #7b,#00,#f3,#7b,#00,#f3,#7b,#00
	db #f3,#7b,#00,#f3,#7b,#00,#79,#7b
	db #00,#f0,#7b,#00,#bf,#7a,#00,#bf
	db #7a,#00,#14,#7b,#00,#14,#7b,#00
	db #bf,#7a,#00,#bf,#7a,#00,#79,#7b
	db #00,#f0,#7b,#00,#64,#7c,#00,#64
	db #7c,#00,#c6,#7c,#00,#c6,#7c,#00
	db #64,#7c,#00,#64,#7c,#00,#c6,#7c
	db #00,#f7,#7c,#00,#79,#7b,#80,#16
	db #75,#40,#00,#02,#c0,#50,#c0,#50
	db #40,#00,#02,#c0,#50,#c0,#50,#40
	db #00,#02,#c0,#50,#c0,#50,#40,#00
	db #02,#c0,#50,#c0,#50,#40,#00,#02
	db #c0,#50,#c0,#50,#40,#00,#02,#c0
	db #50,#c0,#50,#40,#00,#02,#c0,#50
	db #c0,#50,#40,#00,#02,#c0,#50,#c0
	db #00,#40,#00,#02,#c0,#50,#c0,#50
	db #40,#00,#02,#c0,#50,#c0,#50,#40
	db #00,#02,#c0,#50,#c0,#50,#40,#00
	db #02,#c0,#50,#c0,#50,#40,#00,#02
	db #c0,#50,#c0,#50,#40,#00,#02,#c0
	db #50,#c0,#50,#40,#00,#02,#c0,#10
	db #c0,#10,#c0,#10,#c0,#10,#c0,#10
	db #c0,#10,#ff,#34,#00,#02,#b4,#50
	db #b4,#50,#34,#00,#02,#b4,#50,#b4
	db #50,#34,#00,#02,#b4,#50,#b4,#50
	db #34,#00,#02,#b4,#50,#b4,#50,#34
	db #00,#02,#b4,#50,#b4,#50,#34,#00
	db #02,#b4,#50,#b4,#50,#34,#00,#02
	db #b4,#50,#b4,#50,#34,#00,#02,#b4
	db #50,#b4,#00,#34,#00,#02,#b4,#50
	db #b4,#50,#34,#00,#02,#b4,#50,#b4
	db #50,#34,#00,#02,#b4,#50,#b4,#50
	db #34,#00,#02,#b4,#50,#b4,#50,#34
	db #00,#02,#b4,#50,#b4,#50,#34,#00
	db #02,#b4,#50,#b4,#50,#34,#00,#02
	db #b4,#10,#b4,#10,#b4,#10,#b4,#10
	db #b4,#10,#b4,#10,#ff,#34,#0b,#13
	db #0b,#12,#34,#0b,#11,#34,#0b,#11
	db #3b,#1b,#20,#b4,#00,#34,#00,#02
	db #34,#00,#02,#b4,#00,#3b,#10,#02
	db #bb,#10,#bb,#10,#34,#00,#02,#b4
	db #00,#b4,#00,#3b,#10,#02,#b4,#00
	db #34,#00,#02,#34,#00,#02,#b4,#00
	db #3b,#10,#02,#3b,#10,#02,#34,#00
	db #02,#b4,#00,#b4,#00,#3b,#10,#02
	db #b4,#00,#34,#00,#02,#34,#00,#02
	db #b4,#00,#3b,#10,#02,#bb,#10,#bb
	db #10,#34,#00,#02,#b4,#00,#b4,#00
	db #3b,#10,#02,#b4,#00,#34,#00,#02
	db #b4,#00,#bb,#10,#bb,#10,#bb,#10
	db #bb,#10,#bb,#10,#bb,#10,#ff,#40
	db #10,#02,#28,#50,#02,#2f,#10,#02
	db #28,#50,#02,#40,#10,#02,#28,#50
	db #02,#2f,#10,#02,#28,#50,#02,#40
	db #10,#02,#28,#50,#02,#2f,#10,#02
	db #28,#50,#02,#40,#10,#02,#28,#50
	db #02,#2f,#10,#02,#28,#50,#02,#40
	db #10,#02,#28,#50,#02,#2f,#10,#02
	db #28,#50,#02,#40,#10,#02,#28,#50
	db #02,#2f,#10,#02,#28,#50,#02,#40
	db #10,#02,#28,#50,#02,#2f,#10,#02
	db #28,#50,#02,#40,#10,#02,#af,#10
	db #af,#10,#af,#10,#af,#10,#af,#10
	db #af,#10,#ff,#40,#00,#02,#ac,#50
	db #ac,#50,#44,#10,#02,#ac,#50,#ac
	db #50,#40,#00,#02,#ac,#50,#ac,#50
	db #44,#10,#02,#ac,#50,#c0,#00,#40
	db #00,#02,#ac,#50,#ac,#50,#44,#10
	db #02,#ac,#50,#ac,#50,#40,#00,#02
	db #ac,#50,#ac,#50,#44,#10,#02,#ac
	db #50,#c0,#00,#40,#00,#02,#ac,#50
	db #ac,#50,#44,#10,#02,#ac,#50,#ac
	db #50,#40,#00,#02,#ac,#50,#ac,#50
	db #44,#10,#02,#ac,#50,#c0,#00,#40
	db #00,#02,#ac,#50,#ac,#50,#44,#10
	db #02,#ac,#50,#ac,#50,#c0,#00,#ac
	db #50,#c4,#10,#c4,#10,#c4,#10,#c4
	db #10,#c4,#10,#c4,#10,#ff,#40,#00
	db #02,#ac,#50,#ac,#50,#44,#10,#02
	db #ac,#50,#ac,#50,#40,#00,#02,#ac
	db #50,#ac,#50,#44,#10,#02,#ac,#50
	db #c0,#00,#40,#00,#02,#ac,#50,#ac
	db #50,#44,#10,#02,#ac,#50,#ac,#50
	db #c0,#00,#c4,#10,#c4,#10,#c4,#10
	db #c4,#10,#c4,#10,#ac,#50,#ac,#50
	db #40,#00,#02,#ac,#50,#ac,#50,#44
	db #10,#02,#ac,#50,#ac,#50,#40,#00
	db #02,#ac,#50,#ac,#50,#44,#10,#02
	db #ac,#50,#c0,#00,#40,#00,#02,#ac
	db #50,#ac,#50,#44,#10,#02,#ac,#50
	db #ac,#50,#c0,#00,#ac,#50,#c4,#10
	db #c4,#10,#c4,#10,#c4,#10,#c4,#10
	db #c4,#10,#ff,#28,#40,#02,#34,#40
	db #02,#28,#40,#02,#34,#40,#02,#28
	db #40,#02,#34,#40,#02,#28,#40,#02
	db #34,#40,#02,#2f,#40,#02,#3b,#40
	db #02,#2f,#40,#02,#3b,#40,#02,#2f
	db #40,#02,#3b,#40,#02,#2f,#40,#02
	db #3b,#40,#02,#2a,#40,#02,#36,#40
	db #02,#2a,#40,#02,#36,#40,#02,#2a
	db #40,#02,#36,#40,#02,#2a,#40,#02
	db #36,#40,#02,#2d,#40,#02,#39,#40
	db #02,#2d,#40,#02,#39,#40,#02,#2d
	db #40,#02,#39,#40,#02,#2d,#40,#02
	db #39,#40,#02,#ff,#40,#6b,#10,#40
	db #6b,#10,#40,#6b,#11,#40,#6b,#11
	db #40,#6b,#12,#40,#6b,#12,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#28,#5b,#13,#28
	db #5b,#13,#28,#5b,#13,#28,#5b,#13
	db #28,#5b,#13,#28,#5b,#13,#28,#5b
	db #13,#28,#5b,#13,#ff,#31,#2b,#22
	db #b1,#27,#0a,#b1,#20,#3d,#20,#02
	db #b1,#20,#3d,#20,#02,#b1,#20,#bd
	db #20,#b1,#20,#bd,#20,#b1,#20,#bd
	db #20,#b1,#20,#31,#20,#02,#b1,#20
	db #b1,#20,#3d,#20,#02,#b1,#20,#3d
	db #20,#02,#b1,#20,#bd,#20,#b1,#20
	db #bd,#20,#b1,#20,#bd,#20,#b1,#20
	db #31,#20,#02,#b1,#20,#b1,#20,#3d
	db #20,#02,#b1,#20,#3d,#20,#02,#b1
	db #20,#bd,#20,#b1,#20,#bd,#20,#b1
	db #20,#bd,#20,#b1,#20,#31,#20,#02
	db #b1,#20,#b1,#20,#3d,#20,#02,#b1
	db #20,#3d,#20,#02,#b1,#20,#bd,#20
	db #b1,#20,#bd,#20,#b1,#20,#bd,#20
	db #bd,#20,#ff,#31,#30,#02,#3d,#30
	db #02,#31,#30,#02,#3d,#30,#02,#31
	db #30,#02,#3d,#30,#02,#31,#30,#02
	db #3d,#30,#02,#31,#30,#02,#3d,#30
	db #02,#31,#30,#02,#3d,#30,#02,#31
	db #30,#02,#3d,#30,#02,#34,#30,#02
	db #40,#30,#02,#2d,#30,#02,#39,#30
	db #02,#2d,#30,#02,#39,#30,#02,#2d
	db #30,#02,#39,#30,#02,#2d,#30,#02
	db #39,#30,#02,#2d,#30,#02,#39,#30
	db #02,#2d,#30,#02,#39,#30,#02,#2d
	db #30,#02,#39,#30,#02,#2f,#30,#02
	db #3b,#30,#02,#ff,#25,#47,#13,#02
	db #31,#40,#02,#25,#40,#02,#31,#40
	db #02,#21,#40,#02,#2d,#40,#02,#21
	db #40,#02,#2d,#40,#02,#23,#40,#02
	db #2f,#40,#02,#23,#40,#02,#2f,#40
	db #02,#25,#40,#02,#31,#40,#02,#25
	db #40,#02,#31,#40,#02,#25,#40,#02
	db #31,#40,#02,#25,#40,#02,#31,#40
	db #02,#21,#40,#02,#2d,#40,#02,#21
	db #40,#02,#2d,#40,#02,#23,#40,#02
	db #2f,#40,#02,#23,#40,#02,#2f,#40
	db #02,#25,#40,#02,#31,#40,#02,#25
	db #40,#02,#31,#40,#02,#ff,#25,#40
	db #02,#31,#40,#02,#25,#40,#02,#31
	db #40,#02,#21,#40,#02,#2d,#40,#02
	db #21,#40,#02,#2d,#40,#02,#23,#40
	db #02,#2f,#40,#02,#23,#40,#02,#2f
	db #40,#02,#25,#40,#02,#31,#40,#02
	db #25,#40,#02,#31,#40,#02,#25,#40
	db #02,#31,#40,#02,#25,#40,#02,#31
	db #40,#02,#21,#40,#02,#2d,#40,#02
	db #21,#40,#02,#2d,#40,#02,#23,#40
	db #02,#2f,#40,#02,#23,#40,#02,#2f
	db #40,#02,#25,#40,#02,#31,#40,#02
	db #25,#40,#02,#31,#40,#02,#ff,#4c
	db #30,#02,#4c,#30,#02,#4e,#30,#02
	db #4f,#30,#04,#4c,#30,#02,#4e,#30
	db #02,#4f,#30,#02,#47,#30,#02,#47
	db #30,#02,#49,#30,#02,#4a,#30,#04
	db #4a,#30,#02,#4c,#30,#02,#4e,#30
	db #02,#4e,#30,#02,#4e,#30,#02,#50
	db #30,#02,#51,#30,#04,#4e,#30,#02
	db #50,#30,#02,#51,#30,#02,#51,#30
	db #02,#51,#30,#02,#53,#30,#02,#55
	db #30,#04,#55,#30,#02,#56,#30,#02
	db #58,#30,#02,#ff,#4c,#30,#02,#4c
	db #30,#02,#4c,#30,#02,#cc,#30,#4c
	db #30,#02,#4c,#30,#02,#cc,#30,#4c
	db #30,#02,#4c,#30,#02,#47,#30,#02
	db #47,#30,#02,#47,#30,#02,#c7,#30
	db #47,#30,#02,#47,#30,#02,#c7,#30
	db #47,#30,#02,#47,#30,#02,#4e,#30
	db #02,#4e,#30,#02,#4e,#30,#02,#ce
	db #30,#4e,#30,#02,#4e,#30,#02,#ce
	db #30,#4e,#30,#02,#4e,#30,#02,#51
	db #30,#02,#51,#30,#02,#51,#30,#02
	db #d1,#30,#51,#30,#02,#51,#30,#02
	db #d1,#30,#4f,#30,#02,#4e,#30,#02
	db #ff,#31,#2b,#13,#0b,#12,#b1,#20
	db #b1,#20,#3d,#20,#02,#b1,#20,#3d
	db #20,#02,#b1,#20,#bd,#20,#b1,#20
	db #bd,#20,#b1,#20,#bd,#20,#b1,#20
	db #31,#20,#02,#b1,#20,#b1,#20,#3d
	db #20,#02,#b1,#20,#3d,#20,#02,#b1
	db #20,#bd,#20,#b1,#20,#bd,#20,#b1
	db #20,#bd,#20,#b1,#20,#31,#20,#02
	db #b1,#20,#b1,#20,#3d,#20,#02,#b1
	db #20,#3d,#20,#02,#b1,#20,#bd,#20
	db #b1,#20,#bd,#20,#b1,#20,#bd,#20
	db #b1,#20,#31,#20,#02,#b1,#20,#b1
	db #20,#3d,#20,#02,#b1,#20,#3d,#20
	db #02,#b1,#20,#bd,#20,#b1,#20,#bd
	db #20,#b1,#20,#bd,#20,#bd,#20,#ff
	db #00,#40,#ff,#49,#40,#02,#c9,#40
	db #c9,#40,#49,#40,#02,#c9,#40,#c9
	db #40,#49,#40,#02,#c9,#40,#c9,#40
	db #49,#40,#02,#c9,#40,#c9,#40,#49
	db #40,#02,#c9,#40,#c9,#40,#49,#40
	db #02,#c9,#40,#c9,#40,#49,#40,#02
	db #c9,#40,#c9,#40,#4c,#40,#02,#cc
	db #40,#cc,#40,#45,#40,#02,#c5,#40
	db #c5,#40,#45,#40,#02,#c5,#40,#c5
	db #40,#45,#40,#02,#c5,#40,#c5,#40
	db #45,#40,#02,#c5,#40,#c5,#40,#45
	db #40,#02,#c5,#40,#c5,#40,#45,#40
	db #02,#c5,#40,#c5,#40,#45,#40,#02
	db #c5,#40,#c5,#40,#47,#40,#02,#c7
	db #40,#c7,#40,#ff,#44,#37,#0c,#02
	db #40,#30,#02,#42,#30,#02,#40,#30
	db #02,#39,#30,#02,#39,#30,#02,#3d
	db #30,#02,#39,#30,#02,#3b,#30,#02
	db #3b,#30,#02,#3f,#30,#02,#3b,#30
	db #02,#3d,#30,#02,#3d,#30,#02,#40
	db #30,#02,#3d,#30,#02,#44,#30,#02
	db #40,#30,#02,#42,#30,#02,#40,#30
	db #02,#39,#30,#02,#39,#30,#02,#3d
	db #30,#02,#39,#30,#02,#3b,#30,#02
	db #3b,#30,#02,#3f,#30,#02,#3b,#30
	db #02,#3d,#30,#02,#3d,#30,#02,#40
	db #30,#02,#3d,#30,#02,#ff,#49,#3c
	db #37,#08,#47,#3c,#37,#04,#44,#3c
	db #37,#04,#49,#3c,#37,#08,#4e,#3c
	db #37,#04,#50,#3c,#37,#04,#49,#3c
	db #37,#08,#47,#3c,#37,#04,#44,#3c
	db #37,#04,#49,#3c,#37,#08,#4e,#3c
	db #37,#04,#50,#3c,#37,#04,#ff,#49
	db #30,#02,#4b,#30,#02,#4c,#30,#02
	db #4b,#30,#02,#49,#30,#02,#4b,#30
	db #02,#4c,#30,#02,#4b,#30,#02,#49
	db #30,#02,#4b,#30,#02,#4c,#30,#02
	db #4b,#30,#02,#4e,#30,#04,#50,#30
	db #04,#49,#30,#02,#4b,#30,#02,#4c
	db #30,#02,#4b,#30,#02,#49,#30,#02
	db #4b,#30,#02,#4c,#30,#02,#4b,#30
	db #02,#49,#30,#02,#4b,#30,#02,#4c
	db #30,#02,#4b,#30,#02,#47,#30,#04
	db #49,#30,#04,#ff
;
.music_info
	db "Only For Your Eyes 2 Megademo - Illusion (1995)(Ast System)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
