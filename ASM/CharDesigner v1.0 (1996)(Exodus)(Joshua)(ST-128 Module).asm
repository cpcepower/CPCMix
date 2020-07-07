; Music of CharDesigner v1.0 (1996)(Exodus)(Joshua)(ST-128 Module)
; Ripped by Megachur the 15/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CHARDESI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9000

	read "music_header.asm"

	jp l9009
	jp l909d
	jp l9081
;
.init_music
.l9009
;
	xor a
	ld hl,l95b4
	call l907a
	ld hl,l95e2
	call l907a
	ld hl,l9610
	call l907a
	ld ix,l95b0
	ld iy,l963a
	ld de,#002e
	ld b,#03
.l9029
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
	djnz l9029
	ld hl,l94c9
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
	ld (l94c5),hl
	ld (l94c7),hl
	ld a,#0c
	ld c,d
	call l94a5
	ld a,#0d
	ld c,d
	jp l94a5
.l907a
	ld b,#2a
.l907c
	ld (hl),a
	inc hl
	djnz l907c
	ret
;
.stop_music
.l9081
;
	ld a,#07
	ld c,#3f
	call l94a5
	ld a,#08
	ld c,#00
	call l94a5
	ld a,#09
	ld c,#00
	call l94a5
	ld a,#0a
	ld c,#00
	jp l94a5
;
.play_music
.l909d
;
	ld hl,l94cb
	dec (hl)
	ld ix,l95b0
	ld bc,l95be
	call l913f
	ld ix,l95de
	ld bc,l95ec
	call l913f
	ld ix,l960c
	ld bc,l961a
	call l913f
	ld hl,l94c4
	ld de,l94cb
	ld b,#06
	call l911c
	ld b,#07
	call l911c
	ld b,#0b
	call l911c
	ld b,#0d
	call l911c
	ld de,l94cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l95cf
	call l90f5
	ld hl,l95fd
	call l90f5
	ld hl,l962b
