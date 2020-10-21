; Music of Ole Toro (1985)(Dinamic Software)(Ignacio Bergareche)()
; Ripped by Megachur the 14/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "OLETORO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #ab00
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#25,#00,#00,#f8,#65,#01,#52
;
.init_music
;
	ld hl,lab50
	ld (lab88),hl
	ld hl,#0000
	ld (lab86),hl
	ld (lab8a),hl
	jr lab4c
	ld hl,lacb0
	ld (lab86),hl
	ld hl,laeaf
	ld (lab8a),hl
	ld hl,#0000
	ld (lab88),hl
	jr lab4c
	ld hl,#0000
	ld (lab86),hl
	ld (lab8a),hl
	ld hl,lac7c
	ld (lab88),hl
.lab4c
	call laba0
	ret
.lab50
	db #02,#02,#02,#02,#02,#02,#02,#02
	db #02,#ff
	jp laba0
	jp labe4
	jp labeb
.lab63
	db #00,#00,#00,#00,#00,#00,#01,#00
	db #00,#00,#00,#00,#00,#02,#00,#00
.lab78 equ $ + 5
	db #00,#00,#00,#00,#04,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
.lab88 equ $ + 6
.lab86 equ $ + 4
.lab82
	dw #0a01,#01ff,lacb0,#0000
.lab8a
	dw laeaf
;
.lab8c	; play music interrupt
;
	push af
	push hl
	push de
	push bc
	push ix
	push iy
	call labf8
	pop iy
	pop ix
	pop bc
	pop de
	pop hl
	pop af
	ret
.laba0
	ld a,#0f
	ld hl,lab82
	call #bcbc
	ld hl,lab78
	ld bc,#8100
	ld de,lab8c
	call #bcd7
	di
	ld iy,lab86
	ld ix,lab63
	ld b,#03
