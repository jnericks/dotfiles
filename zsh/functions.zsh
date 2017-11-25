#!/bin/sh
#

_config_proxy_default() {
    unset http_proxy https_proxy no_proxy HTTP_PROXY HTTPS_PROXY NO_PROXY
}

_reload_zsh_theme() {
    # shellcheck disable=SC1090
    . "$ZSH_THEME_FILE"
}

# logbook
lb() {
    page="$HOME/Dropbox/logbook/$(date '+%Y-%m-%d').md"
    if [ ! -f "$page" ]; then
        echo "# $(date '+%A, %B %d, %Y')" > "$page"
    fi
    e "$page"
}