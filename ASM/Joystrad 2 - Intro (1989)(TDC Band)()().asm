; Music of Joystrad 2 - Intro (1989)(TDC Band)()()
; Ripped by Megachur the 28/12/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JOYSTR2I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #61a8

	read "music_header.asm"

;
.init_music
.l61a8
;
	di		; play music
	jp l62e3
.l61ac
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
	dw #002f,#0000
	db #04,#08,#14,#08,#1f,#08,#14,#30
	db #1f,#40,#0a,#07,#11,#07,#1c,#07
.l622d equ $ + 5
.l622a equ $ + 2
	db #09,#40,#0a,#0c,#0a,#18,#02,#25
.l6235 equ $ + 5
.l6234 equ $ + 4
.l6233 equ $ + 3
	db #03,#59,#00,#09,#1e,#0a,#00,#02
.l623f equ $ + 7
.l623c equ $ + 4
.l623b equ $ + 3
	db #00,#00,#00,#10,#05,#00,#04,#05
.l6243 equ $ + 3
.l6242 equ $ + 2
	db #05,#05,#00,#00,#00,#00,#00,#00
	db #00
.l624d equ $ + 4
.l6249
	dw l65d6,l65d7,l65f8,l65f9
.l6255 equ $ + 4
.l6251
	dw l6707,l6708,l6811,l6812
.l625a equ $ + 1
.l6259
	db #e6,#02,#01,#05,#00,#0a,#35,#3e
.l6263 equ $ + 2
	db #03,#02,#08,#09,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0b,#0a
	db #09,#08,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#00,#06,#07,#08,#09,#0c,#0e
	db #0f,#0e,#0d,#0c,#09,#08,#07,#06
	db #04,#02,#0d,#0c,#0b,#0a,#0a,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#0b,#0f,#0f,#0f,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0c,#0a,#0f,#0e,#0d,#0c,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0b,#0c,#0d
	db #0e,#0f,#0c,#0e,#0f,#0f,#0e,#0d
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
.l62d3 equ $ + 2
	db #0b,#0a,#d6,#65,#d7,#65,#f8,#65
	db #f9,#65,#07,#67,#08,#67,#00,#00
	db #00,#00
;
.play_music
.l62e3
;
	call l62f2
	ld e,#00
	ld b,#0b
	call l6587
	call l6410
	ei
	ret
.l62f2
	ld hl,l6234
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call l6487
	ld hl,l623b
	ld (hl),b
	inc hl
	call l6487
	ld hl,l6242
	ld (hl),b
	inc hl
	call l6487
	inc hl
	call l6487
	ld hl,l6255
	call l636e
	call l644b
	ld hl,l6249
	call l636e
	ld a,#01
	call l6392
	ld hl,l624d
	call l636e
	ld a,#02
	call l6392
	ld hl,l6251
	call l636e
	ld a,#03
	call l6392
	call l64c3
	ld hl,l622d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l6358
	inc hl
	inc hl
	call l6358
	dec hl
	dec hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l6358
	ret
.l6358
	ld a,(hl)
	cp e
	ret nz
	inc hl
	ld a,(hl)
	dec hl
	cp d
	ret nz
	inc de
	ld (hl),e
	inc hl
	ld (hl),d
	dec hl
	dec de
	ret
	ld d,#07
	ld e,#3f
	jp l6566
.l636e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
.l6372
	ld a,(de)
	cp #3f
	jp z,l638a
	ld b,a
	ld (hl),d
	dec hl
	ld (hl),e
	add a
	ld e,a
	ld d,#00
	ld hl,l61ac
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.l638a
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jr l6372
.l6392
	ld c,a
	ld a,b
	cp #36
	jp nc,l63d6
	ld a,l
	or h
	ret z
	ld a,c
	push hl
	add a
	dec a
	ld hl,l622d
	ld d,#00
	ld e,a
	add hl,de
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,l623f
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,l622a
	add hl,de
	ld a,(hl)
	ld hl,l6235
	add hl,de
	ld (hl),a
	ld hl,l6234
	dec c
	jp nz,l63cb
	res 0,(hl)
.l63cb
	dec c
	jp nz,l63d1
	res 1,(hl)
.l63d1
	dec c
	ret nz
	res 2,(hl)
	ret
