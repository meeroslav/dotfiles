#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

main() {

    print_in_purple "\n   Bash\n\n"

    print_in_red "But it's not implemented yet..."

    brew_install "Bash" "bash"
}

main