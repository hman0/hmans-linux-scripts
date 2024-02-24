#!/bin/bash

# Install Flatpak
echo "Installing Flatpak..."
sudo pacman -S flatpak --needed --noconfirm

# Add Flathub repository
echo "Adding Flathub repository..."
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Spotify via Flatpak
echo "Installing Spotify via Flatpak..."
flatpak install flathub com.spotify.Client -y

# Run script to patch Spotify
echo "Running script to patch Spotify..."
curl -sSL https://raw.githubusercontent.com/SpotX-Official/SpotX-Bash/main/spotx.sh | bash

echo "Spotify installation and patching completed."
