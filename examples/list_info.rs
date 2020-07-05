use cpcmix::*;

fn main() {
    let mix = db::CpcMix::new();

	for key in mix.keys() {
		let music = mix.music(key).unwrap();
		if let Ok(info) = music.info() {
			println!("{}", info);
		}
	}
}