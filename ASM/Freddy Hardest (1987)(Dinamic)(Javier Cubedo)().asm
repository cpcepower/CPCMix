; Music of Freddy Hardest (1987)(Dinamic)(Javier Cubedo)()
; Ripped by Megachur the 01/08/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FREDDYHA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 08
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #9d9d

	read "music_header.asm"

	jr l9e07
	jr l9da7
	jr l9e03
	jr l9e1d
.l9da6 equ $ + 1
.l9da5
	db #00,#05
;
.init_music
.l9da7
;
	ld hl,l66b0	; ld hl,(#0064) modified by Megachur
	di
	ld (l9f64),hl
.l9dae
	ld (l9f62),hl
.l9db1
	ld hl,(l9f62)
	ld iy,l9f66
	ld b,#03
.l9dba
	ld (iy+#00),#00
	ld (iy+#01),#00
	ld (iy+#08),#00
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,e
	and d
	cp #ff
	jr nz,l9de0
	ld a,(l9da5)
	or a
	ld a,#00
	ld (l9da5),a
	jr nz,l9e07
	ld hl,(l9f64)
	jr l9dae
.l9de0
	ld (iy+#02),e
	ld (iy+#03),d
	ld de,#000c
	add iy,de
	djnz l9dba
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l9f62),hl
	ld hl,l9f8a
	ex de,hl
	ld bc,#001e
	ldir
	ld hl,l9e69
	defs 3,0 ;ld (#7522),hl modified by Megachur
.l9e03
	ld a,#28
	jr l9e09
.l9e07
	ld a,#18
.l9e09
	di
	ld (l9e73),a
	ld a,#07
	ld c,#b8
	call l9f44
	ld a,#06
	ld c,#1f
	call l9f44
	jr l9e4a
.l9e1d
	ld a,(l0064)
	cp #02
	jr z,l9e32
	jr c,l9e2c
	ld iy,l9f7e
	jr l9e36
.l9e2c
	ld iy,l9f66
	jr l9e36
.l9e32
	ld iy,l9f72
.l9e36
	call l9e60
	ret nz
	ld hl,(l0066)
	di
	ld (iy+#08),#01
	ld (iy+#0a),l
	ld (iy+#0b),h
	ei
	ret
.l9e4a
	ld a,#08
	call l9e5b
	ld a,#09
	call l9e5b
	ld a,#0a
	call l9e5b
.l9e59
	ei
	ret
.l9e5b
	ld c,#00
	jp l9f44
.l9e60
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld a,h
	or l
	ret
;
.play_music
.l9e69
;
	ld iy,l9f66
	ld b,#03
.l9e6f
	push bc
	call l9e60
.l9e73
	jr z,l9ebf
	ld a,(iy+#01)
	or a
	jr z,l9e80
	dec (iy+#01)
	jr l9ea9
.l9e80
	ld a,(hl)
	dec a
	ld (iy+#01),a
	ld (iy+#00),#ff
	inc hl
	ld d,(iy+#06)
	call l9f20
	ld a,(hl)
	cp #ff
	jr nz,l9ea3
	pop bc
	xor a
	ld (l9e59),a
	call l9db1
	ld a,#fb
	ld (l9e59),a
	ret
.l9ea3
	ld (iy+#02),l
	ld (iy+#03),h
.l9ea9
	ld a,(iy+#00)
	cp #09
	jr z,l9eb3
	inc (iy+#00)
.l9eb3
	call l9f2c
.l9eb6
	ld de,#000c
	add iy,de
	pop bc
	djnz l9e6f
	ret
.l9ebf
	ld a,(iy+#08)
	or a
	jr z,l9eb6
	ld a,(iy+#09)
	or a
	jr z,l9ed0
	dec (iy+#09)
	jr l9eb6
.l9ed0
	ld a,(l9da6)
	ld (iy+#09),a
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld a,(hl)
	cp #ff
	jr nz,l9ee9
	ld (iy+#08),#00
	ld c,#00
	jr l9f1b
.l9ee9
	ld d,a
	bit 2,d
	jr z,l9ef2
	ld c,#a8
	jr l9ef4
.l9ef2
	ld c,#b8
.l9ef4
	ld a,#07
	call l9f44
	inc hl
	ld c,(hl)
	inc hl
	ld (iy+#0a),l
	ld (iy+#0b),h
	ld a,(iy+#06)
	push af
	call l9f44
	ld a,d
	and #03
	ld c,a
	pop af
	inc a
	call l9f44
	ld c,d
	srl c
	srl c
	srl c
	srl c
.l9f1b
	call l9f41
	jr l9eb6
.l9f20
	ld a,d
	ld c,(hl)
	inc hl
	call l9f44
	ld a,d
	inc a
	ld c,(hl)
	inc hl
	jr l9f44
.l9f2c
	ld c,#00
	dec hl
	ld a,(hl)
	dec hl
	or (hl)
	jr z,l9f41
	ld e,(iy+#00)
	ld d,#00
	ld l,(iy+#04)
	ld h,(iy+#05)
	add hl,de
	ld c,(hl)
.l9f41
	ld a,(iy+#07)
.l9f44
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
	ret
.l9f66 equ $ + 4
.l9f64 equ $ + 2
.l9f62
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #8a,#9f,#00,#08,#00,#00,#00,#00
.l9f72
	db #00,#00,#00,#00,#94,#9f,#02,#09
.l9f7e equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #9e,#9f,#04,#0a,#00,#00,#00,#00
.l9f8a
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #05,#04,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#c9,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
	
.l637a
	db #20,#53,#03,#20,#53,#03,#20,#53
	db #03,#20,#53,#03,#20,#bc,#03,#20
	db #bc,#03,#20,#bc,#03,#10,#bc,#03
	db #10,#bc,#03,#02,#00,#00,#ff,#00
.l639b equ $ + 1
	db #00,#20,#cc,#02,#20,#cc,#02,#20
	db #cc,#02,#20,#cc,#02,#20,#38,#02
	db #20,#38,#02,#20,#38,#02,#08,#38
	db #02,#08,#38,#02,#08,#38,#02,#08
	db #38,#02,#02,#00,#00,#ff,#00,#00
.l63c2
	db #08,#00,#00,#08,#53,#03,#08,#00
	db #00,#08,#53,#03,#08,#00,#00,#08
	db #53,#03,#08,#00,#00,#08,#53,#03
	db #08,#00,#00,#08,#53,#03,#08,#00
	db #00,#08,#53,#03,#08,#00,#00,#08
	db #53,#03,#08,#00,#00,#08,#53,#03
	db #08,#53,#03,#08,#53,#03,#08,#53
	db #03,#08,#53,#03,#08,#aa,#01,#08
	db #aa,#01,#08,#aa,#01,#08,#aa,#01
	db #08,#d5,#00,#08,#d5,#00,#08,#d5
	db #00,#08,#d5,#00,#08,#6a,#00,#08
	db #6a,#00,#08,#6a,#00,#08,#6a,#00
.l6428 equ $ + 6
	db #02,#00,#00,#ff,#00,#00,#10,#d5
	db #00,#10,#d5,#00,#10,#8e,#00,#08
	db #00,#00,#08,#d5,#00,#10,#00,#00
	db #10,#d5,#00,#10,#8e,#00,#10,#d5
	db #00,#10,#ef,#00,#10,#ef,#00,#10
	db #9f,#00,#08,#00,#00,#08,#ef,#00
	db #10,#00,#00,#10,#ef,#00,#10,#9f
	db #00,#10,#ef,#00,#02,#00,#00,#ff
.l6464 equ $ + 2
	db #00,#00,#10,#b3,#00,#10,#b3,#00
	db #10,#77,#00,#08,#00,#00,#08,#b3
	db #00,#10,#00,#00,#10,#b3,#00,#10
	db #77,#00,#10,#b3,#00,#10,#8e,#00
	db #10,#8e,#00,#10,#5f,#00,#08,#00
	db #00,#08,#8e,#00,#10,#00,#00,#10
	db #8e,#00,#10,#5f,#00,#10,#8e,#00
.l64a0 equ $ + 6
	db #02,#00,#00,#ff,#00,#00,#10,#b3
	db #00,#10,#00,#00,#10,#b3,#00,#10
	db #00,#00,#10,#b3,#00,#10,#00,#00
	db #10,#b3,#00,#10,#00,#00,#08,#00
	db #00,#08,#b3,#00,#08,#00,#00,#08
	db #b3,#00,#08,#00,#00,#08,#b3,#00
	db #08,#00,#00,#08,#b3,#00,#08,#00
	db #00,#08,#66,#01,#08,#00,#00,#08
	db #66,#01,#08,#00,#00,#08,#66,#01
	db #08,#00,#00,#08,#66,#01,#08,#00
	db #00,#08,#cc,#02,#08,#00,#00,#08
	db #cc,#02,#08,#00,#00,#08,#cc,#02
	db #08,#00,#00,#08,#cc,#02,#08,#00
	db #00,#08,#98,#05,#08,#00,#00,#08
	db #98,#05,#08,#00,#00,#08,#98,#05
	db #08,#00,#00,#08,#98,#05,#02,#00
.l651e equ $ + 4
	db #00,#ff,#00,#00,#08,#35,#00,#08
	db #35,#00,#08,#35,#00,#08,#35,#00
	db #08,#35,#00,#08,#35,#00,#08,#35
	db #00,#08,#35,#00,#08,#35,#00,#08
	db #35,#00,#08,#35,#00,#08,#35,#00
	db #08,#35,#00,#08,#35,#00,#08,#35
	db #00,#08,#35,#00,#08,#3c,#00,#08
	db #3c,#00,#08,#3c,#00,#08,#3c,#00
	db #08,#3c,#00,#08,#3c,#00,#08,#3c
	db #00,#08,#3c,#00,#08,#3c,#00,#08
	db #3c,#00,#08,#3c,#00,#08,#3c,#00
	db #08,#3c,#00,#08,#3c,#00,#08,#3c
	db #00,#08,#3c,#00,#02,#00,#00,#ff
.l6584 equ $ + 2
	db #00,#00,#08,#2d,#00,#08,#28,#00
	db #08,#26,#00,#08,#28,#00,#08,#2d
	db #00,#08,#28,#00,#08,#26,#00,#08
	db #2d,#00,#08,#2d,#00,#08,#2d,#00
	db #08,#2d,#00,#08,#2d,#00,#08,#2d
	db #00,#08,#2d,#00,#08,#2d,#00,#08
	db #2d,#00,#08,#24,#00,#08,#20,#00
	db #08,#1e,#00,#08,#20,#00,#08,#24
	db #00,#08,#20,#00,#08,#1e,#00,#08
	db #24,#00,#08,#24,#00,#08,#24,#00
	db #08,#24,#00,#08,#24,#00,#08,#24
	db #00,#08,#24,#00,#08,#24,#00,#08
	db #24,#00,#02,#00,#00,#ff,#00,#00
.l65ea
	db #08,#1b,#00,#08,#1b,#00,#08,#1b
	db #00,#08,#1b,#00,#08,#1b,#00,#08
	db #1b,#00,#08,#1b,#00,#08,#1b,#00
	db #08,#1b,#00,#08,#1b,#00,#08,#1b
	db #00,#08,#1b,#00,#08,#1b,#00,#08
	db #24,#00,#08,#2d,#00,#08,#35,#00
	db #08,#1e,#00,#08,#00,#00,#08,#00
	db #00,#08,#00,#00,#08,#1e,#00,#08
	db #00,#00,#10,#20,#00,#40,#20,#00
.l6638 equ $ + 6
	db #02,#00,#00,#ff,#00,#00,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#0f,#0e,#0d,#0c,#0b,#0a
.l6656 equ $ + 4
	db #0a,#0a,#0a,#0a,#0f,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#0f,#0a
	db #0f,#0a,#0f,#0a,#0f,#0a,#0f,#0a
	db #0f,#02,#0e,#03,#0d,#04,#0c,#05
.l6674 equ $ + 2
	db #0a,#07,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#0f,#0d,#0f,#0d
	db #0f,#0d,#0f,#0d,#0f,#0d,#0f,#0f
	db #0f,#0a,#0a,#0a,#0a,#08,#08,#07
.l6692
	db #0f,#0e,#0d,#0c,#0b,#0a,#01,#0d
	db #0e,#0f,#0d,#0f,#0d,#0f,#0d,#0f
	db #0d,#0f,#0d,#0f,#0a,#0f,#0a,#0f
	db #0a,#0f,#0a,#0f,#0a,#0f
.l66b0
	dw l637a,l6428,l651e,l6638
	dw l637a,l6428,l651e,l6656
	dw l637a,l6428,l651e,l6674
	dw l639b,l6464,l6584,l6674
	dw l63c2,l64a0,l65ea,l6674
	dw l63c2,l64a0,l65ea,l6692
	db #ff,#ff,#ff,#ff,#ff,#ff
;
; added by Megachur
.l0064
	dw 0
.l0066
	dw 0
;
; #8006
; call #9ce7
; ld hl,#66b0
; ld (#0064),hl
; call #9da7
;
.music_info
	db "Freddy Hardest (1987)(Dinamic)(Javier Cubedo)",0
	db "",0

	read "music_end.asm"
