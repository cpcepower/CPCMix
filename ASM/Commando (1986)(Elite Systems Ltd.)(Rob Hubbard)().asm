; Music of Commando (1986)(Elite Systems Ltd.)(Rob Hubbard)()
; Ripped by Megachur the 22/10/2006
; $VER 1.5

IFDEF FILENAME_WRITE
	write "COMMANDO.BIN"
ENDIF

MUSIC_DATE_RIP_DAY		equ 22
MUSIC_DATE_RIP_MONTH	equ 10
MUSIC_DATE_RIP_YEAR		equ 2006
music_adr				equ #15F1
FIRST_THEME				equ 0
LAST_THEME				equ 2

	read "music_header.asm"

.l15f1_init_music	; main theme
	ld hl,l1aa4
	exx
	ld hl,l1a92
	jr l160a
.l15fa_init_music
	ld hl,l1ba2	; end theme
	exx
	ld hl,l1b9a
	jr l160a
.l1603_init_music
	ld hl,l17ce	; ingame theme
	exx
	ld hl,l17aa
.l160a
	ld (l1696),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l1685),de
	ld (l168c),hl
	exx
	ld (l16d8),hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l16c7),de
	ld (l16ce),hl
	xor a
	ld (l1666),a
	call l1684
	ld (l1668),a
	call l16c6
	ld (l1676),a
	ret
;
; sound effects(fire?)
;
.l1638
	ld hl,l1650
	jr l1645
;
;.stop_music
.l163d
;
	ld a,#c9
	ld (l1666),a
	ld hl,l1659
.l1645
	ld a,(hl)
	inc a
	ret z
	inc hl
	ld c,(hl)
	call send_data_to_ay	;l178b
	inc hl
	jr l1645
.l1650
	defb &05,&11,&06,&aa,&08,&10,&0b,&02
	defb &ff
.l1659
	defb &00,&00,&07,&0f,&06,&aa,&03,&00
	defb &04,&00,&08,&10,&ff
;
.play_music	; (100Hz)
.l1666
;
	ret
.tempo_play equ $ +1		; added by Megachur
	ld a,1
	xor 1
	ld (tempo_play),a
	ret nz			; added by Megachur
.l1668 equ $ + 1
	ld a,#01
	dec a
	call z,l1684
	ld (l1668),a
	dec a
	ld c,a
	call z,l16bf
.l1676 equ $ + 1
	ld a,#01
	dec a
	call z,l16c6
	ld (l1676),a
	dec a
	ret nz
	ld c,a
	jp l170e

.l1685 equ $ + 1
.l1684
	ld hl,l1baa
	ld c,(hl)
	inc c
	jr nz,l16a2
.l168c equ $ + 1
	ld hl,l1b9c
	inc hl
	ld a,(hl)
	dec hl
	inc a
	jp nz,l1698

.l1696 equ $ + 1
	ld hl,l1b9a
.l1698
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l168c),hl
	ex de,hl
	ld c,(hl)
	inc c
.l16a2
	inc hl
	ld d,(hl)
	inc hl
	ld (l1685),hl
	inc c
	jp z,l16bf

	ld b,#00
	ld hl,l16e9
	add hl,bc
	xor a
	ld c,(hl)

	call send_data_to_ay	;l178b
	inc hl
	ld c,(hl)
	inc a
	call send_data_to_ay	;l178b

	ld c,#0e
.l16bf
	ld a,#08
	call send_data_to_ay	;l178b
	ld a,d
	ret
.l16c7 equ $ + 1
.l16c6
	ld hl,l1bb9
	ld c,(hl)
	inc c
	jr nz,l16e4
.l16ce equ $ + 1
	ld hl,l1ba4
	inc hl
	ld a,(hl)
	dec hl
	inc a
	jp nz,l16da
.l16d8 equ $ + 1
	ld hl,l1ba2
.l16da
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld (l16ce),hl
	ex de,hl
	ld c,(hl)
	inc c
.l16e4
	inc hl
	ld d,(hl)
	inc hl
.l16e9 equ $ + 2
	ld (l16c7),hl
	inc c
	jp z,l170e
	inc c
	jp z,l1715
	dec c
	ld b,#00

	ld hl,l1701
	add hl,bc
	ld a,#04
	ld c,(hl)
	inc hl
	call send_data_to_ay	;l178b
	inc a
