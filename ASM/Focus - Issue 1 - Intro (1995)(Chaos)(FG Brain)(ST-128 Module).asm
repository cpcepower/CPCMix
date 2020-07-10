; Music of Focus - Issue 1 - Intro (1995)(Chaos)(FG Brain)(ST-128 Module)
; Ripped by Megachur the 03/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FOCUI1IN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #5460

	read "music_header.asm"

	jp l5469
	jp l54fd
	jp l54e1
;
.init_music
.l5469
;
	xor a
	ld hl,l5a14
	call l54da
	ld hl,l5a42
	call l54da
	ld hl,l5a70
	call l54da
	ld ix,l5a10
	ld iy,l5a9a
	ld de,#002e
	ld b,#03
.l5489
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
	djnz l5489
	ld hl,l5929
	ld (hl),#07
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l5925),hl
	ld (l5927),hl
	ld a,#0c
	ld c,d
	call l5905
	ld a,#0d
	ld c,d
	jp l5905
.l54da
	ld b,#2a
.l54dc
	ld (hl),a
	inc hl
	djnz l54dc
	ret
;
.stop_music
.l54e1
;
	ld a,#07
	ld c,#3f
	call l5905
	ld a,#08
	ld c,#00
	call l5905
	ld a,#09
	ld c,#00
	call l5905
	ld a,#0a
	ld c,#00
	jp l5905
;
.play_music
.l54fd
;
	ld hl,l592b
	dec (hl)
	ld ix,l5a10
	ld bc,l5a1e
	call l559f
	ld ix,l5a3e
	ld bc,l5a4c
	call l559f
	ld ix,l5a6c
	ld bc,l5a7a
	call l559f
	ld hl,l5924
	ld de,l592b
	ld b,#06
	call l557c
	ld b,#07
	call l557c
	ld b,#0b
	call l557c
	ld b,#0d
	call l557c
	ld de,l592b
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l5a2f
	call l5555
	ld hl,l5a5d
	call l5555
	ld hl,l5a8b
