; Music of Tree Issue 1 - Intro (1999)(Brothers)(FG Brain)(ST-128 Module)
; Ripped by Megachur the 08/09/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TREEI1IN.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #4cb0

	read "music_header.asm"

	jr l4cb4
	jr l4cc3
.l4cb4
	call l4ce7
	ld hl,l4cd4
	ld de,l4ccc
	ld bc,#81ff
	jp #bcd7
.l4cc3
	ld hl,l4cd4
	call #bcdd
	jp l4d5f
.l4ccc
	push ix
	call l4d7b
	pop ix
	ret
.l4cd4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l4ce7
	jp l4d7b
	jp l4d5f
;
.init_music
.l4ce7
;
	xor a
	ld hl,l5292
	call l4d58
	ld hl,l52c0
	call l4d58
	ld hl,l52ee
	call l4d58
	ld ix,l528e
	ld iy,l5318
	ld de,#002e
	ld b,#03
.l4d07
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
	djnz l4d07
	ld hl,l51a7
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
	ld (l51a3),hl
	ld (l51a5),hl
	ld a,#0c
	ld c,d
	call l5183
	ld a,#0d
	ld c,d
	jp l5183
.l4d58
	ld b,#2a
.l4d5a
	ld (hl),a
	inc hl
	djnz l4d5a
	ret
;
.stop_music
.l4d5f
;
	ld a,#07
	ld c,#3f
	call l5183
	ld a,#08
	ld c,#00
	call l5183
	ld a,#09
	ld c,#00
	call l5183
	ld a,#0a
	ld c,#00
	jp l5183
;
.play_music
.l4d7b
;
	ld hl,l51a9
	dec (hl)
	ld ix,l528e
	ld bc,l529c
	call l4e1d
	ld ix,l52bc
	ld bc,l52ca
	call l4e1d
	ld ix,l52ea
	ld bc,l52f8
	call l4e1d
	ld hl,l51a2
	ld de,l51a9
	ld b,#06
	call l4dfa
	ld b,#07
	call l4dfa
	ld b,#0b
	call l4dfa
	ld b,#0d
	call l4dfa
	ld de,l51a9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l52ad
	call l4dd3
	ld hl,l52db
	call l4dd3
	ld hl,l5309
