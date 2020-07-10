; Music of Jack the Nipper 2 - Coconut Capers (1987)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 23/03/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JACTN2CC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #75e5
first_theme				equ 0
last_theme				equ 4

	read "music_header.asm"

;
.play_music
.l75e5
;
	ld a,(l7613)
	and a
	jp z,l75f3
	ld ix,l77be
	call l7718
.l75f3
	ld a,(l7614)
	and a
	jp z,l7601
	ld ix,l77c7
	call l7718
.l7601
	ld a,(l7615)
	and a
	jp z,l760f
	ld ix,l77d0
	call l7718
.l760f
	call l911f
	ret
.l7615 equ $ + 2
.l7614 equ $ + 1
.l7613
	db #00,#00,#00,#00,#00,#00
;
.real_init_music	; 0 (main theme),4,8,20,24
.l7619
;
	push ix
	push iy
	ld l,a
	ld h,#00
	add hl,hl
	ld e,l
	ld d,h
	add hl,hl
	add hl,de
	ld de,l765e
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	ld (l7613),a
	ld ix,l77be
	push hl
	call l76f4
	pop hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	ld (l7614),a
	ld ix,l77c7
	push hl
	call l76f4
	pop hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,d
	ld (l7615),a
	ld ix,l77d0
	call l76f4
	pop iy
	pop ix
	ret
.l765e
	dw l77ee,l785c,l798a,l77d9
	dw l77d9,l77d9
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
	dw l958d,l95de,l77d9,l9603
	dw l9611,l961f,l965a,l9668
	dw #0000,l968e,l969c,l96aa
	dw l96d7,l96e5,l96f3,l9717
	dw l9725,l9733,#0000,#0000
	dw #0000,l9780,l978e,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,#0000,#0000,#0000
	dw #0000,l97ae,l97bc,#0000
	dw #0000,#0000,#0000,l97e2
	dw l97f0,#0000,l9852,l9860
	dw l986e,l98c5,l98e1,l98d3
	dw l991a,l9928,l995a,l99d3
	dw l99e1,l9a13,l9a60,l9a6e
	dw l9a7c,l9abe,l9ad8,l9ae6
	dw l9b46,l9b54,l9b62
