; Music of Eurostrad Advert (19xx)(POW!)()(ST-Module)
; Ripped by Megachur the 25/05/2022
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EUROSTRA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2022
music_adr				equ #7000

	read "music_header.asm"

	jr l7004	; init interrupt music
	jr l7013	; stop interrupt music
.l7004
	call l702f
	ld hl,l7452
	ld de,l701c
	ld bc,#81ff
	jp #bcd7
.l7013
	ld hl,l7452
	call #bcdd
	jp l709b
.l701c
	push ix
	call l70b7
	pop ix
	ret
	jp l702f
	jp l70b7
	jp l709b
	db #66,#04
;
.init_music
.l702f
;
	ld b,#03
	ld ix,l73fe
	ld iy,l732a
	ld de,#001c
.l703c
	push bc
	ld (ix+#06),#01
	ld (ix+#09),d
	ld (ix+#1b),d
	ld (ix+#05),#10
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#00),c
	ld (ix+#01),b
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l703c
	ld a,#06
	ld (l70df),a
	ld a,d
	ld (l70f3),a
	inc a
	ld (l70da),a
	ld a,#38
	ld (l70e4),a
	ld a,#ff
	ld (l7326),a
	ld (l7327),a
	ld (l7328),a
	ld (l7329),a
	ld a,#0c
	ld c,d
	call l7308
	ld a,#0d
	ld c,d
	jp l7308
;
.stop_music
.l709b
;
	ld a,#07
	ld c,#3f
	call l7308
	ld a,#08
	ld c,#00
	call l7308
	ld a,#09
	ld c,#00
	call l7308
	ld a,#0a
	ld c,#00
	jp l7308
;
.play_music
.l70b7
;
	ld hl,l70da
	dec (hl)
	ld ix,l73fe
	ld bc,l740c
	call l716d
	ld ix,l741a
	ld bc,l7428
	call l716d
	ld ix,l7436
	ld bc,l7444
	call l716d
.l70da equ $ + 1
	ld a,#00
	or a
	jr nz,l70e3
.l70df equ $ + 1
	ld a,#00
	ld (l70da),a
.l70e4 equ $ + 1
.l70e3
	ld a,#00
	ld hl,l7327
	cp (hl)
	jr z,l70f2
	ld (hl),a
	ld c,a
	ld a,#07
	call l7308
.l70f3 equ $ + 1
.l70f2
	ld a,#00
	ld hl,l7326
	cp (hl)
	jr z,l7101
	ld (hl),a
	ld c,a
	ld a,#06
	call l7308
.l7102 equ $ + 1
.l7101
	ld a,#00
	ld hl,l7328
	cp (hl)
	jr z,l7110
	ld (hl),a
	ld c,a
	ld a,#0b
	call l7308
.l7111 equ $ + 1
.l7110
	ld a,#00
	ld hl,l7329
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l7308
.l711e
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l721e
.l712d
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	xor a
	ld (ix+#17),a
	ld (ix+#15),a
	ld c,a
	ld a,(ix+#04)
	jp l7308
.l7147
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l715c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l715c
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l7180
.l716d
	ld a,(l70da)
	or a
	jp nz,l721e
	dec (ix+#06)
	jp nz,l721e
	ld l,(ix+#00)
	ld h,(ix+#01)
.l7180
	ld a,(hl)
	or a
	jr z,l711e
	cp #fe
	jr z,l712d
	cp #ff
	jr z,l7147
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l7330
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l71bc
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l71bc
	and #7f
	ld (ix+#06),a
	jr l720f
.l71bc
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l71d0
	ld (ix+#05),a
	ld (ix+#0a),d
.l71d0
	add a
	add a
	add a
	ld e,a
	ld hl,l7466
	add hl,de
	ld d,b
	ld e,c
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	pop af
	pop hl
	and #f0
	jr z,l720f
	cp #f0
	jp z,l72c4
	cp #d0
	jp z,l72e0
	cp #b0
	jp z,l72e8
	cp #80
	jp nc,l72f0
	cp #10
	jr nz,l720f
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l720f
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l721e
	ld a,(ix+#17)
	or a
	jr nz,l7232
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l7232
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l725d
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l7330
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l725d
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld l,(ix+#18)
	ld h,(ix+#19)
	add hl,bc
	ld c,l
	ld a,(ix+#02)
	call l7308
	ld c,h
	ld a,(ix+#03)
	call l7308
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l729b
	and #0f
	sub (ix+#0a)
	jr nc,l7291
	xor a
.l7291
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l7308
.l729b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
	bit 7,a
	ret nz
	and #1f
	ld b,(ix+#0b)
	ld c,a
	or a
	ld a,b
	jr z,l72b8
	ld b,a
	ld a,c
	ld (l70f3),a
	ld a,b
	sub #40
.l72b8
	ld (l72bf),a
	ld a,(l70e4)
.l72bf equ $ + 1
	bit 0,a
	ld (l70e4),a
	ret
.l72c4
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l74e6
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l720f
.l72e0
	inc hl
	ld a,(hl)
	ld (l70df),a
	jp l720f
.l72e8
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l720f
.l72f0
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l7111),a
	inc hl
	ld a,(hl)
	ld (l7102),a
	jp l720f
.l7308
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
	ret
.l7329 equ $ + 3
.l7328 equ $ + 2
.l7327 equ $ + 1
.l7326
	db #ff,#ff,#ff,#ff
.l732a
	dw l7706,l771e,l7736
.l7330
	dw #0eee,#0e18,#0d4d,#0c8e
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
	db #00,#00,#00,#00,#00,#00,#00,#00
.l73fe equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l740c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l741a
	db #00,#00,#02,#03,#09,#00,#00,#00
.l7428 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7436 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l7444 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7452
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l7466 equ $ + 4
	db #75,#6c,#65,#2e,#06,#75,#46,#75
	db #66,#75,#00,#00,#86,#75,#c6,#75
	db #e6,#75,#00,#00,#49,#c2,#45,#23
	db #20,#71,#00,#ff,#ff,#6e,#21,#01
	db #70,#cd,#23,#56,#23,#70,#10,#6f
	db #09,#ed,#23,#4e,#fe,#6e,#ca,#6f
	db #98,#6d,#50,#30,#06,#76,#46,#76
	db #66,#76,#00,#00,#06,#75,#86,#76
	db #66,#75,#18,#07,#a6,#76,#e6,#76
	db #66,#75,#18,#07,#09,#45,#00,#6f
	db #00,#6f,#00,#00,#00,#6f,#00,#6f
	db #00,#6f,#00,#00,#00,#6f,#00,#6f
	db #00,#6f,#00,#00,#00,#6f,#00,#6f
	db #00,#6f,#00,#00,#00,#6f,#00,#6f
	db #00,#6f,#00,#00,#00,#6f,#00,#6f
	db #00,#6f,#00,#00,#00,#6f,#00,#6f
.l74e6 equ $ + 4
	db #00,#6f,#00,#00,#00,#6f,#00,#6f
	db #00,#6f,#00,#6f,#00,#6f,#00,#6f
	db #00,#6f,#00,#6f,#00,#6f,#00,#6f
	db #00,#6f,#00,#6f,#00,#6f,#00,#6f
	db #00,#6f,#00,#6f,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#07,#07,#06,#05,#04,#03,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#32,#00
	db #64,#00,#91,#00,#be,#00,#eb,#00
	db #22,#01,#4a,#01,#7c,#01,#a9,#01
	db #d6,#01,#08,#02,#3a,#02,#6c,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0f,#0f
	db #0f,#0e,#0e,#0d,#0c,#0a,#06,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#38,#00,#60,#00
	db #b0,#00,#18,#01,#48,#01,#80,#01
	db #c8,#01,#10,#02,#58,#02,#b0,#02
	db #00,#00,#00,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0c,#0b,#09,#07,#06,#03,#01,#00
	db #80,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#06,#06,#06,#05
	db #04,#04,#03,#02,#01,#00,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0e,#0e,#0e,#0e
	db #0e,#0d,#0d,#0d,#0c,#0c,#0c,#0b
	db #0b,#0b,#0a,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#07,#06,#06
	db #06,#05,#05,#05,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#00,#00,#ff,#ff
	db #fe,#ff,#ff,#ff,#00,#00,#01,#00
	db #02,#00,#01,#00,#0e,#0e,#0e,#0d
	db #0d,#0d,#0c,#0c,#0b,#0a,#09,#07
	db #05,#07,#09,#0b,#0b,#0b,#0b,#0b
	db #0b,#0a,#0a,#0a,#09,#09,#09,#09
.l7706 equ $ + 4
	db #09,#09,#09,#09,#00,#4e,#77,#00
	db #57,#77,#00,#90,#77,#00,#57,#77
	db #00,#c9,#77,#00,#90,#77,#00,#08
.l771e equ $ + 4
	db #78,#80,#09,#77,#00,#47,#78,#00
	db #89,#78,#00,#cb,#78,#00,#89,#78
	db #00,#0d,#79,#00,#53,#79,#00,#85
.l7736 equ $ + 4
	db #79,#80,#21,#77,#00,#c7,#79,#00
	db #cd,#79,#00,#f1,#79,#00,#cd,#79
	db #00,#f1,#79,#00,#13,#7a,#00,#39
	db #7a,#80,#39,#77,#00,#2c,#ba,#06
	db #3a,#82,#ba,#06,#ff,#2e,#03,#01
	db #3a,#02,#06,#ba,#06,#2e,#03,#01
	db #3a,#03,#06,#2e,#03,#01,#3a,#02
	db #06,#ba,#06,#2e,#03,#01,#3a,#03
	db #06,#2e,#03,#01,#3a,#02,#06,#ba
	db #06,#2e,#03,#01,#3a,#03,#06,#2e
	db #03,#01,#3a,#02,#06,#ba,#06,#2e
	db #03,#01,#3a,#03,#06,#ff,#2e,#03
	db #01,#3a,#02,#06,#ba,#06,#2e,#03
	db #01,#3a,#03,#06,#2e,#03,#01,#3a
	db #02,#06,#ba,#06,#2e,#03,#01,#3a
	db #03,#06,#2e,#03,#01,#3a,#02,#06
	db #ba,#06,#2e,#03,#01,#3a,#03,#06
	db #2e,#03,#01,#3a,#02,#06,#ba,#06
	db #2e,#03,#01,#3a,#03,#06,#ff,#2e
	db #03,#01,#3a,#02,#06,#ba,#06,#2e
	db #03,#01,#3a,#03,#06,#2e,#03,#01
	db #3a,#02,#06,#ba,#06,#2e,#03,#01
	db #3a,#03,#06,#2e,#03,#01,#3a,#02
	db #06,#ba,#06,#2e,#03,#01,#3a,#03
	db #06,#2e,#03,#01,#3a,#02,#06,#ba
	db #06,#ba,#06,#ba,#06,#ba,#06,#ba
	db #06,#ba,#06,#ba,#06,#ff,#2e,#03
	db #01,#3a,#02,#06,#ba,#06,#2e,#03
	db #01,#3a,#03,#06,#2e,#03,#01,#3a
	db #02,#06,#ba,#06,#2e,#03,#01,#3a
	db #03,#06,#2e,#03,#01,#3a,#02,#06
	db #ba,#06,#2e,#03,#01,#3a,#03,#06
	db #2e,#03,#01,#3a,#02,#06,#ba,#06
	db #ba,#06,#ba,#06,#ba,#06,#ba,#06
	db #ba,#06,#ba,#06,#ff,#43,#02,#00
	db #be,#00,#40,#82,#be,#00,#43,#82
	db #be,#00,#40,#82,#be,#00,#45,#82
	db #be,#00,#40,#82,#be,#00,#45,#82
	db #be,#00,#40,#82,#be,#00,#43,#82
	db #be,#00,#40,#82,#be,#00,#43,#82
	db #be,#00,#40,#82,#be,#00,#45,#82
	db #be,#00,#40,#82,#be,#00,#45,#82
	db #be,#00,#40,#82,#be,#00,#ff,#1f
	db #02,#07,#a6,#07,#28,#82,#a6,#07
	db #1f,#82,#a6,#07,#28,#82,#a6,#07
	db #1f,#82,#a6,#07,#28,#82,#a6,#07
	db #1f,#82,#a6,#07,#28,#82,#a6,#07
	db #1f,#82,#a6,#07,#28,#82,#a6,#07
	db #1f,#82,#a6,#07,#28,#82,#a6,#07
	db #1f,#82,#a6,#07,#28,#82,#a6,#07
	db #1f,#82,#a6,#07,#28,#82,#a6,#07
	db #ff,#24,#02,#07,#ab,#07,#2d,#82
	db #ab,#07,#24,#82,#ab,#07,#2d,#82
	db #ab,#07,#24,#82,#ab,#07,#2d,#82
	db #ab,#07,#24,#82,#ab,#07,#2d,#82
	db #ab,#07,#26,#82,#ad,#07,#2f,#82
	db #ad,#07,#26,#82,#ad,#07,#2f,#82
	db #ad,#07,#26,#82,#ad,#07,#2f,#82
	db #ad,#07,#26,#82,#ad,#07,#2f,#82
	db #ad,#07,#ff,#24,#02,#07,#ab,#07
	db #2d,#82,#ab,#07,#24,#82,#ab,#07
	db #2d,#82,#ab,#07,#24,#82,#ab,#07
	db #2d,#82,#ab,#07,#24,#82,#ab,#07
	db #2d,#82,#ab,#07,#26,#82,#ad,#07
	db #2f,#82,#ad,#07,#26,#82,#ad,#07
	db #2f,#82,#ad,#07,#26,#82,#ad,#07
	db #2f,#82,#ad,#07,#a6,#07,#a6,#07
	db #a6,#07,#a6,#07,#a6,#07,#a6,#07
	db #ff,#1f,#02,#07,#1f,#82,#1f,#82
	db #1f,#82,#1f,#82,#1f,#82,#21,#82
	db #21,#82,#21,#82,#21,#82,#21,#82
	db #21,#82,#22,#82,#22,#82,#22,#82
	db #22,#82,#22,#82,#22,#82,#24,#82
	db #24,#82,#24,#82,#24,#82,#24,#82
	db #24,#82,#ff,#1a,#02,#07,#a1,#07
	db #23,#82,#a1,#07,#1a,#82,#a1,#07
	db #23,#82,#a1,#07,#1a,#82,#a1,#07
	db #23,#82,#a1,#07,#1a,#82,#a1,#07
	db #23,#82,#a1,#07,#1a,#82,#a1,#07
	db #23,#82,#a1,#07,#1a,#82,#a1,#07
	db #23,#82,#a1,#07,#1a,#82,#a1,#07
	db #23,#82,#a1,#07,#1a,#82,#a1,#07
	db #23,#82,#a1,#07,#ff,#00,#2d,#47
	db #03,#08,#ff,#47,#03,#08,#45,#83
	db #43,#83,#42,#82,#43,#83,#3e,#83
	db #be,#08,#40,#82,#43,#84,#41,#83
	db #43,#83,#41,#83,#40,#82,#3e,#89
	db #c3,#08,#45,#82,#c3,#08,#ff,#46
	db #03,#08,#45,#83,#43,#85,#be,#08
	db #40,#82,#c3,#08,#45,#82,#43,#83
	db #48,#84,#48,#82,#c8,#08,#47,#83
	db #45,#82,#47,#83,#3e,#89,#47,#84
	db #ff,#3e,#03,#08,#40,#83,#43,#83
	db #47,#82,#45,#83,#43,#83,#c0,#08
	db #3e,#82,#40,#84,#41,#83,#43,#83
	db #46,#83,#4a,#82,#48,#83,#46,#83
	db #c3,#08,#41,#82,#43,#84,#ff,#45
	db #18,#08,#4a,#94,#47,#84,#ff

;
.music_info
	db "Eurostrad Advert (19xx)(POW!)()",0
	db "ST-Module",0

	read "music_end.asm"