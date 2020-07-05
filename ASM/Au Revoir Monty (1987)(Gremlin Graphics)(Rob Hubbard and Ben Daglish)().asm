; Music of Au Revoir Monty (1987)(Gremlin Graphics)(Rob Hubbard and Ben Daglish)()
; Ripped by Megachur the 30/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "AUREVOIM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 30
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #92c6

	read "music_header.asm"

; 15/02/2018 - code refactoring
;
.real_play_music
.l92c6
;
	ld a,(lffff)	; to stop music set to 1
	or a
	ret nz
	ld hl,(l9381)
	dec hl
	ld a,(l9383)
	dec a
	jr nz,l92e4
	ld a,#1a
	ld (l9385),a
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	srl a
	ld (l9381),hl
	dec hl
.l92e4
	ld (l9383),a
	ld a,(hl)
	or a
	jr z,l92ed
	sub #8a
.l92ed
	ld hl,l9387
	ld e,a
	ld d,#00
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	exx
	ld hl,(l937f)
	dec hl
	ld a,(l9384)
	dec a
	jr nz,l9312
	ld a,#1a
	ld (l9386),a
	inc hl
	inc hl
	inc hl
	ld (l937f),hl
	ld a,(hl)
	srl a
	dec hl
.l9312
	ld (l9384),a
	ld a,(hl)
	inc a
	jr nz,l9330
;
.real_init_music	;l9319
;
	ld hl,l3ab9
	ld (l937f),hl
	ld hl,l3c0e
	ld (l9381),hl
	ld a,#01
	ld (l9383),a
	ld (l9384),a
	jp l92c6
.l9330
	sub #96
	dec a
	ld hl,l9387
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld c,#07
	ld a,#38	; (l9250) modified by Megachur
	call send_data_to_ay	;l9231
	ld c,#04
	ld a,e
	call send_data_to_ay	;l9231
	inc c
	ld a,d
	call send_data_to_ay	;l9231
	exx
	ld c,#02
	ld a,e
	call send_data_to_ay	;l9231
	inc c
	ld a,d
	call send_data_to_ay	;l9231
	ld c,#09
	ld a,(l9385)
	dec a
	jr z,l9368
	ld (l9385),a
.l9368
	rra
	call send_data_to_ay	;l9231
	inc c
	ld a,(l9386)
	dec a
	jr z,l9376
	ld (l9386),a
.l9376
	rra
	call send_data_to_ay	;l9231
	ld c,#0e
	jp send_data_to_ay	;l9231

.l937f
	dw l3ab9
.l9381
	dw l3c0e
.l9383
	db #01
.l9384
	db #01
.l9385
	db #0f
.l9386
	db #0f
.l9387
	db #00,#00
	dw #04fc,#04b4,#0470,#0431
	dw #03f4,#03bc,#0386,#0353
	dw #0324,#02f6,#02cc,#02a4
	dw #027e,#025a,#0238,#0218
	dw #01fa,#01de,#01c3,#01aa
	dw #0192,#017b,#0166,#0152
	dw #013f,#012d,#011c,#010c
	dw #00fd,#00ef,#00e1,#00d5
	dw #00c9,#00be,#00b3,#00a9
	dw #009f,#0096,#008e,#0086
	dw #007f,#0077,#0071,#006a
	dw #0064,#005f,#0059,#0054
	dw #0050,#004b,#0047,#0043
	dw #003f,#003c,#0038,#0035
	dw #0032,#002f,#002d,#002a
	dw #0028,#0026,#0024,#0022
