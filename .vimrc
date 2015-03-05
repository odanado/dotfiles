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
call neobundle#end()

syntax on
filetype plugin on
filetype indent on

" SSH クライアントの設定によってはマウスが使える（putty だと最初からいける）
set mouse=n
NeoBundle 'itchyny/lightline.vim'
let g:lightline = {
			\ 'colorscheme': 'wombat'
			\ }

" clang_complate
NeoBundle 'Rip-Rip/clang_complete'
let g:clang_complete_auto=1
let g:clang_use_library   = 1 
let g:clang_library_path  = "/usr/local/lib"
set completeopt=menuone

" neocomplete
NeoBundle 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1
" Ruby 用の設定
" http://www.xmisao.com/2014/04/10/neocomplete-ruby-setting-memo.html
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" markdown

"---------------------------------------------------------------------

filetype plugin indent on
syntax on
set nocompatible
"インデント(タブ)を空白2つ分にする
set tabstop=4
set shiftwidth=4
"Cのインデントに
"set cindent
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

"vimが透ける
highlight Normal ctermbg=none

colorscheme molokai
"上書き時にバックアップしない
set nowritebackup

"バックアップファイルを作成しない
set nobackup

"スワップファイルを作成しない
set noswapfile

" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start

"コマンドを100件まで記録(?)
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

"ビープ音を鳴らさない

"タブをスペースに
set expandtab 

let OSTYPE = system('uname')

if OSTYPE == "CYGWIN_NT-6.1\n"
	""win
elseif OSTYPE == "Linux\n"
	""Linux

	vmap <C-c> :w !xsel -ib<CR><CR>
endif


"script

command Procon source ~/.vim/procon/procon.vim