.l4dd3
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
	jr nz,l4de8
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4de8
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
.l4dfa
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5183
.l4e05
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5183
.l4e1d
	ld a,(l51a9)
	or a
	jp nz,l4ed5
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4ed5
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4e05
	or a
	jp z,l4eca
	ld r,a
	and #7f
	cp #10
	jr c,l4ea5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l501d
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
	jr z,l4e7e
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l4e7e
	rrca
	ld c,a
	ld hl,l531e
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
	jr z,l4e9d
	ld (ix+#1e),b
.l4e9d
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l4ebe
.l4ea5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l51ae
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
.l4ebe
	ld a,d
	or a
	jr nz,l4ecc
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l4ecc
.l4eca
	ld a,(hl)
	inc hl
.l4ecc
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4ed5
	ld a,(ix+#17)
	or a
	jr nz,l4eeb
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l4eeb
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4f01
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4f01
	ld a,(ix+#0d)
	or a
	jr z,l4f0f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l4f2d
.l4f0f
	ld a,(ix+#1a)
	or a
	jp z,l4f34
	ld c,a
	cp #03
	jr nz,l4f1c
	xor a
.l4f1c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l4f2d
	ld a,(ix+#18)
	dec c
	jr z,l4f2d
	ld a,(ix+#19)
.l4f2d
	add (ix+#07)
	ld b,d
	call l501d
.l4f34
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l4f5c
	dec (ix+#1b)
	jr nz,l4f5c
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l4f94
.l4f5c
	ld a,(ix+#29)
	or a
	jr z,l4f94
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l4f8b
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l4f82
	ld (ix+#29),#ff
	jr l4f8b
.l4f82
	cp (ix+#2b)
	jr nz,l4f8b
	ld (ix+#29),#01
.l4f8b
	ld b,d
	or a
	jp p,l4f91
	dec b
.l4f91
	ld c,a
	jr l4f9f
.l4f94
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l4f9f
	pop hl
	bit 7,(ix+#14)
	jr z,l4fa8
	ld h,d
	ld l,d
.l4fa8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5183
	ld c,h
	ld a,(ix+#02)
	call l5183
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l4ffb
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l4fea
	dec (ix+#09)
	jr nz,l4fea
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l4fe2
	xor a
	jr l4fe7
.l4fe2
	cp #10
	jr nz,l4fe7
	dec a
.l4fe7
	ld (ix+#1e),a
.l4fea
	ld a,b
	sub (ix+#1e)
	jr nc,l4ff1
	xor a
.l4ff1
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5183
.l4ffb
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l51aa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l5019
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l5019
	ld (l51aa),hl
	ret
.l501d
	ld hl,l51cc
	cp #61
	jr nc,l5027
	add a
	ld c,a
	add hl,bc
.l5027
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5031
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5156
	ld (ix+#1e),a
	jp l4ebe
.l5043
	dec b
.l5044
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l504f
	neg
.l504f
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
	jp l4ebe
.l5065
	dec b
	jr l5069
.l5068
	inc b
.l5069
	call l5156
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l4ebe
.l5078
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
	jp l513b
.l5089
	ld a,(hl)
	inc hl
	or a
	jr z,l50ab
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
.l50ab
	ld (ix+#29),a
	jp l4ebe
.l50b1
	dec hl
	ld a,(hl)
	and #0f
	ld (l51ad),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l51ac),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l4ebe
.l50cb
	ld a,(hl)
	or a
	jr z,l50dc
	call l5158
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l4ebe
.l50dc
	ld hl,#0101
	ld (l51a8),hl
	jp l4ebe
.l50e5
	call l5156
	ld (ix+#1e),a
	jp l4ebe
.l50ee
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5167
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5167
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l4ebe
.l5110
	ld a,(hl)
	inc hl
	ld (l51a7),a
	jp l4ebe
.l5118
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
	jp l4ebe
.l5137
	call l5156
	add a
.l513b
	ld b,#00
	ld c,a
	push hl
	ld hl,l539e
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l4ebe
.l5156
	ld a,(hl)
	inc hl
.l5158
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
.l5167
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l531e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l51cb
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l5183
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
.l51a2
	ret
.l51aa equ $ + 7
.l51a9 equ $ + 6
.l51a8 equ $ + 5
.l51a7 equ $ + 4
.l51a5 equ $ + 2
.l51a3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l51ad equ $ + 2
.l51ac equ $ + 1
	db #38,#00,#00
.l51ae
	dw l5031,l5044,l5043,l5068
	dw l5065,l5078,l5089,l50b1
	dw l50cb,l50b1,l50e5,l50ee
.l51cb equ $ + 5
	dw l5110,l5118,l5137
.l51cc
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
.l528e equ $ + 2
	dw #000f,#0008
.l5292 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l529c equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52ad equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52bc equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l52c0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52ca equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52db equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52ee equ $ + 6
.l52ea equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52f8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5309 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l531e equ $ + 6
.l5318
	db #fe,#56,#22,#57,#46,#57,#b0,#0c
	db #b0,#0c,#b0,#0c,#00,#00,#be,#53
	db #fe,#53,#1e,#54,#00,#00,#3e,#54
	db #7e,#54,#1e,#54,#00,#00,#be,#53
	db #9e,#54,#1e,#54,#20,#00,#b0,#0c
	db #b0,#0c,#b0,#0c,#00,#00,#b0,#0c
	db #b0,#0c,#b0,#0c,#00,#00,#be,#54
	db #fe,#54,#1e,#55,#00,#00,#b0,#0c
	db #b0,#0c,#b0,#0c,#00,#00,#3e,#55
	db #7e,#55,#9e,#55,#00,#00,#b0,#0c
	db #b0,#0c,#b0,#0c,#00,#00,#b0,#0c
	db #b0,#0c,#b0,#0c,#00,#00,#be,#55
	db #fe,#55,#1e,#56,#00,#00,#b0,#0c
	db #b0,#0c,#b0,#0c,#00,#00,#3e,#56
	db #7e,#56,#9e,#56,#00,#00,#be,#53
	db #be,#56,#de,#56,#9a,#06,#b0,#0c
.l539e equ $ + 6
	db #b0,#0c,#b0,#0c,#00,#00,#b0,#0c
	db #b0,#0c,#b0,#0c,#b0,#0c,#b0,#0c
	db #b0,#0c,#b0,#0c,#b0,#0c,#b0,#0c
	db #b0,#0c,#b0,#0c,#b0,#0c,#b0,#0c
	db #b0,#0c,#b0,#0c,#b0,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0c,#09,#01,#00,#00
	db #40,#00,#80,#00,#c0,#00,#00,#01
	db #40,#01,#80,#01,#c0,#01,#00,#02
	db #40,#02,#80,#02,#c0,#02,#00,#03
	db #40,#03,#80,#03,#c0,#03,#00,#04
	db #40,#04,#80,#04,#c0,#04,#00,#05
	db #40,#05,#80,#05,#c0,#05,#00,#06
	db #40,#06,#80,#06,#c0,#06,#00,#07
	db #40,#07,#80,#07,#c0,#07,#0f,#0f
	db #0f,#0e,#0e,#0e,#0d,#0d,#0d,#0c
	db #0c,#0c,#0b,#0b,#0b,#0a,#0a,#0a
	db #09,#09,#09,#08,#08,#08,#07,#07
	db #07,#06,#06,#06,#03,#00,#00,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#00,#00
	db #30,#00,#60,#00,#90,#00,#c0,#00
	db #f0,#00,#20,#01,#50,#01,#80,#01
	db #b0,#01,#e0,#01,#10,#02,#40,#02
	db #70,#02,#a0,#02,#d0,#02,#00,#03
	db #20,#03,#40,#03,#60,#03,#70,#03
	db #80,#03,#90,#03,#a0,#03,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0a,#0a
	db #09,#09,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#00
	db #00,#00,#00,#00,#00,#00,#04,#06
	db #07,#09,#0c,#11,#17,#1d,#15,#10
	db #0c,#09,#06,#05,#04,#04,#03,#03
	db #03,#02,#02,#02,#01,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #80,#00,#40,#01,#a0,#01,#40,#02
	db #e8,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0c,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0b
	db #09,#07,#05,#03,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#e9
	db #58,#00,#c6,#57,#00,#6a,#57,#00
	db #c6,#57,#00,#27,#58,#00,#88,#58
	db #00,#27,#58,#00,#88,#58,#00,#3d
	db #59,#00,#99,#59,#00,#fa,#59,#80
	db #04,#57,#00,#09,#5b,#00,#2e,#5b
	db #00,#fd,#59,#00,#34,#5a,#00,#6b
	db #5a,#00,#90,#5a,#00,#b1,#5a,#00
	db #d5,#5a,#00,#70,#5b,#00,#a7,#5b
	db #00,#fa,#59,#80,#28,#57,#00,#5f
	db #5d,#00,#62,#5d,#00,#de,#5b,#00
	db #5e,#5c,#00,#de,#5c,#00,#de,#5c
	db #00,#de,#5c,#00,#de,#5c,#00,#6e
	db #5d,#00,#0c,#5e,#00,#fa,#59,#80
	db #4c,#57,#00,#01,#c2,#80,#42,#80
	db #02,#40,#80,#06,#2f,#20,#02,#2f
	db #20,#02,#2f,#20,#02,#2f,#20,#02
	db #2f,#20,#02,#2f,#20,#02,#2f,#20
	db #02,#2f,#20,#02,#2f,#20,#02,#2f
	db #20,#02,#2f,#20,#02,#2f,#20,#02
	db #2f,#20,#02,#2f,#20,#02,#2f,#20
	db #02,#2f,#20,#02,#2c,#20,#02,#2c
	db #20,#02,#2c,#20,#02,#2c,#20,#02
	db #2c,#20,#02,#2c,#20,#02,#2c,#20
	db #02,#2c,#20,#02,#2c,#20,#02,#2c
	db #20,#02,#2c,#20,#02,#ff,#2c,#20
	db #02,#2c,#20,#02,#2c,#20,#02,#2c
	db #20,#02,#2c,#20,#02,#31,#20,#02
	db #31,#20,#02,#31,#20,#02,#31,#20
	db #02,#31,#20,#02,#31,#20,#02,#31
	db #20,#02,#31,#20,#02,#31,#20,#02
	db #31,#20,#02,#31,#20,#02,#31,#20
	db #02,#31,#20,#02,#31,#20,#02,#31
	db #20,#02,#31,#20,#02,#2a,#20,#02
	db #2a,#20,#02,#2a,#20,#02,#2a,#20
	db #02,#2a,#20,#02,#2a,#20,#02,#2a
	db #20,#02,#2a,#20,#02,#2a,#20,#02
	db #2a,#20,#02,#2a,#20,#02,#ff,#2a
	db #20,#02,#2a,#20,#02,#2a,#20,#02
	db #2a,#20,#02,#2a,#20,#02,#2f,#20
	db #02,#2f,#20,#02,#2f,#20,#02,#2f
	db #20,#02,#2f,#20,#02,#2f,#20,#02
	db #2f,#20,#02,#2f,#20,#02,#2f,#20
	db #02,#2f,#20,#02,#2f,#20,#02,#2f
	db #20,#02,#2f,#20,#02,#2f,#20,#02
	db #2f,#20,#02,#2f,#20,#02,#2a,#20
	db #02,#2a,#20,#02,#2a,#20,#02,#2a
	db #20,#02,#2a,#20,#02,#2a,#20,#02
	db #2a,#20,#02,#2a,#20,#02,#2a,#20
	db #02,#2a,#20,#02,#2a,#20,#02,#ff
	db #2a,#20,#02,#2a,#20,#02,#2a,#20
	db #02,#2a,#20,#02,#2a,#20,#02,#31
	db #20,#02,#31,#20,#02,#31,#20,#02
	db #31,#20,#02,#31,#20,#02,#31,#20
	db #02,#31,#20,#02,#31,#20,#02,#31
	db #20,#02,#31,#20,#02,#31,#20,#02
	db #31,#20,#02,#31,#20,#02,#31,#20
	db #02,#31,#20,#02,#31,#20,#02,#2a
	db #20,#02,#2a,#20,#02,#2a,#20,#02
	db #2a,#20,#02,#2a,#20,#02,#2a,#20
	db #02,#2a,#20,#02,#2a,#20,#02,#2a
	db #20,#02,#2a,#20,#02,#2a,#20,#02
	db #ff,#00,#0a,#2f,#20,#02,#2f,#20
	db #02,#2f,#20,#02,#2f,#20,#02,#2f
	db #20,#02,#2f,#20,#02,#2f,#20,#02
	db #2f,#20,#02,#2f,#20,#02,#2f,#20
	db #02,#2f,#20,#02,#2f,#20,#02,#2f
	db #20,#02,#2f,#20,#02,#2f,#20,#02
	db #2f,#20,#02,#2c,#20,#02,#2c,#20
	db #02,#2c,#20,#02,#2c,#20,#02,#2c
	db #20,#02,#2c,#20,#02,#2c,#20,#02
	db #2c,#20,#02,#2c,#20,#02,#2c,#20
	db #02,#2c,#20,#02,#ff,#00,#01,#c2
	db #80,#42,#80,#02,#40,#80,#06,#2f
	db #20,#02,#2f,#20,#02,#2f,#20,#02
	db #2f,#20,#02,#2f,#20,#02,#2f,#20
	db #02,#2f,#20,#02,#2f,#20,#02,#2f
	db #20,#02,#2f,#20,#02,#2f,#20,#02
	db #2f,#2b,#20,#2f,#2b,#20,#2f,#2b
	db #20,#2f,#2b,#20,#2f,#2b,#21,#2c
	db #2b,#21,#2c,#2b,#21,#2c,#2b,#21
	db #2c,#2b,#22,#2c,#2b,#22,#2c,#2b
	db #22,#2c,#2b,#22,#2c,#2b,#23,#2c
	db #2b,#23,#2c,#2b,#23,#2c,#2b,#23
	db #ff,#2c,#2b,#24,#2c,#2b,#24,#2c
	db #2b,#24,#2c,#2b,#24,#2c,#2b,#25
	db #31,#2b,#25,#31,#2b,#25,#31,#2b
	db #25,#31,#2b,#26,#31,#2b,#26,#31
	db #2b,#26,#31,#2b,#26,#31,#2b,#27
	db #31,#2b,#27,#31,#2b,#27,#31,#2b
	db #27,#31,#2b,#28,#31,#2b,#28,#31
	db #2b,#29,#31,#2b,#29,#31,#2b,#2a
	db #2a,#2b,#2a,#2a,#2b,#2b,#2a,#2b
	db #2b,#2a,#2b,#2c,#2a,#2b,#2c,#2a
	db #2b,#2d,#2a,#2b,#2d,#2a,#2b,#2e
	db #2a,#2b,#2e,#2a,#2b,#2f,#2a,#2b
	db #2f,#ff,#fe,#40,#ff,#36,#10,#02
	db #36,#10,#02,#40,#10,#02,#40,#10
	db #02,#3f,#10,#02,#3f,#10,#04,#4c
	db #30,#06,#4b,#30,#06,#49,#30,#06
	db #34,#10,#02,#34,#10,#02,#3d,#10
	db #02,#3d,#10,#02,#3b,#10,#02,#3b
	db #10,#04,#49,#30,#06,#47,#30,#06
	db #46,#30,#06,#ff,#38,#10,#02,#38
	db #10,#02,#42,#10,#02,#42,#10,#02
	db #40,#10,#02,#40,#10,#04,#4e,#30
	db #06,#4c,#30,#06,#4b,#30,#06,#49
	db #30,#02,#40,#10,#02,#3f,#10,#02
	db #3d,#10,#02,#3f,#10,#02,#40,#10
	db #04,#47,#30,#06,#46,#30,#06,#44
	db #30,#06,#ff,#42,#30,#02,#36,#10
	db #02,#38,#10,#02,#3a,#10,#02,#3b
	db #10,#02,#33,#10,#18,#33,#10,#02
	db #34,#10,#02,#36,#10,#02,#38,#10
	db #02,#38,#10,#06,#36,#10,#10,#ff
	db #00,#02,#36,#10,#02,#34,#10,#02
	db #33,#10,#02,#31,#10,#02,#34,#10
	db #18,#36,#10,#02,#34,#10,#02,#33
	db #10,#02,#31,#10,#02,#34,#10,#16
	db #ff,#00,#02,#36,#10,#02,#38,#10
	db #02,#3a,#10,#02,#3b,#10,#02,#33
	db #10,#18,#33,#10,#02,#34,#10,#02
	db #36,#10,#02,#38,#10,#02,#38,#10
	db #06,#36,#10,#10,#ff,#00,#02,#36
	db #10,#02,#34,#10,#02,#33,#10,#02
	db #31,#10,#02,#34,#10,#18,#36,#10
	db #02,#34,#10,#02,#33,#10,#02,#31
	db #10,#02,#34,#10,#04,#c5,#60,#45
	db #60,#05,#c4,#60,#44,#60,#05,#c2
	db #60,#42,#60,#03,#c0,#60,#c0,#60
	db #ff,#36,#10,#02,#36,#10,#02,#40
	db #10,#02,#40,#10,#02,#3f,#10,#02
	db #3f,#10,#16,#34,#10,#02,#34,#10
	db #02,#3d,#10,#02,#3d,#10,#02,#3b
	db #10,#02,#3b,#10,#16,#ff,#38,#10
	db #02,#38,#10,#02,#42,#10,#02,#42
	db #10,#02,#40,#10,#02,#40,#10,#18
	db #40,#10,#02,#3f,#10,#02,#3d,#10
	db #02,#3f,#10,#02,#40,#10,#04,#c5
	db #b0,#45,#b0,#02,#c4,#b0,#44,#b0
	db #02,#c2,#b0,#42,#b0,#02,#c0,#b0
	db #40,#b0,#02,#c0,#b0,#c0,#b0,#c0
	db #b0,#c0,#b0,#c0,#80,#c0,#60,#ff
	db #36,#10,#02,#36,#10,#02,#40,#10
	db #02,#40,#10,#02,#3f,#10,#02,#3f
	db #10,#04,#4c,#30,#06,#4b,#30,#06
	db #49,#30,#06,#34,#1b,#20,#34,#1b
	db #20,#3d,#1b,#20,#3d,#1b,#20,#3b
	db #1b,#21,#3b,#1b,#41,#49,#3b,#61
	db #47,#3b,#62,#46,#3b,#63,#ff,#38
	db #1b,#24,#38,#1b,#24,#42,#1b,#24
	db #42,#1b,#24,#40,#1b,#25,#40,#1b
	db #45,#4e,#3b,#65,#4c,#3b,#66,#4b
	db #3b,#67,#49,#3b,#28,#40,#1b,#28
	db #3f,#1b,#29,#3d,#1b,#29,#3f,#1b
	db #2a,#40,#1b,#4a,#47,#3b,#6b,#46
	db #3b,#6d,#44,#3b,#6e,#ff,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#47,#30
	db #02,#a8,#d0,#ee,#e0,#e2,#e0,#ee
	db #e0,#b8,#b0,#ee,#e0,#e2,#e0,#ee
	db #e0,#a8,#d0,#ee,#e0,#e2,#e0,#ee
	db #e0,#b8,#b0,#ee,#e0,#e2,#e0,#ee
	db #e0,#a8,#d0,#ee,#e0,#e2,#e0,#ee
	db #e0,#b8,#b0,#ee,#e0,#e2,#e0,#ee
	db #e0,#a8,#d0,#ee,#e0,#e2,#e0,#ee
	db #e0,#b8,#b0,#ee,#e0,#ff,#44,#30
	db #02,#a8,#d0,#ee,#e0,#e2,#e0,#ee
	db #e0,#b8,#b0,#ee,#e0,#e2,#e0,#ee
	db #e0,#a8,#d0,#ee,#e0,#e2,#e0,#ee
	db #e0,#b8,#b0,#ee,#e0,#e2,#e0,#ee
	db #e0,#a8,#d0,#ee,#e0,#e2,#e0,#ee
	db #e0,#b8,#b0,#ee,#e0,#e2,#e0,#ee
	db #e0,#a8,#d0,#ee,#e0,#e2,#e0,#ee
	db #e0,#b8,#b0,#ee,#e0,#e2,#e0,#ee
	db #e0,#a8,#d0,#ee,#e0,#e2,#e0,#ee
	db #e0,#b8,#b0,#ee,#e0,#e2,#e0,#ee
	db #e0,#a8,#d0,#ee,#e0,#e2,#e0,#ee
	db #e0,#b8,#b0,#ee,#e0,#e2,#e0,#ee
	db #e0,#a8,#d0,#ee,#e0,#e2,#e0,#ee
	db #e0,#b8,#b0,#ee,#e0,#e2,#e0,#ee
	db #e0,#a8,#d0,#ee,#e0,#e2,#e0,#ee
	db #e0,#b8,#b0,#ee,#e0,#ff,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#ff,#00
	db #40,#ff,#00,#32,#45,#60,#05,#45
	db #60,#07,#40,#60,#02,#ff,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#e2,#e0
	db #ee,#e0,#a8,#d0,#ee,#e0,#e2,#e0
	db #ee,#e0,#b8,#b0,#ee,#e0,#47,#3b
	db #20,#28,#db,#10,#6e,#eb,#10,#62
	db #eb,#10,#6e,#eb,#10,#38,#bb,#10
	db #6e,#eb,#10,#62,#eb,#11,#6e,#eb
	db #11,#28,#db,#11,#6e,#eb,#11,#62
	db #eb,#11,#6e,#eb,#11,#38,#bb,#11
	db #6e,#eb,#11,#62,#eb,#12,#6e,#eb
	db #12,#28,#db,#12,#6e,#eb,#12,#62
	db #eb,#12,#6e,#eb,#12,#38,#bb,#12
	db #6e,#eb,#12,#62,#eb,#13,#6e,#eb
	db #13,#28,#db,#13,#6e,#eb,#13,#62
	db #eb,#13,#6e,#eb,#13,#38,#bb,#13
	db #6e,#eb,#13,#ff,#44,#3b,#24,#28
	db #db,#14,#6e,#eb,#14,#62,#eb,#14
	db #6e,#eb,#14,#38,#bb,#14,#6e,#eb
	db #14,#62,#eb,#15,#6e,#eb,#15,#28
	db #db,#15,#6e,#eb,#15,#62,#eb,#15
	db #6e,#eb,#15,#38,#bb,#15,#6e,#eb
	db #15,#62,#eb,#16,#6e,#eb,#16,#28
	db #db,#16,#6e,#eb,#16,#62,#eb,#16
	db #6e,#eb,#16,#38,#bb,#16,#6e,#eb
	db #16,#62,#eb,#17,#6e,#eb,#17,#28
	db #db,#17,#6e,#eb,#17,#62,#eb,#17
	db #6e,#eb,#17,#38,#bb,#17,#6e,#eb
	db #17,#62,#eb,#18,#6e,#eb,#18,#28
	db #db,#18,#6e,#eb,#18,#62,#eb,#19
	db #6e,#eb,#19,#38,#bb,#19,#6e,#eb
	db #19,#62,#eb,#1a,#6e,#eb,#1a,#28
	db #db,#1a,#6e,#eb,#1a,#62,#eb,#1b
	db #6e,#eb,#1b,#38,#bb,#1b,#6e,#eb
	db #1b,#62,#eb,#1c,#6e,#eb,#1c,#28
	db #db,#1c,#6e,#eb,#1c,#62,#eb,#1d
	db #6e,#eb,#1d,#38,#bb,#1d,#6e,#eb
	db #1d,#62,#eb,#1e,#6e,#eb,#1e,#28
	db #db,#1e,#6e,#eb,#1e,#62,#eb,#1f
	db #6e,#eb,#1f,#38,#bb,#1f,#6e,#eb
	db #1f,#ff,#1a,#14,#6e,#eb,#14,#62
	db #eb,#14,#6e,#eb,#14,#38,#bb,#fd
	db #06,#11,#5e,#09,#15,#6e,#eb,#15
	db #28,#db,#15,#6e,#eb,#15,#fd,#06
	db #21,#5e,#01,#38,#bb,#fd,#06,#29
	db #5e,#09,#16,#6e,#eb,#16,#28,#db
	db #16,#6e,#eb,#16,#fd,#06,#39,#5e
	db #01,#38,#bb,#fd,#06,#41,#5e,#09
	db #17,#6e,#eb,#17,#28,#db,#17,#6e
	db #eb,#17,#fd,#06,#51,#5e,#01,#38
	db #bb,#fd,#06,#59,#5e,#f0,#0f,#18
	db #6e,#eb,#18,#28,#db,#18,#6e,#eb
	db #18,#62,#eb,#19,#6e,#eb,#19,#38
	db #bb,#19,#6e,#eb,#19,#62,#eb,#1a
	db #6e,#eb,#1a,#28,#db,#1a,#6e,#eb
	db #1a,#62,#eb,#1b,#6e,#eb,#1b,#38
	db #bb,#1b,#6e,#eb,#1b,#62,#eb,#1c
	db #6e,#eb,#1c,#28,#db,#1c,#6e,#eb
	db #1c,#62,#eb,#1d,#6e,#eb,#1d,#38
	db #bb,#1d,#6e,#eb,#1d,#62,#eb,#1e
	db #6e,#eb,#1e,#28,#db,#1e,#6e,#eb
	db #1e,#62,#eb,#1f,#6e,#eb,#1f,#38
	db #bb,#1f,#6e,#eb,#1f,#ff,#1a,#ff
;
.music_info
	db "Tree Issue 1 - Intro (1999)(Brothers)(FG Brain)",0
	db "ST-128 Module",0

	read "music_end.asm"
