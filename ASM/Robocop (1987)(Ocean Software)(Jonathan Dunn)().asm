; Music of Robocop (1987)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 06/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ROBOCOP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 06
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #1a41
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

;
.init_music
;
	push af	; modified by Megachur
	call l1be1	;l1be0
	;pop bc
	pop af	; add
	;ld a,c
	ld c,a	; add
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l22b8
	add hl,bc
	ld a,(hl)
	ld (l1b4b),a
	inc hl
	ld ix,l1aae
	ld c,#25
	ld a,#03
.l1a6c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#20),#00
	ld (ix+#21),#00
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l1a6c
	ld (l1dd1),a
	inc a
	ld (l1b1d),a
	ld (l20f7),a
	ret
.l1aae
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#09
.l1ad3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#12
.l1af8
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#24
.l1b1d
	db #00
	db #00
;
.play_music
;
	call l214e
	ld a,(l20f7)
	and a
	jp z,l1b7b
.l1b2a equ $ + 1
	ld a,#00
	ld (l1b77),a
	ld hl,l1b1d
	dec (hl)
	jr nz,l1b4f
	ld b,(hl)
	ld ix,l1aae
	call l1ccf
	ld ix,l1ad3
	call l1ccf
	ld ix,l1af8
	call l1ccf
.l1b4b equ $ + 1
	ld a,#01
	ld (l1b1d),a
.l1b4f
	ld ix,l1aae
	call l1d9e
	ld (l1eaf),hl
	ld (l1eb7),a
	ld ix,l1ad3
	call l1d9e
	ld (l1eb1),hl
	ld (l1eb8),a
	ld ix,l1af8
	call l1d9e
	ld (l1eb3),hl
	ld (l1eb9),a
.l1b77 equ $ + 1
	ld a,#00
	ld (l1eb5),a
.l1b7b
	ld a,(l20f8)
	and a
	jr z,l1bab
	ld hl,(l1ebc)
	ld (l1eaf),hl
	ld hl,(l1ec0)
	ld (l1eb3),hl
	ld a,(l1ec2)
	ld (l1eb5),a
	ld a,(l1eb6)
.l1b96
	or #2d
	ld hl,l1ec3
	and (hl)
	ld (l1eb6),a
	ld a,(l1ec4)
	ld (l1eb7),a
	ld a,(l1ec6)
	ld (l1eb9),a
.l1bab
	ld a,(l20f7)
	ld hl,l20f8
	or (hl)
	ret z
	ld hl,l1eba
	ld d,#0b
.l1bb8
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l1bb8
	ret
.l1bd9
	xor a
	ld (l20f7),a
	defs 3,0	; ld (#1a40),a - modified by Megachur
.l1be0
	nop			; di
;
.l1be1
.stop_music
;
	ld de,#0d00
.l1be4
	call l1bee
	dec d
	jp p,l1be4
	ld de,#0080
.l1bee
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	xor a
	ld (l20f8),a
	ld (l1eb7),a
	ld (l1eb8),a
	ld (l1eb9),a
	ret
	db #9f,#87,#8b,#90,#4e,#7d,#78,#0f
	db #67,#5f,#24,#0e,#36,#8c,#04,#99
	db #9e,#a3
	pop hl
	jp l1bd9
	jp l2082
	ld a,(ix+#24)
	ld c,a
	and #07
	ld hl,l1e7a
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l1cdd
	ld a,(ix+#24)
	ld c,a
	and #38
	ld hl,l1e7a
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l1cdd
	ld hl,l1e7a
	ld a,(ix+#24)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l1cdd
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l1cdd
	ld a,(de)
	inc de
	ld (l1dd1),a
	jr l1cdd
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l1cdd
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l1cdd
	ld (ix+#1d),b
	jr l1cdd
	ld (ix+#1d),#40
	jr l1cdd
	ld (ix+#1d),#c0
	jr l1cdd
	set 1,(ix+#00)
	jr l1cdd
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l1d1b
	res 5,(ix+#00)
	jr l1d1b
	ld (ix+#1f),#ff
	jr l1cdd
	ld (ix+#1f),b
	jr l1cdd
.l1ccf
	dec (ix+#10)
	jr nz,l1d38
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l1cdd
	ld a,(de)
	inc de
	and a
	jp m,l1d49
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l1cf2
	ld (l1b2a),a
.l1cf2
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#0b),l
	ld (ix+#0c),h
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
.l1d1b
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l1d37
	ld a,(l20f8)
	and a
	jr nz,l1d37
	ld (ix+#1f),#ff
.l1d37
	ret
.l1d38
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l1d45
	inc (ix+#12)
	ret
.l1d45
	dec (ix+#12)
	ret
.l1d49
	cp #b8
	jr c,l1d96
	add #20
	jr c,l1d77
	add #10
	jr c,l1d7e
	add #10
	jr nc,l1d6f
	ld c,a
	ld hl,l1f88
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l1cdd
.l1d6f
	add #09
	ld (l1b4b),a
	jp l1cdd
.l1d77
	inc a
	ld (ix+#11),a
	jp l1cdd
.l1d7e
	ld hl,l1fd4
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l1cdd
.l1d96
	ld hl,l1b96
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l1d9e
	ld c,(ix+#00)
	bit 5,c
	jr z,l1dd0
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l1dca
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l1dca
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l1dca
	ld a,(ix+#18)
	ld (ix+#13),a
.l1dd1 equ $ + 1
.l1dd0
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l1dea
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l1dea
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l1ec8
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l1e4b
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l1e14
	bit 0,c
	jr nz,l1e32
.l1e14
	bit 5,l
	jr nz,l1e24
	sub (ix+#1b)
	jr nc,l1e2f
	set 5,(ix+#1d)
	sub a
	jr l1e2f
.l1e24
	add (ix+#1b)
	cp b
	jr c,l1e2f
	res 5,(ix+#1d)
	ld a,b
.l1e2f
	ld (ix+#1c),a
.l1e32
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l1e3d
	dec d
.l1e3d
	add #a0
	jr c,l1e49
.l1e41
	sla e
	rl d
	add #18
	jr nc,l1e41
.l1e49
	add hl,de
	ex de,hl
.l1e4b
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l1e76
	ld b,(ix+#0e)
	djnz l1e73
	ld c,(ix+#0d)
	bit 7,c
	jr z,l1e62
	dec b
.l1e62
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l1e76
.l1e73
	ld (ix+#0e),b
.l1e76
	cpl
	and #03
.l1e7a equ $ + 1
	ld a,#80
	jr nz,l1e87
	ld a,(l1b2a)
	xor #08
	ld (l1b77),a
	ld a,#07
.l1e87
	ld hl,l1eb6
	xor (hl)
	and (ix+#24)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l1eaa
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#24)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l1b77),a
.l1eaa
	ex de,hl
	ld a,(ix+#13)
	ret
.l1eb6 equ $ + 7
.l1eb5 equ $ + 6
.l1eb3 equ $ + 4
.l1eb1 equ $ + 2
.l1eaf
	db #00,#00,#00,#00,#00,#00,#00,#bf
.l1ebd equ $ + 6
.l1ebc equ $ + 5
.l1eba equ $ + 3
.l1eb9 equ $ + 2
.l1eb8 equ $ + 1
.l1eb7
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l1ec6 equ $ + 7
.l1ec4 equ $ + 5
.l1ec3 equ $ + 4
.l1ec2 equ $ + 3
.l1ec0 equ $ + 1
	db #00,#00,#00,#00,#bf,#10,#00,#10
	db #00
.l1ec8
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.l1f88
	db #0b,#0b,#0c,#1f,#22,#25,#26,#28
	db #2a,#2c,#3f,#80,#00,#98,#13,#12
	db #11,#10,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#80,#00,#05,#07,#8c,#00,#04
	db #07,#8c,#0c,#80,#00,#04,#87,#00
	db #02,#85,#00,#05,#88,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #81,#00,#05,#87
.l1fd4
	dw l1feb,l1ff4,l2004,l200d
	dw l2017,l2021,l202b,l2039
	dw l2049,l206a,l2073
.l1feb equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#09,#08
	db #87
.l1ff4 equ $ + 1
	db #00,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#04,#03,#01,#00,#87
.l2004 equ $ + 1
	db #00,#0e,#0c,#0b,#0a,#09,#08,#00
	db #87
.l200d equ $ + 1
	db #02,#0f,#0e,#0d,#0c,#0a,#09,#08
	db #07,#87
.l2017 equ $ + 1
	db #01,#0c,#0d,#0e,#0d,#0c,#09,#08
	db #07,#87
.l2021 equ $ + 1
	db #01,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#87
.l202b equ $ + 1
	db #00,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#00,#87
.l2039 equ $ + 1
	db #04,#0e,#0d,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#87
.l2049 equ $ + 1
	db #05,#01,#02,#03,#04,#05,#06,#07
	db #08,#09,#0a,#0b,#0c,#0d,#0e,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #07,#06,#05,#04,#03,#02,#01,#00
	db #87
.l206a equ $ + 1
	db #01,#0f,#0d,#0c,#0a,#08,#07,#06
	db #87
.l2073 equ $ + 1
	db #02,#0a,#0b,#0c,#0d,#0e,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#87
.l2082
	ld c,(ix+#05)
	ld b,(ix+#06)
.l2088
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	ld a,(ix+#21)
	dec a
	jp m,l20a5
	ld (ix+#21),a
	ld e,(ix+#22)
	ld d,(ix+#23)
	jr nz,l20bc
	inc bc
	inc bc
	jr l2088
.l20a5
	ld (ix+#20),#00
.l20a9
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l20c7
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l20bc
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l1cdd
.l20c7
	dec de
	ld a,d
	or e
	jr nz,l20d8
	inc hl
	ld a,(hl)
	ld (ix+#20),a
	inc hl
	inc bc
	inc bc
	inc bc
	inc de
	jr l20a9
.l20d8
	dec de
	ld a,d
	or e
	inc de
	inc de
	jr nz,l20f3
	inc hl
	ld a,(hl)
	ld (ix+#21),a
	inc hl
	ld e,(hl)
	ld (ix+#22),e
	inc hl
	ld d,(hl)
	ld (ix+#23),d
	inc bc
	inc bc
	inc bc
	jr l20bc
.l20f3
	inc bc
	inc bc
	jr l20bc
.l20f8 equ $ + 1
.l20f7
.music_end
	db &00
	db &00,&ff
	ld l,a
	ld a,(#1998)
	cp #c6
	ret nz
	ld a,l
	ld hl,l21ec
	add a
	add l
	ld l,a
	jr nc,l210b
	inc h
.l210b
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l2286
.l2113
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l2113
	ld a,(l2287)
	ld (l2297),a
	ld hl,(l2288)
	ld (l1ebc),hl
	ld de,(l228a)
	ld (l1ec0),de
	ld a,l
	ld (l1ec2),a
	ld a,(l228d)
	ld (l1ec3),a
	ld a,(l228c)
	ld e,a
	ld d,#0c
	call l1bee
	ld a,(l2296)
	ld e,a
	ld d,#0d
	call l1bee
	ld hl,l20f8
	inc (hl)
	ret
.l214e
	call l2299
	ld a,(l20f8)
	and a
	ret z
	ld a,(l2286)
	and a
	jr nz,l2162
	ld (l20f8),a
	jp l1be1
.l2162
	dec a
	ld (l2286),a
	ld a,(l2297)
	and a
	jr nz,l219b
	ld a,(l2294)
	and a
	ret z
	dec a
	ld (l2294),a
	ld a,(l2287)
	ld (l2297),a
	ld a,(l2295)
	and a
	jr z,l2184
	ld a,(l22b4)
.l2184
	ld b,a
	ld a,(l2288)
	add b
	ld (l1ebc),a
	ld a,(l2289)
	add b
	and #0f
	ld (l1ebd),a
	ld hl,(l228a)
	ld (l1ec0),hl
.l219b
	ld hl,l2297
	dec (hl)
	ld a,(l2292)
	and a
	jr z,l21c2
	jp p,l21b5
	ld hl,(l1ebc)
	ld de,(l228e)
	add hl,de
	ld (l1ebc),hl
	jr l21c2
.l21b5
	ld hl,(l1ebc)
	ld de,(l228e)
	and a
	sbc hl,de
	ld (l1ebc),hl
.l21c2
	ld a,(l2293)
	and a
	jr z,l21e5
	jp p,l21d8
	ld hl,(l1ec0)
	ld de,(l2290)
	add hl,de
	ld (l1ec0),hl
	jr l21e5
.l21d8
	ld hl,(l1ec0)
	ld de,(l2290)
	and a
	sbc hl,de
	ld (l1ec0),hl
.l21e5
	ld a,(l1ebc)
	ld (l1ec2),a
	ret
.l21ec
	dw l2231,l2220,l2264,l2220
	dw l2242,l2220,l21fe,l2242
	dw l2275
.l21fe
	db #07,#03,#10,#00,#8b,#00,#0f,#fa
	db #10,#00,#08,#01,#ff,#01,#0a,#00
	db #00,#05,#0a,#02,#01,#83,#00,#0c
	db #fa,#38,#00,#40,#00,#ff,#ff,#01
	db #00,#00
.l2220
	db #0f,#ff,#09,#00,#02,#02,#03,#f3
	db #02,#00,#00,#00,#01,#01,#ff,#00
	db #00
.l2231
	db #0e,#08,#40,#00,#60,#01,#09,#fa
	db #a4,#00,#44,#00,#ff,#ff,#01,#00
	db #00
.l2242
	db #19,#03,#00,#44,#00,#00,#14,#d7
	db #80,#00,#40,#00,#ff,#01,#1e,#01
	db #00,#0f,#ff,#c2,#00,#0a,#01,#0a
	db #f2,#a2,#01,#c0,#00,#ff,#ff,#ff
	db #14,#00
.l2264
	db #0e,#08,#c0,#40,#c8,#40,#07,#fa
	db #13,#00,#13,#00,#ff,#ff,#01,#00
	db #00
.l2275
	db #96,#c8,#40,#01,#60,#01,#4b,#fa
	db #04,#00,#04,#00,#ff,#ff,#01,#00
	db #00
.l228d equ $ + 7
.l228c equ $ + 6
.l228a equ $ + 4
.l2289 equ $ + 3
.l2288 equ $ + 2
.l2287 equ $ + 1
.l2286
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2295 equ $ + 7
.l2294 equ $ + 6
.l2293 equ $ + 5
.l2292 equ $ + 4
.l2290 equ $ + 2
.l228e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2297 equ $ + 1
.l2296
	db #00,#00,#00
.l2299
	ld a,(l22b4)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l22b7
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l22b7 equ $ + 3
.l22b4
	db #ff,#80,#1b,#34
.l22b8
	db #03
	dw l75c0,l75ec,l7616
	db #05
	dw lc5c0,lc5d3,lc5ec
	db #05
	dw l22db,l22fb,l231b
	db #03
	dw l233b,l2341,l234a
	db #05
	dw l2382,l2386,l238a
.l22db
	dw lc785
	db #02,#00,#02
	dw lc785
	db #01,#00,#ff,#02,#00,#03
	dw lc785
	db #02,#00,#03
	dw lc785
	db #01,#00,#ff,#02,#00,#03
	dw lc785,lc7e9,#0000
.l22fb
	dw lc79b
	db #02,#00,#05
	dw lc79b
	db #01,#00,#ff,#02,#00,#06
	dw lc79b
	db #02,#00,#06
	dw lc79b
	db #01,#00,#ff,#02,#00,#06
	dw lc79b,lc79b,#0000
.l231b
	dw lc7ad
	db #02,#00,#05
	dw lc7ad
	db #01,#00,#ff,#02,#00,#06
	dw #c7ad
	db #02,#00,#06
	dw lc7ad
	db #01,#00,#ff,#02,#00,#06
	dw lc7ad,lc7d0,#0000
.l233b
	dw l237f,l2370,#0000
.l2341
	dw l237f
	db #01,#00,#03
	dw l2353
	dw #0000
.l234a
	dw l237f
	db #01,#00,#03
	dw l2366,#0000
.l2353
	db #8a,#88,#01,#01,#82,#d4,#c0,#e7
	db #12,#15,#e3,#17,#e7,#10,#e7,#12
	db #ef,#80,#8e
.l2366
	db #8a,#81,#90,#d7,#c6,#ff,#36,#ef
	db #8f,#8e
.l2370
	db #d3,#8c,#c2,#e7,#15,#15,#e3,#15
	db #e7,#15,#ef,#15,#e3,#80,#8e
.l237f
	db #e0,#80,#87
.l2382
	dw l238e,#0000
.l2386
	dw l23a2,#0000
.l238a
	dw l7640,#0000
.l238e
	db #d0,#88,#01,#01,#c0,#e1,#81,#8a
	db #2f,#31,#34,#31,#34,#36,#34,#36
	db #82,#ef,#39,#8e
.l23a2
	db #91,#81,#c1,#d1,#8c,#e1,#18,#18
	db #e3,#18,#d3,#c2,#e5,#15,#c1,#d1
	db #e3,#18,#e1,#18,#e3,#18,#d3,#c2
	db #e3,#15,#e1,#15,#15,#ff,#80,#8e
	db #07,#13,#00,#45,#cf,#00,#00,#00
	db #00,#00,#00,#00,#8a,#66,#91,#00
	db #00,#91,#4e,#8a,#00,#00,#00,#00
	db #00,#00,#8a,#cf,#c5,#00,#00,#91
	db #cf,#8a,#00,#00,#00,#00,#00,#00
	db #8a,#d0,#c0,#00,#00,#c0,#d0,#8a
	db #00,#00,#00,#00,#00,#00,#00,#cf
	db #40,#00,#00,#85,#8f,#8a,#00,#00
	db #00,#00,#00,#00
	
.l75c0
	dw l7644,l7644,l774d,l774d
	dw l7640,l7640,l7640,l7640
	dw l7640,l7640,l7789,l7789
	dw l7789,l77cb,l77cb,l77cb
	dw l77cb,l7789,l7789,l7640
	dw l7640,#0000
.l75ec
	dw l7640,l7640,l7640,l7640
	dw l7770,l7770,l7640,l7640
	dw l7770,l7770,l7640,l7640
	dw l77dc,l77dc,l7640,l7640
	dw l77dc,l77dc,l7640,l7640
	dw #0000
.l7616
	dw l7669,l7669,l7669,l7669
	dw l7669,l7669,l7669,l7669
	dw l767a,l767a,l767a,l767a
	dw l767a,l767a,l767a,l767a
	dw l767a,l767a,l767a,l767a
	dw #0000
.l7640
	db #ff,#80,#80,#87
.l7644
	db #8a,#88,#01,#01,#82,#d4,#c0,#e7
	db #1e,#21,#e3,#23,#e7,#1c,#e3,#1e
	db #80,#1e,#e7,#21,#e3,#23,#23,#1c
	db #1e,#e7,#1c,#1e,#e3,#21,#e7,#23
	db #ff,#1c,#e3,#8f,#87
.l7669
	db #c1,#81,#91,#d1,#8c,#e1,#18,#18
	db #eb,#18,#c0,#d2,#8b,#e7,#41,#41
	db #87
.l767a
	db #c1,#d1,#8c,#e1,#18,#c0,#d2,#8b
	db #e1,#41,#41,#41,#d3,#8c,#c2,#e3
	db #15,#c0,#d2,#8b,#e1,#41,#41,#c1
	db #d1,#8c,#e1,#18,#c0,#d2,#8b,#e1
	db #41,#c1,#d1,#8c,#e1,#18,#c0,#d2
	db #8b,#e1,#41,#d3,#8c,#c2,#e3,#15
	db #c0,#d2,#8b,#e1,#41,#41,#c1,#d1
	db #8c,#e1,#18,#c0,#d2,#8b,#e1,#41
	db #41,#41,#d3,#8c,#c2,#e3,#15,#c0
	db #d2,#8b,#e1,#41,#41,#c1,#d1,#8c
	db #e1,#18,#c0,#d2,#8b,#e1,#41,#c1
	db #d1,#8c,#e1,#18,#c0,#d2,#8b,#e1
	db #41,#d3,#8c,#c2,#e3,#15,#c0,#d2
	db #8b,#e1,#41,#41,#c1,#d1,#8c,#e1
	db #18,#c0,#d2,#8b,#e1,#41,#41,#41
	db #d3,#8c,#c2,#e3,#15,#c0,#d2,#8b
	db #e1,#41,#d3,#8c,#c2,#15,#c1,#d1
	db #8c,#e1,#18,#c0,#d2,#8b,#e1,#41
	db #c1,#d1,#8c,#e1,#18,#c0,#d2,#8b
	db #e1,#41,#d3,#8c,#c2,#e3,#15,#c0
	db #d2,#8b,#e1,#41,#d3,#8c,#c2,#15
	db #c1,#d1,#8c,#e1,#18,#c0,#d2,#8b
	db #e1,#41,#41,#41,#d3,#8c,#c2,#e3
	db #15,#c0,#d2,#8b,#e1,#41,#41,#c1
	db #d1,#8c,#e1,#18,#c0,#d2,#8b,#e1
	db #41,#d3,#8c,#c2,#e3,#13,#10,#e1
	db #0e,#0c,#87
.l774d
	db #d0,#c0,#e7,#1e,#21,#e3,#23,#e7
	db #1c,#e3,#1e,#80,#1e,#e7,#21,#e3
	db #23,#23,#1c,#1e,#e7,#1c,#1e,#e3
	db #21,#e7,#23,#84,#01,#37,#ff,#1c
	db #e3,#8f,#87
.l7770
	db #8a,#81,#90,#d5,#c3,#fb,#36,#e3
	db #36,#c4,#fb,#39,#e3,#39,#c3,#fb
	db #3b,#e3,#3b,#c4,#fb,#39,#e3,#39
	db #87
.l7789
	db #d6,#e1,#1e,#1e,#e3,#1e,#1e,#1e
	db #1e,#e1,#1c,#e3,#1e,#e1,#1c,#e3
	db #1e,#e1,#1c,#1c,#e3,#1c,#1c,#1c
	db #1c,#e1,#1a,#e3,#1c,#e1,#1a,#e3
	db #1c,#e1,#23,#23,#e3,#23,#23,#23
	db #23,#e1,#21,#e3,#23,#e1,#21,#e3
	db #23,#e1,#21,#21,#e3,#21,#21,#21
	db #21,#e1,#1f,#e3,#1f,#e1,#1f,#e3
	db #1f,#87
.l77cb
	db #e1,#1e,#1e,#e3,#1e,#1e,#1e,#1e
	db #e1,#1c,#e3,#1e,#e1,#1c,#e3,#1e
	db #87
.l77dc
	db #c0,#88,#01,#01,#82,#91,#d7,#eb
	db #39,#38,#e7,#39,#eb,#3b,#39,#e7
	db #38,#e3,#34,#ff,#36,#ef,#8f,#eb
	db #85,#8f,#87
	
.lc5c0
	dw lc600
	db #02,#00,#11
	dw lc600
	db #02,#00,#08
	dw lc75b
	db #02,#00,#08
	dw lc77e
	dw #0000
.lc5d3
	dw lc63a,lc63a
	db #02,#00,#04
	dw lc6d4,lc6d7,lc6d7,lc6fa
	dw lc6fa,lc629,lc76d,lc76d
	dw #0000
.lc5ec
	dw lc629,lc629
	db #02,#00,#05
	dw lc64e
	db #02,#00,#08
	dw lc739,lc63a,lc63a,#0000
.lc600
	db #8a,#d9,#81,#91,#c6,#e1,#39,#39
	db #e3,#39,#39,#e1,#39,#c7,#e3,#3b
	db #3b,#e1,#3b,#c6,#e3,#39,#39,#c8
	db #e1,#38,#38,#e3,#38,#38,#e1,#38
	db #e3,#38,#38,#e1,#38,#e3,#38,#38
	db #87
.lc629
	db #d8,#8a,#88,#01,#01,#c0,#83,#ff
	db #21,#8f,#1e,#8f,#1a,#8f,#1c,#8f
	db #87
.lc63a
	db #d8,#8a,#88,#01,#01,#c0,#83,#e3
	db #80,#ff,#28,#8f,#25,#8f,#2d,#8f
	db #2f,#fb,#8f,#87
.lc64e
	db #8a,#88,#01,#01,#82,#90,#d9,#c0
	db #e3,#21,#e1,#21,#21,#d3,#8c,#c2
	db #e3,#15,#c0,#8a,#d9,#e1,#1c,#1c
	db #e3,#21,#e1,#21,#21,#d3,#8c,#c2
	db #e3,#15,#c0,#8a,#d9,#e1,#1a,#1c
	db #e3,#1e,#e1,#1e,#1e,#d3,#8c,#c2
	db #e3,#15,#c0,#8a,#d9,#e1,#19,#19
	db #e3,#1e,#e1,#1e,#1e,#d3,#8c,#c2
	db #e3,#15,#c0,#8a,#d9,#e1,#17,#19
	db #e3,#1a,#e1,#1a,#1a,#d3,#8c,#c2
	db #e3,#15,#c0,#8a,#d9,#e1,#15,#15
	db #e3,#1a,#e1,#1a,#1a,#d3,#8c,#c2
	db #e3,#15,#c0,#8a,#d9,#e1,#13,#15
	db #e3,#1c,#e1,#1c,#1c,#d3,#8c,#c2
	db #e3,#15,#c0,#8a,#d9,#e1,#15,#17
	db #e3,#1c,#e1,#1c,#1c,#d3,#8c,#c2
	db #e3,#15,#e1,#15,#15,#87
.lc6d4
	db #ff,#80,#87
.lc6d7
	db #d0,#88,#01,#01,#e1,#81,#2f,#31
	db #34,#31,#34,#36,#34,#36,#39,#36
	db #39,#3b,#39,#3b,#e3,#3d,#82,#ff
	db #3d,#ef,#3b,#3d,#e7,#39,#e3,#38
	db #f3,#34,#87
.lc6fa
	db #d0,#81,#e1,#3d,#40,#3d,#3b,#82
	db #f3,#3d,#81,#e1,#39,#3b,#3d,#40
	db #3d,#3b,#82,#f3,#3d,#e1,#39,#3b
	db #ef,#3d,#40,#e0,#81,#d2,#3d,#3b
	db #39,#3b,#39,#36,#39,#36,#34,#36
	db #34,#31,#34,#31,#2f,#31,#2f,#2d
	db #2f,#2d,#2a,#2d,#2a,#28,#2a,#28
	db #25,#28,#25,#23,#80,#80,#87
.lc739
	db #c1,#d1,#8c,#e5,#18,#e0,#18,#18
	db #d3,#8c,#c2,#e5,#15,#c1,#d1,#8c
	db #e1,#18,#e3,#18,#e1,#18,#18,#d3
	db #8c,#c2,#e3,#15,#c1,#d1,#8c,#e3
	db #18,#87
.lc75b
	db #c6,#e1,#39,#39,#e3,#39,#39,#e1
	db #39,#e3,#39,#39,#e1,#39,#e3,#39
	db #39,#87
.lc76d
	db #d8,#8a,#88,#01,#01,#c0,#83,#ff
	db #23,#8f,#1e,#8f,#21,#8f,#1c,#8f
	db #87
.lc77e
	db #c9,#81,#da,#ff,#31,#8f,#87
.lc785
	db #8a,#d9,#81,#91,#ca,#e1,#38,#38
	db #e3,#38,#38,#e1,#38,#e3,#38,#38
	db #e1,#38,#e3,#38,#38,#87
.lc79b
	db #8a,#88,#01,#01,#82,#90,#d9,#c0
	db #e1,#1b,#1b,#27,#1b,#1b,#27,#1b
	db #1b,#87
.lc7ad
	db #81,#c1,#d1,#8c,#e1,#18,#8a,#d2
	db #c5,#3f,#d3,#8c,#c2,#e1,#15,#8a
	db #d2,#c5,#3f,#c1,#d1,#8c,#e1,#18
	db #18,#d3,#8c,#c2,#e1,#15,#8a,#d2
	db #c5,#3f,#87
.lc7d0
	db #c1,#d1,#8c,#e3,#18,#d3,#8c,#c2
	db #e3,#15,#c1,#d1,#8c,#e1,#18,#e0
	db #18,#18,#d3,#8c,#c2,#e1,#15,#15
	db #8e
.lc7e9
	db #e3,#38,#38,#e1,#38,#e0,#38,#38
	db #e1,#38,#38,#8e
;
;ld c,a
;ld a,(#1998)
;cp #c0
;ret nz
;push bc
;inc a
;ld (#1a40),a
;ei
;halt
;
.music_info
	db "Robocop (1987)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
