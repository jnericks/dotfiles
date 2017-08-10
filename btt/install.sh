#!/bin/sh
#
# symlinks the BetterTouchTool config file in this folder with where
# BetterTouchTool looks for its' config,
#
# any changes to the btt config should come from btt itself
#

btt_cfg="$HOME/Library/Preferences/com.hegenberg.BetterTouchTool.plist"

if [[ -f "$btt_cfg" ]]; then
    rm -f "$btt_cfg"
fi

ln -s "$DOTFILES/btt/com.hegenberg.BetterTouchTool.plist" "$btt_cfg"