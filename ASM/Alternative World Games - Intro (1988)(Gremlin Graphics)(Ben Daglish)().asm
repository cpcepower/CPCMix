; Music of Alternative World Games - Intro (1988)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 09/02/2008
; $VER 1.5

IFDEF FILENAME_WRITE
	write "ALTERWGI.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 02
MUSIC_DATE_RIP_YEAR		equ 2008
music_adr				equ #b690

	read "music_header.asm"

	jp lb720
	jp lb7a8
;
.music_end
.lb696
;
	db #00
;
	jp lb6a1
;
.stop_music
;
	xor a
	ld (lb696),a
	jp lbb2a
.lb6a1
	di
	ld l,a
	ld e,a
	ld h,#00
	ld d,h
	add hl,hl
	add hl,de
	add hl,hl
	add hl,hl
	add hl,de
	ld iy,lbfe7
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,lba6c
	call lbaa3
	set 7,(ix+#11)
	ei
	ret
.lb6d0 equ $ + 7
.lb6ca equ $ + 1
.lb6c9
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb6d8 equ $ + 7
.lb6d6 equ $ + 5
.lb6d5 equ $ + 4
.lb6d4 equ $ + 3
.lb6d3 equ $ + 2
.lb6d2 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb6df equ $ + 6
.lb6de equ $ + 5
	db #00,#00,#00,#00,#00,#08,#00,#00
.lb6e8 equ $ + 7
.lb6e7 equ $ + 6
.lb6e5 equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb6ed equ $ + 4
.lb6eb equ $ + 2
.lb6ea equ $ + 1
.lb6e9
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb6f4 equ $ + 3
.lb6f3 equ $ + 2
	db #00,#00,#10,#00,#00,#00,#00,#00
.lb700 equ $ + 7
.lb6ff equ $ + 6
.lb6fe equ $ + 5
.lb6fd equ $ + 4
.lb6fc equ $ + 3
.lb6fa equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.lb708 equ $ + 7
.lb702 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00
;
.init_music
.lb720
;
	push af
	call lbb2a
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,lbf4b
	add l
	ld l,a
	jr nc,lb731
	inc h
.lb731
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb6ca),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb6df),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (lb6f4),de
	xor a
	ld (lb6d3),a
	ld (lb6e8),a
	ld (lb6fd),a
	ld (lb6d8),a
	ld (lb6ed),a
	ld (lb702),a
	cpl
	ld (lb6d4),a
	ld (lb6e9),a
	ld (lb6fe),a
	ld a,#01
	ld (lb6d2),a
	ld (lb6e7),a
	ld (lb6fc),a
	ld (lb6d5),a
	ld (lb6ea),a
	ld (lb6ff),a
	ld hl,lb708
	ld bc,#030a
.lb780
	xor a
.lb781
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,lb781
	djnz lb780
	ld hl,lbf8b
	ld (lb6d0),hl
	ld (lb6e5),hl
	ld (lb6fa),hl
	ld a,#ff
	ld (lb6d6),a
	ld (lb6eb),a
	ld (lb700),a
	ld (lb696),a
	ret
;
.play_music
.lb7a8
;
	call lbb53
	ld a,(lb696)
	and a
	ret z
	ld a,(lb6d6)
	ld hl,lb6eb
	or (hl)
	ld hl,lb700
	or (hl)
	ld (lb696),a
	jr nz,lb7d2
	xor a
	ld (lb696),a
	ld a,(lba6b)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (lb696),a
	ret
.lb7d2
	ld iy,lb6c9
	ld ix,lba6c
	call lb7f0
	ld iy,lb6de
	ld ix,lba7e
	call lb7f0
	ld iy,lb6f3
	ld ix,lba90
