; Music of Audio Illusions - 32 - Sci-Fi World 1 (1996)(Systeme D)(Frequency)(ST-Module)
; Ripped by Megachur the 26/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUDIOI32.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #56a0

	read "music_header.asm"

	jr l56a4
	jr l56b3
.l56a4
	call l56cf
	ld hl,l5af2
	ld de,l56bc
	ld bc,#81ff
	jp #bcd7
.l56b3
	ld hl,l5af2
	call #bcdd
	jp l573b
.l56bc
	push ix
	call l5757
	pop ix
	ret
	jp l56cf
	jp l5757
	jp l573b
	db #66,#04
;
.init_music
.l56cf
;
	ld b,#03
	ld ix,l5a9e
	ld iy,l59ca
	ld de,#001c
.l56dc
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
	djnz l56dc
	ld a,#07
	ld (l577f),a
	ld a,d
	ld (l5793),a
	inc a
	ld (l577a),a
	ld a,#38
	ld (l5784),a
	ld a,#ff
	ld (l59c6),a
	ld (l59c7),a
	ld (l59c8),a
	ld (l59c9),a
	ld a,#0c
	ld c,d
	call l59a8
	ld a,#0d
	ld c,d
	jp l59a8
;
.stop_music
.l573b
;
	ld a,#07
	ld c,#3f
	call l59a8
	ld a,#08
	ld c,#00
	call l59a8
	ld a,#09
	ld c,#00
	call l59a8
	ld a,#0a
	ld c,#00
	jp l59a8
;
.play_music
.l5757
;
	ld hl,l577a
	dec (hl)
	ld ix,l5a9e
	ld bc,l5aac
	call l580d
	ld ix,l5aba
	ld bc,l5ac8
	call l580d
	ld ix,l5ad6
	ld bc,l5ae4
	call l580d
.l577a equ $ + 1
	ld a,#05
	or a
	jr nz,l5783
.l577f equ $ + 1
	ld a,#07
	ld (l577a),a
.l5784 equ $ + 1
.l5783
	ld a,#38
	ld hl,l59c7
	cp (hl)
	jr z,l5792
	ld (hl),a
	ld c,a
	ld a,#07
	call l59a8
.l5793 equ $ + 1
.l5792
	ld a,#03
	ld hl,l59c6
	cp (hl)
	jr z,l57a1
	ld (hl),a
	ld c,a
	ld a,#06
	call l59a8
.l57a2 equ $ + 1
.l57a1
	ld a,#00
	ld hl,l59c8
	cp (hl)
	jr z,l57b0
	ld (hl),a
	ld c,a
	ld a,#0b
	call l59a8
.l57b1 equ $ + 1
.l57b0
	ld a,#00
	ld hl,l59c9
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l59a8
.l57be
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l58be
.l57cd
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
	jp l59a8
