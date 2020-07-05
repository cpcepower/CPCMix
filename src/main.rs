

use rand::seq::IteratorRandom;
use cpclib::sna::*;
use cpclib::xfer::*;
use std::env;
use std::thread;
use itertools::Itertools;
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
    assert!(args.len() ==  3 || args.len() == 4, "{} <m4ip> <command>
with <command> having such values:
 - random: play a random music
 - list: list all musics keys. Take an optional argument that corresponds to the author.
 - <key> plays the music with key <key>. If it does not exists, search a music of author <key>
    ", args[0]);
    let cpcip = &args[1];
    let cmd = &args[2];

    let mut rng = rand::thread_rng();
    let mix = cpcmix::db::CpcMix::new();
    
    //let music =  mix.random(&mut rng);
    let music = match cmd.as_ref() {
        "random" => Some(mix.random(&mut rng)),
        "list" => {

            let repr = mix.keys()
                .map(|k| (k, mix.music(k).unwrap()))
                .map(|(k, m) | (
                    k,
                    m.title().unwrap_or("".to_owned()), 
                    m.author().unwrap_or("".to_owned())
                ))
                .filter(|(k,t,a)| {
                    if args.len() == 3 {
                        true
                    }
                    else {
                        a.to_lowercase() == args[3].to_lowercase()
                    }
                })
                .map(|(k, t, a) | {
                    format!(
                        "{} - {} by {} ",
                        k,
                        t,
                        a
                    )
                })
                .join("\n");


            println!(
                "{}", 
                repr
            );
            return;
        }
        any => mix.music(any)
    };

    let music = match music {
        Some(music) => music,
        None => {
            eprintln!("Unable to find '{}'.", cmd);
            

            if let Some(music) = mix.keys()
                .map(|k| mix.music(k).unwrap())
                .filter(|m| {
                    m.author().unwrap_or("??".to_owned()).to_lowercase() == args[2]
                })
                .choose(&mut rng)
                {
                    music
                }
                else {
                    return;
                }
        }
    };

    println!("{} by {}", 
            music.title().unwrap_or("??".to_owned()),
            music.author().unwrap_or("??".to_owned())
    );

    let sna = music.sna();
    let xfer = CpcXfer::new(cpcip);
    xfer.upload_and_run_sna(&sna).unwrap();
}).join().unwrap();
}
