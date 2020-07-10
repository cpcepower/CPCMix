; Music of Jubilee Joy - 10 Years CPC - Part 2 - Music 2 (1995)(CRT)(Electric Monk)(ST-128 Module)
; Ripped by Megachur the 03/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JJ1YP2M2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #56ee

	read "music_header.asm"

	jr l56f2
	jr l5701
.l56f2
	call l5725
	ld hl,l5712
	ld de,l570a
	ld bc,#81ff
	jp #bcd7
.l5701
	ld hl,l5712
	call #bcdd
	jp l579d
.l570a
	push ix
	call l57b9
	pop ix
	ret
.l5712
	db #00,#00,#00,#00,#00,#81,#0a,#57
	db #ff,#00
	jp l5725
	jp l57b9
	jp l579d
;
.init_music
.l5725
;
	xor a
	ld hl,l5cd0
	call l5796
	ld hl,l5cfe
	call l5796
	ld hl,l5d2c
	call l5796
	ld ix,l5ccc
	ld iy,l5d56
	ld de,#002e
	ld b,#03
.l5745
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
	djnz l5745
	ld hl,l5be5
	ld (hl),#06
	inc hl
	ld (hl),#30
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l5be1),hl
	ld (l5be3),hl
	ld a,#0c
	ld c,d
	call l5bc1
	ld a,#0d
	ld c,d
	jp l5bc1
.l5796
	ld b,#2a
.l5798
	ld (hl),a
	inc hl
	djnz l5798
	ret
;
.stop_music
.l579d
;
	ld a,#07
	ld c,#3f
	call l5bc1
	ld a,#08
	ld c,#00
	call l5bc1
	ld a,#09
	ld c,#00
	call l5bc1
	ld a,#0a
	ld c,#00
	jp l5bc1
;
.play_music
.l57b9
;
	ld hl,l5be7
	dec (hl)
	ld ix,l5ccc
	ld bc,l5cda
	call l585b
	ld ix,l5cfa
	ld bc,l5d08
	call l585b
	ld ix,l5d28
	ld bc,l5d36
	call l585b
	ld hl,l5be0
	ld de,l5be7
	ld b,#06
	call l5838
	ld b,#07
	call l5838
	ld b,#0b
	call l5838
	ld b,#0d
	call l5838
	ld de,l5be7
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#30
	ld hl,l5ceb
	call l5811
	ld hl,l5d19
	call l5811
	ld hl,l5d47
