; Music of Grell and Falla (1992)(Codemasters)(Allister Brimble)()
; Ripped by Megachur the 14/01/2007
; $VER 1.5

IFDEF FILENAME_WRITE
	write "GRELLANF.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 14
MUSIC_DATE_RIP_MONTH	equ 01
MUSIC_DATE_RIP_YEAR		equ 2007
music_adr				equ #6b10
FIRST_THEME				equ 0
LAST_THEME				equ 1

	read "music_header.asm"

;
.stop_music
;
	xor a
	ld (l6fa3),a
	jp l7549
	ld a,#01
	jr l6b1c
	xor a
;
.init_music
.l6b1c
;
	ld c,a
	xor a
	ld (l6fa3),a
	ld a,c
	add a
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l6fa5
	add hl,bc
	ld ix,l6b68
	ld c,#1f
	ld a,#03
.l6b34
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
	jr nz,l6b34
	inc a
	ld (l6c46),a
	ld (l6fa3),a
	ret
.l6b6c equ $ + 4
.l6b6b equ $ + 3
.l6b68
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#09
.l6b8b equ $ + 4
.l6b8a equ $ + 3
.l6b87
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#12
.l6baa equ $ + 4
.l6ba9 equ $ + 3
.l6ba6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00,#00,#00,#24
	ld c,a
	add a
;.l6bc7
	add c
	add a
	ld c,a
	ld b,#00
	ld hl,l6fa5
	add hl,bc
	ld a,(hl)
	ld (l6b6b),a
	inc hl
	ld a,(hl)
	ld (l6b6c),a
	inc hl
	ld a,(hl)
	ld (l6b8a),a
	inc hl
	ld a,(hl)
	ld (l6b8b),a
	inc hl
	ld a,(hl)
	ld (l6ba9),a
	inc hl
	ld a,(hl)
	ld (l6baa),a
	ret
;
.play_music
;
	ld a,(l6fa3)
	and a
	ret z
.l6bf4 equ $ + 1
	ld a,#00
	ld (l6c41),a
	ld hl,l6c46
	dec (hl)
	jr nz,l6c19
	ld b,(hl)
	ld ix,l6b68
	call l6d0c
	ld ix,l6b87
	call l6d0c
	ld ix,l6ba6
	call l6d0c
	ld hl,l6c46
.l6c18 equ $ + 1
	ld (hl),#01
.l6c19
	ld ix,l6b68
	call l6dae
	ld (l956d),hl
	ld (l9575),a
	ld ix,l6b87
	call l6dae
	ld (l956f),hl
	ld (l9576),a
	ld ix,l6ba6
	call l6dae
	ld (l9571),hl
	ld (l9577),a
.l6c41 equ $ + 1
	ld a,#00
	ld (l9573),a

push ix
;ld hl,(l78b9)
;ld a,l
;add a
;add a
;add h
;ld de,l7918
;call #2511
ld hl,l9575
ld a,#3f
srl a
srl a
cp (hl)
jr nc,l78db
ld (hl),a
.l78db
inc hl
cp (hl)
jr nc,l78e0
ld (hl),a
.l78e0
inc hl
cp (hl)
jr nc,l78e5
ld (hl),a
.l78e5
ld b,#0b
ld hl,l957a
ld de,l956d
ld c,#00
.l78ef
ld a,(de)
cp (hl)
jr z,l7910
ld (hl),a
push bc
ld a,#c0
ld b,#f6
out (c),a
ld b,#f4
out (c),c
ld b,#f6
ld a,#80
out (c),a
ld b,#f4
ld a,(hl)
out (c),a
ld b,#f6
xor a
out (c),a
pop bc
.l7910
inc c
inc hl
inc de
djnz l78ef
pop ix
	ret
;.l78b9
;	db #01,#01,#3f,#44,#7c

.l6c46
	db #00
