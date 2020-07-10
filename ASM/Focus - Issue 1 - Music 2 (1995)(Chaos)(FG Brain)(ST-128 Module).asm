; Music of Focus - Issue 1 - Music 2 (1995)(Chaos)(FG Brain)(ST-128 Module)
; Ripped by Megachur the 03/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FOCUI1M2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #54e0

	read "music_header.asm"

	jp l54e9
	jp l557d
	jp l5561
;
.init_music
.l54e9
;
	xor a
	ld hl,l5a94
	call l555a
	ld hl,l5ac2
	call l555a
	ld hl,l5af0
	call l555a
	ld ix,l5a90
	ld iy,l5b1a
	ld de,#002e
	ld b,#03
.l5509
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
	djnz l5509
	ld hl,l59a9
	ld (hl),#05
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l59a5),hl
	ld (l59a7),hl
	ld a,#0c
	ld c,d
	call l5985
	ld a,#0d
	ld c,d
	jp l5985
.l555a
	ld b,#2a
.l555c
	ld (hl),a
	inc hl
	djnz l555c
	ret
;
.stop_music
.l5561
;
	ld a,#07
	ld c,#3f
	call l5985
	ld a,#08
	ld c,#00
	call l5985
	ld a,#09
	ld c,#00
	call l5985
	ld a,#0a
	ld c,#00
	jp l5985
;
.play_music
.l557d
;
	ld hl,l59ab
	dec (hl)
	ld ix,l5a90
	ld bc,l5a9e
	call l561f
	ld ix,l5abe
	ld bc,l5acc
	call l561f
	ld ix,l5aec
	ld bc,l5afa
	call l561f
	ld hl,l59a4
	ld de,l59ab
	ld b,#06
	call l55fc
	ld b,#07
	call l55fc
	ld b,#0b
	call l55fc
	ld b,#0d
	call l55fc
	ld de,l59ab
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l5aaf
	call l55d5
	ld hl,l5add
	call l55d5
	ld hl,l5b0b
