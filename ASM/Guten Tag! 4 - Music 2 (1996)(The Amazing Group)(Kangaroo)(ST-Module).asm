; Music of Guten Tag! 4 - Music 2 (1996)(The Amazing Group)(Kangaroo)(ST-Module)
; Ripped by Megachur the 09/07/2019
; $VER 1.5

	IFDEF FILENAME_WRITE
	write "GUTTAG42.BIN"
	ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 07
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9000

	read "music_header.asm"

	jr l9004
	jr l9013
.l9004
	call l902f
	ld hl,l9452
	ld de,l901c
	ld bc,#81ff
	jp #bcd7
.l9013
	ld hl,l9452
	call #bcdd
	jp l909b
.l901c
	push ix
	call l90b7
	pop ix
	ret
	jp l902f
	jp l90b7
	jp l909b
	db #66,#04
;
.init_music
.l902f
;
	ld b,#03
	ld ix,l93fe
	ld iy,l932a
	ld de,#001c
.l903c
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
	djnz l903c
	ld a,#06
	ld (l90df),a
	ld a,d
	ld (l90f3),a
	inc a
	ld (l90da),a
	ld a,#38
	ld (l90e4),a
	ld a,#ff
	ld (l9326),a
	ld (l9327),a
	ld (l9328),a
	ld (l9329),a
	ld a,#0c
	ld c,d
	call l9308
	ld a,#0d
	ld c,d
	jp l9308
;
.stop_music
.l909b
;
	ld a,#07
	ld c,#3f
	call l9308
	ld a,#08
	ld c,#00
	call l9308
	ld a,#09
	ld c,#00
	call l9308
	ld a,#0a
	ld c,#00
	jp l9308
;
.play_music
.l90b7
;
	ld hl,l90da
	dec (hl)
	ld ix,l93fe
	ld bc,l940c
	call l916d
	ld ix,l941a
	ld bc,l9428
	call l916d
	ld ix,l9436
	ld bc,l9444
	call l916d
.l90da equ $ + 1
	ld a,#00
	or a
	jr nz,l90e3
.l90df equ $ + 1
	ld a,#00
	ld (l90da),a
.l90e4 equ $ + 1
.l90e3
	ld a,#00
	ld hl,l9327
	cp (hl)
	jr z,l90f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l9308
.l90f3 equ $ + 1
.l90f2
	ld a,#00
	ld hl,l9326
	cp (hl)
	jr z,l9101
	ld (hl),a
	ld c,a
	ld a,#06
	call l9308
.l9102 equ $ + 1
.l9101
	ld a,#00
	ld hl,l9328
	cp (hl)
	jr z,l9110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9308
.l9111 equ $ + 1
.l9110
	ld a,#00
	ld hl,l9329
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9308
.l911e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l921e
.l912d
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
	jp l9308
