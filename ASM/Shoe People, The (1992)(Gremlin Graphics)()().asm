; Music of Shoe People, The (1992)(Gremlin Graphics)()()
; Ripped by Megachur the 15/12/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SHOEPEOP.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #4000

	read "music_header.asm"

.l4002 equ $ + 2
.l4000
	dw l5000,l5032,l5004
;
.real_init_music
;
	or a
	jp z,l40f7
	dec a
	jp z,l415f
	dec a
	jp z,l4028
	dec a
	jr z,l4021
	dec a
	jp z,l4abe
	ld a,#ff
	ld (l49a9),a
	jp l414b
.l4021
	ld hl,#0f02
	ld (l49ab),hl
	ret
.l4028
	ld a,e
	add a
	ld e,a
	ld d,#00
	ld hl,(l4000)
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4a08),de
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l49fa),bc
	ex de,hl
	ld (l4a0a),de
	ld de,l4a0c
	call l40ef
	xor a
	ld (l4a1d),a
	ld (l4a39),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4a4a),de
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4a3c),bc
	ex de,hl
	ld (l4a4c),de
	ld de,l4a4e
	call l40ef
	xor a
	ld (l4a5f),a
	ld (l4a7b),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4a8c),de
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4a7e),bc
	ex de,hl
	ld (l4a8e),de
	ld de,l4a90
	call l40ef
	xor a
	ld (l4aa1),a
	ld (l4abd),a
	xor a
	ld (l49ab),a
	ld (l49b3),a
	ld (l49ad),a
	ld (l49a9),a
	ld (l49af),a
	ld (l4e7a),a
	ld (l4eae),a
	ld (l4ee2),a
	ld (l4a1b),a
	ld (l4a5d),a
	ld (l4a9f),a
	ld hl,l49ca
	ld (l49f8),hl
	ld hl,l49e0
	ld (l4a3a),hl
	ld hl,l49f6
	ld (l4a7c),hl
	ld hl,#073f
	call l43ac
	ld hl,#0800
	call l43ac
	inc h
	call l43ac
	inc h
	call l43ac
	ld a,#3f
	ld (l49a8),a
	ld (l4bd8),a
	ret
.l40ef
	xor a
	ld b,#07
.l40f2
	ld (de),a
	inc de
	djnz l40f2
	ret
;
.play_music
.l40f7
;
	ld a,(l49a9)
	or a
	jp m,l413f
	ld a,(l49af)
	or a
	jp nz,l4120
	ld ix,l49f8
	call l43da
	ld ix,l4a3a
	call l43da
	ld ix,l4a7c
	call l43da
	ld a,(l49ae)
	ld (l49af),a
.l4120
	ld ix,l49f8
	call l4223
	ld ix,l4a3a
	call l4223
	ld ix,l4a7c
	call l4223
	ld hl,l49af
	dec (hl)
	call l4179
	jp l4b68
.l413f
	call l4b68
	ld a,(l4bd8)
	ld l,a
	ld h,#07
	jp l43ac
.l414b
	ld hl,#0800
	call l43ac
	inc h
	call l43ac
	inc h
	call l43ac
	ld hl,#073f
	jp l43ac
.l415f
	ld a,(l49a9)
	or a
	ret m
	ld ix,l49f8
	call l4288
	ld ix,l4a3a
	call l4288
	ld ix,l4a7c
	call l4288
.l4179
	ld a,(l4bd8)
	ld d,a
	and #24
	ld b,a
	ld a,e
	and #12
	ld c,a
	ld a,d
	and #09
	ld d,a
	ld a,(l49a8)
	ld e,a
	ld a,(l4e7a)
	or a
	jr z,l4197
	ld a,e
	and #f6
	or d
	ld e,a
.l4197
	ld a,(l4eae)
	or a
	jr z,l41a2
	ld a,e
	and #ed
	or c
	ld e,a
.l41a2
	ld a,(l4ee2)
	or a
	jr z,l41ad
	ld a,e
	and #db
	or b
	ld e,a
.l41ad
	ld a,e
	ld (l49a8),a
	ld a,(l49a8)
	ld h,#07
	call l43ad
	ld ix,l49f8
	call l41cb
	ld ix,l4a3a
	call l41cb
	ld ix,l4a7c
