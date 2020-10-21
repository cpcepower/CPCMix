; Music of Blood Valley (1987)(Gremlin Graphics Software)()()
; Ripped by Megachur the 30/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BLOODVAL.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #4b05
NEED_SYSTEM_VECTOR 		equ 1

	read "music_header.asm"

	jp l4fa3
.l4b0c equ $ + 4
.l4b0a equ $ + 2
.l4b09 equ $ + 1
.l4b08
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b12 equ $ + 2
.l4b11 equ $ + 1
.l4b10
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b1e equ $ + 6
.l4b1c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b24 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b37 equ $ + 7
.l4b36 equ $ + 6
.l4b35 equ $ + 5
.music_end equ $ + 2
.l4b32 equ $ + 2
.l4b31 equ $ + 1
.l4b30
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b3d equ $ + 5
.l4b3c equ $ + 4
.l4b3b equ $ + 3
.l4b3a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b47 equ $ + 7
.l4b46 equ $ + 6
.l4b45 equ $ + 5
.l4b44 equ $ + 4
.l4b43 equ $ + 3
.l4b42 equ $ + 2
.l4b41 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b4e equ $ + 6
.l4b4d equ $ + 5
.l4b4c equ $ + 4
.l4b4b equ $ + 3
.l4b4a equ $ + 2
.l4b49 equ $ + 1
.l4b48
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b55 equ $ + 5
.l4b53 equ $ + 3
.l4b51 equ $ + 1
.l4b50
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b5d equ $ + 5
	db #00,#00,#00,#00,#00,#06,#0a,#0d
.l4b61 equ $ + 1
	db #0f,#07,#07,#07,#07,#08,#08,#08
	db #08,#09,#09,#09,#09,#09,#0a,#0b
.l4b75 equ $ + 5
	db #0c,#0d,#0d,#0d,#0d,#09,#09,#09
	db #09,#09,#09,#09,#09,#0a,#0b,#0c
	db #0d,#0e,#0e,#0d,#0c,#0b,#0a,#09
.l4b89 equ $ + 1
	db #08,#0d,#0c,#0b,#0b,#0a,#0a,#09
	db #09,#0a,#0a,#0b,#0b,#0c,#0c,#0d
.l4b9d equ $ + 5
	db #0d,#0e,#0e,#08,#0f,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#04,#06
	db #06,#06,#06,#06,#07,#08,#09,#0a
.l4bb1 equ $ + 1
	db #0b,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#02,#08,#08,#0a,#0a
.l4bc5 equ $ + 5
	db #0d,#0d,#0d,#0d,#0d,#00,#02,#02
	db #01,#00,#ff,#fe,#ff,#00,#01
.l4bd3 equ $ + 4
.l4bd1 equ $ + 2
.l4bcf
	dw l4b5d,l4b5d,l4b5d,#0000
	dw l4b61,l4b61,l4b61,#0000
	dw l4b75,l4b75,l4b9d,#0000
.l4bed equ $ + 6
	dw l4b89,l4b89,l4bb1,l4ca3
	dw l4ca3,l4d5c,l4ca3,l4ca3
	dw l4d5c,l4e6a,l4eaf,l4eaf
	dw l4eaf,l4ca3,l4ca3,l4d5c
	dw l4e6a,l4eaf,l4eaf,l4eeb
	dw l4f2b,l4f2b,l4f67,l4f2b
	dw l4f2b,l4eaf,l4eaf,l4eaf
	dw l4eaf,#0000
.l4c23
	db #e0,#07,#7c,#07,#08,#07,#b0,#06
	db #40,#06,#ec,#05,#94,#05,#44,#05
	db #f8,#04,#b0,#04,#70,#04,#2c,#04
	db #f0,#03,#be,#03,#84,#03,#58,#03
	db #20,#03,#f6,#02,#ca,#02,#a2,#02
	db #7c,#02,#58,#02,#38,#02,#16,#02
	db #f8,#01,#df,#01,#c2,#01,#ac,#01
	db #90,#01,#7b,#01,#65,#01,#51,#01
	db #3e,#01,#2c,#01,#1c,#01,#0b,#01
	db #fc,#00,#ef,#00,#e1,#00,#d6,#00
	db #c8,#00,#bd,#00,#b2,#00,#a8,#00
	db #9f,#00,#96,#00,#8e,#00,#85,#00
	db #7e,#00,#77,#00,#70,#00,#6b,#00
	db #64,#00,#5e,#00,#59,#00,#54,#00
	db #4f,#00,#4b,#00,#47,#00,#42,#00
	db #3f,#00,#3b,#00,#38,#00,#35,#00
