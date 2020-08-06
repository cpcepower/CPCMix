; Music of Star Wars (1987)(Domark)(David Whittaker)()
; Ripped by Megachur the 09/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "STARWARS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #763c

	read "music_header.asm"

;
.init_music
;
	ex af,af'
	xor a
	ld (l7ba0),a
	ld (l7ba1),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l7e3f
	add hl,bc
	ld a,(hl)
	ld (l7722),a
	inc hl
	ld ix,l7695
	ld c,#20
	ld a,#03
.l765e
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l765e
	ld (l79b9),a
	inc a
	ld (l76f5),a
	ld (l7ba0),a
	ret
.l7695
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.l76b5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.l76d5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.l76f5
	db #00
;
.play_music
;
	call l7bf3
	ld a,(l7ba0)
	and a
	jp z,l7752
.l7701 equ $ + 1
	ld a,#00
	ld (l774e),a
	ld hl,l76f5
	dec (hl)
	jr nz,l7726
	ld b,(hl)
	ld ix,l7695
	call l78c3
	ld ix,l76b5
	call l78c3
	ld ix,l76d5
	call l78c3
.l7722 equ $ + 1
	ld a,#01
	ld (l76f5),a
.l7726
	ld ix,l7695
	call l796d
	ld (l7a7c),hl
	ld (l7a84),a
	ld ix,l76b5
	call l796d
	ld (l7a7e),hl
	ld (l7a85),a
	ld ix,l76d5
	call l796d
	ld (l7a80),hl
	ld (l7a86),a
.l774e equ $ + 1
	ld a,#00
	ld (l7a82),a
.l7752
	ld a,(l7ba1)
	and a
	jr z,l7782
	ld hl,(l7a89)
	ld (l7a7c),hl
	ld hl,(l7a8d)
	ld (l7a80),hl
	ld a,(l7a8f)
	ld (l7a82),a
	ld a,(l7a83)
.l776d
	or #2d
	ld hl,l7a90
	and (hl)
	ld (l7a83),a
	ld a,(l7a91)
	ld (l7a84),a
	ld a,(l7a93)
	ld (l7a86),a
.l7782
	ld hl,l7ba1
	ld a,(l7ba0)
	or (hl)
	ret z
	ld hl,l7a87
	ld d,#0b
.l778f
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l778f
	ret
.l77b0
	ld de,#0d00
.l77b3
	call l77bd
	dec d
	jp p,l77b3
	ld de,#073f
