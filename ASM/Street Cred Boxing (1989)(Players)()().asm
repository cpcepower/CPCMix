; Music of Street Cred Boxing (1989)(Players)()()
; Ripped by Megachur the 19/03/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STREETCB.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 19
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #0040

	read "music_header.asm"

	jp l0183	; init music
	jp l025a	; play music
.l004a equ $ + 4
.l0049 equ $ + 3
.l0048 equ $ + 2
.music_end equ $ + 1
.l0047 equ $ + 1
.l0046
	db #00,#01,#00,#00,#00,#00,#00,#00
.l0055 equ $ + 7
	db #00,#00,#30,#30,#30,#30,#00,#0f
.l0059 equ $ + 3
.l0058 equ $ + 2
.l0057 equ $ + 1
.l0056
	db #00,#00,#00,#00,#00
.l005b
	ld a,(l0057)
	and a
	ld b,a
	ret z
	ld a,(l0059)
	cp #80
	jp z,l0084
	ld a,(l0058)
	dec a
	ld (l0058),a
	ret nz
	ld a,(l0059)
	ld (l0058),a
	ld a,(l0055)
	add b
	bit 4,a
	jp nz,l0093
	ld (l0055),a
	ret
.l0084
	ld a,b
	cp #01
	ld a,#0f
	jp z,l008d
	xor a
.l008d
	ld (l0055),a
	jp l0093
.l0093
	xor a
	ld (l0057),a
	ld a,(l0056)
	and a
	jp nz,l0226
	ret
.l009f
	ld a,#00
	ld (l0055),a
	ld a,#01
.l00a6
	ld (l0057),a
	inc hl
	ld a,(hl)
	ld (l0059),a
	ld (l0058),a
	inc hl
	jp l0579
.l00b5
	ld a,#0f
	ld (l0055),a
	ld a,#ff
	jp l00a6
.l00bf
	ld a,h
.l00c0
	push af
	ld c,l
	cp #07
	jp nz,l00cb
	res 7,c
	res 6,c
.l00cb
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	out (c),c
	xor a
	ld b,#f6
	out (c),a
	ret
.l00ed equ $ + 7
.l00ec equ $ + 6
.l00e7 equ $ + 1
.l00e6
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l00f3 equ $ + 5
.l00f1 equ $ + 3
.l00f0 equ $ + 2
.l00ef equ $ + 1
.l00ee
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#01
	db #00,#08,#04,#b3,#09,#01,#b3,#09
.l011c equ $ + 6
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.l011e
	db #00,#00,#00,#0f,#01,#01,#02,#01
	db #ff,#00,#00,#02,#03,#09,#00,#00
	db #01,#00,#00,#00,#00,#00,#ef,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0149 equ $ + 3
.l0147 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#0f,#0a
	db #01,#02,#02,#ff,#00,#00,#04,#05
	db #0a,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#df,#ff,#ff,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
.l0177
	ld a,#0f
	ld (l0055),a
	xor a
	ld (l0057),a
	ld (l0056),a
;
.init_music
.l0183
;
	call l022e
	ld a,(l0049)
	cp #ff
	jp nz,l0192
	inc a
	ld (l0049),a
.l0192
	ld a,#01
	ld (l00f3),a
	ld (l011e),a
	ld (l0149),a
	xor a
	ld (l0048),a
	push ix
	ld ix,l00f1
	ld a,(l0049)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l0997
	add hl,de
	ld (l01c3),hl
	inc hl
	inc hl
	ld (l01cd),hl
	inc hl
	inc hl
	ld (l01d7),hl
.l01c3 equ $ + 1
	ld hl,(l09b3)
	call l01fc
	ld ix,l011c
.l01cd equ $ + 1
	ld hl,(l09c6)
	call l01fc
	ld ix,l0147
.l01d7 equ $ + 1
	ld hl,(l09cb)
	call l01fc
	ld a,#01
	ld (l0047),a
	ld h,#07
	ld l,#f8
	call l00bf
	ld a,(l0049)
	cp #01
	pop ix
	ret
.l01f0	; test player
	halt
	call l025a
	ld a,(l0047)
	and a
	jp nz,l01f0
	ret
.l01fc
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l067e
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ret
.l0226
	call l022e
	xor a
	ld (l0047),a
	ret
