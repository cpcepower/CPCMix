; Music of Ze Meeting 96-97 Compilation - Intro (1997)(Condense)()(ST-128 Module)
; Ripped by Megachur the 10/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ZEMEE9CI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #7300

	read "music_header.asm"

	jp l7309	; init
	jp l739d	; play
	jp l7381	; stop
;
.init_music
.l7309
;
	xor a
	ld hl,l78b4
	call l737a
	ld hl,l78e2
	call l737a
	ld hl,l7910
	call l737a
	ld ix,l78b0
	ld iy,l793a
	ld de,#002e
	ld b,#03
.l7329
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
	djnz l7329
	ld hl,l77c9
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
	ld (l77c5),hl
	ld (l77c7),hl
	ld a,#0c
	ld c,d
	call l77a5
	ld a,#0d
	ld c,d
	jp l77a5
.l737a
	ld b,#2a
.l737c
	ld (hl),a
	inc hl
	djnz l737c
	ret
;
.stop_music
.l7381
;
	ld a,#07
	ld c,#3f
	call l77a5
	ld a,#08
	ld c,#00
	call l77a5
	ld a,#09
	ld c,#00
	call l77a5
	ld a,#0a
	ld c,#00
	jp l77a5
;
.play_music
.l739d
;
	ld hl,l77cb
	dec (hl)
	ld ix,l78b0
	ld bc,l78be
	call l743f
	ld ix,l78de
	ld bc,l78ec
	call l743f
	ld ix,l790c
	ld bc,l791a
	call l743f
	ld hl,l77c4
	ld de,l77cb
	ld b,#06
	call l741c
	ld b,#07
	call l741c
	ld b,#0b
	call l741c
	ld b,#0d
	call l741c
	ld de,l77cb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l78cf
	call l73f5
	ld hl,l78fd
	call l73f5
	ld hl,l792b
