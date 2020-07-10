; Music of Fast Food Dizzy (1989)(Codemasters)(The Oliver Twins)()
; Ripped by Megachur the 16/02/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FASTFOOD.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 16
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #9b92
FIRST_THEME				equ 0
LAST_THEME				equ 5

	read "music_header.asm"

;
.init_music
;
	push af
	call l9ddc
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,la868
	add hl,bc
	ld a,(hl)
	ld (l9c80),a
	ld (la0f2),a
	inc hl
	ld ix,l9bff
	ld c,#22
	ld a,#03
.l9bb3
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#20),b
	ld hl,la1dc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
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
	jr nz,l9bb3
	ld (la00c),a
	dec a
	ld (la0f3),a
	ld (la0ed),a
	ret
.l9bff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l9c21
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l9c43
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(la0ed)
	ld hl,la0ee
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call la42b
	ld a,(la0ed)
	and a
	jr z,l9ccb
.l9c7b equ $ + 1
	ld a,#00
	ld (l9cc7),a
.l9c80 equ $ + 1
	ld a,#01
	ld hl,la0f3
	add (hl)
	ld (hl),a
	jr nc,l9c9f
	ld b,#00
	ld ix,l9bff
	call l9f02
	ld ix,l9c21
	call l9f02
	ld ix,l9c43
	call l9f02
.l9c9f
	ld ix,l9bff
	call l9fd9
	ld (la0f4),hl
	ld (la0fc),a
	ld ix,l9c21
	call l9fd9
	ld (la0f6),hl
	ld (la0fd),a
	ld ix,l9c43
	call l9fd9
	ld (la0f8),hl
	ld (la0fe),a
.l9cc7 equ $ + 1
	ld a,#00
	ld (la0fa),a
.l9ccb
	ld a,(la0ed)
	and a
	jr nz,l9ce1
	ld (la0fc),a
	ld (la0fd),a
	ld (la0fe),a
	ld a,#3f
	ld (la0fb),a
	jr l9d09
.l9ce1
	ld a,(la0f1)
	and #0f
	xor #0f
	jr z,l9d09
	ld b,a
	ld a,(la0fc)
	sub b
	jr nc,l9cf2
	xor a
.l9cf2
	ld (la0fc),a
	ld a,(la0fd)
	sub b
	jr nc,l9cfc
	xor a
.l9cfc
	ld (la0fd),a
	ld a,(la0fe)
	sub b
	jr nc,l9d06
	xor a
.l9d06
	ld (la0fe),a
.l9d0a equ $ + 1
.l9d09
	ld a,#00
	xor #ff
	ld (l9d0a),a
	ld a,(la0ee)
	and a
	jr z,l9d38
	ld hl,(la101)
	ld (la0f4),hl
	ld a,(la810)
	ld b,a
	bit 3,a
	jr nz,l9d2a
	ld a,(la107)
	ld (la0fa),a
.l9d2a
	ld hl,la0fb
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(la109)
	ld (la0fc),a
.l9d38
	ld a,(la0ef)
	and a
	jr z,l9d62
	ld hl,(la103)
	ld (la0f6),hl
	ld a,(la825)
	ld b,a
	bit 3,a
	jr nz,l9d52
	ld a,(la107)
	ld (la0fa),a
.l9d52
	ld hl,la0fb
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(la10a)
	ld (la0fd),a
.l9d62
	ld a,(la0f0)
	and a
	jr z,l9d8e
	ld hl,(la105)
	ld (la0f8),hl
	ld a,(la83a)
	ld b,a
	bit 3,a
	jr nz,l9d7c
	ld a,(la107)
.l9d7b equ $ + 2
	ld (la0fa),a
.l9d7c
	ld hl,la0fb
	ld a,(hl)
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(la10b)
	ld (la0fe),a
.l9d8e
	ld hl,la0fe
	ld d,#0a
.l9d93
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
	jp p,l9d93
	ret
.l9db4
	ld de,#0d00	;#0a00
.l9db7
	call l9dc1
	dec d
	jp p,l9db7
	ld de,#073f
.l9dc1
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
	ret
;
.stop_music
.l9ddc
;
	xor a
	ld (la0ed),a
	call l9dee
	xor a
	ld (la0fc),a
	ld (la0fd),a
	ld (la0fe),a
	ret
