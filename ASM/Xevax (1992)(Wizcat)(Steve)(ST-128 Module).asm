; Music of Xevax (1992)(Wizcat)(Steve)(ST-128 Module)
; Ripped by Megachur the 01/09/2020
; $VER 1.5

IFDEF FILENAME_WRITE
	write "XEVAX.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 01
MUSIC_DATE_RIP_MONTH	equ 09
MUSIC_DATE_RIP_YEAR		equ 2020
music_adr				equ #9400

	read "music_header.asm"

	jr l9404
	jr l9413
.l9404
	call l9437
	ld hl,l9424
	ld de,l941c
	ld bc,#81ff
	jp #bcd7
.l9413
	ld hl,l9424
	call #bcdd
	jp l94af
.l941c
	push ix
	call l94cb
	pop ix
	ret
.l9424
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
	jp l9437
	jp l94cb
	jp l94af
;
.init_music
.l9437
;
	xor a
	ld hl,l99e2
	call l94a8
	ld hl,l9a10
	call l94a8
	ld hl,l9a3e
	call l94a8
	ld ix,l99de
	ld iy,l9a68
	ld de,#002e
	ld b,#03
.l9457
	push bc
	inc (ix+#1f)
	ld l,(iy+#00)
	ld h,(iy+#01)
	ld a,(hl)
	ld (ix+#24),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (ix+#22),l
	ld (ix+#23),h
	ld (ix+#20),c
	ld (ix+#21),b
	ld (ix+#25),#ff
	add ix,de
	inc iy
	inc iy
	pop bc
	djnz l9457
	ld hl,l98f7
	ld (hl),#06
	inc hl
	ld (hl),#40
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),d
	inc hl
	ld (hl),#38
	ld hl,#ffff
	ld (l98f3),hl
	ld (l98f5),hl
	ld a,#0c
	ld c,d
	call l98d3
	ld a,#0d
	ld c,d
	jp l98d3
.l94a8
	ld b,#2a
.l94aa
	ld (hl),a
	inc hl
	djnz l94aa
	ret
;
.stop_music
.l94af
;
	ld a,#07
	ld c,#3f
	call l98d3
	ld a,#08
	ld c,#00
	call l98d3
	ld a,#09
	ld c,#00
	call l98d3
	ld a,#0a
	ld c,#00
	jp l98d3
;
.play_music
.l94cb
;
	ld hl,l98f9
	dec (hl)
	ld ix,l99de
	ld bc,l99ec
	call l956d
	ld ix,l9a0c
	ld bc,l9a1a
	call l956d
	ld ix,l9a3a
	ld bc,l9a48
	call l956d
	ld hl,l98f2
	ld de,l98f9
	ld b,#06
	call l954a
	ld b,#07
	call l954a
	ld b,#0b
	call l954a
	ld b,#0d
	call l954a
	ld de,l98f9
	ld a,(de)
	or a
	ret nz
	inc hl
	ldi
	dec (hl)
	ret nz
	ld (hl),#40
	ld hl,l99fd
	call l9523
	ld hl,l9a2b
	call l9523
	ld hl,l9a59
.l9523
	ld (hl),#01
	inc hl
	ld b,h
	ld c,l
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	cp #80
	jr nz,l9538
	ex de,hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
.l9538
	inc de
	ex de,hl
	ld d,b
	ld e,c
	ldi
	ldi
	ex de,hl
	ld (hl),e
	inc hl
	ld (hl),d
	inc hl
	ld (hl),a
	inc hl
	ld (hl),#ff
	ret
.l954a
	inc hl
	inc de
	ld a,(de)
	cp (hl)
	ret z
	ld (hl),a
	ld c,a
	ld a,b
	jp l98d3
.l9555
	ld a,(hl)
	ld (ix+#1f),a
	inc hl
	ld (ix+#20),l
	ld (ix+#21),h
	ld (ix+#17),d
	ld (ix+#15),d
	ld c,d
	ld a,(ix+#00)
	jp l98d3
.l956d
	ld a,(l98f9)
	or a
	jp nz,l9625
	ld (ix+#08),a
	ld (ix+#0a),a
	dec (ix+#1f)
	jp nz,l9625
	ld d,a
	ld l,(ix+#20)
	ld h,(ix+#21)
	ld a,(hl)
	inc hl
	cp #fe
	jr z,l9555
	or a
	jp z,l961a
	ld r,a
	and #7f
	cp #10
	jr c,l95f5
	ld e,(hl)
	inc hl
	push hl
	push bc
	sub #10
	add #00
	add (ix+#24)
	ld (ix+#07),a
	ld b,d
	call l976d
	ld (ix+#16),b
	ld (ix+#17),#20
	inc b
	ld (ix+#2c),b
	ld (ix+#2d),b
	dec b
	ld a,e
	pop de
	ld i,a
	and #f0
	cp (ix+#25)
	jr z,l95ce
	ld (ix+#25),a
	ld (ix+#1e),b
	ld (ix+#29),b
.l95ce
	rrca
	ld c,a
	ld hl,l9a6e
	add hl,bc
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	bit 6,(hl)
	ldi
	ldi
	ld b,#00
	jr z,l95ed
	ld (ix+#1e),b
.l95ed
	ld a,i
	pop hl
	ld d,b
	and #0f
	jr z,l960e
.l95f5
	ld b,d
	ex de,hl
	and #0f
	dec a
	add a
	ld c,a
	ld hl,l98fe
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	push hl
	ex de,hl
	ld d,b
	ret
	add b
	add (hl)
	add a
	add a
	add h
	add l
.l960e
	ld a,d
	or a
	jr nz,l961c
	ld a,r
	bit 7,a
	ld a,#01
	jr nz,l961c
.l961a
	ld a,(hl)
	inc hl
.l961c
	ld (ix+#1f),a
	ld (ix+#20),l
	ld (ix+#21),h
.l9625
	ld a,(ix+#17)
	or a
	jr nz,l963b
	ld a,(ix+#15)
	or a
	ret z
	ld (ix+#17),a
	ld a,(ix+#14)
	and #1f
	ld (ix+#16),a
.l963b
	ld d,#00
	ld e,(ix+#16)
	dec (ix+#2c)
	jr nz,l9651
	ld a,(ix+#2d)
	ld (ix+#2c),a
	inc (ix+#16)
	dec (ix+#17)
.l9651
	ld a,(ix+#0d)
	or a
	jr z,l965f
	ld h,a
	ld l,(ix+#0c)
	add hl,de
	ld a,(hl)
	jr l967d
.l965f
	ld a,(ix+#1a)
	or a
	jp z,l9684
	ld c,a
	cp #03
	jr nz,l966c
	xor a
.l966c
	inc a
	ld (ix+#1a),a
	dec c
	ld a,c
	jr z,l967d
	ld a,(ix+#18)
	dec c
	jr z,l967d
	ld a,(ix+#19)
.l967d
	add (ix+#07)
	ld b,d
	call l976d
.l9684
	ld l,(ix+#04)
	ld h,(ix+#05)
	push hl
	ld a,(ix+#08)
	or a
	jr z,l96ac
	dec (ix+#1b)
	jr nz,l96ac
	ld a,(ix+#08)
	ld (ix+#1b),a
	ld c,(ix+#1c)
	ld b,(ix+#1d)
	add hl,bc
	ld (ix+#04),l
	ld (ix+#05),h
	ex (sp),hl
	jr l96e4
.l96ac
	ld a,(ix+#29)
	or a
	jr z,l96e4
	ld b,a
	ld a,(ix+#27)
	dec (ix+#26)
	jr nz,l96db
	ld c,a
	ld a,(ix+#28)
	ld (ix+#26),a
	ld a,c
	add b
	ld (ix+#27),a
	cp (ix+#2a)
	jr nz,l96d2
	ld (ix+#29),#ff
	jr l96db
.l96d2
	cp (ix+#2b)
	jr nz,l96db
	ld (ix+#29),#01
.l96db
	ld b,d
	or a
	jp p,l96e1
	dec b
.l96e1
	ld c,a
	jr l96ef
.l96e4
	ld h,(ix+#0f)
	ld l,(ix+#0e)
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
.l96ef
	pop hl
	bit 7,(ix+#14)
	jr z,l96f8
	ld h,d
	ld l,d
.l96f8
	add hl,bc
	ld c,l
	ld a,(ix+#01)
	call l98d3
	ld c,h
	ld a,(ix+#02)
	call l98d3
	ld h,(ix+#11)
	ld l,(ix+#10)
	add hl,de
	ld a,(hl)
	bit 7,a
	jr nz,l974b
	and #0f
	ld b,a
	ld a,(ix+#0a)
	or a
	jr z,l973a
	dec (ix+#09)
	jr nz,l973a
	ld c,a
	ld a,(ix+#0b)
	ld (ix+#09),a
	ld a,(ix+#1e)
	add c
	jp p,l9732
	xor a
	jr l9737
.l9732
	cp #10
	jr nz,l9737
	dec a
.l9737
	ld (ix+#1e),a
.l973a
	ld a,b
	sub (ix+#1e)
	jr nc,l9741
	xor a
.l9741
	or (ix+#06)
	ld c,a
	ld a,(ix+#00)
	call l98d3
.l974b
	ld l,(ix+#12)
	ld h,(ix+#13)
	add hl,de
	ld c,(hl)
	bit 7,c
	ret nz
	ld b,(ix+#03)
	ld hl,(l98fa)
	ld a,h
	or b
	ld h,a
	ld a,c
	and #1f
	jr z,l9769
	ld l,a
	ld a,b
	cpl
	and h
	ld h,a
.l9769
	ld (l98fa),hl
	ret
.l976d
	ld hl,l991c
	cp #61
	jr nc,l9777
	add a
	ld c,a
	add hl,bc
.l9777
	ld a,(hl)
	ld (ix+#04),a
	inc hl
	ld a,(hl)
	ld (ix+#05),a
	ret
.l9781
	ld (ix+#0d),d
	ld (ix+#06),d
	ld (ix+#1a),d
	call l98a6
	ld (ix+#1e),a
	jp l960e
.l9793
	dec b
.l9794
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	bit 7,b
	jr z,l979f
	neg
.l979f
	ld (ix+#1c),a
	ld (ix+#1d),b
	ld a,c
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#08),a
	ld (ix+#1b),a
	jp l960e
.l97b5
	dec b
	jr l97b9
.l97b8
	inc b
.l97b9
	call l98a6
	ld (ix+#0b),a
	ld (ix+#09),a
	ld (ix+#0a),b
	jp l960e
.l97c8
	ld a,(hl)
	inc hl
	ld c,a
	and #0f
	ld (ix+#1e),a
	ld a,c
	and #f0
	rrca
	rrca
	rrca
	jp l988b
.l97d9
	ld a,(hl)
	inc hl
	or a
	jr z,l97fb
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#28),a
	ld (ix+#26),a
	ld a,c
	and #07
	ld (ix+#2a),a
	neg
	ld (ix+#2b),a
	ld (ix+#27),a
	ld a,#01
.l97fb
	ld (ix+#29),a
	jp l960e
.l9801
	dec hl
	ld a,(hl)
	and #0f
	ld (l98fd),a
	inc hl
	ld a,(hl)
	inc hl
	ld (l98fc),a
	ld (ix+#0d),d
	ld (ix+#1a),d
	ld (ix+#06),#10
	jp l960e
.l981b
	ld a,(hl)
	or a
	jr z,l982c
	call l98a8
	ld (ix+#2c),a
	ld (ix+#2d),a
	inc hl
	jp l960e
.l982c
	ld hl,#0101
	ld (l98f8),hl
	jp l960e
.l9835
	call l98a6
	ld (ix+#1e),a
	jp l960e
.l983e
	ld a,(hl)
	inc hl
	push hl
	ld e,a
	rrca
	rrca
	rrca
	rrca
	call l98b7
	ld (ix+#0e),c
	ld (ix+#0f),d
	ld a,e
	ld d,#04
	call l98b7
	ld (ix+#12),c
	ld (ix+#13),d
	pop hl
	ld d,b
	jp l960e
.l9860
	ld a,(hl)
	inc hl
	ld (l98f7),a
	jp l960e
.l9868
	ld a,(hl)
	inc hl
	ld c,a
	rrca
	rrca
	rrca
	rrca
	and #0f
	ld (ix+#18),a
	ld a,c
	and #0f
	ld (ix+#19),a
	ld (ix+#06),d
	ld (ix+#0d),d
	ld (ix+#1a),#01
	jp l960e
.l9887
	call l98a6
	add a
.l988b
	ld b,#00
	ld c,a
	push hl
	ld hl,l9aee
	add hl,bc
	ld a,(hl)
	ld (ix+#0c),a
	inc hl
	ld a,(hl)
	ld (ix+#0d),a
	pop hl
	ld (ix+#06),b
	ld (ix+#1a),b
	jp l960e
.l98a6
	ld a,(hl)
	inc hl
.l98a8
	cp #10
	ret c
	ld c,a
	and #f0
	rrca
	rrca
	rrca
	rrca
	ld d,a
	ld a,c
	and #0f
	ret
.l98b7
	and #0f
	add a
	add a
	add a
	add d
	ld c,a
	ld hl,l9a6e
	add hl,bc
	ld c,(hl)
	inc hl
	ld d,(hl)
	ret
	db #53,#54,#2d,#31,#32,#38,#20,#4d
	db #6f,#64,#75,#6c,#65
.l98d3
	di
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
	ei
.l98f2
	ret
.l98fa equ $ + 7
.l98f9 equ $ + 6
.l98f8 equ $ + 5
.l98f7 equ $ + 4
.l98f5 equ $ + 2
.l98f3
	db #00,#00,#00,#00,#00,#00,#00,#00
.l98fd equ $ + 2
.l98fc equ $ + 1
	db #38,#00,#00
.l98fe
	dw l9781,l9794,l9793,l97b8
	dw l97b5,l97c8,l97d9,l9801
	dw l981b,l9801,l9835,l983e
	dw l9860,l9868,l9887
.l991c
	dw #0000,#0e18,#0d4d,#0c8e
	dw #0bda,#0b2f,#0a8f,#09f7
	dw #0968,#08e1,#0861,#07e9
	dw #0777,#070c,#06a7,#0647
	dw #05ed,#0598,#0547,#04fc
	dw #04b4,#0470,#0431,#03f4
	dw #03bc,#0386,#0353,#0324
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
	dw #001e,#001c,#001b,#0019
	dw #0018,#0016,#0015,#0014
	dw #0013,#0012,#0011,#0010
	dw #000f
.l99e2 equ $ + 4
.l99de
	db #08,#00,#01,#08,#00,#00,#00,#00
.l99ec equ $ + 6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l99fd equ $ + 7
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a0c equ $ + 6
	db #00,#00,#00,#00,#00,#00,#09,#02
.l9a10 equ $ + 2
	db #03,#10,#00,#00,#00,#00,#00,#00
.l9a1a equ $ + 4
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a2b equ $ + 5
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a3a equ $ + 4
	db #00,#00,#00,#00,#0a,#04,#05,#20
.l9a3e
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a48 equ $ + 2
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a59 equ $ + 3
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
.l9a68 equ $ + 2
	db #00,#00,#6e,#9c,#8f,#9c,#b0,#9c
.l9a6e
	db #0e,#9b,#4e,#9b,#6e,#9b,#00,#00
	db #8e,#9b,#ce,#9b,#ee,#9b,#00,#00
	db #0e,#9b,#0e,#9c,#2e,#9c,#00,#00
	db #0e,#9b,#4e,#9c,#6e,#9b,#00,#00
	db #00,#54,#00,#54,#00,#54,#00,#00
	db #00,#54,#00,#54,#00,#54,#00,#00
	db #00,#54,#00,#54,#00,#54,#00,#00
	db #00,#54,#00,#54,#00,#54,#00,#00
	db #00,#54,#00,#54,#00,#54,#00,#00
	db #00,#54,#00,#54,#00,#54,#00,#00
	db #00,#54,#00,#54,#00,#54,#00,#00
	db #00,#54,#00,#54,#00,#54,#00,#00
	db #00,#54,#00,#54,#00,#54,#00,#00
	db #00,#54,#00,#54,#00,#54,#00,#00
	db #00,#54,#00,#54,#00,#54,#00,#00
	db #00,#54,#00,#54,#00,#54,#00,#00
.l9aee
	db #00,#54,#00,#54,#00,#54,#00,#54
	db #00,#54,#00,#54,#00,#54,#00,#54
	db #00,#54,#00,#54,#00,#54,#00,#54
	db #00,#54,#00,#54,#00,#54,#00,#54
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0d,#0d,#0c,#0c
	db #0b,#0b,#0a,#0a,#09,#09,#08,#08
	db #07,#07,#06,#06,#05,#05,#04,#04
	db #03,#03,#02,#02,#01,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#14,#00,#28,#00,#3c,#00
	db #50,#00,#64,#00,#78,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0f,#0e,#0e,#0c,#08,#02,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#00,#00,#00,#00,#00,#0f,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #0f,#0d,#0b,#09,#07,#06,#06,#05
	db #05,#05,#04,#04,#04,#04,#04,#03
	db #03,#03,#03,#03,#02,#02,#02,#02
	db #02,#02,#01,#01,#01,#01,#01,#00
	db #08,#0b,#0f,#16,#1f,#15,#0d,#07
	db #04,#03,#02,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #01,#01,#01,#01,#01,#01,#01,#01
	db #0f,#0f,#0f,#0e,#0e,#0e,#0d,#0d
	db #0d,#0c,#0c,#0c,#0b,#0b,#0b,#0a
	db #0a,#0a,#09,#09,#09,#08,#08,#08
	db #07,#07,#07,#06,#06,#06,#05,#00
	db #00,#08,#9e,#00,#d1,#9c,#00,#0b
	db #9e,#00,#1b,#9d,#00,#70,#9d,#00
	db #c5,#9d,#00,#70,#9d,#00,#63,#9e
	db #00,#d1,#9c,#00,#0b,#9e,#80,#71
	db #9c,#00,#41,#9f,#00,#8b,#9e,#00
	db #e6,#9e,#00,#e6,#9e,#00,#e6,#9e
	db #00,#e6,#9e,#00,#e6,#9e,#00,#cc
	db #9f,#00,#8b,#9e,#00,#e6,#9e,#80
	db #92,#9c,#00,#f2,#a0,#00,#3e,#a0
	db #00,#98,#a0,#00,#98,#a0,#00,#98
	db #a0,#00,#98,#a0,#00,#98,#a0,#00
	db #98,#a0,#00,#3e,#a0,#00,#98,#a0
	db #80,#b3,#9c,#38,#07,#12,#03,#39
	db #30,#03,#38,#30,#02,#36,#30,#03
	db #36,#30,#02,#38,#30,#03,#36,#30
	db #03,#34,#30,#03,#31,#30,#02,#34
	db #30,#03,#38,#30,#02,#39,#30,#03
	db #38,#30,#03,#39,#30,#03,#38,#30
	db #02,#36,#30,#03,#36,#30,#02,#38
	db #30,#03,#36,#30,#03,#34,#30,#03
	db #31,#30,#02,#34,#30,#03,#38,#30
	db #02,#39,#30,#03,#ff,#44,#30,#03
	db #44,#30,#02,#45,#30,#03,#47,#30
	db #03,#47,#30,#02,#47,#30,#03,#45
	db #00,#02,#44,#00,#02,#45,#00,#02
	db #44,#00,#02,#45,#00,#02,#44,#00
	db #02,#40,#00,#02,#42,#00,#02,#44
	db #30,#03,#44,#30,#02,#45,#30,#03
	db #47,#30,#03,#47,#30,#02,#47,#30
	db #03,#40,#00,#02,#44,#00,#02,#45
	db #00,#02,#47,#00,#02,#4c,#00,#02
	db #49,#00,#02,#47,#00,#02,#44,#00
	db #02,#ff,#44,#30,#03,#45,#30,#02
	db #44,#30,#03,#42,#30,#03,#42,#30
	db #02,#44,#30,#03,#42,#30,#02,#40
	db #30,#02,#40,#30,#02,#3d,#30,#02
	db #40,#30,#02,#44,#30,#02,#45,#30
	db #02,#47,#30,#02,#44,#30,#03,#44
	db #30,#02,#45,#30,#03,#44,#30,#03
	db #42,#30,#02,#42,#30,#03,#44,#30
	db #02,#42,#30,#02,#40,#30,#02,#44
	db #30,#02,#42,#30,#02,#44,#30,#02
	db #45,#30,#02,#44,#30,#02,#ff,#47
	db #00,#08,#c9,#00,#c7,#00,#c5,#00
	db #44,#00,#02,#c5,#00,#42,#00,#02
	db #40,#00,#08,#c4,#00,#c5,#00,#c4
	db #00,#47,#00,#02,#c5,#00,#44,#00
	db #02,#47,#00,#08,#c9,#00,#c7,#00
	db #c5,#00,#44,#00,#02,#c5,#00,#42
	db #00,#02,#40,#00,#08,#40,#00,#02
	db #42,#00,#02,#44,#00,#02,#45,#00
	db #02,#ff,#00,#40,#ff,#38,#07,#12
	db #03,#39,#30,#03,#38,#30,#02,#3b
	db #30,#03,#3b,#30,#02,#bd,#30,#3b
	db #30,#02,#39,#30,#02,#38,#30,#02
	db #34,#30,#02,#36,#30,#02,#39,#30
	db #02,#3b,#30,#02,#39,#30,#02,#38
	db #30,#02,#38,#30,#03,#39,#30,#03
	db #38,#30,#02,#3b,#30,#03,#3b,#30
	db #02,#40,#30,#03,#39,#30,#02,#3b
	db #30,#02,#39,#30,#02,#38,#30,#02
	db #39,#30,#02,#38,#30,#02,#39,#30
	db #02,#3b,#30,#02,#ff,#38,#39,#85
	db #36,#39,#85,#34,#39,#c5,#39,#30
	db #02,#38,#30,#02,#38,#39,#84,#36
	db #39,#84,#34,#39,#64,#39,#30,#02
	db #38,#30,#02,#39,#30,#02,#38,#30
	db #02,#36,#30,#02,#ff,#34,#01,#30
	db #34,#00,#02,#b6,#00,#34,#00,#02
	db #af,#00,#2f,#00,#02,#2f,#00,#02
	db #b0,#00,#2f,#00,#02,#2d,#00,#03
	db #2d,#00,#03,#2f,#00,#02,#30,#00
	db #02,#2f,#00,#02,#2d,#00,#02,#2f
	db #00,#02,#34,#00,#03,#34,#00,#02
	db #b6,#00,#34,#00,#02,#af,#00,#2f
	db #00,#02,#2f,#00,#02,#b0,#00,#2f
	db #00,#02,#2d,#00,#03,#2d,#00,#03
	db #2f,#00,#02,#30,#00,#02,#2f,#00
	db #02,#2d,#00,#02,#2f,#00,#02,#ff
	db #34,#00,#03,#34,#00,#02,#b6,#00
	db #34,#00,#02,#af,#00,#2f,#00,#02
	db #2f,#00,#02,#b0,#00,#2f,#00,#02
	db #2d,#00,#03,#2d,#00,#03,#2f,#00
	db #02,#30,#00,#02,#2f,#00,#02,#2d
	db #00,#02,#2f,#00,#02,#34,#00,#03
	db #34,#00,#02,#b6,#00,#34,#00,#02
	db #af,#00,#2f,#00,#02,#2f,#00,#02
	db #b0,#00,#2f,#00,#02,#2d,#00,#03
	db #2d,#00,#03,#2f,#00,#02,#30,#00
	db #02,#2f,#00,#02,#2d,#00,#02,#2f
	db #00,#02,#ff,#00,#18,#38,#30,#02
	db #36,#30,#02,#34,#30,#02,#36,#30
	db #22,#ff,#34,#08,#0f,#02,#fe,#01
	db #34,#00,#02,#b6,#08,#12,#34,#08
	db #0f,#02,#af,#08,#10,#af,#00,#fe
	db #01,#2f,#00,#02,#b0,#08,#13,#2f
	db #08,#10,#02,#2d,#08,#12,#02,#fe
	db #01,#2d,#00,#03,#2f,#08,#10,#02
	db #30,#08,#13,#02,#2f,#08,#10,#02
	db #2d,#08,#12,#02,#2f,#08,#10,#02
	db #34,#08,#0f,#02,#fe,#01,#34,#08
	db #0f,#02,#b6,#00,#34,#00,#02,#af
	db #08,#10,#af,#00,#fe,#01,#2f,#00
	db #02,#b0,#08,#13,#2f,#08,#10,#02
	db #2d,#08,#12,#02,#fe,#01,#2d,#00
	db #03,#2f,#08,#10,#02,#30,#08,#13
	db #02,#2f,#08,#10,#02,#2d,#08,#12
	db #02,#2f,#08,#10,#02,#ff,#34,#08
	db #0f,#03,#34,#00,#02,#b6,#08,#12
	db #34,#08,#0f,#02,#af,#08,#10,#2f
	db #00,#02,#2f,#00,#02,#b0,#08,#13
	db #2f,#08,#10,#02,#2d,#08,#12,#03
	db #2d,#00,#03,#2f,#08,#10,#02,#30
	db #08,#13,#02,#2f,#08,#10,#02,#2d
	db #08,#12,#02,#2f,#08,#10,#02,#34
	db #08,#0f,#03,#34,#08,#0f,#02,#b6
	db #00,#34,#00,#02,#af,#08,#10,#2f
	db #00,#02,#2f,#00,#02,#b0,#08,#13
	db #2f,#08,#10,#02,#2d,#08,#12,#03
	db #2d,#00,#03,#2f,#08,#10,#02,#30
	db #08,#13,#02,#2f,#08,#10,#02,#2d
	db #08,#12,#02,#2f,#08,#10,#02,#ff
	db #38,#11,#30,#38,#10,#02,#b8,#10
	db #74,#20,#02,#38,#10,#03,#38,#10
	db #02,#b8,#10,#74,#20,#02,#38,#10
	db #03,#38,#10,#02,#b8,#10,#74,#20
	db #02,#38,#10,#03,#38,#10,#02,#b8
	db #10,#74,#20,#02,#38,#10,#03,#38
	db #10,#02,#b8,#10,#74,#20,#02,#38
	db #10,#03,#38,#10,#02,#b8,#10,#74
	db #20,#02,#38,#10,#03,#38,#10,#02
	db #b8,#10,#74,#20,#02,#38,#10,#02
	db #38,#10,#02,#38,#10,#02,#38,#10
	db #02,#ff,#38,#10,#03,#38,#10,#02
	db #b8,#10,#74,#20,#02,#38,#10,#03
	db #38,#10,#02,#b8,#10,#74,#20,#02
	db #38,#10,#03,#38,#10,#02,#b8,#10
	db #74,#20,#02,#38,#10,#03,#38,#10
	db #02,#b8,#10,#74,#20,#02,#38,#10
	db #03,#38,#10,#02,#b8,#10,#74,#20
	db #02,#38,#10,#03,#38,#10,#02,#b8
	db #10,#74,#20,#02,#38,#10,#03,#38
	db #10,#02,#b8,#10,#74,#20,#02,#38
	db #10,#02,#38,#10,#02,#38,#10,#02
	db #38,#10,#02,#ff,#38,#10,#03,#38
	db #10,#02,#a3,#10,#74,#20,#02,#38
	db #10,#03,#38,#10,#02,#a3,#10,#74
	db #20,#02,#38,#10,#03,#38,#10,#02
	db #a3,#10,#74,#20,#02,#38,#10,#02
	db #38,#10,#02,#38,#10,#02,#b8,#10
	db #09,#00,#21,#ff
;
.music_info
	db "Xevax (1992)(Wizcat)(Steve)",0
	db "ST-128 Module",0

	read "music_end.asm"