.l90f5
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
	jr nz,l910a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l910a
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
.l911c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l94a5
.l9127
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l94a5
.l913f
	ld a,(l94cb)
	or a
	jp nz,l91f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l91f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l9127
	or a
	jp z,l91ec
	ld r,a
	and #7f
	cp #10
	jr c,l91c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l933f
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
	jr z,l91a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l91a0
	rrca
	ld c,a
	ld hl,l9640
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
	jr z,l91bf
	ld (ix+#1e),b
.l91bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l91e0
.l91c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l94d0
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
	add (hl)
	add a
	add a
	add h
	add l
.l91e0
	ld a,d
	or a
	jr nz,l91ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l91ee
.l91ec
	ld a,(hl)
	inc hl
.l91ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l91f7
	ld a,(ix+#17)
	or a
	jr nz,l920d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l920d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l9223
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l9223
	ld a,(ix+#0d)
	or a
	jr z,l9231
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l924f
.l9231
	ld a,(ix+#1a)
	or a
	jp z,l9256
	ld c,a
	cp #03
	jr nz,l923e
	xor a
.l923e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l924f
	ld a,(ix+#18)
	dec c
	jr z,l924f
	ld a,(ix+#19)
.l924f
	add (ix+#07)
	ld b,d
	call l933f
.l9256
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l927e
	dec (ix+#1b)
	jr nz,l927e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l92b6
.l927e
	ld a,(ix+#29)
	or a
	jr z,l92b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l92ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l92a4
	ld (ix+#29),#ff
	jr l92ad
.l92a4
	cp (ix+#2b)
	jr nz,l92ad
	ld (ix+#29),#01
.l92ad
	ld b,d
	or a
	jp p,l92b3
	dec b
.l92b3
	ld c,a
	jr l92c1
.l92b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l92c1
	pop hl
	bit 7,(ix+#14)
	jr z,l92ca
	ld h,d
	ld l,d
.l92ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l94a5
	ld c,h
	ld a,(ix+#02)
	call l94a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l931d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l930c
	dec (ix+#09)
	jr nz,l930c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l9304
	xor a
	jr l9309
.l9304
	cp #10
	jr nz,l9309
	dec a
.l9309
	ld (ix+#1e),a
.l930c
	ld a,b
	sub (ix+#1e)
	jr nc,l9313
	xor a
.l9313
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l94a5
.l931d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l94cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l933b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l933b
	ld (l94cc),hl
	ret
.l933f
	ld hl,l94ee
	cp #61
	jr nc,l9349
	add a
	ld c,a
	add hl,bc
.l9349
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l9353
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l9478
	ld (ix+#1e),a
	jp l91e0
.l9365
	dec b
.l9366
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l9371
	neg
.l9371
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
	jp l91e0
.l9387
	dec b
	jr l938b
.l938a
	inc b
.l938b
	call l9478
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l91e0
.l939a
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
	jp l945d
.l93ab
	ld a,(hl)
	inc hl
	or a
	jr z,l93cd
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
.l93cd
	ld (ix+#29),a
	jp l91e0
.l93d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l94cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l94ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l91e0
.l93ed
	ld a,(hl)
	or a
	jr z,l93fe
	call l947a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l91e0
.l93fe
	ld hl,#0101
	ld (l94ca),hl
	jp l91e0
.l9407
	call l9478
	ld (ix+#1e),a
	jp l91e0
.l9410
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l9489
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l9489
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l91e0
.l9432
	ld a,(hl)
	inc hl
	ld (l94c9),a
	jp l91e0
.l943a
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
	jp l91e0
.l9459
	call l9478
	add a
.l945d
	ld b,#00
	ld c,a
	push hl
	ld hl,l96c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l91e0
.l9478
	ld a,(hl)
	inc hl
.l947a
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
.l9489
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l9640
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l94a5
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
.l94c4
	ret
.l94cc equ $ + 7
.l94cb equ $ + 6
.l94ca equ $ + 5
.l94c9 equ $ + 4
.l94c7 equ $ + 2
.l94c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l94cf equ $ + 2
.l94ce equ $ + 1
	db #38,#00,#00
.l94d0
	dw l9353,l9366,l9365,l938a
	dw l9387,l939a,l93ab,l93d3
	dw l93ed,l93d3,l9407,l9410
	dw l9432,l943a,l9459
.l94ee
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
.l95b0 equ $ + 2
	dw #000f,#0008
.l95b4 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l95be equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l95cf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l95de equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l95e2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l95ec equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l95fd equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9610 equ $ + 6
.l960c equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l961a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l962b equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9640 equ $ + 6
.l963a
	db #c0,#9a,#ff,#9a,#3e,#9b,#e0,#96
	db #20,#97,#40,#97,#80,#00,#60,#97
	db #a0,#97,#c0,#97,#80,#00,#e0,#97
	db #20,#98,#40,#98,#00,#00,#60,#98
	db #a0,#98,#40,#98,#00,#00,#e0,#97
	db #c0,#98,#40,#97,#40,#00,#e0,#98
	db #20,#99,#40,#98,#18,#08,#40,#99
	db #80,#99,#40,#98,#00,#00,#a0,#99
	db #e0,#99,#40,#98,#00,#00,#e0,#97
	db #00,#9a,#40,#98,#00,#00,#e0,#97
	db #20,#9a,#40,#98,#00,#00,#e0,#97
	db #40,#9a,#40,#98,#00,#00,#a4,#9f
	db #a4,#9f,#a4,#9f,#d2,#4f,#a4,#9f
	db #a4,#9f,#a4,#9f,#d2,#4f,#a4,#9f
	db #a4,#9f,#a4,#9f,#d2,#4f,#a4,#9f
	db #d2,#4f,#72,#54,#00,#00,#52,#51
.l96c0 equ $ + 6
	db #12,#52,#c2,#52,#f0,#02,#60,#9a
	db #80,#9a,#a0,#9a,#c2,#52,#c2,#52
	db #c2,#52,#c2,#52,#c2,#52,#c2,#52
	db #c2,#52,#d2,#4f,#d2,#4f,#d2,#4f
	db #d2,#4f,#d2,#4f,#d2,#4f,#00,#00
	db #a0,#04,#00,#00,#80,#01,#40,#02
	db #f0,#02,#f0,#02,#f0,#02,#f0,#02
	db #f0,#02,#f0,#02,#f0,#02,#f0,#02
	db #f0,#02,#f0,#02,#f0,#02,#f0,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0d
	db #0c,#0d,#0c,#09,#05,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #a0,#04,#00,#00,#70,#01,#50,#02
	db #00,#00,#d0,#01,#00,#00,#d0,#01
	db #00,#00,#d0,#01,#00,#00,#d0,#01
	db #00,#00,#d0,#01,#00,#00,#d0,#01
	db #00,#00,#d0,#01,#00,#00,#d0,#01
	db #00,#00,#d0,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0e
	db #0e,#0e,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#00,#00,#00
	db #01,#00,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#01
	db #00,#01,#00,#01,#00,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#09
	db #08,#07,#06,#06,#05,#04,#03,#03
	db #02,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#fc,#ff,#fc,#ff,#f8,#ff
	db #f8,#ff,#fc,#ff,#fc,#ff,#00,#00
	db #04,#00,#04,#00,#08,#00,#08,#00
	db #04,#00,#04,#00,#00,#00,#f8,#ff
	db #f8,#ff,#f0,#ff,#f0,#ff,#f8,#ff
	db #f8,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0d
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#08
	db #0c,#0c,#09,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#0d,#0d
	db #0d,#0d,#0d,#0d,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0e,#0c,#08,#04,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #ff,#ff,#fe,#ff,#ff,#ff,#00,#00
	db #01,#00,#02,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0a,#06,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#07,#0b
	db #0b,#08,#05,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0b,#0b
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #0a,#08,#05,#02,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #07,#04,#00,#07,#04,#00,#07,#04
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #09,#04,#00,#09,#04,#00,#09,#04
	db #00,#09,#04,#00,#09,#04,#00,#09
	db #04,#00,#09,#04,#00,#09,#04,#00
	db #09,#04,#00,#09,#04,#00,#00,#00
	db #d0,#10,#06,#0c,#0a,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#7d
	db #9b,#00,#ae,#9b,#00,#7d,#9b,#00
	db #ae,#9b,#00,#7d,#9b,#00,#ae,#9b
	db #00,#7d,#9b,#00,#ae,#9b,#00,#7d
	db #9b,#00,#ae,#9b,#00,#7d,#9b,#00
	db #ae,#9b,#00,#df,#9b,#00,#10,#9c
	db #00,#df,#9b,#00,#10,#9c,#00,#df
	db #9b,#00,#10,#9c,#00,#df,#9b,#00
	db #10,#9c,#80,#c0,#9a,#00,#41,#9c
	db #00,#72,#9c,#00,#41,#9c,#00,#72
	db #9c,#00,#41,#9c,#00,#72,#9c,#00
	db #41,#9c,#00,#72,#9c,#00,#41,#9c
	db #00,#72,#9c,#00,#41,#9c,#00,#72
	db #9c,#00,#a3,#9c,#00,#41,#9c,#00
	db #a3,#9c,#00,#41,#9c,#00,#a3,#9c
	db #00,#41,#9c,#00,#a3,#9c,#00,#41
	db #9c,#80,#ff,#9a,#00,#d4,#9c,#00
	db #d4,#9c,#00,#d4,#9c,#00,#d7,#9c
	db #00,#f7,#9c,#00,#28,#9d,#00,#56
	db #9d,#00,#7d,#9d,#00,#f7,#9c,#00
	db #28,#9d,#00,#56,#9d,#00,#7d,#9d
	db #00,#aa,#9d,#00,#d5,#9d,#00,#fd
	db #9d,#00,#1e,#9e,#00,#aa,#9d,#00
	db #d5,#9d,#00,#fd,#9d,#00,#1e,#9e
	db #80,#3e,#9b,#34,#0f,#20,#3f,#20
	db #02,#34,#10,#02,#3f,#20,#02,#34
	db #00,#02,#3f,#20,#02,#34,#10,#02
	db #3f,#20,#02,#34,#00,#02,#3f,#20
	db #02,#34,#10,#02,#3f,#20,#02,#34
	db #00,#02,#3f,#20,#02,#34,#10,#02
	db #3f,#20,#02,#ff,#34,#0f,#21,#3d
	db #20,#02,#34,#10,#02,#3d,#20,#02
	db #34,#00,#02,#3d,#20,#02,#34,#10
	db #02,#3d,#20,#02,#34,#00,#02,#3d
	db #20,#02,#34,#10,#02,#3d,#20,#02
	db #34,#00,#02,#3d,#20,#02,#34,#10
	db #02,#3d,#20,#02,#ff,#34,#0f,#20
	db #41,#20,#02,#34,#10,#02,#41,#20
	db #02,#34,#00,#02,#41,#20,#02,#34
	db #10,#02,#41,#20,#02,#34,#00,#02
	db #41,#20,#02,#34,#10,#02,#41,#20
	db #02,#34,#00,#02,#41,#20,#02,#34
	db #10,#02,#41,#20,#02,#ff,#34,#0f
	db #21,#3f,#20,#02,#34,#10,#02,#3f
	db #20,#02,#34,#00,#02,#3f,#20,#02
	db #34,#10,#02,#3f,#20,#02,#34,#00
	db #02,#3f,#20,#02,#34,#10,#02,#3f
	db #20,#02,#34,#00,#02,#3f,#20,#02
	db #34,#10,#02,#3f,#20,#02,#ff,#27
	db #30,#02,#27,#30,#02,#33,#30,#02
	db #27,#30,#02,#27,#30,#02,#33,#30
	db #02,#27,#30,#02,#33,#30,#02,#27
	db #30,#02,#27,#30,#02,#33,#30,#02
	db #27,#30,#02,#27,#30,#02,#33,#30
	db #02,#27,#30,#02,#33,#30,#02,#ff
	db #25,#30,#02,#25,#30,#02,#31,#30
	db #02,#25,#30,#02,#25,#30,#02,#31
	db #30,#02,#25,#30,#02,#31,#30,#02
	db #25,#30,#02,#25,#30,#02,#31,#30
	db #02,#25,#30,#02,#25,#30,#02,#31
	db #30,#02,#25,#30,#02,#31,#30,#02
	db #ff,#29,#30,#02,#29,#30,#02,#35
	db #30,#02,#29,#30,#02,#29,#30,#02
	db #35,#30,#02,#29,#30,#02,#35,#30
	db #02,#29,#30,#02,#29,#30,#02,#35
	db #30,#02,#29,#30,#02,#29,#30,#02
	db #35,#30,#02,#29,#30,#02,#35,#30
	db #02,#ff,#00,#20,#ff,#0f,#02,#10
	db #ae,#40,#2e,#40,#02,#2c,#40,#02
	db #2c,#40,#02,#2c,#40,#02,#aa,#40
	db #aa,#40,#aa,#40,#a7,#40,#a7,#40
	db #a5,#40,#a2,#40,#ff,#4b,#51,#50
	db #04,#12,#04,#12,#04,#12,#04,#12
	db #04,#12,#04,#12,#04,#12,#04,#12
	db #04,#12,#04,#12,#04,#52,#4b,#6b
	db #10,#ce,#60,#50,#60,#02,#d0,#a3
	db #11,#03,#11,#01,#52,#70,#02,#50
	db #60,#02,#4e,#60,#02,#ff,#50,#60
	db #04,#52,#60,#02,#49,#50,#05,#04
	db #12,#04,#12,#04,#12,#04,#12,#04
	db #12,#04,#52,#63,#8b,#10,#e6,#80
	db #e3,#80,#e8,#93,#31,#ea,#80,#e8
	db #80,#66,#97,#12,#02,#e3,#80,#e1
	db #80,#de,#80,#ff,#4b,#51,#a0,#04
	db #12,#04,#12,#04,#12,#04,#12,#04
	db #12,#04,#52,#4b,#6b,#10,#ce,#60
	db #50,#60,#02,#d0,#a3,#11,#03,#11
	db #01,#52,#70,#02,#50,#60,#02,#52
	db #60,#02,#ff,#55,#60,#02,#52,#60
	db #02,#55,#60,#02,#57,#50,#06,#04
	db #12,#04,#12,#04,#12,#04,#12,#3f
	db #5b,#31,#04,#12,#3d,#6b,#21,#ba
	db #60,#3d,#50,#02,#04,#12,#38,#6b
	db #21,#35,#60,#02,#33,#60,#02,#ff
	db #4d,#51,#50,#04,#12,#04,#12,#04
	db #12,#04,#12,#04,#12,#04,#12,#04
	db #12,#04,#12,#04,#12,#04,#12,#04
	db #52,#48,#6b,#10,#cb,#60,#4d,#60
	db #02,#4b,#50,#04,#48,#60,#02,#46
	db #60,#02,#ff,#48,#60,#02,#4b,#60
	db #02,#48,#60,#02,#4b,#50,#0a,#04
	db #12,#04,#12,#41,#6b,#20,#44,#60
	db #02,#c6,#60,#c6,#73,#12,#48,#70
	db #02,#46,#60,#02,#44,#60,#02,#41
	db #60,#02,#ff,#4d,#51,#50,#04,#12
	db #04,#12,#04,#12,#04,#12,#04,#b2
	db #4b,#7b,#10,#cd,#60,#54,#60,#02
	db #52,#50,#03,#04,#12,#50,#6b,#20
	db #4d,#60,#02,#ff,#4b,#60,#02,#4a
	db #60,#02,#48,#60,#02,#46,#50,#0a
	db #04,#12,#04,#12,#41,#6b,#20,#48
	db #60,#02,#c6,#60,#c4,#73,#16,#48
	db #70,#02,#41,#60,#02,#3f,#60,#02
	db #3c,#60,#02,#ff
;
.music_info
	db "CharDesigner v1.0 (1996)(Exodus)(Joshua)",0
	db "ST-128 Module",0

	read "music_end.asm"