.l55d5
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
	jr nz,l55ea
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l55ea
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
.l55fc
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5985
.l5607
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5985
.l561f
	ld a,(l59ab)
	or a
	jp nz,l56d7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l56d7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5607
	or a
	jp z,l56cc
	ld r,a
	and #7f
	cp #10
	jr c,l56a7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l581f
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
	jr z,l5680
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l5680
	rrca
	ld c,a
	ld hl,l5b20
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
	jr z,l569f
	ld (ix+#1e),b
.l569f
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l56c0
.l56a7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l59b0
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
.l56c0
	ld a,d
	or a
	jr nz,l56ce
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l56ce
.l56cc
	ld a,(hl)
	inc hl
.l56ce
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l56d7
	ld a,(ix+#17)
	or a
	jr nz,l56ed
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l56ed
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5703
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5703
	ld a,(ix+#0d)
	or a
	jr z,l5711
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l572f
.l5711
	ld a,(ix+#1a)
	or a
	jp z,l5736
	ld c,a
	cp #03
	jr nz,l571e
	xor a
.l571e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l572f
	ld a,(ix+#18)
	dec c
	jr z,l572f
	ld a,(ix+#19)
.l572f
	add (ix+#07)
	ld b,d
	call l581f
.l5736
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l575e
	dec (ix+#1b)
	jr nz,l575e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l5796
.l575e
	ld a,(ix+#29)
	or a
	jr z,l5796
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l578d
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5784
	ld (ix+#29),#ff
	jr l578d
.l5784
	cp (ix+#2b)
	jr nz,l578d
	ld (ix+#29),#01
.l578d
	ld b,d
	or a
	jp p,l5793
	dec b
.l5793
	ld c,a
	jr l57a1
.l5796
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l57a1
	pop hl
	bit 7,(ix+#14)
	jr z,l57aa
	ld h,d
	ld l,d
.l57aa
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5985
	ld c,h
	ld a,(ix+#02)
	call l5985
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l57fd
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l57ec
	dec (ix+#09)
	jr nz,l57ec
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l57e4
	xor a
	jr l57e9
.l57e4
	cp #10
	jr nz,l57e9
	dec a
.l57e9
	ld (ix+#1e),a
.l57ec
	ld a,b
	sub (ix+#1e)
	jr nc,l57f3
	xor a
.l57f3
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5985
.l57fd
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l59ac)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l581b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l581b
	ld (l59ac),hl
	ret
.l581f
	ld hl,l59ce
	cp #61
	jr nc,l5829
	add a
	ld c,a
	add hl,bc
.l5829
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5833
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5958
	ld (ix+#1e),a
	jp l56c0
.l5845
	dec b
.l5846
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l5851
	neg
.l5851
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
	jp l56c0
.l5867
	dec b
	jr l586b
.l586a
	inc b
.l586b
	call l5958
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l56c0
.l587a
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
	jp l593d
.l588b
	ld a,(hl)
	inc hl
	or a
	jr z,l58ad
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
.l58ad
	ld (ix+#29),a
	jp l56c0
.l58b3
	dec hl
	ld a,(hl)
	and #0f
	ld (l59af),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l59ae),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l56c0
.l58cd
	ld a,(hl)
	or a
	jr z,l58de
	call l595a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l56c0
.l58de
	ld hl,#0101
	ld (l59aa),hl
	jp l56c0
.l58e7
	call l5958
	ld (ix+#1e),a
	jp l56c0
.l58f0
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5969
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5969
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l56c0
.l5912
	ld a,(hl)
	inc hl
	ld (l59a9),a
	jp l56c0
.l591a
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
	jp l56c0
.l5939
	call l5958
	add a
.l593d
	ld b,#00
	ld c,a
	push hl
	ld hl,l5ba0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l56c0
.l5958
	ld a,(hl)
	inc hl
.l595a
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
.l5969
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5b20
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
.l5985 equ $ + 5
	db #6f,#64,#75,#6c,#65,#f3
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
.l59a4
	ret
.l59ac equ $ + 7
.l59ab equ $ + 6
.l59aa equ $ + 5
.l59a9 equ $ + 4
.l59a7 equ $ + 2
.l59a5
	db #06,#38,#0d,#0a,#05,#2c,#01,#06
.l59af equ $ + 2
.l59ae equ $ + 1
	db #38,#0d,#0a
.l59b0
	dw l5833,l5846,l5845,l586a
	dw l5867,l587a,l588b,l58b3
	dw l58cd,l58b3,l58e7,l58f0
	dw l5912,l591a,l5939
.l59ce
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
.l5a94 equ $ + 4
.l5a90
	db #08,#00,#01,#08,#de,#01,#00,#24
.l5a9e equ $ + 6
	db #00,#00,#00,#00,#00,#00,#c0,#5c
	db #00,#5d,#20,#5d,#07,#00,#14,#0c
.l5aaf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #ec,#5e,#21,#5e,#00,#d0,#00,#00
.l5abe equ $ + 6
	db #00,#00,#00,#00,#01,#01,#09,#02
.l5ac2 equ $ + 2
	db #03,#10,#1c,#01,#00,#2d,#00,#00
.l5acc equ $ + 4
	db #00,#00,#00,#00,#c0,#5b,#40,#5c
	db #20,#5c,#00,#00,#20,#00,#00,#00
.l5add equ $ + 5
	db #00,#00,#00,#00,#00,#09,#e1,#60
	db #6c,#5e,#00,#20,#00,#00,#00,#00
.l5aec equ $ + 4
	db #00,#00,#01,#01,#0a,#04,#05,#20
.l5af0
	db #53,#03,#10,#1a,#00,#00,#00,#00
.l5afa equ $ + 2
	db #00,#00,#c0,#5b,#00,#5c,#20,#5c
	db #00,#00,#0a,#16,#00,#00,#00,#00
.l5b0b equ $ + 3
	db #00,#00,#00,#01,#3b,#62,#b7,#5e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5b1a equ $ + 2
	db #01,#01,#00,#5e,#4b,#5e,#96,#5e
.l5b20
	db #c0,#5b,#00,#5c,#20,#5c,#00,#00
	db #b2,#14,#96,#14,#a7,#14,#f5,#87
	db #c0,#5b,#40,#5c,#20,#5c,#00,#00
	db #60,#5c,#a0,#5c,#20,#5c,#00,#00
	db #32,#15,#b2,#5d,#f2,#5d,#60,#49
	db #72,#15,#32,#5e,#72,#5e,#e0,#49
	db #b2,#14,#92,#5b,#b2,#5e,#20,#4a
	db #4c,#1b,#fc,#98,#87,#14,#f5,#ff
	db #b2,#14,#92,#5b,#f2,#5e,#60,#4a
	db #4c,#1b,#32,#5f,#72,#5f,#40,#47
	db #f2,#14,#92,#5f,#84,#14,#d2,#ff
	db #84,#14,#b8,#98,#84,#14,#d2,#ff
	db #84,#14,#84,#14,#84,#14,#d2,#ff
	db #c0,#5c,#00,#5d,#20,#5d,#07,#00
	db #40,#5d,#80,#5d,#a0,#5d,#1a,#00
	db #c0,#5b,#c0,#5d,#e0,#5d,#9a,#06
.l5ba0
	db #b2,#14,#b2,#14,#b2,#14,#b2,#14
	db #b2,#14,#b2,#14,#b2,#14,#b2,#14
	db #b2,#14,#b2,#14,#b2,#14,#b2,#14
	db #b2,#14,#b2,#14,#b2,#14,#b2,#14
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0d,#0d
	db #0d,#0e,#0e,#07,#08,#09,#0b,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #09,#09,#09,#09,#09,#05,#05,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #06,#0a,#0e,#0f,#0f,#0f,#0f,#0f
	db #0e,#0f,#0f,#0e,#0e,#0e,#0d,#0e
	db #0d,#0e,#0e,#0c,#0d,#0d,#0c,#0c
	db #0c,#0d,#0c,#0b,#0b,#0a,#0a,#00
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#30,#00,#60,#00,#90,#00
	db #c0,#00,#f0,#00,#20,#01,#50,#01
	db #80,#01,#b0,#01,#e0,#01,#10,#02
	db #40,#02,#70,#02,#a0,#02,#d0,#02
	db #00,#03,#20,#03,#40,#03,#60,#03
	db #70,#03,#80,#03,#90,#03,#a0,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0f,#0f,#0f,#0e,#0b,#0b
	db #0a,#0a,#09,#09,#08,#07,#07,#06
	db #06,#05,#05,#04,#04,#03,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0d,#0b,#09,#07,#05,#04
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #04,#04,#04,#04,#04,#04,#04,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #04,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#f1,#5f,#00,#f4,#5f,#00,#f7
	db #5f,#00,#40,#60,#00,#89,#60,#00
	db #40,#60,#00,#e1,#5e,#00,#0e,#5f
	db #00,#0e,#5f,#00,#0e,#5f,#00,#e1
	db #5e,#00,#0e,#5f,#00,#0e,#5f,#00
	db #0e,#5f,#00,#6f,#5f,#00,#6f,#5f
	db #00,#6f,#5f,#00,#6f,#5f,#00,#e1
	db #5e,#00,#0e,#5f,#00,#0e,#5f,#00
	db #0e,#5f,#00,#6f,#5f,#00,#6f,#5f
	db #80,#00,#5e,#00,#89,#60,#00,#40
	db #60,#00,#b8,#61,#00,#da,#61,#00
	db #17,#61,#00,#fd,#61,#00,#d2,#60
	db #00,#f4,#60,#00,#17,#61,#00,#3f
	db #61,#00,#d2,#60,#00,#f4,#60,#00
	db #17,#61,#00,#3f,#61,#00,#69,#61
	db #00,#86,#61,#00,#69,#61,#00,#86
	db #61,#00,#d2,#60,#00,#f4,#60,#00
	db #17,#61,#00,#3f,#61,#00,#69,#61
	db #00,#86,#61,#80,#4b,#5e,#00,#f1
	db #5f,#00,#f4,#5f,#00,#01,#64,#00
	db #25,#64,#00,#4a,#64,#00,#57,#64
	db #00,#27,#62,#00,#7e,#62,#00,#27
	db #62,#00,#df,#62,#00,#27,#62,#00
	db #7e,#62,#00,#27,#62,#00,#df,#62
	db #00,#3f,#63,#00,#a0,#63,#00,#3f
	db #63,#00,#a0,#63,#00,#27,#62,#00
	db #7e,#62,#00,#27,#62,#00,#df,#62
	db #00,#3f,#63,#00,#a0,#63,#80,#96
	db #5e,#00,#08,#34,#d0,#04,#34,#d0
	db #04,#34,#d0,#04,#34,#d0,#04,#34
	db #d0,#04,#34,#d0,#04,#34,#d0,#04
	db #34,#d0,#04,#34,#d0,#04,#34,#d0
	db #04,#34,#d0,#04,#34,#d0,#04,#34
	db #d0,#04,#34,#d0,#04,#ff,#34,#db
	db #20,#73,#f0,#02,#34,#d0,#02,#73
	db #f0,#02,#34,#d0,#02,#73,#f0,#02
	db #34,#d0,#02,#73,#f0,#02,#34,#d0
	db #02,#73,#f0,#02,#34,#d0,#02,#73
	db #f0,#02,#34,#d0,#02,#73,#f0,#02
	db #34,#d0,#02,#73,#f0,#02,#34,#d0
	db #02,#73,#f0,#02,#34,#d0,#02,#73
	db #f0,#02,#34,#d0,#02,#73,#f0,#02
	db #34,#d0,#02,#73,#f0,#02,#34,#d0
	db #02,#73,#f0,#02,#34,#d0,#02,#73
	db #f0,#02,#34,#d0,#02,#73,#f0,#02
	db #34,#d0,#02,#73,#f0,#02,#ff,#34
	db #db,#10,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #b4,#d0,#e7,#f0,#f3,#f0,#e7,#f0
	db #ff,#fe,#40,#ff,#00,#40,#ff,#2a
	db #21,#20,#31,#20,#02,#36,#20,#02
	db #31,#20,#02,#34,#20,#02,#36,#20
	db #06,#2a,#20,#02,#31,#20,#02,#36
	db #20,#02,#31,#20,#02,#34,#20,#02
	db #36,#20,#06,#28,#20,#02,#2f,#20
	db #02,#34,#20,#02,#2f,#20,#02,#32
	db #20,#02,#34,#20,#06,#28,#20,#02
	db #2f,#20,#02,#34,#20,#02,#2f,#20
	db #02,#32,#20,#02,#34,#20,#06,#ff
	db #28,#20,#02,#2f,#20,#02,#34,#20
	db #02,#2f,#20,#02,#32,#20,#02,#34
	db #20,#06,#28,#20,#02,#2f,#20,#02
	db #34,#20,#02,#2f,#20,#02,#32,#20
	db #02,#34,#20,#06,#2a,#20,#02,#31
	db #20,#02,#36,#20,#02,#31,#20,#02
	db #34,#20,#02,#36,#20,#06,#2a,#20
	db #02,#31,#20,#02,#36,#20,#02,#31
	db #20,#02,#34,#20,#02,#36,#20,#06
	db #ff,#2a,#20,#02,#31,#20,#02,#36
	db #20,#02,#31,#20,#02,#34,#20,#02
	db #36,#20,#06,#2a,#20,#02,#31,#20
	db #02,#36,#20,#02,#31,#20,#02,#34
	db #20,#02,#36,#20,#06,#28,#20,#02
	db #2f,#20,#02,#34,#20,#02,#2f,#20
	db #02,#32,#20,#02,#34,#20,#06,#28
	db #20,#02,#2f,#20,#02,#34,#20,#02
	db #2f,#20,#02,#32,#20,#02,#34,#20
	db #06,#ff,#36,#20,#02,#38,#20,#02
	db #39,#20,#02,#3b,#20,#02,#3d,#20
	db #14,#40,#20,#04,#40,#20,#04,#3e
	db #20,#04,#3d,#20,#06,#3e,#20,#02
	db #3b,#20,#10,#ff,#34,#2b,#20,#36
	db #20,#02,#38,#20,#02,#39,#20,#02
	db #3b,#20,#14,#42,#20,#04,#42,#20
	db #06,#3e,#20,#02,#3e,#20,#06,#c0
	db #20,#be,#20,#3d,#20,#10,#ff,#36
	db #20,#02,#38,#20,#02,#39,#20,#02
	db #3b,#20,#02,#3d,#20,#14,#42,#20
	db #04,#42,#20,#06,#44,#20,#02,#40
	db #20,#06,#42,#20,#02,#44,#20,#04
	db #40,#20,#04,#3e,#20,#08,#ff,#00
	db #02,#3d,#20,#02,#3b,#20,#02,#39
	db #20,#02,#3b,#20,#14,#39,#20,#04
	db #38,#20,#04,#34,#20,#04,#b9,#20
	db #b8,#20,#36,#20,#0e,#3b,#d0,#03
	db #bb,#d0,#3b,#d0,#02,#3b,#d0,#02
	db #ff,#42,#31,#40,#40,#3b,#40,#42
	db #3b,#40,#45,#3b,#40,#44,#3b,#40
	db #40,#3b,#40,#3d,#3b,#80,#40,#3b
	db #80,#42,#3b,#00,#18,#ff,#42,#30
	db #04,#40,#30,#04,#42,#30,#04,#45
	db #30,#04,#44,#30,#04,#40,#30,#04
	db #3d,#30,#08,#3b,#30,#08,#3d,#30
	db #08,#2d,#e0,#03,#2d,#e0,#03,#2d
	db #e0,#03,#ad,#e0,#ad,#e0,#ad,#e0
	db #ad,#e0,#ad,#e0,#2d,#e0,#02,#ff
	db #36,#21,#20,#38,#20,#02,#39,#20
	db #02,#3b,#20,#02,#3d,#20,#14,#40
	db #20,#04,#40,#20,#04,#3e,#20,#04
	db #3d,#20,#06,#3e,#20,#02,#3b,#20
	db #10,#ff,#34,#2b,#20,#36,#20,#02
	db #38,#20,#02,#39,#20,#02,#3b,#20
	db #12,#42,#20,#02,#42,#20,#02,#3e
	db #20,#02,#3e,#20,#06,#c0,#20,#be
	db #20,#3d,#20,#18,#ff,#00,#02,#3d
	db #20,#02,#3b,#20,#02,#39,#20,#02
	db #3b,#20,#12,#39,#20,#02,#38,#20
	db #02,#34,#20,#02,#b9,#20,#b8,#20
	db #36,#20,#0e,#3b,#d0,#03,#bb,#d0
	db #3b,#d0,#02,#3b,#d0,#0a,#ff,#00
	db #01,#fe,#09,#2a,#0a,#0d,#02,#fe
	db #02,#2a,#0a,#0d,#02,#fe,#02,#2a
	db #0a,#0d,#02,#fe,#02,#2a,#0a,#0d
	db #02,#fe,#02,#2a,#0a,#0d,#02,#fe
	db #02,#2a,#0a,#0d,#02,#fe,#02,#28
	db #0a,#0a,#02,#fe,#02,#28,#0a,#0a
	db #02,#fe,#02,#28,#0a,#0a,#02,#fe
	db #02,#28,#0a,#0a,#02,#fe,#02,#28
	db #0a,#0a,#02,#fe,#02,#28,#0a,#0a
	db #02,#fe,#02,#28,#0a,#0a,#02,#fe
	db #02,#28,#0a,#0a,#02,#ff,#fe,#02
	db #28,#0a,#0a,#02,#fe,#02,#28,#0a
	db #0a,#02,#fe,#02,#28,#0a,#0a,#02
	db #fe,#02,#28,#0a,#0a,#02,#fe,#02
	db #28,#0a,#0a,#02,#fe,#02,#28,#0a
	db #0a,#02,#fe,#02,#28,#0a,#0a,#02
	db #fe,#02,#28,#0a,#0a,#02,#fe,#02
	db #28,#0a,#0a,#02,#fe,#02,#28,#0a
	db #0a,#02,#fe,#02,#2a,#0a,#0d,#02
	db #fe,#02,#2a,#0a,#0d,#02,#fe,#02
	db #2a,#0a,#0d,#02,#fe,#02,#2a,#0a
	db #0d,#02,#fe,#02,#2a,#0a,#0d,#02
	db #fe,#02,#2a,#0a,#0d,#02,#ff,#fe
	db #02,#28,#0a,#0a,#02,#fe,#02,#28
	db #0a,#0a,#02,#fe,#02,#28,#0a,#0a
	db #02,#fe,#02,#28,#0a,#0a,#02,#fe
	db #02,#28,#0a,#0a,#02,#fe,#02,#28
	db #0a,#0a,#02,#fe,#02,#28,#0a,#0a
	db #02,#fe,#02,#28,#0a,#0a,#02,#fe
	db #02,#28,#0a,#0a,#02,#fe,#02,#2a
	db #0a,#0d,#02,#fe,#02,#2a,#0a,#0d
	db #02,#fe,#02,#2a,#0a,#0d,#02,#fe
	db #02,#2a,#0a,#0d,#02,#fe,#02,#2a
	db #0a,#0d,#02,#fe,#02,#0a,#0d,#02
	db #0a,#0a,#02,#0a,#0d,#02,#ff,#fe
	db #02,#2a,#0a,#0d,#02,#fe,#02,#2a
	db #0a,#0d,#02,#fe,#02,#2a,#0a,#0d
	db #02,#fe,#02,#2a,#0a,#0d,#02,#fe
	db #02,#2a,#0a,#0d,#02,#fe,#02,#2a
	db #0a,#0d,#02,#fe,#02,#2a,#0a,#0d
	db #02,#fe,#02,#2a,#0a,#0d,#02,#fe
	db #02,#28,#0a,#0a,#02,#fe,#02,#28
	db #0a,#0a,#02,#fe,#02,#2a,#0a,#0d
	db #02,#fe,#02,#2a,#0a,#0d,#02,#fe
	db #02,#2a,#0a,#0d,#02,#fe,#02,#2a
	db #0a,#0d,#02,#fe,#02,#2a,#0a,#0d
	db #02,#fe,#02,#2a,#0a,#0d,#02,#ff
	db #fe,#02,#2a,#0a,#0d,#02,#fe,#02
	db #2a,#0a,#0d,#02,#fe,#02,#2a,#0a
	db #0d,#02,#fe,#02,#2a,#0a,#0d,#02
	db #fe,#02,#2a,#0a,#0d,#02,#fe,#02
	db #2a,#0a,#0d,#02,#fe,#02,#2a,#0a
	db #0d,#02,#fe,#02,#2a,#0a,#0d,#02
	db #fe,#02,#23,#0a,#0a,#02,#fe,#02
	db #23,#0a,#0a,#02,#fe,#02,#25,#0a
	db #09,#02,#fe,#02,#25,#0a,#09,#02
	db #fe,#02,#25,#0a,#09,#02,#fe,#02
	db #25,#0a,#09,#02,#fe,#02,#25,#0a
	db #09,#02,#fe,#02,#25,#0a,#09,#02
	db #ff,#00,#02,#36,#21,#20,#38,#20
	db #02,#39,#20,#02,#3b,#20,#02,#3d
	db #20,#14,#40,#20,#04,#40,#20,#04
	db #3e,#20,#04,#3d,#20,#06,#3e,#20
	db #02,#3b,#20,#0e,#ff,#00,#02,#34
	db #2b,#20,#36,#20,#02,#38,#20,#02
	db #39,#20,#02,#3b,#20,#12,#42,#20
	db #02,#42,#20,#02,#3e,#20,#02,#3e
	db #20,#06,#c0,#20,#be,#20,#3d,#20
	db #16,#ff,#00,#01,#fe,#09,#2a,#0a
	db #0d,#18,#28,#0a,#0a,#1e,#ff,#00
	db #22,#2a,#0a,#0d,#1e,#ff
;
.music_info
	db "Focus - Issue 1 - Music 2 (1995)(Chaos)(FG Brain)",0
	db "ST-128 Module",0

	read "music_end.asm"
