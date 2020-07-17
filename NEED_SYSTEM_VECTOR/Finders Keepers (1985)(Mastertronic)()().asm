; Music of Finders Keepers (1985)(Mastertronic)()()
; Ripped by Megachur the 29/05/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FINDERSK.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 29
MUSIC_DATE_RIP_MONTH	equ 05
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #8685
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.init_music
;
	di
	call l86b0
	call l86c2
	ld hl,l8c85
	ld b,#81
	ld de,l86ed
	call #bcef
	ld hl,l8c7f
	ld de,#0001
	ld bc,#0001
	call #bce9
	ei
	ret
.l86a5
	push af
	push bc
	push de
	ld c,e
	call #bd34
	pop de
	pop bc
	pop af
	ret
.l86b0
	ld b,#0d
.l86b2
	ld a,b
	ld e,#00
	call l86a5
	djnz l86b2
	ld a,#07
	ld e,#38
	call l86a5
	ret
.l86c2
	ld hl,l881d
	ld (l87fb),hl
	ld (l8801),hl
	ld hl,l8bbb
	ld (l87fd),hl
	ld (l8803),hl
	ld hl,l8c1d
	ld (l87ff),hl
	ld (l8805),hl
	ld hl,#04b0
	ld (l880a),hl
	call l8733
	call l876e
	call l879c
	ret
.l86ed
	ld a,(l8807)
	dec a
	ld (l8807),a
	jr nz,l86fb
	call l8733
	jr l8704
.l86fb
	cp #01
	jr nz,l8704
	ld e,#00
	call l8768
.l8704
	ld a,(l8808)
	dec a
	ld (l8808),a
	jr nz,l8712
	call l876e
	jr l871b
.l8712
	cp #01
	jr nz,l871b
	ld e,#00
	call l8796
.l871b
	ld a,(l8809)
	dec a
	ld (l8809),a
	jr nz,l8729
	call l879c
	jr l8732
.l8729
	cp #01
	jr nz,l8732
	ld e,#00
	call l87c4
.l8732
	ret
.l8733
	ld hl,(l87fb)
.l8736
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,c
	cp #ff
	jr nz,l8756
	ld a,#06
	call l87cd
	ld hl,l880d
	add a
	ld e,a
	ld d,#00
	add hl,de
	ld e,(hl)
	inc hl
	ld h,(hl)
	ld l,e
	jr l8736
.l8756
	ld (l87fb),hl
	ld a,e
	ld (l8807),a
	ld e,c
	xor a
	call l86a5
	ld e,b
	inc a
	call l86a5
	ld e,d
.l8768
	ld a,#08
	call l86a5
	ret
.l876e
	ld hl,(l87fd)
.l8771
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,c
	cp #ff
	jr nz,l8783
	ld hl,(l8803)
	jr l8771
.l8783
	ld (l87fd),hl
	ld a,e
	ld (l8808),a
	ld e,c
	ld a,#02
	call l86a5
	ld e,b
	inc a
	call l86a5
	ld e,d
.l8796
	ld a,#09
	call l86a5
	ret
.l879c
	ld hl,(l87ff)
.l879f
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld a,c
	cp #ff
	jr nz,l87b1
	ld hl,(l8805)
	jr l879f
.l87b1
	ld (l87ff),hl
	ld a,e
	ld (l8809),a
	ld e,c
	ld a,#04
	call l86a5
	ld e,b
	inc a
	call l86a5
	ld e,d
.l87c4
	ld a,#0a
	call l86a5
	ret
.l87cb equ $ + 1
.l87ca
	db #02,#00,#00
.l87cd
	dec a
	ld (l87ca),a
	ld de,(l87cb)
	ld h,e
	ld l,#fd
	ld a,d
	or a
	sbc hl,de
	sbc #00
	sbc hl,de
	sbc #00
	ld e,a
	ld d,#00
	sbc hl,de
	jr nc,l87ea
	inc hl
.l87ea
	ld (l87cb),hl
	push hl
	pop de
	ld a,(l87ca)
	ld b,a
	xor a
.l87f4
	add hl,de
	jr nc,l87f8
	inc a