.l9dee
	xor a
	ld (la0ee),a
	ld (la0ef),a
	ld (la0f0),a
	jp l9db4
	db #f1,#d5,#ce,#d8,#9b,#e0,#db,#32
	db #bb,#ac,#71,#5b,#83,#de,#27,#eb
	db #ec,#f1,#aa,#0a,#01
	ld a,(de)
	inc de
	ld (l9c80),a
	jp l9f10
	ld a,(de)
	ld (ix+#03),a
	ld l,a
	inc de
	ld a,(de)
	ld (ix+#04),a
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	jp l9f10
	pop hl
	jp l9ddc
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l9e56
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l9e56
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l9f10
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,la0b8
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l9f10
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,la0b8
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l9f10
	ld hl,la0b8
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l9f10
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l9f10
	ld a,(de)
	inc de
	ld (la00c),a
	jr l9f10
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l9f10
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l9f10
	ld (ix+#1d),b
	jr l9f10
	ld (ix+#1d),#c0
	jr l9f10
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l9f10
	set 1,(ix+#00)
	jr l9f10
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l9f3f
	jr l9f3b
	ld (ix+#1f),#ff
	jr l9f10
	ld (ix+#1f),b
	jr l9f10
.l9f02
	dec (ix+#10)
	jr nz,l9f7d
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l9f10
	ld a,(de)
	inc de
	and a
	jp m,l9f8e
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l9f22
	ld (l9c7b),a
.l9f22
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.l9f3b
	set 5,(ix+#00)
.l9f3f
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l9f7c
	ld a,(la0ee)
	and a
	jr z,l9f5e
	ld a,(la810)
	bit 3,a
	jr z,l9f7c
.l9f5e
	ld a,(la0ef)
	and a
	jr z,l9f6b
	ld a,(la825)
	bit 3,a
	jr z,l9f7c
.l9f6b
	ld a,(la0f0)
	and a
	jr z,l9f78
	ld a,(la83a)
	bit 3,a
	jr z,l9f7c
.l9f78
	ld (ix+#1f),#ff
.l9f7c
	ret
.l9f7d
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l9f8a
	inc (ix+#12)
	ret
.l9f8a
	dec (ix+#12)
	ret
.l9f8e
	cp #c0
	jr c,l9fd1
	add #20
	jr c,l9fb2
	add #10
	jr c,l9fb9
	add #10
	ld c,a
	ld hl,la1cd
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l9f10
.l9fb2
	inc a
	ld (ix+#11),a
	jp l9f10
.l9fb9
	ld hl,la207
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
	jp l9f10
.l9fd1
	ld hl,l9d7b
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l9fd9
	ld c,(ix+#00)
	bit 5,c
	jr z,la00b
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,la005
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,la005
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.la005
	ld a,(ix+#18)
	ld (ix+#13),a
.la00c equ $ + 1
.la00b
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,la028
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.la028
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,la10d
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,la089
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,la052
	bit 0,c
	jr nz,la070
.la052
	bit 5,l
	jr nz,la062
	sub (ix+#1b)
	jr nc,la06d
	set 5,(ix+#1d)
	sub a
	jr la06d
.la062
	add (ix+#1b)
	cp b
	jr c,la06d
	res 5,(ix+#1d)
	ld a,b
.la06d
	ld (ix+#1c),a
.la070
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,la07b
	dec d
.la07b
	add #a0
	jr c,la087
.la07f
	sla e
	rl d
	add #18
	jr nc,la07f
.la087
	add hl,de
	ex de,hl
.la089
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,la0b4
	ld b,(ix+#0e)
	djnz la0b1
	ld c,(ix+#0d)
	bit 7,c
	jr z,la0a0
	dec b
.la0a0
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr la0b4
.la0b1
	ld (ix+#0e),b
.la0b4
	cpl
	and #03
.la0b8 equ $ + 1
	ld a,#38
	jr nz,la0c5
	ld a,(l9c7b)
	xor #08
	ld (l9cc7),a
	ld a,#07
.la0c5
	ld hl,la0fb
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,la0e8
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l9cc7),a
.la0e8
	ex de,hl
	ld a,(ix+#13)
	ret
.la0f4 equ $ + 7
.la0f3 equ $ + 6
.la0f2 equ $ + 5
.la0f1 equ $ + 4
.la0f0 equ $ + 3
.la0ef equ $ + 2
.la0ee equ $ + 1
.la0ed
.music_end
	db #00,#00,#00,#00,#0f,#00,#00,#00
.la0fc equ $ + 7
.la0fb equ $ + 6
.la0fa equ $ + 5
.la0f8 equ $ + 3
.la0f6 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#3f,#0f
.la104 equ $ + 7
.la103 equ $ + 6
.la102 equ $ + 5
.la101 equ $ + 4
.la0fe equ $ + 1
.la0fd
	db #0f,#0f,#00,#00,#00,#00,#00,#00
.la10b equ $ + 6
.la10a equ $ + 5
.la109 equ $ + 4
.la107 equ $ + 2
.la106 equ $ + 1
.la105
	db #00,#00,#00,#3f,#00,#00,#00,#00
.la10d
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
.la1cd
	db #0f,#0f,#11,#13,#15,#17,#19,#1b
.la1dc equ $ + 7
	db #1d,#1f,#20,#21,#22,#23,#24,#80
	db #00,#03,#87,#00,#04,#87,#04,#07
	db #8a,#04,#07,#8b,#07,#0c,#8f,#07
	db #0c,#90,#03,#07,#8c,#04,#07,#8c
	db #00,#8c,#00,#83,#00,#84,#00,#85
	db #00,#87,#0c,#00,#00,#00,#00,#00
	db #00,#80
.la207
	dw la226,la22e,la235,la247
	dw la256,la25d,la26d,la281
	dw la2aa,la2bb,la2d4,la2e4
	dw la2f5,la2fe,la301
.la226 equ $ + 1
	db #01,#0f,#0d,#0c,#0a,#08,#06,#87
.la22e equ $ + 1
	db #01,#0d,#0b,#07,#03,#01,#87,#01
.la235
	db #0f,#0e,#0c,#0b,#0d,#0c,#0a,#09
	db #0b,#0a,#08,#07,#09,#08,#06,#05
.la247 equ $ + 2
	db #87,#01,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#87
.la256 equ $ + 1
	db #01,#0f,#0d,#0c,#0b,#0a,#87,#01
.la25d
	db #0d,#0e,#0f,#0e,#0d,#0a,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#01
.la26d
	db #0d,#0c,#0b,#0a,#09,#01,#08,#01
	db #07,#01,#06,#01,#05,#01,#04,#01
.la281 equ $ + 4
	db #02,#01,#87,#08,#04,#06,#07,#08
	db #09,#0a,#0b,#0c,#0d,#0e,#0f,#0f
	db #0e,#0e,#0e,#0e,#0d,#0d,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0a,#0a
	db #0a,#0a,#09,#09,#09,#09,#08,#08
.la2aa equ $ + 5
	db #08,#07,#06,#87,#05,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.la2bb equ $ + 6
	db #04,#03,#02,#01,#87,#01,#09,#0b
	db #0d,#0e,#0e,#0e,#0e,#0e,#0d,#0d
	db #0c,#0c,#0c,#0c,#0b,#0b,#0b,#0b
.la2d4 equ $ + 7
	db #0a,#0a,#0a,#0a,#09,#87,#04,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.la2e4 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#02,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#03
.la2f5
	db #0d,#0d,#0c,#0b,#0a,#09,#08,#87
.la301 equ $ + 4
.la2fe equ $ + 1
	db #01,#0d,#87,#01,#0d,#0c,#0a,#09
	db #0b,#0a,#08,#07,#09,#08,#06,#05
	db #87

	ld hl,la317
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.la317
	inc bc
	ld e,l
	or a
	ld hl,la0ee
	ld (hl),#00
	ld hl,la657
	add a
	add l
	ld l,a
	jr nc,la328
	inc h
.la328
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,la80a
.la330
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz la330
	ld a,(la80b)
	ld (la818),a
	ld hl,(la80c)
	ld (la101),hl
	ld a,(la810)
	bit 3,a
	jr nz,la34d
	ld a,l
	ld (la107),a
.la34d
	ld a,(la815)
	ld (la819),a
	ld a,(la817)
	ld (la81e),a
	ld a,(la814)
	ld hl,la767
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la81a),hl
	ld (la81c),hl
	ld a,(hl)
	ld (la109),a
	ld hl,la0ee
	inc (hl)
	ret
	ld hl,la0ef
	ld (hl),#00
	ld hl,la657
	add a
	add l
	ld l,a
	jr nc,la383
	inc h
.la383
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,la81f
.la38b
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz la38b
	ld a,(la820)
	ld (la82d),a
	ld hl,(la821)
	ld (la103),hl
	ld a,(la825)
	bit 3,a
	jr nz,la3a8
	ld a,l
	ld (la107),a
.la3a8
	ld a,(la82a)
	ld (la82e),a
	ld a,(la82c)
	ld (la833),a
	ld a,(la829)
	ld hl,la767
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la82f),hl
	ld (la831),hl
	ld a,(hl)
	ld (la10a),a
	ld hl,la0ef
	inc (hl)
	ret
	ld hl,la0f0
	ld (hl),#00
	ld hl,la657
	add a
	add l
	ld l,a
	jr nc,la3de
	inc h
.la3de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,la834
.la3e6
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz la3e6
	ld a,(la835)
	ld (la842),a
	ld hl,(la836)
	ld (la105),hl
	ld a,(la83a)
	bit 3,a
	jr nz,la403
	ld a,l
	ld (la107),a
.la403
	ld a,(la83f)
	ld (la843),a
	ld a,(la841)
	ld (la848),a
	ld a,(la83e)
	ld hl,la767
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (la844),hl
	ld (la846),hl
	ld a,(hl)
	ld (la10b),a
	ld hl,la0f0
	inc (hl)
	ret
.la42b
	call la849
	ld a,(la0ee)
	and a
	call nz,la4f3
	ld a,(la0ef)
	and a
	call nz,la5a5
	ld a,(la0f0)
	and a
	ret z
	ld a,(la834)
	and a
	jr nz,la451
	ld a,(la840)
	and a
	jr nz,la451
	ld (la0f0),a
	ret
.la451
	dec a
	ld (la834),a
	ld a,(la842)
	and a
	jr nz,la489
	ld a,(la840)
	and a
	jr nz,la467
	ld a,(la83d)
	and a
	jr z,la4cb
.la467
	dec a
	ld (la83d),a
	ld a,(la835)
	ld (la842),a
	ld a,(la83b)
	and a
	jr z,la47a
	ld a,(la866)
.la47a
	ld b,a
	ld a,(la836)
	add b
	ld (la105),a
	ld a,(la837)
	add b
	ld (la106),a
.la489
	ld hl,la842
	dec (hl)
	ld hl,la841
	ld a,(hl)
	and a
	jr z,la49b
	ld hl,la848
	dec (hl)
	jr nz,la4be
	ld (hl),a
.la49b
	ld a,(la83c)
	and a
	jr z,la4be
	jp p,la4b1
	ld hl,(la105)
	ld de,(la838)
	add hl,de
	ld (la105),hl
	jr la4be
.la4b1
	ld hl,(la105)
	ld de,(la838)
	and a
	sbc hl,de
	ld (la105),hl
.la4be
	ld a,(la83a)
	bit 3,a
	jr nz,la4cb
	ld a,(la105)
	ld (la107),a
.la4cb
	ld a,(la843)
	dec a
	ld (la843),a
	jr nz,la4f2
	ld a,(la83f)
	ld (la843),a
	ld hl,(la846)
	ld a,(hl)
	inc hl
	and a
	jp p,la4ec
	cp #80
	jr nz,la4f2
	ld hl,(la844)
	ld a,(hl)
	inc hl
.la4ec
	ld (la846),hl
	ld (la10b),a
.la4f2
	ret
.la4f3
	ld a,(la80a)
	and a
	jr nz,la503
	ld a,(la816)
	and a
	jr nz,la503
	ld (la0ee),a
	ret
.la503
	dec a
	ld (la80a),a
	ld a,(la818)
	and a
	jr nz,la53b
	ld a,(la816)
	and a
	jr nz,la519
	ld a,(la813)
	and a
	jr z,la57d
.la519
	dec a
	ld (la813),a
	ld a,(la80b)
	ld (la818),a
	ld a,(la811)
	and a
	jr z,la52c
	ld a,(la864)
.la52c
	ld b,a
	ld a,(la80c)
	add b
	ld (la101),a
	ld a,(la80d)
	add b
	ld (la102),a
.la53b
	ld hl,la818
	dec (hl)
	ld hl,la817
	ld a,(hl)
	and a
	jr z,la54d
	ld hl,la81e
	dec (hl)
	jr nz,la570
	ld (hl),a
.la54d
	ld a,(la812)
	and a
	jr z,la570
	jp p,la563
	ld hl,(la101)
	ld de,(la80e)
	add hl,de
	ld (la101),hl
	jr la570
.la563
	ld hl,(la101)
	ld de,(la80e)
	and a
	sbc hl,de
	ld (la101),hl
.la570
	ld a,(la810)
	bit 3,a
	jr nz,la57d
	ld a,(la101)
	ld (la107),a
.la57d
	ld a,(la819)
	dec a
	ld (la819),a
	jr nz,la5a4
	ld a,(la815)
	ld (la819),a
	ld hl,(la81c)
	ld a,(hl)
	inc hl
	and a
	jp p,la59e
	cp #80
	jr nz,la5a4
	ld hl,(la81a)
	ld a,(hl)
	inc hl
.la59e
	ld (la81c),hl
	ld (la109),a
.la5a4
	ret
.la5a5
	ld a,(la81f)
	and a
	jr nz,la5b5
	ld a,(la82b)
	and a
	jr nz,la5b5
	ld (la0ef),a
	ret
.la5b5
	dec a
	ld (la81f),a
	ld a,(la82d)
	and a
	jr nz,la5ed
	ld a,(la82b)
	and a
	jr nz,la5cb
	ld a,(la828)
	and a
	jr z,la62f
.la5cb
	dec a
	ld (la828),a
	ld a,(la820)
	ld (la82d),a
	ld a,(la826)
	and a
	jr z,la5de
	ld a,(la865)
.la5de
	ld b,a
	ld a,(la821)
	add b
	ld (la103),a
	ld a,(la822)
	add b
	ld (la104),a
.la5ed
	ld hl,la82d
	dec (hl)
	ld hl,la82c
	ld a,(hl)
	and a
	jr z,la5ff
	ld hl,la833
	dec (hl)
	jr nz,la622
	ld (hl),a
.la5ff
	ld a,(la827)
	and a
	jr z,la622
	jp p,la615
	ld hl,(la103)
	ld de,(la823)
	add hl,de
	ld (la103),hl
	jr la622
.la615
	ld hl,(la103)
	ld de,(la823)
	and a
	sbc hl,de
	ld (la103),hl
.la622
	ld a,(la825)
	bit 3,a
	jr nz,la62f
	ld a,(la103)
	ld (la107),a
.la62f
	ld a,(la82e)
	dec a
	ld (la82e),a
	jr nz,la656
	ld a,(la82a)
	ld (la82e),a
	ld hl,(la831)
	ld a,(hl)
	inc hl
	and a
	jp p,la650
	cp #80
	jr nz,la656
	ld hl,(la82f)
	ld a,(hl)
	inc hl
.la650
	ld (la831),hl
	ld (la10a),a
.la656
	ret
.la657
	dw la679,la687,la695,la6a3
	dw la6b1,la6bf,la6cd,la6db
	dw la6e9,la6f7,la705,la713
	dw la721,la72f,la73d,la74b
	dw la759
.la679
	db #0a,#04,#0c,#00,#01,#00,#f7,#01
.la687 equ $ + 6
	db #ff,#63,#05,#01,#00,#00,#0f,#04
	db #50,#00,#08,#00,#fe,#00,#ff,#63
.la695 equ $ + 4
	db #00,#02,#00,#00,#14,#ff,#7f,#01
	db #20,#00,#f6,#00,#01,#ff,#01,#01
.la6a3 equ $ + 2
	db #00,#00,#1e,#02,#93,#00,#0c,#00
	db #fe,#00,#ff,#63,#04,#01,#00,#00
.la6b1
	db #3c,#0a,#2a,#00,#03,#00,#f6,#01
.la6bf equ $ + 6
	db #ff,#0a,#00,#04,#00,#00,#0b,#05
	db #1f,#00,#04,#00,#f6,#00,#01,#0a
.la6cd equ $ + 4
	db #00,#01,#00,#00,#3c,#03,#00,#00
	db #06,#00,#f7,#01,#ff,#63,#00,#03
.la6db equ $ + 2
	db #00,#00,#0e,#63,#a0,#00,#08,#00
	db #fe,#00,#01,#63,#00,#02,#00,#00
.la6e9
	db #14,#06,#01,#02,#c8,#00,#f6,#00
.la6f7 equ $ + 6
	db #ff,#ff,#00,#02,#00,#00,#32,#ff
	db #1f,#00,#01,#00,#f7,#00,#01,#ff
.la705 equ $ + 4
	db #01,#02,#00,#04,#18,#63,#10,#04
	db #08,#00,#fe,#00,#01,#63,#08,#02
.la713 equ $ + 2
	db #00,#00,#19,#04,#30,#00,#10,#00
	db #fe,#00,#ff,#63,#00,#02,#00,#00
.la721
	db #0f,#05,#c0,#00,#30,#00,#fe,#00
.la72f equ $ + 6
	db #01,#63,#00,#02,#00,#00,#0f,#0f
	db #0f,#01,#01,#00,#f6,#00,#01,#00
.la73d equ $ + 4
	db #00,#01,#00,#00,#1e,#ff,#0f,#00
	db #01,#00,#f7,#00,#01,#63,#01,#01
.la74b equ $ + 2
	db #00,#02,#0f,#05,#40,#00,#08,#00
	db #fe,#00,#ff,#63,#08,#01,#00,#00
.la759
	db #19,#04,#18,#00,#08,#00,#fe,#00
	db #ff,#63,#00,#02,#00,#00
.la767
	dw la779,la786,la79f,la7af
	dw la7b7,la7dc,la7e7,la7e9
	dw la7fb
.la779
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
.la786 equ $ + 5
	db #07,#06,#05,#04,#ff,#06,#08,#0a
	db #0b,#0c,#0d,#0e,#0e,#0e,#0d,#0d
	db #0c,#0c,#0b,#0b,#09,#08,#07,#06
.la79f equ $ + 6
	db #05,#04,#03,#02,#01,#ff,#06,#08
	db #0a,#0b,#0c,#0d,#0c,#0b,#0a,#08
.la7af equ $ + 6
	db #06,#04,#03,#02,#01,#ff,#0d,#0b
.la7b7 equ $ + 6
	db #09,#07,#05,#04,#03,#ff,#0f,#0d
	db #0c,#0b,#0a,#0d,#0c,#0b,#0a,#09
	db #0b,#0a,#09,#08,#07,#09,#08,#07
	db #06,#05,#07,#06,#05,#04,#03,#05
	db #04,#03,#02,#01,#03,#02,#01,#02
.la7dc equ $ + 3
	db #01,#00,#ff,#08,#0a,#0c,#0d,#0e
.la7e7 equ $ + 6
	db #0d,#0b,#09,#06,#01,#ff,#0a,#80
.la7e9
	db #0f,#0f,#0e,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.la7fb equ $ + 2
	db #01,#ff,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.la810 equ $ + 7
.la80e equ $ + 5
.la80d equ $ + 4
.la80c equ $ + 3
.la80b equ $ + 2
.la80a equ $ + 1
	db #ff,#00,#00,#00,#00,#00,#00,#00
.la818 equ $ + 7
.la817 equ $ + 6
.la816 equ $ + 5
.la815 equ $ + 4
.la814 equ $ + 3
.la813 equ $ + 2
.la812 equ $ + 1
.la811
	db #00,#00,#00,#00,#00,#00,#00,#00
.la820 equ $ + 7
.la81f equ $ + 6
.la81e equ $ + 5
.la81c equ $ + 3
.la81a equ $ + 1
.la819
	db #00,#00,#00,#00,#00,#00,#00,#00
.la828 equ $ + 7
.la827 equ $ + 6
.la826 equ $ + 5
.la825 equ $ + 4
.la823 equ $ + 2
.la822 equ $ + 1
.la821
	db #00,#00,#00,#00,#00,#00,#00,#00
.la82f equ $ + 6
.la82e equ $ + 5
.la82d equ $ + 4
.la82c equ $ + 3
.la82b equ $ + 2
.la82a equ $ + 1
.la829
	db #00,#00,#00,#00,#00,#00,#00,#00
.la838 equ $ + 7
.la837 equ $ + 6
.la836 equ $ + 5
.la835 equ $ + 4
.la834 equ $ + 3
.la833 equ $ + 2
.la831
	db #00,#00,#00,#00,#00,#00,#00,#00
.la840 equ $ + 7
.la83f equ $ + 6
.la83e equ $ + 5
.la83d equ $ + 4
.la83c equ $ + 3
.la83b equ $ + 2
.la83a equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.la848 equ $ + 7
.la846 equ $ + 5
.la844 equ $ + 3
.la843 equ $ + 2
.la842 equ $ + 1
.la841
	db #00,#00,#00,#00,#00,#00,#00,#00
.la849
	ld a,(la864)
	and #48
	adc #38
	sla a
	sla a
	ld hl,la867
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.la867 equ $ + 3
.la866 equ $ + 2
.la865 equ $ + 1
.la864
	db #ff,#80,#1b,#34
.la868
	db #2a
	dw la8c4,la892,la8d4
	db #28
	dw laa71,laa1f,laabf
	db #3c
	dw lac7d,lac6d,lac87
	db #3c
	dw lacf4,lacf0,lacf8
	db #24
	dw lad42,lad3e,lad50
	db #2a
	dw ladba,ladb6,ladbe
.la892
	dw ladf6,la8e4,la8e4,la8f6
	dw la8f6,la8e4,la8e4,la903
	dw ladf9,la8e4,la8e4,la8f6
	dw la8f6,la8e4,la8e4,la903
	dw ladfc,la8e4,la8e4,la8f6
	dw la8f6,la8e4,la8e4,la903
	dw #0000
.la8c4
	dw la925,la925,la93c,la93c
	dw la925,la925,la950,#0000
.la8d4
	dw la989,la989,la9ad,la9ad
	dw la989,la989,la9cb,#0000
.la8e4
	db #8a,#db,#88,#01,#01,#e3,#11,#0c
	db #11,#0c,#11,#0c,#e1,#11,#0c,#0e
.la8f6 equ $ + 2
	db #10,#87,#e3,#0e,#09,#0e,#09,#0e
.la903 equ $ + 7
	db #09,#e1,#0e,#09,#0a,#0c,#87,#e3
	db #0a,#05,#0a,#05,#0a,#05,#e1,#0a
	db #05,#07,#09,#e3,#0c,#07,#0c,#07
	db #0c,#07,#e1,#0c,#0c,#0e,#10,#e3
	db #11,#0c,#11,#0c,#11,#0c,#e7,#11
.la925 equ $ + 1
	db #87,#8a,#de,#e1,#8f,#e3,#c2,#35
	db #c6,#29,#c8,#29,#c6,#29,#c2,#35
	db #c6,#29,#c8,#29,#e1,#c6,#29,#87
.la93c
	db #8f,#e3,#c7,#32,#c1,#32,#c5,#26
	db #c1,#32,#c7,#32,#c1,#32,#c5,#26
.la950 equ $ + 4
	db #e1,#c1,#32,#87,#8f,#e3,#c8,#2e
	db #c2,#2e,#c6,#22,#c2,#2e,#c8,#2e
	db #c2,#2e,#c6,#22,#e1,#c2,#2e,#8f
	db #e3,#c8,#30,#c2,#30,#c6,#24,#c2
	db #30,#c8,#30,#c2,#30,#c6,#24,#e1
	db #c2,#30,#8f,#e3,#c2,#35,#c6,#29
	db #c8,#29,#c6,#29,#c2,#35,#e1,#c6
.la989 equ $ + 5
	db #29,#e7,#c8,#29,#87,#8a,#d0,#88
	db #01,#01,#e1,#80,#e0,#29,#29,#e1
	db #2d,#e3,#29,#e0,#29,#29,#e1,#2d
	db #e3,#29,#e0,#29,#29,#e1,#2d,#e3
	db #29,#e1,#24,#e0,#26,#26,#e1,#28
.la9ad equ $ + 1
	db #87,#8f,#e0,#26,#26,#e1,#29,#e3
	db #26,#e0,#26,#26,#e1,#29,#e3,#26
	db #e0,#26,#26,#e1,#29,#e3,#26,#e1
.la9cb equ $ + 7
	db #21,#e0,#22,#22,#e1,#24,#87,#8f
	db #e0,#22,#22,#e1,#26,#e3,#22,#e0
	db #22,#22,#e1,#26,#e3,#22,#e0,#22
	db #22,#e1,#26,#e3,#22,#e1,#1d,#e0
	db #1f,#1f,#e1,#21,#8f,#e0,#24,#24
	db #e1,#28,#e3,#24,#e0,#24,#24,#e1
	db #28,#e3,#24,#e0,#24,#24,#e1,#28
	db #e3,#24,#e1,#24,#e0,#26,#26,#e1
	db #28,#e1,#8f,#e0,#29,#29,#e1,#2d
	db #e3,#29,#e0,#29,#29,#e1,#2d,#e3
	db #29,#e0,#35,#35,#e1,#39,#e1,#35
	db #e7,#35,#87
.laa1f
	dw lab25,lab25,lab41,lab41
	dw lab52,lab52,lab41,lab41
	dw lab63,lab74,lab41,lab41
	dw lab52,lab52,lab41,lab41
	dw lab63,lab74,ladf3,lab63
	dw lab74,lab41,lab41,lab52
	dw lab52,lab41,lab41,lab63
	dw lab74,lab41,lab41,lab52
	dw lab52,lab41,lab41,lab63
	dw lab74,ladf6,lab63,lab74
	dw #0000
.laa71
	dw labc4,labc4,lab85,lab85
	dw lab95,lab95,lab85,lab85
	dw laba3,labb1,lab85,lab85
	dw lab95,lab95,lab85,lab85
	dw laba3,labb1,laba3,labb1
	dw lab85,lab85,lab95,lab95
	dw lab85,lab85,laba3,labb1
	dw lab85,lab85,lab95,lab95
	dw lab85,lab85,laba3,labb1
	dw laba3,labb1,#0000
.laabf
	dw labbf,labbf,labe9,labee
	dw lac05,lac08,labe9,labee
	dw lac23,lac29,lac3c,lac3e
	dw lac51,lac56,lac05,lac08
	dw lac51,lac56,lac23,lac29
	dw lac3c,lac3e,lac23,lac29
	dw lac3c,lac3e,labe9,labee
	dw lac05,lac08,labe9,labee
	dw lac23,lac29,lac3c,lac3e
	dw lac51,lac56,lac05,lac08
	dw lac51,lac56,lac23,lac29
	dw lac3c,lac3e,lac23,lac29
	dw lac3c,lac3e,#0000
.lab25
	db #8a,#d2,#88,#01,#01,#e1,#11,#15
	db #0c,#15,#11,#15,#0c,#15,#11,#15
	db #0c,#15,#11,#e0,#0c,#18,#0e,#1a
.lab41 equ $ + 4
	db #10,#1c,#e1,#87,#11,#15,#0c,#18
	db #11,#1d,#0c,#18,#11,#15,#0c,#18
.lab52 equ $ + 5
	db #11,#1c,#0c,#18,#87,#0e,#11,#09
	db #15,#0e,#1a,#09,#15,#0e,#11,#09
.lab63 equ $ + 6
	db #15,#0e,#18,#09,#15,#87,#16,#1a
	db #11,#1d,#16,#22,#11,#1d,#16,#1a
.lab74 equ $ + 7
	db #11,#1d,#16,#22,#11,#1d,#87,#18
	db #1c,#13,#1f,#18,#24,#13,#1f,#18
	db #1c,#13,#1f,#18,#24,#13,#1f,#87
.lab85
	db #de,#e1,#8f,#e3,#c6,#35,#35,#35
	db #35,#c8,#35,#35,#35,#e1,#35,#87
.lab95
	db #8f,#e3,#c1,#32,#32,#32,#32,#c5
.laba3 equ $ + 6
	db #26,#26,#26,#e1,#26,#87,#8f,#e3
	db #c8,#2e,#2e,#2e,#2e,#c2,#3a,#3a
.labb1 equ $ + 4
	db #3a,#e1,#3a,#87,#8f,#e3,#c8,#30
	db #30,#30,#30,#c2,#3c,#3c,#3c,#e1
.labc4 equ $ + 7
.labbf equ $ + 2
	db #3c,#87,#88,#01,#01,#92,#00,#c0
	db #8a,#d0,#e1,#80,#e0,#21,#21,#1f
	db #1f,#21,#21,#1d,#1d,#2d,#2d,#29
	db #29,#24,#24,#1d,#1d,#24,#24,#29
	db #29,#28,#28,#29,#29,#34,#34,#35
.labe9 equ $ + 4
	db #35,#30,#30,#87,#d2,#92,#00,#c0
.labee equ $ + 1
	db #82,#e0,#2d,#2d,#e1,#35,#30,#2d
	db #e0,#2e,#2e,#e1,#2d,#2b,#2d,#e5
	db #29,#e1,#39,#e7,#35,#92,#0c,#87
.lac08 equ $ + 3
.lac05
	db #d0,#92,#00,#e0,#26,#26,#2d,#2d
	db #e1,#2b,#29,#37,#35,#2b,#29,#e0
	db #26,#26,#2d,#2d,#e1,#2b,#29,#37
.lac23 equ $ + 6
	db #35,#37,#39,#92,#0c,#87,#de,#81
.lac29 equ $ + 4
	db #c9,#92,#00,#e0,#29,#26,#22,#2e
	db #29,#26,#32,#2e,#29,#35,#32,#2e
.lac3c equ $ + 7
	db #3a,#35,#32,#2e,#92,#0c,#87,#92
.lac3e equ $ + 1
	db #00,#2b,#28,#24,#30,#2b,#28,#34
	db #30,#2b,#37,#34,#30,#3c,#37,#34
.lac51 equ $ + 4
	db #30,#92,#0c,#87,#d0,#92,#00,#c0
.lac56 equ $ + 1
	db #82,#e0,#30,#30,#e1,#39,#37,#35
	db #e0,#37,#37,#e1,#35,#32,#34,#e5
	db #30,#e1,#3e,#e7,#3c,#92,#0c,#87
.lac6d
	dw lac91,ladf9,lac91,ladfc
	dw lac91,ladf6,laca8,#0000
.lac7d
	dw lacd7,lacd7,lacd7,lacb7
	dw #0000
.lac87
	dw lacd4,lacd4,lacd4,laced
	dw #0000
.lac91
	db #8a,#d2,#88,#01,#01,#e1,#0c,#13
	db #0c,#13,#0c,#13,#0c,#13,#0c,#13
.laca8 equ $ + 7
	db #0c,#13,#0c,#13,#0c,#13,#87,#13
	db #1a,#13,#1a,#13,#1a,#13,#1a,#13
.lacb7 equ $ + 6
	db #1a,#13,#1a,#e7,#13,#8e,#e0,#1f
	db #23,#26,#2b,#2f,#32,#37,#3b,#2b
	db #2f,#32,#37,#3b,#3e,#43,#47,#db
	db #23,#26,#2b,#2f,#32,#37,#3b,#3e
.lacd7 equ $ + 6
.lacd4 equ $ + 3
	db #e7,#43,#87,#88,#01,#01,#8a,#d2
	db #e1,#c0,#24,#28,#24,#2b,#24,#30
	db #24,#34,#c9,#24,#28,#24,#2b,#24
.laced equ $ + 4
	db #30,#24,#34,#87,#ff,#37,#87
.lacf4 equ $ + 4
.lacf0
	dw lacfc,#0000,lad11,#0000
.lacf8
	dw lad31,#0000
.lacfc
	db #8a,#d2,#88,#01,#01,#e1,#13,#1a
	db #13,#1a,#13,#1a,#13,#1a,#13,#1a
.lad11 equ $ + 5
	db #13,#1a,#e7,#13,#8e,#8a,#d2,#c9
	db #e0,#47,#43,#3e,#3b,#37,#32,#2f
	db #2b,#3b,#37,#32,#2f,#2b,#26,#23
	db #1f,#db,#3b,#37,#35,#34,#32,#30
.lad31 equ $ + 5
	db #2f,#2d,#e7,#2b,#87,#88,#01,#01
	db #8a,#d8,#c9,#ef,#2f,#e7,#2b,#db
	db #23,#87
.lad3e
	dw lad54,#0000
.lad42
	dw ladf6,lad7a,ladf3,lad7a
	dw ladf9,lad7a,#0000
.lad50
	dw lada7,#0000
.lad54
	db #8a,#d2,#88,#01,#01,#e1,#18,#e0
	db #18,#e1,#1f,#e0,#1f,#e1,#18,#e0
	db #18,#e1,#1f,#e0,#1f,#e1,#13,#e0
	db #13,#e1,#1a,#e0,#1a,#e1,#13,#e0
.lad7a equ $ + 6
	db #13,#e1,#1a,#e0,#1a,#87,#8a,#d8
	db #81,#e7,#24,#e0,#24,#26,#28,#24
	db #eb,#23,#88,#01,#01,#e7,#28,#e0
	db #28,#29,#2b,#28,#eb,#26,#81,#e7
	db #24,#e0,#24,#26,#28,#24,#eb,#23
	db #82,#e7,#28,#e0,#28,#29,#2b,#28
.lada7 equ $ + 3
	db #eb,#1f,#87,#88,#01,#01,#8a,#d8
	db #e7,#24,#e0,#24,#26,#28,#24,#eb
	db #23,#87
.ladba equ $ + 4
.ladb6
	dw ladc2,#0000,ladd2,#0000
.ladbe
	dw lade2,#0000
.ladc2
	db #8a,#db,#88,#01,#01,#e1,#18,#e0
	db #1c,#18,#e1,#1c,#db,#e7,#28,#8e
.ladd2
	db #8a,#db,#88,#01,#01,#e1,#1f,#e0
	db #24,#1f,#e1,#24,#db,#e7,#2b,#8e
.lade2
	db #8a,#db,#88,#01,#01,#c9,#e1,#24
	db #e0,#28,#24,#e1,#28,#db,#e7,#30
.ladf9 equ $ + 7
.ladf6 equ $ + 4
.ladf3 equ $ + 1
	db #8e,#89,#ff,#87,#89,#00,#87,#89
	db #01,#87
.ladfc
	db #89,#02,#87
;
.music_info
	db "Fast Food Dizzy (1989)(Codemasters)(The Oliver Twins)",0
	db "",0

	read "music_end.asm"
