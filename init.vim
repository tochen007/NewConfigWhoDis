" plugins ----------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug '~/.fzf'
   Plug 'christoomey/vim-tmux-navigator'
   Plug 'brookhong/cscope.vim'
   Plug 'tpope/vim-surround'
   Plug 'sirver/ultisnips'
   Plug 'honza/vim-snippets'
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
set autochdir              " set context to current directory
syntax on                  " syntax highlighting

let mapleader=","          " use , for <leader>

" Normal mode mapping ----------------------------------------------------------
" keep cursor centered while searching
nnoremap n nzz
nnoremap N Nzz
" expand window to take up as much vertical space as possible
nmap <C-j> <C-j><C-w>_
nmap <C-k> <C-k><C-w>_
" map space to clear search highlighting
nnoremap <silent> <space> :noh<CR>  
" move current cursor position to the top of the screen
nnoremap z<CR> 10jz<CR>

nnoremap <C-d> <C-d>M
nnoremap <C-f> <C-f>M
nnoremap <C-f> <C-f>M
nnoremap <C-b> <C-b>M

" Insert mode mapping ----------------------------------------------------------
" Visual mode mapping ----------------------------------------------------------

" coc.nvim config --------------------------------------------------------------
set statusline=%F%{coc#status()}
" tmux_navigator config --------------------------------------------------------
" turn off mappings from plugin
let g:tmux_navigator_no_mappings=0
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr><c-w>_
nnoremap <silent> <c-k> :TmuxNavigateUp<cr><c-w>_
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" cscove config ----------------------------------------------------------------
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
