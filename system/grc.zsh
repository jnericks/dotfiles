#!/bin/bash
#

# GRC colorizes nifty unix tools all over the place
if grc &>/dev/null
then
  # shellcheck source=/usr/local/etc/grc.bashrc
  . "$(brew --prefix)/etc/grc.bashrc"
fi