.l3ab9
	db #02,#b2,#0c,#b7,#0c,#b9,#0c,#ba
	db #06,#b9,#12,#b7,#0c,#b9,#06,#ba
	db #12,#b5,#0c,#ba,#0c,#bc,#0c,#be
	db #06,#bc,#12,#ba,#24,#be,#0c,#be
	db #0c,#c2,#0c,#be,#06,#bc,#12,#be
	db #30,#be,#0c,#c2,#0c,#be,#06,#bc
	db #12,#bc,#0c,#ba,#06,#b9,#12,#b2
	db #0c,#b7,#0c,#b9,#0c,#ba,#06,#b9
	db #12,#b7,#0c,#b9,#06,#ba,#12,#b5
	db #0c,#ba,#0c,#bc,#0c,#be,#06,#bc
	db #12,#ba,#24,#be,#0c,#be,#0c,#c2
	db #0c,#be,#06,#bc,#12,#be,#0c,#c2
	db #06,#c3,#1e,#c5,#18,#c5,#18,#c3
	db #0c,#c3,#18,#c3,#18,#c6,#0c,#c3
	db #0c,#c8,#0c,#c6,#18,#c3,#18,#c1
	db #0c,#c1,#3c,#c1,#18,#c0,#0c,#c0
	db #78,#c0,#0c,#c1,#0c,#c2,#0c,#c3
	db #24,#c6,#0c,#c3,#0c,#c8,#0c,#c6
	db #18,#cb,#18,#ca,#0c,#ca,#3c,#ca
	db #18,#c8,#0c,#c8,#90,#c8,#06,#c6
	db #06,#c3,#06,#c1,#06,#c3,#18,#c6
	db #0c,#c3,#0c,#c8,#0c,#c6,#18,#c3
	db #18,#c1,#0c,#c1,#3c,#c1,#18,#c0
	db #0c,#c0,#78,#c0,#0c,#c1,#0c,#c2
	db #0c,#c3,#24,#c6,#0c,#c3,#0c,#c8
	db #0c,#c6,#18,#cb,#18,#ca,#0c,#ca
	db #3c,#ca,#18,#c8,#0c,#c8,#48,#ca
	db #60,#b2,#0c,#b7,#0c,#b9,#0c,#ba
	db #06,#b9,#12,#b7,#0c,#b9,#06,#ba
	db #12,#b5,#0c,#ba,#0c,#bc,#0c,#be
	db #06,#bc,#12,#ba,#24,#be,#0c,#be
	db #0c,#c2,#0c,#be,#06,#bc,#12,#be
	db #30,#be,#0c,#c2,#0c,#be,#06,#bc
	db #12,#bc,#0c,#ba,#06,#b9,#12,#b2
	db #0c,#b7,#0c,#b9,#0c,#ba,#06,#b9
	db #12,#b7,#0c,#b9,#06,#ba,#12,#b5
	db #0c,#ba,#0c,#bc,#0c,#be,#06,#bc
	db #12,#ba,#24,#be,#0c,#be,#0c,#c2
	db #0c,#be,#06,#bc,#12,#be,#0c,#c2
	db #06,#c3,#1e,#c5,#18,#c5,#18,#c3
	db #0c,#c3,#24,#c2,#18,#c2,#18,#c1
	db #0c,#c1,#18,#c1,#18,#c1,#18,#c0
	db #0c,#c0,#18,#be,#6c
