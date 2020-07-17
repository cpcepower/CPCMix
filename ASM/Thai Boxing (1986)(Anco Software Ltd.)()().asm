; Music of Thai Boxing (1986)(Anco Software Ltd.)()()
; Ripped by Megachur the 23/03/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "THAIBOXI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #7a10

	read "music_header.asm"

.l7a12 equ $ + 2
.l7a11 equ $ + 1
.l7a10
	db #00,#00,#00

	jp l7b72	; init music
;
.play_music
;
	push af
	di
	push de
	push hl
	push bc
	push ix
	call l7b28
	pop ix
	pop bc
	pop hl
	pop de
	pop af
	ei
	ret
.l7a28
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
	db #00,#00,#19,#09,#02,#07,#00,#50
	db #1f,#60,#0d,#20,#05,#30,#11,#07
.l7aa9 equ $ + 7
.l7aa6 equ $ + 4
	db #1c,#07,#1f,#0a,#00,#00,#00,#00
.l7ab1 equ $ + 7
.l7ab0 equ $ + 6
.l7aaf equ $ + 5
	db #00,#00,#00,#00,#00,#00,#3f,#00
	db #00,#00,#00,#00,#00
.l7abe equ $ + 7
.l7abb equ $ + 4
.l7ab8 equ $ + 1
.l7ab7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7abf
	db #00,#00,#00,#00,#00,#00
.l7ac9 equ $ + 4
.l7ac5
	dw l7ad8,l7e9c,l7ad8,l7ef4
.l7ad1 equ $ + 4
.l7acd
	dw l7ad8,l7f4c,l7ad8,l7fa4
.l7ad7 equ $ + 2
.l7ad6 equ $ + 1
	db #dc,#00,#00
.l7adc equ $ + 4
.l7adb equ $ + 3
.l7ada equ $ + 2
.l7ad8
	db #ff,#ff,#00,#00,#00
.l7add
	dw l7ad8,l7e9c,l7ad8,l7ef4
	dw l7ad8,l7f4c,l7ad8,l7fa4
.l7af0 equ $ + 3
	db #dc,#00,#00,#09,#0c,#0c,#0c,#0c
	db #07,#00,#00,#03,#07,#09,#0a,#0b
	db #0c,#00,#00,#0d,#0b,#09,#0d,#0b
	db #09,#00,#00,#0a,#0f,#0e,#0d,#0c
	db #0b,#00,#00,#0f,#0d,#0b,#09,#07
	db #05,#00,#00,#0d,#06,#0f,#09,#06
	db #0c,#00,#00,#0b,#0b,#0b,#0b,#0b
	db #00,#00,#00
.l7b28
	ld a,(l7a10)
	cp #00
	jr z,l7b92
	ld (l7a12),a
	xor a
	ld (l7a10),a
	inc a
	ld (l7a11),a
	ld hl,l7ab0
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call l7d66
	ld hl,l7ab7
	ld (hl),b
	inc hl
	call l7d66
	ld hl,l7abe
	ld (hl),b
	inc hl
	call l7d66
	inc hl
	call l7d66
	ld hl,l7abb
	inc hl
	ld (hl),#05
	ld a,(l7a12)
	call l7c96
	ld c,#02
	call l7cad
	ld e,#00
	ld b,#0b
	jp l7e5c
;
.init_music
.l7b72
;
	xor a
	ld hl,l7ab7
	ld de,l7ab8
	ld bc,#0014
	ld (hl),a
	ldir
	ld hl,l7add
	ld de,l7ac5
	ld bc,#0013
	ldir
	ld (l7a10),a
	dec a
	ld (l7a11),a
	ret
.l7b92
	ld a,(l7a11)
	cp #ff
	jr z,l7bba
	dec a
	jr z,l7b9d
	ret
.l7b9d
	ld a,(l7ab7)
	inc a
	ld (l7ab7),a
	cp #06
	jr z,l7bae
	ld a,#01
	call l7e6b
	ret
.l7bae
	ld d,#07
	ld e,#3f
	call l7e3b
	xor a
	ld (l7a11),a
	ret
.l7bba
	ld a,(l7ab7)
	inc a
	ld (l7ab7),a
	cp #06
	call z,l7bde
	xor a
	call l7e6b
	ld a,#01
	call l7e6b
	ld a,#02
	call l7e6b
	call l7e18
	ld e,#00
	ld b,#06
	jp l7e5c
