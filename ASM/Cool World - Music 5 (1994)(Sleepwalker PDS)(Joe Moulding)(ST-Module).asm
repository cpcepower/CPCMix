; Music of Cool World - Music 5 (1994)(Sleepwalker PDS)(Joe Moulding)(ST-Module)
; Ripped by Megachur the 03/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COOLWOM5.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #92d1

	read "music_header.asm"

	jr l92d5
	jr l92e4
.l92d5
	call l9300
	ld hl,l9723
	ld de,l92ed
	ld bc,#81ff
	jp #bcd7
.l92e4
	ld hl,l9723
	call #bcdd
	jp l936c
.l92ed
	push ix
	call l9388
	pop ix
	ret
	jp l9300
	jp l9388
	jp l936c
	db #66,#04
;
.init_music
.l9300
;
	ld b,#03
	ld ix,l96cf
	ld iy,l95fb
	ld de,#001c
.l930d
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
	djnz l930d
	ld a,#06
	ld (l93b0),a
	ld a,d
	ld (l93c4),a
	inc a
	ld (l93ab),a
	ld a,#38
	ld (l93b5),a
	ld a,#ff
	ld (l95f7),a
	ld (l95f8),a
	ld (l95f9),a
	ld (l95fa),a
	ld a,#0c
	ld c,d
	call l95d9
	ld a,#0d
	ld c,d
	jp l95d9
;
.stop_music
.l936c
;
	ld a,#07
	ld c,#3f
	call l95d9
	ld a,#08
	ld c,#00
	call l95d9
	ld a,#09
	ld c,#00
	call l95d9
	ld a,#0a
	ld c,#00
	jp l95d9
;
.play_music
.l9388
;
	ld hl,l93ab
	dec (hl)
	ld ix,l96cf
	ld bc,l96dd
	call l943e
	ld ix,l96eb
	ld bc,l96f9
	call l943e
	ld ix,l9707
	ld bc,l9715
	call l943e
.l93ab equ $ + 1
	ld a,#00
	or a
	jr nz,l93b4
.l93b0 equ $ + 1
	ld a,#00
	ld (l93ab),a
.l93b5 equ $ + 1
.l93b4
	ld a,#00
	ld hl,l95f8
	cp (hl)
	jr z,l93c3
	ld (hl),a
	ld c,a
	ld a,#07
	call l95d9
.l93c4 equ $ + 1
.l93c3
	ld a,#00
	ld hl,l95f7
	cp (hl)
	jr z,l93d2
	ld (hl),a
	ld c,a
	ld a,#06
	call l95d9
.l93d3 equ $ + 1
.l93d2
	ld a,#00
	ld hl,l95f9
	cp (hl)
	jr z,l93e1
	ld (hl),a
	ld c,a
	ld a,#0b
	call l95d9
.l93e2 equ $ + 1
.l93e1
	ld a,#00
	ld hl,l95fa
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l95d9
.l93ef
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l94ef
.l93fe
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
	jp l95d9
