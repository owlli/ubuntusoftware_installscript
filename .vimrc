set ai
"set smartindent,开启新行时使用智能缩进
set si
"set tabstop,设置tab长度为4
set ts=4
set sw=4
"set number,显示行号
set nu
"当前行显示下划线
set cursorline
"设置ctags文件位置
"set tags=/home/lzh/s5p6818/s5p6818sdk_lzy1/Linux/src/llinux/tags
"set tags+=/usr/src/linux-headers-4.15.0-24/tags
"set tags+=/usr/include/tags
"set tags+=/home/lzh/project/bumblebee-device/snowboy-dspc-newest/tags
"设置语法高亮显示
"syntax enable
"syntax on
"设定配色方案
"colorscheme desert
"高亮显示搜索到的文本
set hlsearch
"输入搜索内容时就显示搜索结果
set incsearch
"显示状态栏(默认值为1,无法显示状态栏),就是命令行上方高光显示一行
set laststatus=2
"设置在状态行显示的信息
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)
"禁止在搜索到文件两端时重新搜索
set nowrapscan
"搜索时忽略大小写,但输入搜索内容时有一个或以上大写字母时仍保持对大小写敏感
set ignorecase smartcase
"设置按退格键时可以一次删掉4个空格
set softtabstop=4

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"set termencoding=utf-8
"set encoding=utf-8
