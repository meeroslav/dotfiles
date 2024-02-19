#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

main() {

    print_in_purple "\n   Bash\n\n"

    brew_install "Bash" "bash"

    # ensure zsh is the default shell
    if [ "${SHELL##/*/}" != "zsh" ]; then
        chsh -s /bin/zsh || exit 1
    fi
}

main