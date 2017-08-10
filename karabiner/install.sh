#!/bin/sh
#
# symlinks the karabiner-elements.json file in this folder with where
# karabiner elements looks for its' config
#

ke_cfg="$HOME/.config/karabiner/karabiner.json"

rm -f "$ke_cfg"

ln -s "$DOTFILES/karabiner/ke-config.json" "$ke_cfg"