.l5555
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
	jr nz,l556a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l556a
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
.l557c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5905
.l5587
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5905
.l559f
	ld a,(l592b)
	or a
	jp nz,l5657
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l5657
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5587
	or a
	jp z,l564c
	ld r,a
	and #7f
	cp #10
	jr c,l5627
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l579f
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
	jr z,l5600
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l5600
	rrca
	ld c,a
	ld hl,l5aa0
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
	jr z,l561f
	ld (ix+#1e),b
.l561f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l5640
.l5627
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l5930
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
.l5640
	ld a,d
	or a
	jr nz,l564e
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l564e
.l564c
	ld a,(hl)
	inc hl
.l564e
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l5657
	ld a,(ix+#17)
	or a
	jr nz,l566d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l566d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5683
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5683
	ld a,(ix+#0d)
	or a
	jr z,l5691
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l56af
.l5691
	ld a,(ix+#1a)
	or a
	jp z,l56b6
	ld c,a
	cp #03
	jr nz,l569e
	xor a
.l569e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l56af
	ld a,(ix+#18)
	dec c
	jr z,l56af
	ld a,(ix+#19)
.l56af
	add (ix+#07)
	ld b,d
	call l579f
.l56b6
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l56de
	dec (ix+#1b)
	jr nz,l56de
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l5716
.l56de
	ld a,(ix+#29)
	or a
	jr z,l5716
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l570d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5704
	ld (ix+#29),#ff
	jr l570d
.l5704
	cp (ix+#2b)
	jr nz,l570d
	ld (ix+#29),#01
.l570d
	ld b,d
	or a
	jp p,l5713
	dec b
.l5713
	ld c,a
	jr l5721
.l5716
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l5721
	pop hl
	bit 7,(ix+#14)
	jr z,l572a
	ld h,d
	ld l,d
.l572a
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5905
	ld c,h
	ld a,(ix+#02)
	call l5905
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l577d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l576c
	dec (ix+#09)
	jr nz,l576c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5764
	xor a
	jr l5769
.l5764
	cp #10
	jr nz,l5769
	dec a
.l5769
	ld (ix+#1e),a
.l576c
	ld a,b
	sub (ix+#1e)
	jr nc,l5773
	xor a
.l5773
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5905
.l577d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l592c)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l579b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l579b
	ld (l592c),hl
	ret
.l579f
	ld hl,l594e
	cp #61
	jr nc,l57a9
	add a
	ld c,a
	add hl,bc
.l57a9
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l57b3
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l58d8
	ld (ix+#1e),a
	jp l5640
.l57c5
	dec b
.l57c6
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l57d1
	neg
.l57d1
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
	jp l5640
.l57e7
	dec b
	jr l57eb
.l57ea
	inc b
.l57eb
	call l58d8
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l5640
.l57fa
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
	jp l58bd
.l580b
	ld a,(hl)
	inc hl
	or a
	jr z,l582d
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
.l582d
	ld (ix+#29),a
	jp l5640
.l5833
	dec hl
	ld a,(hl)
	and #0f
	ld (l592f),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l592e),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l5640
.l584d
	ld a,(hl)
	or a
	jr z,l585e
	call l58da
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l5640
.l585e
	ld hl,#0101
	ld (l592a),hl
	jp l5640
.l5867
	call l58d8
	ld (ix+#1e),a
	jp l5640
.l5870
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l58e9
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l58e9
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l5640
.l5892
	ld a,(hl)
	inc hl
	ld (l5929),a
	jp l5640
.l589a
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
	jp l5640
.l58b9
	call l58d8
	add a
.l58bd
	ld b,#00
	ld c,a
	push hl
	ld hl,l5b20
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l5640
.l58d8
	ld a,(hl)
	inc hl
.l58da
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
.l58e9
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5aa0
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l5905
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
.l5924
	ret
.l592c equ $ + 7
.l592b equ $ + 6
.l592a equ $ + 5
.l5929 equ $ + 4
.l5927 equ $ + 2
.l5925
	db #00,#00,#00,#00,#00,#00,#00,#00
.l592f equ $ + 2
.l592e equ $ + 1
	db #38,#00,#00
.l5930
	dw l57b3,l57c6,l57c5,l57ea
	dw l57e7,l57fa,l580b,l5833
	dw l584d,l5833,l5867,l5870
	dw l5892,l589a,l58b9
.l594e
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
	dw #000f
.l5a14 equ $ + 4
.l5a10
	db #08,#00,#01,#08,#00,#00,#00,#00
.l5a1e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a2f equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a3e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l5a42 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l5a4c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a5d equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a6c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l5a70
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a7a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a8b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a9a equ $ + 2
	db #00,#00,#e0,#5e,#0a,#5f,#34,#5f
.l5aa0
	db #32,#14,#32,#14,#32,#14,#00,#00
	db #32,#14,#32,#14,#32,#14,#00,#00
	db #40,#5b,#80,#5b,#a0,#5b,#00,#00
	db #c0,#5b,#00,#5c,#a0,#5b,#20,#00
	db #32,#14,#32,#14,#32,#14,#00,#00
	db #32,#14,#32,#14,#32,#14,#00,#00
	db #20,#5c,#60,#5c,#80,#5c,#00,#00
	db #32,#14,#32,#14,#32,#14,#00,#00
	db #a0,#5c,#e0,#5c,#00,#5d,#00,#00
	db #32,#14,#32,#14,#32,#14,#00,#00
	db #20,#5d,#60,#5d,#80,#5d,#c0,#00
	db #a0,#5d,#e0,#5d,#00,#5e,#00,#00
	db #c0,#5b,#20,#5e,#40,#5e,#9a,#06
	db #60,#5e,#a0,#5e,#c0,#5e,#00,#00
	db #32,#14,#32,#14,#32,#14,#00,#00
	db #32,#14,#32,#14,#32,#14,#00,#00
.l5b20
	db #32,#14,#32,#14,#32,#14,#32,#14
	db #32,#14,#32,#14,#32,#14,#32,#14
	db #32,#14,#32,#14,#32,#14,#32,#14
	db #32,#14,#32,#14,#32,#14,#32,#14
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#00,#40,#00,#80,#00,#c0,#00
	db #00,#01,#40,#01,#80,#01,#c0,#01
	db #00,#02,#40,#02,#80,#02,#c0,#02
	db #00,#03,#40,#03,#80,#03,#c0,#03
	db #00,#04,#40,#04,#80,#04,#c0,#04
	db #00,#05,#40,#05,#80,#05,#c0,#05
	db #00,#06,#40,#06,#80,#06,#c0,#06
	db #00,#07,#40,#07,#80,#07,#c0,#07
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#03,#00
	db #00,#80,#80,#80,#80,#80,#80,#80
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
	db #0f,#0e,#0e,#0d,#0d,#0c,#0c,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#03,#02
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #04,#06,#07,#09,#0c,#11,#17,#1d
	db #15,#10,#0c,#09,#06,#05,#04,#04
	db #03,#03,#03,#02,#02,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0c,#0b,#0a,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#00,#00,#00,#80
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0e,#0d,#0c,#0b,#09,#07
	db #06,#03,#01,#00,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#06,#05,#04,#04,#03,#02
	db #01,#00,#80,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0b,#09,#07,#05,#03,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#80,#00,#40,#01,#a0,#01
	db #40,#02,#e8,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#5e,#5f,#00,#62,#5f,#00,#d3
	db #5f,#00,#62,#5f,#00,#d3,#5f,#00
	db #5e,#5f,#00,#62,#5f,#00,#d3,#5f
	db #00,#44,#60,#00,#47,#60,#00,#5e
	db #5f,#00,#58,#60,#00,#6b,#60,#80
	db #e0,#5e,#00,#84,#60,#00,#f5,#60
	db #00,#12,#61,#00,#f5,#60,#00,#12
	db #61,#00,#84,#60,#00,#f5,#60,#00
	db #12,#61,#00,#84,#60,#00,#84,#60
	db #00,#84,#60,#00,#f5,#60,#00,#12
	db #61,#80,#0a,#5f,#00,#5e,#5f,#00
	db #44,#60,#00,#2c,#61,#00,#3f,#61
	db #00,#70,#61,#00,#5e,#5f,#00,#a6
	db #61,#00,#27,#62,#00,#a6,#61,#00
	db #a6,#61,#00,#5e,#5f,#00,#a6,#61
	db #00,#a6,#61,#80,#34,#5f,#01,#00
	db #40,#ff,#28,#20,#02,#aa,#20,#ab
	db #20,#28,#20,#02,#aa,#20,#ab,#20
	db #28,#20,#02,#aa,#20,#ab,#20,#28
	db #20,#02,#aa,#20,#ab,#20,#28,#20
	db #02,#aa,#20,#ab,#20,#28,#20,#02
	db #aa,#20,#ab,#20,#28,#20,#02,#aa
	db #20,#ab,#20,#28,#20,#02,#aa,#20
	db #ab,#20,#2f,#20,#02,#b1,#20,#b2
	db #20,#2f,#20,#02,#b1,#20,#b2,#20
	db #2f,#20,#02,#b1,#20,#b2,#20,#2f
	db #20,#02,#b1,#20,#b2,#20,#2f,#20
	db #02,#b1,#20,#b2,#20,#2f,#20,#02
	db #b1,#20,#b2,#20,#2f,#20,#02,#b1
	db #20,#b2,#20,#2f,#20,#02,#b1,#20
	db #b2,#20,#ff,#2d,#20,#02,#af,#20
	db #b0,#20,#2d,#20,#02,#af,#20,#b0
	db #20,#2d,#20,#02,#af,#20,#b0,#20
	db #2d,#20,#02,#af,#20,#b0,#20,#2d
	db #20,#02,#af,#20,#b0,#20,#2d,#20
	db #02,#af,#20,#b0,#20,#2d,#20,#02
	db #af,#20,#b0,#20,#2d,#20,#02,#af
	db #20,#b0,#20,#28,#20,#02,#aa,#20
	db #ab,#20,#28,#20,#02,#aa,#20,#ab
	db #20,#28,#20,#02,#aa,#20,#ab,#20
	db #28,#20,#02,#aa,#20,#ab,#20,#28
	db #20,#02,#aa,#20,#ab,#20,#28,#20
	db #02,#aa,#20,#ab,#20,#28,#20,#02
	db #aa,#20,#ab,#20,#28,#20,#02,#aa
	db #20,#ab,#20,#ff,#00,#40,#ff,#00
	db #39,#bb,#a0,#bb,#a0,#b9,#a0,#b9
	db #a0,#b8,#a0,#b8,#a0,#b8,#a0,#ff
	db #28,#60,#03,#28,#60,#15,#28,#60
	db #03,#28,#60,#1d,#28,#60,#03,#28
	db #60,#05,#ff,#00,#18,#28,#60,#03
	db #28,#60,#1d,#ad,#60,#ad,#60,#ac
	db #60,#ac,#60,#aa,#60,#aa,#60,#a8
	db #60,#a8,#60,#ff,#28,#20,#02,#aa
	db #20,#ab,#20,#28,#20,#02,#aa,#20
	db #ab,#20,#28,#20,#02,#aa,#20,#ab
	db #20,#28,#20,#02,#aa,#20,#ab,#20
	db #2d,#20,#02,#af,#20,#b0,#20,#2d
	db #20,#02,#af,#20,#b0,#20,#2d,#20
	db #02,#af,#20,#b0,#20,#2d,#20,#02
	db #af,#20,#b0,#20,#2f,#20,#02,#b1
	db #20,#b2,#20,#2f,#20,#02,#b1,#20
	db #b2,#20,#2f,#20,#02,#b1,#20,#b2
	db #20,#2f,#20,#02,#b1,#20,#b2,#20
	db #28,#20,#02,#aa,#20,#ab,#20,#28
	db #20,#02,#aa,#20,#ab,#20,#28,#20
	db #02,#aa,#20,#ab,#20,#28,#20,#02
	db #aa,#20,#ab,#20,#ff,#4c,#37,#13
	db #08,#4a,#30,#04,#48,#30,#04,#47
	db #37,#00,#10,#4a,#37,#13,#08,#49
	db #30,#04,#47,#30,#04,#42,#37,#00
	db #10,#ff,#48,#37,#13,#08,#47,#30
	db #04,#45,#30,#04,#40,#37,#00,#08
	db #3e,#37,#13,#04,#43,#30,#04,#40
	db #37,#00,#20,#ff,#00,#38,#c7,#80
	db #c7,#80,#c5,#80,#c5,#80,#c4,#80
	db #c2,#80,#c2,#80,#c0,#80,#ff,#1c
	db #d0,#04,#38,#b0,#04,#1c,#d0,#04
	db #38,#b0,#04,#1c,#d0,#04,#38,#b0
	db #04,#1c,#d0,#04,#38,#b0,#04,#1c
	db #d0,#04,#38,#b0,#04,#1c,#d0,#04
	db #38,#b0,#04,#1c,#d0,#04,#38,#b0
	db #04,#1c,#d0,#04,#38,#b0,#04,#ff
	db #1c,#d0,#04,#38,#b0,#04,#1c,#d0
	db #04,#38,#b0,#04,#1c,#d0,#04,#38
	db #b0,#04,#1c,#d0,#04,#38,#b0,#04
	db #1c,#d0,#04,#38,#b0,#04,#1c,#d0
	db #04,#38,#b0,#04,#1c,#d0,#04,#38
	db #b0,#04,#1c,#d0,#04,#b8,#b0,#b8
	db #b0,#b8,#b0,#b8,#b0,#ff,#9c,#d0
	db #ee,#c0,#ee,#c0,#ee,#c0,#b8,#b0
	db #ee,#c0,#ee,#c0,#ee,#c0,#9c,#d0
	db #ee,#c0,#ee,#c0,#ee,#c0,#b8,#b0
	db #ee,#c0,#ee,#c0,#ee,#c0,#9c,#d0
	db #ee,#c0,#ee,#c0,#ee,#c0,#b8,#b0
	db #ee,#c0,#ee,#c0,#ee,#c0,#9c,#d0
	db #ee,#c0,#ee,#c0,#ee,#c0,#b8,#b0
	db #ee,#c0,#ee,#c0,#ee,#c0,#9c,#d0
	db #ee,#c0,#ee,#c0,#ee,#c0,#b8,#b0
	db #ee,#c0,#ee,#c0,#ee,#c0,#9c,#d0
	db #ee,#c0,#ee,#c0,#ee,#c0,#b8,#b0
	db #ee,#c0,#ee,#c0,#ee,#c0,#9c,#d0
	db #ee,#c0,#ee,#c0,#ee,#c0,#b8,#b0
	db #ee,#c0,#ee,#c0,#ee,#c0,#9c,#d0
	db #ee,#c0,#ee,#c0,#ee,#c0,#b8,#b0
	db #ee,#c0,#ee,#c0,#ee,#c0,#ff,#9c
	db #d0,#ee,#c0,#ee,#c0,#ee,#c0,#b8
	db #b0,#ee,#c0,#ee,#c0,#ee,#c0,#9c
	db #d0,#ee,#c0,#ee,#c0,#ee,#c0,#b8
	db #b0,#ee,#c0,#ee,#c0,#ee,#c0,#9c
	db #d0,#ee,#c0,#ee,#c0,#ee,#c0,#b8
	db #b0,#ee,#c0,#ee,#c0,#ee,#c0,#9c
	db #d0,#ee,#c0,#ee,#c0,#ee,#c0,#b8
	db #b0,#ee,#c0,#ee,#c0,#ee,#c0,#9c
	db #d0,#ee,#c0,#ee,#c0,#ee,#c0,#b8
	db #b0,#ee,#c0,#ee,#c0,#ee,#c0,#9c
	db #d0,#ee,#c0,#ee,#c0,#ee,#c0,#b8
	db #b0,#ee,#c0,#ee,#c0,#ee,#c0,#9c
	db #d0,#ee,#c0,#ee,#c0,#ee,#c0,#b8
	db #b0,#ee,#c0,#ee,#c0,#ee,#c0,#9c
	db #d0,#ee,#c0,#ee,#c0,#ee,#c0,#b8
	db #b0,#ee,#c0,#ee,#c0,#b8,#b0,#ff
;
.music_info
	db "Focus - Issue 1 - Intro (1995)(Chaos)(FG Brain)",0
	db "ST-128 Module",0

	read "music_end.asm"
