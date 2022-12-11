# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Fig pre block. Keep at the top of this file.
eval "$(fig init zsh pre)"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/yasintz/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# The plugin will auto execute this zvm_after_init function
function zvm_after_init() {
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
}

plugins=(
  git
  zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(direnv hook zsh)"

export ANDROID_HOME=/Users/$USER/Library/Android/sdk

SYSTEM_PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:${HOME}/.local/bin"
PIP_PATH="/usr/local/opt/python@3.9/Frameworks/Python.framework/Versions/3.9/bin"
ANDROID_PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
YARN_PATH="$(yarn global bin)"

export PATH="$PATH:$SYSTEM_PATH:$ANDROID_PATH:$YARN_PATH"

export GEM_HOME="$HOME/.gem"

alias gpl="git pull origin master"
alias gco="git checkout"
alias la="ls -a"
alias adbreverse="adb reverse tcp:8081 tcp:8081 && adb reverse tcp:3000 tcp:3000"
alias http-server="python3 -m http.server"
alias gps="git push origin HEAD"
alias p="pnpm"
alias cat='bat --paging=never'
alias batdiff='git diff --name-only --relative --diff-filter=d | xargs bat --diff'

# bun completions
[ -s "/Users/yasintz/.bun/_bun" ] && source "/Users/yasintz/.bun/_bun"

# bun
export BUN_INSTALL="/Users/yasintz/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# example

# pnpm
export PNPM_HOME="/Users/yasintz/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
