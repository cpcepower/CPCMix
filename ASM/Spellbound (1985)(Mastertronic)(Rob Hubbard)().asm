; Music of Spellbound (1985)(Mastertronic)(Rob Hubbard)()
; Ripped by Megachur the 15/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SPELLBOU.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #a0ac

	read "music_header.asm"

;
.init_music
;
	ld iy,l0e28	; added by Megachur
	call la0d8
	call la0ef
	set 7,(iy+#00)
	ret
.la0b7
	push af
	push bc
	ld b,#f4
	out (c),a
	ld a,#c0
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	pop bc
	push bc
	ld b,#f4
	out (c),c
	ld a,#80
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	pop bc
	pop af
	ret
;
.stop_music
.la0d8
;
	ld b,#0e
.la0da
	ld a,b
	dec a
	ld c,#00
	call la0b7
	djnz la0da
	ld a,#07
	ld c,#b8
	call la0b7
	res 7,(iy+#00)
	ret
.la0ef
	ld hl,la2c1
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la244),de
	ld (la24a),hl
	ld hl,la2df
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la246),de
	ld (la24c),hl
	ld hl,la2df
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la248),de
	ld (la24e),hl
	call la15e
	call la1aa
	jp la1f7
;
.play_music
;
	ld iy,l0e28	; added by Megachur
.la122
	bit 7,(iy+#00)
	ret z
	ld a,(la250)
	dec a
	ld (la250),a
	push af
	call z,la15e
	pop af
	dec a
	ld c,#00
	call z,la1a4
	ld a,(la251)
	dec a
	ld (la251),a
	push af
	call z,la1aa
	pop af
	dec a
	ld c,#00
	call z,la1f1
	ld a,(la252)
	dec a
	ld (la252),a
	push af
	call z,la1f7
	pop af
	ld c,#00
	dec a
	ret nz
	jp la23e
.la15e
	ld hl,(la244)
.la161
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld a,b
	cp #ff
	jr nz,la181
	ld hl,(la24a)
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr nz,la177
	ld hl,la2c1
.la177
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la24a),hl
	ex de,hl
	jr la161
.la181
	ld (la244),hl
	ld a,c
	ld (la250),a
	ld a,b
	cp #01
	ld c,#00
	jp z,la1a4
	ld c,b
	ld b,#00
	ld hl,la235
	add hl,bc
	xor a
	ld c,(hl)
	inc hl
	call la0b7
	inc a
	ld c,(hl)
	call la0b7
	ld c,#0e
.la1a4
	ld a,#08
	call la0b7
	ret
.la1aa
	ld hl,(la246)
.la1ad
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld a,b
	cp #ff
	jr nz,la1cd
	ld hl,(la24c)
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr nz,la1c3
	ld hl,la2df
.la1c3
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la24c),hl
	ex de,hl
	jr la1ad
.la1cd
	ld (la246),hl
	ld a,c
	ld (la251),a
	ld a,b
	cp #01
	ld c,#00
	jp z,la1f1
	ld c,b
	ld b,#00
	ld hl,la24d
	add hl,bc
	ld a,#02
	ld c,(hl)
	inc hl
	call la0b7
	inc a
	ld c,(hl)
	call la0b7
	ld c,#0e
.la1f1
	ld a,#09
	call la0b7
	ret
.la1f7
	ld hl,(la248)
.la1fa
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld a,b
	cp #ff
	jr nz,la21a
	ld hl,(la24e)
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr nz,la210
	ld hl,la2df
.la210
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (la24e),hl
	ex de,hl
	jr la1fa
.la21a
	ld (la248),hl
	ld a,c
	ld (la252),a
	ld a,b
	cp #01
	ld c,#00
	jp z,la23e
	ld c,b
	ld b,#00
	ld hl,la235
	add hl,bc
	ld a,#04
	ld c,(hl)
	inc hl
.la235 equ $ + 1
	call la0b7
	inc a
	ld c,(hl)
	call la0b7
	ld c,#0b
.la23e
	ld a,#0a
	call la0b7
	ret
.la24a equ $ + 6
.la248 equ $ + 4
.la246 equ $ + 2
.la244
	dw #0000,#0000,#0000,#0000
.la24e equ $ + 2
.la24d equ $ + 1
.la24c
	dw #0000,#0000
.la252 equ $ + 2
.la251 equ $ + 1
.la250
	db #00,#00,#00
	dw #06a7,#0647,#05ed,#0598
	dw #0547,#04fc,#04b4,#0470
	dw #0431,#03f4,#03bc,#0386
	dw #0353,#0324,#02f6,#02cc
	dw #02a4,#027e,#025a,#0238
	dw #0218,#01fa,#01de,#01c3
	dw #01aa,#0192,#017b,#0166
	dw #0152,#013f,#012d,#011c
	dw #010c,#00fd,#00ef,#00e1
	dw #00d5,#00c9,#00be,#00b3
	dw #00a9,#009f,#0096,#008e
	dw #0086,#007f,#0077,#0071
	dw #006a,#0064,#005f,#0059
	dw #0054,#0050,#004b
