; Music of Kane (1986)(Mastertronic)()()
; Ripped by Megachur the 13/02/2009
; $VER 1.5

IFDEF FILENAME_WRITE
	write "KANE.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 13
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2009
music_adr				equ #1e7d

	read "music_header.asm"

	add hl,bc
	nop
	ex af,af'
	pop hl
	call l1e93
	jp (hl)
.l1e85
	ld (l1eaf),a
	ld (l1ebf),a
	jr l1e92
.l1e8d
	ld a,(hl)
	jr c,l1e85
	add e
	ld e,a
.l1e92
	inc hl
.l1e93
	ld a,(hl)
	inc hl
	add a
	jr z,l1e8d
	ret c
	push hl
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	ld bc,#1861
	add hl,bc
	ld b,#08
.l1ea5
	ld a,(hl)
	and #f0
	ld c,a
	rrca
	rrca
	rrca
	rrca
	or c
.l1eaf equ $ + 1
	and #ff
	ld (de),a
	set 2,d
	ld (de),a
	inc e
	ld a,(hl)
	and #0f
	ld c,a
	add a
	add a
	add a
	add a
	or c
.l1ebf equ $ + 1
	and #ff
	ld (de),a
	res 2,d
	ld (de),a
	dec e
	ld a,d
	add #08
	ld d,a
	inc hl
	djnz l1ea5
	ld a,d
	sub #40
	ld d,a
	inc e
	inc e
	pop hl
	jr l1e93
;
.stop_music
;
	ld b,#0e
	ld c,#00
.l1ed9
	ld a,b
	dec a
	call l23d5
	djnz l1ed9
	ld a,#07
	ld c,#b8
	call l23d5
	ret
;
.real_init_music
;
	ld hl,l2008
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1f30),de
	ld (l1f37),hl
	ld hl,l200c
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1f71),de
	ld (l1f78),hl
	call l1f2f
	ld (l1f13),a
	call l1f70
	ld (l1f21),a
	ret
	nop
;
.play_music
;
.l1f13 equ $ + 1
	ld a,#01
	dec a
	call z,l1f2f
	ld (l1f13),a
	dec a
	ld c,a
	call z,l1f69
.l1f21 equ $ + 1
	ld a,#01
	dec a
	call z,l1f70
	ld (l1f21),a
	dec a
	ret nz
	ld c,a
	jp l1fb5
.l1f30 equ $ + 1
.l1f2f
	ld hl,l2010
	ld c,(hl)
	inc c
	jr nz,l1f4d
.l1f37 equ $ + 1
	ld hl,l200a
	inc hl
	ld a,(hl)
	dec hl
	inc a
	jp nz,l1f43
	ld hl,l2008
.l1f43
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1f37),hl
	ex de,hl
	ld c,(hl)
	inc c
.l1f4d
	inc hl
	ld d,(hl)
	inc hl
	ld (l1f30),hl
	inc c
	jp z,l1f69
	xor a
	ld b,a
	ld hl,l1f6a
	add hl,bc
	ld c,(hl)
	inc hl
	call l23d5
	inc a
	ld c,(hl)
	call l23d5
	ld c,#0a
.l1f6a equ $ + 1
.l1f69
	ld a,#08
	call l23d5
	ld a,d
	ret
.l1f71 equ $ + 1
.l1f70
	ld hl,l222b
	ld c,(hl)
	inc c
	jr nz,l1f8e
.l1f78 equ $ + 1
	ld hl,l200e
	inc hl
	ld a,(hl)
	dec hl
	inc a
	jp nz,l1f84
	ld hl,l200c
.l1f84
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1f78),hl
	ex de,hl
	ld c,(hl)
	inc c
.l1f8e
	inc hl
	ld d,(hl)
	inc hl
	ld (l1f71),hl
	inc c
	jp z,l1fb5
	ld a,#02
	ld b,a
	ld hl,#1d6a
	add hl,bc
	ld c,(hl)
	inc hl
	call l23d5
	add #02
	call l23d5
	dec a
	ld c,(hl)
	call l23d5
	add #02
	call l23d5
	ld c,#0a
.l1fb5
	ld a,#09
	call l23d5
	inc a
	call l23d5
	ld a,d
	ret
	dw #01aa,#0192,#017b,#0166
	dw #0152,#013f,#012d,#011c
	dw #010c,#00fd,#00ef,#00e1
	dw #00d5,#00c9,#00be,#00b3
	dw #00a9,#009f,#0096,#008e
	dw #0086,#007f,#0077,#0071
	dw #006a,#0064,#005f,#0059
	dw #0054,#0050,#004b,#0047
	dw #0043,#003f,#003c,#0038
.l2008
	dw l2010
.l200a
	db #ff,#ff
.l200c
	dw l222b
.l200e
	db #ff,#ff
