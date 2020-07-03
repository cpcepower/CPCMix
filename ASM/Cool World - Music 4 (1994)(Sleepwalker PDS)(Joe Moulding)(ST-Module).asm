; Music of Cool World - Music 4 (1994)(Sleepwalker PDS)(Joe Moulding)(ST-Module)
; Ripped by Megachur the 03/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COOLWOM4.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9c57

	read "music_header.asm"

	jr l9c5b
	jr l9c6a
.l9c5b
	call l9c86
	ld hl,la0a9
	ld de,l9c73
	ld bc,#81ff
	jp #bcd7
.l9c6a
	ld hl,la0a9
	call #bcdd
	jp l9cf2
.l9c73
	push ix
	call l9d0e
	pop ix
	ret
	jp l9c86
	jp l9d0e
	jp l9cf2
	db #66,#04
;
.init_music
.l9c86
;
	ld b,#03
	ld ix,la055
	ld iy,l9f81
	ld de,#001c
.l9c93
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
	djnz l9c93
	ld a,#06
	ld (l9d36),a
	ld a,d
	ld (l9d4a),a
	inc a
	ld (l9d31),a
	ld a,#38
	ld (l9d3b),a
	ld a,#ff
	ld (l9f7d),a
	ld (l9f7e),a
	ld (l9f7f),a
	ld (l9f80),a
	ld a,#0c
	ld c,d
	call l9f5f
	ld a,#0d
	ld c,d
	jp l9f5f
;
.stop_music
.l9cf2
;
	ld a,#07
	ld c,#3f
	call l9f5f
	ld a,#08
	ld c,#00
	call l9f5f
	ld a,#09
	ld c,#00
	call l9f5f
	ld a,#0a
	ld c,#00
	jp l9f5f
;
.play_music
.l9d0e
;
	ld hl,l9d31
	dec (hl)
	ld ix,la055
	ld bc,la063
	call l9dc4
	ld ix,la071
	ld bc,la07f
	call l9dc4
	ld ix,la08d
	ld bc,la09b
	call l9dc4
.l9d31 equ $ + 1
	ld a,#04
	or a
	jr nz,l9d3a
.l9d36 equ $ + 1
	ld a,#06
	ld (l9d31),a
.l9d3b equ $ + 1
.l9d3a
	ld a,#38
	ld hl,l9f7e
	cp (hl)
	jr z,l9d49
	ld (hl),a
	ld c,a
	ld a,#07
	call l9f5f
.l9d4a equ $ + 1
.l9d49
	ld a,#00
	ld hl,l9f7d
	cp (hl)
	jr z,l9d58
	ld (hl),a
	ld c,a
	ld a,#06
	call l9f5f
.l9d59 equ $ + 1
.l9d58
	ld a,#00
	ld hl,l9f7f
	cp (hl)
	jr z,l9d67
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9f5f
.l9d68 equ $ + 1
.l9d67
	ld a,#00
	ld hl,l9f80
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9f5f
.l9d75
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l9e75
.l9d84
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
	jp l9f5f