.l41cb
	ld a,(ix+#41)
	or a
	jp z,l41da
	ld h,(ix+#1d)
	xor a
	ld (l49b4),a
	ret
.l41da
	ld a,(ix+#3d)
	ld h,(ix+#1b)
	call l43b8
	ld a,(ix+#3e)
	inc h
	call l43b8
	ld h,(ix+#1d)
	ld a,(ix+#40)
	call l43b8
	ld a,(ix+#19)
	or a
	jp z,l41fd
	jp l4207
.l41fd
	ld a,(ix+#1a)
	or a
	ret z
	ld a,(ix+#3a)
	or a
	ret z
.l4207
	ld a,(ix+#40)
	ld (l49b4),a
	ld a,(ix+#38)
	ld (l49b5),a
	ld a,(l4bd8)
	and #38
	cp #38
	ret nz
	ld a,(ix+#3f)
	ld h,#06
	jp l43b8
.l4223
	bit 0,(ix+#17)
	jp z,l423f
	ld a,(ix+#2e)
	or a
	jp nz,l423c
	res 0,(ix+#17)
	set 1,(ix+#17)
	jp l423f
.l423c
	dec (ix+#2e)
.l423f
	bit 0,(ix+#15)
	jp z,l4288
	ld a,(ix+#26)
	or a
	jp z,l4253
	dec (ix+#26)
	jp l4288
.l4253
	ld l,(ix+#29)
	ld h,(ix+#2a)
	ld e,(ix+#2b)
	ld d,(ix+#2c)
	ld c,(ix+#27)
	ld b,(ix+#28)
	add hl,bc
	push hl
	and a
	sbc hl,de
	pop hl
	bit 1,(ix+#15)
	jp z,l4278
	jp nc,l427b
	jp l427c
.l4278
	jp nc,l427c
.l427b
	ex de,hl
.l427c
	ld (ix+#29),l
	ld (ix+#2a),h
	ld (ix+#3d),l
	ld (ix+#3e),h
.l4288
	ld a,(ix+#1a)
	or a
	jp z,l42a1
	ld a,(ix+#3a)
	or a
	jp nz,l429e
	ld hl,l49a8
	ld a,(ix+#22)
	or (hl)
	ld (hl),a
.l429e
	dec (ix+#3a)
.l42a1
	ld a,(ix+#18)
	or a
	jp z,l42f0
	ld l,(ix+#06)
	ld h,(ix+#07)
.l42ae
	ld a,(hl)
	inc hl
	cp #80
	jp z,l42f0
	cp #81
	jp nz,l42cd
	ld e,(hl)
	ld d,#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	add hl,de
	ld (ix+#06),l
	ld (ix+#07),h
	jp l42ae
.l42cd
	ld (ix+#06),l
	ld (ix+#07),h
	add (ix+#37)
	ld (ix+#37),a
	add a
	ld e,a
	ld d,#00
	ld hl,l4828
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#29),e
	ld (ix+#2a),d
	ld (ix+#3d),e
	ld (ix+#3e),d
.l42f0
	ld a,(ix+#19)
	or a
	jp z,l4332
	ld l,(ix+#08)
	ld h,(ix+#09)
.l42fd
	ld a,(hl)
	inc hl
	cp #80
	jp z,l4332
	cp #81
	jp nz,l431b
	ld e,(hl)
	ld d,#00
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	add hl,de
	ld (ix+#08),l
	ld (ix+#09),h
	jr l42fd
.l431b
	ld (ix+#08),l
	ld (ix+#09),h
	add (ix+#38)
	ld (ix+#38),a
	ld e,a
	ld d,#00
	ld hl,l48e8
	add hl,de
	ld a,(hl)
	ld (ix+#3f),a
.l4332
	bit 1,(ix+#17)
	jp z,l4379
	ld a,(ix+#33)
	or a
	jp z,l4346
	dec (ix+#33)
	jp l4379
.l4346
	ld a,(ix+#34)
	xor (ix+#30)
	ld (ix+#34),a
	ld e,a
	ld d,#00
	ld l,(ix+#29)
	ld h,(ix+#2a)
	ld a,(ix+#15)
	or a
	jp z,l436a
	bit 2,(ix+#15)
	jp z,l436a
	add hl,de
	jp l436d
.l436a
	and a
	sbc hl,de
.l436d
	ld (ix+#3d),l
	ld (ix+#3e),h
	ld a,(ix+#32)
	ld (ix+#33),a
.l4379
	ld a,(ix+#14)
	or a
	ret z
	ld a,(ix+#36)
	or a
	jp nz,l43a8
	ld l,(ix+#0a)
	ld h,(ix+#0b)
	ld a,(hl)
	inc hl
	cp #ff
	ret z
	ld (ix+#36),a
	ld a,(hl)
	inc hl
	cp (ix+#1e)
	jp c,l439e
	ld a,(ix+#1e)
.l439e
	ld (ix+#40),a
	ld (ix+#0a),l
	ld (ix+#0b),h
	ret
.l43a8
	dec (ix+#36)
	ret
.l43ac
	ld a,l
.l43ad
	exx
	ld b,#f6
	ld de,#80c0
	ld h,#00
	exx
	ld b,#f4
.l43b8
	out (c),h
	exx
	out (c),e
	out (c),h
	exx
	out (c),a
	exx
	out (c),d
	out (c),h
	exx
	ret
	out (c),h
	exx
	out (c),e
	out (c),h
	exx
	out (c),a
	exx
	out (c),d
	out (c),h
	exx
	ret
.l43da
	ld a,(ix+#25)
	or a
	call z,l43e5
	dec (ix+#25)
	ret
.l43e5
	ld l,(ix+#04)
	ld h,(ix+#05)
	ld (ix+#0a),l
	ld (ix+#0b),h
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	ld (ix+#06),l
	ld (ix+#07),h
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	ld (ix+#08),l
	ld (ix+#09),h
	ld a,(ix+#2d)
	ld (ix+#2e),a
	ld a,(ix+#16)
	ld (ix+#17),a
	ld a,(ix+#39)
	ld (ix+#3a),a
	ld a,(ix+#1a)
	or a
	jp z,l4430
	ld hl,l49a8
	ld a,(ix+#21)
	and (hl)
	ld (hl),a
	ld a,(ix+#3b)
	ld (ix+#3f),a
.l4430
	ld (ix+#15),#00
	ld (ix+#38),#00
	ld l,(ix+#00)
	ld h,(ix+#01)
	push hl
	pop iy
	ld l,(ix+#02)
	ld h,(ix+#03)
.l4447
	ld a,(hl)
	inc hl
	cp #60
	jp c,l4731
	cp #ff
	jp z,l44b0
	cp #65
	jp z,l4729
	jp nc,l447d
	cp #64
	jr nz,l4467
	ld a,(hl)
	inc hl
	ld (ix+#23),a
	jp l4447
.l4467
	cp #61
	jp z,l46e8
	cp #60
	jp z,l46fc
	cp #62
	jp z,l4717
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l4447
.l447d
	cp #c0
	jp nc,l448a
	sub #7f
	ld (ix+#24),a
	jp l4447
.l448a
	cp #e0
	jp c,l45be
	jp z,l4500
	cp #f0
	jp nc,l44a8
	ld b,a
	ld a,(l49b3)
	or a
	jp m,l4447
	ld a,b
	sub #e0
	ld (ix+#1e),a
	jp l4447
.l44a8
	sub #ef
	ld (l49ae),a
	jp l4447
.l44b0
	ld a,(iy+#00)
	or (iy+#01)
	jp z,l44c6
	ld l,(iy+#00)
	ld h,(iy+#01)
	inc iy
	inc iy
	jp l4447
.l44c6
	ld l,(ix+#12)
	ld h,(ix+#13)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	or e
	jp z,l44e6
	ld a,d
	and e
	cp #ff
	jp z,l44fa
	ld (ix+#12),l
	ld (ix+#13),h
	ex de,hl
	jp l4447
.l44e6
	ld l,(ix+#10)
	ld h,(ix+#11)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#12),l
	ld (ix+#13),h
	ex de,hl
	jp l4447
.l44fa
	ld a,#ff
	ld (l49a9),a
	ret
.l4500
	ld b,(hl)
	inc hl
	ld a,(hl)
	ld (l4561),a
	inc hl
	ld a,(hl)
	ld (l4550),a
	push af
	inc hl
	push hl
	set 0,(ix+#15)
	ld a,b
	ld (l452d),a
	and #0f
	ld (l453f),a
	ld e,a
	ld d,#00
	ld bc,(l49ae)
	ld b,#00
	ld a,#08
	call l480e
	ld (ix+#26),c
.l452d equ $ + 1
	ld a,#00
	rrca
	rrca
	rrca
	rrca
	and #0f
	xor #0f
	inc a
	ld c,a
	ld b,#00
	push bc
	ld a,(ix+#24)
.l453f equ $ + 1
	sub #00
	ld e,a
	ld d,#00
	ld bc,(l49ae)
	ld b,#00
	ld a,#08
	call l480e
	push bc
.l4550 equ $ + 1
	ld a,#00
	add (ix+#23)
	add a
	ld e,a
	ld d,#00
	ld hl,l4828
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
.l4561 equ $ + 1
	ld a,#00
	add (ix+#23)
	add a
	ld e,a
	ld d,#00
	ld hl,l4828
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#2b),e
	ld (ix+#2c),d
	pop hl
	res 1,(ix+#15)
	push hl
	and a
	sbc hl,de
	pop hl
	jp nc,l4588
	ex de,hl
	set 1,(ix+#15)
.l4588
	and a
	sbc hl,de
	ld b,h
	ld c,l
	ld a,b
	or c
	jr nz,l4594
	ld bc,#0001
.l4594
	pop de
	call l47ed
	ld a,b
	or c
	jr nz,l459f
	ld bc,#0001
.l459f
	pop de
	ld a,#0c
	call l480e
	bit 1,(ix+#15)
	jr nz,l45b3
	ld hl,#0000
	and a
	sbc hl,bc
	ld b,h
	ld c,l
.l45b3
	ld (ix+#27),c
	ld (ix+#28),b
	pop hl
	pop af
	jp l4731
.l45be
	push hl
	push iy
	ex af,af'
	xor a
	ld (l46ab),a
	ex af,af'
	sub #c0
	ld (ix+#3c),a
	add a
	ld e,a
	ld d,#00
	ld hl,(l4002)
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	pop iy
	ld hl,l49a8
	ld a,(iy+#06)
	or (iy+#07)
	jp nz,l461c
	ld a,(iy+#00)
	or (iy+#01)
	jp z,l461c
	ld (ix+#1a),#ff
	ld a,(iy+#00)
	ld (ix+#39),a
	ld (ix+#3a),a
	ld e,(iy+#01)
	ld d,#00
	ld hl,l48e8
	add hl,de
	ld c,(hl)
	ld hl,l49a8
	ld a,(ix+#21)
	and (hl)
	ld (hl),a
	ld (ix+#3f),c
	ld (ix+#3b),c
	ld a,#01
	ld (l46ab),a
	jp l4620
.l461c
	ld (ix+#1a),#00
.l4620
	ld a,(iy+#02)
	or (iy+#03)
	jp nz,l4630
	res 0,(ix+#16)
	jp l465b
.l4630
	set 0,(ix+#16)
	set 0,(ix+#17)
	ld a,(iy+#02)
	ld c,a
	and #0f
	ld (ix+#32),a
	ld (ix+#33),a
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#2f),a
	ld a,(iy+#03)
	ld (ix+#2d),a
	ld (ix+#2e),a
	ld (ix+#34),#00
.l465b
	ld e,(iy+#04)
	ld d,(iy+#05)
	ld a,d
	or e
	jp z,l467e
	ld (ix+#06),e
	ld (ix+#07),d
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#18),#ff
	ld a,(ix+#1f)
	and (hl)
	ld (hl),a
	jp l4687
.l467e
	ld a,(ix+#20)
	or (hl)
	ld (hl),a
	ld (ix+#18),#00
.l4687
	ld e,(iy+#06)
	ld d,(iy+#07)
	ld a,d
	or e
	jp z,l46aa
	ld (ix+#08),e
	ld (ix+#09),d
	ld (ix+#0e),e
	ld (ix+#0f),d
	ld (ix+#19),#ff
	ld a,(ix+#21)
	and (hl)
	ld (hl),a
	jp l46b9
.l46ab equ $ + 1
.l46aa
	ld a,#00
	or a
	jp nz,l46b5
	ld a,(ix+#22)
	or (hl)
	ld (hl),a
.l46b5
	ld (ix+#19),#00
.l46b9
	ld e,(iy+#08)
	ld d,(iy+#09)
	ld a,d
	or e
	jp z,l46da
	ld (ix+#04),e
	ld (ix+#05),d
	ld (ix+#0a),e
	ld (ix+#0b),d
	ld (ix+#14),#ff
	pop iy
	pop hl
	jp l4447
.l46da
	ld (ix+#40),#00
	ld (ix+#14),#00
	pop iy
	pop hl
	jp l4447
.l46e8
	ld a,(hl)
	inc hl
	dec iy
	dec iy
	dec iy
	ld (iy+#00),a
	ld (iy+#01),l
	ld (iy+#02),h
	jp l4447
.l46fc
	dec (iy+#00)
	jp z,l470e
	jp m,l470e
	ld l,(iy+#01)
	ld h,(iy+#02)
	jp l4447
.l470e
	inc iy
	inc iy
	inc iy
	jp l4447
.l4717
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	dec iy
	dec iy
	ld (iy+#00),l
	ld (iy+#01),h
	ex de,hl
	jp l4447
.l4729
	ld a,#ff
	ld (l49ad),a
	jp l4447
.l4731
	push hl
	ld (ix+#36),#00
	add (ix+#23)
	ld (ix+#37),a
	add a
	ld e,a
	ld d,#00
	ld hl,l4828
	add hl,de
	srl e
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#29),l
	ld (ix+#2a),h
	ld (ix+#3d),l
	ld (ix+#3e),h
	ld a,(ix+#19)
	or a
	jp z,l4768
	ld hl,l48e8
	add hl,de
	ld a,(hl)
	ld (ix+#3f),a
	ld (ix+#38),e
.l4768
	ld a,(ix+#24)
	ld (ix+#25),a
	ld a,(ix+#16)
	or a
	jp z,l47b4
	ld (ix+#34),#00
	ld c,(ix+#2f)
	ld a,e
	cp #3c
	ld a,#42
	jp nc,l478d
	ld hl,l4948
	add hl,de
	ld a,(hl)
	or a
	jp z,l47b1
.l478d
	ld e,a
	and #0f
	jp z,l47b1
	ld b,a
	ld a,e
	bit 7,a
	jp nz,l47ab
	bit 6,a
	jp nz,l47a5
.l479f
	sla c
	djnz l479f
	jr l47b1
.l47a5
	srl c
	djnz l47a5
	jr l47b1
.l47ab
	ld a,c
	cp b
	jp c,l47b1
	ld c,b
.l47b1
	ld (ix+#30),c
.l47b4
	pop hl
	ld (ix+#02),l
	ld (ix+#03),h
	push iy
	pop hl
	ld (ix+#00),l
	ld (ix+#01),h
	ret
	ld a,(l49a8)
	and (ix+#1f)
	ld (l49a8),a
	ret
	ld a,(l49a8)
	and (ix+#21)
	ld (l49a8),a
	ret
	ld a,(l49a8)
	or (ix+#20)
	ld (l49a8),a
	ret
	ld a,(l49a8)
	or (ix+#22)
	ld (l49a8),a
	ret
.l47ed
	push hl
	ld hl,#0000
	ld a,#10
.l47f3
	ex af,af'
	sla c
	rl b
	adc hl,hl
	ld a,h
	cp d
	jp nz,l4801
	ld a,l
	cp e
.l4801
	jp c,l4807
	sbc hl,de
	inc bc
.l4807
	ex af,af'
	dec a
	jp nz,l47f3
	pop hl
	ret
.l480e
	push de
	push hl
	ld hl,#0000
.l4813
	srl d
	rr e
	jp nc,l481b
	add hl,bc
.l481b
	sla c
	rl b
	dec a
	jp nz,l4813
	ld b,h
	ld c,l
	pop hl
	pop de
	ret
.l4828
	dw #0eef,#0e18,#0d4d,#0c8e
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
.l48e8
	db #1f,#1f,#1f,#1e,#1e,#1e,#1d,#1d
	db #1d,#1c,#1c,#1c,#1b,#1b,#1b,#1a
	db #1a,#1a,#19,#19,#19,#18,#18,#18
	db #17,#17,#17,#16,#16,#16,#15,#15
	db #15,#14,#14,#14,#13,#13,#13,#12
	db #12,#12,#11,#11,#11,#10,#10,#10
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#05
	db #05,#04,#04,#04,#03,#03,#03,#02
	db #02,#02,#01,#01,#01,#00,#00,#00
.l4948
	db #03,#03,#03,#03,#03,#03,#03,#03
	db #03,#03,#03,#03,#02,#02,#02,#02
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #8e,#8e,#8c,#8c,#8b,#8b,#8a,#8a
	db #89,#41,#41,#41,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42,#42
	db #42,#42,#42,#42,#42,#42,#42,#42
.l49a8
	db #3f
.l49af equ $ + 6
.l49ae equ $ + 5
.l49ad equ $ + 4
.l49ab equ $ + 2
.l49aa equ $ + 1
.l49a9
	db #01,#01,#01,#00,#01,#06,#01,#01
.l49b5 equ $ + 4
.l49b4 equ $ + 3
.l49b3 equ $ + 2
	db #01,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l49ca equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l49e0 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l49fa equ $ + 4
.l49f8 equ $ + 2
.l49f6
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
.l4a0c equ $ + 6
.l4a0a equ $ + 4
.l4a08 equ $ + 2
	db #01,#00,#01,#00,#01,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#01,#08
.l4a1d equ $ + 7
.l4a1b equ $ + 5
	db #0f,#fe,#01,#f7,#08,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a3c equ $ + 6
.l4a3a equ $ + 4
.l4a39 equ $ + 3
	db #00,#00,#00,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
.l4a4c equ $ + 6
.l4a4a equ $ + 4
	db #01,#00,#01,#00,#01,#00,#01,#00
.l4a4e
	db #00,#00,#00,#00,#00,#00,#00,#02
.l4a5d equ $ + 7
	db #03,#09,#0f,#fd,#02,#ef,#10,#00
.l4a5f equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a7c equ $ + 6
.l4a7b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#01,#00
.l4a7e
	db #01,#00,#01,#00,#01,#00,#01,#00
.l4a8c equ $ + 6
	db #01,#00,#01,#00,#01,#00,#01,#00
.l4a90 equ $ + 2
.l4a8e
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#04,#05,#0a,#0f,#fb,#04,#df
.l4aa1 equ $ + 3
.l4a9f equ $ + 1
	db #20,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4abd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4abe
	ld a,(l49aa)
	or a
	ret m
	ld d,#00
	ld hl,l500c
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	pop ix
	ld a,(ix+#00)
	ld iy,l4ee0
	jr l4add
	ld iy,l4eac
.l4add
	ld l,(iy+#32)
	ld h,(iy+#33)
	ld de,#0041
	add hl,de
	ld (hl),#ff
	ld (iy+#02),#ff
	push ix
	pop hl
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (iy+#04),e
	ld (iy+#05),d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (iy+#06),e
	ld (iy+#07),d
	ld (iy+#0c),e
	ld (iy+#0d),d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (iy+#08),e
	ld (iy+#09),d
	ld (iy+#0e),e
	ld (iy+#0f),d
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (iy+#0a),e
	ld (iy+#0b),d
	ld (iy+#10),e
	ld (iy+#11),d
	xor a
	ld (iy+#12),a
	ld (iy+#13),a
	ld (iy+#16),a
	ld (iy+#17),a
	ld (iy+#1a),a
	ld (iy+#1b),a
	ld (iy+#1e),a
	ld (iy+#1f),a
	ld a,(iy+#06)
	or (iy+#07)
	jr z,l4b52
	call l4e1a
	jr l4b55
.l4b52
	call l4e2e
.l4b55
	ld a,(iy+#08)
	or (iy+#09)
	jr z,l4b62
	call l4e24
	jr l4b65
.l4b62
	call l4e38
.l4b65
	jr l4b67
.l4b67
	ret
.l4b68
	ld a,(l49aa)
	or a
	ret m
	ld iy,l4e78
	ld a,(iy+#02)
	or a
	jr z,l4b91
	dec (iy+#04)
	jp p,l4b88
	dec (iy+#04)
	jp p,l4b88
	call l4dfe
	jr l4b91
.l4b88
	call l4bd9
	call l4cd8
	call l4dca
.l4b91
	ld iy,l4eac
	ld a,(iy+#02)
	or a
	jr z,l4bb4
	dec (iy+#04)
	jr nz,l4bab
	dec (iy+#04)
	jp p,l4bab
	call l4dfe
	jr l4bb4
.l4bab
	call l4bd9
	call l4cd8
	call l4dca
.l4bb4
	ld iy,l4ee0
	ld a,(iy+#02)
	or a
	jr z,l4bd7
	dec (iy+#04)
	jr nz,l4bce
	dec (iy+#04)
	jp p,l4bce
	call l4dfe
	jr l4bd7
.l4bce
	call l4bd9
	call l4cd8
	call l4dca
.l4bd7
	ret
.l4bd8
	ccf
.l4bd9
	ld a,(iy+#06)
	or (iy+#07)
	ret z
	ld a,(iy+#12)
	or a
	jr z,l4bea
	dec (iy+#12)
	ret
.l4bea
	ld l,(iy+#0c)
	ld h,(iy+#0d)
	ld a,(hl)
	inc hl
	ld (iy+#0c),l
	ld (iy+#0d),h
	or a
	jp m,l4c3a
	ld e,a
	ld d,#00
	ld c,(iy+#18)
	ld b,(iy+#19)
	ld a,b
	or c
	jr z,l4c24
	ld a,b
	or a
	jp m,l4c1a
	ld l,(iy+#24)
	ld h,(iy+#25)
	and a
	sbc hl,de
	jp l4e51
.l4c1a
	ld l,(iy+#24)
	ld h,(iy+#25)
	add hl,de
	jp l4e51
.l4c24
	ld a,(iy+#1a)
	or a
	ld a,e
	jp m,l4c32
	add (iy+#20)
	jp l4e42
.l4c32
	ld l,a
	ld a,(iy+#20)
	sub l
	jp l4e42
.l4c3a
	cp #80
	jr nz,l4c49
	ld a,(hl)
	inc hl
	ld (iy+#0c),l
	ld (iy+#0d),h
	jp l4e42
.l4c49
	cp #81
	jr nz,l4c5c
	ld a,#01
.l4c4f
	ld (iy+#18),#00
	ld (iy+#19),#00
	ld (iy+#1a),a
	jr l4bea
.l4c5c
	cp #82
	jr nz,l4c64
	ld a,#ff
	jr l4c4f
.l4c64
	cp #83
	jr nz,l4c78
	ld bc,#0001
.l4c6b
	ld (iy+#1a),#00
	ld (iy+#18),c
	ld (iy+#19),b
	jp l4bea
.l4c78
	cp #84
	jr nz,l4c81
	ld bc,#ffff
	jr l4c6b
.l4c81
	cp #85
	jr nz,l4c91
	ld a,(hl)
	inc hl
	ld (iy+#0c),l
	ld (iy+#0d),h
	ld (iy+#12),a
	ret
.l4c91
	cp #fd
	jr nz,l4ca8
	ld e,(hl)
	ld d,#00
	ld l,(iy+#06)
	ld h,(iy+#07)
	add hl,de
	ld (iy+#0c),l
	ld (iy+#0d),h
	jp l4bea
.l4ca8
	cp #fe
	jr nz,l4cbc
	xor a
	ld (iy+#04),a
	ld (iy+#05),a
.l4cb3
	ld (iy+#06),a
	ld (iy+#07),a
	jp l4e2e
.l4cbc
	cp #ff
	jr nz,l4cc3
	xor a
	jr l4cb3
.l4cc3
	cp #d0
	jr nz,l4ccd
	call l4e38
	jp l4bea
.l4ccd
	cp #d1
	jp nz,l4bea
	call l4e1a
	jp l4bea
.l4cd8
	ld a,(iy+#08)
	or (iy+#09)
	ret z
	ld a,(iy+#14)
	or a
	jr z,l4ce9
	dec (iy+#14)
	ret
.l4ce9
	ld l,(iy+#0e)
	ld h,(iy+#0f)
	ld a,(hl)
	inc hl
	ld (iy+#0e),l
	ld (iy+#0e),h
	or a
	jp m,l4d2b
	ld c,a
	ld a,(iy+#1c)
	or a
	ld a,c
	jr z,l4d14
	jp m,l4d0e
	ld e,a
	ld a,(iy+#26)
	sub e
	jp l4e6f
.l4d0e
	add (iy+#26)
	jp l4e6f
.l4d14
	ld c,a
	ld a,(iy+#1e)
	or a
	ld a,c
	jp m,l4d23
	add (iy+#22)
	jp l4e64
.l4d23
	ld e,a
	ld a,(iy+#22)
	sub e
	jp l4e64
.l4d2b
	cp #80
	jr nz,l4d3a
	ld a,(hl)
	inc hl
	ld (iy+#0e),l
	ld (iy+#0f),h
	jp l4e64
.l4d3a
	cp #81
	jr nz,l4d48
	ld (iy+#1c),#00
	ld (iy+#1e),#01
	jr l4ce9
.l4d48
	cp #82
	jr nz,l4d56
	ld (iy+#1c),#00
	ld (iy+#1e),#ff
	jr l4ce9
.l4d56
	cp #83
	jr nz,l4d64
	ld (iy+#1e),#00
	ld (iy+#18),#01
	jr l4ce9
.l4d64
	cp #84
	jr nz,l4d73
	ld (iy+#1e),#00
	ld (iy+#1c),#ff
	jp l4ce9
.l4d73
	cp #85
	jr nz,l4d83
	ld a,(hl)
	inc hl
	ld (iy+#0e),l
	ld (iy+#0f),h
	ld (iy+#14),a
	ret
.l4d83
	cp #fd
	jr nz,l4d9a
	ld e,(hl)
	ld d,#00
	ld l,(iy+#08)
	ld h,(iy+#09)
	add hl,de
	ld (iy+#0e),l
	ld (iy+#0f),h
	jp l4ce9
.l4d9a
	cp #fe
	jr nz,l4dae
	xor a
	ld (iy+#04),a
	ld (iy+#05),a
.l4da5
	ld (iy+#08),a
	ld (iy+#09),a
	jp l4e38
.l4dae
	cp #ff
	jr nz,l4db5
	xor a
	jr l4da5
.l4db5
	cp #d0
	jr nz,l4dbf
	call l4e38
	jp l4ce9
.l4dbf
	cp #d1
	jp nz,l4ce9
	call l4e24
	jp l4ce9
.l4dca
	ld a,(iy+#0a)
	or (iy+#0b)
	ret z
	ld a,(iy+#16)
	or a
	jr nz,l4df9
	ld l,(iy+#10)
	ld h,(iy+#11)
	ld a,(hl)
	cp #ff
	ret z
	ld (iy+#16),a
	inc hl
	ld a,(hl)
	ld (iy+#2d),a
	inc hl
	ld (iy+#10),l
	ld (iy+#11),h
.l4df0
	ld h,(iy+#2c)
	ld l,(iy+#2d)
	jp l43ac
.l4df9
	dec (iy+#16)
	jr l4df0
.l4dfe
	ld (iy+#02),#00
	ld (iy+#00),#00
	call l4e2e
	call l4e38
	ld l,(iy+#32)
	ld h,(iy+#33)
	push hl
	pop ix
	ld (ix+#41),#00
	ret
.l4e1a
	ld a,(l4bd8)
	and (iy+#2e)
	ld (l4bd8),a
	ret
.l4e24
	ld a,(l4bd8)
	and (iy+#30)
	ld (l4bd8),a
	ret
.l4e2e
	ld a,(l4bd8)
	or (iy+#2f)
	ld (l4bd8),a
	ret
.l4e38
	ld a,(l4bd8)
	or (iy+#31)
	ld (l4bd8),a
	ret
.l4e42
	ld (iy+#20),a
	ld e,a
	ld d,#00
	ld hl,l4828
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.l4e51
	ld (iy+#24),l
	ld (iy+#25),h
	ex de,hl
	ld l,e
	ld h,(iy+#2a)
	call l43ac
	ld l,d
	inc h
	jp l43ac
.l4e64
	ld (iy+#22),a
	ld e,a
	ld d,#00
	ld hl,l48e8
	add hl,de
	ld a,(hl)
.l4e6f
	ld (iy+#26),a
	ld l,a
	ld h,#06
	jp l43ac
.l4e7a equ $ + 2
.l4e78
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#01,#08,#0f,#fe,#01
.l4eae equ $ + 6
.l4eac equ $ + 4
	db #f7,#08,#f8,#49,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#02,#03
	db #09,#0f,#fd,#02,#ef,#10,#3a,#4a
.l4ee2 equ $ + 2
.l4ee0
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#04,#05,#0a,#0f,#fb,#04
	db #df,#20,#7c,#4a,#00,#00,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5004 equ $ + 4
.l5000
	dw l52aa,l52b0,l5008,l5019
.l500c equ $ + 4
.l5008
	db #01,#01,#01,#00,#00,#00
	dw l5012,l5016
.l5019 equ $ + 7
.l5016 equ $ + 4
.l5012
	db #80,#c5,#85,#02,#01,#0d,#ff,#01
	db #01,#05,#00,#23,#50,#00,#00
	dw l5027
.l5027 equ $ + 4
	db #80,#30,#85,#04,#01,#0d,#01,#0c
	db #01,#0b,#01,#09,#01,#07,#ff
.l5032
	dw l5052,l505c,l5066,l5070
	dw l507a,l5084,l508e,l5098
	dw l50a2,l50ac,l50b6,l50c0
	dw l50ca,l50d4,l50de,l50e8
.l5052
	dw #0000
	dw #0000,l524d,#0000,l50f2
.l505c
	dw #0000,#0000,l524d,l529c
.l5066 equ $ + 2
	dw l50f7,#0000
	db #44,#07,#53,#52,#00,#00,#16,#51
.l5070
	db #00,#00,#28,#00,#58,#52,#00,#00
.l507a equ $ + 2
	db #2d,#51,#00,#00,#00,#00,#5c,#52
.l5084 equ $ + 4
	db #00,#00,#4e,#51,#00,#00,#00,#00
.l508e equ $ + 6
	db #62,#52,#00,#00,#6f,#51,#00,#00
	db #00,#00,#67,#52,#00,#00,#8e,#51
.l5098
	db #00,#00,#00,#00,#6e,#52,#00,#00
.l50a2 equ $ + 2
	db #a7,#51,#00,#00,#00,#07,#72,#52
.l50ac equ $ + 4
	db #00,#00,#a7,#51,#00,#00,#00,#00
.l50b6 equ $ + 6
	db #00,#00,#a0,#52,#e7,#51,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l50c0
	db #01,#48,#28,#00,#7f,#52,#00,#00
.l50ca equ $ + 2
	db #2d,#51,#00,#00,#28,#00,#7f,#52
.l50d4 equ $ + 4
	db #9c,#52,#2d,#51,#01,#48,#28,#00
.l50de equ $ + 6
	db #58,#52,#00,#00,#2d,#51,#00,#00
	db #00,#00,#62,#52,#00,#00,#4e,#51
.l50e8
	db #00,#00,#00,#00,#93,#52,#00,#00
.l50f7 equ $ + 7
.l50f2 equ $ + 2
	db #2e,#52,#06,#0f,#01,#00,#ff,#02
	db #0f,#01,#0d,#01,#0c,#01,#0b,#01
	db #0a,#01,#09,#01,#08,#01,#07,#01
	db #06,#01,#05,#01,#04,#01,#03,#01
	db #02,#01,#01,#01,#00,#ff,#04,#0f
	db #0a,#0e,#0a,#0d,#0a,#0c,#0a,#0b
	db #0a,#0a,#0a,#09,#0a,#08,#0a,#07
	db #0a,#06,#0a,#05,#ff,#0a,#0f,#0a
	db #0e,#0a,#0d,#0a,#0c,#0a,#0b,#0a
	db #0a,#0a,#09,#06,#08,#0c,#07,#0c
	db #06,#0c,#05,#0c,#04,#0c,#03,#0c
	db #02,#0c,#01,#0c,#00,#ff,#23,#0f
	db #23,#0e,#23,#0d,#23,#0c,#23,#0b
	db #23,#0a,#19,#09,#19,#08,#19,#07
	db #19,#06,#19,#05,#19,#04,#19,#03
	db #19,#02,#19,#01,#19,#00,#ff,#0a
	db #0e,#0a,#0d,#0a,#0c,#05,#0b,#05
	db #0a,#05,#09,#05,#08,#05,#07,#05
	db #06,#05,#05,#05,#04,#05,#03,#05
	db #02,#05,#01,#01,#00,#ff,#05,#0f
	db #05,#0e,#0a,#0d,#0a,#0c,#0a,#0b
	db #0a,#0a,#0a,#09,#0a,#08,#0a,#07
	db #0a,#06,#0a,#05,#01,#00,#ff,#05
	db #0f,#05,#0e,#05,#0d,#05,#0c,#05
	db #0b,#05,#0a,#05,#09,#05,#08,#05
	db #07,#05,#06,#05,#05,#05,#03,#05
	db #02,#05,#01,#05,#00,#ff,#01,#0f
	db #01,#0e,#01,#0d,#01,#0c,#01,#0b
	db #01,#0a,#01,#09,#01,#08,#01,#07
	db #01,#06,#01,#05,#01,#04,#01,#03
	db #01,#01,#01,#01,#01,#00,#ff,#01
	db #0d,#01,#00,#ff,#50,#0f,#50,#0e
	db #50,#0d,#50,#0c,#50,#0b,#50,#0a
	db #50,#09,#50,#08,#46,#07,#3c,#06
	db #32,#05,#28,#04,#1e,#03,#14,#02
	db #0a,#01,#01,#00,#ff,#19,#0f,#1b
	db #0e,#14,#0d,#14,#0c,#14,#0b,#14
	db #0a,#14,#09,#14,#08,#14,#07,#14
	db #06,#14,#05,#14,#04,#14,#03,#14
	db #02,#0a,#01,#01,#00,#ff,#05,#0f
	db #05,#0e,#05,#0d,#05,#0c,#05,#0a
	db #05,#09,#05,#08,#05,#07,#05,#06
	db #05,#05,#05,#04,#05,#03,#05,#02
.l524d equ $ + 5
	db #05,#01,#01,#00,#ff,#fc,#81,#00
	db #ff,#81,#00,#fe,#01,#01,#00,#80
	db #e0,#04,#04,#80,#0c,#00,#0c,#f4
	db #81,#01,#0f,#0c,#f4,#81,#01,#f4
	db #04,#03,#05,#f4,#81,#01,#0c,#f4
	db #00,#80,#1b,#e8,#0c,#f4,#81,#02
	db #00,#03,#04,#05,#f4,#81,#00,#fc
	db #fc,#fc,#fc,#fc,#fc,#fc,#fc,#fc
	db #fc,#fc,#fc,#30,#80,#0c,#00,#f4
	db #00,#81,#00,#0f,#0c,#f4,#81,#01
.l529c equ $ + 4
	db #40,#f0,#81,#01,#18,#f8,#81,#01
	db #01,#00,#ff,#00,#ff,#00,#01,#00
.l52aa equ $ + 2
	db #81,#00,#b6,#52,#bc,#52,#c2,#52
.l52b0
	db #c8,#52,#d8,#52,#e8,#52,#fc,#52
	db #f8,#52,#00,#00,#fc,#52,#f8,#52
	db #00,#00,#fc,#52,#f8,#52,#00,#00
	db #fc,#52,#01,#53,#22,#53,#84,#53
	db #f2,#53,#f8,#52,#f8,#52,#ff,#ff
	db #fc,#52,#11,#53,#4b,#53,#a5,#53
	db #03,#54,#f8,#52,#f8,#52,#ff,#ff
	db #fc,#52,#1a,#53,#61,#53,#d2,#53
	db #14,#54,#f8,#52,#f8,#52,#ff,#ff
	db #ca,#af,#24,#ff,#f8,#ef,#64,#00
	db #ff,#c2,#80,#2b,#2d,#2f,#82,#30
	db #34,#81,#32,#80,#2f,#2b,#2d,#2f
	db #ff,#c3,#80,#2b,#2d,#2f,#85,#30
	db #2b,#ff,#c6,#82,#37,#3c,#3c,#37
	db #37,#ff,#c2,#81,#30,#80,#34,#81
	db #37,#80,#3c,#81,#3b,#80,#39,#81
	db #37,#80,#35,#8b,#34,#81,#30,#80
	db #34,#81,#37,#80,#3c,#81,#3b,#80
	db #39,#81,#37,#80,#35,#82,#34,#35
	db #36,#37,#ff,#61,#03,#c3,#82,#30
	db #81,#30,#80,#30,#82,#2b,#81,#2b
	db #80,#2b,#60,#82,#30,#30,#2f,#2e
	db #ff,#c6,#82,#3c,#3c,#37,#37,#3c
	db #3c,#80,#37,#c7,#30,#32,#34,#35
	db #37,#c6,#82,#3c,#3c,#37,#37,#3c
	db #81,#3c,#c7,#80,#3b,#3c,#3b,#39
	db #35,#37,#38,#ff,#c2,#81,#39,#80
	db #39,#81,#39,#80,#39,#83,#32,#80
	db #34,#35,#82,#37,#34,#87,#3c,#80
	db #35,#81,#35,#80,#35,#82,#37,#37
	db #81,#34,#89,#30,#ff,#c3,#82,#2d
	db #81,#2d,#80,#2d,#82,#26,#81,#26
	db #80,#26,#82,#2b,#81,#2b,#80,#2b
	db #88,#30,#81,#29,#80,#29,#82,#2b
	db #2b,#81,#28,#80,#24,#81,#30,#80
	db #32,#81,#34,#80,#32,#81,#30,#80
	db #2f,#ff,#c6,#82,#39,#39,#32,#32
	db #37,#37,#88,#30,#82,#35,#37,#37
	db #81,#34,#80,#30,#c7,#81,#30,#80
	db #32,#81,#34,#80,#32,#81,#30,#80
	db #2f,#ff,#c2,#81,#2d,#80,#35,#81
	db #35,#80,#35,#82,#37,#37,#81,#39
	db #89,#3c,#ff,#c3,#81,#2d,#80,#29
	db #81,#29,#80,#29,#82,#2b,#2b,#81
	db #2d,#89,#30,#ff,#c6,#82,#2d,#35
	db #37,#37,#81,#39,#89,#3c,#ff
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
	db #00,#00,#00,#00,#00,#00,#00,#20
	db #0c,#92,#53,#98,#53,#8c,#53,#86
	db #53,#80,#53,#7a,#53,#18,#50,#3b
	db #50,#54,#50,#70,#50,#b0,#50,#df
	db #50,#01,#01,#0a,#00,#22,#50,#00
	db #00,#26,#50,#80,#21,#85,#0a,#01
	db #0f,#01,#00,#01,#0e,#a1,#01,#0d
	db #a1,#01,#0c,#a1,#01,#0b,#82,#0f
	db #ff,#01,#01,#05,#00,#45,#50,#00
	db #00,#49,#50,#80,#30,#85,#04,#b8
	db #97,#95,#03,#09,#01,#07,#c4,#14
	db #01,#5e,#b6,#01,#65,#97,#02,#24
	db #81,#41,#03,#e4,#0f,#03,#14,#00
	db #7a,#b9,#01,#a5,#9a,#01,#21,#80
	db #a1,#01,#2d,#80,#a1,#01,#26,#80
	db #a1,#c8,#06,#01,#39,#80,#a1,#01
	db #32,#80,#a1,#01,#45,#80,#80,#15
	db #fe,#04,#0d,#04,#0c,#04,#0b,#04
	db #0a,#04,#09,#ff,#01,#01,#28,#00
	db #ba,#50,#00,#00,#cc,#c0,#94,#06
	db #04,#84,#02,#02,#80,#1f,#c8,#01
	db #0a,#1d,#85,#0a,#05,#0d,#05,#0c
	db #05,#0b,#05,#86,#09,#09,#05,#08
	db #05,#07,#05,#06,#05,#05,#c4,#9f
	db #08,#e9,#50,#00,#00,#ed,#50,#80
	db #18,#e4,#97,#20,#00,#18,#51,#22
	db #51,#2c,#51,#36,#51,#40,#51,#4a
	db #51,#54,#51,#5e,#51,#68,#51,#72
	db #51,#7c,#51,#86,#51,#90,#51,#9a
	db #51,#a4,#51,#ae,#51,#41,#00,#02
	db #1d,#53,#82,#01,#b8,#cc,#03,#03
	db #6c,#53,#bd,#a7,#03,#44,#07,#23
	db #b1,#01,#dc,#a7,#01,#28,#80,#a7
	db #01,#fd,#c4,#23,#01,#2c,#a7,#02
	db #1e,#52,#41,#00,#01,#32,#a7,#01
	db #3f,#c4,#05,#01,#37,#a7,#01,#5e
	db #c4,#0f,#01,#3e,#a7,#01,#77,#a7
	db #03,#00,#07,#42,#d0,#02,#40,#00
	db #03,#70,#53,#b7,#cc,#03,#41,#00
	db #05,#01,#48,#28,#00,#4f,#cc,#49
	db #a7,#03,#53,#6c,#53,#88,#b1,#dc
	db #59,#c0,#56,#c8,#5e,#01,#63,#a7
	db #08,#fe,#52,#0c,#0f,#02,#00,#ff
	db #04,#83,#15,#0d,#02,#0c,#02,#0b
	db #02,#0a,#02,#09,#02,#08,#02,#07
	db #02,#06,#02,#05,#02,#04,#02,#03
	db #40,#02,#01,#01,#c4,#1a,#08,#0a
	db #0e,#0a,#0d,#0a,#0c,#0a,#0b,#40
	db #0a,#12,#09,#0a,#08,#0a,#07,#0a
	db #06,#0a,#05,#05,#04,#05,#03,#05
	db #02,#05,#01,#05,#9f,#01,#0a,#e4
	db #14,#11,#06,#08,#0c,#07,#0c,#06
	db #0c,#05,#0c,#04,#0c,#03,#0c,#02
	db #0c,#01,#0c,#9f,#1f,#23,#0f,#23
	db #0e,#23,#0d,#23,#0c,#23,#0b,#23
	db #0a,#19,#09,#19,#08,#19,#07,#19
	db #06,#19,#05,#19,#04,#19,#03,#19
	db #02,#19,#01,#19,#9f,#c8,#5b,#e9
	db #67,#d0,#59,#01,#01,#9d,#04,#05
	db #0f,#05,#0e,#c9,#90,#0b,#01,#0a
	db #01,#09,#01,#08,#01,#07,#01,#06
	db #01,#98,#e0,#0d,#e4,#2d,#d0,#91
	db #04,#01,#0f,#01,#0e,#ce,#4a,#e0
	db #2c,#03,#04,#01,#03,#42,#01,#be
	db #9b,#83,#1d,#50,#0f,#50,#0e,#50
	db #0d,#50,#0c,#50,#0b,#50,#0a,#50
	db #09,#50,#08,#46,#07,#3c,#06,#32
	db #05,#28,#04,#1e,#03,#14,#02,#0a
	db #c0,#7b,#19,#19,#0f,#1b,#0e,#14
	db #0d,#14,#0c,#14,#0b,#14,#0a,#14
	db #09,#14,#08,#14,#07,#14,#06,#14
	db #05,#14,#04,#14,#d0,#19,#d4,#97
	db #fc,#ac,#bc,#03,#fe,#81,#00,#a0
	db #01,#fe,#a8,#0c,#80,#e0,#04,#04
	db #80,#0c,#00,#0c,#f4,#81,#01,#0f
	db #a2,#05,#01,#f4,#04,#03,#05,#a4
	db #89,#98,#02,#1b,#e8,#ae,#04,#02
	db #00,#03,#04,#ae,#01,#00,#49,#fc
	db #04,#30,#80,#0c,#00,#9e,#92,#c4
	db #2c,#02,#40,#f0,#82,#02,#18,#fc
	db #82,#03,#01,#00,#ff,#80,#01,#00
	db #84,#95,#20,#0a,#6a,#55,#72,#55
	db #7a,#55,#1d,#55,#25,#55,#2d,#55
	db #dc,#54,#e4,#54,#ec,#54,#85,#54
	db #8d,#54,#95,#54,#9e,#53,#a4,#53
	db #aa,#53,#b0,#53,#ba,#53,#c4,#53
	db #d2,#53,#ce,#53,#00,#00,#c8,#00
	db #d0,#04,#04,#d7,#53,#43,#54,#88
	db #02,#ff,#ff,#88,#03,#11,#54,#5a
	db #cc,#03,#03,#2c,#54,#6d,#c4,#0f
	db #0f,#ca,#bf,#24,#ff,#f5,#ef,#64
	db #00,#ff,#c2,#81,#39,#80,#39,#36
	db #c4,#00,#83,#02,#3e,#83,#86,#04
	db #32,#34,#36,#37,#c4,#05,#01,#39
	db #e8,#0c,#01,#45,#86,#04,#37,#36
	db #34,#81,#9d,#03,#80,#3e,#42,#80
	db #07,#83,#3e,#ff,#c3,#83,#32,#2d
	db #80,#80,#91,#03,#31,#2f,#2d,#d8
	db #03,#0c,#2d,#2f,#31,#ff,#61,#04
	db #c1,#81,#24,#80,#24,#24,#c4,#00
	db #83,#a3,#40,#24,#01,#60,#e8,#24
	db #c8,#38,#06,#ca,#8f,#24,#ff,#c0
	db #83,#4a,#24,#b0,#0a,#ff,#61,#03
	db #c1,#82,#24,#80,#24,#81,#24,#99
	db #d0,#3f,#03,#60,#ca,#93,#96,#03
	db #d2,#53,#9d,#cc,#cc,#01,#b2,#cc
	db #d4,#01,#c3,#c4,#de,#0c,#c3,#80
	db #2b,#81,#2d,#80,#2f,#82,#30,#2d
	db #2b,#28,#c0,#76,#82,#06,#9f,#24
	db #ff,#c2,#80,#37,#b2,#0e,#3b,#82
	db #3c,#39,#37,#34,#84,#30,#9f,#30
	db #ff,#64,#f4,#c7,#b0,#01,#39,#cc
	db #0c,#04,#81,#30,#80,#30,#82,#95
	db #06,#64,#00,#ff,#d2,#53,#f4,#cd
	db #23,#01,#ff,#cd,#2b,#02,#0c,#55
	db #c4,#52,#15,#83,#37,#35,#34,#32
	db #85,#30,#8f,#24,#ff,#c2,#83,#43
	db #41,#40,#81,#3e,#40,#85,#3c,#8f
	db #c4,#44,#02,#83,#3c,#8a,#cc,#08
	db #c4,#3c,#01,#35,#c4,#2c,#86,#01
	db #4e,#cc,#01,#01,#5a,#c4,#3c,#05
	db #c2,#80,#24,#28,#2b,#a0,#03,#24
	db #29,#2d,#a0,#03,#2b,#2f,#32,#a0
	db #08,#82,#34,#9f,#30,#ff,#c3,#82
	db #24,#8f,#0a,#29,#2b,#2b,#28,#9f
	db #24,#ff,#64,#0c,#c6,#d8,#04,#06
	db #64,#f4,#ff,#d2,#53,#82,#cc,#46
	db #01,#8e,#cc,#4e,#01,#97,#c8,#47
	db #0e,#81,#2d,#80,#2d,#82,#29,#28
	db #24,#9f,#21,#ff,#c3,#82,#2d,#c8
	db #03,#01,#c6,#d0,#01,#01,#00,#00
	db #08,#aa,#52,#b0,#52,#08,#50,#19
	db #50,#40,#01,#40,#00,#0b,#12,#50
	db #16,#50,#80,#c5,#85,#02,#01,#0d
	db #ff,#8e,#04,#05,#00,#23,#50,#91
	db #01,#27,#8f,#03,#30,#85,#04,#8f
	db #20,#09,#01,#0c,#01,#0b,#01,#09
	db #01,#07,#ff,#52,#50,#5c,#50,#66
	db #50,#70,#50,#7a,#50,#84,#50,#8e
	db #50,#98,#50,#a2,#50,#ac,#50,#b6
	db #50,#c0,#50,#ca,#50,#d4,#50,#de
	db #50,#e8,#50,#41,#00,#02,#4d,#52
	db #82,#01,#f2,#cc,#03,#03,#9c,#52
	db #f7,#a7,#03,#44,#07,#53,#b1,#02
	db #16,#51,#82,#03,#28,#00,#58,#a7
	db #01,#2d,#a7,#80,#01,#5c,#a7,#01
	db #4e,#c4,#05,#01,#62,#a7,#01,#6f
	db #c4,#0f,#01,#67,#a7,#01,#8e,#c4
	db #19,#01,#6e,#a7,#01,#a7,#a7,#03
	db #00,#07,#72,#d0,#02,#40,#00,#03
	db #a0,#52,#e7,#cc,#03,#41,#00,#05
	db #01,#48,#28,#00,#7f,#cc,#49,#a7
	db #03,#52,#9c,#52,#88,#b1,#dc,#59
	db #c0,#56,#c8,#5e,#01,#93,#a7,#08
	db #2e,#52,#06,#0f,#01,#00,#ff,#02
	db #83,#c8,#cc,#11,#0a,#01,#09,#01
	db #08,#01,#07,#01,#06,#01,#05,#01
	db #04,#01,#03,#01,#02,#40,#01,#9d
	db #0a,#04,#0f,#0a,#0e,#0a,#0d,#0a
	db #0c,#0a,#0b,#40,#0a,#0b,#09,#0a
	db #08,#0a,#07,#0a,#06,#0a,#05,#ff
	db #0a,#e4,#0a,#20,#12,#06,#08,#0c
	db #07,#0c,#06,#0c,#05,#0c,#04,#0c
	db #03,#0c,#02,#0c,#01,#0c,#00,#ff
	db #23,#0f,#23,#0e,#23,#0d,#23,#0c
	db #23,#0b,#23,#0a,#19,#09,#19,#08
	db #19,#07,#19,#06,#19,#05,#19,#04
	db #19,#03,#19,#02,#19,#01,#19,#9f
	db #c8,#51,#0c,#05,#0b,#05,#0a,#05
	db #09,#05,#08,#05,#07,#05,#06,#40
	db #05,#06,#04,#05,#03,#05,#02,#05
	db #c0,#74,#03,#05,#0f,#05,#fc,#65
	db #cc,#12,#03,#05,#0d,#05,#f0,#2a
	db #c4,#33,#01,#05,#9d,#04,#01,#0f
	db #01,#0e,#fc,#be,#c0,#cd,#41,#01
	db #be,#9b,#83,#1d,#50,#0f,#50,#0e
	db #50,#0d,#50,#0c,#50,#0b,#50,#0a
	db #50,#09,#50,#08,#46,#07,#3c,#06
	db #32,#05,#28,#04,#1e,#03,#14,#02
	db #0a,#c0,#f3,#19,#19,#0f,#1b,#0e
	db #14,#0d,#14,#0c,#14,#0b,#14,#0a
	db #14,#09,#14,#08,#14,#07,#14,#06
	db #14,#05,#14,#04,#14,#d0,#19,#d4
	db #7e,#fc,#ac,#bc,#02,#fc,#81,#82
	db #81,#01,#fe,#a8,#0c,#80,#e0,#04
	db #04,#80,#0c,#00,#0c,#f4,#81,#01
	db #0f,#a2,#05,#01,#f4,#04,#03,#05
	db #a4,#89,#98,#02,#1b,#e8,#ae,#04
	db #02,#00,#03,#04,#ae,#01,#00,#49
	db #fc,#04,#30,#80,#0c,#00,#9e,#92
	db #c4,#2c,#02,#40,#f0,#82,#02,#18
	db #f8,#82,#03,#01,#00,#ff,#80,#01
	db #00,#84,#95,#12,#b6,#52,#bc,#52
	db #c2,#52,#c8,#52,#d8,#52,#e8,#52
	db #fc,#52,#f8,#52,#00,#00,#c8,#00
	db #d0,#04,#08,#01,#53,#22,#53,#84
	db #53,#f2,#53,#8c,#80,#02,#ff,#ff
	db #8e,#08,#11,#53,#4b,#53,#a5,#53
	db #03,#54,#d0,#08,#07,#1a,#53,#61
	db #53,#d2,#53,#14,#cc,#09,#15,#ca
	db #af,#24,#ff,#f8,#ef,#64,#00,#ff
	db #c2,#80,#2b,#2d,#2f,#82,#30,#34
	db #81,#32,#80,#2f,#a7,#02,#ff,#c3
	db #ad,#0c,#2f,#85,#30,#2b,#ff,#c6
	db #82,#37,#3c,#3c,#37,#37,#9f,#03
	db #81,#30,#80,#9c,#07,#37,#80,#3c
	db #81,#3b,#80,#39,#a5,#02,#35,#8b
	db #8c,#ec,#03,#0b,#82,#34,#35,#36
	db #37,#ff,#61,#03,#c3,#82,#30,#b8
	db #08,#30,#82,#2b,#81,#2b,#80,#2b
	db #60,#8b,#06,#30,#2f,#2e,#ff,#c6
	db #82,#c0,#42,#82,#08,#80,#37,#c7
	db #30,#32,#34,#35,#37,#cc,#09,#08
	db #81,#3c,#c7,#80,#3b,#3c,#3b,#39
	db #8f,#07,#38,#ff,#c2,#81,#39,#80
	db #39,#a1,#0f,#39,#83,#32,#80,#34
	db #35,#82,#37,#34,#87,#3c,#80,#35
	db #81,#35,#82,#89,#13,#37,#81,#34
	db #89,#30,#ff,#c3,#82,#2d,#81,#2d
	db #80,#2d,#82,#26,#81,#26,#80,#26
	db #c8,#58,#06,#88,#30,#81,#29,#80
	db #29,#8a,#8b,#09,#28,#80,#24,#81
	db #30,#80,#32,#81,#34,#a1,#86,#0e
	db #2f,#ff,#c6,#82,#39,#39,#32,#32
	db #37,#37,#88,#30,#82,#35,#c0,#3c
	db #03,#80,#30,#c7,#e4,#13,#03,#c2
	db #81,#2d,#d8,#54,#05,#39,#89,#3c
	db #ff,#c3,#ae,#01,#29,#d0,#46,#07
	db #2d,#89,#30,#ff,#c6,#82,#2d,#c0
	db #36,#b9,#02,#ff,#00,#00,#00,#50
	db #f8,#50,#0c,#50,#e6,#55,#00,#50
	db #32,#50,#04,#50,#f7,#59,#2a,#25
	db #2f,#2a,#2a,#20,#2a,#0e,#aa,#55
	db #ff
;
.init_music	; added by Megachur
;
	ld a,2
	ld e,1
	jp real_init_music
;
.music_info
	db "The Shoe People (1992)(Gremlin Graphics)()",0
	db "",0

	read "music_end.asm"
