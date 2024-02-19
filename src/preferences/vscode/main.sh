#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   VS Code\n\n"

execute "cp -rf ./settings.json ~/Library/Application\ Support/Code/User/settings.json" \
    "Copy settings.json to VS Code"