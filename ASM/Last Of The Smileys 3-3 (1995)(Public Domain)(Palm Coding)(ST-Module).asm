; Music of Last Of The Smileys 3-3 (1995)(Public Domain)(Palm Coding)(ST-Module)
; Ripped by Megachur the 24/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LASOTS33.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9442

	read "music_header.asm"

	jp l944d
	jp l94d5
	jp l94b9
	db #66,#04
;
.init_music
.l944d
;
	ld b,#03
	ld ix,l981c
	ld iy,l9748
	ld de,#001c
.l945a
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
	djnz l945a
	ld a,#07
	ld (l94fd),a
	ld a,d
	ld (l9511),a
	inc a
	ld (l94f8),a
	ld a,#38
	ld (l9502),a
	ld a,#ff
	ld (l9744),a
	ld (l9745),a
	ld (l9746),a
	ld (l9747),a
	ld a,#0c
	ld c,d
	call l9726
	ld a,#0d
	ld c,d
	jp l9726
;
.stop_music
.l94b9
;
	ld a,#07
	ld c,#3f
	call l9726
	ld a,#08
	ld c,#00
	call l9726
	ld a,#09
	ld c,#00
	call l9726
	ld a,#0a
	ld c,#00
	jp l9726
;
.play_music
.l94d5
;
	ld hl,l94f8
	dec (hl)
	ld ix,l981c
	ld bc,l982a
	call l958b
	ld ix,l9838
	ld bc,l9846
	call l958b
	ld ix,l9854
	ld bc,l9862
	call l958b
.l94f8 equ $ + 1
	ld a,#00
	or a
	jr nz,l9501
.l94fd equ $ + 1
	ld a,#00
	ld (l94f8),a
.l9502 equ $ + 1
.l9501
	ld a,#00
	ld hl,l9745
	cp (hl)
	jr z,l9510
	ld (hl),a
	ld c,a
	ld a,#07
	call l9726
.l9511 equ $ + 1
.l9510
	ld a,#00
	ld hl,l9744
	cp (hl)
	jr z,l951f
	ld (hl),a
	ld c,a
	ld a,#06
	call l9726
.l9520 equ $ + 1
.l951f
	ld a,#00
	ld hl,l9746
	cp (hl)
	jr z,l952e
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9726
.l952f equ $ + 1
.l952e
	ld a,#00
	ld hl,l9747
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9726
.l953c
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l963c
.l954b
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
	jp l9726
