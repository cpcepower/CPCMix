; Music of Joe Blade (1987)(Players)(Gary Biasillo)()
; Ripped by Megachur the 24/03/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JOEBLADE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #8e68
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

	jp l8eeb
	jp l8faa
	jp l8f5d
.l8e71
	db #00
	jp l9624
	jp l96a8
	jp l96ba
	jp l96cc
.l8e85 equ $ + 7
.l8e80 equ $ + 2
.l8e7f equ $ + 1
.l8e7e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8e8a equ $ + 4
.l8e86
	db #f8,#00,#00,#00,#00,#00,#00,#00
	db #00,#0c,#01,#00,#08,#00,#ff,#00
	db #00,#00,#01,#08,#00,#00,#04,#00
.l8ea1 equ $ + 3
	db #00,#c6,#93,#00,#f7,#14,#0a,#01
.l8eaa equ $ + 4
	db #01,#00,#08,#04,#00,#00,#00,#00
	db #00,#0f,#01,#01,#02,#01,#ff,#00
	db #00,#02,#03,#09,#00,#00,#01,#00
.l8ec1 equ $ + 3
	db #00,#8f,#94,#00,#ef,#ff,#ff,#00
.l8eca equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#0a,#01,#02,#02,#ff,#00
	db #00,#04,#05,#0a,#00,#00,#00,#01
.l8ee1 equ $ + 3
	db #00,#00,#9f,#94,#00,#df,#ff,#ff
	db #00,#00,#00,#00,#00
;
.real_init_music
.l8eeb
;
	call l8f7f
	ld hl,l92e8
	ld a,(l8e71)
	inc a
	ld b,a
	ld de,#0006
