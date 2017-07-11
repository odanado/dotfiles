scriptencoding utf-8
set encoding=utf-8
set nocompatible
let mapleader = "\<Space>"

let g:cache_home = expand('$HOME/.cache')
let g:config_home = expand('$HOME/.config')

let s:dein_cache_dir = g:cache_home . '/dein'

if !empty(glob('/usr/bin/python'))
    let g:python_host_prog = '/usr/bin/python'
elseif !empty(glob('/usr/local/bin/python'))
    let g:python_host_prog = '/usr/local/bin/python'
endif

if !empty(glob('/usr/bin/python3'))
    let g:python3_host_prog = '/usr/bin/python3'
elseif !empty(glob('/usr/local/bin/python3'))
    let g:python3_host_prog = '/usr/local/bin/python3'
endif
    

if &runtimepath !~# '/dein.vim'
    let s:dein_repo_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'

    " Auto Download
    if !isdirectory(s:dein_repo_dir)
        call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
    endif

    execute 'set runtimepath^=' . s:dein_repo_dir
endif

if dein#load_state(s:dein_cache_dir)
    call dein#begin(s:dein_cache_dir)

    let s:toml_dir = g:config_home . '/dein'

    call dein#load_toml(s:toml_dir . '/common.toml', {'lazy': 0})
    call dein#load_toml(s:toml_dir . '/terminal.toml', {'lazy': 0})
    call dein#load_toml(s:toml_dir . '/python.toml', {'lazy': 0, 'on_ft': 'python'})
    call dein#load_toml(s:toml_dir . '/cpp.toml', {'lazy': 0, 'on_ft': ['c', 'cpp']})

    call dein#end()
    call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
    call dein#install()
endif

set mouse=a
filetype plugin indent on
syntax on

set tabstop=4
set shiftwidth=4
set expandtab 

set number

set hlsearch
set incsearch
set noignorecase

set showcmd

set ruler

set cursorline
highlight cursorline term=reverse cterm=reverse

set t_Co=256

set nowritebackup
set nobackup
set noswapfile
set noundofile

set backspace=indent,eol,start

set laststatus=2

set showmatch
set matchtime=2

set noerrorbells

tnoremap <silent> <ESC> <C-\><C-n>