.l3c0e
	db #ff,#9f,#0c,#9f,#06,#9f,#06,#a9
	db #06,#ab,#06,#a9,#0c,#9f,#0c,#9f
	db #06,#9f,#06,#a9,#06,#ab,#06,#a9
	db #0c,#96,#0c,#96,#06,#96,#06,#a0
	db #06,#a2,#06,#a0,#0c,#96,#0c,#96
	db #06,#96,#06,#a0,#06,#a2,#06,#a0
	db #0c,#9a,#0c,#9a,#06,#9a,#06,#a4
	db #06,#a6,#06,#a4,#0c,#9a,#0c,#9a
	db #06,#9a,#06,#a4,#06,#a6,#06,#a4
	db #0c,#9a,#0c,#9a,#06,#9a,#06,#a4
	db #06,#a6,#06,#a4,#0c,#9a,#0c,#9a
	db #06,#9a,#06,#a4,#06,#a6,#06,#a4
	db #0c,#9f,#0c,#9f,#06,#9f,#06,#a9
	db #06,#ab,#06,#a9,#0c,#9f,#0c,#9f
	db #06,#9f,#06,#a9,#06,#ab,#06,#a9
	db #0c,#96,#0c,#96,#06,#96,#06,#a0
	db #06,#a2,#06,#a0,#0c,#96,#0c,#96
	db #06,#96,#06,#a0,#06,#a2,#06,#a0
	db #0c,#9a,#0c,#9a,#06,#9a,#06,#a4
	db #06,#a6,#06,#a4,#0c,#9a,#0c,#9a
	db #06,#9a,#06,#a4,#06,#a6,#06,#a4
	db #0c,#9d,#06,#9d,#06,#9d,#06,#9d
	db #06,#9b,#06,#98,#12,#9c,#06,#a4
	db #06,#9c,#0c,#9d,#0c,#9e,#0c,#9b
	db #0c,#9b,#06,#9b,#06,#a5,#06,#a7
	db #06,#a5,#0c,#9b,#0c,#9b,#06,#9b
	db #06,#a5,#06,#a7,#06,#a5,#0c,#96
	db #0c,#96,#06,#96,#06,#a0,#06,#a2
	db #06,#a0,#0c,#96,#0c,#96,#06,#96
	db #06,#a0,#06,#a2,#06,#a0,#0c,#98
	db #0c,#98,#06,#98,#06,#a2,#06,#a4
	db #06,#a2,#0c,#98,#0c,#98,#06,#98
	db #06,#a2,#06,#a4,#06,#a2,#0c,#98
	db #0c,#98,#06,#98,#06,#a2,#06,#a4
	db #06,#a2,#0c,#98,#0c,#98,#06,#98
	db #06,#a2,#06,#a4,#06,#a2,#0c,#9b
	db #0c,#9b,#06,#9b,#06,#a5,#06,#a7
	db #06,#a5,#0c,#9b,#0c,#9b,#06,#9b
	db #06,#a5,#06,#a7,#06,#a5,#0c,#96
	db #0c,#96,#06,#96,#06,#a0,#06,#a2
	db #06,#a0,#0c,#96,#0c,#96,#06,#96
	db #06,#a0,#06,#a2,#06,#a0,#0c,#98
	db #0c,#98,#06,#98,#06,#a2,#06,#a4
	db #06,#a2,#0c,#98,#0c,#98,#06,#98
	db #06,#a2,#06,#a4,#06,#a2,#0c,#98
	db #0c,#98,#06,#98,#06,#a2,#06,#a4
	db #06,#a2,#0c,#98,#0c,#98,#06,#98
	db #06,#a2,#06,#a4,#06,#a2,#0c,#9b
	db #0c,#9b,#06,#9b,#06,#a5,#06,#a7
	db #06,#a5,#0c,#9b,#0c,#9b,#06,#9b
	db #06,#a5,#06,#a7,#06,#a5,#0c,#96
	db #0c,#96,#06,#96,#06,#a0,#06,#a2
	db #06,#a0,#0c,#96,#0c,#96,#06,#96
	db #06,#a0,#06,#a2,#06,#a0,#0c,#98
	db #0c,#98,#06,#98,#06,#a2,#06,#a4
	db #06,#a2,#0c,#98,#0c,#98,#06,#98
	db #06,#a2,#06,#a4,#06,#a2,#0c,#98
	db #0c,#98,#06,#98,#06,#a2,#06,#a4
	db #06,#a2,#0c,#98,#0c,#98,#06,#98
	db #06,#a2,#06,#a4,#06,#a2,#0c,#9b
	db #0c,#9b,#06,#9b,#06,#a5,#06,#a7
	db #06,#a5,#0c,#9b,#0c,#9b,#06,#9b
	db #06,#a5,#06,#a7,#06,#a5,#0c,#96
	db #0c,#96,#06,#96,#06,#a0,#06,#a2
	db #06,#a0,#0c,#96,#0c,#96,#06,#96
	db #06,#a0,#06,#a2,#06,#a0,#0c,#9d
	db #06,#9d,#06,#9d,#06,#9d,#06,#9b
	db #06,#98,#12,#9c,#06,#a4,#06,#9c
	db #0c,#9d,#0c,#9e,#0c,#9a,#0c,#9a
	db #06,#9a,#06,#a4,#06,#a6,#06,#a4
	db #0c,#9a,#0c,#9a,#06,#9a,#06,#a4
	db #06,#a6,#06,#a4,#0c,#9f,#0c,#9f
	db #06,#9f,#06,#a9,#06,#ab,#06,#a9
	db #0c,#9f,#0c,#9f,#06,#9f,#06,#a9
	db #06,#ab,#06,#a9,#0c,#96,#0c,#96
	db #06,#96,#06,#a0,#06,#a2,#06,#a0
	db #0c,#96,#0c,#96,#06,#96,#06,#a0
	db #06,#a2,#06,#a0,#0c,#9a,#0c,#9a
	db #06,#9a,#06,#a4,#06,#a6,#06,#a4
	db #0c,#9a,#0c,#9a,#06,#9a,#06,#a4
	db #06,#a6,#06,#a4,#0c,#9a,#0c,#9a
	db #06,#9a,#06,#a4,#06,#a6,#06,#a4
	db #0c,#9a,#0c,#9a,#06,#9a,#06,#a4
	db #06,#a6,#06,#a4,#0c,#9f,#0c,#9f
	db #06,#9f,#06,#a9,#06,#ab,#06,#a9
	db #0c,#9f,#0c,#9f,#06,#9f,#06,#a9
	db #06,#ab,#06,#a9,#0c,#96,#0c,#96
	db #06,#96,#06,#a0,#06,#a2,#06,#a0
	db #0c,#96,#0c,#96,#06,#96,#06,#a0
	db #06,#a2,#06,#a0,#0c,#9a,#0c,#9a
	db #06,#9a,#06,#a4,#06,#a6,#06,#a4
	db #0c,#9a,#0c,#9a,#06,#9a,#06,#a4
	db #06,#a6,#06,#a4,#0c,#00,#0c,#9d
	db #18,#9d,#18,#98,#0c,#98,#24,#9a
	db #18,#9a,#18,#a2,#0c,#a2,#18,#9d
	db #18,#9d,#18,#a1,#0c,#a1,#18,#a6
	db #0c,#9a,#0c,#9a,#06,#9a,#06,#a4
	db #06,#a6,#06,#a4,#0c,#9a,#0c,#9a
	db #06,#9a,#06,#a4,#06,#a6,#06,#a4
	db #0c,#00
