#!/bin/bash

# Path to the Kitty config file
kitty_config_path="$HOME/.config/kitty/kitty.conf"

# New content for Kitty config file
new_content=$(cat <<EOF
# Kitty Config File

# Set background color
foreground #78748e

color0 #6f52ff   
color1 #6f52ff   
color2 #6f52ff   
color3 #6f52ff  
color4 #6f52ff  
color5 #6f52ff  
color6 #6f52ff   
color7 #6f52ff  
color8 #6f52ff  
color9 #6f52ff   
color10 #6f52ff 
color11 #6f52ff  
color12 #6f52ff  
color13 #6f52ff 
color14 #6f52ff 
color15 #ffffff 

background_opacity 0.9

# Set font
font_family FiraCode

confirm_os_window_close -0
EOF
)

# Write new content to the Kitty config file
echo "$new_content" > "$kitty_config_path"

echo "Kitty config file successfully updated."
