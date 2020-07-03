; Music of Dragon Spirit (1989)(Domark)(Dave Kelly)()
; Ripped by Megachur the 15/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DRAGONSP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #a200

	read "music_header.asm"

	jp la252        ; init music
	jp la286        ; play music
	jp la260        ; stop music
.la209
	dw la5fb,la5fc,la7b5,la7b6
	dw la96f,la970,lab29,lab2a
.la21d equ $ + 4
.la219
	db #00,#00,#00,#00,#00,#00,#00,#00
.la225 equ $ + 4
.la221
	db #00,#00,#00,#00,#00,#00,#00,#00
.la230 equ $ + 7
.la22e equ $ + 5
.la22c equ $ + 3
.la229
	db #09,#00,#00,#b3,#00,#bc,#03,#77
.la234 equ $ + 3
.la233 equ $ + 2
.la232 equ $ + 1
	db #00,#09,#38,#07,#07,#03,#00,#00
.la23e equ $ + 5
.la23b equ $ + 2
.la23d equ $ + 4
.la23a equ $ + 1
	db #00,#0a,#04,#04,#01,#04,#04,#01
.la248 equ $ + 7
.la242 equ $ + 1
.la241
	db #00,#00,#00,#00,#00,#00,#00,#03
	db #01,#04,#00,#1d,#00,#24,#02,#03
	db #06
;
.init_music
.la252
;
	ld a,#07
	ld (la4c2),a
	ld hl,la209
	call la4ee
	jp la286
;
.stop_music
.la260
;
	ld de,#073f
.la263
	di
	push bc
	ld b,#f4
	out (c),d
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	inc d
	ei
	ret
;
.play_music
.la286
;
	call la2a9
.la289
	xor a
	call la4c9
	ld a,#01
	call la4c9
	ld a,#02
	call la4c9
	call la48e
	call la4b1
	ld hl,la23a
	inc (hl)
	ld a,(hl)
	cp #10
	jr nz,la289
	ld (hl),#00
	ret
.la2a9
	ld hl,la233
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call la413
	ld hl,la23a
	ld (hl),b
	inc hl
	call la413
	ld hl,la241
	ld (hl),b
	inc hl
	call la413
	inc hl
	call la413
	ld hl,la225
	call la31a
	call la3b4
	ld hl,la219
	call la31a
	ld a,#01
	call la33e
	ld hl,la21d
	call la31a
	ld a,#02
	call la33e
	ld hl,la221
	call la31a
	ld a,#03
	call la33e
	call la419
	ld hl,la22c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call la30b
	inc hl
	inc hl
	call la30b
	dec hl
	dec hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
.la30b
	ld a,(hl)
	cp e
	ret nz
	inc hl
	ld a,(hl)
	dec hl
	cp d
	ret nz
	inc de
	ld (hl),e
	inc hl
	ld (hl),d
	dec hl
	dec de
	ret
.la31a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
.la31e
	ld a,(de)
	cp #3f
	jr z,la335
	ld b,a
	ld (hl),d
	dec hl
	ld (hl),e
	add a
	add #f7
	ld l,a
	adc #a4
	sub l
	ld h,a
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.la335
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jp la31e
.la33e
	ld c,a
	ld a,b
	cp #36
	ld a,h
	jr nc,la37e
	or l
	ret z
	ld a,c
	push hl
	add a
	dec a
	add #2c
	ld l,a
	adc #a2
	sub l
	ld h,a
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,la23e
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,la229
	add hl,de
	ld a,(hl)
	ld hl,la234
	add hl,de
	ld (hl),a
	ld hl,la233
	ld a,c
	add #ff
	add a
	add a
	add a
	or #86
	ld (la37c),a
.la37c equ $ + 1
	res 0,(hl)
	ret
.la37e
	ld (la232),a
	ld a,l
	and #f0
	or a
	jr z,la3a5
	rrca
	rrca
	rrca
	rrca
.la38b
	ld hl,la23b
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,la233
	ld a,c
	add #02
	add a
	add a
	add a
	or #86
	ld (la3a3),a
.la3a3 equ $ + 1
	res 0,(hl)
	ret
.la3a5
	ld a,l
	and #0f
	ld hl,la234
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr la38b
.la3b4
	ld a,b
	and #03
	ld c,a
	bit 2,b
	jr nz,la3c1
	bit 3,b
	jr nz,la3ec
	ret
.la3c1
	bit 3,b
	jr nz,la402
	ld a,#f0
	and b
	rrca
	rrca
	rrca
	rrca
	ld b,a
	xor a
	cp c
	ld hl,la229
	jr z,la3e4
	ld d,a
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,a
.la3da
	ld a,#3d
	add c
	ld l,a
	adc #a2
	sub l
	ld h,a
	ld (hl),b
	ret
