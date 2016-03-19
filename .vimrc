"---------------------------------------------------------------------
"http://qiita.com/hrsh7th@github/items/766543bd2ef565bd1ee9
scriptencoding utf-8
set nocompatible

if has('vim_starting')
  filetype plugin off
  filetype indent off
  execute 'set runtimepath+=' . expand('~/.vim/bundle/neobundle.vim')
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'itchyny/lightline.vim'
let g:lightline = {
            \ 'colorscheme': 'wombat'
            \ }
" solarized
NeoBundle 'altercation/vim-colors-solarized'
let g:solarized_termtrans=1

NeoBundle 'tomasr/molokai'
let g:molokai_original = 1

" neocomplete
NeoBundle 'Shougo/neocomplete.vim'

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {} 
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c =
            \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp =
            \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

" vim-clang
NeoBundle 'odanado/vim-clang'
let g:clang_auto = 0
let g:clang_enable_format_command = 0
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'

" vim-template
NeoBundle 'thinca/vim-template'

" color_coded
NeoBundleLazy 'jeaye/color_coded', {
            \ 'build': {
            \   'unix': 'cmake . && make && make install',
            \ },
            \ 'autoload': { 'filetypes' : ['c', 'cpp', 'objc', 'objcpp'] },
            \ 'build_commands' : ['cmake', 'make']
            \}

" unite.vim
NeoBundle 'Shougo/unite.vim'

" neosnippet
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:neosnippet#snippets_directory='~/.vim/snippets'

" vim-operator-user
NeoBundle 'kana/vim-operator-user'

" vim-clang-format
NeoBundle 'rhysd/vim-clang-format'
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : "-4",
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "IndentWidth": "4"}
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
nmap <Leader>C :ClangFormatAutoToggle<CR>

" nerdtree
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
" ファイル名を指定して起動する時はnerdtreeを起動しない
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeShowBookmarks=1
let g:NERDTreeIgnore = ['\~$', '\.o$', '\.gch$', '\.out', '\.exe']
map <C-n> :NERDTreeToggle<CR>
map <C-b> :Bookmark<CR>


call neobundle#end()

set mouse=n
filetype plugin indent on
syntax on

" colorscheme変更
colorscheme solarized

"インデント(タブ)を空白2つ分にする
set tabstop=4
set shiftwidth=4

"行番号を表示
set number

"検索結果をハイライト
set hlsearch

"入力しながら検索
set incsearch

"入力中のコマンドが見えるように
set showcmd

"右下に行番号表示
set ruler

"選択行を見やすく
set cursorline
highlight cursorline term=reverse cterm=reverse

"端末にカラーを左右されない
set t_Co=256

"上書き時にバックアップしない
set nowritebackup

"バックアップファイルを作成しない
set nobackup

"スワップファイルを作成しない
set noswapfile

" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start

"コマンドを100件まで記録
set history=100

"ステータス行を常に表示する
set laststatus=2

" 括弧入力時の対応する括弧を表示
set showmatch

" 対応する括弧の表示時間を2にする
set matchtime=2

"エラー時に音を鳴らさない
set noerrorbells

"検索時に大文字小文字同一視
set noignorecase

"タブをスペースに
set expandtab 

" .un ファイル抑制
set noundofile

