; Music of Total Eclipse - Sonics Night - Credits (1996)(Power System)(Epsilon)(ST-128 Module)
; Ripped by Megachur the 08/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TOTAESNC.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 08
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #2e00

	read "music_header.asm"

	jp l2e09
	jp l2e9d
	jp l2e81
;
.init_music
.l2e09
;
	xor a
	ld hl,l33b4
	call l2e7a
	ld hl,l33e2
	call l2e7a
	ld hl,l3410
	call l2e7a
	ld ix,l33b0
	ld iy,l343a
	ld de,#002e
	ld b,#03
.l2e29
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
	djnz l2e29
	ld hl,l32c9
	ld (hl),#02
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l32c5),hl
	ld (l32c7),hl
	ld a,#0c
	ld c,d
	call l32a5
	ld a,#0d
	ld c,d
	jp l32a5
.l2e7a
	ld b,#2a
.l2e7c
	ld (hl),a
	inc hl
	djnz l2e7c
	ret
;
.stop_music
.l2e81
;
	ld a,#07
	ld c,#3f
	call l32a5
	ld a,#08
	ld c,#00
	call l32a5
	ld a,#09
	ld c,#00
	call l32a5
	ld a,#0a
	ld c,#00
	jp l32a5
;
.play_music
.l2e9d
;
	ld hl,l32cb
	dec (hl)
	ld ix,l33b0
	ld bc,l33be
	call l2f3f
	ld ix,l33de
	ld bc,l33ec
	call l2f3f
	ld ix,l340c
	ld bc,l341a
	call l2f3f
	ld hl,l32c4
	ld de,l32cb
	ld b,#06
	call l2f1c
	ld b,#07
	call l2f1c
	ld b,#0b
	call l2f1c
	ld b,#0d
	call l2f1c
	ld de,l32cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l33cf
	call l2ef5
	ld hl,l33fd
	call l2ef5
	ld hl,l342b
