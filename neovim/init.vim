" 配置
set number ru et                 " 显示行号
set nocompatible           " 不开启兼容模式
filetype plugin indent on  " 根据文件类型开启不同的插件
syntax enable              " 语法高亮
set autoindent             " 换行后，保持自动缩进
set wrap                   " 自动折行
set linebreak              " 禁止单词内部折行
set wrapmargin=2           " 指定折行处与编辑窗口的右边缘之间空出的字符数
set showmatch              " 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set shiftwidth =2          " tab 宽度超过2时，用两个代替
set tabstop=2              " tab 设置为2个空格
set expandtab              " 自动将Tab转为空格
set encoding=utf-8         " 编码为 utf-8
set hlsearch               " 搜索高亮显示
set clipboard=unnamedplus  " 共享系统剪切板
set cursorcolumn           " 高亮列
set cursorline             " 高亮行
set backspace=2            " 解决退格无效，相当于 set backspace=indent,eol,start
set ignorecase             " 搜索时忽略大小写
set smartcase              " 如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test
set spell spelllang=en_us  " 开启英文拼写检查
set title                  " 显示文件名
set list                   " 显示空白符
" autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " 背景透明

set completeopt=noinsert,menuone,noselect

set t_Co=256
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

let g:python3_host_prog='/usr/local/bin/python3.10'
let g:ruby_host_prog='/Library/Ruby/Gems/2.6.0/gems/neovim-0.9.0/exe/neovim-ruby-host'
let g:perl_host_prog='/usr/local/bin/perl'

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'  " 状态栏美化插件，无需额外配置
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/molokai'        " 主题
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs' " 括号自动补全
Plug 'scrooloose/nerdtree'  " 目录管理插件
Plug 'majutsushi/tagbar'    " 文件结构目录插件
Plug 'dense-analysis/ale'   " 异步错误处理插件
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary' " 快速注释/取消注释插件，gcc注释当前行，gc注释选中区域
Plug 'mhinz/vim-startify'   " vim开屏页美化插件，可以记录最近编辑的文件，使用对应数字编号就可以快速打开文件，使用起来非常方便
Plug 'easymotion/vim-easymotion' " 可视化区域快速移动光标插件
Plug 'tpope/vim-surround'   " 对称删除字符，括号、引号等
" 代码片段补全
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" git记录
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'wfxr/protobuf.vim'
" Plug 'fatih/vim-go'
"
" json转go结构体
Plug 'meain/vim-jsontogo'

Plug 'CaiJinKen/vim-fillstruct'
Plug 'CaiJinKen/vim-sortimport'

call plug#end()

let mapleader = ','         " 设置<leader> 为，默认为\ 
" map Esc -->jj
inoremap jj <Esc>

" #####
" ## nerdtree 配置
" #####
nnoremap <leader>v :NERDTreeFind<cr>  " 定位当前文件
nnoremap <leader>g :NERDTreeToggle<cr>  " 打开关闭nerdtree
let NERDTreeShowLineNumbers=1

:nn <Leader>1 1gt
:nn <Leader>2 2gt
:nn <Leader>3 3gt
:nn <Leader>4 4gt
:nn <Leader>5 5gt
:nn <Leader>6 6gt
:nn <Leader>7 7gt
:nn <Leader>8 8gt
:nn <Leader>9 8gt
:nn <Leader>0 :tablast<CR>


" #####
" ## tagbar
" #####
nnoremap <leader>t :TagbarToggle<cr> " 展示/收起 文件结构目录


" #####
" ## ale 配置
" #####
let g:ale_set_highlights = 1
let g:ale_set_quickfix = 1
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 1

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
" nmap <Leader>l :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
let g:ale_linters = {
  \ 'go': ['golint', 'go vet', 'go fmt'],
	\ 'python': ['flake8', 'pylint'],
	\ 'rust': ['cargo'],
  \ }


" #####
" ## coc goto配置
" #####
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gm <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> rn <Plug>(coc-rename)

" 使用<cr> 确认补全
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>" 
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()
" inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" #####
" ## 补全快捷键 说明
" #####
" Ctrl+n 选择补全列表中的下一项
" Ctrl+p 选择补全列表中的上一项
"

"
" #####
" ## fzf 配置
" #####
map <leader>f :Files<CR>
map <leader>b :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }
" 用 leader+ag 搜索当前 cursor 下单词 see: https://github.com/junegunn/fzf.vim/issues/50
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>


" #####
" ## easymotion 配置
" #####
nmap ss <Plug>(easymotion-s2) " 在normal模式下，使用快捷键 ss 再输入目标单词的2字母，easymotion就会在目标单词随机高亮生一个字母，再次按下这个字母，即可快速移动光标到目标单词。注意是当前屏幕显示区域，不是当前整个文件。

" #####
" ## coc-go 配置
" ## https://github.com/josa42/coc-go
" #####
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
autocmd FileType go nmap tj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap tlj :CocCommand go.tags.add.line json<cr>
autocmd FileType go nmap ta :CocCommand go.tags.add json form uri binding<cr>
autocmd FileType go nmap tfj :CocCommand go.tags.add json form<cr>
autocmd FileType go nmap tlfj :CocCommand go.tags.add.line json form<cr>
autocmd FileType go nmap tu :CocCommand go.tags.add.line uri<cr>
autocmd FileType go nmap tf :CocCommand go.tags.add form<cr>
autocmd FileType go nmap tlf :CocCommand go.tags.add.line form<cr>
autocmd FileType go nmap impl :CocCommand go.impl.cursor<cr>
autocmd FileType go nmap tpa :CocCommand go.tags.add.prompt<cr>
autocmd FileType go nmap tpr :CocCommand go.tags.remove.prompt<cr>
autocmd FileType go nmap trj :CocCommand go.tags.remove json<cr>
autocmd FileType go nmap tlrj :CocCommand go.tags.remove.line json<cr>
autocmd FileType go nmap trf :CocCommand go.tags.remove form<cr>
autocmd FileType go nmap tlrf :CocCommand go.tags.remove.line form<cr>
autocmd FileType go nmap tlru :CocCommand go.tags.remove.line uri<cr>
autocmd FileType go nmap tc :CocCommand go.tags.clear<cr>
autocmd FileType go nmap tlc :CocCommand go.tags.clear.line<cr>

" 支持jsonc
autocmd FileType json syntax match Comment +\/\/.\+$+


" proto文件缩进设置
autocmd FileType proto set shiftwidth=2 | set expandtab | set tabstop=2 | set softtabstop=2


" 自动填充结构体
autocmd FileType go nmap tf :FillStruct<cr>

" 自定义函数 ==================
" go 文件保存自动import和格式化
" function FormatGo()
  " %!goimports
  " %!gofumpt 
  " %!goimports-reviser -rm-unused -file-path .
" endfunction

" autocmd BufWritePost *.go :call FormatGo()
