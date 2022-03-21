;-------------------------------------------------------------------------------
; CPCMix_Menu_data.asm - $VER 1.4
;-------------------------------------------------------------------------------
INDEX_MUSIC_ADR		equ 0
INDEX_MUSIC_REAL_ADR	equ INDEX_MUSIC_ADR+2
INDEX_INIT_MUSIC	equ INDEX_MUSIC_REAL_ADR+2
INDEX_REAL_INIT_MUSIC   equ INDEX_INIT_MUSIC+2
INDEX_FIRST_THEME	equ INDEX_REAL_INIT_MUSIC+2
INDEX_LAST_THEME	equ INDEX_FIRST_THEME+1
INDEX_PLAY_MUSIC	equ INDEX_LAST_THEME+1
INDEX_REAL_PLAY_MUSIC   equ INDEX_PLAY_MUSIC+2
INDEX_MUSIC_END		equ INDEX_REAL_PLAY_MUSIC+2
INDEX_STOP_MUSIC	equ INDEX_MUSIC_END+2
INDEX_MUSIC_INFO		equ INDEX_STOP_MUSIC+2
INDEX_MUSIC_DATE_RIP_DAY	equ INDEX_MUSIC_INFO+2
INDEX_MUSIC_DATE_RIP_MONTH	equ INDEX_MUSIC_DATE_RIP_DAY+1
INDEX_MUSIC_DATE_RIP_YEAR	equ INDEX_MUSIC_DATE_RIP_MONTH+1
INDEX_NEED_SYSTEM_VECTOR	equ INDEX_MUSIC_DATE_RIP_YEAR+2
INDEX_MEGACHUR		equ INDEX_NEED_SYSTEM_VECTOR+1
INDEX_EOF_LENGTH	equ INDEX_MEGACHUR+8
;-------------------------------------------------------------------------------
SCREEN_FIRST_ADDRESS	equ #c000
SCREEN_SECOND_ADDRESS	equ #8000
SCREEN_THIRD_ADDRESS	equ #0000

CRTC_SCREEN_ADDRESS		equ #3000
CRTC_TOTAL_NUMBER_OF_REGISTERS_TO_SET   equ 15

SCREEN_CRTC_2ND_ADDRESS	equ #2000
SCREEN_CRTC_3RD_ADDRESS	equ #0000
SCREEN_WIDTH		equ 96
; ---------------------------
FILE_TEMP_MEMORY_ADR_SAVE		equ #0400
MOVE_FUNCTION_MEMORY_ADR		equ #0000-16-4  ; length+call adr in stack
MINIMUM_PRESERVE_MEMORY_LENGTH		equ #40
MEMORY_BANK3				equ #C6
MUSIC_LOAD				equ #8000
MUSIC_HEADER_LENGTH                     equ 35
DIRECTORY_LAST_SECTOR_USER_DEFINE	equ #C5		; standard AMSDOS value
FORCE_CURRENTMUSIC_DURATION		equ #03		; three minutes
;-------------------------------------------------------------------------------
text_intro
	db 31,SCREEN_WIDTH-42/2,0
	db "- Megachur presents Amstrad CPC Mix v2.1 -"
	db 31,0,2,0
text_music_timer_count
	db 31,SCREEN_WIDTH-08,0,0
text_music_timer_count_first
	db 31,SCREEN_WIDTH-20,0,"Play Time : 00:00:00",0
text_spectrum_analyzer
	db 31,SCREEN_WIDTH-21/2,15,"- Spectrum Analyzer -",10,10,10,10,13
	db "`----O1----'`----O2----'`----O3----'`----O4----'`----O5----'`----O6----'`----O7----'`----O8----'",0
text_psg_values
	db 31,SCREEN_WIDTH-68/2,17,"PSG Registers (0,2,4,6,7,8,9,a) : ",0

music_insert_disk_text
	db 31,0,2,"Please insert a disk"
music_selected_disk_text
	db " in Drive "
music_insert_disk_drive_text
	db "A Head "
music_insert_disk_drive_head_text
	db "0...",13,0
loading_filename_text
	db 31,0,2,0
loading_text
	db 31,3+FILENAME_LENGTH+1,2," is loading...",0
loading_directory_text
	db 31,0,2,"Loading Directory...",0
text_not_musicfile
	db 31,0,2,"Not a valid music file...skip to next file !",0

	IFDEF USE_COMPACTER
decrunching_text
	db 31,0,2,"Decrunching File...",0
	ENDIF

text_music_real_adr
	db "   ADDR : ",0
