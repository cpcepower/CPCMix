; Music of Cool World - Music 7 (1994)(Sleepwalker PDS)(Joe Moulding)(ST-Module)
; Ripped by Megachur the 03/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COOLWOM7.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9ca4

	read "music_header.asm"

	jr l9ca8
	jr l9cb7
.l9ca8
	call l9cd3
	ld hl,la0f6
	ld de,l9cc0
	ld bc,#81ff
	jp #bcd7
.l9cb7
	ld hl,la0f6
	call #bcdd
	jp l9d3f
.l9cc0
	push ix
	call l9d5b
	pop ix
	ret
	jp l9cd3
	jp l9d5b
	jp l9d3f
	db #66,#04
;
.init_music
.l9cd3
;
	ld b,#03
	ld ix,la0a2
	ld iy,l9fce
	ld de,#001c
.l9ce0
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
	djnz l9ce0
	ld a,#06
	ld (l9d83),a
	ld a,d
	ld (l9d97),a
	inc a
	ld (l9d7e),a
	ld a,#38
	ld (l9d88),a
	ld a,#ff
	ld (l9fca),a
	ld (l9fcb),a
	ld (l9fcc),a
	ld (l9fcd),a
	ld a,#0c
	ld c,d
	call l9fac
	ld a,#0d
	ld c,d
	jp l9fac
;
.stop_music
.l9d3f
;
	ld a,#07
	ld c,#3f
	call l9fac
	ld a,#08
	ld c,#00
	call l9fac
	ld a,#09
	ld c,#00
	call l9fac
	ld a,#0a
	ld c,#00
	jp l9fac
;
.play_music
.l9d5b
;
	ld hl,l9d7e
	dec (hl)
	ld ix,la0a2
	ld bc,la0b0
	call l9e11
	ld ix,la0be
	ld bc,la0cc
	call l9e11
	ld ix,la0da
	ld bc,la0e8
	call l9e11
.l9d7e equ $ + 1
	ld a,#00
	or a
	jr nz,l9d87
.l9d83 equ $ + 1
	ld a,#00
	ld (l9d7e),a
.l9d88 equ $ + 1
.l9d87
	ld a,#00
	ld hl,l9fcb
	cp (hl)
	jr z,l9d96
	ld (hl),a
	ld c,a
	ld a,#07
	call l9fac
.l9d97 equ $ + 1
.l9d96
	ld a,#00
	ld hl,l9fca
	cp (hl)
	jr z,l9da5
	ld (hl),a
	ld c,a
	ld a,#06
	call l9fac
.l9da6 equ $ + 1
.l9da5
	ld a,#00
	ld hl,l9fcc
	cp (hl)
	jr z,l9db4
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9fac
.l9db5 equ $ + 1
.l9db4
	ld a,#00
	ld hl,l9fcd
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9fac
.l9dc2
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l9ec2
.l9dd1
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
	jp l9fac
