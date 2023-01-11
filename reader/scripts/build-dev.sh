echo "Building executable"
cargo build

echo "Setup required permissions"
sudo setcap 'cap_sys_nice=eip' ./target/debug/raspi-climate
