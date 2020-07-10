; Music of Loopz (1991)(Audiogenic)(David Whittaker)()
; Ripped by Megachur the 09/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "LOOPZ.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #a54a
FIRST_THEME				equ 0
LAST_THEME				equ 20

	read "music_header.asm"

	jp la560	; init 
	jp la65c	; play
.la550
	jp la7cd	; stop
	jp lad2c
	jp la7e4
.la55f equ $ + 6
.la55e equ $ + 5
.la55d equ $ + 4
.la55c equ $ + 3
.la55b equ $ + 2
.la55a equ $ + 1
.la559
.music_end
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.la560
;
	push af
	call la550
	pop af
	ld c,a
	ld hl,laad1
	cp #00
	jr z,la575
	cp #07
	jr z,la575
	cp #08
	jr nz,la579
.la575
	ld (hl),#00
	jr la58e
.la579
	cp #09
	jr z,la585
	cp #0d
	jr z,la585
	cp #11
	jr nz,la58e
.la585
	inc (hl)
	ld a,(hl)
	cp #04
	jr nz,la58d
	xor a
	ld (hl),a
.la58d
	add c
.la58e
	ld c,a
	add a
	add c
	add a
	add c
	ld c,a
	ld b,#00
	ld hl,lb30a
	add hl,bc
	ld a,(hl)
	ld (la55c),a
	ld (la55b),a
	inc hl
	ld ix,la5f6
	ld c,#22
	ld a,#03
