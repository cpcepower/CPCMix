; Music of Roudoudou Basic 3 (2000)(Flower Corp)(Eliot)(ST-128 Module)
; Ripped by Megachur the 02/08/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ROUDOUB3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 02
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9120

	read "music_header.asm"

	jr l9124
	jr l9133
.l9124
	call l9157
	ld hl,l9144
	ld de,l913c
	ld bc,#81ff
	jp #bcd7
.l9133
	ld hl,l9144
	call #bcdd
	jp l91cf
.l913c
	push ix
	call l91eb
	pop ix
	ret
.l9144
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l9157
	jp l91eb
	jp l91cf
;
.init_music
.l9157
;
	xor a
	ld hl,l9702
	call l91c8
	ld hl,l9730
	call l91c8
	ld hl,l975e
	call l91c8
	ld ix,l96fe
	ld iy,l9788
	ld de,#002e
	ld b,#03
.l9177
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
	djnz l9177
	ld hl,l9617
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l9613),hl
	ld (l9615),hl
	ld a,#0c
	ld c,d
	call l95f3
	ld a,#0d
	ld c,d
	jp l95f3
.l91c8
	ld b,#2a
.l91ca
	ld (hl),a
	inc hl
	djnz l91ca
	ret
;
.stop_music
.l91cf
;
	ld a,#07
	ld c,#3f
	call l95f3
	ld a,#08
	ld c,#00
	call l95f3
	ld a,#09
	ld c,#00
	call l95f3
	ld a,#0a
	ld c,#00
	jp l95f3
;
.play_music
.l91eb
;
	ld hl,l9619
	dec (hl)
	ld ix,l96fe
	ld bc,l970c
	call l928d
	ld ix,l972c
	ld bc,l973a
	call l928d
	ld ix,l975a
	ld bc,l9768
	call l928d
	ld hl,l9612
	ld de,l9619
	ld b,#06
	call l926a
	ld b,#07
	call l926a
	ld b,#0b
	call l926a
	ld b,#0d
	call l926a
	ld de,l9619
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l971d
	call l9243
	ld hl,l974b
	call l9243
	ld hl,l9779
