                          " 配置
set number ru et          " 显示行号
set nocompatible          " 不开启兼容模式
filetype plugin indent on " 根据文件类型开启不同的插件
syntax enable             " 语法高亮
set autoindent            " 换行后，保持自动缩进
set wrap                  " 自动折行
set linebreak             " 禁止单词内部折行
set wrapmargin=2          " 指定折行处与编辑窗口的右边缘之间空出的字符数
set showmatch             " 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set shiftwidth =2         " tab 宽度超过2时，用两个代替
set tabstop=2             " tab 设置为2个空格
set expandtab             " 自动将Tab转为空格
set encoding=utf-8        " 编码为 utf-8
set hlsearch              " 搜索高亮显示
set clipboard=unnamedplus " 共享系统剪切板
set cursorcolumn          " 高亮列
set cursorline            " 高亮行
set backspace=2           " 解决退格无效，相当于 set backspace=indent,eol,start
set ignorecase            " 搜索时忽略大小写
set smartcase             " 如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test
                          " set spell spelllang=en_us                              " 开启英文拼写检查
set title                 " 显示文件名
set list                  " 显示空白符
" autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " 背景透明
set updatetime=2000       " 设置刷新时间为1000ms，默认为4000ms that`s to slow for vim-signify

set completeopt=noinsert,menuone,noselect

set t_Co=256
set termguicolors


let g:python3_host_prog='/usr/local/bin/python3.12'
let g:ruby_host_prog='/usr/bin/ruby'
" let g:ruby_host_prog='/usr/local/bin/neovim-ruby-host'
" let g:ruby_host_prog='/Library/Ruby/Gems/2.6.0/gems/neovim-0.10.0/exe/neovim-ruby-host'
" let g:perl_host_prog='/usr/bin/perl'

call plug#begin('~/.config/nvim/plugged')

Plug 'fatih/molokai'                                        " molokai主题
" Plug 'navarasu/onedark.nvim'                              " onedark 主题
" Plug 'shaunsingh/solarized.nvim'                          " solarized 主题
Plug 'folke/tokyonight.nvim'                                " tokyonight 主题
" Plug 'doums/darcula'                                      " jetbrains theme
" Plug 'altercation/vim-colors-solarized'                   " other soloarized
" Plug 'Yggdroot/indentLine'                                  " 缩进展示
Plug 'vim-airline/vim-airline'                              " 状态栏
Plug 'vim-airline/vim-airline-themes'                       " 状态栏美化插件，无需额外配置
Plug 'mhinz/vim-startify'                                   " vim开屏页美化插件，可以记录最近编辑的文件，使用对应数字编号就可以快速打开文件，使用起来非常方便
Plug 'mhinz/vim-signify'                                    " 展示vcs文件变化
Plug 'neoclide/coc.nvim', {'branch': 'release'}             " coc 自动补全
Plug 'preservim/nerdtree'                                   " 文件目录结构插件
Plug 'preservim/tagbar'                                     " 文件结构展示插件
Plug 'dense-analysis/ale'                                   " 异步错误处理插件
Plug 'easymotion/vim-easymotion'                            " 可视化区域快速移动光标插件
Plug 'jiangmiao/auto-pairs'                                 " 括号自动补全
" Plug 'luochen1990/rainbow'                                " 成对彩色显示括号
Plug 'tpope/vim-surround'                                   " 对称删除字符，括号、引号等
Plug 'tpope/vim-fugitive'                                   " git记录
Plug 'tpope/vim-commentary'                                 " 快速注释/取消注释插件，gcc注释当前行，gc注释选中区域
Plug 'tpope/vim-endwise'                                    " endif endelse endfor endfunction 补全
Plug 'SirVer/ultisnips'                                     " 代码片段补全
Plug 'honza/vim-snippets'                                   " 代码片段补全
Plug 'junegunn/seoul256.vim'                                " seoul256 & seoul256-light 主题插件
Plug '/usr/local/opt/fzf'                                   " fzf 模糊搜索
Plug 'junegunn/fzf.vim'                                     " fzf 模糊搜索插件
Plug 'junegunn/gv.vim'                                      " git 提交信息查询插件
Plug 'junegunn/vim-easy-align'                              " 自动对齐
Plug 'wfxr/protobuf.vim'                                    " protobuf 语法支持及格式化插件
" Plug 'fatih/vim-go'                                       " go开发集成插件
Plug 'meain/vim-jsontogo'                                   " json转go结构体
Plug 'Xuyuanp/nerdtree-git-plugin'                          " nerdtree git状态提示
                                                            " 自定义结构体优化
