; Music of Blue Impuls (19xx)(Public Domain)()(ST-Module)
; Ripped by Megachur the 30/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLUEIMPU.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8000

	read "music_header.asm"

	jr l8004
	jr l8013
.l8004
	call l802f
	ld hl,l8452
	ld de,l801c
	ld bc,l81ff
	jp #bcd7
.l8013
	ld hl,l8452
	call #bcdd
	jp l809b
.l801c
	push ix
	call l80b7
	pop ix
	ret
	jp l802f
	jp l80b7
	jp l809b
	db #66,#04
;
.init_music
.l802f
;
	ld b,#03
	ld ix,l83fe
	ld iy,l832a
	ld de,#001c
.l803c
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
	djnz l803c
	ld a,#0a
	ld (l80df),a
	ld a,d
	ld (l80f3),a
	inc a
	ld (l80da),a
	ld a,#38
	ld (l80e4),a
	ld a,#ff
	ld (l8326),a
	ld (l8327),a
	ld (l8328),a
	ld (l8329),a
	ld a,#0c
	ld c,d
	call l8308
	ld a,#0d
	ld c,d
	jp l8308
;
.stop_music
.l809b
;
	ld a,#07
	ld c,#3f
	call l8308
	ld a,#08
	ld c,#00
	call l8308
	ld a,#09
	ld c,#00
	call l8308
	ld a,#0a
	ld c,#00
	jp l8308
;
.play_music
.l80b7
;
	ld hl,l80da
	dec (hl)
	ld ix,l83fe
	ld bc,l840c
	call l816d
	ld ix,l841a
	ld bc,l8428
	call l816d
	ld ix,l8436
	ld bc,l8444
	call l816d
.l80da equ $ + 1
	ld a,#00
	or a
	jr nz,l80e3
.l80df equ $ + 1
	ld a,#00
	ld (l80da),a
.l80e4 equ $ + 1
.l80e3
	ld a,#00
	ld hl,l8327
	cp (hl)
	jr z,l80f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l8308
.l80f3 equ $ + 1
.l80f2
	ld a,#00
	ld hl,l8326
	cp (hl)
	jr z,l8101
	ld (hl),a
	ld c,a
	ld a,#06
	call l8308
.l8102 equ $ + 1
.l8101
	ld a,#00
	ld hl,l8328
	cp (hl)
	jr z,l8110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l8308
.l8111 equ $ + 1
.l8110
	ld a,#00
	ld hl,l8329
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l8308
.l811e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l821e
.l812d
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
	jp l8308
