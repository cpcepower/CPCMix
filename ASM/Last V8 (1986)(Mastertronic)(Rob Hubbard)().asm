; Music of Last V8 (1986)(Mastertronic)(Rob Hubbard)()
; Ripped by Megachur the 11/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LASTV8TH.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #1c8c

	read "music_header.asm"

;
.init_music
.l1c8c
;
	call l1cb4
	call l1cc7
	ret
.l1c93
	push af
	push bc
	ld b,#f4
	out (c),a
	ld a,#c0
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	pop bc
	push bc
	ld b,#f4
	out (c),c
	ld a,#80
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	pop bc
	pop af
	ret
;
.stop_music
.l1cb4
;
	ld b,#0e
.l1cb6
	ld a,b
	dec a
	ld c,#00
	call l1c93
	djnz l1cb6
	ld a,#07
	ld c,#bf
	call l1c93
	ret
.l1cc7
	ld ix,l1ea1
	ld b,#03
.l1ccd
	push bc
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#02),e
	ld (ix+#03),d
	ld (ix+#04),l
	ld (ix+#05),h
	call l1dad
	ld bc,#0014
	add ix,bc
	pop bc
	djnz l1ccd
	ret
;
.play_music
.l1cf0
;
	ld a,#00
	or a
	ret nz
	push ix
	ld ix,l1ea1
	ld a,#80
	ld (l1d41),a     ;� revoir !
	ld b,#03
.l1d01
	push bc
	ld a,(ix+#06)
	dec a
	ld (ix+#06),a
	ld (l1d6f),a
	call z,l1dad
	ld a,(ix+#10)
	or a
	jp z,l1d23
	add a
	ld e,a
	ld d,#00
	ld hl,l1d40
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l1d23
	ld c,(ix+#0d)
	ld a,(l1d41)
	or c
	ld (l1d41),a
	ld bc,#0014
	add ix,bc
	pop bc
	djnz l1d01
	ld a,(l1d41)
	ld c,a
	ld a,#07
	call l1c93
	pop ix
.l1d40
	ret                 ;    data !!!
.l1d41
	db #00
	ld a,(hl)
	dec e
	ld l,(hl)
	dec e
	ld c,b
	dec e
	ld a,(ix+#12)
	inc a
	and #07
	ld (ix+#12),a
	ld e,#00
	jp z,l1d92
	cp #04
	jp nz,l1d23
	ld a,(ix+#11)
	ld e,a
	ld d,#00
	ld hl,l1edd
	add hl,de
	ld a,(hl)
	inc a
	ld c,a
	ld a,(ix+#08)
	jp l1da1
.l1d6f equ $ + 1
	ld a,#01
	or a
	jp nz,l1d23
	ld a,#0d
	ld c,#0b
	call l1c93
	jp l1d23
	ld a,(ix+#12)
	inc a
.l1d83 equ $ + 1
	and #03
	ld (ix+#12),a
	ld e,#00
	jr z,l1d92
.l1d8c equ $ + 1
	ld e,#18
.l1d8e equ $ + 1
	cp #02
	jp nz,l1d23
.l1d92
	ld a,(ix+#11)
	add e
	ld c,a
	ld b,#00
	ld hl,l1edd
	add hl,bc
	ld a,(ix+#08)
	ld c,(hl)
.l1da1
	inc hl
	call l1c93
	inc a
	ld c,(hl)
	call l1c93
	jp l1d23
.l1dad
	ld l,(ix+#02)
	ld h,(ix+#03)
	ld a,(hl)
	cp #ff
	call z,l1e82
	ld a,(hl)
	bit 7,a
	jp nz,l1df6
.l1dbf
	inc hl
	ld c,(hl)
	inc hl
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#06),c
	add (ix+#07)
	add a
	ld (ix+#11),a
	ld c,a
	ld b,#00
	ld hl,l1edd
	add hl,bc
	ld a,(ix+#08)
	ld c,(hl)
	inc hl
	call l1c93
	inc a
	ld c,(hl)
	call l1c93
	ld a,(ix+#0a)
	ld (ix+#0d),a
	ld c,(ix+#0e)
.l1def
	ld a,(ix+#0f)
	call l1c93
	ret
.l1df6
	and #7f
	push hl
	add a
	ld e,a
	ld d,#00
	ld hl,l1e06
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l1e06
	dw l1e37,l1e4b,l1e17,l1e6a
	dw l1e12,l1e2c
.l1e12
	pop hl
	inc hl
	xor a
	jr l1e30
.l1e17
	pop hl
	inc hl
	ld a,(hl)
	ld (l1d83),a
	inc hl
	ld a,(hl)
	ld (l1d8e),a
	inc hl
	ld a,(hl)
	ld (l1d8c),a
	inc hl
	ld a,#01
	jr l1e30
.l1e2c
	pop hl
	inc hl
	ld a,#03
.l1e30
	ld (ix+#10),a
	ld a,(hl)
	jp l1dbf
.l1e37
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#02),l
	ld (ix+#03),h
	ld a,(ix+#09)
	ld (ix+#0d),a
	ret
.l1e4b
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#02),l
	ld (ix+#03),h
	ld a,#06
	ld c,#14
	call l1c93
	ld a,(ix+#0b)
	ld (ix+#0d),a
	ld c,#0c
	jp l1def
.l1e6a
	pop hl
	inc hl
	ld a,#02
	ld (ix+#10),a
	ld a,#0b
	ld c,(hl)
	inc hl
	call l1c93
	inc a
	ld c,(hl)
	inc hl
	call l1c93
	ld a,(hl)
	jp l1dbf
.l1e82
	ld l,(ix+#04)
	ld h,(ix+#05)
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr nz,l1e95
	ld l,(ix+#00)
	ld h,(ix+#01)
.l1e95
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ex de,hl
	ret
.l1ea1
	dw #1f6b                               ; � revoir
	db #00,#00,#00,#00,#00,#00,#00,#09
	db #08,#01,#00,#00,#0d,#08,#00,#00
	db #00,#00
	dw #1fbf
	db #00,#00,#00,#00,#00,#00,#02,#12
	db #10,#02,#00,#00,#10,#09,#00,#00
	db #00,#00
	dw #1ff5
	db #00,#00,#00,#00,#00,#0c,#04,#24
	db #20,#04,#00,#00,#0f,#0a,#00,#00
	db #00,#00
.l1edd
	db #a7,#06,#47,#06,#ed,#05,#98,#05
	db #47,#05,#fc,#04,#b4,#04,#70,#04
	db #31,#04,#f4,#03,#bc,#03,#86,#03
	db #53,#03,#24,#03,#f6,#02,#cc,#02
	db #a4,#02,#7e,#02,#5a,#02,#38,#02
	db #18,#02,#fa,#01,#de,#01,#c3,#01
	db #aa,#01,#92,#01,#7b,#01,#66,#01
	db #52,#01,#3f,#01,#2d,#01,#1c,#01
	db #0c,#01,#fd,#00,#ef,#00,#e1,#00
	db #d5,#00,#c9,#00,#be,#00,#b3,#00
	db #a9,#00,#9f,#00,#96,#00,#8e,#00
	db #86,#00,#7f,#00,#77,#00,#71,#00
	db #6a,#00,#64,#00,#5f,#00,#59,#00
	db #54,#00,#50,#00,#4b,#00,#47,#00
	db #43,#00,#3f,#00,#3c,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#26,#00,#24,#00
	db #22,#00,#20,#00,#1e,#00,#50,#21
	db #50,#21,#50,#21,#50,#21,#c5,#20
	db #c8,#20,#c8,#20,#c8,#20,#c8,#20
	db #d3,#20,#d3,#20,#d3,#20,#de,#20
	db #2a,#21,#2a,#21,#74,#21,#93,#21
	db #2a,#21,#74,#21,#9e,#21,#2a,#21
	db #a9,#21,#a9,#21,#d2,#21,#d2,#21
	db #2a,#21,#2a,#21,#59,#22,#80,#22
	db #59,#22,#87,#22,#59,#22,#80,#22
	db #59,#22,#87,#22,#2a,#21,#2a,#21
	db #50,#21,#50,#21,#50,#21,#50,#21
	db #ff,#ff,#5d,#20,#5d,#20,#5d,#20
	db #5d,#20,#5d,#20,#5d,#20,#5d,#20
	db #5d,#20,#5d,#20,#5d,#20,#5d,#20
	db #a1,#20,#a1,#20,#a1,#20,#a1,#20
	db #5d,#20,#5d,#20,#5d,#20,#5d,#20
	db #5d,#20,#5d,#20,#5d,#20,#5d,#20
	db #5d,#20,#5d,#20,#5d,#20,#ff,#ff
	db #50,#21,#50,#21,#50,#21,#50,#21
	db #e9,#20,#53,#21,#53,#21,#53,#21
	db #53,#21,#53,#21,#53,#21,#53,#21
	db #53,#21,#53,#21,#53,#21,#53,#21
	db #53,#21,#05,#22,#05,#22,#05,#22
	db #05,#22,#16,#22,#16,#22,#16,#22
	db #16,#22,#27,#22,#27,#22,#27,#22
	db #27,#22,#38,#22,#38,#22,#53,#21
	db #53,#21,#53,#21,#53,#21,#38,#22
	db #38,#22,#38,#22,#38,#22,#38,#22
	db #38,#22,#38,#22,#38,#22,#53,#21
	db #53,#21,#53,#21,#53,#21,#50,#21
	db #50,#21,#50,#21,#50,#21,#ff,#ff
	db #83,#00,#05,#2b,#08,#2d,#08,#32
	db #08,#26,#08,#32,#08,#2d,#08,#1f
	db #08,#32,#08,#37,#08,#2d,#08,#2b
	db #08,#32,#08,#1f,#08,#2d,#08,#26
	db #08,#2d,#08,#2b,#08,#2d,#08,#32
	db #08,#26,#08,#32,#08,#2d,#08,#1f
	db #08,#32,#08,#37,#08,#2d,#08,#2b
	db #08,#32,#08,#1f,#08,#2d,#08,#26
	db #08,#2d,#08,#ff,#83,#c8,#00,#2b
	db #08,#2b,#08,#30,#08,#26,#08,#30
	db #08,#2b,#08,#1f,#08,#30,#08,#37
	db #08,#2b,#08,#2b,#08,#30,#08,#1f
	db #08,#2b,#08,#24,#08,#2b,#08,#ff
	db #80,#20,#ff,#84,#26,#08,#2b,#10
	db #33,#08,#85,#32,#60,#ff,#84,#2b
	db #08,#32,#10,#3a,#08,#85,#39,#60
	db #ff,#84,#2b,#08,#32,#10,#3a,#08
	db #85,#39,#40,#ff,#07,#58,#09,#08
	db #0a,#10,#09,#10,#05,#58,#09,#08
	db #0a,#10,#09,#10,#04,#58,#09,#08
	db #0a,#10,#09,#10,#03,#58,#09,#08
	db #0a,#10,#09,#10,#0c,#58,#0e,#08
	db #0f,#10,#0e,#10,#0a,#58,#0e,#08
	db #0f,#10,#0e,#10,#09,#58,#0e,#08
	db #0f,#10,#0e,#10,#02,#58,#0e,#08
	db #0f,#10,#0e,#10,#ff,#82,#07,#01
	db #18,#2b,#08,#2b,#08,#2e,#10,#2d
	db #08,#29,#10,#2e,#10,#26,#18,#80
	db #08,#26,#08,#29,#08,#2a,#08,#2b
	db #08,#2b,#08,#2e,#10,#2d,#08,#29
	db #10,#2b,#08,#80,#40,#ff,#07,#08
	db #13,#08,#81,#08,#07,#08,#13,#08
	db #1f,#08,#81,#08,#13,#08,#07,#08
	db #13,#08,#81,#08,#07,#08,#13,#08
	db #1f,#08,#81,#08,#13,#08,#ff,#82
	db #03,#03,#18,#1a,#18,#18,#08,#1a
	db #08,#1a,#08,#18,#08,#1d,#10,#1d
	db #08,#1c,#10,#18,#08,#1a,#10,#18
	db #08,#1a,#08,#1a,#08,#ff,#1a,#10
	db #1a,#08,#16,#10,#13,#08,#80,#40
	db #ff,#1f,#10,#2b,#08,#26,#10,#1f
	db #08,#80,#40,#ff,#82,#03,#01,#0e
	db #18,#08,#18,#08,#1b,#10,#22,#10
	db #1d,#08,#21,#10,#21,#10,#1d,#08
	db #21,#08,#1d,#08,#18,#10,#18,#08
	db #18,#08,#1b,#10,#22,#10,#1d,#08
	db #21,#08,#80,#40,#ff,#82,#07,#02
	db #18,#21,#08,#21,#08,#24,#08,#21
	db #08,#2b,#08,#24,#08,#21,#08,#21
	db #10,#21,#08,#24,#08,#21,#08,#28
	db #08,#26,#08,#21,#08,#21,#10,#21
	db #08,#24,#08,#21,#08,#2b,#08,#26
	db #08,#21,#08,#2a,#08,#80,#40,#ff
	db #00,#08,#0c,#08,#81,#08,#00,#08
	db #0c,#08,#18,#08,#81,#08,#0c,#08
	db #ff,#05,#08,#11,#08,#81,#08,#05
	db #08,#11,#08,#1d,#08,#81,#08,#11
	db #08,#ff,#09,#08,#15,#08,#81,#08
	db #09,#08,#15,#08,#21,#08,#81,#08
	db #15,#08,#ff,#02,#08,#0e,#08,#81
	db #08,#02,#08,#0e,#08,#1a,#08,#81
	db #08,#0e,#08,#02,#08,#0e,#08,#81
	db #08,#02,#08,#0e,#08,#1a,#08,#81
	db #08,#0e,#08,#ff,#82,#07,#01,#0e
	db #24,#08,#24,#08,#21,#10,#24,#10
	db #21,#08,#24,#10,#24,#08,#21,#10
	db #24,#08,#26,#18,#24,#08,#24,#08
	db #21,#10,#24,#10,#21,#08,#24,#10
	db #24,#08,#ff,#21,#10,#20,#08,#1f
	db #18,#ff,#26,#10,#29,#08,#2a,#18
	db #ff,#06,#00,#13,#04,#a4,#00,#02
	db #02,#3b,#00,#02,#01,#79,#00,#01
	db #02,#21,#00,#09,#08,#02,#00,#01
	db #01,#0f,#00,#01,#01,#0b,#00,#05
	db #01,#0b,#00,#04,#02,#02,#00,#02
	db #02,#07,#00,#01,#02,#05,#00,#04
	db #02,#0d,#00,#03,#01,#02,#00,#02
	db #01,#08,#00,#01,#08,#06,#00,#01
	db #01,#05,#00,#01,#02,#15,#00,#02
	db #02,#08,#00,#05,#02,#04,#00,#02
	db #08,#06,#00,#08,#01,#08,#00,#01
	db #02,#06,#00,#01,#01,#03,#00,#04
	db #04,#02,#00,#03,#04,#0f,#00,#01
	db #02,#23,#00,#02,#08,#04,#00,#02
	db #02,#02,#00,#02,#0a,#01,#08,#01
	db #00,#01,#08,#01,#0a,#05,#00,#03
	db #08,#0a,#00,#01,#01,#03,#00,#01
	db #01,#08,#00,#01,#04,#09,#00,#01
	db #01,#01,#00,#01,#01,#01,#00,#01
	db #01,#08,#00,#01,#01,#3d,#00,#02
	db #02,#02,#00,#01,#01,#02,#00,#01
	db #01,#06,#00,#01,#02,#04,#00,#01
	db #04,#0e,#00,#01,#04,#07,#00,#01
	db #02,#04,#00,#01,#04,#07,#00,#01
	db #01,#0d,#00,#01,#02,#07,#00,#03
	db #02,#02,#00,#02,#02,#04,#00,#02
	db #01,#01,#00,#01,#01,#0e,#00,#01
	db #01,#01,#00,#02,#01,#02,#00,#08
	db #04,#16,#00,#01,#01,#0a,#00,#05
	db #08,#01,#01,#09,#00,#01,#08,#02
	db #00,#01,#02,#02,#00,#01,#02,#04
	db #00,#01,#02,#04,#00,#02,#02,#02
	db #00,#02,#02,#0b,#00,#01,#01,#0e
	db #00,#01,#01,#01,#00,#01,#01,#02
	db #00,#01,#01,#01,#00,#03,#01,#03
	db #00,#01,#02,#01,#00,#02,#02,#03
	db #00,#01,#04,#03,#00,#01,#01,#06
	db #00,#01,#02,#10,#00,#01,#04,#07
	db #00,#01,#01,#02,#00,#01,#02,#05
	db #00,#01,#01,#07,#00,#01,#02,#05
	db #00,#01,#04,#0d,#00,#01,#01,#04
	db #00,#01,#04,#05,#00,#01,#01,#0f
	db #00,#02,#02,#05,#00,#02,#08,#03
	db #00,#02,#09,#02,#00,#01,#02,#03
	db #00,#01,#08,#06,#00,#01,#02,#02
	db #00,#01,#08,#01,#00,#03,#08,#02
	db #00,#01,#08,#05,#00,#01,#08,#05
	db #00,#01,#04,#05,#00,#08,#02,#10
	db #00,#01,#08,#08,#00,#0c,#01,#01
	db #00,#02,#02,#01,#00,#02,#02,#02
	db #00,#02,#01,#02,#00,#01,#02,#02
	db #00,#16,#08,#07,#00,#03,#08,#62
	db #00,#02,#01,#01,#00,#09,#04,#05
	db #05,#0a,#00,#04,#0a,#01,#02,#01
	db #00,#03,#02,#02,#00,#02,#01,#09
	db #00,#01,#02,#03,#00,#03,#08,#03
	db #00,#02,#08,#05,#00,#02,#02,#05
	db #00,#02,#04,#04,#00,#01,#02,#01
	db #00,#04,#02,#03,#00,#09,#01,#01
	db #02,#01,#00,#02,#02,#01,#00,#01
	db #08,#01,#01,#03,#00,#03,#08,#a7
	db #00,#0d,#08,#08,#00,#03,#08,#48
	db #00,#0b,#04,#09,#00,#01,#04,#06
	db #00,#01,#04,#03,#00,#01,#01,#12
	db #00,#01,#04,#01,#00,#02,#04,#03
	db #00,#02,#08,#02,#00,#02,#04,#01
	db #00,#01,#08,#14,#00,#01,#04,#09
	db #00,#01,#02,#0c,#00,#03,#04,#05
	db #00,#02,#04,#09,#00,#04,#04,#0b
	db #00,#03,#04,#0c,#00,#08,#08,#01
	db #00,#01,#08,#02,#00,#01,#01,#03
	db #00,#03,#08,#01,#00,#02,#08,#02
	db #00,#01,#04,#2c,#00,#02,#04,#03
	db #00,#01,#02,#03,#00,#03,#04,#41
	db #00,#01,#01,#06,#00,#07,#08,#01
	db #00,#01,#04,#01,#00,#02,#04,#05
	db #00,#02,#08,#01,#00,#02,#04,#01
	db #00,#02,#08,#03,#00,#02,#04,#01
	db #00,#02,#08,#03,#00,#01,#04,#0a
	db #00,#01,#08,#09,#00,#02,#02,#02
	db #00,#02,#01,#02,#00,#01,#02,#14
	db #00,#01,#08,#05,#00,#01,#08,#0f
	db #00,#03,#08,#04,#00,#01,#08,#06
	db #00,#0c,#08,#50,#00,#18,#71,#06
	db #14
;
.music_info
	db "Last V8 (1986)(Mastertronic)(Rob Hubbard)",0
	db "",0

	read "music_end.asm"