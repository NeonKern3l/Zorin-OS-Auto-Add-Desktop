# Zorin-OS-Auto-Add-Desktop
Simple helper to add GUI app shortcuts to your Desktop on Zorin OS (GNOME). Includes short installer and an interactive script for beginners.

📂 Repo Structure
zorin-os-auto-add-desktop/
│
├── install.sh
├── uninstall.sh
├── add_shortcut.sh
├── README.md
└── LICENSE

# Quick start (one-by-one commands)

> **Prerequisite:** Zorin OS (Ubuntu-based) and sudo access.

1. Update packages
   -> sudo apt update -y
2. Clone my repo
   -> git clone https://github.com/<your-username>/zorin-desktop-shortcuts.git
   cd zorin-desktop-shortcuts
3. Run installation
   -> ./install.sh
5. Restart GNOME shell:
   If you are on X11: press Alt + F2, type r then Enter.
   If you are on Wayland (Zorin default): log out and log back in.
   Open the Extensions app (search “Extensions” in menu) and enable “Desktop Icons NG (DING)”.
6. Give permission
   -> chmod +x install.sh
   ./install.sh
7. Then run
   -> add_shortcut.sh
9. When success, press the application and find allow launching.
