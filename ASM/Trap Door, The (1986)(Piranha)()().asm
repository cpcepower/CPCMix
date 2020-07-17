; Music of Trap Door, The (1986)(Piranha)()()
; Ripped by Megachur the 18/03/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TRAPDOOR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #4a02

	read "music_header.asm"

	xor a
	jr l4a07
;
.init_music
;
	ld a,#01
.l4a07
	ld (l40f2),a
	ld de,#03e8
	call l4a23
	ld de,#0064
	call l4a23
	ld de,#000a
	call l4a23
	inc a
	ld (l40f2),a
	ld a,l
	jr l4a2d
.l4a23
	and a
	ld b,#ff
.l4a26
	inc b
	sbc hl,de
	jr nc,l4a26
	add hl,de
	ld a,b
.l4a2d
	or a
	jr nz,l4a3e
	ld a,(l40f2)
	or a
	jr nz,l4a3a
	ld a,#20
	jr l4a43
.l4a3a
	ld a,#30
	jr l4a43
.l4a3e
	add #30
	ld (l40f2),a
.l4a43
	ld (ix+#00),a
	inc ix
	ret
	pop bc
	call l4a4f
	push bc
	ret
.l4a4f
	db #3a,#ae,#97,#fe,#ff,#28,#1b,#0a
	db #5f,#03,#0a,#57,#03,#0a,#32,#bd
	db #97,#03,#0a,#03,#fe,#26,#28,#e8
	db #fe,#5d,#c8,#cd,#00,#46,#13,#13
	db #18,#f0,#c5,#cd,#12,#03,#c1,#0a
	db #03,#e6,#07,#cd,#90,#bb,#0a,#67
	db #03,#0a,#6f,#03,#c5,#cd,#75,#bb
	db #c1,#0a,#03,#fe,#5d,#28,#0b,#fe
	db #26,#28,#e4,#c5,#cd,#5d,#bb,#c1
	db #18,#ef,#c3,#0f,#03
.l4a9c
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
	db #00,#00,#06,#07,#1b,#70,#00,#50
	db #09,#70,#1f,#70,#0a,#07,#11,#07
.l4b1d equ $ + 7
.l4b1a equ $ + 4
	db #1c,#07,#1e,#20,#00,#00,#00,#00
.l4b25 equ $ + 7
.l4b24 equ $ + 6
.l4b23 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#3f,#00
.l4b2c equ $ + 6
.l4b2b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4b33 equ $ + 5
.l4b32 equ $ + 4
.l4b2f equ $ + 1
	db #00,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00
.l4b3d equ $ + 4
.l4b39
	dw l4b4c,l4e56,l4b4c,l4e78
.l4b45 equ $ + 4
.l4b41
	dw l4b4c,l4e9a,l4b4c,l4ebc
.l4b50 equ $ + 7
.l4b4f equ $ + 6
.l4b4e equ $ + 5
.l4b4c equ $ + 3
.l4b4b equ $ + 2
.l4b4a equ $ + 1
	db #dc,#00,#00,#ff,#ff,#00,#00,#00
.l4b51
	db #08,#0c,#0c,#0c,#0c,#0c,#0b,#09
	db #0e,#0e,#0d,#0b,#09,#06,#03,#00
	db #08,#0c,#0e,#0e,#0d,#0b,#09,#05
	db #0a,#0e,#0f,#0e,#0d,#0c,#0b,#0a
	db #0f,#0b,#07,#03,#0f,#0b,#07,#03
	db #0e,#0c,#0a,#06,#0c,#0a,#06,#02
	db #0b,#0c,#0a,#09,#08,#06,#04,#02
;
.play_music
;
	ld a,(l4b2b)
	inc a
	ld (l4b2b),a
	cp #08
	call z,l4bad
	xor a
	call l4e25
	ld a,#01
	call l4e25
	ld a,#02
	call l4e25
	call l4dd2
	ld e,#00
	ld b,#06
	jp l4e16
.l4bad
	ld hl,l4b24
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call l4d32
	ld hl,l4b2b
	ld (hl),b
	inc hl
	call l4d32
	ld hl,l4b32
	ld (hl),b
	inc hl
	call l4d32
	inc hl
	call l4d32
	ld hl,l4b45
	call l4c3f
	call l4cf6
	ld hl,l4b39
	call l4c3f
	ld (l4b4e),a
	ld c,#01
	call l4c79
	ld hl,l4b3d
	call l4c3f
	ld (l4b4f),a
	ld c,#02
	call l4c79
	ld hl,l4b41
	call l4c3f
	ld (l4b50),a
	ld c,#03
	call l4c79
	call l4d6d
	ld hl,l4b1d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l4c30
	inc hl
	inc hl
	call l4c30
	dec hl
	dec hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l4c30
	ld e,#00
	ld b,#0b
	call l4e16
	ld a,(l4b4b)
	inc a
.l4c26
	ld (l4b4b),a
	cp #04
	ret nz
	xor a
	jr l4c26
	ret
.l4c30
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
.l4c3f
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l4b4b)
	cp #00
	jr nz,l4c4a
	inc de
