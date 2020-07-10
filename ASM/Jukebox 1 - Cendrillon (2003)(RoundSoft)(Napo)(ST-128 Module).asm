; Music of Jukebox 1 - Cendrillon (2003)(RoundSoft)(Napo)(ST-128 Module)
; Ripped by Megachur the 21/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JUKEBO13.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #5c9c

	read "music_header.asm"

	jr l5ca0
	jr l5caf
.l5ca0
	call l5cd3
	ld hl,l5cc0
	ld de,l5cb8
	ld bc,#81ff
	jp #bcd7
.l5caf
	ld hl,l5cc0
	call #bcdd
	jp l5d4b
.l5cb8
	push ix
	call l5d67
	pop ix
	ret
.l5cc0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l5cd3
	jp l5d67
	jp l5d4b
;
.init_music
.l5cd3
;
	xor a
	ld hl,l627e
	call l5d44
	ld hl,l62ac
	call l5d44
	ld hl,l62da
	call l5d44
	ld ix,l627a
	ld iy,l6304
	ld de,#002e
	ld b,#03
.l5cf3
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
	djnz l5cf3
	ld hl,l6193
	ld (hl),#04
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l618f),hl
	ld (l6191),hl
	ld a,#0c
	ld c,d
	call l616f
	ld a,#0d
	ld c,d
	jp l616f
.l5d44
	ld b,#2a
.l5d46
	ld (hl),a
	inc hl
	djnz l5d46
	ret
;
.stop_music
.l5d4b
;
	ld a,#07
	ld c,#3f
	call l616f
	ld a,#08
	ld c,#00
	call l616f
	ld a,#09
	ld c,#00
	call l616f
	ld a,#0a
	ld c,#00
	jp l616f
;
.play_music
.l5d67
;
	ld hl,l6195
	dec (hl)
	ld ix,l627a
	ld bc,l6288
	call l5e09
	ld ix,l62a8
	ld bc,l62b6
	call l5e09
	ld ix,l62d6
	ld bc,l62e4
	call l5e09
	ld hl,l618e
	ld de,l6195
	ld b,#06
	call l5de6
	ld b,#07
	call l5de6
	ld b,#0b
	call l5de6
	ld b,#0d
	call l5de6
	ld de,l6195
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6299
	call l5dbf
	ld hl,l62c7
	call l5dbf
	ld hl,l62f5
