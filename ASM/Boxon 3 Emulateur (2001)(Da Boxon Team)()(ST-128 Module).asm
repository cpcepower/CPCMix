; Music of Boxon 3 Emulateur (2001)(Da Boxon Team)()(ST-128 Module)
; Ripped by Megachur the 05/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BOXON3EM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 05
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #9100

	read "music_header.asm"

	jp l9109
	jp l919d
	jp l9181
;
.init_music
.l9109
;
	xor a
	ld hl,l96b4
	call l917a
	ld hl,l96e2
	call l917a
	ld hl,l9710
	call l917a
	ld ix,l96b0
	ld iy,l973a
	ld de,#002e
	ld b,#03
.l9129
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
	djnz l9129
	ld hl,l95c9
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
	ld (l95c5),hl
	ld (l95c7),hl
	ld a,#0c
	ld c,d
	call l95a5
	ld a,#0d
	ld c,d
	jp l95a5
.l917a
	ld b,#2a
.l917c
	ld (hl),a
	inc hl
	djnz l917c
	ret
;
.stop_music
.l9181
;
	ld a,#07
	ld c,#3f
	call l95a5
	ld a,#08
	ld c,#00
	call l95a5
	ld a,#09
	ld c,#00
	call l95a5
	ld a,#0a
	ld c,#00
	jp l95a5
;
.play_music
.l919d
;
	ld hl,l95cb
	dec (hl)
	ld ix,l96b0
	ld bc,l96be
	call l923f
	ld ix,l96de
	ld bc,l96ec
	call l923f
	ld ix,l970c
	ld bc,l971a
	call l923f
	ld hl,l95c4
	ld de,l95cb
	ld b,#06
	call l921c
	ld b,#07
	call l921c
	ld b,#0b
	call l921c
	ld b,#0d
	call l921c
	ld de,l95cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l96cf
	call l91f5
	ld hl,l96fd
	call l91f5
	ld hl,l972b
