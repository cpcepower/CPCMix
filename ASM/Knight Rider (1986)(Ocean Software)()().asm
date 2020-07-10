; Music of Knight Rider (1986)(Ocean Software)()()
; Ripped by Megachur the 22/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "KNIGHTRI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #4e84

	read "music_header.asm"

;
.init_music
;
	ld hl,l4fdd
	ld de,l4feb
	ld bc,#000e
	ldir
	call l4fd7
	ld a,#01
	ld (l4f5f),a
	ld a,#01
	ld (l4f5d),a
	ld a,#16
	ld (l4f5e),a
	ld a,#ff
	ld (l4fb3),a
	ld hl,l4ed3
	ld (l4ecf),hl
	ld hl,l5058
	ld (l4ed1),hl
;
.play_music
.l4eb2
;
	ld a,3          ; added by Megachur
	dec a
	ld (l4eb2+1),a
	ret nz
	ld a,3
	ld (l4eb2+1),a  ; added by Megachur
	call l4f00
	call l4f26
	call l4fb4
	call l4fd7
	ld b,#2c
.l4ec0
	push bc
	call l4f61
	pop bc
	djnz l4ec0
	ret
.l4ec8
	dec bc
	ld a,b
	or c
	jp nz,l4ec8
	ret
.l4ecf
	dw l4ed3
.l4ed1
	dw l5058
.l4ed3
	db #00,#01,#02,#01,#00,#01,#02,#01
	db #00,#01,#02,#01,#00,#01,#02,#01
	db #03,#04,#05,#04,#03,#04,#05,#04
	db #03,#04,#05,#04,#03,#04,#05,#04
	db #ff
.l4ef4
	db #bc,#03,#7e,#02,#de,#01,#31,#04
	db #cc,#02,#18,#02
.l4f00
	ld hl,(l4ecf)
.l4f03
	ld a,(hl)
	inc hl
	ld (l4ecf),hl
	cp #ff
	jp nz,l4f16
	ld hl,l4ed3
	ld (l4ecf),hl
	jp l4f03
.l4f16
	ld hl,l4ef4
	ld c,a
	ld b,#00
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld a,#01
	jp l5040
.l4f26
	ld hl,(l4ed1)
.l4f29
	ld a,(hl)
	inc hl
	ld (l4ed1),hl
	cp #ff
	jp nz,l4f3c
.l4f33
	ld hl,l5058
	ld (l4ed1),hl
	jp l4f29
.l4f3c
	call l4f4f
	ld hl,(l4ed1)
	ld a,(hl)
	inc hl
	ld (l4ed1),hl
	cp #ff
	jp z,l4f33
	jp l4f54
.l4f4f
	ld e,#00
	jp l4f56
.l4f54
	ld e,#02
.l4f56
	ld c,a
	ld b,#00
	ld a,e
	jp l5040
.l4f60 equ $ + 3
.l4f5f equ $ + 2
.l4f5e equ $ + 1
.l4f5d
	db #00,#0a,#01,#00
.l4f61
	ld a,(l4f5d)
	inc a
	ld (l4f5d),a
	ld hl,l4f5e
	cp (hl)
	jp nz,l4f9c
	xor a
	ld (l4f5d),a
	ld a,(l4f60)
	xor #01
	ld (l4f60),a
	ld hl,l4f5f
	ld de,l4feb
	call l4fa2
	ld de,l4fef
	call l4fa2
	ld a,#00
	ld bc,(l4feb)
	call l5040
	ld a,#02
	ld bc,(l4fef)
	jp l5040
.l4f9c
	ld bc,#01c5
	jp l4ec8
.l4fa2
	ld a,(de)
	ld c,a
	ld a,(l4f60)
	and a
	ld a,c
	jp nz,l4fb0
	add (hl)
	jp l4fb1
.l4fb0
	sub (hl)
.l4fb1
	ld (de),a
	ret
.l4fb3
	db #ff
.l4fb4
	ld a,(l4fb3)
	inc a
	and #03
	ld (l4fb3),a
	ld hl,l4fcf
	ld c,a
	ld b,#00
	add hl,bc
	add hl,bc
	ld a,(hl)
	ld (l4ff2),a
	inc hl
	ld a,(hl)
	ld (l4ff1),a
	ret
.l4fcf
	jr z,l4ff0
	jr c,l4ff2
	jr z,l4fd5
.l4fd5
	jr c,l4fd7
.l4fd7
	ld hl,l4feb
	jp l4ffe
.l4fdd
	db #00,#00,#00,#00,#00,#00,#00,#28
	db #0b,#10,#0b,#00,#04,#00
