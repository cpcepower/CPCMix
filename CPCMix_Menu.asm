; big'o'full à revoir !
; ---------------------------------------------------------------------------------
; - CPC Mix Menu - $VER 2.0 - (c) 2008-2009-2012-2018 Megachur
; ---------------------------------------------------------------------------------
nolist 
; ---------------------------
; @todo - 
; ---------------------------
	read "../include/macro/macro_ASM.asm"
; ---------------------------
begin_menu		equ #4000
; USE_COMPACTER	equ 1
; DEBUG		equ 1
; TODO		equ 1
 SAVE_FILE	equ 1
; ---------------------------
	org begin_menu-#1c	; #1c = start_player-start_player_in_memory

	IFDEF SAVE_FILE
;;	write direct "a:CPCMIX.",start_player_in_memory
	write "CPCMIX."
	ELSE
	run start_player_in_memory
	ENDIF
; ---------------------------
;write direct -1,-1,#C5
; ---------------------------
; ---------------------------
start_player_in_memory:
; ---------------------------
	di

	ld hl,start_player
	ld de,#0100
	ld bc,end_player-start_player+1
	ldir
	ld bc,#7fc5
	out (c),c
	ld hl,#0100
	ld de,start_player
	ld bc,end_player-start_player+1
	ldir
; ---------------------------
start_player
; ---------------------------
	call vbl_wait

	ld a,(#a700)                    ; get AMSDOS current drive number (0=A; 1=B)
	and %00000011
	call fdc_set_drive_number
	add a,65
	ld (music_insert_disk_drive_text),a

	xor a
	ld (current_music_end),a
	ld (current_menu_item_idx),a
	ld (psg_sound_reset_di),a       ; disable lbca7 di/ei
	ld (psg_sound_reset_ei),a

	call fdc_set_drive_head_number  ; a = 0

	ld sp,#0000

next_music
	di

	ld hl,#0038
	ld (hl),#c3
	inc hl
	ld (hl),z80_interruption
	inc hl
	ld (hl),z80_interruption/#100

	call psg_sound_reset	; lbca7

	ld bc,#7f00+%10011100+2	; Set Interrupt and Upper/Lower rom area disable + mode 2
	out (c),c
	xor a
	out (c),a
	ld c,#54
	out (c),c
	inc a
	out (c),a
	out (c),c
	ld a,#10
	out (c),a
	out (c),c

	ld hl,crtc_regs_value+12
	ld (hl),CRTC_SCREEN_ADDRESS/#100
	inc hl
	ld (hl),CRTC_SCREEN_ADDRESS

	ld hl,crtc_regs_value
	call set_crtc_regs

	ld hl,draw_freq_spectrum_analyzer_first_address
	ld (draw_spectrum_analyzer_call_draw),hl
	ld hl,draw_spectrum_analyzer_first_address_table
	ld (draw_spectrum_analyzer_address),hl

	ld hl,SCREEN_FIRST_ADDRESS
	ld (print_screen_address),hl
	ld de,SCREEN_FIRST_ADDRESS+1
	ld bc,#3fff
	ld (hl),#00
	ldir

	call vbl_wait

	call keyboard_init_scan

	ld bc,#7f01
	out (c),c
	ld a,#4b
	out (c),a

	ei
;
; load next file !
;
	call print_intro_text

load_current_music_index
	call navigation_menu

current_music_end equ $+1
	ld a,0
	inc a
	jr nz,load_current_music_index_next
	call navigation_menu_down
	jp load_current_music_selected_next

load_current_music_index_next
	inc a
	jr nz,navigation_menu_loop
	call navigation_menu_up
	jp load_current_music_selected_next
; ---------------------------
navigation_menu_loop
; ---------------------------
	call vbl_wait

	ld a,(keyboard_a_key_pressed)
	or a
	jr z,navigation_menu_loop	; no key pressed ?

first_loop_tempo equ $+1
	ld a,5
	dec a
	ld (first_loop_tempo),a
	jr nz,navigation_menu_loop
	ld a,5
	ld (first_loop_tempo),a

	ld a,(keyboard_line_press+keyboard_line_0)
	bit key_up,a
	jr z,not_key_up
	call navigation_menu_up
	jr navigation_menu_loop

not_key_up
	bit key_down,a
	jr z,not_key_down
	call navigation_menu_down
	jr navigation_menu_loop

not_key_down
	ld a,(keyboard_line_press+keyboard_line_5)
	bit key_space,a
	jr z,not_key_space
	ld hl,(current_menu_item)
	ld a,(hl)
	or a
	jr z,refresh_directory
	jr load_current_music_selected_next

not_key_space
	ld a,(keyboard_line_press+keyboard_line_2)
	bit key_return,a
	jr z,navigation_menu_loop

refresh_directory
	ld hl,refresh_directory_loop_wait_count
	ld (hl),#03

refresh_directory_loop
	ld hl,musics_list_on_current_disk
	ld (current_menu_item),hl
	xor a
	ld (current_menu_item_idx),a

	call cpcmix_load_directory

	or a
	jr z,refresh_directory_ok

;	cp 1	; disk missing
	call check_Load_Error

refresh_directory_loop_wait_count equ $+1
	ld a,#00
	dec a
	jr nz,refresh_directory_loop

	call PRINT_LINE_BLANK

	jr navigation_menu_loop

refresh_directory_ok
	call PRINT_LINE_BLANK

load_current_music_selected_next
	xor a
	ld (load_current_music_selected_wait_count),a

load_current_music_selected_ok
load_current_music_selected_wait_count equ $+1
	ld a,#00
	inc a
	ld (load_current_music_selected_wait_count),a
	cp #03
	jr nz,load_current_music_selected_load_ok

	jr refresh_directory

load_current_music_selected_load_ok
	xor a
	ld (current_music_end),a

current_menu_item equ $+1
	ld hl,musics_list_on_current_disk
	ld a,(hl)
	or a	; end of file_list
	jr nz,load_current_music_selected_valid
	ld hl,musics_list_on_current_disk
	ld (current_menu_item),hl
	jp load_current_music_index

load_current_music_selected_valid
	call load_current_music_selected

	ld a,(load_error_value)
	inc a	; cp #ff
	jp z,load_current_music_index
	dec a	; or a
	jr nz,load_current_music_selected_ok

; print music name/year/publisher/author and additional commentary
; check if tag "Megachur" is at the right place to ensure that it's good music data after !

	ld hl,MUSIC_LOAD+INDEX_MEGACHUR
	ld de,text_Megachur
Megachur_check_continue
	ld a,(de)
	or a
	jr z,Megachur_check_ok
	cp (hl)
	jr nz,Megachur_check_fails
	inc hl
	inc de
	jr Megachur_check_continue

Megachur_check_fails
;	rst 0
	ld hl,text_not_musicfile
	call print_text

	ld hl,MUSICS_LIST_ON_CURRENT_DISK_END-FILENAME_LENGTH
	ld bc,(current_menu_item)
	and a	; reset carry
	sbc hl,bc
	ld b,h
	ld c,l

	ld hl,FILENAME_LENGTH
	ld de,(current_menu_item)
	add hl,de

	ldir

	ld b,100
Megachur_check_fails_wait
	push bc
	call vbl_wait
	pop bc
	djnz Megachur_check_fails_wait

	jp next_music

Megachur_check_ok
	di

	ld hl,#c9fb
	ld (#0038),hl

	ld hl,l0000
	ld de,#0000
	ld bc,l0000_end-l0000
	ldir

	ei

; check that screen address = #c000 is free or disable writing char

	ld a,(file_nbentry)
	or a
	jr z,file_loaded_is_not_to_long

	ld c,0

	ld hl,file_block_table
count_number_of_extended_block
	ld a,(hl)
	inc hl
	or a
	jr z,no_more_extended_block
	inc c
	jr count_number_of_extended_block
no_more_extended_block
	ld a,c
	and #0f		; only #3c00 long available !!!
	ld (no_more_extended_block_restore_nb),a

	ld hl,screen_first_address

	push hl
	push af

	ld de,file_temp_memory_adr_save
;
; copy extended block to file_temp_memory_adr_save = #0400
;
move_memory
	ld bc,#0400
	ldir
	dec a
	jr nz,move_memory

	pop af
	pop hl

	ld d,h
	ld e,l
clear_move_memory
	inc de
	ld (hl),#00
	ld bc,#0400-1
	ldir
	inc hl
	dec a
	jr nz,clear_move_memory

file_loaded_is_not_to_long
	call PRINT_LINE_BLANK

	ld hl,MUSIC_HEADER_LENGTH
	ld bc,(MUSIC_LOAD)
	add hl,bc
	ld (music_address_begin),hl

	ld hl,(MUSIC_LOAD+INDEX_MUSIC_INFO)
;	ld bc,(MUSIC_LOAD)
	and a	; reset carry
	sbc hl,bc
	ld bc,MUSIC_HEADER_LENGTH
	and a	; reset carry
	sbc hl,bc
	ld (length_of_music_withoutcomment),hl
	add hl,bc

	ld a,(file_nbentry)
	or a
	jr z,find_information_in_first_16ko
	ld de,file_temp_memory_adr_save-#4000	; warning if comment is cut (first in #7fff then #0400)
	jr find_information

find_information_in_first_16ko
	ld de,MUSIC_LOAD

find_information
	add hl,de
;
; music name (year) (publisher) (author)
;
	call print_text
	call print_text_CRx2
;
; additional commentary
;
	ld a,(hl)
	or a
	jr nz,comments
	ld hl,text_no_comments

comments
	call print_text
	call print_text_CRx2
;
; Date rip
;
	ld hl,text_music_rip
	call print_text
	ld hl,text_music_date_rip
	call print_text
	ld a,(MUSIC_LOAD+INDEX_MUSIC_DATE_RIP_DAY)
	call print_number_direct
	ld a,"/"
	call print_char
	ld a,(MUSIC_LOAD+INDEX_MUSIC_DATE_RIP_MONTH)
	call print_number_direct
	ld a,"/"
	call print_char
	ld a,(MUSIC_LOAD+INDEX_MUSIC_DATE_RIP_YEAR)
	call print_number_direct
	ld a,(MUSIC_LOAD+INDEX_MUSIC_DATE_RIP_YEAR+1)
	call print_number_direct

	call print_text_CRx2
;
; music address (begin, play, init, stop, end, length)
;
	ld hl,(MUSIC_LOAD+INDEX_MUSIC_REAL_ADR)
	ld (Hexa_Number_To_Print),hl
	ld hl,text_music_real_adr
	call print_text
	call print_hexa_number

	ld hl,(MUSIC_LOAD+INDEX_INIT_MUSIC)
	ld (call_init_music_adr),hl
	ld hl,(MUSIC_LOAD+INDEX_REAL_INIT_MUSIC)
	ld (Hexa_Number_To_Print),hl
	ld hl,text_init_music
	call print_text
	call print_hexa_number

	ld hl,(MUSIC_LOAD+INDEX_PLAY_MUSIC)
	ld (call_play_music_adr),hl
	ld hl,(MUSIC_LOAD+INDEX_REAL_PLAY_MUSIC)
	ld (Hexa_Number_To_Print),hl
	ld hl,text_play_music
	call print_text
	call print_hexa_number

	ld hl,(MUSIC_LOAD+INDEX_STOP_MUSIC)
	ld (Hexa_Number_To_Print),hl
	ld hl,text_stop_music
	call print_text
	call print_hexa_number

	ld hl,(MUSIC_LOAD+INDEX_MUSIC_END)
	ld (Hexa_Number_To_Print),hl
	ld hl,text_music_end
	call print_text
	call print_hexa_number

	ld hl,(length_of_music_withoutcomment)
	ld (Hexa_Number_To_Print),hl
	ld hl,text_music_length
	call print_text
	call print_hexa_number

	call print_text_CRx2

	ld hl,(MUSIC_LOAD+INDEX_MUSIC_END)
	ld (music_end_address),hl

	ld a,(MUSIC_LOAD+INDEX_LAST_THEME)
	ld (current_music_max_theme),a

	ld a,(MUSIC_LOAD+INDEX_FIRST_THEME)
	ld (current_music_first_theme),a
	call display_current_theme

	call print_intro_text
;
; copy screen to MEMORY_BANK3
;
	ld de,#4000

	ld hl,move_function_memory_adr
	ld (hl),#01
	inc hl
	ld (hl),MEMORY_BANK3
	inc hl
	ld (hl),#7f
	inc hl
	ld (hl),#ed
	inc hl
	ld (hl),#49
	inc hl
	ld (hl),#21
	inc hl
	ld (hl),SCREEN_FIRST_ADDRESS
	inc hl
	ld (hl),SCREEN_FIRST_ADDRESS/#100
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),#4000
	inc hl
	ld (hl),#4000/#100
	inc hl
	ld (hl),#ed
	inc hl
	ld (hl),#b0
	inc hl
	ld (hl),#c3
	inc hl
	ld (hl),l0000_bank_5
	inc hl
	ld (hl),l0000_bank_5/#100
	call move_function_memory_adr
;
; check that screen address = #c000 is free
; move memory if necessary
;
	ld a,(file_nbentry)
	or a
	jr z,file_loaded_is_not_to_long_restore

no_more_extended_block_restore_nb equ $+1
	ld a,#00

	ld hl,file_temp_memory_adr_save
	ld de,screen_first_address
move_memory_restore
	ld bc,#400
	ldir
	dec a
	jr nz,move_memory_restore

file_loaded_is_not_to_long_restore
	ld hl,(music_address_begin)
	ld bc,SCREEN_FIRST_ADDRESS
	and a	; reset carry
	sbc hl,bc
	jr nc,music_adrbegin_sup_c000

; begin < #c000

	ld hl,(music_address_begin)
	ld bc,(length_of_music_withoutcomment)
	add hl,bc
	ld bc,SCREEN_FIRST_ADDRESS
	and a	; reset carry
	sbc hl,bc
	jr nc,music_adrend_sup_c000

; end < #c000

	ld hl,SCREEN_FIRST_ADDRESS

	jr copy_file_memory_to_right_place

music_adrend_sup_c000
	ld hl,(music_address_begin)
	ld bc,SCREEN_SECOND_ADDRESS
	and a	; reset carry
	sbc hl,bc
	jr nc,music_adrbegin_sup_8000

music_adrbegin_sup_c000
; begin > #c000

	ld hl,(music_address_begin)
	ld bc,(length_of_music_withoutcomment)
	add hl,bc
	ld bc,SCREEN_FIRST_ADDRESS
	and a	; reset carry
	sbc hl,bc
	jr c,music_adrend_sup_8000

; end < #8000

	ld a,(print_screen_address+1)
	add #c0
	ld (print_screen_address+1),a

	ld hl,crtc_regs_value+12
	ld (hl),SCREEN_CRTC_2ND_ADDRESS/#100
	inc hl
	ld (hl),SCREEN_CRTC_2ND_ADDRESS

	ld hl,draw_freq_spectrum_analyzer_second_address
	ld (draw_spectrum_analyzer_call_draw),hl
	ld hl,draw_spectrum_analyzer_second_address_table
	ld (draw_spectrum_analyzer_address),hl

	ld hl,screen_second_address

	jr copy_file_memory_to_right_place

music_adrbegin_sup_8000
music_adrend_sup_8000
	ld a,(print_screen_address+1)
	add #40
	ld (print_screen_address+1),a

	ld hl,crtc_regs_value+12
	ld (hl),SCREEN_CRTC_3RD_ADDRESS/#100
	inc hl
	ld (hl),SCREEN_CRTC_3RD_ADDRESS

	ld hl,draw_freq_spectrum_analyzer_third_address
	ld (draw_spectrum_analyzer_call_draw),hl
	ld hl,draw_spectrum_analyzer_third_address_table
	ld (draw_spectrum_analyzer_address),hl

	ld a,#01
	ld (screen_third_activate),a

	ld hl,screen_third_address+MINIMUM_PRESERVE_MEMORY_LENGTH

copy_file_memory_to_right_place
	ld (screen_address_selected),hl

music_address_begin equ $+1
	ld hl,0 ;(MUSIC_LOAD)+MUSIC_HEADER_LENGTH

	ld de,MUSIC_LOAD+MUSIC_HEADER_LENGTH
	ld a,e	; MUSIC_LOAD+MUSIC_HEADER_LENGTH
	cp l
	jr nz,music_adr_ko
	ld a,d	; MUSIC_LOAD+MUSIC_HEADER_LENGTH/#100
	cp h
	jp z,music_load_memory_last
music_adr_ko
	ex de,hl

	push hl

;	ld hl,MUSIC_LOAD+MUSIC_HEADER_LENGTH
	ld b,d
	ld c,e	; (MUSIC_LOAD)
	and a	; reset carry
	sbc hl,bc

length_of_music_withoutcomment equ $+1
	ld bc,0	;(MUSIC_LOAD+index_EOF_LENGTH)

	jr nc,music_load_memory_ldir
	dec bc
	pop hl
	add hl,bc
	ex de,hl
	add hl,bc
	ex de,hl
	inc bc
	call lddr_music
	jr music_load_memory_last

music_load_memory_ldir
	pop hl
	call ldir_music
;
; check that screen address = #c000 is free
;
music_load_memory_last

screen_address_selected equ $+1
	ld de,#0

	ld hl,move_function_memory_adr
	ld (hl),#01
	inc hl
	ld (hl),MEMORY_BANK3
	inc hl
	ld (hl),#7f
	inc hl
	ld (hl),#ed
	inc hl
	ld (hl),#49
	inc hl
	ld (hl),#21
	inc hl
	ld (hl),#4000
	inc hl
	ld (hl),#4000/#100
screen_third_activate equ $+1
	ld a,0
	dec a
	jr nz,screen_third_not_activate
	ld (screen_third_activate),a
	dec hl
	ld (hl),#4000+MINIMUM_PRESERVE_MEMORY_LENGTH
	inc hl
	ld (hl),#4000+MINIMUM_PRESERVE_MEMORY_LENGTH/#100

screen_third_not_activate
	inc hl
	ld (hl),#01
	inc hl
	ld (hl),#4000-MINIMUM_PRESERVE_MEMORY_LENGTH
	inc hl
	ld (hl),#4000-MINIMUM_PRESERVE_MEMORY_LENGTH/#100	; preserve stack or before #0038
	inc hl
	ld (hl),#ed
	inc hl
	ld (hl),#b0
	inc hl
	ld (hl),#c3
	inc hl
	ld (hl),l0000_bank_5
	inc hl
	ld (hl),l0000_bank_5/#100
	call move_function_memory_adr
;
; music_adr_ok and screen_ok
;
	ld hl,crtc_regs_value
	call set_crtc_regs

	ld hl,text_music_timer_count_first
	call print_text

	ld hl,text_spectrum_analyzer
	call print_text

	ld a,(print_psg_values)
	cp #21
	jr nz,not_print_text_psg_values
	ld hl,text_psg_values
	call print_text

not_print_text_psg_values
current_music_first_theme equ $+1
	ld a,0
	call change_current_theme

	ei
;-------------------------------------------------------------------------------
play_music_vbl_wait
;-------------------------------------------------------------------------------
	call vbl_wait

	call call_play_music

	or a
	jr nz,not_current_theme_end

	call change_theme_inc

not_current_theme_end

	call read_print_psg_values

	call draw_spectrum_analyzer

	call time_counter

	ld hl,text_music_timer_count
	call print_text
	ld a,(time_counter_hour)
	call print_number_direct
	ld a,":"
	call print_char
	ld a,(time_counter_minute)
	call print_number_direct
	ld a,":"
	call print_char
	ld a,(time_counter_second)
	call print_number_direct

	ld bc,#f407	; Joe Blade 3 player set the port A to output so we have to reset it here before keyboard_scan !
	out (c),c

	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a

	inc b	; b = #f7
	ld c,%10010010
	out (c),c

	dec b	; b = #f6
	or #40
	out (c),a

	ld b,#f4
	in a,(c)
	res 6,a		; 0x40 - set ay.iOA to input !
	
	ld bc,#f700+%10000010
	out (c),c

	ld bc,#f407
	out (c),c

	ld c,a

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

	call keyboard_scan

	ld a,(keyboard_a_key_pressed)
	or a
	jp z,test_key_end	; no key pressed

tempo equ $+1
	ld a,5
	dec a
	ld (tempo),a
	jp nz,test_key_end
	ld a,5
	ld (tempo),a

	ld a,(keyboard_line_press+keyboard_line_8)
	bit key_esc,a
	jp nz,next_music

test_key_space ; load and play next music
	ld a,(keyboard_line_press+keyboard_line_5)
	bit key_space,a
	jr z,test_key_left

	ld hl,current_music_end
	ld (hl),#ff

test_key_left ; play the previous theme of the current music
	ld a,(keyboard_line_press+keyboard_line_1)
	bit key_left,a
	jr z,test_key_right

	call change_theme_dec

test_key_right
;
; play the next theme of the current music
; if it is the last theme of the current music
; and
; if the music loop is disable
; then load and play next music (same as press "space")
; else play first theme of the current music
;
	ld a,(keyboard_line_press+keyboard_line_0)
	bit key_right,a
	jr z,test_key_r

	call change_theme_inc

test_key_r
;
; en/disable music loop
;
	ld a,(keyboard_line_press+keyboard_line_6)
	bit key_r,a
	jr z,test_key_f
	ld a,(set_music_loop_test)
	xor #ff
	ld (set_music_loop_test),a

	or a
	jr z,clear_text_music_repeat
	ld hl,text_music_repeat
	jr print_text_music_repeat_end
clear_text_music_repeat
	ld hl,text_music_repeat_clear
print_text_music_repeat_end
	call print_text

test_key_f
;
; en/disable a duration of only three minutes of the theme of the music
;
	ld a,(keyboard_line_press+keyboard_line_6)
	bit key_f,a
	jr z,test_key_p
	ld a,(force_currentmusic_duration_active)
	xor #01
	ld (force_currentmusic_duration_active),a
	or a
	jr z,clear_text_music_force_end
	ld hl,text_music_force_end
	jr print_text_music_force_end_end

clear_text_music_force_end
	ld hl,text_music_force_end_clear

print_text_music_force_end_end
	call print_text
	call set_force_currentmusic_duration_timer

test_key_p
;
; activate display of PSG registers
; disable the display of spectrum analyzer
;
	ld a,(keyboard_line_press+keyboard_line_3)
	bit key_p,a
	jr z,test_key_s

	ld hl,draw_spectrum_analyzer
	ld (hl),#c9
	ld hl,print_psg_values
	ld (hl),#21

	ld hl,text_psg_values
	call print_text

test_key_s
;
; activate the display of spectrum analyzer
; disable display of PSG registers
;
	ld a,(keyboard_line_press+keyboard_line_7)
	bit key_s,a
	jr z,test_key_end

	ld hl,print_psg_values
	ld (hl),#c9
	ld hl,draw_spectrum_analyzer
	ld (hl),#cd

test_key_end

force_currentmusic_duration_active equ $+1
	ld a,0
	or a
	jr z,no_force_currentmusic_duration
	ld hl,time_counter_frame+2
	ld a,(hl)

force_currentmusic_duration_counter equ $+1
	cp FORCE_CURRENTMUSIC_DURATION
	jr nz,test_inactivity_of_music
	dec hl
	ld a,(hl)

force_currentmusic_duration_counter_secs equ $+1
	cp 0
	jr nz,test_inactivity_of_music
	dec hl
	ld a,(hl)

force_currentmusic_duration_counter_frame equ $+1
	cp 0
	call z,change_theme_inc
;
test_inactivity_of_music
;
; test inactivity of music every second !
;
	ld hl,(read_psg_value+8)
last_psg_value8 equ $+1
	ld de,0
	ld (last_psg_value8),hl
	ld a,h
	cp d
	jr nz,reset_psg_value_same_as_last_vbl
	ld a,l
	cp e
	jr nz,reset_psg_value_same_as_last_vbl

	ld a,(read_psg_value+10)
last_psg_value10 equ $+1
	ld b,0
	ld (last_psg_value10),a
	cp b
	jr nz,reset_psg_value_same_as_last_vbl

	ld hl,(read_psg_value+0)
last_psg_value0 equ $+1
	ld de,0
	ld (last_psg_value0),hl
	ld a,h
	cp d
	jr nz,reset_psg_value_same_as_last_vbl
	ld a,l
	cp e
	jr nz,reset_psg_value_same_as_last_vbl

	ld hl,(read_psg_value+2)
last_psg_value2 equ $+1
	ld de,0
	ld (last_psg_value2),hl
	ld a,h
	cp d
	jr nz,reset_psg_value_same_as_last_vbl
	ld a,l
	cp e
	jr nz,reset_psg_value_same_as_last_vbl

	ld hl,(read_psg_value+4)
last_psg_value4 equ $+1
	ld de,0
	ld (last_psg_value4),hl
	ld a,h
	cp d
	jr nz,reset_psg_value_same_as_last_vbl
	ld a,l
	cp e
	jr nz,reset_psg_value_same_as_last_vbl

psg_value_same_as_last_vbl equ $+1
	ld a,0
	inc a
	ld (psg_value_same_as_last_vbl),a
	jr nz,play_music_vbl_wait_test_music_end

	call change_theme_inc

reset_psg_value_same_as_last_vbl
	xor a
	ld (psg_value_same_as_last_vbl),a

play_music_vbl_wait_test_music_end
no_force_currentmusic_duration
;
; test_current_theme_end
;
	ld a,(current_music_end)
	or a
	jp z,play_music_vbl_wait
	ld a,(current_music_end)
set_music_loop_test	equ $+1
	cp 0
	jp nz,next_music
	xor a
	ld (current_music_end),a

	jp play_music_vbl_wait
;-------------------------------------------------------------------------------
.change_theme_dec
;-------------------------------------------------------------------------------
	ld a,(current_music_first_theme)
	dec a
	ld b,a
	ld a,(current_music_theme)
	dec a
	cp b
	jr nz,change_current_theme
	ld a,#fe
	ld (current_music_end),a
	ret
;-------------------------------------------------------------------------------
.change_theme_inc
;-------------------------------------------------------------------------------
	ld a,(current_music_max_theme)
	inc a
	ld b,a
	ld a,(current_music_theme)
	inc a
	cp b
	jr c,change_current_theme
	ld a,#ff
	ld (current_music_end),a
	ret
;-------------------------------------------------------------------------------
change_current_theme
;-------------------------------------------------------------------------------
	ld (current_music_theme),a
	call display_current_theme

	ld hl,0
	ld (time_counter_frame),hl
	ld (time_counter_frame+2),hl

current_music_theme equ $+1
	ld a,0
	call call_init_music
;------------------------
set_force_currentmusic_duration_timer
;------------------------
	ld hl,time_counter_frame
	ld a,(hl)	; get frames
	inc hl
	ld (force_currentmusic_duration_counter_frame),a
	ld a,(hl)	; get seconds
	inc hl
	ld (force_currentmusic_duration_counter_secs),a
	ld a,(hl)	; get minute
	add a,FORCE_CURRENTMUSIC_DURATION
	ld (force_currentmusic_duration_counter),a
	ret
;------------------------
.display_current_theme
;------------------------
	ld (number_to_print),a

	ld hl,text_playing_theme
	call print_text

	call print_number
	ld a,"/"
	call print_char
current_music_max_theme equ $+1
	ld a,0
	call print_number_direct
	ld a,13
	jp print_char
;-------------------------------------------------------------------------------
.read_print_psg_values
;-------------------------------------------------------------------------------
	ld hl,read_psg_value+10
	ld d,10

	di

.read_data_to_psg
	ld b,#f4
	out (c),d
	ld b,#f6
	in a,(c)
	or #c0
	out (c),a
	and #3f
	out (c),a

	inc b
;	ld bc,#f792
	ld c,%10010010
	out (c),c   ; Port #F4xx en lecture
	dec b

;	ld b,#f6
;	ld c,a
	or #40
	out (c),a
;	out (c),c

	ld b,#f4
;	in c,(c)
;	ld (hl),c
;	dec hl
	ind

	ld bc,#f700+%10000010
	out (c),c   ; Port #F4xx en ecriture

	dec d
	jp p,read_data_to_psg

	ld bc,#f600
	out (c),c

	ei
; ---------------------------
.print_psg_values
; ---------------------------
;	ld hl,psg_values_text
	ret
	dw text_locate_psg_values

	call print_text
	ld hl,(psg_read_data_reg0)
	call print_hexa_number_16bit_direct
	ld a,32
	call print_char
	ld hl,(psg_read_data_reg2)
	call print_hexa_number_16bit_direct
	ld a,32
	call print_char
	ld hl,(psg_read_data_reg4)
	call print_hexa_number_16bit_direct
	ld a,32
	call print_char
	ld a,(psg_read_data_reg6)
	call print_hexa_number_8bit_direct
	ld a,32
	call print_char
	ld a,(psg_read_data_reg7)
	call print_hexa_number_8bit_direct
	ld a,32
	call print_char
	ld a,(psg_read_data_reg8)
	call print_number_direct
	ld a,32
	call print_char
	ld a,(psg_read_data_reg9)
	call print_number_direct
	ld a,32
	call print_char
	ld a,(psg_read_data_rega)
	call print_number_direct
	ld a,13
	call print_char
	ld a,11
	call print_char
	ld a,11
	jp print_char

psg_read_data_rega	equ $+10
psg_read_data_reg9	equ $+09
psg_read_data_reg8	equ $+08
psg_read_data_reg7	equ $+07
psg_read_data_reg6	equ $+06
psg_read_data_reg4	equ $+04
psg_read_data_reg2	equ $+02
psg_read_data_reg0	equ $+00
read_psg_value
	ds 11,0
; ---------------------------
cpcmix_load_directory:
; ---------------------------
; a <- Return State
;	0 -> File Loaded
;	1 -> Disc Missing
;	2 -> Read Fail
;	3 -> File Not Found
;	#e5 -> End of Directory -> File Not Found
; ---------------------------
	xor a
	ld (load_error_value),a

	ld hl,loading_directory_text
	call print_text
	ld hl,music_selected_disk_text
	call print_text

	ld hl,musics_list_on_current_disk
	ld (hl),#00
	ld (cpcmix_load_directory_musiclist_index),hl

	ld hl,MUSIC_LOAD
	ld (memory_read_data),hl
;
; Go To First Track Of The Directory
;
	ld a,DIRECTORY_FIRST_TRACK
	call fdc_go_to_track
	call nz,check_load_error

	ld a,(load_error_value)
	inc a	; cp #ff
	ret z

	ld a,DIRECTORY_FIRST_SECTOR
;
; Get Data Of Directory Sector (First to Last)
;
cpcmix_load_directory_next_sector
	ld (cpcmix_load_directory_current_sector),a
	call fdc_get_data_of_sector
	ret nz
;
;cpcmix_copy_directory_to_memory
;
	ld hl,MUSIC_LOAD

cpcmix_load_directory_musiclist_index equ $+1
	ld de,0

	ld a,ENTRY_NB_BLOCK

cpcmix_copy_directory_to_memory_get_next_entry
	ld (cpcmix_copy_directory_to_memory_get_next_entry_index),a

	ld a,(hl)
	inc hl
	cp DELETED_FILE
	jr nz,cpcmix_copy_directory_to_memory_file_noskip

	ld a,(hl)
	cp DELETED_FILE		; -> End Of Directory
	jr z,cpcmix_load_directory_end

cpcmix_copy_directory_to_memory_file_skip_entry
	ld bc,ENTRY_LENGTH-1
	add hl,bc
	jr cpcmix_copy_directory_to_memory_file_next_entry

cpcmix_copy_directory_to_memory_file_noskip
	ld bc,FILENAME_LENGTH-3
	ldir

	ld a,(hl)	; for checking first character extension value after

	ldi			; copy filename extension
	ldi
	ldi
	; ld bc,3
	; ldir

	cp "B"
	jr nz,cpcmix_clear_entry

	ld a,(hl)	; control nb entry
	or a
	jr z,cpcmix_copy_directory_to_memory_file_go_to_next_entry

cpcmix_clear_entry
	push hl

	dec de
	ld h,d
	ld l,e
	dec de
	ld (hl),#00
	ld bc,FILENAME_LENGTH-1
	lddr
	ex de,hl

	pop hl

cpcmix_copy_directory_to_memory_file_go_to_next_entry
	ld bc,ENTRY_LENGTH-FILENAME_LENGTH-1
	add hl,bc

cpcmix_copy_directory_to_memory_file_next_entry

cpcmix_copy_directory_to_memory_get_next_entry_index equ $+1
	ld a,#00
	dec a
	jr nz,cpcmix_copy_directory_to_memory_get_next_entry

	ld (cpcmix_load_directory_musiclist_index),de
;
;.Get_Data_Of_Directory_Next_Sector
;
cpcmix_load_directory_current_sector equ $+1
	ld a,#00
	inc a
	cp DIRECTORY_LAST_SECTOR
	jr nz,cpcmix_load_directory_next_sector

cpcmix_load_directory_end	; -> End Of Directory
	xor a			; set end of list
	ld (de),a
	ret
; ---------------------------
load_current_music_selected:
; ---------------------------
	ex de,hl

	ld hl,loading_filename_text
	call print_text
	call print_filename
	ld hl,loading_text
	call print_text

	ex de,hl

	IFDEF USE_COMPACTER

	ld de,PACK_ADDRESS
	call open_file

	ld a,(load_error_value)
	or a
	ret nz

	ld hl,decrunching_text
	call print_text

	ld hl,PACK_ADDRESS
	ld de,MUSIC_LOAD

	jp depack

	ELSE

	ld de,MUSIC_LOAD
;	jp open_file

	ENDIF
;-------------------------------------------------------------------------------
open_file:
;-------------------------------------------------------------------------------
; hl -> ptr on filename
; de -> load address + free buffer (minimum amout of free data must be equal to DISK_SECTOR_LENGTH (ex #200))
; a <- Return State
;	0 -> File Loaded
;	1 -> Disc Missing
;	2 -> Read Fail
;	3 -> File Not Found
; ---------------------------
	xor a
	ld (load_error_value),a

;	ld b,d
;	ld c,e

	call loadfile
;
check_load_error
;
	ld (load_error_value),a

	or a
	jp z,closefile			; end loading with no error

	cp 1 
	jr z,error_load_wait	; load_error_disc_missing

	cp 3
	jr z,load_error_file_missing

	ld a,FDC_COMMAND_RECALIBRATE
	call fdc_command

	jr error_load_wait

load_error_disc_missing
;
; Try the other Drive A or B
;
	ld a,(fdc_set_drive_number_value)
	and %00000001
	xor %00000001
	call fdc_set_drive_number
	add a,65
	ld (music_insert_disk_drive_text),a

load_error_file_missing
load_error_value equ $+1
	ld a,0
	cp 1	; disc missing
	jr z,error_load_wait
;
; Try the other head of the drive if drive has two side
;
	ld a,(disk_drive_two_side)
	or a
	jr z,error_load_wait

	ld a,(fdc_set_drive_head_value)
	and %00000100
	xor %00000100
	call fdc_set_drive_head_number
	add a,48
	ld (music_insert_disk_drive_head_text),a

error_load_wait
error_load_wait_number  equ $+1
	ld a,0
	inc a
	ld (error_load_wait_number),a
	cp #10
	jr nz,error_load_wait_keys
	xor a
	ld (error_load_wait_number),a

error_load_wait_text_swap equ $+1
	ld a,0
	xor 1
	ld (error_load_wait_text_swap),a
	or a
	jr nz,error_load_print_blank_line

error_load_wait_retry	equ $+1
	ld a,0
	inc a
	ld (error_load_wait_retry),a
	cp 7
	jr z,load_error_disc_missing
	cp 8
	jr z,error_load_end

error_load_wait_retry_nz
	ld hl,music_insert_disk_text
	call print_text
	jr error_load_wait_keys

error_load_print_blank_line
	call PRINT_LINE_BLANK

error_load_wait_keys
	call vbl_wait

	ld a,(keyboard_a_key_pressed)
	or a
	jr z,error_load_wait

	ld a,(keyboard_line_press+keyboard_line_8)
	bit key_esc,a
	jr z,error_load_end

error_load_stop
	ld a,#ff
	ld (load_error_value),a

error_load_end
	call PRINT_LINE_BLANK

	xor a
	ld (error_load_wait_retry),a
	ld (error_load_wait_number),a

	jp closefile
; ---------------------------
navigation_menu_up		; previous music !
; ---------------------------
	ld hl,(current_menu_item)
	ld a,h
	cp musics_list_on_current_disk/#100
	jr nz,not_first_menu_item
	ld a,l
	cp musics_list_on_current_disk
	jr nz,not_first_menu_item
;	ld hl,musics_list_on_current_disk_end
	jr navigation_menu_print_filename

not_first_menu_item
	ld bc,FILENAME_LENGTH
	and a	; reset carry
	sbc hl,bc

	ld a,(current_menu_item_idx)
	dec a
	ld (current_menu_item_idx),a

	jr navigation_menu_print_filename
; ---------------------------
.navigation_menu_down	; next music !
; ---------------------------
	ld hl,(current_menu_item)
	ld a,h
	cp musics_list_on_current_disk_end/#100
	jr nz,not_last_menu_item
	ld a,l
	cp musics_list_on_current_disk_end
	jr nz,not_last_menu_item

last_menu_item
	; xor a
	ld (current_menu_item_idx),a
	ld hl,musics_list_on_current_disk
	jr navigation_menu_print_filename

not_last_menu_item
	ld bc,FILENAME_LENGTH
	add hl,bc

	ld a,(hl)
	or a
	jr z,last_menu_item

	ld a,(current_menu_item_idx)
	inc a
	ld (current_menu_item_idx),a

navigation_menu_print_filename
	ld (current_menu_item),hl

	ld a,11		; menu_up_text
	call print_char
; ---------------------------
navigation_menu:
; ---------------------------
	call PRINT_LINE_BLANK

	call print_filename

	ld a,10
	jp print_char
; ---------------------------
print_filename:
; ---------------------------
	ld hl,(current_menu_item)

	ld a,(hl)
	or a
	jr z,print_filename_empty

current_menu_item_idx equ $+1
	ld a,0
	call print_number_direct

	ld a,"-"
	call print_char
	
	ld b,FILENAME_LENGTH-3
navigation_menu_print_filename_loop
	ld a,(hl)
	inc hl
	call print_char
	djnz navigation_menu_print_filename_loop

	ld a,"."
	call print_char

	ld b,3
navigation_menu_print_filename_extension_loop
	ld a,(hl)
	inc hl
	call print_char
	djnz navigation_menu_print_filename_extension_loop

print_filename_empty
	ret
; ---------------------------
draw_spectrum_analyzer:
; ---------------------------
draw_spectrum_analyzer_call_draw equ $+1
	call draw_freq_spectrum_analyzer_first_address

	ld a,03
	ld (draw_freq_pixel),a

	ld hl,(psg_read_data_reg0)
	ld a,(psg_read_data_reg8)

	call calculate_freq_spectrum_analyzer

	ld a,24
	ld (draw_freq_pixel),a

	ld hl,(psg_read_data_reg2)
	ld a,(psg_read_data_reg9)

	call calculate_freq_spectrum_analyzer

	ld a,192
	ld (draw_freq_pixel),a

	ld hl,(psg_read_data_reg4)
	ld a,(psg_read_data_rega)

calculate_freq_spectrum_analyzer
	cp #10
	jr nz,not_use_psg_preset
	dec a	; ld a,#0f

not_use_psg_preset
	and #0f
	ret z
	ld (psg_channel_volume),a

	ld b,0

	ld a,h
	cp MAX_FREQUENCY/#100+1
	jr nc,psg_send_data_reg0_overflow_correction
	cp MAX_FREQUENCY/#100
	jr z,psg_send_data_reg0_overflow
	or a
	jr nz,psg_send_data_reg0_not_zero
	ld a,l

psg_send_data_reg0_fd
	cp #fd
	jr nc,psg_send_data_reg0_not_zero

	or a
	jr z,find_frequency_end
	jr find_frequency

psg_send_data_reg0_overflow
	ld a,l
	cp MAX_FREQUENCY
	jr c,psg_send_data_reg0_fd

psg_send_data_reg0_overflow_correction
	ld h,MAX_FREQUENCY/#100		; #07
	ld a,l
	and MAX_FREQUENCY			; #77
	ld l,a

psg_send_data_reg0_not_zero
	srl h
	rr l
	inc b

	ld a,h
	or a
	jr nz,psg_send_data_reg0_not_zero
	ld a,l
	cp #fd
	jr nc,psg_send_data_reg0_not_zero

	or a
	jr z,find_frequency_end

find_frequency
	cp #0f
	jr c,find_frequency_end
	srl a
	inc b
	cp #0f
	jr c,find_frequency_end
	srl a
	inc b
	cp #0f
	jr c,find_frequency_end
	srl a
	inc b
	cp #0f
	jr c,find_frequency_end
	srl a
	inc b
	cp #0f
	jr c,find_frequency_end
frequency_zero
	xor a		; a = 0
find_frequency_end
	ld hl,frequence_table_analyzer_value
	ld c,a
	ld a,b		; a = octave
	ld b,#00
	ld d,b
	add hl,bc

	ld e,(hl)	; frequency value

	ld c,a		; c = octave
	sla c

draw_spectrum_analyzer_address equ $+1
	ld hl,draw_spectrum_analyzer_first_address_table
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a		; hl = draw_screen_address

	add hl,de	; add pos_x

psg_channel_volume equ $ +1
	ld a,0		; <> 0

	ld c,#0f

	cp c
;	jr c,draw_freq_column_carry_10
	jr z,draw_freq_column_carry_10
	dec a
draw_freq_column_carry_10
	ld d,a

	ld e,#38

draw_freq_pixel equ $+1
	ld b,#aa

draw_freq_column
	ld a,(hl)
	or b
	ld (hl),a

	ld a,h
	sub #08
	ld h,a
	and e	; #38
	cp e	; #38
	jr nz,draw_freq_column_continue
	ld a,l
	sub a,SCREEN_WIDTH
	ld l,a
	ld a,h
	add a,#40
	set 3,a
	ld h,a

draw_freq_column_continue
	dec c
	dec d
	jp p,draw_freq_column

erase_freq_column
	ld a,(hl)
	and b
	ret z
	xor b
	ld (hl),a

	ld a,h
	sub #08
	ld h,a
	and e	; #38
	cp e	; #38
	jr nz,erase_freq_column_continue
	ld a,l
	sub a,SCREEN_WIDTH
	ld l,a
	ld a,h
	add a,#40
	set 3,a
	ld h,a

erase_freq_column_continue
	dec c
	jp p,erase_freq_column

	ret
; ---------------------------
draw_freq_spectrum_analyzer_first_address
; ---------------------------
	ld hl,draw_spectrum_analyzer_first_address-#0800
	ld de,draw_spectrum_analyzer_first_address
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_first_address-#1000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_first_address-#1800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_first_address-#2000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_first_address-#2800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_first_address-#3000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_first_address-#3800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld hl,draw_spectrum_analyzer_first_address-screen_width+95
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld h,draw_spectrum_analyzer_first_address-screen_width-#0800/#100
	ld de,draw_spectrum_analyzer_first_address-screen_width
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_first_address-screen_width-#1000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_first_address-screen_width-#1800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_first_address-screen_width-#2000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_first_address-screen_width-#2800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_first_address-screen_width-#3000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_first_address-screen_width-#3800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld hl,draw_spectrum_analyzer_first_address-screen_width-screen_width+95
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ret
; ---------------------------
draw_freq_spectrum_analyzer_second_address
; ---------------------------
	ld hl,draw_spectrum_analyzer_second_address-#0800
	ld de,draw_spectrum_analyzer_second_address
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_second_address-#1000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_second_address-#1800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_second_address-#2000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_second_address-#2800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_second_address-#3000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_second_address-#3800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld hl,draw_spectrum_analyzer_second_address-screen_width+95
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld h,draw_spectrum_analyzer_second_address-screen_width-#0800/#100
	ld de,draw_spectrum_analyzer_second_address-screen_width
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_second_address-screen_width-#1000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_second_address-screen_width-#1800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_second_address-screen_width-#2000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_second_address-screen_width-#2800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_second_address-screen_width-#3000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_second_address-screen_width-#3800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld hl,draw_spectrum_analyzer_second_address-screen_width-screen_width+95
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ret
; ---------------------------
draw_freq_spectrum_analyzer_third_address
; ---------------------------
	ld hl,draw_spectrum_analyzer_third_address-#0800
	ld de,draw_spectrum_analyzer_third_address
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_third_address-#1000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_third_address-#1800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_third_address-#2000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_third_address-#2800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_third_address-#3000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_third_address-#3800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld hl,draw_spectrum_analyzer_third_address-screen_width+95
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld h,draw_spectrum_analyzer_third_address-screen_width-#0800/#100
	ld de,draw_spectrum_analyzer_third_address-screen_width
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_third_address-screen_width-#1000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_third_address-screen_width-#1800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_third_address-screen_width-#2000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_third_address-screen_width-#2800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_third_address-screen_width-#3000+95/#100
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld h,draw_spectrum_analyzer_third_address-screen_width-#3800/#100
	ld bc,96-1
	ldir
	ld a,(hl)
	ld (de),a
	ld d,h
	ld e,l
	ld hl,draw_spectrum_analyzer_third_address-screen_width-screen_width+95
	ld bc,96-1
	lddr
	ld a,(hl)
	ld (de),a
	ret
;-------------------------------------------------------------------------------
.interrupt
;-------------------------------------------------------------------------------
	read "../include/z80_interruption.asm"
	read "CPCMix_Menu_interruption.asm"
;-------------------------------------------------------------------------------
.print_text_CRx2
;-------------------------------------------------------------------------------
	call print_text_CR
;-------------------------------------------------------------------------------
.print_text_CR
;-------------------------------------------------------------------------------
	ex de,hl
	ld hl,text_cr
	call print_text
	ex de,hl
	ret
;-------------------------------------------------------------------------------
.print_intro_text
;-------------------------------------------------------------------------------
	ld a,(set_music_loop_test)
	or a
	jr z,text_music_repeat_notactive
	ld hl,text_music_repeat
	call print_text
text_music_repeat_notactive

	ld a,(force_currentmusic_duration_active)
	or a
	jr z,text_music_force_end_notactive
	ld hl,text_music_force_end
	call print_text
text_music_force_end_notactive

	ld hl,text_intro
	jp print_text
;-------------------------------------------------------------------------------
.l0000
; ---------------------------
call_play_music		equ $-l0000
; ---------------------------
	call l0000_bank_0

call_play_music_adr	equ $-l0000+1
	call 0		; call play_music_adr

music_end_address	equ $-l0000+1
	ld hl,0
	ld a,h
	or l
	jr z,l0000_not_exist_music_end
	ld a,(hl)
	db #18,l0000_bank_5-$+l0000-1 ; jr l0000_bank_5
l0000_not_exist_music_end
	dec a
	db #18,l0000_bank_5-$+l0000-1 ; jr l0000_bank_5
; ---------------------------
call_init_music		equ $-l0000
; ---------------------------
	call l0000_bank_0
call_init_music_adr	equ $-l0000+1
	call 0		; call init_music_adr
; ---------------------------
l0000_bank_5		equ $-l0000
; ---------------------------
	ld bc,#7fc5
	out (c),c
	ret
; ---------------------------
.l0000_bank_0		equ $-l0000
; ---------------------------
	push bc
	ld bc,#7fc0
	out (c),c
	pop bc
	ret
; ---------------------------
ldir_music		equ $-l0000
; ---------------------------
	call l0000_bank_0
	ldir
	db #18,l0000_bank_5-$+l0000-1 ; jr l0000_bank_5
; ---------------------------
lddr_music		equ $-l0000
; ---------------------------
	call l0000_bank_0
	lddr
	db #18,l0000_bank_5-$+l0000-1 ; jr l0000_bank_5
.l0000_end		equ $
;-------------------------------------------------------------------------------
; include
;-------------------------------------------------------------------------------
	read "../include/vbl_wait.asm"
;-------------------------------------------------------------------------------
; Print Manager
;-------------------------------------------------------------------------------
	read	"..\Common_Sources\Print_Manager_v1_2.asm"
	read	"..\Common_Sources\Print_Manager_font_v1_0.asm"
;-------------------------------------------------------------------------------
; CRTC Manager
;-------------------------------------------------------------------------------
	read "../include/crtc_set_regs.asm"
	read "CPCMix_Menu_CRTC_data.asm"
;-------------------------------------------------------------------------------
; Ay Sound Manager
;-------------------------------------------------------------------------------
	read	"../include/psg_sound_reset.asm"
;-------------------------------------------------------------------------------
; Keyboard Manager
;-------------------------------------------------------------------------------
	read	"../include/keyboard_manager.asm"
;-------------------------------------------------------------------------------
; Time Counter
;-------------------------------------------------------------------------------
	read	"..\Common_Sources\Time_Counter_v1_0.asm"
;-------------------------------------------------------------------------------
	IFDEF USE_COMPACTER

	read	"..\Common_Sources\Bitbuste_1_2_DeComp_v1_0.asm"

	ENDIF
;-------------------------------------------------------------------------------
; FDC Manager
;-------------------------------------------------------------------------------
;	WRITEFILE equ 1

	read	"../include/fdc.asm"
	read	"../include/fdc_loadwritefile.asm"
;-------------------------------------------------------------------------------
; Menu data
;-------------------------------------------------------------------------------
	read	"CPCMix_Menu_data.asm"
;-------------------------------------------------------------------------------
; End Of File
;-------------------------------------------------------------------------------
IFDEF DEBUG:list:EOF_LENGTH equ $-begin_menu:nolist:ENDIF
CLOSE
; ---------------------------
.end_player equ $
; ---------------------------
