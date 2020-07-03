; Music of Blip Music! - 30 - A Piano Overture (1996)(Systeme D)(FruitBowl)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU30.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7800

	read "music_header.asm"

	jp l780b
	jp l7893
	jp l7877
	db #66,#04
;
.init_music
.l780b
;
	ld b,#03
	ld ix,l7bda
	ld iy,l7b06
	ld de,#001c
.l7818
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l7818
	ld a,#08
	ld (l78bb),a
	ld a,d
	ld (l78cf),a
	inc a
	ld (l78b6),a
	ld a,#38
	ld (l78c0),a
	ld a,#ff
	ld (l7b02),a
	ld (l7b03),a
	ld (l7b04),a
	ld (l7b05),a
	ld a,#0c
	ld c,d
	call l7ae4
	ld a,#0d
	ld c,d
	jp l7ae4
;
.stop_music
.l7877
;
	ld a,#07
	ld c,#3f
	call l7ae4
	ld a,#08
	ld c,#00
	call l7ae4
	ld a,#09
	ld c,#00
	call l7ae4
	ld a,#0a
	ld c,#00
	jp l7ae4
;
.play_music
.l7893
;
	ld hl,l78b6
	dec (hl)
	ld ix,l7bda
	ld bc,l7be8
	call l7949
	ld ix,l7bf6
	ld bc,l7c04
	call l7949
	ld ix,l7c12
	ld bc,l7c20
	call l7949
.l78b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l78bf
.l78bb equ $ + 1
	ld a,#00
	ld (l78b6),a
.l78c0 equ $ + 1
.l78bf
	ld a,#00
	ld hl,l7b03
	cp (hl)
	jr z,l78ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l7ae4
.l78cf equ $ + 1
.l78ce
	ld a,#00
	ld hl,l7b02
	cp (hl)
	jr z,l78dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l7ae4
.l78de equ $ + 1
.l78dd
	ld a,#00
	ld hl,l7b04
	cp (hl)
	jr z,l78ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l7ae4
