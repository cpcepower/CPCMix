; Music of Wild West Seymour (1992)(Codemasters)(Allister Brimble)()
; Ripped by Megachur the 14/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "WILDWESS.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #0040
FIRST_THEME				equ 0
LAST_THEME				equ 4

	read "music_header.asm"

;
.stop_music
;
	xor a
	ld (l050a),a
	jp l1132
;
.init_music
;
	ex af,af'
	xor a
	ld (l050a),a
	ex af,af'
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l050c
	add hl,bc
	ld ix,l0094
	ld c,#1f
	ld a,#03
.l0060
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#03),e
	ld (ix+#04),d
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	pop hl
	ld (ix+#01),e
	ld (ix+#02),d
	add ix,bc
	dec a
	jr nz,l0060
	inc a
	ld (l0199),a
	ld (l050a),a
	ret
.l0098 equ $ + 4
.l0097 equ $ + 3
.l0094
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l00b7 equ $ + 4
.l00b6 equ $ + 3
.l00b3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l00d6 equ $ + 4
.l00d5 equ $ + 3
.l00d2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
	ld c,a
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l050c
	add hl,bc
	ld a,(hl)
	ld (l0097),a
	inc hl
	ld a,(hl)
	ld (l0098),a
	inc hl
	ld a,(hl)
	ld (l00b6),a
	inc hl
	ld a,(hl)
	ld (l00b7),a
	inc hl
	ld a,(hl)
	ld (l00d5),a
	inc hl
	ld a,(hl)
	ld (l00d6),a
	ret
;
.play_music
.l011a
;
	ld a,(l050a)
	and a
	ret z
.l0120 equ $ + 1
	ld a,#00
	ld (l016d),a
	ld hl,l0199
	dec (hl)
	jr nz,l0145
	ld b,(hl)
	ld ix,l0094
	call l025f
	ld ix,l00b3
	call l025f
	ld ix,l00d2
	call l025f
	ld hl,l0199
.l0144 equ $ + 1
	ld (hl),#01
.l0145
	ld ix,l0094
	call l0301
	ld (l0414),hl
	ld (l041c),a
	ld ix,l00b3
	call l0301
	ld (l0416),hl
	ld (l041d),a
	ld ix,l00d2
	call l0301
	ld (l0418),hl
	ld (l041e),a
.l016d equ $ + 1
	ld a,#00
	ld (l041a),a
	ld hl,l0421
	ld d,#0d
.l0176
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f610
	out (c),c
	ld a,#d0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	or #10
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l0176
	ret
.l0199
	db #00,#bc,#a4,#a8,#ad,#6b,#9a,#95
	db #10,#84,#7c,#4a,#39,#58,#a9,#01
	xor a
	ld (l050a),a
	pop hl
	jp l1132
	ld c,(ix+#05)
	ld b,(ix+#06)
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	inc bc
	inc bc
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l01d3
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l01d3
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l026d
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l03f9
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l026d
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l03f9
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l026d
	ld hl,l03f9
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr l026d
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l026d
	ld a,(de)
	inc de
	ld (l0120),a
	jr l026d
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l026d
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l026d
	ld (ix+#1d),b
	jr l026d
	ld (ix+#1d),#40
	jr l026d
	ld (ix+#1d),#c0
	jr l026d
	set 1,(ix+#00)
	jr l026d
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l0290
.l025f
	dec (ix+#10)
	jr nz,l029d
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l026d
	ld a,(de)
	inc de
	and a
	jp m,l02ae
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l0290
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l029d
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l02aa
	inc (ix+#12)
	ret
.l02aa
	dec (ix+#12)
	ret
.l02ae
	cp #b8
	jr c,l02f9
	add #20
	jr c,l02de
	add #10
	jr c,l02e4
	add #10
	jr nc,l02d7
	ld c,a
	ld hl,l04ca
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr l026d
.l02d7
	add #09
	ld (l0144),a
	jr l026d
.l02de
	inc a
	ld (ix+#11),a
	jr l026d
.l02e4
	ld (ix+#19),a
	ld a,(de)
	inc de
	ld (ix+#14),a
	ld a,(de)
	inc de
	ld (ix+#15),a
	ld a,(de)
	inc de
	ld (ix+#17),a
	jp l026d
.l02f9
	ld hl,l011a
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l0301
	ld c,(ix+#00)
	bit 5,c
	jr z,l034c
	ld a,(ix+#16)
	sub #10
	jr nc,l0334
	bit 6,c
	jr z,l0339
	add (ix+#13)
	jr nc,l0319
	sbc a
.l0319
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l032f
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l034c
.l032f
	ld (ix+#18),a
	jr l034c
.l0334
	ld (ix+#16),a
	jr l034c
.l0339
	cpl
	sub #0f
	add (ix+#13)
	jr c,l0342
	sub a
.l0342
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l034c
	res 5,c
.l034c
	ld a,(ix+#12)
	inc a
	inc a
	bit 4,c
	jr z,l0370
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l0368
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l0368
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l0370
	ld hl,l0422
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l03ca
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l0393
	bit 0,c
	jr nz,l03b1
.l0393
	bit 5,l
	jr nz,l03a3
	sub (ix+#1b)
	jr nc,l03ae
	set 5,(ix+#1d)
	sub a
	jr l03ae
.l03a3
	add (ix+#1b)
	cp b
	jr c,l03ae
	res 5,(ix+#1d)
	ld a,b
.l03ae
	ld (ix+#1c),a
.l03b1
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l03bc
	dec d
.l03bc
	add #a0
	jr c,l03c8
.l03c0
	sla e
	rl d
	add #18
	jr nc,l03c0
.l03c8
	add hl,de
	ex de,hl
.l03ca
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l03f5
	ld b,(ix+#0e)
	djnz l03f2
	ld c,(ix+#0d)
	bit 7,c
	jr z,l03e1
	dec b
.l03e1
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l03f5
.l03f2
	ld (ix+#0e),b
.l03f5
	cpl
	and #03
.l03f9 equ $ + 1
	ld a,#38
	jr nz,l0406
	ld a,(l0120)
	xor #08
	ld (l016d),a
	ld a,#07
.l0406
	ld hl,l041b
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l041b equ $ + 7
.l041a equ $ + 6
.l0418 equ $ + 4
.l0416 equ $ + 2
.l0414
	db #00,#00,#00,#00,#00,#00,#00,#38
.l0421 equ $ + 5
.l041e equ $ + 2
.l041d equ $ + 1
.l041c
	db #0f,#0f,#0d,#00,#00,#00
.l0422
	dw #077c,#0708,#06b0,#0640
	dw #05ec,#0594,#0544,#04f8
	dw #04b0,#0470,#042c,#03f0
	dw #03be,#0384,#0358,#0320
	dw #02f6,#02ca,#02a2,#027c
	dw #0258,#0238,#0216,#01f8
	dw #01df,#01c2,#01ac,#0190
	dw #017b,#0165,#0151,#013e
	dw #012c,#011c,#010b,#00fc
	dw #00ef,#00e1,#00d6,#00c8
	dw #00bd,#00b2,#00a8,#009f
	dw #0096,#008e,#0085,#007e
	dw #0077,#0070,#006b,#0064
	dw #005e,#0059,#0054,#004f
	dw #004b,#0047,#0042,#003f
	dw #003b,#0038,#0035,#0032
	dw #002f,#002c,#002a,#0027
	dw #0025,#0023,#0021,#001f
	dw #001d,#001c,#001a,#0019
	dw #0017,#0016,#0015,#0013
	dw #0012,#0011,#0010,#000f
.l04ca
	db #0a,#0f,#12,#17,#1a,#1f,#22,#27
	db #2a,#2f,#00,#05,#09,#0c,#87,#00
	db #05,#09,#0c,#87,#00,#07,#0a,#0c
	db #87,#00,#05,#08,#0c,#87,#00,#03
	db #07,#0c,#87,#00,#03,#00,#0f,#87
	db #00,#03,#08,#0c,#87,#00,#03,#08
	db #0c,#87,#00,#0c,#00,#0c,#87,#00
	db #01,#02,#03,#04,#05,#06,#07,#87
.l050a
.music_end
	db #00,#00
.l050c
	dw l052a,l05d4,l0680
	dw l0564,l060e,l06ba
	dw l05a2,l064c,l06f6
	dw l0720,l076c,l07b8
	dw l0752,l079e,l07ea
.l052a
	dw l1129,l1129,l1129,l1129
	dw l0804,l0868,l0804,l08ce
	dw l0804,l0868,l0804,l08ce
	dw l0a0d,l0a2a,l0a0d,l0a40
	dw l0a0d,l0a2a,l0a0d,l0a52
	dw l0836,l089b,l0836,l08f5
	dw l0836,l089b,l0836,l08f5
	dw #0000
.l0564
	dw l0a64,l0a64,l0a64,l0a64
	dw l0a64,l0a8e,l0aaf,l0ad9
	dw l0a64,l0a8e,l0aaf,l0ad9
	dw l0a64,l0a8e,l0aaf,l0ad9
	dw l0a64,l0a8e,l0aaf,l0ad9
	dw l1129,l1129,l0d35,l0d5d
	dw l0d7c,l0d9b,l0d35,l0d5d
	dw l0d7c,l0d9b,#0000
.l05a2
	dw l0de8,l0de8,l0df7,l0df7
	dw l0de8,l0de8,l0df7,l0df7
	dw l0e37,l0e37,l0e4a,l0e4a
	dw l0e37,l0e37,l0e4a,l0e37
	dw l0e37,l0e37,l0e4a,l0e4a
	dw l0e37,l0e37,l0e4a,l0e37
	dw #0000
.l05d4
	dw l091c,l091c,l091c,l091c
	dw l091c,l091c,l091c,l095d
	dw l091c,l091c,l091c,l095d
	dw l095d,l095d,l095d,l095d
	dw l095d,l095d,l095d,l095d
	dw l091c,l091c,l091c,l095d
	dw l091c,l091c,l091c,l095d
	dw #0000
.l060e
	dw l1129,l1129,l0afa,l0afa
	dw l0afa,l0b3d,l0b77,l0bb1
	dw l0afa,l0b3d,l0b77,l0bb1
	dw l0afa,l0b3d,l0b77,l0bb1
	dw l0afa,l0b3d,l0b77,l0bb1
	dw l0afa,l0afa,l0b3d,l0beb
	dw l0afa,l0c25,l0b3d,l0beb
	dw l0afa,l0c25,#0000
.l064c
	dw l0dfc,l0e08,l0e08,l0e1b
	dw l0e1b,l0e08,l0e08,l0e1b
	dw l0e16,l0e54,l0e54,l0e91
	dw l0e91,l0e54,l0e54,l0e91
	dw l0ec5,l0e54,l0e54,l0e91
	dw l0e91,l0e54,l0e54,l0e91
	dw l0ec5,#0000
.l0680
	dw l1129,l1129,l0995,l0995
	dw l0995,l0995,l0995,l09d9
	dw l0995,l0995,l0995,l09d9
	dw l09d9,l09d9,l09d9,l09d9
	dw l09d9,l09d9,l09d9,l09d9
	dw l0995,l0995,l0995,l09d9
	dw l0995,l0995,l0995,l09d9
	dw #0000
.l06ba
	dw l1129,l1129,l1129,l1129
	dw l0c5f,l0c91,l0ca0,l0cc4
	dw l0c78,l0cd2,l0cea,l0d0e
	dw l0c5f,l0c91,l0ca0,l0cc4
	dw l0c78,l0cd2,l0cea,l0d0e
	dw l0d25,l0dba,l0dca,l0dd4
	dw l0dda,l0dba,l0dca,l0dd4
	dw l0de2,#0000
.l06f6
	dw l0e20,l0e30,l0e20,l0e30
	dw l0ef9,l0f09,l0f14,l1129
	dw l0ef9,l0f09,l0f1a,l1129
	dw l0ef9,l0f09,l0f14,l1129
	dw l0ef9,l0f09,l0f1a,l1129
	dw #0000
.l0720
	dw l0f20,l0f3e,l0f20,l0f3e
	dw l0f48,l0f52,l0f20,l0f20
	dw l0f20,l0f48,l0f52,l0f52
.l073f equ $ + 7
	dw l0f20,l0f48,l0f52,l0f52
	dw l1005,l1042,l1076,l1076
	dw l1005,l1042,l1076,l1076
	dw #0000
.l0752
	dw l0f20,l0f20,l0f48,l0f34
	dw l1005,l1005,l1042,l1076
	dw l1005,l1042,l1076,l1076
	dw #0000
.l076c
	dw l0f5c,l0f68,l0f5c,l0f68
	dw l0f74,l0f80,l0f5c,l0f5c
	dw l0f8c,l0fc5,l0f9f,l0f9f
	dw l0f8c,l0fc5,l0f9f,l0f9f
	dw l0f8c,l0fc5,l0f9f,l0f9f
	dw l0f8c,l0fc5,l0f9f,l0f9f
	dw #0000
.l079e
	dw l10aa,l10b9,l10be,l10c3
	dw l10d0,l10df,l10e4,l10ee
	dw l10d0,l10df,l10e9,l10ee
	dw #0000
.l07b8
	dw l1129,l1129,l1129,l1129
	dw l1129,l1129,l1129,l1129
	dw l0fd8,l0fe8,l0ff2,l0ff6
	dw l0fd8,l0ffb,l0ff2,l0ff6
	dw l0fd8,l0fe8,l0ff2,l0ff6
	dw l0fd8,l0ffb,l0ff2,l0ff6
	dw #0000
.l07ea
	dw l10d0,l10df,l10e4,l10ee
	dw l1122,l1122,l110b,l111b
	dw l1122,l110b,l111b,l111b
	dw #0000
.l0804
	db #8a,#88,#01,#01,#81,#dc,#41,#01
	db #15,#e0,#43,#46,#43,#46,#8a,#88
	db #01,#02,#82,#dd,#c1,#01,#15,#e5
	db #43,#8a,#88,#01,#01,#81,#dc,#41
	db #01,#15,#e0,#3f,#40,#e1,#41,#8a
	db #88,#01,#02,#82,#dd,#c1,#01,#15
.l0836 equ $ + 2
	db #3a,#87,#8a,#88,#01,#01,#81,#dc
	db #41,#01,#15,#e0,#37,#3a,#37,#3a
	db #8a,#88,#01,#02,#82,#dd,#c1,#01
	db #15,#e5,#37,#8a,#88,#01,#01,#81
	db #dc,#41,#01,#15,#e0,#33,#34,#e1
	db #35,#8a,#88,#01,#02,#82,#dd,#c1
.l0868 equ $ + 4
	db #01,#15,#2e,#87,#8a,#88,#01,#01
	db #81,#dc,#41,#01,#15,#e0,#43,#46
	db #43,#46,#8a,#88,#01,#02,#82,#dd
	db #c1,#01,#15,#e5,#43,#8a,#88,#01
	db #01,#81,#dc,#41,#01,#15,#e0,#41
	db #3f,#e1,#3e,#8a,#88,#01,#02,#82
.l089b equ $ + 7
	db #dd,#c1,#01,#15,#e1,#46,#87,#8a
	db #88,#01,#01,#81,#dc,#41,#01,#15
	db #e0,#37,#3a,#37,#3a,#8a,#88,#01
	db #02,#82,#dd,#c1,#01,#15,#e5,#37
	db #8a,#88,#01,#01,#81,#dc,#41,#01
	db #15,#e0,#35,#33,#e1,#32,#8a,#88
	db #01,#02,#82,#dd,#c1,#01,#15,#e1
.l08ce equ $ + 2
	db #3a,#87,#8a,#88,#01,#01,#81,#dc
	db #41,#01,#15,#e2,#3c,#e0,#3e,#8a
	db #88,#01,#02,#82,#dd,#c1,#01,#15
	db #e1,#3f,#43,#e5,#41,#8a,#88,#01
	db #01,#81,#dc,#41,#01,#15,#e1,#3a
.l08f5 equ $ + 1
	db #87,#8a,#88,#01,#01,#81,#dc,#41
	db #01,#15,#e2,#30,#e0,#32,#8a,#88
	db #01,#02,#82,#dd,#c1,#01,#15,#e1
	db #33,#37,#e5,#35,#8a,#88,#01,#01
	db #81,#dc,#41,#01,#15,#e1,#2e,#87
.l091c
	db #8a,#88,#02,#02,#83,#df,#00,#01
	db #07,#e1,#0f,#8a,#88,#01,#02,#82
	db #dd,#00,#01,#17,#e0,#c8,#33,#8a
	db #88,#02,#02,#83,#df,#00,#01,#07
	db #e0,#0f,#e1,#0a,#0e,#0f,#8a,#88
	db #01,#02,#82,#dd,#00,#01,#17,#e0
	db #c8,#33,#8a,#88,#02,#02,#83,#df
	db #00,#01,#07,#e0,#0f,#e1,#0a,#0e
.l095d equ $ + 1
	db #87,#e1,#08,#8a,#88,#01,#02,#82
	db #dd,#00,#01,#17,#e0,#c8,#38,#8a
	db #88,#02,#02,#83,#df,#00,#01,#07
	db #e0,#08,#e1,#0c,#0f,#0a,#8a,#88
	db #01,#02,#82,#dd,#00,#01,#17,#e0
	db #c8,#35,#8a,#88,#02,#02,#83,#df
	db #00,#01,#07,#e0,#0a,#e1,#0e,#11
.l0995 equ $ + 1
	db #87,#8a,#88,#01,#02,#82,#dd,#00
	db #01,#17,#e2,#c1,#2e,#e0,#c1,#2e
	db #8a,#88,#01,#02,#82,#df,#00,#01
	db #0e,#8d,#e1,#c8,#3a,#8a,#88,#01
	db #02,#82,#dd,#00,#01,#17,#e2,#c1
	db #2e,#c1,#2e,#8a,#88,#01,#02,#82
	db #df,#00,#01,#0e,#8d,#e1,#c8,#46
	db #8a,#88,#01,#02,#82,#dd,#00,#01
.l09d9 equ $ + 5
	db #17,#e1,#c2,#2e,#87,#e2,#c1,#27
	db #e0,#c1,#27,#8a,#88,#01,#02,#82
	db #df,#00,#01,#0e,#8d,#e1,#c8,#3f
	db #8a,#88,#01,#02,#82,#dd,#00,#01
	db #17,#e2,#c1,#27,#c1,#29,#8a,#88
	db #01,#02,#82,#df,#00,#01,#0e,#8d
	db #e1,#c8,#35,#e0,#c8,#35,#c8,#35
.l0a0d equ $ + 1
	db #87,#8a,#88,#01,#02,#82,#dd,#c1
	db #01,#15,#e2,#c8,#38,#e0,#c8,#43
	db #e1,#c8,#35,#c8,#33,#c8,#35,#c8
.l0a2a equ $ + 6
	db #2e,#c8,#32,#c8,#35,#87,#e2,#c8
	db #38,#e0,#c8,#37,#e1,#c8,#35,#c8
	db #33,#e4,#c1,#35,#e0,#c8,#2e,#c8
.l0a40 equ $ + 4
	db #32,#c8,#35,#87,#e2,#c8,#2c,#e0
	db #c8,#2e,#e1,#c8,#30,#c8,#38,#e7
.l0a52 equ $ + 6
	db #84,#01,#14,#c8,#2e,#87,#e2,#c8
	db #24,#e0,#c8,#26,#e1,#c8,#27,#c8
	db #2b,#e7,#84,#ff,#14,#c8,#29,#87
.l0a64
	db #8a,#88,#01,#02,#82,#dd,#00,#01
	db #17,#e1,#c8,#27,#e0,#c8,#2a,#c8
	db #2e,#e1,#c8,#27,#e0,#c8,#2a,#c8
	db #2e,#e1,#c8,#27,#e0,#c8,#2a,#c8
	db #2e,#e1,#c8,#27,#e0,#c8,#2a,#c8
.l0a8e equ $ + 2
	db #2e,#87,#e1,#c8,#2a,#e0,#c8,#2e
	db #c8,#31,#e1,#c8,#2a,#e0,#c8,#2e
	db #c8,#31,#e1,#c8,#2a,#e0,#c8,#2e
	db #c8,#31,#e1,#c8,#2a,#e0,#c8,#2e
.l0aaf equ $ + 3
	db #c8,#31,#87,#8a,#88,#01,#02,#82
	db #dd,#00,#01,#17,#e1,#c8,#2c,#e0
	db #c8,#2f,#c8,#33,#e1,#c8,#2c,#e0
	db #c8,#2f,#c8,#33,#e1,#c8,#2c,#e0
	db #c8,#2f,#c8,#33,#e1,#c8,#2c,#e0
.l0ad9 equ $ + 5
	db #c8,#2f,#c8,#33,#87,#e1,#c8,#2f
	db #e0,#c8,#33,#c8,#36,#e1,#c8,#2f
	db #e0,#c8,#33,#c8,#36,#e1,#c8,#2f
	db #e0,#c8,#33,#c8,#36,#e1,#c8,#2f
.l0afa equ $ + 6
	db #e0,#c8,#33,#c8,#36,#87,#8a,#88
	db #03,#04,#83,#df,#00,#01,#0c,#e0
	db #0f,#0f,#0f,#0f,#8a,#88,#01,#02
	db #82,#df,#00,#01,#0e,#8d,#e1,#27
	db #8a,#88,#03,#04,#83,#df,#00,#01
	db #0c,#e0,#0f,#0f,#0f,#0f,#e1,#0f
	db #8a,#88,#01,#02,#82,#df,#00,#01
	db #0e,#8d,#e1,#27,#8a,#88,#03,#04
	db #83,#df,#00,#01,#0c,#e0,#0f,#0f
.l0b3d equ $ + 1
	db #87,#e0,#12,#12,#12,#12,#8a,#88
	db #01,#02,#82,#df,#00,#01,#0e,#8d
	db #e1,#2a,#8a,#88,#03,#04,#83,#df
	db #00,#01,#0c,#e0,#12,#12,#12,#12
	db #e1,#12,#8a,#88,#01,#02,#82,#df
	db #00,#01,#0e,#8d,#e1,#2a,#8a,#88
	db #03,#04,#83,#df,#00,#01,#0c,#e0
.l0b77 equ $ + 3
	db #12,#12,#87,#e0,#14,#14,#14,#14
	db #8a,#88,#01,#02,#82,#df,#00,#01
	db #0e,#8d,#e1,#2c,#8a,#88,#03,#04
	db #83,#df,#00,#01,#0c,#e0,#14,#14
	db #14,#14,#e1,#14,#8a,#88,#01,#02
	db #82,#df,#00,#01,#0e,#8d,#e1,#2c
	db #8a,#88,#03,#04,#83,#df,#00,#01
.l0bb1 equ $ + 5
	db #0c,#e0,#14,#14,#87,#e0,#0b,#0b
	db #0b,#0b,#8a,#88,#01,#02,#82,#df
	db #00,#01,#0e,#8d,#e1,#23,#8a,#88
	db #03,#04,#83,#df,#00,#01,#0c,#e0
	db #0b,#0b,#0b,#0b,#e1,#0b,#8a,#88
	db #01,#02,#82,#df,#00,#01,#0e,#8d
	db #e1,#23,#8a,#88,#03,#04,#83,#df
.l0beb equ $ + 7
	db #00,#01,#0c,#e0,#0b,#0b,#87,#e0
	db #0d,#0d,#0d,#0d,#8a,#88,#01,#02
	db #82,#df,#00,#01,#0e,#8d,#e1,#25
	db #8a,#88,#03,#04,#83,#df,#00,#01
	db #0c,#e0,#0d,#0d,#0d,#0d,#e1,#0d
	db #8a,#88,#01,#02,#82,#df,#00,#01
	db #0e,#8d,#e1,#25,#8a,#88,#03,#04
	db #83,#df,#00,#01,#0c,#e0,#0d,#0d
.l0c25 equ $ + 1
	db #87,#e0,#0a,#0a,#0a,#0a,#8a,#88
	db #01,#02,#82,#df,#00,#01,#0e,#8d
	db #e1,#22,#8a,#88,#03,#04,#83,#df
	db #00,#01,#0c,#e0,#0a,#0a,#0a,#0a
	db #e1,#0a,#8a,#88,#01,#02,#82,#df
	db #00,#01,#0e,#8d,#e1,#22,#8a,#88
	db #03,#04,#83,#df,#00,#01,#0c,#e0
.l0c5f equ $ + 3
	db #0a,#0a,#87,#8a,#88,#01,#01,#81
	db #dc,#41,#01,#15,#e9,#27,#8a,#88
	db #01,#02,#82,#dd,#c1,#01,#15,#e1
.l0c78 equ $ + 4
	db #22,#27,#29,#87,#8a,#88,#01,#01
	db #81,#dc,#41,#01,#15,#e9,#33,#8a
	db #88,#01,#02,#82,#dd,#c1,#01,#15
.l0c91 equ $ + 5
	db #e1,#2e,#33,#35,#87,#ed,#2a,#8a
	db #88,#01,#01,#81,#dc,#41,#01,#15
.l0ca0 equ $ + 4
	db #e0,#2c,#2e,#87,#8a,#88,#01,#02
	db #82,#dd,#c1,#01,#15,#e3,#2c,#8a
	db #88,#01,#01,#81,#dc,#41,#01,#15
	db #e9,#27,#e0,#27,#8a,#88,#01,#02
	db #82,#dd,#c1,#01,#15,#e0,#25,#87
.l0cc4
	db #ed,#27,#8a,#88,#01,#01,#81,#dc
.l0cd2 equ $ + 6
	db #41,#01,#15,#e1,#25,#87,#8a,#88
	db #01,#02,#82,#dd,#c1,#01,#15,#ed
	db #36,#8a,#88,#01,#01,#81,#dc,#41
.l0cea equ $ + 6
	db #01,#15,#e0,#38,#3a,#87,#8a,#88
	db #01,#02,#82,#dd,#c1,#01,#15,#e3
	db #38,#8a,#88,#01,#01,#81,#dc,#41
	db #01,#15,#e9,#33,#e0,#33,#8a,#88
	db #01,#02,#82,#dd,#c1,#01,#15,#e0
.l0d0e equ $ + 2
	db #31,#87,#8a,#88,#01,#02,#82,#dd
	db #c1,#01,#15,#ed,#33,#8a,#88,#01
	db #01,#81,#dc,#41,#01,#15,#e1,#31
.l0d25 equ $ + 1
	db #87,#8a,#88,#01,#02,#82,#dd,#c1
	db #01,#15,#ff,#84,#01,#2d,#c4,#27
.l0d35 equ $ + 1
	db #87,#8a,#88,#01,#02,#82,#dd,#00
	db #01,#17,#e1,#c1,#25,#e0,#c1,#25
	db #c1,#25,#e1,#c1,#25,#c1,#25,#e0
	db #c1,#25,#c1,#25,#c1,#25,#c1,#25
	db #e1,#c1,#25,#e0,#c1,#25,#c1,#25
.l0d5d equ $ + 1
	db #87,#e1,#c1,#20,#e0,#c1,#20,#c1
	db #20,#e1,#c1,#20,#c1,#20,#e0,#c1
	db #20,#c1,#20,#c1,#20,#c1,#20,#e1
	db #c1,#20,#e0,#c1,#20,#c1,#20,#87
.l0d7c
	db #e1,#c4,#27,#e0,#c4,#27,#c4,#27
	db #e1,#c4,#27,#c4,#27,#e0,#c4,#27
	db #c4,#27,#c4,#27,#c4,#27,#e1,#c4
.l0d9b equ $ + 7
	db #27,#e0,#c4,#27,#c4,#27,#87,#e1
	db #c4,#2e,#e0,#c4,#2e,#c4,#2e,#e1
	db #c4,#2e,#c4,#2e,#e0,#c4,#2e,#c4
	db #2e,#c4,#2e,#c4,#2e,#e1,#c4,#2e
.l0dba equ $ + 6
	db #e0,#c4,#2e,#c4,#2e,#87,#8a,#88
	db #01,#02,#82,#dd,#c1,#01,#15,#e9
.l0dca equ $ + 6
	db #2a,#e1,#25,#2a,#2c,#87,#e3,#25
	db #e7,#2c,#e1,#25,#e0,#27,#25,#87
.l0dda equ $ + 6
.l0dd4
	db #ed,#27,#e0,#29,#2a,#87,#e0,#29
.l0de2 equ $ + 6
	db #2a,#e9,#29,#e3,#25,#87,#e0,#2e
.l0de8 equ $ + 4
	db #2f,#ed,#2e,#87,#8a,#88,#01,#01
	db #81,#dc,#41,#01,#15,#be,#e3,#39
.l0df7 equ $ + 3
	db #eb,#3e,#87,#e3,#3c,#eb,#41,#87
.l0dfc
	db #8a,#88,#01,#01,#81,#dc,#41,#01
.l0e08 equ $ + 4
	db #15,#e7,#80,#87,#8a,#88,#01,#02
	db #82,#dd,#c1,#01,#15,#e3,#39,#eb
.l0e1b equ $ + 7
.l0e16 equ $ + 2
	db #3e,#87,#e3,#3c,#e3,#41,#87,#e3
.l0e20 equ $ + 4
	db #3c,#eb,#41,#87,#8a,#88,#01,#01
	db #81,#dc,#41,#01,#15,#ff,#84,#01
.l0e30 equ $ + 4
	db #5a,#c6,#32,#87,#ff,#84,#01,#5a
.l0e37 equ $ + 3
	db #c6,#35,#87,#8a,#88,#01,#02,#82
	db #dd,#c1,#01,#15,#e3,#c8,#2d,#c8
.l0e4a equ $ + 6
	db #32,#c8,#34,#c8,#32,#87,#e3,#c8
	db #30,#c8,#35,#c8,#37,#c8,#35,#87
.l0e54
	db #8a,#88,#02,#02,#83,#df,#00,#01
	db #07,#e1,#0e,#0e,#8a,#88,#01,#02
	db #82,#df,#00,#01,#0e,#8d,#e1,#0e
	db #8a,#88,#02,#02,#83,#df,#00,#01
	db #07,#e1,#0e,#e3,#0e,#8a,#88,#01
	db #02,#82,#df,#00,#01,#0e,#8d,#e1
	db #0e,#8a,#88,#02,#02,#83,#df,#00
.l0e91 equ $ + 5
	db #01,#07,#e1,#09,#87,#e1,#11,#11
	db #8a,#88,#01,#02,#82,#df,#00,#01
	db #0e,#8d,#e1,#11,#8a,#88,#02,#02
	db #83,#df,#00,#01,#07,#e1,#11,#e3
	db #11,#8a,#88,#01,#02,#82,#df,#00
	db #01,#0e,#8d,#e1,#11,#8a,#88,#02
	db #02,#83,#df,#00,#01,#07,#e1,#0c
.l0ec5 equ $ + 1
	db #87,#e1,#09,#09,#8a,#88,#01,#02
	db #82,#df,#00,#01,#0e,#8d,#e1,#09
	db #8a,#88,#02,#02,#83,#df,#00,#01
	db #07,#e1,#09,#e3,#09,#8a,#88,#01
	db #02,#82,#df,#00,#01,#0e,#8d,#e1
	db #09,#8a,#88,#02,#02,#83,#df,#00
.l0ef9 equ $ + 5
	db #01,#07,#e1,#04,#87,#8a,#88,#01
	db #02,#82,#dd,#c1,#01,#15,#e9,#32
.l0f09 equ $ + 5
	db #e1,#2d,#32,#34,#87,#e1,#35,#34
	db #35,#37,#e3,#39,#e1,#37,#35,#87
.l0f1a equ $ + 6
.l0f14
	db #e0,#30,#32,#ed,#30,#87,#e0,#35
.l0f20 equ $ + 4
	db #37,#ed,#35,#87,#8a,#88,#02,#02
	db #83,#df,#00,#01,#07,#be,#e1,#07
	db #07,#07,#07,#07,#07,#07,#07,#87
.l0f34
	db #e1,#02,#02,#02,#02,#02,#02,#02
.l0f3e equ $ + 2
	db #02,#87,#e1,#13,#13,#13,#13,#13
.l0f48 equ $ + 4
	db #13,#13,#13,#87,#e1,#0a,#0a,#0a
.l0f52 equ $ + 6
	db #0a,#0a,#0a,#0a,#0a,#87,#e1,#0e
	db #0e,#0e,#0e,#0e,#0e,#0e,#0e,#87
.l0f5c
	db #8a,#88,#01,#02,#82,#dd,#c1,#01
.l0f68 equ $ + 4
	db #15,#ef,#07,#87,#8a,#88,#01,#02
	db #82,#dd,#c1,#01,#15,#ef,#13,#87
.l0f74
	db #8a,#88,#01,#02,#82,#dd,#c1,#01
.l0f80 equ $ + 4
	db #15,#ef,#0a,#87,#8a,#88,#01,#02
	db #82,#dd,#c1,#01,#15,#ef,#0e,#87
.l0f8c
	db #8a,#88,#01,#02,#82,#dd,#00,#01
	db #17,#e5,#c4,#1f,#e3,#c4,#1f,#e5
.l0f9f equ $ + 3
	db #c4,#1f,#87,#8a,#88,#01,#02,#82
	db #dd,#00,#01,#17,#e5,#c4,#26,#e3
	db #c4,#26,#e5,#c4,#26,#87,#8a,#88
	db #01,#02,#82,#dd,#00,#01,#17,#e5
	db #c1,#1f,#e3,#c1,#1f,#e5,#c1,#1f
.l0fc5 equ $ + 1
	db #87,#8a,#88,#01,#02,#82,#dd,#00
	db #01,#17,#e5,#c1,#1d,#e3,#c1,#1d
.l0fd8 equ $ + 4
	db #e5,#c1,#1d,#87,#8a,#88,#01,#02
	db #82,#dd,#c1,#01,#15,#e9,#1f,#e1
.l0fe8 equ $ + 4
	db #1d,#1f,#1d,#87,#e3,#22,#1d,#e1
.l0ff2 equ $ + 6
	db #1a,#e3,#18,#ef,#1a,#87,#e0,#1a
.l0ffb equ $ + 7
.l0ff6 equ $ + 2
	db #18,#87,#eb,#1a,#e3,#1d,#87,#e3
	db #22,#1d,#e1,#22,#e3,#24,#ef,#21
.l1005 equ $ + 1
	db #87,#8a,#88,#02,#02,#83,#df,#00
	db #01,#07,#e1,#07,#07,#8a,#88,#01
	db #02,#82,#df,#00,#01,#0e,#8d,#e1
	db #2b,#8a,#88,#02,#02,#83,#df,#00
	db #01,#07,#e1,#07,#07,#07,#8a,#88
	db #01,#02,#82,#df,#00,#01,#0e,#8d
	db #e1,#2b,#8a,#88,#02,#02,#83,#df
.l1042 equ $ + 6
	db #00,#01,#07,#e1,#07,#87,#e1,#0a
	db #0a,#8a,#88,#01,#02,#82,#df,#00
	db #01,#0e,#8d,#e1,#2e,#8a,#88,#02
	db #02,#83,#df,#00,#01,#07,#e1,#0a
	db #0a,#0a,#8a,#88,#01,#02,#82,#df
	db #00,#01,#0e,#8d,#e1,#2e,#8a,#88
	db #02,#02,#83,#df,#00,#01,#07,#e1
.l1076 equ $ + 2
	db #0a,#87,#e1,#0e,#0e,#8a,#88,#01
	db #02,#82,#df,#00,#01,#0e,#8d,#e1
	db #32,#8a,#88,#02,#02,#83,#df,#00
	db #01,#07,#e1,#0e,#0e,#0e,#8a,#88
	db #01,#02,#82,#df,#00,#01,#0e,#8d
	db #e1,#32,#8a,#88,#02,#02,#83,#df
.l10aa equ $ + 6
	db #00,#01,#07,#e1,#0e,#87,#8a,#88
	db #01,#01,#81,#dc,#41,#01,#15,#ed
.l10b9 equ $ + 5
	db #43,#e0,#43,#46,#87,#ed,#43,#e1
.l10c3 equ $ + 7
.l10be equ $ + 2
	db #3e,#87,#e3,#41,#eb,#46,#87,#e0
	db #3e,#3f,#e3,#3e,#e0,#32,#33,#e5
.l10d0 equ $ + 4
	db #32,#e1,#32,#87,#8a,#88,#01,#02
	db #82,#dd,#c1,#01,#15,#ed,#43,#e0
.l10df equ $ + 3
	db #43,#46,#87,#ed,#43,#e1,#3e,#87
.l10e9 equ $ + 5
.l10e4
	db #e3,#41,#eb,#46,#87,#e3,#3c,#eb
.l10ee equ $ + 2
	db #41,#87,#e0,#3e,#3f,#e3,#3e,#e0
	db #32,#33,#e5,#32,#e1,#32,#87,#8a
	db #88,#01,#01,#81,#dc,#41,#01,#15
.l110b equ $ + 7
	db #ec,#c1,#32,#e2,#c1,#32,#87,#8a
	db #88,#01,#01,#81,#dc,#41,#01,#15
.l111b equ $ + 7
	db #ec,#c1,#35,#e2,#c1,#35,#87,#ec
.l1122 equ $ + 6
	db #c3,#2d,#e2,#c3,#2d,#87,#ec,#c3
.l1129 equ $ + 5
	db #32,#e2,#c3,#32,#87,#be,#8a,#df
	db #00,#f1,#01,#ef,#80,#87
.l1132
	ld de,#0d00	; original is ld de,#d000 should be ld de,#0d00 !!!
.l1135
	call l113f
	dec e
	jp p,l1135
	ld de,l073f
.l113f
	ld b,#f4
	out (c),d
	ld bc,#f610
	out (c),c
	ld a,#d0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	or #10
	out (c),a
	out (c),c
	ret
;
.music_info
	db "Wild West Seymour (1992)(Codemasters)(Allister Brimble)",0
	db "",0

	read "music_end.asm"
