; Music of Eye Spy (1985)(English Software)()()
; Ripped by Megachur the 12/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "EYESPY.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #5842

	read "music_header.asm"

.l5842
	db #fe,#b1,#00,#b2,#00,#81,#4d,#58
	db #00,#00,#00
.l584d
	push ix
	push iy
	ld hl,l7606
	dec (hl)
	call l598e	; play
	nop
	nop
	ld a,(l75b5)
	or a
	jr z,l586c
	dec a
	ld (l75b5),a
	jr nz,l586c
	ld bc,#0d0d
	call #bc38
.l586c
	pop iy
	pop ix
	ret

	call l703d	; init
	xor a
	ld (l73f4),a
	ld (l73f5),a
	dec a
	ld (l889a),a
	ld (l88ad),a
	ld hl,#0000
	ld (l73f6),hl
	ld (l73f8),hl
	xor a
	call #bc0e
	call l73a2
	ld hl,l5842
	ld de,l584d	; interrupt
	ld b,#81
	call #bcd7

.l589d
	ld a,#00
	call #bc59
	call #bca7
	call l6f22
	call l72cc
	call l7095
	call #bca7
	call l5c9b
	call l5cbc
.l58b7
	ld a,#00
	call #bc59
	call l72ad
	call l73c2
	call l6f74
	ld ix,(l75f8)
	ld l,(ix+#18)
	ld h,(ix+#19)
	call l6b8b
	call l6e9a
.l58d5
	call #bd19
	call l6bdc
	ld a,(l7609)
	and #03
	jr nz,l58ea
	ld a,#06
	ld bc,#0b0b
	call #bc32
.l58ea
	ld a,(l75d5)
	or a
	jp z,l5cd0
	ld hl,(l75c8)
	dec hl
	ld a,h
	or l
	jr nz,l5906
	ld a,(l75d4)
	dec a
	ld (l75d4),a
	jp z,l5cd0
	ld hl,#0b00
.l5906
	ld (l75c8),hl
	ld ix,(l75f8)
	ld l,(ix+#07)
	ld h,(ix+#08)
	call l6b8b
	call l5c1f
	call l6eba
	call l5950
	jp l58d5
.l5922
	call #bca7
	ld hl,l5842
	jp #bcdd
.l592b
	ld a,#c9
	ld (l598e),a
	call #bcb6
	ld a,#35
	call #bb1e
	jr nz,l592b
.l593a
	ld a,#35
	call #bb1e
	jr z,l593a
.l5941
	ld a,#35
	call #bb1e
	jr nz,l5941
	xor a
	ld (l598e),a
	call #bcb9
	ret
.l5950
	ld a,(l7609)
	inc a
	ld (l7609),a
	ld a,#1a
	call #bb1e
	pop hl
	jr nz,l5922
	push hl
	ld a,#32
	call #bb1e
	pop hl
	jp nz,l589d
	push hl
	ld a,#35
	call #bb1e
	call nz,l592b
	ld a,#26
	call #bb1e
	call nz,l597b
	ret
.l597b
	ld a,#26
	call #bb1e
	jr nz,l597b
	call #bca7
	ld a,(l598e)
	xor #c9
	ld (l598e),a
	ret
.l598e
	nop
	ld a,(l73f4)
	dec a
	ld (l73f4),a
	jr nz,l59db
	ld hl,(l73f6)
	push hl
	pop ix
	ld de,l760a
	add ix,de
	ld a,(ix+#02)
	or a
	jr nz,l59b2
	ld hl,#0000
	ld ix,l760a
	jr l59b6
.l59b2
	ld bc,#0004
	add hl,bc
.l59b6
	ld (l73f6),hl
	ld a,(ix+#02)
	ld (l73f4),a
	srl a
	srl a
	ld (l8895),a
	ld (l8898),a
	ld (l889b),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l889f),hl
	ld hl,l889c
	call #bcaa
.l59db
	nop
	ld a,(l73f5)
	dec a
	ld (l73f5),a
	ret nz
	ld hl,(l73f8)
	push hl
	pop ix
	ld de,l778e
	add ix,de
	ld a,(ix+#02)
	or a
	jr nz,l59fe
	ld hl,#0000
	ld ix,l778e
	jr l5a02
.l59fe
	ld bc,#0004
	add hl,bc
.l5a02
	ld (l73f8),hl
	ld a,(ix+#02)
	ld (l73f5),a
	srl a
	srl a
	ld (l88a8),a
	ld (l88ab),a
	ld (l88ae),a
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (l88b2),hl
	ld hl,l88af
	jp #bcaa
.l5a27
	ld a,(l75c1)
	or a
	ret nz
.l5a2c
	ld a,d
	sub #03
	cp h
	jr nc,l5a4e
	add #07
	cp h
	jr c,l5a4e
	ld a,e
	cp l
	jr nc,l5a4e
	add #0a
	cp l
	jr c,l5a4e
	ld e,l
	ld d,h
	inc d
	push de
	ld hl,l8875
	call l6f66
	pop de
	jp l6e1d
.l5a4e
	ld a,#01
	or a
	ret
	ld a,(l75b6)
	or a
	ret nz
	ld hl,(l759c)
	call l5a27
	jr nz,l5a65
	ld a,#fe
	ld (l75b6),a
	ret
.l5a65
	ld a,(l75b8)
	or a
	ret nz
	ld hl,(l7596)
	call l5a2c
	jr nz,l5a79
	ld a,#02
	ld (l75b8),a
	dec d
	ret
.l5a79
	ld a,(l75b7)
	or a
	ret nz
	ld hl,(l759a)
	call l5a2c
	ret nz
	ld a,#fe
	ld (l75b7),a
	ret
.l5a8b
	ld hl,l7f29
	ld (l73fb),hl
	ld a,#07
	ld (l73fa),a
	ld a,(l7609)
	and #01
	ret nz
	ld a,(l7603)
	or a
	jr nz,l5aaf
.l5aa2
	ld a,(l75b6)
	add e
	ld e,a
	cp #12
	ret nc
.l5aaa
	xor a
	ld (l75b6),a
	ret
.l5aaf
	push de
	ld hl,#0811
	add hl,de
	ex de,hl
	call l6e85
	pop de
	jp nz,l5ac9
	push de
	ld hl,#0810
	add hl,de
	ex de,hl
	call l6e85
	pop de
	jp z,l5aa2
.l5ac9
	ld a,d
	add #08
	ld d,a
	ld hl,l7f01
	ld (l73fb),hl
	ld a,#07
	ld (l73fa),a
	jr l5aaa
.l5ada
	ld hl,l7f29
	ld (l73fb),hl
	ld a,#07
	ld (l73fa),a
	ld a,(l7609)
	and #01
	ret nz
	ld a,(l7603)
	or a
	jr nz,l5b1f
	ld a,(l7602)
	or a
	jp nz,l5b9f
.l5af8
	ld a,(l75b7)
	add e
	ld e,a
	cp #02
	ret nc
	ld a,(ix+#13)
	ld (l75fa),a
	ld a,#b4
	ld (l75f6),a
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	ld (l75f8),hl
	pop hl
	pop hl
	ld hl,l8854
	call l6f66
	jp l58b7
.l5b1f
	push de
	ld hl,#0900
	add hl,de
	ex de,hl
	call l6e85
	pop de
	jp z,l5af8
	push de
	ld hl,#0913
	add hl,de
	ex de,hl
	call l6e85
	pop de
	jp z,l5af8
.l5b39
	ld a,d
	add #08
	jp l5ba2
.l5b3f
	ld hl,l7f31
	ld (l73fb),hl
	ld a,#07
	ld (l73fa),a
	ld a,(l7609)
	and #01
	ret z
	ld a,(l7602)
	or a
	jr nz,l5b83
	ld a,(l7603)
	or a
	jr nz,l5b39
.l5b5c
	ld a,(l75b8)
	add e
	ld e,a
	cp #b0
	ret c
	ld a,(ix+#14)
	ld (l75fa),a
	ld a,#02
	ld (l75f6),a
	ld l,(ix+#0f)
	ld h,(ix+#10)
	ld (l75f8),hl
	pop hl
	pop hl
	ld hl,l8854
	call l6f66
	jp l58b7
.l5b83
	push de
	ld a,d
	sub #05
	ld d,a
	call l6e85
	pop de
	jp z,l5b5c
	push de
	ld a,d
	sub #05
	ld d,a
	ld a,e
	add #13
	ld e,a
	call l6e85
	pop de
	jp z,l5b5c
.l5b9f
	ld a,d
	sub #07
.l5ba2
	ld d,a
	ld hl,l7f01
	ld (l73fb),hl
	ld a,#07
	ld (l73fa),a
	xor a
	ld (l75b8),a
	xor a
	ld (l75b7),a
	ret
	push de
	ld a,e
	add #12
	ld e,a
	call l6e85
	ld c,a
	and #aa
	cp #8a
	jr z,l5bdf
	cp #2a
	jr z,l5bdf
	cp #aa
	jr z,l5bdf
	ld a,c
	and #55
	cp #45
	jr z,l5bdf
	cp #15
	jr z,l5bdf
	cp #55
	jr z,l5bdf
	pop de
	ret
.l5bdf
	inc e
	call l6e85
	pop de
	ld c,a
	and #aa
	cp #80
	jr z,l5bfb
	cp #08
	jr z,l5bf9
	ld a,c
	and #55
	cp #40
	jr z,l5bfb
	cp #04
	ret nz
.l5bf9
	inc d
	ret
.l5bfb
	dec d
	ret
.l5bfd
	push ix
	ld ix,l75c5
	ld a,(ix+#02)
	add e
	daa
	ld (ix+#02),a
	ld a,(ix+#01)
	adc d
	daa
	ld (ix+#01),a
	ld a,(ix+#00)
	adc #00
	daa
	ld (ix+#00),a
	pop ix
	ret
.l5c1f
	ld de,(l75f6)
	ld ix,(l7409)
	ld b,#04
.l5c29
	ld a,(ix+#01)
	cp d
	jr nz,l5c51
	ld a,e
	sub (ix+#00)
	cp #0c
	jr nc,l5c51
	push bc
	push de
	ld bc,#99c9
	ld e,(ix+#00)
	ld d,(ix+#01)
	call l7191
	call l5c58
	pop de
	pop bc
	xor a
	ld (ix+#00),a
	ld (ix+#01),a
.l5c51
	inc ix
	inc ix
	djnz l5c29
	ret
.l5c58
	push ix
	pop hl
	ld de,l7444
	or a
	sbc hl,de
	srl h
	rr l
	ld a,l
	ld hl,(l7407)
	ld b,#08
.l5c6b
	cp (hl)
	jr z,l5c72
	inc hl
	djnz l5c6b
	ret
.l5c72
	ld hl,(l7405)
	ld (hl),#f3
	inc hl
	ld (hl),#9a
	inc hl
	inc hl
	inc hl
	ld (l7405),hl
	ld bc,#0b0b
	call #bc38
	ld a,#96
	ld (l75b5),a
	ld hl,l75c3
	inc (hl)
	ld hl,l8868
	call l6f6c
	ld de,#1000
	jp l5bfd
.l5c9b
	ld iy,l7e7f
	ld de,l7444
	ld b,#24
.l5ca4
	push bc
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld bc,#001a
	add hl,bc
	ld bc,#0008
	ldir
	inc iy
	inc iy
	pop bc
	djnz l5ca4
	ret
.l5cbc
	call l73ae
	and #0f
	add a
	add a
	add a
	ld e,a
	ld d,#00
	ld hl,l7dcf
	add hl,de
	ld (l7407),hl
	ret
.l5ccf
	pop hl
.l5cd0
	ld a,#06
	ld bc,#0b0b
	call #bc32
	ld hl,l8889
	call l6f66
	ld b,#c8
.l5ce0
	push bc
	call #bd19
	call l73ae
	and #0f
	ld b,a
	ld c,a
	xor a
	call #bc32
	pop bc
	djnz l5ce0
	call #bc14
	ld ix,l7f9c
	call l73d1
	ld a,#00
	ld (l75fd),a
	ld de,#c0f0
	ld hl,l88f7
	call l72a3
	ld a,#00
	ld (l75fd),a
	ld de,#c190
	ld hl,l890f
	call l72a3
	ld a,#00
	ld (l75fd),a
	ld de,#c280
	ld hl,l891a
	call l72a3
	ld a,#00
	ld (l75fd),a
	ld de,#c3c0
	ld hl,l8933
	call l72a3
	ld a,#00
	ld (l75fd),a
	ld de,#c460
	ld hl,l894c
	call l72a3
	ld a,#00
	ld (l75fd),a
	ld de,#c500
	ld hl,l8965
	call l72a3
	ld a,#00
	ld (l75fd),a
	ld de,#c5a0
	ld hl,l897e
	call l72a3
	ld a,#00
	ld (l75fd),a
	ld de,#c640
	ld hl,l8997
	call l72a3
	call l5dbe
	ld hl,l75c5
	ld de,#c126
	ld b,#03
	call l716d
	call l5dcf
	ld de,#0000
	call l5e0b
	ld de,#00b8
	call l5e0b
	call l72ad
	ld bc,#02ee
.l5d8f
	push bc
	call #bd19
	call l5f11
	call #bd19
	pop ix
	ld a,#2f
	call #bb1e
	jp nz,l589d
	ld a,#4c
	call #bb1e
	jp nz,l589d
	ld a,#4d
	call #bb1e
	jp nz,l589d
	push ix
	pop bc
	dec bc
	ld a,b
	or c
	jr nz,l5d8f
	jp l589d
.l5dbe
	ld a,(l75d5)
	or a
	ret z
	ld b,a
.l5dc4
	push bc
	ld de,#0100
	call l5bfd
	pop bc
	djnz l5dc4
	ret
.l5dcf
	ld iy,l75c5
	ld h,(iy+#00)
	ld l,(iy+#01)
	ld de,#0020
	or a
	sbc hl,de
	ret c
	ld bc,l89e0
	sbc hl,de
	jr c,l5dff
	ld bc,l89d7
	sbc hl,de
	jr c,l5dff
	ld bc,l89cd
	sbc hl,de
	jr c,l5dff
	ld bc,l89bd
	sbc hl,de
	jr c,l5dff
	ld bc,l89b0
.l5dff
	push bc
	pop hl
	ld de,#c1b1
	xor a
	ld (l75fd),a
	jp l72a3
.l5e0b
	ld b,#14
.l5e0d
	push bc
	ld bc,#90fc
	push de
	call l7191
	pop de
	ld a,d
	add #04
	ld d,a
	pop bc
	djnz l5e0d
	ret
.l5e1e
	ld hl,#0000
	ld (l75a3),hl
	jp l5e3a
.l5e27
	ld a,(l7609)
	and #03
	ret nz
	call l5e3a
	ld a,(l75a3)
	add #02
	and #07
	ld (l75a3),a
.l5e3a
	ld de,#1e60
	ld hl,l7f67
	call l5e5b
	ld de,#2060
	ld hl,l7f57
	call l5e5b
	ld de,#2460
	ld hl,l7f6f
	call l5e5b
	ld de,#2660
	ld hl,l7f5f
.l5e5b
	ld bc,(l75a3)
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp l7191
.l5e66
	ld hl,(l75ce)
	ld de,#0003
	add hl,de
	ld (l75ce),hl
	push hl
	ld de,l7f8d
	or a
	sbc hl,de
	jr nz,l5e81
	pop hl
	ld hl,l7f84
	ld (l75ce),hl
	push hl
.l5e81
	pop ix
	ld b,(ix+#00)
	ld c,b
	ld a,#0b
	call #bc32
	ld b,(ix+#01)
	ld c,b
	ld a,#0e
	call #bc32
	ld b,(ix+#02)
	ld c,b
	ld a,#0f
	jp #bc32
.l5e9e
	ld a,(l7609)
	and #03
	ret nz
	ld hl,(l75d0)
	ld de,#0003
	add hl,de
	ld (l75d0),hl
	push hl
	ld de,l7f96
	or a
	sbc hl,de
	jr nz,l5ebf
	pop hl
	ld hl,l7f8d
	ld (l75d0),hl
	push hl
.l5ebf
	pop ix
	ld b,(ix+#00)
	ld c,b
	ld a,#0b
	call #bc32
	ld b,(ix+#01)
	ld c,b
	ld a,#0e
	call #bc32
	ld b,(ix+#02)
	ld c,b
	ld a,#0f
	jp #bc32
.l5edc
	ld a,(l7609)
	and #7f
	ret nz
	ld hl,(l75d2)
	ld de,#0002
	add hl,de
	ld (l75d2),hl
	push hl
	ld de,l7f9c
	or a
	sbc hl,de
	jr nz,l5efd
	pop hl
	ld hl,l7f96
	ld (l75d2),hl
	push hl
.l5efd
	pop ix
	ld b,(ix+#00)
	ld c,b
	ld a,#01
	call #bc32
	ld b,(ix+#01)
	ld c,b
	ld a,#02
	jp #bc32
.l5f11
	ld hl,(l75cc)
	ld de,#0003
	add hl,de
	ld (l75cc),hl
	push hl
	ld de,l7f84
	or a
	sbc hl,de
	jr nz,l5f2c
	pop hl
	ld hl,l7f7b
	ld (l75cc),hl
	push hl
.l5f2c
	pop ix
	ld b,(ix+#00)
	ld c,b
	ld a,#03
	call #bc32
	ld b,(ix+#01)
	ld c,b
	ld a,#04
	call #bc32
	ld b,(ix+#02)
	ld c,b
	ld a,#08
	jp #bc32
.l5f49
	call l5f67
	ret
.l5f4d
	call l5f67
	ld a,(l7609)
	bit 4,a
	ld a,#08
	ld de,#1f04
	jr z,l5f60
	ld a,#05
	ld e,#07
.l5f60
	ld (#985a),a
	ld (l75a1),de
.l5f67
	ld bc,#9859
	ld de,(l75a1)
	jp l7191
.l5f71
	ld a,(l7609)
	and #3f
	ret nz
	ld de,(l759e)
	ld bc,#9836
	call l7191
	ld a,(l75a0)
	add #02
	and #07
	ld (l75a0),a
	ld e,a
	ld d,#00
	ld hl,l7f4f
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (l759e),de
	ld bc,#9836
	jp l7191
.l5f9f
	ld de,#3220
	ld (l759e),de
	xor a
	ld (l75a0),a
	ld bc,#9836
	jp l7191
.l5fb0
	xor a
	ld (l758e),a
	ld de,#04a2
	ld (l759c),de
	ld bc,#96c8
	ld (l758f),bc
	jp l7191
.l5fc5
	xor a
	ld (l758d),a
	ld de,#24b4
	ld (l759a),de
	ld bc,#96c8
	ld (l7591),bc
	jp l7191
.l5fda
	xor a
	ld (l7593),a
	ld de,#1e02
	ld (l7596),de
	ld bc,#955a
	ld (l7594),bc
	jp l7191
.l5fef
	xor a
	ld (l7593),a
	ld de,#1e20
	ld (l7596),de
	ld bc,#955a
	ld (l7594),bc
	jp l7191
.l6004
	ld hl,l61ad
	ld (l758b),hl
	xor a
	ld (l7593),a
	ld de,#1e02
	ld (l7596),de
	ld bc,#955a
	ld (l7594),bc
	jp l7191
.l601f
	ld hl,l61f0
	ld (l758b),hl
	xor a
	ld (l758d),a
	ld de,#244e
	ld (l759a),de
	ld bc,#96c8
	ld (l7591),bc
	jp l7191
.l603a
	ld a,(l7609)
	and #01
	ret nz
	ld de,(l759c)
	ld bc,(l758f)
	call l7191
	ld a,(l758e)
	add #02
	cp #06
	jr nz,l6055
	xor a
.l6055
	ld (l758e),a
	ld c,a
	ld b,#00
	ld hl,l7ef5
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l758f),bc
	ld de,(l759c)
	dec e
	dec e
	ld a,e
	cp #0c
	jr nc,l607e
	ld e,#a2
	xor a
	ld (l758e),a
	ld bc,#96c8
	ld (l758f),bc
.l607e
	ld (l759c),de
	ld bc,(l758f)
	jp l7191
.l6089
	ld a,(l7609)
	and #01
	ret nz
	ld de,(l759a)
	ld bc,(l7591)
	call l7191
	ld a,(l758d)
	add #02
	cp #06
	jr nz,l60a4
	xor a
.l60a4
	ld (l758d),a
	ld c,a
	ld b,#00
	ld hl,l7ef5
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l7591),bc
	ld de,(l759a)
	dec e
	dec e
	ld a,e
	cp #02
	jr nc,l60cd
	xor a
	ld (l758d),a
	ld bc,#96c8
	ld (l7591),bc
	ld e,#b4
.l60cd
	ld (l759a),de
	ld bc,(l7591)
	jp l7191
.l60d8
	ld a,(l7609)
	and #01
	ret z
	ld de,(l7596)
	ld bc,(l7594)
	call l7191
	ld a,(l7593)
	add #02
	cp #06
	jr nz,l60f3
	xor a
.l60f3
	ld (l7593),a
	ld c,a
	ld b,#00
	ld hl,l7efb
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l7594),bc
	ld de,(l7596)
	inc e
	inc e
	ld a,e
	cp #b4
	jr c,l611c
	xor a
	ld (l7593),a
	ld bc,#955a
	ld (l7594),bc
	ld e,#02
.l611c
	ld (l7596),de
	ld bc,(l7594)
	jp l7191
.l6127
	ld a,(l7609)
	and #01
	ret nz
	ld de,(l759a)
	ld a,e
	cp #20
	ret c
	ld bc,(l7591)
	call l7191
	ld a,(l758d)
	add #02
	cp #06
	jr nz,l6146
	xor a
.l6146
	ld (l758d),a
	ld c,a
	ld b,#00
	ld hl,l7ef5
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l7591),bc
	ld de,(l759a)
	dec e
	dec e
	ld (l759a),de
	ld bc,(l7591)
	jp l7191
.l6168
	ld a,(l7609)
	and #01
	ret z
	ld de,(l7596)
	ld a,e
	cp #b4
	ret nc
	ld bc,(l7594)
	call l7191
	ld a,(l7593)
	add #02
	cp #06
	jr nz,l6187
	xor a
.l6187
	ld (l7593),a
	ld c,a
	ld b,#00
	ld hl,l7efb
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l7594),bc
	ld de,(l7596)
	inc e
	inc e
	ld (l7596),de
	ld a,e
	cp #b4
	ret nc
	ld bc,(l7594)
	jp l7191
.l61ad
	ld a,(l7609)
	and #01
	ret z
	ld de,(l7596)
	ld bc,(l7594)
	call l7191
	ld a,(l7593)
	add #02
	cp #06
	jr nz,l61c8
	xor a
.l61c8
	ld (l7593),a
	ld c,a
	ld b,#00
	ld hl,l7efb
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l7594),bc
	ld de,(l7596)
	inc e
	inc e
	ld a,e
	cp #52
	jp nc,l601f
	ld (l7596),de
	ld bc,(l7594)
	jp l7191
.l61f0
	ld a,(l7609)
	and #01
	ret nz
	ld de,(l759a)
	ld bc,(l7591)
	call l7191
	ld a,(l758d)
	add #02
	cp #06
	jr nz,l620b
	xor a
.l620b
	ld (l758d),a
	ld c,a
	ld b,#00
	ld hl,l7ef5
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l7591),bc
	ld de,(l759a)
	dec e
	dec e
	ld a,e
	cp #02
	jp c,l6004
	ld (l759a),de
	ld bc,(l7591)
	jp l7191
.l6233
	xor a
	ld (l75fc),a
	ld bc,#9449
	ld de,#1823
	ld (l7586),de
	call l7191
	ld bc,#9497
	ld de,#2c23
	ld (l7588),de
	xor a
	ld (l758a),a
	call l7191
	ld bc,#9504
	ld de,#0429
	call l7191
	ld bc,#9504
	ld de,#3829
	call l7191
	ld bc,#94ea
	ld de,#102b
	call l7191
	ld bc,#94ea
	ld de,#302b
	jp l7191
.l6279
	ld a,(l7609)
	and #07
	ret nz
	ld a,(l759a)
	cp #20
	ret nc
	ld a,(l75fc)
	or a
	jr nz,l62fc
	call l62b7
	ld a,(l758a)
	inc a
	ld (l758a),a
	cp #03
	jr z,l62de
	ld de,(l7586)
	inc d
	ld (l7586),de
	ld de,(l7588)
	dec d
	ld (l7588),de
.l62ab
	ld hl,l7eed
	call l62cb
	ld hl,l7ef1
	call l62cb
.l62b7
	ld bc,#9449
	ld de,(l7586)
	call l7191
	ld bc,#9497
	ld de,(l7588)
	jp l7191
.l62cb
	ld a,(l758a)
	dec a
	sla a
	ld e,a
	ld d,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld bc,#94e5
	jp l7191
.l62de
	call l62b7
	ld a,#01
	ld (l75fc),a
	ld bc,#96c8
	ld de,#241e
	call l7191
	ld bc,#955a
	ld (l7594),bc
	ld de,#1e20
	jp l7191
.l62fc
	call l62b7
	ld a,(l758a)
	dec a
	ld (l758a),a
	jr nz,l631e
	call l62b7
	xor a
	ld (l75fc),a
	call l5fc5
	xor a
	ld (l7593),a
	ld de,#1e20
	ld (l7596),de
	ret
.l631e
	ld de,(l7586)
	dec d
	ld (l7586),de
	ld de,(l7588)
	inc d
	ld (l7588),de
	jp l62ab
.l6333
	ld bc,#916d
	ld (l757c),bc
	ld de,#0c63
	ld (l7582),de
	xor a
	ld (l757e),a
	ld (l757f),a
	inc a
	ld (l757a),a
	ld (l757b),a
	call l7191
	ld bc,#92ed
	ld (l7580),bc
	ld de,#0c18
	ld (l7584),de
	jp l7191
.l6363
	ld ix,l7568
	ld (l75a6),bc
	ld a,#03
	ld (ix+#05),a
	ld (ix+#11),a
	ld a,#fd
	ld (ix+#0b),a
	ld b,#03
.l637a
	push bc
	ld bc,(l75a6)
	ld (ix+#00),c
	ld (ix+#01),b
	ld e,(iy+#00)
	ld d,(iy+#01)
	ld (ix+#02),e
	ld (ix+#03),d
	ld (ix+#04),#00
	call l7191
	ld de,#0006
	add ix,de
	ld e,#02
	add iy,de
	pop bc
	djnz l637a
	ret
.l63a5
	xor a
	ld (l7567),a
	inc a
	ld (l7564),a
	ld bc,#9094
	ld de,#2011
	ld (l7565),de
	jp l7191
.l63ba
	ld a,(l7609)
	and #03
	ret nz
	ld bc,(l757c)
	ld de,(l7582)
	call l655c
	push de
	call l7191
	pop de
	ld a,(l757a)
	add d
	ld d,a
	ld (l7582),de
	cp #04
	call z,l6406
	cp #18
	call z,l6400
	ld a,(l757e)
	add #02
	and #07
	ld (l757e),a
	ld c,a
	ld b,#00
	ld hl,l7edd
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l757c),bc
	jp l7191
	nop
	nop
.l6400
	xor a
	dec a
	ld (l757a),a
	ret
.l6406
	ld a,#01
	ld (l757a),a
	ret
.l640c
	ld bc,(l7580)
	ld de,(l7584)
	ld a,(l7609)
	and #03
	call z,l655c
	push de
	call l7191
	pop de
	ld a,(l757b)
	add e
	ld e,a
	ld (l7584),de
	cp #10
	call z,l645c
	cp #96
	call z,l6456
	ld a,(l7609)
	and #03
	ld a,(l757f)
	jr nz,l6445
	add #02
	and #07
	ld (l757f),a
.l6445
	ld c,a
	ld b,#00
	ld hl,l7ee5
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (l7580),bc
	jp l7191
.l6456
	xor a
	dec a
	ld (l757b),a
	ret
.l645c
	ld a,#01
	ld (l757b),a
	ret
.l6462
	ld ix,l7568
	ld a,(l7609)
	and #03
	cp #03
	jp z,l64c4
	sla a
	ld b,a
	sla a
	add b
	ld c,a
	ld b,#00
	add ix,bc
	ld c,(ix+#00)
	ld b,(ix+#01)
	ld e,(ix+#02)
	ld d,(ix+#03)
	call l655c
	push de
	call l7191
	pop de
	ld a,(ix+#05)
	add e
	ld e,a
	ld (ix+#02),e
	cp #12
	jr nc,l649f
	ld (ix+#05),#03
.l649f
	cp #ae
	jr c,l64a7
	ld (ix+#05),#fd
.l64a7
	ld a,(ix+#04)
	add #02
	and #07
	ld (ix+#04),a
	ld c,a
	ld b,#00
	ld hl,l7ee5
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (ix+#00),c
	ld (ix+#01),b
	jp l7191
.l64c4
	ld de,(l7565)
	call l655c
	ld a,(l7567)
	or a
	jr z,l64db
	dec a
	ld (l7567),a
	ret nz
	ld hl,(l7442)
	jr l6517
.l64db
	ld bc,#9094
	push de
	call l7191
	pop de
	ld a,(l7564)
	add d
	ld d,a
	cp #04
	call z,l6532
	cp #2a
	call z,l6532
	ld (l7565),de
	ld bc,#9094
	call l7191
	ld hl,l7ec7
	ld b,#05
	ld a,(l7566)
.l6504
	cp (hl)
	jr z,l650b
	inc hl
	djnz l6504
	ret
.l650b
	ld a,#0c
	ld (l7567),a
	ld bc,#0005
	add hl,bc
	ld (l7442),hl
.l6517
	ld b,(hl)
	ld de,(l7565)
	inc d
	inc d
	ld a,e
	add #11
	ld e,a
.l6522
	push bc
	push de
	ld bc,#908c
	call l7191
	pop de
	pop bc
	inc e
	inc e
	inc e
	djnz l6522
	ret
.l6532
	ld a,(l7564)
	neg
	ld (l7564),a
	ret
.l653b
	ld de,#0838
	call l654a
	ld de,#0863
	call l654a
	ld de,#088e
.l654a
	ld b,#15
.l654c
	push bc
	push de
	ld bc,#913e
	call l7191
	pop de
	inc d
	inc d
	inc d
	pop bc
	djnz l654c
	ret
.l655c
	ld hl,(l75f6)
	ld a,d
	add #04
	cp h
	ret c
	sub #08
	cp h
	ret nc
	ld a,e
	add #0a
	cp l
	ret c
	sub #1a
	cp l
	ret nc
.l6571
	push hl
	ld hl,#0101
	call #bc3e
	pop hl
	ld a,(l75d5)
	or a
	ret z
	dec a
	ld (l75d5),a
	push bc
	push de
	ld a,#06
	ld bc,#1a0b
	call #bc32
	pop de
	pop bc
	ret
.l658f
	ld b,#04
	ld ix,l742a
	ld iy,l7e77
.l6599
	push bc
	ld e,(iy+#00)
	ld (ix+#00),e
	ld d,(iy+#01)
	ld (ix+#01),d
	ld bc,#8fb0
	ld (ix+#02),c
	ld (ix+#03),b
	call l7191
	xor a
	ld (ix+#04),a
	ld (ix+#05),a
	inc iy
	inc iy
	ld de,#0006
	add ix,de
	pop bc
	djnz l6599
	xor a
	ld (l7429),a
	ret
.l65ca
	ld ix,l742a
	ld a,(l7609)
	and #03
	add a
	ld b,a
	add a
	add b
	ld e,a
	ld d,#00
	add ix,de
	ld a,(l7609)
	and #07
	jr nz,l65eb
	ld a,(l7429)
	xor #01
	ld (l7429),a
.l65eb
	ld e,(ix+#00)
	ld d,(ix+#01)
	ld c,(ix+#02)
	ld b,(ix+#03)
	push de
	call l655c
	call l7191
	pop de
	ld a,(l7609)
	and #7c
	jr nz,l6621
.l6606
	call l73ae
	and #03
	cp #03
	jr z,l6606
	dec a
	ld (ix+#05),a
.l6613
	call l73ae
	and #03
	cp #03
	jr z,l6613
	dec a
	add a
	ld (ix+#04),a
.l6621
	ld a,e
	add (ix+#04)
	cp #22
	call c,l665c
	cp #b6
	call nc,l665c
	ld e,a
	ld a,d
	add (ix+#05)
	cp #0a
	call c,l6667
	cp #42
	call nc,l6667
	ld d,a
	ld (ix+#00),e
	ld (ix+#01),d
	ld a,(l7429)
	add a
	ld c,a
	ld b,#00
	ld hl,l7e73
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (ix+#02),c
	ld (ix+#03),b
	jp l7191
.l665c
	push af
	ld a,(ix+#04)
	neg
	ld (ix+#04),a
	pop af
	ret
.l6667
	push af
	ld a,(ix+#05)
	neg
	ld (ix+#05),a
	pop af
	ret
.l6672
	ld ix,l7568
	ld a,(l7609)
	and #03
	cp #03
	ret z
	sla a
	push af
	ld b,a
	sla a
	add b
	ld c,a
	ld b,#00
	add ix,bc
	pop af
	ld iy,l7e6d
	ld c,a
	ld b,#00
	add iy,bc
	ld bc,#8f42
	ld e,(ix+#02)
	ld d,(ix+#03)
	call l655c
	push de
	call l7191
	pop de
	ld a,(ix+#05)
	add e
	ld e,a
	ld (ix+#02),e
	cp (iy+#00)
	jr nc,l66b6
	ld (ix+#05),#03
.l66b6
	cp (iy+#01)
	jr c,l66bf
	ld (ix+#05),#fd
.l66bf
	ld bc,#8f42
	jp l7191
.l66c5
	ld ix,l741d
	ld iy,l7e5b
	ld b,#04
.l66cf
	push bc
	ld e,(iy+#00)
	ld (ix+#00),e
	ld d,(iy+#01)
	ld (ix+#01),d
	ld a,(iy+#02)
	ld (ix+#02),a
	ld bc,#8edc
	call l7191
	pop bc
	ld de,#0003
	add ix,de
	add iy,de
	djnz l66cf
	ret
.l66f3
	ld ix,l741d
	ld a,(l7609)
	and #01
	jr nz,l6703
	ld de,#0006
	add ix,de
.l6703
	ld b,#02
.l6705
	push bc
	ld e,(ix+#00)
	ld d,(ix+#01)
	call l655c
	ld bc,#8edc
	push de
	call l7191
	pop de
	ld a,e
	add (ix+#02)
	cp #b0
	jr c,l6721
	ld a,#10
.l6721
	ld e,a
	ld (ix+#00),e
	ld bc,#8edc
	call l7191
	pop bc
	ld de,#0003
	add ix,de
	djnz l6705
	ret
.l6734
	ld ix,l7568
	ld a,(l7609)
	and #03
	cp #03
	ret z
	sla a
	ld b,a
	sla a
	add b
	ld c,a
	ld b,#00
	add ix,bc
	ld bc,#8e8a
	ld e,(ix+#02)
	ld d,(ix+#03)
	call l655c
	push de
	call l7191
	pop de
	ld a,(ix+#05)
	add d
	ld d,a
	ld (ix+#03),d
	cp #0c
	jr nc,l676c
	ld (ix+#05),#02
.l676c
	cp #40
	jr c,l6774
	ld (ix+#05),#fe
.l6774
	ld a,(l7609)
	bit 5,a
	ld a,#02
	jr z,l677f
	neg
.l677f
	add e
	ld e,a
	ld (ix+#02),e
	ld bc,#8e8a
	jp l7191
.l678a
	ld ix,l7413
	ld iy,l7e4f
	ld b,#03
.l6794
	push bc
	ld e,(iy+#00)
	ld d,(iy+#01)
	ld (ix+#00),e
	ld (ix+#01),d
	ld (ix+#02),#03
	call l67ea
	pop bc
	ld de,#0002
	add iy,de
	inc e
	add ix,de
	djnz l6794
	ret
.l67b4
	ld ix,l7413
	ld a,(l7609)
	and #03
	dec a
	ret m
	ld c,a
	add a
	add c
	ld c,a
	ld b,#00
	add ix,bc
	ld e,(ix+#00)
	ld d,(ix+#01)
	push de
	call l67ea
	pop de
	ld a,d
	add (ix+#02)
	ld d,a
	cp #0e
	jr nz,l67df
	ld (ix+#02),#03
.l67df
	cp #38
	jr nz,l67e7
	ld (ix+#02),#fd
.l67e7
	ld (ix+#01),d
.l67ea
	ld b,#03
.l67ec
	push bc
	push de
	ld bc,#913e
	call l7191
	pop de
	inc d
	inc d
	inc d
	pop bc
	djnz l67ec
	ret
.l67fc
	ld de,(l740d)
	call l655c
	ld a,(l740c)
	cp #1f
	ret c
	ld bc,(l740f)
	push de
	call l7191
	pop de
	ld a,(l740c)
	cp #cf
	jr z,l681a
	dec e
.l681a
	ld a,(l7411)
	add d
	ld d,a
	cp #14
	call z,l6834
	cp #3a
	call z,l6839
	ld (l740d),de
	ld bc,(l740f)
	jp l7191
.l6834
	ld bc,#8e3a
	jr l683c
.l6839
	ld bc,#8dea
.l683c
	ld (l740f),bc
	ld a,(l7411)
	neg
	ld (l7411),a
	ret
.l6849
	ld ix,l7d9e
	ld de,#1683
	ld b,#07
.l6852
	push bc
	push de
	call l6866
	pop de
	ld a,d
	add #05
	ld d,a
	inc ix
	inc ix
	inc ix
	pop bc
	djnz l6852
	ret
.l6866
	ld h,#00
	ld a,e
	and #f8
	ld l,a
	add hl,hl
	ld c,l
	ld b,h
	add hl,hl
	add hl,hl
	add hl,bc
	ld a,e
	and #07
	rlca
	rlca
	rlca
	add #c0
	add h
	ld h,a
	ld b,#00
	ld c,d
	add hl,bc
	ld de,#8d94
	ld a,(de)
	ld b,a
	inc de
	ld a,(de)
	ld c,a
	inc de
.l6889
	push bc
	push hl
.l688b
	ld a,(de)
	or a
	jr z,l68a2
	cp #22
	jr z,l68a2
	cp #11
	jr z,l68a2
	cp #33
	jr z,l68a2
	dec a
	ld (l68a1),a
.l68a1 equ $ + 2
	ld a,(ix+#00)
.l68a2
	xor (hl)
	ld (hl),a
	inc de
	inc hl
	djnz l688b
	pop hl
	ld a,h
	add #08
	ld h,a
	jr nc,l68b4
	ld bc,#3faf
	sbc hl,bc
.l68b4
	pop bc
	dec c
	jp nz,l6889
	ret
	call l5fc5
	call l5fda
	ret
	call l5f49
	call l5fc5
	call l5fef
	call l6233
	ret
	call l5fc5
	call l5fda
	ret
	call l5f9f
	call l5fb0
	call l5fc5
	call l5fda
	ret
	call l5fc5
	call l5fda
	ret
	call l5fc5
	call l5fda
	ret
	call l5e1e
	call l6004
	ret
	ld iy,l7ed1
	ld bc,#92ed
	call l6363
	call l63a5
	ret
	call l658f
	ret
	call l6849
	ld a,(l75c4)
	or a
	ret z
	ld hl,(l7401)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld de,#c32c
	ld a,#04
	ld (l75fd),a
	call l72a3
	ld hl,(l7403)
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld de,#c3cc
	ld a,#04
	ld (l75fd),a
	jp l72a3
	ld iy,l7ed7
	ld bc,#92ed
	call l6363
	ret
	ld iy,l7e67
	ld bc,#8f42
	call l6363
	ret
	call l6333
	ret
	call l66c5
	ret
	ld a,#06
	call #bbde
	ld a,#01
	call #bc59
	xor a
	ld (l740c),a
	ld (l7411),a
	dec a
	ld (l740b),a
	ld de,#25ac
	ld (l740d),de
	ld bc,#8e3a
	ld (l740f),bc
	jp l7191
	call l653b
	call l678a
	ld iy,l7e55
	ld bc,#8e8a
	call l6363
	ret
	ld a,#01
	ld (l75fd),a
	ld de,#c053
	ld hl,l88cc
	call l72a3
	ld a,#16
	ld (l75d5),a
	ld (l75d4),a
	ret
	call l5f11
	call l6089
	call l60d8
	ret
	call l6127
	call l6168
	call l5f11
	call l5e66
	call l5f4d
	call l6279
	ld a,(l75f6)
	cp #22
	jp c,l5ccf
	ret
	call l5f11
	call l6089
	call l60d8
	ret
	call l6089
	call l603a
	call l5f71
	call l5f11
	call l60d8
	ret
	call l5f11
	call l6089
	call l60d8
	ret
	call l5f11
	call l6089
	call l60d8
	ret
	call l5f11
	call l5e66
	call l6b69
	call l5e27
	ld a,(l75f6)
	cp #52
	jp nc,l5ccf
	ld bc,#00c8
	call l6b63
	ld hl,(l758b)
	call l6b8b
	ret
	ld a,#ed
	ld (l64c4),a
	call l6462
	call l5e66
	ret
	call l65ca
	ret
	ld a,(l75c3)
	cp #08
	ret nz
	ld ix,l75a6
	ld (ix+#00),#00
	ld a,#40
	call #bb1e
	jr nz,l6a75
	inc (ix+#00)
	ld a,#41
	call #bb1e
	jr nz,l6a75
	inc (ix+#00)
	ld a,#39
	call #bb1e
	jr nz,l6a75
	inc (ix+#00)
	ld a,#38
	call #bb1e
	jr nz,l6a75
	inc (ix+#00)
	ld a,#31
	call #bb1e
	jr nz,l6a75
	inc (ix+#00)
	ld a,#30
	call #bb1e
	jr nz,l6a75
	inc (ix+#00)
	ld a,#29
	call #bb1e
	ret z
.l6a75
	ld a,(ix+#00)
	ld (l73fd),a
	ld b,a
	sla a
	ld c,a
	add b
	ld e,a
	ld d,#00
	ld ix,l7d9e
	add ix,de
	ld a,c
	sla a
	add b
	ld d,a
	ld e,#00
	ld hl,#1683
	add hl,de
	ex de,hl
	call l6866
	ld b,#32
	call l73a3
	ld a,(l73fd)
	ld b,a
	ld a,(l7400)
	cp b
	ld de,#2000
	call z,l5bfd
	jp l5ccf
	ld a,#c9
	ld (l64c4),a
	call l5e66
	call l6462
	ret
	call l5e66
	call l6672
	ret
	call l5e9e
	call l5edc
	ld a,(l75c3)
	cp #08
	ret nz
	ld de,(l75f6)
	ld a,d
	cp #24
	ret c
	cp #2c
	ret nc
	ld a,e
	cp #38
	ret nc
	ld a,#01
	ld (l75c4),a
	dec a
	ld bc,#0909
	jp #bc32
	call l63ba
	call l5e66
	ld bc,#02a8
	call l6b63
	call l640c
	ret
	call l66f3
	call l5e66
	ret
	nop
	ld a,(l740c)
	or a
	jr nz,l6b26
	ld hl,l740b
	dec (hl)
	ret nz
	ld a,#01
	ld (l740c),a
	ld (l7411),a
	ld de,#0000
	ld hl,#0000
	call #bbc0
	ld de,#027f
	ld hl,#0000
	call #bbf6
	ret
.l6b26
	ld a,(l7609)
	and #03
	ret nz
	ld a,(l740c)
	srl a
	sub #c8
	neg
	ld b,a
	ld a,(l75f6)
	cp b
	call nc,l6571
	call l67fc
	ld a,(l740c)
	cp #cf
	ret z
	inc a
	inc a
	ld (l740c),a
	ld l,a
	ld h,#00
	ld de,#0000
	push hl
	call #bbc0
	pop hl
	ld de,#027f
	jp #bbf6
	call l6734
	call l67b4
	ret
.l6b63
	dec bc
	ld a,b
	or c
	jr nz,l6b63
	ret
.l6b69
	ld a,(l7609)
	and #07
	ret nz
	ld hl,(l75ca)
	ld b,(hl)
	inc hl
	ld (l75ca),hl
	ld de,l7f7b
	or a
	sbc hl,de
	jr nz,l6b85
	ld hl,l7f77
	ld (l75ca),hl
.l6b85
	ld c,b
	ld a,#05
	jp #bc32
.l6b8b
	jp (hl)
.l6b8c
	ld a,(l75d4)
	ld b,a
	ld de,#2ca5
.l6b93
	ld a,b
	or a
	jr z,l6ba5
	push bc
	push de
	ld bc,#9a73
	call l71ce
	pop de
	pop bc
	inc d
	dec b
	jr l6b93
.l6ba5
	ld a,(l75d5)
	ld b,a
	ld de,#2cb5
.l6bac
	ld a,b
	or a
	ret z
	push bc
	push de
	ld bc,#9a7b
	call l71ce
	pop de
	pop bc
	inc d
	dec b
	jr l6bac
.l6bbd
	ld ix,l75d6
	ld b,#08
.l6bc3
	push bc
	ld e,(ix+#00)
	ld d,(ix+#01)
	ld c,(ix+#02)
	ld b,(ix+#03)
	call l71ce
	ld de,#0004
	add ix,de
	pop bc
	djnz l6bc3
	ret
.l6bdc
	ld ix,(l75f8)
	ld de,(l75f6)
	push de
	call l6c91
	pop de
	ld a,#07
	ld (l73fa),a
	ld hl,l7f01
	ld (l73fb),hl
	ld l,(ix+#26)
	ld h,(ix+#27)
	call l6b8b
	call l6d61
	ld a,(l75b6)
	or a
	push af
	call nz,l5a8b
	pop af
	jr nz,l6c83
	ld a,(l75b7)
	or a
	push af
	call nz,l5ada
	pop af
	jr nz,l6c83
	ld a,(l75b8)
	or a
	push af
	call nz,l5b3f
	pop af
	jr nz,l6c83
	call l6e25
	call l6e25
	ld a,(l75c1)
	or a
	jr nz,l6c59
	ld a,(l7601)
	or a
	jr z,l6c59
	ld a,(l75bb)
	or a
	jr nz,l6c59
	ld a,(l7602)
	or a
	ld a,#fe
	jr nz,l6c49
	ld a,(l7603)
	or a
	ld a,#01
	jr z,l6c59
.l6c49
	ld (l75bb),a
	ld a,#f8
	ld (l75ba),a
	push de
	ld hl,l8841
	call l6f66
	pop de
.l6c59
	call l6cc8
	ld a,(l7609)
	and #3f
	jr z,l6c69
	ld a,(l75c1)
	or a
	jr nz,l6c83
.l6c69
	ld l,(ix+#05)
	ld h,(ix+#06)
	call l6b8b
	ld a,(l7602)
	or a
	call nz,l6d71
	ld a,(l7603)
	or a
	call nz,l6dc7
	call l6cac
.l6c83
	ld (l75f6),de
	ld a,(l7609)
	ld hl,l73fa
	and (hl)
	call z,l6ca1
.l6c91
	ld hl,(l73fb)
	ld a,(l7598)
	ld c,a
	ld b,#00
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	jp l7191
.l6ca1
	ld a,(l7598)
	add #02
	and #07
	ld (l7598),a
	ret
.l6cac
	ld a,(l7609)
	and #07
	ret nz
	ld a,(l75be)
	or a
	ret nz
	ld a,(l75bf)
	ld hl,l75c0
	or (hl)
	ret z
	push de
	ld hl,l882d
	call l6f66
	pop de
	ret
.l6cc8
	ld a,(l75bb)
	or a
	ret z
	ld a,(l75ba)
	cp #08
	jr z,l6ce1
	inc a
	ld (l75ba),a
	or a
	jp p,l6ce1
	call l6d54
	jr l6ce4
.l6ce1
	call l6d02
.l6ce4
	ld a,(l75bb)
	or a
	ld a,#01
	ld (l75be),a
	jp m,l6cf9
	ld hl,l7f21
	ld (l73fb),hl
	jp l6dd7
.l6cf9
	ld hl,l7f19
	ld (l73fb),hl
	jp l6d81
.l6d02
	push de
	ld a,(l75ba)
	add #12
	add e
	ld e,a
	call l6e85
	pop de
	jp z,l6e1d
	push de
	ld a,(l75ba)
	add #12
	add e
	ld e,a
	ld a,d
	add #05
	ld d,a
	call l6e85
	pop de
	jp z,l6e1d
	ld a,(l75ba)
	add e
	ld e,a
	ld c,a
	ld a,(ix+#00)
	or a
	ld a,#b2
	jr z,l6d34
	ld a,#50
.l6d34
	cp e
	ret nc
	ld e,c
	ld a,(ix+#14)
	cp #fe
	ret z
	ld (l75fa),a
	ld a,#07
	ld (l75f6),a
	ld l,(ix+#0f)
	ld h,(ix+#10)
	ld (l75f8),hl
	pop hl
	pop hl
	pop hl
	jp l58b7
.l6d54
	ld a,(l75ba)
	add e
	ld e,a
	ret c
	ld e,#02
	xor a
	ld (l75ba),a
	ret
.l6d61
	ld a,#01
	ld (l75bc),a
	dec a
	ld b,#05
	ld hl,l75bd
.l6d6c
	ld (hl),a
	inc hl
	djnz l6d6c
	ret
.l6d71
	ld a,#01
	ld (l75bf),a
	ld hl,l7f09
	ld (l73fb),hl
	ld a,#03
	ld (l73fa),a
.l6d81
	push de
	dec d
	ld a,e
	add #11
	ld e,a
	call l6e85
	pop de
	jp z,l6e1d
	push de
	dec d
	ld a,e
	add #10
	ld e,a
	call l6e85
	pop de
	jp z,l6e1d
	dec d
	ld a,d
	cp #01
	ret nc
	inc d
	ld a,(ix+#11)
	cp #fe
	ret z
	ld (l75fa),a
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (l75f8),hl
	push hl
	pop ix
	ld a,(ix+#22)
	ld (l75f6),a
	ld a,(ix+#23)
	ld (l75f7),a
	pop hl
	pop hl
	jp l58b7
.l6dc7
	ld a,#01
	ld (l75c0),a
	ld hl,l7f11
	ld (l73fb),hl
	ld a,#03
	ld (l73fa),a
.l6dd7
	push de
	ld hl,#0611
	add hl,de
	ex de,hl
	call l6e85
	pop de
	jp z,l6e1d
	push de
	ld hl,#0610
	add hl,de
	ex de,hl
	call l6e85
	pop de
	jp z,l6e1d
	inc d
	ld a,d
	cp #4a
	ret c
	dec d
	ld a,(ix+#12)
	cp #fe
	ret z
	ld (l75fa),a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld (l75f8),hl
	push hl
	pop ix
	ld a,(ix+#24)
	ld (l75f6),a
	ld a,(ix+#25)
	ld (l75f7),a
	pop hl
	pop hl
	jp l58b7
.l6e1d
	xor a
	ld (l75bb),a
	ld (l75be),a
	ret
.l6e25
	ld a,(l75bb)
	or a
	ret nz
	push de
	ld a,e
	add #13
	ld e,a
	call l6e85
	pop de
	ret z
	push de
	ld a,e
	add #13
	ld e,a
	inc d
	inc d
	call l6e85
	pop de
	ret z
	push de
	ld a,e
	add #13
	ld e,a
	ld a,d
	add #05
	ld d,a
	call l6e85
	pop de
	ret z
	call l6e1d
	ld a,#01
	ld (l75c1),a
	dec a
	dec a
	ld (l73fa),a
	inc e
	ld a,(ix+#00)
	or a
	ld a,#b2
	jr z,l6e66
	ld a,#50
.l6e66
	cp e
	ret nc
	dec e
	ld a,(ix+#14)
	cp #fe
	ret z
	ld (l75fa),a
	ld a,#07
	ld (l75f6),a
	ld l,(ix+#0f)
	ld h,(ix+#10)
	ld (l75f8),hl
	pop hl
	pop hl
	jp l58b7
.l6e85
	call l6f4a
	ld b,a
	and #aa
	cp #80
	ret z
	cp #08
	ret z
	ld a,b
	and #55
	cp #40
	ret z
	cp #04
	ret
.l6e9a
	ld hl,l7f01
	ld (l73fb),hl
	ld a,#07
	ld (l73fa),a
	ld de,(l75f6)
	xor a
	ld (l7598),a
	ld (l75bb),a
	inc a
	ld (l75bc),a
	ld bc,#9e97
	jp l7191
.l6eba
	xor a
	ld b,#05
	ld hl,l7601
	ld e,l
	ld d,h
.l6ec2
	ld (hl),a
	inc hl
	djnz l6ec2
	dec b
	ld a,#4d
	call #bb1e
	jr nz,l6edc
	ld a,#4c
	call #bb1e
	jr nz,l6edc
	ld a,#12
	call #bb1e
	jr z,l6ede
.l6edc
	ld a,b
	ld (de),a
.l6ede
	inc de
	ld a,#4a
	call #bb1e
	jr nz,l6eed
	ld a,#47
	call #bb1e
	jr z,l6eef
.l6eed
	ld a,b
	ld (de),a
.l6eef
	inc de
	ld a,#4b
	call #bb1e
	jr nz,l6efe
	ld a,#3f
	call #bb1e
	jr z,l6f00
.l6efe
	ld a,b
	ld (de),a
.l6f00
	inc de
	ld a,#48
	call #bb1e
	jr nz,l6f0f
	ld a,#13
	call #bb1e
	jr z,l6f11
.l6f0f
	ld a,b
	ld (de),a
.l6f11
	inc de
	ld a,#49
	call #bb1e
	jr nz,l6f1f
	ld a,#16
	call #bb1e
	ret z
.l6f1f
	ld a,b
	ld (de),a
	ret
.l6f22
	ld a,r
	ld b,a
.l6f25
	call l73ae
	djnz l6f25
	ret
	push af
	ld h,#00
	ld a,e
	and #f8
	ld l,a
	add hl,hl
	ld c,l
	ld b,h
	add hl,hl
	add hl,hl
	add hl,bc
	ld a,e
	and #07
	rlca
	rlca
	rlca
	add #c0
	add h
	ld h,a
	ld b,#00
	ld c,d
	add hl,bc
	pop af
	xor (hl)
	ld (hl),a
	ret
.l6f4a
	ld h,#00
	ld a,e
	and #f8
	ld l,a
	add hl,hl
	ld c,l
	ld b,h
	add hl,hl
	add hl,hl
	add hl,bc
	ld a,e
	and #07
	rlca
	rlca
	rlca
	add #c0
	add h
	ld h,a
	ld b,#00
	ld c,d
	add hl,bc
	ld a,(hl)
	ret
.l6f66
	ld a,(l75b5)
	cp #32
	ret nc
.l6f6c
	push ix
	call #bcaa
	pop ix
	ret
.l6f74
	push hl
	ld hl,#0a0a
	call #bc3e
	pop hl
	call l73c2
	ld iy,(l75f8)
	ld a,(iy+#00)
	or a
	push af
	ld bc,#01f4
	jr z,l6f90
	ld bc,#0104
.l6f90
	ld l,(iy+#01)
	ld h,(iy+#02)
	ld de,#c000
.l6f99
	ld a,(hl)
	call l700c
	inc hl
	dec bc
	ld a,b
	or c
	jr nz,l6f99
	pop af
	jr z,l6fd0
	ld b,#f0
	ld de,#c410
	ld hl,#2378
.l6fae
	ld a,(hl)
	call l700c
	inc hl
	djnz l6fae
	call l6bbd
	ld bc,#8c5c
	ld de,#2978
	call l720a
	ld a,(iy+#15)
	ld e,(iy+#16)
	ld d,(iy+#17)
	call l700c
	call l6b8c
.l6fd0
	ld l,(iy+#03)
	ld h,(iy+#04)
	push hl
	pop ix
	call l73d1
	ld a,(l75fa)
	ld c,a
	ld b,#00
	sla c
	rl b
	sla c
	rl b
	sla c
	rl b
	ld hl,l7444
	add hl,bc
	ld (l7409),hl
	ld b,#04
.l6ff7
	push bc
	ld bc,#99c9
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,e
	or d
	jr z,l7008
	push hl
	call l7191
	pop hl
.l7008
	pop bc
	djnz l6ff7
	ret
.l700c
	push bc
	push hl
	ld l,a
	xor a
	ld h,a
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld bc,#0500
	add hl,bc
	ld b,#08
	push de
.l701d
	ld a,(hl)
	ld (de),a
	inc de
	inc hl
	ld a,(hl)
	ld (de),a
	inc de
	inc hl
	ld a,(hl)
	ld (de),a
	inc de
	inc hl
	ld a,(hl)
	ld (de),a
	inc hl
	dec de
	dec de
	dec de
	ld a,d
	add #08
	ld d,a
	djnz l701d
	pop de
	inc de
	inc de
	inc de
	inc de
	pop hl
	pop bc
	ret
.l703d
	ld a,#02
	ld hl,l8829
	call #bcbc
	ld a,#03
	ld hl,l8836
	call #bcbc
	ld a,#01
	ld hl,l883a
	call #bcbf
	ld a,#04
	ld hl,l884a
	call #bcbc
	ld a,#05
	ld hl,l885d
	call #bcbc
	ld a,#02
	ld hl,l8861
	call #bcbf
	ld a,#06
	ld hl,l8871
	call #bcbc
	ld a,#07
	ld hl,l887e
	call #bcbc
	ld a,#03
	ld hl,l8882
	call #bcbf
	ld a,#08
	ld hl,l8892
	call #bcbc
	ld a,#09
	ld hl,l88a5
	jp #bcbc
.l7095
	call l73c2
	call #bc14
	ld c,#09
	ld de,#040a
	ld ix,l7f39
.l70a4
	push de
	ld b,#0c
.l70a7
	push bc
	push de
	bit 0,c
	ld bc,l8be8
	jr z,l70b6
	ld c,(ix+#00)
	ld b,(ix+#01)
.l70b6
	call l7191
	inc ix
	inc ix
	ld a,(ix+#00)
	or (ix+#01)
	jr nz,l70c9
	ld ix,l7f39
.l70c9
	pop de
	ld a,d
	add #06
	ld d,a
	pop bc
	djnz l70a7
	pop de
	ld a,e
	add #14
	ld e,a
	dec c
	jr nz,l70a4
	ld bc,#8c5c
	ld de,#1e41
	call l7249
	ld ix,l7f9c
	call l73d1
	ld hl,#0000
	ld (l75a6),hl
.l70ef
	ld b,#08
	call l73a3
	ld hl,(l75a6)
	inc l
	ld (l75a6),hl
	ld de,l8aa8
	add hl,de
	ld de,#c000
	xor a
	ld (l75fd),a
	ld b,#1a
.l7108
	push bc
	ld a,(hl)
	call l7132
	inc hl
	pop bc
	djnz l7108
	ld a,#2f
	call #bb1e
	ret nz
	ld a,#4c
	call #bb1e
	ret nz
	ld a,#4d
	call #bb1e
	ret nz
	jr l70ef
.l7125
	bit 0,c
	jr nz,l7132
	set 0,c
	or a
	jr nz,l7132
	res 0,c
	ld a,#24
.l7132
	push bc
	push hl
	ld l,a
	xor a
	ld h,a
	add hl,hl
	add hl,hl
	add hl,hl
	ld b,h
	ld c,l
	add hl,hl
	add hl,bc
	ld bc,#4cac
	add hl,bc
	ld b,#08
	push de
.l7145
	ld a,(hl)
	ld (de),a
	inc de
	inc hl
	ld a,(hl)
	ld (de),a
	inc de
	inc hl
	ld a,(hl)
	ld (de),a
	inc hl
	dec de
	dec de
	ld a,d
	add #08
	ld d,a
	djnz l7145
	pop de
	inc de
	inc de
	inc de
	ld a,(l75fd)
	inc a
	cp #1a
	jr nz,l7167
	xor a
	inc de
	inc de
.l7167
	ld (l75fd),a
	pop hl
	pop bc
	ret
.l716d
	ld a,#01
	ld (l75fd),a
	ld c,#00
.l7174
	ld a,(hl)
	srl a
	srl a
	srl a
	srl a
	and #0f
	call l7125
	ld a,(hl)
	and #0f
	djnz l7189
	set 0,c
.l7189
	inc b
	call l7125
	inc hl
	djnz l7174
	ret
.l7191
	push bc
	ld h,#00
	ld a,e
	and #f8
	ld l,a
	add hl,hl
	ld c,l
	ld b,h
	add hl,hl
	add hl,hl
	add hl,bc
	ld a,e
	and #07
	rlca
	rlca
	rlca
	add #c0
	add h
	ld h,a
	ld b,#00
	ld c,d
	add hl,bc
	pop de
	ld a,(de)
	ld b,a
	inc de
	ld a,(de)
	ld c,a
	inc de
.l71b3
	push bc
	push hl
.l71b5
	ld a,(de)
	xor (hl)
	ld (hl),a
	inc de
	inc hl
	djnz l71b5
	pop hl
	ld a,h
	add #08
	ld h,a
	jr nc,l71c8
	ld bc,#3faf
	sbc hl,bc
.l71c8
	pop bc
	dec c
	jp nz,l71b3
	ret
.l71ce
	push bc
	ld h,#00
	ld a,e
	and #f8
	ld l,a
	add hl,hl
	ld c,l
	ld b,h
	add hl,hl
	add hl,hl
	add hl,bc
	ld a,e
	and #07
	rlca
	rlca
	rlca
	add #c0
	add h
	ld h,a
	ld b,#00
	ld c,d
	add hl,bc
	pop de
	ld a,(de)
	ld b,a
	inc de
	ld a,(de)
	ld c,a
	inc de
.l71f0
	push bc
	push hl
.l71f2
	ld a,(de)
	ld (hl),a
	inc de
	inc hl
	djnz l71f2
	pop hl
	ld a,h
	add #08
	ld h,a
	jr nc,l7204
	ld bc,#3faf
	sbc hl,bc
.l7204
	pop bc
	dec c
	jp nz,l71f0
	ret
.l720a
	push bc
	ld h,#00
	ld a,e
	and #f8
	ld l,a
	add hl,hl
	ld c,l
	ld b,h
	add hl,hl
	add hl,hl
	add hl,bc
	ld a,e
	and #07
	rlca
	rlca
	rlca
	add #c0
	add h
	ld h,a
	ld b,#00
	ld c,d
	add hl,bc
	pop de
	ld a,(de)
	ld b,a
	inc de
	ld a,(de)
	ld c,a
	inc de
.l722c
	push bc
	push hl
.l722e
	ld a,(de)
	or a
	jr z,l7233
	ld (hl),a
.l7233
	inc de
	inc hl
	djnz l722e
	pop hl
	ld a,h
	add #08
	ld h,a
	jr nc,l7243
	ld bc,#3faf
	sbc hl,bc
.l7243
	pop bc
	dec c
	jp nz,l722c
	ret
.l7249
	push bc
	ld h,#00
	ld a,e
	and #f8
	ld l,a
	add hl,hl
	ld c,l
	ld b,h
	add hl,hl
	add hl,hl
	add hl,bc
	ld a,e
	and #07
	rlca
	rlca
	rlca
	add #c0
	add h
	ld h,a
	ld b,#00
	ld c,d
	add hl,bc
	pop de
	ld a,(de)
	ld b,a
	inc de
	ld a,(de)
	ld c,a
	inc de
.l726b
	push bc
	push de
	call l727e
	pop de
	pop bc
	push bc
	call l727e
	pop bc
	dec c
	jr nz,l726b
	ret
.l727b
	inc hl
	jr l7293
.l727e
	push hl
.l727f
	ld a,(de)
	or a
	jr z,l727b
	and #aa
	ld c,a
	srl a
	or c
	ld (hl),a
	inc hl
	ld a,(de)
	and #55
	ld c,a
	sla a
	or c
	ld (hl),a
.l7293
	inc de
	inc hl
	djnz l727f
	pop hl
	ld a,h
	add #08
	ld h,a
	ret nc
	ld bc,#3faf
	sbc hl,bc
	ret
.l72a3
	ld a,(hl)
	cp #40
	ret z
	call l7132
	inc hl
	jr l72a3
.l72ad
	ld hl,l7f7b
	ld (l75cc),hl
	ld hl,l7f84
	ld (l75ce),hl
	ld hl,l7f8d
	ld (l75d0),hl
	ld hl,l7f96
	ld (l75d2),hl
	ld hl,l7f77
	ld (l75ca),hl
	ret
.l72cc
	ld hl,l75b2
	ld de,l75b3
	ld bc,#0055
	ld (hl),#00
	ldir
	ld hl,l8289
	ld (l75f8),hl
	xor a
	ld (l75fa),a
	ld de,#3442
	ld (l75f6),de
	ld ix,l75d6
	ld (ix+#00),#70
	ld (ix+#01),#34
	ld (ix+#02),#83
	ld (ix+#03),#9a
	ld (ix+#04),#70
	ld (ix+#05),#39
	ld (ix+#06),#83
	ld (ix+#07),#9a
	ld (ix+#08),#70
	ld (ix+#09),#3e
	ld (ix+#0a),#83
	ld (ix+#0b),#9a
	ld (ix+#0c),#70
	ld (ix+#0d),#43
	ld (ix+#0e),#83
	ld (ix+#0f),#9a
	ld (ix+#10),#88
	ld (ix+#11),#34
	ld (ix+#12),#83
	ld (ix+#13),#9a
	ld (ix+#14),#88
	ld (ix+#15),#39
	ld (ix+#16),#83
	ld (ix+#17),#9a
	ld (ix+#18),#88
	ld (ix+#19),#3e
	ld (ix+#1a),#83
	ld (ix+#1b),#9a
	ld (ix+#1c),#88
	ld (ix+#1d),#43
	ld (ix+#1e),#83
	ld (ix+#1f),#9a
	ld a,#16
	ld (l75d4),a
	ld (l75d5),a
	ld hl,#0b00
	ld (l75c8),hl
	ld hl,l75d8
	ld (l7405),hl
	call l73ae
	and #07
	ld (l7400),a
	add a
	ld hl,l7db3
	ld e,a
	ld d,#00
	add hl,de
	ld (l7401),hl
	ld hl,l7dc1
	add hl,de
	ld (l7403),hl
	ld a,#fe
	ld (l73fd),a
	ret
.l73a2
	ret
.l73a3
	call #bd19
	ld c,#00
.l73a8
	dec c
	jr nz,l73a8
	djnz l73a3
	ret
.l73ae
	push hl
	ld hl,l75a5
	ld a,(hl)
	rlca
	xor (hl)
	rrca
	inc hl
	inc (hl)
	add (hl)
	and a
	jp pe,l73be
	inc (hl)
.l73be
	dec hl
	ld (hl),a
	pop hl
	ret
.l73c2
	ld a,#0f
.l73c4
	ld bc,#0000
	push af
	call #bc32
	pop af
	dec a
	jp p,l73c4
	ret
.l73d1
	ld b,(ix+#00)
	ld c,(ix+#01)
	call #bc38
	inc ix
	inc ix
	xor a
.l73df
	ld b,(ix+#00)
	ld c,(ix+#01)
	push af
	call #bc32
	pop af
	inc ix
	inc ix
	inc a
	cp #10
	jr nz,l73df
	ret
.l73fb equ $ + 7
.l73fa equ $ + 6
.l73f8 equ $ + 4
.l73f6 equ $ + 2
.l73f5 equ $ + 1
.l73f4
	db #07,#07,#50,#00,#c4,#01,#ff,#01
.l7403 equ $ + 7
.l7401 equ $ + 5
.l7400 equ $ + 4
.l73fd equ $ + 1
	db #7f,#fe,#00,#00,#01,#b5,#7d,#c3
.l740b equ $ + 7
.l7409 equ $ + 5
.l7407 equ $ + 3
.l7405 equ $ + 1
	db #7d,#d8,#75,#17,#7e,#8c,#74,#00
.l7413 equ $ + 7
.l7411 equ $ + 5
.l740f equ $ + 3
.l740d equ $ + 1
.l740c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l741d equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l742a equ $ + 6
.l7429 equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7442 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7444
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #48,#06,#48,#3c,#88,#06,#88,#34
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #38,#0d,#38,#41,#a0,#14,#78,#36
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #20,#06,#20,#12,#20,#38,#20,#45
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #18,#45,#a0,#05,#a8,#2c,#a8,#3c
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #a0,#11,#30,#1d,#58,#41,#80,#41
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #39,#14,#39,#36,#79,#14,#79,#36
	db #28,#0a,#20,#3e,#60,#44,#a0,#45
	db #40,#3f,#a0,#3c,#60,#04,#a0,#10
	db #19,#06,#41,#06,#60,#41,#90,#36
	db #28,#13,#20,#40,#90,#16,#90,#2f
	db #18,#10,#18,#3c,#a0,#08,#a0,#34
	db #20,#38,#76,#41,#4b,#18,#a0,#34
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7568 equ $ + 4
.l7567 equ $ + 3
.l7566 equ $ + 2
.l7565 equ $ + 1
.l7564
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l757b equ $ + 7
.l757a equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7582 equ $ + 6
.l7580 equ $ + 4
.l757f equ $ + 3
.l757e equ $ + 2
.l757c
	db #00,#00,#00,#00,#00,#00,#00,#00
.l758b equ $ + 7
.l758a equ $ + 6
.l7588 equ $ + 4
.l7586 equ $ + 2
.l7584
	db #00,#00,#00,#00,#00,#00,#00,#ad
.l7593 equ $ + 7
.l7591 equ $ + 5
.l758f equ $ + 3
.l758e equ $ + 2
.l758d equ $ + 1
	db #61,#02,#02,#bc,#97,#bc,#97,#02
.l759a equ $ + 6
.l7598 equ $ + 4
.l7596 equ $ + 2
.l7594
	db #4e,#96,#0a,#1e,#00,#00,#ac,#24
.l75a3 equ $ + 7
.l75a1 equ $ + 5
.l75a0 equ $ + 4
.l759e equ $ + 2
.l759c
	db #9a,#04,#20,#32,#00,#00,#00,#02
.l75a6 equ $ + 2
.l75a5 equ $ + 1
	db #00,#a9,#04,#00,#00,#00,#00,#00
.l75b3 equ $ + 7
.l75b2 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.l75bb equ $ + 7
.l75ba equ $ + 6
.l75b8 equ $ + 4
.l75b7 equ $ + 3
.l75b6 equ $ + 2
.l75b5 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l75c3 equ $ + 7
.l75c1 equ $ + 5
.l75c0 equ $ + 4
.l75bf equ $ + 3
.l75be equ $ + 2
.l75bd equ $ + 1
.l75bc
	db #01,#00,#00,#00,#00,#01,#00,#00
.l75ca equ $ + 6
.l75c8 equ $ + 4
.l75c5 equ $ + 1
.l75c4
	db #00,#00,#00,#00,#6b,#0a,#77,#7f
.l75d2 equ $ + 6
.l75d0 equ $ + 4
.l75ce equ $ + 2
.l75cc
	db #81,#7f,#84,#7f,#8d,#7f,#96,#7f
.l75d8 equ $ + 4
.l75d6 equ $ + 2
.l75d5 equ $ + 1
.l75d4
	db #16,#16,#70,#34,#83,#9a,#70,#39
	db #83,#9a,#70,#3e,#83,#9a,#70,#43
	db #83,#9a,#88,#34,#83,#9a,#88,#39
	db #83,#9a,#88,#3e,#83,#9a,#88,#43
.l75fa equ $ + 6
.l75f8 equ $ + 4
.l75f7 equ $ + 3
.l75f6 equ $ + 2
	db #83,#9a,#17,#34,#f1,#83,#09,#00
.l7603 equ $ + 7
.l7602 equ $ + 6
.l7601 equ $ + 5
.l75fd equ $ + 1
.l75fc
	db #00,#00,#00,#00,#00,#00,#00,#00
.l760a equ $ + 6
.l7609 equ $ + 5
.l7606 equ $ + 2
	db #00,#00,#0e,#00,#00,#d6,#cc,#02
	db #08,#00,#cc,#02,#08,#00,#38,#02
	db #08,#00,#38,#02,#08,#00,#de,#01
	db #08,#00,#de,#01,#08,#00,#aa,#01
	db #08,#00,#aa,#01,#08,#00,#92,#01
	db #08,#00,#92,#01,#08,#00,#aa,#01
	db #08,#00,#aa,#01,#08,#00,#de,#01
	db #08,#00,#de,#01,#08,#00,#38,#02
	db #08,#00,#38,#02,#08,#00,#cc,#02
	db #08,#00,#cc,#02,#08,#00,#38,#02
	db #08,#00,#38,#02,#08,#00,#de,#01
	db #08,#00,#de,#01,#08,#00,#aa,#01
	db #08,#00,#aa,#01,#08,#00,#92,#01
	db #08,#00,#92,#01,#08,#00,#aa,#01
	db #08,#00,#aa,#01,#08,#00,#de,#01
	db #08,#00,#de,#01,#08,#00,#38,#02
	db #08,#00,#38,#02,#08,#00,#18,#02
	db #08,#00,#18,#02,#08,#00,#aa,#01
	db #08,#00,#aa,#01,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#3f,#01
	db #08,#00,#3f,#01,#08,#00,#2d,#01
	db #08,#00,#2d,#01,#08,#00,#3f,#01
	db #08,#00,#3f,#01,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#aa,#01
	db #08,#00,#aa,#01,#08,#00,#cc,#02
	db #08,#00,#cc,#02,#08,#00,#38,#02
	db #08,#00,#38,#02,#08,#00,#de,#01
	db #08,#00,#de,#01,#08,#00,#aa,#01
	db #08,#00,#aa,#01,#08,#00,#92,#01
	db #08,#00,#92,#01,#08,#00,#aa,#01
	db #08,#00,#aa,#01,#08,#00,#de,#01
	db #08,#00,#de,#01,#08,#00,#38,#02
	db #08,#00,#38,#02,#08,#00,#de,#01
	db #08,#00,#de,#01,#08,#00,#7b,#01
	db #08,#00,#7b,#01,#08,#00,#3f,#01
	db #08,#00,#3f,#01,#08,#00,#1c,#01
	db #08,#00,#1c,#01,#08,#00,#18,#02
	db #08,#00,#18,#02,#08,#00,#aa,#01
	db #08,#00,#aa,#01,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#3f,#01
	db #08,#00,#3f,#01,#08,#00,#cc,#02
	db #08,#00,#cc,#02,#08,#00,#38,#02
	db #08,#00,#38,#02,#08,#00,#de,#01
	db #08,#00,#de,#01,#08,#00,#aa,#01
	db #08,#00,#aa,#01,#08,#00,#92,#01
	db #08,#00,#92,#01,#08,#00,#aa,#01
	db #08,#00,#aa,#01,#08,#00,#de,#01
	db #08,#00,#de,#01,#08,#00,#38,#02
	db #08,#00,#38,#02,#08,#00,#00,#00
.l778e equ $ + 2
	db #00,#00,#66,#01,#08,#00,#66,#01
	db #08,#00,#3f,#01,#08,#00,#66,#01
	db #08,#00,#2d,#01,#08,#00,#66,#01
	db #08,#00,#3f,#01,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#66,#01
	db #08,#00,#3f,#01,#08,#00,#66,#01
	db #08,#00,#2d,#01,#08,#00,#aa,#01
	db #10,#00,#92,#01,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#3f,#01
	db #08,#00,#66,#01,#08,#00,#2d,#01
	db #08,#00,#66,#01,#08,#00,#3f,#01
	db #08,#00,#66,#01,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#3f,#01
	db #08,#00,#66,#01,#08,#00,#2d,#01
	db #08,#00,#aa,#01,#10,#00,#92,#01
	db #08,#00,#0c,#01,#08,#00,#0c,#01
	db #08,#00,#ef,#00,#08,#00,#0c,#01
	db #08,#00,#e1,#00,#08,#00,#0c,#01
	db #08,#00,#ef,#00,#08,#00,#0c,#01
	db #08,#00,#0c,#01,#08,#00,#0c,#01
	db #08,#00,#ef,#00,#08,#00,#0c,#01
	db #08,#00,#e1,#00,#08,#00,#3f,#01
	db #10,#00,#66,#01,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#3f,#01
	db #08,#00,#66,#01,#08,#00,#2d,#01
	db #08,#00,#66,#01,#08,#00,#3f,#01
	db #08,#00,#66,#01,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#3f,#01
	db #08,#00,#66,#01,#08,#00,#2d,#01
	db #08,#00,#aa,#01,#10,#00,#92,#01
	db #08,#00,#ef,#00,#08,#00,#ef,#00
	db #08,#00,#d5,#00,#08,#00,#ef,#00
	db #08,#00,#0c,#01,#08,#00,#ef,#00
	db #08,#00,#d5,#00,#08,#00,#ef,#00
	db #08,#00,#0c,#01,#08,#00,#0c,#01
	db #08,#00,#ef,#00,#08,#00,#0c,#01
	db #08,#00,#e1,#00,#08,#00,#0c,#01
	db #08,#00,#ef,#00,#08,#00,#0c,#01
	db #08,#00,#66,#01,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#66,#01
	db #08,#00,#2d,#01,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#66,#01
	db #08,#00,#66,#01,#08,#00,#66,#01
	db #08,#00,#3f,#01,#08,#00,#66,#01
	db #08,#00,#2d,#01,#08,#00,#8e,#00
	db #08,#00,#77,#00,#08,#00,#6a,#00
	db #08,#00,#59,#00,#08,#00,#59,#00
	db #08,#00,#59,#00,#08,#00,#59,#00
	db #08,#00,#59,#00,#08,#00,#64,#00
	db #08,#00,#6a,#00,#08,#00,#77,#00
	db #08,#00,#96,#00,#08,#00,#8e,#00
	db #08,#00,#b3,#00,#08,#00,#d5,#00
	db #08,#00,#b3,#00,#08,#00,#d5,#00
	db #08,#00,#b3,#00,#08,#00,#9f,#00
	db #08,#00,#96,#00,#08,#00,#96,#00
	db #08,#00,#9f,#00,#08,#00,#b3,#00
	db #08,#00,#b3,#00,#08,#00,#d5,#00
	db #08,#00,#b3,#00,#08,#00,#9f,#00
	db #08,#00,#9f,#00,#08,#00,#d5,#00
	db #08,#00,#b3,#00,#08,#00,#b3,#00
	db #08,#00,#00,#00,#08,#00,#6a,#00
	db #08,#00,#59,#00,#08,#00,#50,#00
	db #08,#00,#43,#00,#08,#00,#43,#00
	db #08,#00,#43,#00,#08,#00,#43,#00
	db #08,#00,#43,#00,#08,#00,#4b,#00
	db #08,#00,#50,#00,#08,#00,#59,#00
	db #08,#00,#71,#00,#08,#00,#6a,#00
	db #08,#00,#86,#00,#08,#00,#9f,#00
	db #08,#00,#86,#00,#08,#00,#9f,#00
	db #08,#00,#86,#00,#08,#00,#77,#00
	db #08,#00,#71,#00,#08,#00,#71,#00
	db #08,#00,#77,#00,#08,#00,#86,#00
	db #08,#00,#71,#00,#08,#00,#71,#00
	db #08,#00,#77,#00,#08,#00,#86,#00
	db #08,#00,#77,#00,#08,#00,#9f,#00
	db #08,#00,#86,#00,#08,#00,#86,#00
	db #08,#00,#00,#00,#08,#00,#5f,#00
	db #08,#00,#50,#00,#08,#00,#47,#00
	db #08,#00,#3c,#00,#04,#00,#3c,#00
	db #04,#00,#3c,#00,#04,#00,#3c,#00
	db #04,#00,#3c,#00,#04,#00,#43,#00
	db #04,#00,#47,#00,#04,#00,#50,#00
	db #04,#00,#86,#00,#04,#00,#5f,#00
	db #04,#00,#77,#00,#04,#00,#8e,#00
	db #04,#00,#77,#00,#04,#00,#8e,#00
	db #04,#00,#77,#00,#04,#00,#6a,#00
	db #04,#00,#43,#00,#04,#00,#43,#00
	db #04,#00,#43,#00,#04,#00,#43,#00
	db #04,#00,#43,#00,#04,#00,#4b,#00
	db #04,#00,#50,#00,#04,#00,#59,#00
	db #04,#00,#71,#00,#04,#00,#6a,#00
	db #04,#00,#86,#00,#04,#00,#9f,#00
	db #04,#00,#86,#00,#04,#00,#9f,#00
	db #04,#00,#86,#00,#04,#00,#77,#00
	db #04,#00,#59,#00,#04,#00,#59,#00
	db #04,#00,#59,#00,#04,#00,#59,#00
	db #04,#00,#59,#00,#04,#00,#64,#00
	db #04,#00,#6a,#00,#04,#00,#77,#00
	db #04,#00,#96,#00,#04,#00,#8e,#00
	db #04,#00,#b3,#00,#04,#00,#d5,#00
	db #04,#00,#b3,#00,#04,#00,#d5,#00
	db #04,#00,#b3,#00,#04,#00,#9f,#00
	db #04,#00,#96,#00,#04,#00,#96,#00
	db #04,#00,#9f,#00,#04,#00,#b3,#00
	db #04,#00,#b3,#00,#04,#00,#d5,#00
	db #04,#00,#b3,#00,#04,#00,#9f,#00
	db #04,#00,#9f,#00,#04,#00,#d5,#00
	db #04,#00,#b3,#00,#04,#00,#be,#00
	db #04,#00,#00,#00,#08,#00,#ef,#00
	db #08,#00,#ef,#00,#08,#00,#ef,#00
	db #08,#00,#ef,#00,#08,#00,#ef,#00
	db #08,#00,#ef,#00,#08,#00,#1c,#01
	db #08,#00,#0c,#01,#08,#00,#1c,#01
	db #08,#00,#0c,#01,#08,#00,#1c,#01
	db #10,#00,#ef,#00,#18,#00,#00,#00
	db #08,#00,#ef,#00,#08,#00,#ef,#00
	db #08,#00,#ef,#00,#08,#00,#ef,#00
	db #08,#00,#ef,#00,#08,#00,#ef,#00
	db #08,#00,#1c,#01,#08,#00,#0c,#01
	db #08,#00,#1c,#01,#08,#00,#0c,#01
	db #08,#00,#1c,#01,#10,#00,#66,#01
	db #18,#00,#00,#00,#08,#00,#ef,#00
	db #08,#00,#ef,#00,#08,#00,#2d,#01
	db #08,#00,#0c,#01,#08,#00,#0c,#01
	db #04,#00,#2d,#01,#04,#00,#0c,#01
	db #08,#00,#2d,#01,#08,#00,#0c,#01
	db #08,#00,#2d,#01,#08,#00,#0c,#01
	db #08,#00,#2d,#01,#10,#00,#ef,#00
	db #18,#00,#00,#00,#08,#00,#ef,#00
	db #08,#00,#ef,#00,#08,#00,#ef,#00
	db #08,#00,#ef,#00,#08,#00,#1c,#01
	db #08,#00,#ef,#00,#08,#00,#ef,#00
	db #04,#00,#1c,#01,#04,#00,#0c,#01
	db #08,#00,#1c,#01,#08,#00,#0c,#01
	db #08,#00,#1c,#01,#08,#00,#66,#01
	db #08,#00,#66,#01,#18,#00,#00,#00
	db #08,#00,#ef,#00,#08,#00,#ef,#00
	db #08,#00,#1c,#01,#08,#00,#0c,#01
	db #08,#00,#1c,#01,#08,#00,#0c,#01
	db #08,#00,#1c,#01,#08,#00,#0c,#01
	db #08,#00,#1c,#01,#08,#00,#0c,#01
	db #10,#00,#1c,#01,#08,#00,#ef,#00
	db #08,#00,#66,#01,#08,#00,#1c,#01
	db #08,#00,#0c,#01,#08,#00,#ef,#00
	db #08,#00,#ef,#00,#08,#00,#ef,#00
	db #08,#00,#ef,#00,#10,#00,#1c,#01
	db #08,#00,#0c,#01,#08,#00,#1c,#01
	db #08,#00,#0c,#01,#08,#00,#1c,#01
	db #08,#00,#66,#01,#08,#00,#66,#01
	db #10,#00,#8e,#00,#08,#00,#77,#00
	db #08,#00,#6a,#00,#08,#00,#59,#00
	db #08,#00,#59,#00,#08,#00,#59,#00
	db #08,#00,#59,#00,#08,#00,#59,#00
	db #08,#00,#0c,#01,#08,#00,#6a,#00
	db #08,#00,#0c,#01,#08,#00,#59,#00
	db #08,#00,#59,#00,#08,#00,#59,#00
	db #08,#00,#59,#00,#08,#00,#59,#00
	db #08,#00,#0c,#01,#08,#00,#6a,#00
	db #08,#00,#0c,#01,#08,#00,#59,#00
	db #08,#00,#b3,#00,#08,#00,#b3,#00
	db #08,#00,#59,#00,#08,#00,#b3,#00
	db #08,#00,#b3,#00,#08,#00,#59,#00
	db #08,#00,#b3,#00,#08,#00,#59,#00
	db #08,#00,#b3,#00,#08,#00,#b3,#00
	db #08,#00,#59,#00,#08,#00,#b3,#00
	db #08,#00,#b3,#00,#08,#00,#59,#00
	db #08,#00,#b3,#00,#08,#00,#3c,#00
	db #08,#00,#3c,#00,#08,#00,#3f,#00
	db #10,#00,#3c,#00,#08,#00,#3c,#00
	db #08,#00,#3f,#00,#10,#00,#3c,#00
	db #08,#00,#3c,#00,#08,#00,#3f,#00
	db #10,#00,#3c,#00,#08,#00,#3c,#00
	db #08,#00,#3f,#00,#10,#00,#59,#00
	db #08,#00,#59,#00,#08,#00,#5f,#00
	db #10,#00,#59,#00,#08,#00,#59,#00
	db #08,#00,#5f,#00,#10,#00,#59,#00
	db #08,#00,#59,#00,#08,#00,#5f,#00
	db #10,#00,#59,#00,#08,#00,#59,#00
	db #08,#00,#5f,#00,#10,#00,#35,#00
	db #08,#00,#35,#00,#08,#00,#38,#00
	db #10,#00,#35,#00,#08,#00,#35,#00
	db #08,#00,#38,#00,#10,#00,#3c,#00
	db #08,#00,#3c,#00,#08,#00,#3f,#00
	db #10,#00,#3c,#00,#08,#00,#3c,#00
	db #08,#00,#3f,#00,#10,#00,#59,#00
	db #08,#00,#59,#00,#08,#00,#5f,#00
	db #10,#00,#59,#00,#08,#00,#59,#00
	db #08,#00,#5f,#00,#10,#00,#59,#00
	db #08,#00,#59,#00,#08,#00,#5f,#00
	db #10,#00,#59,#00,#08,#00,#59,#00
	db #08,#00,#5f,#00,#10,#00,#00,#00
	db #a8,#00,#00,#00,#80,#00,#00,#00
	db #80,#00,#00,#00,#80,#00,#00,#00
	db #80,#00,#00,#00,#80,#00,#00,#00
.l7d9e equ $ + 2
	db #00,#00,#10,#20,#30,#51,#a2,#f3
	db #50,#a0,#f0,#54,#a8,#fc,#45,#8a
.l7db3 equ $ + 7
	db #cf,#40,#80,#c0,#44,#88,#cc,#ea
	db #89,#05,#8a,#1f,#8a,#3a,#8a,#54
.l7dc1 equ $ + 5
	db #8a,#6c,#8a,#8c,#8a,#00,#8a,#18
	db #8a,#30,#8a,#45,#8a,#63,#8a,#7a
.l7dcf equ $ + 3
	db #8a,#9c,#8a,#08,#25,#32,#53,#5a
	db #71,#74,#79,#7e,#83,#86,#89,#08
	db #25,#32,#53,#5a,#71,#74,#79,#7e
	db #83,#86,#89,#09,#78,#7d,#72,#5a
	db #53,#73,#7b,#74,#76,#7b,#7c,#82
	db #0b,#30,#58,#88,#50,#70,#75,#7a
	db #7d,#08,#31,#0a,#27,#50,#59,#71
	db #76,#7b,#80,#85,#8a,#0b,#30,#51
	db #5a,#73,#78,#7d,#82,#87,#08,#25
	db #32,#53,#70,#75,#7a,#7f,#84,#89
	db #0a,#27,#50,#59,#74,#7b,#82,#89
	db #24,#33,#5a,#75,#7c,#83,#8a,#25
	db #50,#5b,#76,#7d,#84,#8b,#26,#51
	db #70,#77,#7e,#85,#08,#27,#52,#71
	db #78,#7f,#86,#09,#30,#53,#5a,#71
	db #7a,#83,#08,#31,#5a,#77,#80,#89
.l7e4f equ $ + 3
	db #26,#53,#74,#38,#0e,#63,#20,#8e
.l7e5b equ $ + 7
.l7e55 equ $ + 1
	db #32,#4e,#14,#7a,#20,#9c,#2c,#10
	db #0c,#06,#10,#1c,#02,#10,#28,#05
.l7e67 equ $ + 3
	db #10,#3a,#03,#70,#05,#20,#2c,#a0
.l7e73 equ $ + 7
.l7e6d equ $ + 1
	db #24,#52,#a6,#12,#66,#8a,#b6,#b0
.l7e77 equ $ + 3
	db #8f,#18,#90,#20,#12,#20,#36,#50
.l7e7f equ $ + 3
	db #12,#50,#36,#89,#82,#b1,#82,#d9
	db #82,#01,#83,#29,#83,#51,#83,#79
	db #83,#a1,#83,#c9,#83,#f1,#83,#19
	db #84,#41,#84,#69,#84,#91,#84,#b9
	db #84,#e1,#84,#09,#85,#31,#85,#59
	db #85,#81,#85,#a9,#85,#d1,#85,#f9
	db #85,#21,#86,#49,#86,#71,#86,#99
	db #86,#c1,#86,#e9,#86,#11,#87,#39
	db #87,#61,#87,#89,#87,#b1,#87,#d9
.l7ec7 equ $ + 3
	db #87,#01,#88,#04,#0b,#13,#1b,#24
.l7ed1 equ $ + 5
	db #05,#32,#0d,#0d,#35,#28,#0a,#38
.l7ed7 equ $ + 3
	db #22,#a0,#3a,#2c,#0d,#34,#1a,#90
.l7edd equ $ + 1
	db #2a,#6d,#91,#ed,#91,#6d,#92,#ed
.l7ee5 equ $ + 1
	db #91,#ed,#92,#61,#93,#d5,#93,#61
.l7ef1 equ $ + 5
.l7eed equ $ + 1
	db #93,#2b,#18,#2b,#19,#2b,#2f,#2b
.l7efb equ $ + 7
.l7ef5 equ $ + 1
	db #2e,#c8,#96,#bc,#97,#42,#97,#5a
.l7f01 equ $ + 5
	db #95,#4e,#96,#d4,#95,#97,#9e,#0b
.l7f09 equ $ + 5
	db #9f,#7f,#9f,#f3,#9f,#df,#9b,#53
.l7f11 equ $ + 5
	db #9c,#c7,#9c,#53,#9c,#3b,#9d,#af
.l7f19 equ $ + 5
	db #9d,#23,#9e,#af,#9d,#c7,#9c,#c7
.l7f21 equ $ + 5
	db #9c,#c7,#9c,#c7,#9c,#23,#9e,#23
.l7f29 equ $ + 5
	db #9e,#23,#9e,#23,#9e,#63,#9b,#63
.l7f31 equ $ + 5
	db #9b,#63,#9b,#63,#9b,#a1,#9b,#a1
.l7f39 equ $ + 5
	db #9b,#a1,#9b,#a1,#9b,#0b,#9f,#53
	db #9c,#7f,#9f,#c7,#9c,#23,#9e,#df
	db #9b,#97,#9e,#af,#9d,#53,#9c,#7f
.l7f4f equ $ + 3
	db #9f,#00,#00,#20,#32,#20,#3e,#70
.l7f57 equ $ + 3
	db #32,#70,#3e,#ab,#98,#b7,#98,#bf
.l7f5f equ $ + 3
	db #98,#c9,#98,#eb,#98,#f3,#98,#d7
.l7f67 equ $ + 3
	db #98,#e3,#98,#01,#99,#33,#99,#65
.l7f6f equ $ + 3
	db #99,#97,#99,#65,#99,#97,#99,#01
.l7f7b equ $ + 7
.l7f77 equ $ + 3
	db #99,#33,#99,#06,#0f,#10,#18,#05
	db #07,#03,#07,#03,#05,#03,#05,#07
.l7f84
	db #00,#00,#1a,#00,#1a,#00,#1a,#00
.l7f8d equ $ + 1
	db #00,#06,#18,#02,#02,#06,#18,#18
.l7f96 equ $ + 2
	db #02,#06,#01,#02,#03,#06,#0c,#18
.l7f9c
	db #00,#00,#00,#00,#10,#10,#06,#06
	db #00,#00,#06,#06,#00,#00,#0b,#0b
	db #06,#06,#0d,#0d,#10,#10,#0d,#0d
	db #0d,#0d,#1a,#1a,#06,#06,#0d,#0d
	db #0d,#0d,#0d,#0d,#00,#00,#09,#09
	db #13,#13,#0d,#0d,#0d,#0d,#00,#00
	db #0b,#0b,#18,#18,#04,#04,#06,#06
	db #02,#02,#0d,#0d,#1a,#1a,#08,#08
	db #0d,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #07,#07,#10,#10,#0d,#0d,#0d,#0d
	db #06,#06,#0b,#0b,#18,#18,#04,#04
	db #06,#06,#02,#02,#0d,#0d,#1a,#1a
	db #08,#08,#0d,#0d,#0d,#0d,#0d,#0d
	db #00,#00,#04,#04,#08,#08,#0d,#0d
	db #0d,#0d,#00,#00,#0b,#0b,#18,#18
	db #04,#04,#06,#06,#02,#02,#0d,#0d
	db #1a,#1a,#08,#08,#0d,#0d,#0d,#0d
	db #0d,#0d,#00,#00,#01,#01,#02,#02
	db #0d,#0d,#0d,#0d,#00,#00,#0b,#0b
	db #0b,#0b,#04,#04,#06,#06,#02,#02
	db #0d,#0d,#1a,#1a,#08,#08,#0d,#0d
	db #0d,#0d,#0d,#0d,#00,#00,#07,#07
	db #07,#07,#0d,#0d,#0d,#0d,#0f,#0f
	db #0b,#0b,#18,#18,#0e,#0e,#06,#06
	db #02,#02,#0d,#0d,#1a,#1a,#08,#08
	db #0d,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #0e,#0e,#12,#12,#02,#02,#14,#14
	db #0d,#0d,#0b,#0b,#18,#18,#0e,#0e
	db #06,#06,#02,#02,#0d,#0d,#1a,#1a
	db #08,#08,#0d,#0d,#0d,#0d,#0d,#0d
	db #00,#00,#0f,#0f,#18,#18,#0d,#0d
	db #18,#18,#00,#00,#0b,#0b,#0f,#0f
	db #10,#10,#06,#06,#02,#02,#08,#08
	db #1a,#1a,#08,#08,#0d,#0d,#0d,#0d
	db #0d,#0d,#00,#00,#08,#08,#07,#07
	db #0d,#0d,#0d,#0d,#00,#00,#0b,#0b
	db #18,#18,#04,#04,#06,#06,#02,#02
	db #0d,#0d,#1a,#1a,#08,#08,#0d,#0d
	db #0d,#0d,#0d,#0d,#00,#00,#03,#03
	db #03,#03,#01,#01,#0d,#0d,#00,#00
	db #0b,#0b,#18,#18,#1a,#1a,#06,#06
	db #02,#02,#0d,#0d,#1a,#1a,#18,#18
	db #0d,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #0a,#0a,#14,#14,#0d,#0d,#0d,#0d
	db #01,#01,#0b,#0b,#14,#14,#04,#04
	db #02,#02,#02,#02,#0d,#0d,#1a,#1a
	db #08,#08,#0d,#0d,#0d,#0d,#0d,#0d
	db #00,#00,#04,#04,#11,#11,#0d,#0d
	db #0d,#0d,#00,#00,#0b,#0b,#18,#18
	db #04,#04,#06,#06,#02,#02,#10,#10
	db #1a,#1a,#08,#08,#0d,#0d,#0d,#0d
	db #0d,#0d,#00,#00,#03,#03,#10,#10
	db #0d,#0d,#0d,#0d,#00,#00,#0b,#0b
	db #18,#18,#04,#04,#06,#06,#02,#02
	db #0d,#0d,#1a,#1a,#0f,#0f,#0d,#0d
	db #0d,#0d,#0d,#0d,#00,#00,#01,#02
	db #02,#01,#09,#12,#12,#09,#04,#04
	db #0b,#0b,#18,#18,#0f,#0f,#06,#06
	db #02,#02,#0d,#18,#1a,#1a,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #09,#12,#12,#09,#0c,#18,#18,#0c
	db #04,#04,#0b,#0b,#18,#18,#0f,#0f
	db #06,#06,#02,#02,#0d,#18,#1a,#1a
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #00,#00,#0d,#0d,#19,#19,#18,#18
	db #0c,#0c,#12,#12,#0b,#0b,#18,#18
	db #06,#06,#10,#10,#02,#02,#06,#06
	db #1a,#1a,#08,#08,#0d,#0d,#0d,#0d
	db #0d,#0d,#00,#00,#06,#10,#10,#06
	db #04,#11,#11,#04,#04,#04,#0b,#0b
	db #18,#18,#0f,#0f,#06,#06,#02,#02
	db #0d,#18,#1a,#1a,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#00,#00,#09,#12
	db #12,#09,#0a,#14,#14,#0a,#04,#04
	db #0b,#0b,#18,#18,#0f,#0f,#06,#06
	db #02,#02,#0d,#18,#1a,#1a,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#00,#00
	db #04,#11,#11,#04,#03,#06,#06,#03
	db #04,#04,#0b,#0b,#18,#18,#0f,#0f
	db #06,#06,#02,#02,#0d,#18,#1a,#1a
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #00,#00,#0a,#14,#14,#0a,#01,#02
	db #02,#01,#04,#04,#0b,#0b,#18,#18
	db #0f,#0f,#06,#06,#02,#02,#0d,#18
	db #1a,#1a,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#00,#00,#06,#06,#03,#03
	db #06,#06,#06,#06,#06,#06,#0b,#0b
	db #18,#18,#06,#06,#06,#06,#1a,#1a
	db #06,#06,#1a,#1a,#08,#08,#06,#06
	db #06,#06,#0d,#0d,#00,#00,#0d,#0d
	db #1a,#1a,#03,#03,#06,#06,#02,#02
	db #0b,#0b,#18,#18,#03,#03,#06,#06
	db #02,#02,#08,#08,#1a,#1a,#12,#12
.l8289 equ $ + 5
	db #0d,#0d,#0d,#0d,#c9,#00,#5c,#26
	db #be,#7f,#88,#82,#a1,#69,#00,#00
	db #b1,#82,#d9,#82,#01,#83,#fe,#01
	db #02,#03,#00,#00,#00,#ba,#68,#00
	db #00,#00,#00,#00,#00,#00,#00,#46
	db #49,#05,#05,#65,#5a,#01,#0c,#38
	db #56,#81,#88,#82,#88,#82,#89,#82
	db #29,#83,#00,#00,#00,#00,#00,#04
	db #fe,#fe,#24,#0c,#c5,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#00,#28,#3f
	db #f0,#80,#b7,#5b,#ab,#69,#00,#00
	db #e1,#84,#00,#00,#89,#82,#fe,#0f
	db #fe,#00,#00,#00,#00,#c1,#68,#48
	db #06,#48,#3c,#88,#06,#88,#34,#48
	db #49,#05,#05,#65,#5a,#00,#04,#45
	db #be,#7f,#88,#82,#c6,#69,#00,#00
	db #00,#00,#89,#82,#f1,#83,#fe,#fe
	db #00,#09,#00,#00,#00,#ce,#68,#00
	db #00,#00,#00,#00,#00,#00,#00,#05
	db #05,#05,#05,#65,#5a,#01,#10,#39
	db #78,#81,#88,#82,#88,#82,#b1,#82
	db #51,#83,#89,#87,#e9,#86,#01,#05
	db #20,#1c,#25,#10,#c5,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#01,#14,#3a
	db #bc,#81,#88,#82,#88,#82,#29,#83
	db #79,#83,#00,#00,#11,#87,#04,#06
	db #fe,#1d,#26,#14,#c5,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#01,#1c,#3c
	db #de,#81,#88,#82,#88,#82,#51,#83
	db #a1,#83,#d9,#87,#00,#00,#05,#07
	db #22,#fe,#27,#18,#c5,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#01,#20,#3d
	db #00,#82,#88,#82,#88,#82,#79,#83
	db #c9,#83,#00,#00,#61,#87,#06,#08
	db #fe,#1f,#28,#1c,#c5,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#01,#24,#3e
	db #22,#82,#88,#82,#88,#82,#a1,#83
	db #21,#86,#00,#00,#91,#84,#07,#17
	db #fe,#0d,#28,#20,#c5,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#00,#50,#28
	db #12,#81,#88,#82,#d0,#69,#00,#00
	db #49,#86,#01,#83,#19,#84,#fe,#18
	db #03,#0a,#00,#00,#00,#d5,#68,#38
	db #0d,#38,#41,#a0,#14,#78,#36,#7e
	db #49,#05,#05,#52,#5a,#00,#5c,#26
	db #be,#7f,#88,#82,#e0,#69,#00,#00
	db #09,#85,#f1,#83,#41,#84,#fe,#10
	db #09,#0b,#00,#00,#00,#e2,#68,#00
	db #00,#00,#00,#00,#00,#00,#00,#46
	db #49,#05,#05,#65,#5a,#00,#04,#45
	db #be,#7f,#88,#82,#ea,#69,#00,#00
	db #00,#00,#19,#84,#69,#84,#fe,#fe
	db #0a,#0c,#00,#00,#00,#e9,#68,#00
	db #00,#00,#00,#00,#00,#00,#00,#05
	db #05,#05,#05,#65,#5a,#00,#44,#2a
	db #34,#81,#b7,#5b,#f4,#69,#00,#00
	db #00,#00,#41,#84,#fe,#00,#fe,#fe
	db #0b,#fe,#00,#00,#00,#f0,#68,#20
	db #06,#20,#12,#20,#38,#20,#45,#05
	db #05,#05,#05,#65,#5a,#00,#f8,#46
	db #f0,#80,#88,#82,#88,#82,#00,#00
	db #00,#00,#c9,#83,#b9,#84,#fe,#fe
	db #08,#0e,#00,#00,#00,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#05
	db #05,#05,#05,#88,#82,#01,#1c,#3c
	db #78,#81,#88,#82,#88,#82,#59,#85
	db #00,#00,#91,#84,#00,#00,#12,#fe
	db #0d,#fe,#27,#10,#c6,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#01,#18,#3b
	db #22,#82,#88,#82,#88,#82,#d9,#82
	db #89,#87,#00,#00,#00,#00,#02,#20
	db #fe,#fe,#24,#6c,#c4,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#01,#38,#2c
	db #78,#81,#88,#82,#88,#82,#19,#84
	db #a9,#85,#00,#00,#00,#00,#0a,#14
	db #fe,#fe,#24,#9c,#c6,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#01,#88,#82
	db #88,#82,#88,#82,#88,#82,#00,#00
	db #00,#00,#00,#00,#00,#00,#fe,#fe
	db #fe,#fe,#24,#14,#c6,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#01,#38,#2c
	db #56,#81,#88,#82,#88,#82,#c1,#86
	db #b9,#84,#00,#00,#00,#00,#1b,#0e
	db #fe,#fe,#24,#0c,#c6,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#00,#88,#82
	db #88,#82,#88,#82,#88,#82,#00,#00
	db #00,#00,#00,#00,#00,#00,#fe,#fe
	db #fe,#fe,#00,#00,#00,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#05
	db #05,#05,#05,#88,#82,#00,#90,#1f
	db #9a,#81,#88,#82,#15,#6a,#09,#85
	db #d1,#85,#00,#00,#00,#00,#10,#15
	db #fe,#fe,#00,#00,#00,#f7,#68,#18
	db #45,#a0,#05,#a8,#2c,#a8,#3c,#a8
	db #49,#a0,#01,#88,#82,#01,#18,#3b
	db #00,#82,#88,#82,#88,#82,#a9,#85
	db #f9,#85,#00,#00,#00,#00,#14,#16
	db #fe,#fe,#24,#a4,#c6,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#00,#84,#21
	db #44,#82,#88,#82,#21,#6a,#d1,#85
	db #00,#00,#c1,#86,#00,#00,#15,#fe
	db #1b,#fe,#00,#00,#00,#05,#69,#a0
	db #11,#30,#1d,#58,#41,#80,#41,#05
	db #05,#a6,#01,#88,#82,#00,#68,#24
	db #66,#82,#88,#82,#25,#6a,#c9,#83
	db #00,#00,#00,#00,#00,#00,#08,#fe
	db #fe,#fe,#00,#00,#00,#09,#69,#00
	db #00,#00,#00,#00,#00,#00,#00,#05
	db #05,#22,#01,#88,#82,#01,#0c,#38
	db #de,#81,#88,#82,#88,#82,#f1,#83
	db #71,#86,#00,#00,#00,#00,#09,#19
	db #fe,#fe,#24,#fc,#c5,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#01,#3c,#2d
	db #22,#82,#88,#82,#88,#82,#49,#86
	db #99,#86,#e9,#86,#00,#00,#18,#1a
	db #1c,#fe,#29,#00,#c6,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#01,#40,#2e
	db #00,#82,#88,#82,#88,#82,#71,#86
	db #c1,#86,#11,#87,#00,#00,#19,#1b
	db #1d,#fe,#29,#04,#c6,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#01,#14,#3a
	db #22,#82,#88,#82,#88,#82,#99,#86
	db #59,#85,#39,#87,#f9,#85,#1a,#12
	db #1e,#16,#2a,#08,#c6,#88,#82,#00
	db #00,#00,#00,#00,#00,#00,#00,#4b
	db #49,#4b,#01,#88,#82,#00,#1c,#41
	db #e0,#7f,#b7,#5b,#ae,#6a,#00,#00
	db #00,#00,#29,#83,#71,#86,#fe,#fe
	db #04,#19,#00,#00,#00,#35,#69,#39
	db #14,#39,#36,#79,#14,#79,#36,#05
	db #05,#05,#05,#88,#82,#00,#10,#43
	db #02,#80,#b7,#5b,#ba,#6a,#00,#00
	db #00,#00,#51,#83,#99,#86,#fe,#fe
	db #05,#1a,#00,#00,#00,#40,#69,#28
	db #0a,#20,#3e,#60,#44,#a0,#45,#05
	db #05,#05,#05,#88,#82,#00,#b8,#4a
	db #24,#80,#88,#82,#c1,#6a,#00,#00
	db #61,#87,#00,#00,#c1,#86,#fe,#1f
	db #fe,#1b,#00,#00,#00,#88,#82,#40
	db #3f,#a0,#3c,#60,#04,#a0,#10,#a0
	db #49,#05,#05,#88,#82,#00,#ec,#48
	db #46,#80,#b7,#5b,#e8,#6a,#39,#87
	db #00,#00,#a1,#83,#00,#00,#1e,#fe
	db #07,#fe,#00,#00,#00,#4b,#69,#19
	db #06,#41,#06,#60,#41,#90,#36,#05
	db #05,#98,#01,#88,#82,#00,#9c,#1d
	db #68,#80,#b7,#5b,#f8,#6a,#e1,#84
	db #b1,#87,#00,#00,#29,#83,#0f,#21
	db #fe,#04,#00,#00,#00,#4f,#69,#28
	db #13,#20,#40,#90,#16,#90,#2f,#10
	db #49,#a0,#02,#88,#82,#00,#a8,#1b
	db #8a,#80,#88,#82,#00,#6b,#89,#87
	db #d9,#87,#00,#00,#00,#00,#20,#22
	db #fe,#fe,#00,#00,#00,#53,#69,#18
	db #10,#18,#3c,#a0,#08,#a0,#34,#10
	db #49,#10,#02,#88,#82,#00,#b4,#19
	db #ac,#80,#88,#82,#5c,#6b,#b1,#87
	db #01,#88,#00,#00,#79,#83,#21,#23
	db #fe,#06,#00,#00,#00,#79,#69,#20
	db #38,#76,#41,#4b,#18,#a0,#34,#a0
	db #49,#10,#02,#88,#82,#00,#c0,#17
	db #ce,#80,#88,#82,#88,#82,#d9,#87
	db #00,#00,#00,#00,#00,#00,#22,#fe
	db #fe,#fe,#00,#00,#00,#8a,#69,#00
	db #00,#00,#00,#00,#00,#00,#00,#05
	db #05,#a0,#02,#88,#82
.l882d equ $ + 4
.l8829
	db #01,#07,#fe,#02,#82,#02,#00,#00
.l8836 equ $ + 5
	db #00,#1f,#0e,#00,#00,#01,#05,#fe
.l883a equ $ + 1
	db #14,#82,#0a,#ec,#01,#0a,#1e,#01
.l8841
	db #82,#03,#01,#f4,#01,#00,#0e,#00
.l884a equ $ + 1
	db #00,#03,#00,#0a,#01,#00,#f6,#01
.l8854 equ $ + 3
	db #0a,#00,#05,#82,#04,#00,#64,#00
.l885d equ $ + 4
	db #01,#00,#d4,#fe,#01,#05,#fe,#50
.l8868 equ $ + 7
.l8861
	db #82,#0a,#ec,#01,#0a,#14,#01,#82
	db #05,#02,#64,#00,#00,#0f,#00,#00
.l8875 equ $ + 4
.l8871
	db #01,#07,#fe,#0a,#82,#06,#00,#96
.l887e equ $ + 5
	db #00,#00,#0f,#00,#00,#01,#07,#fe
.l8882 equ $ + 1
	db #32,#82,#01,#0a,#01,#01,#f7,#01
.l8889
	db #82,#07,#03,#c8,#00,#05,#0f,#00
.l8898 equ $ + 7
.l8895 equ $ + 4
.l8892 equ $ + 1
	db #00,#03,#01,#0b,#02,#04,#00,#02
.l889f equ $ + 6
.l889c equ $ + 3
.l889b equ $ + 2
.l889a equ $ + 1
	db #03,#ff,#02,#81,#08,#00,#38,#02
.l88a8 equ $ + 7
.l88a5 equ $ + 4
	db #00,#00,#00,#00,#03,#01,#0c,#02
.l88af equ $ + 6
.l88ae equ $ + 5
.l88ad equ $ + 4
.l88ab equ $ + 2
	db #04,#00,#02,#03,#ff,#02,#84,#09
.l88b2 equ $ + 1
	db #00,#b3,#00,#00,#00,#00,#00,#26
	db #1d,#18,#19,#19,#0e,#1b,#24,#1d
	db #11,#0e,#24,#0c,#18,#19,#19,#0e
.l88cc equ $ + 3
	db #1b,#26,#40,#22,#18,#1e,#1b,#24
	db #0e,#17,#0e,#1b,#10,#22,#24,#0a
	db #17,#0d,#24,#1d,#12,#16,#0e,#24
	db #11,#0a,#1f,#0e,#24,#0b,#0e,#0e
	db #17,#24,#1b,#0e,#19,#15,#0e,#17
.l88f7 equ $ + 6
	db #12,#1c,#11,#0e,#0d,#40,#24,#24
	db #24,#22,#18,#1e,#1b,#24,#1c,#0c
	db #18,#1b,#0e,#24,#20,#0a,#1c,#24
.l890f equ $ + 6
	db #24,#24,#24,#24,#24,#40,#24,#24
	db #24,#24,#1b,#0a,#1d,#12,#17,#10
.l891a equ $ + 1
	db #40,#24,#24,#11,#0e,#0a,#0d,#1a
	db #1e,#0a,#1b,#1d,#0e,#1b,#1c,#24
	db #11,#12,#0e,#1b,#0a,#1b,#0c,#11
.l8933 equ $ + 2
	db #22,#40,#24,#24,#0c,#18,#16,#16
	db #12,#1c,#1c,#12,#18,#17,#0e,#1b
	db #24,#24,#24,#24,#24,#01,#00,#00
.l894c equ $ + 3
	db #00,#00,#40,#24,#24,#0c,#11,#12
	db #0e,#0f,#24,#12,#17,#1c,#19,#0e
	db #0c,#1d,#18,#1b,#24,#24,#24,#08
.l8965 equ $ + 4
	db #00,#00,#00,#40,#24,#24,#12,#17
	db #1c,#19,#0e,#0c,#1d,#18,#1b,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
.l897e equ $ + 5
	db #06,#00,#00,#00,#40,#24,#24,#1c
	db #0e,#1b,#10,#0e,#0a,#17,#1d,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
.l8997 equ $ + 6
	db #24,#04,#00,#00,#00,#40,#24,#24
	db #0c,#18,#17,#1c,#1d,#0a,#0b,#15
	db #0e,#24,#24,#24,#24,#24,#24,#24
.l89b0 equ $ + 7
	db #24,#24,#02,#00,#00,#00,#40,#0c
	db #18,#16,#16,#12,#1c,#1c,#12,#18
.l89bd equ $ + 4
	db #17,#0e,#1b,#40,#0c,#11,#12,#0e
	db #0f,#24,#12,#17,#1c,#19,#0e,#0c
.l89cd equ $ + 4
	db #1d,#18,#1b,#40,#12,#17,#1c,#19
.l89d7 equ $ + 6
	db #0e,#0c,#1d,#18,#1b,#40,#1c,#0e
.l89e0 equ $ + 7
	db #1b,#10,#0e,#0a,#17,#1d,#40,#0c
	db #18,#17,#1c,#1d,#0a,#0b,#15,#0e
	db #40,#0a,#24,#0b,#1e,#15,#15,#24
	db #16,#0a,#22,#24,#1c,#0e,#0e,#24
	db #22,#18,#1e,#1b,#40,#34,#34,#1d
	db #1e,#1b,#17,#40,#1e,#17,#0d,#0e
	db #1b,#24,#0f,#18,#18,#1d,#24,#22
	db #18,#1e,#24,#16,#0a,#22,#40,#0d
	db #1b,#18,#20,#1c,#0e,#40,#1d,#1b
	db #22,#24,#1d,#18,#24,#0a,#12,#16
	db #24,#0f,#18,#1b,#24,#0a,#40,#0c
	db #15,#0e,#0a,#1b,#24,#1c,#14,#22
	db #40,#17,#12,#0c,#0e,#1b,#24,#0a
	db #1c,#24,#0a,#40,#0c,#18,#20,#0a
	db #1b,#0d,#15,#22,#24,#19,#15,#0a
	db #17,#1d,#40,#19,#15,#1e,#1d,#18
	db #17,#12,#1e,#16,#24,#15,#12,#0e
	db #1c,#40,#1e,#17,#0d,#0e,#1b,#24
	db #16,#0e,#40,#1d,#11,#1b,#0e,#0e
	db #24,#1c,#1d,#1b,#12,#19,#0e,#1c
	db #40,#0c,#15,#18,#1e,#0d,#24,#22
	db #18,#1e,#1b,#24,#1c,#12,#10,#11
	db #1d,#1c,#40,#1c,#0a,#1e,#0c,#22
	db #24,#20,#18,#1b,#0d,#24,#10,#0a
	db #16,#0e,#40,#1d,#0e,#0a,#0c,#11
.l8aa8 equ $ + 7
	db #0e,#1c,#24,#22,#18,#1e,#40,#26
	db #0e,#22,#0e,#24,#1c,#19,#22,#26
	db #24,#0c,#18,#19,#22,#1b,#12,#10
	db #11,#1d,#24,#01,#09,#08,#05,#24
	db #0b,#22,#24,#1d,#11,#0e,#24,#0e
	db #17,#10,#15,#12,#1c,#11,#24,#1c
	db #18,#0f,#1d,#20,#0a,#1b,#0e,#24
	db #0c,#18,#16,#19,#0a,#17,#22,#30
	db #24,#0a,#15,#15,#24,#1b,#12,#10
	db #11,#1d,#1c,#24,#1b,#0e,#1c,#0e
	db #1b,#1f,#0e,#0d,#32,#24,#19,#1b
	db #18,#10,#1b,#0a,#16,#16,#0e,#0d
	db #24,#0b,#22,#24,#17,#12,#0c,#14
	db #24,#1f,#12,#17,#0c,#0e,#17,#1d
	db #24,#0f,#18,#1b,#24,#0e,#16,#0e
	db #1b,#0a,#15,#0d,#24,#1c,#18,#0f
	db #1d,#20,#0a,#1b,#0e,#24,#1c,#0e
	db #1b,#1f,#12,#0c,#0e,#1c,#32,#24
	db #1d,#11,#0e,#24,#0c,#11,#0a,#1b
	db #0a,#0c,#1d,#0e,#1b,#24,#26,#1d
	db #11,#0e,#24,#1d,#11,#12,#17,#10
	db #26,#24,#12,#1c,#24,#0c,#18,#19
	db #22,#1b,#12,#10,#11,#1d,#24,#01
	db #09,#08,#05,#24,#0b,#22,#24,#17
	db #12,#0c,#14,#24,#1f,#12,#17,#0c
	db #0e,#17,#1d,#32,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#24
	db #24,#24,#24,#24,#24,#24,#24,#26
	db #0e,#22,#0e,#24,#1c,#19,#22,#26
	db #24,#0c,#18,#19,#22,#1b,#12,#10
	db #11,#1d,#24,#01,#09,#08,#05,#24
	db #0b,#22,#24,#1d,#11,#0e,#24,#0e
	db #17,#10,#15,#12,#1c,#11,#24,#1c
	db #18,#0f,#1d,#20,#0a,#1b,#0e,#24
	db #0c,#18,#16,#19,#0a,#17,#22,#30
.l8be8 equ $ + 7
	db #24,#0a,#15,#15,#24,#1b,#12,#06
	db #13
;
.music_info
	db "Eye Spy (1985)(English Software)()",0
	db "",0

	read "music_end.asm"