.l87f8
	djnz l87f4
	ret
.l8801 equ $ + 6
.l87ff equ $ + 4
.l87fd equ $ + 2
.l87fb
	db #00,#00,#00,#00,#00,#00,#00,#00
.l880a equ $ + 7
.l8809 equ $ + 6
.l8808 equ $ + 5
.l8807 equ $ + 4
.l8805 equ $ + 2
.l8803
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l880d
	dw l881d,l887f,l88e1,l8953
	dw l89e5,l8a77,l8af9,l8bbb
.l881d
	db #a9,#00,#0c,#0f,#be,#00,#0c,#0f
	db #d5,#00,#0c,#0f,#be,#00,#0c,#0f
	db #8e,#00,#0c,#0f,#5f,#00,#0c,#0f
	db #8e,#00,#0c,#0f,#5f,#00,#0c,#0f
	db #a9,#00,#0c,#0f,#be,#00,#0c,#0f
	db #d5,#00,#0c,#0f,#be,#00,#0c,#0f
	db #be,#00,#0c,#0f,#d5,#00,#0c,#0f
	db #ef,#00,#0c,#0f,#d5,#00,#0c,#0f
	db #9f,#00,#0c,#0f,#6a,#00,#0c,#0f
	db #9f,#00,#0c,#0f,#6a,#00,#0c,#0f
	db #be,#00,#0c,#0f,#d5,#00,#0c,#0f
	db #ef,#00,#0c,#0f,#d5,#00,#0c,#0f
.l887f equ $ + 2
	db #ff,#ff,#6a,#00,#0c,#0f,#5f,#00
	db #0c,#0f,#8e,#00,#0c,#0f,#8e,#00
	db #0c,#0f,#5f,#00,#0c,#0f,#5f,#00
	db #0c,#0f,#8e,#00,#0c,#0f,#8e,#00
	db #0c,#0f,#6a,#00,#0c,#0f,#5f,#00
	db #0c,#0f,#8e,#00,#0c,#0f,#8e,#00
	db #0c,#0f,#77,#00,#0c,#0f,#6a,#00
	db #0c,#0f,#9f,#00,#0c,#0f,#9f,#00
	db #0c,#0f,#6a,#00,#0c,#0f,#6a,#00
	db #0c,#0f,#9f,#00,#0c,#0f,#9f,#00
	db #0c,#0f,#77,#00,#0c,#0f,#6a,#00
	db #0c,#0f,#9f,#00,#0c,#0f,#9f,#00
.l88e1 equ $ + 4
	db #0c,#0f,#ff,#ff,#6a,#00,#0c,#0f
	db #5f,#00,#0c,#0f,#8e,#00,#0c,#0f
	db #8e,#00,#0c,#0f,#5f,#00,#0c,#0f
	db #5f,#00,#0c,#0f,#8e,#00,#0c,#0f
	db #8e,#00,#0c,#0f,#6a,#00,#0c,#0f
	db #5f,#00,#0c,#0f,#8e,#00,#0c,#0f
	db #8e,#00,#0c,#0f,#50,#00,#0c,#0f
	db #6a,#00,#06,#0f,#77,#00,#06,#0f
	db #6a,#00,#06,#0f,#77,#00,#06,#0f
	db #6a,#00,#0c,#0f,#6a,#00,#0c,#0f
	db #50,#00,#06,#0f,#6a,#00,#06,#0f
	db #50,#00,#06,#0f,#6a,#00,#06,#0f
	db #50,#00,#0c,#0f,#6a,#00,#0c,#0f
	db #5f,#00,#0c,#0f,#8e,#00,#0c,#0f
