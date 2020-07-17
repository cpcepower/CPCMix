; Music of Xmas 95 - Part 2 (1995)(Exodus)(Koopa Troopa)(ST-128 Module)
; Ripped by Megachur the 24/02/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XMAS95P2.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 24
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2018
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
	ld (hl),#30
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
	ld (hl),#30
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
	dw #000f
.l95b4 equ $ + 4
.l95b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l95be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l95cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l95de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l95e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l95ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l95fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l960c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l9610
	db #00,#00,#00,#00,#00,#00,#00,#00
.l961a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l962b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l9640 equ $ + 6
.l963a
	dw l99a0,l99be,l99dc,#4fd2
	dw #4fd2,#4fd2,#0000,l96e0
	dw l9720,l9740,#0718,l9760
	dw l97a0,l9740,#0000,l97c0
	dw l9800,l9820,#0000,l9840
	dw l9880,l98a0,#0000,l9840
	dw l98c0,l9740,#0000,l9840
	dw l98e0,l9740,#0000
	db #d2,#4f,#d2,#4f,#d2,#4f,#00,#00
	db #d2,#4f,#d2,#4f,#d2,#4f,#00,#00
	db #d2,#4f,#d2,#4f,#d2,#4f,#00,#00
	db #d2,#4f,#d2,#4f,#d2,#4f,#00,#00
	db #40,#98,#00,#99,#40,#97,#00,#00
	db #d2,#4f,#d2,#4f,#d2,#4f,#00,#00
	db #d2,#4f,#d2,#4f,#d2,#4f,#00,#00
	db #d2,#4f,#d2,#4f,#d2,#4f,#00,#00
	db #d2,#4f,#d2,#4f,#d2,#4f,#00,#00
.l96c0
	db #d2,#4f,#20,#99,#40,#99,#60,#99
	db #80,#99,#d2,#4f,#d2,#4f,#d2,#4f
	db #d2,#4f,#d2,#4f,#d2,#4f,#d2,#4f
	db #d2,#4f,#d2,#4f,#d2,#4f,#d2,#4f
.l96e0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
	db #00,#00,#ff,#ff,#fe,#ff,#ff,#ff
	db #00,#00,#01,#00,#02,#00,#01,#00
.l9720
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0e,#0d,#0c,#0a,#08,#0a,#0c,#0e
	db #0e,#0e,#0e,#0e,#0e,#0d,#0d,#0d
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
.l9740
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9760
	db #00,#00,#80,#00,#00,#01,#80,#01
	db #00,#02,#80,#02,#00,#03,#80,#03
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l97a0
	db #0f,#0f,#0f,#0f,#0e,#0e,#0c,#0c
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#03,#03,#03,#03
.l97c0
	db #38,#00,#60,#00,#b0,#00,#18,#01
	db #48,#01,#80,#01,#c8,#01,#10,#02
	db #58,#02,#b0,#02,#f0,#02,#60,#03
	db #b0,#03,#30,#04,#90,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9800
	db #0f,#0f,#0f,#0e,#0d,#0d,#0c,#0b
	db #0a,#0a,#09,#08,#07,#07,#06,#05
	db #04,#04,#03,#02,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
.l9820
	db #06,#06,#06,#05,#04,#04,#83,#82
	db #81,#80,#80,#80,#80,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9840
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9880
	db #0d,#09,#05,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98a0
	db #03,#02,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98c0
	db #0f,#0f,#0e,#0e,#0e,#0d,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0a,#0a,#0a,#09,#09,#08,#08,#07
	db #06,#05,#04,#03,#02,#01,#01,#01
