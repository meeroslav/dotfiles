#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

main() {

    print_in_purple "\n   Bash\n\n"

    brew_install "Bash" "bash"
}

main