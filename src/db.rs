use rand::seq::IteratorRandom;
use rand::rngs::ThreadRng;
use itertools::Itertools;

include!(concat!(env!("OUT_DIR"), "/", "db.rs")); 

/// Header definition
/// LET MUSIC_HEADER_LENGTH = 35
/// 
/// MUSIC_BEGIN	equ music_adr-MUSIC_HEADER_LENGTH
/// 
/// LIST
/// 	org MUSIC_BEGIN
/// NOLIST
/// 
/// 	dw MUSIC_BEGIN
/// 	dw music_adr
/// 	dw init_music
/// 	dw MUSIC_INIT
/// 	db FIRST_THEME
/// 	db LAST_THEME
/// 	dw play_music
/// 	dw MUSIC_PLAY
/// 	dw music_end
/// 	dw stop_music
/// 	dw music_info
/// 	db MUSIC_DATE_RIP_DAY
/// 	db MUSIC_DATE_RIP_MONTH
/// LET MUSIC_DATE_RIP_CENTURY = MUSIC_DATE_RIP_YEAR/100
/// LET MUSIC_DATE_RIP_CALC = MUSIC_DATE_RIP_CENTURY*100
/// 	db MUSIC_DATE_RIP_CENTURY
/// 	db MUSIC_DATE_RIP_YEAR-MUSIC_DATE_RIP_CALC
/// 	db NEED_SYSTEM_VECTOR
/// 	db "Megachur"
/// 	dw EOF_LENGTH


#[derive(Debug)]
pub struct MusicHeader {
	pub music_begin: u16,
	pub music_adr: u16,
	pub init_music: u16,
	/// Initialization code (no idea why it can be different than previous value)
	pub music_init: u16,
	pub first_theme: u8,
	pub last_theme: u8,
	pub play_music: u16,
	pub music_play: u16,
	pub music_end: u16,
	pub stop_music: u16,
	pub music_info: u16,
	pub music_date_rip_day: u8,
	pub music_date_rip_month: u8,
	pub music_date_rip_century: u8,
	pub music_date_rip_year: u8,
	pub need_system: u8,
	pub eof_length: u16
}


impl MusicHeader {
	pub fn len() -> usize {
		35 as usize
	}

	pub fn need_system(&self)  -> bool {
		self.need_system != 0
	}

	pub fn relative_music_info(&self) -> usize {
		(self.music_info - self.music_begin) as usize
	}

	pub fn load_adress(&self) -> u16 {
		self.music_begin
	}

	pub fn init_call_address(&self) -> u16 {
		self.init_music
	}

	pub fn play_call_address(&self) -> u16 {
		self.music_play
	}

}

impl From<&[u8]> for MusicHeader {
	fn from(stream: &[u8]) -> Self {

		assert_eq!(stream.len(), Self::len());
		assert_eq!(stream[25] as char, 'M');
		assert_eq!(stream[26] as char, 'e');
		assert_eq!(stream[27] as char, 'g');
		assert_eq!(stream[28] as char, 'a');
		assert_eq!(stream[29] as char, 'c');
		assert_eq!(stream[30] as char, 'h');
		assert_eq!(stream[31] as char, 'u');
		assert_eq!(stream[32] as char, 'r');

		let byte = |idx: usize| {
			stream[idx]
		};

		let word = |idx: usize| {
			stream[idx] as u16 + 256*(stream[idx+1] as u16)
		};

		Self {
			music_begin: word(0),
			music_adr: word(2),
			init_music: word(4),
			music_init: word(6),
			first_theme: byte(8),
			last_theme: byte(9),
			play_music: word(10),
			music_play: word(12),
			music_end: word(14),
			stop_music: word(16),
			music_info: word(18),
			music_date_rip_day: byte(20),
			music_date_rip_month: byte(21),
			music_date_rip_century: byte(22),
			music_date_rip_year: byte(23),
			need_system: byte(24),
			eof_length: word(33),

		}
	}
}

#[derive(Debug)]
pub struct Music {
	name: String,
	data: &'static [u8]
}


impl Music {


	pub fn header(&self) -> MusicHeader {
		MusicHeader::from(&self.data[..MusicHeader::len()])
	}

	pub fn info(&self) -> String {
		let header = self.header();
		let start = &self.data[header.relative_music_info()..];

		let mut info = String::new();
		let mut first = true;
		for chr in start.iter() {
			if *chr == 0 {
				if first {
					first = false;
					info += "\n";
				}
				else {
					break;
				}
			}
			else {
				info += &(*chr as char).to_string();
			}
		}

		info
	}

	pub fn content(&self) -> &[u8] {
		&self.data
	}

}


pub struct CpcMix {
}

impl CpcMix {
	pub fn new() -> Self {
		Self{}
	}

	pub fn keys(&self) -> impl Iterator<Item=&'static &'static str> {
		StaticMap::keys().iter()
	}

	pub fn music(&self, key: &str) -> Option<Music> {
		StaticMap::get(key)
			.and_then(|data| Some(Music{name: key.to_owned(), data}))
	}

	pub fn random(&self, rng: &mut ThreadRng) -> Music {
		self.music(self.keys().choose(rng).unwrap()).unwrap()
	}
}