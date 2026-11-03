#!/usr/bin/env bash
# Masmas Development System - Unix/macOS Installer for Google Antigravity
set -e

echo "=========================================================="
echo "   Installing MASMAS DEVELOPMENT SYSTEM into Antigravity   "
echo "=========================================================="

DEST_SKILLS="$HOME/.gemini/config/skills"
DEST_RULES="$HOME/.gemini/config/rules"

mkdir -p "$DEST_SKILLS" "$DEST_RULES"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -d "$SCRIPT_DIR/skills" ]; then
    cp -r "$SCRIPT_DIR/skills/"* "$DEST_SKILLS/"
    echo "[OK] Skills installed to $DEST_SKILLS"
fi

if [ -d "$SCRIPT_DIR/rules" ]; then
    cp -r "$SCRIPT_DIR/rules/"* "$DEST_RULES/"
    echo "[OK] Rules installed to $DEST_RULES"
fi

echo ""
echo "Installation Successful!"
echo "You can now use /skilsmashudi in Google Antigravity."
echo "=========================================================="