.l9deb
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l9e00
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l9e00
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9e24
.l9e11
	ld a,(l9d7e)
	or a
	jp nz,l9ec2
	dec (ix+#06)
	jp nz,l9ec2
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9e24
	ld a,(hl)
	or a
	jr z,l9dc2
	cp #fe
	jr z,l9dd1
	cp #ff
	jr z,l9deb
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9fd4
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l9e60
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l9e60
	and #7f
	ld (ix+#06),a
	jr l9eb3
.l9e60
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l9e74
	ld (ix+#05),a
	ld (ix+#0a),d
.l9e74
	add a
	add a
	add a
	ld e,a
	ld hl,la10a
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
	jr z,l9eb3
	cp #f0
	jp z,l9f68
	cp #d0
	jp z,l9f84
	cp #b0
	jp z,l9f8c
	cp #80
	jp nc,l9f94
	cp #10
	jr nz,l9eb3
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l9eb3
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l9ec2
	ld a,(ix+#17)
	or a
	jr nz,l9ed6
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9ed6
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l9f01
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9fd4
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l9f01
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
	call l9fac
	ld c,h
	ld a,(ix+#03)
	call l9fac
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9f3f
	and #0f
	sub (ix+#0a)
	jr nc,l9f35
	xor a
.l9f35
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9fac
.l9f3f
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
	jr z,l9f5c
	ld b,a
	ld a,c
	ld (l9d97),a
	ld a,b
	sub #40
.l9f5c
	ld (l9f63),a
	ld a,(l9d88)
.l9f63 equ $ + 1
	bit 0,a
	ld (l9d88),a
	ret
.l9f68
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,la18a
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l9eb3
.l9f84
	inc hl
	ld a,(hl)
	ld (l9d83),a
	jp l9eb3
.l9f8c
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l9eb3
.l9f94
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9db5),a
	inc hl
	ld a,(hl)
	ld (l9da6),a
	jp l9eb3
.l9fac
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
.l9fcd equ $ + 3
.l9fcc equ $ + 2
.l9fcb equ $ + 1
.l9fca
	db #ff,#ff,#ff,#ff
.l9fce
	db #aa,#a3,#cb,#a3,#ec,#a3
.l9fd4
	db #ee,#0e,#18,#0e,#4d,#0d,#8e,#0c
	db #da,#0b,#2f,#0b,#8f,#0a,#f7,#09
	db #68,#09,#e1,#08,#61,#08,#e9,#07
	db #77,#07,#0c,#07,#a7,#06,#47,#06
	db #ed,#05,#98,#05,#47,#05,#fc,#04
	db #b4,#04,#70,#04,#31,#04,#f4,#03
	db #bc,#03,#86,#03,#53,#03,#24,#03
	db #f6,#02,#cc,#02,#a4,#02,#7e,#02
	db #5a,#02,#38,#02,#18,#02,#fa,#01
	db #de,#01,#c3,#01,#aa,#01,#92,#01
	db #7b,#01,#66,#01,#52,#01,#3f,#01
	db #2d,#01,#1c,#01,#0c,#01,#fd,#00
	db #ef,#00,#e1,#00,#d5,#00,#c9,#00
	db #be,#00,#b3,#00,#a9,#00,#9f,#00
	db #96,#00,#8e,#00,#86,#00,#7f,#00
	db #77,#00,#71,#00,#6a,#00,#64,#00
	db #5f,#00,#59,#00,#54,#00,#50,#00
	db #4b,#00,#47,#00,#43,#00,#3f,#00
	db #3c,#00,#38,#00,#35,#00,#32,#00
	db #2f,#00,#2d,#00,#2a,#00,#28,#00
	db #26,#00,#24,#00,#22,#00,#20,#00
	db #1e,#00,#1c,#00,#1b,#00,#19,#00
	db #18,#00,#16,#00,#15,#00,#14,#00
	db #13,#00,#12,#00,#11,#00,#10,#00
	db #0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0a2 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.la0b0 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0be
	db #00,#00,#02,#03,#09,#00,#00,#00
.la0cc equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.la0e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0f6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.la10a equ $ + 4
	db #75,#6c,#65,#2e,#aa,#a1,#ea,#a1
	db #0a,#a2,#00,#00,#a4,#9b,#a4,#9b
	db #a4,#9b,#00,#00,#a4,#9b,#a4,#9b
	db #a4,#9b,#00,#00,#a4,#9b,#a4,#9b
	db #a4,#9b,#00,#00,#a4,#9b,#a4,#9b
	db #a4,#9b,#00,#00,#a4,#9b,#a4,#9b
	db #a4,#9b,#00,#00,#a4,#9b,#a4,#9b
	db #a4,#9b,#00,#00,#2a,#a2,#6a,#a2
	db #8a,#a2,#10,#10,#a4,#9b,#a4,#9b
	db #a4,#9b,#00,#00,#aa,#a2,#ea,#a2
	db #8a,#a2,#00,#00,#48,#7c,#28,#7d
	db #48,#7d,#00,#00,#68,#7d,#a8,#7d
	db #a8,#7c,#00,#00,#c8,#7d,#08,#7e
	db #28,#7e,#00,#00,#0a,#a3,#4a,#a3
	db #6a,#a3,#00,#00,#a1,#4d,#a1,#4d
	db #a1,#4d,#00,#00,#a1,#4d,#a1,#4d
.la18a equ $ + 4
	db #a1,#4d,#00,#00,#a1,#4d,#8a,#a3
	db #a1,#4d,#a1,#4d,#a1,#4d,#a1,#4d
	db #a1,#4d,#a1,#4d,#a1,#4d,#a1,#4d
	db #a1,#4d,#a1,#4d,#a1,#4d,#a1,#4d
	db #a1,#4d,#a1,#4d,#00,#00,#80,#00
	db #40,#01,#a0,#01,#40,#02,#e8,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0d,#0b,#0a
	db #09,#08,#08,#07,#07,#06,#06,#05
	db #05,#05,#04,#04,#04,#03,#03,#03
	db #02,#02,#02,#02,#01,#01,#01,#01
	db #00,#00,#00,#00,#38,#00,#60,#00
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
	db #00,#00,#00,#00,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#40,#a4,#00
	db #40,#a4,#00,#0d,#a4,#00,#0d,#a4
	db #00,#28,#a4,#00,#28,#a4,#00,#28
	db #a4,#00,#28,#a4,#00,#28,#a4,#00
	db #28,#a4,#80,#aa,#a3,#00,#95,#a4
	db #00,#95,#a4,#00,#58,#a4,#00,#58
	db #a4,#00,#7b,#a4,#00,#7b,#a4,#00
	db #7b,#a4,#00,#7b,#a4,#00,#7b,#a4
	db #00,#7b,#a4,#80,#cb,#a3,#00,#38
	db #a5,#00,#38,#a5,#00,#af,#a4,#00
	db #af,#a4,#00,#35,#a5,#00,#35,#a5
	db #00,#f4,#a4,#00,#f4,#a4,#00,#f4
	db #a4,#00,#f4,#a4,#80,#ec,#a3,#2b
	db #03,#07,#2b,#83,#2b,#83,#2b,#83
	db #2e,#84,#2b,#83,#2b,#83,#2e,#83
	db #2e,#83,#29,#82,#29,#82,#ff,#00
	db #20,#ff,#37,#03,#07,#37,#83,#37
	db #83,#37,#83,#3a,#84,#37,#83,#37
	db #83,#3e,#83,#3e,#83,#39,#82,#39
	db #82,#ff,#2b,#03,#07,#2b,#83,#2b
	db #83,#2b,#83,#2e,#84,#2b,#83,#2b
	db #83,#2e,#83,#2e,#83,#29,#82,#29
	db #82,#ff,#37,#03,#f7,#01,#37,#03
	db #07,#37,#83,#37,#83,#3a,#04,#f7
	db #01,#37,#83,#37,#03,#07,#3a,#03
	db #f7,#01,#3a,#03,#07,#35,#82,#35
	db #82,#ff,#00,#20,#ff,#37,#03,#f7
	db #01,#37,#03,#07,#37,#83,#37,#83
	db #3a,#84,#37,#83,#37,#83,#3e,#83
	db #3e,#83,#39,#82,#39,#82,#ff,#37
	db #03,#f7,#01,#37,#03,#07,#37,#83
	db #37,#83,#3a,#84,#37,#83,#37,#83
	db #3a,#83,#3a,#83,#35,#82,#35,#82
	db #ff,#db,#bd,#04,#db,#0d,#db,#0d
	db #db,#0d,#db,#0d,#db,#0d,#db,#0d
	db #db,#0d,#db,#0d,#db,#0d,#db,#0d
	db #db,#0d,#db,#0d,#db,#0d,#db,#0d
	db #db,#0d,#db,#0d,#db,#0d,#db,#0d
	db #db,#0d,#db,#0d,#db,#0d,#db,#0d
	db #db,#0d,#db,#0d,#db,#0d,#db,#0d
	db #db,#0d,#db,#0d,#db,#0d,#db,#0d
	db #db,#0d,#ff,#00,#20,#ff,#c3,#09
	db #c3,#09,#c3,#09,#c3,#09,#c3,#09
	db #c3,#09,#c3,#09,#c3,#09,#c3,#09
	db #c3,#09,#c3,#09,#c3,#09,#c3,#09
	db #c3,#09,#c3,#09,#c3,#09,#c3,#09
	db #c3,#09,#c3,#09,#c3,#09,#c3,#09
	db #c3,#09,#c3,#09,#c3,#09,#c3,#09
	db #c3,#09,#c3,#09,#c3,#09,#c3,#09
	db #c3,#09,#c3,#09,#c3,#09,#ff,#fe
	db #20,#ff,#fe,#20,#ff
;
.music_info
	db "Cool World - Music 7 (1994)(Sleepwalker PDS)(Joe Moulding)",0
	db "ST-Module",0

	read "music_end.asm"