Plug 'CaiJinKen/vim-fillstruct'                             " go 文件结构体填充
Plug 'CaiJinKen/vim-sortimport'                             " go 文件import 分组、排序插件
                                                            " debuger & ui
Plug 'mfussenegger/nvim-dap'                                " Debug Adapter Protocol 各种语言调试适配器
Plug 'nvim-neotest/nvim-nio'                                " asynchronous IO in Neovim 异步IO库
Plug 'rcarriga/nvim-dap-ui'                                 " dap 的UI
Plug 'leoluz/nvim-dap-go'                                   " dap-go
Plug 'CaiJinKen/vim-swaggen'                                " go swag doc 模板
" Plug 'charlespascoe/vim-go-syntax'                          " golang 语法高亮
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " nvim-treesitter

call plug#end()


" let g:solarized_disable_background = v:true
colorscheme molokai
" colorscheme darcula
" colorscheme seoul256
" set background=dark
" colorscheme solarized
" colorscheme onedark " onedark onedarkpro onelight
" colorscheme tokyonight-night

let g:vimsync_embed=1 " 实现.vim文件中lua语法高亮
let g:mapleader = ',' " 设置<leader> 为，默认为\
" map Esc -->jj
inoremap jj <Esc>

" 重新加载vim配置
nnoremap <leader>r :source $MYVIMRC<CR>
" ,q 关闭当前tab
nnoremap <leader>qt :tabc<cr> 
nnoremap <leader>qw :close<cr> 

" ==============================================================================
" nerdtree 配置
" ==============================================================================
nnoremap <leader>v :NERDTreeFind<cr>   " 定位当前文件
nnoremap <leader>g :NERDTreeToggle<cr> " 打开关闭nerdtree
let NERDTreeShowLineNumbers=1

nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 8gt
nnoremap <Leader>0 :tablast<CR>

" ==============================================================================
" tagbar
" ==============================================================================
" 展示/收起 文件结构目录
nnoremap <leader>t :TagbarToggle<cr> 

" ==============================================================================
" rainbow
" ==============================================================================
" let g:rainbow_active = 1
" nnoremap <leader>p :RainbowToggle<cr>  " 1 if you want to enable it later via :RainbowToggle

" ==============================================================================
" ale 配置
" ==============================================================================
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
nnoremap sp <Plug>(ale_previous_wrap)
nnoremap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
" nnoremap <Leader>l :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nnoremap <Leader>d :ALEDetail<CR>
let g:ale_linters = {
  \ 'go': ['golint', 'go vet', 'go fmt'],
	\ 'python': ['flake8', 'pylint'],
	\ 'rust': ['cargo'],
  \ }


" ==============================================================================
" coc goto配置
" ==============================================================================
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gm <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <silent> rn <Plug>(coc-rename)

" 使用<cr> 确认补全
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>" 
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()
" inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"


" 补全快捷键 说明
" Ctrl+n 选择补全列表中的下一项
" Ctrl+p 选择补全列表中的上一项
"

" ==============================================================================
" fzf 配置
" ==============================================================================
nnoremap <leader>fz :FZF<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fag :Ag<CR>
nnoremap <leader>frg :Rg<CR>
nnoremap <leader>fbf :Buffers<CR>
nnoremap <leader>ft :Tags<CR>
nnoremap <leader>fcmt :Commits<CR>  " 搜索git提交记录信息

" 使用快捷键打开搜索到的文件，如果不指定，回车打开
" ctrl 后面跟的打开文件方式同 nerdtree 保持一致
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-s': 'vsplit' }

