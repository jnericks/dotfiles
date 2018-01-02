#!/bin/sh
#

# shellcheck source=/usr/local/opt/nvm/nvm.sh
. "$(brew --prefix nvm)/nvm.sh"

nvm use --delete-prefix v6.10.1 --silent
