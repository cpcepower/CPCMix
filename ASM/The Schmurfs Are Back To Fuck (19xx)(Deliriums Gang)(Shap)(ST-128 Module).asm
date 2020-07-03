; Music of The Schmurfs Are Back To Fuck (19xx)(Deliriums Gang)(Shap)(ST-128 Module)
; Ripped by Megachur the 23/03/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THESABTF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #5b00

	read "music_header.asm"

	jp l5b09
	jp l5b9d
	jp l5b81
;
.init_music
.l5b09
;
	xor a
	ld hl,l60b4
	call l5b7a
	ld hl,l60e2
	call l5b7a
	ld hl,l6110
	call l5b7a
	ld ix,l60b0
	ld iy,l613a
	ld de,#002e
	ld b,#03
.l5b29
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
	djnz l5b29
	ld hl,l5fc9
	ld (hl),#05
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l5fc5),hl
	ld (l5fc7),hl
	ld a,#0c
	ld c,d
	call l5fa5
	ld a,#0d
	ld c,d
	jp l5fa5
.l5b7a
	ld b,#2a
.l5b7c
	ld (hl),a
	inc hl
	djnz l5b7c
	ret
;
.stop_music
.l5b81
;
	ld a,#07
	ld c,#3f
	call l5fa5
	ld a,#08
	ld c,#00
	call l5fa5
	ld a,#09
	ld c,#00
	call l5fa5
	ld a,#0a
	ld c,#00
	jp l5fa5
;
.play_music
.l5b9d
;
	ld hl,l5fcb
	dec (hl)
	ld ix,l60b0
	ld bc,l60be
	call l5c3f
	ld ix,l60de
	ld bc,l60ec
	call l5c3f
	ld ix,l610c
	ld bc,l611a
	call l5c3f
	ld hl,l5fc4
	ld de,l5fcb
	ld b,#06
	call l5c1c
	ld b,#07
	call l5c1c
	ld b,#0b
	call l5c1c
	ld b,#0d
	call l5c1c
	ld de,l5fcb
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l60cf
	call l5bf5
	ld hl,l60fd
	call l5bf5
	ld hl,l612b
