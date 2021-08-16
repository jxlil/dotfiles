
" Maps
" ----

let mapleader=','

" copy to clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" NERDTree
map <Leader>nt :NERDTreeToggle<CR>

" tabs 
noremap <C-t> :tabnew<CR>
noremap <C-w> :tabclose<CR>
noremap <C-h> :tabp<CR>
noremap <C-l> :tabn<CR>

" move to windows
noremap <silent> <leader>h :wincmd h<CR>
noremap <silent> <leader>j :wincmd j<CR>
noremap <silent> <leader>k :wincmd k<CR>
noremap <silent> <leader>l :wincmd l<CR>

" move text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


