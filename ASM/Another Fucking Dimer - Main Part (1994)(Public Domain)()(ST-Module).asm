; Music of Another Fucking Dimer - Main Part (1994)(Public Domain)()(ST-Module)
; Ripped by Megachur the 09/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ANOTFDMP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #7000

	read "music_header.asm"

	jp l700b
	jp l7093
	jp l7077
	db #66,#04
;
.init_music
.l700b
;
	ld b,#03
	ld ix,l73da
	ld iy,l7306
	ld de,#001c
.l7018
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
	djnz l7018
	ld a,#06
	ld (l70bb),a
	ld a,d
	ld (l70cf),a
	inc a
	ld (l70b6),a
	ld a,#38
	ld (l70c0),a
	ld a,#ff
	ld (l7302),a
	ld (l7303),a
	ld (l7304),a
	ld (l7305),a
	ld a,#0c
	ld c,d
	call l72e4
	ld a,#0d
	ld c,d
	jp l72e4
;
.stop_music
.l7077
;
	ld a,#07
	ld c,#3f
	call l72e4
	ld a,#08
	ld c,#00
	call l72e4
	ld a,#09
	ld c,#00
	call l72e4
	ld a,#0a
	ld c,#00
	jp l72e4
;
.play_music
.l7093
;
	ld hl,l70b6
	dec (hl)
	ld ix,l73da
	ld bc,l73e8
	call l7149
	ld ix,l73f6
	ld bc,l7404
	call l7149
	ld ix,l7412
	ld bc,l7420
	call l7149
.l70b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l70bf
.l70bb equ $ + 1
	ld a,#00
	ld (l70b6),a
.l70c0 equ $ + 1
.l70bf
	ld a,#00
	ld hl,l7303
	cp (hl)
	jr z,l70ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l72e4
.l70cf equ $ + 1
.l70ce
	ld a,#00
	ld hl,l7302
	cp (hl)
	jr z,l70dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l72e4
.l70de equ $ + 1
.l70dd
	ld a,#00
	ld hl,l7304
	cp (hl)
	jr z,l70ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l72e4
.l70ed equ $ + 1
.l70ec
	ld a,#00
	ld hl,l7305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l72e4
.l70fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l71fa
.l7109
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
	jp l72e4
