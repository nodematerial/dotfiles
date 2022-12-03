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


" netrw 設定

"ツリー表示
"表示を変更したい場合は i で切替可能
let g:netrw_liststyle=3
"上部のバナーを非表示
" I で toggle 可能
let g:netrw_banner = 0
"window サイズ
"let g:netrw_winsize = 50
"Netrw で Enter 押下時の挙動設定
let g:netrw_browse_split = 4
let g:netrw_alto = 1
let g:netrw_altv = 1
let g:netrw_liststyle= 2 
"Netrw を toggle する関数を設定
"元処理と異なり Vex を呼び出すことで左 window に表示
let g:NetrwIsOpen=0
function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Vex
    endif
endfunction

"ショートカットの設定
"= を 2 回連続押下で toggle 
noremap <silent>= :call ToggleNetrw()<CR>
