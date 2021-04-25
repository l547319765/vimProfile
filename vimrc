set nocompatible
" 插件管理
call plug#begin('~/.vim/plugged')
" ====================================vim美化==========================================
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" =====================================fzf文件查询=====================================
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" =====================================配色方案========================================
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'kien/rainbow_parentheses.vim'
" ======================================括号颜色=======================================
Plug 'luochen1990/rainbow'
" ==============================括号自动补全===========================================
Plug 'Raimondi/delimitMate'
" ======================================小黑屋模式=====================================
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
" ===================cmd=================tab智能补全===================================
Plug 'ervandew/supertab'
" =================================括号自动匹配========================================
Plug 'jiangmiao/auto-pairs'
" ===================cmd================寻找匹配代码===================================
Plug 'Lokaltog/vim-easymotion'
" =====================================代码可视化缩进块================================
Plug 'nathanaelkane/vim-indent-guides'
" ======================================目录树=========================================
Plug 'scrooloose/nerdtree' | 
Plug 'Xuyuanp/nerdtree-git-plugin'
" =====================================图片粘贴处理markdown=============================
Plug 'ferrine/md-img-paste.vim'
Plug 'joker1007/vim-markdown-quote-syntax'
Plug 'majutsushi/tagbar'
Plug 'iamcco/markdown-preview.vim'
" =====================================极简配置=========================================
" Plug 'tpope/vim-sensible'
" ====================vim底层命令行git美化=============================================
" Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" =================================语法检查============================================= 
" Plug 'w0rp/ale'
" Plug 'ten0s/syntaxerl'
" 自动补全
" Plug 'maralla/completor.vim'
" ====================vim Emac主题t美化================================================
Plug 'tomasiser/vim-code-dark'
" ====================vim 快速检索=====================================================
Plug 'mileszs/ack.vim'
" ====================vim基础库========================================================
Plug 'vim-scripts/L9'
" ======================================git工具========================================
" git diff
Plug 'airblade/vim-gitgutter'
" git 操作命令插件
Plug 'tpope/vim-fugitive'
call plug#end()
" ========================================初始配置=====================================
source $VIMRUNTIME/defaults.vim
let mapleader=","
let g:mapleader=","
map <leader>. :noh<cr>
" 复制当前行到上一行
imap <C-A-up> <Esc>yypi
map <C-A-up> <Esc>yypi
" 当前行和上一行进行调换
imap <S-up> <Esc>yyddkPi
map <S-up> <Esc>yyddkP<Esc>
"  当前行和下一行进行调换
imap <S-down> <Esc>yyddpi
map <S-down> <Esc>yyddp<Esc>
" 空格选中整个单词，覆盖折叠folder的插件快捷键
" map <space> viw
" 默认目录
cd /data/
" 获取剪贴板内容
function Clipboard()
    "paste from clipboard
    normal! "+P
    "do more stuff
