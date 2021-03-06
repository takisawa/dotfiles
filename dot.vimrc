" ~/.vimrc

" ===== 表示関連 =====

" 構文ハイライトを有効にする
syntax enable

" 行番号を表示する
set number

" Show the line and column number of the cursor position
set ruler

" 括弧入力時に対応する括弧を知らせる
set showmatch

" <Tab>や<EOL>を表示する
set list	

" 'list' オン時に使う文字
set listchars=tab:^\ ,trail:@

" ベルを鳴らさない
set belloff=all

" カラースキーム
colorscheme mycs

" カーソルを点滅しない
set guicursor=a:blinkon0

" ツールバー消す
set guioptions-=T

" 右スクロールバーを表示しない
set guioptions-=r

" 左スクロールバーを表示しない
set guioptions-=l

" 垂直分割されたウィンドウがあるときも右スクロールバーを表示しない
set guioptions-=R

" 垂直分割されたウィンドウがあるときも左スクロールバーを表示しない
set guioptions-=L


" ===== 検索関連 =====

" 検索にマッチした部分をハイライトする
set hlsearch

" 検索パターン入力中にその文字を強調表示する
set incsearch

" 検索がファイル末尾まで進んだら先頭から再検索
set wrapscan

" パターンが大文字を含むときは文字の大小を区別する
set smartcase

" smartcase が ON なので小文字の場合に大文字小文字を区別しない
set ignorecase

" vimgrepで自動的にQuickFixを開く
autocmd QuickFixCmdPost *grep* cwindow


" ===== バックアップファイル関連 =====

" アンドゥ情報をファイルに保存しない
set noundofile

" 上書きした時にバックアップを作成しない
set nobackup

" スワップファイルを作成しない
set noswapfile


" ===== 入力関連（グローバル） =====

" 挿入モードで <Tab> を入力した場合にスペースに置き換える。
set expandtab

" 新しい行を開始したとき、新しい行のインデントを現在行と同じくする。
set autoindent

" autoindent で挿入されるスペースの数。
set shiftwidth=2

" 既に入力されている <Tab> をスペース何文字で表示するか。
set tabstop=2


" ===== キーマップ =====

" <C-l> で画面の再描画に加えて、 hlsearch による強調表示を解除
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" 折り返し時に表示行単位での移動する
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

" コマンドラインモードでCtrl-xで開いているファイルの相対パスを展開する
cnoremap <C-x> <C-R>=expand("%:h")<CR>

" ===== コマンド関連 =====
set history=1000


" ===== Vundle =====
" -----------------------------------------------------------------------------
" https://github.com/VundleVim/Vundle.vim
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required
" -----------------------------------------------------------------------------


" ===== NERDTree =====
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>


" ===== プラグイン =====
set runtimepath+=~/.vim/plugin/



" ===== vim-go =====
let g:go_fmt_command = "goimports"
