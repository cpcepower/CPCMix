; Music of Disc Mac Challenge Issue 20 - Music 3 (1996)(Hypnomega)()(ST-Module)
; Ripped by Megachur the 06/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DMCI20M3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #3000

	read "music_header.asm"

	jp l300b
	jp l3093
	jp l3077
	db #66,#04
;
.init_music
.l300b
;
	ld b,#03
	ld ix,l33da
	ld iy,l3306
	ld de,#001c
.l3018
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
	djnz l3018
	ld a,#06
	ld (l30bb),a
	ld a,d
	ld (l30cf),a
	inc a
	ld (l30b6),a
	ld a,#38
	ld (l30c0),a
	ld a,#ff
	ld (l3302),a
	ld (l3303),a
	ld (l3304),a
	ld (l3305),a
	ld a,#0c
	ld c,d
	call l32e4
	ld a,#0d
	ld c,d
	jp l32e4
;
.stop_music
.l3077
;
	ld a,#07
	ld c,#3f
	call l32e4
	ld a,#08
	ld c,#00
	call l32e4
	ld a,#09
	ld c,#00
	call l32e4
	ld a,#0a
	ld c,#00
	jp l32e4
;
.play_music
.l3093
;
	ld hl,l30b6
	dec (hl)
	ld ix,l33da
	ld bc,l33e8
	call l3149
	ld ix,l33f6
	ld bc,l3404
	call l3149
	ld ix,l3412
	ld bc,l3420
	call l3149
.l30b6 equ $ + 1
	ld a,#00
	or a
	jr nz,l30bf
.l30bb equ $ + 1
	ld a,#00
	ld (l30b6),a
.l30c0 equ $ + 1
.l30bf
	ld a,#00
	ld hl,l3303
	cp (hl)
	jr z,l30ce
	ld (hl),a
	ld c,a
	ld a,#07
	call l32e4
.l30cf equ $ + 1
.l30ce
	ld a,#00
	ld hl,l3302
	cp (hl)
	jr z,l30dd
	ld (hl),a
	ld c,a
	ld a,#06
	call l32e4
.l30de equ $ + 1
.l30dd
	ld a,#00
	ld hl,l3304
	cp (hl)
	jr z,l30ec
	ld (hl),a
	ld c,a
	ld a,#0b
	call l32e4
.l30ed equ $ + 1
.l30ec
	ld a,#00
	ld hl,l3305
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l32e4
.l30fa
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l31fa
.l3109
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
	jp l32e4
