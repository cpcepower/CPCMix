; Music of Blip Music! - 11 - Time (1996)(Systeme D)(FruitBowl)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU11.BIN"
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
	ld a,#06
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
	dw l7e22,l7e6d,l7eb8
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
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #e2,#7c,#22,#7d,#42,#7d,#08,#18
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #62,#7d,#a2,#7d,#42,#7d,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #e2,#7c,#c2,#7d,#42,#7d,#08,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #62,#7d,#e2,#7d,#42,#7d,#00,#00
	db #5e,#f8,#dc,#76,#94,#64,#b8,#ed
	db #b9,#ed,#dc,#76,#7e,#f8,#c2,#81
	db #be,#f8,#de,#f8,#fe,#f8,#42,#82
	db #b9,#ed,#b8,#ed,#b8,#ed,#dc,#76
	db #e2,#7c,#02,#7e,#42,#7d,#08,#18
	db #b9,#ed,#b8,#ed,#dd,#76,#01,#00
.l7cc2
	db #dd,#76,#dd,#76,#dc,#76,#dc,#76
	db #dc,#76,#dc,#76,#dd,#76,#dd,#76
	db #dd,#76,#dd,#76,#dc,#76,#dc,#76
	db #dc,#76,#dc,#76,#dd,#76,#dd,#76
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #0b,#0b,#0b,#0a,#0a,#0a,#0b,#0b
	db #0b,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#0b,#0b,#0b,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#0b,#0b
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#09,#08,#08,#08,#07,#07
	db #07,#06,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#01,#00,#00,#00,#00
	db #0f,#0e,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#08,#08,#08,#07,#07,#07
	db #07,#06,#06,#06,#05,#04,#02,#00
	db #0f,#0d,#0b,#0a,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#05,#04,#04
	db #04,#03,#03,#03,#02,#02,#02,#02
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #0a,#0b,#0c,#8c,#8c,#8c,#8d,#8d
	db #8d,#8c,#8c,#8c,#8d,#8d,#8d,#8c
	db #8c,#8c,#8d,#8d,#8d,#8c,#8c,#8c
	db #8d,#8d,#8d,#8c,#8c,#8c,#8d,#8d
.l7e22
	db #00,#71,#80,#00,#71,#80,#00,#6f
	db #7f,#00,#6f,#7f,#00,#f0,#7f,#00
	db #f0,#7f,#00,#6f,#7f,#00,#6f,#7f
	db #00,#53,#7f,#00,#53,#7f,#00,#29
	db #7f,#00,#29,#7f,#00,#f0,#7f,#00
	db #f0,#7f,#00,#6f,#7f,#00,#6f,#7f
	db #00,#6f,#7f,#00,#6f,#7f,#00,#6f
	db #7f,#00,#6f,#7f,#00,#6f,#7f,#00
	db #6f,#7f,#00,#6f,#7f,#00,#6f,#7f
.l7e6d equ $ + 3
	db #80,#3a,#7e,#00,#ef,#82,#00,#ef
	db #82,#00,#3e,#82,#00,#3e,#82,#00
	db #6e,#82,#00,#6e,#82,#00,#3e,#82
	db #00,#3e,#82,#00,#f5,#81,#00,#f5
	db #81,#00,#74,#81,#00,#74,#81,#00
	db #6e,#82,#00,#6e,#82,#00,#3e,#82
	db #00,#3e,#82,#00,#70,#83,#00,#70
	db #83,#00,#3e,#82,#00,#3e,#82,#00
	db #70,#83,#00,#70,#83,#00,#3e,#82
