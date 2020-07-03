; Music of Terminator Scroll (1993)(OdieSoft)(OdieSoft)(ST-Module)
; Ripped by Megachur the 30/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TERMINAS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9670

	read "music_header.asm"

	jp l967b
	jp l9703
	jp l96e7
	db #66,#04
;
.init_music
.l967b
;
	ld b,#03
	ld ix,l9a4a
	ld iy,l9976
	ld de,#001c
.l9688
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
	djnz l9688
	ld a,#08
	ld (l972b),a
	ld a,d
	ld (l973f),a
	inc a
	ld (l9726),a
	ld a,#38
	ld (l9730),a
	ld a,#ff
	ld (l9972),a
	ld (l9973),a
	ld (l9974),a
	ld (l9975),a
	ld a,#0c
	ld c,d
	call l9954
	ld a,#0d
	ld c,d
	jp l9954
;
.stop_music
.l96e7
;
	ld a,#07
	ld c,#3f
	call l9954
	ld a,#08
	ld c,#00
	call l9954
	ld a,#09
	ld c,#00
	call l9954
	ld a,#0a
	ld c,#00
	jp l9954
;
.play_music
.l9703
;
	ld hl,l9726
	dec (hl)
	ld ix,l9a4a
	ld bc,l9a58
	call l97b9
	ld ix,l9a66
	ld bc,l9a74
	call l97b9
	ld ix,l9a82
	ld bc,l9a90
	call l97b9
.l9726 equ $ + 1
	ld a,#56
	or a
	jr nz,l972f
.l972b equ $ + 1
	ld a,#00
	ld (l9726),a
.l9730 equ $ + 1
.l972f
	ld a,#00
	ld hl,l9973
	cp (hl)
	jr z,l973e
	ld (hl),a
	ld c,a
	ld a,#07
	call l9954
.l973f equ $ + 1
.l973e
	ld a,#00
	ld hl,l9972
	cp (hl)
	jr z,l974d
	ld (hl),a
	ld c,a
	ld a,#06
	call l9954
.l974e equ $ + 1
.l974d
	ld a,#00
	ld hl,l9974
	cp (hl)
	jr z,l975c
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9954
.l975d equ $ + 1
.l975c
	ld a,#00
	ld hl,l9975
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9954
.l976a
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l986a
.l9779
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
	jp l9954
