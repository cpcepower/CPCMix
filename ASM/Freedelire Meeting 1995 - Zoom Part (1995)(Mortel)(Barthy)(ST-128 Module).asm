; Music of Freedelire Meeting 1995 - Zoom Part (1995)(Mortel)(Barthy)(ST-128 Module)
; Ripped by Megachur the 29/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FREEDMZP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5400

	read "music_header.asm"

	jp l5409
	jp l549d
	jp l5481
;
.init_music
.l5409
;
	xor a
	ld hl,l59b4
	call l547a
	ld hl,l59e2
	call l547a
	ld hl,l5a10
	call l547a
	ld ix,l59b0
	ld iy,l5a3a
	ld de,#002e
	ld b,#03
.l5429
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
	djnz l5429
	ld hl,l58c9
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
	ld (l58c5),hl
	ld (l58c7),hl
	ld a,#0c
	ld c,d
	call l58a5
	ld a,#0d
	ld c,d
	jp l58a5
.l547a
	ld b,#2a
.l547c
	ld (hl),a
	inc hl
	djnz l547c
	ret
;
.stop_music
.l5481
;
	ld a,#07
	ld c,#3f
	call l58a5
	ld a,#08
	ld c,#00
	call l58a5
	ld a,#09
	ld c,#00
	call l58a5
	ld a,#0a
	ld c,#00
	jp l58a5
;
.play_music
.l549d
;
	ld hl,l58cb
	dec (hl)
	ld ix,l59b0
	ld bc,l59be
	call l553f
	ld ix,l59de
	ld bc,l59ec
	call l553f
	ld ix,l5a0c
	ld bc,l5a1a
	call l553f
	ld hl,l58c4
	ld de,l58cb
	ld b,#06
	call l551c
	ld b,#07
	call l551c
	ld b,#0b
	call l551c
	ld b,#0d
	call l551c
	ld de,l58cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l59cf
	call l54f5
	ld hl,l59fd
	call l54f5
	ld hl,l5a2b
