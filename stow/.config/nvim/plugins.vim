
" Plugins
" -------

let g:coc_global_extensions = ['coc-css', 'coc-git', 'coc-html', 'coc-htmldjango', 'coc-json', 'coc-pyright', 'coc-snippets', 'coc-tsserver']

call plug#begin(stdpath('config') . "/plugged") 

" Vim plugin, insert or delete brackets, parens, quotes in pair 
Plug 'jiangmiao/auto-pairs'

" A tree explorer plugin for vim. 
Plug 'preservim/nerdtree'

" Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers.
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-snipmate default snippets (Previously snipmate-snippets)
Plug 'honza/vim-snippets'

" Retro groove color scheme for Nvim 
Plug 'morhetz/gruvbox' 

" Multiple cursors plugin for vim/neovim
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

"A command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