.l4ca3
	db #83,#18,#0a,#10,#6e,#69,#85,#6a
	db #69,#94,#67,#69,#73,#62,#40,#14
	db #10,#8a,#1b,#6a,#40,#0a,#10,#8b
	db #1b,#69,#58,#14,#10,#8a,#1b,#0a
	db #10,#8b,#1b,#14,#10,#8a,#1b,#0a
	db #10,#8d,#1b,#14,#10,#8f,#1b,#0a
	db #10,#83,#1b,#62,#40,#14,#10,#8a
	db #1b,#6a,#40,#0a,#10,#8b,#1b,#69
	db #58,#14,#10,#8a,#1b,#0a,#10,#8f
	db #1b,#14,#10,#8b,#1b,#63,#18,#0a
	db #10,#8a,#1b,#62,#18,#14,#10,#86
	db #1b,#83,#18,#0a,#10,#6e,#69,#85
	db #6a,#69,#94,#67,#69,#73,#62,#40
	db #14,#10,#8a,#1b,#6a,#40,#0a,#10
	db #8b,#1b,#69,#58,#14,#10,#8a,#1b
	db #0a,#10,#8b,#1b,#14,#10,#8a,#1b
	db #0a,#10,#8d,#1b,#14,#10,#8f,#1b
	db #6a,#58,#0a,#10,#83,#1b,#67,#58
	db #14,#10,#8a,#1b,#63,#58,#0a,#10
	db #8b,#1b,#62,#58,#14,#10,#8a,#1b
	db #67,#58,#0a,#10,#8f,#1b,#69,#58
	db #14,#10,#8b,#1b,#6a,#58,#0a,#10
	db #8a,#1b,#6e,#50,#14,#10,#86,#1b
.l4d5c equ $ + 1
	db #00,#fb,#ee,#10,#83,#1b,#5b,#18
	db #83,#1b,#5e,#18,#0a,#10,#86,#1b
	db #62,#18,#83,#1b,#63,#18,#8b,#1b
	db #88,#1b,#62,#18,#0a,#10,#86,#1b
	db #8a,#1b,#83,#1b,#5b,#18,#83,#1b
	db #5e,#18,#0a,#10,#86,#1b,#62,#18
	db #83,#1b,#63,#18,#88,#1b,#62,#18
	db #86,#1b,#60,#18,#0a,#10,#85,#1b
	db #62,#18,#86,#1b,#83,#1b,#5b,#18
	db #83,#1b,#5e,#18,#0a,#10,#86,#1b
	db #62,#18,#83,#1b,#63,#18,#8b,#1b
	db #88,#1b,#62,#18,#0a,#10,#86,#1b
	db #8a,#1b,#63,#18,#8b,#1b,#62,#18
	db #8a,#1b,#60,#18,#0a,#10,#88,#1b
	db #5e,#18,#86,#1b,#60,#18,#85,#1b
	db #62,#18,#83,#1b,#63,#18,#0a,#10
	db #85,#1b,#62,#18,#86,#1b,#83,#1b
	db #5b,#18,#83,#1b,#5e,#18,#0a,#10
	db #86,#1b,#62,#18,#83,#1b,#63,#18
	db #8b,#1b,#88,#19,#65,#11,#63,#09
	db #62,#18,#0a,#10,#86,#1b,#8a,#1b
	db #83,#1b,#5b,#18,#83,#1b,#5e,#18
	db #0a,#10,#86,#1b,#62,#18,#8a,#1b
	db #5e,#18,#86,#1b,#62,#18,#8a,#03
	db #5d,#18,#0a,#10,#85,#1b,#62,#18
	db #8a,#03,#5b,#00,#83,#1b,#5b,#18
	db #83,#1b,#5e,#18,#0a,#10,#86,#1b
	db #62,#18,#83,#1b,#63,#18,#8b,#1b
	db #88,#1b,#62,#18,#0a,#10,#86,#1b
	db #8a,#1b,#6a,#18,#8b,#1b,#67,#18
	db #8a,#1b,#63,#18,#0a,#10,#88,#1b
	db #62,#18,#86,#1b,#60,#18,#85,#1b
	db #5e,#18,#83,#1b,#5d,#18,#0a,#10