.la2c1
	dw la365,la365,la416,la497
	dw la49b,la4f8,la53f,la4f8
	dw la552,la55e,la5cb,la61a
	dw la5cb,la416,#ffff
.la2df
	dw la667,la680,la667,la680
	dw la699,la6b2,la667,la667
	dw la667,la680,la667,la680
	dw la699,la6b2,la667,la667
	dw la635,la635,la680,la680
	dw la64e,la64e,la635,la667
	dw la6cb,la6cb,la6cb,la6e4
	dw la667,la667,la6cb,la6e4
	dw la667,la667,la6e4,la699
	dw la680,la667,la6e4,la699
	dw la680,la667,la667,la6e4
	dw la6cb,la667,la667,la6e4
	dw la6cb,la667,la680,la667
	dw la6b2,la699,la667,la6cb
	dw la6b2,la635,la635,la680
	dw la680,la64e,la64e,la635
	dw la667,#ffff
.la365 equ $ + 2
	db #00,#00,#60,#08,#62,#08,#60,#08
	db #5c,#08,#60,#10,#56,#08,#58,#08
	db #5c,#08,#60,#08,#5c,#08,#58,#08
	db #5c,#10,#52,#08,#56,#08,#58,#08
	db #5c,#08,#58,#08,#56,#08,#52,#08
	db #52,#10,#58,#10,#56,#06,#58,#04
	db #56,#06,#50,#10,#48,#20,#60,#08
	db #62,#08,#60,#08,#5c,#08,#60,#10
	db #56,#08,#58,#08,#5c,#08,#60,#08
	db #5c,#08,#58,#08,#5c,#10,#52,#08
	db #56,#08,#56,#08,#58,#08,#56,#08
	db #58,#08,#56,#10,#60,#10,#5c,#06
	db #60,#04,#5c,#06,#58,#10,#56,#10
	db #58,#10,#60,#08,#62,#08,#60,#08
	db #5c,#08,#60,#10,#6a,#10,#66,#06
	db #6a,#04,#66,#06,#62,#10,#60,#10
	db #5c,#10,#58,#08,#5c,#08,#58,#08
	db #56,#08,#52,#10,#58,#10,#56,#06
	db #58,#04,#56,#06,#52,#10,#56,#10
	db #52,#10,#52,#04,#56,#04,#52,#04
	db #4e,#04,#52,#60,#01,#10,#6a,#04
	db #6e,#04,#6a,#04,#66,#04,#6a,#60
.la416 equ $ + 3
	db #01,#10,#ff,#01,#10,#70,#10,#70
	db #08,#6e,#18,#66,#18,#64,#08,#64
	db #10,#60,#08,#64,#08,#01,#10,#70
	db #10,#70,#08,#6e,#18,#66,#18,#64
	db #08,#64,#10,#60,#08,#64,#08,#60
	db #04,#64,#04,#60,#04,#5c,#04,#60
	db #60,#01,#10,#6e,#04,#70,#04,#6e
	db #04,#6a,#04,#6e,#60,#01,#10,#01
	db #10,#66,#10,#66,#08,#64,#18,#5c
	db #18,#5a,#08,#5a,#10,#56,#08,#58
	db #08,#01,#10,#66,#10,#66,#08,#64
	db #18,#5c,#18,#5a,#08,#5a,#10,#56
	db #08,#58,#08,#56,#04,#5a,#04,#56
	db #04,#52,#04,#56,#30,#6e,#04,#72
	db #04,#6e,#04,#6a,#04,#6e,#30,#6a
	db #04,#6e,#04,#6a,#04,#66,#04,#6a
.la497 equ $ + 4
	db #60,#01,#10,#ff,#01,#80,#01,#80
.la49b
	db #74,#10,#78,#08,#74,#08,#6e,#10
	db #78,#10,#74,#06,#78,#04,#5c,#06
	db #70,#10,#6e,#06,#70,#04,#6e,#06
	db #6a,#10,#6a,#10,#6e,#08,#6a,#08
	db #66,#10,#6e,#10,#6a,#06,#6e,#04
	db #6a,#06,#66,#10,#62,#06,#66,#04
	db #62,#06,#60,#10,#5c,#10,#60,#08
	db #5c,#08,#5a,#10,#5c,#10,#5a,#10
	db #5c,#10,#58,#06,#5c,#04,#58,#06
	db #54,#10,#52,#10,#6c,#10,#6c,#08
	db #6a,#18,#62,#18,#60,#08,#60,#08
