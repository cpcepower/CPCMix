; Music of Come-Bed School - Orgasm (1992)(TGS)(The Electric Monk)(ST-Module)
; Ripped by Megachur the 01/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COMEBESO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5000

	read "music_header.asm"

	jr l5004
	jr l5013
.l5004
	call l502f
	ld hl,l5452
	ld de,l501c
	ld bc,#81ff
	jp #bcd7
.l5013
	ld hl,l5452
	call #bcdd
	jp l509b
.l501c
	push ix
	call l50b7
	pop ix
	ret
	jp l502f
	jp l50b7
	jp l509b
	db #66,#04
;
.init_music
.l502f
;
	ld b,#03
	ld ix,l53fe
	ld iy,l532a
	ld de,#001c
.l503c
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
	djnz l503c
	ld a,#06
	ld (l50df),a
	ld a,d
	ld (l50f3),a
	inc a
	ld (l50da),a
	ld a,#38
	ld (l50e4),a
	ld a,#ff
	ld (l5326),a
	ld (l5327),a
	ld (l5328),a
	ld (l5329),a
	ld a,#0c
	ld c,d
	call l5308
	ld a,#0d
	ld c,d
	jp l5308
;
.stop_music
.l509b
;
	ld a,#07
	ld c,#3f
	call l5308
	ld a,#08
	ld c,#00
	call l5308
	ld a,#09
	ld c,#00
	call l5308
	ld a,#0a
	ld c,#00
	jp l5308
;
.play_music
.l50b7
;
	ld hl,l50da
	dec (hl)
	ld ix,l53fe
	ld bc,l540c
	call l516d
	ld ix,l541a
	ld bc,l5428
	call l516d
	ld ix,l5436
	ld bc,l5444
	call l516d
.l50da equ $ + 1
	ld a,#00
	or a
	jr nz,l50e3
.l50df equ $ + 1
	ld a,#00
	ld (l50da),a
.l50e4 equ $ + 1
.l50e3
	ld a,#00
	ld hl,l5327
	cp (hl)
	jr z,l50f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l5308
.l50f3 equ $ + 1
.l50f2
	ld a,#00
	ld hl,l5326
	cp (hl)
	jr z,l5101
	ld (hl),a
	ld c,a
	ld a,#06
	call l5308
.l5102 equ $ + 1
.l5101
	ld a,#00
	ld hl,l5328
	cp (hl)
	jr z,l5110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l5308
.l5111 equ $ + 1
.l5110
	ld a,#00
	ld hl,l5329
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l5308
.l511e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l521e
.l512d
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
	jp l5308
