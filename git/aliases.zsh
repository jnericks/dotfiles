# Most aliases come from the oh-my-zsh git plugin
# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git/git.plugin.zsh
#
# These are additional aliases not already included from above
# or aliases that override the ones from above
#

alias gcob="git checkout -b"
alias gcmup="git checkout master && git pull --rebase --prune && git submodule update --init --recursive"
alias glp='git pull --prune'
