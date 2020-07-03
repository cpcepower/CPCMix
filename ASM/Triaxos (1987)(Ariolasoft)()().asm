; Music of Triaxos (1987)(Ariolasoft)()()
; Ripped by Megachur the 18/03/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "TRIAXOS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 03
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #07f1

	read "music_header.asm"
;
.init_music
;
	di
	ld hl,l08cb
	ld (l08ba),hl
	ld (l08be),hl
	ld (l08c2),hl
	ld (l08c6),hl
	ld a,#08
	dec a
	ld (l08ab),a
	xor a
	ld (l08ca),a
	ld a,#3a
	ld (l0909),a
	ret
;
.stop_music
;
	ld a,#c9
	ld (l0909),a
	ld de,#073f
	jp l0ba7
.l081c
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
	dw #002f,#0000
	db #04,#08,#14,#08,#1f,#08,#09,#70
	db #1f,#70,#0a,#07,#11,#07,#1c,#07
.l089d equ $ + 5
.l089a equ $ + 2
	db #09,#40,#00,#00,#00,#00,#00,#00
.l08a5 equ $ + 5
.l08a4 equ $ + 4
.l08a3 equ $ + 3
	db #00,#00,#00,#00,#3f,#00,#00,#00
.l08af equ $ + 7
.l08ac equ $ + 4
.l08ab equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#07
.l08b3 equ $ + 3
.l08b2 equ $ + 2
	db #05,#04,#00,#00,#00,#00,#00,#00
.l08be equ $ + 6
.l08ba equ $ + 2
.l08b9 equ $ + 1
	db #00,#00,#cb,#08,#07,#0c,#cb,#08
.l08c6 equ $ + 6
.l08c2 equ $ + 2
	db #38,#0c,#cb,#08,#69,#0c,#cb,#08
.l08cf equ $ + 7
.l08ce equ $ + 6
.l08cd equ $ + 5
.l08cb equ $ + 3
.l08ca equ $ + 2
	db #9a,#0c,#00,#ff,#ff,#00,#00,#00
.l08d1 equ $ + 1
.l08d0
	db #00,#08,#0c,#0c,#0c,#0c,#0c,#0b
	db #09,#0f,#0d,#0b,#09,#07,#05,#03
	db #01,#06,#08,#0b,#0e,#0d,#0b,#07
	db #04,#0d,#0b,#0a,#08,#08,#06,#05
	db #03,#0a,#0f,#0e,#0e,#0e,#0d,#0b
	db #09,#0f,#0d,#0b,#0a,#0a,#0a,#0c
	db #0e,#0c,#0f,#0e,#0c,#0b,#0b,#0b
	db #0a
;
.play_music
.l0909
;
	ld a,(l08ab)
	inc a
	ld (l08ab),a
	cp #08
	call z,l0930
	xor a
	call l0bd7
	ld a,#01
	call l0bd7
	ld a,#02
	call l0bd7
	call l0b57
	call l0b7a
	ld e,#00
	ld b,#06
	jp l0bc8
.l0930
	ld hl,l08a4
	ld b,#3f
	ld (hl),b
	inc hl
	ld b,#00
	call l0ab3
	ld hl,l08ab
	ld (hl),b
	inc hl
	call l0ab3
	ld hl,l08b2
	ld (hl),b
	inc hl
	call l0ab3
	inc hl
	call l0ab3
	ld hl,l08c6
	call l09c2
	call l0a77
	ld hl,l08ba
	call l09c2
	ld (l08cd),a
	ld c,#01
	call l09fb
	ld hl,l08be
	call l09c2
	ld (l08ce),a
	ld c,#02
	call l09fb
	ld hl,l08c2
	call l09c2
	ld (l08cf),a
	ld c,#03
	call l09fb
	call l0af2
	ld hl,l089d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l09b3
	inc hl
	inc hl
	call l09b3
	dec hl
	dec hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	call l09b3
	ld e,#00
	ld b,#0b
	call l0bc8
	ld a,(l08ca)
	inc a
