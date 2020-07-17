; Music of Tetris '95 (1995)(Power System)(Christophe Kastriottis)(ST-128 Module)
; Ripped by Megachur the 08/07/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TETRIS95.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #7000

	read "music_header.asm"

	jp l7009
	jp l709d
	jp l7081
;
.init_music
.l7009
;
	xor a
	ld hl,l75b4
	call l707a
	ld hl,l75e2
	call l707a
	ld hl,l7610
	call l707a
	ld ix,l75b0
	ld iy,l763a
	ld de,#002e
	ld b,#03
.l7029
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
	djnz l7029
	ld hl,l74c9
	ld (hl),#08
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l74c5),hl
	ld (l74c7),hl
	ld a,#0c
	ld c,d
	call l74a5
	ld a,#0d
	ld c,d
	jp l74a5
.l707a
	ld b,#2a
.l707c
	ld (hl),a
	inc hl
	djnz l707c
	ret
;
.stop_music
.l7081
;
	ld a,#07
	ld c,#3f
	call l74a5
	ld a,#08
	ld c,#00
	call l74a5
	ld a,#09
	ld c,#00
	call l74a5
	ld a,#0a
	ld c,#00
	jp l74a5
;
.play_music
.l709d
;
	ld hl,l74cb
	dec (hl)
	ld ix,l75b0
	ld bc,l75be
	call l713f
	ld ix,l75de
	ld bc,l75ec
	call l713f
	ld ix,l760c
	ld bc,l761a
	call l713f
	ld hl,l74c4
	ld de,l74cb
	ld b,#06
	call l711c
	ld b,#07
	call l711c
	ld b,#0b
	call l711c
	ld b,#0d
	call l711c
	ld de,l74cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l75cf
	call l70f5
	ld hl,l75fd
	call l70f5
	ld hl,l762b
