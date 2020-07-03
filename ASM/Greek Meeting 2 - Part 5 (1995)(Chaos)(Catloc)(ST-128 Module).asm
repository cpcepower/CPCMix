; Music of Greek Meeting 2 - Part 5 (1995)(Chaos)(Catloc)(ST-128 Module)
; Ripped by Megachur the 02/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GREEM2P5.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #2800

	read "music_header.asm"

	jp l2809
	jp l289d
	jp l2881
;
.init_music
.l2809
;
	xor a
	ld hl,l2db4
	call l287a
	ld hl,l2de2
	call l287a
	ld hl,l2e10
	call l287a
	ld ix,l2db0
	ld iy,l2e3a
	ld de,#002e
	ld b,#03
.l2829
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
	djnz l2829
	ld hl,l2cc9
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
	ld (l2cc5),hl
	ld (l2cc7),hl
	ld a,#0c
	ld c,d
	call l2ca5
	ld a,#0d
	ld c,d
	jp l2ca5
.l287a
	ld b,#2a
.l287c
	ld (hl),a
	inc hl
	djnz l287c
	ret
;
.stop_music
.l2881
;
	ld a,#07
	ld c,#3f
	call l2ca5
	ld a,#08
	ld c,#00
	call l2ca5
	ld a,#09
	ld c,#00
	call l2ca5
	ld a,#0a
	ld c,#00
	jp l2ca5
;
.play_music
.l289d
;
	ld hl,l2ccb
	dec (hl)
	ld ix,l2db0
	ld bc,l2dbe
	call l293f
	ld ix,l2dde
	ld bc,l2dec
	call l293f
	ld ix,l2e0c
	ld bc,l2e1a
	call l293f
	ld hl,l2cc4
	ld de,l2ccb
	ld b,#06
	call l291c
	ld b,#07
	call l291c
	ld b,#0b
	call l291c
	ld b,#0d
	call l291c
	ld de,l2ccb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l2dcf
	call l28f5
	ld hl,l2dfd
	call l28f5
	ld hl,l2e2b
