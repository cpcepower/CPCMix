; Music of Power Drift (1989)(Activision)(Dave Lowe)()
; Ripped by Megachur the 04/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "POWERDRI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #003b

	read "music_header.asm"

	push hl
	push de
	push bc
	push af
	call l004b
	pop af
	pop bc
	pop de
	pop hl
	ret
.l004a equ $ + 3
.l0049 equ $ + 2
.l0048 equ $ + 1	; sound fx
.l0047
	db #01,#00,#01,#00
;
.play_music
.l004b
;
	ld a,(l004a)
	and a
	jr nz,l0091
	ld a,(l0048)
	and a
	jr z,l0091
	push af
	add a
	ld hl,l0743
	ld e,a
	ld d,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	pop af
	cp #01
	jr nz,l0081
	ld a,(l0744)
	bit 0,a
	jr nz,l0081
	ld hl,l055e
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l0744
	set 0,(hl)
	ld a,#00
	ld (l0048),a
	jr l0091
.l0081
	ld hl,l0577
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l0744
	set 1,(hl)
	ld a,#00
	ld (l0048),a
.l0091
	ld a,(l0744)
	bit 0,a
	jr z,l00a3
	ld a,#03
	ld (l0435),a
	ld ix,l04fd
	jr l00a7
.l00a3
	ld ix,l04eb
.l00a7
	ld hl,l0511
	ld (l04df),hl
	ld a,#08
	ld (l04e1),a
	ld a,#f6
	ld (l04e2),a
	ld a,(l0049)
	and a
	jr nz,l00c0
	call l0188
.l00c0
	ld a,(l0744)
	bit 0,a
	jr z,l00d9
	ld a,#00
	ld (l0435),a
	ld hl,l055c
	ld (l04df),hl
	ld ix,l04eb
	call l0188
.l00d9
	ld a,(l0744)
	bit 1,a
	jr z,l00eb
	ld a,#03
	ld (l0435),a
	ld ix,l04fd
	jr l00ef
.l00eb
	ld ix,l04ed
.l00ef
	ld hl,l052a
	ld (l04df),hl
	ld a,#07
	ld (l04e1),a
	ld a,#ed
	ld (l04e2),a
	ld a,(l0049)
	and a
	jr nz,l0108
	call l0188
.l0108
	ld a,(l0744)
	bit 1,a
	jr z,l0121
	ld a,#00
	ld (l0435),a
	ld hl,l0575
	ld (l04df),hl
	ld ix,l04ed
	call l0188
.l0121
	ld a,(l0049)
	and a
	jr nz,l013e
	ld hl,l0543
	ld (l04df),hl
	ld ix,l04ef
	ld a,#06
	ld (l04e1),a
	ld a,#db
	ld (l04e2),a
	call l0188
.l013e
	ld a,#0a
	ld hl,l04f5
	ld c,(hl)
	call l082d
	ld a,#09
	dec hl
	ld c,(hl)
	call l082d
	ld a,#08
	dec hl
	ld c,(hl)
	call l082d
	ld a,#07
	dec hl
	ld c,(hl)
	call l082d
	ld a,#05
	dec hl
	dec hl
	ld c,(hl)
	call l082d
	ld a,#04
	dec hl
	ld c,(hl)
	call l082d
	ld a,#03
	dec hl
	ld c,(hl)
	call l082d
	ld a,#02
	dec hl
	ld c,(hl)
	call l082d
	ld a,#01
	dec hl
	ld c,(hl)
	call l082d
	ld a,#00
	dec hl
	ld c,(hl)
	call l082d
	ret
.l0188
	ld a,(hl)
	ld e,a
	inc hl
	or (hl)
	jr z,l019b
	dec a
	jr nc,l0192
	dec (hl)
.l0192
	dec hl
	ld (hl),a
	call l03ff
	call l0352
	ret
.l019b
	ld hl,(l04df)
	ld de,#0005
	add hl,de
	ld e,l
	ld d,h
	inc hl
	inc hl
	ldi
	ldi
	ld hl,(l04df)
	ld de,#0015
	add hl,de
	ld a,(hl)
	dec hl
	ld (hl),a
	ld hl,(l04df)
	inc hl
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
.l01bc
	ld a,(bc)
	cp #00
	jr z,l0201
	cp #fe
	jr z,l01f2
	inc hl
	sub (hl)
	ld e,a
	ld d,#00
	ld hl,l0591
	add hl,de
	ld a,(hl)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
