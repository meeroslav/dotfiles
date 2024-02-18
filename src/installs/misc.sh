#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

brew_install "VLC" "vlc" "--cask"
brew_install "Spotify" "spotify" "--cask"
brew_install "Yarn" "yarn"
brew_install "ShellCheck" "shellcheck"
brew_install "Obsidian" "obsidian" "--cask"
brew_install "Notion Calendar" "notion-calendar" "--cask"
brew_install "OpenSSH" "openssh"
brew_install "woff2" "woff2"
brew_install "Bat" "bat"
brew_install "Warp" "warp" "--cask"
brew_install "Discord" "discord" "--cask"
brew_install "Craft" "craft" "--cask"
brew_install "Commander One" "commander-one" "--cask"

BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew_install "Coreutils" "coreutils"
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