.l5bf5
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
	jr nz,l5c0a
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l5c0a
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
.l5c1c
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l5fa5
.l5c27
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l5fa5
.l5c3f
	ld a,(l5fcb)
	or a
	jp nz,l5cf7
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l5cf7
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l5c27
	or a
	jp z,l5cec
	ld r,a
	and #7f
	cp #10
	jr c,l5cc7
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l5e3f
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
	jr z,l5ca0
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l5ca0
	rrca
	ld c,a
	ld hl,l6140
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
	jr z,l5cbf
	ld (ix+#1e),b
.l5cbf
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l5ce0
.l5cc7
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l5fd0
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
.l5ce0
	ld a,d
	or a
	jr nz,l5cee
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l5cee
.l5cec
	ld a,(hl)
	inc hl
.l5cee
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l5cf7
	ld a,(ix+#17)
	or a
	jr nz,l5d0d
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l5d0d
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l5d23
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l5d23
	ld a,(ix+#0d)
	or a
	jr z,l5d31
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l5d4f
.l5d31
	ld a,(ix+#1a)
	or a
	jp z,l5d56
	ld c,a
	cp #03
	jr nz,l5d3e
	xor a
.l5d3e
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l5d4f
	ld a,(ix+#18)
	dec c
	jr z,l5d4f
	ld a,(ix+#19)
.l5d4f
	add (ix+#07)
	ld b,d
	call l5e3f
.l5d56
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l5d7e
	dec (ix+#1b)
	jr nz,l5d7e
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l5db6
.l5d7e
	ld a,(ix+#29)
	or a
	jr z,l5db6
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l5dad
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l5da4
	ld (ix+#29),#ff
	jr l5dad
.l5da4
	cp (ix+#2b)
	jr nz,l5dad
	ld (ix+#29),#01
.l5dad
	ld b,d
	or a
	jp p,l5db3
	dec b
.l5db3
	ld c,a
	jr l5dc1
.l5db6
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l5dc1
	pop hl
	bit 7,(ix+#14)
	jr z,l5dca
	ld h,d
	ld l,d
.l5dca
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l5fa5
	ld c,h
	ld a,(ix+#02)
	call l5fa5
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l5e1d
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l5e0c
	dec (ix+#09)
	jr nz,l5e0c
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l5e04
	xor a
	jr l5e09
.l5e04
	cp #10
	jr nz,l5e09
	dec a
.l5e09
	ld (ix+#1e),a
.l5e0c
	ld a,b
	sub (ix+#1e)
	jr nc,l5e13
	xor a
.l5e13
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l5fa5
.l5e1d
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l5fcc)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l5e3b
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l5e3b
	ld (l5fcc),hl
	ret
.l5e3f
	ld hl,l5fee
	cp #61
	jr nc,l5e49
	add a
	ld c,a
	add hl,bc
.l5e49
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l5e53
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l5f78
	ld (ix+#1e),a
	jp l5ce0
.l5e65
	dec b
.l5e66
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l5e71
	neg
.l5e71
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
	jp l5ce0
.l5e87
	dec b
	jr l5e8b
.l5e8a
	inc b
.l5e8b
	call l5f78
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l5ce0
.l5e9a
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
	jp l5f5d
.l5eab
	ld a,(hl)
	inc hl
	or a
	jr z,l5ecd
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
.l5ecd
	ld (ix+#29),a
	jp l5ce0
.l5ed3
	dec hl
	ld a,(hl)
	and #0f
	ld (l5fcf),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l5fce),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l5ce0
.l5eed
	ld a,(hl)
	or a
	jr z,l5efe
	call l5f7a
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l5ce0
.l5efe
	ld hl,#0101
	ld (l5fca),hl
	jp l5ce0
.l5f07
	call l5f78
	ld (ix+#1e),a
	jp l5ce0
.l5f10
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l5f89
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l5f89
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l5ce0
.l5f32
	ld a,(hl)
	inc hl
	ld (l5fc9),a
	jp l5ce0
.l5f3a
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
	jp l5ce0
.l5f59
	call l5f78
	add a
.l5f5d
	ld b,#00
	ld c,a
	push hl
	ld hl,l61c0
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l5ce0
.l5f78
	ld a,(hl)
	inc hl
.l5f7a
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
.l5f89
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l6140
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	ld d,e
	ld d,h
	dec l
	ld sp,#3832
	jr nz,l5fed
	ld l,a
	ld h,h
	ld (hl),l
	ld l,h
	ld h,l
.l5fa5
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
.l5fc4
	ret
.l5fcc equ $ + 7
.l5fcb equ $ + 6
.l5fca equ $ + 5
.l5fc9 equ $ + 4
.l5fc7 equ $ + 2
.l5fc5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5fcf equ $ + 2
.l5fce equ $ + 1
	db #38,#00,#00
.l5fd0
	dw l5e53,l5e66,l5e65,l5e8a
	dw l5e87,l5e9a,l5eab,l5ed3
	dw l5eed,l5ed3,l5f07,l5f10
.l5fee equ $ + 6
.l5fed equ $ + 5
	dw l5f32,l5f3a,l5f59,#0000
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04b4
	dw #0470,#0431,#03f4,#03bc
	dw #0386,#0353,#0324,#02f6
	dw #02cc,#02a4,#027e,#025a
	dw #0238,#0218,#01fa,#01de
	dw #01c3,#01aa,#0192,#017b
	dw #0166,#0152,#013f,#012d
	dw #011c,#010c,#00fd,#00ef
	dw #00e1,#00d5,#00c9,#00be
	dw #00b3,#00a9,#009f,#0096
	dw #008e,#0086,#007f,#0077
	dw #0071,#006a,#0064,#005f
	dw #0059,#0054,#0050,#004b
	dw #0047,#0043,#003f,#003c
	dw #0038,#0035,#0032,#002f
	dw #002d,#002a,#0028,#0026
	dw #0024,#0022,#0020,#001e
	dw #001c,#001b,#0019,#0018
	dw #0016,#0015,#0014,#0013
	dw #0012,#0011,#0010,#000f
.l60b4 equ $ + 4
.l60b0
	db #08,#00,#01,#08,#00,#00,#00,#00
.l60be equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l60cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l60de equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l60e2 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l60ec equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l60fd equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l610c equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l6110
	db #00,#00,#00,#00,#00,#00,#00,#00
.l611a equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l612b equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l613a equ $ + 2
	db #00,#00,#40,#64,#5b,#64,#76,#64
.l6140
	db #e0,#61,#20,#62,#40,#62,#00,#00
	db #60,#62,#a0,#62,#c0,#62,#00,#00
	db #d2,#1a,#d2,#1a,#d2,#1a,#00,#00
	db #d2,#1a,#d2,#1a,#d2,#1a,#00,#00
	db #d2,#1a,#d2,#1a,#d2,#1a,#00,#00
	db #e0,#62,#20,#63,#40,#63,#c0,#00
	db #60,#63,#a0,#63,#c0,#62,#00,#00
	db #d2,#1a,#d2,#1a,#d2,#1a,#00,#00
	db #c0,#63,#00,#64,#20,#64,#80,#00
	db #d2,#1a,#d2,#1a,#d2,#1a,#00,#00
	db #d2,#1a,#d2,#1a,#d2,#1a,#00,#00
	db #d2,#1a,#d2,#1a,#d2,#1a,#00,#00
	db #d2,#1a,#d2,#1a,#d2,#1a,#00,#00
	db #d2,#1a,#d2,#1a,#d2,#1a,#00,#00
	db #d2,#1a,#d2,#1a,#d2,#1a,#00,#00
	db #d2,#1a,#d2,#1a,#d2,#1a,#00,#00
.l61c0
	db #d2,#1a,#d2,#1a,#d2,#1a,#d2,#1a
	db #d2,#1a,#d2,#1a,#d2,#1a,#d2,#1a
	db #d2,#1a,#d2,#1a,#d2,#1a,#d2,#1a
	db #d2,#1a,#d2,#1a,#d2,#1a,#d2,#1a
	db #80,#00,#00,#01,#80,#01,#00,#02
	db #80,#02,#00,#03,#00,#04,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0c,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#ff,#ff,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0d,#0e,#0e,#0d,#0b,#09,#0a,#0a
	db #09,#08,#08,#06,#05,#04,#03,#03
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#65,#01,#3e,#01,#00,#00
	db #c3,#04,#65,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0d,#0c,#0b,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #07,#00,#00,#07,#08,#08,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ff,#ff,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0e,#0e,#0d,#0e,#0d,#0e,#0d,#0d
	db #0d,#0d,#0b,#0c,#0d,#0c,#0c,#0b
	db #0c,#0b,#0b,#0a,#0b,#09,#0a,#08
	db #09,#08,#07,#05,#02,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0c,#07,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #03,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#13,#65,#00,#5a,#65,#00,#91
	db #64,#00,#91,#64,#00,#91,#64,#00
	db #91,#64,#00,#91,#64,#00,#91,#64
	db #80,#40,#64,#00,#e7,#65,#00,#34
	db #66,#00,#a0,#65,#00,#a0,#65,#00
	db #82,#66,#00,#82,#66,#00,#a0,#65
	db #00,#a0,#65,#80,#5b,#64,#00,#4a
	db #67,#00,#52,#67,#00,#c9,#66,#00
	db #c9,#66,#00,#c9,#66,#00,#c9,#66
	db #00,#c9,#66,#00,#c9,#66,#80,#76
	db #64,#3d,#01,#10,#f0,#80,#f0,#80
	db #f0,#80,#bd,#50,#f0,#80,#f0,#80
	db #f0,#80,#bd,#00,#f0,#80,#f0,#80
	db #f0,#80,#bd,#50,#f0,#80,#f0,#80
	db #f0,#80,#bd,#00,#f0,#80,#f0,#80
	db #f0,#80,#bd,#50,#f0,#80,#f0,#80
	db #f0,#80,#bd,#00,#f0,#80,#f0,#80
	db #f0,#80,#bd,#50,#f0,#80,#f0,#80
	db #f0,#80,#bd,#00,#f0,#80,#f0,#80
	db #f0,#80,#bd,#50,#f0,#80,#f0,#80
	db #f0,#80,#bd,#00,#f0,#80,#f0,#80
	db #f0,#80,#bd,#50,#f0,#80,#f0,#80
	db #f0,#80,#bd,#00,#f0,#80,#f0,#80
	db #f0,#80,#ed,#50,#f0,#80,#ed,#50
	db #f0,#80,#ed,#50,#f0,#80,#ed,#50
	db #ed,#50,#ed,#50,#ed,#50,#ed,#50
	db #ed,#50,#ff,#47,#6d,#06,#04,#4c
	db #60,#03,#c7,#60,#49,#60,#02,#45
	db #60,#02,#42,#60,#04,#47,#60,#03
	db #c4,#60,#40,#60,#02,#44,#60,#02
	db #42,#60,#08,#47,#60,#04,#4c,#60
	db #03,#c7,#60,#49,#60,#02,#45,#60
	db #02,#42,#60,#04,#47,#60,#02,#44
	db #60,#02,#45,#60,#02,#3f,#60,#02
	db #40,#60,#02,#40,#60,#02,#40,#60
	db #04,#ff,#47,#61,#40,#4c,#60,#03
	db #c7,#60,#49,#60,#02,#45,#60,#02
	db #42,#60,#04,#47,#60,#03,#c4,#60
	db #40,#60,#02,#44,#60,#02,#42,#60
	db #08,#47,#60,#04,#4c,#60,#03,#c7
	db #60,#49,#60,#02,#45,#60,#02,#42
	db #60,#04,#47,#60,#02,#44,#60,#02
	db #45,#60,#02,#3f,#60,#02,#40,#60
	db #02,#40,#60,#02,#40,#60,#04,#ff
	db #47,#6e,#0c,#04,#4c,#60,#03,#c7
	db #60,#49,#60,#02,#45,#60,#02,#42
	db #60,#04,#47,#60,#03,#c4,#60,#40
	db #60,#02,#44,#60,#02,#42,#60,#08
	db #47,#60,#04,#4c,#60,#03,#c7,#60
	db #49,#60,#02,#45,#60,#02,#42,#60
	db #04,#47,#60,#02,#44,#60,#02,#45
	db #60,#02,#3f,#60,#02,#40,#60,#02
	db #40,#60,#02,#40,#60,#04,#ff,#00
	db #01,#01,#10,#47,#61,#41,#4c,#61
	db #31,#47,#61,#11,#49,#61,#21,#45
	db #61,#21,#42,#61,#41,#47,#61,#31
	db #44,#61,#11,#40,#61,#21,#44,#61
	db #21,#42,#61,#81,#47,#61,#41,#4c
	db #61,#31,#47,#61,#11,#49,#61,#21
	db #45,#61,#21,#42,#61,#41,#47,#61
	db #21,#44,#61,#21,#45,#61,#21,#3f
	db #61,#21,#40,#61,#21,#40,#61,#21
	db #40,#61,#21,#ff,#0d,#06,#01,#01
	db #10,#47,#61,#41,#4c,#61,#31,#47
	db #61,#11,#49,#61,#21,#45,#61,#21
	db #42,#61,#41,#47,#61,#31,#44,#61
	db #11,#40,#61,#21,#44,#61,#21,#42
	db #61,#81,#47,#61,#41,#4c,#61,#31
	db #47,#61,#11,#49,#61,#21,#45,#61
	db #21,#42,#61,#41,#47,#61,#21,#44
	db #61,#21,#45,#61,#21,#3f,#61,#21
	db #40,#61,#21,#40,#61,#21,#40,#61
	db #21,#ff,#53,#6e,#0c,#04,#58,#60
	db #03,#d3,#60,#55,#60,#02,#51,#60
	db #02,#4e,#60,#04,#53,#60,#03,#d0
	db #60,#4c,#60,#02,#50,#60,#02,#4e
	db #60,#08,#53,#60,#04,#58,#60,#03
	db #d3,#60,#55,#60,#02,#51,#60,#02
	db #4e,#60,#04,#53,#60,#02,#50,#60
	db #02,#51,#60,#02,#4b,#60,#02,#4c
	db #60,#02,#4c,#60,#02,#4c,#60,#04
	db #ff,#2f,#18,#14,#02,#3b,#18,#14
	db #02,#2f,#18,#14,#02,#3b,#18,#14
	db #02,#2f,#18,#14,#02,#3b,#18,#14
	db #02,#2a,#18,#1b,#02,#36,#18,#1b
	db #02,#2f,#18,#14,#02,#3b,#18,#14
	db #02,#2f,#18,#14,#02,#36,#18,#1b
	db #02,#2a,#18,#1b,#02,#36,#18,#1b
	db #02,#2a,#18,#1b,#02,#36,#18,#1b
	db #02,#2f,#18,#14,#02,#3b,#18,#14
	db #02,#2f,#18,#14,#02,#3b,#18,#14
	db #02,#2f,#18,#14,#02,#39,#18,#16
	db #02,#2d,#18,#16,#02,#39,#18,#16
	db #02,#3b,#18,#14,#02,#2f,#18,#14
	db #02,#39,#18,#16,#02,#2d,#18,#16
	db #02,#34,#18,#1e,#02,#28,#18,#1e
	db #02,#34,#18,#1e,#02,#28,#18,#1e
	db #02,#ff,#fe,#01,#fe,#01,#01,#00
	db #3e,#ff,#3b,#10,#02,#2f,#10,#02
	db #3b,#10,#02,#2f,#10,#02,#3b,#10
	db #02,#2f,#10,#02,#36,#10,#02,#2a
	db #10,#02,#3b,#10,#02,#2f,#10,#02
	db #3b,#10,#02,#2f,#10,#02,#36,#10
	db #02,#2a,#10,#02,#36,#10,#02,#2a
	db #10,#02,#3b,#10,#02,#2f,#10,#02
	db #3b,#10,#02,#2f,#10,#02,#3b,#10
	db #02,#2f,#10,#02,#36,#10,#02,#2a
	db #10,#02,#36,#10,#02,#aa,#1d,#05
	db #b6,#10,#bd,#50,#aa,#10,#bd,#50
	db #b6,#10,#bd,#50,#a8,#10,#bd,#50
	db #b4,#10,#bd,#50,#bd,#50,#a8,#10
	db #bd,#50,#ff
;
.music_info
	db "The Schmurfs Are Back To Fuck (19xx)(Deliriums Gang)(Shap)",0
	db "ST-128 Module",0

	read "music_end.asm"