.l8147
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l815c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l815c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l8180
.l816d
	ld a,(l80da)
	or a
	jp nz,l821e
	dec (ix+#06)
	jp nz,l821e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l8180
	ld a,(hl)
	or a
	jr z,l811e
	cp #fe
	jr z,l812d
	cp #ff
	jr z,l8147
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l8330
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l81bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l81bc
	and #7f
	ld (ix+#06),a
	jr l820f
.l81bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l81d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l81d0
	add a
	add a
	add a
	ld e,a
	ld hl,l8466
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
	jr z,l820f
	cp #f0
	jp z,l82c4
	cp #d0
	jp z,l82e0
	cp #b0
	jp z,l82e8
.l81ff
	cp #80
	jp nc,l82f0
	cp #10
	jr nz,l820f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l820f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l821e
	ld a,(ix+#17)
	or a
	jr nz,l8232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l8232
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l825d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l8330
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l825d
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
	call l8308
	ld c,h
	ld a,(ix+#03)
	call l8308
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l829b
	and #0f
	sub (ix+#0a)
	jr nc,l8291
	xor a
.l8291
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l8308
.l829b
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
	jr z,l82b8
	ld b,a
	ld a,c
	ld (l80f3),a
	ld a,b
	sub #40
.l82b8
	ld (l82bf),a
	ld a,(l80e4)
.l82bf equ $ + 1
	bit 0,a
	ld (l80e4),a
	ret
.l82c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l84e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l820f
.l82e0
	inc hl
	ld a,(hl)
	ld (l80df),a
	jp l820f
.l82e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l820f
.l82f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l8111),a
	inc hl
	ld a,(hl)
	ld (l8102),a
	jp l820f
.l8308
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
.l8329 equ $ + 3
.l8328 equ $ + 2
.l8327 equ $ + 1
.l8326
	db #ff,#ff,#ff,#ff
.l832a
	dw l8606,l8612,l861e
.l8330
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
.l83fe
	db #00,#00,#00,#01,#08,#00,#00,#00
.l840c equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l841a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l8428 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8436
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l8444 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l8452 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l8466
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #06,#85,#46,#85,#66,#85,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #86,#85,#c6,#85,#66,#85,#18,#07
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
	db #00,#7f,#00,#7f,#00,#7f,#00,#00
.l84e6
	db #00,#7f,#00,#7f,#00,#7f,#00,#7f
	db #00,#7f,#00,#7f,#e6,#85,#00,#7f
	db #00,#7f,#00,#7f,#00,#7f,#00,#7f
	db #00,#7f,#00,#7f,#00,#7f,#00,#7f
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0c,#0f,#0f,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0b,#0a,#09,#07,#05,#07,#09,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
.l8606
	db #00,#2a,#86,#00,#62,#86,#00,#a1
.l8612 equ $ + 4
	db #86,#80,#06,#86,#00,#a8,#86,#00
	db #b6,#86,#00,#cc,#86,#80,#12,#86
.l861e
	db #00,#d3,#86,#00,#ec,#86,#00,#13
	db #87,#80,#1e,#86,#3a,#02,#d8,#0a
	db #3f,#02,#08,#3e,#82,#bc,#08,#3a
	db #82,#3c,#82,#3a,#82,#38,#82,#37
	db #82,#b8,#08,#3a,#83,#3a,#82,#3f
	db #82,#3e,#82,#bc,#08,#3a,#82,#bc
	db #08,#3a,#82,#38,#82,#37,#82,#b8
	db #08,#3a,#83,#3a,#82,#3a,#82,#3c
	db #82,#b8,#08,#ff,#38,#02,#08,#38
	db #82,#3c,#82,#3c,#82,#3e,#82,#bb
	db #08,#3b,#82,#3b,#82,#3e,#82,#3e
	db #82,#3f,#82,#bc,#08,#3c,#02,#d8
	db #1d,#3e,#02,#d8,#12,#3f,#02,#08
	db #41,#82,#43,#04,#d8,#0f,#43,#02
	db #08,#43,#82,#43,#82,#c1,#08,#41
	db #82,#3c,#02,#f8,#06,#3e,#02,#08
	db #ba,#08,#ff,#00,#01,#3f,#2f,#d8
	db #02,#ff,#33,#04,#08,#2e,#8b,#33
	db #8a,#2e,#8a,#33,#8a,#38,#83,#ff
	db #00,#08,#37,#0b,#08,#30,#85,#37
	db #82,#30,#82,#35,#82,#37,#84,#2e
	db #84,#35,#87,#2e,#83,#ff,#00,#01
	db #33,#2f,#f8,#06,#ff,#33,#04,#a3
	db #16,#2e,#0b,#a3,#1e,#33,#0a,#a3
	db #16,#2e,#0a,#a3,#1e,#33,#0a,#a3
	db #16,#38,#03,#a3,#11,#ff,#00,#08
	db #37,#0b,#a8,#12,#30,#05,#c8,#35
	db #37,#02,#a8,#12,#30,#02,#c8,#35
	db #35,#02,#c8,#28,#37,#04,#a8,#12
	db #2e,#04,#c8,#3c,#35,#07,#a8,#14
	db #2e,#03,#a8,#1e,#ff,#00,#01,#33
	db #2f,#a8,#16,#ff
;
.music_info
	db "Blue Impuls (19xx)(Public Domain)()",0
	db "ST-Module",0

	read "music_end.asm"