;
.stop_music
;
	ld a,&0d
	ld c,&00
.next_ay_register_to_reset
	call send_data_to_ay
	dec a
	jp p,next_ay_register_to_reset
	ld a,&07
	ld c,&3f
;
.send_data_to_ay	; l9231 Modified by Megachur
;
;	push bc
;	push de
;	ld b,#f4
;	ld de,#c000
;	out (c),c
;	ld b,#f6
;	out (c),d
;	out (c),e
;	ld b,#f4
;	out (c),a
;	ld a,#80
;	ld b,#f6
;	out (c),a
;	out (c),e
;	pop de
;	pop bc

	; di		; disable interrupt
	push af
	push bc
	ld b,c
	ld c,a
	ld a,b

	ld b,#f4	; PPI Port A Data
	out (c),a	; Send register number to PPI Port A Data

	ld b,#f6	; PPI Port C
	in a,(c)	; read PPI Port C value
	or #c0		; &11000000 - set PSG fonction selection value to "Select PSG register"
	out (c),a	; send value to PPI Port C
	and #3f		; &00111111 - set PSG fonction selection value to "Inactive"
	out (c),a	; send value to PPI Port C

	ld b,#f4	; PPI Port A Data
	out (c),c	; send data to PPI Port A 

	ld b,#f6	; PPI Port C
	ld c,a		; c = "Inactive" = a
	or #80		; &10000000 - set PSG fonction selection value to "Write to selected PSG register"
	out (c),a	; send value to PPI Port C
	out (c),c	; send "Inactive" to PPI Port C

	pop bc
	pop af
	; ei		; enable interrupt
	ret
;
.init_music		; added by Megachur
;
	ld hl,lffff
	ld (hl),#00
	jp real_init_music
;
;
.play_music	; 33f1
;
	di
	push af
	push bc
	push de
	push hl
	exx
	push hl
	push de
	push bc
	exx

.tempo_play equ $ +1		; Modified by Megachur
	ld a,0
	xor 1
	ld (tempo_play),a
	call z,l92c6

	exx
	pop bc
	pop de
	pop hl
	exx
	pop hl
	pop de
	pop bc
	pop af
	ei
	ret

;.l9250
;	db #38
lffff
	db #00	; set to 1 for play music !
;
.music_info
	db "Au Revoir Monty (1987)(Gremlin Graphics)(Rob Hubbard and Ben Daglish)",0
	db "",0

	read "music_end.asm"
