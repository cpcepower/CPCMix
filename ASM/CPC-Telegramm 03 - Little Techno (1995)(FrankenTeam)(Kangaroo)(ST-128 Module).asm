; Music of CPC-Telegramm 03 - Little Techno (1995)(FrankenTeam)(Kangaroo)(ST-128 Module)
; Ripped by Megachur the 16/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "CPC03LIT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #093f

	read "music_header.asm"

	jp l0948
	jp l09dc
	jp l09c0
;
.init_music
.l0948
;
	xor a
	ld hl,l0ef3
	call l09b9
	ld hl,l0f21
	call l09b9
	ld hl,l0f4f
	call l09b9
	ld ix,l0eef
	ld iy,l0f79
	ld de,#002e
	ld b,#03
.l0968
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
	djnz l0968
	ld hl,l0e08
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
	ld (l0e04),hl
	ld (l0e06),hl
	ld a,#0c
	ld c,d
	call l0de4
	ld a,#0d
	ld c,d
	jp l0de4
.l09b9
	ld b,#2a
.l09bb
	ld (hl),a
	inc hl
	djnz l09bb
	ret
;
.stop_music
.l09c0
;
	ld a,#07
	ld c,#3f
	call l0de4
	ld a,#08
	ld c,#00
	call l0de4
	ld a,#09
	ld c,#00
	call l0de4
	ld a,#0a
	ld c,#00
	jp l0de4
;
.play_music
.l09dc
;
	ld hl,l0e0a
	dec (hl)
	ld ix,l0eef
	ld bc,l0efd
	call l0a7e
	ld ix,l0f1d
	ld bc,l0f2b
	call l0a7e
	ld ix,l0f4b
	ld bc,l0f59
	call l0a7e
	ld hl,l0e03
	ld de,l0e0a
	ld b,#06
	call l0a5b
	ld b,#07
	call l0a5b
	ld b,#0b
	call l0a5b
	ld b,#0d
	call l0a5b
	ld de,l0e0a
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#20
	ld hl,l0f0e
	call l0a34
	ld hl,l0f3c
	call l0a34
	ld hl,l0f6a