.l7123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l7138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l7138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l715c
.l7149
	ld a,(l70b6)
	or a
	jp nz,l71fa
	dec (ix+#06)
	jp nz,l71fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l715c
	ld a,(hl)
	or a
	jr z,l70fa
	cp #fe
	jr z,l7109
	cp #ff
	jr z,l7123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l730c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l7198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l7198
	and #7f
	ld (ix+#06),a
	jr l71eb
.l7198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l71ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l71ac
	add a
	add a
	add a
	ld e,a
	ld hl,l7442
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
	jr z,l71eb
	cp #f0
	jp z,l72a0
	cp #d0
	jp z,l72bc
	cp #b0
	jp z,l72c4
	cp #80
	jp nc,l72cc
	cp #10
	jr nz,l71eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l71eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l71fa
	ld a,(ix+#17)
	or a
	jr nz,l720e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l720e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l7239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l730c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l7239
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
	call l72e4
	ld c,h
	ld a,(ix+#03)
	call l72e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l7277
	and #0f
	sub (ix+#0a)
	jr nc,l726d
	xor a
.l726d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l72e4
.l7277
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
	jr z,l7294
	ld b,a
	ld a,c
	ld (l70cf),a
	ld a,b
	sub #40
.l7294
	ld (l729b),a
	ld a,(l70c0)
.l729b equ $ + 1
	bit 0,a
	ld (l70c0),a
	ret
.l72a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l74c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l71eb
.l72bc
	inc hl
	ld a,(hl)
	ld (l70bb),a
	jp l71eb
.l72c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l71eb
.l72cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l70ed),a
	inc hl
	ld a,(hl)
	ld (l70de),a
	jp l71eb
.l72e4
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
.l7305 equ $ + 3
.l7304 equ $ + 2
.l7303 equ $ + 1
.l7302
	db #ff,#ff,#ff,#ff
.l7306
	dw l7742,l775a,l7772
.l730c
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
	db #00,#00,#00,#00
.l73da
	db #00,#00,#00,#01,#08,#00,#00,#00
.l73e8 equ $ + 6
	db #00,#00,#00,#df,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l73f6 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#02,#03
	db #09,#00,#00,#00,#00,#00,#00,#e7
.l7404 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7412
	db #00,#00,#04,#05,#0a,#00,#00,#00
.l7420 equ $ + 6
	db #00,#00,#00,#ef,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#53,#54
	db #2d,#4d,#6f,#64,#75,#6c,#65,#2e
.l7442
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
	db #e2,#74,#22,#75,#42,#75,#0c,#00
	db #25,#c2,#21,#23,#fc,#70,#00,#ff
	db #62,#75,#a2,#75,#c2,#75,#00,#00
	db #e2,#75,#22,#76,#c2,#75,#10,#10
	db #da,#6e,#a6,#6f,#74,#6d,#50,#30
	db #e4,#aa,#2b,#75,#dc,#5b,#b0,#18
	db #42,#76,#82,#76,#a2,#76,#00,#00
	db #c2,#76,#02,#77,#22,#77,#00,#00
	db #e5,#44,#dc,#6e,#dc,#6e,#00,#00
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
	db #dc,#6e,#dc,#6e,#dc,#6e,#00,#00
.l74c2
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
	db #dc,#6e,#dc,#6e,#dc,#6e,#dc,#6e
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
	db #00,#00,#fd,#ff,#fa,#ff,#fd,#ff
	db #00,#00,#03,#00,#06,#00,#03,#00
	db #00,#00,#fd,#ff,#fa,#ff,#fd,#ff
	db #00,#00,#03,#00,#06,#00,#03,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0d,#0e,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#08,#07,#06,#05,#04,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#00,#00,#00
	db #05,#00,#00,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#2f,#00,#5e,#00,#8d,#00
	db #bc,#00,#eb,#00,#1a,#01,#49,#01
	db #78,#01,#a7,#01,#d6,#01,#05,#02
	db #34,#02,#63,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #06,#05,#04,#03,#02,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#06,#0c,#12,#18,#1e,#04,#0a
	db #10,#16,#1c,#02,#08,#0e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7742
	db #00,#8a,#77,#00,#b3,#77,#00,#8a
	db #77,#00,#8a,#77,#00,#8a,#77,#00
	db #8a,#77,#00,#8a,#77,#80,#48,#77
.l775a
	db #00,#dc,#77,#00,#df,#77,#00,#e2
	db #77,#00,#e2,#77,#00,#e2,#77,#00
	db #28,#78,#00,#28,#78,#80,#60,#77
.l7772
	db #00,#38,#78,#00,#3b,#78,#00,#bc
	db #78,#00,#3d,#79,#00,#3d,#79,#00
	db #3b,#78,#00,#3b,#78,#80,#78,#77
	db #22,#10,#c4,#14,#25,#08,#c4,#19
	db #27,#02,#c4,#16,#28,#02,#c4,#15
	db #27,#02,#c4,#16,#25,#02,#c4,#19
	db #22,#10,#c4,#14,#25,#08,#c4,#19
	db #20,#04,#c4,#16,#21,#04,#c4,#1f
	db #ff,#22,#10,#c4,#14,#25,#08,#c4
	db #19,#27,#02,#c4,#16,#28,#02,#c4
	db #15,#27,#02,#c4,#16,#25,#02,#c4
	db #19,#22,#10,#c4,#14,#25,#08,#c4
	db #19,#20,#04,#c4,#16,#21,#04,#c4
	db #1f,#ff,#00,#40,#ff,#00,#40,#ff
	db #2e,#02,#01,#2e,#02,#08,#2e,#02
	db #07,#2e,#02,#01,#2e,#83,#2e,#83
	db #2e,#82,#2e,#82,#2e,#02,#08,#2e
	db #02,#07,#2e,#02,#01,#2e,#83,#2e
	db #83,#2e,#82,#2e,#82,#2e,#02,#08
	db #2e,#02,#07,#2e,#02,#01,#2e,#83
	db #2e,#83,#2e,#82,#2e,#82,#2e,#02
	db #08,#2e,#02,#07,#2e,#02,#01,#2e
	db #83,#2e,#83,#2e,#82,#ff,#46,#0e
	db #04,#52,#82,#50,#88,#4d,#83,#50
	db #83,#4b,#82,#4d,#a0,#ff,#00,#40
	db #ff,#ba,#03,#b5,#03,#ae,#03,#b5
	db #03,#ba,#03,#b5,#03,#ae,#03,#b5
	db #03,#ba,#03,#b5,#03,#ae,#03,#b5
	db #03,#ba,#03,#b5,#03,#ae,#03,#b5
	db #03,#bd,#03,#b8,#03,#b5,#03,#b8
	db #03,#bd,#03,#b8,#03,#b5,#03,#b8
	db #03,#bf,#03,#ba,#03,#b7,#03,#ba
	db #03,#bf,#03,#ba,#03,#b7,#03,#ba
	db #03,#c1,#03,#bd,#03,#ba,#03,#c1
	db #03,#bd,#03,#ba,#03,#c1,#03,#bd
	db #03,#ba,#03,#c1,#03,#bd,#03,#ba
	db #03,#c1,#03,#bd,#03,#ba,#03,#c1
	db #03,#bf,#03,#c1,#03,#ba,#03,#c1
	db #03,#bf,#03,#c1,#03,#ba,#03,#c1
	db #03,#bd,#03,#bf,#03,#c1,#03,#bd
	db #03,#bf,#03,#c1,#03,#c4,#03,#c1
	db #03,#ff,#ba,#03,#b5,#03,#ae,#03
	db #b5,#03,#ba,#03,#b5,#03,#ae,#03
	db #b5,#03,#ba,#03,#b5,#03,#ae,#03
	db #b5,#03,#ba,#03,#b5,#03,#ae,#03
	db #b5,#03,#bd,#03,#b8,#03,#b5,#03
	db #b8,#03,#bd,#03,#b8,#03,#b5,#03
	db #b8,#03,#bf,#03,#ba,#03,#b7,#03
	db #ba,#03,#bf,#03,#ba,#03,#b7,#03
	db #ba,#03,#c1,#03,#bd,#03,#ba,#03
	db #c1,#03,#bd,#03,#ba,#03,#c1,#03
	db #bd,#03,#ba,#03,#c1,#03,#bd,#03
	db #ba,#03,#c1,#03,#bd,#03,#ba,#03
	db #c1,#03,#bf,#03,#c1,#03,#ba,#03
	db #c1,#03,#bf,#03,#c1,#03,#ba,#03
	db #c1,#03,#bd,#03,#bf,#03,#c1,#03
	db #bd,#03,#bf,#03,#c1,#03,#c4,#03
	db #c1,#03,#ff,#46,#0e,#04,#46,#82
	db #4d,#88,#4b,#83,#49,#83,#4b,#82
	db #4d,#82,#46,#84,#46,#84,#46,#82
	db #4b,#84,#49,#84,#4b,#82,#48,#84
	db #49,#82,#48,#84,#ff
;
.music_info
	db "Another Fucking Dimer - Main Part (1994)(Public Domain)()",0
	db "ST-Module",0

	read "music_end.asm"
