# Neon Firefox Widevine Plugin Fix

This repository contains multiple shell scripts that can be used together to fix a Widevine plugin crash issue in Firefox on a Neon-based Linux distribution. \
Current Version of KDE Neon affected: 5.27 (fully up to date as of 4/22/23)

## Prerequisites
 - This assumes that you are running KDE Neon preloaded Firefox browser and are currently being affected by this bug
 - Alternative solutions to this problem would be to download an alternative version of Firefox, such as flatpack
 - If you are having this bug on a different distro and or version of Firefox, I do not know if this will fix your issue, you are welcome to try
 - git
 
## Bug this is fixing
 - Attempted encrypted video playback using widevine plugin results in widevine plug in crashing
 - Sources affected are (but not limited too) Netflix, Hulu, Udemy, and any other encrypted video source
 - Intermittently the problem will return on reboot. Steps 6 will solve this by reseting profile on boot.  Step 7 just allows you do run a profile reset manually.


## Installation

To get started, you can download the scripts by cloning this GitHub repository to your local machine using the following command:

```
git clone https://github.com/Kylar514/KDE-Neon-Firefox-widevine-fix
```

Once you have cloned the repository, navigate to the directory where the scripts are located.

## Running the scripts

To run scripts, follow these steps:

1. Make the scripts executable by running the following command:

   ```
   chmod +x neon_firefox_wv_fix.sh undo.sh autostart.sh profilereset.sh
   ```

2. Run the first script `neon_firefox_wv_fix.sh` by entering the following command:

   ```
   sudo ./neon_firefox_wv_fix.sh
   ```

   The script will create a backup of the existing Firefox AppArmor profile and add a new line to the profile to fix the Widevine plugin crash issue.

3. After running the first script, you can test Firefox to see if the issue has been fixed.

4. If you need to undo the changes made by the first script, you can run the second script `undo.sh` by entering the following command:

   ```
   sudo ./undo.sh
   ```

   The script will delete the updated Firefox AppArmor profile file and restore the backup file to its original name. It will also reset the AppArmor profile for Firefox.

5. After running the second script, you can test Firefox again to verify that the changes have been undone.

### If the problem returns

6. Run profilereset.sh on everystartup by running autostart.sh (Make sure to update script file with proper directory as noted in script)
```
./autostart.sh
```

7. If you don't want to add to boot process, and wish to reset profile manually, simply run profilereset.sh
```
./profielreset.sh
```
