; Music of Run the Gauntlet (1989)(Ocean Software)(Chris Kerry)()
; Ripped by Megachur the 09/12/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "RUNTHEGA.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 09
MUSIC_DATE_RIP_MONTH	equ 12
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #1532

	read "music_header.asm"
	
.l1532
	db #00
.l1533
	db #00
.l1534
	db #00
.l1535
	db #00
;
.real_play_music
.l1536
;
	call l1860
	ld hl,l1532
	inc (hl)
	ld a,(hl)
	and #01
	ld (l18b5),a
	ld ix,l1533
	call l1560
	call l16ce
	inc ix
	call l15e2
	call l1715
	inc ix
	call l1658
	call l175d
	jp l186e
.l1560
	ld hl,l187c
	dec (hl)
	ret nz
	ld de,(l188d)
	ld a,(de)
	cp #ff
	jp nz,l158c
	ld hl,(l1885)
	ld a,(hl)
	ld (l1533),a
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1885),hl
	inc de
	ld a,d
	or e
	jp nz,l158a
	call l181f
	jr l1560
.l158a
	dec de
	ld a,(de)
.l158c
	call l17a5
	ld (l187f),hl
	ld (l1883),hl
	xor a
	ld (l187e),a
	inc de
	ld a,(de)
	ld (l187c),a
	inc de
	ld a,(de)
	bit 6,a
	jp z,l15b4
	inc de
	ex af,af'
	ld a,(de)
	call l17a5
	ld (l1883),hl
	ld a,#ff
	ld (l187e),a
	ex af,af'
.l15b4
	bit 7,a
	ld hl,#0000
	ld (l1889),hl
	jp z,l15c7
	ex af,af'
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	ex af,af'
.l15c7
	ld (l1881),hl
	inc de
	ld (l188d),de
	and #38
	add a
	ld c,a
	ld b,#00
	ld hl,l18b6
	add hl,bc
	ld (l1887),hl
	ld a,#01
	ld (l187d),a
	ret
.l15e2
	ld hl,l188f
	dec (hl)
	ret nz
	ld de,(l18a0)
	ld a,(de)
	cp #ff
	jp nz,l1602
	ld hl,(l1898)
	ld a,(hl)
	ld (l1534),a
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1898),hl
	ld a,(de)
.l1602
	call l17a5
	ld (l1892),hl
	ld (l1896),hl
	xor a
	ld (l1891),a
	inc de
	ld a,(de)
	ld (l188f),a
	inc de
	ld a,(de)
	bit 6,a
	jp z,l162a
	inc de
	ex af,af'
	ld a,(de)
	call l17a5
	ld (l1896),hl
	ld a,#ff
	ld (l1891),a
	ex af,af'
.l162a
	bit 7,a
	ld hl,#0000
	ld (l189c),hl
	jp z,l163d
	ex af,af'
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	ex af,af'
.l163d
	ld (l1894),hl
	inc de
	ld (l18a0),de
	and #38
	add a
	ld c,a
	ld b,#00
	ld hl,l18b6
	add hl,bc
	ld (l189a),hl
	ld a,#01
	ld (l1890),a
	ret
.l1658
	ld hl,l18a2
	dec (hl)
	ret nz
	ld de,(l18b3)
	ld a,(de)
	cp #ff
	jp nz,l1678
	ld hl,(l18ab)
	ld a,(hl)
	ld (l1535),a
	inc hl
	inc hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l18ab),hl
	ld a,(de)
.l1678
	call l17a5
	ld (l18a5),hl
	ld (l18a9),hl
	xor a
	ld (l18a4),a
	inc de
	ld a,(de)
	ld (l18a2),a
	inc de
	ld a,(de)
	bit 6,a
	jp z,l16a0
	inc de
	ex af,af'
	ld a,(de)
	call l17a5
	ld (l18a9),hl
	ld a,#ff
	ld (l18a4),a
	ex af,af'
.l16a0
	bit 7,a
	ld hl,#0000
	ld (l18af),hl
	jp z,l16b3
	ex af,af'
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	ex af,af'
.l16b3
	ld (l18a7),hl
	inc de
	ld (l18b3),de
	and #38
	add a
	ld c,a
	ld b,#00
	ld hl,l18b6
	add hl,bc
	ld (l18ad),hl
	ld a,#01
	ld (l18a3),a
	ret
