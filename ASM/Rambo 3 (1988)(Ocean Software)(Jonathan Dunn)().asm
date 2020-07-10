; Music of Rambo 3 (1988)(Ocean Software)(Jonathan Dunn)()
; Ripped by Megachur the 07/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RAMBO3.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 07
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #0502
FIRST_THEME				equ 0
LAST_THEME				equ 3

	read "music_header.asm"

;
.init_music
;
	ld hl,l0bd4
	ld (hl),#00
	inc hl
	ld (hl),#00
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,l0dde
	add hl,bc
	ld a,(hl)
	ld (l0601),a
	inc hl
	ld ix,l0565
	ld c,#25
	ld a,#03
.l0523
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#20),#00
	ld (ix+#21),#00
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
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
	jr nz,l0523
	ld (l0883),a
	inc a
	ld (l05d4),a
	ld (l0bd4),a
	ret
.l0565
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#09
.l058a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#12
.l05af
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#24
.l05d4
	db #00
;
.play_music
;
	call l0c2a
	ld a,(l0bd4)
	and a
	jp z,l0631
.l05e0 equ $ + 1
	ld a,#00
	ld (l062d),a
	ld hl,l05d4
	dec (hl)
	jr nz,l0605
	ld b,(hl)
	ld ix,l0565
	call l0781
	ld ix,l058a
	call l0781
	ld ix,l05af
	call l0781
.l0601 equ $ + 1
	ld a,#01
	ld (l05d4),a
.l0605
	ld ix,l0565
	call l0850
	ld (l0961),hl
	ld (l0969),a
	ld ix,l058a
	call l0850
	ld (l0963),hl
	ld (l096a),a
	ld ix,l05af
	call l0850
	ld (l0965),hl
	ld (l096b),a
.l062d equ $ + 1
	ld a,#00
	ld (l0967),a
.l0631
	ld a,(l0bd5)
	and a
	jr z,l0661
	ld hl,(l096e)
	ld (l0961),hl
	ld hl,(l0972)
	ld (l0965),hl
	ld a,(l0974)
.l0648 equ $ + 2
	ld (l0967),a
	ld a,(l0968)
	or #2d
	ld hl,l0975
	and (hl)
	ld (l0968),a
	ld a,(l0976)
	ld (l0969),a
	ld a,(l0978)
	ld (l096b),a
.l0661
	ld a,(l0bd4)
	ld hl,l0bd5
	or (hl)
	ret z
	ld hl,l096c
	ld d,#0b
.l066e
	ld e,(hl)
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	dec hl
	dec d
	jp p,l066e
	ret
.l068f
	di
;
.stop_music
.l0690
;
	ld de,&0d00
.l0693
	call l069d
	dec d
	jp p,l0693
	ld de,#0000
.l069d
	ld b,#f4
	out (c),d
	ld bc,#f600
	out (c),c
	ld a,#c0
	out (c),a
	out (c),c
	ld b,#f4
	out (c),e
	ld b,#f6
	add a
	out (c),a
	out (c),c
	xor a
	ld (l0bd4),a
	ld (l0bd5),a
	ld (l0969),a
	ld (l096a),a
	ld (l096b),a
	ret
	db #9f,#87,#8b,#90,#4e,#7d,#78,#0f
	db #67,#5f,#24,#0e,#36,#8c,#04,#99
	db #9e,#a3
	pop hl
	jp l068f
	jp l0b5f
	ld a,(ix+#24)
	ld c,a
	and #07
	ld hl,l092c
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp l078f
	ld a,(ix+#24)
	ld c,a
	and #38
	ld hl,l092c
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp l078f
	ld hl,l092c
	ld a,(ix+#24)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr l078f
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l078f
	ld a,(de)
	inc de
	ld (l0883),a
	jr l078f
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l078f
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l078f
	ld (ix+#1d),b
	jr l078f
	ld (ix+#1d),#40
	jr l078f
	ld (ix+#1d),#c0
	jr l078f
	set 1,(ix+#00)
	jr l078f
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l07cd
	res 5,(ix+#00)
	jr l07cd
	ld (ix+#1f),#ff
	jr l078f
	ld (ix+#1f),b
	jr l078f
.l0781
	dec (ix+#10)
	jr nz,l07ea
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l078f
	ld a,(de)
	inc de
	and a
	jp m,l07fb
	add (ix+#20)
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,l07a4
	ld (l05e0),a
.l07a4
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld (ix+#0b),l
	ld (ix+#0c),h
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
	set 5,(ix+#00)
.l07cd
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,l07e9
	ld a,(l0bd5)
	and a
	jr nz,l07e9
	ld (ix+#1f),#ff
.l07e9
	ret
.l07ea
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l07f7
	inc (ix+#12)
	ret
.l07f7
	dec (ix+#12)
	ret
.l07fb
	cp #b8
	jr c,l0848
	add #20
	jr c,l0829
	add #10
	jr c,l0830
	add #10
	jr nc,l0821
	ld c,a
	ld hl,l0a3a
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp l078f
.l0821
	add #09
	ld (l0601),a
	jp l078f
.l0829
	inc a
	ld (ix+#11),a
	jp l078f
.l0830
	ld hl,l0acc
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ix+#14),l
	ld (ix+#15),h
	dec hl
	ld a,(hl)
	ld (ix+#0f),a
	jp l078f
.l0848
	ld hl,l0648
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l0850
	ld c,(ix+#00)
	bit 5,c
	jr z,l0882
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,l087c
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,l087c
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.l087c
	ld a,(ix+#18)
	ld (ix+#13),a
.l0883 equ $ + 1
.l0882
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,l089c
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.l089c
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,l097a
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l08fd
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l08c6
	bit 0,c
	jr nz,l08e4
.l08c6
	bit 5,l
	jr nz,l08d6
	sub (ix+#1b)
	jr nc,l08e1
	set 5,(ix+#1d)
	sub a
	jr l08e1
.l08d6
	add (ix+#1b)
	cp b
	jr c,l08e1
	res 5,(ix+#1d)
	ld a,b
.l08e1
	ld (ix+#1c),a
.l08e4
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l08ef
	dec d
.l08ef
	add #a0
	jr c,l08fb
.l08f3
	sla e
	rl d
	add #18
	jr nc,l08f3
.l08fb
	add hl,de
	ex de,hl
.l08fd
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l0928
	ld b,(ix+#0e)
	djnz l0925
	ld c,(ix+#0d)
	bit 7,c
	jr z,l0914
	dec b
.l0914
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l0928
.l0925
	ld (ix+#0e),b
.l0928
	cpl
	and #03
.l092c equ $ + 1
	ld a,#00
	jr nz,l0939
	ld a,(l05e0)
	xor #08
	ld (l062d),a
	ld a,#07
.l0939
	ld hl,l0968
	xor (hl)
	and (ix+#24)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,l095c
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#24)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (l062d),a
.l095c
	ex de,hl
	ld a,(ix+#13)
	ret
.l0968 equ $ + 7
.l0967 equ $ + 6
.l0965 equ $ + 4
.l0963 equ $ + 2
.l0961
	db #00,#00,#00,#00,#00,#00,#00,#3f
.l096f equ $ + 6
.l096e equ $ + 5
.l096c equ $ + 3
.l096b equ $ + 2
.l096a equ $ + 1
.l0969
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0978 equ $ + 7
.l0976 equ $ + 5
.l0975 equ $ + 4
.l0974 equ $ + 3
.l0972 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.l097a
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
	dw #000e,#000e,#000d,#000c
	dw #000b,#000b,#000a,#0009
	dw #0009,#0008,#0008,#0007
.l0a3a
	db #0b,#0b,#0c,#1f,#2a,#2c,#4d,#61
	db #75,#77,#85,#80,#0c,#80,#13,#12
	db #11,#10,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#80,#0c,#0c,#0c,#0c,#0c,#0c
	db #00,#00,#00,#00,#00,#80,#00,#03
	db #87,#0c,#0c,#0c,#0c,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#80,#00,#00,#00,#04,#04
	db #04,#07,#07,#07,#0c,#0c,#0c,#10
	db #10,#10,#13,#13,#13,#18,#18,#98
	db #00,#00,#00,#05,#05,#05,#09,#09
	db #09,#0c,#0c,#0c,#11,#11,#11,#15
	db #15,#15,#18,#18,#98,#00,#05,#89
	db #0c,#0c,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#80,#00
	db #04,#8c
.l0acc
	dw l0ae3,l0aed,l0af7,l0b00
	dw l0b0a,l0b14,l0b1e,l0b29
	dw l0b35,l0b47,l0b51
.l0ae3 equ $ + 1
	db #00,#0f,#0f,#0e,#0d,#0c,#0b,#0a
.l0aed equ $ + 3
	db #09,#87,#00,#0f,#0e,#0d,#0c,#0b
.l0af7 equ $ + 5
	db #09,#08,#00,#87,#00,#0e,#0c,#0b
.l0b00 equ $ + 6
	db #0a,#09,#08,#00,#87,#02,#0f,#0e
	db #0d,#0c,#0a,#09,#08,#07,#87,#01
.l0b0a
	db #0f,#0f,#0e,#0d,#0c,#0b,#0a,#09
.l0b14 equ $ + 2
	db #87,#01,#0f,#0e,#0d,#0c,#0b,#0a
.l0b1e equ $ + 4
	db #09,#08,#87,#00,#0f,#0f,#0e,#0e
.l0b29 equ $ + 7
	db #0d,#0b,#0a,#09,#08,#87,#00,#0f
	db #0f,#0f,#0e,#0d,#0c,#0b,#0a,#09
.l0b35 equ $ + 3
	db #08,#87,#00,#0f,#0e,#0d,#0c,#0b
	db #0a,#09,#08,#07,#06,#05,#04,#03
.l0b47 equ $ + 5
	db #02,#01,#00,#87,#01,#0c,#0d,#0e
.l0b51 equ $ + 7
	db #0f,#0e,#0d,#0b,#0a,#87,#02,#0f
	db #0e,#0c,#0b,#0a,#09,#08,#05,#04
	db #03,#02,#01,#00,#87
.l0b5f
	ld c,(ix+#05)
	ld b,(ix+#06)
.l0b65
	ld l,(ix+#03)
	ld h,(ix+#04)
	add hl,bc
	ld a,(ix+#21)
	dec a
	jp m,l0b82
	ld (ix+#21),a
	ld e,(ix+#22)
	ld d,(ix+#23)
	jr nz,l0b99
	inc bc
	inc bc
	jr l0b65
.l0b82
	ld (ix+#20),#00
.l0b86
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	or d
	jr nz,l0ba4
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l0b99
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l078f
.l0ba4
	dec de
	ld a,d
	or e
	jr nz,l0bb5
	inc hl
	ld a,(hl)
	ld (ix+#20),a
	inc hl
	inc bc
	inc bc
	inc bc
	inc de
	jr l0b86
.l0bb5
	dec de
	ld a,d
	or e
	inc de
	inc de
	jr nz,l0bd0
	inc hl
	ld a,(hl)
	ld (ix+#21),a
	inc hl
	ld e,(hl)
	ld (ix+#22),e
	inc hl
	ld d,(hl)
	ld (ix+#23),d
	inc bc
	inc bc
	inc bc
	jr l0b99
.l0bd0
	inc bc
	inc bc
	jr l0b99
.l0bd4
.music_end
	db &00
.l0bd5
	nop
	rst #38
	ld b,a
	ld a,(l0bd5)
	or a
	ret nz
	ld a,b
	ld hl,l0cc8
	add a
	add l
	ld l,a
	jr nc,l0be7
	inc h
.l0be7
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,l0dac
.l0bef
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz l0bef
	ld a,(l0dad)
	ld (l0dbd),a
	ld hl,(l0dae)
	ld (l096e),hl
	ld de,(l0db0)
	ld (l0972),de
	ld a,l
	ld (l0974),a
	ld a,(l0db3)
	ld (l0975),a
	ld a,(l0db2)
	ld e,a
	ld d,#0c
	call l069d
	ld a,(l0dbc)
	ld e,a
	ld d,#0d
	call l069d
	ld hl,l0bd5
	inc (hl)
	ret
.l0c2a
	call l0dbf
	ld a,(l0bd5)
	and a
	ret z
	ld a,(l0dac)
	and a
	jr nz,l0c3e
	ld (l0bd5),a
	jp l0690
.l0c3e
	dec a
	ld (l0dac),a
	ld a,(l0dbd)
	and a
	jr nz,l0c77
	ld a,(l0dba)
	and a
	ret z
	dec a
	ld (l0dba),a
	ld a,(l0dad)
	ld (l0dbd),a
	ld a,(l0dbb)
	and a
	jr z,l0c60
	ld a,(l0dda)
.l0c60
	ld b,a
	ld a,(l0dae)
	add b
	ld (l096e),a
	ld a,(l0daf)
	add b
	and #0f
	ld (l096f),a
	ld hl,(l0db0)
	ld (l0972),hl
.l0c77
	ld hl,l0dbd
	dec (hl)
	ld a,(l0db8)
	and a
	jr z,l0c9e
	jp p,l0c91
	ld hl,(l096e)
	ld de,(l0db4)
	add hl,de
	ld (l096e),hl
	jr l0c9e
.l0c91
	ld hl,(l096e)
	ld de,(l0db4)
	and a
	sbc hl,de
	ld (l096e),hl
.l0c9e
	ld a,(l0db9)
	and a
	jr z,l0cc1
	jp p,l0cb4
	ld hl,(l0972)
	ld de,(l0db6)
	add hl,de
	ld (l0972),hl
	jr l0cc1
.l0cb4
	ld hl,(l0972)
	ld de,(l0db6)
	and a
	sbc hl,de
	ld (l0972),hl
.l0cc1
	ld a,(l096e)
	ld (l0974),a
	ret
.l0cc8
	dw l0ce0,l0cf1,l0d02,l0d13
	dw l0d24,l0d35,l0d46,l0d57
	dw l0d68,l0d79,l0d8a,l0d9b
.l0ce0
	db #07,#03,#10,#00,#8b,#00,#0f,#fa
	db #10,#00,#08,#01,#ff,#01,#0a,#00
.l0cf1 equ $ + 1
	db #00,#05,#0a,#02,#01,#83,#00,#0c
	db #fa,#38,#00,#40,#00,#ff,#ff,#01
.l0d02 equ $ + 2
	db #00,#00,#28,#ff,#90,#01,#80,#01
	db #32,#fa,#07,#00,#07,#00,#01,#01
.l0d13 equ $ + 3
	db #02,#00,#00,#05,#0a,#a0,#02,#c0
	db #00,#32,#fa,#08,#00,#70,#00,#ff
.l0d24 equ $ + 4
	db #ff,#00,#00,#00,#0f,#0a,#00,#04
	db #ff,#07,#16,#f2,#00,#00,#00,#00
.l0d35 equ $ + 5
	db #ff,#ff,#0a,#00,#00,#05,#ff,#09
	db #00,#02,#00,#0a,#f3,#02,#00,#00
.l0d46 equ $ + 6
	db #00,#01,#01,#ff,#00,#00,#07,#03
	db #04,#00,#0b,#00,#0f,#fa,#10,#00
.l0d57 equ $ + 7
	db #08,#00,#ff,#ff,#0a,#00,#00,#0e
	db #08,#40,#00,#60,#01,#09,#fa,#a4
	db #00,#44,#00,#ff,#ff,#01,#00,#00
.l0d68
	db #14,#06,#01,#02,#11,#02,#14,#f2
	db #c8,#00,#cc,#00,#ff,#ff,#ff,#00
.l0d79 equ $ + 1
	db #00,#19,#03,#00,#44,#00,#00,#14
	db #d7,#80,#00,#40,#00,#ff,#01,#1e
.l0d8a equ $ + 2
	db #01,#00,#0f,#ff,#c2,#00,#0a,#01
	db #0a,#f2,#a2,#01,#c0,#00,#ff,#ff
.l0d9b equ $ + 3
	db #ff,#14,#00,#1e,#ff,#09,#00,#02
	db #00,#0a,#f3,#00,#04,#00,#04,#01
.l0daf equ $ + 7
.l0dae equ $ + 6
.l0dad equ $ + 5
.l0dac equ $ + 4
	db #01,#ff,#00,#00,#00,#00,#00,#00
.l0db6 equ $ + 6
.l0db4 equ $ + 4
.l0db3 equ $ + 3
.l0db2 equ $ + 2
.l0db0
	db #00,#00,#00,#00,#00,#00,#00,#00
.l0dbd equ $ + 5
.l0dbc equ $ + 4
.l0dbb equ $ + 3
.l0dba equ $ + 2
.l0db9 equ $ + 1
.l0db8
	db #00,#00,#00,#00,#00,#00,#00
.l0dbf
	ld a,(l0dda)
	and #48
	adc #38
	sla a
	sla a
	ld hl,l0ddd
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.l0ddd equ $ + 3
.l0dda
	db #ff,#80,#1b,#34
.l0dde
	db #06
	dw l0dfa,l0edc,l0f20
	db #06
	dw l0ffb,l1030,l105d
	db #0a
	dw l1108,l110c,l1110
	db #0a
	dw l1157,l115b,l115f
.l0dfa
	dw l0f27
	db #02,#00,#03
	dw l0f27
	db #02,#00,#04
	dw l0f3a,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a
	db #01,#00,#02,#02,#00,#04
	dw l0f3a,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a
	db #01,#00,#02,#02,#00,#04
	dw l0f3a,l0f49,l0f49
	db #02,#00,#04
	dw l0f24,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a,l0f3a
	db #01,#00,#05
	dw l0f3a,l0f3a
	db #01,#00,#fb
	dw l0f3a
	db #02,#00,#04
	dw l0f24
	dw #0000
.l0edc
	dw l0f59
	db #02,#00,#06
	dw l0f59
	db #01,#00,#f9
	dw l0f59
	db #02,#00,#08
	dw l0f24,l0f67,l0f67,l0f83
	dw l0f83
	db #02,#00,#04
	dw l0f24,l0f67,l0f67,l0f83
	dw l0f83
	db #02,#00,#04
	dw l0f24
	db #02,#00,#04
	dw l0fb7
	db #02,#00,#04
	dw l0f24,l0f67,l0f67,l0f83
	dw l0f83
	db #02,#00,#04
	dw l0f24,#0000
.l0f20
	dw l0fc0,#0000
.l0f27 equ $ + 3
.l0f24
	db #ef,#80,#87,#d0,#c0,#88,#01,#01
	db #83,#8a,#91,#ef,#19,#8f,#e7,#8f
.l0f3a equ $ + 6
	db #ef,#23,#8f,#e7,#1e,#87,#d7,#82
	db #c5,#90,#e1,#0d,#0d,#0b,#e3,#0d
.l0f49 equ $ + 5
	db #e1,#0d,#0d,#0b,#87,#ef,#d9,#c0
	db #1e,#8f,#1c,#8f,#23,#8f,#23,#eb
.l0f59 equ $ + 5
	db #8f,#e1,#21,#20,#87,#d5,#88,#01
	db #02,#82,#c0,#8a,#91,#ef,#38,#8f
.l0f67 equ $ + 3
	db #e7,#8f,#87,#d4,#82,#c0,#88,#01
	db #01,#e3,#80,#36,#36,#e1,#36,#e3
	db #38,#ed,#34,#e3,#80,#36,#36,#e1
.l0f83 equ $ + 7
	db #38,#ed,#33,#e1,#31,#33,#87,#c1
	db #81,#d6,#e1,#80,#38,#3b,#3d,#e0
	db #38,#38,#38,#38,#e1,#3b,#3d,#80
	db #38,#3b,#3d,#e0,#38,#38,#38,#38
	db #e1,#3b,#3d,#80,#38,#3b,#3d,#e0
	db #38,#38,#38,#38,#e1,#3b,#3d,#80
	db #38,#38,#36,#33,#31,#e0,#2f,#31
.l0fb7 equ $ + 3
	db #2f,#31,#87,#c3,#81,#d4,#ef,#36
.l0fc0 equ $ + 4
	db #8f,#34,#8f,#87,#c1,#d1,#8c,#e0
	db #0c,#c0,#d2,#8b,#41,#d8,#c1,#8a
	db #38,#c0,#d2,#8b,#41,#d3,#8c,#c2
	db #e1,#18,#c1,#d1,#8c,#e0,#0c,#c0
	db #d2,#8b,#41,#d8,#c1,#8a,#3d,#3d
	db #c1,#d1,#8c,#0c,#c0,#d2,#8b,#41
	db #d3,#8c,#c2,#e1,#18,#d8,#c1,#8a
	db #e0,#3b,#c0,#d2,#8b,#41,#87
.l0ffb
	dw l0f24
	db #02,#00,#03
	dw l0f24
	db #02,#00,#06
	dw l108f
	db #02,#00,#04
	dw l108f
	db #01,#00,#ff
	db #02,#00,#04
	dw l108f
	db #02,#00,#04
	dw l108f
	db #01,#00,#ff,#02,#00,#04
	dw l108f
	db #02,#00,#04
	dw l108f
	db #01,#00,#ff,#02,#00,#04
	dw l108f,#0000
.l1030
	dw l10a6
	db #02,#00,#03
	dw l10a6,l10a6,l10a6
	db #01,#00,#ff,#02,#00,#02
	dw l10a6,l10a6,l10a6
	db #01,#00,#ff,#02,#00,#02
	dw l10a6,l10a6,l10a6
	db #01,#00,#ff,#02,#00,#02
	dw l10a6,#0000
.l105d
	dw l10c0
	db #02,#00,#0e
	dw l10c0,l10d7
	db #02,#00,#08
	dw l10e6
	db #01,#00,#ff,#02,#00,#08
	dw l10e6
	db #02,#00,#08
	dw l10e6
	db #01,#00,#ff,#02,#00,#08
	dw l10e6
	db #02,#00,#08
	dw l10e6
	db #01,#00,#ff,#02,#00,#08
	dw l10e6,#0000
.l108f
	db #8a,#c1,#81,#91,#e1,#d0,#2f,#34
	db #3b,#2f,#34,#3b,#2f,#34,#39,#2f
.l10a6 equ $ + 7
	db #34,#38,#2f,#34,#36,#34,#87,#8a
	db #c0,#88,#01,#02,#91,#e3,#80,#d4
	db #81,#34,#e5,#32,#82,#f1,#2f,#e3
	db #80,#81,#34,#e5,#32,#f1,#82,#34
.l10c0 equ $ + 1
	db #87,#e3,#80,#d3,#8c,#c2,#e1,#18
	db #e3,#80,#c1,#d1,#8c,#e1,#0c,#d3
	db #8c,#c2,#18,#d3,#8c,#c2,#18,#87
.l10d7
	db #e3,#80,#c1,#d1,#8c,#0c,#e1,#0c
.l10e6 equ $ + 7
	db #0c,#e0,#10,#0f,#0c,#0c,#87,#8a
	db #da,#82,#c0,#90,#88,#01,#01,#e3
	db #1c,#81,#d3,#8c,#c2,#e1,#18,#da
	db #82,#c0,#8a,#1a,#1c,#1c,#81,#d3
	db #8c,#c2,#18,#da,#82,#c0,#8a,#1a
	db #87
.l1108
	dw l1114,#0000
.l110c
	dw l1136,#0000
.l1110
	dw l114c,#0000
.l1114
	db #c1,#d1,#8c,#e1,#0c,#d3,#c2,#18
	db #c1,#d1,#e0,#0c,#0c,#d3,#c2,#e1
	db #18,#c1,#d1,#0c,#d3,#c2,#18,#c1
	db #d1,#e0,#0c,#0c,#d3,#c2,#e0,#18
	db #18,#8e
.l1136
	db #8a,#81,#c1,#d0,#e0,#39,#3e,#40
	db #3e,#39,#41,#3c,#3e,#43,#41,#40
	db #3c,#40,#41,#40,#3e,#87
.l114c
	db #8a,#c4,#81,#d7,#e1,#32,#e0,#3e
	db #ef,#3e,#87
.l1157
	dw l1193,#0000
.l115b
	dw l117a,#0000
.l115f
	dw l1163,#0000
.l1163
	db #88,#01,#01,#8a,#d7,#82,#c5,#90
	db #e0,#1a,#1a,#18,#e1,#1a,#18,#e0
	db #15,#13,#13,#11,#e1,#0e,#8e
.l117a
	db #c1,#d1,#8c,#e1,#0c,#d3,#c2,#e2
	db #18,#c1,#d1,#e0,#0c,#d3,#c2,#e1
	db #18,#c1,#d1,#e0,#0c,#0c,#0c,#0c
	db #8e
.l1193
	db #8a,#c8,#81,#d7,#e2,#30,#ef,#30
	db #8e
;
.music_info
	db "Rambo 3 (1988)(Ocean Software)(Jonathan Dunn)",0
	db "",0

	read "music_end.asm"