endfunction
"=============================================================================
"""powerline配置
let g:Powerline_symbols = 'fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
"=============================================================================
"字体配置
set guifont=Consolas:h17
set laststatus=2
set backspace=2
" ===========================================编码相关===================================
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" Vim在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
set encoding=utf-8
scriptencoding utf-8
set langmenu=zh_CN.UTF-8
set fileencodings=utf-8,fcs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "设置打开文件的编码格式
set fileencoding=utf-8
set helplang=cn         "设置中文帮助"
set ambiwidth=double    "设置为双字宽显示否则无法完整显示如:☆
" ======================================================================================
set mouse=a
set wildmode=longest:list,full                                              "tab查找命令
"set list                "显示隐藏字符
set listchars=eol:~,tab:>.,trail:~,extends:>,precedes:<,space:_
set wildmenu            "命令行匹配
set nobackup            "不备份
set noswapfile          "不要.swap
set shortmess=atI       "不显示开头段信息
set nu                  "显示行号
set nocompatible        "不与vi兼容
set ts=4                "tab宽度为4
set sw=4                "一次4格
set expandtab           "tab变为空格
set smarttab            "智能tab
set autoindent          "自动缩进
set cindent             "缩进
set showmode            "显示在哪个模式下
set showcmd             "显示命令
" set linebreak           "只在指定符号折行
set wrapmargin=2        "与边缘距离2像素
set scrolloff=5         "滚动时保留行数
set laststatus=2        "显示状态栏 0 1 2
set ruler               "显示光标所在行
set showmatch           "显示匹配的括号
set hlsearch            "高亮显示搜索结果
set incsearch           "search的时候立刻跳转到第一个
set ignorecase          "搜索忽视大小写
set smartcase           "智能匹配，如果开启了ignorecase 则对search的第一个大写字母的单词敏感
set noerrorbells        "不报错声音
set history=1000        "记录历史次数
set nowrap              "折行
set autoread            "警告外部修改文件
set ff=unix             "默认unix格式
syntax on               "语法高亮
syntax enable           "语法高亮
winpos 5 5 "设置窗口位置
"=============================================================================
"==*********************************配置************************************==
"==================================airline====================================
"vim-airline配置:优化vim界面"
let g:airline#extensions#tabline#enabled=1
"vim :主题
let g:airline_theme='dark_minimal'
" airline设置
" 显示颜色
set t_Co=256
set laststatus=2
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts=1
" 开启tabline
let g:airline#extensions#tabline#enabled=1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep=' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep='|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show=1
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" 设置字体
set guifont=Powerline_Consolas:h14:cANSI
" 格式设置
let g:airline_highlighting_cache = 1
" unicode symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
nnoremap <leader>v :vsp <cr>
nnoremap <leader>f :sp <cr>
map <leader>n :tabnew ./<cr>
map <leader>t :tabe<cr>
map <C-h> :tabprevious <cr>
map <C-l> :tabnext <cr>
map <Tab> <C-w><C-w>
"=============================airline=====theme===============================
" 设置主题
let g:airline_theme="badwolf"
"=============================fzf=============================================
function! SearchNode()
    cd /data/dev.node
    :FZF
endfunction
map <leader>q :call SearchNode()<cr>
" ==========================插件: vim-quantum============================
let g:quantum_black=1
set background=dark
set ls=2
set termguicolors
colorscheme quantum
"==============NERDTree===b不起作用========================================
" 文件目录树分屏F1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
 let g:NERDTreeGitShowIgnored = 1
map <f1> :NERDTreeToggle<CR>
map <leader>` :NERDTree %:p:h<cr>
map <leader>1 :cd /data/dev.node<cr>
map <leader>2 :cd /data/dev.template<cr>
map <leader>3 :cd /data/dev.wed<cr>
map <leader>cd :cd %:p:h<cr>
"=====================rainbow============================================
" 插件: luochen1990/rainbow
let g:rainbow_active=1
let g:rainbow_conf={
    \	'guifgs': ['#b7bdc0', '#7681de',  'seagreen3', 'darkorange3'],
    \}
"========================================================================
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'Gray'
let g:limelight_conceal_ctermfg = 240
" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
" 包含的前后段的数量
let g:limelight_paragraph_span = 1
" Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
" Goyo配置
let g:goyo_width = 86
let g:goyo_height = 90
let g:goyo_linenr = 0
" 进入goyo模式后自动触发limelight，退出则关闭
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" limelight键盘映射
nmap <silent> <leader>g      :Goyo<CR>
xmap <silent> <leader>g      :Goyo<CR>
"=============================================================
""搜索快乐就完事了
let g:EasyMotion_smartcase = 1
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
" map <Leader><leader>. <Plug>(easymotion-repeat)
"=======================彩虹括号============================
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"============================代码缩进块显示 + 奇偶行缩进颜色配置 + 缩进块宽度
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_color_change_percent = 1
"==============================插件: vim-gitgutter============================
let g:gitgutter_enabled=1
let g:gitgutter_map_keys=0
" 切换显示
map <leader>d :GitGutterToggle<cr>
autocmd  BufWritePost  * GitGutter
" 检查修改间隔时间 ms
set updatetime=100
""" 高亮，仿git diff
highlight GitGutterAdd    guifg=#009900 ctermfg=2 ctermbg=39
highlight GitGutterChange guifg=#bbbb00 ctermfg=3 ctermbg=204
highlight GitGutterDelete guifg=#ff2222 ctermfg=1 ctermbg=59
" =====================================图片粘贴处理markdown=============================
"设置默认储存文件夹。这里表示储存在当前文档所在文件夹下的'pic'文件夹下，相当于
let g:mdip_imgdir = 'pic' 
"设置默认图片名称。当图片名称没有给出时，使用默认图片名称
let g:mdip_imgname = 'image'
"设置快捷键，个人喜欢 Ctrl+p 的方式，比较直观
autocmd FileType markdown nnoremap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>F%i
" =====================================ack配置======================================
" 查找属性
let g:ackprg = 'ag --nogroup --nocolor --column'
" ==========================================makedown预览配置========================
let g:mkdp_path_to_chrome="chrome"
let g:mkdp_auto_close=0
nmap <F7> <Plug>MarkdownPreview
nmap <F8> <Plug>StopMarkdownPreview，



" 编辑模式移动光标hjkl
inoremap ¬ <Right>
inoremap ˙ <Left>
inoremap ˚ <Up>
inoremap ∆ <Down>

