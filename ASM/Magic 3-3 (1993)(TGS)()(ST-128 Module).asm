; Music of Magic 3-3 (1993)(TGS)()(ST-128 Module)
; Ripped by Megachur the 02/10/2021
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MAGIC33.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2021
music_adr				equ #8e4a

	read "music_header.asm"

	jr l8e4e
	jr l8e5d
.l8e4e
	call l8e81
	ld hl,l8e6e
	ld de,l8e66
	ld bc,#81ff
	jp #bcd7
.l8e5d
	ld hl,l8e6e
	call #bcdd
	jp l8ef9
.l8e66
	push ix
	call l8f15
	pop ix
	ret
.l8e6e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l8e81
	jp l8f15
	jp l8ef9
;
.init_music
.l8e81
;
	xor a
	ld hl,l942c
	call l8ef2
	ld hl,l945a
	call l8ef2
	ld hl,l9488
	call l8ef2
	ld ix,l9428
	ld iy,l94b2
	ld de,#002e
	ld b,#03
.l8ea1
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
	djnz l8ea1
	ld hl,l9341
	ld (hl),#06
	inc hl
	ld (hl),#20
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l933d),hl
	ld (l933f),hl
	ld a,#0c
	ld c,d
	call l931d
	ld a,#0d
	ld c,d
	jp l931d
.l8ef2
	ld b,#2a
.l8ef4
	ld (hl),a
	inc hl
	djnz l8ef4
	ret
;
.stop_music
.l8ef9
;
	ld a,#07
	ld c,#3f
	call l931d
	ld a,#08
	ld c,#00
	call l931d
	ld a,#09
	ld c,#00
	call l931d
	ld a,#0a
	ld c,#00
	jp l931d
;
.play_music
.l8f15
;
	ld hl,l9343
	dec (hl)
	ld ix,l9428
	ld bc,l9436
	call l8fb7
	ld ix,l9456
	ld bc,l9464
	call l8fb7
	ld ix,l9484
	ld bc,l9492
	call l8fb7
	ld hl,l933c
	ld de,l9343
	ld b,#06
	call l8f94
	ld b,#07
	call l8f94
	ld b,#0b
	call l8f94
	ld b,#0d
	call l8f94
	ld de,l9343
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l9447
	call l8f6d
	ld hl,l9475
	call l8f6d
	ld hl,l94a3