.l57e7
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l57fc
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l57fc
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l5820
.l580d
	ld a,(l577a)
	or a
	jp nz,l58be
	dec (ix+#06)
	jp nz,l58be
	ld l,(ix+#00)
	ld h,(ix+#01)
.l5820
	ld a,(hl)
	or a
	jr z,l57be
	cp #fe
	jr z,l57cd
	cp #ff
	jr z,l57e7
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l59d0
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l585c
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l585c
	and #7f
	ld (ix+#06),a
	jr l58af
.l585c
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l5870
	ld (ix+#05),a
	ld (ix+#0a),d
.l5870
	add a
	add a
	add a
	ld e,a
	ld hl,l5b06
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
	jr z,l58af
	cp #f0
	jp z,l5964
	cp #d0
	jp z,l5980
	cp #b0
	jp z,l5988
	cp #80
	jp nc,l5990
	cp #10
	jr nz,l58af
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l58af
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l58be
	ld a,(ix+#17)
	or a
	jr nz,l58d2
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l58d2
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l58fd
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l59d0
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l58fd
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
	call l59a8
	ld c,h
	ld a,(ix+#03)
	call l59a8
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l593b
	and #0f
	sub (ix+#0a)
	jr nc,l5931
	xor a
.l5931
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l59a8
.l593b
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
	jr z,l5958
	ld b,a
	ld a,c
	ld (l5793),a
	ld a,b
	sub #40
.l5958
	ld (l595f),a
	ld a,(l5784)
.l595f equ $ + 1
	set 5,a
	ld (l5784),a
	ret
.l5964
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l5b86
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l58af
.l5980
	inc hl
	ld a,(hl)
	ld (l577f),a
	jp l58af
.l5988
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l58af
.l5990
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l57b1),a
	inc hl
	ld a,(hl)
	ld (l57a2),a
	jp l58af
.l59a8
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
.l59c9 equ $ + 3
.l59c8 equ $ + 2
.l59c7 equ $ + 1
.l59c6
	db #03,#38,#00,#00
.l59ca
	db #e6,#5e,#04,#5f,#22,#5f
.l59d0
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
.l5a9e equ $ + 4
	db #00,#00,#00,#00,#d5,#5f,#00,#01
	db #08,#05,#01,#27,#00,#00,#00,#df
.l5aac equ $ + 2
	db #f2,#5e,#26,#5d,#66,#5d,#06,#5c
	db #19,#07,#1f,#01,#92,#01,#c6,#00
.l5aba
	db #3a,#61,#02,#03,#09,#00,#01,#33
.l5ac8 equ $ + 6
	db #00,#00,#00,#e7,#10,#5f,#a6,#5b
	db #e6,#5b,#06,#5c,#00,#00,#03,#1d
.l5ad6 equ $ + 4
	db #c9,#00,#a6,#00,#ea,#63,#04,#05
	db #0a,#03,#01,#20,#00,#00,#00,#ef
.l5ae4 equ $ + 2
	db #2e,#5f,#a6,#5b,#86,#5c,#06,#5c
	db #00,#00,#03,#1d,#5a,#02,#a6,#00
.l5af2
	db #f9,#b7,#fb,#b7,#00,#81,#bc,#56
	db #ff,#00,#53,#54,#2d,#4d,#6f,#64
.l5b06 equ $ + 4
	db #75,#6c,#65,#2e,#a6,#5b,#e6,#5b
	db #06,#5c,#00,#00,#a6,#5b,#26,#5c
	db #06,#5c,#00,#00,#46,#5c,#26,#5c
	db #06,#5c,#00,#00,#a6,#5b,#86,#5c
	db #06,#5c,#00,#00,#a6,#5c,#e6,#5c
	db #06,#5d,#00,#00,#26,#5d,#66,#5d
	db #06,#5c,#19,#07,#a6,#5b,#86,#5d
	db #06,#5c,#00,#00,#a6,#5b,#a6,#5d
	db #06,#5c,#00,#00,#a6,#5b,#c6,#5d
	db #06,#5c,#1d,#03,#a6,#5b,#e6,#5d
	db #06,#5e,#00,#00,#a6,#5b,#26,#5e
	db #46,#5e,#00,#00,#a6,#5b,#66,#5e
	db #86,#5e,#00,#00,#a0,#55,#a0,#55
	db #a0,#55,#00,#00,#a0,#55,#a0,#55
	db #a0,#55,#00,#00,#a0,#55,#a0,#55
	db #a0,#55,#00,#00,#a0,#55,#a0,#55
.l5b86 equ $ + 4
	db #a0,#55,#00,#00,#a6,#5e,#c6,#5e
	db #a0,#55,#a0,#55,#a0,#55,#a0,#55
	db #a0,#55,#a0,#55,#a0,#55,#a0,#55
	db #a0,#55,#a0,#55,#a0,#55,#a0,#55
	db #a0,#55,#a0,#55,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0c,#0a
	db #05,#03,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0b,#0a,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#0f,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#60,#00
	db #b0,#00,#f0,#00,#20,#01,#40,#01
	db #50,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0d
	db #0b,#09,#07,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#03,#01,#01,#02
	db #02,#02,#03,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #ff,#ff,#ff,#ff,#0f,#0e,#0e,#0d
	db #0d,#0e,#0e,#0f,#0e,#0e,#0d,#0d
	db #0e,#0e,#0f,#0e,#0e,#0d,#0d,#0e
	db #0e,#0f,#0e,#0e,#0d,#0d,#0e,#0e
	db #0f,#0e,#0e,#0d,#0f,#0e,#0c,#0a
	db #09,#07,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0c,#0a,#09,#07,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0b,#0e,#0d,#0c
	db #0b,#0a,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#0e,#0d,#0b,#08
	db #07,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#01,#01,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#07,#09,#0b,#0c
	db #0d,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#06,#08,#0a,#0b
	db #0c,#0d,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#1f,#1e,#1d,#1c
	db #1b,#1a,#19,#18,#17,#16,#16,#16
	db #16,#16,#16,#16,#16,#16,#16,#16
	db #16,#16,#16,#16,#16,#16,#16,#16
	db #16,#15,#14,#13,#00,#01,#01,#02
	db #02,#03,#03,#04,#04,#05,#05,#06
	db #06,#07,#07,#08,#08,#09,#09,#0a
	db #0a,#0b,#0b,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#00,#00,#0c,#00
	db #00,#0c,#00,#00,#0c,#00,#00,#0c
	db #00,#00,#0c,#00,#00,#0c,#00,#00
	db #0c,#00,#00,#0c,#00,#00,#0c,#00
	db #00,#0c,#00,#00,#00,#40,#5f,#00
	db #5f,#5f,#00,#c1,#5f,#00,#ce,#5f
	db #00,#eb,#5f,#00,#0e,#60,#00,#1e
	db #60,#00,#32,#60,#00,#54,#60,#80
	db #ec,#5e,#00,#84,#60,#00,#b9,#60
	db #00,#c1,#60,#00,#22,#61,#00,#83
	db #61,#00,#f0,#61,#00,#1a,#62,#00
	db #7b,#62,#00,#dc,#62,#80,#0a,#5f
	db #00,#13,#63,#00,#31,#63,#00,#83
	db #63,#00,#d5,#63,#00,#27,#64,#00
	db #97,#64,#00,#a3,#64,#00,#e5,#64
	db #00,#26,#65,#80,#28,#5f,#36,#04
	db #00,#36,#84,#36,#84,#36,#84,#36
	db #84,#39,#84,#36,#04,#06,#36,#84
	db #36,#84,#36,#84,#36,#84,#39,#82
	db #a5,#03,#a8,#03,#ff,#b6,#b0,#00
	db #bd,#00,#b6,#00,#bd,#00,#b6,#00
	db #bd,#00,#b6,#00,#bd,#00,#b6,#00
	db #bd,#00,#b6,#00,#bd,#00,#b6,#00
	db #bd,#00,#b6,#00,#bd,#00,#b6,#00
	db #bd,#00,#b9,#00,#c0,#00,#b9,#00
	db #c0,#00,#b9,#00,#c0,#00,#b6,#00
	db #bd,#00,#b6,#00,#bd,#00,#b6,#00
	db #bd,#00,#b6,#00,#bd,#00,#b6,#00
	db #bd,#00,#b6,#00,#bd,#00,#b6,#00
	db #bd,#00,#b6,#00,#bd,#00,#b6,#00
	db #bd,#00,#b9,#00,#c0,#00,#b9,#00
	db #be,#04,#b9,#00,#be,#04,#ff,#3d
	db #12,#15,#40,#05,#05,#be,#05,#3d
	db #97,#bd,#06,#ff,#3d,#03,#05,#39
	db #83,#31,#86,#34,#85,#b2,#05,#31
	db #85,#31,#84,#2f,#83,#31,#85,#b1
	db #06,#31,#05,#05,#be,#05,#3d,#86
	db #ff,#00,#06,#31,#03,#05,#3e,#83
	db #3d,#8c,#42,#02,#03,#42,#82,#42
	db #82,#45,#82,#45,#82,#45,#82,#42
	db #82,#42,#82,#42,#82,#45,#82,#45
	db #82,#45,#82,#ff,#2a,#06,#d1,#07
	db #2d,#06,#01,#2a,#1a,#d1,#06,#2d
	db #0a,#f2,#00,#ff,#3d,#12,#f8,#01
	db #39,#03,#08,#3d,#83,#3b,#84,#b9
	db #08,#b8,#08,#39,#8f,#40,#83,#ff
	db #42,#04,#08,#c0,#08,#be,#08,#40
	db #85,#b9,#08,#c2,#08,#c0,#08,#42
	db #82,#c0,#08,#be,#08,#40,#85,#bd
	db #08,#3b,#8a,#b9,#08,#b8,#08,#39
	db #8c,#ff,#6e,#03,#1b,#6e,#03,#0a
	db #6e,#03,#0b,#6e,#03,#0a,#6e,#03
	db #0b,#6e,#03,#0a,#6e,#03,#0b,#6e
	db #03,#0a,#6e,#03,#0b,#6e,#03,#0a
	db #6e,#03,#0b,#6e,#03,#0a,#6e,#03
	db #0b,#6e,#03,#0a,#31,#03,#05,#3e
	db #83,#ff,#00,#01,#3d,#02,#00,#3d
	db #82,#3d,#82,#3d,#82,#3d,#82,#3d
	db #82,#3d,#82,#3d,#82,#3d,#82,#40
	db #82,#40,#82,#40,#82,#3d,#02,#06
	db #3d,#82,#3d,#82,#3d,#82,#3d,#82
	db #3d,#82,#3d,#82,#3d,#82,#3d,#82
	db #40,#82,#40,#82,#c0,#00,#ff,#00
	db #2a,#31,#03,#05,#3e,#83,#ff,#b6
	db #10,#bd,#00,#b6,#00,#be,#04,#b6
	db #00,#bd,#00,#b6,#00,#bd,#00,#b6
	db #00,#be,#04,#b6,#00,#bd,#00,#b1
	db #00,#b8,#00,#b1,#00,#be,#04,#b1
	db #00,#b8,#00,#b1,#00,#b8,#00,#b1
	db #00,#be,#04,#b1,#00,#b8,#00,#b6
	db #00,#bd,#00,#b6,#00,#be,#04,#b6
	db #00,#bd,#00,#b6,#00,#bd,#00,#b6
	db #00,#be,#04,#b6,#00,#bd,#00,#b1
	db #00,#b8,#00,#b1,#00,#be,#04,#b1
	db #00,#b8,#00,#b1,#00,#b8,#00,#b1
	db #00,#be,#04,#b1,#00,#b8,#00,#ff
	db #b6,#00,#bd,#00,#b6,#00,#be,#04
	db #b6,#00,#bd,#00,#b6,#00,#bd,#00
	db #b6,#00,#be,#04,#b6,#00,#bd,#00
	db #b9,#00,#c0,#00,#b9,#00,#be,#04
	db #b9,#00,#c0,#00,#b1,#00,#b8,#00
	db #b1,#00,#be,#04,#b1,#00,#b8,#00
	db #b6,#00,#bd,#00,#b6,#00,#be,#04
	db #b6,#00,#bd,#00,#b6,#00,#bd,#00
	db #b6,#00,#be,#04,#b6,#00,#bd,#00
	db #b1,#00,#b8,#00,#b1,#00,#be,#04
	db #b1,#00,#b8,#00,#b1,#00,#b8,#00
	db #b1,#00,#be,#04,#b1,#00,#b8,#00
	db #ff,#b1,#00,#bb,#00,#b1,#00,#be
	db #04,#b1,#00,#bb,#00,#b4,#03,#bb
	db #03,#b4,#03,#be,#04,#b4,#03,#bb
	db #03,#c2,#b7,#00,#c9,#07,#c2,#b7
	db #02,#be,#04,#c2,#b7,#04,#c9,#07
	db #c5,#b7,#00,#cc,#07,#c5,#b7,#02
	db #be,#04,#c5,#b7,#04,#cc,#07,#c2
	db #b7,#00,#c9,#07,#c2,#b7,#02,#be
	db #04,#c2,#b7,#04,#c9,#07,#c5,#b7
	db #00,#cc,#07,#c5,#b7,#02,#be,#04
	db #c5,#b7,#04,#cc,#07,#c2,#01,#c9
	db #01,#c2,#01,#be,#04,#c2,#01,#c9
	db #01,#be,#04,#cc,#01,#c5,#01,#cc
	db #01,#c5,#01,#cc,#01,#ff,#c2,#b6
	db #00,#c9,#06,#c2,#b6,#02,#c9,#06
	db #c2,#b6,#04,#c9,#06,#c5,#b6,#00
	db #cc,#06,#c5,#b6,#02,#cc,#06,#c5
	db #b6,#04,#cc,#06,#42,#19,#b1,#00
	db #ee,#d2,#02,#39,#0a,#f1,#00,#ff
	db #ad,#06,#ee,#09,#ee,#09,#be,#14
	db #ee,#09,#ee,#09,#ad,#06,#ee,#09
	db #ee,#09,#be,#04,#ee,#09,#ee,#09
	db #ad,#06,#ee,#09,#ee,#09,#be,#04
	db #ee,#09,#ee,#09,#ad,#06,#ee,#09
	db #ee,#09,#be,#04,#ee,#09,#ee,#09
	db #a8,#06,#ee,#09,#ee,#09,#be,#04
	db #ee,#09,#ee,#09,#ad,#06,#ee,#09
	db #ee,#09,#be,#04,#ee,#09,#ee,#09
	db #ad,#06,#ee,#09,#ee,#09,#be,#04
	db #ee,#09,#ee,#09,#ad,#06,#ee,#09
	db #ee,#09,#be,#04,#ee,#09,#ee,#09
	db #ff,#a6,#06,#ee,#09,#ee,#09,#be
	db #04,#ee,#09,#ee,#09,#ad,#06,#ee
	db #09,#ee,#09,#be,#04,#ee,#09,#ee
	db #09,#a6,#06,#ee,#09,#ee,#09,#be
	db #04,#ee,#09,#ee,#09,#ad,#06,#ee
	db #09,#ee,#09,#be,#04,#ee,#09,#ee
	db #09,#a5,#06,#ee,#09,#ee,#09,#be
	db #04,#ee,#09,#ee,#09,#a5,#06,#ee
	db #09,#ee,#09,#be,#04,#ee,#09,#ee
	db #09,#aa,#06,#ee,#09,#ee,#09,#be
	db #04,#ee,#09,#ee,#09,#aa,#06,#ee
	db #09,#ee,#09,#be,#04,#ee,#09,#ee
	db #09,#ff,#a5,#07,#a5,#07,#25,#84
	db #a5,#07,#a5,#07,#25,#84,#aa,#07
	db #aa,#07,#2a,#84,#aa,#07,#aa,#07
	db #2a,#84,#a5,#07,#a5,#07,#25,#84
	db #a5,#07,#a5,#07,#25,#84,#aa,#07
	db #aa,#07,#2a,#84,#aa,#07,#aa,#07
	db #aa,#07,#be,#04,#be,#04,#be,#04
	db #ff,#00,#02,#36,#04,#00,#36,#84
	db #36,#84,#36,#84,#39,#84,#39,#84
	db #36,#04,#06,#36,#84,#36,#84,#36
	db #84,#39,#84,#39,#02,#00,#ff,#2a
	db #02,#03,#b6,#03,#aa,#03,#b6,#03
	db #aa,#03,#2a,#82,#b6,#03,#aa,#03
	db #b6,#03,#aa,#03,#2a,#82,#b6,#03
	db #aa,#03,#b6,#03,#aa,#03,#2d,#82
	db #b9,#03,#ad,#03,#b9,#03,#ad,#03
	db #2a,#82,#b6,#03,#aa,#03,#b6,#03
	db #aa,#03,#2a,#82,#b6,#03,#aa,#03
	db #b6,#03,#aa,#03,#2a,#82,#b6,#03
	db #aa,#03,#b6,#03,#aa,#03,#2d,#82
	db #b9,#03,#ad,#03,#be,#04,#ad,#03
	db #ff,#2a,#02,#13,#b6,#03,#aa,#03
	db #b6,#03,#aa,#03,#2a,#82,#b6,#03
	db #aa,#03,#b6,#03,#aa,#03,#25,#82
	db #b1,#03,#a5,#03,#b1,#03,#a5,#03
	db #25,#82,#b1,#03,#a5,#03,#b1,#03
	db #a5,#03,#2a,#82,#b6,#03,#aa,#03
	db #b6,#03,#aa,#03,#2a,#82,#b6,#03
	db #aa,#03,#b6,#03,#aa,#03,#25,#82
	db #b1,#03,#a5,#03,#b1,#03,#a5,#03
	db #25,#82,#b1,#03,#a5,#03,#b1,#03
	db #a5,#03,#ff,#2a,#02,#03,#b6,#03
	db #aa,#03,#b6,#03,#aa,#03,#2a,#82
	db #b6,#03,#aa,#03,#b6,#03,#aa,#03
	db #2d,#82,#b9,#03,#ad,#03,#b9,#03
	db #ad,#03,#25,#82,#b1,#03,#a5,#03
	db #b1,#03,#a5,#03,#2a,#82,#b6,#03
	db #aa,#03,#b6,#03,#aa,#03,#2a,#82
	db #b6,#03,#aa,#03,#b6,#03,#aa,#03
	db #25,#82,#b1,#03,#a5,#03,#b1,#03
	db #a5,#03,#25,#82,#b1,#03,#a5,#03
	db #b1,#03,#a5,#03,#ff,#25,#02,#03
	db #b1,#03,#a5,#03,#b1,#03,#a5,#03
	db #28,#82,#af,#03,#a8,#03,#af,#03
	db #a8,#03,#c2,#b6,#00,#c9,#06,#c2
	db #b6,#02,#c9,#06,#c2,#b6,#04,#c9
	db #06,#c5,#b6,#00,#cc,#06,#c5,#b6
	db #02,#cc,#06,#c5,#b6,#04,#cc,#06
	db #c2,#b6,#00,#c9,#06,#c2,#b6,#02
	db #c9,#06,#c2,#b6,#04,#c9,#06,#c5
	db #b6,#00,#cc,#06,#c5,#b6,#02,#cc
	db #06,#c5,#b6,#04,#cc,#06,#c2,#b6
	db #00,#c9,#06,#c2,#b6,#02,#c9,#06
	db #c2,#b6,#04,#c9,#06,#c5,#b6,#00
	db #cc,#06,#c5,#b6,#02,#cc,#06,#c5
	db #b6,#04,#cc,#06,#ff,#2a,#06,#02
	db #2d,#86,#2a,#9a,#2d,#0a,#f1,#00
	db #ff,#ad,#d3,#07,#ad,#13,#ad,#03
	db #2d,#83,#ad,#03,#ad,#03,#ad,#03
	db #2d,#83,#ad,#03,#ad,#03,#ad,#03
	db #2d,#83,#ad,#03,#ad,#03,#ad,#03
	db #2d,#83,#a8,#03,#a8,#03,#a8,#03
	db #28,#83,#ad,#03,#ad,#03,#ad,#03
	db #2d,#83,#ad,#03,#ad,#03,#ad,#03
	db #2d,#83,#ad,#03,#ad,#03,#ad,#03
	db #2d,#83,#ff,#a6,#03,#a6,#03,#a6
	db #03,#26,#83,#ad,#03,#ad,#03,#ad
	db #03,#2d,#83,#a6,#03,#a6,#03,#a6
	db #03,#26,#83,#ad,#03,#ad,#03,#ad
	db #03,#2d,#83,#a5,#03,#a5,#03,#a5
	db #03,#25,#83,#a5,#03,#a5,#03,#a5
	db #03,#25,#83,#aa,#03,#aa,#03,#aa
	db #03,#2a,#83,#aa,#03,#aa,#03,#aa
	db #03,#2a,#83,#ff,#a5,#03,#a5,#03
	db #a5,#03,#25,#83,#a5,#03,#a5,#03
	db #a5,#03,#25,#83,#aa,#03,#aa,#03
	db #aa,#03,#2a,#83,#aa,#03,#aa,#03
	db #aa,#03,#2a,#83,#a5,#03,#a5,#03
	db #a5,#03,#25,#83,#a5,#03,#a5,#03
	db #a5,#03,#25,#83,#aa,#03,#aa,#03
	db #aa,#03,#2a,#83,#aa,#03,#aa,#03
	db #aa,#03,#2a,#83,#ff
;
.music_info
	db "Audio Illusions - 32 - Sci-Fi World 1 (1996)(Systeme D)(Frequency)",0
	db "ST-Module",0

	read "music_end.asm"
