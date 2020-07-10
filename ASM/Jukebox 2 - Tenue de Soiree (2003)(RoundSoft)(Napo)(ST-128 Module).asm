; Music of Jukebox 2 - Tenue de Soiree (2003)(RoundSoft)(Napo)(ST-128 Module)
; Ripped by Megachur the 21/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JUKEB2TS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #6838

	read "music_header.asm"

	jr l683c
	jr l684b
.l683c
	call l686f
	ld hl,l685c
	ld de,l6854
	ld bc,#81ff
	jp #bcd7
.l684b
	ld hl,l685c
	call #bcdd
	jp l68e7
.l6854
	push ix
	call l6903
	pop ix
	ret
.l685c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l686f
	jp l6903
	jp l68e7
;
.init_music
.l686f
;
	xor a
	ld hl,l6e1a
	call l68e0
	ld hl,l6e48
	call l68e0
	ld hl,l6e76
	call l68e0
	ld ix,l6e16
	ld iy,l6ea0
	ld de,#002e
	ld b,#03
.l688f
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
	djnz l688f
	ld hl,l6d2f
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
	ld (l6d2b),hl
	ld (l6d2d),hl
	ld a,#0c
	ld c,d
	call l6d0b
	ld a,#0d
	ld c,d
	jp l6d0b
.l68e0
	ld b,#2a
.l68e2
	ld (hl),a
	inc hl
	djnz l68e2
	ret
;
.stop_music
.l68e7
;
	ld a,#07
	ld c,#3f
	call l6d0b
	ld a,#08
	ld c,#00
	call l6d0b
	ld a,#09
	ld c,#00
	call l6d0b
	ld a,#0a
	ld c,#00
	jp l6d0b
;
.play_music
.l6903
;
	ld hl,l6d31
	dec (hl)
	ld ix,l6e16
	ld bc,l6e24
	call l69a5
	ld ix,l6e44
	ld bc,l6e52
	call l69a5
	ld ix,l6e72
	ld bc,l6e80
	call l69a5
	ld hl,l6d2a
	ld de,l6d31
	ld b,#06
	call l6982
	ld b,#07
	call l6982
	ld b,#0b
	call l6982
	ld b,#0d
	call l6982
	ld de,l6d31
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6e35
	call l695b
	ld hl,l6e63
	call l695b
	ld hl,l6e91
