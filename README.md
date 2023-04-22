# Neon Firefox Widevine Plugin Fix

This repository contains two shell scripts that can be used together to fix a Widevine plugin crash issue in Firefox on a Neon-based Linux distribution.

The first script `neon_firefox_wv_fix.sh` adds a line to the AppArmor profile for Firefox to fix the Widevine plugin crash issue. The second script `undo.sh` restores the AppArmor profile to its original state by deleting the updated profile file and renaming the backup file.

## Prerequisites

Before you can run these scripts, you will need to make sure that you have the following software installed on your local machine:

- Bash
- AppArmor
- Firefox
- Git

## Installation

To get started, you can download the scripts by cloning this GitHub repository to your local machine using the following command:

```
git clone https://github.com/your-username/your-repo.git
```

Once you have cloned the repository, navigate to the directory where the scripts are located.

## Running the scripts

To run both scripts together, follow these steps:

1. Make the scripts executable by running the following command:

   ```
   chmod +x neon_firefox_wv_fix.sh undo.sh
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

I hope this helps you to run these two scripts together on your local machine. Let me know if you have any further questions or concerns.
