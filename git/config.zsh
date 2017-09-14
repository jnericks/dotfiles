#! /bin/sh
#

config_git_default() {
    git config --global --replace-all user.name "Jon Erickson"
    git config --global --replace-all user.email "jon@ericksn.com"

    reload_zsh_theme # prompt includes current git user email
}

config_git_nordstrom() {
    git config --global --replace-all user.name "$NORD_GIT_USER_NAME"
    git config --global --replace-all user.email "$NORD_GIT_USER_EMAIL"

    reload_zsh_theme # prompt includes current git user email
}