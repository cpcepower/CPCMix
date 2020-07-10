; Music of Real Ghostbusters, The (1988)(Activision)()()
; Ripped by Megachur the 04/12/2014
; $VER 1.5

IFDEF FILENAME_WRITE
	write "REALGHOS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 04
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2014
music_adr				equ #4000
FIRST_THEME				equ 0
LAST_THEME				equ 3	; 0 -> 0

	read "music_header.asm"

;
.init_music
;
	push af
	call l4215
	pop af
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l4a43
	add hl,bc
	ld a,(hl)
	ld (l40ec),a
	ld (l44b4),a
	inc hl
	ld ix,l406d
	ld c,#22
	ld a,#03
.l4021
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
	ld hl,l4594
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
	jr nz,l4021
	ld (l43cf),a
	dec a
	ld (l44b5),a
	ld (l44b0),a
	ret
.l406d
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.l408f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.l40b1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
;
	ld a,(l44b0)
	ld hl,l44b1
	or (hl)
	inc hl
	or (hl)
	ret z
	call l46dd
	ld a,(l44b0)
	and a
	jr z,l4137
.l40e7 equ $ + 1
	ld a,#00
	ld (l4133),a
.l40ec equ $ + 1
	ld a,#01
	ld hl,l44b5
	add (hl)
	ld (hl),a
	jr nc,l410b
	ld b,#00
	ld ix,l406d
	call l42e4
	ld ix,l408f
	call l42e4
	ld ix,l40b1
	call l42e4
.l410b
	ld ix,l406d
	call l439c
	ld (l44b6),hl
	ld (l44be),a
	ld ix,l408f
	call l439c
	ld (l44b8),hl
	ld (l44bf),a
	ld ix,l40b1
	call l439c
	ld (l44ba),hl
	ld (l44c0),a
.l4133 equ $ + 1
	ld a,#00
	ld (l44bc),a
.l4137
	ld a,(l44b0)
	and a
	jr nz,l414d
	ld (l44be),a
	ld (l44bf),a
	ld (l44c0),a
	ld a,#3f
	ld (l44bd),a
	jr l4175
.l414d
	ld a,(l44b3)
	and #0f
	xor #0f
	jr z,l4175
	ld b,a
	ld a,(l44be)
	sub b
	jr nc,l415e
	xor a
.l415e
	ld (l44be),a
	ld a,(l44bf)
	sub b
	jr nc,l4168
	xor a
.l4168
	ld (l44bf),a
	ld a,(l44c0)
	sub b
	jr nc,l4172
	xor a
.l4172
	ld (l44c0),a
.l4175
	ld a,(l44b1)
	and a
	jr z,l419d
	ld hl,(l44c3)
	ld (l44b6),hl
	ld a,(l4a00)
	ld b,a
	bit 3,a
	jr nz,l418f
	ld a,(l44c9)
	ld (l44bc),a
.l418f
	ld hl,l44bd
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(l44cb)
	ld (l44be),a
.l419d
	ld a,(l44b2)
	and a
	jr z,l41c7
	ld hl,(l44c5)
	ld (l44b8),hl
	ld a,(l4a15)
	ld b,a
	bit 3,a
	jr nz,l41b7
.l41b1
	ld a,(l44c9)
	ld (l44bc),a
.l41b7
	ld hl,l44bd
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(l44cc)
	ld (l44bf),a
.l41c7
	ld hl,l44c0
	ld d,#0a
.l41cc
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
	jp p,l41cc
	ret
.l41ed
	ld de,#0a00
.l41f0
	call l41fa
	dec d
	jp p,l41f0
	ld de,#073f
.l41fa
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
.l4215
;
	xor a
	ld (l44b0),a
	call l4227
	xor a
	ld (l44be),a
	ld (l44bf),a
	ld (l44c0),a
	ret
