#!/bin/bash

# Path to the sudoers file
sudoers_path="/etc/sudoers"

# New content for sudoers file
new_content=$(cat <<EOF
root    ALL=(ALL:ALL) ALL
%wheel   ALL=(ALL:ALL) NOPASSWD: ALL
EOF
)

# Write new content to a temporary file
echo "$new_content" > "$sudoers_path.tmp"

# Replace the sudoers file with the temporary file
sudo mv "$sudoers_path.tmp" "$sudoers_path"

echo "sudoers file successfully replaced."
