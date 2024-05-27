#!/bin/bash

bold=$(tput bold)
norm=$(tput sgr0)

DOTFILES="$HOME/.dotfiles"

function install_dotfiles() {
	echo "${bold}=> Installing doftiles${norm}"

	git clone --recurse-submodules https://github.com/jxlil/dotfiles.git $DOTFILES
	cd $DOTFILES

	ln -s $DOTFILES/gitconfig $HOME/.gitconfig
	ln -s $DOTFILES/nvim/ $HOME/.config/nvim
	ln -s $DOTFILES/zshrc $HOME/.zshrc
	ln -s $DOTFILES/tmux.conf $HOME/.tmux.conf
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

    if [[ -f "`which brew`" ]]; then
        brew install neovim

        # install Packer
        git clone --depth 1 https://github.com/wbthomason/packer.nvim\
            ~/.local/share/nvim/site/pack/packer/start/packer.nvim

        neovim +PackerInstall +qa
        neovim +checkhealt
    fi
}

function main () {
	install_dotfiles
	install_nvm
	install_neovim
}

main