.l7bde
	ld hl,l7ab0
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call l7d66
	ld hl,l7ab7
	ld (hl),b
	inc hl
	call l7d66
	ld hl,l7abe
	ld (hl),b
	inc hl
	call l7d66
	inc hl
	call l7d66
	ld hl,l7ad1
	call l7c70
	call l7d2a
	ld hl,l7ac5
	call l7c70
	ld (l7ada),a
	ld c,#01
	call l7cad
	ld hl,l7ac9
	call l7c70
	ld (l7adb),a
	ld c,#02
	call l7cad
	ld hl,l7acd
	call l7c70
	ld (l7adc),a
	ld c,#03
	call l7cad
	call l7da1
	ld hl,l7aa9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l7c61
	inc hl
	inc hl
	call l7c61
	dec hl
	dec hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l7c61
	ld e,#00
	ld b,#0b
	call l7e5c
	ld a,(l7ad7)
	inc a
.l7c57
	ld (l7ad7),a
	cp #08
	ret nz
	xor a
	jr l7c57
	ret
.l7c61
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
.l7c70
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l7ad7)
	cp #00
	jr nz,l7c7b
	inc de
.l7c7b
	ld a,(de)
	cp #ff
	jp z,l7ca5
	ld (hl),d
	dec hl
	ld (hl),e
	dec a
	add a
	ld e,a
	ld d,#00
	ld hl,l7ffc
	add hl,de
	add hl,de
	add hl,de
	add hl,de
	ld a,(l7ad7)
	ld e,a
	add hl,de
	ld a,(hl)
.l7c96
	ld b,a
	ld d,#00
	add a
	ld e,a
	ld hl,l7a28
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.l7ca5
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jr l7c7b
.l7cad
	ld a,b
	cp #36
	jp nc,l7cf0
	ld a,l
	or h
	ret z
	ld a,c
	push hl
	add a
	dec a
	ld hl,l7aa9
	ld d,#00
	ld e,a
	add hl,de
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,l7abb
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,l7aa6
	add hl,de
	ld a,(hl)
	ld hl,l7ab1
	add hl,de
	ld (hl),a
	ld hl,l7ab0
	dec c
	jp nz,l7ce5
	res 0,(hl)
.l7ce5
	dec c
	jp nz,l7ceb
	res 1,(hl)
.l7ceb
	dec c
	ret nz
	res 2,(hl)
	ret
.l7cf0
	ld a,h
	ld (l7aaf),a
	ld a,l
	and #e0
	cp #00
	jp z,l7d1b
	rrca
	rrca
	rrca
	rrca
.l7d00
	ld hl,l7ab8
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,l7ab0
	dec c
	jr nz,l7d12
	res 3,(hl)
	ret
.l7d12
	dec c
	jr nz,l7d18
	res 4,(hl)
	ret
.l7d18
	res 5,(hl)
	ret
.l7d1b
	ld a,l
	and #0f
	ld hl,l7ab1
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr l7d00
.l7d2a
	ld a,b
	and #03
	ld c,a
	bit 2,b
	jr nz,l7d38
	bit 3,b
	jp nz,l7d6c
	ret
.l7d38
	bit 3,b
	jp nz,l7d81
	ld a,#f0
	and b
	rrc a
	rrc a
	rrc a
	rrc a
	ld b,a
	xor a
	cp c
	jr z,l7d5b
	ld hl,l7aa6
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,#00
	jp l7d91
.l7d5b
	ld hl,l7aa6
	call l7d66
	ld b,#00
	jp l7d9b
.l7d66
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.l7d6c
	ld a,c
	ld (l7ad6),a
	ld a,#e0
	and b
	rlca
	rlca
	rlca
	bit 4,b
	ld b,a
	jr z,l7d7d
	cpl
	inc a
.l7d7d
	ld (l7abe),a
	ret
.l7d81
	bit 4,b
	ret nz
	ld a,#e0
	and b
	rlca
	rlc a
	rlc a
	ld b,a
	xor a
	cp c
	jr z,l7d9b
.l7d91
	ld d,#00
	ld e,c
	ld hl,l7abb
	add hl,de
	dec hl
	ld (hl),b
	ret
.l7d9b
	ld hl,l7abb
	jp l7d66