" let g:fzf_action = { 'ctrl-e': 'edit' }
" let g:fzf_command = 'fzf'
" 用 leader+ag 搜索当前 cursor 下单词 see: https://github.com/junegunn/fzf.vim/issues/50
" nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>


" ==============================================================================
" easymotion 配置
" ==============================================================================
" 在normal模式下，使用快捷键 ss 再输入目标单词的2字母，easymotion就会在目标单词随机高亮生一个字母，再次按下这个字母，即可快速移动光标到目标单词。注意是当前屏幕显示区域，不是当前整个文件。
nnoremap ss <Plug>(easymotion-s2) 


" ==============================================================================
" coc-go 配置
" ==============================================================================
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
autocmd FileType go nnoremap tj :CocCommand go.tags.add json<cr>
autocmd FileType go nnoremap tlj :CocCommand go.tags.add.line json<cr>
autocmd FileType go nnoremap ta :CocCommand go.tags.add json form uri binding<cr>
autocmd FileType go nnoremap tfj :CocCommand go.tags.add json form<cr>
autocmd FileType go nnoremap tlfj :CocCommand go.tags.add.line json form<cr>
autocmd FileType go nnoremap tu :CocCommand go.tags.add.line uri<cr>
autocmd FileType go nnoremap tf :CocCommand go.tags.add form<cr>
autocmd FileType go nnoremap tlf :CocCommand go.tags.add.line form<cr>
autocmd FileType go nnoremap impl :CocCommand go.impl.cursor<cr>
autocmd FileType go nnoremap tpa :CocCommand go.tags.add.prompt<cr>
autocmd FileType go nnoremap tpr :CocCommand go.tags.remove.prompt<cr>
autocmd FileType go nnoremap trj :CocCommand go.tags.remove json<cr>
autocmd FileType go nnoremap tlrj :CocCommand go.tags.remove.line json<cr>
autocmd FileType go nnoremap trf :CocCommand go.tags.remove form<cr>
autocmd FileType go nnoremap tlrf :CocCommand go.tags.remove.line form<cr>
autocmd FileType go nnoremap tlru :CocCommand go.tags.remove.line uri<cr>
autocmd FileType go nnoremap tc :CocCommand go.tags.clear<cr>
autocmd FileType go nnoremap tlc :CocCommand go.tags.clear.line<cr>

" 支持jsonc
autocmd FileType json syntax match Comment +\/\/.\+$+


" proto文件缩进设置
autocmd FileType proto set shiftwidth=2 | set expandtab | set tabstop=2 | set softtabstop=2


" ==============================================================================
" vim-fillstruct & vim-sortimport
" ==============================================================================
" 自动填充结构体
autocmd FileType go nnoremap tf :FillStruct<cr>
" go import排序
autocmd FileType go nnoremap si :SortImport<cr>

" 自定义函数 ==================
" go 文件保存自动import和格式化
" function FormatGo()
  " %!goimports
  " %!gofumpt 
  " %!goimports-reviser -rm-unused -file-path .
" endfunction

" autocmd BufWritePost *.go :call FormatGo()


" ==============================================================================
" tpope/vim-surround 快捷键 
" ==============================================================================
" 符号包括："" '' {} [] xml(html) tag
" normal 模式：s
" visual 模式：S
" cs{A}{b} change surround A to b
" ds{A} delete surround A
" cst{b} change surround tag to b
" yss{b} add surround with b
" 按键后面还可以跟模式，比如 w iw W $ 等
"

" ==============================================================================
" vim-easy-align 设置
" ==============================================================================
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nnoremap ga <Plug>(EasyAlign)

" ==============================================================================
" mhinz/vim-signify 插件
" ==============================================================================
" 跳过这些目录的检查
let g:signify_skip_filename_pattern = [ 
      \ '/usr/local/go/src',
      \ '/Users/caijin/go/src/yzgong.com/backend/go-service/golib',
      \ '/Users/caijin/go/src/yzgong.com/backend/go-service/jgj-common',
      \ '/Users/caijin/go/src/yzgong.com/backend/go-admin-api/golib',
      \ '/Users/caijin/go/src/yzgong.com/backend/go-admin-api/jgj-common' ]
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '*'