.l2010
	db #78,#06,#78,#06,#78,#18,#fe,#0c
	db #78,#06,#78,#06,#78,#0c,#72,#0c
	db #6a,#0c,#72,#0c,#78,#0c,#72,#0c
	db #78,#0c,#82,#0c,#78,#0c,#78,#06
	db #78,#06,#78,#0c,#78,#0c,#78,#48
	db #fe,#0c,#60,#06,#60,#06,#60,#0c
	db #60,#06,#60,#06,#60,#0c,#60,#0c
	db #6a,#0c,#6e,#0c,#72,#0c,#60,#06
	db #60,#06,#60,#0c,#60,#06,#60,#06
	db #6a,#0c,#72,#06,#72,#06,#6e,#0c
	db #68,#0c,#60,#0c,#60,#06,#60,#06
	db #60,#0c,#60,#06,#60,#06,#60,#0c
	db #60,#06,#60,#06,#6a,#0c,#6e,#0c
	db #72,#0c,#6a,#06,#72,#06,#78,#18
	db #78,#06,#74,#06,#72,#06,#6e,#06
	db #6a,#0c,#72,#0c,#6a,#0c,#78,#06
	db #78,#06,#78,#0c,#78,#06,#78,#06
	db #78,#0c,#78,#0c,#82,#0c,#86,#0c
	db #8a,#0c,#78,#06,#78,#06,#78,#0c
	db #78,#06,#78,#06,#82,#0c,#8a,#06
	db #8a,#06,#86,#0c,#80,#0c,#78,#0c
	db #78,#06,#78,#06,#78,#0c,#78,#06
	db #78,#06,#78,#0c,#78,#06,#78,#06
	db #82,#0c,#86,#0c,#8a,#0c,#82,#06
	db #8a,#06,#90,#18,#90,#06,#8c,#06
	db #8a,#06,#86,#06,#82,#0c,#8a,#0c
	db #82,#0c,#8a,#06,#8a,#06,#8a,#0c
	db #8a,#06,#8a,#06,#8a,#0c,#8a,#06
	db #8a,#06,#8a,#0c,#94,#0c,#8a,#0c
	db #94,#0c,#8a,#0c,#94,#0c,#8a,#0c
	db #86,#0c,#82,#0c,#80,#0c,#7c,#0c
	db #8a,#06,#8a,#06,#8a,#0c,#8a,#06
	db #8a,#06,#8a,#0c,#8a,#06,#8a,#06
	db #8a,#0c,#94,#0c,#8a,#0c,#94,#0c
	db #8a,#0c,#94,#0c,#90,#0c,#8e,#0c
	db #90,#0c,#8e,#0c,#90,#0c,#8a,#06
	db #8a,#06,#8a,#0c,#8a,#06,#8a,#06
	db #8a,#0c,#8a,#06,#8a,#06,#8a,#0c
	db #94,#0c,#8a,#0c,#94,#0c,#8a,#0c
	db #94,#0c,#8a,#0c,#86,#0c,#82,#0c
	db #80,#0c,#7c,#0c,#8a,#06,#8a,#06
	db #8a,#0c,#8a,#06,#8a,#06,#8a,#0c
	db #8a,#06,#8a,#06,#8a,#0c,#94,#0c
	db #8a,#0c,#94,#0c,#8a,#0c,#94,#0c
	db #90,#0c,#8e,#0c,#90,#0c,#78,#06
	db #78,#06,#78,#0c,#6e,#06,#6e,#06
	db #6e,#0c,#6e,#06,#6e,#06,#6e,#0c
	db #72,#0c,#74,#0c,#6e,#18,#74,#0c
	db #72,#0c,#6a,#18,#72,#0c,#6e,#0c
	db #6e,#0c,#6e,#0c,#86,#06,#86,#06
	db #86,#0c,#86,#06,#86,#06,#86,#0c
	db #8a,#0c,#8c,#0c,#8a,#18,#8c,#0c
	db #8a,#0c,#82,#18,#8a,#0c,#86,#0c
	db #78,#06,#78,#06,#78,#0c,#60,#06
	db #60,#06,#60,#0c,#60,#06,#60,#06
	db #60,#0c,#60,#06,#60,#06,#6a,#0c
	db #6e,#0c,#72,#0c,#60,#06,#60,#06
	db #60,#0c,#60,#06,#60,#06,#6a,#0c
	db #72,#06,#72,#06,#6e,#0c,#68,#0c
	db #60,#0c,#60,#06,#60,#06,#60,#0c
	db #60,#06,#60,#06,#60,#0c,#60,#06
	db #60,#06,#6a,#0c,#6e,#0c,#72,#0c
	db #6a,#06,#72,#06,#78,#18,#78,#06
	db #74,#06,#72,#06,#6e,#06,#6a,#0c
	db #72,#0c,#6a,#0c,#9a,#06,#9a,#06
	db #9a,#0c,#9a,#0c,#9a,#0c,#9a,#0c
	db #9a,#18,#fe,#12,#6a,#06,#6a,#60
	db #fe,#06,#ff
