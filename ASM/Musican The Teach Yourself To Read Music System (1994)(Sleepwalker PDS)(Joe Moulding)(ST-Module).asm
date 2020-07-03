; Music of Musican The Teach Yourself To Read Music System (1994)(Sleepwalker PDS)(Joe Moulding)(ST-Module)
; Ripped by Megachur the 03/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MTTYTRMS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9683

	read "music_header.asm"

	jr l9687
	jr l9696
.l9687
	call l96b2
	ld hl,l9ad5
	ld de,l969f
	ld bc,#81ff
	jp #bcd7
.l9696
	ld hl,l9ad5
	call #bcdd
	jp l971e
.l969f
	push ix
	call l973a
	pop ix
	ret
	jp l96b2
	jp l973a
	jp l971e
	db #66,#04
;
.init_music
.l96b2
;
	ld b,#03
	ld ix,l9a81
	ld iy,l99ad
	ld de,#001c
.l96bf
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
	djnz l96bf
	ld a,#05
	ld (l9762),a
	ld a,d
	ld (l9776),a
	inc a
	ld (l975d),a
	ld a,#38
	ld (l9767),a
	ld a,#ff
	ld (l99a9),a
	ld (l99aa),a
	ld (l99ab),a
	ld (l99ac),a
	ld a,#0c
	ld c,d
	call l998b
	ld a,#0d
	ld c,d
	jp l998b
;
.stop_music
.l971e
;
	ld a,#07
	ld c,#3f
	call l998b
	ld a,#08
	ld c,#00
	call l998b
	ld a,#09
	ld c,#00
	call l998b
	ld a,#0a
	ld c,#00
	jp l998b
;
.play_music
.l973a
;
	ld hl,l975d
	dec (hl)
	ld ix,l9a81
	ld bc,l9a8f
	call l97f0
	ld ix,l9a9d
	ld bc,l9aab
	call l97f0
	ld ix,l9ab9
	ld bc,l9ac7
	call l97f0
.l975d equ $ + 1
	ld a,#03
	or a
	jr nz,l9766
.l9762 equ $ + 1
	ld a,#08
	ld (l975d),a
.l9767 equ $ + 1
.l9766
	ld a,#38
	ld hl,l99aa
	cp (hl)
	jr z,l9775
	ld (hl),a
	ld c,a
	ld a,#07
	call l998b
.l9776 equ $ + 1
.l9775
	ld a,#00
	ld hl,l99a9
	cp (hl)
	jr z,l9784
	ld (hl),a
	ld c,a
	ld a,#06
	call l998b
.l9785 equ $ + 1
.l9784
	ld a,#00
	ld hl,l99ab
	cp (hl)
	jr z,l9793
	ld (hl),a
	ld c,a
	ld a,#0b
	call l998b
.l9794 equ $ + 1
.l9793
	ld a,#00
	ld hl,l99ac
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l998b
.l97a1
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l98a1
.l97b0
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
	jp l998b
