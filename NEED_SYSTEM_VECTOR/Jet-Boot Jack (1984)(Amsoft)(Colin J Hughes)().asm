; Music of Jet-Boot Jack (1984)(Amsoft)(Colin J Hughes)()
; Ripped by Megachur the 17/06/2019
; $VER 1.5

IFDEF FILENAME_WRITE
	write "JETBOOTJ.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 17
MUSIC_DATE_RIP_MONTH	equ 06
MUSIC_DATE_RIP_YEAR		equ 2019
music_adr				equ #4e00
NEED_SYSTEM_VECTOR		equ 1

	read "music_header.asm"

;
.init_music
;
	ld hl,l4ef2
	ld c,a		; a=0 (menu) ,a=2, a=4
	ld b,#00
	add hl,bc
	add hl,bc
	add hl,bc
	ld b,#03
	ld ix,l4ee6
.l4e0f
	ld a,(hl)
	ld (ix+#00),a
	inc hl
	ld a,(hl)
	ld (ix+#01),a
	inc hl
	ld (ix+#02),#01
	ld (ix+#03),#00
	ld de,#0004
	add ix,de
	djnz l4e0f
	ld a,#08
	ld c,#0f
	call #bd34
	ld a,#09
	ld c,#09
	call #bd34
	ld a,#0a
	ld c,#06
	call #bd34
	ld a,#07
	ld c,#38
	call #bd34
	ld a,#0d
	ld c,#00
	call #bd34
.l4e4b
	ld b,#03
	ld ix,l4ee6
.l4e51
	ld a,(ix+#03)
	cp #ff
	jr z,l4e9e
	ld a,(ix+#02)
	cp #05
	jr nz,l4e64
	ld a,#00
	call l4ebd
.l4e64
	ld a,(ix+#02)
	cp #00
	jr nz,l4e9e
	ld l,(ix+#00)
	ld h,(ix+#01)
	ld a,(hl)
	ld (ix+#03),a
	cp #ff
	jr z,l4e9e
	and #1f
	ld (ix+#03),a
	ld a,(hl)
	rra
	rra
	rra
	rra
	rra
	and #07
	inc hl
	ld (ix+#00),l
	ld (ix+#01),h
	ld hl,l4ede
	ld e,a
	ld d,#00
	add hl,de
	ld a,(hl)
	ld (ix+#02),a
	ld a,(ix+#03)
	call l4ebd
.l4e9e
	dec (ix+#02)
	ld de,#0004
	add ix,de
	djnz l4e51
	call #bd19
	ld ix,l4ee6
	ld a,(ix+#03)
	cp #ff
	jr nz,l4e4b
	ld a,#07
	ld c,#3f
	jp #bd34
.l4ebd
	push hl
	push de
	ld hl,l4f04
	ld d,#00
	ld e,a
	add hl,de
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,b
	xor #03
	add a
	push bc
	push af
	ld c,e
	call #bd34
	pop af
	inc a
	ld c,d
	call #bd34
	pop bc
	pop de
	pop hl
	ret
.l4ede
	db #08,#10,#18,#20,#28,#30,#38,#40
.l4ee6
	db #00,#00,#00,#00,#00,#00,#00,#00
	db #00,#00,#00,#00
.l4ef2
	dw l4f38,l4f67,l4f8e,l4f52
	dw l4f7f,l4f9a,l4f5a,l4f87
	dw l4fa1
.l4f04
	dw #0000,#0077,#007f,#0086
	dw #008e,#0096,#009f,#00a9
	dw #00b3,#00be,#00c9,#00d5
	dw #00e1,#00ef,#00fd,#010c
	dw #011c,#012d,#013f,#0152
	dw #0166,#017b,#0192,#01aa
	dw #01c3,#01de
.l4f38
	db #06,#2d,#26,#2d,#06,#06,#2d,#29
	db #4b,#0d,#30,#2d,#30,#0d,#0d,#30
	db #2b,#50,#09,#2d,#26,#4d,#0d,#30
.l4f52 equ $ + 2
	db #29,#4d,#0d,#26,#2e,#46,#0d,#46
.l4f5a equ $ + 2
	db #86,#ff,#49,#0b,#0d,#0b,#09,#08
.l4f67 equ $ + 7
	db #26,#0d,#0b,#29,#2b,#8d,#ff,#39
	db #32,#39,#32,#39,#32,#39,#32,#32
	db #34,#32,#34,#32,#34,#32,#34,#39
.l4f7f equ $ + 7
	db #32,#39,#32,#32,#34,#2e,#37,#39
.l4f87 equ $ + 7
	db #32,#2e,#37,#39,#32,#8d,#e0,#4d
.l4f8e equ $ + 6
	db #70,#60,#2d,#2e,#b5,#e0,#29,#a0
	db #29,#a0,#30,#a0,#30,#a0,#29,#a0
.l4f9a equ $ + 2
	db #30,#a0,#29,#a0,#29,#20,#99,#e0
.l4fa1 equ $ + 1
	db #31,#35,#30,#12,#14,#35,#34,#52
	db #14,#b9,#e0
;
.music_info
	db "Jet-Boot Jack (1984)(Amsoft)(Colin J Hughes)",0
	db "",0

	read "music_end.asm"
