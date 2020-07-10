; Music of Krypton Factor, The (1987)(Domark)(Dave Kelly)()
; Ripped by Megachur the 16/08/2012
; $VER 1.5

IFDEF FILENAME_WRITE
	write "KRYPTONF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #1995

	read "music_header.asm"

; 13/10/2013

;
.init_music
.play_music
;
	di
	call l199c
	jp l1aa7
.l199c
	ld hl,l1c73
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call l1afa
	ld hl,l1c7a
	ld (hl),b
	inc hl
	call l1afa
	ld hl,l1c81
	ld (hl),b
	inc hl
	call l1afa
	inc hl
	call l1afa
	ld hl,l1c65
	call l1a0d
	call l1ac9
	ld hl,l1c59
	call l1a0d
	ld a,#01
	call l1a31
	ld hl,l1c5d
	call l1a0d
	ld a,#02
	call l1a31
	ld hl,l1c61
	call l1a0d
	ld a,#03
	call l1a31
	call l1b34
	ld hl,l1c6c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l19fe
	inc hl
	inc hl
	call l19fe
	dec hl
	dec hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
.l19fe
	ld a,(hl)
	cp e
	ret nz
	inc hl
	ld a,(hl)
	dec hl
	cp d
	ret nz
	inc de
	ld (hl),e
	inc hl
	ld (hl),d
	dec hl
	dec de
	ret
.l1a0d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc de
.l1a11
	ld a,(de)
	cp #3f
	jr z,l1a28
	ld b,a
	ld (hl),d
	dec hl
	ld (hl),e
	add a
	ld e,a
	ld d,#00
	ld hl,l1c93
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.l1a28
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jp l1a11
.l1a31
	ld c,a
	ld a,b
	cp #36
	ld a,h
	jr nc,l1a71
	or l
	ret z
	ld a,c
	push hl
	add a
	dec a
	ld hl,l1c6c
	ld d,#00
	ld e,a
	add hl,de
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,l1c7e
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,l1c69
	add hl,de
	ld a,(hl)
	ld hl,l1c74
	add hl,de
	ld (hl),a
	ld hl,l1c73
	ld a,c
	add #ff
	add a
	add a
	add a
	or #86
	ld (l1a6f),a
.l1a6f equ $ + 1
	res 0,(hl)
	ret
.l1a71
	ld (l1c72),a
	ld a,l
	and #f0
	or a
	jr z,l1a98
	rrca
	rrca
	rrca
	rrca
.l1a7e
	ld hl,l1c7b
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,l1c73
	ld a,c
	add #02
	add a
	add a
	add a
	or #86
	ld (l1a96),a
.l1a96 equ $ + 1
	res 0,(hl)
	ret
.l1a98
	ld a,l
	and #0f
	ld hl,l1c74
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr l1a7e
.l1aa7
	ld a,#01
	call l1c0f
	ld a,#02
	call l1c0f
	ld a,#03
	call l1c0f
	call l1bb0
	call l1bf7
	ld hl,l1c7a
	inc (hl)
	ld a,(hl)
	cp #10
	jr nz,l1aa7
	ld (hl),#00
	ei
	ret
.l1ac9
	ld a,b
	and #03
	ld c,a
	bit 2,b
	jr nz,l1ad6
	bit 3,b
	jr nz,l1b00
	ret
.l1ad6
	bit 3,b
	jr nz,l1b16
	ld a,#f0
	and b
	rrca
	rrca
	rrca
	rrca
	ld b,a
	xor a
	cp c
	ld hl,l1c69
	jr z,l1af2
	ld d,a
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,a
	jp l1b24
.l1af2
	call l1afa
	ld b,#00
	jp l1b2e
.l1afa
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.l1b00
	ld a,c
	ld (l1c89),a
	ld a,#f0
	and b
	rlca
	rlca
	rlca
	bit 4,b
	ld b,a
	jr z,l1b12
	xor #7f
	inc a
.l1b12
	ld (l1c81),a
	ret
.l1b16
	bit 4,b
	ret nz
	ld a,#e0
	and b
	rlca
	rlca
	rlca
	ld b,a
	xor a
	cp c
	jr z,l1b2e
.l1b24
	ld d,#00
	ld e,c
	ld hl,l1c7e
	add hl,de
	dec hl
	ld (hl),b
	ret
.l1b2e
	ld hl,l1c7e
	jp l1afa
