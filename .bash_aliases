#!/bin/bash

# unix
alias ls='ls -laG'
alias ll='ls -la'
alias tree="find . ! -name ".DS_Store" -print | sed -e 's;[^/]*/;|__;g;s;__|; |;g'"
alias ..='cd ..'
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias localipw="ipconfig getifaddr en1"
alias reload="exec $SHELL -l"
alias psgrep='ps aux | grep '

alias glg="git lgone | emojify | less --RAW-CONTROL-CHARS"

# git
alias push="git push origin master"
alias pull="git pull origin master"
alias rebase="git rebase origin/master"
alias gs="git status"
alias gd="git diff"

#shortcuts
alias vimclear='find ./ -type f -name "\.*sw[klmnop]" -delete'
