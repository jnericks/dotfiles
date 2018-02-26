#!/bin/sh
#

_config_proxy_default() {
    unset http_proxy https_proxy no_proxy HTTP_PROXY HTTPS_PROXY NO_PROXY
}

_reload_zsh_theme() {
    # shellcheck disable=SC1090
    . "$ZSH_THEME_FILE"
}

# cli markdown
rmd() {
    file="$1"
    if [ ! -f "$file" ]; then
        echo "'$file' does not exist"
        return 1
    fi
    if [ ! "${file##*.}" = "md" ]; then
        echo "'$file' is not a markdown file"
        return 1
    fi
    pandoc -t html "$file" | lynx -stdin
}

# logbook
lb() {
    page="$HOME/Dropbox/logbook/$(date '+%Y-%m-%d').md"
    if [ ! -f "$page" ]; then
        echo "# $(date '+%A, %B %d, %Y')" > "$page"
    fi
    e "$page"
}