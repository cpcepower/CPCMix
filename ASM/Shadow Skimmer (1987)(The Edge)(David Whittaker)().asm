; Music of Shadow Skimmer (1987)(The Edge)(David Whittaker)()
; Ripped by Megachur the 22/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "SHADOWSK.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #b628

	read "music_header.asm"

;
.init_music
.lb628
;
	xor a
	ld (lbbbf),a
	ld (lbbc0),a
	ld (lbbc1),a
	ld b,#00
	ld hl,lbe79
	ld a,(hl)
	ld (lb714),a
	inc hl
	ld ix,lb67b
	ld c,#20
	ld a,#03
.lb644
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
	jr nz,lb644
	ld (lb9d2),a
	inc a
	ld (lb6db),a
	ld (lbbbf),a
	ret
.lb67b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#09
.lb69b
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#12
.lb6bb
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#24
.lb6db
	db #00
;
.play_music	;lb6de
;
	ld hl,lbbbe
	dec (hl)
	jr nz,lb6e5
	ld (hl),#00
	ret
.lb6e5
	call lbc33
	ld a,(lbbbf)
	and a
	jp z,lb741
.lb6f0 equ $ + 1
	ld a,#00
	ld (lb73d),a
	ld hl,lb6db
	dec (hl)
	jr nz,lb715
	ld b,(hl)
	ld ix,lb67b
	call lb8df
	ld ix,lb69b
	call lb8df
	ld ix,lb6bb
	call lb8df
	ld hl,lb6db
.lb714 equ $ + 1
	ld (hl),#01
.lb715
	ld ix,lb67b
	call lb986
	ld (lba95),hl
	ld (lba9d),a
	ld ix,lb69b
	call lb986
	ld (lba97),hl
	ld (lba9e),a
	ld ix,lb6bb
	call lb986
	ld (lba99),hl
	ld (lba9f),a
.lb73d equ $ + 1
	ld a,#00
	ld (lba9b),a
.lb741
	ld a,(lbbc1)
	and a
	jr z,lb76c
	ld hl,(lbaae)
	ld a,(lbbc2)
	xor #01
	ld (lbbc2),a
	jr z,lb758
	srl h
	rr l
.lb758
	ld (lba97),hl
	ld a,(lba9c)
	or #12
	ld hl,lbab0
	and (hl)
	ld (lba9c),a
	ld a,#0b
	ld (lba9e),a
.lb76c
	ld a,(lbbc0)
	and a
	jr z,lb79c
	ld hl,(lbaa2)
	ld (lba95),hl
	ld hl,(lbaa6)
	ld (lba99),hl
	ld a,(lbaa8)
	ld (lba9b),a
	ld a,(lba9c)
	or #2d
	ld hl,lbaa9
.lb78c
	and (hl)
	ld (lba9c),a
	ld a,(lbaaa)
	ld (lba9d),a
	ld a,(lbaac)
	ld (lba9f),a
.lb79c
	ld hl,lbbc0
	ld a,(lbbbf)
	or (hl)
	inc hl
	or (hl)
	ret z
	ld hl,lbaa0
	ld d,#0b
.lb7ab
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
	jp p,lb7ab
	ret
;
.stop_music	;b7cc
;
	xor a
	ld (lbbbf),a
	ld (lbbc0),a
	ld (lbbc1),a
.lb7d6
	ld de,#0d00
.lb7d9
	call lb7f1
	dec d
	jp p,lb7d9
	ld de,#073f
	call lb7f1
	xor a
	ld (lba9d),a
	ld (lba9e),a
	ld (lba9f),a
	ret
