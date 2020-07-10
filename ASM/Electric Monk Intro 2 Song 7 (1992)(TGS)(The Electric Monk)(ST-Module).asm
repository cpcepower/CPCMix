; Music of Electric Monk Intro 2 Song 7 (1992)(TGS)(The Electric Monk)(ST-Module)
; Ripped by Megachur the 29/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ELEMI2S7.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #7bfc

	read "music_header.asm"

	jp l7c07
	jp l7c8f
	jp l7c73
	ld h,(hl)
	inc b
;
.init_music
.l7c07
;
	ld b,#03
	ld ix,l7fd6
	ld iy,l7f02
	ld de,#001c
.l7c14
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
	djnz l7c14
	ld a,#06
	ld (l7cb7),a
	ld a,d
	ld (l7ccb),a
	inc a
	ld (l7cb2),a
	ld a,#38
	ld (l7cbc),a
	ld a,#ff
	ld (l7efe),a
	ld (l7eff),a
	ld (l7f00),a
	ld (l7f01),a
	ld a,#0c
	ld c,d
	call l7ee0
	ld a,#0d
	ld c,d
	jp l7ee0
;
.stop_music
.l7c73
;
	ld a,#07
	ld c,#3f
	call l7ee0
	ld a,#08
	ld c,#00
	call l7ee0
	ld a,#09
	ld c,#00
	call l7ee0
	ld a,#0a
	ld c,#00
	jp l7ee0
;
.play_music
.l7c8f
;
	ld hl,l7cb2
	dec (hl)
	ld ix,l7fd6
	ld bc,l7fe4
	call l7d45
	ld ix,l7ff2
	ld bc,l8000
	call l7d45
	ld ix,l800e
	ld bc,l801c
	call l7d45
.l7cb2 equ $ + 1
	ld a,#00
	or a
	jr nz,l7cbb
.l7cb7 equ $ + 1
	ld a,#00
	ld (l7cb2),a
.l7cbc equ $ + 1
.l7cbb
	ld a,#00
	ld hl,l7eff
	cp (hl)
	jr z,l7cca
	ld (hl),a
	ld c,a
	ld a,#07
	call l7ee0
.l7ccb equ $ + 1
.l7cca
	ld a,#00
	ld hl,l7efe
	cp (hl)
	jr z,l7cd9
	ld (hl),a
	ld c,a
	ld a,#06
	call l7ee0
.l7cda equ $ + 1
.l7cd9
	ld a,#00
	ld hl,l7f00
	cp (hl)
	jr z,l7ce8
	ld (hl),a
	ld c,a
	ld a,#0b
	call l7ee0
.l7ce9 equ $ + 1
.l7ce8
	ld a,#00
	ld hl,l7f01
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l7ee0
.l7cf6
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l7df6
.l7d05
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
	jp l7ee0
