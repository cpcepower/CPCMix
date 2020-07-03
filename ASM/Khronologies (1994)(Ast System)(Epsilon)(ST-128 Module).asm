; Music of Khronologies (1994)(Ast System)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 09/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "KHRONOLO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4824

	read "music_header.asm"
	
	jp l482d
	jp l48c1
	jp l48a5
;
.init_music
.l482d
;
	xor a
	ld hl,l4dd8
	call l489e
	ld hl,l4e06
	call l489e
	ld hl,l4e34
	call l489e
	ld ix,l4dd4
	ld iy,l4e5e
	ld de,#002e
	ld b,#03
.l484d
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
	djnz l484d
	ld hl,l4ced
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
	ld (l4ce9),hl
	ld (l4ceb),hl
	ld a,#0c
	ld c,d
	call l4cc9
	ld a,#0d
	ld c,d
	jp l4cc9
.l489e
	ld b,#2a
.l48a0
	ld (hl),a
	inc hl
	djnz l48a0
	ret
;
.stop_music
.l48a5
;
	ld a,#07
	ld c,#3f
	call l4cc9
	ld a,#08
	ld c,#00
	call l4cc9
	ld a,#09
	ld c,#00
	call l4cc9
	ld a,#0a
	ld c,#00
	jp l4cc9
;
.play_music
.l48c1
;
	ld hl,l4cef
	dec (hl)
	ld ix,l4dd4
	ld bc,l4de2
	call l4963
	ld ix,l4e02
	ld bc,l4e10
	call l4963
	ld ix,l4e30
	ld bc,l4e3e
	call l4963
	ld hl,l4ce8
	ld de,l4cef
	ld b,#06
	call l4940
	ld b,#07
	call l4940
	ld b,#0b
	call l4940
	ld b,#0d
	call l4940
	ld de,l4cef
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l4df3
	call l4919
	ld hl,l4e21
	call l4919
	ld hl,l4e4f
