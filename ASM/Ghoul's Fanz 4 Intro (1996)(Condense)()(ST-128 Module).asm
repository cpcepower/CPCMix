; Music of Ghoul's Fanz 4 Intro (1996)(Condense)()(ST-128 Module)
; Ripped by Megachur the 04/10/2014
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "GHOULF4I.BIN"
	ENDIF

music_date_rip_day		equ 04
music_date_rip_month	equ 10
music_date_rip_year		equ 2014
music_adr				equ &4900

	read "music_header.asm"

	jp l4909
	jp l499d
	jp l4981
;
.init_music
.l4909
;
	xor a
	ld hl,l4eb4
	call l497a
	ld hl,l4ee2
	call l497a
	ld hl,l4f10
	call l497a
	ld ix,l4eb0
	ld iy,l4f3a
	ld de,#002e
	ld b,#03
.l4929
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
	djnz l4929
	ld hl,l4dc9
	ld (hl),#03
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l4dc5),hl
	ld (l4dc7),hl
	ld a,#0c
	ld c,d
	call l4da5
	ld a,#0d
	ld c,d
	jp l4da5
.l497a
	ld b,#2a
.l497c
	ld (hl),a
	inc hl
	djnz l497c
	ret
;
.stop_music
.l4981
;
	ld a,#07
	ld c,#3f
	call l4da5
	ld a,#08
	ld c,#00
	call l4da5
	ld a,#09
	ld c,#00
	call l4da5
	ld a,#0a
	ld c,#00
	jp l4da5
;
.play_music
.l499d
;
	ld hl,l4dcb
	dec (hl)
	ld ix,l4eb0
	ld bc,l4ebe
	call l4a3f
	ld ix,l4ede
	ld bc,l4eec
	call l4a3f
	ld ix,l4f0c
	ld bc,l4f1a
	call l4a3f
	ld hl,l4dc4
	ld de,l4dcb
	ld b,#06
	call l4a1c
	ld b,#07
	call l4a1c
	ld b,#0b
	call l4a1c
	ld b,#0d
	call l4a1c
	ld de,l4dcb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l4ecf
	call l49f5
	ld hl,l4efd
	call l49f5
	ld hl,l4f2b
