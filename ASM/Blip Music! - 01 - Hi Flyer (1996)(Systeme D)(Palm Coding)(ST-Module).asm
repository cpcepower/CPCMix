; Music of Blip Music! - 01 - Hi Flyer (1996)(Systeme D)(Palm Coding)(ST-Module)
; Ripped by Megachur the 23/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLIPMU01.BIN"
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
	ld a,#07
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
	ld a,#fe
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
	db #00,#00,#00,#00
.l7b06
	dw l7ee2,l7f30,l7f7e
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
	db #e2,#7c,#22,#7d,#42,#7d,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #62,#7d,#a2,#7d,#c2,#7d,#08,#18
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #e2,#7d,#22,#7e,#c2,#7d,#08,#18
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #e2,#7d,#42,#7e,#c2,#7d,#08,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #62,#7e,#a2,#7e,#c2,#7d,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
	db #dc,#76,#dc,#76,#dc,#76,#00,#00
.l7cc2
	db #c2,#7e,#dc,#76,#dc,#76,#dc,#76
	db #dc,#76,#dc,#76,#dc,#76,#dc,#76
	db #dc,#76,#dc,#76,#dc,#76,#dc,#76
	db #dc,#76,#dc,#76,#dc,#76,#dc,#76
	db #00,#00,#80,#00,#40,#01,#a0,#01
	db #40,#02,#e8,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0c,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0a,#0a,#0b,#0b,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
	db #0c,#0c,#0d,#0d,#0c,#0c,#0b,#0b
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
	db #09,#0a,#8b,#8b,#8b,#8b,#8c,#8c
	db #8c,#8b,#8b,#8b,#8c,#8c,#8c,#8b
	db #8b,#8b,#8c,#8c,#8c,#8b,#8b,#8b
	db #8c,#8c,#8c,#8b,#8b,#8b,#8c,#8c
	db #0f,#0e,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #09,#08,#08,#08,#08,#07,#07,#07
	db #07,#06,#06,#06,#05,#04,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0d,#0d,#0d,#0c,#0c,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#08,#07,#06,#05,#05,#05
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
.l7ee2
	db #00,#cc,#7f,#00,#f0,#7f,#00,#14
	db #80,#00,#cc,#7f,#00,#5c,#80,#00
	db #80,#80,#00,#a4,#80,#00,#c8,#80
	db #00,#cc,#7f,#00,#cc,#7f,#00,#38
	db #80,#00,#14,#80,#00,#cc,#7f,#00
	db #cc,#7f,#00,#f0,#7f,#00,#14,#80
	db #00,#cc,#7f,#00,#5c,#80,#00,#80
	db #80,#00,#a4,#80,#00,#c8,#80,#00
	db #cc,#7f,#00,#cc,#7f,#00,#38,#80
.l7f30 equ $ + 6
	db #00,#14,#80,#80,#e2,#7e,#00,#ec
	db #80,#00,#1d,#81,#00,#4e,#81,#00
	db #ec,#80,#00,#ec,#80,#00,#b0,#81
	db #00,#e1,#81,#00,#12,#82,#00,#43
	db #82,#00,#43,#82,#00,#7f,#81,#00
	db #4e,#81,#00,#ec,#80,#00,#ec,#80
	db #00,#b0,#81,#00,#4e,#81,#00,#ec
	db #80,#00,#ec,#80,#00,#b0,#81,#00
	db #e1,#81,#00,#12,#82,#00,#ec,#80
	db #00,#ec,#80,#00,#7f,#81,#00,#4e