.l98e0
	db #0f,#0f,#0f,#0f,#0f,#0f,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#07,#07,#06,#06
	db #05,#05,#04,#04,#03,#03,#02,#02
	db #0d,#0d,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #0c,#07,#04,#0c,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#04,#0c,#07
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #0c,#04,#07,#0c,#07,#07,#07,#07
	db #04,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#07,#04,#0c,#07,#07,#07,#07
	db #07,#07,#07,#07,#07,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#00,#00,#0c,#00,#00,#0c,#00
	db #00,#0c,#00,#00,#0c,#00,#00,#0c
	db #00,#00,#0c,#00,#00,#0c,#00,#00
	db #0c,#00,#00,#0c,#00,#00,#0c,#00
.l99a0
	db #00,#fa,#99,#00,#2f,#9a,#00,#2f
	db #9a,#00,#2f,#9a,#00,#2f,#9a,#00
	db #2f,#9a,#00,#2f,#9a,#00,#2f,#9a
.l99be equ $ + 6
	db #00,#2f,#9a,#80,#a9,#99,#00,#90
	db #9a,#00,#c5,#9a,#00,#26,#9b,#00
	db #c5,#9a,#00,#c5,#9a,#00,#c5,#9a
	db #00,#c5,#9a,#00,#c5,#9a,#00,#c5
