""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Basic configuration                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number					    " 显示行号
set syntax=enable               " enable syntax hightlight and completion
set syntax=on                   " syntax highlighing
set filetype=on                 " try to detect file types
"set guifont=Courier_New:h14
"set guifont=Monospace:h14      " 设置字体大小,liunx下set guifont=Monospance\空格14
set nocp                        " 关闭 vi 模式
set clipboard+=unnamed          " 与 windows 共享剪贴板
set history=200                 " 历史记录保留 200 行
set cursorline                  " 高亮光标所在行
set novisualbell                " 取消光标闪烁
set ignorecase                  " 在搜索时忽略大小写
set hlsearch                    " 高亮被搜索的句子
set incsearch                   " 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set foldmethod=indent           " 设置语法折叠
set foldlevelstart=99           " 打开文件是默认不折叠代码
set shiftwidth=4                " 设置tab为4
set softtabstop=4
set tabstop=4
set expandtab
set autoindent
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {<CR>}<ESC>O
inoremap <C-Enter> <ESC>o
inoremap <C-S-Enter> <ESC>O
" 使用 :echo has('clipboard') 来查看是否支持系统剪切板
set clipboard=unnamed               " 直接复制到系统剪切板

" set showcmd                     " 状态栏显示当前执行的命令
" set showmatch                   " 高亮显示匹配的括号

" html & css & javascript 自动补全
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

let mapleader=','
inoremap <leader>w <Esc>:w<cr>
inoremap <leader>a <Esc>la
" 用空格键来开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>


nnoremap <silent> <F5> :!start file://C:/Program Files (x86)/Google/Chrome/Application/chrome.exe %:p<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Plug Management                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
"------------------------------ Tools ---------------------------------"
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'skywind3000/vim-terminal-help'
"------------------------------ 主题 & 美化 ---------------------------"
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'w0ng/vim-hybrid'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"------------------------------ 前端 -----------------------------------"
Plug 'mattn/emmet-vim'
Plug 'othree/javascript-libraries-syntax.vim'           " 高亮
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'msanders/snipmate.vim'
Plug 'tpope/vim-commentary'
" Plug 'turbio/bracey.vim'              实时预览，需要vim支持py

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Plug configuration                         " 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

"------------------------------ Tools ---------------------------------"
" 'nerdtree'
" autocmd vimenter * NERDTree     自动打开目录树
let NERDTreeIgnore =['\.git$','\.svn$','\.vs$']             " 忽略文件
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
" 终端插件配置
let g:terminal_key='<c-`>'                  " 默认为<m-=>,即ALT + =
let g:terminal_height=20

"------------------------------ 主题 & 美化 ---------------------------"
set background=dark                                 " set background=light
colorscheme gruvbox
let g:one_allow_italics=1
set laststatus=2                                    "永远显示状态栏
let g:airline#extensions#tabline#enabled = 1        " 显示窗口tab和buffer
let g:airline#extensions#tabline#buffer_nr_show = 1 "tabline中buffer显示编号
let g:airline_theme="bubblegum"                     " 设置主题
nmap <tab> :bn<cr>
"------------------------------ 前端 -----------------------------------"
" emmet
let g:user_emmet_leader_key='<C-,>'         " 使用<Ctrl+，>,来补全emmet
let g:user_emmet_install_global = 0         " 仅启用 html/css
autocmd FileType html,css EmmetInstall
" coc
set hidden                                  " TextEdit might fail if hidden is not set.
" 格式化选中的代码
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