.l49f5
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
	jr nz,l4a0a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4a0a
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
.l4a1c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l4da5
.l4a27
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l4da5
.l4a3f
	ld a,(l4dcb)
	or a
	jp nz,l4af7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4af7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4a27
	or a
	jp z,l4aec
	ld r,a
	and #7f
	cp #10
	jr c,l4ac7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l4c3f
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
	jr z,l4aa0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l4aa0
	rrca
	ld c,a
	ld hl,l4f40
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
	jr z,l4abf
	ld (ix+#1e),b
.l4abf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l4ae0
.l4ac7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l4dd0
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
.l4ae0
	ld a,d
	or a
	jr nz,l4aee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l4aee
.l4aec
	ld a,(hl)
	inc hl
.l4aee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4af7
	ld a,(ix+#17)
	or a
	jr nz,l4b0d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l4b0d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4b23
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4b23
	ld a,(ix+#0d)
	or a
	jr z,l4b31
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l4b4f
.l4b31
	ld a,(ix+#1a)
	or a
	jp z,l4b56
	ld c,a
	cp #03
	jr nz,l4b3e
	xor a
.l4b3e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l4b4f
	ld a,(ix+#18)
	dec c
	jr z,l4b4f
	ld a,(ix+#19)
.l4b4f
	add (ix+#07)
	ld b,d
	call l4c3f
.l4b56
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l4b7e
	dec (ix+#1b)
	jr nz,l4b7e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l4bb6
.l4b7e
	ld a,(ix+#29)
	or a
	jr z,l4bb6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l4bad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l4ba4
	ld (ix+#29),#ff
	jr l4bad
.l4ba4
	cp (ix+#2b)
	jr nz,l4bad
	ld (ix+#29),#01
.l4bad
	ld b,d
	or a
	jp p,l4bb3
	dec b
.l4bb3
	ld c,a
	jr l4bc1
.l4bb6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4bc1
	pop hl
	bit 7,(ix+#14)
	jr z,l4bca
	ld h,d
	ld l,d
.l4bca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l4da5
	ld c,h
	ld a,(ix+#02)
	call l4da5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4c1d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l4c0c
	dec (ix+#09)
	jr nz,l4c0c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4c04
	xor a
	jr l4c09
.l4c04
	cp #10
	jr nz,l4c09
	dec a
.l4c09
	ld (ix+#1e),a
.l4c0c
	ld a,b
	sub (ix+#1e)
	jr nc,l4c13
	xor a
.l4c13
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l4da5
.l4c1d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l4dcc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l4c3b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l4c3b
	ld (l4dcc),hl
	ret
.l4c3f
	ld hl,l4dee
	cp #61
	jr nc,l4c49
	add a
	ld c,a
	add hl,bc
.l4c49
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l4c53
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l4d78
	ld (ix+#1e),a
	jp l4ae0
.l4c65
	dec b
.l4c66
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l4c71
	neg
.l4c71
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
	jp l4ae0
.l4c87
	dec b
	jr l4c8b
.l4c8a
	inc b
.l4c8b
	call l4d78
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l4ae0
.l4c9a
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
	jp l4d5d
.l4cab
	ld a,(hl)
	inc hl
	or a
	jr z,l4ccd
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
.l4ccd
	ld (ix+#29),a
	jp l4ae0
.l4cd3
	dec hl
	ld a,(hl)
	and #0f
	ld (l4dcf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l4dce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l4ae0
.l4ced
	ld a,(hl)
	or a
	jr z,l4cfe
	call l4d7a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l4ae0
.l4cfe
	ld hl,#0101
	ld (l4dca),hl
	jp l4ae0
.l4d07
	call l4d78
	ld (ix+#1e),a
	jp l4ae0
.l4d10
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l4d89
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l4d89
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l4ae0
.l4d32
	ld a,(hl)
	inc hl
	ld (l4dc9),a
	jp l4ae0
.l4d3a
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
	jp l4ae0
.l4d59
	call l4d78
	add a
.l4d5d
	ld b,#00
	ld c,a
	push hl
	ld hl,l4fc0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l4ae0
.l4d78
	ld a,(hl)
	inc hl
.l4d7a
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
.l4d89
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l4f40
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l4da5
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
.l4dc4
	ret
.l4dcc equ $ + 7
.l4dcb equ $ + 6
.l4dca equ $ + 5
.l4dc9 equ $ + 4
.l4dc7 equ $ + 2
.l4dc5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4dcf equ $ + 2
.l4dce equ $ + 1
	db #38,#00,#00
.l4dd0
	dw l4c53,l4c66,l4c65,l4c8a
	dw l4c87,l4c9a,l4cab,l4cd3
	dw l4ced,l4cd3,l4d07,l4d10
	dw l4d32,l4d3a,l4d59
.l4dee
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
.l4eb0 equ $ + 2
	dw #000f,#0008
.l4eb4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l4ebe equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ecf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4ede equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l4ee2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4eec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4efd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f10 equ $ + 6
.l4f0c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f1a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f2b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4f40 equ $ + 6
.l4f3a
	db #a0,#51,#fd,#51,#5a,#52,#d2,#08
	db #d2,#08,#d2,#08,#00,#00,#e0,#4f
	db #20,#50,#40,#50,#40,#00,#60,#50
	db #a0,#50,#c0,#50,#c0,#00,#d2,#08
	db #d2,#08,#d2,#08,#00,#00,#d2,#08
	db #d2,#08,#d2,#08,#00,#00,#d2,#08
	db #d2,#08,#d2,#08,#00,#00,#d2,#08
	db #d2,#08,#d2,#08,#00,#00,#d2,#08
	db #d2,#08,#d2,#08,#00,#00,#e0,#50
	db #20,#51,#40,#51,#c0,#00,#d2,#08
	db #d2,#08,#d2,#08,#00,#00,#e0,#50
	db #60,#51,#40,#50,#5e,#02,#d2,#08
	db #d2,#08,#d2,#08,#00,#00,#d2,#08
	db #d2,#08,#d2,#08,#00,#00,#d2,#08
	db #d2,#08,#d2,#08,#00,#00,#d2,#08
	db #d2,#08,#d2,#08,#00,#00,#d2,#08
.l4fc0 equ $ + 6
	db #d2,#08,#d2,#08,#00,#00,#80,#51
	db #d2,#08,#d2,#08,#d2,#08,#d2,#08
	db #d2,#08,#d2,#08,#d2,#08,#d2,#08
	db #d2,#08,#d2,#08,#d2,#08,#d2,#08
	db #d2,#08,#d2,#08,#d2,#08,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#07,#07,#06,#06,#05,#05
	db #04,#04,#03,#03,#02,#02,#01,#00
	db #80,#80,#80,#80,#80,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#90,#01
	db #d0,#01,#10,#02,#50,#02,#90,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0e
	db #0e,#0e,#0d,#0d,#0a,#06,#02,#81
	db #81,#81,#81,#81,#81,#81,#81,#81
	db #81,#81,#81,#81,#81,#81,#81,#81
	db #81,#81,#81,#81,#81,#81,#06,#00
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
	db #00,#00,#00,#00,#00,#00,#0e,#0d
	db #0d,#0d,#0d,#0c,#0a,#07,#05,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0d
	db #0d,#0d,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#0a,#09,#09
	db #09,#09,#09,#09,#08,#08,#fc,#fb
	db #fb,#fb,#fb,#fb,#fb,#fb,#fc,#fb
	db #fb,#fb,#fb,#fb,#fb,#fb,#fb,#fb
	db #fb,#fb,#fb,#fb,#fb,#fb,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#b7
	db #52,#00,#b7,#52,#00,#b7,#52,#00
	db #b7,#52,#00,#b7,#52,#00,#b7,#52
	db #00,#00,#53,#00,#00,#53,#00,#00
	db #53,#00,#00,#53,#00,#00,#53,#00
	db #00,#53,#00,#00,#53,#00,#00,#53
	db #00,#00,#53,#00,#00,#53,#00,#00
	db #53,#00,#00,#53,#00,#b7,#52,#00
	db #b7,#52,#00,#b7,#52,#00,#b7,#52
	db #00,#b7,#52,#00,#b7,#52,#00,#b7
	db #52,#00,#b7,#52,#00,#00,#53,#00
	db #00,#53,#00,#51,#53,#00,#5b,#53
	db #80,#a0,#51,#00,#5b,#53,#00,#5b
	db #53,#00,#63,#53,#00,#63,#53,#00
	db #7c,#53,#00,#7c,#53,#00,#12,#54
	db #00,#49,#54,#00,#12,#54,#00,#49
	db #54,#00,#e1,#53,#00,#b0,#53,#00
	db #e1,#53,#00,#b0,#53,#00,#12,#54
	db #00,#49,#54,#00,#12,#54,#00,#49
	db #54,#00,#b7,#54,#00,#e8,#54,#00
	db #b7,#54,#00,#e8,#54,#00,#12,#54
	db #00,#80,#54,#00,#12,#54,#00,#80
	db #54,#00,#12,#54,#00,#49,#54,#00
	db #b7,#52,#00,#b7,#52,#80,#fd,#51
	db #00,#5b,#53,#00,#5b,#53,#00,#1f
	db #55,#00,#1f,#55,#00,#1f,#55,#00
	db #1f,#55,#00,#b6,#55,#00,#ff,#55
	db #00,#b6,#55,#00,#ff,#55,#00,#6c
	db #55,#00,#22,#55,#00,#6c,#55,#00
	db #22,#55,#00,#b6,#55,#00,#ff,#55
	db #00,#b6,#55,#00,#ff,#55,#00,#ad
	db #56,#00,#e4,#56,#00,#ad,#56,#00
	db #e4,#56,#00,#48,#56,#00,#53,#56
	db #00,#48,#56,#00,#53,#56,#00,#b6
	db #55,#00,#ff,#55,#00,#64,#56,#00
	db #ff,#55,#80,#5a,#52,#23,#18,#28
	db #04,#2f,#18,#28,#04,#23,#18,#28
	db #02,#2f,#18,#28,#04,#2f,#18,#28
	db #02,#23,#18,#28,#04,#2f,#18,#28
	db #04,#23,#18,#28,#04,#2f,#18,#28
	db #04,#1f,#18,#32,#04,#2b,#18,#32
	db #04,#1f,#18,#32,#02,#2b,#18,#32
	db #04,#2b,#18,#32,#02,#21,#18,#2d
	db #04,#2d,#18,#2d,#04,#21,#18,#2d
	db #04,#2d,#18,#2d,#04,#ff,#23,#18
	db #28,#04,#2f,#18,#28,#04,#23,#18
	db #28,#02,#2f,#18,#28,#04,#2f,#18
	db #28,#02,#23,#18,#28,#04,#2f,#18
	db #28,#04,#23,#18,#28,#02,#2f,#18
	db #28,#04,#2f,#18,#28,#02,#1f,#18
	db #32,#04,#2b,#18,#32,#04,#1f,#18
	db #32,#02,#2b,#18,#32,#04,#2b,#18
	db #32,#02,#21,#18,#2d,#04,#2d,#18
	db #2d,#04,#21,#18,#2d,#02,#2d,#18
	db #2d,#04,#2d,#18,#2d,#02,#ff,#fe
	db #01,#fe,#01,#fe,#01,#01,#00,#3d
	db #ff,#fe,#01,#fe,#01,#01,#00,#3e
	db #ff,#31,#20,#08,#31,#20,#08,#31
	db #20,#08,#31,#20,#08,#31,#20,#08
	db #31,#20,#08,#31,#20,#08,#31,#20
	db #08,#ff,#2f,#20,#04,#31,#80,#04
	db #3d,#20,#04,#31,#80,#04,#2f,#20
	db #04,#31,#80,#04,#3d,#20,#04,#31
	db #80,#04,#2f,#20,#04,#31,#80,#04
	db #3d,#20,#04,#31,#80,#04,#2f,#20
	db #04,#31,#80,#04,#3d,#20,#04,#31
	db #80,#02,#31,#80,#02,#ff,#2f,#20
	db #04,#31,#80,#04,#2f,#20,#04,#31
	db #80,#04,#2f,#20,#04,#31,#80,#04
	db #2f,#20,#04,#31,#80,#04,#2f,#20
	db #04,#31,#80,#04,#2f,#20,#04,#31
	db #80,#04,#2f,#20,#04,#31,#80,#04
	db #2f,#20,#04,#31,#80,#04,#ff,#2f
	db #20,#04,#2f,#80,#04,#2f,#20,#04
	db #2f,#80,#04,#2f,#20,#04,#2f,#80
	db #04,#2f,#20,#04,#2f,#80,#04,#2f
	db #20,#04,#2f,#80,#04,#2f,#20,#04
	db #2f,#80,#04,#2f,#20,#04,#2f,#80
	db #04,#2f,#20,#04,#2f,#80,#04,#ff
	db #31,#20,#04,#31,#80,#04,#31,#20
	db #04,#31,#80,#04,#31,#20,#04,#31
	db #80,#04,#31,#20,#04,#31,#80,#04
	db #31,#20,#04,#31,#80,#04,#31,#20
	db #04,#31,#80,#04,#31,#20,#04,#31
	db #80,#04,#31,#20,#02,#31,#80,#02
	db #31,#20,#02,#31,#80,#02,#ff,#2f
	db #20,#04,#31,#80,#04,#2f,#20,#04
	db #31,#80,#04,#2f,#20,#04,#31,#80
	db #04,#2f,#20,#04,#31,#80,#04,#2f
	db #20,#04,#31,#80,#04,#2f,#20,#04
	db #31,#80,#04,#2f,#20,#04,#31,#80
	db #04,#2f,#20,#02,#31,#80,#02,#2f
	db #20,#02,#31,#80,#02,#ff,#31,#20
	db #04,#31,#80,#04,#31,#20,#04,#31
	db #80,#04,#31,#20,#04,#31,#80,#04
	db #31,#20,#04,#31,#80,#04,#31,#20
	db #04,#55,#80,#04,#31,#20,#04,#55
	db #80,#04,#31,#20,#04,#55,#80,#04
	db #31,#20,#02,#55,#80,#02,#31,#20
	db #02,#55,#80,#02,#ff,#63,#21,#40
	db #63,#80,#04,#63,#20,#04,#63,#80
	db #04,#63,#20,#04,#63,#80,#04,#63
	db #20,#04,#63,#80,#04,#63,#20,#04
	db #63,#80,#04,#63,#20,#04,#63,#80
	db #04,#63,#20,#04,#63,#80,#04,#63
	db #20,#04,#63,#80,#04,#ff,#5f,#21
	db #40,#5f,#80,#04,#5f,#20,#04,#5f
	db #80,#04,#5f,#20,#04,#5f,#80,#04
	db #5f,#20,#04,#5f,#80,#04,#5f,#20
	db #04,#5f,#80,#04,#5f,#20,#04,#5f
	db #80,#04,#5f,#20,#04,#5f,#80,#04
	db #5f,#20,#02,#5f,#80,#02,#5f,#20
	db #02,#5f,#80,#02,#ff,#00,#40,#ff
	db #53,#1e,#0c,#04,#5f,#10,#02,#47
	db #10,#02,#53,#10,#04,#5f,#10,#02
	db #47,#10,#02,#53,#10,#04,#5f,#10
	db #02,#47,#10,#02,#53,#10,#04,#5f
	db #10,#02,#47,#10,#02,#5b,#10,#04
	db #67,#10,#02,#4f,#10,#02,#5b,#10
	db #04,#67,#10,#02,#4f,#10,#02,#5d
	db #10,#04,#69,#10,#02,#51,#10,#02
	db #5d,#10,#04,#69,#10,#02,#51,#10
	db #02,#ff,#53,#1e,#01,#04,#5f,#10
	db #02,#47,#10,#02,#53,#10,#04,#5f
	db #10,#02,#47,#10,#02,#53,#10,#04
	db #5f,#10,#02,#47,#10,#02,#53,#10
	db #04,#5f,#10,#02,#47,#10,#02,#5b
	db #10,#04,#67,#10,#02,#4f,#10,#02
	db #5b,#10,#04,#67,#10,#02,#4f,#10
	db #02,#5d,#10,#04,#69,#10,#02,#51
	db #10,#02,#5d,#10,#04,#69,#10,#02
	db #51,#10,#02,#ff,#53,#1f,#40,#5f
	db #10,#02,#47,#10,#02,#53,#10,#04
	db #5f,#10,#02,#47,#10,#02,#53,#10
	db #04,#5f,#10,#02,#47,#10,#02,#53
	db #10,#04,#5f,#10,#02,#47,#10,#02
	db #4f,#10,#04,#5b,#10,#02,#43,#10
	db #02,#4f,#10,#04,#5b,#10,#02,#43
	db #10,#02,#51,#10,#04,#5d,#10,#02
	db #45,#10,#02,#51,#10,#04,#5d,#10
	db #02,#45,#10,#02,#ff,#53,#1f,#40
	db #5f,#10,#02,#47,#10,#02,#53,#10
	db #04,#5f,#10,#02,#47,#10,#02,#53
	db #10,#04,#5f,#10,#02,#47,#10,#02
	db #53,#10,#04,#5f,#10,#02,#47,#10
	db #02,#5b,#10,#04,#67,#10,#02,#4f
	db #10,#02,#5b,#10,#04,#67,#10,#02
	db #4f,#10,#02,#5d,#10,#04,#69,#10
	db #02,#51,#10,#02,#5d,#10,#04,#69
	db #10,#02,#51,#10,#02,#ff,#53,#ae
	db #0c,#20,#56,#a0,#10,#55,#a0,#10
	db #ff,#53,#ae,#0c,#20,#56,#a0,#10
	db #55,#a0,#08,#53,#a0,#04,#56,#a0
	db #04,#ff,#53,#1f,#40,#5f,#10,#02
	db #47,#10,#02,#53,#10,#04,#5f,#10
	db #02,#47,#10,#02,#53,#10,#04,#5f
	db #10,#02,#47,#10,#02,#53,#10,#04
	db #5f,#10,#02,#47,#10,#02,#4f,#1f
	db #40,#5b,#10,#02,#43,#10,#02,#4f
	db #10,#04,#5b,#10,#02,#43,#10,#02
	db #51,#10,#04,#5d,#1f,#20,#45,#10
	db #02,#51,#10,#04,#5d,#10,#02,#45
	db #10,#02,#ff,#58,#1f,#40,#5f,#10
	db #04,#58,#10,#04,#5f,#1f,#20,#5d
	db #10,#04,#5d,#10,#02,#5f,#10,#04
	db #5d,#1f,#40,#5f,#10,#04,#60,#1f
	db #40,#60,#1f,#40,#5d,#1f,#40,#5d
	db #10,#02,#5b,#10,#04,#5b,#1f,#40
	db #5a,#10,#02,#5b,#10,#04,#5a,#10
	db #04,#ff,#58,#1f,#40,#5f,#10,#04
	db #58,#10,#04,#5f,#1f,#20,#5d,#10
	db #04,#5d,#10,#02,#5f,#10,#04,#5d
	db #10,#04,#5f,#10,#04,#60,#10,#04
	db #60,#1f,#40,#62,#10,#04,#60,#10
	db #02,#62,#10,#04,#64,#10,#04,#64
	db #10,#02,#66,#10,#04,#68,#10,#04
	db #ff
;
.music_info
	db "Ghoul's Fanz 4 Intro (1996)(Condense)()",0
	db "ST-128 Module",0

	read "music_end.asm"