text_init_music
	db " - INIT : ",0
text_play_music
	db " - PLAY : ",0
text_stop_music
	db " - STOP : ",0
text_music_end
	db " - MEND : ",0
text_music_length
	db " - LENGTH : ",0
text_music_rip
	db "Ripped by "
text_Megachur
	db "Megachur",0
text_music_date_rip
	db " the ",0
text_music_repeat
	db 31,SCREEN_WIDTH-1,2,"R",0
text_music_repeat_clear
	db 31,SCREEN_WIDTH-1,2," ",0
text_music_force_end
	db 31,SCREEN_WIDTH-3,2,"F",0
text_music_force_end_clear
	db 31,SCREEN_WIDTH-3,2," ",0
text_playing_theme
	db 31,0,13,"Playing Theme : ",0
text_locate_psg_values
	db 31,SCREEN_WIDTH-68/2+34,17,0
text_cr
	db 10,13,0
text_no_comment
	db "No comment",0
;-------------------------------------------------------------------------------
DRAW_SPECTRUM_ANALYZER_FIRST_ADDRESS	equ SCREEN_WIDTH*18+SCREEN_FIRST_ADDRESS+#3800
DRAW_SPECTRUM_ANALYZER_SECOND_ADDRESS	equ SCREEN_WIDTH*18+SCREEN_SECOND_ADDRESS+#3800
DRAW_SPECTRUM_ANALYZER_THIRD_ADDRESS	equ SCREEN_WIDTH*18+SCREEN_THIRD_ADDRESS+#3800
MAX_FREQUENCY				equ #0777
;-------------------------------------------------------------------------------
frequence_table_analyzer_value
;-------------------------------------------------------------------------------
	db 11	; HFreq_1d
	db 10	; HFreq_1c
	db 09	; HFreq_1a	; 1b
	db 09	; HFreq_1a
	db 08	; HFreq_19
	db 07	; HFreq_17	; 18
	db 07	; HFreq_17
	db 06	; HFreq_16
	db 05	; HFreq_15
	db 04	; HFreq_13	; 14
	db 04	; HFreq_13
	db 03	; HFreq_12
	db 02	; HFreq_11
	db 01	; HFreq_10
	db 00	; HFreq_0f
;-------------------------------------------------------------------------------
draw_spectrum_analyzer_first_address_table
;-------------------------------------------------------------------------------
	dw	12*07+draw_spectrum_analyzer_first_address
	dw	12*06+draw_spectrum_analyzer_first_address
	dw	12*05+draw_spectrum_analyzer_first_address
	dw	12*04+draw_spectrum_analyzer_first_address
	dw	12*03+draw_spectrum_analyzer_first_address
	dw	12*02+draw_spectrum_analyzer_first_address
	dw	12*01+draw_spectrum_analyzer_first_address
	dw	12*00+draw_spectrum_analyzer_first_address
;-------------------------------------------------------------------------------
draw_spectrum_analyzer_second_address_table
;-------------------------------------------------------------------------------
	dw	12*00+draw_spectrum_analyzer_second_address
	dw	12*01+draw_spectrum_analyzer_second_address
	dw	12*02+draw_spectrum_analyzer_second_address
	dw	12*03+draw_spectrum_analyzer_second_address
	dw	12*04+draw_spectrum_analyzer_second_address
	dw	12*05+draw_spectrum_analyzer_second_address
	dw	12*06+draw_spectrum_analyzer_second_address
	dw	12*07+draw_spectrum_analyzer_second_address
;-------------------------------------------------------------------------------
draw_spectrum_analyzer_third_address_table
;-------------------------------------------------------------------------------
	dw	12*00+draw_spectrum_analyzer_third_address
	dw	12*01+draw_spectrum_analyzer_third_address
	dw	12*02+draw_spectrum_analyzer_third_address
	dw	12*03+draw_spectrum_analyzer_third_address
	dw	12*04+draw_spectrum_analyzer_third_address
	dw	12*05+draw_spectrum_analyzer_third_address
	dw	12*06+draw_spectrum_analyzer_third_address
	dw	12*07+draw_spectrum_analyzer_third_address
;-------------------------------------------------------------------------------
MUSICS_LIST_LENGTH		equ ENTRY_NB_BLOCK*DIRECTORY_NB_SECTORS*FILENAME_LENGTH+1      ; 16*4*11
musics_list_on_current_disk
	ds MUSICS_LIST_LENGTH,0
MUSICS_LIST_ON_CURRENT_DISK_END equ $-FILENAME_LENGTH
	db 0	; end of list