.la4f8 equ $ + 5
	db #5c,#08,#60,#08,#ff,#60,#10,#62
	db #08,#66,#08,#5c,#10,#6a,#10,#66
	db #06,#6a,#04,#66,#06,#62,#10,#60
	db #06,#62,#04,#60,#06,#5c,#10,#58
	db #10,#5c,#08,#58,#08,#56,#10,#60
	db #10,#5c,#06,#60,#04,#5c,#06,#58
	db #10,#56,#06,#58,#04,#56,#06,#52
	db #10,#50,#10,#7a,#10,#7a,#08,#78
	db #18,#70,#18,#6e,#08,#6e,#10,#6a
.la53f equ $ + 4
	db #08,#6e,#08,#ff,#52,#10,#6c,#10
	db #6c,#08,#6a,#18,#62,#18,#60,#08
.la552 equ $ + 7
	db #60,#10,#5c,#08,#60,#08,#ff,#6a
	db #04,#6e,#04,#6a,#04,#66,#04,#6a
.la55e equ $ + 3
	db #60,#01,#10,#60,#04,#64,#04,#60
	db #04,#5c,#04,#60,#10,#60,#10,#64
	db #08,#66,#08,#6a,#06,#6e,#04,#6a
	db #06,#66,#08,#64,#08,#60,#10,#5c
	db #08,#5a,#08,#5a,#04,#5c,#04,#5a
	db #04,#56,#04,#5a,#10,#5a,#10,#5c
	db #08,#60,#08,#64,#06,#66,#04,#64
	db #06,#60,#08,#5c,#08,#58,#10,#56
	db #08,#52,#08,#52,#04,#56,#04,#52
	db #04,#4e,#04,#52,#10,#52,#10,#56
	db #08,#5a,#08,#5c,#06,#60,#04,#5c
	db #06,#5a,#08,#56,#08,#52,#10,#4e
	db #08,#52,#08,#52,#04,#56,#04,#52
	db #04,#4e,#04,#52,#60,#01,#10,#ff
.la5cb
	db #48,#04,#4a,#04,#48,#04,#44,#04
	db #48,#10,#48,#10,#78,#08,#7a,#08
	db #78,#18,#70,#08,#70,#10,#6e,#08
	db #6a,#08,#52,#04,#56,#04,#52,#04
	db #4e,#04,#52,#10,#52,#10,#78,#08
	db #7a,#08,#78,#18,#70,#08,#70,#10
	db #6e,#08,#6a,#08,#58,#04,#5c,#04
	db #58,#04,#56,#04,#58,#10,#58,#10
	db #78,#08,#7a,#08,#78,#18,#70,#08
.la61a equ $ + 7
	db #70,#10,#6e,#08,#6a,#08,#ff,#4e
	db #04,#52,#04,#4e,#04,#4a,#04,#4e
	db #10,#4e,#10,#6e,#08,#70,#08,#6e
	db #18,#66,#08,#66,#10,#62,#08,#60
.la635 equ $ + 2
	db #08,#ff,#3e,#10,#3e,#08,#3e,#08
	db #3e,#10,#3e,#08,#3e,#08,#3e,#10
	db #3e,#08,#3e,#08,#3e,#10,#3e,#08
.la64e equ $ + 3
	db #3e,#08,#ff,#34,#10,#34,#08,#34
	db #08,#34,#10,#34,#08,#34,#08,#34
	db #10,#34,#08,#34,#08,#34,#10,#34
.la667 equ $ + 4
	db #08,#34,#08,#ff,#3a,#10,#3a,#08
	db #3a,#08,#3a,#10,#3a,#08,#3a,#08
	db #3a,#10,#3a,#08,#3a,#08,#3a,#10
.la680 equ $ + 5
	db #3a,#08,#3a,#08,#ff,#30,#10,#30
	db #08,#30,#08,#30,#10,#30,#08,#30
	db #08,#30,#10,#30,#08,#30,#08,#30
.la699 equ $ + 6
	db #10,#30,#08,#30,#08,#ff,#28,#10
	db #28,#08,#28,#08,#28,#10,#28,#08
	db #28,#08,#28,#10,#28,#08,#28,#08
.la6b2 equ $ + 7
	db #28,#10,#28,#08,#28,#08,#ff,#32
	db #10,#32,#08,#32,#08,#32,#10,#32
	db #08,#32,#08,#32,#10,#32,#08,#32
	db #08,#32,#10,#32,#08,#32,#08,#ff
.la6cb
	db #2c,#10,#2c,#08,#2c,#08,#2c,#10
	db #2c,#08,#2c,#08,#2c,#10,#2c,#08
	db #2c,#08,#2c,#10,#2c,#08,#2c,#08
.la6e4 equ $ + 1
	db #ff,#36,#10,#36,#08,#36,#08,#36
	db #10,#36,#08,#36,#08,#36,#10,#36
	db #08,#36,#08,#36,#10,#36,#08,#36
	db #08,#ff,#00,#00,#00,#00,#00,#00
	db #01,#21,#a9,#ff,#f2,#bf,#ff,#00
.l0e28
	db #00
;
.music_info
	db "Spellbound (1985)(Mastertronic)(Rob Hubbard)",0
	db "",0

	read "music_end.asm"