.l54f5
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
	jr nz,l550a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l550a
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
.l551c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l58a5
.l5527
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l58a5
.l553f
	ld a,(l58cb)
	or a
	jp nz,l55f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l55f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5527
	or a
	jp z,l55ec
	ld r,a
	and #7f
	cp #10
	jr c,l55c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l573f
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
	jr z,l55a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l55a0
	rrca
	ld c,a
	ld hl,l5a40
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
	jr z,l55bf
	ld (ix+#1e),b
.l55bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l55e0
.l55c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l58d0
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
.l55e0
	ld a,d
	or a
	jr nz,l55ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l55ee
.l55ec
	ld a,(hl)
	inc hl
.l55ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l55f7
	ld a,(ix+#17)
	or a
	jr nz,l560d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l560d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5623
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5623
	ld a,(ix+#0d)
	or a
	jr z,l5631
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l564f
.l5631
	ld a,(ix+#1a)
	or a
	jp z,l5656
	ld c,a
	cp #03
	jr nz,l563e
	xor a
.l563e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l564f
	ld a,(ix+#18)
	dec c
	jr z,l564f
	ld a,(ix+#19)
.l564f
	add (ix+#07)
	ld b,d
	call l573f
.l5656
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l567e
	dec (ix+#1b)
	jr nz,l567e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l56b6
.l567e
	ld a,(ix+#29)
	or a
	jr z,l56b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l56ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l56a4
	ld (ix+#29),#ff
	jr l56ad
.l56a4
	cp (ix+#2b)
	jr nz,l56ad
	ld (ix+#29),#01
.l56ad
	ld b,d
	or a
	jp p,l56b3
	dec b
.l56b3
	ld c,a
	jr l56c1
.l56b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l56c1
	pop hl
	bit 7,(ix+#14)
	jr z,l56ca
	ld h,d
	ld l,d
.l56ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l58a5
	ld c,h
	ld a,(ix+#02)
	call l58a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l571d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l570c
	dec (ix+#09)
	jr nz,l570c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5704
	xor a
	jr l5709
.l5704
	cp #10
	jr nz,l5709
	dec a
.l5709
	ld (ix+#1e),a
.l570c
	ld a,b
	sub (ix+#1e)
	jr nc,l5713
	xor a
.l5713
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l58a5
.l571d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l58cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l573b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l573b
	ld (l58cc),hl
	ret
.l573f
	ld hl,l58ee
	cp #61
	jr nc,l5749
	add a
	ld c,a
	add hl,bc
.l5749
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5753
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5878
	ld (ix+#1e),a
	jp l55e0
.l5765
	dec b
.l5766
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l5771
	neg
.l5771
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
	jp l55e0
.l5787
	dec b
	jr l578b
.l578a
	inc b
.l578b
	call l5878
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l55e0
.l579a
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
	jp l585d
.l57ab
	ld a,(hl)
	inc hl
	or a
	jr z,l57cd
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
.l57cd
	ld (ix+#29),a
	jp l55e0
.l57d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l58cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l58ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l55e0
.l57ed
	ld a,(hl)
	or a
	jr z,l57fe
	call l587a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l55e0
.l57fe
	ld hl,#0101
	ld (l58ca),hl
	jp l55e0
.l5807
	call l5878
	ld (ix+#1e),a
	jp l55e0
.l5810
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5889
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5889
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l55e0
.l5832
	ld a,(hl)
	inc hl
	ld (l58c9),a
	jp l55e0
.l583a
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
	jp l55e0
.l5859
	call l5878
	add a
.l585d
	ld b,#00
	ld c,a
	push hl
	ld hl,l5ac0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l55e0
.l5878
	ld a,(hl)
	inc hl
.l587a
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
.l5889
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5a40
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
.l58a5 equ $ + 5
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
.l58c4
	ret
.l58cc equ $ + 7
.l58cb equ $ + 6
.l58ca equ $ + 5
.l58c9 equ $ + 4
.l58c7 equ $ + 2
.l58c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l58cf equ $ + 2
.l58ce equ $ + 1
	db #38,#00,#00
.l58d0
	dw l5753,l5766,l5765,l578a
	dw l5787,l579a,l57ab,l57d3
	dw l57ed,l57d3,l5807,l5810
	dw l5832,l583a,l5859
.l58ee
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
.l59b0 equ $ + 2
	dw #000f,#0008
.l59b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l59be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l59cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l59de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l59e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l59ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l59fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a10 equ $ + 6
.l5a0c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a1a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a2b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5a40 equ $ + 6
.l5a3a
	db #80,#5d,#c5,#5d,#0a,#5e,#d2,#13
	db #b2,#70,#f2,#70,#40,#5b,#e0,#5a
	db #20,#5b,#40,#5b,#40,#00,#d1,#13
	db #a3,#27,#a3,#27,#d1,#13,#60,#5b
	db #a0,#5b,#c0,#5b,#00,#00,#e0,#5b
	db #20,#5c,#40,#5c,#00,#00,#60,#5c
	db #a0,#5c,#c0,#5c,#00,#00,#e0,#5c
	db #20,#5d,#40,#5b,#0f,#0f,#d1,#13
	db #a3,#27,#a3,#27,#d1,#13,#d1,#13
	db #a3,#27,#b7,#16,#d1,#13,#d1,#13
	db #a3,#27,#a3,#27,#d1,#13,#d1,#13
	db #a3,#27,#12,#71,#60,#5d,#a3,#27
	db #a3,#27,#a3,#27,#d1,#13,#a3,#27
	db #a3,#27,#a4,#27,#d2,#13,#a4,#27
	db #a4,#27,#a4,#27,#d2,#13,#a4,#27
	db #d2,#13,#d2,#13,#01,#00,#d3,#13
.l5ac0 equ $ + 6
	db #d4,#13,#d4,#13,#01,#00,#d3,#13
	db #40,#5d,#60,#5d,#d3,#13,#d3,#13
	db #d4,#13,#d4,#13,#d3,#13,#d3,#13
	db #d2,#13,#d2,#13,#d3,#13,#d3,#13
	db #d4,#13,#d4,#13,#d3,#13,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#02,#00
	db #02,#00,#01,#00,#01,#00,#0e,#0d
	db #0c,#0b,#0a,#0c,#0b,#0a,#09,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#80,#00
	db #00,#01,#80,#01,#00,#02,#80,#02
	db #00,#03,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0a,#00,#80,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #17,#00,#2f,#00,#47,#00,#5e,#00
	db #75,#00,#8d,#00,#a4,#00,#bc,#00
	db #d3,#00,#eb,#00,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#14,#ff
	db #14,#ff,#14,#ff,#14,#ff,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#01,#01,#02,#01,#01,#02,#01
	db #01,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#8b,#89,#88
	db #88,#87,#87,#86,#85,#84,#83,#82
	db #81,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0c,#00
	db #00,#0c,#0c,#00,#00,#0c,#0c,#00
	db #00,#0c,#0c,#00,#00,#0c,#0c,#00
	db #00,#0c,#0c,#00,#00,#0c,#0c,#00
	db #00,#0c,#0c,#00,#00,#0c,#f7,#f7
	db #f7,#f7,#f7,#f7,#f7,#f7,#f7,#f7
	db #f7,#f7,#f7,#f7,#f7,#f7,#f7,#f7
	db #f7,#f7,#f7,#f7,#f7,#f7,#f7,#f7
	db #f7,#f7,#f7,#f7,#f7,#f7,#00,#4f
	db #5e,#00,#4f,#5e,#00,#4f,#5e,#00
	db #4f,#5e,#00,#4f,#5e,#00,#4f,#5e
	db #00,#4f,#5e,#00,#4f,#5e,#00,#4f
	db #5e,#00,#4f,#5e,#00,#4f,#5e,#00
	db #4f,#5e,#00,#c1,#5e,#00,#d9,#5e
	db #00,#4f,#5e,#00,#4f,#5e,#00,#4f
	db #5e,#00,#4f,#5e,#00,#4f,#5e,#00
	db #4f,#5e,#00,#4f,#5e,#00,#4f,#5e
	db #80,#80,#5d,#00,#eb,#5e,#00,#0b
	db #5f,#00,#0b,#5f,#00,#7c,#5f,#00
	db #0b,#5f,#00,#0b,#5f,#00,#0b,#5f
	db #00,#0b,#5f,#00,#0b,#5f,#00,#0b
	db #5f,#00,#0b,#5f,#00,#0b,#5f,#00
	db #9f,#5f,#00,#de,#5f,#00,#7c,#5f
	db #00,#0b,#5f,#00,#0b,#5f,#00,#0b
	db #5f,#00,#0b,#5f,#00,#0b,#5f,#00
	db #0b,#5f,#00,#0b,#5f,#80,#c5,#5d
	db #00,#21,#60,#00,#69,#60,#00,#69
	db #60,#00,#99,#60,#00,#69,#60,#00
	db #40,#61,#00,#cd,#60,#00,#40,#61
	db #00,#26,#62,#00,#ab,#61,#00,#40
	db #61,#00,#cd,#60,#00,#fc,#61,#00
	db #14,#62,#00,#99,#60,#00,#69,#60
	db #00,#69,#60,#00,#40,#61,#00,#26
	db #62,#00,#ab,#61,#00,#40,#61,#00
	db #cd,#60,#80,#0a,#5e,#34,#1f,#12
	db #b4,#10,#c0,#10,#b4,#10,#40,#10
	db #02,#b4,#10,#40,#10,#02,#b4,#10
	db #c0,#10,#c2,#10,#c3,#10,#c2,#10
	db #c0,#10,#c2,#10,#b4,#10,#b4,#10
	db #40,#10,#02,#40,#10,#03,#40,#10
	db #02,#b4,#10,#c0,#10,#c2,#10,#c3
	db #10,#c2,#10,#c0,#10,#be,#10,#b4
	db #10,#b4,#10,#c0,#10,#b4,#10,#40
	db #10,#03,#40,#10,#02,#b4,#10,#c0
	db #10,#c2,#10,#c3,#10,#c2,#10,#c0
	db #10,#c2,#10,#b4,#10,#b4,#10,#40
	db #10,#02,#40,#10,#03,#40,#10,#02
	db #b4,#10,#c0,#10,#c2,#10,#c3,#10
	db #c2,#10,#c0,#10,#be,#10,#ff,#40
	db #16,#20,#03,#40,#1b,#32,#40,#1b
	db #35,#40,#1b,#37,#40,#1b,#39,#40
	db #1b,#3b,#40,#1b,#0f,#2e,#ff,#00
	db #39,#3f,#1f,#12,#c2,#10,#bf,#10
	db #c2,#10,#bf,#10,#c2,#10,#c3,#10
	db #ff,#00,#20,#40,#30,#04,#40,#30
	db #04,#40,#30,#04,#40,#30,#04,#40
	db #30,#04,#40,#30,#04,#40,#30,#04
	db #c0,#30,#c0,#30,#c0,#30,#c0,#30
	db #ff,#40,#30,#02,#f4,#50,#f4,#50
	db #40,#40,#02,#f4,#50,#40,#30,#02
	db #f4,#50,#f4,#50,#f4,#50,#40,#40
	db #02,#f4,#50,#f4,#50,#40,#30,#02
	db #f4,#50,#f4,#50,#40,#40,#02,#f4
	db #50,#40,#30,#02,#f4,#50,#f4,#50
	db #f4,#50,#40,#40,#02,#f4,#50,#f4
	db #50,#40,#30,#02,#f4,#50,#f4,#50
	db #40,#40,#02,#f4,#50,#40,#30,#02
	db #f4,#50,#f4,#50,#f4,#50,#40,#40
	db #02,#f4,#50,#f4,#50,#40,#30,#02
	db #f4,#50,#f4,#50,#40,#40,#02,#f4
	db #50,#40,#30,#02,#f4,#50,#f4,#50
	db #f4,#50,#40,#40,#02,#c0,#40,#c0
	db #40,#ff,#40,#40,#20,#40,#30,#04
	db #40,#30,#04,#40,#30,#04,#40,#30
	db #04,#40,#30,#02,#40,#40,#02,#40
	db #40,#04,#40,#40,#02,#40,#40,#04
	db #c0,#40,#c0,#40,#ff,#34,#30,#04
	db #40,#40,#03,#34,#30,#05,#40,#40
	db #04,#34,#30,#04,#40,#40,#03,#34
	db #30,#03,#34,#30,#02,#40,#40,#02
	db #c0,#40,#c0,#40,#34,#30,#04,#40
	db #40,#03,#34,#30,#05,#40,#40,#04
	db #34,#30,#04,#40,#40,#03,#34,#30
	db #03,#40,#40,#02,#40,#40,#02,#c0
	db #40,#c0,#40,#ff,#40,#30,#04,#40
	db #40,#03,#40,#30,#05,#40,#40,#04
	db #40,#30,#04,#40,#40,#03,#40,#30
	db #03,#40,#30,#02,#40,#40,#02,#c0
	db #40,#c0,#40,#40,#30,#04,#40,#40
	db #03,#40,#30,#05,#40,#40,#04,#40
	db #30,#04,#40,#40,#03,#c0,#40,#c0
	db #40,#40,#40,#02,#c0,#40,#c0,#40
	db #c0,#40,#c0,#40,#c0,#40,#ff,#38
	db #66,#15,#02,#0b,#25,#0b,#25,#0b
	db #25,#0b,#25,#0b,#25,#0b,#25,#0b
	db #25,#0b,#25,#0b,#25,#0b,#24,#0b
	db #24,#0b,#24,#0b,#24,#0b,#24,#0b
	db #24,#0b,#24,#0b,#24,#0b,#24,#0b
	db #24,#0b,#24,#0b,#24,#3e,#6b,#10
	db #bd,#60,#3b,#60,#02,#38,#60,#09
	db #bf,#60,#c2,#60,#bf,#60,#c2,#60
	db #bf,#60,#c2,#60,#c3,#60,#ff,#38
	db #6f,#c1,#be,#60,#bd,#60,#3b,#60
	db #02,#38,#60,#0c,#be,#60,#bd,#60
	db #3b,#60,#02,#38,#60,#0c,#be,#60
	db #bd,#60,#3b,#60,#02,#38,#60,#09
	db #bf,#60,#c2,#60,#bf,#60,#c2,#60
	db #bf,#60,#c2,#60,#c3,#60,#ff,#38
	db #6f,#c1,#be,#60,#bd,#60,#3b,#60
	db #02,#38,#60,#0a,#bb,#60,#bd,#60
	db #be,#60,#bd,#60,#3b,#60,#02,#38
	db #60,#0c,#be,#60,#bd,#60,#3b,#60
	db #02,#38,#60,#09,#bf,#60,#c2,#60
	db #bf,#60,#c2,#60,#bf,#60,#c2,#60
	db #c3,#60,#ff,#49,#6f,#11,#fe,#01
	db #c9,#60,#fe,#01,#c9,#60,#fe,#01
	db #c9,#60,#fe,#01,#c9,#60,#fe,#01
	db #c9,#60,#47,#60,#03,#c4,#60,#fe
	db #03,#c4,#60,#c4,#60,#c4,#60,#c4
	db #60,#c4,#60,#c4,#60,#c2,#60,#fe
	db #01,#c2,#60,#fe,#01,#bf,#60,#fe
	db #01,#c2,#60,#c4,#60,#c4,#60,#fe
	db #01,#c4,#60,#c2,#60,#c4,#60,#47
	db #60,#03,#c4,#60,#fe,#01,#c4,#60
	db #c2,#60,#44,#60,#02,#49,#60,#02
	db #c4,#60,#fe,#01,#c4,#60,#c2,#60
	db #c4,#60,#47,#60,#03,#c4,#60,#fe
	db #01,#c4,#60,#c2,#60,#c2,#60,#bf
	db #60,#c2,#60,#c3,#60,#ff,#44,#6f
	db #11,#fe,#01,#c4,#60,#fe,#01,#42
	db #60,#02,#c4,#60,#bf,#60,#fe,#01
	db #bf,#60,#fe,#01,#bf,#60,#42,#60
	db #02,#44,#60,#02,#bd,#60,#fe,#01
	db #bd,#60,#fe,#01,#3f,#60,#02,#c2
	db #60,#c4,#60,#fe,#08,#c4,#60,#fe
	db #01,#c4,#60,#fe,#01,#42,#60,#02
	db #c4,#60,#c7,#60,#fe,#01,#c4,#60
	db #fe,#01,#c2,#60,#44,#60,#02,#47
	db #60,#02,#c9,#60,#fe,#01,#c7,#60
	db #fe,#01,#c4,#60,#fe,#01,#c2,#60
	db #c4,#60,#fe,#02,#c4,#60,#fe,#01
	db #c7,#60,#fe,#01,#c9,#60,#fe,#01
	db #ff,#46,#6f,#c1,#c1,#60,#c4,#60
	db #46,#60,#02,#49,#60,#02,#46,#60
	db #06,#c1,#60,#c4,#60,#c6,#60,#c9
	db #60,#c6,#60,#c9,#60,#4b,#60,#02
	db #cd,#60,#fe,#01,#cd,#60,#fe,#01
	db #c9,#60,#fe,#01,#c6,#60,#fe,#01
	db #cb,#60,#fe,#01,#cb,#60,#cd,#60
	db #cb,#60,#c9,#60,#c6,#60,#c4,#60
	db #46,#60,#09,#bf,#60,#c2,#60,#bf
	db #60,#c2,#60,#bf,#60,#c2,#60,#c3
	db #60,#ff,#44,#66,#10,#03,#44,#6b
	db #32,#44,#6b,#35,#44,#6b,#37,#44
	db #6b,#39,#44,#6b,#3b,#44,#6b,#0f
	db #2e,#ff,#fe,#39,#3f,#6f,#11,#c2
	db #60,#bf,#60,#c2,#60,#bf,#60,#c2
	db #60,#c3,#60,#ff,#49,#6f,#11,#fe
	db #01,#c9,#60,#fe,#01,#c9,#60,#fe
	db #01,#c9,#60,#fe,#01,#c9,#60,#fe
	db #01,#c9,#60,#47,#60,#03,#c4,#60
	db #fe,#03,#c4,#60,#c4,#60,#c4,#60
	db #c4,#60,#c4,#60,#c4,#60,#c2,#60
	db #fe,#01,#c2,#60,#fe,#01,#bf,#60
	db #fe,#01,#c2,#60,#c4,#60,#c4,#60
	db #fe,#01,#c4,#60,#c2,#60,#c4,#60
	db #47,#60,#03,#c4,#60,#fe,#01,#c4
	db #60,#c2,#60,#44,#60,#02,#49,#60
	db #02,#c4,#60,#fe,#01,#c4,#60,#c2
	db #60,#c4,#60,#47,#60,#03,#bf,#60
	db #fe,#01,#c2,#60,#fe,#01,#c4,#60
	db #fe,#01,#c9,#60,#fe,#01,#ff
;
.music_info
	db "Freedelire Meeting 1995 - Zoom Part (1995)(Mortel)(Barthy)",0
	db "ST-128 Module",0

	read "music_end.asm"