.l0a34
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
	jr nz,l0a49
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l0a49
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
.l0a5b
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l0de4
.l0a66
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l0de4
.l0a7e
	ld a,(l0e0a)
	or a
	jp nz,l0b36
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l0b36
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l0a66
	or a
	jp z,l0b2b
	ld r,a
	and #7f
	cp #10
	jr c,l0b06
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l0c7e
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
	jr z,l0adf
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l0adf
	rrca
	ld c,a
	ld hl,l0f7f
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
	jr z,l0afe
	ld (ix+#1e),b
.l0afe
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l0b1f
.l0b06
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l0e0f
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
.l0b1f
	ld a,d
	or a
	jr nz,l0b2d
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l0b2d
.l0b2b
	ld a,(hl)
	inc hl
.l0b2d
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l0b36
	ld a,(ix+#17)
	or a
	jr nz,l0b4c
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l0b4c
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l0b62
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l0b62
	ld a,(ix+#0d)
	or a
	jr z,l0b70
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l0b8e
.l0b70
	ld a,(ix+#1a)
	or a
	jp z,l0b95
	ld c,a
	cp #03
	jr nz,l0b7d
	xor a
.l0b7d
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l0b8e
	ld a,(ix+#18)
	dec c
	jr z,l0b8e
	ld a,(ix+#19)
.l0b8e
	add (ix+#07)
	ld b,d
	call l0c7e
.l0b95
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l0bbd
	dec (ix+#1b)
	jr nz,l0bbd
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l0bf5
.l0bbd
	ld a,(ix+#29)
	or a
	jr z,l0bf5
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l0bec
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l0be3
	ld (ix+#29),#ff
	jr l0bec
.l0be3
	cp (ix+#2b)
	jr nz,l0bec
	ld (ix+#29),#01
.l0bec
	ld b,d
	or a
	jp p,l0bf2
	dec b
.l0bf2
	ld c,a
	jr l0c00
.l0bf5
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l0c00
	pop hl
	bit 7,(ix+#14)
	jr z,l0c09
	ld h,d
	ld l,d
.l0c09
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l0de4
	ld c,h
	ld a,(ix+#02)
	call l0de4
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l0c5c
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l0c4b
	dec (ix+#09)
	jr nz,l0c4b
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l0c43
	xor a
	jr l0c48
.l0c43
	cp #10
	jr nz,l0c48
	dec a
.l0c48
	ld (ix+#1e),a
.l0c4b
	ld a,b
	sub (ix+#1e)
	jr nc,l0c52
	xor a
.l0c52
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l0de4
.l0c5c
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l0e0b)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l0c7a
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l0c7a
	ld (l0e0b),hl
	ret
.l0c7e
	ld hl,l0e2d
	cp #61
	jr nc,l0c88
	add a
	ld c,a
	add hl,bc
.l0c88
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l0c92
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l0db7
	ld (ix+#1e),a
	jp l0b1f
.l0ca4
	dec b
.l0ca5
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l0cb0
	neg
.l0cb0
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
	jp l0b1f
.l0cc6
	dec b
	jr l0cca
.l0cc9
	inc b
.l0cca
	call l0db7
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l0b1f
.l0cd9
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
	jp l0d9c
.l0cea
	ld a,(hl)
	inc hl
	or a
	jr z,l0d0c
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
.l0d0c
	ld (ix+#29),a
	jp l0b1f
.l0d12
	dec hl
	ld a,(hl)
	and #0f
	ld (l0e0e),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l0e0d),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l0b1f
.l0d2c
	ld a,(hl)
	or a
	jr z,l0d3d
	call l0db9
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l0b1f
.l0d3d
	ld hl,#0101
	ld (l0e09),hl
	jp l0b1f
.l0d46
	call l0db7
	ld (ix+#1e),a
	jp l0b1f
.l0d4f
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l0dc8
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l0dc8
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l0b1f
.l0d71
	ld a,(hl)
	inc hl
	ld (l0e08),a
	jp l0b1f
.l0d79
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
	jp l0b1f
.l0d98
	call l0db7
	add a
.l0d9c
	ld b,#00
	ld c,a
	push hl
	ld hl,l0fff
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l0b1f
.l0db7
	ld a,(hl)
	inc hl
.l0db9
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
.l0dc8
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l0f7f
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l0de4
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
.l0e03
	ret
.l0e0b equ $ + 7
.l0e0a equ $ + 6
.l0e09 equ $ + 5
.l0e08 equ $ + 4
.l0e06 equ $ + 2
.l0e04
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0e0e equ $ + 2
.l0e0d equ $ + 1
	db #38,#00,#00
.l0e0f
	dw l0c92,l0ca5,l0ca4,l0cc9
	dw l0cc6,l0cd9,l0cea,l0d12
	dw l0d2c,l0d12,l0d46,l0d4f
	dw l0d71,l0d79,l0d98
.l0e2d
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
.l0eef equ $ + 2
	dw #000f,#0008
.l0ef3 equ $ + 2
	db #01,#08,#00,#00,#00,#00,#00,#00
.l0efd equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f0e equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f1d equ $ + 4
	db #00,#00,#00,#00,#09,#02,#03,#10
.l0f21
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f2b equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f3c equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f4f equ $ + 6
.l0f4b equ $ + 2
	db #00,#00,#0a,#04,#05,#20,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f59
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f6a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0f7f equ $ + 6
.l0f79
	db #df,#12,#1b,#13,#57,#13,#1f,#10
	db #5f,#10,#7f,#10,#00,#00,#10,#c9
	db #10,#c9,#10,#c9,#ff,#ff,#10,#c9
	db #10,#c9,#10,#c9,#ff,#ff,#10,#c9
	db #10,#c9,#10,#c9,#ff,#ff,#10,#c9
	db #10,#c9,#10,#c9,#ff,#ff,#9f,#10
	db #df,#10,#ff,#10,#16,#0a,#10,#c9
	db #10,#c9,#10,#c9,#ff,#ff,#10,#c9
	db #10,#c9,#10,#c9,#ff,#ff,#10,#c9
	db #10,#c9,#10,#c9,#ff,#ff,#10,#c9
	db #10,#c9,#10,#c9,#ff,#ff,#1f,#11
	db #5f,#11,#7f,#10,#16,#0a,#10,#c9
	db #10,#c9,#10,#c9,#ff,#ff,#7f,#11
	db #bf,#11,#7f,#10,#00,#00,#1f,#10
	db #df,#11,#7f,#10,#00,#00,#10,#c9
	db #10,#c9,#10,#c9,#ff,#ff,#ff,#11
.l0fff equ $ + 6
	db #3f,#12,#5f,#12,#00,#00,#10,#c9
	db #10,#c9,#7f,#12,#9f,#12,#10,#c9
	db #bf,#12,#10,#c9,#10,#c9,#10,#c9
	db #11,#c9,#11,#c9,#11,#c9,#11,#c9
	db #11,#c9,#11,#c9,#11,#c9,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
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
	db #0c,#0d,#0d,#0d,#0d,#0d,#e0,#00
	db #d0,#00,#c0,#00,#b0,#00,#a0,#00
	db #90,#00,#80,#00,#70,#00,#60,#00
	db #50,#00,#40,#00,#30,#00,#20,#00
	db #10,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0f
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#0d
	db #0b,#0a,#09,#08,#08,#07,#07,#06
	db #06,#05,#05,#05,#04,#04,#04,#03
	db #03,#03,#02,#02,#02,#02,#01,#01
	db #01,#01,#00,#00,#00,#00,#00,#00
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
	db #fd,#fd,#f9,#f9,#00,#00,#fd,#fd
	db #f9,#f9,#00,#00,#fd,#fd,#f9,#f9
	db #00,#00,#fd,#fd,#f9,#f9,#00,#00
	db #fd,#fd,#f9,#f9,#00,#00,#00,#00
	db #fc,#fc,#f9,#f9,#00,#00,#fc,#fc
	db #f9,#f9,#00,#00,#fc,#fc,#f9,#f9
	db #00,#00,#fc,#fc,#f9,#f9,#00,#00
	db #fc,#fc,#f9,#f9,#00,#00,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#fb,#fb
	db #f8,#f8,#00,#00,#fb,#fb,#f8,#f8
	db #00,#00,#fb,#fb,#f8,#f8,#00,#00
	db #fb,#fb,#f8,#f8,#00,#00,#00,#93
	db #13,#00,#93,#13,#00,#93,#13,#00
	db #93,#13,#00,#b6,#13,#00,#93,#13
	db #00,#b6,#13,#00,#93,#13,#00,#b6
	db #13,#00,#93,#13,#00,#93,#13,#00
	db #d9,#13,#00,#d9,#13,#00,#d9,#13
	db #00,#d9,#13,#00,#d9,#13,#00,#d9
	db #13,#00,#d9,#13,#00,#d9,#13,#80
	db #ee,#12,#00,#fd,#13,#00,#fd,#13
	db #00,#00,#14,#00,#42,#14,#00,#84
	db #14,#00,#42,#14,#00,#84,#14,#00
	db #42,#14,#00,#84,#14,#00,#c6,#14
	db #00,#c6,#14,#00,#c6,#14,#00,#c6
	db #14,#00,#c6,#14,#00,#c6,#14,#00
	db #c6,#14,#00,#c6,#14,#00,#e1,#14
	db #00,#e1,#14,#80,#2a,#13,#00,#fd
	db #13,#00,#23,#15,#00,#23,#15,#00
	db #23,#15,#00,#3c,#15,#00,#55,#15
	db #00,#69,#15,#00,#7d,#15,#00,#91
	db #15,#00,#a5,#15,#00,#a5,#15,#00
	db #aa,#15,#00,#ce,#15,#00,#aa,#15
	db #00,#ce,#15,#00,#f2,#15,#00,#35
	db #16,#00,#81,#16,#00,#35,#16,#80
	db #66,#13,#21,#58,#2d,#02,#39,#50
	db #02,#38,#f1,#60,#21,#58,#2d,#02
	db #38,#f1,#40,#21,#58,#2d,#02,#39
	db #50,#02,#38,#f1,#60,#21,#58,#2d
	db #02,#38,#f1,#40,#ff,#1f,#58,#32
	db #02,#2b,#50,#02,#38,#f1,#60,#1f
	db #58,#32,#02,#38,#f1,#40,#1f,#58
	db #32,#02,#2b,#50,#02,#38,#f1,#60
	db #1f,#58,#32,#02,#38,#f1,#40,#ff
	db #21,#58,#2d,#02,#39,#50,#02,#38
	db #f1,#60,#21,#58,#2d,#02,#38,#f1
	db #20,#21,#58,#2d,#02,#26,#58,#22
	db #04,#38,#f1,#20,#24,#58,#26,#06
	db #38,#f1,#40,#ff,#00,#20,#ff,#45
	db #01,#10,#c5,#00,#cc,#00,#c5,#00
	db #c5,#00,#cc,#00,#c5,#00,#c5,#00
	db #cd,#00,#c5,#00,#c5,#00,#ca,#00
	db #c5,#00,#c5,#00,#cc,#00,#ca,#00
	db #c5,#00,#c5,#00,#cc,#00,#c5,#00
	db #c5,#00,#cc,#00,#c5,#00,#c5,#00
	db #cd,#00,#c5,#00,#c5,#00,#ca,#00
	db #c5,#00,#c5,#00,#cc,#00,#ca,#00
	db #ff,#45,#01,#10,#c5,#00,#cc,#00
	db #c5,#00,#c5,#00,#cc,#00,#c5,#00
	db #c5,#00,#cd,#00,#c5,#00,#c5,#00
	db #ca,#00,#c5,#00,#c5,#00,#cc,#00
	db #ca,#00,#c5,#00,#c5,#00,#cc,#00
	db #c5,#00,#c5,#00,#cc,#00,#c5,#00
	db #c5,#00,#ca,#00,#c5,#00,#c5,#00
	db #c8,#00,#c5,#00,#c5,#00,#c7,#00
	db #c5,#00,#ff,#43,#01,#10,#ca,#00
	db #ca,#00,#c3,#00,#ca,#00,#ca,#00
	db #c3,#00,#ca,#00,#c3,#00,#cb,#00
	db #cb,#00,#c3,#00,#c8,#00,#c8,#00
	db #c3,#00,#ca,#00,#c3,#00,#ca,#00
	db #ca,#00,#c3,#00,#ca,#00,#ca,#00
	db #c3,#00,#ca,#00,#c3,#00,#cb,#00
	db #cb,#00,#c3,#00,#c8,#00,#c8,#00
	db #c3,#00,#ca,#00,#ff,#00,#02,#4c
	db #0f,#43,#4c,#00,#04,#4c,#00,#04
	db #4c,#00,#04,#4d,#0f,#45,#4d,#00
	db #04,#4a,#0f,#42,#4c,#0f,#23,#ff
	db #45,#01,#10,#d1,#00,#d1,#00,#c5
	db #00,#d1,#00,#d1,#00,#c5,#00,#c5
	db #00,#d2,#00,#c5,#00,#d2,#00,#cf
	db #00,#c5,#00,#cf,#00,#d1,#00,#c5
	db #00,#d1,#00,#c5,#00,#d1,#00,#c5
	db #00,#c5,#00,#d1,#00,#c5,#00,#c5
	db #00,#d2,#00,#c5,#00,#c5,#00,#cf
	db #00,#c5,#00,#c5,#00,#d1,#00,#c5
	db #00,#ff,#51,#d1,#40,#4c,#d0,#04
	db #51,#d0,#04,#4c,#d0,#04,#51,#d0
	db #04,#4c,#d0,#04,#51,#d0,#04,#4c
	db #d0,#04,#ff,#4f,#d1,#40,#4a,#d0
	db #04,#4f,#d0,#04,#4a,#d0,#04,#4f
	db #d0,#04,#4a,#d0,#04,#4f,#d0,#04
	db #4a,#d0,#04,#ff,#45,#a1,#00,#14
	db #03,#12,#01,#03,#12,#01,#03,#12
	db #01,#03,#12,#01,#4c,#a0,#08,#ff
	db #4a,#a1,#00,#14,#02,#12,#01,#02
	db #12,#01,#02,#12,#01,#02,#12,#01
	db #43,#a0,#08,#ff,#45,#a1,#00,#14
	db #03,#12,#01,#03,#12,#01,#03,#12
	db #01,#03,#12,#01,#51,#a0,#08,#ff
	db #4f,#a1,#00,#14,#02,#12,#01,#02
	db #12,#01,#02,#12,#01,#02,#12,#01
	db #43,#a0,#08,#ff,#45,#a1,#00,#20
	db #ff,#45,#01,#10,#c7,#00,#48,#00
	db #04,#48,#00,#02,#47,#00,#02,#45
	db #00,#04,#45,#00,#02,#48,#00,#04
	db #48,#00,#04,#47,#00,#02,#43,#00
	db #04,#43,#00,#02,#ff,#45,#01,#10
	db #c7,#00,#48,#00,#04,#48,#00,#02
	db #47,#00,#02,#45,#00,#04,#45,#00
	db #02,#4c,#00,#04,#4c,#00,#04,#4a
	db #00,#02,#48,#00,#04,#43,#00,#02
	db #ff,#4c,#cb,#30,#4c,#cb,#13,#4c
	db #cb,#20,#4c,#cb,#15,#4c,#cb,#13
	db #4c,#cb,#20,#4c,#cb,#15,#4c,#cb
	db #13,#4c,#cb,#20,#4c,#cb,#15,#4c
	db #cb,#13,#4c,#cb,#20,#4c,#cb,#15
	db #4c,#cb,#13,#4c,#cb,#20,#4c,#cb
	db #15,#4c,#cb,#13,#4c,#cb,#20,#4c
	db #cb,#15,#4c,#cb,#13,#4c,#cb,#20
	db #4c,#cb,#25,#ff,#4c,#c1,#30,#4c
	db #cb,#13,#4c,#cb,#20,#4c,#cb,#15
	db #4c,#cb,#13,#4c,#cb,#20,#4c,#cb
	db #15,#4c,#cb,#13,#4c,#cb,#20,#4c
	db #cb,#15,#4c,#cb,#13,#4c,#cb,#20
	db #4c,#cb,#15,#4c,#cb,#13,#4c,#cb
	db #20,#4c,#cb,#15,#4c,#cb,#13,#f3
	db #08,#00,#02,#12,#01,#02,#12,#01
	db #02,#12,#01,#02,#12,#01,#02,#12
	db #01,#02,#12,#01,#02,#12,#01,#ff
	db #4c,#c1,#30,#4c,#cb,#13,#4c,#cb
	db #20,#4c,#cb,#15,#4c,#cb,#13,#4c
	db #cb,#20,#4c,#cb,#15,#4c,#cb,#13
	db #4c,#cb,#20,#4c,#cb,#15,#4c,#cb
	db #13,#4c,#cb,#20,#4c,#cb,#15,#4c
	db #cb,#13,#4c,#cb,#20,#4c,#cb,#15
	db #4c,#cb,#13,#4c,#cb,#20,#4c,#cb
	db #15,#4c,#cb,#13,#4c,#cb,#20,#4c
	db #cb,#25,#ff
;
.music_info
	db "CPC-Telegramm 03 - Little Techno (1995)(FrankenTeam)(Kangaroo)",0
	db "ST-128 Module",0

	read "music_end.asm"
