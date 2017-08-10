#!/bin/sh
#

# shellcheck source=/usr/local/opt/nvm/nvm.sh
. "$(brew --prefix nvm)/nvm.sh"
nvm install v6.10.1

if test ! "$(which spoof)"; then
  sudo npm install spoof -g
fi

if test ! "$(which mb)"; then
  sudo npm install mountebank@1.9.0 -g
fi