.l91f5
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
	jr nz,l920a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l920a
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
.l921c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l95a5
.l9227
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l95a5
.l923f
	ld a,(l95cb)
	or a
	jp nz,l92f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l92f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l9227
	or a
	jp z,l92ec
	ld r,a
	and #7f
	cp #10
	jr c,l92c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l943f
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
	jr z,l92a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l92a0
	rrca
	ld c,a
	ld hl,l9740
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
	jr z,l92bf
	ld (ix+#1e),b
.l92bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l92e0
.l92c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l95d0
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
	add e
	add h
	add l
	add (hl)
	add a
.l92e0
	ld a,d
	or a
	jr nz,l92ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l92ee
.l92ec
	ld a,(hl)
	inc hl
.l92ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l92f7
	ld a,(ix+#17)
	or a
	jr nz,l930d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l930d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l9323
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l9323
	ld a,(ix+#0d)
	or a
	jr z,l9331
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l934f
.l9331
	ld a,(ix+#1a)
	or a
	jp z,l9356
	ld c,a
	cp #03
	jr nz,l933e
	xor a
.l933e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l934f
	ld a,(ix+#18)
	dec c
	jr z,l934f
	ld a,(ix+#19)
.l934f
	add (ix+#07)
	ld b,d
	call l943f
.l9356
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l937e
	dec (ix+#1b)
	jr nz,l937e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l93b6
.l937e
	ld a,(ix+#29)
	or a
	jr z,l93b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l93ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l93a4
	ld (ix+#29),#ff
	jr l93ad
.l93a4
	cp (ix+#2b)
	jr nz,l93ad
	ld (ix+#29),#01
.l93ad
	ld b,d
	or a
	jp p,l93b3
	dec b
.l93b3
	ld c,a
	jr l93c1
.l93b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l93c1
	pop hl
	bit 7,(ix+#14)
	jr z,l93ca
	ld h,d
	ld l,d
.l93ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l95a5
	ld c,h
	ld a,(ix+#02)
	call l95a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l941d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l940c
	dec (ix+#09)
	jr nz,l940c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l9404
	xor a
	jr l9409
.l9404
	cp #10
	jr nz,l9409
	dec a
.l9409
	ld (ix+#1e),a
.l940c
	ld a,b
	sub (ix+#1e)
	jr nc,l9413
	xor a
.l9413
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l95a5
.l941d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l95cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l943b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l943b
	ld (l95cc),hl
	ret
.l943f
	ld hl,l95ee
	cp #61
	jr nc,l9449
	add a
	ld c,a
	add hl,bc
.l9449
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l9578
	ld (ix+#1e),a
	jp l92e0
	dec b
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l9471
	neg
.l9471
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
	jp l92e0
	dec b
	jr l948b
	inc b
.l948b
	call l9578
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l92e0
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
	jp l955d
	ld a,(hl)
	inc hl
	or a
	jr z,l94cd
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
.l94cd
	ld (ix+#29),a
	jp l92e0
	dec hl
	ld a,(hl)
	and #0f
	ld (l95cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l95ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l92e0
	ld a,(hl)
	or a
	jr z,l94fe
	call l957a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l92e0
.l94fe
	ld hl,#0101
	ld (l95ca),hl
	jp l92e0
	call l9578
	ld (ix+#1e),a
	jp l92e0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l9589
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l9589
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l92e0
	ld a,(hl)
	inc hl
	ld (l95c9),a
	jp l92e0
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
	jp l92e0
	call l9578
	add a
.l955d
	ld b,#00
	ld c,a
	push hl
	ld hl,l97c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l92e0
.l9578
	ld a,(hl)
	inc hl
.l957a
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
.l9589
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l9740
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l95a5
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
.l95c4
	ret
.l95cc equ $ + 7
.l95cb equ $ + 6
.l95ca equ $ + 5
.l95c9 equ $ + 4
.l95c7 equ $ + 2
.l95c5
	db #06,#30,#2d,#08,#06,#13,#02,#06
.l95cf equ $ + 2
.l95ce equ $ + 1
	db #30,#2d,#08
.l95d0
	dw #9453,#9466,#9465,#948a
	dw #9487,#949a,#94ab,#94d3
	dw #94ed,#94d3,#9507,#9510
	dw #9532,#953a,#9559
.l95ee
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
.l96b0 equ $ + 2
	dw #000f,#0008
.l96b4 equ $ + 2
	db #01,#08,#7b,#01,#00,#28,#00,#00
.l96be equ $ + 4
	db #00,#00,#00,#00,#c0,#99,#00,#9a
	db #20,#9a,#00,#00,#05,#1b,#00,#00
.l96cf equ $ + 5
	db #00,#00,#00,#00,#00,#02,#ab,#9b
	db #d9,#9a,#00,#f0,#00,#00,#00,#00
.l96de equ $ + 4
	db #00,#00,#01,#01,#09,#02,#03,#10
.l96e2
	db #b3,#00,#00,#35,#00,#00,#00,#00
.l96ec equ $ + 2
	db #60,#00,#e0,#97,#20,#98,#40,#98
	db #00,#00,#05,#1b,#00,#00,#00,#00
.l96fd equ $ + 3
	db #00,#00,#00,#01,#bd,#9c,#15,#9b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9710 equ $ + 6
.l970c equ $ + 2
	db #01,#01,#0a,#04,#05,#20,#77,#00
	db #00,#3c,#00,#00,#00,#00,#00,#00
.l971a
	db #40,#99,#80,#99,#40,#98,#00,#00
	db #05,#1b,#00,#00,#00,#01,#02,#00
.l972b equ $ + 1
	db #00,#02,#11,#9e,#51,#9b,#00,#c0
	db #00,#00,#00,#00,#00,#00,#01,#01
.l9740 equ $ + 6
.l973a
	db #a0,#9a,#dc,#9a,#18,#9b,#e0,#97
	db #20,#98,#40,#98,#00,#00,#b7,#36
	db #b7,#36,#b7,#36,#e5,#e5,#b7,#36
	db #b7,#36,#b7,#36,#e5,#e5,#b7,#36
	db #b7,#36,#b7,#36,#e5,#e5,#b7,#36
	db #b7,#36,#b7,#36,#e5,#e5,#60,#98
	db #a0,#98,#c0,#98,#16,#0a,#b7,#36
	db #b7,#36,#b7,#36,#e5,#e5,#b7,#36
	db #b7,#36,#b7,#36,#e5,#e5,#b7,#36
	db #b7,#36,#b7,#36,#e5,#e5,#b7,#36
	db #b7,#36,#b7,#36,#e5,#e5,#e0,#98
	db #20,#99,#40,#98,#16,#0a,#b7,#36
	db #b7,#36,#b7,#36,#e5,#e5,#40,#99
	db #80,#99,#40,#98,#00,#00,#e0,#97
	db #a0,#99,#40,#98,#00,#00,#b7,#36
	db #b7,#36,#b7,#36,#e5,#e5,#c0,#99
.l97c0 equ $ + 6
	db #00,#9a,#20,#9a,#00,#00,#b7,#36
	db #b7,#36,#40,#9a,#60,#9a,#b7,#36
	db #80,#9a,#b7,#36,#b7,#36,#b7,#36
	db #b7,#36,#b7,#36,#b7,#36,#b7,#36
	db #b7,#36,#b7,#36,#b7,#36,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0b,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#03,#00,#02,#00
	db #01,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#02,#00,#03,#00
	db #04,#00,#03,#00,#02,#00,#0f,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0d,#0d,#0d,#0d,#0d,#e0,#00
	db #d0,#00,#c0,#00,#b0,#00,#a0,#00
	db #90,#00,#80,#00,#70,#00,#60,#00
	db #50,#00,#40,#00,#30,#00,#20,#00
	db #10,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0d
	db #0b,#0a,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#05,#04,#04,#04,#03
	db #03,#03,#02,#02,#02,#02,#01,#01
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#a0,#00
	db #e0,#00,#00,#00,#20,#00,#40,#00
	db #60,#00,#a0,#00,#e0,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#80,#00
	db #a0,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#06,#05,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09,#09
	db #08,#06,#06,#07,#08,#09,#0b,#0a
	db #09,#06,#06,#08,#08,#07,#06,#05
	db #06,#07,#08,#0a,#0a,#09,#07,#06
	db #07,#08,#08,#0a,#09,#09,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#fd,#fd
	db #f9,#f9,#00,#00,#fd,#fd,#f9,#f9
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#00,#00
	db #fc,#fc,#f9,#f9,#00,#00,#fc,#fc
	db #f9,#f9,#00,#00,#fc,#fc,#f9,#f9
	db #00,#00,#fc,#fc,#f9,#f9,#00,#00
	db #fc,#fc,#f9,#f9,#00,#00,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#00,#54
	db #9b,#00,#54,#9b,#00,#54,#9b,#00
	db #54,#9b,#00,#77,#9b,#00,#54,#9b
	db #00,#77,#9b,#00,#54,#9b,#00,#77
	db #9b,#00,#54,#9b,#00,#54,#9b,#00
	db #9a,#9b,#00,#9a,#9b,#00,#9a,#9b
	db #00,#9a,#9b,#00,#9a,#9b,#00,#9a
	db #9b,#00,#9a,#9b,#00,#9a,#9b,#80
	db #af,#9a,#00,#be,#9b,#00,#be,#9b
	db #00,#c1,#9b,#00,#03,#9c,#00,#45
	db #9c,#00,#03,#9c,#00,#45,#9c,#00
	db #03,#9c,#00,#45,#9c,#00,#87,#9c
	db #00,#87,#9c,#00,#87,#9c,#00,#87
	db #9c,#00,#87,#9c,#00,#87,#9c,#00
	db #87,#9c,#00,#87,#9c,#00,#a2,#9c
	db #00,#a2,#9c,#80,#eb,#9a,#00,#be
	db #9b,#00,#e4,#9c,#00,#e4,#9c,#00
	db #e4,#9c,#00,#fd,#9c,#00,#16,#9d
	db #00,#2a,#9d,#00,#3e,#9d,#00,#52
	db #9d,#00,#66,#9d,#00,#66,#9d,#00
	db #6b,#9d,#00,#8f,#9d,#00,#6b,#9d
	db #00,#8f,#9d,#00,#b3,#9d,#00,#f6
	db #9d,#00,#42,#9e,#00,#f6,#9d,#80
	db #27,#9b,#21,#58,#2d,#02,#39,#50
	db #02,#38,#f1,#60,#21,#58,#2d,#02
	db #38,#f1,#40,#21,#58,#2d,#02,#39
	db #50,#02,#38,#f1,#60,#21,#58,#2d
	db #02,#38,#f1,#40,#ff,#1f,#58,#32
	db #02,#2b,#50,#02,#38,#f1,#60,#1f
	db #58,#32,#02,#38,#f1,#40,#1f,#58
	db #32,#02,#2b,#50,#02,#38,#f1,#60
	db #1f,#58,#32,#02,#38,#f1,#40,#ff
	db #21,#58,#2d,#02,#39,#50,#02,#38
	db #f1,#60,#21,#58,#2d,#02,#38,#f1
	db #20,#21,#58,#2d,#02,#26,#58,#22
	db #04,#38,#f1,#20,#24,#58,#26,#06
	db #38,#f1,#40,#ff,#00,#20,#ff,#45
	db #01,#10,#c5,#00,#cc,#00,#c5,#00
	db #c5,#00,#cc,#00,#c5,#00,#c5,#00
	db #cd,#00,#c5,#00,#c5,#00,#ca,#00
	db #c5,#00,#c5,#00,#cc,#00,#ca,#00
	db #c5,#00,#c5,#00,#cc,#00,#c5,#00
	db #c5,#00,#cc,#00,#c5,#00,#c5,#00
	db #cd,#00,#c5,#00,#c5,#00,#ca,#00
	db #c5,#00,#c5,#00,#cc,#00,#ca,#00
	db #ff,#45,#01,#10,#c5,#00,#cc,#00
	db #c5,#00,#c5,#00,#cc,#00,#c5,#00
	db #c5,#00,#cd,#00,#c5,#00,#c5,#00
	db #ca,#00,#c5,#00,#c5,#00,#cc,#00
	db #ca,#00,#c5,#00,#c5,#00,#cc,#00
	db #c5,#00,#c5,#00,#cc,#00,#c5,#00
	db #c5,#00,#ca,#00,#c5,#00,#c5,#00
	db #c8,#00,#c5,#00,#c5,#00,#c7,#00
	db #c5,#00,#ff,#43,#01,#10,#ca,#00
	db #ca,#00,#c3,#00,#ca,#00,#ca,#00
	db #c3,#00,#ca,#00,#c3,#00,#cb,#00
	db #cb,#00,#c3,#00,#c8,#00,#c8,#00
	db #c3,#00,#ca,#00,#c3,#00,#ca,#00
	db #ca,#00,#c3,#00,#ca,#00,#ca,#00
	db #c3,#00,#ca,#00,#c3,#00,#cb,#00
	db #cb,#00,#c3,#00,#c8,#00,#c8,#00
	db #c3,#00,#ca,#00,#ff,#00,#02,#4c
	db #0f,#43,#4c,#00,#04,#4c,#00,#04
	db #4c,#00,#04,#4d,#0f,#45,#4d,#00
	db #04,#4a,#0f,#42,#4c,#0f,#23,#ff
	db #45,#01,#10,#d1,#00,#d1,#00,#c5
	db #00,#d1,#00,#d1,#00,#c5,#00,#c5
	db #00,#d2,#00,#c5,#00,#d2,#00,#cf
	db #00,#c5,#00,#cf,#00,#d1,#00,#c5
	db #00,#d1,#00,#c5,#00,#d1,#00,#c5
	db #00,#c5,#00,#d1,#00,#c5,#00,#c5
	db #00,#d2,#00,#c5,#00,#c5,#00,#cf
	db #00,#c5,#00,#c5,#00,#d1,#00,#c5
	db #00,#ff,#51,#d1,#40,#4c,#d0,#04
	db #51,#d0,#04,#4c,#d0,#04,#51,#d0
	db #04,#4c,#d0,#04,#51,#d0,#04,#4c
	db #d0,#04,#ff,#4f,#d1,#40,#4a,#d0
	db #04,#4f,#d0,#04,#4a,#d0,#04,#4f
	db #d0,#04,#4a,#d0,#04,#4f,#d0,#04
	db #4a,#d0,#04,#ff,#45,#a1,#00,#14
	db #03,#12,#01,#03,#12,#01,#03,#12
	db #01,#03,#12,#01,#4c,#a0,#08,#ff
	db #4a,#a1,#00,#14,#02,#12,#01,#02
	db #12,#01,#02,#12,#01,#02,#12,#01
	db #43,#a0,#08,#ff,#45,#a1,#00,#14
	db #03,#12,#01,#03,#12,#01,#03,#12
	db #01,#03,#12,#01,#51,#a0,#08,#ff
	db #4f,#a1,#00,#14,#02,#12,#01,#02
	db #12,#01,#02,#12,#01,#02,#12,#01
	db #43,#a0,#08,#ff,#45,#a1,#00,#20
	db #ff,#45,#01,#10,#c7,#00,#48,#00
	db #04,#48,#00,#02,#47,#00,#02,#45
	db #00,#04,#45,#00,#02,#48,#00,#04
	db #48,#00,#04,#47,#00,#02,#43,#00
	db #04,#43,#00,#02,#ff,#45,#01,#10
	db #c7,#00,#48,#00,#04,#48,#00,#02
	db #47,#00,#02,#45,#00,#04,#45,#00
	db #02,#4c,#00,#04,#4c,#00,#04,#4a
	db #00,#02,#48,#00,#04,#43,#00,#02
	db #ff,#4c,#cb,#30,#4c,#cb,#13,#4c
	db #cb,#20,#4c,#cb,#15,#4c,#cb,#13
	db #4c,#cb,#20,#4c,#cb,#15,#4c,#cb
	db #13,#4c,#cb,#20,#4c,#cb,#15,#4c
	db #cb,#13,#4c,#cb,#20,#4c,#cb,#15
	db #4c,#cb,#13,#4c,#cb,#20,#4c,#cb
	db #15,#4c,#cb,#13,#4c,#cb,#20,#4c
	db #cb,#15,#4c,#cb,#13,#4c,#cb,#20
	db #4c,#cb,#25,#ff,#4c,#c1,#30,#4c
	db #cb,#13,#4c,#cb,#20,#4c,#cb,#15
	db #4c,#cb,#13,#4c,#cb,#20,#4c,#cb
	db #15,#4c,#cb,#13,#4c,#cb,#20,#4c
	db #cb,#15,#4c,#cb,#13,#4c,#cb,#20
	db #4c,#cb,#15,#4c,#cb,#13,#4c,#cb
	db #20,#4c,#cb,#15,#4c,#cb,#13,#f3
	db #08,#00,#02,#12,#01,#02,#12,#01
	db #02,#12,#01,#02,#12,#01,#02,#12
	db #01,#02,#12,#01,#02,#12,#01,#ff
	db #4c,#c1,#30,#4c,#cb,#13,#4c,#cb
	db #20,#4c,#cb,#15,#4c,#cb,#13,#4c
	db #cb,#20,#4c,#cb,#15,#4c,#cb,#13
	db #4c,#cb,#20,#4c,#cb,#15,#4c,#cb
	db #13,#4c,#cb,#20,#4c,#cb,#15,#4c
	db #cb,#13,#4c,#cb,#20,#4c,#cb,#15
	db #4c,#cb,#13,#4c,#cb,#20,#4c,#cb
	db #15,#4c,#cb,#13,#4c,#cb,#20,#4c
	db #cb,#25,#ff
;
.music_info
	db "Boxon 3 Emulateur (2001)(Da Boxon Team)()",0
	db "ST-128 Module",0

	read "music_end.asm"
