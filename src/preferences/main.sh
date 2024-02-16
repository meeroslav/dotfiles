#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Close any open `System Preferences` panes in order to
# avoid overriding the preferences that are being changed.

./close_system_preferences_panes.applescript

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./app_store.sh
./chrome.sh
./dock.sh
./finder.sh
./firefox.sh
./keyboard.sh
./region.sh
./maps.sh
./photos.sh
./safari.sh
./security_and_privacy.sh
./terminal.sh
./textedit.sh
./trackpad.sh
./ui_and_ux.sh
./vscode/main.sh
./zsh.sh