.l9793
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l97a8
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l97a8
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l97cc
.l97b9
	ld a,(l9726)
	or a
	jp nz,l986a
	dec (ix+#06)
	jp nz,l986a
	ld l,(ix+#00)
	ld h,(ix+#01)
.l97cc
	ld a,(hl)
	or a
	jr z,l976a
	cp #fe
	jr z,l9779
	cp #ff
	jr z,l9793
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l997c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l9808
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l9808
	and #7f
	ld (ix+#06),a
	jr l985b
.l9808
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l981c
	ld (ix+#05),a
	ld (ix+#0a),d
.l981c
	add a
	add a
	add a
	ld e,a
	ld hl,l9ab2
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
	jr z,l985b
	cp #f0
	jp z,l9910
	cp #d0
	jp z,l992c
	cp #b0
	jp z,l9934
	cp #80
	jp nc,l993c
	cp #10
	jr nz,l985b
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l985b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l986a
	ld a,(ix+#17)
	or a
	jr nz,l987e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l987e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l98a9
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l997c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l98a9
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
	call l9954
	ld c,h
	ld a,(ix+#03)
	call l9954
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l98e7
	and #0f
	sub (ix+#0a)
	jr nc,l98dd
	xor a
.l98dd
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9954
.l98e7
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
	jr z,l9904
	ld b,a
	ld a,c
	ld (l973f),a
	ld a,b
	sub #40
.l9904
	ld (l990b),a
	ld a,(l9730)
.l990b equ $ + 1
	bit 0,a
	ld (l9730),a
	ret
.l9910
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l9b32
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l985b
.l992c
	inc hl
	ld a,(hl)
	ld (l972b),a
	jp l985b
.l9934
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l985b
.l993c
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l975d),a
	inc hl
	ld a,(hl)
	ld (l974e),a
	jp l985b
.l9954
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
.l9975 equ $ + 3
.l9974 equ $ + 2
.l9973 equ $ + 1
.l9972
	db #00,#00,#00,#00
.l9976
	dw l9d52,l9d70,l9d8e
.l997c
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
.l9a4a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l9a58 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a66
	db #00,#00,#02,#03,#09,#00,#00,#00
.l9a74 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a82 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l9a90 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l9ab2 equ $ + 4
	db #75,#6c,#65,#2e,#52,#9b,#92,#9b
	db #b2,#9b,#00,#00,#4c,#95,#4c,#95
	db #4c,#95,#00,#00,#d2,#9b,#12,#9c
	db #32,#9c,#00,#00,#4c,#95,#4c,#95
	db #4c,#95,#00,#00,#4c,#95,#4c,#95
	db #4c,#95,#00,#00,#52,#9c,#92,#9c
	db #b2,#9c,#14,#0c,#d2,#9c,#12,#9d
	db #32,#9d,#00,#00,#4c,#95,#4c,#95
	db #4c,#95,#00,#00,#4c,#95,#4c,#95
	db #4c,#95,#00,#00,#4c,#95,#4c,#95
	db #4c,#95,#00,#00,#4c,#95,#4c,#95
	db #4c,#95,#00,#00,#4c,#95,#4c,#95
	db #4c,#95,#00,#00,#4c,#95,#4c,#95
	db #4c,#95,#00,#00,#4c,#95,#4c,#95
	db #4c,#95,#00,#00,#4c,#95,#4c,#95
	db #4c,#95,#00,#00,#4c,#95,#4c,#95
.l9b32 equ $ + 4
	db #4c,#95,#00,#00,#4c,#95,#4c,#95
	db #4c,#95,#4c,#95,#4c,#95,#4c,#95
	db #4c,#95,#4c,#95,#4c,#95,#4c,#95
	db #4c,#95,#4c,#95,#4c,#95,#4c,#95
	db #4c,#95,#4c,#95,#80,#00,#00,#01
	db #80,#01,#00,#02,#80,#02,#00,#03
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0a,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#08,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0b
	db #09,#06,#03,#00,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#07,#08,#0c,#09
	db #0b,#14,#10,#0a,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#00,#00,#01,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#02,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#02
	db #02,#03,#03,#04,#04,#05,#05,#06
	db #06,#07,#07,#08,#08,#09,#09,#09
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#03,#06,#09
	db #0c,#0c,#0c,#0c,#0c,#0c,#0b,#0b
	db #0b,#0b,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#09,#09,#09,#09,#09
	db #09,#09,#09,#09,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9d52 equ $ + 4
	db #00,#00,#00,#00,#00,#ac,#9d,#00
	db #1b,#9e,#00,#ac,#9d,#00,#1b,#9e
	db #00,#8a,#9e,#00,#f9,#9e,#00,#8a
	db #9e,#00,#fc,#9e,#00,#f9,#9e,#80
.l9d70 equ $ + 2
	db #52,#9d,#00,#6b,#9f,#00,#72,#9f
	db #00,#7c,#9f,#00,#72,#9f,#00,#77
	db #9f,#00,#72,#9f,#00,#77,#9f,#00
	db #87,#9f,#00,#94,#9f,#80,#70,#9d
.l9d8e
	db #00,#9b,#9f,#00,#aa,#9f,#00,#6d
	db #a0,#00,#aa,#9f,#00,#bb,#9f,#00
	db #14,#a0,#00,#bb,#9f,#00,#80,#a0
	db #00,#d9,#a0,#80,#8e,#9d,#ae,#b2
	db #00,#2e,#02,#02,#ae,#02,#2e,#82
	db #ae,#02,#2e,#02,#b2,#00,#2e,#02
	db #b2,#05,#2e,#02,#b2,#08,#2e,#03
	db #b2,#0a,#ae,#b2,#00,#2e,#02,#02
	db #ae,#02,#2e,#82,#ae,#02,#2e,#02
	db #b2,#00,#2e,#02,#b2,#05,#2e,#02
	db #b2,#08,#2e,#03,#b2,#0a,#ae,#b2
	db #00,#2e,#02,#02,#ae,#02,#2e,#82
	db #ae,#02,#2e,#82,#2e,#02,#b2,#05
	db #2e,#02,#b2,#08,#2e,#03,#b2,#0a
	db #ae,#b2,#00,#2e,#02,#02,#ae,#02
	db #2e,#82,#ae,#02,#2e,#02,#b2,#00
	db #2e,#02,#b2,#05,#2e,#02,#b2,#08
	db #2e,#03,#b2,#0a,#ff,#ae,#b2,#00
	db #2e,#02,#02,#ae,#02,#2e,#82,#ae
	db #02,#2e,#02,#b2,#00,#2e,#02,#b2
	db #05,#2e,#02,#b2,#08,#2e,#03,#b2
	db #0a,#ae,#b2,#00,#2e,#02,#02,#ae
	db #02,#2e,#82,#ae,#02,#2e,#02,#b2
	db #00,#2e,#02,#b2,#05,#2e,#02,#b2
	db #08,#2e,#03,#b2,#0a,#ae,#b2,#00
	db #2e,#02,#02,#ae,#02,#2e,#82,#ae
	db #02,#2e,#82,#2e,#02,#b2,#05,#2e
	db #02,#b2,#08,#2e,#03,#b2,#0a,#ae
	db #b2,#00,#2e,#02,#02,#ae,#02,#2e
	db #82,#ae,#02,#2e,#02,#b2,#00,#2e
	db #02,#b2,#05,#2e,#02,#b2,#08,#2e
	db #03,#b2,#0a,#ff,#ae,#b2,#03,#2e
	db #02,#02,#ae,#02,#2e,#82,#ae,#02
	db #2e,#02,#b2,#03,#2e,#02,#b2,#05
	db #2e,#02,#b2,#08,#2e,#03,#b2,#0a
	db #ae,#b2,#03,#2e,#02,#02,#ae,#02
	db #2e,#82,#ae,#02,#2e,#02,#b2,#03
	db #2e,#02,#b2,#05,#2e,#02,#b2,#08
	db #2e,#03,#b2,#0a,#ae,#b2,#03,#2e
	db #02,#02,#ae,#02,#2e,#82,#ae,#02
	db #2e,#82,#2e,#02,#b2,#05,#2e,#02
	db #b2,#08,#2e,#03,#b2,#0a,#ae,#b2
	db #03,#2e,#02,#02,#ae,#02,#2e,#82
	db #ae,#02,#2e,#02,#b2,#03,#2e,#02
	db #b2,#05,#2e,#02,#b2,#08,#2e,#03
	db #b2,#0a,#ff,#00,#40,#ff,#ae,#b2
	db #03,#2e,#02,#02,#ae,#02,#2e,#82
	db #ae,#02,#2e,#02,#b2,#03,#2e,#02
	db #b2,#05,#2e,#02,#b2,#08,#2e,#03
	db #b2,#0a,#ae,#b2,#05,#2e,#02,#02
	db #ae,#02,#2e,#82,#ae,#02,#2e,#02
	db #b2,#05,#2e,#02,#b2,#06,#2e,#02
	db #b2,#08,#2e,#03,#b2,#0a,#ae,#b2
	db #06,#2e,#02,#02,#ae,#02,#2e,#82
	db #ae,#02,#2e,#82,#2e,#02,#b2,#05
	db #2e,#02,#b2,#08,#2e,#03,#b2,#0a
	db #ae,#b2,#08,#2e,#02,#02,#ae,#02
	db #2e,#82,#ae,#02,#2e,#02,#b2,#08
	db #2e,#02,#b2,#0a,#2e,#02,#b2,#0b
	db #2e,#03,#b2,#0c,#ff,#22,#1c,#85
	db #1e,#22,#a4,#ff,#22,#40,#85,#1e
	db #ff,#22,#40,#85,#1e,#ff,#22,#1c
	db #85,#1e,#22,#9a,#29,#0a,#85,#14
	db #ff,#22,#10,#85,#1e,#22,#10,#b5
	db #03,#22,#20,#b5,#06,#ff,#22,#20
	db #85,#1e,#fe,#20,#ff,#00,#02,#ba
	db #06,#bc,#06,#3d,#8e,#3c,#84,#38
	db #84,#31,#a6,#ff,#00,#02,#ba,#06
	db #bc,#06,#3d,#8e,#3c,#84,#38,#86
	db #41,#94,#3f,#90,#ff,#22,#02,#b0
	db #03,#a2,#b0,#05,#22,#02,#00,#a2
	db #00,#22,#82,#a2,#00,#22,#83,#22
	db #82,#22,#82,#22,#02,#b0,#02,#a2
	db #b0,#04,#22,#02,#00,#a2,#00,#22
	db #82,#a2,#00,#22,#83,#22,#82,#22
	db #82,#22,#02,#b0,#01,#a2,#b0,#04
	db #22,#02,#00,#a2,#00,#22,#82,#a2
	db #00,#22,#83,#22,#82,#22,#82,#22
	db #02,#b0,#00,#a2,#b0,#03,#22,#02
	db #00,#a2,#00,#22,#82,#a2,#00,#22
	db #83,#22,#82,#22,#82,#ff,#22,#02
	db #b0,#03,#a2,#b0,#05,#22,#02,#00
	db #a2,#00,#22,#82,#a2,#00,#22,#83
	db #22,#82,#22,#82,#22,#02,#b0,#02
	db #a2,#b0,#04,#22,#02,#00,#a2,#00
	db #22,#82,#a2,#00,#22,#83,#22,#82
	db #22,#82,#22,#02,#b0,#01,#a2,#b0
	db #04,#22,#02,#00,#a2,#00,#22,#82
	db #a2,#00,#22,#83,#22,#82,#22,#82
	db #22,#02,#b0,#00,#a2,#b0,#03,#22
	db #02,#00,#a2,#00,#22,#82,#a2,#00
	db #22,#83,#22,#82,#22,#82,#ff,#00
	db #02,#ba,#06,#bc,#06,#3d,#8e,#3c
	db #84,#38,#84,#31,#96,#2e,#86,#35
	db #8a,#ff,#22,#02,#b0,#03,#a2,#b0
	db #05,#22,#02,#00,#a2,#00,#22,#82
	db #a2,#00,#22,#83,#22,#82,#22,#82
	db #22,#02,#b0,#03,#a2,#b0,#05,#22
	db #02,#00,#a2,#00,#22,#82,#a2,#00
	db #22,#83,#22,#82,#22,#82,#22,#02
	db #b0,#06,#a2,#b0,#08,#22,#02,#00
	db #a2,#00,#22,#82,#a2,#00,#22,#83
	db #22,#82,#22,#82,#22,#02,#b0,#08
	db #a2,#b0,#0a,#22,#02,#00,#a2,#00
	db #22,#82,#a2,#00,#22,#83,#22,#82
	db #22,#82,#ff,#00,#40,#ff
;
.music_info
	db "Terminator Scroll (1993)(OdieSoft)(OdieSoft)",0
	db "ST-Module",0

	read "music_end.asm"