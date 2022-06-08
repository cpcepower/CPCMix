; Music of Something Good (1994)(Sleepwalker PDS)(Joe Moulding)(ST-Module)
; Ripped by Megachur the 05/04/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOMETHIG.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #91c7

	read "music_header.asm"

	jr l91cb
	jr l91da
.l91cb
	call l91f6
	ld hl,l9619
	ld de,l91e3
	ld bc,#81ff
	jp #bcd7
.l91da
	ld hl,l9619
	call #bcdd
	jp l9262
.l91e3
	push ix
	call l927e
	pop ix
	ret

	jp l91f6
	jp l927e
	jp l9262

	ld h,(hl)
	inc b
;
.init_music
.l91f6
;
	ld b,#03
	ld ix,l95c5
	ld iy,l94f1
	ld de,#001c
.l9203
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
	djnz l9203
	ld a,#05
	ld (l92a6),a
	ld a,d
	ld (l92ba),a
	inc a
	ld (l92a1),a
	ld a,#38
	ld (l92ab),a
	ld a,#ff
	ld (l94ed),a
	ld (l94ee),a
	ld (l94ef),a
	ld (l94f0),a
	ld a,#0c
	ld c,d
	call l94cf
	ld a,#0d
	ld c,d
	jp l94cf
;
.stop_music
.l9262
;
	ld a,#07
	ld c,#3f
	call l94cf
	ld a,#08
	ld c,#00
	call l94cf
	ld a,#09
	ld c,#00
	call l94cf
	ld a,#0a
	ld c,#00
	jp l94cf
;
.play_music
.l927e
;
	ld hl,l92a1
	dec (hl)
	ld ix,l95c5
	ld bc,l95d3
	call l9334
	ld ix,l95e1
	ld bc,l95ef
	call l9334
	ld ix,l95fd
	ld bc,l960b
	call l9334
.l92a1 equ $ + 1
	ld a,#01
	or a
	jr nz,l92aa
.l92a6 equ $ + 1
	ld a,#05
	ld (l92a1),a
.l92ab equ $ + 1
.l92aa
	ld a,#38
	ld hl,l94ee
	cp (hl)
	jr z,l92b9
	ld (hl),a
	ld c,a
	ld a,#07
	call l94cf
.l92ba equ $ + 1
.l92b9
	ld a,#00
	ld hl,l94ed
	cp (hl)
	jr z,l92c8
	ld (hl),a
	ld c,a
	ld a,#06
	call l94cf
.l92c9 equ $ + 1
.l92c8
	ld a,#24
	ld hl,l94ef
	cp (hl)
	jr z,l92d7
	ld (hl),a
	ld c,a
	ld a,#0b
	call l94cf
.l92d8 equ $ + 1
.l92d7
	ld a,#38
	ld hl,l94f0
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l94cf
.l92e5
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l93e5
.l92f4
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
	jp l94cf
