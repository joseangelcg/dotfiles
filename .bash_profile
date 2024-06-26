#!/bin/bash

# generated by Git for Windows
test -f ~/.profile && . ~/.profile
test -f ~/.bashrc && . ~/.bashrc

# Personalization starts here
test -f ~/bash_func/myfuncs.sh && source ~/bash_func/myfuncs.sh

export PS1='\n\[\033[1;4;7m\]\u@\h\[\033[0;1m\] -> \[\033[0m\]\[\033[97;48;5;20m\] \w \[\033[0m\]\[\033[30;48;5;28m\]`__git_ps1``__jacg_git_ahead_behind`\[\033[0m\] > '
#export PS1='\n\[\033[1;4;7m\]\u@\h\[\033[0;1m\] -> \[\033[0m\]\[\033[97;48;5;20m\] \w \[\033[0m\]\[\033[30;48;5;28m\]`__git_ps1`\[\033[0m\] > '

alias sshstart='eval $(ssh-agent)'
alias sshlog='ssh-add'
alias sshlog2='ssh-add ~/.ssh/id_ed25519_personal'
alias sshdel='ssh-add -D'

alias ll='ls -la'
alias ..='cd ..'

#Alias because git bash doesnt work by default with github cli
alias ghh="winpty gh"

# cool grep
alias grp='grep -nIr --color=always'

# vim with NERDTree open
alias vimm='vim -c NERDTree'