.l97ca
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l97df
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l97df
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9803
.l97f0
	ld a,(l975d)
	or a
	jp nz,l98a1
	dec (ix+#06)
	jp nz,l98a1
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9803
	ld a,(hl)
	or a
	jr z,l97a1
	cp #fe
	jr z,l97b0
	cp #ff
	jr z,l97ca
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l99b3
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l983f
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l983f
	and #7f
	ld (ix+#06),a
	jr l9892
.l983f
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l9853
	ld (ix+#05),a
	ld (ix+#0a),d
.l9853
	add a
	add a
	add a
	ld e,a
	ld hl,l9ae9
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
	jr z,l9892
	cp #f0
	jp z,l9947
	cp #d0
	jp z,l9963
	cp #b0
	jp z,l996b
	cp #80
	jp nc,l9973
	cp #10
	jr nz,l9892
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l9892
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l98a1
	ld a,(ix+#17)
	or a
	jr nz,l98b5
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l98b5
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l98e0
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l99b3
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l98e0
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
	call l998b
	ld c,h
	ld a,(ix+#03)
	call l998b
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l991e
	and #0f
	sub (ix+#0a)
	jr nc,l9914
	xor a
.l9914
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l998b
.l991e
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
	jr z,l993b
	ld b,a
	ld a,c
	ld (l9776),a
	ld a,b
	sub #40
.l993b
	ld (l9942),a
	ld a,(l9767)
.l9942 equ $ + 1
	set 3,a
	ld (l9767),a
	ret
.l9947
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l9b69
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l9892
.l9963
	inc hl
	ld a,(hl)
	ld (l9762),a
	jp l9892
.l996b
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l9892
.l9973
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9794),a
	inc hl
	ld a,(hl)
	ld (l9785),a
	jp l9892
.l998b
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
.l99ac equ $ + 3
.l99ab equ $ + 2
.l99aa equ $ + 1
.l99a9
	db #00,#38,#00,#00
.l99ad
	dw l9d29,l9d47,l9d65
.l99b3
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
.l9a81 equ $ + 4
	db #00,#00,#00,#00,#c8,#9d,#00,#01
	db #08,#00,#02,#35,#00,#00,#00,#df
.l9a8f equ $ + 2
	db #2c,#9d,#89,#9b,#c9,#9b,#e9,#9b
	db #08,#18,#06,#1a,#b3,#00,#00,#00
.l9a9d
	db #dc,#9e,#02,#03,#09,#10,#1a,#00
.l9aab equ $ + 6
	db #00,#00,#00,#e7,#4a,#9d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9ab9 equ $ + 4
	db #00,#00,#00,#00,#9a,#9f,#04,#05
	db #0a,#10,#1a,#00,#00,#00,#00,#ef
.l9ac7 equ $ + 2
	db #68,#9d,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9ad5
	db #00,#00,#00,#00,#00,#81,#9f,#96
	db #ff,#00,#53,#54,#2d,#4d,#6f,#64
.l9ae9 equ $ + 4
	db #75,#6c,#65,#2e,#89,#9b,#c9,#9b
	db #e9,#9b,#08,#18,#83,#95,#83,#95
	db #83,#95,#00,#00,#09,#9c,#49,#9c
	db #e9,#9b,#10,#10,#83,#95,#83,#95
	db #83,#95,#00,#00,#89,#9b,#69,#9c
	db #e9,#9b,#08,#18,#89,#9c,#c9,#9c
	db #e9,#9b,#00,#00,#83,#95,#83,#95
	db #83,#95,#00,#00,#83,#95,#83,#95
	db #83,#95,#00,#00,#83,#95,#83,#95
	db #83,#95,#00,#00,#83,#95,#83,#d4
	db #83,#d4,#00,#00,#83,#d4,#83,#d4
	db #83,#d4,#00,#00,#83,#d4,#83,#d4
	db #83,#d4,#00,#00,#83,#d4,#83,#d4
	db #83,#d4,#00,#00,#83,#d4,#83,#d4
	db #83,#d4,#00,#00,#83,#d4,#83,#d4
	db #83,#d4,#00,#00,#83,#d4,#83,#d4
.l9b69 equ $ + 4
	db #83,#d4,#00,#00,#e9,#9c,#09,#9d
	db #83,#d4,#83,#d4,#83,#d4,#83,#d4
	db #83,#d4,#83,#d4,#83,#d4,#83,#d4
	db #83,#d4,#83,#d4,#83,#d4,#83,#d4
	db #83,#d4,#83,#d4,#01,#00,#00,#00
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
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#8b,#89,#88,#88,#87
	db #87,#86,#85,#84,#83,#82,#81,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0c,#0c,#0d,#0d
	db #0e,#0e,#0d,#0d,#0e,#0e,#0f,#0f
	db #0e,#0e,#0d,#0d,#0e,#0e,#0f,#0f
	db #0e,#0e,#0d,#0d,#0e,#0e,#0f,#0f
	db #0e,#0e,#0d,#0d,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#03,#07,#00
	db #03,#07,#00,#03,#07,#00,#03,#07
	db #00,#03,#07,#00,#03,#07,#00,#03
	db #07,#00,#03,#07,#00,#03,#07,#00
	db #03,#07,#00,#03,#00,#04,#07,#00
	db #04,#07,#00,#04,#07,#00,#04,#07
	db #00,#04,#07,#00,#04,#07,#00,#04
	db #07,#00,#04,#07,#00,#04,#07,#00
.l9d29 equ $ + 4
	db #04,#07,#00,#04,#00,#9d,#9d,#00
	db #e1,#9d,#00,#2b,#9e,#00,#72,#9e
	db #00,#72,#9e,#00,#8c,#9e,#00,#8c
	db #9e,#00,#8c,#9e,#00,#8c,#9e,#80
.l9d47 equ $ + 2
	db #32,#9d,#00,#da,#9e,#00,#dd,#9e
	db #00,#dd,#9e,#00,#07,#9f,#00,#07
	db #9f,#00,#4e,#9f,#00,#4e,#9f,#00
	db #07,#9f,#00,#07,#9f,#80,#50,#9d
.l9d65
	db #00,#98,#9f,#00,#9b,#9f,#00,#c5
	db #9f,#00,#c5,#9f,#00,#c5,#9f,#00
	db #c5,#9f,#00,#c5,#9f,#00,#ef,#9f
	db #00,#ef,#9f,#80,#6e,#9d,#37,#04
	db #d2,#05,#39,#04,#02,#3a,#84,#3e
	db #82,#3a,#82,#3e,#90,#3f,#84,#3e
	db #84,#3c,#86,#37,#82,#39,#90,#ff
	db #3e,#02,#d0,#08,#43,#02,#00,#46
	db #82,#3e,#82,#43,#82,#46,#82,#3e
	db #82,#43,#82,#3e,#82,#41,#82,#46
	db #82,#3e,#82,#41,#82,#46,#82,#3e
	db #82,#41,#82,#3f,#82,#43,#82,#46
	db #82,#3f,#82,#43,#82,#46,#82,#3f
	db #82,#43,#82,#41,#82,#45,#82,#48
	db #82,#41,#82,#45,#82,#48,#82,#41
	db #82,#45,#82,#ff,#3e,#02,#d0,#08
	db #43,#02,#00,#46,#82,#3e,#82,#43
	db #82,#46,#82,#3e,#82,#43,#82,#3e
	db #82,#41,#82,#46,#82,#3e,#82,#41
	db #82,#46,#82,#3e,#82,#41,#82,#3f
	db #02,#d0,#07,#43,#02,#00,#46,#82
	db #3f,#82,#43,#82,#46,#82,#3f,#82
	db #43,#82,#41,#82,#45,#82,#48,#82
	db #41,#82,#45,#82,#48,#82,#41,#02
	db #d0,#07,#45,#02,#00,#ff,#3e,#02
	db #d0,#06,#43,#02,#00,#46,#82,#3e
	db #82,#43,#82,#46,#82,#3e,#82,#43
	db #82,#3e,#82,#41,#82,#46,#82,#3e
	db #82,#41,#82,#46,#82,#3e,#82,#41
	db #82,#3f,#02,#d0,#05,#43,#02,#00
	db #46,#82,#3f,#82,#43,#82,#46,#82
	db #3f,#82,#43,#82,#41,#82,#45,#82
	db #48,#82,#41,#82,#45,#82,#48,#82
	db #41,#82,#45,#82,#ff,#37,#04,#d2
	db #05,#39,#04,#02,#3a,#84,#3e,#82
	db #3a,#82,#3e,#90,#3f,#84,#3e,#84
	db #3c,#86,#37,#82,#39,#90,#ff,#46
	db #02,#d5,#05,#46,#02,#05,#46,#82
	db #4a,#84,#4a,#82,#4a,#82,#46,#82
	db #41,#90,#46,#82,#46,#82,#46,#82
	db #4b,#84,#4b,#82,#4b,#82,#46,#82
	db #41,#90,#ff,#37,#06,#f5,#00,#37
	db #02,#05,#37,#82,#37,#86,#3a,#06
	db #f5,#01,#3a,#02,#05,#3a,#82,#3a
	db #86,#33,#06,#f5,#01,#33,#02,#05
	db #33,#82,#33,#86,#35,#86,#35,#82
	db #35,#82,#35,#86,#ff,#fe,#40,#ff
	db #1f,#06,#05,#1f,#86,#1f,#82,#9f
	db #05,#9a,#05,#22,#86,#22,#86,#22
	db #82,#a2,#05,#9d,#05,#1b,#86,#1b
	db #86,#1b,#82,#9b,#05,#96,#05,#1d
	db #86,#1d,#86,#1d,#82,#9d,#05,#98
	db #05,#ff,#3e,#02,#b0,#01,#43,#02
	db #00,#46,#82,#3e,#82,#43,#82,#46
	db #82,#3e,#82,#43,#82,#3e,#82,#41
	db #82,#46,#82,#3e,#82,#41,#82,#46
	db #82,#3e,#82,#41,#82,#3f,#02,#d0
	db #05,#43,#02,#00,#46,#82,#3f,#82
	db #43,#82,#46,#82,#3f,#82,#43,#82
	db #41,#82,#45,#82,#48,#82,#41,#82
	db #45,#82,#48,#82,#41,#82,#45,#82
	db #ff,#3e,#02,#b0,#01,#43,#02,#00
	db #46,#82,#3e,#82,#43,#82,#46,#82
	db #3e,#82,#43,#82,#3e,#82,#41,#82
	db #46,#82,#3e,#82,#41,#82,#46,#82
	db #3e,#82,#41,#82,#3f,#02,#d0,#05
	db #43,#02,#00,#46,#82,#3f,#82,#43
	db #82,#46,#82,#3f,#82,#43,#82,#41
	db #82,#45,#82,#48,#82,#41,#82,#45
	db #82,#48,#82,#41,#82,#45,#82,#ff
	db #00,#40,#ff,#fe,#40,#ff,#2b,#06
	db #05,#2b,#86,#2b,#82,#ab,#05,#a6
	db #05,#2e,#86,#2e,#86,#2e,#82,#ae
	db #05,#a9,#05,#27,#86,#27,#86,#27
	db #82,#a7,#05,#a2,#05,#29,#86,#29
	db #86,#29,#82,#a9,#05,#a4,#05,#ff
	db #2b,#06,#05,#2b,#86,#2b,#82,#ab
	db #05,#a6,#05,#2e,#86,#2e,#86,#2e
	db #82,#ae,#05,#a9,#05,#27,#86,#27
	db #86,#27,#82,#a7,#05,#a2,#05,#29
	db #86,#29,#86,#29,#82,#a9,#05,#a4
	db #05,#ff,#2b,#10,#d4,#05,#2e,#10
	db #04,#27,#90,#29,#90,#ff
;
.music_info
	db "Musican The Teach Yourself To Read Music System (1994)(Sleepwalker PDS)(Joe Moulding)",0
	db "ST-Module",0

	read "music_end.asm"