.l16ce
	ld hl,l187d
	dec (hl)
	ld bc,(l188b)
	jp nz,l16ec
	ld hl,(l1887)
	ld a,(hl)
	ld (l187d),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l1887),hl
	ld (l188b),bc
.l16ec
	ld hl,(l1889)
	ld a,h
	ex af,af'
	add hl,bc
	ld (l1889),hl
	ld d,h
	ld hl,(l187f)
	ld bc,(l1881)
	add hl,bc
	ld (l187f),hl
	ld a,(l187e)
	ld c,a
	ld a,(l18b5)
	and c
	jp z,l170f
	ld hl,(l1883)
.l170f
	xor a
	ld e,#08
	jp l17b7
.l1715
	ld hl,l1890
	dec (hl)
	ld bc,(l189e)
	jp nz,l1733
	ld hl,(l189a)
	ld a,(hl)
	ld (l1890),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l189a),hl
	ld (l189e),bc
.l1733
	ld hl,(l189c)
	ld a,h
	ex af,af'
	add hl,bc
	ld (l189c),hl
	ld d,h
	ld hl,(l1892)
	ld bc,(l1894)
	add hl,bc
	ld (l1892),hl
	ld a,(l1891)
	ld c,a
	ld a,(l18b5)
	and c
	jp z,l1756
	ld hl,(l1896)
.l1756
	ld a,#02
	ld e,#09
	jp l17b7
.l175d
	ld hl,l18a3
	dec (hl)
	ld bc,(l18b1)
	jp nz,l177b
	ld hl,(l18ad)
	ld a,(hl)
	ld (l18a3),a
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ld (l18ad),hl
	ld (l18b1),bc
.l177b
	ld hl,(l18af)
	ld a,h
	ex af,af'
	add hl,bc
	ld (l18af),hl
	ld d,h
	ld hl,(l18a5)
	ld bc,(l18a7)
	add hl,bc
	ld (l18a5),hl
	ld a,(l18a4)
	ld c,a
	ld a,(l18b5)
	and c
	jp z,l179e
	ld hl,(l18a9)
.l179e
	ld a,#04
	ld e,#0a
	jp l17b7