.l4e6a equ $ + 7
	db #85,#1b,#5b,#00,#86,#1b,#00,#fb
	db #83,#00,#f3,#10,#73,#71,#73,#f6
	db #10,#6e,#71,#85,#ee,#10,#6a,#71
	db #94,#85,#00,#f3,#10,#6e,#71,#85
	db #ea,#10,#6a,#71,#94,#ee,#10,#67
	db #71,#73,#86,#00,#e7,#10,#6a,#71
	db #94,#ea,#10,#67,#71,#73,#e2,#10
	db #62,#71,#85,#88,#00,#e7,#10,#67
	db #71,#73,#de,#10,#62,#71,#85,#e2
.l4eaf equ $ + 4
	db #10,#5e,#71,#94,#fb,#5b,#20,#8a
	db #03,#62,#50,#91,#03,#92,#02,#63
	db #51,#91,#03,#66,#50,#92,#03,#91
	db #03,#0f,#10,#63,#50,#94,#03,#19
	db #10,#62,#50,#96,#03,#8a,#1b,#62
	db #50,#91,#1b,#92,#1a,#63,#51,#91
	db #1b,#66,#50,#96,#1b,#92,#1b,#67
	db #50,#91,#1b,#6a,#50,#8d,#1b,#00
.l4eeb
	db #fb,#5b,#20,#8a,#03,#62,#50,#91
	db #03,#92,#02,#63,#51,#91,#03,#66
	db #50,#92,#03,#91,#03,#0f,#10,#63
	db #50,#94,#03,#19,#10,#62,#50,#96
	db #03,#8a,#1b,#62,#50,#91,#1b,#92
	db #1a,#63,#51,#91,#1b,#66,#50,#96
	db #1b,#92,#1b,#67,#50,#91,#1b,#69
	db #50,#8d,#19,#e2,#11,#e3,#11,#00
.l4f2b
	db #fb,#76,#20,#ea,#10,#83,#1b,#e9
	db #10,#8a,#1b,#e7,#10,#8f,#1b,#e2
	db #10,#92,#1b,#e7,#10,#91,#1b,#e9
	db #10,#8b,#1b,#e7,#10,#8f,#1b,#62
	db #10,#8a,#1b,#83,#13,#8a,#13,#0a
	db #10,#8f,#13,#92,#13,#91,#13,#8b
	db #13,#0a,#10,#8f,#13,#8a,#11,#62
.l4f67 equ $ + 4
	db #11,#63,#11,#00,#fb,#7b,#20,#63
	db #10,#88,#1b,#62,#10,#8f,#1b,#60
	db #10,#94,#1b,#5b,#10,#97,#1b,#60
	db #10,#96,#1b,#62,#10,#90,#1b,#60
	db #10,#94,#1b,#5b,#10,#8f,#1b,#88
	db #13,#8f,#13,#0a,#10,#94,#13,#97
	db #13,#96,#13,#94,#13,#0a,#10,#92
	db #13,#91,#11,#67,#11,#68,#11,#00
;
.init_music
.l4fa3
;
	xor a
	ld hl,l4b08
	ld de,l4b09
	ld bc,#001b
	ld (hl),a
	ldir
	ld (l4b50),a
	ld (l4b36),a
	ld (l4b3c),a
	ld (l4b42),a
	ld a,#01
	ld (l4b48),a
	ld a,#0a
	ld (l4b49),a
	ld ix,l4b08
	ld a,#3c
	ld (ix+#07),a
	ld a,#10
	ld (ix+#0c),a
	ld a,#0a
	ld (ix+#0d),a
	ld de,(l4bed)
	ld (l4b4e),de
	ld a,#02
	ld (l4b4d),a
	ld hl,l501c
	ld b,#81
	ld de,l4ffd
	call #bcef
	ld hl,l5016
	ld de,#0001
	ld bc,#0001
	call #bce9
;
.play_music
.l4ffd
;
	di
	push iy
	push ix
	push de
	push hl
	push bc
	push af
	call l5023
	call l5312
	pop af
	pop bc
	pop hl
	pop de
	pop ix
	pop iy
	ei
	ret
.l501c equ $ + 6
.l5016
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
.l5023
	ld a,(l4b32)
	and a
	ret nz
	ld de,(l4b4e)
.l502c
	ld a,(de)
	and a
	call z,l5046
	cp #fb
	jr nz,l5039
	inc de
	jp l502c
.l5039
	call l505f
	ld a,#01
	ld (l4b4b),a
	ld (l4b4e),de
	ret
.l5046
	ld a,(l4b50)
	inc a
	inc a
.l504b
	ld (l4b50),a
	ld hl,l4bed
	ld b,#00
	ld c,a
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,d
	or e
	jp z,l504b	; de=0 => reset music
	ld a,(de)
	ret
.l505f
	ld a,(de)
	and #c0
	jr nz,l508a
	ld a,(de)
	and #3f
	ld iy,l4b0c
	ld (iy+#02),a
	set 2,(iy+#03)
	res 5,(iy+#03)
	ld hl,l4bd3
	ld ix,l4b41
	call l5159
	ld (l4b55),bc
	ld hl,l4b12
	jp l5101
.l508a
	cp #40
	jr nz,l50ad
	ld ix,l4b35
	ld iy,l4b08
	call l5122
	ld hl,l4bcf
	call l5159
	ld (l4b51),bc
	ld hl,l4b10
	ld iy,l4b1c
	jp l5101
.l50ad
	cp #80
	jr nz,l50e1
	ld ix,l4b3b
	ld iy,l4b0a
	call l5122
	ld hl,l4bd1
	call l5159
	ld (l4b53),bc
	cp #18
	jr nz,l50d7
	sub a
	ld (l4b3c),a
	inc a
	ld (l4b4c),a
	ld a,#10
	ld (l4b11),a
.l50d7
	ld hl,l4b11
	ld iy,l4b1e
	jp l5101
.l50e1
	ld ix,l4b41
	ld iy,l4b0c
	res 2,(iy+#03)
	set 5,(iy+#03)
	call l5122
	ld hl,l4bd3
	call l5159
	ld (l4b55),bc
	ld hl,l4b12
.l5101
	call l5171
	ld a,(de)
	and #07
	jr nz,l5116
	inc de
	ld a,(ix+#00)
	and #0c
	jp z,l505f
	inc de
	jp l505f
.l5116
	ld (l4b32),a
	inc de
	ld a,(ix+#00)
	and #0c
	ret z
	inc de
	ret
.l5122
	ld a,(de)
	and #3f
	ld b,a
	ld a,(l4b4d)
	add b
	ld (ix+#02),a
	call l5144
	srl a
	add #0c
	cp #40
	jp m,l513b
	sub #18
.l513b
	ld bc,#000e
	add iy,bc
	call l5144
	ret
.l5144
	push hl
	sla a
	ld b,#00
	ld c,a
	ld hl,l4c23
	add hl,bc
	ld b,(hl)
	ld (iy+#00),b
	inc hl
	ld b,(hl)
	ld (iy+#01),b
	pop hl
	ret
.l5159
	inc de
	ld a,(de)
	and #18
	jr nz,l5164
	ld c,#04
	jp l5166
.l5164
	ld c,#14
.l5166
	ld (ix+#01),c
	ld b,#00
	ld c,a
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ret
.l5171
	ld a,(de)
	and #e0
	ld (ix+#00),a
	ret z
	cp #20
	jr nz,l5186
	sub a
	ld (ix+#01),a
	ld (hl),a
	ld b,#01
	jp l51ae
.l5186
	ld b,#02
	cp #40
	jr nz,l5194
	ld a,#01
	ld (l4b47),a
	jp l51ae
.l5194
	sla b
	cp #60
	jr z,l51ae
	sla b
	cp #80
	jr z,l51ae
	sla b
	cp #a0
	jr z,l51ae
	sla b
	cp #c0
	jr z,l51ae
	ld b,#64
.l51ae
	ld (ix+#00),b
	ld a,b
	and #0c
	ret z
	bit 2,a
	jr z,l51be
	ld a,#03
	jp l51c0
.l51be
	ld a,#05
.l51c0
	ld (ix+#05),a
	inc de
	ld a,(de)
	and #0f
	ld b,a
	ld a,(ix+#02)
	add b
	ld (ix+#03),a
	call l5144
	ld a,(de)
	and #f0
	srl a
	srl a
	srl a
	srl a
	ld b,a
	ld a,(ix+#02)
	add b
	ld (ix+#04),a
	ld bc,#0004
	add iy,bc
	call l5144
	dec de
	ret
.l51ef
	ld a,(l4b35)
	bit 1,a
	ret z
	ld a,b
	cp #03
	jp z,l523f
	cp #02
	ret nz
	call l5232
	ld a,(l4b35)
	res 1,a
	ld (l4b35),a
	ret
.l520a
	ld a,(l4b35)
	bit 2,a
	ret z
	ld a,(l4b3a)
	dec a
	cp #02
	jp nz,l521f
	ld (l4b3a),a
	jp l5232
.l521f
	cp #01
	jp nz,l522a
	ld (l4b3a),a
	jp l524c
.l522a
	ld a,#03
	ld (l4b3a),a
	jp l5259
.l5232
	ld a,(ix+#00)
	ld (iy+#00),a
	ld a,(ix+#01)
	ld (iy+#01),a
	ret
.l523f
	ld a,(ix+#0e)
	ld (iy+#00),a
	ld a,(ix+#0f)
	ld (iy+#01),a
	ret
.l524c
	ld a,(ix+#14)
	ld (iy+#00),a
	ld a,(ix+#15)
	ld (iy+#01),a
	ret
.l5259
	ld a,(ix+#18)
	ld (iy+#00),a
	ld a,(ix+#19)
	ld (iy+#01),a
	ret
.l5266
	ld a,(l4b48)
	dec a
	jp nz,l527b
	ld a,(l4b49)
	dec a
	jp nz,l5276
	ld a,#09
.l5276
	ld (l4b49),a
	ld a,#01
.l527b
	ld (l4b48),a
	ld a,(l4b49)
	ld hl,l4bc5
	add l
	ld l,a
	ld e,(hl)
	ld a,(iy+#00)
	ld (l4b44),a
	add e
	ld d,a
	ld a,(l4b37)
	cp #0d
	jp nc,l529a
	ld a,d
	add e
	ld d,a
.l529a
	ld (iy+#00),d
	ld a,(iy+#02)
	ld (l4b45),a
	add e
	ld d,a
	ld a,(l4b3d)
	cp #0d
	jp nc,l52b0
	ld a,d
	add e
	ld d,a
.l52b0
	ld (iy+#02),d
	ld a,(iy+#04)
	ld (l4b46),a
	add e
	ld d,a
	ld a,(l4b43)
	cp #0d
	jp nc,l52c6
	ld a,d
	add e
	ld d,a
.l52c6
	ld (iy+#04),d
	ret
.l52ca
	ld a,(l4b36)
	and a
	ret z
	dec a
	ld (l4b36),a
	ld hl,(l4b51)
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#08),a
	ld (iy+#08),a
	ret
.l52e2
	ld a,(l4b3c)
	and a
	ret z
	dec a
	ld (l4b3c),a
	ld hl,(l4b53)
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#09),a
	ld (iy+#09),a
	ret
.l52fa
	ld a,(l4b42)
	and a
	ret z
	dec a
	ld (l4b42),a
	ld hl,(l4b55)
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#0a),a
	ld (iy+#0a),a
	ret
.l5312
	push af
	ld a,(l4b4b)
	and a
	jp nz,l531c
	pop af
	ret
.l531c
	cp #01
	jp nz,l5335
	inc a
	ld (l4b4b),a
	ld bc,#000e
	ld hl,l4b08
	ld de,l4b24
	ldir
	ld a,#04
	ld (l4b4a),a
.l5335
	ld a,(l4b4a)
	ld b,a
	ld ix,l4b08
	ld iy,l4b24
	call l51ef
	call l520a
	call l5266
	call l52ca
	call l52e2
	call l52fa
	call l537d
	call l53a1
	ld a,(l4b4a)
	dec a
	jp z,l5366
	ld (l4b4a),a
	jp l537b
.l5366
	ld a,(l4b32)
	dec a
	ld (l4b32),a
	jp z,l5378
	ld a,#04
	ld (l4b4a),a
	jp l537b
.l5378
	ld (l4b4b),a
.l537b
	pop af
	ret
.l537d
	ld a,(l4b4c)
	and a
	jp z,l5390
	sub a
	ld (l4b4c),a
	ld a,#0d
	ld hl,l4b31
	jp l5395
.l5390
	ld a,#0c
	ld hl,l4b30
.l5395
	push af
	ld c,(hl)
	dec hl
	call #bd34
	pop af
	dec a
	jp p,l5395
	ret
.l53a1
	ld a,(l4b44)
	ld (iy+#00),a
	ld a,(l4b45)
	ld (iy+#02),a
	ld a,(l4b46)
	ld (iy+#04),a
	ret
;
; #183b
;	call #4b05	; init music
;
.music_info
	db "Blood Valley (1987)(Gremlin Graphics Software)()",0
	db "",0

	read "music_end.asm"