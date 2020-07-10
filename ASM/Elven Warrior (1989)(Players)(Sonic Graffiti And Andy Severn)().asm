; Music of Elven Warrior (1989)(Players)(Sonic Graffiti And Andy Severn)()
; Ripped by Megachur the 15/04/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ELVENWAR.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #7900

	read "music_header.asm"

	jp l79cd
	jp l7aa4
.l790a equ $ + 4
.l7909 equ $ + 3
.l7908 equ $ + 2
.music_end equ $ + 1
.l7907 equ $ + 1
.l7906
	db #01,#01,#00,#00,#00,#00,#00,#00
.l7915 equ $ + 7
	db #00,#00,#30,#30,#30,#30,#00,#0f
.l7919 equ $ + 3
.l7918 equ $ + 2
.l7917 equ $ + 1
.l7916
	db #00,#00,#00,#00,#00
.l791b
	push hl
	ld c,h
	ld b,#00
	ld a,l
	ld hl,l00f0
	add hl,bc
	ld (hl),a
	pop hl
	ret
.l792e equ $ + 7
.l792d equ $ + 6
.l7928 equ $ + 1
.l7927
	db #00,#01,#00,#00,#00,#00,#00,#f8
.l7934 equ $ + 5
.l7932 equ $ + 3
.l7931 equ $ + 2
.l7930 equ $ + 1
.l792f
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
	db #0c,#05,#00,#08,#01,#ff,#00,#00
	db #00,#01,#08,#00,#00,#04,#00,#00
	db #00,#00,#00,#f7,#14,#0a,#01,#01
	db #00,#08,#04,#43,#82,#01,#43,#82
	db #00,#0a,#00,#02,#00,#fe,#00,#00
.l7962 equ $ + 3
.l7960 equ $ + 1
.l795f
	db #00,#00,#00,#00,#00,#00,#0f,#01
	db #01,#02,#01,#ff,#00,#00,#02,#03
	db #09,#00,#00,#01,#00,#00,#00,#00
	db #00,#ef,#ff,#ff,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l798e equ $ + 7
.l798d equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7990 equ $ + 1
	db #00,#00,#00,#00,#0f,#0a,#01,#02
	db #02,#ff,#00,#00,#04,#05,#0a,#00
	db #00,#00,#01,#00,#00,#00,#00,#00
	db #df,#ff,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l79bb equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l79c1
	ld a,#0f
	ld (l7915),a
	xor a
	ld (l7917),a
	ld (l7916),a
;
.init_music
.l79cd
;
	call l7a78
	ld a,(l7909)
	cp #ff
	jp nz,l79dc
	inc a
	ld (l7909),a
.l79dc
	ld a,#01
	ld (l7934),a
	ld (l7962),a
	ld (l7990),a
	xor a
	ld (l7908),a
	push ix
	ld ix,l7932
	ld a,(l7909)
	add a
	ld b,a
	add a
	add b
	ld l,a
	ld h,#00
	ld de,l820f
	add hl,de
	ld (l7a0d),hl
	inc hl
	inc hl
	ld (l7a17),hl
	inc hl
	inc hl
	ld (l7a21),hl
.l7a0d equ $ + 1
	ld hl,(l8243)
	call l7a46
	ld ix,l7960
.l7a17 equ $ + 1
	ld hl,(l826c)
	call l7a46
	ld ix,l798e
.l7a21 equ $ + 1
	ld hl,(l829b)
	call l7a46
	ld a,#01
	ld (l7907),a
	ld h,#07
	ld l,#f8
	call l791b
	ld a,(l7909)
	cp #01
	pop ix
	ret
.l7a3a	; test player
	halt
	call l7aa4
	ld a,(l7907)
	and a
	jp nz,l7a3a
	ret
