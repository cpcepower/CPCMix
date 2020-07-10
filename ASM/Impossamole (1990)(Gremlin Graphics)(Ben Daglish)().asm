; Music of Impossamole (1990)(Gremlin Graphics)(Ben Daglish)()
; Ripped by Megachur the 18/11/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "IMPOSSAM.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 18
MUSIC_DATE_RIP_MONTH	equ 11
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #12fb

	read "music_header.asm"

	ld a,(#d61d)
	cp #02
	ret z
	cp #03
	ret z
	ld a,(#2723)
	or a
	call nz,l1329
	ld a,(#2724)
	or a
	call nz,l1313
	ret
.l1313
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,#9c00
	add hl,de
	call l135a
	ld bc,#000e
	add hl,bc
	call l133f
	ret
.l1329
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,#9c00
	add hl,de
	call l133f
	ld bc,#000e
	add hl,bc
	call l135a
	ret
.l133f
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld a,c
	rra
	and #55
	ld d,a
	ld a,b
	and #55
	add a
	or d
	ld (hl),a
	dec hl
	ld a,b
	rra
	and #55
	ld d,a
	ld a,c
	and #55
	add a
	or d
	ld (hl),a
	ret
.l135a
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld a,c
	and #55
	add a
	ld d,a
	ld a,b
	rra
	and #55
	or d
	ld (hl),a
	dec hl
	ld a,b
	and #55
	add a
	ld d,a
	ld a,c
	rra
	and #55
	or d
	ld (hl),a
	ret
	.l1375
	db #80,#2c,#30,#2d,#30,#2c,#30,#31
	db #30,#2c,#30,#2d,#30,#2c,#30,#25
.l138a equ $ + 5
.l1387 equ $ + 2
	db #30,#ff,#7f,#30,#ff,#80,#91,#1c
	db #30,#92,#20,#30,#1f,#30,#22,#30
	db #20,#30,#93,#23,#30,#22,#30,#94
.l13a1 equ $ + 4
	db #27,#30,#90,#ff,#81,#01,#18,#01
.l13a7 equ $ + 2
	db #18,#ff,#81,#01,#18,#01,#18,#01
	db #18,#01,#18,#01,#18,#01,#18,#01
	db #0c,#01,#0c,#01,#0c,#01,#0c,#01
	db #18,#01,#18,#01,#18,#01,#18,#01
	db #18,#01,#18,#01,#0c,#01,#0c,#01
.l13d1 equ $ + 4
	db #0c,#01,#0c,#ff,#82,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#2a,#06,#12,#06,#36
	db #06,#1e,#06,#12,#06,#12,#06,#12
	db #06,#12,#0c,#12,#0c,#12,#06,#12
.l144f equ $ + 2
	db #06,#ff,#81,#91,#23,#12,#23,#12
	db #23,#12,#92,#27,#12,#27,#0c,#27
	db #0c,#29,#12,#29,#12,#29,#12,#22
.l146c equ $ + 7
	db #12,#22,#0c,#22,#0c,#90,#ff,#81
	db #0d,#06,#0d,#06,#0d,#0c,#0d,#0c
	db #0d,#06,#0d,#0c,#0d,#0c,#0d,#06
.l1482 equ $ + 5
	db #08,#0c,#0b,#0c,#ff,#81,#10,#06
	db #10,#06,#10,#0c,#10,#0c,#10,#06
	db #10,#06,#0b,#06,#0b,#06,#0b,#0c
.l149c equ $ + 7
	db #0b,#0c,#0b,#06,#0b,#06,#ff,#81
	db #0d,#06,#19,#0c,#0d,#06,#19,#0c
	db #0d,#06,#19,#0c,#0d,#06,#19,#0c
.l14b2 equ $ + 5
	db #0b,#0c,#08,#0c,#ff,#81,#0d,#06
	db #0d,#06,#0d,#0c,#0d,#12,#0d,#0c
	db #0d,#06,#0d,#0c,#0d,#0c,#19,#06
.l14c8 equ $ + 3
	db #19,#06,#ff,#81,#10,#06,#10,#06
	db #10,#0c,#10,#0c,#10,#06,#10,#06
	db #0b,#06,#0b,#06,#0b,#0c,#0b,#0c
.l14e2 equ $ + 5
	db #0b,#06,#0b,#06,#ff,#81,#0d,#06
	db #0d,#06,#19,#0c,#0d,#0c,#19,#06
	db #0d,#0c,#0d,#06,#19,#0c,#0d,#0c
	db #19,#0c,#09,#06,#09,#06,#15,#0c
	db #09,#0c,#15,#06,#0b,#0c,#0b,#06
	db #17,#0c,#0b,#0c,#17,#0c,#0d,#06
	db #0d,#06,#19,#0c,#0d,#0c,#19,#06
	db #0d,#0c,#0d,#06,#19,#0c,#0d,#0c
	db #19,#0c,#10,#06,#10,#06,#1c,#0c
	db #10,#0c,#1c,#06,#0b,#0c,#0b,#06
.l1534 equ $ + 7
	db #17,#0c,#0b,#0c,#17,#0c,#ff,#81
	db #0d,#06,#0d,#0c,#0d,#06,#0d,#0c
	db #0d,#06,#0d,#12,#0b,#0c,#10,#0c
	db #0b,#0c,#09,#06,#09,#0c,#09,#0c
	db #09,#0c,#09,#06,#0b,#0c,#08,#0c
.l155a equ $ + 5
	db #0b,#0c,#0d,#0c,#ff,#83,#2a,#0c
	db #2a,#0c,#1e,#0c,#2a,#0c,#2a,#06
	db #2a,#0c,#2a,#06,#1e,#0c,#1e,#0c
	db #2a,#0c,#2a,#0c,#1e,#12,#2a,#0c
	db #2a,#06,#2a,#06,#2a,#06,#1e,#06
	db #12,#06,#06,#06,#06,#06,#06,#0c
	db #06,#0c,#2a,#0c,#1e,#0c,#1e,#0c
	db #2a,#0c,#1e,#0c,#2a,#0c,#1e,#0c
	db #1e,#0c,#2a,#0c,#2a,#06,#2a,#06
	db #2a,#06,#36,#06,#36,#06,#2a,#06
	db #1e,#06,#12,#06,#06,#06,#06,#06
.l15ae equ $ + 1
	db #ff,#84,#19,#0c,#20,#06,#20,#06
	db #1f,#0c,#20,#0c,#25,#0c,#24,#0c
	db #25,#0c,#27,#0c,#19,#0c,#21,#06
	db #21,#06,#20,#0c,#21,#0c,#23,#0c
	db #21,#0c,#20,#0c,#1c,#0c,#19,#0c
	db #20,#06,#20,#06,#1f,#0c,#20,#0c
	db #25,#0c,#24,#0c,#25,#0c,#27,#0c
	db #28,#0c,#2a,#06,#2c,#06,#2d,#0c
	db #2c,#06,#2a,#06,#2c,#0c,#2a,#0c
.l15fa equ $ + 5
	db #28,#0c,#27,#0c,#ff,#84,#25,#0c
	db #20,#0c,#25,#0c,#2c,#0c,#28,#18
	db #27,#18,#25,#0c,#20,#0c,#25,#0c
	db #2c,#0c,#28,#0c,#27,#0c,#25,#0c
	db #23,#0c,#25,#0c,#20,#0c,#25,#0c
	db #2c,#0c,#28,#18,#27,#0c,#23,#0c
.l162a equ $ + 5
	db #21,#30,#20,#30,#ff,#84,#25,#78
	db #28,#06,#27,#06,#28,#06,#27,#06
	db #28,#0c,#2a,#0c,#28,#0c,#23,#0c
	db #25,#78,#28,#06,#27,#06,#28,#06
	db #27,#06,#28,#0c,#2a,#0c,#28,#0c
.l1650 equ $ + 3
	db #29,#0c,#ff,#80,#2a,#78,#2d,#06
	db #2c,#06,#2d,#06,#2c,#06,#2d,#0c
	db #2f,#0c,#2d,#0c,#28,#0c,#2a,#60
.l1669 equ $ + 4
	db #85,#2a,#60,#ff,#84,#14,#0c,#17
	db #0c,#16,#0c,#17,#0c,#14,#0c,#23
	db #0c,#22,#0c,#20,#0c,#1b,#0c,#1e
	db #0c,#1d,#0c,#1e,#0c,#1b,#0c,#2a
	db #0c,#29,#0c,#27,#0c,#1e,#0c,#21
	db #0c,#20,#0c,#21,#0c,#1e,#0c,#2d
	db #0c,#2c,#0c,#2a,#0c,#34,#0c,#33
	db #0c,#31,#0c,#28,#0c,#27,#0c,#25
.l16ab equ $ + 6
	db #0c,#1c,#0c,#1b,#0c,#ff,#84,#14
	db #0c,#17,#0c,#16,#0c,#17,#0c,#14
	db #0c,#23,#0c,#22,#0c,#20,#0c,#1b
	db #0c,#1e,#0c,#1d,#0c,#1e,#0c,#1b
	db #0c,#2a,#0c,#29,#0c,#27,#0c,#1e
	db #0c,#21,#0c,#20,#0c,#21,#0c,#1e
	db #0c,#2d,#0c,#2c,#0c,#2a,#0c,#22
	db #0c,#25,#0c,#24,#0c,#25,#0c,#22
	db #0c,#25,#0c,#28,#0c,#2b,#0c,#ff
.l16ed
	db #84,#94,#2c,#0c,#2c,#18,#2d,#18
	db #2c,#18,#2a,#0c,#2c,#60,#90,#86
.l1700 equ $ + 3
	db #01,#03,#ff,#7f,#60,#7f,#60,#7f
.l1709 equ $ + 4
	db #60,#7f,#60,#ff,#84,#17,#60,#85
.l1714 equ $ + 7
	db #17,#60,#7f,#60,#7f,#60,#ff,#82
	db #12,#60,#12,#60,#12,#60,#12,#06
	db #12,#06,#12,#06,#12,#06,#12,#06
	db #12,#06,#12,#06,#12,#06,#12,#06
	db #12,#06,#12,#06,#12,#06,#12,#06
.l173c equ $ + 7
	db #12,#06,#12,#06,#12,#06,#ff,#81
	db #0d,#0c,#0d,#0c,#0d,#0c,#0d,#0c
	db #0d,#0c,#0d,#0c,#0d,#0c,#0d,#0c
	db #0d,#0c,#0d,#0c,#0d,#0c,#0d,#0c
	db #0d,#0c,#0d,#06,#0d,#06,#0d,#0c
	db #0d,#06,#0d,#06,#0d,#0c,#0d,#0c
	db #0d,#0c,#0d,#0c,#0d,#0c,#0d,#0c
	db #0d,#0c,#0d,#0c,#0d,#06,#0d,#06
	db #0d,#0c,#0d,#0c,#0d,#06,#0d,#0c
	db #0d,#06,#0d,#06,#0d,#06,#0d,#0c
.l178a equ $ + 5
	db #0d,#06,#0d,#06,#ff,#81,#14,#06
	db #14,#06,#14,#0c,#14,#12,#14,#0c
	db #14,#06,#14,#0c,#14,#0c,#14,#06
	db #14,#06,#0f,#06,#0f,#06,#0f,#0c
	db #0f,#0c,#0f,#06,#0f,#0c,#0f,#0c
	db #0f,#06,#0f,#0c,#0f,#06,#0f,#06
	db #12,#06,#12,#06,#12,#0c,#12,#12
	db #12,#0c,#12,#06,#12,#0c,#12,#0c
	db #12,#06,#12,#06,#0d,#06,#0d,#06
	db #0d,#0c,#0d,#12,#0d,#0c,#0d,#06
	db #0d,#0c,#0d,#0c,#0d,#06,#0d,#06
.l17de equ $ + 1
	db #ff,#81,#14,#06,#14,#06,#14,#0c
	db #14,#12,#14,#0c,#14,#06,#14,#0c
	db #14,#0c,#14,#06,#14,#06,#0f,#06
	db #0f,#06,#0f,#0c,#0f,#0c,#0f,#06
	db #0f,#0c,#0f,#0c,#0f,#06,#0f,#0c
	db #0f,#06,#0f,#06,#12,#06,#12,#06
	db #12,#0c,#12,#12,#12,#0c,#12,#06
	db #12,#0c,#12,#0c,#12,#06,#12,#06
	db #16,#06,#0a,#06,#0a,#0c,#0a,#12
	db #0a,#0c,#0a,#06,#0a,#0c,#0a,#0c
.l1832 equ $ + 5
	db #0a,#06,#0a,#06,#ff,#81,#08,#0c
	db #08,#18,#09,#18,#08,#18,#06,#0c
	db #08,#60,#ff
.l1840
	dw l184c,l1877,l187f   
	dw l1893,l1893,l1893   
.l184c
	db #88
	db #03,#04,#1a,#83,#07,#08,#09,#fe
	db #f9,#09,#fe,#00,#09,#fe,#f9,#09
	db #fe,#00,#83,#0a,#0b,#0c,#82,#0d
	db #0c,#83,#0a,#0b,#0c,#82,#0d,#0c
	db #0c,#fe,#05,#0c,#fe,#00,#1b,#1c
	db #1d,#ff
.l1877
	db #00,#02,#fe,#05,#02,#8e
	db #05,#ff
.l187f
	db #16,#16,#19,#17,#82,#06
	db #0e,#0f,#10,#16,#0e,#0f,#10,#10
	db #11,#12,#13,#14,#15,#ff
.l1893
	db #01,#ff
.l1895
	db l1375,l1387,l138a,l13a1
	db l13a7,l13d1,l144f,l146c
	db l1482,l149c,l14b2,l14c8
	db l14e2,l1534,l155a,l15ae
	db l15fa,l162a,l1650,l1669
	db l16ab,l16ed,l1700,l1709
	db l1714,l1714,l173c,l178a
	db l17de,l1832
;	db #75,#87,#8a,#a1,#a7,#d1,#4f,#6c
;	db #82,#9c,#b2,#c8,#e2,#34,#5a,#ae
;	db #fa,#2a,#50,#69,#ab,#ed,#00,#09
;	db #14,#14,#3c,#8a,#de,#32
.l18b3
	db l1375/&100,l1387/&100,l138a/&100,l13a1/&100
	db l13a7/&100,l13d1/&100,l144f/&100,l146c/&100
	db l1482/&100,l149c/&100,l14b2/&100,l14c8/&100
	db l14e2/&100,l1534/&100,l155a/&100,l15ae/&100
	db l15fa/&100,l162a/&100,l1650/&100,l1669/&100
	db l16ab/&100,l16ed/&100,l1700/&100,l1709/&100
	db l1714/&100,l1714/&100,l173c/&100,l178a/&100
	db l17de/&100,l1832/&100
;	db #13,#13,#13,#13,#13,#13,#14,#14
;	db #14,#14,#14,#14,#14,#15,#15,#15
;	db #15,#16,#16,#16,#16,#16,#17,#17
;	db #17,#17,#17,#17,#17,#18

	db #8a,#21,#49,#00
	db #00,#00,#00,#00,#8a,#19,#41,#00
	db #00,#00,#00,#00,#8a,#29,#49,#00
	db #00,#00,#00,#00,#8a,#21,#39,#00
	db #00,#00,#00,#00,#a1,#31,#00,#00
.l18f9 equ $ + 4
	db #00,#00,#00,#00,#60,#ff,#60,#ff
	db #60,#10,#06,#01,#00,#01,#7f,#fd
	db #00,#fe,#6e,#00,#00,#00,#00,#01
	db #7f,#fa,#00,#ff,#50,#00,#01,#18
	db #00,#02,#7f,#fc,#00,#ff,#50,#00
	db #01,#18,#00,#02,#7f,#fe,#64,#ff
	db #7c,#20,#03,#02,#00,#01,#7f,#ff
	db #64,#ff,#7f,#00,#00,#01,#00,#01
	db #7f,#fe,#00,#ff,#00,#20,#03,#02
	db #00,#01,#60,#ff,#00,#ff,#60,#10
.l1949 equ $ + 4
	db #06,#01,#00,#01,#7f,#e9,#01,#ff
	db #7f,#00,#00,#a3,#00,#01,#da,#05
	db #01,#1b,#ff,#01,#ff,#50,#00,#00
	db #01,#00,#01,#2f,#00,#01,#7f,#e9
	db #01,#ff,#7f,#00,#00,#29,#ff,#01
	db #4e,#03,#01,#08,#f2,#01,#f9,#6b
	db #ff,#00,#00,#00,#05,#3c,#0f,#02
	db #0e,#f2,#01,#f9,#29,#ff,#00,#00
	db #00,#02,#58,#00,#01,#7f,#fc,#01
	db #ff,#44,#00,#00,#ec,#ff,#01,#6a
	db #08,#01,#7f,#fd,#01,#ff,#60,#00
	db #00,#00,#ff,#02,#f0,#00,#01,#0c
	db #00,#00,#00,#71,#00,#00,#9c,#00
	db #05,#bb,#0f,#0f,#0a,#fa,#01,#f6
	db #00,#00,#00,#ff,#ff,#05,#23,#00
	db #1c,#14,#ec,#01,#ff,#7f,#01,#00
	db #00,#00,#02,#7c,#00,#0a,#7f,#fd
	db #01,#ff,#7f,#04,#00,#e0,#ff,#01
	db #6d,#09,#01,#7f,#fa,#01,#ff,#7f
	db #00,#00,#f2,#ff,#01,#7d,#02,#01
	db #7f,#f6,#01,#ff,#7f,#00,#00,#00
	db #00,#01,#84,#0d,#01,#7f,#f9,#01
	db #ff,#7f,#00,#00,#00,#00,#01,#c8
	db #00,#01,#7f,#fd,#08,#dd,#7e,#00
	db #00,#dd,#fc,#01,#f2,#03
	db #01
.l1a0c
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
.l1abc equ $ + 6
.l1abb equ $ + 5
.l1aba equ $ + 4
.l1ab7 equ $ + 1
.l1ab6
	db #3f,#fe,#f7,#09,#24,#00,#22,#00
	db #20,#00,#18,#00,#3f,#fe,#f7,#09
.l1acd equ $ + 7
.l1acc equ $ + 6
.l1ac9 equ $ + 3
.l1ac8 equ $ + 2
	db #63,#68,#61,#fd,#ef,#12,#74,#0d
.l1ace
	db #0a,#09,#69,#6e,#63,#62,#69,#fd
.l1adb equ $ + 5
.l1ada equ $ + 4
	db #ef,#12,#73,#65,#74,#fb,#df,#24
.l1ae0 equ $ + 2
.l1adf equ $ + 1
.l1ade
	db #61,#74,#0d,#0a,#09,#6f,#72,#67
.l1aed equ $ + 7
.l1aec equ $ + 6
	db #20,#fb,#df,#24,#72,#73,#65,#00
.l1aee
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
	jr nz,l1b13
	ld a,#01
.l1b13
	ld (ix+#08),a
	ld a,(iy+#07)
	ld (ix+#0b),a
	ld a,(iy+#08)
	ld (ix+#0c),a
	xor a
	ld (ix+#09),a
	ld (ix+#0a),a
	ld a,(l1ab6)
	or (ix+#02)
	ld c,(iy+#09)
	ld (ix+#11),c
	bit 0,c
	jr z,l1b3c
	and (ix+#00)
.l1b3c
	bit 1,c
	jr z,l1b43
	and (ix+#01)
.l1b43
	ld (l1ab6),a
	bit 2,c
	jr nz,l1b54
	ld hl,l1ca2
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l1b54
	call l1d5a
	ld a,(iy+#00)
	ld c,#0d
	call l1d71
	ld a,(iy+#04)
	ld c,#0b
	call l1d71
	inc c
	xor a
	call l1d71
	ld (ix+#05),#ff
	jp l1d66
.l1b73
	call l1d5a
	ld c,#07
	ld a,(l1ab6)
	or #3f
	ld (l1ab6),a
	call l1d71
	xor a
	inc c
	call l1d71
	inc c
	call l1d71
	inc c
	call l1d71
	ld a,#01
	inc c
	call l1d71
	inc c
	xor a
	call l1d71
	inc c
	call l1d71
	ld (l1ac8),a
	ld (l1ada),a
	ld (l1aec),a
	ld (l1abc),a
	ld (l1ace),a
	ld (l1ae0),a
	jp l1d66
.l1bb4
	ld a,(l1ab6)
	and #3f
	cp #3f
	ret z
	ld ix,l1ab7
	call l1c70
	ld ix,l1ac9
	call l1c70
	ld ix,l1adb
	call l1c70
	call l1d5a
	ld ix,l1ab7
	ld c,#07
	ld a,(l1ab6)
	call l1d71
	ld c,#00
	ld a,(l1aba)
	add (ix+#09)
	bit 1,(ix+#11)
	jp z,l1bf2
	ld (l1aed),a
.l1bf2
	call l1d71
	inc c
	ld a,(l1abb)
	adc (ix+#0a)
	call l1d71
	inc c
	ld a,(l1acc)
	add (ix+#1b)
	bit 1,(ix+#23)
	jp z,l1c10
	ld (l1aed),a
.l1c10
	call l1d71
	inc c
	ld a,(l1acd)
	adc (ix+#1c)
	call l1d71
	inc c
	ld a,(l1ade)
	add (ix+#2d)
	bit 1,(ix+#35)
	jp z,l1c2e
	ld (l1aed),a
.l1c2e
	call l1d71
	inc c
	ld a,(l1adf)
	adc (ix+#2e)
	call l1d71
	inc c
	ld a,(l1aed)
	rrca
	rrca
	rrca
	call l1d71
	ld c,#08
	ld a,(l1abc)
	srl a
	srl a
	srl a
	call l1d71
	inc c
	ld a,(l1ace)
	srl a
	srl a
	srl a
	call l1d71
	inc c
	ld a,(l1ae0)
	srl a
	srl a
	srl a
	call l1d71
	jp l1d66
.l1c70
	ld a,(l1ab6)
	and (ix+#02)
	cp (ix+#02)
	ret z
	ld a,(ix+#0f)
	ld ly,a
	ld a,(ix+#10)
	ld hy,a
	ld a,(ix+#06)
	and a
	jr z,l1c91
	cp #ff
	jr z,l1c91
	dec (ix+#06)
.l1c91
	call l1d18
	bit 2,(iy+#09)
	jp nz,l1d11
	ld l,(ix+#0d)
	ld h,(ix+#0e)
	jp (hl)
.l1ca2
	ld a,(ix+#05)
	add (iy+#00)
	cp (iy+#04)
	jr nc,l1cb1
	ld (ix+#05),a
	ret
.l1cb1
	ld a,(iy+#04)
	ld (ix+#05),a
	ld hl,l1cc1
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l1cc1
	ld a,(ix+#05)
	add (iy+#01)
	jp m,l1cd3
	cp (iy+#02)
	jr c,l1cd3
	ld (ix+#05),a
	ret
.l1cd3
	ld a,(iy+#02)
	ld (ix+#05),a
	ld hl,l1ce3
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l1ce3
	ld a,(ix+#06)
	and a
	ret nz
	ld hl,l1cf2
	ld (ix+#0d),l
	ld (ix+#0e),h
	ret
.l1cf2
	ld a,(ix+#05)
	add (iy+#03)
	jp m,l1cff
	ld (ix+#05),a
	ret
.l1cff
	ld (ix+#05),#00
	ld a,(l1ab6)
	or (ix+#02)
	ld (l1ab6),a
	res 7,(ix+#11)
	ret
.l1d11
	ld a,(ix+#06)
	and a
	ret nz
	jr l1cff
.l1d18
	ld a,(ix+#07)
	and a
	jr z,l1d25
	cp #ff
	ret z
	dec (ix+#07)
	ret nz
.l1d25
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
	jp p,l1d49
	ld (ix+#07),#ff
	ret
.l1d49
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
.l1d5a
	ld bc,#f782
	out (c),c
	ld de,#c000
	ld hl,#f680
	ret
.l1d66
	ld bc,#f40e
	out (c),c
	ld b,h
	out (c),d
	out (c),e
	ret
.l1d71
	push bc
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
	pop bc
	ret
	jp l1e16	; init
	jp l1e9e	; play
.l1d8c
.music_end
	db #00
	jp l1d97	; init sound effects
;
.stop_music
;
	xor a
	ld (l1d8c),a
	jp l1b73
.l1d97
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
	ld iy,l1949
	ex de,hl
	add iy,de
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	ld ix,l1ab7
	call l1aee
	set 7,(ix+#11)
	ei
	ret
.l1dc6 equ $ + 7
.l1dc0 equ $ + 1
.l1dbf
	db #00,#c3,#1a,#cd,#fa,#1a,#dd,#cb
.l1dce equ $ + 7
.l1dcc equ $ + 5
.l1dcb equ $ + 4
.l1dca equ $ + 3
.l1dc9 equ $ + 2
.l1dc8 equ $ + 1
	db #11,#fe,#fb,#c9,#00,#64,#61,#74
.l1dd5 equ $ + 6
.l1dd4 equ $ + 5
	db #2e,#70,#64,#73,#0d,#08,#0d,#0a
.l1dde equ $ + 7
.l1ddd equ $ + 6
.l1ddb equ $ + 4
	db #09,#65,#6e,#64,#69,#66,#0d,#0a
.l1de3 equ $ + 4
.l1de1 equ $ + 2
.l1de0 equ $ + 1
.l1ddf
	db #09,#08,#0a,#3b,#2d,#2d,#2d,#2d
.l1dea equ $ + 3
.l1de9 equ $ + 2
	db #2d,#2d,#10,#2d,#2d,#2d,#2d,#2d
.l1df6 equ $ + 7
.l1df5 equ $ + 6
.l1df4 equ $ + 5
.l1df3 equ $ + 4
.l1df2 equ $ + 3
.l1df0 equ $ + 1
	db #2d,#2d,#2d,#2d,#2d,#2d,#10,#2d
.l1dfe equ $ + 7
.l1df8 equ $ + 1
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d,#2d
	db #2d,#2d,#2d,#2d,#2d,#2d,#2d
;
.init_music
.l1e16
;
	push af
	call l1b73
	pop af
	ld l,a
	add a
	add l
	add a
	ld hl,l1840
	add l
	ld l,a
	jr nc,l1e27
	inc h
.l1e27
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1dc0),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1dd5),de
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1dea),de
	xor a
	ld (l1dc9),a
	ld (l1dde),a
	ld (l1df3),a
	ld (l1dce),a
	ld (l1de3),a
	ld (l1df8),a
	cpl
	ld (l1dca),a
	ld (l1ddf),a
	ld (l1df4),a
	ld a,#01
	ld (l1dc8),a
	ld (l1ddd),a
	ld (l1df2),a
	ld (l1dcb),a
	ld (l1de0),a
	ld (l1df5),a
	ld hl,l1dfe
	ld bc,#030a
.l1e76
	xor a
.l1e77
	ld (hl),a
	inc hl
	add c
	ld (hl),a
	inc hl
	add c
	cp #50
	jr nz,l1e77
	djnz l1e76
	ld hl,l18f9
	ld (l1dc6),hl
	ld (l1ddb),hl
	ld (l1df0),hl
	ld a,#ff
	ld (l1dcc),a
	ld (l1de1),a
	ld (l1df6),a
	ld (l1d8c),a
	ret
;
.play_music
.l1e9e
;
	call l1bb4
	ld a,(l1d8c)
	and a
	ret z
	ld a,(l1dcc)
	ld hl,l1de1
	or (hl)
	ld hl,l1df6
	or (hl)
	ld (l1d8c),a
	jr nz,l1ec8
	xor a
	ld (l1d8c),a
	ld a,(l1ab6)
	and #3f
	cp #3f
	ret z
	ld a,#01
	ld (l1d8c),a
	ret
.l1ec8
	ld iy,l1dbf
	ld ix,l1ab7
	call l1ee6
	ld iy,l1dd4
	ld ix,l1ac9
	call l1ee6
	ld iy,l1de9
	ld ix,l1adb
.l1ee6
	call l2027
	ld a,(iy+#0b)
	and a
	jr z,l1f6b
.l1eef
	dec (iy+#09)
	jr z,l1f06
	ld a,(iy+#03)
	ld (iy+#05),a
	ld a,(iy+#04)
	ld (iy+#06),a
	ld (iy+#0b),#00
	jr l1f6b
.l1f06
	ld (iy+#09),#01
	ld l,(iy+#01)
	ld h,(iy+#02)
.l1f10
	ld a,(hl)
	cp #80
	jr c,l1f4b
	cp #fe
	jr nz,l1f22
	inc hl
	ld a,(hl)
	ld (iy+#0a),a
	inc hl
	jp l1f10
.l1f22
	cp #ff
	jr nz,l1f2b
	xor a
	ld (iy+#0d),a
	ret
.l1f2b
	cp #c0
	jr nc,l1f38
	and #1f
	ld (iy+#09),a
	inc hl
	jp l1f10
.l1f38
	and #07
	add (iy+#00)
	ld de,l1dfe
	add e
	ld e,a
	jr nc,l1f45
	inc d
.l1f45
	inc hl
	ldi
	jp l1f10
.l1f4b
	ld (iy+#0b),#00
	inc hl
	ld (iy+#01),l
	ld (iy+#02),h
	ld c,a
	ld b,#00
	ld hl,l1895
	add hl,bc
	ld e,(hl)
	ld hl,l18b3
	add hl,bc
	ld d,(hl)
	ld (iy+#03),e
	ld (iy+#04),d
	jr l1f71
.l1f6b
	ld e,(iy+#05)
	ld d,(iy+#06)
.l1f71
	dec (iy+#0c)
	jr z,l1f83
	ld a,(de)
	cp #80
	call nc,l1fed
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l1f83
	ld a,(de)
	cp #80
	jr c,l1f94
	call l1fed
	ld a,(iy+#0b)
	and a
	jr z,l1f83
	jp l1eef
.l1f94
	cp #7f
	jr z,l1fe0
	cp #7e
	jr nz,l1fa5
	inc de
	ld a,(de)
	ld l,a
	inc de
	ld a,(de)
	ld h,a
	jp l1fb9
.l1fa5
	add (iy+#0a)
	add #0c
	ld (iy+#0e),a
	ld hl,l1a0c
	add a
	ld c,a
	ld b,#00
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
.l1fb9
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
	jp l1aee
.l1fe0
	inc de
	ld a,(de)
	inc de
	ld (iy+#0c),a
	ld (iy+#05),e
	ld (iy+#06),d
	ret
.l1fed
	ld a,(de)
	cp #88
	jr nc,l200b
	and #07
	add (iy+#00)
	ld c,a
	ld b,#00
	ld hl,l1dfe
	add hl,bc
	ld c,(hl)
	ld hl,l18f9
	add hl,bc
	ld (iy+#07),l
	ld (iy+#08),h
	inc de
	ret
.l200b
	cp #ff
	jr nz,l2014
	ld (iy+#0b),#ff
	ret
.l2014
	cp #c0
	jr nc,l201f
	and #0f
	ld (iy+#0f),a
	inc de
	ret
.l201f
	inc de
	cp #c2
	ret z
	inc de
	inc de
	inc de
	ret
.l2027
	bit 7,(ix+#11)
	ret nz
	ld a,(iy+#14)
	bit 7,a
	ret z
	and #3f
	jr nz,l203b
	res 7,(iy+#14)
	ret
.l203b
	ld d,#07
	bit 6,(iy+#14)
	jr nz,l206f
	dec (iy+#12)
	ret nz
	dec (iy+#13)
	jp z,l206f
	ld l,(iy+#10)
	ld h,(iy+#11)
	inc l
	ld (iy+#10),l
	jp nz,l205e
	inc h
	ld (iy+#11),h
.l205e
	ld a,(hl)
	and d
	ld (iy+#12),a
	ld a,(hl)
	rrca
	rrca
	rrca
	and #1f
	add (iy+#0e)
	jp l20a4
.l206f
	ld hl,#11c9
	ld a,(iy+#14)
	add a
	add a
	add a
	ld e,a
	add hl,de
	bit 7,(hl)
	jr nz,l2089
	bit 6,(iy+#14)
	jr nz,l2089
	ld (iy+#13),#01
	ret
.l2089
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
.l20a4
	add a
	ld hl,l1a0c
	add l
	ld l,a
	jr nc,l20ad
	inc h
.l20ad
	ld a,(hl)
	ld (ix+#03),a
	inc hl
	ld a,(hl)
	ld (ix+#04),a
	ret
	push hl
	push de
	push bc
	push ix
	push iy
	ld e,a
	ld l,a
	ld h,#00
	add hl,hl
	add hl,hl
	ld c,l
	ld b,h
	add hl,hl
	add hl,bc
	ld c,a
	ld b,#00
	add hl,bc
	ld bc,l1949
	add hl,bc
	push hl
	pop iy
	ld a,(l2109)
	inc a
	cp #03
	jp c,l20dd
	xor a
.l20dd
	ld (l2109),a
	ld ix,l1ab7
	and a
	jp z,l20f5
	ld ix,l1ac9
	cp #01
	jp z,l20f5
	ld ix,l1adb
.l20f5
	ld l,(iy+#0a)
	ld h,(iy+#0b)
	ld c,(iy+#0c)
	call l1aee
	pop iy
	pop ix
	pop bc
	pop de
	pop hl
	ret
.l2109
	db &00
;
; play #1e9e
;
; #11fb
; xor a
; call #1e16	; init
;
; #210a
; ld a,(#1d8c)	; music end?
; and a
; ret
;
.music_info
	db "Impossamole (1990)(Gremlin Graphics)(Ben Daglish)",0
	db "",0

	read "music_end.asm"