.l5811
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
	jr nz,l5826
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l5826
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
.l5838
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5bc1
.l5843
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5bc1
.l585b
	ld a,(l5be7)
	or a
	jp nz,l5913
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l5913
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5843
	or a
	jp z,l5908
	ld r,a
	and #7f
	cp #10
	jr c,l58e3
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l5a5b
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
	jr z,l58bc
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l58bc
	rrca
	ld c,a
	ld hl,l5d5c
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
	jr z,l58db
	ld (ix+#1e),b
.l58db
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l58fc
.l58e3
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l5bec
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
	add (hl)
	add a
	add h
	adc c
	add (hl)
.l58fc
	ld a,d
	or a
	jr nz,l590a
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l590a
.l5908
	ld a,(hl)
	inc hl
.l590a
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l5913
	ld a,(ix+#17)
	or a
	jr nz,l5929
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l5929
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l593f
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l593f
	ld a,(ix+#0d)
	or a
	jr z,l594d
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l596b
.l594d
	ld a,(ix+#1a)
	or a
	jp z,l5972
	ld c,a
	cp #03
	jr nz,l595a
	xor a
.l595a
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l596b
	ld a,(ix+#18)
	dec c
	jr z,l596b
	ld a,(ix+#19)
.l596b
	add (ix+#07)
	ld b,d
	call l5a5b
.l5972
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l599a
	dec (ix+#1b)
	jr nz,l599a
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l59d2
.l599a
	ld a,(ix+#29)
	or a
	jr z,l59d2
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l59c9
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l59c0
	ld (ix+#29),#ff
	jr l59c9
.l59c0
	cp (ix+#2b)
	jr nz,l59c9
	ld (ix+#29),#01
.l59c9
	ld b,d
	or a
	jp p,l59cf
	dec b
.l59cf
	ld c,a
	jr l59dd
.l59d2
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l59dd
	pop hl
	bit 7,(ix+#14)
	jr z,l59e6
	ld h,d
	ld l,d
.l59e6
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5bc1
	ld c,h
	ld a,(ix+#02)
	call l5bc1
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5a39
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l5a28
	dec (ix+#09)
	jr nz,l5a28
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5a20
	xor a
	jr l5a25
.l5a20
	cp #10
	jr nz,l5a25
	dec a
.l5a25
	ld (ix+#1e),a
.l5a28
	ld a,b
	sub (ix+#1e)
	jr nc,l5a2f
	xor a
.l5a2f
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5bc1
.l5a39
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l5be8)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l5a57
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l5a57
	ld (l5be8),hl
	ret
.l5a5b
	ld hl,l5c0a
	cp #61
	jr nc,l5a65
	add a
	ld c,a
	add hl,bc
.l5a65
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5a6f
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5b94
	ld (ix+#1e),a
	jp l58fc
.l5a81
	dec b
.l5a82
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l5a8d
	neg
.l5a8d
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
	jp l58fc
.l5aa3
	dec b
	jr l5aa7
.l5aa6
	inc b
.l5aa7
	call l5b94
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l58fc
.l5ab6
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
	jp l5b79
.l5ac7
	ld a,(hl)
	inc hl
	or a
	jr z,l5ae9
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
.l5ae9
	ld (ix+#29),a
	jp l58fc
.l5aef
	dec hl
	ld a,(hl)
	and #0f
	ld (l5beb),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l5bea),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l58fc
.l5b09
	ld a,(hl)
	or a
	jr z,l5b1a
	call l5b96
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l58fc
.l5b1a
	ld hl,#0101
	ld (l5be6),hl
	jp l58fc
.l5b23
	call l5b94
	ld (ix+#1e),a
	jp l58fc
.l5b2c
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5ba5
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5ba5
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l58fc
.l5b4e
	ld a,(hl)
	inc hl
	ld (l5be5),a
	jp l58fc
.l5b56
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
	jp l58fc
.l5b75
	call l5b94
	add a
.l5b79
	ld b,#00
	ld c,a
	push hl
	ld hl,l5ddc
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l58fc
.l5b94
	ld a,(hl)
	inc hl
.l5b96
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
.l5ba5
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5d5c
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l5bc1
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
.l5be0
	ret
.l5be8 equ $ + 7
.l5be7 equ $ + 6
.l5be6 equ $ + 5
.l5be5 equ $ + 4
.l5be3 equ $ + 2
.l5be1
	db #04,#30,#00,#00,#06,#2a,#02,#04
.l5beb equ $ + 2
.l5bea equ $ + 1
	db #30,#00,#00
.l5bec
	dw l5a6f,l5a82,l5a81,l5aa6
	dw l5aa3,l5ab6,l5ac7,l5aef
	dw l5b09,l5aef,l5b23,l5b2c
	dw l5b4e,l5b56,l5b75
.l5c0a
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
.l5ccc equ $ + 2
	dw #000f,#0008
.l5cd0 equ $ + 2
	db #01,#08,#ef,#00,#00,#30,#00,#00
.l5cda equ $ + 4
	db #00,#00,#00,#00,#fc,#5e,#3c,#5f
	db #5c,#5f,#00,#00,#05,#1b,#00,#00
.l5ceb equ $ + 5
	db #00,#00,#00,#00,#00,#01,#56,#60
	db #02,#60,#00,#60,#00,#00,#00,#00
.l5cfa equ $ + 4
	db #00,#00,#01,#01,#09,#02,#03,#10
.l5cfe
	db #f6,#02,#00,#1c,#00,#00,#00,#00
.l5d08 equ $ + 2
	db #00,#00,#fc,#5d,#7c,#5f,#5c,#5e
	db #18,#07,#05,#1b,#00,#00,#00,#00
.l5d19 equ $ + 3
	db #00,#00,#00,#01,#21,#61,#1a,#60
	db #00,#70,#00,#00,#00,#00,#00,#00
.l5d2c equ $ + 6
.l5d28 equ $ + 2
	db #01,#01,#0a,#04,#05,#20,#7f,#00
	db #00,#3b,#00,#00,#00,#00,#00,#00
.l5d36
	db #9c,#5f,#dc,#5f,#5c,#5e,#18,#07
	db #11,#0f,#00,#00,#00,#00,#00,#00
.l5d47 equ $ + 1
	db #00,#01,#b2,#62,#32,#60,#00,#80
	db #00,#00,#00,#00,#00,#00,#01,#01
.l5d5c equ $ + 6
.l5d56
	db #fc,#5f,#14,#60,#2c,#60,#fc,#5d
	db #3c,#5e,#5c,#5e,#00,#00,#7c,#5e
	db #bc,#5e,#dc,#5e,#00,#00,#7c,#5e
	db #bc,#5e,#dc,#5e,#1a,#00,#fc,#5e
	db #3c,#5f,#5c,#5f,#07,#00,#7c,#5f
	db #bc,#5f,#5c,#5e,#08,#18,#fc,#5d
	db #dc,#5f,#5c,#5e,#00,#00,#fc,#5e
	db #3c,#5f,#5c,#5f,#00,#00,#fc,#5d
	db #7c,#5f,#5c,#5e,#18,#07,#9c,#5f
	db #dc,#5f,#5c,#5e,#18,#07,#ee,#16
	db #ee,#16,#ee,#96,#00,#00,#fc,#5d
	db #9c,#60,#bc,#60,#00,#00,#ee,#16
	db #ee,#16,#ee,#16,#00,#00,#dc,#60
	db #1c,#61,#3c,#61,#0c,#00,#5c,#61
	db #9c,#61,#bc,#61,#00,#00,#7c,#5e
	db #bc,#5e,#dc,#61,#00,#00,#fc,#5d
.l5ddc equ $ + 6
	db #fc,#61,#5c,#5e,#00,#00,#ee,#16
	db #ee,#16,#ee,#16,#ee,#16,#ee,#16
	db #ee,#16,#ee,#16,#ee,#16,#ee,#16
	db #ee,#16,#1c,#62,#ee,#16,#ee,#16
	db #ee,#16,#ee,#16,#6e,#97,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #32,#00,#64,#00,#91,#00,#be,#00
	db #eb,#00,#22,#01,#4a,#01,#7c,#01
	db #a9,#01,#d6,#01,#08,#02,#3a,#02
	db #6c,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0f,#0f,#0e,#0e,#0d,#0c,#0a
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#38,#00
	db #60,#00,#b0,#00,#18,#01,#48,#01
	db #80,#01,#c8,#01,#10,#02,#58,#02
	db #b0,#02,#00,#00,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0c,#0b,#09,#07,#06,#03
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#06
	db #06,#05,#04,#04,#03,#02,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0e,#0e,#0e,#0d,#0d,#0d,#0c,#0c
	db #0c,#0b,#0b,#0b,#0a,#0a,#0a,#09
	db #09,#09,#08,#08,#08,#07,#07,#07
	db #06,#06,#06,#05,#05,#05,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0b,#0a
	db #09,#07,#05,#07,#09,#0b,#0b,#0b
	db #0b,#0b,#0b,#0a,#0a,#0a,#09,#09
	db #09,#09,#09,#09,#09,#09,#00,#44
	db #60,#00,#4e,#60,#00,#4e,#60,#00
	db #4e,#60,#00,#87,#60,#00,#4e,#60
	db #00,#87,#60,#80,#ff,#5f,#00,#c6
	db #60,#00,#17,#61,#00,#68,#61,#00
	db #17,#61,#00,#b9,#61,#00,#0c,#62
	db #00,#55,#62,#80,#17,#60,#00,#a6
	db #62,#00,#ac,#62,#00,#dd,#62,#00
	db #ac,#62,#00,#dd,#62,#00,#0b,#63
	db #00,#40,#63,#80,#2f,#60,#00,#2c
	db #c0,#60,#40,#60,#02,#c0,#60,#ff
	db #34,#10,#03,#40,#60,#02,#c0,#60
	db #34,#10,#03,#40,#60,#03,#34,#10
	db #03,#40,#60,#02,#c0,#60,#34,#10
	db #03,#40,#60,#03,#34,#10,#03,#40
	db #60,#02,#c0,#60,#34,#10,#03,#40
	db #60,#03,#34,#10,#03,#40,#60,#02
	db #c0,#60,#34,#10,#03,#40,#60,#03
	db #ff,#34,#10,#03,#40,#60,#02,#c0
	db #60,#34,#10,#03,#40,#60,#03,#34
	db #10,#03,#40,#60,#02,#c0,#60,#34
	db #10,#03,#40,#60,#03,#34,#10,#03
	db #40,#60,#02,#c0,#60,#34,#10,#03
	db #40,#60,#03,#34,#10,#03,#40,#60
	db #02,#c0,#60,#c0,#60,#c0,#60,#c0
	db #60,#c0,#60,#c0,#60,#c0,#60,#ff
	db #49,#00,#02,#c4,#00,#46,#00,#02
	db #c4,#00,#49,#00,#02,#c4,#00,#46
	db #00,#02,#c4,#00,#4b,#00,#02,#c4
	db #00,#46,#00,#02,#c4,#00,#4b,#00
	db #02,#c4,#00,#46,#00,#02,#c4,#00
	db #49,#00,#02,#c4,#00,#46,#00,#02
	db #c4,#00,#49,#00,#02,#c4,#00,#46
	db #00,#02,#c4,#00,#4b,#00,#02,#c4
	db #00,#46,#00,#02,#c4,#00,#4b,#00
	db #02,#c4,#00,#46,#00,#02,#c4,#00
	db #ff,#25,#70,#02,#ac,#70,#2e,#70
	db #02,#ac,#70,#25,#70,#02,#ac,#70
	db #2e,#70,#02,#ac,#70,#25,#70,#02
	db #ac,#70,#2e,#70,#02,#ac,#70,#25
	db #70,#02,#ac,#70,#2e,#70,#02,#ac
	db #70,#25,#70,#02,#ac,#70,#2e,#70
	db #02,#ac,#70,#25,#70,#02,#ac,#70
	db #2e,#70,#02,#ac,#70,#25,#70,#02
	db #ac,#70,#2e,#70,#02,#ac,#70,#25
	db #70,#02,#ac,#70,#2e,#70,#02,#ac
	db #70,#ff,#2a,#70,#02,#b1,#70,#33
	db #70,#02,#b1,#70,#2a,#70,#02,#b1
	db #70,#33,#70,#02,#b1,#70,#2a,#70
	db #02,#b1,#70,#33,#70,#02,#b1,#70
	db #2a,#70,#02,#b1,#70,#33,#70,#02
	db #b1,#70,#2c,#70,#02,#b3,#70,#35
	db #70,#02,#b3,#70,#2c,#70,#02,#b3
	db #70,#35,#70,#02,#b3,#70,#2c,#70
	db #02,#b3,#70,#35,#70,#02,#b3,#70
	db #2c,#70,#02,#b3,#70,#35,#70,#02
	db #b3,#70,#ff,#2a,#70,#02,#b1,#70
	db #33,#70,#02,#b1,#70,#2a,#70,#02
	db #b1,#70,#33,#70,#02,#b1,#70,#2a
	db #70,#02,#b1,#70,#33,#70,#02,#b1
	db #70,#2a,#70,#02,#b1,#70,#33,#70
	db #02,#b1,#70,#2c,#70,#02,#b3,#70
	db #35,#70,#02,#b3,#70,#2c,#70,#02
	db #b3,#70,#35,#70,#02,#b3,#70,#2c
	db #70,#02,#b3,#70,#35,#70,#02,#b3
	db #70,#ac,#70,#ac,#70,#ac,#70,#ac
	db #70,#ac,#70,#ac,#70,#ff,#25,#70
	db #02,#25,#70,#02,#25,#70,#02,#25
	db #70,#02,#25,#70,#02,#25,#70,#02
	db #27,#70,#02,#27,#70,#02,#27,#70
	db #02,#27,#70,#02,#27,#70,#02,#27
	db #70,#02,#28,#70,#02,#28,#70,#02
	db #28,#70,#02,#28,#70,#02,#28,#70
	db #02,#28,#70,#02,#2a,#70,#02,#2a
	db #70,#02,#2a,#70,#02,#2a,#70,#02
	db #2a,#70,#02,#2a,#70,#02,#ff,#20
	db #70,#02,#a7,#70,#29,#70,#02,#a7
	db #70,#20,#70,#02,#a7,#70,#29,#70
	db #02,#a7,#70,#20,#70,#02,#a7,#70
	db #29,#70,#02,#a7,#70,#20,#70,#02
	db #a7,#70,#29,#70,#02,#a7,#70,#20
	db #70,#02,#a7,#70,#29,#70,#02,#a7
	db #70,#20,#70,#02,#a7,#70,#29,#70
	db #02,#a7,#70,#20,#70,#02,#a7,#70
	db #29,#70,#02,#a7,#70,#20,#70,#02
	db #a7,#70,#29,#70,#02,#a7,#70,#ff
	db #00,#2d,#4d,#80,#03,#ff,#4d,#80
	db #03,#4b,#80,#03,#49,#80,#03,#48
	db #80,#02,#49,#80,#03,#44,#80,#03
	db #c4,#80,#46,#80,#02,#49,#80,#04
	db #47,#80,#03,#49,#80,#03,#47,#80
	db #03,#46,#80,#02,#44,#80,#09,#c9
	db #80,#4b,#80,#02,#c9,#80,#ff,#4c
	db #80,#03,#4b,#80,#03,#49,#80,#05
	db #c4,#80,#46,#80,#02,#c9,#80,#4b
	db #80,#02,#49,#80,#03,#4e,#80,#04
	db #4e,#80,#02,#ce,#80,#4d,#80,#03
	db #4b,#80,#02,#4d,#80,#03,#44,#80
	db #09,#4d,#80,#04,#ff,#44,#80,#03
	db #46,#80,#03,#49,#80,#03,#4d,#80
	db #02,#4b,#80,#03,#49,#80,#03,#c6
	db #80,#44,#80,#02,#46,#80,#04,#47
	db #80,#03,#49,#80,#03,#4c,#80,#03
	db #50,#80,#02,#4e,#80,#03,#4c,#80
	db #03,#c9,#80,#47,#80,#02,#49,#80
	db #04,#ff,#4b,#80,#18,#50,#80,#14
	db #4d,#80,#04,#ff
;
.music_info
	db "Jubilee Joy - 10 Years CPC - Part 2 - Music 2 (1995)(CRT)(Electric Monk)",0
	db "ST-128 Module",0

	read "music_end.asm"