.l73f5
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
	jr nz,l740a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l740a
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
.l741c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l77a5
.l7427
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l77a5
.l743f
	ld a,(l77cb)
	or a
	jp nz,l74f7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l74f7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l7427
	or a
	jp z,l74ec
	ld r,a
	and #7f
	cp #10
	jr c,l74c7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l763f
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
	jr z,l74a0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l74a0
	rrca
	ld c,a
	ld hl,l7940
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
	jr z,l74bf
	ld (ix+#1e),b
.l74bf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l74e0
.l74c7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l77d0
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
.l74e0
	ld a,d
	or a
	jr nz,l74ee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l74ee
.l74ec
	ld a,(hl)
	inc hl
.l74ee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l74f7
	ld a,(ix+#17)
	or a
	jr nz,l750d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l750d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l7523
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l7523
	ld a,(ix+#0d)
	or a
	jr z,l7531
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l754f
.l7531
	ld a,(ix+#1a)
	or a
	jp z,l7556
	ld c,a
	cp #03
	jr nz,l753e
	xor a
.l753e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l754f
	ld a,(ix+#18)
	dec c
	jr z,l754f
	ld a,(ix+#19)
.l754f
	add (ix+#07)
	ld b,d
	call l763f
.l7556
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l757e
	dec (ix+#1b)
	jr nz,l757e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l75b6
.l757e
	ld a,(ix+#29)
	or a
	jr z,l75b6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l75ad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l75a4
	ld (ix+#29),#ff
	jr l75ad
.l75a4
	cp (ix+#2b)
	jr nz,l75ad
	ld (ix+#29),#01
.l75ad
	ld b,d
	or a
	jp p,l75b3
	dec b
.l75b3
	ld c,a
	jr l75c1
.l75b6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l75c1
	pop hl
	bit 7,(ix+#14)
	jr z,l75ca
	ld h,d
	ld l,d
.l75ca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l77a5
	ld c,h
	ld a,(ix+#02)
	call l77a5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l761d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l760c
	dec (ix+#09)
	jr nz,l760c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l7604
	xor a
	jr l7609
.l7604
	cp #10
	jr nz,l7609
	dec a
.l7609
	ld (ix+#1e),a
.l760c
	ld a,b
	sub (ix+#1e)
	jr nc,l7613
	xor a
.l7613
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l77a5
.l761d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l77cc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l763b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l763b
	ld (l77cc),hl
	ret
.l763f
	ld hl,l77ee
	cp #61
	jr nc,l7649
	add a
	ld c,a
	add hl,bc
.l7649
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l7653
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l7778
	ld (ix+#1e),a
	jp l74e0
.l7665
	dec b
.l7666
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l7671
	neg
.l7671
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
	jp l74e0
.l7687
	dec b
	jr l768b
.l768a
	inc b
.l768b
	call l7778
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l74e0
.l769a
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
	jp l775d
.l76ab
	ld a,(hl)
	inc hl
	or a
	jr z,l76cd
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
.l76cd
	ld (ix+#29),a
	jp l74e0
.l76d3
	dec hl
	ld a,(hl)
	and #0f
	ld (l77cf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l77ce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l74e0
.l76ed
	ld a,(hl)
	or a
	jr z,l76fe
	call l777a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l74e0
.l76fe
	ld hl,#0101
	ld (l77ca),hl
	jp l74e0
.l7707
	call l7778
	ld (ix+#1e),a
	jp l74e0
.l7710
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l7789
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l7789
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l74e0
.l7732
	ld a,(hl)
	inc hl
	ld (l77c9),a
	jp l74e0
.l773a
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
	jp l74e0
.l7759
	call l7778
	add a
.l775d
	ld b,#00
	ld c,a
	push hl
	ld hl,l79c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l74e0
.l7778
	ld a,(hl)
	inc hl
.l777a
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
.l7789
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l7940
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l77a5
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
.l77c4
	ret
.l77cc equ $ + 7
.l77cb equ $ + 6
.l77ca equ $ + 5
.l77c9 equ $ + 4
.l77c7 equ $ + 2
.l77c5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l77cf equ $ + 2
.l77ce equ $ + 1
	db #38,#00,#00
.l77d0
	dw l7653,l7666,l7665,l768a
	dw l7687,l769a,l76ab,l76d3
	dw l76ed,l76d3,l7707,l7710
	dw l7732,l773a,l7759
.l77ee
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
.l78b4 equ $ + 4
.l78b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l78be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l78cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l78de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l78e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l78ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l78fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l790c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l7910
	db #00,#00,#00,#00,#00,#00,#00,#00
.l791a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l792b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l793a equ $ + 2
	db #00,#00,#a0,#7b,#b2,#7b,#c4,#7b
.l7940
	db #e0,#79,#20,#7a,#40,#7a,#00,#00
	db #60,#7a,#a0,#7a,#40,#7a,#00,#00
	db #c0,#7a,#00,#7b,#20,#7b,#00,#00
	db #60,#7a,#40,#7b,#20,#7b,#80,#00
	db #60,#7a,#60,#7b,#40,#7a,#1d,#01
	db #60,#7a,#80,#7b,#20,#7b,#00,#00
	db #a4,#62,#76,#96,#76,#96,#a4,#63
	db #a4,#62,#76,#96,#76,#96,#b3,#72
	db #b3,#71,#85,#d5,#a4,#66,#d2,#33
	db #d2,#32,#a4,#66,#a4,#66,#d2,#33
	db #cf,#32,#a0,#66,#a1,#66,#d2,#33
	db #a4,#66,#a4,#66,#a6,#66,#d5,#33
	db #a6,#66,#a4,#66,#a4,#66,#d2,#33
	db #a3,#66,#a2,#66,#a3,#66,#d2,#33
	db #a4,#66,#d2,#32,#d2,#32,#00,#00
	db #d2,#32,#d2,#32,#d2,#32,#fd,#ff
.l79c0
	db #ce,#32,#cf,#32,#d2,#32,#d2,#32
	db #d2,#32,#d4,#32,#d5,#32,#d4,#32
	db #d2,#32,#d2,#32,#d2,#32,#d1,#32
	db #d0,#32,#d1,#32,#d2,#32,#d2,#32
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#fd,#ff,#fc,#ff
	db #fd,#ff,#00,#00,#00,#00,#00,#00
	db #02,#00,#03,#00,#02,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#fe,#ff
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0c,#0e,#0d,#0d,#0c,#0c,#0c
	db #0c,#0c,#0b,#0b,#0a,#09,#09,#09
	db #08,#08,#07,#06,#06,#06,#05,#05
	db #05,#05,#04,#04,#04,#04,#04,#00
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
	db #0d,#0c,#0b,#0b,#0a,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#66,#00,#c6,#00,#26,#01
	db #86,#01,#e6,#01,#46,#02,#a6,#02
	db #06,#03,#66,#03,#c6,#03,#26,#04
	db #86,#04,#e6,#04,#46,#05,#a6,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0b,#0a,#08
	db #06,#03,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#01,#01,#01,#02,#02,#02,#02
	db #03,#03,#03,#03,#04,#04,#04,#04
	db #05,#05,#05,#05,#06,#06,#06,#06
	db #07,#07,#07,#07,#08,#88,#80,#80
	db #0a,#09,#08,#08,#07,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#d6,#7b,#00,#2f,#7c,#00,#8f
	db #7c,#00,#8f,#7c,#00,#16,#7d,#80
	db #a0,#7b,#00,#8c,#7c,#00,#ad,#7d
	db #00,#ba,#7d,#00,#ba,#7d,#00,#18
	db #7e,#80,#b2,#7b,#00,#8c,#7c,#00
	db #8c,#7c,#00,#fb,#7e,#00,#fb,#7e
	db #00,#71,#7f,#80,#c4,#7b,#34,#01
	db #30,#34,#10,#03,#2f,#00,#02,#b2
	db #00,#b4,#00,#b2,#00,#af,#00,#ad
	db #00,#ab,#00,#28,#00,#02,#34,#00
	db #03,#34,#10,#03,#2f,#00,#02,#b2
	db #00,#03,#1c,#01,#02,#1c,#06,#34
	db #00,#03,#34,#10,#03,#2f,#00,#02
	db #b2,#00,#b4,#00,#b2,#00,#af,#00
	db #ad,#00,#ab,#00,#28,#00,#02,#34
	db #00,#03,#34,#10,#03,#2f,#00,#02
	db #b2,#00,#03,#1c,#01,#02,#1c,#01
	db #03,#1c,#01,#02,#1c,#04,#ff,#34
	db #07,#12,#03,#34,#10,#03,#2f,#00
	db #02,#b2,#00,#b4,#00,#b2,#00,#af
	db #00,#ad,#00,#ab,#00,#28,#00,#02
	db #34,#07,#12,#03,#34,#10,#03,#2f
	db #00,#02,#b2,#00,#03,#1c,#01,#02
	db #1c,#06,#34,#07,#12,#03,#34,#10
	db #03,#2f,#00,#02,#b2,#00,#b4,#00
	db #b2,#00,#af,#00,#ad,#00,#ab,#00
	db #28,#00,#02,#34,#07,#12,#03,#34
	db #10,#03,#2f,#00,#02,#b2,#00,#03
	db #1c,#01,#02,#1c,#01,#03,#1c,#01
	db #02,#1c,#04,#ff,#00,#40,#ff,#a8
	db #07,#12,#0a,#0f,#01,#fe,#01,#a8
	db #10,#fe,#02,#23,#0a,#14,#02,#a6
	db #0a,#11,#a8,#0a,#0f,#a6,#0a,#11
	db #a3,#0a,#14,#a1,#0a,#16,#9f,#0a
	db #19,#9c,#0a,#1e,#01,#10,#a8,#07
	db #12,#0a,#0f,#01,#fe,#01,#a8,#10
	db #fe,#02,#23,#0a,#14,#02,#a6,#0a
	db #11,#a8,#0a,#0f,#26,#0a,#11,#06
	db #a8,#0a,#0f,#07,#12,#01,#fe,#01
	db #a8,#10,#fe,#02,#23,#0a,#14,#02
	db #a6,#0a,#11,#a8,#0a,#0f,#a6,#0a
	db #11,#a3,#0a,#14,#a1,#0a,#17,#9f
	db #0a,#19,#9c,#0a,#1e,#0a,#0f,#01
	db #28,#07,#12,#02,#fe,#01,#a8,#10
	db #fe,#02,#23,#0a,#14,#02,#a6,#0a
	db #11,#03,#1c,#01,#02,#1c,#01,#03
	db #1c,#01,#02,#1c,#04,#ff,#a8,#07
	db #12,#0a,#0f,#01,#34,#21,#10,#a8
	db #1a,#0f,#3f,#21,#20,#23,#0a,#14
	db #02,#a6,#0a,#11,#a8,#0a,#0f,#a6
	db #0a,#11,#a3,#0a,#14,#a1,#0a,#16
	db #9f,#0a,#19,#9c,#0a,#1e,#01,#10
	db #a8,#07,#12,#0a,#0f,#01,#fe,#01
	db #a8,#10,#3f,#21,#20,#23,#0a,#14
	db #02,#a6,#0a,#11,#a8,#0a,#0f,#26
	db #0a,#11,#03,#3f,#21,#10,#3f,#20
	db #02,#a8,#0a,#0f,#07,#12,#01,#34
	db #21,#10,#a8,#1a,#0f,#3f,#21,#20
	db #23,#0a,#14,#02,#a6,#0a,#11,#a8
	db #0a,#0f,#a6,#0a,#11,#a3,#0a,#14
	db #a1,#0a,#17,#9f,#0a,#19,#9c,#0a
	db #1e,#0a,#0f,#01,#28,#07,#12,#02
	db #34,#21,#10,#a8,#1a,#0f,#3f,#21
	db #20,#23,#0a,#14,#02,#a6,#0a,#11
	db #03,#1c,#01,#3f,#21,#20,#34,#20
	db #02,#3f,#20,#02,#ff,#40,#4e,#44
	db #0f,#40,#4e,#55,#10,#40,#4e,#77
	db #21,#ff,#34,#20,#02,#b4,#20,#b4
	db #30,#3f,#20,#03,#34,#20,#02,#34
	db #20,#02,#b4,#20,#3f,#20,#03,#b4
	db #30,#34,#20,#03,#b4,#20,#3f,#20
	db #04,#b4,#20,#34,#20,#02,#34,#20
	db #02,#bf,#20,#bf,#20,#b4,#30,#34
	db #20,#02,#b4,#20,#b4,#20,#3f,#20
	db #03,#34,#20,#02,#34,#20,#02,#b4
	db #20,#3f,#20,#03,#b4,#30,#34,#20
	db #02,#34,#20,#02,#3f,#20,#03,#b4
	db #20,#34,#20,#02,#3f,#20,#02,#b4
	db #20,#b4,#30,#bf,#20,#b4,#30,#ff
	db #34,#21,#10,#cc,#10,#d0,#10,#cc
	db #10,#4a,#10,#03,#34,#20,#02,#b4
	db #20,#cc,#10,#b4,#20,#cc,#10,#ca
	db #10,#c5,#10,#47,#10,#02,#cc,#10
	db #d0,#10,#cc,#10,#ca,#10,#4b,#1b
	db #12,#cc,#10,#ca,#10,#c7,#10,#34
	db #20,#02,#34,#20,#05,#b4,#20,#cc
	db #10,#d0,#10,#cc,#10,#4a,#10,#03
	db #b4,#20,#d3,#10,#b4,#20,#d1,#10
	db #b4,#20,#d3,#10,#d1,#10,#d0,#10
	db #cc,#10,#34,#20,#05,#d3,#10,#d1
	db #10,#b4,#20,#50,#10,#02,#4c,#10
	db #06,#ff,#b4,#20,#b4,#30,#b4,#30
	db #b4,#30,#bf,#20,#b4,#30,#b4,#30
	db #b4,#20,#b4,#20,#b4,#30,#b4,#20
	db #b4,#30,#b4,#30,#bf,#20,#b4,#30
	db #b4,#20,#b4,#20,#b4,#30,#b4,#30
	db #b4,#30,#bf,#20,#b4,#30,#b4,#30
	db #b4,#30,#b4,#20,#b4,#30,#b4,#30
	db #b4,#30,#b4,#20,#bf,#20,#b4,#30
	db #bf,#20,#b4,#20,#b4,#20,#b4,#30
	db #b4,#30,#bf,#20,#b4,#30,#b4,#30
	db #b4,#30,#b4,#20,#b4,#30,#b4,#30
	db #b4,#30,#bf,#20,#b4,#30,#b4,#30
	db #bf,#20,#b4,#20,#b4,#30,#b4,#30
	db #b4,#30,#bf,#20,#b4,#30,#b4,#30
	db #b4,#30,#b4,#30,#bf,#20,#b4,#20
	db #b4,#20,#bf,#20,#b4,#30,#bf,#20
	db #bf,#30,#ff,#cc,#1e,#70,#0b,#13
	db #4c,#10,#02,#4a,#10,#02,#ca,#10
	db #4c,#10,#02,#4c,#10,#02,#cc,#10
	db #ca,#10,#ca,#10,#ca,#10,#ca,#1e
	db #80,#4c,#1e,#70,#02,#4c,#10,#02
	db #4a,#10,#02,#ca,#10,#4c,#10,#02
	db #4c,#10,#02,#cc,#10,#ca,#10,#ca
	db #10,#ca,#10,#ca,#1e,#80,#4c,#1e
	db #70,#02,#4c,#10,#02,#4a,#10,#02
	db #ca,#10,#4c,#10,#02,#4c,#10,#02
	db #cc,#10,#ca,#10,#ca,#10,#ca,#10
	db #ca,#1e,#80,#4c,#1e,#70,#02,#4c
	db #10,#02,#4a,#10,#02,#ca,#10,#4c
	db #10,#02,#4c,#10,#02,#cc,#10,#ca
	db #10,#ca,#10,#ca,#10,#ca,#1e,#80
	db #ff,#cc,#1e,#70,#0b,#13,#cc,#10
	db #34,#3b,#13,#4a,#1b,#23,#ca,#10
	db #4c,#10,#02,#4c,#10,#02,#cc,#10
	db #bf,#20,#4a,#1b,#13,#ca,#10,#ca
	db #5e,#80,#cc,#1e,#70,#0b,#13,#cc
	db #10,#b4,#20,#4a,#1b,#23,#ca,#10
	db #cc,#10,#b4,#20,#4c,#1b,#23,#cc
	db #10,#ca,#10,#ca,#10,#ca,#10,#ca
	db #5e,#80,#cc,#1e,#70,#0b,#13,#cc
	db #10,#b4,#20,#4a,#1b,#23,#ca,#10
	db #4c,#10,#02,#4c,#10,#02,#cc,#10
	db #bf,#20,#4a,#1b,#13,#ca,#10,#ca
	db #5e,#80,#cc,#1e,#70,#0b,#13,#4c
	db #10,#02,#4a,#10,#02,#ca,#10,#cc
	db #10,#b4,#20,#4c,#1b,#23,#cc,#10
	db #ca,#10,#ca,#50,#4a,#1b,#13,#ca
	db #5e,#80,#ff
;
.music_info
	db "Ze Meeting 96-97 Compilation - Intro (1997)(Condense)()",0
	db "ST-128 Module",0

	read "music_end.asm"
