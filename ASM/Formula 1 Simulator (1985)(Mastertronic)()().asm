; Music of Formula 1 Simulator (1985)(Mastertronic)()()
; Ripped by Megachur the 09/03/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "FORMUL1S.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #35ae

	read "music_header.asm"

	db #00,#01,#00
;
.init_music
.l35b1
;
	call l35d9
	call l35ec
	ret
.l35b8
	push af
	push bc
	ld b,#f4
	out (c),a
	ld a,#c0
	ld b,#f6
	out (c),a
	xor a
	out (c),a
	pop bc
	push bc
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
.l35d9
	ld b,#0e
.l35db
	ld a,b
	dec a
	ld c,#00
	call l35b8
	djnz l35db
	ld a,#07
	ld c,#b8
	call l35b8
	ret
.l35ec
	ld hl,l37f3
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l375e),de
	ld (l3764),hl
	ld hl,l380b
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l3760),de
	ld (l3766),hl
	ld hl,l3823
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l3762),de
	ld (l3768),hl
	call l3657
	call l36a3
	call l36f0
	ret
;
.play_music
;
	ld a,(l376a)
	dec a
	ld (l376a),a
	push af
	call z,l3657
	pop af
	dec a
	ld c,#00
	call z,l369d
	ld a,(l376b)
	dec a
	ld (l376b),a
	push af
	call z,l36a3
	pop af
	dec a
	ld c,#00
	call z,l36ea
	ld a,(l376c)
	dec a
	ld (l376c),a
	push af
	call z,l36f0
	pop af
	ld c,#00
	dec a
	ret nz
	jp l3741
.l3657
	ld hl,(l375e)
.l365a
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld a,b
	cp #ff
	jr nz,l367a
	ld hl,(l3764)
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr nz,l3670
	ld hl,l37f3
.l3670
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l3764),hl
	ex de,hl
	jr l365a
.l367a
	ld (l375e),hl
	ld a,c
	ld (l376a),a
	ld a,b
	cp #01
	ld c,#00
	jp z,l369d
	ld c,b
	ld b,#00
	ld hl,l3755
	add hl,bc
	xor a
	ld c,(hl)
	inc hl
	call l35b8
	inc a
	ld c,(hl)
	call l35b8
	ld c,#0a
.l369d
	ld a,#08
	call l35b8
	ret
.l36a3
	ld hl,(l3760)
.l36a6
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld a,b
	cp #ff
	jr nz,l36c6
	ld hl,(l3766)
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr nz,l36bc
	ld hl,l380b
.l36bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l3766),hl
	ex de,hl
	jr l36a6
.l36c6
	ld (l3760),hl
	ld a,c
	ld (l376b),a
	ld a,b
	cp #01
	ld c,#00
	jp z,l36ea
	ld c,b
	ld b,#00
	ld hl,l3767
	add hl,bc
	ld a,#02
	ld c,(hl)
	inc hl
	call l35b8
	inc a
	ld c,(hl)
	call l35b8
	ld c,#0a
.l36ea
	ld a,#09
	call l35b8
	ret
.l36f0
	ld hl,(l3762)
.l36f3
	ld b,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld a,b
	cp #ff
	jr nz,l3713
	ld hl,(l3768)
	inc hl
	ld a,(hl)
	dec hl
	cp #ff
	jr nz,l3709
	ld hl,l3823	; reset music
.l3709
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l3768),hl
	ex de,hl
	jr l36f3
.l3713
	ld (l3762),hl
	ld a,c
	ld (l376c),a
	ld a,b
	or a
	jr z,l3747
	cp #01
	ld c,#00
	jp z,l3741
	ld c,b
	ld b,#00
	ld hl,l3767
	add hl,bc
	ld a,#04
	ld c,(hl)
	inc hl
	call l35b8
	inc a
	ld c,(hl)
	call l35b8
	ld c,#b8
.l373a
	ld a,#07
	call l35b8
	ld c,#0b
.l3741
	ld a,#0a
	call l35b8
	ret
.l3747
	ld a,#06
	ld c,#1e
	call l35b8
	ld c,#00
	ld a,#04
	call l35b8
.l3755
	inc a
	call l35b8
	ld c,#99
	jp l373a
.l3764 equ $ + 6
.l3762 equ $ + 4
.l3760 equ $ + 2
.l375e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l376c equ $ + 6
.l376b equ $ + 5
.l376a equ $ + 4
.l3768 equ $ + 2
.l3767 equ $ + 1
.l3766
	db #00,#00,#00,#00,#00,#00,#00
	dw #06a7,#0647,#05ed,#0598
	dw #0547,#04fc,#04b4,#0470
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
	dw #002a,#0028,#0026
.l37f3
	dw l3849,l3849,l389a,l38b1
	dw l389a,l38ba,l3907,l3849
	dw l39d0,l39d0,l3a21,#ffff
.l380b
	dw l3864,l3864,l38c3,l38da
	dw l38c3,l38e3,l3944,l3864
	dw l39eb,l39eb,l3b24,#ffff
