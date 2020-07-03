; Music of Christmas 2001 - Part 2 - Music 4 (2002)(Brothers)(FG Brain)(ST-128 Module)
; Ripped by Megachur the 03/09/2017
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "CHR2P2M4.BIN"
	ENDIF

music_date_rip_day		equ 03
music_date_rip_month	equ 09
music_date_rip_year		equ 2017
music_adr				equ &6860

	read "music_header.asm"

	jp l6869
	jp l68fd
	jp l68e1
;
.init_music
.l6869
;
	xor a
	ld hl,l6e14
	call l68da
	ld hl,l6e42
	call l68da
	ld hl,l6e70
	call l68da
	ld ix,l6e10
	ld iy,l6e9a
	ld de,#002e
	ld b,#03
.l6889
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
	djnz l6889
	ld hl,l6d29
	ld (hl),#05
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l6d25),hl
	ld (l6d27),hl
	ld a,#0c
	ld c,d
	call l6d05
	ld a,#0d
	ld c,d
	jp l6d05
.l68da
	ld b,#2a
.l68dc
	ld (hl),a
	inc hl
	djnz l68dc
	ret
;
.stop_music
.l68e1
;
	ld a,#07
	ld c,#3f
	call l6d05
	ld a,#08
	ld c,#00
	call l6d05
	ld a,#09
	ld c,#00
	call l6d05
	ld a,#0a
	ld c,#00
	jp l6d05
;
.play_music
.l68fd
;
	ld hl,l6d2b
	dec (hl)
	ld ix,l6e10
	ld bc,l6e1e
	call l699f
	ld ix,l6e3e
	ld bc,l6e4c
	call l699f
	ld ix,l6e6c
	ld bc,l6e7a
	call l699f
	ld hl,l6d24
	ld de,l6d2b
	ld b,#06
	call l697c
	ld b,#07
	call l697c
	ld b,#0b
	call l697c
	ld b,#0d
	call l697c
	ld de,l6d2b
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6e2f
	call l6955
	ld hl,l6e5d
	call l6955
	ld hl,l6e8b