.l78ed equ $ + 1
.l78ec
	ld a,#00
	ld hl,l7b05
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l7ae4
.l78fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l79fa
.l7909
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l7ae4
.l7923
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l7938
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l7938
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l795c
.l7949
	ld a,(l78b6)
	or a
	jp nz,l79fa
	dec (ix+#06)
	jp nz,l79fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l795c
	ld a,(hl)
	or a
	jr z,l78fa
	cp #fe
	jr z,l7909
	cp #ff
	jr z,l7923
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l7b0c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l7998
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l7998
	and #7f
	ld (ix+#06),a
	jr l79eb
.l7998
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l79ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l79ac
	add a
	add a
	add a
	ld e,a
	ld hl,l7c42
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l79eb
	cp #f0
	jp z,l7aa0
	cp #d0
	jp z,l7abc
	cp #b0
	jp z,l7ac4
	cp #80
	jp nc,l7acc
	cp #10
	jr nz,l79eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l79eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l79fa
	ld a,(ix+#17)
	or a
	jr nz,l7a0e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l7a0e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l7a39
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l7b0c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l7a39
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l7ae4
	ld c,h
	ld a,(ix+#03)
	call l7ae4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7a77
	and #0f
	sub (ix+#0a)
	jr nc,l7a6d
	xor a
.l7a6d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l7ae4
.l7a77
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l7a94
	ld b,a
	ld a,c
	ld (l78cf),a
	ld a,b
	sub #40
.l7a94
	ld (l7a9b),a
	ld a,(l78c0)
.l7a9b equ $ + 1
	bit 0,a
	ld (l78c0),a
	ret
.l7aa0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l7cc2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l79eb
.l7abc
	inc hl
	ld a,(hl)
	ld (l78bb),a
	jp l79eb
.l7ac4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l79eb
.l7acc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l78ed),a
	inc hl
	ld a,(hl)
	ld (l78de),a
	jp l79eb
.l7ae4
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
	ret
.l7b05 equ $ + 3
.l7b04 equ $ + 2
.l7b03 equ $ + 1
.l7b02
	db #ff,#ff,#ff,#ff
.l7b06
	dw l7ea2,l7ec0,l7ede
.l7b0c
	dw #0eee,#0e18,#0d4d,#0c8e
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l7bda
	db #00,#00,#00,#01,#08,#00,#00,#00
.l7be8 equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7bf6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l7c04 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7c12
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l7c20 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l7c42
	db #e2,#7c,#22,#7d,#42,#7d,#08,#18
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #62,#7d,#a2,#7d,#42,#7d,#10,#10
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #e2,#7c,#c2,#7d,#42,#7d,#08,#18
	db #e2,#7d,#22,#7e,#42,#7d,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#93,#64,#b8,#ed
	db #94,#64,#b8,#ed,#5e,#f5,#c2,#80
	db #1e,#f4,#dc,#76,#be,#f7,#02,#81
	db #fe,#f7,#1e,#f8,#3e,#f8,#dc,#76
	db #b6,#ed,#b8,#ed,#b8,#ed,#dc,#76
	db #e2,#7d,#42,#7e,#42,#7d,#00,#00
	db #b6,#ed,#b8,#ed,#dd,#76,#00,#00
.l7cc2
	db #62,#7e,#82,#7e,#db,#76,#dc,#76
	db #dc,#76,#dc,#76,#dd,#76,#dc,#76
	db #dc,#76,#dc,#76,#db,#76,#dc,#76
	db #dc,#76,#dc,#76,#dd,#76,#dc,#76
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #08,#08,#09,#09,#0a,#0a,#09,#09
	db #0a,#0a,#0b,#0b,#0a,#0a,#09,#09
	db #0a,#0a,#0b,#0b,#0a,#0a,#09,#09
	db #0a,#0a,#0b,#0b,#0a,#0a,#09,#09
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0c,#0c,#0d,#0d,#0e,#0e,#0d,#0d
	db #0e,#0e,#0f,#0f,#0e,#0e,#0d,#0d
	db #0e,#0e,#0f,#0f,#0e,#0e,#0d,#0d
	db #0e,#0e,#0f,#0f,#0e,#0e,#0d,#0d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #05,#04,#03,#02,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
.l7ea2
	db #00,#16,#7f,#00,#5b,#7f,#00,#a5
	db #7f,#00,#ec,#7f,#00,#ec,#7f,#00
	db #06,#80,#00,#06,#80,#00,#06,#80
.l7ec0 equ $ + 6
	db #00,#06,#80,#80,#ab,#7e,#00,#54
	db #80,#00,#58,#80,#00,#58,#80,#00
	db #82,#80,#00,#82,#80,#00,#c9,#80
	db #00,#c9,#80,#00,#82,#80,#00,#82
.l7ede equ $ + 4
	db #80,#80,#c9,#7e,#00,#13,#81,#00
	db #17,#81,#00,#41,#81,#00,#41,#81
	db #00,#41,#81,#00,#41,#81,#00,#41
	db #81,#00,#6b,#81,#00,#6b,#81,#80
	db #e7,#7e,#37,#04,#d2,#05,#39,#04
	db #02,#3a,#84,#3e,#82,#3a,#82,#3e
	db #90,#3f,#84,#3e,#84,#3c,#86,#37
	db #82,#39,#90,#ff,#be,#d0,#08,#be
	db #10,#43,#02,#00,#46,#82,#3e,#82
	db #43,#82,#46,#82,#3e,#82,#43,#82
	db #3e,#82,#41,#82,#46,#82,#3e,#82
	db #41,#82,#46,#82,#3e,#82,#41,#82
	db #3f,#82,#43,#82,#46,#82,#3f,#82
	db #43,#82,#46,#82,#3f,#82,#43,#82
	db #41,#82,#45,#82,#48,#82,#41,#82
	db #45,#82,#48,#82,#41,#82,#45,#82
	db #ff,#3e,#02,#d0,#08,#43,#02,#00
	db #46,#82,#3e,#82,#43,#82,#46,#82
	db #3e,#82,#43,#82,#3e,#82,#41,#82
	db #46,#82,#3e,#82,#41,#82,#46,#82
	db #3e,#82,#41,#82,#3f,#02,#d0,#07
	db #43,#02,#00,#46,#82,#3f,#82,#43
	db #82,#46,#82,#3f,#82,#43,#82,#41
	db #82,#45,#82,#48,#82,#41,#82,#45
	db #82,#48,#82,#41,#02,#d0,#07,#45
	db #02,#00,#ff,#3e,#02,#d0,#06,#43
	db #02,#00,#46,#82,#3e,#82,#43,#82
	db #46,#82,#3e,#82,#43,#82,#3e,#82
	db #41,#82,#46,#82,#3e,#82,#41,#82
	db #46,#82,#3e,#82,#41,#82,#3f,#02
	db #d0,#05,#43,#02,#00,#46,#82,#3f
	db #82,#43,#82,#46,#82,#3f,#82,#43
	db #82,#41,#82,#45,#82,#48,#82,#41
	db #82,#45,#82,#48,#82,#41,#82,#45
	db #82,#ff,#37,#04,#d0,#05,#39,#04
	db #00,#3a,#84,#3e,#82,#3a,#82,#3e
	db #90,#3f,#84,#3e,#84,#3c,#86,#37
	db #82,#39,#90,#ff,#46,#02,#d5,#05
	db #46,#02,#05,#46,#82,#4a,#84,#4a
	db #82,#4a,#82,#46,#82,#41,#90,#46
	db #82,#46,#82,#46,#82,#4b,#84,#4b
	db #82,#4b,#82,#46,#82,#41,#90,#ff
	db #37,#06,#f5,#00,#37,#02,#05,#37
	db #82,#37,#86,#3a,#06,#f5,#01,#3a
	db #02,#05,#3a,#82,#3a,#86,#33,#06
	db #f5,#01,#33,#02,#05,#33,#82,#33
	db #86,#35,#86,#35,#82,#35,#82,#35
	db #86,#ff,#2b,#40,#1e,#ff,#1f,#06
	db #05,#1f,#86,#1f,#82,#9f,#05,#9a
	db #05,#22,#86,#22,#86,#22,#82,#a2
	db #05,#9d,#05,#1b,#86,#1b,#86,#1b
	db #82,#9b,#05,#96,#05,#1d,#86,#1d
	db #86,#1d,#82,#9d,#05,#98,#05,#ff
	db #3e,#02,#b0,#01,#43,#02,#00,#46
	db #82,#3e,#82,#43,#82,#46,#82,#3e
	db #82,#43,#82,#3e,#82,#41,#82,#46
	db #82,#3e,#82,#41,#82,#46,#82,#3e
	db #82,#41,#82,#3f,#02,#d0,#05,#43
	db #02,#00,#46,#82,#3f,#82,#43,#82
	db #46,#82,#3f,#82,#43,#82,#41,#82
	db #45,#82,#48,#82,#41,#82,#45,#82
	db #48,#82,#41,#82,#45,#82,#ff,#3e
	db #02,#b0,#01,#43,#02,#00,#46,#82
	db #3e,#82,#43,#82,#46,#82,#3e,#82
	db #43,#82,#3e,#82,#41,#82,#46,#82
	db #3e,#82,#41,#82,#46,#82,#3e,#82
	db #41,#82,#3f,#02,#d0,#05,#43,#02
	db #00,#46,#82,#3f,#82,#43,#82,#46
	db #82,#3f,#82,#43,#82,#41,#82,#45
	db #82,#48,#82,#41,#82,#45,#82,#48
	db #82,#41,#82,#45,#82,#ff,#00,#40
	db #ff,#2b,#40,#1e,#ff,#2b,#06,#05
	db #2b,#86,#2b,#82,#ab,#05,#a6,#05
	db #2e,#86,#2e,#86,#2e,#82,#ae,#05
	db #a9,#05,#27,#86,#27,#86,#27,#82
	db #a7,#05,#a2,#05,#29,#86,#29,#86
	db #29,#82,#a9,#05,#a4,#05,#ff,#2b
	db #06,#05,#2b,#86,#2b,#82,#ab,#05
	db #a6,#05,#2e,#86,#2e,#86,#2e,#82
	db #ae,#05,#a9,#05,#27,#86,#27,#86
	db #27,#82,#a7,#05,#a2,#05,#29,#86
	db #29,#86,#29,#82,#a9,#05,#a4,#05
	db #ff,#2b,#10,#d4,#05,#2e,#10,#04
	db #27,#90,#29,#90,#ff
;
.music_info
	db "Blip Music! - 30 - A Piano Overture (1996)(Systeme D)(FruitBowl)",0
	db "ST-Module",0

	read "music_end.asm"
