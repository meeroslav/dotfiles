#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   ZSH\n\n"

if [ "${SHELL##/*/}" != "zsh" ]; then
    chsh -s /bin/zsh || exit 1
fi

execute \
    "sudo curl -fsSL https://raw.githubusercontent.com/JGroxz/presto-prezto/main/presto-prezto.sh | bash -s -- --font" \
    "Install Zsh and Prezto"