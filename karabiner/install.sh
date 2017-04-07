#!/bin/sh
#
# symlinks the settings.xml file in this folder with where karabiner looks for the settings file
#

KARABINER_FILE="$HOME/Library/Application Support/Karabiner/private.xml"

if [[ -f "$KARABINER_FILE" ]]; then
    rm -f "$KARABINER_FILE"
fi

ln -s "$DOTFILES/karabiner/settings.xml" "$KARABINER_FILE"