.l1701
	ld c,(hl)
	call send_data_to_ay	;l178b
	ld c,#aa
.l1707
	ld a,#07
	call send_data_to_ay	;l178b
	ld c,#0d
.l170e
	ld a,#0a
	call send_data_to_ay	;l178b
	ld a,d
	ret
.l1715
	ld c,#00
	ld a,#04
	call send_data_to_ay	;l178b
	inc a
	call send_data_to_ay	;l178b
	ld c,#8e
	jp l1707

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
	dw #001e,#001c
;
; bruitage ?
;
.l1781
	ld c,#00
	ld a,#0d
;	di
	call send_data_to_ay	;l178b
;	ei
	ret

.send_data_to_ay	;.l178b
;	push af
;	push bc
;	ld b,#f4
;	out (c),a
;	ld a,#c0
;	ld b,#f6
;	out (c),a
;	xor a
;	out (c),a
;	ld b,#f4
;	out (c),c
;	ld a,#80
;	ld b,#f6
;	out (c),a
;	xor a
;	out (c),a
;	pop bc
;	pop af
	push af
	push bc

	di		; disable interrupt
	ld b,#f4	; PPI Port A Data
	out (c),a	; Send register number to PPI Port A Data

	ld b,#f6	; PPI Port C
	in a,(c)	; read PPI Port C value
	or #c0		; &11000000 - set PSG fonction selection value to "Select PSG register"
	out (c),a	; send value to PPI Port C
	and #3f		; &00111111 - set PSG fonction selection value to "Inactive"
	out (c),a	; send value to PPI Port C

	ld b,#f4	; PPI Port A Data
	out (c),c	; send data to PPI Port A 

	ld b,#f6	; PPI Port C
	ld c,a		; c = "Inactive" = a
	or #80		; &10000000 - set PSG fonction selection value to "Write to selected PSG register"
	out (c),a	; send value to PPI Port C
	out (c),c	; send "Inactive" to PPI Port C
	ei		; enable interrupt

	pop bc
	pop af
	ret
;
; data music
;
.l17aa
	dw l1814,l1814,l1861,l18fc
	dw l194e,l19a1,l19a1,l19a1
	dw l19a1,l19b6,l19ff,l19ff
	dw l1a10,l1a4a,l1a4a,l1a8f
	dw l1a8f,#ffff
.l17ce
	dw l182f,l182f,l1840,l182f
	dw l182f,l1840,l18ca,l18ca
	dw l18db,l182f,l193d,l1850
	dw l182f,l182f,l182f,l1840
	dw l182f,l182f,l193d,l193d
	dw l19dd,l19dd,l19ee,l19ee
	dw l193d,l193d,l193d,l193d
	dw l1840,l1840,l1a69,l1a69
	dw l1a84,l1a84,#ffff
.l1814
	db #fe,#0c,#5c,#06,#5c,#06,#5c,#09
	db #5c,#09,#58,#06,#fe,#03,#5c,#03
	db #5c,#06,#5c,#06,#58,#06,#5c,#0c
	db #fe,#0c,#ff
.l182f
	db #2c,#09,#44,#03,#fd,#06,#2c,#06
	db #2c,#0c,#fd,#06,#40,#03,#44,#03
	db #ff
.l1840
	db #2e,#09,#46,#03,#fd,#06,#2e,#06
	db #2e,#0c,#fd,#06,#44,#03,#46,#03
.l1850	
	db #22,#09,#3a,#03,#fd,#06,#22,#06
	db #22,#0c,#fd,#06,#36,#03,#3a,#03
	db #ff
.l1861
	db #fe,#03,#5c,#03,#5c,#06,#5c,#06
	db #5c,#06,#5c,#0c,#5c,#09,#5c,#03
	db #fe,#03,#6a,#03,#6a,#06,#6a,#06
	db #6a,#06,#6a,#0c,#fe,#0c,#6c,#0c
	db #6a,#0c,#6c,#0c,#6a,#0c,#fe,#03
	db #60,#03,#60,#06,#60,#06,#60,#06
	db #60,#0c,#fe,#0c,#fe,#03,#62,#03
	db #62,#06,#62,#06,#62,#06,#62,#0c
	db #62,#09,#62,#03,#fe,#03,#70,#03
	db #70,#06,#70,#06,#70,#06,#70,#0c
	db #fe,#0c,#72,#0c,#70,#0c,#72,#0c
	db #70,#0c,#fe,#03,#66,#03,#66,#06
	db #66,#06,#66,#06,#66,#0c,#fe,#0c
	db #ff