.l09a9
	ld (l08ca),a
	cp #04
	ret nz
	xor a
	jr l09a9
	ret
.l09b3
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
.l09c2
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(l08ca)
	or a
	jr nz,l09cc
	inc de
.l09cc
	ld a,(de)
	cp #ff
	jp z,l09f3
	ld (hl),d
	dec hl
	ld (hl),e
	dec a
	ld e,a
	ld d,#00
	ld hl,l0ccb
	add hl,de
	add hl,de
	add hl,de
	add hl,de
	ld a,(l08ca)
	ld e,a
	add hl,de
	ld a,(hl)
	ld b,a
	add a
	ld e,a
	ld hl,l081c
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ex de,hl
	ld a,b
	ret
.l09f3
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec hl
	dec hl
	jr l09cc
.l09fb
	ld a,b
	cp #36
	jp nc,l0a3e
	ld a,l
	or h
	ret z
	ld a,c
	push hl
	add a
	dec a
	ld hl,l089d
	ld d,#00
	ld e,a
	add hl,de
	pop de
	ld (hl),e
	dec hl
	ld (hl),d
	ld hl,l08af
	ld e,c
	ld d,#00
	dec e
	add hl,de
	ld a,(hl)
	dec hl
	dec hl
	dec hl
	ld (hl),a
	ld hl,l089a
	add hl,de
	ld a,(hl)
	ld hl,l08a5
	add hl,de
	ld (hl),a
	ld hl,l08a4
	dec c
	jp nz,l0a33
	res 0,(hl)
.l0a33
	dec c
	jp nz,l0a39
	res 1,(hl)
.l0a39
	dec c
	ret nz
	res 2,(hl)
	ret
.l0a3e
	ld a,h
	ld (l08a3),a
	ld a,l
	and #f0
	or a
	jp z,l0a68
	rrca
	rrca
	rrca
	rrca
.l0a4d
	ld hl,l08ac
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	ld hl,l08a4
	dec c
	jr nz,l0a5f
	res 3,(hl)
	ret
.l0a5f
	dec c
	jr nz,l0a65
	res 4,(hl)
	ret
.l0a65
	res 5,(hl)
	ret
.l0a68
	ld a,l
	and #0f
	ld hl,l08a5
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),a
	xor a
	jr l0a4d
.l0a77
	ld a,b
	and #03
	ld c,a
	ld a,b
	bit 2,b
	jr nz,l0a86
	bit 3,b
	jp nz,l0ab9
	ret
.l0a86
	bit 3,b
	jp nz,l0ace
	and #f0
	rrc a
	rrc a
	rrc a
	rrc a
	ld b,a
	xor a
	cp c
	jr z,l0aa8
	ld hl,l089a
	ld d,#00
	ld e,c
	add hl,de
	dec hl
	ld (hl),b
	ld b,#00
	jp l0ae2
.l0aa8
	ld hl,l089a
	call l0ab3
	ld b,#00
	jp l0aec
.l0ab3
	ld (hl),b
	inc hl
	ld (hl),b
	inc hl
	ld (hl),b
	ret
.l0ab9
	ld a,c
	ld (l08b9),a
	ld a,#e0
	and b
	rlca
	rlca
	rlca
	bit 4,b
	ld b,a
	jr z,l0aca
	cpl
	inc a
.l0aca
	ld (l08b2),a
	ret
.l0ace
	and #e0
	bit 4,b
	jr z,l0ad8
	ld (l08d0),a
	ret
.l0ad8
	rlca
	rlc a
	rlc a
	ld b,a
	xor a
	cp c
	jr z,l0aec
.l0ae2
	ld d,#00
	ld e,c
	ld hl,l08af
	add hl,de
	dec hl
	ld (hl),b
	ret
.l0aec
	ld hl,l08af
	jp l0ab3
