; Music of Back To The Future III - Intro (1990)(Image Works)()()
; Ripped by Megachur the 11/06/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "BACTTF3I.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 11
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #4000

	read "music_header.asm"

.l4004 equ $ + 4
.l4002 equ $ + 2
.l4000
	dw l4f53,l4f55,l4f55
;
.real_init_music
;
	or a
	jp z,l40f6	; play music
	dec a
	jp z,l4167	; sound fx ?
	dec a
	jp z,l4028	; play ?
	dec a
	jr z,l4021	; init music
	dec a
	jp z,l4afc	; init sound fx ?
	ld a,#ff
	ld (l49e7),a
	jp l4153	; stop music
.l4021
	ld hl,#0f02
	ld (l49e9),hl
	ret
.l4028
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
	ld (l4a46),de
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4a38),bc
	ex de,hl
	ld (l4a48),de
	ld de,l4a4a
	call l40ee
	xor a
	ld (l4a5b),a
	ld (l4a77),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4a88),de
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4a7a),bc
	ex de,hl
	ld (l4a8a),de
	ld de,l4a8c
	call l40ee
	xor a
	ld (l4a9d),a
	ld (l4ab9),a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l4aca),de
	ex de,hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l4abc),bc
	ex de,hl
	ld (l4acc),de
	ld de,l4ace
	call l40ee
	xor a
	ld (l4adf),a
	ld (l4afb),a
	xor a
	ld (l49e9),a
	ld (l49f1),a
	ld (l49eb),a
	ld (l49e7),a
	ld (l49ed),a
	ld (l4eb9),a
	ld (l4eed),a
	ld (l4f21),a
	ld (l4a59),a
	ld (l4a9b),a
	ld (l4add),a
	ld hl,l4a08
	ld (l4a36),hl
	ld hl,l4a1e
	ld (l4a78),hl
	ld hl,l4a34
	ld (l4aba),hl
	ld hl,#073f
	call l43c6
	ld hl,#0800
	call l43c6
	inc h
	call l43c6
	inc h
	call l43c6
	ld a,#3f
	ld (l49e6),a
	ld (l4c17),a
	ret
.l40ee
	xor a
	ld b,#07
.l40f1
	ld (de),a
	inc de
	djnz l40f1
	ret
;
.play_music
.l40f6
;
	ld a,(l49e7)
	or a
	jp m,l4147
	ld a,(l49ed)
	or a
	jp nz,l411f
	ld ix,l4a36
	call l43f4
	ld ix,l4a78
	call l43f4
	ld ix,l4aba
	call l43f4
	ld a,(l49ec)
	ld (l49ed),a
.l411f
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld ix,l4a36
	call l423d
	ld ix,l4a78
	call l423d
	ld ix,l4aba
	call l423d
	ld hl,l49ed
	dec (hl)
	call l418a
	jp l4ba7
.l4147
	call l4ba7
	ld a,(l4c17)
	ld l,a
	ld h,#07
	jp l43c6
;
.stop_music
.l4153
;
	ld hl,#0800
	call l43c6
	inc h
	call l43c6
	inc h
	call l43c6
	ld hl,#073f
	jp l43c6
.l4167
	ld a,(l49e7)
	or a
	ret m
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ld ix,l4a36
	call l42a2
	ld ix,l4a78
	call l42a2
	ld ix,l4aba
	call l42a2
.l418a
	ld a,(l4c17)
	ld d,a
	and #24
	ld b,a
	ld a,e
	and #12
	ld c,a
	ld a,d
	and #09
	ld d,a
	ld a,(l49e6)
	ld e,a
	ld a,(l4eb9)
	or a
	jr z,l41a8
	ld a,e
	and #f6
	or d
	ld e,a
.l41a8
	ld a,(l4eed)
	or a
	jr z,l41b3
	ld a,e
	and #ed
	or c
	ld e,a
.l41b3
	ld a,(l4f21)
	or a
	jr z,l41be
	ld a,e
	and #db
	or b
	ld e,a
.l41be
	ld a,e
	ld (l49e6),a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
	ld a,(l49e6)
	ld h,#07
	call l43c7
	ld ix,l4a36
	call l41e5
	ld ix,l4a78
	call l41e5
	ld ix,l4aba
