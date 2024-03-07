# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Init zplug
source ~/.zplug/init.zsh

# Select zplug plugins
# zplug "clvv/fasd" # https://github.com/clvv/fasd
zplug "junegunn/fzf"
zplug "yuhonas/zsh-aliases-lsd"
zplug "romkatv/powerlevel10k", as:theme, depth:1

# Make sure that plugins are installed
if ! zplug check --verbose; then
    printf "Installing missing zplug plugins...\n"
    zplug install
fi

# Load Zplug plugins
zplug load

# Define utility functions and aliases
backup_with_timestamp() {
    # Creates a timestamped backup of the given file or directory
    BACKUP_NAME="$1_backup_$(date +%Y-%m-%d_%H:%M:%S)"
    cp -r "$1" "$BACKUP_NAME"
    echo "Created backup at \"./$BACKUP_NAME\""
    unset BACKUP_NAME
}

# ---------------------------------------------------------------------------------------
# | PATH                                                                                 |
export NODE_PATH="/usr/local/lib/node_modules"
export PNPM_HOME="$HOME/Library/pnpm"
export NVM_DIR="$HOME/.nvm"
# add nvm to path
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion"
# add rust to path
export PATH="$HOME/.cargo/bin:$PATH"
# add brew and local bins to path
export PATH="/opt/homebrew/bin:$HOME/bin:/opt/local/bin:/usr/local/bin:/bin:$PATH"
# add yarn to path
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# add pnpm to path
export PATH="$PNPM_HOME:$PATH"

# ---------------------------------------------------------------------------------------
# Aliases
alias g="git"
alias ga="git add -A && git commit --amend --no-edit"
alias ghf='git add -A && git commit --amend --no-edit && git push --force'
alias yanr='yarn'
function pkill() {
    lsof -ti tcp:$1 | xargs kill -9
}

DEFAULT_USER=`whoami`

# ---------------------------------------------------------------------------------------
# Theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh