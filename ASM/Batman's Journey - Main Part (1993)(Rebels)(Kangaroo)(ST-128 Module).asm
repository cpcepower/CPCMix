; Music of Batman's Journey - Main Part (1993)(Rebels)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 03/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BATMAJMP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #b000

	read "music_header.asm"

	jp lb009
	jp lb09d
	jp lb081
;
.init_music
.lb009
;
	xor a
	ld hl,lb5b4
	call lb07a
	ld hl,lb5e2
	call lb07a
	ld hl,lb610
	call lb07a
	ld ix,lb5b0
	ld iy,lb63a
	ld de,#002e
	ld b,#03
.lb029
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
	djnz lb029
	ld hl,lb4c9
	ld (hl),#06
	inc hl
	ld (hl),#20
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (lb4c5),hl
	ld (lb4c7),hl
	ld a,#0c
	ld c,d
	call lb4a5
	ld a,#0d
	ld c,d
	jp lb4a5
.lb07a
	ld b,#2a
.lb07c
	ld (hl),a
	inc hl
	djnz lb07c
	ret
;
.stop_music
.lb081
;
	ld a,#07
	ld c,#3f
	call lb4a5
	ld a,#08
	ld c,#00
	call lb4a5
	ld a,#09
	ld c,#00
	call lb4a5
	ld a,#0a
	ld c,#00
	jp lb4a5
;
.play_music
.lb09d
;
	ld hl,lb4cb
	dec (hl)
	ld ix,lb5b0
	ld bc,lb5be
	call lb13f
	ld ix,lb5de
	ld bc,lb5ec
	call lb13f
	ld ix,lb60c
	ld bc,lb61a
	call lb13f
	ld hl,lb4c4
	ld de,lb4cb
	ld b,#06
	call lb11c
	ld b,#07
	call lb11c
	ld b,#0b
	call lb11c
	ld b,#0d
	call lb11c
	ld de,lb4cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,lb5cf
	call lb0f5
	ld hl,lb5fd
	call lb0f5
	ld hl,lb62b
