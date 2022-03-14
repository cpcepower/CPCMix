; Music of Ninja Grannies (1989)(Clockwize Software)()()
; Ripped by Megachur the 14/04/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "NINJAGRA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #9d81
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

;
.real_init_music
;
	push hl
	sub a
	ld (la070),a
	ld hl,la034
	call l11ad
	ld ix,la050
	pop hl
	ld (la071),hl
	ld hl,#0001
	ld (la073),hl
	ld b,#04
.l9d9c
	ld (ix+#00),#00
	ld (ix+#01),#00
	ld (ix+#02),#00
	ld (ix+#03),#00
	inc ix
	inc ix
	inc ix
	inc ix
	djnz l9d9c
	ld a,#01
	ld (la078),a
	ld (la070),a
	ret
.l9dbf
	ld hl,(la073)
	dec hl
	ld (la073),hl
	ld a,l
	or h
	cp #00
	ret nz
	ld hl,(la071)
.l9dce
	ld a,(hl)
	cp #ff
	jr z,l9de3
	bit 4,a
	jr nz,l9e3b
	bit 7,a
	jr nz,l9e28
	bit 5,a
	jp nz,l9e5d
	jp l9de9
;
.stop_music
.l9de3
;
	ld a,#00	; set stop music
	ld (la070),a
	ret
.l9de9
	ld a,(hl)
	ld (la07a),a
	call l9efe
	ld a,#0f
	ld (ix+#02),a
	ld a,#01
	ld (ix+#00),a
	inc hl
	push hl
	ld a,(hl)
	add a
	sub #40
	ld hl,la07b
	ld e,a
	ld d,#00
	add hl,de
	ld a,(la07a)
	ld e,a
	add a
	ld (la07a),a
	ld c,(hl)
	call l11bd
	ld a,(la07a)
	inc a
	inc hl
	ld c,(hl)
	call l11bd
	ld a,e
	add #08
	ld c,#0f
	call l11bd
	pop hl
	jp l9e3b
.l9e28
	ld a,(hl)
	res 7,a
	call l9efe
	ld a,#02
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
	ld (ix+#03),a
.l9e3b
	inc hl
	ld a,#00
	ld (la074),a
	ld a,(hl)
	ld (la073),a
	bit 7,a
	jr z,l9e53
	res 7,a
	ld (la074),a
	inc hl
	ld a,(hl)
	ld (la073),a
.l9e53
	inc hl
	ld (la071),hl
	cp #00
	ret nz
	jp l9dce
.l9e5d
	cp #21
	jr z,l9e6f
	inc hl
	ld (la075),hl
	sub a
	ld (la077),a
	ld (la071),hl
	jp l9dce
.l9e6f
	ld a,(la077)
	cp #00
	jr z,l9e8f
	dec a
	ld (la077),a
	cp #00
	jr z,l9e87
	ld hl,(la075)
	ld (la071),hl
	jp l9dce
.l9e87
	inc hl
	inc hl
	ld (la071),hl
	jp l9dce
.l9e8f
	inc hl
	ld a,(hl)
	ld (la077),a
	ld hl,(la075)
	ld (la071),hl
	jp l9dce
.l9e9d
	ld ix,la050
	ld a,#00
	ld (la079),a
.l9ea6
	ld a,(ix+#00)
	cp #02
	jp z,l9ec2
.l9eae
	inc ix
	inc ix
	inc ix
	inc ix
	ld a,(la079)
	inc a
	ld (la079),a
	cp #04
	jr nz,l9ea6
	ret
.l9ec2
	ld a,(ix+#01)
	dec a
	ld (ix+#01),a
	cp #00
	jp nz,l9eae
	ld a,(ix+#03)
	ld (ix+#01),a
	ld c,(ix+#02)
	dec c
	ld (ix+#02),c
	ld a,c
	cp #00
	jp z,l9eec
	ld a,(la079)
	add #08
	call l11bd
	jp l9eae
.l9eec
	ld a,(la079)
	add #08
	ld c,#00
	call l11bd
	ld a,#00
	ld (ix+#00),a
	jp l9eae
.l9efe
	push af
	push hl
	push de
	ld de,la050
	add a
	add a
	ld l,a
	ld h,#00
	add hl,de
	push hl
	pop ix
	pop de
	pop hl
	pop af
	ret
;
.play_music_music_interrupt
.l9f11
;
; play music interrupt
	di
	push af
	push bc
	push de
	push hl
	push ix
	ld a,(la078)
	dec a
	ld (la078),a
	cp #00
	jr nz,l9f35
	ld a,#05
	ld (la078),a
	ld a,(la070)
	cp #00
	jr z,l9f35
	call l9dbf
	call l9e9d
.l9f35
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	ret
.l9f3d	; soundfx ?
	ld a,#06
	ld c,#1f
	call l11bd
	ld a,#0c
	ld c,#03
	call l11bd
	ld a,#0d
	ld c,#01
	call l11bd
	ret
	db #00,#49,#00,#01,#44,#08,#80,#02
	db #00,#81,#02,#04,#00,#47,#00,#01
	db #42,#10,#80,#02,#00,#81,#02,#08
	db #00,#44,#00,#01,#3f,#10,#80,#04
	db #00,#81,#04,#08,#00,#42,#00,#01
	db #3d,#10,#80,#04,#00,#81,#04,#08
	db #00,#31,#00,#01,#3d,#20,#80,#06
	db #00,#81,#06,#7f,#ff,#00,#31,#04
	db #80,#01,#03,#00,#34,#04,#80,#01
	db #03,#00,#36,#04,#80,#01,#03,#00
	db #34,#04,#80,#01,#03,#00,#36,#04
	db #80,#01,#03,#00,#38,#04,#80,#01
	db #03,#00,#3b,#04,#80,#01,#03,#00
	db #38,#04,#80,#01,#03,#00,#3b,#00
	db #01,#4c,#04,#81,#01,#00,#80,#01
	db #03,#00,#3d,#00,#01,#49,#04,#81
	db #01,#00,#80,#01,#03,#00,#40,#00
	db #01,#47,#04,#81,#01,#00,#80,#01
	db #03,#00,#3d,#00,#01,#49,#10,#81
	db #06,#00,#80,#06,#7f,#ff,#20,#00
	db #44,#00,#01,#49,#06,#80,#02,#00
	db #81,#01,#03,#21,#03,#20,#00,#42
	db #00,#01,#47,#0c,#80,#03,#00,#81
	db #03,#06,#21,#01,#20,#00,#3f,#00
	db #01,#44,#0c,#80,#03,#00,#81,#03
	db #06,#21,#01,#00,#42,#00,#01,#47
	db #1c,#80,#06,#00,#81,#06,#7f,#ff
	db #00,#02,#01,#00,#08,#01,#00,#08
.la034 equ $ + 1
	db #01,#00,#00,#00,#00,#00,#00,#0a
	db #1c,#00,#00,#10,#00,#01,#01,#00
	db #00,#00,#00,#00,#00,#00,#3f,#00
.la050 equ $ + 5
	db #00,#00,#00,#00,#00,#01,#01,#0f
	db #01,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.la071 equ $ + 6
.music_end equ $ + 5
.la070 equ $ + 5
	db #00,#00,#00,#00,#00,#01,#ab,#9f
.la07a equ $ + 7
.la079 equ $ + 6
.la078 equ $ + 5
.la077 equ $ + 4
.la075 equ $ + 2
.la074 equ $ + 1
.la073
	db #04,#00,#10,#a0,#00,#03,#04,#00
.la07b
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00ad,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010

.l11ad
	xor a
.l11ae
	ld c,(hl)
	push af
	push hl
	call l11bd
	pop hl
	pop af
	inc hl
	inc a
	cp #0e
	ret z
	jr l11ae
.l11bd
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
;
; #0357
;	ld hl,#9ff1	; begin game
;	call #9d81
;	ret
;
; #10b7
;	ld hl,#9f53
;	call #9d81
;	ret
;
; #9b0a
;	ld hl,#9f90
;	call #9d81
;	ret
;
.init_music		; added by Megachur
;
	ld hl,#9ff1
	or a
	jr z,jp_real_init_music 
	ld hl,#9f53
	dec a
	jr z,jp_real_init_music 
	ld hl,#9f90
jp_real_init_music 
	jp real_init_music
;
.play_music		; added by Megachur
;
	call play_music_music_interrupt
	call play_music_music_interrupt
	call play_music_music_interrupt
	call play_music_music_interrupt
	call play_music_music_interrupt
	jp play_music_music_interrupt
;
.music_info
	db "Ninja Grannies (1989)(Clockwize Software)()",0
	db "",0

	read "music_end.asm"
