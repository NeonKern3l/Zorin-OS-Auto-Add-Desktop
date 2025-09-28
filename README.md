# Zorin-OS-Auto-Add-Desktop
Simple helper to add GUI app shortcuts to your Desktop on Zorin OS (GNOME). Includes short installer and an interactive script for beginners.

# What is this script for?
This project provides a simple script that makes it easier for beginners on Zorin OS (GNOME desktop) to place application shortcuts directly on the Desktop.

Normally, installed apps in Linux create .desktop launcher files under /usr/share/applications/ or ~/.local/share/applications/, but these don’t automatically show up on the Desktop. Beginners who switch from Windows often expect “right-click → Create Shortcut” to work, but that feature is missing by default.

This script solves that by:

Asking the user for the name of an installed application (e.g., “Brave”, “VS Code”, “NetBeans”).

Searching for the matching .desktop launcher file.

Copying it to the user’s Desktop.

Setting the correct permissions so it becomes a clickable app shortcut.

This allows anyone to quickly add desktop icons for their favorite apps without needing to manually dig into hidden system folders.

# Quick start (one-by-one commands)

> **Prerequisite:** Zorin OS (Ubuntu-based) and sudo access.

1. Update packages
   
   -> ``` sudo apt update -y ```
   
3. Clone my repo

   -> ``` git clone https://github.com/NeonKern3l/Zorin-OS-Auto-Add-Desktop.git ```

   -> ```cd Zorin-OS-Auto-Add-Desktop```
   
5. Run installation
   
   -> ``` ./install.sh ```
   
6. Restart GNOME shell:
   
   If you are on X11: press Alt + F2, type r then Enter.
   If you are on Wayland (Zorin default): log out and log back in.
   Open the Extensions app (search “Extensions” in menu) and enable “Desktop Icons NG (DING)”.
   
7. Give permission
   
   -> ``` chmod +x install.sh ```

   -> ``` chmod +x uninstall.sh ```

   -> ``` chmod +x add_shortcut.sh ``` 
   
   -> ``` ./install.sh ```
   
9. Then run
    
    -> ``` add_shortcut.sh``` 
    
10. When success, press the application and find allow launching.
