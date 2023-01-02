extern crate dht22_pi;

use dht22_pi::read;

pub fn main() {    
    match read(4) {
        Ok(result) => {
            println!("Temperature: {}°C", result.temperature);
            println!("Humidity: {}%", result.humidity);
        },
        Err(error) => println!("Error: {:?}", error)
    }
}