.l63d6
	ld a,h
	ld (l6233),a
	ld a,l
	and #f0
	cp #00
	jp z,l6401
	rrca
	rrca
	rrca
	rrca
.l63e6
	ld hl,l623c
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,l6234
	dec c
	jr nz,l63f8
	res 3,(hl)
	ret
.l63f8
	dec c
	jr nz,l63fe
	res 4,(hl)
	ret
.l63fe
	res 5,(hl)
	ret
.l6401
	ld a,l
	and #0f
	ld hl,l6235
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr l63e6
.l6410
	ld a,#01
	di
	call l6596
	ld a,#02
	call l6596
	ld a,#03
	call l6596
	call l6543
	ld hl,l623b
	inc (hl)
	ld a,(hl)
	cp #10
	jp z,l6443
	ld e,#00
	ld b,#06
	call l6587
	ld a,(l6259)
.l6437
	ld b,#64
.l6439
	djnz l6439
	inc a
	cp #00
	jr nz,l6437
	jp l6410
.l6443
	ld e,#00
	ld b,#06
	call l6587
	ret
.l644b
	ld a,b
	and #03
	ld c,a
	bit 2,b
	jr nz,l6459
	bit 3,b
	jp nz,l648d
	ret
.l6459
	bit 3,b
	jp nz,l64a3
	ld a,#f0
	and b
	rrc a
	rrc a
	rrc a
	rrc a
	ld b,a
	xor a
	cp c
	jr z,l647c
	ld hl,l622a
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,#00
	jp l64b3
.l647c
	ld hl,l622a
	call l6487
	ld b,#00
	jp l64bd
.l6487
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.l648d
	ld a,c
	ld (l625a),a
	ld a,#f0
	and b
	rlca
	rlca
	rlca
	bit 4,b
	ld b,a
	jr z,l649f
	xor #7f
	inc a
.l649f
	ld (l6242),a
	ret
.l64a3
	bit 4,b
	ret nz
	ld a,#e0
	and b
	rlca
	rlc a
	rlc a
	ld b,a
	xor a
	cp c
	jr z,l64bd
.l64b3
	ld d,#00
	ld e,c
	ld hl,l623f
	add hl,de
	dec hl
	ld (hl),b
	ret
.l64bd
	ld hl,l623f
	jp l6487
.l64c3
	ld hl,l6242
	xor a
	cp (hl)
	ret z
	ld b,(hl)
	ld a,(l625a)
	cp #00
	jr z,l64f1
	ld ix,l622d
	ld hl,l6249
	dec a
	jp z,l650c
	ld hl,l624d
	inc ix
	inc ix
	dec a
	jp z,l650c
	ld hl,l6251
	inc ix
	inc ix
	jp l650c
.l64f1
	ld hl,l6249
	ld ix,l622d
	call l650c
	inc ix
	inc ix
	ld hl,l624d
	call l650c
	inc ix
	inc ix
	ld hl,l6251
.l650c
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	add b
	cp #35
	ret nc
	ld d,#00
	add a
	ld e,a
	ld hl,l61ac
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ex de,hl
	xor a
	sbc hl,de
	ld a,l
	ld l,h
	ld h,a
	xor a
	push bc
	ld b,#04