.l41e5
	ld a,(ix+#41)
	or a
	jp z,l41f4
	ld h,(ix+#1d)
	xor a
	ld (l49f2),a
	ret
.l41f4
	ld a,(ix+#3d)
	ld h,(ix+#1b)
	call l43d2
	ld a,(ix+#3e)
	inc h
	call l43d2
	ld h,(ix+#1d)
	ld a,(ix+#40)
	call l43d2
	ld a,(ix+#19)
	or a
	jp z,l4217
	jp l4221
.l4217
	ld a,(ix+#1a)
	or a
	ret z
	ld a,(ix+#3a)
	or a
	ret z
.l4221
	ld a,(ix+#40)
	ld (l49f2),a
	ld a,(ix+#38)
	ld (l49f3),a
	ld a,(l4c17)
	and #38
	cp #38
	ret nz
	ld a,(ix+#3f)
	ld h,#06
	jp l43d2
.l423d
	bit 0,(ix+#17)
	jp z,l4259
	ld a,(ix+#2e)
	or a
	jp nz,l4256
	res 0,(ix+#17)
	set 1,(ix+#17)
	jp l4259
.l4256
	dec (ix+#2e)
.l4259
	bit 0,(ix+#15)
	jp z,l42a2
	ld a,(ix+#26)
	or a
	jp z,l426d
	dec (ix+#26)
	jp l42a2
.l426d
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
	jp z,l4292
	jp nc,l4295
	jp l4296
.l4292
	jp nc,l4296
.l4295
	ex de,hl
.l4296
	ld (ix+#29),l
	ld (ix+#2a),h
	ld (ix+#3d),l
	ld (ix+#3e),h
.l42a2
	ld a,(ix+#1a)
	or a
	jp z,l42bb
	ld a,(ix+#3a)
	or a
	jp nz,l42b8
	ld hl,l49e6
	ld a,(ix+#22)
	or (hl)
	ld (hl),a
.l42b8
	dec (ix+#3a)
.l42bb
	ld a,(ix+#18)
	or a
	jp z,l430a
	ld l,(ix+#06)
	ld h,(ix+#07)
.l42c8
	ld a,(hl)
	inc hl
	cp #80
	jp z,l430a
	cp #81
	jp nz,l42e7
	ld e,(hl)
	ld d,#00
	ld l,(ix+#0c)
	ld h,(ix+#0d)
	add hl,de
	ld (ix+#06),l
	ld (ix+#07),h
	jp l42c8
.l42e7
	ld (ix+#06),l
	ld (ix+#07),h
	add (ix+#37)
	ld (ix+#37),a
	add a
	ld e,a
	ld d,#00
	ld hl,l4866
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#29),e
	ld (ix+#2a),d
	ld (ix+#3d),e
	ld (ix+#3e),d
.l430a
	ld a,(ix+#19)
	or a
	jp z,l434c
	ld l,(ix+#08)
	ld h,(ix+#09)
.l4317
	ld a,(hl)
	inc hl
	cp #80
	jp z,l434c
	cp #81
	jp nz,l4335
	ld e,(hl)
	ld d,#00
	ld l,(ix+#0e)
	ld h,(ix+#0f)
	add hl,de
	ld (ix+#08),l
	ld (ix+#09),h
	jr l4317
.l4335
	ld (ix+#08),l
	ld (ix+#09),h
	add (ix+#38)
	ld (ix+#38),a
	ld e,a
	ld d,#00
	ld hl,l4926
	add hl,de
	ld a,(hl)
	ld (ix+#3f),a
.l434c
	bit 1,(ix+#17)
	jp z,l4393
	ld a,(ix+#33)
	or a
	jp z,l4360
	dec (ix+#33)
	jp l4393
.l4360
	ld a,(ix+#34)
	xor (ix+#30)
	ld (ix+#34),a
	ld e,a
	ld d,#00
	ld l,(ix+#29)
	ld h,(ix+#2a)
	ld a,(ix+#15)
	or a
	jp z,l4384
	bit 2,(ix+#15)
	jp z,l4384
	add hl,de
	jp l4387
.l4384
	and a
	sbc hl,de
.l4387
	ld (ix+#3d),l
	ld (ix+#3e),h
	ld a,(ix+#32)
	ld (ix+#33),a
.l4393
	ld a,(ix+#14)
	or a
	ret z
	ld a,(ix+#36)
	or a
	jp nz,l43c2
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
	jp c,l43b8
	ld a,(ix+#1e)
.l43b8
	ld (ix+#40),a
	ld (ix+#0a),l
	ld (ix+#0b),h
	ret
.l43c2
	dec (ix+#36)
	ret
.l43c6
	ld a,l
.l43c7
	exx
	ld b,#f6
	ld de,#80c0
	ld h,#00
	exx
	ld b,#f4
.l43d2
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
.l43f4
	ld a,(ix+#25)
	or a
	call z,l43ff
	dec (ix+#25)
	ret
.l43ff
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
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
	jp z,l4453
	ld hl,l49e6
	ld a,(ix+#21)
	and (hl)
	ld (hl),a
	ld a,(ix+#3b)
	ld (ix+#3f),a
.l4453
	ld (ix+#15),#00
	ld (ix+#38),#00
	ld l,(ix+#00)
	ld h,(ix+#01)
	push hl
	pop iy
	ld l,(ix+#02)
	ld h,(ix+#03)
.l446a
	ld a,(hl)
	inc hl
	cp #60
	jp c,l4766
	cp #ff
	jp z,l44d3
	cp #65
	jp z,l475e
	jp nc,l44a0
	cp #64
	jr nz,l448a
	ld a,(hl)
	inc hl
	ld (ix+#23),a
	jp l446a
.l448a
	cp #61
	jp z,l471d
	cp #60
	jp z,l4731
	cp #62
	jp z,l474c
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp l446a
.l44a0
	cp #c0
	jp nc,l44ad
	sub #7f
	ld (ix+#24),a
	jp l446a
.l44ad
	cp #e0
	jp c,l45ea
	jp z,l4523
	cp #f0
	jp nc,l44cb
	ld b,a
	ld a,(l49f1)
	or a
	jp m,l446a
	ld a,b
	sub #e0
	ld (ix+#1e),a
	jp l446a
.l44cb
	sub #ef
	ld (l49ec),a
	jp l446a
.l44d3
	ld a,(iy+#00)
	or (iy+#01)
	jp z,l44e9
	ld l,(iy+#00)
	ld h,(iy+#01)
	inc iy
	inc iy
	jp l446a
.l44e9
	ld l,(ix+#12)
	ld h,(ix+#13)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,d
	or e
	jp z,l4509
	ld a,d
	and e
	cp #ff
	jp z,l451d
	ld (ix+#12),l
	ld (ix+#13),h
	ex de,hl
	jp l446a
.l4509
	ld l,(ix+#10)
	ld h,(ix+#11)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (ix+#12),l
	ld (ix+#13),h
	ex de,hl
	jp l446a
.l451d
	ld a,#ff
	ld (l49e7),a
	ret
.l4523
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
	ld b,(hl)
	inc hl
	ld a,(hl)
	ld (l458d),a
	inc hl
	ld a,(hl)
	ld (l457c),a
	push af
	inc hl
	push hl
	set 0,(ix+#15)
	ld a,b
	ld (l4559),a
	and #0f
	ld (l456b),a
	ld e,a
	ld d,#00
	ld bc,(l49ec)
	ld b,#00
	ld a,#08
	call l484c
	ld (ix+#26),c
.l4559 equ $ + 1
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
.l456b equ $ + 1
	sub #00
	ld e,a
	ld d,#00
	ld bc,(l49ec)
	ld b,#00
	ld a,#08
	call l484c
	push bc
.l457c equ $ + 1
	ld a,#00
	add (ix+#23)
	add a
	ld e,a
	ld d,#00
	ld hl,l4866
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
.l458d equ $ + 1
	ld a,#00
	add (ix+#23)
	add a
	ld e,a
	ld d,#00
	ld hl,l4866
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
	jp nc,l45b4
	ex de,hl
	set 1,(ix+#15)
.l45b4
	and a
	sbc hl,de
	ld b,h
	ld c,l
	ld a,b
	or c
	jr nz,l45c0
	ld bc,#0001
.l45c0
	pop de
	call l482b
	ld a,b
	or c
	jr nz,l45cb
	ld bc,#0001
.l45cb
	pop de
	ld a,#0c
	call l484c
	bit 1,(ix+#15)
	jr nz,l45df
	ld hl,#0000
	and a
	sbc hl,bc
	ld b,h
	ld c,l
.l45df
	ld (ix+#27),c
	ld (ix+#28),b
	pop hl
	pop af
	jp l4766
.l45ea
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
	push hl
	push iy
	ex af,af'
	xor a
	ld (l46e0),a
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
	ld hl,l49e6
	ld a,(iy+#06)
	or (iy+#07)
	jp nz,l4651
	ld a,(iy+#00)
	or (iy+#01)
	jp z,l4651
	ld (ix+#1a),#ff
	ld a,(iy+#00)
	ld (ix+#39),a
	ld (ix+#3a),a
	ld e,(iy+#01)
	ld d,#00
	ld hl,l4926
	add hl,de
	ld c,(hl)
	ld hl,l49e6
	ld a,(ix+#21)
	and (hl)
	ld (hl),a
	ld (ix+#3f),c
	ld (ix+#3b),c
	ld a,#01
	ld (l46e0),a
	jp l4655
.l4651
	ld (ix+#1a),#00
.l4655
	ld a,(iy+#02)
	or (iy+#03)
	jp nz,l4665
	res 0,(ix+#16)
	jp l4690
.l4665
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
.l4690
	ld e,(iy+#04)
	ld d,(iy+#05)
	ld a,d
	or e
	jp z,l46b3
	ld (ix+#06),e
	ld (ix+#07),d
	ld (ix+#0c),e
	ld (ix+#0d),d
	ld (ix+#18),#ff
	ld a,(ix+#1f)
	and (hl)
	ld (hl),a
	jp l46bc
.l46b3
	ld a,(ix+#20)
	or (hl)
	ld (hl),a
	ld (ix+#18),#00
.l46bc
	ld e,(iy+#06)
	ld d,(iy+#07)
	ld a,d
	or e
	jp z,l46df
	ld (ix+#08),e
	ld (ix+#09),d
	ld (ix+#0e),e
	ld (ix+#0f),d
	ld (ix+#19),#ff
	ld a,(ix+#21)
	and (hl)
	ld (hl),a
	jp l46ee
.l46e0 equ $ + 1
.l46df
	ld a,#00
	or a
	jp nz,l46ea
	ld a,(ix+#22)
	or (hl)
	ld (hl),a
.l46ea
	ld (ix+#19),#00
.l46ee
	ld e,(iy+#08)
	ld d,(iy+#09)
	ld a,d
	or e
	jp z,l470f
	ld (ix+#04),e
	ld (ix+#05),d
	ld (ix+#0a),e
	ld (ix+#0b),d
	ld (ix+#14),#ff
	pop iy
	pop hl
	jp l446a
.l470f
	ld (ix+#40),#00
	ld (ix+#14),#00
	pop iy
	pop hl
	jp l446a
.l471d
	ld a,(hl)
	inc hl
	dec iy
	dec iy
	dec iy
	ld (iy+#00),a
	ld (iy+#01),l
	ld (iy+#02),h
	jp l446a
.l4731
	dec (iy+#00)
	jp z,l4743
	jp m,l4743
	ld l,(iy+#01)
	ld h,(iy+#02)
	jp l446a
.l4743
	inc iy
	inc iy
	inc iy
	jp l446a
.l474c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	dec iy
	dec iy
	ld (iy+#00),l
	ld (iy+#01),h
	ex de,hl
	jp l446a
.l475e
	ld a,#ff
	ld (l49eb),a
	jp l446a
.l4766
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00
	push hl
	ld (ix+#36),#00
	add (ix+#23)
	ld (ix+#37),a
	add a
	ld e,a
	ld d,#00
	ld hl,l4866
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
	jp z,l47a6
	ld hl,l4926
	add hl,de
	ld a,(hl)
	ld (ix+#3f),a
	ld (ix+#38),e
.l47a6
	ld a,(ix+#24)
	ld (ix+#25),a
	ld a,(ix+#16)
	or a
	jp z,l47f2
	ld (ix+#34),#00
	ld c,(ix+#2f)
	ld a,e
	cp #3c
	ld a,#42
	jp nc,l47cb
	ld hl,l4986
	add hl,de
	ld a,(hl)
	or a
	jp z,l47ef
.l47cb
	ld e,a
	and #0f
	jp z,l47ef
	ld b,a
	ld a,e
	bit 7,a
	jp nz,l47e9
	bit 6,a
	jp nz,l47e3
.l47dd
	sla c
	djnz l47dd
	jr l47ef
.l47e3
	srl c
	djnz l47e3
	jr l47ef
.l47e9
	ld a,c
	cp b
	jp c,l47ef
	ld c,b
.l47ef
	ld (ix+#30),c
.l47f2
	pop hl
	ld (ix+#02),l
	ld (ix+#03),h
	push iy
	pop hl
	ld (ix+#00),l
	ld (ix+#01),h
	ret
	ld a,(l49e6)
	and (ix+#1f)
	ld (l49e6),a
	ret
	ld a,(l49e6)
	and (ix+#21)
	ld (l49e6),a
	ret
	ld a,(l49e6)
	or (ix+#20)
	ld (l49e6),a
	ret
	ld a,(l49e6)
	or (ix+#22)
	ld (l49e6),a
	ret
.l482b
	push hl
	ld hl,#0000
	ld a,#10
.l4831
	ex af,af'
	sla c
	rl b
	adc hl,hl
	ld a,h
	cp d
	jp nz,l483f
	ld a,l
	cp e
.l483f
	jp c,l4845
	sbc hl,de
	inc bc
.l4845
	ex af,af'
	dec a
	jp nz,l4831
	pop hl
	ret
.l484c
	push de
	push hl
	ld hl,#0000
.l4851
	srl d
	rr e
	jp nc,l4859
	add hl,bc
.l4859
	sla c
	rl b
	dec a
	jp nz,l4851
	ld b,h
	ld c,l
	pop hl
	pop de
	ret
.l4866
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
.l4926
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
.l4986
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
.l49ed equ $ + 7
.l49ec equ $ + 6
.l49eb equ $ + 5
.l49e9 equ $ + 3
.l49e8 equ $ + 2
.l49e7 equ $ + 1
.l49e6
	db #3c,#00,#01,#00,#00,#00,#06,#04
.l49f3 equ $ + 5
.l49f2 equ $ + 4
.l49f1 equ $ + 3
	db #01,#01,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a08 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a1e
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a34 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l4a38 equ $ + 2
.l4a36
	db #08,#4a,#ef,#72,#bd,#70,#e0,#70
	db #01,#00,#bf,#70,#dc,#70,#01,#00
.l4a4a equ $ + 4
.l4a48 equ $ + 2
.l4a46
	db #81,#71,#89,#71,#ff,#00,#01,#01
	db #ff,#00,#00,#00,#01,#08,#0f,#fe
.l4a5b equ $ + 5
.l4a59 equ $ + 3
	db #01,#f7,#08,#00,#01,#00,#00,#00
	db #00,#cc,#02,#00,#00,#07,#05,#04
	db #08,#00,#03,#03,#00,#00,#1d,#1d
	db #00,#00,#00,#00,#01,#cc,#02,#00
.l4a7a equ $ + 4
.l4a78 equ $ + 2
.l4a77 equ $ + 1
	db #0f,#00,#1e,#4a,#a3,#72,#bd,#70
	db #e0,#70,#01,#00,#bf,#70,#dc,#70
.l4a8c equ $ + 6
.l4a8a equ $ + 4
.l4a88 equ $ + 2
	db #01,#00,#f3,#70,#fd,#70,#ff,#00
	db #01,#02,#ff,#00,#00,#02,#03,#09
.l4a9d equ $ + 7
.l4a9b equ $ + 5
	db #0f,#fd,#02,#ef,#10,#18,#02,#00
	db #00,#00,#00,#ef,#00,#00,#00,#07
	db #00,#04,#04,#00,#03,#01,#00,#00
	db #11,#30,#00,#00,#00,#00,#01,#ef
.l4abc equ $ + 6
.l4aba equ $ + 4
.l4ab9 equ $ + 3
	db #00,#00,#0f,#00,#34,#4a,#80,#72
	db #01,#00,#01,#00,#01,#00,#01,#00
.l4acc equ $ + 6
.l4aca equ $ + 4
	db #01,#00,#01,#00,#01,#72,#03,#72
.l4ace
	db #00,#00,#00,#00,#00,#00,#00,#04
.l4add equ $ + 7
	db #05,#0a,#0f,#fb,#04,#df,#20,#00
.l4adf equ $ + 1
	db #40,#0a,#00,#00,#00,#de,#01,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#24,#00,#00,#00,#00
.l4afb equ $ + 5
	db #00,#de,#01,#00,#00,#00
.l4afc
	ld e,a
	ld a,(l49e8)
	or a
	ret m
	ld d,#00
	ld hl,(l4004)
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	pop ix
	ld a,(ix+#00)
	ld iy,l4f1f
	jr l4b1c
	ld iy,l4eeb
.l4b1c
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
	jr z,l4b91
	call l4e59
	jr l4b94
.l4b91
	call l4e6d
.l4b94
	ld a,(iy+#08)
	or (iy+#09)
	jr z,l4ba1
	call l4e63
	jr l4ba4
.l4ba1
	call l4e77
.l4ba4
	jr l4ba6
.l4ba6
	ret
.l4ba7
	ld a,(l49e8)
	or a
	ret m
	ld iy,l4eb7
	ld a,(iy+#02)
	or a
	jr z,l4bd0
	dec (iy+#04)
	jp p,l4bc7
	dec (iy+#04)
	jp p,l4bc7
	call l4e3d
	jr l4bd0
.l4bc7
	call l4c18
	call l4d17
	call l4e09
.l4bd0
	ld iy,l4eeb
	ld a,(iy+#02)
	or a
	jr z,l4bf3
	dec (iy+#04)
	jr nz,l4bea
	dec (iy+#04)
	jp p,l4bea
	call l4e3d
	jr l4bf3
.l4bea
	call l4c18
	call l4d17
	call l4e09
.l4bf3
	ld iy,l4f1f
	ld a,(iy+#02)
	or a
	jr z,l4c16
	dec (iy+#04)
	jr nz,l4c0d
	dec (iy+#04)
	jp p,l4c0d
	call l4e3d
	jr l4c16
.l4c0d
	call l4c18
	call l4d17
	call l4e09
.l4c16
	ret
.l4c17
	ccf
.l4c18
	ld a,(iy+#06)
	or (iy+#07)
	ret z
	ld a,(iy+#12)
	or a
	jr z,l4c29
	dec (iy+#12)
	ret
.l4c29
	ld l,(iy+#0c)
	ld h,(iy+#0d)
	ld a,(hl)
	inc hl
	ld (iy+#0c),l
	ld (iy+#0d),h
	or a
	jp m,l4c79
	ld e,a
	ld d,#00
	ld c,(iy+#18)
	ld b,(iy+#19)
	ld a,b
	or c
	jr z,l4c63
	ld a,b
	or a
	jp m,l4c59
	ld l,(iy+#24)
	ld h,(iy+#25)
	and a
	sbc hl,de
	jp l4e90
.l4c59
	ld l,(iy+#24)
	ld h,(iy+#25)
	add hl,de
	jp l4e90
.l4c63
	ld a,(iy+#1a)
	or a
	ld a,e
	jp m,l4c71
	add (iy+#20)
	jp l4e81
.l4c71
	ld l,a
	ld a,(iy+#20)
	sub l
	jp l4e81
.l4c79
	cp #80
	jr nz,l4c88
	ld a,(hl)
	inc hl
	ld (iy+#0c),l
	ld (iy+#0d),h
	jp l4e81
.l4c88
	cp #81
	jr nz,l4c9b
	ld a,#01
.l4c8e
	ld (iy+#18),#00
	ld (iy+#19),#00
	ld (iy+#1a),a
	jr l4c29
.l4c9b
	cp #82
	jr nz,l4ca3
	ld a,#ff
	jr l4c8e
.l4ca3
	cp #83
	jr nz,l4cb7
	ld bc,#0001
.l4caa
	ld (iy+#1a),#00
	ld (iy+#18),c
	ld (iy+#19),b
	jp l4c29
.l4cb7
	cp #84
	jr nz,l4cc0
	ld bc,#ffff
	jr l4caa
.l4cc0
	cp #85
	jr nz,l4cd0
	ld a,(hl)
	inc hl
	ld (iy+#0c),l
	ld (iy+#0d),h
	ld (iy+#12),a
	ret
.l4cd0
	cp #fd
	jr nz,l4ce7
	ld e,(hl)
	ld d,#00
	ld l,(iy+#06)
	ld h,(iy+#07)
	add hl,de
	ld (iy+#0c),l
	ld (iy+#0d),h
	jp l4c29
.l4ce7
	cp #fe
	jr nz,l4cfb
	xor a
	ld (iy+#04),a
	ld (iy+#05),a
.l4cf2
	ld (iy+#06),a
	ld (iy+#07),a
	jp l4e6d
.l4cfb
	cp #ff
	jr nz,l4d02
	xor a
	jr l4cf2
.l4d02
	cp #d0
	jr nz,l4d0c
	call l4e77
	jp l4c29
.l4d0c
	cp #d1
	jp nz,l4c29
	call l4e59
	jp l4c29
.l4d17
	ld a,(iy+#08)
	or (iy+#09)
	ret z
	ld a,(iy+#14)
	or a
	jr z,l4d28
	dec (iy+#14)
	ret
.l4d28
	ld l,(iy+#0e)
	ld h,(iy+#0f)
	ld a,(hl)
	inc hl
	ld (iy+#0e),l
	ld (iy+#0e),h
	or a
	jp m,l4d6a
	ld c,a
	ld a,(iy+#1c)
	or a
	ld a,c
	jr z,l4d53
	jp m,l4d4d
	ld e,a
	ld a,(iy+#26)
	sub e
	jp l4eae
.l4d4d
	add (iy+#26)
	jp l4eae
.l4d53
	ld c,a
	ld a,(iy+#1e)
	or a
	ld a,c
	jp m,l4d62
	add (iy+#22)
	jp l4ea3
.l4d62
	ld e,a
	ld a,(iy+#22)
	sub e
	jp l4ea3
.l4d6a
	cp #80
	jr nz,l4d79
	ld a,(hl)
	inc hl
	ld (iy+#0e),l
	ld (iy+#0f),h
	jp l4ea3
.l4d79
	cp #81
	jr nz,l4d87
	ld (iy+#1c),#00
	ld (iy+#1e),#01
	jr l4d28
.l4d87
	cp #82
	jr nz,l4d95
	ld (iy+#1c),#00
	ld (iy+#1e),#ff
	jr l4d28
.l4d95
	cp #83
	jr nz,l4da3
	ld (iy+#1e),#00
	ld (iy+#18),#01
	jr l4d28
.l4da3
	cp #84
	jr nz,l4db2
	ld (iy+#1e),#00
	ld (iy+#1c),#ff
	jp l4d28
.l4db2
	cp #85
	jr nz,l4dc2
	ld a,(hl)
	inc hl
	ld (iy+#0e),l
	ld (iy+#0f),h
	ld (iy+#14),a
	ret
.l4dc2
	cp #fd
	jr nz,l4dd9
	ld e,(hl)
	ld d,#00
	ld l,(iy+#08)
	ld h,(iy+#09)
	add hl,de
	ld (iy+#0e),l
	ld (iy+#0f),h
	jp l4d28
.l4dd9
	cp #fe
	jr nz,l4ded
	xor a
	ld (iy+#04),a
	ld (iy+#05),a
.l4de4
	ld (iy+#08),a
	ld (iy+#09),a
	jp l4e77
.l4ded
	cp #ff
	jr nz,l4df4
	xor a
	jr l4de4
.l4df4
	cp #d0
	jr nz,l4dfe
	call l4e77
	jp l4d28
.l4dfe
	cp #d1
	jp nz,l4d28
	call l4e63
	jp l4d28
.l4e09
	ld a,(iy+#0a)
	or (iy+#0b)
	ret z
	ld a,(iy+#16)
	or a
	jr nz,l4e38
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
.l4e2f
	ld h,(iy+#2c)
	ld l,(iy+#2d)
	jp l43c6
.l4e38
	dec (iy+#16)
	jr l4e2f
.l4e3d
	ld (iy+#02),#00
	ld (iy+#00),#00
	call l4e6d
	call l4e77
	ld l,(iy+#32)
	ld h,(iy+#33)
	push hl
	pop ix
	ld (ix+#41),#00
	ret
.l4e59
	ld a,(l4c17)
	and (iy+#2e)
	ld (l4c17),a
	ret
.l4e63
	ld a,(l4c17)
	and (iy+#30)
	ld (l4c17),a
	ret
.l4e6d
	ld a,(l4c17)
	or (iy+#2f)
	ld (l4c17),a
	ret
.l4e77
	ld a,(l4c17)
	or (iy+#31)
	ld (l4c17),a
	ret
.l4e81
	ld (iy+#20),a
	ld e,a
	ld d,#00
	ld hl,l4866
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
.l4e90
	ld (iy+#24),l
	ld (iy+#25),h
	ex de,hl
	ld l,e
	ld h,(iy+#2a)
	call l43c6
	ld l,d
	inc h
	jp l43c6
.l4ea3
	ld (iy+#22),a
	ld e,a
	ld d,#00
	ld hl,l4926
	add hl,de
	ld a,(hl)
.l4eae
	ld (iy+#26),a
	ld l,a
	ld h,#06
	jp l43c6
.l4eb9 equ $ + 2
.l4eb7
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#00,#01,#08,#0f,#fe,#01
.l4eed equ $ + 6
.l4eeb equ $ + 4
	db #f7,#08,#36,#4a,#00,#00,#00,#00
	db #00,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#01,#00
	db #01,#00,#01,#00,#01,#00,#02,#03
	db #09,#0f,#fd,#02,#ef,#10,#78,#4a
.l4f21 equ $ + 2
.l4f1f
	db #00,#00,#00,#00,#ff,#00,#00,#00
	db #1b,#70,#2d,#70,#00,#00,#25,#70
	db #39,#70,#00,#00,#00,#00,#00,#00
	db #01,#00,#00,#00,#01,#00,#00,#00
	db #01,#00,#30,#00,#01,#00,#0f,#00
	db #01,#00,#04,#05,#0a,#0c,#fb,#04
	db #df,#20,#ba,#4a
.l4f55 equ $ + 2
.l4f53
	dw l4fdb,#0000,#0000,#0000
	dw l4f6b,#0000,l4f75,#0000
	dw #0000,#0000,#0000,l4f7f
.l4f6b
	dw #0000
	dw #0744,l4fca,#0000,l4f89
.l4f75
	dw #0000,#0000,l4fd1,#0000
.l4f7f equ $ + 2
	dw l4fa8,#0000,#0000,#0000
	dw #0000,#0000
.l4f89
	db #20,#0f,#20,#0e,#20,#0d,#20,#0c
	db #20,#0b,#20,#0a,#20,#09,#20,#08
	db #20,#07,#20,#06,#20,#05,#20,#04
.l4fa8 equ $ + 7
	db #20,#03,#20,#01,#01,#00,#ff,#02
	db #0f,#02,#0e,#02,#0d,#02,#0c,#02
	db #0b,#02,#0a,#02,#09,#02,#08,#02
	db #07,#02,#06,#02,#05,#02,#04,#02
	db #03,#02,#02,#02,#02,#01,#01,#00
.l4fca equ $ + 1
	db #ff,#0c,#00,#00,#00,#f4,#00,#80
.l4fd1
	db #0c,#00,#f4,#00,#04,#03,#05,#f4
	db #81,#03
.l4fe1 equ $ + 6
.l4fdb
	dw l4fe1,l4ff3,l5005,l523a
	dw l5213,l51f7,l51bf,l5179
	dw l5157,l5098,l5017,#0000
.l4ff3
	dw l523a,l5224,l51ff,l51d1
	dw l5195,l5123,l50d5,l503c
.l5005 equ $ + 2
	dw #0000,l523a,l522f,l5207
	dw l51e3,l51a6,l5101,l5078
	dw l505f,#0000
.l5017
	db #80,#14,#14,#14,#14,#81,#14,#80
	db #14,#14,#14,#14,#14,#81,#14,#80
	db #14,#14,#80,#11,#11,#11,#11,#81
	db #11,#80,#11,#11,#f6,#87,#11,#f7
.l503c equ $ + 5
	db #24,#22,#bf,#22,#ff,#85,#2c,#80
	db #2b,#29,#82,#2b,#29,#81,#27,#80
	db #29,#27,#29,#2e,#29,#27,#29,#2e
	db #29,#27,#29,#2e,#2c,#2b,#29,#27
	db #83,#2c,#2b,#29,#26,#bf,#27,#ff
.l505f
	db #85,#2c,#80,#2b,#29,#82,#2b,#29
	db #81,#27,#8f,#29,#85,#2c,#80,#2b
	db #29,#82,#2b,#29,#81,#27,#bf,#27
.l5078 equ $ + 1
	db #ff,#85,#20,#80,#1f,#1d,#82,#1f
	db #1d,#81,#1b,#85,#1d,#80,#1d,#1d
	db #81,#1d,#80,#1d,#1d,#81,#1d,#22
	db #87,#20,#27,#83,#22,#22,#27,#2e
.l5098 equ $ + 1
	db #ff,#85,#14,#80,#14,#14,#82,#14
	db #14,#81,#14,#85,#11,#80,#11,#11
	db #82,#11,#11,#81,#11,#80,#14,#14
	db #14,#14,#81,#14,#80,#14,#14,#1b
	db #1b,#1b,#81,#1b,#80,#1b,#81,#1b
	db #80,#1b,#16,#16,#16,#16,#81,#16
	db #80,#11,#16,#16,#16,#81,#16,#80
.l50d5 equ $ + 6
	db #16,#81,#16,#80,#16,#ff,#80,#14
	db #18,#1b,#20,#14,#18,#1b,#20,#1f
	db #1d,#1f,#22,#1f,#1d,#1f,#22,#1d
	db #1b,#1d,#22,#1d,#1b,#1d,#22,#1d
	db #1b,#1d,#22,#1d,#1b,#1d,#22,#83
	db #1d,#1f,#20,#22,#87,#1d,#83,#1b
.l5101 equ $ + 2
	db #22,#ff,#64,#18,#ca,#83,#24,#c3
	db #83,#16,#1b,#22,#85,#20,#80,#1f
	db #1d,#82,#1f,#1d,#81,#1b,#85,#1d
	db #80,#1d,#1d,#81,#1d,#80,#1d,#1d
.l5123 equ $ + 4
	db #81,#1d,#22,#ff,#c3,#80,#64,#00
	db #2e,#2c,#2b,#29,#27,#26,#24,#22
	db #20,#1f,#1d,#1b,#1a,#18,#16,#14
	db #61,#02,#14,#18,#1b,#20,#60,#1f
	db #1d,#1f,#22,#1f,#1d,#1f,#22,#27
	db #22,#1d,#1b,#27,#22,#1d,#1b,#27
	db #22,#1d,#1b,#1d,#22,#27,#22,#ff
.l5157
	db #c3,#64,#00,#89,#16,#80,#16,#16
	db #81,#16,#80,#16,#16,#89,#14,#80
	db #14,#14,#81,#14,#80,#14,#14,#89
	db #11,#80,#11,#11,#81,#11,#80,#11
.l5179 equ $ + 2
	db #11,#ff,#f5,#64,#0a,#61,#04,#c5
	db #80,#24,#24,#24,#24,#81,#24,#80
	db #24,#24,#24,#24,#81,#24,#80,#24
.l5195 equ $ + 6
	db #81,#24,#80,#24,#60,#ff,#64,#00
	db #61,#04,#c3,#89,#16,#80,#16,#16
.l51a6 equ $ + 7
	db #81,#16,#80,#16,#16,#60,#ff,#ca
	db #9f,#24,#c3,#64,#ff,#83,#1e,#81
	db #1f,#83,#21,#81,#1f,#83,#1e,#81
	db #1c,#83,#1e,#81,#1f,#87,#1e,#ff
.l51bf
	db #80,#2e,#2c,#2b,#29,#27,#26,#24
	db #22,#20,#1f,#1d,#1b,#1a,#18,#16
.l51d1 equ $ + 2
	db #14,#ff,#80,#13,#14,#16,#18,#1a
	db #1b,#1d,#1f,#20,#22,#24,#26,#27
.l51e3 equ $ + 4
	db #29,#2b,#2c,#ff,#64,#00,#80,#2e
	db #2c,#2b,#29,#27,#26,#24,#22,#20
	db #1f,#1d,#1b,#1a,#18,#16,#14,#ff
.l51f7
	db #64,#0c,#f3,#8f,#27,#27,#26,#ff
.l51ff
	db #64,#0c,#f3,#8f,#24,#24,#22,#ff
.l5207
	db #64,#0c,#8f,#2c,#85,#2b,#29,#83
.l5213 equ $ + 4
	db #27,#8f,#29,#ff,#c3,#64,#ff
	db #c3,#85,#28,#80,#27,#25,#82,#27
	db #25,#81,#23,#8f,#25,#ff
.l5224
	db #ca,#93,#24,#c3,#64,#0c,#83,#22
.l522f equ $ + 3
	db #27,#2e,#ff,#ca,#93,#24,#c3,#64
.l523a equ $ + 6
	db #0c,#83,#1d,#1f,#27,#ff,#f7,#ef
	db #64,#00,#ff,#00,#84,#52,#54,#52
	db #00,#00,#00,#00,#4a,#52,#00,#00
	db #44,#07,#7d,#52,#00,#00,#5e,#52
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#20,#0f,#20,#0e,#20,#0d
	db #20,#0c,#20,#0b,#20,#0a,#20,#09
	db #20,#08,#20,#07,#20,#06,#20,#05
	db #20,#04,#20,#03,#20,#01,#01,#00
	db #ff,#0c,#00,#00,#00,#f4,#00,#80
;
; #0a4f
;
.init_music		; modified by Megachur
;
	ld de,#0006
	ld a,#02
; call #4006
; ret
	jp real_init_music
;
; #0a64	; play ?
;
; xor a
; call #4006
; ld a,#01
; call #4006
; ret
;
; #0a5e	; stop
; ld a,#05
; call #4006
; ret
;
.music_info
	db "Back To The Future III - Intro (1990)(Image Works)()",0
	db "",0

	read "music_end.asm"
