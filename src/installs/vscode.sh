#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_plugin() {
    execute "code --install-extension $2" "$1 plugin"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio Code\n\n"

# Install VSCode
brew_install "Visual Studio Code" "visual-studio-code" "--cask"

printf "\n"

# Install the VSCode plugins
install_plugin "Better Comments" "aaron-bond.better-comments"
install_plugin "EditorConfig" "EditorConfig.EditorConfig"
install_plugin "ESLint" "dbaeumer.vscode-eslint"
install_plugin "Git Graph" "mhutchie.git-graph"
install_plugin "GitHub Copilot" "github.copilot"
install_plugin "Grammarly" "znck.grammarly"
install_plugin "Nx Console" "nrwl.angular-console"
install_plugin "IntelliJ IDEA Keybindings" "k--kato.intellij-idea-keybindings"
install_plugin "Jest runner" "firsttris.vscode-jest-runner"
install_plugin "MDX" "unifiedjs.vscode-mdx"
install_plugin "One Dark Pro" "zhuangtongfa.material-theme"
install_plugin "vscode-icons" "vscode-icons-team.vscode-icons"
install_plugin "SVG" "jock.svg"
install_plugin "Rust analyzer" "rust-lang.rust-analyzer"

# Close VSCode
osascript -e 'quit app "Visual Studio Code"'