.l8953 equ $ + 6
	db #8e,#00,#0c,#0f,#ff,#ff,#47,#00
	db #0c,#0f,#5f,#00,#06,#0f,#6a,#00
	db #06,#0f,#5f,#00,#06,#0f,#6a,#00
	db #06,#0f,#5f,#00,#0c,#0f,#47,#00
	db #0c,#0f,#5f,#00,#06,#0f,#6a,#00
	db #06,#0f,#5f,#00,#06,#0f,#6a,#00
	db #06,#0f,#5f,#00,#0c,#0f,#47,#00
	db #0c,#0f,#5f,#00,#0c,#0f,#8e,#00
	db #06,#0f,#6a,#00,#06,#0f,#5f,#00
	db #06,#0f,#6a,#00,#06,#0f,#50,#00
	db #0c,#0f,#6a,#00,#06,#0f,#77,#00
	db #06,#0f,#6a,#00,#06,#0f,#77,#00
	db #06,#0f,#6a,#00,#0c,#0f,#50,#00
	db #0c,#0f,#6a,#00,#06,#0f,#77,#00
	db #06,#0f,#6a,#00,#06,#0f,#77,#00
	db #06,#0f,#6a,#00,#0c,#0f,#50,#00
	db #0c,#0f,#6a,#00,#0c,#0f,#9f,#00
	db #06,#0f,#77,#00,#06,#0f,#6a,#00
	db #06,#0f,#77,#00,#06,#0f,#ff,#ff
.l89e5
	db #8e,#00,#06,#0f,#6a,#00,#06,#0f
	db #54,#00,#06,#0f,#50,#00,#06,#0f
	db #54,#00,#06,#0f,#6a,#00,#06,#0f
	db #8e,#00,#0c,#0f,#6a,#00,#06,#0f
	db #54,#00,#06,#0f,#50,#00,#06,#0f
	db #47,#00,#06,#0f,#50,#00,#06,#0f
	db #54,#00,#06,#0f,#6a,#00,#0c,#0f
	db #8e,#00,#0c,#0f,#5f,#00,#0c,#0f
	db #6a,#00,#0c,#0f,#5f,#00,#0c,#0f
	db #9f,#00,#06,#0f,#77,#00,#06,#0f
	db #5f,#00,#06,#0f,#59,#00,#06,#0f
	db #5f,#00,#06,#0f,#77,#00,#06,#0f
	db #9f,#00,#0c,#0f,#77,#00,#06,#0f
	db #5f,#00,#06,#0f,#59,#00,#06,#0f
	db #50,#00,#06,#0f,#59,#00,#06,#0f
	db #5f,#00,#06,#0f,#77,#00,#0c,#0f
	db #9f,#00,#0c,#0f,#6a,#00,#0c,#0f
	db #77,#00,#0c,#0f,#6a,#00,#0c,#0f
.l8a77 equ $ + 2
	db #ff,#ff,#8e,#00,#06,#0f,#8e,#00
	db #06,#0f,#7f,#00,#06,#0f,#7f,#00
	db #06,#0f,#6a,#00,#06,#0f,#6a,#00
	db #06,#0f,#5f,#00,#06,#0f,#5f,#00
	db #06,#0f,#8e,#00,#0c,#0f,#8e,#00
	db #0c,#0f,#5f,#00,#0c,#0f,#5f,#00
	db #0c,#0f,#8e,#00,#0c,#0f,#8e,#00
	db #0c,#0f,#5f,#00,#0c,#0f,#5f,#00
	db #0c,#0f,#9f,#00,#06,#0f,#9f,#00
	db #06,#0f,#8e,#00,#06,#0f,#8e,#00
	db #06,#0f,#77,#00,#06,#0f,#77,#00
	db #06,#0f,#6a,#00,#06,#0f,#6a,#00
	db #06,#0f,#9f,#00,#0c,#0f,#9f,#00
	db #0c,#0f,#6a,#00,#0c,#0f,#6a,#00
	db #0c,#0f,#9f,#00,#0c,#0f,#9f,#00
	db #0c,#0f,#6a,#00,#0c,#0f,#6a,#00
