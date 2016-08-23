# Git aliases
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gaa='git add -A'
alias gp='git push origin'
alias gl='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --'

# Projects aliases
alias cd_prog='cd /home/jeje/Documents/Programming/'
alias cdpp='cd /home/jeje/Documents/Programming/Cpp/MercenariesLife/MercenariesLife'
alias cdtest='cd /home/jeje/Documents/Programming/Cpp/test/build-Test-Desktop_Qt_5_3_0_GCC_64bit-Release'

# Azzimov aliases
alias cdaz='cd /home/jeje/Documents/Azzimov/Projets/'
alias cddaneel='cd /home/jeje/Documents/Azzimov/Projets/Daneel-Library/Daneel-Library/'
alias sshedgar='ssh jeremy@10.0.1.17'

# Programs aliases
alias weather='~/Documents/Programming/Go/bin/wego'

# Docker aliases
alias dps='docker ps -a'
alias dimgs='docker images'
alias drm='docker rm'
alias drmi='docker rmi'

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
# Don't use this one anymore as it takes way too much time with big git projects. Instead use the following block
# export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
# export GIT_PS1_SHOWDIRTYSTATE=1

# Add git branch if its present to PS1
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '

# Source RVM to use rvm tool
# source /home/jeje/.rvm/scripts/rvm