.la3e4
	call la413
	ld b,#00
	jp la410
.la3ec
	ld a,c
	ld (la248),a
	ld a,#f0
	and b
	rlca
	rlca
	rlca
	bit 4,b
	ld b,a
	jr z,la3fe
	xor #7f
	inc a
.la3fe
	ld (la241),a
	ret
.la402
	bit 4,b
	ret nz
	ld a,#e0
	and b
	rlca
	rlca
	rlca
	ld b,a
	xor a
	cp c
	jr nz,la3da
.la410
	ld hl,la23e
.la413
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.la419
	ld hl,la241
	xor a
	cp (hl)
	ret z
	ld b,(hl)
	ld a,(la248)
	or a
	jr z,la43d
	ld ix,la22c
	ld hl,la219
	dec a
	jr z,la458
	ld hl,la21d
	ld ix,la22e
	dec a
	jr z,la458
	jp la451
.la43d
	ld hl,la219
	ld ix,la22c
	call la458
	ld ix,la22e
	ld hl,la21d
	call la458
.la451
	ld ix,la230
	ld hl,la221
.la458
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	add b
	cp #35
	ret nc
	add a
	add #f7
	ld l,a
	adc #a4
	sub l
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ex de,hl
	xor a
	sbc hl,de
	ld a,l
	ld l,h
	ld h,a
	xor a
	push bc
	ld b,#04
