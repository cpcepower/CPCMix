; Music of 5 a Side Soccer (1986)(Mastertronic)(Rob Hubbard)()
; Ripped by Megachur the 03/04/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "5ASIDESO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #8ca0

	read "music_header.asm"

	jp l8ccf	; init
	jp l9549
	jp l9603
	jp l96b6
	jp l95b3
	jp l94e4	; stop music interrupt with system vector !
	jp l9506	; init music interrupt with system vector !
.l8cb5
	push af
	push bc
	call lbd34
	pop bc
	pop af
	ret
	ld b,#0e
.l8cbf
	ld a,b
	dec a
	ld c,#00
	call l8cb5
	djnz l8cbf
	ld a,#07
	ld c,#3f
	jp l8cb5
;
.init_music
.l8ccf
;
	di
	ld a,#04
	ld (l9560),a
	ld a,#00
	ld (l95c3),a
	ld ix,l8fa4
	ld b,#03
.l8ce0
	push bc
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#02),e
	ld (ix+#03),d
	ld (ix+#04),l
	ld (ix+#05),h
	call l8deb
	ld bc,#001e
	add ix,bc
	pop bc
	djnz l8ce0
	ei
	ret
;
.l8d04
.play_music
;
	ld ix,l8fa4
	ld a,#00
	ld (l8ee1),a
	ld b,#03
.l8d0f
	push bc
	ld a,(ix+#06)
	dec a
	ld (ix+#06),a
	call z,l8deb
	call l8dd3
	ld a,(ix+#07)
	or a
	jp z,l8db5
	add a
	ld e,a
	ld d,#00
	ld hl,l8d2f
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
.l8d2f
	ld l,a
	jp (hl)
	dw l8d35,l8d83
.l8d35	
	ld l,(ix+#08)
	ld h,(ix+#09)
	ld a,(hl)
	cp #ff
	jr nz,l8d47
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld a,(hl)
.l8d47
	inc hl
	ld (ix+#08),l
	ld (ix+#09),h
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld e,(ix+#0e)
	ld d,(ix+#0f)
	bit 7,a
	jr nz,l8d68
	ld b,a
	cp #00
	jr z,l8d74
.l8d63
	add hl,de
	djnz l8d63
	jr l8d74
.l8d68
	and #7f
	ld b,a
	cp #00
	jr z,l8d74
.l8d6f
	xor a
	sbc hl,de
	djnz l8d6f
.l8d74
	ld a,(ix+#10)
	ld c,l
	call l8cb5
	inc a
	ld c,h
	call l8cb5
	jp l8db5
.l8d83
	ld a,(ix+#11)
	inc a
	and (ix+#12)
	ld (ix+#11),a
	ld e,#00
	jr z,l8d9a
	ld e,(ix+#13)
	cp (ix+#14)
	jp nz,l8db5
.l8d9a
	ld a,(ix+#15)
	add e
	ld c,a
	ld b,#00
	ld hl,l8ee2
	add hl,bc
	ld a,(ix+#10)
	ld c,(hl)
	call l8cb5
	inc a
	inc hl
	ld c,(hl)
	call l8cb5
	jp l8db5
.l8db5
	ld c,(ix+#16)
	ld a,(l8ee1)
	or c
	ld (l8ee1),a
	ld bc,#001e
	add ix,bc
	pop bc
	dec b
	jp nz,l8d0f
	ld a,(l8ee1)
	ld c,a
	ld a,#07
	call l8cb5
	ret
.l8dd3
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,(hl)
	cp #ff
	ret z
	inc hl
	ld (ix+#17),l
	ld (ix+#18),h
	ld c,a
	ld a,(ix+#1b)
	jp l8cb5
.l8deb
	ld l,(ix+#02)
	ld h,(ix+#03)
.l8df1
	ld a,(hl)
	cp #ff
	call z,l8ec2
	ld a,(hl)
	bit 7,a
	jp nz,l8e53
.l8dfd
	inc hl
	ld c,(hl)
	inc hl
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#06),c
	add (ix+#1d)
	add a
	ld (ix+#15),a
	ld e,a
	ld d,#00
	ld hl,l8ee2
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ex de,hl
	xor a
	sbc hl,bc
	ld a,(ix+#1c)
	ld (l8e2e),a
	ld b,#ff
	ld a,l
.l8e2c
	inc b
.l8e2e equ $ + 1
	sub #03
	jr nc,l8e2c
	ld (ix+#0e),b
	pop bc
	ld (ix+#0c),c
	ld (ix+#0d),b
	ld a,(ix+#10)
	call l8cb5
	inc a
	ld c,b
	call l8cb5
	ld l,(ix+#19)
	ld h,(ix+#1a)
	ld (ix+#17),l
	ld (ix+#18),h
	ret
.l8e53
	and #07
	push hl
	add a
	ld e,a
	ld d,#00
	ld hl,l8e63
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
.l8e63
	dw l8e69,l8e83,l8ea8
.l8e69
	pop hl
	inc hl
	ld a,(hl)
	push hl
	add a
	ld hl,l8ffe
	ld e,a
	ld d,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#19),e
	ld (ix+#1a),d
	pop hl
	inc hl
	jp l8df1
.l8e83
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#1c),a
	inc hl
	ld a,(hl)
	push hl
	add a
	ld hl,l904a
	ld e,a
	ld d,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#0a),e
	ld (ix+#08),e
	ld (ix+#0b),d
	ld (ix+#09),d
	pop hl
	ld a,#01
	jr l8eba
.l8ea8
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#12),a
	inc hl
	ld a,(hl)
	ld (ix+#13),a
	inc hl
	ld a,(hl)
	ld (ix+#14),a
	ld a,#02
.l8eba
	ld (ix+#07),a
	inc hl
	ld a,(hl)
	jp l8dfd
.l8ec2
	ld l,(ix+#04)
	ld h,(ix+#05)
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr nz,l8ed5
	ld l,(ix+#00)
	ld h,(ix+#01)
.l8ed5
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ex de,hl
	ret
.l8ee1
	db #00
.l8ee2
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
	dw #0000
.l8fa4
	dw l906b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#08,#00,#00,#00
	db #00,#08
	dw #0001
	dw l9083
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#02,#00
	db #00,#00,#00,#00,#10,#00,#00,#00
	db #00,#09,#01,#00
	dw l90cf
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#04,#00
	db #00,#00,#00,#00,#20,#00,#00,#00
	db #00,#0a,#01,#00
.l8ffe
	dw l900a,l9014,l901d,l9029
	dw l903c,l9044
.l900a
	db #0a,#0c,#0d,#0b,#0b,#0a,#0a,#09
.l9014 equ $ + 2
	db #09,#ff,#0c,#0f,#0e,#0d,#0c,#0b
.l901d equ $ + 3
	db #0a,#0a,#ff,#0a,#0b,#0c,#0b,#0a
.l9029 equ $ + 7
	db #0a,#0a,#0a,#08,#08,#08,#ff,#0c
	db #0e,#0c,#0c,#0c,#08,#08,#08,#08
	db #0c,#0b,#0a,#0a,#09,#09,#09,#09
.l903c equ $ + 2
	db #09,#ff,#0c,#0a,#09,#08,#07,#07
.l9044 equ $ + 2
	db #00,#ff,#0f,#0b,#0c,#0b,#0a,#ff
.l904a
	dw l9050,l9055,l905e
.l9055 equ $ + 5
.l9050
	db #00,#01,#00,#81,#ff,#00,#01,#02
.l905e equ $ + 6
	db #01,#00,#81,#82,#81,#ff,#00,#01
	db #02,#03,#02,#01,#00,#81,#82,#83
	db #82,#81,#ff
.l906b
	dw l9222,l9222,l914a,l914a
	dw l9222,l92e3,l92e3,l939d
	dw l93f6,l939d,l9403,#ffff
.l9083
	dw l9284,l9284,l91b6,l91b6
	dw l9284,l934a,l9367,l9367
	dw l934a,l9380,l934a,l9367
	dw l934a,l934a,l9367,l9367
	dw l934a,l9380,l934a,l9367
	dw l934a,l940c,l940c,l940c
	dw l9432,l9432,l9432,l940c
	dw l9432,l940c,l940c,l940c
	dw l9432,l9432,l9432,l9432
	dw l940c,#ffff
.l90cf
	dw l9498,l9498
	dw l9453,l9453,l9498,l94c7
	dw l94d2,l94d2,l94c7,l94db
	dw l94c7,l94d2,l94c7,l94c7
	dw l94d2,l94d2,l94c7,l94db
	dw l94c7,l94d2,l94c7,l94c7
	dw l94c7,l94c7,l94d2,l94d2
	dw l94d2,l94c7,l94d2,l94c7
	dw l94c7,l94c7,l94d2,l94d2
	dw l94d2,l94d2,l94c7,#ffff
	dw l939d,l93f6,#ffff,l940c
	dw l940c,l940c,l9432,l9432
	dw l9432,l940c,l9432,#ffff
	dw l94c7,l94c7,l94c7,l94d2
	dw l94d2,l94d2,l94c7,l94d2
	dw #ffff
.l914a equ $ + 5
	db #80,#00,#60,#38,#ff,#80,#00,#81
	db #04,#01,#37,#07,#37,#07,#3c,#0e
	db #40,#0e,#43,#0e,#43,#0e,#40,#1c
	db #40,#0e,#43,#0e,#40,#0e,#3e,#0e
	db #40,#0e,#41,#38,#37,#07,#37,#07
	db #3b,#0e,#3e,#0e,#41,#0e,#41,#0e
	db #3e,#1c,#3e,#0e,#41,#0e,#3e,#0e
	db #3c,#0e,#3e,#0e,#40,#38,#37,#07
	db #37,#07,#3c,#0e,#40,#0e,#43,#0e
	db #43,#0e,#40,#1c,#43,#0e,#45,#0e
	db #48,#1c,#47,#0e,#45,#38,#3c,#07
	db #3c,#07,#41,#0e,#45,#0e,#48,#0e
	db #43,#0e,#40,#1c,#43,#0e,#41,#0e
	db #40,#1c,#3e,#0e,#3c,#1c,#48,#1c
.l91b6 equ $ + 1
	db #ff,#80,#00,#81,#02,#00,#34,#07
	db #34,#07,#37,#0e,#3c,#0e,#40,#0e
	db #40,#0e,#3c,#1c,#3c,#0e,#40,#0e
	db #3c,#0e,#3b,#0e,#3c,#0e,#3e,#38
	db #32,#07,#32,#07,#37,#0e,#3b,#0e
	db #3e,#0e,#3e,#0e,#3b,#1c,#3b,#0e
	db #3e,#0e,#3b,#0e,#39,#0e,#3b,#0e
	db #3c,#38,#34,#07,#34,#07,#37,#0e
	db #3c,#0e,#40,#0e,#40,#0e,#3c,#1c
	db #40,#0e,#41,#0e,#45,#1c,#43,#0e
	db #41,#38,#39,#07,#39,#07,#3c,#0e
	db #41,#0e,#45,#0e,#40,#0e,#3c,#1c
	db #40,#0e,#3e,#0e,#3c,#1c,#3b,#0e
.l9222 equ $ + 5
	db #37,#1c,#40,#1c,#ff,#80,#02,#81
	db #02,#00,#3d,#0e,#3d,#0e,#3d,#07
	db #3d,#07,#3d,#0e,#3d,#07,#3d,#07
	db #3d,#07,#3d,#0e,#3e,#07,#40,#0e
	db #42,#0e,#42,#0e,#42,#07,#42,#07
	db #42,#0e,#42,#07,#42,#07,#42,#07
	db #42,#0e,#43,#07,#45,#0e,#45,#0e
	db #45,#0e,#45,#07,#45,#07,#45,#0e
	db #45,#07,#45,#07,#45,#07,#45,#0e
	db #47,#07,#48,#0e,#82,#03,#06,#02
	db #47,#0e,#47,#0e,#47,#07,#47,#07
	db #47,#0e,#47,#07,#47,#07,#47,#07
.l9284 equ $ + 7
	db #47,#0e,#47,#07,#47,#0e,#ff,#80
	db #02,#82,#03,#0a,#02,#34,#0e,#34
	db #0e,#34,#07,#34,#07,#34,#0e,#34
	db #07,#34,#07,#34,#07,#34,#0e,#34
	db #07,#34,#0e,#39,#0e,#39,#0e,#39
	db #07,#39,#07,#39,#0e,#39,#07,#39
	db #07,#39,#07,#39,#0e,#39,#07,#39
	db #0e,#3c,#0e,#3c,#0e,#3c,#07,#3c
	db #07,#3c,#0e,#3c,#07,#3c,#07,#3c
	db #07,#3c,#0e,#3c,#07,#3c,#0e,#3e
	db #0e,#3e,#0e,#3e,#07,#3e,#07,#3e
	db #0e,#3e,#07,#3e,#07,#3e,#07,#3e
.l92e3 equ $ + 6
	db #0e,#3e,#07,#3e,#0e,#ff,#80,#03
	db #81,#04,#01,#40,#0e,#40,#1c,#3d
	db #0e,#42,#1c,#40,#1c,#40,#0e,#3e
	db #0e,#3e,#0e,#3d,#0e,#81,#03,#02
	db #3e,#38,#81,#04,#01,#3e,#0e,#3e
	db #1c,#3b,#0e,#40,#1c,#3e,#1c,#3e
	db #0e,#3d,#0e,#3d,#0e,#3b,#0e,#3d
	db #0e,#3d,#0e,#39,#0e,#37,#0e,#81
	db #03,#02,#36,#2a,#81,#04,#01,#39
	db #0e,#39,#0e,#3b,#0e,#39,#0e,#3b
	db #0e,#3d,#1c,#3b,#1c,#81,#03,#02
	db #39,#38,#81,#04,#01,#3d,#0e,#3d
	db #1c,#39,#0e,#3d,#1c,#3b,#1c,#81
.l934a equ $ + 5
	db #03,#02,#39,#70,#ff,#80,#02,#82
	db #03,#08,#02,#45,#0e,#45,#07,#45
	db #07,#45,#0e,#45,#0e,#82,#03,#06
	db #02,#49,#0e,#49,#0e,#49,#0e,#49
.l9367 equ $ + 2
	db #0e,#ff,#80,#02,#82,#03,#06,#02
	db #44,#0e,#44,#07,#44,#07,#44,#0e
	db #44,#0e,#47,#0e,#47,#0e,#47,#0e
.l9380 equ $ + 3
	db #47,#0e,#ff,#80,#02,#82,#03,#08
	db #02,#4a,#0e,#4a,#07,#4a,#07,#4a
	db #0e,#4a,#0e,#82,#03,#06,#02,#4e
	db #0e,#4e,#0e,#4e,#0e,#4e,#0e,#ff
.l939d
	db #80,#05,#82,#03,#06,#02,#49,#1c
	db #47,#0e,#82,#03,#08,#02,#45,#0e
	db #45,#1c,#44,#0e,#45,#0e,#45,#54
	db #44,#0e,#45,#0e,#45,#1c,#44,#0e
	db #45,#0e,#82,#03,#06,#02,#49,#1c
	db #82,#03,#08,#02,#45,#0e,#82,#03
	db #06,#02,#49,#0e,#47,#38,#44,#38
	db #44,#1c,#43,#0e,#44,#0e,#44,#1c
	db #43,#0e,#44,#0e,#47,#46,#47,#0e
	db #82,#03,#08,#02,#45,#0e,#44,#0e
	db #45,#0e,#82,#03,#06,#02,#49,#2a
.l93f6 equ $ + 1
	db #ff,#82,#03,#12,#02,#45,#38,#82
.l9403 equ $ + 6
	db #03,#06,#02,#44,#70,#ff,#44,#38
.l940c equ $ + 7
	db #82,#03,#10,#02,#3d,#70,#ff,#80
	db #04,#81,#02,#00,#2d,#07,#31,#07
	db #34,#07,#39,#07,#3d,#07,#40,#07
	db #45,#07,#49,#07,#4c,#07,#49,#07
	db #45,#07,#40,#07,#3d,#07,#39,#07
.l9432 equ $ + 5
	db #34,#07,#31,#07,#ff,#28,#07,#2c
	db #07,#2f,#07,#34,#07,#38,#07,#3b
	db #07,#40,#07,#44,#07,#47,#07,#44
	db #07,#40,#07,#3b,#07,#38,#07,#34
.l9453 equ $ + 6
	db #07,#2f,#07,#2c,#07,#ff,#80,#01
	db #24,#1c,#1f,#1c,#24,#1c,#1f,#1c
	db #24,#1c,#1f,#1c,#1f,#1c,#1a,#1c
	db #1f,#1c,#1a,#1c,#1f,#1c,#1a,#1c
	db #1f,#1c,#1a,#1c,#24,#1c,#1f,#1c
	db #80,#01,#24,#1c,#1f,#1c,#24,#1c
	db #1f,#1c,#29,#1c,#24,#1c,#29,#1c
	db #24,#1c,#29,#1c,#24,#1c,#24,#1c
	db #1f,#1c,#1f,#1c,#1a,#1c,#24,#1c
.l9498 equ $ + 3
	db #18,#1c,#ff,#80,#01,#21,#1c,#1c
	db #1c,#21,#1c,#1c,#1c,#26,#1c,#21
	db #1c,#26,#1c,#21,#1c,#1d,#1c,#24
	db #1c,#1d,#1c,#24,#1c,#2b,#0e,#2b
	db #0e,#2b,#0e,#2b,#0e,#1f,#07,#23
	db #07,#26,#07,#2b,#0e,#26,#07,#1f
.l94c7 equ $ + 2
	db #0e,#ff,#80,#01,#21,#1c,#1c,#1c
.l94d2 equ $ + 5
	db #21,#1c,#1c,#1c,#ff,#1c,#1c,#23
	db #1c,#1c,#1c,#23,#1c,#ff
.l94db
	db #26,#1c,#21,#1c,#26,#1c,#21,#1c
	db #ff
;
;.stop_music_interrupt
.l94e4
;
	ld hl,l9511
	ld de,l94f2
	ld b,#80
	ld c,#00
	call #bcd7
	ret
;
.play_music_interrupt
.l94f2
;
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	call l9561
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l9506
	ld hl,l9511
	call #bcdd
	ret
.l9511 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#80
	dw l94f2
	db #00,#00,#00,#00
.l951d
	ld b,#00
.l951f
	ld a,(hl)
	ld c,a
	ld a,b
	call l8cb5
	inc b
	inc hl
	ld a,b
	cp #0e
	jr nz,l951f
	ret
.l952d
	db #00,#00,#00,#00,#00,#00,#14,#01
.l953b equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#3f,#00,#00
	db #00,#00,#00,#00
.l9549
	ld hl,l952d
	call l951d
	ld hl,(l95bf)
	ld (l95c1),hl
	ld a,#00
	ld (l95c3),a
	ld a,#01
	ld (l9560),a
	ret
.l9560
	db #00
.l9561
	ld a,(l95c3)
	or a
	ret nz
	ld a,(l9560)
	cp #01
	jp z,l957d
	cp #02
	jp z,l9620
	cp #03
	jp z,l96cd
	cp #04
	jp z,l8d04
.l957d
	ld a,(l95c4)
	inc a
	ld (l95c4),a
	push af
	bit 0,a
	jr nz,l958d
	ld c,#0d
	jr l9596
.l958d
	ld a,r
	and #0f
	or #18
	ld c,a
	ld a,#0c
.l9596
	ld a,#06
	call l8cb5
	pop af
	and #03
	cp #02
	ret nz
	ld hl,(l95c1)
	ld a,(hl)
	cp #ff
	jr z,l95b3
	inc hl
	ld (l95c1),hl
	ld c,a
	ld a,#08
	jp l8cb5
.l95b3
	ld a,#ff
	ld (l95c3),a
	ld hl,l953b
	call l951d
	ret
.l95bf
	dw l95c5
.l95c5 equ $ + 4
.l95c4 equ $ + 3
.l95c3 equ $ + 2
.l95c1
	db #00,#00,#ff,#00,#00,#00,#00,#01
	db #01,#02,#02,#03,#03,#04,#04,#05
	db #05,#06,#06,#07,#07,#08,#08,#09
	db #09,#0a,#0a,#0a,#0b,#0b,#0c,#0c
	db #0c,#0c,#0d,#0d,#0d,#0d,#0d,#0d
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#09
	db #08,#08,#08,#07,#07,#06,#06,#05
	db #05,#04,#04,#03,#03,#02,#02,#01
	db #01,#ff
.l9603
	ld hl,l9656
	call l951d
	ld hl,(l9664)
	ld (l9666),hl
	ld hl,(l966a)
	ld (l9668),hl
	ld a,#00
	ld (l95c3),a
	ld a,#02
	ld (l9560),a
	ret
.l9620
	ld a,#00
	ld hl,(l9666)
	ld c,(hl)
	call l8cb5
	inc a
	inc hl
	ld c,(hl)
	call l8cb5
	inc hl
	ld (l9666),hl
	ld hl,(l9668)
	ld a,(hl)
	cp #ff
	jp z,l95b3
	inc hl
	ld (l9668),hl
	ld c,a
	ld a,#08
	call l8cb5
	ld a,c
	sub #04
	jp p,l964e
	ld a,#00
.l964e
	ld c,a
	ld a,#09
	call l8cb5
	ret
	ret
.l9656
	db #00,#00,#00,#00,#00,#00,#1f,#2e
.l9664 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#7e,#96
.l966a equ $ + 4
.l9668 equ $ + 2
.l9666
	db #00,#00,#00,#00,#6c,#96,#0f,#0e
	db #0e,#0d,#0d,#0c,#0b,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#ff
	db #96,#00,#c8,#00,#fa,#00,#2c,#01
	db #5e,#01,#90,#01,#c2,#01,#f4,#01
	db #26,#02,#58,#02,#8a,#02,#bc,#02
	db #ee,#02,#20,#03,#52,#03,#84,#03
	db #b6,#03,#e8,#03,#1a,#04,#4c,#04
	db #7e,#04,#b0,#04,#e2,#04,#14,#05
	db #46,#05,#78,#05,#aa,#05,#c8,#05
.l96b6
	ld hl,l96fd
	call l951d
	ld hl,(l970b)
	ld (l970d),hl
	ld a,#00
	ld (l95c3),a
	ld a,#03
	ld (l9560),a
	ret
.l96cd
	ld a,(l95c4)
	inc a
	ld (l95c4),a
	push af
	bit 0,a
	jr nz,l96dd
	ld c,#14
	jr l96df
.l96dd
	ld c,#15
.l96df
	ld a,#00
	call l8cb5
	pop af
	and #03
	cp #02
	ret nz
	ld hl,(l970d)
	ld a,(hl)
	cp #ff
	jp z,l95b3
	inc hl
	ld (l970d),hl
	ld c,a
	ld a,#08
	jp l8cb5
.l96fd
	db #00,#00,#00,#00,#00,#00,#00,#2e
	db #00,#05,#00,#00,#00,#00
.l970b
	dw l970f
.l970d
	db #00,#00
.l970f
	db #09,#0b,#0d,#0e,#0e,#0e,#0e,#0e
	db #0e,#0e,#0e,#0e,#0e,#0d,#0d,#0d
	db #0d,#0d,#0c,#0c,#0c,#0c,#00,#ff
;	
; #0263
; call #8caf
; ld bc,#0000
; call #bc38
; call #8ca0
;
.lbd34			; added by Megachur
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
	ret
;
.music_info
	db "5 a Side Soccer (1986)(Mastertronic)(Rob Hubbard)",0
	db "",0

	read "music_end.asm"