.l695b
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
	jr nz,l6970
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6970
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
.l6982
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6d0b
.l698d
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6d0b
.l69a5
	ld a,(l6d31)
	or a
	jp nz,l6a5d
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6a5d
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l698d
	or a
	jp z,l6a52
	ld r,a
	and #7f
	cp #10
	jr c,l6a2d
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l6ba5
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
	jr z,l6a06
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l6a06
	rrca
	ld c,a
	ld hl,l6ea6
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
	jr z,l6a25
	ld (ix+#1e),b
.l6a25
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6a46
.l6a2d
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6d36
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	ld sp,#3332
	inc (hl)
	dec (hl)
.l6a46 equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l6a54
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l6a54
.l6a52
	ld a,(hl)
	inc hl
.l6a54
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6a5d
	ld a,(ix+#17)
	or a
	jr nz,l6a73
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l6a73
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6a89
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6a89
	ld a,(ix+#0d)
	or a
	jr z,l6a97
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l6ab5
.l6a97
	ld a,(ix+#1a)
	or a
	jp z,l6abc
	ld c,a
	cp #03
	jr nz,l6aa4
	xor a
.l6aa4
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l6ab5
	ld a,(ix+#18)
	dec c
	jr z,l6ab5
	ld a,(ix+#19)
.l6ab5
	add (ix+#07)
	ld b,d
	call l6ba5
.l6abc
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6ae4
	dec (ix+#1b)
	jr nz,l6ae4
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6b1c
.l6ae4
	ld a,(ix+#29)
	or a
	jr z,l6b1c
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l6b13
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6b0a
	ld (ix+#29),#ff
	jr l6b13
.l6b0a
	cp (ix+#2b)
	jr nz,l6b13
	ld (ix+#29),#01
.l6b13
	ld b,d
	or a
	jp p,l6b19
	dec b
.l6b19
	ld c,a
	jr l6b27
.l6b1c
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6b27
	pop hl
	bit 7,(ix+#14)
	jr z,l6b30
	ld h,d
	ld l,d
.l6b30
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6d0b
	ld c,h
	ld a,(ix+#02)
	call l6d0b
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6b83
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l6b72
	dec (ix+#09)
	jr nz,l6b72
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6b6a
	xor a
	jr l6b6f
.l6b6a
	cp #10
	jr nz,l6b6f
	dec a
.l6b6f
	ld (ix+#1e),a
.l6b72
	ld a,b
	sub (ix+#1e)
	jr nc,l6b79
	xor a
.l6b79
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6d0b
.l6b83
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6d32)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6ba1
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6ba1
	ld (l6d32),hl
	ret
.l6ba5
	ld hl,l6d54
	cp #61
	jr nc,l6baf
	add a
	ld c,a
	add hl,bc
.l6baf
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6cde
	ld (ix+#1e),a
	jp l6a46
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6bd7
	neg
.l6bd7
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
	jp l6a46
	dec b
	jr l6bf1
	inc b
.l6bf1
	call l6cde
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6a46
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
	jp l6cc3
	ld a,(hl)
	inc hl
	or a
	jr z,l6c33
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
.l6c33
	ld (ix+#29),a
	jp l6a46
	dec hl
	ld a,(hl)
	and #0f
	ld (l6d35),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6d34),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6a46
	ld a,(hl)
	or a
	jr z,l6c64
	call l6ce0
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6a46
.l6c64
	ld hl,#0101
	ld (l6d30),hl
	jp l6a46
	call l6cde
	ld (ix+#1e),a
	jp l6a46
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6cef
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6cef
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6a46
	ld a,(hl)
	inc hl
	ld (l6d2f),a
	jp l6a46
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
	jp l6a46
	call l6cde
	add a
.l6cc3
	ld b,#00
	ld c,a
	push hl
	ld hl,l6f26
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6a46
.l6cde
	ld a,(hl)
	inc hl
.l6ce0
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
.l6cef
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6ea6
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l6d53
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l6d0b
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
.l6d2a
	ret
.l6d32 equ $ + 7
.l6d31 equ $ + 6
.l6d30 equ $ + 5
.l6d2f equ $ + 4
.l6d2d equ $ + 2
.l6d2b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6d35 equ $ + 2
.l6d34 equ $ + 1
	db #38,#00,#00
.l6d36
	dw #6bb9,#6bcc,#6bcb,#6bf0
	dw #6bed,#6c00,#6c11,#6c39
	dw #6c53,#6c39,#6c6d,#6c76
.l6d53 equ $ + 5
	dw #6c98,#6ca0,#6cbf
.l6d54
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
.l6e16 equ $ + 2
	dw #000f,#0008
.l6e1a equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l6e24 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e35 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e44 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l6e48
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e52 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e63 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e76 equ $ + 6
.l6e72 equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e91 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6ea6 equ $ + 6
.l6ea0
	db #86,#70,#9e,#70,#b6,#70,#46,#6f
	db #86,#6f,#a6,#6f,#00,#00,#46,#6f
	db #c6,#6f,#a6,#6f,#00,#00,#46,#6f
	db #e6,#6f,#06,#70,#00,#00,#46,#6f
	db #26,#70,#46,#70,#00,#00,#46,#6f
	db #66,#70,#a6,#6f,#00,#00,#ac,#46
	db #ac,#46,#ac,#46,#00,#00,#ac,#46
	db #ac,#46,#ac,#46,#00,#00,#ac,#46
	db #ac,#46,#ac,#46,#00,#00,#ac,#46
	db #ac,#46,#ac,#46,#00,#00,#ac,#46
	db #ac,#46,#ac,#46,#00,#00,#ac,#46
	db #ac,#46,#ac,#46,#00,#00,#ac,#46
	db #ac,#46,#ac,#46,#00,#00,#ac,#46
	db #ac,#46,#ac,#46,#00,#00,#ac,#46
	db #ac,#46,#ac,#46,#00,#00,#ac,#46
	db #ac,#46,#ac,#46,#00,#00,#ac,#46
.l6f26 equ $ + 6
	db #ac,#46,#ac,#46,#00,#00,#ac,#46
	db #ac,#46,#ac,#46,#ac,#46,#ac,#46
	db #ac,#46,#ac,#46,#ac,#46,#ac,#46
	db #ac,#46,#ac,#46,#ac,#46,#ac,#46
	db #ac,#46,#ac,#46,#ac,#46,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0c,#0e,#0d,#0c,#0d,#0a,#0d,#0f
	db #0e,#0d,#0c,#0b,#08,#05,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#0c
	db #0a,#0a,#09,#0a,#0a,#0a,#0a,#0b
	db #0c,#0c,#0a,#0a,#0c,#0a,#0a,#0b
	db #0c,#0a,#0a,#08,#0b,#0c,#0a,#0a
	db #0a,#0a,#0c,#0c,#0c,#09,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0c
	db #0e,#0c,#0d,#0c,#0a,#08,#05,#04
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12,#19
	db #1f,#1b,#1f,#1b,#19,#1a,#14,#1b
	db #19,#15,#1b,#1b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09,#0c
	db #0b,#0b,#09,#0b,#08,#0c,#09,#09
	db #09,#0b,#08,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ce
	db #70,#00,#29,#71,#00,#92,#71,#00
	db #f5,#71,#00,#32,#73,#00,#64,#72
	db #00,#d3,#72,#80,#86,#70,#00,#94
	db #73,#00,#15,#74,#00,#95,#74,#00
	db #15,#74,#00,#95,#74,#00,#15,#74
	db #00,#95,#74,#80,#9e,#70,#00,#16
	db #75,#00,#d7,#75,#00,#d7,#75,#00
	db #d7,#75,#00,#d7,#75,#00,#d7,#75
	db #00,#d7,#75,#80,#b6,#70,#00,#02
	db #67,#11,#20,#6a,#10,#02,#6c,#10
	db #02,#6e,#10,#02,#ee,#10,#6c,#10
	db #03,#6e,#10,#02,#fe,#02,#67,#10
	db #02,#6a,#10,#02,#6c,#10,#02,#6e
	db #10,#02,#ee,#10,#6c,#10,#03,#6e
	db #10,#02,#fe,#02,#65,#10,#02,#69
	db #10,#02,#6a,#10,#02,#6c,#10,#02
	db #ec,#10,#6a,#10,#03,#69,#10,#02
	db #6a,#10,#02,#67,#10,#02,#67,#10
	db #02,#e5,#10,#67,#10,#03,#fe,#02
	db #4a,#4e,#cc,#02,#48,#4e,#cc,#02
	db #ff,#4a,#4e,#cc,#02,#4a,#4e,#cc
	db #02,#48,#4e,#cc,#02,#4a,#4e,#cc
	db #04,#4a,#4e,#cc,#02,#4a,#4e,#cc
	db #02,#4a,#4e,#cc,#02,#4b,#4e,#cc
	db #02,#4b,#4e,#cc,#02,#4d,#4e,#cc
	db #02,#4b,#4e,#cc,#06,#4d,#4e,#cc
	db #02,#4b,#4e,#cc,#02,#48,#4e,#cc
	db #02,#48,#4e,#cc,#02,#48,#4e,#cc
	db #02,#48,#4e,#cc,#04,#48,#4e,#cc
	db #02,#48,#4e,#cc,#02,#48,#4e,#cc
	db #02,#4a,#4e,#cc,#02,#4f,#4e,#cc
	db #02,#4d,#4e,#cc,#02,#4a,#4e,#cc
	db #06,#4a,#4e,#cc,#02,#48,#4e,#cc
	db #02,#ff,#4a,#4e,#cc,#02,#4a,#4e
	db #cc,#02,#48,#4e,#cc,#02,#4a,#4e
	db #cc,#04,#4a,#4e,#cc,#02,#4a,#4e
	db #cc,#02,#4a,#4e,#cc,#02,#4b,#4e
	db #cc,#02,#4b,#4e,#cc,#02,#4d,#4e
	db #cc,#02,#4b,#4e,#cc,#04,#4b,#40
	db #02,#4b,#4e,#cc,#02,#4b,#4e,#cc
	db #02,#4a,#4e,#cc,#02,#4a,#4e,#cc
	db #02,#4a,#4e,#cc,#02,#4a,#4e,#cc
	db #02,#4a,#40,#02,#4a,#4e,#cc,#02
	db #4a,#4e,#cc,#02,#4a,#4e,#cc,#02
	db #4f,#4e,#cc,#02,#4f,#4e,#cc,#0c
	db #48,#4e,#cc,#02,#ff,#4a,#4e,#cc
	db #02,#48,#4e,#c0,#02,#4a,#4e,#c0
	db #02,#c8,#4e,#c0,#4a,#4e,#c0,#03
	db #4a,#4e,#c0,#02,#4a,#4e,#c0,#02
	db #4a,#4e,#c0,#02,#4b,#4e,#c0,#02
	db #4b,#4e,#c0,#02,#4d,#4e,#c0,#02
	db #4b,#4e,#c0,#06,#4d,#4e,#c0,#02
	db #4b,#4e,#c0,#02,#48,#4e,#c0,#02
	db #46,#4e,#c0,#02,#48,#4e,#c0,#02
	db #c6,#4e,#c0,#48,#4e,#c0,#03,#48
	db #4e,#c0,#02,#48,#4e,#c0,#02,#48
	db #4e,#c0,#02,#4a,#4e,#c0,#02,#4f
	db #4e,#c0,#02,#4d,#4e,#c0,#02,#4a
	db #4e,#c0,#06,#4a,#4e,#c0,#02,#48
	db #4e,#c0,#02,#ff,#4f,#4e,#cc,#02
	db #4d,#4e,#c0,#02,#4f,#4e,#c0,#02
	db #cd,#4e,#c0,#4f,#4e,#c0,#03,#4f
	db #4e,#c0,#02,#4f,#4e,#c0,#02,#4f
	db #4e,#c0,#02,#4f,#4e,#c0,#02,#4f
	db #4e,#c0,#02,#51,#4e,#c0,#02,#4f
	db #4e,#c0,#06,#51,#4e,#c0,#02,#4f
	db #4e,#c0,#02,#4d,#4e,#c0,#02,#4b
	db #4e,#c0,#02,#4d,#4e,#c0,#02,#cb
	db #4e,#c0,#4d,#4e,#c0,#03,#4d,#4e
	db #c0,#02,#4d,#4e,#c0,#02,#4d,#4e
	db #c0,#02,#4d,#4e,#c0,#02,#4d,#4e
	db #c0,#02,#4f,#4e,#c0,#02,#4d,#4e
	db #c0,#06,#4f,#4e,#c0,#02,#4d,#4e
	db #c0,#02,#ff,#4a,#4e,#cc,#02,#4f
	db #4e,#cc,#02,#4d,#4e,#cc,#02,#4a
	db #4e,#cc,#04,#4a,#4e,#cc,#02,#4a
	db #4e,#cc,#02,#4a,#4e,#cc,#02,#4b
	db #4e,#cc,#02,#4b,#4e,#cc,#02,#4d
	db #4e,#cc,#02,#4b,#4e,#cc,#04,#4b
	db #40,#02,#4b,#4e,#cc,#02,#4b,#4e
	db #cc,#02,#4a,#4e,#cc,#02,#4a,#4e
	db #cc,#02,#4a,#4e,#cc,#02,#4a,#4e
	db #cc,#02,#4a,#40,#02,#4a,#4e,#cc
	db #02,#4a,#4e,#cc,#02,#4a,#4e,#cc
	db #02,#4f,#4e,#cc,#02,#4f,#4e,#cc
	db #0e,#ff,#4a,#4e,#cc,#02,#4a,#4e
	db #cc,#02,#48,#4e,#cc,#02,#4a,#4e
	db #cc,#04,#4a,#4e,#cc,#02,#4a,#4e
	db #cc,#02,#4a,#4e,#cc,#02,#4b,#4e
	db #cc,#02,#4b,#4e,#cc,#02,#4d,#4e
	db #cc,#02,#4b,#4e,#cc,#04,#4b,#40
	db #02,#4b,#4e,#cc,#02,#4b,#4e,#cc
	db #02,#4a,#4e,#cc,#02,#4a,#4e,#cc
	db #02,#4a,#4e,#cc,#02,#4a,#4e,#cc
	db #02,#4a,#40,#02,#4a,#4e,#cc,#02
	db #4a,#4e,#cc,#02,#4a,#4e,#cc,#02
	db #4f,#4e,#cc,#02,#4f,#4e,#cc,#0c
	db #4d,#40,#02,#ff,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#a9,#00,#fe,#01
	db #a9,#00,#fe,#01,#a9,#00,#fe,#01
	db #a9,#00,#fe,#01,#a9,#00,#fe,#01
	db #a9,#00,#fe,#01,#a9,#00,#fe,#01
	db #a9,#00,#fe,#01,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#ab,#00,#fe,#01
	db #ab,#00,#fe,#01,#ff,#ab,#00,#fe
	db #01,#ab,#00,#fe,#01,#ab,#00,#fe
	db #01,#ab,#00,#fe,#01,#ab,#00,#fe
	db #01,#ab,#00,#fe,#01,#ab,#00,#fe
	db #01,#ab,#00,#fe,#01,#a4,#00,#fe
	db #01,#a4,#00,#fe,#01,#a4,#00,#fe
	db #01,#a4,#00,#fe,#01,#a4,#00,#fe
	db #01,#a4,#00,#fe,#01,#a4,#00,#fe
	db #01,#a4,#00,#fe,#01,#a9,#00,#fe
	db #01,#a9,#00,#fe,#01,#a9,#00,#fe
	db #01,#a9,#00,#fe,#01,#29,#00,#02
	db #a9,#00,#fe,#01,#a9,#00,#fe,#01
	db #a9,#00,#fe,#01,#a2,#00,#fe,#01
	db #a2,#00,#fe,#01,#a2,#00,#fe,#01
	db #a2,#00,#fe,#01,#a2,#00,#fe,#01
	db #a2,#00,#fe,#01,#ae,#00,#fe,#01
	db #ad,#00,#fe,#01,#ff,#ab,#00,#fe
	db #01,#ab,#00,#fe,#01,#ab,#00,#fe
	db #01,#ab,#00,#fe,#01,#ab,#00,#fe
	db #01,#ab,#00,#fe,#01,#ab,#00,#fe
	db #01,#ab,#00,#fe,#01,#a4,#00,#fe
	db #01,#a4,#00,#fe,#01,#a4,#00,#fe
	db #01,#a4,#00,#fe,#01,#a4,#00,#fe
	db #01,#a4,#00,#fe,#01,#a4,#00,#fe
	db #01,#a4,#00,#fe,#01,#a6,#00,#fe
	db #01,#a6,#00,#fe,#01,#a6,#00,#fe
	db #01,#a6,#00,#fe,#01,#a6,#00,#fe
	db #01,#a6,#00,#fe,#01,#aa,#00,#fe
	db #01,#aa,#00,#fe,#01,#ab,#00,#fe
	db #01,#9f,#00,#fe,#01,#ab,#00,#fe
	db #01,#9f,#00,#fe,#01,#ab,#00,#fe
	db #01,#9f,#00,#fe,#01,#ab,#00,#fe
	db #01,#9f,#00,#fe,#01,#ff,#f4,#2d
	db #05,#0d,#06,#01,#0d,#05,#01,#0d
	db #06,#01,#f4,#3d,#05,#0d,#06,#01
	db #0d,#05,#01,#0d,#06,#01,#f4,#2d
	db #05,#0d,#06,#01,#0d,#05,#01,#0d
	db #06,#01,#f4,#3d,#05,#0d,#06,#01
	db #0d,#05,#01,#0d,#06,#01,#f4,#2d
	db #05,#0d,#06,#01,#0d,#05,#01,#0d
	db #06,#01,#f4,#3d,#05,#0d,#06,#01
	db #0d,#05,#01,#0d,#06,#01,#f4,#2d
	db #05,#0d,#06,#01,#0d,#05,#01,#0d
	db #06,#01,#f4,#3d,#05,#0d,#06,#01
	db #0d,#05,#01,#0d,#06,#01,#f4,#2d
	db #05,#0d,#06,#01,#0d,#05,#01,#0d
	db #06,#01,#f4,#3d,#05,#0d,#06,#01
	db #0d,#05,#01,#0d,#06,#01,#f4,#2d
	db #05,#0d,#06,#01,#0d,#05,#01,#0d
	db #06,#01,#f4,#3d,#05,#0d,#06,#01
	db #0d,#05,#01,#0d,#06,#01,#f4,#2d
	db #05,#0d,#06,#01,#0d,#05,#01,#0d
	db #06,#01,#f4,#3d,#05,#0d,#06,#01
	db #0d,#05,#01,#0d,#06,#01,#f4,#2d
	db #05,#0d,#06,#01,#0d,#05,#01,#0d
	db #06,#01,#f4,#3d,#05,#f4,#3d,#06
	db #f4,#3d,#05,#f4,#3d,#06,#ff,#f4
	db #2d,#05,#f4,#2d,#06,#f4,#2d,#05
	db #f4,#2d,#06,#f4,#3d,#05,#f4,#2d
	db #06,#f4,#2d,#05,#f4,#2d,#06,#f4
	db #2d,#05,#f4,#2d,#06,#f4,#2d,#05
	db #f4,#2d,#06,#f4,#3d,#05,#f4,#2d
	db #06,#f4,#2d,#05,#f4,#2d,#06,#f4
	db #2d,#05,#f4,#2d,#06,#f4,#2d,#05
	db #f4,#2d,#06,#f4,#3d,#05,#f4,#2d
	db #06,#f4,#2d,#05,#f4,#2d,#06,#f4
	db #2d,#05,#f4,#2d,#06,#f4,#2d,#05
	db #f4,#2d,#06,#f4,#3d,#05,#f4,#2d
	db #06,#f4,#2d,#05,#f4,#2d,#06,#f4
	db #2d,#05,#f4,#2d,#06,#f4,#2d,#05
	db #f4,#2d,#06,#f4,#3d,#05,#f4,#2d
	db #06,#f4,#2d,#05,#f4,#2d,#06,#f4
	db #2d,#05,#f4,#2d,#06,#f4,#2d,#05
	db #f4,#2d,#06,#f4,#3d,#05,#f4,#2d
	db #06,#f4,#2d,#05,#f4,#2d,#06,#f4
	db #2d,#05,#f4,#2d,#06,#f4,#2d,#05
	db #f4,#2d,#06,#f4,#3d,#05,#f4,#2d
	db #06,#f4,#2d,#05,#f4,#2d,#06,#f4
	db #2d,#05,#f4,#2d,#06,#f4,#2d,#05
	db #f4,#2d,#06,#f4,#3d,#05,#f4,#3d
	db #06,#f4,#3d,#05,#f4,#3d,#06,#ff
;
.music_info
	db "Jukebox 2 - Tenue de Soiree (2003)(RoundSoft)(Napo)",0
	db "ST-128 Module",0

	read "music_end.asm"