.l0af2
	ld hl,l08b2
	xor a
	cp (hl)
	ret z
	ld d,a
	ld c,a
	ld b,(hl)
	ld a,(l08b9)
	ld ix,l089d
	ld hl,l08cd
	cp d
	jr z,l0b12
	dec a
	ld e,a
	add hl,de
	add a
	ld e,a
	add ix,de
	jp l0b26
.l0b12
	call l0b26
	inc ix
	inc ix
	ld hl,l08ce
	call l0b26
	inc ix
	inc ix
	ld hl,l08cf
.l0b26
	ld a,(hl)
	add b
	add a
	ld e,a
	ld d,#00
	ld hl,l081c
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
.l0b45
	xor c
	rr h
	rr l
	rr a
	djnz l0b45
	or h
	ld (ix+#16),a
	ld (ix+#17),l
	pop bc
	ret
.l0b57
	ld hl,l089d
	ld de,l08b3
	ld b,#03
.l0b5f
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
	jr nc,l0b6e
	inc hl
.l0b6e
	ld c,h
	ld a,l
	pop de
	inc de
	pop hl
	ld (hl),a
	inc hl
	ld (hl),c
	inc hl
	djnz l0b5f
	ret
.l0b7a
	ld hl,l089d
	ld a,(l08d0)
	ld c,a
	bit 5,c
	call nz,l0b92
	inc hl
	inc hl
	bit 6,c
	call nz,l0b92
	inc hl
	inc hl
	bit 7,c
	ret z
.l0b92
	ld a,(l08ab)
	ld e,(hl)
	inc hl
	ld d,(hl)
	rrca
	rrca
	rrca
	dec de
	dec de
	jr nc,l0ba3
	inc de
	inc de
	inc de
	inc de
.l0ba3
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l0ba7
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
.l0bc8
	ld hl,l089d
	ld d,#00
	add hl,de
	ld d,e
.l0bcf
	ld e,(hl)
	inc hl
	call l0ba7
	djnz l0bcf
	ret
.l0bd7
	ld hl,l08a5
	ld c,a
	ld e,a
	ld d,#00
	add hl,de
	ex de,hl
	ld hl,#0007
	add hl,de
	ld a,(hl)
	or a
	ret z
	push de
	ld hl,l08d1
	dec a
	rla
	rla
	rla
	ld d,#00
	ld e,a
	add hl,de
	ld a,(l08ab)
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
	jp l0bc8
	db #03,#04,#03,#04,#03,#04,#03,#05
	db #06,#07,#08,#09,#0a,#0b,#0c,#0d
	db #06,#07,#0a,#0e,#0a,#0f,#10,#11
	db #03,#12,#13,#14,#15,#16,#17,#18
	db #19,#1a,#1b,#1c,#19,#1d,#1e,#1f
	db #19,#1a,#20,#21,#19,#22,#1e,#23
	db #ff,#24,#25,#26,#27,#24,#25,#26
	db #28,#29,#2a,#2b,#2c,#24,#2a,#2b
	db #2d,#29,#2a,#2b,#2c,#2e,#2f,#30
	db #31,#24,#32,#26,#27,#24,#33,#26
	db #28,#34,#35,#36,#37,#29,#2a,#38
	db #39,#29,#3a,#36,#3b,#3c,#2a,#3d
	db #3e,#ff,#3f,#40,#3f,#40,#3f,#40
	db #3f,#41,#42,#43,#42,#43,#44,#43
	db #45,#46,#42,#47,#42,#47,#42,#47
	db #48,#49,#3f,#4a,#3f,#4a,#3f,#4b
	db #4c,#4a,#4d,#4e,#1b,#21,#4f,#50
	db #51,#51,#19,#1a,#52,#53,#1e,#22
	db #1e,#54,#ff,#55,#01,#01,#01,#01
	db #01,#01,#56,#57,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#58,#56,#59,#5a,#59,#5a,#59
	db #5a,#59,#5a,#5b,#01,#5c,#01,#01
	db #01,#01,#5d,#01,#01,#5e,#01,#01
.l0ccb equ $ + 4
	db #5f,#60,#61,#ff,#00,#00,#00,#00
	db #35,#35,#35,#35,#35,#3e,#35,#36
	db #3e,#35,#37,#35,#3e,#3e,#1f,#35
	db #1d,#35,#1a,#18,#18,#1a,#1f,#35
	db #1d,#3e,#1a,#1d,#1f,#18,#1d,#1c
	db #1d,#3e,#1a,#18,#18,#1a,#18,#15
	db #18,#15,#13,#10,#0e,#3d,#3e,#1f
	db #15,#18,#1f,#35,#18,#1a,#36,#1a
	db #18,#15,#11,#10,#11,#10,#0e,#0c
	db #3e,#30,#35,#0c,#35,#3e,#35,#37
	db #3e,#30,#37,#0c,#35,#3e,#35,#38
	db #3e,#29,#35,#18,#35,#39,#35,#36
	db #3e,#30,#3a,#0c,#21,#21,#21,#1a
	db #1a,#1a,#21,#21,#21,#24,#23,#23
	db #39,#1f,#23,#23,#1a,#1a,#18,#18
	db #1a,#1a,#1a,#1a,#1a,#1d,#1d,#1d
	db #24,#24,#24,#23,#1f,#1f,#23,#23
	db #1a,#1a,#1a,#18,#3e,#1a,#1a,#0c
	db #02,#35,#35,#02,#05,#35,#35,#05
	db #04,#35,#35,#04,#00,#35,#00,#00
	db #07,#35,#07,#07,#02,#3e,#3e,#02
	db #05,#3e,#36,#05,#04,#35,#3e,#04
	db #00,#3e,#00,#00,#07,#35,#38,#07
	db #02,#35,#3e,#02,#05,#3e,#35,#05
	db #04,#3e,#3e,#04,#07,#36,#07,#07
	db #05,#35,#37,#05,#05,#35,#36,#05
	db #02,#35,#36,#02,#09,#3e,#35,#09
	db #08,#3e,#3e,#08,#00,#35,#35,#00
	db #07,#3e,#3e,#07,#00,#3e,#36,#00
	db #09,#3e,#37,#09,#00,#3e,#39,#00
	db #02,#3e,#36,#02,#07,#39,#39,#07
	db #00,#35,#35,#07,#35,#35,#3e,#35
	db #35,#3e,#35,#35,#30,#30,#13,#13
	db #26,#35,#26,#26,#3e,#35,#29,#35
	db #26,#35,#3e,#26,#24,#3e,#24,#24
	db #26,#3d,#39,#2b,#3e,#35,#2b,#35
	db #24,#35,#24,#24,#30,#30,#12,#12
	db #30,#3e,#13,#12,#30,#3e,#1f,#12
	db #35,#35,#39,#35,#35,#3c,#35,#35
	db #3e,#35,#36,#35,#2d,#2d,#2d,#29
	db #29,#29,#28,#28,#29,#29,#29,#29
	db #1d,#1d,#1d,#1c,#18,#18,#1c,#1c
	db #1a,#3e,#1a,#1a,#8f,#ed,#1c,#00
	db #fb,#fb,#fb,#fb,#4f,#00,#00,#00
	db #00,#00,#00,#8f,#8d,#00,#00,#00
	db #fb,#f9,#fb,#fb,#a5,#97,#00,#00
	db #68,#00,#00,#00,#69,#00,#00,#00
	db #00,#00,#38,#00,#00,#00,#58,#00
	db #9c,#00,#85,#77,#65,#57,#45,#37
	db #00,#00
;
.music_info
	db "Triaxos (1987)(Ariolasoft)()",0
	db "",0

	read "music_end.asm"