.lb7f0
	call lb931
	ld a,(iy+#0b)
	and a
	jr z,lb875
.lb7f9
	dec (iy+#09)
	jr z,lb810
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr lb875
.lb810
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.lb81a
	ld a,(hl)
	cp #80
	jr c,lb855
	cp #fe
	jr nz,lb82c
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp lb81a
.lb82c
	cp #ff
	jr nz,lb835
	xor a
	ld (iy+#0d),a
	ret
.lb835
	cp #c0
	jr nc,lb842
	and #1f
	ld (iy+#09),a
	inc hl
	jp lb81a
.lb842
	and #07
	add (iy+#00)
	ld de,lb708
	add e
	ld e,a
	jr nc,lb84f
	inc d
.lb84f
	inc hl
	ldi
	jp lb81a
.lb855
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,lbf2f
	add hl,bc
	ld e,(hl)
	ld hl,lbf3d
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr lb87b
.lb875
	ld e,(iy+#05)
	ld d,(iy+#06)
.lb87b
	dec (iy+#0c)
	jr z,lb88d
	ld a,(de)
	cp #80
	call nc,lb8f7
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lb88d
	ld a,(de)
	cp #80
	jr c,lb89e
	call lb8f7
	ld a,(iy+#0b)
	and a
	jr z,lb88d
	jp lb7f9
.lb89e
	cp #7f
	jr z,lb8ea
	cp #7e
	jr nz,lb8af
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp lb8c3
.lb8af
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,lb9c1
	add a
	ld c,a
	ld b,#00
	add hl,bc
.lb8bf
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.lb8c3
	ld a,(iy+#0f)
	or #c0
	ld (iy+#14),a
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld c,a
	ld (iy+#05),e
	ld (iy+#06),d
	ld e,(iy+#07)
	ld a,(iy+#08)
	ld hy,a
	ld ly,e
	bit 7,(ix+#11)
	ret nz
	jp lbaa3
.lb8ea
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.lb8f7
	ld a,(de)
	cp #88
	jr nc,lb915
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,lb708
	add hl,bc
	ld c,(hl)
	ld hl,lbf8b
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.lb915
	cp #ff
	jr nz,lb91e
	ld (iy+#0b),#ff
	ret
.lb91e
	cp #c0
	jr nc,lb929
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.lb929
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.lb931
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,lb945
	res 7,(iy+#14)
	ret
.lb945
	ld d,#07
	bit 6,(iy+#14)
	jr nz,lb979
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,lb979
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,lb968
	inc h
	ld (iy+#11),h
.lb968
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp lb9ae
.lb979
	ld hl,lb8bf
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,lb993
	bit 6,(iy+#14)
	jr nz,lb993
	ld (iy+#13),#01
	ret
.lb993
	res 6,(iy+#14)
	ld a,(hl)
	rrca
	rrca
	rrca
	and d
	ld (iy+#12),a
	ld a,(hl)
	and d
	inc a
	ld (iy+#13),a
	ld (iy+#10),l
	ld (iy+#11),h
	ld a,(iy+#0e)
.lb9ae
	add a
	ld hl,lb9c1
	add l
	ld l,a
	jr nc,lb9b7
	inc h
.lb9b7
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
.lb9c1
	dw #0eee,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04d4,#0470,#0431,#03f4
	dw #03dc,#0386,#0353,#0324
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
	dw #0018
.lba71 equ $ + 6
.lba70 equ $ + 5
.lba6f equ $ + 4
.lba6c equ $ + 1
.lba6b
	db #3f,#fe,#f7,#09,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.lba82 equ $ + 7
.lba81 equ $ + 6
.lba7e equ $ + 3
.lba7d equ $ + 2
	db #00,#00,#00,#fd,#ef,#12,#00,#00
.lba83
	db #00,#00,#00,#00,#00,#00,#00,#00
.lba90 equ $ + 5
.lba8f equ $ + 4
	db #00,#00,#00,#00,#00,#fb,#df,#24
.lba95 equ $ + 2
.lba94 equ $ + 1
.lba93
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbaa2 equ $ + 7
.lbaa1 equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
.lbaa3
	di
	ld a,ly
	ld (ix+#0f),a
	ld a,hy
	ld (ix+#10),a
	ld (ix+#03),l
	ld (ix+#04),h
	ld (ix+#06),c
	ld a,(iy+#05)
	ld (ix+#07),a
	ld a,(iy+#06)
	and #7f
	srl a
	jr nz,lbac8
	ld a,#01
.lbac8
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(lba6b)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,lbaf1
	and (ix+#00)
.lbaf1
	bit 1,c
	jr z,lbaf8
	and (ix+#01)
.lbaf8
	ld (lba6b),a
	bit 2,c
	jr nz,lbb0a
	ld hl,lbc41
	ld (ix+#0d),l
	ld (ix+#0e),h
	ei
	ret
.lbb0a
	call lbcf9
	ld a,(iy+#00)
	ld c,#0d
	call lbd10
	ld a,(iy+#04)
	ld c,#0b
	call lbd10
	inc c
	xor a
	call lbd10
	ld (ix+#05),#ff
	ei
	jp lbd05
.lbb2a
	call lbcf9
	ld c,#07
	ld a,(lba6b)
	or #3f
	ld (lba6b),a
	call lbd10
	xor a
	inc c
	call lbd10
	inc c
	call lbd10
	inc c
	call lbd10
	ld (lba7d),a
	ld (lba8f),a
	ld (lbaa1),a
	jp lbd05
.lbb53
	ld a,(lba6b)
	and #3f
	cp #3f
	ret z
	ld ix,lba6c
	call lbc0f
	ld ix,lba7e
	call lbc0f
	ld ix,lba90
	call lbc0f
	call lbcf9
	ld ix,lba6c
	ld c,#07
	ld a,(lba6b)
	call lbd10
	ld c,#00
	ld a,(lba6f)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,lbb91
	ld (lbaa2),a
.lbb91
	call lbd10
	inc c
	ld a,(lba70)
	adc (ix+#0a)
	call lbd10
	inc c
	ld a,(lba81)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,lbbaf
	ld (lbaa2),a
.lbbaf
	call lbd10
	inc c
	ld a,(lba82)
	adc (ix+#1c)
	call lbd10
	inc c
	ld a,(lba93)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,lbbcd
	ld (lbaa2),a
.lbbcd
	call lbd10
	inc c
	ld a,(lba94)
	adc (ix+#2e)
	call lbd10
	inc c
	ld a,(lbaa2)
	rrca
	rrca
	rrca
	call lbd10
	ld c,#08
	ld a,(lba71)
	srl a
	srl a
	srl a
	call lbd10
	inc c
	ld a,(lba83)
	srl a
	srl a
	srl a
	call lbd10
	inc c
	ld a,(lba95)
	srl a
	srl a
	srl a
	call lbd10
	jp lbd05
.lbc0f
	ld a,(lba6b)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,lbc30
	cp #ff
	jr z,lbc30
	dec (ix+#06)
.lbc30
	call lbcb7
	bit 2,(iy+#09)
	jp nz,lbcb0
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.lbc41
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,lbc50
	ld (ix+#05),a
	ret
.lbc50
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,lbc60
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lbc60
	ld a,(ix+#05)
	add (iy+#01)
	jp m,lbc72
	cp (iy+#02)
	jr c,lbc72
	ld (ix+#05),a
	ret
.lbc72
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,lbc82
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lbc82
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,lbc91
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.lbc91
	ld a,(ix+#05)
	add (iy+#03)
	jp m,lbc9e
	ld (ix+#05),a
	ret
.lbc9e
	ld (ix+#05),#00
	ld a,(lba6b)
	or (ix+#02)
	ld (lba6b),a
	res 7,(ix+#11)
	ret
.lbcb0
	ld a,(ix+#06)
	and a
	ret nz
	jr lbc9e
.lbcb7
	ld a,(ix+#07)
	and a
	jr z,lbcc4
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.lbcc4
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld c,(ix+#0b)
	ld b,(ix+#0c)
	add hl,bc
	ld (ix+#09),l
	ld (ix+#0a),h
	dec (ix+#08)
	ret nz
	ld a,(iy+#06)
	and a
	ret z
	jp p,lbce8
	ld (ix+#07),#ff
	ret
.lbce8
	ld (ix+#08),a
	ld a,c
	cpl
	ld c,a
	ld a,b
	cpl
	ld b,a
	inc bc
	ld (ix+#0b),c
	ld (ix+#0c),b
	ret
.lbcf9
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.lbd05
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.lbd10
	ld b,#f4
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ld b,#f4
	out (c),a
	ld b,h
	out (c),l
	out (c),e
	ret
.lbd26 equ $ + 3
.lbd23
	db #7f,#03,#ff,#80,#25,#0a,#2a,#0a
	db #31,#50,#2a,#0a,#31,#0a,#2f,#50
	db #33,#28,#2f,#28,#2a,#28,#25,#78
	db #23,#0a,#27,#0a,#2a,#50,#2a,#0a
	db #2e,#0a,#31,#50,#23,#0a,#27,#0a
	db #2a,#50,#2e,#28,#25,#28,#1e,#c8
.lbd56 equ $ + 3
	db #7f,#1e,#ff,#81,#12,#06,#12,#06
	db #12,#06,#12,#0c,#12,#12,#0a,#18
	db #0b,#12,#17,#0c,#0b,#06,#0c,#12
.lbd6e equ $ + 3
	db #0d,#12,#ff,#81,#0b,#0c,#0b,#06
	db #17,#0c,#17,#12,#0f,#06,#0f,#06
	db #0f,#06,#0f,#06,#10,#12,#04,#0c
.lbd8a equ $ + 7
	db #10,#06,#05,#12,#06,#12,#ff,#84
	db #25,#0c,#2a,#12,#31,#4e,#2a,#0c
	db #31,#12,#2f,#96,#33,#24,#2f,#24
	db #2a,#24,#25,#b4,#23,#0c,#27,#12
	db #2a,#72,#2a,#0c,#2e,#12,#31,#72
	db #23,#0c,#27,#12,#2a,#72,#2e,#0c
.lbdb8 equ $ + 5
	db #25,#12,#1e,#72,#ff,#80,#1e,#0a
	db #25,#0a,#2a,#50,#25,#0a,#2a,#0a
	db #2a,#50,#2a,#28,#27,#28,#23,#28
	db #1e,#78,#1e,#0a,#1e,#0a,#23,#50
	db #25,#0a,#25,#0a,#2a,#50,#1e,#0a
	db #1e,#0a,#23,#50,#25,#28,#1e,#28
.lbde8 equ $ + 5
	db #1e,#c8,#7f,#1e,#ff,#82,#06,#0c
	db #06,#06,#83,#91,#2a,#0c,#2a,#12
	db #82,#06,#06,#85,#94,#19,#12,#82
	db #06,#0c,#06,#06,#83,#92,#2a,#0c
	db #2a,#12,#82,#06,#06,#85,#94,#19
.lbe0d equ $ + 2
	db #12,#ff,#82,#06,#0c,#06,#06,#83
	db #92,#2a,#0c,#2a,#12,#82,#06,#06
	db #85,#94,#19,#12,#82,#06,#0c,#06
	db #06,#83,#93,#2c,#0c,#2c,#12,#82
.lbe32 equ $ + 7
	db #06,#06,#85,#94,#19,#12,#ff,#84
	db #25,#0c,#2a,#12,#31,#12,#31,#06
	db #33,#0c,#31,#06,#36,#12,#36,#12
	db #2a,#0c,#31,#12,#2f,#18,#31,#0c
	db #32,#06,#33,#0c,#36,#06,#38,#0c
	db #36,#06,#32,#06,#33,#06,#2f,#06
	db #2d,#06,#2c,#06,#29,#06,#2a,#06
	db #26,#06,#27,#06,#23,#06,#20,#06
	db #1e,#06,#33,#24,#2f,#24,#2a,#24
	db #25,#6c,#21,#06,#22,#06,#1e,#06
	db #21,#06,#22,#06,#1e,#06,#21,#06
	db #22,#06,#1e,#06,#21,#06,#22,#06
	db #1e,#06,#23,#0c,#27,#12,#2a,#18
	db #2c,#0c,#2a,#06,#26,#12,#26,#12
	db #25,#0c,#23,#18,#2a,#0c,#2e,#12
	db #31,#18,#33,#0c,#31,#06,#2d,#12
	db #2d,#12,#2c,#0c,#2a,#18,#23,#0c
	db #27,#12,#2a,#18,#2a,#06,#2c,#06
	db #2f,#06,#33,#12,#32,#12,#31,#0c
	db #2f,#18,#2e,#0c,#25,#12,#1e,#72
.lbecc equ $ + 1
	db #ff,#0b,#06,#0b,#06,#0b,#06,#0b
	db #0c,#0d,#12,#0d,#06,#0d,#0c,#0d
.lbedf equ $ + 4
	db #06,#13,#fa,#ff,#2e,#0c,#25,#12
.lbee6 equ $ + 3
	db #1e,#72,#ff,#82,#06,#0c,#06,#06
	db #83,#92,#2a,#0c,#2a,#12,#82,#06
	db #06,#85,#94,#19,#12,#83,#91,#2b
.lbefd equ $ + 2
	db #fa,#ff,#27,#06,#27,#06,#27,#06
	db #27,#0c,#29,#12,#29,#06,#29,#0c
	db #29,#06,#2b,#46,#2b,#0a,#2f,#05
	db #2b,#05,#2f,#05,#32,#05,#2f,#05
	db #32,#05,#37,#1e,#37,#0a,#32,#0a
	db #32,#05,#2f,#0a,#2f,#05,#2b,#46
.lbf2c equ $ + 1
	db #ff,#7f,#90,#ff
.lbf2f
	db lbd23,lbd26,lbd56,lbd6e
	db lbd8a,lbdb8,lbde8,lbe0d
	db lbe32,lbecc,lbedf,lbee6
	db lbefd,lbf2c
	;db #23,#26,#56,#6e,#8a,#b8,#e8,#0d
	;db #32,#cc,#df,#e6,#fd,#2c
.lbf3d
	db lbd23/&100,lbd26/&100,lbd56/&100,lbd6e/&100
	db lbd8a/&100,lbdb8/&100,lbde8/&100,lbe0d/&100
	db lbe32/&100,lbecc/&100,lbedf/&100,lbee6/&100
	db lbefd/&100,lbf2c/&100
	;db #bd,#bd,#bd,#bd,#bd,#bd,#bd,#be
	;db #be,#be,#be,#be,#be,#bf
.lbf4b
	dw lbf51,lbf68,lbf73
.lbf51
	db #01,#00,#00,#83,#02,#03,#03,#02
	db #03,#02,#03,#02,#02,#03,#03,#02
	db #03,#02,#03,#83,#02,#09,#ff
.lbf68
	db #05,#00,#00,#0d,#0d,#04,#08,#0a
	db #0a,#0c,#ff
.lbf73
	db #00,#00,#01,#0d,#0d,#06,#07,#07
	db #06,#07,#06,#07,#06,#06,#07,#07
	db #06,#07,#06,#07,#83,#06,#0b,#ff
.lbf8b
	db #50,#f9,#63,#ff,#6e,#ff,#00,#00
	db #00,#01,#50,#fc,#50,#ff,#6e,#ff
	db #00,#00,#00,#01,#7f,#f8,#03,#ff
	db #6e,#00,#00,#05,#00,#03,#7f,#fe
	db #03,#ff,#6e,#00,#02,#01,#00,#01
	db #50,#fa,#14,#ff,#7f,#00,#02,#01
	db #00,#01,#7f,#fe,#03,#ff,#6e,#ff
	db #00,#04,#00,#03,#8a,#21,#39,#00
	db #00,#00,#00,#00,#8a,#29,#49,#00
	db #00,#00,#00,#00,#8a,#19,#41,#00
	db #00,#00,#00,#00,#89,#b1,#00,#00
	db #00,#00,#00,#00
.lbfe7
	db #00,#00,#00,#00
	db #7f,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00
;
.music_info
	db "Alternative World Games - Intro (1988)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