.l7eb8 equ $ + 6
	db #00,#3e,#82,#80,#85,#7e,#00,#52
	db #84,#00,#52,#84,#00,#46,#84,#00
	db #46,#84,#00,#46,#84,#00,#46,#84
	db #00,#46,#84,#00,#46,#84,#00,#3c
	db #84,#00,#3c,#84,#00,#18,#84,#00
	db #18,#84,#00,#46,#84,#00,#46,#84
	db #00,#46,#84,#00,#46,#84,#00,#56
	db #84,#00,#56,#84,#00,#46,#84,#00
	db #46,#84,#00,#56,#84,#00,#56,#84
	db #00,#46,#84,#00,#46,#84,#80,#d0
	db #7e,#3e,#04,#06,#3e,#84,#3c,#84
	db #3a,#82,#3e,#84,#3e,#84,#3e,#82
	db #3c,#84,#3a,#84,#3f,#84,#3f,#84
	db #3e,#84,#3c,#82,#3e,#84,#3e,#84
	db #3e,#82,#41,#84,#43,#84,#ff,#37
	db #04,#06,#39,#84,#3a,#82,#39,#82
	db #37,#82,#37,#84,#37,#82,#39,#84
	db #3a,#82,#39,#82,#37,#84,#39,#84
	db #3a,#84,#3c,#82,#3a,#82,#39,#82
	db #32,#86,#4a,#84,#4d,#84,#51,#84
	db #ff,#43,#02,#06,#41,#82,#3e,#84
	db #3e,#84,#3c,#82,#3a,#82,#43,#82
	db #41,#82,#3e,#84,#3e,#84,#3c,#82
	db #3a,#82,#3c,#a0,#ff,#ae,#04,#ae
	db #04,#ad,#04,#ad,#04,#ae,#04,#ae
	db #04,#ab,#04,#ab,#04,#ae,#04,#ae
	db #04,#ad,#04,#ad,#04,#ae,#04,#ae
	db #04,#ab,#04,#ab,#04,#a7,#04,#a7
	db #04,#a6,#04,#a6,#04,#a7,#04,#a7
	db #04,#a4,#04,#a4,#04,#a7,#04,#a7
	db #04,#a6,#04,#a6,#04,#a7,#04,#a7
	db #04,#a4,#04,#a4,#04,#ad,#04,#ad
	db #04,#ab,#04,#ab,#04,#ad,#04,#ad
	db #04,#a9,#04,#a9,#04,#ad,#04,#ad
	db #04,#ab,#04,#ab,#04,#ad,#04,#ad
	db #04,#a9,#04,#a9,#04,#a6,#04,#a6
	db #04,#a4,#04,#a4,#04,#a6,#04,#a6
	db #04,#a2,#04,#a2,#04,#a6,#04,#a6
	db #04,#a4,#04,#a4,#04,#a6,#04,#a6
	db #04,#a2,#04,#a2,#04,#ff,#ae,#04
	db #ae,#04,#ad,#04,#ad,#04,#ae,#04
	db #ae,#04,#ab,#04,#ab,#04,#ae,#04
	db #ae,#04,#ad,#04,#ad,#04,#ae,#04
	db #ae,#04,#ab,#04,#ab,#04,#a7,#04
	db #a7,#04,#a6,#04,#a6,#04,#a7,#04
	db #a7,#04,#a4,#04,#a4,#04,#a7,#04
	db #a7,#04,#a6,#04,#a6,#04,#a7,#04
	db #a7,#04,#a4,#04,#a4,#04,#ad,#04
	db #ad,#04,#ab,#04,#ab,#04,#ad,#04
	db #ad,#04,#a9,#04,#a9,#04,#ad,#04
	db #ad,#04,#ab,#04,#ab,#04,#ad,#04
	db #ad,#04,#a9,#04,#a9,#04,#a6,#04
	db #a6,#04,#a4,#04,#a4,#04,#a6,#04
	db #a6,#04,#a2,#04,#a2,#04,#a6,#04
	db #a6,#04,#a4,#04,#a4,#04,#a6,#04
	db #a6,#04,#a2,#04,#a2,#04,#ff,#ae
	db #b4,#00,#ae,#14,#ad,#04,#ad,#04
	db #ae,#04,#ae,#04,#ab,#04,#ab,#04
	db #ae,#04,#ae,#04,#ad,#04,#ad,#04
	db #ae,#04,#ae,#04,#ab,#04,#ab,#04
	db #a7,#04,#a7,#04,#a6,#04,#a6,#04
	db #a7,#04,#a7,#04,#a4,#04,#a4,#04
	db #a7,#04,#a7,#04,#a6,#04,#a6,#04
	db #a7,#04,#a7,#04,#a4,#04,#a4,#04
	db #ad,#04,#ad,#04,#ab,#04,#ab,#04
	db #ad,#04,#ad,#04,#a9,#04,#a9,#04
	db #ad,#04,#ad,#04,#ab,#04,#ab,#04
	db #ad,#04,#ad,#04,#a9,#04,#a9,#04
	db #a6,#04,#a6,#04,#a4,#04,#a4,#04
	db #a6,#04,#a6,#04,#a2,#04,#a2,#04
	db #a6,#04,#a6,#04,#a4,#04,#a4,#04
	db #a6,#04,#a6,#04,#a2,#04,#a2,#04
	db #ff,#ab,#04,#a6,#04,#ab,#04,#a6
	db #04,#ab,#04,#ab,#04,#ab,#04,#ab
	db #04,#ab,#04,#a6,#04,#ab,#04,#a6
	db #04,#ab,#04,#ab,#04,#ab,#04,#ab
	db #04,#ae,#04,#a9,#04,#ae,#04,#a9
	db #04,#ae,#04,#ae,#04,#ae,#04,#ae
	db #04,#ae,#04,#a9,#04,#ae,#04,#a9
	db #04,#ae,#04,#ae,#04,#ae,#04,#ae
	db #04,#b0,#04,#ab,#04,#b0,#04,#ab
	db #04,#b0,#04,#b0,#04,#b0,#04,#b0
	db #04,#b0,#04,#ab,#04,#b0,#04,#ab
	db #04,#b0,#04,#b0,#04,#b0,#04,#b0
	db #04,#b2,#04,#ad,#04,#b2,#04,#ad
	db #04,#b2,#04,#b2,#04,#b2,#04,#b2
	db #04,#b2,#04,#ad,#04,#b2,#04,#ad
	db #04,#b2,#04,#b2,#04,#b2,#04,#b2
	db #04,#ff,#ab,#04,#a6,#04,#ab,#04
	db #a6,#04,#ab,#04,#ab,#04,#ab,#04
	db #ab,#04,#ab,#04,#a6,#04,#ab,#04
	db #a6,#04,#ab,#04,#ab,#04,#ab,#04
	db #ab,#04,#ae,#04,#a9,#04,#ae,#04
	db #a9,#04,#ae,#04,#ae,#04,#ae,#04
	db #ae,#04,#ae,#04,#a9,#04,#ae,#04
	db #a9,#04,#ae,#04,#ae,#04,#ae,#04
	db #ae,#04,#b0,#04,#ab,#04,#b0,#04
	db #ab,#04,#b0,#04,#b0,#04,#b0,#04
	db #b0,#04,#b0,#04,#ab,#04,#b0,#04
	db #ab,#04,#b0,#04,#b0,#04,#b2,#04
	db #ad,#04,#b2,#04,#ad,#04,#b2,#04
	db #ad,#04,#b2,#04,#b2,#04,#b2,#04
	db #b2,#04,#b2,#04,#ad,#04,#b2,#04
	db #ad,#04,#b2,#04,#b2,#04,#b2,#04
	db #b2,#04,#ff,#ab,#06,#ae,#06,#b2
	db #06,#b7,#06,#ba,#06,#be,#06,#c3
	db #06,#c6,#06,#4a,#88,#ab,#06,#ae
	db #06,#b2,#06,#b7,#06,#ba,#06,#be
	db #06,#c3,#06,#c6,#06,#4a,#88,#a4
	db #06,#a9,#06,#ad,#06,#b0,#06,#b5
	db #06,#b9,#06,#bc,#06,#c1,#06,#45
	db #88,#a4,#06,#a9,#06,#ad,#06,#b0
	db #06,#b5,#06,#b9,#06,#bc,#06,#c1
	db #06,#45,#88,#ff,#43,#04,#04,#46
	db #84,#43,#84,#46,#82,#43,#84,#46
	db #84,#43,#82,#46,#82,#46,#82,#45
	db #82,#45,#82,#41,#84,#45,#84,#41
	db #84,#45,#82,#41,#84,#45,#84,#41
	db #82,#45,#82,#45,#82,#41,#82,#c1
	db #04,#c1,#04,#ff,#ba,#09,#ba,#09
	db #b9,#09,#b9,#09,#ba,#09,#ba,#09
	db #b7,#09,#b7,#09,#ba,#09,#ba,#09
	db #b9,#09,#b9,#09,#ba,#09,#ba,#09
	db #b7,#09,#b7,#09,#b3,#09,#b3,#09
	db #b2,#09,#b2,#09,#b3,#09,#b3,#09
	db #b0,#09,#b0,#09,#b3,#09,#b3,#09
	db #b2,#09,#b2,#09,#b3,#09,#b3,#09
	db #b0,#09,#b0,#09,#b9,#09,#b9,#09
	db #b7,#09,#b7,#09,#b9,#09,#b9,#09
	db #b5,#09,#b5,#09,#b9,#09,#b9,#09
	db #b7,#09,#b7,#09,#b9,#09,#b9,#09
	db #b5,#09,#b5,#09,#b2,#09,#b2,#09
	db #b0,#09,#b0,#09,#b2,#09,#b2,#09
	db #ae,#09,#ae,#09,#b2,#09,#b2,#09
	db #b0,#09,#b0,#09,#b2,#09,#b2,#09
	db #ae,#09,#ae,#09,#ff,#ba,#19,#ba
	db #09,#b9,#09,#b9,#09,#ba,#09,#ba
	db #09,#b7,#09,#b7,#09,#ba,#09,#ba
	db #09,#b9,#09,#b9,#09,#ba,#09,#ba
	db #09,#b7,#09,#b7,#09,#b3,#09,#b3
	db #09,#b2,#09,#b2,#09,#b3,#09,#b3
	db #09,#b0,#09,#b0,#09,#b3,#09,#b3
	db #09,#b2,#09,#b2,#09,#b3,#09,#b3
	db #09,#b0,#09,#b0,#09,#b9,#09,#b9
	db #09,#b7,#09,#b7,#09,#b9,#09,#b9
	db #09,#b5,#09,#b5,#09,#b9,#09,#b9
	db #09,#b7,#09,#b7,#09,#b9,#09,#b9
	db #09,#b5,#09,#b5,#09,#b2,#09,#b2
	db #09,#b0,#09,#b0,#09,#b2,#09,#b2
	db #09,#ae,#09,#ae,#09,#b2,#09,#b2
	db #09,#b0,#09,#b0,#09,#b2,#09,#b2
	db #09,#ae,#09,#ae,#09,#ff,#ba,#b9
	db #03,#ba,#09,#b9,#09,#b9,#09,#ba
	db #09,#ba,#09,#b7,#09,#b7,#09,#ba
	db #09,#ba,#09,#b9,#09,#b9,#09,#ba
	db #09,#ba,#09,#b7,#09,#b7,#09,#b3
	db #09,#b3,#09,#b2,#09,#b2,#09,#b3
	db #09,#b3,#09,#b0,#09,#b0,#09,#b3
	db #09,#b3,#09,#b2,#09,#b2,#09,#b3
	db #09,#b3,#09,#b0,#09,#b0,#09,#b9
	db #09,#b9,#09,#b7,#09,#b7,#09,#b9
	db #09,#b9,#09,#b5,#09,#b5,#09,#b9
	db #09,#b9,#09,#b7,#09,#b7,#09,#b9
	db #09,#b9,#09,#b5,#09,#b5,#09,#b2
	db #09,#b2,#09,#b0,#09,#b0,#09,#b2
	db #09,#b2,#09,#ae,#09,#ae,#09,#b2
	db #09,#b2,#09,#b0,#09,#b0,#09,#b2
	db #09,#b2,#09,#ae,#09,#ae,#09,#ff
	db #4a,#04,#06,#4a,#84,#48,#84,#46
	db #82,#4a,#84,#4a,#84,#4a,#82,#48
	db #84,#46,#84,#4b,#84,#4b,#84,#4a
	db #84,#48,#82,#4a,#84,#4a,#84,#4a
	db #82,#4d,#84,#4f,#84,#ff,#43,#04
	db #06,#45,#84,#46,#82,#45,#82,#43
	db #82,#43,#84,#43,#82,#45,#84,#46
	db #82,#45,#82,#43,#84,#45,#84,#46
	db #84,#48,#82,#46,#82,#45,#82,#3e
	db #92,#ff,#2b,#10,#0e,#2b,#90,#29
	db #90,#30,#90,#ff,#43,#10,#b2,#03
	db #3f,#10,#02,#41,#90,#3e,#90,#ff
	db #2e,#40,#14,#ff,#43,#06,#b2,#00
	db #45,#02,#02,#46,#82,#48,#82,#46
	db #82,#43,#82,#3f,#86,#41,#82,#43
	db #84,#3f,#84,#41,#86,#43,#82,#45
	db #82,#46,#82,#48,#82,#45,#82,#3e
	db #86,#3f,#82,#41,#84,#3e,#84,#ff
;
.music_info
	db "Blip Music! - 11 - Time (1996)(Systeme D)(FruitBowl)",0
	db "ST-Module",0

	read "music_end.asm"