.l8ef9
	add hl,de
	djnz l8ef9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld ix,l8e8a
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	ld (ix+#02),#01
	res 7,(ix+#0c)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld ix,l8eaa
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	ld (ix+#02),#01
	res 7,(ix+#0c)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld ix,l8eca
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	ld (ix+#02),#01
	res 7,(ix+#0c)
	ld a,#01
	ld (l8e7e),a
	ld h,#07
	ld l,#f8
	call l8f65
	ret
;
.l8f5d
.stop_music ; ?
;
	call l8f7f
	xor a
	ld (l8e7e),a
	ret
.l8f65
	push hl
	push de
	push bc
	push af
	ld a,h
	ld c,l
	cp #07
	call z,l8f78
	call lbd34
	pop af
	pop bc
	pop de
	pop hl
	ret
.l8f78
	push af
	ld a,c
	and #3f
	ld c,a
	pop af
	ret
.l8f7f
	ld h,#07
	ld l,#ff
	call l8f65
	ld hl,l8e7f
	ld de,l8e80
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#f8
	ld (l8e86),a
	ret
.l8f99
	ld b,#0b
	ld h,#00
	ld de,l8e7f
.l8fa0
	ld a,(de)
	ld l,a
	call l8f65
	inc h
	inc de
	djnz l8fa0
	ret
;
.play_music
.l8faa
;
	di
	push ix
	push af
	push bc
	push de
	push hl
	ld a,(l8e7e)
	or a
	jr z,l8fdb
	ld ix,l8e8a
	bit 7,(ix+#0c)
	call z,l8fe3
	ld ix,l8eaa
	bit 7,(ix+#0c)
	call z,l8fe3
	ld ix,l8eca
	bit 7,(ix+#0c)
	call z,l8fe3
	call l8f99
.l8fdb
	pop hl
	pop de
	pop bc
	pop af
	pop ix
	ei
	ret
.l8fe3
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l9102
.l8fec
	bit 0,(ix+#0c)
	jp nz,l906d
	bit 1,(ix+#0c)
	jp nz,l9037
	ld a,(ix+#0b)
	or a
	jp z,l9007
	dec (ix+#0b)
	jp l906d
.l9007
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jp z,l902a
	jp nc,l9024
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l906d
.l9024
	ld a,(ix+#05)
	ld (ix+#04),a
.l902a
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	jp l906d
.l9037
	ld a,(ix+#0b)
	or a
	jp z,l9044
	dec (ix+#0b)
	jp l906d
.l9044
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l905c
	ld a,(ix+#09)
	ld (ix+#0b),a
	jp l906d
.l905c
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	jp l906d
.l906d
	ld a,(ix+#04)
	ld hl,l8e7f
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call l916c
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jp nz,l90aa
	ld a,(ix+#11)
	ld (ix+#10),a
.l90aa
	ld a,(ix+#1a)
	cp #ff
	jp z,l9101
	or a
	jp z,l90bc
	dec (ix+#1a)
	jp nz,l9101
.l90bc
	dec (ix+#1f)
	jp nz,l90d0
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#1c)
	xor #01
	ld (ix+#1c),a
.l90d0
	bit 0,(ix+#1c)
	ld b,(ix+#1b)
	ld a,(ix+#1d)
	jp z,l90e1
	add b
	jp l90e2
.l90e1
	sub b
.l90e2
	ld (ix+#1d),a
	ld c,a
	ld b,#ff
	bit 7,a
	jp nz,l90ef
	ld b,#00
.l90ef
	ld hl,l8e7f
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
.l9101
	ret
.l9102
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (ix+#10),#00
.l910c
	ld a,(hl)
	cp #60
	jp z,l9165
	cp #61
	jp z,l9201
	cp #62
	jp z,l91c5
	cp #63
	jp z,l9237
	cp #69
	jp z,l919f
	cp #fe
	jp z,l91f2
	cp #ff
	jp z,l9246
	ld (ix+#0c),#00
	ld (ix+#03),a
.l9137
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l916c
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1c),#01
	ld (ix+#1d),#00
	jp l8fec
.l9165
	ld (ix+#0c),#02
	jp l9137
.l916c
	ld a,(ix+#17)
	or a
	jp nz,l918f
	ld a,(ix+#03)
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l9306
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l9182
	ld hl,l8e7f
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	ret
.l918f
	ld a,(ix+#03)
	neg
	and #1f
	ld (l8e85),a
	ld bc,#0000
	jp l9182
.l919f
	xor a
	ld (l8ea1),a
	ld (l8ec1),a
	ld (l8ee1),a
	ld a,#f8
	ld (l8e86),a
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#17),a
	and a
	jp z,l91f8
	ld b,(ix+#18)
	ld a,(l8e86)
	and b
	ld (l8e86),a
	jp l91f8
.l91c5
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld de,#0012
	ld hl,l9294
	inc a
	ld b,a
.l91d7
	add hl,de
	djnz l91d7
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	pop hl
	ld (ix+#10),#00
	jp l910c
.l91f2
	ld h,(ix+#16)
	ld l,(ix+#15)
.l91f8
	ld (ix+#01),h
	ld (ix+#00),l
	jp l910c
.l9201
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld de,#0009
	ld hl,l9255
	inc a
	ld b,a
.l9213
	add hl,de
	djnz l9213
	push hl
	push ix
	pop hl
	ld de,#0005
	add hl,de
	ex de,hl
	pop hl
	ld bc,#0006
	ldir
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	pop hl
	jp l910c
.l9237
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#05),a
	jp l910c
.l9246
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	or a
.l9255
	jp z,l8fec
	call l8f5d
	jp l8fec
	db #0d,#00,#00,#10,#00,#ff,#ff,#00
	db #00,#0f,#00,#00,#08,#00,#fc,#ff
	db #00,#00,#0f,#00,#00,#08,#00,#fc
	db #ff,#00,#00,#0f,#00,#00,#08,#09
	db #fe,#14,#01,#03,#0f,#00,#00,#08
	db #09,#fe,#ff,#00,#00,#0f,#00,#00
.l9294 equ $ + 6
	db #08,#00,#fe,#ff,#00,#00,#0f,#00
	db #01,#08,#05,#fe,#05,#01,#04,#0f
	db #00,#00,#08,#09,#fe,#14,#01,#07
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#09,#04,#10,#1c,#1f
	db #13,#07,#00,#0c,#18,#00,#00,#00
	db #00,#00,#00,#00,#00,#03,#00,#04
	db #07,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#06
	db #00,#00,#00,#0c,#0c,#0c,#00,#00
.l92e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	dw l93c6,l948f,l949f,l950d
	dw l953a,l952f,l9561,l9568
	dw l956d,l9575,l95c0,l960b
.l9306
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
.l93c6
	db #61,#00,#62,#01,#69,#00,#26,#0c
	db #60,#04,#61,#01,#62,#02,#69,#01
	db #00,#06,#60,#02,#61,#00,#62,#01
	db #69,#01,#26,#0c,#60,#02,#26,#06
	db #60,#04,#61,#01,#62,#02,#69,#01
	db #00,#06,#60,#02,#61,#00,#62,#01
	db #69,#00,#26,#06,#60,#02,#26,#0c
	db #60,#04,#61,#01,#62,#02,#69,#01
	db #0a,#06,#60,#02,#61,#00,#62,#00
	db #69,#00,#26,#06,#60,#02,#26,#06
	db #60,#02,#61,#01,#62,#02,#69,#01
	db #00,#06,#60,#02,#0a,#06,#60,#02
	db #00,#06,#60,#02,#61,#00,#62,#01
	db #69,#00,#24,#0c,#60,#04,#61,#01
	db #62,#02,#69,#01,#14,#06,#60,#02
	db #61,#00,#62,#01,#69,#00,#24,#0c
	db #60,#02,#24,#06,#60,#04,#61,#01
	db #62,#02,#69,#01,#00,#06,#60,#02
	db #61,#00,#62,#01,#69,#00,#24,#06
	db #60,#02,#24,#0c,#60,#04,#61,#01
	db #62,#02,#69,#01,#14,#06,#60,#02
	db #61,#00,#62,#01,#69,#00,#24,#06
	db #60,#02,#24,#06,#60,#02,#61,#01
	db #62,#02,#69,#01,#00,#06,#60,#02
	db #14,#06,#60,#02,#00,#06,#60,#02
.l948f equ $ + 1
	db #fe,#61,#02,#62,#03,#63,#0c,#32
	db #78,#60,#08,#30,#78,#60,#08,#fe
.l949f equ $ + 1
	db #ff,#61,#03,#62,#00,#3e,#3c,#60
	db #04,#40,#14,#60,#04,#3e,#14,#60
	db #04,#39,#0c,#60,#04,#3c,#3c,#60
	db #04,#3b,#14,#60,#04,#3c,#14,#60
	db #04,#3b,#0c,#60,#04,#39,#3c,#60
	db #04,#37,#14,#60,#04,#36,#14,#60
	db #04,#34,#0c,#60,#04,#32,#3c,#60
	db #04,#30,#14,#60,#04,#2f,#14,#60
	db #04,#2b,#0c,#60,#04,#61,#07,#2d
	db #78,#60,#08,#2d,#78,#60,#08,#61
	db #03,#62,#03,#3e,#0c,#60,#64,#3b
	db #0c,#60,#04,#3c,#0c,#60,#74,#3e
	db #0c,#60,#64,#3b,#0c,#60,#04,#3c
.l950d equ $ + 7
	db #0c,#60,#00,#60,#74,#fe,#ff,#61
	db #04,#62,#00,#32,#64,#60,#08,#30
	db #05,#60,#03,#32,#05,#60,#03,#35
	db #05,#60,#03,#34,#05,#60,#03,#30
	db #05,#60,#03,#26,#28,#60,#64,#ff
.l952f equ $ + 1
	db #00,#61,#04,#62,#00,#2d,#c0,#60
.l953a equ $ + 4
	db #96,#ff,#01,#ff,#69,#01,#61,#05
	db #62,#01,#48,#08,#60,#04,#48,#02
	db #60,#04,#48,#02,#60,#04,#61,#05
	db #62,#02,#3c,#08,#60,#04,#61,#05
	db #62,#01,#48,#02,#60,#04,#48,#02
.l9561 equ $ + 3
	db #60,#04,#fe,#61,#05,#62,#00,#69
.l956d equ $ + 7
.l9568 equ $ + 2
	db #00,#ff,#61,#00,#62,#00,#ff,#61
.l9575 equ $ + 7
	db #00,#62,#00,#00,#00,#ff,#00,#61
	db #06,#62,#00,#69,#00,#35,#06,#60
	db #02,#34,#06,#60,#02,#35,#06,#60
	db #02,#32,#64,#60,#04,#30,#06,#60
	db #04,#32,#06,#60,#02,#34,#06,#60
	db #02,#2d,#64,#60,#04,#2e,#06,#60
	db #02,#2d,#06,#60,#02,#2b,#06,#60
	db #02,#2e,#64,#60,#04,#2d,#06,#60
	db #04,#2f,#06,#60,#04,#30,#06,#60
	db #04,#34,#64,#60,#04,#32,#ca,#60
.l95c0 equ $ + 2
	db #36,#ff,#61,#06,#62,#00,#60,#04
	db #35,#06,#60,#02,#34,#06,#60,#02
	db #35,#06,#60,#02,#32,#64,#60,#04
	db #30,#06,#60,#04,#32,#06,#60,#02
	db #34,#06,#60,#02,#2d,#64,#60,#04
	db #2e,#06,#60,#02,#2d,#06,#60,#02
	db #2b,#06,#60,#02,#2e,#64,#60,#04
	db #2d,#06,#60,#04,#2f,#06,#60,#04
	db #30,#06,#60,#04,#34,#64,#60,#04
.l960b equ $ + 5
	db #32,#ca,#60,#36,#ff,#61,#00,#62
	db #00,#26,#7c,#60,#04,#21,#7c,#60
	db #04,#22,#7c,#60,#04,#28,#7c,#60
	db #04,#26,#ca,#60,#36,#ff
.l9624
	ld hl,l963c
	ld a,#01
	call #bcbc
	ld hl,l964c
	ld a,#02
	call #bcbc
	ld hl,l9650
	ld a,#01
	jp #bcbf
.l963c
	db #05,#07,#fe,#01,#01,#0e,#01,#07
	db #fe,#01,#01,#0d,#01,#07,#fe,#01
.l9650 equ $ + 4
.l964c
	db #01,#0f,#ff,#03,#82,#01,#0a,#01
.l9657 equ $ + 3
	db #01,#f6,#01,#81,#01,#00,#00,#00
.l9660 equ $ + 4
	db #0f,#0f,#c8,#00,#82,#01,#00,#00
.l9669 equ $ + 5
	db #00,#14,#0f,#c8,#00,#84,#01,#00
.l9672 equ $ + 6
	db #00,#00,#19,#0f,#c8,#00,#81,#02
.l967b equ $ + 7
	db #00,#64,#00,#00,#0f,#c8,#00,#82
	db #02,#00,#32,#00,#00,#0f,#c8,#00
.l9684
	db #84,#02,#00,#82,#00,#00,#0f,#c8
.l968d equ $ + 1
	db #00,#81,#02,#01,#28,#00,#00,#0f
.l9696 equ $ + 2
	db #c8,#00,#82,#02,#01,#1e,#00,#00
.l969f equ $ + 3
	db #0f,#c8,#00,#84,#02,#01,#14,#00
	db #00,#0f,#c8,#00
.l96a8
	ld hl,l9657
	call #bcaa
	ld hl,l9660
	call #bcaa
	ld hl,l9669
	jp #bcaa
.l96ba
	ld hl,l9672
	call #bcaa
	ld hl,l967b
	call #bcaa
	ld hl,l9684
	jp #bcaa
.l96cc
	ld hl,l968d
	call #bcaa
	ld hl,l9696
	call #bcaa
	ld hl,l969f
	jp #bcaa

.lbd34		; added by Megachur
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
	ret
;
; #0355
; call #8e72
; xor a
; ld (#8e71),a
; call #8e68
; call #bb00
; call #bd19
; call #8e6b
;
; #03a7
; call #8e6e
;
; call l9624
;
.init_music		; added by Megachur
;
	ld (l8e71),a
	jp real_init_music
;
.music_info
	db "Joe Blade (1987)(Players)(Gary BIASILLO)",0
	db "",0

	read "music_end.asm"
