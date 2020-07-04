; Music of Acid Music Box 2 Intro (1995)(Acid)()(ST-128 Module)
; Ripped by Megachur the 01/10/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ACIMB2IN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #76aa

	read "music_header.asm"

	jp l76b3
	jp l7747
	jp l772b
;
.init_music
.l76b3
;
	xor a
	ld hl,l7c5e
	call l7724
	ld hl,l7c8c
	call l7724
	ld hl,l7cba
	call l7724
	ld ix,l7c5a
	ld iy,l7ce4
	ld de,#002e
	ld b,#03
.l76d3
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
	djnz l76d3
	ld hl,l7b73
	ld (hl),#03
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l7b6f),hl
	ld (l7b71),hl
	ld a,#0c
	ld c,d
	call l7b4f
	ld a,#0d
	ld c,d
	jp l7b4f
.l7724
	ld b,#2a
.l7726
	ld (hl),a
	inc hl
	djnz l7726
	ret
;
.stop_music
.l772b
;
	ld a,#07
	ld c,#3f
	call l7b4f
	ld a,#08
	ld c,#00
	call l7b4f
	ld a,#09
	ld c,#00
	call l7b4f
	ld a,#0a
	ld c,#00
	jp l7b4f
;
.play_music
.l7747
;
	ld hl,l7b75
	dec (hl)
	ld ix,l7c5a
	ld bc,l7c68
	call l77e9
	ld ix,l7c88
	ld bc,l7c96
	call l77e9
	ld ix,l7cb6
	ld bc,l7cc4
	call l77e9
	ld hl,l7b6e
	ld de,l7b75
	ld b,#06
	call l77c6
	ld b,#07
	call l77c6
	ld b,#0b
	call l77c6
	ld b,#0d
	call l77c6
	ld de,l7b75
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l7c79
	call l779f
	ld hl,l7ca7
	call l779f
	ld hl,l7cd5
