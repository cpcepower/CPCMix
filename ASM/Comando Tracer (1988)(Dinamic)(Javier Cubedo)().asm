; Music of Comando Tracer (1988)(Dinamic)(Javier Cubedo)()
; Ripped by Megachur the 10/06/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COMANDOT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 10
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #7967

	read "music_header.asm"

;
.init_music
;
	ld hl,l44b5
	di
	ld (l7b0f),hl
.l796e
	ld (l7b0d),hl
.l7971
	ld hl,(l7b0d)
	ld iy,l7b14
	ld b,#03
.l797a
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
	jr nz,l7995
	ld hl,(l7b0f)
	jr l796e
.l7995
	ld (iy+#02),e
	ld (iy+#03),d
	ld de,#000c
	add iy,de
	djnz l797a
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l7b0d),hl
	ld hl,l7b38
	ex de,hl
	ld bc,#001e
	ldir
	ld hl,l79eb
;	ld (#0039),hl modified by Megachur
	defs 3,0
	ld a,#28
	di
	ld (l7a17),a
	ld a,#07
	ld c,#b8
	call l7ae8
	ld a,#06
	ld c,#1f
	call l7ae8
	ld a,#08
	call l79dd
	ld a,#09
	call l79dd
	ld a,#0a
	call l79dd
.l79db
	ei
	ret
.l79dd
	ld c,#00
	jp l7ae8
.l79e2
	ld l,(iy+#02)
	ld h,(iy+#03)
	ld a,h
	or l
	ret
.l79eb
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a,(l7b13)
	inc a
	ld (l7b13),a
	cp #06
	call z,l7a09
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	ret
;
.play_music
.l7a09
;
	xor a
	ld (l7b13),a
	ld iy,l7b14
	ld b,#03
.l7a13
	push bc
	call l79e2
.l7a17
	jr z,l7a63
	ld a,(iy+#01)
	or a
	jr z,l7a24
	dec (iy+#01)
	jr l7a4d
.l7a24
	ld a,(hl)
	dec a
	ld (iy+#01),a
	ld (iy+#00),#ff
	inc hl
	ld d,(iy+#06)
	call l7ac4
	ld a,(hl)
	cp #ff
	jr nz,l7a47
	pop bc
	xor a
	ld (l79db),a
	call l7971
	ld a,#fb
	ld (l79db),a
	ret
.l7a47
	ld (iy+#02),l
	ld (iy+#03),h
.l7a4d
	ld a,(iy+#00)
	cp #09
	jr z,l7a57
	inc (iy+#00)
.l7a57
	call l7ad0
.l7a5a
	ld de,#000c
	add iy,de
	pop bc
	djnz l7a13
	ret
.l7a63
	ld a,(iy+#08)
	or a
	jr z,l7a5a
	ld a,(iy+#09)
	or a
	jr z,l7a74
	dec (iy+#09)
	jr l7a5a
.l7a74
	ld a,(l7b11)
	ld (iy+#09),a
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld a,(hl)
	cp #ff
	jr nz,l7a8d
	ld (iy+#08),#00
	ld c,#00
	jr l7abf
.l7a8d
	ld d,a
	bit 2,d
	jr z,l7a96
	ld c,#a8
	jr l7a98
.l7a96
	ld c,#b8
.l7a98
	ld a,#07
	call l7ae8
	inc hl
	ld c,(hl)
	inc hl
	ld (iy+#0a),l
	ld (iy+#0b),h
	ld a,(iy+#06)
	push af
	call l7ae8
	ld a,d
	and #03
	ld c,a
	pop af
	inc a
	call l7ae8
	ld c,d
	srl c
	srl c
	srl c
	srl c
.l7abf
	call l7ae5
	jr l7a5a
.l7ac4
	ld a,d
	ld c,(hl)
	inc hl
	call l7ae8
	ld a,d
	inc a
	ld c,(hl)
	inc hl
	jr l7ae8
.l7ad0
	ld c,#00
	dec hl
	ld a,(hl)
	dec hl
	or (hl)
	jr z,l7ae5
	ld e,(iy+#00)
	ld d,#00
	ld l,(iy+#04)
	ld h,(iy+#05)
	add hl,de
	ld c,(hl)
.l7ae5
	ld a,(iy+#07)
.l7ae8
	push bc
	ld bc,#f782
	out (c),c
	pop bc
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
.l7b14 equ $ + 7
.l7b13 equ $ + 6
.l7b11 equ $ + 4
.l7b0f equ $ + 2
.l7b0d
	db #00,#00,#00,#00,#01,#0a,#00,#00
	db #00,#00,#00
	dw l7b38
	db #00,#08,#00,#00,#00,#00,#00,#00
	db #00,#00
	dw l7b42
	db #02,#09,#00,#00,#00,#00,#00,#00
	db #00,#00
	dw l7b4c
.l7b38 equ $ + 6
	db #04,#0a,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7b42
	db #00,#00,#00,#00,#00,#00,#00,#00
.l7b4c equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00

;#44b5
.l44b5
	dw l45f8,l461c,l46bb,l4778
	dw l45f8,l4625,l46c4,l4778
	dw l45f8,l462e,l46cd,l4778
	dw l45c5,l461c,l46bb,l475a
	dw l45c5,l4625,l46c4,l475a
	dw l45c5,l462e,l46cd,l475a
	dw l45c5,l4637,l46d6,l475a
	dw l45c5,l4640,l46bb,l475a
	dw l45c5,l4640,l46c4,l475a
	dw l45c5,l4640,l46cd,l475a
	dw l45c5,l4640,l46d6,l475a
	dw l45c5,l461c,l46df,l475a
	dw l45c5,l4625,l46df,l475a
	dw l45c5,l462e,l46df,l475a
	dw l45c5,l4637,l46df,l475a
	dw l45c5,l4640,l46df,l475a
	dw l45c5,l4625,l46df,l475a
	dw l45c5,l4640,l46cd,l475a
	dw l45c5,l4640,l46d6,l475a
	dw l45c5,l4697,l46df,l4778
	dw l45c5,l4697,l46df,l4778
	dw l45c5,l4697,l46df,l475a
	dw l45c5,l4697,l46df,l475a
	dw l45c5,l4661,l4700,l475a
	dw l45f8,l4661,l4736,l4778
	dw l45f8,l4640,l46bb,l4778
	dw l45f8,l4640,l46c4,l4778
	dw l45f8,l462e,l46df,l4778
	dw l45f8,l4637,l46df,l4778
	dw l45c5,l4640,l46df,l475a
	dw l45c5,l4640,l46df,l475a
	dw l45c5,l4640,l46df,l475a
	dw l45c5,l4640,l46df,l475a
	db #ff,#ff,#ff,#ff,#ff,#ff,#ff,#ff
.l45c5
	db #06,#4b,#00,#06,#96,#00,#06,#96
	db #00,#06,#47,#00,#06,#96,#00,#06
	db #96,#00,#06,#54,#00,#06,#96,#00
	db #06,#96,#00,#06,#4b,#00,#06,#96
	db #00,#06,#96,#00,#0c,#47,#00,#06
	db #54,#00,#06,#4b,#00,#06,#00,#00
.l45f8 equ $ + 3
	db #ff,#00,#00,#0c,#2d,#01,#06,#2d
	db #01,#0c,#2d,#01,#06,#2d,#01,#0c
	db #2d,#01,#06,#2d,#01,#0c,#2d,#01
	db #06,#2d,#01,#0c,#2d,#01,#06,#2d
.l461c equ $ + 7
	db #01,#06,#00,#00,#ff,#00,#00,#60
	db #26,#00,#06,#00,#00,#ff,#00,#00
.l4625
	db #60,#2a,#00,#06,#00,#00,#ff,#00
.l462e equ $ + 1
	db #00,#60,#2f,#00,#06,#00,#00,#ff
.l4637 equ $ + 2
	db #00,#00,#60,#32,#00,#06,#00,#00
.l4640 equ $ + 3
	db #ff,#00,#00,#06,#00,#00,#06,#4b
	db #00,#06,#38,#00,#06,#32,#00,#06
	db #26,#00,#06,#32,#00,#06,#38,#00
	db #06,#4b,#00,#30,#00,#00,#06,#00
.l4661 equ $ + 4
	db #00,#ff,#00,#00,#06,#4b,#00,#06
	db #32,#00,#06,#43,#00,#06,#3f,#00
	db #06,#4b,#00,#06,#32,#00,#06,#43
	db #00,#06,#3f,#00,#06,#4b,#00,#06
	db #32,#00,#06,#43,#00,#06,#3f,#00
	db #06,#4b,#00,#06,#32,#00,#06,#43
	db #00,#06,#3f,#00,#06,#00,#00,#ff
.l4697 equ $ + 2
	db #00,#00,#0c,#2d,#01,#06,#00,#00
	db #0c,#2d,#01,#06,#00,#00,#0c,#2d
	db #01,#06,#00,#00,#0c,#2d,#01,#06
	db #00,#00,#0c,#2d,#01,#0c,#00,#00
.l46bb equ $ + 6
	db #06,#00,#00,#ff,#00,#00,#60,#64
.l46c4 equ $ + 7
	db #00,#06,#00,#00,#ff,#00,#00,#60
	db #71,#00,#06,#00,#00,#ff,#00,#00
.l46cd
	db #60,#7f,#00,#06,#00,#00,#ff,#00
.l46d6 equ $ + 1
	db #00,#60,#86,#00,#06,#00,#00,#ff
.l46df equ $ + 2
	db #00,#00,#06,#00,#00,#06,#2d,#01
	db #06,#0c,#01,#06,#fd,#00,#06,#c9
	db #00,#06,#fd,#00,#06,#0c,#01,#06
	db #2d,#01,#30,#00,#00,#06,#00,#00
.l4700 equ $ + 3
	db #ff,#00,#00,#06,#4b,#00,#06,#32
	db #00,#06,#43,#00,#06,#3f,#00,#06
	db #4b,#00,#06,#32,#00,#06,#43,#00
	db #06,#3f,#00,#06,#4b,#00,#06,#32
	db #00,#06,#43,#00,#06,#3f,#00,#06
	db #4b,#00,#06,#32,#00,#06,#43,#00
	db #06,#3f,#00,#06,#00,#00,#ff,#00
.l4736 equ $ + 1
	db #00,#0c,#c9,#00,#06,#00,#00,#0c
	db #c9,#00,#06,#00,#00,#0c,#c9,#00
	db #06,#00,#00,#0c,#c9,#00,#06,#00
	db #00,#0c,#c9,#00,#0c,#00,#00,#06
.l475a equ $ + 5
	db #00,#00,#ff,#00,#00,#0e,#0c,#0e
	db #0c,#0e,#09,#0e,#07,#0e,#05,#0c
	db #0b,#0c,#0b,#0c,#0b,#0c,#0b,#0c
	db #0c,#0e,#0d,#0c,#0b,#0c,#0d,#0e
.l4778 equ $ + 3
	db #0d,#0c,#0b,#0f,#0e,#0d,#0c,#0b
	db #0a,#08,#06,#04,#02,#0f,#0e,#0d
	db #0e,#0f,#0e,#0d,#0e,#0f,#0b,#0e
	db #0d,#0c,#0b,#0c,#0d,#0e,#0d,#0c
	db #0b
;
.music_info
	db "Comando Tracer (1988)(Dinamic)(Javier Cubedo)",0
	db "MUSICA POR JAVIER CUBEDO",0

	read "music_end.asm"
