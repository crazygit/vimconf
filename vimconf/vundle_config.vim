set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
"===========================
" original repos on github
"===========================
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'

Bundle 'tpope/vim-fugitive'
Bundle 'hallison/vim-markdown'
Bundle 'mattn/emmet-vim'
Bundle 'nvie/vim-flake8'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'klen/python-mode'
" Bundle 'Valloric/YouCompleteMe'



"===========================
" vim-scripts repos
"===========================
" Bundle 'L9'
" Bundle 'FuzzyFinder'
Bundle 'bufexplorer.zip'
Bundle 'mru.vim'
Bundle 'Pydiction'
Bundle 'python_match.vim'
Bundle 'taglist.vim'
Bundle 'VST'
Bundle 'YankRing.vim'
Bundle 'winmanager'


"===========================
" non github repos
"===========================
"  Bundle 'git://git.wincent.com/command-t.git'


" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

