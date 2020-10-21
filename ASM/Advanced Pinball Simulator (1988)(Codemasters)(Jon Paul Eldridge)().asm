; Music of Advanced Pinball Simulator (1988)(Codemasters)(Jon Paul Eldridge)()
; Ripped by Megachur the 03/01/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ADVANCPS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 03
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #4868
FIRST_THEME				equ 1
LAST_THEME				equ 3

	read "music_header.asm"

;
.init_music
;
	push ix
	and a
	jp z,l48d5
	dec a
	add a
	add a
	add a
	ld c,a
	ld b,#00
	ld iy,l52f8
	add iy,bc
	ld a,(iy+#00)
	ld (l4929),a
	ld a,(iy+#01)
	ld (l4bcb),a
	xor a
	ld c,#02
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld ix,l4bce
	cp h
	call nz,l48b7
	ld l,(iy+#04)
	ld h,(iy+#05)
	ld ix,l4bee
	cp h
	call nz,l48b7
	ld l,(iy+#06)
	ld h,(iy+#07)
	ld ix,l4c0e
	cp h
	call nz,l48b7
	pop ix
	ret
.l48b7
	set 7,(ix+#1e)
	ld (ix+#08),l
	ld (ix+#09),h
	ld b,(hl)
	ld (ix+#04),b
	inc hl
	ld b,(hl)
	ld (ix+#05),b
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	ld (ix+#03),c
	ret
.l48d5
	ld ix,l4bce
	res 7,(ix+#1e)
	res 7,(ix+#3d)
	res 7,(ix+#5c)
	ld bc,#f6c0
	out (c),c
	ld bc,#f407
	out (c),c
	ld bc,#f680
	out (c),c
	ld bc,#f43f
	out (c),c
	ld d,#08
	ld a,#03
.l48fd
	ld bc,#f6c0
	out (c),c
	ld b,#f4
	out (c),d
	inc d
	ld bc,#f680
	out (c),c
	ld bc,#f400
	out (c),c
	dec a
	jr nz,l48fd
	ld bc,#f600
	out (c),c
	pop ix
	ret
;
.real_play_music
;
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l4bcd)
	inc a
.l4929 equ $ + 1
	cp #04
	jr nz,l492d
	xor a
.l492d
	ld (l4bcd),a
	jr nz,l4953
	ld ix,l4bce
	bit 7,(ix+#1e)
	call nz,l495c
	ld ix,l4bee
	bit 7,(ix+#1e)
	call nz,l495c
	ld ix,l4c0e
	bit 7,(ix+#1e)
	call nz,l495c
.l4953
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret
.l495c
	call l4965
	call l4adc
	jp l4b40
.l4965
	dec (ix+#03)
	ret nz
	xor a
	ld (l4bcc),a
.l496d
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld c,(hl)
	bit 7,c
	jr z,l49cb
	ld l,(ix+#06)
	ld h,(ix+#07)
.l497e
	inc hl
	inc hl
	ld (ix+#06),l
	ld (ix+#07),h
	dec hl
	ld a,(hl)
	dec hl
	bit 7,a
	jr nz,l4998
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	jr l496d
.l4998
	ld l,(ix+#08)
	ld (ix+#06),l
	ld h,(ix+#09)
	ld (ix+#07),h
	ld a,(l4bcb)
	bit 7,a
	jr nz,l497e
	res 7,(ix+#1e)
	ld bc,#f6c0
	out (c),c
	ld b,#f4
	ld c,(ix+#00)
	out (c),c
	ld bc,#f680
	out (c),c
	ld bc,#f400
	out (c),c
	ld b,#f6
	out (c),c
	pop af
	ret
.l49cb
	ld a,#66
	cp c
	jr z,l4a3f
	ld a,#64
	cp c
	jp z,l4a7f
	inc a
	cp c
	jr nz,l49e7
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ret
.l49e7
	rlc c
	ld b,#00
	ld iy,l4c2e
	add iy,bc
	ld e,(iy+#00)
	ld (ix+#14),e
	ld d,(iy+#01)
	ld (ix+#15),d
	call l4b6c
	inc hl
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld a,(l4bcc)
	cp #01
	ret z
.l4a12
	ld a,#01
	ld (ix+#0b),a
	ld (ix+#0d),a
	ld (ix+#0e),a
	ld l,(ix+#11)
	ld h,(ix+#12)
	ld (ix+#0f),l
	ld (ix+#10),h
	ld a,(ix+#13)
	ld (ix+#0a),a
	ld l,(ix+#1a)
	ld h,(ix+#1b)
	ld (ix+#1c),l
	ld (ix+#1d),h
	ld a,(hl)
	jp l4bb2
.l4a3f
	inc hl
	ld a,(hl)
	ld bc,#f6c0
	out (c),c
	ld bc,#f406
	out (c),c
	ld bc,#f680
	out (c),c
	ld b,#f4
	out (c),a
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld d,#38
	cp #00
	jr z,l4a64
	ld d,(ix+#02)
.l4a64
	ld bc,#f6c0
	out (c),c
	ld bc,#f407
	out (c),c
	ld bc,#f680
	out (c),c
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	jp l496d
.l4a7f
	inc hl
	ld b,#00
	ld c,(hl)
	sla c
	sla c
	rl b
	inc hl
	ld (ix+#04),l
	ld (ix+#05),h
	ld iy,l51ca
	add iy,bc
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#0a),a
	ld (ix+#13),a
	inc hl
	ld (ix+#0f),l
	ld (ix+#10),h
	ld (ix+#11),l
	ld (ix+#12),h
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld (ix+#1a),l
	ld (ix+#1b),h
	ld (ix+#1c),l
	ld (ix+#1d),h
	ld a,#01
	ld (ix+#0b),a
	ld (ix+#0d),a
	ld (ix+#0e),a
	ld (ix+#16),a
	ld (ix+#18),a
	ld (ix+#19),a
	ld (l4bcc),a
	jp l496d
.l4adc
	bit 7,(ix+#0e)
	ret nz
	dec (ix+#0e)
	ret nz
	ld a,(ix+#0d)
	ld (ix+#0e),a
	ld a,(ix+#0a)
	ld bc,#f6c0
	out (c),c
	ld b,#f4
	ld c,(ix+#00)
	out (c),c
	ld bc,#f680
	out (c),c
	ld b,#f4
	out (c),a
	ld bc,#f600
	out (c),c
	add (ix+#0c)
	ld (ix+#0a),a
	dec (ix+#0b)
	ret nz
	ld l,(ix+#0f)
	ld h,(ix+#10)
	ld a,(hl)
	bit 7,a
	jr z,l4b27
	bit 0,a
	jp nz,l4a12
	set 7,(ix+#0e)
	ret
.l4b27
	inc a
	ld (ix+#0b),a
	inc hl
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	ld (ix+#0e),a
	inc hl
	ld (ix+#0f),l
	ld (ix+#10),h
	ret
.l4b40
	bit 7,(ix+#19)
	ret nz
	dec (ix+#19)
	ret nz
	ld a,(ix+#18)
	ld (ix+#19),a
	dec (ix+#16)
	jr z,l4b9a
	ld l,(ix+#14)
	ld h,(ix+#15)
	ld b,#00
	ld c,(ix+#17)
	bit 7,c
	jr z,l4b64
	dec b
.l4b64
	add hl,bc
	ld (ix+#14),l
	ld (ix+#15),h
	ex de,hl
.l4b6c
	ld bc,#f6c0
	out (c),c
	ld b,#f4
	ld a,(ix+#01)
	out (c),a
	ld bc,#f680
	out (c),c
	ld b,#f4
	out (c),e
	ld bc,#f6c0
	out (c),c
	ld b,#f4
	inc a
	out (c),a
	ld bc,#f680
	out (c),c
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ret
.l4b9a
	ld l,(ix+#1c)
	ld h,(ix+#1d)
	ld a,(hl)
	bit 7,a
	jr z,l4bb2
	ld l,(ix+#1a)
	ld h,(ix+#1b)
	ld (ix+#1c),l
	ld (ix+#1d),h
	ld a,(hl)
.l4bb2
	inc a
	ld (ix+#16),a
	inc hl
	ld a,(hl)
	ld (ix+#17),a
	inc hl
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#19),a
	inc hl
	ld (ix+#1c),l
	ld (ix+#1d),h
	ret
.l4bce equ $ + 3
.l4bcd equ $ + 2
.l4bcc equ $ + 1
.l4bcb
	db #00,#00,#00,#08,#00,#30,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4bee equ $ + 3
	db #00,#00,#00,#09,#02,#28,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4c0e equ $ + 3
	db #00,#00,#00,#0a,#04,#18,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00
.l4c2e
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
.l4cf0
	dw l4db4,l5140,l4f62,l4f62
	dw l4db4,l4db4,l5140,l4db4
	dw l4f62,l4f62,l517f,l4db4
	dw l4db4,l4db4,l4db4,l50dc
	dw l4e75,l4db4,l4db4,l4db4
	dw l4db4,l4db4,l4db4,l4db4
.l4d26 equ $ + 6
	dw l4db4,l50dc,#ffff,l4db4
	dw l5147,l514e,l514e,l514e
	dw l514e,l514e,l514e,l514e
	dw l514e,l514e,l514e,l4db4
	dw l4db4,l514e,l514e,l4ef8
	dw l4ef8,l514e,l514e,#ffff
.l4d50
	dw l510f,l510f,l4fa3,l4fa3
	dw l4fa3,l4fa3,l4fa3,l4fa3
	dw l4fa3,l4fa3,l510f,l4db4
	dw l4db4,l4db4,l4fa3,l4fa3
	dw l4fa3,l507e,l507e,l4ffa
	dw l50ab,l507e,l507e,l4ffa
	dw l50ab,l507e,l507e,l4ffa
	dw l50ab,l507e,l507e,l4ffa
	dw l50ab,l507e,l507e,l507e
.l4d9c equ $ + 4
	dw l507e,#ffff,l4e06,#ffff
.l4da4 equ $ + 4
.l4da0
	dw l4e27,#ffff,l4e48,#ffff
.l4dac equ $ + 4
.l4da8
	dw l4db9,#ffff,l4dd2,#ffff
.l4db0
	dw l4deb,#ffff
.l4db9 equ $ + 5
.l4db4
	db #64,#00,#00,#80,#ff,#64,#02,#66
	db #00,#40,#10,#40,#10,#3e,#10,#40
	db #10,#41,#10,#40,#20,#40,#20,#40
.l4dd2 equ $ + 6
	db #10,#37,#20,#39,#40,#ff,#64,#02
	db #66,#00,#3c,#10,#3c,#10,#3b,#10
	db #3c,#10,#3e,#10,#3c,#20,#3c,#20
.l4deb equ $ + 7
	db #3c,#10,#34,#20,#35,#40,#ff,#64
	db #06,#66,#00,#24,#10,#24,#10,#23
	db #10,#24,#10,#26,#10,#24,#20,#24
	db #20,#18,#10,#28,#20,#64,#02,#1d
.l4e06 equ $ + 2
	db #40,#ff,#64,#02,#66,#00,#2d,#08
	db #2d,#08,#34,#10,#37,#10,#39,#10
	db #3c,#10,#39,#10,#3c,#10,#39,#08
	db #3c,#08,#3e,#10,#40,#10,#43,#10
.l4e27 equ $ + 3
	db #45,#50,#ff,#64,#02,#66,#00,#15
	db #08,#15,#08,#1c,#10,#1f,#10,#21
	db #10,#24,#10,#21,#10,#24,#10,#21
	db #08,#24,#08,#26,#10,#28,#10,#2b
.l4e48 equ $ + 4
	db #10,#2d,#50,#ff,#64,#03,#66,#01
	db #09,#10,#09,#10,#64,#02,#66,#05
	db #09,#20,#64,#03,#66,#01,#09,#10
	db #09,#10,#64,#02,#66,#05,#09,#20
	db #64,#03,#66,#01,#09,#10,#09,#10
	db #64,#02,#66,#05,#09,#10,#09,#50
.l4e75 equ $ + 1
	db #ff,#64,#02,#66,#00,#30,#10,#30
	db #10,#33,#08,#33,#10,#33,#10,#33
	db #10,#33,#08,#32,#10,#30,#10,#30
	db #08,#30,#08,#30,#10,#33,#08,#33
	db #10,#33,#10,#33,#10,#33,#08,#32
	db #10,#30,#10,#33,#10,#33,#10,#37
	db #08,#37,#10,#37,#10,#37,#10,#37
	db #08,#35,#10,#33,#10,#2e,#10,#2e
	db #10,#2e,#08,#2e,#10,#2e,#10,#2e
	db #10,#2e,#08,#30,#10,#32,#10,#64
	db #06,#3c,#10,#3c,#10,#3a,#10,#3c
	db #10,#3f,#10,#3e,#10,#3f,#10,#3e
	db #10,#3c,#10,#3c,#10,#3a,#10,#3c
	db #10,#3f,#10,#3e,#10,#3f,#10,#3e
	db #10,#3f,#10,#3f,#10,#3c,#10,#3f
	db #10,#41,#10,#3e,#20,#3a,#70,#37
.l4ef8 equ $ + 4
	db #10,#3a,#10,#ff,#64,#06,#24,#80
	db #24,#80,#27,#80,#22,#80,#30,#10
	db #30,#10,#2e,#10,#30,#10,#33,#10
	db #32,#10,#33,#10,#32,#10,#30,#10
	db #30,#10,#2e,#10,#30,#10,#33,#10
	db #32,#10,#33,#10,#32,#10,#33,#10
	db #33,#10,#30,#10,#33,#10,#35,#10
	db #32,#20,#2e,#70,#2b,#10,#2e,#10
	db #ff,#64,#02,#66,#00,#30,#10,#30
	db #10,#3f,#08,#3f,#10,#3f,#10,#3f
	db #10,#3f,#08,#3e,#10,#3c,#10,#30
	db #08,#30,#08,#30,#10,#3f,#08,#3f
	db #10,#3f,#10,#3f,#10,#3f,#08,#3e
.l4f62 equ $ + 6
	db #10,#3c,#08,#3c,#08,#ff,#64,#02
	db #66,#00,#30,#08,#2b,#08,#2e,#08
	db #30,#10,#2b,#08,#2e,#08,#2b,#08
	db #30,#08,#2b,#08,#2e,#08,#30,#08
	db #30,#08,#2b,#08,#2e,#08,#2b,#08
	db #30,#08,#2b,#08,#2e,#08,#30,#10
	db #2b,#08,#2e,#08,#2b,#08,#30,#08
	db #2b,#08,#2e,#08,#30,#08,#30,#08
.l4fa3 equ $ + 7
	db #30,#08,#30,#08,#30,#08,#ff,#64
	db #03,#66,#01,#3c,#08,#3c,#08,#3c
	db #08,#3c,#08,#64,#02,#66,#05,#48
	db #10,#64,#02,#66,#01,#48,#10,#64
	db #03,#66,#01,#3c,#08,#3c,#08,#48
	db #08,#3c,#08,#64,#02,#66,#05,#48
	db #10,#48,#10,#64,#03,#66,#01,#3c
	db #08,#3c,#10,#3c,#08,#64,#02,#66
	db #05,#48,#10,#64,#03,#66,#01,#3c
	db #10,#3c,#08,#3c,#08,#64,#02,#66
	db #05,#3c,#08,#3c,#08,#66,#03,#3c
.l4ffa equ $ + 6
	db #10,#66,#05,#3c,#10,#ff,#64,#03
	db #66,#01,#1b,#08,#1b,#08,#1b,#08
	db #1b,#08,#64,#02,#66,#05,#48,#10
	db #64,#02,#66,#01,#48,#10,#64,#03
	db #66,#01,#1b,#08,#1b,#08,#48,#08
	db #1b,#08,#64,#02,#66,#05,#48,#10
	db #48,#10,#ff,#64,#03,#66,#01,#18
	db #08,#18,#08,#18,#08,#18,#08,#64
	db #02,#66,#05,#48,#10,#64,#02,#66
	db #01,#48,#10,#64,#03,#66,#01,#18
	db #08,#18,#08,#48,#08,#18,#08,#64
	db #02,#66,#05,#48,#10,#48,#10,#64
	db #03,#66,#01,#18,#08,#18,#10,#18
	db #08,#64,#02,#66,#05,#48,#10,#64
	db #03,#66,#01,#18,#10,#18,#08,#18
	db #08,#64,#02,#66,#05,#18,#08,#18
	db #08,#66,#03,#18,#10,#66,#05,#18
.l507e equ $ + 2
	db #10,#ff,#64,#03,#66,#01,#18,#08
	db #18,#08,#18,#08,#18,#08,#64,#02
	db #66,#05,#48,#10,#64,#02,#66,#01
	db #48,#10,#64,#03,#66,#01,#18,#08
	db #18,#08,#48,#08,#18,#08,#64,#02
.l50ab equ $ + 7
	db #66,#05,#48,#10,#48,#10,#ff,#64
	db #03,#66,#01,#16,#08,#16,#08,#16
	db #08,#16,#08,#64,#02,#66,#05,#48
	db #10,#64,#02,#66,#01,#48,#10,#64
	db #03,#66,#01,#16,#08,#16,#08,#16
	db #08,#16,#08,#64,#02,#66,#05,#48
	db #10,#64,#02,#66,#01,#48,#10,#ff
.l50dc
	db #64,#02,#66,#00,#30,#10,#30,#10
	db #30,#20,#33,#10,#33,#10,#33,#20
	db #2e,#10,#2e,#10,#2e,#10,#35,#20
	db #35,#10,#33,#10,#32,#10,#30,#10
	db #30,#10,#30,#20,#33,#10,#33,#10
	db #33,#10,#2e,#60,#2e,#10,#30,#10
.l510f equ $ + 3
	db #2e,#10,#ff,#64,#03,#66,#06,#30
	db #08,#30,#08,#66,#07,#30,#08,#30
	db #08,#66,#09,#2e,#08,#2e,#08,#66
	db #0c,#2e,#08,#2e,#08,#66,#0d,#2b
	db #08,#2b,#08,#66,#0e,#2b,#08,#2b
	db #08,#66,#0f,#27,#08,#27,#08,#27
.l5140 equ $ + 4
	db #08,#27,#08,#ff,#64,#05,#66,#00
.l5147 equ $ + 3
	db #3c,#80,#ff,#64,#05,#66,#00,#4b
.l514e equ $ + 2
	db #80,#ff,#64,#04,#66,#00,#00,#10
	db #00,#10,#18,#10,#00,#08,#00,#08
	db #00,#08,#00,#08,#00,#08,#00,#08
	db #18,#10,#18,#10,#00,#10,#00,#10
	db #18,#10,#18,#08,#18,#08,#00,#10
	db #18,#10,#18,#08,#18,#08,#18,#08
.l517f equ $ + 3
	db #18,#08,#ff,#64,#01,#66,#00,#3f
	db #10,#3f,#10,#3e,#10,#3c,#10,#3a
	db #30,#37,#10,#3a,#10,#3c,#20,#3c
	db #50,#3f,#10,#3f,#10,#3e,#10,#3c
	db #10,#3a,#30,#37,#10,#3a,#10,#3c
	db #20,#3c,#20,#37,#10,#3a,#10,#37
	db #08,#37,#08,#30,#10,#30,#10,#33
	db #20,#35,#08,#35,#10,#35,#08,#37
	db #10,#37,#10,#3c,#10,#3a,#10,#37
	db #10,#33,#08,#30,#48,#ff
.l51ca
	dw l5212,l5217,l521b,l5223
	dw l522d,l5232,l5236,l523e
	dw l5242,l5247,l524b,l5250
	dw l5257,l525f,l5263,l5268
	dw l526f,l5277,l527e,l5283
	dw l528a,l528f,l5296,l529e
	dw l52a5,l52aa,l52b7,l52bf
	dw l52c7,l52cc,l52d1,l52d9
	dw l52e0,l52e5,l52ec,l52f1
.l5217 equ $ + 5
.l5212
	db #00,#7f,#00,#7f,#80,#01,#00,#01
.l521b equ $ + 1
	db #ff,#0f,#05,#ff,#06,#0a,#ff,#03
.l5223 equ $ + 1
	db #80,#02,#ff,#01,#04,#01,#01,#02
.l522d equ $ + 3
	db #ff,#01,#ff,#0f,#0f,#ff,#03,#80
.l5236 equ $ + 4
.l5232
	db #01,#00,#01,#ff,#0f,#02,#ff,#02
.l523e equ $ + 4
	db #0d,#ff,#01,#80,#01,#00,#01,#ff
.l5247 equ $ + 5
.l5242
	db #0f,#0f,#ff,#03,#80,#01,#10,#01
.l5250 equ $ + 6
.l524b equ $ + 1
	db #ff,#0d,#0d,#ff,#0e,#80,#06,#f8
.l5257 equ $ + 5
	db #01,#06,#08,#01,#ff,#0d,#03,#ff
.l525f equ $ + 5
	db #08,#0a,#ff,#0c,#80,#01,#00,#01
.l5268 equ $ + 6
.l5263 equ $ + 1
	db #ff,#0e,#0e,#fe,#01,#80,#06,#e8
.l526f equ $ + 5
	db #01,#06,#0c,#01,#ff,#0a,#04,#01
.l5277 equ $ + 5
	db #01,#0f,#ff,#01,#80,#0c,#f4,#01
.l527e equ $ + 4
	db #0c,#0c,#01,#ff,#0f,#0f,#ff,#02
.l5283 equ $ + 1
	db #80,#04,#e8,#01,#01,#60,#01,#ff
.l528f equ $ + 5
.l528a
	db #0f,#0f,#ff,#04,#80,#0b,#f6,#01
.l5296 equ $ + 4
	db #01,#6e,#01,#ff,#0a,#05,#01,#04
.l529e equ $ + 4
	db #0f,#ff,#04,#80,#07,#f4,#01,#07
.l52a5 equ $ + 3
	db #0c,#01,#ff,#0f,#0f,#ff,#03,#80
.l52aa
	db #01,#fa,#01,#01,#06,#01,#01,#f4
.l52b7 equ $ + 5
	db #01,#01,#0c,#01,#ff,#0a,#05,#01
.l52bf equ $ + 5
	db #01,#0f,#ff,#06,#80,#01,#04,#fa
.l52c7 equ $ + 5
	db #01,#04,#06,#01,#ff,#0f,#0f,#ff
.l52d1 equ $ + 7
.l52cc equ $ + 2
	db #03,#80,#01,#01,#00,#01,#ff,#0a
.l52d9 equ $ + 7
	db #05,#01,#01,#0f,#ff,#06,#80,#10
.l52e0 equ $ + 6
	db #fc,#01,#10,#04,#01,#ff,#0f,#0f
.l52e5 equ $ + 3
	db #ff,#01,#80,#06,#ff,#01,#06,#01
.l52f1 equ $ + 7
.l52ec equ $ + 2
	db #01,#ff,#0f,#0f,#ff,#03,#80,#03
	db #ff,#01,#03,#01,#01,#ff
.l52f8
	db #04,#ff
	dw l4cf0,l4d26,l4d50
	db #04,#00
	dw l4d9c,l4da0,l4da4
	db #04,#00
	dw l4da8,l4dac,l4db0
;
.play_music	; added by Megachur
;
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	call real_play_music
	jp real_play_music
;
.music_info
	db "Advanced Pinball Simulator (1988)(Codemasters)(Jon Paul Eldridge)",0
	db "",0

	read "music_end.asm"