.l222b
	db #fe,#9c,#6e,#18,#6e,#18,#6e,#0c
	db #6e,#06,#6e,#06,#6e,#0c,#6e,#0c
	db #6e,#18,#fe,#18,#5a,#18,#5a,#18
	db #60,#0c,#60,#0c,#60,#0c,#60,#06
	db #60,#06,#5a,#18,#5a,#18,#60,#0c
	db #60,#0c,#56,#0c,#fe,#0c,#5a,#18
	db #5a,#18,#60,#0c,#60,#0c,#60,#0c
	db #fe,#0c,#56,#0c,#56,#0c,#56,#0c
	db #fe,#0c,#5a,#0c,#60,#0c,#60,#0c
	db #fe,#0c,#60,#18,#60,#18,#60,#0c
	db #60,#0c,#60,#0c,#fe,#0c,#60,#18
	db #60,#18,#56,#0c,#56,#0c,#56,#0c
	db #fe,#0c,#60,#18,#60,#18,#60,#0c
	db #60,#0c,#60,#0c,#fe,#0c,#56,#0c
	db #56,#0c,#56,#0c,#fe,#0c,#fe,#0c
	db #78,#0c,#78,#0c,#82,#06,#82,#06
	db #82,#0c,#82,#06,#82,#06,#82,#0c
	db #82,#06,#82,#06,#82,#0c,#fe,#0c
	db #82,#0c,#fe,#0c,#82,#0c,#fe,#0c
	db #82,#0c,#80,#0c,#7c,#0c,#7a,#0c
	db #fe,#0c,#82,#06,#82,#06,#82,#0c
	db #82,#06,#82,#06,#82,#0c,#82,#06
	db #82,#06,#82,#0c,#fe,#0c,#82,#0c
	db #fe,#0c,#82,#0c,#fe,#0c,#86,#0c
	db #82,#0c,#80,#0c,#82,#0c,#80,#0c
	db #82,#06,#82,#06,#82,#0c,#82,#06
	db #82,#06,#82,#0c,#82,#06,#82,#06
	db #82,#0c,#fe,#0c,#82,#0c,#fe,#0c
	db #82,#0c,#fe,#0c,#82,#0c,#80,#0c
	db #86,#0c,#7a,#0c,#fe,#0c,#82,#06
	db #82,#06,#82,#0c,#82,#06,#82,#06
	db #82,#0c,#82,#06,#82,#06,#82,#0c
	db #fe,#0c,#82,#0c,#fe,#0c,#82,#0c
	db #fe,#0c,#86,#0c,#82,#0c,#80,#0c
	db #fe,#18,#60,#06,#60,#06,#60,#0c
	db #60,#06,#60,#06,#60,#0c,#6a,#0c
	db #6e,#0c,#60,#18,#6e,#0c,#6a,#0c
	db #fe,#18,#6e,#0c,#68,#0c,#68,#0c
	db #68,#0c,#78,#06,#78,#06,#78,#0c
	db #78,#06,#78,#06,#78,#0c,#82,#0c
	db #80,#0c,#78,#18,#86,#0c,#82,#0c
	db #72,#18,#82,#0c,#80,#0c,#fe,#24
	db #5a,#18,#5a,#18,#5a,#0c,#5a,#0c
	db #5a,#0c,#fe,#0c,#5a,#18,#5a,#18
	db #60,#0c,#60,#0c,#60,#0c,#fe,#0c
	db #5a,#18,#5a,#18,#60,#0c,#60,#0c
	db #60,#0c,#fe,#0c,#5c,#0c,#5c,#0c
	db #5c,#0c,#fe,#0c,#5a,#0c,#60,#0c
	db #60,#0c,#8a,#06,#8a,#06,#8a,#0c
	db #8a,#0c,#8a,#0c,#8a,#0c,#8a,#18
	db #fe,#12,#5a,#06,#5a,#60,#fe,#06
	db #ff
	pop hl
	call l23c9
	jp (hl)
.l23c9
	ld a,(hl)
	inc hl
	cp #ff
	ret z
	ld c,(hl)
	call l23d5
	inc hl
	jr l23c9
.l23d5
	push af
	push bc
	ld b,#f4
	out (c),a
	ld a,#c0
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),c
	ld a,#80
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	pop bc
	pop af
	ret
;
; #004c
; di
; ld hl,#0001
; ld (#1e03),hl
; ld (#015a),hl
; call #1c0d
; call #02fd
; call #1ed5
; call #1ee8
; call #1bac
; ld de,#c10e
; call #1e80
;
.init_music	; added by Megachur
;
	call stop_music
	jp real_init_music
;
.music_info
	db "Kane (1986)(Mastertronic)()",0
	db "",0

	read "music_end.asm"
