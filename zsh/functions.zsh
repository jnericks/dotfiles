#!/bin/sh
#

config_proxy_default() {
    unset http_proxy https_proxy no_proxy HTTP_PROXY HTTPS_PROXY NO_PROXY
}

reload_zsh_theme() {
    # shellcheck disable=SC1090
    . "$ZSH_THEME_FILE"
}