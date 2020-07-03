mod db;

use rand::seq::IteratorRandom;


fn main() {
    let mut rng = rand::thread_rng();
    let mix = db::CpcMix::new();
    
    for key in mix.keys() {
        println!("{}", key);
    }

    println!("{:?}", mix.random(&mut rng));
}