.la5aa
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	push hl
	ld (ix+#10),#01
	ld (ix+#00),b
	ld (ix+#1d),b
	ld (ix+#1f),b
	ld (ix+#20),b
	ld hl,labba
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
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
	jr nz,la5aa
	ld (la9ef),a
	dec a
	ld (laad0),a
	ld (la559),a
	ret
.la5f6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#09
.la618
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#12
.la63a
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#24
;
.play_music
.la65c
;
	ld a,(la559)
	ld hl,la55d
	or (hl)
	inc hl
	or (hl)
	inc hl
	or (hl)
	ret z
	call lae49
	ld a,(la559)
	and a
	jr z,la6c3
.la672 equ $ + 1
	ld a,#00
	ld (la6bf),a
	ld a,(la55c)
	ld hl,laad0
	add (hl)
	ld (hl),a
	jr nc,la697
	ld b,#00
	ld ix,la5f6
	call la8f7
	ld ix,la618
	call la8f7
	ld ix,la63a
	call la8f7
.la697
	ld ix,la5f6
	call la9bc
	ld (laad2),hl
	ld (laada),a
	ld ix,la618
	call la9bc
	ld (laad4),hl
	ld (laadb),a
	ld ix,la63a
	call la9bc
	ld (laad6),hl
	ld (laadc),a
.la6bf equ $ + 1
	ld a,#00
	ld (laad8),a
.la6c3
	ld a,(la559)
	and a
	jr nz,la6d9
	ld (laada),a
	ld (laadb),a
	ld (laadc),a
	ld a,#3f
	ld (laad9),a
	jr la701
.la6d9
	ld a,(la55a)
	and #0f
	xor #0f
	jr z,la701
	ld b,a
	ld a,(laada)
	sub b
	jr nc,la6ea
	xor a
.la6ea
	ld (laada),a
	ld a,(laadb)
	sub b
	jr nc,la6f4
	xor a
.la6f4
	ld (laadb),a
	ld a,(laadc)
	sub b
	jr nc,la6fe
	xor a
.la6fe
	ld (laadc),a
.la701
	ld a,(la55d)
	and a
	jr z,la729
	ld hl,(laadf)
	ld (laad2),hl
	ld a,(lb2b2)
	ld b,a
	bit 3,a
	jr nz,la71b
	ld a,(laae5)
	ld (laad8),a
.la71b
	ld hl,laad9
	ld a,(hl)
	or #09
	and b
	ld (hl),a
	ld a,(laae7)
	ld (laada),a
.la729
	ld a,(la55e)
	and a
	jr z,la753
	ld hl,(laae1)
	ld (laad4),hl
	ld a,(lb2c7)
	ld b,a
	bit 3,a
	jr nz,la743
	ld a,(laae5)
	ld (laad8),a
.la743
	ld hl,laad9
	ld a,(hl)
	or #12
	rlc b
	and b
	ld (hl),a
	ld a,(laae8)
	ld (laadb),a
.la753
	ld a,(la55f)
	and a
	jr z,la77f
	ld hl,(laae3)
	ld (laad6),hl
	ld a,(lb2dc)
	ld b,a
	bit 3,a
	jr nz,la76d
	ld a,(laae5)
	ld (laad8),a
.la76d
	ld hl,laad9
	ld a,(hl)
.la771
	or #24
	rlc b
	rlc b
	and b
	ld (hl),a
	ld a,(laae9)
	ld (laadc),a
.la77f
	ld hl,laadc
	ld d,#0a
.la784
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
	jp p,la784
	ret
.la7a5
	ld de,#0a00
.la7a8
	call la7b2
	dec d
	jp p,la7a8
	ld de,#073f
.la7b2
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
;
.stop_music
.la7cd
;
	xor a
	ld (la559),a
	call la7e4
	xor a
	ld (laada),a
	ld (laadb),a
	ld (laadc),a
	ld a,#0e
	ld (la55a),a
	ret
.la7e4
	xor a
	ld (la55d),a
	ld (la55e),a
	ld (la55f),a
	jp la7a5
	db #f0,#de,#d7,#e1,#a4,#00,#00,#3b
	db #c4,#b5,#7a,#64,#8c,#dd,#30,#ea
	db #eb,#f0,#b3,#13,#0a,#01,#1a,#13
	ld (la55a),a
	jp la904
	ld a,(de)
	inc de
	ld (la55c),a
	jp la904
	ld a,(de)
	ld (ix+#03),a
	ld l,a
	inc de
	ld a,(de)
	ld (ix+#04),a
	ld h,a
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ix+#05),#02
	ld (ix+#06),b
	jp la904
	pop hl
	jp la550
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
	jr nz,la855
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.la855
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp la904
	ld a,(ix+#21)
	ld c,a
	and #07
	ld hl,laa9b
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jp la904
	ld a,(ix+#21)
	ld c,a
	and #38
	ld hl,laa9b
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	xor a
	ld (ix+#1e),a
	jp la904
	ld hl,laa9b
	ld a,(ix+#21)
	cpl
	and (hl)
	ld (hl),a
	ld a,#01
	ld (ix+#1e),a
	jr la904
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr la904
	ld a,(de)
	inc de
	ld (la9ef),a
	jr la904
	ld a,(de)
	inc de
	ld (ix+#20),a
	jr la904
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	ld (ix+#1c),a
	inc de
	ld (ix+#1d),#40
	jr la904
	ld (ix+#1d),b
	jr la904
	ld (ix+#1d),#c0
	jr la904
	set 1,(ix+#00)
	jr la904
	ld (ix+#13),b
	res 5,(ix+#00)
	jr la933
	jr la92f
	ld (ix+#1f),#ff
	jr la904
	ld (ix+#1f),b
	jr la904
.la8f7
	dec (ix+#10)
	ret nz
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.la904
	ld a,(de)
	inc de
	and a
	jp m,la971
	ld (ix+#12),a
	bit 0,(ix+#1e)
	jr z,la916
	ld (la672),a
.la916
	ld l,(ix+#14)
	ld (ix+#16),l
	ld h,(ix+#15)
	ld (ix+#17),h
	ld a,(hl)
	ld (ix+#18),a
	ld (ix+#13),a
	ld a,(ix+#0f)
	ld (ix+#19),a
.la92f
	set 5,(ix+#00)
.la933
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ld a,(ix+#1f)
	and a
	jr z,la970
	ld a,(la55d)
	and a
	jr z,la952
	ld a,(lb2b2)
	bit 3,a
	jr z,la970
.la952
	ld a,(la55e)
	and a
	jr z,la95f
	ld a,(lb2c7)
	bit 3,a
	jr z,la970
.la95f
	ld a,(la55f)
	and a
	jr z,la96c
	ld a,(lb2dc)
	bit 3,a
	jr z,la970
.la96c
	ld (ix+#1f),#ff
.la970
	ret
.la971
	cp #c0
	jr c,la9b4
	add #20
	jr c,la995
	add #10
	jr c,la99c
	add #10
	ld c,a
	ld hl,labab
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	jp la904
.la995
	inc a
	ld (ix+#11),a
	jp la904
.la99c
	ld hl,labe5
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
	jp la904
.la9b4
	ld hl,la771
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.la9bc
	ld c,(ix+#00)
	bit 5,c
	jr z,la9ee
	ld a,(ix+#19)
	sub #01
	ld (ix+#19),a
	jr nc,la9e8
	ld a,(ix+#0f)
	ld (ix+#19),a
	ld l,(ix+#16)
	ld h,(ix+#17)
	inc hl
	ld a,(hl)
	and a
	jp m,la9e8
	ld (ix+#16),l
	ld (ix+#17),h
	ld (ix+#18),a
.la9e8
	ld a,(ix+#18)
	ld (ix+#13),a
.la9ef equ $ + 1
.la9ee
	ld a,#00
	add (ix+#12)
	add (ix+#20)
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	inc hl
	and a
	jp p,laa0b
	ld l,(ix+#09)
	ld h,(ix+#0a)
	and #7f
.laa0b
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
	ld hl,laaeb
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,laa6c
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,laa35
	bit 0,c
	jr nz,laa53
.laa35
	bit 5,l
	jr nz,laa45
	sub (ix+#1b)
	jr nc,laa50
	set 5,(ix+#1d)
	sub a
	jr laa50
.laa45
	add (ix+#1b)
	cp b
	jr c,laa50
	res 5,(ix+#1d)
	ld a,b
.laa50
	ld (ix+#1c),a
.laa53
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,laa5e
	dec d
.laa5e
	add #a0
	jr c,laa6a
.laa62
	sla e
	rl d
	add #18
	jr nc,laa62
.laa6a
	add hl,de
	ex de,hl
.laa6c
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,laa97
	ld b,(ix+#0e)
	djnz laa94
	ld c,(ix+#0d)
	bit 7,c
	jr z,laa83
	dec b
.laa83
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr laa97
.laa94
	ld (ix+#0e),b
.laa97
	cpl
	and #03
.laa9b equ $ + 1
	ld a,#38
	jr nz,laaa8
	ld a,(la672)
	xor #08
	ld (la6bf),a
	ld a,#07
.laaa8
	ld hl,laad9
	xor (hl)
	and (ix+#21)
	xor (hl)
	ld (hl),a
	ld a,(ix+#1f)
	and a
	jp p,laacb
	and #7f
	ld (ix+#1f),a
	ld a,(ix+#21)
	and #38
	xor #ff
	and (hl)
	ld (hl),a
	ld a,#41
	ld (la6bf),a
.laacb
	ex de,hl
	ld a,(ix+#13)
	ret
.laad6 equ $ + 6
.laad4 equ $ + 4
.laad2 equ $ + 2
.laad1 equ $ + 1
.laad0
	db #00,#00,#00,#00,#00,#00,#00,#00
.laadf equ $ + 7
.laadc equ $ + 4
.laadb equ $ + 3
.laada equ $ + 2
.laad9 equ $ + 1
.laad8
	db #00,#3f,#0f,#0f,#0f,#00,#00,#00
.laae7 equ $ + 7
.laae5 equ $ + 5
.laae4 equ $ + 4
.laae3 equ $ + 3
.laae2 equ $ + 2
.laae1 equ $ + 1
.laae0
	db #00,#00,#00,#00,#00,#00,#3f,#00
.laae9 equ $ + 1
.laae8
	db #00,#00,#00
.laaeb
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
.labab
	db #0f,#0f,#11,#13,#15,#17,#19,#1b
.labba equ $ + 7
	db #1d,#1f,#20,#21,#22,#23,#24,#80
	db #00,#03,#87,#00,#04,#87,#04,#07
	db #8a,#00,#04,#8a,#07,#0c,#8f,#07
	db #0c,#90,#03,#07,#8c,#04,#07,#8c
	db #00,#8c,#00,#83,#00,#84,#00,#85
	db #00,#87,#0c,#00,#00,#00,#00,#00
	db #00,#80
.labe5
	dw lac06,lac28,lac38,lac5e
	dw lac65,lac8b,lacb5,lacbb
	dw lacc2,lacd3,lace4,lacf5
	dw lad01,lad06,lad18,lad1c
.lac06 equ $ + 1
	db #01,#0e,#0d,#0c,#0b,#0d,#0c,#0b
	db #0a,#0c,#0b,#0a,#09,#0b,#0a,#09
	db #08,#09,#08,#07,#06,#08,#07,#06
	db #05,#07,#06,#05,#04,#06,#05,#03
.lac28 equ $ + 3
	db #01,#87,#05,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.lac38 equ $ + 3
	db #01,#87,#01,#0f,#0e,#0d,#0b,#0e
	db #0d,#0c,#0b,#0d,#0c,#0b,#0a,#0c
	db #0b,#0a,#09,#0b,#0a,#09,#08,#09
	db #08,#07,#06,#08,#07,#06,#05,#07
	db #06,#05,#04,#06,#05,#03,#01,#87
.lac5e equ $ + 1
	db #01,#0d,#0f,#0d,#0c,#0b,#87,#04
.lac65
	db #0f,#0e,#0d,#0b,#0e,#0d,#0c,#0b
	db #0d,#0c,#0b,#0a,#0c,#0b,#0a,#09
	db #0b,#0a,#09,#08,#09,#08,#07,#06
	db #08,#07,#06,#05,#07,#06,#05,#04
.lac8b equ $ + 6
	db #06,#05,#03,#01,#87,#04,#0e,#0d
	db #0c,#0b,#0a,#0d,#0c,#0b,#0a,#09
	db #0c,#0b,#0a,#09,#08,#0b,#0a,#09
	db #08,#07,#0a,#09,#08,#07,#06,#09
	db #08,#07,#06,#05,#08,#07,#06,#05
	db #04,#07,#06,#05,#03,#01,#87,#02
.lacbb equ $ + 6
.lacb5
	db #04,#06,#08,#0a,#87,#02,#04,#06
.lacc2 equ $ + 5
	db #08,#0a,#0b,#87,#08,#0f,#0e,#0d
	db #0c,#0b,#0a,#09,#08,#07,#06,#05
.lacd3 equ $ + 6
	db #04,#03,#02,#01,#87,#0a,#0f,#0e
	db #0d,#0c,#0b,#0a,#09,#08,#07,#06
.lace4 equ $ + 7
	db #05,#04,#03,#02,#01,#87,#0e,#0f
	db #0e,#0d,#0c,#0b,#0a,#09,#08,#07
	db #06,#05,#04,#03,#02,#01,#87,#08
.lacf5
	db #0a,#0b,#0c,#0d,#0d,#0e,#0e,#0d
.lad01 equ $ + 4
	db #0d,#0c,#87,#01,#08,#0a,#0b,#87
.lad06 equ $ + 1
	db #01,#0f,#0f,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
.lad1c equ $ + 7
.lad18 equ $ + 3
	db #01,#87,#01,#0c,#0d,#87,#02,#0f
	db #0e,#0d,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #87
.lad2c
	ld hl,lad35
	ld b,#00
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.lad35
	inc bc
	ld e,l
	or a
	ld hl,la55d
	ld (hl),#00
	ld hl,lb075
	add a
	add l
	ld l,a
	jr nc,lad46
	inc h
.lad46
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lb2ac
.lad4e
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lad4e
	ld a,(lb2ad)
	ld (lb2ba),a
	ld hl,(lb2ae)
	ld (laadf),hl
	ld a,(lb2b2)
	bit 3,a
	jr nz,lad6b
	ld a,l
	ld (laae5),a
.lad6b
	ld a,(lb2b7)
	ld (lb2bb),a
	ld a,(lb2b9)
	ld (lb2c0),a
	ld a,(lb2b6)
	ld hl,lb215
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lb2bc),hl
	ld (lb2be),hl
	ld a,(hl)
	ld (laae7),a
	ld hl,la55d
	inc (hl)
	ret
	ld hl,la55e
	ld (hl),#00
	ld hl,lb075
	add a
	add l
	ld l,a
	jr nc,lada1
	inc h
.lada1
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lb2c1
.lada9
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lada9
	ld a,(lb2c2)
	ld (lb2cf),a
	ld hl,(lb2c3)
	ld (laae1),hl
	ld a,(lb2c7)
	bit 3,a
	jr nz,ladc6
	ld a,l
	ld (laae5),a
.ladc6
	ld a,(lb2cc)
	ld (lb2d0),a
	ld a,(lb2ce)
	ld (lb2d5),a
	ld a,(lb2cb)
	ld hl,lb215
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lb2d1),hl
	ld (lb2d3),hl
	ld a,(hl)
	ld (laae8),a
	ld hl,la55e
	inc (hl)
	ret
	ld hl,la55f
	ld (hl),#00
	ld hl,lb075
	add a
	add l
	ld l,a
	jr nc,ladfc
	inc h
.ladfc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld b,#0e
	ld hl,lb2d6
.lae04
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz lae04
	ld a,(lb2d7)
	ld (lb2e4),a
	ld hl,(lb2d8)
	ld (laae3),hl
	ld a,(lb2dc)
	bit 3,a
	jr nz,lae21
	ld a,l
	ld (laae5),a
.lae21
	ld a,(lb2e1)
	ld (lb2e5),a
	ld a,(lb2e3)
	ld (lb2ea),a
	ld a,(lb2e0)
	ld hl,lb215
	add a
	ld c,a
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (lb2e6),hl
	ld (lb2e8),hl
	ld a,(hl)
	ld (laae9),a
	ld hl,la55f
	inc (hl)
	ret
.lae49
	call lb2eb
	ld a,(la55d)
	and a
	call nz,laf11
	ld a,(la55e)
	and a
	call nz,lafc3
	ld a,(la55f)
	and a
	ret z
	ld a,(lb2d6)
	and a
	jr nz,lae6f
	ld a,(lb2e2)
	and a
	jr nz,lae6f
	ld (la55f),a
	ret
.lae6f
	dec a
	ld (lb2d6),a
	ld a,(lb2e4)
	and a
	jr nz,laea7
	ld a,(lb2e2)
	and a
	jr nz,lae85
	ld a,(lb2df)
	and a
	jr z,laee9
.lae85
	dec a
	ld (lb2df),a
	ld a,(lb2d7)
	ld (lb2e4),a
	ld a,(lb2dd)
	and a
	jr z,lae98
	ld a,(lb308)
.lae98
	ld b,a
	ld a,(lb2d8)
	add b
	ld (laae3),a
	ld a,(lb2d9)
	add b
	ld (laae4),a
.laea7
	ld hl,lb2e4
	dec (hl)
	ld hl,lb2e3
	ld a,(hl)
	and a
	jr z,laeb9
	ld hl,lb2ea
	dec (hl)
	jr nz,laedc
	ld (hl),a
.laeb9
	ld a,(lb2de)
	and a
	jr z,laedc
	jp p,laecf
	ld hl,(laae3)
	ld de,(lb2da)
	add hl,de
	ld (laae3),hl
	jr laedc
.laecf
	ld hl,(laae3)
	ld de,(lb2da)
	and a
	sbc hl,de
	ld (laae3),hl
.laedc
	ld a,(lb2dc)
	bit 3,a
	jr nz,laee9
	ld a,(laae3)
	ld (laae5),a
.laee9
	ld a,(lb2e5)
	dec a
	ld (lb2e5),a
	jr nz,laf10
	ld a,(lb2e1)
	ld (lb2e5),a
	ld hl,(lb2e8)
	ld a,(hl)
	inc hl
	and a
	jp p,laf0a
	cp #80
	jr nz,laf10
	ld hl,(lb2e6)
	ld a,(hl)
	inc hl
.laf0a
	ld (lb2e8),hl
	ld (laae9),a
.laf10
	ret
.laf11
	ld a,(lb2ac)
	and a
	jr nz,laf21
	ld a,(lb2b8)
	and a
	jr nz,laf21
	ld (la55d),a
	ret
.laf21
	dec a
	ld (lb2ac),a
	ld a,(lb2ba)
	and a
	jr nz,laf59
	ld a,(lb2b8)
	and a
	jr nz,laf37
	ld a,(lb2b5)
	and a
	jr z,laf9b
.laf37
	dec a
	ld (lb2b5),a
	ld a,(lb2ad)
	ld (lb2ba),a
	ld a,(lb2b3)
	and a
	jr z,laf4a
	ld a,(lb306)
.laf4a
	ld b,a
	ld a,(lb2ae)
	add b
	ld (laadf),a
	ld a,(lb2af)
	add b
	ld (laae0),a
.laf59
	ld hl,lb2ba
	dec (hl)
	ld hl,lb2b9
	ld a,(hl)
	and a
	jr z,laf6b
	ld hl,lb2c0
	dec (hl)
	jr nz,laf8e
	ld (hl),a
.laf6b
	ld a,(lb2b4)
	and a
	jr z,laf8e
	jp p,laf81
	ld hl,(laadf)
	ld de,(lb2b0)
	add hl,de
	ld (laadf),hl
	jr laf8e
.laf81
	ld hl,(laadf)
	ld de,(lb2b0)
	and a
	sbc hl,de
	ld (laadf),hl
.laf8e
	ld a,(lb2b2)
	bit 3,a
	jr nz,laf9b
	ld a,(laadf)
	ld (laae5),a
.laf9b
	ld a,(lb2bb)
	dec a
	ld (lb2bb),a
	jr nz,lafc2
	ld a,(lb2b7)
	ld (lb2bb),a
	ld hl,(lb2be)
	ld a,(hl)
	inc hl
	and a
	jp p,lafbc
	cp #80
	jr nz,lafc2
	ld hl,(lb2bc)
	ld a,(hl)
	inc hl
.lafbc
	ld (lb2be),hl
	ld (laae7),a
.lafc2
	ret
.lafc3
	ld a,(lb2c1)
	and a
	jr nz,lafd3
	ld a,(lb2cd)
	and a
	jr nz,lafd3
	ld (la55e),a
	ret
.lafd3
	dec a
	ld (lb2c1),a
	ld a,(lb2cf)
	and a
	jr nz,lb00b
	ld a,(lb2cd)
	and a
	jr nz,lafe9
	ld a,(lb2ca)
	and a
	jr z,lb04d
.lafe9
	dec a
	ld (lb2ca),a
	ld a,(lb2c2)
	ld (lb2cf),a
	ld a,(lb2c8)
	and a
	jr z,laffc
	ld a,(lb307)
.laffc
	ld b,a
	ld a,(lb2c3)
	add b
	ld (laae1),a
	ld a,(lb2c4)
	add b
	ld (laae2),a
.lb00b
	ld hl,lb2cf
	dec (hl)
	ld hl,lb2ce
	ld a,(hl)
	and a
	jr z,lb01d
	ld hl,lb2d5
	dec (hl)
	jr nz,lb040
	ld (hl),a
.lb01d
	ld a,(lb2c9)
	and a
	jr z,lb040
	jp p,lb033
	ld hl,(laae1)
	ld de,(lb2c5)
	add hl,de
	ld (laae1),hl
	jr lb040
.lb033
	ld hl,(laae1)
	ld de,(lb2c5)
	and a
	sbc hl,de
	ld (laae1),hl
.lb040
	ld a,(lb2c7)
	bit 3,a
	jr nz,lb04d
	ld a,(laae1)
	ld (laae5),a
.lb04d
	ld a,(lb2d0)
	dec a
	ld (lb2d0),a
	jr nz,lb074
	ld a,(lb2cc)
	ld (lb2d0),a
	ld hl,(lb2d3)
	ld a,(hl)
	inc hl
	and a
	jp p,lb06e
	cp #80
	jr nz,lb074
	ld hl,(lb2d1)
	ld a,(hl)
	inc hl
.lb06e
	ld (lb2d3),hl
	ld (laae8),a
.lb074
	ret
.lb075
	dw lb0a9,lb0b7,lb0c5,lb0d3
	dw lb0e1,lb0ef,lb0fd,lb10b
	dw lb119,lb127,lb135,lb143
	dw lb151,lb15f,lb16d,lb17b
	dw lb189,lb197,lb1a5,lb1b3
	dw lb1c1,lb1cf,lb1dd,lb1eb
	dw lb1f9,lb207
.lb0a9
	db #05,#02,#80,#00,#01,#00,#fe,#00
.lb0b7 equ $ + 6
	db #01,#63,#00,#01,#00,#00,#0a,#06
	db #09,#05,#11,#00,#f6,#00,#ff,#00
.lb0c5 equ $ + 4
	db #00,#01,#00,#00,#0a,#06,#18,#07
	db #09,#00,#fe,#00,#01,#63,#00,#01
.lb0d3 equ $ + 2
	db #00,#00,#03,#02,#98,#01,#01,#00
	db #fe,#00,#01,#63,#00,#01,#00,#00
.lb0e1
	db #1e,#02,#18,#02,#09,#00,#fe,#00
.lb0ef equ $ + 6
	db #01,#63,#00,#04,#00,#00,#0f,#02
	db #f7,#04,#08,#00,#fe,#00,#ff,#63
.lb0fd equ $ + 4
	db #00,#05,#00,#00,#1e,#0a,#00,#05
	db #01,#02,#fe,#00,#ff,#00,#00,#06
.lb10b equ $ + 2
	db #00,#0a,#1e,#0a,#80,#02,#01,#01
	db #fe,#00,#ff,#00,#00,#06,#00,#0a
.lb119
	db #f0,#ff,#1f,#00,#01,#00,#f6,#00
.lb127 equ $ + 6
	db #01,#ff,#08,#17,#00,#0a,#15,#0b
	db #5c,#00,#02,#00,#fe,#00,#01,#ff
.lb135 equ $ + 4
	db #08,#19,#00,#00,#08,#02,#44,#00
	db #01,#00,#fe,#00,#01,#63,#0c,#01
.lb143 equ $ + 2
	db #00,#00,#96,#ff,#10,#00,#01,#00
	db #f6,#00,#ff,#00,#00,#10,#00,#02
.lb151
	db #04,#02,#3c,#01,#01,#00,#fe,#00
.lb15f equ $ + 6
	db #01,#63,#0c,#01,#00,#00,#0e,#0f
	db #50,#00,#0e,#00,#fe,#00,#01,#63
.lb16d equ $ + 4
	db #08,#04,#00,#04,#32,#19,#40,#00
	db #05,#00,#fe,#00,#ff,#ff,#08,#0a
.lb17b equ $ + 2
	db #00,#00,#27,#0a,#3f,#00,#1e,#00
	db #fe,#00,#ff,#ff,#08,#19,#00,#05
.lb189
	db #4f,#14,#81,#01,#11,#00,#fe,#00
.lb197 equ $ + 6
	db #ff,#63,#00,#63,#00,#00,#11,#02
	db #d4,#02,#08,#00,#fe,#00,#01,#63
.lb1a5 equ $ + 4
	db #00,#63,#00,#00,#19,#63,#07,#01
	db #11,#00,#f6,#00,#01,#63,#00,#02
.lb1b3 equ $ + 2
	db #00,#00,#07,#05,#cc,#00,#21,#00
	db #f7,#00,#ff,#63,#02,#01,#00,#00
.lb1c1
	db #1e,#02,#04,#00,#01,#00,#f7,#00
.lb1cf equ $ + 6
	db #ff,#63,#00,#03,#00,#00,#07,#05
	db #cc,#00,#21,#00,#f6,#00,#ff,#63
.lb1dd equ $ + 4
	db #08,#01,#00,#00,#0f,#05,#4c,#01
	db #21,#00,#f6,#00,#ff,#63,#00,#02
.lb1eb equ $ + 2
	db #00,#00,#32,#02,#08,#00,#01,#00
	db #f7,#00,#ff,#63,#00,#04,#00,#00
.lb1f9
	db #2f,#02,#d0,#00,#10,#04,#fe,#00
.lb207 equ $ + 6
	db #01,#63,#05,#03,#00,#00,#0a,#06
	db #12,#00,#01,#00,#f7,#00,#ff,#63
.lb215 equ $ + 4
	db #0d,#01,#ff,#00,#31,#b2,#41,#b2
	db #5a,#b2,#61,#b2,#72,#b2,#78,#b2
	db #7d,#b2,#82,#b2,#84,#b2,#93,#b2
	db #97,#b2,#99,#b2,#9f,#b2,#a8,#b2
	db #0f,#0e,#0d,#0c,#0b,#0a,#09,#08
	db #07,#06,#05,#04,#03,#02,#01,#ff
	db #06,#08,#0a,#0b,#0c,#0d,#0e,#0e
	db #0e,#0d,#0d,#0c,#0c,#0b,#0b,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #ff,#06,#08,#0a,#0b,#0c,#0d,#ff
	db #06,#08,#0a,#0b,#0c,#0b,#0a,#09
	db #08,#07,#06,#05,#04,#03,#02,#01
	db #ff,#01,#04,#07,#09,#0c,#ff,#0e
	db #0e,#0e,#01,#80,#01,#04,#07,#09
	db #80,#0c,#80,#0e,#0d,#0c,#0b,#0a
	db #09,#08,#07,#06,#05,#04,#03,#02
	db #01,#ff,#0d,#09,#01,#ff,#09,#80
	db #0a,#0b,#0c,#0d,#0c,#80,#0f,#0a
	db #05,#01,#0f,#0a,#05,#00,#ff,#0f
.lb2b0 equ $ + 7
.lb2af equ $ + 6
.lb2ae equ $ + 5
.lb2ad equ $ + 4
.lb2ac equ $ + 3
	db #0b,#01,#80,#00,#00,#00,#00,#00
.lb2b8 equ $ + 7
.lb2b7 equ $ + 6
.lb2b6 equ $ + 5
.lb2b5 equ $ + 4
.lb2b4 equ $ + 3
.lb2b3 equ $ + 2
.lb2b2 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb2c0 equ $ + 7
.lb2be equ $ + 5
.lb2bc equ $ + 3
.lb2bb equ $ + 2
.lb2ba equ $ + 1
.lb2b9
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb2c8 equ $ + 7
.lb2c7 equ $ + 6
.lb2c5 equ $ + 4
.lb2c4 equ $ + 3
.lb2c3 equ $ + 2
.lb2c2 equ $ + 1
.lb2c1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb2d0 equ $ + 7
.lb2cf equ $ + 6
.lb2ce equ $ + 5
.lb2cd equ $ + 4
.lb2cc equ $ + 3
.lb2cb equ $ + 2
.lb2ca equ $ + 1
.lb2c9
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb2d8 equ $ + 7
.lb2d7 equ $ + 6
.lb2d6 equ $ + 5
.lb2d5 equ $ + 4
.lb2d3 equ $ + 2
.lb2d1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb2e0 equ $ + 7
.lb2df equ $ + 6
.lb2de equ $ + 5
.lb2dd equ $ + 4
.lb2dc equ $ + 3
.lb2da equ $ + 1
.lb2d9
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb2e8 equ $ + 7
.lb2e6 equ $ + 5
.lb2e5 equ $ + 4
.lb2e4 equ $ + 3
.lb2e3 equ $ + 2
.lb2e2 equ $ + 1
.lb2e1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb2ea equ $ + 1
	db #00,#00
.lb2eb
	ld a,(lb306)
	and #48
	adc #38
	sla a
	sla a
	ld hl,lb309
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	dec hl
	rl (hl)
	ld a,(hl)
	ret
.lb306
	rst #38
.lb307
	add b
.lb308
	dec de
.lb309
	inc (hl)
.lb30a
	db #20
	dw lb3cb,lb39d,lb3fb
	db #40
	dw lb5ad,lb5a9,lb5b1
	db #2a
	dw lb5f5,lb5f1,lb5f9
	db #20
	dw lb61e,lb61a,lb622
	db #2a
	dw lb648,lb644,lb64c
	db #26
	dw lb681,lb67d,lb685
	db #1c
	dw lb6bf,lb6bb,lb6c3
	db #30
	dw lb77e,lb726,lb78a
	db #29
	dw lb957,lb911,lb95d
	db #20
	dw lb3d3,lb3a3,lb3fd
	db #20
	dw lb3db,lb3ab,lb3ff
	db #20
	dw lb3e3,lb3b3,lb401
	db #20
	dw lb3eb,lb3bb,lb403
	db #30
	dw lb77e,lb726,lb78a
	db #30
	dw lb780,lb73c,lb78e
	db #30
	dw lb782,lb750,lb78a
	db #30
	dw lb784,lb768,lb78e
	db #29
	dw lb957,lb911,lb95d
	db #29
	dw lb957,lb915,lb95f
	db #29
	dw lb957,lb92f,lb963
	db #29
	dw lb957,lb94b,lb969
.lb3a3 equ $ + 6
.lb39d
	dw lb40c,lb418,lb42b,lb418
.lb3ab equ $ + 6
	dw lb42b,lb418,lb42b,lb418
.lb3b3 equ $ + 6
	dw lb42b,lb418,lb42b,lb438
.lb3bb equ $ + 6
	dw lb418,lb438,lb418,lb44b
	dw lb418,lb44b,lb438,lb45e
	dw lb418,lb409,#0000
.lb3cb
	dw lb47a,lb491,lb47a,lb491
.lb3d3
	dw lb47a,lb491,lb47a,lb491
.lb3db
	dw lb47a,lb491,lb47a,lb491
.lb3e3
	dw lb4a2,lb47a,lb4a2,lb47a
.lb3eb
	dw lb4b9,lb47a,lb4b9,lb4a2
	dw lb4d0,lb47a,lb477,#0000
.lb401 equ $ + 6
.lb3ff equ $ + 4
.lb3fd equ $ + 2
.lb3fb
	dw lb4f4,lb503,lb524,lb555
.lb403
	dw lb57c,lb4f1,#0000
.lb40c equ $ + 3
.lb409
	db #93,#a3,#b3,#8a,#88,#01,#01,#da
.lb418 equ $ + 7
	db #90,#ef,#13,#13,#11,#11,#87,#8a
	db #88,#01,#01,#d8,#90,#e1,#13,#e3
	db #13,#e9,#13,#e1,#13,#e3,#13,#e9
.lb42b equ $ + 2
	db #13,#87,#e1,#11,#e3,#11,#e9,#11
.lb438 equ $ + 7
	db #e1,#11,#e3,#11,#e9,#11,#87,#8a
	db #88,#01,#01,#d8,#90,#e1,#0f,#e3
	db #0f,#e9,#0f,#e1,#0f,#e3,#0f,#e9
.lb44b equ $ + 2
	db #0f,#87,#8a,#88,#01,#01,#d8,#90
	db #e1,#0c,#e3,#0c,#e9,#0c,#e1,#0c
.lb45e equ $ + 5
	db #e3,#0c,#e9,#0c,#87,#e1,#18,#e3
	db #18,#e9,#18,#e1,#14,#e3,#14,#e9
	db #14,#e1,#11,#e3,#11,#e9,#11,#e1
.lb477 equ $ + 6
	db #14,#e3,#14,#e9,#14,#87,#93,#d3
.lb47a equ $ + 1
	db #b3,#8a,#88,#01,#01,#d2,#e1,#13
	db #1a,#1f,#1a,#13,#1a,#1d,#1a,#13
	db #1a,#1f,#1a,#13,#1a,#1d,#1a,#87
.lb491
	db #11,#18,#1f,#18,#11,#18,#1d,#18
	db #11,#18,#1c,#18,#11,#18,#1d,#18
.lb4a2 equ $ + 1
	db #87,#8a,#88,#01,#01,#d2,#e1,#0f
	db #16,#1b,#16,#0f,#16,#1d,#16,#0f
	db #16,#1b,#16,#0f,#16,#1e,#16,#87
.lb4b9
	db #8a,#88,#01,#01,#d2,#e1,#0c,#13
	db #18,#13,#0c,#13,#1a,#13,#0c,#13
.lb4d0 equ $ + 7
	db #1b,#13,#0c,#13,#1a,#13,#87,#0c
	db #13,#18,#13,#0c,#13,#18,#13,#0c
	db #14,#18,#14,#0c,#14,#18,#14,#0c
	db #11,#18,#11,#0c,#11,#18,#11,#0c
	db #11,#14,#11,#0c,#11,#14,#11,#87
.lb4f4 equ $ + 3
.lb4f1
	db #93,#fd,#b3,#8a,#88,#01,#02,#dc
	db #ff,#13,#0c,#d6,#88,#01,#01,#48
.lb503 equ $ + 2
	db #8f,#87,#8a,#88,#01,#01,#d9,#ed
	db #26,#e0,#24,#22,#ed,#1f,#e0,#21
	db #22,#ed,#24,#e0,#26,#27,#eb,#29
	db #e5,#2c,#fd,#2b,#d6,#88,#01,#01
.lb524 equ $ + 3
	db #ff,#4d,#87,#8a,#88,#01,#01,#d4
	db #e1,#26,#e3,#1f,#e1,#22,#e5,#26
	db #e1,#27,#26,#1a,#1d,#e3,#22,#e1
	db #21,#e3,#1f,#e1,#24,#e3,#1d,#e1
	db #22,#e5,#24,#e1,#26,#24,#18,#1b
	db #e3,#1d,#e1,#1c,#e3,#1d,#d8,#ff
.lb555 equ $ + 4
	db #1a,#d6,#48,#87,#8a,#d9,#88,#01
	db #01,#e9,#27,#e1,#29,#27,#26,#e9
	db #22,#e5,#20,#ef,#1f,#d6,#4f,#d9
	db #e9,#27,#e1,#29,#27,#26,#eb,#27
	db #e5,#2c,#ed,#2b,#88,#01,#01,#d6
.lb57c equ $ + 3
	db #ef,#4f,#87,#8a,#ce,#d8,#88,#01
	db #01,#e0,#24,#28,#f9,#2b,#e5,#2c
	db #ed,#2b,#d7,#c0,#ef,#4b,#d2,#ce
	db #e0,#30,#34,#f9,#37,#e5,#38,#ed
	db #37,#d7,#c0,#ef,#4b,#48,#44,#41
	db #44,#43,#d6,#88,#01,#01,#4f,#87
.lb5a9
	dw lb5b5,#0000
.lb5ad
	dw lb5be,#0000
.lb5b1
	dw lb5cc,#0000
.lb5b5
	db #8a,#88,#01,#01,#d0,#e1,#12,#1e
.lb5be equ $ + 1
	db #87,#8a,#88,#01,#01,#d5,#e5,#2a
.lb5cc equ $ + 7
	db #29,#2a,#29,#e3,#2a,#25,#87,#8a
	db #db,#88,#01,#01,#ff,#2e,#2f,#2d
	db #2e,#81,#92,#07,#cc,#dd,#90,#e5
	db #1e,#1e,#1e,#1e,#e3,#1e,#1e,#e5
	db #2a,#2a,#2a,#2a,#e3,#2a,#2a,#c0
	db #92,#00,#91,#87
.lb5f1
	dw lb5fd,#0000
.lb5f5
	dw lb606,#0000
.lb5f9
	dw lb610,#0000
.lb5fd
	db #8a,#d2,#e2,#24,#30,#3c,#e6,#48
.lb606 equ $ + 1
	db #8e,#8a,#d2,#e0,#80,#e2,#27,#33
.lb610 equ $ + 3
	db #ff,#3f,#87,#8a,#d2,#e1,#80,#e2
	db #2b,#37,#ff,#43,#87
.lb61e equ $ + 4
.lb61a
	dw lb626,#0000,lb631,#0000
.lb622
	dw lb63c,#0000
.lb626
	db #8a,#d8,#88,#01,#01,#e0,#1f,#20
.lb631 equ $ + 3
	db #e7,#1f,#8e,#8a,#d8,#88,#01,#01
.lb63c equ $ + 6
	db #e0,#13,#11,#ff,#0f,#87,#8a,#d0
	db #e0,#13,#11,#ff,#0f,#87
.lb648 equ $ + 4
.lb644
	dw lb650,#0000,lb65f,#0000
.lb64c
	dw lb66e,#0000
.lb650
	db #8a,#d3,#88,#01,#01,#e1,#0e,#e0
.lb65f equ $ + 7
	db #0e,#0e,#e1,#0e,#e4,#0e,#8e,#8a
	db #d3,#88,#01,#01,#e1,#21,#e0,#21
.lb66e equ $ + 6
	db #21,#e1,#26,#e7,#2a,#87,#8a,#d3
	db #88,#01,#01,#e1,#26,#e0,#26,#26
	db #e1,#2a,#e7,#2d,#87
.lb681 equ $ + 4
.lb67d
	dw lb689,#0000,lb69b,#0000
.lb685
	dw lb6ab,#0000
.lb689
	db #8a,#d3,#88,#01,#01,#89,#07,#e1
	db #20,#e0,#20,#20,#e1,#24,#20,#e5
.lb69b equ $ + 2
	db #27,#8e,#8a,#d3,#88,#01,#01,#e1
	db #24,#e0,#24,#24,#e1,#27,#24,#e7
.lb6ab equ $ + 2
	db #2b,#87,#8a,#d3,#88,#01,#01,#e1
	db #27,#e0,#27,#27,#e1,#2b,#27,#e7
	db #2e,#87
.lb6bf equ $ + 4
.lb6bb
	dw lb6c7,#0000,lb6e3,#0000
.lb6c3
	dw lb6ff,#0000
.lb6c7
	db #8a,#d1,#88,#01,#01,#e1,#1f,#1f
	db #1f,#1f,#1f,#1f,#24,#24,#24,#24
	db #24,#24,#27,#27,#27,#e2,#27,#27
.lb6e3 equ $ + 4
	db #d8,#ff,#24,#87,#8a,#d1,#88,#01
	db #01,#e1,#24,#24,#24,#24,#24,#24
	db #27,#27,#27,#27,#27,#27,#2b,#2b
	db #2b,#e2,#2b,#2b,#d8,#ff,#27,#87
.lb6ff
	db #8a,#d3,#88,#01,#01,#e0,#30,#33
	db #37,#38,#37,#33,#e2,#30,#2e,#e0
	db #30,#33,#37,#38,#37,#33,#e2,#30
	db #2e,#e0,#30,#33,#37,#38,#37,#33
	db #e2,#30,#2e,#d8,#e7,#2b,#8e
.lb726
	dw lbaf0,lb797,lb797,lb7db
	dw lb797,lb7db,lb7db,lb797
.lb73c equ $ + 6
	dw lb797,lb7db,lb797,lbaf0
	dw lb7db,lb7db,lbaed,lb797
	dw lb797,lb7db,lb797,lb7db
.lb750 equ $ + 2
	dw lb7db,lbaed,lb797,lb797
	dw lb7db,lb797,lb7db,lb7db
	dw lbaea,lb797,lb797,lb7db
.lb768 equ $ + 2
	dw lb797,lbaea,lb7db,lb7db
	dw lb797,lb797,lb7db,lb797
	dw lb7db,lb7db,lb794,#0000
.lb784 equ $ + 6
.lb782 equ $ + 4
.lb780 equ $ + 2
.lb77e
	dw lb822,lb82c,lb832,lb868
.lb78a equ $ + 4
	dw lb81f,#0000,lb889,lb889
.lb78e
	dw lb8d3,lb886,#0000
.lb797 equ $ + 3
.lb794
	db #93,#26,#b7,#8a,#88,#01,#01,#90
	db #dd,#e1,#0c,#0c,#11,#13,#0c,#0c
	db #e0,#8b,#d0,#27,#dd,#8a,#80,#e1
	db #0a,#0c,#0c,#11,#13,#0c,#0c,#e0
	db #8b,#d0,#27,#dd,#8a,#80,#e1,#0a
	db #0c,#0c,#11,#13,#0c,#0c,#e0,#8b
	db #d0,#27,#dd,#8a,#80,#e1,#0a,#0c
	db #0c,#11,#13,#0c,#0c,#e0,#8b,#d0
.lb7db equ $ + 7
	db #27,#dd,#8a,#80,#e1,#0a,#87,#8a
	db #88,#01,#01,#90,#dd,#e1,#0f,#0f
	db #14,#16,#0f,#0f,#e0,#8b,#d0,#27
	db #dd,#8a,#80,#e1,#0e,#0f,#0f,#14
	db #16,#0f,#0f,#e0,#8b,#d0,#27,#dd
	db #8a,#80,#e1,#0e,#0f,#0f,#14,#16
	db #0f,#0f,#e0,#8b,#d0,#27,#dd,#8a
	db #80,#e1,#0e,#0f,#0f,#14,#16,#0f
	db #0f,#e0,#8b,#d0,#27,#dd,#8a,#80
.lb822 equ $ + 6
.lb81f equ $ + 3
	db #e1,#0e,#87,#93,#7e,#b7,#ff,#80
	db #80,#80,#80,#80,#80,#80,#80,#87
.lb832 equ $ + 6
.lb82c
	db #ff,#80,#80,#80,#80,#87,#8a,#de
	db #88,#01,#01,#ed,#2b,#e1,#29,#ef
	db #2b,#ed,#2e,#e1,#2b,#ef,#2e,#ed
	db #2b,#e1,#29,#ef,#2b,#ed,#30,#e1
	db #2e,#ef,#30,#ed,#2b,#e1,#29,#ef
	db #2b,#ed,#2e,#e1,#2b,#ef,#2e,#ed
	db #2b,#e1,#29,#ef,#2b,#ed,#30,#e1
.lb868 equ $ + 4
	db #2e,#ef,#30,#87,#8a,#de,#88,#01
	db #01,#ed,#27,#e1,#24,#ef,#27,#ed
	db #2b,#e1,#29,#ef,#2b,#ed,#2e,#e1
	db #2b,#ef,#2e,#ed,#2b,#e1,#29,#ef
.lb889 equ $ + 5
.lb886 equ $ + 2
	db #2b,#87,#93,#8a,#b7,#8a,#88,#01
	db #01,#d1,#e1,#0c,#13,#18,#e3,#1b
	db #1f,#e1,#1d,#e1,#18,#13,#18,#e3
	db #1f,#24,#e1,#27,#18,#1f,#16,#1d
	db #18,#1b,#14,#1b,#18,#1b,#1f,#22
	db #24,#27,#29,#2b,#e1,#0c,#13,#18
	db #e3,#1b,#1f,#e1,#1d,#e1,#18,#13
	db #18,#e3,#1f,#24,#e1,#27,#24,#2b
	db #22,#29,#24,#27,#20,#27,#24,#27
.lb8d3 equ $ + 7
	db #2b,#2e,#30,#33,#35,#37,#87,#8a
	db #d8,#88,#01,#01,#e1,#16,#1b,#1f
	db #eb,#22,#e1,#27,#20,#27,#22,#27
	db #20,#27,#e1,#22,#27,#2b,#eb,#2e
	db #e1,#33,#2c,#33,#2e,#27,#2c,#27
	db #e1,#16,#1b,#1f,#eb,#22,#e1,#27
	db #20,#27,#22,#27,#20,#27,#e1,#2e
	db #33,#37,#eb,#3a,#e1,#3f,#38,#3f
	db #3a,#33,#38,#33,#87
.lb915 equ $ + 4
.lb911
	dw lbaf3,lb976,lbaf3,lb976
	dw lb976,lb99d,lb99d,lb976
	dw lb9c4,lb9c4,lb976,lbaf6
.lb92f equ $ + 6
	dw lb976,lb976,lb976,lbaf6
	dw lb99d,lb99d,lb976,lb9c4
	dw lb9c4,lb976,lbaf9,lb976
	dw lb976,lb976,lb99d,lb99d
.lb94b equ $ + 2
	dw lb976,lbaf9,lb9c4,lb9c4
	dw lb976,lb973,#0000
.lb957
	dw lb9eb,lb9f4,#0000
.lb963 equ $ + 6
.lb95f equ $ + 2
.lb95d
	dw lba01,lba32,lba01,lba71
.lb969 equ $ + 4
	dw lba71,lba01,lbaa1,lbaa4
	dw lba01,lb9fe,#0000
.lb976 equ $ + 3
.lb973
	db #93,#11,#b9,#8a,#88,#01,#01,#d2
	db #e1,#07,#13,#07,#13,#07,#13,#07
	db #13,#07,#13,#07,#13,#07,#13,#0e
	db #12,#07,#13,#07,#13,#07,#13,#07
	db #13,#07,#13,#07,#13,#07,#13,#0b
.lb99d equ $ + 2
	db #0e,#87,#8a,#88,#01,#01,#dd,#e1
	db #0c,#13,#0c,#10,#0c,#13,#0c,#10
	db #0c,#13,#0c,#10,#0c,#13,#0c,#10
	db #07,#13,#07,#13,#07,#13,#07,#13
	db #07,#13,#07,#13,#07,#13,#0b,#0e
.lb9c4 equ $ + 1
	db #87,#8a,#88,#01,#01,#d2,#e1,#0e
	db #1a,#0e,#15,#0e,#1a,#0e,#15,#0e
	db #1a,#0e,#15,#0e,#1a,#0e,#15,#0c
	db #18,#0c,#13,#0c,#18,#0c,#13,#0c
	db #18,#0c,#13,#0c,#18,#0c,#13,#87
.lb9eb
	db #8a,#88,#01,#01,#d0,#e1,#93,#59
.lb9f4 equ $ + 1
	db #b9,#80,#1f,#e0,#8b,#27,#80,#e1
.lba01 equ $ + 6
.lb9fe equ $ + 3
	db #8a,#1f,#87,#93,#5d,#b9,#8a,#92
	db #00,#df,#88,#01,#01,#e0,#0e,#11
	db #e3,#13,#e0,#0e,#11,#e7,#13,#e0
	db #1a,#1d,#e3,#1f,#e0,#1a,#1d,#e7
	db #1f,#e0,#0e,#11,#e3,#13,#e0,#0e
	db #11,#e7,#13,#dd,#e0,#26,#29,#e3
.lba32 equ $ + 7
	db #2b,#e0,#32,#35,#e7,#37,#87,#8a
	db #df,#88,#01,#01,#e1,#17,#1a,#15
	db #1a,#17,#e0,#1a,#1c,#e1,#1e,#1a
	db #e0,#1f,#1e,#e1,#1a,#e0,#1c,#1a
	db #e1,#13,#d8,#e7,#17,#dd,#e0,#17
	db #23,#1a,#26,#15,#21,#1a,#26,#df
	db #e1,#17,#e0,#1a,#1c,#e1,#1e,#1a
	db #e0,#1f,#1e,#e1,#1a,#e0,#1c,#1a
.lba71 equ $ + 6
	db #e1,#13,#d8,#e7,#0e,#87,#8a,#dd
	db #e0,#88,#01,#01,#1c,#1e,#1f,#21
	db #23,#21,#1f,#1d,#1c,#1e,#1f,#21
	db #23,#24,#26,#27,#28,#2a,#2b,#2d
	db #2f,#2d,#2b,#29,#28,#2a,#2b,#2d
	db #2f,#30,#32,#34,#d8,#88,#01,#01
.lbaa1 equ $ + 6
	db #ef,#32,#2f,#92,#0c,#87,#8a,#dd
.lbaa4 equ $ + 1
	db #e0,#88,#01,#01,#1a,#1e,#21,#24
	db #26,#2a,#2d,#30,#1a,#1d,#20,#23
	db #26,#29,#2c,#2f,#32,#30,#2d,#2a
	db #26,#24,#21,#1e,#32,#2f,#2c,#29
	db #26,#23,#20,#1d,#18,#1c,#1f,#23
	db #24,#28,#2b,#2f,#18,#1b,#1e,#21
	db #24,#27,#2a,#2d,#30,#2f,#2b,#28
	db #24,#23,#1f,#1c,#30,#2d,#2a,#27
.lbaea equ $ + 7
	db #24,#21,#1e,#1b,#92,#0c,#87,#89
.lbaf0 equ $ + 5
.lbaed equ $ + 2
	db #fe,#87,#89,#ff,#87,#89,#00,#87
.lbaf9 equ $ + 6
.lbaf6 equ $ + 3
.lbaf3
	db #89,#01,#87,#89,#02,#87,#89,#04
	db #87,#ff,#80,#87
;
.music_info
	db "Loopz (1991)(Audiogenic)(David Whittaker)",0
	db "",0

	read "music_end.asm"
