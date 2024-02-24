#!/bin/bash

# Install Discord
sudo pacman -S discord --needed --noconfirm

# Run script to patch Discord 
echo "Running script to patch Discord..."
sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"

echo "Discord installation and patching completed."