.l4ff2 equ $ + 7
.l4ff1 equ $ + 6
.l4ff0 equ $ + 5
.l4fef equ $ + 4
.l4feb
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00
	push hl
	call l500f
	pop hl
.l4ffe
	xor a
.l4fff
	ld c,(hl)
	push af
	push hl
	call l5020
	pop hl
	pop af
	inc hl
	inc a
	cp #0e
	ret z
	jp l4fff
.l500f
	ld bc,#000d
.l5012
	ld a,b
	push bc
	call l5020
	pop bc
	dec b
	jp p,l5012
	ld a,#07
	ld c,#3f
.l5020
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
	ret
.l5040
	sla a
	push bc
	push af
	ld hl,l4feb
	ld e,a
	ld d,#00
	add hl,de
	ld (hl),c
	call l5020
	pop af
	pop bc
	inc a
	inc hl
	ld (hl),b
	ld c,b
	jp l5020
.l5058
	db #77,#77,#77,#77,#71,#71,#77,#77
	db #77,#77,#77,#77,#71,#71,#77,#77
	db #77,#77,#77,#77,#71,#71,#77,#77
	db #77,#77,#71,#71,#77,#77,#7f,#7f
	db #86,#86,#86,#86,#7f,#7f,#86,#86
	db #86,#86,#86,#86,#7f,#7f,#86,#86
	db #86,#86,#86,#86,#7f,#7f,#86,#86
	db #86,#86,#7f,#7f,#86,#86,#7f,#7f
	db #77,#50,#77,#50,#71,#4b,#77,#50
	db #77,#50,#77,#50,#71,#4b,#77,#50
	db #77,#50,#77,#50,#71,#4b,#77,#50
	db #77,#50,#71,#4b,#77,#50,#7f,#54
	db #86,#59,#86,#59,#7f,#54,#86,#59
	db #86,#59,#86,#59,#7f,#54,#86,#59
	db #86,#59,#86,#59,#7f,#54,#86,#59
	db #86,#59,#7f,#54,#86,#59,#7f,#54
	db #77,#77,#77,#77,#71,#71,#77,#77
	db #50,#77,#50,#77,#50,#71,#50,#77
	db #50,#77,#50,#77,#50,#71,#50,#77
	db #50,#77,#50,#77,#50,#71,#50,#77
	db #50,#86,#50,#86,#4b,#7f,#50,#86
	db #77,#86,#77,#86,#77,#7f,#77,#86
	db #77,#86,#77,#86,#77,#7f,#77,#86
	db #77,#86,#77,#86,#77,#7f,#77,#86
	db #77,#77,#77,#77,#77,#77,#77,#77
	db #59,#6a,#59,#6a,#4b,#59,#4b,#59
	db #50,#5f,#50,#77,#5f,#77,#5f,#77
	db #50,#5f,#50,#77,#50,#71,#50,#77
	db #86,#86,#86,#86,#7f,#59,#86,#86
	db #86,#86,#86,#86,#7f,#59,#86,#86
	db #86,#86,#86,#86,#7f,#59,#86,#43
	db #86,#86,#77,#43,#86,#86,#7f,#7f
	db #77,#77,#77,#77,#71,#71,#77,#77
	db #50,#77,#50,#77,#50,#71,#50,#77
	db #77,#77,#77,#77,#71,#71,#77,#77
	db #77,#3b,#71,#71,#77,#3b,#7f,#7f
	db #50,#43,#50,#86,#4b,#7f,#50,#86
	db #77,#86,#77,#86,#77,#7f,#77,#86
	db #77,#86,#77,#86,#77,#7f,#77,#86
	db #77,#86,#77,#77,#77,#86,#77,#7f
	db #77,#77,#77,#77,#77,#77,#77,#77
	db #59,#6a,#59,#6a,#4b,#59,#4b,#59
	db #50,#5f,#50,#77,#5f,#77,#5f,#77
	db #50,#5f,#50,#77,#50,#71,#50,#77
	db #86,#86,#86,#86,#7f,#59,#86,#86
	db #86,#86,#86,#86,#7f,#59,#86,#86
	db #86,#86,#86,#86,#7f,#59,#86,#86
	db #86,#86,#77,#77,#86,#59,#7f,#7f
	db #ff,#00
;
; #0a37
; call #4e84
; ld a,#2c
; ld (#4ebf),a
; ld a,#16
; ld (#4e9d),a
; ret
; call #4eb2
;
; #4e84 init music
; #4eb2 play music (16,66hz)
;
.music_info
	db "Knight Rider (1986)(Ocean Software)()",0
	db "",0

	read "music_end.asm"
