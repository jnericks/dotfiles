#!/bin/sh
#
# symlinks the karabiner-elements.json file in this folder with where
# karabiner elements looks for its' config
#

btt_cfg="$HOME/Library/Preferences/com.hegenberg.BetterTouchTool.plist"

if [[ -f "$btt_cfg" ]]; then
    rm -f "$btt_cfg"
fi

ln -s "$DOTFILES/btt/com.hegenberg.BetterTouchTool.plist" "$btt_cfg"