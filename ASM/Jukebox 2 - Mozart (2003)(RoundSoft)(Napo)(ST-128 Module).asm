; Music of Jukebox 2 - Mozart (2003)(RoundSoft)(Napo)(ST-128 Module)
; Ripped by Megachur the 21/02/2016
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JUKEB2MO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2016
music_adr				equ #5e74

	read "music_header.asm"

	jr l5e78
	jr l5e87
.l5e78
	call l5eab
	ld hl,l5e98
	ld de,l5e90
	ld bc,#81ff
	jp #bcd7
.l5e87
	ld hl,l5e98
	call #bcdd
	jp l5f23
.l5e90
	push ix
	call l5f3f
	pop ix
	ret
.l5e98
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l5eab
	jp l5f3f
	jp l5f23
;
.init_music
.l5eab
;
	xor a
	ld hl,l6456
	call l5f1c
	ld hl,l6484
	call l5f1c
	ld hl,l64b2
	call l5f1c
	ld ix,l6452
	ld iy,l64dc
	ld de,#002e
	ld b,#03
.l5ecb
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l5ecb
	ld hl,l636b
	ld (hl),#1f
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l6367),hl
	ld (l6369),hl
	ld a,#0c
	ld c,d
	call l6347
	ld a,#0d
	ld c,d
	jp l6347
.l5f1c
	ld b,#2a
.l5f1e
	ld (hl),a
	inc hl
	djnz l5f1e
	ret
;
.stop_music
.l5f23
;
	ld a,#07
	ld c,#3f
	call l6347
	ld a,#08
	ld c,#00
	call l6347
	ld a,#09
	ld c,#00
	call l6347
	ld a,#0a
	ld c,#00
	jp l6347
;
.play_music
.l5f3f
;
	ld hl,l636d
	dec (hl)
	ld ix,l6452
	ld bc,l6460
	call l5fe1
	ld ix,l6480
	ld bc,l648e
	call l5fe1
	ld ix,l64ae
	ld bc,l64bc
	call l5fe1
	ld hl,l6366
	ld de,l636d
	ld b,#06
	call l5fbe
	ld b,#07
	call l5fbe
	ld b,#0b
	call l5fbe
	ld b,#0d
	call l5fbe
	ld de,l636d
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6471
	call l5f97
	ld hl,l649f
	call l5f97
	ld hl,l64cd
