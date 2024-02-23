#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

brew_install "VLC" "vlc" "--cask"
brew_install "Spotify" "spotify" "--cask"
brew_install "nvm" "nvm"
brew_install "Yarn" "yarn"
brew_install "ShellCheck" "shellcheck"
brew_install "Notion Calendar" "notion-calendar" "--cask"
brew_install "Notion" "notion" "--cask"
brew_install "OpenSSH" "openssh"
brew_install "woff2" "woff2"
brew_install "Bat" "bat"
brew_install "Warp" "warp" "--cask"
brew_install "Discord" "discord" "--cask"
brew_install "Craft" "craft" "--cask"
brew_install "Raycast" "raycast" "--cask"
brew_install "Zoom" "zoom" "--cask"
brew_install "Commander One" "commander-one" "--cask"
brew_install "Dropbox" "dropbox" "--cask"
brew_install "Slack" "slack" "--cask"
brew_install "Docker" "docker" "--cask"
brew_install "Loom" "loom" "--cask"

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew_install "Coreutils" "coreutils"