.l6530
	xor #00
	rr h
	rr l
	rr a
	djnz l6530
	or h
	ld (ix+#16),a
	ld (ix+#17),l
	pop bc
	ret
.l6543
	ld hl,l622d
	ld de,l6243
	ld b,#03
.l654b
	ld a,(hl)
	push hl
	inc hl
	ld h,(hl)
	ld l,a
	ex de,hl
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	add hl,de
	jr nc,l655a
	inc hl
.l655a
	ld c,h
	ld a,l
	pop de
	inc de
	pop hl
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	djnz l654b
	ret
.l6566
	push bc
	ld b,#f4
	out (c),d
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	inc d
	ret
.l6587
	ld hl,l622d
	ld d,#00
	add hl,de
	ld d,e
.l658e
	ld e,(hl)
	inc hl
	call l6566
	djnz l658e
	ret
.l6596
	ld hl,l6235
	dec a
	ld c,a
	ld e,a
	ld d,#00
	add hl,de
	ex de,hl
	ld hl,#0007
	add hl,de
	ld a,(hl)
	cp #00
	ret z
	push de
	ld hl,l6263
	dec a
	rla
	rla
	rla
	rla
	ld d,#00
	ld e,a
	add hl,de
	ld a,(l623b)
	ld e,a
	add hl,de
	ld a,(hl)
	pop hl
	ld b,(hl)
	cp b
	ret z
	ld (hl),a
	ld a,c
	add #08
	ld e,a
	ld b,#01
	jp l6587
	ld hl,l62d3
	ld de,l6249
	ld bc,#000c
	ldir
	ret
.l65d7 equ $ + 2
.l65d6 equ $ + 1
	db #00,#35,#00,#00,#0c,#00,#0a,#0a
	db #0a,#35,#00,#00,#0c,#00,#0a,#0a
	db #0a,#35,#02,#02,#0e,#02,#0c,#0c
	db #0c,#35,#02,#02,#0e,#02,#0c,#0c
.l65f9 equ $ + 4
.l65f8 equ $ + 3
	db #0c,#35,#3f,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #3d,#3e,#3e,#3e,#3e,#3e,#3e,#3e
	db #3e,#3e,#3e,#35,#35,#35,#3e,#3e
	db #3e,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#3e,#3e,#3e,#3e,#3e
	db #35,#35,#3e,#35,#3e,#35,#35,#3e
	db #35,#35,#3e,#35,#35,#3e,#35,#35
	db #35,#3e,#35,#35,#35,#3e,#35,#35
	db #35,#3e,#35,#35,#35,#3e,#35,#35
	db #35,#3e,#35,#35,#35,#3e,#35,#35
	db #35,#3e,#35,#35,#35,#3e,#35,#35
	db #35,#3e,#35,#35,#35,#3e,#35,#35
	db #35,#3e,#3e,#3e,#3e,#3e,#3e,#3e
	db #39,#3a,#3e,#3e,#3e,#35,#35,#35
	db #35,#35,#35,#35,#3e,#3e,#3e,#3e
	db #3e,#3e,#3e,#35,#35,#3e,#3e,#3e
	db #3e,#35,#35,#35,#3e,#3e,#3e,#35
	db #35,#3e,#3e,#35,#35,#3e,#35,#35
.l6708 equ $ + 3
.l6707 equ $ + 2
	db #3e,#3f,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#3e
	db #3e,#3e,#3e,#3e,#3e,#3a,#3a,#3e
	db #3e,#3a,#3a,#3e,#3e,#3a,#3a,#3e
	db #3e,#3a,#3a,#3e,#3e,#3a,#3a,#3e
	db #3e,#3a,#3a,#3e,#3e,#3a,#3a,#3e
	db #3e,#3a,#3a,#3e,#3e,#3a,#3a,#3e
	db #3e,#3a,#3a,#3e,#3e,#3a,#3a,#3e
	db #3e,#3a,#3a,#3e,#3e,#3a,#3a,#3e
	db #3e,#39,#39,#3e,#3e,#3a,#3a,#3e
	db #39,#39,#39,#18,#24,#21,#24,#27
	db #3e,#3a,#3a,#18,#24,#21,#24,#29
	db #29,#35,#3a,#28,#24,#26,#24,#28
	db #35,#28,#24,#26,#24,#28,#29,#26
	db #24,#28,#24,#26,#24,#28,#24,#26
	db #24,#28,#24,#26,#24,#28,#24,#26
	db #24,#28,#24,#26,#24,#29,#24,#26
	db #24,#29,#24,#26,#24,#29,#24,#26
	db #24,#2b,#24,#26,#24,#2b,#24,#26
	db #24,#28,#24,#29,#28,#29,#28,#26
	db #26,#35,#35,#35,#26,#28,#29,#28
	db #26,#28,#28,#29,#29,#28,#29,#28
	db #29,#28,#29,#28,#28,#29,#28,#29
	db #28,#29,#29,#28,#29,#28,#29,#28
	db #29,#28,#29,#28,#29,#28,#29,#28
	db #29,#28,#29,#28,#29,#28,#29,#28
	db #25,#25,#26,#35,#35,#35,#25,#25
	db #29,#35,#35,#3f
.l6811
.l6812 equ $ + 1
	db #00,#00
;
.music_info
	db "Joystrad 2 - Intro (1989)(TDC Band)()",0
	db "",0

	read "music_end.asm"
