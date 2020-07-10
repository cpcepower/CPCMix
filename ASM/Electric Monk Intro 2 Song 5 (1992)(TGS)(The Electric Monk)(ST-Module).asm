; Music of Electric Monk Intro 2 Song 5 (1992)(TGS)(The Electric Monk)(ST-Module)
; Ripped by Megachur the 29/08/2017
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ELEMI2S5.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2017
music_adr				equ #6633

	read "music_header.asm"

	jp l663e
	jp l66c6
	jp l66aa
	ld h,(hl)
	inc b
;
.init_music
.l663e
;
	ld b,#03
	ld ix,l6a0d
	ld iy,l6939
	ld de,#001c
.l664b
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
	djnz l664b
	ld a,#05
	ld (l66ee),a
	ld a,d
	ld (l6702),a
	inc a
	ld (l66e9),a
	ld a,#38
	ld (l66f3),a
	ld a,#ff
	ld (l6935),a
	ld (l6936),a
	ld (l6937),a
	ld (l6938),a
	ld a,#0c
	ld c,d
	call l6917
	ld a,#0d
	ld c,d
	jp l6917
;
.stop_music
.l66aa
;
	ld a,#07
	ld c,#3f
	call l6917
	ld a,#08
	ld c,#00
	call l6917
	ld a,#09
	ld c,#00
	call l6917
	ld a,#0a
	ld c,#00
	jp l6917
;
.play_music
.l66c6
;
	ld hl,l66e9
	dec (hl)
	ld ix,l6a0d
	ld bc,l6a1b
	call l677c
	ld ix,l6a29
	ld bc,l6a37
	call l677c
	ld ix,l6a45
	ld bc,l6a53
	call l677c
.l66e9 equ $ + 1
	ld a,#00
	or a
	jr nz,l66f2
.l66ee equ $ + 1
	ld a,#00
	ld (l66e9),a
.l66f3 equ $ + 1
.l66f2
	ld a,#00
	ld hl,l6936
	cp (hl)
	jr z,l6701
	ld (hl),a
	ld c,a
	ld a,#07
	call l6917
.l6702 equ $ + 1
.l6701
	ld a,#00
	ld hl,l6935
	cp (hl)
	jr z,l6710
	ld (hl),a
	ld c,a
	ld a,#06
	call l6917
.l6711 equ $ + 1
.l6710
	ld a,#00
	ld hl,l6937
	cp (hl)
	jr z,l671f
	ld (hl),a
	ld c,a
	ld a,#0b
	call l6917
.l6720 equ $ + 1
.l671f
	ld a,#00
	ld hl,l6938
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,#0d
	jp l6917
