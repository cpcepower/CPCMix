; Music of Tribal Mag 2 - Menu (1994)(FrankenTeam)()(ST-128 Module)
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
	ld (hl),#03
	inc hl
	ld (hl),#40
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
	ld (hl),#40
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
	db #4e,#9a,#63,#9a,#78,#9a,#0e,#98
	db #4e,#98,#6e,#98,#00,#00,#00,#51
	db #ff,#50,#ff,#50,#ff,#ff,#0e,#98
	db #8e,#98,#6e,#98,#1a,#06,#00,#51
	db #ff,#50,#ff,#50,#ff,#ff,#ff,#50
	db #00,#51,#00,#51,#00,#00,#00,#51
	db #ff,#50,#ff,#50,#ff,#ff,#ff,#50
	db #00,#51,#00,#51,#00,#00,#00,#51
	db #ff,#50,#ff,#50,#ff,#ff,#ff,#50
	db #00,#51,#00,#51,#00,#00,#00,#51
	db #ff,#50,#ff,#50,#ff,#ff,#ae,#98
	db #ee,#98,#6e,#98,#16,#0a,#0e,#98
	db #0e,#99,#2e,#99,#09,#00,#ff,#50
	db #00,#51,#00,#51,#00,#00,#00,#51
	db #ff,#50,#ff,#50,#ff,#ff,#ff,#50
	db #00,#51,#00,#51,#00,#00,#4e,#99