.l7d1f
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l7d34
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l7d34
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l7d58
.l7d45
	ld a,(l7cb2)
	or a
	jp nz,l7df6
	dec (ix+#06)
	jp nz,l7df6
	ld l,(ix+#00)
	ld h,(ix+#01)
.l7d58
	ld a,(hl)
	or a
	jr z,l7cf6
	cp #fe
	jr z,l7d05
	cp #ff
	jr z,l7d1f
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l7f08
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l7d94
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l7d94
	and #7f
	ld (ix+#06),a
	jr l7de7
.l7d94
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l7da8
	ld (ix+#05),a
	ld (ix+#0a),d
.l7da8
	add a
	add a
	add a
	ld e,a
	ld hl,l803e
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
	jr z,l7de7
	cp #f0
	jp z,l7e9c
	cp #d0
	jp z,l7eb8
	cp #b0
	jp z,l7ec0
	cp #80
	jp nc,l7ec8
	cp #10
	jr nz,l7de7
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l7de7
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l7df6
	ld a,(ix+#17)
	or a
	jr nz,l7e0a
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l7e0a
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l7e35
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l7f08
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l7e35
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
	call l7ee0
	ld c,h
	ld a,(ix+#03)
	call l7ee0
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7e73
	and #0f
	sub (ix+#0a)
	jr nc,l7e69
	xor a
.l7e69
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l7ee0
.l7e73
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
	jr z,l7e90
	ld b,a
	ld a,c
	ld (l7ccb),a
	ld a,b
	sub #40
.l7e90
	ld (l7e97),a
	ld a,(l7cbc)
.l7e97 equ $ + 1
	bit 0,a
	ld (l7cbc),a
	ret
.l7e9c
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l80be
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l7de7
.l7eb8
	inc hl
	ld a,(hl)
	ld (l7cb7),a
	jp l7de7
.l7ec0
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l7de7
.l7ec8
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l7ce9),a
	inc hl
	ld a,(hl)
	ld (l7cda),a
	jp l7de7
.l7ee0
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
.l7f01 equ $ + 3
.l7f00 equ $ + 2
.l7eff equ $ + 1
.l7efe
	db #ff,#ff,#ff,#ff
.l7f02
	dw l821e,l8224,l822a
.l7f08
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
.l7fd6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l7fe4 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7ff2
	db #00,#00,#02,#03,#09,#00,#00,#00
.l8000 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l800e equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l801c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l803e equ $ + 4
	db #75,#6c,#65,#2e,#d8,#7a,#d8,#7a
	db #d8,#7a,#00,#00,#de,#80,#1e,#81
	db #3e,#81,#00,#00,#d8,#7a,#d8,#7a
	db #d8,#7a,#00,#00,#d8,#7a,#d8,#7a
	db #d8,#7a,#00,#00,#d8,#7a,#d8,#7a
	db #d8,#7a,#00,#00,#d8,#7a,#d8,#7a
	db #d8,#7a,#00,#00,#5e,#81,#9e,#81
	db #3e,#81,#00,#00,#de,#80,#be,#81
	db #de,#81,#06,#00,#d8,#7a,#d8,#7a
	db #d8,#7a,#00,#00,#de,#80,#fe,#81
	db #3e,#81,#1b,#00,#d8,#7a,#d8,#7a
	db #d8,#7a,#00,#00,#d8,#7a,#d8,#7a
	db #d8,#7a,#00,#00,#d8,#7a,#d8,#7a
	db #d8,#7a,#00,#00,#d8,#7a,#d8,#7a
	db #d8,#7a,#00,#00,#d8,#7a,#d8,#7a
	db #d8,#7a,#00,#00,#d8,#7a,#d8,#7a
.l80be equ $ + 4
	db #d8,#7a,#00,#00,#d8,#7a,#d8,#7a
	db #d8,#7a,#d8,#7a,#d8,#7a,#d8,#7a
	db #d8,#7a,#d8,#7a,#d8,#7a,#d8,#7a
	db #d8,#7a,#d8,#7a,#d8,#7a,#d8,#7a
	db #d8,#7a,#d8,#7a,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0a,#0a,#0a,#0a,#0a,#09,#09,#09
	db #09,#09,#08,#08,#08,#08,#08,#07
	db #06,#04,#02,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0c,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0f,#0c,#09,#06
	db #03,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#04,#03,#02,#01,#00,#00
.l821e equ $ + 4
	db #00,#00,#00,#00,#00,#30,#82,#80
.l8224 equ $ + 2
	db #1e,#82,#00,#56,#82,#80,#24,#82
.l822a
	db #00,#7c,#82,#80,#2a,#82,#46,#03
	db #01,#46,#83,#46,#82,#46,#83,#c6
	db #01,#46,#86,#43,#82,#c1,#01,#43
	db #82,#46,#86,#d2,#06,#4f,#85,#ca
	db #06,#48,#82,#ca,#06,#4b,#82,#cf
	db #06,#4d,#86,#ff,#2e,#03,#09,#2e
	db #83,#2b,#82,#2b,#83,#ab,#09,#27
	db #86,#29,#82,#a9,#09,#29,#82,#2e
	db #86,#ae,#09,#2b,#85,#ab,#09,#27
	db #82,#a7,#09,#27,#82,#a7,#09,#29
	db #86,#ff,#3a,#05,#07,#ba,#07,#37
	db #85,#b7,#07,#33,#85,#b3,#07,#35
	db #85,#b5,#07,#3a,#85,#ba,#07,#37
	db #85,#b7,#07,#33,#85,#b3,#07,#35
	db #85,#b5,#07,#ff
;
.music_info
	db "Electric Monk Intro 2 Song 7 (1992)(TGS)(The Electric Monk)(",0
	db "ST-Module",0

	read "music_end.asm"