.jumps_table
	db #bc,#a4,#a8,#ad,#6b,#9a,#95
	db #10,#84,#7c,#4a,#39,#58,#a9
	db #01
	xor a
	ld (l6fa3),a
	pop hl
	jp l7549
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
	jr nz,l6c80
	ld l,(ix+#03)
	ld h,(ix+#04)
	ld bc,#0002
	ld e,(hl)
	inc hl
	ld d,(hl)
.l6c80
	ld (ix+#05),c
	ld (ix+#06),b
	ld b,#00
	jp l6d1a
	ld a,(ix+#1e)
	ld c,a
	and #07
	ld hl,l6ea4
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l6d1a
	ld a,(ix+#1e)
	ld c,a
	and #38
	ld hl,l6ea4
	xor (hl)
	and c
	xor (hl)
	ld (hl),a
	jp l6d1a
	ld hl,l6ea4
	ld a,(ix+#1e)
	cpl
	and (hl)
	ld (hl),a
	jr l6d1a
	ld a,(de)
	inc de
	ld (ix+#07),b
	ld (ix+#08),b
	ld (ix+#0d),a
	set 2,(ix+#00)
	ld a,(de)
	ld (ix+#0e),a
	inc de
	jr l6d1a
	ld a,(de)
	inc de
	ld (l6bf4),a
	jr l6d1a
	ld a,(de)
	ld (ix+#1b),a
	inc de
	ld a,(de)
	ld (ix+#1a),a
	inc de
	ld (ix+#1c),a
	jr l6d1a
	set 7,(ix+#00)
	set 3,(ix+#00)
	jr l6d1a
	ld (ix+#1d),b
	jr l6d1a
	ld (ix+#1d),#40
	jr l6d1a
	ld (ix+#1d),#c0
	jr l6d1a
	set 1,(ix+#00)
	jr l6d1a
	ld (ix+#13),b
	res 5,(ix+#00)
	jr l6d3d
.l6d0c
	dec (ix+#10)
	jr nz,l6d4a
	ld (ix+#00),b
	ld e,(ix+#01)
	ld d,(ix+#02)
.l6d1a
	ld a,(de)
	inc de
	and a
	jp m,l6d5b
	ld (ix+#12),a
	ld a,(ix+#19)
	ld (ix+#13),a
	set 5,(ix+#00)
	set 6,(ix+#00)
	ld a,(ix+#14)
	ld (ix+#16),a
	ld a,(ix+#17)
	ld (ix+#18),a
.l6d3d
	ld a,(ix+#11)
	ld (ix+#10),a
	ld (ix+#02),d
	ld (ix+#01),e
	ret
.l6d4a
	ld a,(ix+#00)
	bit 3,a
	ret z
	rla
	jr nc,l6d57
	inc (ix+#12)
	ret
.l6d57
	dec (ix+#12)
	ret
.l6d5b
	cp #b8
	jr c,l6da6
	add #20
	jr c,l6d8b
	add #10
	jr c,l6d91
	add #10
	jr nc,l6d84
	ld c,a
	ld hl,l6f67
	add hl,bc
	ld c,(hl)
	add hl,bc
	ld (ix+#0b),l
	ld (ix+#09),l
	ld (ix+#0c),h
	ld (ix+#0a),h
	set 4,(ix+#00)
	jr l6d1a
.l6d84
	add #09
	ld (l6c18),a
	jr l6d1a
.l6d8b
	inc a
	ld (ix+#11),a
	jr l6d1a
.l6d91
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
	jp l6d1a
.l6da6
	ld hl,jumps_table-&80	;l6bc7
	ld c,a
	add hl,bc
	ld c,(hl)
	add hl,bc
	jp (hl)
.l6dae
	ld c,(ix+#00)
	bit 5,c
	jr z,l6df9
	ld a,(ix+#16)
	sub #10
	jr nc,l6de1
	bit 6,c
	jr z,l6de6
	add (ix+#13)
	jr nc,l6dc6
	sbc a
.l6dc6
	add #10
	ld (ix+#13),a
	ld a,(ix+#18)
	sub #10
	jr nc,l6ddc
	res 6,c
	ld a,(ix+#15)
	ld (ix+#16),a
	jr l6df9
.l6ddc
	ld (ix+#18),a
	jr l6df9
.l6de1
	ld (ix+#16),a
	jr l6df9
.l6de6
	cpl
	sub #0f
	add (ix+#13)
	jr c,l6def
	sub a
.l6def
	ld (ix+#13),a
	dec (ix+#18)
	jr nz,l6df9
	res 5,c
.l6df9
	ld a,(ix+#12)
	bit 4,c
	jr z,l6e1b
	ld b,a
	ld l,(ix+#0b)
	ld h,(ix+#0c)
	ld a,(hl)
	cp #54
	jr c,l6e13
	ld l,(ix+#09)
	ld h,(ix+#0a)
	ld a,(hl)
.l6e13
	inc hl
	ld (ix+#0b),l
	ld (ix+#0c),h
	add b
.l6e1b
	ld hl,l6ebf
	ld d,#00
	add a
	ld e,a
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld l,(ix+#1d)
	bit 6,l
	jr z,l6e75
	ld h,a
	ld b,(ix+#1a)
	sla b
	bit 7,l
	ld a,(ix+#1c)
	jr z,l6e3e
	bit 0,c
	jr nz,l6e5c
.l6e3e
	bit 5,l
	jr nz,l6e4e
	sub (ix+#1b)
	jr nc,l6e59
	set 5,(ix+#1d)
	sub a
	jr l6e59
.l6e4e
	add (ix+#1b)
	cp b
	jr c,l6e59
	res 5,(ix+#1d)
	ld a,b
.l6e59
	ld (ix+#1c),a
.l6e5c
	ex de,hl
	srl b
	sub b
	ld e,a
	ld a,d
	ld d,#00
	jr nc,l6e67
	dec d
.l6e67
	add #a0
	jr c,l6e73
.l6e6b
	sla e
	rl d
	add #18
	jr nc,l6e6b
.l6e73
	add hl,de
	ex de,hl
.l6e75
	ld a,c
	xor #01
	ld (ix+#00),a
	bit 2,c
	jr z,l6ea0
	ld b,(ix+#0e)
	djnz l6e9d
	ld c,(ix+#0d)
	bit 7,c
	jr z,l6e8c
	dec b
.l6e8c
	ld l,(ix+#07)
	ld h,(ix+#08)
	add hl,bc
	ld (ix+#07),l
	ld (ix+#08),h
	add hl,de
	ex de,hl
	jr l6ea0
.l6e9d
	ld (ix+#0e),b
.l6ea0
	cpl
	and #03
.l6ea4 equ $ + 1
	ld a,#38
	jr nz,l6eb1
	ld a,(l6bf4)
	xor #08
	ld (l6c41),a
	ld a,#07
.l6eb1
	ld hl,l9574
	xor (hl)
	and (ix+#1e)
	xor (hl)
	ld (hl),a
	ex de,hl
	ld a,(ix+#13)
	ret
.l9574 equ $ + 7
.l9573 equ $ + 6
.l9571 equ $ + 4
.l956f equ $ + 2
.l956d
	db #00,#00,#00,#00,#00,#00,#00,#38
.l957a equ $ + 5
.l9577 equ $ + 2
.l9576 equ $ + 1
.l9575
	db #0f,#0f,#0d,#00,#00,#00
.l6ebf
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
.l6f67
	db #09,#11,#17,#1f,#22,#27,#2a,#2e
	db #30,#00,#04,#07,#0c,#10,#13,#18
	db #87,#00,#03,#08,#0c,#0f,#14,#18
	db #87,#00,#05,#09,#0c,#11,#15,#18
	db #87,#00,#05,#07,#0c,#87,#00,#03
	db #07,#0c,#87,#00,#0c,#00,#0c,#87
	db #00,#03,#09,#87,#00,#05,#08,#87
.l6fa3 equ $ + 4
.music_end equ $ + 4
	db #00,#05,#08,#87,#00,#00
.l6fa5
	dw l6fb1,l702b,l7089
	dw l7103,l7115,l711f
.l6fb1
	dw l7218,l7218,l7255,l7292
	dw l7218,l7218,l7255,l7292
	dw l7218,l72cf,l7255,l7292
	dw l7218,l7218,l7255,l7292
	dw l7218,l72cf,l7255,l7292
	dw l7218,l7218,l7255,l7292
	dw l7218,l72cf,l7255,l7292
	dw l7218,l72cf,l7255,l7292
	dw l7218,l72cf,l7255,l7292
	dw l7218,l72cf,l7255,l7292
	dw l7218,l72cf,l7255,l7292
	dw l7218,l7218,l7255,l7292
	dw l7218,l7218,l7255,l7292
	dw l7218,l7218,l7255,l7292
	dw l7218,l7218,l7255,l7292
.l702b equ $ + 2
	dw #0000,l7540,l7540,l7540
	dw l7540,l730c,l7326,l7319
	dw l7339,l730c,l7326,l7319
	dw l7339,l734c,l735d,l7370
	dw l7382,l7391,l73a4,l73b5
	dw l73c7,l734c,l735d,l7370
	dw l7382,l7391,l73a4,l73b5
	dw l73c7,l73d3,l73d3,l73ff
	dw l740e,l741f,l742e,l73ff
	dw l740e,l7442,l7454,l73ff
	dw l740e,l741f,l742e,l73ff
	dw l740e,l7442,l7454,#0000
.l7089
	dw l746e,l74a4,l7489,l74a4
	dw l746e,l74a4,l7489,l74a4
	dw l746e,l74a4,l7489,l74a4
	dw l746e,l74a4,l7489,l74a4
	dw l746e,l74a4,l7489,l74a4
	dw l746e,l74a4,l7489,l74a4
	dw l746e,l74a4,l7489,l74a4
	dw l74bf,l750a,l7525,l74f1
	dw l74bf,l750a,l74d8,l74f1
	dw l74bf,l750a,l7525,l74f1
	dw l74bf,l750a,l74d8,l74f1
	dw l746e,l74a4,l7489,l74a4
	dw l746e,l74a4,l7489,l74a4
	dw l746e,l74a4,l7489,l74a4
	dw l746e,l74a4,l7489,l74a4
.l7103 equ $ + 2
	dw #0000,l7157,l7157,l7193
	dw l7193,l7157,l7157,l7193
.l7115 equ $ + 4
	dw l7193,#0000,l71e2,l71e2
.l711f equ $ + 6
	dw l71fd,l71fd,#0000,l7131
	dw l7131,l7131,l7131,l7144
	dw l7144,l7144,l7144,#0000
.l7131
	db #8a,#88,#01,#02,#82,#de,#00,#11
	db #46,#e7,#c5,#37,#c5,#39,#c5,#3b
.l7144 equ $ + 3
	db #c5,#39,#87,#8a,#88,#01,#02,#82
	db #de,#00,#11,#46,#e7,#c5,#3c,#c5
.l7157 equ $ + 6
	db #3b,#c5,#39,#c5,#37,#87,#8a,#88
	db #01,#02,#82,#df,#00,#01,#07,#e1
	db #13,#13,#8c,#89,#2e,#88,#01,#01
	db #82,#de,#00,#01,#0a,#37,#8a,#88
	db #01,#02,#82,#df,#00,#01,#07,#13
	db #13,#13,#8c,#89,#2e,#88,#01,#01
	db #82,#de,#00,#01,#0a,#c5,#37,#8a
	db #88,#01,#02,#82,#df,#00,#01,#07
.l7193 equ $ + 2
	db #13,#87,#8a,#88,#01,#02,#82,#df
	db #00,#01,#07,#e1,#0c,#0c,#8c,#89
	db #2e,#88,#01,#01,#82,#de,#00,#01
	db #0a,#37,#8a,#88,#01,#02,#82,#df
	db #00,#01,#07,#0c,#0c,#0c,#8c,#89
	db #2e,#88,#01,#01,#82,#de,#00,#01
	db #0a,#c5,#37,#8a,#88,#01,#02,#82
	db #df,#00,#01,#07,#0c,#87,#8a,#88
	db #01,#02,#82,#df,#00,#01,#07,#e1
	db #10,#10,#10,#10,#10,#10,#10,#10
.l71e2 equ $ + 1
	db #87,#8a,#88,#02,#01,#83,#dd,#00
	db #01,#07,#e1,#c0,#37,#c0,#37,#c0
	db #37,#c0,#37,#c0,#37,#c0,#37,#c0
.l71fd equ $ + 4
	db #37,#c0,#37,#87,#8a,#88,#02,#01
	db #83,#dd,#00,#01,#07,#e1,#c2,#37
	db #c2,#37,#c2,#37,#c2,#37,#c2,#37
.l7218 equ $ + 7
	db #c2,#37,#c2,#37,#c2,#37,#87,#8a
	db #88,#01,#02,#82,#df,#00,#01,#07
	db #e1,#0c,#0c,#8c,#89,#2e,#88,#01
	db #01,#82,#de,#00,#01,#0a,#48,#8a
	db #88,#01,#02,#82,#df,#00,#01,#07
	db #e3,#0c,#e1,#0c,#8c,#89,#2e,#88
	db #01,#01,#82,#de,#00,#01,#0a,#c5
	db #3c,#8a,#88,#01,#02,#82,#df,#00
.l7255 equ $ + 4
	db #01,#07,#0c,#87,#8a,#88,#01,#02
	db #82,#df,#00,#01,#07,#e1,#11,#11
	db #8c,#89,#2e,#88,#01,#01,#82,#de
	db #00,#01,#0a,#4d,#8a,#88,#01,#02
	db #82,#df,#00,#01,#07,#e3,#11,#e1
	db #11,#8c,#89,#2e,#88,#01,#01,#82
	db #de,#00,#01,#0a,#c5,#41,#8a,#88
	db #01,#02,#82,#df,#00,#01,#07,#11
.l7292 equ $ + 1
	db #87,#8a,#88,#01,#02,#82,#df,#00
	db #01,#07,#e1,#13,#13,#8c,#89,#2e
	db #88,#01,#01,#82,#de,#00,#01,#0a
	db #4f,#8a,#88,#01,#02,#82,#df,#00
	db #01,#07,#e3,#13,#e1,#13,#8c,#89
	db #2e,#88,#01,#01,#82,#de,#00,#01
	db #0a,#c5,#43,#8a,#88,#01,#02,#82
.l72cf equ $ + 6
	db #df,#00,#01,#07,#13,#87,#8a,#88
	db #01,#02,#82,#df,#00,#01,#07,#e1
	db #10,#10,#8c,#89,#2e,#88,#01,#01
	db #82,#de,#00,#01,#0a,#4c,#8a,#88
	db #01,#02,#82,#df,#00,#01,#07,#e3
	db #10,#e1,#10,#8c,#89,#2e,#88,#01
	db #01,#82,#de,#00,#01,#0a,#c5,#40
	db #8a,#88,#01,#02,#82,#df,#00,#01
.l730c equ $ + 3
	db #07,#10,#87,#8a,#88,#01,#02,#82
	db #de,#00,#11,#06,#ef,#c2,#2b,#87
.l7319
	db #8a,#88,#01,#02,#82,#de,#00,#11
.l7326 equ $ + 5
	db #06,#ef,#c2,#30,#87,#8a,#88,#01
	db #02,#82,#de,#00,#11,#06,#e1,#c2
	db #2b,#e3,#c2,#2b,#e9,#c2,#2b,#87
.l7339
	db #8a,#88,#01,#02,#82,#de,#00,#11
	db #06,#e1,#c2,#30,#e3,#c2,#30,#e9
.l734c equ $ + 3
	db #c2,#30,#87,#8a,#88,#01,#02,#82
	db #df,#00,#01,#16,#e1,#2b,#2d,#e3
.l735d equ $ + 4
	db #2b,#29,#28,#87,#8a,#88,#01,#02
	db #82,#df,#00,#01,#16,#e1,#29,#28
.l7370 equ $ + 7
	db #e3,#24,#24,#e1,#26,#28,#87,#8a
	db #88,#01,#02,#82,#df,#00,#01,#16
	db #e3,#29,#29,#e1,#29,#2b,#e3,#2d
.l7382 equ $ + 1
	db #87,#8a,#88,#01,#02,#82,#df,#00
	db #01,#16,#eb,#26,#e1,#2b,#29,#87
.l7391
	db #8a,#88,#01,#02,#82,#df,#00,#01
	db #16,#e1,#28,#29,#e3,#2b,#2b,#e1
.l73a4 equ $ + 3
	db #2d,#2b,#87,#8a,#88,#01,#02,#82
	db #df,#00,#01,#16,#e1,#28,#29,#e3
.l73b5 equ $ + 4
	db #28,#24,#1f,#87,#8a,#88,#01,#02
	db #82,#df,#00,#01,#16,#e3,#2d,#29
.l73c7 equ $ + 6
	db #e1,#2d,#2f,#e3,#30,#87,#8a,#88
	db #01,#02,#82,#df,#00,#01,#16,#ef
.l73d3 equ $ + 2
	db #32,#87,#8a,#88,#01,#02,#82,#de
	db #00,#01,#56,#e3,#3c,#3c,#3e,#40
	db #40,#3b,#37,#34,#41,#40,#3c,#39
	db #3b,#3c,#3e,#e1,#3c,#3e,#e3,#40
	db #40,#41,#43,#43,#45,#47,#43,#41
.l73ff equ $ + 6
	db #40,#3e,#3c,#ef,#37,#87,#8a,#88
	db #01,#02,#82,#de,#00,#01,#56,#eb
.l740e equ $ + 5
	db #2b,#e1,#2b,#29,#87,#8a,#88,#01
	db #02,#82,#de,#00,#01,#56,#e1,#28
.l741f equ $ + 6
	db #29,#e3,#2b,#29,#28,#87,#8a,#88
	db #01,#02,#82,#de,#00,#01,#56,#e5
.l742e equ $ + 5
	db #24,#30,#e3,#2f,#87,#8a,#88,#01
	db #02,#82,#de,#00,#11,#06,#e5,#c5
	db #2d,#c5,#2b,#e1,#c5,#28,#c5,#29
.l7442 equ $ + 1
	db #87,#8a,#88,#01,#02,#82,#de,#00
	db #11,#06,#e5,#c5,#29,#c5,#2b,#e3
.l7454 equ $ + 3
	db #c5,#2d,#87,#8a,#88,#01,#02,#82
	db #de,#00,#11,#06,#e3,#c5,#30,#e1
	db #c5,#2f,#c5,#2d,#c5,#2b,#c5,#26
.l746e equ $ + 5
	db #c5,#28,#c5,#29,#87,#8a,#88,#01
	db #01,#83,#dc,#00,#11,#09,#e1,#c2
	db #37,#c2,#37,#c5,#39,#c5,#3c,#c2
	db #37,#c2,#37,#c5,#39,#c5,#37,#87
.l7489
	db #8a,#88,#01,#01,#83,#dc,#00,#11
	db #09,#e1,#c2,#30,#c2,#30,#c5,#32
	db #c5,#35,#c2,#30,#c2,#30,#c5,#32
.l74a4 equ $ + 3
	db #c5,#30,#87,#8a,#88,#01,#01,#83
	db #dc,#00,#11,#09,#e1,#c3,#37,#c3
	db #37,#c5,#39,#c5,#37,#c3,#37,#c3
.l74bf equ $ + 6
	db #37,#c5,#32,#c5,#34,#87,#8a,#88
	db #01,#01,#83,#de,#00,#11,#09,#e1
	db #c5,#2b,#e3,#c5,#24,#c5,#2b,#e1
.l74d8 equ $ + 7
	db #c5,#30,#c5,#2b,#c5,#24,#87,#8a
	db #88,#01,#01,#83,#de,#00,#11,#09
	db #e1,#c5,#30,#e3,#c5,#29,#c5,#30
	db #e1,#c5,#35,#c5,#30,#c5,#29,#87
.l74f1
	db #8a,#88,#01,#01,#83,#de,#00,#11
	db #09,#e1,#c5,#32,#e3,#c5,#2b,#c5
	db #32,#e1,#c5,#37,#c5,#32,#c5,#2b
.l750a equ $ + 1
	db #87,#8a,#88,#01,#01,#83,#de,#00
	db #11,#09,#e1,#c5,#2b,#e3,#c5,#23
	db #e1,#c5,#2b,#c5,#2b,#c5,#23,#c5
.l7525 equ $ + 4
	db #2b,#c5,#23,#87,#8a,#88,#01,#01
	db #83,#de,#00,#11,#09,#e1,#c5,#29
	db #e3,#c5,#21,#e1,#c5,#29,#c5,#29
.l7540 equ $ + 7
	db #c5,#21,#c5,#29,#c5,#21,#87,#bc
	db #8a,#df,#00,#f1,#01,#ef,#80,#87
.l7549
	ld de,#0d00	;#d000
.l754c
	call l7556
	dec e
	jp p,l754c
	ld de,#073f
.l7556
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
.music_info
	db "Grell and Falla (1992)(Codemasters)(Allister Brimble)",0
	db "",0

	read "music_end.asm"