.l70f5
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
	jr nz,l710a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l710a
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
.l711c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l74a5
.l7127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l74a5
.l713f
	ld a,(l74cb)
	or a
	jp nz,l71f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l71f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l7127
	or a
	jp z,l71ec
	ld r,a
	and #7f
	cp #10
	jr c,l71c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l733f
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
	jr z,l71a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l71a0
	rrca
	ld c,a
	ld hl,l7640
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
	jr z,l71bf
	ld (ix+#1e),b
.l71bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l71e0
.l71c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l74d0
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
.l71e0
	ld a,d
	or a
	jr nz,l71ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l71ee
.l71ec
	ld a,(hl)
	inc hl
.l71ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l71f7
	ld a,(ix+#17)
	or a
	jr nz,l720d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l720d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l7223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l7223
	ld a,(ix+#0d)
	or a
	jr z,l7231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l724f
.l7231
	ld a,(ix+#1a)
	or a
	jp z,l7256
	ld c,a
	cp #03
	jr nz,l723e
	xor a
.l723e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l724f
	ld a,(ix+#18)
	dec c
	jr z,l724f
	ld a,(ix+#19)
.l724f
	add (ix+#07)
	ld b,d
	call l733f
.l7256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l727e
	dec (ix+#1b)
	jr nz,l727e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l72b6
.l727e
	ld a,(ix+#29)
	or a
	jr z,l72b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l72ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l72a4
	ld (ix+#29),#ff
	jr l72ad
.l72a4
	cp (ix+#2b)
	jr nz,l72ad
	ld (ix+#29),#01
.l72ad
	ld b,d
	or a
	jp p,l72b3
	dec b
.l72b3
	ld c,a
	jr l72c1
.l72b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l72c1
	pop hl
	bit 7,(ix+#14)
	jr z,l72ca
	ld h,d
	ld l,d
.l72ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l74a5
	ld c,h
	ld a,(ix+#02)
	call l74a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l731d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l730c
	dec (ix+#09)
	jr nz,l730c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l7304
	xor a
	jr l7309
.l7304
	cp #10
	jr nz,l7309
	dec a
.l7309
	ld (ix+#1e),a
.l730c
	ld a,b
	sub (ix+#1e)
	jr nc,l7313
	xor a
.l7313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l74a5
.l731d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l74cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l733b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l733b
	ld (l74cc),hl
	ret
.l733f
	ld hl,l74ee
	cp #61
	jr nc,l7349
	add a
	ld c,a
	add hl,bc
.l7349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l7478
	ld (ix+#1e),a
	jp l71e0
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l7371
	neg
.l7371
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
	jp l71e0
	dec b
	jr l738b
	inc b
.l738b
	call l7478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l71e0
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
	jp l745d
	ld a,(hl)
	inc hl
	or a
	jr z,l73cd
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
.l73cd
	ld (ix+#29),a
	jp l71e0
	dec hl
	ld a,(hl)
	and #0f
	ld (l74cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l74ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l71e0
	ld a,(hl)
	or a
	jr z,l73fe
	call l747a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l71e0
.l73fe
	ld hl,#0101
	ld (l74ca),hl
	jp l71e0
	call l7478
	ld (ix+#1e),a
	jp l71e0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l7489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l7489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l71e0
	ld a,(hl)
	inc hl
	ld (l74c9),a
	jp l71e0
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
	jp l71e0
	call l7478
	add a
.l745d
	ld b,#00
	ld c,a
	push hl
	ld hl,l76c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l71e0
.l7478
	ld a,(hl)
	inc hl
.l747a
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
.l7489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l7640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l74a5
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
.l74c4
	ret
.l74cc equ $ + 7
.l74cb equ $ + 6
.l74ca equ $ + 5
.l74c9 equ $ + 4
.l74c7 equ $ + 2
.l74c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l74cf equ $ + 2
.l74ce equ $ + 1
	db #38,#00,#00
.l74d0
	dw #7353,#7366,#7365,#738a	; à revoir
	dw #7387,#739a,#73ab,#73d3
	dw #73ed,#73d3,#7407,#7410
	dw #7432,#743a,#7459
.l74ee
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
.l75b4 equ $ + 4
.l75b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l75be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l75cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l75de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l75e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l75ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l75fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l760c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l7610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l761a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l762b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l763a
	dw l7800,l7809,l7812
.l7640
	db #27,#85,#7c,#da,#7c,#da,#55,#55
	db #27,#85,#7c,#da,#7c,#da,#55,#55
	db #e0,#76,#20,#77,#40,#77,#9a,#06
	db #27,#85,#7c,#da,#7c,#da,#55,#55
	db #27,#85,#7c,#da,#7c,#da,#55,#55
	db #27,#85,#7c,#da,#7c,#da,#55,#55
	db #60,#77,#a0,#77,#c0,#77,#10,#10
	db #27,#85,#7c,#da,#7c,#da,#55,#55
	db #e0,#76,#e0,#77,#c0,#77,#00,#00
	db #27,#85,#7c,#da,#7c,#da,#55,#55
	db #27,#85,#7c,#da,#7c,#da,#55,#55
	db #27,#85,#7c,#da,#7c,#da,#55,#55
	db #27,#85,#7c,#da,#7c,#da,#55,#55
	db #27,#85,#7c,#da,#7c,#da,#55,#55
	db #27,#85,#7c,#da,#7c,#da,#55,#55
	db #27,#85,#7c,#da,#7c,#da,#55,#55
.l76c0
	db #27,#85,#7c,#da,#7c,#da,#27,#85
	db #27,#85,#7c,#da,#7c,#da,#27,#85
	db #27,#85,#27,#85,#27,#85,#7c,#da
	db #7c,#da,#27,#85,#27,#85,#7c,#da
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#09,#09,#08,#08,#07
	db #06,#05,#04,#03,#02,#01,#01,#01
.l7800
	db #00,#1b,#78,#00,#56,#78,#80,#00
.l7809 equ $ + 1
	db #78,#00,#97,#78,#00,#c9,#78,#80
.l7812 equ $ + 2
	db #09,#78,#00,#fa,#78,#00,#5b,#79
	db #80,#12,#78,#44,#67,#21,#04,#3f
	db #60,#02,#40,#60,#02,#42,#60,#04
	db #40,#60,#02,#3f,#60,#02,#3d,#60
	db #04,#3d,#60,#02,#40,#60,#02,#44
	db #60,#04,#42,#60,#02,#40,#60,#02
	db #3f,#60,#06,#40,#60,#02,#42,#60
	db #04,#44,#60,#04,#40,#60,#04,#3d
	db #60,#04,#3d,#60,#08,#ff,#42,#67
	db #21,#06,#45,#60,#02,#49,#60,#04
	db #47,#60,#02,#45,#60,#02,#44,#60
	db #04,#44,#60,#02,#45,#60,#02,#47
	db #60,#04,#49,#60,#04,#45,#60,#04
	db #42,#60,#04,#42,#60,#08,#4e,#60
	db #02,#50,#60,#02,#51,#60,#02,#4e
	db #60,#02,#55,#60,#02,#53,#60,#02
	db #51,#60,#02,#50,#60,#02,#ff,#2c
	db #6d,#08,#04,#38,#60,#04,#2c,#60
	db #04,#38,#60,#04,#31,#60,#04,#3d
	db #60,#04,#31,#60,#04,#3d,#60,#04
	db #33,#60,#04,#3f,#60,#04,#33,#60
	db #04,#3f,#60,#04,#34,#60,#04,#40
	db #60,#04,#34,#60,#04,#40,#60,#04
	db #ff,#36,#60,#04,#42,#60,#04,#36
	db #60,#04,#42,#60,#04,#38,#60,#04
	db #44,#60,#04,#38,#60,#04,#44,#60
	db #04,#39,#60,#04,#45,#60,#04,#39
	db #60,#04,#45,#60,#04,#36,#60,#04
	db #42,#60,#04,#36,#60,#04,#42,#60
	db #04,#ff,#42,#20,#02,#2c,#80,#02
	db #42,#20,#02,#38,#80,#02,#42,#20
	db #02,#2c,#80,#02,#42,#20,#02,#38
	db #80,#02,#42,#20,#02,#31,#80,#02
	db #42,#20,#02,#3d,#80,#02,#42,#20
	db #02,#31,#80,#02,#42,#20,#02,#3d
	db #80,#02,#42,#20,#02,#33,#80,#02
	db #42,#20,#02,#3f,#80,#02,#42,#20
	db #02,#33,#80,#02,#42,#20,#02,#3f
	db #80,#02,#42,#20,#02,#34,#80,#02
	db #42,#20,#02,#40,#80,#02,#42,#20
	db #02,#34,#80,#02,#42,#20,#02,#40
	db #80,#02,#ff,#42,#20,#02,#36,#80
	db #02,#42,#20,#02,#42,#80,#02,#42
	db #20,#02,#36,#80,#02,#42,#20,#02
	db #42,#80,#02,#42,#20,#02,#38,#80
	db #02,#42,#20,#02,#44,#80,#02,#42
	db #20,#02,#38,#80,#02,#42,#20,#02
	db #44,#80,#02,#42,#20,#02,#39,#80
	db #02,#42,#20,#02,#45,#80,#02,#42
	db #20,#02,#39,#80,#02,#42,#20,#02
	db #45,#80,#02,#42,#20,#02,#36,#80
	db #02,#42,#20,#02,#42,#80,#02,#42
	db #20,#02,#36,#80,#02,#42,#20,#02
	db #42,#80,#02,#ff
;
.music_info
	db "Tetris '95 (1995)(Power System)(Christophe Kastriottis)",0
	db "ST-128 Module",0

	read "music_end.asm"
