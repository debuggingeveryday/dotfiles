#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# -- DEFAULT -- #

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

. $HOME/git-prompt.sh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1=' $USER\n \e[34m$PWD\e[0m$(__git_ps1 "\n \e[31m(%s)\e[0m")\n=> '

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

shopt -s autocd
shopt -s checkwinsize