" 设置状态栏展示变更信息
function! MyStatusline()
    return ' %f '. sy#repo#get_stats_decorated()
endfunction
set statusline=%!MyStatusline()

" 上面等同于下面的函数
" function! s:sy_stats_wrapper()
"   let [added, modified, removed] = sy#repo#get_stats()
"   let symbols = ['+', '-', '~']
"   let stats = [added, removed, modified]  " reorder
"   let statline = ''

"   for i in range(3)
"     if stats[i] > 0
"       let statline .= printf('%s%s ', symbols[i], stats[i])
"     endif
"   endfor

"   if !empty(statline)
"     let statline = printf('[%s]', statline[:-2])
"   endif

"   return statline
" endfunction

" function! MyStatusline()
"   return ' %f '. s:sy_stats_wrapper()
" endfunction
" set statusline=%!MyStatusline()

" 设置文件变化的快捷键
nnoremap <leader>gd :SignifyDiff<cr>
nnoremap <leader>gh :SignifyHunkDiff<cr>
nnoremap <leader>gu :SignifyHunkUndo<cr>
" hunk jumping
nnoremap <leader>gn <plug>(signify-next-hunk)
nnoremap <leader>gp <plug>(signify-prev-hunk)


" =============================================================================
" self-define function
" =============================================================================

" 生成swaggo文档模板
" lua 代码使用方式1
function! InsertSwagoDoc()
  lua << EOF
  local buf = vim.api.nvim_get_current_buf()
  local row = vim.api.nvim_win_get_cursor(0)[1]
  local lines = {
           "// FuncName     FuncDesc",
           "// @Summary     Summary",
           "// @Description Desc",
           "// @Tags        Tags",
           "// @Accept      json",
           "// @Produce     json",
           "// @Param       1Param    header   string  true \"3Pram\"",
           "// @Param       2Param    path     integer true \"1Pram\"",
           "// @Param       3Param    query    number  true \"2Pram\"",
           "// @Param       4Param    query    bool    true \"2Pram\"",
           "// @Param       Form      formData integer true \"3Pram\"",
           "// @Param       Body      body     Struct  true \"3Pram\"",
           "// @Success     200       {object} Object  \"请求成功\"",
           "// @Router      Path      [GET]",
    }
  vim.api.nvim_buf_set_lines(buf, row, row, false, lines)
EOF
endfunction

command! InsertSwagoDoc :call InsertSwagoDoc()


" =============================================================================
" dap-go  启用
" =============================================================================
"

" 定义Debug启用/关闭函数
" lua代码使用方式2
lua << EOF
function _G.EnableDebug()
  require('dap-go').setup()
  require('dapui').setup()
    
  vim.api.nvim_set_keymap('n', '<F9>', "<cmd>lua require('dap').continue()<CR>", { noremap = true, silent = true });
  vim.api.nvim_set_keymap('n', '<F1>', "<cmd>lua require('dap').toggle_breakpoint()<CR>", { noremap = true, silent = true });
  vim.api.nvim_set_keymap('n', '<F2>', "<cmd>lua require('dap').clear_breakpoints()<CR>", { noremap = true, silent = true });
  vim.api.nvim_set_keymap('n', '<F7>', "<cmd>lua require('dap').step_into()<CR>", { noremap = true, silent = true });
  vim.api.nvim_set_keymap('n', '<F8>', "<cmd>lua require('dap').step_over()<CR>", { noremap = true, silent = true });
  vim.api.nvim_set_keymap('n', '<F12>', "<cmd>lua require('dapui').toggle()<CR>", { noremap = true, silent = true });
end
EOF

command! EnableDebug :call v:lua.EnableDebug()
autocmd FileType go nnoremap <leader>db :EnableDebug<cr>

" ============================================================================
" nvim-tree-sitter
" ============================================================================
"
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "go", "goctl"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF
