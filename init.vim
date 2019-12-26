" vim settings -----------------------------------------------------------------
" tabbing
set tabstop=3
set shiftwidth=3
set expandtab

" show line at 80 chars
set colorcolumn=80

" numbering
set number
set relativenumber

" show options
set wildmenu

" ignore case while searching using all-lowercase query
set ignorecase
set smartcase

" guarantee 10 lines above and below cursor
set scrolloff=10

" plugins ----------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug '~/.fzf'
call plug#end()
