; Music of Power Tetris (1991)(PC Amstrad International)(FACE Hugger)()
; Ripped by Megachur the 27/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "POWERTET.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 27
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #43d2
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.init_music
;
	call l43e3		; init music interrupt
	call l43f8
	ld hl,l43ec
	ld de,l4422
	ld b,#81
	jp #bcd7

;
.stop_music
.l43e3				; stop music interrupt
;
	ld hl,l43ec
	call #bcdd
	jp l4510

.l43ec
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
;
.real_init_music
.l43f8
;
	push iy
	ld iy,l4a1a
	xor a
	ld (iy+#04),a
	ld (iy+#0e),a
	ld (iy+#18),a
	call l44e6
	ld iy,l4a24
	call l44e6
	ld iy,l4a2e
	call l44e6
	call #bca7
	call l4510
	pop iy
	ret
;
.real_play_music
.l4422	; play music interrupt
;
	push ix
	push iy
	push af
	push bc
	push de
	push hl
	ld a,(#7011)
	cp #02
	jr c,l4437
	ld a,(#7012)
	or a
	jr nz,l444c
.l4437
	ld iy,l4a1a
	call l4455
	ld iy,l4a24
	call l4455
	ld iy,l4a2e
	call l4455
.l444c
	pop hl
	pop de
	pop bc
	pop af
	pop iy
	pop ix
	ret
.l4455
	call l4470
	ld a,(iy+#05)
	cp #40
	ret c
	ld c,(iy+#04)
	inc c
	ld a,(l4a17)
	cp c
	jr nz,l446a
	ld c,#00; reset music
.l446a
	ld (iy+#04),c
	jp l44e6
.l4470
	ld b,#00
	ld ix,l4a38
	ld h,(iy+#03)
	ld l,(iy+#02)
	push hl
	ld a,(hl)
	add a
	ld c,a
	push hl
	ld hl,l4945
	add hl,bc
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	pop hl
	inc hl
	ld a,(hl)
	and #0f
	ld (ix+#06),a
	ld a,(hl)
	rra
	rra
	rra
	rra
	and #0f
	ld (ix+#01),a
	ld (ix+#02),a
	ld c,a
	push hl
	ld hl,l4a07
	add hl,bc
	ld a,(hl)
	ld (ix+#05),a
	pop hl
	inc hl
	ld c,(hl)
	push bc
	sla c
	rl b
	sla c
	rl b
	ld h,b
	ld l,c
	sla c
	rl b
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	ld a,(iy+#09)
	ld (ix+#00),a
	ld hl,l4a38
	call #bcaa
	pop bc
	pop hl
	ret nc
	ld a,(iy+#05)
	add c
	ld (iy+#05),a
	inc hl
	inc hl
	inc hl
	ld (iy+#02),l
	ld (iy+#03),h
	ret
.l44e6
	ld b,#00
	ld (iy+#05),b
	ld c,(iy+#04)
	ld h,(iy+#07)
	ld l,(iy+#06)
	add hl,bc
	ld a,(hl)
	ld (iy+#08),a
	add a
	ld c,a
	ld h,(iy+#01)
	ld l,(iy+#00)
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l4a18)
	add hl,bc
	ld (iy+#02),l
	ld (iy+#03),h
	ret
.l4510
	ld hl,l4a41
	jp #bcaa

	call l4663
	ld de,#0080
	ld c,#28
	ld b,#07
	ld a,(#7015)
	call l45aa
	cp #ff
	ret z
	ld (#7015),a
	ret
	ld a,(#7011)
	or a
	jr z,l455c
	cp #02
	jr c,l4549
	ld a,(#7012)
	jr nz,l4541
	or a
	ld a,#00
	jr nz,l455c
.l4541
	or a
	jr z,l4549
	call l4645
	jr l454c
.l4549
	call l463f
.l454c
	ld de,#0040
	ld c,#5a
	ld b,#01
	ld a,(#7018)
	call l45aa
	cp #ff
	ret z
.l455c
	ld (#7018),a
	call l4669
	ld de,#0068
	ld c,#5a
	ld b,#01
	ld a,(#7018)
	or a
	ld a,(#7014)
	jr z,l4575
	ld a,(#7017)
.l4575
	call l45aa
	cp #ff
	ret z
	ld c,a
	ld a,(#7018)
	or a
	ld a,c
	jr z,l4587
	ld (#7017),a
	ret
.l4587
	ld (#7014),a
	ret
.l458b
	xor a
	cp h
	jr z,l4592
	cp d
	ret c
	ex de,hl
.l4592
	ld a,e
	or d
	jr nz,l4598
	ex de,hl
	ret
.l4598
	ld a,l
	or a
	ret z
	ld l,h
.l459c
	rra
	jr nc,l45a1
	add hl,de
	ret c
.l45a1
	sla e
	rl d
	ret c
	or a
	jr nz,l459c
	ret
.l45aa
	ld i,a
	call l46a6
	ld a,i
	push de
	ld de,#0014
	ld l,a
	ld h,#00
	call l458b
	pop de
	ld a,l
	add c
	ld c,a
	call l4612
.l45c2
	call l462b
	jr nz,l45c2
	call l4612
.l45ca
	call l4612
.l45cd
	call l461a
	and #13
	jr nz,l45cd
.l45d4
	call l462b
	jr nz,l460c
	call l461a
	and #13
	jr z,l45d4
	ld l,a
	ld a,i
	bit 4,l
	ret nz
	bit 0,l
	jr nz,l45fb
	ld a,i
	cp b
	jr z,l45d4
	inc a
	ld i,a
	call l4612
	ld a,c
	add #14
	ld c,a
	jr l45ca
.l45fb
	ld a,i
	or a
	jr z,l45d4
	dec a
	ld i,a
	call l4612
	ld a,c
	sub #14
	ld c,a
	jr l45ca
.l460c
	call l4612
	ld a,#ff
	ret
.l4612
	ld hl,l478f
	ld a,#88
	jp l46dc
.l461a
	push hl
	ld hl,(l4a4a)
	ld a,l
	add #09
	ld l,a
	ld a,h
	adc #00
	ld h,a
	ld a,(hl)
	pop hl
	and #1f
	ret
.l462b
	push hl
	ld hl,(l4a4a)
	ld a,l
	add #08
	ld l,a
	ld a,h
	adc #00
	ld h,a
	ld a,(hl)
	pop hl
	and #1f
	ret
	and #04
	ret
.l463f
	ld ix,l48ec
	jr l466d
.l4645
	ld ix,l4917
	jr l466d
	ld ix,l4797
	jr l466d
	ld ix,l47fe
	jr l466d
	ld ix,l4841
	jr l466d
	ld ix,l4861
	jr l466d
.l4663
	ld ix,l4891
	jr l466d
.l4669
	ld ix,l48cc
.l466d
	ld a,#01
	call #bc0e
	ld a,(ix+#00)
.l4675
	inc ix
	dec a
	call z,l4699
	call nz,l46a6
	ld e,(ix+#00)
	inc ix
	ld d,#00
	ld c,(ix+#00)
	inc ix
	ld a,(ix+#00)
	inc ix
	call l46b6
	ld a,(ix+#00)
	or a
	jr nz,l4675
	ret
.l4699
	xor a
	ld (l46fd),a
	ld (l4703),a
	ld a,#08
	ld (l46cd),a
	ret
.l46a6
	ld a,#13
	ld (l46fd),a
	ld a,#0c
	ld (l4703),a
	ld a,#10
	ld (l46cd),a
	ret
.l46b6
	di
	exx
	res 2,c
	out (c),c
	exx
	ei
	ld (l4736),a
.l46c1
	ld a,(ix+#00)
	inc ix
	or a
	jr z,l46d3
	call l46e1
.l46cd equ $ + 1
	ld hl,#0010
	add hl,de
	ex de,hl
	jr l46c1
.l46d3
	di
	exx
	set 2,c
	out (c),c
	exx
	ei
	ret
.l46dc
	ld (l4736),a
	jr l46f1
.l46e1
	ld h,#00
	add a
	rl h
	add a
	rl h
	add a
	rl h
	ld l,a
	ld a,h
	add #38
	ld h,a
.l46f1
	push bc
	ld b,#08
.l46f4
	push bc
	ld a,(hl)
	ld b,#08
	push de
.l46f9
	add a
	call c,l470a
.l46fd
	inc de
	inc de
	djnz l46f9
	pop de
	pop bc
.l4703
	inc c
	inc c
	inc hl
	djnz l46f4
	pop bc
	ret
.l470a
	push af
	ld a,c
	cp #c8
	jr nc,l4746
	ld a,d
	or a
	jr z,l471d
	cp #02
	jr nc,l4746
	ld a,e
	cp #40
	jr nc,l4746
.l471d
	push hl
	push de
	push bc
	ld a,c
	and #07
	ld h,a
	xor c
	ld l,a
	ld c,a
	ld b,#60
	add hl,hl
	add hl,hl
	add hl,bc
	add hl,hl
	ld a,e
	srl d
	rr e
	srl e
	add hl,de
.l4736 equ $ + 1
	ld c,#88
	and #03
	jr z,l4740
	ld b,a
.l473c
	srl c
	djnz l473c
.l4740
	ld a,(hl)
	xor c
	ld (hl),a
	pop bc
	pop de
	pop hl
.l4746
	pop af
	ret
	ld a,h
	add #08
	ld h,a
	ret nc
	ld a,l
	add #50
	ld l,a
	ld a,h
	adc #c0
	ld h,a
	ret
	di
	exx
	set 2,c
	set 3,c
	out (c),c
	exx
	ld e,#10
	ld c,#00
.l4763
	ld a,e
	dec a
	call l4774
	dec e
	jr nz,l4763
	ld a,#07
	ld c,#2c
	call l4774
	ei
	ret
.l4774
	ld b,#f4
	out (c),a
	ld b,#f6
	ld a,#c0
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld a,#80
	out (c),a
	xor a
	out (c),a
	ret
.l478f
	db #08,#fc,#02,#01,#02,#fc,#08,#00
.l4797
	db #02,#44,#0a,#80,#50,#4f,#57,#45
	db #52,#20,#54,#45,#54,#52,#49,#53
	db #00,#02,#5a,#3c,#88,#31,#20,#50
	db #6c,#61,#79,#65,#72,#00,#02,#5a
	db #50,#88,#32,#20,#50,#6c,#61,#79
	db #65,#72,#73,#00,#02,#5a,#64,#88
	db #33,#20,#50,#6c,#61,#79,#65,#72
	db #73,#00,#02,#5a,#78,#88,#34,#20
	db #50,#6c,#61,#79,#65,#72,#73,#00
	db #01,#78,#c0,#08,#70,#72,#6f,#67
	db #72,#61,#6d,#6d,#65,#64,#20,#62
	db #79,#20,#41,#2e,#53,#74,#72,#6f
.l47fe equ $ + 7
	db #69,#63,#7a,#65,#6b,#00,#00,#02
	db #58,#0a,#80,#4d,#61,#69,#6e,#20
	db #4d,#65,#6e,#75,#00,#02,#58,#46
	db #88,#53,#74,#61,#72,#74,#20,#47
	db #61,#6d,#65,#00,#02,#58,#5a,#88
	db #54,#75,#72,#6e,#69,#6e,#67,#00
	db #02,#58,#6e,#88,#4c,#65,#76,#65
	db #6c,#00,#02,#58,#82,#88,#48,#69
	db #67,#68,#73,#63,#6f,#72,#65,#73
.l4841 equ $ + 2
	db #00,#00,#02,#80,#0a,#80,#4c,#69
	db #6e,#6b,#00,#02,#70,#5a,#88,#43
	db #50,#43,#20,#23,#31,#00,#02,#70
	db #6e,#88,#43,#50,#43,#20,#23,#32
.l4861 equ $ + 2
	db #00,#00,#02,#40,#0a,#80,#4b,#69
	db #6e,#64,#20,#6f,#66,#20,#47,#61
	db #6d,#65,#00,#02,#50,#50,#88,#54
	db #65,#61,#6d,#77,#6f,#72,#6b,#00
	db #02,#50,#64,#88,#4d,#75,#6c,#74
	db #69,#20,#50,#6c,#61,#79,#65,#72
.l4891 equ $ + 2
	db #00,#00,#02,#78,#0a,#80,#4c,#65
	db #76,#65,#6c,#00,#02,#98,#28,#88
	db #30,#00,#02,#98,#3c,#88,#31,#00
	db #02,#98,#50,#88,#32,#00,#02,#98
	db #64,#88,#33,#00,#02,#98,#78,#88
	db #34,#00,#02,#98,#8c,#88,#35,#00
	db #02,#98,#a0,#88,#36,#00,#02,#98
.l48cc equ $ + 5
	db #b4,#88,#37,#00,#00,#02,#68,#0a
	db #80,#54,#75,#72,#6e,#69,#6e,#67
	db #00,#02,#80,#5a,#88,#4c,#65,#66
	db #74,#00,#02,#80,#6e,#88,#52,#69
.l48ec equ $ + 5
	db #67,#68,#74,#00,#00,#02,#68,#0a
	db #80,#54,#75,#72,#6e,#69,#6e,#67
	db #00,#02,#58,#5a,#88,#50,#6c,#61
	db #79,#65,#72,#20,#6f,#6e,#65,#00
	db #02,#58,#6e,#88,#50,#6c,#61,#79
	db #65,#72,#20,#74,#77,#6f,#00,#00
.l4917
	db #02,#68,#0a,#80,#54,#75,#72,#6e
	db #69,#6e,#67,#00,#02,#58,#5a,#88
	db #50,#6c,#61,#79,#65,#72,#20,#74
	db #68,#72,#65,#65,#00,#02,#58,#6e
	db #88,#50,#6c,#61,#79,#65,#72,#20
.l4945 equ $ + 6
	db #66,#6f,#75,#72,#00,#00,#00,#00
	dw #0eee,#0e18,#0d4d,#0c8e
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
.l4a07
	db #00,#00,#00,#01,#00,#05,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a1a equ $ + 3
.l4a18 equ $ + 1
.l4a17
	db #0e,#00,#68,#e2,#6d,#00,#00,#00
.l4a24 equ $ + 5
	db #00,#00,#68,#00,#01,#02,#6e,#00
.l4a2e equ $ + 7
	db #00,#00,#00,#40,#68,#00,#02,#22
	db #6e,#00,#00,#00,#00,#80,#68,#00
.l4a38 equ $ + 1
	db #04,#02,#01,#01,#00,#01,#00,#09
.l4a41 equ $ + 2
	db #ff,#05,#87,#00,#00,#00,#00,#00
.l4a4a equ $ + 3
	db #00,#18,#00,#35,#b6,#00,#00,#00
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
	db #00

;
.music_info
	db "Power Tetris (1991)(PC Amstrad International)(FACE Hugger)",0
	db "",0

	read "music_end.asm"
