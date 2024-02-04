set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set hidden
set noerrorbells
set guicursor=
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set syntax=on

au BufEnter *.txt setlocal tw=80
au BufEnter *.txt setlocal spell spelllang=en_us
au BufEnter *.txt setlocal linebreak

call plug#begin('~/.vim/plugged')               " using vim-plug as the package manager for neovim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'
call plug#end()

colorscheme gruvbox
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>" " attempt to have auto complete pop up work with "enter" instead of creating a new line

let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

tnoremap <Esc> <C-\><C-n>       " terminal mode remap esc key to exit insert mode