.l930e
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l9323
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l9323
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9347
.l9334
	ld a,(l92a1)
	or a
	jp nz,l93e5
	dec (ix+#06)
	jp nz,l93e5
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9347
	ld a,(hl)
	or a
	jr z,l92e5
	cp #fe
	jr z,l92f4
	cp #ff
	jr z,l930e
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l94f7
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l9383
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l9383
	and #7f
	ld (ix+#06),a
	jr l93d6
.l9383
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l9397
	ld (ix+#05),a
	ld (ix+#0a),d
.l9397
	add a
	add a
	add a
	ld e,a
	ld hl,l962d
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
	jr z,l93d6
	cp #f0
	jp z,l948b
	cp #d0
	jp z,l94a7
	cp #b0
	jp z,l94af
	cp #80
	jp nc,l94b7
	cp #10
	jr nz,l93d6
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l93d6
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l93e5
	ld a,(ix+#17)
	or a
	jr nz,l93f9
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l93f9
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l9424
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l94f7
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l9424
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
	call l94cf
	ld c,h
	ld a,(ix+#03)
	call l94cf
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9462
	and #0f
	sub (ix+#0a)
	jr nc,l9458
	xor a
.l9458
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l94cf
.l9462
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
	jr z,l947f
	ld b,a
	ld a,c
	ld (l92ba),a
	ld a,b
	sub #40
.l947f
	ld (l9486),a
	ld a,(l92ab)
.l9486 equ $ + 1
	set 5,a
	ld (l92ab),a
	ret
.l948b
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l96ad
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l93d6
.l94a7
	inc hl
	ld a,(hl)
	ld (l92a6),a
	jp l93d6
.l94af
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l93d6
.l94b7
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l92d8),a
	inc hl
	ld a,(hl)
	ld (l92c9),a
	jp l93d6
.l94cf
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
.l94f0 equ $ + 3
.l94ef equ $ + 2
.l94ee equ $ + 1
.l94ed
	db #00,#38,#24,#38
.l94f1
	dw #990d,#995b,#99a9
.l94f7
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
.l95c5 equ $ + 4
	db #00,#00,#00,#00,#03,#9a,#00,#01
	db #08,#03,#01,#15,#00,#10,#00,#df
.l95d3 equ $ + 2
	db #58,#99,#4d,#97,#8d,#97,#2d,#97
	db #10,#10,#0a,#16,#70,#04,#00,#00
.l95e1
	db #05,#9c,#02,#03,#09,#03,#07,#39
.l95ef equ $ + 6
	db #00,#00,#00,#e7,#a6,#99,#4d,#97
	db #8d,#97,#2d,#97,#10,#10,#1e,#02
.l95fd equ $ + 4
	db #5f,#00,#6d,#98,#84,#9e,#04,#05
	db #0a,#02,#01,#3c,#00,#00,#00,#ef
.l960b equ $ + 2
	db #f4,#99,#cd,#96,#0d,#97,#2d,#97
	db #00,#00,#05,#1b,#77,#00,#00,#00
.l9619
	db #fe,#b1,#00,#b2,#00,#81,#e3,#91
	db #ff,#00,#53,#54,#2d,#4d,#6f,#64
.l962d equ $ + 4
	db #75,#6c,#65,#2e,#c7,#90,#c7,#90
	db #c7,#90,#00,#00,#c7,#90,#c7,#90
	db #c7,#90,#00,#00,#cd,#96,#0d,#97
	db #2d,#97,#00,#00,#4d,#97,#8d,#97
	db #2d,#97,#10,#10,#4d,#97,#ad,#97
	db #2d,#97,#08,#00,#cd,#96,#cd,#97
	db #2d,#97,#00,#00,#ed,#97,#2d,#98
	db #2d,#97,#00,#00,#c7,#90,#c7,#90
	db #c7,#90,#00,#00,#c7,#90,#c7,#90
	db #c7,#90,#00,#00,#c7,#90,#1f,#22
	db #1f,#22,#00,#00,#a5,#28,#25,#2a
	db #05,#29,#08,#18,#1f,#22,#1f,#22
	db #1f,#22,#00,#00,#1f,#22,#1f,#22
	db #1f,#22,#00,#00,#1f,#22,#1f,#22
	db #1f,#22,#00,#00,#1f,#22,#1f,#22
	db #1f,#22,#00,#00,#1f,#22,#1f,#22
.l96ad equ $ + 4
	db #1f,#22,#00,#00,#4d,#98,#65,#2a
	db #6d,#98,#8d,#98,#ad,#98,#cd,#98
	db #ed,#98,#1f,#22,#1f,#22,#1f,#22
	db #1f,#22,#1f,#22,#1f,#22,#1f,#22
	db #1f,#22,#1f,#22,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0d,#0b,#0a
	db #09,#08,#08,#07,#07,#06,#06,#05
	db #05,#05,#04,#04,#04,#03,#03,#03
	db #02,#02,#02,#02,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#8b,#89,#88,#88,#87
	db #87,#86,#85,#84,#83,#82,#81,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0f,#0e,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0a,#0a
	db #0a,#09,#09,#09,#09,#08,#08,#08
	db #08,#07,#07,#07,#07,#06,#06,#06
	db #05,#04,#02,#00,#0e,#0e,#0d,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#09,#08
	db #08,#08,#07,#07,#07,#06,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#01
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#01,#00,#02,#00
	db #01,#00,#00,#00,#0e,#0f,#0f,#0f
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
	db #04,#07,#00,#04,#00,#03,#08,#00
	db #03,#08,#00,#03,#08,#00,#03,#08
	db #00,#03,#08,#00,#03,#08,#00,#03
	db #08,#00,#03,#08,#00,#03,#08,#00
	db #03,#08,#00,#03,#00,#04,#09,#00
	db #04,#09,#00,#04,#09,#00,#04,#09
	db #00,#04,#09,#00,#04,#09,#00,#04
	db #09,#00,#04,#09,#00,#04,#09,#00
	db #04,#09,#00,#04,#00,#05,#09,#00
	db #05,#09,#00,#05,#09,#00,#05,#09
	db #00,#05,#09,#00,#05,#09,#00,#05
	db #09,#00,#05,#09,#00,#05,#09,#00
	db #05,#09,#00,#05,#00,#f7,#99,#00
	db #f7,#99,#00,#5c,#9a,#00,#5c,#9a
	db #00,#f7,#99,#00,#f7,#99,#00,#5c
	db #9a,#00,#5c,#9a,#00,#c1,#9a,#00
	db #c1,#9a,#00,#f7,#99,#00,#f7,#99
	db #00,#f7,#99,#00,#f7,#99,#00,#f7
	db #99,#00,#f7,#99,#00,#5c,#9a,#00
	db #5c,#9a,#00,#f7,#99,#00,#f7,#99
	db #00,#5c,#9a,#00,#5c,#9a,#00,#f7
	db #99,#00,#f7,#99,#00,#f7,#99,#80
	db #55,#99,#00,#62,#9b,#00,#62,#9b
	db #00,#78,#9b,#00,#78,#9b,#00,#8e
	db #9b,#00,#8e,#9b,#00,#a0,#9c,#00
	db #a0,#9c,#00,#6d,#9c,#00,#6d,#9c
	db #00,#1b,#9c,#00,#1b,#9c,#00,#af
	db #9b,#00,#1b,#9c,#00,#62,#9b,#00
	db #62,#9b,#00,#78,#9b,#00,#78,#9b
	db #00,#8e,#9b,#00,#8e,#9b,#00,#a0
	db #9c,#00,#a0,#9c,#00,#1b,#9c,#00
	db #1b,#9c,#00,#01,#9c,#80,#a3,#99
	db #00,#c1,#9c,#00,#c1,#9c,#00,#24
	db #9d,#00,#24,#9d,#00,#a5,#9d,#00
	db #a5,#9d,#00,#7a,#9f,#00,#7a,#9f
	db #00,#f9,#9e,#00,#f9,#9e,#00,#a5
	db #9d,#00,#a5,#9d,#00,#26,#9e,#00
	db #a5,#9d,#00,#c1,#9c,#00,#c1,#9c
	db #00,#24,#9d,#00,#24,#9d,#00,#a5
	db #9d,#00,#a5,#9d,#00,#7a,#9f,#00
	db #7a,#9f,#00,#a5,#9d,#00,#a5,#9d
	db #00,#78,#9e,#80,#f1,#99,#1f,#02
	db #83,#24,#2b,#02,#83,#12,#1f,#02
	db #83,#24,#2b,#02,#83,#12,#1f,#02
	db #83,#24,#2b,#02,#83,#12,#1f,#02
	db #83,#24,#2b,#02,#83,#12,#1b,#02
	db #83,#2d,#33,#82,#1b,#82,#33,#82
	db #1b,#82,#33,#82,#1b,#82,#33,#82
	db #16,#02,#83,#1e,#22,#82,#16,#82
	db #22,#82,#16,#82,#22,#82,#16,#82
	db #22,#82,#1d,#02,#83,#28,#29,#02
	db #83,#14,#1d,#02,#83,#28,#29,#02
	db #83,#14,#1d,#02,#83,#28,#29,#02
	db #83,#14,#1d,#02,#83,#28,#29,#02
	db #83,#14,#ff,#1f,#02,#83,#24,#2b
	db #02,#83,#12,#1f,#02,#83,#24,#2b
	db #02,#83,#12,#1f,#02,#83,#24,#2b
	db #02,#83,#12,#1f,#02,#83,#24,#2b
	db #02,#83,#12,#1b,#02,#83,#2d,#33
	db #82,#1b,#82,#33,#82,#1b,#82,#33
	db #82,#1b,#82,#33,#82,#16,#02,#83
	db #1e,#22,#82,#16,#82,#22,#82,#16
	db #82,#22,#82,#16,#82,#22,#82,#1d
	db #02,#83,#28,#29,#02,#83,#14,#1d
	db #02,#83,#28,#29,#02,#83,#14,#1d
	db #02,#83,#28,#29,#02,#83,#14,#1d
	db #02,#83,#28,#29,#02,#83,#14,#ff
	db #b7,#83,#24,#b7,#06,#ab,#83,#12
	db #b7,#06,#9f,#83,#24,#b7,#06,#ab
	db #83,#12,#b7,#06,#9f,#83,#24,#b7
	db #06,#ab,#83,#12,#b7,#06,#9f,#83
	db #24,#b7,#06,#ab,#83,#12,#b7,#06
	db #96,#83,#1e,#ba,#06,#a2,#83,#1e
	db #ba,#06,#96,#83,#1e,#ba,#06,#a2
	db #83,#1e,#ba,#06,#96,#83,#1e,#ba
	db #06,#a2,#83,#1e,#ba,#06,#96,#83
	db #1e,#ba,#06,#a2,#83,#1e,#ba,#06
	db #9d,#83,#28,#b5,#06,#a9,#83,#14
	db #b5,#06,#9d,#83,#28,#b5,#06,#a9
	db #83,#14,#b5,#06,#9d,#83,#28,#b5
	db #06,#a9,#83,#14,#b5,#06,#9d,#83
	db #28,#b5,#06,#a9,#83,#14,#b5,#06
	db #9b,#83,#2d,#b3,#06,#b3,#83,#2d
	db #b3,#06,#9b,#83,#2d,#b3,#06,#b3
	db #83,#2d,#b3,#06,#9d,#83,#28,#b5
	db #06,#a9,#83,#14,#b5,#06,#9d,#83
	db #28,#b5,#06,#a9,#83,#14,#b5,#06
	db #ff,#43,#0c,#f3,#00,#46,#02,#03
	db #43,#82,#3f,#8c,#3f,#84,#46,#8c
	db #4a,#82,#46,#82,#41,#90,#ff,#43
	db #0c,#f3,#00,#46,#02,#03,#43,#82
	db #3f,#8c,#3f,#84,#46,#8c,#4a,#82
	db #46,#82,#41,#90,#ff,#43,#0c,#f3
	db #02,#46,#02,#f3,#05,#43,#02,#f3
	db #02,#3f,#0c,#f3,#03,#3f,#04,#03
	db #46,#8c,#4a,#02,#f3,#04,#46,#02
	db #f3,#03,#41,#10,#03,#ff,#2b,#02
	db #15,#ab,#05,#ab,#05,#2b,#82,#2e
	db #82,#2b,#82,#ab,#05,#ab,#05,#2b
	db #82,#26,#82,#27,#82,#a7,#05,#a7
	db #05,#27,#82,#2b,#82,#27,#82,#a7
	db #05,#a7,#05,#27,#82,#22,#82,#2e
	db #82,#ae,#05,#ae,#05,#2e,#82,#32
	db #82,#2e,#82,#ae,#05,#ae,#05,#2e
	db #82,#29,#82,#29,#82,#a9,#05,#a9
	db #05,#29,#82,#2d,#82,#29,#82,#a9
	db #05,#a9,#05,#29,#82,#24,#82,#ff
	db #43,#0c,#f3,#02,#43,#02,#03,#43
	db #82,#46,#10,#f3,#06,#46,#0c,#f3
	db #03,#4a,#04,#f3,#04,#41,#10,#f3
	db #03,#ff,#37,#02,#15,#b7,#05,#b7
	db #05,#37,#82,#3a,#82,#37,#82,#b7
	db #05,#b7,#05,#37,#82,#32,#82,#33
	db #82,#b3,#05,#b3,#05,#33,#82,#37
	db #82,#33,#82,#b3,#05,#b3,#05,#33
	db #82,#2e,#82,#3a,#82,#ba,#05,#ba
	db #05,#3a,#82,#3e,#82,#3a,#82,#ba
	db #05,#ba,#05,#3a,#82,#35,#82,#35
	db #82,#b5,#05,#b5,#05,#35,#82,#39
	db #82,#35,#82,#b5,#05,#b5,#05,#35
	db #82,#30,#82,#ff,#43,#03,#13,#45
	db #03,#03,#46,#83,#43,#83,#45,#82
	db #46,#82,#4a,#83,#48,#83,#46,#83
	db #4a,#83,#48,#82,#46,#82,#48,#83
	db #46,#83,#45,#83,#48,#83,#46,#82
	db #45,#82,#46,#83,#45,#83,#43,#83
	db #48,#83,#46,#82,#45,#82,#ff,#43
	db #0c,#f3,#02,#46,#02,#f3,#05,#43
	db #02,#f3,#02,#3f,#0c,#f3,#03,#3f
	db #04,#03,#46,#8c,#4a,#02,#f3,#04
	db #46,#02,#f3,#03,#41,#10,#03,#ff
	db #43,#02,#b6,#01,#be,#06,#c3,#06
	db #46,#82,#be,#06,#c3,#06,#46,#82
	db #be,#06,#c3,#06,#46,#82,#be,#06
	db #c3,#06,#3f,#82,#bf,#06,#c3,#06
	db #46,#82,#bf,#06,#c3,#06,#46,#82
	db #bf,#06,#c3,#06,#46,#82,#bf,#06
	db #c3,#06,#46,#82,#c1,#06,#c6,#06
	db #4a,#82,#c1,#06,#c6,#06,#4a,#82
	db #c1,#06,#c6,#06,#41,#82,#ba,#06
	db #be,#06,#41,#82,#c1,#06,#c5,#06
	db #48,#82,#c1,#06,#c5,#06,#48,#82
	db #c1,#06,#c5,#06,#48,#82,#c1,#06
	db #c5,#06,#ff,#c3,#02,#c3,#02,#be
	db #02,#c3,#02,#c6,#02,#c6,#02,#c3
	db #02,#be,#02,#c3,#02,#c3,#02,#c6
	db #02,#c6,#02,#ca,#02,#ca,#02,#c6
	db #02,#c6,#02,#bf,#02,#bf,#02,#ba
	db #02,#bf,#02,#c3,#02,#c3,#02,#bf
	db #02,#ba,#02,#bf,#02,#bf,#02,#c3
	db #02,#c3,#02,#c6,#02,#c6,#02,#c3
	db #02,#c3,#02,#c1,#02,#c1,#02,#ba
	db #02,#c1,#02,#c6,#02,#c6,#02,#c1
	db #02,#ba,#02,#c1,#02,#c1,#02,#c6
	db #02,#c6,#02,#ca,#02,#ca,#02,#c6
	db #02,#c6,#02,#c1,#02,#c1,#02,#bc
	db #02,#c1,#02,#c5,#02,#c5,#02,#c1
	db #02,#bc,#02,#c1,#02,#c1,#02,#c5
	db #02,#c5,#02,#c8,#02,#c8,#02,#c5
	db #02,#c5,#02,#ff,#c3,#02,#c3,#02
	db #be,#02,#c3,#02,#c6,#02,#c6,#02
	db #c3,#02,#be,#02,#c3,#02,#c3,#02
	db #c6,#02,#c6,#02,#ca,#02,#ca,#02
	db #c6,#02,#c6,#02,#bf,#02,#bf,#02
	db #ba,#02,#bf,#02,#c3,#02,#c3,#02
	db #bf,#02,#ba,#02,#bf,#02,#bf,#02
	db #c3,#02,#c3,#02,#c6,#02,#c6,#02
	db #c3,#02,#c3,#02,#c1,#02,#c1,#02
	db #ba,#02,#c1,#02,#c6,#02,#c6,#02
	db #c1,#02,#ba,#02,#c1,#02,#c1,#02
	db #c6,#02,#c6,#02,#ca,#02,#ca,#02
	db #c6,#02,#c6,#02,#c1,#02,#c1,#02
	db #bc,#02,#c1,#02,#c5,#02,#c5,#02
	db #c1,#02,#bc,#02,#c1,#02,#c1,#02
	db #c5,#02,#c5,#02,#c8,#02,#c8,#02
	db #c5,#02,#c5,#02,#ff,#2b,#02,#15
	db #ab,#05,#ab,#05,#2b,#82,#2e,#82
	db #2b,#82,#ab,#05,#ab,#05,#2b,#82
	db #26,#82,#27,#82,#a7,#05,#a7,#05
	db #27,#82,#2b,#82,#27,#82,#a7,#05
	db #a7,#05,#27,#82,#22,#82,#2e,#82
	db #ae,#05,#ae,#05,#2e,#82,#32,#82
	db #2e,#82,#ae,#05,#ae,#05,#2e,#82
	db #29,#82,#29,#82,#a9,#05,#a9,#05
	db #29,#82,#2d,#82,#29,#82,#a9,#05
	db #a9,#05,#29,#82,#24,#82,#ff,#c3
	db #02,#c3,#02,#d2,#02,#d2,#02,#d2
	db #02,#c6,#02,#d2,#02,#be,#02,#d2
	db #02,#c3,#02,#d2,#02,#c6,#02,#d2
	db #02,#ca,#02,#cf,#02,#c6,#02,#bf
	db #02,#bf,#02,#d2,#02,#d2,#02,#d2
	db #02,#c3,#02,#d2,#02,#ba,#02,#d2
	db #02,#bf,#02,#d2,#02,#c3,#02,#d2
	db #02,#c6,#02,#d7,#02,#c3,#02,#c1
	db #02,#c1,#02,#d6,#02,#d6,#02,#d6
	db #02,#c6,#02,#d6,#02,#ba,#02,#d6
	db #02,#c1,#02,#d6,#02,#c6,#02,#d6
	db #02,#ca,#02,#d2,#02,#c6,#02,#c1
	db #02,#c1,#02,#d4,#02,#d4,#02,#d4
	db #02,#c5,#02,#d4,#02,#bc,#02,#d4
	db #02,#c1,#02,#d4,#02,#c5,#02,#d4
	db #02,#c8,#02,#d9,#02,#c5,#02,#ff
	db #b7,#03,#b2,#04,#d2,#02,#d2,#02
	db #d2,#02,#b2,#04,#d2,#02,#b2,#04
	db #d2,#02,#b2,#04,#d2,#02,#d2,#02
	db #d2,#02,#b2,#04,#cf,#02,#b2,#04
	db #ba,#03,#b5,#04,#d2,#02,#d2,#02
	db #d2,#02,#b5,#04,#d2,#02,#b5,#04
	db #d2,#02,#b5,#04,#d2,#02,#b5,#04
	db #d2,#02,#b5,#04,#cd,#02,#b5,#04
	db #b5,#03,#b0,#04,#d2,#02,#d2,#02
	db #d2,#02,#b0,#04,#d2,#02,#b0,#04
	db #d2,#02,#b0,#04,#d2,#02,#b0,#04
	db #d2,#02,#d2,#02,#cf,#02,#b0,#04
	db #b3,#03,#b7,#04,#d2,#02,#d2,#02
	db #d2,#02,#b7,#04,#d2,#02,#b7,#04
	db #d2,#02,#b0,#04,#d2,#02,#d2,#02
	db #d2,#02,#b0,#04,#cd,#02,#b0,#04
	db #ff,#c3,#02,#c3,#02,#d2,#02,#d2
	db #02,#d2,#02,#c6,#02,#d2,#02,#be
	db #02,#d2,#02,#c3,#02,#d2,#02,#c6
	db #02,#d2,#02,#ca,#02,#cf,#02,#c6
	db #02,#bf,#02,#bf,#02,#d2,#02,#d2
	db #02,#d2,#02,#c3,#02,#d2,#02,#ba
	db #02,#d2,#02,#bf,#02,#d2,#02,#c3
	db #02,#d2,#02,#c6,#02,#cd,#02,#c3
	db #02,#c1,#02,#c1,#02,#d2,#02,#d2
	db #02,#d2,#02,#c6,#02,#d2,#02,#ba
	db #02,#d2,#02,#c1,#02,#d2,#02,#c6
	db #02,#d2,#02,#ca,#02,#cf,#02,#c6
	db #02,#c1,#02,#c1,#02,#d2,#02,#d2
	db #02,#d2,#02,#c5,#02,#d2,#02,#bc
	db #02,#d2,#02,#c1,#02,#d2,#02,#c5
	db #02,#d2,#02,#c8,#02,#cd,#02,#c5
	db #02,#ff

;
.music_info
	db "Something Good (1994)(Sleepwalker PDS)(Joe Moulding)",0
	db "ST-Module",0

	read "music_end.asm"