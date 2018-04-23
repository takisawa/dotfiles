" ~/.vimrc

" ===== 表示関連 =====

" 行番号を表示する
set number

" 括弧入力時に対応する括弧を知らせる
set showmatch

" <Tab>や<EOL>を表示する
set list	

" 'list' オン時に使う文字
set listchars=tab:^\ ,trail:@


" ===== 検索関連 =====

" 検索パターン入力中にその文字を強調表示する
set incsearch

" 検索がファイル末尾まで進んだら先頭から再検索
set wrapscan

" パターンが大文字を含むときは文字の大小を区別する
set smartcase


" ===== バックアップファイル関連 =====

" アンドゥ情報をファイルに保存する
set noundofile

" 上書きした時にバックアップを作成する。
set nobackup


" ===== Vundle =====
" -----------------------------------------------------------------------------
" https://github.com/VundleVim/Vundle.vim
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" -----------------------------------------------------------------------------