.l9d9e
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l9db3
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l9db3
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9dd7
.l9dc4
	ld a,(l9d31)
	or a
	jp nz,l9e75
	dec (ix+#06)
	jp nz,l9e75
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9dd7
	ld a,(hl)
	or a
	jr z,l9d75
	cp #fe
	jr z,l9d84
	cp #ff
	jr z,l9d9e
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9f87
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l9e13
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l9e13
	and #7f
	ld (ix+#06),a
	jr l9e66
.l9e13
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l9e27
	ld (ix+#05),a
	ld (ix+#0a),d
.l9e27
	add a
	add a
	add a
	ld e,a
	ld hl,la0bd
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
	jr z,l9e66
	cp #f0
	jp z,l9f1b
	cp #d0
	jp z,l9f37
	cp #b0
	jp z,l9f3f
	cp #80
	jp nc,l9f47
	cp #10
	jr nz,l9e66
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l9e66
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l9e75
	ld a,(ix+#17)
	or a
	jr nz,l9e89
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9e89
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l9eb4
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9f87
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l9eb4
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
	call l9f5f
	ld c,h
	ld a,(ix+#03)
	call l9f5f
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9ef2
	and #0f
	sub (ix+#0a)
	jr nc,l9ee8
	xor a
.l9ee8
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9f5f
.l9ef2
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
	jr z,l9f0f
	ld b,a
	ld a,c
	ld (l9d4a),a
	ld a,b
	sub #40
.l9f0f
	ld (l9f16),a
	ld a,(l9d3b)
.l9f16 equ $ + 1
	set 4,a
	ld (l9d3b),a
	ret
.l9f1b
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,la13d
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l9e66
.l9f37
	inc hl
	ld a,(hl)
	ld (l9d36),a
	jp l9e66
.l9f3f
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l9e66
.l9f47
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9d68),a
	inc hl
	ld a,(hl)
	ld (l9d59),a
	jp l9e66
.l9f5f
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
.l9f80 equ $ + 3
.l9f7f equ $ + 2
.l9f7e equ $ + 1
.l9f7d
	db #00,#38,#00,#00
.l9f81
	db #7d,#a3,#9b,#a3,#b9,#a3
.l9f87
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
.la055 equ $ + 4
	db #00,#00,#00,#00,#e6,#a3,#00,#01
	db #08,#04,#02,#16,#00,#00,#00,#df
.la063 equ $ + 2
	db #80,#a3,#dd,#a1,#1d,#a2,#3d,#a2
	db #08,#18,#1b,#05,#31,#04,#00,#00
.la071
	db #39,#a4,#02,#03,#09,#07,#04,#34
.la07f equ $ + 6
	db #00,#00,#00,#e7,#9e,#a3,#5d,#a2
	db #9d,#a2,#bd,#a2,#08,#14,#03,#1d
.la08d equ $ + 4
	db #be,#00,#00,#00,#ee,#a4,#04,#05
	db #0a,#10,#1c,#00,#00,#00,#00,#ef
.la09b equ $ + 2
	db #bc,#a3,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la0a9
	db #00,#00,#00,#00,#00,#81,#73,#9c
	db #ff,#00,#53,#54,#2d,#4d,#6f,#64
.la0bd equ $ + 4
	db #75,#6c,#65,#2e,#5d,#a1,#9d,#a1
	db #bd,#a1,#00,#00,#57,#9b,#57,#9b
	db #57,#9b,#00,#00,#57,#9b,#57,#9b
	db #57,#9b,#00,#00,#57,#9b,#57,#9b
	db #57,#9b,#00,#00,#dd,#a1,#1d,#a2
	db #3d,#a2,#08,#18,#57,#9b,#57,#9b
	db #57,#9b,#00,#00,#57,#9b,#57,#9b
	db #57,#9b,#00,#00,#5d,#a2,#9d,#a2
	db #bd,#a2,#08,#14,#57,#9b,#57,#9b
	db #57,#9b,#00,#00,#57,#9b,#57,#da
	db #57,#da,#00,#00,#dd,#a2,#1d,#a3
	db #3d,#a2,#08,#18,#dd,#a1,#3d,#a3
	db #5d,#a3,#00,#00,#57,#da,#57,#da
	db #57,#da,#00,#00,#57,#da,#57,#da
	db #57,#da,#00,#00,#57,#da,#57,#da
	db #57,#da,#00,#00,#57,#da,#57,#da
.la13d equ $ + 4
	db #57,#da,#00,#00,#57,#da,#57,#da
	db #57,#da,#57,#da,#57,#da,#57,#da
	db #57,#da,#57,#da,#57,#da,#57,#da
	db #57,#da,#57,#da,#57,#da,#57,#da
	db #57,#da,#57,#da,#00,#00,#30,#00
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
	db #00,#00,#00,#00,#04,#06,#07,#09
	db #0c,#11,#17,#1d,#15,#10,#0c,#09
	db #06,#05,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#0e,#0e,#0d
	db #0c,#0b,#0a,#09,#09,#09,#0a,#0a
	db #0a,#09,#09,#09,#0a,#0a,#0a,#09
	db #09,#09,#0a,#0a,#0a,#09,#09,#09
	db #0a,#0a,#0a,#09,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#0d,#0c,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#00,#80,#00,#00
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
	db #00,#00,#00,#00,#0b,#0b,#0b,#0a
	db #0a,#0a,#0b,#0b,#0b,#0c,#0c,#0c
	db #0b,#0b,#0b,#0a,#0a,#0a,#0b,#0b
	db #0b,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#0b,#0b,#0f,#00,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#06,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#d7,#a3,#00
	db #d7,#a3,#00,#d7,#a3,#00,#d7,#a3
	db #00,#f1,#a3,#00,#f1,#a3,#00,#0b
	db #a4,#00,#19,#a4,#00,#21,#a4,#80
	db #7d,#a3,#00,#24,#a4,#00,#24,#a4
	db #00,#24,#a4,#00,#24,#a4,#00,#40
	db #a4,#00,#40,#a4,#00,#58,#a4,#00
	db #7a,#a4,#00,#9c,#a4,#80,#9b,#a3
	db #00,#ec,#a4,#00,#ec,#a4,#00,#c8
	db #a4,#00,#c8,#a4,#00,#ef,#a4,#00
	db #ef,#a4,#00,#f9,#a4,#00,#07,#a5
	db #00,#0f,#a5,#80,#b9,#a3,#22,#06
	db #04,#2e,#86,#2e,#84,#1f,#86,#2b
	db #86,#2b,#84,#20,#86,#2c,#86,#2c
	db #84,#1d,#86,#29,#86,#29,#84,#ff
	db #22,#06,#04,#2e,#86,#2e,#84,#25
	db #86,#31,#86,#31,#84,#20,#86,#2c
	db #86,#2c,#84,#1d,#86,#29,#86,#29
	db #84,#ff,#3a,#18,#0a,#41,#84,#3c
	db #84,#3d,#98,#41,#84,#3c,#84,#ff
	db #38,#20,#0a,#3d,#90,#3f,#90,#ff
	db #fe,#40,#ff,#3a,#04,#07,#3a,#84
	db #3a,#84,#39,#82,#3a,#86,#3a,#84
	db #3a,#84,#3c,#84,#3e,#84,#3e,#84
	db #3e,#84,#3f,#82,#3c,#92,#ff,#3a
	db #04,#07,#3a,#84,#3a,#84,#3c,#82
	db #3a,#8a,#35,#88,#38,#82,#3a,#82
	db #3c,#88,#3a,#82,#35,#92,#ff,#3a
	db #04,#04,#41,#84,#41,#84,#41,#84
	db #3a,#84,#41,#84,#41,#84,#41,#84
	db #3d,#84,#44,#84,#44,#84,#44,#84
	db #3d,#84,#44,#84,#44,#84,#44,#84
	db #ff,#38,#04,#04,#3f,#84,#3f,#84
	db #3f,#84,#38,#84,#3f,#84,#3f,#84
	db #3f,#84,#3d,#84,#44,#84,#44,#84
	db #44,#84,#3f,#84,#46,#84,#46,#84
	db #46,#84,#ff,#3a,#02,#04,#35,#82
	db #36,#82,#33,#82,#35,#82,#31,#82
	db #33,#82,#30,#82,#2e,#90,#2e,#82
	db #29,#82,#2a,#82,#27,#82,#29,#82
	db #25,#82,#27,#82,#24,#82,#2e,#88
	db #2e,#84,#2e,#82,#2e,#82,#ff,#37
	db #06,#bb,#03,#37,#02,#0b,#37,#84
	db #37,#84,#37,#86,#37,#82,#37,#84
	db #37,#84,#37,#86,#37,#82,#37,#84
	db #37,#84,#37,#86,#37,#82,#37,#84
	db #37,#84,#ff,#fe,#40,#ff,#46,#10
	db #0a,#41,#90,#48,#90,#45,#90,#ff
	db #46,#18,#0a,#4d,#84,#48,#84,#49
	db #98,#4d,#84,#48,#84,#ff,#44,#20
	db #0a,#49,#90,#4b,#90,#ff,#2e,#02
	db #04,#29,#82,#2a,#82,#27,#82,#29
	db #82,#25,#82,#27,#82,#24,#82,#22
	db #90,#22,#82,#1d,#82,#1e,#82,#1b
	db #82,#1d,#82,#19,#82,#1b,#82,#18
	db #82,#22,#88,#22,#84,#22,#82,#22
	db #82,#ff
;
.music_info
	db "Cool World - Music 4 (1994)(Sleepwalker PDS)(Joe Moulding)",0
	db "ST-Module",0

	read "music_end.asm"
