; Music of Tribal Mag 2 - Meetings (1994)(FrankenTeam)()(ST-128 Module)
; Ripped by Megachur the 07/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TRIBM2ME.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9100

	read "music_header.asm"

	jr l9104
	jr l9113
.l9104
	call l9137
	ld hl,l9124
	ld de,l911c
	ld bc,#81ff
	jp #bcd7
.l9113
	ld hl,l9124
	call #bcdd
	jp l91af
.l911c
	push ix
	call l91cb
	pop ix
	ret
.l9124
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00

	jp l9137
	jp l91cb
	jp l91af
;
.init_music
.l9137
;
	xor a
	ld hl,l96e2
	call l91a8
	ld hl,l9710
	call l91a8
	ld hl,l973e
	call l91a8
	ld ix,l96de
	ld iy,l9768
	ld de,#002e
	ld b,#03
.l9157
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
	djnz l9157
	ld hl,l95f7
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
	ld (l95f3),hl
	ld (l95f5),hl
	ld a,#0c
	ld c,d
	call l95d3
	ld a,#0d
	ld c,d
	jp l95d3
.l91a8
	ld b,#2a
.l91aa
	ld (hl),a
	inc hl
	djnz l91aa
	ret
;
.stop_music
.l91af
;
	ld a,#07
	ld c,#3f
	call l95d3
	ld a,#08
	ld c,#00
	call l95d3
	ld a,#09
	ld c,#00
	call l95d3
	ld a,#0a
	ld c,#00
	jp l95d3
;
.play_music
.l91cb
;
	ld hl,l95f9
	dec (hl)
	ld ix,l96de
	ld bc,l96ec
	call l926d
	ld ix,l970c
	ld bc,l971a
	call l926d
	ld ix,l973a
	ld bc,l9748
	call l926d
	ld hl,l95f2
	ld de,l95f9
	ld b,#06
	call l924a
	ld b,#07
	call l924a
	ld b,#0b
	call l924a
	ld b,#0d
	call l924a
	ld de,l95f9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l96fd
	call l9223
	ld hl,l972b
	call l9223
	ld hl,l9759
