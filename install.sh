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
	stow
)

function install_packages() {
	echo "${bold}=> Installing packages: ${PACKAGES[*]}${norm}"

	sudo apt install ${PACKAGES[*]} -y
}

function install_dotfiles() {
	echo "${bold}=> Installing doftiles${norm}"

	git clone --recurse-submodules git@github.com:jxlil/dotfiles.git $HOME/.dotfiles
	
	cd $HOME/.dotfiles
	stow --dotfiles stow
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