.l779f
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
	jr nz,l77b4
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l77b4
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
.l77c6
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l7b4f
.l77d1
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l7b4f
.l77e9
	ld a,(l7b75)
	or a
	jp nz,l78a1
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l78a1
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l77d1
	or a
	jp z,l7896
	ld r,a
	and #7f
	cp #10
	jr c,l7871
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l79e9
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
	jr z,l784a
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l784a
	rrca
	ld c,a
	ld hl,l7cea
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
	jr z,l7869
	ld (ix+#1e),b
.l7869
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l788a
.l7871
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l7b7a
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
	add h
.l788a
	ld a,d
	or a
	jr nz,l7898
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l7898
.l7896
	ld a,(hl)
	inc hl
.l7898
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l78a1
	ld a,(ix+#17)
	or a
	jr nz,l78b7
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l78b7
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l78cd
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l78cd
	ld a,(ix+#0d)
	or a
	jr z,l78db
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l78f9
.l78db
	ld a,(ix+#1a)
	or a
	jp z,l7900
	ld c,a
	cp #03
	jr nz,l78e8
	xor a
.l78e8
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l78f9
	ld a,(ix+#18)
	dec c
	jr z,l78f9
	ld a,(ix+#19)
.l78f9
	add (ix+#07)
	ld b,d
	call l79e9
.l7900
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l7928
	dec (ix+#1b)
	jr nz,l7928
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l7960
.l7928
	ld a,(ix+#29)
	or a
	jr z,l7960
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l7957
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l794e
	ld (ix+#29),#ff
	jr l7957
.l794e
	cp (ix+#2b)
	jr nz,l7957
	ld (ix+#29),#01
.l7957
	ld b,d
	or a
	jp p,l795d
	dec b
.l795d
	ld c,a
	jr l796b
.l7960
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l796b
	pop hl
	bit 7,(ix+#14)
	jr z,l7974
	ld h,d
	ld l,d
.l7974
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l7b4f
	ld c,h
	ld a,(ix+#02)
	call l7b4f
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l79c7
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l79b6
	dec (ix+#09)
	jr nz,l79b6
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l79ae
	xor a
	jr l79b3
.l79ae
	cp #10
	jr nz,l79b3
	dec a
.l79b3
	ld (ix+#1e),a
.l79b6
	ld a,b
	sub (ix+#1e)
	jr nc,l79bd
	xor a
.l79bd
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l7b4f
.l79c7
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l7b76)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l79e5
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l79e5
	ld (l7b76),hl
	ret
.l79e9
	ld hl,l7b98
	cp #61
	jr nc,l79f3
	add a
	ld c,a
	add hl,bc
.l79f3
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l79fd
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l7b22
	ld (ix+#1e),a
	jp l788a
.l7a0f
	dec b
.l7a10
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l7a1b
	neg
.l7a1b
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
	jp l788a
.l7a31
	dec b
	jr l7a35
.l7a34
	inc b
.l7a35
	call l7b22
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l788a
.l7a44
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
	jp l7b07
.l7a55
	ld a,(hl)
	inc hl
	or a
	jr z,l7a77
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
.l7a77
	ld (ix+#29),a
	jp l788a
.l7a7d
	dec hl
	ld a,(hl)
	and #0f
	ld (l7b79),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l7b78),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l788a
.l7a97
	ld a,(hl)
	or a
	jr z,l7aa8
	call l7b24
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l788a
.l7aa8
	ld hl,#0101
	ld (l7b74),hl
	jp l788a
.l7ab1
	call l7b22
	ld (ix+#1e),a
	jp l788a
.l7aba
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l7b33
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l7b33
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l788a
.l7adc
	ld a,(hl)
	inc hl
	ld (l7b73),a
	jp l788a
.l7ae4
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
	jp l788a
.l7b03
	call l7b22
	add a
.l7b07
	ld b,#00
	ld c,a
	push hl
	ld hl,l7d6a
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l788a
.l7b22
	ld a,(hl)
	inc hl
.l7b24
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
.l7b33
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l7cea
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l7b4f
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
.l7b6e
	ret
.l7b76 equ $ + 7
.l7b75 equ $ + 6
.l7b74 equ $ + 5
.l7b73 equ $ + 4
.l7b71 equ $ + 2
.l7b6f
	db #07,#30,#00,#00,#03,#16,#02,#07
.l7b79 equ $ + 2
.l7b78 equ $ + 1
	db #30,#00,#00
.l7b7a
	dw l79fd,l7a10,l7a0f,l7a34
	dw l7a31,l7a44,l7a55,l7a7d
	dw l7a97,l7a7d,l7ab1,l7aba
	dw l7adc,l7ae4,l7b03
.l7b98
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
.l7c5a equ $ + 2
	dw #000f,#0008
.l7c5e equ $ + 2
	db #01,#08,#de,#01,#00,#24,#00,#00
.l7c68 equ $ + 4
	db #00,#00,#00,#00,#8a,#7f,#ca,#7f
	db #ea,#7f,#c0,#00,#05,#1b,#00,#00
.l7c79 equ $ + 5
	db #00,#00,#00,#00,#00,#03,#f1,#80
	db #85,#80,#00,#f0,#00,#00,#00,#00
.l7c88 equ $ + 4
	db #00,#00,#01,#01,#09,#02,#03,#10
.l7c8c
	db #ef,#00,#00,#2a,#00,#00,#00,#00
.l7c96 equ $ + 2
	db #0a,#80,#ca,#7e,#0a,#7f,#aa,#7e
	db #16,#0a,#05,#1b,#00,#00,#00,#00
.l7ca7 equ $ + 3
	db #00,#00,#00,#01,#43,#81,#a6,#80
	db #00,#d0,#00,#00,#00,#00,#00,#00
.l7cba equ $ + 6
.l7cb6 equ $ + 2
	db #01,#01,#0a,#04,#05,#20,#2d,#00
	db #00,#35,#00,#00,#00,#00,#4a,#80
.l7cc4
	db #ca,#7e,#0a,#7f,#aa,#7e,#16,#00
	db #03,#00,#00,#00,#00,#00,#00,#00
.l7cd5 equ $ + 1
	db #00,#17,#7d,#83,#c7,#80,#00,#ff
	db #00,#00,#00,#00,#00,#00,#01,#01
.l7cea equ $ + 6
.l7ce4
	db #6a,#80,#8b,#80,#ac,#80,#8a,#7d
	db #ca,#7d,#ea,#7d,#80,#00,#10,#bb
	db #b8,#72,#a8,#62,#74,#fc,#b8,#74
	db #77,#32,#a0,#36,#20,#00,#64,#f7
	db #6c,#07,#64,#2f,#e0,#c0,#5c,#f7
	db #60,#1b,#60,#1b,#e4,#e4,#0a,#7e
	db #4a,#7e,#6a,#7e,#09,#00,#78,#2b
	db #a0,#d6,#9c,#e6,#30,#b0,#9c,#36
	db #5c,#27,#6c,#07,#f0,#d0,#74,#0f
	db #a0,#3a,#a0,#3a,#24,#24,#68,#23
	db #7b,#36,#4a,#06,#04,#00,#4a,#05
	db #7c,#36,#7c,#36,#00,#00,#0a,#7e
	db #8a,#7e,#aa,#7e,#14,#09,#64,#ff
	db #80,#3a,#7c,#36,#00,#00,#ca,#7e
	db #0a,#7f,#aa,#7e,#16,#0a,#2a,#7f
	db #6a,#7f,#aa,#7e,#16,#0a,#8a,#7f
.l7d6a equ $ + 6
	db #ca,#7f,#ea,#7f,#c0,#00,#7c,#36
	db #7c,#36,#0a,#80,#2a,#80,#32,#2d
	db #4a,#80,#a8,#62,#78,#33,#fb,#b5
	db #7c,#36,#9c,#56,#7c,#36,#1d,#da
	db #7c,#36,#7c,#36,#7c
	db #36,#90,#01,#e0,#01,#30,#02,#80
	db #02,#d0,#02,#20,#03,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0d,#0e,#0e,#0e,#0d,#0d,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#08,#00,#00,#00,#00,#00,#00
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
	db #00,#0f,#0e,#0c,#0a,#08,#06,#04
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#03,#01,#01,#01,#01,#01,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0b,#0d,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#ff,#ff,#fe,#ff,#ff,#ff,#00
	db #00,#01,#00,#02,#00,#01,#00,#00
	db #00,#00,#00,#01,#00,#02,#00,#03
	db #00,#02,#00,#01,#00,#ff,#ff,#fe
	db #ff,#fd,#ff,#fe,#ff,#ff,#ff,#02
	db #00,#03,#00,#04,#00,#03,#00,#02
	db #00,#0f,#0e,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#00,#00,#65,#01,#3e,#01,#00
	db #00,#c3,#04,#65,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#0f,#0f,#0e,#0d,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#06,#00,#00,#06,#07,#07,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#02,#02,#02,#04,#06,#07,#00
	db #02,#02,#02,#04,#06,#07,#00,#02
	db #02,#02,#04,#06,#07,#00,#02,#02
	db #02,#04,#06,#07,#00,#02,#02,#02
	db #04,#00,#00,#fc,#fc,#f9,#f9,#00
	db #00,#fc,#fc,#f9,#f9,#00,#00,#fc
	db #fc,#f9,#f9,#00,#00,#fc,#fc,#f9
	db #f9,#00,#00,#fc,#fc,#f9,#f9,#00
	db #00,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#18,#00,#0c,#18,#00,#0c,#18
	db #00,#0c,#18,#00,#0c,#18,#00,#0c
	db #18,#00,#0c,#18,#00,#0c,#18,#00
	db #0c,#00,#cd,#80,#00,#cd,#80,#00
	db #cd,#80,#00,#cd,#80,#00,#cd,#80
	db #00,#cd,#80,#00,#cd,#80,#00,#cd
	db #80,#00,#cd,#80,#00,#cd,#80,#80
	db #6d,#80,#00,#65,#81,#00,#65,#81
	db #00,#6a,#81,#00,#6f,#81,#00,#04
	db #81,#00,#04,#81,#00,#04,#81,#00
	db #04,#81,#00,#04,#81,#00,#6a,#81
	db #80,#8e,#80,#00,#37,#82,#00,#37
	db #82,#00,#b9,#82,#00,#fa,#82,#00
	db #7b,#83,#00,#f1,#81,#00,#7b,#83
	db #00,#f1,#81,#00,#7b,#83,#00,#b9
	db #82,#80,#af,#80,#34,#00,#04,#28
	db #5b,#43,#34,#f0,#04,#28,#5b,#43
	db #34,#00,#04,#28,#5b,#43,#34,#f0
	db #04,#38,#00,#02,#38,#f0,#02,#34
	db #00,#04,#28,#5b,#43,#34,#f0,#04
	db #28,#5b,#43,#34,#00,#04,#28,#5b
	db #43,#34,#f0,#04,#38,#00,#02,#38
	db #f0,#02,#ff,#30,#df,#22,#30,#d0
	db #02,#3c,#d0,#02,#30,#d0,#02,#3a
	db #d0,#02,#3a,#d0,#02,#3c,#d0,#02
	db #30,#d0,#02,#35,#d0,#02,#35,#d0
	db #02,#3c,#d0,#02,#35,#d0,#02,#3a
	db #d0,#02,#3a,#d0,#02,#3c,#d0,#02
	db #3c,#d0,#02,#30,#d0,#02,#30,#d0
	db #02,#3c,#d0,#02,#30,#d0,#02,#3a
	db #d0,#02,#3a,#d0,#02,#3c,#d0,#02
	db #30,#d0,#02,#35,#d0,#02,#35,#d0
	db #02,#3c,#d0,#02,#35,#d0,#02,#3a
	db #d0,#02,#3a,#d0,#02,#3c,#d0,#02
	db #3c,#d0,#02,#ff,#38,#d6,#30,#40
	db #ff,#2c,#df,#02,#40,#ff,#30,#df
	db #12,#fe,#01,#b0,#d0,#fe,#01,#bc
	db #d0,#fe,#01,#b0,#d0,#fe,#01,#ba
	db #d0,#fe,#01,#ba,#d0,#fe,#01,#bc
	db #d0,#fe,#01,#b0,#d0,#fe,#01,#b5
	db #d0,#fe,#01,#b5,#d0,#fe,#01,#bc
	db #d0,#fe,#01,#b5,#d0,#fe,#01,#ba
	db #d0,#fe,#01,#ba,#d0,#fe,#01,#bc
	db #d0,#fe,#01,#bc,#d0,#fe,#01,#b0
	db #d0,#fe,#01,#b0,#d0,#fe,#01,#bc
	db #d0,#fe,#01,#b0,#d0,#fe,#01,#ba
	db #d0,#fe,#01,#ba,#d0,#fe,#01,#bc
	db #d0,#fe,#01,#b0,#d0,#fe,#01,#b5
	db #d0,#fe,#01,#b5,#d0,#fe,#01,#bc
	db #d0,#fe,#01,#b5,#d0,#fe,#01,#ba
	db #d0,#fe,#01,#ba,#d0,#fe,#01,#bc
	db #d0,#fe,#01,#bc,#d0,#fe,#01,#ff
	db #d6,#d0,#d4,#d0,#d1,#d0,#cf,#d0
	db #d1,#d0,#cf,#d0,#cc,#d0,#ca,#d0
	db #d6,#d0,#d4,#d0,#d1,#d0,#cf,#d0
	db #d1,#d0,#cf,#d0,#cc,#d0,#ca,#d0
	db #d6,#d0,#d4,#d0,#d1,#d0,#cf,#d0
	db #d1,#d0,#cf,#d0,#cc,#d0,#ca,#d0
	db #cc,#d0,#ca,#d0,#c8,#d0,#c5,#d0
	db #c3,#d0,#c0,#d0,#45,#df,#15,#fe
	db #0f,#0f,#15,#fe,#11,#ff,#30,#b1
	db #10,#fe,#01,#b0,#b0,#fe,#01,#bc
	db #b0,#fe,#01,#b0,#b0,#fe,#01,#ba
	db #b0,#fe,#01,#ba,#b0,#fe,#01,#bc
	db #b0,#fe,#01,#b0,#b0,#fe,#01,#b5
	db #b0,#fe,#01,#b5,#b0,#fe,#01,#bc
	db #b0,#fe,#01,#b5,#b0,#fe,#01,#ba
	db #b0,#fe,#01,#ba,#b0,#fe,#01,#bc
	db #b0,#fe,#01,#bc,#b0,#fe,#01,#b0
	db #b0,#fe,#01,#b0,#b0,#fe,#01,#bc
	db #b0,#fe,#01,#b0,#b0,#fe,#01,#ba
	db #b0,#fe,#01,#ba,#b0,#fe,#01,#bc
	db #b0,#fe,#01,#b0,#b0,#fe,#01,#b5
	db #b0,#fe,#01,#b5,#b0,#fe,#01,#bc
	db #b0,#fe,#01,#b5,#b0,#fe,#01,#ba
	db #b0,#fe,#01,#ba,#b0,#fe,#01,#bc
	db #b0,#fe,#01,#bc,#b0,#fe,#01,#ff
	db #68,#ef,#13,#e7,#e0,#e6,#e0,#e5
	db #e0,#e4,#e0,#fe,#03,#68,#ef,#13
	db #e7,#e0,#e6,#e0,#e5,#e0,#e4,#e0
	db #fe,#03,#68,#ef,#13,#e7,#e0,#e6
	db #e0,#e5,#e0,#e4,#e0,#e3,#e0,#e2
	db #e0,#e1,#e0,#e0,#e0,#df,#e0,#de
	db #e0,#dd,#e0,#dc,#e0,#db,#e0,#da
	db #e0,#d9,#e0,#58,#e0,#1f,#01,#10
	db #ff,#b0,#b0,#fe,#01,#b0,#b0,#fe
	db #01,#bc,#b0,#fe,#01,#b0,#b0,#fe
	db #01,#ba,#b0,#fe,#01,#ba,#b0,#fe
	db #01,#bc,#b0,#fe,#01,#b0,#b0,#fe
	db #01,#b5,#b0,#fe,#01,#b5,#b0,#fe
	db #01,#bc,#b0,#fe,#01,#b5,#b0,#fe
	db #01,#ba,#b0,#fe,#01,#ba,#b0,#fe
	db #01,#bc,#b0,#fe,#01,#bc,#b0,#fe
	db #01,#b0,#b0,#fe,#01,#b0,#b0,#fe
	db #01,#bc,#b0,#fe,#01,#b0,#b0,#fe
	db #01,#ba,#b0,#fe,#01,#ba,#b0,#fe
	db #01,#bc,#b0,#fe,#01,#b0,#b0,#fe
	db #01,#b5,#b0,#fe,#01,#b5,#b0,#fe
	db #01,#bc,#b0,#fe,#01,#b5,#b0,#fe
	db #01,#ba,#b0,#fe,#01,#ba,#b0,#fe
	db #01,#bc,#b0,#fe,#01,#bc,#b0,#fe
	db #01,#ff,#fe,#40,#ff
;
.music_info
	db "Acid Music Box 2 Intro (1995)(Acid)()",0
	db "ST-128 Module",0

	read "music_end.asm"