.l5f97
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l5fac
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l5fac
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l5fbe
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6347
.l5fc9
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6347
.l5fe1
	ld a,(l636d)
	or a
	jp nz,l6099
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l6099
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5fc9
	or a
	jp z,l608e
	ld r,a
	and #7f
	cp #10
	jr c,l6069
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l61e1
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l6042
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l6042
	rrca
	ld c,a
	ld hl,l64e2
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l6061
	ld (ix+#1e),b
.l6061
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l6082
.l6069
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6372
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	ld sp,#3332
	inc (hl)
	dec (hl)
.l6082 equ $ + 1
	ld (hl),#7a
	or a
	jr nz,l6090
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l6090
.l608e
	ld a,(hl)
	inc hl
.l6090
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l6099
	ld a,(ix+#17)
	or a
	jr nz,l60af
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l60af
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l60c5
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l60c5
	ld a,(ix+#0d)
	or a
	jr z,l60d3
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l60f1
.l60d3
	ld a,(ix+#1a)
	or a
	jp z,l60f8
	ld c,a
	cp #03
	jr nz,l60e0
	xor a
.l60e0
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l60f1
	ld a,(ix+#18)
	dec c
	jr z,l60f1
	ld a,(ix+#19)
.l60f1
	add (ix+#07)
	ld b,d
	call l61e1
.l60f8
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l6120
	dec (ix+#1b)
	jr nz,l6120
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l6158
.l6120
	ld a,(ix+#29)
	or a
	jr z,l6158
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l614f
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l6146
	ld (ix+#29),#ff
	jr l614f
.l6146
	cp (ix+#2b)
	jr nz,l614f
	ld (ix+#29),#01
.l614f
	ld b,d
	or a
	jp p,l6155
	dec b
.l6155
	ld c,a
	jr l6163
.l6158
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l6163
	pop hl
	bit 7,(ix+#14)
	jr z,l616c
	ld h,d
	ld l,d
.l616c
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6347
	ld c,h
	ld a,(ix+#02)
	call l6347
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l61bf
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l61ae
	dec (ix+#09)
	jr nz,l61ae
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l61a6
	xor a
	jr l61ab
.l61a6
	cp #10
	jr nz,l61ab
	dec a
.l61ab
	ld (ix+#1e),a
.l61ae
	ld a,b
	sub (ix+#1e)
	jr nc,l61b5
	xor a
.l61b5
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6347
.l61bf
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l636e)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l61dd
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l61dd
	ld (l636e),hl
	ret
.l61e1
	ld hl,l6390
	cp #61
	jr nc,l61eb
	add a
	ld c,a
	add hl,bc
.l61eb
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l61f5
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l631a
	ld (ix+#1e),a
	jp l6082
.l6207
	dec b
.l6208
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6213
	neg
.l6213
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l6082
.l6229
	dec b
	jr l622d
.l622c
	inc b
.l622d
	call l631a
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l6082
.l623c
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l62ff
.l624d
	ld a,(hl)
	inc hl
	or a
	jr z,l626f
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l626f
	ld (ix+#29),a
	jp l6082
.l6275
	dec hl
	ld a,(hl)
	and #0f
	ld (l6371),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6370),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l6082
.l628f
	ld a,(hl)
	or a
	jr z,l62a0
	call l631c
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l6082
.l62a0
	ld hl,#0101
	ld (l636c),hl
	jp l6082
.l62a9
	call l631a
	ld (ix+#1e),a
	jp l6082
.l62b2
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l632b
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l632b
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l6082
.l62d4
	ld a,(hl)
	inc hl
	ld (l636b),a
	jp l6082
.l62dc
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l6082
.l62fb
	call l631a
	add a
.l62ff
	ld b,#00
	ld c,a
	push hl
	ld hl,l6562
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l6082
.l631a
	ld a,(hl)
	inc hl
.l631c
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l632b
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l64e2
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l6347
	di
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
	ei
.l6366
	ret
.l636e equ $ + 7
.l636d equ $ + 6
.l636c equ $ + 5
.l636b equ $ + 4
.l6369 equ $ + 2
.l6367
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6371 equ $ + 2
.l6370 equ $ + 1
	db #38,#00,#00
.l6372
	dw l61f5,l6208,l6207,l622c
	dw l6229,l623c,l624d,l6275
	dw l628f,l6275,l62a9,l62b2
	dw l62d4,l62dc,l62fb
.l6390
	dw #0000,#0e18,#0d4d,#0c8e
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
.l6452 equ $ + 2
	dw #000f,#0008
.l6456 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l6460 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6471 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6480 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l6484
	db #00,#00,#00,#00,#00,#00,#00,#00
.l648e equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l649f equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l64b2 equ $ + 6
.l64ae equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l64bc
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l64cd equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l64e2 equ $ + 6
.l64dc
	db #02,#66,#08,#66,#0e,#66,#82,#65
	db #c2,#65,#e2,#65,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
.l6562 equ $ + 6
	db #74,#1e,#74,#1e,#00,#00,#74,#1e
	db #74,#1e,#74,#1e,#74,#1e,#74,#1e
	db #74,#1e,#74,#1e,#74,#1e,#74,#1e
	db #74,#1e,#74,#1e,#74,#1e,#74,#1e
	db #74,#1e,#74,#1e,#74,#1e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0e,#0e,#0d,#0b,#08,#05
	db #03,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#14
	db #66,#80,#02,#66,#00,#8b,#66,#80
	db #08,#66,#00,#04,#67,#80,#0e,#66
	db #d8,#0d,#1f,#d8,#00,#df,#00,#df
	db #00,#e1,#00,#e1,#00,#5f,#00,#02
	db #dd,#00,#dd,#00,#dc,#00,#dc,#00
	db #da,#00,#da,#00,#58,#00,#02,#df
	db #00,#df,#00,#dd,#00,#dd,#00,#dc
	db #00,#dc,#00,#dc,#00,#da,#00,#df
	db #00,#df,#00,#dd,#00,#dd,#00,#dc
	db #00,#dc,#00,#dc,#00,#da,#00,#d8
	db #00,#d8,#00,#df,#00,#df,#00,#e1
	db #00,#e1,#00,#5f,#00,#02,#dd,#00
	db #dd,#00,#dc,#00,#dc,#00,#da,#00
	db #df,#00,#58,#00,#02,#40,#0d,#06
	db #02,#c0,#00,#c0,#00,#40,#00,#02
	db #c0,#00,#c0,#00,#40,#00,#02,#c0
	db #00,#c0,#00,#40,#00,#04,#ff,#a8
	db #00,#b4,#00,#b8,#00,#b4,#00,#b9
	db #00,#b4,#00,#b8,#00,#b4,#00,#b6
	db #00,#b3,#00,#b4,#00,#b1,#00,#ad
	db #00,#af,#00,#a8,#00,#b4,#00,#b8
	db #00,#af,#00,#b6,#00,#af,#00,#b4
	db #00,#af,#00,#b3,#00,#af,#00,#b8
	db #00,#af,#00,#b6,#00,#af,#00,#b4
	db #00,#af,#00,#b3,#00,#af,#00,#a8
	db #00,#b4,#00,#b8,#00,#b4,#00,#b9
	db #00,#b4,#00,#b8,#00,#b4,#00,#b6
	db #00,#b3,#00,#b4,#00,#b1,#00,#ad
	db #00,#af,#00,#28,#00,#02,#28,#00
	db #02,#b4,#00,#b4,#00,#28,#00,#02
	db #b4,#00,#b4,#00,#28,#00,#02,#b4
	db #00,#b4,#00,#28,#0d,#1f,#04,#ff
	db #b8,#00,#b8,#00,#bb,#00,#b8,#00
	db #bd,#00,#b8,#00,#bb,#00,#b8,#00
	db #b9,#00,#b6,#00,#b8,#00,#b4,#00
	db #b6,#00,#b6,#00,#38,#00,#02,#bb
	db #00,#bb,#00,#b9,#00,#b9,#00,#b8
	db #00,#b8,#00,#b8,#00,#b6,#00,#bb
	db #00,#c0,#00,#bd,#00,#bf,#00,#bb
	db #00,#c0,#00,#bf,#00,#bb,#00,#b8
	db #00,#b8,#00,#bb,#00,#bb,#00,#bd
	db #00,#b9,#00,#bb,#00,#b8,#00,#b9
	db #00,#b9,#00,#b8,#00,#bd,#00,#b9
	db #00,#bb,#00,#34,#00,#02,#3b,#00
	db #02,#c4,#00,#c4,#00,#3b,#00,#02
	db #c4,#00,#c4,#00,#3b,#00,#02,#c4
	db #00,#c4,#00,#3b,#00,#04,#ff
;
.music_info
	db "Jukebox 2 - Mozart (2003)(RoundSoft)(Napo)",0
	db "ST-128 Module",0

	read "music_end.asm"
