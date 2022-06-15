; Music of Love (19xx)(Micro Escape)()()
; Ripped by Megachur the 15/06/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LOVE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #60b2

	read "music_header.asm"

;
.init_music
;
	xor a
	ld (l65ec),a
	ld hl,l65ed
	ld ix,l60fe
	ld bc,#0030
	ld a,#03
.l60c2
	ld (ix+#1b),#01
	ld (ix+#00),b
	ld (ix+#2c),b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#06),e
	ld (ix+#07),d
	ld (ix+#0a),#02
	ld (ix+#0b),b
	push af
	ld a,(de)
	ld (ix+#02),a
	inc de
	ld a,(de)
	ld (ix+#03),a
	add ix,bc
	pop af
	dec a
	jr nz,l60c2
	ld (l64b8),a
	inc a
	ld (l620b),a
	ld (l65ec),a
	ld hl,(l65f5)
	ld (l64b9),hl
	ret
.l60fe
	db #21,#00,#5e,#67,#00,#00,#0d,#69
	db #00,#00,#04,#00,#00,#00,#00,#00
	db #ac,#65,#00,#00,#ad,#65,#00,#00
	db #00,#00,#04,#01,#04,#35,#0c,#03
	db #20,#66,#00,#00,#1e,#66,#00,#00
	db #0c,#01,#01,#00,#40,#00,#00,#09
.l612e
	db #01,#00,#16,#68,#00,#00,#1f,#69
	db #00,#00,#04,#00,#00,#00,#36,#00
	db #ac,#65,#00,#00,#ad,#65,#00,#00
	db #01,#01,#04,#09,#20,#18,#00,#02
	db #12,#66,#00,#00,#3e,#66,#00,#00
	db #0a,#00,#00,#00,#40,#00,#00,#12
.l615e
	db #21,#00,#a0,#67,#00,#00,#49,#69
	db #00,#00,#04,#00,#00,#00,#00,#00
	db #ac,#65,#00,#00,#ad,#65,#00,#00
	db #00,#00,#04,#03,#04,#35,#0d,#04
	db #1f,#66,#00,#00,#1e,#66,#00,#00
	db #0d,#01,#01,#01,#40,#00,#00,#24
;
.play_music
.l618e
;
	ld a,(l65ec)
	or a
	ret z
.l6194 equ $ + 1
	ld a,#00
	ld (l61e2),a
	ld hl,l620b
	dec (hl)
	jr nz,l61ba
	ld b,#00
	ld ix,l60fe
	call l62f6
	ld ix,l612e
	call l62f6
	ld ix,l615e
	call l62f6
	ld hl,l620b
.l61b9 equ $ + 1
	ld (hl),#03
.l61ba
	ld ix,l60fe
	call l63bc
	ld (l64bc),hl
	ld (l64c4),a
	ld ix,l612e
	call l63bc
	ld (l64be),hl
	ld (l64c5),a
	ld ix,l615e
	call l63bc
	ld (l64c0),hl
	ld (l64c6),a
.l61e2 equ $ + 1
	ld a,#00
	srl a
	ld (l64c2),a
	ld hl,l64c9
	ld d,#0d
	xor a
.l61ee
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	dec hl
	dec d
	jp p,l61ee
	ret
.l620b
	db #02
.l620c
	dw l62f1,l62da,l62df,l62e5
	dw l62a2,l62d4,l62d0,l6239
	dw l62c1,l62b9,l627f,l626b
	dw l6292,l62eb,l622c,l6233
.l622c
	ld (ix+#2e),#01
	jp l6305
.l6233
	ld (ix+#2e),b
	jp l6305
.l6239
	ld c,(ix+#0a)
	ld b,(ix+#0b)
	ld l,(ix+#06)
	ld h,(ix+#07)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l6260
	ld a,#01
	ld (l64bb),a
	ld l,(ix+#06)
	ld h,(ix+#07)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l6260
	ld (ix+#0a),c
	ld (ix+#0b),b
	ld b,#00
	jp l6305
.l626b
	ld a,(ix+#2f)
	ld c,a
	and #07
	ld hl,l6499
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld (ix+#2d),#01
	jp l6305
.l627f
	ld a,(ix+#2f)
	ld c,a
	and #38
	ld hl,l6499
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld (ix+#2d),b
	jp l6305
.l6292
	ld hl,l6499
	ld a,(ix+#2f)
	cpl
	and (hl)
	ld (hl),a
	ld (ix+#2d),#01
	jp l6305
.l62a2
	ld a,(de)
	inc de
	ld (ix+#18),a
	ld a,(de)
	inc de
	ld (ix+#19),a
	ld (ix+#0e),b
	ld (ix+#0f),b
	set 2,(ix+#00)
	jp l6305
.l62b9
	ld a,(de)
	inc de
	ld (l64b8),a
	jp l6305
.l62c1
	ld a,(de)
	inc de
	ld (ix+#2a),a
	ld (ix+#29),a
	ld a,(de)
	inc de
	ld (ix+#2b),a
	jr l6305
.l62d0
	set 7,(ix+#00)
.l62d4
	set 3,(ix+#00)
	jr l6305
.l62da
	ld (ix+#2c),b
	jr l6305
.l62df
	ld (ix+#2c),#40
	jr l6305
.l62e5
	ld (ix+#2c),#c0
	jr l6305
.l62eb
	set 1,(ix+#00)
	jr l6305
.l62f1
	ld (ix+#1e),b
	jr l633f
.l62f6
	dec (ix+#1b)
	jp nz,l634c
	ld (ix+#00),b
	ld e,(ix+#02)
	ld d,(ix+#03)
.l6305
	ld a,(de)
	inc de
	and a
	jp m,l635d
	ld (ix+#1d),a
	ld c,a
	ld a,(ix+#2d)
	or a
	jr z,l6319
	ld a,c
	ld (l6194),a
.l6319
	ld l,(ix+#24)
	ld h,(ix+#25)
	ld a,(ix+#2e)
	or a
	jr nz,l632b
	ld (ix+#20),l
	ld (ix+#21),h
.l632b
	ld a,(hl)
	ld (ix+#28),a
	ld (ix+#1e),a
	ld (ix+#2e),b
	ld a,(ix+#1a)
	ld (ix+#1f),a
	set 5,(ix+#00)
.l633f
	ld a,(ix+#1c)
	ld (ix+#1b),a
	ld (ix+#02),e
	ld (ix+#03),d
	ret
.l634c
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l6359
	inc (ix+#1d)
	ret
.l6359
	dec (ix+#1d)
	ret
.l635d
	cp #b8
	jr c,l63ae
	add #20
	jr c,l638e
	add #10
	jr c,l6395
	add #10
	jr nc,l6386
	sla a
	ld c,a
	ld hl,l658a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld (ix+#14),a
	ld (ix+#10),a
	ld (ix+#15),h
	ld (ix+#11),h
	jp l6305
.l6386
	add #09
	ld (l61b9),a
	jp l6305
.l638e
	inc a
	ld (ix+#1c),a
	jp l6305
.l6395
	sla a
	ld c,a
	ld hl,(l64b9)
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#24),a
	ld (ix+#25),h
	dec hl
	ld a,(hl)
	ld (ix+#1a),a
	jp l6305
.l63ae
	and #7f
	ld hl,l620c
	sla a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l63bc
	ld c,(ix+#00)
	bit 5,c
	jr z,l63ee
	dec (ix+#1f)
	ld a,(ix+#1f)
	cp #ff
	jr nz,l63e8
	ld a,(ix+#1a)
	ld (ix+#1f),a
	ld l,(ix+#20)
	ld h,(ix+#21)
	inc hl
	ld a,(hl)
	cp #87
	jr z,l63e8
	ld (ix+#28),a
	ld (ix+#20),l
	ld (ix+#21),h
.l63e8
	ld a,(ix+#28)
	ld (ix+#1e),a
.l63ee
	ld hl,l64b8
	ld a,(ix+#1d)
	add (hl)
	ld e,a
	ld l,(ix+#14)
	ld h,(ix+#15)
	ld a,(hl)
	cp #87
	jr nz,l6408
	ld l,(ix+#10)
	ld h,(ix+#11)
	ld a,(hl)
.l6408
	inc hl
	ld (ix+#14),l
	ld (ix+#15),h
	add e
	add a
	ld e,a
	ld d,#00
	ld hl,l64ca
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld l,(ix+#2c)
	bit 6,l
	jr z,l646a
	ld h,a
	ld b,(ix+#29)
	sla b
	bit 7,l
	ld a,(ix+#2b)
	jr z,l6433
	bit 0,c
	jr nz,l6451
.l6433
	bit 5,l
	jr nz,l6443
	sub (ix+#2a)
	jr nc,l644e
	set 5,(ix+#2c)
	sub a
	jr l644e
.l6443
	add (ix+#2a)
	cp b
	jr c,l644e
	res 5,(ix+#2c)
	ld a,b
.l644e
	ld (ix+#2b),a
.l6451
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l645c
	dec d
.l645c
	add #a0
	jr c,l6468
.l6460
	sla e
	rl d
	add #18
	jr nc,l6460
.l6468
	add hl,de
	ex de,hl
.l646a
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,a
	jr z,l6495
	ld b,(ix+#19)
	djnz l6492
	ld c,(ix+#18)
	bit 7,c
	jr z,l6481
	dec b
.l6481
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	add hl,bc
	ld (ix+#0e),l
	ld (ix+#0f),h
	add hl,de
	ex de,hl
	jr l6495
.l6492
	ld (ix+#19),b
.l6495
	cpl
	and #03
.l6499 equ $ + 1
	ld a,#38
	jr nz,l64a6
	ld a,(l6194)
	xor #08
	ld (l61e2),a
	ld a,#07
.l64a6
	ld hl,l64c3
	xor (hl)
	and (ix+#2f)
	xor (hl)
	ld (hl),a
	ex de,hl
	srl h
	rr l
	ld a,(ix+#1e)
	ret
.l64be equ $ + 6
.l64bc equ $ + 4
.l64bb equ $ + 3
.l64b9 equ $ + 1
.l64b8
	db #00,#fd,#65,#01,#58,#00,#dd,#01
.l64c6 equ $ + 6
.l64c5 equ $ + 5
.l64c4 equ $ + 4
.l64c3 equ $ + 3
.l64c2 equ $ + 2
.l64c0
	db #59,#00,#00,#38,#0c,#00,#0d,#00
.l64c9 equ $ + 1
	db #00,#00
.l64ca
	dw #ee0e,#170e,#4d0d,#8e0c
	dw #d90b,#2f0b,#8e0a,#f709
	dw #6709,#e008,#6108,#e807
	dw #7707,#0b07,#a606,#4706
	dw #ec05,#9705,#4705,#fb04
	dw #b304,#7004,#3004,#f403
	dw #bb03,#8503,#5303,#2303
	dw #f602,#cb02,#a302,#7d02
	dw #5902,#3802,#1802,#fa01
	dw #dd01,#c201,#a901,#9101
	dw #7b01,#6501,#5101,#3e01
	dw #2c01,#1c01,#0c01,#fd00
	dw #ee00,#e100,#d400,#c800
	dw #bd00,#b200,#a800,#9f00
	dw #9600,#8e00,#8600,#7e00
	dw #7700,#7000,#6a00,#6400
	dw #5e00,#5900,#5400,#4f00
	dw #4b00,#4700,#4300,#3f00
	dw #3b00,#3800,#3500,#3200
	dw #2f00,#2c00,#2a00,#2700
	dw #2500,#2300,#2100,#1f00
	dw #1d00,#1c00,#1a00,#1900
	dw #1700,#1600,#1500,#1300
	dw #1200,#1100,#1000,#0f00
.l658a
	dw l65ac,l65ae,l65b2,l65b6
	dw l65bc,l65c2,l65c6,l65ca
	dw l65ce,l65d2,l65d6,l65da
	dw l65de,l65e2,l65e6
.l65ae equ $ + 6
.l65ac equ $ + 4
	db #00,#00,#00,#00,#00,#87,#00,#03
.l65b6 equ $ + 6
.l65b2 equ $ + 2
	db #07,#87,#00,#04,#07,#87,#00,#03
.l65bc equ $ + 4
	db #07,#0c,#87,#00,#00,#04,#07,#0c
.l65c6 equ $ + 6
.l65c2 equ $ + 2
	db #87,#00,#07,#0c,#0f,#87,#07,#0c
.l65ce equ $ + 6
.l65ca equ $ + 2
	db #10,#87,#03,#07,#0c,#87,#04,#07
.l65d6 equ $ + 6
.l65d2 equ $ + 2
	db #0c,#87,#00,#0c,#87,#00,#00,#04
.l65de equ $ + 6
.l65da equ $ + 2
	db #87,#00,#00,#03,#87,#00,#00,#03
.l65e6 equ $ + 6
.l65e2 equ $ + 2
	db #87,#00,#00,#05,#87,#00,#00,#00
	db #00,#0c,#87,#00
.l65ec
	db #01
.l65ed
	dw l690d,l691f,l6949
	db #00,#00
.l65f5
	dw l65fd,#0000,#0000,#0000
.l65fd
	dw l660e,l661e,l662e,l663e
	dw l664e,l665e,l666e,l667e
.l660e equ $ + 1
	db #02,#0f,#0a,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#87,#00,#00,#00,#00
.l661e equ $ + 1
	db #04,#0e,#0d,#0c,#0b,#0a,#87,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l662e equ $ + 1
	db #01,#0d,#0d,#87,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l663e equ $ + 1
	db #04,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#09,#0a,#0b,#0c,#0d,#87
.l664e equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#0a
	db #0b,#0c,#87,#00,#00,#00,#00,#00
.l665e equ $ + 1
	db #01,#0f,#0e,#0b,#0b,#0a,#09,#08
	db #08,#87,#00,#00,#00,#00,#00,#00
.l666e equ $ + 1
	db #02,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#87
.l667e equ $ + 1
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
	db #00,#06,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#06,#01,#38,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#06,#01,#38,#00,#00,#00,#00
	db #00,#06,#01,#60,#00,#06,#01,#40
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #e0,#80,#87,#00,#00,#00,#00,#00
.l670d
	db #d0,#88,#01,#01,#82,#c0,#8a,#e7
	db #18,#e5,#8d,#00,#e3,#18,#e1,#18
	db #e3,#18,#8d,#10,#18,#87,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l672d
	db #d0,#88,#01,#01,#82,#c0,#8a,#e7
	db #14,#e5,#8d,#10,#e3,#16,#e1,#16
	db #e3,#16,#8d,#10,#16,#87,#00,#00
.l674c equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#ba
.l674d
	db #d1,#88,#01,#01,#82,#c0,#8a,#e7
	db #30,#e5,#33,#e3,#30,#e1,#30,#e3
	db #35,#30,#2e,#e7,#30,#e5,#37,#e3
	db #30,#e1,#30,#e3,#38,#37,#33,#e3
	db #30,#37,#3c,#e1,#30,#e3,#2e,#e1
	db #2e,#e3,#2b,#32,#ff,#30,#e3,#80
	db #87,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l678d
	db #e1,#80,#d1,#88,#01,#01,#82,#c0
	db #8a,#e7,#30,#e5,#33,#e3,#30,#e1
	db #30,#e3,#35,#30,#2e,#e7,#30,#e5
	db #37,#e3,#30,#e1,#30,#e3,#38,#37
	db #33,#e3,#30,#37,#3c,#e1,#30,#e3
	db #2e,#e1,#2e,#e3,#2b,#32,#ff,#30
	db #e1,#80,#87,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l67cd
	db #d1,#88,#01,#01,#82,#ce,#8a,#e7
	db #30,#e5,#33,#e3,#30,#e1,#30,#e3
	db #35,#30,#2e,#e7,#30,#e5,#37,#e3
	db #30,#e1,#30,#e3,#38,#37,#33,#e3
	db #30,#37,#3c,#e1,#30,#e3,#2e,#e1
	db #2e,#e3,#2b,#32,#ff,#30,#e3,#80
	db #87,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l680d
	db #d3,#88,#00,#00,#82,#c0,#8a,#ff
	db #80,#80,#0c,#d2,#e7,#0c,#f3,#84
	db #f0,#01,#0c,#e3,#18,#87,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l682d
	db #d5,#e3,#8d,#10,#d4,#88,#01,#02
	db #82,#c0,#8a,#e3,#37,#37,#e1,#37
	db #e3,#3a,#e1,#3a,#e3,#3a,#39,#39
	db #d5,#e3,#8d,#10,#d4,#e3,#37,#37
	db #e1,#37,#e3,#3a,#e1,#3a,#e3,#39
	db #e7,#37,#d5,#e3,#8d,#10,#e3,#d4
	db #e3,#33,#33,#33,#e1,#33,#e3,#35
	db #35,#e3,#35,#e1,#35,#e3,#35,#37
	db #37,#37,#e1,#35,#e3,#37,#e9,#37
	db #87,#00,#00,#00,#00,#00,#00,#00
.l687d
	db #d6,#88,#01,#01,#82,#c0,#8a,#e7
	db #0c,#e5,#18,#e3,#16,#e1,#16,#e3
	db #13,#16,#18,#e7,#0c,#e9,#18,#e1
	db #18,#e3,#13,#16,#18,#e7,#08,#e5
	db #14,#e3,#16,#e1,#16,#e3,#13,#16
	db #0c,#f1,#84,#01,#01,#18,#e1,#18
	db #e3,#13,#11,#0f,#87,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l68bd
	db #e0,#80,#d5,#e3,#8d,#10,#d4,#88
	db #01,#02,#82,#c0,#8a,#e3,#37,#37
	db #e0,#37,#e3,#3a,#e1,#3a,#e3,#3a
	db #39,#39,#d5,#e3,#8d,#10,#d4,#e3
	db #37,#37,#e1,#37,#e3,#3a,#e1,#3a
	db #e3,#39,#e7,#37,#d5,#e3,#8d,#10
	db #e3,#d4,#e3,#33,#33,#33,#e1,#33
	db #e3,#35,#35,#e3,#35,#e1,#35,#e3
	db #35,#37,#37,#37,#e1,#35,#e3,#37
	db #e7,#37,#e1,#80,#87,#00,#00,#00
.l690d
	dw l674c,l674d,l674d,l674d
	dw l682d,l682d,l67cd,l67cd
.l691f equ $ + 2
	dw #0000,l695c,l680d,l670d
	dw l670d,l672d,l670d,l670d
	dw l670d,l672d,l670d,l687d
	dw l687d,l670d,l670d,l672d
	dw l670d,l670d,l670d,l672d
.l6949 equ $ + 4
	dw l670d,#0000,l678d,l678d
	dw l678d,l678d,l68bd,l68bd
	dw l678d,l678d
.l695c equ $ + 3
	db #00,#00,#00,#ff,#80,#80,#80,#80
	db #87

;
.music_info
	db "Love (19xx)(Micro Escape)()",0
	db "",0

	read "music_end.asm"