.l9243
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
	jr nz,l9258
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l9258
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
.l926a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l95f3
.l9275
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l95f3
.l928d
	ld a,(l9619)
	or a
	jp nz,l9345
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l9345
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l9275
	or a
	jp z,l933a
	ld r,a
	and #7f
	cp #10
	jr c,l9315
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l948d
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
	jr z,l92ee
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l92ee
	rrca
	ld c,a
	ld hl,l978e
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
	jr z,l930d
	ld (ix+#1e),b
.l930d
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l932e
.l9315
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l961e
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
.l932e
	ld a,d
	or a
	jr nz,l933c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l933c
.l933a
	ld a,(hl)
	inc hl
.l933c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l9345
	ld a,(ix+#17)
	or a
	jr nz,l935b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l935b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l9371
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l9371
	ld a,(ix+#0d)
	or a
	jr z,l937f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l939d
.l937f
	ld a,(ix+#1a)
	or a
	jp z,l93a4
	ld c,a
	cp #03
	jr nz,l938c
	xor a
.l938c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l939d
	ld a,(ix+#18)
	dec c
	jr z,l939d
	ld a,(ix+#19)
.l939d
	add (ix+#07)
	ld b,d
	call l948d
.l93a4
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l93cc
	dec (ix+#1b)
	jr nz,l93cc
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l9404
.l93cc
	ld a,(ix+#29)
	or a
	jr z,l9404
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l93fb
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l93f2
	ld (ix+#29),#ff
	jr l93fb
.l93f2
	cp (ix+#2b)
	jr nz,l93fb
	ld (ix+#29),#01
.l93fb
	ld b,d
	or a
	jp p,l9401
	dec b
.l9401
	ld c,a
	jr l940f
.l9404
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l940f
	pop hl
	bit 7,(ix+#14)
	jr z,l9418
	ld h,d
	ld l,d
.l9418
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l95f3
	ld c,h
	ld a,(ix+#02)
	call l95f3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l946b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l945a
	dec (ix+#09)
	jr nz,l945a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l9452
	xor a
	jr l9457
.l9452
	cp #10
	jr nz,l9457
	dec a
.l9457
	ld (ix+#1e),a
.l945a
	ld a,b
	sub (ix+#1e)
	jr nc,l9461
	xor a
.l9461
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l95f3
.l946b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l961a)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l9489
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l9489
	ld (l961a),hl
	ret
.l948d
	ld hl,l963c
	cp #61
	jr nc,l9497
	add a
	ld c,a
	add hl,bc
.l9497
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l94a1
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l95c6
	ld (ix+#1e),a
	jp l932e
.l94b3
	dec b
.l94b4
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l94bf
	neg
.l94bf
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
	jp l932e
.l94d5
	dec b
	jr l94d9
.l94d8
	inc b
.l94d9
	call l95c6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l932e
.l94e8
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
	jp l95ab
.l94f9
	ld a,(hl)
	inc hl
	or a
	jr z,l951b
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
.l951b
	ld (ix+#29),a
	jp l932e
.l9521
	dec hl
	ld a,(hl)
	and #0f
	ld (l961d),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l961c),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l932e
.l953b
	ld a,(hl)
	or a
	jr z,l954c
	call l95c8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l932e
.l954c
	ld hl,#0101
	ld (l9618),hl
	jp l932e
.l9555
	call l95c6
	ld (ix+#1e),a
	jp l932e
.l955e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l95d7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l95d7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l932e
.l9580
	ld a,(hl)
	inc hl
	ld (l9617),a
	jp l932e
.l9588
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
	jp l932e
.l95a7
	call l95c6
	add a
.l95ab
	ld b,#00
	ld c,a
	push hl
	ld hl,l980e
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l932e
.l95c6
	ld a,(hl)
	inc hl
.l95c8
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
.l95d7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l978e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l95f3
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
.l9612
	ret
.l961a equ $ + 7
.l9619 equ $ + 6
.l9618 equ $ + 5
.l9617 equ $ + 4
.l9615 equ $ + 2
.l9613
	db #00,#00,#00,#00,#00,#00,#00,#00
.l961d equ $ + 2
.l961c equ $ + 1
	db #38,#00,#00
.l961e
	dw l94a1,l94b4,l94b3,l94d8
	dw l94d5,l94e8,l94f9,l9521
	dw l953b,l9521,l9555,l955e
	dw l9580,l9588,l95a7
.l963c
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
.l9702 equ $ + 4
.l96fe
	db #08,#00,#01,#08,#00,#00,#00,#00
.l970c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l971d equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l972c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l9730 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l973a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l974b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l975a equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l975e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9768 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9779 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9788 equ $ + 2
	db #00,#00,#8e,#9a,#a6,#9a,#be,#9a
.l978e
	db #2b,#7b,#28,#53,#2a,#7b,#0a,#0a
	db #2a,#5b,#2a,#5b,#2a,#5b,#00,#00
	db #2b,#5b,#20,#71,#c8,#71,#20,#00
	db #60,#51,#80,#51,#a0,#51,#b0,#00
	db #60,#51,#20,#72,#c0,#72,#00,#01
	db #2e,#98,#6e,#98,#8e,#98,#54,#0c
	db #ae,#98,#ee,#98,#0e,#99,#00,#00
	db #f0,#73,#20,#51,#d0,#52,#b0,#00
	db #e0,#5c,#20,#51,#1b,#49,#00,#02
	db #60,#71,#20,#51,#20,#51,#00,#00
	db #2e,#99,#6e,#99,#8e,#99,#c0,#00
	db #2d,#7e,#2c,#5d,#2c,#7c,#0b,#0b
	db #ae,#99,#ee,#99,#8e,#98,#58,#08
	db #26,#77,#25,#56,#24,#55,#03,#03
	db #22,#52,#20,#51,#10,#4d,#00,#00
	db #0e,#9a,#4e,#9a,#8e,#98,#18,#08
.l980e
	db #20,#4c,#f7,#51,#6e,#9a,#20,#44
	db #17,#52,#1b,#49,#20,#4c,#17,#52
	db #1b,#49,#23,#4c,#20,#3c,#18,#52
	db #e8,#49,#20,#4c,#18,#52,#1b,#4a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#fe,#ff,#fe,#ff
	db #fe,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#03,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#00,#00
	db #0f,#0f,#0f,#0e,#0e,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0b,#0b,#0c,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0b,#0b,#0b
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
	db #0f,#0e,#0d,#0c,#0b,#0a,#89,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#06,#07,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #00,#00,#ff,#ff,#00,#00,#01,#00
	db #0e,#0e,#0e,#0f,#0f,#0e,#0e,#0d
	db #0d,#0e,#0e,#0f,#0f,#0e,#0e,#0d
	db #0d,#0e,#0e,#0f,#0f,#0e,#0e,#0d
	db #0d,#0e,#0e,#0f,#0f,#0e,#0e,#0e
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #01,#00,#01,#00,#00,#00,#00,#00
	db #ff,#ff,#ff,#ff,#00,#00,#00,#00
	db #0a,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #04,#04,#07,#07,#00,#00,#04,#04
	db #07,#07,#00,#00,#04,#04,#07,#07
	db #00,#00,#04,#04,#07,#07,#00,#00
	db #00,#97,#9b,#00,#97,#9b,#00,#97
	db #9b,#00,#97,#9b,#00,#97,#9b,#00
	db #97,#9b,#00,#d6,#9a,#80,#91,#9a
	db #00,#77,#9d,#00,#88,#9d,#00,#7a
	db #9d,#00,#1a,#9d,#00,#ba,#9c,#00
	db #1a,#9d,#00,#58,#9c,#80,#a9,#9a
	db #00,#e4,#9d,#00,#e4,#9d,#00,#85
	db #9e,#00,#ce,#9d,#00,#b8,#9d,#00
	db #ce,#9d,#00,#96,#9d,#80,#c1,#9a
	db #ab,#c8,#19,#af,#c8,#14,#ab,#c8
	db #19,#ab,#c8,#19,#b2,#c8,#22,#ab
	db #c8,#19,#ab,#c8,#19,#af,#c8,#14
	db #ab,#c8,#19,#ab,#c8,#19,#b0,#c8
	db #13,#ab,#c8,#19,#ab,#c8,#19,#af
	db #c8,#14,#ab,#c8,#19,#ab,#c8,#19
	db #ab,#c8,#19,#af,#c8,#14,#ab,#c8
	db #19,#ab,#c8,#19,#b2,#c8,#22,#ab
	db #c8,#19,#ab,#c8,#19,#af,#c8,#14
	db #ab,#c8,#19,#ab,#c8,#19,#b0,#c8
	db #13,#ab,#c8,#19,#ab,#c8,#19,#b2
	db #c8,#22,#ab,#c8,#19,#b7,#c8,#26
	db #a9,#c8,#1c,#af,#c8,#14,#a9,#c8
	db #1c,#a9,#c8,#1c,#b2,#c8,#22,#a9
	db #c8,#1c,#a9,#c8,#1c,#af,#c8,#14
	db #a9,#c8,#1c,#a9,#c8,#1c,#b0,#c8
	db #13,#a9,#c8,#1c,#a9,#c8,#1c,#b0
	db #c8,#13,#a9,#c8,#1c,#a9,#c8,#1c
	db #a9,#c8,#1c,#af,#c8,#14,#a9,#c8
	db #1c,#a9,#c8,#1c,#b2,#c8,#22,#a9
	db #c8,#1c,#a9,#c8,#1c,#b0,#c8,#13
	db #a9,#c8,#1c,#a9,#c8,#1c,#b5,#c8
	db #1c,#a9,#c8,#1c,#b0,#c8,#13,#a9
	db #c8,#1c,#af,#c8,#14,#b2,#c8,#22
	db #ff,#a8,#c8,#14,#af,#c8,#14,#a8
	db #c8,#14,#a8,#c8,#14,#b2,#c8,#22
	db #a8,#c8,#14,#a8,#c8,#14,#af,#c8
	db #14,#a8,#c8,#14,#a8,#c8,#14,#b0
	db #c8,#13,#a8,#c8,#14,#a8,#c8,#14
	db #af,#c8,#14,#a8,#c8,#14,#a8,#c8
	db #14,#a8,#c8,#14,#af,#c8,#14,#a8
	db #c8,#14,#a8,#c8,#14,#b2,#c8,#22
	db #a8,#c8,#14,#a8,#c8,#14,#af,#c8
	db #14,#a8,#c8,#14,#a8,#c8,#14,#b0
	db #c8,#13,#a8,#c8,#14,#a8,#c8,#14
	db #b2,#c8,#22,#a8,#c8,#14,#b4,#c8
	db #14,#a9,#c8,#1c,#af,#c8,#14,#a9
	db #c8,#1c,#a9,#c8,#1c,#b2,#c8,#22
	db #a9,#c8,#1c,#a9,#c8,#1c,#af,#c8
	db #14,#a9,#c8,#1c,#a9,#c8,#1c,#b0
	db #c8,#13,#a9,#c8,#1c,#a9,#c8,#1c
	db #b0,#c8,#13,#a9,#c8,#1c,#a9,#c8
	db #1c,#a9,#c8,#1c,#af,#c8,#14,#a9
	db #c8,#1c,#a9,#c8,#1c,#b2,#c8,#22
	db #a9,#c8,#1c,#a9,#c8,#1c,#b0,#c8
	db #13,#a9,#c8,#1c,#a9,#c8,#1c,#b5
	db #c8,#1c,#a9,#c8,#1c,#b0,#c8,#13
	db #a9,#c8,#1c,#af,#c8,#14,#b2,#c8
	db #22,#ff,#43,#50,#04,#40,#ab,#10
	db #40,#ab,#13,#43,#50,#04,#4f,#50
	db #02,#40,#ab,#10,#40,#ab,#13,#4c
	db #50,#02,#43,#50,#04,#40,#ab,#10
	db #40,#ab,#13,#43,#50,#06,#40,#ab
	db #10,#40,#ab,#13,#43,#50,#02,#41
	db #50,#04,#40,#ab,#10,#40,#ab,#13
	db #4d,#50,#06,#40,#ab,#10,#40,#ab
	db #13,#40,#50,#02,#41,#50,#04,#40
	db #ab,#10,#40,#ab,#13,#4d,#50,#03
	db #40,#ab,#10,#40,#ab,#13,#c1,#50
	db #40,#ab,#10,#40,#ab,#15,#cd,#50
	db #40,#ab,#10,#ff,#40,#50,#04,#40
	db #ab,#10,#40,#ab,#13,#4c,#50,#06
	db #40,#ab,#10,#40,#ab,#13,#41,#50
	db #02,#40,#50,#04,#40,#ab,#10,#40
	db #ab,#13,#40,#50,#04,#4c,#50,#02
	db #40,#ab,#10,#40,#ab,#13,#4d,#50
	db #02,#41,#50,#04,#40,#ab,#10,#40
	db #ab,#13,#4d,#50,#06,#40,#ab,#10
	db #40,#ab,#13,#40,#50,#02,#41,#50
	db #04,#40,#ab,#10,#40,#ab,#13,#4d
	db #50,#03,#40,#ab,#10,#40,#ab,#13
	db #c1,#50,#40,#ab,#10,#40,#ab,#13
	db #4d,#50,#02,#ff,#40,#50,#04,#40
	db #ab,#10,#40,#ab,#13,#4c,#50,#06
	db #40,#ab,#10,#40,#ab,#13,#41,#50
	db #02,#40,#50,#04,#40,#ab,#10,#40
	db #ab,#13,#4c,#50,#06,#40,#ab,#10
	db #40,#ab,#13,#4d,#50,#02,#41,#50
	db #04,#40,#ab,#10,#40,#ab,#13,#4d
	db #50,#06,#40,#ab,#10,#40,#ab,#13
	db #40,#50,#02,#41,#50,#04,#40,#ab
	db #10,#40,#ab,#13,#4d,#50,#03,#40
	db #ab,#10,#40,#ab,#13,#c1,#50,#40
	db #ab,#10,#40,#ab,#13,#4d,#50,#02
	db #ff,#fe,#40,#ff,#40,#50,#20,#41
	db #50,#1c,#4d,#50,#02,#c2,#a0,#c2
	db #a0,#ff,#40,#51,#00,#20,#41,#50
	db #1c,#4d,#50,#02,#41,#50,#02,#ff
	db #5b,#f0,#0c,#02,#21,#01,#02,#22
	db #01,#56,#f0,#07,#03,#21,#01,#5d
	db #f0,#04,#5b,#f0,#02,#60,#f0,#02
	db #5d,#f0,#0e,#60,#f0,#02,#59,#f0
	db #12,#ff,#58,#f0,#0f,#03,#22,#01
	db #5b,#f0,#08,#5f,#f0,#04,#60,#f0
	db #02,#5d,#f0,#10,#54,#f0,#12,#ff
	db #58,#f0,#0f,#02,#21,#01,#56,#f0
	db #0f,#02,#21,#01,#54,#f0,#1b,#02
	db #22,#01,#51,#f0,#04,#ff,#cc,#66
	db #20,#4c,#66,#25,#02,#cc,#66,#2a
	db #4c,#66,#25,#02,#cc,#66,#20,#4c
	db #66,#25,#02,#cc,#66,#20,#4c,#66
	db #25,#02,#cc,#66,#20,#cc,#66,#2a
	db #cc,#66,#27,#cc,#66,#25,#cc,#66
	db #20,#4c,#66,#25,#02,#cc,#66,#2a
	db #4c,#66,#25,#02,#cc,#66,#20,#4c
	db #66,#25,#02,#cc,#66,#20,#4c,#66
	db #25,#02,#cc,#66,#20,#cc,#66,#2a
	db #cc,#66,#27,#cc,#66,#25,#cd,#66
	db #20,#4d,#66,#25,#02,#cd,#66,#2a
	db #4d,#66,#25,#02,#cd,#66,#20,#4d
	db #66,#25,#02,#cd,#66,#20,#4d,#66
	db #25,#02,#cd,#66,#20,#cd,#66,#2a
	db #cd,#66,#27,#cd,#66,#25,#cd,#66
	db #20,#4d,#66,#25,#02,#cd,#66,#2a
	db #4d,#66,#25,#02,#cd,#66,#20,#4d
	db #66,#25,#02,#cd,#66,#20,#4d,#66
	db #25,#02,#cd,#66,#20,#cd,#66,#2a
	db #cd,#66,#27,#cd,#66,#25,#ff,#cc
	db #66,#20,#4c,#66,#25,#02,#cc,#66
	db #2a,#4c,#66,#25,#02,#cc,#66,#20
	db #4c,#66,#25,#02,#cc,#66,#20,#4c
	db #66,#25,#02,#cc,#66,#20,#cc,#66
	db #2a,#cc,#66,#27,#cc,#66,#25,#cc
	db #66,#20,#4c,#66,#25,#02,#cc,#66
	db #2a,#4c,#66,#25,#02,#cc,#66,#20
	db #4c,#66,#25,#02,#cc,#66,#20,#4c
	db #66,#25,#02,#cc,#66,#20,#cc,#66
	db #2a,#cc,#66,#27,#cc,#66,#25,#cd
	db #66,#20,#4d,#66,#25,#02,#cd,#66
	db #2a,#4d,#66,#25,#02,#cd,#66,#20
	db #4d,#66,#25,#02,#cd,#66,#20,#4d
	db #66,#25,#02,#cd,#66,#20,#cd,#66
	db #2a,#cd,#66,#27,#cd,#66,#25,#cd
	db #66,#20,#4d,#66,#25,#02,#cd,#66
	db #2a,#4d,#66,#25,#02,#cd,#66,#20
	db #4d,#66,#25,#02,#cd,#66,#20,#4d
	db #66,#25,#02,#cd,#66,#20,#fe,#01
	db #01,#20,#ff
;
.music_info
	db "Roudoudou Basic 3 (2000)(Flower Corp)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
