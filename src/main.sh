#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# ----------------------------------------------------------------------
# | Main                                                               |
# ----------------------------------------------------------------------

main() {
    # Ensure that the following actions
    # are made relative to this file's path.

    print_in_purple "\nMachine setup\n\n"

    cd "$(dirname "${BASH_SOURCE[0]}")" \
        || exit 1

    if [ -x "utils.sh" ]; then
        . "utils.sh" || exit 1
        print_in_purple "\n • Utils loaded\n\n"
    fi

    ask_for_sudo

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    ./installs/main.sh

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    ./preferences/main.sh

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    ./restart.sh
}

main "$@"