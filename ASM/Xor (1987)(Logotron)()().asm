; Music of Xor (1987)(Logotron)()()
; Ripped by Megachur the 27/02/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XOR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #1382

	read "music_header.asm"

;
.play_music
;
	ld iy,l154b
	call l1398
	call l146c
	ld a,(l1548)
	and a
	call z,l1425
	ld iy,#1003
	ret
.l1398
	ld ix,l1549
	dec (ix+#00)
	ret nz
	ld a,(ix+#01)
	ld (ix+#00),a
	ld ix,l1577
	ld de,l156e
	ld b,#03
.l13af
	push bc
	push de
	ld h,d
	ld l,e
	dec (hl)
	dec de
	dec de
	dec (ix+#05)
	jr nz,l1418
.l13bb
	ld l,(ix+#00)
	ld h,(ix+#01)
.l13c1
	ld a,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	bit 7,a
	jr z,l1402
	cp #ff
	jr nz,l13db
	ld (ix+#02),l
	ld (ix+#03),h
	jr l13bb
.l13db
	cp #fe
	jr nz,l13f5
	ld a,(ix+#04)
	and a
	jr nz,l13e8
	ld (ix+#04),c
.l13e8
	dec (ix+#04)
	jr z,l13bb
	ld l,(ix+#02)
	ld h,(ix+#03)
	jr l13c1
.l13f5
	cp #fd
	jr nz,l1400
	sub a
	ld (l1548),a
	pop de
	pop bc
	ret
.l1400
	jr l1418
.l1402
	add a
	ld hl,l1589
	add l
	ld l,a
	jr nc,l140b
	inc h
.l140b
	ld a,(hl)
	ld (de),a
	inc de
	inc hl
	ld a,(hl)
	ld (de),a
	inc de
	ld a,#14
	ld (de),a
	ld (ix+#05),c
.l1418
	ld bc,#0006
	add ix,bc
	pop de
	inc de
	inc de
	inc de
	pop bc
	djnz l13af
	ret
;
.real_init_music
.l1425
;
	ld hl,l1619
	ld (l1577),hl
	ld hl,#0000
	ld (l1579),hl
	ld a,l
	ld (l157b),a
	inc a
	ld (l157c),a
	ld hl,l1763
	ld (l157d),hl
	ld hl,#0000
	ld (l157f),hl
	ld a,l
	ld (l1581),a
	inc a
	ld (l1582),a
	ld hl,l1793
	ld (l1583),hl
	ld hl,#0000
	ld (l1585),hl
	ld a,l
	ld (l1587),a
	inc a
	ld (l1588),a
	ld a,#38
	ld (l1576),a
	ld a,#ff
	ld (l1548),a
	ret
.l146c
	ld ix,l156c
	ld c,(ix+#00)
	sub a
	call l1524
	ld c,(ix+#01)
	inc a
	call l1524
	ld c,(ix+#03)
	inc a
	call l1524
	ld c,(ix+#04)
	inc a
	call l1524
	ld c,(ix+#02)
	srl c
	ld a,#08
	call l1524
	ld c,(ix+#05)
	srl c
	inc a
	call l1524
	bit 0,(iy+#0b)
	jr nz,l14c0
	ld c,(ix+#06)
	ld a,#04
	call l1524
	ld c,(ix+#07)
	inc a
	call l1524
	ld c,(ix+#08)
	srl c
	ld a,#0a
	call l1524
	jr l14ff
.l14c0
	ld a,#04
	ld c,#00
	call l1524
	inc a
	call l1524
	ld a,#0a
	ld c,#0f
	call l1524
	ld a,(l1576)
	and #df
	ld (l1576),a
	ld l,(iy+#0e)
	ld h,(iy+#0f)
	inc hl
	ld (iy+#0e),l
	ld (iy+#0f),h
	ld a,(hl)
	and a
	jr nz,l14f9
	res 0,(iy+#0b)
	ld a,(l1576)
	or #20
	ld (l1576),a
	jr l14ff
.l14f9
	ld c,a
	ld a,#06
	call l1524
.l14ff
	ld c,(ix+#0a)
	ld a,#07
	call l1524
	ret
	ld iy,l154b
	set 0,(iy+#0b)
	ld hl,l155a
	ld (iy+#0e),l
	ld (iy+#0f),h
	ld a,(iy+#0d)
	ld (iy+#0c),a
	ld iy,#1003
	ret
.l1524
	push af
	push bc
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
	pop bc
	pop af
	ret
.l1549 equ $ + 1
.music_end
.l1548
	db #ff,#03,#0a
.l154b
	db #00,#00,#00,#00,#00,#00,#00,#00
.l155a equ $ + 7
	db #00,#00,#00,#00,#01,#00,#02,#1e
	db #1f,#1f,#1d,#19,#1b,#17,#18,#1b
	db #1e,#1e,#1f,#1f,#1e,#1e,#1f,#1f
.l156e equ $ + 3
.l156c equ $ + 1
	db #00,#54,#00,#14,#c3,#01,#14,#52
.l1579 equ $ + 6
.l1577 equ $ + 4
.l1576 equ $ + 3
	db #01,#14,#00,#38,#35,#16,#33,#16
.l1582 equ $ + 7
.l1581 equ $ + 6
.l157f equ $ + 4
.l157d equ $ + 2
.l157c equ $ + 1
.l157b
	db #00,#01,#6b,#17,#69,#17,#00,#10
.l1589 equ $ + 6
.l1588 equ $ + 5
.l1587 equ $ + 4
.l1585 equ $ + 2
.l1583
	db #99,#17,#00,#00,#00,#10,#bc,#03
	db #86,#03,#53,#03,#24,#03,#f6,#02
	db #cc,#02,#a4,#02,#7e,#02,#5a,#02
	db #38,#02,#18,#02,#fa,#01,#de,#01
	db #c3,#01,#aa,#01,#92,#01,#7b,#01
	db #66,#01,#52,#01,#3f,#01,#2d,#01
	db #1c,#01,#0c,#01,#fd,#00,#ef,#00
	db #e1,#00,#d5,#00,#c9,#00,#be,#00
	db #b3,#00,#a9,#00,#9f,#00,#96,#00
	db #8e,#00,#86,#00,#7f,#00,#77,#00
	db #71,#00,#6a,#00,#64,#00,#5f,#00
	db #59,#00,#54,#00,#50,#00,#4b,#00
	db #47,#00,#43,#00,#3f,#00,#3c,#00
	db #38,#00,#35,#00,#32,#00,#2f,#00
	db #2d,#00,#2a,#00,#28,#00,#26,#00
	db #24,#00,#18,#00,#20,#00,#1e,#00
	db #1c,#00,#1b,#00,#19,#00,#18,#00
	db #16,#00,#15,#00,#14,#00,#13,#00
.l1619 equ $ + 6
	db #12,#00,#11,#00,#10,#00,#ff,#00
	db #29,#01,#25,#01,#22,#01,#25,#01
	db #fe,#04,#ff,#00,#2a,#01,#25,#01
	db #22,#01,#25,#01,#fe,#04,#ff,#00
	db #2a,#01,#27,#01,#20,#01,#27,#01
	db #fe,#04,#ff,#00,#29,#01,#27,#01
	db #20,#01,#27,#01,#fe,#04,#ff,#00
	db #29,#01,#22,#01,#1e,#01,#22,#01
	db #fe,#05,#27,#01,#22,#01,#1e,#01
	db #22,#01,#25,#01,#22,#01,#1e,#01
	db #22,#01,#24,#01,#22,#01,#1e,#01
	db #22,#01,#ff,#00,#24,#01,#20,#01
	db #1b,#01,#20,#01,#fe,#06,#25,#01
	db #20,#01,#1b,#01,#20,#01,#27,#01
	db #20,#01,#1b,#01,#20,#01,#ff,#00
	db #27,#01,#20,#01,#19,#01,#20,#01
	db #fe,#04,#ff,#00,#25,#01,#20,#01
	db #19,#01,#20,#01,#fe,#04,#ff,#00
	db #29,#01,#25,#01,#22,#01,#25,#01
	db #fe,#04,#ff,#00,#2e,#01,#27,#01
	db #25,#01,#27,#01,#fe,#02,#ff,#00
	db #2c,#01,#27,#01,#25,#01,#27,#01
	db #fe,#02,#ff,#00,#2c,#01,#2a,#01
	db #25,#01,#2a,#01,#fe,#02,#ff,#00
	db #2c,#01,#29,#01,#25,#01,#29,#01
	db #fe,#02,#ff,#00,#2a,#01,#27,#01
	db #24,#01,#27,#01,#fe,#02,#ff,#00
	db #29,#01,#27,#01,#24,#01,#27,#01
	db #fe,#02,#ff,#00,#29,#01,#25,#01
	db #22,#01,#25,#01,#fe,#04,#ff,#00
	db #2a,#01,#25,#01,#22,#01,#25,#01
	db #fe,#04,#ff,#00,#2a,#01,#25,#01
	db #24,#01,#25,#01,#fe,#04,#ff,#00
	db #2c,#01,#25,#01,#20,#01,#25,#01
	db #fe,#04,#ff,#00,#2a,#01,#25,#01
	db #24,#01,#25,#01,#fe,#04,#ff,#00
	db #29,#01,#25,#01,#22,#01,#25,#01
	db #fe,#04,#ff,#00,#2a,#01,#25,#01
	db #24,#01,#25,#01,#fe,#04,#ff,#00
	db #2c,#01,#25,#01,#20,#01,#25,#01
	db #fe,#04,#ff,#00,#2a,#01,#25,#01
	db #24,#01,#25,#01,#fe,#04,#fd,#00
.l1763
	db #16,#10,#16,#10,#ff,#00,#0d,#10
	db #fe,#04,#14,#10,#14,#10,#12,#10
	db #11,#10,#16,#10,#14,#10,#12,#08
	db #11,#08,#0f,#08,#0f,#08,#0d,#10
	db #16,#10,#12,#10,#14,#10,#0f,#10
	db #16,#10,#12,#10,#11,#10,#1b,#10
.l1793
	db #0a,#10,#0d,#10,#12,#10,#12,#10
	db #16,#10,#16,#10,#08,#10,#0f,#10
	db #0d,#10,#0d,#10,#0a,#10,#08,#10
	db #0d,#08,#0d,#08,#0a,#08,#0d,#08
	db #0d,#10,#0d,#10,#0f,#10,#0d,#10
	db #0a,#10,#0a,#10,#06,#10,#05,#10
	db #0f,#10,#3e,#30,#0e,#0c
;
;org #121f
;
.init_music
;
	ld iy,l154b
	ld (iy+#0b),#00
	jp real_init_music
;
.music_info
	db "Xor (1987)(Logotron)()",0
	db "",0

	read "music_end.asm"
