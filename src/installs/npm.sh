#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   NPM Setup\n\n"

mkdir ~/.nvm
echo "export NVM_DIR=\"$HOME/.nvm\"" >> ~/.zshrc
echo "[ -s \"/opt/homebrew/opt/nvm/nvm.sh\" ] && \. \"/opt/homebrew/opt/nvm/nvm.sh\"" >> ~/.zshrc
echo "[ -s \"/opt/homebrew/opt/nvm/etc/bash_completion\" ] && \. \"/opt/homebrew/opt/nvm/etc/bash_completion\"" >> ~/.zshrc
source ~/.zshrc

execute \
  "nvm install 20 && nvm use 20" \
  "Install NPM v20"

print_in_purple "\n   Add PNPM\n\n"

execute \
  "npm install -g @pnpm/exe" \
  "Install @pnpm/exe"