.l6955
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
	jr nz,l696a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l696a
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
.l697c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6d05
.l6987
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6d05
.l699f
	ld a,(l6d2b)
	or a
	jp nz,l6a57
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6a57
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6987
	or a
	jp z,l6a4c
	ld r,a
	and #7f
	cp #10
	jr c,l6a27
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l6b9f
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
	jr z,l6a00
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l6a00
	rrca
	ld c,a
	ld hl,l6ea0
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
	jr z,l6a1f
	ld (ix+#1e),b
.l6a1f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6a40
.l6a27
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6d30
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
.l6a40
	ld a,d
	or a
	jr nz,l6a4e
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l6a4e
.l6a4c
	ld a,(hl)
	inc hl
.l6a4e
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6a57
	ld a,(ix+#17)
	or a
	jr nz,l6a6d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l6a6d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6a83
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6a83
	ld a,(ix+#0d)
	or a
	jr z,l6a91
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l6aaf
.l6a91
	ld a,(ix+#1a)
	or a
	jp z,l6ab6
	ld c,a
	cp #03
	jr nz,l6a9e
	xor a
.l6a9e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l6aaf
	ld a,(ix+#18)
	dec c
	jr z,l6aaf
	ld a,(ix+#19)
.l6aaf
	add (ix+#07)
	ld b,d
	call l6b9f
.l6ab6
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6ade
	dec (ix+#1b)
	jr nz,l6ade
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6b16
.l6ade
	ld a,(ix+#29)
	or a
	jr z,l6b16
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l6b0d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6b04
	ld (ix+#29),#ff
	jr l6b0d
.l6b04
	cp (ix+#2b)
	jr nz,l6b0d
	ld (ix+#29),#01
.l6b0d
	ld b,d
	or a
	jp p,l6b13
	dec b
.l6b13
	ld c,a
	jr l6b21
.l6b16
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6b21
	pop hl
	bit 7,(ix+#14)
	jr z,l6b2a
	ld h,d
	ld l,d
.l6b2a
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6d05
	ld c,h
	ld a,(ix+#02)
	call l6d05
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6b7d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l6b6c
	dec (ix+#09)
	jr nz,l6b6c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6b64
	xor a
	jr l6b69
.l6b64
	cp #10
	jr nz,l6b69
	dec a
.l6b69
	ld (ix+#1e),a
.l6b6c
	ld a,b
	sub (ix+#1e)
	jr nc,l6b73
	xor a
.l6b73
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6d05
.l6b7d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6d2c)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6b9b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6b9b
	ld (l6d2c),hl
	ret
.l6b9f
	ld hl,l6d4e
	cp #61
	jr nc,l6ba9
	add a
	ld c,a
	add hl,bc
.l6ba9
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6bb3
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6cd8
	ld (ix+#1e),a
	jp l6a40
.l6bc5
	dec b
.l6bc6
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6bd1
	neg
.l6bd1
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
	jp l6a40
.l6be7
	dec b
	jr l6beb
.l6bea
	inc b
.l6beb
	call l6cd8
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6a40
.l6bfa
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
	jp l6cbd
.l6c0b
	ld a,(hl)
	inc hl
	or a
	jr z,l6c2d
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
.l6c2d
	ld (ix+#29),a
	jp l6a40
.l6c33
	dec hl
	ld a,(hl)
	and #0f
	ld (l6d2f),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6d2e),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6a40
.l6c4d
	ld a,(hl)
	or a
	jr z,l6c5e
	call l6cda
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6a40
.l6c5e
	ld hl,#0101
	ld (l6d2a),hl
	jp l6a40
.l6c67
	call l6cd8
	ld (ix+#1e),a
	jp l6a40
.l6c70
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6ce9
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6ce9
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6a40
.l6c92
	ld a,(hl)
	inc hl
	ld (l6d29),a
	jp l6a40
.l6c9a
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
	jp l6a40
.l6cb9
	call l6cd8
	add a
.l6cbd
	ld b,#00
	ld c,a
	push hl
	ld hl,l6f20
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6a40
.l6cd8
	ld a,(hl)
	inc hl
.l6cda
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
.l6ce9
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6ea0
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l6d05
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
.l6d24
	ret
.l6d2c equ $ + 7
.l6d2b equ $ + 6
.l6d2a equ $ + 5
.l6d29 equ $ + 4
.l6d27 equ $ + 2
.l6d25
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6d2f equ $ + 2
.l6d2e equ $ + 1
	db #38,#00,#00
.l6d30
	dw l6bb3,l6bc6,l6bc5,l6bea
	dw l6be7,l6bfa,l6c0b,l6c33
	dw l6c4d,l6c33,l6c67,l6c70
.l6d4e equ $ + 6
	dw l6c92,l6c9a,l6cb9,#0000
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04b4
	dw #0470,#0431,#03f4,#03bc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
.l6e10
	dw #0008
.l6e14 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l6e1e equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e2f equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e3e equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l6e42
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e4c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e5d equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e70 equ $ + 6
.l6e6c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e7a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6e8b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6ea0 equ $ + 6
.l6e9a
	db #20,#72,#41,#72,#62,#72,#46,#34
	db #76,#41,#8a,#4d,#58,#25,#40,#6f
	db #80,#6f,#a0,#6f,#00,#00,#c0,#6f
	db #00,#70,#20,#70,#18,#07,#c0,#6f
	db #40,#70,#20,#70,#00,#00,#c0,#6f
	db #60,#70,#80,#70,#00,#00,#a0,#70
	db #e0,#70,#00,#71,#00,#00,#46,#34
	db #8a,#4d,#8a,#4d,#58,#25,#c0,#6f
	db #20,#71,#20,#70,#00,#00,#40,#71
	db #80,#71,#20,#70,#18,#07,#72,#29
	db #16,#43,#b6,#43,#2c,#1c,#32,#28
	db #64,#8a,#76,#41,#52,#62,#a4,#8a
	db #c4,#8a,#76,#41,#44,#19,#76,#41
	db #76,#41,#76,#41,#44,#19,#76,#41
	db #76,#41,#76,#41,#44,#19,#76,#41
	db #32,#28,#62,#28,#60,#00,#c2,#28
.l6f20 equ $ + 6
	db #f2,#28,#22,#29,#20,#01,#82,#29
	db #a0,#71,#c0,#71,#e0,#71,#00,#72
	db #72,#2a,#a2,#2a,#d2,#2a,#02,#2b
	db #32,#2b,#52,#2b,#72,#2b,#92,#2b
	db #a2,#2b,#b2,#2b,#c2,#2b,#00,#00
	db #80,#00,#40,#01,#a0,#01,#40,#02
	db #e8,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
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
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#0a,#09
	db #09,#09,#08,#08,#08,#07,#07,#07
	db #06,#06,#06,#05,#05,#05,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0d
	db #0c,#0b,#80,#80,#80,#80,#80,#80
	db #80,#00,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#00,#0e,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#38,#00
	db #60,#00,#b0,#00,#18,#01,#48,#01
	db #80,#01,#c8,#01,#10,#02,#58,#02
	db #b0,#02,#f0,#02,#60,#03,#b0,#03
	db #30,#04,#90,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0d,#0c,#0c,#0b,#0a,#09,#09
	db #08,#07,#06,#06,#05,#04,#03,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#06
	db #06,#05,#04,#04,#83,#82,#81,#80
	db #80,#80,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0b,#0a
	db #09,#07,#05,#07,#09,#0b,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#09,#09,#09,#09,#09,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#f7,#00
	db #fb,#f7,#00,#fb,#f7,#00,#fb,#f7
	db #00,#fb,#f7,#00,#fb,#f7,#00,#fb
	db #f7,#00,#fb,#f7,#00,#fb,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#f9,#00
	db #fd,#f9,#00,#fd,#f9,#00,#fd,#f9
	db #00,#fd,#f9,#00,#fd,#f9,#00,#fd
	db #f9,#00,#fd,#f9,#00,#fd,#00,#fc
	db #f7,#00,#fc,#f7,#00,#fc,#f7,#00
	db #fc,#f7,#00,#fc,#f7,#00,#fc,#f7
	db #00,#fc,#f7,#00,#fc,#f7,#00,#fc
	db #f7,#00,#fc,#f7,#00,#fc,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#f8,#00
	db #fb,#f8,#00,#fb,#f8,#00,#fb,#f8
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#00,#86
	db #72,#00,#86,#72,#00,#86,#72,#00
	db #86,#72,#00,#86,#72,#00,#86,#72
	db #00,#86,#72,#00,#86,#72,#00,#86
	db #72,#00,#86,#72,#80,#2f,#72,#00
	db #06,#73,#00,#06,#73,#00,#2b,#73
	db #00,#72,#73,#00,#b9,#73,#00,#b9
	db #73,#00,#b9,#73,#00,#b9,#73,#00
	db #2b,#73,#00,#72,#73,#80,#50,#72
	db #00,#83,#72,#00,#d2,#73,#00,#e2
	db #73,#00,#e2,#73,#00,#07,#74,#00
	db #4e,#74,#00,#82,#74,#00,#82,#74
	db #00,#e2,#73,#00,#e2,#73,#80,#71
	db #72,#00,#40,#ff,#38,#10,#04,#38
	db #50,#02,#38,#10,#02,#73,#40,#02
	db #38,#10,#02,#38,#50,#02,#38,#10
	db #02,#38,#10,#04,#38,#50,#02,#38
	db #10,#02,#73,#40,#02,#38,#10,#02
	db #38,#50,#04,#38,#10,#04,#38,#50
	db #02,#38,#10,#02,#73,#40,#02,#38
	db #10,#02,#38,#50,#02,#38,#10,#02
	db #38,#10,#04,#38,#50,#02,#38,#10
	db #02,#73,#40,#02,#38,#10,#02,#38
	db #50,#04,#ff,#73,#40,#04,#73,#40
	db #04,#73,#40,#04,#73,#40,#04,#73
	db #40,#04,#73,#40,#04,#73,#40,#04
	db #73,#40,#04,#73,#40,#04,#73,#40
	db #04,#73,#40,#04,#73,#40,#04,#73
	db #40,#04,#73,#40,#04,#73,#40,#04
	db #73,#40,#04,#ff,#73,#40,#04,#73
	db #40,#08,#73,#40,#04,#73,#40,#04
	db #73,#40,#08,#73,#40,#04,#73,#40
	db #04,#73,#40,#08,#73,#40,#04,#73
	db #40,#04,#73,#40,#08,#73,#40,#04
	db #ff,#00,#02,#4c,#31,#20,#4c,#30
	db #02,#ca,#30,#4c,#30,#03,#47,#30
	db #02,#45,#30,#02,#43,#30,#02,#47
	db #30,#02,#45,#30,#02,#43,#30,#02
	db #40,#30,#06,#40,#30,#02,#43,#30
	db #02,#45,#30,#04,#45,#30,#02,#43
	db #30,#02,#45,#30,#04,#45,#30,#02
	db #43,#30,#02,#47,#30,#03,#47,#30
	db #03,#4a,#30,#02,#47,#30,#08,#ff
	db #00,#02,#4c,#31,#20,#4c,#30,#02
	db #ca,#30,#4c,#30,#03,#47,#30,#02
	db #45,#30,#02,#43,#30,#02,#47,#30
	db #02,#45,#30,#02,#43,#30,#02,#40
	db #30,#06,#40,#30,#02,#43,#30,#02
	db #45,#30,#04,#45,#30,#02,#43,#30
	db #02,#45,#30,#04,#45,#30,#02,#43
	db #30,#02,#42,#30,#03,#42,#30,#03
	db #43,#30,#02,#42,#30,#08,#ff,#58
	db #8f,#c1,#58,#80,#02,#56,#8f,#e2
	db #56,#80,#02,#55,#8f,#e3,#55,#80
	db #02,#54,#8f,#a4,#53,#80,#08,#ff
	db #28,#20,#10,#2c,#20,#10,#2d,#20
	db #10,#2f,#20,#0c,#2b,#20,#04,#ff
	db #28,#20,#04,#73,#40,#08,#73,#40
	db #04,#2c,#20,#04,#73,#40,#08,#73
	db #40,#04,#2d,#20,#04,#73,#40,#08
	db #73,#40,#04,#2f,#20,#04,#73,#40
	db #08,#2b,#20,#04,#ff,#00,#02,#4c
	db #30,#02,#4c,#30,#02,#ca,#30,#4c
	db #30,#03,#47,#30,#02,#45,#30,#02
	db #43,#30,#02,#47,#30,#02,#45,#30
	db #02,#43,#30,#02,#40,#30,#06,#40
	db #30,#02,#43,#30,#02,#45,#30,#04
	db #45,#30,#02,#43,#30,#02,#45,#30
	db #04,#45,#30,#02,#43,#30,#02,#47
	db #30,#03,#47,#30,#03,#4a,#30,#02
	db #47,#30,#08,#ff,#53,#30,#02,#51
	db #30,#02,#4f,#30,#02,#4c,#30,#0a
	db #53,#30,#02,#51,#30,#02,#4f,#30
	db #02,#4c,#30,#0c,#51,#30,#02,#51
	db #30,#04,#51,#30,#04,#51,#30,#02
	db #4f,#30,#02,#53,#30,#03,#53,#30
	db #03,#51,#30,#02,#53,#30,#08,#ff
	db #d8,#70,#d6,#70,#53,#70,#02,#51
	db #70,#02,#d3,#70,#4c,#70,#02,#cc
	db #70,#cf,#70,#cc,#70,#51,#70,#02
	db #53,#70,#02,#4c,#70,#03,#cc,#70
	db #4f,#70,#02,#cc,#70,#51,#70,#02
	db #cc,#70,#53,#70,#02,#51,#70,#02
	db #4f,#70,#02,#4c,#70,#02,#58,#70
	db #02,#58,#70,#02,#58,#70,#02,#d8
	db #70,#d6,#70,#53,#70,#02,#58,#70
	db #04,#d8,#70,#d6,#70,#d3,#70,#d1
	db #70,#53,#70,#02,#d1,#70,#53,#70
	db #09,#ff
;
.music_info
	db "Christmas 2001 - Part 2 - Music 4 (2002)(Brothers)(FG Brain)",0
	db "ST-128 Module",0

	read "music_end.asm"
