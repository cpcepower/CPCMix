; Music of International Rugby Simulator (1988)(Codemasters)(David Whittaker)()
; Ripped by Megachur the 15/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "INTERNRS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #5c00
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.init_music	; 4 -> nothing !
;
	push af
	call l5e15
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l64f2
	add hl,bc
	ld a,(hl)
	ld (l5cec),a
	ld (l61ec),a
	inc hl
	ld ix,l5c6d
	ld c,#22
	ld a,#03
.l5c21
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
	ld hl,l616e
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
	jr nz,l5c21
	ld (l5ff7),a
	dec a
	ld (l61ed),a
	ld (l61e9),a
	ret
.l5c6d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l5c8f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l5cb1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(l61e9)
	ld hl,l61ea
	or (hl)
	inc hl
	or (hl)
	ret z
	call l62af
	ld a,(l61e9)
	and a
	jr z,l5d37
.l5ce7 equ $ + 1
	ld a,#00
	ld (l5d33),a
.l5cec equ $ + 1
	ld a,#14
	ld hl,l61ed
	add (hl)
	ld (hl),a
	jr nc,l5d0b
	ld b,#00
	ld ix,l5c6d
	call l5eed
	ld ix,l5c8f
	call l5eed
	ld ix,l5cb1
	call l5eed
.l5d0b
	ld ix,l5c6d
	call l5fc4
	ld (l60d8),hl
	ld (l60e0),a
	ld ix,l5c8f
	call l5fc4
	ld (l60da),hl
	ld (l60e1),a
	ld ix,l5cb1
	call l5fc4
	ld (l60dc),hl
	ld (l60e2),a
.l5d33 equ $ + 1
	ld a,#00
	ld (l60de),a
.l5d37
	ld a,(l61e9)
	and a
	jr nz,l5d4d
	ld (l60e0),a
	ld (l60e1),a
	ld (l60e2),a
	ld a,#3f
	ld (l60df),a
	jr l5d75
.l5d4d
	ld a,(l61e8)
	and #0f
	xor #0f
	jr z,l5d75
	ld b,a
	ld a,(l60e0)
	sub b
	jr nc,l5d5e
	xor a
.l5d5e
	ld (l60e0),a
	ld a,(l60e1)
	sub b
	jr nc,l5d68
	xor a
.l5d68
	ld (l60e1),a
	ld a,(l60e2)
	sub b
	jr nc,l5d72
	xor a
.l5d72
	ld (l60e2),a
.l5d75
	ld a,(l61ea)
	and a
	jr z,l5d9d
	ld hl,(l60e5)
	ld (l60d8),hl
	ld a,(l64c0)
	ld b,a
	bit 3,a
	jr nz,l5d8f
	ld a,(l60eb)
	ld (l60de),a
.l5d8f
	ld hl,l60df
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l60ed)
	ld (l60e0),a
.l5d9d
	ld a,(l61eb)
	and a
	jr z,l5dc7
	ld hl,(l60e7)
	ld (l60da),hl
.l5daa equ $ + 1
	ld a,(l64d5)
	ld b,a
	bit 3,a
	jr nz,l5db7
	ld a,(l60eb)
	ld (l60de),a
.l5db7
	ld hl,l60df
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(l60ee)
	ld (l60e1),a
.l5dc7
	ld hl,l60e2
	ld d,#0a
.l5dcc
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
	jp p,l5dcc
	ret
.l5ded
	ld de,#0a00
.l5df0
	call l5dfa
	dec d
	jp p,l5df0
	ld de,#073f
