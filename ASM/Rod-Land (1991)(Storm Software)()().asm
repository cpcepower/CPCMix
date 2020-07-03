; Music of Rod-Land (1991)(Storm Software)()()
; Ripped by Megachur the 21/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RODLAND.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 21
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #53e6

	read "music_header.asm"

;
.real_init_music
;
	xor a
	ld (l5b24),a
	ld (l5b23),a
	ld (l5b27),a
	ld (l5b1e),a
	ld (l5b1f),a
	dec a
	ld (l5b28),a
	ld a,#06
	ld (l5b20),a
	dec a
	ld (l5b21),a
	ld (l5b16),hl
	push hl
	push hl
	push hl
	push hl
	ld a,(hl)
	ld (l5b25),a
	inc hl
	ld a,(hl)
	ld (l5b26),a
	dec hl
	ld bc,#0006
	add hl,bc
	ld (l5b18),hl
	pop hl
	ld bc,#0086
	add hl,bc
	ld (l5b1a),hl
	pop hl
	ld bc,#0004
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	pop hl
	add hl,bc
	ld (l5b1c),hl
	ld hl,(l5b18)
	ld a,(hl)
	add a
	ld b,#00
	ld c,a
	ld hl,(l5b1a)
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	pop hl
	add hl,bc
	push hl
	pop ix
	ld de,#0004
	add hl,de
	ld (l5b2a),hl
	push hl
	ld e,(ix+#00)
	ld d,(ix+#01)
	add hl,de
	ld (l5b5b),hl
	pop hl
	ld e,(ix+#02)
	ld d,(ix+#03)
	add hl,de
	ld (l5b8c),hl
	xor a
	ld (l5b2d),a
	ld (l5b5e),a
	ld (l5b8f),a
	ld (l5b2c),a
	ld (l5b5d),a
	ld (l5b8e),a
	ld a,#3f
	ld (l5bd4),a
	xor a
	ld (l5b13),a
	ret
;
.stop_music
;
	push iy
	push ix
	push hl
	push de
	push bc
	push af
	ld a,#01
	ld (l5b1e),a
	xor a
	ld (l5bc5),a
	ld (l5bc6),a
	ld (l5bc7),a
	ld a,#3f
	ld (l5bc4),a
	call l55a4
	call l5b01
	pop af
	pop bc
	pop de
	pop hl
	pop ix
	pop iy
	ret
;
.play_music
;
	push iy
	push ix
	push hl
	push de
	push bc
	push af
	ld a,(l5b1e)
	and a
	jr z,l54ba
	jp l5595
.l54ba
	ld a,(l5b21)
	dec a
	ld (l5b21),a
	jr z,l54c6
	jp l557c
.l54c6
	ld a,#01
	ld (l5b22),a
	ld a,(l5b20)
	ld (l5b21),a
	ld ix,l5b2a
	call l55b0
	ld ix,l5b5b
	call l55b0
	ld ix,l5b8c
	call l55b0
	ld a,(l5b1e)
	and a
	jp nz,l5595
	ld a,(l5b27)
	cp #01
	jr nz,l5509
	xor a
	ld (l5b27),a
	ld a,(l5b28)
	cp #ff
	jr z,l5515
	push af
	ld a,#ff
	ld (l5b28),a
	pop af
	jp l5529
.l5509
	ld a,(l5b23)
	inc a
	ld (l5b23),a
	cp #40
	jp nz,l557c
.l5515
	ld a,(l5b24)
	inc a
	ld (l5b24),a
	ld bc,(l5b25)
	cp c
	jr nz,l5529
	ld a,(l5b26)
	ld (l5b24),a
.l5529
	ld b,#00
	ld c,a
	ld hl,(l5b18)
	add hl,bc
	ld a,(hl)
	ld b,#00
	add a
	ld c,a
	ld hl,(l5b1a)
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld hl,(l5b16)
	add hl,bc
	push hl
	pop ix
	ld de,#0004
	add hl,de
	ld (l5b2a),hl
	push hl
	ld e,(ix+#00)
	ld d,(ix+#01)
	add hl,de
	ld (l5b5b),hl
	pop hl
	ld e,(ix+#02)
	ld d,(ix+#03)
	add hl,de
	ld (l5b8c),hl
	xor a
	ld (l5b23),a
	ld a,(l5b2c)
	and #fe
	ld (l5b2c),a
	ld a,(l5b5d)
	and #fe
	ld (l5b2c),a
	ld a,(l5b8e)
	and #fe
	ld (l5b2c),a
.l557c
	ld ix,l5b2a
	call l58ac
	ld ix,l5b5b
	call l58ac
	ld ix,l5b8c
	call l58ac
	xor a
	ld (l5b22),a
.l5595
	call l55a4
	call l5b01
	pop af
	pop bc
	pop de
	pop hl
	pop ix
	pop iy
	ret
.l55a4
	ld hl,l5bbd
	ld de,l5bcd
	ld bc,#0010
	ldir
	ret
.l55b0
	ld a,(ix+#02)
	and #01
	jp nz,l5767
	ld l,(ix+#00)
	ld h,(ix+#01)
	push hl
	pop iy
	ld a,(iy+#00)
	bit 7,a
	jp nz,l577c
	ld a,(ix+#02)
	and #c0
	ld (ix+#02),a
	xor a
	ld (ix+#30),a
	ld (l5b29),a
	ld a,(iy+#01)
	srl a
	srl a
	srl a
	srl a
	bit 6,(iy+#00)
	jr z,l55eb
	set 4,a
.l55eb
	and a
	jr z,l55fc
	ld b,(ix+#0d)
	cp b
	jr z,l55fc
	and #1f
	ld (ix+#0d),a
	call l5811
.l55fc
	ld a,(iy+#01)
	and #0f
	ld bc,#0000
	ld c,(iy+#02)
	and a
	jr nz,l561b
	ld a,c
	and a
	jr nz,l5611
	jp l56dd
.l5611
	ld (ix+#1b),c
	set 6,(ix+#02)
	jp l56dd
.l561b
	cp #0f
	jr nz,l5626
	ld a,c
	ld (l5b20),a
	jp l56dd
.l5626
	cp #01
	jr nz,l5657
	ld de,#0000
	ld a,(iy+#00)
	and #3f
	cp #3f
	jr nz,l563c
	ld a,(ix+#04)
	jp l563f
.l563c
	add (ix+#0e)
.l563f
	ld e,a
	ld hl,l5cfd
	add hl,de
	ld a,(hl)
	and a
	jr z,l564d
	ld b,a
.l5649
	sla c
	djnz l5649
.l564d
	ld (ix+#1c),c
	set 1,(ix+#02)
	jp l56dd
.l5657
	cp #02
	jr nz,l568c
	ld de,#0000
	ld a,(iy+#00)
	and #3f
	cp #3f
	jr nz,l566d
	ld a,(ix+#04)
	jp l5670
.l566d
	add (ix+#0e)
.l5670
	ld e,a
	ld hl,l5cfd
	add hl,de
	ld a,(hl)
	and a
	jr z,l567e
	ld b,a
.l567a
	sla c
	djnz l567a
.l567e
	ld (ix+#1c),c
	set 1,(ix+#02)
	set 2,(ix+#02)
	jp l56dd
.l568c
	cp #0c
	jr nz,l56a2
	ld hl,l5dbd
	add hl,bc
	ld a,(hl)
	xor #0f
	ld (ix+#27),a
	ld a,#01
	ld (ix+#30),a
	jp l56dd
.l56a2
	cp #0d
	jr nz,l56ae
	ld a,#01
	ld (l5b27),a
	jp l56dd
.l56ae
	cp #0b
	jr nz,l56be
	ld a,#01
	ld (l5b27),a
	ld a,c
	ld (l5b28),a
	jp l56dd
.l56be
	cp #08
	jr nz,l56d4
	ld a,#01
	ld (l5b1e),a
	xor a
	ld (l5bc5),a
	ld (l5bc6),a
	ld (l5bc7),a
	jp l5751
.l56d4
	cp #07
	jr nz,l56dd
	ld a,#01
	ld (l5b29),a
.l56dd
	ld a,(iy+#00)
	and #3f
	cp #3f
	jr nz,l56e9
	jp l5751
.l56e9
	call l5798
	ld a,(ix+#30)
	and a
	jr nz,l56f5
	ld (ix+#27),a
.l56f5
	ld a,(ix+#0f)
	ld (ix+#15),a
	ld a,(ix+#10)
	ld (ix+#16),a
	ld a,(ix+#11)
	ld (ix+#17),a
	ld a,(ix+#12)
	ld (ix+#18),a
	ld a,(ix+#13)
	ld (ix+#19),a
	ld a,(ix+#14)
	ld (ix+#1a),a
	ld a,(ix+#22)
	ld (ix+#23),a
	ld a,(ix+#20)
	ld (ix+#21),a
	ld a,(ix+#24)
	ld (ix+#25),a
	ld a,(ix+#28)
	ld (ix+#29),a
	xor a
	ld (ix+#26),a
	ld (ix+#2d),a
	ld (ix+#2e),a
	bit 7,(ix+#02)
	jr z,l5751
	call l5a6c
	ld de,#0000
	ld e,#06
	ld hl,l5bbd
	add hl,de
	ld a,(ix+#2a)
	ld (hl),a
.l5751
	inc iy
	inc iy
	ld a,(l5b29)
	and a
	jr nz,l575d
	inc iy
.l575d
	push iy
	pop hl
	ld (ix+#00),l
	ld (ix+#01),h
	ret
.l5767
	ld a,(ix+#03)
	cp #01
	jr nz,l5777
	xor a
	ld (ix+#03),a
	res 0,(ix+#02)
	ret
.l5777
	dec a
	ld (ix+#03),a
	ret
.l577c
	and #7f
	jr z,l578c
	cp #01
	jr z,l578c
	dec a
	ld (ix+#03),a
	set 0,(ix+#02)
.l578c
	inc iy
	push iy
	pop hl
	ld (ix+#00),l
	ld (ix+#01),h
	ret
.l5798
	add (ix+#0e)
	ld (ix+#04),a
	ld (ix+#2b),a
	push af
	add a
	ld hl,l5bf5
	ld bc,#0000
	ld c,a
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (ix+#05),c
	ld (ix+#06),b
	pop af
	ld b,a
	ld a,(ix+#12)
	and a
	jr z,l57d4
	ld a,b
	ld hl,l5c9d
	ld bc,#0000
	ld c,a
	add hl,bc
	ld c,(hl)
	ld de,#0000
	ld e,(ix+#06)
	ld hl,l5bbd
	add hl,de
	ld (hl),c
	ld (ix+#2c),c
.l57d4
	ld a,(ix+#25)
	and a
	jr z,l5810
	ld e,(ix+#1d)
	ld bc,#0000
	ld c,(ix+#04)
	ld hl,l5d69
	ld a,(hl)
	and a
	jr z,l580a
	ld b,a
	and #0f
	bit 7,b
	jr z,l5805
	bit 6,b
	jr z,l57fd
	ld b,a
.l57f6
	sla e
	djnz l57f6
	jp l580a
.l57fd
	ld b,a
.l57fe
	srl e
	djnz l57fe
	jp l580a
.l5805
	cp e
	jr c,l5809
	ld a,e
.l5809
	ld e,a
.l580a
	ld (ix+#1e),e
	ld (ix+#1f),e
.l5810
	ret
.l5811
	ld hl,(l5b1c)
	push iy
	dec a
	add a
	ld b,#00
	ld c,a
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	push bc
	pop iy
	call l5a63
	call l5a75
	res 7,(ix+#02)
	ld a,(iy+#00)
	ld (ix+#0e),a
	ld c,(iy+#05)
	ld b,(iy+#06)
	ld (ix+#0f),c
	ld (ix+#10),b
	ld a,b
	and a
	call nz,l5a5a
	ld c,(iy+#07)
	ld b,(iy+#08)
	ld (ix+#11),c
	ld (ix+#12),b
	ld a,b
	and a
	jr z,l5859
	call l5a6c
	jp l5877
.l5859
	ld a,(iy+#01)
	and a
	jr z,l5877
	ld (ix+#28),a
	ld (ix+#29),a
	ld bc,#0000
	ld c,(iy+#02)
	ld hl,l5c9d
	add hl,bc
	ld a,(hl)
	ld (ix+#2a),a
	set 7,(ix+#02)
.l5877
	ld c,(iy+#09)
	ld b,(iy+#0a)
	ld (ix+#13),c
	ld (ix+#14),b
	xor a
	ld (ix+#24),a
	ld a,(iy+#03)
	and a
	jr z,l58a9
	push af
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld b,a
	pop af
	and #0f
	ld (ix+#1d),b
	ld (ix+#22),a
	ld a,(iy+#04)
	ld (ix+#20),a
	ld a,#01
	ld (ix+#24),a
.l58a9
	pop iy
	ret
.l58ac
	ld a,(ix+#14)
	and a
	ret z
	bit 0,(ix+#25)
	jr z,l58cc
	ld a,(ix+#21)
	and a
	jr nz,l58c8
	res 0,(ix+#25)
	set 1,(ix+#25)
	jp l58cc
.l58c8
	dec a
	ld (ix+#21),a
.l58cc
	bit 7,(ix+#02)
	jr z,l58e2
	ld a,(ix+#29)
	and a
	jr nz,l58de
	call l5a75
	jp l58e2
.l58de
	dec a
	ld (ix+#29),a
.l58e2
	ld a,(ix+#10)
	and a
	jr z,l592a
	ld l,(ix+#15)
	ld h,(ix+#16)
	ld a,(hl)
	cp #80
	jr z,l592a
	cp #81
	jr nz,l5909
	inc hl
	ld de,#0000
	ld e,(hl)
	ld l,(ix+#0f)
	ld h,(ix+#10)
	add hl,de
	ld (ix+#15),l
	ld (ix+#16),h
.l5909
	ld b,(hl)
	inc hl
	ld (ix+#15),l
	ld (ix+#16),h
	ld a,(ix+#04)
	add b
	ld (ix+#04),a
	add a
	ld de,#0000
	ld e,a
	ld hl,l5bf5
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (ix+#05),c
	ld (ix+#06),b
.l592a
	ld a,(ix+#12)
	and a
	jr z,l596c
	ld l,(ix+#17)
	ld h,(ix+#18)
	ld a,(hl)
	cp #80
	jr z,l596c
	cp #81
	jr nz,l5951
	inc hl
	ld de,#0000
	ld e,(hl)
	ld l,(ix+#11)
	ld h,(ix+#12)
	add hl,de
	ld (ix+#17),l
	ld (ix+#18),h
.l5951
	ld b,(hl)
	inc hl
	ld (ix+#17),l
	ld (ix+#18),h
	ld a,(ix+#2b)
	add b
	ld (ix+#2b),a
	ld de,#0000
	ld e,a
	ld hl,l5c9d
	add hl,de
	ld a,(hl)
	ld (ix+#2c),a
.l596c
	bit 1,(ix+#25)
	jr z,l599a
	ld a,(ix+#23)
	cp #00
	jr nz,l5996
	ld a,(ix+#22)
	ld (ix+#23),a
	ld a,(ix+#1e)
	ld b,(ix+#1f)
	xor b
	ld (ix+#1e),a
	ld de,#0000
	ld e,a
	ld (ix+#2d),e
	ld (ix+#2e),d
	jp l599a
.l5996
	dec a
	ld (ix+#23),a
.l599a
	bit 1,(ix+#02)
	jr z,l59c5
	ld a,(l5b22)
	cp #01
	jr nz,l59c5
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld de,#0000
	ld e,(ix+#1c)
	bit 2,(ix+#02)
	jr nz,l59be
	sbc hl,de
	jp l59bf
.l59be
	add hl,de
.l59bf
	ld (ix+#05),l
	ld (ix+#06),h
.l59c5
	bit 6,(ix+#02)
	jr z,l59ed
	ld a,(ix+#1b)
	rlca
	rlca
	rlca
	rlca
	ld (ix+#1b),a
	and #0f
	ld b,(ix+#04)
	add b
	add a
	ld de,#0000
	ld e,a
	ld hl,l5bf5
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (ix+#05),c
	ld (ix+#06),b
.l59ed
	ld a,(ix+#14)
	and a
	jr z,l5a33
	ld a,(ix+#26)
	and a
	jr nz,l5a19
	ld l,(ix+#19)
	ld h,(ix+#1a)
	ld a,(hl)
	cp #ff
	jr nz,l5a07
	jp l5a1d
.l5a07
	ld (ix+#26),a
	inc hl
	ld a,(hl)
	ld (ix+#2f),a
	inc hl
	ld (ix+#19),l
	ld (ix+#1a),h
	jp l5a1d
.l5a19
	dec a
	ld (ix+#26),a
.l5a1d
	ld de,#0000
	ld e,(ix+#08)
	ld hl,l5bbd
	add hl,de
	ld a,(ix+#2f)
	sub (ix+#27)
	bit 7,a
	jr z,l5a32
	xor a
.l5a32
	ld (hl),a
.l5a33
	ld l,(ix+#05)
	ld h,(ix+#06)
	ld e,(ix+#2d)
	ld d,(ix+#2e)
	sbc hl,de
	push hl
	pop bc
	ld de,#0000
	ld e,(ix+#07)
	ld hl,l5bbd
	push hl
	add hl,de
	ld (hl),c
	inc hl
	ld (hl),b
	pop hl
	ld e,#06
	add hl,de
	ld a,(ix+#2c)
	ld (hl),a
	ret
.l5a5a
	push hl
	ld hl,l5bbd
	call l5aa2
	pop hl
	ret
.l5a63
	push hl
	ld hl,l5bbd
	call l5ab2
	pop hl
	ret
.l5a6c
	push hl
	ld hl,l5bbd
	call l5ac2
	pop hl
	ret
.l5a75
	push hl
	ld hl,l5bbd
	call l5ad2
	pop hl
	ret
	push hl
	ld hl,l5bcd
	call l5aa2
	pop hl
	ret
	push hl
	ld hl,l5bcd
	call l5ab2
	pop hl
	ret
	push hl
	ld hl,l5bcd
	call l5ac2
	pop hl
	ret
	push hl
	ld hl,l5bcd
	call l5ad2
	pop hl
	ret
.l5aa2
	push de
	push af
	ld de,#0000
	ld e,#07
	add hl,de
	ld a,(hl)
	and (ix+#09)
	ld (hl),a
	pop af
	pop de
	ret
.l5ab2
	push de
	push af
	ld de,#0000
	ld e,#07
	add hl,de
	ld a,(hl)
	or (ix+#0a)
	ld (hl),a
	pop af
	pop de
	ret
.l5ac2
	push de
	push af
	ld de,#0000
	ld e,#07
	add hl,de
	ld a,(hl)
	and (ix+#0b)
	ld (hl),a
	pop af
	pop de
	ret
.l5ad2
	push de
	push af
	ld de,#0000
	ld e,#07
	add hl,de
	ld a,(hl)
	or (ix+#0c)
	ld (hl),a
	pop af
	pop de
	ret
.l5ae2
	push af
	push bc
	ld a,d
	ld c,e
	ld b,#f4
	out (c),a
	ld a,#c0
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),c
	ld bc,#f680
	out (c),c
	out (c),a
	pop bc
	pop af
	ret
.l5b01
	ld hl,l5bcd
	ld d,#00
.l5b06
	ld e,(hl)
	inc hl
	call l5ae2
	inc d
	ld a,d
	cp #0b
	jp nz,l5b06
	ret
.l5b1a equ $ + 7
.l5b18 equ $ + 5
.l5b16 equ $ + 3
.l5b13
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5b22 equ $ + 7
.l5b21 equ $ + 6
.l5b20 equ $ + 5
.l5b1f equ $ + 4
.l5b1e equ $ + 3
.l5b1c equ $ + 1
	db #00,#00,#00,#00,#00,#06,#04,#00
.l5b2a equ $ + 7
.l5b29 equ $ + 6
.l5b28 equ $ + 5
.l5b27 equ $ + 4
.l5b26 equ $ + 3
.l5b25 equ $ + 2
.l5b24 equ $ + 1
.l5b23
	db #03,#00,#00,#00,#00,#ff,#00,#09
.l5b2d equ $ + 2
.l5b2c equ $ + 1
	db #00,#82,#00,#01,#0c,#07,#00,#08
	db #fe,#01,#f7,#08,#06,#01,#00,#02
	db #03,#00,#01,#00,#00,#02,#03,#00
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#06
	db #06,#1f,#01,#00,#00,#00,#00,#00
.l5b5e equ $ + 3
.l5b5d equ $ + 2
.l5b5b
	db #09,#00,#82,#00,#01,#0c,#07,#02
	db #09,#fd,#02,#ef,#10,#06,#01,#00
	db #02,#03,#00,#01,#00,#00,#02,#03
	db #00,#01,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #06,#06,#1f,#01,#00,#00,#00,#00
.l5b8f equ $ + 4
.l5b8e equ $ + 3
.l5b8c equ $ + 1
	db #00,#09,#00,#82,#00,#01,#0c,#07
	db #04,#0a,#fb,#04,#df,#20,#06,#01
	db #00,#02,#03,#00,#01,#00,#00,#02
	db #03,#00,#01,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#06,#06,#1f,#01,#00,#00,#00
.l5bbd equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5bc7 equ $ + 4
.l5bc6 equ $ + 3
.l5bc5 equ $ + 2
.l5bc4 equ $ + 1
	db #1f,#00,#00,#00,#00,#00,#00,#00
.l5bcd equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.l5bd4 equ $ + 1
	db #1f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	dw #0eef,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
.l5bf5
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
.l5c9d
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
.l5cfd
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
	db #03,#03,#03,#03,#03,#03,#03,#03
.l5d69 equ $ + 4
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
.l5dbd
	db #00,#01,#02,#03,#04,#05,#06,#07
	db #08,#08,#08,#08,#08,#08,#08,#09
	db #09,#09,#09,#09,#09,#09,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0b,#0b,#0b
	db #0b,#0b,#0b,#0b,#0c,#0c,#0c,#0c
	db #0c,#0c,#0c,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0e,#0e,#0e,#0e,#0e,#0e
	db #0e,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f
.l5e0a
	db #07,#00,#98,#00,#25,#03,#06,#00
	db #01,#03,#02,#04,#05,#00,#00
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
	db #00,#00,#00,#00,#00,#00,#00,#98
	db #00,#0d,#01,#7f,#01,#e6,#01,#47
	db #02,#aa,#02,#15,#03,#25,#03,#00
	db #00,#28,#00,#38,#00,#14,#47,#82
	db #18,#47,#82,#18,#47,#82,#14,#47
	db #82,#18,#47,#82,#18,#47,#82,#0f
	db #47,#82,#19,#47,#82,#19,#47,#82
	db #0f,#47,#82,#19,#47,#82,#19,#47
	db #81,#3f,#0d,#00,#9c,#14,#17,#88
	db #14,#17,#88,#0f,#17,#88,#0f,#17
	db #87,#3f,#0d,#00,#9c,#20,#57,#81
	db #20,#57,#18,#57,#81,#18,#57,#1b
	db #57,#81,#1b,#57,#14,#57,#81,#14
	db #57,#18,#57,#81,#18,#57,#0f,#57
	db #81,#0f,#57,#15,#57,#81,#15,#57
	db #16,#57,#81,#16,#57,#18,#57,#81
	db #19,#57,#1b,#57,#81,#29,#17,#27
	db #17,#84,#1b,#5d,#00,#9c,#25,#00
	db #35,#00,#14,#47,#82,#18,#47,#82
	db #18,#47,#82,#14,#47,#82,#18,#47
	db #82,#18,#47,#82,#0f,#47,#82,#19
	db #47,#82,#19,#47,#82,#14,#47,#82
	db #18,#47,#84,#3f,#0d,#00,#9c,#14
	db #17,#88,#14,#17,#88,#0f,#17,#88
	db #14,#17,#87,#3f,#0d,#00,#9c,#20
	db #57,#81,#20,#57,#18,#57,#81,#18
	db #57,#1b,#57,#81,#1b,#57,#14,#57
	db #81,#14,#57,#18,#57,#81,#18,#57
	db #0f,#57,#81,#0f,#57,#16,#57,#81
	db #18,#57,#19,#57,#81,#1b,#57,#1d
	db #57,#81,#1f,#57,#20,#57,#81,#2e
	db #17,#2c,#17,#84,#2b,#1d,#00,#9c
	db #28,#00,#38,#00,#11,#47,#82,#18
	db #47,#82,#18,#47,#82,#10,#47,#82
	db #18,#47,#82,#18,#47,#82,#0d,#47
	db #82,#16,#47,#82,#16,#47,#82,#0f
	db #47,#82,#16,#47,#82,#16,#47,#81
	db #3f,#0d,#00,#9c,#11,#17,#88,#10
	db #17,#88,#0d,#17,#88,#0f,#17,#87
	db #3f,#0d,#00,#9c,#27,#17,#84,#24
	db #17,#22,#17,#81,#20,#17,#27,#17
	db #84,#24,#17,#22,#17,#81,#20,#17
	db #27,#17,#84,#22,#17,#1d,#17,#81
	db #22,#17,#20,#17,#82,#1f,#17,#82
	db #1d,#17,#81,#1b,#1d,#00,#9c,#28
	db #00,#38,#00,#11,#47,#82,#18,#47
	db #82,#18,#47,#82,#10,#47,#82,#18
	db #47,#82,#18,#47,#82,#0d,#47,#82
	db #16,#47,#82,#16,#47,#82,#0c,#47
	db #82,#14,#47,#82,#14,#47,#81,#3f
	db #0d,#00,#9c,#11,#17,#88,#10,#17
	db #88,#0d,#17,#88,#0c,#17,#87,#3f
	db #0d,#00,#9c,#2c,#17,#84,#2b,#17
	db #2c,#17,#81,#2e,#17,#2c,#17,#84
	db #2b,#17,#29,#17,#81,#27,#17,#29
	db #17,#84,#22,#17,#22,#17,#81,#29
	db #17,#27,#17,#87,#18,#2d,#00,#9c
	db #28,#00,#3b,#00,#14,#47,#82,#18
	db #47,#82,#18,#47,#82,#0f,#47,#82
	db #19,#47,#82,#19,#47,#82,#0f,#47
	db #82,#16,#47,#82,#16,#47,#82,#14
	db #47,#82,#18,#47,#82,#18,#47,#81
	db #3f,#0d,#00,#9c,#0f,#17,#88,#11
	db #17,#85,#0d,#17,#82,#0d,#17,#88
	db #0c,#17,#87,#3f,#0d,#00,#9c,#18
	db #57,#88,#19,#57,#85,#11,#57,#82
	db #11,#57,#84,#13,#57,#14,#57,#81
	db #16,#57,#14,#57,#81,#1d,#57,#1b
	db #57,#81,#19,#57,#18,#57,#81,#16
	db #5d,#00,#9c,#25,#00,#38,#00,#14
	db #47,#82,#18,#47,#82,#18,#47,#82
	db #0f,#47,#82,#19,#47,#82,#19,#47
	db #82,#0f,#47,#82,#16,#47,#82,#16
	db #47,#82,#14,#47,#82,#18,#47,#83
	db #3f,#0d,#00,#9d,#0f,#17,#88,#11
	db #17,#85,#0d,#17,#82,#0d,#17,#88
	db #0c,#17,#86,#3f,#0d,#00,#9d,#18
	db #57,#84,#17,#57,#18,#57,#81,#19
	db #57,#1b,#57,#81,#19,#57,#11,#57
	db #81,#13,#57,#14,#57,#81,#16,#57
	db #11,#57,#81,#19,#57,#18,#57,#81
	db #16,#57,#11,#57,#81,#13,#57,#14
	db #57,#86,#18,#2d,#00,#9d,#04,#00
	db #08,#00,#3f,#0d,#00,#bf,#3f,#0d
	db #00,#bf,#1b,#5d,#00,#bf,#6a,#61
	db #49,#61,#49,#61,#54,#61,#5f,#61
	db #49,#61,#49,#61,#49,#61,#49,#61
	db #49,#61,#49,#61,#49,#61,#49,#61
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#0c,#01,#48,#12,#03
	db #7d,#61,#00,#00,#a3,#61,#18,#00
	db #00,#43,#0c,#79,#61,#00,#00,#8a
	db #61,#0c,#00,#00,#00,#00,#75,#61
	db #00,#00,#81,#61,#0c,#f4,#00,#80
	db #01,#ff,#00,#80,#0c,#f4,#00,#80
	db #01,#0d,#01,#0c,#28,#0b,#01,#00
	db #ff,#01,#00,#02,#0f,#02,#0e,#04
	db #0d,#01,#0e,#40,#0f,#01,#0d,#01
	db #0b,#01,#08,#01,#06,#01,#04,#01
	db #00,#ff,#01,#0b,#02,#0d,#01,#0c
	db #01,#0d,#01,#0e,#28,#0d,#01,#00
	db #ff,#0c,#1a,#62,#33,#30,#a2,#56
	db #34,#1c,#09,#33,#28,#1a,#06,#9c
	db #86,#ca,#70,#86,#a2,#e1,#d3,#93
	db #35,#e1,#1f,#43,#49,#09,#f0,#e9
	db #19,#9a,#4d,#69,#da,#67,#19,#3a
	db #88,#a3,#89,#48,#19,#96,#99,#68
	db #23,#14,#2d,#43,#b5,#4f,#51,#fb
	db #59,#9a,#a1,#a3,#9f,#9a,#65,#88
	db #1a,#a5,#68,#19,#51,#9b,#8e,#96
	db #4e,#86,#00,#d0,#00,#00,#00,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f,#0f,#0f
	db #0f,#07,#00,#98,#00,#25,#03,#06
	db #00,#01,#03,#02,#04,#05,#00,#00
;
;	org #3f7a
;
;	ld hl,#5e0a
;	jp #53e6
;
.init_music
;
	ld hl,l5e0a	; added by Megachur
	jp real_init_music
;
.music_info
	db "Rod-Land (1991)(Storm Software)()",0
	db "",0

	read "music_end.asm"
