#!/bin/bash

# Define the path to the AppArmor profile for Firefox
PROFILE_PATH="/etc/apparmor.d"

# Delete the existing usr.bin.firefox file
sudo rm "$PROFILE_PATH/usr.bin.firefox"

# Rename the backup file to usr.bin.firefox
sudo mv "$PROFILE_PATH/usr.bin.firefox.bak" "$PROFILE_PATH/usr.bin.firefox"

# Reset the AppArmor profile for Firefox
sudo apparmor_parser -r "$PROFILE_PATH/usr.bin.firefox"

echo "Profile file restored and profile reset"