.l97ee equ $ + 6
	db #8e,#99,#ae,#99,#00,#00,#ce,#99
	db #ee,#99,#00,#51,#0e,#9a,#00,#51
	db #2e,#9a,#ff,#50,#ff,#50,#ff,#50
	db #00,#51,#00,#51,#00,#51,#00,#51
	db #ff,#50,#ff,#50,#ff,#50,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#0d,#0d
	db #0d,#0d,#0e,#0e,#0e,#0e,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0e,#0e,#0e
	db #0e,#0e,#0d,#0d,#0d,#0d,#0d,#0c
	db #0c,#0c,#0c,#0c,#0c,#0c,#00,#00
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
	db #0c,#0d,#0d,#0d,#0d,#0d,#0f,#0d
	db #0b,#09,#07,#05,#03,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#01
	db #01,#01,#01,#01,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#09,#09
	db #08,#06,#06,#07,#08,#09,#0b,#0a
	db #09,#06,#06,#08,#08,#07,#06,#05
	db #06,#07,#08,#0a,#0a,#09,#07,#06
	db #07,#08,#08,#0a,#09,#09,#00,#fc
	db #f9,#00,#fc,#f9,#00,#fc,#f9,#00
	db #fc,#f9,#00,#fc,#f9,#00,#fc,#f9
	db #00,#fc,#f9,#00,#fc,#f9,#00,#fc
	db #f9,#00,#fc,#f9,#00,#fc,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#f8,#00
	db #fb,#f8,#00,#fb,#f8,#00,#fb,#f8
	db #00,#fb,#f8,#00,#fb,#f8,#00,#fb
	db #f8,#00,#fb,#f8,#00,#fb,#00,#00
	db #fc,#fc,#f9,#f9,#00,#00,#fc,#fc
	db #f9,#f9,#00,#00,#fc,#fc,#f9,#f9
	db #00,#00,#fc,#fc,#f9,#f9,#00,#00
	db #fc,#fc,#f9,#f9,#00,#00,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#00,#8d
	db #9a,#00,#8d,#9a,#00,#92,#9a,#00
	db #97,#9a,#00,#97,#9a,#00,#c2,#9a
	db #80,#4e,#9a,#00,#d5,#9a,#00,#d5
	db #9a,#00,#06,#9b,#00,#d5,#9a,#00
	db #d5,#9a,#00,#06,#9b,#80,#63,#9a
	db #00,#37,#9b,#00,#37,#9b,#00,#9a
	db #9b,#00,#fd,#9b,#00,#fd,#9b,#00
	db #be,#9c,#80,#78,#9a,#47,#2f,#03
	db #40,#ff,#48,#2f,#05,#40,#ff,#4b
	db #a1,#10,#03,#11,#01,#03,#11,#01
	db #03,#11,#08,#47,#a0,#19,#47,#a0
	db #04,#45,#a0,#02,#43,#a0,#02,#45
	db #a0,#02,#47,#a0,#02,#45,#a0,#04
	db #43,#a0,#04,#42,#a0,#04,#43,#a0
	db #04,#ff,#48,#a0,#18,#43,#a0,#07
	db #40,#a0,#08,#43,#a0,#09,#48,#a0
	db #08,#4c,#a0,#08,#ff,#28,#08,#1e
	db #04,#28,#08,#1e,#04,#2f,#08,#14
	db #04,#28,#08,#1e,#14,#28,#08,#1e
	db #04,#28,#08,#1e,#04,#2f,#08,#14
	db #04,#28,#08,#1e,#04,#2b,#08,#19
	db #04,#2d,#08,#16,#04,#2e,#08,#15
	db #04,#2f,#08,#14,#04,#ff,#24,#08
	db #26,#04,#24,#08,#26,#04,#2b,#08
	db #19,#04,#24,#08,#26,#14,#24,#08
	db #26,#04,#24,#08,#26,#04,#2b,#08
	db #19,#04,#24,#08,#26,#04,#28,#08
	db #1e,#04,#2a,#08,#1b,#04,#2b,#08
	db #19,#04,#2d,#08,#16,#04,#ff,#28
	db #00,#02,#73,#b0,#02,#28,#00,#02
	db #73,#b0,#02,#40,#f0,#02,#73,#b0
	db #02,#28,#00,#02,#73,#b0,#02,#f3
	db #b0,#f3,#b0,#73,#b0,#02,#73,#b0
	db #02,#73,#b0,#02,#40,#f0,#02,#73
	db #b0,#02,#f3,#b0,#f3,#b0,#73,#b0
	db #02,#28,#00,#02,#73,#b0,#02,#28
	db #00,#02,#73,#b0,#02,#40,#f0,#02
	db #73,#b0,#02,#28,#00,#02,#73,#b0
	db #02,#2b,#00,#02,#73,#b0,#02,#40
	db #f0,#02,#73,#b0,#02,#2e,#00,#02
	db #73,#b0,#02,#40,#f0,#02,#73,#b0
	db #02,#ff,#24,#00,#02,#73,#b0,#02
	db #24,#00,#02,#73,#b0,#02,#40,#f0
	db #02,#73,#b0,#02,#24,#00,#02,#73
	db #b0,#02,#f3,#b0,#f3,#b0,#73,#b0
	db #02,#73,#b0,#02,#73,#b0,#02,#40
	db #f0,#02,#73,#b0,#02,#f3,#b0,#f3
	db #b0,#73,#b0,#02,#24,#00,#02,#73
	db #b0,#02,#24,#00,#02,#73,#b0,#02
	db #40,#f0,#02,#73,#b0,#02,#24,#00
	db #02,#73,#b0,#02,#28,#00,#02,#73
	db #b0,#02,#40,#f0,#02,#73,#b0,#02
	db #2b,#00,#02,#73,#b0,#02,#40,#f0
	db #02,#73,#b0,#02,#ff,#28,#01,#10
	db #47,#2f,#10,#73,#b1,#10,#47,#2f
	db #10,#28,#01,#10,#47,#2f,#10,#73
	db #b1,#10,#47,#2f,#10,#40,#f1,#10
	db #47,#2f,#10,#73,#b1,#10,#47,#2f
	db #10,#28,#01,#10,#47,#2f,#10,#73
	db #b1,#10,#47,#2f,#10,#73,#b1,#10
	db #47,#2f,#10,#73,#b1,#10,#47,#2f
	db #10,#73,#b1,#10,#47,#2f,#10,#73
	db #b1,#10,#47,#2f,#10,#40,#f1,#10
	db #47,#2f,#10,#73,#b1,#10,#47,#2f
	db #10,#73,#b1,#10,#47,#2f,#10,#73
	db #b1,#10,#47,#2f,#10,#28,#01,#10
	db #47,#2f,#10,#73,#b1,#10,#47,#2f
	db #10,#28,#01,#10,#47,#2f,#10,#73
	db #b1,#10,#47,#2f,#10,#40,#f1,#10
	db #47,#2f,#10,#73,#b1,#10,#47,#2f
	db #10,#28,#01,#10,#47,#2f,#10,#73
	db #b1,#10,#47,#2f,#10,#2b,#01,#10
	db #47,#2f,#10,#73,#b1,#10,#47,#2f
	db #10,#40,#f1,#10,#47,#2f,#10,#73
	db #b1,#10,#47,#2f,#10,#2e,#01,#10
	db #47,#2f,#10,#73,#b1,#10,#47,#2f
	db #10,#40,#f1,#10,#47,#2f,#10,#73
	db #b1,#10,#47,#2f,#10,#ff,#24,#01
	db #10,#48,#2f,#11,#73,#b1,#10,#48
	db #2f,#11,#24,#01,#10,#48,#2f,#11
	db #73,#b1,#10,#48,#2f,#11,#40,#f1
	db #10,#48,#2f,#11,#73,#b1,#10,#48
	db #2f,#11,#24,#01,#10,#48,#2f,#11
	db #73,#b1,#10,#48,#2f,#11,#73,#b1
	db #10,#48,#2f,#11,#73,#b1,#10,#48
	db #2f,#11,#73,#b1,#10,#48,#2f,#11
	db #73,#b1,#10,#48,#2f,#11,#40,#f1
	db #10,#48,#2f,#11,#73,#b1,#10,#48
	db #2f,#11,#73,#b1,#10,#48,#2f,#11
	db #73,#b1,#10,#48,#2f,#11,#24,#01
	db #10,#48,#2f,#11,#73,#b1,#10,#48
	db #2f,#11,#24,#01,#10,#48,#2f,#11
	db #73,#b1,#10,#48,#2f,#11,#40,#f1
	db #10,#48,#2f,#11,#73,#b1,#10,#48
	db #2f,#11,#24,#01,#10,#48,#2f,#11
	db #73,#b1,#10,#48,#2f,#11,#28,#01
	db #10,#48,#2f,#11,#73,#b1,#10,#48
	db #2f,#11,#40,#f1,#10,#48,#2f,#11
	db #73,#b1,#10,#48,#2f,#11,#2b,#01
	db #10,#48,#2f,#11,#73,#b1,#10,#48
	db #2f,#11,#40,#f1,#10,#48,#2f,#11
	db #73,#b1,#10,#48,#2f,#11,#ff,#00
;
.music_info
	db "Tribal Mag 2 - Menu (1994)(FrankenTeam)()",0
	db "ST-128 Module",0

	read "music_end.asm"
