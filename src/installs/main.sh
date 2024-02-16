#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • Installs\n\n"

./installs/xcode.sh
./installs/homebrew.sh
./installs/bash.sh

./git.sh
./browsers.sh
./compression_tools.sh

./misc.sh
./vscode.sh

./../npm.sh
./../vim.sh