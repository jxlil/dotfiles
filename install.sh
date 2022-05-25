#!/bin/bash

bold=$(tput bold)
norm=$(tput sgr0)

PACKAGES=(
	curl
	wget
	git
	htop
	python3
	python3-pip
	build-essential
	zsh
)

DOTFILES="$HOME/.dotfiles"

function install_packages() {
	echo "${bold}=> Installing packages: ${PACKAGES[*]}${norm}"

	sudo apt install ${PACKAGES[*]} -y
}

function install_dotfiles() {
	echo "${bold}=> Installing doftiles${norm}"

	git clone --recurse-submodules https://github.com/jxlil/dotfiles.git $DOTFILES
	cd $DOTFILES

	ln -s $DOTFILES/gitconfig $HOME/.gitconfig
	ln -s $DOTFILES/nvim/ $HOME/.config/nvim
	ln -s $DOTFILES/zshrc $HOME/.zshrc
}

function install_nvm() {
	echo "${bold}=> Installing nvm${norm}"

	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
	
	export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
	
	nvm install node
}

function install_neovim() {
	echo "${bold}=> Installing neovim${norm}"

	mkdir -p ~/.local/bin
	curl -L https://github.com/neovim/neovim/releases/latest/download/nvim.appimage -o $HOME/.local/bin/nvim
	chmod u+x $HOME/.local/bin/nvim

	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

	$HOME/.local/bin/nvim +PlugInstall +qa
}

function main () {
	install_packages
	install_dotfiles
	install_nvm
	install_neovim
}

main