.l7a46
	ld (ix+#20),l
	ld (ix+#23),l
	ld (ix+#00),l
	ld (ix+#21),h
	ld (ix+#24),h
	ld (ix+#01),h
	call l7f05
	ld (ix+#02),#01
	ld (ix+#0c),#00
	ld (ix+#05),#00
	ld (ix+#04),#00
	ld (ix+#17),#00
	ret
.l7a70
	call l7a78
	xor a
	ld (l7907),a
	ret
.l7a78
	ld h,#07
	ld l,#ff
	call l791b
	ld hl,l7927
	ld de,l7928
	ld bc,#000a
	ld (hl),#00
	ldir
	ld a,#f8
	ld (l792e),a
.l7a91
	ld b,#0b
	ld h,#00
	ld de,l7927
.l7a98
	ld a,(de)
	ld l,a
	push bc
	call l791b
	pop bc
	inc h
	inc de
	djnz l7a98
	ret
;
.real_play_music
.l7aa4
;
	ld a,(l7906)
	and a
	jp z,l7ad7
	ld b,a
	xor a
	ld (l7906),a
	ld a,b
	cp #ff
	jp z,l7a70
	cp #fe
	jp nz,l7ad0
	ld a,#01
	ld (l7916),a
	ld a,#ff
	ld (l7917),a
	ld a,#0a
	ld (l7919),a
	ld (l7918),a
	jp l7ad7
.l7ad0
	dec a
	ld (l7909),a
	jp l79c1
.l7ad7
	ld a,(l7907)
	and a
	jr z,l7b36
	push ix
	ld ix,l7932
	bit 7,(ix+#0c)
	call z,l7b37
	ld ix,l7960
	bit 7,(ix+#0c)
	call z,l7b37
	ld ix,l798e
	bit 7,(ix+#0c)
	call z,l7b37
	ld a,(l7915)
	cpl
	and #0f
	ld b,a
	ld a,(l7908)
	and a
	ld a,#10
	jp nz,l7b18
	ld a,(l792f)
	sub b
	jp nc,l7b18
	xor a
.l7b18
	ld (l792f),a
	ld a,(l7930)
	sub b
	jp nc,l7b23
	xor a
.l7b23
	ld (l7930),a
	ld a,(l7931)
	sub b
	jp nc,l7b2e
	xor a
.l7b2e
	ld (l7931),a
	call l7a91
	pop ix
.l7b36
	ret
.l7b37
	ld a,(ix+#02)
	dec (ix+#02)
	jp z,l7ccc
.l7b40
	ld a,(ix+#0c)
	and #03
	jp z,l7c00
	cp #01
	jp z,l7b5a
	cp #02
	jp z,l7b9a
	cp #03
	jp z,l7be4
	jp l7c31
.l7b5a
	ld a,(ix+#0b)
	and a
	jr z,l7b66
	dec (ix+#0b)
	jp l7c31
.l7b66
	ld a,(ix+#04)
	ld b,(ix+#08)
	add b
	ld (ix+#04),a
	ld b,(ix+#05)
	cp b
	jr z,l7b87
	jr nc,l7b81
	ld a,(ix+#07)
	ld (ix+#0b),a
	jp l7c31
.l7b81
	ld a,(ix+#05)
	ld (ix+#04),a
.l7b87
	ld a,(ix+#0c)
	and #fc
	or #02
	ld (ix+#0c),a
	ld a,(ix+#09)
	ld (ix+#25),a
	jp l7c31
.l7b9a
	ld a,(ix+#25)
	and a
	jr z,l7ba6
	dec (ix+#25)
	jp l7c31
.l7ba6
	ld a,(ix+#04)
	ld b,(ix+#0a)
	add b
	ld (ix+#04),a
	bit 7,a
	jp nz,l7bc5
	ld b,(ix+#26)
	cp b
	jr z,l7bd2
	jr c,l7bcc
	ld a,(ix+#09)
	ld (ix+#25),a
	jr l7c31
.l7bc5
	ld (ix+#04),#00
	jp l7bd2
.l7bcc
	ld a,(ix+#26)
	ld (ix+#04),a
.l7bd2
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	ld a,(ix+#06)
	ld (ix+#27),a
	jr l7c31
.l7be4
	ld a,(ix+#27)
	and a
	jr z,l7bef
	dec (ix+#27)
	jr l7c31
.l7bef
	ld a,(ix+#0c)
	and #fc
	ld (ix+#0c),a
	ld a,(ix+#2a)
	ld (ix+#29),a
	jp l7c31
.l7c00
	ld a,(ix+#29)
	and a
	jr z,l7c0b
	dec (ix+#29)
	jr l7c31
.l7c0b
	ld a,(ix+#04)
	ld b,(ix+#28)
	add b
	ld (ix+#04),a
	bit 7,a
	jr nz,l7c21
	ld a,(ix+#2a)
	ld (ix+#29),a
	jr l7c31
.l7c21
	ld (ix+#04),#00
	ld a,(ix+#0c)
	and #fc
	or #03
	ld (ix+#0c),a
	jr l7c31
.l7c31
	ld a,(ix+#04)
	ld hl,l7927
	ld d,#00
	ld e,(ix+#0f)
	add hl,de
	ld (hl),a
	ld h,(ix+#14)
	ld l,(ix+#13)
	ld d,#00
	ld e,(ix+#10)
	add hl,de
	ld a,(ix+#03)
	push af
	ld a,(hl)
	add (ix+#03)
	ld (ix+#03),a
	call l7d4f
	pop af
	ld (ix+#03),a
	inc (ix+#10)
	ld a,(ix+#12)
	xor (ix+#10)
	jr nz,l7c6d
	ld a,(ix+#11)
	ld (ix+#10),a
.l7c6d
	ld a,(ix+#1a)
	cp #ff
	jr z,l7ca5
	and a
	jr z,l7c7c
	dec (ix+#1a)
	jr nz,l7ca5
.l7c7c
	dec (ix+#1f)
	jr nz,l7c8f
	ld a,(ix+#1e)
	ld (ix+#1f),a
	ld a,(ix+#1c)
	xor #01
	ld (ix+#1c),a
.l7c8f
	bit 0,(ix+#1c)
	ld b,(ix+#1b)
	ld a,(ix+#1d)
	jr z,l7c9e
	add b
	jr l7c9f
.l7c9e
	sub b
.l7c9f
	ld (ix+#1d),a
	call l7cb0
.l7ca5
	ld a,(ix+#2b)
	and a
	call nz,l7cb0
	ld a,(ix+#02)
	ret
.l7cb0
	ld c,a
	ld b,#ff
	bit 7,a
	jr nz,l7cb9
	ld b,#00
.l7cb9
	ld hl,l7927
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	add hl,bc
	ex de,hl
	ld (hl),d
	dec hl
	ld (hl),e
	ret
.l7ccc
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (ix+#10),#00
.l7cd6
	ld a,(hl)
	cp #60
	jr z,l7d4d
	cp #61
	jp z,l7df1
	cp #64
	jp z,l7d9e
	cp #65
	jp z,l7dc5
	cp #fa
	jp z,l7da7
	cp #fe
	jp z,l7dd3
	cp #ff
	jp z,l7dbd
	ld b,a
	ld a,(ix+#0c)
	and #fc
	or #01
	ld (ix+#0c),a
	ld a,b
	sub (ix+#2d)
	ld (ix+#03),a
	ld a,(ix+#19)
	ld (ix+#1a),a
	ld a,(ix+#1e)
	srl a
	ld (ix+#1f),a
	ld (ix+#1c),#01
	ld (ix+#1d),#00
.l7d21
	inc hl
	ld a,(hl)
	dec a
	push hl
	ld h,#00
	ld l,a
	ld de,(l790a)
	add hl,de
	ld a,(hl)
	pop hl
	inc hl
	ld b,(ix+#2c)
	add b
	ld (ix+#2c),#00
	ld (ix+#02),a
	ld a,(ix+#07)
	ld (ix+#0b),a
	ld (ix+#00),l
	ld (ix+#01),h
	call l7d4f
	jp l7b40
.l7d4d
	jr l7d21
.l7d4f
	ld a,(ix+#17)
	and a
	call nz,l7d93
	ld a,(ix+#03)
	inc a
	inc a
	add a
	ld d,#00
	ld e,a
	ld hl,l7f64
	add hl,de
	push hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,l7927
	ld d,#00
	ld e,(ix+#0d)
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld a,(l7908)
	and a
	ret z
	ld a,(ix+#0f)
	cp #08
	ret nz
	ld de,#00c0
	add hl,de
	ex de,hl
	ld h,#0b
	ld a,(de)
	ld l,a
	call l791b
	inc de
	inc h
	ld a,(de)
	ld l,a
	call l791b
	ret
.l7d93
	ld a,(ix+#03)
	neg
	and #1f
	ld (l792d),a
	ret
.l7d9e
	inc hl
	ld a,(hl)
	inc hl
	ld (l792d),a
	jp l7de8
.l7da7
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	ld (ix+#1e),#ff
	ld (ix+#1f),#ff
	inc hl
	jp l7de8
.l7dbd
	inc hl
	ld (ix+#04),#00
	jp l7de8
.l7dc5
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld h,#0d
	ld l,a
	call l791b
	pop hl
	jp l7de8
.l7dd3
	ld a,(ix+#22)
	dec a
	ld (ix+#22),a
	jr nz,l7de2
	jp l7ef7
	jp l7cd6
.l7de2
	ld l,(ix+#15)
	ld h,(ix+#16)
.l7de8
	ld (ix+#01),h
	ld (ix+#00),l
	jp l7cd6
.l7df1
	inc hl
	ld a,(hl)
	inc hl
	push hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld b,a
	add a
	ld h,#00
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,l80d4
	add hl,de
	ld d,#00
	add b
	ld e,a
	add hl,de
	ld a,(hl)
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	inc hl
	ld a,(hl)
	ld (ix+#08),a
	inc hl
	ld a,(hl)
	ld (ix+#09),a
	inc hl
	ld a,(hl)
	ld (ix+#0a),a
	inc hl
	ld a,(hl)
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#06),a
	inc hl
	ld a,(hl)
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#28),a
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld a,(hl)
	ld (ix+#11),a
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld (ix+#14),h
	ld (ix+#13),l
	ld (ix+#10),#00
	ld de,#0010
	add hl,de
	ld a,(hl)
	ld (ix+#17),#00
	and a
	jp z,l7e7c
	ld b,a
	or #c0
	ld (l792e),a
	ld a,b
	bit 7,a
	jp z,l7e7c
	cpl
	and #38
	ld (ix+#17),a
.l7e7c
	inc hl
	ld a,(ix+#0f)
	cp #08
	jp nz,l7e98
	ld a,(hl)
	ld (l7908),a
	and a
	jp z,l7e98
	inc hl
	inc hl
	ld a,(hl)
	push hl
	ld h,#0d
	ld l,a
	call l791b
	pop hl
.l7e98
	pop hl
	jp l7cd6
.l7e9c
	inc hl
	ld a,(hl)
	inc hl
	push hl
	add a
	add a
	add a
	ld h,#00
	ld l,a
	ld de,l80b4
	add hl,de
	ld (l790a),hl
	pop hl
	jp l7f0b
.l7eb1
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	jp l7f0b
.l7eba
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2b),a
	jp l7f0b
.l7ec3
	inc hl
	ld a,(hl)
	inc hl
	ld (l795f),a
	ld (l798d),a
	ld (l79bb),a
	jp l7f0b
.l7ed2
	inc hl
	ld b,(hl)
	inc hl
	ld a,(ix+#2d)
	add b
	ld (ix+#2d),a
	jp l7f0b
	ld (ix+#0c),#ff
	ld (ix+#03),#00
	ld (ix+#04),#00
	inc hl
	ld a,(hl)
	and a
	jp z,l7b40
	call l7a70
	jp l7b40
.l7ef7
	call l7f05
	jp l7ccc
.l7efd
	pop bc
	jp l7a70
.l7f01
	pop bc
	jp l79cd
.l7f05
	ld l,(ix+#20)
	ld h,(ix+#21)
.l7f0b
	ld a,(hl)
	cp #f8
	jp z,l7eb1
	cp #f9
	jp z,l7eba
	cp #fa
	jp z,l7ed2
	cp #fb
	jp z,l7ec3
	cp #fc
	jp z,l7e9c
	cp #fd
	jp z,l7f01
	cp #fe
	jr z,l7f58
	cp #ff
	jr z,l7efd
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l8215
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#15),e
	ld (ix+#16),d
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#22),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ret
.l7f58
	ld l,(ix+#23)
	ld h,(ix+#24)
	jr l7f0b
.l7f64 equ $ + 4
	db #00,#00,#00,#00,#00,#00
	dw #0e18,#0d4d,#0c8e,#0bda
	dw #0b2f,#0a8f,#09f7,#0968
	dw #08e1,#0861,#07e9,#0777
	dw #070c,#06a7,#0647,#05ed
	dw #0598,#0547,#04fc,#04d4
	dw #0470,#0431,#03f4,#03dc
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
	dw #0012,#0011,#0010
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #6a,#00,#64,#00,#5e,#00,#5a,#00
	db #54,#00,#4f,#00,#4a,#00,#47,#00
	db #43,#00,#3f,#00,#3b,#00,#38,#00
	db #35,#00,#32,#00,#2f,#00,#2d,#00
	db #2a,#00,#28,#00,#25,#00,#23,#00
	db #21,#00,#20,#00,#1e,#00,#1c,#00
	db #1b,#00,#19,#00,#18,#00,#16,#00
	db #15,#00,#14,#00,#13,#00,#12,#00
	db #11,#00,#10,#00,#0f,#00,#0e,#00
	db #0d,#00,#0c,#00,#0b,#00,#0a,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l80b4
	db #02,#04,#06,#08,#0a,#0c,#0e,#10
	db #12,#14,#16,#18,#1a,#1c,#1e,#20
	db #22,#24,#26,#28,#2a,#2c,#2e,#30
	db #32,#34,#36,#38,#3a,#3c,#3e,#40
.l80d4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#ff,#00,#00,#00,#01,#00,#0c
	db #00,#0c,#00,#00,#18,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#0f,#0f,#00,#00
	db #0f,#00,#00,#fc,#01,#14,#64,#00
	db #02,#f4,#e8,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#78,#00,#00,#00,#00,#00,#0f
	db #0f,#02,#fe,#00,#00,#03,#ff,#00
	db #05,#01,#00,#03,#00,#04,#0c,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#9c,#00,#00,#00
	db #00,#00,#0f,#04,#04,#ff,#0b,#32
	db #01,#ff,#ff,#00,#00,#00,#01,#0c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #01,#00,#0a,#00,#00,#0f,#08,#00
	db #ff,#0c,#0a,#00,#ff,#02,#04,#02
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#04,#04,#ff,#0b,#32,#01,#ff
	db #02,#01,#03,#00,#01,#f4,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#0f,#04,#02,#ff,#0a
	db #3c,#0a,#ff,#ff,#00,#00,#00,#03
	db #00,#04,#07,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#0f,#04
	db #00,#ff,#0c,#01,#01,#ff,#ff,#00
	db #00,#00,#03,#00,#04,#07,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#0f,#04,#02,#ff,#0a,#3c,#0a
	db #ff,#ff,#00,#00,#00,#03,#00,#04
	db #07,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.l8215 equ $ + 6
.l820f
	dw l8243,l826c,l829b,l82b6
	dw l869f,l84c5,l82d9,l831a
	dw l8343,l836a,l838d,l870a
	dw l8535,l8500,l85cf,l83b0
	dw l8417,l8448,#0000,#0000
	dw l8473,l849c,#0000,l85ac
	dw l82b6,l8682
.l8243
	db #fc,#00,#fb,#18,#03,#01,#02,#04
	db #fa,#ff,#02,#02,#fa,#ff,#0a,#01
	db #fa,#02,#09,#02,#02,#03,#f9,#01
	db #04,#01,#05,#01,#f9,#00,#09,#02
	db #02,#02,#0b,#02,#0c,#02,#16,#01
.l826c equ $ + 1
	db #fd,#f9,#01,#03,#02,#f9,#00,#04
	db #01,#05,#01,#03,#01,#03,#01,#06
	db #01,#07,#01,#0c,#02,#0d,#01,#0e
	db #01,#03,#01,#04,#01,#05,#01,#0c
	db #02,#11,#01,#12,#01,#03,#01,#14
	db #01,#0b,#02,#16,#01,#00,#ff,#fe
.l829b
	db #14,#01,#01,#06,#08,#01,#0b,#02
	db #01,#04,#08,#01,#0b,#02,#01,#04
	db #f9,#01,#0c,#02,#f9,#00,#16,#01
.l82b6 equ $ + 3
	db #00,#ff,#fe,#61,#00,#60,#0c,#60
	db #0c,#60,#0c,#60,#0c,#60,#0c,#60
	db #0c,#60,#0c,#60,#0c,#60,#0c,#60
	db #0c,#60,#0c,#60,#0c,#60,#0c,#60
.l82d9 equ $ + 6
	db #0c,#60,#0c,#60,#0c,#fe,#61,#04
	db #55,#0c,#61,#00,#49,#0c,#61,#04
	db #55,#0c,#61,#00,#49,#0c,#61,#04
	db #55,#0c,#61,#00,#49,#0c,#61,#04
	db #55,#0c,#61,#00,#49,#0c,#61,#04
	db #55,#0c,#61,#00,#49,#0c,#61,#04
	db #55,#0c,#61,#00,#49,#0c,#61,#04
	db #55,#0c,#61,#00,#49,#0c,#61,#04
.l831a equ $ + 7
	db #55,#0c,#61,#00,#49,#0c,#fe,#61
	db #05,#55,#0c,#60,#0c,#60,#0c,#fa
	db #09,#fb,#55,#0c,#fa,#00,#00,#5d
	db #0c,#60,#0c,#60,#0c,#5f,#0c,#55
	db #0c,#60,#0c,#60,#0c,#60,#0c,#60
	db #0c,#60,#0c,#60,#0c,#60,#0c,#fe
.l8343
	db #55,#0c,#60,#0c,#60,#0c,#fa,#02
	db #ff,#53,#0c,#fa,#00,#00,#58,#0c
	db #60,#0c,#5a,#0c,#60,#0c,#55,#0c
	db #60,#0c,#60,#0c,#60,#0c,#60,#0c
.l836a equ $ + 7
	db #60,#0c,#60,#0c,#60,#0c,#fe,#61
	db #05,#56,#0c,#60,#0c,#60,#0c,#55
	db #0c,#51,#0c,#60,#0c,#53,#0c,#60
	db #0c,#4e,#0c,#60,#0c,#60,#0c,#60
	db #0c,#60,#0c,#60,#0c,#60,#0c,#60
.l838d equ $ + 2
	db #0c,#fe,#61,#05,#57,#0c,#60,#0c
	db #60,#0c,#60,#0c,#59,#0c,#60,#0c
	db #5a,#0c,#60,#0c,#5b,#0c,#60,#0c
	db #60,#0c,#60,#0c,#60,#0c,#60,#0c
.l83b0 equ $ + 5
	db #60,#0c,#60,#0c,#fe,#61,#06,#4d
	db #09,#61,#07,#4d,#09,#4d,#03,#59
	db #03,#61,#06,#4d,#06,#4d,#03,#61
	db #07,#4d,#06,#4d,#03,#61,#06,#4d
	db #06,#4b,#06,#4b,#03,#61,#08,#4d
	db #06,#4d,#03,#61,#06,#4b,#09,#61
	db #00,#49,#0c,#60,#0c,#61,#07,#49
	db #03,#49,#03,#61,#06,#49,#06,#61
	db #07,#49,#03,#61,#06,#49,#03,#61
	db #07,#49,#03,#61,#06,#49,#06,#49
	db #06,#61,#07,#49,#03,#49,#03,#49
	db #06,#48,#06,#48,#06,#48,#06,#48
	db #06,#4b,#06,#4b,#06,#4b,#06,#61
.l8417 equ $ + 4
	db #08,#4c,#06,#fe,#61,#05,#5c,#0c
	db #60,#0c,#60,#0c,#fa,#00,#ff,#5c
	db #0c,#fa,#00,#00,#5f,#0c,#60,#06
	db #5c,#0c,#60,#06,#fa,#00,#ff,#59
	db #0c,#fa,#00,#00,#59,#0c,#60,#0c
	db #60,#0c,#60,#0c,#60,#0c,#60,#0c
.l8448 equ $ + 5
	db #60,#0c,#60,#0c,#fe,#61,#05,#55
	db #0c,#60,#0c,#60,#0c,#fa,#00,#ff
	db #55,#0c,#fa,#00,#00,#58,#0c,#60
	db #06,#57,#0c,#60,#06,#55,#0c,#5c
	db #0c,#60,#0c,#5d,#0c,#60,#0c,#5c
	db #0c,#60,#0c,#60,#0c,#60,#0c,#fe
.l8473
	db #61,#05,#5c,#0c,#60,#0c,#60,#0c
	db #fa,#00,#ff,#5c,#0c,#fa,#00,#00
	db #5f,#0c,#60,#0c,#60,#0c,#60,#0c
	db #5c,#0c,#60,#0c,#60,#0c,#5a,#0c
	db #5c,#0c,#60,#0c,#60,#0c,#60,#0c
.l849c equ $ + 1
	db #fe,#61,#05,#5c,#0c,#60,#0c,#60
	db #0c,#fa,#00,#ff,#5c,#0c,#fa,#00
	db #00,#5f,#0c,#60,#0c,#60,#0c,#60
	db #0c,#61,#0c,#60,#0c,#60,#0c,#5f
	db #0c,#61,#0c,#60,#0c,#60,#0c,#60
.l84c5 equ $ + 2
	db #0c,#fe,#61,#03,#25,#0c,#31,#06
	db #25,#06,#28,#06,#25,#06,#31,#06
	db #25,#06,#25,#0c,#31,#06,#25,#06
	db #28,#06,#2a,#06,#31,#06,#25,#06
	db #25,#0c,#31,#06,#25,#06,#28,#06
	db #25,#06,#31,#06,#25,#06,#25,#0c
	db #31,#06,#25,#06,#28,#06,#2f,#06
.l8500 equ $ + 5
	db #31,#06,#25,#06,#fe,#61,#03,#25
	db #0c,#31,#06,#25,#06,#28,#06,#25
	db #06,#31,#06,#25,#06,#25,#0c,#31
	db #06,#25,#06,#28,#06,#2a,#06,#31
	db #06,#25,#06,#25,#0c,#31,#06,#25
	db #06,#28,#06,#25,#06,#31,#06,#25
	db #06,#25,#0c,#27,#0c,#28,#0c,#29
.l8535 equ $ + 2
	db #0c,#fe,#61,#03,#29,#06,#29,#03
	db #29,#03,#35,#03,#29,#03,#33,#03
	db #35,#03,#29,#06,#29,#03,#29,#03
	db #35,#03,#29,#03,#33,#03,#35,#03
	db #27,#06,#27,#03,#27,#03,#33,#03
	db #2e,#03,#27,#03,#33,#03,#27,#06
	db #27,#03,#27,#03,#33,#03,#2e,#03
	db #27,#03,#33,#03,#25,#06,#25,#03
	db #31,#03,#25,#03,#25,#03,#30,#03
	db #31,#03,#25,#06,#25,#03,#31,#03
	db #25,#03,#25,#03,#30,#03,#31,#03
	db #24,#03,#30,#03,#24,#03,#24,#03
	db #30,#03,#24,#03,#24,#03,#30,#03
	db #24,#03,#30,#03,#24,#03,#24,#03
	db #30,#03,#24,#03,#24,#03,#30,#03
.l85ac equ $ + 1
	db #fe,#61,#03,#25,#0c,#60,#0c,#60
	db #0c,#60,#0c,#25,#0c,#60,#0c,#60
	db #0c,#60,#0c,#25,#0c,#60,#0c,#60
	db #0c,#60,#0c,#25,#0c,#60,#0c,#60
.l85cf equ $ + 4
	db #0c,#60,#0c,#fe,#61,#01,#38,#03
	db #61,#00,#60,#06,#61,#01,#38,#03
	db #3a,#03,#61,#00,#60,#03,#61,#01
	db #38,#03,#36,#03,#38,#03,#61,#00
	db #60,#06,#61,#01,#38,#03,#3a,#03
	db #61,#00,#60,#03,#61,#01,#38,#03
	db #3a,#03,#38,#03,#61,#00,#60,#06
	db #61,#01,#38,#03,#3a,#03,#61,#00
	db #60,#03,#61,#01,#38,#03,#3a,#03
	db #38,#03,#61,#00,#60,#06,#61,#01
	db #38,#03,#3a,#03,#61,#00,#60,#03
	db #61,#01,#38,#03,#3a,#03,#38,#03
	db #61,#00,#60,#06,#61,#01,#38,#03
	db #3a,#03,#61,#00,#60,#03,#61,#01
	db #38,#03,#3a,#03,#38,#03,#61,#00
	db #60,#06,#61,#01,#38,#03,#3a,#03
	db #61,#00,#60,#03,#61,#01,#38,#03
	db #3a,#03,#38,#03,#61,#00,#60,#06
	db #61,#01,#38,#03,#3a,#03,#61,#00
	db #60,#03,#61,#01,#38,#03,#3a,#03
	db #38,#03,#61,#00,#60,#06,#61,#01
	db #38,#03,#3a,#03,#61,#00,#60,#03
.l8682 equ $ + 7
	db #61,#01,#38,#03,#3a,#03,#fe,#61
	db #01,#3a,#03,#3a,#03,#3a,#03,#3a
	db #03,#38,#03,#38,#03,#38,#03,#38
	db #03,#61,#02,#3d,#0c,#60,#0c,#60
.l869f equ $ + 4
	db #0c,#60,#0c,#fe,#61,#02,#38,#06
	db #61,#01,#3d,#06,#61,#02,#3a,#06
	db #38,#06,#61,#01,#49,#06,#61,#02
	db #38,#06,#3a,#06,#61,#01,#49,#06
	db #61,#02,#31,#06,#61,#01,#3d,#06
	db #61,#02,#3a,#06,#38,#06,#61,#01
	db #49,#06,#61,#02,#38,#06,#36,#06
	db #36,#06,#38,#06,#61,#01,#3d,#06
	db #61,#02,#3a,#06,#38,#06,#61,#01
	db #49,#06,#61,#02,#38,#06,#3a,#06
	db #61,#01,#49,#06,#61,#02,#38,#06
	db #61,#01,#3d,#06,#61,#02,#3a,#06
	db #38,#06,#61,#01,#49,#06,#61,#02
.l870a equ $ + 7
	db #3a,#06,#38,#06,#36,#06,#fe,#61
	db #02,#38,#06,#61,#01,#3d,#06,#61
	db #02,#3a,#06,#38,#06,#61,#01,#49
	db #06,#61,#02,#38,#06,#3a,#06,#61
	db #01,#49,#06,#61,#02,#31,#06,#61
	db #01,#3d,#06,#61,#02,#3a,#06,#38
	db #06,#61,#01,#49,#06,#61,#02,#38
	db #06,#36,#06,#36,#06,#38,#06,#61
	db #01,#3d,#06,#61,#02,#3a,#06,#38
	db #06,#61,#01,#49,#06,#61,#02,#38
	db #06,#3a,#06,#61,#01,#49,#06,#61
	db #02,#38,#06,#60,#0c,#60,#0c,#61
	db #01,#38,#06,#36,#02,#36,#02,#36
	db #02,#35,#06,#fe,#00,#00
;
.play_music	; added by Megachur
;
	call real_play_music
;
	ld a,(l00f7)
	and #3f
	ld (l00f7),a
	ld hl,l00f0
	ld e,#00
.l0351
	ld c,(hl)
	inc hl
	ld a,#c0
	ld b,#f6
	out (c),a
	ld b,#f4
	out (c),e
	ld b,#f6
	ld a,#80
	out (c),a
	ld b,#f4
	out (c),c
	xor a
	ld b,#f6
	out (c),a
	inc e
	ld a,e
	cp #0e
	jr nz,l0351
	ret
;
.l00f7 equ $+ 7
.l00f0
	db #00,#00,#00,#00,#00,#00,#00,#ff
	db #00,#00,#00,#00,#00,#00,#00,#00
;
.music_info
	db "Elven Warrior (1989)(Players)(Sonic Graffiti And Andy Severn)",0
	db "",0

	read "music_end.asm"
