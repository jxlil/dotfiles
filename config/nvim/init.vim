" source: https://github.com/jxlil/dotfiles

source ~/.config/nvim/plugins.vim 
source ~/.config/nvim/maps.vim 
source ~/.config/nvim/coc.vim

syntax on
colorscheme gruvbox 

" transparent bg Windows Terminal
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE 

set tabstop=2 shiftwidth=2
set relativenumber
set number

set cursorline
set ruler
set nowrap

set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2
set mouse=a
