#!/bin/bash

echo "🔄 Updating package list..."
sudo apt update -y

echo "⬇️ Installing required packages (gnome-shell-extensions + gnome-shell-extension-prefs)..."
sudo apt install -y gnome-shell-extensions gnome-shell-extension-prefs

echo "⚙️ Enabling Desktop Icons NG (DING) extension..."
gnome-extensions enable ding@rastersoft.com || {
    echo "❌ Failed to enable DING. You may need to log out and log in once, then re-run this script."
    exit 1
}

echo "📂 Copying add_app_to_desktop.sh script to ~/.local/bin/..."
mkdir -p ~/.local/bin
cp add_shortcut.sh ~/.local/bin/
chmod +x ~/.local/bin/add_shortcut.sh

echo "✅ Installation complete!"
echo "👉 To use, run: add_shortcut.sh"