.l2ef5
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
	jr nz,l2f0a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l2f0a
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
.l2f1c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l32a5
.l2f27
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l32a5
.l2f3f
	ld a,(l32cb)
	or a
	jp nz,l2ff7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l2ff7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l2f27
	or a
	jp z,l2fec
	ld r,a
	and #7f
	cp #10
	jr c,l2fc7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l313f
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
	jr z,l2fa0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l2fa0
	rrca
	ld c,a
	ld hl,l3440
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
	jr z,l2fbf
	ld (ix+#1e),b
.l2fbf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l2fe0
.l2fc7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l32d0
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
.l2fe0
	ld a,d
	or a
	jr nz,l2fee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l2fee
.l2fec
	ld a,(hl)
	inc hl
.l2fee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l2ff7
	ld a,(ix+#17)
	or a
	jr nz,l300d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l300d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l3023
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l3023
	ld a,(ix+#0d)
	or a
	jr z,l3031
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l304f
.l3031
	ld a,(ix+#1a)
	or a
	jp z,l3056
	ld c,a
	cp #03
	jr nz,l303e
	xor a
.l303e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l304f
	ld a,(ix+#18)
	dec c
	jr z,l304f
	ld a,(ix+#19)
.l304f
	add (ix+#07)
	ld b,d
	call l313f
.l3056
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l307e
	dec (ix+#1b)
	jr nz,l307e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l30b6
.l307e
	ld a,(ix+#29)
	or a
	jr z,l30b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l30ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l30a4
	ld (ix+#29),#ff
	jr l30ad
.l30a4
	cp (ix+#2b)
	jr nz,l30ad
	ld (ix+#29),#01
.l30ad
	ld b,d
	or a
	jp p,l30b3
	dec b
.l30b3
	ld c,a
	jr l30c1
.l30b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l30c1
	pop hl
	bit 7,(ix+#14)
	jr z,l30ca
	ld h,d
	ld l,d
.l30ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l32a5
	ld c,h
	ld a,(ix+#02)
	call l32a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l311d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l310c
	dec (ix+#09)
	jr nz,l310c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l3104
	xor a
	jr l3109
.l3104
	cp #10
	jr nz,l3109
	dec a
.l3109
	ld (ix+#1e),a
.l310c
	ld a,b
	sub (ix+#1e)
	jr nc,l3113
	xor a
.l3113
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l32a5
.l311d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l32cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l313b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l313b
	ld (l32cc),hl
	ret
.l313f
	ld hl,l32ee
	cp #61
	jr nc,l3149
	add a
	ld c,a
	add hl,bc
.l3149
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l3153
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l3278
	ld (ix+#1e),a
	jp l2fe0
.l3165
	dec b
.l3166
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l3171
	neg
.l3171
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
	jp l2fe0
.l3187
	dec b
	jr l318b
.l318a
	inc b
.l318b
	call l3278
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l2fe0
.l319a
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
	jp l325d
.l31ab
	ld a,(hl)
	inc hl
	or a
	jr z,l31cd
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
.l31cd
	ld (ix+#29),a
	jp l2fe0
.l31d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l32cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l32ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l2fe0
.l31ed
	ld a,(hl)
	or a
	jr z,l31fe
	call l327a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l2fe0
.l31fe
	ld hl,#0101
	ld (l32ca),hl
	jp l2fe0
.l3207
	call l3278
	ld (ix+#1e),a
	jp l2fe0
.l3210
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l3289
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l3289
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l2fe0
.l3232
	ld a,(hl)
	inc hl
	ld (l32c9),a
	jp l2fe0
.l323a
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
	jp l2fe0
.l3259
	call l3278
	add a
.l325d
	ld b,#00
	ld c,a
	push hl
	ld hl,l34c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l2fe0
.l3278
	ld a,(hl)
	inc hl
.l327a
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
.l3289
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l3440
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l32a5
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
.l32c4
	ret
.l32cc equ $ + 7
.l32cb equ $ + 6
.l32ca equ $ + 5
.l32c9 equ $ + 4
.l32c7 equ $ + 2
.l32c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l32cf equ $ + 2
.l32ce equ $ + 1
	db #38,#00,#00
.l32d0
	dw l3153,l3166,l3165,l318a
	dw l3187,l319a,l31ab,l31d3
	dw l31ed,l31d3,l3207,l3210
	dw l3232,l323a,l3259
.l32ee
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
.l33b4 equ $ + 4
.l33b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l33be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l33cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l33de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l33e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l33ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l33fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l340c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l3410
	db #00,#00,#00,#00,#00,#00,#00,#00
.l341a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l342b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l343a equ $ + 2
	db #00,#00,#20,#36,#4d,#36,#7a,#36
.l3440
	db #e0,#34,#20,#35,#40,#35,#10,#10
	db #52,#ee,#02,#e1,#d1,#6c,#e0,#f0
	db #c1,#ed,#4a,#6e,#d2,#1d,#f3,#ff
	db #d0,#ce,#c2,#ed,#d1,#e6,#80,#00
	db #02,#d1,#d1,#ec,#b2,#de,#ff,#ff
	db #ca,#6e,#d2,#1d,#c5,#ed,#fe,#e0
	db #c2,#ed,#d1,#e6,#52,#ee,#30,#f3
	db #d1,#ec,#b2,#de,#d1,#ed,#f8,#80
	db #d2,#1d,#c5,#ed,#d0,#ce,#f0,#ff
	db #d1,#e6,#52,#ee,#02,#e1,#ff,#fe
	db #b2,#de,#c2,#de,#c2,#6e,#00,#30
	db #c2,#de,#c2,#ce,#c2,#de,#f0,#f0
	db #52,#ee,#02,#de,#c2,#de,#e0,#f0
	db #c2,#de,#c2,#6e,#d2,#1d,#f0,#f0
	db #c2,#ce,#c2,#de,#c2,#de,#80,#00
	db #60,#35,#a0,#35,#40,#35,#00,#00
.l34c0
	db #d2,#ed,#d2,#ed,#d2,#ed,#d2,#ed
	db #c2,#de,#c2,#de,#c2,#de,#c2,#de
	db #c2,#df,#5a,#de,#c0,#35,#c2,#de
	db #c2,#de,#e0,#35,#00,#36,#c2,#de
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0a,#0a,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
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
	db #0d,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#18,#24,#18,#0c,#18,#24,#0c
	db #0c,#18,#24,#18,#0c,#18,#24,#0c
	db #0c,#18,#24,#18,#0c,#18,#24,#0c
	db #0c,#18,#24,#18,#0c,#18,#24,#0c
	db #18,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#be,#39,#00,#be,#39,#00,#a7
	db #36,#00,#69,#37,#00,#08,#37,#00
	db #ca,#37,#00,#ca,#37,#00,#d7,#38
	db #00,#13,#38,#00,#75,#38,#00,#38
	db #39,#00,#38,#39,#00,#99,#39,#00
	db #99,#39,#80,#23,#36,#00,#c1,#39
	db #00,#c1,#39,#00,#c1,#39,#00,#c3
	db #3a,#00,#42,#3a,#00,#c1,#39,#00
	db #c1,#39,#00,#c1,#39,#00,#c1,#39
	db #00,#c1,#39,#00,#c1,#39,#00,#c1
	db #39,#00,#c1,#39,#00,#c1,#39,#80
	db #50,#36,#00,#44,#3b,#00,#44,#3b
	db #00,#44,#3b,#00,#4a,#3b,#00,#47
	db #3b,#00,#44,#3b,#00,#44,#3b,#00
	db #44,#3b,#00,#44,#3b,#00,#44,#3b
	db #00,#44,#3b,#00,#44,#3b,#00,#44
	db #3b,#00,#44,#3b,#80,#7d,#36,#3d
	db #0f,#2d,#40,#00,#02,#44,#00,#02
	db #40,#00,#02,#40,#00,#02,#44,#00
	db #02,#47,#00,#02,#44,#00,#02,#3b
	db #00,#02,#3f,#00,#02,#42,#00,#02
	db #3f,#00,#02,#3d,#00,#02,#40,#00
	db #02,#44,#00,#02,#40,#00,#02,#3d
	db #00,#02,#40,#00,#02,#44,#00,#02
	db #40,#00,#02,#40,#00,#02,#44,#00
	db #02,#47,#00,#02,#44,#00,#02,#3b
	db #00,#02,#3f,#00,#02,#42,#00,#02
	db #3f,#00,#02,#3d,#00,#02,#40,#00
	db #02,#44,#00,#02,#40,#00,#02,#ff
	db #50,#0f,#2a,#4c,#00,#02,#49,#00
	db #02,#4c,#00,#02,#53,#00,#02,#50
	db #00,#02,#4c,#00,#02,#53,#00,#02
	db #4e,#00,#02,#4b,#00,#02,#47,#00
	db #02,#4e,#00,#02,#50,#00,#02,#4c
	db #00,#02,#49,#00,#02,#50,#00,#02
	db #50,#00,#02,#4c,#00,#02,#49,#00
	db #02,#4c,#00,#02,#53,#00,#02,#50
	db #00,#02,#4c,#00,#02,#53,#00,#02
	db #4e,#00,#02,#4b,#00,#02,#47,#00
	db #02,#4e,#00,#02,#50,#00,#02,#4c
	db #00,#02,#49,#00,#02,#50,#00,#02
	db #ff,#44,#0f,#2e,#40,#00,#02,#3d
	db #00,#02,#40,#00,#02,#47,#00,#02
	db #44,#00,#02,#40,#00,#02,#47,#00
	db #02,#42,#00,#02,#3f,#00,#02,#3b
	db #00,#02,#42,#00,#02,#44,#00,#02
	db #40,#00,#02,#3d,#00,#02,#44,#00
	db #02,#44,#00,#02,#40,#00,#02,#3d
	db #00,#02,#40,#00,#02,#47,#00,#02
	db #44,#00,#02,#40,#00,#02,#47,#00
	db #02,#42,#00,#02,#3f,#00,#02,#3b
	db #00,#02,#42,#00,#02,#44,#00,#02
	db #40,#00,#02,#3d,#00,#02,#44,#00
	db #02,#ff,#55,#0f,#4a,#50,#00,#02
	db #4e,#00,#02,#4c,#00,#04,#4c,#00
	db #02,#55,#00,#02,#53,#00,#04,#50
	db #00,#02,#4e,#00,#02,#49,#00,#04
	db #4c,#00,#02,#50,#00,#02,#55,#00
	db #04,#50,#00,#02,#4e,#00,#02,#58
	db #00,#04,#4c,#00,#02,#55,#00,#02
	db #53,#00,#04,#50,#00,#02,#4e,#00
	db #02,#55,#00,#04,#4c,#00,#02,#50
	db #00,#02,#ff,#49,#0e,#0c,#02,#44
	db #00,#02,#40,#00,#02,#44,#00,#02
	db #40,#00,#02,#3b,#00,#02,#38,#00
	db #02,#3b,#00,#02,#47,#00,#02,#42
	db #00,#02,#3f,#00,#02,#42,#00,#02
	db #49,#00,#02,#44,#00,#02,#40,#00
	db #02,#44,#00,#02,#49,#00,#02,#44
	db #00,#02,#40,#00,#02,#44,#00,#02
	db #40,#00,#02,#3b,#00,#02,#38,#00
	db #02,#3b,#00,#02,#47,#00,#02,#42
	db #00,#02,#3f,#00,#02,#42,#00,#02
	db #49,#00,#02,#44,#00,#02,#40,#00
	db #02,#44,#00,#02,#ff,#55,#0e,#0c
	db #02,#50,#00,#02,#4c,#00,#02,#50
	db #00,#02,#4c,#00,#02,#47,#00,#02
	db #44,#00,#02,#47,#00,#02,#53,#00
	db #02,#4e,#00,#02,#4b,#00,#02,#4e
	db #00,#02,#55,#00,#02,#50,#00,#02
	db #4c,#00,#02,#50,#00,#02,#55,#00
	db #02,#50,#00,#02,#4c,#00,#02,#50
	db #00,#02,#4c,#00,#02,#47,#00,#02
	db #44,#00,#02,#47,#00,#02,#53,#00
	db #02,#4e,#00,#02,#4b,#00,#02,#4e
	db #00,#02,#55,#00,#02,#50,#00,#02
	db #4c,#00,#02,#50,#00,#02,#ff,#49
	db #0f,#2d,#44,#00,#02,#40,#00,#02
	db #3d,#00,#02,#40,#00,#02,#3b,#00
	db #02,#38,#00,#02,#34,#00,#02,#47
	db #00,#02,#42,#00,#02,#3f,#00,#02
	db #3b,#00,#02,#49,#00,#02,#44,#00
	db #02,#40,#00,#02,#3d,#00,#02,#49
	db #00,#02,#44,#00,#02,#40,#00,#02
	db #3d,#00,#02,#40,#00,#02,#3b,#00
	db #02,#38,#00,#02,#34,#00,#02,#47
	db #00,#02,#42,#00,#02,#3f,#00,#02
	db #3b,#00,#02,#49,#00,#02,#44,#00
	db #02,#40,#00,#02,#3d,#00,#02,#ff
	db #49,#ff,#2d,#49,#f0,#02,#4e,#f0
	db #02,#4c,#f0,#02,#4c,#f0,#02,#4c
	db #f0,#02,#53,#f0,#02,#51,#f0,#02
	db #53,#f0,#02,#53,#f0,#02,#58,#f0
	db #02,#57,#f0,#02,#49,#f0,#02,#49
	db #f0,#02,#4e,#f0,#02,#4c,#f0,#02
	db #3d,#f0,#02,#3d,#f0,#02,#42,#f0
	db #02,#40,#f0,#02,#40,#f0,#02,#40
	db #f0,#02,#47,#f0,#02,#45,#f0,#02
	db #47,#f0,#02,#47,#f0,#02,#4c,#f0
	db #02,#4b,#f0,#02,#3d,#f0,#02,#3d
	db #f0,#02,#42,#f0,#02,#40,#f0,#02
	db #ff,#3d,#ff,#6d,#40,#f0,#06,#3b
	db #f0,#06,#3b,#f0,#04,#3f,#f0,#04
	db #3d,#f0,#06,#49,#f0,#06,#4c,#f0
	db #06,#47,#f0,#06,#47,#f0,#04,#4b
	db #f0,#04,#49,#f0,#06,#ff,#fe,#40
	db #ff,#25,#08,#24,#02,#31,#08,#12
	db #02,#25,#08,#24,#02,#31,#08,#12
	db #02,#28,#08,#1e,#02,#34,#08,#0f
	db #02,#28,#08,#1e,#02,#34,#08,#0f
	db #02,#23,#08,#28,#02,#2f,#08,#14
	db #02,#23,#08,#28,#02,#2f,#08,#14
	db #02,#25,#08,#24,#02,#31,#08,#12
	db #02,#25,#08,#24,#02,#31,#08,#12
	db #02,#25,#08,#24,#02,#31,#08,#12
	db #02,#25,#08,#24,#02,#31,#08,#12
	db #02,#28,#08,#1e,#02,#34,#08,#0f
	db #02,#28,#08,#1e,#02,#34,#08,#0f
	db #02,#23,#08,#28,#02,#2f,#08,#14
	db #02,#23,#08,#28,#02,#2f,#08,#14
	db #02,#25,#08,#24,#02,#31,#08,#12
	db #02,#25,#08,#24,#02,#31,#08,#12
	db #02,#ff,#25,#08,#24,#02,#31,#08
	db #12,#02,#25,#08,#24,#02,#31,#08
	db #12,#02,#28,#08,#1e,#02,#34,#08
	db #0f,#02,#28,#08,#1e,#02,#34,#08
	db #0f,#02,#23,#08,#28,#02,#2f,#08
	db #14,#02,#23,#08,#28,#02,#2f,#08
	db #14,#02,#25,#08,#24,#02,#31,#08
	db #12,#02,#25,#08,#24,#02,#31,#08
	db #12,#02,#25,#08,#24,#02,#31,#08
	db #12,#02,#25,#08,#24,#02,#31,#08
	db #12,#02,#28,#08,#1e,#02,#34,#08
	db #0f,#02,#28,#08,#1e,#02,#34,#08
	db #0f,#02,#23,#08,#28,#02,#2f,#08
	db #14,#02,#23,#08,#28,#02,#2f,#08
	db #14,#02,#25,#08,#24,#02,#31,#08
	db #12,#02,#25,#08,#24,#02,#31,#08
	db #12,#02,#ff,#25,#08,#24,#02,#31
	db #08,#12,#02,#25,#08,#24,#02,#31
	db #08,#12,#02,#28,#08,#1e,#02,#34
	db #08,#0f,#02,#28,#08,#1e,#02,#34
	db #08,#0f,#02,#23,#08,#28,#02,#2f
	db #08,#14,#02,#23,#08,#28,#02,#2f
	db #08,#14,#02,#25,#08,#24,#02,#31
	db #08,#12,#02,#25,#08,#24,#02,#31
	db #08,#12,#02,#25,#08,#24,#02,#31
	db #08,#12,#02,#25,#08,#24,#02,#31
	db #08,#12,#02,#28,#08,#1e,#02,#34
	db #08,#0f,#02,#28,#08,#1e,#02,#34
	db #08,#0f,#02,#23,#08,#28,#02,#2f
	db #08,#14,#02,#23,#08,#28,#02,#2f
	db #08,#14,#02,#25,#08,#24,#02,#31
	db #08,#12,#02,#25,#08,#24,#02,#31
	db #08,#12,#02,#ff,#00,#40,#ff,#00
	db #40,#ff,#00,#40,#ff
;
.music_info
	db "Total Eclipse - Sonics Night - Credits (1996)(Power System)(Epsilon)",0
	db "ST-128 Module",0

	read "music_end.asm"