.l4919
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
	jr nz,l492e
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l492e
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
.l4940
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l4cc9
.l494b
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l4cc9
.l4963
	ld a,(l4cef)
	or a
	jp nz,l4a1b
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4a1b
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l494b
	or a
	jp z,l4a10
	ld r,a
	and #7f
	cp #10
	jr c,l49eb
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l4b63
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
	jr z,l49c4
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l49c4
	rrca
	ld c,a
	ld hl,l4e64
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
	jr z,l49e3
	ld (ix+#1e),b
.l49e3
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l4a04
.l49eb
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l4cf4
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
.l4a04
	ld a,d
	or a
	jr nz,l4a12
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l4a12
.l4a10
	ld a,(hl)
	inc hl
.l4a12
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4a1b
	ld a,(ix+#17)
	or a
	jr nz,l4a31
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l4a31
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4a47
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4a47
	ld a,(ix+#0d)
	or a
	jr z,l4a55
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l4a73
.l4a55
	ld a,(ix+#1a)
	or a
	jp z,l4a7a
	ld c,a
	cp #03
	jr nz,l4a62
	xor a
.l4a62
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l4a73
	ld a,(ix+#18)
	dec c
	jr z,l4a73
	ld a,(ix+#19)
.l4a73
	add (ix+#07)
	ld b,d
	call l4b63
.l4a7a
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l4aa2
	dec (ix+#1b)
	jr nz,l4aa2
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l4ada
.l4aa2
	ld a,(ix+#29)
	or a
	jr z,l4ada
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l4ad1
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l4ac8
	ld (ix+#29),#ff
	jr l4ad1
.l4ac8
	cp (ix+#2b)
	jr nz,l4ad1
	ld (ix+#29),#01
.l4ad1
	ld b,d
	or a
	jp p,l4ad7
	dec b
.l4ad7
	ld c,a
	jr l4ae5
.l4ada
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4ae5
	pop hl
	bit 7,(ix+#14)
	jr z,l4aee
	ld h,d
	ld l,d
.l4aee
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l4cc9
	ld c,h
	ld a,(ix+#02)
	call l4cc9
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4b41
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l4b30
	dec (ix+#09)
	jr nz,l4b30
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4b28
	xor a
	jr l4b2d
.l4b28
	cp #10
	jr nz,l4b2d
	dec a
.l4b2d
	ld (ix+#1e),a
.l4b30
	ld a,b
	sub (ix+#1e)
	jr nc,l4b37
	xor a
.l4b37
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l4cc9
.l4b41
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l4cf0)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l4b5f
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l4b5f
	ld (l4cf0),hl
	ret
.l4b63
	ld hl,l4d12
	cp #61
	jr nc,l4b6d
	add a
	ld c,a
	add hl,bc
.l4b6d
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l4b77
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l4c9c
	ld (ix+#1e),a
	jp l4a04
.l4b89
	dec b
.l4b8a
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l4b95
	neg
.l4b95
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
	jp l4a04
.l4bab
	dec b
	jr l4baf
.l4bae
	inc b
.l4baf
	call l4c9c
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l4a04
.l4bbe
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
	jp l4c81
.l4bcf
	ld a,(hl)
	inc hl
	or a
	jr z,l4bf1
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
.l4bf1
	ld (ix+#29),a
	jp l4a04
.l4bf7
	dec hl
	ld a,(hl)
	and #0f
	ld (l4cf3),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l4cf2),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l4a04
.l4c11
	ld a,(hl)
	or a
	jr z,l4c22
	call l4c9e
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l4a04
.l4c22
	ld hl,#0101
	ld (l4cee),hl
	jp l4a04
.l4c2b
	call l4c9c
	ld (ix+#1e),a
	jp l4a04
.l4c34
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l4cad
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l4cad
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l4a04
.l4c56
	ld a,(hl)
	inc hl
	ld (l4ced),a
	jp l4a04
.l4c5e
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
	jp l4a04
.l4c7d
	call l4c9c
	add a
.l4c81
	ld b,#00
	ld c,a
	push hl
	ld hl,l4ee4
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l4a04
.l4c9c
	ld a,(hl)
	inc hl
.l4c9e
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
.l4cad
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l4e64
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #41,#53,#54,#20,#53,#59,#53,#54
	db #45,#4d,#2d,#39,#34
.l4cc9
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
.l4ce8
	ret
.l4cf0 equ $ + 7
.l4cef equ $ + 6
.l4cee equ $ + 5
.l4ced equ $ + 4
.l4ceb equ $ + 2
.l4ce9
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4cf3 equ $ + 2
.l4cf2 equ $ + 1
	db #38,#00,#00
.l4cf4
	dw l4b77,l4b8a,l4b89,l4bae
	dw l4bab,l4bbe,l4bcf,l4bf7
	dw l4c11,l4bf7,l4c2b,l4c34
	dw l4c56,l4c5e,l4c7d
.l4d12
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
.l4dd8 equ $ + 4
.l4dd4
	db #08,#00,#01,#08,#00,#00,#00,#00
.l4de2 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4df3 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4e02 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l4e06 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l4e10 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4e21 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4e30 equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l4e34
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4e3e equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4e4f equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4e5e equ $ + 2
	db #00,#00,#24,#52,#57,#52,#8a,#52
.l4e64
	db #04,#4f,#44,#4f,#64,#4f,#00,#00
	db #84,#4f,#c4,#4f,#e4,#4f,#07,#00
	db #f6,#07,#f6,#07,#f6,#07,#00,#00
	db #04,#50,#44,#50,#64,#4f,#14,#00
	db #64,#50,#a4,#50,#c4,#50,#1a,#00
	db #f6,#07,#f6,#07,#f6,#07,#00,#00
	db #e4,#50,#24,#51,#44,#51,#09,#00
	db #f6,#07,#f6,#07,#f6,#07,#00,#00
	db #f6,#07,#f6,#07,#f6,#07,#00,#00
	db #f6,#07,#f6,#07,#f6,#07,#00,#00
	db #f6,#07,#f6,#07,#f6,#07,#00,#00
	db #f6,#07,#f6,#07,#f6,#07,#00,#00
	db #f6,#07,#f6,#07,#f6,#07,#00,#00
	db #f6,#07,#f6,#07,#f6,#07,#00,#00
	db #f6,#07,#f6,#07,#f6,#07,#00,#00
	db #64,#51,#a4,#51,#c4,#51,#00,#00
.l4ee4
	db #e4,#51,#04,#52,#f6,#07,#f6,#07
	db #f6,#07,#f6,#07,#f6,#07,#f6,#07
	db #f6,#07,#f6,#07,#f6,#07,#f6,#07
	db #f6,#07,#f6,#07,#f6,#07,#f6,#07
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
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0b,#0a,#0a
	db #09,#09,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
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
	db #00,#00,#40,#00,#80,#00,#c0,#00
	db #00,#01,#40,#01,#80,#01,#c0,#01
	db #00,#02,#40,#02,#80,#02,#c0,#02
	db #00,#03,#40,#03,#80,#03,#c0,#03
	db #00,#04,#40,#04,#80,#04,#c0,#04
	db #00,#05,#40,#05,#80,#05,#c0,#05
	db #00,#06,#40,#06,#80,#06,#c0,#06
	db #00,#07,#40,#07,#80,#07,#c0,#07
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#03,#00
	db #00,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #18,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#bd,#52,#00,#bd,#54,#00,#bd
	db #52,#00,#3f,#53,#00,#3f,#53,#00
	db #3a,#55,#00,#3a,#55,#00,#3b,#54
	db #00,#3b,#54,#00,#c0,#54,#00,#c0
	db #54,#00,#9b,#55,#00,#9b,#55,#00
	db #b9,#53,#00,#3f,#53,#00,#3b,#54
	db #80,#27,#52,#00,#0d,#56,#00,#bd
	db #52,#00,#22,#56,#00,#bd,#52,#00
	db #bd,#52,#00,#bd,#52,#00,#bd,#52
	db #00,#3b,#54,#00,#3b,#54,#00,#bd
	db #52,#00,#bd,#52,#00,#bd,#52,#00
	db #bd,#52,#00,#bd,#52,#00,#bd,#52
	db #00,#3b,#54,#80,#5a,#52,#00,#a4
	db #56,#00,#b5,#56,#00,#b5,#56,#00
	db #b5,#56,#00,#b5,#56,#00,#b5,#56
	db #00,#b5,#56,#00,#b5,#56,#00,#b5
	db #56,#00,#b5,#56,#00,#b5,#56,#00
	db #b5,#56,#00,#b5,#56,#00,#b5,#56
	db #00,#b5,#56,#00,#b5,#56,#80,#8d
	db #52,#2f,#31,#10,#af,#30,#bb,#30
	db #af,#30,#bb,#30,#bb,#30,#af,#30
	db #bb,#30,#af,#30,#af,#30,#bb,#30
	db #af,#30,#bb,#30,#bb,#30,#af,#30
	db #bb,#30,#ac,#30,#ac,#30,#b8,#30
	db #ac,#30,#b8,#30,#b8,#30,#ac,#30
	db #b8,#30,#ac,#30,#ac,#30,#b8,#30
	db #ac,#30,#b8,#30,#b8,#30,#ac,#30
	db #b8,#30,#b1,#30,#b1,#30,#bd,#30
	db #b1,#30,#bd,#30,#bd,#30,#b1,#30
	db #bd,#30,#b1,#30,#b1,#30,#bd,#30
	db #b1,#30,#bd,#30,#bd,#30,#b1,#30
	db #bd,#30,#b4,#30,#b4,#30,#c0,#30
	db #b4,#30,#c0,#30,#c0,#30,#b4,#30
	db #c0,#30,#b4,#30,#b4,#30,#c0,#30
	db #b4,#30,#c0,#30,#c0,#30,#b4,#30
	db #c0,#30,#ff,#47,#01,#10,#c7,#00
	db #c2,#00,#47,#00,#02,#c2,#00,#c7
	db #00,#c2,#00,#c7,#00,#c7,#00,#c2
	db #00,#47,#00,#02,#c2,#00,#c7,#00
	db #c2,#00,#c4,#00,#c4,#00,#bf,#00
	db #44,#00,#02,#bf,#00,#c4,#00,#bf
	db #00,#c4,#00,#c4,#00,#bf,#00,#44
	db #00,#02,#bf,#00,#c4,#00,#bf,#00
	db #c9,#00,#c9,#00,#c4,#00,#49,#00
	db #02,#c4,#00,#c9,#00,#c4,#00,#c9
	db #00,#c9,#00,#c4,#00,#49,#00,#02
	db #c4,#00,#c9,#00,#c4,#00,#cc,#00
	db #cc,#00,#c7,#00,#4c,#00,#02,#c7
	db #00,#cc,#00,#c7,#00,#cc,#00,#cc
	db #00,#c7,#00,#4c,#00,#02,#c7,#00
	db #cc,#00,#c7,#00,#ff,#3b,#31,#10
	db #bb,#30,#af,#30,#af,#30,#bb,#30
	db #af,#30,#bb,#30,#bb,#30,#af,#30
	db #bb,#30,#af,#30,#af,#30,#bb,#30
	db #af,#30,#bb,#30,#bb,#30,#af,#30
	db #bb,#30,#ac,#30,#ac,#30,#b8,#30
	db #ac,#30,#b8,#30,#b8,#30,#ac,#30
	db #b8,#30,#ac,#30,#ac,#30,#b8,#30
	db #ac,#30,#b8,#30,#b8,#30,#ac,#30
	db #b8,#30,#b1,#30,#b1,#30,#bd,#30
	db #b1,#30,#bd,#30,#bd,#30,#b1,#30
	db #bd,#30,#b1,#30,#b1,#30,#bd,#30
	db #b1,#30,#bd,#30,#bd,#30,#b1,#30
	db #bd,#30,#b4,#30,#b4,#30,#c0,#30
	db #b4,#30,#c0,#30,#c0,#30,#b4,#30
	db #c0,#30,#b4,#30,#b4,#30,#c0,#30
	db #b4,#30,#c0,#30,#c0,#30,#ff,#2f
	db #3f,#11,#af,#30,#bb,#30,#af,#30
	db #bb,#30,#bb,#30,#af,#30,#bb,#30
	db #af,#30,#af,#30,#bb,#30,#af,#30
	db #bb,#30,#bb,#30,#af,#30,#bb,#30
	db #ac,#30,#ac,#30,#b8,#30,#ac,#30
	db #b8,#30,#b8,#30,#ac,#30,#b8,#30
	db #ac,#30,#ac,#30,#b8,#30,#ac,#30
	db #b8,#30,#b8,#30,#ac,#30,#b8,#30
	db #b1,#30,#b1,#30,#bd,#30,#b1,#30
	db #bd,#30,#bd,#30,#b1,#30,#bd,#30
	db #b1,#30,#b1,#30,#bd,#30,#b1,#30
	db #bd,#30,#bd,#30,#b1,#30,#bd,#30
	db #b4,#30,#b4,#30,#c0,#30,#b4,#30
	db #c0,#30,#c0,#30,#b4,#30,#c0,#30
	db #b4,#30,#b4,#30,#c0,#30,#b4,#30
	db #c0,#30,#c0,#30,#b4,#30,#c0,#30
	db #ff,#00,#40,#ff,#c7,#0e,#01,#c7
	db #00,#c2,#00,#47,#00,#02,#c2,#00
	db #c7,#00,#c2,#00,#c7,#00,#c7,#00
	db #c2,#00,#47,#00,#02,#c2,#00,#c7
	db #00,#c2,#00,#c4,#00,#c4,#00,#bf
	db #00,#44,#00,#02,#bf,#00,#c4,#00
	db #bf,#00,#c4,#00,#c4,#00,#bf,#00
	db #44,#00,#02,#bf,#00,#c4,#00,#bf
	db #00,#c9,#00,#c9,#00,#c4,#00,#49
	db #00,#02,#c4,#00,#c9,#00,#c4,#00
	db #c9,#00,#c9,#00,#c4,#00,#49,#00
	db #02,#c4,#00,#c9,#00,#c4,#00,#cc
	db #00,#cc,#00,#c7,#00,#4c,#00,#02
	db #c7,#00,#cc,#00,#c7,#00,#cc,#00
	db #cc,#00,#c7,#00,#4c,#00,#02,#c7
	db #00,#cc,#00,#c7,#00,#ff,#c7,#00
	db #c7,#00,#cb,#00,#47,#00,#02,#c2
	db #00,#c4,#00,#c7,#00,#cb,#00,#c9
	db #00,#c7,#00,#42,#00,#05,#c4,#00
	db #c4,#00,#c7,#00,#44,#00,#02,#c4
	db #00,#c7,#00,#c9,#00,#cc,#00,#cb
	db #00,#c7,#00,#44,#00,#05,#c9,#00
	db #c9,#00,#cc,#00,#49,#00,#02,#c9
	db #00,#cc,#00,#ce,#00,#d0,#00,#ce
	db #00,#cc,#00,#49,#00,#05,#cc,#00
	db #cc,#00,#d1,#00,#4c,#00,#02,#cc
	db #00,#d1,#00,#d3,#00,#d5,#00,#d3
	db #00,#d0,#00,#4c,#00,#05,#ff,#47
	db #01,#10,#47,#00,#02,#c7,#00,#47
	db #00,#02,#c2,#00,#c4,#00,#c7,#00
	db #47,#00,#02,#c7,#00,#47,#00,#02
	db #c9,#00,#cb,#00,#c4,#00,#44,#00
	db #02,#c4,#00,#44,#00,#02,#bf,#00
	db #c2,#00,#c4,#00,#44,#00,#02,#c4
	db #00,#44,#00,#02,#c6,#00,#c7,#00
	db #c9,#00,#49,#00,#02,#c9,#00,#49
	db #00,#02,#c4,#00,#c7,#00,#c9,#00
	db #49,#00,#02,#c9,#00,#49,#00,#02
	db #cb,#00,#cc,#00,#cc,#00,#4c,#00
	db #02,#cc,#00,#4c,#00,#02,#c9,#00
	db #cb,#00,#cc,#00,#4c,#00,#02,#cc
	db #00,#4c,#00,#02,#ce,#00,#d0,#00
	db #ff,#34,#f0,#10,#b3,#f0,#b3,#f0
	db #33,#f0,#0e,#38,#f0,#10,#b9,#f0
	db #b9,#f0,#39,#f0,#0e,#ff,#2f,#3f
	db #10,#af,#30,#bb,#30,#af,#30,#bb
	db #30,#bb,#30,#af,#30,#bb,#30,#af
	db #30,#af,#30,#bb,#30,#af,#30,#bb
	db #30,#bb,#30,#af,#30,#bb,#30,#ac
	db #30,#ac,#30,#b8,#30,#ac,#30,#b8
	db #30,#b8,#30,#ac,#30,#b8,#30,#ac
	db #30,#ac,#30,#b8,#30,#ac,#30,#b8
	db #30,#b8,#30,#ac,#30,#b8,#30,#b1
	db #30,#b1,#30,#bd,#30,#b1,#30,#bd
	db #30,#bd,#30,#b1,#30,#bd,#30,#b1
	db #30,#b1,#30,#bd,#30,#b1,#30,#bd
	db #30,#bd,#30,#b1,#30,#bd,#30,#b4
	db #30,#b4,#30,#c0,#30,#b4,#30,#c0
	db #30,#c0,#30,#b4,#30,#c0,#30,#b4
	db #30,#b4,#30,#c0,#30,#b4,#30,#c0
	db #30,#c0,#30,#b4,#30,#c0,#30,#ff
	db #00,#38,#bf,#40,#3f,#40,#02,#3f
	db #40,#02,#bf,#40,#bf,#40,#bf,#40
	db #ff,#bf,#10,#f4,#60,#f4,#60,#f4
	db #60,#bf,#40,#f4,#60,#f4,#60,#f4
	db #60,#bf,#10,#f4,#60,#f4,#60,#f4
	db #60,#bf,#40,#f4,#60,#f4,#60,#f4
	db #60,#bf,#10,#f4,#60,#f4,#60,#f4
	db #60,#bf,#40,#f4,#60,#f4,#60,#f4
	db #60,#bf,#10,#f4,#60,#f4,#60,#f4
	db #60,#bf,#40,#f4,#60,#f4,#60,#f4
	db #60,#bf,#10,#f4,#60,#f4,#60,#f4
	db #60,#bf,#40,#f4,#60,#f4,#60,#f4
	db #60,#bf,#10,#f4,#60,#f4,#60,#f4
	db #60,#bf,#40,#f4,#60,#f4,#60,#f4
	db #60,#bf,#10,#f4,#60,#f4,#60,#f4
	db #60,#bf,#40,#f4,#60,#f4,#60,#f4
	db #60,#bf,#10,#f4,#60,#f4,#60,#f4
	db #60,#bf,#40,#f4,#60,#bf,#40,#bf
	db #40,#ff
;
.music_info
	db "Khronologies (1994)(Ast System)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
