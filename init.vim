" plugins ----------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug '~/.fzf'
   Plug 'christoomey/vim-tmux-navigator'
   Plug 'brookhong/cscope.vim'
call plug#end()

" vim settings -----------------------------------------------------------------
" tabbing
set tabstop=3
set shiftwidth=3
set expandtab

" numbering
set number
set relativenumber

" ignore case while searching using all-lowercase query
set ignorecase
set smartcase

" windowing
set splitbelow
set splitright

set autoindent             " follow previous line indentation
set smartindent            " insert extra indent in some cases
set wildmenu               " show options
set colorcolumn=80         " show line at 80 chars
set scrolloff=10           " guarantee 10 lines above and below cursor
set clipboard+=unnamedplus " copy directly to clipboard
set statusline+=%F         " show full path of current file
set autochdir              " set context to current directory
syntax on                  " syntax highlighting

" Normal mode mapping ----------------------------------------------------------
" keep cursor centered while searching
nnoremap n nzz
nnoremap N Nzz

nmap ^j ^j^w_
nmap ^k ^k^w_

" map space to clear search highlighting
nnoremap <space> :noh<CR>  

" move current cursor position to the top of the screen
nnoremap z<CR> 10jz<CR>

" Insert mode mapping ----------------------------------------------------------
inoremap ^<BS> ^w

" Visual mode mapping ----------------------------------------------------------

" coc.nvim config --------------------------------------------------------------
set statusline^=%{coc#status()}