.l7f7e equ $ + 4
	db #81,#80,#30,#7f,#00,#74,#82,#00
	db #77,#82,#00,#7b,#82,#00,#74,#82
	db #00,#87,#82,#00,#95,#82,#00,#99
	db #82,#00,#9d,#82,#00,#a1,#82,#00
	db #a1,#82,#00,#7e,#82,#00,#7b,#82
	db #00,#74,#82,#00,#74,#82,#00,#e3
	db #82,#00,#7b,#82,#00,#74,#82,#00
	db #87,#82,#00,#95,#82,#00,#99,#82
	db #00,#9d,#82,#00,#c2,#82,#00,#c2
	db #82,#00,#7e,#82,#00,#7b,#82,#80
	db #7e,#7f,#4a,#02,#b2,#00,#cf,#02
	db #fe,#01,#ca,#06,#cf,#06,#fe,#01
	db #ca,#02,#cf,#02,#fe,#01,#ca,#b6
	db #02,#cf,#b6,#02,#fe,#01,#ca,#b2
	db #02,#cf,#02,#fe,#01,#ff,#4a,#02
	db #b2,#00,#cd,#02,#fe,#01,#ca,#06
	db #cd,#06,#fe,#01,#ca,#02,#cd,#02
	db #fe,#01,#ca,#b6,#02,#cd,#b6,#02
	db #fe,#01,#ca,#b2,#02,#cd,#02,#fe
	db #01,#ff,#48,#02,#b2,#00,#cb,#02
	db #fe,#01,#c8,#06,#cb,#06,#fe,#01
	db #c8,#02,#cb,#02,#fe,#01,#c8,#b6
	db #01,#cb,#b6,#02,#fe,#01,#c8,#b2
	db #03,#cb,#02,#fe,#01,#ff,#4a,#02
	db #b2,#00,#cd,#02,#fe,#01,#ca,#06
	db #cd,#06,#fe,#01,#ca,#02,#cd,#02
	db #fe,#01,#ca,#b6,#02,#cd,#b6,#03
	db #fe,#01,#ca,#b2,#04,#cd,#02,#fe
	db #01,#ff,#3e,#02,#b2,#00,#c3,#02
	db #fe,#01,#be,#06,#c3,#06,#fe,#01
	db #be,#02,#c3,#02,#fe,#01,#be,#b6
	db #02,#c3,#b6,#02,#fe,#01,#be,#b2
	db #02,#c3,#02,#fe,#01,#ff,#3e,#02
	db #b2,#00,#c1,#02,#fe,#01,#be,#06
	db #c1,#06,#fe,#01,#be,#02,#c1,#02
	db #fe,#01,#be,#b6,#02,#c1,#b6,#02
	db #fe,#01,#be,#b2,#02,#c1,#02,#fe
	db #01,#ff,#3c,#02,#b2,#00,#bf,#02
	db #fe,#01,#bc,#06,#bf,#06,#fe,#01
	db #bc,#02,#bf,#02,#fe,#01,#bc,#b6
	db #01,#bf,#b6,#02,#fe,#01,#bc,#b2
	db #03,#bf,#02,#fe,#01,#ff,#3e,#02
	db #b2,#00,#c1,#02,#fe,#01,#be,#06
	db #c1,#06,#fe,#01,#be,#02,#c1,#02
	db #fe,#01,#be,#b6,#02,#c1,#b6,#03
	db #fe,#01,#be,#b2,#04,#c1,#02,#fe
	db #01,#ff,#b7,#84,#24,#c3,#82,#12
	db #b7,#82,#24,#c3,#82,#12,#b7,#82
	db #24,#c3,#82,#12,#b7,#82,#24,#c3
	db #82,#12,#b7,#82,#24,#c3,#82,#12
	db #b7,#82,#24,#c3,#82,#12,#b7,#82
	db #24,#c3,#82,#12,#b7,#82,#24,#c3
	db #82,#12,#ff,#ba,#82,#1e,#c6,#82
	db #05,#ba,#82,#1e,#c6,#82,#05,#ba
	db #82,#1e,#c6,#82,#05,#ba,#82,#1e
	db #c6,#82,#05,#ba,#82,#1e,#c6,#82
	db #05,#ba,#82,#1e,#c6,#82,#05,#ba
	db #82,#1e,#c6,#82,#05,#ba,#82,#1e
	db #c6,#82,#05,#ff,#b0,#82,#35,#bc
	db #82,#1b,#b0,#82,#35,#bc,#82,#1b
	db #b0,#82,#35,#bc,#82,#1b,#b0,#82
	db #35,#bc,#82,#1b,#b0,#82,#35,#bc
	db #82,#1b,#b0,#82,#35,#bc,#82,#1b
	db #b0,#82,#35,#bc,#82,#1b,#b0,#82
	db #35,#bc,#82,#1b,#ff,#b2,#82,#30
	db #be,#82,#18,#b2,#82,#30,#be,#82
	db #18,#b2,#82,#30,#be,#82,#18,#b2
	db #82,#30,#be,#82,#18,#b2,#82,#30
	db #be,#82,#18,#b2,#82,#30,#be,#82
	db #18,#b2,#82,#30,#be,#82,#18,#b2
	db #82,#30,#be,#82,#18,#ff,#ba,#82
	db #1e,#c6,#82,#05,#ba,#82,#1e,#c6
	db #82,#05,#ba,#82,#1e,#c6,#82,#05
	db #ba,#82,#1e,#c6,#82,#05,#ba,#82
	db #1e,#c6,#82,#05,#ba,#82,#1e,#c6
	db #82,#05,#ba,#82,#1e,#c6,#82,#05
	db #ba,#82,#1e,#c6,#82,#05,#ff,#b0
	db #82,#35,#bc,#82,#1b,#b0,#82,#35
	db #bc,#82,#1b,#b0,#82,#35,#bc,#82
	db #1b,#b0,#82,#35,#bc,#82,#1b,#b0
	db #82,#35,#bc,#82,#1b,#b0,#82,#35
	db #bc,#82,#1b,#b0,#82,#35,#bc,#82
	db #1b,#b0,#82,#35,#bc,#82,#1b,#ff
	db #b2,#82,#30,#be,#82,#18,#b2,#82
	db #30,#be,#82,#18,#b2,#82,#30,#be
	db #82,#18,#b2,#82,#30,#be,#82,#18
	db #b2,#82,#30,#be,#82,#18,#b2,#82
	db #30,#be,#82,#18,#b2,#82,#30,#be
	db #82,#18,#b2,#82,#30,#be,#82,#18
	db #ff,#b7,#84,#24,#c3,#82,#12,#b7
	db #82,#24,#c3,#82,#12,#b7,#82,#24
	db #c3,#82,#12,#b7,#82,#24,#c3,#82
	db #12,#b7,#82,#24,#c3,#82,#12,#b7
	db #82,#24,#c3,#82,#12,#b7,#82,#24
	db #c3,#82,#12,#b7,#82,#24,#c3,#82
	db #12,#ff,#fe,#10,#ff,#13,#10,#18
	db #ff,#00,#10,#ff,#00,#0a,#c1,#f8
	db #00,#41,#05,#08,#ff,#cf,#b4,#04
	db #cf,#b4,#02,#cf,#b4,#01,#4f,#0d
	db #b4,#00,#ff,#4d,#10,#04,#ff,#4b
	db #10,#04,#ff,#4a,#10,#04,#ff,#b7
	db #08,#b7,#08,#ba,#08,#c1,#08,#c3
	db #08,#c1,#08,#bc,#08,#be,#08,#c1
	db #08,#c3,#08,#c3,#08,#c1,#08,#c1
	db #08,#be,#08,#ba,#08,#b5,#08,#ff
	db #b7,#18,#b7,#08,#ba,#08,#c1,#08
	db #c3,#08,#c1,#08,#bc,#08,#be,#08
	db #c1,#08,#c3,#08,#c3,#08,#c1,#08
	db #c1,#08,#be,#08,#ba,#08,#b5,#08
	db #ff,#fe,#10,#ff
;
.music_info
	db "Blip Music! - 01 - Hi Flyer (1996)(Systeme D)(Palm Coding)",0
	db "ST-Module",0

	read "music_end.asm"