.l01d7
	inc bc
	ld a,(bc)
	ld d,#00
	ld e,a
	ld hl,(l04dd)
	add hl,de
	ld e,(hl)
	inc hl
	ld a,(hl)
	ld hl,(l04df)
	ld (hl),e
	inc hl
	ld (hl),a
	inc hl
	inc bc
	ld (hl),c
	inc hl
	ld (hl),b
	call l03ff
	ret
.l01f2
	ld hl,(l04df)
	ld de,#0005
	add hl,de
	ld de,l073d
	ld (hl),e
	inc hl
	ld (hl),d
	jr l01d7
.l0201
	inc bc
	ld a,(bc)
	ld e,a
	ld d,#00
	ld hl,l020b
	add hl,de
	jp (hl)
.l020b
	db #00,#00,#00
	jp l0233
	jp l02a4
	jp l02c1
	jp l02e2
	jp l030b
	jp l0317
	jp l0323
	jp l0267
	jp l027c
	jp l0299
.l0233 equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0234
	ld hl,(l04df)
	ld de,#0009
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
	ld a,(de)
	and a
	jr z,l0256
	dec de
	ld a,(de)
	ld c,a
	inc de
	ld a,(de)
	ld b,a
	inc de
	ld (hl),d
	dec hl
	ld (hl),e
	ld hl,(l04df)
	inc hl
	inc hl
	inc hl
	jp l01bc
.l0256
	ld hl,(l04df)
	ld de,#0009
	add hl,de
	ld e,l
	ld d,h
	inc hl
	inc hl
	ldi
	ldi
	jr l0234
.l0267
	ld a,(l0744)
	ld hl,l04e2
	and (hl)
	ld (l0744),a
	ld a,(l04e1)
	ld (l0279),a