.l4c4a
	ld a,(de)
	cp #ff
	jp z,l4c71
	ld (hl),d
	dec hl
	ld (hl),e
	dec a
	ld e,a
	ld d,#00
	ld hl,l4ede
	add hl,de
	add hl,de
	add hl,de
	add hl,de
	ld a,(l4b4b)
	ld e,a
	add hl,de
	ld a,(hl)
	ld b,a
	add a
	ld e,a
	ld hl,l4a9c
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.l4c71
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jr l4c4a
.l4c79
	ld a,b
	cp #36
	jp nc,l4cbc
	ld a,l
	or h
	ret z
	ld a,c
	push hl
	add a
	dec a
	ld hl,l4b1d
	ld d,#00
	ld e,a
	add hl,de
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,l4b2f
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,l4b1a
	add hl,de
	ld a,(hl)
	ld hl,l4b25
	add hl,de
	ld (hl),a
	ld hl,l4b24
	dec c
	jp nz,l4cb1
	res 0,(hl)
.l4cb1
	dec c
	jp nz,l4cb7
	res 1,(hl)
.l4cb7
	dec c
	ret nz
	res 2,(hl)
	ret
.l4cbc
	ld a,h
	ld (l4b23),a
	ld a,l
	and #f0
	cp #00
	jp z,l4ce7
	rrca
	rrca
	rrca
	rrca
.l4ccc
	ld hl,l4b2c
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,l4b24
	dec c
	jr nz,l4cde
	res 3,(hl)
	ret
.l4cde
	dec c
	jr nz,l4ce4
	res 4,(hl)
	ret
.l4ce4
	res 5,(hl)
	ret
.l4ce7
	ld a,l
	and #0f
	ld hl,l4b25
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr l4ccc
.l4cf6
	ld a,b
	and #03
	ld c,a
	bit 2,b
	jr nz,l4d04
	bit 3,b
	jp nz,l4d38
	ret
.l4d04
	bit 3,b
	jp nz,l4d4d
	ld a,#f0
	and b
	rrc a
	rrc a
	rrc a
	rrc a
	ld b,a
	xor a
	cp c
	jr z,l4d27
	ld hl,l4b1a
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,#00
	jp l4d5d
.l4d27
	ld hl,l4b1a
	call l4d32
	ld b,#00
	jp l4d67
.l4d32
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.l4d38
	ld a,c
	ld (l4b4a),a
	ld a,#e0
	and b
	rlca
	rlca
	rlca
	bit 4,b
	ld b,a
	jr z,l4d49
	cpl
	inc a
.l4d49
	ld (l4b32),a
	ret
.l4d4d
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
	jr z,l4d67
.l4d5d
	ld d,#00
	ld e,c
	ld hl,l4b2f
	add hl,de
	dec hl
	ld (hl),b
	ret
.l4d67
	ld hl,l4b2f
	jp l4d32
.l4d6d
	ld hl,l4b32
	xor a
	cp (hl)
	ret z
	ld d,a
	ld c,a
	ld b,(hl)
	ld a,(l4b4a)
	ld ix,l4b1d
	ld hl,l4b4e
	cp d
	jr z,l4d8d
	dec a
	ld e,a
	add hl,de
	add a
	ld e,a
	add ix,de
	jp l4da1
.l4d8d
	call l4da1
	inc ix
	inc ix
	ld hl,l4b4f
	call l4da1
	inc ix
	inc ix
	ld hl,l4b50
.l4da1
	ld a,(hl)
	add b
	add a
	ld e,a
	ld d,#00
	ld hl,l4a9c
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ex de,hl
	xor a
	sbc hl,de
	add hl,hl
	ld a,l
	ld l,h
	ld h,a
	xor a
	push bc
	ld b,#04
