inoremap <silent> jj <ESC>
nnoremap ; :

set belloff=all

" 検索結果ハイライト消す
set hlsearch
nnoremap <ESC><ESC> :nohlsearch<CR>

" 現在の行
set cursorline

" 全角
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" 行を表示
set number
" material-color 設定
syntax enable
colorscheme monokai
