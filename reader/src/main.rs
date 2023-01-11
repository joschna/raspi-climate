extern crate dht22_pi;

use dht22_pi::read;

pub fn main() {
    let gpio_pin = std::env::args().nth(1).expect("no gpio pin specified");

    match read(gpio_pin.parse::<u8>().unwrap()) {
        Ok(result) => {
            println!("Temperature: {}°C", result.temperature);
            println!("Humidity: {}%", result.humidity);
        },
        Err(error) => println!("Error: {:?}", error)
    }
}