.l7da1
	ld hl,l7abe
	xor a
	cp (hl)
	ret z
	ld d,a
	ld c,a
	ld b,(hl)
	ld a,(l7ad6)
	ld ix,l7aa9
	ld hl,l7ada
	cp d
	jr z,l7dc1
	dec a
	ld e,a
	add hl,de
	add a
	ld e,a
	add ix,de
	jp l7dd5
.l7dc1
	call l7dd5
	inc ix
	inc ix
	ld hl,l7adb
	call l7dd5
	inc ix
	inc ix
	ld hl,l7adc
.l7dd5
	ld a,(hl)
	add b
	add a
	ld e,a
	ld d,#00
	ld hl,l7a28
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ex de,hl
	xor a
	sbc hl,de
	push hl
	pop de
	sra h
	rr l
	push hl
	sra h
	rr l
	sra h
	rr l
	add hl,de
	add hl,de
	pop de
	add hl,de
	ld a,l
	ld l,h
	ld h,a
	xor a
	push bc
	ld b,#04
.l7e06
	xor c
	rr h
	rr l
	rr a
	djnz l7e06
	or h
	ld (ix+#16),a
	ld (ix+#17),l
	pop bc
	ret
.l7e18
	ld hl,l7aa9
	ld de,l7abf
	ld b,#03
.l7e20
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
	jr nc,l7e2f
	inc hl
.l7e2f
	ld c,h
	ld a,l
	pop de
	inc de
	pop hl
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	djnz l7e20
	ret
.l7e3b
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
.l7e5c
	ld hl,l7aa9
	ld d,#00
	add hl,de
	ld d,e
.l7e63
	ld e,(hl)
	inc hl
	call l7e3b
	djnz l7e63
	ret
.l7e6b
	ld hl,l7ab1
	ld c,a
	ld e,a
	ld d,#00
	add hl,de
	ex de,hl
	ld hl,#0007
	add hl,de
	ld a,(hl)
	cp #00
	ret z
	push de
	ld hl,l7af0
	dec a
	rla
	rla
	rla
	ld d,#00
	ld e,a
	add hl,de
	ld a,(l7ab7)
	ld e,a
	add hl,de
	ld a,(hl)
	pop hl
	ld b,(hl)
	cp b
	ret z
	ld (hl),a
	ld a,c
	add #08
	ld e,a
	ld b,#01
	jp l7e5c
.l7e9c
	db #02,#02,#01,#01,#03,#04,#04,#05
	db #06,#07,#08,#02,#09,#02,#02,#02
	db #02,#02,#02,#0a,#0a,#02,#02,#02
	db #02,#0b,#0c,#0d,#0e,#02,#02,#02
	db #02,#02,#02,#02,#02,#0f,#0f,#0f
	db #0f,#0b,#0c,#0d,#10,#11,#12,#13
	db #14,#11,#15,#16,#17,#18,#19,#1a
	db #1b,#1c,#1d,#1c,#1d,#1e,#1f,#1e
	db #1f,#20,#21,#22,#22,#23,#23,#22
	db #22,#0a,#0a,#02,#02,#24,#17,#25
	db #26,#25,#26,#25,#26,#27,#28,#ff
.l7ef4
	db #01,#01,#02,#02,#29,#2a,#2b,#2c
	db #2c,#2d,#2d,#20,#2e,#2f,#2f,#2f
	db #2f,#2f,#2f,#30,#31,#32,#33,#34
	db #34,#35,#35,#2f,#2d,#36,#36,#36
	db #36,#36,#36,#37,#38,#32,#33,#34
	db #34,#35,#35,#2f,#2d,#39,#39,#39
	db #3a,#39,#2f,#32,#3b,#34,#3c,#3d
	db #33,#3e,#1d,#3e,#1d,#3f,#1f,#3f
	db #1f,#20,#40,#2f,#2f,#2f,#2f,#2f
	db #2f,#30,#31,#32,#33,#34,#34,#35
	db #2f,#35,#2f,#35,#2f,#31,#41,#ff
.l7f4c
	db #42,#43,#44,#45,#03,#2a,#2b,#02
	db #02,#07,#08,#46,#47,#48,#49,#4a
	db #4b,#48,#4c,#17,#17,#4d,#16,#24
	db #17,#0b,#0c,#0d,#4e,#48,#49,#4a
	db #4b,#48,#4c,#17,#17,#4d,#16,#24
	db #17,#0b,#0c,#0d,#02,#4f,#50,#51
	db #52,#4f,#53,#54,#55,#56,#57,#58
	db #19,#59,#1d,#59,#1d,#5a,#1f,#5a
	db #1f,#46,#5b,#48,#49,#4a,#4b,#48
	db #4c,#17,#17,#4d,#16,#24,#17,#5c
	db #5d,#5c,#5d,#5c,#5d,#5e,#5f,#ff
.l7fa4
	db #60,#01,#61,#01,#01,#01,#01,#62
	db #63,#64,#01,#65,#66,#67,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#68,#67,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#69,#67,#01,#01
	db #01,#01,#01,#01,#01,#6a,#01,#01
	db #01,#6b,#6c,#6b,#6c,#6b,#6c,#6b
	db #6c,#6d,#60,#67,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#ff
.l7ffc
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #35,#35,#35,#35,#35,#35,#35,#35
	db #2a,#2b,#26,#1f,#13,#1a,#1f,#26
	db #04,#04,#04,#04,#04,#04,#04,#04
	db #09,#0c,#0f,#12,#15,#18,#1b,#1e
	db #21,#24,#27,#2a,#2d,#2e,#2f,#30
	db #02,#05,#08,#0b,#0e,#11,#14,#17
	db #1a,#1d,#20,#23,#26,#29,#2c,#2f
	db #1a,#1a,#1a,#1a,#1a,#35,#35,#35
	db #35,#35,#3e,#35,#35,#35,#3e,#35
	db #35,#35,#28,#28,#28,#28,#2a,#2a
	db #2b,#2b,#2b,#2b,#2a,#2a,#2b,#2b
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #36,#35,#36,#35,#36,#35,#37,#35
	db #35,#35,#35,#37,#35,#35,#35,#37
	db #02,#02,#02,#02,#02,#02,#02,#35
	db #27,#27,#27,#29,#29,#29,#2b,#2b
	db #29,#29,#29,#24,#24,#24,#29,#29
	db #27,#27,#27,#22,#22,#22,#27,#27
	db #25,#25,#25,#20,#20,#20,#25,#25
	db #29,#29,#29,#26,#26,#26,#21,#21
	db #27,#27,#27,#27,#27,#27,#27,#27
	db #26,#26,#26,#26,#26,#26,#26,#26
	db #25,#35,#35,#27,#35,#35,#29,#35
	db #27,#35,#35,#24,#35,#35,#27,#35
	db #25,#35,#35,#22,#35,#35,#25,#35
	db #24,#35,#35,#21,#35,#35,#24,#35
	db #0a,#11,#16,#1a,#16,#2e,#29,#26
	db #06,#0d,#12,#16,#08,#0f,#14,#18
	db #02,#09,#0e,#12,#0e,#26,#21,#1e
	db #0a,#11,#16,#1a,#0c,#13,#18,#1c
	db #02,#02,#06,#02,#09,#09,#0c,#10
	db #1a,#1a,#1a,#1a,#1a,#1a,#35,#35
	db #35,#35,#36,#35,#35,#35,#36,#35
	db #35,#35,#37,#35,#35,#35,#37,#35
	db #26,#26,#26,#26,#29,#29,#26,#26
	db #35,#35,#21,#21,#21,#21,#23,#23
	db #24,#24,#24,#23,#23,#23,#21,#21
	db #17,#17,#17,#17,#17,#17,#17,#17
	db #35,#07,#13,#1f,#2b,#1f,#13,#07
	db #0b,#0b,#0b,#0b,#0b,#0b,#0b,#0b
	db #04,#0b,#10,#14,#17,#1c,#20,#23
	db #10,#17,#23,#28,#17,#1a,#14,#17
	db #09,#09,#09,#09,#09,#09,#09,#09
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #0e,#0e,#0e,#0e,#0e,#35,#35,#35
	db #02,#35,#0e,#0e,#02,#35,#0e,#0e
	db #05,#35,#11,#11,#06,#35,#12,#12
	db #07,#35,#13,#13,#07,#35,#13,#13
	db #00,#35,#0c,#0c,#00,#35,#0c,#0c
	db #05,#35,#11,#11,#05,#35,#11,#11
	db #0a,#35,#16,#16,#0a,#35,#16,#16
	db #09,#35,#15,#15,#09,#35,#15,#15
	db #02,#37,#0e,#0e,#02,#36,#0e,#0e
	db #05,#3e,#11,#11,#06,#3e,#12,#12
	db #07,#3e,#13,#13,#07,#3e,#13,#13
	db #03,#35,#0f,#0f,#03,#35,#0f,#0f
	db #01,#35,#0d,#0d,#01,#35,#0d,#0d
	db #0b,#35,#17,#17,#0b,#35,#17,#17
	db #08,#35,#14,#14,#08,#35,#14,#14
	db #06,#35,#12,#12,#06,#35,#12,#12
	db #0a,#11,#16,#1a,#16,#1d,#22,#26
	db #02,#09,#0e,#12,#0e,#15,#1a,#1e
	db #0e,#0e,#0e,#0e,#0e,#0e,#35,#35
	db #07,#07,#07,#07,#07,#07,#07,#07
	db #26,#28,#24,#1f,#1a,#1c,#18,#13
	db #0c,#13,#18,#1c,#1f,#24,#28,#2b
	db #28,#2a,#26,#21,#1c,#1e,#1a,#15
	db #0e,#15,#1a,#1e,#21,#26,#2a,#2d
	db #0e,#0e,#12,#0e,#15,#15,#18,#1c
	db #0e,#0e,#0e,#0e,#0e,#0e,#1a,#1a
	db #23,#23,#23,#23,#24,#24,#21,#21
	db #21,#21,#21,#21,#21,#21,#1a,#1a
	db #23,#23,#23,#23,#24,#24,#26,#26
	db #26,#26,#26,#26,#26,#26,#1a,#1a
	db #21,#21,#21,#21,#23,#23,#24,#24
	db #27,#27,#27,#27,#1f,#1f,#27,#27
	db #35,#35,#35,#36,#35,#37,#1a,#1a
	db #2b,#2b,#2b,#2d,#2d,#2d,#2e,#2e
	db #2d,#2d,#2d,#29,#29,#29,#2d,#2d
	db #2b,#2b,#2b,#27,#27,#27,#2b,#2b
	db #29,#29,#29,#25,#25,#25,#29,#29
	db #2d,#2d,#2d,#29,#29,#29,#26,#26
	db #2b,#2b,#2b,#2b,#2b,#2b,#2b,#2b
	db #2a,#2a,#2a,#2a,#2a,#2a,#2a,#2a
	db #29,#35,#35,#2b,#35,#35,#2c,#35
	db #2b,#35,#35,#27,#35,#35,#2b,#35
	db #29,#35,#35,#25,#35,#35,#29,#35
	db #35,#35,#2e,#2e,#2e,#35,#35,#35
	db #35,#35,#26,#26,#26,#35,#35,#35
	db #0e,#0e,#0e,#0e,#0e,#35,#1a,#1a
	db #35,#35,#18,#18,#18,#18,#1a,#1a
	db #1c,#1c,#1c,#1a,#1a,#1a,#18,#18
	db #1f,#1f,#1f,#1f,#1f,#1f,#1f,#1f
	db #35,#2b,#1f,#13,#07,#13,#1f,#2b
	db #b4,#00,#00,#00,#00,#00,#00,#00
	db #ef,#00,#00,#00,#00,#00,#00,#00
	db #69,#69,#69,#69,#69,#69,#69,#69
	db #69,#69,#69,#69,#29,#29,#29,#29
	db #69,#00,#00,#00,#00,#00,#00,#00
	db #2c,#00,#00,#00,#00,#00,#00,#00
	db #b4,#00,#a4,#94,#84,#77,#c4,#00
	db #8e,#00,#00,#00,#00,#00,#00,#00
	db #d6,#00,#00,#00,#00,#00,#00,#00
	db #b6,#00,#00,#00,#00,#00,#6f,#6d
	db #4c,#8e,#00,#00,#00,#00,#00,#00
	db #6e,#8f,#00,#b5,#00,#d9,#b9,#00
	db #97,#00,#00,#00,#00,#00,#00,#00
	db #6c,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
;
.music_info
	db "Thai Boxing (1986)(Anco Software Ltd.)()",0
	db "",0

	read "music_end.asm"