.lb0f5
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
	jr nz,lb10a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.lb10a
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
.lb11c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp lb4a5
.lb127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp lb4a5
.lb13f
	ld a,(lb4cb)
	or a
	jp nz,lb1f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,lb1f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,lb127
	or a
	jp z,lb1ec
	ld r,a
	and #7f
	cp #10
	jr c,lb1c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call lb33f
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
	jr z,lb1a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.lb1a0
	rrca
	ld c,a
	ld hl,lb640
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
	jr z,lb1bf
	ld (ix+#1e),b
.lb1bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,lb1e0
.lb1c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,lb4d0
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
.lb1e0
	ld a,d
	or a
	jr nz,lb1ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,lb1ee
.lb1ec
	ld a,(hl)
	inc hl
.lb1ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.lb1f7
	ld a,(ix+#17)
	or a
	jr nz,lb20d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.lb20d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,lb223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.lb223
	ld a,(ix+#0d)
	or a
	jr z,lb231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr lb24f
.lb231
	ld a,(ix+#1a)
	or a
	jp z,lb256
	ld c,a
	cp #03
	jr nz,lb23e
	xor a
.lb23e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,lb24f
	ld a,(ix+#18)
	dec c
	jr z,lb24f
	ld a,(ix+#19)
.lb24f
	add (ix+#07)
	ld b,d
	call lb33f
.lb256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,lb27e
	dec (ix+#1b)
	jr nz,lb27e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr lb2b6
.lb27e
	ld a,(ix+#29)
	or a
	jr z,lb2b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,lb2ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,lb2a4
	ld (ix+#29),#ff
	jr lb2ad
.lb2a4
	cp (ix+#2b)
	jr nz,lb2ad
	ld (ix+#29),#01
.lb2ad
	ld b,d
	or a
	jp p,lb2b3
	dec b
.lb2b3
	ld c,a
	jr lb2c1
.lb2b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.lb2c1
	pop hl
	bit 7,(ix+#14)
	jr z,lb2ca
	ld h,d
	ld l,d
.lb2ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call lb4a5
	ld c,h
	ld a,(ix+#02)
	call lb4a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,lb31d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,lb30c
	dec (ix+#09)
	jr nz,lb30c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,lb304
	xor a
	jr lb309
.lb304
	cp #10
	jr nz,lb309
	dec a
.lb309
	ld (ix+#1e),a
.lb30c
	ld a,b
	sub (ix+#1e)
	jr nc,lb313
	xor a
.lb313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call lb4a5
.lb31d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(lb4cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,lb33b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.lb33b
	ld (lb4cc),hl
	ret
.lb33f
	ld hl,lb4ee
	cp #61
	jr nc,lb349
	add a
	ld c,a
	add hl,bc
.lb349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.lb353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call lb478
	ld (ix+#1e),a
	jp lb1e0
.lb365
	dec b
.lb366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,lb371
	neg
.lb371
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
	jp lb1e0
.lb387
	dec b
	jr lb38b
.lb38a
	inc b
.lb38b
	call lb478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp lb1e0
.lb39a
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
	jp lb45d
.lb3ab
	ld a,(hl)
	inc hl
	or a
	jr z,lb3cd
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
.lb3cd
	ld (ix+#29),a
	jp lb1e0
.lb3d3
	dec hl
	ld a,(hl)
	and #0f
	ld (lb4cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (lb4ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp lb1e0
.lb3ed
	ld a,(hl)
	or a
	jr z,lb3fe
	call lb47a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp lb1e0
.lb3fe
	ld hl,#0101
	ld (lb4ca),hl
	jp lb1e0
.lb407
	call lb478
	ld (ix+#1e),a
	jp lb1e0
.lb410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call lb489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call lb489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp lb1e0
.lb432
	ld a,(hl)
	inc hl
	ld (lb4c9),a
	jp lb1e0
.lb43a
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
	jp lb1e0
.lb459
	call lb478
	add a
.lb45d
	ld b,#00
	ld c,a
	push hl
	ld hl,lb6c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp lb1e0
.lb478
	ld a,(hl)
	inc hl
.lb47a
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
.lb489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,lb640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.lb4a5
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
.lb4c4
	ret
.lb4cc equ $ + 7
.lb4cb equ $ + 6
.lb4ca equ $ + 5
.lb4c9 equ $ + 4
.lb4c7 equ $ + 2
.lb4c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb4cf equ $ + 2
.lb4ce equ $ + 1
	db #38,#00,#00
.lb4d0
	dw lb353,lb366,lb365,lb38a
	dw lb387,lb39a,lb3ab,lb3d3
	dw lb3ed,lb3d3,lb407,lb410
	dw lb432,lb43a,lb459
.lb4ee
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
.lb5b4 equ $ + 4
.lb5b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.lb5be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb5cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb5de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.lb5e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.lb5ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb5fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb60c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.lb610
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb61a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb62b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb63a equ $ + 2
	db #00,#00,#60,#b9,#8d,#b9,#ba,#b9
.lb640
	db #e0,#b6,#20,#b7,#40,#b7,#00,#00
	db #e0,#b6,#20,#b7,#60,#b7,#00,#00
	db #e0,#b6,#80,#b7,#40,#b7,#1a,#06
	db #d2,#6f,#d2,#6f,#d2,#6f,#00,#00
	db #a0,#b7,#e0,#b7,#00,#b8,#00,#00
	db #20,#b8,#60,#b8,#80,#b8,#16,#0a
	db #d2,#6f,#d2,#6f,#d2,#6f,#00,#00
	db #d2,#6f,#d2,#6f,#d2,#6f,#00,#00
	db #d2,#6f,#d2,#6f,#d2,#6f,#00,#00
	db #d2,#6f,#d2,#6f,#d2,#6f,#00,#00
	db #a0,#b8,#e0,#b8,#40,#b7,#16,#0a
	db #d2,#6f,#d2,#6f,#d2,#6f,#00,#00
	db #d2,#6f,#d2,#6f,#d2,#6f,#00,#00
	db #d2,#6f,#d2,#6f,#d2,#6f,#00,#00
	db #d2,#6f,#d2,#6f,#d2,#6f,#00,#00
	db #d2,#6f,#d2,#6f,#d2,#6f,#00,#00
.lb6c0
	db #d2,#6f,#00,#b9,#20,#b9,#d2,#6f
	db #d2,#6f,#d2,#6f,#d2,#6f,#40,#b9
	db #d2,#6f,#d2,#6f,#d2,#6f,#d2,#6f
	db #d2,#6f,#d2,#6f,#d2,#6f,#d2,#6f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0d,#0d,#0e,#0e,#0e,#0e
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0e
	db #0e,#0e,#0e,#0e,#0d,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #a0,#00,#e0,#00,#00,#00,#20,#00
	db #40,#00,#60,#00,#a0,#00,#e0,#00
	db #00,#00,#20,#00,#40,#00,#60,#00
	db #80,#00,#a0,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#06,#05
	db #02,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #02,#00,#06,#08,#0b,#10,#02,#00
	db #06,#08,#0b,#10,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#0b,#0b
	db #0c,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#03,#00
	db #02,#00,#01,#00,#ff,#ff,#fe,#ff
	db #fd,#ff,#fe,#ff,#ff,#ff,#02,#00
	db #03,#00,#04,#00,#03,#00,#02,#00
	db #0f,#0e,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
	db #0b,#0b,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0d,#0d,#0d,#0d,#0d
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#fd,#fd
	db #f9,#f9,#00,#00,#fd,#fd,#f9,#f9
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #03,#03,#07,#07,#00,#00,#03,#03
	db #07,#07,#00,#00,#03,#03,#07,#07
	db #00,#00,#03,#03,#07,#07,#00,#00
	db #00,#e7,#b9,#00,#e7,#b9,#00,#03
	db #ba,#00,#38,#ba,#00,#6d,#ba,#00
	db #a2,#ba,#00,#d7,#ba,#00,#dc,#ba
	db #00,#e1,#ba,#00,#00,#bb,#00,#d7
	db #ba,#00,#dc,#ba,#00,#e1,#ba,#00
	db #00,#bb,#80,#66,#b9,#00,#1f,#bb
	db #00,#1f,#bb,#00,#6e,#bb,#00,#7f
	db #bb,#00,#9a,#bb,#00,#a1,#bb,#00
	db #ae,#bb,#00,#ca,#bb,#00,#d9,#bb
	db #00,#e3,#bb,#00,#ae,#bb,#00,#ca
	db #bb,#00,#d9,#bb,#00,#e3,#bb,#80
	db #93,#b9,#00,#e6,#bb,#00,#e6,#bb
	db #00,#e6,#bb,#00,#1b,#bc,#00,#50
	db #bc,#00,#85,#bc,#00,#ba,#bc,#00
	db #f3,#bc,#00,#2c,#bd,#00,#65,#bd
	db #00,#ba,#bc,#00,#f3,#bc,#00,#2c
	db #bd,#00,#65,#bd,#80,#c0,#b9,#42
	db #a0,#18,#02,#12,#01,#02,#12,#01
	db #02,#12,#01,#02,#12,#01,#02,#12
	db #01,#02,#12,#01,#02,#12,#01,#02
	db #12,#01,#ff,#4e,#0f,#21,#ce,#00
	db #4e,#00,#02,#ce,#00,#4e,#00,#02
	db #4e,#00,#02,#ce,#00,#4e,#00,#02
	db #ce,#00,#4e,#00,#02,#4e,#00,#02
	db #ce,#00,#4e,#00,#02,#ce,#00,#4e
	db #00,#02,#4e,#00,#02,#ce,#00,#4e
	db #00,#02,#ce,#00,#4e,#00,#02,#ff
	db #4a,#0f,#21,#ca,#00,#4a,#00,#02
	db #ca,#00,#4a,#00,#02,#4a,#00,#02
	db #ca,#00,#4a,#00,#02,#ca,#00,#4a
	db #00,#02,#4a,#00,#02,#ca,#00,#4a
	db #00,#02,#ca,#00,#4a,#00,#02,#4a
	db #00,#02,#ca,#00,#4a,#00,#02,#ca
	db #00,#4a,#00,#02,#ff,#47,#0f,#21
	db #c7,#00,#47,#00,#02,#c7,#00,#47
	db #00,#02,#47,#00,#02,#c7,#00,#47
	db #00,#02,#c7,#00,#47,#00,#02,#47
	db #00,#02,#c7,#00,#47,#00,#02,#c7
	db #00,#47,#00,#02,#47,#00,#02,#c7
	db #00,#47,#00,#02,#c7,#00,#47,#00
	db #02,#ff,#49,#0f,#21,#c9,#00,#49
	db #00,#02,#c9,#00,#49,#00,#02,#49
	db #00,#02,#c9,#00,#49,#00,#02,#c9
	db #00,#49,#00,#02,#49,#00,#02,#c9
	db #00,#49,#00,#02,#c9,#00,#49,#00
	db #02,#49,#00,#02,#c9,#00,#49,#00
	db #02,#c9,#00,#49,#00,#02,#ff,#49
	db #2f,#02,#20,#ff,#4a,#2f,#01,#20
	db #ff,#47,#1f,#47,#47,#10,#03,#47
	db #10,#03,#47,#10,#03,#47,#10,#03
	db #47,#10,#04,#47,#10,#03,#47,#10
	db #03,#47,#10,#03,#47,#10,#03,#ff
	db #4c,#1f,#41,#4c,#10,#03,#4c,#10
	db #03,#4c,#10,#03,#4c,#10,#03,#4c
	db #10,#04,#4c,#10,#03,#4c,#10,#03
	db #4c,#10,#03,#4c,#10,#03,#ff,#42
	db #0b,#10,#49,#0b,#13,#42,#0b,#15
	db #42,#0b,#13,#42,#0b,#20,#42,#0b
	db #15,#42,#0b,#13,#42,#0b,#20,#42
	db #0b,#15,#42,#0b,#13,#42,#0b,#20
	db #49,#0b,#10,#42,#0b,#13,#42,#0b
	db #10,#49,#0b,#13,#42,#0b,#15,#42
	db #0b,#13,#42,#0b,#20,#42,#0b,#15
	db #42,#0b,#13,#42,#0b,#20,#42,#0b
	db #15,#42,#0b,#13,#42,#0b,#20,#49
	db #0b,#10,#42,#0b,#13,#ff,#46,#a0
	db #10,#47,#a0,#06,#49,#a0,#06,#46
	db #a2,#10,#03,#02,#11,#01,#ff,#45
	db #a0,#0c,#42,#a0,#04,#45,#a0,#04
	db #42,#a0,#04,#c9,#a0,#02,#11,#01
	db #02,#11,#01,#02,#11,#01,#47,#a0
	db #04,#ff,#42,#a0,#1f,#03,#12,#01
	db #ff,#44,#a0,#14,#45,#a0,#04,#47
	db #a0,#04,#4a,#a0,#04,#ff,#49,#00
	db #04,#47,#00,#02,#45,#00,#04,#49
	db #00,#0c,#42,#00,#02,#49,#00,#02
	db #49,#00,#02,#47,#00,#02,#45,#00
	db #02,#ff,#00,#18,#45,#00,#02,#47
	db #00,#02,#49,#00,#02,#45,#00,#02
	db #ff,#47,#00,#1c,#45,#00,#02,#47
	db #00,#02,#ff,#00,#20,#ff,#28,#58
	db #1e,#02,#2a,#58,#1b,#02,#38,#41
	db #20,#2a,#58,#1b,#04,#2a,#58,#1b
	db #02,#38,#41,#20,#2a,#58,#1b,#02
	db #28,#58,#1e,#02,#2a,#58,#1b,#02
	db #38,#41,#20,#2a,#58,#1b,#04,#2a
	db #58,#1b,#02,#38,#41,#20,#25,#58
	db #24,#02,#ff,#25,#58,#24,#02,#26
	db #58,#22,#02,#38,#41,#20,#26,#58
	db #22,#04,#26,#58,#22,#02,#38,#41
	db #20,#21,#58,#2d,#02,#25,#58,#24
	db #02,#26,#58,#22,#02,#38,#41,#20
	db #26,#58,#22,#04,#26,#58,#22,#02
	db #38,#41,#20,#21,#58,#2d,#02,#ff
	db #2d,#58,#16,#02,#2f,#58,#14,#02
	db #38,#41,#20,#2f,#58,#14,#04,#2f
	db #58,#14,#02,#38,#41,#20,#2a,#58
	db #1b,#02,#2d,#58,#16,#02,#2f,#58
	db #14,#02,#38,#41,#20,#2f,#58,#14
	db #04,#2f,#58,#14,#02,#38,#41,#20
	db #2a,#58,#1b,#02,#ff,#2f,#58,#14
	db #02,#31,#58,#12,#02,#38,#41,#20
	db #31,#58,#12,#04,#31,#58,#12,#02
	db #38,#41,#20,#2c,#58,#18,#02,#2f
	db #58,#14,#02,#31,#58,#12,#02,#38
	db #41,#20,#31,#58,#12,#04,#31,#58
	db #12,#02,#38,#41,#20,#2c,#58,#18
	db #02,#ff,#2a,#51,#20,#aa,#50,#aa
	db #50,#b8,#40,#aa,#50,#2a,#50,#02
	db #2a,#50,#02,#aa,#50,#aa,#50,#b8
	db #40,#aa,#50,#2a,#50,#02,#2a,#50
	db #02,#aa,#50,#aa,#50,#b8,#40,#aa
	db #50,#2a,#50,#02,#2a,#50,#02,#aa
	db #50,#aa,#50,#b8,#40,#aa,#50,#28
	db #50,#02,#ff,#26,#51,#20,#a6,#50
	db #a6,#50,#b8,#40,#a6,#50,#26,#50
	db #02,#26,#50,#02,#a6,#50,#a6,#50
	db #b8,#40,#a6,#50,#26,#50,#02,#26
	db #50,#02,#a6,#50,#a6,#50,#b8,#40
	db #a6,#50,#26,#50,#02,#26,#50,#02
	db #a6,#50,#a6,#50,#b8,#40,#a6,#50
	db #25,#50,#02,#ff,#2f,#51,#20,#af
	db #50,#af,#50,#b8,#40,#af,#50,#2f
	db #50,#02,#2f,#50,#02,#af,#50,#af
	db #50,#b8,#40,#af,#50,#2f,#50,#02
	db #2f,#50,#02,#af,#50,#af,#50,#b8
	db #40,#af,#50,#2f,#50,#02,#2f,#50
	db #02,#af,#50,#af,#50,#b8,#40,#af
	db #50,#2f,#50,#02,#ff,#28,#51,#20
	db #a8,#50,#a8,#50,#b8,#40,#a8,#50
	db #28,#50,#02,#28,#50,#02,#a8,#50
	db #a8,#50,#b8,#40,#a8,#50,#28,#50
	db #02,#28,#50,#02,#a8,#50,#a8,#50
	db #b8,#40,#a8,#50,#28,#50,#02,#28
	db #50,#02,#a8,#50,#a8,#50,#b8,#40
	db #a8,#50,#28,#50,#02,#ff
;
.music_info
	db "Batman's Journey - Main Part (1993)(Rebels)(Kangaroo)",0
	db "ST-128 Module",0

	read "music_end.asm"
