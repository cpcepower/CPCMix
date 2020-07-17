; Music of Zone Trooper (1988)(Gamebusters)(Bob)()
; Ripped by Megachur the 15/08/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ZONETROO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 15
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #9c0c
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

.l9c12 equ $ + 6
.l9c11 equ $ + 5
.l9c10 equ $ + 4
;
music_end equ $ + 3
.l9c0f equ $ + 3
;
	db #42,#6f,#62,#00,#00,#00,#00
;
.play_music     ; init music theme #21->#24  and play music and (#ff = stop music) - (soundfx 0 -> #20)
;
	ld a,(l9c0f)
	and a
	ret z
;
.real_init_music
;
	cp #21
	jp c,l9c33
	cp #26
	jp c,la360
;
.stop_music
;
	sub a
	ld (l9c0f),a
	ld (l9c10),a
	ld (l9c11),a
	ld (l9c12),a
	call la6a2
	ret
.l9c33
	ld c,a
	ld a,#38
	ld (la6d7),a
	ld a,c
	cp #20
	jp z,l9cec
	ld a,#20
	ld (l9c0f),a
	ld a,c
	cp #0b
	jp c,l9c52
	cp #12
	jp c,l9c70
	jp l9c8e
.l9c52
	ld (l9c10),a
	sla a
	ld ix,l9cac
	ld d,#00
	ld e,a
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (la348),hl
	sub a
	ld (la352),a
	jp l9cec
.l9c70
	ld (l9c11),a
	sla a
	ld ix,l9cac
	ld d,#00
	ld e,a
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (la34a),hl
	sub a
	ld (la358),a
	jp l9cec
.l9c8e
	ld (l9c12),a
	sla a
	ld ix,l9cac
	ld d,#00
	ld e,a
	add ix,de
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld (la34c),hl
	sub a
	ld (la35e),a
	jp l9cec
.l9cac
	dw #0000,l9d1a,l9d2f,l9d57
	dw l9d7a,l9d99,l9dc1,l9de0
	dw l9e15,l9e2a,l9e3f,l9e54
	dw l9e72,l9e94,l9ec4,l9ed9
	dw l9f0e,l9f43,l9fc2,la007
	dw la053,la09f,la0ea,la117
	dw la139,la15b,la17d,la199
	dw la1d0,la20d,la22c,la24b
.l9cec
	ld a,(l9c10)
	and a
	jr z,l9cfa
	ld hl,l9cfa
	push hl
	ld hl,(la348)
	jp (hl)
.l9cfa
	ld a,(l9c11)
	and a
	jr z,l9d08
	ld hl,l9d08
	push hl
	ld hl,(la34a)
	jp (hl)
.l9d08
	ld a,(l9c12)
	and a
	jr z,l9d16
	ld hl,l9d16
	push hl
	ld hl,(la34c)
	jp (hl)
.l9d16
	call la675
	ret
.l9d1a
	bit 7,a
	jr nz,l9d29
	set 7,a
	ld (l9c10),a
	ld hl,#0302
	ld (la6d0),hl
.l9d29
	ld hl,la2a6
	jp la267
.l9d2f
	bit 7,a
	jr nz,l9d3c
	set 7,a
	ld (l9c10),a
	sub a
	ld (la34e),a
.l9d3c
	ld a,(la34e)
	cpl
	ld (la34e),a
	and a
	jr z,l9d4b
	ld hl,#0064
	jr l9d4e
.l9d4b
	ld hl,#003c
.l9d4e
	ld (la6d0),hl
	ld hl,la32c
	jp la267
.l9d57
	bit 7,a
	jr nz,l9d65
	set 7,a
	ld (l9c10),a
	ld a,#28
	ld (la34e),a
.l9d65
	ld a,(la34e)
	add #02
	ld (la34e),a
	ld ix,la6d0
	call la4f3
	ld hl,la2a6
	jp la267
.l9d7a
	bit 7,a
	jr nz,l9d89
	set 7,a
	ld (l9c10),a
	ld hl,#012c
	ld (la6d0),hl
.l9d89
	ld hl,(la6d0)
	ld bc,#001e
	add hl,bc
	ld (la6d0),hl
	ld hl,la2de
	jp la267
.l9d99
	bit 7,a
	jr nz,l9da6
	set 7,a
	ld (l9c10),a
	sub a
	ld (la34e),a
.l9da6
	ld a,(la34e)
	cpl
	ld (la34e),a
	and a
	jr z,l9db5
	ld hl,#07d0
	jr l9db8
.l9db5
	ld hl,#00c8
.l9db8
	ld (la6d0),hl
	ld hl,la2af
	jp la267
.l9dc1
	bit 7,a
	jr nz,l9dd0
	set 7,a
	ld (l9c10),a
	ld hl,#0050
	ld (la6d0),hl
.l9dd0
	ld hl,(la6d0)
	ld bc,#001e
	add hl,bc
	ld (la6d0),hl
	ld hl,la2c2
	jp la267
.l9de0
	bit 7,a
	jr nz,l9df3
	set 7,a
	ld (l9c10),a
	ld a,#01
	ld (la34e),a
	ld a,#ff
	ld (la34f),a
.l9df3
	ld a,(la34e)
	dec a
	ld (la34e),a
	ret nz
	ld a,#04
	ld (la34e),a
	ld a,(la34f)
	add #02
	ld (la34f),a
	ld ix,la6d0
	call la4f3
	ld hl,la303
	jp la267
.l9e15
	bit 7,a
	jr nz,l9e24
	set 7,a
	ld (l9c10),a
	ld hl,#01f4
	ld (la6d0),hl
.l9e24
	ld hl,la2de
	jp la267
.l9e2a
	bit 7,a
	jr nz,l9e39
	set 7,a
	ld (l9c10),a
	ld hl,#0032
	ld (la6d0),hl
.l9e39
	ld hl,la343
	jp la267
.l9e3f
	bit 7,a
	jr nz,l9e48
	set 7,a
	ld (l9c10),a
