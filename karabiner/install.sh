#!/bin/sh
#
# symlinks the settings.xml file in this folder with where karabiner looks for the settings file
#

KARABINER_FILE="$HOME/Library/Application Support/Karabiner/private.xml"
KARABINER_ELEMENTS_FILE="$HOME/.config/karabiner/karabiner.json"

if [[ -f "$KARABINER_FILE" ]]; then
    rm -f "$KARABINER_FILE"
fi

if [[ -f "$KARABINER_ELEMENTS_FILE" ]]; then
    rm -f "$KARABINER_ELEMENTS_FILE"
fi

ln -s "$DOTFILES/karabiner/karabiner-config.xml" "$KARABINER_FILE"
ln -s "$DOTFILES/karabiner/karabiner-elements-config.json" "$KARABINER_ELEMENTS_FILE"