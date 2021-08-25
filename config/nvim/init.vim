" source: https://github.com/jxlil/dotfiles

source ~/.config/nvim/plugins.vim 
source ~/.config/nvim/maps.vim 
source ~/.config/nvim/coc.vim

syntax on
colorscheme gruvbox 
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg


set tabstop=2 shiftwidth=2

set relativenumber
set number

set cursorline
set ruler
set nowrap