.la47c
	or a
	rr h
	rr l
	rr a
	djnz la47c
	or h
	ld (ix+#16),a
	ld (ix+#17),l
	pop bc
	ret
.la48e
	ld hl,la22c
	ld de,la242
	ld b,#03
.la496
	ld a,(hl)
	push hl
	inc hl
	ld h,(hl)
	ld l,a
	ex de,hl
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	add hl,de
	jr nc,la4a5
	inc hl
.la4a5
	ld c,h
	ld a,l
	pop de
	inc de
	pop hl
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	djnz la496
	ret
.la4b1
	ld b,#0b
	ld hl,la22c
	ld d,#00
.la4b8
	ld e,(hl)
	inc hl
	call la263
	djnz la4b8
	ld b,#fd
.la4c2 equ $ + 1
.la4c1
	ld c,#04
.la4c3
	dec c
	jr nz,la4c3
	djnz la4c1
	ret
.la4c9
	ld hl,la234
	ld c,a
	ld e,a
	ld d,#00
	add hl,de
	ex de,hl
	ld l,#07
	add hl,de
	ld a,(hl)
	or a
	ret z
	push de
	ld hl,la58b
	dec a
	rla
	rla
	rla
	rla
	ld d,#00
	ld e,a
	add hl,de
	ld a,(la23a)
	ld e,a
	add hl,de
	ld a,(hl)
	pop hl
	ld (hl),a
	ret
.la4ee
	ld de,la219
	ld bc,#0010
	ldir
	ret
.la4f7
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
	dw #002f
	db #00,#00,#04,#08,#14,#08,#1f,#08
	db #09,#70,#1f,#70,#0a,#07,#11,#07
	db #1c,#07,#09,#40,#0b,#0d,#0c,#ef
	db #00,#50,#1c,#3c,#0b,#0d,#00,#00
	db #00,#10,#00,#00,#00,#00,#00,#00
.la58b equ $ + 2
	db #00,#00,#07,#09,#0a,#0b,#0c,#0c
	db #0d,#0d,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#06,#07,#08,#09,#0c,#0e
	db #0f,#0e,#0d,#0c,#09,#08,#07,#06
	db #04,#02,#0d,#0c,#0b,#0a,#0a,#09
	db #09,#08,#08,#07,#07,#06,#05,#04
	db #03,#02,#0b,#0f,#0f,#0f,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0c,#0a,#0a,#09,#08,#07,#06,#06
	db #06,#06,#06,#07,#08,#09,#0a,#0a
	db #0a,#0a,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0b
.la5fb
	db #35
.la5fc
	db #16,#15,#14,#13,#12,#11,#10,#0f
	db #0c,#18,#3e,#35,#0c,#18,#3e,#18
	db #0c,#18,#3e,#35,#0c,#18,#3e,#18
	db #0a,#16,#3e,#35,#0a,#16,#3e,#16
	db #0a,#16,#3e,#35,#0a,#16,#3e,#3e
	db #09,#15,#3e,#35,#09,#15,#3e,#15
	db #09,#15,#3e,#35,#09,#15,#3e,#15
	db #35,#35,#3e,#0c,#0e,#0e,#3e,#0c
	db #07,#07,#3e,#0e,#10,#10,#3e,#3e
	db #0c,#18,#3e,#35,#0c,#18,#3e,#18
	db #0c,#18,#3e,#35,#0c,#18,#3e,#3e
	db #0a,#16,#3e,#35,#0a,#16,#3e,#16
	db #0a,#16,#3e,#35,#0a,#16,#3e,#13
	db #09,#15,#3e,#35,#09,#15,#3e,#15
	db #09,#15,#3e,#35,#09,#15,#3e,#15
	db #05,#05,#3e,#0c,#0e,#0e,#3e,#0c
	db #07,#07,#35,#0e,#10,#10,#35,#0e
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #09,#09,#3e,#09,#09,#09,#3e,#3e
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #07,#07,#3e,#07,#07,#07,#3e,#07
	db #07,#07,#3e,#07,#07,#07,#3e,#3e
	db #05,#11,#3e,#11,#05,#11,#3e,#35
	db #07,#13,#3e,#13,#07,#13,#3e,#13
	db #08,#14,#3e,#14,#08,#14,#3e,#14
	db #0a,#16,#3e,#16,#0a,#16,#3e,#3e
	db #0c,#0c,#35,#35,#35,#0c,#0c,#0c
	db #0c,#0c,#35,#35,#35,#3e,#3e,#3e
	db #0c,#18,#3e,#35,#0c,#18,#3e,#18
	db #0c,#18,#3e,#35,#0c,#18,#3e,#18
	db #0a,#16,#3e,#35,#0a,#16,#3e,#16
	db #0a,#16,#3e,#35,#0a,#16,#3e,#16
	db #09,#15,#3e,#35,#09,#15,#3e,#15
	db #09,#15,#3e,#35,#09,#15,#3e,#15
	db #05,#05,#3e,#0c,#0e,#0e,#3e,#0c
	db #07,#07,#3e,#0e,#10,#10,#3e,#3e
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #09,#09,#3e,#09,#09,#09,#3e,#09
	db #07,#07,#3e,#07,#07,#07,#3e,#07
	db #07,#07,#3e,#07,#07,#07,#3e,#3e
	db #05,#11,#05,#11,#05,#11,#3e,#11
	db #07,#13,#3e,#13,#07,#13,#3e,#3e
	db #08,#14,#3e,#14,#08,#14,#3e,#3e
	db #0a,#16,#3e,#16,#0a,#16,#3e,#3e
	db #0c,#0c,#35,#35,#35,#0c,#0c,#0c
	db #0c,#0c,#35,#35,#35,#3e,#3e,#3e
	db #3f
.la7b5
	dec (hl)                ; data !!!
.la7b6
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #1f,#24,#28,#24,#28,#29,#28,#24
	db #1f,#24,#28,#24,#28,#29,#28,#24
	db #1f,#24,#28,#24,#28,#29,#28,#24
	db #1f,#24,#28,#24,#28,#29,#28,#24
	db #1d,#21,#24,#28,#2b,#28,#24,#21
	db #1d,#21,#24,#28,#2b,#28,#24,#21
	db #1d,#1d,#28,#28,#26,#26,#24,#24
	db #24,#23,#1f,#24,#23,#1f,#24,#23
	db #1f,#24,#28,#24,#28,#29,#28,#24
	db #1f,#24,#28,#24,#28,#29,#28,#24
	db #1f,#24,#28,#24,#28,#29,#28,#24
	db #1f,#24,#28,#24,#28,#29,#28,#24
	db #1d,#21,#24,#28,#2b,#28,#24,#21
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #21,#21,#3e,#23,#24,#24,#3e,#26
	db #24,#24,#3e,#23,#24,#24,#3e,#21
	db #25,#25,#3e,#25,#25,#25,#3e,#3e
	db #25,#25,#25,#25,#25,#25,#25,#35
	db #18,#18,#35,#35,#17,#17,#35,#35
	db #15,#15,#35,#35,#17,#17,#18,#18
	db #35,#35,#15,#15,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#15,#17,#18,#13,#11,#10,#0c
	db #15,#35,#10,#35,#35,#0e,#0c,#0b
	db #18,#18,#18,#18,#18,#18,#1f,#1f
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #18,#18,#35,#35,#35,#35,#35,#35
	db #1a,#1a,#35,#35,#35,#35,#35,#35
	db #1d,#1d,#35,#35,#35,#35,#1b,#35
	db #1b,#1b,#35,#35,#35,#35,#35,#35
	db #13,#13,#35,#35,#35,#35,#35,#35
	db #13,#13,#35,#35,#35,#38,#38,#38
	db #1f,#24,#28,#24,#28,#29,#28,#24
	db #1f,#24,#28,#24,#28,#29,#28,#24
	db #1f,#24,#28,#24,#28,#29,#28,#24
	db #1f,#24,#28,#24,#28,#29,#28,#24
	db #1d,#21,#24,#28,#2b,#28,#24,#21
	db #1d,#21,#24,#28,#2b,#28,#24,#21
	db #1a,#1a,#1a,#1f,#1f,#1f,#24,#24
	db #23,#23,#23,#21,#21,#21,#23,#23
	db #18,#18,#35,#35,#17,#17,#35,#35
	db #15,#15,#35,#35,#17,#17,#18,#18
	db #35,#35,#10,#10,#35,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#3e
	db #35,#10,#17,#18,#13,#11,#10,#0e
	db #15,#35,#10,#35,#35,#0e,#0c,#0b
	db #18,#18,#18,#18,#18,#18,#18,#18
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #18,#18,#3e,#35,#35,#35,#35,#35
	db #1a,#1a,#35,#35,#35,#35,#35,#35
	db #1d,#1d,#35,#35,#1b,#1b,#1b,#35
	db #1d,#1d,#35,#35,#35,#35,#35,#35
	db #13,#13,#35,#35,#35,#35,#35,#35
	db #13,#13,#35,#35,#35,#38,#38,#38
	db #3f
.la96f
	db #35
.la970
	db #12,#11,#10,#0f,#0e,#0d,#0c,#0b
	db #13,#13,#13,#13,#13,#13,#13,#13
	db #13,#13,#18,#18,#1a,#1a,#1c,#1c
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#1a
	db #1a,#1a,#1a,#1a,#1a,#1d,#1c,#1d
	db #18,#18,#18,#18,#18,#18,#18,#18
	db #18,#18,#18,#18,#15,#17,#18,#1a
	db #18,#18,#15,#15,#11,#11,#11,#11
	db #18,#18,#17,#17,#15,#15,#13,#13
	db #13,#13,#13,#13,#13,#13,#13,#13
	db #13,#13,#1f,#1f,#1d,#1d,#1c,#1c
	db #1a,#1a,#1a,#1a,#1a,#1a,#1a,#1a
	db #1a,#1c,#1d,#1f,#1c,#1d,#1f,#21
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#1c,#1a,#1c,#1d
	db #24,#24,#26,#26,#28,#28,#29,#29
	db #28,#28,#26,#26,#28,#28,#24,#24
	db #28,#28,#28,#28,#28,#28,#28,#28
	db #28,#28,#28,#28,#28,#28,#28,#35
	db #1c,#1c,#1c,#35,#1a,#1a,#1a,#35
	db #18,#18,#18,#35,#1a,#1a,#1c,#1c
	db #1c,#35,#10,#10,#15,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#28,#24,#21,#26,#23,#1f,#1c
	db #21,#35,#24,#21,#1c,#23,#1f,#18
	db #1f,#1f,#1f,#1f,#1f,#1f,#18,#18
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #1d,#1d,#1d,#35,#24,#24,#24,#35
	db #1f,#1f,#1f,#35,#24,#24,#24,#35
	db #20,#20,#20,#35,#1b,#1b,#20,#20
	db #22,#22,#22,#35,#35,#35,#35,#35
	db #1d,#1d,#35,#35,#35,#0c,#0c,#0c
	db #1c,#1c,#35,#35,#35,#3e,#3e,#3e
	db #35,#2c,#2b,#28,#26,#26,#18,#24
	db #24,#24,#35,#28,#21,#35,#24,#26
	db #22,#2d,#2b,#28,#2b,#2d,#2d,#2d
	db #30,#30,#30,#30,#30,#30,#24,#26
	db #26,#28,#28,#26,#26,#26,#2d,#2d
	db #2b,#2b,#28,#28,#24,#24,#24,#24
	db #1a,#1a,#1a,#18,#18,#18,#28,#28
	db #26,#26,#26,#24,#24,#24,#26,#26
	db #1c,#1c,#1c,#35,#1a,#1a,#1a,#35
	db #18,#18,#18,#35,#1a,#1a,#1c,#1c
	db #1c,#35,#15,#15,#15,#35,#35,#35
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #35,#28,#24,#21,#26,#23,#1f,#1c
	db #21,#35,#24,#21,#1c,#23,#1f,#18
	db #1f,#1f,#1f,#1f,#1f,#1f,#1f,#1f
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #1d,#1d,#1d,#35,#24,#24,#24,#35
	db #1f,#1f,#1f,#35,#24,#24,#24,#35
	db #20,#20,#20,#35,#1b,#1b,#20,#20
	db #22,#22,#22,#35,#35,#35,#35,#35
	db #1d,#1d,#35,#35,#35,#0c,#0c,#0c
	db #1c,#1c,#35,#35,#35,#3e,#3e,#3e
	db #3f
.lab29
	db #00
.lab2a
	db #c4,#00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Dragon Spirit (1989)(Domark)(Dave Kelly)",0
	db "",0

	read "music_end.asm"