.l17a5
	add (ix+#00)
	add a
	ld hl,l1b27
	add l
	ld l,a
	jp nc,l17b2
	inc h
.l17b2
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ret
.l17b7
	ld b,#f4
	out (c),a
	exx
	out (c),c
	out (c),e
	exx
	out (c),l
	exx
	out (c),d
	out (c),e
	exx
	inc a
	out (c),a
	exx
	out (c),c
	out (c),e
	exx
	out (c),h
	exx
	out (c),d
	out (c),e
	exx
	out (c),e
	exx
	out (c),c
	out (c),e
	exx
	out (c),d
	exx
	out (c),d
	out (c),e
	exx
	ret
.l17eb
	ld b,#f4
	out (c),a
	exx
	out (c),c
	out (c),e
	exx
	out (c),d
	exx
	out (c),d
	out (c),e
	exx
	ret
;
.init_music	;17fe
;
	call l1860
	ld a,#07
	ld d,#38
	call l17eb
	ld a,#0b
	ld d,#11
	call l17eb
	inc a
	ld d,#00
	call l17eb
	ld a,#0d
	ld d,#08
	call l17eb
	call l186e
.l181f
	ld hl,l1a35
	ld (l188d),hl
	ld (l18a0),hl
	ld (l18b3),hl
	ld hl,l1996
	ld (l1885),hl
	ld hl,l19ce
	ld (l1898),hl
	ld hl,l1936
	ld (l18ab),hl
	xor a
	ld (l1532),a
	inc a
	ld (l187c),a
	ld (l188f),a
	ld (l18a2),a
	ret
;
.stop_music	; 184c
;
	call l1860
	ld a,#08
	ld d,#00
	call l17eb
	inc a
	call l17eb
	inc a
	call l17eb
	jr l186e
.l1860
	ld bc,#f782
	out (c),c
	exx
	ld bc,#f6c0
	ld de,#8000
	exx
	ret
.l186e
	ld bc,#f40e
	out (c),c
	ld bc,#f6c0
	out (c),c
	xor a
	out (c),a
	ret
.l1883 equ $ + 7
.l1881 equ $ + 5
.l187f equ $ + 3
.l187e equ $ + 2
.l187d equ $ + 1
.l187c
	db #00,#00,#00,#00,#00,#00,#00,#00
.l188b equ $ + 7
.l1889 equ $ + 5
.l1887 equ $ + 3
.l1885 equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l1892 equ $ + 6
.l1891 equ $ + 5
.l1890 equ $ + 4
.l188f equ $ + 3
.l188d equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l189a equ $ + 6
.l1898 equ $ + 4
.l1896 equ $ + 2
.l1894
	db #00,#00,#00,#00,#00,#00,#00,#00
.l18a3 equ $ + 7
.l18a2 equ $ + 6
.l18a0 equ $ + 4
.l189e equ $ + 2
.l189c
	db #00,#00,#00,#00,#00,#00,#00,#00
.l18ab equ $ + 7
.l18a9 equ $ + 5
.l18a7 equ $ + 3
.l18a5 equ $ + 1
.l18a4
	db #00,#00,#00,#00,#00,#00,#00,#00
.l18b3 equ $ + 7
.l18b1 equ $ + 5
.l18af equ $ + 3
.l18ad equ $ + 1
	db #00,#00,#00,#00,#00,#00,#00,#00
.l18b6 equ $ + 2
.l18b5 equ $ + 1
	db #00,#00,#01,#00,#0f,#02,#80,#f8
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#0f,#04,#40,#fc
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#0f,#08,#20,#fe
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#0f,#0f,#00,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#0e,#ff,#00,#00
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#0f,#00,#01,#0f,#00,#ff
	db #ff,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#ff,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#00,#10,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00
.l1936
	db #00,#00,#1a,#1a,#03,#00,#1a,#1a
	db #05,#00,#1a,#1a,#08,#00,#36,#1a
	db #0a,#00,#2f,#1a,#0c,#00,#2f,#1a
	db #00,#00,#1a,#1a,#03,#00,#1a,#1a
	db #05,#00,#1a,#1a,#08,#00,#36,#1a
	db #0a,#00,#2f,#1a,#0c,#00,#2f,#1a
	db #00,#00,#1a,#1a,#03,#00,#1a,#1a
	db #05,#00,#1a,#1a,#08,#00,#36,#1a
	db #0a,#00,#2f,#1a,#0c,#00,#2f,#1a
	db #00,#00,#1a,#1a,#03,#00,#1a,#1a
	db #05,#00,#1a,#1a,#08,#00,#36,#1a
	db #0a,#00,#2f,#1a,#0c,#00,#2f,#1a
.l1996
	db #e8,#ff,#46,#1a,#00,#00,#46,#1a
	db #e8,#ff,#46,#1a,#00,#00,#46,#1a
	db #e8,#ff,#46,#1a,#00,#00,#46,#1a
	db #00,#00,#5f,#1a,#0c,#00,#d2,#1a
	db #0c,#00,#ee,#1a,#0c,#00,#0a,#1b
	db #00,#00,#5f,#1a,#00,#00,#6b,#1a
	db #00,#00,#6b,#1a,#00,#00,#ff,#ff
.l19ce
	db #f4,#ff,#46,#1a,#f4,#ff,#46,#1a
	db #f4,#ff,#46,#1a,#f4,#ff,#46,#1a
	db #f4,#ff,#46,#1a,#f4,#ff,#46,#1a
	db #00,#00,#65,#1a,#00,#00,#d2,#1a
	db #00,#00,#ee,#1a,#00,#00,#0a,#1b
	db #00,#00,#b9,#1a,#00,#00,#d2,#1a
	db #00,#00,#ee,#1a,#00,#00,#0a,#1b
	db #00,#00,#5f,#1a,#00,#00,#d2,#1a
	db #00,#00,#ee,#1a,#00,#00,#0a,#1b
	db #00,#00,#5f,#1a,#06,#04,#10,#12
	db #02,#10,#06,#04,#10,#06,#02,#10
	db #12,#04,#10,#06,#04,#10,#12,#04
.l1a35 equ $ + 7
	db #10,#06,#04,#10,#12,#04,#10,#ff
	db #06,#04,#10,#12,#02,#10,#06,#04
	db #10,#06,#02,#10,#12,#04,#10,#ff
	db #2a,#02,#00,#2a,#02,#00,#36,#02
	db #00,#36,#02,#00,#2a,#02,#00,#2a
	db #02,#00,#36,#02,#00,#36,#02,#00
	db #ff,#12,#20,#a0,#f8,#ff,#ff,#12
	db #20,#a0,#f4,#ff,#ff,#00,#04,#30
	db #33,#02,#08,#33,#04,#08,#33,#02
	db #08,#33,#04,#08,#33,#04,#18,#32
	db #04,#18,#33,#04,#18,#00,#04,#30
	db #00,#04,#30,#32,#02,#08,#32,#04
	db #08,#32,#02,#08,#32,#04,#08,#32
	db #04,#18,#34,#04,#18,#31,#04,#18
	db #36,#04,#18,#00,#04,#30,#33,#02
	db #08,#33,#04,#08,#33,#02,#08,#33
	db #04,#08,#33,#08,#10,#33,#04,#08
	db #00,#04,#30,#00,#04,#30,#34,#02
	db #08,#34,#04,#08,#34,#02,#08,#34
	db #04,#08,#34,#08,#10,#36,#04,#18
	db #00,#04,#30,#ff,#1e,#04,#08,#21
	db #04,#08,#1e,#02,#08,#23,#04,#08
	db #1e,#04,#08,#1e,#02,#08,#25,#04
	db #18,#23,#04,#18,#21,#04,#18,#ff
	db #1e,#04,#08,#21,#04,#08,#1e,#02
	db #08,#23,#04,#08,#1e,#04,#08,#1e
	db #02,#08,#23,#04,#18,#25,#04,#18
	db #2a,#04,#18,#ff,#1e,#04,#08,#21
	db #04,#08,#1e,#02,#08,#23,#04,#08
	db #25,#04,#08,#23,#04,#08,#21,#04
	db #08,#23,#06,#08,#ff,#00,#20,#30
.l1b27 equ $ + 1
	db #ff,#47,#05,#fc,#04,#d4,#04,#70
	db #04,#31,#04,#f4,#03,#dc,#03,#86
	db #03,#53,#03,#24,#03,#f6,#02,#cc
	db #02,#a4,#02,#7e,#02,#5a,#02,#38
	db #02,#18,#02,#fa,#01,#de,#01,#c3
	db #01,#aa,#01,#92,#01,#7b,#01,#66
	db #01,#52,#01,#3f,#01,#2d,#01,#1c
	db #01,#0c,#01,#fd,#00,#ef,#00,#e1
	db #00,#d5,#00,#c9,#00,#be,#00,#b3
	db #00,#a9,#00,#9f,#00,#96,#00,#8e
	db #00,#86,#00,#7f,#00,#77,#00,#71
	db #00,#6a,#00,#64,#00,#5f,#00,#59
	db #00,#54,#00,#50,#00,#4b,#00,#47
	db #00,#43,#00,#3f,#00,#3c,#00,#38
	db #00,#35,#00,#32,#00,#2f,#00,#2d
	db #00,#2a,#00,#28,#00,#26,#00,#24
	db #00,#22,#00,#20,#00,#18,#00,#00
	db #00,#00,#51,#f3,#f3,#f3,#f3,#a2
	db #00,#00,#00,#00,#00,#51,#f7,#ff
	db #ff,#ff,#f3,#f9,#a2,#00,#00,#00
	db #00,#f7,#ff,#ff,#fb,#f3,#ff,#f3
	db #f3,#00,#00,#00,#51,#ff,#ff,#ff
	db #f3,#fb,#f7,#f9,#f3,#00,#00,#00
	db #51,#ff,#ff,#fb,#f3,#f3,#f3,#f3
	db #f6,#a2,#00,#00,#f7,#ff,#ff,#fb
	db #f3,#f6,#f3,#f3,#f3,#f3,#00,#00
	db #f7,#ff,#ff,#ff,#fb,#f3,#f3,#f3
	db #f3,#f3,#00,#51,#ff,#ff,#ff,#ff
	db #f3,#f3,#f3,#f3,#f3,#f3,#a2,#51
	db #ff,#ff,#ff,#fb,#f3,#f3,#f3,#f3
	db #f3,#f3,#a2,#51,#ff,#ff,#ff,#f3
	db #f3,#f3,#f3,#fb,#f3,#f3,#a2,#f7
	db #ff,#ff,#ff,#f3,#f3,#f7,#f3,#f3
	db #f3,#f3,#f3,#f7,#ff,#ff,#ff,#f3
	db #f3,#f7,#f3,#f3,#f7,#f3,#f3,#f7
	db #ff,#ff,#ff,#fb,#f3,#f7,#f3,#f7
	db #f3,#fb,#f3,#f7,#ff,#ff,#ff,#f3
	db #f3,#fb,#f7,#f7,#f3,#fb,#f3,#f7
	db #ff,#ff,#fb,#f3,#f3,#fb,#f7,#cf
	db #fb,#f3,#f3,#f7,#ff,#ff,#ff,#f3
	db #f7,#fb,#ef,#cf,#fb,#f3,#f3,#51
	db #ff,#ff,#ff,#fb,#fb,#f7,#cf,#cf
	db #fb,#f3,#a2,#51,#ff,#ef,#ff,#ff
	db #f7,#ef,#cf,#cf,#df,#f3,#a2,#51
	db #ff,#9e,#cf,#cf,#cf,#cf,#cf,#9e
	db #6d,#fb,#02,#51,#ff,#9e,#3c,#3c
	db #cf,#cf,#3c,#7c,#bc,#a3,#02,#51
	db #57,#9e,#fc,#fc,#3c,#9e,#fc,#fc
	db #fc,#a3,#02,#01,#57,#9e,#ff,#fc
	db #fc,#7c,#fc,#fd,#fc,#f6,#02,#01
	db #ed,#df,#ff,#fe,#fc,#fc,#fc,#fd
	db #fc,#03,#02,#01,#47,#df,#df,#ff
	db #fe,#fc,#fc,#ff,#fe,#03,#02,#01
	db #a9,#fe,#cf,#ff,#fe,#fd,#ff,#ff
	db #ff,#56,#02,#01,#03,#fb,#f3,#f3
	db #fe,#ff,#f3,#f3,#f7,#03,#02,#55
	db #57,#f7,#ff,#ff,#f7,#fb,#ff,#ff
	db #fb,#ab,#02,#00,#ff,#f7,#eb,#d7
	db #f3,#f3,#ff,#c3,#fb,#ff,#02,#00
	db #ff,#f7,#ff,#d7,#e7,#f9,#ff,#eb
	db #fb,#ff,#00,#00,#ef,#f7,#ff,#ff
	db #e7,#79,#ff,#eb,#fb,#fe,#00,#00
	db #ef,#f7,#d7,#ff,#e7,#79,#eb,#ff
	db #fb,#fe,#00,#00,#fd,#f7,#ff,#fb
	db #ef,#7d,#f7,#ff,#fb,#fe,#00,#00
	db #df,#db,#f3,#f7,#9e,#fc,#fb,#f3
	db #f6,#ef,#00,#00,#df,#cf,#ff,#fe
	db #9e,#fc,#bc,#ff,#fc,#ef,#00,#00
	db #df,#ef,#7c,#fc,#9e,#fc,#bc,#fc
	db #fc,#ef,#00,#00,#55,#df,#de,#3c
	db #9e,#fc,#fc,#fc,#fd,#8a,#00,#00
	db #55,#df,#de,#6d,#ef,#fd,#fc,#fc
	db #fd,#00,#00,#00,#55,#cf,#de,#df
	db #de,#fc,#fe,#fc,#ff,#00,#00,#00
	db #55,#cf,#3c,#ff,#cf,#ed,#54,#fc
	db #7d,#00,#00,#00,#00,#cf,#3c,#ff
	db #ef,#df,#ff,#fc,#7d,#00,#00,#00
	db #00,#ef,#3c,#ef,#df,#ef,#df,#fc
	db #7d,#00,#00,#00,#00,#ef,#7d,#cf
	db #cf,#7c,#cf,#fc,#7d,#00,#00,#00
	db #00,#ef,#7d,#cf,#3c,#7c,#fc,#fc
	db #7d,#00,#00,#00,#01,#ef,#6d,#9e
	db #7c,#fc,#fc,#fc,#7d,#00,#00,#00
	db #01,#ef,#6d,#cf,#db,#f3,#ed,#fc
	db #7d,#aa,#00,#00,#01,#ef,#cf,#fb
	db #f3,#f3,#f7,#bc,#fd,#57,#00,#00
	db #56,#ef,#cf,#ff,#ff,#ff,#ff,#bc
	db #ab,#fd,#00,#00,#56,#ef,#cf,#fe
	db #fc,#fc,#fd,#bc,#ab,#fd,#00,#00
	db #56,#ff,#cf,#fc,#f3,#f3,#fc,#bc
	db #ab,#fd,#00,#55,#56,#fd,#cf,#7c
	db #ff,#ff,#fc,#6d,#ab,#fd,#aa,#ff
	db #a3,#fd,#cf,#3c,#3c,#7c,#fc,#6d
	db #ab,#fd,#f7,#f3,#ab,#fd,#cf,#cf
	db #bc,#7c,#fc,#7d,#56,#fb,#f3,#f3
	db #ab,#fc,#ff,#cf,#bc,#7c,#fc,#ab
	db #56,#fb,#f3,#f3,#ab,#56,#fd,#ef
	db #cf,#fc,#cf,#ab,#fc,#fb,#f3,#f3
	db #f7,#03,#ed,#ef,#cf,#cf,#df,#56
	db #fd,#f3,#f3,#f3,#f3,#ab,#ed,#df
	db #ff,#ff,#ef,#56,#fb,#f3,#f3,#00
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #fc,#fc,#fc,#fc,#fc,#a8,#00,#56
	db #fc,#a8,#01,#fc,#fc,#01,#fc,#fc
	db #fc,#fc,#fc,#00,#00,#56,#fc,#fc
	db #fc,#fc,#fc,#fc,#fc,#a8,#56,#fc
	db #a8,#01,#fc,#fc,#01,#fc,#fc,#fc
	db #fc,#a8,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#f3
	db #a6,#0c,#0c,#0c,#0c,#cf,#8a,#01
	db #0f,#0f,#0f,#0f,#0f,#5e,#00,#07
	db #0f,#a8,#01,#0f,#5e,#01,#0f,#5e
	db #00,#07,#0f,#a8,#00,#00,#01,#0f
	db #0f,#0f,#0f,#5e,#00,#00,#07,#0f
	db #a8,#01,#0f,#5e,#01,#0f,#0f,#0f
	db #0f,#0f,#a8,#00,#00,#f3,#a6,#0c
	db #0c,#0c,#0c,#cf,#8a,#00,#00,#f3
	db #a6,#0c,#0c,#0c,#0c,#cf,#8a,#01
	db #0f,#5e,#00,#01,#0f,#5e,#00,#07
	db #0f,#a8,#01,#0f,#5e,#01,#0f,#5e
	db #00,#07,#0f,#a8,#00,#00,#00,#00
	db #07,#0f,#a8,#00,#00,#00,#07,#0f
	db #0f,#0f,#0f,#5e,#01,#0f,#0f,#0f
	db #0f,#0f,#5e,#00,#00,#f3,#a6,#0c
	db #0c,#0c,#0c,#cf,#8a,#00,#00,#aa
	db #00,#00,#00,#00,#00,#00,#00,#01
	db #cc,#dc,#00,#46,#cc,#a8,#00,#46
	db #cc,#a8,#01,#cc,#dc,#01,#cc,#dc
	db #00,#46,#cc,#a8,#00,#00,#00,#00
	db #46,#cc,#a8,#00,#00,#00,#46,#cc
	db #a8,#01,#cc,#dc,#01,#cc,#dc,#00
	db #00,#00,#00,#00,#00,#aa,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#0f
	db #0f,#0f,#0f,#0f,#0f,#5e,#00,#01
	db #cc,#dc,#00,#01,#cc,#dc,#00,#46
	db #cc,#cc,#cc,#cc,#dc,#01,#cc,#dc
	db #00,#46,#cc,#a8,#00,#41,#e9,#00
	db #46,#cc,#a8,#00,#00,#00,#46,#cc
	db #a8,#01,#cc,#dc,#01,#cc,#cc,#cc
	db #cc,#dc,#00,#00,#00,#07,#0f,#0f
	db #0f,#0f,#0f,#0f,#0f,#0f
;
.play_music		; added by Megachur
;
	ld a,0
	inc a
	ld (play_music+1),a
	cp 3
	ret nz
	xor a
	ld (play_music+1),a
	jp real_play_music
;
.music_info
	db "Run the Gauntlet (1989)(Ocean Software)(Chris Kerry)",0
	db "Warning - Music will stop without restart !",0

	read "music_end.asm"

