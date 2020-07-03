; Music of Soundtracker 128Kb Intro (1993)(TGS)()(ST-128 Module)
; Ripped by Megachur the 25/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SOUNDT1I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 25
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4dd4

	read "music_header.asm"

	jp l4ddd
	jp l4e71
	jp l4e55
;
.init_music
.l4ddd
;
	xor a
	ld hl,l5388
	call l4e4e
	ld hl,l53b6
	call l4e4e
	ld hl,l53e4
	call l4e4e
	ld ix,l5384
	ld iy,l540e
	ld de,#002e
	ld b,#03
.l4dfd
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
	djnz l4dfd
	ld hl,l529d
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
	ld (l5299),hl
	ld (l529b),hl
	ld a,#0c
	ld c,d
	call l5279
	ld a,#0d
	ld c,d
	jp l5279
.l4e4e
	ld b,#2a
.l4e50
	ld (hl),a
	inc hl
	djnz l4e50
	ret
;
.stop_music
.l4e55
;
	ld a,#07
	ld c,#3f
	call l5279
	ld a,#08
	ld c,#00
	call l5279
	ld a,#09
	ld c,#00
	call l5279
	ld a,#0a
	ld c,#00
	jp l5279
;
.play_music
.l4e71
;
	ld hl,l529f
	dec (hl)
	ld ix,l5384
	ld bc,l5392
	call l4f13
	ld ix,l53b2
	ld bc,l53c0
	call l4f13
	ld ix,l53e0
	ld bc,l53ee
	call l4f13
	ld hl,l5298
	ld de,l529f
	ld b,#06
	call l4ef0
	ld b,#07
	call l4ef0
	ld b,#0b
	call l4ef0
	ld b,#0d
	call l4ef0
	ld de,l529f
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l53a3
	call l4ec9
	ld hl,l53d1
	call l4ec9
	ld hl,l53ff
