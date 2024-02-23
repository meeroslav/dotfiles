#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   ZSH\n\n"

if [ "${SHELL##/*/}" != "zsh" ]; then
    chsh -s /bin/zsh || exit 1
fi

ask_for_sudo

execute \
    "sudo curl -fsSL https://raw.githubusercontent.com/JGroxz/presto-prezto/main/presto-prezto.sh | bash -s -- --font" \
    "Install Zsh and Prezto"

execute "cp -rf ./.zshrc ~/.zshrc" \
    "Copy .zshrc to home directory"

execute "cp -rf ./.p10k.zsh ~/.p10k.zsh" \
    "Copy .p10k config to home directory"