.l1b34
	ld hl,l1c81
	xor a
	cp (hl)
	ret z
	ld b,(hl)
	ld a,(l1c89)
	or a
	jr z,l1b5f
	ld ix,l1c6c
	ld hl,l1c59
	dec a
	jr z,l1b7a
	ld hl,l1c5d
	inc ix
	inc ix
	dec a
	jr z,l1b7a
	ld hl,l1c61
	inc ix
	inc ix
	jp l1b7a
.l1b5f
	ld hl,l1c59
	ld ix,l1c6c
	call l1b7a
	inc ix
	inc ix
	ld hl,l1c5d
	call l1b7a
	inc ix
	inc ix
	ld hl,l1c61
.l1b7a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	add b
	cp #35
	ret nc
	ld d,#00
	add a
	ld e,a
	ld hl,l1c93
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ex de,hl
	xor a
	sbc hl,de
	ld a,l
	ld l,h
	ld h,a
	xor a
	push bc
	ld b,#04
.l1b9e
	or a
	rr h
	rr l
	rr a
	djnz l1b9e
	or h
	ld (ix+#16),a
	ld (ix+#17),l
	pop bc
	ret
.l1bb0
	ld hl,l1c6c
	ld de,l1c82
	ld b,#03
.l1bb8
	ld a,(hl)
	push hl
	inc hl
	ld h,(hl)
	ld l,a
	ex de,hl
	ld a,(hl)
	inc hl
	push hl
	ld h,(hl)
	ld l,a
	add hl,de
	jr nc,l1bc7
	inc hl
.l1bc7
	ld c,h
	ld a,l
	pop de
	inc de
	pop hl
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	djnz l1bb8
	ret
	ld de,#073f
.l1bd6
	push bc
	ld b,#f4
	out (c),d
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	pop bc
	inc d
	ret
.l1bf7
	ld b,#0b
	ld hl,l1c6c
	ld d,#00
.l1bfe
	ld e,(hl)
	inc hl
	call l1bd6
	djnz l1bfe
	ld b,#fd
.l1c07
	ld c,#05
.l1c09
	dec c
	jr nz,l1c09
	djnz l1c07
	ret
.l1c0f
	ld hl,l1c74
	dec a
	ld c,a
	ld e,a
	ld d,#00
	add hl,de
	ex de,hl
	ld l,#07
	add hl,de
	ld a,(hl)
	or a
	ret z
	push de
	ld hl,l1d11
	dec a
	rla
	rla
	rla
	rla
	ld d,#00
	ld e,a
	add hl,de
	ld a,(l1c7a)
	ld e,a
	add hl,de
	ld a,(hl)
	pop hl
	ld b,(hl)
	cp b
	ret z
	ld (hl),a
	ret
	ld hl,l1c49
	ld de,l1c59
	ld bc,#0010
	ldir
	ld a,#ea
	ld (l1c88),a
	ret
.l1c49
	dw l1d81,l1d82,l1e7a,l1e7b
	dw l1f73,l1f74,l206c,l206d
.l1c5d equ $ + 4
.l1c59
	dw l1d81,l1d82,l1e7a,l1e7b
.l1c61
	dw l1f73,l1f74
.l1c6c equ $ + 7
.l1c69 equ $ + 4
.l1c65
	dw  l206c,l206d
	db #09,#00,#00,#b3
.l1c72 equ $ + 5
	db #00,#bc,#03,#77,#00,#09
.l1c7a equ $ + 7
.l1c74 equ $ + 1
.l1c73
	db #38,#07,#07,#03,#00,#00,#00,#10
.l1c82 equ $ + 7
.l1c81 equ $ + 6
.l1c7e equ $ + 3
.l1c7b
	db #04,#04,#01,#04,#04,#01,#00,#00
.l1c89 equ $ + 6
.l1c88 equ $ + 5
	db #00,#00,#00,#00,#00,#ea,#03,#01
	db #04,#00,#1d,#00,#24,#02,#03,#06
.l1c93
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
	dw #002f
	db #00,#00,#04,#08,#14,#08,#1f,#08
	db #09,#70,#1f,#70,#0a,#07,#11,#07
.l1d11 equ $ + 4
	db #1c,#07,#09,#40,#06,#08,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#09,#08,#07
	db #06,#05,#04,#03,#0f,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0c,#0b,#0b,#0a
	db #0a,#09,#08,#06,#06,#07,#08,#09
	db #0c,#0e,#0f,#0e,#0d,#0c,#09,#08
	db #07,#06,#04,#02,#0b,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0a,#0a,#0a,#09
	db #09,#08,#08,#07,#0b,#0f,#0f,#0f
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0c,#0a,#0f,#0e,#0d,#0c
	db #0b,#0a,#0a,#0a,#0a,#0a,#0a,#0b
	db #0c,#0d,#0e,#0f,#0d,#0d,#0d,#0d
	db #0d,#0d,#0c,#0c,#0c,#0c,#0c,#0b
.l1d82 equ $ + 5
.l1d81 equ $ + 4
	db #0b,#0b,#0a,#09,#35,#0c,#00,#0c
	db #00,#0c,#00,#0f,#0f,#0c,#00,#0c
	db #00,#0c,#00,#0a,#0a,#0c,#00,#0c
	db #00,#0c,#00,#0f,#0f,#0c,#00,#0c
	db #00,#0c,#00,#0a,#0a,#0a,#0a,#16
	db #0a,#16,#0a,#39,#39,#16,#0a,#16
	db #0a,#16,#0a,#39,#0e,#16,#0a,#16
	db #0a,#16,#0a,#39,#39,#16,#0a,#16
	db #0a,#16,#0a,#39,#0e,#0c,#00,#0c
	db #00,#0c,#00,#0f,#0f,#0c,#00,#0c
	db #00,#0c,#00,#0a,#0a,#0c,#00,#0c
	db #00,#0c,#00,#0f,#0f,#0c,#00,#0c
	db #00,#0c,#00,#0a,#0a,#08,#14,#08
	db #0f,#08,#14,#08,#0f,#0a,#16,#0a
	db #11,#0a,#16,#0a,#11,#00,#03,#07
	db #00,#03,#07,#00,#00,#00,#00,#00
	db #0c,#08,#14,#08,#14,#08,#14,#08
	db #14,#05,#11,#05,#11,#05,#11,#05
	db #11,#07,#13,#07,#13,#07,#13,#07
	db #13,#00,#0c,#00,#0c,#00,#0c,#00
	db #0c,#08,#14,#08,#14,#08,#14,#08
	db #14,#05,#11,#05,#11,#05,#11,#05
	db #11,#07,#13,#07,#13,#07,#13,#07
	db #0c,#35,#0c,#35,#0c,#0c,#35,#0c
	db #35,#0c,#35,#0c,#0c,#35,#0c,#35
	db #0c,#35,#0c,#0c,#35,#0c,#35,#0c
	db #11,#35,#11,#35,#11,#11,#35,#11
	db #35,#11,#35,#11,#11,#35,#11,#35
	db #11,#35,#11,#11,#35,#11,#35,#11
	db #13,#35,#13,#35,#13,#13,#35,#13
	db #35,#13,#35,#13,#13,#35,#13,#35
.l1e7b equ $ + 6
.l1e7a equ $ + 5
	db #13,#35,#13,#13,#3f,#35,#24,#1f
	db #1b,#18,#24,#1f,#39,#39,#24,#1f
	db #1b,#18,#24,#1f,#39,#27,#24,#1f
	db #1b,#18,#24,#1f,#39,#39,#24,#1f
	db #1b,#18,#24,#1f,#39,#27,#22,#1d
	db #1a,#16,#22,#1d,#1a,#16,#22,#1d
	db #1a,#16,#22,#1d,#1a,#16,#22,#1d
	db #1a,#16,#22,#1d,#1a,#16,#22,#1d
	db #1a,#16,#22,#1d,#1a,#26,#24,#1f
	db #1b,#18,#24,#1f,#1b,#18,#24,#1f
	db #1b,#18,#24,#1f,#1b,#18,#24,#1f
	db #1b,#18,#24,#1f,#1b,#18,#24,#1f
	db #1b,#18,#24,#1f,#1b,#18,#24,#20
	db #1b,#18,#39,#39,#35,#35,#26,#22
	db #1d,#1a,#39,#39,#35,#35,#24,#1f
	db #1b,#18,#1f,#1b,#24,#1f,#24,#1f
	db #1b,#35,#24,#20,#1b,#35,#24,#20
	db #1b,#35,#24,#20,#1d,#35,#24,#20
	db #1d,#35,#26,#23,#1f,#35,#26,#23
	db #1f,#35,#27,#24,#1f,#35,#27,#24
	db #1f,#35,#27,#24,#20,#35,#27,#24
	db #20,#35,#27,#24,#1d,#35,#27,#24
	db #1d,#35,#26,#23,#1f,#35,#26,#23
	db #26,#24,#35,#24,#24,#35,#24,#35
	db #24,#24,#35,#24,#35,#24,#24,#35
	db #24,#35,#24,#24,#35,#24,#35,#35
	db #35,#29,#35,#29,#29,#35,#29,#35
	db #29,#29,#35,#29,#35,#29,#29,#35
	db #29,#35,#29,#29,#35,#29,#35,#29
	db #29,#35,#1f,#35,#1f,#1f,#35,#1f
	db #35,#1f,#1f,#35,#1f,#35,#1f,#1f
.l1f74 equ $ + 7
.l1f73 equ $ + 6
	db #35,#1f,#35,#1f,#1f,#3f,#35,#18
	db #1b,#18,#24,#18,#24,#18,#22,#18
	db #24,#18,#24,#18,#24,#18,#22,#18
	db #24,#18,#24,#18,#24,#18,#22,#18
	db #24,#18,#24,#18,#24,#18,#22,#16
	db #11,#0e,#16,#16,#11,#0e,#16,#11
	db #0e,#16,#11,#0e,#16,#11,#0e,#16
	db #11,#0e,#16,#11,#0e,#16,#11,#0e
	db #16,#11,#0e,#16,#11,#0e,#16,#18
	db #24,#18,#24,#18,#24,#39,#39,#18
	db #24,#18,#24,#18,#24,#39,#22,#18
	db #24,#18,#24,#18,#24,#39,#39,#18
	db #24,#18,#24,#18,#24,#39,#1b,#1b
	db #0f,#1b,#0f,#1b,#0f,#1b,#0f,#22
	db #16,#22,#16,#22,#16,#22,#16,#18
	db #0c,#18,#0c,#18,#0c,#18,#0c,#18
	db #0c,#18,#13,#14,#20,#14,#20,#14
	db #20,#14,#13,#11,#1d,#11,#1d,#11
	db #1d,#11,#12,#13,#1f,#13,#1f,#13
	db #1f,#13,#17,#18,#24,#18,#24,#18
	db #24,#18,#16,#14,#20,#14,#20,#14
	db #20,#14,#13,#11,#1d,#11,#1d,#11
	db #1d,#11,#12,#13,#1f,#13,#1f,#13
	db #1f,#13,#18,#18,#18,#18,#1b,#1b
	db #18,#18,#18,#18,#20,#20,#18,#18
	db #18,#18,#1b,#1b,#18,#18,#18,#18
	db #20,#20,#1d,#1d,#1d,#1d,#20,#20
	db #1d,#1d,#1d,#1d,#23,#23,#1d,#1d
	db #1d,#1d,#20,#20,#1d,#1d,#1d,#1d
	db #23,#23,#1f,#1f,#23,#23,#26,#26
	db #2b,#2b,#1f,#1f,#23,#23,#26,#26
.l206c equ $ + 7
	db #29,#29,#27,#27,#26,#26,#3f,#00
.l206d
	db #6b,#00,#00,#00,#00,#00,#00,#00
	db #6b,#00,#00,#00,#00,#00,#00,#00
	db #6b,#00,#00,#00,#00,#00,#00,#00
	db #6b,#00,#00,#00,#00,#00,#00,#00
	db #ba,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #ba,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#3a
	db #00,#00
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
	db #00,#00,#00,#00,#00,#3f,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#20,#00,#02,#aa,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#a0,#00,#08,#a0,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#03,#ff,#ff,#ff
	db #ff,#ff,#ff,#f8,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#c0,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#03,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#f8,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#f8,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #fc,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#03,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#80,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#80,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#0f,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #e0,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#3f,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#f8,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#f8,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#f8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#fe,#00,#00,#00
	db #00,#00,#00,#00,#00,#3f,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#80,#00,#00,#00,#00,#00
	db #00,#00,#3f,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#f8
	db #00,#00,#00,#00,#00,#00,#00,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#fe,#00,#00,#00
	db #00,#00,#00,#07,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#80,#00,#00,#00,#00,#00
	db #1f,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#80
	db #00,#00,#00,#00,#00,#7f,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#80,#00,#00,#00
	db #00,#00,#7f,#ff,#ff,#ff,#ff,#ff
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
	db #ff,#80,#00,#00,#00,#00,#00,#00
	db #00
;
.music_info
	db "The Krypton Factor (1987)(Domark)(Dave Kelly)",0
	db "",0

	read "music_end.asm"