.l9223
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
	jr nz,l9238
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l9238
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
.l924a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l95d3
.l9255
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l95d3
.l926d
	ld a,(l95f9)
	or a
	jp nz,l9325
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l9325
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l9255
	or a
	jp z,l931a
	ld r,a
	and #7f
	cp #10
	jr c,l92f5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l946d
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
	jr z,l92ce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l92ce
	rrca
	ld c,a
	ld hl,l976e
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
	jr z,l92ed
	ld (ix+#1e),b
.l92ed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l930e
.l92f5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l95fe
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
.l930e
	ld a,d
	or a
	jr nz,l931c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l931c
.l931a
	ld a,(hl)
	inc hl
.l931c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l9325
	ld a,(ix+#17)
	or a
	jr nz,l933b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l933b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l9351
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l9351
	ld a,(ix+#0d)
	or a
	jr z,l935f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l937d
.l935f
	ld a,(ix+#1a)
	or a
	jp z,l9384
	ld c,a
	cp #03
	jr nz,l936c
	xor a
.l936c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l937d
	ld a,(ix+#18)
	dec c
	jr z,l937d
	ld a,(ix+#19)
.l937d
	add (ix+#07)
	ld b,d
	call l946d
.l9384
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l93ac
	dec (ix+#1b)
	jr nz,l93ac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l93e4
.l93ac
	ld a,(ix+#29)
	or a
	jr z,l93e4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l93db
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l93d2
	ld (ix+#29),#ff
	jr l93db
.l93d2
	cp (ix+#2b)
	jr nz,l93db
	ld (ix+#29),#01
.l93db
	ld b,d
	or a
	jp p,l93e1
	dec b
.l93e1
	ld c,a
	jr l93ef
.l93e4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l93ef
	pop hl
	bit 7,(ix+#14)
	jr z,l93f8
	ld h,d
	ld l,d
.l93f8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l95d3
	ld c,h
	ld a,(ix+#02)
	call l95d3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l944b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l943a
	dec (ix+#09)
	jr nz,l943a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l9432
	xor a
	jr l9437
.l9432
	cp #10
	jr nz,l9437
	dec a
.l9437
	ld (ix+#1e),a
.l943a
	ld a,b
	sub (ix+#1e)
	jr nc,l9441
	xor a
.l9441
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l95d3
.l944b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l95fa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l9469
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l9469
	ld (l95fa),hl
	ret
.l946d
	ld hl,l961c
	cp #61
	jr nc,l9477
	add a
	ld c,a
	add hl,bc
.l9477
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l9481
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l95a6
	ld (ix+#1e),a
	jp l930e
.l9493
	dec b
.l9494
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l949f
	neg
.l949f
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
	jp l930e
.l94b5
	dec b
	jr l94b9
.l94b8
	inc b
.l94b9
	call l95a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l930e
.l94c8
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
	jp l958b
.l94d9
	ld a,(hl)
	inc hl
	or a
	jr z,l94fb
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
.l94fb
	ld (ix+#29),a
	jp l930e
.l9501
	dec hl
	ld a,(hl)
	and #0f
	ld (l95fd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l95fc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l930e
.l951b
	ld a,(hl)
	or a
	jr z,l952c
	call l95a8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l930e
.l952c
	ld hl,#0101
	ld (l95f8),hl
	jp l930e
.l9535
	call l95a6
	ld (ix+#1e),a
	jp l930e
.l953e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l95b7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l95b7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l930e
.l9560
	ld a,(hl)
	inc hl
	ld (l95f7),a
	jp l930e
.l9568
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
	jp l930e
.l9587
	call l95a6
	add a
.l958b
	ld b,#00
	ld c,a
	push hl
	ld hl,l97ee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l930e
.l95a6
	ld a,(hl)
	inc hl
.l95a8
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
.l95b7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l976e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l95d3
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
.l95f2
	ret
.l95fa equ $ + 7
.l95f9 equ $ + 6
.l95f8 equ $ + 5
.l95f7 equ $ + 4
.l95f5 equ $ + 2
.l95f3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l95fd equ $ + 2
.l95fc equ $ + 1
	db #38,#00,#00
.l95fe
	dw l9481,l9494,l9493,l94b8
	dw l94b5,l94c8,l94d9,l9501
	dw l951b,l9501,l9535,l953e
	dw l9560,l9568,l9587
.l961c
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
.l96de equ $ + 2
	dw #000f,#0008
.l96e2 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l96ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l96fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l970c equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l9710
	db #00,#00,#00,#00,#00,#00,#00,#00
.l971a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l972b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l973e equ $ + 6
.l973a equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9748
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9759 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l976e equ $ + 6
.l9768
	db #4e,#9a,#87,#9a,#c0,#9a,#0e,#98
	db #4e,#98,#6e,#98,#00,#00,#00,#44
	db #ff,#43,#ff,#43,#ff,#ff,#0e,#98
	db #8e,#98,#6e,#98,#1a,#06,#ae,#e9
	db #ee,#e9,#6e,#e9,#18,#08,#ae,#98
	db #ee,#98,#0e,#99,#00,#00,#2e,#99
	db #6e,#99,#8e,#99,#16,#0a,#0e,#eb
	db #4e,#eb,#6e,#e9,#1a,#00,#00,#44
	db #ff,#43,#ff,#43,#ff,#ff,#ff,#43
	db #00,#44,#00,#44,#00,#00,#00,#44
	db #ff,#43,#ff,#43,#ff,#ff,#ae,#99
	db #ee,#99,#6e,#98,#16,#0a,#0e,#8b
	db #0e,#8c,#2e,#8c,#09,#00,#ff,#43
	db #00,#44,#00,#44,#00,#00,#00,#44
	db #ff,#43,#ff,#43,#ff,#ff,#ff,#43
	db #00,#44,#00,#44,#00,#00,#0e,#ea
.l97ee equ $ + 6
	db #4e,#ea,#6e,#eb,#00,#00,#0e,#9a
	db #8e,#eb,#2e,#9a,#0e,#8d,#00,#44
	db #ae,#3b,#ff,#43,#ff,#43,#ff,#43
	db #00,#44,#00,#44,#00,#44,#00,#44
	db #ff,#43,#ff,#43,#ff,#43,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
	db #02,#02,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0b,#0b
	db #0b,#0b,#0c,#0c,#0c,#0c,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#00,#00
	db #20,#00,#40,#00,#60,#00,#a0,#00
	db #e0,#00,#00,#00,#20,#00,#40,#00
	db #60,#00,#a0,#00,#e0,#00,#00,#00
	db #20,#00,#40,#00,#60,#00,#80,#00
	db #a0,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0e,#0e
	db #0d,#0d,#0c,#0c,#0b,#0b,#0a,#0a
	db #09,#09,#08,#08,#06,#05,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0d,#0d
	db #0d,#0d,#0d,#0c,#0b,#0a,#09,#08
	db #06,#06,#07,#08,#09,#0a,#09,#08
	db #09,#0a,#09,#08,#08,#09,#0a,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#01,#00,#01,#00,#0f,#0f
	db #0e,#0e,#0d,#0d,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0c,#0c,#0c,#0c
	db #0c,#0b,#0b,#0b,#0b,#0b,#0c,#0c
	db #0c,#0c,#0c,#0b,#0b,#0b,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#00,#00
	db #01,#00,#02,#00,#03,#00,#02,#00
	db #01,#00,#ff,#ff,#fe,#ff,#fd,#ff
	db #fe,#ff,#ff,#ff,#02,#00,#03,#00
	db #04,#00,#03,#00,#02,#00,#0f,#0e
	db #0d,#0d,#0d,#0c,#0c,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0b,#0b
	db #0c,#0c,#0c,#0c,#0c,#0c,#0c,#0c
	db #0c,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #fc,#fc,#f9,#f9,#00,#00,#fc,#fc
	db #f9,#f9,#00,#00,#fc,#fc,#f9,#f9
	db #00,#00,#fc,#fc,#f9,#f9,#00,#00
	db #fc,#fc,#f9,#f9,#00,#00,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#fd,#fd
	db #f9,#f9,#00,#00,#fd,#fd,#f9,#f9
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#00,#f9
	db #9a,#00,#fc,#9a,#00,#fc,#9a,#00
	db #fc,#9a,#00,#01,#9b,#00,#01,#9b
	db #02,#01,#9b,#02,#01,#9b,#00,#0c
	db #9b,#00,#0c,#9b,#00,#41,#9b,#00
	db #41,#9b,#00,#fc,#9a,#00,#fc,#9a
	db #02,#fc,#9a,#02,#fc,#9a,#02,#41
	db #9b,#02,#41,#9b,#80,#5a,#9a,#00
	db #f9,#9a,#00,#f9,#9a,#00,#46,#9b
	db #00,#5c,#9b,#00,#72,#9b,#00,#91
	db #9b,#02,#72,#9b,#02,#91,#9b,#00
	db #b0,#9b,#00,#da,#9b,#00,#04,#9c
	db #00,#04,#9c,#00,#65,#9c,#00,#7b
	db #9c,#02,#65,#9c,#02,#7b,#9c,#02
	db #04,#9c,#02,#04,#9c,#80,#93,#9a
	db #00,#91,#9c,#00,#c8,#9c,#00,#ff
	db #9c,#00,#ff,#9c,#00,#40,#9d,#00
	db #40,#9d,#02,#40,#9d,#02,#40,#9d
	db #00,#40,#9d,#00,#40,#9d,#00,#79
	db #9d,#00,#79,#9d,#00,#ff,#9c,#00
	db #ff,#9c,#02,#ff,#9c,#02,#ff,#9c
	db #02,#79,#9d,#02,#79,#9d,#80,#cc
	db #9a,#00,#20,#ff,#3f,#2f,#00,#20
	db #ff,#4b,#2f,#00,#10,#47,#2f,#82
	db #46,#2f,#82,#ff,#4b,#0f,#20,#cb
	db #00,#4b,#00,#02,#cb,#00,#4b,#00
	db #02,#4b,#00,#02,#cb,#00,#4b,#00
	db #02,#cb,#00,#4b,#00,#02,#47,#0f
	db #22,#c7,#00,#47,#00,#02,#c7,#00
	db #47,#00,#02,#46,#0f,#22,#c6,#00
	db #46,#00,#02,#c6,#00,#46,#00,#02
	db #ff,#4b,#2f,#00,#20,#ff,#3f,#a0
	db #04,#38,#a0,#04,#38,#a0,#02,#3a
	db #a0,#02,#3b,#a0,#02,#3d,#a0,#02
	db #3f,#a0,#10,#ff,#3f,#a0,#04,#38
	db #a0,#04,#38,#a0,#02,#3a,#a0,#02
	db #3b,#a0,#02,#3d,#a0,#02,#38,#a0
	db #10,#ff,#4b,#00,#06,#49,#00,#04
	db #4b,#00,#02,#44,#00,#04,#4b,#00
	db #02,#49,#00,#02,#4b,#00,#04,#47
	db #00,#03,#46,#00,#03,#42,#00,#02
	db #ff,#4b,#00,#06,#49,#00,#04,#4b
	db #00,#02,#44,#00,#04,#50,#00,#02
	db #4e,#00,#02,#4b,#00,#02,#49,#00
	db #04,#4b,#00,#02,#47,#00,#04,#ff
	db #44,#00,#02,#c4,#00,#44,#00,#02
	db #c4,#00,#44,#00,#02,#47,#00,#02
	db #44,#00,#04,#44,#00,#02,#c2,#00
	db #44,#00,#02,#44,#00,#02,#c4,#00
	db #44,#00,#02,#47,#00,#04,#46,#00
	db #04,#ff,#44,#00,#02,#c4,#00,#44
	db #00,#02,#c4,#00,#44,#00,#02,#47
	db #00,#02,#44,#00,#04,#44,#00,#02
	db #c2,#00,#44,#00,#02,#44,#00,#02
	db #c4,#00,#44,#00,#02,#4b,#00,#04
	db #4e,#00,#04,#ff,#50,#0b,#10,#47
	db #0b,#13,#4b,#0b,#10,#50,#0b,#13
	db #47,#0b,#10,#4b,#0b,#13,#50,#0b
	db #10,#47,#0b,#13,#4b,#0b,#10,#50
	db #0b,#13,#47,#0b,#10,#4b,#0b,#13
	db #4b,#0b,#10,#47,#0b,#13,#4e,#0b
	db #10,#4b,#0b,#13,#50,#0b,#10,#4e
	db #0b,#13,#4b,#0b,#10,#50,#0b,#13
	db #47,#0b,#10,#4b,#0b,#13,#50,#0b
	db #10,#47,#0b,#13,#4b,#0b,#10,#50
	db #0b,#13,#47,#0b,#10,#4b,#0b,#13
	db #46,#0b,#10,#47,#0b,#13,#47,#0b
	db #10,#46,#0b,#13,#ff,#4b,#a0,#04
	db #44,#a0,#04,#44,#a0,#02,#46,#a0
	db #02,#47,#a0,#02,#49,#a0,#02,#4b
	db #a0,#10,#ff,#4b,#a0,#04,#44,#a0
	db #04,#44,#a0,#02,#46,#a0,#02,#47
	db #a0,#02,#49,#a0,#02,#44,#a0,#10
	db #ff,#2c,#50,#02,#ac,#50,#ac,#50
	db #b3,#50,#ac,#50,#2a,#50,#02,#28
	db #50,#02,#a8,#50,#a8,#50,#2f,#50
	db #02,#2e,#50,#02,#2c,#50,#02,#ac
	db #50,#ac,#50,#b3,#50,#ac,#50,#2a
	db #50,#02,#28,#50,#02,#a8,#50,#a8
	db #50,#2a,#50,#02,#2f,#50,#02,#ff
	db #2c,#50,#02,#ac,#50,#ac,#50,#b8
	db #40,#ac,#50,#2a,#50,#02,#28,#50
	db #02,#a8,#50,#a8,#50,#38,#40,#02
	db #2e,#50,#02,#2c,#50,#02,#ac,#50
	db #ac,#50,#b8,#40,#ac,#50,#2a,#50
	db #02,#28,#50,#02,#a8,#50,#a8,#50
	db #38,#40,#02,#2f,#50,#02,#ff,#ac
	db #50,#ac,#50,#ac,#50,#ac,#50,#b8
	db #40,#ac,#50,#aa,#50,#aa,#50,#a8
	db #50,#a8,#50,#a8,#50,#a8,#50,#b8
	db #40,#a8,#50,#ae,#50,#ae,#50,#ac
	db #50,#ac,#50,#ac,#50,#ac,#50,#b8
	db #40,#ac,#50,#aa,#50,#aa,#50,#a8
	db #50,#a8,#50,#a8,#50,#a8,#50,#b8
	db #40,#a8,#50,#af,#50,#af,#50,#ff
	db #2c,#50,#02,#ac,#50,#ac,#50,#b8
	db #40,#ac,#50,#2c,#50,#02,#2f,#50
	db #02,#af,#50,#af,#50,#b8,#40,#af
	db #50,#2f,#50,#02,#34,#50,#02,#b4
	db #50,#b4,#50,#b8,#40,#b4,#50,#34
	db #50,#02,#33,#50,#02,#b3,#50,#b3
	db #50,#b8,#40,#b3,#50,#2f,#50,#02
	db #ff,#2c,#50,#04,#27,#50,#04,#2a
	db #50,#02,#aa,#50,#27,#50,#02,#a7
	db #50,#2a,#50,#02,#2c,#50,#04,#27
	db #50,#04,#2f,#50,#02,#af,#50,#2e
	db #50,#02,#ae,#50,#2a,#50,#02,#ff
;
.music_info
	db "Tribal Mag 2 - Meetings (1994)(FrankenTeam)()",0
	db "ST-128 Module",0

	read "music_end.asm"
