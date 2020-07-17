; Music of Voyage Au Centre De La Terre (1988)(Chip)(Eric Chahi)()
; Ripped by Megachur the 26/04/2018
; $VER 1.5

IFDEF FILENAME_WRITE
	write "VOYACDLT.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 26
MUSIC_DATE_RIP_MONTH	equ 04
MUSIC_DATE_RIP_YEAR		equ 2018
music_adr				equ #2000
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.init_music
;
	ld hl,lbe80
	ld de,lbe81
	ld bc,#0029
	ld (hl),#00
	ldir
	ld a,#05
	ld (lbe80),a
	ld a,#0f
	ld hl,lbe80
	call #bcbc
	ld a,#0f
	ld hl,lbe80
	call #bcbf
	xor a
	ld (lbe80),a
	ld hl,l222d
	ld (lbe90),hl
	ld hl,l219b
	ld (lbe92),hl
	call #bca7
	ld ix,(lbe90)
	ld (lbe94),ix
	ld iy,(lbe92)
	ld (lbe96),iy
	ld hl,lbe86		; to remove ?!
	ld de,l208b
	ld bc,#8000
	call #bcef
	ld hl,lbe80
	ld bc,#0001
	ld de,#0001
	call #bce9
	;defs 24,0
	ret
;
.stop_music
;
	ld hl,lbe80
	call #bcec
	call #bca7
	ret
.l2068
	ld a,#01
	ld (lbe9f),a
	pop hl
	pop de
	pop bc
	pop af
	pop iy
	pop ix
	ld hl,lbe80
	call #bcec
	ret
