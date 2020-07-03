

use rand::seq::IteratorRandom;
use cpclib::sna::*;
use cpclib::xfer::*;
use std::env;
use std::thread;

use cpcmix;


/// Dummy player
/// M4 must have a directory /tmp
/// cpcmix <cpcip> <command>
/// with <command> having such values:
/// - random: play a random music
/// - list: list all musics keys
/// - <key> plays the music with key <key>
fn main() {
    thread::spawn(|| {
    let args: Vec<String> = env::args().collect();
    assert_eq!(args.len(), 3, "{} <m4ip> <music>", args[0]);
    let cpcip = &args[1];
    let cmd = &args[2];

    let mut rng = rand::thread_rng();
    let mix = cpcmix::db::CpcMix::new();
    
    //let music =  mix.random(&mut rng);
    let music = match cmd.as_ref() {
        "random" => mix.random(&mut rng),
        "list" => {
            println!(
                "{} musics.\n{:?}", 
                mix.keys().collect::<Vec<_>>().len(),
                mix.keys().collect::<Vec<_>>()
            );
            return;
            unreachable!()
        }
        any => mix.music(any).unwrap()
    };

    let sna = music.sna();
    let xfer = CpcXfer::new(cpcip);
    xfer.upload_and_run_sna(&sna).unwrap();
}).join().unwrap();
}