.l99dc equ $ + 4
	db #9a,#80,#c7,#99,#00,#87,#9b,#00
	db #a8,#9b,#00,#ab,#9b,#00,#ba,#9b
	db #00,#f2,#9b,#00,#37,#9c,#00,#73
	db #9c,#00,#f2,#9b,#00,#37,#9c,#80
	db #e5,#99,#47,#11,#20,#c6,#10,#47
	db #10,#02,#c9,#10,#47,#10,#06,#3b
	db #10,#02,#ba,#10,#3b,#10,#02,#bd
	db #10,#3b,#10,#06,#3b,#10,#02,#3b
	db #10,#03,#bb,#10,#39,#10,#03,#38
	db #10,#03,#3b,#10,#03,#23,#50,#03
	db #25,#50,#03,#27,#50,#03,#ff,#b4
	db #20,#f4,#40,#f4,#40,#b4,#30,#f4
	db #40,#f4,#40,#b4,#20,#f4,#40,#b4
	db #20,#b4,#30,#f4,#40,#f4,#40,#b4
	db #20,#f4,#40,#f4,#40,#b4,#30,#f4
	db #40,#f4,#40,#b4,#20,#f4,#40,#b4
	db #20,#c0,#30,#f4,#40,#f4,#40,#b4
	db #20,#f4,#40,#f4,#40,#b4,#30,#f4
	db #40,#f4,#40,#b4,#20,#f4,#40,#b4
	db #20,#b4,#30,#f4,#40,#f4,#40,#b4
	db #20,#f4,#40,#f4,#40,#b4,#30,#f4
	db #40,#f4,#40,#b4,#20,#f4,#40,#b4
	db #20,#b4,#30,#f4,#40,#f4,#40,#ff
	db #53,#11,#20,#d2,#10,#53,#10,#02
	db #d5,#10,#53,#10,#06,#3f,#10,#02
	db #be,#10,#3f,#10,#02,#c0,#10,#3f
	db #10,#06,#3f,#10,#02,#3f,#10,#03
	db #bf,#10,#40,#10,#03,#41,#10,#03
	db #42,#10,#03,#2f,#50,#03,#2c,#50
	db #03,#2a,#50,#03,#ff,#28,#51,#20
	db #40,#bf,#11,#27,#51,#20,#40,#bf
	db #11,#25,#51,#20,#40,#bf,#11,#23
	db #51,#20,#40,#bf,#11,#21,#51,#20
	db #45,#bf,#12,#20,#51,#20,#45,#bf
	db #12,#1e,#51,#20,#45,#bf,#12,#23
	db #51,#20,#47,#bf,#13,#28,#51,#20
	db #40,#bf,#11,#27,#51,#20,#40,#bf
	db #11,#25,#51,#20,#40,#bf,#11,#23
	db #51,#20,#40,#bf,#11,#21,#51,#20
	db #45,#bf,#12,#20,#51,#20,#45,#bf
	db #12,#1e,#51,#20,#45,#bf,#12,#23
	db #51,#20,#47,#bf,#13,#ff,#28,#51
	db #20,#40,#bf,#11,#27,#51,#20,#40
	db #bf,#11,#25,#51,#20,#40,#bf,#11
	db #23,#51,#20,#40,#bf,#11,#21,#51
	db #20,#45,#bf,#12,#20,#51,#20,#45
	db #bf,#12,#1e,#51,#20,#45,#bf,#12
	db #23,#51,#20,#47,#bf,#13,#28,#51
	db #20,#40,#bf,#11,#27,#51,#20,#40
	db #bf,#11,#25,#51,#20,#40,#bf,#11
	db #23,#51,#20,#40,#bf,#11,#21,#51
	db #20,#47,#bf,#12,#20,#51,#20,#49
	db #bf,#12,#1e,#51,#20,#4a,#bf,#12
	db #23,#51,#20,#47,#bf,#13,#ff,#00
	db #0c,#47,#10,#02,#c6,#10,#47,#10
	db #02,#c9,#10,#47,#10,#06,#47,#10
	db #02,#47,#10,#03,#c7,#10,#49,#10
	db #03,#4a,#10,#03,#4b,#10,#0c,#ff
	db #fe,#30,#ff,#00,#26,#47,#51,#10
	db #45,#50,#03,#44,#50,#03,#42,#50
	db #03,#ff,#40,#60,#03,#40,#60,#03
	db #47,#60,#02,#47,#60,#04,#49,#60
	db #02,#49,#60,#03,#47,#60,#06,#c4
	db #60,#45,#60,#03,#45,#60,#03,#44
	db #60,#02,#c5,#60,#44,#60,#03,#42
	db #60,#02,#c0,#60,#42,#60,#02,#40
	db #60,#03,#c4,#60,#44,#60,#02,#c5
	db #60,#ff,#47,#60,#03,#47,#60,#03
	db #45,#60,#02,#c4,#60,#45,#60,#03
	db #44,#60,#02,#c2,#60,#44,#60,#02
	db #42,#60,#03,#c2,#60,#c4,#60,#c5
	db #60,#c7,#60,#47,#60,#02,#c7,#60
	db #c9,#60,#cc,#60,#c7,#60,#45,#60
	db #02,#47,#60,#03,#c5,#60,#44,#60
	db #02,#47,#60,#03,#c4,#60,#42,#60
	db #02,#44,#60,#03,#c2,#60,#ff,#40
	db #60,#02,#40,#60,#04,#47,#60,#03
	db #c7,#60,#c4,#60,#c7,#60,#49,#60
	db #02,#4c,#60,#02,#49,#60,#02,#47
	db #60,#02,#49,#60,#02,#47,#60,#02
	db #45,#60,#03,#45,#60,#03,#44,#60
	db #02,#47,#60,#02,#44,#60,#02,#42
	db #60,#02,#c0,#60,#42,#60,#02,#40
	db #60,#07,#ff,#40,#6f,#34,#40,#60
	db #03,#47,#60,#02,#47,#60,#04,#49
	db #60,#02,#49,#60,#03,#47,#60,#06
	db #c4,#60,#45,#60,#03,#45,#60,#03
	db #44,#60,#02,#c5,#60,#44,#60,#03
	db #42,#60,#02,#c0,#60,#42,#60,#02
	db #40,#60,#03,#c4,#60,#44,#60,#02
	db #c5,#60,#ff
;
; MUSIC CONVERTED FROM C64 AND SOME SINUS-TABS - KOOPA TROOPA (A SECOND UNKNOWN GUY?!)
;
.music_info
	db "Xmas 95 - Part 2 (1995)(Exodus)(Koopa Troopa)",0
	db "ST-128 Module",0

	read "music_end.asm"
