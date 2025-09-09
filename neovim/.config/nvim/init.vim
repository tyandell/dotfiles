call plug#begin('~/.local/share/nvim/plugged')
Plug 'brenton-leighton/multiple-cursors.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/yajs.vim'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-surround'
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

" ---

if isdirectory(expand('~/.config/nvim/config'))
  for file in split(glob('~/.config/nvim/config/*.vim'), '\n')
    if filereadable(file)
      execute 'source' file
    endif
  endfor
endif

" ---

lua << EOF
require("multiple-cursors").setup()

vim.keymap.set({"n","x"}, "<C-j>", "<Cmd>MultipleCursorsAddDown<CR>")
vim.keymap.set({"n","x"}, "<C-k>", "<Cmd>MultipleCursorsAddUp<CR>")
vim.keymap.set({"n","x"}, "<Leader>d", "<Cmd>MultipleCursorsAddJumpNextMatch<CR>")
vim.keymap.set({"n","x"}, "<Leader>l", "<Cmd>MultipleCursorsLock<CR>")
EOF
