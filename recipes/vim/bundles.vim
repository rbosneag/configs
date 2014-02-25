set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" general
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'bitc/vim-bad-whitespace'
Bundle 'ciaranm/detectindent'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'troydm/easybuffer.vim'
Bundle 'jnurmine/Zenburn'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mattn/emmet-vim'
Bundle 'Gundo'
Bundle 'tpope/vim-fugitive'

" lang specific
" Bundle "pangloss/vim-javascript"
Bundle 'Valloric/YouCompleteMe'
" snippets for YouCompleteMe
Bundle "SirVer/ultisnips"
Bundle 'marijnh/tern_for_vim'

Bundle 'tpope/vim-markdown'
"Bundle 'psykidellic/vim-jekyll'
"Bundle 'tpope/vim-liquid'

"Bundle 'digitaltoad/vim-jade'

"Bundle 'guns/vim-clojure-static'

filetype plugin indent on

