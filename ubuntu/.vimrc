"显示行号
set number
"高亮查找匹配
set hlsearch
"高亮匹配括号
set showmatch
"设置光标线
set cursorline
"语法高亮
syntax on
"自动缩进
set autoindent
"c缩进
set cindent
"颜色配置
set background=dark           "light
colorscheme solarized8    "blue  darkblue  default  delek  desert  elflord  evening  industry  koehler  morning  murphy  pablo
"文件编码
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
"显示特殊字符
"set list
"set listchars=tab:>-,trail:.,space:.,eol:<
"tab显示
set tabstop=4
set softtabstop=4
"tab用4个空格取代
set shiftwidth=4
set expandtab
"鼠标配置，Ctrl-v进入visual模式，按y复制，p粘贴
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
"netrw
let g:netrw_altv = 1
let g:netrw_winsize = 25
map <silent> <F2> :Lexplore<CR>
"设置是否显示横幅
let g:netrw_banner = 1

"设置目录列表的样式：树形
let g:netrw_liststyle = 3

"在之前的窗口编辑文件，类似按下大写 P
let g:netrw_browse_split = 4

"水平分割时，文件浏览器始终显示在左边
let g:netrw_altv = 1

"设置文件浏览器窗口宽度为 25%
let g:netrw_winsize = 25

"自动打开文件浏览器 netrw
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

