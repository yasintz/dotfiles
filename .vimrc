set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = ","
noremap <silent> <C-l> <c-w>l
noremap <silent> <C-h> <c-w>h
noremap <silent> <C-k> <c-w>k
noremap <silent> <C-j> <c-w>j
map <C-n> :NERDTreeToggle<CR>
map <S-f> mzgg=G`z
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'AutoComplPop'
Plugin 'tomasiser/vim-code-dark'
Plugin 'ervandew/supertab'
Plugin 'valloric/matchtagalways'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'

Plugin 'rust-lang/rust.vim'
call vundle#end()            " required
filetype plugin indent on    " required

let g:jsx_ext_required = 0
let g:jsx_pragma_required = 0
colorscheme molokai
set number
set hls is
syntax on
set sw=4
set cursorline
set laststatus=2
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

"nerdtre
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1

" ctrlp
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/coverage/*,*/build/*,*/node_modules/*


" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" rust
let g:rust_recommended_style = 0