.l9147
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l915c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l915c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9180
.l916d
	ld a,(l90da)
	or a
	jp nz,l921e
	dec (ix+#06)
	jp nz,l921e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9180
	ld a,(hl)
	or a
	jr z,l911e
	cp #fe
	jr z,l912d
	cp #ff
	jr z,l9147
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9330
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l91bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l91bc
	and #7f
	ld (ix+#06),a
	jr l920f
.l91bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l91d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l91d0
	add a
	add a
	add a
	ld e,a
	ld hl,l9466
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
	jr z,l920f
	cp #f0
	jp z,l92c4
	cp #d0
	jp z,l92e0
	cp #b0
	jp z,l92e8
	cp #80
	jp nc,l92f0
	cp #10
	jr nz,l920f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l920f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l921e
	ld a,(ix+#17)
	or a
	jr nz,l9232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9232
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l925d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9330
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l925d
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
	call l9308
	ld c,h
	ld a,(ix+#03)
	call l9308
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l929b
	and #0f
	sub (ix+#0a)
	jr nc,l9291
	xor a
.l9291
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9308
.l929b
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
	jr z,l92b8
	ld b,a
	ld a,c
	ld (l90f3),a
	ld a,b
	sub #40
.l92b8
	ld (l92bf),a
	ld a,(l90e4)
.l92bf equ $ + 1
	bit 0,a
	ld (l90e4),a
	ret
.l92c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l94e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l920f
.l92e0
	inc hl
	ld a,(hl)
	ld (l90df),a
	jp l920f
.l92e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l920f
.l92f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9111),a
	inc hl
	ld a,(hl)
	ld (l9102),a
	jp l920f
.l9308
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
.l9329 equ $ + 3
.l9328 equ $ + 2
.l9327 equ $ + 1
.l9326
	db #ff,#ff,#ff,#ff
.l932a
	dw #9786,#97a1,#97bc
.l9330
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
.l93fe
	db #00,#00,#00,#01,#08,#00,#00,#00
.l940c equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l941a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l9428 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9436
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l9444 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9452 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l9466
	db #00,#8f,#00,#8f,#00,#8f,#00,#00
	db #06,#95,#46,#95,#66,#95,#00,#00
	db #00,#8f,#00,#8f,#00,#8f,#00,#00
	db #86,#95,#c6,#95,#e6,#95,#00,#00
	db #06,#96,#46,#96,#66,#96,#00,#00
	db #00,#8f,#00,#8f,#00,#8f,#00,#00
	db #86,#96,#c6,#96,#e6,#96,#00,#00
	db #06,#97,#46,#97,#e6,#95,#10,#10
	db #00,#8f,#00,#8f,#00,#8f,#00,#00
	db #00,#8f,#00,#8f,#00,#8f,#00,#00
	db #00,#8f,#00,#8f,#00,#8f,#00,#00
	db #00,#8f,#00,#8f,#00,#8f,#00,#00
	db #00,#8f,#00,#8f,#00,#8f,#00,#00
	db #00,#8f,#00,#8f,#00,#8f,#00,#00
	db #00,#8f,#00,#8f,#00,#8f,#00,#00
	db #00,#8f,#00,#8f,#00,#8f,#00,#00
.l94e6
	db #66,#97,#00,#8f,#00,#8f,#00,#8f
	db #00,#8f,#00,#8f,#00,#8f,#00,#8f
	db #00,#8f,#00,#8f,#00,#8f,#00,#8f
	db #00,#8f,#00,#8f,#00,#8f,#00,#8f
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0b,#0a,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
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
	db #0f,#0d,#0b,#09,#07,#05,#03,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0b
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#d7,#97,#00,#d7,#97,#00,#d7
	db #97,#00,#d7,#97,#00,#d7,#97,#00
	db #d7,#97,#00,#d7,#97,#00,#d7,#97
	db #80,#86,#97,#00,#59,#98,#00,#59
	db #98,#00,#a5,#98,#00,#a5,#98,#00
	db #59,#98,#00,#59,#98,#00,#19,#99
	db #00,#19,#99,#80,#a1,#97,#00,#61
	db #99,#00,#61,#99,#00,#e2,#99,#00
	db #e2,#99,#00,#61,#99,#00,#61,#99
	db #00,#61,#99,#00,#61,#99,#80,#bc
	db #97,#a4,#f3,#00,#b0,#03,#bc,#03
	db #a4,#03,#b0,#03,#bc,#03,#a4,#03
	db #bc,#03,#a4,#03,#b0,#03,#bc,#03
	db #a4,#03,#b0,#03,#bc,#03,#a4,#03
	db #bc,#03,#a4,#03,#b0,#03,#bc,#03
	db #a4,#03,#b0,#03,#bc,#03,#a4,#03
	db #bc,#03,#a4,#03,#b0,#03,#bc,#03
	db #a4,#03,#b0,#03,#bc,#03,#a4,#03
	db #bc,#03,#a2,#03,#ae,#03,#ba,#03
	db #a2,#03,#ae,#03,#ba,#03,#a2,#03
	db #ba,#03,#a2,#03,#ae,#03,#ba,#03
	db #a2,#03,#ae,#03,#ba,#03,#a2,#03
	db #ba,#03,#9d,#03,#a9,#03,#b5,#03
	db #9d,#03,#a9,#03,#b5,#03,#9d,#03
	db #b5,#03,#9d,#03,#a9,#03,#b5,#03
	db #9d,#03,#a9,#03,#b5,#03,#9d,#03
	db #b5,#03,#ff,#48,#02,#f7,#00,#48
	db #02,#07,#c6,#07,#48,#82,#c8,#07
	db #48,#82,#48,#82,#46,#82,#48,#83
	db #48,#82,#c8,#07,#c6,#07,#48,#83
	db #cb,#07,#cb,#07,#4a,#82,#4b,#82
	db #4a,#82,#46,#82,#46,#82,#c4,#07
	db #46,#83,#c6,#07,#46,#82,#c6,#07
	db #44,#82,#46,#82,#4d,#82,#4d,#82
	db #cb,#07,#4d,#82,#4d,#82,#cd,#07
	db #4b,#82,#4d,#82,#4b,#82,#ff,#bc
	db #f7,#00,#bc,#07,#bf,#07,#bf,#07
	db #c3,#07,#c3,#07,#c8,#07,#c8,#07
	db #cb,#07,#cb,#07,#ca,#07,#ca,#07
	db #c8,#07,#c8,#07,#cf,#07,#cf,#07
	db #bc,#07,#bc,#07,#bf,#07,#bf,#07
	db #c3,#07,#c3,#07,#c8,#07,#c8,#07
	db #cb,#07,#cb,#07,#ca,#07,#ca,#07
	db #c8,#07,#c8,#07,#cf,#07,#cf,#07
	db #ba,#07,#ba,#07,#be,#07,#be,#07
	db #c1,#07,#c1,#07,#c6,#07,#c6,#07
	db #ca,#07,#ca,#07,#c8,#07,#c8,#07
	db #c6,#07,#c6,#07,#c8,#07,#c8,#07
	db #4d,#82,#48,#82,#c6,#07,#48,#82
	db #4d,#82,#cd,#07,#48,#82,#46,#82
	db #48,#82,#ff,#cf,#f7,#00,#cb,#07
	db #ca,#07,#cb,#07,#ca,#07,#cb,#07
	db #ca,#07,#48,#83,#43,#82,#48,#82
	db #cb,#07,#4a,#82,#ca,#07,#4b,#82
	db #4a,#82,#48,#8a,#cf,#07,#ca,#07
	db #c8,#07,#ca,#07,#c8,#07,#ca,#07
	db #c8,#07,#46,#83,#4f,#82,#4d,#82
	db #cf,#07,#4d,#82,#cb,#07,#ca,#07
	db #4b,#82,#ca,#07,#c8,#07,#c6,#07
	db #41,#88,#ff,#ba,#11,#e0,#06,#e0
	db #06,#e0,#06,#ba,#04,#e0,#06,#e0
	db #06,#ba,#01,#e0,#06,#ba,#01,#ba
	db #01,#e0,#06,#ba,#04,#e0,#06,#e0
	db #06,#e0,#06,#ba,#01,#e0,#06,#e0
	db #06,#e0,#06,#ba,#04,#e0,#06,#ba
	db #01,#ba,#01,#ba,#01,#e0,#06,#e0
	db #06,#e0,#06,#ba,#04,#ba,#04,#e0
	db #06,#ba,#04,#ba,#01,#de,#06,#de
	db #06,#de,#06,#ba,#04,#de,#06,#de
	db #06,#ba,#01,#de,#06,#ba,#01,#ba
	db #01,#de,#06,#ba,#04,#de,#06,#de
	db #06,#de,#06,#ba,#01,#d9,#06,#d9
	db #06,#d9,#06,#ba,#04,#d9,#06,#ba
	db #01,#ba,#01,#ba,#01,#d9,#06,#d9
	db #06,#d9,#06,#ba,#04,#ba,#04,#ba
	db #04,#ba,#04,#ff,#ba,#11,#e0,#06
	db #e0,#06,#e0,#06,#ba,#04,#e0,#06
	db #e0,#06,#ba,#01,#e0,#06,#ba,#01
	db #ba,#01,#e0,#06,#ba,#04,#e0,#06
	db #e0,#06,#e0,#06,#ba,#01,#e0,#06
	db #e0,#06,#e0,#06,#ba,#04,#e0,#06
	db #ba,#01,#ba,#01,#ba,#01,#e0,#06
	db #e0,#06,#e0,#06,#ba,#04,#ba,#04
	db #e0,#06,#ba,#04,#ba,#01,#de,#06
	db #de,#06,#de,#06,#ba,#04,#de,#06
	db #de,#06,#ba,#01,#de,#06,#ba,#01
	db #ba,#01,#de,#06,#ba,#04,#de,#06
	db #de,#06,#de,#06,#ba,#01,#d9,#06
	db #d9,#06,#d9,#06,#ba,#04,#d9,#06
	db #ba,#01,#ba,#01,#ba,#01,#d9,#06
	db #d9,#06,#d9,#06,#ba,#04,#ba,#04
	db #ba,#04,#ba,#04,#ff
;
.music_info
	db "Guten Tag! 4 - Music 2 (1996)(The Amazing Group)(Kangaroo)",0
	db "ST-Module",0

	read "music_end.asm"