.l3123
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l3138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l3138
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l315c
.l3149
	ld a,(l30b6)
	or a
	jp nz,l31fa
	dec (ix+#06)
	jp nz,l31fa
	ld l,(ix+#00)
	ld h,(ix+#01)
.l315c
	ld a,(hl)
	or a
	jr z,l30fa
	cp #fe
	jr z,l3109
	cp #ff
	jr z,l3123
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l330c
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l3198
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l3198
	and #7f
	ld (ix+#06),a
	jr l31eb
.l3198
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l31ac
	ld (ix+#05),a
	ld (ix+#0a),d
.l31ac
	add a
	add a
	add a
	ld e,a
	ld hl,l3442
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
	jr z,l31eb
	cp #f0
	jp z,l32a0
	cp #d0
	jp z,l32bc
	cp #b0
	jp z,l32c4
	cp #80
	jp nc,l32cc
	cp #10
	jr nz,l31eb
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l31eb
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l31fa
	ld a,(ix+#17)
	or a
	jr nz,l320e
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l320e
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l3239
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l330c
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l3239
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
	call l32e4
	ld c,h
	ld a,(ix+#03)
	call l32e4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l3277
	and #0f
	sub (ix+#0a)
	jr nc,l326d
	xor a
.l326d
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l32e4
.l3277
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
	jr z,l3294
	ld b,a
	ld a,c
	ld (l30cf),a
	ld a,b
	sub #40
.l3294
	ld (l329b),a
	ld a,(l30c0)
.l329b equ $ + 1
	bit 0,a
	ld (l30c0),a
	ret
.l32a0
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l34c2
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l31eb
.l32bc
	inc hl
	ld a,(hl)
	ld (l30bb),a
	jp l31eb
.l32c4
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l31eb
.l32cc
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l30ed),a
	inc hl
	ld a,(hl)
	ld (l30de),a
	jp l31eb
.l32e4
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
.l3305 equ $ + 3
.l3304 equ $ + 2
.l3303 equ $ + 1
.l3302
	db #ff,#ff,#ff,#ff
.l3306
	dw l3702,l371a,l3732
.l330c
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
.l33da equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l33e8 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l33f6
	db #00,#00,#02,#03,#09,#00,#00,#00
.l3404 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3412 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l3420 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l3442 equ $ + 4
	db #75,#6c,#65,#2e,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#e2,#34,#22,#35
	db #42,#35,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#62,#35,#a2,#35
	db #c2,#35,#00,#00,#e2,#35,#22,#36
	db #42,#36,#18,#07,#62,#36,#a2,#36
	db #42,#36,#18,#07,#e2,#35,#c2,#36
	db #42,#36,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
.l34c2 equ $ + 4
	db #dc,#2e,#00,#00,#dc,#2e,#dc,#2e
	db #dc,#2e,#dc,#2e,#dc,#2e,#dc,#2e
	db #dc,#2e,#e2,#36,#dc,#2e,#dc,#2e
	db #dc,#2e,#dc,#2e,#dc,#2e,#dc,#2e
	db #dc,#2e,#dc,#2e,#00,#00,#80,#00
	db #40,#01,#a0,#01,#40,#02,#e8,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0e
	db #0d,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
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
	db #00,#00,#00,#00,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
	db #09,#09,#09,#09,#0f,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l3702 equ $ + 4
	db #00,#00,#00,#00,#00,#4a,#37,#00
	db #4d,#37,#00,#4d,#37,#00,#7e,#37
	db #00,#4d,#37,#00,#4d,#37,#00,#4d
.l371a equ $ + 4
	db #37,#80,#05,#37,#00,#af,#37,#00
	db #dd,#37,#00,#dd,#37,#00,#0e,#38
	db #00,#4e,#38,#00,#8c,#38,#00,#8c
.l3732 equ $ + 4
	db #38,#80,#1d,#37,#00,#cd,#38,#00
	db #f4,#38,#00,#f4,#38,#00,#f4,#38
	db #00,#f4,#38,#00,#2e,#39,#00,#2e
	db #39,#80,#35,#37,#00,#40,#ff,#00
	db #06,#2b,#06,#c7,#12,#26,#04,#c7
	db #18,#2b,#04,#c7,#12,#29,#04,#c7
	db #14,#26,#04,#c7,#18,#2b,#0a,#c7
	db #12,#2b,#86,#26,#04,#c7,#18,#2b
	db #04,#c7,#12,#24,#04,#c7,#1b,#22
	db #04,#c7,#1e,#1f,#04,#c7,#24,#ff
	db #00,#06,#2b,#06,#c7,#12,#26,#04
	db #c7,#18,#2b,#04,#c7,#12,#29,#04
	db #c7,#14,#26,#04,#c7,#18,#2b,#0a
	db #c7,#12,#2b,#86,#26,#04,#c7,#18
	db #2b,#04,#c7,#12,#24,#04,#c7,#1b
	db #22,#04,#c7,#1e,#1f,#04,#c7,#24
	db #ff,#3e,#02,#09,#43,#82,#43,#82
	db #43,#06,#08,#48,#04,#09,#46,#84
	db #45,#84,#41,#84,#43,#84,#be,#09
	db #c1,#09,#c3,#09,#c6,#09,#c3,#09
	db #c1,#09,#43,#86,#4a,#84,#48,#84
	db #45,#84,#46,#84,#43,#84,#ff,#be
	db #18,#c1,#08,#c3,#08,#c6,#08,#c3
	db #08,#c1,#08,#43,#86,#48,#84,#46
	db #84,#45,#84,#41,#84,#43,#84,#be
	db #08,#c1,#08,#c3,#08,#c6,#08,#c3
	db #08,#c1,#08,#43,#86,#4a,#84,#48
	db #84,#45,#84,#46,#84,#43,#84,#ff
	db #00,#04,#c3,#f9,#07,#c5,#09,#46
	db #82,#46,#82,#46,#82,#c6,#09,#45
	db #83,#43,#82,#43,#82,#43,#82,#41
	db #82,#41,#82,#41,#82,#45,#82,#c5
	db #09,#43,#85,#c3,#09,#c5,#09,#46
	db #82,#46,#82,#46,#82,#c6,#09,#45
	db #83,#43,#82,#43,#82,#43,#82,#48
	db #83,#45,#83,#46,#82,#45,#82,#ff
	db #43,#04,#09,#c3,#09,#c5,#09,#46
	db #82,#46,#82,#46,#82,#c6,#09,#45
	db #83,#43,#82,#43,#82,#43,#82,#41
	db #82,#41,#82,#41,#82,#45,#82,#c5
	db #09,#43,#85,#43,#82,#4a,#82,#4a
	db #82,#4a,#82,#ca,#09,#48,#83,#46
	db #82,#45,#82,#43,#82,#41,#83,#41
	db #83,#45,#82,#45,#82,#ff,#43,#04
	db #f9,#07,#c3,#09,#c5,#09,#46,#82
	db #46,#82,#46,#82,#c6,#09,#45,#83
	db #43,#82,#43,#82,#43,#82,#41,#82
	db #41,#82,#41,#82,#45,#82,#c5,#09
	db #43,#85,#c3,#09,#c5,#09,#46,#82
	db #46,#82,#46,#82,#c6,#09,#45,#83
	db #43,#82,#43,#82,#43,#82,#48,#83
	db #45,#83,#46,#82,#45,#82,#ff,#00
	db #01,#41,#02,#09,#46,#82,#41,#9b
	db #3a,#02,#01,#3a,#04,#06,#3a,#04
	db #01,#3a,#02,#06,#3a,#04,#01,#3a
	db #82,#3a,#04,#06,#3a,#04,#01,#3a
	db #02,#06,#3a,#04,#01,#ff,#3a,#02
	db #01,#3a,#04,#06,#3a,#04,#01,#3a
	db #02,#06,#3a,#04,#01,#3a,#82,#3a
	db #04,#06,#3a,#04,#01,#3a,#02,#06
	db #3a,#04,#01,#3a,#82,#3a,#04,#06
	db #3a,#04,#01,#3a,#02,#06,#3a,#04
	db #01,#3a,#82,#3a,#04,#06,#3a,#04
	db #01,#3a,#02,#06,#3a,#04,#01,#ff
	db #ca,#18,#cd,#08,#cf,#08,#d2,#08
	db #cf,#08,#cd,#08,#4f,#86,#54,#84
	db #52,#84,#51,#84,#4d,#84,#4f,#84
	db #ca,#08,#cd,#08,#cf,#08,#d2,#08
	db #cf,#08,#cd,#08,#4f,#86,#56,#84
	db #54,#84,#51,#84,#52,#84,#4f,#84
	db #ff,#00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Disc Mac Challenge Issue 20 - Music 3 (1996)(Hypnomega)()",0
	db "ST-Module",0

	read "music_end.asm"
