# Zorin-OS-Auto-Add-Desktop
Simple helper to add GUI app shortcuts to your Desktop on Zorin OS (GNOME). Includes short installer and an interactive script for beginners.

# Quick start (one-by-one commands)

> **Prerequisite:** Zorin OS (Ubuntu-based) and sudo access.

1. Update packages
   
   -> ``` sudo apt update -y ```
   
3. Clone my repo

   -> ``` git clone https://github.com/NeonKern3l/Zorin-OS-Auto-Add-Desktop.git ```

   -> ```cd zorin-desktop-shortcuts ```
   
5. Run installation
   
   -> ``` ./install.sh ```
   
6. Restart GNOME shell:
   
   If you are on X11: press Alt + F2, type r then Enter.
   If you are on Wayland (Zorin default): log out and log back in.
   Open the Extensions app (search “Extensions” in menu) and enable “Desktop Icons NG (DING)”.
   
7. Give permission
   
   -> ``` chmod +x install.sh ```
   ``` ./install.sh ```
   
8. Then run
    
    -> ``` add_shortcut.sh``` 
    
9. When success, press the application and find allow launching.