.l8af9 equ $ + 4
	db #0c,#0f,#ff,#ff,#8e,#00,#06,#0f
	db #8e,#00,#06,#0f,#6a,#00,#06,#0f
	db #6a,#00,#06,#0f,#54,#00,#06,#0f
	db #50,#00,#06,#0f,#54,#00,#06,#0f
	db #50,#00,#06,#0f,#8e,#00,#06,#0f
	db #8e,#00,#06,#0f,#6a,#00,#06,#0f
	db #6a,#00,#06,#0f,#54,#00,#06,#0f
	db #50,#00,#06,#0f,#54,#00,#06,#0f
	db #50,#00,#06,#0f,#8e,#00,#06,#0f
	db #8e,#00,#06,#0f,#6a,#00,#06,#0f
	db #6a,#00,#06,#0f,#54,#00,#06,#0f
	db #50,#00,#06,#0f,#47,#00,#06,#0f
	db #47,#00,#06,#0f,#9f,#00,#06,#0f
	db #9f,#00,#06,#0f,#77,#00,#06,#0f
	db #77,#00,#06,#0f,#5f,#00,#06,#0f
	db #59,#00,#06,#0f,#5f,#00,#06,#0f
	db #59,#00,#06,#0f,#9f,#00,#06,#0f
	db #9f,#00,#06,#0f,#77,#00,#06,#0f
	db #77,#00,#06,#0f,#5f,#00,#06,#0f
	db #59,#00,#06,#0f,#5f,#00,#06,#0f
	db #59,#00,#06,#0f,#9f,#00,#06,#0f
	db #9f,#00,#06,#0f,#77,#00,#06,#0f
	db #77,#00,#06,#0f,#5f,#00,#06,#0f
	db #59,#00,#06,#0f,#50,#00,#06,#0f
.l8bbb equ $ + 6
	db #50,#00,#06,#0f,#ff,#ff,#52,#01
	db #0c,#0f,#7b,#01,#0c,#0f,#aa,#01
	db #0c,#0f,#7b,#01,#0c,#0f,#38,#02
	db #0c,#0f,#7b,#01,#0c,#0f,#38,#02
	db #0c,#0f,#7b,#01,#0c,#0f,#52,#01
	db #0c,#0f,#7b,#01,#0c,#0f,#aa,#01
	db #0c,#0f,#7b,#01,#0c,#0f,#7b,#01
	db #0c,#0f,#aa,#01,#0c,#0f,#de,#01
	db #0c,#0f,#aa,#01,#0c,#0f,#7e,#02
	db #0c,#0f,#aa,#01,#0c,#0f,#7e,#02
	db #0c,#0f,#aa,#01,#0c,#0f,#7b,#01
	db #0c,#0f,#aa,#01,#0c,#0f,#de,#01
	db #0c,#0f,#aa,#01,#0c,#0f,#ff,#ff
.l8c1d
	db #38,#02,#0c,#0f,#fa,#01,#0c,#0f
	db #aa,#01,#0c,#0f,#7b,#01,#0c,#0f
	db #38,#02,#0c,#0f,#38,#02,#0c,#0f
	db #7b,#01,#0c,#0f,#7b,#01,#0c,#0f
	db #38,#02,#0c,#0f,#38,#02,#0c,#0f
	db #7b,#01,#0c,#0f,#7b,#01,#0c,#0f
	db #7e,#02,#0c,#0f,#38,#02,#0c,#0f
	db #de,#01,#0c,#0f,#aa,#01,#0c,#0f
	db #7e,#02,#0c,#0f,#7e,#02,#0c,#0f
	db #aa,#01,#0c,#0f,#aa,#01,#0c,#0f
	db #7e,#02,#0c,#0f,#7e,#02,#0c,#0f
	db #aa,#01,#0c,#0f,#aa,#01,#0c,#0f
	db #ff,#ff
.l8c85 equ $ + 6
.l8c7f
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #aa,#01,#0c,#0f,#ff,#ff,#38,#02
	db #0c,#0f,#fa,#01,#0c,#0f,#aa,#01
	db #0c,#0f,#7b,#01,#0c,#0f,#38,#02
	db #0c,#0f,#38,#02,#0c,#0f,#7b,#01
	db #0c,#0f,#7b,#01,#0c,#0f,#38,#02
	db #0c,#0f,#38,#02,#0c,#0f,#7b,#01
	db #0c,#0f,#7b,#01,#0c,#0f,#7e,#02
	db #0c,#00,#00
;
.music_info
	db "Finders Keepers (1985)(Mastertronic)()",0
	db "",0

	read "music_end.asm"
