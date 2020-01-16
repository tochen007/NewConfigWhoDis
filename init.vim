" vim settings -----------------------------------------------------------------
" tabbing
set tabstop=3
set shiftwidth=3
set expandtab

set autoindent             " follow previous line indentation
set smartindent            " insert extra indent in some cases

" numbering
set number
set relativenumber

" ignore case while searching using all-lowercase query
set ignorecase
set smartcase

set wildmenu               " show options
set colorcolumn=80         " show line at 80 chars
set scrolloff=10           " guarantee 10 lines above and below cursor
set clipboard+=unnamedplus " copy directly to clipboard
set statusline+=%F         " show full path of current file
set autochdir              " set context to current directory

" Normal mode mapping ----------------------------------------------------------
" keep cursor centered while searching
nnoremap n nzz
nnoremap N Nzz

" map space to clear search highlighting
nnoremap <space> :noh<CR>  

" move current cursor position to the top of the screen
nnoremap z<CR> 10jz<CR>

" Insert mode mapping ----------------------------------------------------------

" Visual mode mapping ----------------------------------------------------------

" plugins ----------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug '~/.fzf'
call plug#end()

" coc.nvim config --------------------------------------------------------------
set statusline^=%{coc#status()}  " add 
