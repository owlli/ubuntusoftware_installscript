"三种缩进方式:
"set autoindent,每行的缩进值与上一行相等
"set ai
"set smartindent,开启新行时使用智能缩进
"set si
"使用 C/C++ 语言的自动缩进方式
set cindent
"set tabstop,设置tab长度为4
set ts=4
"set shiftwidth=4,设置缩进的空格数为4
set sw=4
"设置按退格键时可以一次删掉4个空格
set softtabstop=4
"set number,显示行号
"set nu
"set cursorline,当前行显示下划线
set cul
"set cursorcolumn,高光显示当前列
set cuc
"设置ctags文件位置
set tags=/home/lzh/Desktop/s5p6818_study/Linux/src/llinux-3.4/tags
"set tags+=/usr/src/linux-headers-4.15.0-24/tags
"set tags+=/usr/include/tags
"set tags+=/home/lzh/project/bumblebee-device/snowboy-dspc-newest/tags
"设置语法高亮显示
"syntax enable
syntax on
"设定配色方案
"colorscheme desert
"高亮显示搜索到的文本
set hlsearch
"输入搜索内容时就显示搜索结果
set incsearch
"高光显示状态栏(默认值为1,正常显示状态栏),就是命令行上方高光显示一行
set laststatus=2
"设置在状态行显示的信息
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)
"在状态栏上显示光标所在行,列位置,默认开启,可以set norule关闭,因为我们设置了statusline,所以下面这行无效
"set ruler
"禁止在搜索到文件两端时重新搜索
set nowrapscan
"set ignorecase smartcase,搜索时忽略大小写,但输入搜索内容时有一个或以上大写字母时仍保持对大小写敏感
set ic sc
"set noignorecase,搜索时考虑大小写
"set noic
" 高亮显示匹配的括号,默认已开启
set showmatch

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"set termencoding=utf-8
"set encoding=utf-8

"自动补齐(),[],{},'',""
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap { {}<ESC>i
"inoremap < <><ESC>i
"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i

"设置跳出自动补全的括号
"func SkipPair()
"    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'
"        return "\<ESC>la"
"    else
"        return "\t"
"    endif
"endfunc
" 将tab键绑定为跳出括号
"inoremap <TAB> <c-r>=SkipPair()<CR>

"meta键测试,之前用auto-pairs时调试的
"noremap <ESC>x :echo "ESC ALT-X pressed"<cr>
"noremap <M-x> :echo "ALT-X pressed"<cr>
"exec "set <M-x>=\ex"
"set ttimeout ttimeoutlen=100





 