.l3823
	dw l387f,l387f,l38ec,l38ec
	dw l38ec,l38ec,l3981,l387f
	dw l3a06,l3a06,l3a06,l3a06
	dw l3a06,l3a06,l3a06,l3a06
	dw l3a06,l3a06,#ffff
.l3849
	db #01,#18,#7a,#0c,#5c,#0c,#5e,#18
	db #01,#0c,#56,#0c,#58,#18,#7a,#0c
	db #5e,#0c,#5e,#0c,#5e,#0c,#5c,#0c
.l3864 equ $ + 3
	db #58,#0c,#ff,#01,#18,#70,#0c,#56
	db #0c,#58,#18,#01,#0c,#50,#0c,#52
	db #18,#70,#0c,#58,#0c,#58,#0c,#58
.l387f equ $ + 6
	db #0c,#54,#0c,#52,#0c,#ff,#32,#18
	db #00,#0c,#44,#0c,#46,#18,#00,#0c
	db #2e,#0c,#32,#18,#00,#0c,#46,#0c
	db #46,#0c,#46,#0c,#00,#0c,#40,#0c
.l389a equ $ + 1
	db #ff,#5e,#60,#5e,#30,#01,#0c,#5c
	db #0c,#5e,#0c,#62,#0c,#58,#0c,#58
	db #0c,#58,#18,#58,#18,#01,#18,#ff
.l38b1
	db #01,#18,#58,#18,#58,#18,#01,#18
.l38ba equ $ + 1
	db #ff,#01,#18,#58,#18,#58,#18,#4a
.l38c3 equ $ + 2
	db #18,#ff,#58,#60,#58,#30,#01,#0c
	db #54,#0c,#58,#0c,#5c,#0c,#4a,#0c
	db #4a,#0c,#4a,#18,#4a,#18,#01,#18
.l38da equ $ + 1
	db #ff,#01,#18,#4a,#18,#4a,#18,#01
.l38e3 equ $ + 2
	db #18,#ff,#01,#18,#4a,#18,#4a,#18
.l38ec equ $ + 3
	db #40,#18,#ff,#32,#18,#00,#0c,#44
	db #0c,#46,#18,#00,#0c,#2e,#0c,#32
	db #18,#00,#0c,#46,#0c,#46,#0c,#46
.l3907 equ $ + 6
	db #0c,#00,#0c,#40,#0c,#ff,#5c,#30
	db #01,#0c,#58,#0c,#5c,#0c,#58,#0c
	db #58,#30,#01,#0c,#5c,#0c,#5e,#0c
	db #66,#0c,#66,#30,#01,#0c,#62,#0c
	db #66,#0c,#62,#0c,#62,#30,#01,#0c
	db #5e,#0c,#5e,#0c,#5e,#0c,#5e,#0c
	db #62,#0c,#62,#18,#62,#18,#01,#18
	db #01,#18,#62,#18,#62,#18,#7a,#0c
.l3944 equ $ + 3
	db #7a,#0c,#ff,#54,#30,#01,#0c,#50
	db #0c,#54,#0c,#50,#0c,#50,#30,#01
	db #0c,#54,#0c,#58,#0c,#5e,#0c,#5e
	db #30,#01,#0c,#5c,#0c,#5e,#0c,#5c
	db #0c,#5c,#30,#01,#0c,#54,#0c,#54
	db #0c,#54,#0c,#54,#0c,#58,#0c,#58
	db #18,#58,#18,#01,#18,#01,#18,#58
	db #18,#58,#18,#70,#0c,#70,#0c,#ff
.l3981
	db #38,#18,#00,#0c,#44,#0c,#46,#18
	db #00,#0c,#36,#0c,#38,#18,#00,#0c
	db #46,#0c,#46,#0c,#46,#0c,#00,#0c
	db #40,#0c,#3c,#18,#00,#0c,#4e,#0c
	db #50,#18,#00,#0c,#38,#0c,#3c,#18
	db #00,#0c,#50,#0c,#50,#0c,#50,#0c
	db #00,#0c,#4a,#0c,#32,#18,#00,#0c
	db #44,#0c,#46,#18,#00,#0c,#2e,#0c
	db #32,#18,#00,#0c,#46,#0c,#46,#0c
.l39d0 equ $ + 7
	db #46,#0c,#00,#0c,#40,#0c,#ff,#01
	db #18,#74,#0c,#56,#0c,#58,#18,#01
	db #0c,#50,#0c,#52,#18,#74,#0c,#58
	db #0c,#58,#0c,#58,#0c,#56,#0c,#52
.l39eb equ $ + 2
	db #0c,#ff,#01,#18,#6a,#0c,#50,#0c
	db #52,#18,#01,#0c,#4a,#0c,#4c,#18
	db #6a,#0c,#52,#0c,#52,#0c,#52,#0c
.l3a06 equ $ + 5
	db #4e,#0c,#4c,#0c,#ff,#2c,#18,#00
	db #0c,#3e,#0c,#40,#18,#00,#0c,#28
	db #0c,#2c,#18,#00,#0c,#40,#0c,#40
	db #0c,#40,#0c,#00,#0c,#3a,#0c,#ff
