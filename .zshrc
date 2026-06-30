# # Lines configured by zsh-newuser-install
# HISTFILE=~/.histfile
# HISTSIZE=1000
# SAVEHIST=1000
# bindkey -e
# # End of lines configured by zsh-newuser-install
# # The following lines were added by compinstall
# zstyle :compinstall filename '/home/scrubs/.zshrc'
#
# autoload -Uz compinit
# compinit
# # End of lines added by compinstall
# #

# Override config

# alias ranger="yazi"
# alias rm="trash"
# alias vi="sh 'neovide $@'"
# alias vim="sh 'neovide $@'"
# alias nvim="sh 'neovide $@'"

zstyle ':omz:update' mode disabled

source $HOME/.zshenv
source $ZSH/oh-my-zsh.sh


# Install package zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source $ZSH/plugins/fzf/fzf.plugin.zsh
source $ZSH/plugins/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh
source $ZSH/plugins/git-prompt/git-prompt.plugin.zsh
source $ZSH/plugins/dotenv/dotenv.plugin.zsh

plugins=(
  zsh-syntax-highlighting
  zsh-autocomplete
  zsh-autosuggestions
  zsh-history-substring-search
  fzf
  zsh-interactive-cd
  git-prompt
  dotenv
)

export EDITOR=nvim