.l18ca
	db #32,#09,#4a,#03,#fd,#06,#32,#06
	db #32,#0c,#fd,#06,#46,#03,#4a,#03
	db #ff
.l18db
	db #34,#09,#4c,#03,#fd,#06,#34,#06
	db #34,#0c,#fd,#06,#4a,#03,#4c,#03
	db #28,#09,#40,#03,#fd,#06,#28,#06
	db #28,#0c,#fd,#06,#3c,#03,#40,#03
	db #ff
.l18fc
	db #fe,#0c,#5c,#06,#5c,#06,#5c,#03
	db #5c,#03,#5c,#06,#60,#06,#62,#06
	db #66,#03,#66,#03,#66,#06,#66,#06
	db #66,#06,#66,#0c,#fe,#06,#66,#03
	db #6a,#03,#6c,#03,#6c,#03,#6a,#06
	db #66,#06,#62,#06,#60,#06,#5c,#06
	db #5a,#0c,#fe,#03,#5c,#03,#5c,#06
	db #5c,#06,#60,#06,#5c,#0c,#fe,#0c
	db #ff
.l193d
	db #36,#09,#4e,#03,#fd,#06,#36,#06
	db #36,#0c,#fd,#06,#4a,#03,#4e,#03
	db #ff
.l194e
	db #62,#03,#60,#06,#5e,#03,#5c,#06
	db #62,#03,#60,#06,#5e,#03,#5c,#06
	db #62,#03,#60,#06,#5e,#03,#5c,#06
	db #62,#03,#60,#06,#5e,#03,#5c,#06
	db #62,#03,#60,#06,#5c,#03,#6c,#06
	db #6a,#06,#6c,#03,#6a,#06,#68,#03
	db #66,#06,#6c,#03,#6a,#06,#68,#03
	db #66,#06,#6c,#06,#6a,#06,#60,#03
	db #5e,#06,#5c,#03,#5a,#06,#60,#03
	db #5e,#06,#5c,#03,#5a,#06,#62,#06
	db #60,#06,#ff
.l19a1
	db #62,#03,#60,#06,#5e,#03,#5c,#06
	db #62,#03,#60,#06,#5e,#03,#5c,#06
	db #62,#06,#66,#06,#ff
.l19b6
	db #6e,#12,#6e,#06,#6a,#0c,#64,#06
	db #60,#06,#60,#06,#5e,#06,#5e,#0c
	db #fe,#06,#5e,#03,#5e,#03,#60,#06
	db #64,#06,#64,#12,#64,#06,#6a,#09
	db #64,#09,#60,#06,#64,#30,#ff
.l19dd
	db #26,#09,#3e,#03,#fd,#06,#26,#06
	db #26,#0c,#fd,#06,#3a,#03,#36,#03
	db #ff
.l19ee
	db #34,#09,#4c,#03,#fd,#06,#34,#06
	db #34,#0c,#fd,#06,#48,#03,#4a,#03
	db #ff
.l19ff
	db #66,#0c,#fe,#06,#66,#03,#66,#03
	db #6a,#09,#66,#09,#62,#06,#66,#30
	db #ff
.l1a10
	db #6a,#0c,#fe,#06,#6a,#03,#6a,#03
	db #6e,#09,#6a,#09,#66,#06,#6a,#30
	db #6a,#0c,#fe,#06,#6a,#03,#6a,#03
	db #6e,#09,#6a,#09,#66,#06,#6a,#09
	db #6e,#09,#72,#06,#6e,#09,#72,#09
	db #74,#06,#ff
.l1a3b_non_utilise
	db #fe,#03,#52,#03,#52,#06,#52,#06
	db #4e,#06,#52,#0c,#fe,#0c,#ff
.l1a4a
	db #76,#03,#76,#03,#76,#03,#76,#03
	db #76,#03,#5e,#03,#72,#03,#76,#03
	db #76,#03,#72,#03,#76,#06,#76,#03
	db #76,#03,#72,#03,#72,#03,#ff