" "插件： YouCompleteMe
" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py' 
" 
" " 插件: syntaxerl
" let g:syntastic_erlang_checkers=['syntaxerl']
" set statusline+=%#warningmsg#
" if has("gui_running")
"     set statusline+=%{SyntasticStatuslineFlag()}
" endif
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_enable_signs = 1
" map <F2> :call ToggleErrors()<cr>                   " F2 按键显示错误列表
" function! ToggleErrors()
"     if !exists("g:errors_is_show")
"         let g:errors_is_show = 0
"     endif
"     if g:errors_is_show
"         let g:errors_is_show = 0
"         lclose
"     else
"         let g:errors_is_show = 1
"         Errors
"     endif
" endfunction
" 
" 
" 
" 
" "let g:ale_erlang_erlc_options='-I./inc/ -I./gen_battle/inc/ -I./gen_data/inc/ -I./gen_lang/inc/ -I../server/inc/ -pa./ebin/ -o../../temp/ -Denable_gm_cmd=true -DTEST=true'
" let g:ale_lint_delay=300 
" let g:ale_set_balloons=0
" let g:ale_maximum_file_size=1048576
" let g:ale_linters={
" \   'erlang': ['syntaxerl'],
" \}
" nmap <silent> <C-e> <Plug>(ale_next_wrap)
" " 切换语法检查
" map <leader>c :ALEToggle<cr>
" 
" " 插件: completor.vim
" let g:completor_erlang_omni_trigger='[\w-]+:$'
" let g:completor_complete_options='menuone,noselect'
" "let g:completor_filesize_limit='1024'



























"=============================弃用======================================
" 调整窗口尺寸
" map + :resize +5<cr>
" map - :resize -5<cr>
" map <C-=> :vertical resize +5<cr>
" map <C--> :vertical resize -5<cr>
"set undofile           "保留撤销历史
"set bw=4               "宽度为4 
"set softtabstop=4      "tab长度与ts冲突
"set cursorline         "显示光标所在的行
"set visualbell         "报错视觉警告
" 解决consle乱码
"set termencoding=cp936
"vim 提示信息乱码解决方法
" if has("win32")
"     set termencoding=chinese
"     language message zh_CN.UTF-8
" endif
" 映射<leader>num到num buffer
" map <leader>1 :b 1<CR>
" map <leader>2 :b 2<CR>
" map <leader>3 :b 3<CR>
" map <leader>4 :b 4<CR>
" map <leader>5 :b 5<CR>
" map <leader>6 :b 6<CR>
" map <leader>7 :b 7<CR>
" map <leader>8 :b 8<CR>
" map <leader>9 :b 9<CR>
" ======================================函数快速检索===================================
"Plug 'tacahiroy/ctrlp-funky'
"Plug 'ctrlp.vim'
"=============================================================================
""ctrlp 文件检索配置ctrl + p
"nmap <F12> <ESC>:.cc<CR><C-W>p
"set runtimepath^=~/.vim/plugged/ctrlp.vim
"let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
"let g:ctrlp_open_multiple_files = 'ij'
"let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript', 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
"let g:ctrlp_working_path_mode = 'ra'
"set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}
"let g:SuperTabDefaultCompletionType = 'context'
"""
"======================================js 全家桶=======================================
"Plugin 'mxw/vim-jsx'
"Plugin 'isRuslan/vim-es6'
"Plugin 'pangloss/vim-javascript'
" =====================================编译工具========================================
"Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --all' }
"自动补全(vim难装插件之一)
"Plugin 'Valloric/YouCompleteMe'
"youcomplateme 通过 jedi补全python
"Bundle "davidhalter/jedi"
"=============================================================================
"" you complate me 配置
""" 安装
"  --> 装好后去bundle里面编译，最好看文档
"  "  --> https://github.com/Valloric/YouCompleteMe#mac-os-x
"  "  --> install
"  "  --> cd ~/.vim/bundle/YouCompleteMe
"  "  --> ./install.py --clang-completer
"  " 2个字符之后自动补全
"  let g:ycm_min_num_of_chars_for_completion = 2
"  let g:ycm_min_num_identifier_candidate_chars = 4
"  let g:ycm_enable_diagnostic_highlighting = 0
"  " ycm预览窗口不显示
"  set completeopt-=preview
"  " 补全之后自动关闭预览窗口
"  let g:ycm_autoclose_preview_window_after_insertion = 1
"  let g:ycm_add_preview_to_completeopt = 0
"  " 设置默认预览窗口在下面
"  set splitbelow
"  " 语法关键字补全
"  let g:ycm_seed_identifiers_with_syntax = 1
"  " 在注释输入中也能补全
"  let g:ycm_complete_in_comments = 1
"  " 在字符串输入中也能补全
"  let g:ycm_complete_in_strings = 1
"  " 传说中的vim8 + ycm异步补全, 2个字符后开始补全
"  if !exists('g:ycm_semantic_triggers')
"      let g:ycm_semantic_triggers = {}
"      endif
"      let g:ycm_semantic_triggers.python = ['re!(?=[a-zA-Z_]{2})']
" F1 手动开启函数文档
" noremap <F1> :YcmCompleter GetDoc<CR>
" ===============================================================
"python代码折叠
" Plug 'tmhedberg/SimpylFold'
" ===============html============================================
"Plugin 'mattn/emmet-vim'
