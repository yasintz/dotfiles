source  /media/harddisk/zsh/powerlevel9k/powerlevel9k.zsh-theme
source /media/harddisk/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /media/harddisk/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

if [ -f "$HOME/.profile_script" ]; then
  . "$HOME/.profile_script"
fi
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  #alias dir='dir --color=auto'
  #alias vdir='vdir --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:`yarn global bin`"

