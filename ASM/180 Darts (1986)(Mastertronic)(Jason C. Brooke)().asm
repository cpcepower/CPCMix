; Music of 180 Darts (1986)(Mastertronic)(Jason C. Brooke)()
; Ripped by Megachur the 11/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "180DARTS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #34ab
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

	jp l34b7	; init
	jp l3590	; play
	jp l360f	; stop
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
.l3508 equ $ + 4
.l3507 equ $ + 3
.l3504
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l3527 equ $ + 4
.l3526 equ $ + 3
.l3523
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l3546 equ $ + 4
.l3545 equ $ + 3
.l3542
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
.l3561
	ld a,#01
	ld (l39c0),a
	ret
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
	jp z,#3e70
.l3598 equ $ + 1
	ld a,#00
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
	ld (hl),#01
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
	ld a,#00
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
;
.l360f
	xor a
	ld (l39c0),a
.l3613
	ld de,#0d00	; original is ld de,#d000 should be ld de,&0d00 !!!
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
.l38bb equ $ + 7
.l38ba equ $ + 6
.l38b8 equ $ + 4
.l38b6 equ $ + 2
.l38b4
	db #00,#00,#00,#00,#00,#00,#00,#38
.l38c1 equ $ + 5
.l38be equ $ + 2
.l38bd equ $ + 1
.l38bc
	db #0f,#0f,#0d,#00,#00,#00
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
	db #0c,#87,#04,#07,#0c,#87,#00,#0c
	db #87,#00,#04,#87,#00,#03,#87,#00
	db #05,#87,#00,#07,#87
.music_end
.l39c0
	db #00
.l39c1
	dw l39d3,l39ed,l3a07
	dw l3a21,l3a25,l3a29
	dw l3a2d,l3a35,l3a3d
.l39d3
	dw l3a45,l3abf,l3a45,l3abf
	dw l3b34,l3b95,l3b34,l3b95
	dw l3a45,l3abf,l3a45,l3abf
	dw #0000
.l39ed
	dw l3c10,l3c45,l3c10,l3c45
	dw l3c76,l3ca7,l3c76,l3ca7
	dw l3c10,l3c45,l3c10,l3c45
.l3a07 equ $ + 2
	dw #0000,l3cd8,l3d09,l3cd8
	dw l3d09,l3d3a,l3d5f,l3d3a
	dw l3d5f,l3d84,l3d84,l3d84
.l3a21 equ $ + 4
	dw l3d84,#0000,l3d8c,#0000
.l3a29 equ $ + 4
.l3a25
	dw l3db6,#0000,l3dd5,#0000
.l3a2d
	dw l3a45,l3abf,l3bf6,#0000
.l3a35
	dw l3c10,l3c45,l3bff,#0000
.l3a3d
	dw l3cd8,l3d09,l3c07,#0000
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
	db #8e,#87,#df,#00,#f1,#05,#8a,#ff
.l3c07 equ $ + 2
	db #2b,#87,#df,#00,#f1,#05,#8a,#ff
.l3c10 equ $ + 3
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
;
.music_info
	db "180 Darts (1986)(Mastertronic)(Jason C. Brooke)",0
	db "",0

	read "music_end.asm"