.l4dc0
	xor c
	rr h
	rr l
	rr a
	djnz l4dc0
	or h
	ld (ix+#16),a
	ld (ix+#17),l
	pop bc
	ret
.l4dd2
	ld hl,l4b1d
	ld de,l4b33
	ld b,#03
.l4dda
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
	jr nc,l4de9
	inc hl
.l4de9
	ld c,h
	ld a,l
	pop de
	inc de
	pop hl
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	djnz l4dda
	ret
.l4df5
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
.l4e16
	ld hl,l4b1d
	ld d,#00
	add hl,de
	ld d,e
.l4e1d
	ld e,(hl)
	inc hl
	call l4df5
	djnz l4e1d
	ret
.l4e25
	ld hl,l4b25
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
	ld hl,l4b51
	dec a
	rla
	rla
	rla
	ld d,#00
	ld e,a
	add hl,de
	ld a,(l4b2b)
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
	jp l4e16
.l4e56
	db #03,#04,#05,#06,#03,#04,#07,#08
	db #09,#0a,#0b,#0c,#03,#0d,#0e,#0f
	db #10,#11,#12,#12,#13,#14,#15,#16
	db #02,#02,#17,#18,#19,#1a,#1b,#1c
.l4e78 equ $ + 2
	db #1b,#ff,#1d,#1e,#1f,#20,#21,#22
	db #23,#24,#1d,#1e,#25,#26,#27,#28
	db #29,#2a,#02,#2b,#2c,#2d,#2e,#2b
	db #2c,#2f,#02,#2d,#30,#31,#32,#33
.l4e9a equ $ + 4
	db #34,#33,#35,#ff,#03,#04,#05,#06
	db #21,#22,#23,#24,#36,#37,#1f,#20
	db #21,#22,#38,#39,#3a,#02,#02,#3b
	db #3c,#08,#02,#18,#10,#11,#3d,#3e
.l4ebc equ $ + 6
	db #3f,#40,#41,#40,#41,#ff,#42,#01
	db #42,#01,#42,#01,#42,#01,#42,#01
	db #01,#01,#01,#43,#44,#45,#46,#47
	db #01,#01,#48,#01,#01,#49,#01,#4a
	db #01,#4b,#01,#01,#01,#01,#4c,#ff
.l4ede
	db #00,#00,#00,#00,#35,#35,#35,#35
	db #1d,#1d,#20,#1d,#24,#1d,#1d,#1d
	db #20,#1d,#20,#22,#20,#1d,#1d,#35
	db #20,#1f,#1d,#1b,#1d,#35,#35,#35
	db #24,#25,#24,#25,#24,#20,#20,#24
	db #29,#24,#29,#24,#29,#24,#20,#35
	db #24,#1d,#1d,#1b,#1c,#1c,#1c,#1c
	db #1c,#35,#1d,#1d,#21,#21,#24,#35
	db #26,#35,#26,#26,#26,#26,#26,#26
	db #28,#28,#28,#26,#29,#35,#35,#02
	db #02,#35,#00,#35,#02,#35,#35,#35
	db #35,#35,#35,#21,#35,#35,#1d,#1d
	db #20,#1d,#1d,#1b,#1d,#3b,#39,#35
	db #35,#3b,#39,#39,#35,#3b,#39,#35
	db #05,#35,#35,#0f,#11,#35,#35,#35
	db #35,#05,#11,#35,#35,#03,#0f,#35
	db #01,#35,#35,#0c,#0d,#35,#35,#35
	db #35,#0c,#0d,#35,#35,#08,#07,#35
	db #35,#05,#37,#35,#35,#3d,#37,#35
	db #01,#35,#37,#0c,#0d,#36,#37,#0b
	db #00,#35,#00,#35,#00,#35,#39,#35
	db #0e,#35,#35,#0e,#0e,#35,#0c,#35
	db #0a,#35,#35,#0a,#0c,#35,#35,#35
	db #0e,#35,#35,#35,#0e,#11,#16,#09
	db #35,#35,#35,#05,#05,#35,#03,#00
	db #05,#35,#39,#05,#05,#35,#39,#39
	db #05,#35,#00,#35,#05,#35,#37,#0f
	db #11,#36,#37,#35,#30,#30,#18,#18
	db #38,#38,#29,#29,#2d,#2d,#30,#35
	db #1a,#1a,#1a,#1a,#1c,#1c,#1c,#1a
	db #26,#26,#26,#25,#25,#35,#1d,#1d
	db #20,#1d,#35,#1b,#11,#35,#39,#11
	db #11,#35,#39,#39,#2c,#00,#00,#00
	db #00,#4f,#00,#8d,#fb,#fb,#fb,#fb
	db #00,#00,#8c,#00,#2e,#00,#00,#00
	db #00,#00,#a5,#a7,#00,#00,#00,#48
	db #00,#00,#8f,#00,#00,#00,#a7,#00
	db #00
.l40f2
	db #00
;
.music_info
	db "Trap Door, The (1986)(Piranha)()",0
	db "",0

	read "music_end.asm"
