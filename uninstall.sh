#!/bin/bash

echo "🗑️ Removing add_app_to_desktop.sh from ~/.local/bin..."
rm -f ~/.local/bin/add_shortcut.sh

echo "⚙️ Disabling Desktop Icons NG (DING) extension..."
gnome-extensions disable ding@rastersoft.com || {
    echo "ℹ️ Could not disable DING (maybe it was never enabled)."
}

echo "✅ Uninstall complete!"

