#! /bin/sh
#
# Uses git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).

brew_prefix="$(brew --prefix)"
completion="$brew_prefix/share/zsh/site-functions/_git"

if test -f "$completion"; then
  # shellcheck source=/usr/local/share/zsh/site-functions/_git
  . "$completion"
fi