.labbf
	ld (ix+#00),#00
	ld (ix+#01),#00
	ld l,(iy+#00)
	inc iy
	ld h,(iy+#00)
	inc iy
	ld (ix+#02),l
	ld (ix+#03),h
	ld (ix+#04),l
	ld (ix+#05),h
	ld de,#0007
	add ix,de
	djnz labbf
.labe4
	ld a,#fd
.labe6
	di
	ld (labf8),a
	ret
.labeb
	ld hl,lab78
	call #bcdd
	call #bca7
	ld a,#c9
	jr labe6
.labf8
	ld iy,lab63
	ld b,#03
.labfe
	push bc
	ld a,(iy+#02)
	or (iy+#03)
	jr z,lac47
	ld a,(iy+#01)
	or a
	jr z,lac12
	dec (iy+#01)
	jr lac47
.lac12
	ld l,(iy+#02)
	ld h,(iy+#03)
	push hl
	push hl
	pop ix
	ld d,(iy+#08)
	push ix
	call lac50
	pop ix
	ld a,(ix+#00)
	dec a
	ld (iy+#01),a
	ld (iy+#00),#ff
	pop hl
	ld de,#0003
	add hl,de
	ld a,(hl)
	cp #ff
	jr nz,lac41
	ld l,(iy+#04)	; reset music
	ld h,(iy+#05)
.lac41
	ld (iy+#02),l
	ld (iy+#03),h
.lac47
	ld de,#0007
	add iy,de
	pop bc
	djnz labfe
	ret
.lac50
	ld a,(iy+#06)
	ld (lac73),a
	ld l,(ix+#00)
	ld h,#00
	ld l,#00
	ld (lac7a),hl
	ld a,(ix+#01)
	ld (lac76),a
	ld a,(ix+#02)
	ld (lac77),a
	ld hl,lac73
	call #bcaa
	ret
.lac7a equ $ + 7
.lac77 equ $ + 4
.lac76 equ $ + 3
.lac73
	db #01,#0f,#00,#00,#00,#00,#0f,#00
.lac7c equ $ + 1
	db #00,#0a,#6a,#00,#32,#50,#00,#05
	db #6a,#00,#05,#6a,#00,#0a,#6a,#00
	db #0a,#7f,#00,#0a,#6a,#00,#0a,#6a
	db #00,#0a,#7f,#00,#0a,#6a,#00,#32
	db #50,#00,#0a,#50,#00,#14,#6a,#00
	db #0a,#6a,#00,#14,#7f,#00,#0a,#7f
	db #00,#0a,#9f,#00,#ff
.lacb0
	db #0c,#00,#00,#18,#f6,#02,#18,#38
	db #02,#18,#5a,#02,#18,#38,#02,#18
	db #7e,#02,#18,#cc,#02,#1e,#f6,#02
	db #12,#00,#00,#18,#f6,#02,#18,#38
	db #02,#18,#5a,#02,#18,#38,#02,#18
	db #7e,#02,#18,#cc,#02,#0c,#f6,#02
	db #0c,#00,#00,#0c,#f4,#03,#0c,#00
	db #00,#0c,#f6,#02,#24,#00,#00,#0c
	db #38,#02,#06,#de,#01,#06,#de,#01
	db #0c,#de,#01,#0c,#38,#02,#0c,#fa
	db #01,#0c,#aa,#01,#0c,#f6,#02,#0c
	db #5a,#02,#0c,#38,#02,#06,#de,#01
	db #06,#de,#01,#0c,#de,#01,#0c,#de
	db #01,#0c,#38,#02,#0c,#de,#01,#0c
	db #f6,#02,#0c,#de,#01,#0c,#f6,#02
	db #06,#aa,#01,#06,#aa,#01,#0c,#aa
	db #01,#0c,#aa,#01,#0c,#f6,#02,#0c
	db #aa,#01,#0c,#f6,#02,#0c,#5a,#02
	db #0c,#38,#02,#06,#de,#01,#06,#de
	db #01,#0c,#de,#01,#0c,#de,#01,#0c
	db #38,#02,#0c,#de,#01,#0c,#f6,#02
	db #0c,#de,#01,#0c,#38,#02,#06,#de
	db #01,#06,#de,#01,#0c,#de,#01,#0c
	db #38,#02,#0c,#fa,#01,#0c,#aa,#01
	db #0c,#f6,#02,#0c,#5a,#02,#0c,#38
	db #02,#06,#de,#01,#06,#de,#01,#0c
	db #de,#01,#0c,#de,#01,#0c,#38,#02
	db #0c,#de,#01,#0c,#f6,#02,#0c,#de
	db #01,#0c,#f6,#02,#06,#aa,#01,#06
	db #aa,#01,#0c,#aa,#01,#0c,#aa,#01
	db #0c,#fa,#01,#0c,#aa,#01,#0c,#f6
	db #02,#0c,#fa,#01,#0c,#38,#02,#06
	db #de,#01,#06,#de,#01,#0c,#de,#01
	db #0c,#f6,#02,#18,#38,#02,#18,#00
	db #00,#0c,#7e,#02,#06,#aa,#01,#06
	db #aa,#01,#0c,#aa,#01,#0c,#aa,#01
	db #0c,#fa,#01,#0c,#66,#01,#0c,#7e
	db #02,#0c,#aa,#01,#0c,#de,#01,#18
	db #7b,#01,#0c,#7b,#01,#18,#7b,#01
	db #18,#00,#00,#0c,#7e,#02,#06,#aa
	db #01,#06,#aa,#01,#0c,#aa,#01,#0c
	db #aa,#01,#0c,#fa,#01,#0c,#66,#01
	db #0c,#7e,#02,#0c,#aa,#01,#0c,#de
	db #01,#18,#7b,#01,#0c,#7b,#01,#18
	db #7b,#01,#18,#00,#00,#0c,#f6,#02
	db #06,#aa,#01,#06,#aa,#01,#0c,#aa
	db #01,#0c,#aa,#01,#0c,#fa,#01,#0c
	db #aa,#01,#0c,#f6,#02,#0c,#5a,#02
	db #0c,#38,#02,#06,#de,#01,#06,#de
	db #01,#0c,#de,#01,#0c,#de,#01,#0c
	db #38,#02,#0c,#de,#01,#0c,#f6,#02
	db #0c,#de,#01,#0c,#cc,#02,#06,#de
	db #01,#06,#de,#01,#0c,#de,#01,#0c
	db #de,#01,#0c,#38,#02,#0c,#de,#01
	db #0c,#cc,#02,#0c,#de,#01,#0c,#f6
	db #02,#06,#de,#01,#06,#de,#01,#0c
	db #de,#01,#0c,#de,#01,#0c,#f6,#02
	db #0c,#de,#01,#0c,#f6,#02,#0c,#de
	db #01,#0c,#f6,#02,#06,#aa,#01,#06
	db #aa,#01,#0c,#aa,#01,#0c,#aa,#01
	db #0c,#5a,#02,#0c,#aa,#01,#0c,#f6
	db #02,#0c,#fd,#00,#0c,#38,#02,#0c
	db #00,#00,#0c,#5a,#02,#0c,#00,#00
.laeaf equ $ + 7
	db #0c,#38,#02,#18,#00,#00,#ff,#0c
	db #5f,#00,#0c,#6a,#00,#0c,#59,#00
	db #0c,#5f,#00,#0c,#77,#00,#0c,#7f
	db #00,#0c,#6a,#00,#0c,#77,#00,#0c
	db #8e,#00,#0c,#9f,#00,#0c,#7f,#00
	db #0c,#8e,#00,#0c,#b3,#00,#0c,#be
	db #00,#06,#96,#00,#06,#7f,#00,#06
	db #5f,#00,#06,#00,#00,#0c,#5f,#00
	db #0c,#6a,#00,#0c,#59,#00,#0c,#5f
	db #00,#0c,#77,#00,#0c,#7f,#00,#0c
	db #6a,#00,#0c,#77,#00,#0c,#8e,#00
	db #0c,#9f,#00,#0c,#7f,#00,#0c,#8e
	db #00,#0c,#b3,#00,#0c,#be,#00,#0c
	db #00,#00,#0c,#5f,#00,#0c,#00,#00
	db #0c,#be,#00,#0c,#be,#00,#0c,#8e
	db #00,#0c,#7f,#00,#0c,#77,#00,#06
	db #77,#00,#06,#7f,#00,#0c,#8e,#00
	db #0c,#77,#00,#0c,#7f,#00,#06,#7f
	db #00,#06,#8e,#00,#0c,#96,#00,#0c
	db #7f,#00,#0c,#8e,#00,#06,#9f,#00
	db #06,#b3,#00,#24,#be,#00,#06,#77
	db #00,#06,#00,#00,#06,#77,#00,#06
	db #00,#00,#06,#77,#00,#06,#00,#00
	db #06,#77,#00,#06,#00,#00,#06,#7f
	db #00,#06,#77,#00,#24,#6a,#00,#0c
	db #7f,#00,#0c,#77,#00,#0c,#7f,#00
	db #06,#8e,#00,#06,#00,#00,#06,#9f
	db #00,#06,#b3,#00,#18,#be,#00,#0c
	db #00,#00,#0c,#be,#00,#0c,#8e,#00
	db #0c,#7f,#00,#0c,#77,#00,#06,#77
	db #00,#06,#7f,#00,#0c,#8e,#00,#0c
	db #77,#00,#0c,#7f,#00,#06,#7f,#00
	db #06,#8e,#00,#0c,#96,#00,#0c,#7f
	db #00,#0c,#8e,#00,#06,#9f,#00,#06
	db #b3,#00,#24,#be,#00,#06,#77,#00
	db #06,#00,#00,#06,#77,#00,#06,#00
	db #00,#06,#77,#00,#06,#00,#00,#0c
	db #77,#00,#06,#7f,#00,#06,#86,#00
	db #18,#7f,#00,#0c,#00,#00,#0c,#7f
	db #00,#0c,#8e,#00,#0c,#96,#00,#0c
	db #7f,#00,#06,#77,#00,#06,#7f,#00
	db #18,#8e,#00,#0c,#00,#00,#06,#77
	db #00,#06,#00,#00,#0c,#77,#00,#0c
	db #6a,#00,#0c,#77,#00,#18,#7f,#00
	db #0c,#77,#00,#0c,#7f,#00,#06,#8e
	db #00,#06,#9f,#00,#0c,#8e,#00,#0c
	db #7f,#00,#0c,#8e,#00,#30,#9f,#00
	db #06,#77,#00,#06,#00,#00,#0c,#77
	db #00,#0c,#6a,#00,#0c,#77,#00,#06
	db #7f,#00,#06,#8e,#00,#0c,#7f,#00
	db #0c,#77,#00,#0c,#7f,#00,#06,#8e
	db #00,#06,#9f,#00,#0c,#8e,#00,#0c
	db #7f,#00,#0c,#8e,#00,#30,#9f,#00
	db #06,#be,#00,#06,#00,#00,#06,#be
	db #00,#06,#00,#00,#06,#be,#00,#06
	db #00,#00,#06,#96,#00,#06,#00,#00
	db #06,#96,#00,#06,#be,#00,#24,#96
	db #00,#06,#be,#00,#06,#00,#00,#06
	db #be,#00,#06,#00,#00,#06,#be,#00
	db #06,#00,#00,#30,#8e,#00,#0c,#00
	db #00,#06,#77,#00,#06,#00,#00,#0c
	db #77,#00,#0c,#7f,#00,#06,#8e,#00
	db #06,#7f,#00,#06,#8e,#00,#06,#9f
	db #00,#24,#b3,#00,#0c,#7f,#00,#0c
	db #77,#00,#0c,#7f,#00,#0c,#8e,#00
	db #06,#9f,#00,#06,#b3,#00,#18,#be
	db #00,#0c,#00,#00,#0c,#be,#00,#0c
	db #96,#00,#0c,#8e,#00,#06,#7f,#00
	db #06,#00,#00,#06,#7f,#00,#06,#8e
	db #00,#18,#7f,#00,#0c,#00,#00,#0c
	db #7f,#00,#0c,#8e,#00,#0c,#96,#00
	db #0c,#8e,#00,#0c,#00,#00,#0c,#be
	db #00,#0c,#00,#00,#0c,#8e,#00,#18
	db #00,#00,#ff,#ff,#00,#00
;
.music_info
	db "Ole Toro (1985)(Dinamic Software)(Ignacio Bergareche)",0
	db "",0

	read "music_end.asm"
