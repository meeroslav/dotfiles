#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Rust\n\n"

execute \
    "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh" \
    "Install Rust"