.l5147
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l515c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l515c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l5180
.l516d
	ld a,(l50da)
	or a
	jp nz,l521e
	dec (ix+#06)
	jp nz,l521e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5180
	ld a,(hl)
	or a
	jr z,l511e
	cp #fe
	jr z,l512d
	cp #ff
	jr z,l5147
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l5330
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l51bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l51bc
	and #7f
	ld (ix+#06),a
	jr l520f
.l51bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l51d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l51d0
	add a
	add a
	add a
	ld e,a
	ld hl,l5466
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
	jr z,l520f
	cp #f0
	jp z,l52c4
	cp #d0
	jp z,l52e0
	cp #b0
	jp z,l52e8
	cp #80
	jp nc,l52f0
	cp #10
	jr nz,l520f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l520f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l521e
	ld a,(ix+#17)
	or a
	jr nz,l5232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l5232
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l525d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l5330
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l525d
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
	call l5308
	ld c,h
	ld a,(ix+#03)
	call l5308
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l529b
	and #0f
	sub (ix+#0a)
	jr nc,l5291
	xor a
.l5291
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l5308
.l529b
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
	jr z,l52b8
	ld b,a
	ld a,c
	ld (l50f3),a
	ld a,b
	sub #40
.l52b8
	ld (l52bf),a
	ld a,(l50e4)
.l52bf equ $ + 1
	bit 0,a
	ld (l50e4),a
	ret
.l52c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l54e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l520f
.l52e0
	inc hl
	ld a,(hl)
	ld (l50df),a
	jp l520f
.l52e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l520f
.l52f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l5111),a
	inc hl
	ld a,(hl)
	ld (l5102),a
	jp l520f
.l5308
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
.l5329 equ $ + 3
.l5328 equ $ + 2
.l5327 equ $ + 1
.l5326
	db #ff,#ff,#ff,#ff
.l532a
	dw l5626,l562c,l5632
.l5330
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
.l53fe equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l540c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l541a
	db #00,#00,#02,#03,#09,#00,#00,#00
.l5428 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5436 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l5444 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5452
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l5466 equ $ + 4
	db #75,#6c,#65,#2e,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#06,#55,#46,#55
	db #66,#55,#00,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#86,#55,#c6,#55
	db #66,#55,#1b,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#00,#00,#4f,#00,#4f
.l54e6 equ $ + 4
	db #00,#4f,#00,#00,#00,#4f,#00,#4f
	db #00,#4f,#00,#4f,#00,#4f,#00,#4f
	db #00,#4f,#00,#4f,#e6,#55,#00,#4f
	db #06,#56,#00,#4f,#00,#4f,#00,#4f
	db #00,#4f,#00,#4f,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0c
	db #0c,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
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
	db #00,#00,#00,#00,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#07,#07,#06
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
.l5626 equ $ + 4
	db #00,#f4,#00,#0c,#00,#38,#56,#80
.l562c equ $ + 2
	db #26,#56,#00,#84,#56,#80,#2c,#56
.l5632
	db #00,#d1,#56,#80,#32,#56,#2e,#02
	db #f6,#08,#33,#02,#06,#b3,#06,#b5
	db #06,#37,#82,#33,#82,#3a,#84,#37
	db #83,#b7,#06,#38,#82,#ba,#06,#b8
	db #06,#b7,#06,#b8,#06,#3a,#82,#b5
	db #06,#b3,#06,#b5,#06,#b7,#06,#35
	db #82,#2e,#82,#33,#82,#b3,#06,#b5
	db #06,#37,#82,#33,#82,#3a,#84,#37
	db #83,#b7,#06,#b8,#06,#ba,#06,#b7
	db #06,#b8,#06,#35,#83,#b3,#06,#33
	db #86,#ff,#46,#02,#f9,#0a,#4b,#02
	db #b9,#02,#cb,#09,#cb,#09,#4b,#82
	db #4b,#82,#46,#84,#46,#83,#c6,#09
	db #4d,#82,#cd,#09,#cd,#09,#4d,#82
	db #4d,#82,#4a,#82,#ca,#09,#ca,#09
	db #46,#82,#46,#82,#4b,#82,#cb,#09
	db #cb,#09,#4b,#82,#4b,#82,#46,#83
	db #ca,#09,#4b,#83,#cb,#09,#46,#82
	db #c6,#09,#c6,#09,#4a,#82,#46,#82
	db #4b,#82,#46,#82,#4b,#82,#ff,#52
	db #02,#f9,#0a,#57,#02,#09,#d7,#09
	db #d9,#09,#5b,#82,#57,#82,#5e,#84
	db #5b,#83,#db,#09,#5c,#82,#de,#09
	db #dc,#09,#db,#09,#dc,#09,#5e,#82
	db #d9,#09,#d7,#09,#d9,#09,#db,#09
	db #59,#82,#52,#82,#57,#82,#d7,#09
	db #d9,#09,#5b,#82,#57,#82,#5e,#84
	db #5b,#83,#db,#09,#dc,#09,#de,#09
	db #db,#09,#dc,#09,#59,#83,#d7,#09
	db #57,#86,#ff
;
.music_info
	db "Come-Bed School - Orgasm (1992)(TGS)(The Electric Monk)",0
	db "ST-Module",0

	read "music_end.asm"