.l672d
	inc hl
	ld b,(hl)
	ld (ix+#06),b
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	jp l682d
.l673c
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
	jp l6917
.l6756
	ld (ix+#0a),#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld a,(hl)
	cp #80
	jr nz,l676b
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
.l676b
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#0c),l
	ld (ix+#0d),h
	ld (ix+#08),a
	ex de,hl
	jr l678f
.l677c
	ld a,(l66e9)
	or a
	jp nz,l682d
	dec (ix+#06)
	jp nz,l682d
	ld l,(ix+#00)
	ld h,(ix+#01)
.l678f
	ld a,(hl)
	or a
	jr z,l672d
	cp #fe
	jr z,l673c
	cp #ff
	jr z,l6756
	ld d,#00
	and #7f
	sub #0a
	add (ix+#08)
	ld (ix+#07),a
	add a
	ld e,a
	push hl
	ld hl,l693f
	add hl,de
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	pop hl
	ld a,#01
	bit 7,(hl)
	jr nz,l67cb
	inc hl
	ld a,(hl)
	bit 7,a
	jr z,l67cb
	and #7f
	ld (ix+#06),a
	jr l681e
.l67cb
	ld (ix+#06),a
	inc hl
	push hl
	ld a,(hl)
	push af
	and #0f
	cp (ix+#05)
	jr z,l67df
	ld (ix+#05),a
	ld (ix+#0a),d
.l67df
	add a
	add a
	add a
	ld e,a
	ld hl,l6a75
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
	jr z,l681e
	cp #f0
	jp z,l68d3
	cp #d0
	jp z,l68ef
	cp #b0
	jp z,l68f7
	cp #80
	jp nc,l68ff
	cp #10
	jr nz,l681e
	xor a
	ld (ix+#1b),a
	ld (ix+#09),a
.l681e
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld (ix+#16),#00
	ld (ix+#17),#20
.l682d
	ld a,(ix+#17)
	or a
	jr nz,l6841
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	ld (ix+#16),a
.l6841
	ld d,#00
	ld e,(ix+#16)
	inc (ix+#16)
	dec (ix+#17)
	ld a,(ix+#1b)
	or a
	jr z,l686c
	ld h,a
	ld l,(ix+#1a)
	add hl,de
	ld a,(hl)
	ld b,(ix+#07)
	add b
	add a
	ld b,d
	ld c,a
	ld hl,l693f
	add hl,bc
	ld a,(hl)
	ld (ix+#18),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
.l686c
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
	call l6917
	ld c,h
	ld a,(ix+#03)
	call l6917
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l68aa
	and #0f
	sub (ix+#0a)
	jr nc,l68a0
	xor a
.l68a0
	or (ix+#09)
	ld c,a
	ld a,(ix+#04)
	call l6917
.l68aa
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
	jr z,l68c7
	ld b,a
	ld a,c
	ld (l6702),a
	ld a,b
	sub #40
.l68c7
	ld (l68ce),a
	ld a,(l66f3)
.l68ce equ $ + 1
	bit 0,a
	ld (l66f3),a
	ret
.l68d3
	inc hl
	ld a,(hl)
	push hl
	add a
	ld b,#00
	ld c,a
	ld hl,l6af5
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#1a),e
	ld (ix+#1b),d
	ld (ix+#09),#00
	pop hl
	jp l681e
.l68ef
	inc hl
	ld a,(hl)
	ld (l66ee),a
	jp l681e
.l68f7
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	jp l681e
.l68ff
	ld (ix+#09),#10
	ld (ix+#1b),#00
	ld a,(hl)
	rrca
	rrca
	rrca
	rrca
	ld (l6720),a
	inc hl
	ld a,(hl)
	ld (l6711),a
	jp l681e
.l6917
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
.l6938 equ $ + 3
.l6937 equ $ + 2
.l6936 equ $ + 1
.l6935
	db #ff,#ff,#ff,#ff
.l6939
	dw l6c55,l6c5b,l6c61
.l693f
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
.l6a0d equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #08,#00,#00,#00,#00,#00,#00,#df
.l6a1b equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6a29
	db #00,#00,#02,#03,#09,#00,#00,#00
.l6a37 equ $ + 6
	db #00,#00,#00,#e7,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6a45 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#04,#05
	db #0a,#00,#00,#00,#00,#00,#00,#ef
.l6a53 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#53,#54,#2d,#4d,#6f,#64
.l6a75 equ $ + 4
	db #75,#6c,#65,#2e,#15,#6b,#55,#6b
	db #75,#6b,#07,#00,#0f,#65,#0f,#65
	db #0f,#65,#00,#00,#95,#6b,#d5,#6b
	db #f5,#6b,#1a,#00,#0f,#65,#0f,#65
	db #0f,#65,#00,#00,#0f,#65,#0f,#65
	db #0f,#65,#00,#00,#0f,#65,#0f,#65
	db #0f,#65,#00,#00,#0f,#65,#0f,#65
	db #0f,#65,#00,#00,#0f,#65,#0f,#65
	db #0f,#65,#00,#00,#0f,#65,#0f,#65
	db #0f,#65,#00,#00,#0f,#65,#01,#b5
	db #1e,#0c,#0f,#a7,#15,#6b,#55,#6b
	db #15,#6c,#00,#00,#2c,#bc,#3f,#65
	db #8c,#bc,#ad,#57,#ec,#bc,#1c,#bd
	db #4c,#bd,#6d,#58,#ac,#bd,#dc,#bd
	db #0c,#be,#2d,#59,#b2,#c4,#9c,#be
	db #cc,#be,#ed,#59,#2c,#bf,#4c,#bf
.l6af5 equ $ + 4
	db #0f,#65,#00,#00,#0f,#65,#0f,#65
	db #0f,#65,#0f,#65,#0f,#65,#0f,#65
	db #0f,#65,#0f,#65,#0f,#65,#0f,#65
	db #35,#6c,#0f,#65,#0f,#65,#0f,#65
	db #0f,#65,#0f,#65,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#0e,#0d
	db #0c,#0c,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#80,#80
	db #80,#80,#80,#80,#80,#80,#0a,#08
	db #06,#04,#02,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#30,#00
	db #60,#00,#90,#00,#c0,#00,#f0,#00
	db #20,#01,#50,#01,#80,#01,#b0,#01
	db #e0,#01,#10,#02,#40,#02,#70,#02
	db #a0,#02,#d0,#02,#00,#03,#20,#03
	db #40,#03,#60,#03,#70,#03,#80,#03
	db #90,#03,#a0,#03,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0e,#0e,#0d
	db #0d,#0c,#0c,#0b,#0a,#0a,#09,#09
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#00,#00,#00
	db #00,#00,#00,#00,#05,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
	db #00,#f4,#00,#0c,#00,#f4,#00,#0c
.l6c55 equ $ + 4
	db #00,#f4,#00,#0c,#00,#67,#6c,#80
.l6c5b equ $ + 2
	db #55,#6c,#00,#84,#6c,#80,#5b,#6c
.l6c61
	db #00,#9a,#6c,#80,#61,#6c,#ae,#ca
	db #1e,#fe,#01,#a9,#ca,#28,#a9,#ca
	db #28,#2a,#02,#ca,#26,#29,#02,#ca
	db #28,#fe,#02,#29,#82,#ae,#ca,#1e
	db #fe,#33,#ff,#ba,#f0,#0a,#fe,#01
	db #b5,#00,#b5,#00,#36,#82,#35,#82
	db #fe,#02,#39,#82,#ba,#00,#fe,#33
	db #ff,#22,#02,#02,#a2,#02,#a2,#02
	db #22,#82,#22,#82,#fe,#02,#2e,#82
	db #2e,#b4,#ff,#00
;
.music_info
	db "Electric Monk Intro 2 Song 5 (1992)(TGS)(The Electric Monk)",0
	db "ST-Module",0

	read "music_end.asm"