.l3a21
	db #01,#0c,#5c,#06,#5c,#06,#6e,#0c
	db #5c,#06,#5c,#06,#6e,#0c,#6e,#18
	db #6a,#0c,#6a,#30,#66,#0c,#66,#18
	db #64,#0c,#64,#30,#01,#0c,#60,#06
	db #60,#06,#60,#0c,#60,#0c,#60,#0c
	db #64,#0c,#64,#18,#64,#18,#01,#18
	db #01,#0c,#5c,#06,#5c,#06,#6e,#0c
	db #5c,#06,#5c,#06,#6e,#0c,#6e,#18
	db #6a,#0c,#6a,#30,#78,#0c,#78,#18
	db #74,#0c,#74,#30,#01,#0c,#74,#06
	db #74,#06,#74,#0c,#74,#0c,#74,#0c
	db #74,#0c,#74,#18,#74,#18,#01,#18
	db #70,#0c,#70,#0c,#70,#0c,#70,#06
	db #70,#06,#70,#0c,#70,#06,#70,#06
	db #70,#0c,#70,#0c,#70,#0c,#70,#0c
	db #70,#0c,#70,#06,#70,#06,#70,#0c
	db #70,#06,#70,#06,#70,#0c,#74,#0c
	db #74,#0c,#74,#0c,#74,#0c,#74,#06
	db #74,#06,#74,#0c,#74,#06,#74,#06
	db #74,#0c,#74,#0c,#74,#0c,#74,#0c
	db #74,#0c,#74,#06,#74,#06,#74,#0c
	db #74,#06,#74,#06,#74,#0c,#7a,#0c
	db #7a,#0c,#7a,#0c,#7a,#0c,#7a,#06
	db #7a,#06,#7a,#0c,#7a,#06,#7a,#06
	db #7a,#0c,#78,#0c,#78,#0c,#78,#0c
	db #78,#0c,#78,#06,#78,#06,#78,#0c
	db #78,#06,#78,#06,#78,#0c,#7e,#0c
	db #7e,#0c,#7e,#0c,#7e,#0c,#7e,#06
	db #7e,#06,#7e,#0c,#7e,#06,#7e,#06
	db #7e,#0c,#82,#0c,#82,#0c,#82,#0c
	db #82,#0c,#82,#06,#82,#06,#82,#0c
	db #82,#06,#82,#06,#82,#06,#82,#06
.l3b24 equ $ + 3
	db #82,#0c,#ff,#01,#0c,#52,#06,#52
	db #06,#66,#0c,#52,#06,#52,#06,#66
	db #0c,#66,#18,#64,#0c,#64,#30,#60
	db #0c,#60,#18,#5c,#0c,#5c,#30,#01
	db #0c,#58,#06,#58,#06,#58,#0c,#58
	db #0c,#58,#0c,#5c,#0c,#5c,#18,#5c
	db #18,#01,#18,#01,#0c,#52,#06,#52
	db #06,#66,#0c,#52,#06,#52,#06,#66
	db #0c,#66,#18,#64,#0c,#64,#30,#70
	db #0c,#70,#18,#6e,#0c,#6e,#30,#01
	db #0c,#66,#06,#66,#06,#66,#0c,#66
	db #0c,#66,#0c,#6a,#0c,#6a,#18,#6a
	db #18,#01,#18,#6a,#0c,#6a,#0c,#6a
	db #0c,#6a,#06,#6a,#06,#6a,#0c,#6a
	db #06,#6a,#06,#6a,#0c,#66,#0c,#66
	db #0c,#66,#0c,#66,#0c,#66,#06,#66
	db #06,#66,#0c,#66,#06,#66,#06,#66
	db #0c,#66,#0c,#66,#0c,#66,#0c,#66
	db #0c,#66,#06,#66,#06,#66,#0c,#66
	db #06,#66,#06,#66,#0c,#6a,#0c,#6a
	db #0c,#6a,#0c,#6a,#0c,#6a,#06,#6a
	db #06,#6a,#0c,#6a,#06,#6a,#06,#6a
	db #0c,#70,#0c,#70,#0c,#70,#0c,#70
	db #0c,#70,#06,#70,#06,#70,#0c,#70
	db #06,#70,#06,#70,#0c,#70,#0c,#70
	db #0c,#70,#0c,#70,#0c,#70,#06,#70
	db #06,#70,#0c,#70,#06,#70,#06,#70
	db #0c,#70,#0c,#70,#0c,#70,#0c,#70
	db #0c,#70,#06,#70,#06,#70,#0c,#70
	db #06,#70,#06,#70,#0c,#74,#0c,#74
	db #0c,#74,#0c,#74,#0c,#74,#06,#74
	db #06,#74,#0c,#74,#06,#74,#06,#74
	db #06,#74,#06,#74,#0c,#ff
	db #00,#00,#00,#00,#00,#00,#30,#8d
	db #30,#8e,#30,#8f,#00,#ff
;
; #187e
; call #35b1	; init music
;
; #1c38
; call #3620	; play music
;
.music_info
	db "Formula 1 Simulator (1985)(Mastertronic)()",0
	db "",0

	read "music_end.asm"
