extern crate dht22_pi;

use dht22_pi::read;

pub fn main() {    
    if let Ok(result) = read(4) {
        println!("Temperature: {}°C", result.temperature);
        println!("Humidity: {}%", result.humidity);        
    } else {
        println!("Error fetching data");
    }
}

