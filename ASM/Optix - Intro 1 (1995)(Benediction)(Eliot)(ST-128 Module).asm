; Music of Optix - Intro 1 (1995)(Benediction)(Eliot)(ST-128 Module)
; Ripped by Megachur the 12/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OPTIXIN1.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #66d0

	read "music_header.asm"

	jr l66d4
	jr l66e3
.l66d4
	call l6707
	ld hl,l66f4
	ld de,l66ec
	ld bc,#81ff
	jp #bcd7
.l66e3
	ld hl,l66f4
	call #bcdd
	jp l677f
.l66ec
	push ix
	call l679b
	pop ix
	ret
.l66f4
	db #00,#00,#00,#00,#00,#81,#ec,#66
	db #ff,#00
	jp l6707
	jp l679b
	jp l677f
;
.init_music
.l6707
;
	xor a
	ld hl,l6cb2
	call l6778
	ld hl,l6ce0
	call l6778
	ld hl,l6d0e
	call l6778
	ld ix,l6cae
	ld iy,l6d38
	ld de,#002e
	ld b,#03
.l6727
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
	djnz l6727
	ld hl,l6bc7
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
	ld (l6bc3),hl
	ld (l6bc5),hl
	ld a,#0c
	ld c,d
	call l6ba3
	ld a,#0d
	ld c,d
	jp l6ba3
.l6778
	ld b,#2a
.l677a
	ld (hl),a
	inc hl
	djnz l677a
	ret
;
.stop_music
.l677f
;
	ld a,#07
	ld c,#3f
	call l6ba3
	ld a,#08
	ld c,#00
	call l6ba3
	ld a,#09
	ld c,#00
	call l6ba3
	ld a,#0a
	ld c,#00
	jp l6ba3
;
.play_music
.l679b
;
	ld hl,l6bc9
	dec (hl)
	ld ix,l6cae
	ld bc,l6cbc
	call l683d
	ld ix,l6cdc
	ld bc,l6cea
	call l683d
	ld ix,l6d0a
	ld bc,l6d18
	call l683d
	ld hl,l6bc2
	ld de,l6bc9
	ld b,#06
	call l681a
	ld b,#07
	call l681a
	ld b,#0b
	call l681a
	ld b,#0d
	call l681a
	ld de,l6bc9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l6ccd
	call l67f3
	ld hl,l6cfb
	call l67f3
	ld hl,l6d29
