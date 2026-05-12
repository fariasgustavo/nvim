#!/bin/bash

# Import iTerm2 preferences from this repo
# Run this script to apply the shared iTerm2 configuration

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLIST_FILE="$SCRIPT_DIR/com.googlecode.iterm2.plist"

if [ ! -f "$PLIST_FILE" ]; then
    echo "Error: iTerm2 plist file not found at $PLIST_FILE"
    exit 1
fi

echo "Importing iTerm2 preferences..."
defaults import com.googlecode.iterm2 "$PLIST_FILE"

echo "iTerm2 preferences imported successfully!"
echo "Please restart iTerm2 for changes to take effect."