.l0279 equ $ + 2
	ld (ix+#00),#00
	ret
.l027c
	inc bc
	ld a,(bc)
	ld (ix+#00),a
	inc bc
	ld a,(bc)
	ld (ix+#01),a
	inc bc
	ld a,(bc)
	ld hl,(l04df)
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	ld (hl),a
	inc hl
	inc bc
	ld (hl),c
	inc hl
	ld (hl),b
	call l03ff
	ret
.l0299
	inc bc
	ld a,(bc)
	push af
	inc bc
	ld a,(bc)
	ld b,a
	pop af
	ld c,a
	jp l0302
.l02a4
	inc bc
	ld hl,(l04df)
	ld de,#0005
	add hl,de
	ld a,(bc)
	ld e,a
	ld (hl),a
	inc hl
	inc bc
	ld a,(bc)
	ld (hl),a
	inc hl
	ld (hl),e
	inc hl
	ld (hl),a
	inc bc
	ld hl,(l04df)
	inc hl
	inc hl
	inc hl
	jp l01bc
.l02c1
	inc bc
	ld hl,(l04df)
	ld de,#000d
	add hl,de
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	inc bc
	inc hl
	ld a,(bc)
	ld (hl),a
	jp l0301
.l02e2
	ld a,#99
	ld hl,(l04df)
	ld de,#0013
	add hl,de
	ld (hl),a
	inc hl
	inc bc
	ld a,#01
	ld (hl),a
	inc hl
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,#01
	ld (hl),a
	inc hl
	inc bc
	ld (hl),a
	inc hl
	inc bc
	ld a,#01
	ld (hl),a
.l0301
	inc bc
.l0302
	ld hl,(l04df)
	inc hl
	inc hl
	inc hl
	jp l01bc
.l030b
	ld hl,(l04df)
	ld de,#0013
	add hl,de
	ld (hl),#00
	jp l0301
.l0317
	ld hl,(l04df)
	ld de,#000d
	add hl,de
	ld (hl),#00
	jp l0301
.l0323
	push de
	ld e,c
	ld d,b
.l0326
	inc de
	ld a,(de)
	cp #ff
	jr z,l033d
	cp #fe
	jp z,l0344
	ld b,a
	inc de
	ld a,(de)
	ld c,a
	ld a,b
	push de
	call l082d
	pop de
	jr l0326
.l033d
	ld c,e
	ld b,d
	pop de
	inc bc
	jp l0301
.l0344
	ld c,e
	ld b,d
	pop de
	ld hl,(l04df)
	inc hl
	inc hl
	inc bc
	inc bc
	ld (hl),c
	inc hl
	ld (hl),b
	ret
.l0352
	ld hl,(l04df)
	ld de,#000d
	add hl,de
	ld a,(hl)
	and a
	jp z,l03b8
	inc hl
	cp #02
	jr z,l038d
	ld e,(hl)
	ld a,(ix+#00)
	sub e
	jr nc,l036d
	dec (ix+#01)
.l036d
	ld (ix+#00),a
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	ld e,a
	cp (ix+#01)
	jr c,l038b
	ld a,d
	cp (ix+#00)
	jr c,l038b
	ld (ix+#01),e
	dec hl
	ld (ix+#00),d
	dec hl
	dec hl
	ld (hl),#00
.l038b
	jr l03fe
.l038d
	ld e,(hl)
	ld a,(ix+#00)
	ld d,a
	add e
	jr nc,l0398
	inc (ix+#01)
.l0398
	ld (ix+#00),a
	inc hl
	ld d,(hl)
	inc hl
	ld a,(hl)
	ld e,a
	cp (ix+#01)
	jr nc,l03b6
	ld a,d
	cp (ix+#00)
	jr nc,l03b6
	ld (ix+#01),e
	dec hl
	ld (ix+#00),d
	dec hl
	dec hl
	ld (hl),#00
.l03b6
	jr l03fe
.l03b8
	ld hl,(l04df)
	ld de,#0013
	add hl,de
	ld a,(hl)
	and a
	jr z,l03fe
	ld e,a
	ld b,h
	ld c,l
	inc hl
	ld a,#00
	cp (hl)
	jr z,l03d0
	dec (hl)
	jp l03fe
.l03d0
	inc hl
	inc hl
	ld a,(hl)
	dec a
	ld (hl),a
	jr nz,l03fe
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	rlc e
	jr c,l03ef
	inc hl
	ld a,(ix+#00)
	add (hl)
	ld (ix+#00),a
	jr nc,l03fc
	inc (ix+#01)
	jp l03fc
.l03ef
	inc hl
	ld a,(ix+#00)
	sub (hl)
	ld (ix+#00),a
	jr nc,l03fc
	dec (ix+#01)
.l03fc
	ld a,e
	ld (bc),a
.l03fe
	ret
.l03ff
	ld hl,(l04df)
	ld de,#0005
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l04e1)
	ld (l0417),a
	ld a,(de)
	cp #ff
	jr nz,l0415
	ret
.l0417 equ $ + 2
.l0415
	ld (ix+#00),a
	inc de
	ld a,(l04f2)
	ld b,a
	ld a,(l04e2)
	push af
	and b
	ld b,a
	ld a,(de)
	ld c,a
	pop af
	rr a
	jr nc,l0432
	rlc c
	rr a
	jr nc,l0432
	rlc c
.l0432
	ld a,c
	or b
.l0435 equ $ + 1
	jr l0436
.l0436
	ld (l04f2),a
	inc de
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l043e
	ld a,#0d
	ld c,#00
.l0442
	push af
	call l082d
	pop af
	dec a
	and a
	jr z,l044d
	jr l0442
.l044d
	ld a,#07
	ld c,#3f
	call l082d
	call l045e
	ld b,#7d
	ld hl,l0511
	jr l0463
.l045e
	ld b,#0d
	ld hl,l04eb
.l0463
	ld (hl),#00
	inc hl
	djnz l0463
	ret
;
.l0469
.real_init_music
;
	call l043e
	ld hl,l0047
	ld a,(hl)
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld hl,l04cd
	add hl,de
	ld a,(hl)
	ld (l051c),a
	inc hl
	ld a,(hl)
	ld (l051d),a
	inc hl
	ld a,(hl)
	ld (l0535),a
	inc hl
	ld a,(hl)
	ld (l0536),a
	inc hl
	ld a,(hl)
	ld (l054e),a
	inc hl
	ld a,(hl)
	ld (l054f),a
	inc hl
	ld a,(hl)
	ld (l04dd),a
	inc hl
	ld a,(hl)
	ld (l04de),a
	ld de,l04e6
	ld hl,l051a
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l0533
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l054c
	ld (hl),e
	inc hl
	ld (hl),d
	ld de,l04e4
	ld hl,l0513
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l052c
	ld (hl),e
	inc hl
	ld (hl),d
	ld hl,l0545
	ld (hl),e
	inc hl
	ld (hl),d
	ret
	ret
.l04cd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #49,#08,#d9,#08,#87,#09,#51,#06
.l04e4 equ $ + 7
.l04e2 equ $ + 5
.l04e1 equ $ + 4
.l04df equ $ + 2
.l04de equ $ + 1
.l04dd
	db #00,#00,#00,#00,#00,#00,#00,#00
.l04eb equ $ + 6
.l04e6 equ $ + 1
	db #03,#00,#00,#00,#00,#00,#00,#00
.l04f2 equ $ + 5
.l04ef equ $ + 2
.l04ed
	db #00,#00,#00,#00,#00,#00,#00,#00
.l04f5
	db #00,#00,#00,#00,#00,#08,#09,#0a
.l04fd
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0513 equ $ + 6
.l0511 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l051c equ $ + 7
.l051a equ $ + 5
	db #04,#00,#00,#00,#00,#00,#00,#00
.l051d
	db #00,#00,#00,#00,#00,#00,#00,#00
.l052c equ $ + 7
.l052a equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0533 equ $ + 6
	db #00,#04,#00,#00,#00,#00,#00,#00
.l0536 equ $ + 1
.l0535
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0543 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l054c equ $ + 7
.l0545
	db #00,#00,#04,#00,#00,#00,#00,#00
.l054f equ $ + 2
.l054e equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l055c equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l055e equ $ + 1
	db #00,#00,#00,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0577 equ $ + 2
.l0575
	db #00,#00,#00,#00,#04,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l0591
	dw #0010,#0011,#0012,#0013
	dw #0014,#0015,#0016,#0018
	dw #0019,#001b,#00d0,#001e
	dw #0020,#0022,#0024,#0026
	dw #0028,#002a,#002d,#002f
	dw #0032,#0035,#0038,#003c
	dw #003f,#0043,#0047,#004b
	dw #0050,#0054,#0059,#005f
	dw #0064,#006a,#0071,#0077
	dw #007f,#0086,#008e,#0096
	dw #009f,#00a9,#00b3,#00be
	dw #00c9,#00d5,#00e1,#00ef
	dw #00fd,#010c,#0120,#012d
	dw #013f,#0152,#0166,#017b
	dw #0192,#01aa,#01c3,#01de
	dw #01fa,#0218,#0238,#025a
	dw #027e,#02a4,#02cc,#02f6
	dw #0324,#0353,#0386,#03bc
	dw #03f4,#0431,#0470,#04b4
	dw #04fc,#0547,#0598,#05ed
	dw #0647,#06a7,#070c,#0777
	dw #07e9,#0861,#08e1,#0968
	dw #09f7,#0a8f,#0b2f,#0bda
	dw #0c8e,#0d4d,#0e18,#0eee
	dw #0000
	db #03,#00,#07,#00,#0b,#00,#0f,#00
	db #13,#00,#17,#00,#1b,#00,#1f,#00
	db #23,#00,#27,#00,#2b,#00,#2f,#00
	db #33,#00,#37,#00,#3b,#00,#3f,#00
	db #43,#00,#47,#00,#4b,#00,#4f,#00
	db #53,#00,#57,#00,#5b,#00,#5f,#00
	db #63,#00,#67,#00,#6b,#00,#6f,#00
	db #73,#00,#77,#00,#7b,#00,#7f,#00
	db #83,#00,#87,#00,#8b,#00,#8f,#00
	db #93,#00,#97,#00,#9b,#00,#9f,#00
	db #a3,#00,#93,#00,#ab,#00,#af,#00
	db #b3,#00,#b7,#00,#bb,#00,#bf,#00
	db #c3,#00,#c7,#00,#cb,#00,#cf,#00
	db #d3,#00,#d7,#00,#db,#00,#df,#00
	db #e3,#00,#e7,#00,#eb,#00,#ef,#00
	db #f3,#00,#f7,#00,#fb,#00,#ff,#00
	db #03,#01,#07,#01,#f7,#00,#0f,#01
	db #13,#01,#17,#01,#1b,#01,#1f,#01
	db #23,#01,#27,#01,#2b,#01,#2f,#01
	db #33,#01,#37,#01,#3b,#01,#3f,#01
	db #43,#01,#47,#01,#4b,#01,#4f,#01
	db #53,#01,#57,#01,#5b,#01,#5f,#01
	db #63,#01,#67,#01,#6b,#01,#5b,#01
	db #73,#01,#77,#01,#7b,#01,#7f,#01
	db #83,#01,#87,#01,#8b,#01,#8f,#01
	db #93,#01,#97,#01,#9b,#01,#9f,#01
	db #a3,#01,#a7,#01,#ab,#01,#02,#00
	db #01,#00,#04,#00,#05,#00,#0a,#00
	db #09,#00,#04,#00,#0a,#00,#14,#00
.l073d equ $ + 2
	db #01,#00,#00,#00,#ff,#10,#01,#ff
.l0744 equ $ + 1
.l0743
	db #00,#00,#4f,#07,#68,#07,#b2,#07
	db #25,#08,#06,#08,#00,#06,#65,#07
	db #00,#15,#06,#14,#ff,#00,#00,#1b
	db #84,#03,#02,#00,#00,#1e,#59,#07
	db #00,#18,#0b,#00,#ff,#00,#06,#40
	db #07,#00,#15,#06,#1e,#ff,#00,#80
	db #04,#00,#15,#0b,#ff,#0c,#50,#0d
	db #00,#06,#0f,#ff,#00,#80,#02,#00
	db #15,#0b,#ff,#0c,#08,#0d,#00,#fe
	db #00,#00,#15,#06,#14,#ff,#00,#80
	db #02,#00,#15,#06,#08,#ff,#00,#80
	db #02,#00,#15,#0b,#32,#0c,#1e,#0d
	db #00,#06,#1e,#ff,#00,#80,#20,#00
	db #15,#06,#14,#ff,#00,#00,#18,#00
	db #06,#cf,#07,#00,#0c,#00,#00,#04
	db #04,#01,#00,#09,#01,#3c,#6a,#00
	db #00,#00,#78,#30,#42,#02,#00,#1e
	db #c7,#07,#00,#18,#0d,#00,#0d,#00
	db #0d,#00,#0d,#00,#0d,#00,#0d,#00
	db #0d,#00,#0d,#00,#0d,#00,#0d,#00
	db #0d,#00,#0d,#00,#0d,#00,#0d,#00
	db #0d,#00,#0d,#00,#0c,#00,#0c,#00
	db #0c,#08,#0c,#00,#0c,#00,#0c,#00
	db #0c,#00,#0c,#00,#0c,#00,#0c,#00
	db #0c,#00,#ff,#00,#06,#14,#08,#60
	db #02,#60,#02,#60,#02,#60,#02,#00
	db #18,#0f,#08,#0f,#08,#0f,#08,#0c
	db #08,#08,#08,#07,#08,#03,#08,#00
	db #08,#ff,#00,#06,#3d,#07,#a8,#02
.l082d equ $ + 2
	db #00,#18,#57,#59
	push af
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	xor a
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	pop af
	ret
	db #53,#0c,#eb,#0b,#dd,#0b,#dd,#0b
	db #81,#0b,#ad,#0c,#ad,#0c,#17,#0c
	db #dd,#0b,#dd,#0b,#2d,#0b,#ad,#0c
	db #ad,#0c,#f3,#0c,#eb,#0b,#dd,#0b
	db #dd,#0b,#81,#0b,#ad,#0c,#ad,#0c
	db #17,#0c,#dd,#0b,#dd,#0b,#2d,#0b
	db #ad,#0c,#ad,#0c,#f3,#0c,#eb,#0b
	db #dd,#0b,#dd,#0b,#81,#0b,#dd,#0b
	db #dd,#0b,#17,#0c,#dd,#0b,#dd,#0b
	db #2d,#0b,#dd,#0b,#dd,#0b,#dd,#0b
	db #dd,#0b,#53,#0c,#eb,#0b,#dd,#0b
	db #dd,#0b,#81,#0b,#ad,#0c,#ad,#0c
	db #17,#0c,#dd,#0b,#dd,#0b,#2d,#0b
	db #ad,#0c,#ad,#0c,#f3,#0c,#eb,#0b
	db #dd,#0b,#dd,#0b,#81,#0b,#dd,#0b
	db #dd,#0b,#17,#0c,#dd,#0b,#dd,#0b
	db #2d,#0b,#dd,#0b,#dd,#0b,#dd,#0b
	db #dd,#0b,#b1,#09,#b3,#09,#00,#00
	db #b1,#09,#b7,#09,#d1,#09,#d1,#09
	db #07,#0a,#b7,#09,#e3,#09,#f5,#09
	db #07,#0a,#b7,#09,#d1,#09,#d1,#09
	db #07,#0a,#17,#0a,#43,#0a,#c3,#09
	db #55,#0a,#b7,#09,#d1,#09,#d1,#09
	db #07,#0a,#b7,#09,#e3,#09,#f5,#09
	db #07,#0a,#b7,#09,#d1,#09,#d1,#09
	db #07,#0a,#b7,#09,#d1,#09,#6d,#0a
	db #7d,#0a,#8d,#0a,#a5,#0a,#bd,#0a
	db #d5,#0a,#8d,#0a,#a5,#0a,#17,#0a
	db #ed,#0a,#8d,#0a,#a5,#0a,#bd,#0a
	db #d5,#0a,#8d,#0a,#a5,#0a,#17,#0a
	db #31,#0a,#03,#0b,#13,#0b,#b7,#09
	db #d1,#09,#d1,#09,#07,#0a,#b7,#09
	db #d1,#09,#d1,#09,#07,#0a,#b7,#09
	db #d1,#09,#d1,#09,#07,#0a,#b7,#09
	db #d1,#09,#6d,#0a,#7d,#0a,#8d,#0a
	db #a5,#0a,#bd,#0a,#d5,#0a,#8d,#0a
	db #a5,#0a,#17,#0a,#ed,#0a,#8d,#0a
	db #a5,#0a,#bd,#0a,#d5,#0a,#8d,#0a
	db #a5,#0a,#17,#0a,#31,#0a,#03,#0b
	db #13,#0b,#b3,#09,#00,#00,#b1,#09
	db #59,#0d,#5a,#0e,#7c,#0e,#5a,#0e
	db #7c,#0e,#5a,#0e,#7c,#0d,#5a,#0e
	db #9e,#0d,#e2,#0d,#9e,#0d,#ec,#0d
	db #f4,#0d,#9e,#0d,#e2,#0d,#9e,#0d
	db #ec,#0d,#f4,#0d,#b3,#09,#00,#00
	db #fe,#14,#fe,#08,#00,#03,#00,#06
	db #27,#0f,#86,#08,#00,#06,#eb,#0e
	db #86,#04,#86,#04,#86,#04,#86,#04
	db #86,#04,#86,#04,#86,#04,#00,#03
	db #86,#04,#86,#04,#86,#04,#8a,#04
	db #86,#04,#86,#04,#78,#04,#78,#04
	db #00,#03,#86,#04,#86,#04,#8a,#04
	db #86,#04,#8a,#04,#86,#04,#86,#04
	db #86,#04,#00,#03,#fe,#04,#86,#04
	db #fe,#04,#86,#04,#7c,#04,#80,#04
	db #82,#04,#86,#04,#00,#03,#00,#06
	db #27,#0f,#fe,#04,#8e,#08,#7c,#04
	db #78,#08,#80,#04,#00,#03,#00,#06
	db #27,#0f,#7c,#08,#00,#06,#eb,#0e
	db #7c,#04,#7c,#04,#7c,#04,#7c,#04
	db #7c,#04,#7c,#04,#7c,#04,#00,#03
	db #7c,#04,#7c,#04,#7c,#04,#80,#04
	db #7c,#04,#7c,#04,#86,#04,#86,#04
	db #00,#03,#80,#04,#80,#04,#80,#04
	db #82,#04,#82,#04,#82,#04,#82,#04
	db #86,#04,#00,#03,#86,#02,#86,#02
	db #80,#02,#7c,#02,#86,#04,#86,#04
	db #86,#08,#86,#04,#fe,#02,#86,#02
	db #fe,#04,#00,#03,#80,#04,#7c,#04
	db #78,#04,#82,#08,#80,#04,#7c,#04
	db #86,#04,#00,#03,#fe,#04,#86,#04
	db #86,#04,#86,#04,#86,#04,#80,#04
	db #7c,#04,#00,#03,#00,#06,#27,#0f
	db #8e,#08,#00,#06,#eb,#0e,#8e,#04
	db #8e,#04,#80,#04,#7c,#04,#8e,#04
	db #fe,#04,#00,#03,#00,#06,#27,#0f
	db #78,#08,#00,#06,#eb,#0e,#86,#04
	db #82,#04,#7c,#04,#78,#04,#78,#04
	db #fe,#04,#00,#03,#00,#06,#27,#0f
	db #7c,#08,#00,#06,#eb,#0e,#7c,#04
	db #78,#04,#78,#04,#8e,#04,#8a,#04
	db #fe,#04,#00,#03,#00,#06,#27,#0f
	db #80,#08,#00,#06,#eb,#0e,#80,#04
	db #80,#04,#8a,#04,#80,#04,#8a,#04
	db #90,#04,#00,#03,#7c,#04,#7c,#04
	db #7c,#04,#00,#06,#27,#0f,#82,#08
	db #00,#06,#eb,#0e,#86,#04,#8a,#04
	db #00,#03,#8a,#04,#8a,#04,#7c,#04
	db #7c,#04,#8a,#04,#8a,#04,#8a,#04
	db #00,#03,#8a,#08,#8a,#04,#8a,#04
	db #78,#08,#7c,#04,#80,#04,#00,#03
	db #fe,#04,#86,#04,#fe,#08,#80,#04
	db #7c,#08,#00,#03,#00,#06,#a9,#0e
	db #00,#09,#02,#c8,#4d,#0d,#00,#00
	db #6e,#08,#00,#06,#fa,#0e,#00,#09
	db #02,#45,#4d,#0d,#00,#00,#76,#08
	db #00,#06,#a9,#0e,#00,#09,#02,#c8
	db #4d,#0d,#00,#00,#6e,#04,#00,#06
	db #82,#0e,#00,#09,#02,#14,#4d,#0d
	db #01,#00,#7a,#04,#00,#06,#fa,#0e
	db #00,#09,#02,#45,#4d,#0d,#00,#00
	db #76,#04,#00,#06,#82,#0e,#00,#09
	db #02,#14,#4d,#0d,#01,#00,#7e,#04
	db #00,#06,#a9,#0e,#00,#09,#02,#c8
	db #4d,#0d,#00,#00,#6e,#04,#00,#06
	db #19,#0f,#38,#02,#38,#02,#00,#06
	db #fa,#0e,#00,#09,#02,#45,#4d,#0d
	db #00,#00,#76,#04,#00,#06,#19,#0f
	db #38,#04,#00,#06,#a9,#0e,#00,#09
	db #02,#c8,#4d,#0d,#00,#00,#6e,#02
	db #00,#06,#19,#0f,#38,#04,#38,#02
	db #00,#06,#fa,#0e,#00,#09,#02,#45
	db #4d,#0d,#00,#00,#76,#04,#00,#06
	db #a9,#0e,#00,#09,#02,#c8,#4d,#0d
	db #00,#00,#6e,#04,#00,#06,#a9,#0e
	db #00,#09,#02,#c8,#4d,#0d,#00,#00
	db #6e,#08,#00,#06,#fa,#0e,#00,#09
	db #02,#45,#4d,#0d,#00,#00,#76,#08
	db #00,#06,#a9,#0e,#00,#09,#02,#c8
	db #4d,#0d,#00,#00,#6e,#08,#00,#06
	db #fa,#0e,#00,#09,#02,#45,#4d,#0d
	db #00,#00,#76,#08,#00,#03,#00,#06
	db #a9,#0e,#00,#09,#02,#c8,#4d,#0d
	db #00,#00,#6e,#04,#00,#06,#fa,#0e
	db #00,#09,#02,#45,#4d,#0d,#00,#00
	db #76,#04,#00,#06,#19,#0f,#38,#04
	db #38,#02,#38,#02,#00,#06,#2c,#0f
	db #00,#09,#02,#45,#4d,#0d,#00,#00
	db #76,#04,#76,#04,#76,#04,#76,#04
	db #00,#03,#00,#06,#2c,#0f,#00,#09
	db #02,#45,#4d,#0d,#00,#00,#5e,#04
	db #00,#06,#a9,#0e,#00,#09,#02,#c8
	db #4d,#0d,#00,#00,#6e,#04,#00,#06
	db #2c,#0f,#00,#09,#02,#45,#4d,#0d
	db #00,#00,#76,#04,#00,#06,#a9,#0e
	db #00,#09,#02,#c8,#4d,#0d,#00,#00
	db #6e,#04,#6e,#04,#00,#06,#2c,#0f
	db #00,#09,#02,#45,#4d,#0d,#00,#00
	db #5e,#04,#5e,#04,#00,#06,#4d,#0f
	db #00,#09,#02,#45,#4d,#0d,#00,#00
	db #5e,#0c,#00,#03,#00,#06,#a9,#0e
	db #00,#09,#02,#c8,#4d,#0d,#00,#00
	db #6e,#08,#00,#06,#fa,#0e,#00,#09
	db #02,#45,#4d,#0d,#00,#00,#76,#04
	db #00,#06,#a9,#0e,#00,#09,#02,#c8
	db #4d,#0d,#00,#00,#6e,#04,#6e,#04
	db #6e,#04,#00,#06,#fa,#0e,#00,#09
	db #02,#45,#4d,#0d,#00,#00,#76,#04
	db #00,#06,#19,#0f,#38,#02,#38,#02
	db #00,#03,#00,#06,#a9,#0e,#00,#09
	db #02,#c8,#4d,#0d,#00,#00,#6e,#04
	db #00,#06,#fa,#0e,#00,#09,#02,#45
	db #4d,#0d,#00,#00,#76,#02,#00,#06
	db #19,#0f,#38,#04,#38,#02,#00,#06
	db #a9,#0e,#00,#09,#02,#c8,#4d,#0d
	db #00,#00,#6e,#04,#00,#06,#fa,#0e
	db #00,#09,#02,#45,#4d,#0d,#00,#00
	db #76,#04,#00,#06,#a9,#0e,#00,#09
	db #02,#c8,#4d,#0d,#00,#00,#6e,#04
	db #6e,#02,#00,#06,#19,#0f,#38,#02
	db #00,#06,#4d,#0f,#00,#09,#02,#45
	db #4d,#0d,#00,#00,#5e,#0c,#00,#03
	db #00,#06,#b8,#0e,#00,#0c,#01,#01
	db #01,#01,#08,#50,#14,#52,#10,#5a
	db #10,#64,#0c,#60,#30,#6a,#04,#68
	db #04,#64,#08,#68,#08,#6e,#0c,#fe
	db #10,#00,#03,#00,#06,#b8,#0e,#50
	db #14,#52,#10,#5a,#10,#64,#0c,#60
	db #38,#5e,#04,#5a,#04,#56,#24,#50
	db #08,#56,#04,#4c,#08,#56,#08,#48
	db #08,#56,#1c,#00,#03,#00,#06,#b8
	db #0e,#60,#08,#60,#04,#60,#04,#60
	db #04,#60,#04,#64,#04,#60,#04,#5a
	db #08,#64,#18,#64,#08,#64,#04,#64
	db #04,#64,#04,#64,#04,#68,#04,#64
	db #04,#60,#08,#5e,#04,#60,#04,#64
	db #08,#6e,#04,#68,#04,#60,#08,#60
	db #04,#60,#04,#60,#04,#60,#04,#64
	db #04,#60,#04,#5a,#08,#64,#1c,#00
	db #03,#52,#10,#50,#08,#52,#04,#56
	db #20,#00,#03,#50,#10,#52,#0c,#56
	db #10,#00,#03,#68,#04,#60,#04,#5a
	db #04,#60,#04,#56,#14,#fe,#04,#56
	db #08,#5a,#10,#60,#08,#68,#08,#64
	db #18,#68,#04,#64,#04,#60,#10,#68
	db #04,#60,#04,#5a,#04,#60,#04,#56
	db #14,#fe,#04,#52,#04,#50,#04,#5a
	db #10,#5e,#08,#60,#08,#64,#34,#56
	db #04,#52,#08,#50,#1c,#52,#04,#50
	db #08,#5a,#10,#50,#08,#52,#0c,#50
	db #04,#4c,#08,#50,#08,#4c,#08,#48
	db #10,#42,#08,#42,#08,#50,#10,#3e
	db #08,#42,#08,#50,#0c,#46,#08,#48
	db #04,#4c,#38,#50,#08,#52,#40,#00
	db #03,#00,#06,#1e,#0f,#26,#02,#3e
	db #02,#38,#02,#30,#02,#26,#02,#20
	db #02,#48,#02,#26,#02,#26,#02,#3e
	db #02,#38,#02,#38,#02,#26,#02,#38
	db #02,#00,#03,#18,#02,#26,#02,#00
	db #03,#0c,#08,#0c,#08,#0a,#08,#0a
	db #08,#0a,#08,#09,#08,#09,#08,#09
	db #08,#08,#08,#07,#08,#06,#08,#06
	db #08,#05,#08,#05,#08,#04,#08,#04
	db #08,#03,#08,#02,#08,#00,#08,#ff
	db #0b,#00,#0b,#08,#0a,#08,#08,#08
	db #05,#08,#02,#08,#00,#08,#ff,#07
	db #08,#08,#08,#0a,#08,#0b,#08,#0a
	db #08,#0a,#08,#09,#08,#09,#08,#09
	db #08,#09,#08,#09,#08,#09,#08,#04
	db #08,#04,#08,#09,#08,#09,#08,#07
	db #08,#07,#08,#06,#08,#06,#08,#05
	db #08,#05,#08,#05,#08,#05,#08,#04
	db #08,#ff,#0a,#01,#0d,#08,#0c,#08
	db #09,#08,#09,#08,#09,#08,#08,#08
	db #ff,#0a,#00,#09,#00,#09,#01,#09
	db #01,#08,#01,#07,#01,#07,#01,#06
	db #01,#05,#01,#04,#01,#03,#01,#03
	db #01,#03,#01,#02,#01,#01,#01,#ff
	db #08,#01,#00,#01,#ff,#07,#08,#07
	db #08,#05,#08,#00,#08,#ff,#0c,#08
	db #0b,#08,#ff,#0a,#01,#0a,#01,#0a
	db #01,#09,#01,#09,#01,#09,#01,#09
	db #01,#08,#01,#08,#01,#07,#01,#07
	db #01,#07,#01,#06,#01,#06,#01,#06
	db #01,#05,#01,#ff,#0a,#01,#0a,#01
	db #09,#01,#08,#01,#08,#01,#07,#01
	db #07,#01,#06,#01,#05,#01,#04,#01
	db #04,#01,#03,#01,#ff
;
; ld a,#01
; ld (#0049),a
; jp #0469
; ld (#0048),a
; xor a
; ld (#004a),a
; ret
; xor a
; ld (#0744),a
; jp #0469
;
.init_music		; added by Megachur
;
	ld (l0049),a
	jp real_init_music
;
.music_info
	db "Power Drift (1989)(Activision)(Dave Lowe)",0
	db "",0

	read "music_end.asm"