.l9418
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l942d
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l942d
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9451
.l943e
	ld a,(l93ab)
	or a
	jp nz,l94ef
	dec (ix+#06)
	jp nz,l94ef
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9451
	ld a,(hl)
	or a
	jr z,l93ef
	cp #fe
	jr z,l93fe
	cp #ff
	jr z,l9418
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9601
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l948d
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l948d
	and #7f
	ld (ix+#06),a
	jr l94e0
.l948d
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l94a1
	ld (ix+#05),a
	ld (ix+#0a),d
.l94a1
	add a
	add a
	add a
	ld e,a
	ld hl,l9737
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
	jr z,l94e0
	cp #f0
	jp z,l9595
	cp #d0
	jp z,l95b1
	cp #b0
	jp z,l95b9
	cp #80
	jp nc,l95c1
	cp #10
	jr nz,l94e0
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l94e0
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l94ef
	ld a,(ix+#17)
	or a
	jr nz,l9503
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9503
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l952e
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9601
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l952e
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
	call l95d9
	ld c,h
	ld a,(ix+#03)
	call l95d9
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l956c
	and #0f
	sub (ix+#0a)
	jr nc,l9562
	xor a
.l9562
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l95d9
.l956c
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
	jr z,l9589
	ld b,a
	ld a,c
	ld (l93c4),a
	ld a,b
	sub #40
.l9589
	ld (l9590),a
	ld a,(l93b5)
.l9590 equ $ + 1
	bit 0,a
	ld (l93b5),a
	ret
.l9595
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l97b7
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l94e0
.l95b1
	inc hl
	ld a,(hl)
	ld (l93b0),a
	jp l94e0
.l95b9
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l94e0
.l95c1
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l93e2),a
	inc hl
	ld a,(hl)
	ld (l93d3),a
	jp l94e0
.l95d9
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
.l95fa equ $ + 3
.l95f9 equ $ + 2
.l95f8 equ $ + 1
.l95f7
	db #ff,#ff,#ff,#ff
.l95fb
	dw l9b57,l9b90,l9bc9
.l9601
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
.l96cf equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l96dd equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96eb
	db #00,#00,#02,#03,#09,#00,#00,#00
.l96f9 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9707 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l9715 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9723
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l9737 equ $ + 4
	db #75,#6c,#65,#2e,#d7,#97,#17,#98
	db #37,#98,#00,#00,#57,#98,#97,#98
	db #b7,#98,#00,#00,#d7,#98,#17,#99
	db #37,#99,#10,#10,#57,#99,#97,#99
	db #37,#99,#10,#00,#d7,#98,#b7,#99
	db #37,#99,#08,#18,#d7,#99,#17,#9a
	db #37,#99,#14,#00,#d7,#98,#37,#9a
	db #37,#99,#08,#00,#d1,#91,#d1,#91
	db #d1,#91,#00,#00,#d1,#91,#d1,#91
	db #d1,#91,#00,#00,#57,#9a,#97,#9a
	db #b7,#9a,#00,#00,#d7,#9a,#17,#9b
	db #37,#9b,#00,#00,#18,#72,#58,#72
	db #f8,#70,#00,#00,#22,#ff,#62,#ff
	db #82,#ff,#00,#00,#64,#24,#a4,#24
	db #c4,#24,#00,#00,#60,#48,#80,#49
	db #c0,#48,#08,#18,#fb,#ce,#fb,#ce
.l97b7 equ $ + 4
	db #fb,#ce,#00,#00,#78,#72,#98,#72
	db #b8,#72,#fb,#ce,#fb,#ce,#fb,#ce
	db #fb,#ce,#fb,#ce,#fb,#ce,#fb,#ce
	db #fb,#ce,#fb,#ce,#fb,#ce,#fb,#ce
	db #fb,#ce,#fb,#ce,#00,#00,#80,#00
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
	db #00,#00,#00,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#08,#0a,#10,#17
	db #1d,#1b,#19,#17,#14,#10,#0c,#09
	db #06,#05,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#8b,#89,#88,#88,#87
	db #87,#86,#85,#84,#83,#82,#81,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0a,#09
	db #07,#05,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#09,#0a,#8b,#8b
	db #8b,#8b,#8c,#8c,#8c,#8b,#8b,#8b
	db #8c,#8c,#8c,#8b,#8b,#8b,#8c,#8c
	db #8c,#8b,#8b,#8b,#8c,#8c,#8c,#8b
	db #8b,#8b,#8c,#8c,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0b,#0a,#0a,#09,#09,#08,#07
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#08
	db #08,#07,#07,#07,#07,#06,#06,#06
	db #05,#04,#02,#00,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#32,#00,#64,#00
	db #96,#00,#c8,#00,#fa,#00,#2c,#01
	db #5e,#01,#90,#01,#c2,#01,#f4,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#06,#02,#01
	db #01,#01,#02,#03,#04,#06,#07,#09
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9b57 equ $ + 4
	db #00,#00,#00,#00,#00,#02,#9c,#00
	db #2c,#9f,#00,#2c,#9f,#00,#74,#9e
	db #00,#74,#9e,#00,#74,#9e,#00,#f9
	db #9e,#00,#de,#9c,#00,#de,#9c,#00
	db #f9,#9e,#00,#e1,#9d,#00,#60,#9d
	db #00,#fb,#9d,#00,#1f,#9e,#00,#1f
	db #9e,#00,#fb,#9d,#00,#de,#9c,#00
.l9b90 equ $ + 5
	db #de,#9c,#80,#6c,#9b,#00,#ae,#9f
	db #00,#02,#a2,#00,#02,#a2,#00,#4d
	db #a0,#00,#4d,#a0,#00,#4d,#a0,#00
	db #c6,#a1,#00,#4d,#a0,#00,#4d,#a0
	db #00,#c6,#a1,#00,#4f,#a1,#00,#ce
	db #a0,#00,#68,#a1,#00,#74,#a1,#00
	db #74,#a1,#00,#68,#a1,#00,#4d,#a0
.l9bc9 equ $ + 6
	db #00,#4d,#a0,#80,#a5,#9b,#00,#83
	db #a2,#00,#e9,#a4,#00,#e9,#a4,#00
	db #49,#a4,#00,#49,#a4,#00,#49,#a4
	db #00,#b6,#a4,#00,#38,#a3,#00,#38
	db #a3,#00,#b6,#a4,#00,#d9,#a3,#00
	db #84,#a3,#00,#2e,#a4,#00,#2e,#a4
	db #00,#2e,#a4,#00,#2e,#a4,#00,#38
	db #a3,#00,#38,#a3,#80,#de,#9b,#00
	db #08,#93,#05,#9a,#05,#9f,#05,#a6
	db #05,#ab,#05,#b2,#05,#b7,#05,#3e
	db #89,#93,#05,#9a,#05,#9f,#05,#a6
	db #05,#ab,#05,#b2,#05,#b7,#05,#3e
	db #89,#93,#05,#9a,#05,#9f,#05,#a6
	db #05,#ab,#05,#b2,#05,#b7,#05,#3e
	db #89,#9a,#05,#9a,#05,#9f,#05,#a6
	db #05,#ab,#05,#b2,#05,#b7,#05,#be
	db #05,#ff,#b7,#b0,#01,#b7,#00,#b7
	db #00,#b7,#00,#b7,#b1,#01,#b7,#b0
	db #01,#b7,#00,#b7,#00,#b7,#b0,#02
	db #b7,#00,#b7,#00,#b7,#00,#b7,#b1
	db #02,#b7,#b0,#02,#b7,#00,#b7,#00
	db #b7,#b0,#03,#b7,#00,#b7,#00,#b7
	db #00,#b7,#b1,#04,#b7,#b0,#04,#b7
	db #00,#b7,#00,#b7,#b0,#04,#b7,#00
	db #b7,#00,#b7,#00,#b7,#b1,#05,#b7
	db #b0,#05,#b7,#00,#b7,#00,#b7,#b0
	db #06,#b7,#00,#b7,#00,#b7,#00,#b7
	db #b1,#06,#b7,#b0,#07,#b7,#00,#b7
	db #00,#b7,#b0,#08,#b7,#00,#b7,#00
	db #b7,#00,#b7,#b1,#08,#b7,#b0,#09
	db #b7,#00,#b7,#00,#b7,#b0,#0a,#b7
	db #00,#b7,#00,#b7,#00,#b7,#b1,#0a
	db #b7,#b0,#0b,#b7,#00,#b7,#00,#b7
	db #b0,#0c,#b7,#00,#b7,#00,#b7,#00
	db #b7,#b1,#0c,#b7,#b0,#0d,#b7,#00
	db #b7,#00,#ff,#b7,#b0,#00,#b7,#00
	db #b7,#00,#b7,#00,#b7,#01,#b7,#00
	db #b7,#00,#b7,#00,#b7,#00,#b7,#00
	db #b7,#00,#b7,#00,#b7,#01,#b7,#00
	db #b7,#00,#b7,#00,#b7,#00,#b7,#00
	db #b7,#00,#b7,#00,#b7,#01,#b7,#00
	db #b7,#00,#b7,#00,#b7,#00,#b7,#00
	db #b7,#00,#b7,#00,#b7,#01,#b7,#00
	db #b7,#00,#b7,#00,#b7,#00,#b7,#00
	db #b7,#00,#b7,#00,#b7,#01,#b7,#00
	db #b7,#00,#b7,#00,#b7,#00,#b7,#00
	db #b7,#00,#b7,#00,#b7,#01,#b7,#00
	db #b7,#00,#b7,#00,#b7,#00,#b7,#00
	db #b7,#00,#b7,#00,#b7,#01,#b7,#00
	db #b7,#01,#b7,#00,#b7,#01,#b7,#01
	db #b7,#01,#b7,#01,#b7,#01,#b7,#01
	db #b7,#01,#b7,#01,#ff,#37,#02,#01
	db #b7,#b9,#04,#b7,#09,#37,#02,#00
	db #b7,#b9,#04,#b7,#09,#37,#02,#01
	db #b7,#b9,#04,#b7,#09,#37,#02,#00
	db #b7,#b9,#04,#b7,#09,#37,#02,#01
	db #b7,#b9,#04,#b7,#09,#37,#02,#00
	db #b7,#b9,#04,#b7,#09,#37,#02,#01
	db #b7,#b9,#04,#b7,#09,#37,#02,#00
	db #b7,#b9,#04,#b7,#09,#37,#02,#01
	db #b7,#b9,#04,#b7,#09,#37,#02,#00
	db #b7,#b9,#04,#b7,#09,#37,#02,#01
	db #b7,#b9,#04,#b7,#09,#37,#02,#00
	db #b7,#b9,#04,#b7,#09,#37,#02,#01
	db #b7,#b9,#04,#b7,#09,#37,#02,#00
	db #b7,#b9,#04,#b7,#09,#b7,#01,#b7
	db #01,#b7,#01,#b7,#01,#b7,#01,#b7
	db #01,#b7,#01,#b7,#01,#ff,#b7,#00
	db #b7,#00,#b7,#00,#b7,#00,#b7,#01
	db #b7,#00,#b7,#00,#b7,#00,#37,#08
	db #04,#33,#90,#35,#90,#32,#90,#ff
	db #43,#02,#01,#43,#8e,#37,#82,#37
	db #8e,#37,#82,#37,#8e,#37,#82,#37
	db #84,#37,#82,#c3,#01,#c3,#01,#c3
	db #01,#c3,#01,#c3,#01,#c3,#01,#c3
	db #01,#c3,#01,#ff,#37,#02,#01,#37
	db #82,#2b,#02,#0a,#37,#02,#01,#37
	db #82,#37,#82,#2b,#02,#0a,#37,#02
	db #01,#37,#82,#37,#82,#2b,#02,#0a
	db #37,#02,#01,#37,#82,#37,#82,#2b
	db #02,#0a,#37,#02,#01,#37,#82,#37
	db #82,#2b,#02,#0a,#37,#02,#01,#37
	db #82,#37,#82,#2b,#02,#0a,#37,#02
	db #01,#37,#82,#37,#82,#2b,#02,#0a
	db #37,#02,#01,#37,#82,#37,#82,#2b
	db #02,#0a,#37,#02,#01,#ff,#00,#40
	db #ff,#b7,#b0,#00,#be,#03,#b7,#00
	db #b7,#00,#b7,#01,#b7,#00,#b7,#00
	db #b7,#00,#b7,#00,#be,#03,#b7,#00
	db #be,#03,#b7,#03,#be,#03,#b7,#00
	db #be,#03,#b7,#00,#b0,#03,#b7,#00
	db #b7,#00,#b7,#01,#b7,#00,#b7,#00
	db #b7,#00,#b7,#00,#bc,#03,#b7,#00
	db #bc,#03,#b5,#03,#bc,#03,#b7,#00
	db #b5,#03,#b7,#00,#bc,#03,#b7,#00
	db #b7,#00,#b7,#01,#b7,#00,#b7,#00
	db #b7,#00,#b7,#00,#b5,#03,#b7,#00
	db #b5,#03,#ae,#03,#b5,#03,#b7,#00
	db #b5,#03,#b7,#00,#b7,#03,#b7,#00
	db #b7,#00,#b7,#01,#b7,#00,#b7,#00
	db #b7,#00,#b7,#00,#b7,#03,#b7,#00
	db #b7,#03,#bc,#03,#b7,#03,#b7,#00
	db #bc,#03,#ff,#00,#40,#ff,#37,#02
	db #00,#b7,#00,#b7,#00,#b7,#01,#b7
	db #00,#b7,#00,#b7,#00,#37,#82,#37
	db #84,#37,#82,#37,#82,#b7,#00,#b7
	db #00,#37,#22,#01,#c3,#01,#c3,#00
	db #c3,#01,#c3,#01,#c3,#01,#c3,#01
	db #c3,#01,#c3,#01,#c3,#01,#c3,#01
	db #ff,#ab,#b3,#00,#b2,#03,#ab,#03
	db #b2,#03,#ab,#03,#b2,#03,#ab,#03
	db #b2,#03,#ab,#03,#b2,#03,#ab,#03
	db #b2,#03,#ab,#03,#b2,#03,#ab,#03
	db #b2,#03,#a9,#03,#b0,#03,#a9,#03
	db #b0,#03,#a9,#03,#b0,#03,#a9,#03
	db #b0,#03,#a9,#03,#b0,#03,#a9,#03
	db #b0,#03,#a9,#03,#b0,#03,#a9,#03
	db #b0,#03,#a2,#03,#a9,#03,#a2,#03
	db #a9,#03,#a2,#03,#a9,#03,#a2,#03
	db #a9,#03,#a2,#03,#a9,#03,#a2,#03
	db #a9,#03,#a2,#03,#a9,#03,#a2,#03
	db #a9,#03,#a4,#03,#ab,#03,#a4,#03
	db #ab,#03,#a4,#03,#ab,#03,#a4,#03
	db #ab,#03,#a4,#03,#ab,#03,#a4,#03
	db #ab,#03,#a4,#03,#ab,#03,#a4,#03
	db #ab,#03,#ff,#00,#38,#8e,#b5,#00
	db #8e,#05,#93,#05,#9a,#05,#9f,#05
	db #a6,#05,#ab,#05,#b2,#05,#ff,#b7
	db #b5,#01,#be,#05,#b7,#05,#be,#05
	db #b7,#05,#be,#05,#b7,#05,#be,#05
	db #b7,#b5,#02,#be,#05,#b7,#05,#be
	db #05,#b7,#05,#be,#05,#b7,#05,#be
	db #05,#b5,#b5,#03,#bc,#05,#b5,#05
	db #bc,#05,#b5,#05,#bc,#05,#b5,#05
	db #bc,#05,#b5,#b5,#05,#bc,#05,#b5
	db #05,#bc,#05,#b5,#05,#bc,#05,#b5
	db #05,#bc,#05,#ae,#b5,#06,#b5,#05
	db #ae,#05,#b5,#05,#ae,#05,#b5,#05
	db #ae,#05,#b5,#05,#ae,#b5,#07,#b5
	db #05,#ae,#05,#b5,#05,#ae,#05,#b5
	db #05,#ae,#05,#b5,#05,#b0,#b5,#09
	db #b7,#05,#b0,#05,#b7,#05,#b0,#b5
	db #0a,#b7,#05,#b0,#05,#b7,#05,#b0
	db #b5,#0b,#b7,#05,#b0,#05,#b7,#05
	db #b0,#b5,#0d,#b7,#05,#b0,#05,#b7
	db #05,#ff,#b7,#05,#be,#05,#b7,#05
	db #be,#05,#b7,#05,#be,#05,#b7,#05
	db #be,#05,#b7,#05,#be,#05,#b7,#05
	db #be,#05,#b7,#05,#be,#05,#b7,#05
	db #be,#05,#b5,#05,#bc,#05,#b5,#05
	db #bc,#05,#b5,#05,#bc,#05,#b5,#05
	db #bc,#05,#b5,#05,#bc,#05,#b5,#05
	db #bc,#05,#b5,#05,#bc,#05,#b5,#05
	db #bc,#05,#ae,#05,#b5,#05,#ae,#05
	db #b5,#05,#ae,#05,#b5,#05,#ae,#05
	db #b5,#05,#ae,#05,#b5,#05,#ae,#05
	db #b5,#05,#ae,#05,#b5,#05,#ae,#05
	db #b5,#05,#b0,#05,#b7,#05,#b0,#05
	db #b7,#05,#b0,#05,#b7,#05,#b0,#05
	db #b7,#05,#b0,#05,#b7,#05,#b0,#05
	db #b7,#05,#b0,#05,#b7,#05,#b0,#05
	db #b7,#05,#ff,#b7,#05,#be,#05,#b7
	db #05,#be,#05,#b7,#05,#be,#05,#b7
	db #05,#be,#05,#b7,#05,#be,#05,#b7
	db #05,#be,#05,#b7,#05,#be,#05,#b7
	db #05,#be,#05,#b3,#05,#ba,#05,#b3
	db #05,#ba,#05,#b3,#05,#ba,#05,#b3
	db #05,#ba,#05,#b3,#05,#ba,#05,#b3
	db #05,#ba,#05,#b3,#05,#ba,#05,#b3
	db #05,#ba,#05,#b5,#05,#bc,#05,#b5
	db #05,#bc,#05,#b5,#05,#bc,#05,#b5
	db #05,#bc,#05,#b5,#05,#bc,#05,#b5
	db #05,#bc,#05,#b5,#05,#bc,#05,#b5
	db #05,#bc,#05,#b2,#05,#b9,#05,#b2
	db #05,#b9,#05,#b2,#05,#b9,#05,#b2
	db #05,#b9,#05,#b2,#05,#b9,#05,#b2
	db #05,#b9,#05,#b2,#05,#b9,#05,#b2
	db #05,#b9,#05,#ff,#37,#02,#05,#37
	db #82,#37,#82,#37,#82,#37,#82,#37
	db #82,#37,#82,#37,#82,#37,#10,#04
	db #39,#90,#36,#90,#ff,#00,#38,#46
	db #02,#05,#46,#82,#45,#82,#45,#82
	db #ff,#46,#02,#05,#46,#82,#45,#83
	db #c5,#05,#46,#82,#46,#82,#45,#83
	db #c5,#05,#4a,#82,#4a,#82,#48,#83
	db #c8,#05,#4a,#82,#4a,#82,#48,#83
	db #c2,#05,#43,#82,#43,#82,#43,#82
	db #c5,#05,#c6,#05,#48,#82,#48,#82
	db #ca,#05,#ca,#05,#ca,#05,#4a,#85
	db #4a,#82,#4a,#82,#c8,#05,#c8,#05
	db #c8,#05,#c8,#05,#c8,#05,#c8,#05
	db #c8,#05,#c8,#05,#ff,#00,#40,#ff
	db #00,#40,#ff,#b7,#05,#be,#05,#b7
	db #05,#be,#05,#b7,#05,#be,#05,#b7
	db #05,#be,#05,#b7,#05,#be,#05,#b7
	db #05,#be,#05,#b7,#05,#be,#05,#b7
	db #05,#3e,#83,#48,#84,#46,#84,#48
	db #83,#46,#82,#c8,#05,#46,#84,#2e
	db #82,#ae,#05,#ae,#05,#4b,#84,#4d
	db #84,#48,#90,#ff,#00,#40,#ff,#b7
	db #05,#be,#05,#b7,#05,#be,#05,#b7
	db #05,#be,#05,#b7,#05,#be,#05,#b7
	db #05,#be,#05,#b7,#05,#be,#05,#b7
	db #05,#be,#05,#b7,#05,#be,#05,#b5
	db #05,#bc,#05,#b5,#05,#bc,#05,#b5
	db #05,#bc,#05,#b5,#05,#bc,#05,#b5
	db #05,#bc,#05,#b5,#05,#bc,#05,#b5
	db #05,#bc,#05,#b5,#05,#bc,#05,#ae
	db #05,#b5,#05,#ae,#05,#b5,#05,#ae
	db #05,#b5,#05,#ae,#05,#b5,#05,#ae
	db #05,#b5,#05,#ae,#05,#b5,#05,#ae
	db #05,#b5,#05,#ae,#05,#b5,#05,#b0
	db #05,#b7,#05,#b0,#05,#b7,#05,#b0
	db #05,#b7,#05,#b0,#05,#b7,#05,#b0
	db #05,#b7,#05,#b0,#05,#b7,#05,#b0
	db #05,#b7,#05,#b0,#05,#b7,#05,#ff
	db #43,#02,#b0,#00,#c3,#00,#c3,#00
	db #c3,#01,#c3,#00,#c3,#00,#c3,#00
	db #43,#82,#43,#84,#43,#82,#43,#82
	db #c3,#00,#c3,#00,#c3,#01,#c3,#00
	db #c3,#00,#c3,#00,#43,#82,#43,#84
	db #43,#82,#43,#82,#c3,#00,#c3,#00
	db #c3,#01,#c3,#00,#c3,#00,#c3,#00
	db #43,#82,#43,#84,#43,#82,#43,#82
	db #c3,#00,#c3,#00,#c3,#01,#c3,#00
	db #c3,#00,#43,#89,#ff,#4a,#02,#b5
	db #00,#46,#02,#05,#48,#82,#46,#82
	db #4a,#02,#b5,#01,#c6,#05,#48,#82
	db #ca,#05,#48,#82,#48,#02,#b5,#02
	db #45,#02,#05,#46,#02,#b5,#03,#45
	db #02,#05,#48,#02,#b5,#04,#c5,#05
	db #46,#82,#c8,#05,#46,#82,#4a,#02
	db #b5,#06,#c1,#05,#c6,#05,#41,#02
	db #b5,#07,#46,#02,#05,#48,#03,#b5
	db #08,#41,#02,#05,#ca,#05,#48,#82
	db #48,#02,#b5,#0a,#c3,#05,#c0,#05
	db #43,#02,#b5,#0b,#48,#02,#b5,#0c
	db #46,#02,#b5,#0d,#c5,#05,#48,#82
	db #c3,#05,#48,#82,#ff,#4a,#02,#05
	db #46,#82,#48,#82,#46,#82,#4a,#82
	db #c6,#05,#48,#82,#ca,#05,#48,#82
	db #48,#82,#45,#82,#46,#82,#45,#82
	db #48,#82,#c5,#05,#46,#82,#c8,#05
	db #46,#82,#4a,#82,#c1,#05,#c6,#05
	db #41,#82,#46,#82,#48,#83,#41,#82
	db #ca,#05,#48,#82,#48,#82,#c3,#05
	db #c0,#05,#43,#82,#48,#82,#46,#82
	db #c5,#05,#48,#82,#c3,#05,#48,#82
	db #ff,#be,#06,#be,#06,#c1,#06,#c1
	db #06,#c3,#06,#c3,#06,#be,#06,#be
	db #06,#c1,#06,#c1,#06,#c3,#06,#45
	db #82,#c3,#06,#41,#82,#3f,#82,#43
	db #82,#c5,#06,#46,#82,#4a,#82,#48
	db #82,#c6,#06,#45,#82,#43,#82,#48
	db #83,#41,#82,#4a,#82,#c8,#06,#45
	db #84,#41,#82,#45,#82,#c5,#06,#c3
	db #06,#c5,#06,#c3,#06,#c5,#06,#c5
	db #06,#c2,#06,#3e,#85,#b7,#01,#b7
	db #01,#b7,#01,#b7,#01,#ff,#be,#02
	db #be,#02,#c1,#02,#c1,#02,#c3,#02
	db #c3,#02,#be,#02,#be,#02,#c1,#02
	db #c1,#02,#c3,#02,#45,#82,#c3,#02
	db #41,#82,#3f,#82,#43,#82,#c5,#02
	db #46,#82,#4a,#82,#48,#82,#c6,#02
	db #45,#82,#43,#82,#48,#83,#41,#82
	db #4a,#82,#c8,#02,#45,#84,#41,#82
	db #45,#82,#c5,#02,#c3,#02,#c5,#02
	db #c3,#02,#c5,#02,#c5,#02,#c1,#02
	db #3e,#85,#b7,#01,#b7,#01,#b7,#01
	db #b7,#01,#ff,#2b,#04,#02,#37,#84
	db #35,#84,#32,#82,#2e,#82,#32,#90
	db #35,#8a,#37,#82,#39,#84,#3a,#88
	db #39,#88,#ff,#00,#40,#ff,#4a,#02
	db #05,#ab,#03,#a6,#03,#48,#02,#05
	db #ab,#03,#a6,#03,#4a,#02,#05,#ab
	db #03,#48,#02,#05,#ca,#05,#48,#82
	db #48,#82,#a9,#03,#a4,#03,#46,#02
	db #05,#a9,#03,#a4,#03,#48,#02,#05
	db #a9,#03,#46,#02,#05,#c8,#05,#46
	db #82,#4a,#82,#a2,#03,#a9,#03,#a2
	db #03,#a9,#03,#a2,#03,#a9,#03,#48
	db #02,#05,#a2,#03,#a9,#03,#a2,#03
	db #ca,#05,#48,#82,#48,#82,#a4,#03
	db #ab,#03,#a4,#03,#ab,#03,#a4,#03
	db #ab,#03,#46,#02,#05,#a4,#03,#48
	db #02,#05,#ab,#03,#48,#02,#05,#ff
	db #00,#40,#ff,#4a,#04,#05,#48,#84
	db #4a,#83,#48,#82,#ca,#05,#48,#82
	db #48,#84,#46,#84,#48,#83,#46,#82
	db #c8,#05,#46,#82,#4a,#84,#3a,#82
	db #ba,#05,#ba,#05,#3f,#84,#41,#82
	db #4d,#82,#43,#82,#46,#82,#4a,#82
	db #4f,#8a,#ff,#00,#40,#ff,#37,#02
	db #00,#b7,#00,#b7,#00,#b7,#01,#b7
	db #00,#b7,#00,#b7,#00,#37,#82,#37
	db #84,#37,#82,#37,#82,#b7,#00,#b7
	db #00,#b7,#01,#b7,#00,#b7,#00,#b7
	db #00,#37,#82,#37,#84,#37,#82,#37
	db #82,#b7,#00,#b7,#00,#b7,#01,#b7
	db #00,#b7,#00,#b7,#00,#37,#82,#37
	db #84,#37,#82,#37,#82,#b7,#00,#b7
	db #00,#b7,#01,#b7,#00,#b7,#00,#b7
	db #00,#37,#82,#37,#84,#37,#82,#ff
;
.music_info
	db "Cool World - Music 5 (1994)(Sleepwalker PDS)(Joe Moulding)",0
	db "ST-Module",0

	read "music_end.asm"
