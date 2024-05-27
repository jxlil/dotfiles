#!/usr/bin/env zsh
# source: https://github.com/jxlil/dotfiles

export DOTFILES="$HOME/.dotfiles"
export ZSH="$DOTFILES/ohmyzsh"
export ZSH_CUSTOM="$DOTFILES/ohmyzsh-custom"

# Node Version Manager (nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH
export PATH="$HOME/.local/bin/":$PATH
export PATH="$HOME/Library/Python/3.9/bin/":$PATH

# theme
ZSH_THEME="fishy"

# plugins
plugins=(git extract)

source $ZSH/oh-my-zsh.sh

# alias
alias vimrc="nvim ~/.config/nvim/init.vim"
alias zshrc="nvim ~/.zshrc"

alias dotfiles="cd ~/.dotfiles"
alias py="python3"
alias cp="cp -r"
alias v="nvim"
