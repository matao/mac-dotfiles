set shell=/bin/sh

set term=xterm-256color

source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//


filetype off
execute pathogen#infect()
syntax on
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

set colorcolumn=100
set ruler
syntax enable

" Solarized configuration
let g:solarized_termtrans = 1

set background=dark
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized




" Tab settings
set tabstop=2
set shiftwidth=2
set expandtab

nnoremap <Leader>[ :bp<CR>
nnoremap <Leader>] :bn<CR>
nnoremap <leader>q :bp<cr>:bd #<cr>

set backspace=indent,eol,start

"
set number
set hidden

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif


" Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

