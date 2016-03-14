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

call neobundle#end()

set mouse=n
filetype plugin indent on
syntax on

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

