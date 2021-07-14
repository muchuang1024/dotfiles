
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-surround'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'dgryski/vim-godef'

call vundle#end()


" 插件配置

"--- NERDTree ----
let NERDTreeHijackNetrw = 0

"--- Ctrlp ----
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"--- airline ----
set laststatus=2  "永远显示状态栏

"--- tagbar ----
"" support go
let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'p:package',
        \'f:function',
        \'v:variables',
        \'t:type',
        \'c:const'
    \]
\}

"--- ctags ---
set tags=./tags,tags;$HOME
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

"--- simplyfold ---
let g:SimpylFold_docstring_preview = 1

"--- nerdcommenter ---

"--- easymotopn ---
let g:EasyMotion_do_mapping = 0 " Disable default mappings

"---synastic--

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"---neocomplete---


"---godef---"

" 使用 c-] 代替 gd 进行跳转
" autocmd FileType go nnoremap <buffer> gd :call GodefUnderCursor()<cr>
" autocmd FileType go nnoremap <buffer> <C-]> :call GodefUnderCursor()<cr>

let g:godef_split=2 """将重用当前窗口
let g:godef_same_file_in_same_window=1 """函数在同一个文件中时不需要打开新窗口
