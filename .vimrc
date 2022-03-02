" Don't make vim compatible with vi
set nocompatible
filetype off

" Utilize Vundle for plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'hashivim/vim-terraform'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'stephpy/vim-yaml'
Plugin 'elzr/vim-json'
Bundle 'vim-ruby/vim-ruby'

call vundle#end()
filetype plugin indent on

" Turn on syntax highlighting
syntax on

" Always show current position
set ruler

" Show current line number and relative numbers
set number
set relativenumber

" Set utf8 as standard encoding
set encoding=utf-8
set fileencoding=utf-8

" Turn backup off
set nobackup
set nowb
set noswapfile

" Reload files changed outside vim
set autoread

" Make backspace delete over line breaks, 
" and automatically-inserted indentation
set backspace=indent,eol,start

" Use spaces instead of tabs
set expandtab

" Set default indent to 2 spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Always show the end-of-line character
set list
set listchars=tab:▶·,eol:$

" Set a text width and text wrapping
set wrap

" Highlights matching parentheses, brackets, etc.
set showmatch

" Better color scheme
colo desert

" Spell checking with an additional list of OK words
set spell
set spellfile=~/.vim/spell/en.utf-8.add
hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=red
hi clear SpellCap