.l9e48
	ld hl,#0028
	ld (la6d0),hl
	ld hl,la2f7
	jp la267
.l9e54
	bit 7,a
	jr nz,l9e5d
	set 7,a
	ld (l9c11),a
.l9e5d
	ld a,#14
	ld (la6d6),a
	ld a,(la6d7)
	set 1,a
	res 4,a
	ld (la6d7),a
	ld hl,la30a
	jp la27c
.l9e72
	bit 7,a
	jr nz,l9e80
	set 7,a
	ld (l9c11),a
	ld a,#1e
	ld (la354),a
.l9e80
	ld a,(la354)
	inc a
	ld (la354),a
	ld ix,la6d2
	call la4f3
	ld hl,la2af
	jp la27c
.l9e94
	bit 7,a
	jr nz,l9eb4
	set 7,a
	ld (l9c11),a
	ld a,(la359)
	cpl
	ld (la359),a
	and a
	jr nz,l9eaf
	sub a
	ld (la6d9),a
	ld (l9c11),a
	ret
.l9eaf
	ld a,#0b
	ld (la6d9),a
.l9eb4
	ld a,#01
	ld (la6d6),a
	ld a,(la6d7)
	set 1,a
	res 4,a
	ld (la6d7),a
	ret
.l9ec4
	bit 7,a
	jr nz,l9ed3
	set 7,a
	ld (l9c11),a
	ld hl,#001e
	ld (la6d2),hl
.l9ed3
	ld hl,la2f7
	jp la27c
.l9ed9
	bit 7,a
	jr nz,l9eec
	set 7,a
	ld (l9c11),a
	ld a,#01
	ld (la354),a
	ld a,#ff
	ld (la355),a
.l9eec
	ld a,(la354)
	dec a
	ld (la354),a
	ret nz
	ld a,#03
	ld (la354),a
	ld a,(la355)
	add #02
	ld (la355),a
	ld ix,la6d2
	call la4f3
	ld hl,la2ee
	jp la27c
.l9f0e
	bit 7,a
	jr nz,l9f21
	set 7,a
	ld (l9c11),a
	ld a,#01
	ld (la354),a
	ld a,#41
	ld (la355),a
.l9f21
	ld a,(la354)
	dec a
	ld (la354),a
	ret nz
	ld a,#03
	ld (la354),a
	ld a,(la355)
	sub #02
	ld (la355),a
	ld ix,la6d2
	call la4f3
	ld hl,la2ee
	jp la27c
.l9f43
	bit 7,a
	jr nz,l9f6b
	set 7,a
	ld (l9c11),a
	ld a,#01
	ld (la6d6),a
	ld a,#0d
	ld (la6d8),a
	ld (la6d9),a
	ld (la6da),a
	ld a,#0a
	ld (la354),a
	ld a,#01
	ld (la355),a
	ld a,#96
	ld (la356),a
.l9f6b
	ld iy,la354
	dec (iy+#01)
	jr nz,l9f7e
	ld a,#0a
	ld (iy+#01),a
	ld a,#0a
	ld (iy+#00),a
.l9f7e
	dec (iy+#02)
	jr nz,l9f9c
	sub a
	ld (la6d8),a
	ld (la6d9),a
	ld (la6da),a
	ld (l9c10),a
	ld (l9c11),a
	ld (l9c12),a
	ld a,#16
	ld (l9c0f),a
	ret
.l9f9c
	inc (iy+#00)
	ld a,(iy+#00)
	ld ix,la6d0
	call la4f3
	ld a,(iy+#00)
	add #04
	ld ix,la6d2
	call la4f3
	ld a,(iy+#00)
	add #07
	ld ix,la6d4
	call la4f3
	ret
.l9fc2
	bit 7,a
	jr nz,l9fe0
	set 7,a
	ld (l9c12),a
	ld a,#64
	ld (la35a),a
	ld a,#0f
	ld (la35b),a
	ld hl,#0032
	ld (la6d4),hl
	ld a,#0a
	ld (la6da),a
.l9fe0
	ld a,(la35a)
	dec a
	ld (la35a),a
	jr nz,l9ff1
	sub a
	ld (la6da),a
	ld (l9c12),a
	ret
.l9ff1
	ld hl,(la6d4)
	ld a,(la35b)
	dec a
	jr nz,l9fff
	ld hl,#0032
	ld a,#0f
.l9fff
	ld (la35b),a
	inc hl
	ld (la6d4),hl
	ret
.la007
	bit 7,a
	jr nz,la025
	set 7,a
	ld (l9c12),a
	ld a,#60
	ld (la35a),a
	ld a,#0c
	ld (la35b),a
	ld hl,#0078
	ld (la6d4),hl
	ld a,#0a
	ld (la6da),a
.la025
	ld a,(la35a)
	dec a
	ld (la35a),a
	jr nz,la036
	sub a
	ld (la6da),a
	ld (l9c12),a
	ret
.la036
	ld a,(la35b)
	dec a
	jr nz,la044
	ld hl,#0078
	ld (la6d4),hl
	ld a,#0c
.la044
	ld (la35b),a
	ld hl,(la6d4)
	ld de,#0003
	sbc hl,de
	ld (la6d4),hl
	ret
.la053
	bit 7,a
	jr nz,la071
	set 7,a
	ld (l9c12),a
	ld a,#5d
	ld (la35a),a
	ld a,#08
	ld (la35b),a
	ld hl,#003c
	ld (la6d4),hl
	ld a,#0a
	ld (la6da),a
.la071
	ld a,(la35a)
	dec a
	ld (la35a),a
	jr nz,la082
	sub a
	ld (la6da),a
	ld (l9c12),a
	ret
.la082
	ld a,(la35b)
	dec a
	jr nz,la090
	ld hl,#003c
	ld (la6d4),hl
	ld a,#08
.la090
	ld (la35b),a
	ld hl,(la6d4)
	ld de,#0002
	sbc hl,de
	ld (la6d4),hl
	ret
.la09f
	bit 7,a
	jr nz,la0bc
	set 7,a
	ld (l9c12),a
	ld a,#33
	ld (la35a),a
	ld a,#37
	ld (la35b),a
	ld a,#3a
	ld (la35c),a
	ld a,#03
	ld (la35d),a
.la0bc
	ld ix,la35a
	dec (ix+#00)
	dec (ix+#01)
	dec (ix+#02)
	ld a,(la35d)
	dec a
	jp p,la0d2
	ld a,#02
.la0d2
	ld (la35d),a
	ld hl,la35a
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	ld ix,la6d4
	call la4f3
	ld hl,la2c3
	jp la291
.la0ea
	bit 7,a
	jr nz,la0f8
	set 7,a
	ld (l9c12),a
	ld a,#1e
	ld (la35a),a
.la0f8
	ld a,(la35a)
	sub #02
	jr nz,la101
	ld a,#1e
.la101
	ld (la35a),a
	ld (la6d6),a
	ld a,(la6d7)
	set 2,a
	res 5,a
	ld (la6d7),a
	ld hl,la2f9
	jp la291
.la117
	bit 7,a
	jr nz,la126
	set 7,a
	ld (l9c12),a
	ld hl,#0014
	ld (la6d4),hl
.la126
	ld a,#02
	ld (la6d6),a
	ld a,(la6d7)
	res 5,a
	ld (la6d7),a
	ld hl,la2f7
	jp la291
.la139
	bit 7,a
	jr nz,la148
	set 7,a
	ld (l9c12),a
	ld hl,#00c8
	ld (la6d4),hl
.la148
	ld a,#1e
	ld (la6d6),a
	ld a,(la6d7)
	res 5,a
	ld (la6d7),a
	ld hl,la2de
	jp la291
.la15b
	bit 7,a
	jr nz,la16a
	set 7,a
	ld (l9c12),a
	ld hl,#0032
	ld (la6d4),hl
.la16a
	ld a,#01
	ld (la6d6),a
	ld a,(la6d7)
	res 5,a
	ld (la6d7),a
	ld hl,la2de
	jp la291
.la17d
	bit 7,a
	jr nz,la18c
	set 7,a
	ld (l9c12),a
	ld hl,#0050
	ld (la6d4),hl
.la18c
	ld hl,(la6d4)
	dec hl
	ld (la6d4),hl
	ld hl,la302
	jp la291
.la199
	bit 7,a
	jr nz,la1a7
	set 7,a
	ld (l9c12),a
	ld a,#ff
	ld (la35a),a
.la1a7
	ld a,(la35a)
	inc a
	cp #08
	jr nz,la1b0
	sub a
.la1b0
	ld (la35a),a
	ld d,#00
	ld e,a
	ld hl,la1c8
	add hl,de
	ld a,(hl)
	ld ix,la6d4
	call la4f3
	ld hl,la2f9
	jp la291
.la1c8
	dec de
	dec e
	rra
	jr nz,la1ef
	inc h
	ld h,#27
.la1d0
	bit 7,a
	jr nz,la1e2
	set 7,a
	ld (l9c12),a
	ld a,#01
	ld (la35a),a
	sub a
	ld (la35b),a
.la1e2
	ld a,(la35b)
	cpl
	ld (la35b),a
	and a
	ret z
	ld a,(la35a)
	dec a
.la1ef
	jr nz,la1f9
	ld hl,#012c
	ld (la6d4),hl
	ld a,#14
.la1f9
	ld (la35a),a
	ld hl,(la6d4)
	ld de,#000f
	sbc hl,de
	ld (la6d4),hl
	ld hl,la2f9
	jp la291
.la20d
	bit 7,a
	jr nz,la21c
	set 7,a
	ld (l9c12),a
	ld hl,#0064
	ld (la6d4),hl
.la21c
	ld hl,(la6d4)
	ld de,#0001
	add hl,de
	ld (la6d4),hl
	ld hl,la2f9
	jp la291
.la22c
	bit 7,a
	jr nz,la23b
	set 7,a
	ld (l9c12),a
	ld hl,#0028
	ld (la6d4),hl
.la23b
	ld hl,(la6d4)
	ld de,#0003
	add hl,de
	ld (la6d4),hl
	ld hl,la2de
	jp la291
.la24b
	bit 7,a
	jr nz,la25a
	set 7,a
	ld (l9c12),a
	ld hl,#0028
	ld (la6d4),hl
.la25a
	ld hl,(la6d4)
	inc hl
	ld (la6d4),hl
	ld hl,la302
	jp la291
.la267
	ld a,(la352)
	ld d,#00
	ld e,a
	inc a
	ld (la352),a
	add hl,de
	ld a,(hl)
	ld (la6d8),a
	and a
	ret nz
	ld (l9c10),a
	ret
.la27c
	ld a,(la358)
	ld d,#00
	ld e,a
	inc a
	ld (la358),a
	add hl,de
	ld a,(hl)
	ld (la6d9),a
	and a
	ret nz
	ld (l9c11),a
	ret
.la291
	ld a,(la35e)
	ld d,#00
	ld e,a
	inc a
	ld (la35e),a
	add hl,de
	ld a,(hl)
	ld (la6da),a
	and a
	ret nz
	ld (l9c12),a
	ret
.la2a6
	db #0f,#0d,#0b,#09,#07,#05,#03,#01
.la2af equ $ + 1
	db #00,#0f,#0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.la2c3 equ $ + 5
.la2c2 equ $ + 4
	db #00,#0f,#0f,#0e,#0e,#0d,#0d,#0c
	db #0c,#0b,#0b,#0a,#0a,#09,#09,#08
	db #08,#07,#07,#06,#06,#05,#05,#04
	db #04,#03,#03,#02,#02,#01,#01,#00
.la2de
	db #04,#04,#05,#05,#06,#06,#07,#07
	db #08,#08,#09,#09,#0a,#0a,#0b,#0b
.la2ee
	db #0c,#0c,#0d,#0d,#0e,#0e,#0f,#0f
.la2f9 equ $ + 3
.la2f7 equ $ + 1
	db #00,#0c,#00,#0f,#0f,#0e,#0e,#0e
.la303 equ $ + 5
.la302 equ $ + 4
	db #0d,#0d,#0d,#0c,#0c,#0c,#0b,#0b
.la30a equ $ + 4
	db #0b,#0a,#0a,#0a,#09,#09,#09,#08
	db #08,#08,#07,#07,#07,#06,#06,#06
	db #05,#05,#05,#04,#04,#04,#03,#03
	db #03,#03,#02,#02,#02,#02,#02,#01
.la32c equ $ + 6
	db #01,#01,#01,#01,#01,#00,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
.la343 equ $ + 5
	db #02,#02,#01,#01,#00,#06,#08,#0a
.la34c equ $ + 6
.la34a equ $ + 4
.la348 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.la355 equ $ + 7
.la354 equ $ + 6
.la352 equ $ + 4
.la34f equ $ + 1
.la34e
	db #00,#00,#00,#00,#00,#00,#00,#00
.la35d equ $ + 7
.la35c equ $ + 6
.la35b equ $ + 5
.la35a equ $ + 4
.la359 equ $ + 3
.la358 equ $ + 2
.la356
	db #00,#00,#00,#00,#00,#00,#00,#00
.la35e
	db #00,#00
.la360
	cp #21
	jr nz,la369
	call la389
	jr la382
.la369
	cp #22
	jr nz,la372
	call la3ab
	jr la382
.la372
	cp #23
	jr nz,la37b
	call la3d2
	jr la382
.la37b
	cp #24
	jr nz,la382
	call la3f9
.la382
	call la657
	call la43c
	ret
.la389
	call la420
	ld a,#08
	ld (la70d),a
	dec a
	ld (la703),a
	ld de,lad60
	ld (la707),de
	ld de,lad9a
	ld (la709),de
	ld de,ladd4
	ld (la70b),de
	ret
.la3ab
	call la420
	ld a,#08
	ld (la70d),a
	dec a
	ld (la703),a
	ld a,#01
	ld (la6e0),a
	ld de,laf0e
	ld (la707),de
	ld de,laf16
	ld (la709),de
	ld de,laf1e
	ld (la70b),de
	ret
.la3d2
	call la420
	ld a,#06
	ld (la70d),a
	dec a
	ld (la703),a
	ld a,#01
	ld (la6e0),a
	ld de,lb026
	ld (la707),de
	ld de,lb030
	ld (la709),de
	ld de,lb03a
	ld (la70b),de
	ret
.la3f9
	call la420
	ld a,#0d
	ld (la70d),a
	dec a
	ld (la703),a
	ld a,#03
	ld (la704),a
	ld de,lb0c4
	ld (la707),de
	ld de,lb0c8
	ld (la709),de
	ld de,lb0d2
	ld (la70b),de
	ret
.la420
	ld de,la6b0
	ld hl,la70e
.la426
	sub a
	ld (de),a
	inc de
	ld a,e
	cp l
	jr nz,la426
	ld a,d
	cp h
	jr nz,la426
	ld a,#25
	ld (l9c0f),a
	ld a,#38
	ld (la6b7),a
	ret
.la43c
	ld a,(la70d)
	ld c,a
	ld a,(la703)
	inc a
	cp c
	jr z,la44b
	ld (la703),a
	ret
.la44b
	sub a
	ld (la703),a
	ld de,(la707)
	ld hl,(la707)
	ld ix,la6b0
	ld iy,la6de
	call la486
	ld de,(la709)
	ld hl,(la709)
	ld ix,la6b2
	ld iy,la6e8
	call la486
	ld de,(la70b)
	ld hl,(la70b)
	ld ix,la6b4
	ld iy,la6f2
	call la486
	ret
.la486
	ld a,(iy+#08)
	ld b,#00
	ld c,a
	add hl,bc
	ld a,(hl)
	and a
	jr nz,la4a9
	inc hl
	ld a,(hl)
	and a
	jr nz,la4a8
	ld a,(la6e0)
	and a
	jr z,la4a2
	ld a,#32
	ld (l9c0f),a
	ret
.la4a2
	ld (iy+#08),a
	ex de,hl
	jr la486
.la4a8
	dec hl
.la4a9
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(iy+#09)
	ld b,#00
	ld c,a
	add hl,bc
	ld a,(hl)
	and a
	jr z,la4c1
	call la4d7
	call la508
	call la514
.la4c1
	ld a,(iy+#09)
	add #02
	cp #20
	jr nz,la4d3
	ld a,(iy+#08)
	add #02
	ld (iy+#08),a
	sub a
.la4d3
	ld (iy+#09),a
	ret
.la4d7
	ld b,a
	ld a,(la704)
	add b
	ld (iy+#01),a
	call la4f3
	srl a
	add #18
	ld bc,#000e
	push ix
	add ix,bc
	call la4f3
	pop ix
	ret
.la4f3
	push hl
	sla a
	ld b,#00
	ld c,a
	ld hl,la7a8
	add hl,bc
	ld b,(hl)
	ld (ix+#00),b
	inc hl
	ld b,(hl)
	ld (ix+#01),b
	pop hl
	ret
.la508
	inc hl
	ld a,(hl)
	and #0f
	ld (iy+#07),a
	sub a
	ld (iy+#04),a
	ret
.la514
	ld a,#38
	ld (la6b7),a
	ld a,(hl)
	and #f0
	ld (iy+#00),a
	and a
	ret z
	cp #e0
	ret c
	jr nz,la534
	ld a,#01
	ld (ix+#02),a
	res 2,(ix+#03)
	res 5,(ix+#03)
	ret
.la534
	set 2,(ix+#03)
	res 5,(ix+#03)
	ld a,(iy+#01)
	ld (ix+#02),a
	ret
.la543
	ld a,(la6f2)
	cp #e0
	ret nz
	ld a,(la703)
	cp #00
	ret nz
	ld a,(la6b7)
	set 5,a
	ld (la6b7),a
	ret
.la558
	ld a,(la703)
	bit 0,a
	ret z
	ld a,#01
	ld (la6d6),a
	ret
.la564
	ld hl,la78b
	ld ix,la6b8
	ld iy,la6d8
	ld (la705),iy
	ld iy,la6de
	call la5a7
	ld hl,la78b
	ld ix,la6b9
	ld iy,la6d9
	ld (la705),iy
	ld iy,la6e8
	call la5a7
	ld hl,la78b
	ld ix,la6ba
	ld iy,la6da
	ld (la705),iy
	ld iy,la6f2
	call la5a7
	ret
.la5a7
	ld a,(iy+#07)
	sla a
	ld d,#00
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(iy+#04)
	ld d,#00
	ld e,a
	add hl,de
	ld a,(hl)
	cp #14
	ret z
	ld (ix+#00),a
	push iy
	ld iy,(la705)
	ld (iy+#00),a
	pop iy
	ld a,(iy+#04)
	inc a
	ld (iy+#04),a
	ret
.la5d5
	ld hl,la7a1
	ld a,(la6fc)
	ld b,#00
	ld c,a
	add hl,bc
	ld a,(hl)
	cp #64
	jr nz,la5ea
	sub a
	ld (la6fc),a
	jr la5d5
.la5ea
	ld (la6fe),a
	ld a,(la6e8)
	cp #10
	jr z,la605
	ld a,(la6fe)
	and a
	jr z,la605
	ld de,(la6d2)
	call la62c
	ld (la6d2),de
.la605
	ld a,(la6f2)
	cp #10
	jr z,la61d
	ld a,(la6fe)
	and a
	jr z,la61d
	ld de,(la6d4)
	call la62c
	ld (la6d4),de
.la61d
	ld a,(la6fc)
	inc a
	ld (la6fc),a
	ld a,(la6fd)
	inc a
	ld (la6fd),a
	ret
.la62c
	bit 7,a
	jr nz,la635
.la630
	inc de
	dec a
	jr nz,la630
	ret
.la635
	dec de
	inc a
	jr nz,la635
	ret
.la63a
	ld a,(la6e8)
	cp #10
	jr z,la649
	cp #40
	ret nz
	ld hl,(la6c0)
	jr la64d
.la649
	ld hl,(la6d2)
	dec hl
.la64d
	ld (la6d0),hl
	ld a,(la6d9)
	ld (la6d8),a
	ret
.la657
	ld bc,#000e
	ld hl,la6b0
	ld de,la6d0
	ldir
	call la543
	call la558
	call la564
	call la5d5
	call la63a
	call la675
	ret
.la675
	ld a,#0c
	ld hl,la6dc
.la67a
	push af
	ld c,(hl)
	dec hl
	di
	ld b,#f4
	out (c),a
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a
	ld b,#f4
	out (c),c
	ld b,#f6
	ld c,a
	or #80
	out (c),a
	out (c),c
	ei
	pop af
	dec a
	jp p,la67a
	ret
.la6a2
	sub a
	ld (la6d8),a
	ld (la6d9),a
	ld (la6da),a
	call la675
	ret
.la6b7 equ $ + 7
.la6b4 equ $ + 4
.la6b2 equ $ + 2
.la6b0
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6ba equ $ + 2
.la6b9 equ $ + 1
.la6b8
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6c0
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6cf equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6d7 equ $ + 7
.la6d6 equ $ + 6
.la6d4 equ $ + 4
.la6d2 equ $ + 2
.la6d0
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6de equ $ + 6
.la6dc equ $ + 4
.la6da equ $ + 2
.la6d9 equ $ + 1
.la6d8
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6e0
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6e8
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6f2 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
.la6fe equ $ + 6
.la6fd equ $ + 5
.la6fc equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.la707 equ $ + 7
.la705 equ $ + 5
.la704 equ $ + 4
.la703 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
.la70f equ $ + 7
.la70e equ $ + 6
.la70d equ $ + 5
.la70b equ $ + 3
.la709 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.la711 equ $ + 1
	db #14,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#00,#14
.la720
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
.la72b equ $ + 3
	db #07,#06,#14,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
.la73a equ $ + 2
	db #00,#14,#0d,#0d,#0c,#0c,#0b,#0b
	db #0a,#0a,#09,#09,#08,#08,#07,#07
	db #06,#06,#05,#05,#04,#04,#03,#03
.la756 equ $ + 6
	db #02,#02,#01,#01,#00,#14,#0a,#14
.la75e equ $ + 6
.la75b equ $ + 3
.la758
	db #0c,#0b,#14,#0d,#0c,#14,#0d,#14
.la760
	db #0a,#0a,#09,#09,#09,#09,#08,#08
	db #08,#08,#07,#07,#07,#07,#06,#06
	db #06,#06,#05,#05,#05,#05,#04,#04
	db #04,#04,#03,#03,#03,#03,#02,#02
	db #02,#02,#01,#01,#01,#01,#01,#00
.la789 equ $ + 1
	db #14,#0b,#14
.la78b
	dw la70f,la711,la720,la72b
	dw la73a,la756,la758,la75b
.la7a1 equ $ + 6
	dw la75e,la760,la789,#0000
	db #01,#00,#00,#ff,#64
.la7a8
	dw #0431,#03f4,#03bc,#0386
	dw #0353,#0324,#02f6,#02cc
	dw #02a4,#027e,#025a,#0238
	dw #0218,#01fa,#01de,#01c3
	dw #01aa,#0192,#017b,#0166
	dw #0152,#013f,#012d,#011c
	dw #010c,#00fd,#00ef,#00e1
	dw #00d5,#00c9,#00be,#00b3
	dw #00a9,#009f,#0096,#008e
	dw #0086,#007f,#0077,#0071
	dw #006a,#0064,#005f,#0059
	dw #0054,#0050,#004b,#0047
	dw #0043,#003f,#003c,#0038
	dw #0035,#0032,#002f,#002d
	dw #002a,#0028,#0026,#0024
	dw #0022,#0020,#001e,#001c
	dw #001b,#0019,#0018,#0016
	dw #0015,#0014,#0013,#0012
	dw #0011,#0010,#000f,#000e
.la840
	dw #0000
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
.la860
	db #2b,#32,#00,#00,#29,#32,#00,#00
	db #27,#32,#26,#32,#00,#00,#1f,#32
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la880
	db #24,#32,#00,#00,#26,#32,#00,#00
	db #27,#32,#2c,#32,#00,#00,#2b,#32
	db #00,#00,#00,#00,#2b,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la8a0
	db #2b,#32,#2b,#32,#2b,#32,#2b,#32
	db #00,#00,#27,#32,#00,#00,#00,#00
	db #2b,#32,#2b,#32,#2b,#32,#2b,#32
	db #00,#00,#29,#32,#27,#32,#26,#32
.la8c0
	db #24,#02,#00,#00,#00,#00,#2b,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #2b,#02,#29,#02,#27,#02,#26,#02
.la8e0
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#22,#02,#24,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#1f,#02
.la900
	db #24,#01,#26,#01,#27,#01,#29,#01
	db #2b,#01,#2c,#01,#2e,#01,#2f,#01
	db #30,#02,#00,#00,#00,#00,#00,#00
	db #24,#02,#00,#00,#00,#00,#00,#00
.la920
	db #26,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#22,#02,#00,#00
	db #2b,#08,#2c,#08,#2b,#08,#29,#02
	db #00,#00,#00,#00,#27,#02,#00,#00
.la940
	db #2b,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la960
	db #24,#02,#00,#00,#00,#00,#26,#02
	db #00,#00,#00,#00,#27,#02,#00,#00
	db #24,#02,#00,#00,#00,#00,#26,#02
	db #00,#00,#00,#00,#27,#02,#00,#00
.la980
	db #29,#02,#00,#00,#00,#00,#24,#02
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la9a0
	db #29,#02,#00,#00,#00,#00,#2b,#02
	db #00,#00,#00,#00,#2c,#02,#00,#00
	db #29,#02,#00,#00,#00,#00,#2b,#02
	db #00,#00,#00,#00,#2c,#02,#00,#00
.la9c0
	db #30,#05,#2c,#05,#27,#05,#30,#05
	db #2c,#05,#27,#05,#30,#05,#2c,#05
	db #30,#05,#2c,#05,#27,#05,#30,#05
	db #2c,#05,#27,#05,#30,#05,#2c,#05
.la9e0
	db #30,#05,#2c,#05,#29,#05,#30,#05
	db #2c,#05,#29,#05,#30,#05,#2c,#05
	db #30,#05,#2c,#05,#29,#05,#30,#05
	db #2c,#05,#29,#05,#30,#05,#2c,#05
.laa00
	db #32,#05,#2c,#05,#29,#05,#32,#05
	db #2c,#05,#29,#05,#32,#05,#2c,#05
	db #32,#05,#2c,#05,#29,#05,#32,#05
	db #2c,#05,#29,#05,#32,#05,#2c,#05
.laa20
	db #32,#05,#2f,#05,#2b,#05,#32,#05
	db #2f,#05,#2b,#05,#32,#05,#2f,#05
	db #35,#05,#32,#05,#2f,#05,#35,#05
	db #32,#05,#2f,#05,#35,#05,#32,#05
.laa40
	db #24,#05,#27,#05,#2b,#05,#27,#05
	db #24,#05,#27,#05,#2b,#05,#27,#05
	db #22,#05,#26,#05,#2b,#05,#26,#05
	db #22,#05,#26,#05,#2b,#05,#26,#05
.laa60
	db #24,#05,#27,#05,#2c,#05,#27,#05
	db #24,#05,#27,#05,#2c,#05,#27,#05
	db #22,#05,#26,#05,#2b,#05,#26,#05
	db #22,#05,#26,#05,#2b,#05,#26,#05
.laa80
	db #18,#05,#1b,#05,#20,#05,#1b,#05
	db #18,#05,#1b,#05,#20,#05,#1b,#05
	db #16,#05,#1a,#05,#1f,#05,#1a,#05
	db #16,#05,#1a,#05,#1f,#05,#1a,#05
.laaa0
	db #17,#05,#1a,#05,#1f,#05,#1a,#05
	db #17,#05,#1a,#05,#1f,#05,#1a,#05
	db #13,#06,#17,#06,#1a,#06,#1f,#06
	db #1d,#06,#1a,#06,#17,#06,#13,#06
.laac0
	db #18,#05,#00,#00,#00,#00,#1f,#05
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.laae0
	db #1d,#05,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#1a,#05,#00,#00
	db #18,#05,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lab00
	db #0c,#01,#0e,#01,#0f,#01,#11,#01
	db #13,#01,#14,#01,#16,#01,#17,#01
	db #14,#06,#00,#00,#00,#00,#18,#06
	db #00,#00,#00,#00,#1b,#06,#00,#00
.lab20
	db #16,#07,#00,#00,#00,#00,#1a,#07
	db #00,#00,#00,#00,#1d,#07,#00,#00
	db #13,#07,#00,#00,#00,#00,#16,#07
	db #00,#00,#00,#00,#1a,#07,#00,#00
.lab40
	db #13,#07,#00,#00,#00,#00,#17,#07
	db #00,#00,#00,#00,#1a,#07,#00,#00
	db #13,#07,#00,#00,#00,#00,#17,#07
	db #00,#00,#00,#00,#1a,#07,#00,#00
.lab60
	db #13,#06,#15,#06,#17,#06,#1a,#06
	db #1f,#06,#21,#06,#23,#06,#26,#06
	db #2b,#05,#26,#06,#23,#06,#21,#06
	db #1f,#06,#1a,#06,#17,#06,#15,#06
.lab80
	db #14,#07,#00,#00,#00,#00,#18,#07
	db #00,#00,#00,#00,#1b,#07,#00,#00
	db #14,#07,#00,#00,#00,#00,#18,#07
	db #00,#00,#00,#00,#1b,#07,#00,#00
.laba0
	db #11,#07,#00,#00,#00,#00,#14,#07
	db #00,#00,#00,#00,#18,#07,#00,#00
	db #11,#07,#00,#00,#00,#00,#14,#07
	db #00,#00,#00,#00,#18,#07,#00,#00
.labc0
	db #0e,#07,#00,#00,#00,#00,#14,#07
	db #00,#00,#00,#00,#18,#07,#00,#00
	db #0e,#07,#00,#00,#00,#00,#14,#07
	db #00,#00,#00,#00,#18,#07,#00,#00
.labe0
	db #13,#07,#00,#00,#00,#00,#17,#07
	db #00,#00,#00,#00,#1a,#07,#00,#00
	db #1d,#07,#00,#00,#00,#00,#1b,#07
	db #00,#00,#00,#00,#1a,#07,#00,#00
.lac00
	db #0c,#01,#0c,#01,#05,#f1,#0c,#01
	db #18,#01,#0c,#01,#0a,#f1,#0a,#f1
	db #07,#01,#07,#01,#05,#f1,#07,#01
	db #13,#01,#07,#01,#0a,#f1,#0a,#f1
.lac20
	db #08,#01,#08,#01,#05,#f1,#08,#01
	db #14,#01,#08,#01,#0a,#f1,#0a,#f1
	db #0f,#01,#0f,#01,#05,#f1,#0f,#01
	db #1b,#01,#0f,#01,#0a,#f1,#0a,#f1
.lac40
	db #07,#01,#07,#01,#05,#f1,#07,#01
	db #13,#01,#07,#01,#0a,#f1,#0a,#f1
	db #0b,#01,#0b,#01,#05,#f1,#0b,#01
	db #17,#01,#05,#f1,#0a,#f1,#0a,#f1
.lac60
	db #0c,#01,#0c,#01,#01,#f1,#0c,#01
	db #18,#01,#0c,#01,#04,#f1,#04,#f1
	db #0c,#01,#0c,#01,#01,#f1,#0c,#01
	db #18,#01,#0c,#01,#04,#f1,#04,#f1
.lac80
	db #07,#01,#07,#01,#01,#f1,#07,#01
	db #13,#01,#07,#01,#04,#f1,#04,#f1
	db #0c,#01,#0c,#01,#01,#f1,#0c,#01
	db #13,#01,#0c,#01,#04,#f1,#04,#f1
.laca0
	db #0c,#01,#0c,#01,#01,#f1,#0c,#01
	db #18,#01,#0c,#01,#0a,#f1,#0a,#f1
	db #08,#01,#08,#01,#05,#f1,#08,#01
	db #14,#01,#08,#01,#0a,#f1,#0a,#f1
.lacc0
	db #0a,#01,#0a,#01,#05,#f1,#0a,#01
	db #16,#01,#0a,#01,#0a,#f1,#0a,#f1
	db #0f,#01,#0f,#01,#05,#f1,#0f,#01
	db #1b,#01,#0f,#01,#0a,#f1,#0a,#f1
.lace0
	db #07,#01,#07,#01,#05,#f1,#07,#01
	db #13,#01,#07,#01,#0a,#f1,#0a,#f1
	db #07,#01,#07,#01,#05,#f1,#07,#01
	db #13,#01,#07,#01,#0a,#f1,#0a,#f1
.lad00
	db #08,#01,#08,#01,#05,#f1,#08,#01
	db #14,#01,#08,#01,#0a,#f1,#0a,#f1
	db #08,#01,#08,#01,#05,#f1,#08,#01
	db #14,#01,#08,#01,#0a,#f1,#0a,#f1
.lad20
	db #05,#01,#05,#01,#05,#f1,#05,#01
	db #11,#01,#05,#01,#0a,#f1,#0a,#f1
	db #05,#01,#08,#01,#05,#f1,#05,#01
	db #11,#01,#05,#01,#0a,#f1,#0a,#f1
.lad40
	db #07,#01,#07,#01,#05,#f1,#07,#01
	db #13,#01,#07,#01,#0a,#f1,#0a,#f1
	db #07,#01,#07,#01,#05,#f1,#07,#01
	db #13,#01,#05,#f1,#0a,#f1,#0a,#f1
.lad60
	dw la860,la880,la8a0,la840
	dw la860,la880,la8a0,la840
	dw la8c0,la8e0,la8c0,la8e0
	dw la900,la920,la940,la840
	dw la860,la880,la8a0,la840
	dw la960,la980,la9a0,la940
	dw la9c0,la9e0,laa00,laa20
.lad9a equ $ + 2
	dw #0000,laa40,laa60,laa80
	dw laaa0,laa40,laa60,laa80
	dw laaa0,laac0,laae0,laac0
	dw laae0,lab00,lab20,lab40
	dw lab60,laa40,laa60,laa80
	dw laaa0,lab80,laba0,labc0
	dw labe0,lab80,laba0,labc0
.ladd4 equ $ + 4
	dw labe0,#0000,lac00,lac20
	dw lac20,lac40,lac00,lac20
	dw lac20,lac40,lac60,lac80
	dw lac60,lac80,laca0,lacc0
	dw lace0,lace0,lac00,lac20
	dw lac20,lac40,lad00,lad20
	dw lad20,lad40,lad00,lad20
	dw lad20,lad40,#0000
.lae0e
	db #13,#05,#00,#00,#00,#00,#16,#05
	db #00,#00,#00,#00,#1a,#05,#00,#00
	db #16,#05,#00,#00,#00,#00,#1a,#05
	db #00,#00,#00,#00,#1d,#05,#00,#00
.lae2e
	db #18,#05,#00,#00,#00,#00,#1c,#05
	db #00,#00,#00,#00,#1f,#05,#00,#00
	db #1b,#05,#00,#00,#00,#00,#1f,#05
	db #00,#00,#00,#00,#22,#09,#00,#00
.lae4e
	db #2b,#05,#00,#00,#00,#00,#2b,#05
	db #00,#00,#00,#00,#2d,#05,#00,#00
	db #2b,#05,#00,#00,#00,#00,#29,#05
	db #00,#00,#00,#00,#26,#05,#00,#00
.lae6e
	db #26,#05,#00,#00,#00,#00,#24,#05
	db #00,#00,#00,#00,#22,#05,#00,#00
	db #24,#05,#00,#00,#00,#00,#26,#05
	db #00,#00,#00,#00,#1f,#05,#00,#00
.lae8e
	db #13,#05,#00,#00,#13,#09,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.laeae
	db #07,#e1,#07,#01,#07,#01,#13,#01
	db #07,#e1,#07,#01,#13,#01,#07,#01
	db #0a,#e1,#0a,#01,#0a,#01,#16,#01
	db #0a,#e1,#0a,#01,#16,#01,#0a,#01
.laece
	db #0c,#e1,#0c,#01,#0c,#01,#18,#01
	db #0c,#e1,#0c,#01,#18,#01,#0c,#01
	db #0f,#e1,#0f,#01,#0f,#01,#1b,#01
	db #0f,#e1,#0f,#01,#1b,#01,#0f,#01
.laeee
	db #07,#e5,#00,#00,#07,#09,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.laf0e
	dw lae0e,lae2e,la840,#0000
.laf16
	dw lae4e,lae6e,lae8e,#0000
.laf1e
	dw laeae,laece,laeee,#0000
.laf26
	db #1b,#44,#00,#00,#00,#00,#00,#00
	db #1f,#4a,#00,#00,#1d,#44,#00,#00
	db #1b,#4a,#00,#00,#00,#00,#00,#00
	db #16,#44,#00,#00,#13,#44,#00,#00
.laf46
	db #14,#4a,#00,#00,#00,#00,#00,#00
	db #13,#44,#00,#00,#0f,#44,#00,#00
	db #0f,#4a,#00,#00,#00,#00,#00,#00
	db #11,#44,#00,#00,#0e,#44,#00,#00
.laf66
	db #0f,#44,#00,#00,#00,#00,#00,#00
	db #11,#44,#00,#00,#13,#44,#00,#00
	db #15,#4a,#00,#00,#00,#00,#00,#00
	db #16,#44,#00,#00,#18,#44,#00,#00
.laf86
	db #16,#44,#00,#00,#00,#00,#00,#00
	db #18,#44,#00,#00,#1a,#44,#00,#00
	db #1b,#49,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lafa6
	db #1b,#1a,#1f,#1a,#22,#1a,#27,#1a
	db #22,#1a,#1f,#1a,#1b,#1a,#1f,#1a
	db #1b,#1a,#1f,#1a,#22,#1a,#27,#1a
	db #22,#1a,#1f,#1a,#1b,#1a,#1f,#1a
.lafc6
	db #20,#1a,#24,#1a,#27,#1a,#2c,#1a
	db #27,#1a,#24,#1a,#20,#1a,#24,#1a
	db #22,#1a,#26,#1a,#29,#1a,#2e,#1a
	db #29,#1a,#26,#1a,#22,#1a,#26,#1a
.lafe6
	db #1b,#1a,#1f,#1a,#22,#1a,#27,#1a
	db #22,#1a,#1f,#1a,#1b,#1a,#1f,#1a
	db #1d,#1a,#21,#1a,#24,#1a,#29,#1a
	db #24,#1a,#21,#1a,#1d,#1a,#21,#1a
.lb006
	db #22,#1a,#26,#1a,#29,#1a,#2e,#1a
	db #29,#1a,#26,#1a,#22,#1a,#26,#1a
	db #27,#09,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb026
	dw la840,la840,la840,la840
.lb030 equ $ + 2
	dw #0000,laf26,laf46,laf66
.lb03a equ $ + 4
	dw laf86,#0000,lafa6,lafc6
	dw lafe6,lb006,#0000
.lb044
	db #13,#15,#00,#00,#1a,#15,#00,#00
	db #00,#00,#00,#00,#18,#15,#16,#15
	db #18,#15,#00,#00,#00,#00,#15,#15
	db #13,#15,#00,#00,#00,#00,#00,#00
.lb064
	db #18,#15,#00,#00,#1f,#15,#00,#00
	db #00,#00,#00,#00,#1d,#15,#1b,#15
	db #1d,#15,#00,#00,#00,#00,#1a,#15
	db #18,#15,#00,#00,#00,#00,#00,#00
.lb084
	db #07,#04,#0e,#04,#07,#04,#0e,#04
	db #07,#04,#0e,#04,#07,#04,#0e,#04
	db #02,#04,#06,#04,#09,#04,#06,#04
	db #07,#04,#0e,#04,#07,#04,#0e,#04
.lb0a4
	db #0c,#04,#13,#04,#0c,#04,#13,#04
	db #0c,#04,#13,#04,#0c,#04,#13,#04
	db #07,#04,#0e,#04,#07,#04,#0e,#04
	db #0c,#04,#13,#04,#0c,#04,#13,#04
.lb0c8 equ $ + 4
.lb0c4
	dw la840,#0000,lb044,lb044
.lb0d2 equ $ + 6
	dw lb064,lb064,#0000,lb084
	dw lb084,lb0a4,lb0a4,#0000
	dw la6cf
;
; stop_music #9c0f = #ff
; init_music #9c0f = #21
;
;	ld a,#ff
;	ld (l9c0f),a
;	call play_music
;	ld a,#21
;	ld (l9c0f),a
;	call play_music
;
.init_music	; added by Megachur
;
	add a,#21
	jp real_init_music
;
.music_info
	db "Zone Trooper (1988)(Gamebusters)(Bob)",0
	db "",0

	read "music_end.asm"
