set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" general
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'ciaranm/detectindent'
"Plugin 'editorconfig/editorconfig-vim'  "RB no need for .editorconfig here
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'            "RB looks like basic linting. Works?!
"Plugin 'majutsushi/tagbar'              "RB for html's, tag structure?
Plugin 'troydm/easybuffer.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline'
"Plugin 'mattn/emmet-vim'                "RB expands abbreviations
"Plugin 'Gundo'                          "RB no need for fancy Undo 
"Plugin 'tpope/vim-fugitive'             "RB no git from vim
"Plugin 'tpope/vim-abolish'              "RB nice, not for me
Plugin 'tpope/vim-surround'

" lang specific
"Plugin 'pangloss/vim-javascript'        "RB no vim for JS
"Plugin 'Valloric/YouCompleteMe'         "RB not an IDE
" snippets for YouCompleteMe
 "Plugin 'SirVer/ultisnips'              "RB --//--
 "Plugin 'marijnh/tern_for_vim'          "RB --//--

"Plugin 'tpope/vim-markdown'             "RB no markdown

" Plugin 'psykidellic/vim-jekyll'
" Plugin 'tpope/vim-liquid'

" Plugin 'digitaltoad/vim-jade'

" Plugin 'guns/vim-clojure-static'

"Plugin 'jhradilek/vim-rng'              "RB no XML blah

filetype plugin indent on
