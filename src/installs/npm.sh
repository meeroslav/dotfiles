#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Set NPM to v20\n\n"

nvm use 20

print_in_purple "\n   Add PNPM\n\n"

npm install -g @pnpm/exe