.l207c
	ld a,(ix+#01)
	ld (lbea5),a
	xor a
	ld (lbea3),a
	ld (lbea4),a
	jr l20cb
.l208b
	push ix
	push iy
	push af
	push bc
	push de
	push hl
	ld hl,lbea0
	ld ix,(lbe94)
	ld a,(ix+#00)
	cp #ff
	jr z,l20fa
	cp #fe
	jr z,l2068
	ld a,(ix+#02)
	ld (lbea7),a
	bit 3,(ix+#00)
	jr nz,l207c
	xor a
	ld (lbea5),a
	ld a,(ix+#01)
	ld (lbea3),a
	ld a,(ix+#00)
	rrc a
	rrc a
	rrc a
	rrc a
	and #0f
	ld (lbea4),a
.l20cb
	ld a,(ix+#00)
	res 3,a
	and #0f
	ld (lbea0),a
	ld (lbea1),a
	ld (lbea2),a
	ld a,(lbea5)
	cp #00
	jr nz,l20fc
	ld a,(lbea4)
	cp #00
	jr nz,l20fc
	ld a,(lbea3)
	cp #00
	jr nz,l20fc
	ld a,#0f
	ld (lbea1),a
	ld (lbea2),a
	jr l20fc
.l20fa
	jr l2126
.l20fc
	push ix
	call #bcaa
	pop ix
	jr nc,l213d
	ld iy,(lbe96)
	ld d,(iy+#03)
	ld e,(iy+#02)
	ld hl,(lbe98)
	inc hl
	ld (lbe98),hl
	or a
	sbc hl,de
	jr z,l2146
	ld bc,#0003
	add ix,bc
	ld (lbe94),ix
	jr l213d
.l2126
	ld ix,(lbe90)
	ld (lbe94),ix
	xor a
	ld (lbe98),a
	ld (lbe99),a
	ld iy,(lbe92)
	ld (lbe96),iy
.l213d
	pop hl
	pop de
	pop bc
	pop af
	pop iy
	pop ix
	ret
.l2146
	ld iy,(lbe96)
	ld bc,#0004
	add iy,bc
	ld d,(iy+#01)
	ld e,(iy+#00)
	ld hl,#ffff
	or a
	sbc hl,de
	jr z,l2126
	ld hl,#fefe
	or a
	sbc hl,de
	jr z,l2182
	ld (lbe96),iy
	xor a
	ld (lbe98),a
	ld (lbe99),a
	ld b,(iy+#01)
	ld c,(iy+#00)
	ld ix,(lbe90)
	add ix,bc
	ld (lbe94),ix
	jr l213d
.l2182
	ld a,#01
	ld (lbe9f),a	; end music
	pop hl
	pop de
	pop bc
	pop af
	pop iy
	pop ix
	ld hl,lbe80
	call #bcec
	ret
.l219b equ $ + 5
	db #00,#00,#00,#34,#00,#00,#00,#18
	db #00,#00,#00,#18,#00,#48,#00,#21
	db #00,#48,#00,#21,#00,#ab,#00,#19
	db #00,#ab,#00,#19,#00,#48,#00,#21
	db #00,#48,#00,#21,#00,#f6,#00,#18
	db #00,#3e,#01,#18,#00,#f6,#00,#18
	db #00,#86,#01,#18,#00,#fe,#fe,#00
	db #00,#07,#0e,#9a,#00,#01,#01,#01
	db #01,#ff,#01,#02,#01,#02,#02,#ff
	db #02,#00,#00,#00,#81,#f8,#02,#01
	db #08,#02,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#81,#7f,#01,#00,#00
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#01,#0f,#01,#05,#ff,#0a
	db #0a,#ff,#14,#00,#00,#00,#00,#00
	db #00,#01,#0f,#01,#01,#f1,#01,#01
	db #0f,#01,#05,#ff,#02,#0a,#ff,#03
	db #01,#0f,#01,#0a,#ff,#01,#05,#ff
.l222d equ $ + 7
	db #02,#00,#00,#00,#00,#00,#00,#09
	db #1f,#1c,#22,#f6,#1c,#04,#00,#70
	db #09,#01,#1c,#22,#f6,#1c,#09,#1f
	db #1c,#22,#f6,#1c,#09,#01,#1c,#22
	db #f6,#1c,#09,#1f,#1c,#22,#f6,#1c
	db #04,#00,#70,#09,#01,#0e,#22,#f6
	db #0e,#09,#1f,#0e,#22,#f6,#0e,#01
	db #00,#0e,#02,#00,#0e,#09,#1f,#0e
	db #22,#f6,#0e,#09,#01,#0e,#22,#f6
	db #0e,#01,#00,#0e,#02,#00,#0e,#09
	db #1f,#1c,#22,#f6,#1c,#04,#7f,#1c
	db #09,#01,#1c,#22,#f6,#1c,#04,#9f
	db #1c,#09,#1f,#1c,#22,#f6,#1c,#04
	db #8e,#1c,#09,#01,#1c,#22,#f6,#1c
	db #04,#a9,#1c,#09,#1f,#1c,#22,#f6
	db #1c,#04,#9f,#1c,#09,#01,#0e,#22
	db #f6,#0e,#04,#be,#0e,#09,#1f,#0e
	db #22,#f6,#0e,#04,#be,#0e,#01,#00
	db #0e,#02,#00,#0e,#04,#00,#0e,#09
	db #1f,#0e,#22,#f6,#0e,#04,#be,#0e
	db #09,#01,#0e,#22,#f6,#0e,#04,#be
	db #0e,#01,#00,#0e,#02,#00,#0e,#04
	db #00,#0e,#09,#1f,#1c,#32,#53,#1c
	db #04,#8e,#1c,#09,#01,#1c,#32,#53
	db #1c,#04,#7f,#a8,#09,#1f,#1c,#32
	db #53,#1c,#09,#01,#1c,#32,#53,#1c
	db #09,#1f,#1c,#32,#53,#1c,#09,#01
	db #0e,#32,#53,#0e,#09,#1f,#0e,#32
	db #53,#0e,#01,#00,#0e,#02,#00,#0e
	db #09,#1f,#0e,#32,#53,#0e,#09,#01
	db #0e,#32,#53,#0e,#04,#00,#1c,#01
	db #00,#0e,#02,#00,#0e,#09,#1f,#1c
	db #32,#bc,#1c,#04,#9f,#a8,#09,#01
	db #1c,#32,#bc,#1c,#09,#1f,#1c,#32
	db #bc,#1c,#09,#01,#1c,#32,#bc,#1c
	db #09,#1f,#1c,#32,#bc,#1c,#09,#01
	db #0e,#32,#bc,#0e,#09,#1f,#0e,#32
	db #bc,#0e,#01,#00,#0e,#02,#00,#0e
	db #04,#00,#38,#09,#1f,#0e,#32,#bc
	db #0e,#09,#01,#0e,#32,#bc,#0e,#01
	db #00,#0e,#02,#00,#0e,#09,#1f,#1c
	db #32,#53,#1c,#04,#a9,#a8,#09,#01
	db #1c,#32,#53,#1c,#09,#1f,#1c,#32
	db #53,#1c,#09,#01,#1c,#32,#53,#1c
	db #09,#1f,#1c,#32,#53,#1c,#09,#01
	db #0e,#32,#53,#0e,#09,#1f,#0e,#32
	db #53,#0e,#01,#00,#0e,#02,#00,#0e
	db #04,#00,#38,#09,#1f,#0e,#32,#53
	db #0e,#09,#01,#0e,#32,#53,#0e,#01
	db #00,#0e,#02,#00,#0e,#09,#1f,#1c
	db #32,#f4,#1c,#04,#a9,#a8,#09,#01
	db #1c,#32,#f4,#1c,#09,#1f,#1c,#32
	db #f4,#1c,#09,#01,#1c,#32,#f4,#1c
	db #09,#1f,#1c,#32,#f4,#1c,#09,#01
	db #0e,#32,#f4,#0e,#09,#1f,#0e,#32
	db #f4,#0e,#01,#00,#0e,#02,#00,#0e
	db #04,#00,#38,#09,#1f,#0e,#32,#f4
	db #0e,#09,#01,#0e,#32,#f4,#0e,#01
	db #00,#0e,#02,#00,#0e,#fe

	org #be80

.lbe86 equ $ + 6
.lbe81 equ $ + 1
.lbe80
	db #00,#00,#01,#00,#01,#00,#00,#00
	db #00,#80,#8b,#20,#00,#00,#00,#00
.lbe96 equ $ + 6
.lbe94 equ $ + 4
.lbe92 equ $ + 2
.lbe90
	db #2d,#22,#9b,#21,#c6,#22,#b7,#21
.lbe9f equ $ + 7
.lbe99 equ $ + 1
.lbe98
	db #1b,#00,#00,#00,#00,#00,#00,#00
.lbea7 equ $ + 7
.lbea5 equ $ + 5
.lbea4 equ $ + 4
.lbea3 equ $ + 3
.lbea2 equ $ + 2
.lbea1 equ $ + 1
.lbea0
	db #01,#01,#01,#00,#00,#01,#00,#0e
	db #00,#00,#00,#00,#00,#00,#00,#00
;
;10 MEMORY &1FFF
;12 ENT 4,1,1,1,1,-1,1,2,1,2,2,-1,2
;13 ENT -2,1,-8,2,1,8,2
;14 ENT -1,1,127,1
;15 ENV 4,1,15,1,5,-1,10,10,-1,20
;16 ENV 2,1,15,1,1,-15,1,1,15,1,5,-1,2,10,-1,3
;17 ENV 1,1,15,1,10,-1,1,5,-1,2  
;18 MODE 1
;20 LOAD"jingle.bin",&2000 
;30 LOAD"voyage1.bin",&4000  
;40 CALL &4000
;
; #0114
;call #2000	; init music and play interrupt
;
; #012d
;ld a,(#be9f)
;cp #00
;jr z,#0144	; end music if = &01!
;
.music_info
	db "Voyage Au Centre De La Terre (1988)(Chip)(Eric Chahi)",0
	db "",0

	read "music_end.asm"
