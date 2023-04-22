#!/bin/bash

# Define the path to the AppArmor profile for Firefox
PROFILE_PATH="/etc/apparmor.d/usr.bin.firefox"

# Define the backup path for the AppArmor profile for Firefox
BACKUP_PATH="/etc/apparmor.d/usr.bin.firefox.bak"

# Define the line to add to the profile
NEW_LINE="owner @{HOME}/.mozilla/**/gmp-widevinecdm/*/lib*so m,"

# Define the comment for the line to add to the profile
COMMENT="# Widevine crash fix"

# Define a function to create a backup of the profile file
create_backup() {
  # Check if the backup file already exists
  if [ -e "$BACKUP_PATH" ]; then
    echo "Backup file already exists"
  else
    # Create a backup of the profile file
    sudo cp "$PROFILE_PATH" "$BACKUP_PATH"
    echo "Backup file created at $BACKUP_PATH"
  fi
}

# Check if the profile file exists
if [ -e "$PROFILE_PATH" ]; then
  # Create a backup of the profile file
  create_backup

  # Check if the line already exists in the profile
  if grep -qF "$NEW_LINE" "$PROFILE_PATH"; then
    echo "Line already exists in profile"
  else
    # Add the line to the profile at line 37
    sudo sed -i '37i\'"  $COMMENT"'\n'"  $NEW_LINE"'' "$PROFILE_PATH"
    echo "Line added to profile"

    # Reload the AppArmor profile only if changes were made
    sudo apparmor_parser -C -R "$PROFILE_PATH"
    CHANGES_MADE=$?
    if [ $CHANGES_MADE -eq 0 ]; then
      echo "Profile reloaded"
    else
      echo "No changes made to profile"
    fi
  fi
else
  echo "Profile file does not exist"
fi
