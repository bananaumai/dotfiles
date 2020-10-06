set shell=/bin/sh

" 行番号を表示する。
set number

" シンタックスハイライトを有効にする
syntax enable

" .vimrcの設定を簡単にするキーマッピング
nnoremap <Space>. :<C-u>edit $MYVIMRC<Enter>
nnoremap <Space>s. :<C-u>source $MYVIMRC<Enter>

" leader
let mapleader = ","

" backspaceの挙動を改善する
set backspace=start,indent,eol

" 検索に関する設定
set ignorecase " 検索時に大文字/小文字の違いを無視する。
set hlsearch " 検索結果をハイライトする。
set wrapscan " 検索をファイルの末尾まで検索したら、ファイルの先頭へループする。

" 文字コード(デフォルトがenc、読み込みがfencsから読み込んで全ての変換に失敗したらfencで読み込む)
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,iso-2021-jp,euc-jp,cp932
set fileformats=unix,mac,dos

" カレントウィンドウのカーソル行をハイライトするオートコマンド
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline


" ステータスラインについての設定
set laststatus=2 " 常にステータスラインを表示
set ruler "カーソルが何行目の何列目に置かれているかを表示する

" exコマンドを入力しやすくるキーマッピング
noremap ; :
noremap q; q:
noremap : ;

" 行移動しやすくるためのキーマッピング
" 論理行移動と表示行移動のキーバインディングを入れ替える。
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" カーソル移動
imap <C-b> <Left>
imap <C-h> <Left>
imap <C-f> <Right>
imap <C-l> <Right>
imap <C-p> <Up>
imap <C-k> <Up>
imap <C-n> <Down>
imap <C-j> <Down>
imap <C-a> <Home>
imap <C-e> <End>

" エスケープ
imap <C-S-e> <Esc>

" Ex-modeでの<C-p><C-n>をzshのヒストリ補完っぽくする
cnoremap <C-p> <Up>
cnoremap <Up>  <C-p>
cnoremap <C-n> <Down>
cnoremap <Down>  <C-n>

" tabとwhitespace
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" filetypeのpluginとindentを有効にする
filetype plugin indent on