.l1a69
	db #38,#03,#38,#03,#38,#03,#38,#03
	db #fd,#06,#34,#03,#38,#03,#38,#03
	db #34,#03,#38,#06,#fd,#06,#34,#03
	db #34,#03,#ff
.l1a84
	db #fe,#0c,#fd,#06,#fe,#12,#fd,#06
	db #fe,#06,#ff
.l1a8f
	db #fe,#30,#ff
;
; Main music data
;
.l1a92
	dw l1ab2,l1ac5,l1ab2,l1ad0
	dw l1b0c,l1ab2,l1ad0,l1b5c
	dw #ffff
.l1aa4
	dw l1adb,l1adb,l1b2b,l1adb
	dw l1b81,l1b81,#ffff
.l1ab2
	db #64,#24,#60,#0c,#66,#06,#64,#0c
	db #60,#0c,#64,#0c,#fe,#06,#5c,#24
	db #5c,#0c,#ff
.l1ac5
	db #5c,#06,#5a,#0c,#56,#12,#5a,#06
	db #5c,#06,#ff
.l1ad0
	db #5c,#06,#5a,#0c,#56,#0c,#52,#0c
	db #fe,#06,#ff
.l1adb
	db #2c,#0c,#fd,#06,#2c,#06,#2c,#0c
	db #fd,#06,#2c,#06,#28,#0c,#fd,#06
	db #28,#06,#28,#0c,#fd,#06,#28,#06
	db #36,#0c,#fd,#06,#36,#06,#36,#0c
	db #fd,#06,#36,#06,#3a,#0c,#fd,#06
	db #3a,#06,#3a,#0c,#fd,#06,#3a,#06
	db #ff
.l1b0c
	db #52,#24,#56,#06,#5c,#06,#5c,#0c
	db #5a,#18,#5c,#06,#60,#06,#64,#0c
	db #60,#18,#62,#06,#66,#06,#66,#0c
	db #64,#0c,#60,#0c,#5c,#0c,#ff
.l1b2b
	db #26,#0c,#fd,#06,#26,#06,#26,#0c
	db #fd,#06,#26,#06,#34,#0c,#fd,#06
	db #34,#06,#34,#0c,#fd,#06,#34,#06
	db #36,#0c,#fd,#06,#36,#06,#36,#0c
	db #fd,#06,#36,#06,#3a,#0c,#fd,#06
	db #3a,#06,#3a,#0c,#fd,#06,#3a,#06
	db #ff
.l1b5c
	db #5c,#30,#fe,#06,#4e,#06,#52,#06
	db #4e,#06,#5c,#06,#5a,#06,#52,#06
	db #60,#06,#5c,#30,#fe,#06,#4e,#06
	db #52,#06,#4e,#06,#5c,#06,#5a,#06
	db #52,#06,#4e,#06,#ff
.l1b81
	db #2c,#0c,#fd,#06,#2c,#06,#2c,#0c
	db #fd,#06,#2c,#06,#36,#0c,#fd,#06
	db #36,#06,#3a,#0c,#fd,#06,#3a,#06
	db #ff
;
; data 2nd music
;
.l1b9a
	dw l1baa
.l1b9c
	dw l1baa,l1bc8,&ffff
.l1ba2
	dw l1bb9
.l1ba4
	dw l1bb9,l1bd7,&ffff
.l1baa
	db #6a,#03,#6a,#03,#6a,#06,#6a,#06
	db #6a,#06,#70,#0c,#74,#0c,#ff
.l1bb9
	db #5c,#03,#5c,#03,#5c,#06,#5c,#06
	db #5c,#06,#62,#0c,#66,#0c,#ff
.l1bc8
	db #fe,#03,#78,#03,#78,#06,#78,#06
	db #7c,#06,#78,#18,#fe,#00,#ff
.l1bd7
	db #fe,#03,#6a,#03,#6a,#06,#6a,#06
	db #6e,#06,#6a,#18,#fe,#00,#ff
;
.init_music				; added by Megachur
;
	or a
	jp z,l15f1_init_music
	dec a
	jp z,l15fa_init_music
	jp l1603_init_music	; added by Megachur
;
.music_info
	db "Commando (1986)(Elite Systems Ltd.)(Rob Hubbard)",0
	db "",0

	read "music_end.asm"
