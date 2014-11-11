# Git aliases
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'

# Seevibes aliases
alias cdsv='cd /home/jeje/Seevibes/repositories'

# Projects aliases
alias cd_prog='cd /home/jeje/Documents/Programming/'
alias cd_jengine='cd_prog && cd Cpp/jengine/jengine'
alias cd_jengine='cd /home/jeje/Documents/Programming/Cpp/jengine/jengine'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Git information in prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
export GIT_PS1_SHOWDIRTYSTATE=1
