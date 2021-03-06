; Music of Tribal Telegramm 3 - Intro (1994)(FrankenTeam)()(ST-Module)
; Ripped by Megachur the 05/10/2013
; $VER 1.4

	IFDEF FILENAME_WRITE
	write "TRIBT3IN.BIN"
	ENDIF

music_date_rip_day		equ 05
music_date_rip_month	equ 10
music_date_rip_year		equ 2013
music_adr				equ &9000

	read "music_header.asm"

	jr l9004
	jr l9013
.l9004
	call l902f
	ld hl,l9452
	ld de,l901c
	ld bc,#81ff
	jp #bcd7
.l9013
	ld hl,l9452
	call #bcdd
	jp l909b
.l901c
	push ix
	call l90b7
	pop ix
	ret
	jp l902f
	jp l90b7
	jp l909b
	ld h,(hl)
	inc b
;
.init_music
.l902f
;
	ld b,#03
	ld ix,l93fe
	ld iy,l932a
	ld de,#001c
.l903c
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
	djnz l903c
	ld a,#08
	ld (l90df),a
	ld a,d
	ld (l90f3),a
	inc a
	ld (l90da),a
	ld a,#38
	ld (l90e4),a
	ld a,#ff
	ld (l9326),a
	ld (l9327),a
	ld (l9328),a
	ld (l9329),a
	ld a,#0c
	ld c,d
	call l9308
	ld a,#0d
	ld c,d
	jp l9308
;
.stop_music
.l909b
;
	ld a,#07
	ld c,#3f
	call l9308
	ld a,#08
	ld c,#00
	call l9308
	ld a,#09
	ld c,#00
	call l9308
	ld a,#0a
	ld c,#00
	jp l9308
;
.play_music
.l90b7
;
	ld hl,l90da
	dec (hl)
	ld ix,l93fe
	ld bc,l940c
	call l916d
	ld ix,l941a
	ld bc,l9428
	call l916d
	ld ix,l9436
	ld bc,l9444
	call l916d
.l90da equ $ + 1
	ld a,#00
	or a
	jr nz,l90e3
.l90df equ $ + 1
	ld a,#00
	ld (l90da),a
.l90e4 equ $ + 1
.l90e3
	ld a,#00
	ld hl,l9327
	cp (hl)
	jr z,l90f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l9308
.l90f3 equ $ + 1
.l90f2
	ld a,#00
	ld hl,l9326
	cp (hl)
	jr z,l9101
	ld (hl),a
	ld c,a
	ld a,#06
	call l9308
.l9102 equ $ + 1
.l9101
	ld a,#00
	ld hl,l9328
	cp (hl)
	jr z,l9110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l9308
.l9111 equ $ + 1
.l9110
	ld a,#00
	ld hl,l9329
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l9308
.l911e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l921e
.l912d
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
	jp l9308