.l8f6d
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
	jr nz,l8f82
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l8f82
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
.l8f94
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l931d
.l8f9f
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l931d
.l8fb7
	ld a,(l9343)
	or a
	jp nz,l906f
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l906f
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l8f9f
	or a
	jp z,l9064
	ld r,a
	and #7f
	cp #10
	jr c,l903f
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l91b7
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
	jr z,l9018
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l9018
	rrca
	ld c,a
	ld hl,l94b8
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
	jr z,l9037
	ld (ix+#1e),b
.l9037
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l9058
.l903f
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l9348
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add (hl)
	add a
	add h
	adc c
	add (hl)
.l9058
	ld a,d
	or a
	jr nz,l9066
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l9066
.l9064
	ld a,(hl)
	inc hl
.l9066
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l906f
	ld a,(ix+#17)
	or a
	jr nz,l9085
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l9085
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l909b
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l909b
	ld a,(ix+#0d)
	or a
	jr z,l90a9
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l90c7
.l90a9
	ld a,(ix+#1a)
	or a
	jp z,l90ce
	ld c,a
	cp #03
	jr nz,l90b6
	xor a
.l90b6
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l90c7
	ld a,(ix+#18)
	dec c
	jr z,l90c7
	ld a,(ix+#19)
.l90c7
	add (ix+#07)
	ld b,d
	call l91b7
.l90ce
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l90f6
	dec (ix+#1b)
	jr nz,l90f6
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l912e
.l90f6
	ld a,(ix+#29)
	or a
	jr z,l912e
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l9125
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l911c
	ld (ix+#29),#ff
	jr l9125
.l911c
	cp (ix+#2b)
	jr nz,l9125
	ld (ix+#29),#01
.l9125
	ld b,d
	or a
	jp p,l912b
	dec b
.l912b
	ld c,a
	jr l9139
.l912e
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l9139
	pop hl
	bit 7,(ix+#14)
	jr z,l9142
	ld h,d
	ld l,d
.l9142
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l931d
	ld c,h
	ld a,(ix+#02)
	call l931d
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l9195
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l9184
	dec (ix+#09)
	jr nz,l9184
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l917c
	xor a
	jr l9181
.l917c
	cp #10
	jr nz,l9181
	dec a
.l9181
	ld (ix+#1e),a
.l9184
	ld a,b
	sub (ix+#1e)
	jr nc,l918b
	xor a
.l918b
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l931d
.l9195
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l9344)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l91b3
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l91b3
	ld (l9344),hl
	ret
.l91b7
	ld hl,l9366
	cp #61
	jr nc,l91c1
	add a
	ld c,a
	add hl,bc
.l91c1
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l91cb
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l92f0
	ld (ix+#1e),a
	jp l9058
.l91dd
	dec b
.l91de
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l91e9
	neg
.l91e9
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
	jp l9058
.l91ff
	dec b
	jr l9203
.l9202
	inc b
.l9203
	call l92f0
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l9058
.l9212
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
	jp l92d5
.l9223
	ld a,(hl)
	inc hl
	or a
	jr z,l9245
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
.l9245
	ld (ix+#29),a
	jp l9058
.l924b
	dec hl
	ld a,(hl)
	and #0f
	ld (l9347),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l9346),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l9058
.l9265
	ld a,(hl)
	or a
	jr z,l9276
	call l92f2
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l9058
.l9276
	ld hl,#0101
	ld (l9342),hl
	jp l9058
.l927f
	call l92f0
	ld (ix+#1e),a
	jp l9058
.l9288
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l9301
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l9301
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l9058
.l92aa
	ld a,(hl)
	inc hl
	ld (l9341),a
	jp l9058
.l92b2
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
	jp l9058
.l92d1
	call l92f0
	add a
.l92d5
	ld b,#00
	ld c,a
	push hl
	ld hl,l9538
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l9058
.l92f0
	ld a,(hl)
	inc hl
.l92f2
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
.l9301
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l94b8
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l9365
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l931d
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
.l933c
	ret
.l9344 equ $ + 7
.l9343 equ $ + 6
.l9342 equ $ + 5
.l9341 equ $ + 4
.l933f equ $ + 2
.l933d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9347 equ $ + 2
.l9346 equ $ + 1
	db #38,#00,#00
.l9348
	dw l91cb,l91de,l91dd,l9202
	dw l91ff,l9212,l9223,l924b
	dw l9265,l924b,l927f,l9288
.l9366 equ $ + 6
.l9365 equ $ + 5
	dw l92aa,l92b2,l92d1,#0000
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04b4
	dw #0470,#0431,#03f4,#03bc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
.l942c equ $ + 4
.l9428
	db #08,#00,#01,#08,#00,#00,#00,#00
.l9436 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9447 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9456 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l945a equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l9464 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9475 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9484 equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l9488
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9492 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l94a3 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l94b2 equ $ + 2
	db #00,#00,#d8,#98,#35,#99,#92,#99
.l94b8
	db #58,#95,#98,#95,#b8,#95,#00,#00
	db #4a,#4e,#4a,#4e,#4a,#c3,#40,#00
	db #58,#95,#d8,#95,#b8,#95,#1a,#06
	db #f8,#95,#38,#96,#b8,#95,#18,#08
	db #4a,#4e,#93,#6e,#4a,#4e,#00,#00
	db #4a,#4e,#4a,#4e,#4a,#4e,#00,#00
	db #58,#96,#98,#96,#b8,#95,#1a,#00
	db #4a,#4e,#4a,#4e,#4a,#4e,#00,#00
	db #4a,#4e,#4a,#4e,#4a,#4e,#49,#21
	db #4a,#4e,#4a,#4e,#4a,#4e,#00,#00
	db #b8,#96,#f8,#96,#b8,#95,#16,#0a
	db #93,#4f,#4a,#4e,#4a,#4e,#00,#00
	db #4a,#4e,#4a,#4e,#4a,#4e,#00,#25
	db #58,#95,#18,#97,#b8,#95,#00,#00
	db #38,#97,#78,#97,#98,#97,#0c,#00
	db #b8,#97,#f8,#97,#18,#98,#00,#00
.l9538
	db #38,#98,#58,#98,#78,#98,#98,#98
	db #b8,#98,#4a,#4e,#4a,#4e,#93,#4f
	db #4a,#4e,#4a,#4e,#4a,#4e,#4a,#4e
	db #4a,#4e,#4a,#4e,#4a,#4e,#4a,#4e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0d,#0d,#0e,#0e,#0e,#0e
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0e
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0b,#0c,#0c,#0c,#0b,#0b,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#01,#00
	db #03,#00,#05,#00,#03,#00,#01,#00
	db #ff,#ff,#fd,#ff,#fb,#ff,#fd,#ff
	db #ff,#ff,#01,#00,#04,#00,#07,#00
	db #04,#00,#01,#00,#ff,#ff,#fc,#ff
	db #f9,#ff,#fc,#ff,#ff,#ff,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0d,#0d
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0c
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#02,#00
	db #03,#00,#04,#00,#03,#00,#02,#00
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0b,#0c,#0c,#0c,#0c,#0c,#0c,#0d
	db #0d,#0d,#0d,#0d,#0d,#0e,#0e,#0e
	db #0f,#0d,#0b,#0a,#09,#08,#08,#07
	db #07,#06,#06,#05,#05,#05,#04,#04
	db #04,#03,#03,#03,#02,#02,#02,#02
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#32,#00,#64,#00,#91,#00
	db #be,#00,#eb,#00,#22,#01,#4a,#01
	db #7c,#01,#a9,#01,#d6,#01,#08,#02
	db #3a,#02,#6c,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0d
	db #0c,#0a,#06,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #a0,#00,#e0,#00,#00,#00,#20,#00
	db #40,#00,#60,#00,#a0,#00,#e0,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#a0,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#06,#05
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09,#09,#08,#06,#06,#07,#08,#09
	db #0b,#0a,#09,#06,#06,#08,#08,#07
	db #06,#05,#06,#07,#08,#0a,#0a,#09
	db #07,#06,#07,#08,#08,#0a,#09,#09
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #00,#00,#fc,#fc,#f9,#f9,#00,#00
	db #fc,#fc,#f9,#f9,#00,#00,#fc,#fc
	db #f9,#f9,#00,#00,#fc,#fc,#f9,#f9
	db #00,#00,#fc,#fc,#f9,#f9,#00,#00
	db #00,#00,#fc,#fc,#f7,#f7,#00,#00
	db #fc,#fc,#f7,#f7,#00,#00,#fc,#fc
	db #f7,#f7,#00,#00,#fc,#fc,#f7,#f7
	db #00,#00,#fc,#fc,#f7,#f7,#00,#00
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#fd,#fd
	db #f9,#f9,#00,#00,#fd,#fd,#f9,#f9
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #00,#ef,#99,#00,#ef,#99,#00,#ef
	db #99,#00,#4a,#9a,#00,#ef,#99,#00
	db #4a,#9a,#00,#78,#9a,#00,#81,#9a
	db #00,#78,#9a,#00,#81,#9a,#00,#78
	db #9a,#00,#81,#9a,#00,#78,#9a,#00
	db #81,#9a,#00,#8c,#9a,#00,#95,#9a
	db #00,#8c,#9a,#00,#95,#9a,#00,#78
	db #9a,#00,#81,#9a,#00,#78,#9a,#00
	db #81,#9a,#00,#8c,#9a,#00,#95,#9a
	db #00,#8c,#9a,#00,#95,#9a,#00,#8c
	db #9a,#00,#95,#9a,#00,#8c,#9a,#00
	db #95,#9a,#80,#ea,#98,#00,#9e,#9a
	db #00,#9e,#9a,#00,#a1,#9a,#00,#a1
	db #9a,#00,#ce,#9a,#00,#e4,#9a,#00
	db #fd,#9a,#00,#0c,#9b,#00,#fd,#9a
	db #00,#22,#9b,#00,#29,#9b,#00,#84
	db #9b,#00,#29,#9b,#00,#b2,#9b,#00
	db #e0,#9b,#00,#41,#9c,#00,#e0,#9b
	db #00,#41,#9c,#00,#fd,#9a,#00,#0c
	db #9b,#00,#fd,#9a,#00,#22,#9b,#00
	db #a2,#9c,#00,#c2,#9c,#00,#a2,#9c
	db #00,#d2,#9c,#00,#e0,#9b,#00,#41
	db #9c,#00,#e0,#9b,#00,#41,#9c,#80
	db #47,#99,#00,#9e,#9a,#00,#e2,#9c
	db #00,#e2,#9c,#00,#eb,#9c,#00,#f4
	db #9c,#00,#47,#9d,#00,#f4,#9c,#00
	db #47,#9d,#00,#f4,#9c,#00,#47,#9d
	db #00,#f4,#9c,#00,#47,#9d,#00,#f4
	db #9c,#00,#9a,#9d,#00,#f4,#9c,#00
	db #47,#9d,#00,#f4,#9c,#00,#47,#9d
	db #00,#f4,#9c,#00,#47,#9d,#00,#f4
	db #9c,#00,#47,#9d,#00,#f4,#9c,#00
	db #47,#9d,#00,#f4,#9c,#00,#eb,#9d
	db #00,#f4,#9c,#00,#47,#9d,#00,#f4
	db #9c,#00,#47,#9d,#80,#a4,#99,#49
	db #db,#20,#44,#db,#10,#49,#db,#13
	db #4d,#db,#10,#44,#db,#13,#44,#db
	db #10,#4d,#db,#13,#49,#db,#10,#44
	db #db,#13,#44,#db,#10,#49,#db,#13
	db #4d,#db,#10,#44,#db,#13,#44,#db
	db #10,#4d,#db,#13,#4b,#db,#10,#44
	db #db,#13,#4d,#db,#10,#4b,#db,#13
	db #4b,#db,#10,#4d,#db,#13,#49,#db
	db #10,#48,#db,#10,#4d,#db,#15,#48
	db #db,#10,#49,#db,#20,#4b,#db,#10
	db #49,#db,#13,#48,#db,#10,#4b,#db
	db #13,#ff,#46,#db,#30,#46,#db,#33
	db #46,#db,#25,#4e,#db,#20,#4d,#db
	db #10,#4e,#db,#13,#4b,#db,#10,#4d
	db #db,#13,#49,#db,#10,#4b,#db,#10
	db #4d,#db,#15,#49,#db,#13,#4b,#db
	db #23,#49,#db,#15,#4b,#db,#b5,#ff
	db #49,#2f,#00,#10,#48,#2f,#01,#10
	db #ff,#46,#2f,#02,#10,#49,#2f,#80
	db #48,#2f,#82,#ff,#49,#2f,#00,#10
	db #4b,#2f,#04,#10,#ff,#4e,#2f,#03
	db #10,#50,#2f,#03,#10,#ff,#00,#20
	db #ff,#34,#e0,#04,#40,#f0,#02,#34
	db #e0,#02,#34,#e0,#02,#b4,#e0,#b4
	db #e0,#40,#f0,#02,#34,#e0,#02,#34
	db #e0,#04,#40,#f0,#02,#34,#e0,#02
	db #34,#e0,#02,#b4,#e0,#b4,#e0,#40
	db #f0,#02,#34,#e0,#02,#ff,#4d,#30
	db #0a,#4e,#30,#02,#50,#30,#02,#4d
	db #30,#02,#4b,#30,#08,#49,#30,#02
	db #4b,#30,#06,#ff,#46,#30,#08,#4e
	db #30,#02,#4d,#30,#02,#4b,#30,#02
	db #49,#30,#02,#48,#30,#06,#49,#30
	db #06,#4b,#30,#04,#ff,#49,#a0,#0a
	db #4b,#a0,#02,#4d,#a0,#02,#ce,#a0
	db #50,#a0,#11,#ff,#52,#a0,#06,#50
	db #a0,#06,#4e,#a0,#04,#4d,#a0,#02
	db #4e,#a0,#02,#4d,#a0,#02,#4b,#a0
	db #0a,#ff,#55,#a0,#10,#57,#a0,#10
	db #ff,#49,#0b,#20,#44,#0b,#10,#49
	db #0b,#13,#4d,#0b,#10,#44,#0b,#13
	db #44,#0b,#10,#4d,#0b,#13,#49,#0b
	db #10,#44,#0b,#13,#44,#0b,#10,#49
	db #0b,#13,#4d,#0b,#10,#44,#0b,#13
	db #44,#0b,#10,#4d,#0b,#13,#4b,#0b
	db #10,#44,#0b,#13,#4d,#0b,#10,#4b
	db #0b,#13,#4b,#0b,#10,#4d,#0b,#13
	db #49,#0b,#10,#48,#0b,#10,#4d,#0b
	db #15,#48,#0b,#10,#49,#0b,#20,#4b
	db #0b,#10,#49,#0b,#13,#48,#0b,#10
	db #4b,#0b,#13,#ff,#46,#0b,#30,#46
	db #0b,#33,#46,#0b,#25,#4e,#0b,#20
	db #4d,#0b,#10,#4e,#0b,#13,#4b,#0b
	db #10,#4d,#0b,#13,#49,#0b,#10,#4b
	db #0b,#10,#4d,#0b,#15,#49,#0b,#13
	db #4b,#0b,#23,#49,#0b,#15,#4b,#0b
	db #b5,#ff,#46,#0b,#30,#46,#0b,#33
	db #46,#0b,#25,#4e,#0b,#20,#4d,#0b
	db #10,#4e,#0b,#13,#4b,#0b,#10,#4d
	db #0b,#13,#49,#0b,#10,#50,#0b,#10
	db #4d,#0b,#15,#49,#0b,#13,#50,#0b
	db #23,#49,#0b,#15,#50,#0b,#b5,#ff
	db #49,#0b,#10,#4b,#0b,#13,#4d,#0b
	db #10,#49,#0b,#13,#50,#0b,#10,#4d
	db #0b,#13,#4d,#0b,#10,#50,#0b,#13
	db #49,#0b,#10,#4d,#0b,#13,#4d,#0b
	db #10,#49,#0b,#13,#50,#0b,#10,#4d
	db #0b,#13,#4d,#0b,#10,#50,#0b,#13
	db #44,#0b,#10,#4d,#0b,#13,#48,#0b
	db #10,#44,#0b,#13,#4b,#0b,#10,#48
	db #0b,#13,#48,#0b,#10,#4b,#0b,#13
	db #4b,#0b,#10,#48,#0b,#13,#4d,#0b
	db #10,#4b,#0b,#13,#4b,#0b,#10,#4d
	db #0b,#13,#48,#0b,#10,#4b,#0b,#13
	db #ff,#46,#0b,#10,#48,#0b,#13,#49
	db #0b,#10,#46,#0b,#13,#4e,#0b,#10
	db #49,#0b,#13,#49,#0b,#10,#4e,#0b
	db #13,#46,#0b,#10,#49,#0b,#13,#49
	db #0b,#10,#46,#0b,#13,#4e,#0b,#10
	db #49,#0b,#13,#49,#0b,#10,#4e,#0b
	db #13,#4b,#0b,#10,#49,#0b,#13,#49
	db #0b,#10,#4b,#0b,#13,#48,#0b,#10
	db #49,#0b,#13,#49,#0b,#10,#48,#0b
	db #13,#4b,#0b,#10,#49,#0b,#13,#49
	db #0b,#10,#4b,#0b,#13,#48,#0b,#10
	db #49,#0b,#13,#4b,#0b,#10,#48,#0b
	db #13,#ff,#4d,#60,#04,#4d,#60,#04
	db #4d,#60,#02,#ce,#60,#4d,#60,#03
	db #49,#60,#02,#4b,#60,#08,#49,#60
	db #02,#48,#60,#02,#c6,#60,#48,#60
	db #03,#ff,#46,#60,#06,#48,#60,#06
	db #49,#60,#04,#4d,#60,#06,#4b,#60
	db #0a,#ff,#46,#60,#06,#48,#60,#06
	db #49,#60,#04,#52,#60,#06,#50,#60
	db #0a,#ff,#31,#08,#12,#10,#2c,#08
	db #18,#10,#ff,#2a,#08,#1b,#10,#2c
	db #08,#18,#10,#ff,#34,#e1,#10,#31
	db #08,#12,#03,#40,#f1,#10,#b1,#08
	db #12,#34,#e1,#10,#b1,#08,#12,#34
	db #e1,#10,#b1,#08,#12,#34,#e1,#10
	db #b4,#e0,#c0,#f0,#b1,#08,#12,#34
	db #e1,#10,#b1,#08,#12,#34,#e1,#10
	db #2c,#08,#18,#03,#40,#f1,#10,#ac
	db #08,#18,#34,#e1,#10,#ac,#08,#18
	db #34,#e1,#10,#ac,#08,#18,#34,#e1
	db #10,#b4,#e0,#c0,#f0,#ac,#08,#18
	db #34,#e1,#10,#ac,#08,#18,#ff,#34
	db #e1,#10,#2a,#08,#1b,#03,#40,#f1
	db #10,#aa,#08,#1b,#34,#e1,#10,#aa
	db #08,#1b,#34,#e1,#10,#aa,#08,#1b
	db #34,#e1,#10,#b4,#e0,#c0,#f0,#aa
	db #08,#1b,#34,#e1,#10,#aa,#08,#1b
	db #34,#e1,#10,#2c,#08,#18,#03,#40
	db #f1,#10,#ac,#08,#18,#34,#e1,#10
	db #ac,#08,#18,#34,#e1,#10,#ac,#08
	db #18,#34,#e1,#10,#b4,#e0,#c0,#f0
	db #ac,#08,#18,#34,#e1,#10,#ac,#08
	db #18,#ff,#34,#e1,#10,#2a,#08,#1b
	db #03,#40,#f1,#10,#aa,#08,#1b,#34
	db #e1,#10,#aa,#08,#1b,#34,#e1,#10
	db #aa,#08,#1b,#34,#e1,#10,#b4,#e0
	db #c0,#f0,#aa,#08,#1b,#34,#e1,#10
	db #aa,#08,#1b,#34,#e1,#10,#2c,#08
	db #18,#03,#40,#f1,#10,#ac,#08,#18
	db #3b,#e1,#10,#bb,#e0,#b8,#e0,#b8
	db #e0,#ac,#08,#18,#36,#e1,#10,#b6
	db #e0,#ac,#08,#18,#34,#e1,#10,#ac
	db #08,#18,#ff,#34,#e1,#10,#2a,#08
	db #1b,#03,#40,#f1,#10,#aa,#08,#1b
	db #34,#e1,#10,#aa,#08,#1b,#34,#e1
	db #10,#aa,#08,#1b,#34,#e1,#10,#b4
	db #e0,#c0,#f0,#aa,#08,#1b,#34,#e1
	db #10,#aa,#08,#1b,#34,#e1,#10,#2c
	db #08,#18,#03,#40,#f1,#10,#ac,#08
	db #18,#34,#e1,#10,#ac,#08,#18,#34
	db #e1,#10,#ac,#08,#18,#3b,#e1,#10
	db #b9,#e0,#b8,#e0,#b6,#e0,#b4,#e0
	db #b4,#e0,#ff
;
.music_info
	db "Magic 3-3 (1993)(TGS)()",0
	db "ST-128 Module",0

	read "music_end.asm"
