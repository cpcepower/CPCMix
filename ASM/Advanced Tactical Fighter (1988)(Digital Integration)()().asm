; Music of Advanced Tactical Fighter (1988)(Digital Integration)()()
; Ripped by Megachur the 12/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ADVANCTF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 12
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #2e0d

	read "music_header.asm"

.l2e0d
	push af
	push bc
	push de
	push ix
	bit 7,(hl)
	call nz,l2f60
	bit 0,(hl)
	jr z,l2e4c
	ld a,(l2f96)
	ld b,a
	ld a,(l2f9e)
	ld c,a
	ld a,(l2f9b)
	ld d,a
	ld a,(l2fa3)
	or b
	or c
	or d
	jr nz,l2e34
	call l2e52
	jr c,l2e4c
.l2e34
	ld ix,l2f94
	call l2eb3
	ld ix,l2f9c
	call l2eb3
	ld ix,l2fa4
	call l2eb3
	call l2f13
.l2e4c
	pop ix
	pop de
	pop bc
	pop af
	ret
.l2e52
	push hl
	call l2f86
	ld hl,(l2fac)
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l2fac),hl
	ld a,e
	or d
	jr z,l2ea9
	push de
	pop ix
	ld l,(ix+#00)
	ld h,(ix+#03)
	ld (l2f94),hl
	ld a,(ix+#06)
	ld (l2f96),a
	ld a,(ix+#09)
	ld (l2f97),a
	ld l,(ix+#01)
	ld h,(ix+#04)
	ld (l2f9c),hl
	ld a,(ix+#07)
	ld (l2f9e),a
	ld a,(ix+#0a)
	ld (l2f9f),a
	ld l,(ix+#02)
	ld h,(ix+#05)
	ld (l2fa4),hl
	ld a,(ix+#08)
	ld (l2fa6),a
	ld a,(ix+#0b)
	ld (l2fa7),a
	pop hl
	or a
	ret
.l2ea9
	pop hl
	set 7,(hl)
	bit 1,(hl)
	call z,l2f71
	scf
	ret
.l2eb3
	ld a,(ix+#07)
	or a
	jr nz,l2efd
	dec (ix+#02)
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	push af
	ld de,#0000
	ld (ix+#04),#00
	and #1f
	jr z,l2ee8
	ld (ix+#04),#0f
	add (ix+#03)
	ld l,a
	ld h,#00
	add hl,hl
	ld de,l2faf
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
.l2ee8
	ld (ix+#05),e
	ld (ix+#06),d
	pop af
	rlca
	rlca
	rlca
	and #07
	inc a
	add a
	ld e,a
	add a
	add e
	ld (ix+#07),a
	ret
.l2efd
	ld a,(ix+#07)
	and #01
	ret nz
	ld a,(ix+#04)
	and a
	ret z
	ld a,(ix+#04)
	dec a
	cp #0c
	ret c
	ld (ix+#04),a
	ret
.l2f13
	call l2f7a
	ld a,(l2f9b)
	dec a
	ld (l2f9b),a
	ld a,(l2fa3)
	dec a
	ld (l2fa3),a
	ld a,(l2fab)
	dec a
	ld (l2fab),a
	ld hl,(l2f99)
	ld (l32d4),hl
	ld hl,(l2fa1)
	ld (l32d6),hl
	ld hl,(l2fa9)
	ld (l32d8),hl
	ld a,#0f
	ld (l32da),a
	ld a,#1c
	ld (l32db),a
	ld a,(l2f98)
	ld (l32dc),a
	ld a,(l2fa0)
	ld (l32dd),a
	ld a,(l2fa8)
	ld (l32de),a
	ld hl,l32d4
	call l32a9
	ret
.l2f60
	push hl
	res 7,(hl)
	set 0,(hl)
	inc hl
	ld (l2fac),hl
	call l2f86
	call l2f73
	pop hl
	ret
.l2f71
	ld (hl),#00
.l2f73
	call l2f7a
	call l32a6
	ret
.l2f7a
	ld hl,l32e2
	ld de,l32d4
	ld bc,#000e
	ldir
	ret
.l2f86
	ld hl,l2f94
	ld de,l2f95
	ld bc,#0017
	ld (hl),#00
	ldir
	ret
.l2f9b equ $ + 7
.l2f99 equ $ + 5
.l2f98 equ $ + 4
.l2f97 equ $ + 3
.l2f96 equ $ + 2
.l2f95 equ $ + 1
.l2f94
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2fa3 equ $ + 7
.l2fa1 equ $ + 5
.l2fa0 equ $ + 4
.l2f9f equ $ + 3
.l2f9e equ $ + 2
.l2f9c
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2fab equ $ + 7
.l2fa9 equ $ + 5
.l2fa8 equ $ + 4
.l2fa7 equ $ + 3
.l2fa6 equ $ + 2
.l2fa4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l2fac
	db #00,#00,#00
.l2faf
	dw #03bc,#0386,#0354,#0324
	dw #02f6,#02cc,#02a4,#027e
	dw #025a,#0238,#0218,#01fa
	dw #01de,#01c3,#01aa,#0192
	dw #017b,#0166,#0152,#013f
	dw #012d,#011c,#010c,#00fd
	dw #00ef,#00e1,#00d5,#00c9
	dw #00be,#00b3,#00a9,#009f
	dw #0096,#008e,#0086,#007f
	dw #0077,#0071,#006a,#0064
	dw #005f,#0059,#0054,#0050
	dw #004b,#0047,#0043,#003f
	dw #003c,#0038,#0035,#0032
	dw #002f,#002d,#002a,#0028
	dw #0026,#0024,#0022,#0020
.l3027
	db #83
	dw l3044,l3050,l305c,l3068
	dw l3068,l3050,l305c,l3068
	dw l3068,l3050,l305c,l3068
	dw l3068,#0000
.l3044
	db l3075
	db l309a
	db l30da
	db l3075/&100
	db l309a/&100
	db l30da/&100
	db #25,#40
	db #24,#08,#fc,#08
.l3050
	db l30ff
	db l3130
	db l3170
	db l30ff/&100
	db l3130/&100
	db l3170/&100
	db #31,#40
	db #24,#08,#fc,#08
.l305c
	db l3195
	db l31a7
	db l31e7
	db l3195/&100
	db l31a7/&100
	db l31e7/&100
	db #12,#40
	db #24,#08,#fc,#08
.l3068
	db l320c
	db l3242
	db l3282
	db l320c/&100
	db l3242/&100
	db l3282/&100
	db #36,#40
	db #24,#08,#fc,#08
	db #25
.l3075
	db #4a,#2a,#00
	db #2a,#4d,#4d,#2d,#48,#28,#00,#28
	db #4a,#4a,#2a,#16,#00,#00,#56,#36
	db #19,#00,#00,#19,#00,#00,#19,#00
	db #14,#00,#00,#54,#34,#16,#00,#00
	db #56,#36
.l309a
	db #0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#08,#08,#08,#08,#08,#08
	db #08,#08,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#08,#08,#08,#08,#08,#08
	db #08,#08,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a
.l30da
	db #20,#21,#20,#21,#20,#21
	db #20,#01,#01,#20,#21,#20,#21,#20
	db #21,#20,#01,#01,#20,#21,#20,#21
	db #20,#21,#20,#01,#01,#20,#21,#20
	db #21,#20,#21,#20,#01,#01,#31
.l30ff
	db #31
	db #2d,#2a,#0d,#11,#00,#11,#0d,#0d
	db #0a,#0a,#2d,#31,#2d,#28,#0d,#11
	db #00,#11,#0d,#0d,#08,#08,#2d,#2f
	db #2c,#28,#0c,#0f,#00,#0f,#0c,#0c
	db #08,#08,#0c,#0c,#31,#2d,#2a,#0d
	db #11,#00,#11,#0d,#0d,#0a,#0a,#2d
.l3130
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0d,#0d,#0d,#0d,#0d,#0d
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #08,#08,#08,#08,#08,#08,#08,#08
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
.l3170
	db #20,#21,#20,#21,#20,#21,#20,#01
	db #01,#20,#21,#20,#21,#20,#21,#20
	db #01,#01,#20,#21,#20,#21,#20,#21
	db #20,#01,#01,#20,#21,#20,#21,#20
	db #21,#20,#01,#01,#12
.l3195
	db #8a,#2c,#0d
	db #92,#34,#16,#94,#52,#f1,#91,#2f
	db #11,#8d,#2c,#0d,#8c,#48,#ea
.l31a7
	db #0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#06
	db #06,#06,#06,#06,#06,#06,#06,#08
	db #08,#08,#08,#08,#08,#08,#08,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a,#06
	db #06,#06,#06,#06,#06,#06,#06,#08
	db #08,#08,#08,#08,#08,#08,#08,#0a
	db #0a,#0a,#0a,#0a,#0a,#0a,#0a
.l31e7
	db #20
	db #20,#20,#21,#20,#20,#20,#01,#01
	db #20,#20,#20,#21,#20,#20,#20,#01
	db #01,#20,#20,#20,#21,#20,#20,#20
	db #01,#01,#20,#20,#20,#21,#20,#20
	db #20,#01,#01,#36
.l320c
	db #11,#11,#0d,#0d
	db #31,#14,#36,#16,#19,#19,#16,#16
	db #11,#11,#16,#16,#12,#12,#2d,#0d
	db #2c,#0c,#12,#12,#0f,#0f,#12,#12
	db #1d,#1d,#19,#19,#34,#14,#36,#16
	db #11,#11,#0d,#0d,#31,#16,#16,#12
	db #12,#36,#16,#38,#18,#14,#14,#18
	db #18,#3d
.l3242
	db #0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#06,#06,#06,#06,#06,#06
	db #06,#06,#08,#08,#08,#08,#08,#08
	db #08,#08,#0d,#0d,#0d,#0d,#0d,#0d
	db #0d,#0d,#0a,#0a,#0a,#0a,#0a,#0a
	db #0a,#0a,#06,#06,#06,#06,#06,#06
	db #06,#06,#08,#08,#08,#08,#08,#08
	db #08,#08
.l3282
	db #20,#21,#20,#21,#20,#21
	db #20,#01,#01,#20,#21,#20,#21,#20
	db #21,#20,#01,#01,#20,#21,#20,#21
	db #20,#21,#20,#01,#01,#20,#21,#20
	db #21,#20,#21,#20,#01,#01
.l32a6
	ld hl,l32e2
.l32a9
	push af
	push bc
	push de
	push hl
	ld b,#f7
	ld a,#82
	out (c),a
	ld e,#00
.l32b5
	ld d,(hl)
	inc hl
	call l32f0
	inc e
	ld a,e
	cp #0e
	jr c,l32b5
	ld a,#0e
	ld b,#f4
	out (c),a
	ld b,#f6
	ld a,#c0
	out (c),a
	xor a
	out (c),a
	pop hl
	pop de
	pop bc
	pop af
	ret
.l32d4
	db #00,#00
.l32d6
	db #00,#00
.l32d8
	db #00,#00
.l32da
	db #00
.l32db
	db #00
.l32dc
	db #00
.l32dd
	db #00
.l32de
	db #00,#00,#00,#00
.l32e2
	db #00,#00,#00,#00,#00,#00,#00,#38
	db #00,#00,#00,#00,#00,#00
.l32f0
	ld b,#f4
	out (c),e
	ld b,#f6
	ld a,#c0
	out (c),a
	xor a
	out (c),a
	ld b,#f4
	out (c),d
	ld b,#f6
	ld a,#80
	out (c),a
	xor a
	out (c),a
	ret
;
.stop_music		; #2c7f
;
	ld hl,l3027	; stop
	jp l2f71

;
.init_music		; #3883
;
	ld hl,l3027	; init
	ld (hl),#83
	jp l2f73	;#2f71

;
.play_music		; #2e06
;
	call play_music1	; added by Megachur
	call play_music1
	call play_music1
	call play_music1
	call play_music1
.play_music1
	ld a,0
	inc a
	and #07
	ld (play_music1+1),a
	ret nz			; added by Megachur

	ld hl,l3027	; play
	jp l2e0d
;
.music_info
	db "Advanced Tactical Fighter (1988)(Digital Integration)()",0
	db "",0

	read "music_end.asm"