.l4ec9
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
	jr nz,l4ede
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l4ede
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
.l4ef0
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5279
.l4efb
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5279
.l4f13
	ld a,(l529f)
	or a
	jp nz,l4fcb
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l4fcb
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l4efb
	or a
	jp z,l4fc0
	ld r,a
	and #7f
	cp #10
	jr c,l4f9b
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l5113
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
	jr z,l4f74
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l4f74
	rrca
	ld c,a
	ld hl,l5414
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
	jr z,l4f93
	ld (ix+#1e),b
.l4f93
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l4fb4
.l4f9b
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l52a4
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
	add l
	add a
.l4fb4
	ld a,d
	or a
	jr nz,l4fc2
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l4fc2
.l4fc0
	ld a,(hl)
	inc hl
.l4fc2
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l4fcb
	ld a,(ix+#17)
	or a
	jr nz,l4fe1
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l4fe1
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l4ff7
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l4ff7
	ld a,(ix+#0d)
	or a
	jr z,l5005
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l5023
.l5005
	ld a,(ix+#1a)
	or a
	jp z,l502a
	ld c,a
	cp #03
	jr nz,l5012
	xor a
.l5012
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l5023
	ld a,(ix+#18)
	dec c
	jr z,l5023
	ld a,(ix+#19)
.l5023
	add (ix+#07)
	ld b,d
	call l5113
.l502a
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l5052
	dec (ix+#1b)
	jr nz,l5052
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l508a
.l5052
	ld a,(ix+#29)
	or a
	jr z,l508a
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l5081
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5078
	ld (ix+#29),#ff
	jr l5081
.l5078
	cp (ix+#2b)
	jr nz,l5081
	ld (ix+#29),#01
.l5081
	ld b,d
	or a
	jp p,l5087
	dec b
.l5087
	ld c,a
	jr l5095
.l508a
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l5095
	pop hl
	bit 7,(ix+#14)
	jr z,l509e
	ld h,d
	ld l,d
.l509e
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5279
	ld c,h
	ld a,(ix+#02)
	call l5279
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l50f1
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l50e0
	dec (ix+#09)
	jr nz,l50e0
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l50d8
	xor a
	jr l50dd
.l50d8
	cp #10
	jr nz,l50dd
	dec a
.l50dd
	ld (ix+#1e),a
.l50e0
	ld a,b
	sub (ix+#1e)
	jr nc,l50e7
	xor a
.l50e7
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5279
.l50f1
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l52a0)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l510f
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l510f
	ld (l52a0),hl
	ret
.l5113
	ld hl,l52c2
	cp #61
	jr nc,l511d
	add a
	ld c,a
	add hl,bc
.l511d
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5127
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l524c
	ld (ix+#1e),a
	jp l4fb4
.l5139
	dec b
.l513a
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l5145
	neg
.l5145
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
	jp l4fb4
.l515b
	dec b
	jr l515f
.l515e
	inc b
.l515f
	call l524c
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l4fb4
.l516e
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
	jp l5231
.l517f
	ld a,(hl)
	inc hl
	or a
	jr z,l51a1
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
.l51a1
	ld (ix+#29),a
	jp l4fb4
.l51a7
	dec hl
	ld a,(hl)
	and #0f
	ld (l52a3),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l52a2),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l4fb4
.l51c1
	ld a,(hl)
	or a
	jr z,l51d2
	call l524e
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l4fb4
.l51d2
	ld hl,#0101
	ld (l529e),hl
	jp l4fb4
.l51db
	call l524c
	ld (ix+#1e),a
	jp l4fb4
.l51e4
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l525d
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l525d
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l4fb4
.l5206
	ld a,(hl)
	inc hl
	ld (l529d),a
	jp l4fb4
.l520e
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
	jp l4fb4
.l522d
	call l524c
	add a
.l5231
	ld b,#00
	ld c,a
	push hl
	ld hl,l5494
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l4fb4
.l524c
	ld a,(hl)
	inc hl
.l524e
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
.l525d
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l5414
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l5279
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
.l5298
	ret
.l52a0 equ $ + 7
.l529f equ $ + 6
.l529e equ $ + 5
.l529d equ $ + 4
.l529b equ $ + 2
.l5299
	db #00,#00,#00,#00,#00,#00,#00,#00
.l52a3 equ $ + 2
.l52a2 equ $ + 1
	db #38,#00,#00
.l52a4
	dw l5127,l513a,l5139,l515e
	dw l515b,l516e,l517f,l51a7
	dw l51c1,l51a7,l51db,l51e4
	dw l5206,l520e,l522d
.l52c2
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
.l5384 equ $ + 2
	dw #000f,#0008
.l5388 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l5392 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l53a3 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l53b2 equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l53b6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l53c0 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l53d1 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l53e4 equ $ + 6
.l53e0 equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l53ee
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l53ff equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5414 equ $ + 6
.l540e
	db #74,#56,#9b,#56,#c2,#56,#b4,#54
	db #f4,#54,#14,#55,#00,#00,#c0,#0d
	db #5b,#0b,#7a,#50,#94,#44,#b4,#54
	db #34,#55,#14,#55,#1a,#06,#d7,#54
	db #95,#0b,#da,#52,#74,#45,#57,#55
	db #f7,#53,#37,#54,#51,#45,#bc,#17
	db #ba,#53,#da,#53,#c6,#fb,#89,#0b
	db #6c,#09,#6c,#09,#c6,#fb,#89,#0b
	db #97,#52,#57,#54,#51,#45,#a6,#0d
	db #77,#54,#b7,#54,#31,#47,#b2,#0d
	db #f7,#54,#37,#55,#b1,#47,#54,#55
	db #94,#55,#14,#55,#16,#0a,#d7,#55
	db #f7,#55,#89,#0b,#e3,#fd,#89,#0b
	db #89,#0b,#89,#0b,#e3,#fd,#89,#0b
	db #89,#0b,#89,#0b,#e3,#fd,#89,#0b
	db #a6,#0d,#a6,#0d,#00,#00,#b4,#55
.l5494 equ $ + 6
	db #f4,#55,#14,#56,#00,#00,#a6,#0d
	db #34,#56,#a6,#0d,#a6,#0d,#a6,#0d
	db #54,#56,#a6,#0d,#a6,#0d,#a6,#0d
	db #a6,#0d,#a6,#0d,#a6,#0d,#a6,#0d
	db #a6,#0d,#a6,#0d,#a6,#0d,#00,#00
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
	db #0c,#0d,#0d,#0d,#0d,#0d,#00,#00
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
	db #07,#08,#08,#0a,#09,#09,#00,#00
	db #fc,#fc,#f7,#f7,#00,#00,#fc,#fc
	db #f7,#f7,#00,#00,#fc,#fc,#f7,#f7
	db #00,#00,#fc,#fc,#f7,#f7,#00,#00
	db #fc,#fc,#f7,#f7,#00,#00,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#00,#e9
	db #56,#00,#e9,#56,#00,#ec,#56,#00
	db #0e,#57,#00,#ec,#56,#00,#0e,#57
	db #00,#20,#57,#00,#36,#57,#00,#20
	db #57,#00,#36,#57,#00,#54,#57,#00
	db #9a,#57,#80,#7a,#56,#00,#c5,#57
	db #00,#c5,#57,#00,#c5,#57,#00,#e8
	db #57,#00,#02,#58,#00,#0b,#58,#00
	db #02,#58,#00,#0b,#58,#00,#14,#58
	db #00,#39,#58,#00,#14,#58,#00,#39
	db #58,#80,#a1,#56,#00,#5e,#58,#00
	db #5e,#58,#00,#5e,#58,#00,#8f,#58
	db #00,#5e,#58,#00,#8f,#58,#00,#5e
	db #58,#00,#8f,#58,#00,#5e,#58,#00
	db #8f,#58,#00,#5e,#58,#00,#8f,#58
	db #80,#c8,#56,#00,#20,#ff,#4c,#00
	db #04,#45,#00,#03,#c5,#00,#cc,#00
	db #4a,#00,#02,#48,#00,#02,#ca,#00
	db #48,#00,#08,#48,#00,#02,#47,#00
	db #03,#48,#00,#03,#4a,#00,#02,#ff
	db #4c,#00,#04,#45,#00,#02,#51,#00
	db #06,#cc,#00,#48,#00,#02,#4a,#00
	db #11,#ff,#45,#a0,#06,#47,#a0,#06
	db #48,#a0,#02,#4c,#a0,#06,#45,#a0
	db #04,#47,#a0,#02,#48,#a0,#06,#ff
	db #51,#a0,#06,#4f,#a0,#06,#4a,#a0
	db #06,#45,#a0,#02,#47,#a0,#02,#48
	db #a0,#02,#ca,#a0,#48,#a0,#02,#47
	db #a0,#02,#45,#a0,#03,#ff,#4c,#0b
	db #30,#4c,#0b,#13,#45,#0b,#20,#45
	db #0b,#13,#45,#0b,#10,#4c,#0b,#10
	db #4a,#0b,#10,#45,#0b,#13,#48,#0b
	db #10,#4a,#0b,#13,#4a,#0b,#10,#48
	db #0b,#10,#4a,#0b,#15,#4a,#0b,#13
	db #48,#0b,#23,#4a,#0b,#15,#48,#0b
	db #25,#48,#0b,#20,#47,#0b,#10,#48
	db #0b,#23,#48,#0b,#10,#48,#0b,#25
	db #4a,#0b,#20,#ff,#4c,#0b,#30,#4c
	db #0b,#13,#45,#0b,#20,#51,#0b,#10
	db #45,#0b,#23,#51,#0b,#13,#45,#0b
	db #25,#4c,#0b,#10,#48,#0b,#20,#4a
	db #0b,#10,#48,#0b,#23,#4a,#0b,#13
	db #48,#0b,#25,#4a,#0b,#b5,#ff,#2d
	db #01,#20,#ad,#00,#2d,#00,#07,#2d
	db #00,#02,#2d,#00,#02,#29,#00,#02
	db #2b,#00,#02,#ab,#00,#2b,#00,#07
	db #30,#00,#02,#2f,#00,#02,#2b,#00
	db #02,#ff,#29,#01,#20,#a9,#00,#29
	db #00,#07,#24,#00,#02,#29,#00,#02
	db #2d,#00,#02,#2b,#00,#02,#ab,#00
	db #2b,#00,#0d,#ff,#48,#2f,#05,#10
	db #47,#2f,#01,#10,#ff,#45,#2f,#01
	db #10,#47,#2f,#01,#10,#ff,#48,#0f
	db #35,#48,#00,#03,#48,#00,#04,#48
	db #00,#02,#48,#00,#02,#48,#00,#02
	db #47,#0f,#31,#47,#00,#03,#47,#00
	db #04,#47,#00,#02,#47,#00,#02,#47
	db #00,#02,#ff,#45,#0f,#31,#45,#00
	db #03,#45,#00,#04,#45,#00,#02,#45
	db #00,#02,#45,#00,#02,#47,#0f,#31
	db #47,#00,#03,#47,#00,#04,#47,#00
	db #02,#47,#00,#02,#47,#00,#02,#ff
	db #2d,#08,#16,#02,#ad,#08,#16,#ad
	db #08,#16,#38,#f1,#60,#2d,#08,#16
	db #02,#38,#f1,#20,#29,#08,#1c,#02
	db #2b,#08,#19,#02,#ab,#08,#19,#ab
	db #08,#19,#38,#f1,#60,#30,#08,#13
	db #02,#38,#f1,#20,#2b,#08,#19,#02
	db #ff,#29,#08,#1c,#02,#a9,#08,#1c
	db #a9,#08,#1c,#38,#f1,#60,#24,#08
	db #19,#02,#38,#f1,#20,#2d,#08,#16
	db #02,#2b,#08,#19,#02,#ab,#08,#19
	db #ab,#08,#19,#38,#f1,#50,#38,#f0
	db #03,#38,#f0,#02,#38,#f0,#02,#ff
;
.music_info
	db "Soundtracker 128Kb Intro (1993)(TGS)()",0
	db "ST-128 Module",0

	read "music_end.asm"
