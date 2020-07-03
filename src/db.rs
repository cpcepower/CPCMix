use rand::seq::IteratorRandom;
use rand::rngs::ThreadRng;

include!(concat!(env!("OUT_DIR"), "/", "db.rs")); 

#[derive(Debug)]
pub struct Music {
	name: String,
	data: &'static [u8]
}

pub struct CpcMix {
}

impl CpcMix {
	pub fn new() -> Self {
		CpcMix{}
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