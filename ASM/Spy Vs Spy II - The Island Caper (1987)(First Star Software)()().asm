; Music of Spy Vs Spy II - The Island Caper (1987)(First Star Software)()()
; Ripped by Megachur the 08/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SVSIITIC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #1e00

	read "music_header.asm"

	jp l1e0a	; init 
	jp l20de	; stop
	jp l1e32	; play
.l1e09
	db #01
;
.real_init_music
.l1e0a
;
	ld a,#38
	ld (l221d),a
	ld c,a
	ld a,#07
	call l1ff2
	ld a,#0d
	ld c,#09
	call l1ff2
	ld a,#0c
	ld c,#03
	call l1ff2
	ld ix,l221e
	call l1e50
	ld ix,l2232
	call l1e50
	ret
;
.play_music
.l1e32
;
	ld ix,l221e
	xor a
	ld (l221c),a
	call l1eba
	call l2062
	ld ix,l2232
	ld a,#01
	ld (l221c),a
	call l1eba
	call l206a
	ret
.l1e50
	call l1f50
	ld a,#01
	ld (ix+#00),a
	xor a
	ld (ix+#0c),a
.l1e5c
	xor a
	ld (ix+#02),a
	ld a,#fd
	ld (ix+#0e),a
.l1e65
	ld a,(ix+#0e)
	ld l,(ix+#10)
	ld h,(ix+#11)
	push af
	call l205d
	pop af
	push hl
	pop iy
	dec (ix+#02)
	jp p,l1ea3
	inc a
	inc a
	inc a
	ld (ix+#0e),a
	cp (ix+#0f)
	jr z,l1e89
	jr nc,l1e5c
.l1e89
	ld l,(ix+#10)
	ld h,(ix+#11)
	call l205d
	push hl
	pop iy
	ld a,(iy+#00)
	srl a
	srl a
	srl a
	srl a
	ld (ix+#02),a
.l1ea3
	ld a,(iy+#00)
	and #0f
	ld (ix+#03),a
	ld a,(iy+#01)
	sub #03
	ld (ix+#04),a
	ld a,(iy+#02)
	ld (ix+#05),a
	ret
.l1eba
	dec (ix+#00)
	jp z,l1ec1
	ret
.l1ec1
	ld h,(ix+#13)
	ld l,(ix+#12)
	ld a,(ix+#04)
	call l205d
	push hl
	pop iy
	ld a,(ix+#0c)
	or a
	jr z,l1ef9
	dec (ix+#0c)
	ld a,(iy+#02)
	ld d,a
	ld (l2218),a
	or a
	jp m,l1ee7
	call l1f50
.l1ee7
	ld a,(l2218)
	and #07
	jr z,l1ef9
	ld hl,l20f3
	call l205d
	ld a,(hl)
	ld (ix+#00),a
	ret
.l1ef9
	inc (ix+#0c)
.l1efc
	ld a,(ix+#04)
	inc a
	inc a
	inc a
	ld (ix+#04),a
	cp (ix+#05)
	jr c,l1f11
	jr z,l1f11
	call l1e65
	jr l1efc
.l1f11
	ld h,(ix+#13)
	ld l,(ix+#12)
	ld a,(ix+#04)
	call l205d
	push hl
	pop iy
	ld a,(iy+#01)
	and #07
	ld hl,l20f4
	call l205d
	ld a,(hl)
	ld (ix+#00),a
	ld a,(iy+#01)
	and #0f
	cp #08
	ret nc
	call l1f50
	ld a,(iy+#01)
	and #f0
	ret z
	call l1f55
	ld a,(iy+#00)
	call l201a
	ld (ix+#07),e
	ld (ix+#08),d
	ret
.l1f50
	xor a
	ld (ix+#0d),a
	ret
.l1f55
	ld a,(l221c)
	or a
	jr nz,l1fa7
	ld a,(iy+#01)
	and #70
	cp #50
	jr z,l1f86
	ld a,(l221d)
	and #36
	or #08
	ld (l221d),a
	ld c,a
	ld a,#07
	call l1ff2
	ld (ix+#0d),#10
	ld a,(iy+#01)
	and #70
	cp #40
	jr z,l1fd1
	ld (ix+#0d),#0f
	ret
.l1f86
	ld a,(l221d)
	and #36
	or #01
	ld (l221d),a
	ld c,a
	ld a,#07
	call l1ff2
.l1f96
	ld (ix+#0d),#10
	ld a,(iy+#00)
	and #1f
	ld c,a
	ld a,#06
	call l1ff2
	jr l1fd1
.l1fa7
	ld a,(iy+#01)
	and #70
	cp #50
	jr z,l1fe0
	ld a,(l221d)
	and #2d
	or #10
	ld (l221d),a
	ld c,a
	ld a,#07
	call l1ff2
	ld (ix+#0d),#10
	ld a,(iy+#01)
	and #70
	cp #40
	jr z,l1fd1
	ld (ix+#0d),#0c
.l1fd1
	ld a,#0b
	ld c,#03
	call l1ff2
	ld a,#0d
	ld c,#03
	call l1ff2
	ret
.l1fe0
	ld a,(l221d)
	and #2d
	or #02
	ld (l221d),a
	ld c,a
	ld a,#07
	call l1ff2
	jr l1f96
.l1ff2
	di
	ld b,a
	ld a,(l1e09)
	or a
	jr z,l2018
	ld a,b
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
.l2018
	ei
	ret
.l201a
	ld c,a
	ld a,(ix+#03)
	ld d,a
	ld a,c
	call l2089
	push af
	and #0f
	add a
	ld hl,l2045
	call l205d
	ld e,(hl)
	inc hl
	ld d,(hl)
	pop af
	srl a
	srl a
	srl a
	srl a
	and #07
	jr z,l2044
.l203d
	srl d
	rr e
	dec a
	jr nz,l203d
.l2044
	ret
.l2045
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
.l205d
	add l
	ld l,a
	ret nc
	inc h
	ret
.l2062
	ld d,#08
	ld e,#00
	call l2072
	ret
.l206a
	ld d,#09
	ld e,#02
	call l2072
	ret
.l2072
	ld a,d
	ld c,(ix+#0d)
	call l1ff2
	ld a,e
	ld c,(ix+#07)
	call l1ff2
	ld a,e
	inc a
	ld c,(ix+#08)
	call l1ff2
	ret
.l2089
	ld (l221b),a
	and #0f
	ld (l2218),a
	ld e,a
	ld a,d
	cp #08
	jr nc,l20d7
	and #07
	add e
	cp #0c
	jr c,l20db
	add #04
	and #0f
	scf
.l20a3
	ld (l2218),a
	ld e,a
	ld a,(l221b)
	jr nc,l20ae
	add #10
.l20ae
	and #70
	or e
	ld e,a
	ld (l2218),a
	ret
.l20b6
	xor #ff
	add #01
	add e
	jr c,l20cc
	sub #04
	and #0f
	ld (l2218),a
	ld e,a
	ld a,(l221b)
	sub #10
	jr l20ae
.l20cc
	and #0f
	ld (l2218),a
	ld e,a
	ld a,(l221b)
	jr l20ae
.l20d7
	and #07
	jr l20b6
.l20db
	or a
	jr l20a3
;
.stop_music
.l20de
;
	ld a,#08
	ld c,#00
	call l1ff2
	ld a,#09
	ld c,#00
	call l1ff2
	ld a,#0a
	ld c,#00
	call l1ff2
.l20f3
	ret
.l20f4
	db #09,#12,#1b,#24,#36,#48,#6c,#90
	db #40,#02,#00,#00,#10,#44,#65,#80
	db #8a,#02,#00,#00,#10,#44,#65,#80
	db #c9,#01,#00,#00,#10,#44,#65,#c4
	db #06,#00,#00,#00,#10,#05,#04,#00
	db #00,#00,#00,#00,#80,#02,#00,#80
	db #f0,#42,#42,#30,#45,#5a,#70,#33
	db #42,#10,#1e,#30,#10,#00,#1b,#40
	db #5d,#84,#00,#42,#42,#00,#00,#24
	db #0a,#00,#24,#00,#00,#24,#0a,#00
	db #24,#0c,#00,#24,#0a,#00,#24,#00
	db #00,#24,#0c,#27,#36,#0a,#27,#36
	db #5a,#12,#00,#d7,#21,#05,#57,#30
	db #70,#da,#30,#00,#d7,#30,#00,#60
	db #30,#78,#d7,#30,#78,#da,#32,#00
	db #d7,#21,#03,#d7,#05,#78,#5a,#13
	db #80,#da,#3d,#f8,#da,#39,#00,#e2
	db #31,#00,#e0,#32,#78,#d9,#22,#38
	db #f0,#05,#02,#e0,#40,#00,#e0,#40
	db #79,#e0,#40,#79,#60,#40,#01,#e2
	db #40,#00,#00,#05,#78,#e3,#30,#3a
	db #e2,#30,#10,#00,#04,#04,#5a,#31
	db #78,#69,#30,#7a,#67,#30,#00,#80
	db #04,#04,#55,#31,#78,#47,#40,#78
	db #47,#40,#00,#52,#40,#00,#57,#40
	db #78,#47,#40,#78,#47,#40,#00,#00
	db #01,#00,#47,#40,#78,#47,#40,#78
	db #52,#40,#00,#57,#40,#00,#47,#40
	db #78,#c7,#40,#78,#00,#04,#44,#37
	db #41,#28,#cb,#50,#00,#42,#40,#08
	db #c7,#40,#78,#d1,#50,#78,#51,#00
	db #00,#b7,#41,#00,#b7,#40,#78,#cb
	db #50,#78,#c2,#40,#00,#c7,#41,#00
	db #cb,#50,#78,#d1,#50,#78,#b7,#41
	db #00,#cb,#50,#40,#c2,#40,#78,#c7
	db #40,#78,#d1,#50,#00,#00,#01,#78
.l221b equ $ + 7
.l2218 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l221e equ $ + 2
.l221d equ $ + 1
.l221c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l2232 equ $ + 5
	db #12,#24,#21,#54,#21,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#18,#39,#21,#db
	db #21,#00,#00
;
; play frequency > 50hz !!!
;
; #958d
;	ld a,#01
;	ld (#1e09),a
;	call #1e00	; init music
;
.init_music		; added by Megachur
;
	ld a,#01
	ld (l1e09),a
	jp real_init_music
;
.music_info
	db "Spy Vs Spy II - The Island Caper (1987)(First Star Software)()",0
	db "",0

	read "music_end.asm"