.lb7f1
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
	ret
	db #ca
	db #b2
	db #b6
	db #bb
	db #79
	db #a8
	db #a3
	db #10
	db #92
	db #8a
	db #4f
	db #39
	db #61
	db #b7
	db #01
	xor a
	ld (lbbbf),a
	pop hl
	jp lb7d6
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
	jr nz,lb845
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.lb845
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp lb8ed
	ld a,(ix+#1f)
	ld c,a
	and #07
	ld hl,lba7a
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp lb8ed
	ld a,(ix+#1f)
	ld c,a
	and #38
	ld hl,lba7a
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp lb8ed
	ld hl,lba7a
	ld a,(ix+#1f)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr lb8ed
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr lb8ed
	ld a,(de)
	inc de
	ld (lb9d2),a
	jr lb8ed
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr lb8ed
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr lb8ed
	ld (ix+#1d),b
	jr lb8ed
	ld (ix+#1d),#40
	jr lb8ed
	ld (ix+#1d),#c0
	jr lb8ed
	set 1,(ix+#00)
	jr lb8ed
	ld (ix+#13),b
	res 5,(ix+#00)
	jr lb919
.lb8df
	dec (ix+#10)
	jr nz,lb926
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.lb8ed
	ld a,(de)
	inc de
	and a
	jp m,lb937
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,lb8ff
	ld (lb6f0),a
.lb8ff
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.lb919
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.lb926
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,lb933
	inc (ix+#12)
	ret
.lb933
	dec (ix+#12)
	ret
.lb937
	cp #b8
	jr c,lb97e
	add #20
	jr c,lb963
	add #10
	jr c,lb969
	add #10
	jr nc,lb95c
	ld c,a
	ld hl,lbb71
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jr lb8ed
.lb95c
	add #09
	ld (lb714),a
	jr lb8ed
.lb963
	inc a
	ld (ix+#11),a
	jr lb8ed
.lb969
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
	jp lb8ed
.lb97e
	ld hl,lb78c
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lb986
	ld c,(ix+#00)
	bit 5,c
	jr z,lb9d1
	ld a,(ix+#16)
	sub #10
	jr nc,lb9b9
	bit 6,c
	jr z,lb9be
	add (ix+#13)
	jr nc,lb99e
	sbc a
.lb99e
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,lb9b4
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr lb9d1
.lb9b4
	ld (ix+#18),a
	jr lb9d1
.lb9b9
	ld (ix+#16),a
	jr lb9d1
.lb9be
	cpl
	sub #0f
	add (ix+#13)
	jr c,lb9c7
	sub a
.lb9c7
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,lb9d1
	res 5,c
.lb9d2 equ $ + 1
.lb9d1
	ld a,#00
	add (ix+#12)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #87
	jr c,lb9e9
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.lb9e9
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,lbab1
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,lba4b
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,lba14
	bit 0,c
	jr nz,lba32
.lba14
	bit 5,l
	jr nz,lba24
	sub (ix+#1b)
	jr nc,lba2f
	set 5,(ix+#1d)
	sub a
	jr lba2f
.lba24
	add (ix+#1b)
	cp b
	jr c,lba2f
	res 5,(ix+#1d)
	ld a,b
.lba2f
	ld (ix+#1c),a
.lba32
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,lba3d
	dec d
.lba3d
	add #a0
	jr c,lba49
.lba41
	sla e
	rl d
	add #18
	jr nc,lba41
.lba49
	add hl,de
	ex de,hl
.lba4b
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,lba76
	ld b,(ix+#0e)
	djnz lba73
	ld c,(ix+#0d)
	bit 7,c
	jr z,lba62
	dec b
.lba62
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr lba76
.lba73
	ld (ix+#0e),b
.lba76
	cpl
	and #03
.lba7a equ $ + 1
	ld a,#38
	jr nz,lba87
	ld a,(lb6f0)
	xor #08
	ld (lb73d),a
	ld a,#07
.lba87
	ld hl,lba9c
	xor (hl)
	and (ix+#1f)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.lba9c equ $ + 7
.lba9b equ $ + 6
.lba99 equ $ + 4
.lba97 equ $ + 2
.lba95
	db #00,#00,#00,#00,#00,#00,#00,#3f
.lbaa3 equ $ + 6
.lbaa2 equ $ + 5
.lbaa0 equ $ + 3
.lba9f equ $ + 2
.lba9e equ $ + 1
.lba9d
	db #0f,#0f,#0f,#00,#00,#00,#00,#00
.lbaac equ $ + 7
.lbaaa equ $ + 5
.lbaa9 equ $ + 4
.lbaa8 equ $ + 3
.lbaa6 equ $ + 1
	db #00,#00,#00,#00,#3f,#10,#00,#10
	db #00
.lbaae
	db #00,#00
.lbab0
	db #fd
.lbab1
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
.lbb71
	db #10,#11,#14,#17,#1b,#1f,#22,#25
	db #28,#2b,#2d,#2f,#31,#33,#35,#39
	db #00,#87,#00,#03,#07,#87,#00,#04
	db #07,#87,#00,#03,#07,#0c,#87,#00
	db #04,#07,#0c,#87,#07,#0c,#0f,#87
	db #07,#0c,#10,#87,#03,#07,#0c,#87
	db #04,#07,#0c,#87,#00,#0c,#87,#00
	db #04,#87,#00,#03,#87,#00,#05,#87
	db #00,#07,#87,#00,#00,#0c,#0c,#87
	db #00,#03,#07,#0a,#87
.lbbbe
	db #00
.lbbbf
.music_end
	db #00
.lbbc0
	db #00
.lbbc1
	db #00
.lbbc2
	db #00
; sound effects	lbbc3
	ld hl,lbbc0
	ld (hl),#00
	ld hl,lbccb
	add a
	add l
	ld l,a
	jr nc,lbbd1
	inc h
.lbbd1
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#11
	ld hl,lbe47
.lbbd9
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lbbd9
	ld a,(lbe48)
	ld (lbe58),a
	ld hl,(lbe49)
	ld (lbaa2),hl
	ld de,(lbe4b)
	ld (lbaa6),de
	ld a,l
	ld (lbaa8),a
	ld a,(lbe4e)
	ld (lbaa9),a
	ld a,(lbe4d)
	ld e,a
	ld d,#0c
	call lb7f1
	ld a,(lbe57)
	ld e,a
	ld d,#0d
	call lb7f1
	ld hl,lbbc0
	inc (hl)
	ret
	ld a,#01
	ld (lbbc1),a
	ld hl,#0fff
	ld (lbaae),hl
	ret
	xor a
	ld (lbbc1),a
	ld (lba9e),a
	ld e,a
	ld d,#09
	jp lb7f1
.lbc2d
	ld (lbbc0),a
	jp lb7d6
.lbc33
	call lbe5a
	ld a,(lbbc0)
	and a
	ret z
	ld a,(lbe47)
	and a
	jr z,lbc2d
	dec a
	ld (lbe47),a
	ld a,(lbe58)
	and a
	jr nz,lbc7a
	ld a,(lbe55)
	and a
	ret z
	dec a
	ld (lbe55),a
	ld a,(lbe48)
	ld (lbe58),a
	ld a,(lbe56)
	and a
	jr z,lbc63
	ld a,(lbe75)
.lbc63
	ld b,a
	ld a,(lbe49)
	add b
	ld (lbaa2),a
	ld a,(lbe4a)
	add b
	and #0f
	ld (lbaa3),a
	ld hl,(lbe4b)
	ld (lbaa6),hl
.lbc7a
	ld hl,lbe58
	dec (hl)
	ld a,(lbe53)
	and a
	jr z,lbca1
	jp p,lbc94
	ld hl,(lbaa2)
	ld de,(lbe4f)
	add hl,de
	ld (lbaa2),hl
	jr lbca1
.lbc94
	ld hl,(lbaa2)
	ld de,(lbe4f)
	and a
	sbc hl,de
	ld (lbaa2),hl
.lbca1
	ld a,(lbe54)
	and a
	jr z,lbcc4
	jp p,lbcb7
	ld hl,(lbaa6)
	ld de,(lbe51)
	add hl,de
	ld (lbaa6),hl
	jr lbcc4
.lbcb7
	ld hl,(lbaa6)
	ld de,(lbe51)
	and a
	sbc hl,de
	ld (lbaa6),hl
.lbcc4
	ld a,(lbaa2)
	ld (lbaa8),a
	ret
.lbccb
	dw lbcf3,lbd04,lbd15,lbd26
	dw lbd37,lbd48,lbd59,lbd6a
	dw lbd7b,lbd8c,lbd9d,lbdae
	dw lbdbf,lbdd0,lbde1,lbdf2
	dw lbe03,lbe14,lbe25,lbe36
.lbcf3
	db #46,#09,#01,#04,#01,#07,#23,#f2
	db #61,#00,#70,#00,#01,#01,#50,#00
	db #00
.lbd04
	db #32,#11,#01,#02,#06,#01,#14,#fa
	db #20,#00,#10,#00,#01,#01,#0a,#00
	db #00
.lbd15
	db #1f,#07,#c1,#01,#81,#03,#11,#fa
	db #20,#00,#18,#00,#01,#01,#3c,#00
	db #00
.lbd26
	db #50,#0d,#81,#00,#11,#02,#23,#fa
	db #06,#00,#14,#00,#01,#01,#ff,#00
	db #00
.lbd37
	db #3c,#63,#00,#00,#01,#00,#28,#d2
	db #01,#00,#01,#00,#ff,#ff,#00,#00
	db #00
.lbd48
	db #50,#0f,#01,#02,#11,#02,#1e,#fa
	db #18,#00,#14,#00,#01,#01,#ff,#00
	db #00
.lbd59
	db #46,#0f,#81,#00,#91,#00,#23,#fa
	db #18,#00,#1c,#00,#ff,#ff,#ff,#00
	db #00
.lbd6a
	db #46,#0a,#81,#01,#91,#01,#28,#fa
	db #48,#00,#4c,#00,#ff,#ff,#ff,#00
	db #00
.lbd7b
	db #46,#14,#81,#01,#91,#01,#28,#fa
	db #48,#00,#4c,#00,#ff,#ff,#ff,#00
	db #00
.lbd8c
	db #3c,#0a,#09,#00,#0c,#00,#19,#fa
	db #08,#00,#08,#00,#ff,#ff,#0a,#00
	db #00
.lbd9d
	db #3c,#06,#0b,#02,#0e,#04,#28,#fa
	db #40,#00,#40,#00,#01,#01,#0f,#01
	db #00
.lbdae
	db #46,#1a,#c1,#00,#a1,#00,#1e,#fa
	db #04,#00,#05,#00,#01,#01,#03,#00
	db #00
.lbdbf
	db #19,#06,#0b,#01,#10,#01,#0f,#f2
	db #18,#00,#14,#00,#ff,#ff,#05,#01
	db #00
.lbdd0
	db #19,#07,#00,#04,#10,#04,#0f,#fa
	db #98,#00,#98,#00,#ff,#ff,#05,#00
	db #00
.lbde1
	db #50,#14,#90,#00,#4f,#00,#1e,#fa
	db #01,#00,#01,#00,#01,#01,#ff,#00
	db #00
.lbdf2
	db #1e,#63,#1f,#02,#10,#02,#05,#d7
	db #00,#00,#00,#00,#01,#01,#00,#00
	db #0e
.lbe03
	db #19,#1a,#05,#02,#21,#02,#05,#d6
	db #21,#00,#21,#00,#01,#01,#63,#00
	db #0e
.lbe14
	db #14,#07,#aa,#00,#ae,#00,#11,#fa
	db #20,#00,#20,#00,#ff,#ff,#06,#00
	db #00
.lbe25
	db #32,#0a,#0a,#00,#0e,#00,#16,#d2
	db #04,#00,#04,#00,#ff,#01,#0a,#01
	db #00
.lbe36
	db #50,#06,#81,#00,#86,#00,#28,#d2
	db #24,#00,#29,#00,#ff,#ff,#15,#00
	db #00
.lbe47
	db #00
.lbe48
	db #00
.lbe49
	db #00
.lbe4a
	db #00
.lbe4b
	db #00,#00
.lbe4d
	db #00
.lbe4e
	db #00
.lbe4f
	db #00,#00
.lbe51
	db #00,#00
.lbe53
	db #00
.lbe54
	db #00
.lbe55
	db #00
.lbe56
	db #00
.lbe57
	db #00
.lbe58
	db #00,#00
.lbe5a
	ld a,(lbe75)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lbe78
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lbe78 equ $ + 3
.lbe75
	db #ce,#df,#d2,#51
.lbe79
	db #05
	dw lbe80,lbe92,lbea0
.lbe80
	dw lbea8,lbed8,lbefd,lbf22
	dw lbea8,lbed8,lbefd,lbf47
	dw #0000
.lbe92
	dw lbff5,lbf6c,lbff8,lbf6c
	dw lbffb,lbf6c,#0000
.lbea0
	dw lbf89,lbfd8,lbfa6,#0000
.lbea8
	db #8a,#c0,#88,#01,#01,#82,#e0,#df
	db #00,#11,#05,#0c,#0c,#18,#18,#8d
	db #0c,#0c,#18,#18,#0c,#0c,#18,#18
	db #8d,#0c,#18,#18,#18,#0c,#0c,#18
	db #18,#8d,#0c,#0c,#18,#18,#0c,#0c
	db #18,#18,#8d,#0b,#0b,#17,#17,#87
.lbed8
	db #09,#09,#15,#15,#8d,#09,#09,#15
	db #15,#09,#09,#15,#15,#8d,#09,#15
	db #15,#15,#09,#09,#15,#15,#8d,#09
	db #09,#15,#15,#09,#09,#15,#15,#8d
	db #0b,#0b,#17,#17,#87
.lbefd
	db #05,#05,#11,#11,#8d,#05,#05,#11
	db #11,#05,#05,#11,#11,#8d,#05,#11
	db #11,#11,#05,#05,#11,#11,#8d,#05
	db #05,#11,#11,#05,#05,#11,#11,#8d
	db #0b,#0b,#17,#17,#87
.lbf22
	db #07,#07,#13,#13,#8d,#07,#07,#13
	db #13,#07,#07,#13,#13,#8d,#07,#13
	db #13,#13,#07,#07,#13,#13,#8d,#07
	db #07,#13,#13,#07,#07,#13,#13,#8d
	db #0b,#0b,#17,#17,#87
.lbf47
	db #13,#13,#1f,#1f,#8d,#13,#13,#1f
	db #1f,#13,#13,#1f,#1f,#8d,#13,#1f
	db #1f,#1f,#13,#13,#1f,#1f,#8d,#13
	db #13,#1f,#1f,#13,#13,#1f,#1f,#8d
	db #17,#17,#23,#23,#87
.lbf6c
	db #8a,#88,#01,#01,#82,#ff,#de,#00
	db #91,#04,#c4,#30,#c3,#2d,#c4,#29
	db #c4,#2b,#c4,#30,#c3,#2d,#c4,#35
	db #84,#08,#50,#37,#87
.lbf89
	db #8a,#88,#01,#01,#82,#de,#00,#51
	db #04,#ce,#e3,#28,#e1,#26,#e5,#28
	db #e3,#2b,#e3,#28,#e1,#26,#e5,#28
	db #e3,#2b,#e3,#2d,#87
.lbfa6
	db #e3,#2d,#e1,#2b,#e5,#2d,#e3,#2f
	db #f3,#30,#e1,#2f,#e5,#30,#e3,#34
	db #e0,#26,#29,#2d,#30,#29,#2d,#30
	db #34,#2d,#30,#34,#37,#30,#34,#37
	db #3b,#34,#37,#3b,#3e,#37,#3b,#3e
	db #41,#43,#41,#40,#3e,#3c,#3b,#39
	db #37,#87
.lbfd8
	db #8c,#c9,#e0,#de,#00,#12,#07,#8d
	db #54,#58,#5b,#5e,#8d,#48,#4c,#4f
	db #53,#8d,#54,#58,#5b,#5e,#de,#00
	db #51,#04,#8a,#ce,#87
.lbff5
	db #89,#03,#87
.lbff8
	db #89,#04,#87
.lbffb
	db #89,#05,#87
;
; #28b3
; push de
; push hl
; push ix
; push iy
; call #b6dc	; play
; pop iy
; pop ix
; pop hl
; pop de
; pop bc
; pop af
; init &b628
;
.music_info
	db "Shadow Skimmer (1987)(The Edge)(David Whittaker)",0
	db "",0

	read "music_end.asm"
