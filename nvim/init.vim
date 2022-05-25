" source: https://github.com/jxlil/dotfiles

source ~/.config/nvim/plugins.vim 
source ~/.config/nvim/maps.vim 
source ~/.config/nvim/coc.vim

syntax on

colorscheme gruvbox 
set termguicolors

" transparent bg Windows Terminal
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE 

set relativenumber
set signcolumn=yes
set number
set mouse=a
set cursorline
set ruler
set nowrap
set pyx=3

set smartindent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

au Filetype html,javascript,css,scss setlocal ts=2 sw=2