.l5dbf
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
	jr nz,l5dd4
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l5dd4
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
.l5de6
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l616f
.l5df1
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l616f
.l5e09
	ld a,(l6195)
	or a
	jp nz,l5ec1
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l5ec1
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5df1
	or a
	jp z,l5eb6
	ld r,a
	and #7f
	cp #10
	jr c,l5e91
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l6009
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
	jr z,l5e6a
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l5e6a
	rrca
	ld c,a
	ld hl,l630a
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
	jr z,l5e89
	ld (ix+#1e),b
.l5e89
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l5eaa
.l5e91
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l619a
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
.l5eaa equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l5eb8
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l5eb8
.l5eb6
	ld a,(hl)
	inc hl
.l5eb8
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l5ec1
	ld a,(ix+#17)
	or a
	jr nz,l5ed7
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l5ed7
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5eed
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5eed
	ld a,(ix+#0d)
	or a
	jr z,l5efb
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l5f19
.l5efb
	ld a,(ix+#1a)
	or a
	jp z,l5f20
	ld c,a
	cp #03
	jr nz,l5f08
	xor a
.l5f08
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l5f19
	ld a,(ix+#18)
	dec c
	jr z,l5f19
	ld a,(ix+#19)
.l5f19
	add (ix+#07)
	ld b,d
	call l6009
.l5f20
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l5f48
	dec (ix+#1b)
	jr nz,l5f48
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l5f80
.l5f48
	ld a,(ix+#29)
	or a
	jr z,l5f80
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l5f77
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5f6e
	ld (ix+#29),#ff
	jr l5f77
.l5f6e
	cp (ix+#2b)
	jr nz,l5f77
	ld (ix+#29),#01
.l5f77
	ld b,d
	or a
	jp p,l5f7d
	dec b
.l5f7d
	ld c,a
	jr l5f8b
.l5f80
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l5f8b
	pop hl
	bit 7,(ix+#14)
	jr z,l5f94
	ld h,d
	ld l,d
.l5f94
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l616f
	ld c,h
	ld a,(ix+#02)
	call l616f
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5fe7
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l5fd6
	dec (ix+#09)
	jr nz,l5fd6
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5fce
	xor a
	jr l5fd3
.l5fce
	cp #10
	jr nz,l5fd3
	dec a
.l5fd3
	ld (ix+#1e),a
.l5fd6
	ld a,b
	sub (ix+#1e)
	jr nc,l5fdd
	xor a
.l5fdd
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l616f
.l5fe7
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6196)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6005
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6005
	ld (l6196),hl
	ret
.l6009
	ld hl,l61b8
	cp #61
	jr nc,l6013
	add a
	ld c,a
	add hl,bc
.l6013
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l601d
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6142
	ld (ix+#1e),a
	jp l5eaa
.l602f
	dec b
.l6030
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l603b
	neg
.l603b
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
	jp l5eaa
.l6051
	dec b
	jr l6055
.l6054
	inc b
.l6055
	call l6142
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l5eaa
.l6064
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
	jp l6127
.l6075
	ld a,(hl)
	inc hl
	or a
	jr z,l6097
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
.l6097
	ld (ix+#29),a
	jp l5eaa
.l609d
	dec hl
	ld a,(hl)
	and #0f
	ld (l6199),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6198),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l5eaa
.l60b7
	ld a,(hl)
	or a
	jr z,l60c8
	call l6144
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l5eaa
.l60c8
	ld hl,#0101
	ld (l6194),hl
	jp l5eaa
.l60d1
	call l6142
	ld (ix+#1e),a
	jp l5eaa
.l60da
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6153
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6153
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l5eaa
.l60fc
	ld a,(hl)
	inc hl
	ld (l6193),a
	jp l5eaa
.l6104
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
	jp l5eaa
.l6123
	call l6142
	add a
.l6127
	ld b,#00
	ld c,a
	push hl
	ld hl,l638a
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l5eaa
.l6142
	ld a,(hl)
	inc hl
.l6144
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
.l6153
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l630a
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l616f
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
.l618e
	ret
.l6196 equ $ + 7
.l6195 equ $ + 6
.l6194 equ $ + 5
.l6193 equ $ + 4
.l6191 equ $ + 2
.l618f
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6199 equ $ + 2
.l6198 equ $ + 1
	db #38,#00,#00
.l619a
	dw l601d,l6030,l602f,l6054
	dw l6051,l6064,l6075,l609d
	dw l60b7,l609d,l60d1,l60da
	dw l60fc,l6104,l6123
.l61b8
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
.l627a equ $ + 2
	dw #000f,#0008
.l627e equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l6288 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6299 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62a8 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l62ac
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62b6 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62c7 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62da equ $ + 6
.l62d6 equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62e4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l62f5 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l630a equ $ + 6
.l6304
	db #0a,#65,#31,#65,#58,#65,#aa,#63
	db #ea,#63,#0a,#64,#00,#00,#d1,#74
	db #51,#75,#71,#75,#00,#00,#aa,#63
	db #2a,#64,#4a,#64,#00,#00,#aa,#63
	db #6a,#64,#8a,#64,#00,#00,#aa,#63
	db #aa,#64,#0a,#64,#00,#00,#aa,#63
	db #ca,#64,#0a,#64,#01,#08,#aa,#63
	db #ea,#64,#0a,#64,#01,#08,#37,#68
	db #37,#68,#37,#68,#00,#00,#37,#68
	db #37,#68,#37,#68,#00,#00,#37,#68
	db #37,#68,#37,#68,#00,#00,#37,#68
	db #37,#68,#37,#68,#00,#00,#37,#68
	db #37,#68,#37,#68,#00,#00,#37,#68
	db #37,#68,#37,#68,#00,#00,#37,#68
	db #37,#68,#37,#68,#00,#00,#37,#68
	db #37,#68,#37,#68,#00,#00,#37,#68
.l638a equ $ + 6
	db #37,#68,#37,#68,#00,#00,#37,#68
	db #37,#68,#37,#68,#37,#68,#37,#68
	db #37,#68,#37,#68,#37,#68,#37,#68
	db #37,#68,#37,#68,#37,#68,#37,#68
	db #37,#68,#37,#68,#37,#68,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0e,#0f,#0f,#0d,#0e,#0c,#09
	db #07,#09,#08,#06,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#00
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
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0f,#0f,#0e,#0f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0e,#0e,#0d,#0e,#0c,#0e,#0e,#0e
	db #0e,#0c,#0b,#0d,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0d,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#07,#08
	db #08,#08,#07,#09,#0a,#0c,#09,#08
	db #09,#08,#07,#09,#0a,#09,#07,#05
	db #06,#05,#07,#06,#07,#05,#08,#07
	db #08,#09,#09,#0a,#0b,#0c,#00,#7f
	db #65,#00,#7f,#65,#00,#40,#66,#00
	db #40,#66,#00,#7f,#65,#00,#7f,#65
	db #00,#01,#67,#00,#c2,#67,#00,#40
	db #66,#00,#40,#66,#00,#7f,#65,#00
	db #7f,#65,#80,#10,#65,#00,#83,#68
	db #00,#83,#68,#00,#44,#69,#00,#44
	db #69,#00,#05,#6a,#00,#05,#6a,#00
	db #c6,#6a,#00,#87,#6b,#00,#44,#69
	db #00,#44,#69,#00,#48,#6c,#00,#48
	db #6c,#80,#37,#65,#00,#09,#6d,#00
	db #09,#6d,#00,#3a,#6d,#00,#3a,#6d
	db #00,#09,#6d,#00,#09,#6d,#00,#ce
	db #6d,#00,#ed,#6d,#00,#3a,#6d,#00
	db #3a,#6d,#00,#09,#6d,#00,#09,#6d
	db #80,#5e,#65,#c4,#6e,#59,#0e,#59
	db #01,#0e,#59,#01,#0e,#59,#01,#0e
	db #59,#01,#0e,#59,#01,#0e,#59,#01
	db #0e,#59,#01,#c4,#6e,#59,#0e,#59
	db #01,#0e,#59,#01,#0e,#59,#01,#0e
	db #59,#01,#0e,#59,#01,#0e,#59,#01
	db #0e,#59,#01,#c4,#6e,#59,#0e,#59
	db #01,#0e,#59,#01,#0e,#59,#01,#0e
	db #59,#01,#0e,#59,#01,#0e,#59,#01
	db #0e,#59,#01,#c4,#6e,#59,#0e,#59
	db #01,#0e,#59,#01,#0e,#59,#01,#0e
	db #59,#01,#0e,#59,#01,#0e,#59,#01
	db #0e,#59,#01,#c1,#6e,#58,#0e,#58
	db #01,#0e,#58,#01,#0e,#58,#01,#0e
	db #58,#01,#0e,#58,#01,#0e,#58,#01
	db #0e,#58,#01,#c1,#6e,#58,#0e,#58
	db #01,#0e,#58,#01,#0e,#58,#01,#0e
	db #58,#01,#0e,#58,#01,#0e,#58,#01
	db #0e,#58,#01,#c4,#6e,#58,#0e,#58
	db #01,#0e,#58,#01,#0e,#58,#01,#0e
	db #58,#01,#0e,#58,#01,#0e,#58,#01
	db #0e,#58,#01,#c4,#6e,#58,#0e,#58
	db #01,#0e,#58,#01,#0e,#58,#01,#0e
	db #58,#01,#0e,#58,#01,#0e,#58,#01
	db #0e,#58,#01,#ff,#c4,#6e,#59,#0e
	db #59,#01,#0e,#59,#01,#0e,#59,#01
	db #0e,#59,#01,#0e,#59,#01,#0e,#59
	db #01,#0e,#59,#01,#0e,#59,#01,#0e
	db #59,#01,#0e,#59,#01,#0e,#59,#01
	db #0e,#59,#01,#0e,#59,#01,#0e,#59
	db #01,#0e,#59,#01,#c4,#6e,#47,#0e
	db #47,#01,#0e,#47,#01,#0e,#47,#01
	db #0e,#47,#01,#0e,#47,#01,#0e,#47
	db #01,#0e,#47,#01,#0e,#47,#01,#0e
	db #47,#01,#0e,#47,#01,#0e,#47,#01
	db #0e,#47,#01,#0e,#47,#01,#0e,#47
	db #01,#0e,#47,#01,#c4,#6e,#47,#0e
	db #47,#01,#0e,#47,#01,#0e,#47,#01
	db #0e,#47,#01,#0e,#47,#01,#0e,#47
	db #01,#0e,#47,#01,#c1,#6e,#58,#0e
	db #58,#01,#0e,#58,#01,#0e,#58,#01
	db #0e,#58,#01,#0e,#58,#01,#0e,#58
	db #01,#0e,#58,#01,#c1,#6e,#58,#0e
	db #58,#01,#0e,#58,#01,#0e,#58,#01
	db #0e,#58,#01,#0e,#58,#01,#0e,#58
	db #01,#0e,#58,#01,#0e,#58,#01,#0e
	db #58,#01,#0e,#58,#01,#0e,#58,#01
	db #0e,#58,#01,#0e,#58,#01,#0e,#58
	db #01,#0e,#58,#01,#ff,#c4,#6e,#47
	db #0e,#47,#01,#0e,#47,#01,#0e,#47
	db #01,#0e,#47,#01,#0e,#47,#01,#0e
	db #47,#01,#0e,#47,#01,#c4,#6e,#47
	db #0e,#47,#01,#0e,#47,#01,#0e,#47
	db #01,#0e,#47,#01,#0e,#47,#01,#0e
	db #47,#01,#0e,#47,#01,#c4,#6e,#59
	db #0e,#59,#01,#0e,#59,#01,#0e,#59
	db #01,#0e,#59,#01,#0e,#59,#01,#0e
	db #59,#01,#0e,#59,#01,#c4,#6e,#59
	db #0e,#59,#01,#0e,#59,#01,#0e,#59
	db #01,#0e,#59,#01,#0e,#59,#01,#0e
	db #59,#01,#0e,#59,#01,#c4,#6e,#47
	db #0e,#47,#01,#0e,#47,#01,#0e,#47
	db #01,#0e,#47,#01,#0e,#47,#01,#0e
	db #47,#01,#0e,#47,#01,#c4,#6e,#47
	db #0e,#47,#01,#0e,#47,#01,#0e,#47
	db #01,#0e,#47,#01,#0e,#47,#01,#0e
	db #47,#01,#0e,#47,#01,#c4,#6e,#59
	db #0e,#59,#01,#0e,#59,#01,#0e,#59
	db #01,#0e,#59,#01,#0e,#59,#01,#0e
	db #59,#01,#0e,#59,#01,#c4,#6e,#59
	db #0e,#59,#01,#0e,#59,#01,#0e,#59
	db #01,#0e,#59,#01,#0e,#59,#01,#0e
	db #59,#01,#0e,#59,#01,#ff,#c2,#6e
	db #47,#0e,#47,#01,#0e,#47,#01,#0e
	db #47,#01,#0e,#47,#01,#0e,#47,#01
	db #0e,#47,#01,#0e,#47,#01,#0e,#47
	db #01,#0e,#47,#01,#0e,#47,#01,#0e
	db #47,#01,#0e,#47,#01,#0e,#47,#01
	db #0e,#47,#01,#0e,#47,#01,#0e,#47
	db #01,#0e,#47,#01,#0e,#47,#01,#0e
	db #47,#01,#0e,#47,#01,#0e,#47,#01
	db #0e,#47,#01,#0e,#47,#01,#0e,#47
	db #01,#0e,#47,#01,#0e,#47,#01,#0e
	db #47,#01,#0e,#47,#01,#0e,#47,#01
	db #0e,#47,#01,#0e,#47,#01,#c6,#6e
	db #37,#0e,#37,#01,#0e,#37,#01,#0e
	db #37,#01,#0e,#37,#01,#0e,#37,#01
	db #0e,#37,#01,#0e,#37,#01,#0e,#37
	db #01,#0e,#37,#01,#0e,#37,#01,#0e
	db #37,#01,#0e,#37,#01,#0e,#37,#01
	db #0e,#37,#01,#0e,#37,#01,#c5,#6e
	db #47,#0e,#47,#01,#0e,#47,#01,#0e
	db #47,#01,#0e,#47,#01,#0e,#47,#01
	db #0e,#47,#01,#0e,#47,#01,#0e,#47
	db #01,#0e,#47,#01,#0e,#47,#01,#0e
	db #47,#01,#0e,#47,#01,#0e,#47,#01
	db #0e,#47,#01,#0e,#47,#01,#ff,#b1
	db #5d,#04,#0d,#05,#01,#0d,#04,#01
	db #0d,#05,#01,#0d,#04,#01,#0d,#05
	db #01,#0d,#04,#01,#0d,#05,#01,#0d
	db #04,#01,#0d,#05,#01,#0d,#04,#01
	db #0d,#05,#01,#0d,#04,#01,#0d,#05
	db #01,#0d,#04,#01,#0d,#05,#01,#ae
	db #5d,#04,#0d,#05,#01,#0d,#04,#01
	db #0d,#05,#01,#0d,#04,#01,#0d,#05
	db #01,#0d,#04,#01,#0d,#05,#01,#0d
	db #04,#01,#0d,#05,#01,#0d,#04,#01
	db #0d,#05,#01,#0d,#04,#01,#0d,#05
	db #01,#0d,#04,#01,#0d,#05,#01,#aa
	db #5d,#04,#0d,#05,#01,#0d,#04,#01
	db #0d,#05,#01,#0d,#04,#01,#0d,#05
	db #01,#0d,#04,#01,#0d,#05,#01,#0d
	db #04,#01,#0d,#05,#01,#0d,#04,#01
	db #0d,#05,#01,#0d,#04,#01,#0d,#05
	db #01,#0d,#04,#01,#0d,#05,#01,#ad
	db #5d,#04,#0d,#05,#01,#0d,#04,#01
	db #0d,#05,#01,#0d,#04,#01,#0d,#05
	db #01,#0d,#04,#01,#0d,#05,#01,#0d
	db #04,#01,#0d,#05,#01,#0d,#04,#01
	db #0d,#05,#01,#0d,#04,#01,#0d,#05
	db #01,#0d,#04,#01,#0d,#05,#01,#ff
	db #b1,#5d,#04,#0d,#05,#01,#0d,#04
	db #01,#0d,#05,#01,#f4,#3d,#04,#b1
	db #5d,#05,#0d,#04,#01,#0d,#05,#01
	db #b1,#5d,#04,#0d,#05,#01,#0d,#04
	db #01,#0d,#05,#01,#f4,#3d,#04,#b1
	db #5d,#05,#0d,#04,#01,#0d,#05,#01
	db #ac,#5d,#04,#0d,#05,#01,#0d,#04
	db #01,#0d,#05,#01,#f4,#3d,#04,#ac
	db #5d,#05,#0d,#04,#01,#0d,#05,#01
	db #ac,#5d,#04,#0d,#05,#01,#0d,#04
	db #01,#0d,#05,#01,#f4,#3d,#04,#ac
	db #5d,#05,#0d,#04,#01,#0d,#05,#01
	db #ac,#5d,#04,#0d,#05,#01,#0d,#04
	db #01,#0d,#05,#01,#f4,#3d,#04,#ac
	db #5d,#05,#0d,#04,#01,#0d,#05,#01
	db #ae,#5d,#04,#0d,#05,#01,#0d,#04
	db #01,#0d,#05,#01,#f4,#3d,#04,#ae
	db #5d,#05,#0d,#04,#01,#0d,#05,#01
	db #aa,#5d,#04,#0d,#05,#01,#0d,#04
	db #01,#0d,#05,#01,#f4,#3d,#04,#aa
	db #5d,#05,#0d,#04,#01,#0d,#05,#01
	db #aa,#5d,#04,#0d,#05,#01,#0d,#04
	db #01,#0d,#05,#01,#f4,#3d,#04,#aa
	db #5d,#05,#0d,#04,#01,#0d,#05,#01
	db #ff,#b1,#5d,#04,#0d,#05,#01,#0d
	db #04,#01,#0d,#05,#01,#f4,#3d,#04
	db #b1,#5d,#05,#0d,#04,#01,#0d,#05
	db #01,#0d,#04,#01,#0d,#05,#01,#0d
	db #04,#01,#0d,#05,#01,#f4,#3d,#04
	db #b1,#5d,#05,#0d,#04,#01,#0d,#05
	db #01,#ae,#5d,#04,#0d,#05,#01,#0d
	db #04,#01,#0d,#05,#01,#f4,#3d,#04
	db #ae,#5d,#05,#0d,#04,#01,#0d,#05
	db #01,#0d,#04,#01,#0d,#05,#01,#0d
	db #04,#01,#0d,#05,#01,#f4,#3d,#04
	db #ae,#5d,#05,#0d,#04,#01,#0d,#05
	db #01,#aa,#5d,#04,#0d,#05,#01,#0d
	db #04,#01,#0d,#05,#01,#f4,#3d,#04
	db #aa,#5d,#05,#0d,#04,#01,#0d,#05
	db #01,#0d,#04,#01,#0d,#05,#01,#0d
	db #04,#01,#0d,#05,#01,#f4,#3d,#04
	db #aa,#5d,#05,#0d,#04,#01,#0d,#05
	db #01,#ad,#5d,#04,#0d,#05,#01,#0d
	db #04,#01,#0d,#05,#01,#f4,#3d,#04
	db #ad,#5d,#05,#0d,#04,#01,#0d,#05
	db #01,#0d,#04,#01,#0d,#05,#01,#0d
	db #04,#01,#0d,#05,#01,#f4,#3d,#04
	db #ad,#5d,#05,#0d,#04,#01,#0d,#05
	db #01,#ff,#a9,#5d,#04,#f4,#2d,#05
	db #f4,#2d,#04,#f4,#2d,#05,#f4,#3d
	db #04,#a9,#5d,#05,#0d,#04,#01,#0d
	db #05,#01,#a9,#5d,#04,#f4,#2d,#05
	db #f4,#2d,#04,#f4,#2d,#05,#f4,#3d
	db #04,#a9,#5d,#05,#0d,#04,#01,#0d
	db #05,#01,#ae,#5d,#04,#f4,#2d,#05
	db #f4,#2d,#04,#f4,#2d,#05,#f4,#3d
	db #04,#ae,#5d,#05,#0d,#04,#01,#0d
	db #05,#01,#ae,#5d,#04,#f4,#2d,#05
	db #f4,#2d,#04,#f4,#2d,#05,#f4,#3d
	db #04,#ae,#5d,#05,#0d,#04,#01,#0d
	db #05,#01,#a9,#5d,#04,#f4,#2d,#05
	db #f4,#2d,#04,#f4,#2d,#05,#f4,#3d
	db #04,#a9,#5d,#05,#0d,#04,#01,#0d
	db #05,#01,#a9,#5d,#04,#f4,#2d,#05
	db #f4,#2d,#04,#f4,#2d,#05,#f4,#3d
	db #04,#a9,#5d,#05,#0d,#04,#01,#0d
	db #05,#01,#ae,#5d,#04,#f4,#2d,#05
	db #f4,#2d,#04,#f4,#2d,#05,#f4,#3d
	db #04,#ae,#5d,#05,#0d,#04,#01,#0d
	db #05,#01,#ae,#5d,#04,#f4,#2d,#05
	db #f4,#2d,#04,#f4,#2d,#04,#f4,#3d
	db #05,#ae,#5d,#04,#0d,#05,#01,#0d
	db #04,#01,#ff,#a7,#5d,#04,#f4,#2d
	db #05,#f4,#2d,#04,#f4,#2d,#05,#f4
	db #3d,#04,#a7,#5d,#05,#0d,#04,#01
	db #0d,#05,#01,#a7,#5d,#04,#f4,#2d
	db #05,#f4,#2d,#04,#f4,#2d,#05,#f4
	db #3d,#04,#a7,#5d,#05,#0d,#04,#01
	db #0d,#05,#01,#a7,#5d,#04,#f4,#2d
	db #05,#f4,#2d,#04,#f4,#2d,#05,#f4
	db #3d,#04,#a7,#5d,#05,#0d,#04,#01
	db #0d,#05,#01,#a7,#5d,#04,#f4,#2d
	db #05,#f4,#2d,#04,#f4,#2d,#05,#f4
	db #3d,#04,#a7,#5d,#05,#0d,#04,#01
	db #0d,#05,#01,#aa,#5d,#04,#f4,#2d
	db #05,#f4,#2d,#04,#f4,#2d,#05,#f4
	db #3d,#04,#aa,#5d,#05,#0d,#04,#01
	db #0d,#05,#01,#aa,#5d,#04,#f4,#2d
	db #05,#f4,#2d,#04,#f4,#2d,#05,#f4
	db #3d,#04,#aa,#5d,#05,#0d,#04,#01
	db #0d,#05,#01,#ad,#5d,#04,#f4,#2d
	db #05,#f4,#2d,#04,#f4,#2d,#05,#f4
	db #3d,#04,#ad,#5d,#05,#0d,#04,#01
	db #0d,#05,#01,#ad,#5d,#04,#f4,#2d
	db #05,#f4,#2d,#04,#f4,#2d,#04,#f4
	db #3d,#05,#ad,#5d,#04,#0d,#05,#01
	db #0d,#04,#01,#ff,#b1,#5d,#04,#f4
	db #2d,#05,#f4,#2d,#04,#f4,#2d,#05
	db #f4,#3d,#04,#b1,#5d,#05,#0d,#04
	db #01,#0d,#05,#01,#0d,#04,#01,#f4
	db #2d,#05,#f4,#2d,#04,#f4,#2d,#05
	db #f4,#3d,#04,#b1,#5d,#05,#0d,#04
	db #01,#0d,#05,#01,#ae,#5d,#04,#f4
	db #2d,#05,#f4,#2d,#04,#f4,#2d,#05
	db #f4,#3d,#04,#ae,#5d,#05,#0d,#04
	db #01,#0d,#05,#01,#0d,#04,#01,#f4
	db #2d,#05,#f4,#2d,#04,#f4,#2d,#05
	db #f4,#3d,#04,#ae,#5d,#05,#0d,#04
	db #01,#0d,#05,#01,#aa,#5d,#04,#f4
	db #2d,#05,#f4,#2d,#04,#f4,#2d,#05
	db #f4,#3d,#04,#aa,#5d,#05,#0d,#04
	db #01,#0d,#05,#01,#0d,#04,#01,#f4
	db #2d,#05,#f4,#2d,#04,#f4,#2d,#05
	db #f4,#3d,#04,#aa,#5d,#05,#0d,#04
	db #01,#0d,#05,#01,#ad,#5d,#04,#f4
	db #2d,#05,#f4,#2d,#04,#f4,#2d,#05
	db #f4,#3d,#04,#ad,#5d,#05,#0d,#04
	db #01,#0d,#05,#01,#0d,#04,#01,#f4
	db #2d,#05,#f4,#2d,#04,#f4,#2d,#05
	db #f4,#3d,#04,#ad,#5d,#05,#0d,#04
	db #01,#0d,#05,#01,#ff,#3f,#00,#04
	db #41,#00,#02,#41,#00,#08,#41,#00
	db #02,#3f,#00,#02,#3d,#00,#04,#3d
	db #00,#08,#3d,#00,#02,#3d,#00,#04
	db #3d,#00,#04,#3d,#00,#04,#3d,#00
	db #04,#40,#00,#02,#3d,#00,#02,#3d
	db #00,#0a,#3d,#00,#02,#ff,#3d,#41
	db #80,#c1,#0e,#cc,#0e,#cc,#01,#c2
	db #0e,#cc,#0e,#cc,#01,#c4,#0e,#cc
	db #0e,#cc,#01,#0e,#cc,#01,#0e,#cc
	db #01,#bf,#0e,#cc,#0e,#cc,#01,#0e
	db #cc,#01,#0e,#cc,#01,#0e,#cc,#01
	db #0e,#cc,#01,#0e,#cc,#01,#0e,#cc
	db #01,#c1,#0e,#cc,#0e,#cc,#01,#c2
	db #0e,#cc,#0e,#cc,#01,#c4,#0e,#cc
	db #0e,#cc,#01,#0e,#cc,#01,#0e,#cc
	db #01,#bf,#0e,#cc,#0e,#cc,#01,#0e
	db #cc,#01,#0e,#cc,#01,#0e,#cc,#01
	db #0e,#cc,#01,#c1,#0e,#cc,#0e,#cc
	db #01,#0e,#cc,#01,#0e,#cc,#01,#0e
	db #cc,#01,#0e,#cc,#01,#bd,#0e,#cc
	db #0e,#cc,#01,#0e,#cc,#01,#0e,#cc
	db #01,#0e,#cc,#01,#0e,#cc,#01,#0e
	db #cc,#01,#0e,#cc,#01,#3d,#41,#20
	db #3d,#40,#02,#41,#40,#04,#3d,#40
	db #04,#ff,#3f,#00,#08,#3f,#00,#04
	db #41,#00,#02,#3d,#00,#10,#3d,#00
	db #02,#3f,#00,#08,#3f,#00,#04,#41
	db #00,#02,#3d,#00,#10,#3d,#00,#02
	db #ff,#3f,#00,#02,#3f,#00,#04,#3f
	db #00,#06,#3d,#00,#02,#3f,#00,#04
	db #41,#00,#0c,#3f,#00,#02,#3d,#00
	db #04,#3d,#00,#04,#3d,#00,#04,#3d
	db #00,#04,#40,#00,#02,#3d,#00,#02
	db #3d,#00,#08,#3d,#00,#04,#ff
;
.music_info
	db "Jukebox 1 - Cendrillon (2003)(RoundSoft)(Napo)",0
	db "ST-128 Module",0

	read "music_end.asm"
