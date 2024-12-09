# File: tmux-quickurl.tmux
#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DEFAULT_KEY='u'

get_tmux_option() {
    local option=$1
    local default_value=$2
    local option_value=$(tmux show-option -gqv "$option")
    if [ -z "$option_value" ]; then
        echo "$default_value"
    else
        echo "$option_value"
    fi
}

set_url_key_binding() {
    local key=$(get_tmux_option "@quickurl-key" "$DEFAULT_KEY")
    tmux bind-key "$key" run-shell "$CURRENT_DIR/scripts/quickurl"
}

main() {
    set_url_key_binding
}

main