.l28f5
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
	jr nz,l290a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l290a
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
.l291c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l2ca5
.l2927
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l2ca5
.l293f
	ld a,(l2ccb)
	or a
	jp nz,l29f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l29f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l2927
	or a
	jp z,l29ec
	ld r,a
	and #7f
	cp #10
	jr c,l29c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l2b3f
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
	jr z,l29a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l29a0
	rrca
	ld c,a
	ld hl,l2e40
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
	jr z,l29bf
	ld (ix+#1e),b
.l29bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l29e0
.l29c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l2cd0
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
	add a
.l29e0
	ld a,d
	or a
	jr nz,l29ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l29ee
.l29ec
	ld a,(hl)
	inc hl
.l29ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l29f7
	ld a,(ix+#17)
	or a
	jr nz,l2a0d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l2a0d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l2a23
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l2a23
	ld a,(ix+#0d)
	or a
	jr z,l2a31
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l2a4f
.l2a31
	ld a,(ix+#1a)
	or a
	jp z,l2a56
	ld c,a
	cp #03
	jr nz,l2a3e
	xor a
.l2a3e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l2a4f
	ld a,(ix+#18)
	dec c
	jr z,l2a4f
	ld a,(ix+#19)
.l2a4f
	add (ix+#07)
	ld b,d
	call l2b3f
.l2a56
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l2a7e
	dec (ix+#1b)
	jr nz,l2a7e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l2ab6
.l2a7e
	ld a,(ix+#29)
	or a
	jr z,l2ab6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l2aad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l2aa4
	ld (ix+#29),#ff
	jr l2aad
.l2aa4
	cp (ix+#2b)
	jr nz,l2aad
	ld (ix+#29),#01
.l2aad
	ld b,d
	or a
	jp p,l2ab3
	dec b
.l2ab3
	ld c,a
	jr l2ac1
.l2ab6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l2ac1
	pop hl
	bit 7,(ix+#14)
	jr z,l2aca
	ld h,d
	ld l,d
.l2aca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l2ca5
	ld c,h
	ld a,(ix+#02)
	call l2ca5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l2b1d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l2b0c
	dec (ix+#09)
	jr nz,l2b0c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l2b04
	xor a
	jr l2b09
.l2b04
	cp #10
	jr nz,l2b09
	dec a
.l2b09
	ld (ix+#1e),a
.l2b0c
	ld a,b
	sub (ix+#1e)
	jr nc,l2b13
	xor a
.l2b13
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l2ca5
.l2b1d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l2ccc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l2b3b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l2b3b
	ld (l2ccc),hl
	ret
.l2b3f
	ld hl,l2cee
	cp #61
	jr nc,l2b49
	add a
	ld c,a
	add hl,bc
.l2b49
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l2b53
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l2c78
	ld (ix+#1e),a
	jp l29e0
.l2b65
	dec b
.l2b66
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l2b71
	neg
.l2b71
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
	jp l29e0
.l2b87
	dec b
	jr l2b8b
.l2b8a
	inc b
.l2b8b
	call l2c78
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l29e0
.l2b9a
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
	jp l2c5d
.l2bab
	ld a,(hl)
	inc hl
	or a
	jr z,l2bcd
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
.l2bcd
	ld (ix+#29),a
	jp l29e0
.l2bd3
	dec hl
	ld a,(hl)
	and #0f
	ld (l2ccf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l2cce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l29e0
.l2bed
	ld a,(hl)
	or a
	jr z,l2bfe
	call l2c7a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l29e0
.l2bfe
	ld hl,#0101
	ld (l2cca),hl
	jp l29e0
.l2c07
	call l2c78
	ld (ix+#1e),a
	jp l29e0
.l2c10
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l2c89
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l2c89
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l29e0
.l2c32
	ld a,(hl)
	inc hl
	ld (l2cc9),a
	jp l29e0
.l2c3a
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
	jp l29e0
.l2c59
	call l2c78
	add a
.l2c5d
	ld b,#00
	ld c,a
	push hl
	ld hl,l2ec0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l29e0
.l2c78
	ld a,(hl)
	inc hl
.l2c7a
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
.l2c89
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l2e40
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l2ca5
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
.l2cc4
	ret
.l2ccc equ $ + 7
.l2ccb equ $ + 6
.l2cca equ $ + 5
.l2cc9 equ $ + 4
.l2cc7 equ $ + 2
.l2cc5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2ccf equ $ + 2
.l2cce equ $ + 1
	db #38,#00,#00
.l2cd0
	dw l2b53,l2b66,l2b65,l2b8a
	dw l2b87,l2b9a,l2bab,l2bd3
	dw l2bed,l2bd3,l2c07,l2c10
	dw l2c32,l2c3a,l2c59
.l2cee
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
.l2db4 equ $ + 4
.l2db0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l2dbe equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2dcf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2dde equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l2de2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l2dec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2dfd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2e0c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l2e10
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2e1a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2e2b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2e3a equ $ + 2
	db #00,#00,#a0,#31,#cd,#31,#fa,#31
.l2e40
	db #d2,#e7,#a4,#e7,#a4,#e7,#d2,#ff
	db #d2,#e7,#a4,#e7,#a4,#e7,#d2,#ff
	db #e0,#2e,#20,#2f,#40,#2f,#00,#00
	db #d2,#e7,#a4,#e7,#a4,#e7,#d2,#ff
	db #d2,#e7,#32,#2f,#72,#2f,#40,#47
	db #e8,#f1,#92,#2f,#d2,#2f,#40,#47
	db #d2,#e7,#f2,#2f,#32,#30,#80,#48
	db #6c,#ee,#b2,#2e,#32,#30,#80,#48
	db #6c,#ee,#72,#30,#b2,#30,#00,#49
	db #92,#e8,#f2,#30,#32,#31,#80,#49
	db #60,#2f,#a0,#2f,#40,#2f,#16,#0a
	db #c0,#2f,#00,#30,#40,#2f,#00,#00
	db #20,#30,#60,#30,#80,#30,#9a,#06
	db #e0,#2e,#60,#30,#80,#30,#9a,#06
	db #a0,#30,#e0,#30,#00,#31,#c0,#00
	db #20,#31,#60,#31,#80,#31,#80,#00
.l2ec0
	db #d2,#e7,#d2,#e7,#d2,#e7,#d2,#e7
	db #d2,#e7,#d2,#e7,#d2,#e7,#d2,#e7
	db #d2,#e7,#d2,#e7,#d2,#e7,#d2,#e7
	db #d2,#e7,#d2,#e7,#d2,#e7,#d2,#e7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0e,#0d,#0c,#0b,#0b
	db #0b,#0a,#0a,#09,#09,#08,#08,#07
	db #06,#05,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#02,#00
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0d,#0e,#0e,#0b,#0a,#0a,#0a
	db #0b,#0b,#0b,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#ff,#ff,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fc,#ff,#fb,#ff,#fa,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0a,#0a,#0a,#09,#08
	db #10,#00,#10,#00,#10,#00,#10,#00
	db #10,#00,#10,#00,#10,#00,#10,#00
	db #10,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0c,#0a,#08,#06,#04,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#35,#01,#0e,#01,#00,#00
	db #93,#04,#35,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #40,#01,#90,#01,#e0,#01,#30,#02
	db #80,#02,#d0,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0f,#0f,#0f,#0f,#0f,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #08,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#27,#32,#00,#2a,#32,#00,#5b
	db #32,#00,#5b,#32,#00,#8c,#32,#00
	db #8c,#32,#00,#bd,#32,#00,#bd,#32
	db #00,#1e,#33,#00,#1e,#33,#00,#1e
	db #33,#00,#1e,#33,#00,#7f,#33,#00
	db #e0,#33,#80,#a0,#31,#00,#27,#32
	db #00,#49,#34,#00,#49,#34,#00,#49
	db #34,#00,#4c,#34,#00,#4c,#34,#00
	db #4c,#34,#00,#4c,#34,#00,#5d,#34
	db #00,#5d,#34,#00,#5d,#34,#00,#8e
	db #34,#00,#ef,#34,#00,#ef,#34,#80
	db #cd,#31,#00,#70,#35,#00,#ab,#35
	db #00,#13,#36,#00,#13,#36,#00,#13
	db #36,#00,#13,#36,#00,#13,#36,#00
	db #13,#36,#00,#13,#36,#00,#13,#36
	db #00,#13,#36,#00,#94,#36,#00,#15
	db #37,#00,#76,#37,#80,#fa,#31,#fe
	db #40,#ff,#2c,#20,#04,#2c,#20,#04
	db #2c,#20,#04,#2c,#20,#04,#2c,#20
	db #04,#2c,#20,#04,#2c,#20,#04,#2c
	db #20,#04,#2f,#20,#04,#2f,#20,#04
	db #2f,#20,#04,#2f,#20,#04,#2f,#20
	db #04,#2f,#20,#04,#2f,#20,#04,#2f
	db #20,#04,#ff,#2a,#20,#04,#2a,#20
	db #04,#2a,#20,#04,#2a,#20,#04,#2a
	db #20,#04,#2a,#20,#04,#2a,#20,#04
	db #2a,#20,#04,#31,#20,#04,#2d,#20
	db #04,#2d,#20,#04,#2d,#20,#04,#2d
	db #20,#04,#2d,#20,#04,#2d,#20,#04
	db #2d,#20,#04,#ff,#31,#20,#04,#31
	db #20,#04,#31,#20,#04,#31,#20,#04
	db #31,#20,#04,#31,#20,#04,#31,#20
	db #04,#31,#20,#04,#2f,#20,#04,#2f
	db #20,#04,#2f,#20,#04,#2f,#20,#04
	db #2f,#20,#04,#2f,#20,#04,#2f,#20
	db #04,#2f,#20,#04,#ff,#2f,#20,#02
	db #44,#20,#02,#2f,#20,#02,#4b,#20
	db #02,#2f,#20,#02,#44,#20,#02,#2f
	db #20,#02,#49,#20,#02,#2f,#20,#02
	db #44,#20,#02,#2f,#20,#02,#4b,#20
	db #02,#2f,#20,#02,#44,#20,#02,#2f
	db #20,#02,#49,#20,#02,#2d,#20,#02
	db #44,#20,#02,#2d,#20,#02,#4b,#20
	db #02,#2d,#20,#02,#44,#20,#02,#2d
	db #20,#02,#49,#20,#02,#2d,#20,#02
	db #44,#20,#02,#2d,#20,#02,#4b,#20
	db #02,#2d,#20,#02,#44,#20,#02,#2d
	db #20,#02,#49,#20,#02,#ff,#33,#20
	db #02,#44,#20,#02,#33,#20,#02,#4b
	db #20,#02,#33,#20,#02,#44,#20,#02
	db #33,#20,#02,#49,#20,#02,#33,#20
	db #02,#44,#20,#02,#33,#20,#02,#4b
	db #20,#02,#33,#20,#02,#44,#20,#02
	db #33,#20,#02,#49,#20,#02,#31,#20
	db #02,#44,#20,#02,#31,#20,#02,#4b
	db #20,#02,#31,#20,#02,#44,#20,#02
	db #31,#20,#02,#49,#20,#02,#31,#20
	db #02,#44,#20,#02,#31,#20,#02,#4b
	db #20,#02,#31,#20,#02,#44,#20,#02
	db #31,#20,#02,#49,#20,#02,#ff,#38
	db #20,#02,#38,#20,#02,#38,#20,#02
	db #38,#20,#02,#38,#20,#02,#38,#20
	db #02,#38,#20,#02,#38,#20,#02,#39
	db #20,#02,#39,#20,#02,#39,#20,#02
	db #39,#20,#02,#39,#20,#02,#39,#20
	db #02,#39,#20,#02,#39,#20,#02,#3b
	db #20,#02,#3b,#20,#02,#3b,#20,#02
	db #3b,#20,#02,#3b,#20,#02,#3b,#20
	db #02,#3b,#20,#02,#3b,#20,#02,#36
	db #20,#02,#36,#20,#02,#36,#20,#02
	db #36,#20,#02,#36,#20,#02,#36,#20
	db #02,#36,#20,#02,#36,#20,#02,#ff
	db #38,#20,#02,#38,#20,#02,#38,#20
	db #02,#38,#20,#02,#38,#20,#02,#38
	db #20,#02,#38,#20,#02,#38,#20,#02
	db #39,#20,#02,#39,#20,#02,#39,#20
	db #02,#39,#20,#02,#39,#20,#02,#39
	db #20,#02,#39,#20,#02,#39,#20,#02
	db #3b,#20,#02,#3b,#20,#02,#3b,#20
	db #02,#3b,#20,#02,#3b,#20,#02,#3b
	db #20,#02,#3b,#20,#02,#3b,#20,#02
	db #b8,#e0,#b8,#e0,#b8,#e0,#b8,#e0
	db #b8,#e0,#b8,#e0,#b8,#e0,#b8,#e0
	db #b8,#e0,#b8,#e0,#b8,#e0,#b8,#e0
	db #b8,#e0,#b8,#e0,#b8,#e0,#b8,#e0
	db #ff,#00,#40,#ff,#44,#b9,#03,#10
	db #47,#b9,#03,#10,#49,#b9,#03,#10
	db #45,#b9,#03,#10,#ff,#38,#b0,#04
	db #4b,#b0,#04,#38,#b0,#04,#49,#b0
	db #04,#38,#b0,#04,#4b,#b0,#04,#38
	db #b0,#04,#49,#b0,#04,#38,#b0,#04
	db #4b,#b0,#04,#38,#b0,#04,#49,#b0
	db #04,#38,#b0,#04,#4b,#b0,#04,#38
	db #b0,#04,#49,#b0,#04,#ff,#38,#b0
	db #02,#38,#a0,#02,#4b,#b0,#02,#39
	db #a0,#02,#38,#b0,#02,#38,#a0,#02
	db #49,#b0,#02,#39,#a0,#02,#38,#b0
	db #02,#38,#a0,#02,#4b,#b0,#02,#39
	db #a0,#02,#38,#b0,#02,#38,#a0,#02
	db #49,#b0,#02,#39,#a0,#02,#38,#b0
	db #02,#3d,#a0,#02,#4b,#b0,#02,#3f
	db #a0,#02,#38,#b0,#02,#3d,#a0,#02
	db #49,#b0,#02,#3f,#a0,#02,#38,#b0
	db #02,#3d,#a0,#02,#4b,#b0,#02,#3f
	db #a0,#02,#38,#b0,#02,#3d,#a0,#02
	db #49,#b0,#02,#3f,#a0,#02,#ff,#b8
	db #20,#bf,#20,#b8,#20,#bd,#20,#b8
	db #20,#bf,#20,#b8,#20,#bd,#20,#b8
	db #20,#bf,#20,#b8,#20,#bd,#20,#b8
	db #20,#bf,#20,#b8,#20,#bd,#20,#b9
	db #20,#bf,#20,#b9,#20,#bd,#20,#b9
	db #20,#bf,#20,#b9,#20,#bd,#20,#b9
	db #20,#bf,#20,#b9,#20,#bd,#20,#b9
	db #20,#bf,#20,#b9,#20,#bd,#20,#bd
	db #20,#c0,#20,#bd,#20,#bf,#20,#bd
	db #20,#c0,#20,#bd,#20,#bf,#20,#bd
	db #20,#c0,#20,#bd,#20,#bf,#20,#bd
	db #20,#c0,#20,#bd,#20,#bf,#20,#bb
	db #20,#b9,#20,#bb,#20,#b9,#20,#bb
	db #20,#b9,#20,#bb,#20,#b9,#20,#bb
	db #20,#b9,#20,#bb,#20,#b9,#20,#bb
	db #20,#b9,#20,#bb,#20,#b9,#20,#ff
	db #38,#d0,#04,#38,#d0,#04,#38,#d0
	db #04,#38,#d0,#04,#38,#d0,#04,#38
	db #d0,#04,#38,#d0,#04,#38,#d0,#04
	db #38,#d0,#04,#38,#d0,#04,#38,#d0
	db #04,#38,#d0,#04,#38,#d0,#04,#38
	db #d0,#04,#b8,#d0,#ac,#e0,#ac,#e0
	db #ac,#e0,#b8,#d0,#ac,#e0,#ac,#e0
	db #ac,#e0,#ff,#38,#d0,#02,#b8,#d0
	db #38,#d0,#02,#38,#d0,#02,#b8,#d0
	db #38,#d0,#02,#38,#d0,#02,#b8,#d0
	db #38,#d0,#02,#38,#d0,#02,#b8,#d0
	db #38,#d0,#02,#38,#d0,#02,#b8,#d0
	db #38,#d0,#02,#38,#d0,#02,#b8,#d0
	db #38,#d0,#02,#38,#d0,#02,#b8,#d0
	db #38,#d0,#02,#38,#d0,#02,#b8,#d0
	db #38,#d0,#02,#38,#d0,#02,#b8,#d0
	db #38,#d0,#02,#38,#d0,#02,#b8,#d0
	db #38,#d0,#02,#38,#d0,#02,#b8,#d0
	db #38,#d0,#02,#38,#d0,#02,#b8,#d0
	db #38,#d0,#02,#38,#d0,#02,#b8,#d0
	db #b8,#d0,#ff,#b8,#d0,#b8,#e0,#b8
	db #c0,#b8,#d0,#b8,#e0,#b8,#d0,#b8
	db #e0,#b8,#c0,#b8,#d0,#b8,#e0,#b8
	db #d0,#b8,#e0,#b8,#c0,#b8,#c0,#b8
	db #e0,#b8,#d0,#b8,#e0,#b8,#c0,#b8
	db #d0,#b8,#e0,#b8,#d0,#b8,#e0,#b8
	db #c0,#b8,#d0,#b8,#e0,#b8,#d0,#b8
	db #e0,#b8,#c0,#b8,#c0,#b8,#e0,#b8
	db #d0,#b8,#e0,#b8,#c0,#b8,#d0,#b8
	db #e0,#b8,#d0,#b8,#e0,#b8,#c0,#b8
	db #d0,#b8,#e0,#b8,#d0,#b8,#e0,#b8
	db #c0,#b8,#c0,#b8,#e0,#b8,#d0,#b8
	db #e0,#b8,#c0,#b8,#d0,#b8,#e0,#b8
	db #d0,#b8,#e0,#b8,#c0,#b8,#d0,#b8
	db #e0,#b8,#d0,#b8,#e0,#b8,#c0,#b8
	db #c0,#b8,#e0,#b8,#d0,#b8,#e0,#b8
	db #c0,#b8,#d0,#ff,#b8,#d0,#b8,#e0
	db #b8,#c0,#b8,#d0,#b8,#e0,#b8,#d0
	db #b8,#e0,#b8,#c0,#b8,#d0,#b8,#e0
	db #b8,#d0,#b8,#e0,#b8,#c0,#b8,#c0
	db #b8,#e0,#b8,#d0,#b8,#e0,#b8,#c0
	db #b8,#d0,#b8,#e0,#b8,#d0,#b8,#e0
	db #b8,#c0,#b8,#d0,#b8,#e0,#b8,#d0
	db #b8,#e0,#b8,#c0,#b8,#c0,#b8,#e0
	db #b8,#d0,#b8,#e0,#b8,#c0,#b8,#d0
	db #b8,#e0,#b8,#d0,#b8,#e0,#b8,#c0
	db #b8,#d0,#b8,#e0,#b8,#d0,#b8,#e0
	db #b8,#c0,#b8,#c0,#b8,#e0,#b8,#d0
	db #b8,#e0,#b8,#c0,#b8,#d0,#b8,#e0
	db #b8,#d0,#b8,#e0,#b8,#c0,#b8,#d0
	db #b8,#e0,#b8,#d0,#b8,#e0,#b8,#c0
	db #b8,#c0,#b8,#e0,#b8,#e0,#b8,#f0
	db #b8,#f0,#b8,#f0,#ff,#38,#e0,#02
	db #38,#f0,#02,#38,#f0,#02,#38,#f0
	db #02,#38,#f0,#02,#38,#f0,#02,#38
	db #f0,#02,#38,#f0,#02,#38,#e0,#02
	db #38,#f0,#02,#38,#f0,#02,#38,#f0
	db #02,#38,#f0,#02,#38,#f0,#02,#38
	db #f0,#02,#38,#f0,#02,#38,#e0,#02
	db #38,#f0,#02,#38,#f0,#02,#38,#f0
	db #02,#38,#f0,#02,#38,#f0,#02,#38
	db #f0,#02,#38,#f0,#02,#38,#e0,#02
	db #38,#f0,#02,#38,#f0,#02,#38,#f0
	db #02,#38,#f0,#02,#38,#f0,#02,#38
	db #f0,#02,#38,#f0,#02,#ff,#38,#e0
	db #02,#38,#f0,#02,#38,#f0,#02,#38
	db #f0,#02,#38,#f0,#02,#38,#f0,#02
	db #38,#f0,#02,#38,#f0,#02,#38,#e0
	db #02,#38,#f0,#02,#38,#f0,#02,#38
	db #f0,#02,#38,#f0,#02,#38,#f0,#02
	db #38,#f0,#02,#38,#f0,#02,#38,#e0
	db #02,#38,#f0,#02,#38,#f0,#02,#38
	db #f0,#02,#38,#f0,#02,#38,#f0,#02
	db #38,#f0,#02,#38,#f0,#02,#b8,#e0
	db #b8,#e0,#b8,#e0,#b8,#e0,#b8,#e0
	db #b8,#e0,#b8,#e0,#b8,#e0,#b8,#e0
	db #b8,#e0,#b8,#e0,#b8,#e0,#b8,#e0
	db #b8,#e0,#b8,#e0,#b8,#e0,#ff
;
.music_info
	db "Greek Meeting 2 - Part 5 (1995)(Chaos)(Catloc)",0
	db "ST-128 Module",0

	read "music_end.asm"