.l67f3
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
	jr nz,l6808
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l6808
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
.l681a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l6ba3
.l6825
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l6ba3
.l683d
	ld a,(l6bc9)
	or a
	jp nz,l68f5
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l68f5
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l6825
	or a
	jp z,l68ea
	ld r,a
	and #7f
	cp #10
	jr c,l68c5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l6a3d
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
	jr z,l689e
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l689e
	rrca
	ld c,a
	ld hl,l6d3e
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
	jr z,l68bd
	ld (ix+#1e),b
.l68bd
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l68de
.l68c5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l6bce
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
.l68de
	ld a,d
	or a
	jr nz,l68ec
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l68ec
.l68ea
	ld a,(hl)
	inc hl
.l68ec
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l68f5
	ld a,(ix+#17)
	or a
	jr nz,l690b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l690b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l6921
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l6921
	ld a,(ix+#0d)
	or a
	jr z,l692f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l694d
.l692f
	ld a,(ix+#1a)
	or a
	jp z,l6954
	ld c,a
	cp #03
	jr nz,l693c
	xor a
.l693c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l694d
	ld a,(ix+#18)
	dec c
	jr z,l694d
	ld a,(ix+#19)
.l694d
	add (ix+#07)
	ld b,d
	call l6a3d
.l6954
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l697c
	dec (ix+#1b)
	jr nz,l697c
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l69b4
.l697c
	ld a,(ix+#29)
	or a
	jr z,l69b4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l69ab
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l69a2
	ld (ix+#29),#ff
	jr l69ab
.l69a2
	cp (ix+#2b)
	jr nz,l69ab
	ld (ix+#29),#01
.l69ab
	ld b,d
	or a
	jp p,l69b1
	dec b
.l69b1
	ld c,a
	jr l69bf
.l69b4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l69bf
	pop hl
	bit 7,(ix+#14)
	jr z,l69c8
	ld h,d
	ld l,d
.l69c8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l6ba3
	ld c,h
	ld a,(ix+#02)
	call l6ba3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l6a1b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l6a0a
	dec (ix+#09)
	jr nz,l6a0a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l6a02
	xor a
	jr l6a07
.l6a02
	cp #10
	jr nz,l6a07
	dec a
.l6a07
	ld (ix+#1e),a
.l6a0a
	ld a,b
	sub (ix+#1e)
	jr nc,l6a11
	xor a
.l6a11
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l6ba3
.l6a1b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l6bca)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l6a39
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l6a39
	ld (l6bca),hl
	ret
.l6a3d
	ld hl,l6bec
	cp #61
	jr nc,l6a47
	add a
	ld c,a
	add hl,bc
.l6a47
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l6a51
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l6b76
	ld (ix+#1e),a
	jp l68de
.l6a63
	dec b
.l6a64
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l6a6f
	neg
.l6a6f
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
	jp l68de
.l6a85
	dec b
	jr l6a89
.l6a88
	inc b
.l6a89
	call l6b76
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l68de
.l6a98
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
	jp l6b5b
.l6aa9
	ld a,(hl)
	inc hl
	or a
	jr z,l6acb
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
.l6acb
	ld (ix+#29),a
	jp l68de
.l6ad1
	dec hl
	ld a,(hl)
	and #0f
	ld (l6bcd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l6bcc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l68de
.l6aeb
	ld a,(hl)
	or a
	jr z,l6afc
	call l6b78
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l68de
.l6afc
	ld hl,#0101
	ld (l6bc8),hl
	jp l68de
.l6b05
	call l6b76
	ld (ix+#1e),a
	jp l68de
.l6b0e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l6b87
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l6b87
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l68de
.l6b30
	ld a,(hl)
	inc hl
	ld (l6bc7),a
	jp l68de
.l6b38
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
	jp l68de
.l6b57
	call l6b76
	add a
.l6b5b
	ld b,#00
	ld c,a
	push hl
	ld hl,l6dbe
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l68de
.l6b76
	ld a,(hl)
	inc hl
.l6b78
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
.l6b87
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6d3e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l6ba3
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
.l6bc2
	ret
.l6bca equ $ + 7
.l6bc9 equ $ + 6
.l6bc8 equ $ + 5
.l6bc7 equ $ + 4
.l6bc5 equ $ + 2
.l6bc3
	db #01,#28,#00,#00,#03,#09,#01,#01
.l6bcd equ $ + 2
.l6bcc equ $ + 1
	db #28,#00,#00
.l6bce
	dw l6a51,l6a64,l6a63,l6a88
	dw l6a85,l6a98,l6aa9,l6ad1
	dw l6aeb,l6ad1,l6b05,l6b0e
	dw l6b30,l6b38,l6b57
.l6bec
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
.l6cb2 equ $ + 4
.l6cae
	db #08,#00,#01,#08,#00,#00,#00,#00
.l6cbc equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6ccd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#0a
	db #16,#6f,#e1,#6e,#00,#ff,#00,#00
.l6cdc equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l6ce0 equ $ + 2
	db #03,#10,#ef,#00,#00,#30,#00,#00
.l6cea equ $ + 4
	db #00,#00,#00,#00,#de,#6d,#1e,#6e
	db #3e,#6e,#09,#00,#03,#1d,#00,#00
.l6cfb equ $ + 5
	db #00,#00,#00,#00,#07,#01,#bc,#6f
	db #f3,#6e,#00,#50,#01,#01,#01,#00
.l6d0a equ $ + 4
	db #02,#fe,#01,#01,#0a,#04,#05,#20
.l6d0e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6d18 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l6d29 equ $ + 3
	db #00,#00,#00,#0a,#16,#6f,#05,#6f
	db #00,#ff,#00,#00,#00,#00,#00,#00
.l6d38 equ $ + 2
	db #00,#00,#de,#6e,#f0,#6e,#02,#6f
.l6d3e
	db #44,#03,#f4,#2a,#04,#3b,#24,#04
	db #f4,#3a,#34,#03,#4c,#03,#7c,#5c
	db #3c,#f3,#ec,#3e,#c0,#17,#20,#a0
	db #c4,#17,#b4,#17,#cc,#1f,#f0,#f0
	db #cb,#22,#84,#db,#c4,#1b,#b4,#b4
	db #de,#6d,#1e,#6e,#3e,#6e,#09,#00
	db #bc,#23,#c4,#19,#c0,#19,#20,#30
	db #c0,#17,#c4,#1b,#c8,#17,#f0,#f0
	db #c8,#1f,#f4,#4a,#c4,#1b,#f4,#f4
	db #c4,#1b,#cc,#25,#cc,#25,#fc,#fc
	db #be,#25,#f4,#46,#c0,#17,#20,#20
	db #c0,#17,#c0,#17,#c8,#21,#f0,#f0
	db #c8,#1f,#f4,#4a,#c4,#1b,#24,#20
	db #5e,#6e,#9e,#6e,#be,#6e,#16,#0a
	db #cc,#23,#f0,#46,#c4,#17,#20,#20
	db #c0,#17,#c4,#1b,#cc,#1b,#f4,#f4
.l6dbe
	db #cc,#23,#f4,#46,#c4,#1b,#f4,#46
	db #c4,#1b,#cc,#23,#cc,#25,#cc,#23
	db #be,#15,#f0,#26,#f4,#2a,#f0,#26
	db #f0,#26,#f4,#7a,#f4,#4a,#f4,#4a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0e,#0c,#0a,#08,#06,#04,#02
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#01,#01,#01,#01,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#14,#6f,#00,#14,#6f,#02,#14
	db #6f,#06,#14,#6f,#04,#14,#6f,#80
	db #de,#6e,#00,#17,#6f,#00,#17,#6f
	db #02,#17,#6f,#06,#17,#6f,#04,#17
	db #6f,#80,#f0,#6e,#00,#14,#6f,#00
	db #14,#6f,#02,#14,#6f,#06,#14,#6f
	db #04,#14,#6f,#80,#02,#6f,#00,#40
	db #ff,#40,#5b,#17,#ac,#d7,#12,#40
	db #5b,#17,#b8,#d7,#12,#40,#5b,#17
	db #aa,#d7,#12,#40,#5b,#17,#b6,#d7
	db #12,#40,#5b,#17,#ac,#d7,#12,#40
	db #5b,#17,#b8,#d7,#12,#40,#5b,#17
	db #aa,#d7,#12,#40,#5b,#17,#b6,#d7
	db #12,#40,#5b,#17,#ac,#d7,#12,#40
	db #5b,#17,#b8,#d7,#12,#40,#5b,#17
	db #aa,#d7,#12,#40,#5b,#17,#b6,#d7
	db #12,#40,#5b,#17,#ac,#d7,#12,#40
	db #5b,#17,#b8,#d7,#12,#40,#5b,#17
	db #aa,#d7,#12,#40,#5b,#17,#b6,#d7
	db #12,#40,#5b,#17,#ac,#d7,#12,#40
	db #5b,#17,#b8,#d7,#12,#40,#5b,#17
	db #aa,#d7,#12,#40,#5b,#17,#b6,#d7
	db #12,#40,#5b,#17,#ac,#d7,#12,#40
	db #5b,#17,#b8,#d7,#12,#40,#5b,#17
	db #aa,#d7,#12,#40,#5b,#17,#b6,#d7
	db #12,#40,#5b,#17,#ac,#d7,#12,#40
	db #5b,#17,#b8,#d7,#12,#40,#5b,#17
	db #aa,#d7,#12,#40,#5b,#17,#b6,#d7
	db #12,#40,#5b,#17,#ac,#d7,#12,#40
	db #5b,#17,#b8,#d7,#12,#40,#5b,#17
	db #aa,#d7,#12,#40,#5b,#17,#b6,#d7
	db #12,#ff,#00
;
.music_info
	db "Optix - Intro 1 (1995)(Benediction)(Eliot)",0
	db "ST-128 Module",0

	read "music_end.asm"