.l9565
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l957a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l957a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l959e
.l958b
	ld a,(l94f8)
	or a
	jp nz,l963c
	dec (ix+#06)
	jp nz,l963c
	ld l,(ix+#00)
	ld h,(ix+#01)
.l959e
	ld a,(hl)
	or a
	jr z,l953c
	cp #fe
	jr z,l954b
	cp #ff
	jr z,l9565
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l974e
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l95da
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l95da
	and #7f
	ld (ix+#06),a
	jr l962d
.l95da
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l95ee
	ld (ix+#05),a
	ld (ix+#0a),d
.l95ee
	add a
	add a
	add a
	ld e,a
	ld hl,l9884
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
	jr z,l962d
	cp #f0
	jp z,l96e2
	cp #d0
	jp z,l96fe
	cp #b0
	jp z,l9706
	cp #80
	jp nc,l970e
	cp #10
	jr nz,l962d
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l962d
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l963c
	ld a,(ix+#17)
	or a
	jr nz,l9650
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9650
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l967b
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l974e
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l967b
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
	call l9726
	ld c,h
	ld a,(ix+#03)
	call l9726
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l96b9
	and #0f
	sub (ix+#0a)
	jr nc,l96af
	xor a
.l96af
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9726
.l96b9
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
	jr z,l96d6
	ld b,a
	ld a,c
	ld (l9511),a
	ld a,b
	sub #40
.l96d6
	ld (l96dd),a
	ld a,(l9502)
.l96dd equ $ + 1
	bit 0,a
	ld (l9502),a
	ret
.l96e2
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l9904
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l962d
.l96fe
	inc hl
	ld a,(hl)
	ld (l94fd),a
	jp l962d
.l9706
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l962d
.l970e
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l952f),a
	inc hl
	ld a,(hl)
	ld (l9520),a
	jp l962d
.l9726
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
.l9747 equ $ + 3
.l9746 equ $ + 2
.l9745 equ $ + 1
.l9744
	db #ff,#ff,#ff,#ff
.l9748
	dw l9b24,l9b72,l9bc0
.l974e
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
.l981c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l982a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9838
	db #00,#00,#02,#03,#09,#00,#00,#00
.l9846 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9854 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l9862 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l9884 equ $ + 4
	db #75,#6c,#65,#2e,#24,#99,#64,#99
	db #84,#99,#00,#00,#1e,#93,#1e,#93
	db #1e,#93,#00,#00,#a4,#99,#e4,#99
	db #04,#9a,#08,#18,#1e,#93,#1e,#93
	db #1e,#93,#00,#00,#24,#9a,#64,#9a
	db #04,#9a,#08,#18,#1e,#93,#1e,#93
	db #1e,#93,#00,#00,#24,#9a,#84,#9a
	db #04,#9a,#08,#00,#1e,#93,#1e,#93
	db #1e,#93,#00,#00,#a4,#9a,#e4,#9a
	db #04,#9a,#00,#00,#1e,#93,#1e,#93
	db #1e,#93,#00,#00,#1e,#93,#1e,#93
	db #1e,#93,#00,#00,#1e,#93,#1e,#93
	db #1e,#93,#00,#00,#1e,#93,#1e,#93
	db #1e,#93,#00,#00,#1e,#93,#1e,#93
	db #1e,#93,#00,#00,#1e,#93,#1e,#93
	db #1e,#93,#00,#00,#1e,#93,#1e,#93
.l9904 equ $ + 4
	db #1e,#93,#00,#00,#04,#9b,#1e,#93
	db #1e,#93,#1e,#93,#1e,#93,#1e,#93
	db #1e,#93,#1e,#93,#1e,#93,#1e,#93
	db #1e,#93,#1e,#93,#1e,#93,#1e,#93
	db #1e,#93,#1e,#93,#00,#00,#80,#00
	db #40,#01,#a0,#01,#40,#02,#e8,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0d,#0d,#0c,#0c
	db #0b,#0a,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#0a,#0a,#0b,#0b
	db #0c,#0c,#0b,#0b,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#0c,#0c,#0d,#0d
	db #0c,#0c,#0b,#0b,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#09,#0a,#8b,#8b
	db #8b,#8b,#8c,#8c,#8c,#8b,#8b,#8b
	db #8c,#8c,#8c,#8b,#8b,#8b,#8c,#8c
	db #8c,#8b,#8b,#8b,#8c,#8c,#8c,#8b
	db #8b,#8b,#8c,#8c,#0f,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#08
	db #08,#07,#07,#07,#07,#06,#06,#06
	db #05,#04,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0d,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#08,#07
	db #06,#05,#05,#05,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
	db #00,#0c,#00,#0c,#00,#0c,#00,#0c
.l9b24 equ $ + 4
	db #00,#0c,#00,#0c,#00,#0e,#9c,#00
	db #32,#9c,#00,#56,#9c,#00,#0e,#9c
	db #00,#9e,#9c,#00,#c2,#9c,#00,#e6
	db #9c,#00,#0a,#9d,#00,#0e,#9c,#00
	db #0e,#9c,#00,#7a,#9c,#00,#56,#9c
	db #00,#0e,#9c,#00,#0e,#9c,#00,#32
	db #9c,#00,#56,#9c,#00,#0e,#9c,#00
	db #9e,#9c,#00,#c2,#9c,#00,#e6,#9c
	db #00,#0a,#9d,#00,#0e,#9c,#00,#0e
	db #9c,#00,#7a,#9c,#00,#56,#9c,#80
.l9b72 equ $ + 2
	db #24,#9b,#00,#2e,#9d,#00,#5f,#9d
	db #00,#90,#9d,#00,#2e,#9d,#00,#2e
	db #9d,#00,#f2,#9d,#00,#23,#9e,#00
	db #54,#9e,#00,#85,#9e,#00,#85,#9e
	db #00,#c1,#9d,#00,#90,#9d,#00,#2e
	db #9d,#00,#2e,#9d,#00,#f2,#9d,#00
	db #90,#9d,#00,#2e,#9d,#00,#2e,#9d
	db #00,#f2,#9d,#00,#23,#9e,#00,#54
	db #9e,#00,#2e,#9d,#00,#2e,#9d,#00
	db #c1,#9d,#00,#90,#9d,#80,#72,#9b
.l9bc0
	db #00,#b6,#9e,#00,#b9,#9e,#00,#bd
	db #9e,#00,#b6,#9e,#00,#c9,#9e,#00
	db #d7,#9e,#00,#db,#9e,#00,#df,#9e
	db #00,#e3,#9e,#00,#e3,#9e,#00,#c0
	db #9e,#00,#bd,#9e,#00,#b6,#9e,#00
	db #b6,#9e,#00,#25,#9f,#00,#bd,#9e
	db #00,#b6,#9e,#00,#c9,#9e,#00,#d7
	db #9e,#00,#db,#9e,#00,#df,#9e,#00
	db #04,#9f,#00,#04,#9f,#00,#c0,#9e
	db #00,#bd,#9e,#80,#c0,#9b,#4a,#02
	db #b2,#00,#cf,#02,#fe,#01,#ca,#06
	db #cf,#06,#fe,#01,#ca,#02,#cf,#02
	db #fe,#01,#ca,#b6,#02,#cf,#b6,#02
	db #fe,#01,#ca,#b2,#02,#cf,#02,#fe
	db #01,#ff,#4a,#02,#b2,#00,#cd,#02
	db #fe,#01,#ca,#06,#cd,#06,#fe,#01
	db #ca,#02,#cd,#02,#fe,#01,#ca,#b6
	db #02,#cd,#b6,#02,#fe,#01,#ca,#b2
	db #02,#cd,#02,#fe,#01,#ff,#48,#02
	db #b2,#00,#cb,#02,#fe,#01,#c8,#06
	db #cb,#06,#fe,#01,#c8,#02,#cb,#02
	db #fe,#01,#c8,#b6,#01,#cb,#b6,#02
	db #fe,#01,#c8,#b2,#03,#cb,#02,#fe
	db #01,#ff,#4a,#02,#b2,#00,#cd,#02
	db #fe,#01,#ca,#06,#cd,#06,#fe,#01
	db #ca,#02,#cd,#02,#fe,#01,#ca,#b6
	db #02,#cd,#b6,#03,#fe,#01,#ca,#b2
	db #04,#cd,#02,#fe,#01,#ff,#3e,#02
	db #b2,#00,#c3,#02,#fe,#01,#be,#06
	db #c3,#06,#fe,#01,#be,#02,#c3,#02
	db #fe,#01,#be,#b6,#02,#c3,#b6,#02
	db #fe,#01,#be,#b2,#02,#c3,#02,#fe
	db #01,#ff,#3e,#02,#b2,#00,#c1,#02
	db #fe,#01,#be,#06,#c1,#06,#fe,#01
	db #be,#02,#c1,#02,#fe,#01,#be,#b6
	db #02,#c1,#b6,#02,#fe,#01,#be,#b2
	db #02,#c1,#02,#fe,#01,#ff,#3c,#02
	db #b2,#00,#bf,#02,#fe,#01,#bc,#06
	db #bf,#06,#fe,#01,#bc,#02,#bf,#02
	db #fe,#01,#bc,#b6,#01,#bf,#b6,#02
	db #fe,#01,#bc,#b2,#03,#bf,#02,#fe
	db #01,#ff,#3e,#02,#b2,#00,#c1,#02
	db #fe,#01,#be,#06,#c1,#06,#fe,#01
	db #be,#02,#c1,#02,#fe,#01,#be,#b6
	db #02,#c1,#b6,#03,#fe,#01,#be,#b2
	db #04,#c1,#02,#fe,#01,#ff,#b7,#84
	db #24,#c3,#82,#12,#b7,#82,#24,#c3
	db #82,#12,#b7,#82,#24,#c3,#82,#12
	db #b7,#82,#24,#c3,#82,#12,#b7,#82
	db #24,#c3,#82,#12,#b7,#82,#24,#c3
	db #82,#12,#b7,#82,#24,#c3,#82,#12
	db #b7,#82,#24,#c3,#82,#12,#ff,#ba
	db #82,#1e,#c6,#82,#05,#ba,#82,#1e
	db #c6,#82,#05,#ba,#82,#1e,#c6,#82
	db #05,#ba,#82,#1e,#c6,#82,#05,#ba
	db #82,#1e,#c6,#82,#05,#ba,#82,#1e
	db #c6,#82,#05,#ba,#82,#1e,#c6,#82
	db #05,#ba,#82,#1e,#c6,#82,#05,#ff
	db #b0,#82,#35,#bc,#82,#1b,#b0,#82
	db #35,#bc,#82,#1b,#b0,#82,#35,#bc
	db #82,#1b,#b0,#82,#35,#bc,#82,#1b
	db #b0,#82,#35,#bc,#82,#1b,#b0,#82
	db #35,#bc,#82,#1b,#b0,#82,#35,#bc
	db #82,#1b,#b0,#82,#35,#bc,#82,#1b
	db #ff,#b2,#82,#30,#be,#82,#18,#b2
	db #82,#30,#be,#82,#18,#b2,#82,#30
	db #be,#82,#18,#b2,#82,#30,#be,#82
	db #18,#b2,#82,#30,#be,#82,#18,#b2
	db #82,#30,#be,#82,#18,#b2,#82,#30
	db #be,#82,#18,#b2,#82,#30,#be,#82
	db #18,#ff,#ba,#82,#1e,#c6,#82,#05
	db #ba,#82,#1e,#c6,#82,#05,#ba,#82
	db #1e,#c6,#82,#05,#ba,#82,#1e,#c6
	db #82,#05,#ba,#82,#1e,#c6,#82,#05
	db #ba,#82,#1e,#c6,#82,#05,#ba,#82
	db #1e,#c6,#82,#05,#ba,#82,#1e,#c6
	db #82,#05,#ff,#b0,#82,#35,#bc,#82
	db #1b,#b0,#82,#35,#bc,#82,#1b,#b0
	db #82,#35,#bc,#82,#1b,#b0,#82,#35
	db #bc,#82,#1b,#b0,#82,#35,#bc,#82
	db #1b,#b0,#82,#35,#bc,#82,#1b,#b0
	db #82,#35,#bc,#82,#1b,#b0,#82,#35
	db #bc,#82,#1b,#ff,#b2,#82,#30,#be
	db #82,#18,#b2,#82,#30,#be,#82,#18
	db #b2,#82,#30,#be,#82,#18,#b2,#82
	db #30,#be,#82,#18,#b2,#82,#30,#be
	db #82,#18,#b2,#82,#30,#be,#82,#18
	db #b2,#82,#30,#be,#82,#18,#b2,#82
	db #30,#be,#82,#18,#ff,#b7,#84,#24
	db #c3,#82,#12,#b7,#82,#24,#c3,#82
	db #12,#b7,#82,#24,#c3,#82,#12,#b7
	db #82,#24,#c3,#82,#12,#b7,#82,#24
	db #c3,#82,#12,#b7,#82,#24,#c3,#82
	db #12,#b7,#82,#24,#c3,#82,#12,#b7
	db #82,#24,#c3,#82,#12,#ff,#fe,#10
	db #ff,#13,#10,#18,#ff,#00,#10,#ff
	db #00,#0a,#c1,#f8,#00,#41,#05,#08
	db #ff,#cf,#b4,#04,#cf,#b4,#02,#cf
	db #b4,#01,#4f,#0d,#b4,#00,#ff,#4d
	db #10,#04,#ff,#4b,#10,#04,#ff,#4a
	db #10,#04,#ff,#b7,#08,#b7,#08,#ba
	db #08,#c1,#08,#c3,#08,#c1,#08,#bc
	db #08,#be,#08,#c1,#08,#c3,#08,#c3
	db #08,#c1,#08,#c1,#08,#be,#08,#ba
	db #08,#b5,#08,#ff,#b7,#18,#b7,#08
	db #ba,#08,#c1,#08,#c3,#08,#c1,#08
	db #bc,#08,#be,#08,#c1,#08,#c3,#08
	db #c3,#08,#c1,#08,#c1,#08,#be,#08
	db #ba,#08,#b5,#08,#ff,#fe,#10,#ff
;
.music_info
	db "Last Of The Smileys 3-3 (1995)(Public Domain)(Palm Coding)",0
	db "ST-Module",0

	read "music_end.asm"
