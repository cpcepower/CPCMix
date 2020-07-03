; Music of Mad Mag Issue 2 Intro (1994)(Ast System)()(COSO)
; Ripped by Megachur the 23/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "MADMAI2I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 23
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #0040

	read "music_header.asm"

.l0040
	jp l0054
	jp l0079
	jp l00e9
.l0049
	jp l004c
.l004c
	ld (l09c2),hl
	ld (l09c4),de
	ret
;
.real_init_music
.l0054
;
	call l0096
	or a
	jr z,l0090
	ld hl,(l09be)
	dec a
	add a
	ld c,a
	add a
	add c
	ld d,#00
	ld e,a
	add hl,de
	inc hl
	ld c,(hl)
	inc hl
	inc hl
	ld b,(hl)
	inc hl
	inc hl
	ld l,(hl)
	ld h,l
	ld (l07d8),hl
	xor a
	ld (l08f2),a
	jp l0628
.l0079
	call l0096
	ld hl,(l09c0)
	add a
	add a
	ld d,#00
	ld e,a
	add hl,de
	inc hl
	ld a,(hl)
	ld (l08d6),a
	inc hl
	inc hl
	ld c,(hl)
	jp l0722
.l0090
	inc a
	ld (l07da),a
	jr l00e9
.l0096
	push af
	ld a,(l08ee)
	or a
	jr nz,l00e7
	ld (l08d7),a
	inc a
	ld (l08ee),a
	ld bc,(l09c2)
	push bc
	pop ix
	ld h,(ix+#06)
	ld l,(ix+#07)
	add hl,bc
.l00b2
	ld (l09b6),hl
	ld h,(ix+#0a)
	ld l,(ix+#0b)
	add hl,bc
	ld (l09b8),hl
	ld h,(ix+#0e)
	ld l,(ix+#0f)
	add hl,bc
	ld (l09ba),hl
	ld h,(ix+#12)
	ld l,(ix+#13)
	add hl,bc
	ld (l09bc),hl
	ld h,(ix+#16)
	ld l,(ix+#17)
	add hl,bc
	ld (l09be),hl
	ld h,(ix+#1a)
	ld l,(ix+#1b)
	add hl,bc
	ld (l09c0),hl
.l00e7
	pop af
	ret
;
.play_music
.l00e9
;
	ld hl,l08ea
	ld a,(hl)
	or a
	jr z,l011a
	inc hl
	dec (hl)
	jp p,l011a
	ld (hl),a
	inc hl
	inc (hl)
	ld (hl),e
	ei
	ret nz
	ld bc,#122e
	ld (hl),#12
	ld (hl),a
	dec hl
	ld (hl),a
	inc a
	ld (l07da),a
	jr l0120
	ld hl,l08d8
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld (l0817),a
	ld (l0855),a
	ld (l0893),a
.l011a
	ld a,(l07da)
	or a
	jr z,l012c
.l0120
	xor a
	ld hl,l07cd
	ld (hl),a
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	jp l01c0
.l012c
	ld hl,l07d8
	dec (hl)
	jr nz,l014b
	inc hl
	ld a,(hl)
	dec hl
	ld (hl),a
	ld ix,l07db
	call l0204
	ld ix,l0819
	call l0204
	ld ix,l0857
	call l0204
.l014b
	ld ix,l07db
	call l0346
	ld (l07cd),a
	ld (l07c5),hl
	ld ix,l0819
	call l0346
	ld (l07ce),a
	ld (l07c7),hl
	ld ix,l0857
	call l0346
	ld (l07cf),a
	ld (l07c9),hl
	ld a,(l08d5)
	or a
	jr z,l01c0
	push af
	ld ix,l0895
	call l0346
	ld (l01b0),hl
	ld (l01be),a
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld e,(ix+#0e)
	ld d,#00
	add hl,de
	ld a,(hl)
	cp #e1
	jr nz,l019b
	xor a
	ld (l08d5),a
.l019b
	pop af
	add a
	ld c,a
	ld b,#00
	ld hl,l07d0
	add hl,bc
	ld b,h
	ld c,l
	ld a,(bc)
	inc bc
	ld d,#00
	ld e,a
	ld hl,l07c5
	add hl,de
.l01b0 equ $ + 1
	ld de,#0000
	ld (hl),e
	inc hl
	ld (hl),d
	ld a,(bc)
	ld hl,l07c5
	ld d,#00
	ld e,a
	add hl,de
.l01be equ $ + 1
	ld a,#00
	ld (hl),a
.l01c0
	ld hl,l08d3
	ld c,(hl)
	ld a,(l08f2)
	or a
	jr z,l01ce
	ld a,c
	or #24
	ld c,a
.l01ce
	ld a,c
	ld (l07cc),a
	inc hl
	ld a,(hl)
	srl a
	ld (l07cb),a
	ld hl,l07cf
	ld d,#0a
	ld a,(l08f2)
	or a
	jr z,l01e6
	dec d
	dec hl
.l01e6
	xor a
.l01e7
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f6c0
	out (c),c
	out (c),a
	ld b,#f4
	out (c),e
	ld bc,#f680
	out (c),c
	out (c),a
	dec hl
	dec d
	jp p,l01e7
	ret
.l0204
	dec (ix+#26)
	ret p
	ld a,(ix+#27)
	ld (ix+#26),a
	ld l,(ix+#22)
	ld h,(ix+#23)
.l0214
	ld a,(hl)
	inc hl
	cp #ff
	jr nz,l028c
	ld l,(ix+#00)
	ld h,(ix+#01)
	dec (ix+#34)
	jr nz,l0234
	ld a,(ix+#35)		; reset music !
	ld (ix+#34),a
	xor a
	ld (ix+#04),a
	ld (ix+#05),a
	jr l023b
.l0234
	ld c,(ix+#04)
	ld b,(ix+#05)
	add hl,bc
.l023b
	ld c,(hl)
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#2c),a
	ld a,(hl)
	inc hl
	ld (ix+#16),a
	ld a,(hl)
	ld b,a
	and #f0
	cp #f0
	jr nz,l0257
	ld a,b
	and #0f
	ld (ix+#28),a
	jr l0261
.l0257
	cp #e0
	jr nz,l0261
	ld a,b
	and #0f
	ld (l07d9),a
.l0261
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld de,#000c
	add hl,de
	ld (ix+#04),l
	ld (ix+#05),h
	ld h,#00
	ld l,c
	ld de,(l09ba)
	add hl,hl
	nop
	add hl,de
	nop
	nop
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l09c2)
	add hl,de
	ld (ix+#22),l
	ld (ix+#23),h
	jr l0214
.l028c
	cp #fe
	jr nz,l029b
	ld a,(hl)
	inc hl
	ld (ix+#26),a
	ld (ix+#27),a
	jp l0214
.l029b
	cp #fd
	jr nz,l02ae
	ld a,(hl)
	inc hl
	ld (ix+#26),a
	ld (ix+#27),a
	ld (ix+#22),l
	ld (ix+#23),h
	ret
.l02ae
	ld (ix+#08),a
	ld a,(hl)
	inc hl
	ld (ix+#09),a
	and #e0
	jr z,l02bf
	ld a,(hl)
	inc hl
	ld (ix+#1f),a
.l02bf
	ld (ix+#22),l
	ld (ix+#23),h
	xor a
	ld (ix+#39),a
	ld (ix+#3a),a
	ld (ix+#3b),a
	ld a,(ix+#08)
	or a
	ret m
	ld a,(ix+#09)
	and #1f
	add (ix+#16)
	ld h,#00
	ld l,a
	ld de,(l09b8)
	add hl,hl
	nop
	add hl,de
	nop
	nop
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l09c2)
	add hl,de
	ld a,(hl)
	inc hl
	ld (ix+#17),a
	ld (ix+#18),a
	ld c,(hl)
	inc hl
	ld a,(hl)
	inc hl
	ld (ix+#1b),a
	ld (ix+#2e),#40
	ld a,(hl)
	inc hl
	ld (ix+#1c),a
	ld (ix+#1d),a
	ld a,(hl)
	inc hl
	ld (ix+#1e),a
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld a,(ix+#09)
	and #40
	jr z,l031f
	ld c,(ix+#1f)
.l031f
	ld h,#00
	ld l,c
	ld de,(l09b6)
	add hl,hl
	nop
	add hl,de
	nop
	nop
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l09c2)
	add hl,de
	ld (ix+#12),l
	ld (ix+#13),h
	xor a
	ld (ix+#30),a
	ld (ix+#1a),a
	ld (ix+#19),a
	ld (ix+#0e),a
	ret
.l0346
	xor a
	ld (ix+#20),a
.l034a
	ld a,(ix+#1a)
	or a
	jr z,l0357
	dec a
	ld (ix+#1a),a
	jp l049a
.l0357
	ld l,(ix+#12)
	ld h,(ix+#13)
	ld e,(ix+#30)
	ld d,#00
	add hl,de
.l0363
	ld a,(hl)
	cp #e1
	jp z,l0497
	cp #e0
	jr nz,l037c
	inc hl
	ld a,(hl)
	and #3f
	ld d,#00
	ld e,a
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld a,(hl)
.l037c
	cp #e2
	jr nz,l038c
	xor a
	ld (ix+#0e),a
	inc a
	ld (ix+#17),a
	inc hl
	inc e
	jr l0363
.l038c
	cp #e9
	jr nz,l03e2
	inc hl
	ld a,(hl)
	srl a
	ld bc,#f40b
	out (c),c
	ld bc,#f6c0
	out (c),c
	ld c,#00
	out (c),c
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	xor a
	out (c),a
	ld bc,#f40c
	out (c),c
	ld bc,#f6c0
	out (c),c
	out (c),a
	ld b,#f4
	out (c),a
	ld bc,#f680
	out (c),c
	out (c),a
	ld bc,#f40d
	out (c),c
	ld bc,#f6c0
	out (c),c
	out (c),a
	ld bc,#f40a
	out (c),c
	ld bc,#f680
	out (c),c
	out (c),a
	inc hl
	inc e
	inc e
	jr l0363
.l03e2
	cp #e7
	jr nz,l0419
	xor a
	ld (l08f2),a
	inc hl
	inc e
	jp l0363
	cp #e7
	jr nz,l0419
	inc hl
	ld a,(hl)
	ld h,#00
	ld d,h
	ld e,l
	ld l,a
	ld bc,(l09b6)
	add hl,hl
	add hl,hl
	add hl,bc
	inc hl
	inc hl
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l09c2)
	add hl,de
	xor a
	ld e,a
	ld d,a
	ld (ix+#30),a
	ld (ix+#12),l
	ld (ix+#13),h
	jp l0363
.l0419
	cp #e8
	jr nz,l042a
	inc hl
	ld a,(hl)
	ld (ix+#1a),a
	inc e
	inc e
	ld (ix+#30),e
	jp l034a
.l042a
	cp #e4
	jr nz,l043c
	xor a
	ld (ix+#2a),a
	inc hl
	ld a,(hl)
	ld (ix+#20),a
	inc hl
	inc e
	inc e
	jr l0492
.l043c
	cp #e5
	jr nz,l044b
	ld (ix+#2a),#01
	inc e
	ld (ix+#30),e
	jp l034a
.l044b
	cp #e6
	jr nz,l0457
	ld (ix+#2a),#02
	inc hl
	inc e
	jr l0492
.l0457
	cp #e3
	jr nz,l046b
	inc e
	inc e
	inc e
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1c),a
	inc hl
	jr l0492
.l046b
	cp #ea
	jr nz,l0492
	inc e
	inc e
	inc e
	ld (ix+#30),e
	inc hl
	ld a,(hl)
	ld h,#00
	ld l,a
	ld de,(l09c4)
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l09c4)
	add hl,de
	ld (l08f4),hl
	ld a,#ff
	ld (l08f2),a
	ret
.l0492
	ld a,(hl)
	ld (ix+#2b),a
	inc e
.l0497
	ld (ix+#30),e
.l049a
	ld a,(ix+#19)
	or a
	jr z,l04a6
	dec a
	ld (ix+#19),a
	jr l04e9
.l04a6
	dec (ix+#17)
	jr nz,l04e9
	ld a,(ix+#18)
	ld (ix+#17),a
.l04b1
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld e,(ix+#0e)
	ld d,#00
	add hl,de
	ld a,(hl)
	cp #e8
	jr nz,l04cf
	inc (ix+#0e)
	inc (ix+#0e)
	inc hl
	ld a,(hl)
	ld (ix+#19),a
	jr l049a
.l04cf
	cp #e1
	jr z,l04e9
	cp #e0
	jr nz,l04e2
	inc hl
	ld a,(hl)
	and #3f
	sub #05
	ld (ix+#0e),a
	jr l04b1
.l04e2
	ld a,(hl)
	ld (ix+#2d),a
	inc (ix+#0e)
.l04e9
	ld a,(ix+#2b)
	or a
	jp m,l04f6
	add (ix+#08)
	add (ix+#2c)
.l04f6
	and #7f
	add a
	ld c,a
	ld d,#00
	ld e,a
	ld hl,l08f6
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,c
	ld (l05b6),a
	ld (l05c1),de
	ld h,#00
	ld l,(ix+#21)
	ld bc,l07b1
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(ix+#2a)
	or a
	jr nz,l052c
	ld a,(l08d3)
	and b
	and d
	ld (l08d3),a
	jr l055c
.l052c
	cp #01
	jr nz,l0554
	ld a,(l08d3)
	or c
	and d
	ld (l08d3),a
	ld a,(ix+#08)
	ld (ix+#20),a
	ld a,(ix+#2b)
	or a
	jp p,l054c
	and #7f
	ld (ix+#20),a
	jr l055c
.l054c
	add (ix+#20)
	ld (ix+#20),a
	jr l055c
.l0554
	ld a,(l08d3)
	and b
	or e
	ld (l08d3),a
.l055c
	ld a,(ix+#20)
	or a
	jr z,l0569
	and #1f
	xor #1f
	ld (l08d4),a
.l0569
	ld a,(ix+#1e)
	or a
	jr z,l0575
	dec a
	ld (ix+#1e),a
	jr l05c6
.l0575
	ld a,(ix+#1c)
	add a
	ld b,a
	ld c,(ix+#1d)
	ld a,(ix+#2e)
	or a
	jp p,l0588
	bit 0,a
	jr nz,l05ab
.l0588
	bit 5,a
	jr nz,l059b
	ld a,c
	sub (ix+#1b)
	ld c,a
	jr nc,l05a8
	set 5,(ix+#2e)
	ld c,#00
	jr l05a8
.l059b
	ld a,c
	add (ix+#1b)
	ld c,a
	cp b
	jr c,l05a8
	res 5,(ix+#2e)
	ld c,b
.l05a8
	ld (ix+#1d),c
.l05ab
	srl b
	ld a,c
	sub b
	ld l,a
	ld h,#00
	jr nc,l05b5
	dec h
.l05b6 equ $ + 1
.l05b5
	ld a,#6a
	add #a0
	jr c,l05c0
.l05bb
	add hl,hl
	add #18
	jr nc,l05bb
.l05c1 equ $ + 1
.l05c0
	ld de,l00b2
	add hl,de
	jr l05c9
.l05c6
	ld hl,(l05c1)
.l05c9
	ld a,(ix+#2e)
	xor #01
	ld (ix+#2e),a
	bit 5,(ix+#09)
	jr z,l0619
	push hl
	ld a,(ix+#1f)
	ld e,a
	ld bc,#0000
	or a
	jp p,l05e5
	dec c
	dec b
.l05e5
	sla e
	rl c
	rl b
	sla e
	rl c
	rl b
	sla e
	rl c
	rl b
	sla e
	rl c
	rl b
	ld a,(ix+#39)
	add e
	ld (ix+#39),a
	jr nc,l0607
	inc bc
.l0607
	ld l,(ix+#3a)
	ld h,(ix+#3b)
	add hl,bc
	ld (ix+#3a),l
	ld (ix+#3b),h
	ex de,hl
	pop hl
	or a
	sbc hl,de
.l0619
	ld a,(ix+#2d)
	sub (ix+#28)
	jp p,l0623
	xor a
.l0623
	srl h
	rr l
	ret
.l0628
	inc b
	ld a,b
	sub c
	ld b,a
	xor a
	ld hl,l08ea
	ld (hl),a
	inc hl
	ld (hl),a
	inc hl
	ld (hl),a
	ld ix,l07db
	xor a
	call l0651
	ld a,#04
	call l0651
	ld a,#08
	call l0651
	ld hl,l07da
	xor a
	ld (hl),a
	dec hl
	ld a,(hl)
	dec hl
	ld (hl),a
	ret
.l0651
	ld hl,l07bd
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld (ix+#12),l
	ld (ix+#13),h
	ld (ix+#21),a
	xor a
	ld (ix+#2d),a
	ld (ix+#08),a
	ld (ix+#09),a
	ld (ix+#30),a
	ld (ix+#31),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#19),a
	ld (ix+#1a),a
	ld (ix+#1b),a
	ld (ix+#1c),a
	ld (ix+#1d),a
	ld (ix+#1e),a
	ld (ix+#1f),a
	ld (ix+#20),a
	ld (ix+#26),a
	ld (ix+#27),a
	ld (ix+#28),a
	ld (ix+#29),a
	ld (ix+#2b),a
	ld (ix+#3c),a
	inc a
	ld (ix+#17),a
	ld (ix+#18),a
	inc a
	ld (ix+#2a),a
	ld a,#0c
	ld (ix+#04),a
	ld (ix+#05),#00
	ld hl,(l09bc)
	ld e,(ix+#21)
	ld d,#00
	add hl,de
	push hl
	ld h,#00
	ld l,c
	add hl,hl
	add hl,hl
	ld d,h
	ld e,l
	add hl,hl
	add hl,de
	pop de
	add hl,de
	ld (ix+#00),l
	ld (ix+#01),h
	push hl
	ld l,(hl)
	ld h,#00
	ld de,(l09ba)
	add hl,hl
	nop
	add hl,de
	nop
	nop
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l09c2)
	add hl,de
	ld (ix+#22),l
	ld (ix+#23),h
	pop hl
	inc hl
	ld a,(hl)
	ld (ix+#2c),a
	inc hl
	ld a,(hl)
	ld (ix+#16),a
	inc hl
	ld a,(hl)
	ld (ix+#34),b
	ld (ix+#35),b
	ld (l0709),a
	and #f0
	cp #f0
	jr nz,l070f
.l0709 equ $ + 1
	ld a,#ff
	and #0f
	ld (ix+#3c),a
.l070f
	xor a
	ld (ix+#2d),a
	ld (ix+#39),a
	ld (ix+#3a),a
	ld (ix+#3b),a
	ld de,#003e
	add ix,de
	ret
.l0722
	or a
	jp z,l07b0
	ld ix,l0895
	ld (ix+#08),a
	ld a,(l08d7)
	ld e,a
	add a
	add a
	ld (ix+#21),a
	ld a,e
	inc a
	ld (l08d5),a
	xor a
	ld (ix+#16),a
	ld (ix+#19),a
	ld (ix+#1a),a
	ld (ix+#0e),a
	ld (ix+#0f),a
	ld (ix+#1f),a
	ld (ix+#39),a
	ld (ix+#3a),a
	ld (ix+#3b),a
	ld (ix+#30),a
	ld (ix+#31),a
	ld (ix+#2e),#40
	ld a,c
	and #1f
	ld h,#00
	ld l,a
	ld de,(l09b8)
	add hl,hl
	add hl,hl
	add hl,de
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l09c2)
	add hl,de
	ld a,(hl)
	ld (ix+#17),a
	ld (ix+#18),a
	inc hl
	ld c,(hl)
	inc hl
	ld a,(hl)
	ld (ix+#1b),a
	inc hl
	ld a,(hl)
	ld (ix+#1c),a
	ld (ix+#1d),a
	inc hl
	ld a,(hl)
	ld (ix+#1e),a
	inc hl
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld h,#00
	ld l,c
	ld de,(l09b6)
	add hl,hl
	add hl,hl
	add hl,de
	inc hl
	inc hl
	ld d,(hl)
	inc hl
	ld e,(hl)
	ld hl,(l09c2)
	add hl,de
	ld (ix+#12),l
	ld (ix+#13),h
.l07b0
	ret
.l07b1
	db #01,#fe,#08,#f7,#02,#fd,#10,#ef
.l07bd equ $ + 4
	db #04,#fb,#20,#df,#01,#00,#00,#00
.l07c7 equ $ + 6
.l07c5 equ $ + 4
	db #00,#00,#e1,#00,#9f,#00,#f6,#02
.l07d0 equ $ + 7
.l07cf equ $ + 6
.l07ce equ $ + 5
.l07cd equ $ + 4
.l07cc equ $ + 3
.l07cb equ $ + 2
.l07c9
	db #59,#00,#07,#28,#0b,#08,#07,#00
.l07d8 equ $ + 7
	db #00,#00,#08,#02,#09,#04,#0a,#01
.l07db equ $ + 2
.l07da equ $ + 1
.l07d9
	db #04,#00,#02,#0d,#00,#00,#74,#01
	db #00,#00,#2b,#00,#7f,#0a,#00,#00
	db #04,#00,#00,#00,#1c,#0a,#00,#00
	db #00,#01,#01,#00,#00,#01,#01,#01
	db #00,#00,#00,#00,#7b,#0b,#00,#00
	db #00,#00,#02,#00,#02,#00,#00,#0d
	db #40,#00,#04,#00,#00,#00,#46,#64
.l0817 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#04,#00
.l0819
	db #06,#0d,#00,#00,#74,#01,#00,#00
	db #0c,#03,#cb,#0a,#00,#00,#08,#00
	db #00,#00,#38,#0a,#00,#00,#02,#01
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#df,#0b,#00,#00,#02,#03
	db #01,#00,#00,#90,#fe,#09,#40,#00
	db #0d,#00,#00,#00,#46,#64,#00,#00
.l0857 equ $ + 6
.l0855 equ $ + 4
	db #00,#00,#00,#00,#0f,#00,#0a,#0d
	db #00,#00,#74,#01,#00,#00,#29,#00
	db #df,#0a,#00,#00,#08,#00,#00,#00
	db #46,#0a,#00,#00,#06,#01,#01,#00
	db #00,#00,#00,#00,#00,#20,#00,#08
	db #02,#0c,#00,#00,#00,#01,#02,#00
	db #02,#00,#0c,#09,#40,#00,#05,#00
	db #00,#00,#46,#64,#00,#00,#00,#00
.l0895 equ $ + 4
.l0893 equ $ + 2
	db #00,#00,#0f,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l08d8 equ $ + 7
.l08d7 equ $ + 6
.l08d6 equ $ + 5
.l08d5 equ $ + 4
.l08d4 equ $ + 3
.l08d3 equ $ + 2
	db #00,#00,#28,#0f,#00,#00,#00,#00
	db #01,#02,#03,#04,#05,#06,#07,#08
	db #09,#0a,#0b,#0f,#0f,#0f,#0f,#0f
.l08ee equ $ + 5
.l08ea equ $ + 1
	db #0f,#00,#00,#00,#00,#01,#00,#00
.l08f4 equ $ + 3
.l08f2 equ $ + 1
	db #00,#00,#00,#00,#00
.l08f6
	dw #0eee,#0e17,#0d4d,#0c8e
	dw #0bd9,#0b2f,#0a8e,#09f7
	dw #0967,#08e0,#0861,#07e8
	dw #0777,#070b,#06a6,#0647
	dw #05ec,#0597,#0547,#04fb
	dw #04b3,#0470,#0430,#03f4
	dw #03bb,#0385,#0353,#0323
	dw #02f6,#02cb,#02a3,#027d
	dw #0259,#0238,#0218,#01fa
	dw #01dd,#01c2,#01a9,#0191
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010c,#00fd
	dw #00ee,#00e1,#00d4,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0086,#007e
	dw #0077,#0070,#006a,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0043,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.l09bc equ $ + 6
.l09ba equ $ + 4
.l09b8 equ $ + 2
.l09b6
	db #06,#0a,#68,#0a,#0c,#0b,#02,#0d
.l09c4 equ $ + 6
.l09c2 equ $ + 4
.l09c0 equ $ + 2
.l09be
	db #b2,#11,#be,#11,#c6,#09,#00,#00
.l09c6
	db #43,#4f,#53,#4f,#00,#00,#00,#40
	db #00,#00,#00,#a2,#00,#00,#01,#46
	db #00,#00,#03,#3c,#00,#00,#07,#ec
	db #00,#00,#07,#f8,#00,#00,#00,#00
	db #54,#46,#4d,#58,#00,#0a,#00,#08
	db #00,#1a,#00,#63,#00,#40,#00,#04
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#56,#00,#5b,#00,#61,#00,#6a
	db #00,#6e,#00,#72,#00,#80,#00,#86
	db #00,#8d,#00,#94,#00,#9b,#e2,#e6
	db #00,#00,#e1,#e2,#e6,#00,#01,#02
	db #e1,#e2,#e5,#94,#e6,#97,#94,#92
	db #00,#e1,#e2,#e6,#00,#e1,#e2,#e6
	db #00,#e1,#e2,#e5,#94,#e6,#9d,#9f
	db #e4,#90,#9d,#9a,#94,#92,#90,#e1
	db #e2,#e5,#94,#e6,#00,#e1,#e2,#e6
	db #07,#0c,#0f,#e0,#02,#e2,#e6,#07
	db #0c,#0e,#e0,#02,#e2,#e6,#07,#0c
	db #10,#e0,#02,#e2,#e6,#07,#0c,#0e
	db #e0,#02,#00,#b4,#00,#cb,#00,#d3
	db #00,#dd,#00,#eb,#01,#00,#01,#14
	db #01,#2b,#01,#3d,#01,#00,#01,#01
	db #04,#0d,#0e,#0d,#0d,#0c,#0c,#0b
	db #0a,#09,#07,#06,#05,#04,#03,#02
	db #01,#00,#e1,#01,#01,#02,#04,#0f
	db #0f,#0e,#e1,#01,#02,#01,#02,#04
	db #0d,#0f,#0f,#0e,#e1,#01,#03,#01
	db #02,#00,#0d,#0c,#0a,#08,#00,#00
	db #00,#00,#e1,#04,#04,#01,#02,#0f
	db #0a,#0b,#0c,#0d,#0e,#0e,#0e,#0d
	db #0d,#0d,#0d,#0d,#0c,#0c,#0c,#e1
	db #01,#05,#00,#00,#00,#0d,#0f,#0f
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#00,#e1,#01,#06,#00,#00
	db #00,#0d,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#00,#e1,#02,#07,#00,#00,#00
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#e1,#01,#04,#01
	db #03,#0f,#0f,#0e,#e1,#00,#01,#7c
	db #01,#7f,#01,#c2,#01,#c7,#01,#d4
	db #01,#e3,#01,#f2,#01,#f7,#02,#01
	db #02,#20,#02,#43,#02,#62,#02,#81
	db #02,#a5,#02,#b0,#02,#b9,#02,#c2
	db #02,#cd,#02,#d2,#02,#db,#02,#e2
	db #02,#ec,#02,#f1,#03,#1b,#03,#25
	db #03,#2e,#03,#37,#fd,#1f,#ff,#fe
	db #00,#2b,#00,#30,#00,#32,#00,#37
	db #00,#3c,#00,#37,#00,#32,#00,#30
	db #00,#2b,#00,#30,#00,#32,#00,#37
	db #00,#3c,#00,#3e,#00,#3c,#00,#37
	db #00,#2b,#00,#30,#00,#32,#00,#35
	db #00,#37,#00,#3c,#00,#37,#00,#35
	db #00,#29,#00,#2b,#00,#30,#00,#32
	db #00,#35,#00,#37,#00,#35,#00,#32
	db #00,#ff,#fe,#1f,#11,#00,#ff,#fe
	db #03,#13,#00,#fe,#19,#13,#00,#fe
	db #01,#13,#00,#ff,#fe,#03,#13,#00
	db #13,#00,#fe,#15,#0c,#01,#fe,#01
	db #11,#00,#ff,#fe,#03,#13,#00,#13
	db #00,#fe,#15,#0c,#01,#fe,#01,#13
	db #00,#ff,#fe,#1f,#1f,#00,#ff,#fe
	db #03,#1e,#20,#20,#fe,#1b,#9f,#00
	db #ff,#fe,#03,#13,#00,#13,#00,#fe
	db #05,#0c,#03,#fe,#01,#13,#00,#13
	db #01,#13,#00,#fe,#03,#13,#00,#0c
	db #03,#fe,#01,#1d,#00,#1f,#00,#ff
	db #fe,#01,#1f,#00,#2b,#00,#2b,#00
	db #1f,#00,#29,#00,#2b,#00,#1f,#00
	db #2e,#00,#1f,#00,#2b,#00,#2b,#00
	db #1f,#00,#29,#00,#2b,#00,#24,#00
	db #26,#00,#ff,#fe,#03,#13,#00,#13
	db #00,#fe,#05,#0c,#03,#fe,#01,#13
	db #00,#13,#01,#13,#00,#fe,#03,#13
	db #00,#0c,#03,#fe,#01,#1f,#00,#1f
	db #00,#ff,#fe,#03,#13,#00,#13,#00
	db #fe,#05,#0c,#03,#fe,#01,#13,#00
	db #13,#01,#13,#00,#fe,#03,#13,#00
	db #0c,#03,#fe,#01,#1d,#03,#1f,#03
	db #ff,#fe,#01,#1f,#00,#1f,#01,#1f
	db #01,#1f,#00,#29,#00,#1f,#01,#1f
	db #00,#1f,#41,#08,#1f,#00,#1f,#01
	db #1f,#01,#1f,#00,#2b,#00,#1f,#01
	db #24,#00,#26,#00,#ff,#fe,#17,#1f
	db #00,#fe,#03,#24,#00,#26,#00,#ff
	db #fd,#1b,#fe,#01,#24,#00,#26,#00
	db #ff,#fe,#1b,#22,#00,#fe,#03,#21
	db #00,#ff,#fe,#0f,#22,#00,#fe,#07
	db #21,#00,#1d,#00,#ff,#fe,#1f,#1f
	db #00,#ff,#fe,#1b,#27,#00,#fe,#03
	db #2b,#00,#ff,#fe,#0f,#29,#00,#2e
	db #00,#ff,#fe,#03,#29,#20,#10,#fe
	db #1b,#ab,#00,#ff,#fe,#1f,#1f,#00
	db #ff,#fe,#01,#1f,#00,#1f,#41,#09
	db #1f,#41,#09,#1f,#00,#2b,#00,#1f
	db #41,#09,#1f,#00,#1f,#41,#0a,#1f
	db #00,#1f,#41,#09,#1f,#41,#09,#1f
	db #00,#2b,#00,#1f,#41,#09,#24,#00
	db #26,#00,#ff,#fe,#03,#29,#20,#10
	db #fe,#1b,#ab,#00,#ff,#fd,#17,#fe
	db #03,#29,#00,#26,#00,#ff,#fd,#17
	db #fe,#03,#2d,#00,#2e,#00,#ff,#fe
	db #1f,#2e,#00,#ff,#01,#00,#00,#f4
	db #00,#00,#00,#ff,#00,#00,#00,#ff
	db #01,#00,#00,#f4,#00,#00,#00,#00
	db #00,#00,#00,#00,#01,#00,#00,#f4
	db #02,#00,#01,#f2,#00,#00,#00,#00
	db #01,#00,#00,#f3,#02,#07,#01,#00
	db #00,#00,#00,#00,#01,#00,#00,#f2
	db #02,#08,#01,#00,#00,#00,#00,#00
	db #01,#00,#00,#f2,#02,#05,#01,#00
	db #00,#00,#00,#00,#01,#00,#00,#f2
	db #02,#07,#01,#00,#00,#00,#00,#00
	db #01,#00,#00,#f2,#00,#07,#01,#00
	db #00,#00,#00,#00,#01,#00,#00,#f2
	db #03,#00,#02,#f1,#02,#00,#01,#f3
	db #01,#00,#00,#f2,#03,#07,#02,#f1
	db #02,#07,#01,#f3,#01,#00,#00,#f2
	db #03,#08,#02,#f1,#02,#08,#01,#f3
	db #01,#00,#00,#f2,#03,#0a,#02,#f1
	db #02,#0a,#01,#f3,#01,#00,#00,#f2
	db #03,#0c,#02,#f1,#02,#0c,#01,#f3
	db #01,#00,#00,#f2,#03,#0c,#02,#f1
	db #00,#0c,#00,#00,#01,#00,#00,#f2
	db #05,#00,#02,#f1,#06,#00,#04,#f2
	db #01,#00,#00,#f2,#04,#00,#02,#f1
	db #07,#07,#04,#f2,#01,#00,#00,#f2
	db #05,#00,#02,#f1,#06,#08,#04,#f2
	db #01,#00,#00,#f2,#04,#00,#02,#f1
	db #06,#05,#04,#f2,#01,#00,#00,#f2
	db #05,#fc,#02,#f1,#06,#03,#04,#f2
	db #01,#00,#00,#f2,#05,#fc,#02,#f1
	db #06,#00,#04,#f2,#01,#00,#00,#f2
	db #05,#fe,#02,#f1,#06,#05,#04,#f2
	db #01,#00,#00,#f2,#05,#fe,#02,#f1
	db #06,#0a,#04,#f2,#01,#00,#00,#f2
	db #05,#00,#02,#f1,#06,#07,#04,#f2
	db #01,#00,#00,#f2,#05,#00,#02,#f1
	db #00,#07,#00,#00,#01,#00,#00,#f2
	db #08,#00,#02,#f1,#09,#0c,#06,#f4
	db #01,#00,#00,#f2,#08,#00,#02,#f1
	db #09,#0c,#06,#f3,#01,#00,#00,#f2
	db #08,#00,#02,#f1,#09,#0c,#06,#f2
	db #01,#00,#00,#f2,#08,#00,#02,#f1
	db #09,#0c,#06,#f2,#01,#00,#00,#f2
	db #0a,#fc,#02,#f1,#09,#0c,#06,#f2
	db #01,#00,#00,#f2,#0a,#fc,#02,#f1
	db #09,#0c,#06,#f2,#01,#00,#00,#f2
	db #08,#fe,#02,#f1,#09,#0c,#06,#f2
	db #01,#00,#00,#f2,#0b,#fe,#02,#f1
	db #09,#0c,#06,#f2,#0d,#00,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #0e,#00,#08,#f2,#08,#00,#02,#f1
	db #0c,#0c,#06,#f2,#0f,#00,#08,#f2
	db #08,#fc,#02,#f1,#0c,#0c,#06,#f2
	db #10,#00,#08,#f2,#08,#fe,#02,#f1
	db #0c,#0c,#06,#f2,#11,#00,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #00,#00,#08,#f2,#08,#00,#02,#f1
	db #0c,#0c,#06,#f2,#0d,#0c,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #0e,#0c,#08,#f2,#08,#00,#02,#f1
	db #0c,#0c,#06,#f2,#12,#0c,#08,#f2
	db #0a,#fc,#02,#f1,#0c,#0c,#06,#f2
	db #13,#0c,#08,#f2,#0a,#fe,#02,#f1
	db #0c,#0c,#06,#f2,#14,#0c,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #00,#0c,#08,#f2,#08,#00,#02,#f1
	db #0c,#0c,#06,#f2,#15,#0c,#08,#f2
	db #0a,#fc,#02,#f1,#16,#08,#06,#f2
	db #15,#0e,#08,#f2,#0a,#fe,#02,#f1
	db #16,#0a,#06,#f2,#15,#0f,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #15,#13,#08,#f2,#08,#00,#02,#f1
	db #0c,#0c,#06,#f2,#15,#0c,#08,#f2
	db #0a,#fc,#02,#f1,#16,#08,#06,#f2
	db #15,#0e,#08,#f2,#0a,#fe,#02,#f1
	db #16,#0a,#06,#f2,#15,#0f,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #00,#0f,#08,#f2,#08,#00,#02,#f1
	db #0c,#0c,#06,#f2,#0d,#0c,#08,#f2
	db #0a,#00,#02,#f1,#0c,#0c,#06,#f2
	db #0e,#0c,#08,#f2,#08,#00,#02,#f1
	db #0c,#0c,#06,#f2,#0f,#0c,#08,#f2
	db #0a,#fc,#02,#f1,#0c,#0c,#06,#f2
	db #10,#0c,#08,#f2,#0a,#fe,#02,#f1
	db #0c,#0c,#06,#f2,#11,#0c,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #00,#0c,#08,#f2,#0b,#00,#02,#f1
	db #0c,#0c,#06,#f2,#0d,#0c,#08,#f2
	db #0a,#00,#02,#f1,#0c,#0c,#06,#f2
	db #0e,#0c,#08,#f2,#08,#00,#02,#f1
	db #0c,#0c,#06,#f2,#0f,#0c,#08,#f2
	db #0a,#fc,#02,#f1,#0c,#0c,#06,#f2
	db #10,#0c,#08,#f2,#0a,#fe,#02,#f1
	db #0c,#0c,#06,#f2,#11,#0c,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #00,#0c,#08,#f2,#0b,#00,#02,#f1
	db #0c,#0c,#06,#f2,#00,#0c,#08,#ff
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #00,#0c,#08,#ff,#0a,#00,#02,#f1
	db #0c,#0c,#06,#f2,#00,#0c,#08,#ff
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #00,#0c,#08,#ff,#0b,#00,#02,#f1
	db #0c,#0c,#06,#f2,#17,#0c,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #18,#0c,#08,#f2,#0a,#00,#02,#f1
	db #0c,#0c,#06,#f2,#17,#0c,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #19,#0c,#08,#f2,#0b,#00,#02,#f1
	db #0c,#0c,#06,#f2,#1a,#0c,#08,#f2
	db #0a,#fc,#02,#f1,#16,#08,#06,#f2
	db #00,#0c,#08,#f2,#0a,#fc,#02,#f1
	db #16,#08,#06,#f2,#17,#0c,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #00,#0c,#08,#f2,#0b,#00,#02,#f1
	db #0c,#0c,#06,#f2,#17,#0c,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #18,#0c,#08,#f2,#0a,#00,#02,#f1
	db #0c,#0c,#06,#f2,#17,#0c,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #19,#0c,#08,#f2,#0b,#00,#02,#f1
	db #0c,#0c,#06,#f2,#1a,#0c,#08,#f2
	db #0a,#fc,#02,#f1,#16,#08,#06,#f2
	db #00,#0c,#08,#f2,#0a,#fc,#02,#f1
	db #16,#08,#06,#f2,#1a,#0b,#08,#f2
	db #08,#fe,#02,#f1,#16,#0a,#06,#f2
	db #00,#0b,#08,#f2,#0b,#fe,#02,#f1
	db #16,#0a,#06,#f2,#17,#0c,#08,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #00,#0c,#08,#f3,#0a,#00,#02,#f1
	db #0c,#0c,#06,#f2,#00,#0c,#08,#f4
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #00,#0c,#08,#f5,#0b,#00,#02,#f1
	db #0c,#0c,#06,#f2,#01,#00,#00,#f3
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #01,#00,#00,#f2,#0a,#00,#02,#f1
	db #0c,#0c,#06,#f2,#01,#00,#00,#f2
	db #08,#00,#02,#f1,#0c,#0c,#06,#f2
	db #01,#00,#00,#f2,#0b,#00,#02,#f1
	db #0c,#0c,#06,#f2,#01,#00,#00,#f2
	db #08,#00,#02,#f2,#0c,#0c,#06,#f2
	db #01,#00,#00,#f3,#0a,#00,#02,#f3
	db #0c,#0c,#06,#f3,#01,#00,#00,#f3
	db #08,#00,#02,#f4,#0c,#0c,#06,#f4
	db #01,#00,#00,#f3,#0b,#00,#02,#f5
	db #0c,#0c,#06,#f5,#01,#00,#00,#f3
	db #08,#00,#02,#f6,#0c,#0c,#06,#f6
	db #01,#00,#00,#f3,#0a,#00,#02,#f7
	db #0c,#0c,#06,#f7,#01,#00,#00,#f3
	db #08,#00,#02,#f9,#0c,#0c,#06,#f9
	db #01,#00,#00,#f3,#0b,#00,#02,#fd
	db #0c,#0c,#06,#fd,#00,#00,#00,#63
	db #00,#04,#00,#00,#00,#00,#00,#00
	db #00,#00
;
.init_music
.l11c0
;
	ld hl,l09c6
	call l0049
	ld a,#01
	jp real_init_music
;
.music_info
	db "Mad Mag Issue 2 Intro (1994)(Ast System)()",0
	db "COSO",0

	read "music_end.asm"