.l76f4
	ld (ix+#02),e
	ld (ix+#03),d
	push de
	pop iy
	ld a,(iy+#0a)
	ld (ix+#04),a
	ld a,(iy+#0b)
	ld (ix+#05),a
	ld (ix+#06),#00
	ld (ix+#07),#01
	ld a,(iy+#09)
	ld (ix+#08),a
	ret
.l7718
	ld a,(ix+#07)
	dec (ix+#07)
	ret nz
.l771f
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld a,(hl)
	cp #ff
	jp nz,l7773
	ld l,(ix+#02)
	ld h,(ix+#03)
	push hl
	pop iy
	ld a,(ix+#06)
	inc a
	ld (ix+#06),a
	cp (iy+#08)
	jp c,l7764
	ld bc,#000c
	add iy,bc
	ld (ix+#06),#00
	ld a,(iy+#01)
	and a
	jp nz,l7755
	ld iy,l77d9
.l7755
	push iy
	pop hl
	ld (ix+#02),l
	ld (ix+#03),h
	ld a,(iy+#09)
	ld (ix+#08),a
.l7764
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld (ix+#04),l
	ld (ix+#05),h
	jp l771f
.l7773
	and a
	ld b,#ff
	jp z,l777d
	add (ix+#08)
	ld b,a
.l777d
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l7bf8
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	pop hl
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld (ix+#07),a
	ld l,(ix+#02)
	ld h,(ix+#03)
	push hl
	pop iy
	ld c,(iy+#06)
	ld a,(iy+#07)
	cp #ff
	jp z,l77b0
	ld de,#0000
	jp l77b1
.l77b0
	ld b,a
.l77b1
	ld l,(ix+#00)
	ld h,(ix+#01)
	push hl
	pop ix
	call l914d
	ret
.l77be
	dw l9377,l77d9,l7a64
	db #00,#0a,#00
.l77c7
	dw l938d,l77ee,l7b76
	db #00,#0a,#00
.l77d0
	dw l93a3,l798a,l7b76
	db #00,#0a,#00
.l77d9
	dw l931d,l9338,l9362
	db #00,#ff,#80,#00
	dw l77e7
.l77e7 equ $ + 2
	db #00,#00,#00,#80,#00,#80,#00,#80
	db #ff
.l77ee
	dw l931d,l935c,l9362
	db #0f,#ff,#01,#0c
	dw l7a64,l931d,l935c,l9362
	db #0f,#ff,#01,#0c
	dw l7acb,l931d,l935c,l9362
	db #0f,#ff,#01,#0c
	dw l7adc,l932f,l9350,l9362
	db #0a,#ff,#01,#0c
	dw l7a64,l932f,l9350,l9362
	db #0a,#ff,#01,#0c
	dw l7acb,l9323,l933e,l9362
	db #0f,#ff,#01,#0c
	dw l7ae1,l9323,l933e,l9362
	db #0f,#ff,#01,#0c
	dw l7af2,l9323,l9347,l9362
	db #0f,#ff,#01,#0c
	dw l7a64,l9323,l9347,l9362
	db #0f,#ff,#01,#0c
	dw l7b67
	db #00,#00
.l785c
	dw l931d,l935c,l9362
	db #0d,#ff,#04,#1d
	dw l7bdb,l931d,l935c,l9362
	db #0d,#ff,#02,#16
	dw l7b8a,l931d,l935c,l9362
	db #0d,#ff
	db #02,#1d
	dw l7b79,l931d,l935c,l9362
	db #0d,#ff,#01,#24
	dw l7b79,l931d,l935c,l9362
	db #0d,#ff,#01,#16
	dw l7b79,l931d,l935c,l9362
	db #0d,#ff,#06,#1d
	dw l7b79,l931d,l935c,l9362
	db #0d,#ff,#02,#22
	dw l7b79,l931d,l935c,l9362
	db #0d,#ff,#02,#29
	dw l7b79,l931d,l935c,l9362
	db #0d,#ff,#01,#24
	dw l7b79,l931d,l935c,l9362
	db #0d,#ff,#01,#22
	dw l7b79,l931d,l935c,l9362
	db #0d,#ff,#01,#1d
	dw l7b79,l9323,l933e,l9362
	db #0d,#ff,#01,#11
	dw l7ae1,l931d,l9338,l9362
	db #09,#ff,#03,#29
	dw l7b9e,l931d,l9338,l9362
	db #0b,#ff,#01,#27
	dw l7bd2,l931d,l9338,l9362
	db #09,#ff,#01,#1d
	dw l7bb0,l931d,l9338,l9362
	db #09,#ff,#03,#22
	dw l7bb0,l932f,l935c,l9362
	db #0d,#ff,#02,#29
	dw l7b9e,l932f,l935c,l9362
	db #0d,#ff,#01,#30
	dw l7b9e,l932f,l935c,l9362
	db #0d,#ff,#01,#2e
	dw l7b9e,l931d,l935c,l9362
	db #0e,#ff,#04,#1d
	dw l7bdb,l931d,l935c,l9362
	db #0e,#ff,#02,#22
	dw l7bdb,l931d,l935c,l9362
	db #0e,#ff,#02,#1d
	dw l7bdb,l931d,l935c,l9362
	db #0e,#ff,#01,#24
	dw l7bdb,l931d,l935c,l9362
	db #0e,#ff,#01,#22
	dw l7bdb,l9323,l9347,l9362
	db #0f,#ff,#01,#0c
.l798a equ $ + 4
	dw l7bed,#0000,l931d,l9338
	dw l9362
	db #00,#ff,#0c,#00
	dw l7b76,l931d,l9338,l9362
	db #00,#ff,#01,#00
	dw l7b9b,l9323,l933e,l9362
	db #0f,#ff,#01,#0c
	dw l7a64,l9323,l933e,l9362
	db #0f,#ff,#01,#0c
	dw l7acb,l933e,l933e,l9362
	db #0f,#ff,#01,#07
	dw l7ae1,l931d,l9338,l9362
	db #09,#ff,#03,#29
	dw l7ba7,l931d,l9338,l9362
	db #0b,#ff,#01,#22
	dw l7bd2,l931d,l9338,l9362
	db #09,#ff,#01,#1d
	dw l7bc1,l931d,l9338,l9362
	db #09,#ff,#03,#22
	dw l7bc1,l932f,l935c,l9362
	db #0d,#ff,#02,#29
	dw l7ba7,l932f,l935c,l9362
	db #0d,#ff,#01,#30
	dw l7ba7,l932f,l935c,l9362
	db #0d,#ff,#01,#2e
	dw l7ba7,l932f,l935c,l9362
	db #0b,#ff,#04,#29
	dw l7b79,l932f,l935c,l9362
	db #0b,#ff,#02,#2e
	dw l7b79,l932f,l935c,l9362
	db #0b,#ff,#02,#29
	dw l7b79,l932f,l935c,l9362
	db #0b,#ff,#01,#30
	dw l7b79,l932f,l935c,l9362
	db #0b,#ff,#01,#2e
	dw l7b79,l9323,l9347,l9362
	db #0f,#ff,#01,#0c
	dw l7be2,#0000
.l7a64
	db #1e,#0c,#22,#04,#25,#08,#2a,#08
	db #2e,#08,#2c,#08,#2a,#08,#27,#08
	db #24,#08,#25,#38,#1e,#0c,#22,#04
	db #25,#08,#2a,#08,#2e,#08,#2c,#08
	db #2a,#08,#27,#08,#25,#38,#27,#08
	db #21,#38,#27,#08,#22,#08,#1e,#08
	db #00,#30,#1e,#0c,#22,#04,#25,#08
	db #2a,#08,#2e,#08,#2c,#08,#2a,#08
	db #27,#08,#24,#08,#25,#08,#00,#28
	db #25,#08,#2c,#10,#2c,#10,#29,#08
	db #25,#08,#00,#08,#25,#08,#2a,#10
	db #2a,#10,#28,#04,#2a,#04,#28,#04
.l7acb equ $ + 7
	db #25,#04,#23,#08,#21,#08,#ff,#24
	db #10,#24,#10,#23,#04,#23,#04,#23
	db #04,#21,#04,#1e,#08,#19,#08,#ff
.l7ae1 equ $ + 5
.l7adc
	db #1d,#08,#1e,#38,#ff,#1c,#08,#1e
	db #08,#1b,#08,#1b,#08,#19,#08,#19
.l7af2 equ $ + 6
	db #08,#17,#08,#17,#08,#ff,#16,#10
	db #2e,#10,#00,#10,#2c,#08,#2c,#18
	db #2e,#28,#19,#08,#1e,#10,#21,#08
	db #1e,#08,#23,#08,#21,#18,#2a,#10
	db #2a,#10,#2a,#08,#2a,#08,#2a,#10
	db #1e,#10,#21,#08,#1e,#08,#23,#08
	db #23,#08,#21,#08,#1e,#08,#21,#08
	db #23,#08,#00,#28,#1e,#08,#21,#38
	db #27,#08,#21,#08,#1e,#38,#1e,#0c
	db #22,#04,#25,#08,#2a,#08,#2e,#08
	db #2c,#08,#2a,#08,#27,#08,#24,#08
	db #25,#08,#00,#28,#25,#08,#2c,#10
	db #2c,#10,#29,#08,#25,#08,#00,#08
	db #25,#08,#2a,#10,#2a,#10,#28,#04
	db #2a,#04,#28,#04,#25,#04,#23,#08
.l7b67 equ $ + 3
	db #21,#08,#ff,#1e,#08,#00,#08,#19
	db #10,#1b,#10,#19,#10,#1c,#30,#00
.l7b79 equ $ + 5
.l7b76 equ $ + 2
	db #10,#ff,#00,#40,#ff,#01,#08,#01
	db #08,#05,#08,#05,#08,#08,#08,#08
.l7b8a equ $ + 6
	db #08,#0a,#08,#0d,#08,#ff,#01,#08
	db #08,#08,#01,#08,#08,#08,#01,#08
.l7b9b equ $ + 7
	db #08,#08,#01,#08,#08,#08,#ff,#00
.l7b9e equ $ + 2
	db #01,#ff,#01,#10,#08,#10,#fc,#10
.l7ba7 equ $ + 3
	db #08,#10,#ff,#00,#10,#05,#10,#00
.l7bb0 equ $ + 4
	db #10,#05,#10,#ff,#01,#08,#05,#08
	db #fc,#08,#05,#08,#01,#08,#05,#08
.l7bc1 equ $ + 5
	db #fc,#08,#05,#08,#ff,#00,#08,#08
	db #08,#00,#08,#08,#08,#00,#08,#08
.l7bd2 equ $ + 6
	db #08,#00,#08,#08,#08,#ff,#01,#10
.l7bdb equ $ + 7
	db #00,#10,#01,#10,#00,#10,#ff,#01
.l7be2 equ $ + 6
	db #18,#05,#18,#08,#10,#ff,#00,#10
	db #25,#10,#27,#10,#25,#10,#1e,#40
.l7bed equ $ + 1
	db #ff,#00,#10,#25,#10,#27,#10,#25
	db #10,#25,#40,#ff
.l7bf8
	dw #0000,#0eee,#0e18,#0d4d
	dw #0c8e,#0bda,#0b2f,#0a8f
	dw #09f7,#0968,#08e1,#0861
	dw #07e9,#0777,#070c,#06a7
	dw #0647,#05ed,#0598,#0547
	dw #04fc,#04d4,#0470,#0431
	dw #03f4,#03dc,#0386,#0353
	dw #0324,#02f6,#02cc,#02a4
	dw #027e,#025a,#0238,#0218
	dw #01fa,#01de,#01c3,#01aa
	dw #0192,#017b,#0166,#0152
	dw #013f,#012d,#011c,#010c
	dw #00fd,#00ef,#00e1,#00d5
	dw #00c9,#00be,#00b3,#00a9
	dw #009f,#0096,#008e,#0086
	dw #007f,#0077,#0071,#006a
	dw #0064,#005f,#0059,#0054
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0026,#0024,#0022
	dw #0020,#001e,#001c,#001b
	dw #0019,#0018,#0016,#0015
	dw #0014,#0013,#0012,#0011
	dw #0010,#0000
; *** asm code deleted ***
	
.l910f
	ld e,(iy+#06)
	ld d,(iy+#07)
	ld c,(iy+#08)
	ld b,(iy+#09)
	call l914d
	ret
.l911f
	xor a
	ld (l914b),a
	ld a,(l914c)
	and a
	jr z,l913e
	ld ix,l9377
	call l91c2
	ld ix,l938d
	call l91c2
	ld ix,l93a3
	call l91c2
.l913e
	ld a,(l914b)
	cpl
	and #3f
	ld c,a
	ld a,#07
	call l92ff
	ret
.l914c equ $ + 1
.l914b
	db #00,#01
.l914d
	ld a,(ix+#00)
	and #07
	ld (ix+#00),a
	ld a,b
	cp #ff
	jr z,l917a
	ld a,(ix+#00)
	and #07
	add a
	add a
	add a
	or (ix+#00)
	ld (ix+#00),a
	ld (ix+#09),b
	ld l,(iy+#04)
	ld h,(iy+#05)
	dec hl
	dec hl
	dec hl
	ld (ix+#14),l
	ld (ix+#15),h
.l917a
	ld (ix+#04),e
	ld (ix+#05),d
	ld (ix+#06),#00
	ld (ix+#07),#00
	ld (ix+#08),c
	ld (ix+#0a),#01
	ld (ix+#0b),#01
	ld (ix+#0c),#01
	ld (ix+#0d),#01
	ld (ix+#0e),#01
	ld (ix+#0f),#01
	ld e,(iy+#00)
	ld d,(iy+#01)
	dec de
	dec de
	dec de
	ld (ix+#10),e
	ld (ix+#11),d
	ld e,(iy+#02)
	ld d,(iy+#03)
	dec de
	dec de
	dec de
	ld (ix+#12),e
	ld (ix+#13),d
	ret
.l91c2
	ld a,(ix+#00)
	and a
	ret z
	ld c,a
	ld a,(l914b)
	or c
	ld (l914b),a
	dec (ix+#0a)
	jp nz,l922a
	ld l,(ix+#10)
	ld h,(ix+#11)
	ld a,(hl)
	ld (ix+#0a),a
	dec (ix+#0d)
	jr nz,l9211
	inc hl
	inc hl
	inc hl
.l91e7
	ld a,(hl)
	cp #ff
	jr nz,l91f9
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#06),e
	ld (ix+#07),d
	inc hl
	jr l91e7
.l91f9
	and a
	jr nz,l9201
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l9201
	ld (ix+#10),l
	ld (ix+#11),h
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	dec hl
.l9211
	inc hl
	inc hl
	ld d,#00
	ld a,(hl)
	ld e,a
	and a
	jp p,l921d
	ld d,#ff
.l921d
	ld l,(ix+#06)
	ld h,(ix+#07)
	add hl,de
	ld (ix+#06),l
	ld (ix+#07),h
.l922a
	dec (ix+#0b)
	jp nz,l9272
	ld l,(ix+#12)
	ld h,(ix+#13)
	ld a,(hl)
	ld (ix+#0b),a
	dec (ix+#0e)
	jr nz,l9267
	inc hl
	inc hl
	inc hl
.l9242
	ld a,(hl)
	cp #ff
	jr nz,l924f
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	jr l9242
.l924f
	and a
	jr nz,l9257
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l9257
	ld (ix+#12),l
	ld (ix+#13),h
	ld a,(hl)
	ld (ix+#0b),a
	inc hl
	ld a,(hl)
	ld (ix+#0e),a
	dec hl
.l9267
	inc hl
	inc hl
	ld a,(hl)
	add (ix+#08)
	and #0f
	ld (ix+#08),a
.l9272
	ld a,(ix+#00)
	and #38
	jp z,l92c3
	dec (ix+#0c)
	jp nz,l92c3
	ld l,(ix+#14)
	ld h,(ix+#15)
	ld a,(hl)
	ld (ix+#0c),a
	dec (ix+#0f)
	jp nz,l92b8
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	cp #ff
	jp nz,l92a0
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
.l92a0
	and a
	jr nz,l92a8
	inc hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l92a8
	ld (ix+#14),l
	ld (ix+#15),h
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0f),a
	dec hl
.l92b8
	inc hl
	inc hl
	ld a,(hl)
	add (ix+#09)
	and #1f
	ld (ix+#09),a
.l92c3
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld a,l
	and a
	jr nz,l92d1
	cp h
	jp z,l92d8
.l92d1
	ld e,(ix+#06)
	ld d,(ix+#07)
	add hl,de
.l92d8
	ld c,l
	ld a,(ix+#01)
	call l92ff
	ld c,h
	ld a,(ix+#02)
	call l92ff
	ld c,(ix+#08)
	ld a,(ix+#03)
	call l92ff
	ld a,(ix+#00)
	and #38
	ret z
	ld a,(ix+#09)
	ld c,a
	ld a,#06
	call l92ff
	ret
.l92ff
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
.l931d
	db #c8,#c8,#00,#00
	dw l931d
.l9326 equ $ + 3
.l9323
	db #08,#01,#00,#01,#04,#06,#01,#04
	db #fa,#00
	dw l9326
.l932f
	db #01,#03,#01,#01,#03,#ff,#00
	dw l932f
.l9338
	db #c8,#c8,#00,#00
	dw l9338
.l933e
	db #01,#03,#ff,#08,#0c,#ff,#00
	dw l9338
.l9347
	db #01,#06,#ff,#05,#07,#ff,#00
	dw l9338
.l9350
	db #01,#05,#01,#01,#03,#ff,#08,#0c
	db #ff,#00
	dw l9338
.l935c
	db #03,#0d,#ff,#00
	dw l9338
.l9362
	db #c8,#c8,#00,#00
	dw l9362
.l9368
	db #01,#05,#05,#01,#05,#ff,#00
	dw l9368
.l9371
	db #01,#c8,#fd,#00
	dw l9371
.l9377
	db #01,#00,#01,#08,#64,#00,#00,#00
	db #00,#00,#01,#01,#01,#01,#01,#01
	dw l931d,l9338,l9362
.l938d
	db #02,#02,#03,#09,#f4,#01,#00,#00
	db #00,#0f,#01,#01,#01,#01,#01,#01
	dw l931d,l9338,l9362
.l93a3
	db #04,#04,#05,#0a,#f4,#01,#00,#00
	db #00,#09,#01,#01,#01,#01,#01,#01
	dw l931d,l9338,l9362,l9454
	dw l933e,l9431
	db #32,#00,#0f,#ff
	dw l931d,l9489,l9431
	db #00,#00,#0f,#00
	dw l945d,l949d,l9362
	db #26,#02,#0f,#ff
	dw l945d,l949d,l9362
	db #30,#02,#0f,#ff
.l93e1
	dw l931d,l947e,l9362
	db #64,#00,#0f,#ff
	dw l9469,l933e,l9362
	db #c8,#00,#0f,#ff
	dw l9469,l933e,l9362
	db #cf,#00,#0f,#ff
.l93ff
	dw l931d,l94ab,l9362
	db #32,#00,#00,#1e
.l9409
	dw l931d,l94ab,l9362
	db #0a,#00,#00,#14
.l9413
	dw l931d,l94ab,l9362
	db #64,#00,#00,#06
	dw l9472,l94b7,l9362
	db #64,#00,#0f,#ff
	dw l931d,l94c2,l9444
.l9431 equ $ + 4
	db #00,#00,#00,#1e,#ff,#1f,#01,#0a
	db #fd,#00
	dw l9362
	db #ff,#14,#01,#07,#fe,#08,#0f,#02
	db #00
	dw l9362
.l9444
	db #ff,#03,#01,#04,#02,#ff,#03,#01
	db #04,#02,#07,#14,#01,#00
	dw l9362
.l9457 equ $ + 3
.l9454
	db #01,#05,#fb,#01,#64,#06,#00
	dw l9457
.l9460 equ $ + 3
.l945d
	db #03,#01,#00,#01,#01,#14,#01,#c8
	db #ff,#00
	dw l9460
.l9469
	db #01,#0a,#fb,#01,#01,#28,#00
	dw l9469
.l9478 equ $ + 6
.l9472
	db #05,#01,#00,#01,#05,#fd,#01,#32
	db #01,#00
	dw l9478
.l947e
	db #ff,#00,#01,#05,#03,#08,#0f,#ff
	db #00
	dw l9338
.l9489
	db #ff,#0f,#01,#03,#fe,#ff,#0f,#01
	db #03,#fe,#ff,#0f,#01,#03,#fe,#ff
	db #00,#00
	dw l9338
.l949d
	db #ff,#0f,#02,#01,#00,#01,#01,#fe
	db #07,#0d,#ff,#00
	dw l9338
.l94ab
	db #ff,#05,#01,#01,#00,#ff,#0d,#01
	db #01,#00
	dw l94ab
.l94b7
	db #ff,#06,#01,#03,#03,#06,#0f,#ff
	db #00
	dw l9338
.l94c2
	db #ff,#0f,#01,#01,#00,#01,#03,#fe
	db #ff,#0f,#01,#01,#00,#01,#03,#fe
	db #05,#09,#ff,#00
	dw l9338
	ld a,#18
	jp l7619
	push ix
	push iy
	ld ix,l93a3
	ld iy,l93e1
	call l910f
	pop iy
	pop ix
	ret
	cp #01
	jr nz,l9509
	push ix
	push iy
	ld ix,l93a3
	ld iy,l93ff
	call l910f
	pop iy
	pop ix
	ret
.l9509
	cp #02
	jr nz,l9521
	push ix
	push iy
	ld ix,l93a3
	ld iy,l9409
	call l910f
	pop iy
	pop ix
	ret
.l9521
	push ix
	push iy
	ld ix,l93a3
	ld iy,l9413
	call l910f
	pop iy
	pop ix
	ret
	di
	ld a,#c3
	ld (#0038),a
	ld hl,l954c
	ld (#0039),hl
	ld a,#04
	ld (l957e),a
	xor a
	ld (l957f),a
	ei
	ret
.l954c
	di
	push af
	ld a,(l957e)
	dec a
	ld (l957e),a
	jp z,l955b
	pop af
	ei
	ret
.l955b
	ld a,#03
	ld (l957e),a
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l957f)
	inc a
	ld (l957f),a
	call l75e5
;call l7f5d keyboard test
	defs 3,0
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	ret
.l957e
	db #03
.l957f
	db #01,#fb,#4f
.l9582
	ld a,(l957f)
	cp c
	jr c,l9582
	xor a
	ld (l957f),a
	ret
.l958d
	dw l931d,l933e,l9362,#ff0f
	dw #1801,l959b,#0000
.l959b
	db #24,#08,#25,#08,#1d,#08,#1d,#08
	db #1d,#08,#1e,#10,#20,#04,#1e,#04
	db #1d,#04,#1e,#04,#20,#08,#20,#08
	db #21,#08,#21,#08,#20,#10,#20,#04
	db #21,#04,#22,#04,#24,#04,#25,#08
	db #1d,#08,#1d,#08,#1d,#08,#1e,#10
	db #20,#04,#1e,#04,#1d,#04,#1e,#04
	db #20,#08,#1c,#08,#1b,#08,#20,#08
	db #19,#08,#ff
.l95de
	dw l931d,l9338,l9362,#ff0c
	dw #0c01,l95ec,#0000
.l95ec
	db #00,#08,#19,#20,#1e,#20,#20,#10
	db #21,#10,#20,#20,#19,#20,#1e,#20
	db #20,#10,#1b,#10,#19,#18,#ff
.l9603
	dw l931d,l933e,l9362
	db #0f,#ff,#01,#0c
.l9611 equ $ + 4
	dw l962d,#0000,l931d,l9338
	dw l9362
	db #0a,#ff,#01,#0c
.l961f equ $ + 4
	dw l963c,#0000,l931d,l9338
	dw l9362
	db #0a,#ff,#01,#0c
	dw l964b,#0000
.l962d
	db #22,#06,#2a,#06,#29,#09,#27,#03
.l963c equ $ + 7
	db #25,#06,#20,#06,#22,#09,#ff,#1e
	db #06,#25,#06,#25,#09,#20,#03,#20
.l964b equ $ + 6
	db #06,#1d,#06,#1e,#09,#ff,#19,#06
	db #22,#06,#20,#09,#1d,#03,#1d,#06
	db #1d,#06,#19,#09,#ff
.l965a
	dw l931d,l933e,l9362
	db #0f,#ff,#01,#0c
.l9668 equ $ + 4
	dw l9676,#0000,l931d,l9338
	dw l9362
	db #0a,#ff,#01,#0c
	dw l9676,#0000
.l9676
	db #2e,#03,#2c,#15,#2e,#03,#29,#06
	db #29,#03,#2a,#03,#29,#03,#2a,#03
	db #29,#03,#ff,#22,#24,#1d,#08,#ff
.l968e
	dw l931d,l933e,l9362
	db #0f,#ff,#01,#0c
.l969c equ $ + 4
	dw l96b8,#0000,l931d,l9347
	dw l9362
	db #0c,#ff,#06,#0c
.l96aa equ $ + 4
	dw l96cd,#0000,l931d,l9347
	dw l9362
	db #0c,#ff,#06,#0c
	dw l96d2,#0000
.l96b8
	db #1d,#0c,#1c,#08,#1d,#04,#25,#08
	db #25,#04,#24,#08,#22,#04,#1d,#08
.l96cd equ $ + 5
	db #1d,#04,#1d,#0c,#ff,#19,#08,#1d
.l96d2 equ $ + 2
	db #04,#ff,#00,#08,#20,#04,#ff
.l96d7
	dw l932f,l9347,l9362
	db #0f,#ff,#01,#0c
.l96e5 equ $ + 4
	dw l9701,#0000,l932f,l9347
	dw l9362
	db #0f,#ff,#01,#0c
.l96f3 equ $ + 4
	dw l970e,#0000,l932f,l9347
	dw l9362
	db #0f,#ff,#01,#0f
	dw l970e,#0000
.l9701
	db #19,#08,#1d,#08,#20,#08,#25,#10
.l970e equ $ + 5
	db #25,#08,#25,#10,#ff,#00,#18,#1d
	db #10,#1d,#08,#1d,#10,#ff
.l9717
	dw l931d,l933e,l9362
	db #0f,#ff,#01,#0c
.l9725 equ $ + 4
	dw l9741,#0000,l931d,l935c
	dw l9362
	db #0c,#ff,#01,#0c
.l9733 equ $ + 4
	dw l975a,#0000,l932f,l9347
	dw l9362
	db #0c,#ff,#01,#0c
	dw l9763,#0000
.l9741
	db #2c,#10,#2a,#04,#29,#04,#27,#04
	db #25,#04,#24,#04,#2c,#08,#24,#04
	db #22,#04,#2a,#08,#22,#04,#20,#0c
.l975a equ $ + 1
	db #ff,#25,#20,#20,#10,#1e,#10,#19
.l9763 equ $ + 2
	db #20,#ff,#29,#10,#27,#04,#25,#04
	db #24,#04,#22,#04,#20,#04,#24,#04
	db #2c,#04,#20,#04,#1e,#04,#22,#04
	db #2a,#04,#1e,#04,#1d,#0c,#ff
.l9780
	dw l931d,l933e,l9362
	db #0f,#ff,#02,#0c
.l978e equ $ + 4
	dw l979c,#0000,l931d,l935c
	dw l9362
	db #0f,#ff,#02,#00
	dw l97a7,#0000
.l979c
	db #25,#09,#25,#09,#28,#09,#2a,#06
.l97a7 equ $ + 3
	db #28,#03,#ff,#25,#12,#28,#09,#2a
	db #09,#ff
.l97ae
	dw l931d,l98ba,l9362
	db #00,#63,#04,#00
.l97bc equ $ + 4
	dw l97ca,#0000,l9362,l933e
	dw l9362
	db #0f,#ff,#01,#00
	dw l97cf,#0000
.l97cf equ $ + 5
.l97ca
	db #00,#10,#0a,#10,#ff,#25,#18,#25
	db #08,#2a,#18,#2a,#08,#2c,#18,#2c
	db #08,#2a,#08,#2c,#10,#2a,#08,#ff
.l97e2
	dw l931d,l933e,l9362
	db #0f,#ff,#01,#00
.l97f0 equ $ + 4
	dw l982e,#0000,l932f,l935c
	dw l9362
	db #0c,#ff,#01,#24
	dw l984b,l932f,l935c,l9362
	db #0c,#ff,#01,#2b
	dw l984b,l932f,l935c,l9362
	db #0c,#ff,#03,#24
	dw l984b,l932f,l935c,l9362
	db #0c,#ff,#01,#2b
	dw l984b,l932f,l935c,l9362
	db #0c,#ff,#02,#24
	dw l984b,#0000
.l982e
	db #25,#0a,#29,#05,#27,#0a,#2a,#05
	db #29,#05,#2c,#05,#29,#05,#25,#0f
	db #25,#0a,#29,#05,#27,#0a,#2a,#05
.l984b equ $ + 5
	db #29,#0f,#25,#05,#ff,#01,#05,#08
	db #05,#0d,#05,#ff
.l9852
	dw l931d,l933e,l9362
	db #0f,#ff,#01,#0c
.l9860 equ $ + 4
	dw l987c,#0000,l931d,l935c
	dw l9362
	db #0a,#ff,#01,#0c
.l986e equ $ + 4
	dw l98a1,#0000,l931d,l935c
	dw l9362
	db #0a,#ff,#01,#07
	dw l98a1,#0000
.l987c
	db #00,#08,#20,#04,#20,#04,#25,#04
	db #20,#08,#22,#08,#1e,#0c,#1e,#04
	db #20,#04,#22,#08,#22,#04,#20,#04
	db #20,#04,#20,#04,#25,#04,#20,#08
.l98a1 equ $ + 5
	db #22,#08,#1e,#08,#ff,#25,#04,#25
	db #04,#00,#10,#25,#08,#1e,#08,#00
	db #18,#25,#04,#25,#04,#00,#10,#25
.l98ba equ $ + 6
	db #08,#1e,#08,#00,#18,#ff,#ff,#0f
	db #01,#03,#fe,#01,#09,#ff,#00
.l98c5 equ $ + 2
	dw l9338,l932f,l935c,l9362
	db #0e,#ff,#01,#00
.l98d3 equ $ + 4
	dw l98ef,#0000,l932f,l935c
	dw l9362
	db #0e,#ff,#01,#00
.l98e1 equ $ + 4
	dw l98f0,#0000,l931d,l9347
	dw l9362
	db #0c,#ff,#03,#0c
	dw l9905,#0000
.l98f0 equ $ + 1
.l98ef
	db #ff,#29,#0c,#27,#0c,#25,#18,#29
	db #0c,#27,#0c,#25,#18,#2c,#0c,#2a
.l9905 equ $ + 6
	db #08,#2a,#04,#29,#0c,#ff,#25,#04
	db #2c,#04,#31,#04,#20,#04,#27,#04
	db #2c,#04,#25,#04,#2c,#04,#31,#04
	db #00,#0c,#ff
.l991a
	dw l932f,l935c,l9362
	db #0f,#ff,#01,#00
.l9928 equ $ + 4
	dw l998c,#0000,l931d,l9338
	dw l9362
	db #00,#ff,#01,#00
	dw l99bd,l99ca,l933e,l9362
	db #0d,#ff,#06,#26
	dw l99c0,l99ca,l933e,l9362
	db #0d,#ff,#08,#21
	dw l99c0,l99ca,l933e,l9362
	db #0d,#ff,#01,#26
.l995a equ $ + 4
	dw l99c0,#0000,l931d,l9338
	dw l9362
	db #00,#ff,#01,#00
	dw l99bd,l99ca,l933e,l9362
	db #0d,#ff,#06,#26
	dw l99c5,l99ca,l933e,l9362
	db #0d,#ff,#08,#21
	dw l99c5,l99ca,l933e,l9362
	db #0d,#ff,#01,#26
	dw l99c5,#0000
.l998c
	db #2e,#08,#2b,#08,#27,#10,#27,#10
	db #27,#10,#27,#08,#27,#08,#27,#08
	db #27,#08,#26,#08,#27,#08,#26,#10
	db #2c,#08,#29,#08,#26,#10,#26,#10
	db #26,#10,#26,#08,#26,#08,#26,#08
	db #26,#08,#24,#08,#26,#08,#27,#08
.l99c0 equ $ + 4
.l99bd equ $ + 1
	db #ff,#00,#10,#ff,#01,#08,#08,#08
.l99ca equ $ + 6
.l99c5 equ $ + 1
	db #ff,#00,#08,#05,#08,#ff,#01,#02
	db #ff,#01,#02,#01,#00
.l99d3 equ $ + 2
	dw l99ca,l932f,l9347,l9362
	db #0f,#ff,#01,#18
.l99e1 equ $ + 4
	dw l9a45,#0000,l931d,l9338
	dw l9362
	db #00,#ff,#01,#00
	dw l99bd,l931d,l933e,l9362
	db #0e,#ff,#02,#26
	dw l99c0,l931d,l933e,l9362
	db #0e,#ff,#02,#21
	dw l99c0,l931d,l933e,l9362
	db #0e,#ff,#04,#26
.l9a13 equ $ + 4
	dw l99c0,#0000,l931d,l9338
	dw l9362
	db #00,#ff,#01,#00
	dw l99bd,l931d,l933e,l9362
	db #0e,#ff,#02,#26
	dw l99c5,l931d,l933e,l9362
	db #0e,#ff,#02,#21
	dw l99c5,l931d,l933e,l9362
	db #0e,#ff,#04,#26
	dw l99c5,#0000
.l9a45
	db #27,#08,#29,#08,#2b,#10,#2b,#08
	db #2e,#08,#2c,#10,#2c,#08,#30,#08
	db #2e,#0c,#30,#04,#2e,#08,#2c,#08
	db #2b,#10,#ff
.l9a60
	dw l931d,l9347,l9362
	db #0d,#ff,#05,#21
.l9a6e equ $ + 4
	dw l9a8a,#0000,l931d,l9347
	dw l9362
	db #0d,#ff,#05,#1a
.l9a7c equ $ + 4
	dw l9a8a,#0000,l931d,l935c
	dw l9362
	db #0f,#ff,#01,#0c
	dw l9a99,#0000
.l9a8a
	db #01,#08,#01,#04,#01,#04,#01,#08
.l9a99 equ $ + 7
	db #01,#08,#01,#08,#01,#08,#ff,#22
	db #08,#22,#04,#22,#04,#22,#08,#27
	db #08,#29,#08,#2c,#08,#2b,#10,#2e
	db #10,#00,#40,#22,#08,#22,#04,#22
	db #04,#22,#08,#27,#08,#29,#08,#2c
	db #08,#2b,#20,#ff
.l9abe
	dw l931d,l9347,l9362
	db #0f,#ff,#01,#0c
	dw l9b02,l931d,l9347,l9362
	db #0f,#ff,#01,#00
.l9ad8 equ $ + 4
	dw l9b1e,#0000,l931d,l9347
	dw l9362
	db #0f,#ff,#09,#00
.l9ae6 equ $ + 4
	dw l9b37,#0000,l9b40,l9347
	dw l9362
	db #0f,#ff,#01,#0c
	dw l9b02,l9b40,l9347,l9362
	db #0f,#ff,#01,#00
	dw l9b1e,#0000
.l9b02 equ $ + 2
	db #00,#01,#00,#04,#1b,#08,#1d,#08
	db #1e,#08,#1b,#08,#1d,#08,#1e,#08
	db #20,#08,#1d,#08,#1e,#08,#20,#08
.l9b1e equ $ + 6
	db #22,#08,#1e,#08,#20,#08,#22,#08
	db #23,#08,#20,#08,#22,#08,#1e,#08
	db #20,#08,#1d,#08,#1e,#08,#1b,#08
.l9b37 equ $ + 7
	db #1d,#08,#1a,#08,#1b,#08,#ff,#1b
	db #08,#1b,#08,#1b,#08,#1b,#08,#ff
.l9b40
	db #01,#01,#04,#00
.l9b46 equ $ + 2
	dw l931d,l9b40,l9347,l9362
	db #0f,#ff,#01,#0c
	dw l9b70,#0000
.l9b54
	dw l9b40,l9347,l9362
	db #0f,#ff,#01,#0c
	dw l9b7d,#0000
.l9b62
	dw l9b40,l9347,l9362
	db #0f,#ff,#01,#11
	dw l9b7d,#0000
.l9b70
	db #2c,#08,#2c,#04,#29,#08,#2e,#04
.l9b7d equ $ + 5
	db #2c,#0c,#29,#0c,#ff,#25,#08,#25
	db #04,#25,#08,#25,#04,#25,#0c,#25
	db #0c,#ff
;
.init_music	; added by Megachur
;
	or a
	jr z,call_real_init_music
	dec a
	jr nz,init_music_8
	ld a,4
	jr call_real_init_music
init_music_8
	dec a
	jr nz,init_music_20
	ld a,8
	jr call_real_init_music
init_music_20
	dec a
	jr nz,init_music_24
	ld a,20
	jr call_real_init_music
init_music_24
	ld a,24
call_real_init_music
	jp real_init_music	; a = 0 (main theme),4,8,20,24
;
.music_info
	db "Jack the Nipper 2 - Coconut Capers (1987)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
