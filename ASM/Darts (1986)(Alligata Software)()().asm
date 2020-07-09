; Music of Darts (1986)(Alligata Software)()()
; Ripped by Megachur the 28/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "DARTS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 28
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #34ab

	read "music_header.asm"

	jp l34b7
	jp l3590
	jp l360f
	jp l3561
;
.init_music
.l34b7
;
	push af
	xor a
	ld (l39c0),a
	pop af
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l39c1
	add hl,bc
	ld ix,l3504
	ld c,#1f
	ld a,#03
.l34d0
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
	jr nz,l34d0
	inc a
	ld (l363b),a
	ld (l39c0),a
	ret
.l3504
	db #00
.l3508 equ $ + 3
.l3507 equ $ + 2
	dw l3bfd,l3a2d
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#20,#28,#0a,#00
	db #f1,#01,#05,#00,#0f,#02,#01,#02
.l3523 equ $ + 2
	db #40,#09,#00
.l3527 equ $ + 3
.l3526 equ $ + 2
	dw l3c06,l3a35
	db #06,#00,#00,#00
	dw l39ad,l39b0
	db #00,#00,#00,#01,#20,#2b,#0a,#00
	db #f1,#01,#05,#00,#0f,#02,#01,#03
.l3542 equ $ + 2
	db #60,#12,#10
.l3546 equ $ + 3
.l3545 equ $ + 2
	dw l3c0f,l3a3d
	db #06,#00,#00,#00
	dw l39b1,l39b3
	db #00,#00,#00,#01,#20,#24,#0a,#00
	db #f1,#01,#05,#00,#0f,#02,#01,#03
	db #60,#24
.l3561
	ld a,#01
	ld (l39c0),a
	ret
;
; sound fx ?
;
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l39c1
	add hl,bc
	ld a,(hl)
	ld (l3507),a
	inc hl
	ld a,(hl)
	ld (l3508),a
	inc hl
	ld a,(hl)
	ld (l3526),a
	inc hl
	ld a,(hl)
	ld (l3527),a
	inc hl
	ld a,(hl)
	ld (l3545),a
	inc hl
	ld a,(hl)
	ld (l3546),a
	ret
;
.play_music
.l3590
;
	ld a,(l39c0)
	and a
	jp z,l3e70
.l3598 equ $ + 1
	ld a,#01
	ld (l35e5),a
	ld hl,l363b
	dec (hl)
	jr nz,l35bd
	ld b,(hl)
	ld ix,l3504
	call l3701
	ld ix,l3523
	call l3701
	ld ix,l3542
	call l3701
	ld hl,l363b
.l35bc equ $ + 1
	ld (hl),#06
.l35bd
	ld ix,l3504
	call l37a3
	ld (l38b4),hl
	ld (l38bc),a
	ld ix,l3523
	call l37a3
	ld (l38b6),hl
	ld (l38bd),a
	ld ix,l3542
	call l37a3
	ld (l38b8),hl
	ld (l38be),a
.l35e5 equ $ + 1
	ld a,#01
	ld (l38ba),a
	ld hl,l38c1
	ld d,#0d
.l35ee
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
	jp p,l35ee
	ret
;
.stop_music
.l360f
;
	xor a
	ld (l39c0),a
.l3613
	ld de,#0d00	; #d000 modified by Megachur
.l3616
	call l3620
	dec e
	jp p,l3616
	ld de,#073f