.l77bd
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	ret
;
.stop_music
.l77d8
;
	xor a
	ld (l7ba0),a
	ld (l7ba1),a
	call l77b0
	xor a
	ld (l7a84),a
	ld (l7a85),a
	ld (l7a86),a
	ret
	db #c7,#af,#b3,#b8,#76,#a5,#a0,#0d
	db #8f,#87,#4c,#36,#5e,#b4,#02,#c1
	pop hl
	jp l77d8
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l7823
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l7823
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l78d1
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,l7a61
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l78d1
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,l7a61
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l78d1
	ld hl,l7a61
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l78d1
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l78d1
	ld a,(de)
	inc de
	ld (l79b9),a
	jr l78d1
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l78d1
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l78d1
	ld (ix+#1d),b
	jr l78d1
	ld (ix+#1d),#40
	jr l78d1
	ld (ix+#1d),#c0
	jr l78d1
	set 1,(ix+#00)
	jr l78d1
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l78fd
	res 5,(ix+#00)
	jr l78fd
.l78c3
	dec (ix+#10)
	jr nz,l790a
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l78d1
	ld a,(de)
	inc de
	and a
	jp m,l791b
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l78e3
	ld (l7701),a
.l78e3
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l78fd
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l790a
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l7917
	inc (ix+#12)
	ret
.l7917
	dec (ix+#12)
	ret
.l791b
	cp #b8
	jr c,l7965
	add #20
	jr c,l7949
	add #10
	jr c,l7950
	add #10
	jr nc,l7941
	ld c,a
	ld hl,l7b55
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l78d1
.l7941
	add #09
	ld (l7722),a
	jp l78d1
.l7949
	inc a
	ld (ix+#11),a
	jp l78d1
.l7950
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp l78d1
.l7965
	ld hl,l776d
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l796d
	ld c,(ix+#00)
	bit 5,c
	jr z,l79b8
	ld a,(ix+#16)
	sub #10
	jr nc,l79a0
	bit 6,c
	jr z,l79a5
	add (ix+#13)
	jr nc,l7985
	sbc a
.l7985
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l799b
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l79b8
.l799b
	ld (ix+#18),a
	jr l79b8
.l79a0
	ld (ix+#16),a
	jr l79b8
.l79a5
	cpl
	sub #0f
	add (ix+#13)
	jr c,l79ae
	sub a
.l79ae
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l79b8
	res 5,c
.l79b9 equ $ + 1
.l79b8
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,l79d0
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l79d0
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l7a95
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l7a32
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l79fb
	bit 0,c
	jr nz,l7a19
.l79fb
	bit 5,l
	jr nz,l7a0b
	sub (ix+#1b)
	jr nc,l7a16
	set 5,(ix+#1d)
	sub a
	jr l7a16
.l7a0b
	add (ix+#1b)
	cp b
	jr c,l7a16
	res 5,(ix+#1d)
	ld a,b
.l7a16
	ld (ix+#1c),a
.l7a19
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l7a24
	dec d
.l7a24
	add #a0
	jr c,l7a30
.l7a28
	sla e
	rl d
	add #18
	jr nc,l7a28
.l7a30
	add hl,de
	ex de,hl
.l7a32
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l7a5d
	ld b,(ix+#0e)
	djnz l7a5a
	ld c,(ix+#0d)
	bit 7,c
	jr z,l7a49
	dec b
.l7a49
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l7a5d
.l7a5a
	ld (ix+#0e),b
.l7a5d
	cpl
	and #03
.l7a61 equ $ + 1
	ld a,#38
	jr nz,l7a6e
	ld a,(l7701)
	xor #08
	ld (l774e),a
	ld a,#07
.l7a6e
	ld hl,l7a83
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l7a83 equ $ + 7
.l7a82 equ $ + 6
.l7a80 equ $ + 4
.l7a7e equ $ + 2
.l7a7c
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l7a8a equ $ + 6
.l7a89 equ $ + 5
.l7a87 equ $ + 3
.l7a86 equ $ + 2
.l7a85 equ $ + 1
.l7a84
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l7a93 equ $ + 7
.l7a91 equ $ + 5
.l7a90 equ $ + 4
.l7a8f equ $ + 3
.l7a8d equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l7a95
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.l7b55
	db #0f,#10,#13,#16,#19,#1d,#20,#23
	db #26,#29,#2b,#2e,#33,#35,#37,#00
	db #87,#00,#03,#07,#87,#00,#04,#07
	db #87,#00,#02,#07,#87,#00,#04,#07
	db #0c,#87,#07,#0c,#0f,#87,#07,#0c
	db #10,#87,#03,#07,#0c,#87,#04,#07
	db #0c,#87,#00,#0c,#87,#00,#03,#0a
	db #87,#0c,#0c,#0c,#0c,#00,#87,#05
	db #00,#87,#00,#07,#87,#00,#00,#00
.l7ba1 equ $ + 4
.l7ba0 equ $ + 3
.music_end equ $ + 3
	db #00,#0c,#87,#00,#00
	ld hl,l7ba1
	ld (hl),#00
	ld hl,l7c91
	add a
	add l
	ld l,a
	jr nc,l7bb0
	inc h
.l7bb0
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l7e0d
.l7bb8
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l7bb8
	ld a,(l7e0e)
	ld (l7e1e),a
	ld hl,(l7e0f)
	ld (l7a89),hl
	ld de,(l7e11)
	ld (l7a8d),de
	ld a,l
	ld (l7a8f),a
	ld a,(l7e14)
	ld (l7a90),a
	ld a,(l7e13)
	ld e,a
	ld d,#0c
	call l77bd
	ld a,(l7e1d)
	ld e,a
	ld d,#0d
	call l77bd
	ld hl,l7ba1
	inc (hl)
	ret
.l7bf3
	call l7e20
	ld a,(l7ba1)
	and a
	ret z
	ld a,(l7e0d)
	and a
	jr nz,l7c07
	ld (l7ba1),a
	jp l77b0
.l7c07
	dec a
	ld (l7e0d),a
	ld a,(l7e1e)
	and a
	jr nz,l7c40
	ld a,(l7e1b)
	and a
	ret z
	dec a
	ld (l7e1b),a
	ld a,(l7e0e)
	ld (l7e1e),a
	ld a,(l7e1c)
	and a
	jr z,l7c29
	ld a,(l7e3b)
.l7c29
	ld b,a
	ld a,(l7e0f)
	add b
	ld (l7a89),a
	ld a,(l7e10)
	add b
	and #0f
	ld (l7a8a),a
	ld hl,(l7e11)
	ld (l7a8d),hl
.l7c40
	ld hl,l7e1e
	dec (hl)
	ld a,(l7e19)
	and a
	jr z,l7c67
	jp p,l7c5a
	ld hl,(l7a89)
	ld de,(l7e15)
	add hl,de
	ld (l7a89),hl
	jr l7c67
.l7c5a
	ld hl,(l7a89)
	ld de,(l7e15)
	and a
	sbc hl,de
	ld (l7a89),hl
.l7c67
	ld a,(l7e1a)
	and a
	jr z,l7c8a
	jp p,l7c7d
	ld hl,(l7a8d)
	ld de,(l7e17)
	add hl,de
	ld (l7a8d),hl
	jr l7c8a
.l7c7d
	ld hl,(l7a8d)
	ld de,(l7e17)
	and a
	sbc hl,de
	ld (l7a8d),hl
.l7c8a
	ld a,(l7a89)
	ld (l7a8f),a
	ret
.l7c91
	dw l7cb9,l7cca,l7cdb,l7cec
	dw l7cfd,l7d0e,l7d1f,l7d30
	dw l7d41,l7d52,l7d63,l7d74
	dw l7d85,l7d96,l7da7,l7db8
	dw l7dc9,l7dda,l7deb,l7dfc
.l7cb9
	db #19,#1f,#05,#00,#05,#00,#04,#d7
	db #01,#00
.l7cca equ $ + 7
	db #01,#00,#01,#01,#63,#00,#0e,#14
	db #11,#01,#02,#06,#01,#0a,#fa,#20
	db #00,#10,#00,#01,#01,#0a,#00,#00
.l7cdb
	db #46,#09,#01,#04,#01,#07,#2d,#f2
	db #61,#00,#70,#00,#01,#01,#50,#01
.l7cec equ $ + 1
	db #00,#14,#14,#0f,#00,#0f,#00,#03
	db #d7,#01,#00,#01,#00,#01,#01,#00
.l7cfd equ $ + 2
	db #00,#0e,#28,#1f,#05,#00,#05,#00
	db #06,#d7,#00,#00,#00,#00,#ff,#ff
.l7d0e equ $ + 3
	db #63,#00,#0e,#46,#09,#01,#04,#01
	db #02,#2d,#d2,#61,#00,#70,#00,#01
.l7d1f equ $ + 4
	db #01,#50,#01,#00,#78,#ff,#04,#00
	db #03,#00,#2d,#da,#01,#00,#01,#00
.l7d30 equ $ + 5
	db #ff,#ff,#00,#00,#00,#14,#0a,#81
	db #01,#91,#01,#0a,#fa,#48,#00,#4c
.l7d41 equ $ + 6
	db #00,#ff,#ff,#ff,#00,#00,#46,#0a
	db #0a,#00,#0e,#00,#16,#d2,#04,#00
.l7d52 equ $ + 7
	db #04,#00,#ff,#01,#0a,#01,#00,#1e
	db #0a,#09,#00,#0c,#00,#0f,#fa,#08
	db #00,#08,#00,#ff,#ff,#0a,#00,#00
.l7d63
	db #28,#1e,#01,#01,#11,#01,#19,#fa
	db #28,#00,#2c,#00,#ff,#ff,#ff,#00
.l7d74 equ $ + 1
	db #00,#14,#07,#81,#00,#06,#01,#06
	db #d6,#24,#00,#29,#00,#ff,#ff,#15
.l7d85 equ $ + 2
	db #00,#00,#14,#06,#21,#00,#86,#00
	db #0a,#d2,#24,#00,#29,#00,#ff,#ff
.l7d96 equ $ + 3
	db #15,#00,#00,#1e,#14,#90,#00,#cf
	db #00,#0c,#fa,#01,#00,#01,#00,#ff
.l7da7 equ $ + 4
	db #ff,#ff,#00,#00,#28,#1e,#b8,#00
	db #d0,#00,#0c,#fa,#01,#00,#01,#00
.l7db8 equ $ + 5
	db #ff,#ff,#ff,#00,#00,#28,#06,#01
	db #03,#11,#03,#14,#fa,#c8,#00,#cc
.l7dc9 equ $ + 6
	db #00,#ff,#ff,#ff,#00,#00,#03,#63
	db #1f,#02,#10,#02,#01,#df,#00,#00
.l7dda equ $ + 7
	db #00,#00,#01,#01,#00,#00,#0e,#14
	db #07,#aa,#00,#ae,#00,#11,#fa,#20
	db #00,#20,#00,#ff,#ff,#06,#00,#00
.l7deb
	db #14,#07,#c1,#01,#81,#03,#11,#fa
	db #20,#00,#18,#00,#01,#01,#3c,#00
.l7dfc equ $ + 1
	db #00,#14,#06,#81,#00,#86,#00,#28
	db #d2,#24,#00,#29,#00,#ff,#ff,#15
.l7e11 equ $ + 6
.l7e10 equ $ + 5
.l7e0f equ $ + 4
.l7e0e equ $ + 3
.l7e0d equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7e1a equ $ + 7
.l7e19 equ $ + 6
.l7e17 equ $ + 4
.l7e15 equ $ + 2
.l7e14 equ $ + 1
.l7e13
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7e1e equ $ + 3
.l7e1d equ $ + 2
.l7e1c equ $ + 1
.l7e1b
	db #00,#00,#00,#00,#00
.l7e20
	ld a,(l7e3b)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l7e3e
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l7e3e equ $ + 3
.l7e3b
	db #ff,#80,#1b,#34
.l7e3f
	db #04
	dw l7e46,l7e50,l7e4a
.l7e46
	dw l7e56,#0000
.l7e4a
	dw l7efa,l7f24,#0000
.l7e50
	dw l7f0e,l7f24,#0000
.l7e56
	db #8a,#88,#01,#01,#82,#c0,#e5,#80
	db #df,#00,#51,#05,#13,#12,#10,#0e
	db #0c,#0b,#09,#07,#0c,#0b,#09,#07
	db #11,#0e,#c9,#0e,#c0,#8f,#13,#12
	db #10,#0e,#0c,#0b,#09,#07,#0c,#0b
	db #09,#07,#11,#eb,#0e,#e5,#0e,#e5
	db #8f,#eb,#0e,#e5,#0e,#8f,#eb,#0e
	db #e5,#0e,#8f,#eb,#0e,#e5,#0e,#c9
	db #0a,#c0,#eb,#0e,#e5,#0e,#8f,#eb
	db #0e,#e5,#0e,#8f,#eb,#0e,#e5,#0e
	db #e3,#09,#e1,#0b,#e3,#0c,#e1,#0e
	db #e3,#0f,#e1,#11,#e3,#13,#e1,#15
	db #e5,#8f,#e1,#0e,#0e,#0e,#e2,#0e
	db #8f,#e5,#8f,#e5,#13,#12,#10,#0e
	db #0c,#0b,#09,#07,#0c,#0b,#09,#07
	db #11,#0e,#c9,#0e,#c0,#8f,#13,#12
	db #10,#0e,#0c,#0b,#09,#07,#0c,#0b
	db #09,#07,#11,#eb,#0e,#e3,#0e,#e1
	db #0e,#e5,#13,#12,#10,#0e,#0c,#0b
	db #09,#0e,#e2,#c9,#07,#c0,#8f,#e5
	db #8f,#eb,#80,#87
.l7efa
	db #8a,#dd,#00,#21,#05,#c0,#88,#01
	db #02,#82,#e1,#1a,#1a,#1a,#81,#dd
	db #00,#31,#02,#87
.l7f0e
	db #8a,#dd,#00,#21,#05,#c0,#88,#01
	db #02,#82,#e1,#26,#26,#26,#88,#01
	db #01,#dd,#00,#31,#02,#87
.l7f24
	db #eb,#2b,#32,#e1,#30,#2f,#2d,#eb
	db #37,#e5,#32,#e1,#30,#2f,#2d,#eb
	db #37,#e5,#32,#e1,#30,#2f,#30,#eb
	db #2d,#e3,#26,#e1,#26,#eb,#2b,#32
	db #e1,#30,#2f,#2d,#eb,#37,#e5,#32
	db #e1,#30,#2f,#2d,#eb,#37,#e5,#32
	db #e1,#30,#2f,#30,#eb,#2d,#e3,#26
	db #e1,#26,#e8,#28,#e2,#28,#30,#2f
	db #2d,#2b,#e1,#2b,#2d,#2f,#e3,#2d
	db #e1,#28,#e5,#2a,#e3,#26,#e1,#26
	db #e8,#28,#e2,#28,#30,#2f,#2d,#2b
	db #e3,#32,#e1,#2d,#eb,#2d,#e3,#26
	db #e1,#26,#e8,#28,#e2,#28,#30,#2f
	db #2d,#2b,#e1,#2b,#2d,#2f,#e3,#2d
	db #e1,#28,#e5,#2a,#e3,#32,#e1,#32
	db #e3,#37,#e1,#35,#e3,#33,#e1,#32
	db #e3,#30,#e1,#2e,#e3,#2d,#e1,#2b
	db #f1,#32,#e1,#26,#26,#26,#eb,#2b
	db #32,#e1,#30,#2f,#2d,#eb,#37,#e5
	db #32,#e1,#30,#2f,#2d,#eb,#37,#e5
	db #32,#e1,#30,#2f,#30,#eb,#2d,#e3
	db #26,#e1,#26,#eb,#2b,#32,#e1,#30
	db #2f,#2d,#eb,#37,#e5,#32,#e1,#30
	db #2f,#2d,#eb,#37,#e5,#32,#e1,#30
	db #2f,#30,#eb,#2d,#e5,#32,#f7,#37
	db #f1,#8f,#df,#00,#11,#05,#e1,#37
	db #37,#37,#e2,#37,#8f,#e5,#8f,#eb
	db #80,#87
;
.music_info
	db "Star Wars (1987)(Domark)(David Whittaker)",0
	db "",0

	read "music_end.asm"
