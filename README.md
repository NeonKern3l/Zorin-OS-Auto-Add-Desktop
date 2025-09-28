# Zorin-OS-Auto-Add-Desktop
Simple helper to add GUI app shortcuts to your Desktop on Zorin OS (GNOME). Includes short installer and an interactive script for beginners.

## Quick start (one-by-one commands)

> **Prerequisite:** Zorin OS (Ubuntu-based) and sudo access.

1. Update packages
   -> sudo apt update -y
2. Install GNOME Extensions app and Desktop Icons NG (DING)
   -> sudo apt install -y gnome-shell-extensions gnome-shell-extension-prefs gnome-shell-extension-desktop-icons-ng
3. Restart GNOME shell:
If you are on X11: press Alt + F2, type r then Enter.
If you are on Wayland (Zorin default): log out and log back in.
Open the Extensions app (search “Extensions” in menu) and enable “Desktop Icons NG (DING)”.
Install helper script to Desktop (from this repo folder):
4. Give permission
   -> chmod +x install.sh
   ./install.sh
5. When success, press the application and find allow launching