.l3620
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
.l363b
	db #00,#bc,#a4,#a8,#ad,#6b,#9a,#95
	db #10,#84,#7c,#4a,#39,#58,#a9,#01
	xor a
	ld (l39c0),a
	pop hl
	jp l3613
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
	jr nz,l3675
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l3675
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l370f
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l3899
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l370f
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l3899
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l370f
	ld hl,l3899
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr l370f
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l370f
	ld a,(de)
	inc de
	ld (l3598),a
	jr l370f
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l370f
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l370f
	ld (ix+#1d),b
	jr l370f
	ld (ix+#1d),#40
	jr l370f
	ld (ix+#1d),#c0
	jr l370f
	set 1,(ix+#00)
	jr l370f
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l3732
.l3701
	dec (ix+#10)
	jr nz,l373f
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l370f
	ld a,(de)
	inc de
	and a
	jp m,l3750
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l3732
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l373f
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l374c
	inc (ix+#12)
	ret
.l374c
	dec (ix+#12)
	ret
.l3750
	cp #b8
	jr c,l379b
	add #20
	jr c,l3780
	add #10
	jr c,l3786
	add #10
	jr nc,l3779
	ld c,a
	ld hl,l3982
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr l370f
.l3779
	add #09
	ld (l35bc),a
	jr l370f
.l3780
	inc a
	ld (ix+#11),a
	jr l370f
.l3786
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
	jp l370f
.l379b
	ld hl,l35bc
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l37a3
	ld c,(ix+#00)
	bit 5,c
	jr z,l37ee
	ld a,(ix+#16)
	sub #10
	jr nc,l37d6
	bit 6,c
	jr z,l37db
	add (ix+#13)
	jr nc,l37bb
	sbc a
.l37bb
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l37d1
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l37ee
.l37d1
	ld (ix+#18),a
	jr l37ee
.l37d6
	ld (ix+#16),a
	jr l37ee
.l37db
	cpl
	sub #0f
	add (ix+#13)
	jr c,l37e4
	sub a
.l37e4
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l37ee
	res 5,c
.l37ee
	ld a,(ix+#12)
	bit 4,c
	jr z,l3810
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l3808
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l3808
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l3810
	ld hl,l38c2
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l386a
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l3833
	bit 0,c
	jr nz,l3851
.l3833
	bit 5,l
	jr nz,l3843
	sub (ix+#1b)
	jr nc,l384e
	set 5,(ix+#1d)
	sub a
	jr l384e
.l3843
	add (ix+#1b)
	cp b
	jr c,l384e
	res 5,(ix+#1d)
	ld a,b
.l384e
	ld (ix+#1c),a
.l3851
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l385c
	dec d
.l385c
	add #a0
	jr c,l3868
.l3860
	sla e
	rl d
	add #18
	jr nc,l3860
.l3868
	add hl,de
	ex de,hl
.l386a
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l3895
	ld b,(ix+#0e)
	djnz l3892
	ld c,(ix+#0d)
	bit 7,c
	jr z,l3881
	dec b
.l3881
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l3895
.l3892
	ld (ix+#0e),b
.l3895
	cpl
	and #03
.l3899 equ $ + 1
	ld a,#38
	jr nz,l38a6
	ld a,(l3598)
	xor #08
	ld (l35e5),a
	ld a,#07
.l38a6
	ld hl,l38bb
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l38b4
	ld a,e
.l38b6 equ $ + 1
	ld bc,#0140
.l38b8
	ret p
.l38be equ $ + 5
.l38bd equ $ + 4
.l38bc equ $ + 3
.l38bb equ $ + 2
.l38ba equ $ + 1
	db #00,#01,#38,#0a,#0a,#0a,#00,#00
.l38c1
	db #00
.l38c2
	dw #0ef8,#0e10,#0d60,#0c80
	dw #0bd8,#0b28,#0a88,#09f0
	dw #0960,#08e0,#0858,#07e0
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
.l3982
	db #0d
	db #10,#13,#17,#1b,#1e,#21,#24,#27
	db #29,#2b,#2d,#2f,#00,#03,#07,#87
	db #00,#04,#07,#87,#00,#03,#07,#0c
	db #87,#00,#04,#07,#0c,#87,#07,#0c
	db #0f,#87,#07,#0c,#10,#87,#03,#07
.l39b1 equ $ + 6
.l39b0 equ $ + 5
.l39ad equ $ + 2
	db #0c,#87,#04,#07,#0c,#87,#00,#0c
.l39b3
	db #87,#00,#04,#87,#00,#03,#87,#00
.music_end equ $ + 5
.l39c0 equ $ + 5
	db #05,#87,#00,#07,#87,#00
.l39c1
	dw l39d3,l39ed,l3a07,l3a21
	dw l3a25,l3a29,l3a2d,l3a35
.l39d3 equ $ + 2
	dw l3a3d,l3a45,l3abf,l3a45
	dw l3abf,l3b34,l3b95,l3b34
	dw l3b95,l3a45,l3abf,l3a45
.l39ed equ $ + 4
	dw l3abf,#0000,l3c10,l3c45
	dw l3c10,l3c45,l3c76,l3ca7
	dw l3c76,l3ca7,l3c10,l3c45
.l3a07 equ $ + 6
	dw l3c10,l3c45,#0000,l3cd8
	dw l3d09,l3cd8,l3d09,l3d3a
	dw l3d5f,l3d3a,l3d5f,l3d84
	dw l3d84,l3d84,l3d84,#0000
.l3a25 equ $ + 4
.l3a21
	dw l3d8c,#0000,l3db6,#0000
.l3a2d equ $ + 4
.l3a29
	dw l3dd5,#0000,l3a45,l3abf
.l3a35 equ $ + 4
	dw l3bf6,#0000,l3c10,l3c45
.l3a3d equ $ + 4
	dw l3bff,#0000,l3cd8,l3d09
	dw l3c07,#0000
.l3a45
	db #bd,#88,#01,#02,#82,#df,#00,#51
	db #07,#8a,#e1,#18,#df,#00,#03,#07
	db #8b,#e0,#89,#01,#00,#00,#df,#00
	db #61,#07,#8a,#e1,#13,#df,#00,#02
	db #07,#8b,#e0,#89,#01,#00,#00,#df
	db #00,#61,#07,#8a,#e1,#18,#df,#00
	db #02,#07,#8b,#e0,#89,#01,#00,#00
	db #df,#00,#61,#07,#8a,#e1,#13,#df
	db #00,#02,#07,#8b,#e0,#89,#01,#00
	db #00,#df,#00,#61,#07,#8a,#e1,#18
	db #df,#00,#02,#07,#8b,#e0,#89,#01
	db #00,#00,#df,#00,#61,#07,#8a,#e1
	db #13,#df,#00,#02,#07,#8b,#e0,#89
	db #01,#00,#00,#df,#00,#61,#07,#8a
	db #e1,#18,#e0,#18,#24,#17,#23,#16
.l3abf equ $ + 2
	db #22,#87,#df,#00,#61,#07,#8a,#e1
	db #15,#df,#00,#02,#07,#8b,#e0,#89
	db #01,#00,#00,#df,#00,#61,#07,#8a
	db #e1,#10,#df,#00,#02,#07,#8b,#e0
	db #89,#01,#00,#00,#df,#00,#61,#07
	db #8a,#e1,#15,#df,#00,#02,#07,#8b
	db #e0,#89,#01,#00,#00,#df,#00,#61
	db #07,#8a,#e1,#10,#df,#00,#02,#07
	db #8b,#e0,#89,#01,#00,#00,#df,#00
	db #61,#07,#8a,#e1,#15,#df,#00,#02
	db #07,#8b,#e0,#89,#01,#00,#00,#df
	db #00,#61,#07,#8a,#e1,#10,#df,#00
	db #02,#07,#8b,#e0,#89,#01,#00,#00
	db #df,#00,#61,#07,#8a,#e1,#15,#e0
.l3b34 equ $ + 7
	db #15,#21,#16,#22,#17,#23,#87,#df
	db #00,#61,#07,#8a,#e1,#13,#df,#00
	db #02,#07,#8b,#e0,#89,#01,#00,#00
	db #df,#00,#61,#07,#8a,#e1,#0e,#df
	db #00,#02,#07,#8b,#e0,#89,#01,#00
	db #00,#df,#00,#61,#07,#8a,#e1,#13
	db #e0,#13,#1f,#12,#1e,#10,#1c,#df
	db #00,#61,#07,#8a,#e1,#13,#df,#00
	db #02,#07,#8b,#e0,#89,#01,#00,#00
	db #df,#00,#61,#07,#8a,#e1,#0e,#df
	db #00,#02,#07,#8b,#e0,#89,#01,#00
	db #00,#df,#00,#61,#07,#8a,#e1,#13
	db #e0,#10,#1c,#11,#1d,#12,#1e,#87
.l3b95
	db #df,#00,#61,#07,#8a,#e1,#11,#df
	db #00,#02,#07,#8b,#e0,#89,#01,#00
	db #00,#df,#00,#61,#07,#8a,#e1,#18
	db #df,#00,#02,#07,#8b,#e0,#89,#01
	db #00,#00,#df,#00,#61,#07,#8a,#e1
	db #11,#e0,#11,#1d,#10,#1c,#0e,#1a
	db #df,#00,#61,#07,#8a,#e1,#11,#df
	db #00,#02,#07,#8b,#e0,#89,#01,#00
	db #00,#df,#00,#61,#07,#8a,#e1,#18
	db #df,#00,#02,#07,#8b,#e0,#89,#01
	db #00,#00,#df,#00,#61,#07,#8a,#e1
	db #11,#e0,#0e,#1a,#0f,#1b,#10,#1c
.l3bf6 equ $ + 1
	db #87,#df,#00,#f1,#05,#8a,#ff,#28
.l3bff equ $ + 2
.l3bfd
	db #8e,#87,#df,#00,#f1,#05,#8a,#ff
.l3c07 equ $ + 2
.l3c06 equ $ + 1
	db #2b,#87,#df,#00,#f1,#05,#8a,#ff
.l3c10 equ $ + 3
.l3c0f equ $ + 2
	db #c8,#24,#87,#8a,#88,#01,#02,#82
	db #df,#00,#11,#07,#e1,#24,#e0,#c5
	db #24,#c5,#24,#e1,#c5,#24,#cc,#2b
	db #e1,#24,#e0,#c5,#24,#c5,#24,#e1
	db #c5,#24,#cc,#2b,#e1,#24,#e0,#c5
	db #24,#c5,#24,#e1,#c5,#24,#cc,#2b
	db #df,#00,#51,#07,#e7,#c7,#30,#87
.l3c45
	db #8a,#88,#01,#02,#82,#df,#00,#11
	db #07,#e1,#21,#e0,#c5,#21,#c5,#21
	db #e1,#c5,#21,#c1,#2d,#e1,#21,#e0
	db #c5,#21,#c5,#21,#e1,#c5,#21,#c1
	db #2d,#e1,#21,#e0,#c5,#21,#c5,#21
	db #e1,#c5,#21,#c1,#2d,#e7,#c7,#2d
.l3c76 equ $ + 1
	db #87,#8a,#88,#01,#02,#82,#df,#00
	db #11,#07,#e1,#1f,#e0,#c5,#1f,#c5
	db #1f,#e1,#c5,#1f,#c1,#2b,#e1,#1f
	db #e0,#c5,#1f,#c5,#1f,#e1,#c5,#1f
	db #c1,#2b,#e1,#1f,#e0,#c5,#1f,#c5
	db #1f,#e1,#c5,#1f,#c1,#2b,#e7,#c7
.l3ca7 equ $ + 2
	db #2b,#87,#8a,#88,#01,#02,#82,#df
	db #00,#11,#07,#e1,#1d,#e0,#c5,#1d
	db #c5,#1d,#e1,#c5,#1d,#c1,#29,#e1
	db #1d,#e0,#c5,#1d,#c5,#1d,#e1,#c5
	db #1d,#c1,#29,#e1,#1d,#e0,#c5,#1d
	db #c5,#1d,#e1,#c5,#1d,#c1,#29,#e7
.l3cd8 equ $ + 3
	db #c7,#29,#87,#8a,#88,#01,#02,#82
	db #df,#00,#51,#07,#e0,#3c,#39,#37
	db #e1,#3c,#e0,#39,#e1,#37,#e0,#3c
	db #39,#37,#e1,#3c,#e0,#39,#e1,#37
	db #e0,#c8,#3c,#c8,#39,#c8,#37,#e1
	db #c8,#3c,#e0,#c8,#37,#e1,#c8,#34
.l3d09 equ $ + 4
	db #e7,#c8,#30,#87,#8a,#88,#01,#02
	db #82,#df,#00,#51,#07,#e0,#31,#2f
	db #2d,#e1,#31,#e0,#2f,#e1,#2d,#e0
	db #31,#2f,#2d,#e1,#31,#e0,#2f,#e1
	db #2d,#e0,#c8,#31,#c8,#2f,#c8,#2d
	db #e1,#c8,#31,#e0,#c8,#2f,#e1,#c8
.l3d3a equ $ + 5
	db #31,#e7,#c8,#2d,#87,#8a,#88,#01
	db #02,#82,#df,#00,#71,#05,#e5,#37
	db #e1,#36,#e5,#37,#e1,#36,#e0,#c8
	db #37,#c8,#36,#c8,#34,#e1,#c8,#37
	db #e0,#c8,#36,#e1,#c8,#34,#e7,#c8
.l3d5f equ $ + 2
	db #32,#87,#8a,#88,#01,#02,#82,#df
	db #00,#71,#05,#e5,#35,#e1,#34,#e5
	db #35,#e1,#34,#e0,#c8,#35,#c8,#34
	db #c8,#32,#e1,#c8,#35,#e0,#c8,#34
.l3d84 equ $ + 7
	db #e1,#c8,#32,#e7,#c8,#30,#87,#df
.l3d8c equ $ + 7
	db #00,#f1,#01,#ef,#80,#80,#87,#bd
	db #88,#01,#02,#82,#df,#00,#41,#05
	db #8a,#e1,#18,#18,#18,#18,#18,#18
	db #18,#18,#1f,#1f,#1f,#1f,#1f,#1f
	db #1f,#1f,#18,#18,#18,#18,#18,#18
	db #18,#18,#df,#00,#f1,#04,#ef,#18
.l3db6 equ $ + 1
	db #87,#88,#01,#02,#82,#df,#00,#61
	db #05,#8a,#e1,#24,#24,#eb,#24,#e1
	db #26,#26,#eb,#26,#e1,#2b,#2b,#eb
	db #24,#df,#00,#f1,#05,#ef,#24,#87
.l3dd5
	db #88,#01,#02,#82,#df,#00,#61,#05
	db #8a,#e1,#27,#27,#eb,#29,#e1,#2a
	db #2a,#eb,#2b,#e1,#2f,#2f,#eb,#30
	db #df,#00,#f1,#05,#ef,#c3,#30,#87
	di
	ld a,#03
	ld c,#00
	call l3e54
	ld a,#02
	ld c,#00
	call l3e54
	ld a,#07
	ld c,#3d
	call l3e54
	ld hl,#a488
	ld de,#0800
.l3e11
	ld b,#08
	jr l3e1e
.l3e15
	jp l3e18
.l3e18
	jp l3e1b
.l3e1b
	jp l3e1e
.l3e1e
	rlc (hl)
	push bc
	jr c,l3e2c
	ld a,#09
	ld c,#00
	call l3e54
	jr l3e34
.l3e2c
	ld a,#09
	ld c,#0f
	call l3e54
	nop
.l3e34
	pop bc
	jp l3e38
.l3e38
	jp l3e3b
.l3e3b
	jp l3e3e
.l3e3e
	jp l3e41
.l3e41
	jp l3e44
.l3e44
	jp l3e47
.l3e47
	jp l3e4a
.l3e4a
	djnz l3e15
	inc hl
	dec de
	ld a,d
	or e
	jr nz,l3e11
	ei
	ret
.l3e54
	push af
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	pop af
	out (c),a
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	xor a
	out (c),a
	ret
.l3e70
	call l3ecb
	ld c,#08
	ld hl,l3f60
.l3e78
	dec (hl)
	inc hl
	jr nz,l3e91
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	or a
	jr z,l3e89
	inc de
.l3e89
	ld (hl),d
	dec hl
	ld (hl),e
	dec hl
	ld e,a
	call l3f43
.l3e91
	inc hl
	inc hl
	inc hl
	dec (hl)
	inc hl
	jr nz,l3ec1
	push bc
	ld a,(hl)
	dec hl
	ld (hl),a
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
	dec hl
	ld a,b
	or c
	jr z,l3ec0
	ld d,b
	ld e,c
	pop bc
	push bc
	ld a,c
	sub #08
	add a
	ld c,a
	call l3f43
	ld e,d
	inc c
	call l3f43
.l3ec0
	pop bc
.l3ec1
	inc hl
	inc hl
	inc hl
	inc c
	ld a,c
	cp #0b
	jr nz,l3e78
	ret
.l3ecb
	ld a,(#3fb1)
	or a
	ret z
	ld hl,#3fb2
	dec (hl)
	jp p,l3ed9
	ld (hl),#02
.l3ed9
	ld a,(hl)
	push af
	add a
	add a
	add a
	ld hl,l3f60
	add l
	ld l,a
	jr nc,l3ee6
	inc h
.l3ee6
	ex de,hl
	ld a,(#3fb1)
	add a
	add a
	ld l,a
	add a
	add l
	ld hl,l3f72
	add l
	ld l,a
	jr nc,l3ef7
	inc h
.l3ef7
	ld bc,#0004
	ldir
	pop af
	push af
	push de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	add a
	ld c,a
	call l3f43
	ld e,d
	inc c
	call l3f43
	ld c,(hl)
	inc hl
	pop de
	pop af
	push de
	or a
	ld b,a
	ld a,#09
	jr z,l3f1e
.l3f18
	rlc a
	rlc c
	djnz l3f18
.l3f1e
	cpl
	ld b,a
	ld a,(#3fb4)
	and b
	or c
	and #3f
	ld (#3fb4),a
	ld c,#07
	ld e,a
	xor a
	ld (#3fb1),a
	call l3f43
	pop de
	ld bc,#0004
	ldir
	ld e,(hl)
	ld c,#06
	inc e
	dec e
	call nz,l3f43
	ret
.l3f43
	ld b,#f4
	out (c),c
	exx
	push bc
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	exx
	out (c),e
	exx
	add a
	out (c),a
	out (c),c
	pop bc
	exx
	ret
.l3f60
	dw #0101,#3fa4,#007b,#3fa9
	dw #0101,#3fa4,#007b,#3fa9
.l3f72 equ $ + 2
	dw #0101,#3fa4,#007b,#3fa9
	dw #0000,#0000,#0000,#0101
	dw l3f96,#0fa0,#0001,#a500
	dw #503f,#0801,l3f9b,#001e
.l3f96 equ $ + 6
	dw #0501,#a505,#4f3f,#0c0f
.l3f9b equ $ + 3
	dw #0408,#0f00,#0e0e,#0c0d
	dw #080a,#0004
;
.music_info
	db "Darts (1986)(Alligata Software)()",0
	db "",0

	read "music_end.asm"