.l022e
	ld h,#07
	ld l,#ff
	call l00bf
	ld hl,l00e6
	ld de,l00e7
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#f8
	ld (l00ed),a
.l0247
	ld b,#0b
	ld h,#00
	ld de,l00e6
.l024e
	ld a,(de)
	ld l,a
	push bc
	call l00bf
	pop bc
	inc h
	inc de
	djnz l024e
	ret
;
.play_music
.l025a
;
	ld a,(l0046)
	and a
	jp z,l028a
	ld b,a
	xor a
	ld (l0046),a
	ld a,b
	cp #ff
	jp z,l0226
	cp #fe
	jp nz,l0283
	ld a,#01
	ld (l0056),a
	ld a,#ff
	ld (l0057),a
	ld a,#0a
	ld (l0059),a
	jp l028a
.l0283
	dec a
	ld (l0049),a
	jp l0177
.l028a
	call l005b
	ld a,(l0047)
	and a
	jr z,l02ec
	push ix
	ld ix,l00f1
	bit 7,(ix+#0c)
	call z,l02ed
	ld ix,l011c
	bit 7,(ix+#0c)
	call z,l02ed
	ld ix,l0147
	bit 7,(ix+#0c)
	call z,l02ed
	ld a,(l0055)
	cpl
	and #0f
	ld b,a
	ld a,(l0048)
	and a
	ld a,#10
	jp nz,l02ce
	ld a,(l00ee)
	sub b
	jp nc,l02ce
	xor a
.l02ce
	ld (l00ee),a
	ld a,(l00ef)
	sub b
	jp nc,l02d9
	xor a
.l02d9
	ld (l00ef),a
	ld a,(l00f0)
	sub b
	jp nc,l02e4
	xor a
.l02e4
	ld (l00f0),a
	call l0247
	pop ix
.l02ec
	ret
.l02ed
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l0477
.l02f6
	ld a,(ix+#0c)
	and #03
	jp z,l03b6
	cp #01
	jp z,l0310
	cp #02
	jp z,l0350
	cp #03
	jp z,l039a
	jp l03e7
.l0310
	ld a,(ix+#0b)
	and a
	jr z,l031c
	dec (ix+#0b)
	jp l03e7
.l031c
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l033d
	jr nc,l0337
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l03e7
.l0337
	ld a,(ix+#05)
	ld (ix+#04),a
.l033d
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l03e7
.l0350
	ld a,(ix+#25)
	and a
	jr z,l035c
	dec (ix+#25)
	jp l03e7
.l035c
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l037b
	ld b,(ix+#26)
	cp b
	jr z,l0388
	jr c,l0382
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l03e7
.l037b
	ld (ix+#04),#00
	jp l0388
.l0382
	ld a,(ix+#26)
	ld (ix+#04),a
.l0388
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l03e7
.l039a
	ld a,(ix+#27)
	and a
	jr z,l03a5
	dec (ix+#27)
	jr l03e7
.l03a5
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l03e7
.l03b6
	ld a,(ix+#29)
	and a
	jr z,l03c1
	dec (ix+#29)
	jr l03e7
.l03c1
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l03d7
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l03e7
.l03d7
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l03e7
.l03e7
	ld a,(ix+#04)
	ld hl,l00e6
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call l04f6
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l0423
	ld a,(ix+#11)
	ld (ix+#10),a
.l0423
	ld a,(ix+#1a)
	cp #ff
	jr z,l0473
	and a
	jr z,l0432
	dec (ix+#1a)
	jr nz,l0473
.l0432
	dec (ix+#1f)
	jr nz,l0445
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#1c)
	xor #01
	ld (ix+#1c),a
.l0445
	bit 0,(ix+#1c)
	ld b,(ix+#1b)
	ld a,(ix+#1d)
	jr z,l0454
	add b
	jr l0455
.l0454
	sub b
.l0455
	ld (ix+#1d),a
	ld c,a
	ld b,#ff
	bit 7,a
	jr nz,l0461
	ld b,#00
.l0461
	ld hl,l00e6
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
.l0473
	ld a,(ix+#02)
	ret
.l0477
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (ix+#10),#00
.l0481
	ld a,(hl)
	cp #60
	jr z,l04f4
	cp #61
	jp z,l0582
	cp #64
	jp z,l0545
	cp #65
	jp z,l0556
	cp #fc
	jp z,l009f
	cp #fd
	jp z,l00b5
	cp #fe
	jp z,l0564
	cp #ff
	jp z,l054e
	ld b,a
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld a,b
.l04b6 equ $ + 1
	sub #00
	ld (ix+#03),a
.l04ba
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l004a)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l04f6
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1c),#01
	ld (ix+#1d),#00
	jp l02f6
.l04f4
	jr l04ba
.l04f6
	ld a,(ix+#17)
	and a
	call nz,l053a
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l06d3
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l00e6
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l0048)
	and a
	ret z
	ld a,(ix+#0f)
	cp #08
	ret nz
	ld de,l00c0
	add hl,de
	ex de,hl
	ld h,#0b
	ld a,(de)
	ld l,a
	call l00bf
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l00bf
	ret
.l053a
	ld a,(ix+#03)
	neg
	and #1f
	ld (l00ec),a
	ret
.l0545
	inc hl
	ld a,(hl)
	inc hl
	ld (l00ec),a
	jp l0579
.l054e
	inc hl
	ld (ix+#04),#00
	jp l0579
.l0556
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l00bf
	pop hl
	jp l0579
.l0564
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l0573
	jp l0670
	jp l0481
.l0573
	ld l,(ix+#15)
	ld h,(ix+#16)
.l0579
	ld (ix+#01),h
	ld (ix+#00),l
	jp l0481
.l0582
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l0865
	add hl,de
	ld d,#00
	add b
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#28),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	ld (ix+#10),#00
	ld de,#0010
	add hl,de
	ld a,(hl)
	ld (ix+#17),#00
	and a
	jp z,l060d
	ld b,a
	or #c0
	ld (l00ed),a
	ld a,b
	bit 7,a
	jp z,l060d
	cpl
	and #38
	ld (ix+#17),a
.l060d
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l0629
	ld a,(hl)
	ld (l0048),a
	and a
	jp z,l0629
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l00bf
	pop hl
.l0629
	pop hl
	jp l0481
.l062d
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l0823
	add hl,de
	ld (l004a),hl
	pop hl
	jp l0684
.l0642
	inc hl
	ld a,(hl)
	inc hl
	ld (l04b6),a
	jp l0684
.l064b
	inc hl
	ld b,(hl)
	inc hl
	ld a,(l04b6)
	add b
	ld (l04b6),a
	jp l0684
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l02f6
	call l0226
	jp l02f6
.l0670
	call l067e
	jp l0477
.l0676
	pop bc
	jp l0226
.l067a
	pop bc
	jp l0183
.l067e
	ld l,(ix+#20)
	ld h,(ix+#21)
.l0684
	ld a,(hl)
	cp #fa
	jp z,l064b
	cp #fb
	jp z,l0642
	cp #fc
	jp z,l062d
	cp #fd
	jp z,l067a
	cp #fe
	jr z,l06c7
	cp #ff
	jr z,l0676
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l097d
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ret
.l06c7
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l0684
.l06d3 equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04d4
	dw #0470,#0431,#03f4,#03dc
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
	dw #0012,#0011,#0010
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #6a,#00,#64,#00,#5e,#00,#5a,#00
	db #54,#00,#4f,#00,#4a,#00,#47,#00
	db #43,#00,#3f,#00,#3b,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#25,#00,#23,#00
	db #21,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#16,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#0e,#00
	db #0d,#00,#0c,#00,#0b,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0823
	db #01,#02,#03,#04,#06,#08,#0c,#10
	db #02,#04,#06,#08,#0c,#10,#18,#20
	db #03,#06,#09,#0c,#12,#18,#24,#30
	db #04,#08,#0c,#10,#18,#20,#30,#40
	db #05,#0a,#0f,#14,#1e,#28,#3c,#50
	db #06,#0c,#12,#18,#24,#30,#48,#54
	db #60,#6c,#07,#0e,#15,#1c,#2a,#38
	db #54,#70,#08,#10,#18,#20,#30,#40
.l0865 equ $ + 2
	db #60,#80,#00,#0f,#0f,#08,#ff,#0a
	db #64,#03,#ff,#1e,#01,#04,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#00,#00,#00,#00,#00,#0e,#0e
	db #02,#fe,#00,#00,#03,#ff,#00,#05
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#e8,#00,#00,#00,#00
	db #00,#0f,#0f,#01,#ff,#00,#00,#03
	db #ff,#00,#01,#02,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#09,#09,#01,#f7
	db #00,#00,#00,#ff,#ff,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#aa,#00,#00,#00,#00,#00,#00
	db #ff,#00,#ff,#00,#00,#00,#ff,#00
	db #05,#05,#00,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#01,#0f,#05,#03,#ff,#0b,#64
	db #03,#ff,#1e,#01,#04,#00,#01,#00
	db #00,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#0f,#0f
	db #ff,#0b,#64,#03,#ff,#1e,#01,#04
	db #00,#06,#00,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0a,#ff,#0a,#03,#03,#ff
	db #ff,#00,#00,#02,#01,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l097d equ $ + 2
	db #00,#00,#dd,#09,#e2,#09,#fd,#09
	db #4b,#0a,#60,#0a,#8f,#0a,#9e,#0a
	db #ad,#0a,#c0,#0a,#d8,#09,#ec,#0a
.l0997 equ $ + 4
	db #18,#0a,#31,#0a,#b3,#09,#c6,#09
	db #cb,#09,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.l09b3
	db #fc,#05,#fb,#ff,#00,#02,#03,#02
	db #05,#01,#06,#01,#07,#02,#08,#02
.l09c6 equ $ + 3
	db #00,#04,#fe,#01,#0a,#04,#20,#fe
.l09cb
	db #02,#16,#0b,#02,#0c,#02,#02,#04
	db #0b,#02,#0c,#02,#fe,#61,#04,#0d
	db #09,#fe,#61,#04,#0d,#09,#fe,#61
	db #00,#65,#0a,#1b,#01,#27,#01,#1b
	db #01,#1b,#01,#27,#01,#1b,#01,#27
	db #01,#1b,#03,#22,#02,#25,#02,#27
	db #02,#fe,#61,#02,#65,#0a,#1b,#01
	db #27,#01,#1b,#01,#1b,#01,#27,#01
	db #1b,#01,#27,#01,#1b,#03,#22,#02
	db #25,#02,#27,#02,#fe,#61,#02,#16
	db #01,#22,#01,#16,#01,#16,#01,#22
	db #01,#16,#01,#22,#01,#16,#03,#1d
	db #02,#20,#02,#22,#02,#fe,#61,#02
	db #17,#01,#23,#01,#17,#01,#17,#01
	db #23,#01,#17,#01,#23,#01,#17,#03
	db #1e,#02,#21,#02,#23,#02,#fe,#fe
	db #61,#00,#4b,#02,#4e,#08,#4b,#02
	db #4e,#08,#4b,#02,#4e,#05,#50,#06
	db #4e,#06,#4b,#06,#fe,#61,#03,#64
	db #19,#25,#01,#25,#01,#25,#01,#25
	db #01,#61,#01,#64,#05,#25,#02,#61
	db #03,#64,#19,#25,#01,#25,#02,#25
	db #01,#25,#01,#25,#01,#61,#01,#64
	db #05,#25,#02,#61,#03,#64,#19,#25
	db #01,#25,#01,#fe,#61,#06,#1b,#09
	db #22,#09,#25,#08,#22,#02,#25,#06
	db #27,#06,#fe,#61,#06,#27,#09,#2e
	db #09,#31,#08,#2e,#02,#31,#06,#33
	db #06,#fe,#61,#07,#27,#01,#60,#03
	db #27,#01,#60,#03,#27,#01,#60,#03
	db #27,#01,#60,#03,#fe,#61,#00,#33
	db #0a,#33,#02,#31,#02,#33,#02,#36
	db #02,#3a,#02,#36,#02,#3d,#02,#3a
	db #09,#3a,#09,#3b,#0a,#3f,#02,#3b
	db #02,#3f,#02,#3d,#02,#3b,#02,#38
	db #02,#36,#02,#33,#09,#33,#09,#fe
	db #fe,#61,#00,#46,#02,#4b,#04,#46
	db #02,#4b,#02,#46,#02,#4b,#08,#4d
	db #01,#4e,#01,#fe,#00
	db #00
;
.music_info
	db "Street Cred Boxing (1989)(Players)()",0
	db "",0

	read "music_end.asm"
