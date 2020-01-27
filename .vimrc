set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


map <C-n> :NERDTreeToggle<CR>
map <S-f> mzgg=G`z

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'AutoComplPop'
Plugin 'kien/ctrlp.vim'
"Plugin 'pangloss/vim-javascript'
"Plugin 'mxw/vim-jsx'
"Plugin 'ervandew/supertab'
"Plugin 'valloric/matchtagalways'
"Plugin 'scrooloose/nerdcommenter'

call vundle#end()
filetype plugin indent on


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

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/coverage/*,*/build/*,*/node_modules/*


let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let g:NERDDefaultAlign = 'left'
