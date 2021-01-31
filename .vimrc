" Don't make vim compatible with vi
set nocompatible
filetype off

" Utilize Vundle for plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'hashivim/vim-terraform'
Plugin 'vim-ruby/vim-ruby'
Plugin 'fatih/vim-go'
Plugin 'prettier/vim-prettier'
Plugin 'eslint/eslint'

call vundle#end()
filetype plugin indent on

" Custom mappings for plugins
map <C-o> :NERDTreeToggle<CR>

" Turn on syntax highlighting
syntax on

" Always show current position
set ruler

" Show current line number and relative numbers
set number
set relativenumber

" Set 2 spaces as default
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

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

" Show specific characters
set list
set listchars=tab:\ \ ,eol:$

" Set a textwidth and text wrapping
set wrap

" Highlights matching parentheses, brackets, etc.
set showmatch

" Better color scheme
colo desert

" Spell check
set spell
highlight clear SpellBad
highlight clear SpellCap
highlight SpellBad cterm=underline,bold ctermfg=red