.l5dfa
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
.l5e15
;
	xor a
	ld (l61e9),a
	call l64ea
	call l5ded
	xor a
	ld (l60e0),a
	ld (l60e1),a
	ld (l60e2),a
	ret
	db #b4,#00,#00,#00,#69,#00,#9e,#10
	db #89,#7a,#4f,#39,#00,#a1,#05,#00
	db #ad,#00,#78
	pop hl
	jp l5e15
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
	jr nz,l5e63
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l5e63
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l5efc
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,l60a3
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l5efc
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l60a3
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l5efc
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l5efc
	ld a,(de)
	inc de
	ld (l5ff7),a
	jr l5efc
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l5efc
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l5efc
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l5efc
	set 1,(ix+#00)
	jr l5efc
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l5f37
	ld (ix+#1f),#ff
	jr l5efc
.l5eed
	dec (ix+#10)
	jp nz,l5f68
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l5efc
	ld a,(de)
	inc de
	and a
	jp m,l5f79
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l5f0e
	ld (l5ce7),a
.l5f0e
	ld a,(ix+#09)
	ld (ix+#0b),a
	ld a,(ix+#0a)
	ld (ix+#0c),a
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
.l5f37
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l5f67
	ld a,(l61ea)
	and a
	jr z,l5f56
	ld a,(l64c0)
	bit 3,a
	jr z,l5f67
.l5f56
	ld a,(l61eb)
	and a
	jr z,l5f63
	ld a,(l64d5)
	bit 3,a
	jr z,l5f67
.l5f63
	ld (ix+#1f),#ff
.l5f67
	ret
.l5f68
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l5f75
	inc (ix+#12)
	ret
.l5f75
	dec (ix+#12)
	ret
.l5f79
	cp #c0
	jr c,l5fbc
	add #20
	jr c,l5f9d
	add #10
	jr c,l5fa4
	add #10
	ld c,a
	ld hl,l616b
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l5efc
.l5f9d
	inc a
	ld (ix+#11),a
	jp l5efc
.l5fa4
	ld hl,l6179
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
	jp l5efc
.l5fbc
	ld hl,l5daa
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l5fc4
	ld c,(ix+#00)
	bit 5,c
	jr z,l5ff6
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l5ff0
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l5ff0
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l5ff0
	ld a,(ix+#18)
	ld (ix+#13),a
.l5ff7 equ $ + 1
.l5ff6
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l6013
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l6013
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l60db
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l6074
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l603d
	bit 0,c
	jr nz,l605b
.l603d
	bit 5,l
	jr nz,l604d
	sub (ix+#1b)
	jr nc,l6058
	set 5,(ix+#1d)
	sub a
	jr l6058
.l604d
	add (ix+#1b)
	cp b
	jr c,l6058
	res 5,(ix+#1d)
	ld a,b
.l6058
	ld (ix+#1c),a
.l605b
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l6066
	dec d
.l6066
	add #a0
	jr c,l6072
.l606a
	sla e
	rl d
	add #18
	jr nc,l606a
.l6072
	add hl,de
	ex de,hl
.l6074
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l609f
	ld b,(ix+#0e)
	djnz l609c
	ld c,(ix+#0d)
	bit 7,c
	jr z,l608b
	dec b
.l608b
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l609f
.l609c
	ld (ix+#0e),b
.l609f
	cpl
	and #03
.l60a3 equ $ + 1
	ld a,#38
	jr nz,l60b0
	ld a,(l5ce7)
	xor #08
	ld (l5d33),a
	ld a,#07
.l60b0
	ld hl,l60df
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l60d3
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l5d33),a
.l60d3
	ex de,hl
	ld a,(ix+#13)
	ret
.l60df equ $ + 7
.l60de equ $ + 6
.l60dc equ $ + 4
.l60db equ $ + 3
.l60da equ $ + 2
.l60d8
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l60e7 equ $ + 7
.l60e6 equ $ + 6
.l60e5 equ $ + 5
.l60e2 equ $ + 2
.l60e1 equ $ + 1
.l60e0
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.l60ee equ $ + 6
.l60ed equ $ + 5
.l60eb equ $ + 3
.l60e8
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
	dw #03f0,#03be,#0384,#0358
	dw #0320,#02f6,#02ca,#02a2
	dw #027c,#0258,#0238,#0216
	dw #01f8,#01df,#01c2,#01ac
	dw #0190,#017b,#0165,#0151
	dw #013e,#012c,#011c,#010b
	dw #00fc,#00ef,#00e1,#00d6
	dw #00c8,#00bd,#00b2,#00a8
	dw #009f,#0096,#008e,#0085
	dw #007e,#0077,#0070,#006b
	dw #0064,#005e,#0059,#0054
	dw #004f,#004b,#0047,#0042
	dw #003f,#003b,#0038,#0035
	dw #0032,#002f,#002c,#002a
	dw #0027,#0025,#0023,#0021
	dw #001f
.l616e equ $ + 3
.l616b
	db #03,#03,#04,#80,#00,#8c,#0c,#00
	db #00,#00,#00,#00,#00,#80
.l6179
	dw l6198,l619d,#0000,#0000
	dw l61aa,#0000,#0000,#0000
	dw l61b1,l61c2,#0000,l61d2
	dw #0000,#0000,l61e3
.l619d equ $ + 6
.l6198 equ $ + 1
	db #01,#0e,#0d,#05,#87,#01,#0e,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#03
.l61aa equ $ + 3
	db #01,#87,#01,#0f,#0e,#0d,#0c,#0b
.l61b1 equ $ + 2
	db #87,#05,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l61c2 equ $ + 3
	db #01,#87,#05,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l61d2 equ $ + 3
	db #01,#87,#02,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.l61e3 equ $ + 4
	db #02,#01,#87,#03,#0f,#0e,#0d,#87
.l61ed equ $ + 6
.l61ec equ $ + 5
.l61eb equ $ + 4
.l61ea equ $ + 3
.l61e9 equ $ + 2
.music_end equ $ + 2
.l61e8 equ $ + 1
	db #00,#0f,#00,#00,#00,#00,#00
	ld hl,l61f7
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l61f7
	ld (bc),a
	ld e,h
	ld hl,l61ea
	ld (hl),#00
	ld hl,l6412
	add a
	add l
	ld l,a
	jr nc,l6207
	inc h
.l6207
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l64ba
.l620f
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l620f
	ld a,(l64bb)
	ld (l64c8),a
	ld hl,(l64bc)
	ld (l60e5),hl
	ld a,(l64c0)
	bit 3,a
	jr nz,l622c
	ld a,l
	ld (l60eb),a
.l622c
	ld a,(l64c5)
	ld (l64c9),a
	ld a,(l64c7)
	ld (l64ce),a
	ld a,(l64c4)
	ld hl,l6472
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l64ca),hl
	ld (l64cc),hl
	ld a,(hl)
	ld (l60ed),a
	ld hl,l61ea
	inc (hl)
	ret
	ld hl,l61eb
	ld (hl),#00
	ld hl,l6412
	add a
	add l
	ld l,a
	jr nc,l6262
	inc h
.l6262
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l64cf
.l626a
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l626a
	ld a,(l64d0)
	ld (l64dd),a
	ld hl,(l64d1)
	ld (l60e7),hl
	ld a,(l64d5)
	bit 3,a
	jr nz,l6287
	ld a,l
	ld (l60eb),a
.l6287
	ld a,(l64da)
	ld (l64de),a
	ld a,(l64dc)
	ld (l64e3),a
	ld a,(l64d9)
	ld hl,l6472
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l64df),hl
	ld (l64e1),hl
	ld a,(hl)
	ld (l60ee),a
	ld hl,l61eb
	inc (hl)
	ret
.l62af
	ld a,(l61ea)
	and a
	call nz,l62be
	ld a,(l61eb)
	and a
	call nz,l6368
	ret
.l62be
	ld a,(l64ba)
	and a
	jr nz,l62ce
	ld a,(l64c6)
	and a
	jr nz,l62ce
	ld (l61ea),a
	ret
.l62ce
	dec a
	ld (l64ba),a
	ld a,(l64c8)
	and a
	jr nz,l62fe
	ld a,(l64c6)
	and a
	jr nz,l62e4
	ld a,(l64c3)
	and a
	jr z,l6340
.l62e4
	dec a
	ld (l64c3),a
	ld a,(l64bb)
	ld (l64c8),a
	ld b,#00
	ld a,(l64bc)
	add b
	ld (l60e5),a
	ld a,(l64bd)
	add b
	ld (l60e6),a
.l62fe
	ld hl,l64c8
	dec (hl)
	ld hl,l64c7
	ld a,(hl)
	and a
	jr z,l6310
	ld hl,l64ce
	dec (hl)
	jr nz,l6333
	ld (hl),a
.l6310
	ld a,(l64c2)
	and a
	jr z,l6333
	jp p,l6326
	ld hl,(l60e5)
	ld de,(l64be)
	add hl,de
	ld (l60e5),hl
	jr l6333
.l6326
	ld hl,(l60e5)
	ld de,(l64be)
	and a
	sbc hl,de
	ld (l60e5),hl
.l6333
	ld a,(l64c0)
	bit 3,a
	jr nz,l6340
	ld a,(l60e5)
	ld (l60eb),a
.l6340
	ld a,(l64c9)
	dec a
	ld (l64c9),a
	jr nz,l6367
	ld a,(l64c5)
	ld (l64c9),a
	ld hl,(l64cc)
	ld a,(hl)
	inc hl
	and a
	jp p,l6361
	cp #80
	jr nz,l6367
	ld hl,(l64ca)
	ld a,(hl)
	inc hl
.l6361
	ld (l64cc),hl
	ld (l60ed),a
.l6367
	ret
.l6368
	ld a,(l64cf)
	and a
	jr nz,l6378
	ld a,(l64db)
	and a
	jr nz,l6378
	ld (l61eb),a
	ret
.l6378
	dec a
	ld (l64cf),a
	ld a,(l64dd)
	and a
	jr nz,l63a8
	ld a,(l64db)
	and a
	jr nz,l638e
	ld a,(l64d8)
	and a
	jr z,l63ea
.l638e
	dec a
	ld (l64d8),a
	ld a,(l64d0)
	ld (l64dd),a
	ld b,#00
	ld a,(l64d1)
	add b
	ld (l60e7),a
	ld a,(l64d2)
	add b
	ld (l60e8),a
.l63a8
	ld hl,l64dd
	dec (hl)
	ld hl,l64dc
	ld a,(hl)
	and a
	jr z,l63ba
	ld hl,l64e3
	dec (hl)
	jr nz,l63dd
	ld (hl),a
.l63ba
	ld a,(l64d7)
	and a
	jr z,l63dd
	jp p,l63d0
	ld hl,(l60e7)
	ld de,(l64d3)
	add hl,de
	ld (l60e7),hl
	jr l63dd
.l63d0
	ld hl,(l60e7)
	ld de,(l64d3)
	and a
	sbc hl,de
	ld (l60e7),hl
.l63dd
	ld a,(l64d5)
	bit 3,a
	jr nz,l63ea
	ld a,(l60e7)
	ld (l60eb),a
.l63ea
	ld a,(l64de)
	dec a
	ld (l64de),a
	jr nz,l6411
	ld a,(l64da)
	ld (l64de),a
	ld hl,(l64e1)
	ld a,(hl)
	inc hl
	and a
	jp p,l640b
	cp #80
	jr nz,l6411
	ld hl,(l64df)
	ld a,(hl)
	inc hl
.l640b
	ld (l64e1),hl
	ld (l60ee),a
.l6411
	ret
.l6412
	dw l641e,l642c,l643a,l6448
	dw l6456,l6464
.l641e
	db #1e,#02,#1a,#00,#03,#00,#fe,#00
.l642c equ $ + 6
	db #01,#63,#03,#01,#00,#00,#c8,#03
	db #08,#00,#01,#00,#f7,#00,#ff,#00
.l643a equ $ + 4
	db #02,#08,#00,#00,#c8,#03,#08,#00
	db #01,#00,#f7,#00,#ff,#00,#06,#02
.l6448 equ $ + 2
	db #ff,#00,#05,#63,#1f,#00,#00,#00
	db #f7,#00,#01,#00,#00,#01,#00,#00
.l6456
	db #06,#03,#91,#00,#15,#00,#f6,#00
.l6464 equ $ + 6
	db #ff,#ff,#01,#01,#00,#00,#0f,#02
	db #25,#00,#01,#00,#fe,#00,#ff,#63
	db #00,#01,#00,#00
.l6472
	dw l6480,l648e,l649a,l64af
	dw #0000,#0000,l64b3
.l6480
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l648e equ $ + 6
	db #05,#04,#03,#02,#01,#ff,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.l649a equ $ + 2
	db #01,#ff,#0a,#0b,#0c,#0e,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.l64af equ $ + 7
	db #06,#05,#05,#04,#04,#03,#ff,#08
.l64b3 equ $ + 3
	db #0a,#0c,#ff,#04,#05,#06,#07,#08
.l64be equ $ + 6
.l64bd equ $ + 5
.l64bc equ $ + 4
.l64bb equ $ + 3
.l64ba equ $ + 2
	db #09,#ff,#00,#00,#00,#00,#00,#00
.l64c7 equ $ + 7
.l64c6 equ $ + 6
.l64c5 equ $ + 5
.l64c4 equ $ + 4
.l64c3 equ $ + 3
.l64c2 equ $ + 2
.l64c0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l64cf equ $ + 7
.l64ce equ $ + 6
.l64cc equ $ + 4
.l64ca equ $ + 2
.l64c9 equ $ + 1
.l64c8
	db #00,#00,#00,#00,#00,#00,#00,#00
.l64d7 equ $ + 7
.l64d5 equ $ + 5
.l64d3 equ $ + 3
.l64d2 equ $ + 2
.l64d1 equ $ + 1
.l64d0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l64df equ $ + 7
.l64de equ $ + 6
.l64dd equ $ + 5
.l64dc equ $ + 4
.l64db equ $ + 3
.l64da equ $ + 2
.l64d9 equ $ + 1
.l64d8
	db #00,#00,#00,#00,#00,#00,#00,#00
.l64e3 equ $ + 3
.l64e1 equ $ + 1
	db #00,#00,#00,#00
	call l64ea
	jp l5ded
.l64ea
	xor a
	ld (l61ea),a
	ld (l61eb),a
	ret
.l64f2
	db #34
	dw l6515,l653b,l653f
	db #3c
	dw l6965,l6967,l6969
	db #34
	dw l69ac,l69ae,l69b0
	db #34
	dw l6a4a,l6a4c,l6a4e
	db #34
	dw l6b0d,l6b0f,l6b11
.l6515
	dw l6543,l656f,l656f,l656f
	dw l656f,l656f,l656f,l656f
	dw l6584,l656f,l656f,l656f
	dw l658d,l65a0,l656f,l656f
	dw l65ef,l6668,#0000
.l653b
	dw l6791,#0000
.l653f
	dw l688e,#0000
.l6543
	db #89,#ff,#8a,#88,#01,#01,#90,#d8
	db #e2,#84,#14,#01,#30,#84,#14,#01
	db #2b,#e1,#84,#14,#01,#30,#84,#14
	db #01,#29,#84,#14,#01,#29,#8b,#d0
	db #e0,#8d,#3f,#8d,#3f,#8d,#3f,#8d
.l656f equ $ + 4
	db #3f,#8a,#d4,#87,#e1,#0c,#e0,#0c
	db #0c,#e1,#18,#e0,#18,#18,#e1,#0c
	db #e0,#0c,#0c,#e1,#18,#e0,#1f,#18
.l6584 equ $ + 1
	db #87,#e1,#13,#13,#eb,#84,#f6,#14
.l658d equ $ + 2
	db #13,#87,#e1,#0c,#e0,#0c,#0c,#0c
	db #0c,#18,#18,#e1,#0c,#e0,#0c,#0c
.l65a0 equ $ + 5
	db #0c,#0c,#18,#18,#87,#e1,#11,#e0
	db #11,#11,#e1,#1d,#e0,#1d,#1d,#e1
	db #11,#e0,#11,#11,#e1,#1d,#e0,#1d
	db #1d,#e1,#15,#e0,#15,#15,#e1,#21
	db #e0,#21,#21,#e1,#15,#e0,#15,#15
	db #e1,#21,#e0,#21,#21,#e1,#0e,#e0
	db #0e,#0e,#e1,#1a,#e0,#1a,#1a,#e1
	db #0e,#e0,#0e,#0e,#e1,#1a,#e0,#1a
	db #1a,#e1,#13,#e0,#1f,#1f,#e1,#13
	db #e0,#1f,#1f,#13,#13,#1f,#1f,#1f
.l65ef equ $ + 4
	db #1f,#13,#1f,#87,#e1,#13,#e0,#13
	db #13,#e1,#1f,#e0,#1f,#1f,#e1,#11
	db #e0,#11,#11,#e1,#1d,#e0,#1d,#1d
	db #e1,#10,#e0,#10,#10,#e1,#1c,#e0
	db #1c,#1c,#e1,#0e,#e0,#0e,#0e,#e1
	db #1a,#e0,#1a,#1a,#e1,#11,#e0,#11
	db #11,#e1,#1d,#e0,#1d,#1d,#e1,#11
	db #e0,#11,#11,#e1,#1d,#e0,#1d,#1d
	db #e1,#15,#e0,#15,#15,#e1,#21,#e0
	db #21,#21,#e1,#15,#e0,#15,#15,#e1
	db #21,#e0,#21,#21,#e1,#16,#e0,#16
	db #16,#e1,#22,#e0,#22,#22,#e1,#16
	db #e0,#16,#16,#e1,#22,#e0,#22,#22
	db #e1,#13,#e0,#13,#13,#e1,#1f,#e0
	db #1f,#1f,#e1,#10,#e0,#10,#10,#e1
.l6668 equ $ + 5
	db #0e,#e0,#0e,#0e,#87,#e1,#11,#e0
	db #11,#11,#e1,#1d,#e0,#1d,#1d,#e1
	db #11,#e0,#11,#11,#e1,#1d,#e0,#1d
	db #1d,#e1,#0c,#e0,#0c,#0c,#e1,#18
	db #e0,#18,#18,#e1,#0c,#e0,#0c,#0c
	db #e1,#18,#e0,#18,#18,#e1,#10,#e0
	db #10,#10,#e1,#17,#e0,#17,#17,#e1
	db #10,#e0,#10,#10,#e1,#17,#e0,#17
	db #17,#e1,#0c,#e0,#0c,#0c,#e1,#18
	db #e0,#18,#18,#e1,#0c,#e0,#18,#18
	db #e1,#0b,#e0,#17,#17,#e1,#13,#e0
	db #13,#13,#e1,#16,#e0,#16,#16,#e1
	db #13,#e0,#13,#13,#e1,#0c,#e0,#0c
	db #0c,#e1,#11,#e0,#11,#11,#e1,#15
	db #e0,#15,#15,#e1,#11,#e0,#11,#11
	db #e1,#15,#e0,#15,#15,#e1,#15,#e0
	db #15,#15,#e1,#21,#e0,#21,#21,#e1
	db #0e,#e0,#0e,#0e,#e1,#1a,#e0,#1a
	db #1a,#e1,#13,#e0,#13,#13,#e1,#1f
	db #e0,#1f,#1f,#13,#13,#1f,#1f,#1f
	db #1f,#13,#1f,#e1,#11,#e0,#11,#11
	db #e1,#1d,#e0,#1d,#1d,#e1,#11,#e0
	db #11,#11,#e1,#1d,#e0,#1d,#1d,#e1
	db #0c,#e0,#0c,#0c,#e1,#18,#e0,#18
	db #18,#e1,#0c,#e0,#0c,#0c,#e1,#18
	db #e0,#18,#18,#e1,#10,#e0,#10,#10
	db #e1,#17,#e0,#17,#17,#e1,#10,#e0
	db #10,#10,#e1,#17,#e0,#17,#17,#e1
	db #15,#e0,#15,#15,#e1,#21,#e0,#21
	db #21,#e1,#15,#e0,#15,#15,#e1,#21
	db #e0,#21,#21,#e1,#15,#e0,#15,#15
	db #e1,#21,#e0,#21,#21,#e1,#15,#e0
	db #15,#15,#e1,#21,#e0,#21,#21,#e1
	db #14,#e0,#14,#14,#e1,#20,#e0,#20
	db #20,#e1,#0e,#e0,#0e,#0e,#e1,#1a
	db #e0,#1a,#1a,#e1,#13,#e0,#13,#13
	db #e1,#1f,#e0,#1f,#1f,#13,#13,#1f
.l6791 equ $ + 6
	db #1f,#1f,#1f,#13,#1f,#87,#8a,#d8
	db #88,#01,#02,#ef,#80,#18,#18,#18
	db #18,#18,#18,#18,#d4,#d4,#e1,#1f
	db #1f,#1f,#c1,#de,#e9,#84,#ff,#01
	db #1f,#88,#01,#01,#d1,#e3,#2b,#e5
	db #28,#e1,#2b,#e3,#28,#e3,#2d,#e5
	db #29,#e1,#2d,#e3,#29,#e3,#2f,#e5
	db #2b,#e1,#2f,#2b,#29,#c0,#de,#e5
	db #29,#e9,#28,#c1,#d1,#e3,#2d,#e1
	db #29,#e3,#30,#e1,#29,#2d,#30,#e3
	db #30,#e1,#2d,#e3,#34,#e1,#2d,#30
	db #34,#e3,#36,#e1,#32,#e3,#2f,#e1
	db #2f,#e3,#2d,#e1,#24,#24,#24,#e9
	db #23,#e3,#2b,#e5,#28,#e1,#2b,#e3
	db #28,#e3,#2d,#e5,#29,#e1,#2d,#e3
	db #29,#e3,#2f,#e5,#2b,#e1,#2f,#2b
	db #29,#c0,#de,#e3,#29,#28,#e1,#26
	db #24,#26,#28,#c1,#d1,#e3,#2d,#e1
	db #29,#e3,#30,#e1,#29,#2d,#30,#e3
	db #30,#e1,#2d,#e3,#34,#e1,#2d,#30
	db #34,#e1,#35,#35,#32,#e3,#2e,#e1
	db #35,#e3,#32,#e1,#35,#35,#32,#e3
	db #2f,#e1,#29,#26,#23,#c2,#d4,#eb
	db #2d,#e3,#2d,#e1,#2b,#e3,#29,#e9
	db #28,#e5,#2c,#28,#e3,#2c,#ef,#2d
	db #c0,#d8,#e5,#26,#2b,#e3,#2b,#e5
	db #29,#2b,#e3,#2d,#e7,#2b,#2a,#e3
	db #29,#24,#e7,#23,#c2,#d4,#eb,#2d
	db #e3,#2d,#e1,#2b,#e3,#29,#e9,#28
	db #e5,#2c,#28,#e3,#2c,#eb,#2d,#c0
	db #c1,#e3,#2d,#e5,#2d,#29,#e3,#2d
	db #e5,#30,#32,#e3,#30,#2f,#2f,#e7
.l688e equ $ + 3
	db #2b,#c0,#87,#8a,#d9,#88,#01,#01
	db #ef,#80,#e5,#28,#30,#e3,#28,#e5
	db #29,#30,#e3,#29,#e5,#2b,#30,#e3
	db #2f,#e5,#2d,#2b,#e3,#29,#e5,#28
	db #30,#e3,#28,#e5,#29,#30,#e3,#29
	db #e5,#2b,#30,#e3,#2f,#d4,#e1,#2b
	db #2b,#e7,#84,#ff,#1e,#2b,#d9,#e1
	db #28,#29,#e5,#2b,#30,#e3,#28,#e5
	db #29,#30,#e3,#2d,#e1,#2f,#30,#e7
	db #32,#e3,#2f,#eb,#2b,#e1,#26,#28
	db #e5,#29,#2d,#e3,#2f,#e5,#30,#2f
	db #e3,#30,#e5,#32,#2f,#e3,#2d,#eb
	db #2b,#e1,#28,#29,#e5,#2b,#30,#e3
	db #28,#e5,#29,#30,#e3,#2d,#e1,#2f
	db #30,#e7,#32,#e3,#2f,#eb,#2b,#e1
	db #26,#28,#e5,#29,#2d,#e3,#2f,#e5
	db #30,#2f,#e3,#30,#e9,#32,#e1,#35
	db #34,#30,#ef,#32,#c2,#db,#eb,#29
	db #e3,#29,#e1,#28,#e3,#26,#e9,#24
	db #e5,#26,#20,#e3,#26,#ef,#24,#c0
	db #d8,#e5,#2e,#32,#e3,#34,#e5,#30
	db #34,#e3,#35,#e1,#34,#32,#e7,#30
	db #e3,#2d,#ef,#32,#c2,#db,#eb,#29
	db #e3,#29,#e1,#28,#e3,#26,#e9,#24
	db #e5,#26,#20,#e3,#26,#eb,#25,#c0
	db #d8,#e3,#31,#e5,#32,#2d,#e3,#32
	db #e5,#33,#35,#e3,#33,#32,#2b,#e7
	db #37,#87
.l6965
	dw l696b
.l6967
	dw l6982
.l6969
	dw l6997
.l696b
	db #89,#01,#8a,#88,#01,#01,#d8,#e3
	db #86,#2b,#db,#37,#e1,#34,#30,#e3
.l6982 equ $ + 7
	db #39,#e1,#3c,#3c,#e7,#3c,#8e,#8a
	db #88,#01,#01,#d8,#e3,#86,#26,#db
	db #34,#e1,#30,#2b,#e3,#35,#e1,#37
.l6997 equ $ + 4
	db #2b,#e7,#37,#8e,#8a,#88,#01,#01
	db #d8,#e3,#86,#23,#db,#30,#e1,#2b
	db #28,#e3,#30,#e1,#34,#34,#e7,#34
	db #8e
.l69ac
	dw l69b2
.l69ae
	dw l6a16
.l69b0
	dw l6a2c
.l69b2
	db #89,#ff,#8a,#88,#01,#01,#90,#d8
	db #e2,#84,#14,#01,#30,#84,#14,#01
	db #2b,#e1,#84,#14,#01,#30,#84,#14
	db #01,#29,#84,#14,#01,#29,#8b,#d0
	db #e0,#8d,#3f,#8d,#3f,#8d,#3f,#8d
	db #3f,#8a,#d4,#e1,#0c,#e0,#0c,#0c
	db #e1,#18,#e0,#18,#18,#e1,#0c,#e0
	db #0c,#0c,#e1,#18,#e0,#1f,#18,#e1
	db #0c,#e0,#0c,#0c,#e1,#18,#e0,#18
	db #18,#e1,#0c,#e0,#0c,#0c,#e1,#18
	db #e0,#1f,#18,#d8,#e1,#0c,#e3,#13
	db #e1,#0c,#e3,#13,#0e,#e1,#0c,#0c
.l6a16 equ $ + 4
	db #0c,#e5,#0c,#8e,#8a,#d8,#88,#01
	db #02,#ef,#80,#18,#18,#db,#e5,#2b
	db #2b,#e3,#29,#e1,#28,#28,#28,#e5
.l6a2c equ $ + 2
	db #28,#8e,#8a,#d9,#88,#01,#01,#ef
	db #80,#e5,#28,#30,#e3,#28,#e5,#29
	db #30,#e3,#29,#e5,#2f,#30,#e3,#32
	db #db,#e1,#30,#30,#30,#e5,#30,#8e
.l6a4a
	dw l6a50
.l6a4c
	dw l6a9e
.l6a4e
	dw l6aee
.l6a50
	db #8a,#88,#01,#01,#d1,#e0,#84,#14
	db #01,#2b,#84,#14,#01,#2b,#84,#14
	db #01,#2b,#84,#14,#01,#2b,#84,#14
	db #01,#26,#84,#14,#01,#26,#84,#14
	db #01,#26,#84,#14,#01,#26,#84,#14
	db #01,#23,#84,#14,#01,#23,#84,#14
	db #01,#23,#84,#14,#01,#23,#84,#14
	db #01,#1d,#84,#14,#01,#1d,#84,#14
	db #01,#1d,#84,#14,#01,#1d,#d4,#e1
.l6a9e equ $ + 6
	db #23,#23,#23,#e5,#23,#8e,#8a,#88
	db #01,#01,#d1,#e0,#92,#01,#84,#14
	db #01,#2b,#84,#14,#01,#2b,#84,#14
	db #01,#2b,#84,#14,#01,#2b,#84,#14
	db #01,#26,#84,#14,#01,#26,#84,#14
	db #01,#26,#84,#14,#01,#26,#84,#14
	db #01,#23,#84,#14,#01,#23,#84,#14
	db #01,#23,#84,#14,#01,#23,#84,#14
	db #01,#1d,#84,#14,#01,#1d,#84,#14
	db #01,#1d,#84,#14,#01,#1d,#d4,#e1
.l6aee equ $ + 6
	db #1a,#1a,#1a,#e5,#1a,#8e,#8b,#88
	db #01,#01,#d0,#e0,#27,#41,#41,#41
	db #27,#41,#41,#41,#27,#41,#41,#41
	db #27,#41,#41,#41,#d4,#8a,#e1,#17
.l6b0f equ $ + 7
.l6b0d equ $ + 5
	db #17,#17,#e5,#17,#8e,#13,#6b,#2d
.l6b11 equ $ + 1
	db #6b,#37,#6b,#8a,#88,#01,#01,#d4
	db #e0,#38,#3a,#36,#3a,#3c,#38,#3a
	db #3c,#3d,#3a,#3d,#41,#3f,#3d,#eb
	db #84,#01,#02,#41,#8e,#8a,#88,#01
	db #01,#d4,#ed,#14,#eb,#0c,#8e,#8a
	db #88,#01,#01,#d4,#ed,#84,#fe,#01
	db #20,#eb,#84,#02,#01,#3d,#8e
;
.music_info
	db "International Rugby Simulator (1988)(Codemasters)(David Whittaker)",0
	db "",0

	read "music_end.asm"
