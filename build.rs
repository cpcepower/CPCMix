use std::env;
use std::fs::{File, read_dir};
use std::path::Path;
use std::io::{Write, BufWriter};
use itertools::Itertools;


const ADD_ALL:bool = true;

/// Generate the source code that contains the list of musics
fn main() {
    let out_dir = env::var_os("OUT_DIR").unwrap();
	let dest_path = Path::new(&out_dir).join("db.rs");

	let mut db_code = File::create(dest_path).unwrap();
	let mut db_code = BufWriter::new(db_code);



	let mut files_data = Vec::new();


	let MAX = 10;
	let mut i = 0;

	for dir in read_dir("BIN").unwrap() {
		let dir = dir.unwrap();

		for file in read_dir(dir.path()).unwrap() {
			let file = file.unwrap();

			files_data.push(
				(
					file.file_name().to_str().unwrap().split('.').next().unwrap().to_owned(),
					file.path().to_str().unwrap().replace('\\',"\\\\")
				)
			);

			i+=1;
			if i >= MAX && !ADD_ALL{
				break;
			}
		}
		if i >= MAX && !ADD_ALL{
			break;
		}
	}

	writeln!(&mut db_code, "
		use staticfilemap::*;

			#[derive(StaticFileMap)]
			#[names = \"{}\"]
			#[files = \"{}\"]
			pub struct StaticMap;
		",
		files_data.iter().map(|d| d.0.to_owned()).join(";"),
		files_data.iter().map(|d| d.1.to_owned()).join(";")
	).unwrap();

/*
	writeln!(&mut db_code, "
	use lazy_static::lazy_static;
	use std::collections::HashMap;
	
	
	
	lazy_static! {{
		static ref CPCMIX_DB: HashMap<&'static str, &'static [u8]> = {{
			let mut m = HashMap::<&'static str, &'static [u8]>::new();
	").unwrap();

	for dir in read_dir("BIN").unwrap() {
		let dir = dir.unwrap();

		for file in read_dir(dir.path()).unwrap() {
			let file = file.unwrap();

			writeln!(&mut db_code, "
				m.insert(
					\"{}\", 
					include_bytes!(\"../../../../../{}\")
				);", 
				file.file_name().to_str().unwrap().split('.').next().unwrap(),
				file.path().to_str().unwrap()
			).unwrap();
		}
	}


	writeln!(&mut db_code, "
			m
		}};
	}}
	").unwrap();

	*/

    println!("cargo:rerun-if-changed=build.rs");
}