.l9147
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l915c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l915c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l9180
.l916d
	ld a,(l90da)
	or a
	jp nz,l921e
	dec (ix+#06)
	jp nz,l921e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l9180
	ld a,(hl)
	or a
	jr z,l911e
	cp #fe
	jr z,l912d
	cp #ff
	jr z,l9147
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l9330
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l91bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l91bc
	and #7f
	ld (ix+#06),a
	jr l920f
.l91bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l91d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l91d0
	add a
	add a
	add a
	ld e,a
	ld hl,l9466
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
	jr z,l920f
	cp #f0
	jp z,l92c4
	cp #d0
	jp z,l92e0
	cp #b0
	jp z,l92e8
	cp #80
	jp nc,l92f0
	cp #10
	jr nz,l920f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l920f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l921e
	ld a,(ix+#17)
	or a
	jr nz,l9232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l9232
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l925d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l9330
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l925d
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
	call l9308
	ld c,h
	ld a,(ix+#03)
	call l9308
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l929b
	and #0f
	sub (ix+#0a)
	jr nc,l9291
	xor a
.l9291
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l9308
.l929b
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
	jr z,l92b8
	ld b,a
	ld a,c
	ld (l90f3),a
	ld a,b
	sub #40
.l92b8
	ld (l92bf),a
	ld a,(l90e4)
.l92bf equ $ + 1
	bit 0,a
	ld (l90e4),a
	ret
.l92c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l94e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l920f
.l92e0
	inc hl
	ld a,(hl)
	ld (l90df),a
	jp l920f
.l92e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l920f
.l92f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l9111),a
	inc hl
	ld a,(hl)
	ld (l9102),a
	jp l920f
.l9308
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
.l9329 equ $ + 3
.l9328 equ $ + 2
.l9327 equ $ + 1
.l9326
	db #ff,#ff,#ff,#ff
.l932a
	dw l9606,l962a,l964e
.l9330
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
.l93fe equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l940c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l941a
	db #00,#00,#02,#03,#09,#00,#00,#00
.l9428 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9436 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l9444 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9452
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l9466 equ $ + 4
	db #75,#6c,#65,#2e,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#45,#dd
	db #54,#af,#4e,#4f,#06,#95,#46,#95
	db #66,#95,#1a,#00,#ff,#8e,#21,#21
	db #70,#ed,#23,#56,#86,#95,#c6,#95
	db #e6,#95,#08,#18,#fe,#8e,#ca,#8f
	db #98,#8d,#50,#30,#08,#cb,#4f,#95
	db #00,#7c,#b0,#18,#ec,#8d,#a0,#bf
	db #08,#65,#4d,#4f,#06,#8f,#af,#a7
	db #75,#8d,#f0,#30,#09,#65,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
.l94e6 equ $ + 4
	db #00,#8f,#00,#00,#00,#8f,#00,#8f
	db #00,#8f,#00,#8f,#00,#8f,#00,#8f
	db #00,#8f,#00,#8f,#00,#8f,#00,#8f
	db #00,#8f,#00,#8f,#00,#8f,#00,#8f
	db #00,#8f,#00,#8f,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0a,#0a,#0b,#0b
	db #0c,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9606 equ $ + 4
	db #00,#00,#00,#00,#00,#72,#96,#00
	db #a3,#96,#00,#72,#96,#00,#72,#96
	db #00,#72,#96,#00,#72,#96,#00,#a3
	db #96,#00,#72,#96,#00,#72,#96,#00
	db #d4,#96,#00,#d8,#96,#80,#06,#96
.l962a
	db #00,#e3,#96,#00,#e9,#96,#00,#f1
	db #96,#00,#f7,#96,#00,#03,#97,#00
	db #e3,#96,#00,#e9,#96,#00,#f1,#96
	db #00,#f7,#96,#00,#ff,#96,#00,#07
.l964e equ $ + 4
	db #97,#80,#2a,#96,#00,#0b,#97,#00
	db #18,#97,#00,#27,#97,#00,#34,#97
	db #00,#44,#97,#00,#0b,#97,#00,#18
	db #97,#00,#27,#97,#00,#34,#97,#00
	db #3e,#97,#00,#48,#97,#80,#4e,#96
	db #ba,#02,#22,#82,#22,#82,#a2,#02
	db #22,#84,#16,#82,#ba,#02,#22,#82
	db #22,#82,#a2,#02,#22,#84,#16,#82
	db #ba,#02,#22,#82,#22,#82,#a2,#02
	db #22,#84,#16,#82,#ba,#02,#22,#82
	db #22,#82,#a2,#02,#22,#84,#16,#82
	db #ff,#ba,#02,#22,#82,#22,#82,#a2
	db #02,#22,#84,#16,#82,#ba,#02,#22
	db #82,#22,#82,#a2,#02,#22,#84,#16
	db #82,#ba,#02,#22,#82,#22,#82,#a2
	db #02,#22,#84,#16,#82,#ba,#02,#22
	db #82,#22,#82,#a2,#02,#22,#84,#16
	db #82,#ff,#2e,#30,#04,#ff,#00,#18
	db #2e,#14,#04,#22,#02,#02,#22,#82
	db #ff,#2e,#18,#04,#25,#98,#ff,#2e
	db #18,#04,#31,#8c,#30,#8c,#ff,#2e
	db #18,#04,#27,#98,#ff,#25,#18,#04
	db #25,#8c,#24,#8c,#ff,#52,#30,#04
	db #ff,#2e,#30,#04,#ff,#4e,#30,#04
	db #ff,#c6,#04,#c8,#04,#49,#92,#48
	db #82,#44,#82,#3d,#98,#ff,#c6,#04
	db #c8,#04,#49,#92,#48,#82,#44,#82
	db #4d,#8c,#4b,#8c,#ff,#c6,#04,#c8
	db #04,#49,#92,#48,#82,#44,#82,#3f
	db #98,#ff,#3d,#16,#04,#3a,#82,#41
	db #8c,#3f,#8c,#ff,#2e,#18,#04,#50
	db #98,#ff,#3a,#30,#04,#ff,#00,#18
	db #4d,#18,#04,#ff
;
.music_info
	db "Tribal Telegramm 3 - Intro (1994)(FrankenTeam)()",0
	db "ST-Module",0

	read "music_end.asm"
