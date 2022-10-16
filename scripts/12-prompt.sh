echo "Setting up prompt"
curl -sS https://starship.rs/install.sh | sh -s -- --force
cp files/starship.toml ~/.config/starship.toml
