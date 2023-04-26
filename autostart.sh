#!/bin/bash

# Add the script to autostart programs
cat <<EOF > ~/.config/autostart/profilereset.desktop
[Desktop Entry]
Type=Application
Exec=/path/to/profilereset.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Profile Reset
Name=Profile Reset
Comment[en_US]=Run Firefox Profile Reset at startup
Comment=Run Firefox Profile Reset at startup
EOF

# Replace "/path/to/profilereset.sh" with the actual path to your script.

# Make the script executable
chmod +x /path/to/profilereset.sh

# Inform the user that the script has been added to autostart programs
echo "The Profile Reset script has been added to autostart programs."