.l4227
	xor a
	ld (l44b1),a
	ld (l44b2),a
	jp l41ed
	db #a4,#98,#91,#5f,#0d,#81,#72,#37
	db #4a,#95,#03,#a2,#73
	pop hl
	jp l4215
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
	jr nz,l4264
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l4264
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l42f1
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,l447b
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l42f1
	ld hl,l447b
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l42f1
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l42f1
	ld a,(de)
	inc de
	ld (l43cf),a
	jr l42f1
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr l42f1
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr l42f1
	ld (ix+#1d),b
	jr l42f1
	set 1,(ix+#00)
	jr l42f1
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l4320
	ld (ix+#1f),#ff
	jr l42f1
.l42e4
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l42f1
	ld a,(de)
	inc de
	and a
	jp m,l4351
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l4303
	ld (l40e7),a
.l4303
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
.l4320
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l4350
	ld a,(l44b1)
	and a
	jr z,l433f
	ld a,(l4a00)
	bit 3,a
	jr z,l4350
.l433f
	ld a,(l44b2)
	and a
	jr z,l434c
	ld a,(l4a15)
	bit 3,a
	jr z,l4350
.l434c
	ld (ix+#1f),#ff
.l4350
	ret
.l4351
	cp #c0
	jr c,l4394
	add #20
	jr c,l4375
	add #10
	jr c,l437c
	add #10
	ld c,a
	ld hl,l458f
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l42f1
.l4375
	inc a
	ld (ix+#11),a
	jp l42f1
.l437c
	ld hl,l45a6
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
	jp l42f1
.l4394
	ld hl,l41b1
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l439c
	ld c,(ix+#00)
	bit 5,c
	jr z,l43ce
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l43c8
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l43c8
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l43c8
	ld a,(ix+#18)
	ld (ix+#13),a
.l43cf equ $ + 1
.l43ce
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l43eb
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l43eb
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l44cf
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l444c
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l4415
	bit 0,c
	jr nz,l4433
.l4415
	bit 5,l
	jr nz,l4425
	sub (ix+#1b)
	jr nc,l4430
	set 5,(ix+#1d)
	sub a
	jr l4430
.l4425
	add (ix+#1b)
	cp b
	jr c,l4430
	res 5,(ix+#1d)
	ld a,b
.l4430
	ld (ix+#1c),a
.l4433
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l443e
	dec d
.l443e
	add #a0
	jr c,l444a
.l4442
	sla e
	rl d
	add #18
	jr nc,l4442
.l444a
	add hl,de
	ex de,hl
.l444c
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l4477
	ld b,(ix+#0e)
	djnz l4474
	ld c,(ix+#0d)
	bit 7,c
	jr z,l4463
	dec b
.l4463
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l4477
.l4474
	ld (ix+#0e),b
.l4477
	cpl
	and #03
.l447b equ $ + 1
	ld a,#38
	jr nz,l4488
	ld a,(l40e7)
	xor #08
	ld (l4133),a
	ld a,#07
.l4488
	ld hl,l44bd
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l44ab
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l4133),a
.l44ab
	ex de,hl
	ld a,(ix+#13)
	ret
.l44b6 equ $ + 6
.l44b5 equ $ + 5
.l44b4 equ $ + 4
.l44b3 equ $ + 3
.l44b2 equ $ + 2
.l44b1 equ $ + 1
.music_end
.l44b0
	db #00,#00,#00,#0f,#00,#00,#00,#00
.l44bf equ $ + 7
.l44be equ $ + 6
.l44bd equ $ + 5
.l44bc equ $ + 4
.l44ba equ $ + 2
.l44b8
	db #00,#00,#00,#00,#00,#3f,#00,#00
.l44c6 equ $ + 6
.l44c5 equ $ + 5
.l44c4 equ $ + 4
.l44c3 equ $ + 3
.l44c0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l44cc equ $ + 4
.l44cb equ $ + 3
.l44c9 equ $ + 1
	db #00,#00,#3f,#00,#00,#00,#00
.l44cf
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
	dw #0009,#0008,#0008
.l4594 equ $ + 7
.l458f equ $ + 2
	db #07,#00,#05,#05,#07,#09,#0b,#80
	db #00,#04,#87,#07,#0c,#8f,#04,#07
	db #8c,#0c,#00,#00,#00,#00,#00,#00
	db #80
.l45a6
	dw l45b7,l45c9,l45da,l45f3
	dw l4603,l4614,l4617,l461a
.l45b7 equ $ + 1
	db #01,#0f,#0f,#0d,#0b,#0d,#0c,#0a
	db #09,#0b,#0a,#08,#07,#09,#08,#06
.l45c9 equ $ + 3
	db #05,#84,#05,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.l45da equ $ + 4
	db #02,#01,#84,#01,#09,#0b,#0d,#0e
	db #0e,#0e,#0e,#0e,#0d,#0d,#0c,#0c
	db #0c,#0c,#0b,#0b,#0b,#0b,#0a,#0a
.l45f3 equ $ + 5
	db #0a,#0a,#09,#84,#04,#0e,#0d,#0c
	db #0b,#0a,#09,#08,#07,#06,#05,#04
.l4603 equ $ + 5
	db #03,#02,#01,#84,#02,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.l4614 equ $ + 6
	db #04,#03,#02,#01,#84,#01,#0d,#84
.l461a equ $ + 4
.l4617 equ $ + 1
	db #01,#0e,#84,#01,#0f,#84
	ld hl,l4625
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l4625
	ld (bc),a
	ld e,h
	ld hl,l44b1
	ld (hl),#00
	ld hl,l4850
	add a
	add l
	ld l,a
	jr nc,l4635
	inc h
.l4635
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l49fa
.l463d
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l463d
	ld a,(l49fb)
	ld (l4a08),a
	ld hl,(l49fc)
	ld (l44c3),hl
	ld a,(l4a00)
	bit 3,a
	jr nz,l465a
	ld a,l
	ld (l44c9),a
.l465a
	ld a,(l4a05)
	ld (l4a09),a
	ld a,(l4a07)
	ld (l4a0e),a
	ld a,(l4a04)
	ld hl,l49b0
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l4a0a),hl
	ld (l4a0c),hl
	ld a,(hl)
	ld (l44cb),a
	ld hl,l44b1
	inc (hl)
	ret
	ld hl,l44b2
	ld (hl),#00
	ld hl,l4850
	add a
	add l
	ld l,a
	jr nc,l4690
	inc h
.l4690
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,l4a0f
.l4698
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l4698
	ld a,(l4a10)
	ld (l4a1d),a
	ld hl,(l4a11)
	ld (l44c5),hl
	ld a,(l4a15)
	bit 3,a
	jr nz,l46b5
	ld a,l
	ld (l44c9),a
.l46b5
	ld a,(l4a1a)
	ld (l4a1e),a
	ld a,(l4a1c)
	ld (l4a23),a
	ld a,(l4a19)
	ld hl,l49b0
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (l4a1f),hl
	ld (l4a21),hl
	ld a,(hl)
	ld (l44cc),a
	ld hl,l44b2
	inc (hl)
	ret
.l46dd
	call l4a24
	ld a,(l44b1)
	and a
	call nz,l479e
	ld a,(l44b2)
	and a
	ret z
	ld a,(l4a0f)
	and a
	jr nz,l46fc
	ld a,(l4a1b)
	and a
	jr nz,l46fc
	ld (l44b2),a
	ret
.l46fc
	dec a
	ld (l4a0f),a
	ld a,(l4a1d)
	and a
	jr nz,l4734
	ld a,(l4a1b)
	and a
	jr nz,l4712
	ld a,(l4a18)
	and a
	jr z,l4776
.l4712
	dec a
	ld (l4a18),a
	ld a,(l4a10)
	ld (l4a1d),a
	ld a,(l4a16)
	and a
	jr z,l4725
	ld a,(l4a40)
.l4725
	ld b,a
	ld a,(l4a11)
	add b
	ld (l44c5),a
	ld a,(l4a12)
	add b
	ld (l44c6),a
.l4734
	ld hl,l4a1d
	dec (hl)
	ld hl,l4a1c
	ld a,(hl)
	and a
	jr z,l4746
	ld hl,l4a23
	dec (hl)
	jr nz,l4769
	ld (hl),a
.l4746
	ld a,(l4a17)
	and a
	jr z,l4769
	jp p,l475c
	ld hl,(l44c5)
	ld de,(l4a13)
	add hl,de
	ld (l44c5),hl
	jr l4769
.l475c
	ld hl,(l44c5)
	ld de,(l4a13)
	and a
	sbc hl,de
	ld (l44c5),hl
.l4769
	ld a,(l4a15)
	bit 3,a
	jr nz,l4776
	ld a,(l44c5)
	ld (l44c9),a
.l4776
	ld a,(l4a1e)
	dec a
	ld (l4a1e),a
	jr nz,l479d
	ld a,(l4a1a)
	ld (l4a1e),a
	ld hl,(l4a21)
	ld a,(hl)
	inc hl
	and a
	jp p,l4797
	cp #80
	jr nz,l479d
	ld hl,(l4a1f)
	ld a,(hl)
	inc hl
.l4797
	ld (l4a21),hl
	ld (l44cc),a
.l479d
	ret
.l479e
	ld a,(l49fa)
	and a
	jr nz,l47ae
	ld a,(l4a06)
	and a
	jr nz,l47ae
	ld (l44b1),a
	ret
.l47ae
	dec a
	ld (l49fa),a
	ld a,(l4a08)
	and a
	jr nz,l47e6
	ld a,(l4a06)
	and a
	jr nz,l47c4
	ld a,(l4a03)
	and a
	jr z,l4828
.l47c4
	dec a
	ld (l4a03),a
	ld a,(l49fb)
	ld (l4a08),a
	ld a,(l4a01)
	and a
	jr z,l47d7
	ld a,(l4a3f)
.l47d7
	ld b,a
	ld a,(l49fc)
	add b
	ld (l44c3),a
	ld a,(l49fd)
	add b
	ld (l44c4),a
.l47e6
	ld hl,l4a08
	dec (hl)
	ld hl,l4a07
	ld a,(hl)
	and a
	jr z,l47f8
	ld hl,l4a0e
	dec (hl)
	jr nz,l481b
	ld (hl),a
.l47f8
	ld a,(l4a02)
	and a
	jr z,l481b
	jp p,l480e
	ld hl,(l44c3)
	ld de,(l49fe)
	add hl,de
	ld (l44c3),hl
	jr l481b
.l480e
	ld hl,(l44c3)
	ld de,(l49fe)
	and a
	sbc hl,de
	ld (l44c3),hl
.l481b
	ld a,(l4a00)
	bit 3,a
	jr nz,l4828
	ld a,(l44c3)
	ld (l44c9),a
.l4828
	ld a,(l4a09)
	dec a
	ld (l4a09),a
	jr nz,l484f
	ld a,(l4a05)
	ld (l4a09),a
	ld hl,(l4a0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l4849
	cp #80
	jr nz,l484f
	ld hl,(l4a0a)
	ld a,(hl)
	inc hl
.l4849
	ld (l4a0c),hl
	ld (l44cb),a
.l484f
	ret
.l4850
	dw l487c,l488a,l4898,l48a6
	dw l48b4,l48c2,l48d0,l48de
	dw l48ec,l48fa,l4908,l4916
	dw l4924,l4932,l4940,l494e
	dw l495c,l496a,l4978,l4986
	dw l4994,l49a2
.l487c
	db #14,#ff,#80,#00,#05,#00,#fe,#00
.l488a equ $ + 6
	db #01,#ff,#00,#02,#00,#00,#02,#02
	db #04,#00,#01,#00,#f7,#00,#01,#63
.l4898 equ $ + 4
	db #03,#01,#00,#00,#3c,#ff,#1f,#00
	db #01,#00,#f6,#00,#01,#00,#07,#03
.l48a6 equ $ + 2
	db #00,#03,#14,#ff,#0a,#00,#03,#00
	db #f6,#00,#ff,#0a,#08,#02,#00,#00
.l48b4
	db #11,#04,#68,#00,#08,#00,#fe,#00
.l48c2 equ $ + 6
	db #01,#63,#05,#01,#00,#00,#19,#ff
	db #17,#00,#01,#00,#f7,#00,#01,#ff
.l48d0 equ $ + 4
	db #06,#02,#00,#03,#32,#03,#58,#02
	db #10,#00,#fe,#00,#01,#63,#07,#04
.l48de equ $ + 2
	db #00,#00,#11,#05,#c8,#00,#20,#00
	db #f6,#00,#ff,#63,#00,#02,#00,#00
.l48ec
	db #0c,#ff,#80,#01,#21,#00,#f6,#00
.l48fa equ $ + 6
	db #01,#ff,#08,#01,#00,#00,#0e,#08
	db #00,#00,#06,#00,#f7,#00,#ff,#63
.l4908 equ $ + 4
	db #08,#02,#00,#00,#1e,#ff,#30,#00
	db #01,#04,#fe,#00,#ff,#63,#00,#03
.l4916 equ $ + 2
	db #00,#00,#0f,#ff,#30,#00,#02,#04
	db #fe,#ff,#01,#63,#08,#02,#00,#00
.l4924
	db #0b,#05,#0f,#00,#04,#00,#f6,#00
.l4932 equ $ + 6
	db #01,#0a,#00,#01,#00,#00,#0f,#0f
	db #0f,#01,#01,#00,#f6,#00,#01,#00
.l4940 equ $ + 4
	db #00,#01,#00,#00,#3c,#06,#81,#00
	db #24,#00,#f6,#00,#ff,#63,#00,#04
.l494e equ $ + 2
	db #00,#00,#11,#05,#c7,#00,#20,#00
	db #f6,#00,#ff,#63,#00,#01,#00,#00
.l495c
	db #1e,#05,#0a,#00,#4b,#00,#fe,#00
.l496a equ $ + 6
	db #ff,#ff,#00,#03,#00,#00,#32,#03
	db #a1,#00,#14,#00,#f6,#00,#ff,#ff
.l4978 equ $ + 4
	db #00,#04,#00,#00,#32,#0a,#0a,#00
	db #03,#00,#f6,#01,#ff,#0a,#00,#04
.l4986 equ $ + 2
	db #00,#00,#1e,#ff,#0f,#00,#01,#00
	db #f7,#00,#01,#63,#05,#01,#00,#02
.l4994
	db #0f,#63,#f0,#00,#21,#00,#fe,#00
.l49a2 equ $ + 6
	db #ff,#63,#00,#01,#00,#00,#0b,#63
	db #0b,#00,#02,#00,#f7,#00,#01,#63
	db #05,#01,#00,#00
.l49b0
	dw l49c2,l49cf,l49cf,l49cf
	dw l49d7,l49d7,l49e6,l49e8
	dw l49eb
.l49c2
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
.l49cf equ $ + 5
	db #07,#06,#05,#04,#ff,#0d,#0b,#09
.l49d7 equ $ + 5
	db #07,#05,#04,#03,#ff,#0a,#0c,#0e
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
.l49e8 equ $ + 6
.l49e6 equ $ + 4
	db #07,#06,#05,#ff,#0d,#80,#0f,#0f
.l49eb equ $ + 1
	db #0e,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
.l4a01 equ $ + 7
.l4a00 equ $ + 6
.l49fe equ $ + 4
.l49fd equ $ + 3
.l49fc equ $ + 2
.l49fb equ $ + 1
.l49fa
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a09 equ $ + 7
.l4a08 equ $ + 6
.l4a07 equ $ + 5
.l4a06 equ $ + 4
.l4a05 equ $ + 3
.l4a04 equ $ + 2
.l4a03 equ $ + 1
.l4a02
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a11 equ $ + 7
.l4a10 equ $ + 6
.l4a0f equ $ + 5
.l4a0e equ $ + 4
.l4a0c equ $ + 2
.l4a0a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a19 equ $ + 7
.l4a18 equ $ + 6
.l4a17 equ $ + 5
.l4a16 equ $ + 4
.l4a15 equ $ + 3
.l4a13 equ $ + 1
.l4a12
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a21 equ $ + 7
.l4a1f equ $ + 5
.l4a1e equ $ + 4
.l4a1d equ $ + 3
.l4a1c equ $ + 2
.l4a1b equ $ + 1
.l4a1a
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a23 equ $ + 1
	db #00,#00
.l4a24
	ld a,(l4a3f)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l4a42
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l4a42 equ $ + 3
.l4a40 equ $ + 1
.l4a3f
	db #ff,#80,#1b,#34
.l4a43
	db #2c
	dw l4a5f,l4a93,l4ac9
	db #2c
	dw l4da8,l4da4,l4dac
	db #24
	dw l4dd5,l4dd1,l4dd9
	db #36
	dw l4e0f,l4e0b,l4e13
.l4a5f
	dw l4e26,l4b09,l4b19,l4b19
	dw l4b19,l4b19,l4b09,l4b4e
	dw l4b19,l4b19,l4b4e,l4b19
	dw l4b72,l4b72,l4b72,l4b72
	dw l4e29,l4b72,l4b72,l4b72
	dw l4b72,l4e2c,l4b19,l4b19
.l4a93 equ $ + 4
	dw l4b19,#0000,l4b87,l4bb0
	dw l4bb0,l4bb0,l4bb0,l4b87
	dw l4d33,l4d33,l4c14,l4bb0
	dw l4bb0,l4d33,l4d33,l4c14
	dw l4bb0,l4c55,l4c55,l4c55
	dw l4c55,l4c55,l4c55,l4c55
	dw l4c55,l4bb0,l4bb0,l4bb0
.l4ac9 equ $ + 2
	dw #0000,l4c83,l4caf,l4cda
	dw l4caf,l4cda,l4c83,l4d34
	dw l4d34,l4d34,l4d56,l4caf
	dw l4caf,l4caf,l4caf,l4d34
	dw l4d34,l4d34,l4d56,l4e22
	dw l4d75,l4d75,l4d8c,l4d8c
	dw l4d75,l4d75,l4d8c,l4d8c
	dw l4caf,l4cda,l4caf,l4caf
	dw #0000
.l4b09
	db #8b,#87,#85,#01,#01,#ef,#d5,#16
.l4b17 equ $ + 6
	db #15,#d6,#12,#d7,#12,#84,#8c,#18
.l4b19
	db #d4,#85,#01,#01,#e1,#0c,#e2,#0c
	db #e0,#10,#e1,#13,#e3,#16,#15,#e1
	db #0c,#e2,#0c,#e0,#10,#e1,#13,#e1
	db #16,#16,#e3,#15,#e1,#0c,#e2,#0c
	db #e0,#10,#e1,#13,#e3,#16,#15,#e1
	db #0c,#e2,#0c,#e0,#10,#e1,#13,#e1
.l4b4e equ $ + 5
	db #0a,#0a,#e3,#09,#84,#d1,#85,#01
	db #01,#e5,#18,#16,#15,#14,#e3,#13
	db #11,#e5,#18,#16,#15,#14,#e3,#13
	db #11,#e5,#18,#16,#15,#14,#e3,#13
	db #11,#e5,#18,#16,#15,#14,#e7,#13
.l4b72 equ $ + 1
	db #84,#d4,#85,#01,#01,#e1,#0c,#ea
	db #0c,#e0,#10,#e1,#13,#e1,#16,#ea
.l4b87 equ $ + 6
	db #16,#e0,#16,#e1,#15,#84,#87,#81
	db #8c,#00,#e1,#d2,#21,#22,#21,#22
	db #21,#22,#21,#22,#21,#22,#21,#22
	db #21,#22,#21,#22,#d3,#21,#22,#21
	db #22,#21,#22,#21,#22,#d1,#2d,#2e
.l4bb0 equ $ + 7
	db #2d,#2e,#2d,#2e,#2d,#2e,#84,#d4
	db #85,#01,#01,#8b,#e1,#18,#18,#e0
	db #88,#83,#14,#01,#2b,#87,#1c,#e1
	db #1f,#e3,#22,#e1,#88,#83,#14,#01
	db #30,#87,#21,#e1,#18,#18,#e0,#88
	db #83,#14,#01,#2b,#87,#1c,#e1,#1f
	db #e1,#22,#22,#e1,#88,#83,#14,#01
	db #30,#87,#21,#e1,#18,#18,#e0,#88
	db #83,#14,#01,#2b,#87,#1c,#e1,#1f
	db #e3,#22,#e1,#88,#83,#14,#01,#30
	db #87,#21,#e1,#18,#18,#e0,#88,#83
	db #14,#01,#2b,#87,#1c,#e1,#1f,#e1
	db #16,#16,#e1,#88,#83,#14,#01,#30
.l4c14 equ $ + 3
	db #87,#15,#84,#82,#d7,#e3,#37,#d0
	db #e1,#33,#d7,#e3,#37,#d0,#e1,#33
	db #d7,#e3,#37,#d0,#e1,#33,#d7,#e3
	db #37,#d0,#e1,#33,#d7,#37,#d0,#33
	db #e0,#31,#32,#e1,#33,#d7,#e3,#37
	db #d0,#e1,#33,#d7,#e3,#37,#d0,#e1
	db #33,#d7,#e3,#37,#d0,#e1,#33,#d7
	db #e3,#37,#d0,#e1,#33,#e7,#d7,#83
.l4c55 equ $ + 4
	db #01,#1e,#3c,#84,#d4,#e1,#18,#18
	db #88,#83,#14,#01,#2b,#87,#0c,#0c
	db #0c,#e0,#88,#83,#14,#01,#30,#87
	db #1c,#e1,#1f,#e1,#22,#22,#88,#83
	db #14,#01,#2b,#87,#16,#16,#16,#e0
	db #88,#83,#14,#01,#30,#87,#22,#e1
.l4c83 equ $ + 2
	db #21,#84,#87,#85,#01,#01,#e1,#d2
	db #21,#22,#21,#22,#21,#22,#21,#22
	db #2d,#2e,#2d,#2e,#2d,#2e,#2d,#2e
	db #d3,#85,#02,#02,#21,#22,#21,#22
	db #21,#22,#21,#22,#d1,#2d,#2e,#2d
.l4caf equ $ + 6
	db #2e,#2d,#2e,#2d,#2e,#84,#87,#85
	db #01,#01,#d0,#e1,#0c,#e0,#30,#30
	db #e1,#d7,#34,#e0,#30,#80,#e1,#32
	db #d0,#e1,#2e,#e7,#80,#e0,#30,#30
	db #30,#30,#e1,#d7,#2e,#e0,#30,#80
	db #d1,#e3,#83,#0a,#02,#c4,#30,#c0
.l4cda equ $ + 1
	db #84,#d0,#e1,#0c,#e0,#30,#30,#e1
	db #d7,#34,#e0,#30,#80,#e1,#32,#d0
	db #e1,#2e,#e7,#80,#e0,#30,#30,#30
	db #30,#e1,#d7,#2e,#e0,#30,#80,#d1
	db #e1,#83,#0a,#02,#c4,#30,#c0,#d0
	db #e0,#30,#30,#e1,#d7,#33,#e0,#32
	db #80,#e9,#d1,#83,#05,#18,#30,#d0
	db #e0,#2b,#2b,#e1,#d7,#2e,#eb,#d1
	db #30,#d0,#e0,#30,#30,#e1,#d7,#33
	db #e0,#32,#80,#e9,#d1,#83,#05,#18
	db #30,#d0,#e0,#2b,#2b,#e7,#d1,#2e
.l4d34 equ $ + 3
.l4d33 equ $ + 2
	db #80,#84,#81,#d6,#e3,#33,#d0,#e1
	db #30,#d6,#e3,#33,#d0,#e1,#30,#d6
	db #e3,#33,#d0,#e1,#30,#d6,#e3,#33
	db #d0,#e1,#30,#d6,#33,#d0,#30,#e0
.l4d56 equ $ + 5
	db #2e,#2f,#e1,#30,#84,#d7,#e3,#33
	db #d0,#e1,#30,#d7,#e3,#33,#d0,#e1
	db #30,#d7,#e3,#33,#d0,#e1,#30,#d7
	db #e3,#33,#d0,#e1,#30,#e7,#d7,#83
.l4d75 equ $ + 4
	db #01,#1e,#37,#84,#d0,#81,#e1,#c1
	db #30,#ea,#30,#e0,#30,#e1,#c3,#30
	db #e1,#c2,#2b,#ea,#2b,#e0,#2b,#e1
.l4d8c equ $ + 3
	db #c3,#30,#84,#e1,#80,#e2,#c1,#30
	db #30,#30,#30,#e1,#c3,#30,#e1,#80
	db #e2,#c2,#2b,#2b,#2b,#2b,#e1,#c3
	db #30,#c0,#84
.l4da8 equ $ + 4
.l4da4
	dw l4db0,#0000,l4dbb,#0000
.l4dac
	dw l4dc6,#0000
.l4db0
	db #87,#85,#01,#01,#e7,#d4,#83,#05
.l4dbb equ $ + 3
	db #08,#30,#8a,#87,#85,#01,#01,#e7
.l4dc6 equ $ + 6
	db #d4,#83,#05,#08,#33,#8a,#87,#85
	db #01,#01,#e7,#d4,#83,#05,#08,#37
	db #8a
.l4dd5 equ $ + 4
.l4dd1
	dw l4ddd,#0000,l4ddf,#0000
.l4dd9
	dw l4df5,#0000
.l4ddf equ $ + 2
.l4ddd
	db #8c,#0c,#87,#85,#01,#01,#d4,#e0
	db #18,#18,#1c,#1f,#22,#22,#21,#1f
	db #e1,#27,#e0,#26,#22,#e5,#24,#8a
.l4df5
	db #87,#85,#01,#01,#d4,#e0,#1c,#1c
	db #1f,#24,#27,#27,#26,#24,#e1,#22
	db #e0,#21,#1d,#e5,#1f,#8a
.l4e0f equ $ + 4
.l4e0b
	dw l4b19,#0000,l4bb0,#0000
.l4e13
	dw l4b17,#0000
	db #ff,#80,#80,#80,#80,#80,#80,#80
.l4e26 equ $ + 7
.l4e22 equ $ + 3
	db #80,#80,#84,#ff,#80,#80,#84,#86
.l4e2c equ $ + 5
.l4e29 equ $ + 2
	db #ff,#84,#86,#00,#84,#86,#01,#84
	db #00,#1a,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#04,#00,#4c,#02,#00,#00
	db #54,#52,#20,#20,#20,#20,#20,#20
	db #24,#24,#24,#ff,#00,#ff
;
.music_info
	db "The Real Ghostbusters (1988)(Activision)()",0
	db "",0

	read "music_end.asm"
