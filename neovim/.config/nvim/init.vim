call plug#begin('~/.local/share/nvim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/yajs.vim'
Plug 'sbdchd/neoformat'
call plug#end()

set ts=2 sts=2 sw=2 expandtab

set hidden
set mouse=a
set nowrap
set splitbelow splitright

set termguicolors
silent! colorscheme onedark

" Neoformat
" =========
nnoremap g= :Neoformat<CR>

" Go
" ==
autocmd FileType go setlocal ts=3 sts=3 sw=3 noexpandtab

" Thor
" ====
autocmd BufNewFile,BufRead Thorfile setlocal ft=ruby
autocmd BufNewFile,BufRead *.thor setlocal ft=ruby
