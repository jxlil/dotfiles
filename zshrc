#!/usr/bin/env zsh
# source: https://github.com/jxlil/dotfiles

export DOTFILES="$HOME/.dotfiles"
export ZSH="$DOTFILES/ohmyzsh"

# add local bin
export PATH="$HOME/.local/bin/":$PATH

# theme
ZSH_THEME="fishy"

# plugins
plugins=(git extract)

source $ZSH/oh-my-zsh.sh

# alias
alias vimrc="nvim ~/.config/nvim/init.vim"
alias zshrc="nvim ~/.zshrc"

alias cp="cp -r"
alias rm="rm -r"

alias dotfiles="cd ~/.dotfiles"
alias v="nvim"


# functions
trash() {
	mkdir -p /tmp/wastebasket
	for junk_file in ${@}; do 
		mv $junk_file /tmp/wastebasket/${junk_file}-$(date +%y%m%d%H%M%S)
	done
}

destroy() {
	shred -vzu -n 10 $*
}
