" ---------------------------Vundle Setting
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'autocomplpop'
Plugin 'gruvbox'

call vundle#end()
filetype plugin indent on
" ---------------------------End Vundle setting

" ---------------------------AutocomplPop Setting
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col-1]!~'\k'
    return "\<TAB>"
  else
    if pumvisible()
      return "\<C-N>"
    else
      return "\<C-N>\<C-P>"
    end
  endif
endfunction
inoremap <tab> <C-R>=InsertTabWrapper()<CR>
inoremap <expr> <CR> pumvisible() ? "\<Right>\<CR>":"<CR>"
" ---------------------------End autocomplPoP Setting

set hlsearch                   " Highlight search
set number                     " Show Number of line
set autoindent
set autowrite
set history=512

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set showmatch
set fileencodings=utf-8        " File encoding
set bs=indent,eol,start	       " Use backspace key
set nobackup
set title
set ruler                      " Show position of cursor

syntax on
set t_Co=256                   " Set terminal to use 256 colors
colorscheme gruvbox
set background=dark
